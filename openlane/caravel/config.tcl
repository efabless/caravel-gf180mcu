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
set verilog_root $::env(CARAVEL_ROOT)/verilog/
set lef_root $::env(CARAVEL_ROOT)/lef/
set gds_root $::env(CARAVEL_ROOT)/gds/

set ::env(DESIGN_NAME) caravel
set ::env(ROUTING_CORES) 2

# Change if needed
set ::env(VERILOG_FILES) "\
    $verilog_root/rtl/user_defines.v \
    $verilog_root/rtl/caravel.v"

set ::env(SYNTH_READ_BLACKBOX_LIB) 0

set ::env(VERILOG_FILES_BLACKBOX) "\
    $verilog_root/rtl/defines.v \
    $verilog_root/rtl/chip_io.v \
    $verilog_root/rtl/caravel_power_routing.v \
    $verilog_root/gl/caravel_core.v"

set ::env(EXTRA_LEFS) "\
    $lef_root/chip_io.lef \
    $lef_root/caravel_power_routing.lef \
    $lef_root/caravel_core.lef"

set ::env(EXTRA_GDS_FILES) "\
    $gds_root/caravel_power_routing.gds \
    $gds_root/chip_io.gds \
    $gds_root/caravel_core.gds"

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
