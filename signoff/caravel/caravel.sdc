### gf180 Caravel Signoff SDC
### Rev 3
### Date: 12/12/2022

# IO 4 mode is either SCK or GPIO (hkspi)
set io_4_mode SCK
puts "\[INFO\]: IO[4] is set as: $io_4_mode"
# IOs mode is either OUT or IN (GPIOs)
set ios_mode OUT

## MASTER CLOCKS
create_clock -name clk -period 30 [get_ports {clock}] 

create_clock -name hk_serial_clk -period 60 [get_pins {chip_core/housekeeping/serial_clock}]
create_clock -name hk_serial_load -period 1000 [get_pins {chip_core/housekeeping/serial_load}]
set_clock_uncertainty 0.1000 [get_clocks {clk hk_serial_clk hk_serial_load}]
set_propagated_clock [get_clocks {clk hk_serial_clk hk_serial_load}]

set min_clk_tran 2
set max_clk_tran 3.5
puts "\[INFO\]: Clock transition range: $min_clk_tran : $max_clk_tran"

# Add clock transition
set_input_transition -min $min_clk_tran [get_ports {clock}] 
set_input_transition -max $max_clk_tran [get_ports {clock}] 

if {$io_4_mode == "SCK"} {
   create_clock -name hkspi_clk -period 120 [get_ports {mprj_io[4]} ] 
   # Add clock transition
   set_input_transition -min $min_clk_tran [get_ports {mprj_io[4]}] 
   set_input_transition -max $max_clk_tran [get_ports {mprj_io[4]}] 
   set_clock_uncertainty 0.1000 [get_clocks {hkspi_clk}]
   set_propagated_clock [get_clocks {hkspi_clk}]
   set_clock_groups \
   -name clock_group \
   -logically_exclusive \
   -group [get_clocks {clk}]\
   -group [get_clocks {hk_serial_clk}]\
   -group [get_clocks {hk_serial_load}]\
   -group [get_clocks {hkspi_clk}]
} elseif {$io_4_mode == "GPIO"} {
   set_clock_groups \
   -name clock_group \
   -logically_exclusive \
   -group [get_clocks {clk}]\
   -group [get_clocks {hk_serial_clk}]\
   -group [get_clocks {hk_serial_load}]\
} 
# hk_serial_clk period is x2 core clock
# clock <-> hk_serial_clk/load no paths
# future note: CDC stuff
# clock <-> hkspi_clk no paths with careful methods (clock is off)

# Set system monitoring mux select to zero so that the clock/user_clk monitoring is disabled 
set_case_analysis 0 [get_pins chip_core/housekeeping/_4066_/S]
set_case_analysis 0 [get_pins chip_core/housekeeping/_4067_/S]

set input_delay_value 4
set output_delay_value 4
puts "\[INFO\]: Setting input delay to: $input_delay_value"
puts "\[INFO\]: Setting output delay to: $output_delay_value"

set min_in_tran 1
set max_in_tran 3.5
puts "\[INFO\]: Input transition range: $min_in_tran : $max_in_tran"

# 10 too high --> 4:7
set min_cap 4
set max_cap 7
puts "\[INFO\]: Cap load range: $min_cap : $max_cap"

