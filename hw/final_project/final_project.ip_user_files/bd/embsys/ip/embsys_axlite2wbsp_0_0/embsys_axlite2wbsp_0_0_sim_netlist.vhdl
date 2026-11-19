-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
-- Date        : Mon Oct 19 14:56:08 2026
-- Host        : archlinux running 64-bit unknown
-- Command     : write_vhdl -force -mode funcsim -rename_top embsys_axlite2wbsp_0_0 -prefix
--               embsys_axlite2wbsp_0_0_ embsys_axlite2wbsp_0_0_sim_netlist.vhdl
-- Design      : embsys_axlite2wbsp_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity embsys_axlite2wbsp_0_0_axilrd2wbsp is
  port (
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    wb_pending : out STD_LOGIC;
    o_axi_arready_reg_0 : out STD_LOGIC;
    r_wb_stb : out STD_LOGIC;
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    o_axi_rvalid_reg_0 : out STD_LOGIC;
    m_wb_stb : out STD_LOGIC;
    m_wb_adr : out STD_LOGIC_VECTOR ( 25 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    m_wb_dat_r : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \r_last_reg[0]_0\ : in STD_LOGIC;
    m_wb_ack : in STD_LOGIC;
    m_wb_err : in STD_LOGIC;
    r_a_owner : in STD_LOGIC;
    m_wb_stall : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 25 downto 0 );
    w_wb_stb : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 25 downto 0 )
  );
end embsys_axlite2wbsp_0_0_axilrd2wbsp;

architecture STRUCTURE of embsys_axlite2wbsp_0_0_axilrd2wbsp is
  signal dfifo_reg_0_15_30_31_i_1_n_0 : STD_LOGIC;
  signal \err_loc_reg_n_0_[0]\ : STD_LOGIC;
  signal \err_loc_reg_n_0_[1]\ : STD_LOGIC;
  signal \err_loc_reg_n_0_[2]\ : STD_LOGIC;
  signal \err_loc_reg_n_0_[3]\ : STD_LOGIC;
  signal \err_loc_reg_n_0_[4]\ : STD_LOGIC;
  signal err_state : STD_LOGIC;
  signal \err_state_i_1__0_n_0\ : STD_LOGIC;
  signal \err_state_i_2__0_n_0\ : STD_LOGIC;
  signal \err_state_i_3__0_n_0\ : STD_LOGIC;
  signal fifo_full : STD_LOGIC;
  signal \fifo_full_i_1__0_n_0\ : STD_LOGIC;
  signal next_last : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal o_axi_arready4_out : STD_LOGIC;
  signal o_axi_arready_i_2_n_0 : STD_LOGIC;
  signal o_axi_arready_i_3_n_0 : STD_LOGIC;
  signal o_axi_arready_i_4_n_0 : STD_LOGIC;
  signal o_axi_arready_i_5_n_0 : STD_LOGIC;
  signal o_axi_arready_i_6_n_0 : STD_LOGIC;
  signal \^o_axi_arready_reg_0\ : STD_LOGIC;
  signal \o_axi_rresp[0]_i_1_n_0\ : STD_LOGIC;
  signal \o_axi_rresp[0]_i_2_n_0\ : STD_LOGIC;
  signal \o_axi_rresp[0]_i_3_n_0\ : STD_LOGIC;
  signal \o_axi_rresp[0]_i_4_n_0\ : STD_LOGIC;
  signal \o_axi_rresp[1]_i_10_n_0\ : STD_LOGIC;
  signal \o_axi_rresp[1]_i_1_n_0\ : STD_LOGIC;
  signal \o_axi_rresp[1]_i_2_n_0\ : STD_LOGIC;
  signal \o_axi_rresp[1]_i_3_n_0\ : STD_LOGIC;
  signal \o_axi_rresp[1]_i_4_n_0\ : STD_LOGIC;
  signal \o_axi_rresp[1]_i_5_n_0\ : STD_LOGIC;
  signal \o_axi_rresp[1]_i_6_n_0\ : STD_LOGIC;
  signal \o_axi_rresp[1]_i_7_n_0\ : STD_LOGIC;
  signal \o_axi_rresp[1]_i_8_n_0\ : STD_LOGIC;
  signal \o_axi_rresp[1]_i_9_n_0\ : STD_LOGIC;
  signal o_axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal o_axi_rvalid_i_2_n_0 : STD_LOGIC;
  signal o_axi_rvalid_i_3_n_0 : STD_LOGIC;
  signal o_axi_rvalid_i_5_n_0 : STD_LOGIC;
  signal o_axi_rvalid_i_6_n_0 : STD_LOGIC;
  signal o_axi_rvalid_i_7_n_0 : STD_LOGIC;
  signal o_axi_rvalid_i_8_n_0 : STD_LOGIC;
  signal o_axi_rvalid_i_9_n_0 : STD_LOGIC;
  signal \^o_axi_rvalid_reg_0\ : STD_LOGIC;
  signal \o_wb_addr[0]_i_1_n_0\ : STD_LOGIC;
  signal \o_wb_addr[10]_i_1_n_0\ : STD_LOGIC;
  signal \o_wb_addr[11]_i_1_n_0\ : STD_LOGIC;
  signal \o_wb_addr[12]_i_1_n_0\ : STD_LOGIC;
  signal \o_wb_addr[13]_i_1_n_0\ : STD_LOGIC;
  signal \o_wb_addr[14]_i_1_n_0\ : STD_LOGIC;
  signal \o_wb_addr[15]_i_1_n_0\ : STD_LOGIC;
  signal \o_wb_addr[16]_i_1_n_0\ : STD_LOGIC;
  signal \o_wb_addr[17]_i_1_n_0\ : STD_LOGIC;
  signal \o_wb_addr[18]_i_1_n_0\ : STD_LOGIC;
  signal \o_wb_addr[19]_i_1_n_0\ : STD_LOGIC;
  signal \o_wb_addr[1]_i_1_n_0\ : STD_LOGIC;
  signal \o_wb_addr[20]_i_1_n_0\ : STD_LOGIC;
  signal \o_wb_addr[21]_i_1_n_0\ : STD_LOGIC;
  signal \o_wb_addr[22]_i_1_n_0\ : STD_LOGIC;
  signal \o_wb_addr[23]_i_1_n_0\ : STD_LOGIC;
  signal \o_wb_addr[24]_i_1_n_0\ : STD_LOGIC;
  signal \o_wb_addr[25]_i_1_n_0\ : STD_LOGIC;
  signal \o_wb_addr[25]_i_2_n_0\ : STD_LOGIC;
  signal \o_wb_addr[2]_i_1_n_0\ : STD_LOGIC;
  signal \o_wb_addr[3]_i_1_n_0\ : STD_LOGIC;
  signal \o_wb_addr[4]_i_1_n_0\ : STD_LOGIC;
  signal \o_wb_addr[5]_i_1_n_0\ : STD_LOGIC;
  signal \o_wb_addr[6]_i_1_n_0\ : STD_LOGIC;
  signal \o_wb_addr[7]_i_1_n_0\ : STD_LOGIC;
  signal \o_wb_addr[8]_i_1_n_0\ : STD_LOGIC;
  signal \o_wb_addr[9]_i_1_n_0\ : STD_LOGIC;
  signal \o_wb_addr_reg_n_0_[0]\ : STD_LOGIC;
  signal \o_wb_addr_reg_n_0_[10]\ : STD_LOGIC;
  signal \o_wb_addr_reg_n_0_[11]\ : STD_LOGIC;
  signal \o_wb_addr_reg_n_0_[12]\ : STD_LOGIC;
  signal \o_wb_addr_reg_n_0_[13]\ : STD_LOGIC;
  signal \o_wb_addr_reg_n_0_[14]\ : STD_LOGIC;
  signal \o_wb_addr_reg_n_0_[15]\ : STD_LOGIC;
  signal \o_wb_addr_reg_n_0_[16]\ : STD_LOGIC;
  signal \o_wb_addr_reg_n_0_[17]\ : STD_LOGIC;
  signal \o_wb_addr_reg_n_0_[18]\ : STD_LOGIC;
  signal \o_wb_addr_reg_n_0_[19]\ : STD_LOGIC;
  signal \o_wb_addr_reg_n_0_[1]\ : STD_LOGIC;
  signal \o_wb_addr_reg_n_0_[20]\ : STD_LOGIC;
  signal \o_wb_addr_reg_n_0_[21]\ : STD_LOGIC;
  signal \o_wb_addr_reg_n_0_[22]\ : STD_LOGIC;
  signal \o_wb_addr_reg_n_0_[23]\ : STD_LOGIC;
  signal \o_wb_addr_reg_n_0_[24]\ : STD_LOGIC;
  signal \o_wb_addr_reg_n_0_[25]\ : STD_LOGIC;
  signal \o_wb_addr_reg_n_0_[2]\ : STD_LOGIC;
  signal \o_wb_addr_reg_n_0_[3]\ : STD_LOGIC;
  signal \o_wb_addr_reg_n_0_[4]\ : STD_LOGIC;
  signal \o_wb_addr_reg_n_0_[5]\ : STD_LOGIC;
  signal \o_wb_addr_reg_n_0_[6]\ : STD_LOGIC;
  signal \o_wb_addr_reg_n_0_[7]\ : STD_LOGIC;
  signal \o_wb_addr_reg_n_0_[8]\ : STD_LOGIC;
  signal \o_wb_addr_reg_n_0_[9]\ : STD_LOGIC;
  signal o_wb_stb2 : STD_LOGIC;
  signal \o_wb_stb_i_1__0_n_0\ : STD_LOGIC;
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \p_0_in__0_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \p_0_in__0__0\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \r_addr_reg_n_0_[0]\ : STD_LOGIC;
  signal \r_addr_reg_n_0_[10]\ : STD_LOGIC;
  signal \r_addr_reg_n_0_[11]\ : STD_LOGIC;
  signal \r_addr_reg_n_0_[12]\ : STD_LOGIC;
  signal \r_addr_reg_n_0_[13]\ : STD_LOGIC;
  signal \r_addr_reg_n_0_[14]\ : STD_LOGIC;
  signal \r_addr_reg_n_0_[15]\ : STD_LOGIC;
  signal \r_addr_reg_n_0_[16]\ : STD_LOGIC;
  signal \r_addr_reg_n_0_[17]\ : STD_LOGIC;
  signal \r_addr_reg_n_0_[18]\ : STD_LOGIC;
  signal \r_addr_reg_n_0_[19]\ : STD_LOGIC;
  signal \r_addr_reg_n_0_[1]\ : STD_LOGIC;
  signal \r_addr_reg_n_0_[20]\ : STD_LOGIC;
  signal \r_addr_reg_n_0_[21]\ : STD_LOGIC;
  signal \r_addr_reg_n_0_[22]\ : STD_LOGIC;
  signal \r_addr_reg_n_0_[23]\ : STD_LOGIC;
  signal \r_addr_reg_n_0_[24]\ : STD_LOGIC;
  signal \r_addr_reg_n_0_[25]\ : STD_LOGIC;
  signal \r_addr_reg_n_0_[2]\ : STD_LOGIC;
  signal \r_addr_reg_n_0_[3]\ : STD_LOGIC;
  signal \r_addr_reg_n_0_[4]\ : STD_LOGIC;
  signal \r_addr_reg_n_0_[5]\ : STD_LOGIC;
  signal \r_addr_reg_n_0_[6]\ : STD_LOGIC;
  signal \r_addr_reg_n_0_[7]\ : STD_LOGIC;
  signal \r_addr_reg_n_0_[8]\ : STD_LOGIC;
  signal \r_addr_reg_n_0_[9]\ : STD_LOGIC;
  signal \r_first[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \r_first[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \r_first[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \r_first[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \r_first[4]_i_2__0_n_0\ : STD_LOGIC;
  signal r_first_reg : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \r_last[4]_i_2__0_n_0\ : STD_LOGIC;
  signal r_last_reg : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal r_mid111_out : STD_LOGIC;
  signal \r_mid[4]_i_1_n_0\ : STD_LOGIC;
  signal \r_mid[4]_i_3__0_n_0\ : STD_LOGIC;
  signal \r_mid[4]_i_4__0_n_0\ : STD_LOGIC;
  signal \r_mid_reg_n_0_[0]\ : STD_LOGIC;
  signal \r_mid_reg_n_0_[1]\ : STD_LOGIC;
  signal \r_mid_reg_n_0_[2]\ : STD_LOGIC;
  signal \r_mid_reg_n_0_[3]\ : STD_LOGIC;
  signal \r_mid_reg_n_0_[4]\ : STD_LOGIC;
  signal r_stb : STD_LOGIC;
  signal r_stb0 : STD_LOGIC;
  signal r_stb_i_1_n_0 : STD_LOGIC;
  signal r_stb_i_2_n_0 : STD_LOGIC;
  signal r_stb_i_3_n_0 : STD_LOGIC;
  signal \^r_wb_stb\ : STD_LOGIC;
  signal \^s_axi_rresp\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal wb_outstanding : STD_LOGIC;
  signal \wb_outstanding__0\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal wb_outstanding_reg : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal \wb_outstanding_reg_n_0_[0]\ : STD_LOGIC;
  signal \^wb_pending\ : STD_LOGIC;
  signal wb_pending0 : STD_LOGIC;
  signal \wb_pending_i_3__0_n_0\ : STD_LOGIC;
  signal \wb_pending_i_4__0_n_0\ : STD_LOGIC;
  signal NLW_dfifo_reg_0_15_0_5_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_dfifo_reg_0_15_12_17_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_dfifo_reg_0_15_18_23_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_dfifo_reg_0_15_24_29_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_dfifo_reg_0_15_30_31_SPO_UNCONNECTED : STD_LOGIC;
  signal \NLW_dfifo_reg_0_15_30_31__0_SPO_UNCONNECTED\ : STD_LOGIC;
  signal NLW_dfifo_reg_0_15_6_11_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of dfifo_reg_0_15_0_5 : label is "";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of dfifo_reg_0_15_0_5 : label is 512;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of dfifo_reg_0_15_0_5 : label is "embsys_axlite2wbsp_0_0/U0/axlite2wbsp/AXI_RD.axi_read_decoder/dfifo_reg";
  attribute RTL_RAM_STYLE : string;
  attribute RTL_RAM_STYLE of dfifo_reg_0_15_0_5 : label is "auto";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of dfifo_reg_0_15_0_5 : label is "RAM_SDP";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of dfifo_reg_0_15_0_5 : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of dfifo_reg_0_15_0_5 : label is 15;
  attribute ram_offset : integer;
  attribute ram_offset of dfifo_reg_0_15_0_5 : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of dfifo_reg_0_15_0_5 : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of dfifo_reg_0_15_0_5 : label is 5;
  attribute METHODOLOGY_DRC_VIOS of dfifo_reg_0_15_12_17 : label is "";
  attribute RTL_RAM_BITS of dfifo_reg_0_15_12_17 : label is 512;
  attribute RTL_RAM_NAME of dfifo_reg_0_15_12_17 : label is "embsys_axlite2wbsp_0_0/U0/axlite2wbsp/AXI_RD.axi_read_decoder/dfifo_reg";
  attribute RTL_RAM_STYLE of dfifo_reg_0_15_12_17 : label is "auto";
  attribute RTL_RAM_TYPE of dfifo_reg_0_15_12_17 : label is "RAM_SDP";
  attribute ram_addr_begin of dfifo_reg_0_15_12_17 : label is 0;
  attribute ram_addr_end of dfifo_reg_0_15_12_17 : label is 15;
  attribute ram_offset of dfifo_reg_0_15_12_17 : label is 0;
  attribute ram_slice_begin of dfifo_reg_0_15_12_17 : label is 12;
  attribute ram_slice_end of dfifo_reg_0_15_12_17 : label is 17;
  attribute METHODOLOGY_DRC_VIOS of dfifo_reg_0_15_18_23 : label is "";
  attribute RTL_RAM_BITS of dfifo_reg_0_15_18_23 : label is 512;
  attribute RTL_RAM_NAME of dfifo_reg_0_15_18_23 : label is "embsys_axlite2wbsp_0_0/U0/axlite2wbsp/AXI_RD.axi_read_decoder/dfifo_reg";
  attribute RTL_RAM_STYLE of dfifo_reg_0_15_18_23 : label is "auto";
  attribute RTL_RAM_TYPE of dfifo_reg_0_15_18_23 : label is "RAM_SDP";
  attribute ram_addr_begin of dfifo_reg_0_15_18_23 : label is 0;
  attribute ram_addr_end of dfifo_reg_0_15_18_23 : label is 15;
  attribute ram_offset of dfifo_reg_0_15_18_23 : label is 0;
  attribute ram_slice_begin of dfifo_reg_0_15_18_23 : label is 18;
  attribute ram_slice_end of dfifo_reg_0_15_18_23 : label is 23;
  attribute METHODOLOGY_DRC_VIOS of dfifo_reg_0_15_24_29 : label is "";
  attribute RTL_RAM_BITS of dfifo_reg_0_15_24_29 : label is 512;
  attribute RTL_RAM_NAME of dfifo_reg_0_15_24_29 : label is "embsys_axlite2wbsp_0_0/U0/axlite2wbsp/AXI_RD.axi_read_decoder/dfifo_reg";
  attribute RTL_RAM_STYLE of dfifo_reg_0_15_24_29 : label is "auto";
  attribute RTL_RAM_TYPE of dfifo_reg_0_15_24_29 : label is "RAM_SDP";
  attribute ram_addr_begin of dfifo_reg_0_15_24_29 : label is 0;
  attribute ram_addr_end of dfifo_reg_0_15_24_29 : label is 15;
  attribute ram_offset of dfifo_reg_0_15_24_29 : label is 0;
  attribute ram_slice_begin of dfifo_reg_0_15_24_29 : label is 24;
  attribute ram_slice_end of dfifo_reg_0_15_24_29 : label is 29;
  attribute METHODOLOGY_DRC_VIOS of dfifo_reg_0_15_30_31 : label is "";
  attribute RTL_RAM_BITS of dfifo_reg_0_15_30_31 : label is 512;
  attribute RTL_RAM_NAME of dfifo_reg_0_15_30_31 : label is "embsys_axlite2wbsp_0_0/U0/axlite2wbsp/AXI_RD.axi_read_decoder/dfifo_reg_0_15_30_31";
  attribute RTL_RAM_STYLE of dfifo_reg_0_15_30_31 : label is "NONE";
  attribute RTL_RAM_TYPE of dfifo_reg_0_15_30_31 : label is "RAM_SDP";
  attribute ram_addr_begin of dfifo_reg_0_15_30_31 : label is 0;
  attribute ram_addr_end of dfifo_reg_0_15_30_31 : label is 15;
  attribute ram_offset of dfifo_reg_0_15_30_31 : label is 0;
  attribute ram_slice_begin of dfifo_reg_0_15_30_31 : label is 30;
  attribute ram_slice_end of dfifo_reg_0_15_30_31 : label is 31;
  attribute METHODOLOGY_DRC_VIOS of \dfifo_reg_0_15_30_31__0\ : label is "";
  attribute RTL_RAM_BITS of \dfifo_reg_0_15_30_31__0\ : label is 512;
  attribute RTL_RAM_NAME of \dfifo_reg_0_15_30_31__0\ : label is "embsys_axlite2wbsp_0_0/U0/axlite2wbsp/AXI_RD.axi_read_decoder/dfifo_reg_0_15_30_31";
  attribute RTL_RAM_STYLE of \dfifo_reg_0_15_30_31__0\ : label is "NONE";
  attribute RTL_RAM_TYPE of \dfifo_reg_0_15_30_31__0\ : label is "RAM_SDP";
  attribute ram_addr_begin of \dfifo_reg_0_15_30_31__0\ : label is 0;
  attribute ram_addr_end of \dfifo_reg_0_15_30_31__0\ : label is 15;
  attribute ram_offset of \dfifo_reg_0_15_30_31__0\ : label is 0;
  attribute ram_slice_begin of \dfifo_reg_0_15_30_31__0\ : label is 30;
  attribute ram_slice_end of \dfifo_reg_0_15_30_31__0\ : label is 31;
  attribute METHODOLOGY_DRC_VIOS of dfifo_reg_0_15_6_11 : label is "";
  attribute RTL_RAM_BITS of dfifo_reg_0_15_6_11 : label is 512;
  attribute RTL_RAM_NAME of dfifo_reg_0_15_6_11 : label is "embsys_axlite2wbsp_0_0/U0/axlite2wbsp/AXI_RD.axi_read_decoder/dfifo_reg";
  attribute RTL_RAM_STYLE of dfifo_reg_0_15_6_11 : label is "auto";
  attribute RTL_RAM_TYPE of dfifo_reg_0_15_6_11 : label is "RAM_SDP";
  attribute ram_addr_begin of dfifo_reg_0_15_6_11 : label is 0;
  attribute ram_addr_end of dfifo_reg_0_15_6_11 : label is 15;
  attribute ram_offset of dfifo_reg_0_15_6_11 : label is 0;
  attribute ram_slice_begin of dfifo_reg_0_15_6_11 : label is 6;
  attribute ram_slice_end of dfifo_reg_0_15_6_11 : label is 11;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \err_state_i_3__0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \m_wb_adr[0]_INST_0\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \m_wb_adr[10]_INST_0\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \m_wb_adr[11]_INST_0\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \m_wb_adr[12]_INST_0\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \m_wb_adr[13]_INST_0\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \m_wb_adr[14]_INST_0\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \m_wb_adr[15]_INST_0\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \m_wb_adr[16]_INST_0\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \m_wb_adr[17]_INST_0\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \m_wb_adr[18]_INST_0\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \m_wb_adr[19]_INST_0\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \m_wb_adr[1]_INST_0\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \m_wb_adr[20]_INST_0\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \m_wb_adr[21]_INST_0\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \m_wb_adr[22]_INST_0\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \m_wb_adr[23]_INST_0\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \m_wb_adr[24]_INST_0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \m_wb_adr[25]_INST_0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \m_wb_adr[2]_INST_0\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \m_wb_adr[3]_INST_0\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \m_wb_adr[4]_INST_0\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \m_wb_adr[5]_INST_0\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \m_wb_adr[6]_INST_0\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \m_wb_adr[7]_INST_0\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \m_wb_adr[8]_INST_0\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \m_wb_adr[9]_INST_0\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of m_wb_stb_INST_0 : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of o_axi_arready_i_3 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of o_axi_arready_i_4 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of o_axi_arready_i_5 : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \o_axi_rresp[0]_i_4\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \o_axi_rresp[1]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \o_axi_rresp[1]_i_7\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \o_axi_rresp[1]_i_9\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of o_axi_rvalid_i_4 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of o_axi_rvalid_i_6 : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of o_axi_rvalid_i_8 : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of o_axi_rvalid_i_9 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \r_first[1]_i_1__0\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \r_first[2]_i_1__0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \r_first[3]_i_1__0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \r_first[4]_i_2__0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \r_last[0]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \r_last[1]_i_1__0\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \r_last[2]_i_1__0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \r_last[3]_i_1__0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \r_last[4]_i_2__0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \r_mid[1]_i_1__0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \r_mid[2]_i_1__0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \r_mid[3]_i_1__0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \r_mid[4]_i_2__0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of r_stb_i_2 : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \wb_outstanding[0]_i_1__0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \wb_outstanding[1]_i_1__0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \wb_outstanding[2]_i_1__0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \wb_outstanding[3]_i_1__0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \wb_pending_i_4__0\ : label is "soft_lutpair5";
begin
  o_axi_arready_reg_0 <= \^o_axi_arready_reg_0\;
  o_axi_rvalid_reg_0 <= \^o_axi_rvalid_reg_0\;
  r_wb_stb <= \^r_wb_stb\;
  s_axi_rresp(1 downto 0) <= \^s_axi_rresp\(1 downto 0);
  wb_pending <= \^wb_pending\;
dfifo_reg_0_15_0_5: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => r_last_reg(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => r_last_reg(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => r_last_reg(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3) => \r_mid_reg_n_0_[3]\,
      ADDRD(2) => \r_mid_reg_n_0_[2]\,
      ADDRD(1) => \r_mid_reg_n_0_[1]\,
      ADDRD(0) => \r_mid_reg_n_0_[0]\,
      DIA(1 downto 0) => m_wb_dat_r(1 downto 0),
      DIB(1 downto 0) => m_wb_dat_r(3 downto 2),
      DIC(1 downto 0) => m_wb_dat_r(5 downto 4),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => s_axi_rdata(1 downto 0),
      DOB(1 downto 0) => s_axi_rdata(3 downto 2),
      DOC(1 downto 0) => s_axi_rdata(5 downto 4),
      DOD(1 downto 0) => NLW_dfifo_reg_0_15_0_5_DOD_UNCONNECTED(1 downto 0),
      WCLK => s_axi_aclk,
      WE => dfifo_reg_0_15_30_31_i_1_n_0
    );
dfifo_reg_0_15_12_17: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => r_last_reg(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => r_last_reg(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => r_last_reg(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3) => \r_mid_reg_n_0_[3]\,
      ADDRD(2) => \r_mid_reg_n_0_[2]\,
      ADDRD(1) => \r_mid_reg_n_0_[1]\,
      ADDRD(0) => \r_mid_reg_n_0_[0]\,
      DIA(1 downto 0) => m_wb_dat_r(13 downto 12),
      DIB(1 downto 0) => m_wb_dat_r(15 downto 14),
      DIC(1 downto 0) => m_wb_dat_r(17 downto 16),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => s_axi_rdata(13 downto 12),
      DOB(1 downto 0) => s_axi_rdata(15 downto 14),
      DOC(1 downto 0) => s_axi_rdata(17 downto 16),
      DOD(1 downto 0) => NLW_dfifo_reg_0_15_12_17_DOD_UNCONNECTED(1 downto 0),
      WCLK => s_axi_aclk,
      WE => dfifo_reg_0_15_30_31_i_1_n_0
    );
dfifo_reg_0_15_18_23: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => r_last_reg(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => r_last_reg(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => r_last_reg(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3) => \r_mid_reg_n_0_[3]\,
      ADDRD(2) => \r_mid_reg_n_0_[2]\,
      ADDRD(1) => \r_mid_reg_n_0_[1]\,
      ADDRD(0) => \r_mid_reg_n_0_[0]\,
      DIA(1 downto 0) => m_wb_dat_r(19 downto 18),
      DIB(1 downto 0) => m_wb_dat_r(21 downto 20),
      DIC(1 downto 0) => m_wb_dat_r(23 downto 22),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => s_axi_rdata(19 downto 18),
      DOB(1 downto 0) => s_axi_rdata(21 downto 20),
      DOC(1 downto 0) => s_axi_rdata(23 downto 22),
      DOD(1 downto 0) => NLW_dfifo_reg_0_15_18_23_DOD_UNCONNECTED(1 downto 0),
      WCLK => s_axi_aclk,
      WE => dfifo_reg_0_15_30_31_i_1_n_0
    );
dfifo_reg_0_15_24_29: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => r_last_reg(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => r_last_reg(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => r_last_reg(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3) => \r_mid_reg_n_0_[3]\,
      ADDRD(2) => \r_mid_reg_n_0_[2]\,
      ADDRD(1) => \r_mid_reg_n_0_[1]\,
      ADDRD(0) => \r_mid_reg_n_0_[0]\,
      DIA(1 downto 0) => m_wb_dat_r(25 downto 24),
      DIB(1 downto 0) => m_wb_dat_r(27 downto 26),
      DIC(1 downto 0) => m_wb_dat_r(29 downto 28),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => s_axi_rdata(25 downto 24),
      DOB(1 downto 0) => s_axi_rdata(27 downto 26),
      DOC(1 downto 0) => s_axi_rdata(29 downto 28),
      DOD(1 downto 0) => NLW_dfifo_reg_0_15_24_29_DOD_UNCONNECTED(1 downto 0),
      WCLK => s_axi_aclk,
      WE => dfifo_reg_0_15_30_31_i_1_n_0
    );
dfifo_reg_0_15_30_31: unisim.vcomponents.RAM32X1D
     port map (
      A0 => \r_mid_reg_n_0_[0]\,
      A1 => \r_mid_reg_n_0_[1]\,
      A2 => \r_mid_reg_n_0_[2]\,
      A3 => \r_mid_reg_n_0_[3]\,
      A4 => '0',
      D => m_wb_dat_r(30),
      DPO => s_axi_rdata(30),
      DPRA0 => r_last_reg(0),
      DPRA1 => r_last_reg(1),
      DPRA2 => r_last_reg(2),
      DPRA3 => r_last_reg(3),
      DPRA4 => '0',
      SPO => NLW_dfifo_reg_0_15_30_31_SPO_UNCONNECTED,
      WCLK => s_axi_aclk,
      WE => dfifo_reg_0_15_30_31_i_1_n_0
    );
\dfifo_reg_0_15_30_31__0\: unisim.vcomponents.RAM32X1D
     port map (
      A0 => \r_mid_reg_n_0_[0]\,
      A1 => \r_mid_reg_n_0_[1]\,
      A2 => \r_mid_reg_n_0_[2]\,
      A3 => \r_mid_reg_n_0_[3]\,
      A4 => '0',
      D => m_wb_dat_r(31),
      DPO => s_axi_rdata(31),
      DPRA0 => r_last_reg(0),
      DPRA1 => r_last_reg(1),
      DPRA2 => r_last_reg(2),
      DPRA3 => r_last_reg(3),
      DPRA4 => '0',
      SPO => \NLW_dfifo_reg_0_15_30_31__0_SPO_UNCONNECTED\,
      WCLK => s_axi_aclk,
      WE => dfifo_reg_0_15_30_31_i_1_n_0
    );
dfifo_reg_0_15_30_31_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E0E0E000"
    )
        port map (
      I0 => m_wb_ack,
      I1 => m_wb_err,
      I2 => r_a_owner,
      I3 => \^wb_pending\,
      I4 => \^r_wb_stb\,
      O => dfifo_reg_0_15_30_31_i_1_n_0
    );
dfifo_reg_0_15_6_11: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => r_last_reg(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => r_last_reg(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => r_last_reg(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3) => \r_mid_reg_n_0_[3]\,
      ADDRD(2) => \r_mid_reg_n_0_[2]\,
      ADDRD(1) => \r_mid_reg_n_0_[1]\,
      ADDRD(0) => \r_mid_reg_n_0_[0]\,
      DIA(1 downto 0) => m_wb_dat_r(7 downto 6),
      DIB(1 downto 0) => m_wb_dat_r(9 downto 8),
      DIC(1 downto 0) => m_wb_dat_r(11 downto 10),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => s_axi_rdata(7 downto 6),
      DOB(1 downto 0) => s_axi_rdata(9 downto 8),
      DOC(1 downto 0) => s_axi_rdata(11 downto 10),
      DOD(1 downto 0) => NLW_dfifo_reg_0_15_6_11_DOD_UNCONNECTED(1 downto 0),
      WCLK => s_axi_aclk,
      WE => dfifo_reg_0_15_30_31_i_1_n_0
    );
\err_loc[4]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8880"
    )
        port map (
      I0 => r_a_owner,
      I1 => m_wb_err,
      I2 => \^r_wb_stb\,
      I3 => \^wb_pending\,
      O => o_wb_stb2
    );
\err_loc_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => o_wb_stb2,
      D => \r_mid_reg_n_0_[0]\,
      Q => \err_loc_reg_n_0_[0]\,
      R => '0'
    );
\err_loc_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => o_wb_stb2,
      D => \r_mid_reg_n_0_[1]\,
      Q => \err_loc_reg_n_0_[1]\,
      R => '0'
    );
\err_loc_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => o_wb_stb2,
      D => \r_mid_reg_n_0_[2]\,
      Q => \err_loc_reg_n_0_[2]\,
      R => '0'
    );
\err_loc_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => o_wb_stb2,
      D => \r_mid_reg_n_0_[3]\,
      Q => \err_loc_reg_n_0_[3]\,
      R => '0'
    );
\err_loc_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => o_wb_stb2,
      D => \r_mid_reg_n_0_[4]\,
      Q => \err_loc_reg_n_0_[4]\,
      R => '0'
    );
\err_state_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFE000000000000"
    )
        port map (
      I0 => \err_state_i_2__0_n_0\,
      I1 => \err_state_i_3__0_n_0\,
      I2 => r_last_reg(1),
      I3 => r_first_reg(1),
      I4 => o_axi_arready_i_4_n_0,
      I5 => s_axi_aresetn,
      O => \err_state_i_1__0_n_0\
    );
\err_state_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => r_first_reg(4),
      I1 => r_last_reg(4),
      I2 => r_first_reg(0),
      I3 => r_last_reg(0),
      I4 => r_first_reg(3),
      I5 => r_last_reg(3),
      O => \err_state_i_2__0_n_0\
    );
