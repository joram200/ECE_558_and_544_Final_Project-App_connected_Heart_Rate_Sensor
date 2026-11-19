#!/bin/bash -f
# ****************************************************************************
# Vivado (TM) v2024.2 (64-bit)
#
# Filename    : simulate.sh
# Simulator   : AMD Vivado Simulator
# Description : Simulate tb_wb_subsystem_p2 (runs 200 ms sim time)
#
# ECE 544 Project 2 — Jose Ramirez (joram2@pdx.edu)
#
# usage: simulate.sh
# ****************************************************************************
set -Eeuo pipefail

echo "xsim tb_wb_subsystem_p2_behav -tclbatch tb_wb_subsystem_p2.tcl -log simulate.log"
xsim tb_wb_subsystem_p2_behav \
    -key {Behavioral:sim_2:Functional:tb_wb_subsystem_p2} \
    -tclbatch tb_wb_subsystem_p2.tcl \
    -protoinst "protoinst_files/design_1_axi_vip.protoinst" \
    -protoinst "protoinst_files/design_1_axi_vip_intc.protoinst" \
    -protoinst "protoinst_files/design_1_axlite2wbsp.protoinst" \
    -protoinst "protoinst_files/design_1_axi_intc.protoinst" \
    -log simulate.log
