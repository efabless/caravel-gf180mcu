### gf180 Caravel Signoff SDC
### Rev 2
### Date: 6/12/2022

## MASTER CLOCKS
create_clock -name clk -period 30 [get_ports {clock}] 

create_clock -name hkspi_clk -period 120 [get_ports {mprj_io[4]} ] 
create_clock -name hk_serial_clk -period 60 [get_pins {chip_core/housekeeping/serial_clock}]
create_clock -name hk_serial_load -period 1000 [get_pins {chip_core/housekeeping/serial_load}]
# hk_serial_clk period is x2 core clock

set_clock_uncertainty 0.1000 [get_clocks {clk hkspi_clk hk_serial_clk hk_serial_load}]

set_clock_groups \
   -name clock_group \
   -logically_exclusive \
   -group [get_clocks {clk}]\
   -group [get_clocks {hk_serial_clk}]\
   -group [get_clocks {hk_serial_load}]\
   -group [get_clocks {hkspi_clk}]

# clock <-> hk_serial_clk/load no paths
# future note: CDC stuff
# clock <-> hkspi_clk no paths with careful methods (clock is off)

set_propagated_clock [get_clocks {clk}]
set_propagated_clock [get_clocks {hk_serial_clk}]
set_propagated_clock [get_clocks {hk_serial_load}]
set_propagated_clock [get_clocks {hkspi_clk}]

## INPUT/OUTPUT DELAYS
set input_delay_value 4
set output_delay_value 4
puts "\[INFO\]: Setting output delay to: $output_delay_value"
puts "\[INFO\]: Setting input delay to: $input_delay_value"
# set_input_delay $input_delay_value [all_inputs]
# set_input_delay 0 [get_ports {clock mprj_io[4]}]
# set_output_delay $output_delay_value [all_outputs]

set_input_delay $input_delay_value  -clock [get_clocks {clk}] -add_delay [get_ports {gpio}]
set_input_delay $input_delay_value  -clock [get_clocks {clk}] -add_delay [get_ports {mprj_io[0]}]

set_input_delay $output_delay_value  -clock [get_clocks {hkspi_clk}] -add_delay [get_ports {mprj_io[1]}]
set_input_delay $input_delay_value  -clock [get_clocks {hkspi_clk}] -add_delay [get_ports {mprj_io[2]}]
set_input_delay $input_delay_value  -clock [get_clocks {hkspi_clk}] -add_delay [get_ports {mprj_io[3]}]

#set_input_delay $input_delay_value  -clock [get_clocks {clk}] -add_delay [get_ports {mprj_io[4]}]