\err_state_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => r_first_reg(2),
      I1 => r_last_reg(2),
      O => \err_state_i_3__0_n_0\
    );
err_state_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \err_state_i_1__0_n_0\,
      Q => err_state,
      R => '0'
    );
\fifo_full_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C07F7F7F00404040"
    )
        port map (
      I0 => o_axi_arready_i_2_n_0,
      I1 => s_axi_arvalid,
      I2 => \^o_axi_arready_reg_0\,
      I3 => \^o_axi_rvalid_reg_0\,
      I4 => s_axi_rready,
      I5 => fifo_full,
      O => \fifo_full_i_1__0_n_0\
    );
fifo_full_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \fifo_full_i_1__0_n_0\,
      Q => fifo_full,
      R => \r_last_reg[0]_0\
    );
\m_wb_adr[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \o_wb_addr_reg_n_0_[0]\,
      I1 => r_a_owner,
      I2 => Q(0),
      O => m_wb_adr(0)
    );
\m_wb_adr[10]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \o_wb_addr_reg_n_0_[10]\,
      I1 => r_a_owner,
      I2 => Q(10),
      O => m_wb_adr(10)
    );
\m_wb_adr[11]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \o_wb_addr_reg_n_0_[11]\,
      I1 => r_a_owner,
      I2 => Q(11),
      O => m_wb_adr(11)
    );
\m_wb_adr[12]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \o_wb_addr_reg_n_0_[12]\,
      I1 => r_a_owner,
      I2 => Q(12),
      O => m_wb_adr(12)
    );
\m_wb_adr[13]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \o_wb_addr_reg_n_0_[13]\,
      I1 => r_a_owner,
      I2 => Q(13),
      O => m_wb_adr(13)
    );
\m_wb_adr[14]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \o_wb_addr_reg_n_0_[14]\,
      I1 => r_a_owner,
      I2 => Q(14),
      O => m_wb_adr(14)
    );
\m_wb_adr[15]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \o_wb_addr_reg_n_0_[15]\,
      I1 => r_a_owner,
      I2 => Q(15),
      O => m_wb_adr(15)
    );
\m_wb_adr[16]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \o_wb_addr_reg_n_0_[16]\,
      I1 => r_a_owner,
      I2 => Q(16),
      O => m_wb_adr(16)
    );
\m_wb_adr[17]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \o_wb_addr_reg_n_0_[17]\,
      I1 => r_a_owner,
      I2 => Q(17),
      O => m_wb_adr(17)
    );
\m_wb_adr[18]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \o_wb_addr_reg_n_0_[18]\,
      I1 => r_a_owner,
      I2 => Q(18),
      O => m_wb_adr(18)
    );
\m_wb_adr[19]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \o_wb_addr_reg_n_0_[19]\,
      I1 => r_a_owner,
      I2 => Q(19),
      O => m_wb_adr(19)
    );
\m_wb_adr[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \o_wb_addr_reg_n_0_[1]\,
      I1 => r_a_owner,
      I2 => Q(1),
      O => m_wb_adr(1)
    );
\m_wb_adr[20]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \o_wb_addr_reg_n_0_[20]\,
      I1 => r_a_owner,
      I2 => Q(20),
      O => m_wb_adr(20)
    );
\m_wb_adr[21]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \o_wb_addr_reg_n_0_[21]\,
      I1 => r_a_owner,
      I2 => Q(21),
      O => m_wb_adr(21)
    );
\m_wb_adr[22]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \o_wb_addr_reg_n_0_[22]\,
      I1 => r_a_owner,
      I2 => Q(22),
      O => m_wb_adr(22)
    );
\m_wb_adr[23]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \o_wb_addr_reg_n_0_[23]\,
      I1 => r_a_owner,
      I2 => Q(23),
      O => m_wb_adr(23)
    );
\m_wb_adr[24]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \o_wb_addr_reg_n_0_[24]\,
      I1 => r_a_owner,
      I2 => Q(24),
      O => m_wb_adr(24)
    );
\m_wb_adr[25]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \o_wb_addr_reg_n_0_[25]\,
      I1 => r_a_owner,
      I2 => Q(25),
      O => m_wb_adr(25)
    );
\m_wb_adr[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \o_wb_addr_reg_n_0_[2]\,
      I1 => r_a_owner,
      I2 => Q(2),
      O => m_wb_adr(2)
    );
\m_wb_adr[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \o_wb_addr_reg_n_0_[3]\,
      I1 => r_a_owner,
      I2 => Q(3),
      O => m_wb_adr(3)
    );
\m_wb_adr[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \o_wb_addr_reg_n_0_[4]\,
      I1 => r_a_owner,
      I2 => Q(4),
      O => m_wb_adr(4)
    );
\m_wb_adr[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \o_wb_addr_reg_n_0_[5]\,
      I1 => r_a_owner,
      I2 => Q(5),
      O => m_wb_adr(5)
    );
\m_wb_adr[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \o_wb_addr_reg_n_0_[6]\,
      I1 => r_a_owner,
      I2 => Q(6),
      O => m_wb_adr(6)
    );
\m_wb_adr[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \o_wb_addr_reg_n_0_[7]\,
      I1 => r_a_owner,
      I2 => Q(7),
      O => m_wb_adr(7)
    );
\m_wb_adr[8]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \o_wb_addr_reg_n_0_[8]\,
      I1 => r_a_owner,
      I2 => Q(8),
      O => m_wb_adr(8)
    );
\m_wb_adr[9]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \o_wb_addr_reg_n_0_[9]\,
      I1 => r_a_owner,
      I2 => Q(9),
      O => m_wb_adr(9)
    );
m_wb_stb_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^r_wb_stb\,
      I1 => r_a_owner,
      I2 => w_wb_stb,
      O => m_wb_stb
    );
o_axi_arready_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000F0FB"
    )
        port map (
      I0 => o_axi_arready_i_2_n_0,
      I1 => \p_0_in__0_0\(0),
      I2 => \p_0_in__0__0\(1),
      I3 => fifo_full,
      I4 => o_axi_arready_i_3_n_0,
      I5 => o_axi_arready_i_4_n_0,
      O => o_axi_arready4_out
    );
o_axi_arready_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF69F9FF9"
    )
        port map (
      I0 => r_last_reg(4),
      I1 => r_first_reg(4),
      I2 => r_last_reg(3),
      I3 => r_first_reg(3),
      I4 => o_axi_arready_i_5_n_0,
      I5 => o_axi_arready_i_6_n_0,
      O => o_axi_arready_i_2_n_0
    );
o_axi_arready_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B000B0B0"
    )
        port map (
      I0 => m_wb_stall,
      I1 => r_a_owner,
      I2 => \^r_wb_stb\,
      I3 => s_axi_arvalid,
      I4 => \^o_axi_arready_reg_0\,
      O => o_axi_arready_i_3_n_0
    );
o_axi_arready_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAEAEAAA"
    )
        port map (
      I0 => err_state,
      I1 => r_a_owner,
      I2 => m_wb_err,
      I3 => \^r_wb_stb\,
      I4 => \^wb_pending\,
      O => o_axi_arready_i_4_n_0
    );
o_axi_arready_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => r_first_reg(2),
      I1 => r_first_reg(1),
      I2 => r_first_reg(0),
      O => o_axi_arready_i_5_n_0
    );
o_axi_arready_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB7DEFFFEFFFFB7D"
    )
        port map (
      I0 => r_last_reg(0),
      I1 => r_last_reg(1),
      I2 => r_first_reg(1),
      I3 => r_first_reg(0),
      I4 => r_last_reg(2),
      I5 => r_first_reg(2),
      O => o_axi_arready_i_6_n_0
    );
o_axi_arready_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => o_axi_arready4_out,
      Q => \^o_axi_arready_reg_0\,
      S => \r_last_reg[0]_0\
    );
\o_axi_rresp[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C4C4C4C004000400"
    )
        port map (
      I0 => \o_axi_rresp[0]_i_2_n_0\,
      I1 => s_axi_aresetn,
      I2 => \o_axi_rresp[0]_i_3_n_0\,
      I3 => \^s_axi_rresp\(1),
      I4 => \o_axi_rresp[0]_i_4_n_0\,
      I5 => \^s_axi_rresp\(0),
      O => \o_axi_rresp[0]_i_1_n_0\
    );
\o_axi_rresp[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \o_axi_rresp[1]_i_5_n_0\,
      I1 => err_state,
      O => \o_axi_rresp[0]_i_2_n_0\
    );
\o_axi_rresp[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^o_axi_rvalid_reg_0\,
      I1 => s_axi_rready,
      O => \o_axi_rresp[0]_i_3_n_0\
    );
\o_axi_rresp[0]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFBFBFFF"
    )
        port map (
      I0 => err_state,
      I1 => r_a_owner,
      I2 => m_wb_err,
      I3 => \^r_wb_stb\,
      I4 => \^wb_pending\,
      O => \o_axi_rresp[0]_i_4_n_0\
    );
