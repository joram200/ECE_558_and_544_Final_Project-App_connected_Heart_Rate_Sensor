/**
 * @file wb_phyplnt_io.sv
 * @brief Wishbone Plant I/O Peripheral for ECE 544 Project 2.
 *
 * @author  Jose Ramirez (joram2@pdx.edu) and Claude Sonnet (Anthropic)
 * @date    Fall 2026
 *
 * @details
 * Wishbone slave peripheral (Region 3, base 0x80030000) that connects
 * MicroBlaze software to the instructor-provided phyplnt optical plant model.
 *
 * Responsibilities:
 *   1. PWM generation  — drives phyplnt.pwm_in via a single-channel PWM
 *                        derived from the rgbPWM module (instructor-provided,
 *                        mbc_wb-v2.0.0/hdl/boardio/rgbPWM.v).
 *   2. Lux capture     — latches phyplnt.lux_value on each one-clock
 *                        lux_valid pulse into a stable shadow register.
 *   3. Interrupt       — sets IRQ_STATUS[0] whenever a captured lux_value
 *                        differs from the previous capture (measurement-change
 *                        interrupt).  lux_prev resets to 0, so the first
 *                        measurement after reset always fires the interrupt.
 *
 * Interrupt pattern derived from wb_pwmanalyzer.sv (Project 1) and
 * wb_boardio.sv (MBC_WB baseline).  W1C atomic merge prevents losing an
 * interrupt that arrives in the same cycle as the software clear.
 *
 * Register map (word indices, i.e. byte_offset >> 2):
 *
 *   0x00  PWM_CONTROL   R/W  bit31=enable, bits[7:0]=duty (0..255)
 *   0x01  LUX_VALUE     RO   bits[15:0] latched lux in tenths of a lux
 *   0x02  IRQ_STATUS    W1C  bit0 measurement-change sticky flag
 *   0x03  IRQ_ENABLE    R/W  bit0 gates o_irq output
 *   0x0E  SCRATCH0      R/W  32-bit scratch (self-test)
 *   0x0F  SCRATCH1      R/W  32-bit scratch (self-test)
 *
 * Address decode: addr_word = i_wb_addr[5:2]  (4-bit, covers words 0..15)
 */