set_input_delay $input_delay_value  -clock [get_clocks {clk}] -add_delay [get_ports {mprj_io[5]}]
set_input_delay $input_delay_value  -clock [get_clocks {clk}] -add_delay [get_ports {mprj_io[6]}]
set_input_delay $input_delay_value  -clock [get_clocks {clk}] -add_delay [get_ports {mprj_io[7]}]
set_input_delay $input_delay_value  -clock [get_clocks {clk}] -add_delay [get_ports {mprj_io[8]}]
set_input_delay $input_delay_value  -clock [get_clocks {clk}] -add_delay [get_ports {mprj_io[9]}]
set_input_delay $input_delay_value  -clock [get_clocks {clk}] -add_delay [get_ports {mprj_io[10]}]
set_input_delay $input_delay_value  -clock [get_clocks {clk}] -add_delay [get_ports {mprj_io[11]}]
set_input_delay $input_delay_value  -clock [get_clocks {clk}] -add_delay [get_ports {mprj_io[12]}]
set_input_delay $input_delay_value  -clock [get_clocks {clk}] -add_delay [get_ports {mprj_io[13]}]
set_input_delay $input_delay_value  -clock [get_clocks {clk}] -add_delay [get_ports {mprj_io[14]}]
set_input_delay $input_delay_value  -clock [get_clocks {clk}] -add_delay [get_ports {mprj_io[15]}]
set_input_delay $input_delay_value  -clock [get_clocks {clk}] -add_delay [get_ports {mprj_io[16]}]
set_input_delay $input_delay_value  -clock [get_clocks {clk}] -add_delay [get_ports {mprj_io[17]}]
set_input_delay $input_delay_value  -clock [get_clocks {clk}] -add_delay [get_ports {mprj_io[18]}]
set_input_delay $input_delay_value  -clock [get_clocks {clk}] -add_delay [get_ports {mprj_io[19]}]
set_input_delay $input_delay_value  -clock [get_clocks {clk}] -add_delay [get_ports {mprj_io[20]}]
set_input_delay $input_delay_value  -clock [get_clocks {clk}] -add_delay [get_ports {mprj_io[21]}]
set_input_delay $input_delay_value  -clock [get_clocks {clk}] -add_delay [get_ports {mprj_io[22]}]
set_input_delay $input_delay_value  -clock [get_clocks {clk}] -add_delay [get_ports {mprj_io[23]}]
set_input_delay $input_delay_value  -clock [get_clocks {clk}] -add_delay [get_ports {mprj_io[24]}]
set_input_delay $input_delay_value  -clock [get_clocks {clk}] -add_delay [get_ports {mprj_io[25]}]
set_input_delay $input_delay_value  -clock [get_clocks {clk}] -add_delay [get_ports {mprj_io[26]}]
set_input_delay $input_delay_value  -clock [get_clocks {clk}] -add_delay [get_ports {mprj_io[27]}]
set_input_delay $input_delay_value  -clock [get_clocks {clk}] -add_delay [get_ports {mprj_io[28]}]
set_input_delay $input_delay_value  -clock [get_clocks {clk}] -add_delay [get_ports {mprj_io[29]}]
set_input_delay $input_delay_value  -clock [get_clocks {clk}] -add_delay [get_ports {mprj_io[30]}]
set_input_delay $input_delay_value  -clock [get_clocks {clk}] -add_delay [get_ports {mprj_io[31]}]
set_input_delay $input_delay_value  -clock [get_clocks {clk}] -add_delay [get_ports {mprj_io[32]}]
set_input_delay $input_delay_value  -clock [get_clocks {clk}] -add_delay [get_ports {mprj_io[33]}]
set_input_delay $input_delay_value  -clock [get_clocks {clk}] -add_delay [get_ports {mprj_io[34]}]
set_input_delay $input_delay_value  -clock [get_clocks {clk}] -add_delay [get_ports {mprj_io[35]}]
set_input_delay $input_delay_value  -clock [get_clocks {clk}] -add_delay [get_ports {mprj_io[36]}]
set_input_delay $input_delay_value  -clock [get_clocks {clk}] -add_delay [get_ports {mprj_io[37]}]
set_input_delay $input_delay_value  -clock [get_clocks {clk}] -add_delay [get_ports {flash_io0}]
set_input_delay $input_delay_value  -clock [get_clocks {clk}] -add_delay [get_ports {flash_io1}]

set_output_delay $output_delay_value  -clock [get_clocks {clk}] -add_delay [get_ports {flash_csb}]
set_output_delay $output_delay_value  -clock [get_clocks {clk}] -add_delay [get_ports {flash_clk}]

# set_output_delay $output_delay_value  -clock [get_clocks {clk}] -add_delay [get_ports {gpio}]
set_output_delay $output_delay_value  -clock [get_clocks {clk}] -add_delay [get_ports {mprj_io[0]}]

