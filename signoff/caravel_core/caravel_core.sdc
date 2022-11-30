### gf180 Caravel core Signoff SDC
### Rev 1
### Date: 24/11/2022

## MASTER CLOCKS
create_clock -name clk -period 30 [get_ports {clock_core}] 

create_clock -name hkspi_clk -period 100 [get_ports {mprj_io_in[4]} ] 
create_clock -name hk_serial_clk -period 50 [get_pins {housekeeping/serial_clock}]
create_clock -name hk_serial_load -period 1000 [get_pins {housekeeping/serial_load}]
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

set_input_delay $input_delay_value  -clock [get_clocks {clk}] -add_delay [get_ports {gpio_in_core}]
set_input_delay $input_delay_value  -clock [get_clocks {clk}] -add_delay [get_ports {mprj_io_in[0]}]

#set_input_delay $input_delay_value  -clock [get_clocks {clk}] -add_delay [get_ports {mprj_io_in[1]}]

set_input_delay $input_delay_value  -clock [get_clocks {hkspi_clk}] -add_delay [get_ports {mprj_io_in[2]}]
set_input_delay $input_delay_value  -clock [get_clocks {hkspi_clk}] -add_delay [get_ports {mprj_io_in[3]}]

#set_input_delay $input_delay_value  -clock [get_clocks {clk}] -add_delay [get_ports {mprj_io_in[4]}]

set_input_delay $input_delay_value  -clock [get_clocks {clk}] -add_delay [get_ports {mprj_io_in[5]}]
set_input_delay $input_delay_value  -clock [get_clocks {clk}] -add_delay [get_ports {mprj_io_in[6]}]
set_input_delay $input_delay_value  -clock [get_clocks {clk}] -add_delay [get_ports {mprj_io_in[7]}]
set_input_delay $input_delay_value  -clock [get_clocks {clk}] -add_delay [get_ports {mprj_io_in[8]}]
set_input_delay $input_delay_value  -clock [get_clocks {clk}] -add_delay [get_ports {mprj_io_in[9]}]
set_input_delay $input_delay_value  -clock [get_clocks {clk}] -add_delay [get_ports {mprj_io_in[10]}]
set_input_delay $input_delay_value  -clock [get_clocks {clk}] -add_delay [get_ports {mprj_io_in[11]}]
set_input_delay $input_delay_value  -clock [get_clocks {clk}] -add_delay [get_ports {mprj_io_in[12]}]
set_input_delay $input_delay_value  -clock [get_clocks {clk}] -add_delay [get_ports {mprj_io_in[13]}]
set_input_delay $input_delay_value  -clock [get_clocks {clk}] -add_delay [get_ports {mprj_io_in[14]}]
set_input_delay $input_delay_value  -clock [get_clocks {clk}] -add_delay [get_ports {mprj_io_in[15]}]
set_input_delay $input_delay_value  -clock [get_clocks {clk}] -add_delay [get_ports {mprj_io_in[16]}]
set_input_delay $input_delay_value  -clock [get_clocks {clk}] -add_delay [get_ports {mprj_io_in[17]}]
set_input_delay $input_delay_value  -clock [get_clocks {clk}] -add_delay [get_ports {mprj_io_in[18]}]
set_input_delay $input_delay_value  -clock [get_clocks {clk}] -add_delay [get_ports {mprj_io_in[19]}]
set_input_delay $input_delay_value  -clock [get_clocks {clk}] -add_delay [get_ports {mprj_io_in[20]}]
set_input_delay $input_delay_value  -clock [get_clocks {clk}] -add_delay [get_ports {mprj_io_in[21]}]
set_input_delay $input_delay_value  -clock [get_clocks {clk}] -add_delay [get_ports {mprj_io_in[22]}]
set_input_delay $input_delay_value  -clock [get_clocks {clk}] -add_delay [get_ports {mprj_io_in[23]}]
set_input_delay $input_delay_value  -clock [get_clocks {clk}] -add_delay [get_ports {mprj_io_in[24]}]
set_input_delay $input_delay_value  -clock [get_clocks {clk}] -add_delay [get_ports {mprj_io_in[25]}]
set_input_delay $input_delay_value  -clock [get_clocks {clk}] -add_delay [get_ports {mprj_io_in[26]}]
set_input_delay $input_delay_value  -clock [get_clocks {clk}] -add_delay [get_ports {mprj_io_in[27]}]
set_input_delay $input_delay_value  -clock [get_clocks {clk}] -add_delay [get_ports {mprj_io_in[28]}]
set_input_delay $input_delay_value  -clock [get_clocks {clk}] -add_delay [get_ports {mprj_io_in[29]}]
set_input_delay $input_delay_value  -clock [get_clocks {clk}] -add_delay [get_ports {mprj_io_in[30]}]
set_input_delay $input_delay_value  -clock [get_clocks {clk}] -add_delay [get_ports {mprj_io_in[31]}]
set_input_delay $input_delay_value  -clock [get_clocks {clk}] -add_delay [get_ports {mprj_io_in[32]}]
set_input_delay $input_delay_value  -clock [get_clocks {clk}] -add_delay [get_ports {mprj_io_in[33]}]
set_input_delay $input_delay_value  -clock [get_clocks {clk}] -add_delay [get_ports {mprj_io_in[34]}]
set_input_delay $input_delay_value  -clock [get_clocks {clk}] -add_delay [get_ports {mprj_io_in[35]}]
set_input_delay $input_delay_value  -clock [get_clocks {clk}] -add_delay [get_ports {mprj_io_in[36]}]
set_input_delay $input_delay_value  -clock [get_clocks {clk}] -add_delay [get_ports {mprj_io_in[37]}]
set_input_delay $input_delay_value  -clock [get_clocks {clk}] -add_delay [get_ports {flash_io0_di}]

