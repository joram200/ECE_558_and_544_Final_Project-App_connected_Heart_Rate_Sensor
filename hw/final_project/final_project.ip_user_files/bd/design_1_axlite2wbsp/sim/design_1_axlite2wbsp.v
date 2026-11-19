//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
//Date        : Fri Oct 23 15:45:09 2026
//Host        : archlinux running 64-bit unknown
//Command     : generate_target design_1_axlite2wbsp.bd
//Design      : design_1_axlite2wbsp
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1_axlite2wbsp,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1_axlite2wbsp,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=1,numReposBlks=1,numNonXlnxBlks=1,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "design_1_axlite2wbsp.hwdef" *) 
module design_1_axlite2wbsp
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
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.M_WB_RESET_0 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.M_WB_RESET_0, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) output m_wb_reset_0;
  output [3:0]m_wb_sel_0;
  input m_wb_stall_0;
  output m_wb_stb_0;
  output m_wb_we_0;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_0 ARADDR" *) (* X_INTERFACE_MODE = "Slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_0, ADDR_WIDTH 28, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN design_1_axlite2wbsp_s_axi_aclk_0, DATA_WIDTH 32, FREQ_HZ 100000000, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 1, HAS_LOCK 0, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 1, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 1, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [27:0]s_axi_0_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_0 ARCACHE" *) input [3:0]s_axi_0_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_0 ARPROT" *) input [2:0]s_axi_0_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_0 ARREADY" *) output s_axi_0_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_0 ARVALID" *) input s_axi_0_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_0 AWADDR" *) input [27:0]s_axi_0_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_0 AWCACHE" *) input [3:0]s_axi_0_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_0 AWPROT" *) input [2:0]s_axi_0_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_0 AWREADY" *) output s_axi_0_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_0 AWVALID" *) input s_axi_0_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_0 BREADY" *) input s_axi_0_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_0 BRESP" *) output [1:0]s_axi_0_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_0 BVALID" *) output s_axi_0_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_0 RDATA" *) output [31:0]s_axi_0_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_0 RREADY" *) input s_axi_0_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_0 RRESP" *) output [1:0]s_axi_0_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_0 RVALID" *) output s_axi_0_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_0 WDATA" *) input [31:0]s_axi_0_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_0 WREADY" *) output s_axi_0_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_0 WSTRB" *) input [3:0]s_axi_0_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_0 WVALID" *) input s_axi_0_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.S_AXI_ACLK_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.S_AXI_ACLK_0, ASSOCIATED_BUSIF s_axi_0, ASSOCIATED_RESET s_axi_aresetn_0, CLK_DOMAIN design_1_axlite2wbsp_s_axi_aclk_0, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ -1, INSERT_VIP 0, PHASE 0.0" *) input s_axi_aclk_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.S_AXI_ARESETN_0 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.S_AXI_ARESETN_0, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input s_axi_aresetn_0;

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

  design_1_axlite2wbsp_axlite2wbsp_0_0 axlite2wbsp_0
       (.m_wb_ack(m_wb_ack_0),
        .m_wb_adr(m_wb_adr_0),
        .m_wb_cyc(m_wb_cyc_0),
        .m_wb_dat_r(m_wb_dat_r_0),
        .m_wb_dat_w(m_wb_dat_w_0),
        .m_wb_err(m_wb_err_0),
        .m_wb_reset(m_wb_reset_0),
        .m_wb_sel(m_wb_sel_0),
        .m_wb_stall(m_wb_stall_0),
        .m_wb_stb(m_wb_stb_0),
        .m_wb_we(m_wb_we_0),
        .s_axi_aclk(s_axi_aclk_0),
        .s_axi_araddr(s_axi_0_araddr),
        .s_axi_arcache(s_axi_0_arcache),
        .s_axi_aresetn(s_axi_aresetn_0),
        .s_axi_arprot(s_axi_0_arprot),
        .s_axi_arready(s_axi_0_arready),
        .s_axi_arvalid(s_axi_0_arvalid),
        .s_axi_awaddr(s_axi_0_awaddr),
        .s_axi_awcache(s_axi_0_awcache),
        .s_axi_awprot(s_axi_0_awprot),
        .s_axi_awready(s_axi_0_awready),
        .s_axi_awvalid(s_axi_0_awvalid),
        .s_axi_bready(s_axi_0_bready),
        .s_axi_bresp(s_axi_0_bresp),
        .s_axi_bvalid(s_axi_0_bvalid),
        .s_axi_rdata(s_axi_0_rdata),
        .s_axi_rready(s_axi_0_rready),
        .s_axi_rresp(s_axi_0_rresp),
        .s_axi_rvalid(s_axi_0_rvalid),
        .s_axi_wdata(s_axi_0_wdata),
        .s_axi_wready(s_axi_0_wready),
        .s_axi_wstrb(s_axi_0_wstrb),
        .s_axi_wvalid(s_axi_0_wvalid));
endmodule