set_output_delay $output_delay_value  -clock [get_clocks {clk}] -add_delay [get_ports {mprj_io[5]}]
set_output_delay $output_delay_value  -clock [get_clocks {clk}] -add_delay [get_ports {mprj_io[6]}]
set_output_delay $output_delay_value  -clock [get_clocks {clk}] -add_delay [get_ports {mprj_io[7]}]
set_output_delay $output_delay_value  -clock [get_clocks {clk}] -add_delay [get_ports {mprj_io[8]}]
set_output_delay $output_delay_value  -clock [get_clocks {clk}] -add_delay [get_ports {mprj_io[9]}]
set_output_delay $output_delay_value  -clock [get_clocks {clk}] -add_delay [get_ports {mprj_io[10]}]
set_output_delay $output_delay_value  -clock [get_clocks {clk}] -add_delay [get_ports {mprj_io[11]}]
set_output_delay $output_delay_value  -clock [get_clocks {clk}] -add_delay [get_ports {mprj_io[12]}]
set_output_delay $output_delay_value  -clock [get_clocks {clk}] -add_delay [get_ports {mprj_io[13]}]
set_output_delay $output_delay_value  -clock [get_clocks {clk}] -add_delay [get_ports {mprj_io[14]}]
set_output_delay $output_delay_value  -clock [get_clocks {clk}] -add_delay [get_ports {mprj_io[15]}]
set_output_delay $output_delay_value  -clock [get_clocks {clk}] -add_delay [get_ports {mprj_io[16]}]
set_output_delay $output_delay_value  -clock [get_clocks {clk}] -add_delay [get_ports {mprj_io[17]}]
set_output_delay $output_delay_value  -clock [get_clocks {clk}] -add_delay [get_ports {mprj_io[18]}]
set_output_delay $output_delay_value  -clock [get_clocks {clk}] -add_delay [get_ports {mprj_io[19]}]
set_output_delay $output_delay_value  -clock [get_clocks {clk}] -add_delay [get_ports {mprj_io[20]}]
set_output_delay $output_delay_value  -clock [get_clocks {clk}] -add_delay [get_ports {mprj_io[21]}]
set_output_delay $output_delay_value  -clock [get_clocks {clk}] -add_delay [get_ports {mprj_io[22]}]
set_output_delay $output_delay_value  -clock [get_clocks {clk}] -add_delay [get_ports {mprj_io[23]}]
set_output_delay $output_delay_value  -clock [get_clocks {clk}] -add_delay [get_ports {mprj_io[24]}]
set_output_delay $output_delay_value  -clock [get_clocks {clk}] -add_delay [get_ports {mprj_io[25]}]
set_output_delay $output_delay_value  -clock [get_clocks {clk}] -add_delay [get_ports {mprj_io[26]}]
set_output_delay $output_delay_value  -clock [get_clocks {clk}] -add_delay [get_ports {mprj_io[27]}]
set_output_delay $output_delay_value  -clock [get_clocks {clk}] -add_delay [get_ports {mprj_io[28]}]
set_output_delay $output_delay_value  -clock [get_clocks {clk}] -add_delay [get_ports {mprj_io[29]}]
set_output_delay $output_delay_value  -clock [get_clocks {clk}] -add_delay [get_ports {mprj_io[30]}]
set_output_delay $output_delay_value  -clock [get_clocks {clk}] -add_delay [get_ports {mprj_io[31]}]
set_output_delay $output_delay_value  -clock [get_clocks {clk}] -add_delay [get_ports {mprj_io[32]}]
set_output_delay $output_delay_value  -clock [get_clocks {clk}] -add_delay [get_ports {mprj_io[33]}]
set_output_delay $output_delay_value  -clock [get_clocks {clk}] -add_delay [get_ports {mprj_io[34]}]
set_output_delay $output_delay_value  -clock [get_clocks {clk}] -add_delay [get_ports {mprj_io[35]}]
set_output_delay $output_delay_value  -clock [get_clocks {clk}] -add_delay [get_ports {mprj_io[36]}]
set_output_delay $output_delay_value  -clock [get_clocks {clk}] -add_delay [get_ports {mprj_io[37]}]
set_output_delay $output_delay_value  -clock [get_clocks {clk}] -add_delay [get_ports {flash_io0}]
set_output_delay $output_delay_value  -clock [get_clocks {clk}] -add_delay [get_ports {flash_io1}]

set_max_fanout 22 [current_design]
# synthesis max fanout is 22

# Set system monitoring mux select to zero so that the clock/user_clk monitoring is disabled 
set_case_analysis 0 [get_pins chip_core/housekeeping/_4066_/S]
set_case_analysis 0 [get_pins chip_core/housekeeping/_4067_/S]

