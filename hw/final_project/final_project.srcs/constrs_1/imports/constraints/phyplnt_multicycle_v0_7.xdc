# 100 MHz clock - in the top level constraints file
#create_clock -name phyplnt_clk -period 10.000 [get_ports clk]

# Four-cycle combinational luminosity calculation.
#
# Restrict the startpoints to numerator_snapshot flip-flops.
# Exclude the DSP48E1 and all combinational logic.
#
# Setup: 4 cycles
# Hold:  3 cycles

# Numerator snapshot registers (42 flip-flops)
set num_regs [get_cells -hier -filter \
    {REF_NAME == FDRE && NAME =~ *u_phyplnt/numerator_snapshot_reg*}]

# Plant luminosity output registers (16 flip-flops)
set lux_regs [get_cells -hier -filter \
    {REF_NAME == FDRE && NAME =~ *u_phyplnt/lux_value_reg*}]

# Four-cycle setup, corresponding three-cycle hold
set_multicycle_path 4 -setup -end -from $num_regs -to $lux_regs
set_multicycle_path 3 -hold -start -from $num_regs -to $lux_regs