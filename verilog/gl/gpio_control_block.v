module gpio_control_block (VDD,
    VSS,
    mgmt_gpio_in,
    mgmt_gpio_oeb,
    mgmt_gpio_out,
    one,
    pad_gpio_in,
    pad_gpio_inen,
    pad_gpio_out,
    pad_gpio_outen,
    pad_gpio_pulldown_sel,
    pad_gpio_pullup_sel,
    pad_gpio_schmitt_sel,
    pad_gpio_slew_sel,
    resetn,
    resetn_out,
    serial_clock,
    serial_clock_out,
    serial_data_in,
    serial_data_out,
    serial_load,
    serial_load_out,
    user_gpio_in,
    user_gpio_oeb,
    user_gpio_out,
    zero,
    gpio_defaults,
    pad_gpio_drive_sel);
 input VDD;
 input VSS;
 output mgmt_gpio_in;
 input mgmt_gpio_oeb;
 input mgmt_gpio_out;
 output one;
 input pad_gpio_in;
 output pad_gpio_inen;
 output pad_gpio_out;
 output pad_gpio_outen;
 output pad_gpio_pulldown_sel;
 output pad_gpio_pullup_sel;
 output pad_gpio_schmitt_sel;
 output pad_gpio_slew_sel;
 input resetn;
 output resetn_out;
 input serial_clock;
 output serial_clock_out;
 input serial_data_in;
 output serial_data_out;
 input serial_load;
 output serial_load_out;
 output user_gpio_in;
 input user_gpio_oeb;
 input user_gpio_out;
 output zero;
 input [9:0] gpio_defaults;
 output [1:0] pad_gpio_drive_sel;

 wire _000_;
 wire _001_;
 wire _002_;
 wire _003_;
 wire _004_;
 wire _005_;
 wire _006_;
 wire _007_;
 wire _008_;
 wire _009_;
 wire _010_;
 wire _011_;
 wire _012_;
 wire _013_;
 wire _014_;
 wire _015_;
 wire _016_;
 wire _017_;
 wire _018_;
 wire _019_;
 wire _020_;
 wire _021_;
 wire _022_;
 wire _023_;
 wire _024_;
 wire _025_;
 wire _026_;
 wire _027_;
 wire _028_;
 wire _029_;
 wire _030_;
 wire _031_;
 wire _032_;
 wire _033_;
 wire _034_;
 wire _035_;
 wire _036_;
 wire _037_;
 wire _038_;
 wire _039_;
 wire _040_;
 wire _041_;
 wire _042_;
 wire _043_;
 wire gpio_oe_override;
 wire gpio_outen;
 wire mgmt_ena;
 wire serial_data_post_1;
 wire serial_data_post_2;
 wire serial_data_pre;
 wire \shift_register[0] ;
 wire \shift_register[1] ;
 wire \shift_register[2] ;
 wire \shift_register[3] ;
 wire \shift_register[4] ;
 wire \shift_register[5] ;
 wire \shift_register[6] ;
 wire \shift_register[7] ;
 wire \shift_register[8] ;

 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__045__A2 (.I(mgmt_gpio_oeb),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__047__I (.I(user_gpio_oeb),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__052__I0 (.I(user_gpio_out),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__052__I1 (.I(mgmt_gpio_out),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__056__I (.I(resetn),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__057__A2 (.I(gpio_defaults[0]),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__059__I (.I(resetn),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__061__A2 (.I(gpio_defaults[0]),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__062__A2 (.I(gpio_defaults[1]),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__064__A2 (.I(gpio_defaults[1]),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__065__A2 (.I(gpio_defaults[2]),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__067__A2 (.I(gpio_defaults[2]),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__068__A2 (.I(gpio_defaults[3]),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__070__A2 (.I(gpio_defaults[3]),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__071__A2 (.I(gpio_defaults[5]),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__073__A2 (.I(gpio_defaults[5]),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__074__I (.I(resetn),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__075__A2 (.I(gpio_defaults[4]),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__078__A2 (.I(gpio_defaults[4]),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__079__A2 (.I(gpio_defaults[8]),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__081__A2 (.I(gpio_defaults[8]),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__082__A2 (.I(gpio_defaults[9]),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__084__A2 (.I(gpio_defaults[9]),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__085__A2 (.I(gpio_defaults[7]),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__087__A2 (.I(gpio_defaults[7]),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__088__A2 (.I(gpio_defaults[6]),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__090__A2 (.I(gpio_defaults[6]),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__091__CLK (.I(serial_load),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__092__CLK (.I(serial_load),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__093__CLK (.I(serial_load),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__094__CLK (.I(serial_load),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__095__CLK (.I(serial_load),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__096__CLK (.I(serial_load),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__097__CLK (.I(serial_load),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__098__CLK (.I(serial_load),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__099__CLK (.I(serial_load),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__100__CLK (.I(serial_load),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__101__CLK (.I(serial_clock),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__101__D (.I(serial_data_in),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__101__RN (.I(resetn),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__102__CLK (.I(serial_clock),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__102__RN (.I(resetn),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__103__CLK (.I(serial_clock),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__103__RN (.I(resetn),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__104__CLK (.I(serial_clock),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__104__RN (.I(resetn),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__105__CLK (.I(serial_clock),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__105__RN (.I(resetn),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__106__CLK (.I(serial_clock),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__106__RN (.I(resetn),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__107__CLK (.I(serial_clock),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__107__RN (.I(resetn),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__108__CLK (.I(serial_clock),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__108__RN (.I(resetn),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__109__CLK (.I(serial_clock),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__109__RN (.I(resetn),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__110__CLK (.I(serial_clock),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__110__RN (.I(resetn),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__111__I (.I(pad_gpio_in),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__112__I (.I(resetn),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__113__I (.I(serial_clock),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__114__I (.I(serial_load),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__115__I (.I(pad_gpio_in),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_32 FILLER_0_2 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_4 FILLER_0_34 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie FILLER_0_38 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_0_40 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie FILLER_0_43 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_4 FILLER_10_10 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie FILLER_10_14 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_10_16 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_8 FILLER_10_2 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_10_40 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_4 FILLER_12_18 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_16 FILLER_12_2 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie FILLER_12_22 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_4 FILLER_15_10 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_8 FILLER_15_2 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_4 FILLER_16_10 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_8 FILLER_16_2 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_4 FILLER_17_10 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie FILLER_17_14 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_8 FILLER_17_2 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie FILLER_17_24 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_19_10 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_8 FILLER_19_2 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie FILLER_1_15 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_16 FILLER_1_19 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_4 FILLER_1_2 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_8 FILLER_1_35 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie FILLER_1_43 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie FILLER_1_6 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_1_8 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_4 FILLER_20_10 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie FILLER_20_14 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_8 FILLER_20_2 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_21_18 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_16 FILLER_21_2 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_21_25 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_8 FILLER_22_18 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_16 FILLER_22_2 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_4 FILLER_22_26 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_22_30 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_4 FILLER_23_10 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie FILLER_23_14 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_23_16 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_8 FILLER_23_2 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_16 FILLER_23_23 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie FILLER_24_18 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_16 FILLER_24_2 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_24_20 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_4 FILLER_24_27 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie FILLER_24_31 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_24_33 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_24_40 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_4 FILLER_25_2 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_4 FILLER_27_10 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_8 FILLER_27_2 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_29_40 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie FILLER_2_2 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_2_25 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_4 FILLER_2_32 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_2_4 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_2_40 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie FILLER_2_43 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_32 FILLER_30_2 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie FILLER_30_34 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_30_40 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_8 FILLER_31_18 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_16 FILLER_31_2 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_4 FILLER_31_26 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie FILLER_31_30 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_4 FILLER_32_18 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_16 FILLER_32_2 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie FILLER_32_22 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_32_24 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_33_44 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_4 FILLER_35_2 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_37_36 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_39_36 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_3_44 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_8 FILLER_40_18 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_16 FILLER_40_2 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_32 FILLER_41_2 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_41_40 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_4_40 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie FILLER_4_43 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_4 FILLER_5_40 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_5_44 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_6_40 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie FILLER_6_43 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_32 FILLER_7_2 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_8 FILLER_7_34 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_7_42 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_8 FILLER_8_18 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_16 FILLER_8_2 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie FILLER_8_26 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_4 FILLER_9_2 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_0 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_1 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_10 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_11 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_12 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_13 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_14 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_15 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_16 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_17 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_18 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_19 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_2 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_20 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_21 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_22 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_23 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_24 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_25 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_26 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_27 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_28 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_29 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_3 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_30 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_31 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_32 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_33 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_34 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_35 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_36 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_37 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_38 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_39 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_4 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_40 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_41 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_42 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_43 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_44 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_45 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_46 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_47 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_48 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_49 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_5 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_50 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_51 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_52 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_53 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_54 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_55 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_56 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_57 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_58 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_59 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_6 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_60 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_61 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_62 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_63 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_64 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_65 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_66 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_67 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_68 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_69 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_7 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_70 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_71 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_72 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_73 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_74 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_75 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_76 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_77 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_78 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_79 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_8 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_80 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_81 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_82 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_83 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_9 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_100 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_101 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_102 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_103 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_104 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_105 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_84 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_85 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_86 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_87 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_88 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_89 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_90 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_91 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_92 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_93 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_94 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_95 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_96 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_97 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_98 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_99 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkinv_1 _044_ (.I(gpio_oe_override),
    .ZN(_020_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nand2_1 _045_ (.A1(mgmt_ena),
    .A2(mgmt_gpio_oeb),
    .ZN(_021_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nand2_1 _046_ (.A1(_020_),
    .A2(_021_),
    .ZN(_022_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkinv_1 _047_ (.I(user_gpio_oeb),
    .ZN(_023_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nor2_1 _048_ (.A1(_023_),
    .A2(mgmt_ena),
    .ZN(_024_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkinv_1 _049_ (.I(gpio_outen),
    .ZN(_025_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__oai22_1 _050_ (.A1(_022_),
    .A2(_024_),
    .B1(_020_),
    .B2(_025_),
    .ZN(_026_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__buf_1 _051_ (.I(_026_),
    .Z(pad_gpio_outen),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__mux2_2 _052_ (.I0(user_gpio_out),
    .I1(mgmt_gpio_out),
    .S(mgmt_ena),
    .Z(_027_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__buf_1 _053_ (.I(_027_),
    .Z(pad_gpio_out),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__and2_1 _054_ (.A1(one),
    .A2(serial_data_post_2),
    .Z(_028_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__buf_1 _055_ (.I(_028_),
    .Z(serial_data_out),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 _056_ (.I(resetn),
    .Z(_029_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__or2_1 _057_ (.A1(_029_),
    .A2(gpio_defaults[0]),
    .Z(_030_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__buf_1 _058_ (.I(_030_),
    .Z(_000_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkinv_1 _059_ (.I(resetn),
    .ZN(_031_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__buf_1 _060_ (.I(_031_),
    .Z(_032_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nand2_1 _061_ (.A1(_032_),
    .A2(gpio_defaults[0]),
    .ZN(_001_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__or2_1 _062_ (.A1(_029_),
    .A2(gpio_defaults[1]),
    .Z(_033_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__buf_1 _063_ (.I(_033_),
    .Z(_002_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nand2_1 _064_ (.A1(_032_),
    .A2(gpio_defaults[1]),
    .ZN(_003_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__or2_1 _065_ (.A1(_029_),
    .A2(gpio_defaults[2]),
    .Z(_034_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__buf_1 _066_ (.I(_034_),
    .Z(_004_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nand2_1 _067_ (.A1(_032_),
    .A2(gpio_defaults[2]),
    .ZN(_005_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__or2_1 _068_ (.A1(_029_),
    .A2(gpio_defaults[3]),
    .Z(_035_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__buf_1 _069_ (.I(_035_),
    .Z(_006_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nand2_1 _070_ (.A1(_032_),
    .A2(gpio_defaults[3]),
    .ZN(_007_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__or2_1 _071_ (.A1(_029_),
    .A2(gpio_defaults[5]),
    .Z(_036_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__buf_1 _072_ (.I(_036_),
    .Z(_008_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nand2_1 _073_ (.A1(_032_),
    .A2(gpio_defaults[5]),
    .ZN(_009_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 _074_ (.I(resetn),
    .Z(_037_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__or2_1 _075_ (.A1(_037_),
    .A2(gpio_defaults[4]),
    .Z(_038_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__buf_1 _076_ (.I(_038_),
    .Z(_010_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__buf_1 _077_ (.I(_031_),
    .Z(_039_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nand2_1 _078_ (.A1(_039_),
    .A2(gpio_defaults[4]),
    .ZN(_011_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__or2_1 _079_ (.A1(_037_),
    .A2(gpio_defaults[8]),
    .Z(_040_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__buf_1 _080_ (.I(_040_),
    .Z(_012_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nand2_1 _081_ (.A1(_039_),
    .A2(gpio_defaults[8]),
    .ZN(_013_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__or2_1 _082_ (.A1(_037_),
    .A2(gpio_defaults[9]),
    .Z(_041_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__buf_1 _083_ (.I(_041_),
    .Z(_014_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nand2_1 _084_ (.A1(_039_),
    .A2(gpio_defaults[9]),
    .ZN(_015_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__or2_1 _085_ (.A1(_037_),
    .A2(gpio_defaults[7]),
    .Z(_042_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__buf_1 _086_ (.I(_042_),
    .Z(_016_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nand2_1 _087_ (.A1(_039_),
    .A2(gpio_defaults[7]),
    .ZN(_017_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__or2_1 _088_ (.A1(_037_),
    .A2(gpio_defaults[6]),
    .Z(_043_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__buf_1 _089_ (.I(_043_),
    .Z(_018_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nand2_1 _090_ (.A1(_039_),
    .A2(gpio_defaults[6]),
    .ZN(_019_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__dffrsnq_1 _091_ (.D(\shift_register[0] ),
    .RN(_000_),
    .SETN(_001_),
    .CLK(serial_load),
    .Q(mgmt_ena),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__dffrsnq_1 _092_ (.D(\shift_register[1] ),
    .RN(_002_),
    .SETN(_003_),
    .CLK(serial_load),
    .Q(gpio_oe_override),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__dffrsnq_1 _093_ (.D(\shift_register[2] ),
    .RN(_004_),
    .SETN(_005_),
    .CLK(serial_load),
    .Q(pad_gpio_inen),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__dffrsnq_1 _094_ (.D(\shift_register[3] ),
    .RN(_006_),
    .SETN(_007_),
    .CLK(serial_load),
    .Q(gpio_outen),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__dffrsnq_1 _095_ (.D(\shift_register[5] ),
    .RN(_008_),
    .SETN(_009_),
    .CLK(serial_load),
    .Q(pad_gpio_slew_sel),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__dffrsnq_1 _096_ (.D(\shift_register[4] ),
    .RN(_010_),
    .SETN(_011_),
    .CLK(serial_load),
    .Q(pad_gpio_schmitt_sel),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__dffrsnq_1 _097_ (.D(\shift_register[8] ),
    .RN(_012_),
    .SETN(_013_),
    .CLK(serial_load),
    .Q(pad_gpio_drive_sel[0]),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__dffrsnq_1 _098_ (.D(serial_data_pre),
    .RN(_014_),
    .SETN(_015_),
    .CLK(serial_load),
    .Q(pad_gpio_drive_sel[1]),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__dffrsnq_1 _099_ (.D(\shift_register[7] ),
    .RN(_016_),
    .SETN(_017_),
    .CLK(serial_load),
    .Q(pad_gpio_pullup_sel),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__dffrsnq_1 _100_ (.D(\shift_register[6] ),
    .RN(_018_),
    .SETN(_019_),
    .CLK(serial_load),
    .Q(pad_gpio_pulldown_sel),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__dffrnq_1 _101_ (.D(serial_data_in),
    .RN(resetn),
    .CLK(serial_clock),
    .Q(\shift_register[0] ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__dffrnq_1 _102_ (.D(\shift_register[0] ),
    .RN(resetn),
    .CLK(serial_clock),
    .Q(\shift_register[1] ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__dffrnq_1 _103_ (.D(\shift_register[1] ),
    .RN(resetn),
    .CLK(serial_clock),
    .Q(\shift_register[2] ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__dffrnq_1 _104_ (.D(\shift_register[2] ),
    .RN(resetn),
    .CLK(serial_clock),
    .Q(\shift_register[3] ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__dffrnq_1 _105_ (.D(\shift_register[3] ),
    .RN(resetn),
    .CLK(serial_clock),
    .Q(\shift_register[4] ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__dffrnq_1 _106_ (.D(\shift_register[4] ),
    .RN(resetn),
    .CLK(serial_clock),
    .Q(\shift_register[5] ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__dffrnq_1 _107_ (.D(\shift_register[5] ),
    .RN(resetn),
    .CLK(serial_clock),
    .Q(\shift_register[6] ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__dffrnq_1 _108_ (.D(\shift_register[6] ),
    .RN(resetn),
    .CLK(serial_clock),
    .Q(\shift_register[7] ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__dffrnq_1 _109_ (.D(\shift_register[7] ),
    .RN(resetn),
    .CLK(serial_clock),
    .Q(\shift_register[8] ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__dffrnq_1 _110_ (.D(\shift_register[8] ),
    .RN(resetn),
    .CLK(serial_clock),
    .Q(serial_data_pre),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__buf_1 _111_ (.I(pad_gpio_in),
    .Z(mgmt_gpio_in),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__buf_1 _112_ (.I(resetn),
    .Z(resetn_out),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__buf_1 _113_ (.I(serial_clock),
    .Z(serial_clock_out),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__buf_1 _114_ (.I(serial_load),
    .Z(serial_load_out),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__buf_1 _115_ (.I(pad_gpio_in),
    .Z(user_gpio_in),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__tieh const_source_one (.Z(one),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__tiel const_source_zero (.ZN(zero),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__dlya_2 data_delay_1 (.I(serial_data_pre),
    .Z(serial_data_post_1),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__dlya_2 data_delay_2 (.I(serial_data_post_1),
    .Z(serial_data_post_2),
    .VDD(VDD),
    .VSS(VSS));
endmodule
