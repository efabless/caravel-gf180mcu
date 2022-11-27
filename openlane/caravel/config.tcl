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

# User config
set script_dir [file dirname [file normalize [info script]]]
set ::env(DESIGN_DIR) $script_dir/../..

set ::env(DESIGN_NAME) caravel
set ::env(ROUTING_CORES) 2

# Change if needed
set ::env(VERILOG_FILES) "\
    $::env(DESIGN_DIR)/../../verilog/rtl/user_defines.v \
    $::env(DESIGN_DIR)/../../verilog/rtl/caravel.v"

set ::env(SYNTH_READ_BLACKBOX_LIB) 0

set ::env(VERILOG_FILES_BLACKBOX) "\
    $::env(DESIGN_DIR)/../../verilog/rtl/defines.v \
    $::env(DESIGN_DIR)/../../verilog/rtl/chip_io.v \
    $::env(DESIGN_DIR)/../../verilog/gl/caravel_core.v"

set ::env(EXTRA_LEFS) "\
    $::env(DESIGN_DIR)/../../lef/chip_io.lef \
    $::env(DESIGN_DIR)/../../lef/caravel_core.lef"

set ::env(EXTRA_GDS_FILES) "\
    $::env(DESIGN_DIR)/../../gds/caravel_core.gds \
    $::env(DESIGN_DIR)/../../gds/chip_io.gds"

set ::env(SYNTH_ELABORATE_ONLY) 1
set ::env(LEC_ENABLE) 0

set ::env(FP_SIZING) absolute

set ::env(DIE_AREA) "0 0 3890.00 5100.00"

set ::env(CELL_PAD) 0

set ::env(PL_RESIZER_DESIGN_OPTIMIZATIONS) 0
set ::env(PL_RESIZER_TIMING_OPTIMIZATIONS) 0

set ::env(DIODE_INSERTION_STRATEGY) 0

set ::env(GRT_ALLOW_CONGESTION) 1

set ::env(RUN_FILL_INSERTION) 0

# DON'T PUT CELLS ON THE TOP LEVEL
set ::env(LVS_INSERT_POWER_PINS) 0

set ::env(MAGIC_GENERATE_LEF) 0

set ::env(QUIT_ON_ILLEGAL_OVERLAPS) 0
set ::env(QUIT_ON_TR_DRC) 0
set ::env(QUIT_ON_LVS_ERROR) 1
