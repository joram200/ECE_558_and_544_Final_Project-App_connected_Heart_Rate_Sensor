#!/bin/bash -f
# ****************************************************************************
# Vivado (TM) v2024.2 (64-bit)
#
# Filename    : elaborate.sh
# Simulator   : AMD Vivado Simulator
# Description : Elaborate tb_wb_phyplnt_io snapshot
#
# ECE 544 Project 2 — Jose Ramirez (joram2@pdx.edu)
#
# usage: elaborate.sh
# ****************************************************************************
set -Eeuo pipefail

# resolve compiled library path in xsim.ini
export RDI_DATADIR="/tools/Xilinx/Vivado/2024.2/data"

echo "xelab --incr --debug typical --relax --mt 8 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -L xpm --snapshot tb_wb_phyplnt_io_behav xil_defaultlib.tb_wb_phyplnt_io xil_defaultlib.glbl -log elaborate.log"
xelab --incr --debug typical --relax --mt 8 \
    -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -L xpm \
    --snapshot tb_wb_phyplnt_io_behav \
    xil_defaultlib.tb_wb_phyplnt_io xil_defaultlib.glbl \
    -log elaborate.log