if {$ios_mode == "IN"} {
   # Add case analysis for pads IE==1'b1 & OE==1'b0 to be inputs
   set_case_analysis 1 [get_pins padframe/mprj_pads[*]/IE]
   set_case_analysis 0 [get_pins padframe/mprj_pads[*]/OE]

   # Add input transition
   set_input_transition -min $min_in_tran [get_ports {mprj_io[*]}] 
   set_input_transition -max $max_in_tran [get_ports {mprj_io[*]}] 

   ## INPUT DELAYS
   set_input_delay $input_delay_value  -clock [get_clocks {clk}] -add_delay [get_ports {mprj_io[0]}]
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

   set_false_path -from [get_ports mprj_io[*]] -through [get_pins chip_core/housekeeping/mgmt_gpio_out[*]]
   set_false_path -from [get_ports mprj_io[*]] -through [get_pins chip_core/housekeeping/mgmt_gpio_oeb[*]]
   if {$io_4_mode == "SCK"} {
      # SDO output
      set_case_analysis 0 [get_pins padframe/mprj_pads[1]/IE]
      set_case_analysis 1 [get_pins padframe/mprj_pads[1]/OE]
      set_output_delay $output_delay_value  -clock [get_clocks {hkspi_clk}] -add_delay [get_ports {mprj_io[1]}]
      set_load -min $min_cap [get_ports {mprj_io[1]}] 
      set_load -max $max_cap [get_ports {mprj_io[1]}]  
      set_input_delay $input_delay_value  -clock [get_clocks {hkspi_clk}] -add_delay [get_ports {mprj_io[2]}]
      set_input_delay $input_delay_value  -clock [get_clocks {hkspi_clk}] -add_delay [get_ports {mprj_io[3]}]

      set_false_path -from [get_ports mprj_io[0]] -through [get_pins chip_core/housekeeping/mgmt_gpio_in[0]]
      set_false_path -from [get_ports mprj_io[1]] -through [get_pins chip_core/housekeeping/mgmt_gpio_in[1]]
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

   } elseif {$io_4_mode == "GPIO"} {
      set_input_delay $input_delay_value  -clock [get_clocks {clk}] -add_delay [get_ports {mprj_io[1]}]
      set_input_delay $input_delay_value  -clock [get_clocks {clk}] -add_delay [get_ports {mprj_io[2]}]
      set_input_delay $input_delay_value  -clock [get_clocks {clk}] -add_delay [get_ports {mprj_io[3]}]
      set_input_delay $input_delay_value  -clock [get_clocks {clk}] -add_delay [get_ports {mprj_io[4]}]     
      set_false_path -from [get_ports mprj_io[*]] -through [get_pins chip_core/housekeeping/mgmt_gpio_in[*]]
   }
} elseif {$ios_mode == "OUT"} {
   # Add case analysis for pads IE==1'b0 & OE==1'b1 to be outputs
   set_case_analysis 0 [get_pins padframe/mprj_pads[*]/IE]
   set_case_analysis 1 [get_pins padframe/mprj_pads[*]/OE]

   # add loads for output ports (pads)
   set_load -min $min_cap [get_ports {mprj_io[*]}] 
   set_load -max $max_cap [get_ports {mprj_io[*]}]  

   ## OUTPUT DELAYS
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
   if {$io_4_mode == "SCK"} {
      # SCK, CSB, SDI are inputs
      set_case_analysis 1 [get_pins padframe/mprj_pads[2]/IE]
      set_case_analysis 0 [get_pins padframe/mprj_pads[2]/OE]
      set_case_analysis 1 [get_pins padframe/mprj_pads[3]/IE]
      set_case_analysis 0 [get_pins padframe/mprj_pads[3]/OE]
      set_case_analysis 1 [get_pins padframe/mprj_pads[4]/IE]
      set_case_analysis 0 [get_pins padframe/mprj_pads[4]/OE]
      set_output_delay $output_delay_value  -clock [get_clocks {hkspi_clk}] -add_delay [get_ports {mprj_io[1]}]
      set_input_delay $input_delay_value  -clock [get_clocks {hkspi_clk}] -add_delay [get_ports {mprj_io[2]}]
      set_input_delay $input_delay_value  -clock [get_clocks {hkspi_clk}] -add_delay [get_ports {mprj_io[3]}]
      set_input_transition -min $min_in_tran [get_ports {mprj_io[2] mprj_io[2]}] 
      set_input_transition -max $max_in_tran [get_ports {mprj_io[3] mprj_io[3]}] 
   } elseif {$io_4_mode == "GPIO"} {
      set_output_delay $output_delay_value  -clock [get_clocks {clk}] -add_delay [get_ports {mprj_io[1]}]
      set_output_delay $output_delay_value  -clock [get_clocks {clk}] -add_delay [get_ports {mprj_io[2]}]
      set_output_delay $output_delay_value  -clock [get_clocks {clk}] -add_delay [get_ports {mprj_io[3]}]
      set_output_delay $output_delay_value  -clock [get_clocks {clk}] -add_delay [get_ports {mprj_io[4]}]      
   }
}

# flash_* are output except for io1
set_case_analysis 0 [get_pins padframe/flash_*/IE]
set_case_analysis 1 [get_pins padframe/flash_*/OE]
set_case_analysis 1 [get_pins padframe/flash_io1_pad/IE]
set_case_analysis 0 [get_pins padframe/flash_io1_pad/OE]

#flash interface input transition from the datasheet
set flash_min_tran 4
set flash_max_tran 6
puts "\[INFO\]: Flash interface transition range: $flash_min_tran : $flash_max_tran"
set_input_transition -min $flash_min_tran [get_ports {flash_io1}] 
set_input_transition -max $flash_max_tran [get_ports {flash_io1}] 

set flash_min_cap 6
set flash_max_cap 8
puts "\[INFO\]: Flash interface cap load range: $flash_min_cap : $flash_max_cap"
set_load -min $min_cap [get_ports {flash_csb flash_clk flash_io0}] 
set_load -max $max_cap [get_ports {flash_csb flash_clk flash_io0}]  

set flash_in_delay 5
set flash_out_delay 5
puts "\[INFO\]: Flash interface delay: input $flash_in_delay output $flash_out_delay"
set_output_delay $flash_out_delay  -clock [get_clocks {clk}] -add_delay [get_ports {flash_csb}]
set_output_delay $flash_out_delay  -clock [get_clocks {clk}] -add_delay [get_ports {flash_clk}]
set_output_delay $flash_out_delay  -clock [get_clocks {clk}] -add_delay [get_ports {flash_io0}]
set_input_delay $flash_in_delay -clock [get_clocks {clk}] -add_delay [get_ports {flash_io1}]

# mgmt_gpio_pad is set as input pad
set_case_analysis 1 [get_pins padframe/mgmt_gpio_pad/IE]
set_case_analysis 0 [get_pins padframe/mgmt_gpio_pad/OE]
set_input_transition -min $min_in_tran [get_ports {gpio}] 
set_input_transition -max $max_in_tran [get_ports {gpio}] 

set_input_delay $input_delay_value  -clock [get_clocks {clk}] -add_delay [get_ports {gpio}]

# Maximum Fanout soft constraint
set_max_fanout 22 [current_design]
# synthesis max fanout is 22

## FALSE PATHS (ASYNCHRONOUS INPUTS)
set_false_path -from [get_ports resetb]
set_false_path -from [get_ports gpio]

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