\o_axi_rresp[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F2FF000000000000"
    )
        port map (
      I0 => \^o_axi_rvalid_reg_0\,
      I1 => s_axi_rready,
      I2 => err_state,
      I3 => \o_axi_rresp[1]_i_2_n_0\,
      I4 => s_axi_aresetn,
      I5 => \o_axi_rresp[1]_i_3_n_0\,
      O => \o_axi_rresp[1]_i_1_n_0\
    );
\o_axi_rresp[1]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7BFFDEFEFF7BFFD"
    )
        port map (
      I0 => \err_loc_reg_n_0_[0]\,
      I1 => \err_loc_reg_n_0_[2]\,
      I2 => r_last_reg(0),
      I3 => r_last_reg(1),
      I4 => r_last_reg(2),
      I5 => \err_loc_reg_n_0_[1]\,
      O => \o_axi_rresp[1]_i_10_n_0\
    );
\o_axi_rresp[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1FFF"
    )
        port map (
      I0 => \^wb_pending\,
      I1 => \^r_wb_stb\,
      I2 => m_wb_err,
      I3 => r_a_owner,
      O => \o_axi_rresp[1]_i_2_n_0\
    );
\o_axi_rresp[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF1F10F000101"
    )
        port map (
      I0 => \o_axi_rresp[1]_i_4_n_0\,
      I1 => \o_axi_rresp[1]_i_2_n_0\,
      I2 => \o_axi_rresp[0]_i_3_n_0\,
      I3 => \o_axi_rresp[1]_i_5_n_0\,
      I4 => err_state,
      I5 => \^s_axi_rresp\(1),
      O => \o_axi_rresp[1]_i_3_n_0\
    );
\o_axi_rresp[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFEF00EFFFEFFF"
    )
        port map (
      I0 => o_axi_rvalid_i_5_n_0,
      I1 => \o_axi_rresp[1]_i_6_n_0\,
      I2 => \o_axi_rresp[1]_i_7_n_0\,
      I3 => \^o_axi_rvalid_reg_0\,
      I4 => \o_axi_rresp[1]_i_8_n_0\,
      I5 => \o_axi_rresp[1]_i_9_n_0\,
      O => \o_axi_rresp[1]_i_4_n_0\
    );
\o_axi_rresp[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0006090009000009"
    )
        port map (
      I0 => r_last_reg(4),
      I1 => \err_loc_reg_n_0_[4]\,
      I2 => \o_axi_rresp[1]_i_10_n_0\,
      I3 => \err_loc_reg_n_0_[3]\,
      I4 => o_axi_rvalid_i_6_n_0,
      I5 => r_last_reg(3),
      O => \o_axi_rresp[1]_i_5_n_0\
    );
\o_axi_rresp[1]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"80007FFF7FFF8000"
    )
        port map (
      I0 => r_last_reg(3),
      I1 => r_last_reg(2),
      I2 => r_last_reg(1),
      I3 => r_last_reg(0),
      I4 => r_last_reg(4),
      I5 => \r_mid_reg_n_0_[4]\,
      O => \o_axi_rresp[1]_i_6_n_0\
    );
\o_axi_rresp[1]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAA9555"
    )
        port map (
      I0 => \r_mid_reg_n_0_[3]\,
      I1 => r_last_reg(2),
      I2 => r_last_reg(1),
      I3 => r_last_reg(0),
      I4 => r_last_reg(3),
      O => \o_axi_rresp[1]_i_7_n_0\
    );
\o_axi_rresp[1]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => r_last_reg(0),
      I1 => \r_mid_reg_n_0_[0]\,
      I2 => \r_mid_reg_n_0_[1]\,
      I3 => r_last_reg(1),
      I4 => \r_mid_reg_n_0_[4]\,
      I5 => r_last_reg(4),
      O => \o_axi_rresp[1]_i_8_n_0\
    );
\o_axi_rresp[1]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => r_last_reg(3),
      I1 => \r_mid_reg_n_0_[3]\,
      I2 => r_last_reg(2),
      I3 => \r_mid_reg_n_0_[2]\,
      O => \o_axi_rresp[1]_i_9_n_0\
    );
\o_axi_rresp_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \o_axi_rresp[0]_i_1_n_0\,
      Q => \^s_axi_rresp\(0),
      R => '0'
    );
\o_axi_rresp_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \o_axi_rresp[1]_i_1_n_0\,
      Q => \^s_axi_rresp\(1),
      R => '0'
    );
o_axi_rvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFE200FF00"
    )
        port map (
      I0 => o_axi_rvalid_i_2_n_0,
      I1 => err_state,
      I2 => o_axi_rvalid_i_3_n_0,
      I3 => \^o_axi_rvalid_reg_0\,
      I4 => s_axi_rready,
      I5 => r_mid111_out,
      O => o_axi_rvalid_i_1_n_0
    );
o_axi_rvalid_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBEBEFFEBFFFFBE"
    )
        port map (
      I0 => o_axi_rvalid_i_5_n_0,
      I1 => r_last_reg(4),
      I2 => \r_mid_reg_n_0_[4]\,
      I3 => r_last_reg(3),
      I4 => o_axi_rvalid_i_6_n_0,
      I5 => \r_mid_reg_n_0_[3]\,
      O => o_axi_rvalid_i_2_n_0
    );
o_axi_rvalid_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFE77DFFFF"
    )
        port map (
      I0 => o_axi_rvalid_i_7_n_0,
      I1 => r_first_reg(3),
      I2 => r_last_reg(3),
      I3 => o_axi_rvalid_i_6_n_0,
      I4 => o_axi_rvalid_i_8_n_0,
      I5 => o_axi_rvalid_i_9_n_0,
      O => o_axi_rvalid_i_3_n_0
    );
o_axi_rvalid_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E0E0E000"
    )
        port map (
      I0 => m_wb_err,
      I1 => m_wb_ack,
      I2 => r_a_owner,
      I3 => \^r_wb_stb\,
      I4 => \^wb_pending\,
      O => r_mid111_out
    );
o_axi_rvalid_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E7FFFFE7FDBFBFFD"
    )
        port map (
      I0 => \r_mid_reg_n_0_[0]\,
      I1 => r_last_reg(1),
      I2 => r_last_reg(0),
      I3 => r_last_reg(2),
      I4 => \r_mid_reg_n_0_[2]\,
      I5 => \r_mid_reg_n_0_[1]\,
      O => o_axi_rvalid_i_5_n_0
    );
o_axi_rvalid_i_6: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => r_last_reg(2),
      I1 => r_last_reg(1),
      I2 => r_last_reg(0),
      O => o_axi_rvalid_i_6_n_0
    );
o_axi_rvalid_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => r_last_reg(4),
      I1 => r_first_reg(4),
      O => o_axi_rvalid_i_7_n_0
    );
o_axi_rvalid_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => r_first_reg(0),
      I1 => r_last_reg(0),
      O => o_axi_rvalid_i_8_n_0
    );
o_axi_rvalid_i_9: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EB7D7DBE"
    )
        port map (
      I0 => r_first_reg(1),
      I1 => r_first_reg(2),
      I2 => r_last_reg(2),
      I3 => r_last_reg(0),
      I4 => r_last_reg(1),
      O => o_axi_rvalid_i_9_n_0
    );
o_axi_rvalid_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => o_axi_rvalid_i_1_n_0,
      Q => \^o_axi_rvalid_reg_0\,
      R => \r_last_reg[0]_0\
    );
\o_wb_addr[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => \r_addr_reg_n_0_[0]\,
      I1 => r_stb,
      I2 => r_a_owner,
      I3 => m_wb_stall,
      I4 => s_axi_araddr(0),
      O => \o_wb_addr[0]_i_1_n_0\
    );
\o_wb_addr[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => \r_addr_reg_n_0_[10]\,
      I1 => r_stb,
      I2 => r_a_owner,
      I3 => m_wb_stall,
      I4 => s_axi_araddr(10),
      O => \o_wb_addr[10]_i_1_n_0\
    );
\o_wb_addr[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => \r_addr_reg_n_0_[11]\,
      I1 => r_stb,
      I2 => r_a_owner,
      I3 => m_wb_stall,
      I4 => s_axi_araddr(11),
      O => \o_wb_addr[11]_i_1_n_0\
    );
\o_wb_addr[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => \r_addr_reg_n_0_[12]\,
      I1 => r_stb,
      I2 => r_a_owner,
      I3 => m_wb_stall,
      I4 => s_axi_araddr(12),
      O => \o_wb_addr[12]_i_1_n_0\
    );
\o_wb_addr[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => \r_addr_reg_n_0_[13]\,
      I1 => r_stb,
      I2 => r_a_owner,
      I3 => m_wb_stall,
      I4 => s_axi_araddr(13),
      O => \o_wb_addr[13]_i_1_n_0\
    );
\o_wb_addr[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => \r_addr_reg_n_0_[14]\,
      I1 => r_stb,
      I2 => r_a_owner,
      I3 => m_wb_stall,
      I4 => s_axi_araddr(14),
      O => \o_wb_addr[14]_i_1_n_0\
    );
\o_wb_addr[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => \r_addr_reg_n_0_[15]\,
      I1 => r_stb,
      I2 => r_a_owner,
      I3 => m_wb_stall,
      I4 => s_axi_araddr(15),
      O => \o_wb_addr[15]_i_1_n_0\
    );
\o_wb_addr[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => \r_addr_reg_n_0_[16]\,
      I1 => r_stb,
      I2 => r_a_owner,
      I3 => m_wb_stall,
      I4 => s_axi_araddr(16),
      O => \o_wb_addr[16]_i_1_n_0\
    );
\o_wb_addr[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => \r_addr_reg_n_0_[17]\,
      I1 => r_stb,
      I2 => r_a_owner,
      I3 => m_wb_stall,
      I4 => s_axi_araddr(17),
      O => \o_wb_addr[17]_i_1_n_0\
    );
\o_wb_addr[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => \r_addr_reg_n_0_[18]\,
      I1 => r_stb,
      I2 => r_a_owner,
      I3 => m_wb_stall,
      I4 => s_axi_araddr(18),
      O => \o_wb_addr[18]_i_1_n_0\
    );
\o_wb_addr[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => \r_addr_reg_n_0_[19]\,
      I1 => r_stb,
      I2 => r_a_owner,
      I3 => m_wb_stall,
      I4 => s_axi_araddr(19),
      O => \o_wb_addr[19]_i_1_n_0\
    );
\o_wb_addr[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => \r_addr_reg_n_0_[1]\,
      I1 => r_stb,
      I2 => r_a_owner,
      I3 => m_wb_stall,
      I4 => s_axi_araddr(1),
      O => \o_wb_addr[1]_i_1_n_0\
    );
\o_wb_addr[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => \r_addr_reg_n_0_[20]\,
      I1 => r_stb,
      I2 => r_a_owner,
      I3 => m_wb_stall,
      I4 => s_axi_araddr(20),
      O => \o_wb_addr[20]_i_1_n_0\
    );
\o_wb_addr[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => \r_addr_reg_n_0_[21]\,
      I1 => r_stb,
      I2 => r_a_owner,
      I3 => m_wb_stall,
      I4 => s_axi_araddr(21),
      O => \o_wb_addr[21]_i_1_n_0\
    );
\o_wb_addr[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => \r_addr_reg_n_0_[22]\,
      I1 => r_stb,
      I2 => r_a_owner,
      I3 => m_wb_stall,
      I4 => s_axi_araddr(22),
      O => \o_wb_addr[22]_i_1_n_0\
    );
\o_wb_addr[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => \r_addr_reg_n_0_[23]\,
      I1 => r_stb,
      I2 => r_a_owner,
      I3 => m_wb_stall,
      I4 => s_axi_araddr(23),
      O => \o_wb_addr[23]_i_1_n_0\
    );
\o_wb_addr[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => \r_addr_reg_n_0_[24]\,
      I1 => r_stb,
      I2 => r_a_owner,
      I3 => m_wb_stall,
      I4 => s_axi_araddr(24),
      O => \o_wb_addr[24]_i_1_n_0\
    );
\o_wb_addr[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0E00CECC"
    )
        port map (
      I0 => r_stb,
      I1 => \^o_axi_arready_reg_0\,
      I2 => m_wb_stall,
      I3 => r_a_owner,
      I4 => \^r_wb_stb\,
      O => \o_wb_addr[25]_i_1_n_0\
    );
\o_wb_addr[25]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => \r_addr_reg_n_0_[25]\,
      I1 => r_stb,
      I2 => r_a_owner,
      I3 => m_wb_stall,
      I4 => s_axi_araddr(25),
      O => \o_wb_addr[25]_i_2_n_0\
    );
\o_wb_addr[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => \r_addr_reg_n_0_[2]\,
      I1 => r_stb,
      I2 => r_a_owner,
      I3 => m_wb_stall,
      I4 => s_axi_araddr(2),
      O => \o_wb_addr[2]_i_1_n_0\
    );
\o_wb_addr[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => \r_addr_reg_n_0_[3]\,
      I1 => r_stb,
      I2 => r_a_owner,
      I3 => m_wb_stall,
      I4 => s_axi_araddr(3),
      O => \o_wb_addr[3]_i_1_n_0\
    );
\o_wb_addr[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => \r_addr_reg_n_0_[4]\,
      I1 => r_stb,
      I2 => r_a_owner,
      I3 => m_wb_stall,
      I4 => s_axi_araddr(4),
      O => \o_wb_addr[4]_i_1_n_0\
    );
\o_wb_addr[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => \r_addr_reg_n_0_[5]\,
      I1 => r_stb,
      I2 => r_a_owner,
      I3 => m_wb_stall,
      I4 => s_axi_araddr(5),
      O => \o_wb_addr[5]_i_1_n_0\
    );
\o_wb_addr[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => \r_addr_reg_n_0_[6]\,
      I1 => r_stb,
      I2 => r_a_owner,
      I3 => m_wb_stall,
      I4 => s_axi_araddr(6),
      O => \o_wb_addr[6]_i_1_n_0\
    );
\o_wb_addr[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => \r_addr_reg_n_0_[7]\,
      I1 => r_stb,
      I2 => r_a_owner,
      I3 => m_wb_stall,
      I4 => s_axi_araddr(7),
      O => \o_wb_addr[7]_i_1_n_0\
    );
\o_wb_addr[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => \r_addr_reg_n_0_[8]\,
      I1 => r_stb,
      I2 => r_a_owner,
      I3 => m_wb_stall,
      I4 => s_axi_araddr(8),
      O => \o_wb_addr[8]_i_1_n_0\
    );
\o_wb_addr[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => \r_addr_reg_n_0_[9]\,
      I1 => r_stb,
      I2 => r_a_owner,
      I3 => m_wb_stall,
      I4 => s_axi_araddr(9),
      O => \o_wb_addr[9]_i_1_n_0\
    );
\o_wb_addr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \o_wb_addr[25]_i_1_n_0\,
      D => \o_wb_addr[0]_i_1_n_0\,
      Q => \o_wb_addr_reg_n_0_[0]\,
      R => '0'
    );
\o_wb_addr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \o_wb_addr[25]_i_1_n_0\,
      D => \o_wb_addr[10]_i_1_n_0\,
      Q => \o_wb_addr_reg_n_0_[10]\,
      R => '0'
    );
\o_wb_addr_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \o_wb_addr[25]_i_1_n_0\,
      D => \o_wb_addr[11]_i_1_n_0\,
      Q => \o_wb_addr_reg_n_0_[11]\,
      R => '0'
    );
\o_wb_addr_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \o_wb_addr[25]_i_1_n_0\,
      D => \o_wb_addr[12]_i_1_n_0\,
      Q => \o_wb_addr_reg_n_0_[12]\,
      R => '0'
    );
\o_wb_addr_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \o_wb_addr[25]_i_1_n_0\,
      D => \o_wb_addr[13]_i_1_n_0\,
      Q => \o_wb_addr_reg_n_0_[13]\,
      R => '0'
    );
\o_wb_addr_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \o_wb_addr[25]_i_1_n_0\,
      D => \o_wb_addr[14]_i_1_n_0\,
      Q => \o_wb_addr_reg_n_0_[14]\,
      R => '0'
    );
\o_wb_addr_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \o_wb_addr[25]_i_1_n_0\,
      D => \o_wb_addr[15]_i_1_n_0\,
      Q => \o_wb_addr_reg_n_0_[15]\,
      R => '0'
    );
\o_wb_addr_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \o_wb_addr[25]_i_1_n_0\,
      D => \o_wb_addr[16]_i_1_n_0\,
      Q => \o_wb_addr_reg_n_0_[16]\,
      R => '0'
    );
\o_wb_addr_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \o_wb_addr[25]_i_1_n_0\,
      D => \o_wb_addr[17]_i_1_n_0\,
      Q => \o_wb_addr_reg_n_0_[17]\,
      R => '0'
    );
\o_wb_addr_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \o_wb_addr[25]_i_1_n_0\,
      D => \o_wb_addr[18]_i_1_n_0\,
      Q => \o_wb_addr_reg_n_0_[18]\,
      R => '0'
    );
\o_wb_addr_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \o_wb_addr[25]_i_1_n_0\,
      D => \o_wb_addr[19]_i_1_n_0\,
      Q => \o_wb_addr_reg_n_0_[19]\,
      R => '0'
    );
\o_wb_addr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \o_wb_addr[25]_i_1_n_0\,
      D => \o_wb_addr[1]_i_1_n_0\,
      Q => \o_wb_addr_reg_n_0_[1]\,
      R => '0'
    );
\o_wb_addr_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \o_wb_addr[25]_i_1_n_0\,
      D => \o_wb_addr[20]_i_1_n_0\,
      Q => \o_wb_addr_reg_n_0_[20]\,
      R => '0'
    );
\o_wb_addr_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \o_wb_addr[25]_i_1_n_0\,
      D => \o_wb_addr[21]_i_1_n_0\,
      Q => \o_wb_addr_reg_n_0_[21]\,
      R => '0'
    );
\o_wb_addr_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \o_wb_addr[25]_i_1_n_0\,
      D => \o_wb_addr[22]_i_1_n_0\,
      Q => \o_wb_addr_reg_n_0_[22]\,
      R => '0'
    );
\o_wb_addr_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \o_wb_addr[25]_i_1_n_0\,
      D => \o_wb_addr[23]_i_1_n_0\,
      Q => \o_wb_addr_reg_n_0_[23]\,
      R => '0'
    );
\o_wb_addr_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \o_wb_addr[25]_i_1_n_0\,
      D => \o_wb_addr[24]_i_1_n_0\,
      Q => \o_wb_addr_reg_n_0_[24]\,
      R => '0'
    );
\o_wb_addr_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \o_wb_addr[25]_i_1_n_0\,
      D => \o_wb_addr[25]_i_2_n_0\,
      Q => \o_wb_addr_reg_n_0_[25]\,
      R => '0'
    );
\o_wb_addr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \o_wb_addr[25]_i_1_n_0\,
      D => \o_wb_addr[2]_i_1_n_0\,
      Q => \o_wb_addr_reg_n_0_[2]\,
      R => '0'
    );
\o_wb_addr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \o_wb_addr[25]_i_1_n_0\,
      D => \o_wb_addr[3]_i_1_n_0\,
      Q => \o_wb_addr_reg_n_0_[3]\,
      R => '0'
    );
\o_wb_addr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \o_wb_addr[25]_i_1_n_0\,
      D => \o_wb_addr[4]_i_1_n_0\,
      Q => \o_wb_addr_reg_n_0_[4]\,
      R => '0'
    );
\o_wb_addr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \o_wb_addr[25]_i_1_n_0\,
      D => \o_wb_addr[5]_i_1_n_0\,
      Q => \o_wb_addr_reg_n_0_[5]\,
      R => '0'
    );
\o_wb_addr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \o_wb_addr[25]_i_1_n_0\,
      D => \o_wb_addr[6]_i_1_n_0\,
      Q => \o_wb_addr_reg_n_0_[6]\,
      R => '0'
    );
\o_wb_addr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \o_wb_addr[25]_i_1_n_0\,
      D => \o_wb_addr[7]_i_1_n_0\,
      Q => \o_wb_addr_reg_n_0_[7]\,
      R => '0'
    );
\o_wb_addr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \o_wb_addr[25]_i_1_n_0\,
      D => \o_wb_addr[8]_i_1_n_0\,
      Q => \o_wb_addr_reg_n_0_[8]\,
      R => '0'
    );
\o_wb_addr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \o_wb_addr[25]_i_1_n_0\,
      D => \o_wb_addr[9]_i_1_n_0\,
      Q => \o_wb_addr_reg_n_0_[9]\,
      R => '0'
    );
\o_wb_stb_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFFFB0"
    )
        port map (
      I0 => m_wb_stall,
      I1 => r_a_owner,
      I2 => \^r_wb_stb\,
      I3 => r_stb,
      I4 => \p_0_in__0_0\(0),
      I5 => r_stb_i_3_n_0,
      O => \o_wb_stb_i_1__0_n_0\
    );
