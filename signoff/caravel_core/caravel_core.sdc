### gf180 Caravel core Signoff SDC
### Rev 1
### Date: 24/11/2022

## MASTER CLOCKS
create_clock -name clk -period 30 [get_ports {clock_core}] 

create_clock -name hkspi_clk -period 120 [get_ports {mprj_io_in[4]} ] 
create_clock -name hk_serial_clk -period 60 [get_pins {housekeeping/serial_clock}]
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
set_input_delay $input_delay_value  [all_inputs]
set_input_delay 0 [get_ports {clock_core mprj_io_in[4]}]
set_output_delay $output_delay_value [all_outputs]

set_max_fanout 22 [current_design]
# synthesis max fanout is 22 

## FALSE PATHS (ASYNCHRONOUS INPUTS)
set_false_path -from [get_ports {rstb}]

set_false_path -from [get_ports gpio_in_core]

# add loads for output ports (pads)
# pad input pin cap 0.037757
set in_cap 0.037757
puts "\[INFO\]: Cap load range: $in_cap"
set_load $in_cap [all_outputs]

#add input transition for the inputs ports (pads)
# pad output pin transition range is 0.08:1
set min_in_tran 0.08
set max_in_tran 1
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

if {$::env(PROC_CORNER) == "s"} {
   set_max_transition 7 [current_design]
} else {
   set_max_transition 4 [current_design]
}