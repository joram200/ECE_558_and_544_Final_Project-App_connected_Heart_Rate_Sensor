// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
// Date        : Mon Oct 19 14:56:08 2026
// Host        : archlinux running 64-bit unknown
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ embsys_axlite2wbsp_0_0_sim_netlist.v
// Design      : embsys_axlite2wbsp_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axilrd2wbsp
   (s_axi_rdata,
    wb_pending,
    o_axi_arready_reg_0,
    r_wb_stb,
    s_axi_rresp,
    o_axi_rvalid_reg_0,
    m_wb_stb,
    m_wb_adr,
    s_axi_aclk,
    m_wb_dat_r,
    \r_last_reg[0]_0 ,
    m_wb_ack,
    m_wb_err,
    r_a_owner,
    m_wb_stall,
    s_axi_rready,
    s_axi_aresetn,
    s_axi_arvalid,
    s_axi_araddr,
    w_wb_stb,
    Q);
  output [31:0]s_axi_rdata;
  output wb_pending;
  output o_axi_arready_reg_0;
  output r_wb_stb;
  output [1:0]s_axi_rresp;
  output o_axi_rvalid_reg_0;
  output m_wb_stb;
  output [25:0]m_wb_adr;
  input s_axi_aclk;
  input [31:0]m_wb_dat_r;
  input \r_last_reg[0]_0 ;
  input m_wb_ack;
  input m_wb_err;
  input r_a_owner;
  input m_wb_stall;
  input s_axi_rready;
  input s_axi_aresetn;
  input s_axi_arvalid;
  input [25:0]s_axi_araddr;
  input w_wb_stb;
  input [25:0]Q;

  wire [25:0]Q;
  wire dfifo_reg_0_15_30_31_i_1_n_0;
  wire \err_loc_reg_n_0_[0] ;
  wire \err_loc_reg_n_0_[1] ;
  wire \err_loc_reg_n_0_[2] ;
  wire \err_loc_reg_n_0_[3] ;
  wire \err_loc_reg_n_0_[4] ;
  wire err_state;
  wire err_state_i_1__0_n_0;
  wire err_state_i_2__0_n_0;
  wire err_state_i_3__0_n_0;
  wire fifo_full;
  wire fifo_full_i_1__0_n_0;
  wire m_wb_ack;
  wire [25:0]m_wb_adr;
  wire [31:0]m_wb_dat_r;
  wire m_wb_err;
  wire m_wb_stall;
  wire m_wb_stb;
  wire [3:0]next_last;
  wire o_axi_arready4_out;
  wire o_axi_arready_i_2_n_0;
  wire o_axi_arready_i_3_n_0;
  wire o_axi_arready_i_4_n_0;
  wire o_axi_arready_i_5_n_0;
  wire o_axi_arready_i_6_n_0;
  wire o_axi_arready_reg_0;
  wire \o_axi_rresp[0]_i_1_n_0 ;
  wire \o_axi_rresp[0]_i_2_n_0 ;
  wire \o_axi_rresp[0]_i_3_n_0 ;
  wire \o_axi_rresp[0]_i_4_n_0 ;
  wire \o_axi_rresp[1]_i_10_n_0 ;
  wire \o_axi_rresp[1]_i_1_n_0 ;
  wire \o_axi_rresp[1]_i_2_n_0 ;
  wire \o_axi_rresp[1]_i_3_n_0 ;
  wire \o_axi_rresp[1]_i_4_n_0 ;
  wire \o_axi_rresp[1]_i_5_n_0 ;
  wire \o_axi_rresp[1]_i_6_n_0 ;
  wire \o_axi_rresp[1]_i_7_n_0 ;
  wire \o_axi_rresp[1]_i_8_n_0 ;
  wire \o_axi_rresp[1]_i_9_n_0 ;
  wire o_axi_rvalid_i_1_n_0;
  wire o_axi_rvalid_i_2_n_0;
  wire o_axi_rvalid_i_3_n_0;
  wire o_axi_rvalid_i_5_n_0;
  wire o_axi_rvalid_i_6_n_0;
  wire o_axi_rvalid_i_7_n_0;
  wire o_axi_rvalid_i_8_n_0;
  wire o_axi_rvalid_i_9_n_0;
  wire o_axi_rvalid_reg_0;
  wire \o_wb_addr[0]_i_1_n_0 ;
  wire \o_wb_addr[10]_i_1_n_0 ;
  wire \o_wb_addr[11]_i_1_n_0 ;
  wire \o_wb_addr[12]_i_1_n_0 ;
  wire \o_wb_addr[13]_i_1_n_0 ;
  wire \o_wb_addr[14]_i_1_n_0 ;
  wire \o_wb_addr[15]_i_1_n_0 ;
  wire \o_wb_addr[16]_i_1_n_0 ;
  wire \o_wb_addr[17]_i_1_n_0 ;
  wire \o_wb_addr[18]_i_1_n_0 ;
  wire \o_wb_addr[19]_i_1_n_0 ;
  wire \o_wb_addr[1]_i_1_n_0 ;
  wire \o_wb_addr[20]_i_1_n_0 ;
  wire \o_wb_addr[21]_i_1_n_0 ;
  wire \o_wb_addr[22]_i_1_n_0 ;
  wire \o_wb_addr[23]_i_1_n_0 ;
  wire \o_wb_addr[24]_i_1_n_0 ;
  wire \o_wb_addr[25]_i_1_n_0 ;
  wire \o_wb_addr[25]_i_2_n_0 ;
  wire \o_wb_addr[2]_i_1_n_0 ;
  wire \o_wb_addr[3]_i_1_n_0 ;
  wire \o_wb_addr[4]_i_1_n_0 ;
  wire \o_wb_addr[5]_i_1_n_0 ;
  wire \o_wb_addr[6]_i_1_n_0 ;
  wire \o_wb_addr[7]_i_1_n_0 ;
  wire \o_wb_addr[8]_i_1_n_0 ;
  wire \o_wb_addr[9]_i_1_n_0 ;
  wire \o_wb_addr_reg_n_0_[0] ;
  wire \o_wb_addr_reg_n_0_[10] ;
  wire \o_wb_addr_reg_n_0_[11] ;
  wire \o_wb_addr_reg_n_0_[12] ;
  wire \o_wb_addr_reg_n_0_[13] ;
  wire \o_wb_addr_reg_n_0_[14] ;
  wire \o_wb_addr_reg_n_0_[15] ;
  wire \o_wb_addr_reg_n_0_[16] ;
  wire \o_wb_addr_reg_n_0_[17] ;
  wire \o_wb_addr_reg_n_0_[18] ;
  wire \o_wb_addr_reg_n_0_[19] ;
  wire \o_wb_addr_reg_n_0_[1] ;
  wire \o_wb_addr_reg_n_0_[20] ;
  wire \o_wb_addr_reg_n_0_[21] ;
  wire \o_wb_addr_reg_n_0_[22] ;
  wire \o_wb_addr_reg_n_0_[23] ;
  wire \o_wb_addr_reg_n_0_[24] ;
  wire \o_wb_addr_reg_n_0_[25] ;
  wire \o_wb_addr_reg_n_0_[2] ;
  wire \o_wb_addr_reg_n_0_[3] ;
  wire \o_wb_addr_reg_n_0_[4] ;
  wire \o_wb_addr_reg_n_0_[5] ;
  wire \o_wb_addr_reg_n_0_[6] ;
  wire \o_wb_addr_reg_n_0_[7] ;
  wire \o_wb_addr_reg_n_0_[8] ;
  wire \o_wb_addr_reg_n_0_[9] ;
  wire o_wb_stb2;
  wire o_wb_stb_i_1__0_n_0;
  wire [4:0]p_0_in__0;
  wire [0:0]p_0_in__0_0;
  wire [1:1]p_0_in__0__0;
  wire r_a_owner;
  wire \r_addr_reg_n_0_[0] ;
  wire \r_addr_reg_n_0_[10] ;
  wire \r_addr_reg_n_0_[11] ;
  wire \r_addr_reg_n_0_[12] ;
  wire \r_addr_reg_n_0_[13] ;
  wire \r_addr_reg_n_0_[14] ;
  wire \r_addr_reg_n_0_[15] ;
  wire \r_addr_reg_n_0_[16] ;
  wire \r_addr_reg_n_0_[17] ;
  wire \r_addr_reg_n_0_[18] ;
  wire \r_addr_reg_n_0_[19] ;
  wire \r_addr_reg_n_0_[1] ;
  wire \r_addr_reg_n_0_[20] ;
  wire \r_addr_reg_n_0_[21] ;
  wire \r_addr_reg_n_0_[22] ;
  wire \r_addr_reg_n_0_[23] ;
  wire \r_addr_reg_n_0_[24] ;
  wire \r_addr_reg_n_0_[25] ;
  wire \r_addr_reg_n_0_[2] ;
  wire \r_addr_reg_n_0_[3] ;
  wire \r_addr_reg_n_0_[4] ;
  wire \r_addr_reg_n_0_[5] ;
  wire \r_addr_reg_n_0_[6] ;
  wire \r_addr_reg_n_0_[7] ;
  wire \r_addr_reg_n_0_[8] ;
  wire \r_addr_reg_n_0_[9] ;
  wire \r_first[0]_i_1__0_n_0 ;
  wire \r_first[1]_i_1__0_n_0 ;
  wire \r_first[2]_i_1__0_n_0 ;
  wire \r_first[3]_i_1__0_n_0 ;
  wire \r_first[4]_i_2__0_n_0 ;
  wire [4:0]r_first_reg;
  wire \r_last[4]_i_2__0_n_0 ;
  wire [4:0]r_last_reg;
  wire \r_last_reg[0]_0 ;
  wire r_mid111_out;
  wire \r_mid[4]_i_1_n_0 ;
  wire \r_mid[4]_i_3__0_n_0 ;
  wire \r_mid[4]_i_4__0_n_0 ;
  wire \r_mid_reg_n_0_[0] ;
  wire \r_mid_reg_n_0_[1] ;
  wire \r_mid_reg_n_0_[2] ;
  wire \r_mid_reg_n_0_[3] ;
  wire \r_mid_reg_n_0_[4] ;
  wire r_stb;
  wire r_stb0;
  wire r_stb_i_1_n_0;
  wire r_stb_i_2_n_0;
  wire r_stb_i_3_n_0;
  wire r_wb_stb;
  wire s_axi_aclk;
  wire [25:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire [1:0]s_axi_rresp;
  wire w_wb_stb;
  wire wb_outstanding;
  wire [4:0]wb_outstanding__0;
  wire [4:1]wb_outstanding_reg;
  wire \wb_outstanding_reg_n_0_[0] ;
  wire wb_pending;
  wire wb_pending0;
  wire wb_pending_i_3__0_n_0;
  wire wb_pending_i_4__0_n_0;
  wire [1:0]NLW_dfifo_reg_0_15_0_5_DOD_UNCONNECTED;
  wire [1:0]NLW_dfifo_reg_0_15_12_17_DOD_UNCONNECTED;
  wire [1:0]NLW_dfifo_reg_0_15_18_23_DOD_UNCONNECTED;
  wire [1:0]NLW_dfifo_reg_0_15_24_29_DOD_UNCONNECTED;
  wire NLW_dfifo_reg_0_15_30_31_SPO_UNCONNECTED;
  wire NLW_dfifo_reg_0_15_30_31__0_SPO_UNCONNECTED;
  wire [1:0]NLW_dfifo_reg_0_15_6_11_DOD_UNCONNECTED;

  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "embsys_axlite2wbsp_0_0/U0/axlite2wbsp/AXI_RD.axi_read_decoder/dfifo_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "5" *) 
  RAM32M dfifo_reg_0_15_0_5
       (.ADDRA({1'b0,r_last_reg[3:0]}),
        .ADDRB({1'b0,r_last_reg[3:0]}),
        .ADDRC({1'b0,r_last_reg[3:0]}),
        .ADDRD({1'b0,\r_mid_reg_n_0_[3] ,\r_mid_reg_n_0_[2] ,\r_mid_reg_n_0_[1] ,\r_mid_reg_n_0_[0] }),
        .DIA(m_wb_dat_r[1:0]),
        .DIB(m_wb_dat_r[3:2]),
        .DIC(m_wb_dat_r[5:4]),
        .DID({1'b0,1'b0}),
        .DOA(s_axi_rdata[1:0]),
        .DOB(s_axi_rdata[3:2]),
        .DOC(s_axi_rdata[5:4]),
        .DOD(NLW_dfifo_reg_0_15_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(s_axi_aclk),
        .WE(dfifo_reg_0_15_30_31_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "embsys_axlite2wbsp_0_0/U0/axlite2wbsp/AXI_RD.axi_read_decoder/dfifo_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "17" *) 
  RAM32M dfifo_reg_0_15_12_17
       (.ADDRA({1'b0,r_last_reg[3:0]}),
        .ADDRB({1'b0,r_last_reg[3:0]}),
        .ADDRC({1'b0,r_last_reg[3:0]}),
        .ADDRD({1'b0,\r_mid_reg_n_0_[3] ,\r_mid_reg_n_0_[2] ,\r_mid_reg_n_0_[1] ,\r_mid_reg_n_0_[0] }),
        .DIA(m_wb_dat_r[13:12]),
        .DIB(m_wb_dat_r[15:14]),
        .DIC(m_wb_dat_r[17:16]),
        .DID({1'b0,1'b0}),
        .DOA(s_axi_rdata[13:12]),
        .DOB(s_axi_rdata[15:14]),
        .DOC(s_axi_rdata[17:16]),
        .DOD(NLW_dfifo_reg_0_15_12_17_DOD_UNCONNECTED[1:0]),
        .WCLK(s_axi_aclk),
        .WE(dfifo_reg_0_15_30_31_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "embsys_axlite2wbsp_0_0/U0/axlite2wbsp/AXI_RD.axi_read_decoder/dfifo_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "18" *) 
  (* ram_slice_end = "23" *) 
  RAM32M dfifo_reg_0_15_18_23
       (.ADDRA({1'b0,r_last_reg[3:0]}),
        .ADDRB({1'b0,r_last_reg[3:0]}),
        .ADDRC({1'b0,r_last_reg[3:0]}),
        .ADDRD({1'b0,\r_mid_reg_n_0_[3] ,\r_mid_reg_n_0_[2] ,\r_mid_reg_n_0_[1] ,\r_mid_reg_n_0_[0] }),
        .DIA(m_wb_dat_r[19:18]),
        .DIB(m_wb_dat_r[21:20]),
        .DIC(m_wb_dat_r[23:22]),
        .DID({1'b0,1'b0}),
        .DOA(s_axi_rdata[19:18]),
        .DOB(s_axi_rdata[21:20]),
        .DOC(s_axi_rdata[23:22]),
        .DOD(NLW_dfifo_reg_0_15_18_23_DOD_UNCONNECTED[1:0]),
        .WCLK(s_axi_aclk),
        .WE(dfifo_reg_0_15_30_31_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "embsys_axlite2wbsp_0_0/U0/axlite2wbsp/AXI_RD.axi_read_decoder/dfifo_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "24" *) 
  (* ram_slice_end = "29" *) 
  RAM32M dfifo_reg_0_15_24_29
       (.ADDRA({1'b0,r_last_reg[3:0]}),
        .ADDRB({1'b0,r_last_reg[3:0]}),
        .ADDRC({1'b0,r_last_reg[3:0]}),
        .ADDRD({1'b0,\r_mid_reg_n_0_[3] ,\r_mid_reg_n_0_[2] ,\r_mid_reg_n_0_[1] ,\r_mid_reg_n_0_[0] }),
        .DIA(m_wb_dat_r[25:24]),
        .DIB(m_wb_dat_r[27:26]),
        .DIC(m_wb_dat_r[29:28]),
        .DID({1'b0,1'b0}),
        .DOA(s_axi_rdata[25:24]),
        .DOB(s_axi_rdata[27:26]),
        .DOC(s_axi_rdata[29:28]),
        .DOD(NLW_dfifo_reg_0_15_24_29_DOD_UNCONNECTED[1:0]),
        .WCLK(s_axi_aclk),
        .WE(dfifo_reg_0_15_30_31_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "embsys_axlite2wbsp_0_0/U0/axlite2wbsp/AXI_RD.axi_read_decoder/dfifo_reg_0_15_30_31" *) 
  (* RTL_RAM_STYLE = "NONE" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "31" *) 
  RAM32X1D dfifo_reg_0_15_30_31
       (.A0(\r_mid_reg_n_0_[0] ),
        .A1(\r_mid_reg_n_0_[1] ),
        .A2(\r_mid_reg_n_0_[2] ),
        .A3(\r_mid_reg_n_0_[3] ),
        .A4(1'b0),
        .D(m_wb_dat_r[30]),
        .DPO(s_axi_rdata[30]),
        .DPRA0(r_last_reg[0]),
        .DPRA1(r_last_reg[1]),
        .DPRA2(r_last_reg[2]),
        .DPRA3(r_last_reg[3]),
        .DPRA4(1'b0),
        .SPO(NLW_dfifo_reg_0_15_30_31_SPO_UNCONNECTED),
        .WCLK(s_axi_aclk),
        .WE(dfifo_reg_0_15_30_31_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "embsys_axlite2wbsp_0_0/U0/axlite2wbsp/AXI_RD.axi_read_decoder/dfifo_reg_0_15_30_31" *) 
  (* RTL_RAM_STYLE = "NONE" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "31" *) 
  RAM32X1D dfifo_reg_0_15_30_31__0
       (.A0(\r_mid_reg_n_0_[0] ),
        .A1(\r_mid_reg_n_0_[1] ),
        .A2(\r_mid_reg_n_0_[2] ),
        .A3(\r_mid_reg_n_0_[3] ),
        .A4(1'b0),
        .D(m_wb_dat_r[31]),
        .DPO(s_axi_rdata[31]),
        .DPRA0(r_last_reg[0]),
        .DPRA1(r_last_reg[1]),
        .DPRA2(r_last_reg[2]),
        .DPRA3(r_last_reg[3]),
        .DPRA4(1'b0),
        .SPO(NLW_dfifo_reg_0_15_30_31__0_SPO_UNCONNECTED),
        .WCLK(s_axi_aclk),
        .WE(dfifo_reg_0_15_30_31_i_1_n_0));
  LUT5 #(
    .INIT(32'hE0E0E000)) 
    dfifo_reg_0_15_30_31_i_1
       (.I0(m_wb_ack),
        .I1(m_wb_err),
        .I2(r_a_owner),
        .I3(wb_pending),
        .I4(r_wb_stb),
        .O(dfifo_reg_0_15_30_31_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "embsys_axlite2wbsp_0_0/U0/axlite2wbsp/AXI_RD.axi_read_decoder/dfifo_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "11" *) 
  RAM32M dfifo_reg_0_15_6_11
       (.ADDRA({1'b0,r_last_reg[3:0]}),
        .ADDRB({1'b0,r_last_reg[3:0]}),
        .ADDRC({1'b0,r_last_reg[3:0]}),
        .ADDRD({1'b0,\r_mid_reg_n_0_[3] ,\r_mid_reg_n_0_[2] ,\r_mid_reg_n_0_[1] ,\r_mid_reg_n_0_[0] }),
        .DIA(m_wb_dat_r[7:6]),
        .DIB(m_wb_dat_r[9:8]),
        .DIC(m_wb_dat_r[11:10]),
        .DID({1'b0,1'b0}),
        .DOA(s_axi_rdata[7:6]),
        .DOB(s_axi_rdata[9:8]),
        .DOC(s_axi_rdata[11:10]),
        .DOD(NLW_dfifo_reg_0_15_6_11_DOD_UNCONNECTED[1:0]),
        .WCLK(s_axi_aclk),
        .WE(dfifo_reg_0_15_30_31_i_1_n_0));
  LUT4 #(
    .INIT(16'h8880)) 
    \err_loc[4]_i_1__0 
       (.I0(r_a_owner),
        .I1(m_wb_err),
        .I2(r_wb_stb),
        .I3(wb_pending),
        .O(o_wb_stb2));
  FDRE \err_loc_reg[0] 
       (.C(s_axi_aclk),
        .CE(o_wb_stb2),
        .D(\r_mid_reg_n_0_[0] ),
        .Q(\err_loc_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \err_loc_reg[1] 
       (.C(s_axi_aclk),
        .CE(o_wb_stb2),
        .D(\r_mid_reg_n_0_[1] ),
        .Q(\err_loc_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \err_loc_reg[2] 
       (.C(s_axi_aclk),
        .CE(o_wb_stb2),
        .D(\r_mid_reg_n_0_[2] ),
        .Q(\err_loc_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \err_loc_reg[3] 
       (.C(s_axi_aclk),
        .CE(o_wb_stb2),
        .D(\r_mid_reg_n_0_[3] ),
        .Q(\err_loc_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \err_loc_reg[4] 
       (.C(s_axi_aclk),
        .CE(o_wb_stb2),
        .D(\r_mid_reg_n_0_[4] ),
        .Q(\err_loc_reg_n_0_[4] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hEFFE000000000000)) 
    err_state_i_1__0
       (.I0(err_state_i_2__0_n_0),
        .I1(err_state_i_3__0_n_0),
        .I2(r_last_reg[1]),
        .I3(r_first_reg[1]),
        .I4(o_axi_arready_i_4_n_0),
        .I5(s_axi_aresetn),
        .O(err_state_i_1__0_n_0));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    err_state_i_2__0
       (.I0(r_first_reg[4]),
        .I1(r_last_reg[4]),
        .I2(r_first_reg[0]),
        .I3(r_last_reg[0]),
        .I4(r_first_reg[3]),
        .I5(r_last_reg[3]),
        .O(err_state_i_2__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h6)) 
    err_state_i_3__0
       (.I0(r_first_reg[2]),
        .I1(r_last_reg[2]),
        .O(err_state_i_3__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    err_state_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(err_state_i_1__0_n_0),
        .Q(err_state),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hC07F7F7F00404040)) 
    fifo_full_i_1__0
       (.I0(o_axi_arready_i_2_n_0),
        .I1(s_axi_arvalid),
        .I2(o_axi_arready_reg_0),
        .I3(o_axi_rvalid_reg_0),
        .I4(s_axi_rready),
        .I5(fifo_full),
        .O(fifo_full_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    fifo_full_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(fifo_full_i_1__0_n_0),
        .Q(fifo_full),
        .R(\r_last_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_wb_adr[0]_INST_0 
       (.I0(\o_wb_addr_reg_n_0_[0] ),
        .I1(r_a_owner),
        .I2(Q[0]),
        .O(m_wb_adr[0]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_wb_adr[10]_INST_0 
       (.I0(\o_wb_addr_reg_n_0_[10] ),
        .I1(r_a_owner),
        .I2(Q[10]),
        .O(m_wb_adr[10]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_wb_adr[11]_INST_0 
       (.I0(\o_wb_addr_reg_n_0_[11] ),
        .I1(r_a_owner),
        .I2(Q[11]),
        .O(m_wb_adr[11]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_wb_adr[12]_INST_0 
       (.I0(\o_wb_addr_reg_n_0_[12] ),
        .I1(r_a_owner),
        .I2(Q[12]),
        .O(m_wb_adr[12]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_wb_adr[13]_INST_0 
       (.I0(\o_wb_addr_reg_n_0_[13] ),
        .I1(r_a_owner),
        .I2(Q[13]),
        .O(m_wb_adr[13]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_wb_adr[14]_INST_0 
       (.I0(\o_wb_addr_reg_n_0_[14] ),
        .I1(r_a_owner),
        .I2(Q[14]),
        .O(m_wb_adr[14]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_wb_adr[15]_INST_0 
       (.I0(\o_wb_addr_reg_n_0_[15] ),
        .I1(r_a_owner),
        .I2(Q[15]),
        .O(m_wb_adr[15]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_wb_adr[16]_INST_0 
       (.I0(\o_wb_addr_reg_n_0_[16] ),
        .I1(r_a_owner),
        .I2(Q[16]),
        .O(m_wb_adr[16]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_wb_adr[17]_INST_0 
       (.I0(\o_wb_addr_reg_n_0_[17] ),
        .I1(r_a_owner),
        .I2(Q[17]),
        .O(m_wb_adr[17]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_wb_adr[18]_INST_0 
       (.I0(\o_wb_addr_reg_n_0_[18] ),
        .I1(r_a_owner),
        .I2(Q[18]),
        .O(m_wb_adr[18]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_wb_adr[19]_INST_0 
       (.I0(\o_wb_addr_reg_n_0_[19] ),
        .I1(r_a_owner),
        .I2(Q[19]),
        .O(m_wb_adr[19]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_wb_adr[1]_INST_0 
       (.I0(\o_wb_addr_reg_n_0_[1] ),
        .I1(r_a_owner),
        .I2(Q[1]),
        .O(m_wb_adr[1]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_wb_adr[20]_INST_0 
       (.I0(\o_wb_addr_reg_n_0_[20] ),
        .I1(r_a_owner),
        .I2(Q[20]),
        .O(m_wb_adr[20]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_wb_adr[21]_INST_0 
       (.I0(\o_wb_addr_reg_n_0_[21] ),
        .I1(r_a_owner),
        .I2(Q[21]),
        .O(m_wb_adr[21]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_wb_adr[22]_INST_0 
       (.I0(\o_wb_addr_reg_n_0_[22] ),
        .I1(r_a_owner),
        .I2(Q[22]),
        .O(m_wb_adr[22]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_wb_adr[23]_INST_0 
       (.I0(\o_wb_addr_reg_n_0_[23] ),
        .I1(r_a_owner),
        .I2(Q[23]),
        .O(m_wb_adr[23]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_wb_adr[24]_INST_0 
       (.I0(\o_wb_addr_reg_n_0_[24] ),
        .I1(r_a_owner),
        .I2(Q[24]),
        .O(m_wb_adr[24]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_wb_adr[25]_INST_0 
       (.I0(\o_wb_addr_reg_n_0_[25] ),
        .I1(r_a_owner),
        .I2(Q[25]),
        .O(m_wb_adr[25]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_wb_adr[2]_INST_0 
       (.I0(\o_wb_addr_reg_n_0_[2] ),
        .I1(r_a_owner),
        .I2(Q[2]),
        .O(m_wb_adr[2]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_wb_adr[3]_INST_0 
       (.I0(\o_wb_addr_reg_n_0_[3] ),
        .I1(r_a_owner),
        .I2(Q[3]),
        .O(m_wb_adr[3]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_wb_adr[4]_INST_0 
       (.I0(\o_wb_addr_reg_n_0_[4] ),
        .I1(r_a_owner),
        .I2(Q[4]),
        .O(m_wb_adr[4]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_wb_adr[5]_INST_0 
       (.I0(\o_wb_addr_reg_n_0_[5] ),
        .I1(r_a_owner),
        .I2(Q[5]),
        .O(m_wb_adr[5]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_wb_adr[6]_INST_0 
       (.I0(\o_wb_addr_reg_n_0_[6] ),
        .I1(r_a_owner),
        .I2(Q[6]),
        .O(m_wb_adr[6]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_wb_adr[7]_INST_0 
       (.I0(\o_wb_addr_reg_n_0_[7] ),
        .I1(r_a_owner),
        .I2(Q[7]),
        .O(m_wb_adr[7]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_wb_adr[8]_INST_0 
       (.I0(\o_wb_addr_reg_n_0_[8] ),
        .I1(r_a_owner),
        .I2(Q[8]),
        .O(m_wb_adr[8]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_wb_adr[9]_INST_0 
       (.I0(\o_wb_addr_reg_n_0_[9] ),
        .I1(r_a_owner),
        .I2(Q[9]),
        .O(m_wb_adr[9]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    m_wb_stb_INST_0
       (.I0(r_wb_stb),
        .I1(r_a_owner),
        .I2(w_wb_stb),
        .O(m_wb_stb));
  LUT6 #(
    .INIT(64'h000000000000F0FB)) 
    o_axi_arready_i_1
       (.I0(o_axi_arready_i_2_n_0),
        .I1(p_0_in__0_0),
        .I2(p_0_in__0__0),
        .I3(fifo_full),
        .I4(o_axi_arready_i_3_n_0),
        .I5(o_axi_arready_i_4_n_0),
        .O(o_axi_arready4_out));
  LUT6 #(
    .INIT(64'hFFFFFFFFF69F9FF9)) 
    o_axi_arready_i_2
       (.I0(r_last_reg[4]),
        .I1(r_first_reg[4]),
        .I2(r_last_reg[3]),
        .I3(r_first_reg[3]),
        .I4(o_axi_arready_i_5_n_0),
        .I5(o_axi_arready_i_6_n_0),
        .O(o_axi_arready_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hB000B0B0)) 
    o_axi_arready_i_3
       (.I0(m_wb_stall),
        .I1(r_a_owner),
        .I2(r_wb_stb),
        .I3(s_axi_arvalid),
        .I4(o_axi_arready_reg_0),
        .O(o_axi_arready_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hEAEAEAAA)) 
    o_axi_arready_i_4
       (.I0(err_state),
        .I1(r_a_owner),
        .I2(m_wb_err),
        .I3(r_wb_stb),
        .I4(wb_pending),
        .O(o_axi_arready_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h80)) 
    o_axi_arready_i_5
       (.I0(r_first_reg[2]),
        .I1(r_first_reg[1]),
        .I2(r_first_reg[0]),
        .O(o_axi_arready_i_5_n_0));
  LUT6 #(
    .INIT(64'hFB7DEFFFEFFFFB7D)) 
    o_axi_arready_i_6
       (.I0(r_last_reg[0]),
        .I1(r_last_reg[1]),
        .I2(r_first_reg[1]),
        .I3(r_first_reg[0]),
        .I4(r_last_reg[2]),
        .I5(r_first_reg[2]),
        .O(o_axi_arready_i_6_n_0));
  FDSE #(
    .INIT(1'b1)) 
    o_axi_arready_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(o_axi_arready4_out),
        .Q(o_axi_arready_reg_0),
        .S(\r_last_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hC4C4C4C004000400)) 
    \o_axi_rresp[0]_i_1 
       (.I0(\o_axi_rresp[0]_i_2_n_0 ),
        .I1(s_axi_aresetn),
        .I2(\o_axi_rresp[0]_i_3_n_0 ),
        .I3(s_axi_rresp[1]),
        .I4(\o_axi_rresp[0]_i_4_n_0 ),
        .I5(s_axi_rresp[0]),
        .O(\o_axi_rresp[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \o_axi_rresp[0]_i_2 
       (.I0(\o_axi_rresp[1]_i_5_n_0 ),
        .I1(err_state),
        .O(\o_axi_rresp[0]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \o_axi_rresp[0]_i_3 
       (.I0(o_axi_rvalid_reg_0),
        .I1(s_axi_rready),
        .O(\o_axi_rresp[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hBFBFBFFF)) 
    \o_axi_rresp[0]_i_4 
       (.I0(err_state),
        .I1(r_a_owner),
        .I2(m_wb_err),
        .I3(r_wb_stb),
        .I4(wb_pending),
        .O(\o_axi_rresp[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF2FF000000000000)) 
    \o_axi_rresp[1]_i_1 
       (.I0(o_axi_rvalid_reg_0),
        .I1(s_axi_rready),
        .I2(err_state),
        .I3(\o_axi_rresp[1]_i_2_n_0 ),
        .I4(s_axi_aresetn),
        .I5(\o_axi_rresp[1]_i_3_n_0 ),
        .O(\o_axi_rresp[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF7BFFDEFEFF7BFFD)) 
    \o_axi_rresp[1]_i_10 
       (.I0(\err_loc_reg_n_0_[0] ),
        .I1(\err_loc_reg_n_0_[2] ),
        .I2(r_last_reg[0]),
        .I3(r_last_reg[1]),
        .I4(r_last_reg[2]),
        .I5(\err_loc_reg_n_0_[1] ),
        .O(\o_axi_rresp[1]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h1FFF)) 
    \o_axi_rresp[1]_i_2 
       (.I0(wb_pending),
        .I1(r_wb_stb),
        .I2(m_wb_err),
        .I3(r_a_owner),
        .O(\o_axi_rresp[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF1F10F000101)) 
    \o_axi_rresp[1]_i_3 
       (.I0(\o_axi_rresp[1]_i_4_n_0 ),
        .I1(\o_axi_rresp[1]_i_2_n_0 ),
        .I2(\o_axi_rresp[0]_i_3_n_0 ),
        .I3(\o_axi_rresp[1]_i_5_n_0 ),
        .I4(err_state),
        .I5(s_axi_rresp[1]),
        .O(\o_axi_rresp[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFEF00EFFFEFFF)) 
    \o_axi_rresp[1]_i_4 
       (.I0(o_axi_rvalid_i_5_n_0),
        .I1(\o_axi_rresp[1]_i_6_n_0 ),
        .I2(\o_axi_rresp[1]_i_7_n_0 ),
        .I3(o_axi_rvalid_reg_0),
        .I4(\o_axi_rresp[1]_i_8_n_0 ),
        .I5(\o_axi_rresp[1]_i_9_n_0 ),
        .O(\o_axi_rresp[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0006090009000009)) 
    \o_axi_rresp[1]_i_5 
       (.I0(r_last_reg[4]),
        .I1(\err_loc_reg_n_0_[4] ),
        .I2(\o_axi_rresp[1]_i_10_n_0 ),
        .I3(\err_loc_reg_n_0_[3] ),
        .I4(o_axi_rvalid_i_6_n_0),
        .I5(r_last_reg[3]),
        .O(\o_axi_rresp[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h80007FFF7FFF8000)) 
    \o_axi_rresp[1]_i_6 
       (.I0(r_last_reg[3]),
        .I1(r_last_reg[2]),
        .I2(r_last_reg[1]),
        .I3(r_last_reg[0]),
        .I4(r_last_reg[4]),
        .I5(\r_mid_reg_n_0_[4] ),
        .O(\o_axi_rresp[1]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h6AAA9555)) 
    \o_axi_rresp[1]_i_7 
       (.I0(\r_mid_reg_n_0_[3] ),
        .I1(r_last_reg[2]),
        .I2(r_last_reg[1]),
        .I3(r_last_reg[0]),
        .I4(r_last_reg[3]),
        .O(\o_axi_rresp[1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \o_axi_rresp[1]_i_8 
       (.I0(r_last_reg[0]),
        .I1(\r_mid_reg_n_0_[0] ),
        .I2(\r_mid_reg_n_0_[1] ),
        .I3(r_last_reg[1]),
        .I4(\r_mid_reg_n_0_[4] ),
        .I5(r_last_reg[4]),
        .O(\o_axi_rresp[1]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h9009)) 
    \o_axi_rresp[1]_i_9 
       (.I0(r_last_reg[3]),
        .I1(\r_mid_reg_n_0_[3] ),
        .I2(r_last_reg[2]),
        .I3(\r_mid_reg_n_0_[2] ),
        .O(\o_axi_rresp[1]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \o_axi_rresp_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\o_axi_rresp[0]_i_1_n_0 ),
        .Q(s_axi_rresp[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \o_axi_rresp_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\o_axi_rresp[1]_i_1_n_0 ),
        .Q(s_axi_rresp[1]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFFE200FF00)) 
    o_axi_rvalid_i_1
       (.I0(o_axi_rvalid_i_2_n_0),
        .I1(err_state),
        .I2(o_axi_rvalid_i_3_n_0),
        .I3(o_axi_rvalid_reg_0),
        .I4(s_axi_rready),
        .I5(r_mid111_out),
        .O(o_axi_rvalid_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFBEBEFFEBFFFFBE)) 
    o_axi_rvalid_i_2
       (.I0(o_axi_rvalid_i_5_n_0),
        .I1(r_last_reg[4]),
        .I2(\r_mid_reg_n_0_[4] ),
        .I3(r_last_reg[3]),
        .I4(o_axi_rvalid_i_6_n_0),
        .I5(\r_mid_reg_n_0_[3] ),
        .O(o_axi_rvalid_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFE77DFFFF)) 
    o_axi_rvalid_i_3
       (.I0(o_axi_rvalid_i_7_n_0),
        .I1(r_first_reg[3]),
        .I2(r_last_reg[3]),
        .I3(o_axi_rvalid_i_6_n_0),
        .I4(o_axi_rvalid_i_8_n_0),
        .I5(o_axi_rvalid_i_9_n_0),
        .O(o_axi_rvalid_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hE0E0E000)) 
    o_axi_rvalid_i_4
       (.I0(m_wb_err),
        .I1(m_wb_ack),
        .I2(r_a_owner),
        .I3(r_wb_stb),
        .I4(wb_pending),
        .O(r_mid111_out));
  LUT6 #(
    .INIT(64'hE7FFFFE7FDBFBFFD)) 
    o_axi_rvalid_i_5
       (.I0(\r_mid_reg_n_0_[0] ),
        .I1(r_last_reg[1]),
        .I2(r_last_reg[0]),
        .I3(r_last_reg[2]),
        .I4(\r_mid_reg_n_0_[2] ),
        .I5(\r_mid_reg_n_0_[1] ),
        .O(o_axi_rvalid_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h80)) 
    o_axi_rvalid_i_6
       (.I0(r_last_reg[2]),
        .I1(r_last_reg[1]),
        .I2(r_last_reg[0]),
        .O(o_axi_rvalid_i_6_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    o_axi_rvalid_i_7
       (.I0(r_last_reg[4]),
        .I1(r_first_reg[4]),
        .O(o_axi_rvalid_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h6)) 
    o_axi_rvalid_i_8
       (.I0(r_first_reg[0]),
        .I1(r_last_reg[0]),
        .O(o_axi_rvalid_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hEB7D7DBE)) 
    o_axi_rvalid_i_9
       (.I0(r_first_reg[1]),
        .I1(r_first_reg[2]),
        .I2(r_last_reg[2]),
        .I3(r_last_reg[0]),
        .I4(r_last_reg[1]),
        .O(o_axi_rvalid_i_9_n_0));
  FDRE #(
    .INIT(1'b0)) 
    o_axi_rvalid_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(o_axi_rvalid_i_1_n_0),
        .Q(o_axi_rvalid_reg_0),
        .R(\r_last_reg[0]_0 ));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \o_wb_addr[0]_i_1 
       (.I0(\r_addr_reg_n_0_[0] ),
        .I1(r_stb),
        .I2(r_a_owner),
        .I3(m_wb_stall),
        .I4(s_axi_araddr[0]),
        .O(\o_wb_addr[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \o_wb_addr[10]_i_1 
       (.I0(\r_addr_reg_n_0_[10] ),
        .I1(r_stb),
        .I2(r_a_owner),
        .I3(m_wb_stall),
        .I4(s_axi_araddr[10]),
        .O(\o_wb_addr[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \o_wb_addr[11]_i_1 
       (.I0(\r_addr_reg_n_0_[11] ),
        .I1(r_stb),
        .I2(r_a_owner),
        .I3(m_wb_stall),
        .I4(s_axi_araddr[11]),
        .O(\o_wb_addr[11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \o_wb_addr[12]_i_1 
       (.I0(\r_addr_reg_n_0_[12] ),
        .I1(r_stb),
        .I2(r_a_owner),
        .I3(m_wb_stall),
        .I4(s_axi_araddr[12]),
        .O(\o_wb_addr[12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \o_wb_addr[13]_i_1 
       (.I0(\r_addr_reg_n_0_[13] ),
        .I1(r_stb),
        .I2(r_a_owner),
        .I3(m_wb_stall),
        .I4(s_axi_araddr[13]),
        .O(\o_wb_addr[13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \o_wb_addr[14]_i_1 
       (.I0(\r_addr_reg_n_0_[14] ),
        .I1(r_stb),
        .I2(r_a_owner),
        .I3(m_wb_stall),
        .I4(s_axi_araddr[14]),
        .O(\o_wb_addr[14]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \o_wb_addr[15]_i_1 
       (.I0(\r_addr_reg_n_0_[15] ),
        .I1(r_stb),
        .I2(r_a_owner),
        .I3(m_wb_stall),
        .I4(s_axi_araddr[15]),
        .O(\o_wb_addr[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \o_wb_addr[16]_i_1 
       (.I0(\r_addr_reg_n_0_[16] ),
        .I1(r_stb),
        .I2(r_a_owner),
        .I3(m_wb_stall),
        .I4(s_axi_araddr[16]),
        .O(\o_wb_addr[16]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \o_wb_addr[17]_i_1 
       (.I0(\r_addr_reg_n_0_[17] ),
        .I1(r_stb),
        .I2(r_a_owner),
        .I3(m_wb_stall),
        .I4(s_axi_araddr[17]),
        .O(\o_wb_addr[17]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \o_wb_addr[18]_i_1 
       (.I0(\r_addr_reg_n_0_[18] ),
        .I1(r_stb),
        .I2(r_a_owner),
        .I3(m_wb_stall),
        .I4(s_axi_araddr[18]),
        .O(\o_wb_addr[18]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \o_wb_addr[19]_i_1 
       (.I0(\r_addr_reg_n_0_[19] ),
        .I1(r_stb),
        .I2(r_a_owner),
        .I3(m_wb_stall),
        .I4(s_axi_araddr[19]),
        .O(\o_wb_addr[19]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \o_wb_addr[1]_i_1 
       (.I0(\r_addr_reg_n_0_[1] ),
        .I1(r_stb),
        .I2(r_a_owner),
        .I3(m_wb_stall),
        .I4(s_axi_araddr[1]),
        .O(\o_wb_addr[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \o_wb_addr[20]_i_1 
       (.I0(\r_addr_reg_n_0_[20] ),
        .I1(r_stb),
        .I2(r_a_owner),
        .I3(m_wb_stall),
        .I4(s_axi_araddr[20]),
        .O(\o_wb_addr[20]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \o_wb_addr[21]_i_1 
       (.I0(\r_addr_reg_n_0_[21] ),
        .I1(r_stb),
        .I2(r_a_owner),
        .I3(m_wb_stall),
        .I4(s_axi_araddr[21]),
        .O(\o_wb_addr[21]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \o_wb_addr[22]_i_1 
       (.I0(\r_addr_reg_n_0_[22] ),
        .I1(r_stb),
        .I2(r_a_owner),
        .I3(m_wb_stall),
        .I4(s_axi_araddr[22]),
        .O(\o_wb_addr[22]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \o_wb_addr[23]_i_1 
       (.I0(\r_addr_reg_n_0_[23] ),
        .I1(r_stb),
        .I2(r_a_owner),
        .I3(m_wb_stall),
        .I4(s_axi_araddr[23]),
        .O(\o_wb_addr[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \o_wb_addr[24]_i_1 
       (.I0(\r_addr_reg_n_0_[24] ),
        .I1(r_stb),
        .I2(r_a_owner),
        .I3(m_wb_stall),
        .I4(s_axi_araddr[24]),
        .O(\o_wb_addr[24]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0E00CECC)) 
    \o_wb_addr[25]_i_1 
       (.I0(r_stb),
        .I1(o_axi_arready_reg_0),
        .I2(m_wb_stall),
        .I3(r_a_owner),
        .I4(r_wb_stb),
        .O(\o_wb_addr[25]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \o_wb_addr[25]_i_2 
       (.I0(\r_addr_reg_n_0_[25] ),
        .I1(r_stb),
        .I2(r_a_owner),
        .I3(m_wb_stall),
        .I4(s_axi_araddr[25]),
        .O(\o_wb_addr[25]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \o_wb_addr[2]_i_1 
       (.I0(\r_addr_reg_n_0_[2] ),
        .I1(r_stb),
        .I2(r_a_owner),
        .I3(m_wb_stall),
        .I4(s_axi_araddr[2]),
        .O(\o_wb_addr[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \o_wb_addr[3]_i_1 
       (.I0(\r_addr_reg_n_0_[3] ),
        .I1(r_stb),
        .I2(r_a_owner),
        .I3(m_wb_stall),
        .I4(s_axi_araddr[3]),
        .O(\o_wb_addr[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \o_wb_addr[4]_i_1 
       (.I0(\r_addr_reg_n_0_[4] ),
        .I1(r_stb),
        .I2(r_a_owner),
        .I3(m_wb_stall),
        .I4(s_axi_araddr[4]),
        .O(\o_wb_addr[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \o_wb_addr[5]_i_1 
       (.I0(\r_addr_reg_n_0_[5] ),
        .I1(r_stb),
        .I2(r_a_owner),
        .I3(m_wb_stall),
        .I4(s_axi_araddr[5]),
        .O(\o_wb_addr[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \o_wb_addr[6]_i_1 
       (.I0(\r_addr_reg_n_0_[6] ),
        .I1(r_stb),
        .I2(r_a_owner),
        .I3(m_wb_stall),
        .I4(s_axi_araddr[6]),
        .O(\o_wb_addr[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \o_wb_addr[7]_i_1 
       (.I0(\r_addr_reg_n_0_[7] ),
        .I1(r_stb),
        .I2(r_a_owner),
        .I3(m_wb_stall),
        .I4(s_axi_araddr[7]),
        .O(\o_wb_addr[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \o_wb_addr[8]_i_1 
       (.I0(\r_addr_reg_n_0_[8] ),
        .I1(r_stb),
        .I2(r_a_owner),
        .I3(m_wb_stall),
        .I4(s_axi_araddr[8]),
        .O(\o_wb_addr[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \o_wb_addr[9]_i_1 
       (.I0(\r_addr_reg_n_0_[9] ),
        .I1(r_stb),
        .I2(r_a_owner),
        .I3(m_wb_stall),
        .I4(s_axi_araddr[9]),
        .O(\o_wb_addr[9]_i_1_n_0 ));
  FDRE \o_wb_addr_reg[0] 
       (.C(s_axi_aclk),
        .CE(\o_wb_addr[25]_i_1_n_0 ),
        .D(\o_wb_addr[0]_i_1_n_0 ),
        .Q(\o_wb_addr_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \o_wb_addr_reg[10] 
       (.C(s_axi_aclk),
        .CE(\o_wb_addr[25]_i_1_n_0 ),
        .D(\o_wb_addr[10]_i_1_n_0 ),
        .Q(\o_wb_addr_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \o_wb_addr_reg[11] 
       (.C(s_axi_aclk),
        .CE(\o_wb_addr[25]_i_1_n_0 ),
        .D(\o_wb_addr[11]_i_1_n_0 ),
        .Q(\o_wb_addr_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \o_wb_addr_reg[12] 
       (.C(s_axi_aclk),
        .CE(\o_wb_addr[25]_i_1_n_0 ),
        .D(\o_wb_addr[12]_i_1_n_0 ),
        .Q(\o_wb_addr_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \o_wb_addr_reg[13] 
       (.C(s_axi_aclk),
        .CE(\o_wb_addr[25]_i_1_n_0 ),
        .D(\o_wb_addr[13]_i_1_n_0 ),
        .Q(\o_wb_addr_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \o_wb_addr_reg[14] 
       (.C(s_axi_aclk),
        .CE(\o_wb_addr[25]_i_1_n_0 ),
        .D(\o_wb_addr[14]_i_1_n_0 ),
        .Q(\o_wb_addr_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \o_wb_addr_reg[15] 
       (.C(s_axi_aclk),
        .CE(\o_wb_addr[25]_i_1_n_0 ),
        .D(\o_wb_addr[15]_i_1_n_0 ),
        .Q(\o_wb_addr_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \o_wb_addr_reg[16] 
       (.C(s_axi_aclk),
        .CE(\o_wb_addr[25]_i_1_n_0 ),
        .D(\o_wb_addr[16]_i_1_n_0 ),
        .Q(\o_wb_addr_reg_n_0_[16] ),
        .R(1'b0));
  FDRE \o_wb_addr_reg[17] 
       (.C(s_axi_aclk),
        .CE(\o_wb_addr[25]_i_1_n_0 ),
        .D(\o_wb_addr[17]_i_1_n_0 ),
        .Q(\o_wb_addr_reg_n_0_[17] ),
        .R(1'b0));
  FDRE \o_wb_addr_reg[18] 
       (.C(s_axi_aclk),
        .CE(\o_wb_addr[25]_i_1_n_0 ),
        .D(\o_wb_addr[18]_i_1_n_0 ),
        .Q(\o_wb_addr_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \o_wb_addr_reg[19] 
       (.C(s_axi_aclk),
        .CE(\o_wb_addr[25]_i_1_n_0 ),
        .D(\o_wb_addr[19]_i_1_n_0 ),
        .Q(\o_wb_addr_reg_n_0_[19] ),
        .R(1'b0));
  FDRE \o_wb_addr_reg[1] 
       (.C(s_axi_aclk),
        .CE(\o_wb_addr[25]_i_1_n_0 ),
        .D(\o_wb_addr[1]_i_1_n_0 ),
        .Q(\o_wb_addr_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \o_wb_addr_reg[20] 
       (.C(s_axi_aclk),
        .CE(\o_wb_addr[25]_i_1_n_0 ),
        .D(\o_wb_addr[20]_i_1_n_0 ),
        .Q(\o_wb_addr_reg_n_0_[20] ),
        .R(1'b0));
  FDRE \o_wb_addr_reg[21] 
       (.C(s_axi_aclk),
        .CE(\o_wb_addr[25]_i_1_n_0 ),
        .D(\o_wb_addr[21]_i_1_n_0 ),
        .Q(\o_wb_addr_reg_n_0_[21] ),
        .R(1'b0));
  FDRE \o_wb_addr_reg[22] 
       (.C(s_axi_aclk),
        .CE(\o_wb_addr[25]_i_1_n_0 ),
        .D(\o_wb_addr[22]_i_1_n_0 ),
        .Q(\o_wb_addr_reg_n_0_[22] ),
        .R(1'b0));
  FDRE \o_wb_addr_reg[23] 
       (.C(s_axi_aclk),
        .CE(\o_wb_addr[25]_i_1_n_0 ),
        .D(\o_wb_addr[23]_i_1_n_0 ),
        .Q(\o_wb_addr_reg_n_0_[23] ),
        .R(1'b0));
  FDRE \o_wb_addr_reg[24] 
       (.C(s_axi_aclk),
        .CE(\o_wb_addr[25]_i_1_n_0 ),
        .D(\o_wb_addr[24]_i_1_n_0 ),
        .Q(\o_wb_addr_reg_n_0_[24] ),
        .R(1'b0));
  FDRE \o_wb_addr_reg[25] 
       (.C(s_axi_aclk),
        .CE(\o_wb_addr[25]_i_1_n_0 ),
        .D(\o_wb_addr[25]_i_2_n_0 ),
        .Q(\o_wb_addr_reg_n_0_[25] ),
        .R(1'b0));
  FDRE \o_wb_addr_reg[2] 
       (.C(s_axi_aclk),
        .CE(\o_wb_addr[25]_i_1_n_0 ),
        .D(\o_wb_addr[2]_i_1_n_0 ),
        .Q(\o_wb_addr_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \o_wb_addr_reg[3] 
       (.C(s_axi_aclk),
        .CE(\o_wb_addr[25]_i_1_n_0 ),
        .D(\o_wb_addr[3]_i_1_n_0 ),
        .Q(\o_wb_addr_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \o_wb_addr_reg[4] 
       (.C(s_axi_aclk),
        .CE(\o_wb_addr[25]_i_1_n_0 ),
        .D(\o_wb_addr[4]_i_1_n_0 ),
        .Q(\o_wb_addr_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \o_wb_addr_reg[5] 
       (.C(s_axi_aclk),
        .CE(\o_wb_addr[25]_i_1_n_0 ),
        .D(\o_wb_addr[5]_i_1_n_0 ),
        .Q(\o_wb_addr_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \o_wb_addr_reg[6] 
       (.C(s_axi_aclk),
        .CE(\o_wb_addr[25]_i_1_n_0 ),
        .D(\o_wb_addr[6]_i_1_n_0 ),
        .Q(\o_wb_addr_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \o_wb_addr_reg[7] 
       (.C(s_axi_aclk),
        .CE(\o_wb_addr[25]_i_1_n_0 ),
        .D(\o_wb_addr[7]_i_1_n_0 ),
        .Q(\o_wb_addr_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \o_wb_addr_reg[8] 
       (.C(s_axi_aclk),
        .CE(\o_wb_addr[25]_i_1_n_0 ),
        .D(\o_wb_addr[8]_i_1_n_0 ),
        .Q(\o_wb_addr_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \o_wb_addr_reg[9] 
       (.C(s_axi_aclk),
        .CE(\o_wb_addr[25]_i_1_n_0 ),
        .D(\o_wb_addr[9]_i_1_n_0 ),
        .Q(\o_wb_addr_reg_n_0_[9] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000FFFFFFB0)) 
    o_wb_stb_i_1__0
       (.I0(m_wb_stall),
        .I1(r_a_owner),
        .I2(r_wb_stb),
        .I3(r_stb),
        .I4(p_0_in__0_0),
        .I5(r_stb_i_3_n_0),
        .O(o_wb_stb_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    o_wb_stb_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(o_wb_stb_i_1__0_n_0),
        .Q(r_wb_stb),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h80880000)) 
    \r_addr[25]_i_1__0 
       (.I0(s_axi_arvalid),
        .I1(o_axi_arready_reg_0),
        .I2(m_wb_stall),
        .I3(r_a_owner),
        .I4(r_wb_stb),
        .O(r_stb0));
  FDRE \r_addr_reg[0] 
       (.C(s_axi_aclk),
        .CE(r_stb0),
        .D(s_axi_araddr[0]),
        .Q(\r_addr_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \r_addr_reg[10] 
       (.C(s_axi_aclk),
        .CE(r_stb0),
        .D(s_axi_araddr[10]),
        .Q(\r_addr_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \r_addr_reg[11] 
       (.C(s_axi_aclk),
        .CE(r_stb0),
        .D(s_axi_araddr[11]),
        .Q(\r_addr_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \r_addr_reg[12] 
       (.C(s_axi_aclk),
        .CE(r_stb0),
        .D(s_axi_araddr[12]),
        .Q(\r_addr_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \r_addr_reg[13] 
       (.C(s_axi_aclk),
        .CE(r_stb0),
        .D(s_axi_araddr[13]),
        .Q(\r_addr_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \r_addr_reg[14] 
       (.C(s_axi_aclk),
        .CE(r_stb0),
        .D(s_axi_araddr[14]),
        .Q(\r_addr_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \r_addr_reg[15] 
       (.C(s_axi_aclk),
        .CE(r_stb0),
        .D(s_axi_araddr[15]),
        .Q(\r_addr_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \r_addr_reg[16] 
       (.C(s_axi_aclk),
        .CE(r_stb0),
        .D(s_axi_araddr[16]),
        .Q(\r_addr_reg_n_0_[16] ),
        .R(1'b0));
  FDRE \r_addr_reg[17] 
       (.C(s_axi_aclk),
        .CE(r_stb0),
        .D(s_axi_araddr[17]),
        .Q(\r_addr_reg_n_0_[17] ),
        .R(1'b0));
  FDRE \r_addr_reg[18] 
       (.C(s_axi_aclk),
        .CE(r_stb0),
        .D(s_axi_araddr[18]),
        .Q(\r_addr_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \r_addr_reg[19] 
       (.C(s_axi_aclk),
        .CE(r_stb0),
        .D(s_axi_araddr[19]),
        .Q(\r_addr_reg_n_0_[19] ),
        .R(1'b0));
  FDRE \r_addr_reg[1] 
       (.C(s_axi_aclk),
        .CE(r_stb0),
        .D(s_axi_araddr[1]),
        .Q(\r_addr_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \r_addr_reg[20] 
       (.C(s_axi_aclk),
        .CE(r_stb0),
        .D(s_axi_araddr[20]),
        .Q(\r_addr_reg_n_0_[20] ),
        .R(1'b0));
  FDRE \r_addr_reg[21] 
       (.C(s_axi_aclk),
        .CE(r_stb0),
        .D(s_axi_araddr[21]),
        .Q(\r_addr_reg_n_0_[21] ),
        .R(1'b0));
  FDRE \r_addr_reg[22] 
       (.C(s_axi_aclk),
        .CE(r_stb0),
        .D(s_axi_araddr[22]),
        .Q(\r_addr_reg_n_0_[22] ),
        .R(1'b0));
  FDRE \r_addr_reg[23] 
       (.C(s_axi_aclk),
        .CE(r_stb0),
        .D(s_axi_araddr[23]),
        .Q(\r_addr_reg_n_0_[23] ),
        .R(1'b0));
  FDRE \r_addr_reg[24] 
       (.C(s_axi_aclk),
        .CE(r_stb0),
        .D(s_axi_araddr[24]),
        .Q(\r_addr_reg_n_0_[24] ),
        .R(1'b0));
  FDRE \r_addr_reg[25] 
       (.C(s_axi_aclk),
        .CE(r_stb0),
        .D(s_axi_araddr[25]),
        .Q(\r_addr_reg_n_0_[25] ),
        .R(1'b0));
  FDRE \r_addr_reg[2] 
       (.C(s_axi_aclk),
        .CE(r_stb0),
        .D(s_axi_araddr[2]),
        .Q(\r_addr_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \r_addr_reg[3] 
       (.C(s_axi_aclk),
        .CE(r_stb0),
        .D(s_axi_araddr[3]),
        .Q(\r_addr_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \r_addr_reg[4] 
       (.C(s_axi_aclk),
        .CE(r_stb0),
        .D(s_axi_araddr[4]),
        .Q(\r_addr_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \r_addr_reg[5] 
       (.C(s_axi_aclk),
        .CE(r_stb0),
        .D(s_axi_araddr[5]),
        .Q(\r_addr_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \r_addr_reg[6] 
       (.C(s_axi_aclk),
        .CE(r_stb0),
        .D(s_axi_araddr[6]),
        .Q(\r_addr_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \r_addr_reg[7] 
       (.C(s_axi_aclk),
        .CE(r_stb0),
        .D(s_axi_araddr[7]),
        .Q(\r_addr_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \r_addr_reg[8] 
       (.C(s_axi_aclk),
        .CE(r_stb0),
        .D(s_axi_araddr[8]),
        .Q(\r_addr_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \r_addr_reg[9] 
       (.C(s_axi_aclk),
        .CE(r_stb0),
        .D(s_axi_araddr[9]),
        .Q(\r_addr_reg_n_0_[9] ),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \r_first[0]_i_1__0 
       (.I0(r_first_reg[0]),
        .O(\r_first[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \r_first[1]_i_1__0 
       (.I0(r_first_reg[0]),
        .I1(r_first_reg[1]),
        .O(\r_first[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \r_first[2]_i_1__0 
       (.I0(r_first_reg[2]),
        .I1(r_first_reg[1]),
        .I2(r_first_reg[0]),
        .O(\r_first[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \r_first[3]_i_1__0 
       (.I0(r_first_reg[3]),
        .I1(r_first_reg[0]),
        .I2(r_first_reg[1]),
        .I3(r_first_reg[2]),
        .O(\r_first[3]_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \r_first[4]_i_1__0 
       (.I0(o_axi_arready_reg_0),
        .I1(s_axi_arvalid),
        .O(p_0_in__0_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \r_first[4]_i_2__0 
       (.I0(r_first_reg[4]),
        .I1(r_first_reg[2]),
        .I2(r_first_reg[1]),
        .I3(r_first_reg[0]),
        .I4(r_first_reg[3]),
        .O(\r_first[4]_i_2__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_first_reg[0] 
       (.C(s_axi_aclk),
        .CE(p_0_in__0_0),
        .D(\r_first[0]_i_1__0_n_0 ),
        .Q(r_first_reg[0]),
        .R(\r_last_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_first_reg[1] 
       (.C(s_axi_aclk),
        .CE(p_0_in__0_0),
        .D(\r_first[1]_i_1__0_n_0 ),
        .Q(r_first_reg[1]),
        .R(\r_last_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_first_reg[2] 
       (.C(s_axi_aclk),
        .CE(p_0_in__0_0),
        .D(\r_first[2]_i_1__0_n_0 ),
        .Q(r_first_reg[2]),
        .R(\r_last_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_first_reg[3] 
       (.C(s_axi_aclk),
        .CE(p_0_in__0_0),
        .D(\r_first[3]_i_1__0_n_0 ),
        .Q(r_first_reg[3]),
        .R(\r_last_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_first_reg[4] 
       (.C(s_axi_aclk),
        .CE(p_0_in__0_0),
        .D(\r_first[4]_i_2__0_n_0 ),
        .Q(r_first_reg[4]),
        .R(\r_last_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \r_last[0]_i_1 
       (.I0(r_last_reg[0]),
        .O(next_last[0]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \r_last[1]_i_1__0 
       (.I0(r_last_reg[0]),
        .I1(r_last_reg[1]),
        .O(next_last[1]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \r_last[2]_i_1__0 
       (.I0(r_last_reg[0]),
        .I1(r_last_reg[1]),
        .I2(r_last_reg[2]),
        .O(next_last[2]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \r_last[3]_i_1__0 
       (.I0(r_last_reg[2]),
        .I1(r_last_reg[1]),
        .I2(r_last_reg[0]),
        .I3(r_last_reg[3]),
        .O(next_last[3]));
  LUT2 #(
    .INIT(4'h8)) 
    \r_last[4]_i_1__0 
       (.I0(s_axi_rready),
        .I1(o_axi_rvalid_reg_0),
        .O(p_0_in__0__0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \r_last[4]_i_2__0 
       (.I0(r_last_reg[0]),
        .I1(r_last_reg[1]),
        .I2(r_last_reg[2]),
        .I3(r_last_reg[3]),
        .I4(r_last_reg[4]),
        .O(\r_last[4]_i_2__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_last_reg[0] 
       (.C(s_axi_aclk),
        .CE(p_0_in__0__0),
        .D(next_last[0]),
        .Q(r_last_reg[0]),
        .R(\r_last_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_last_reg[1] 
       (.C(s_axi_aclk),
        .CE(p_0_in__0__0),
        .D(next_last[1]),
        .Q(r_last_reg[1]),
        .R(\r_last_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_last_reg[2] 
       (.C(s_axi_aclk),
        .CE(p_0_in__0__0),
        .D(next_last[2]),
        .Q(r_last_reg[2]),
        .R(\r_last_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_last_reg[3] 
       (.C(s_axi_aclk),
        .CE(p_0_in__0__0),
        .D(next_last[3]),
        .Q(r_last_reg[3]),
        .R(\r_last_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_last_reg[4] 
       (.C(s_axi_aclk),
        .CE(p_0_in__0__0),
        .D(\r_last[4]_i_2__0_n_0 ),
        .Q(r_last_reg[4]),
        .R(\r_last_reg[0]_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \r_mid[0]_i_1__0 
       (.I0(\r_mid_reg_n_0_[0] ),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \r_mid[1]_i_1__0 
       (.I0(\r_mid_reg_n_0_[0] ),
        .I1(\r_mid_reg_n_0_[1] ),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \r_mid[2]_i_1__0 
       (.I0(\r_mid_reg_n_0_[2] ),
        .I1(\r_mid_reg_n_0_[1] ),
        .I2(\r_mid_reg_n_0_[0] ),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \r_mid[3]_i_1__0 
       (.I0(\r_mid_reg_n_0_[3] ),
        .I1(\r_mid_reg_n_0_[0] ),
        .I2(\r_mid_reg_n_0_[1] ),
        .I3(\r_mid_reg_n_0_[2] ),
        .O(p_0_in__0[3]));
  LUT6 #(
    .INIT(64'hFFFFFFFFE0E0E000)) 
    \r_mid[4]_i_1 
       (.I0(wb_pending),
        .I1(r_wb_stb),
        .I2(r_a_owner),
        .I3(m_wb_ack),
        .I4(m_wb_err),
        .I5(\r_mid[4]_i_3__0_n_0 ),
        .O(\r_mid[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \r_mid[4]_i_2__0 
       (.I0(\r_mid_reg_n_0_[4] ),
        .I1(\r_mid_reg_n_0_[3] ),
        .I2(\r_mid_reg_n_0_[2] ),
        .I3(\r_mid_reg_n_0_[1] ),
        .I4(\r_mid_reg_n_0_[0] ),
        .O(p_0_in__0[4]));
  LUT6 #(
    .INIT(64'hAA28AAAAAAAAAA28)) 
    \r_mid[4]_i_3__0 
       (.I0(err_state),
        .I1(r_first_reg[4]),
        .I2(\r_mid_reg_n_0_[4] ),
        .I3(\r_mid[4]_i_4__0_n_0 ),
        .I4(\r_mid_reg_n_0_[3] ),
        .I5(r_first_reg[3]),
        .O(\r_mid[4]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \r_mid[4]_i_4__0 
       (.I0(\r_mid_reg_n_0_[2] ),
        .I1(r_first_reg[2]),
        .I2(\r_mid_reg_n_0_[1] ),
        .I3(r_first_reg[1]),
        .I4(r_first_reg[0]),
        .I5(\r_mid_reg_n_0_[0] ),
        .O(\r_mid[4]_i_4__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_mid_reg[0] 
       (.C(s_axi_aclk),
        .CE(\r_mid[4]_i_1_n_0 ),
        .D(p_0_in__0[0]),
        .Q(\r_mid_reg_n_0_[0] ),
        .R(\r_last_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_mid_reg[1] 
       (.C(s_axi_aclk),
        .CE(\r_mid[4]_i_1_n_0 ),
        .D(p_0_in__0[1]),
        .Q(\r_mid_reg_n_0_[1] ),
        .R(\r_last_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_mid_reg[2] 
       (.C(s_axi_aclk),
        .CE(\r_mid[4]_i_1_n_0 ),
        .D(p_0_in__0[2]),
        .Q(\r_mid_reg_n_0_[2] ),
        .R(\r_last_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_mid_reg[3] 
       (.C(s_axi_aclk),
        .CE(\r_mid[4]_i_1_n_0 ),
        .D(p_0_in__0[3]),
        .Q(\r_mid_reg_n_0_[3] ),
        .R(\r_last_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_mid_reg[4] 
       (.C(s_axi_aclk),
        .CE(\r_mid[4]_i_1_n_0 ),
        .D(p_0_in__0[4]),
        .Q(\r_mid_reg_n_0_[4] ),
        .R(\r_last_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFF2202)) 
    r_stb_i_1
       (.I0(r_stb),
        .I1(r_stb_i_2_n_0),
        .I2(r_a_owner),
        .I3(m_wb_stall),
        .I4(r_stb0),
        .I5(r_stb_i_3_n_0),
        .O(r_stb_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h1)) 
    r_stb_i_2
       (.I0(r_wb_stb),
        .I1(wb_pending),
        .O(r_stb_i_2_n_0));
  LUT6 #(
    .INIT(64'hFDDDFDDDFDDDDDDD)) 
    r_stb_i_3
       (.I0(s_axi_aresetn),
        .I1(err_state),
        .I2(r_a_owner),
        .I3(m_wb_err),
        .I4(r_wb_stb),
        .I5(wb_pending),
        .O(r_stb_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    r_stb_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(r_stb_i_1_n_0),
        .Q(r_stb),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \wb_outstanding[0]_i_1__0 
       (.I0(\wb_outstanding_reg_n_0_[0] ),
        .O(wb_outstanding__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hA659)) 
    \wb_outstanding[1]_i_1__0 
       (.I0(\wb_outstanding_reg_n_0_[0] ),
        .I1(r_wb_stb),
        .I2(m_wb_stall),
        .I3(wb_outstanding_reg[1]),
        .O(wb_outstanding__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'hF708AE51)) 
    \wb_outstanding[2]_i_1__0 
       (.I0(\wb_outstanding_reg_n_0_[0] ),
        .I1(r_wb_stb),
        .I2(m_wb_stall),
        .I3(wb_outstanding_reg[2]),
        .I4(wb_outstanding_reg[1]),
        .O(wb_outstanding__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h7F80FE01)) 
    \wb_outstanding[3]_i_1__0 
       (.I0(\wb_outstanding_reg_n_0_[0] ),
        .I1(wb_outstanding_reg[1]),
        .I2(wb_pending_i_4__0_n_0),
        .I3(wb_outstanding_reg[3]),
        .I4(wb_outstanding_reg[2]),
        .O(wb_outstanding__0[3]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAA9)) 
    \wb_outstanding[4]_i_1__0 
       (.I0(wb_outstanding_reg[4]),
        .I1(wb_outstanding_reg[3]),
        .I2(wb_outstanding_reg[2]),
        .I3(\wb_outstanding_reg_n_0_[0] ),
        .I4(wb_outstanding_reg[1]),
        .I5(wb_pending_i_4__0_n_0),
        .O(wb_outstanding__0[4]));
  FDRE #(
    .INIT(1'b0)) 
    \wb_outstanding_reg[0] 
       (.C(s_axi_aclk),
        .CE(wb_outstanding),
        .D(wb_outstanding__0[0]),
        .Q(\wb_outstanding_reg_n_0_[0] ),
        .R(wb_pending0));
  FDRE #(
    .INIT(1'b0)) 
    \wb_outstanding_reg[1] 
       (.C(s_axi_aclk),
        .CE(wb_outstanding),
        .D(wb_outstanding__0[1]),
        .Q(wb_outstanding_reg[1]),
        .R(wb_pending0));
  FDRE #(
    .INIT(1'b0)) 
    \wb_outstanding_reg[2] 
       (.C(s_axi_aclk),
        .CE(wb_outstanding),
        .D(wb_outstanding__0[2]),
        .Q(wb_outstanding_reg[2]),
        .R(wb_pending0));
  FDRE #(
    .INIT(1'b0)) 
    \wb_outstanding_reg[3] 
       (.C(s_axi_aclk),
        .CE(wb_outstanding),
        .D(wb_outstanding__0[3]),
        .Q(wb_outstanding_reg[3]),
        .R(wb_pending0));
  FDRE #(
    .INIT(1'b0)) 
    \wb_outstanding_reg[4] 
       (.C(s_axi_aclk),
        .CE(wb_outstanding),
        .D(wb_outstanding__0[4]),
        .Q(wb_outstanding_reg[4]),
        .R(wb_pending0));
  LUT6 #(
    .INIT(64'hFFFFF1FFF1FFF1FF)) 
    wb_pending_i_1__0
       (.I0(wb_pending),
        .I1(r_wb_stb),
        .I2(err_state),
        .I3(s_axi_aresetn),
        .I4(r_a_owner),
        .I5(m_wb_err),
        .O(wb_pending0));
  LUT4 #(
    .INIT(16'hB400)) 
    wb_pending_i_2__0
       (.I0(m_wb_stall),
        .I1(r_wb_stb),
        .I2(m_wb_ack),
        .I3(r_a_owner),
        .O(wb_outstanding));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    wb_pending_i_3__0
       (.I0(wb_pending_i_4__0_n_0),
        .I1(wb_outstanding_reg[2]),
        .I2(wb_outstanding_reg[3]),
        .I3(wb_outstanding_reg[1]),
        .I4(wb_outstanding_reg[4]),
        .O(wb_pending_i_3__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h08)) 
    wb_pending_i_4__0
       (.I0(r_wb_stb),
        .I1(r_a_owner),
        .I2(m_wb_stall),
        .O(wb_pending_i_4__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    wb_pending_reg
       (.C(s_axi_aclk),
        .CE(wb_outstanding),
        .D(wb_pending_i_3__0_n_0),
        .Q(wb_pending),
        .R(wb_pending0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axilwr2wbsp
   (o_axi_awready_reg_0,
    s_axi_aresetn_0,
    o_axi_wready_reg_0,
    w_wb_stb,
    s_axi_bresp,
    o_axi_bvalid_reg_0,
    wb_pending_reg_0,
    wb_pending_reg_1,
    m_wb_cyc,
    Q,
    \o_wb_addr_reg[25]_0 ,
    m_wb_dat_w,
    s_axi_aclk,
    E,
    r_a_owner,
    m_wb_stall,
    s_axi_bready,
    s_axi_aresetn,
    \ALT.last_owner ,
    r_wb_stb,
    wb_pending,
    s_axi_awvalid,
    s_axi_wvalid,
    m_wb_ack,
    m_wb_err,
    s_axi_wstrb,
    s_axi_awaddr,
    s_axi_wdata);
  output o_axi_awready_reg_0;
  output s_axi_aresetn_0;
  output o_axi_wready_reg_0;
  output w_wb_stb;
  output [1:0]s_axi_bresp;
  output o_axi_bvalid_reg_0;
  output wb_pending_reg_0;
  output wb_pending_reg_1;
  output m_wb_cyc;
  output [3:0]Q;
  output [25:0]\o_wb_addr_reg[25]_0 ;
  output [31:0]m_wb_dat_w;
  input s_axi_aclk;
  input [0:0]E;
  input r_a_owner;
  input m_wb_stall;
  input s_axi_bready;
  input s_axi_aresetn;
  input \ALT.last_owner ;
  input r_wb_stb;
  input wb_pending;
  input s_axi_awvalid;
  input s_axi_wvalid;
  input m_wb_ack;
  input m_wb_err;
  input [3:0]s_axi_wstrb;
  input [25:0]s_axi_awaddr;
  input [31:0]s_axi_wdata;

  wire \ALT.last_owner ;
  wire [0:0]E;
  wire [3:0]Q;
  wire axi_write_accepted;
  wire axi_write_accepted2;
  wire [4:0]err_loc;
  wire err_state;
  wire err_state_i_1_n_0;
  wire err_state_i_2_n_0;
  wire err_state_i_3_n_0;
  wire fifo_full;
  wire fifo_full118_out;
  wire fifo_full_i_1_n_0;
  wire fifo_full_i_2_n_0;
  wire fifo_full_i_3_n_0;
  wire fifo_full_i_4_n_0;
  wire m_wb_ack;
  wire m_wb_cyc;
  wire [31:0]m_wb_dat_w;
  wire m_wb_err;
  wire m_wb_stall;
  wire [4:0]next_last;
  wire o_axi_awready5_out;
  wire o_axi_awready_i_2_n_0;
  wire o_axi_awready_i_3_n_0;
  wire o_axi_awready_i_4_n_0;
  wire o_axi_awready_i_5_n_0;
  wire o_axi_awready_reg_0;
  wire \o_axi_bresp[0]_i_1_n_0 ;
  wire \o_axi_bresp[0]_i_2_n_0 ;
  wire \o_axi_bresp[0]_i_3_n_0 ;
  wire \o_axi_bresp[0]_i_4_n_0 ;
  wire \o_axi_bresp[0]_i_5_n_0 ;
  wire \o_axi_bresp[1]_i_1_n_0 ;
  wire \o_axi_bresp[1]_i_2_n_0 ;
  wire \o_axi_bresp[1]_i_3_n_0 ;
  wire \o_axi_bresp[1]_i_4_n_0 ;
  wire \o_axi_bresp[1]_i_5_n_0 ;
  wire \o_axi_bresp[1]_i_6_n_0 ;
  wire \o_axi_bresp[1]_i_7_n_0 ;
  wire \o_axi_bresp[1]_i_8_n_0 ;
  wire o_axi_bvalid_i_1_n_0;
  wire o_axi_bvalid_i_2_n_0;
  wire o_axi_bvalid_i_3_n_0;
  wire o_axi_bvalid_i_5_n_0;
  wire o_axi_bvalid_i_6_n_0;
  wire o_axi_bvalid_reg_0;
  wire o_axi_wready11_out;
  wire o_axi_wready_i_2_n_0;
  wire o_axi_wready_i_3_n_0;
  wire o_axi_wready_reg_0;
  wire \o_wb_addr[0]_i_1__0_n_0 ;
  wire \o_wb_addr[10]_i_1__0_n_0 ;
  wire \o_wb_addr[11]_i_1__0_n_0 ;
  wire \o_wb_addr[12]_i_1__0_n_0 ;
  wire \o_wb_addr[13]_i_1__0_n_0 ;
  wire \o_wb_addr[14]_i_1__0_n_0 ;
  wire \o_wb_addr[15]_i_1__0_n_0 ;
  wire \o_wb_addr[16]_i_1__0_n_0 ;
  wire \o_wb_addr[17]_i_1__0_n_0 ;
  wire \o_wb_addr[18]_i_1__0_n_0 ;
  wire \o_wb_addr[19]_i_1__0_n_0 ;
  wire \o_wb_addr[1]_i_1__0_n_0 ;
  wire \o_wb_addr[20]_i_1__0_n_0 ;
  wire \o_wb_addr[21]_i_1__0_n_0 ;
  wire \o_wb_addr[22]_i_1__0_n_0 ;
  wire \o_wb_addr[23]_i_1__0_n_0 ;
  wire \o_wb_addr[24]_i_1__0_n_0 ;
  wire \o_wb_addr[25]_i_1__0_n_0 ;
  wire \o_wb_addr[2]_i_1__0_n_0 ;
  wire \o_wb_addr[3]_i_1__0_n_0 ;
  wire \o_wb_addr[4]_i_1__0_n_0 ;
  wire \o_wb_addr[5]_i_1__0_n_0 ;
  wire \o_wb_addr[6]_i_1__0_n_0 ;
  wire \o_wb_addr[7]_i_1__0_n_0 ;
  wire \o_wb_addr[8]_i_1__0_n_0 ;
  wire \o_wb_addr[9]_i_1__0_n_0 ;
  wire [25:0]\o_wb_addr_reg[25]_0 ;
  wire \o_wb_data[0]_i_1_n_0 ;
  wire \o_wb_data[10]_i_1_n_0 ;
  wire \o_wb_data[11]_i_1_n_0 ;
  wire \o_wb_data[12]_i_1_n_0 ;
  wire \o_wb_data[13]_i_1_n_0 ;
  wire \o_wb_data[14]_i_1_n_0 ;
  wire \o_wb_data[15]_i_1_n_0 ;
  wire \o_wb_data[16]_i_1_n_0 ;
  wire \o_wb_data[17]_i_1_n_0 ;
  wire \o_wb_data[18]_i_1_n_0 ;
  wire \o_wb_data[19]_i_1_n_0 ;
  wire \o_wb_data[1]_i_1_n_0 ;
  wire \o_wb_data[20]_i_1_n_0 ;
  wire \o_wb_data[21]_i_1_n_0 ;
  wire \o_wb_data[22]_i_1_n_0 ;
  wire \o_wb_data[23]_i_1_n_0 ;
  wire \o_wb_data[24]_i_1_n_0 ;
  wire \o_wb_data[25]_i_1_n_0 ;
  wire \o_wb_data[26]_i_1_n_0 ;
  wire \o_wb_data[27]_i_1_n_0 ;
  wire \o_wb_data[28]_i_1_n_0 ;
  wire \o_wb_data[29]_i_1_n_0 ;
  wire \o_wb_data[2]_i_1_n_0 ;
  wire \o_wb_data[30]_i_1_n_0 ;
  wire \o_wb_data[31]_i_2_n_0 ;
  wire \o_wb_data[3]_i_1_n_0 ;
  wire \o_wb_data[4]_i_1_n_0 ;
  wire \o_wb_data[5]_i_1_n_0 ;
  wire \o_wb_data[6]_i_1_n_0 ;
  wire \o_wb_data[7]_i_1_n_0 ;
  wire \o_wb_data[8]_i_1_n_0 ;
  wire \o_wb_data[9]_i_1_n_0 ;
  wire \o_wb_sel[0]_i_1_n_0 ;
  wire \o_wb_sel[1]_i_1_n_0 ;
  wire \o_wb_sel[2]_i_1_n_0 ;
  wire \o_wb_sel[3]_i_1_n_0 ;
  wire o_wb_stb2;
  wire o_wb_stb_i_1_n_0;
  wire o_wb_stb_i_2_n_0;
  wire [4:0]p_0_in;
  wire p_1_in;
  wire pending_axi_write1;
  wire pending_axi_write123_out;
  wire r_a_owner;
  wire [25:0]r_addr;
  wire r_awvalid_i_1_n_0;
  wire r_awvalid_reg_n_0;
  wire [31:0]r_data;
  wire \r_first[0]_i_1_n_0 ;
  wire \r_first[1]_i_1_n_0 ;
  wire \r_first[2]_i_1_n_0 ;
  wire \r_first[3]_i_1_n_0 ;
  wire [4:0]r_first_reg;
  wire [4:0]r_last_reg;
  wire r_mid116_out;
  wire \r_mid[4]_i_1__0_n_0 ;
  wire \r_mid[4]_i_3_n_0 ;
  wire \r_mid[4]_i_4_n_0 ;
  wire [4:0]r_mid_reg;
  wire [3:0]r_sel;
  wire r_wb_stb;
  wire r_wvalid_i_1_n_0;
  wire r_wvalid_reg_n_0;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire s_axi_aresetn_0;
  wire [25:0]s_axi_awaddr;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire [31:0]s_axi_wdata;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire w_wb_stb;
  wire [4:0]wb_outstanding;
  wire [4:1]wb_outstanding_reg;
  wire \wb_outstanding_reg_n_0_[0] ;
  wire wb_pending;
  wire wb_pending0;
  wire wb_pending_0;
  wire wb_pending_i_3_n_0;
  wire wb_pending_i_4_n_0;
  wire wb_pending_reg_0;
  wire wb_pending_reg_1;

  LUT6 #(
    .INIT(64'hFF10FF10FF10F010)) 
    \ALT.last_owner_i_1 
       (.I0(wb_pending_0),
        .I1(w_wb_stb),
        .I2(\ALT.last_owner ),
        .I3(r_a_owner),
        .I4(r_wb_stb),
        .I5(wb_pending),
        .O(wb_pending_reg_1));
  LUT6 #(
    .INIT(64'hFF05FF00FF050B01)) 
    \ALT.r_a_owner_i_1 
       (.I0(wb_pending_0),
        .I1(\ALT.last_owner ),
        .I2(w_wb_stb),
        .I3(r_a_owner),
        .I4(r_wb_stb),
        .I5(wb_pending),
        .O(wb_pending_reg_0));
  LUT4 #(
    .INIT(16'h4440)) 
    \err_loc[4]_i_1 
       (.I0(r_a_owner),
        .I1(m_wb_err),
        .I2(wb_pending_0),
        .I3(w_wb_stb),
        .O(o_wb_stb2));
  FDRE \err_loc_reg[0] 
       (.C(s_axi_aclk),
        .CE(o_wb_stb2),
        .D(r_mid_reg[0]),
        .Q(err_loc[0]),
        .R(1'b0));
  FDRE \err_loc_reg[1] 
       (.C(s_axi_aclk),
        .CE(o_wb_stb2),
        .D(r_mid_reg[1]),
        .Q(err_loc[1]),
        .R(1'b0));
  FDRE \err_loc_reg[2] 
       (.C(s_axi_aclk),
        .CE(o_wb_stb2),
        .D(r_mid_reg[2]),
        .Q(err_loc[2]),
        .R(1'b0));
  FDRE \err_loc_reg[3] 
       (.C(s_axi_aclk),
        .CE(o_wb_stb2),
        .D(r_mid_reg[3]),
        .Q(err_loc[3]),
        .R(1'b0));
  FDRE \err_loc_reg[4] 
       (.C(s_axi_aclk),
        .CE(o_wb_stb2),
        .D(r_mid_reg[4]),
        .Q(err_loc[4]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000BEFFFFBE)) 
    err_state_i_1
       (.I0(err_state_i_2_n_0),
        .I1(r_last_reg[2]),
        .I2(r_first_reg[2]),
        .I3(r_last_reg[1]),
        .I4(r_first_reg[1]),
        .I5(err_state_i_3_n_0),
        .O(err_state_i_1_n_0));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    err_state_i_2
       (.I0(r_last_reg[3]),
        .I1(r_first_reg[3]),
        .I2(r_first_reg[0]),
        .I3(r_last_reg[0]),
        .I4(r_last_reg[4]),
        .I5(r_first_reg[4]),
        .O(err_state_i_2_n_0));
  LUT6 #(
    .INIT(64'h7577757775777777)) 
    err_state_i_3
       (.I0(s_axi_aresetn),
        .I1(err_state),
        .I2(r_a_owner),
        .I3(m_wb_err),
        .I4(wb_pending_0),
        .I5(w_wb_stb),
        .O(err_state_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    err_state_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(err_state_i_1_n_0),
        .Q(err_state),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hF2220FFF02220000)) 
    fifo_full_i_1
       (.I0(fifo_full_i_2_n_0),
        .I1(fifo_full_i_3_n_0),
        .I2(o_axi_bvalid_reg_0),
        .I3(s_axi_bready),
        .I4(axi_write_accepted),
        .I5(fifo_full),
        .O(fifo_full_i_1_n_0));
  LUT6 #(
    .INIT(64'h9666666666666666)) 
    fifo_full_i_2
       (.I0(r_first_reg[4]),
        .I1(r_last_reg[4]),
        .I2(r_first_reg[2]),
        .I3(r_first_reg[1]),
        .I4(r_first_reg[0]),
        .I5(r_first_reg[3]),
        .O(fifo_full_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF807F7F80)) 
    fifo_full_i_3
       (.I0(r_first_reg[2]),
        .I1(r_first_reg[1]),
        .I2(r_first_reg[0]),
        .I3(r_first_reg[3]),
        .I4(r_last_reg[3]),
        .I5(fifo_full_i_4_n_0),
        .O(fifo_full_i_3_n_0));
  LUT6 #(
    .INIT(64'hFB7DEFFFEFFFFB7D)) 
    fifo_full_i_4
       (.I0(r_last_reg[0]),
        .I1(r_last_reg[1]),
        .I2(r_first_reg[1]),
        .I3(r_first_reg[0]),
        .I4(r_last_reg[2]),
        .I5(r_first_reg[2]),
        .O(fifo_full_i_4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    fifo_full_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(fifo_full_i_1_n_0),
        .Q(fifo_full),
        .R(s_axi_aresetn_0));
  LUT5 #(
    .INIT(32'hFEFEFE0E)) 
    m_wb_cyc_INST_0
       (.I0(w_wb_stb),
        .I1(wb_pending_0),
        .I2(r_a_owner),
        .I3(r_wb_stb),
        .I4(wb_pending),
        .O(m_wb_cyc));
  LUT1 #(
    .INIT(2'h1)) 
    m_wb_reset_INST_0
       (.I0(s_axi_aresetn),
        .O(s_axi_aresetn_0));
  LUT6 #(
    .INIT(64'h00000000020202FF)) 
    o_axi_awready_i_1
       (.I0(o_axi_awready_i_2_n_0),
        .I1(o_axi_awready_i_3_n_0),
        .I2(err_state),
        .I3(r_awvalid_reg_n_0),
        .I4(pending_axi_write123_out),
        .I5(o_axi_awready_i_4_n_0),
        .O(o_axi_awready5_out));
  LUT6 #(
    .INIT(64'hBEEBEBEBAAAAAAAA)) 
    o_axi_awready_i_2
       (.I0(fifo_full118_out),
        .I1(r_first_reg[4]),
        .I2(r_last_reg[4]),
        .I3(o_axi_awready_i_5_n_0),
        .I4(r_first_reg[3]),
        .I5(fifo_full_i_3_n_0),
        .O(o_axi_awready_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFF0707070707)) 
    o_axi_awready_i_3
       (.I0(s_axi_wvalid),
        .I1(o_axi_wready_reg_0),
        .I2(r_wvalid_reg_n_0),
        .I3(r_a_owner),
        .I4(m_wb_stall),
        .I5(w_wb_stb),
        .O(o_axi_awready_i_3_n_0));
  LUT6 #(
    .INIT(64'hF700F700F700FFFF)) 
    o_axi_awready_i_4
       (.I0(o_axi_bvalid_reg_0),
        .I1(s_axi_bready),
        .I2(r_awvalid_reg_n_0),
        .I3(fifo_full),
        .I4(axi_write_accepted2),
        .I5(o_axi_awready_reg_0),
        .O(o_axi_awready_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'h80)) 
    o_axi_awready_i_5
       (.I0(r_first_reg[2]),
        .I1(r_first_reg[1]),
        .I2(r_first_reg[0]),
        .O(o_axi_awready_i_5_n_0));
  FDSE #(
    .INIT(1'b1)) 
    o_axi_awready_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(o_axi_awready5_out),
        .Q(o_axi_awready_reg_0),
        .S(s_axi_aresetn_0));
  LUT6 #(
    .INIT(64'h4000C0C040004000)) 
    \o_axi_bresp[0]_i_1 
       (.I0(\o_axi_bresp[0]_i_2_n_0 ),
        .I1(\o_axi_bresp[0]_i_3_n_0 ),
        .I2(s_axi_aresetn),
        .I3(err_state),
        .I4(s_axi_bready),
        .I5(o_axi_bvalid_reg_0),
        .O(\o_axi_bresp[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0006090009000009)) 
    \o_axi_bresp[0]_i_2 
       (.I0(r_last_reg[4]),
        .I1(err_loc[4]),
        .I2(\o_axi_bresp[0]_i_4_n_0 ),
        .I3(err_loc[3]),
        .I4(\o_axi_bresp[0]_i_5_n_0 ),
        .I5(r_last_reg[3]),
        .O(\o_axi_bresp[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF4FBBBB0000)) 
    \o_axi_bresp[0]_i_3 
       (.I0(s_axi_bready),
        .I1(o_axi_bvalid_reg_0),
        .I2(o_wb_stb2),
        .I3(err_state),
        .I4(s_axi_bresp[1]),
        .I5(s_axi_bresp[0]),
        .O(\o_axi_bresp[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF7BFFDEFEFF7BFFD)) 
    \o_axi_bresp[0]_i_4 
       (.I0(err_loc[0]),
        .I1(err_loc[2]),
        .I2(r_last_reg[0]),
        .I3(r_last_reg[1]),
        .I4(r_last_reg[2]),
        .I5(err_loc[1]),
        .O(\o_axi_bresp[0]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \o_axi_bresp[0]_i_5 
       (.I0(r_last_reg[2]),
        .I1(r_last_reg[1]),
        .I2(r_last_reg[0]),
        .O(\o_axi_bresp[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFBA000000000000)) 
    \o_axi_bresp[1]_i_1 
       (.I0(err_state),
        .I1(s_axi_bready),
        .I2(o_axi_bvalid_reg_0),
        .I3(o_wb_stb2),
        .I4(s_axi_aresetn),
        .I5(\o_axi_bresp[1]_i_2_n_0 ),
        .O(\o_axi_bresp[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFF40F04FFF40004)) 
    \o_axi_bresp[1]_i_2 
       (.I0(\o_axi_bresp[1]_i_3_n_0 ),
        .I1(o_wb_stb2),
        .I2(\o_axi_bresp[1]_i_4_n_0 ),
        .I3(err_state),
        .I4(s_axi_bresp[1]),
        .I5(\o_axi_bresp[0]_i_2_n_0 ),
        .O(\o_axi_bresp[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFBFFFBFFFBF00)) 
    \o_axi_bresp[1]_i_3 
       (.I0(\o_axi_bresp[1]_i_5_n_0 ),
        .I1(\o_axi_bresp[1]_i_6_n_0 ),
        .I2(o_axi_bvalid_i_5_n_0),
        .I3(o_axi_bvalid_reg_0),
        .I4(\o_axi_bresp[1]_i_7_n_0 ),
        .I5(\o_axi_bresp[1]_i_8_n_0 ),
        .O(\o_axi_bresp[1]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \o_axi_bresp[1]_i_4 
       (.I0(o_axi_bvalid_reg_0),
        .I1(s_axi_bready),
        .O(\o_axi_bresp[1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT5 #(
    .INIT(32'h807F7F80)) 
    \o_axi_bresp[1]_i_5 
       (.I0(r_last_reg[0]),
        .I1(r_last_reg[1]),
        .I2(r_last_reg[2]),
        .I3(r_last_reg[3]),
        .I4(r_mid_reg[3]),
        .O(\o_axi_bresp[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF800080007FFF)) 
    \o_axi_bresp[1]_i_6 
       (.I0(r_last_reg[3]),
        .I1(r_last_reg[0]),
        .I2(r_last_reg[1]),
        .I3(r_last_reg[2]),
        .I4(r_last_reg[4]),
        .I5(r_mid_reg[4]),
        .O(\o_axi_bresp[1]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'h6FF6)) 
    \o_axi_bresp[1]_i_7 
       (.I0(r_last_reg[1]),
        .I1(r_mid_reg[1]),
        .I2(r_last_reg[0]),
        .I3(r_mid_reg[0]),
        .O(\o_axi_bresp[1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \o_axi_bresp[1]_i_8 
       (.I0(r_last_reg[4]),
        .I1(r_mid_reg[4]),
        .I2(r_mid_reg[3]),
        .I3(r_last_reg[3]),
        .I4(r_mid_reg[2]),
        .I5(r_last_reg[2]),
        .O(\o_axi_bresp[1]_i_8_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \o_axi_bresp_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\o_axi_bresp[0]_i_1_n_0 ),
        .Q(s_axi_bresp[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \o_axi_bresp_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\o_axi_bresp[1]_i_1_n_0 ),
        .Q(s_axi_bresp[1]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFFE200FF00)) 
    o_axi_bvalid_i_1
       (.I0(o_axi_bvalid_i_2_n_0),
        .I1(err_state),
        .I2(o_axi_bvalid_i_3_n_0),
        .I3(o_axi_bvalid_reg_0),
        .I4(s_axi_bready),
        .I5(r_mid116_out),
        .O(o_axi_bvalid_i_1_n_0));
  LUT6 #(
    .INIT(64'hD6BFBFD6FFFFFFFF)) 
    o_axi_bvalid_i_2
       (.I0(r_mid_reg[3]),
        .I1(r_last_reg[3]),
        .I2(\o_axi_bresp[0]_i_5_n_0 ),
        .I3(r_last_reg[4]),
        .I4(r_mid_reg[4]),
        .I5(o_axi_bvalid_i_5_n_0),
        .O(o_axi_bvalid_i_2_n_0));
  LUT6 #(
    .INIT(64'hFDDEEFFFEFFFFDDE)) 
    o_axi_bvalid_i_3
       (.I0(r_first_reg[3]),
        .I1(o_axi_bvalid_i_6_n_0),
        .I2(r_last_reg[3]),
        .I3(\o_axi_bresp[0]_i_5_n_0 ),
        .I4(r_first_reg[4]),
        .I5(r_last_reg[4]),
        .O(o_axi_bvalid_i_3_n_0));
  LUT5 #(
    .INIT(32'h0E0E0E00)) 
    o_axi_bvalid_i_4
       (.I0(w_wb_stb),
        .I1(wb_pending_0),
        .I2(r_a_owner),
        .I3(m_wb_err),
        .I4(m_wb_ack),
        .O(r_mid116_out));
  LUT6 #(
    .INIT(64'h0482100010000482)) 
    o_axi_bvalid_i_5
       (.I0(r_mid_reg[0]),
        .I1(r_mid_reg[1]),
        .I2(r_last_reg[1]),
        .I3(r_last_reg[0]),
        .I4(r_last_reg[2]),
        .I5(r_mid_reg[2]),
        .O(o_axi_bvalid_i_5_n_0));
  LUT6 #(
    .INIT(64'hFB7DEFFFEFFFFB7D)) 
    o_axi_bvalid_i_6
       (.I0(r_first_reg[0]),
        .I1(r_first_reg[1]),
        .I2(r_last_reg[1]),
        .I3(r_last_reg[0]),
        .I4(r_last_reg[2]),
        .I5(r_first_reg[2]),
        .O(o_axi_bvalid_i_6_n_0));
  FDRE #(
    .INIT(1'b0)) 
    o_axi_bvalid_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(o_axi_bvalid_i_1_n_0),
        .Q(o_axi_bvalid_reg_0),
        .R(s_axi_aresetn_0));
  LUT6 #(
    .INIT(64'h000D0D0D000D000D)) 
    o_axi_wready_i_1
       (.I0(pending_axi_write1),
        .I1(o_axi_awready_i_2_n_0),
        .I2(o_axi_wready_i_2_n_0),
        .I3(fifo_full),
        .I4(r_wvalid_reg_n_0),
        .I5(fifo_full118_out),
        .O(o_axi_wready11_out));
  LUT5 #(
    .INIT(32'hEC00FDFD)) 
    o_axi_wready_i_2
       (.I0(o_axi_wready_reg_0),
        .I1(r_wvalid_reg_n_0),
        .I2(s_axi_wvalid),
        .I3(o_axi_wready_i_3_n_0),
        .I4(axi_write_accepted2),
        .O(o_axi_wready_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'hAABF)) 
    o_axi_wready_i_3
       (.I0(err_state),
        .I1(s_axi_awvalid),
        .I2(o_axi_awready_reg_0),
        .I3(r_awvalid_reg_n_0),
        .O(o_axi_wready_i_3_n_0));
  FDSE #(
    .INIT(1'b1)) 
    o_axi_wready_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(o_axi_wready11_out),
        .Q(o_axi_wready_reg_0),
        .S(s_axi_aresetn_0));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \o_wb_addr[0]_i_1__0 
       (.I0(r_addr[0]),
        .I1(r_awvalid_reg_n_0),
        .I2(s_axi_awaddr[0]),
        .O(\o_wb_addr[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \o_wb_addr[10]_i_1__0 
       (.I0(r_addr[10]),
        .I1(r_awvalid_reg_n_0),
        .I2(s_axi_awaddr[10]),
        .O(\o_wb_addr[10]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \o_wb_addr[11]_i_1__0 
       (.I0(r_addr[11]),
        .I1(r_awvalid_reg_n_0),
        .I2(s_axi_awaddr[11]),
        .O(\o_wb_addr[11]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \o_wb_addr[12]_i_1__0 
       (.I0(r_addr[12]),
        .I1(r_awvalid_reg_n_0),
        .I2(s_axi_awaddr[12]),
        .O(\o_wb_addr[12]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \o_wb_addr[13]_i_1__0 
       (.I0(r_addr[13]),
        .I1(r_awvalid_reg_n_0),
        .I2(s_axi_awaddr[13]),
        .O(\o_wb_addr[13]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \o_wb_addr[14]_i_1__0 
       (.I0(r_addr[14]),
        .I1(r_awvalid_reg_n_0),
        .I2(s_axi_awaddr[14]),
        .O(\o_wb_addr[14]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \o_wb_addr[15]_i_1__0 
       (.I0(r_addr[15]),
        .I1(r_awvalid_reg_n_0),
        .I2(s_axi_awaddr[15]),
        .O(\o_wb_addr[15]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \o_wb_addr[16]_i_1__0 
       (.I0(r_addr[16]),
        .I1(r_awvalid_reg_n_0),
        .I2(s_axi_awaddr[16]),
        .O(\o_wb_addr[16]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \o_wb_addr[17]_i_1__0 
       (.I0(r_addr[17]),
        .I1(r_awvalid_reg_n_0),
        .I2(s_axi_awaddr[17]),
        .O(\o_wb_addr[17]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \o_wb_addr[18]_i_1__0 
       (.I0(r_addr[18]),
        .I1(r_awvalid_reg_n_0),
        .I2(s_axi_awaddr[18]),
        .O(\o_wb_addr[18]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \o_wb_addr[19]_i_1__0 
       (.I0(r_addr[19]),
        .I1(r_awvalid_reg_n_0),
        .I2(s_axi_awaddr[19]),
        .O(\o_wb_addr[19]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \o_wb_addr[1]_i_1__0 
       (.I0(r_addr[1]),
        .I1(r_awvalid_reg_n_0),
        .I2(s_axi_awaddr[1]),
        .O(\o_wb_addr[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \o_wb_addr[20]_i_1__0 
       (.I0(r_addr[20]),
        .I1(r_awvalid_reg_n_0),
        .I2(s_axi_awaddr[20]),
        .O(\o_wb_addr[20]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \o_wb_addr[21]_i_1__0 
       (.I0(r_addr[21]),
        .I1(r_awvalid_reg_n_0),
        .I2(s_axi_awaddr[21]),
        .O(\o_wb_addr[21]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \o_wb_addr[22]_i_1__0 
       (.I0(r_addr[22]),
        .I1(r_awvalid_reg_n_0),
        .I2(s_axi_awaddr[22]),
        .O(\o_wb_addr[22]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \o_wb_addr[23]_i_1__0 
       (.I0(r_addr[23]),
        .I1(r_awvalid_reg_n_0),
        .I2(s_axi_awaddr[23]),
        .O(\o_wb_addr[23]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \o_wb_addr[24]_i_1__0 
       (.I0(r_addr[24]),
        .I1(r_awvalid_reg_n_0),
        .I2(s_axi_awaddr[24]),
        .O(\o_wb_addr[24]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \o_wb_addr[25]_i_1__0 
       (.I0(r_addr[25]),
        .I1(r_awvalid_reg_n_0),
        .I2(s_axi_awaddr[25]),
        .O(\o_wb_addr[25]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \o_wb_addr[2]_i_1__0 
       (.I0(r_addr[2]),
        .I1(r_awvalid_reg_n_0),
        .I2(s_axi_awaddr[2]),
        .O(\o_wb_addr[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \o_wb_addr[3]_i_1__0 
       (.I0(r_addr[3]),
        .I1(r_awvalid_reg_n_0),
        .I2(s_axi_awaddr[3]),
        .O(\o_wb_addr[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \o_wb_addr[4]_i_1__0 
       (.I0(r_addr[4]),
        .I1(r_awvalid_reg_n_0),
        .I2(s_axi_awaddr[4]),
        .O(\o_wb_addr[4]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \o_wb_addr[5]_i_1__0 
       (.I0(r_addr[5]),
        .I1(r_awvalid_reg_n_0),
        .I2(s_axi_awaddr[5]),
        .O(\o_wb_addr[5]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \o_wb_addr[6]_i_1__0 
       (.I0(r_addr[6]),
        .I1(r_awvalid_reg_n_0),
        .I2(s_axi_awaddr[6]),
        .O(\o_wb_addr[6]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \o_wb_addr[7]_i_1__0 
       (.I0(r_addr[7]),
        .I1(r_awvalid_reg_n_0),
        .I2(s_axi_awaddr[7]),
        .O(\o_wb_addr[7]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \o_wb_addr[8]_i_1__0 
       (.I0(r_addr[8]),
        .I1(r_awvalid_reg_n_0),
        .I2(s_axi_awaddr[8]),
        .O(\o_wb_addr[8]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \o_wb_addr[9]_i_1__0 
       (.I0(r_addr[9]),
        .I1(r_awvalid_reg_n_0),
        .I2(s_axi_awaddr[9]),
        .O(\o_wb_addr[9]_i_1__0_n_0 ));
  FDRE \o_wb_addr_reg[0] 
       (.C(s_axi_aclk),
        .CE(axi_write_accepted2),
        .D(\o_wb_addr[0]_i_1__0_n_0 ),
        .Q(\o_wb_addr_reg[25]_0 [0]),
        .R(1'b0));
  FDRE \o_wb_addr_reg[10] 
       (.C(s_axi_aclk),
        .CE(axi_write_accepted2),
        .D(\o_wb_addr[10]_i_1__0_n_0 ),
        .Q(\o_wb_addr_reg[25]_0 [10]),
        .R(1'b0));
  FDRE \o_wb_addr_reg[11] 
       (.C(s_axi_aclk),
        .CE(axi_write_accepted2),
        .D(\o_wb_addr[11]_i_1__0_n_0 ),
        .Q(\o_wb_addr_reg[25]_0 [11]),
        .R(1'b0));
  FDRE \o_wb_addr_reg[12] 
       (.C(s_axi_aclk),
        .CE(axi_write_accepted2),
        .D(\o_wb_addr[12]_i_1__0_n_0 ),
        .Q(\o_wb_addr_reg[25]_0 [12]),
        .R(1'b0));
  FDRE \o_wb_addr_reg[13] 
       (.C(s_axi_aclk),
        .CE(axi_write_accepted2),
        .D(\o_wb_addr[13]_i_1__0_n_0 ),
        .Q(\o_wb_addr_reg[25]_0 [13]),
        .R(1'b0));
  FDRE \o_wb_addr_reg[14] 
       (.C(s_axi_aclk),
        .CE(axi_write_accepted2),
        .D(\o_wb_addr[14]_i_1__0_n_0 ),
        .Q(\o_wb_addr_reg[25]_0 [14]),
        .R(1'b0));
  FDRE \o_wb_addr_reg[15] 
       (.C(s_axi_aclk),
        .CE(axi_write_accepted2),
        .D(\o_wb_addr[15]_i_1__0_n_0 ),
        .Q(\o_wb_addr_reg[25]_0 [15]),
        .R(1'b0));
  FDRE \o_wb_addr_reg[16] 
       (.C(s_axi_aclk),
        .CE(axi_write_accepted2),
        .D(\o_wb_addr[16]_i_1__0_n_0 ),
        .Q(\o_wb_addr_reg[25]_0 [16]),
        .R(1'b0));
  FDRE \o_wb_addr_reg[17] 
       (.C(s_axi_aclk),
        .CE(axi_write_accepted2),
        .D(\o_wb_addr[17]_i_1__0_n_0 ),
        .Q(\o_wb_addr_reg[25]_0 [17]),
        .R(1'b0));
  FDRE \o_wb_addr_reg[18] 
       (.C(s_axi_aclk),
        .CE(axi_write_accepted2),
        .D(\o_wb_addr[18]_i_1__0_n_0 ),
        .Q(\o_wb_addr_reg[25]_0 [18]),
        .R(1'b0));
  FDRE \o_wb_addr_reg[19] 
       (.C(s_axi_aclk),
        .CE(axi_write_accepted2),
        .D(\o_wb_addr[19]_i_1__0_n_0 ),
        .Q(\o_wb_addr_reg[25]_0 [19]),
        .R(1'b0));
  FDRE \o_wb_addr_reg[1] 
       (.C(s_axi_aclk),
        .CE(axi_write_accepted2),
        .D(\o_wb_addr[1]_i_1__0_n_0 ),
        .Q(\o_wb_addr_reg[25]_0 [1]),
        .R(1'b0));
  FDRE \o_wb_addr_reg[20] 
       (.C(s_axi_aclk),
        .CE(axi_write_accepted2),
        .D(\o_wb_addr[20]_i_1__0_n_0 ),
        .Q(\o_wb_addr_reg[25]_0 [20]),
        .R(1'b0));
  FDRE \o_wb_addr_reg[21] 
       (.C(s_axi_aclk),
        .CE(axi_write_accepted2),
        .D(\o_wb_addr[21]_i_1__0_n_0 ),
        .Q(\o_wb_addr_reg[25]_0 [21]),
        .R(1'b0));
  FDRE \o_wb_addr_reg[22] 
       (.C(s_axi_aclk),
        .CE(axi_write_accepted2),
        .D(\o_wb_addr[22]_i_1__0_n_0 ),
        .Q(\o_wb_addr_reg[25]_0 [22]),
        .R(1'b0));
  FDRE \o_wb_addr_reg[23] 
       (.C(s_axi_aclk),
        .CE(axi_write_accepted2),
        .D(\o_wb_addr[23]_i_1__0_n_0 ),
        .Q(\o_wb_addr_reg[25]_0 [23]),
        .R(1'b0));
  FDRE \o_wb_addr_reg[24] 
       (.C(s_axi_aclk),
        .CE(axi_write_accepted2),
        .D(\o_wb_addr[24]_i_1__0_n_0 ),
        .Q(\o_wb_addr_reg[25]_0 [24]),
        .R(1'b0));
  FDRE \o_wb_addr_reg[25] 
       (.C(s_axi_aclk),
        .CE(axi_write_accepted2),
        .D(\o_wb_addr[25]_i_1__0_n_0 ),
        .Q(\o_wb_addr_reg[25]_0 [25]),
        .R(1'b0));
  FDRE \o_wb_addr_reg[2] 
       (.C(s_axi_aclk),
        .CE(axi_write_accepted2),
        .D(\o_wb_addr[2]_i_1__0_n_0 ),
        .Q(\o_wb_addr_reg[25]_0 [2]),
        .R(1'b0));
  FDRE \o_wb_addr_reg[3] 
       (.C(s_axi_aclk),
        .CE(axi_write_accepted2),
        .D(\o_wb_addr[3]_i_1__0_n_0 ),
        .Q(\o_wb_addr_reg[25]_0 [3]),
        .R(1'b0));
  FDRE \o_wb_addr_reg[4] 
       (.C(s_axi_aclk),
        .CE(axi_write_accepted2),
        .D(\o_wb_addr[4]_i_1__0_n_0 ),
        .Q(\o_wb_addr_reg[25]_0 [4]),
        .R(1'b0));
  FDRE \o_wb_addr_reg[5] 
       (.C(s_axi_aclk),
        .CE(axi_write_accepted2),
        .D(\o_wb_addr[5]_i_1__0_n_0 ),
        .Q(\o_wb_addr_reg[25]_0 [5]),
        .R(1'b0));
  FDRE \o_wb_addr_reg[6] 
       (.C(s_axi_aclk),
        .CE(axi_write_accepted2),
        .D(\o_wb_addr[6]_i_1__0_n_0 ),
        .Q(\o_wb_addr_reg[25]_0 [6]),
        .R(1'b0));
  FDRE \o_wb_addr_reg[7] 
       (.C(s_axi_aclk),
        .CE(axi_write_accepted2),
        .D(\o_wb_addr[7]_i_1__0_n_0 ),
        .Q(\o_wb_addr_reg[25]_0 [7]),
        .R(1'b0));
  FDRE \o_wb_addr_reg[8] 
       (.C(s_axi_aclk),
        .CE(axi_write_accepted2),
        .D(\o_wb_addr[8]_i_1__0_n_0 ),
        .Q(\o_wb_addr_reg[25]_0 [8]),
        .R(1'b0));
  FDRE \o_wb_addr_reg[9] 
       (.C(s_axi_aclk),
        .CE(axi_write_accepted2),
        .D(\o_wb_addr[9]_i_1__0_n_0 ),
        .Q(\o_wb_addr_reg[25]_0 [9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \o_wb_data[0]_i_1 
       (.I0(r_data[0]),
        .I1(r_wvalid_reg_n_0),
        .I2(s_axi_wdata[0]),
        .O(\o_wb_data[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \o_wb_data[10]_i_1 
       (.I0(r_data[10]),
        .I1(r_wvalid_reg_n_0),
        .I2(s_axi_wdata[10]),
        .O(\o_wb_data[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \o_wb_data[11]_i_1 
       (.I0(r_data[11]),
        .I1(r_wvalid_reg_n_0),
        .I2(s_axi_wdata[11]),
        .O(\o_wb_data[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \o_wb_data[12]_i_1 
       (.I0(r_data[12]),
        .I1(r_wvalid_reg_n_0),
        .I2(s_axi_wdata[12]),
        .O(\o_wb_data[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \o_wb_data[13]_i_1 
       (.I0(r_data[13]),
        .I1(r_wvalid_reg_n_0),
        .I2(s_axi_wdata[13]),
        .O(\o_wb_data[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \o_wb_data[14]_i_1 
       (.I0(r_data[14]),
        .I1(r_wvalid_reg_n_0),
        .I2(s_axi_wdata[14]),
        .O(\o_wb_data[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \o_wb_data[15]_i_1 
       (.I0(r_data[15]),
        .I1(r_wvalid_reg_n_0),
        .I2(s_axi_wdata[15]),
        .O(\o_wb_data[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \o_wb_data[16]_i_1 
       (.I0(r_data[16]),
        .I1(r_wvalid_reg_n_0),
        .I2(s_axi_wdata[16]),
        .O(\o_wb_data[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \o_wb_data[17]_i_1 
       (.I0(r_data[17]),
        .I1(r_wvalid_reg_n_0),
        .I2(s_axi_wdata[17]),
        .O(\o_wb_data[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \o_wb_data[18]_i_1 
       (.I0(r_data[18]),
        .I1(r_wvalid_reg_n_0),
        .I2(s_axi_wdata[18]),
        .O(\o_wb_data[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \o_wb_data[19]_i_1 
       (.I0(r_data[19]),
        .I1(r_wvalid_reg_n_0),
        .I2(s_axi_wdata[19]),
        .O(\o_wb_data[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \o_wb_data[1]_i_1 
       (.I0(r_data[1]),
        .I1(r_wvalid_reg_n_0),
        .I2(s_axi_wdata[1]),
        .O(\o_wb_data[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \o_wb_data[20]_i_1 
       (.I0(r_data[20]),
        .I1(r_wvalid_reg_n_0),
        .I2(s_axi_wdata[20]),
        .O(\o_wb_data[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \o_wb_data[21]_i_1 
       (.I0(r_data[21]),
        .I1(r_wvalid_reg_n_0),
        .I2(s_axi_wdata[21]),
        .O(\o_wb_data[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \o_wb_data[22]_i_1 
       (.I0(r_data[22]),
        .I1(r_wvalid_reg_n_0),
        .I2(s_axi_wdata[22]),
        .O(\o_wb_data[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \o_wb_data[23]_i_1 
       (.I0(r_data[23]),
        .I1(r_wvalid_reg_n_0),
        .I2(s_axi_wdata[23]),
        .O(\o_wb_data[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \o_wb_data[24]_i_1 
       (.I0(r_data[24]),
        .I1(r_wvalid_reg_n_0),
        .I2(s_axi_wdata[24]),
        .O(\o_wb_data[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \o_wb_data[25]_i_1 
       (.I0(r_data[25]),
        .I1(r_wvalid_reg_n_0),
        .I2(s_axi_wdata[25]),
        .O(\o_wb_data[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \o_wb_data[26]_i_1 
       (.I0(r_data[26]),
        .I1(r_wvalid_reg_n_0),
        .I2(s_axi_wdata[26]),
        .O(\o_wb_data[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \o_wb_data[27]_i_1 
       (.I0(r_data[27]),
        .I1(r_wvalid_reg_n_0),
        .I2(s_axi_wdata[27]),
        .O(\o_wb_data[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \o_wb_data[28]_i_1 
       (.I0(r_data[28]),
        .I1(r_wvalid_reg_n_0),
        .I2(s_axi_wdata[28]),
        .O(\o_wb_data[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \o_wb_data[29]_i_1 
       (.I0(r_data[29]),
        .I1(r_wvalid_reg_n_0),
        .I2(s_axi_wdata[29]),
        .O(\o_wb_data[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \o_wb_data[2]_i_1 
       (.I0(r_data[2]),
        .I1(r_wvalid_reg_n_0),
        .I2(s_axi_wdata[2]),
        .O(\o_wb_data[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \o_wb_data[30]_i_1 
       (.I0(r_data[30]),
        .I1(r_wvalid_reg_n_0),
        .I2(s_axi_wdata[30]),
        .O(\o_wb_data[30]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h57)) 
    \o_wb_data[31]_i_1 
       (.I0(w_wb_stb),
        .I1(m_wb_stall),
        .I2(r_a_owner),
        .O(axi_write_accepted2));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \o_wb_data[31]_i_2 
       (.I0(r_data[31]),
        .I1(r_wvalid_reg_n_0),
        .I2(s_axi_wdata[31]),
        .O(\o_wb_data[31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \o_wb_data[3]_i_1 
       (.I0(r_data[3]),
        .I1(r_wvalid_reg_n_0),
        .I2(s_axi_wdata[3]),
        .O(\o_wb_data[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \o_wb_data[4]_i_1 
       (.I0(r_data[4]),
        .I1(r_wvalid_reg_n_0),
        .I2(s_axi_wdata[4]),
        .O(\o_wb_data[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \o_wb_data[5]_i_1 
       (.I0(r_data[5]),
        .I1(r_wvalid_reg_n_0),
        .I2(s_axi_wdata[5]),
        .O(\o_wb_data[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \o_wb_data[6]_i_1 
       (.I0(r_data[6]),
        .I1(r_wvalid_reg_n_0),
        .I2(s_axi_wdata[6]),
        .O(\o_wb_data[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \o_wb_data[7]_i_1 
       (.I0(r_data[7]),
        .I1(r_wvalid_reg_n_0),
        .I2(s_axi_wdata[7]),
        .O(\o_wb_data[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \o_wb_data[8]_i_1 
       (.I0(r_data[8]),
        .I1(r_wvalid_reg_n_0),
        .I2(s_axi_wdata[8]),
        .O(\o_wb_data[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \o_wb_data[9]_i_1 
       (.I0(r_data[9]),
        .I1(r_wvalid_reg_n_0),
        .I2(s_axi_wdata[9]),
        .O(\o_wb_data[9]_i_1_n_0 ));
  FDRE \o_wb_data_reg[0] 
       (.C(s_axi_aclk),
        .CE(axi_write_accepted2),
        .D(\o_wb_data[0]_i_1_n_0 ),
        .Q(m_wb_dat_w[0]),
        .R(1'b0));
  FDRE \o_wb_data_reg[10] 
       (.C(s_axi_aclk),
        .CE(axi_write_accepted2),
        .D(\o_wb_data[10]_i_1_n_0 ),
        .Q(m_wb_dat_w[10]),
        .R(1'b0));
  FDRE \o_wb_data_reg[11] 
       (.C(s_axi_aclk),
        .CE(axi_write_accepted2),
        .D(\o_wb_data[11]_i_1_n_0 ),
        .Q(m_wb_dat_w[11]),
        .R(1'b0));
  FDRE \o_wb_data_reg[12] 
       (.C(s_axi_aclk),
        .CE(axi_write_accepted2),
        .D(\o_wb_data[12]_i_1_n_0 ),
        .Q(m_wb_dat_w[12]),
        .R(1'b0));
  FDRE \o_wb_data_reg[13] 
       (.C(s_axi_aclk),
        .CE(axi_write_accepted2),
        .D(\o_wb_data[13]_i_1_n_0 ),
        .Q(m_wb_dat_w[13]),
        .R(1'b0));
  FDRE \o_wb_data_reg[14] 
       (.C(s_axi_aclk),
        .CE(axi_write_accepted2),
        .D(\o_wb_data[14]_i_1_n_0 ),
        .Q(m_wb_dat_w[14]),
        .R(1'b0));
  FDRE \o_wb_data_reg[15] 
       (.C(s_axi_aclk),
        .CE(axi_write_accepted2),
        .D(\o_wb_data[15]_i_1_n_0 ),
        .Q(m_wb_dat_w[15]),
        .R(1'b0));
  FDRE \o_wb_data_reg[16] 
       (.C(s_axi_aclk),
        .CE(axi_write_accepted2),
        .D(\o_wb_data[16]_i_1_n_0 ),
        .Q(m_wb_dat_w[16]),
        .R(1'b0));
  FDRE \o_wb_data_reg[17] 
       (.C(s_axi_aclk),
        .CE(axi_write_accepted2),
        .D(\o_wb_data[17]_i_1_n_0 ),
        .Q(m_wb_dat_w[17]),
        .R(1'b0));
  FDRE \o_wb_data_reg[18] 
       (.C(s_axi_aclk),
        .CE(axi_write_accepted2),
        .D(\o_wb_data[18]_i_1_n_0 ),
        .Q(m_wb_dat_w[18]),
        .R(1'b0));
  FDRE \o_wb_data_reg[19] 
       (.C(s_axi_aclk),
        .CE(axi_write_accepted2),
        .D(\o_wb_data[19]_i_1_n_0 ),
        .Q(m_wb_dat_w[19]),
        .R(1'b0));
  FDRE \o_wb_data_reg[1] 
       (.C(s_axi_aclk),
        .CE(axi_write_accepted2),
        .D(\o_wb_data[1]_i_1_n_0 ),
        .Q(m_wb_dat_w[1]),
        .R(1'b0));
  FDRE \o_wb_data_reg[20] 
       (.C(s_axi_aclk),
        .CE(axi_write_accepted2),
        .D(\o_wb_data[20]_i_1_n_0 ),
        .Q(m_wb_dat_w[20]),
        .R(1'b0));
  FDRE \o_wb_data_reg[21] 
       (.C(s_axi_aclk),
        .CE(axi_write_accepted2),
        .D(\o_wb_data[21]_i_1_n_0 ),
        .Q(m_wb_dat_w[21]),
        .R(1'b0));
  FDRE \o_wb_data_reg[22] 
       (.C(s_axi_aclk),
        .CE(axi_write_accepted2),
        .D(\o_wb_data[22]_i_1_n_0 ),
        .Q(m_wb_dat_w[22]),
        .R(1'b0));
  FDRE \o_wb_data_reg[23] 
       (.C(s_axi_aclk),
        .CE(axi_write_accepted2),
        .D(\o_wb_data[23]_i_1_n_0 ),
        .Q(m_wb_dat_w[23]),
        .R(1'b0));
  FDRE \o_wb_data_reg[24] 
       (.C(s_axi_aclk),
        .CE(axi_write_accepted2),
        .D(\o_wb_data[24]_i_1_n_0 ),
        .Q(m_wb_dat_w[24]),
        .R(1'b0));
  FDRE \o_wb_data_reg[25] 
       (.C(s_axi_aclk),
        .CE(axi_write_accepted2),
        .D(\o_wb_data[25]_i_1_n_0 ),
        .Q(m_wb_dat_w[25]),
        .R(1'b0));
  FDRE \o_wb_data_reg[26] 
       (.C(s_axi_aclk),
        .CE(axi_write_accepted2),
        .D(\o_wb_data[26]_i_1_n_0 ),
        .Q(m_wb_dat_w[26]),
        .R(1'b0));
  FDRE \o_wb_data_reg[27] 
       (.C(s_axi_aclk),
        .CE(axi_write_accepted2),
        .D(\o_wb_data[27]_i_1_n_0 ),
        .Q(m_wb_dat_w[27]),
        .R(1'b0));
  FDRE \o_wb_data_reg[28] 
       (.C(s_axi_aclk),
        .CE(axi_write_accepted2),
        .D(\o_wb_data[28]_i_1_n_0 ),
        .Q(m_wb_dat_w[28]),
        .R(1'b0));
  FDRE \o_wb_data_reg[29] 
       (.C(s_axi_aclk),
        .CE(axi_write_accepted2),
        .D(\o_wb_data[29]_i_1_n_0 ),
        .Q(m_wb_dat_w[29]),
        .R(1'b0));
  FDRE \o_wb_data_reg[2] 
       (.C(s_axi_aclk),
        .CE(axi_write_accepted2),
        .D(\o_wb_data[2]_i_1_n_0 ),
        .Q(m_wb_dat_w[2]),
        .R(1'b0));
  FDRE \o_wb_data_reg[30] 
       (.C(s_axi_aclk),
        .CE(axi_write_accepted2),
        .D(\o_wb_data[30]_i_1_n_0 ),
        .Q(m_wb_dat_w[30]),
        .R(1'b0));
  FDRE \o_wb_data_reg[31] 
       (.C(s_axi_aclk),
        .CE(axi_write_accepted2),
        .D(\o_wb_data[31]_i_2_n_0 ),
        .Q(m_wb_dat_w[31]),
        .R(1'b0));
  FDRE \o_wb_data_reg[3] 
       (.C(s_axi_aclk),
        .CE(axi_write_accepted2),
        .D(\o_wb_data[3]_i_1_n_0 ),
        .Q(m_wb_dat_w[3]),
        .R(1'b0));
  FDRE \o_wb_data_reg[4] 
       (.C(s_axi_aclk),
        .CE(axi_write_accepted2),
        .D(\o_wb_data[4]_i_1_n_0 ),
        .Q(m_wb_dat_w[4]),
        .R(1'b0));
  FDRE \o_wb_data_reg[5] 
       (.C(s_axi_aclk),
        .CE(axi_write_accepted2),
        .D(\o_wb_data[5]_i_1_n_0 ),
        .Q(m_wb_dat_w[5]),
        .R(1'b0));
  FDRE \o_wb_data_reg[6] 
       (.C(s_axi_aclk),
        .CE(axi_write_accepted2),
        .D(\o_wb_data[6]_i_1_n_0 ),
        .Q(m_wb_dat_w[6]),
        .R(1'b0));
  FDRE \o_wb_data_reg[7] 
       (.C(s_axi_aclk),
        .CE(axi_write_accepted2),
        .D(\o_wb_data[7]_i_1_n_0 ),
        .Q(m_wb_dat_w[7]),
        .R(1'b0));
  FDRE \o_wb_data_reg[8] 
       (.C(s_axi_aclk),
        .CE(axi_write_accepted2),
        .D(\o_wb_data[8]_i_1_n_0 ),
        .Q(m_wb_dat_w[8]),
        .R(1'b0));
  FDRE \o_wb_data_reg[9] 
       (.C(s_axi_aclk),
        .CE(axi_write_accepted2),
        .D(\o_wb_data[9]_i_1_n_0 ),
        .Q(m_wb_dat_w[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \o_wb_sel[0]_i_1 
       (.I0(r_sel[0]),
        .I1(r_wvalid_reg_n_0),
        .I2(s_axi_wstrb[0]),
        .O(\o_wb_sel[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \o_wb_sel[1]_i_1 
       (.I0(r_sel[1]),
        .I1(r_wvalid_reg_n_0),
        .I2(s_axi_wstrb[1]),
        .O(\o_wb_sel[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \o_wb_sel[2]_i_1 
       (.I0(r_sel[2]),
        .I1(r_wvalid_reg_n_0),
        .I2(s_axi_wstrb[2]),
        .O(\o_wb_sel[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \o_wb_sel[3]_i_1 
       (.I0(r_sel[3]),
        .I1(r_wvalid_reg_n_0),
        .I2(s_axi_wstrb[3]),
        .O(\o_wb_sel[3]_i_1_n_0 ));
  FDRE \o_wb_sel_reg[0] 
       (.C(s_axi_aclk),
        .CE(axi_write_accepted2),
        .D(\o_wb_sel[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \o_wb_sel_reg[1] 
       (.C(s_axi_aclk),
        .CE(axi_write_accepted2),
        .D(\o_wb_sel[1]_i_1_n_0 ),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \o_wb_sel_reg[2] 
       (.C(s_axi_aclk),
        .CE(axi_write_accepted2),
        .D(\o_wb_sel[2]_i_1_n_0 ),
        .Q(Q[2]),
        .R(1'b0));
  FDRE \o_wb_sel_reg[3] 
       (.C(s_axi_aclk),
        .CE(axi_write_accepted2),
        .D(\o_wb_sel[3]_i_1_n_0 ),
        .Q(Q[3]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h000000000F0E0F00)) 
    o_wb_stb_i_1
       (.I0(r_a_owner),
        .I1(m_wb_stall),
        .I2(o_wb_stb_i_2_n_0),
        .I3(axi_write_accepted),
        .I4(w_wb_stb),
        .I5(o_wb_stb2),
        .O(o_wb_stb_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'hB)) 
    o_wb_stb_i_2
       (.I0(err_state),
        .I1(s_axi_aresetn),
        .O(o_wb_stb_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    o_wb_stb_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(o_wb_stb_i_1_n_0),
        .Q(w_wb_stb),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    \r_addr[25]_i_1 
       (.I0(s_axi_awvalid),
        .I1(o_axi_awready_reg_0),
        .O(pending_axi_write123_out));
  FDRE \r_addr_reg[0] 
       (.C(s_axi_aclk),
        .CE(pending_axi_write123_out),
        .D(s_axi_awaddr[0]),
        .Q(r_addr[0]),
        .R(1'b0));
  FDRE \r_addr_reg[10] 
       (.C(s_axi_aclk),
        .CE(pending_axi_write123_out),
        .D(s_axi_awaddr[10]),
        .Q(r_addr[10]),
        .R(1'b0));
  FDRE \r_addr_reg[11] 
       (.C(s_axi_aclk),
        .CE(pending_axi_write123_out),
        .D(s_axi_awaddr[11]),
        .Q(r_addr[11]),
        .R(1'b0));
  FDRE \r_addr_reg[12] 
       (.C(s_axi_aclk),
        .CE(pending_axi_write123_out),
        .D(s_axi_awaddr[12]),
        .Q(r_addr[12]),
        .R(1'b0));
  FDRE \r_addr_reg[13] 
       (.C(s_axi_aclk),
        .CE(pending_axi_write123_out),
        .D(s_axi_awaddr[13]),
        .Q(r_addr[13]),
        .R(1'b0));
  FDRE \r_addr_reg[14] 
       (.C(s_axi_aclk),
        .CE(pending_axi_write123_out),
        .D(s_axi_awaddr[14]),
        .Q(r_addr[14]),
        .R(1'b0));
  FDRE \r_addr_reg[15] 
       (.C(s_axi_aclk),
        .CE(pending_axi_write123_out),
        .D(s_axi_awaddr[15]),
        .Q(r_addr[15]),
        .R(1'b0));
  FDRE \r_addr_reg[16] 
       (.C(s_axi_aclk),
        .CE(pending_axi_write123_out),
        .D(s_axi_awaddr[16]),
        .Q(r_addr[16]),
        .R(1'b0));
  FDRE \r_addr_reg[17] 
       (.C(s_axi_aclk),
        .CE(pending_axi_write123_out),
        .D(s_axi_awaddr[17]),
        .Q(r_addr[17]),
        .R(1'b0));
  FDRE \r_addr_reg[18] 
       (.C(s_axi_aclk),
        .CE(pending_axi_write123_out),
        .D(s_axi_awaddr[18]),
        .Q(r_addr[18]),
        .R(1'b0));
  FDRE \r_addr_reg[19] 
       (.C(s_axi_aclk),
        .CE(pending_axi_write123_out),
        .D(s_axi_awaddr[19]),
        .Q(r_addr[19]),
        .R(1'b0));
  FDRE \r_addr_reg[1] 
       (.C(s_axi_aclk),
        .CE(pending_axi_write123_out),
        .D(s_axi_awaddr[1]),
        .Q(r_addr[1]),
        .R(1'b0));
  FDRE \r_addr_reg[20] 
       (.C(s_axi_aclk),
        .CE(pending_axi_write123_out),
        .D(s_axi_awaddr[20]),
        .Q(r_addr[20]),
        .R(1'b0));
  FDRE \r_addr_reg[21] 
       (.C(s_axi_aclk),
        .CE(pending_axi_write123_out),
        .D(s_axi_awaddr[21]),
        .Q(r_addr[21]),
        .R(1'b0));
  FDRE \r_addr_reg[22] 
       (.C(s_axi_aclk),
        .CE(pending_axi_write123_out),
        .D(s_axi_awaddr[22]),
        .Q(r_addr[22]),
        .R(1'b0));
  FDRE \r_addr_reg[23] 
       (.C(s_axi_aclk),
        .CE(pending_axi_write123_out),
        .D(s_axi_awaddr[23]),
        .Q(r_addr[23]),
        .R(1'b0));
  FDRE \r_addr_reg[24] 
       (.C(s_axi_aclk),
        .CE(pending_axi_write123_out),
        .D(s_axi_awaddr[24]),
        .Q(r_addr[24]),
        .R(1'b0));
  FDRE \r_addr_reg[25] 
       (.C(s_axi_aclk),
        .CE(pending_axi_write123_out),
        .D(s_axi_awaddr[25]),
        .Q(r_addr[25]),
        .R(1'b0));
  FDRE \r_addr_reg[2] 
       (.C(s_axi_aclk),
        .CE(pending_axi_write123_out),
        .D(s_axi_awaddr[2]),
        .Q(r_addr[2]),
        .R(1'b0));
  FDRE \r_addr_reg[3] 
       (.C(s_axi_aclk),
        .CE(pending_axi_write123_out),
        .D(s_axi_awaddr[3]),
        .Q(r_addr[3]),
        .R(1'b0));
  FDRE \r_addr_reg[4] 
       (.C(s_axi_aclk),
        .CE(pending_axi_write123_out),
        .D(s_axi_awaddr[4]),
        .Q(r_addr[4]),
        .R(1'b0));
  FDRE \r_addr_reg[5] 
       (.C(s_axi_aclk),
        .CE(pending_axi_write123_out),
        .D(s_axi_awaddr[5]),
        .Q(r_addr[5]),
        .R(1'b0));
  FDRE \r_addr_reg[6] 
       (.C(s_axi_aclk),
        .CE(pending_axi_write123_out),
        .D(s_axi_awaddr[6]),
        .Q(r_addr[6]),
        .R(1'b0));
  FDRE \r_addr_reg[7] 
       (.C(s_axi_aclk),
        .CE(pending_axi_write123_out),
        .D(s_axi_awaddr[7]),
        .Q(r_addr[7]),
        .R(1'b0));
  FDRE \r_addr_reg[8] 
       (.C(s_axi_aclk),
        .CE(pending_axi_write123_out),
        .D(s_axi_awaddr[8]),
        .Q(r_addr[8]),
        .R(1'b0));
  FDRE \r_addr_reg[9] 
       (.C(s_axi_aclk),
        .CE(pending_axi_write123_out),
        .D(s_axi_awaddr[9]),
        .Q(r_addr[9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h55400000)) 
    r_awvalid_i_1
       (.I0(axi_write_accepted),
        .I1(s_axi_awvalid),
        .I2(o_axi_awready_reg_0),
        .I3(r_awvalid_reg_n_0),
        .I4(s_axi_aresetn),
        .O(r_awvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    r_awvalid_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(r_awvalid_i_1_n_0),
        .Q(r_awvalid_reg_n_0),
        .R(1'b0));
  FDRE \r_data_reg[0] 
       (.C(s_axi_aclk),
        .CE(pending_axi_write1),
        .D(s_axi_wdata[0]),
        .Q(r_data[0]),
        .R(1'b0));
  FDRE \r_data_reg[10] 
       (.C(s_axi_aclk),
        .CE(pending_axi_write1),
        .D(s_axi_wdata[10]),
        .Q(r_data[10]),
        .R(1'b0));
  FDRE \r_data_reg[11] 
       (.C(s_axi_aclk),
        .CE(pending_axi_write1),
        .D(s_axi_wdata[11]),
        .Q(r_data[11]),
        .R(1'b0));
  FDRE \r_data_reg[12] 
       (.C(s_axi_aclk),
        .CE(pending_axi_write1),
        .D(s_axi_wdata[12]),
        .Q(r_data[12]),
        .R(1'b0));
  FDRE \r_data_reg[13] 
       (.C(s_axi_aclk),
        .CE(pending_axi_write1),
        .D(s_axi_wdata[13]),
        .Q(r_data[13]),
        .R(1'b0));
  FDRE \r_data_reg[14] 
       (.C(s_axi_aclk),
        .CE(pending_axi_write1),
        .D(s_axi_wdata[14]),
        .Q(r_data[14]),
        .R(1'b0));
  FDRE \r_data_reg[15] 
       (.C(s_axi_aclk),
        .CE(pending_axi_write1),
        .D(s_axi_wdata[15]),
        .Q(r_data[15]),
        .R(1'b0));
  FDRE \r_data_reg[16] 
       (.C(s_axi_aclk),
        .CE(pending_axi_write1),
        .D(s_axi_wdata[16]),
        .Q(r_data[16]),
        .R(1'b0));
  FDRE \r_data_reg[17] 
       (.C(s_axi_aclk),
        .CE(pending_axi_write1),
        .D(s_axi_wdata[17]),
        .Q(r_data[17]),
        .R(1'b0));
  FDRE \r_data_reg[18] 
       (.C(s_axi_aclk),
        .CE(pending_axi_write1),
        .D(s_axi_wdata[18]),
        .Q(r_data[18]),
        .R(1'b0));
  FDRE \r_data_reg[19] 
       (.C(s_axi_aclk),
        .CE(pending_axi_write1),
        .D(s_axi_wdata[19]),
        .Q(r_data[19]),
        .R(1'b0));
  FDRE \r_data_reg[1] 
       (.C(s_axi_aclk),
        .CE(pending_axi_write1),
        .D(s_axi_wdata[1]),
        .Q(r_data[1]),
        .R(1'b0));
  FDRE \r_data_reg[20] 
       (.C(s_axi_aclk),
        .CE(pending_axi_write1),
        .D(s_axi_wdata[20]),
        .Q(r_data[20]),
        .R(1'b0));
  FDRE \r_data_reg[21] 
       (.C(s_axi_aclk),
        .CE(pending_axi_write1),
        .D(s_axi_wdata[21]),
        .Q(r_data[21]),
        .R(1'b0));
  FDRE \r_data_reg[22] 
       (.C(s_axi_aclk),
        .CE(pending_axi_write1),
        .D(s_axi_wdata[22]),
        .Q(r_data[22]),
        .R(1'b0));
  FDRE \r_data_reg[23] 
       (.C(s_axi_aclk),
        .CE(pending_axi_write1),
        .D(s_axi_wdata[23]),
        .Q(r_data[23]),
        .R(1'b0));
  FDRE \r_data_reg[24] 
       (.C(s_axi_aclk),
        .CE(pending_axi_write1),
        .D(s_axi_wdata[24]),
        .Q(r_data[24]),
        .R(1'b0));
  FDRE \r_data_reg[25] 
       (.C(s_axi_aclk),
        .CE(pending_axi_write1),
        .D(s_axi_wdata[25]),
        .Q(r_data[25]),
        .R(1'b0));
  FDRE \r_data_reg[26] 
       (.C(s_axi_aclk),
        .CE(pending_axi_write1),
        .D(s_axi_wdata[26]),
        .Q(r_data[26]),
        .R(1'b0));
  FDRE \r_data_reg[27] 
       (.C(s_axi_aclk),
        .CE(pending_axi_write1),
        .D(s_axi_wdata[27]),
        .Q(r_data[27]),
        .R(1'b0));
  FDRE \r_data_reg[28] 
       (.C(s_axi_aclk),
        .CE(pending_axi_write1),
        .D(s_axi_wdata[28]),
        .Q(r_data[28]),
        .R(1'b0));
  FDRE \r_data_reg[29] 
       (.C(s_axi_aclk),
        .CE(pending_axi_write1),
        .D(s_axi_wdata[29]),
        .Q(r_data[29]),
        .R(1'b0));
  FDRE \r_data_reg[2] 
       (.C(s_axi_aclk),
        .CE(pending_axi_write1),
        .D(s_axi_wdata[2]),
        .Q(r_data[2]),
        .R(1'b0));
  FDRE \r_data_reg[30] 
       (.C(s_axi_aclk),
        .CE(pending_axi_write1),
        .D(s_axi_wdata[30]),
        .Q(r_data[30]),
        .R(1'b0));
  FDRE \r_data_reg[31] 
       (.C(s_axi_aclk),
        .CE(pending_axi_write1),
        .D(s_axi_wdata[31]),
        .Q(r_data[31]),
        .R(1'b0));
  FDRE \r_data_reg[3] 
       (.C(s_axi_aclk),
        .CE(pending_axi_write1),
        .D(s_axi_wdata[3]),
        .Q(r_data[3]),
        .R(1'b0));
  FDRE \r_data_reg[4] 
       (.C(s_axi_aclk),
        .CE(pending_axi_write1),
        .D(s_axi_wdata[4]),
        .Q(r_data[4]),
        .R(1'b0));
  FDRE \r_data_reg[5] 
       (.C(s_axi_aclk),
        .CE(pending_axi_write1),
        .D(s_axi_wdata[5]),
        .Q(r_data[5]),
        .R(1'b0));
  FDRE \r_data_reg[6] 
       (.C(s_axi_aclk),
        .CE(pending_axi_write1),
        .D(s_axi_wdata[6]),
        .Q(r_data[6]),
        .R(1'b0));
  FDRE \r_data_reg[7] 
       (.C(s_axi_aclk),
        .CE(pending_axi_write1),
        .D(s_axi_wdata[7]),
        .Q(r_data[7]),
        .R(1'b0));
  FDRE \r_data_reg[8] 
       (.C(s_axi_aclk),
        .CE(pending_axi_write1),
        .D(s_axi_wdata[8]),
        .Q(r_data[8]),
        .R(1'b0));
  FDRE \r_data_reg[9] 
       (.C(s_axi_aclk),
        .CE(pending_axi_write1),
        .D(s_axi_wdata[9]),
        .Q(r_data[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \r_first[0]_i_1 
       (.I0(r_first_reg[0]),
        .O(\r_first[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \r_first[1]_i_1 
       (.I0(r_first_reg[0]),
        .I1(r_first_reg[1]),
        .O(\r_first[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \r_first[2]_i_1 
       (.I0(r_first_reg[2]),
        .I1(r_first_reg[1]),
        .I2(r_first_reg[0]),
        .O(\r_first[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \r_first[3]_i_1 
       (.I0(r_first_reg[3]),
        .I1(r_first_reg[0]),
        .I2(r_first_reg[1]),
        .I3(r_first_reg[2]),
        .O(\r_first[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000011111000)) 
    \r_first[4]_i_1 
       (.I0(o_axi_awready_i_3_n_0),
        .I1(err_state),
        .I2(s_axi_awvalid),
        .I3(o_axi_awready_reg_0),
        .I4(r_awvalid_reg_n_0),
        .I5(fifo_full),
        .O(axi_write_accepted));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \r_first[4]_i_2 
       (.I0(r_first_reg[4]),
        .I1(r_first_reg[2]),
        .I2(r_first_reg[1]),
        .I3(r_first_reg[0]),
        .I4(r_first_reg[3]),
        .O(p_1_in));
  FDRE #(
    .INIT(1'b0)) 
    \r_first_reg[0] 
       (.C(s_axi_aclk),
        .CE(axi_write_accepted),
        .D(\r_first[0]_i_1_n_0 ),
        .Q(r_first_reg[0]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \r_first_reg[1] 
       (.C(s_axi_aclk),
        .CE(axi_write_accepted),
        .D(\r_first[1]_i_1_n_0 ),
        .Q(r_first_reg[1]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \r_first_reg[2] 
       (.C(s_axi_aclk),
        .CE(axi_write_accepted),
        .D(\r_first[2]_i_1_n_0 ),
        .Q(r_first_reg[2]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \r_first_reg[3] 
       (.C(s_axi_aclk),
        .CE(axi_write_accepted),
        .D(\r_first[3]_i_1_n_0 ),
        .Q(r_first_reg[3]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \r_first_reg[4] 
       (.C(s_axi_aclk),
        .CE(axi_write_accepted),
        .D(p_1_in),
        .Q(r_first_reg[4]),
        .R(s_axi_aresetn_0));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \r_last[0]_i_1__0 
       (.I0(r_last_reg[0]),
        .O(next_last[0]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \r_last[1]_i_1 
       (.I0(r_last_reg[0]),
        .I1(r_last_reg[1]),
        .O(next_last[1]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \r_last[2]_i_1 
       (.I0(r_last_reg[0]),
        .I1(r_last_reg[1]),
        .I2(r_last_reg[2]),
        .O(next_last[2]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \r_last[3]_i_1 
       (.I0(r_last_reg[2]),
        .I1(r_last_reg[1]),
        .I2(r_last_reg[0]),
        .I3(r_last_reg[3]),
        .O(next_last[3]));
  LUT2 #(
    .INIT(4'h8)) 
    \r_last[4]_i_1 
       (.I0(s_axi_bready),
        .I1(o_axi_bvalid_reg_0),
        .O(fifo_full118_out));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \r_last[4]_i_2 
       (.I0(r_last_reg[2]),
        .I1(r_last_reg[1]),
        .I2(r_last_reg[0]),
        .I3(r_last_reg[3]),
        .I4(r_last_reg[4]),
        .O(next_last[4]));
  FDRE #(
    .INIT(1'b0)) 
    \r_last_reg[0] 
       (.C(s_axi_aclk),
        .CE(fifo_full118_out),
        .D(next_last[0]),
        .Q(r_last_reg[0]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \r_last_reg[1] 
       (.C(s_axi_aclk),
        .CE(fifo_full118_out),
        .D(next_last[1]),
        .Q(r_last_reg[1]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \r_last_reg[2] 
       (.C(s_axi_aclk),
        .CE(fifo_full118_out),
        .D(next_last[2]),
        .Q(r_last_reg[2]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \r_last_reg[3] 
       (.C(s_axi_aclk),
        .CE(fifo_full118_out),
        .D(next_last[3]),
        .Q(r_last_reg[3]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \r_last_reg[4] 
       (.C(s_axi_aclk),
        .CE(fifo_full118_out),
        .D(next_last[4]),
        .Q(r_last_reg[4]),
        .R(s_axi_aresetn_0));
  LUT1 #(
    .INIT(2'h1)) 
    \r_mid[0]_i_1 
       (.I0(r_mid_reg[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \r_mid[1]_i_1 
       (.I0(r_mid_reg[0]),
        .I1(r_mid_reg[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \r_mid[2]_i_1 
       (.I0(r_mid_reg[2]),
        .I1(r_mid_reg[1]),
        .I2(r_mid_reg[0]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \r_mid[3]_i_1 
       (.I0(r_mid_reg[3]),
        .I1(r_mid_reg[0]),
        .I2(r_mid_reg[1]),
        .I3(r_mid_reg[2]),
        .O(p_0_in[3]));
  LUT6 #(
    .INIT(64'hAAFEAAFEAAFEAAAA)) 
    \r_mid[4]_i_1__0 
       (.I0(\r_mid[4]_i_3_n_0 ),
        .I1(m_wb_ack),
        .I2(m_wb_err),
        .I3(r_a_owner),
        .I4(wb_pending_0),
        .I5(w_wb_stb),
        .O(\r_mid[4]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \r_mid[4]_i_2 
       (.I0(r_mid_reg[4]),
        .I1(r_mid_reg[3]),
        .I2(r_mid_reg[2]),
        .I3(r_mid_reg[1]),
        .I4(r_mid_reg[0]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'hAA28AAAAAAAAAA28)) 
    \r_mid[4]_i_3 
       (.I0(err_state),
        .I1(r_first_reg[4]),
        .I2(r_mid_reg[4]),
        .I3(\r_mid[4]_i_4_n_0 ),
        .I4(r_mid_reg[3]),
        .I5(r_first_reg[3]),
        .O(\r_mid[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \r_mid[4]_i_4 
       (.I0(r_mid_reg[2]),
        .I1(r_first_reg[2]),
        .I2(r_mid_reg[1]),
        .I3(r_first_reg[1]),
        .I4(r_first_reg[0]),
        .I5(r_mid_reg[0]),
        .O(\r_mid[4]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_mid_reg[0] 
       (.C(s_axi_aclk),
        .CE(\r_mid[4]_i_1__0_n_0 ),
        .D(p_0_in[0]),
        .Q(r_mid_reg[0]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \r_mid_reg[1] 
       (.C(s_axi_aclk),
        .CE(\r_mid[4]_i_1__0_n_0 ),
        .D(p_0_in[1]),
        .Q(r_mid_reg[1]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \r_mid_reg[2] 
       (.C(s_axi_aclk),
        .CE(\r_mid[4]_i_1__0_n_0 ),
        .D(p_0_in[2]),
        .Q(r_mid_reg[2]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \r_mid_reg[3] 
       (.C(s_axi_aclk),
        .CE(\r_mid[4]_i_1__0_n_0 ),
        .D(p_0_in[3]),
        .Q(r_mid_reg[3]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \r_mid_reg[4] 
       (.C(s_axi_aclk),
        .CE(\r_mid[4]_i_1__0_n_0 ),
        .D(p_0_in[4]),
        .Q(r_mid_reg[4]),
        .R(s_axi_aresetn_0));
  LUT2 #(
    .INIT(4'h8)) 
    \r_sel[3]_i_1 
       (.I0(s_axi_wvalid),
        .I1(o_axi_wready_reg_0),
        .O(pending_axi_write1));
  FDRE \r_sel_reg[0] 
       (.C(s_axi_aclk),
        .CE(pending_axi_write1),
        .D(s_axi_wstrb[0]),
        .Q(r_sel[0]),
        .R(1'b0));
  FDRE \r_sel_reg[1] 
       (.C(s_axi_aclk),
        .CE(pending_axi_write1),
        .D(s_axi_wstrb[1]),
        .Q(r_sel[1]),
        .R(1'b0));
  FDRE \r_sel_reg[2] 
       (.C(s_axi_aclk),
        .CE(pending_axi_write1),
        .D(s_axi_wstrb[2]),
        .Q(r_sel[2]),
        .R(1'b0));
  FDRE \r_sel_reg[3] 
       (.C(s_axi_aclk),
        .CE(pending_axi_write1),
        .D(s_axi_wstrb[3]),
        .Q(r_sel[3]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h55400000)) 
    r_wvalid_i_1
       (.I0(axi_write_accepted),
        .I1(s_axi_wvalid),
        .I2(o_axi_wready_reg_0),
        .I3(r_wvalid_reg_n_0),
        .I4(s_axi_aresetn),
        .O(r_wvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    r_wvalid_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(r_wvalid_i_1_n_0),
        .Q(r_wvalid_reg_n_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \wb_outstanding[0]_i_1 
       (.I0(\wb_outstanding_reg_n_0_[0] ),
        .O(wb_outstanding[0]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'hA659)) 
    \wb_outstanding[1]_i_1 
       (.I0(\wb_outstanding_reg_n_0_[0] ),
        .I1(w_wb_stb),
        .I2(m_wb_stall),
        .I3(wb_outstanding_reg[1]),
        .O(wb_outstanding[1]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT5 #(
    .INIT(32'hF708AE51)) 
    \wb_outstanding[2]_i_1 
       (.I0(\wb_outstanding_reg_n_0_[0] ),
        .I1(w_wb_stb),
        .I2(m_wb_stall),
        .I3(wb_outstanding_reg[2]),
        .I4(wb_outstanding_reg[1]),
        .O(wb_outstanding[2]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'h7F80FE01)) 
    \wb_outstanding[3]_i_1 
       (.I0(\wb_outstanding_reg_n_0_[0] ),
        .I1(wb_outstanding_reg[1]),
        .I2(wb_pending_i_4_n_0),
        .I3(wb_outstanding_reg[3]),
        .I4(wb_outstanding_reg[2]),
        .O(wb_outstanding[3]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAA9)) 
    \wb_outstanding[4]_i_1 
       (.I0(wb_outstanding_reg[4]),
        .I1(wb_outstanding_reg[3]),
        .I2(wb_outstanding_reg[2]),
        .I3(\wb_outstanding_reg_n_0_[0] ),
        .I4(wb_outstanding_reg[1]),
        .I5(wb_pending_i_4_n_0),
        .O(wb_outstanding[4]));
  FDRE #(
    .INIT(1'b0)) 
    \wb_outstanding_reg[0] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(wb_outstanding[0]),
        .Q(\wb_outstanding_reg_n_0_[0] ),
        .R(wb_pending0));
  FDRE #(
    .INIT(1'b0)) 
    \wb_outstanding_reg[1] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(wb_outstanding[1]),
        .Q(wb_outstanding_reg[1]),
        .R(wb_pending0));
  FDRE #(
    .INIT(1'b0)) 
    \wb_outstanding_reg[2] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(wb_outstanding[2]),
        .Q(wb_outstanding_reg[2]),
        .R(wb_pending0));
  FDRE #(
    .INIT(1'b0)) 
    \wb_outstanding_reg[3] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(wb_outstanding[3]),
        .Q(wb_outstanding_reg[3]),
        .R(wb_pending0));
  FDRE #(
    .INIT(1'b0)) 
    \wb_outstanding_reg[4] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(wb_outstanding[4]),
        .Q(wb_outstanding_reg[4]),
        .R(wb_pending0));
  LUT6 #(
    .INIT(64'hF1FFF1FFFFFFF1FF)) 
    wb_pending_i_1
       (.I0(wb_pending_0),
        .I1(w_wb_stb),
        .I2(err_state),
        .I3(s_axi_aresetn),
        .I4(m_wb_err),
        .I5(r_a_owner),
        .O(wb_pending0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    wb_pending_i_3
       (.I0(wb_pending_i_4_n_0),
        .I1(wb_outstanding_reg[2]),
        .I2(wb_outstanding_reg[3]),
        .I3(wb_outstanding_reg[1]),
        .I4(wb_outstanding_reg[4]),
        .O(wb_pending_i_3_n_0));
  LUT3 #(
    .INIT(8'h02)) 
    wb_pending_i_4
       (.I0(w_wb_stb),
        .I1(m_wb_stall),
        .I2(r_a_owner),
        .O(wb_pending_i_4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    wb_pending_reg
       (.C(s_axi_aclk),
        .CE(E),
        .D(wb_pending_i_3_n_0),
        .Q(wb_pending_0),
        .R(wb_pending0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axlite2wbsp
   (s_axi_rdata,
    o_axi_awready,
    s_axi_aresetn_0,
    o_axi_bvalid_reg,
    o_axi_wready,
    o_axi_rvalid_reg,
    o_axi_arready,
    m_wb_dat_w,
    s_axi_rresp,
    m_wb_cyc,
    m_wb_we,
    m_wb_stb,
    m_wb_sel,
    m_wb_adr,
    s_axi_bresp,
    s_axi_aclk,
    m_wb_dat_r,
    m_wb_ack,
    m_wb_err,
    m_wb_stall,
    s_axi_bready,
    s_axi_wstrb,
    s_axi_rready,
    s_axi_awaddr,
    s_axi_araddr,
    s_axi_wdata,
    s_axi_aresetn,
    s_axi_awvalid,
    s_axi_wvalid,
    s_axi_arvalid);
  output [31:0]s_axi_rdata;
  output o_axi_awready;
  output s_axi_aresetn_0;
  output o_axi_bvalid_reg;
  output o_axi_wready;
  output o_axi_rvalid_reg;
  output o_axi_arready;
  output [31:0]m_wb_dat_w;
  output [1:0]s_axi_rresp;
  output m_wb_cyc;
  output m_wb_we;
  output m_wb_stb;
  output [3:0]m_wb_sel;
  output [25:0]m_wb_adr;
  output [1:0]s_axi_bresp;
  input s_axi_aclk;
  input [31:0]m_wb_dat_r;
  input m_wb_ack;
  input m_wb_err;
  input m_wb_stall;
  input s_axi_bready;
  input [3:0]s_axi_wstrb;
  input s_axi_rready;
  input [25:0]s_axi_awaddr;
  input [25:0]s_axi_araddr;
  input [31:0]s_axi_wdata;
  input s_axi_aresetn;
  input s_axi_awvalid;
  input s_axi_wvalid;
  input s_axi_arvalid;

  wire \ALT.last_owner ;
  wire \AXI_WR.axi_write_decoder_n_7 ;
  wire \AXI_WR.axi_write_decoder_n_8 ;
  wire m_wb_ack;
  wire [25:0]m_wb_adr;
  wire m_wb_cyc;
  wire [31:0]m_wb_dat_r;
  wire [31:0]m_wb_dat_w;
  wire m_wb_err;
  wire [3:0]m_wb_sel;
  wire m_wb_stall;
  wire m_wb_stb;
  wire m_wb_we;
  wire o_axi_arready;
  wire o_axi_awready;
  wire o_axi_bvalid_reg;
  wire o_axi_rvalid_reg;
  wire o_axi_wready;
  wire [25:0]o_wb_addr;
  wire r_a_owner;
  wire r_wb_stb;
  wire s_axi_aclk;
  wire [25:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_aresetn_0;
  wire s_axi_arvalid;
  wire [25:0]s_axi_awaddr;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire [1:0]s_axi_rresp;
  wire [31:0]s_axi_wdata;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire [3:0]w_wb_sel;
  wire w_wb_stb;
  wire wb_outstanding;
  wire wb_pending;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_wbarbiter \ARB_WB.readorwrite 
       (.\ALT.last_owner (\ALT.last_owner ),
        .\ALT.last_owner_reg_0 (\AXI_WR.axi_write_decoder_n_8 ),
        .\ALT.r_a_owner_reg_0 (\AXI_WR.axi_write_decoder_n_7 ),
        .E(wb_outstanding),
        .Q(w_wb_sel),
        .m_wb_ack(m_wb_ack),
        .m_wb_sel(m_wb_sel),
        .m_wb_stall(m_wb_stall),
        .m_wb_we(m_wb_we),
        .r_a_owner(r_a_owner),
        .s_axi_aclk(s_axi_aclk),
        .w_wb_stb(w_wb_stb));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axilrd2wbsp \AXI_RD.axi_read_decoder 
       (.Q(o_wb_addr),
        .m_wb_ack(m_wb_ack),
        .m_wb_adr(m_wb_adr),
        .m_wb_dat_r(m_wb_dat_r),
        .m_wb_err(m_wb_err),
        .m_wb_stall(m_wb_stall),
        .m_wb_stb(m_wb_stb),
        .o_axi_arready_reg_0(o_axi_arready),
        .o_axi_rvalid_reg_0(o_axi_rvalid_reg),
        .r_a_owner(r_a_owner),
        .\r_last_reg[0]_0 (s_axi_aresetn_0),
        .r_wb_stb(r_wb_stb),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .w_wb_stb(w_wb_stb),
        .wb_pending(wb_pending));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axilwr2wbsp \AXI_WR.axi_write_decoder 
       (.\ALT.last_owner (\ALT.last_owner ),
        .E(wb_outstanding),
        .Q(w_wb_sel),
        .m_wb_ack(m_wb_ack),
        .m_wb_cyc(m_wb_cyc),
        .m_wb_dat_w(m_wb_dat_w),
        .m_wb_err(m_wb_err),
        .m_wb_stall(m_wb_stall),
        .o_axi_awready_reg_0(o_axi_awready),
        .o_axi_bvalid_reg_0(o_axi_bvalid_reg),
        .o_axi_wready_reg_0(o_axi_wready),
        .\o_wb_addr_reg[25]_0 (o_wb_addr),
        .r_a_owner(r_a_owner),
        .r_wb_stb(r_wb_stb),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_aresetn_0(s_axi_aresetn_0),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid),
        .w_wb_stb(w_wb_stb),
        .wb_pending(wb_pending),
        .wb_pending_reg_0(\AXI_WR.axi_write_decoder_n_7 ),
        .wb_pending_reg_1(\AXI_WR.axi_write_decoder_n_8 ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axlite2wbsp_wrapper
   (s_axi_rdata,
    o_axi_awready,
    m_wb_reset,
    o_axi_bvalid_reg,
    o_axi_wready,
    o_axi_rvalid_reg,
    o_axi_arready,
    m_wb_dat_w,
    s_axi_rresp,
    m_wb_cyc,
    m_wb_we,
    m_wb_stb,
    m_wb_sel,
    m_wb_adr,
    s_axi_bresp,
    s_axi_aclk,
    m_wb_dat_r,
    m_wb_ack,
    m_wb_err,
    m_wb_stall,
    s_axi_bready,
    s_axi_wstrb,
    s_axi_rready,
    s_axi_awaddr,
    s_axi_araddr,
    s_axi_wdata,
    s_axi_aresetn,
    s_axi_awvalid,
    s_axi_wvalid,
    s_axi_arvalid);
  output [31:0]s_axi_rdata;
  output o_axi_awready;
  output m_wb_reset;
  output o_axi_bvalid_reg;
  output o_axi_wready;
  output o_axi_rvalid_reg;
  output o_axi_arready;
  output [31:0]m_wb_dat_w;
  output [1:0]s_axi_rresp;
  output m_wb_cyc;
  output m_wb_we;
  output m_wb_stb;
  output [3:0]m_wb_sel;
  output [25:0]m_wb_adr;
  output [1:0]s_axi_bresp;
  input s_axi_aclk;
  input [31:0]m_wb_dat_r;
  input m_wb_ack;
  input m_wb_err;
  input m_wb_stall;
  input s_axi_bready;
  input [3:0]s_axi_wstrb;
  input s_axi_rready;
  input [25:0]s_axi_awaddr;
  input [25:0]s_axi_araddr;
  input [31:0]s_axi_wdata;
  input s_axi_aresetn;
  input s_axi_awvalid;
  input s_axi_wvalid;
  input s_axi_arvalid;

  wire m_wb_ack;
  wire [25:0]m_wb_adr;
  wire m_wb_cyc;
  wire [31:0]m_wb_dat_r;
  wire [31:0]m_wb_dat_w;
  wire m_wb_err;
  wire m_wb_reset;
  wire [3:0]m_wb_sel;
  wire m_wb_stall;
  wire m_wb_stb;
  wire m_wb_we;
  wire o_axi_arready;
  wire o_axi_awready;
  wire o_axi_bvalid_reg;
  wire o_axi_rvalid_reg;
  wire o_axi_wready;
  wire s_axi_aclk;
  wire [25:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arvalid;
  wire [25:0]s_axi_awaddr;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire [1:0]s_axi_rresp;
  wire [31:0]s_axi_wdata;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axlite2wbsp axlite2wbsp
       (.m_wb_ack(m_wb_ack),
        .m_wb_adr(m_wb_adr),
        .m_wb_cyc(m_wb_cyc),
        .m_wb_dat_r(m_wb_dat_r),
        .m_wb_dat_w(m_wb_dat_w),
        .m_wb_err(m_wb_err),
        .m_wb_sel(m_wb_sel),
        .m_wb_stall(m_wb_stall),
        .m_wb_stb(m_wb_stb),
        .m_wb_we(m_wb_we),
        .o_axi_arready(o_axi_arready),
        .o_axi_awready(o_axi_awready),
        .o_axi_bvalid_reg(o_axi_bvalid_reg),
        .o_axi_rvalid_reg(o_axi_rvalid_reg),
        .o_axi_wready(o_axi_wready),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_aresetn_0(m_wb_reset),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

(* CHECK_LICENSE_TYPE = "embsys_axlite2wbsp_0_0,axlite2wbsp_wrapper,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "package_project" *) 
(* x_core_info = "axlite2wbsp_wrapper,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (s_axi_aclk,
    s_axi_aresetn,
    s_axi_awready,
    s_axi_awaddr,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awvalid,
    s_axi_wready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arready,
    s_axi_araddr,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arvalid,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rdata,
    s_axi_rready,
    m_wb_reset,
    m_wb_cyc,
    m_wb_stb,
    m_wb_we,
    m_wb_adr,
    m_wb_dat_w,
    m_wb_sel,
    m_wb_ack,
    m_wb_stall,
    m_wb_dat_r,
    m_wb_err);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 s_axi_aclk CLK" *) (* x_interface_mode = "slave s_axi_aclk" *) (* x_interface_parameter = "XIL_INTERFACENAME s_axi_aclk, ASSOCIATED_BUSIF s_axi, ASSOCIATED_RESET s_axi_aresetn, FREQ_TOLERANCE_HZ -1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN embsys_Clk, INSERT_VIP 0" *) input s_axi_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 s_axi_aresetn RST" *) (* x_interface_mode = "slave s_axi_aresetn" *) (* x_interface_parameter = "XIL_INTERFACENAME s_axi_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s_axi_aresetn;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi AWREADY" *) (* x_interface_mode = "slave s_axi" *) (* x_interface_parameter = "XIL_INTERFACENAME s_axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 28, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN embsys_Clk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) output s_axi_awready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi AWADDR" *) input [27:0]s_axi_awaddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi AWCACHE" *) input [3:0]s_axi_awcache;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi AWPROT" *) input [2:0]s_axi_awprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi AWVALID" *) input s_axi_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi WREADY" *) output s_axi_wready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi WDATA" *) input [31:0]s_axi_wdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi WSTRB" *) input [3:0]s_axi_wstrb;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi WVALID" *) input s_axi_wvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi BRESP" *) output [1:0]s_axi_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi BVALID" *) output s_axi_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi BREADY" *) input s_axi_bready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi ARREADY" *) output s_axi_arready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi ARADDR" *) input [27:0]s_axi_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi ARCACHE" *) input [3:0]s_axi_arcache;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi ARPROT" *) input [2:0]s_axi_arprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi ARVALID" *) input s_axi_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi RRESP" *) output [1:0]s_axi_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi RVALID" *) output s_axi_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) output [31:0]s_axi_rdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi RREADY" *) input s_axi_rready;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 m_wb_reset RST" *) (* x_interface_mode = "master m_wb_reset" *) (* x_interface_parameter = "XIL_INTERFACENAME m_wb_reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) output m_wb_reset;
  output m_wb_cyc;
  output m_wb_stb;
  output m_wb_we;
  output [25:0]m_wb_adr;
  output [31:0]m_wb_dat_w;
  output [3:0]m_wb_sel;
  input m_wb_ack;
  input m_wb_stall;
  input [31:0]m_wb_dat_r;
  input m_wb_err;

  wire m_wb_ack;
  wire [25:0]m_wb_adr;
  wire m_wb_cyc;
  wire [31:0]m_wb_dat_r;
  wire [31:0]m_wb_dat_w;
  wire m_wb_err;
  wire m_wb_reset;
  wire [3:0]m_wb_sel;
  wire m_wb_stall;
  wire m_wb_stb;
  wire m_wb_we;
  wire s_axi_aclk;
  wire [27:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [27:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire [1:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axlite2wbsp_wrapper U0
       (.m_wb_ack(m_wb_ack),
        .m_wb_adr(m_wb_adr),
        .m_wb_cyc(m_wb_cyc),
        .m_wb_dat_r(m_wb_dat_r),
        .m_wb_dat_w(m_wb_dat_w),
        .m_wb_err(m_wb_err),
        .m_wb_reset(m_wb_reset),
        .m_wb_sel(m_wb_sel),
        .m_wb_stall(m_wb_stall),
        .m_wb_stb(m_wb_stb),
        .m_wb_we(m_wb_we),
        .o_axi_arready(s_axi_arready),
        .o_axi_awready(s_axi_awready),
        .o_axi_bvalid_reg(s_axi_bvalid),
        .o_axi_rvalid_reg(s_axi_rvalid),
        .o_axi_wready(s_axi_wready),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr[27:2]),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr[27:2]),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_wbarbiter
   (\ALT.last_owner ,
    r_a_owner,
    E,
    m_wb_we,
    m_wb_sel,
    \ALT.last_owner_reg_0 ,
    s_axi_aclk,
    \ALT.r_a_owner_reg_0 ,
    m_wb_ack,
    m_wb_stall,
    w_wb_stb,
    Q);
  output \ALT.last_owner ;
  output r_a_owner;
  output [0:0]E;
  output m_wb_we;
  output [3:0]m_wb_sel;
  input \ALT.last_owner_reg_0 ;
  input s_axi_aclk;
  input \ALT.r_a_owner_reg_0 ;
  input m_wb_ack;
  input m_wb_stall;
  input w_wb_stb;
  input [3:0]Q;

  wire \ALT.last_owner ;
  wire \ALT.last_owner_reg_0 ;
  wire \ALT.r_a_owner_reg_0 ;
  wire [0:0]E;
  wire [3:0]Q;
  wire m_wb_ack;
  wire [3:0]m_wb_sel;
  wire m_wb_stall;
  wire m_wb_we;
  wire r_a_owner;
  wire s_axi_aclk;
  wire w_wb_stb;

  FDRE #(
    .INIT(1'b0)) 
    \ALT.last_owner_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\ALT.last_owner_reg_0 ),
        .Q(\ALT.last_owner ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \ALT.r_a_owner_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\ALT.r_a_owner_reg_0 ),
        .Q(r_a_owner),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \m_wb_sel[0]_INST_0 
       (.I0(r_a_owner),
        .I1(Q[0]),
        .O(m_wb_sel[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \m_wb_sel[1]_INST_0 
       (.I0(r_a_owner),
        .I1(Q[1]),
        .O(m_wb_sel[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \m_wb_sel[2]_INST_0 
       (.I0(r_a_owner),
        .I1(Q[2]),
        .O(m_wb_sel[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \m_wb_sel[3]_INST_0 
       (.I0(r_a_owner),
        .I1(Q[3]),
        .O(m_wb_sel[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT1 #(
    .INIT(2'h1)) 
    m_wb_we_INST_0
       (.I0(r_a_owner),
        .O(m_wb_we));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h2122)) 
    wb_pending_i_2
       (.I0(m_wb_ack),
        .I1(r_a_owner),
        .I2(m_wb_stall),
        .I3(w_wb_stb),
        .O(E));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