o_wb_stb_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \o_wb_stb_i_1__0_n_0\,
      Q => \^r_wb_stb\,
      R => '0'
    );
\r_addr[25]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80880000"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => \^o_axi_arready_reg_0\,
      I2 => m_wb_stall,
      I3 => r_a_owner,
      I4 => \^r_wb_stb\,
      O => r_stb0
    );
\r_addr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => r_stb0,
      D => s_axi_araddr(0),
      Q => \r_addr_reg_n_0_[0]\,
      R => '0'
    );
\r_addr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => r_stb0,
      D => s_axi_araddr(10),
      Q => \r_addr_reg_n_0_[10]\,
      R => '0'
    );
\r_addr_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => r_stb0,
      D => s_axi_araddr(11),
      Q => \r_addr_reg_n_0_[11]\,
      R => '0'
    );
\r_addr_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => r_stb0,
      D => s_axi_araddr(12),
      Q => \r_addr_reg_n_0_[12]\,
      R => '0'
    );
\r_addr_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => r_stb0,
      D => s_axi_araddr(13),
      Q => \r_addr_reg_n_0_[13]\,
      R => '0'
    );
\r_addr_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => r_stb0,
      D => s_axi_araddr(14),
      Q => \r_addr_reg_n_0_[14]\,
      R => '0'
    );
\r_addr_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => r_stb0,
      D => s_axi_araddr(15),
      Q => \r_addr_reg_n_0_[15]\,
      R => '0'
    );
\r_addr_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => r_stb0,
      D => s_axi_araddr(16),
      Q => \r_addr_reg_n_0_[16]\,
      R => '0'
    );
\r_addr_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => r_stb0,
      D => s_axi_araddr(17),
      Q => \r_addr_reg_n_0_[17]\,
      R => '0'
    );
\r_addr_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => r_stb0,
      D => s_axi_araddr(18),
      Q => \r_addr_reg_n_0_[18]\,
      R => '0'
    );
\r_addr_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => r_stb0,
      D => s_axi_araddr(19),
      Q => \r_addr_reg_n_0_[19]\,
      R => '0'
    );
\r_addr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => r_stb0,
      D => s_axi_araddr(1),
      Q => \r_addr_reg_n_0_[1]\,
      R => '0'
    );
\r_addr_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => r_stb0,
      D => s_axi_araddr(20),
      Q => \r_addr_reg_n_0_[20]\,
      R => '0'
    );
\r_addr_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => r_stb0,
      D => s_axi_araddr(21),
      Q => \r_addr_reg_n_0_[21]\,
      R => '0'
    );
\r_addr_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => r_stb0,
      D => s_axi_araddr(22),
      Q => \r_addr_reg_n_0_[22]\,
      R => '0'
    );
\r_addr_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => r_stb0,
      D => s_axi_araddr(23),
      Q => \r_addr_reg_n_0_[23]\,
      R => '0'
    );
\r_addr_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => r_stb0,
      D => s_axi_araddr(24),
      Q => \r_addr_reg_n_0_[24]\,
      R => '0'
    );
\r_addr_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => r_stb0,
      D => s_axi_araddr(25),
      Q => \r_addr_reg_n_0_[25]\,
      R => '0'
    );
\r_addr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => r_stb0,
      D => s_axi_araddr(2),
      Q => \r_addr_reg_n_0_[2]\,
      R => '0'
    );
\r_addr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => r_stb0,
      D => s_axi_araddr(3),
      Q => \r_addr_reg_n_0_[3]\,
      R => '0'
    );
\r_addr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => r_stb0,
      D => s_axi_araddr(4),
      Q => \r_addr_reg_n_0_[4]\,
      R => '0'
    );
\r_addr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => r_stb0,
      D => s_axi_araddr(5),
      Q => \r_addr_reg_n_0_[5]\,
      R => '0'
    );
\r_addr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => r_stb0,
      D => s_axi_araddr(6),
      Q => \r_addr_reg_n_0_[6]\,
      R => '0'
    );
\r_addr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => r_stb0,
      D => s_axi_araddr(7),
      Q => \r_addr_reg_n_0_[7]\,
      R => '0'
    );
\r_addr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => r_stb0,
      D => s_axi_araddr(8),
      Q => \r_addr_reg_n_0_[8]\,
      R => '0'
    );
\r_addr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => r_stb0,
      D => s_axi_araddr(9),
      Q => \r_addr_reg_n_0_[9]\,
      R => '0'
    );
\r_first[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => r_first_reg(0),
      O => \r_first[0]_i_1__0_n_0\
    );
\r_first[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => r_first_reg(0),
      I1 => r_first_reg(1),
      O => \r_first[1]_i_1__0_n_0\
    );
\r_first[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => r_first_reg(2),
      I1 => r_first_reg(1),
      I2 => r_first_reg(0),
      O => \r_first[2]_i_1__0_n_0\
    );
\r_first[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => r_first_reg(3),
      I1 => r_first_reg(0),
      I2 => r_first_reg(1),
      I3 => r_first_reg(2),
      O => \r_first[3]_i_1__0_n_0\
    );
\r_first[4]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^o_axi_arready_reg_0\,
      I1 => s_axi_arvalid,
      O => \p_0_in__0_0\(0)
    );
\r_first[4]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => r_first_reg(4),
      I1 => r_first_reg(2),
      I2 => r_first_reg(1),
      I3 => r_first_reg(0),
      I4 => r_first_reg(3),
      O => \r_first[4]_i_2__0_n_0\
    );
\r_first_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \p_0_in__0_0\(0),
      D => \r_first[0]_i_1__0_n_0\,
      Q => r_first_reg(0),
      R => \r_last_reg[0]_0\
    );
\r_first_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \p_0_in__0_0\(0),
      D => \r_first[1]_i_1__0_n_0\,
      Q => r_first_reg(1),
      R => \r_last_reg[0]_0\
    );
\r_first_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \p_0_in__0_0\(0),
      D => \r_first[2]_i_1__0_n_0\,
      Q => r_first_reg(2),
      R => \r_last_reg[0]_0\
    );
\r_first_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \p_0_in__0_0\(0),
      D => \r_first[3]_i_1__0_n_0\,
      Q => r_first_reg(3),
      R => \r_last_reg[0]_0\
    );
\r_first_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \p_0_in__0_0\(0),
      D => \r_first[4]_i_2__0_n_0\,
      Q => r_first_reg(4),
      R => \r_last_reg[0]_0\
    );
\r_last[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => r_last_reg(0),
      O => next_last(0)
    );
\r_last[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => r_last_reg(0),
      I1 => r_last_reg(1),
      O => next_last(1)
    );
\r_last[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => r_last_reg(0),
      I1 => r_last_reg(1),
      I2 => r_last_reg(2),
      O => next_last(2)
    );
\r_last[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => r_last_reg(2),
      I1 => r_last_reg(1),
      I2 => r_last_reg(0),
      I3 => r_last_reg(3),
      O => next_last(3)
    );
\r_last[4]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_rready,
      I1 => \^o_axi_rvalid_reg_0\,
      O => \p_0_in__0__0\(1)
    );
\r_last[4]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => r_last_reg(0),
      I1 => r_last_reg(1),
      I2 => r_last_reg(2),
      I3 => r_last_reg(3),
      I4 => r_last_reg(4),
      O => \r_last[4]_i_2__0_n_0\
    );
\r_last_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \p_0_in__0__0\(1),
      D => next_last(0),
      Q => r_last_reg(0),
      R => \r_last_reg[0]_0\
    );
\r_last_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \p_0_in__0__0\(1),
      D => next_last(1),
      Q => r_last_reg(1),
      R => \r_last_reg[0]_0\
    );
\r_last_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \p_0_in__0__0\(1),
      D => next_last(2),
      Q => r_last_reg(2),
      R => \r_last_reg[0]_0\
    );
\r_last_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \p_0_in__0__0\(1),
      D => next_last(3),
      Q => r_last_reg(3),
      R => \r_last_reg[0]_0\
    );
\r_last_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \p_0_in__0__0\(1),
      D => \r_last[4]_i_2__0_n_0\,
      Q => r_last_reg(4),
      R => \r_last_reg[0]_0\
    );
\r_mid[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \r_mid_reg_n_0_[0]\,
      O => \p_0_in__0\(0)
    );
\r_mid[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \r_mid_reg_n_0_[0]\,
      I1 => \r_mid_reg_n_0_[1]\,
      O => \p_0_in__0\(1)
    );
\r_mid[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \r_mid_reg_n_0_[2]\,
      I1 => \r_mid_reg_n_0_[1]\,
      I2 => \r_mid_reg_n_0_[0]\,
      O => \p_0_in__0\(2)
    );
\r_mid[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \r_mid_reg_n_0_[3]\,
      I1 => \r_mid_reg_n_0_[0]\,
      I2 => \r_mid_reg_n_0_[1]\,
      I3 => \r_mid_reg_n_0_[2]\,
      O => \p_0_in__0\(3)
    );
\r_mid[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFE0E0E000"
    )
        port map (
      I0 => \^wb_pending\,
      I1 => \^r_wb_stb\,
      I2 => r_a_owner,
      I3 => m_wb_ack,
      I4 => m_wb_err,
      I5 => \r_mid[4]_i_3__0_n_0\,
      O => \r_mid[4]_i_1_n_0\
    );
\r_mid[4]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \r_mid_reg_n_0_[4]\,
      I1 => \r_mid_reg_n_0_[3]\,
      I2 => \r_mid_reg_n_0_[2]\,
      I3 => \r_mid_reg_n_0_[1]\,
      I4 => \r_mid_reg_n_0_[0]\,
      O => \p_0_in__0\(4)
    );
\r_mid[4]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA28AAAAAAAAAA28"
    )
        port map (
      I0 => err_state,
      I1 => r_first_reg(4),
      I2 => \r_mid_reg_n_0_[4]\,
      I3 => \r_mid[4]_i_4__0_n_0\,
      I4 => \r_mid_reg_n_0_[3]\,
      I5 => r_first_reg(3),
      O => \r_mid[4]_i_3__0_n_0\
    );
\r_mid[4]_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => \r_mid_reg_n_0_[2]\,
      I1 => r_first_reg(2),
      I2 => \r_mid_reg_n_0_[1]\,
      I3 => r_first_reg(1),
      I4 => r_first_reg(0),
      I5 => \r_mid_reg_n_0_[0]\,
      O => \r_mid[4]_i_4__0_n_0\
    );
\r_mid_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \r_mid[4]_i_1_n_0\,
      D => \p_0_in__0\(0),
      Q => \r_mid_reg_n_0_[0]\,
      R => \r_last_reg[0]_0\
    );
\r_mid_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \r_mid[4]_i_1_n_0\,
      D => \p_0_in__0\(1),
      Q => \r_mid_reg_n_0_[1]\,
      R => \r_last_reg[0]_0\
    );
\r_mid_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \r_mid[4]_i_1_n_0\,
      D => \p_0_in__0\(2),
      Q => \r_mid_reg_n_0_[2]\,
      R => \r_last_reg[0]_0\
    );
\r_mid_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \r_mid[4]_i_1_n_0\,
      D => \p_0_in__0\(3),
      Q => \r_mid_reg_n_0_[3]\,
      R => \r_last_reg[0]_0\
    );
\r_mid_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \r_mid[4]_i_1_n_0\,
      D => \p_0_in__0\(4),
      Q => \r_mid_reg_n_0_[4]\,
      R => \r_last_reg[0]_0\
    );
r_stb_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFF2202"
    )
        port map (
      I0 => r_stb,
      I1 => r_stb_i_2_n_0,
      I2 => r_a_owner,
      I3 => m_wb_stall,
      I4 => r_stb0,
      I5 => r_stb_i_3_n_0,
      O => r_stb_i_1_n_0
    );
r_stb_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^r_wb_stb\,
      I1 => \^wb_pending\,
      O => r_stb_i_2_n_0
    );
r_stb_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FDDDFDDDFDDDDDDD"
    )
        port map (
      I0 => s_axi_aresetn,
      I1 => err_state,
      I2 => r_a_owner,
      I3 => m_wb_err,
      I4 => \^r_wb_stb\,
      I5 => \^wb_pending\,
      O => r_stb_i_3_n_0
    );
r_stb_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => r_stb_i_1_n_0,
      Q => r_stb,
      R => '0'
    );
\wb_outstanding[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \wb_outstanding_reg_n_0_[0]\,
      O => \wb_outstanding__0\(0)
    );
\wb_outstanding[1]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A659"
    )
        port map (
      I0 => \wb_outstanding_reg_n_0_[0]\,
      I1 => \^r_wb_stb\,
      I2 => m_wb_stall,
      I3 => wb_outstanding_reg(1),
      O => \wb_outstanding__0\(1)
    );
\wb_outstanding[2]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F708AE51"
    )
        port map (
      I0 => \wb_outstanding_reg_n_0_[0]\,
      I1 => \^r_wb_stb\,
      I2 => m_wb_stall,
      I3 => wb_outstanding_reg(2),
      I4 => wb_outstanding_reg(1),
      O => \wb_outstanding__0\(2)
    );
\wb_outstanding[3]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7F80FE01"
    )
        port map (
      I0 => \wb_outstanding_reg_n_0_[0]\,
      I1 => wb_outstanding_reg(1),
      I2 => \wb_pending_i_4__0_n_0\,
      I3 => wb_outstanding_reg(3),
      I4 => wb_outstanding_reg(2),
      O => \wb_outstanding__0\(3)
    );
\wb_outstanding[4]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAA9"
    )
        port map (
      I0 => wb_outstanding_reg(4),
      I1 => wb_outstanding_reg(3),
      I2 => wb_outstanding_reg(2),
      I3 => \wb_outstanding_reg_n_0_[0]\,
      I4 => wb_outstanding_reg(1),
      I5 => \wb_pending_i_4__0_n_0\,
      O => \wb_outstanding__0\(4)
    );
\wb_outstanding_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wb_outstanding,
      D => \wb_outstanding__0\(0),
      Q => \wb_outstanding_reg_n_0_[0]\,
      R => wb_pending0
    );
\wb_outstanding_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wb_outstanding,
      D => \wb_outstanding__0\(1),
      Q => wb_outstanding_reg(1),
      R => wb_pending0
    );
\wb_outstanding_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wb_outstanding,
      D => \wb_outstanding__0\(2),
      Q => wb_outstanding_reg(2),
      R => wb_pending0
    );
\wb_outstanding_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wb_outstanding,
      D => \wb_outstanding__0\(3),
      Q => wb_outstanding_reg(3),
      R => wb_pending0
    );
\wb_outstanding_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wb_outstanding,
      D => \wb_outstanding__0\(4),
      Q => wb_outstanding_reg(4),
      R => wb_pending0
    );
\wb_pending_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF1FFF1FFF1FF"
    )
        port map (
      I0 => \^wb_pending\,
      I1 => \^r_wb_stb\,
      I2 => err_state,
      I3 => s_axi_aresetn,
      I4 => r_a_owner,
      I5 => m_wb_err,
      O => wb_pending0
    );
\wb_pending_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B400"
    )
        port map (
      I0 => m_wb_stall,
      I1 => \^r_wb_stb\,
      I2 => m_wb_ack,
      I3 => r_a_owner,
      O => wb_outstanding
    );
\wb_pending_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \wb_pending_i_4__0_n_0\,
      I1 => wb_outstanding_reg(2),
      I2 => wb_outstanding_reg(3),
      I3 => wb_outstanding_reg(1),
      I4 => wb_outstanding_reg(4),
      O => \wb_pending_i_3__0_n_0\
    );
\wb_pending_i_4__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^r_wb_stb\,
      I1 => r_a_owner,
      I2 => m_wb_stall,
      O => \wb_pending_i_4__0_n_0\
    );