# Add case analysis for pads IE==1'b0 & OE==1'b1 & SL==1'b1 to be outputs

# \mprj_pads[*] except 2 and 4 as inputs
set_case_analysis 0 [get_pins padframe/*_pads*/IE]
set_case_analysis 1 [get_pins padframe/*_pads*/OE]
set_case_analysis 1 [get_pins padframe/*_pads*/SL]


set_case_analysis 1 [get_pins padframe/*_pads[2]/IE]
set_case_analysis 0 [get_pins padframe/*_pads[2]/OE]
set_case_analysis 1 [get_pins padframe/*_pads[2]/SL]
set_case_analysis 1 [get_pins padframe/*_pads[4]/IE]
set_case_analysis 0 [get_pins padframe/*_pads[4]/OE]
set_case_analysis 1 [get_pins padframe/*_pads[4]/SL]

# flash_* 
set_case_analysis 0 [get_pins padframe/flash_*/IE]
set_case_analysis 1 [get_pins padframe/flash_*/OE]
set_case_analysis 1 [get_pins padframe/flash_*/SL]

# gpio
set_case_analysis 0 [get_pins padframe/mgmt_gpio_pad/IE]
set_case_analysis 1 [get_pins padframe/mgmt_gpio_pad/OE]
set_case_analysis 1 [get_pins padframe/mgmt_gpio_pad/SL]

## FALSE PATHS (ASYNCHRONOUS INPUTS)
set_false_path -from [get_ports resetb]
set_false_path -from [get_ports gpio]

# set_false_path -from [get_ports mprj_io[*]] -through [get_pins chip_core/housekeeping/mgmt_gpio_in[*]]
# reset_path -from [get_ports mprj_io[4]] 
# reset_path -from [get_ports mprj_io[2]] 
#reset_path is not supported in PT read_sdc ^

