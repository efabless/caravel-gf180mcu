/* Generated by Yosys 0.22 (git sha1 f109fa3d4c5, gcc 8.3.1 -fPIC -Os) */

module caravel(VSS, VDD, gpio, mprj_io, clock, resetb, flash_csb, flash_clk, flash_io0, flash_io1);
  input VSS;
  input VDD;
  input clock;
  wire clock;
  wire clock_core;
  wire \const_one[0] ;
  wire \const_one[1] ;
  wire \const_zero[0] ;
  wire \const_zero[1] ;
  wire \const_zero[2] ;
  wire \const_zero[3] ;
  wire \const_zero[4] ;
  wire \const_zero[5] ;
  wire \const_zero[6] ;
  wire \const_zero[7] ;
  wire \const_zero[8] ;
  wire \const_zero[9] ;
  inout flash_clk;
  wire flash_clk;
  wire flash_clk_frame;
  wire flash_clk_ie;
  wire flash_clk_oe;
  inout flash_csb;
  wire flash_csb;
  wire flash_csb_frame;
  wire flash_csb_ie;
  wire flash_csb_oe;
  inout flash_io0;
  wire flash_io0;
  wire flash_io0_di;
  wire flash_io0_do;
  wire flash_io0_ie;
  wire flash_io0_oe;
  inout flash_io1;
  wire flash_io1;
  wire flash_io1_di;
  wire flash_io1_do;
  wire flash_io1_ie;
  wire flash_io1_oe;
  inout gpio;
  wire gpio;
  wire \gpio_drive_select_core[0] ;
  wire \gpio_drive_select_core[1] ;
  wire gpio_in_core;
  wire gpio_inenb_core;
  wire gpio_out_core;
  wire gpio_outenb_core;
  wire gpio_pd_select_core;
  wire gpio_pu_select_core;
  wire gpio_schmitt_select_core;
  wire gpio_slew_select_core;
  inout [37:0] mprj_io;
  wire [37:0] mprj_io;
  wire \mprj_io_drive_sel[0] ;
  wire \mprj_io_drive_sel[10] ;
  wire \mprj_io_drive_sel[11] ;
  wire \mprj_io_drive_sel[12] ;
  wire \mprj_io_drive_sel[13] ;
  wire \mprj_io_drive_sel[14] ;
  wire \mprj_io_drive_sel[15] ;
  wire \mprj_io_drive_sel[16] ;
  wire \mprj_io_drive_sel[17] ;
  wire \mprj_io_drive_sel[18] ;
  wire \mprj_io_drive_sel[19] ;
  wire \mprj_io_drive_sel[1] ;
  wire \mprj_io_drive_sel[20] ;
  wire \mprj_io_drive_sel[21] ;
  wire \mprj_io_drive_sel[22] ;
  wire \mprj_io_drive_sel[23] ;
  wire \mprj_io_drive_sel[24] ;
  wire \mprj_io_drive_sel[25] ;
  wire \mprj_io_drive_sel[26] ;
  wire \mprj_io_drive_sel[27] ;
  wire \mprj_io_drive_sel[28] ;
  wire \mprj_io_drive_sel[29] ;
  wire \mprj_io_drive_sel[2] ;
  wire \mprj_io_drive_sel[30] ;
  wire \mprj_io_drive_sel[31] ;
  wire \mprj_io_drive_sel[32] ;
  wire \mprj_io_drive_sel[33] ;
  wire \mprj_io_drive_sel[34] ;
  wire \mprj_io_drive_sel[35] ;
  wire \mprj_io_drive_sel[36] ;
  wire \mprj_io_drive_sel[37] ;
  wire \mprj_io_drive_sel[38] ;
  wire \mprj_io_drive_sel[39] ;
  wire \mprj_io_drive_sel[3] ;
  wire \mprj_io_drive_sel[40] ;
  wire \mprj_io_drive_sel[41] ;
  wire \mprj_io_drive_sel[42] ;
  wire \mprj_io_drive_sel[43] ;
  wire \mprj_io_drive_sel[44] ;
  wire \mprj_io_drive_sel[45] ;
  wire \mprj_io_drive_sel[46] ;
  wire \mprj_io_drive_sel[47] ;
  wire \mprj_io_drive_sel[48] ;
  wire \mprj_io_drive_sel[49] ;
  wire \mprj_io_drive_sel[4] ;
  wire \mprj_io_drive_sel[50] ;
  wire \mprj_io_drive_sel[51] ;
  wire \mprj_io_drive_sel[52] ;
  wire \mprj_io_drive_sel[53] ;
  wire \mprj_io_drive_sel[54] ;
  wire \mprj_io_drive_sel[55] ;
  wire \mprj_io_drive_sel[56] ;
  wire \mprj_io_drive_sel[57] ;
  wire \mprj_io_drive_sel[58] ;
  wire \mprj_io_drive_sel[59] ;
  wire \mprj_io_drive_sel[5] ;
  wire \mprj_io_drive_sel[60] ;
  wire \mprj_io_drive_sel[61] ;
  wire \mprj_io_drive_sel[62] ;
  wire \mprj_io_drive_sel[63] ;
  wire \mprj_io_drive_sel[64] ;
  wire \mprj_io_drive_sel[65] ;
  wire \mprj_io_drive_sel[66] ;
  wire \mprj_io_drive_sel[67] ;
  wire \mprj_io_drive_sel[68] ;
  wire \mprj_io_drive_sel[69] ;
  wire \mprj_io_drive_sel[6] ;
  wire \mprj_io_drive_sel[70] ;
  wire \mprj_io_drive_sel[71] ;
  wire \mprj_io_drive_sel[72] ;
  wire \mprj_io_drive_sel[73] ;
  wire \mprj_io_drive_sel[74] ;
  wire \mprj_io_drive_sel[75] ;
  wire \mprj_io_drive_sel[7] ;
  wire \mprj_io_drive_sel[8] ;
  wire \mprj_io_drive_sel[9] ;
  wire \mprj_io_ie[0] ;
  wire \mprj_io_ie[10] ;
  wire \mprj_io_ie[11] ;
  wire \mprj_io_ie[12] ;
  wire \mprj_io_ie[13] ;
  wire \mprj_io_ie[14] ;
  wire \mprj_io_ie[15] ;
  wire \mprj_io_ie[16] ;
  wire \mprj_io_ie[17] ;
  wire \mprj_io_ie[18] ;
  wire \mprj_io_ie[19] ;
  wire \mprj_io_ie[1] ;
  wire \mprj_io_ie[20] ;
  wire \mprj_io_ie[21] ;
  wire \mprj_io_ie[22] ;
  wire \mprj_io_ie[23] ;
  wire \mprj_io_ie[24] ;
  wire \mprj_io_ie[25] ;
  wire \mprj_io_ie[26] ;
  wire \mprj_io_ie[27] ;
  wire \mprj_io_ie[28] ;
  wire \mprj_io_ie[29] ;
  wire \mprj_io_ie[2] ;
  wire \mprj_io_ie[30] ;
  wire \mprj_io_ie[31] ;
  wire \mprj_io_ie[32] ;
  wire \mprj_io_ie[33] ;
  wire \mprj_io_ie[34] ;
  wire \mprj_io_ie[35] ;
  wire \mprj_io_ie[36] ;
  wire \mprj_io_ie[37] ;
  wire \mprj_io_ie[3] ;
  wire \mprj_io_ie[4] ;
  wire \mprj_io_ie[5] ;
  wire \mprj_io_ie[6] ;
  wire \mprj_io_ie[7] ;
  wire \mprj_io_ie[8] ;
  wire \mprj_io_ie[9] ;
  wire \mprj_io_in[0] ;
  wire \mprj_io_in[10] ;
  wire \mprj_io_in[11] ;
  wire \mprj_io_in[12] ;
  wire \mprj_io_in[13] ;
  wire \mprj_io_in[14] ;
  wire \mprj_io_in[15] ;
  wire \mprj_io_in[16] ;
  wire \mprj_io_in[17] ;
  wire \mprj_io_in[18] ;
  wire \mprj_io_in[19] ;
  wire \mprj_io_in[1] ;
  wire \mprj_io_in[20] ;
  wire \mprj_io_in[21] ;
  wire \mprj_io_in[22] ;
  wire \mprj_io_in[23] ;
  wire \mprj_io_in[24] ;
  wire \mprj_io_in[25] ;
  wire \mprj_io_in[26] ;
  wire \mprj_io_in[27] ;
  wire \mprj_io_in[28] ;
  wire \mprj_io_in[29] ;
  wire \mprj_io_in[2] ;
  wire \mprj_io_in[30] ;
  wire \mprj_io_in[31] ;
  wire \mprj_io_in[32] ;
  wire \mprj_io_in[33] ;
  wire \mprj_io_in[34] ;
  wire \mprj_io_in[35] ;
  wire \mprj_io_in[36] ;
  wire \mprj_io_in[37] ;
  wire \mprj_io_in[3] ;
  wire \mprj_io_in[4] ;
  wire \mprj_io_in[5] ;
  wire \mprj_io_in[6] ;
  wire \mprj_io_in[7] ;
  wire \mprj_io_in[8] ;
  wire \mprj_io_in[9] ;
  wire \mprj_io_oe[0] ;
  wire \mprj_io_oe[10] ;
  wire \mprj_io_oe[11] ;
  wire \mprj_io_oe[12] ;
  wire \mprj_io_oe[13] ;
  wire \mprj_io_oe[14] ;
  wire \mprj_io_oe[15] ;
  wire \mprj_io_oe[16] ;
  wire \mprj_io_oe[17] ;
  wire \mprj_io_oe[18] ;
  wire \mprj_io_oe[19] ;
  wire \mprj_io_oe[1] ;
  wire \mprj_io_oe[20] ;
  wire \mprj_io_oe[21] ;
  wire \mprj_io_oe[22] ;
  wire \mprj_io_oe[23] ;
  wire \mprj_io_oe[24] ;
  wire \mprj_io_oe[25] ;
  wire \mprj_io_oe[26] ;
  wire \mprj_io_oe[27] ;
  wire \mprj_io_oe[28] ;
  wire \mprj_io_oe[29] ;
  wire \mprj_io_oe[2] ;
  wire \mprj_io_oe[30] ;
  wire \mprj_io_oe[31] ;
  wire \mprj_io_oe[32] ;
  wire \mprj_io_oe[33] ;
  wire \mprj_io_oe[34] ;
  wire \mprj_io_oe[35] ;
  wire \mprj_io_oe[36] ;
  wire \mprj_io_oe[37] ;
  wire \mprj_io_oe[3] ;
  wire \mprj_io_oe[4] ;
  wire \mprj_io_oe[5] ;
  wire \mprj_io_oe[6] ;
  wire \mprj_io_oe[7] ;
  wire \mprj_io_oe[8] ;
  wire \mprj_io_oe[9] ;
  wire \mprj_io_out[0] ;
  wire \mprj_io_out[10] ;
  wire \mprj_io_out[11] ;
  wire \mprj_io_out[12] ;
  wire \mprj_io_out[13] ;
  wire \mprj_io_out[14] ;
  wire \mprj_io_out[15] ;
  wire \mprj_io_out[16] ;
  wire \mprj_io_out[17] ;
  wire \mprj_io_out[18] ;
  wire \mprj_io_out[19] ;
  wire \mprj_io_out[1] ;
  wire \mprj_io_out[20] ;
  wire \mprj_io_out[21] ;
  wire \mprj_io_out[22] ;
  wire \mprj_io_out[23] ;
  wire \mprj_io_out[24] ;
  wire \mprj_io_out[25] ;
  wire \mprj_io_out[26] ;
  wire \mprj_io_out[27] ;
  wire \mprj_io_out[28] ;
  wire \mprj_io_out[29] ;
  wire \mprj_io_out[2] ;
  wire \mprj_io_out[30] ;
  wire \mprj_io_out[31] ;
  wire \mprj_io_out[32] ;
  wire \mprj_io_out[33] ;
  wire \mprj_io_out[34] ;
  wire \mprj_io_out[35] ;
  wire \mprj_io_out[36] ;
  wire \mprj_io_out[37] ;
  wire \mprj_io_out[3] ;
  wire \mprj_io_out[4] ;
  wire \mprj_io_out[5] ;
  wire \mprj_io_out[6] ;
  wire \mprj_io_out[7] ;
  wire \mprj_io_out[8] ;
  wire \mprj_io_out[9] ;
  wire \mprj_io_pulldown_sel[0] ;
  wire \mprj_io_pulldown_sel[10] ;
  wire \mprj_io_pulldown_sel[11] ;
  wire \mprj_io_pulldown_sel[12] ;
  wire \mprj_io_pulldown_sel[13] ;
  wire \mprj_io_pulldown_sel[14] ;
  wire \mprj_io_pulldown_sel[15] ;
  wire \mprj_io_pulldown_sel[16] ;
  wire \mprj_io_pulldown_sel[17] ;
  wire \mprj_io_pulldown_sel[18] ;
  wire \mprj_io_pulldown_sel[19] ;
  wire \mprj_io_pulldown_sel[1] ;
  wire \mprj_io_pulldown_sel[20] ;
  wire \mprj_io_pulldown_sel[21] ;
  wire \mprj_io_pulldown_sel[22] ;
  wire \mprj_io_pulldown_sel[23] ;
  wire \mprj_io_pulldown_sel[24] ;
  wire \mprj_io_pulldown_sel[25] ;
  wire \mprj_io_pulldown_sel[26] ;
  wire \mprj_io_pulldown_sel[27] ;
  wire \mprj_io_pulldown_sel[28] ;
  wire \mprj_io_pulldown_sel[29] ;
  wire \mprj_io_pulldown_sel[2] ;
  wire \mprj_io_pulldown_sel[30] ;
  wire \mprj_io_pulldown_sel[31] ;
  wire \mprj_io_pulldown_sel[32] ;
  wire \mprj_io_pulldown_sel[33] ;
  wire \mprj_io_pulldown_sel[34] ;
  wire \mprj_io_pulldown_sel[35] ;
  wire \mprj_io_pulldown_sel[36] ;
  wire \mprj_io_pulldown_sel[37] ;
  wire \mprj_io_pulldown_sel[3] ;
  wire \mprj_io_pulldown_sel[4] ;
  wire \mprj_io_pulldown_sel[5] ;
  wire \mprj_io_pulldown_sel[6] ;
  wire \mprj_io_pulldown_sel[7] ;
  wire \mprj_io_pulldown_sel[8] ;
  wire \mprj_io_pulldown_sel[9] ;
  wire \mprj_io_pullup_sel[0] ;
  wire \mprj_io_pullup_sel[10] ;
  wire \mprj_io_pullup_sel[11] ;
  wire \mprj_io_pullup_sel[12] ;
  wire \mprj_io_pullup_sel[13] ;
  wire \mprj_io_pullup_sel[14] ;
  wire \mprj_io_pullup_sel[15] ;
  wire \mprj_io_pullup_sel[16] ;
  wire \mprj_io_pullup_sel[17] ;
  wire \mprj_io_pullup_sel[18] ;
  wire \mprj_io_pullup_sel[19] ;
  wire \mprj_io_pullup_sel[1] ;
  wire \mprj_io_pullup_sel[20] ;
  wire \mprj_io_pullup_sel[21] ;
  wire \mprj_io_pullup_sel[22] ;
  wire \mprj_io_pullup_sel[23] ;
  wire \mprj_io_pullup_sel[24] ;
  wire \mprj_io_pullup_sel[25] ;
  wire \mprj_io_pullup_sel[26] ;
  wire \mprj_io_pullup_sel[27] ;
  wire \mprj_io_pullup_sel[28] ;
  wire \mprj_io_pullup_sel[29] ;
  wire \mprj_io_pullup_sel[2] ;
  wire \mprj_io_pullup_sel[30] ;
  wire \mprj_io_pullup_sel[31] ;
  wire \mprj_io_pullup_sel[32] ;
  wire \mprj_io_pullup_sel[33] ;
  wire \mprj_io_pullup_sel[34] ;
  wire \mprj_io_pullup_sel[35] ;
  wire \mprj_io_pullup_sel[36] ;
  wire \mprj_io_pullup_sel[37] ;
  wire \mprj_io_pullup_sel[3] ;
  wire \mprj_io_pullup_sel[4] ;
  wire \mprj_io_pullup_sel[5] ;
  wire \mprj_io_pullup_sel[6] ;
  wire \mprj_io_pullup_sel[7] ;
  wire \mprj_io_pullup_sel[8] ;
  wire \mprj_io_pullup_sel[9] ;
  wire \mprj_io_schmitt_sel[0] ;
  wire \mprj_io_schmitt_sel[10] ;
  wire \mprj_io_schmitt_sel[11] ;
  wire \mprj_io_schmitt_sel[12] ;
  wire \mprj_io_schmitt_sel[13] ;
  wire \mprj_io_schmitt_sel[14] ;
  wire \mprj_io_schmitt_sel[15] ;
  wire \mprj_io_schmitt_sel[16] ;
  wire \mprj_io_schmitt_sel[17] ;
  wire \mprj_io_schmitt_sel[18] ;
  wire \mprj_io_schmitt_sel[19] ;
  wire \mprj_io_schmitt_sel[1] ;
  wire \mprj_io_schmitt_sel[20] ;
  wire \mprj_io_schmitt_sel[21] ;
  wire \mprj_io_schmitt_sel[22] ;
  wire \mprj_io_schmitt_sel[23] ;
  wire \mprj_io_schmitt_sel[24] ;
  wire \mprj_io_schmitt_sel[25] ;
  wire \mprj_io_schmitt_sel[26] ;
  wire \mprj_io_schmitt_sel[27] ;
  wire \mprj_io_schmitt_sel[28] ;
  wire \mprj_io_schmitt_sel[29] ;
  wire \mprj_io_schmitt_sel[2] ;
  wire \mprj_io_schmitt_sel[30] ;
  wire \mprj_io_schmitt_sel[31] ;
  wire \mprj_io_schmitt_sel[32] ;
  wire \mprj_io_schmitt_sel[33] ;
  wire \mprj_io_schmitt_sel[34] ;
  wire \mprj_io_schmitt_sel[35] ;
  wire \mprj_io_schmitt_sel[36] ;
  wire \mprj_io_schmitt_sel[37] ;
  wire \mprj_io_schmitt_sel[3] ;
  wire \mprj_io_schmitt_sel[4] ;
  wire \mprj_io_schmitt_sel[5] ;
  wire \mprj_io_schmitt_sel[6] ;
  wire \mprj_io_schmitt_sel[7] ;
  wire \mprj_io_schmitt_sel[8] ;
  wire \mprj_io_schmitt_sel[9] ;
  wire \mprj_io_slew_sel[0] ;
  wire \mprj_io_slew_sel[10] ;
  wire \mprj_io_slew_sel[11] ;
  wire \mprj_io_slew_sel[12] ;
  wire \mprj_io_slew_sel[13] ;
  wire \mprj_io_slew_sel[14] ;
  wire \mprj_io_slew_sel[15] ;
  wire \mprj_io_slew_sel[16] ;
  wire \mprj_io_slew_sel[17] ;
  wire \mprj_io_slew_sel[18] ;
  wire \mprj_io_slew_sel[19] ;
  wire \mprj_io_slew_sel[1] ;
  wire \mprj_io_slew_sel[20] ;
  wire \mprj_io_slew_sel[21] ;
  wire \mprj_io_slew_sel[22] ;
  wire \mprj_io_slew_sel[23] ;
  wire \mprj_io_slew_sel[24] ;
  wire \mprj_io_slew_sel[25] ;
  wire \mprj_io_slew_sel[26] ;
  wire \mprj_io_slew_sel[27] ;
  wire \mprj_io_slew_sel[28] ;
  wire \mprj_io_slew_sel[29] ;
  wire \mprj_io_slew_sel[2] ;
  wire \mprj_io_slew_sel[30] ;
  wire \mprj_io_slew_sel[31] ;
  wire \mprj_io_slew_sel[32] ;
  wire \mprj_io_slew_sel[33] ;
  wire \mprj_io_slew_sel[34] ;
  wire \mprj_io_slew_sel[35] ;
  wire \mprj_io_slew_sel[36] ;
  wire \mprj_io_slew_sel[37] ;
  wire \mprj_io_slew_sel[3] ;
  wire \mprj_io_slew_sel[4] ;
  wire \mprj_io_slew_sel[5] ;
  wire \mprj_io_slew_sel[6] ;
  wire \mprj_io_slew_sel[7] ;
  wire \mprj_io_slew_sel[8] ;
  wire \mprj_io_slew_sel[9] ;
  input resetb;
  wire resetb;
  wire rstb;
  caravel_core chip_core (
    .VDD(VDD),
    .VSS(VSS),
    .clock_core(clock_core),
    .const_one({ \const_one[1] , \const_one[0]  }),
    .const_zero({ \const_zero[9] , \const_zero[8] , \const_zero[7] , \const_zero[6] , \const_zero[5] , \const_zero[4] , \const_zero[3] , \const_zero[2] , \const_zero[1] , \const_zero[0]  }),
    .flash_clk_frame(flash_clk_frame),
    .flash_clk_oe(flash_clk_oe),
    .flash_csb_frame(flash_csb_frame),
    .flash_csb_oe(flash_csb_oe),
    .flash_io0_di(flash_io0_di),
    .flash_io0_do(flash_io0_do),
    .flash_io0_ie(flash_io0_ie),
    .flash_io0_oe(flash_io0_oe),
    .flash_io1_di(flash_io1_di),
    .flash_io1_do(flash_io1_do),
    .flash_io1_ie(flash_io1_ie),
    .flash_io1_oe(flash_io1_oe),
    .gpio_drive_select_core({ \gpio_drive_select_core[1] , \gpio_drive_select_core[0]  }),
    .gpio_in_core(gpio_in_core),
    .gpio_inenb_core(gpio_inenb_core),
    .gpio_out_core(gpio_out_core),
    .gpio_outenb_core(gpio_outenb_core),
    .mprj_io_drive_sel({ \mprj_io_drive_sel[75] , \mprj_io_drive_sel[74] , \mprj_io_drive_sel[73] , \mprj_io_drive_sel[72] , \mprj_io_drive_sel[71] , \mprj_io_drive_sel[70] , \mprj_io_drive_sel[69] , \mprj_io_drive_sel[68] , \mprj_io_drive_sel[67] , \mprj_io_drive_sel[66] , \mprj_io_drive_sel[65] , \mprj_io_drive_sel[64] , \mprj_io_drive_sel[63] , \mprj_io_drive_sel[62] , \mprj_io_drive_sel[61] , \mprj_io_drive_sel[60] , \mprj_io_drive_sel[59] , \mprj_io_drive_sel[58] , \mprj_io_drive_sel[57] , \mprj_io_drive_sel[56] , \mprj_io_drive_sel[55] , \mprj_io_drive_sel[54] , \mprj_io_drive_sel[53] , \mprj_io_drive_sel[52] , \mprj_io_drive_sel[51] , \mprj_io_drive_sel[50] , \mprj_io_drive_sel[49] , \mprj_io_drive_sel[48] , \mprj_io_drive_sel[47] , \mprj_io_drive_sel[46] , \mprj_io_drive_sel[45] , \mprj_io_drive_sel[44] , \mprj_io_drive_sel[43] , \mprj_io_drive_sel[42] , \mprj_io_drive_sel[41] , \mprj_io_drive_sel[40] , \mprj_io_drive_sel[39] , \mprj_io_drive_sel[38] , \mprj_io_drive_sel[37] , \mprj_io_drive_sel[36] , \mprj_io_drive_sel[35] , \mprj_io_drive_sel[34] , \mprj_io_drive_sel[33] , \mprj_io_drive_sel[32] , \mprj_io_drive_sel[31] , \mprj_io_drive_sel[30] , \mprj_io_drive_sel[29] , \mprj_io_drive_sel[28] , \mprj_io_drive_sel[27] , \mprj_io_drive_sel[26] , \mprj_io_drive_sel[25] , \mprj_io_drive_sel[24] , \mprj_io_drive_sel[23] , \mprj_io_drive_sel[22] , \mprj_io_drive_sel[21] , \mprj_io_drive_sel[20] , \mprj_io_drive_sel[19] , \mprj_io_drive_sel[18] , \mprj_io_drive_sel[17] , \mprj_io_drive_sel[16] , \mprj_io_drive_sel[15] , \mprj_io_drive_sel[14] , \mprj_io_drive_sel[13] , \mprj_io_drive_sel[12] , \mprj_io_drive_sel[11] , \mprj_io_drive_sel[10] , \mprj_io_drive_sel[9] , \mprj_io_drive_sel[8] , \mprj_io_drive_sel[7] , \mprj_io_drive_sel[6] , \mprj_io_drive_sel[5] , \mprj_io_drive_sel[4] , \mprj_io_drive_sel[3] , \mprj_io_drive_sel[2] , \mprj_io_drive_sel[1] , \mprj_io_drive_sel[0]  }),
    .mprj_io_ie({ \mprj_io_ie[37] , \mprj_io_ie[36] , \mprj_io_ie[35] , \mprj_io_ie[34] , \mprj_io_ie[33] , \mprj_io_ie[32] , \mprj_io_ie[31] , \mprj_io_ie[30] , \mprj_io_ie[29] , \mprj_io_ie[28] , \mprj_io_ie[27] , \mprj_io_ie[26] , \mprj_io_ie[25] , \mprj_io_ie[24] , \mprj_io_ie[23] , \mprj_io_ie[22] , \mprj_io_ie[21] , \mprj_io_ie[20] , \mprj_io_ie[19] , \mprj_io_ie[18] , \mprj_io_ie[17] , \mprj_io_ie[16] , \mprj_io_ie[15] , \mprj_io_ie[14] , \mprj_io_ie[13] , \mprj_io_ie[12] , \mprj_io_ie[11] , \mprj_io_ie[10] , \mprj_io_ie[9] , \mprj_io_ie[8] , \mprj_io_ie[7] , \mprj_io_ie[6] , \mprj_io_ie[5] , \mprj_io_ie[4] , \mprj_io_ie[3] , \mprj_io_ie[2] , \mprj_io_ie[1] , \mprj_io_ie[0]  }),
    .mprj_io_in({ \mprj_io_in[37] , \mprj_io_in[36] , \mprj_io_in[35] , \mprj_io_in[34] , \mprj_io_in[33] , \mprj_io_in[32] , \mprj_io_in[31] , \mprj_io_in[30] , \mprj_io_in[29] , \mprj_io_in[28] , \mprj_io_in[27] , \mprj_io_in[26] , \mprj_io_in[25] , \mprj_io_in[24] , \mprj_io_in[23] , \mprj_io_in[22] , \mprj_io_in[21] , \mprj_io_in[20] , \mprj_io_in[19] , \mprj_io_in[18] , \mprj_io_in[17] , \mprj_io_in[16] , \mprj_io_in[15] , \mprj_io_in[14] , \mprj_io_in[13] , \mprj_io_in[12] , \mprj_io_in[11] , \mprj_io_in[10] , \mprj_io_in[9] , \mprj_io_in[8] , \mprj_io_in[7] , \mprj_io_in[6] , \mprj_io_in[5] , \mprj_io_in[4] , \mprj_io_in[3] , \mprj_io_in[2] , \mprj_io_in[1] , \mprj_io_in[0]  }),
    .mprj_io_oe({ \mprj_io_oe[37] , \mprj_io_oe[36] , \mprj_io_oe[35] , \mprj_io_oe[34] , \mprj_io_oe[33] , \mprj_io_oe[32] , \mprj_io_oe[31] , \mprj_io_oe[30] , \mprj_io_oe[29] , \mprj_io_oe[28] , \mprj_io_oe[27] , \mprj_io_oe[26] , \mprj_io_oe[25] , \mprj_io_oe[24] , \mprj_io_oe[23] , \mprj_io_oe[22] , \mprj_io_oe[21] , \mprj_io_oe[20] , \mprj_io_oe[19] , \mprj_io_oe[18] , \mprj_io_oe[17] , \mprj_io_oe[16] , \mprj_io_oe[15] , \mprj_io_oe[14] , \mprj_io_oe[13] , \mprj_io_oe[12] , \mprj_io_oe[11] , \mprj_io_oe[10] , \mprj_io_oe[9] , \mprj_io_oe[8] , \mprj_io_oe[7] , \mprj_io_oe[6] , \mprj_io_oe[5] , \mprj_io_oe[4] , \mprj_io_oe[3] , \mprj_io_oe[2] , \mprj_io_oe[1] , \mprj_io_oe[0]  }),
    .mprj_io_out({ \mprj_io_out[37] , \mprj_io_out[36] , \mprj_io_out[35] , \mprj_io_out[34] , \mprj_io_out[33] , \mprj_io_out[32] , \mprj_io_out[31] , \mprj_io_out[30] , \mprj_io_out[29] , \mprj_io_out[28] , \mprj_io_out[27] , \mprj_io_out[26] , \mprj_io_out[25] , \mprj_io_out[24] , \mprj_io_out[23] , \mprj_io_out[22] , \mprj_io_out[21] , \mprj_io_out[20] , \mprj_io_out[19] , \mprj_io_out[18] , \mprj_io_out[17] , \mprj_io_out[16] , \mprj_io_out[15] , \mprj_io_out[14] , \mprj_io_out[13] , \mprj_io_out[12] , \mprj_io_out[11] , \mprj_io_out[10] , \mprj_io_out[9] , \mprj_io_out[8] , \mprj_io_out[7] , \mprj_io_out[6] , \mprj_io_out[5] , \mprj_io_out[4] , \mprj_io_out[3] , \mprj_io_out[2] , \mprj_io_out[1] , \mprj_io_out[0]  }),
    .mprj_io_pulldown_sel({ \mprj_io_pulldown_sel[37] , \mprj_io_pulldown_sel[36] , \mprj_io_pulldown_sel[35] , \mprj_io_pulldown_sel[34] , \mprj_io_pulldown_sel[33] , \mprj_io_pulldown_sel[32] , \mprj_io_pulldown_sel[31] , \mprj_io_pulldown_sel[30] , \mprj_io_pulldown_sel[29] , \mprj_io_pulldown_sel[28] , \mprj_io_pulldown_sel[27] , \mprj_io_pulldown_sel[26] , \mprj_io_pulldown_sel[25] , \mprj_io_pulldown_sel[24] , \mprj_io_pulldown_sel[23] , \mprj_io_pulldown_sel[22] , \mprj_io_pulldown_sel[21] , \mprj_io_pulldown_sel[20] , \mprj_io_pulldown_sel[19] , \mprj_io_pulldown_sel[18] , \mprj_io_pulldown_sel[17] , \mprj_io_pulldown_sel[16] , \mprj_io_pulldown_sel[15] , \mprj_io_pulldown_sel[14] , \mprj_io_pulldown_sel[13] , \mprj_io_pulldown_sel[12] , \mprj_io_pulldown_sel[11] , \mprj_io_pulldown_sel[10] , \mprj_io_pulldown_sel[9] , \mprj_io_pulldown_sel[8] , \mprj_io_pulldown_sel[7] , \mprj_io_pulldown_sel[6] , \mprj_io_pulldown_sel[5] , \mprj_io_pulldown_sel[4] , \mprj_io_pulldown_sel[3] , \mprj_io_pulldown_sel[2] , \mprj_io_pulldown_sel[1] , \mprj_io_pulldown_sel[0]  }),
    .mprj_io_pullup_sel({ \mprj_io_pullup_sel[37] , \mprj_io_pullup_sel[36] , \mprj_io_pullup_sel[35] , \mprj_io_pullup_sel[34] , \mprj_io_pullup_sel[33] , \mprj_io_pullup_sel[32] , \mprj_io_pullup_sel[31] , \mprj_io_pullup_sel[30] , \mprj_io_pullup_sel[29] , \mprj_io_pullup_sel[28] , \mprj_io_pullup_sel[27] , \mprj_io_pullup_sel[26] , \mprj_io_pullup_sel[25] , \mprj_io_pullup_sel[24] , \mprj_io_pullup_sel[23] , \mprj_io_pullup_sel[22] , \mprj_io_pullup_sel[21] , \mprj_io_pullup_sel[20] , \mprj_io_pullup_sel[19] , \mprj_io_pullup_sel[18] , \mprj_io_pullup_sel[17] , \mprj_io_pullup_sel[16] , \mprj_io_pullup_sel[15] , \mprj_io_pullup_sel[14] , \mprj_io_pullup_sel[13] , \mprj_io_pullup_sel[12] , \mprj_io_pullup_sel[11] , \mprj_io_pullup_sel[10] , \mprj_io_pullup_sel[9] , \mprj_io_pullup_sel[8] , \mprj_io_pullup_sel[7] , \mprj_io_pullup_sel[6] , \mprj_io_pullup_sel[5] , \mprj_io_pullup_sel[4] , \mprj_io_pullup_sel[3] , \mprj_io_pullup_sel[2] , \mprj_io_pullup_sel[1] , \mprj_io_pullup_sel[0]  }),
    .mprj_io_schmitt_sel({ \mprj_io_schmitt_sel[37] , \mprj_io_schmitt_sel[36] , \mprj_io_schmitt_sel[35] , \mprj_io_schmitt_sel[34] , \mprj_io_schmitt_sel[33] , \mprj_io_schmitt_sel[32] , \mprj_io_schmitt_sel[31] , \mprj_io_schmitt_sel[30] , \mprj_io_schmitt_sel[29] , \mprj_io_schmitt_sel[28] , \mprj_io_schmitt_sel[27] , \mprj_io_schmitt_sel[26] , \mprj_io_schmitt_sel[25] , \mprj_io_schmitt_sel[24] , \mprj_io_schmitt_sel[23] , \mprj_io_schmitt_sel[22] , \mprj_io_schmitt_sel[21] , \mprj_io_schmitt_sel[20] , \mprj_io_schmitt_sel[19] , \mprj_io_schmitt_sel[18] , \mprj_io_schmitt_sel[17] , \mprj_io_schmitt_sel[16] , \mprj_io_schmitt_sel[15] , \mprj_io_schmitt_sel[14] , \mprj_io_schmitt_sel[13] , \mprj_io_schmitt_sel[12] , \mprj_io_schmitt_sel[11] , \mprj_io_schmitt_sel[10] , \mprj_io_schmitt_sel[9] , \mprj_io_schmitt_sel[8] , \mprj_io_schmitt_sel[7] , \mprj_io_schmitt_sel[6] , \mprj_io_schmitt_sel[5] , \mprj_io_schmitt_sel[4] , \mprj_io_schmitt_sel[3] , \mprj_io_schmitt_sel[2] , \mprj_io_schmitt_sel[1] , \mprj_io_schmitt_sel[0]  }),
    .mprj_io_slew_sel({ \mprj_io_slew_sel[37] , \mprj_io_slew_sel[36] , \mprj_io_slew_sel[35] , \mprj_io_slew_sel[34] , \mprj_io_slew_sel[33] , \mprj_io_slew_sel[32] , \mprj_io_slew_sel[31] , \mprj_io_slew_sel[30] , \mprj_io_slew_sel[29] , \mprj_io_slew_sel[28] , \mprj_io_slew_sel[27] , \mprj_io_slew_sel[26] , \mprj_io_slew_sel[25] , \mprj_io_slew_sel[24] , \mprj_io_slew_sel[23] , \mprj_io_slew_sel[22] , \mprj_io_slew_sel[21] , \mprj_io_slew_sel[20] , \mprj_io_slew_sel[19] , \mprj_io_slew_sel[18] , \mprj_io_slew_sel[17] , \mprj_io_slew_sel[16] , \mprj_io_slew_sel[15] , \mprj_io_slew_sel[14] , \mprj_io_slew_sel[13] , \mprj_io_slew_sel[12] , \mprj_io_slew_sel[11] , \mprj_io_slew_sel[10] , \mprj_io_slew_sel[9] , \mprj_io_slew_sel[8] , \mprj_io_slew_sel[7] , \mprj_io_slew_sel[6] , \mprj_io_slew_sel[5] , \mprj_io_slew_sel[4] , \mprj_io_slew_sel[3] , \mprj_io_slew_sel[2] , \mprj_io_slew_sel[1] , \mprj_io_slew_sel[0]  }),
    .rstb(rstb)
  );
  chip_io padframe (
    .vdd(VDD),
    .vss(VSS),
    .clock(clock),
    .clock_core(clock_core),
    .const_one({ \const_one[1] , \const_one[0]  }),
    .const_zero({ \const_zero[5] , \const_zero[4] , \const_zero[3] , \const_zero[2] , \const_zero[1] , \const_zero[0]  }),
    .flash_clk(flash_clk),
    .flash_clk_core(flash_clk_frame),
    .flash_clk_oe_core(flash_clk_oe),
    .flash_csb(flash_csb),
    .flash_csb_core(flash_csb_frame),
    .flash_csb_oe_core(flash_csb_oe),
    .flash_io0(flash_io0),
    .flash_io0_di_core(flash_io0_di),
    .flash_io0_do_core(flash_io0_do),
    .flash_io0_ie_core(flash_io0_ie),
    .flash_io0_oe_core(flash_io0_oe),
    .flash_io1(flash_io1),
    .flash_io1_di_core(flash_io1_di),
    .flash_io1_do_core(flash_io1_do),
    .flash_io1_ie_core(flash_io1_ie),
    .flash_io1_oe_core(flash_io1_oe),
    .gpio(gpio),
    .gpio_drive_select_core({ \gpio_drive_select_core[1] , \gpio_drive_select_core[0]  }),
    .gpio_in_core(gpio_in_core),
    .gpio_inen_core(gpio_inenb_core),
    .gpio_out_core(gpio_out_core),
    .gpio_outen_core(gpio_outenb_core),
    .gpio_pd_select(\const_zero[8] ),
    .gpio_pu_select(\const_zero[7] ),
    .gpio_schmitt_select(\const_zero[6] ),
    .gpio_slew_select(\const_zero[9] ),
    .mprj_io(mprj_io),
    .mprj_io_drive_sel({ \mprj_io_drive_sel[75] , \mprj_io_drive_sel[74] , \mprj_io_drive_sel[73] , \mprj_io_drive_sel[72] , \mprj_io_drive_sel[71] , \mprj_io_drive_sel[70] , \mprj_io_drive_sel[69] , \mprj_io_drive_sel[68] , \mprj_io_drive_sel[67] , \mprj_io_drive_sel[66] , \mprj_io_drive_sel[65] , \mprj_io_drive_sel[64] , \mprj_io_drive_sel[63] , \mprj_io_drive_sel[62] , \mprj_io_drive_sel[61] , \mprj_io_drive_sel[60] , \mprj_io_drive_sel[59] , \mprj_io_drive_sel[58] , \mprj_io_drive_sel[57] , \mprj_io_drive_sel[56] , \mprj_io_drive_sel[55] , \mprj_io_drive_sel[54] , \mprj_io_drive_sel[53] , \mprj_io_drive_sel[52] , \mprj_io_drive_sel[51] , \mprj_io_drive_sel[50] , \mprj_io_drive_sel[49] , \mprj_io_drive_sel[48] , \mprj_io_drive_sel[47] , \mprj_io_drive_sel[46] , \mprj_io_drive_sel[45] , \mprj_io_drive_sel[44] , \mprj_io_drive_sel[43] , \mprj_io_drive_sel[42] , \mprj_io_drive_sel[41] , \mprj_io_drive_sel[40] , \mprj_io_drive_sel[39] , \mprj_io_drive_sel[38] , \mprj_io_drive_sel[37] , \mprj_io_drive_sel[36] , \mprj_io_drive_sel[35] , \mprj_io_drive_sel[34] , \mprj_io_drive_sel[33] , \mprj_io_drive_sel[32] , \mprj_io_drive_sel[31] , \mprj_io_drive_sel[30] , \mprj_io_drive_sel[29] , \mprj_io_drive_sel[28] , \mprj_io_drive_sel[27] , \mprj_io_drive_sel[26] , \mprj_io_drive_sel[25] , \mprj_io_drive_sel[24] , \mprj_io_drive_sel[23] , \mprj_io_drive_sel[22] , \mprj_io_drive_sel[21] , \mprj_io_drive_sel[20] , \mprj_io_drive_sel[19] , \mprj_io_drive_sel[18] , \mprj_io_drive_sel[17] , \mprj_io_drive_sel[16] , \mprj_io_drive_sel[15] , \mprj_io_drive_sel[14] , \mprj_io_drive_sel[13] , \mprj_io_drive_sel[12] , \mprj_io_drive_sel[11] , \mprj_io_drive_sel[10] , \mprj_io_drive_sel[9] , \mprj_io_drive_sel[8] , \mprj_io_drive_sel[7] , \mprj_io_drive_sel[6] , \mprj_io_drive_sel[5] , \mprj_io_drive_sel[4] , \mprj_io_drive_sel[3] , \mprj_io_drive_sel[2] , \mprj_io_drive_sel[1] , \mprj_io_drive_sel[0]  }),
    .mprj_io_in({ \mprj_io_in[37] , \mprj_io_in[36] , \mprj_io_in[35] , \mprj_io_in[34] , \mprj_io_in[33] , \mprj_io_in[32] , \mprj_io_in[31] , \mprj_io_in[30] , \mprj_io_in[29] , \mprj_io_in[28] , \mprj_io_in[27] , \mprj_io_in[26] , \mprj_io_in[25] , \mprj_io_in[24] , \mprj_io_in[23] , \mprj_io_in[22] , \mprj_io_in[21] , \mprj_io_in[20] , \mprj_io_in[19] , \mprj_io_in[18] , \mprj_io_in[17] , \mprj_io_in[16] , \mprj_io_in[15] , \mprj_io_in[14] , \mprj_io_in[13] , \mprj_io_in[12] , \mprj_io_in[11] , \mprj_io_in[10] , \mprj_io_in[9] , \mprj_io_in[8] , \mprj_io_in[7] , \mprj_io_in[6] , \mprj_io_in[5] , \mprj_io_in[4] , \mprj_io_in[3] , \mprj_io_in[2] , \mprj_io_in[1] , \mprj_io_in[0]  }),
    .mprj_io_inen({ \mprj_io_ie[37] , \mprj_io_ie[36] , \mprj_io_ie[35] , \mprj_io_ie[34] , \mprj_io_ie[33] , \mprj_io_ie[32] , \mprj_io_ie[31] , \mprj_io_ie[30] , \mprj_io_ie[29] , \mprj_io_ie[28] , \mprj_io_ie[27] , \mprj_io_ie[26] , \mprj_io_ie[25] , \mprj_io_ie[24] , \mprj_io_ie[23] , \mprj_io_ie[22] , \mprj_io_ie[21] , \mprj_io_ie[20] , \mprj_io_ie[19] , \mprj_io_ie[18] , \mprj_io_ie[17] , \mprj_io_ie[16] , \mprj_io_ie[15] , \mprj_io_ie[14] , \mprj_io_ie[13] , \mprj_io_ie[12] , \mprj_io_ie[11] , \mprj_io_ie[10] , \mprj_io_ie[9] , \mprj_io_ie[8] , \mprj_io_ie[7] , \mprj_io_ie[6] , \mprj_io_ie[5] , \mprj_io_ie[4] , \mprj_io_ie[3] , \mprj_io_ie[2] , \mprj_io_ie[1] , \mprj_io_ie[0]  }),
    .mprj_io_out({ \mprj_io_out[37] , \mprj_io_out[36] , \mprj_io_out[35] , \mprj_io_out[34] , \mprj_io_out[33] , \mprj_io_out[32] , \mprj_io_out[31] , \mprj_io_out[30] , \mprj_io_out[29] , \mprj_io_out[28] , \mprj_io_out[27] , \mprj_io_out[26] , \mprj_io_out[25] , \mprj_io_out[24] , \mprj_io_out[23] , \mprj_io_out[22] , \mprj_io_out[21] , \mprj_io_out[20] , \mprj_io_out[19] , \mprj_io_out[18] , \mprj_io_out[17] , \mprj_io_out[16] , \mprj_io_out[15] , \mprj_io_out[14] , \mprj_io_out[13] , \mprj_io_out[12] , \mprj_io_out[11] , \mprj_io_out[10] , \mprj_io_out[9] , \mprj_io_out[8] , \mprj_io_out[7] , \mprj_io_out[6] , \mprj_io_out[5] , \mprj_io_out[4] , \mprj_io_out[3] , \mprj_io_out[2] , \mprj_io_out[1] , \mprj_io_out[0]  }),
    .mprj_io_outen({ \mprj_io_oe[37] , \mprj_io_oe[36] , \mprj_io_oe[35] , \mprj_io_oe[34] , \mprj_io_oe[33] , \mprj_io_oe[32] , \mprj_io_oe[31] , \mprj_io_oe[30] , \mprj_io_oe[29] , \mprj_io_oe[28] , \mprj_io_oe[27] , \mprj_io_oe[26] , \mprj_io_oe[25] , \mprj_io_oe[24] , \mprj_io_oe[23] , \mprj_io_oe[22] , \mprj_io_oe[21] , \mprj_io_oe[20] , \mprj_io_oe[19] , \mprj_io_oe[18] , \mprj_io_oe[17] , \mprj_io_oe[16] , \mprj_io_oe[15] , \mprj_io_oe[14] , \mprj_io_oe[13] , \mprj_io_oe[12] , \mprj_io_oe[11] , \mprj_io_oe[10] , \mprj_io_oe[9] , \mprj_io_oe[8] , \mprj_io_oe[7] , \mprj_io_oe[6] , \mprj_io_oe[5] , \mprj_io_oe[4] , \mprj_io_oe[3] , \mprj_io_oe[2] , \mprj_io_oe[1] , \mprj_io_oe[0]  }),
    .mprj_io_pd_select({ \mprj_io_pulldown_sel[37] , \mprj_io_pulldown_sel[36] , \mprj_io_pulldown_sel[35] , \mprj_io_pulldown_sel[34] , \mprj_io_pulldown_sel[33] , \mprj_io_pulldown_sel[32] , \mprj_io_pulldown_sel[31] , \mprj_io_pulldown_sel[30] , \mprj_io_pulldown_sel[29] , \mprj_io_pulldown_sel[28] , \mprj_io_pulldown_sel[27] , \mprj_io_pulldown_sel[26] , \mprj_io_pulldown_sel[25] , \mprj_io_pulldown_sel[24] , \mprj_io_pulldown_sel[23] , \mprj_io_pulldown_sel[22] , \mprj_io_pulldown_sel[21] , \mprj_io_pulldown_sel[20] , \mprj_io_pulldown_sel[19] , \mprj_io_pulldown_sel[18] , \mprj_io_pulldown_sel[17] , \mprj_io_pulldown_sel[16] , \mprj_io_pulldown_sel[15] , \mprj_io_pulldown_sel[14] , \mprj_io_pulldown_sel[13] , \mprj_io_pulldown_sel[12] , \mprj_io_pulldown_sel[11] , \mprj_io_pulldown_sel[10] , \mprj_io_pulldown_sel[9] , \mprj_io_pulldown_sel[8] , \mprj_io_pulldown_sel[7] , \mprj_io_pulldown_sel[6] , \mprj_io_pulldown_sel[5] , \mprj_io_pulldown_sel[4] , \mprj_io_pulldown_sel[3] , \mprj_io_pulldown_sel[2] , \mprj_io_pulldown_sel[1] , \mprj_io_pulldown_sel[0]  }),
    .mprj_io_pu_select({ \mprj_io_pullup_sel[37] , \mprj_io_pullup_sel[36] , \mprj_io_pullup_sel[35] , \mprj_io_pullup_sel[34] , \mprj_io_pullup_sel[33] , \mprj_io_pullup_sel[32] , \mprj_io_pullup_sel[31] , \mprj_io_pullup_sel[30] , \mprj_io_pullup_sel[29] , \mprj_io_pullup_sel[28] , \mprj_io_pullup_sel[27] , \mprj_io_pullup_sel[26] , \mprj_io_pullup_sel[25] , \mprj_io_pullup_sel[24] , \mprj_io_pullup_sel[23] , \mprj_io_pullup_sel[22] , \mprj_io_pullup_sel[21] , \mprj_io_pullup_sel[20] , \mprj_io_pullup_sel[19] , \mprj_io_pullup_sel[18] , \mprj_io_pullup_sel[17] , \mprj_io_pullup_sel[16] , \mprj_io_pullup_sel[15] , \mprj_io_pullup_sel[14] , \mprj_io_pullup_sel[13] , \mprj_io_pullup_sel[12] , \mprj_io_pullup_sel[11] , \mprj_io_pullup_sel[10] , \mprj_io_pullup_sel[9] , \mprj_io_pullup_sel[8] , \mprj_io_pullup_sel[7] , \mprj_io_pullup_sel[6] , \mprj_io_pullup_sel[5] , \mprj_io_pullup_sel[4] , \mprj_io_pullup_sel[3] , \mprj_io_pullup_sel[2] , \mprj_io_pullup_sel[1] , \mprj_io_pullup_sel[0]  }),
    .mprj_io_schmitt_select({ \mprj_io_schmitt_sel[37] , \mprj_io_schmitt_sel[36] , \mprj_io_schmitt_sel[35] , \mprj_io_schmitt_sel[34] , \mprj_io_schmitt_sel[33] , \mprj_io_schmitt_sel[32] , \mprj_io_schmitt_sel[31] , \mprj_io_schmitt_sel[30] , \mprj_io_schmitt_sel[29] , \mprj_io_schmitt_sel[28] , \mprj_io_schmitt_sel[27] , \mprj_io_schmitt_sel[26] , \mprj_io_schmitt_sel[25] , \mprj_io_schmitt_sel[24] , \mprj_io_schmitt_sel[23] , \mprj_io_schmitt_sel[22] , \mprj_io_schmitt_sel[21] , \mprj_io_schmitt_sel[20] , \mprj_io_schmitt_sel[19] , \mprj_io_schmitt_sel[18] , \mprj_io_schmitt_sel[17] , \mprj_io_schmitt_sel[16] , \mprj_io_schmitt_sel[15] , \mprj_io_schmitt_sel[14] , \mprj_io_schmitt_sel[13] , \mprj_io_schmitt_sel[12] , \mprj_io_schmitt_sel[11] , \mprj_io_schmitt_sel[10] , \mprj_io_schmitt_sel[9] , \mprj_io_schmitt_sel[8] , \mprj_io_schmitt_sel[7] , \mprj_io_schmitt_sel[6] , \mprj_io_schmitt_sel[5] , \mprj_io_schmitt_sel[4] , \mprj_io_schmitt_sel[3] , \mprj_io_schmitt_sel[2] , \mprj_io_schmitt_sel[1] , \mprj_io_schmitt_sel[0]  }),
    .mprj_io_slew_select({ \mprj_io_slew_sel[37] , \mprj_io_slew_sel[36] , \mprj_io_slew_sel[35] , \mprj_io_slew_sel[34] , \mprj_io_slew_sel[33] , \mprj_io_slew_sel[32] , \mprj_io_slew_sel[31] , \mprj_io_slew_sel[30] , \mprj_io_slew_sel[29] , \mprj_io_slew_sel[28] , \mprj_io_slew_sel[27] , \mprj_io_slew_sel[26] , \mprj_io_slew_sel[25] , \mprj_io_slew_sel[24] , \mprj_io_slew_sel[23] , \mprj_io_slew_sel[22] , \mprj_io_slew_sel[21] , \mprj_io_slew_sel[20] , \mprj_io_slew_sel[19] , \mprj_io_slew_sel[18] , \mprj_io_slew_sel[17] , \mprj_io_slew_sel[16] , \mprj_io_slew_sel[15] , \mprj_io_slew_sel[14] , \mprj_io_slew_sel[13] , \mprj_io_slew_sel[12] , \mprj_io_slew_sel[11] , \mprj_io_slew_sel[10] , \mprj_io_slew_sel[9] , \mprj_io_slew_sel[8] , \mprj_io_slew_sel[7] , \mprj_io_slew_sel[6] , \mprj_io_slew_sel[5] , \mprj_io_slew_sel[4] , \mprj_io_slew_sel[3] , \mprj_io_slew_sel[2] , \mprj_io_slew_sel[1] , \mprj_io_slew_sel[0]  }),
    .resetb(resetb),
    .resetb_core(rstb)
  );
  user_id_textblock user_id_textblock (
  );
endmodule