wb_pending_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wb_outstanding,
      D => \wb_pending_i_3__0_n_0\,
      Q => \^wb_pending\,
      R => wb_pending0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity embsys_axlite2wbsp_0_0_axilwr2wbsp is
  port (
    o_axi_awready_reg_0 : out STD_LOGIC;
    s_axi_aresetn_0 : out STD_LOGIC;
    o_axi_wready_reg_0 : out STD_LOGIC;
    w_wb_stb : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    o_axi_bvalid_reg_0 : out STD_LOGIC;
    wb_pending_reg_0 : out STD_LOGIC;
    wb_pending_reg_1 : out STD_LOGIC;
    m_wb_cyc : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \o_wb_addr_reg[25]_0\ : out STD_LOGIC_VECTOR ( 25 downto 0 );
    m_wb_dat_w : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    r_a_owner : in STD_LOGIC;
    m_wb_stall : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    \ALT.last_owner\ : in STD_LOGIC;
    r_wb_stb : in STD_LOGIC;
    wb_pending : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    m_wb_ack : in STD_LOGIC;
    m_wb_err : in STD_LOGIC;
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 25 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
end embsys_axlite2wbsp_0_0_axilwr2wbsp;

architecture STRUCTURE of embsys_axlite2wbsp_0_0_axilwr2wbsp is
  signal axi_write_accepted : STD_LOGIC;
  signal axi_write_accepted2 : STD_LOGIC;
  signal err_loc : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal err_state : STD_LOGIC;
  signal err_state_i_1_n_0 : STD_LOGIC;
  signal err_state_i_2_n_0 : STD_LOGIC;
  signal err_state_i_3_n_0 : STD_LOGIC;
  signal fifo_full : STD_LOGIC;
  signal fifo_full118_out : STD_LOGIC;
  signal fifo_full_i_1_n_0 : STD_LOGIC;
  signal fifo_full_i_2_n_0 : STD_LOGIC;
  signal fifo_full_i_3_n_0 : STD_LOGIC;
  signal fifo_full_i_4_n_0 : STD_LOGIC;
  signal next_last : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal o_axi_awready5_out : STD_LOGIC;
  signal o_axi_awready_i_2_n_0 : STD_LOGIC;
  signal o_axi_awready_i_3_n_0 : STD_LOGIC;
  signal o_axi_awready_i_4_n_0 : STD_LOGIC;
  signal o_axi_awready_i_5_n_0 : STD_LOGIC;
  signal \^o_axi_awready_reg_0\ : STD_LOGIC;
  signal \o_axi_bresp[0]_i_1_n_0\ : STD_LOGIC;
  signal \o_axi_bresp[0]_i_2_n_0\ : STD_LOGIC;
  signal \o_axi_bresp[0]_i_3_n_0\ : STD_LOGIC;
  signal \o_axi_bresp[0]_i_4_n_0\ : STD_LOGIC;
  signal \o_axi_bresp[0]_i_5_n_0\ : STD_LOGIC;
  signal \o_axi_bresp[1]_i_1_n_0\ : STD_LOGIC;
  signal \o_axi_bresp[1]_i_2_n_0\ : STD_LOGIC;
  signal \o_axi_bresp[1]_i_3_n_0\ : STD_LOGIC;
  signal \o_axi_bresp[1]_i_4_n_0\ : STD_LOGIC;
  signal \o_axi_bresp[1]_i_5_n_0\ : STD_LOGIC;
  signal \o_axi_bresp[1]_i_6_n_0\ : STD_LOGIC;
  signal \o_axi_bresp[1]_i_7_n_0\ : STD_LOGIC;
  signal \o_axi_bresp[1]_i_8_n_0\ : STD_LOGIC;
  signal o_axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal o_axi_bvalid_i_2_n_0 : STD_LOGIC;
  signal o_axi_bvalid_i_3_n_0 : STD_LOGIC;
  signal o_axi_bvalid_i_5_n_0 : STD_LOGIC;
  signal o_axi_bvalid_i_6_n_0 : STD_LOGIC;
  signal \^o_axi_bvalid_reg_0\ : STD_LOGIC;
  signal o_axi_wready11_out : STD_LOGIC;
  signal o_axi_wready_i_2_n_0 : STD_LOGIC;
  signal o_axi_wready_i_3_n_0 : STD_LOGIC;
  signal \^o_axi_wready_reg_0\ : STD_LOGIC;
  signal \o_wb_addr[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \o_wb_addr[10]_i_1__0_n_0\ : STD_LOGIC;
  signal \o_wb_addr[11]_i_1__0_n_0\ : STD_LOGIC;
  signal \o_wb_addr[12]_i_1__0_n_0\ : STD_LOGIC;
  signal \o_wb_addr[13]_i_1__0_n_0\ : STD_LOGIC;
  signal \o_wb_addr[14]_i_1__0_n_0\ : STD_LOGIC;
  signal \o_wb_addr[15]_i_1__0_n_0\ : STD_LOGIC;
  signal \o_wb_addr[16]_i_1__0_n_0\ : STD_LOGIC;
  signal \o_wb_addr[17]_i_1__0_n_0\ : STD_LOGIC;
  signal \o_wb_addr[18]_i_1__0_n_0\ : STD_LOGIC;
  signal \o_wb_addr[19]_i_1__0_n_0\ : STD_LOGIC;
  signal \o_wb_addr[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \o_wb_addr[20]_i_1__0_n_0\ : STD_LOGIC;
  signal \o_wb_addr[21]_i_1__0_n_0\ : STD_LOGIC;
  signal \o_wb_addr[22]_i_1__0_n_0\ : STD_LOGIC;
  signal \o_wb_addr[23]_i_1__0_n_0\ : STD_LOGIC;
  signal \o_wb_addr[24]_i_1__0_n_0\ : STD_LOGIC;
  signal \o_wb_addr[25]_i_1__0_n_0\ : STD_LOGIC;
  signal \o_wb_addr[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \o_wb_addr[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \o_wb_addr[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \o_wb_addr[5]_i_1__0_n_0\ : STD_LOGIC;
  signal \o_wb_addr[6]_i_1__0_n_0\ : STD_LOGIC;
  signal \o_wb_addr[7]_i_1__0_n_0\ : STD_LOGIC;
  signal \o_wb_addr[8]_i_1__0_n_0\ : STD_LOGIC;
  signal \o_wb_addr[9]_i_1__0_n_0\ : STD_LOGIC;
  signal \o_wb_data[0]_i_1_n_0\ : STD_LOGIC;
  signal \o_wb_data[10]_i_1_n_0\ : STD_LOGIC;
  signal \o_wb_data[11]_i_1_n_0\ : STD_LOGIC;
  signal \o_wb_data[12]_i_1_n_0\ : STD_LOGIC;
  signal \o_wb_data[13]_i_1_n_0\ : STD_LOGIC;
  signal \o_wb_data[14]_i_1_n_0\ : STD_LOGIC;
  signal \o_wb_data[15]_i_1_n_0\ : STD_LOGIC;
  signal \o_wb_data[16]_i_1_n_0\ : STD_LOGIC;
  signal \o_wb_data[17]_i_1_n_0\ : STD_LOGIC;
  signal \o_wb_data[18]_i_1_n_0\ : STD_LOGIC;
  signal \o_wb_data[19]_i_1_n_0\ : STD_LOGIC;
  signal \o_wb_data[1]_i_1_n_0\ : STD_LOGIC;
  signal \o_wb_data[20]_i_1_n_0\ : STD_LOGIC;
  signal \o_wb_data[21]_i_1_n_0\ : STD_LOGIC;
  signal \o_wb_data[22]_i_1_n_0\ : STD_LOGIC;
  signal \o_wb_data[23]_i_1_n_0\ : STD_LOGIC;
  signal \o_wb_data[24]_i_1_n_0\ : STD_LOGIC;
  signal \o_wb_data[25]_i_1_n_0\ : STD_LOGIC;
  signal \o_wb_data[26]_i_1_n_0\ : STD_LOGIC;
  signal \o_wb_data[27]_i_1_n_0\ : STD_LOGIC;
  signal \o_wb_data[28]_i_1_n_0\ : STD_LOGIC;
  signal \o_wb_data[29]_i_1_n_0\ : STD_LOGIC;
  signal \o_wb_data[2]_i_1_n_0\ : STD_LOGIC;
  signal \o_wb_data[30]_i_1_n_0\ : STD_LOGIC;
  signal \o_wb_data[31]_i_2_n_0\ : STD_LOGIC;
  signal \o_wb_data[3]_i_1_n_0\ : STD_LOGIC;
  signal \o_wb_data[4]_i_1_n_0\ : STD_LOGIC;
  signal \o_wb_data[5]_i_1_n_0\ : STD_LOGIC;
  signal \o_wb_data[6]_i_1_n_0\ : STD_LOGIC;
  signal \o_wb_data[7]_i_1_n_0\ : STD_LOGIC;
  signal \o_wb_data[8]_i_1_n_0\ : STD_LOGIC;
  signal \o_wb_data[9]_i_1_n_0\ : STD_LOGIC;
  signal \o_wb_sel[0]_i_1_n_0\ : STD_LOGIC;
  signal \o_wb_sel[1]_i_1_n_0\ : STD_LOGIC;
  signal \o_wb_sel[2]_i_1_n_0\ : STD_LOGIC;
  signal \o_wb_sel[3]_i_1_n_0\ : STD_LOGIC;
  signal o_wb_stb2 : STD_LOGIC;
  signal o_wb_stb_i_1_n_0 : STD_LOGIC;
  signal o_wb_stb_i_2_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal p_1_in : STD_LOGIC;
  signal pending_axi_write1 : STD_LOGIC;
  signal pending_axi_write123_out : STD_LOGIC;
  signal r_addr : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal r_awvalid_i_1_n_0 : STD_LOGIC;
  signal r_awvalid_reg_n_0 : STD_LOGIC;
  signal r_data : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \r_first[0]_i_1_n_0\ : STD_LOGIC;
  signal \r_first[1]_i_1_n_0\ : STD_LOGIC;
  signal \r_first[2]_i_1_n_0\ : STD_LOGIC;
  signal \r_first[3]_i_1_n_0\ : STD_LOGIC;
  signal r_first_reg : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal r_last_reg : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal r_mid116_out : STD_LOGIC;
  signal \r_mid[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \r_mid[4]_i_3_n_0\ : STD_LOGIC;
  signal \r_mid[4]_i_4_n_0\ : STD_LOGIC;
  signal r_mid_reg : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal r_sel : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal r_wvalid_i_1_n_0 : STD_LOGIC;
  signal r_wvalid_reg_n_0 : STD_LOGIC;
  signal \^s_axi_aresetn_0\ : STD_LOGIC;
  signal \^s_axi_bresp\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^w_wb_stb\ : STD_LOGIC;
  signal wb_outstanding : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal wb_outstanding_reg : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal \wb_outstanding_reg_n_0_[0]\ : STD_LOGIC;
  signal wb_pending0 : STD_LOGIC;
  signal wb_pending_0 : STD_LOGIC;
  signal wb_pending_i_3_n_0 : STD_LOGIC;
  signal wb_pending_i_4_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of o_axi_awready_i_5 : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \o_axi_bresp[0]_i_5\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \o_axi_bresp[1]_i_5\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \o_axi_bresp[1]_i_7\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of o_axi_wready_i_3 : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \o_wb_addr[0]_i_1__0\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \o_wb_addr[10]_i_1__0\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \o_wb_addr[11]_i_1__0\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \o_wb_addr[12]_i_1__0\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \o_wb_addr[13]_i_1__0\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \o_wb_addr[14]_i_1__0\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \o_wb_addr[15]_i_1__0\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \o_wb_addr[16]_i_1__0\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \o_wb_addr[17]_i_1__0\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \o_wb_addr[18]_i_1__0\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \o_wb_addr[19]_i_1__0\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \o_wb_addr[1]_i_1__0\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \o_wb_addr[20]_i_1__0\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \o_wb_addr[21]_i_1__0\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \o_wb_addr[22]_i_1__0\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \o_wb_addr[23]_i_1__0\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \o_wb_addr[24]_i_1__0\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \o_wb_addr[25]_i_1__0\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \o_wb_addr[2]_i_1__0\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \o_wb_addr[3]_i_1__0\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \o_wb_addr[4]_i_1__0\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \o_wb_addr[5]_i_1__0\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \o_wb_addr[6]_i_1__0\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \o_wb_addr[7]_i_1__0\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \o_wb_addr[8]_i_1__0\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \o_wb_addr[9]_i_1__0\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \o_wb_data[0]_i_1\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \o_wb_data[10]_i_1\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \o_wb_data[11]_i_1\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \o_wb_data[12]_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \o_wb_data[13]_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \o_wb_data[14]_i_1\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \o_wb_data[15]_i_1\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \o_wb_data[16]_i_1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \o_wb_data[17]_i_1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \o_wb_data[18]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \o_wb_data[19]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \o_wb_data[1]_i_1\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \o_wb_data[20]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \o_wb_data[21]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \o_wb_data[22]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \o_wb_data[23]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \o_wb_data[24]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \o_wb_data[25]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \o_wb_data[26]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \o_wb_data[27]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \o_wb_data[28]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \o_wb_data[29]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \o_wb_data[2]_i_1\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \o_wb_data[30]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \o_wb_data[31]_i_2\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \o_wb_data[3]_i_1\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \o_wb_data[4]_i_1\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \o_wb_data[5]_i_1\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \o_wb_data[6]_i_1\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \o_wb_data[7]_i_1\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \o_wb_data[8]_i_1\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \o_wb_data[9]_i_1\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \o_wb_sel[0]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \o_wb_sel[1]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \o_wb_sel[2]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \o_wb_sel[3]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of o_wb_stb_i_2 : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \r_first[0]_i_1\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \r_first[1]_i_1\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \r_first[2]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \r_first[3]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \r_first[4]_i_2\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \r_last[0]_i_1__0\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \r_last[1]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \r_last[2]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \r_last[3]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \r_last[4]_i_2\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \r_mid[1]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \r_mid[2]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \r_mid[3]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \r_mid[4]_i_2\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \wb_outstanding[0]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \wb_outstanding[1]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \wb_outstanding[2]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \wb_outstanding[3]_i_1\ : label is "soft_lutpair32";
begin
  o_axi_awready_reg_0 <= \^o_axi_awready_reg_0\;
  o_axi_bvalid_reg_0 <= \^o_axi_bvalid_reg_0\;
  o_axi_wready_reg_0 <= \^o_axi_wready_reg_0\;
  s_axi_aresetn_0 <= \^s_axi_aresetn_0\;
  s_axi_bresp(1 downto 0) <= \^s_axi_bresp\(1 downto 0);
  w_wb_stb <= \^w_wb_stb\;
\ALT.last_owner_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF10FF10FF10F010"
    )
        port map (
      I0 => wb_pending_0,
      I1 => \^w_wb_stb\,
      I2 => \ALT.last_owner\,
      I3 => r_a_owner,
      I4 => r_wb_stb,
      I5 => wb_pending,
      O => wb_pending_reg_1
    );
\ALT.r_a_owner_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF05FF00FF050B01"
    )
        port map (
      I0 => wb_pending_0,
      I1 => \ALT.last_owner\,
      I2 => \^w_wb_stb\,
      I3 => r_a_owner,
      I4 => r_wb_stb,
      I5 => wb_pending,
      O => wb_pending_reg_0
    );
\err_loc[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4440"
    )
        port map (
      I0 => r_a_owner,
      I1 => m_wb_err,
      I2 => wb_pending_0,
      I3 => \^w_wb_stb\,
      O => o_wb_stb2
    );
\err_loc_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => o_wb_stb2,
      D => r_mid_reg(0),
      Q => err_loc(0),
      R => '0'
    );
\err_loc_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => o_wb_stb2,
      D => r_mid_reg(1),
      Q => err_loc(1),
      R => '0'
    );
\err_loc_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => o_wb_stb2,
      D => r_mid_reg(2),
      Q => err_loc(2),
      R => '0'
    );
\err_loc_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => o_wb_stb2,
      D => r_mid_reg(3),
      Q => err_loc(3),
      R => '0'
    );
\err_loc_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => o_wb_stb2,
      D => r_mid_reg(4),
      Q => err_loc(4),
      R => '0'
    );
err_state_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000BEFFFFBE"
    )
        port map (
      I0 => err_state_i_2_n_0,
      I1 => r_last_reg(2),
      I2 => r_first_reg(2),
      I3 => r_last_reg(1),
      I4 => r_first_reg(1),
      I5 => err_state_i_3_n_0,
      O => err_state_i_1_n_0
    );
err_state_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => r_last_reg(3),
      I1 => r_first_reg(3),
      I2 => r_first_reg(0),
      I3 => r_last_reg(0),
      I4 => r_last_reg(4),
      I5 => r_first_reg(4),
      O => err_state_i_2_n_0
    );
err_state_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7577757775777777"
    )
        port map (
      I0 => s_axi_aresetn,
      I1 => err_state,
      I2 => r_a_owner,
      I3 => m_wb_err,
      I4 => wb_pending_0,
      I5 => \^w_wb_stb\,
      O => err_state_i_3_n_0
    );
err_state_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => err_state_i_1_n_0,
      Q => err_state,
      R => '0'
    );
fifo_full_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F2220FFF02220000"
    )
        port map (
      I0 => fifo_full_i_2_n_0,
      I1 => fifo_full_i_3_n_0,
      I2 => \^o_axi_bvalid_reg_0\,
      I3 => s_axi_bready,
      I4 => axi_write_accepted,
      I5 => fifo_full,
      O => fifo_full_i_1_n_0
    );
fifo_full_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9666666666666666"
    )
        port map (
      I0 => r_first_reg(4),
      I1 => r_last_reg(4),
      I2 => r_first_reg(2),
      I3 => r_first_reg(1),
      I4 => r_first_reg(0),
      I5 => r_first_reg(3),
      O => fifo_full_i_2_n_0
    );
fifo_full_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF807F7F80"
    )
        port map (
      I0 => r_first_reg(2),
      I1 => r_first_reg(1),
      I2 => r_first_reg(0),
      I3 => r_first_reg(3),
      I4 => r_last_reg(3),
      I5 => fifo_full_i_4_n_0,
      O => fifo_full_i_3_n_0
    );
fifo_full_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB7DEFFFEFFFFB7D"
    )
        port map (
      I0 => r_last_reg(0),
      I1 => r_last_reg(1),
      I2 => r_first_reg(1),
      I3 => r_first_reg(0),
      I4 => r_last_reg(2),
      I5 => r_first_reg(2),
      O => fifo_full_i_4_n_0
    );
fifo_full_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => fifo_full_i_1_n_0,
      Q => fifo_full,
      R => \^s_axi_aresetn_0\
    );
m_wb_cyc_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFEFE0E"
    )
        port map (
      I0 => \^w_wb_stb\,
      I1 => wb_pending_0,
      I2 => r_a_owner,
      I3 => r_wb_stb,
      I4 => wb_pending,
      O => m_wb_cyc
    );
m_wb_reset_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axi_aresetn,
      O => \^s_axi_aresetn_0\
    );
o_axi_awready_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000020202FF"
    )
        port map (
      I0 => o_axi_awready_i_2_n_0,
      I1 => o_axi_awready_i_3_n_0,
      I2 => err_state,
      I3 => r_awvalid_reg_n_0,
      I4 => pending_axi_write123_out,
      I5 => o_axi_awready_i_4_n_0,
      O => o_axi_awready5_out
    );
o_axi_awready_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BEEBEBEBAAAAAAAA"
    )
        port map (
      I0 => fifo_full118_out,
      I1 => r_first_reg(4),
      I2 => r_last_reg(4),
      I3 => o_axi_awready_i_5_n_0,
      I4 => r_first_reg(3),
      I5 => fifo_full_i_3_n_0,
      O => o_axi_awready_i_2_n_0
    );
o_axi_awready_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF0707070707"
    )
        port map (
      I0 => s_axi_wvalid,
      I1 => \^o_axi_wready_reg_0\,
      I2 => r_wvalid_reg_n_0,
      I3 => r_a_owner,
      I4 => m_wb_stall,
      I5 => \^w_wb_stb\,
      O => o_axi_awready_i_3_n_0
    );
o_axi_awready_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F700F700F700FFFF"
    )
        port map (
      I0 => \^o_axi_bvalid_reg_0\,
      I1 => s_axi_bready,
      I2 => r_awvalid_reg_n_0,
      I3 => fifo_full,
      I4 => axi_write_accepted2,
      I5 => \^o_axi_awready_reg_0\,
      O => o_axi_awready_i_4_n_0
    );
o_axi_awready_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => r_first_reg(2),
      I1 => r_first_reg(1),
      I2 => r_first_reg(0),
      O => o_axi_awready_i_5_n_0
    );
o_axi_awready_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => o_axi_awready5_out,
      Q => \^o_axi_awready_reg_0\,
      S => \^s_axi_aresetn_0\
    );
\o_axi_bresp[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000C0C040004000"
    )
        port map (
      I0 => \o_axi_bresp[0]_i_2_n_0\,
      I1 => \o_axi_bresp[0]_i_3_n_0\,
      I2 => s_axi_aresetn,
      I3 => err_state,
      I4 => s_axi_bready,
      I5 => \^o_axi_bvalid_reg_0\,
      O => \o_axi_bresp[0]_i_1_n_0\
    );
\o_axi_bresp[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0006090009000009"
    )
        port map (
      I0 => r_last_reg(4),
      I1 => err_loc(4),
      I2 => \o_axi_bresp[0]_i_4_n_0\,
      I3 => err_loc(3),
      I4 => \o_axi_bresp[0]_i_5_n_0\,
      I5 => r_last_reg(3),
      O => \o_axi_bresp[0]_i_2_n_0\
    );
\o_axi_bresp[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF4FBBBB0000"
    )
        port map (
      I0 => s_axi_bready,
      I1 => \^o_axi_bvalid_reg_0\,
      I2 => o_wb_stb2,
      I3 => err_state,
      I4 => \^s_axi_bresp\(1),
      I5 => \^s_axi_bresp\(0),
      O => \o_axi_bresp[0]_i_3_n_0\
    );
\o_axi_bresp[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7BFFDEFEFF7BFFD"
    )
        port map (
      I0 => err_loc(0),
      I1 => err_loc(2),
      I2 => r_last_reg(0),
      I3 => r_last_reg(1),
      I4 => r_last_reg(2),
      I5 => err_loc(1),
      O => \o_axi_bresp[0]_i_4_n_0\
    );
\o_axi_bresp[0]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => r_last_reg(2),
      I1 => r_last_reg(1),
      I2 => r_last_reg(0),
      O => \o_axi_bresp[0]_i_5_n_0\
    );
\o_axi_bresp[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBA000000000000"
    )
        port map (
      I0 => err_state,
      I1 => s_axi_bready,
      I2 => \^o_axi_bvalid_reg_0\,
      I3 => o_wb_stb2,
      I4 => s_axi_aresetn,
      I5 => \o_axi_bresp[1]_i_2_n_0\,
      O => \o_axi_bresp[1]_i_1_n_0\
    );
\o_axi_bresp[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF40F04FFF40004"
    )
        port map (
      I0 => \o_axi_bresp[1]_i_3_n_0\,
      I1 => o_wb_stb2,
      I2 => \o_axi_bresp[1]_i_4_n_0\,
      I3 => err_state,
      I4 => \^s_axi_bresp\(1),
      I5 => \o_axi_bresp[0]_i_2_n_0\,
      O => \o_axi_bresp[1]_i_2_n_0\
    );
\o_axi_bresp[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFBFFFBFFFBF00"
    )
        port map (
      I0 => \o_axi_bresp[1]_i_5_n_0\,
      I1 => \o_axi_bresp[1]_i_6_n_0\,
      I2 => o_axi_bvalid_i_5_n_0,
      I3 => \^o_axi_bvalid_reg_0\,
      I4 => \o_axi_bresp[1]_i_7_n_0\,
      I5 => \o_axi_bresp[1]_i_8_n_0\,
      O => \o_axi_bresp[1]_i_3_n_0\
    );
\o_axi_bresp[1]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^o_axi_bvalid_reg_0\,
      I1 => s_axi_bready,
      O => \o_axi_bresp[1]_i_4_n_0\
    );
\o_axi_bresp[1]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"807F7F80"
    )
        port map (
      I0 => r_last_reg(0),
      I1 => r_last_reg(1),
      I2 => r_last_reg(2),
      I3 => r_last_reg(3),
      I4 => r_mid_reg(3),
      O => \o_axi_bresp[1]_i_5_n_0\
    );
\o_axi_bresp[1]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF800080007FFF"
    )
        port map (
      I0 => r_last_reg(3),
      I1 => r_last_reg(0),
      I2 => r_last_reg(1),
      I3 => r_last_reg(2),
      I4 => r_last_reg(4),
      I5 => r_mid_reg(4),
      O => \o_axi_bresp[1]_i_6_n_0\
    );
\o_axi_bresp[1]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => r_last_reg(1),
      I1 => r_mid_reg(1),
      I2 => r_last_reg(0),
      I3 => r_mid_reg(0),
      O => \o_axi_bresp[1]_i_7_n_0\
    );
\o_axi_bresp[1]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => r_last_reg(4),
      I1 => r_mid_reg(4),
      I2 => r_mid_reg(3),
      I3 => r_last_reg(3),
      I4 => r_mid_reg(2),
      I5 => r_last_reg(2),
      O => \o_axi_bresp[1]_i_8_n_0\
    );
\o_axi_bresp_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \o_axi_bresp[0]_i_1_n_0\,
      Q => \^s_axi_bresp\(0),
      R => '0'
    );
\o_axi_bresp_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \o_axi_bresp[1]_i_1_n_0\,
      Q => \^s_axi_bresp\(1),
      R => '0'
    );
