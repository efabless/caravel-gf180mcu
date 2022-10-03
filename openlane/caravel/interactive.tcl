# SPDX-FileCopyrightText: 2020 Efabless Corporation
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
# SPDX-License-Identifier: Apache-2.0

package require openlane
set script_dir [file dirname [file normalize [info script]]]
set save_path $::env(PROJECT_ROOT)

# FOR LVS AND CREATING PORT LABELS
#prep -design $script_dir -tag caravel_lvs -overwrite --verbose 2
#
#set ::env(SYNTH_DEFINES) "USE_POWER_PINS"
#verilog_elaborate
#set ::env(CURRENT_SDC) $::env(BASE_SDC_FILE)
#init_floorplan
#file copy -force $::env(CURRENT_DEF) $::env(TMP_DIR)/lvs.def
#file copy -force $::env(CURRENT_NETLIST) $::env(TMP_DIR)/lvs.v

# ACTUAL CHIP INTEGRATION
prep -design $script_dir -tag $::env(OPENLANE_RUN_TAG) -overwrite -verbose 2
exec rm -rf $script_dir/runs/final
exec ln -sf $script_dir/runs/$::env(OPENLANE_RUN_TAG) $script_dir/runs/final


#file copy $script_dir/runs/caravel_lvs/tmp/merged_unpadded.lef $::env(TMP_DIR)/lvs.lef
#file copy $script_dir/runs/caravel_lvs/tmp/lvs.def $::env(TMP_DIR)/lvs.def
#file copy $script_dir/runs/caravel_lvs/tmp/lvs.v $::env(TMP_DIR)/lvs.v

set ::env(SYNTH_DEFINES) "TOP_ROUTING"
verilog_elaborate
#logic_equiv_check -lhs $top_rtl -rhs $::env(yosys_result_file_tag).v

init_floorplan

set chip_width  3890.00
set chip_height 5100.00

set mprj_width 3030.28000
set mprj_height 3011.24000
set mprj_x [expr $chip_width / 2 - $mprj_width / 2]
set mprj_y 1670.92000

set io_width 350 
# io_height is in gds 75.32 i think i am offsetting values by a little bit
set io_height 75

set control_block_width 30
set control_block_height 175.00

set default_height 67.95 
set default_width 6.175

set soc_width 2208.04000
set soc_height 1104.00000

set soc_spacing_left 150
set soc_x [expr $io_width + $soc_spacing_left]
set soc_y 370

set hk_spacing 350
set hk_width 310.10000
set hk_height 900.00000
set hk_x [expr $soc_x + $soc_width + $hk_spacing]
set hk_y [expr 697.89500] 

set mgmt_protect_x [expr 300 + $soc_x]
set mgmt_protect_y [expr 70 + $soc_y + $soc_height]

set pll_x [expr $hk_spacing + 40 + $soc_x + $soc_width]
set pll_y [expr 10  + $soc_y]

set clocking_x [expr $hk_spacing + 40 + $soc_x + $soc_width]
set clocking_y [expr 180  + $soc_y]

add_macro_placement caravel_gf180_pdn 0 0 N
add_macro_placement user_id_value 3247.25000 662 N
add_macro_placement clock_ctrl $clocking_x $clocking_y N
#add_macro_placement pll $pll_x $pll_y N
add_macro_placement pll $pll_x 403 N
add_macro_placement mgmt_buffers $mgmt_protect_x $mgmt_protect_y N
add_macro_placement padframe 0 0 N
#add_macro_placement soc $soc_x $soc_y N
add_macro_placement soc 450 403 N
add_macro_placement housekeeping $hk_x $hk_y N
add_macro_placement mprj $mprj_x $mprj_y N

# west
set control_x $io_width
set default_x [expr $control_x + $control_block_width]
proc get_control {step_size step_begin step} {
  return [expr $step_size * $step + $step_begin]
}
proc get_control_west {step} {
  set step_begin 865.00
  set step_size 205.00
  return [get_control $step_size $step_begin $step]
}
proc get_default_west {step} {
  return [expr [get_control_west $step] + $::control_block_height - $::default_height]
}