#in2reg hold viol -3.8 when input delay is 4 --> increased to 8
set_input_delay $input_delay_value  -clock [get_clocks {clk}] -add_delay [get_ports {flash_io1_di}]

set_output_delay $output_delay_value  -clock [get_clocks {clk}] -add_delay [get_ports {flash_csb_frame}]
set_output_delay $output_delay_value  -clock [get_clocks {clk}] -add_delay [get_ports {flash_csb_oe}]
set_output_delay $output_delay_value  -clock [get_clocks {clk}] -add_delay [get_ports {flash_clk_frame}]
set_output_delay $output_delay_value  -clock [get_clocks {clk}] -add_delay [get_ports {flash_clk_oe}]
set_output_delay $output_delay_value  -clock [get_clocks {clk}] -add_delay [get_ports {flash_io0_do}]
set_output_delay $output_delay_value  -clock [get_clocks {clk}] -add_delay [get_ports {flash_io0_ie}]
set_output_delay $output_delay_value  -clock [get_clocks {clk}] -add_delay [get_ports {flash_io0_oe}]
set_output_delay $output_delay_value  -clock [get_clocks {clk}] -add_delay [get_ports {flash_io1_do}]
set_output_delay $output_delay_value  -clock [get_clocks {clk}] -add_delay [get_ports {flash_io1_ie}]
set_output_delay $output_delay_value  -clock [get_clocks {clk}] -add_delay [get_ports {flash_io1_oe}]

set_max_fanout 12 [current_design]
# synthesis max fanout should be less than 12 (7 maybe)

## Set system monitoring mux select to zero so that the clock/user_clk monitoring is disabled 
# set_case_analysis 0 [get_pins housekeeping/_3936_/S]
# set_case_analysis 0 [get_pins housekeeping/_3937_/S]

# Add case analysis for pads DM[2]==1'b1 & DM[1]==1'b1 & DM[0]==1'b0 to be outputs

# set_case_analysis 1 [get_pins padframe/*_pad*/DM[2]]
# set_case_analysis 1 [get_pins padframe/*_pad*/DM[1]]
# set_case_analysis 0 [get_pins padframe/*_pad*/DM[0]]
# set_case_analysis 0 [get_pins padframe/*_pad*/SLOW]
# set_case_analysis 0 [get_pins padframe/*_pad*/ANALOG_EN]

# # the following pads are set as inputs
# set_case_analysis 0 [get_pins padframe/*area1_io_pad[4]/DM[2]]
# set_case_analysis 0 [get_pins padframe/*area1_io_pad[4]/DM[1]]
# set_case_analysis 1 [get_pins padframe/*area1_io_pad[4]/DM[0]]

# set_case_analysis 0 [get_pins padframe/*area1_io_pad[2]/DM[2]]
# set_case_analysis 0 [get_pins padframe/*area1_io_pad[2]/DM[1]]
# set_case_analysis 1 [get_pins padframe/*area1_io_pad[2]/DM[0]]


# set_case_analysis 0 [get_pins padframe/clock_pad/DM[2]]
# set_case_analysis 0 [get_pins padframe/clock_pad/DM[1]]
# set_case_analysis 1 [get_pins padframe/clock_pad/DM[0]]

## FALSE PATHS (ASYNCHRONOUS INPUTS)
set_false_path -from [get_ports {rstb}]

# set_false_path -from [get_ports mprj_io_in[*]] -through [get_pins housekeeping/mgmt_gpio_in[*]]
# reset_path -from [get_ports mprj_io_in[4]] 
# reset_path -from [get_ports mprj_io_in[2]] 
#reset_path is not supported in PT read_sdc ^

