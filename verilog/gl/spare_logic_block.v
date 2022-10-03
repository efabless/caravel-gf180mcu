module spare_logic_block (VDD,
    VSS,
    spare_xib,
    spare_xfq,
    spare_xi,
    spare_xmx,
    spare_xna,
    spare_xno,
    spare_xz);
 input VDD;
 input VSS;
 output spare_xib;
 output [1:0] spare_xfq;
 output [3:0] spare_xi;
 output [1:0] spare_xmx;
 output [1:0] spare_xna;
 output [1:0] spare_xno;
 output [30:0] spare_xz;

 wire net4;
 wire net6;
 wire net8;
 wire net10;
 wire net12;
 wire net14;
 wire net16;
 wire net18;
 wire net20;
 wire net22;
 wire net24;
 wire net26;
 wire net28;
 wire net30;
 wire net32;
 wire net34;
 wire net36;
 wire net38;
 wire net40;
 wire net57;
 wire net58;
 wire net59;
 wire net42;
 wire net60;
 wire net44;
 wire net46;
 wire net48;
 wire net50;
 wire net52;
 wire net54;
 wire net56;
 wire net1;
 wire net11;
 wire net13;
 wire net15;
 wire net17;
 wire net19;
 wire net2;
 wire net21;
 wire net23;
 wire net25;
 wire net27;
 wire net29;
 wire net3;
 wire net31;
 wire net33;
 wire net35;
 wire net37;
 wire net39;
 wire net41;
 wire net43;
 wire net45;
 wire net47;
 wire net49;
 wire net5;
 wire net51;
 wire net53;
 wire net55;
 wire net7;
 wire net9;

 gf180mcu_fd_sc_mcu7t5v0__fillcap_4 FILLER_0_14 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_0_18 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie FILLER_0_2 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie FILLER_0_23 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_4 FILLER_0_29 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie FILLER_0_33 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_4 FILLER_0_37 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_0_41 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie FILLER_0_48 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie FILLER_0_59 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_4 FILLER_0_65 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_0_69 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_4 FILLER_0_76 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie FILLER_0_80 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_0_82 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie FILLER_0_97 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie FILLER_1_2 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_1_4 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_4 FILLER_1_44 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie FILLER_1_52 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie FILLER_1_58 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_1_60 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_4 FILLER_1_65 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie FILLER_1_69 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_4 FILLER_1_77 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie FILLER_1_85 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie FILLER_1_91 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie FILLER_1_97 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie FILLER_2_16 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_4 FILLER_2_22 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie FILLER_2_26 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_2_28 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie FILLER_2_33 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_4 FILLER_2_41 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie FILLER_2_45 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_2_47 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_4 FILLER_2_52 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie FILLER_2_56 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie FILLER_2_97 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie FILLER_3_12 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie FILLER_3_18 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie FILLER_3_24 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie FILLER_3_30 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_32 FILLER_3_36 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie FILLER_3_6 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie FILLER_3_68 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_3_70 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_8 FILLER_3_73 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie FILLER_3_85 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie FILLER_3_91 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie FILLER_3_97 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie FILLER_4_12 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie FILLER_4_18 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_4 FILLER_4_24 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie FILLER_4_32 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_4_34 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_32 FILLER_4_37 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie FILLER_4_6 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_8 FILLER_4_69 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_4 FILLER_4_77 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie FILLER_4_85 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie FILLER_4_91 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie FILLER_4_97 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_4 FILLER_5_12 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_16 FILLER_5_42 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_8 FILLER_5_58 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie FILLER_5_6 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_4 FILLER_5_66 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_5_70 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_4 FILLER_5_83 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie FILLER_5_91 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie FILLER_5_97 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie FILLER_6_11 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_4 FILLER_6_17 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_4 FILLER_6_2 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie FILLER_6_21 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_6_23 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_4 FILLER_6_28 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie FILLER_6_32 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_6_34 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_4 FILLER_6_37 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_16 FILLER_6_47 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_6_6 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_8 FILLER_6_63 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie FILLER_6_75 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_4 FILLER_6_81 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie FILLER_6_89 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_4 FILLER_6_95 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie FILLER_7_13 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_7_2 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie FILLER_7_30 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_8 FILLER_7_36 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie FILLER_7_44 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie FILLER_7_50 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie FILLER_7_56 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_7_58 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie FILLER_7_63 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie FILLER_7_69 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie FILLER_7_7 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie FILLER_7_77 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_4 FILLER_7_83 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie FILLER_7_87 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_7_89 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_4 FILLER_7_94 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_7_98 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_4 FILLER_8_13 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie FILLER_8_17 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie FILLER_8_2 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie FILLER_8_23 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_4 FILLER_8_29 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie FILLER_8_33 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie FILLER_8_41 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_8_43 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_4 FILLER_8_50 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_8_54 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie FILLER_8_59 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie FILLER_8_67 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_8_69 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_4 FILLER_8_76 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie FILLER_8_80 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie FILLER_8_97 (.VDD(VDD),
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
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_2 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_3 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_4 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_5 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_6 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_7 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_8 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_9 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_18 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_19 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_20 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_21 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_22 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_23 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_24 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_25 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_26 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_27 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_28 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_4 output1 (.I(net1),
    .Z(spare_xfq[0]),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_4 output2 (.I(net2),
    .Z(spare_xfq[1]),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__inv_12 spare_logic_biginv (.I(net45),
    .ZN(spare_xib),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__tiel spare_logic_biginv_45 (.ZN(net45),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__tiel spare_logic_block_10 (.ZN(net10),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__tiel spare_logic_block_12 (.ZN(net12),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__tiel spare_logic_block_14 (.ZN(net14),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__tiel spare_logic_block_16 (.ZN(net16),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__tiel spare_logic_block_18 (.ZN(net18),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__tiel spare_logic_block_20 (.ZN(net20),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__tiel spare_logic_block_22 (.ZN(net22),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__tiel spare_logic_block_24 (.ZN(net24),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__tiel spare_logic_block_26 (.ZN(net26),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__tiel spare_logic_block_28 (.ZN(net28),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__tiel spare_logic_block_30 (.ZN(net30),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__tiel spare_logic_block_32 (.ZN(net32),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__tiel spare_logic_block_34 (.ZN(net34),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__tiel spare_logic_block_36 (.ZN(net36),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__tiel spare_logic_block_38 (.ZN(net38),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__tiel spare_logic_block_4 (.ZN(net4),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__tiel spare_logic_block_40 (.ZN(net40),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__tiel spare_logic_block_42 (.ZN(net42),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__tiel spare_logic_block_44 (.ZN(net44),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__tiel spare_logic_block_46 (.ZN(net46),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__tiel spare_logic_block_48 (.ZN(net48),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__tiel spare_logic_block_50 (.ZN(net50),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__tiel spare_logic_block_52 (.ZN(net52),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__tiel spare_logic_block_54 (.ZN(net54),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__tiel spare_logic_block_56 (.ZN(net56),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__tieh spare_logic_block_57 (.Z(net57),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__tieh spare_logic_block_58 (.Z(net58),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__tieh spare_logic_block_59 (.Z(net59),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__tiel spare_logic_block_6 (.ZN(net6),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__tieh spare_logic_block_60 (.Z(net60),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__tiel spare_logic_block_8 (.ZN(net8),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__dffrsnq_1 \spare_logic_flop[0]  (.D(net23),
    .RN(net37),
    .SETN(net33),
    .CLK(net29),
    .Q(net1),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__tiel \spare_logic_flop[0]_23  (.ZN(net23),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__tiel \spare_logic_flop[0]_29  (.ZN(net29),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__tiel \spare_logic_flop[0]_33  (.ZN(net33),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__tiel \spare_logic_flop[0]_37  (.ZN(net37),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__dffrsnq_1 \spare_logic_flop[1]  (.D(net27),
    .RN(net39),
    .SETN(net35),
    .CLK(net31),
    .Q(net2),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__tiel \spare_logic_flop[1]_27  (.ZN(net27),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__tiel \spare_logic_flop[1]_31  (.ZN(net31),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__tiel \spare_logic_flop[1]_35  (.ZN(net35),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__tiel \spare_logic_flop[1]_39  (.ZN(net39),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__inv_2 \spare_logic_inv[0]  (.I(net3),
    .ZN(spare_xi[0]),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__tiel \spare_logic_inv[0]_3  (.ZN(net3),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__inv_2 \spare_logic_inv[1]  (.I(net25),
    .ZN(spare_xi[1]),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__tiel \spare_logic_inv[1]_25  (.ZN(net25),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__inv_2 \spare_logic_inv[2]  (.I(net41),
    .ZN(spare_xi[2]),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__tiel \spare_logic_inv[2]_41  (.ZN(net41),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__inv_2 \spare_logic_inv[3]  (.I(net43),
    .ZN(spare_xi[3]),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__tiel \spare_logic_inv[3]_43  (.ZN(net43),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__mux2_2 \spare_logic_mux[0]  (.I0(net11),
    .I1(net15),
    .S(net19),
    .Z(spare_xmx[0]),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__tiel \spare_logic_mux[0]_11  (.ZN(net11),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__tiel \spare_logic_mux[0]_15  (.ZN(net15),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__tiel \spare_logic_mux[0]_19  (.ZN(net19),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__mux2_2 \spare_logic_mux[1]  (.I0(net13),
    .I1(net17),
    .S(net21),
    .Z(spare_xmx[1]),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__tiel \spare_logic_mux[1]_13  (.ZN(net13),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__tiel \spare_logic_mux[1]_17  (.ZN(net17),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__tiel \spare_logic_mux[1]_21  (.ZN(net21),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nand2_2 \spare_logic_nand[0]  (.A1(net47),
    .A2(net51),
    .ZN(spare_xna[0]),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__tiel \spare_logic_nand[0]_47  (.ZN(net47),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__tiel \spare_logic_nand[0]_51  (.ZN(net51),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nand2_2 \spare_logic_nand[1]  (.A1(net49),
    .A2(net53),
    .ZN(spare_xna[1]),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__tiel \spare_logic_nand[1]_49  (.ZN(net49),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__tiel \spare_logic_nand[1]_53  (.ZN(net53),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nor2_2 \spare_logic_nor[0]  (.A1(net55),
    .A2(net7),
    .ZN(spare_xno[0]),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__tiel \spare_logic_nor[0]_55  (.ZN(net55),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__tiel \spare_logic_nor[0]_7  (.ZN(net7),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nor2_2 \spare_logic_nor[1]  (.A1(net5),
    .A2(net9),
    .ZN(spare_xno[1]),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__tiel \spare_logic_nor[1]_5  (.ZN(net5),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__tiel \spare_logic_nor[1]_9  (.ZN(net9),
    .VDD(VDD),
    .VSS(VSS));
 assign spare_xz[0] = net4;
 assign spare_xz[10] = net6;
 assign spare_xz[11] = net8;
 assign spare_xz[12] = net10;
 assign spare_xz[13] = net12;
 assign spare_xz[14] = net14;
 assign spare_xz[15] = net16;
 assign spare_xz[16] = net18;
 assign spare_xz[17] = net20;
 assign spare_xz[18] = net22;
 assign spare_xz[19] = net24;
 assign spare_xz[1] = net26;
 assign spare_xz[20] = net28;
 assign spare_xz[21] = net30;
 assign spare_xz[22] = net32;
 assign spare_xz[23] = net34;
 assign spare_xz[24] = net36;
 assign spare_xz[25] = net38;
 assign spare_xz[26] = net40;
 assign spare_xz[27] = net57;
 assign spare_xz[28] = net58;
 assign spare_xz[29] = net59;
 assign spare_xz[2] = net42;
 assign spare_xz[30] = net60;
 assign spare_xz[3] = net44;
 assign spare_xz[4] = net46;
 assign spare_xz[5] = net48;
 assign spare_xz[6] = net50;
 assign spare_xz[7] = net52;
 assign spare_xz[8] = net54;
 assign spare_xz[9] = net56;
endmodule