`default_nettype wire

module wb_phyplnt_io #(
    parameter int DW = 32,  ///< Wishbone data width
    parameter int AW = 32   ///< Wishbone address width
)(
    input  logic             i_clk,    ///< 100 MHz system clock
    input  logic             i_reset,  ///< Synchronous active-high reset

    // ------------------------------------------------------------------
    // Wishbone B4 slave interface
    // ------------------------------------------------------------------
    input  logic             i_wb_cyc,
    input  logic             i_wb_stb,
    input  logic             i_wb_we,
    input  logic [AW-1:0]   i_wb_addr,
    input  logic [DW-1:0]   i_wb_data,
    input  logic [DW/8-1:0] i_wb_sel,
    output logic             o_wb_ack,
    output logic [DW-1:0]   o_wb_data,

    // ------------------------------------------------------------------
    // phyplnt interface
    // ------------------------------------------------------------------
    output logic             pwm_out,    ///< → phyplnt.pwm_in
    input  logic [15:0]      lux_value,  ///< ← phyplnt.lux_value
    input  logic             lux_valid,  ///< ← phyplnt.lux_valid (1-clock pulse)

    // ------------------------------------------------------------------
    // Interrupt output  → wbIRQ[1] → AXI INTC input 3
    // ------------------------------------------------------------------
    output logic             o_irq
);

    // ------------------------------------------------------------------
    // Address decode
    // ------------------------------------------------------------------
    logic [3:0] addr_word;
    assign addr_word = i_wb_addr[5:2];

    // ------------------------------------------------------------------
    // Internal register state
    // ------------------------------------------------------------------
    logic        pwm_enable;      ///< PWM_CONTROL bit 31
    logic [7:0]  pwm_duty;        ///< PWM_CONTROL bits [7:0]

    logic [15:0] lux_shadow;      ///< Stable latch exposed via LUX_VALUE
    logic [15:0] lux_prev;        ///< Previous captured value; 0 on reset

    logic        irq_status;      ///< IRQ_STATUS bit 0  (W1C)
    logic        irq_enable;      ///< IRQ_ENABLE bit 0

    logic [31:0] scratch0;        ///< SCRATCH0 (self-test)
    logic [31:0] scratch1;        ///< SCRATCH1 (self-test)

    // ------------------------------------------------------------------
    // PWM generation — single-channel, reuses rgbPWM (instructor IP).
    //
    // controlReg format expected by rgbPWM:
    //   bit 31  : enable
    //   bits[7:0]: blue duty (b_duty)  ← mapped to pwm_duty
    // Only rgbBLUE is connected; RED and GREEN are left open and will
    // be optimised away by the synthesiser.
    //
    // DIVIDE_COUNT = 200 → tick at 500 kHz → PWM period ≈ 0.512 ms
    // (~195 complete PWM cycles per 100 ms phyplnt integration window).
    // ------------------------------------------------------------------
    /* verilator lint_off PINCONNECTEMPTY */
    rgbPWM #(
        .USE_DIVIDER  (1'b1),
        .DIVIDE_COUNT (200),
        .POLARITY     (1'b1),
        .MAX_COUNT    (256)
    ) PWM_INST (
        .clk        (i_clk),
        .reset      (i_reset),
        .controlReg ({pwm_enable, 23'b0, pwm_duty}),
        .rgbRED     (),
        .rgbGREEN   (),
        .rgbBLUE    (pwm_out),
        .clkPWM     (),
        .pwmcount   ()
    );
    /* verilator lint_on PINCONNECTEMPTY */

    // ------------------------------------------------------------------
    // Measurement-change detection (combinatorial)
    //
    // lux_changed is 1 for the single clock cycle when lux_valid pulses
    // AND the new value differs from the previously captured value.
    // lux_prev is 0 on reset, so the first real measurement (non-zero)
    // always fires the interrupt without requiring a special first-sample
    // flag.
    // ------------------------------------------------------------------
    logic lux_changed;
    assign lux_changed = lux_valid && (lux_value != lux_prev);

    // ------------------------------------------------------------------
    // Sequential logic: register writes, lux capture, IRQ accumulation
    // ------------------------------------------------------------------
    always_ff @(posedge i_clk) begin
        if (i_reset) begin
            pwm_enable <= 1'b0;
            pwm_duty   <= 8'h00;
            lux_shadow <= 16'h0;
            lux_prev   <= 16'h0;
            irq_status <= 1'b0;
            irq_enable <= 1'b0;
            scratch0   <= 32'h0;
            scratch1   <= 32'h0;
        end else begin

            // Capture lux on every valid pulse; both shadow (read by software)
            // and prev (baseline for next-cycle change detection) are updated.
            if (lux_valid) begin
                lux_shadow <= lux_value;
                lux_prev   <= lux_value;
            end

            // Default: accumulate new change flag into IRQ status.
            // The W1C case below overrides this for the same cycle when
            // software clears the status bit, atomically merging any
            // lux_changed that arrives coincidentally.
            irq_status <= irq_status | lux_changed;

            // Wishbone write handling
            if (i_wb_cyc && i_wb_stb && i_wb_we) begin
                case (addr_word)
                    // PWM_CONTROL (R/W)
                    4'h0: begin
                        pwm_enable <= i_wb_data[31];
                        pwm_duty   <= i_wb_data[7:0];
                    end

                    // IRQ_STATUS (W1C) — atomic merge with lux_changed
                    4'h2: irq_status <= (irq_status | lux_changed)
                                        & ~i_wb_data[0];

                    // IRQ_ENABLE (R/W)
                    4'h3: irq_enable <= i_wb_data[0];

                    // SCRATCH registers (R/W, self-test)
                    4'hE: scratch0 <= i_wb_data;
                    4'hF: scratch1 <= i_wb_data;

                    // LUX_VALUE (0x1) is read-only; writes silently ignored.
                    // All other addresses silently ignored.
                    default: ;
                endcase
            end
        end
    end

    // ------------------------------------------------------------------
    // IRQ output (combinatorial — deasserts immediately on W1C clear,
    // matching the edge-triggered AXI INTC configuration on input 3)
    // ------------------------------------------------------------------
    assign o_irq = irq_status & irq_enable;

    // ------------------------------------------------------------------
    // Wishbone read multiplexer (combinatorial)
    // ------------------------------------------------------------------
    always_comb begin
        case (addr_word)
            4'h0:    o_wb_data = {pwm_enable, 23'b0, pwm_duty};
            4'h1:    o_wb_data = {16'b0, lux_shadow};
            4'h2:    o_wb_data = {31'b0, irq_status};
            4'h3:    o_wb_data = {31'b0, irq_enable};
            4'hE:    o_wb_data = scratch0;
            4'hF:    o_wb_data = scratch1;
            default: o_wb_data = 32'h0;
        endcase
    end

    // ------------------------------------------------------------------
    // Wishbone ACK — single-cycle registered response
    // ------------------------------------------------------------------
    always_ff @(posedge i_clk) begin
        if (i_reset) o_wb_ack <= 1'b0;
        else         o_wb_ack <= i_wb_cyc && i_wb_stb;
    end

endmodule

`default_nettype wire
