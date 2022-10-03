###############################################################################
# Created by write_sdc
# Thu Mar 17 11:21:00 2022
###############################################################################
current_design gpio_control_block
###############################################################################
# Timing Constraints
###############################################################################
create_clock -name serial_clock -period 50.0000 [get_ports {serial_clock}]
set_clock_transition 0.1500 [get_clocks {serial_clock}]
set_clock_uncertainty 0.2500 serial_clock
set_propagated_clock [get_clocks {serial_clock}]
create_clock -name serial_load -period 50.0000 [get_ports {serial_load}]
set_clock_transition 0.1500 [get_clocks {serial_load}]
set_clock_uncertainty 0.2500 serial_load
set_propagated_clock [get_clocks {serial_load}]
set_input_delay 10.0000 -clock [get_clocks {serial_clock}] -add_delay [get_ports {gpio_defaults[0]}]
set_output_delay 10.0000 -clock [get_clocks {serial_clock}] -add_delay [get_ports {zero}]
###############################################################################
# Environment
###############################################################################
# why do we have different load than the default load
set_load -pin_load 0.0334 [get_ports {mgmt_gpio_in}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {gpio_defaults[0]}]
set_timing_derate -early 0.9500
set_timing_derate -late 1.0500
###############################################################################
# Design Rules
###############################################################################
set_max_fanout 5.0000 [current_design]

