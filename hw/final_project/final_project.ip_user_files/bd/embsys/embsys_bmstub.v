// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2026 Advanced Micro Devices, Inc. All Rights Reserved.
// -------------------------------------------------------------------------------

`timescale 1 ps / 1 ps

(* BLOCK_STUB = "true" *)
module embsys (
  uart_rtl_0_rxd,
  uart_rtl_0_txd,
  gpio_rtl_0_tri_o,
  gpio_rtl_1_tri_o,
  sysclk,
  sysreset_n,
  wb_irq0,
  wb_irq1,
  m_wb_ack_0,
  m_wb_adr_0,
  m_wb_cyc_0,
  m_wb_dat_r_0,
  m_wb_dat_w_0,
  m_wb_err_0,
  m_wb_reset_0,
  m_wb_sel_0,
  m_wb_stall_0,
  m_wb_stb_0,
  m_wb_we_0
);

  (* X_INTERFACE_INFO = "xilinx.com:interface:uart:1.0 uart_rtl_0 RxD" *)
  (* X_INTERFACE_MODE = "master uart_rtl_0" *)
  input uart_rtl_0_rxd;
  (* X_INTERFACE_INFO = "xilinx.com:interface:uart:1.0 uart_rtl_0 TxD" *)
  output uart_rtl_0_txd;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 gpio_rtl_0 TRI_O" *)
  (* X_INTERFACE_MODE = "master gpio_rtl_0" *)
  output [31:0]gpio_rtl_0_tri_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 gpio_rtl_1 TRI_O" *)
  (* X_INTERFACE_MODE = "master gpio_rtl_1" *)
  output [31:0]gpio_rtl_1_tri_o;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.SYSCLK CLK" *)
  (* X_INTERFACE_MODE = "slave CLK.SYSCLK" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.SYSCLK, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN embsys_Clk, INSERT_VIP 0" *)
  input sysclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.SYSRESET_N RST" *)
  (* X_INTERFACE_MODE = "slave RST.SYSRESET_N" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.SYSRESET_N, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
  input sysreset_n;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]wb_irq0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]wb_irq1;
  (* X_INTERFACE_IGNORE = "true" *)
  input m_wb_ack_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [25:0]m_wb_adr_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output m_wb_cyc_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [31:0]m_wb_dat_r_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [31:0]m_wb_dat_w_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input m_wb_err_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.M_WB_RESET_0 RST" *)
  (* X_INTERFACE_MODE = "master RST.M_WB_RESET_0" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.M_WB_RESET_0, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
  output m_wb_reset_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [3:0]m_wb_sel_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input m_wb_stall_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output m_wb_stb_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output m_wb_we_0;

  // stub module has no contents

endmodule
