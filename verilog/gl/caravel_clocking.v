module caravel_clocking (VDD,
    VSS,
    core_clk,
    ext_clk,
    ext_clk_sel,
    ext_reset,
    pll_clk,
    pll_clk90,
    resetb,
    resetb_sync,
    user_clk,
    sel,
    sel2);
 input VDD;
 input VSS;
 output core_clk;
 input ext_clk;
 input ext_clk_sel;
 input ext_reset;
 input pll_clk;
 input pll_clk90;
 input resetb;
 output resetb_sync;
 output user_clk;
 input [2:0] sel;
 input [2:0] sel2;

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
 wire _044_;
 wire _045_;
 wire _046_;
 wire _047_;
 wire _048_;
 wire _049_;
 wire _050_;
 wire _051_;
 wire _052_;
 wire _053_;
 wire _054_;
 wire _055_;
 wire _056_;
 wire _057_;
 wire _058_;
 wire _059_;
 wire _060_;
 wire _061_;
 wire _062_;
 wire _063_;
 wire _064_;
 wire _065_;
 wire _066_;
 wire _067_;
 wire _068_;
 wire _069_;
 wire _070_;
 wire _071_;
 wire _072_;
 wire _073_;
 wire _074_;
 wire _075_;
 wire _076_;
 wire _077_;
 wire _078_;
 wire _079_;
 wire _080_;
 wire _081_;
 wire _082_;
 wire _083_;
 wire _084_;
 wire _085_;
 wire _086_;
 wire _087_;
 wire _088_;
 wire _089_;
 wire _090_;
 wire _091_;
 wire _092_;
 wire _093_;
 wire _094_;
 wire _095_;
 wire _096_;
 wire _097_;
 wire _098_;
 wire _099_;
 wire _100_;
 wire _101_;
 wire _102_;
 wire _103_;
 wire _104_;
 wire _105_;
 wire _106_;
 wire _107_;
 wire _108_;
 wire _109_;
 wire _110_;
 wire _111_;
 wire _112_;
 wire _113_;
 wire _114_;
 wire _115_;
 wire _116_;
 wire _117_;
 wire _118_;
 wire _119_;
 wire _120_;
 wire _121_;
 wire _122_;
 wire _123_;
 wire _124_;
 wire _125_;
 wire _126_;
 wire _127_;
 wire _128_;
 wire _129_;
 wire _130_;
 wire _131_;
 wire _132_;
 wire _133_;
 wire _134_;
 wire _135_;
 wire _136_;
 wire _137_;
 wire _138_;
 wire _139_;
 wire _140_;
 wire _141_;
 wire _142_;
 wire _143_;
 wire _144_;
 wire _145_;
 wire _146_;
 wire _147_;
 wire _148_;
 wire _149_;
 wire _150_;
 wire _151_;
 wire _152_;
 wire _153_;
 wire _154_;
 wire _155_;
 wire _156_;
 wire _157_;
 wire _158_;
 wire _159_;
 wire _160_;
 wire _161_;
 wire _162_;
 wire _163_;
 wire _164_;
 wire _165_;
 wire _166_;
 wire _167_;
 wire _168_;
 wire _169_;
 wire _170_;
 wire _171_;
 wire _172_;
 wire _173_;
 wire _174_;
 wire _175_;
 wire _176_;
 wire _177_;
 wire _178_;
 wire _179_;
 wire _180_;
 wire _181_;
 wire _182_;
 wire _183_;
 wire _184_;
 wire _185_;
 wire _186_;
 wire _187_;
 wire _188_;
 wire _189_;
 wire _190_;
 wire _191_;
 wire _192_;
 wire _193_;
 wire _194_;
 wire _195_;
 wire _196_;
 wire _197_;
 wire _198_;
 wire _199_;
 wire _200_;
 wire _201_;
 wire _202_;
 wire _203_;
 wire _204_;
 wire _205_;
 wire _206_;
 wire _207_;
 wire _208_;
 wire _209_;
 wire _210_;
 wire _211_;
 wire _212_;
 wire _213_;
 wire _214_;
 wire _215_;
 wire _216_;
 wire _217_;
 wire _218_;
 wire \divider.even_0.N[0] ;
 wire \divider.even_0.N[1] ;
 wire \divider.even_0.N[2] ;
 wire \divider.even_0.counter[0] ;
 wire \divider.even_0.counter[1] ;
 wire \divider.even_0.counter[2] ;
 wire \divider.even_0.out_counter ;
 wire \divider.odd_0.counter2[0] ;
 wire \divider.odd_0.counter2[1] ;
 wire \divider.odd_0.counter2[2] ;
 wire \divider.odd_0.counter[0] ;
 wire \divider.odd_0.counter[1] ;
 wire \divider.odd_0.counter[2] ;
 wire \divider.odd_0.initial_begin[0] ;
 wire \divider.odd_0.initial_begin[1] ;
 wire \divider.odd_0.initial_begin[2] ;
 wire \divider.odd_0.old_N[0] ;
 wire \divider.odd_0.old_N[1] ;
 wire \divider.odd_0.old_N[2] ;
 wire \divider.odd_0.out_counter ;
 wire \divider.odd_0.out_counter2 ;
 wire \divider.odd_0.rst_pulse ;
 wire \divider.out ;
 wire \divider.syncNp[0] ;
 wire \divider.syncNp[1] ;
 wire \divider.syncNp[2] ;
 wire \divider2.even_0.N[0] ;
 wire \divider2.even_0.N[1] ;
 wire \divider2.even_0.N[2] ;
 wire \divider2.even_0.counter[0] ;
 wire \divider2.even_0.counter[1] ;
 wire \divider2.even_0.counter[2] ;
 wire \divider2.even_0.out_counter ;
 wire \divider2.odd_0.counter2[0] ;
 wire \divider2.odd_0.counter2[1] ;
 wire \divider2.odd_0.counter2[2] ;
 wire \divider2.odd_0.counter[0] ;
 wire \divider2.odd_0.counter[1] ;
 wire \divider2.odd_0.counter[2] ;
 wire \divider2.odd_0.initial_begin[0] ;
 wire \divider2.odd_0.initial_begin[1] ;
 wire \divider2.odd_0.initial_begin[2] ;
 wire \divider2.odd_0.old_N[0] ;
 wire \divider2.odd_0.old_N[1] ;
 wire \divider2.odd_0.old_N[2] ;
 wire \divider2.odd_0.out_counter ;
 wire \divider2.odd_0.out_counter2 ;
 wire \divider2.odd_0.rst_pulse ;
 wire \divider2.out ;
 wire \divider2.syncNp[0] ;
 wire \divider2.syncNp[1] ;
 wire \divider2.syncNp[2] ;
 wire ext_clk_syncd;
 wire ext_clk_syncd_pre;
 wire net1;
 wire net10;
 wire net11;
 wire net12;
 wire net13;
 wire net14;
 wire net15;
 wire net2;
 wire net3;
 wire net4;
 wire net5;
 wire net6;
 wire net7;
 wire net8;
 wire net9;
 wire pll_clk_sel;
 wire \reset_delay[0] ;
 wire \reset_delay[1] ;
 wire \reset_delay[2] ;
 wire use_pll_first;
 wire use_pll_second;

 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__221__A1 (.I(net3),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__231__I0 (.I(ext_clk),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__232__I1 (.I(\divider.out ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__234__I (.I(\divider2.even_0.N[0] ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__236__I (.I(\divider2.even_0.N[1] ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__238__A2 (.I(\divider2.even_0.N[1] ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__238__A3 (.I(net4),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__239__A2 (.I(\divider2.even_0.N[1] ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__239__B (.I(\divider2.even_0.N[0] ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__241__A1 (.I(_040_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__263__A2 (.I(_062_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__265__A2 (.I(_064_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__282__A1 (.I(_079_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__285__I (.I(_062_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__294__A1 (.I(_064_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__295__I (.I(_064_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__312__A2 (.I(_062_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__312__B (.I(_064_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__330__A1 (.I(_062_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__340__A1 (.I(_062_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__340__B (.I(_079_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__341__A1 (.I(_079_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__344__A2 (.I(_064_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__345__A1 (.I(_079_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__346__A1 (.I(_079_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__350__I1 (.I(ext_clk),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__350__S (.I(net5),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__353__A1 (.I(_040_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__361__I (.I(\divider2.even_0.N[1] ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__362__A1 (.I(_145_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__364__A1 (.I(_147_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__365__A2 (.I(_144_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__366__A1 (.I(_142_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__376__A2 (.I(_144_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__378__I (.I(_040_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__379__A1 (.I(_161_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__390__A1 (.I(_147_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__398__A1 (.I(\divider2.even_0.N[1] ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__398__A2 (.I(\divider2.even_0.N[0] ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__406__A1 (.I(_147_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__406__A2 (.I(_145_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__406__A3 (.I(_040_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__407__A1 (.I(_145_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__407__A2 (.I(\divider2.even_0.N[0] ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__407__B (.I(_147_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__410__A2 (.I(_142_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__412__A3 (.I(_144_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__416__A2 (.I(_142_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__417__A2 (.I(_144_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__421__A1 (.I(_145_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__422__A2 (.I(_144_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__423__A1 (.I(_142_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__425__A2 (.I(_142_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__435__A1 (.I(_145_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__435__C (.I(_161_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__436__A1 (.I(_161_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__439__A1 (.I(_147_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__440__A1 (.I(_161_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__441__A1 (.I(_161_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__442__A1 (.I(_040_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__445__CLKN (.I(net12),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__445__SETN (.I(net5),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__446__CLKN (.I(net12),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__446__SETN (.I(net5),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__447__CLKN (.I(net12),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__447__SETN (.I(net5),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__448__CLK (.I(net3),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__448__RN (.I(net5),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__449__CLK (.I(net3),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__449__RN (.I(net5),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__450__CLK (.I(net4),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__450__SETN (.I(net5),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__451__CLK (.I(net3),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__451__RN (.I(net5),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__452__CLK (.I(net3),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__453__CLK (.I(net3),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__454__CLK (.I(net3),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__455__CLK (.I(net3),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__455__SETN (.I(net5),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__456__CLK (.I(net3),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__456__RN (.I(net5),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__457__CLKN (.I(net3),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__457__RN (.I(net5),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__458__CLKN (.I(net3),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__458__SETN (.I(net5),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__459__CLKN (.I(net3),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__459__RN (.I(net5),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__460__CLKN (.I(net3),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__460__SETN (.I(net5),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__461__CLKN (.I(net3),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__461__RN (.I(net5),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__462__CLKN (.I(net3),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__462__SETN (.I(net5),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__463__CLKN (.I(net3),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__463__RN (.I(net5),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__464__CLK (.I(net3),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__464__RN (.I(net5),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__465__CLK (.I(net3),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__465__SETN (.I(net5),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__466__CLK (.I(net3),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__466__RN (.I(net5),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__467__CLK (.I(net3),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__467__SETN (.I(net5),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__468__CLK (.I(net3),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__468__RN (.I(net5),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__469__CLK (.I(net3),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__469__RN (.I(net5),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__470__CLK (.I(\divider.out ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__470__RN (.I(net5),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__471__CLK (.I(\divider.out ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__471__SETN (.I(net5),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__472__CLK (.I(\divider.out ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__472__RN (.I(net5),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__473__CLK (.I(\divider.out ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__473__RN (.I(net5),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__474__CLK (.I(\divider.out ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__474__SETN (.I(net5),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__475__CLK (.I(\divider.out ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__475__RN (.I(net5),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__476__CLK (.I(net3),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__477__CLK (.I(net4),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__477__D (.I(\divider2.even_0.N[0] ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__478__CLK (.I(net4),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__478__D (.I(\divider2.even_0.N[1] ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__479__CLK (.I(net4),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__480__CLK (.I(net4),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__480__SETN (.I(net5),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__481__CLK (.I(net4),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__481__RN (.I(net5),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__482__CLKN (.I(net4),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__482__RN (.I(net5),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__483__CLKN (.I(net4),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__483__SETN (.I(net5),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__484__CLKN (.I(net4),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__484__RN (.I(net5),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__485__CLKN (.I(net4),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__485__SETN (.I(net5),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__486__CLKN (.I(net4),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__486__RN (.I(net5),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__487__CLKN (.I(net4),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__487__SETN (.I(net5),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__488__CLKN (.I(net4),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__488__RN (.I(net5),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__489__CLK (.I(net4),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__489__RN (.I(net5),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__490__CLK (.I(net4),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__490__SETN (.I(net5),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__491__CLK (.I(net4),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__491__RN (.I(net5),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__492__CLK (.I(net3),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__492__SETN (.I(net5),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__493__CLK (.I(net4),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__493__SETN (.I(net5),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__494__CLK (.I(net4),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__494__RN (.I(net5),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__495__CLK (.I(net4),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__495__RN (.I(net5),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__496__RN (.I(net5),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__497__SETN (.I(net5),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__498__RN (.I(net5),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__499__RN (.I(net5),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__500__SETN (.I(net5),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__501__RN (.I(net5),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA_input10_I (.I(sel[1]),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA_input11_I (.I(sel[2]),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA_input1_I (.I(ext_clk_sel),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA_input2_I (.I(ext_reset),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA_input3_I (.I(pll_clk),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA_input4_I (.I(pll_clk90),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA_input5_I (.I(resetb),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA_input6_I (.I(sel2[0]),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA_input7_I (.I(sel2[1]),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA_input8_I (.I(sel2[2]),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA_input9_I (.I(sel[0]),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA_output12_I (.I(net12),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie FILLER_0_103 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_0_105 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_32 FILLER_0_112 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_4 FILLER_0_144 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_0_148 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_0_161 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_32 FILLER_0_2 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_0_254 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie FILLER_0_34 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_8 FILLER_0_38 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_4 FILLER_0_46 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie FILLER_0_50 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_0_52 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_8 FILLER_0_55 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_32 FILLER_0_67 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_4 FILLER_0_99 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_10_105 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_10_164 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_10_198 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie FILLER_10_2 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_10_4 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_11_100 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_11_109 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_11_201 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_11_292 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_12_162 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_12_266 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_12_81 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_13_16 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_13_179 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_4 FILLER_13_2 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_13_266 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_13_65 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_14_197 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_4 FILLER_14_2 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_14_264 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie FILLER_14_6 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_14_8 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_1_109 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie FILLER_1_126 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_1_128 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_8 FILLER_1_140 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie FILLER_1_148 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_1_210 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_1_213 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_1_260 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie FILLER_1_91 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_1_93 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_2_10 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_2_109 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_8 FILLER_2_2 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_2_215 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_2_220 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_2_259 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_2_266 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_3_139 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_3_15 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_4 FILLER_3_2 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_3_200 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_3_213 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie FILLER_3_22 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_3_24 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_3_53 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie FILLER_3_6 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_3_8 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_4_159 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_4_192 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie FILLER_4_2 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_4_266 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_5_106 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_5_216 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_5_249 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_5_302 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_5_36 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_5_78 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_6_115 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_6_2 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_6_223 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_6_266 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_6_45 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_8 FILLER_7_15 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_7_164 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_4 FILLER_7_2 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_7_213 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_7_250 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie FILLER_7_6 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_7_8 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_4 FILLER_8_10 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie FILLER_8_14 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_8 FILLER_8_2 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_8_50 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_8_98 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_9_109 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_9_134 (.VDD(VDD),
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
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_30 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_31 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_32 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_33 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_34 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_35 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_36 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_37 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_38 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_39 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_40 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_41 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_42 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_43 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_44 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_45 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_46 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_47 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_48 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_49 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_50 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_51 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_52 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_53 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_54 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_55 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_56 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_57 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_58 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_59 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_60 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_61 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_62 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_63 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_64 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_65 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_66 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_67 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_68 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_69 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_70 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_71 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__or2_1 _220_ (.A1(\divider.even_0.N[1] ),
    .A2(\divider.even_0.N[2] ),
    .Z(_214_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nor2_1 _221_ (.A1(net3),
    .A2(_214_),
    .ZN(_215_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nor2_1 _222_ (.A1(\divider.even_0.N[1] ),
    .A2(\divider.even_0.N[2] ),
    .ZN(_216_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkinv_1 _223_ (.I(\divider.even_0.N[0] ),
    .ZN(_217_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__oai21_1 _224_ (.A1(\divider.even_0.out_counter ),
    .A2(_216_),
    .B(_217_),
    .ZN(_218_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__oai21_1 _225_ (.A1(\divider.even_0.N[1] ),
    .A2(\divider.even_0.N[2] ),
    .B(\divider.even_0.N[0] ),
    .ZN(_033_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 _226_ (.I(_033_),
    .Z(_034_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkinv_1 _227_ (.I(\divider.odd_0.out_counter ),
    .ZN(_035_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__xor2_1 _228_ (.A1(\divider.odd_0.out_counter2 ),
    .A2(_035_),
    .Z(_036_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__oai22_1 _229_ (.A1(_215_),
    .A2(_218_),
    .B1(_034_),
    .B2(_036_),
    .ZN(_037_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__buf_2 _230_ (.I(_037_),
    .Z(\divider.out ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__mux2_2 _231_ (.I0(ext_clk),
    .I1(ext_clk_syncd),
    .S(use_pll_first),
    .Z(_038_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__mux2_2 _232_ (.I0(_038_),
    .I1(\divider.out ),
    .S(use_pll_second),
    .Z(_039_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__buf_2 _233_ (.I(_039_),
    .Z(net12),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 _234_ (.I(\divider2.even_0.N[0] ),
    .Z(_040_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkinv_1 _235_ (.I(\divider2.even_0.N[2] ),
    .ZN(_041_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkinv_1 _236_ (.I(\divider2.even_0.N[1] ),
    .ZN(_042_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__aoi21_1 _237_ (.A1(_041_),
    .A2(_042_),
    .B(\divider2.even_0.out_counter ),
    .ZN(_043_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nor3_1 _238_ (.A1(\divider2.even_0.N[2] ),
    .A2(\divider2.even_0.N[1] ),
    .A3(net4),
    .ZN(_044_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__oai21_1 _239_ (.A1(\divider2.even_0.N[2] ),
    .A2(\divider2.even_0.N[1] ),
    .B(\divider2.even_0.N[0] ),
    .ZN(_045_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__xnor2_1 _240_ (.A1(\divider2.odd_0.out_counter2 ),
    .A2(\divider2.odd_0.out_counter ),
    .ZN(_046_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__oai32_1 _241_ (.A1(_040_),
    .A2(_043_),
    .A3(_044_),
    .B1(_045_),
    .B2(_046_),
    .ZN(_047_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__buf_2 _242_ (.I(_047_),
    .Z(\divider2.out ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__mux2_2 _243_ (.I0(_038_),
    .I1(\divider2.out ),
    .S(use_pll_second),
    .Z(_048_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__buf_2 _244_ (.I(_048_),
    .Z(net14),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkinv_1 _245_ (.I(net1),
    .ZN(pll_clk_sel),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nor2_1 _246_ (.A1(net2),
    .A2(\reset_delay[0] ),
    .ZN(_049_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 _247_ (.I(_049_),
    .Z(net13),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkinv_1 _248_ (.I(\divider2.odd_0.counter[0] ),
    .ZN(_050_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__or4_1 _249_ (.A1(_050_),
    .A2(\divider2.odd_0.counter[1] ),
    .A3(\divider2.odd_0.counter[2] ),
    .A4(_045_),
    .Z(_051_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 _250_ (.I(\divider2.odd_0.rst_pulse ),
    .Z(_052_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__aoi21_1 _251_ (.A1(\divider2.odd_0.out_counter ),
    .A2(_051_),
    .B(_052_),
    .ZN(_053_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__oai21_1 _252_ (.A1(\divider2.odd_0.out_counter ),
    .A2(_051_),
    .B(_053_),
    .ZN(_054_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 _253_ (.I(_054_),
    .Z(_000_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nor2_1 _254_ (.A1(\divider.even_0.counter[2] ),
    .A2(\divider.even_0.counter[1] ),
    .ZN(_055_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nand3_1 _255_ (.A1(_217_),
    .A2(\divider.even_0.counter[0] ),
    .A3(_055_),
    .ZN(_056_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__xnor2_1 _256_ (.A1(\divider.even_0.out_counter ),
    .A2(_056_),
    .ZN(_057_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 _257_ (.I(_057_),
    .Z(_001_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkinv_1 _258_ (.I(\divider.odd_0.rst_pulse ),
    .ZN(_058_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__and2_1 _259_ (.A1(_058_),
    .A2(_033_),
    .Z(_059_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 _260_ (.I(_059_),
    .Z(_060_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkinv_1 _261_ (.I(\divider.odd_0.old_N[0] ),
    .ZN(_061_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__buf_1 _262_ (.I(\divider.even_0.N[1] ),
    .Z(_062_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__xor2_1 _263_ (.A1(\divider.odd_0.old_N[1] ),
    .A2(_062_),
    .Z(_063_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__buf_1 _264_ (.I(\divider.even_0.N[2] ),
    .Z(_064_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__xor2_1 _265_ (.A1(\divider.odd_0.old_N[2] ),
    .A2(_064_),
    .Z(_065_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nor4_1 _266_ (.A1(_061_),
    .A2(_034_),
    .A3(_063_),
    .A4(_065_),
    .ZN(_066_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nor2_1 _267_ (.A1(_060_),
    .A2(_066_),
    .ZN(_067_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 _268_ (.I(_067_),
    .Z(_002_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 _269_ (.I(\divider.odd_0.counter2[0] ),
    .Z(_068_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkinv_1 _270_ (.I(_068_),
    .ZN(_069_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 _271_ (.I(_058_),
    .Z(_070_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__buf_1 _272_ (.I(\divider.even_0.N[0] ),
    .Z(_071_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nor2_1 _273_ (.A1(\divider.odd_0.initial_begin[1] ),
    .A2(\divider.odd_0.initial_begin[2] ),
    .ZN(_072_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nand3_2 _274_ (.A1(_071_),
    .A2(_214_),
    .A3(_072_),
    .ZN(_073_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nand2_1 _275_ (.A1(_070_),
    .A2(_073_),
    .ZN(_074_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nor2_1 _276_ (.A1(\divider.odd_0.counter2[1] ),
    .A2(\divider.odd_0.counter2[2] ),
    .ZN(_075_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 _277_ (.I(\divider.odd_0.rst_pulse ),
    .Z(_076_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nor2_1 _278_ (.A1(_076_),
    .A2(_034_),
    .ZN(_077_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__oai211_1 _279_ (.A1(_069_),
    .A2(_075_),
    .B(_077_),
    .C(_072_),
    .ZN(_078_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 _280_ (.I(_071_),
    .Z(_079_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 _281_ (.I(\divider.odd_0.rst_pulse ),
    .Z(_080_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nand2_1 _282_ (.A1(_079_),
    .A2(_080_),
    .ZN(_081_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__oai211_1 _283_ (.A1(_069_),
    .A2(_074_),
    .B(_078_),
    .C(_081_),
    .ZN(_082_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 _284_ (.I(_082_),
    .Z(_003_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkinv_1 _285_ (.I(_062_),
    .ZN(_083_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__aoi21_1 _286_ (.A1(_068_),
    .A2(_075_),
    .B(_076_),
    .ZN(_084_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__xor2_1 _287_ (.A1(\divider.odd_0.counter2[0] ),
    .A2(\divider.odd_0.counter2[1] ),
    .Z(_085_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__oai22_1 _288_ (.A1(_083_),
    .A2(_084_),
    .B1(_085_),
    .B2(_076_),
    .ZN(_086_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__mux2_2 _289_ (.I0(\divider.odd_0.counter2[1] ),
    .I1(_086_),
    .S(_074_),
    .Z(_087_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 _290_ (.I(_087_),
    .Z(_004_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__or2_1 _291_ (.A1(_068_),
    .A2(\divider.odd_0.counter2[1] ),
    .Z(_088_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 _292_ (.I(_070_),
    .Z(_089_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__oai211_1 _293_ (.A1(_073_),
    .A2(_088_),
    .B(_089_),
    .C(\divider.odd_0.counter2[2] ),
    .ZN(_090_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nand2_1 _294_ (.A1(_064_),
    .A2(_080_),
    .ZN(_091_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkinv_1 _295_ (.I(_064_),
    .ZN(_092_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nand2_1 _296_ (.A1(_092_),
    .A2(_068_),
    .ZN(_093_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nand4_1 _297_ (.A1(_072_),
    .A2(_075_),
    .A3(_077_),
    .A4(_093_),
    .ZN(_094_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nand3_1 _298_ (.A1(_090_),
    .A2(_091_),
    .A3(_094_),
    .ZN(_005_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nand2_1 _299_ (.A1(_068_),
    .A2(_075_),
    .ZN(_095_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__or3_1 _300_ (.A1(\divider.odd_0.out_counter2 ),
    .A2(_073_),
    .A3(_095_),
    .Z(_096_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__oai21_1 _301_ (.A1(_073_),
    .A2(_095_),
    .B(\divider.odd_0.out_counter2 ),
    .ZN(_097_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nand3_1 _302_ (.A1(_089_),
    .A2(_096_),
    .A3(_097_),
    .ZN(_006_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nor3_1 _303_ (.A1(\divider.odd_0.initial_begin[1] ),
    .A2(\divider.odd_0.initial_begin[2] ),
    .A3(_076_),
    .ZN(_098_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__xor2_1 _304_ (.A1(_217_),
    .A2(\divider.even_0.N[1] ),
    .Z(_099_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nand2_1 _305_ (.A1(\divider.odd_0.initial_begin[0] ),
    .A2(_070_),
    .ZN(_100_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__oai21_1 _306_ (.A1(_070_),
    .A2(_099_),
    .B(_100_),
    .ZN(_101_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__oai21_1 _307_ (.A1(_059_),
    .A2(_098_),
    .B(\divider.odd_0.initial_begin[0] ),
    .ZN(_102_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__oai31_1 _308_ (.A1(_059_),
    .A2(_098_),
    .A3(_101_),
    .B(_102_),
    .ZN(_007_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nor2_1 _309_ (.A1(\divider.odd_0.initial_begin[1] ),
    .A2(\divider.odd_0.initial_begin[0] ),
    .ZN(_103_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__and2_1 _310_ (.A1(\divider.odd_0.initial_begin[1] ),
    .A2(\divider.odd_0.initial_begin[0] ),
    .Z(_104_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__oai21_1 _311_ (.A1(_103_),
    .A2(_104_),
    .B(_070_),
    .ZN(_105_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__oai21_1 _312_ (.A1(_071_),
    .A2(_062_),
    .B(_064_),
    .ZN(_106_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__oai211_1 _313_ (.A1(_071_),
    .A2(_214_),
    .B(_106_),
    .C(_076_),
    .ZN(_107_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__and2_1 _314_ (.A1(_105_),
    .A2(_107_),
    .Z(_108_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nand2_1 _315_ (.A1(\divider.odd_0.initial_begin[1] ),
    .A2(_060_),
    .ZN(_109_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__oai31_1 _316_ (.A1(_059_),
    .A2(_098_),
    .A3(_108_),
    .B(_109_),
    .ZN(_008_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nor2_1 _317_ (.A1(\divider.odd_0.initial_begin[2] ),
    .A2(_080_),
    .ZN(_110_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__aoi221_1 _318_ (.A1(_077_),
    .A2(_103_),
    .B1(_106_),
    .B2(_080_),
    .C(_110_),
    .ZN(_111_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 _319_ (.I(_111_),
    .Z(_009_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__buf_1 _320_ (.I(\divider.odd_0.counter[0] ),
    .Z(_112_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nand2_1 _321_ (.A1(_112_),
    .A2(_060_),
    .ZN(_113_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 _322_ (.I(\divider.odd_0.counter[1] ),
    .Z(_114_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__buf_1 _323_ (.I(\divider.odd_0.counter[2] ),
    .Z(_115_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__oai21_1 _324_ (.A1(_114_),
    .A2(_115_),
    .B(_112_),
    .ZN(_116_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nand2_1 _325_ (.A1(_077_),
    .A2(_116_),
    .ZN(_117_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nand3_1 _326_ (.A1(_081_),
    .A2(_113_),
    .A3(_117_),
    .ZN(_010_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkinv_1 _327_ (.I(\divider.odd_0.counter[0] ),
    .ZN(_118_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__oai31_1 _328_ (.A1(_118_),
    .A2(_114_),
    .A3(_115_),
    .B(_089_),
    .ZN(_119_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nor2_1 _329_ (.A1(_112_),
    .A2(\divider.odd_0.counter[1] ),
    .ZN(_120_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__aoi22_1 _330_ (.A1(_062_),
    .A2(_119_),
    .B1(_120_),
    .B2(_089_),
    .ZN(_121_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__oai211_1 _331_ (.A1(_112_),
    .A2(_034_),
    .B(_114_),
    .C(_089_),
    .ZN(_122_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__oai21_1 _332_ (.A1(_060_),
    .A2(_121_),
    .B(_122_),
    .ZN(_123_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 _333_ (.I(_123_),
    .Z(_011_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nand2_1 _334_ (.A1(_115_),
    .A2(_060_),
    .ZN(_124_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__aoi21_1 _335_ (.A1(_092_),
    .A2(_112_),
    .B(_114_),
    .ZN(_125_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nand2_1 _336_ (.A1(_115_),
    .A2(_120_),
    .ZN(_126_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__oai211_1 _337_ (.A1(_115_),
    .A2(_125_),
    .B(_126_),
    .C(_077_),
    .ZN(_127_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nand3_1 _338_ (.A1(_091_),
    .A2(_124_),
    .A3(_127_),
    .ZN(_012_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkinv_1 _339_ (.I(\divider.even_0.counter[0] ),
    .ZN(_128_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__aoi211_1 _340_ (.A1(_062_),
    .A2(_055_),
    .B(_079_),
    .C(_128_),
    .ZN(_129_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__aoi21_1 _341_ (.A1(_079_),
    .A2(_128_),
    .B(_129_),
    .ZN(_130_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 _342_ (.I(_130_),
    .Z(_013_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkinv_1 _343_ (.I(\divider.even_0.counter[2] ),
    .ZN(_131_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__aoi21_1 _344_ (.A1(_131_),
    .A2(_064_),
    .B(_128_),
    .ZN(_132_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__oai21_1 _345_ (.A1(_079_),
    .A2(\divider.even_0.counter[0] ),
    .B(\divider.even_0.counter[1] ),
    .ZN(_133_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__oai31_1 _346_ (.A1(_079_),
    .A2(\divider.even_0.counter[1] ),
    .A3(_132_),
    .B(_133_),
    .ZN(_014_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nor3_1 _347_ (.A1(_071_),
    .A2(\divider.even_0.counter[1] ),
    .A3(\divider.even_0.counter[0] ),
    .ZN(_134_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__xor2_1 _348_ (.A1(\divider.even_0.counter[2] ),
    .A2(_134_),
    .Z(_135_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 _349_ (.I(_135_),
    .Z(_015_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__mux2_2 _350_ (.I0(ext_clk_syncd_pre),
    .I1(ext_clk),
    .S(net5),
    .Z(_136_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__buf_1 _351_ (.I(_136_),
    .Z(_016_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkinv_1 _352_ (.I(\divider2.even_0.counter[0] ),
    .ZN(_137_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nor4_1 _353_ (.A1(_040_),
    .A2(\divider2.even_0.counter[2] ),
    .A3(\divider2.even_0.counter[1] ),
    .A4(_137_),
    .ZN(_138_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__xor2_1 _354_ (.A1(\divider2.even_0.out_counter ),
    .A2(_138_),
    .Z(_139_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 _355_ (.I(_139_),
    .Z(_017_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkinv_1 _356_ (.I(\divider2.odd_0.rst_pulse ),
    .ZN(_140_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__and2_1 _357_ (.A1(_140_),
    .A2(_045_),
    .Z(_141_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 _358_ (.I(_141_),
    .Z(_142_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkinv_1 _359_ (.I(\divider2.odd_0.old_N[0] ),
    .ZN(_143_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 _360_ (.I(_045_),
    .Z(_144_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__buf_1 _361_ (.I(\divider2.even_0.N[1] ),
    .Z(_145_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__xor2_1 _362_ (.A1(_145_),
    .A2(\divider2.odd_0.old_N[1] ),
    .Z(_146_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__buf_1 _363_ (.I(\divider2.even_0.N[2] ),
    .Z(_147_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__xor2_1 _364_ (.A1(_147_),
    .A2(\divider2.odd_0.old_N[2] ),
    .Z(_148_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nor4_1 _365_ (.A1(_143_),
    .A2(_144_),
    .A3(_146_),
    .A4(_148_),
    .ZN(_149_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nor2_1 _366_ (.A1(_142_),
    .A2(_149_),
    .ZN(_150_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 _367_ (.I(_150_),
    .Z(_018_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 _368_ (.I(\divider2.odd_0.counter2[0] ),
    .Z(_151_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkinv_1 _369_ (.I(_151_),
    .ZN(_152_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 _370_ (.I(\divider2.odd_0.initial_begin[1] ),
    .Z(_153_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__or3_1 _371_ (.A1(\divider2.odd_0.initial_begin[2] ),
    .A2(_153_),
    .A3(_045_),
    .Z(_154_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nand2_1 _372_ (.A1(_140_),
    .A2(_154_),
    .ZN(_155_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nor2_1 _373_ (.A1(\divider2.odd_0.counter2[1] ),
    .A2(\divider2.odd_0.counter2[2] ),
    .ZN(_156_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nor2_1 _374_ (.A1(\divider2.odd_0.initial_begin[2] ),
    .A2(_153_),
    .ZN(_157_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 _375_ (.I(\divider2.odd_0.rst_pulse ),
    .Z(_158_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nor2_1 _376_ (.A1(_158_),
    .A2(_144_),
    .ZN(_159_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__oai211_1 _377_ (.A1(_152_),
    .A2(_156_),
    .B(_157_),
    .C(_159_),
    .ZN(_160_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 _378_ (.I(_040_),
    .Z(_161_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nand2_1 _379_ (.A1(_161_),
    .A2(_052_),
    .ZN(_162_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__oai211_1 _380_ (.A1(_152_),
    .A2(_155_),
    .B(_160_),
    .C(_162_),
    .ZN(_163_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 _381_ (.I(_163_),
    .Z(_019_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__aoi21_1 _382_ (.A1(_151_),
    .A2(_156_),
    .B(_158_),
    .ZN(_164_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__xor2_1 _383_ (.A1(\divider2.odd_0.counter2[1] ),
    .A2(\divider2.odd_0.counter2[0] ),
    .Z(_165_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__oai22_1 _384_ (.A1(_042_),
    .A2(_164_),
    .B1(_165_),
    .B2(_052_),
    .ZN(_166_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__mux2_2 _385_ (.I0(\divider2.odd_0.counter2[1] ),
    .I1(_166_),
    .S(_155_),
    .Z(_167_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 _386_ (.I(_167_),
    .Z(_020_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__or2_1 _387_ (.A1(\divider2.odd_0.counter2[1] ),
    .A2(_151_),
    .Z(_168_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 _388_ (.I(_140_),
    .Z(_169_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__oai211_1 _389_ (.A1(_154_),
    .A2(_168_),
    .B(_169_),
    .C(\divider2.odd_0.counter2[2] ),
    .ZN(_170_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nand2_1 _390_ (.A1(_147_),
    .A2(_052_),
    .ZN(_171_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nand2_1 _391_ (.A1(_041_),
    .A2(_151_),
    .ZN(_172_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nand4_1 _392_ (.A1(_159_),
    .A2(_157_),
    .A3(_156_),
    .A4(_172_),
    .ZN(_173_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nand3_1 _393_ (.A1(_170_),
    .A2(_171_),
    .A3(_173_),
    .ZN(_021_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nand2_1 _394_ (.A1(_151_),
    .A2(_156_),
    .ZN(_174_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__or3_1 _395_ (.A1(\divider2.odd_0.out_counter2 ),
    .A2(_154_),
    .A3(_174_),
    .Z(_175_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__oai21_1 _396_ (.A1(_154_),
    .A2(_174_),
    .B(\divider2.odd_0.out_counter2 ),
    .ZN(_176_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nand3_1 _397_ (.A1(_169_),
    .A2(_175_),
    .A3(_176_),
    .ZN(_022_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__xnor2_1 _398_ (.A1(\divider2.even_0.N[1] ),
    .A2(\divider2.even_0.N[0] ),
    .ZN(_177_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nand2_1 _399_ (.A1(_158_),
    .A2(_177_),
    .ZN(_178_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__oai21_1 _400_ (.A1(\divider2.odd_0.initial_begin[0] ),
    .A2(_052_),
    .B(_178_),
    .ZN(_179_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nor3_1 _401_ (.A1(\divider2.odd_0.initial_begin[2] ),
    .A2(_153_),
    .A3(_158_),
    .ZN(_180_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nor2_1 _402_ (.A1(_141_),
    .A2(_180_),
    .ZN(_181_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__mux2_2 _403_ (.I0(\divider2.odd_0.initial_begin[0] ),
    .I1(_179_),
    .S(_181_),
    .Z(_182_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 _404_ (.I(_182_),
    .Z(_023_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__xnor2_1 _405_ (.A1(\divider2.odd_0.initial_begin[1] ),
    .A2(\divider2.odd_0.initial_begin[0] ),
    .ZN(_183_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__or3_1 _406_ (.A1(_147_),
    .A2(_145_),
    .A3(_040_),
    .Z(_184_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__oai21_1 _407_ (.A1(_145_),
    .A2(\divider2.even_0.N[0] ),
    .B(_147_),
    .ZN(_185_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__and2_1 _408_ (.A1(_158_),
    .A2(_185_),
    .Z(_186_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__aoi22_1 _409_ (.A1(_140_),
    .A2(_183_),
    .B1(_184_),
    .B2(_186_),
    .ZN(_187_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nand2_1 _410_ (.A1(_153_),
    .A2(_142_),
    .ZN(_188_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__oai31_1 _411_ (.A1(_141_),
    .A2(_180_),
    .A3(_187_),
    .B(_188_),
    .ZN(_024_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__oai31_1 _412_ (.A1(_153_),
    .A2(\divider2.odd_0.initial_begin[0] ),
    .A3(_144_),
    .B(\divider2.odd_0.initial_begin[2] ),
    .ZN(_189_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__aoi21_1 _413_ (.A1(_169_),
    .A2(_189_),
    .B(_186_),
    .ZN(_190_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 _414_ (.I(_190_),
    .Z(_025_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 _415_ (.I(\divider2.odd_0.counter[0] ),
    .Z(_191_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nand2_1 _416_ (.A1(_191_),
    .A2(_142_),
    .ZN(_192_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__or2_1 _417_ (.A1(_191_),
    .A2(_144_),
    .Z(_193_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nand4_1 _418_ (.A1(_051_),
    .A2(_162_),
    .A3(_192_),
    .A4(_193_),
    .ZN(_026_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__oai31_1 _419_ (.A1(_050_),
    .A2(\divider2.odd_0.counter[1] ),
    .A3(\divider2.odd_0.counter[2] ),
    .B(_140_),
    .ZN(_194_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nor2_1 _420_ (.A1(_191_),
    .A2(\divider2.odd_0.counter[1] ),
    .ZN(_195_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__aoi22_1 _421_ (.A1(_145_),
    .A2(_194_),
    .B1(_195_),
    .B2(_169_),
    .ZN(_196_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__oai211_1 _422_ (.A1(_191_),
    .A2(_144_),
    .B(\divider2.odd_0.counter[1] ),
    .C(_169_),
    .ZN(_197_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__oai21_1 _423_ (.A1(_142_),
    .A2(_196_),
    .B(_197_),
    .ZN(_198_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 _424_ (.I(_198_),
    .Z(_027_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nand2_1 _425_ (.A1(\divider2.odd_0.counter[2] ),
    .A2(_142_),
    .ZN(_199_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__aoi21_1 _426_ (.A1(_041_),
    .A2(_191_),
    .B(\divider2.odd_0.counter[1] ),
    .ZN(_200_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nand2_1 _427_ (.A1(\divider2.odd_0.counter[2] ),
    .A2(_195_),
    .ZN(_201_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__oai211_1 _428_ (.A1(\divider2.odd_0.counter[2] ),
    .A2(_200_),
    .B(_201_),
    .C(_159_),
    .ZN(_202_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nand3_1 _429_ (.A1(_171_),
    .A2(_199_),
    .A3(_202_),
    .ZN(_028_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nor4_1 _430_ (.A1(_118_),
    .A2(_114_),
    .A3(\divider.odd_0.counter[2] ),
    .A4(_034_),
    .ZN(_203_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__aoi21_1 _431_ (.A1(_035_),
    .A2(_203_),
    .B(_080_),
    .ZN(_204_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__oai21_1 _432_ (.A1(_035_),
    .A2(_203_),
    .B(_204_),
    .ZN(_205_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 _433_ (.I(_205_),
    .Z(_029_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nor2_1 _434_ (.A1(\divider2.even_0.counter[2] ),
    .A2(\divider2.even_0.counter[1] ),
    .ZN(_206_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__aoi211_1 _435_ (.A1(_145_),
    .A2(_206_),
    .B(_137_),
    .C(_161_),
    .ZN(_207_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__aoi21_1 _436_ (.A1(_161_),
    .A2(_137_),
    .B(_207_),
    .ZN(_208_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 _437_ (.I(_208_),
    .Z(_030_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkinv_1 _438_ (.I(\divider2.even_0.counter[2] ),
    .ZN(_209_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__aoi21_1 _439_ (.A1(_147_),
    .A2(_209_),
    .B(_137_),
    .ZN(_210_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__oai21_1 _440_ (.A1(_161_),
    .A2(\divider2.even_0.counter[0] ),
    .B(\divider2.even_0.counter[1] ),
    .ZN(_211_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__oai31_1 _441_ (.A1(_161_),
    .A2(\divider2.even_0.counter[1] ),
    .A3(_210_),
    .B(_211_),
    .ZN(_031_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nor3_1 _442_ (.A1(_040_),
    .A2(\divider2.even_0.counter[1] ),
    .A3(\divider2.even_0.counter[0] ),
    .ZN(_212_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__xor2_1 _443_ (.A1(\divider2.even_0.counter[2] ),
    .A2(_212_),
    .Z(_213_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 _444_ (.I(_213_),
    .Z(_032_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__dffnsnq_1 _445_ (.D(\reset_delay[1] ),
    .SETN(net5),
    .CLKN(net12),
    .Q(\reset_delay[0] ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__dffnsnq_1 _446_ (.D(\reset_delay[2] ),
    .SETN(net5),
    .CLKN(net12),
    .Q(\reset_delay[1] ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__dffnsnq_1 _447_ (.D(net15),
    .SETN(net5),
    .CLKN(net12),
    .Q(\reset_delay[2] ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__tiel _447__15 (.ZN(net15),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__dffrnq_1 _448_ (.D(pll_clk_sel),
    .RN(net5),
    .CLK(net3),
    .Q(use_pll_first),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__dffrnq_1 _449_ (.D(use_pll_first),
    .RN(net5),
    .CLK(net3),
    .Q(use_pll_second),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__dffsnq_1 _450_ (.D(_000_),
    .SETN(net5),
    .CLK(net4),
    .Q(\divider2.odd_0.out_counter ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__dffrnq_1 _451_ (.D(ext_clk_syncd_pre),
    .RN(net5),
    .CLK(net3),
    .Q(ext_clk_syncd),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__dffq_1 _452_ (.D(\divider.even_0.N[0] ),
    .CLK(net3),
    .Q(\divider.odd_0.old_N[0] ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__dffq_1 _453_ (.D(\divider.even_0.N[1] ),
    .CLK(net3),
    .Q(\divider.odd_0.old_N[1] ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__dffq_1 _454_ (.D(\divider.even_0.N[2] ),
    .CLK(net3),
    .Q(\divider.odd_0.old_N[2] ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__dffsnq_1 _455_ (.D(_001_),
    .SETN(net5),
    .CLK(net3),
    .Q(\divider.even_0.out_counter ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__dffrnq_1 _456_ (.D(_002_),
    .RN(net5),
    .CLK(net3),
    .Q(\divider.odd_0.rst_pulse ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__dffnrnq_1 _457_ (.D(_003_),
    .RN(net5),
    .CLKN(net3),
    .Q(\divider.odd_0.counter2[0] ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__dffnsnq_1 _458_ (.D(_004_),
    .SETN(net5),
    .CLKN(net3),
    .Q(\divider.odd_0.counter2[1] ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__dffnrnq_1 _459_ (.D(_005_),
    .RN(net5),
    .CLKN(net3),
    .Q(\divider.odd_0.counter2[2] ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__dffnsnq_1 _460_ (.D(_006_),
    .SETN(net5),
    .CLKN(net3),
    .Q(\divider.odd_0.out_counter2 ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__dffnrnq_1 _461_ (.D(_007_),
    .RN(net5),
    .CLKN(net3),
    .Q(\divider.odd_0.initial_begin[0] ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__dffnsnq_1 _462_ (.D(_008_),
    .SETN(net5),
    .CLKN(net3),
    .Q(\divider.odd_0.initial_begin[1] ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__dffnrnq_1 _463_ (.D(_009_),
    .RN(net5),
    .CLKN(net3),
    .Q(\divider.odd_0.initial_begin[2] ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__dffrnq_1 _464_ (.D(_010_),
    .RN(net5),
    .CLK(net3),
    .Q(\divider.odd_0.counter[0] ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__dffsnq_1 _465_ (.D(_011_),
    .SETN(net5),
    .CLK(net3),
    .Q(\divider.odd_0.counter[1] ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__dffrnq_1 _466_ (.D(_012_),
    .RN(net5),
    .CLK(net3),
    .Q(\divider.odd_0.counter[2] ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__dffsnq_1 _467_ (.D(_013_),
    .SETN(net5),
    .CLK(net3),
    .Q(\divider.even_0.counter[0] ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__dffrnq_1 _468_ (.D(_014_),
    .RN(net5),
    .CLK(net3),
    .Q(\divider.even_0.counter[1] ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__dffrnq_1 _469_ (.D(_015_),
    .RN(net5),
    .CLK(net3),
    .Q(\divider.even_0.counter[2] ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__dffrnq_1 _470_ (.D(net9),
    .RN(net5),
    .CLK(\divider.out ),
    .Q(\divider.syncNp[0] ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__dffsnq_1 _471_ (.D(net10),
    .SETN(net5),
    .CLK(\divider.out ),
    .Q(\divider.syncNp[1] ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__dffrnq_1 _472_ (.D(net11),
    .RN(net5),
    .CLK(\divider.out ),
    .Q(\divider.syncNp[2] ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__dffrnq_1 _473_ (.D(\divider.syncNp[0] ),
    .RN(net5),
    .CLK(\divider.out ),
    .Q(\divider.even_0.N[0] ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__dffsnq_1 _474_ (.D(\divider.syncNp[1] ),
    .SETN(net5),
    .CLK(\divider.out ),
    .Q(\divider.even_0.N[1] ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__dffrnq_1 _475_ (.D(\divider.syncNp[2] ),
    .RN(net5),
    .CLK(\divider.out ),
    .Q(\divider.even_0.N[2] ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__dffq_1 _476_ (.D(_016_),
    .CLK(net3),
    .Q(ext_clk_syncd_pre),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__dffq_1 _477_ (.D(\divider2.even_0.N[0] ),
    .CLK(net4),
    .Q(\divider2.odd_0.old_N[0] ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__dffq_1 _478_ (.D(\divider2.even_0.N[1] ),
    .CLK(net4),
    .Q(\divider2.odd_0.old_N[1] ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__dffq_1 _479_ (.D(\divider2.even_0.N[2] ),
    .CLK(net4),
    .Q(\divider2.odd_0.old_N[2] ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__dffsnq_1 _480_ (.D(_017_),
    .SETN(net5),
    .CLK(net4),
    .Q(\divider2.even_0.out_counter ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__dffrnq_1 _481_ (.D(_018_),
    .RN(net5),
    .CLK(net4),
    .Q(\divider2.odd_0.rst_pulse ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__dffnrnq_1 _482_ (.D(_019_),
    .RN(net5),
    .CLKN(net4),
    .Q(\divider2.odd_0.counter2[0] ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__dffnsnq_1 _483_ (.D(_020_),
    .SETN(net5),
    .CLKN(net4),
    .Q(\divider2.odd_0.counter2[1] ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__dffnrnq_1 _484_ (.D(_021_),
    .RN(net5),
    .CLKN(net4),
    .Q(\divider2.odd_0.counter2[2] ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__dffnsnq_1 _485_ (.D(_022_),
    .SETN(net5),
    .CLKN(net4),
    .Q(\divider2.odd_0.out_counter2 ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__dffnrnq_1 _486_ (.D(_023_),
    .RN(net5),
    .CLKN(net4),
    .Q(\divider2.odd_0.initial_begin[0] ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__dffnsnq_1 _487_ (.D(_024_),
    .SETN(net5),
    .CLKN(net4),
    .Q(\divider2.odd_0.initial_begin[1] ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__dffnrnq_1 _488_ (.D(_025_),
    .RN(net5),
    .CLKN(net4),
    .Q(\divider2.odd_0.initial_begin[2] ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__dffrnq_1 _489_ (.D(_026_),
    .RN(net5),
    .CLK(net4),
    .Q(\divider2.odd_0.counter[0] ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__dffsnq_1 _490_ (.D(_027_),
    .SETN(net5),
    .CLK(net4),
    .Q(\divider2.odd_0.counter[1] ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__dffrnq_1 _491_ (.D(_028_),
    .RN(net5),
    .CLK(net4),
    .Q(\divider2.odd_0.counter[2] ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__dffsnq_1 _492_ (.D(_029_),
    .SETN(net5),
    .CLK(net3),
    .Q(\divider.odd_0.out_counter ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__dffsnq_1 _493_ (.D(_030_),
    .SETN(net5),
    .CLK(net4),
    .Q(\divider2.even_0.counter[0] ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__dffrnq_1 _494_ (.D(_031_),
    .RN(net5),
    .CLK(net4),
    .Q(\divider2.even_0.counter[1] ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__dffrnq_1 _495_ (.D(_032_),
    .RN(net5),
    .CLK(net4),
    .Q(\divider2.even_0.counter[2] ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__dffrnq_1 _496_ (.D(net6),
    .RN(net5),
    .CLK(\divider2.out ),
    .Q(\divider2.syncNp[0] ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__dffsnq_1 _497_ (.D(net7),
    .SETN(net5),
    .CLK(\divider2.out ),
    .Q(\divider2.syncNp[1] ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__dffrnq_1 _498_ (.D(net8),
    .RN(net5),
    .CLK(\divider2.out ),
    .Q(\divider2.syncNp[2] ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__dffrnq_1 _499_ (.D(\divider2.syncNp[0] ),
    .RN(net5),
    .CLK(\divider2.out ),
    .Q(\divider2.even_0.N[0] ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__dffsnq_1 _500_ (.D(\divider2.syncNp[1] ),
    .SETN(net5),
    .CLK(\divider2.out ),
    .Q(\divider2.even_0.N[1] ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__dffrnq_1 _501_ (.D(\divider2.syncNp[2] ),
    .RN(net5),
    .CLK(\divider2.out ),
    .Q(\divider2.even_0.N[2] ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 input1 (.I(ext_clk_sel),
    .Z(net1),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 input10 (.I(sel[1]),
    .Z(net10),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 input11 (.I(sel[2]),
    .Z(net11),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 input2 (.I(ext_reset),
    .Z(net2),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_4 input3 (.I(pll_clk),
    .Z(net3),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__buf_3 input4 (.I(pll_clk90),
    .Z(net4),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__buf_12 input5 (.I(resetb),
    .Z(net5),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 input6 (.I(sel2[0]),
    .Z(net6),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 input7 (.I(sel2[1]),
    .Z(net7),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 input8 (.I(sel2[2]),
    .Z(net8),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 input9 (.I(sel[0]),
    .Z(net9),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__buf_1 output12 (.I(net12),
    .Z(core_clk),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__buf_4 output13 (.I(net13),
    .Z(resetb_sync),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__buf_1 output14 (.I(net14),
    .Z(user_clk),
    .VDD(VDD),
    .VSS(VSS));
endmodule
