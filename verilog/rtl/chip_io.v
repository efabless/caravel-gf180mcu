// SPDX-FileCopyrightText: 2020 Efabless Corporation
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
// SPDX-License-Identifier: Apache-2.0

// `default_nettype none
module chip_io(
`ifdef USE_POWER_PINS
	// Power buses
	inout  VSS,	// Common padframe/ESD 5.0V ground
	inout  VDD,	// Management padframe/ESD 5.0V supply
`endif

	inout  gpio,
	input  clock,
	input  resetb,
	output flash_csb,
	output flash_clk,
	inout  flash_io0,
	inout  flash_io1,

	// Chip Core Interface
	output resetb_core,
	output clock_core,
	output gpio_in_core,
	input  gpio_out_core,
	input  gpio_outen_core,
	input  gpio_inen_core,
	input  gpio_pu_select_core,
	input  gpio_pd_select_core,
	input  gpio_schmitt_select_core,
	input  gpio_slew_select_core,
	input  [1:0] gpio_drive_select_core,
	input  flash_csb_core,
	input  flash_clk_core,
	input  flash_csb_oe_core,
	input  flash_clk_oe_core,
	input  flash_io0_oe_core,
	input  flash_io1_oe_core,
	input  flash_io0_ie_core,
	input  flash_io1_ie_core,
	input  flash_io0_do_core,
	input  flash_io1_do_core,
	output flash_io0_di_core,
	output flash_io1_di_core,

	// Constant value inputs for fixed GPIO configuration
	input [5:0] const_zero,
	input [1:0] const_one,

	// User project IOs
	inout [`MPRJ_IO_PADS-1:0] mprj_io,
	input [`MPRJ_IO_PADS-1:0] mprj_io_out,
	input [`MPRJ_IO_PADS-1:0] mprj_io_oe,
	input [`MPRJ_IO_PADS-1:0] mprj_io_ie,
	input [`MPRJ_IO_PADS-1:0] mprj_io_schmitt_sel,
	input [`MPRJ_IO_PADS-1:0] mprj_io_slew_sel,
	input [`MPRJ_IO_PADS-1:0] mprj_io_pullup_sel,
	input [`MPRJ_IO_PADS-1:0] mprj_io_pulldown_sel,
	input [`MPRJ_IO_PADS*2-1:0] mprj_io_drive_sel,
	output [`MPRJ_IO_PADS-1:0] mprj_io_in
);

	// Instantiate power and ground pads for management domain
	// 12 pads:  vddio, vssio, vdda, vssa, vccd, vssd correspond
	// to names used with sky130, with multiple voltages for each
	// domain.  The instance names reflect where these pads
	// match the position of corresponding pads on the sky130
	// caravel, but note that there is actually only one
	// 5V supply, VDD and one common ground, VSS.

	// NOTE:  Global Foundries only supplies two pads, DVDD and
	// DVSS for 5V.  Only 5V digital cells are available for this
	// process.  Therefore, all power supplies are on the 5V
	// domain.  The VDD breaker cell divides VDD domains;
	// however, all VSS domains are tied together.

    	gf180mcu_fd_io__dvdd mgmt_vddio_pad_0 (
		.DVDD(VDD),
		.DVSS(VSS),
		.VSS(VSS)
    	);

	// lies in user area---Does not belong to management domain
	// like it does on the Sky130 version.
    	gf180mcu_fd_io__dvdd mgmt_vddio_pad_1 (
		.DVDD(VDD),
		.DVSS(VSS),
		.VSS(VSS)
    	);

    	gf180mcu_fd_io__dvdd mgmt_vdda_pad (
		.DVDD(VDD),
		.DVSS(VSS),
		.VSS(VSS)
    	);

    	gf180mcu_fd_io__dvdd mgmt_vccd_pad (
		.DVDD(VDD),
		.DVSS(VSS),
		.VSS(VSS)
    	);

    	gf180mcu_fd_io__dvss mgmt_vssio_pad_0 (
		.DVDD(VDD),
		.DVSS(VSS),
		.VDD(VDD)
    	);

    	gf180mcu_fd_io__dvss mgmt_vssio_pad_1 (
		.DVDD(VDD),
		.DVSS(VSS),
		.VDD(VDD)
    	);

    	gf180mcu_fd_io__dvss mgmt_vssa_pad (
		.DVDD(VDD),
		.DVSS(VSS),
		.VDD(VDD)
    	);

    	gf180mcu_fd_io__dvss mgmt_vssd_pad (
		.DVDD(VDD),
		.DVSS(VSS),
		.VDD(VDD)
    	);

	// Instantiate power and ground pads for user 1 domain
	// 8 pads:  vdda, vssa, vccd, vssd;  One each HV and LV clamp.

    	gf180mcu_fd_io__dvdd user1_vdda_pad_0 (
		.DVDD(VDD),
		.DVSS(VSS),
		.VSS(VSS)
    	);

	gf180mcu_fd_io__dvdd user1_vdda_pad_1 (
		.DVDD(VDD),
		.DVSS(VSS),
		.VSS(VSS)
    	);

    	gf180mcu_fd_io__dvdd user1_vccd_pad (
		.DVDD(VDD),
		.DVSS(VSS),
		.VSS(VSS)
    	);

    	gf180mcu_fd_io__dvss user1_vssa_pad_0 (
		.DVDD(VDD),
		.DVSS(VSS),
		.VDD(VDD)
    	);


    	gf180mcu_fd_io__dvss user1_vssa_pad_1 (
		.DVDD(VDD),
		.DVSS(VSS),
		.VDD(VDD)
    	);

    	gf180mcu_fd_io__dvss user1_vssd_pad (
		.DVDD(VDD),
		.DVSS(VSS),
		.VDD(VDD)
    	);

	// Instantiate power and ground pads for user 2 domain
	// 8 pads:  vdda, vssa, vccd, vssd;  One each HV and LV clamp.

    	gf180mcu_fd_io__dvdd user2_vdda_pad (
		.DVDD(VDD),
		.DVSS(VSS),
		.VSS(VSS)
    	);

    	gf180mcu_fd_io__dvdd user2_vccd_pad (
		.DVDD(VDD),
		.DVSS(VSS),
		.VSS(VSS)
    	);

    	gf180mcu_fd_io__dvss user2_vssa_pad (
		.DVDD(VDD),
		.DVSS(VSS),
		.VDD(VDD)
    	);

    	gf180mcu_fd_io__dvss user2_vssd_pad (
		.DVDD(VDD),
		.DVSS(VSS),
		.VDD(VDD)
    	);

	// Management clock input pad
	gf180mcu_fd_io__in_c mgmt_clock_input_pad (
		.DVDD(VDD),
		.DVSS(VSS),
		.VDD(VDD),
		.VSS(VSS),
		.PU(const_zero[4]),
		.PD(const_zero[4]),
		.PAD(clock),
		.Y(clock_core)
	);

	// Management GPIO pad
	gf180mcu_fd_io__bi_t mgmt_gpio_pad (
		.DVDD(VDD),
		.DVSS(VSS),
		.VDD(VDD),
		.VSS(VSS),
		.PAD(gpio),
		.CS(gpio_schmitt_select),
		.SL(gpio_slew_select),
		.IE(gpio_inen_core),
		.OE(gpio_outen_core),
		.PU(gpio_pu_select),
		.PD(gpio_pd_select),
		.PDRV0(gpio_drive_select_core[0]),
		.PDRV1(gpio_drive_select_core[1]),
		.A(gpio_out_core),
		.Y(gpio_in_core)
	);

	// Management Flash SPI pads
	gf180mcu_fd_io__bi_t flash_io0_pad (
		.DVDD(VDD),
		.DVSS(VSS),
		.VDD(VDD),
		.VSS(VSS),
		.PAD(flash_io0),
		.CS(const_zero[1]),
		.SL(const_zero[1]),
		.IE(flash_io0_ie_core),
		.OE(flash_io0_oe_core),
		.PU(const_zero[1]),
		.PD(const_zero[1]),
		.PDRV0(const_zero[1]),
		.PDRV1(const_zero[1]),
		.A(flash_io0_do_core),
		.Y(flash_io0_di_core)
	);
	
	gf180mcu_fd_io__bi_t flash_io1_pad (
		.DVDD(VDD),
		.DVSS(VSS),
		.VDD(VDD),
		.VSS(VSS),
		.PAD(flash_io1),
		.CS(const_zero[0]),
		.SL(const_zero[0]),
		.IE(flash_io1_ie_core),
		.OE(flash_io1_oe_core),
		.PU(const_zero[0]),
		.PD(const_zero[0]),
		.PDRV0(const_zero[0]),
		.PDRV1(const_zero[0]),
		.A(flash_io1_do_core),
		.Y(flash_io1_di_core)
	);

	gf180mcu_fd_io__bi_t flash_csb_pad (
		.DVDD(VDD),
		.DVSS(VSS),
		.VDD(VDD),
		.VSS(VSS),
		.PAD(flash_csb),
		.CS(const_zero[3]),
		.SL(const_zero[3]),
		.IE(const_zero[3]),
		.OE(flash_csb_oe_core),
		.PU(const_one[0]),
		.PD(const_zero[3]),
		.PDRV0(const_zero[3]),
		.PDRV1(const_zero[3]),
		.A(flash_csb_core),
		.Y()
	);

	gf180mcu_fd_io__bi_t flash_clk_pad (
		.DVDD(VDD),
		.DVSS(VSS),
		.VDD(VDD),
		.VSS(VSS),
		.PAD(flash_clk),
		.CS(const_zero[2]),
		.SL(const_zero[2]),
		.IE(const_zero[2]),
		.OE(flash_clk_oe_core),
		.PU(const_zero[2]),
		.PD(const_zero[2]),
		.PDRV0(const_zero[2]),
		.PDRV1(const_zero[2]),
		.A(flash_clk_core),
		.Y()
	);

	// NOTE:  Resetb is active low and is configured as a pull-up

	gf180mcu_fd_io__in_s resetb_pad (
		.DVDD(VDD),
		.DVSS(VSS),
		.VDD(VDD),
		.VSS(VSS),
		.PU(const_one[1]),
		.PD(const_zero[5]),
		.PAD(resetb),
		.Y(resetb_core)
	);

	// Corner cells (These are overlay cells;  it is not clear what is normally
    	// supposed to go under them.)

	gf180mcu_fd_io__cor mgmt_corner [1:0] (
		.DVDD(VDD),
		.DVSS(VSS),
		.VDD(VDD),
		.VSS(VSS)
	);

	gf180mcu_fd_io__cor user1_corner (
		.DVDD(VDD),
		.DVSS(VSS),
		.VDD(VDD),
		.VSS(VSS)
    	);

	gf180mcu_fd_io__cor user2_corner (
		.DVDD(VDD),
		.DVSS(VSS),
		.VDD(VDD),
		.VSS(VSS)
    	);

	gf180mcu_fd_io__bi_t mprj_pads[`MPRJ_IO_PADS-1:0] (
		.DVDD(VDD),
		.DVSS(VSS),
		.VDD(VDD),
		.VSS(VSS),
		.PAD(mprj_io),
		.CS(mprj_io_schmitt_select),
		.SL(mprj_io_slew_select),
		.IE(mprj_io_ie),
		.OE(mprj_io_oe),
		.PU(mprj_io_pullup_sel),
		.PD(mprj_io_pulldown_sel),
		.PDRV0(mprj_io_drive_sel[0]),
		.PDRV1(mprj_io_drive_sel[1]),
		.A(mprj_io_out),
		.Y(mprj_io_in)
	);

endmodule
// `default_nettype wire
