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

## This should be changed to point at Caravel root
set ::env(CARAVEL_ROOT) $::env(DESIGN_DIR)/../..
set ::env(STA_WRITE_LIB) 0

set ::env(DESIGN_NAME) "housekeeping"
set ::env(ROUTING_CORES) 12
set ::env(RUN_KLAYOUT) 0

set ::env(VERILOG_FILES) "$::env(CARAVEL_ROOT)/verilog/rtl/defines.v \
            $::env(CARAVEL_ROOT)/verilog/rtl/housekeeping.v \
            $::env(CARAVEL_ROOT)/verilog/rtl/housekeeping_spi.v"

set ::env(CLOCK_PORT) ""
set ::env(CLOCK_NET) "wb_clk_i csclk mgmt_gpio_in\[4\]"
set ::env(CLOCK_TREE_SYNTH) 1
set ::env(DESIGN_IS_CORE) 1
set ::env(FP_PDN_CORE_RING) 1


set ::env(BASE_SDC_FILE) [glob $::env(DESIGN_DIR)/base.sdc]
set ::env(RCX_SDC_FILE) [glob $::env(DESIGN_DIR)/signoff.sdc]

## Synthesis 
set ::env(SYNTH_STRATEGY) "DELAY 0"

set ::env(SYNTH_MAX_FANOUT) 20
set ::env(SYNTH_BUFFERING) 0
set ::env(SYNTH_READ_BLACKBOX_LIB) 1

## Floorplan
set ::env(FP_SIZING) absolute
set ::env(DIE_AREA) "0 0 520 780"
# set ::env(FP_CORE_UTIL) 10

set ::env(FP_PIN_ORDER_CFG) [glob $::env(DESIGN_DIR)/pin_order.cfg]

set ::env(FP_IO_MIN_DISTANCE) 2

# set ::env(CELL_PAD) 0
set ::env(FP_PDN_HPITCH) 78.2
set ::env(FP_PDN_VPITCH) 76.8
set ::env(FP_PDN_HSPACING) 37.5
set ::env(FP_PDN_HOFFSET) 16.41

## Placement
set ::env(PL_TARGET_DENSITY) 0.34
set ::env(PL_TIME_DRIVEN) 1
set ::env(PL_RESIZER_DESIGN_OPTIMIZATIONS) 1
set ::env(PL_RESIZER_TIMING_OPTIMIZATIONS) 1
# set ::env(PL_RESIZER_MAX_WIRE_LENGTH) 250
# set ::env(PL_RESIZER_SETUP_SLACK_MARGIN) 0.4

set ::env(PL_RESIZER_HOLD_SLACK_MARGIN) 0.1
set ::env(PL_RESIZER_MAX_SLEW_MARGIN) 10
set ::env(PL_RESIZER_MAX_CAP_MARGIN) 10

# set ::env(PL_RESIZER_HOLD_MAX_BUFFER_PERCENT) 50
# set ::env(PL_RESIZER_ALLOW_SETUP_VIOS) 1
set ::env(CLOCK_TREE_SYNTH) 1

## Routing 
set ::env(GLB_ADJUSTMENT) 0.2
set ::env(GLB_OVERFLOW_ITERS) 100
set ::env(GRT_ALLOW_CONGESTION) 1
set ::env(GLB_RESIZER_TIMING_OPTIMIZATIONS) 1

# set ::env(GLB_RESIZER_HOLD_SLACK_MARGIN) 0.4
# set ::env(GLB_RESIZER_MAX_WIRE_LENGTH) 250
# set ::env(GLB_RESIZER_MAX_SLEW_MARGIN) "30"
# set ::env(GLB_RESIZER_MAX_CAP_MARGIN) "30"
set ::env(GLB_RESIZER_SETUP_SLACK_MARGIN) 0.1

## Diode Insertion
set ::env(DIODE_INSERTION_STRATEGY) 3
set ::env(GRT_ANT_ITERS) 10
set ::env(GRT_MAX_DIODE_INS_ITERS) 10
# set ::env(USE_ARC_ANTENNA_CHECK) 0
set ::env(DIODE_PADDING) 0

## clock buffering
# set ::env(CTS_CLK_BUFFER_LIST) {sky130_fd_sc_hd__clkbuf_8 sky130_fd_sc_hd__clkbuf_4}
# set ::env(CTS_ROOT_BUFFER) {sky130_fd_sc_hd__clkbuf_8}
# set ::env(CTS_CLK_MAX_WIRE_LENGTH) 120
set ::env(CTS_MAX_CAP) 0.2

set ::env(MAGIC_DEF_LABELS) 0

set ::env(RCX_RULES) $::env(DESIGN_DIR)/RCnom.rules
set ::env(PL_LIB) "$::env(PDK_ROOT)/$::env(PDK)/libs.ref/gf180mcu_fd_sc_mcu7t5v0/liberty/gf180mcu_fd_sc_mcu7t5v0__tt_025C_5v00.lib"
set ::env(LIB_FASTEST) "$::env(PDK_ROOT)/$::env(PDK)/libs.ref/gf180mcu_fd_sc_mcu7t5v0/liberty/gf180mcu_fd_sc_mcu7t5v0__ff_n40C_5v50.lib"
set ::env(LIB_SLOWEST) "$::env(PDK_ROOT)/$::env(PDK)/libs.ref/gf180mcu_fd_sc_mcu7t5v0/liberty/gf180mcu_fd_sc_mcu7t5v0__ss_125C_4v50.lib"
set ::env(LIB_SYNTH) "$::env(PDK_ROOT)/$::env(PDK)/libs.ref/gf180mcu_fd_sc_mcu7t5v0/liberty/gf180mcu_fd_sc_mcu7t5v0__tt_025C_5v00.lib"
set ::env(LIB_TYPICAL) "$::env(PDK_ROOT)/$::env(PDK)/libs.ref/gf180mcu_fd_sc_mcu7t5v0/liberty/gf180mcu_fd_sc_mcu7t5v0__tt_025C_5v00.lib"