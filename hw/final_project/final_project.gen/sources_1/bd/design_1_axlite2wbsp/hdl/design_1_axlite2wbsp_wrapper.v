//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
//Date        : Fri Oct 23 15:45:09 2026
//Host        : archlinux running 64-bit unknown
//Command     : generate_target design_1_axlite2wbsp_wrapper.bd
//Design      : design_1_axlite2wbsp_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_axlite2wbsp_wrapper
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
    s_axi_0_araddr,
    s_axi_0_arcache,
    s_axi_0_arprot,
    s_axi_0_arready,
    s_axi_0_arvalid,
    s_axi_0_awaddr,
    s_axi_0_awcache,
    s_axi_0_awprot,
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
  input [27:0]s_axi_0_araddr;
  input [3:0]s_axi_0_arcache;
  input [2:0]s_axi_0_arprot;
  output s_axi_0_arready;
  input s_axi_0_arvalid;
  input [27:0]s_axi_0_awaddr;
  input [3:0]s_axi_0_awcache;
  input [2:0]s_axi_0_awprot;
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
  wire [27:0]s_axi_0_araddr;
  wire [3:0]s_axi_0_arcache;
  wire [2:0]s_axi_0_arprot;
  wire s_axi_0_arready;
  wire s_axi_0_arvalid;
  wire [27:0]s_axi_0_awaddr;
  wire [3:0]s_axi_0_awcache;
  wire [2:0]s_axi_0_awprot;
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

  design_1_axlite2wbsp design_1_axlite2wbsp_i
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
        .s_axi_0_araddr(s_axi_0_araddr),
        .s_axi_0_arcache(s_axi_0_arcache),
        .s_axi_0_arprot(s_axi_0_arprot),
        .s_axi_0_arready(s_axi_0_arready),
        .s_axi_0_arvalid(s_axi_0_arvalid),
        .s_axi_0_awaddr(s_axi_0_awaddr),
        .s_axi_0_awcache(s_axi_0_awcache),
        .s_axi_0_awprot(s_axi_0_awprot),
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
