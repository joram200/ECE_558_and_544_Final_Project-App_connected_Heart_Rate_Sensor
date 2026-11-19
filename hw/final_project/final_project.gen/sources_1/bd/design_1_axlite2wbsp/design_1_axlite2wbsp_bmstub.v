// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2026 Advanced Micro Devices, Inc. All Rights Reserved.
// -------------------------------------------------------------------------------

`timescale 1 ps / 1 ps

(* BLOCK_STUB = "true" *)
module design_1_axlite2wbsp (
  s_axi_0_awaddr,
  s_axi_0_awcache,
  s_axi_0_awprot,
  s_axi_0_awvalid,
  s_axi_0_awready,
  s_axi_0_wdata,
  s_axi_0_wstrb,
  s_axi_0_wvalid,
  s_axi_0_wready,
  s_axi_0_bresp,
  s_axi_0_bvalid,
  s_axi_0_bready,
  s_axi_0_araddr,
  s_axi_0_arcache,
  s_axi_0_arprot,
  s_axi_0_arvalid,
  s_axi_0_arready,
  s_axi_0_rdata,
  s_axi_0_rresp,
  s_axi_0_rvalid,
  s_axi_0_rready,
  s_axi_aclk_0,
  s_axi_aresetn_0,
  m_wb_reset_0,
  m_wb_cyc_0,
  m_wb_stb_0,
  m_wb_we_0,
  m_wb_adr_0,
  m_wb_dat_w_0,
  m_wb_sel_0,
  m_wb_ack_0,
  m_wb_dat_r_0,
  m_wb_stall_0,
  m_wb_err_0
);

  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_0 AWADDR" *)
  (* X_INTERFACE_MODE = "slave s_axi_0" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 28, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN design_1_axlite2wbsp_s_axi_aclk_0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
  input [27:0]s_axi_0_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_0 AWCACHE" *)
  input [3:0]s_axi_0_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_0 AWPROT" *)
  input [2:0]s_axi_0_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_0 AWVALID" *)
  input s_axi_0_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_0 AWREADY" *)
  output s_axi_0_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_0 WDATA" *)
  input [31:0]s_axi_0_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_0 WSTRB" *)
  input [3:0]s_axi_0_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_0 WVALID" *)
  input s_axi_0_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_0 WREADY" *)
  output s_axi_0_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_0 BRESP" *)
  output [1:0]s_axi_0_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_0 BVALID" *)
  output s_axi_0_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_0 BREADY" *)
  input s_axi_0_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_0 ARADDR" *)
  input [27:0]s_axi_0_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_0 ARCACHE" *)
  input [3:0]s_axi_0_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_0 ARPROT" *)
  input [2:0]s_axi_0_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_0 ARVALID" *)
  input s_axi_0_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_0 ARREADY" *)
  output s_axi_0_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_0 RDATA" *)
  output [31:0]s_axi_0_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_0 RRESP" *)
  output [1:0]s_axi_0_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_0 RVALID" *)
  output s_axi_0_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_0 RREADY" *)
  input s_axi_0_rready;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.S_AXI_ACLK_0 CLK" *)
  (* X_INTERFACE_MODE = "slave CLK.S_AXI_ACLK_0" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.S_AXI_ACLK_0, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ -1, PHASE 0.0, CLK_DOMAIN design_1_axlite2wbsp_s_axi_aclk_0, ASSOCIATED_BUSIF s_axi_0, ASSOCIATED_RESET s_axi_aresetn_0, INSERT_VIP 0" *)
  input s_axi_aclk_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.S_AXI_ARESETN_0 RST" *)
  (* X_INTERFACE_MODE = "slave RST.S_AXI_ARESETN_0" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.S_AXI_ARESETN_0, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
  input s_axi_aresetn_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.M_WB_RESET_0 RST" *)
  (* X_INTERFACE_MODE = "master RST.M_WB_RESET_0" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.M_WB_RESET_0, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
  output m_wb_reset_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output m_wb_cyc_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output m_wb_stb_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output m_wb_we_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [25:0]m_wb_adr_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [31:0]m_wb_dat_w_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [3:0]m_wb_sel_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input m_wb_ack_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [31:0]m_wb_dat_r_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input m_wb_stall_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input m_wb_err_0;

  // stub module has no contents

endmodule
