### Caravel Signoff SDC
### Rev 3
### Date: 28/10/2022

## MASTER CLOCKS
create_clock -name clk -period 30 [get_ports {clock_core}] 

create_clock -name hk_serial_clk -period 50 [get_pins {housekeeping/serial_clock}]
create_clock -name hk_serial_load -period 1000 [get_pins {housekeeping/serial_load}]
# hk_serial_clk period is x2 core clock

set_clock_uncertainty 0.1 [get_clocks {clk hk_serial_clk hk_serial_load}]

set_clock_groups \
   -name clock_group \
   -logically_exclusive \
   -group [get_clocks {clk}]\
   -group [get_clocks {hk_serial_clk}]\
   -group [get_clocks {hk_serial_load}]

# clock <-> hk_serial_clk/load no paths
# future note: CDC stuff
# clock <-> hkspi_clk no paths with careful methods (clock is off)

set_propagated_clock [get_clocks {clk}]
set_propagated_clock [get_clocks {hk_serial_clk}]
set_propagated_clock [get_clocks {hk_serial_load}]

## INPUT/OUTPUT DELAYS
set input_delay_value 4
set output_delay_value 4
puts "\[INFO\]: Setting output delay to: $output_delay_value"
puts "\[INFO\]: Setting input delay to: $input_delay_value"


set_max_fanout 12 [current_design]
# synthesis max fanout should be less than 12 (7 maybe)

## FALSE PATHS (ASYNCHRONOUS INPUTS)
set_false_path -from [get_ports {resetb}]

# add loads for output ports (pads)
set min_cap 5
set max_cap 10
puts "\[INFO\]: Cap load range: $min_cap : $max_cap"
# set_load 10 [all_outputs]
set_load -min $min_cap [all_outputs] 
set_load -max $max_cap [all_outputs] 


set min_in_tran 1
set max_in_tran 4
puts "\[INFO\]: Input transition range: $min_in_tran : $max_in_tran"
set_input_transition -min $min_in_tran [all_inputs] 
set_input_transition -min 0 [get_ports v*]
set_input_transition -max $max_in_tran [all_inputs]
set_input_transition -max 0 [get_ports v*]

# check ocv table (not provided) -- maybe try 8% 
set derate 0.0375
puts "\[INFO\]: Setting derate factor to: [expr $derate * 100] %"
set_timing_derate -early [expr 1-$derate]
set_timing_derate -late [expr 1+$derate]
