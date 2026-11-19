//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
//Date        : Mon Oct 19 14:55:25 2026
//Host        : archlinux running 64-bit unknown
//Command     : generate_target embsys_wrapper.bd
//Design      : embsys_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module embsys_wrapper
   (m_wb_ack_0,
    m_wb_adr_0,
    m_wb_cyc_0,
    m_wb_dat_r_0,
    m_wb_dat_w_0,
    m_wb_err_0,
    m_wb_reset_0,
    m_wb_sel_0,
    m_wb_stall_0,
    m_wb_stb_0,
    m_wb_we_0,
    sysclk,
    sysreset_n,
    uart_rtl_0_rxd,
    uart_rtl_0_txd,
    wb_irq0,
    wb_irq1);
  input m_wb_ack_0;
  output [25:0]m_wb_adr_0;
  output m_wb_cyc_0;
  input [31:0]m_wb_dat_r_0;
  output [31:0]m_wb_dat_w_0;
  input m_wb_err_0;
  output m_wb_reset_0;
  output [3:0]m_wb_sel_0;
  input m_wb_stall_0;
  output m_wb_stb_0;
  output m_wb_we_0;
  input sysclk;
  input sysreset_n;
  input uart_rtl_0_rxd;
  output uart_rtl_0_txd;
  input [0:0]wb_irq0;
  input [0:0]wb_irq1;

  wire m_wb_ack_0;
  wire [25:0]m_wb_adr_0;
  wire m_wb_cyc_0;
  wire [31:0]m_wb_dat_r_0;
  wire [31:0]m_wb_dat_w_0;
  wire m_wb_err_0;
  wire m_wb_reset_0;
  wire [3:0]m_wb_sel_0;
  wire m_wb_stall_0;
  wire m_wb_stb_0;
  wire m_wb_we_0;
  wire sysclk;
  wire sysreset_n;
  wire uart_rtl_0_rxd;
  wire uart_rtl_0_txd;
  wire [0:0]wb_irq0;
  wire [0:0]wb_irq1;

  embsys embsys_i
       (.m_wb_ack_0(m_wb_ack_0),
        .m_wb_adr_0(m_wb_adr_0),
        .m_wb_cyc_0(m_wb_cyc_0),
        .m_wb_dat_r_0(m_wb_dat_r_0),
        .m_wb_dat_w_0(m_wb_dat_w_0),
        .m_wb_err_0(m_wb_err_0),
        .m_wb_reset_0(m_wb_reset_0),
        .m_wb_sel_0(m_wb_sel_0),
        .m_wb_stall_0(m_wb_stall_0),
        .m_wb_stb_0(m_wb_stb_0),
        .m_wb_we_0(m_wb_we_0),
        .sysclk(sysclk),
        .sysreset_n(sysreset_n),
        .uart_rtl_0_rxd(uart_rtl_0_rxd),
        .uart_rtl_0_txd(uart_rtl_0_txd),
        .wb_irq0(wb_irq0),
        .wb_irq1(wb_irq1));
endmodule
