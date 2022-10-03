/* Generated by Yosys 0.12+45 (git sha1 UNKNOWN, gcc 8.3.1 -fPIC -Os) */

module chip_io(VSS, VDD, gpio, clock, resetb, flash_csb, flash_clk, flash_io0, flash_io1, resetb_core, clock_core, gpio_in_core, gpio_out_core, gpio_outen_core, gpio_inen_core, gpio_pu_select_core, gpio_pd_select_core, gpio_schmitt_select_core, gpio_slew_select_core, gpio_drive_select_core, flash_csb_core
, flash_clk_core, flash_csb_oe_core, flash_clk_oe_core, flash_io0_oe_core, flash_io1_oe_core, flash_io0_ie_core, flash_io1_ie_core, flash_io0_do_core, flash_io1_do_core, flash_io0_di_core, flash_io1_di_core, mprj_io, mprj_io_out, mprj_io_oe, mprj_io_ie, mprj_io_schmitt_sel, mprj_io_slew_sel, mprj_io_pullup_sel, mprj_io_pulldown_sel, mprj_io_drive_sel, mprj_io_in
);
  inout VDD;
  inout VSS;
  input clock;
  output clock_core;
  output flash_clk;
  input flash_clk_core;
  input flash_clk_oe_core;
  output flash_csb;
  input flash_csb_core;
  input flash_csb_oe_core;
  inout flash_io0;
  output flash_io0_di_core;
  input flash_io0_do_core;
  input flash_io0_ie_core;
  input flash_io0_oe_core;
  inout flash_io1;
  output flash_io1_di_core;
  input flash_io1_do_core;
  input flash_io1_ie_core;
  input flash_io1_oe_core;
  inout gpio;
  input [1:0] gpio_drive_select_core;
  output gpio_in_core;
  input gpio_inen_core;
  input gpio_out_core;
  input gpio_outen_core;
  wire gpio_pd_select;
  input gpio_pd_select_core;
  wire gpio_pu_select;
  input gpio_pu_select_core;
  wire gpio_schmitt_select;
  input gpio_schmitt_select_core;
  wire gpio_slew_select;
  input gpio_slew_select_core;
  inout [37:0] mprj_io;
  input [75:0] mprj_io_drive_sel;
  input [37:0] mprj_io_ie;
  output [37:0] mprj_io_in;
  input [37:0] mprj_io_oe;
  input [37:0] mprj_io_out;
  input [37:0] mprj_io_pulldown_sel;
  input [37:0] mprj_io_pullup_sel;
  input [37:0] mprj_io_schmitt_sel;
  wire mprj_io_schmitt_select;
  input [37:0] mprj_io_slew_sel;
  wire mprj_io_slew_select;
  input resetb;
  output resetb_core;
  GF_NI_BI_T flash_clk_pad (
    .A(flash_clk_core),
    .CS(VSS),
    .DVDD(VDD),
    .DVSS(VSS),
    .IE(VSS),
    .OE(flash_clk_oe_core),
    .PAD(flash_clk),
    .PD(VSS),
    .PDRV0(VSS),
    .PDRV1(VSS),
    .PU(VDD),
    .SL(VSS),
    .VDD(VDD),
    .VSS(VSS)
  );
  GF_NI_BI_T flash_csb_pad (
    .A(flash_csb_core),
    .CS(VSS),
    .DVDD(VDD),
    .DVSS(VSS),
    .IE(VSS),
    .OE(flash_csb_oe_core),
    .PAD(flash_csb),
    .PD(VSS),
    .PDRV0(VSS),
    .PDRV1(VSS),
    .PU(VDD),
    .SL(VSS),
    .VDD(VDD),
    .VSS(VSS)
  );
  GF_NI_BI_T flash_io0_pad (
    .A(flash_io0_do_core),
    .CS(VSS),
    .DVDD(VDD),
    .DVSS(VSS),
    .IE(flash_io0_ie_core),
    .OE(flash_io0_oe_core),
    .PAD(flash_io0),
    .PD(VSS),
    .PDRV0(VSS),
    .PDRV1(VSS),
    .PU(VSS),
    .SL(VSS),
    .VDD(VDD),
    .VSS(VSS),
    .Y(flash_io0_di_core)
  );
  GF_NI_BI_T flash_io1_pad (
    .A(flash_io1_do_core),
    .CS(VSS),
    .DVDD(VDD),
    .DVSS(VSS),
    .IE(flash_io1_ie_core),
    .OE(flash_io1_oe_core),
    .PAD(flash_io1),
    .PD(VSS),
    .PDRV0(VSS),
    .PDRV1(VSS),
    .PU(VSS),
    .SL(VSS),
    .VDD(VDD),
    .VSS(VSS),
    .Y(flash_io1_di_core)
  );
  GF_NI_IN_C mgmt_clock_input_pad (
    .DVDD(VDD),
    .DVSS(VSS),
    .PAD(clock),
    .PD(VSS),
    .PU(VSS),
    .VDD(VDD),
    .VSS(VSS),
    .Y(clock_core)
  );
  GF_NI_COR \mgmt_corner[0]  (
    .DVDD(VDD),
    .DVSS(VSS),
    .VDD(VDD),
    .VSS(VSS)
  );
  GF_NI_COR \mgmt_corner[1]  (
    .DVDD(VDD),
    .DVSS(VSS),
    .VDD(VDD),
    .VSS(VSS)
  );
  GF_NI_BI_T mgmt_gpio_pad (
    .A(gpio_out_core),
    .CS(gpio_schmitt_select),
    .DVDD(VDD),
    .DVSS(VSS),
    .IE(gpio_inen_core),
    .OE(gpio_outen_core),
    .PAD(gpio),
    .PD(gpio_pd_select),
    .PDRV0(gpio_drive_select_core[0]),
    .PDRV1(gpio_drive_select_core[1]),
    .PU(gpio_pu_select),
    .SL(gpio_slew_select),
    .VDD(VDD),
    .VSS(VSS),
    .Y(gpio_in_core)
  );
  GF_NI_DVDD mgmt_vccd_pad (
    .DVDD(VDD),
    .DVSS(VSS),
    .VSS(VSS)
  );
  GF_NI_DVDD mgmt_vdda_pad (
    .DVDD(VDD),
    .DVSS(VSS),
    .VSS(VSS)
  );
  GF_NI_DVDD mgmt_vddio_pad_0 (
    .DVDD(VDD),
    .DVSS(VSS),
    .VSS(VSS)
  );
  GF_NI_DVDD mgmt_vddio_pad_1 (
    .DVDD(VDD),
    .DVSS(VSS),
    .VSS(VSS)
  );
  GF_NI_DVSS mgmt_vssa_pad (
    .DVDD(VDD),
    .DVSS(VSS),
    .VDD(VDD)
  );
  GF_NI_DVSS mgmt_vssd_pad (
    .DVDD(VDD),
    .DVSS(VSS),
    .VDD(VDD)
  );
  GF_NI_DVSS mgmt_vssio_pad_0 (
    .DVDD(VDD),
    .DVSS(VSS),
    .VDD(VDD)
  );
  GF_NI_DVSS mgmt_vssio_pad_1 (
    .DVDD(VDD),
    .DVSS(VSS),
    .VDD(VDD)
  );
  GF_NI_BI_T \mprj_pads[0]  (
    .A(mprj_io_out[0]),
    .CS(mprj_io_schmitt_select),
    .DVDD(VDD),
    .DVSS(VSS),
    .IE(mprj_io_ie[0]),
    .OE(mprj_io_oe[0]),
    .PAD(mprj_io[0]),
    .PD(mprj_io_pulldown_sel[0]),
    .PDRV0(mprj_io_drive_sel[0]),
    .PDRV1(mprj_io_drive_sel[1]),
    .PU(mprj_io_pullup_sel[0]),
    .SL(mprj_io_slew_select),
    .VDD(VDD),
    .VSS(VSS),
    .Y(mprj_io_in[0])
  );
  GF_NI_BI_T \mprj_pads[10]  (
    .A(mprj_io_out[10]),
    .CS(mprj_io_schmitt_select),
    .DVDD(VDD),
    .DVSS(VSS),
    .IE(mprj_io_ie[10]),
    .OE(mprj_io_oe[10]),
    .PAD(mprj_io[10]),
    .PD(mprj_io_pulldown_sel[10]),
    .PDRV0(mprj_io_drive_sel[0]),
    .PDRV1(mprj_io_drive_sel[1]),
    .PU(mprj_io_pullup_sel[10]),
    .SL(mprj_io_slew_select),
    .VDD(VDD),
    .VSS(VSS),
    .Y(mprj_io_in[10])
  );
  GF_NI_BI_T \mprj_pads[11]  (
    .A(mprj_io_out[11]),
    .CS(mprj_io_schmitt_select),
    .DVDD(VDD),
    .DVSS(VSS),
    .IE(mprj_io_ie[11]),
    .OE(mprj_io_oe[11]),
    .PAD(mprj_io[11]),
    .PD(mprj_io_pulldown_sel[11]),
    .PDRV0(mprj_io_drive_sel[0]),
    .PDRV1(mprj_io_drive_sel[1]),
    .PU(mprj_io_pullup_sel[11]),
    .SL(mprj_io_slew_select),
    .VDD(VDD),
    .VSS(VSS),
    .Y(mprj_io_in[11])
  );
  GF_NI_BI_T \mprj_pads[12]  (
    .A(mprj_io_out[12]),
    .CS(mprj_io_schmitt_select),
    .DVDD(VDD),
    .DVSS(VSS),
    .IE(mprj_io_ie[12]),
    .OE(mprj_io_oe[12]),
    .PAD(mprj_io[12]),
    .PD(mprj_io_pulldown_sel[12]),
    .PDRV0(mprj_io_drive_sel[0]),
    .PDRV1(mprj_io_drive_sel[1]),
    .PU(mprj_io_pullup_sel[12]),
    .SL(mprj_io_slew_select),
    .VDD(VDD),
    .VSS(VSS),
    .Y(mprj_io_in[12])
  );
  GF_NI_BI_T \mprj_pads[13]  (
    .A(mprj_io_out[13]),
    .CS(mprj_io_schmitt_select),
    .DVDD(VDD),
    .DVSS(VSS),
    .IE(mprj_io_ie[13]),
    .OE(mprj_io_oe[13]),
    .PAD(mprj_io[13]),
    .PD(mprj_io_pulldown_sel[13]),
    .PDRV0(mprj_io_drive_sel[0]),
    .PDRV1(mprj_io_drive_sel[1]),
    .PU(mprj_io_pullup_sel[13]),
    .SL(mprj_io_slew_select),
    .VDD(VDD),
    .VSS(VSS),
    .Y(mprj_io_in[13])
  );
  GF_NI_BI_T \mprj_pads[14]  (
    .A(mprj_io_out[14]),
    .CS(mprj_io_schmitt_select),
    .DVDD(VDD),
    .DVSS(VSS),
    .IE(mprj_io_ie[14]),
    .OE(mprj_io_oe[14]),
    .PAD(mprj_io[14]),
    .PD(mprj_io_pulldown_sel[14]),
    .PDRV0(mprj_io_drive_sel[0]),
    .PDRV1(mprj_io_drive_sel[1]),
    .PU(mprj_io_pullup_sel[14]),
    .SL(mprj_io_slew_select),
    .VDD(VDD),
    .VSS(VSS),
    .Y(mprj_io_in[14])
  );
  GF_NI_BI_T \mprj_pads[15]  (
    .A(mprj_io_out[15]),
    .CS(mprj_io_schmitt_select),
    .DVDD(VDD),
    .DVSS(VSS),
    .IE(mprj_io_ie[15]),
    .OE(mprj_io_oe[15]),
    .PAD(mprj_io[15]),
    .PD(mprj_io_pulldown_sel[15]),
    .PDRV0(mprj_io_drive_sel[0]),
    .PDRV1(mprj_io_drive_sel[1]),
    .PU(mprj_io_pullup_sel[15]),
    .SL(mprj_io_slew_select),
    .VDD(VDD),
    .VSS(VSS),
    .Y(mprj_io_in[15])
  );
  GF_NI_BI_T \mprj_pads[16]  (
    .A(mprj_io_out[16]),
    .CS(mprj_io_schmitt_select),
    .DVDD(VDD),
    .DVSS(VSS),
    .IE(mprj_io_ie[16]),
    .OE(mprj_io_oe[16]),
    .PAD(mprj_io[16]),
    .PD(mprj_io_pulldown_sel[16]),
    .PDRV0(mprj_io_drive_sel[0]),
    .PDRV1(mprj_io_drive_sel[1]),
    .PU(mprj_io_pullup_sel[16]),
    .SL(mprj_io_slew_select),
    .VDD(VDD),
    .VSS(VSS),
    .Y(mprj_io_in[16])
  );
  GF_NI_BI_T \mprj_pads[17]  (
    .A(mprj_io_out[17]),
    .CS(mprj_io_schmitt_select),
    .DVDD(VDD),
    .DVSS(VSS),
    .IE(mprj_io_ie[17]),
    .OE(mprj_io_oe[17]),
    .PAD(mprj_io[17]),
    .PD(mprj_io_pulldown_sel[17]),
    .PDRV0(mprj_io_drive_sel[0]),
    .PDRV1(mprj_io_drive_sel[1]),
    .PU(mprj_io_pullup_sel[17]),
    .SL(mprj_io_slew_select),
    .VDD(VDD),
    .VSS(VSS),
    .Y(mprj_io_in[17])
  );
  GF_NI_BI_T \mprj_pads[18]  (
    .A(mprj_io_out[18]),
    .CS(mprj_io_schmitt_select),
    .DVDD(VDD),
    .DVSS(VSS),
    .IE(mprj_io_ie[18]),
    .OE(mprj_io_oe[18]),
    .PAD(mprj_io[18]),
    .PD(mprj_io_pulldown_sel[18]),
    .PDRV0(mprj_io_drive_sel[0]),
    .PDRV1(mprj_io_drive_sel[1]),
    .PU(mprj_io_pullup_sel[18]),
    .SL(mprj_io_slew_select),
    .VDD(VDD),
    .VSS(VSS),
    .Y(mprj_io_in[18])
  );
  GF_NI_BI_T \mprj_pads[19]  (
    .A(mprj_io_out[19]),
    .CS(mprj_io_schmitt_select),
    .DVDD(VDD),
    .DVSS(VSS),
    .IE(mprj_io_ie[19]),
    .OE(mprj_io_oe[19]),
    .PAD(mprj_io[19]),
    .PD(mprj_io_pulldown_sel[19]),
    .PDRV0(mprj_io_drive_sel[0]),
    .PDRV1(mprj_io_drive_sel[1]),
    .PU(mprj_io_pullup_sel[19]),
    .SL(mprj_io_slew_select),
    .VDD(VDD),
    .VSS(VSS),
    .Y(mprj_io_in[19])
  );
  GF_NI_BI_T \mprj_pads[1]  (
    .A(mprj_io_out[1]),
    .CS(mprj_io_schmitt_select),
    .DVDD(VDD),
    .DVSS(VSS),
    .IE(mprj_io_ie[1]),
    .OE(mprj_io_oe[1]),
    .PAD(mprj_io[1]),
    .PD(mprj_io_pulldown_sel[1]),
    .PDRV0(mprj_io_drive_sel[0]),
    .PDRV1(mprj_io_drive_sel[1]),
    .PU(mprj_io_pullup_sel[1]),
    .SL(mprj_io_slew_select),
    .VDD(VDD),
    .VSS(VSS),
    .Y(mprj_io_in[1])
  );
  GF_NI_BI_T \mprj_pads[20]  (
    .A(mprj_io_out[20]),
    .CS(mprj_io_schmitt_select),
    .DVDD(VDD),
    .DVSS(VSS),
    .IE(mprj_io_ie[20]),
    .OE(mprj_io_oe[20]),
    .PAD(mprj_io[20]),
    .PD(mprj_io_pulldown_sel[20]),
    .PDRV0(mprj_io_drive_sel[0]),
    .PDRV1(mprj_io_drive_sel[1]),
    .PU(mprj_io_pullup_sel[20]),
    .SL(mprj_io_slew_select),
    .VDD(VDD),
    .VSS(VSS),
    .Y(mprj_io_in[20])
  );
  GF_NI_BI_T \mprj_pads[21]  (
    .A(mprj_io_out[21]),
    .CS(mprj_io_schmitt_select),
    .DVDD(VDD),
    .DVSS(VSS),
    .IE(mprj_io_ie[21]),
    .OE(mprj_io_oe[21]),
    .PAD(mprj_io[21]),
    .PD(mprj_io_pulldown_sel[21]),
    .PDRV0(mprj_io_drive_sel[0]),
    .PDRV1(mprj_io_drive_sel[1]),
    .PU(mprj_io_pullup_sel[21]),
    .SL(mprj_io_slew_select),
    .VDD(VDD),
    .VSS(VSS),
    .Y(mprj_io_in[21])
  );
  GF_NI_BI_T \mprj_pads[22]  (
    .A(mprj_io_out[22]),
    .CS(mprj_io_schmitt_select),
    .DVDD(VDD),
    .DVSS(VSS),
    .IE(mprj_io_ie[22]),
    .OE(mprj_io_oe[22]),
    .PAD(mprj_io[22]),
    .PD(mprj_io_pulldown_sel[22]),
    .PDRV0(mprj_io_drive_sel[0]),
    .PDRV1(mprj_io_drive_sel[1]),
    .PU(mprj_io_pullup_sel[22]),
    .SL(mprj_io_slew_select),
    .VDD(VDD),
    .VSS(VSS),
    .Y(mprj_io_in[22])
  );
  GF_NI_BI_T \mprj_pads[23]  (
    .A(mprj_io_out[23]),
    .CS(mprj_io_schmitt_select),
    .DVDD(VDD),
    .DVSS(VSS),
    .IE(mprj_io_ie[23]),
    .OE(mprj_io_oe[23]),
    .PAD(mprj_io[23]),
    .PD(mprj_io_pulldown_sel[23]),
    .PDRV0(mprj_io_drive_sel[0]),
    .PDRV1(mprj_io_drive_sel[1]),
    .PU(mprj_io_pullup_sel[23]),
    .SL(mprj_io_slew_select),
    .VDD(VDD),
    .VSS(VSS),
    .Y(mprj_io_in[23])
  );
  GF_NI_BI_T \mprj_pads[24]  (
    .A(mprj_io_out[24]),
    .CS(mprj_io_schmitt_select),
    .DVDD(VDD),
    .DVSS(VSS),
    .IE(mprj_io_ie[24]),
    .OE(mprj_io_oe[24]),
    .PAD(mprj_io[24]),
    .PD(mprj_io_pulldown_sel[24]),
    .PDRV0(mprj_io_drive_sel[0]),
    .PDRV1(mprj_io_drive_sel[1]),
    .PU(mprj_io_pullup_sel[24]),
    .SL(mprj_io_slew_select),
    .VDD(VDD),
    .VSS(VSS),
    .Y(mprj_io_in[24])
  );
  GF_NI_BI_T \mprj_pads[25]  (
    .A(mprj_io_out[25]),
    .CS(mprj_io_schmitt_select),
    .DVDD(VDD),
    .DVSS(VSS),
    .IE(mprj_io_ie[25]),
    .OE(mprj_io_oe[25]),
    .PAD(mprj_io[25]),
    .PD(mprj_io_pulldown_sel[25]),
    .PDRV0(mprj_io_drive_sel[0]),
    .PDRV1(mprj_io_drive_sel[1]),
    .PU(mprj_io_pullup_sel[25]),
    .SL(mprj_io_slew_select),
    .VDD(VDD),
    .VSS(VSS),
    .Y(mprj_io_in[25])
  );
  GF_NI_BI_T \mprj_pads[26]  (
    .A(mprj_io_out[26]),
    .CS(mprj_io_schmitt_select),
    .DVDD(VDD),
    .DVSS(VSS),
    .IE(mprj_io_ie[26]),
    .OE(mprj_io_oe[26]),
    .PAD(mprj_io[26]),
    .PD(mprj_io_pulldown_sel[26]),
    .PDRV0(mprj_io_drive_sel[0]),
    .PDRV1(mprj_io_drive_sel[1]),
    .PU(mprj_io_pullup_sel[26]),
    .SL(mprj_io_slew_select),
    .VDD(VDD),
    .VSS(VSS),
    .Y(mprj_io_in[26])
  );
  GF_NI_BI_T \mprj_pads[27]  (
    .A(mprj_io_out[27]),
    .CS(mprj_io_schmitt_select),
    .DVDD(VDD),
    .DVSS(VSS),
    .IE(mprj_io_ie[27]),
    .OE(mprj_io_oe[27]),
    .PAD(mprj_io[27]),
    .PD(mprj_io_pulldown_sel[27]),
    .PDRV0(mprj_io_drive_sel[0]),
    .PDRV1(mprj_io_drive_sel[1]),
    .PU(mprj_io_pullup_sel[27]),
    .SL(mprj_io_slew_select),
    .VDD(VDD),
    .VSS(VSS),
    .Y(mprj_io_in[27])
  );
  GF_NI_BI_T \mprj_pads[28]  (
    .A(mprj_io_out[28]),
    .CS(mprj_io_schmitt_select),
    .DVDD(VDD),
    .DVSS(VSS),
    .IE(mprj_io_ie[28]),
    .OE(mprj_io_oe[28]),
    .PAD(mprj_io[28]),
    .PD(mprj_io_pulldown_sel[28]),
    .PDRV0(mprj_io_drive_sel[0]),
    .PDRV1(mprj_io_drive_sel[1]),
    .PU(mprj_io_pullup_sel[28]),
    .SL(mprj_io_slew_select),
    .VDD(VDD),
    .VSS(VSS),
    .Y(mprj_io_in[28])
  );
  GF_NI_BI_T \mprj_pads[29]  (
    .A(mprj_io_out[29]),
    .CS(mprj_io_schmitt_select),
    .DVDD(VDD),
    .DVSS(VSS),
    .IE(mprj_io_ie[29]),
    .OE(mprj_io_oe[29]),
    .PAD(mprj_io[29]),
    .PD(mprj_io_pulldown_sel[29]),
    .PDRV0(mprj_io_drive_sel[0]),
    .PDRV1(mprj_io_drive_sel[1]),
    .PU(mprj_io_pullup_sel[29]),
    .SL(mprj_io_slew_select),
    .VDD(VDD),
    .VSS(VSS),
    .Y(mprj_io_in[29])
  );
  GF_NI_BI_T \mprj_pads[2]  (
    .A(mprj_io_out[2]),
    .CS(mprj_io_schmitt_select),
    .DVDD(VDD),
    .DVSS(VSS),
    .IE(mprj_io_ie[2]),
    .OE(mprj_io_oe[2]),
    .PAD(mprj_io[2]),
    .PD(mprj_io_pulldown_sel[2]),
    .PDRV0(mprj_io_drive_sel[0]),
    .PDRV1(mprj_io_drive_sel[1]),
    .PU(mprj_io_pullup_sel[2]),
    .SL(mprj_io_slew_select),
    .VDD(VDD),
    .VSS(VSS),
    .Y(mprj_io_in[2])
  );
  GF_NI_BI_T \mprj_pads[30]  (
    .A(mprj_io_out[30]),
    .CS(mprj_io_schmitt_select),
    .DVDD(VDD),
    .DVSS(VSS),
    .IE(mprj_io_ie[30]),
    .OE(mprj_io_oe[30]),
    .PAD(mprj_io[30]),
    .PD(mprj_io_pulldown_sel[30]),
    .PDRV0(mprj_io_drive_sel[0]),
    .PDRV1(mprj_io_drive_sel[1]),
    .PU(mprj_io_pullup_sel[30]),
    .SL(mprj_io_slew_select),
    .VDD(VDD),
    .VSS(VSS),
    .Y(mprj_io_in[30])
  );
  GF_NI_BI_T \mprj_pads[31]  (
    .A(mprj_io_out[31]),
    .CS(mprj_io_schmitt_select),
    .DVDD(VDD),
    .DVSS(VSS),
    .IE(mprj_io_ie[31]),
    .OE(mprj_io_oe[31]),
    .PAD(mprj_io[31]),
    .PD(mprj_io_pulldown_sel[31]),
    .PDRV0(mprj_io_drive_sel[0]),
    .PDRV1(mprj_io_drive_sel[1]),
    .PU(mprj_io_pullup_sel[31]),
    .SL(mprj_io_slew_select),
    .VDD(VDD),
    .VSS(VSS),
    .Y(mprj_io_in[31])
  );
  GF_NI_BI_T \mprj_pads[32]  (
    .A(mprj_io_out[32]),
    .CS(mprj_io_schmitt_select),
    .DVDD(VDD),
    .DVSS(VSS),
    .IE(mprj_io_ie[32]),
    .OE(mprj_io_oe[32]),
    .PAD(mprj_io[32]),
    .PD(mprj_io_pulldown_sel[32]),
    .PDRV0(mprj_io_drive_sel[0]),
    .PDRV1(mprj_io_drive_sel[1]),
    .PU(mprj_io_pullup_sel[32]),
    .SL(mprj_io_slew_select),
    .VDD(VDD),
    .VSS(VSS),
    .Y(mprj_io_in[32])
  );
  GF_NI_BI_T \mprj_pads[33]  (
    .A(mprj_io_out[33]),
    .CS(mprj_io_schmitt_select),
    .DVDD(VDD),
    .DVSS(VSS),
    .IE(mprj_io_ie[33]),
    .OE(mprj_io_oe[33]),
    .PAD(mprj_io[33]),
    .PD(mprj_io_pulldown_sel[33]),
    .PDRV0(mprj_io_drive_sel[0]),
    .PDRV1(mprj_io_drive_sel[1]),
    .PU(mprj_io_pullup_sel[33]),
    .SL(mprj_io_slew_select),
    .VDD(VDD),
    .VSS(VSS),
    .Y(mprj_io_in[33])
  );
  GF_NI_BI_T \mprj_pads[34]  (
    .A(mprj_io_out[34]),
    .CS(mprj_io_schmitt_select),
    .DVDD(VDD),
    .DVSS(VSS),
    .IE(mprj_io_ie[34]),
    .OE(mprj_io_oe[34]),
    .PAD(mprj_io[34]),
    .PD(mprj_io_pulldown_sel[34]),
    .PDRV0(mprj_io_drive_sel[0]),
    .PDRV1(mprj_io_drive_sel[1]),
    .PU(mprj_io_pullup_sel[34]),
    .SL(mprj_io_slew_select),
    .VDD(VDD),
    .VSS(VSS),
    .Y(mprj_io_in[34])
  );
  GF_NI_BI_T \mprj_pads[35]  (
    .A(mprj_io_out[35]),
    .CS(mprj_io_schmitt_select),
    .DVDD(VDD),
    .DVSS(VSS),
    .IE(mprj_io_ie[35]),
    .OE(mprj_io_oe[35]),
    .PAD(mprj_io[35]),
    .PD(mprj_io_pulldown_sel[35]),
    .PDRV0(mprj_io_drive_sel[0]),
    .PDRV1(mprj_io_drive_sel[1]),
    .PU(mprj_io_pullup_sel[35]),
    .SL(mprj_io_slew_select),
    .VDD(VDD),
    .VSS(VSS),
    .Y(mprj_io_in[35])
  );
  GF_NI_BI_T \mprj_pads[36]  (
    .A(mprj_io_out[36]),
    .CS(mprj_io_schmitt_select),
    .DVDD(VDD),
    .DVSS(VSS),
    .IE(mprj_io_ie[36]),
    .OE(mprj_io_oe[36]),
    .PAD(mprj_io[36]),
    .PD(mprj_io_pulldown_sel[36]),
    .PDRV0(mprj_io_drive_sel[0]),
    .PDRV1(mprj_io_drive_sel[1]),
    .PU(mprj_io_pullup_sel[36]),
    .SL(mprj_io_slew_select),
    .VDD(VDD),
    .VSS(VSS),
    .Y(mprj_io_in[36])
  );
  GF_NI_BI_T \mprj_pads[37]  (
    .A(mprj_io_out[37]),
    .CS(mprj_io_schmitt_select),
    .DVDD(VDD),
    .DVSS(VSS),
    .IE(mprj_io_ie[37]),
    .OE(mprj_io_oe[37]),
    .PAD(mprj_io[37]),
    .PD(mprj_io_pulldown_sel[37]),
    .PDRV0(mprj_io_drive_sel[0]),
    .PDRV1(mprj_io_drive_sel[1]),
    .PU(mprj_io_pullup_sel[37]),
    .SL(mprj_io_slew_select),
    .VDD(VDD),
    .VSS(VSS),
    .Y(mprj_io_in[37])
  );
  GF_NI_BI_T \mprj_pads[3]  (
    .A(mprj_io_out[3]),
    .CS(mprj_io_schmitt_select),
    .DVDD(VDD),
    .DVSS(VSS),
    .IE(mprj_io_ie[3]),
    .OE(mprj_io_oe[3]),
    .PAD(mprj_io[3]),
    .PD(mprj_io_pulldown_sel[3]),
    .PDRV0(mprj_io_drive_sel[0]),
    .PDRV1(mprj_io_drive_sel[1]),
    .PU(mprj_io_pullup_sel[3]),
    .SL(mprj_io_slew_select),
    .VDD(VDD),
    .VSS(VSS),
    .Y(mprj_io_in[3])
  );
  GF_NI_BI_T \mprj_pads[4]  (
    .A(mprj_io_out[4]),
    .CS(mprj_io_schmitt_select),
    .DVDD(VDD),
    .DVSS(VSS),
    .IE(mprj_io_ie[4]),
    .OE(mprj_io_oe[4]),
    .PAD(mprj_io[4]),
    .PD(mprj_io_pulldown_sel[4]),
    .PDRV0(mprj_io_drive_sel[0]),
    .PDRV1(mprj_io_drive_sel[1]),
    .PU(mprj_io_pullup_sel[4]),
    .SL(mprj_io_slew_select),
    .VDD(VDD),
    .VSS(VSS),
    .Y(mprj_io_in[4])
  );
  GF_NI_BI_T \mprj_pads[5]  (
    .A(mprj_io_out[5]),
    .CS(mprj_io_schmitt_select),
    .DVDD(VDD),
    .DVSS(VSS),
    .IE(mprj_io_ie[5]),
    .OE(mprj_io_oe[5]),
    .PAD(mprj_io[5]),
    .PD(mprj_io_pulldown_sel[5]),
    .PDRV0(mprj_io_drive_sel[0]),
    .PDRV1(mprj_io_drive_sel[1]),
    .PU(mprj_io_pullup_sel[5]),
    .SL(mprj_io_slew_select),
    .VDD(VDD),
    .VSS(VSS),
    .Y(mprj_io_in[5])
  );
  GF_NI_BI_T \mprj_pads[6]  (
    .A(mprj_io_out[6]),
    .CS(mprj_io_schmitt_select),
    .DVDD(VDD),
    .DVSS(VSS),
    .IE(mprj_io_ie[6]),
    .OE(mprj_io_oe[6]),
    .PAD(mprj_io[6]),
    .PD(mprj_io_pulldown_sel[6]),
    .PDRV0(mprj_io_drive_sel[0]),
    .PDRV1(mprj_io_drive_sel[1]),
    .PU(mprj_io_pullup_sel[6]),
    .SL(mprj_io_slew_select),
    .VDD(VDD),
    .VSS(VSS),
    .Y(mprj_io_in[6])
  );
  GF_NI_BI_T \mprj_pads[7]  (
    .A(mprj_io_out[7]),
    .CS(mprj_io_schmitt_select),
    .DVDD(VDD),
    .DVSS(VSS),
    .IE(mprj_io_ie[7]),
    .OE(mprj_io_oe[7]),
    .PAD(mprj_io[7]),
    .PD(mprj_io_pulldown_sel[7]),
    .PDRV0(mprj_io_drive_sel[0]),
    .PDRV1(mprj_io_drive_sel[1]),
    .PU(mprj_io_pullup_sel[7]),
    .SL(mprj_io_slew_select),
    .VDD(VDD),
    .VSS(VSS),
    .Y(mprj_io_in[7])
  );
  GF_NI_BI_T \mprj_pads[8]  (
    .A(mprj_io_out[8]),
    .CS(mprj_io_schmitt_select),
    .DVDD(VDD),
    .DVSS(VSS),
    .IE(mprj_io_ie[8]),
    .OE(mprj_io_oe[8]),
    .PAD(mprj_io[8]),
    .PD(mprj_io_pulldown_sel[8]),
    .PDRV0(mprj_io_drive_sel[0]),
    .PDRV1(mprj_io_drive_sel[1]),
    .PU(mprj_io_pullup_sel[8]),
    .SL(mprj_io_slew_select),
    .VDD(VDD),
    .VSS(VSS),
    .Y(mprj_io_in[8])
  );
  GF_NI_BI_T \mprj_pads[9]  (
    .A(mprj_io_out[9]),
    .CS(mprj_io_schmitt_select),
    .DVDD(VDD),
    .DVSS(VSS),
    .IE(mprj_io_ie[9]),
    .OE(mprj_io_oe[9]),
    .PAD(mprj_io[9]),
    .PD(mprj_io_pulldown_sel[9]),
    .PDRV0(mprj_io_drive_sel[0]),
    .PDRV1(mprj_io_drive_sel[1]),
    .PU(mprj_io_pullup_sel[9]),
    .SL(mprj_io_slew_select),
    .VDD(VDD),
    .VSS(VSS),
    .Y(mprj_io_in[9])
  );
  GF_NI_IN_S resetb_pad (
    .DVDD(VDD),
    .DVSS(VSS),
    .PAD(resetb),
    .PD(VDD),
    .PU(VSS),
    .VDD(VDD),
    .VSS(VSS),
    .Y(resetb_core)
  );
  GF_NI_COR user1_corner (
    .DVDD(VDD),
    .DVSS(VSS),
    .VDD(VDD),
    .VSS(VSS)
  );
  GF_NI_DVDD user1_vccd_pad (
    .DVDD(VDD),
    .DVSS(VSS),
    .VSS(VSS)
  );
  GF_NI_DVDD user1_vdda_pad_0 (
    .DVDD(VDD),
    .DVSS(VSS),
    .VSS(VSS)
  );
  GF_NI_DVDD user1_vdda_pad_1 (
    .DVDD(VDD),
    .DVSS(VSS),
    .VSS(VSS)
  );
  GF_NI_DVSS user1_vssa_pad_0 (
    .DVDD(VDD),
    .DVSS(VSS),
    .VDD(VDD)
  );
  GF_NI_DVSS user1_vssa_pad_1 (
    .DVDD(VDD),
    .DVSS(VSS),
    .VDD(VDD)
  );
  GF_NI_DVSS user1_vssd_pad (
    .DVDD(VDD),
    .DVSS(VSS),
    .VDD(VDD)
  );
  GF_NI_COR user2_corner (
    .DVDD(VDD),
    .DVSS(VSS),
    .VDD(VDD),
    .VSS(VSS)
  );
  GF_NI_DVDD user2_vccd_pad (
    .DVDD(VDD),
    .DVSS(VSS),
    .VSS(VSS)
  );
  GF_NI_DVDD user2_vdda_pad (
    .DVDD(VDD),
    .DVSS(VSS),
    .VSS(VSS)
  );
  GF_NI_DVSS user2_vssa_pad (
    .DVDD(VDD),
    .DVSS(VSS),
    .VDD(VDD)
  );
  GF_NI_DVSS user2_vssd_pad (
    .DVDD(VDD),
    .DVSS(VSS),
    .VDD(VDD)
  );
endmodule
