//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
//Date        : Fri Oct 23 16:52:24 2026
//Host        : archlinux running 64-bit unknown
//Command     : generate_target design_1_axi_intc_wrapper.bd
//Design      : design_1_axi_intc_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_axi_intc_wrapper
   (intr_0,
    irq_0,
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
    s_axi_aresetn_0);
  input [0:0]intr_0;
  output irq_0;
  input [8:0]s_axi_0_araddr;
  output s_axi_0_arready;
  input s_axi_0_arvalid;
  input [8:0]s_axi_0_awaddr;
  output s_axi_0_awready;
  input s_axi_0_awvalid;
  input s_axi_0_bready;
  output [1:0]s_axi_0_bresp;
  output s_axi_0_bvalid;
  output [31:0]s_axi_0_rdata;
  input s_axi_0_rready;
  output [1:0]s_axi_0_rresp;
  output s_axi_0_rvalid;
  input [31:0]s_axi_0_wdata;
  output s_axi_0_wready;
  input [3:0]s_axi_0_wstrb;
  input s_axi_0_wvalid;
  input s_axi_aclk_0;
  input s_axi_aresetn_0;

  wire [0:0]intr_0;
  wire irq_0;
  wire [8:0]s_axi_0_araddr;
  wire s_axi_0_arready;
  wire s_axi_0_arvalid;
  wire [8:0]s_axi_0_awaddr;
  wire s_axi_0_awready;
  wire s_axi_0_awvalid;
  wire s_axi_0_bready;
  wire [1:0]s_axi_0_bresp;
  wire s_axi_0_bvalid;
  wire [31:0]s_axi_0_rdata;
  wire s_axi_0_rready;
  wire [1:0]s_axi_0_rresp;
  wire s_axi_0_rvalid;
  wire [31:0]s_axi_0_wdata;
  wire s_axi_0_wready;
  wire [3:0]s_axi_0_wstrb;
  wire s_axi_0_wvalid;
  wire s_axi_aclk_0;
  wire s_axi_aresetn_0;

  design_1_axi_intc design_1_axi_intc_i
       (.intr_0(intr_0),
        .irq_0(irq_0),
        .s_axi_0_araddr(s_axi_0_araddr),
        .s_axi_0_arready(s_axi_0_arready),
        .s_axi_0_arvalid(s_axi_0_arvalid),
        .s_axi_0_awaddr(s_axi_0_awaddr),
        .s_axi_0_awready(s_axi_0_awready),
        .s_axi_0_awvalid(s_axi_0_awvalid),
        .s_axi_0_bready(s_axi_0_bready),
        .s_axi_0_bresp(s_axi_0_bresp),
        .s_axi_0_bvalid(s_axi_0_bvalid),
        .s_axi_0_rdata(s_axi_0_rdata),
        .s_axi_0_rready(s_axi_0_rready),
        .s_axi_0_rresp(s_axi_0_rresp),
        .s_axi_0_rvalid(s_axi_0_rvalid),
        .s_axi_0_wdata(s_axi_0_wdata),
        .s_axi_0_wready(s_axi_0_wready),
        .s_axi_0_wstrb(s_axi_0_wstrb),
        .s_axi_0_wvalid(s_axi_0_wvalid),
        .s_axi_aclk_0(s_axi_aclk_0),
        .s_axi_aresetn_0(s_axi_aresetn_0));
endmodule