o_axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFE200FF00"
    )
        port map (
      I0 => o_axi_bvalid_i_2_n_0,
      I1 => err_state,
      I2 => o_axi_bvalid_i_3_n_0,
      I3 => \^o_axi_bvalid_reg_0\,
      I4 => s_axi_bready,
      I5 => r_mid116_out,
      O => o_axi_bvalid_i_1_n_0
    );
o_axi_bvalid_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D6BFBFD6FFFFFFFF"
    )
        port map (
      I0 => r_mid_reg(3),
      I1 => r_last_reg(3),
      I2 => \o_axi_bresp[0]_i_5_n_0\,
      I3 => r_last_reg(4),
      I4 => r_mid_reg(4),
      I5 => o_axi_bvalid_i_5_n_0,
      O => o_axi_bvalid_i_2_n_0
    );
o_axi_bvalid_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FDDEEFFFEFFFFDDE"
    )
        port map (
      I0 => r_first_reg(3),
      I1 => o_axi_bvalid_i_6_n_0,
      I2 => r_last_reg(3),
      I3 => \o_axi_bresp[0]_i_5_n_0\,
      I4 => r_first_reg(4),
      I5 => r_last_reg(4),
      O => o_axi_bvalid_i_3_n_0
    );
o_axi_bvalid_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0E0E0E00"
    )
        port map (
      I0 => \^w_wb_stb\,
      I1 => wb_pending_0,
      I2 => r_a_owner,
      I3 => m_wb_err,
      I4 => m_wb_ack,
      O => r_mid116_out
    );
o_axi_bvalid_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0482100010000482"
    )
        port map (
      I0 => r_mid_reg(0),
      I1 => r_mid_reg(1),
      I2 => r_last_reg(1),
      I3 => r_last_reg(0),
      I4 => r_last_reg(2),
      I5 => r_mid_reg(2),
      O => o_axi_bvalid_i_5_n_0
    );
o_axi_bvalid_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB7DEFFFEFFFFB7D"
    )
        port map (
      I0 => r_first_reg(0),
      I1 => r_first_reg(1),
      I2 => r_last_reg(1),
      I3 => r_last_reg(0),
      I4 => r_last_reg(2),
      I5 => r_first_reg(2),
      O => o_axi_bvalid_i_6_n_0
    );
o_axi_bvalid_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => o_axi_bvalid_i_1_n_0,
      Q => \^o_axi_bvalid_reg_0\,
      R => \^s_axi_aresetn_0\
    );
o_axi_wready_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000D0D0D000D000D"
    )
        port map (
      I0 => pending_axi_write1,
      I1 => o_axi_awready_i_2_n_0,
      I2 => o_axi_wready_i_2_n_0,
      I3 => fifo_full,
      I4 => r_wvalid_reg_n_0,
      I5 => fifo_full118_out,
      O => o_axi_wready11_out
    );
o_axi_wready_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EC00FDFD"
    )
        port map (
      I0 => \^o_axi_wready_reg_0\,
      I1 => r_wvalid_reg_n_0,
      I2 => s_axi_wvalid,
      I3 => o_axi_wready_i_3_n_0,
      I4 => axi_write_accepted2,
      O => o_axi_wready_i_2_n_0
    );
o_axi_wready_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AABF"
    )
        port map (
      I0 => err_state,
      I1 => s_axi_awvalid,
      I2 => \^o_axi_awready_reg_0\,
      I3 => r_awvalid_reg_n_0,
      O => o_axi_wready_i_3_n_0
    );
o_axi_wready_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => o_axi_wready11_out,
      Q => \^o_axi_wready_reg_0\,
      S => \^s_axi_aresetn_0\
    );
\o_wb_addr[0]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r_addr(0),
      I1 => r_awvalid_reg_n_0,
      I2 => s_axi_awaddr(0),
      O => \o_wb_addr[0]_i_1__0_n_0\
    );
\o_wb_addr[10]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r_addr(10),
      I1 => r_awvalid_reg_n_0,
      I2 => s_axi_awaddr(10),
      O => \o_wb_addr[10]_i_1__0_n_0\
    );
\o_wb_addr[11]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r_addr(11),
      I1 => r_awvalid_reg_n_0,
      I2 => s_axi_awaddr(11),
      O => \o_wb_addr[11]_i_1__0_n_0\
    );
\o_wb_addr[12]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r_addr(12),
      I1 => r_awvalid_reg_n_0,
      I2 => s_axi_awaddr(12),
      O => \o_wb_addr[12]_i_1__0_n_0\
    );
\o_wb_addr[13]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r_addr(13),
      I1 => r_awvalid_reg_n_0,
      I2 => s_axi_awaddr(13),
      O => \o_wb_addr[13]_i_1__0_n_0\
    );
\o_wb_addr[14]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r_addr(14),
      I1 => r_awvalid_reg_n_0,
      I2 => s_axi_awaddr(14),
      O => \o_wb_addr[14]_i_1__0_n_0\
    );
\o_wb_addr[15]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r_addr(15),
      I1 => r_awvalid_reg_n_0,
      I2 => s_axi_awaddr(15),
      O => \o_wb_addr[15]_i_1__0_n_0\
    );
\o_wb_addr[16]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r_addr(16),
      I1 => r_awvalid_reg_n_0,
      I2 => s_axi_awaddr(16),
      O => \o_wb_addr[16]_i_1__0_n_0\
    );
\o_wb_addr[17]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r_addr(17),
      I1 => r_awvalid_reg_n_0,
      I2 => s_axi_awaddr(17),
      O => \o_wb_addr[17]_i_1__0_n_0\
    );
\o_wb_addr[18]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r_addr(18),
      I1 => r_awvalid_reg_n_0,
      I2 => s_axi_awaddr(18),
      O => \o_wb_addr[18]_i_1__0_n_0\
    );
\o_wb_addr[19]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r_addr(19),
      I1 => r_awvalid_reg_n_0,
      I2 => s_axi_awaddr(19),
      O => \o_wb_addr[19]_i_1__0_n_0\
    );
\o_wb_addr[1]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r_addr(1),
      I1 => r_awvalid_reg_n_0,
      I2 => s_axi_awaddr(1),
      O => \o_wb_addr[1]_i_1__0_n_0\
    );
\o_wb_addr[20]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r_addr(20),
      I1 => r_awvalid_reg_n_0,
      I2 => s_axi_awaddr(20),
      O => \o_wb_addr[20]_i_1__0_n_0\
    );
\o_wb_addr[21]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r_addr(21),
      I1 => r_awvalid_reg_n_0,
      I2 => s_axi_awaddr(21),
      O => \o_wb_addr[21]_i_1__0_n_0\
    );
\o_wb_addr[22]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r_addr(22),
      I1 => r_awvalid_reg_n_0,
      I2 => s_axi_awaddr(22),
      O => \o_wb_addr[22]_i_1__0_n_0\
    );
\o_wb_addr[23]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r_addr(23),
      I1 => r_awvalid_reg_n_0,
      I2 => s_axi_awaddr(23),
      O => \o_wb_addr[23]_i_1__0_n_0\
    );
\o_wb_addr[24]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r_addr(24),
      I1 => r_awvalid_reg_n_0,
      I2 => s_axi_awaddr(24),
      O => \o_wb_addr[24]_i_1__0_n_0\
    );
\o_wb_addr[25]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r_addr(25),
      I1 => r_awvalid_reg_n_0,
      I2 => s_axi_awaddr(25),
      O => \o_wb_addr[25]_i_1__0_n_0\
    );
\o_wb_addr[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r_addr(2),
      I1 => r_awvalid_reg_n_0,
      I2 => s_axi_awaddr(2),
      O => \o_wb_addr[2]_i_1__0_n_0\
    );
\o_wb_addr[3]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r_addr(3),
      I1 => r_awvalid_reg_n_0,
      I2 => s_axi_awaddr(3),
      O => \o_wb_addr[3]_i_1__0_n_0\
    );
\o_wb_addr[4]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r_addr(4),
      I1 => r_awvalid_reg_n_0,
      I2 => s_axi_awaddr(4),
      O => \o_wb_addr[4]_i_1__0_n_0\
    );
\o_wb_addr[5]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r_addr(5),
      I1 => r_awvalid_reg_n_0,
      I2 => s_axi_awaddr(5),
      O => \o_wb_addr[5]_i_1__0_n_0\
    );
\o_wb_addr[6]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r_addr(6),
      I1 => r_awvalid_reg_n_0,
      I2 => s_axi_awaddr(6),
      O => \o_wb_addr[6]_i_1__0_n_0\
    );
\o_wb_addr[7]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r_addr(7),
      I1 => r_awvalid_reg_n_0,
      I2 => s_axi_awaddr(7),
      O => \o_wb_addr[7]_i_1__0_n_0\
    );
\o_wb_addr[8]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r_addr(8),
      I1 => r_awvalid_reg_n_0,
      I2 => s_axi_awaddr(8),
      O => \o_wb_addr[8]_i_1__0_n_0\
    );
\o_wb_addr[9]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r_addr(9),
      I1 => r_awvalid_reg_n_0,
      I2 => s_axi_awaddr(9),
      O => \o_wb_addr[9]_i_1__0_n_0\
    );
\o_wb_addr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => axi_write_accepted2,
      D => \o_wb_addr[0]_i_1__0_n_0\,
      Q => \o_wb_addr_reg[25]_0\(0),
      R => '0'
    );
\o_wb_addr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => axi_write_accepted2,
      D => \o_wb_addr[10]_i_1__0_n_0\,
      Q => \o_wb_addr_reg[25]_0\(10),
      R => '0'
    );
\o_wb_addr_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => axi_write_accepted2,
      D => \o_wb_addr[11]_i_1__0_n_0\,
      Q => \o_wb_addr_reg[25]_0\(11),
      R => '0'
    );
\o_wb_addr_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => axi_write_accepted2,
      D => \o_wb_addr[12]_i_1__0_n_0\,
      Q => \o_wb_addr_reg[25]_0\(12),
      R => '0'
    );
\o_wb_addr_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => axi_write_accepted2,
      D => \o_wb_addr[13]_i_1__0_n_0\,
      Q => \o_wb_addr_reg[25]_0\(13),
      R => '0'
    );
\o_wb_addr_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => axi_write_accepted2,
      D => \o_wb_addr[14]_i_1__0_n_0\,
      Q => \o_wb_addr_reg[25]_0\(14),
      R => '0'
    );
\o_wb_addr_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => axi_write_accepted2,
      D => \o_wb_addr[15]_i_1__0_n_0\,
      Q => \o_wb_addr_reg[25]_0\(15),
      R => '0'
    );
\o_wb_addr_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => axi_write_accepted2,
      D => \o_wb_addr[16]_i_1__0_n_0\,
      Q => \o_wb_addr_reg[25]_0\(16),
      R => '0'
    );
\o_wb_addr_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => axi_write_accepted2,
      D => \o_wb_addr[17]_i_1__0_n_0\,
      Q => \o_wb_addr_reg[25]_0\(17),
      R => '0'
    );
\o_wb_addr_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => axi_write_accepted2,
      D => \o_wb_addr[18]_i_1__0_n_0\,
      Q => \o_wb_addr_reg[25]_0\(18),
      R => '0'
    );
\o_wb_addr_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => axi_write_accepted2,
      D => \o_wb_addr[19]_i_1__0_n_0\,
      Q => \o_wb_addr_reg[25]_0\(19),
      R => '0'
    );
\o_wb_addr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => axi_write_accepted2,
      D => \o_wb_addr[1]_i_1__0_n_0\,
      Q => \o_wb_addr_reg[25]_0\(1),
      R => '0'
    );
\o_wb_addr_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => axi_write_accepted2,
      D => \o_wb_addr[20]_i_1__0_n_0\,
      Q => \o_wb_addr_reg[25]_0\(20),
      R => '0'
    );
\o_wb_addr_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => axi_write_accepted2,
      D => \o_wb_addr[21]_i_1__0_n_0\,
      Q => \o_wb_addr_reg[25]_0\(21),
      R => '0'
    );
\o_wb_addr_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => axi_write_accepted2,
      D => \o_wb_addr[22]_i_1__0_n_0\,
      Q => \o_wb_addr_reg[25]_0\(22),
      R => '0'
    );
\o_wb_addr_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => axi_write_accepted2,
      D => \o_wb_addr[23]_i_1__0_n_0\,
      Q => \o_wb_addr_reg[25]_0\(23),
      R => '0'
    );
\o_wb_addr_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => axi_write_accepted2,
      D => \o_wb_addr[24]_i_1__0_n_0\,
      Q => \o_wb_addr_reg[25]_0\(24),
      R => '0'
    );
\o_wb_addr_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => axi_write_accepted2,
      D => \o_wb_addr[25]_i_1__0_n_0\,
      Q => \o_wb_addr_reg[25]_0\(25),
      R => '0'
    );
\o_wb_addr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => axi_write_accepted2,
      D => \o_wb_addr[2]_i_1__0_n_0\,
      Q => \o_wb_addr_reg[25]_0\(2),
      R => '0'
    );
\o_wb_addr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => axi_write_accepted2,
      D => \o_wb_addr[3]_i_1__0_n_0\,
      Q => \o_wb_addr_reg[25]_0\(3),
      R => '0'
    );
\o_wb_addr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => axi_write_accepted2,
      D => \o_wb_addr[4]_i_1__0_n_0\,
      Q => \o_wb_addr_reg[25]_0\(4),
      R => '0'
    );
\o_wb_addr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => axi_write_accepted2,
      D => \o_wb_addr[5]_i_1__0_n_0\,
      Q => \o_wb_addr_reg[25]_0\(5),
      R => '0'
    );
\o_wb_addr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => axi_write_accepted2,
      D => \o_wb_addr[6]_i_1__0_n_0\,
      Q => \o_wb_addr_reg[25]_0\(6),
      R => '0'
    );
\o_wb_addr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => axi_write_accepted2,
      D => \o_wb_addr[7]_i_1__0_n_0\,
      Q => \o_wb_addr_reg[25]_0\(7),
      R => '0'
    );
\o_wb_addr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => axi_write_accepted2,
      D => \o_wb_addr[8]_i_1__0_n_0\,
      Q => \o_wb_addr_reg[25]_0\(8),
      R => '0'
    );
\o_wb_addr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => axi_write_accepted2,
      D => \o_wb_addr[9]_i_1__0_n_0\,
      Q => \o_wb_addr_reg[25]_0\(9),
      R => '0'
    );
\o_wb_data[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r_data(0),
      I1 => r_wvalid_reg_n_0,
      I2 => s_axi_wdata(0),
      O => \o_wb_data[0]_i_1_n_0\
    );
\o_wb_data[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r_data(10),
      I1 => r_wvalid_reg_n_0,
      I2 => s_axi_wdata(10),
      O => \o_wb_data[10]_i_1_n_0\
    );
\o_wb_data[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r_data(11),
      I1 => r_wvalid_reg_n_0,
      I2 => s_axi_wdata(11),
      O => \o_wb_data[11]_i_1_n_0\
    );
\o_wb_data[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r_data(12),
      I1 => r_wvalid_reg_n_0,
      I2 => s_axi_wdata(12),
      O => \o_wb_data[12]_i_1_n_0\
    );
\o_wb_data[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r_data(13),
      I1 => r_wvalid_reg_n_0,
      I2 => s_axi_wdata(13),
      O => \o_wb_data[13]_i_1_n_0\
    );
\o_wb_data[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r_data(14),
      I1 => r_wvalid_reg_n_0,
      I2 => s_axi_wdata(14),
      O => \o_wb_data[14]_i_1_n_0\
    );
\o_wb_data[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r_data(15),
      I1 => r_wvalid_reg_n_0,
      I2 => s_axi_wdata(15),
      O => \o_wb_data[15]_i_1_n_0\
    );
\o_wb_data[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r_data(16),
      I1 => r_wvalid_reg_n_0,
      I2 => s_axi_wdata(16),
      O => \o_wb_data[16]_i_1_n_0\
    );
\o_wb_data[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r_data(17),
      I1 => r_wvalid_reg_n_0,
      I2 => s_axi_wdata(17),
      O => \o_wb_data[17]_i_1_n_0\
    );
\o_wb_data[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r_data(18),
      I1 => r_wvalid_reg_n_0,
      I2 => s_axi_wdata(18),
      O => \o_wb_data[18]_i_1_n_0\
    );
\o_wb_data[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r_data(19),
      I1 => r_wvalid_reg_n_0,
      I2 => s_axi_wdata(19),
      O => \o_wb_data[19]_i_1_n_0\
    );
\o_wb_data[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r_data(1),
      I1 => r_wvalid_reg_n_0,
      I2 => s_axi_wdata(1),
      O => \o_wb_data[1]_i_1_n_0\
    );
\o_wb_data[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r_data(20),
      I1 => r_wvalid_reg_n_0,
      I2 => s_axi_wdata(20),
      O => \o_wb_data[20]_i_1_n_0\
    );
\o_wb_data[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r_data(21),
      I1 => r_wvalid_reg_n_0,
      I2 => s_axi_wdata(21),
      O => \o_wb_data[21]_i_1_n_0\
    );
\o_wb_data[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r_data(22),
      I1 => r_wvalid_reg_n_0,
      I2 => s_axi_wdata(22),
      O => \o_wb_data[22]_i_1_n_0\
    );
\o_wb_data[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r_data(23),
      I1 => r_wvalid_reg_n_0,
      I2 => s_axi_wdata(23),
      O => \o_wb_data[23]_i_1_n_0\
    );
\o_wb_data[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r_data(24),
      I1 => r_wvalid_reg_n_0,
      I2 => s_axi_wdata(24),
      O => \o_wb_data[24]_i_1_n_0\
    );
\o_wb_data[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r_data(25),
      I1 => r_wvalid_reg_n_0,
      I2 => s_axi_wdata(25),
      O => \o_wb_data[25]_i_1_n_0\
    );
\o_wb_data[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r_data(26),
      I1 => r_wvalid_reg_n_0,
      I2 => s_axi_wdata(26),
      O => \o_wb_data[26]_i_1_n_0\
    );
\o_wb_data[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r_data(27),
      I1 => r_wvalid_reg_n_0,
      I2 => s_axi_wdata(27),
      O => \o_wb_data[27]_i_1_n_0\
    );
\o_wb_data[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r_data(28),
      I1 => r_wvalid_reg_n_0,
      I2 => s_axi_wdata(28),
      O => \o_wb_data[28]_i_1_n_0\
    );
\o_wb_data[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r_data(29),
      I1 => r_wvalid_reg_n_0,
      I2 => s_axi_wdata(29),
      O => \o_wb_data[29]_i_1_n_0\
    );
\o_wb_data[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r_data(2),
      I1 => r_wvalid_reg_n_0,
      I2 => s_axi_wdata(2),
      O => \o_wb_data[2]_i_1_n_0\
    );
\o_wb_data[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r_data(30),
      I1 => r_wvalid_reg_n_0,
      I2 => s_axi_wdata(30),
      O => \o_wb_data[30]_i_1_n_0\
    );
\o_wb_data[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"57"
    )
        port map (
      I0 => \^w_wb_stb\,
      I1 => m_wb_stall,
      I2 => r_a_owner,
      O => axi_write_accepted2
    );
\o_wb_data[31]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r_data(31),
      I1 => r_wvalid_reg_n_0,
      I2 => s_axi_wdata(31),
      O => \o_wb_data[31]_i_2_n_0\
    );
\o_wb_data[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r_data(3),
      I1 => r_wvalid_reg_n_0,
      I2 => s_axi_wdata(3),
      O => \o_wb_data[3]_i_1_n_0\
    );
\o_wb_data[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r_data(4),
      I1 => r_wvalid_reg_n_0,
      I2 => s_axi_wdata(4),
      O => \o_wb_data[4]_i_1_n_0\
    );
\o_wb_data[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r_data(5),
      I1 => r_wvalid_reg_n_0,
      I2 => s_axi_wdata(5),
      O => \o_wb_data[5]_i_1_n_0\
    );
\o_wb_data[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r_data(6),
      I1 => r_wvalid_reg_n_0,
      I2 => s_axi_wdata(6),
      O => \o_wb_data[6]_i_1_n_0\
    );
\o_wb_data[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r_data(7),
      I1 => r_wvalid_reg_n_0,
      I2 => s_axi_wdata(7),
      O => \o_wb_data[7]_i_1_n_0\
    );
\o_wb_data[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r_data(8),
      I1 => r_wvalid_reg_n_0,
      I2 => s_axi_wdata(8),
      O => \o_wb_data[8]_i_1_n_0\
    );
\o_wb_data[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r_data(9),
      I1 => r_wvalid_reg_n_0,
      I2 => s_axi_wdata(9),
      O => \o_wb_data[9]_i_1_n_0\
    );
\o_wb_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => axi_write_accepted2,
      D => \o_wb_data[0]_i_1_n_0\,
      Q => m_wb_dat_w(0),
      R => '0'
    );