# 24:37
add_macro_placement "gpio_control_bidir_2\\\[2\\\]"  $control_x [get_control_west 0] R0
add_macro_placement "gpio_defaults_block_37" $default_x  [get_default_west 0] R270

add_macro_placement "gpio_control_bidir_2\\\[1\\\]"  $control_x [get_control_west 1] R0
add_macro_placement "gpio_defaults_block_36" $default_x  [get_default_west 1] R270

add_macro_placement "gpio_control_bidir_2\\\[0\\\]"  $control_x [get_control_west 2] R0
add_macro_placement "gpio_defaults_block_35" $default_x  [get_default_west 2] R270

add_macro_placement "gpio_control_in_2\\\[15\\\]" $control_x [get_control_west 3] R0
add_macro_placement "gpio_defaults_block_34" $default_x [get_default_west 3] R270

add_macro_placement "gpio_control_in_2\\\[14\\\]" $control_x [get_control_west 4] R0
add_macro_placement "gpio_defaults_block_33" $default_x [get_default_west 4] R270

add_macro_placement "gpio_control_in_2\\\[13\\\]" $control_x [get_control_west 5] R0
add_macro_placement "gpio_defaults_block_32" $default_x [get_default_west 5] R270

add_macro_placement "gpio_control_in_2\\\[12\\\]" $control_x [get_control_west 8] R0
add_macro_placement "gpio_defaults_block_31" $default_x [get_default_west 8] R270

add_macro_placement "gpio_control_in_2\\\[11\\\]" $control_x [get_control_west 9] R0
add_macro_placement "gpio_defaults_block_30" $default_x [get_default_west 9] R270

add_macro_placement "gpio_control_in_2\\\[10\\\]" $control_x [get_control_west 10] R0
add_macro_placement "gpio_defaults_block_29" $default_x [get_default_west 10] R270

add_macro_placement "gpio_control_in_2\\\[9\\\]" $control_x [get_control_west 11] R0
add_macro_placement "gpio_defaults_block_28" $default_x [get_default_west 11] R270

add_macro_placement "gpio_control_in_2\\\[8\\\]" $control_x [get_control_west 12] R0
add_macro_placement "gpio_defaults_block_27" $default_x [get_default_west 12] R270

add_macro_placement "gpio_control_in_2\\\[7\\\]" $control_x [get_control_west 13] R0
add_macro_placement "gpio_defaults_block_26" $default_x [get_default_west 13] R270

add_macro_placement "gpio_control_in_2\\\[6\\\]" $control_x [get_control_west 14] R0
add_macro_placement "gpio_defaults_block_25" $default_x [get_default_west 14] R270

add_macro_placement "gpio_control_in_2\\\[5\\\]" $control_x [get_control_west 18] R0
add_macro_placement "gpio_defaults_block_24" $default_x [get_default_west 18] R270

#east 
#14:0


set control_x [expr $chip_width - $io_width - $control_block_width ]
set default_x [expr $control_x - $default_width]
proc get_control_east {step} {
  set step_begin [expr 475 - [expr $::control_block_height - $::io_height]]
  set step_size 215
  return [get_control $step_size $step_begin $step]
}

proc get_default_east {step} {
  return [get_control_east $step]
}

add_macro_placement {gpio_control_bidir_1\[0\]} $control_x [get_control_east 0] R180
add_macro_placement {gpio_defaults_block_0\[0\]} $default_x [get_default_east 0] R90

add_macro_placement {gpio_control_bidir_1\[1\]} $control_x [get_control_east 1] R180
add_macro_placement {gpio_defaults_block_0\[1\]} $default_x [get_default_east 1] R90

add_macro_placement {gpio_control_in_1a\[0\]} $control_x [get_control_east 2] R180
add_macro_placement {gpio_defaults_block_2\[0\]} $default_x [get_control_east 2] R90

add_macro_placement {gpio_control_in_1a\[1\]} $control_x [get_control_east 3] R180
add_macro_placement {gpio_defaults_block_2\[1\]} $default_x [get_control_east 3] R90

add_macro_placement {gpio_control_in_1a\[2\]} $control_x [get_control_east 4] R180
add_macro_placement {gpio_defaults_block_2\[2\]} $default_x [get_control_east 4] R90