set_false_path -from [get_ports mprj_io_in[0]] -through [get_pins housekeeping/mgmt_gpio_in[0]]
set_false_path -from [get_ports mprj_io_in[1]] -through [get_pins housekeeping/mgmt_gpio_in[1]]
set_false_path -from [get_ports mprj_io_in[3]] -through [get_pins housekeeping/mgmt_gpio_in[3]]
set_false_path -from [get_ports mprj_io_in[5]] -through [get_pins housekeeping/mgmt_gpio_in[5]]
set_false_path -from [get_ports mprj_io_in[6]] -through [get_pins housekeeping/mgmt_gpio_in[6]]
set_false_path -from [get_ports mprj_io_in[7]] -through [get_pins housekeeping/mgmt_gpio_in[7]]
set_false_path -from [get_ports mprj_io_in[8]] -through [get_pins housekeeping/mgmt_gpio_in[8]]
set_false_path -from [get_ports mprj_io_in[9]] -through [get_pins housekeeping/mgmt_gpio_in[9]]
set_false_path -from [get_ports mprj_io_in[10]] -through [get_pins housekeeping/mgmt_gpio_in[10]]
set_false_path -from [get_ports mprj_io_in[11]] -through [get_pins housekeeping/mgmt_gpio_in[11]]
set_false_path -from [get_ports mprj_io_in[12]] -through [get_pins housekeeping/mgmt_gpio_in[12]]
set_false_path -from [get_ports mprj_io_in[13]] -through [get_pins housekeeping/mgmt_gpio_in[13]]
set_false_path -from [get_ports mprj_io_in[14]] -through [get_pins housekeeping/mgmt_gpio_in[14]]
set_false_path -from [get_ports mprj_io_in[15]] -through [get_pins housekeeping/mgmt_gpio_in[15]]
set_false_path -from [get_ports mprj_io_in[16]] -through [get_pins housekeeping/mgmt_gpio_in[16]]
set_false_path -from [get_ports mprj_io_in[17]] -through [get_pins housekeeping/mgmt_gpio_in[17]]
set_false_path -from [get_ports mprj_io_in[18]] -through [get_pins housekeeping/mgmt_gpio_in[18]]
set_false_path -from [get_ports mprj_io_in[19]] -through [get_pins housekeeping/mgmt_gpio_in[19]]
set_false_path -from [get_ports mprj_io_in[20]] -through [get_pins housekeeping/mgmt_gpio_in[20]]
set_false_path -from [get_ports mprj_io_in[21]] -through [get_pins housekeeping/mgmt_gpio_in[21]]
set_false_path -from [get_ports mprj_io_in[22]] -through [get_pins housekeeping/mgmt_gpio_in[22]]
set_false_path -from [get_ports mprj_io_in[23]] -through [get_pins housekeeping/mgmt_gpio_in[23]]
set_false_path -from [get_ports mprj_io_in[24]] -through [get_pins housekeeping/mgmt_gpio_in[24]]
set_false_path -from [get_ports mprj_io_in[25]] -through [get_pins housekeeping/mgmt_gpio_in[25]]
set_false_path -from [get_ports mprj_io_in[26]] -through [get_pins housekeeping/mgmt_gpio_in[26]]
set_false_path -from [get_ports mprj_io_in[27]] -through [get_pins housekeeping/mgmt_gpio_in[27]]
set_false_path -from [get_ports mprj_io_in[28]] -through [get_pins housekeeping/mgmt_gpio_in[28]]
set_false_path -from [get_ports mprj_io_in[29]] -through [get_pins housekeeping/mgmt_gpio_in[29]]
set_false_path -from [get_ports mprj_io_in[30]] -through [get_pins housekeeping/mgmt_gpio_in[30]]
set_false_path -from [get_ports mprj_io_in[31]] -through [get_pins housekeeping/mgmt_gpio_in[31]]
set_false_path -from [get_ports mprj_io_in[32]] -through [get_pins housekeeping/mgmt_gpio_in[32]]
set_false_path -from [get_ports mprj_io_in[33]] -through [get_pins housekeeping/mgmt_gpio_in[33]]
set_false_path -from [get_ports mprj_io_in[34]] -through [get_pins housekeeping/mgmt_gpio_in[34]]
set_false_path -from [get_ports mprj_io_in[35]] -through [get_pins housekeeping/mgmt_gpio_in[35]]
set_false_path -from [get_ports mprj_io_in[36]] -through [get_pins housekeeping/mgmt_gpio_in[36]]
set_false_path -from [get_ports mprj_io_in[37]] -through [get_pins housekeeping/mgmt_gpio_in[37]]

set_false_path -from [get_ports mprj_io_in[*]] -through [get_pins housekeeping/mgmt_gpio_out[*]]
set_false_path -from [get_ports mprj_io_in[*]] -through [get_pins housekeeping/mgmt_gpio_oeb[*]]
set_false_path -from [get_ports gpio_in_core]

# add loads for output ports (pads)
set min_cap 5
set max_cap 10
puts "\[INFO\]: Cap load range: $min_cap : $max_cap"
# set_load 10 [all_outputs]
set_load -min $min_cap [all_outputs] 
set_load -max $max_cap [all_outputs] 

#add input transition for the inputs ports (pads)
# set_input_transition 2 [all_inputs]
#add exception for power pads as 2ns on them results in max_tran violations (false viol)
# set_input_transition 2 [remove_from_collection [all_inputs] [get_ports v*]] 
# remove_from_collection is not supported in PT read_sdc ^
# set_input_transition 2 [all_inputs] 
# set_input_transition 0 [get_ports v*]

set min_in_tran 1
set max_in_tran 4
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