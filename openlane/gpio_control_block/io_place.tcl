# Copyright 2020 Efabless Corporation
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

## Needs OpenRoad Commit: 29db63fdda643f01d5a7705606a96681ab855a68

if {[catch {read_lef $::env(MERGED_LEF)} errmsg]} {
    puts stderr $errmsg
    exit 1
}

if {[catch {read_def $::env(CURRENT_DEF)} errmsg]} {
    puts stderr $errmsg
	exit 1
}

ppl::set_hor_length $::env(FP_IO_HLENGTH)
ppl::set_ver_length $::env(FP_IO_VLENGTH)
ppl::set_hor_length_extend $::env(FP_IO_VEXTEND)
ppl::set_ver_length_extend $::env(FP_IO_HEXTEND)
ppl::set_ver_thick_multiplier 1
ppl::set_hor_thick_multiplier 1

set HMETAL $::env(FP_IO_HLAYER)
set VMETAL $::env(FP_IO_VLAYER)

# East pins
proc place_west {pin_name y} {
  set pin_height 0.38
  place_pin \
    -pin_name $pin_name \
    -location "0 [expr $y + $pin_height / 2.0]" \
    -layer Metal2 \
    -pin_size "1 $pin_height"
}
place_west pad_gpio_in 3.76
place_west pad_gpio_outen 4.49
place_west pad_gpio_out 5.22
place_west pad_gpio_slew_sel 5.95
place_west pad_gpio_inen 63.235
place_west pad_gpio_pulldown_sel [expr 63.235 + 1.055]
# Double check the index of this
place_west pad_gpio_drive_sel[1] [expr 63.235 + 3.565]
place_west pad_gpio_drive_sel[0] [expr 63.235 + 4.275]
place_west pad_gpio_pullup_sel   [expr 63.235 + 5.42]
place_west pad_gpio_schmitt_sel  [expr 63.235 + 8.025]

proc place_east_relative {pin_name y} {
  set die_width [lindex $::env(DIE_AREA) 2]
  set die_height [lindex $::env(DIE_AREA) 3]
  place_pin \
    -pin_name $pin_name \
    -layer Metal2 \
    -pin_size {1 0.28} \
    -location "$die_width [expr $die_height - $y]"
}
place_east_relative {gpio_defaults[0]} "0.14000"
place_east_relative {gpio_defaults[1]} "7.42000"
place_east_relative {gpio_defaults[2]} "15.23000"
place_east_relative {gpio_defaults[3]} "22.51000"
place_east_relative {gpio_defaults[4]} "30.33000"
place_east_relative {gpio_defaults[5]} "37.61000"
place_east_relative {gpio_defaults[6]} "45.43000"
place_east_relative {gpio_defaults[7]} "52.71000"
place_east_relative {gpio_defaults[8]} "60.53000"
place_east_relative {gpio_defaults[9]} "67.81000"
#set_io_pin_constraint \
#  -pin_names { 
#    gpio_defaults[0]
#    gpio_defaults[1]
#    gpio_defaults[2]
#    gpio_defaults[3]
#    gpio_defaults[4]
#    gpio_defaults[5]
#    gpio_defaults[6]
#    gpio_defaults[7]
#    gpio_defaults[8]
#    gpio_defaults[9]
#  } \
#  -region top:*

set_io_pin_constraint \
  -pin_names { 
    resetn
    serial_clock
    serial_data_in
    serial_load
  } \
  -region top:*

set_io_pin_constraint \
  -pin_names { 
    resetn_out
    serial_clock_out
    serial_data_out
    serial_load_out
  } \
  -region bottom:*

set_io_pin_constraint \
  -pin_names { 
    mgmt_gpio_in
    mgmt_gpio_oeb
    mgmt_gpio_out
    user_gpio_in
    user_gpio_out
    user_gpio_oeb
    one
    zero
  } \
  -region right:*

place_pins\
	-hor_layers $HMETAL\
	-ver_layers $VMETAL\
  -min_distance 2 \


write_def $::env(SAVE_DEF)