add_macro_placement {gpio_control_in_1a\[3\]} $control_x [get_control_east 5] R180
add_macro_placement {gpio_defaults_block_5} $default_x [get_control_east 5] R90

add_macro_placement {gpio_control_in_1a\[4\]} $control_x [get_control_east 6] R180
add_macro_placement {gpio_defaults_block_6} $default_x [get_control_east 6] R90

add_macro_placement {gpio_control_in_1a\[5\]} $control_x [get_control_east 10] R180
add_macro_placement {gpio_defaults_block_7} $default_x [get_control_east 10] R90

add_macro_placement {gpio_control_in_1\[0\]} $control_x [get_control_east 11] R180
add_macro_placement {gpio_defaults_block_8} $default_x [get_control_east 11] R90

add_macro_placement {gpio_control_in_1\[1\]} $control_x [get_control_east 12] R180
add_macro_placement {gpio_defaults_block_9} $default_x [get_control_east 12] R90

add_macro_placement {gpio_control_in_1\[2\]} $control_x [get_control_east 13] R180
add_macro_placement {gpio_defaults_block_10} $default_x [get_control_east 13] R90

add_macro_placement {gpio_control_in_1\[3\]} $control_x [get_control_east 14] R180
add_macro_placement {gpio_defaults_block_11} $default_x [get_control_east 14] R90

add_macro_placement {gpio_control_in_1\[5\]} $control_x [get_control_east 15] R180
add_macro_placement {gpio_defaults_block_13} $default_x [get_control_east 15] R90

add_macro_placement {gpio_control_in_1\[4\]} $control_x [get_control_east 17] R180
add_macro_placement {gpio_defaults_block_12} $default_x [get_control_east 17] R90

add_macro_placement {gpio_control_in_1\[6\]} $control_x [get_control_east 19] R180
add_macro_placement {gpio_defaults_block_14} $default_x [get_control_east 19] R90

# north
set control_y [expr $chip_height - $io_width - $control_block_width]
set default_y [expr $control_y - $default_width]

proc get_control_north {step} {
  set step_begin 530
  set step_size 275
  return [get_control $step_size $step_begin $step]
}

proc get_default_north {step} {
  return [expr [get_control_north $step] + [expr $::control_block_height - $::default_height]] 
}

add_macro_placement {gpio_control_in_2\[4\]}  [get_control_north 0] $control_y R270
add_macro_placement {gpio_defaults_block_23}  [get_default_north 0] $default_y R180

add_macro_placement {gpio_control_in_2\[3\]}  [get_control_north 1] $control_y R270
add_macro_placement {gpio_defaults_block_22}  [get_default_north 1] $default_y R180

add_macro_placement {gpio_control_in_2\[2\]}  [get_control_north 2] $control_y R270
add_macro_placement {gpio_defaults_block_21}  [get_default_north 2] $default_y R180

add_macro_placement {gpio_control_in_2\[1\]}  [get_control_north 3] $control_y R270
add_macro_placement {gpio_defaults_block_20}  [get_default_north 3] $default_y R180

add_macro_placement {gpio_control_in_2\[0\]}  [get_control_north 4] $control_y R270
add_macro_placement {gpio_defaults_block_19}  [get_default_north 4] $default_y R180

add_macro_placement {gpio_control_in_1\[10\]} [get_control_north 6] $control_y R270
add_macro_placement {gpio_defaults_block_18}  [get_default_north 6] $default_y R180

add_macro_placement {gpio_control_in_1\[9\]}  [get_control_north 7] $control_y R270
add_macro_placement {gpio_defaults_block_17}  [get_default_north 7] $default_y R180

add_macro_placement {gpio_control_in_1\[8\]}  [get_control_north 8] $control_y R270
add_macro_placement {gpio_defaults_block_16}  [get_default_north 8] $default_y R180

add_macro_placement {gpio_control_in_1\[7\]}  [get_control_north 10] $control_y R270
add_macro_placement {gpio_defaults_block_15}  [get_default_north 10] $default_y R180

add_macro_placement spare_logic\\\[0\\\] 3153.20000 1551.09000 N
add_macro_placement spare_logic\\\[1\\\] 2430.00000 1553.64000 N
add_macro_placement spare_logic\\\[2\\\] 1930.00000 1553.64000 N
add_macro_placement spare_logic\\\[3\\\] 560.00000  1553.64000 N
manual_macro_placement f

