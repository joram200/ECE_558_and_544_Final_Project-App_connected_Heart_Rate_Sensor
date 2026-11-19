#!/bin/bash -f
# ****************************************************************************
# Vivado (TM) v2024.2 (64-bit)
#
# Filename    : simulate.sh
# Simulator   : AMD Vivado Simulator
# Description : Simulate tb_wb_phyplnt_io (runs to $finish)
#
# ECE 544 Project 2 — Jose Ramirez (joram2@pdx.edu)
#
# usage: simulate.sh
# ****************************************************************************
set -Eeuo pipefail

echo "xsim tb_wb_phyplnt_io_behav -tclbatch tb_wb_phyplnt_io.tcl -log simulate.log"
xsim tb_wb_phyplnt_io_behav -tclbatch tb_wb_phyplnt_io.tcl -log simulate.log
