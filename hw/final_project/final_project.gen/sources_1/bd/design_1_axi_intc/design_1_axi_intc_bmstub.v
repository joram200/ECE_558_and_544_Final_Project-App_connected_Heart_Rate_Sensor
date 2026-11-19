// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2026 Advanced Micro Devices, Inc. All Rights Reserved.
// -------------------------------------------------------------------------------

`timescale 1 ps / 1 ps

(* BLOCK_STUB = "true" *)
module design_1_axi_intc (
  s_axi_0_araddr,
  s_axi_0_arready,
  s_axi_0_arvalid,
  s_axi_0_awaddr,
  s_axi_0_awready,
  s_axi_0_awvalid,
  s_axi_0_bready,
  s_axi_0_bresp,
  s_axi_0_bvalid,
  s_axi_0_rdata,
  s_axi_0_rready,
  s_axi_0_rresp,
  s_axi_0_rvalid,
  s_axi_0_wdata,
  s_axi_0_wready,
  s_axi_0_wstrb,
  s_axi_0_wvalid,
  s_axi_aclk_0,
  s_axi_aresetn_0,
  intr_0,
  irq_0
);

  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_0 ARADDR" *)
  (* X_INTERFACE_MODE = "slave s_axi_0" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 9, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN design_1_axi_intc_s_axi_aclk_0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
  input [8:0]s_axi_0_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_0 ARREADY" *)
  output s_axi_0_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_0 ARVALID" *)
  input s_axi_0_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_0 AWADDR" *)
  input [8:0]s_axi_0_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_0 AWREADY" *)
  output s_axi_0_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_0 AWVALID" *)
  input s_axi_0_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_0 BREADY" *)
  input s_axi_0_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_0 BRESP" *)
  output [1:0]s_axi_0_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_0 BVALID" *)
  output s_axi_0_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_0 RDATA" *)
  output [31:0]s_axi_0_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_0 RREADY" *)
  input s_axi_0_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_0 RRESP" *)
  output [1:0]s_axi_0_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_0 RVALID" *)
  output s_axi_0_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_0 WDATA" *)
  input [31:0]s_axi_0_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_0 WREADY" *)
  output s_axi_0_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_0 WSTRB" *)
  input [3:0]s_axi_0_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_0 WVALID" *)
  input s_axi_0_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.S_AXI_ACLK_0 CLK" *)
  (* X_INTERFACE_MODE = "slave CLK.S_AXI_ACLK_0" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.S_AXI_ACLK_0, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_axi_intc_s_axi_aclk_0, ASSOCIATED_BUSIF s_axi_0, ASSOCIATED_RESET s_axi_aresetn_0, INSERT_VIP 0" *)
  input s_axi_aclk_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.S_AXI_ARESETN_0 RST" *)
  (* X_INTERFACE_MODE = "slave RST.S_AXI_ARESETN_0" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.S_AXI_ARESETN_0, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
  input s_axi_aresetn_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.INTR_0 INTERRUPT" *)
  (* X_INTERFACE_MODE = "slave INTR.INTR_0" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.INTR_0, SENSITIVITY EDGE_RISING, PortWidth 1" *)
  input [0:0]intr_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output irq_0;

  // stub module has no contents

endmodule
