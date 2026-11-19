/**
 * @file	phyplnt.sv
 * @brief	Instructor-provided FPGA physical plant for ECE 544 Project #2
 *
 * @author	Roy Kravitz (roy.kravitz@pdx.edu) and ChatGPT
 * @copyright Copyright (c) 2026 Roy Kravitz
 * @license MIT
 *
 * @date	13-Oct-2026
 * @version	1.0 (function and timing verified)
 *
 * @details
 * Integrates a PWM waveform over fixed-length sensor measurement windows.
 * The sensor output is unsigned 0.1 lux (e.g. 753 means 75.3 lux).
 * Optical transmission and ambient illumination are requested via AXI GPIO;
 * requests become active only at the start of a new integration window.
 *
 * This is a synchronous, single-clock-domain design.  There is no general-purpose divider: the divisor is a compile-time constant.
 * Vivado synthesis and utilization have been verified.  The design meets timing.  There is a constraints file that includes two
 * multicyle constraints.  We have verified these constraints agains the RTL and they are valid.
 *
 * @note	SIMULATION!=0 shortens integration to 1024 clocks (four PWM periods).
 * @note	The numerator multiplication is a single-cycle path. The
 *         	numerator-to-lux calculation uses a four-cycle multicycle path
 *         	(setup 4, hold 3). 
 * @note	Recheck routed timing after changing parameters or arithmetic.
 */
 // SPDX-License-Identifier: MIT

module phyplnt #(
    parameter int unsigned CLK_FREQ_HZ    = 100_000_000,
    parameter int unsigned INTEGRATION_MS  = 100,
    parameter int unsigned MAX_LED_LUX     = 200,
    parameter int unsigned SIMULATION      = 0
) (
    input  logic        clk,
    input  logic        reset,             // synchronous, active high
    input  logic        pwm_in,            // dedicated phyplnt_io PWM actuator
    input  logic [31:0] gpio_ch1,          // [9:0] transmission, 0..1000
    input  logic [31:0] gpio_ch2,          // [15:0] ambient, integer lux
    output logic [15:0] lux_value,         // unsigned tenths of lux
    output logic        lux_valid          // one-clock diagnostic strobe
);

    // The integer number of clock cycles in one sensor integration window.
    localparam longint unsigned CYCLES_LONG =
        (64'(CLK_FREQ_HZ) * 64'(INTEGRATION_MS)) / 64'd1000;
        
    // Simulation: four complete 256-count PWM periods with divider=1.
    // Hardware: preserve the specified 100 ms integration window while
    // speeding up the simulation (as opposed to 10's of millions of simulation cycles)
    localparam int unsigned INTEGRATION_CYCLES =
        (SIMULATION != 0) ? 1024 : int'(CYCLES_LONG);
        
    // counter width
    localparam int unsigned CW = (INTEGRATION_CYCLES < 2) ? 1 :
                                  $clog2(INTEGRATION_CYCLES + 1);

    // lux_x10 = ambient_lux * 10 +
    //           (high_cycles * transmission * MAX_LED_LUX * 10)
    //           / (INTEGRATION_CYCLES * 1000)
    //
    // For the defaults (100 MHz, 100 ms, 200 lux), the LED term simplifies
    // to (high_cycles * transmission) / 5_000_000. Keeping the generic
    // constant-denominator expression allows parameter changes.
    localparam logic [63:0] DIVISOR =
        64'(INTEGRATION_CYCLES) * 64'd1000;

    logic [CW-1:0] interval_count;
    logic [CW-1:0] high_count;
    logic [CW-1:0] completed_high;
    logic          interval_end;

    logic [9:0]  transmission_active;
    logic [15:0] ambient_active;

    // Snapshot registers decouple integration from the output calculation.
    // A completed interval is captured at its boundary; the next interval
    // starts immediately, with no missed PWM samples.
    logic [CW-1:0] completed_high_snapshot;
    logic [9:0]  transmission_snapshot;
    logic        numerator_pending;
    logic [63:0] numerator_snapshot;
    logic [15:0] ambient_snapshot;
    logic        calculation_pending;
    logic [1:0]  calculation_wait;  // three intervening wait edges

    logic [63:0] led_lux_x10;
    logic [63:0] total_lux_x10;

    assign interval_end =
        (interval_count == CW'(INTEGRATION_CYCLES - 1));
    assign completed_high = high_count + CW'(pwm_in);

    // Constant division: synthesizer may implement shifts/adds/multipliers.
    // This calculation is deliberately separate from the PWM accumulator.
    assign led_lux_x10 = numerator_snapshot / DIVISOR;
    assign total_lux_x10 = led_lux_x10 +
                           (64'(ambient_snapshot) * 64'd10);

    always_ff @(posedge clk) begin
        if (reset) begin
            interval_count      <= '0;
            high_count          <= '0;
            transmission_active <= 10'd1000;
            ambient_active      <= 16'd0;
            completed_high_snapshot <= '0;
            transmission_snapshot <= '0;
            numerator_pending <= 1'b0;
            numerator_snapshot  <= '0;
            ambient_snapshot    <= '0;
            calculation_pending <= 1'b0;
            calculation_wait    <= 2'd0;
            lux_value           <= 16'd0;
            lux_valid           <= 1'b0;
        end else begin
            lux_valid <= 1'b0;

            if (interval_end) begin
                // Include the final PWM clock sample in this interval.
                completed_high_snapshot <= completed_high;
                transmission_snapshot <= transmission_active;
                ambient_snapshot <= ambient_active;
                numerator_pending <= 1'b1;

                // Start the next integration interval immediately.
                interval_count <= '0;
                high_count     <= '0;

                // The next interval uses the most recently requested values.
                transmission_active <=
                    (gpio_ch1[9:0] > 10'd1000) ? 10'd1000 : gpio_ch1[9:0];
                ambient_active <= gpio_ch2[15:0];
            end else begin
                interval_count <= interval_count + 1'b1;
                if (pwm_in)
                    high_count <= high_count + 1'b1;
            end

            // A register boundary separates PWM integration from arithmetic.
            // Nonblocking assignments ensure these operands are the completed
            // interval's values, not the next interval's active settings.
            if (numerator_pending) begin
                numerator_snapshot <=
                    64'(completed_high_snapshot) *
                    64'(transmission_snapshot) *
                    64'(MAX_LED_LUX) * 64'd10;
                calculation_pending <= 1'b1;
                calculation_wait <= 2'd3;
                numerator_pending <= 1'b0;
            end

            // The arithmetic path from numerator_snapshot to lux_value is
            // constrained as four-cycle setup / three-cycle hold. Wait three
            // intervening rising edges after numerator_snapshot updates;
            // lux_value then captures on the fourth edge (N+5 relative to
            // the interval boundary at N). Keep this sequencing and the
            // corresponding XDC multicycle exceptions in agreement.
            // Saturate after adding ambient illumination.
            if (calculation_pending) begin
                if (calculation_wait != 2'd0) begin
                    calculation_wait <= calculation_wait - 1'b1;
                end else begin
                    lux_value <= (total_lux_x10 > 64'd65535)
                               ? 16'hFFFF : total_lux_x10[15:0];
                    lux_valid <= 1'b1;
                    calculation_pending <= 1'b0;
                end
            end
        end
    end

    // Parameter assumptions: integration window fits a 32-bit counter;
    // numerator fits 64 bits for the selected parameter values. In the
    // baseline 100 MHz / 100 ms / 200 lux design, both are comfortably true.

endmodule: phyplnt