set_false_path -from [get_ports mprj_io[0]] -through [get_pins chip_core/housekeeping/mgmt_gpio_in[0]]
set_false_path -from [get_ports mprj_io[1]] -through [get_pins chip_core/housekeeping/mgmt_gpio_in[1]]
set_false_path -from [get_ports mprj_io[3]] -through [get_pins chip_core/housekeeping/mgmt_gpio_in[3]]
set_false_path -from [get_ports mprj_io[5]] -through [get_pins chip_core/housekeeping/mgmt_gpio_in[5]]
set_false_path -from [get_ports mprj_io[6]] -through [get_pins chip_core/housekeeping/mgmt_gpio_in[6]]
set_false_path -from [get_ports mprj_io[7]] -through [get_pins chip_core/housekeeping/mgmt_gpio_in[7]]
set_false_path -from [get_ports mprj_io[8]] -through [get_pins chip_core/housekeeping/mgmt_gpio_in[8]]
set_false_path -from [get_ports mprj_io[9]] -through [get_pins chip_core/housekeeping/mgmt_gpio_in[9]]
set_false_path -from [get_ports mprj_io[10]] -through [get_pins chip_core/housekeeping/mgmt_gpio_in[10]]
set_false_path -from [get_ports mprj_io[11]] -through [get_pins chip_core/housekeeping/mgmt_gpio_in[11]]
set_false_path -from [get_ports mprj_io[12]] -through [get_pins chip_core/housekeeping/mgmt_gpio_in[12]]
set_false_path -from [get_ports mprj_io[13]] -through [get_pins chip_core/housekeeping/mgmt_gpio_in[13]]
set_false_path -from [get_ports mprj_io[14]] -through [get_pins chip_core/housekeeping/mgmt_gpio_in[14]]
set_false_path -from [get_ports mprj_io[15]] -through [get_pins chip_core/housekeeping/mgmt_gpio_in[15]]
set_false_path -from [get_ports mprj_io[16]] -through [get_pins chip_core/housekeeping/mgmt_gpio_in[16]]
set_false_path -from [get_ports mprj_io[17]] -through [get_pins chip_core/housekeeping/mgmt_gpio_in[17]]
set_false_path -from [get_ports mprj_io[18]] -through [get_pins chip_core/housekeeping/mgmt_gpio_in[18]]
set_false_path -from [get_ports mprj_io[19]] -through [get_pins chip_core/housekeeping/mgmt_gpio_in[19]]
set_false_path -from [get_ports mprj_io[20]] -through [get_pins chip_core/housekeeping/mgmt_gpio_in[20]]
set_false_path -from [get_ports mprj_io[21]] -through [get_pins chip_core/housekeeping/mgmt_gpio_in[21]]
set_false_path -from [get_ports mprj_io[22]] -through [get_pins chip_core/housekeeping/mgmt_gpio_in[22]]
set_false_path -from [get_ports mprj_io[23]] -through [get_pins chip_core/housekeeping/mgmt_gpio_in[23]]
set_false_path -from [get_ports mprj_io[24]] -through [get_pins chip_core/housekeeping/mgmt_gpio_in[24]]
set_false_path -from [get_ports mprj_io[25]] -through [get_pins chip_core/housekeeping/mgmt_gpio_in[25]]
set_false_path -from [get_ports mprj_io[26]] -through [get_pins chip_core/housekeeping/mgmt_gpio_in[26]]
set_false_path -from [get_ports mprj_io[27]] -through [get_pins chip_core/housekeeping/mgmt_gpio_in[27]]
set_false_path -from [get_ports mprj_io[28]] -through [get_pins chip_core/housekeeping/mgmt_gpio_in[28]]
set_false_path -from [get_ports mprj_io[29]] -through [get_pins chip_core/housekeeping/mgmt_gpio_in[29]]
set_false_path -from [get_ports mprj_io[30]] -through [get_pins chip_core/housekeeping/mgmt_gpio_in[30]]
set_false_path -from [get_ports mprj_io[31]] -through [get_pins chip_core/housekeeping/mgmt_gpio_in[31]]
set_false_path -from [get_ports mprj_io[32]] -through [get_pins chip_core/housekeeping/mgmt_gpio_in[32]]
set_false_path -from [get_ports mprj_io[33]] -through [get_pins chip_core/housekeeping/mgmt_gpio_in[33]]
set_false_path -from [get_ports mprj_io[34]] -through [get_pins chip_core/housekeeping/mgmt_gpio_in[34]]
set_false_path -from [get_ports mprj_io[35]] -through [get_pins chip_core/housekeeping/mgmt_gpio_in[35]]
set_false_path -from [get_ports mprj_io[36]] -through [get_pins chip_core/housekeeping/mgmt_gpio_in[36]]
set_false_path -from [get_ports mprj_io[37]] -through [get_pins chip_core/housekeeping/mgmt_gpio_in[37]]

set_false_path -from [get_ports mprj_io[*]] -through [get_pins chip_core/housekeeping/mgmt_gpio_out[*]]
set_false_path -from [get_ports mprj_io[*]] -through [get_pins chip_core/housekeeping/mgmt_gpio_oeb[*]]

# add loads for output ports (pads)
# 10 too high --> 4:7
set min_cap 4
set max_cap 7
puts "\[INFO\]: Cap load range: $min_cap : $max_cap"
# set_load 10 [all_outputs]
set_load -min $min_cap [all_outputs] 
set_load -max $max_cap [all_outputs] 

#add input transition for the inputs ports (pads)
#PDK max_tran is 7 in ss --> try range 1:3.5
set min_in_tran 1
set max_in_tran 3.5
puts "\[INFO\]: Input transition range: $min_in_tran : $max_in_tran"
set_input_transition -min $min_in_tran [all_inputs] 
set_input_transition -min 0 [get_ports V*]
set_input_transition -max $max_in_tran [all_inputs]
set_input_transition -max 0 [get_ports V*]

# check ocv table (not provided) -- maybe try 8% 
set derate 0.0375
puts "\[INFO\]: Setting derate factor to: [expr $derate * 100] %"
set_timing_derate -early [expr 1-$derate]
set_timing_derate -late [expr 1+$derate]