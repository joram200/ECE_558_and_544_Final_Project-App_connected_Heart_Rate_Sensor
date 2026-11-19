#!/bin/bash -f
# ****************************************************************************
# Vivado (TM) v2024.2 (64-bit)
#
# Filename    : compile.sh
# Simulator   : AMD Vivado Simulator
# Description : Compile tb_wb_phyplnt_io (unit testbench, no AXI VIP)
#
# ECE 544 Project 2 — Jose Ramirez (joram2@pdx.edu)
#
# usage: compile.sh
# ****************************************************************************
set -Eeuo pipefail

# resolve compiled library path in xsim.ini
export RDI_DATADIR="/tools/Xilinx/Vivado/2024.2/data"

echo "xvlog --incr --relax -prj tb_wb_phyplnt_io_vlog.prj"
xvlog --incr --relax -prj tb_wb_phyplnt_io_vlog.prj 2>&1 | tee compile.log

echo "Waiting for jobs to finish..."
echo "No pending jobs, compilation finished."
