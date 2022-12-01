/* Gate level verilog for gpio_defaults_block */

module gpio_defaults_block_087(VDD, VSS, gpio_defaults);
   input VDD;
   input VSS;
   output [9:0] gpio_defaults;

   wire \gpio_defaults_low[0] ;
   wire \gpio_defaults_low[1] ;
   wire \gpio_defaults_low[2] ;
   wire \gpio_defaults_low[3] ;
   wire \gpio_defaults_low[4] ;
   wire \gpio_defaults_low[5] ;
   wire \gpio_defaults_low[6] ;
   wire \gpio_defaults_low[7] ;
   wire \gpio_defaults_low[8] ;
   wire \gpio_defaults_low[9] ;
   wire \gpio_defaults_high[0] ;
   wire \gpio_defaults_high[1] ;
   wire \gpio_defaults_high[2] ;
   wire \gpio_defaults_high[3] ;
   wire \gpio_defaults_high[4] ;
   wire \gpio_defaults_high[5] ;
   wire \gpio_defaults_high[6] ;
   wire \gpio_defaults_high[7] ;
   wire \gpio_defaults_high[8] ;
   wire \gpio_defaults_high[9] ;

   /* 7 endcaps */
   gf180mcu_fd_sc_mcu7t5v0__endcap ENDCAP_0 (.VDD(VDD), .VSS(VSS));
   gf180mcu_fd_sc_mcu7t5v0__endcap ENDCAP_1 (.VDD(VDD), .VSS(VSS));
   gf180mcu_fd_sc_mcu7t5v0__endcap ENDCAP_2 (.VDD(VDD), .VSS(VSS));
   gf180mcu_fd_sc_mcu7t5v0__endcap ENDCAP_3 (.VDD(VDD), .VSS(VSS));
   gf180mcu_fd_sc_mcu7t5v0__endcap ENDCAP_4 (.VDD(VDD), .VSS(VSS));
   gf180mcu_fd_sc_mcu7t5v0__endcap ENDCAP_5 (.VDD(VDD), .VSS(VSS));
   gf180mcu_fd_sc_mcu7t5v0__endcap ENDCAP_6 (.VDD(VDD), .VSS(VSS));

   /* 5 fillties */
   gf180mcu_fd_sc_mcu7t5v0__filltie FILLTIE_0 (.VDD(VDD), .VSS(VSS));
   gf180mcu_fd_sc_mcu7t5v0__filltie FILLTIE_1 (.VDD(VDD), .VSS(VSS));
   gf180mcu_fd_sc_mcu7t5v0__filltie FILLTIE_2 (.VDD(VDD), .VSS(VSS));
   gf180mcu_fd_sc_mcu7t5v0__filltie FILLTIE_3 (.VDD(VDD), .VSS(VSS));
   gf180mcu_fd_sc_mcu7t5v0__filltie FILLTIE_4 (.VDD(VDD), .VSS(VSS));

   /* 8 fillcap_4s */
   gf180mcu_fd_sc_mcu7t5v0__fillcap_4 FILLCAP_4_0 (.VDD(VDD),
		.VSS(VSS), .VPW(VSS), .VNW(VDD));
   gf180mcu_fd_sc_mcu7t5v0__fillcap_4 FILLCAP_4_1 (.VDD(VDD),
		.VSS(VSS), .VPW(VSS), .VNW(VDD));
   gf180mcu_fd_sc_mcu7t5v0__fillcap_4 FILLCAP_4_2 (.VDD(VDD),
		.VSS(VSS), .VPW(VSS), .VNW(VDD));
   gf180mcu_fd_sc_mcu7t5v0__fillcap_4 FILLCAP_4_3 (.VDD(VDD),
		.VSS(VSS), .VPW(VSS), .VNW(VDD));
   gf180mcu_fd_sc_mcu7t5v0__fillcap_4 FILLCAP_4_4 (.VDD(VDD),
		.VSS(VSS), .VPW(VSS), .VNW(VDD));
   gf180mcu_fd_sc_mcu7t5v0__fillcap_4 FILLCAP_4_5 (.VDD(VDD),
		.VSS(VSS), .VPW(VSS), .VNW(VDD));
   gf180mcu_fd_sc_mcu7t5v0__fillcap_4 FILLCAP_4_6 (.VDD(VDD),
		.VSS(VSS), .VPW(VSS), .VNW(VDD));
   gf180mcu_fd_sc_mcu7t5v0__fillcap_4 FILLCAP_4_7 (.VDD(VDD),
		.VSS(VSS), .VPW(VSS), .VNW(VDD));

   /* 10 tiehs */

   gf180mcu_fd_sc_mcu7t5v0__tieh \gpio_default_value_one[0]  (
	.VDD(VDD), .VSS(VSS), .VPW(VSS), .VNW(VDD),
	.Z(\gpio_defaults_high[0] )
   );
   gf180mcu_fd_sc_mcu7t5v0__tieh \gpio_default_value_one[1]  (
	.VDD(VDD), .VSS(VSS), .VPW(VSS), .VNW(VDD),
	.Z(\gpio_defaults_high[1] )
   );
   gf180mcu_fd_sc_mcu7t5v0__tieh \gpio_default_value_one[2]  (
	.VDD(VDD), .VSS(VSS), .VPW(VSS), .VNW(VDD),
	.Z(\gpio_defaults_high[2] )
   );
   gf180mcu_fd_sc_mcu7t5v0__tieh \gpio_default_value_one[3]  (
	.VDD(VDD), .VSS(VSS), .VPW(VSS), .VNW(VDD),
	.Z(\gpio_defaults_high[3] )
   );
   gf180mcu_fd_sc_mcu7t5v0__tieh \gpio_default_value_one[4]  (
	.VDD(VDD), .VSS(VSS), .VPW(VSS), .VNW(VDD),
	.Z(\gpio_defaults_high[4] )
   );
   gf180mcu_fd_sc_mcu7t5v0__tieh \gpio_default_value_one[5]  (
	.VDD(VDD), .VSS(VSS), .VPW(VSS), .VNW(VDD),
	.Z(\gpio_defaults_high[5] )
   );
   gf180mcu_fd_sc_mcu7t5v0__tieh \gpio_default_value_one[6]  (
	.VDD(VDD), .VSS(VSS), .VPW(VSS), .VNW(VDD),
	.Z(\gpio_defaults_high[6] )
   );
   gf180mcu_fd_sc_mcu7t5v0__tieh \gpio_default_value_one[7]  (
	.VDD(VDD), .VSS(VSS), .VPW(VSS), .VNW(VDD),
	.Z(\gpio_defaults_high[7] )
   );
   gf180mcu_fd_sc_mcu7t5v0__tieh \gpio_default_value_one[8]  (
	.VDD(VDD), .VSS(VSS), .VPW(VSS), .VNW(VDD),
	.Z(\gpio_defaults_high[8] )
   );
   gf180mcu_fd_sc_mcu7t5v0__tieh \gpio_default_value_one[9]  (
	.VDD(VDD), .VSS(VSS), .VPW(VSS), .VNW(VDD),
	.Z(\gpio_defaults_high[9] )
   );

   /* 10 tiels */

   gf180mcu_fd_sc_mcu7t5v0__tiel \gpio_default_value_zero[0]  (
	.VDD(VDD), .VSS(VSS), .VPW(VSS), .VNW(VDD),
	.ZN(\gpio_defaults_low[0] )
   );
   gf180mcu_fd_sc_mcu7t5v0__tiel \gpio_default_value_zero[1]  (
	.VDD(VDD), .VSS(VSS), .VPW(VSS), .VNW(VDD),
	.ZN(\gpio_defaults_low[1] )
   );
   gf180mcu_fd_sc_mcu7t5v0__tiel \gpio_default_value_zero[2]  (
	.VDD(VDD), .VSS(VSS), .VPW(VSS), .VNW(VDD),
	.ZN(\gpio_defaults_low[2] )
   );
   gf180mcu_fd_sc_mcu7t5v0__tiel \gpio_default_value_zero[3]  (
	.VDD(VDD), .VSS(VSS), .VPW(VSS), .VNW(VDD),
	.ZN(\gpio_defaults_low[3] )
   );
   gf180mcu_fd_sc_mcu7t5v0__tiel \gpio_default_value_zero[4]  (
	.VDD(VDD), .VSS(VSS), .VPW(VSS), .VNW(VDD),
	.ZN(\gpio_defaults_low[4] )
   );
   gf180mcu_fd_sc_mcu7t5v0__tiel \gpio_default_value_zero[5]  (
	.VDD(VDD), .VSS(VSS), .VPW(VSS), .VNW(VDD),
	.ZN(\gpio_defaults_low[5] )
   );
   gf180mcu_fd_sc_mcu7t5v0__tiel \gpio_default_value_zero[6]  (
	.VDD(VDD), .VSS(VSS), .VPW(VSS), .VNW(VDD),
	.ZN(\gpio_defaults_low[6] )
   );
   gf180mcu_fd_sc_mcu7t5v0__tiel \gpio_default_value_zero[7]  (
	.VDD(VDD), .VSS(VSS), .VPW(VSS), .VNW(VDD),
	.ZN(\gpio_defaults_low[7] )
   );
   gf180mcu_fd_sc_mcu7t5v0__tiel \gpio_default_value_zero[8]  (
	.VDD(VDD), .VSS(VSS), .VPW(VSS), .VNW(VDD),
	.ZN(\gpio_defaults_low[8] )
   );
   gf180mcu_fd_sc_mcu7t5v0__tiel \gpio_default_value_zero[9]  (
	.VDD(VDD), .VSS(VSS), .VPW(VSS), .VNW(VDD),
	.ZN(\gpio_defaults_low[9] )
   );
   assign gpio_defaults[0] = \gpio_defaults_high[0] ;
   assign gpio_defaults[1] = \gpio_defaults_high[1] ;
   assign gpio_defaults[2] = \gpio_defaults_high[2] ;
   assign gpio_defaults[3] = \gpio_defaults_low[3] ;
   assign gpio_defaults[4] = \gpio_defaults_low[4] ;
   assign gpio_defaults[5] = \gpio_defaults_low[5] ;
   assign gpio_defaults[6] = \gpio_defaults_low[6] ;
   assign gpio_defaults[7] = \gpio_defaults_high[7] ;
   assign gpio_defaults[8] = \gpio_defaults_low[8] ;
   assign gpio_defaults[9] = \gpio_defaults_low[9] ;
 endmodule