\o_wb_data_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => axi_write_accepted2,
      D => \o_wb_data[10]_i_1_n_0\,
      Q => m_wb_dat_w(10),
      R => '0'
    );
\o_wb_data_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => axi_write_accepted2,
      D => \o_wb_data[11]_i_1_n_0\,
      Q => m_wb_dat_w(11),
      R => '0'
    );
\o_wb_data_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => axi_write_accepted2,
      D => \o_wb_data[12]_i_1_n_0\,
      Q => m_wb_dat_w(12),
      R => '0'
    );
\o_wb_data_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => axi_write_accepted2,
      D => \o_wb_data[13]_i_1_n_0\,
      Q => m_wb_dat_w(13),
      R => '0'
    );
\o_wb_data_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => axi_write_accepted2,
      D => \o_wb_data[14]_i_1_n_0\,
      Q => m_wb_dat_w(14),
      R => '0'
    );
\o_wb_data_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => axi_write_accepted2,
      D => \o_wb_data[15]_i_1_n_0\,
      Q => m_wb_dat_w(15),
      R => '0'
    );
\o_wb_data_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => axi_write_accepted2,
      D => \o_wb_data[16]_i_1_n_0\,
      Q => m_wb_dat_w(16),
      R => '0'
    );
\o_wb_data_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => axi_write_accepted2,
      D => \o_wb_data[17]_i_1_n_0\,
      Q => m_wb_dat_w(17),
      R => '0'
    );
\o_wb_data_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => axi_write_accepted2,
      D => \o_wb_data[18]_i_1_n_0\,
      Q => m_wb_dat_w(18),
      R => '0'
    );
\o_wb_data_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => axi_write_accepted2,
      D => \o_wb_data[19]_i_1_n_0\,
      Q => m_wb_dat_w(19),
      R => '0'
    );
\o_wb_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => axi_write_accepted2,
      D => \o_wb_data[1]_i_1_n_0\,
      Q => m_wb_dat_w(1),
      R => '0'
    );
\o_wb_data_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => axi_write_accepted2,
      D => \o_wb_data[20]_i_1_n_0\,
      Q => m_wb_dat_w(20),
      R => '0'
    );
\o_wb_data_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => axi_write_accepted2,
      D => \o_wb_data[21]_i_1_n_0\,
      Q => m_wb_dat_w(21),
      R => '0'
    );
\o_wb_data_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => axi_write_accepted2,
      D => \o_wb_data[22]_i_1_n_0\,
      Q => m_wb_dat_w(22),
      R => '0'
    );
\o_wb_data_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => axi_write_accepted2,
      D => \o_wb_data[23]_i_1_n_0\,
      Q => m_wb_dat_w(23),
      R => '0'
    );
\o_wb_data_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => axi_write_accepted2,
      D => \o_wb_data[24]_i_1_n_0\,
      Q => m_wb_dat_w(24),
      R => '0'
    );
\o_wb_data_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => axi_write_accepted2,
      D => \o_wb_data[25]_i_1_n_0\,
      Q => m_wb_dat_w(25),
      R => '0'
    );
\o_wb_data_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => axi_write_accepted2,
      D => \o_wb_data[26]_i_1_n_0\,
      Q => m_wb_dat_w(26),
      R => '0'
    );
\o_wb_data_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => axi_write_accepted2,
      D => \o_wb_data[27]_i_1_n_0\,
      Q => m_wb_dat_w(27),
      R => '0'
    );
\o_wb_data_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => axi_write_accepted2,
      D => \o_wb_data[28]_i_1_n_0\,
      Q => m_wb_dat_w(28),
      R => '0'
    );
\o_wb_data_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => axi_write_accepted2,
      D => \o_wb_data[29]_i_1_n_0\,
      Q => m_wb_dat_w(29),
      R => '0'
    );
\o_wb_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => axi_write_accepted2,
      D => \o_wb_data[2]_i_1_n_0\,
      Q => m_wb_dat_w(2),
      R => '0'
    );
\o_wb_data_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => axi_write_accepted2,
      D => \o_wb_data[30]_i_1_n_0\,
      Q => m_wb_dat_w(30),
      R => '0'
    );
\o_wb_data_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => axi_write_accepted2,
      D => \o_wb_data[31]_i_2_n_0\,
      Q => m_wb_dat_w(31),
      R => '0'
    );
\o_wb_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => axi_write_accepted2,
      D => \o_wb_data[3]_i_1_n_0\,
      Q => m_wb_dat_w(3),
      R => '0'
    );
\o_wb_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => axi_write_accepted2,
      D => \o_wb_data[4]_i_1_n_0\,
      Q => m_wb_dat_w(4),
      R => '0'
    );
\o_wb_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => axi_write_accepted2,
      D => \o_wb_data[5]_i_1_n_0\,
      Q => m_wb_dat_w(5),
      R => '0'
    );
\o_wb_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => axi_write_accepted2,
      D => \o_wb_data[6]_i_1_n_0\,
      Q => m_wb_dat_w(6),
      R => '0'
    );
\o_wb_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => axi_write_accepted2,
      D => \o_wb_data[7]_i_1_n_0\,
      Q => m_wb_dat_w(7),
      R => '0'
    );
\o_wb_data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => axi_write_accepted2,
      D => \o_wb_data[8]_i_1_n_0\,
      Q => m_wb_dat_w(8),
      R => '0'
    );
\o_wb_data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => axi_write_accepted2,
      D => \o_wb_data[9]_i_1_n_0\,
      Q => m_wb_dat_w(9),
      R => '0'
    );
\o_wb_sel[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r_sel(0),
      I1 => r_wvalid_reg_n_0,
      I2 => s_axi_wstrb(0),
      O => \o_wb_sel[0]_i_1_n_0\
    );
\o_wb_sel[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r_sel(1),
      I1 => r_wvalid_reg_n_0,
      I2 => s_axi_wstrb(1),
      O => \o_wb_sel[1]_i_1_n_0\
    );
\o_wb_sel[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r_sel(2),
      I1 => r_wvalid_reg_n_0,
      I2 => s_axi_wstrb(2),
      O => \o_wb_sel[2]_i_1_n_0\
    );
\o_wb_sel[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r_sel(3),
      I1 => r_wvalid_reg_n_0,
      I2 => s_axi_wstrb(3),
      O => \o_wb_sel[3]_i_1_n_0\
    );
\o_wb_sel_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => axi_write_accepted2,
      D => \o_wb_sel[0]_i_1_n_0\,
      Q => Q(0),
      R => '0'
    );
\o_wb_sel_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => axi_write_accepted2,
      D => \o_wb_sel[1]_i_1_n_0\,
      Q => Q(1),
      R => '0'
    );
\o_wb_sel_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => axi_write_accepted2,
      D => \o_wb_sel[2]_i_1_n_0\,
      Q => Q(2),
      R => '0'
    );
\o_wb_sel_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => axi_write_accepted2,
      D => \o_wb_sel[3]_i_1_n_0\,
      Q => Q(3),
      R => '0'
    );
o_wb_stb_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000F0E0F00"
    )
        port map (
      I0 => r_a_owner,
      I1 => m_wb_stall,
      I2 => o_wb_stb_i_2_n_0,
      I3 => axi_write_accepted,
      I4 => \^w_wb_stb\,
      I5 => o_wb_stb2,
      O => o_wb_stb_i_1_n_0
    );
o_wb_stb_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => err_state,
      I1 => s_axi_aresetn,
      O => o_wb_stb_i_2_n_0
    );
o_wb_stb_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => o_wb_stb_i_1_n_0,
      Q => \^w_wb_stb\,
      R => '0'
    );
\r_addr[25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_awvalid,
      I1 => \^o_axi_awready_reg_0\,
      O => pending_axi_write123_out
    );
\r_addr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => pending_axi_write123_out,
      D => s_axi_awaddr(0),
      Q => r_addr(0),
      R => '0'
    );
\r_addr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => pending_axi_write123_out,
      D => s_axi_awaddr(10),
      Q => r_addr(10),
      R => '0'
    );
\r_addr_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => pending_axi_write123_out,
      D => s_axi_awaddr(11),
      Q => r_addr(11),
      R => '0'
    );
\r_addr_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => pending_axi_write123_out,
      D => s_axi_awaddr(12),
      Q => r_addr(12),
      R => '0'
    );
\r_addr_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => pending_axi_write123_out,
      D => s_axi_awaddr(13),
      Q => r_addr(13),
      R => '0'
    );
\r_addr_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => pending_axi_write123_out,
      D => s_axi_awaddr(14),
      Q => r_addr(14),
      R => '0'
    );
\r_addr_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => pending_axi_write123_out,
      D => s_axi_awaddr(15),
      Q => r_addr(15),
      R => '0'
    );
\r_addr_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => pending_axi_write123_out,
      D => s_axi_awaddr(16),
      Q => r_addr(16),
      R => '0'
    );
\r_addr_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => pending_axi_write123_out,
      D => s_axi_awaddr(17),
      Q => r_addr(17),
      R => '0'
    );
\r_addr_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => pending_axi_write123_out,
      D => s_axi_awaddr(18),
      Q => r_addr(18),
      R => '0'
    );
\r_addr_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => pending_axi_write123_out,
      D => s_axi_awaddr(19),
      Q => r_addr(19),
      R => '0'
    );
\r_addr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => pending_axi_write123_out,
      D => s_axi_awaddr(1),
      Q => r_addr(1),
      R => '0'
    );
\r_addr_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => pending_axi_write123_out,
      D => s_axi_awaddr(20),
      Q => r_addr(20),
      R => '0'
    );
\r_addr_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => pending_axi_write123_out,
      D => s_axi_awaddr(21),
      Q => r_addr(21),
      R => '0'
    );
\r_addr_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => pending_axi_write123_out,
      D => s_axi_awaddr(22),
      Q => r_addr(22),
      R => '0'
    );
\r_addr_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => pending_axi_write123_out,
      D => s_axi_awaddr(23),
      Q => r_addr(23),
      R => '0'
    );
\r_addr_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => pending_axi_write123_out,
      D => s_axi_awaddr(24),
      Q => r_addr(24),
      R => '0'
    );
\r_addr_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => pending_axi_write123_out,
      D => s_axi_awaddr(25),
      Q => r_addr(25),
      R => '0'
    );
\r_addr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => pending_axi_write123_out,
      D => s_axi_awaddr(2),
      Q => r_addr(2),
      R => '0'
    );
\r_addr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => pending_axi_write123_out,
      D => s_axi_awaddr(3),
      Q => r_addr(3),
      R => '0'
    );
\r_addr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => pending_axi_write123_out,
      D => s_axi_awaddr(4),
      Q => r_addr(4),
      R => '0'
    );
\r_addr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => pending_axi_write123_out,
      D => s_axi_awaddr(5),
      Q => r_addr(5),
      R => '0'
    );
\r_addr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => pending_axi_write123_out,
      D => s_axi_awaddr(6),
      Q => r_addr(6),
      R => '0'
    );
\r_addr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => pending_axi_write123_out,
      D => s_axi_awaddr(7),
      Q => r_addr(7),
      R => '0'
    );
\r_addr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => pending_axi_write123_out,
      D => s_axi_awaddr(8),
      Q => r_addr(8),
      R => '0'
    );
\r_addr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => pending_axi_write123_out,
      D => s_axi_awaddr(9),
      Q => r_addr(9),
      R => '0'
    );
r_awvalid_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55400000"
    )
        port map (
      I0 => axi_write_accepted,
      I1 => s_axi_awvalid,
      I2 => \^o_axi_awready_reg_0\,
      I3 => r_awvalid_reg_n_0,
      I4 => s_axi_aresetn,
      O => r_awvalid_i_1_n_0
    );
r_awvalid_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => r_awvalid_i_1_n_0,
      Q => r_awvalid_reg_n_0,
      R => '0'
    );
\r_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => pending_axi_write1,
      D => s_axi_wdata(0),
      Q => r_data(0),
      R => '0'
    );
\r_data_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => pending_axi_write1,
      D => s_axi_wdata(10),
      Q => r_data(10),
      R => '0'
    );
\r_data_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => pending_axi_write1,
      D => s_axi_wdata(11),
      Q => r_data(11),
      R => '0'
    );
\r_data_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => pending_axi_write1,
      D => s_axi_wdata(12),
      Q => r_data(12),
      R => '0'
    );
\r_data_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => pending_axi_write1,
      D => s_axi_wdata(13),
      Q => r_data(13),
      R => '0'
    );
\r_data_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => pending_axi_write1,
      D => s_axi_wdata(14),
      Q => r_data(14),
      R => '0'
    );
\r_data_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => pending_axi_write1,
      D => s_axi_wdata(15),
      Q => r_data(15),
      R => '0'
    );
\r_data_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => pending_axi_write1,
      D => s_axi_wdata(16),
      Q => r_data(16),
      R => '0'
    );
\r_data_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => pending_axi_write1,
      D => s_axi_wdata(17),
      Q => r_data(17),
      R => '0'
    );
\r_data_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => pending_axi_write1,
      D => s_axi_wdata(18),
      Q => r_data(18),
      R => '0'
    );
\r_data_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => pending_axi_write1,
      D => s_axi_wdata(19),
      Q => r_data(19),
      R => '0'
    );
\r_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => pending_axi_write1,
      D => s_axi_wdata(1),
      Q => r_data(1),
      R => '0'
    );
\r_data_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => pending_axi_write1,
      D => s_axi_wdata(20),
      Q => r_data(20),
      R => '0'
    );
\r_data_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => pending_axi_write1,
      D => s_axi_wdata(21),
      Q => r_data(21),
      R => '0'
    );
\r_data_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => pending_axi_write1,
      D => s_axi_wdata(22),
      Q => r_data(22),
      R => '0'
    );
\r_data_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => pending_axi_write1,
      D => s_axi_wdata(23),
      Q => r_data(23),
      R => '0'
    );
\r_data_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => pending_axi_write1,
      D => s_axi_wdata(24),
      Q => r_data(24),
      R => '0'
    );
\r_data_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => pending_axi_write1,
      D => s_axi_wdata(25),
      Q => r_data(25),
      R => '0'
    );
\r_data_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => pending_axi_write1,
      D => s_axi_wdata(26),
      Q => r_data(26),
      R => '0'
    );
\r_data_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => pending_axi_write1,
      D => s_axi_wdata(27),
      Q => r_data(27),
      R => '0'
    );
\r_data_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => pending_axi_write1,
      D => s_axi_wdata(28),
      Q => r_data(28),
      R => '0'
    );
\r_data_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => pending_axi_write1,
      D => s_axi_wdata(29),
      Q => r_data(29),
      R => '0'
    );
\r_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => pending_axi_write1,
      D => s_axi_wdata(2),
      Q => r_data(2),
      R => '0'
    );
\r_data_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => pending_axi_write1,
      D => s_axi_wdata(30),
      Q => r_data(30),
      R => '0'
    );
\r_data_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => pending_axi_write1,
      D => s_axi_wdata(31),
      Q => r_data(31),
      R => '0'
    );
\r_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => pending_axi_write1,
      D => s_axi_wdata(3),
      Q => r_data(3),
      R => '0'
    );
\r_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => pending_axi_write1,
      D => s_axi_wdata(4),
      Q => r_data(4),
      R => '0'
    );
\r_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => pending_axi_write1,
      D => s_axi_wdata(5),
      Q => r_data(5),
      R => '0'
    );
\r_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => pending_axi_write1,
      D => s_axi_wdata(6),
      Q => r_data(6),
      R => '0'
    );
\r_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => pending_axi_write1,
      D => s_axi_wdata(7),
      Q => r_data(7),
      R => '0'
    );
\r_data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => pending_axi_write1,
      D => s_axi_wdata(8),
      Q => r_data(8),
      R => '0'
    );
\r_data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => pending_axi_write1,
      D => s_axi_wdata(9),
      Q => r_data(9),
      R => '0'
    );
\r_first[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => r_first_reg(0),
      O => \r_first[0]_i_1_n_0\
    );
\r_first[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => r_first_reg(0),
      I1 => r_first_reg(1),
      O => \r_first[1]_i_1_n_0\
    );
\r_first[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => r_first_reg(2),
      I1 => r_first_reg(1),
      I2 => r_first_reg(0),
      O => \r_first[2]_i_1_n_0\
    );
\r_first[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => r_first_reg(3),
      I1 => r_first_reg(0),
      I2 => r_first_reg(1),
      I3 => r_first_reg(2),
      O => \r_first[3]_i_1_n_0\
    );
\r_first[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000011111000"
    )
        port map (
      I0 => o_axi_awready_i_3_n_0,
      I1 => err_state,
      I2 => s_axi_awvalid,
      I3 => \^o_axi_awready_reg_0\,
      I4 => r_awvalid_reg_n_0,
      I5 => fifo_full,
      O => axi_write_accepted
    );
\r_first[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => r_first_reg(4),
      I1 => r_first_reg(2),
      I2 => r_first_reg(1),
      I3 => r_first_reg(0),
      I4 => r_first_reg(3),
      O => p_1_in
    );
\r_first_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_write_accepted,
      D => \r_first[0]_i_1_n_0\,
      Q => r_first_reg(0),
      R => \^s_axi_aresetn_0\
    );
\r_first_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_write_accepted,
      D => \r_first[1]_i_1_n_0\,
      Q => r_first_reg(1),
      R => \^s_axi_aresetn_0\
    );
\r_first_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_write_accepted,
      D => \r_first[2]_i_1_n_0\,
      Q => r_first_reg(2),
      R => \^s_axi_aresetn_0\
    );
\r_first_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_write_accepted,
      D => \r_first[3]_i_1_n_0\,
      Q => r_first_reg(3),
      R => \^s_axi_aresetn_0\
    );
\r_first_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_write_accepted,
      D => p_1_in,
      Q => r_first_reg(4),
      R => \^s_axi_aresetn_0\
    );
\r_last[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => r_last_reg(0),
      O => next_last(0)
    );
\r_last[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => r_last_reg(0),
      I1 => r_last_reg(1),
      O => next_last(1)
    );
\r_last[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => r_last_reg(0),
      I1 => r_last_reg(1),
      I2 => r_last_reg(2),
      O => next_last(2)
    );
\r_last[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => r_last_reg(2),
      I1 => r_last_reg(1),
      I2 => r_last_reg(0),
      I3 => r_last_reg(3),
      O => next_last(3)
    );
\r_last[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_bready,
      I1 => \^o_axi_bvalid_reg_0\,
      O => fifo_full118_out
    );
\r_last[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => r_last_reg(2),
      I1 => r_last_reg(1),
      I2 => r_last_reg(0),
      I3 => r_last_reg(3),
      I4 => r_last_reg(4),
      O => next_last(4)
    );
\r_last_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => fifo_full118_out,
      D => next_last(0),
      Q => r_last_reg(0),
      R => \^s_axi_aresetn_0\
    );
\r_last_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => fifo_full118_out,
      D => next_last(1),
      Q => r_last_reg(1),
      R => \^s_axi_aresetn_0\
    );
\r_last_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => fifo_full118_out,
      D => next_last(2),
      Q => r_last_reg(2),
      R => \^s_axi_aresetn_0\
    );
\r_last_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => fifo_full118_out,
      D => next_last(3),
      Q => r_last_reg(3),
      R => \^s_axi_aresetn_0\
    );
\r_last_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => fifo_full118_out,
      D => next_last(4),
      Q => r_last_reg(4),
      R => \^s_axi_aresetn_0\
    );
\r_mid[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => r_mid_reg(0),
      O => p_0_in(0)
    );
\r_mid[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => r_mid_reg(0),
      I1 => r_mid_reg(1),
      O => p_0_in(1)
    );
\r_mid[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => r_mid_reg(2),
      I1 => r_mid_reg(1),
      I2 => r_mid_reg(0),
      O => p_0_in(2)
    );
\r_mid[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => r_mid_reg(3),
      I1 => r_mid_reg(0),
      I2 => r_mid_reg(1),
      I3 => r_mid_reg(2),
      O => p_0_in(3)
    );
\r_mid[4]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFEAAFEAAFEAAAA"
    )
        port map (
      I0 => \r_mid[4]_i_3_n_0\,
      I1 => m_wb_ack,
      I2 => m_wb_err,
      I3 => r_a_owner,
      I4 => wb_pending_0,
      I5 => \^w_wb_stb\,
      O => \r_mid[4]_i_1__0_n_0\
    );
\r_mid[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => r_mid_reg(4),
      I1 => r_mid_reg(3),
      I2 => r_mid_reg(2),
      I3 => r_mid_reg(1),
      I4 => r_mid_reg(0),
      O => p_0_in(4)
    );
