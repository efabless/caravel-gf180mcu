###############################################################################
# Created by write_sdc
# Tue Jun  7 19:56:29 2022
###############################################################################
current_design caravel_clocking
###############################################################################
# Timing Constraints
###############################################################################
create_clock -name ext_clk -period 10.0000 [get_ports {ext_clk}]
set_clock_transition 0.1500 [get_clocks {ext_clk}]
set_clock_uncertainty 0.2500 ext_clk
set_propagated_clock [get_clocks {ext_clk}]
set_input_delay 2.0000 -clock [get_clocks {ext_clk}] -add_delay [get_ports {ext_clk_sel}]
set_input_delay 2.0000 -clock [get_clocks {ext_clk}] -add_delay [get_ports {ext_reset}]
set_input_delay 2.0000 -clock [get_clocks {ext_clk}] -add_delay [get_ports {pll_clk}]
set_input_delay 2.0000 -clock [get_clocks {ext_clk}] -add_delay [get_ports {pll_clk90}]
set_input_delay 2.0000 -clock [get_clocks {ext_clk}] -add_delay [get_ports {resetb}]
set_input_delay 2.0000 -clock [get_clocks {ext_clk}] -add_delay [get_ports {sel2[0]}]
set_input_delay 2.0000 -clock [get_clocks {ext_clk}] -add_delay [get_ports {sel2[1]}]
set_input_delay 2.0000 -clock [get_clocks {ext_clk}] -add_delay [get_ports {sel2[2]}]
set_input_delay 2.0000 -clock [get_clocks {ext_clk}] -add_delay [get_ports {sel[0]}]
set_input_delay 2.0000 -clock [get_clocks {ext_clk}] -add_delay [get_ports {sel[1]}]
set_input_delay 2.0000 -clock [get_clocks {ext_clk}] -add_delay [get_ports {sel[2]}]
set_output_delay 2.0000 -clock [get_clocks {ext_clk}] -add_delay [get_ports {core_clk}]
set_output_delay 2.0000 -clock [get_clocks {ext_clk}] -add_delay [get_ports {resetb_sync}]
set_output_delay 2.0000 -clock [get_clocks {ext_clk}] -add_delay [get_ports {user_clk}]
###############################################################################
# Environment
###############################################################################
set_load -pin_load 0.0729 [get_ports {core_clk}]
set_load -pin_load 0.0729 [get_ports {resetb_sync}]
set_load -pin_load 0.0729 [get_ports {user_clk}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_4 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {ext_clk}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {ext_clk_sel}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {ext_reset}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {pll_clk}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {pll_clk90}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {resetb}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {sel[2]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {sel[1]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {sel[0]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {sel2[2]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {sel2[1]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {sel2[0]}]
set_timing_derate -early 0.9500
set_timing_derate -late 1.0500
###############################################################################
# Design Rules
###############################################################################
set_max_fanout 5.0000 [current_design]
