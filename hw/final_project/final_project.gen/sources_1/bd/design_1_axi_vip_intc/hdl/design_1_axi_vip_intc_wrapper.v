//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
//Date        : Fri Oct 23 15:42:24 2026
//Host        : archlinux running 64-bit unknown
//Command     : generate_target design_1_axi_vip_intc_wrapper.bd
//Design      : design_1_axi_vip_intc_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_axi_vip_intc_wrapper
   (M_AXI_0_araddr,
    M_AXI_0_arprot,
    M_AXI_0_arready,
    M_AXI_0_arvalid,
    M_AXI_0_awaddr,
    M_AXI_0_awprot,
    M_AXI_0_awready,
    M_AXI_0_awvalid,
    M_AXI_0_bready,
    M_AXI_0_bresp,
    M_AXI_0_bvalid,
    M_AXI_0_rdata,
    M_AXI_0_rready,
    M_AXI_0_rresp,
    M_AXI_0_rvalid,
    M_AXI_0_wdata,
    M_AXI_0_wready,
    M_AXI_0_wstrb,
    M_AXI_0_wvalid,
    aclk_0,
    aresetn_0);
  output [31:0]M_AXI_0_araddr;
  output [2:0]M_AXI_0_arprot;
  input M_AXI_0_arready;
  output M_AXI_0_arvalid;
  output [31:0]M_AXI_0_awaddr;
  output [2:0]M_AXI_0_awprot;
  input M_AXI_0_awready;
  output M_AXI_0_awvalid;
  output M_AXI_0_bready;
  input [1:0]M_AXI_0_bresp;
  input M_AXI_0_bvalid;
  input [31:0]M_AXI_0_rdata;
  output M_AXI_0_rready;
  input [1:0]M_AXI_0_rresp;
  input M_AXI_0_rvalid;
  output [31:0]M_AXI_0_wdata;
  input M_AXI_0_wready;
  output [3:0]M_AXI_0_wstrb;
  output M_AXI_0_wvalid;
  input aclk_0;
  input aresetn_0;

  wire [31:0]M_AXI_0_araddr;
  wire [2:0]M_AXI_0_arprot;
  wire M_AXI_0_arready;
  wire M_AXI_0_arvalid;
  wire [31:0]M_AXI_0_awaddr;
  wire [2:0]M_AXI_0_awprot;
  wire M_AXI_0_awready;
  wire M_AXI_0_awvalid;
  wire M_AXI_0_bready;
  wire [1:0]M_AXI_0_bresp;
  wire M_AXI_0_bvalid;
  wire [31:0]M_AXI_0_rdata;
  wire M_AXI_0_rready;
  wire [1:0]M_AXI_0_rresp;
  wire M_AXI_0_rvalid;
  wire [31:0]M_AXI_0_wdata;
  wire M_AXI_0_wready;
  wire [3:0]M_AXI_0_wstrb;
  wire M_AXI_0_wvalid;
  wire aclk_0;
  wire aresetn_0;

  design_1_axi_vip_intc design_1_axi_vip_intc_i
       (.M_AXI_0_araddr(M_AXI_0_araddr),
        .M_AXI_0_arprot(M_AXI_0_arprot),
        .M_AXI_0_arready(M_AXI_0_arready),
        .M_AXI_0_arvalid(M_AXI_0_arvalid),
        .M_AXI_0_awaddr(M_AXI_0_awaddr),
        .M_AXI_0_awprot(M_AXI_0_awprot),
        .M_AXI_0_awready(M_AXI_0_awready),
        .M_AXI_0_awvalid(M_AXI_0_awvalid),
        .M_AXI_0_bready(M_AXI_0_bready),
        .M_AXI_0_bresp(M_AXI_0_bresp),
        .M_AXI_0_bvalid(M_AXI_0_bvalid),
        .M_AXI_0_rdata(M_AXI_0_rdata),
        .M_AXI_0_rready(M_AXI_0_rready),
        .M_AXI_0_rresp(M_AXI_0_rresp),
        .M_AXI_0_rvalid(M_AXI_0_rvalid),
        .M_AXI_0_wdata(M_AXI_0_wdata),
        .M_AXI_0_wready(M_AXI_0_wready),
        .M_AXI_0_wstrb(M_AXI_0_wstrb),
        .M_AXI_0_wvalid(M_AXI_0_wvalid),
        .aclk_0(aclk_0),
        .aresetn_0(aresetn_0));
endmodule