# modify to a different file
remove_pins -input $::env(CURRENT_DEF)
remove_empty_nets -input $::env(CURRENT_DEF)

# add routing obstruction around the user_project_wrapper to prevent 
# having shorts with the core ring or signal routing inside the wrapper 
set gap 0.4 
# dimensions without rings 
set mprj_width 3000
set mprj_height 3000
set user_project_wrapper_obs [list [expr $mprj_x-$gap] [expr $mprj_y-$gap] [expr $mprj_x+$gap+$mprj_width] [expr $mprj_y+$gap+$mprj_height]]
#set user_project_wrapper_core_ring_obs [list [expr $mprj_x-43.63] [expr $mprj_y-38.34] [expr $mprj_x+2963.25] [expr $mprj_y+$gap+3557.96]]
#
## add routing obstructions on the management area 
#set mgmt_area_obs [list $soc_x $soc_y [expr $soc_x+2620] [expr $soc_y+820]]
#
#set routing_vio_obs [list 106.26803 2098.54857 108.85254 2096.63000]
#
set ::env(GLB_RT_OBS)  " 
	Metal1 $user_project_wrapper_obs,\
	Metal2 $user_project_wrapper_obs,\
	Metal3 $user_project_wrapper_obs,\
	Metal4 $user_project_wrapper_obs,\
	Metal5 $user_project_wrapper_obs
"
#	met4 $user_project_wrapper_core_ring_obs,\
#	met4 $mgmt_area_obs,\
#	met5 $user_project_wrapper_core_ring_obs,\
#	met5 $mgmt_area_obs,\
#
try_catch openroad -python $::env(SCRIPTS_DIR)/add_def_obstructions.py \
	--input-def $::env(CURRENT_DEF) \
	--lef $::env(MERGED_LEF) \
	--obstructions $::env(GLB_RT_OBS) \
	--output [file rootname $::env(CURRENT_DEF)].obs.def |& tee $::env(TERMINAL_OUTPUT) $::env(LOGS_DIR)/obs.log

set_def [file rootname $::env(CURRENT_DEF)].obs.def

# add_macro_obs \
# 	-defFile $::env(CURRENT_DEF) \
# 	-lefFile $::env(MERGED_LEF_UNPADDED) \
# 	-obstruction vddio_obs \
# 	-placementX 103.400 \
# 	-placementY 607.150 \
# 	-sizeWidth 94.500 \
# 	-sizeHeight 30 \
# 	-fixed 1 \
# 	-layerNames "met2 met4"

# add_macro_obs \
# 	-defFile $::env(CURRENT_DEF) \
# 	-lefFile $::env(MERGED_LEF_UNPADDED) \
# 	-obstruction vddio_pad_obs \
# 	-placementX 33.375 \
# 	-placementY 557.100 \
# 	-sizeWidth 62.615 \
# 	-sizeHeight 62.700 \
# 	-fixed 1 \
# 	-layerNames "li1 met1 met2 met3 met4 met5"

#global_routing
detailed_routing
#label_macro_pins\
#	-lef $::env(TMP_DIR)/lvs.lef\
#	-netlist_def $::env(TMP_DIR)/lvs.def
	# -extra_args {-v\
	# --map padframe vddio vddio INOUT\
	# --map padframe vssio vssio INOUT\
	# --map padframe vssa vssa INOUT\
	# --map padframe vccd vccd INOUT\
	# --map padframe vssd vssd INOUT}

run_magic
exit

#run_magic_spice_export

#save_views       -lef_path $::env(magic_result_file_tag).lef \
#                 -def_path $::env(tritonRoute_result_file_tag).def \
#                 -gds_path $::env(magic_result_file_tag).gds \
#                 -mag_path $::env(magic_result_file_tag).mag \
#				 -verilog_path $::env(TMP_DIR)/lvs.v \
#				 -spice_path $::env(magic_result_file_tag).spice \
#                 -save_path $save_path \
#                 -tag $::env(RUN_TAG)

#run_lvs $::env(magic_result_file_tag).spice $::env(TMP_DIR)/lvs.v