\r_mid[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA28AAAAAAAAAA28"
    )
        port map (
      I0 => err_state,
      I1 => r_first_reg(4),
      I2 => r_mid_reg(4),
      I3 => \r_mid[4]_i_4_n_0\,
      I4 => r_mid_reg(3),
      I5 => r_first_reg(3),
      O => \r_mid[4]_i_3_n_0\
    );
\r_mid[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => r_mid_reg(2),
      I1 => r_first_reg(2),
      I2 => r_mid_reg(1),
      I3 => r_first_reg(1),
      I4 => r_first_reg(0),
      I5 => r_mid_reg(0),
      O => \r_mid[4]_i_4_n_0\
    );
\r_mid_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \r_mid[4]_i_1__0_n_0\,
      D => p_0_in(0),
      Q => r_mid_reg(0),
      R => \^s_axi_aresetn_0\
    );
\r_mid_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \r_mid[4]_i_1__0_n_0\,
      D => p_0_in(1),
      Q => r_mid_reg(1),
      R => \^s_axi_aresetn_0\
    );
\r_mid_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \r_mid[4]_i_1__0_n_0\,
      D => p_0_in(2),
      Q => r_mid_reg(2),
      R => \^s_axi_aresetn_0\
    );
\r_mid_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \r_mid[4]_i_1__0_n_0\,
      D => p_0_in(3),
      Q => r_mid_reg(3),
      R => \^s_axi_aresetn_0\
    );
\r_mid_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \r_mid[4]_i_1__0_n_0\,
      D => p_0_in(4),
      Q => r_mid_reg(4),
      R => \^s_axi_aresetn_0\
    );
\r_sel[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_wvalid,
      I1 => \^o_axi_wready_reg_0\,
      O => pending_axi_write1
    );
\r_sel_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => pending_axi_write1,
      D => s_axi_wstrb(0),
      Q => r_sel(0),
      R => '0'
    );
\r_sel_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => pending_axi_write1,
      D => s_axi_wstrb(1),
      Q => r_sel(1),
      R => '0'
    );
\r_sel_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => pending_axi_write1,
      D => s_axi_wstrb(2),
      Q => r_sel(2),
      R => '0'
    );
\r_sel_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => pending_axi_write1,
      D => s_axi_wstrb(3),
      Q => r_sel(3),
      R => '0'
    );
r_wvalid_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55400000"
    )
        port map (
      I0 => axi_write_accepted,
      I1 => s_axi_wvalid,
      I2 => \^o_axi_wready_reg_0\,
      I3 => r_wvalid_reg_n_0,
      I4 => s_axi_aresetn,
      O => r_wvalid_i_1_n_0
    );
r_wvalid_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => r_wvalid_i_1_n_0,
      Q => r_wvalid_reg_n_0,
      R => '0'
    );
\wb_outstanding[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \wb_outstanding_reg_n_0_[0]\,
      O => wb_outstanding(0)
    );
\wb_outstanding[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A659"
    )
        port map (
      I0 => \wb_outstanding_reg_n_0_[0]\,
      I1 => \^w_wb_stb\,
      I2 => m_wb_stall,
      I3 => wb_outstanding_reg(1),
      O => wb_outstanding(1)
    );
\wb_outstanding[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F708AE51"
    )
        port map (
      I0 => \wb_outstanding_reg_n_0_[0]\,
      I1 => \^w_wb_stb\,
      I2 => m_wb_stall,
      I3 => wb_outstanding_reg(2),
      I4 => wb_outstanding_reg(1),
      O => wb_outstanding(2)
    );
\wb_outstanding[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7F80FE01"
    )
        port map (
      I0 => \wb_outstanding_reg_n_0_[0]\,
      I1 => wb_outstanding_reg(1),
      I2 => wb_pending_i_4_n_0,
      I3 => wb_outstanding_reg(3),
      I4 => wb_outstanding_reg(2),
      O => wb_outstanding(3)
    );
\wb_outstanding[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAA9"
    )
        port map (
      I0 => wb_outstanding_reg(4),
      I1 => wb_outstanding_reg(3),
      I2 => wb_outstanding_reg(2),
      I3 => \wb_outstanding_reg_n_0_[0]\,
      I4 => wb_outstanding_reg(1),
      I5 => wb_pending_i_4_n_0,
      O => wb_outstanding(4)
    );
\wb_outstanding_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => wb_outstanding(0),
      Q => \wb_outstanding_reg_n_0_[0]\,
      R => wb_pending0
    );
\wb_outstanding_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => wb_outstanding(1),
      Q => wb_outstanding_reg(1),
      R => wb_pending0
    );
\wb_outstanding_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => wb_outstanding(2),
      Q => wb_outstanding_reg(2),
      R => wb_pending0
    );
\wb_outstanding_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => wb_outstanding(3),
      Q => wb_outstanding_reg(3),
      R => wb_pending0
    );
\wb_outstanding_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => wb_outstanding(4),
      Q => wb_outstanding_reg(4),
      R => wb_pending0
    );
wb_pending_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F1FFF1FFFFFFF1FF"
    )
        port map (
      I0 => wb_pending_0,
      I1 => \^w_wb_stb\,
      I2 => err_state,
      I3 => s_axi_aresetn,
      I4 => m_wb_err,
      I5 => r_a_owner,
      O => wb_pending0
    );
wb_pending_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => wb_pending_i_4_n_0,
      I1 => wb_outstanding_reg(2),
      I2 => wb_outstanding_reg(3),
      I3 => wb_outstanding_reg(1),
      I4 => wb_outstanding_reg(4),
      O => wb_pending_i_3_n_0
    );
wb_pending_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \^w_wb_stb\,
      I1 => m_wb_stall,
      I2 => r_a_owner,
      O => wb_pending_i_4_n_0
    );
wb_pending_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => wb_pending_i_3_n_0,
      Q => wb_pending_0,
      R => wb_pending0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity embsys_axlite2wbsp_0_0_wbarbiter is
  port (
    \ALT.last_owner\ : out STD_LOGIC;
    r_a_owner : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_wb_we : out STD_LOGIC;
    m_wb_sel : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \ALT.last_owner_reg_0\ : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    \ALT.r_a_owner_reg_0\ : in STD_LOGIC;
    m_wb_ack : in STD_LOGIC;
    m_wb_stall : in STD_LOGIC;
    w_wb_stb : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
end embsys_axlite2wbsp_0_0_wbarbiter;

architecture STRUCTURE of embsys_axlite2wbsp_0_0_wbarbiter is
  signal \^r_a_owner\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \m_wb_sel[0]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \m_wb_sel[1]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \m_wb_sel[2]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \m_wb_sel[3]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of m_wb_we_INST_0 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of wb_pending_i_2 : label is "soft_lutpair0";
begin
  r_a_owner <= \^r_a_owner\;
\ALT.last_owner_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \ALT.last_owner_reg_0\,
      Q => \ALT.last_owner\,
      R => '0'
    );
\ALT.r_a_owner_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \ALT.r_a_owner_reg_0\,
      Q => \^r_a_owner\,
      R => '0'
    );
\m_wb_sel[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^r_a_owner\,
      I1 => Q(0),
      O => m_wb_sel(0)
    );
\m_wb_sel[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^r_a_owner\,
      I1 => Q(1),
      O => m_wb_sel(1)
    );
\m_wb_sel[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^r_a_owner\,
      I1 => Q(2),
      O => m_wb_sel(2)
    );
\m_wb_sel[3]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^r_a_owner\,
      I1 => Q(3),
      O => m_wb_sel(3)
    );
m_wb_we_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^r_a_owner\,
      O => m_wb_we
    );
wb_pending_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2122"
    )
        port map (
      I0 => m_wb_ack,
      I1 => \^r_a_owner\,
      I2 => m_wb_stall,
      I3 => w_wb_stb,
      O => E(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity embsys_axlite2wbsp_0_0_axlite2wbsp is
  port (
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_axi_awready : out STD_LOGIC;
    s_axi_aresetn_0 : out STD_LOGIC;
    o_axi_bvalid_reg : out STD_LOGIC;
    o_axi_wready : out STD_LOGIC;
    o_axi_rvalid_reg : out STD_LOGIC;
    o_axi_arready : out STD_LOGIC;
    m_wb_dat_w : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_wb_cyc : out STD_LOGIC;
    m_wb_we : out STD_LOGIC;
    m_wb_stb : out STD_LOGIC;
    m_wb_sel : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_wb_adr : out STD_LOGIC_VECTOR ( 25 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    m_wb_dat_r : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_wb_ack : in STD_LOGIC;
    m_wb_err : in STD_LOGIC;
    m_wb_stall : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_rready : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 25 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 25 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC
  );
end embsys_axlite2wbsp_0_0_axlite2wbsp;

architecture STRUCTURE of embsys_axlite2wbsp_0_0_axlite2wbsp is
  signal \ALT.last_owner\ : STD_LOGIC;
  signal \AXI_WR.axi_write_decoder_n_7\ : STD_LOGIC;
  signal \AXI_WR.axi_write_decoder_n_8\ : STD_LOGIC;
  signal o_wb_addr : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal r_a_owner : STD_LOGIC;
  signal r_wb_stb : STD_LOGIC;
  signal \^s_axi_aresetn_0\ : STD_LOGIC;
  signal w_wb_sel : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal w_wb_stb : STD_LOGIC;
  signal wb_outstanding : STD_LOGIC;
  signal wb_pending : STD_LOGIC;
begin
  s_axi_aresetn_0 <= \^s_axi_aresetn_0\;
\ARB_WB.readorwrite\: entity work.embsys_axlite2wbsp_0_0_wbarbiter
     port map (
      \ALT.last_owner\ => \ALT.last_owner\,
      \ALT.last_owner_reg_0\ => \AXI_WR.axi_write_decoder_n_8\,
      \ALT.r_a_owner_reg_0\ => \AXI_WR.axi_write_decoder_n_7\,
      E(0) => wb_outstanding,
      Q(3 downto 0) => w_wb_sel(3 downto 0),
      m_wb_ack => m_wb_ack,
      m_wb_sel(3 downto 0) => m_wb_sel(3 downto 0),
      m_wb_stall => m_wb_stall,
      m_wb_we => m_wb_we,
      r_a_owner => r_a_owner,
      s_axi_aclk => s_axi_aclk,
      w_wb_stb => w_wb_stb
    );
\AXI_RD.axi_read_decoder\: entity work.embsys_axlite2wbsp_0_0_axilrd2wbsp
     port map (
      Q(25 downto 0) => o_wb_addr(25 downto 0),
      m_wb_ack => m_wb_ack,
      m_wb_adr(25 downto 0) => m_wb_adr(25 downto 0),
      m_wb_dat_r(31 downto 0) => m_wb_dat_r(31 downto 0),
      m_wb_err => m_wb_err,
      m_wb_stall => m_wb_stall,
      m_wb_stb => m_wb_stb,
      o_axi_arready_reg_0 => o_axi_arready,
      o_axi_rvalid_reg_0 => o_axi_rvalid_reg,
      r_a_owner => r_a_owner,
      \r_last_reg[0]_0\ => \^s_axi_aresetn_0\,
      r_wb_stb => r_wb_stb,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(25 downto 0) => s_axi_araddr(25 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rresp(1 downto 0) => s_axi_rresp(1 downto 0),
      w_wb_stb => w_wb_stb,
      wb_pending => wb_pending
    );
\AXI_WR.axi_write_decoder\: entity work.embsys_axlite2wbsp_0_0_axilwr2wbsp
     port map (
      \ALT.last_owner\ => \ALT.last_owner\,
      E(0) => wb_outstanding,
      Q(3 downto 0) => w_wb_sel(3 downto 0),
      m_wb_ack => m_wb_ack,
      m_wb_cyc => m_wb_cyc,
      m_wb_dat_w(31 downto 0) => m_wb_dat_w(31 downto 0),
      m_wb_err => m_wb_err,
      m_wb_stall => m_wb_stall,
      o_axi_awready_reg_0 => o_axi_awready,
      o_axi_bvalid_reg_0 => o_axi_bvalid_reg,
      o_axi_wready_reg_0 => o_axi_wready,
      \o_wb_addr_reg[25]_0\(25 downto 0) => o_wb_addr(25 downto 0),
      r_a_owner => r_a_owner,
      r_wb_stb => r_wb_stb,
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      s_axi_aresetn_0 => \^s_axi_aresetn_0\,
      s_axi_awaddr(25 downto 0) => s_axi_awaddr(25 downto 0),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bresp(1 downto 0) => s_axi_bresp(1 downto 0),
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wstrb(3 downto 0) => s_axi_wstrb(3 downto 0),
      s_axi_wvalid => s_axi_wvalid,
      w_wb_stb => w_wb_stb,
      wb_pending => wb_pending,
      wb_pending_reg_0 => \AXI_WR.axi_write_decoder_n_7\,
      wb_pending_reg_1 => \AXI_WR.axi_write_decoder_n_8\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity embsys_axlite2wbsp_0_0_axlite2wbsp_wrapper is
  port (
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_axi_awready : out STD_LOGIC;
    m_wb_reset : out STD_LOGIC;
    o_axi_bvalid_reg : out STD_LOGIC;
    o_axi_wready : out STD_LOGIC;
    o_axi_rvalid_reg : out STD_LOGIC;
    o_axi_arready : out STD_LOGIC;
    m_wb_dat_w : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_wb_cyc : out STD_LOGIC;
    m_wb_we : out STD_LOGIC;
    m_wb_stb : out STD_LOGIC;
    m_wb_sel : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_wb_adr : out STD_LOGIC_VECTOR ( 25 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    m_wb_dat_r : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_wb_ack : in STD_LOGIC;
    m_wb_err : in STD_LOGIC;
    m_wb_stall : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_rready : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 25 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 25 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC
  );
end embsys_axlite2wbsp_0_0_axlite2wbsp_wrapper;

architecture STRUCTURE of embsys_axlite2wbsp_0_0_axlite2wbsp_wrapper is
begin
axlite2wbsp: entity work.embsys_axlite2wbsp_0_0_axlite2wbsp
     port map (
      m_wb_ack => m_wb_ack,
      m_wb_adr(25 downto 0) => m_wb_adr(25 downto 0),
      m_wb_cyc => m_wb_cyc,
      m_wb_dat_r(31 downto 0) => m_wb_dat_r(31 downto 0),
      m_wb_dat_w(31 downto 0) => m_wb_dat_w(31 downto 0),
      m_wb_err => m_wb_err,
      m_wb_sel(3 downto 0) => m_wb_sel(3 downto 0),
      m_wb_stall => m_wb_stall,
      m_wb_stb => m_wb_stb,
      m_wb_we => m_wb_we,
      o_axi_arready => o_axi_arready,
      o_axi_awready => o_axi_awready,
      o_axi_bvalid_reg => o_axi_bvalid_reg,
      o_axi_rvalid_reg => o_axi_rvalid_reg,
      o_axi_wready => o_axi_wready,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(25 downto 0) => s_axi_araddr(25 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_aresetn_0 => m_wb_reset,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(25 downto 0) => s_axi_awaddr(25 downto 0),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bresp(1 downto 0) => s_axi_bresp(1 downto 0),
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rresp(1 downto 0) => s_axi_rresp(1 downto 0),
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wstrb(3 downto 0) => s_axi_wstrb(3 downto 0),
      s_axi_wvalid => s_axi_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity embsys_axlite2wbsp_0_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 27 downto 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 27 downto 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rready : in STD_LOGIC;
    m_wb_reset : out STD_LOGIC;
    m_wb_cyc : out STD_LOGIC;
    m_wb_stb : out STD_LOGIC;
    m_wb_we : out STD_LOGIC;
    m_wb_adr : out STD_LOGIC_VECTOR ( 25 downto 0 );
    m_wb_dat_w : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_wb_sel : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_wb_ack : in STD_LOGIC;
    m_wb_stall : in STD_LOGIC;
    m_wb_dat_r : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_wb_err : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of embsys_axlite2wbsp_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of embsys_axlite2wbsp_0_0 : entity is "embsys_axlite2wbsp_0_0,axlite2wbsp_wrapper,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of embsys_axlite2wbsp_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of embsys_axlite2wbsp_0_0 : entity is "package_project";
  attribute x_core_info : string;
  attribute x_core_info of embsys_axlite2wbsp_0_0 : entity is "axlite2wbsp_wrapper,Vivado 2024.2";
end embsys_axlite2wbsp_0_0;

architecture STRUCTURE of embsys_axlite2wbsp_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of m_wb_reset : signal is "xilinx.com:signal:reset:1.0 m_wb_reset RST";
  attribute x_interface_mode : string;
  attribute x_interface_mode of m_wb_reset : signal is "master m_wb_reset";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of m_wb_reset : signal is "XIL_INTERFACENAME m_wb_reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of s_axi_aclk : signal is "xilinx.com:signal:clock:1.0 s_axi_aclk CLK";
  attribute x_interface_mode of s_axi_aclk : signal is "slave s_axi_aclk";
  attribute x_interface_parameter of s_axi_aclk : signal is "XIL_INTERFACENAME s_axi_aclk, ASSOCIATED_BUSIF s_axi, ASSOCIATED_RESET s_axi_aresetn, FREQ_TOLERANCE_HZ -1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN embsys_Clk, INSERT_VIP 0";
  attribute x_interface_info of s_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 s_axi_aresetn RST";
  attribute x_interface_mode of s_axi_aresetn : signal is "slave s_axi_aresetn";
  attribute x_interface_parameter of s_axi_aresetn : signal is "XIL_INTERFACENAME s_axi_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of s_axi_arready : signal is "xilinx.com:interface:aximm:1.0 s_axi ARREADY";
  attribute x_interface_info of s_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi ARVALID";
  attribute x_interface_info of s_axi_awready : signal is "xilinx.com:interface:aximm:1.0 s_axi AWREADY";
  attribute x_interface_mode of s_axi_awready : signal is "slave s_axi";
  attribute x_interface_parameter of s_axi_awready : signal is "XIL_INTERFACENAME s_axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 28, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN embsys_Clk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute x_interface_info of s_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi AWVALID";
  attribute x_interface_info of s_axi_bready : signal is "xilinx.com:interface:aximm:1.0 s_axi BREADY";
  attribute x_interface_info of s_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi BVALID";
  attribute x_interface_info of s_axi_rready : signal is "xilinx.com:interface:aximm:1.0 s_axi RREADY";
  attribute x_interface_info of s_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi RVALID";
  attribute x_interface_info of s_axi_wready : signal is "xilinx.com:interface:aximm:1.0 s_axi WREADY";
  attribute x_interface_info of s_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi WVALID";
  attribute x_interface_info of s_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 s_axi ARADDR";
  attribute x_interface_info of s_axi_arcache : signal is "xilinx.com:interface:aximm:1.0 s_axi ARCACHE";
  attribute x_interface_info of s_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 s_axi ARPROT";
  attribute x_interface_info of s_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 s_axi AWADDR";
  attribute x_interface_info of s_axi_awcache : signal is "xilinx.com:interface:aximm:1.0 s_axi AWCACHE";
  attribute x_interface_info of s_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 s_axi AWPROT";
  attribute x_interface_info of s_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 s_axi BRESP";
  attribute x_interface_info of s_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 s_axi RDATA";
  attribute x_interface_info of s_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 s_axi RRESP";
  attribute x_interface_info of s_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 s_axi WDATA";
  attribute x_interface_info of s_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 s_axi WSTRB";
begin
U0: entity work.embsys_axlite2wbsp_0_0_axlite2wbsp_wrapper
     port map (
      m_wb_ack => m_wb_ack,
      m_wb_adr(25 downto 0) => m_wb_adr(25 downto 0),
      m_wb_cyc => m_wb_cyc,
      m_wb_dat_r(31 downto 0) => m_wb_dat_r(31 downto 0),
      m_wb_dat_w(31 downto 0) => m_wb_dat_w(31 downto 0),
      m_wb_err => m_wb_err,
      m_wb_reset => m_wb_reset,
      m_wb_sel(3 downto 0) => m_wb_sel(3 downto 0),
      m_wb_stall => m_wb_stall,
      m_wb_stb => m_wb_stb,
      m_wb_we => m_wb_we,
      o_axi_arready => s_axi_arready,
      o_axi_awready => s_axi_awready,
      o_axi_bvalid_reg => s_axi_bvalid,
      o_axi_rvalid_reg => s_axi_rvalid,
      o_axi_wready => s_axi_wready,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(25 downto 0) => s_axi_araddr(27 downto 2),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(25 downto 0) => s_axi_awaddr(27 downto 2),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bresp(1 downto 0) => s_axi_bresp(1 downto 0),
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rresp(1 downto 0) => s_axi_rresp(1 downto 0),
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wstrb(3 downto 0) => s_axi_wstrb(3 downto 0),
      s_axi_wvalid => s_axi_wvalid
    );
end STRUCTURE;
