#!/bin/bash -f
# ****************************************************************************
# Vivado (TM) v2024.2 (64-bit)
#
# Filename    : elaborate.sh
# Simulator   : AMD Vivado Simulator
# Description : Elaborate tb_wb_subsystem_p2 snapshot
#
# ECE 544 Project 2 — Jose Ramirez (joram2@pdx.edu)
#
# usage: elaborate.sh
# ****************************************************************************
set -Eeuo pipefail

# resolve compiled library path in xsim.ini
export RDI_DATADIR="/tools/Xilinx/Vivado/2024.2/data"

echo "xelab --incr --debug typical --relax --mt 8 ..."
xelab --incr --debug typical --relax --mt 8 \
    -L xil_defaultlib \
    -L axi_lite_ipif_v3_0_4 \
    -L axi_intc_v4_1_20 \
    -L axi_infrastructure_v1_1_0 \
    -L axi_vip_v1_1_19 \
    -L uvm \
    -L xilinx_vip \
    -L unisims_ver -L unimacro_ver -L secureip -L xpm \
    --snapshot tb_wb_subsystem_p2_behav \
    xil_defaultlib.tb_wb_subsystem_p2 xil_defaultlib.glbl \
    -log elaborate.log
