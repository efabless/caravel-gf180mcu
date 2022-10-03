module digital_pll (VDD,
    VSS,
    dco,
    enable,
    osc,
    resetb,
    clockp,
    div,
    ext_trim);
 input VDD;
 input VSS;
 input dco;
 input enable;
 input osc;
 input resetb;
 output [1:0] clockp;
 input [4:0] div;
 input [25:0] ext_trim;

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
 wire _219_;
 wire _220_;
 wire _221_;
 wire _222_;
 wire _223_;
 wire _224_;
 wire _225_;
 wire _226_;
 wire _227_;
 wire _228_;
 wire _229_;
 wire _230_;
 wire _231_;
 wire _232_;
 wire _233_;
 wire _234_;
 wire _235_;
 wire _236_;
 wire _237_;
 wire _238_;
 wire _239_;
 wire _240_;
 wire _241_;
 wire _242_;
 wire _243_;
 wire _244_;
 wire _245_;
 wire _246_;
 wire _247_;
 wire _248_;
 wire _249_;
 wire _250_;
 wire _251_;
 wire _252_;
 wire _253_;
 wire _254_;
 wire _255_;
 wire _256_;
 wire _257_;
 wire _258_;
 wire _259_;
 wire _260_;
 wire _261_;
 wire _262_;
 wire _263_;
 wire _264_;
 wire _265_;
 wire _266_;
 wire _267_;
 wire _268_;
 wire _269_;
 wire _270_;
 wire _271_;
 wire _272_;
 wire _273_;
 wire _274_;
 wire _275_;
 wire _276_;
 wire _277_;
 wire _278_;
 wire _279_;
 wire _280_;
 wire _281_;
 wire _282_;
 wire _283_;
 wire _284_;
 wire _285_;
 wire _286_;
 wire _287_;
 wire _288_;
 wire _289_;
 wire _290_;
 wire _291_;
 wire _292_;
 wire _293_;
 wire _294_;
 wire _295_;
 wire _296_;
 wire _297_;
 wire _298_;
 wire _299_;
 wire _300_;
 wire _301_;
 wire _302_;
 wire _303_;
 wire _304_;
 wire _305_;
 wire _306_;
 wire _307_;
 wire _308_;
 wire _309_;
 wire _310_;
 wire _311_;
 wire _312_;
 wire _313_;
 wire _314_;
 wire _315_;
 wire _316_;
 wire _317_;
 wire net1;
 wire net10;
 wire net11;
 wire net12;
 wire net13;
 wire net14;
 wire net15;
 wire net16;
 wire net17;
 wire net18;
 wire net19;
 wire net2;
 wire net20;
 wire net21;
 wire net22;
 wire net23;
 wire net24;
 wire net25;
 wire net26;
 wire net27;
 wire net28;
 wire net29;
 wire net3;
 wire net30;
 wire net31;
 wire net32;
 wire net33;
 wire net34;
 wire net35;
 wire net36;
 wire net37;
 wire net38;
 wire net39;
 wire net4;
 wire net40;
 wire net5;
 wire net6;
 wire net7;
 wire net8;
 wire net9;
 wire \pll_control.clock ;
 wire \pll_control.count0[0] ;
 wire \pll_control.count0[1] ;
 wire \pll_control.count0[2] ;
 wire \pll_control.count0[3] ;
 wire \pll_control.count0[4] ;
 wire \pll_control.count1[0] ;
 wire \pll_control.count1[1] ;
 wire \pll_control.count1[2] ;
 wire \pll_control.count1[3] ;
 wire \pll_control.count1[4] ;
 wire \pll_control.oscbuf[0] ;
 wire \pll_control.oscbuf[1] ;
 wire \pll_control.oscbuf[2] ;
 wire \pll_control.prep[0] ;
 wire \pll_control.prep[1] ;
 wire \pll_control.prep[2] ;
 wire \pll_control.tint[0] ;
 wire \pll_control.tint[1] ;
 wire \pll_control.tint[2] ;
 wire \pll_control.tint[3] ;
 wire \pll_control.tint[4] ;
 wire \pll_control.tval[0] ;
 wire \pll_control.tval[1] ;
 wire \ringosc.c[0] ;
 wire \ringosc.c[1] ;
 wire \ringosc.dstage[0].id.d0 ;
 wire \ringosc.dstage[0].id.d1 ;
 wire \ringosc.dstage[0].id.d2 ;
 wire \ringosc.dstage[0].id.in ;
 wire \ringosc.dstage[0].id.out ;
 wire \ringosc.dstage[0].id.trim0b ;
 wire \ringosc.dstage[0].id.trim1b ;
 wire \ringosc.dstage[0].id.trim[0] ;
 wire \ringosc.dstage[0].id.trim[1] ;
 wire \ringosc.dstage[0].id.ts ;
 wire \ringosc.dstage[10].id.d0 ;
 wire \ringosc.dstage[10].id.d1 ;
 wire \ringosc.dstage[10].id.d2 ;
 wire \ringosc.dstage[10].id.in ;
 wire \ringosc.dstage[10].id.out ;
 wire \ringosc.dstage[10].id.trim0b ;
 wire \ringosc.dstage[10].id.trim1b ;
 wire \ringosc.dstage[10].id.trim[0] ;
 wire \ringosc.dstage[10].id.trim[1] ;
 wire \ringosc.dstage[10].id.ts ;
 wire \ringosc.dstage[11].id.d0 ;
 wire \ringosc.dstage[11].id.d1 ;
 wire \ringosc.dstage[11].id.d2 ;
 wire \ringosc.dstage[11].id.out ;
 wire \ringosc.dstage[11].id.trim0b ;
 wire \ringosc.dstage[11].id.trim1b ;
 wire \ringosc.dstage[11].id.trim[0] ;
 wire \ringosc.dstage[11].id.trim[1] ;
 wire \ringosc.dstage[11].id.ts ;
 wire \ringosc.dstage[1].id.d0 ;
 wire \ringosc.dstage[1].id.d1 ;
 wire \ringosc.dstage[1].id.d2 ;
 wire \ringosc.dstage[1].id.out ;
 wire \ringosc.dstage[1].id.trim0b ;
 wire \ringosc.dstage[1].id.trim1b ;
 wire \ringosc.dstage[1].id.trim[0] ;
 wire \ringosc.dstage[1].id.trim[1] ;
 wire \ringosc.dstage[1].id.ts ;
 wire \ringosc.dstage[2].id.d0 ;
 wire \ringosc.dstage[2].id.d1 ;
 wire \ringosc.dstage[2].id.d2 ;
 wire \ringosc.dstage[2].id.out ;
 wire \ringosc.dstage[2].id.trim0b ;
 wire \ringosc.dstage[2].id.trim1b ;
 wire \ringosc.dstage[2].id.trim[0] ;
 wire \ringosc.dstage[2].id.trim[1] ;
 wire \ringosc.dstage[2].id.ts ;
 wire \ringosc.dstage[3].id.d0 ;
 wire \ringosc.dstage[3].id.d1 ;
 wire \ringosc.dstage[3].id.d2 ;
 wire \ringosc.dstage[3].id.out ;
 wire \ringosc.dstage[3].id.trim0b ;
 wire \ringosc.dstage[3].id.trim1b ;
 wire \ringosc.dstage[3].id.trim[0] ;
 wire \ringosc.dstage[3].id.trim[1] ;
 wire \ringosc.dstage[3].id.ts ;
 wire \ringosc.dstage[4].id.d0 ;
 wire \ringosc.dstage[4].id.d1 ;
 wire \ringosc.dstage[4].id.d2 ;
 wire \ringosc.dstage[4].id.out ;
 wire \ringosc.dstage[4].id.trim0b ;
 wire \ringosc.dstage[4].id.trim1b ;
 wire \ringosc.dstage[4].id.trim[0] ;
 wire \ringosc.dstage[4].id.trim[1] ;
 wire \ringosc.dstage[4].id.ts ;
 wire \ringosc.dstage[5].id.d0 ;
 wire \ringosc.dstage[5].id.d1 ;
 wire \ringosc.dstage[5].id.d2 ;
 wire \ringosc.dstage[5].id.out ;
 wire \ringosc.dstage[5].id.trim0b ;
 wire \ringosc.dstage[5].id.trim1b ;
 wire \ringosc.dstage[5].id.trim[0] ;
 wire \ringosc.dstage[5].id.trim[1] ;
 wire \ringosc.dstage[5].id.ts ;
 wire \ringosc.dstage[6].id.d0 ;
 wire \ringosc.dstage[6].id.d1 ;
 wire \ringosc.dstage[6].id.d2 ;
 wire \ringosc.dstage[6].id.out ;
 wire \ringosc.dstage[6].id.trim0b ;
 wire \ringosc.dstage[6].id.trim1b ;
 wire \ringosc.dstage[6].id.trim[0] ;
 wire \ringosc.dstage[6].id.trim[1] ;
 wire \ringosc.dstage[6].id.ts ;
 wire \ringosc.dstage[7].id.d0 ;
 wire \ringosc.dstage[7].id.d1 ;
 wire \ringosc.dstage[7].id.d2 ;
 wire \ringosc.dstage[7].id.out ;
 wire \ringosc.dstage[7].id.trim0b ;
 wire \ringosc.dstage[7].id.trim1b ;
 wire \ringosc.dstage[7].id.trim[0] ;
 wire \ringosc.dstage[7].id.trim[1] ;
 wire \ringosc.dstage[7].id.ts ;
 wire \ringosc.dstage[8].id.d0 ;
 wire \ringosc.dstage[8].id.d1 ;
 wire \ringosc.dstage[8].id.d2 ;
 wire \ringosc.dstage[8].id.out ;
 wire \ringosc.dstage[8].id.trim0b ;
 wire \ringosc.dstage[8].id.trim1b ;
 wire \ringosc.dstage[8].id.trim[0] ;
 wire \ringosc.dstage[8].id.trim[1] ;
 wire \ringosc.dstage[8].id.ts ;
 wire \ringosc.dstage[9].id.d0 ;
 wire \ringosc.dstage[9].id.d1 ;
 wire \ringosc.dstage[9].id.d2 ;
 wire \ringosc.dstage[9].id.trim0b ;
 wire \ringosc.dstage[9].id.trim1b ;
 wire \ringosc.dstage[9].id.trim[0] ;
 wire \ringosc.dstage[9].id.trim[1] ;
 wire \ringosc.dstage[9].id.ts ;
 wire \ringosc.iss.ctrl0b ;
 wire \ringosc.iss.d0 ;
 wire \ringosc.iss.d1 ;
 wire \ringosc.iss.d2 ;
 wire \ringosc.iss.reset ;
 wire \ringosc.iss.trim1b ;
 wire \ringosc.iss.trim[0] ;
 wire \ringosc.iss.trim[1] ;

 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__335__I (.I(\pll_control.count0[0] ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__336__I0 (.I(\pll_control.count1[0] ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__342__A1 (.I(\pll_control.count0[0] ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__342__A2 (.I(\pll_control.count1[0] ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__344__A1 (.I(\pll_control.count0[0] ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__344__A2 (.I(\pll_control.count1[0] ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__346__A1 (.I(\pll_control.count0[0] ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__346__A2 (.I(\pll_control.count1[0] ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__390__A1 (.I(\pll_control.tint[1] ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__404__A1 (.I(\pll_control.tint[1] ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__412__A1 (.I(\pll_control.tint[1] ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__421__A1 (.I(_133_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__440__I (.I(\pll_control.tint[1] ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__486__I (.I(_189_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__496__A1 (.I(_198_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__499__A1 (.I(_200_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__502__A1 (.I(_198_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__513__A1 (.I(_133_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__514__A1 (.I(_200_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__519__A1 (.I(_198_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__520__A1 (.I(\pll_control.tint[1] ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__524__I (.I(_189_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__529__I (.I(_189_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__547__A1 (.I(_133_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__562__B2 (.I(_252_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__564__A1 (.I(_133_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__568__A1 (.I(_198_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__577__A1 (.I(_200_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__584__B2 (.I(_252_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__590__A1 (.I(_200_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__594__B2 (.I(_252_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__595__A1 (.I(_198_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__599__A1 (.I(_252_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__600__A2 (.I(_252_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__602__A1 (.I(_200_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__604__A1 (.I(_133_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__605__A2 (.I(net25),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__634__I (.I(_189_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__646__I (.I(_189_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__663__CLK (.I(\pll_control.clock ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__664__CLK (.I(\pll_control.clock ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__665__CLK (.I(\pll_control.clock ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__666__CLK (.I(\pll_control.clock ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__667__CLK (.I(\pll_control.clock ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__668__CLK (.I(\pll_control.clock ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__669__CLK (.I(\pll_control.clock ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__670__CLK (.I(\pll_control.clock ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__671__CLK (.I(\pll_control.clock ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__672__CLK (.I(\pll_control.clock ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__673__CLK (.I(\pll_control.clock ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__674__CLK (.I(\pll_control.clock ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__675__CLK (.I(\pll_control.clock ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__676__CLK (.I(\pll_control.clock ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__677__CLK (.I(\pll_control.clock ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__678__CLK (.I(\pll_control.clock ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__679__CLK (.I(\pll_control.clock ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__680__CLK (.I(\pll_control.clock ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__681__CLK (.I(\pll_control.clock ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__682__CLK (.I(\pll_control.clock ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__683__CLK (.I(\pll_control.clock ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__684__CLK (.I(\pll_control.clock ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__685__CLK (.I(\pll_control.clock ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA__686__I (.I(\pll_control.clock ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA_input10_I (.I(ext_trim[11]),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA_input11_I (.I(ext_trim[12]),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA_input12_I (.I(ext_trim[13]),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA_input13_I (.I(ext_trim[14]),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA_input14_I (.I(ext_trim[15]),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA_input15_I (.I(ext_trim[16]),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA_input16_I (.I(ext_trim[17]),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA_input17_I (.I(ext_trim[18]),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA_input18_I (.I(ext_trim[19]),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA_input19_I (.I(ext_trim[1]),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA_input1_I (.I(dco),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA_input20_I (.I(ext_trim[20]),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA_input21_I (.I(ext_trim[21]),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA_input22_I (.I(ext_trim[22]),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA_input23_I (.I(ext_trim[23]),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA_input24_I (.I(ext_trim[24]),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA_input25_I (.I(ext_trim[25]),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA_input26_I (.I(ext_trim[2]),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA_input27_I (.I(ext_trim[3]),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA_input28_I (.I(ext_trim[4]),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA_input29_I (.I(ext_trim[5]),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA_input2_I (.I(div[0]),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA_input30_I (.I(ext_trim[6]),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA_input31_I (.I(ext_trim[7]),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA_input32_I (.I(ext_trim[8]),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA_input33_I (.I(ext_trim[9]),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA_input34_I (.I(osc),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA_input35_I (.I(resetb),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA_input3_I (.I(div[1]),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA_input4_I (.I(div[2]),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA_input5_I (.I(div[3]),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA_input6_I (.I(div[4]),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA_input7_I (.I(enable),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA_input8_I (.I(ext_trim[0]),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna ANTENNA_input9_I (.I(ext_trim[10]),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna \ANTENNA_ringosc.dstage[0].id.delaybuf1_I  (.I(\ringosc.dstage[0].id.ts ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna \ANTENNA_ringosc.dstage[0].id.delayen1_EN  (.I(\ringosc.dstage[0].id.trim[1] ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna \ANTENNA_ringosc.dstage[0].id.delayenb0_I  (.I(\ringosc.dstage[0].id.ts ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna \ANTENNA_ringosc.dstage[0].id.delayenb1_I  (.I(\ringosc.dstage[0].id.ts ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__antenna \ANTENNA_ringosc.dstage[0].id.trim1bar_I  (.I(\ringosc.dstage[0].id.trim[1] ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie FILLER_0_103 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie FILLER_0_107 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_0_174 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_8 FILLER_0_201 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_0_209 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_4 FILLER_0_212 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie FILLER_0_216 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_16 FILLER_0_226 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie FILLER_0_242 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_0_244 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_32 FILLER_0_247 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie FILLER_0_279 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_0_34 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_0_37 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_4 FILLER_0_72 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_10_116 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_4 FILLER_10_125 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_10_129 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_10_170 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_10_179 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie FILLER_10_186 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_10_194 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_4 FILLER_10_201 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_8 FILLER_10_239 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_10_247 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_10_25 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_16 FILLER_10_250 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_4 FILLER_10_266 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie FILLER_10_270 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_10_272 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_10_34 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie FILLER_10_51 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_10_53 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie FILLER_10_74 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_4 FILLER_10_88 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_11_135 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_11_144 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_32 FILLER_11_240 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_8 FILLER_11_272 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_11_28 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_11_280 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_11_37 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_11_52 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie FILLER_11_69 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_11_8 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_8 FILLER_11_81 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_12_135 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_12_151 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_12_164 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_8 FILLER_12_187 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_4 FILLER_12_195 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_12_199 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_12_202 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_12_219 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_4 FILLER_12_243 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_12_247 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_16 FILLER_12_250 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_8 FILLER_12_266 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_4 FILLER_12_274 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie FILLER_12_278 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_12_280 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_12_94 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie FILLER_13_139 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_13_141 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_8 FILLER_13_168 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie FILLER_13_176 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_13_2 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_13_212 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_32 FILLER_13_238 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_8 FILLER_13_270 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie FILLER_13_278 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_13_280 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie FILLER_13_34 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie FILLER_13_99 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_14_103 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie FILLER_14_120 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_14_122 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie FILLER_14_179 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_14_191 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_14_206 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_4 FILLER_14_237 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_14_241 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_4 FILLER_14_267 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie FILLER_14_271 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie FILLER_14_33 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_8 FILLER_14_56 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie FILLER_14_6 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie FILLER_14_64 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_14_66 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_15_104 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie FILLER_15_140 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie FILLER_15_157 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_15_159 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_15_186 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_15_2 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie FILLER_15_242 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_8 FILLER_15_267 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_4 FILLER_15_275 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie FILLER_15_279 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_15_47 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie FILLER_15_73 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_16_105 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_16_108 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie FILLER_16_133 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_16_230 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie FILLER_16_245 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_16_247 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_8 FILLER_16_273 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_16_34 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie FILLER_16_67 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_16_69 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_17_109 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_17_144 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie FILLER_17_175 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie FILLER_17_210 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_17_212 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_4 FILLER_17_276 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_17_280 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_8 FILLER_17_37 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_4 FILLER_17_45 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_17_49 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_17_79 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_18_105 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_18_108 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie FILLER_18_162 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie FILLER_18_175 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_18_202 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_18_230 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie FILLER_18_41 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_18_8 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_18_89 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_19_127 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_19_136 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_19_152 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_19_201 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_19_210 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_19_246 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_4 FILLER_19_274 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie FILLER_19_278 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_19_280 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_8 FILLER_19_38 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie FILLER_19_46 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_19_8 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie FILLER_1_146 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_1_148 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie FILLER_1_2 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_4 FILLER_1_209 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_32 FILLER_1_215 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_16 FILLER_1_247 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_8 FILLER_1_263 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie FILLER_1_271 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_1_4 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie FILLER_1_69 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_1_73 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_20_127 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_20_153 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_20_176 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie FILLER_20_193 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie FILLER_20_246 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_8 FILLER_20_273 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie FILLER_20_33 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_4 FILLER_20_37 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie FILLER_20_41 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_20_83 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_21_141 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_21_206 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_16 FILLER_21_25 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie FILLER_21_272 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_21_274 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie FILLER_21_277 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_22_183 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie FILLER_22_206 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_22_218 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie FILLER_22_22 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie FILLER_22_243 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_4 FILLER_22_247 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie FILLER_22_255 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_22_257 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie FILLER_22_266 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_22_268 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie FILLER_22_32 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_22_34 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_4 FILLER_22_37 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie FILLER_22_41 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_2_105 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_2_167 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_2_176 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_16 FILLER_2_223 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_8 FILLER_2_239 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_2_247 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_16 FILLER_2_250 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_8 FILLER_2_266 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_4 FILLER_2_274 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie FILLER_2_278 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_2_280 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_4 FILLER_2_49 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_3_105 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_3_122 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie FILLER_3_139 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_3_141 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_3_212 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_32 FILLER_3_227 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_16 FILLER_3_259 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_4 FILLER_3_275 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie FILLER_3_279 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_3_70 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_4_181 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_16 FILLER_4_224 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_8 FILLER_4_240 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_16 FILLER_4_250 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_8 FILLER_4_266 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_4 FILLER_4_274 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie FILLER_4_278 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_4_280 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie FILLER_4_69 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_4_71 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_5_14 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie FILLER_5_140 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_5_150 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_32 FILLER_5_227 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_5_23 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_8 FILLER_5_259 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_4 FILLER_5_267 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie FILLER_5_271 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_5_70 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_4 FILLER_5_73 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_6_108 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_6_163 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie FILLER_6_174 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_6_176 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_6_185 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_16 FILLER_6_228 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_4 FILLER_6_244 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_16 FILLER_6_250 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_8 FILLER_6_266 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_4 FILLER_6_274 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie FILLER_6_278 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_6_280 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie FILLER_6_49 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_6_51 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_6_99 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_4 FILLER_7_144 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_7_154 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie FILLER_7_167 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_7_169 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_32 FILLER_7_233 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_16 FILLER_7_265 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie FILLER_7_73 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_7_8 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_7_81 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_8_116 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_4 FILLER_8_135 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_8_157 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_4 FILLER_8_172 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_8_176 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_4 FILLER_8_179 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_8_201 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_16 FILLER_8_225 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_4 FILLER_8_241 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie FILLER_8_245 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_8_247 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_16 FILLER_8_250 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_8 FILLER_8_266 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_4 FILLER_8_274 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie FILLER_8_278 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_8_280 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_8_54 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_8_59 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie FILLER_8_79 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_8_81 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_9_107 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_9_14 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_9_170 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie FILLER_9_179 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_9_181 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_9_212 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_32 FILLER_9_232 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_16 FILLER_9_264 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_9_280 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_9_36 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_9_51 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fillcap_4 FILLER_9_58 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__fill_1 FILLER_9_70 (.VDD(VDD),
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
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_106 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_107 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_108 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_109 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_110 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_111 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_112 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_113 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_114 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_115 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_116 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_117 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_118 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_119 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_120 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_121 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_122 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_123 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_124 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_125 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_126 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_127 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_128 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_129 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_130 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_131 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_132 (.VDD(VDD),
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
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_72 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_73 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_74 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_75 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_76 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_77 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_78 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_79 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_80 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_81 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_82 (.VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_83 (.VDD(VDD),
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
 gf180mcu_fd_sc_mcu7t5v0__clkinv_1 _318_ (.I(\pll_control.count0[4] ),
    .ZN(_043_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__xor2_1 _319_ (.A1(\pll_control.oscbuf[1] ),
    .A2(\pll_control.oscbuf[2] ),
    .Z(_044_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkinv_1 _320_ (.I(_044_),
    .ZN(_045_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nand2_1 _321_ (.A1(\pll_control.count1[4] ),
    .A2(_045_),
    .ZN(_046_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__oai21_1 _322_ (.A1(_043_),
    .A2(_045_),
    .B(_046_),
    .ZN(_047_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 _323_ (.I(_047_),
    .Z(_042_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 _324_ (.I(\pll_control.count0[3] ),
    .Z(_048_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__buf_1 _325_ (.I(_044_),
    .Z(_049_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__mux2_2 _326_ (.I0(\pll_control.count1[3] ),
    .I1(_048_),
    .S(_049_),
    .Z(_050_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 _327_ (.I(_050_),
    .Z(_041_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 _328_ (.I(\pll_control.count0[2] ),
    .Z(_051_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__buf_2 _329_ (.I(_044_),
    .Z(_052_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__mux2_2 _330_ (.I0(\pll_control.count1[2] ),
    .I1(_051_),
    .S(_052_),
    .Z(_053_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 _331_ (.I(_053_),
    .Z(_040_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__buf_1 _332_ (.I(\pll_control.count0[1] ),
    .Z(_054_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__mux2_2 _333_ (.I0(\pll_control.count1[1] ),
    .I1(_054_),
    .S(_052_),
    .Z(_055_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 _334_ (.I(_055_),
    .Z(_039_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__buf_1 _335_ (.I(\pll_control.count0[0] ),
    .Z(_056_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__mux2_2 _336_ (.I0(\pll_control.count1[0] ),
    .I1(_056_),
    .S(_052_),
    .Z(_057_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 _337_ (.I(_057_),
    .Z(_038_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 _338_ (.I(\pll_control.tint[4] ),
    .Z(_058_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkinv_1 _339_ (.I(_058_),
    .ZN(_059_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__buf_1 _340_ (.I(_059_),
    .Z(_060_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__xor2_1 _341_ (.A1(\pll_control.count0[1] ),
    .A2(\pll_control.count1[1] ),
    .Z(_061_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nand2_1 _342_ (.A1(\pll_control.count0[0] ),
    .A2(\pll_control.count1[0] ),
    .ZN(_062_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__xor2_1 _343_ (.A1(_061_),
    .A2(_062_),
    .Z(_063_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__xnor2_1 _344_ (.A1(\pll_control.count0[0] ),
    .A2(\pll_control.count1[0] ),
    .ZN(_064_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nor2_1 _345_ (.A1(net2),
    .A2(_064_),
    .ZN(_065_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__and2_1 _346_ (.A1(\pll_control.count0[0] ),
    .A2(\pll_control.count1[0] ),
    .Z(_066_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__xor3_1 _347_ (.A1(net3),
    .A2(_061_),
    .A3(_066_),
    .Z(_067_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nor2_1 _348_ (.A1(_065_),
    .A2(_067_),
    .ZN(_068_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__aoi21_1 _349_ (.A1(net3),
    .A2(_063_),
    .B(_068_),
    .ZN(_069_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkinv_1 _350_ (.I(net5),
    .ZN(_070_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nor2_1 _351_ (.A1(_051_),
    .A2(\pll_control.count1[2] ),
    .ZN(_071_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__xor2_1 _352_ (.A1(\pll_control.count0[3] ),
    .A2(\pll_control.count1[3] ),
    .Z(_072_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__and2_1 _353_ (.A1(\pll_control.count0[1] ),
    .A2(\pll_control.count1[1] ),
    .Z(_073_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__aoi221_2 _354_ (.A1(\pll_control.count0[2] ),
    .A2(\pll_control.count1[2] ),
    .B1(_061_),
    .B2(_066_),
    .C(_073_),
    .ZN(_074_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nor3_1 _355_ (.A1(_071_),
    .A2(_072_),
    .A3(_074_),
    .ZN(_075_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__or2_1 _356_ (.A1(\pll_control.count0[2] ),
    .A2(\pll_control.count1[2] ),
    .Z(_076_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nor2_1 _357_ (.A1(_054_),
    .A2(\pll_control.count1[1] ),
    .ZN(_077_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nand2_1 _358_ (.A1(_051_),
    .A2(\pll_control.count1[2] ),
    .ZN(_078_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nand2_1 _359_ (.A1(\pll_control.count0[1] ),
    .A2(\pll_control.count1[1] ),
    .ZN(_079_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__oai211_1 _360_ (.A1(_077_),
    .A2(_062_),
    .B(_078_),
    .C(_079_),
    .ZN(_080_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__xnor2_1 _361_ (.A1(\pll_control.count0[3] ),
    .A2(\pll_control.count1[3] ),
    .ZN(_081_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__aoi21_1 _362_ (.A1(_076_),
    .A2(_080_),
    .B(_081_),
    .ZN(_082_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkinv_1 _363_ (.I(net4),
    .ZN(_083_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__aoi21_1 _364_ (.A1(_061_),
    .A2(_066_),
    .B(_073_),
    .ZN(_084_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__and2_1 _365_ (.A1(_076_),
    .A2(_078_),
    .Z(_085_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__xnor2_1 _366_ (.A1(_084_),
    .A2(_085_),
    .ZN(_086_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__oai32_1 _367_ (.A1(_070_),
    .A2(_075_),
    .A3(_082_),
    .B1(_083_),
    .B2(_086_),
    .ZN(_087_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__aoi21_1 _368_ (.A1(_076_),
    .A2(_080_),
    .B(_072_),
    .ZN(_088_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nor3_1 _369_ (.A1(_071_),
    .A2(_081_),
    .A3(_074_),
    .ZN(_089_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__xor2_1 _370_ (.A1(_084_),
    .A2(_085_),
    .Z(_090_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__oai32_1 _371_ (.A1(net5),
    .A2(_088_),
    .A3(_089_),
    .B1(net4),
    .B2(_090_),
    .ZN(_091_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nor3_1 _372_ (.A1(_069_),
    .A2(_087_),
    .A3(_091_),
    .ZN(_092_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nand2_1 _373_ (.A1(net4),
    .A2(_090_),
    .ZN(_093_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__oai21_1 _374_ (.A1(_088_),
    .A2(_089_),
    .B(net5),
    .ZN(_094_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nor3_1 _375_ (.A1(net5),
    .A2(_088_),
    .A3(_089_),
    .ZN(_095_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__aoi21_1 _376_ (.A1(_093_),
    .A2(_094_),
    .B(_095_),
    .ZN(_096_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__xor2_1 _377_ (.A1(\pll_control.count0[4] ),
    .A2(\pll_control.count1[4] ),
    .Z(_097_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nor2_1 _378_ (.A1(\pll_control.count0[3] ),
    .A2(\pll_control.count1[3] ),
    .ZN(_098_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nand2_1 _379_ (.A1(_048_),
    .A2(\pll_control.count1[3] ),
    .ZN(_099_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__oai31_1 _380_ (.A1(_071_),
    .A2(_098_),
    .A3(_074_),
    .B(_099_),
    .ZN(_100_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__xnor2_1 _381_ (.A1(_097_),
    .A2(_100_),
    .ZN(_101_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__and2_1 _382_ (.A1(net6),
    .A2(_101_),
    .Z(_102_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkinv_1 _383_ (.I(net6),
    .ZN(_103_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__or2_1 _384_ (.A1(_097_),
    .A2(_100_),
    .Z(_104_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__and2_1 _385_ (.A1(_097_),
    .A2(_100_),
    .Z(_105_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__aoi221_2 _386_ (.A1(\pll_control.count0[4] ),
    .A2(\pll_control.count1[4] ),
    .B1(_103_),
    .B2(_104_),
    .C(_105_),
    .ZN(_106_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__oai31_2 _387_ (.A1(_092_),
    .A2(_096_),
    .A3(_102_),
    .B(_106_),
    .ZN(_107_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__buf_1 _388_ (.I(_107_),
    .Z(_108_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__buf_4 _389_ (.I(_107_),
    .Z(_109_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nor2_1 _390_ (.A1(\pll_control.tint[1] ),
    .A2(\pll_control.tint[0] ),
    .ZN(_110_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nor3_1 _391_ (.A1(\pll_control.tint[4] ),
    .A2(\pll_control.tint[3] ),
    .A3(\pll_control.tint[2] ),
    .ZN(_111_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nand2_1 _392_ (.A1(_110_),
    .A2(_111_),
    .ZN(_112_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__or4_1 _393_ (.A1(\pll_control.tval[1] ),
    .A2(\pll_control.tval[0] ),
    .A3(_109_),
    .A4(_112_),
    .Z(_113_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nand4_1 _394_ (.A1(\pll_control.prep[1] ),
    .A2(\pll_control.prep[2] ),
    .A3(\pll_control.prep[0] ),
    .A4(_044_),
    .ZN(_114_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nand2_1 _395_ (.A1(net6),
    .A2(_101_),
    .ZN(_115_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__aoi211_1 _396_ (.A1(net2),
    .A2(_064_),
    .B(_087_),
    .C(_091_),
    .ZN(_116_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__and4_1 _397_ (.A1(_068_),
    .A2(_115_),
    .A3(_106_),
    .A4(_116_),
    .Z(_117_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nor2_1 _398_ (.A1(_114_),
    .A2(_117_),
    .ZN(_118_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nand2_1 _399_ (.A1(_113_),
    .A2(_118_),
    .ZN(_119_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__buf_1 _400_ (.I(\pll_control.tint[3] ),
    .Z(_120_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkinv_1 _401_ (.I(_120_),
    .ZN(_121_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkinv_1 _402_ (.I(_109_),
    .ZN(_122_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nand4_1 _403_ (.A1(_058_),
    .A2(\pll_control.tint[2] ),
    .A3(\pll_control.tval[1] ),
    .A4(\pll_control.tval[0] ),
    .ZN(_123_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nand2_2 _404_ (.A1(\pll_control.tint[1] ),
    .A2(\pll_control.tint[0] ),
    .ZN(_124_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nor4_1 _405_ (.A1(_121_),
    .A2(_122_),
    .A3(_123_),
    .A4(_124_),
    .ZN(_125_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nor2_1 _406_ (.A1(_119_),
    .A2(_125_),
    .ZN(_126_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__buf_2 _407_ (.I(_126_),
    .Z(_127_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nand2_1 _408_ (.A1(_108_),
    .A2(_127_),
    .ZN(_128_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nor2_2 _409_ (.A1(\pll_control.tint[3] ),
    .A2(\pll_control.tint[2] ),
    .ZN(_129_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nand3_1 _410_ (.A1(_122_),
    .A2(_129_),
    .A3(_126_),
    .ZN(_130_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__xor2_1 _411_ (.A1(_121_),
    .A2(_108_),
    .Z(_131_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__and2_1 _412_ (.A1(\pll_control.tint[1] ),
    .A2(\pll_control.tint[0] ),
    .Z(_132_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nor2_2 _413_ (.A1(_110_),
    .A2(_132_),
    .ZN(_133_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__xor2_1 _414_ (.A1(\pll_control.tint[0] ),
    .A2(_109_),
    .Z(_134_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__buf_1 _415_ (.I(\pll_control.tval[0] ),
    .Z(_135_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkinv_1 _416_ (.I(\pll_control.tval[1] ),
    .ZN(_136_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__xor2_1 _417_ (.A1(_136_),
    .A2(_107_),
    .Z(_137_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nor2_1 _418_ (.A1(_136_),
    .A2(_109_),
    .ZN(_138_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__aoi21_1 _419_ (.A1(_135_),
    .A2(_137_),
    .B(_138_),
    .ZN(_139_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__buf_1 _420_ (.I(_110_),
    .Z(_140_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__oai32_2 _421_ (.A1(_133_),
    .A2(_134_),
    .A3(_139_),
    .B1(_140_),
    .B2(_108_),
    .ZN(_141_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__inv_1 _422_ (.I(\pll_control.tint[2] ),
    .ZN(_142_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__xor2_1 _423_ (.A1(_142_),
    .A2(_109_),
    .Z(_143_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nand3_1 _424_ (.A1(_131_),
    .A2(_141_),
    .A3(_143_),
    .ZN(_144_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__mux2_2 _425_ (.I0(_128_),
    .I1(_130_),
    .S(_144_),
    .Z(_145_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__xor2_1 _426_ (.A1(_060_),
    .A2(_145_),
    .Z(_146_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 _427_ (.I(_146_),
    .Z(_037_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 _428_ (.I(_120_),
    .Z(_147_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 _429_ (.I(_142_),
    .Z(_148_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nor2_1 _430_ (.A1(_148_),
    .A2(_108_),
    .ZN(_149_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__aoi21_1 _431_ (.A1(_141_),
    .A2(_143_),
    .B(_149_),
    .ZN(_150_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__xnor2_1 _432_ (.A1(_131_),
    .A2(_150_),
    .ZN(_151_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__mux2_2 _433_ (.I0(_147_),
    .I1(_151_),
    .S(_127_),
    .Z(_152_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 _434_ (.I(_152_),
    .Z(_036_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__or2_1 _435_ (.A1(_119_),
    .A2(_125_),
    .Z(_153_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__aoi21_1 _436_ (.A1(_141_),
    .A2(_143_),
    .B(_153_),
    .ZN(_154_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__oai21_1 _437_ (.A1(_141_),
    .A2(_143_),
    .B(_154_),
    .ZN(_155_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__oai21_1 _438_ (.A1(_148_),
    .A2(_127_),
    .B(_155_),
    .ZN(_156_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 _439_ (.I(_156_),
    .Z(_035_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 _440_ (.I(\pll_control.tint[1] ),
    .Z(_157_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__buf_1 _441_ (.I(_157_),
    .Z(_158_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 _442_ (.I(\pll_control.tint[0] ),
    .Z(_159_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__or2_1 _443_ (.A1(_134_),
    .A2(_139_),
    .Z(_160_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nand2_1 _444_ (.A1(_127_),
    .A2(_160_),
    .ZN(_161_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__oai32_1 _445_ (.A1(_159_),
    .A2(_108_),
    .A3(_161_),
    .B1(_160_),
    .B2(_128_),
    .ZN(_162_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__xor2_1 _446_ (.A1(_158_),
    .A2(_162_),
    .Z(_163_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 _447_ (.I(_163_),
    .Z(_034_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__and2_1 _448_ (.A1(_134_),
    .A2(_139_),
    .Z(_164_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nand2_1 _449_ (.A1(_159_),
    .A2(_153_),
    .ZN(_165_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__oai21_1 _450_ (.A1(_161_),
    .A2(_164_),
    .B(_165_),
    .ZN(_166_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 _451_ (.I(_166_),
    .Z(_033_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__aoi21_1 _452_ (.A1(_135_),
    .A2(_137_),
    .B(_153_),
    .ZN(_167_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__oai21_1 _453_ (.A1(_135_),
    .A2(_137_),
    .B(_167_),
    .ZN(_168_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__oai21_1 _454_ (.A1(_136_),
    .A2(_127_),
    .B(_168_),
    .ZN(_169_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 _455_ (.I(_169_),
    .Z(_032_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nand2_1 _456_ (.A1(_135_),
    .A2(_153_),
    .ZN(_170_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__oai21_1 _457_ (.A1(_135_),
    .A2(_119_),
    .B(_170_),
    .ZN(_171_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 _458_ (.I(_171_),
    .Z(_031_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__and3_1 _459_ (.A1(_051_),
    .A2(_054_),
    .A3(_056_),
    .Z(_172_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nand2_1 _460_ (.A1(_048_),
    .A2(_172_),
    .ZN(_173_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__aoi21_1 _461_ (.A1(_043_),
    .A2(_173_),
    .B(_049_),
    .ZN(_174_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 _462_ (.I(_174_),
    .Z(_030_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nor2_1 _463_ (.A1(_048_),
    .A2(_172_),
    .ZN(_175_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__oai21_1 _464_ (.A1(\pll_control.count0[4] ),
    .A2(_173_),
    .B(_045_),
    .ZN(_176_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nor2_1 _465_ (.A1(_175_),
    .A2(_176_),
    .ZN(_177_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 _466_ (.I(_177_),
    .Z(_029_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nand3_1 _467_ (.A1(\pll_control.count0[4] ),
    .A2(_048_),
    .A3(_172_),
    .ZN(_178_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__aoi21_1 _468_ (.A1(_054_),
    .A2(_056_),
    .B(_051_),
    .ZN(_179_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__or2_1 _469_ (.A1(_172_),
    .A2(_179_),
    .Z(_180_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__aoi21_1 _470_ (.A1(_178_),
    .A2(_180_),
    .B(_049_),
    .ZN(_181_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 _471_ (.I(_181_),
    .Z(_028_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__xnor2_1 _472_ (.A1(_054_),
    .A2(_056_),
    .ZN(_182_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__aoi21_1 _473_ (.A1(_178_),
    .A2(_182_),
    .B(_049_),
    .ZN(_183_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 _474_ (.I(_183_),
    .Z(_027_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nand3_1 _475_ (.A1(_056_),
    .A2(_045_),
    .A3(_178_),
    .ZN(_026_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__mux2_2 _476_ (.I0(\pll_control.prep[2] ),
    .I1(\pll_control.prep[1] ),
    .S(_052_),
    .Z(_184_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 _477_ (.I(_184_),
    .Z(_025_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__mux2_2 _478_ (.I0(\pll_control.prep[1] ),
    .I1(\pll_control.prep[0] ),
    .S(_052_),
    .Z(_185_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 _479_ (.I(_185_),
    .Z(_024_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__or2_1 _480_ (.A1(\pll_control.prep[0] ),
    .A2(_049_),
    .Z(_186_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 _481_ (.I(_186_),
    .Z(_023_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkinv_1 _482_ (.I(net1),
    .ZN(_187_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__mux2_2 _483_ (.I0(net8),
    .I1(_112_),
    .S(_187_),
    .Z(_188_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 _484_ (.I(_188_),
    .Z(\ringosc.dstage[0].id.trim[0] ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 _485_ (.I(net1),
    .Z(_189_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 _486_ (.I(_189_),
    .Z(_190_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__buf_1 _487_ (.I(_058_),
    .Z(_191_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nand2_1 _488_ (.A1(_120_),
    .A2(_148_),
    .ZN(_192_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nor2_1 _489_ (.A1(_191_),
    .A2(_192_),
    .ZN(_193_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__oai21_1 _490_ (.A1(_191_),
    .A2(_147_),
    .B(_187_),
    .ZN(_194_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nor2_2 _491_ (.A1(_193_),
    .A2(_194_),
    .ZN(_195_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__aoi21_1 _492_ (.A1(_190_),
    .A2(net19),
    .B(_195_),
    .ZN(_196_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkinv_1 _493_ (.I(_196_),
    .ZN(\ringosc.dstage[1].id.trim[0] ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 _494_ (.I(net1),
    .Z(_197_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__buf_1 _495_ (.I(_197_),
    .Z(_198_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nand2_1 _496_ (.A1(_198_),
    .A2(net26),
    .ZN(_199_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nand2_1 _497_ (.A1(_194_),
    .A2(_199_),
    .ZN(\ringosc.dstage[2].id.trim[0] ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__buf_2 _498_ (.I(net1),
    .Z(_200_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nand2_1 _499_ (.A1(_200_),
    .A2(net27),
    .ZN(_201_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__oai21_1 _500_ (.A1(_190_),
    .A2(_111_),
    .B(_201_),
    .ZN(_202_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 _501_ (.I(_202_),
    .Z(\ringosc.dstage[3].id.trim[0] ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nand2_1 _502_ (.A1(_198_),
    .A2(net28),
    .ZN(_203_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nand3_1 _503_ (.A1(_059_),
    .A2(_147_),
    .A3(_148_),
    .ZN(_204_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__aoi21_1 _504_ (.A1(_060_),
    .A2(_121_),
    .B(_197_),
    .ZN(_205_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__oai21_1 _505_ (.A1(_158_),
    .A2(_204_),
    .B(_205_),
    .ZN(_206_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nand2_1 _506_ (.A1(_203_),
    .A2(_206_),
    .ZN(\ringosc.dstage[4].id.trim[0] ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 _507_ (.I(_058_),
    .Z(_207_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nor2_1 _508_ (.A1(_120_),
    .A2(_142_),
    .ZN(_208_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__aoi22_1 _509_ (.A1(_129_),
    .A2(_132_),
    .B1(_208_),
    .B2(_140_),
    .ZN(_209_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__aoi21_4 _510_ (.A1(_111_),
    .A2(_124_),
    .B(net1),
    .ZN(_210_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__oai21_4 _511_ (.A1(_207_),
    .A2(_209_),
    .B(_210_),
    .ZN(_211_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nor3_2 _512_ (.A1(_058_),
    .A2(_120_),
    .A3(_142_),
    .ZN(_212_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__and2_1 _513_ (.A1(_133_),
    .A2(_212_),
    .Z(_213_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nand2_1 _514_ (.A1(_200_),
    .A2(net29),
    .ZN(_214_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__oai21_1 _515_ (.A1(_211_),
    .A2(_213_),
    .B(_214_),
    .ZN(_215_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 _516_ (.I(_215_),
    .Z(\ringosc.dstage[5].id.trim[0] ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkinv_1 _517_ (.I(net30),
    .ZN(_216_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nor3_1 _518_ (.A1(_207_),
    .A2(_157_),
    .A3(_197_),
    .ZN(_217_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__aoi22_1 _519_ (.A1(_198_),
    .A2(_216_),
    .B1(_129_),
    .B2(_217_),
    .ZN(\ringosc.dstage[6].id.trim[0] ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__or2_1 _520_ (.A1(\pll_control.tint[1] ),
    .A2(_159_),
    .Z(_218_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nand3_1 _521_ (.A1(_059_),
    .A2(\pll_control.tint[3] ),
    .A3(\pll_control.tint[2] ),
    .ZN(_219_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__buf_1 _522_ (.I(_219_),
    .Z(_220_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__oai21_1 _523_ (.A1(_218_),
    .A2(_220_),
    .B(_195_),
    .ZN(_221_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__buf_1 _524_ (.I(_189_),
    .Z(_222_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nand2_1 _525_ (.A1(_222_),
    .A2(net31),
    .ZN(_223_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nand2_1 _526_ (.A1(_221_),
    .A2(_223_),
    .ZN(\ringosc.dstage[7].id.trim[0] ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nand2_1 _527_ (.A1(_222_),
    .A2(net32),
    .ZN(_224_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nand2_1 _528_ (.A1(_211_),
    .A2(_224_),
    .ZN(\ringosc.dstage[8].id.trim[0] ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__buf_1 _529_ (.I(_189_),
    .Z(_225_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nand2_1 _530_ (.A1(_140_),
    .A2(_193_),
    .ZN(_226_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__aoi22_1 _531_ (.A1(_225_),
    .A2(net33),
    .B1(_205_),
    .B2(_226_),
    .ZN(_227_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkinv_1 _532_ (.I(_227_),
    .ZN(\ringosc.dstage[9].id.trim[0] ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__aoi21_1 _533_ (.A1(_225_),
    .A2(net9),
    .B(_210_),
    .ZN(_228_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkinv_1 _534_ (.I(_228_),
    .ZN(\ringosc.dstage[10].id.trim[0] ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nand2_1 _535_ (.A1(_124_),
    .A2(_193_),
    .ZN(_229_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__aoi22_1 _536_ (.A1(_225_),
    .A2(net10),
    .B1(_205_),
    .B2(_229_),
    .ZN(_230_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkinv_1 _537_ (.I(_230_),
    .ZN(\ringosc.dstage[11].id.trim[0] ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkinv_1 _538_ (.I(_211_),
    .ZN(_231_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkinv_1 _539_ (.I(_157_),
    .ZN(_232_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nand3_1 _540_ (.A1(_232_),
    .A2(_159_),
    .A3(_212_),
    .ZN(_233_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nand2_1 _541_ (.A1(_231_),
    .A2(_233_),
    .ZN(_234_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nand2_1 _542_ (.A1(_222_),
    .A2(net11),
    .ZN(_235_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nand2_1 _543_ (.A1(_234_),
    .A2(_235_),
    .ZN(\ringosc.iss.trim[0] ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__oai21_1 _544_ (.A1(_158_),
    .A2(_220_),
    .B(_195_),
    .ZN(_236_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nand2_1 _545_ (.A1(_222_),
    .A2(net12),
    .ZN(_237_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nand2_1 _546_ (.A1(_236_),
    .A2(_237_),
    .ZN(\ringosc.dstage[0].id.trim[1] ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nand2_1 _547_ (.A1(_133_),
    .A2(_212_),
    .ZN(_238_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkinv_1 _548_ (.I(_209_),
    .ZN(_239_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nor2_1 _549_ (.A1(_132_),
    .A2(_219_),
    .ZN(_240_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__aoi21_1 _550_ (.A1(_059_),
    .A2(_239_),
    .B(_240_),
    .ZN(_241_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nand2_1 _551_ (.A1(_238_),
    .A2(_241_),
    .ZN(_242_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nand2_2 _552_ (.A1(_191_),
    .A2(_129_),
    .ZN(_243_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__oai221_2 _553_ (.A1(_124_),
    .A2(_220_),
    .B1(_243_),
    .B2(_218_),
    .C(_210_),
    .ZN(_244_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__or2_1 _554_ (.A1(_242_),
    .A2(_244_),
    .Z(_245_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nand2_1 _555_ (.A1(_132_),
    .A2(_212_),
    .ZN(_246_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nand2_1 _556_ (.A1(_204_),
    .A2(_246_),
    .ZN(_247_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nand2_1 _557_ (.A1(_191_),
    .A2(_208_),
    .ZN(_248_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nand4_1 _558_ (.A1(_207_),
    .A2(_147_),
    .A3(_148_),
    .A4(_140_),
    .ZN(_249_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__oai211_1 _559_ (.A1(_140_),
    .A2(_243_),
    .B(_248_),
    .C(_249_),
    .ZN(_250_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkinv_1 _560_ (.I(net13),
    .ZN(_251_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 _561_ (.I(_187_),
    .Z(_252_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__oai32_1 _562_ (.A1(_245_),
    .A2(_247_),
    .A3(_250_),
    .B1(_251_),
    .B2(_252_),
    .ZN(\ringosc.dstage[1].id.trim[1] ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__and2_1 _563_ (.A1(_191_),
    .A2(_129_),
    .Z(_253_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nand2_1 _564_ (.A1(_133_),
    .A2(_253_),
    .ZN(_254_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__aoi211_1 _565_ (.A1(_207_),
    .A2(_239_),
    .B(_245_),
    .C(_247_),
    .ZN(_255_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__aoi22_1 _566_ (.A1(_225_),
    .A2(net14),
    .B1(_254_),
    .B2(_255_),
    .ZN(_256_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkinv_1 _567_ (.I(_256_),
    .ZN(\ringosc.dstage[2].id.trim[1] ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nand2_1 _568_ (.A1(_198_),
    .A2(net15),
    .ZN(_257_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__and2_1 _569_ (.A1(_233_),
    .A2(_241_),
    .Z(_258_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nor2_1 _570_ (.A1(_193_),
    .A2(_244_),
    .ZN(_259_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nand2_1 _571_ (.A1(_157_),
    .A2(_212_),
    .ZN(_260_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nand3_1 _572_ (.A1(_258_),
    .A2(_259_),
    .A3(_260_),
    .ZN(_261_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nand2_1 _573_ (.A1(_257_),
    .A2(_261_),
    .ZN(\ringosc.dstage[3].id.trim[1] ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nand2_1 _574_ (.A1(_060_),
    .A2(_147_),
    .ZN(_262_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nand3_1 _575_ (.A1(_207_),
    .A2(_124_),
    .A3(_208_),
    .ZN(_263_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nand4_1 _576_ (.A1(_262_),
    .A2(_243_),
    .A3(_260_),
    .A4(_263_),
    .ZN(_264_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nand2_1 _577_ (.A1(_200_),
    .A2(net16),
    .ZN(_265_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__oai21_1 _578_ (.A1(_234_),
    .A2(_264_),
    .B(_265_),
    .ZN(_266_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 _579_ (.I(_266_),
    .Z(\ringosc.dstage[4].id.trim[1] ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__and3_1 _580_ (.A1(_232_),
    .A2(_159_),
    .A3(_253_),
    .Z(_267_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nand2_1 _581_ (.A1(_157_),
    .A2(_253_),
    .ZN(_268_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nand4_1 _582_ (.A1(_204_),
    .A2(_268_),
    .A3(_258_),
    .A4(_260_),
    .ZN(_269_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkinv_1 _583_ (.I(net17),
    .ZN(_270_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__oai32_1 _584_ (.A1(_244_),
    .A2(_267_),
    .A3(_269_),
    .B1(_270_),
    .B2(_252_),
    .ZN(\ringosc.dstage[5].id.trim[1] ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__oai21_1 _585_ (.A1(_132_),
    .A2(_220_),
    .B(_195_),
    .ZN(_271_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nand2_1 _586_ (.A1(_222_),
    .A2(net18),
    .ZN(_272_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nand2_1 _587_ (.A1(_271_),
    .A2(_272_),
    .ZN(\ringosc.dstage[6].id.trim[1] ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nand4_2 _588_ (.A1(_195_),
    .A2(_220_),
    .A3(_243_),
    .A4(_248_),
    .ZN(_273_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nor3_1 _589_ (.A1(_060_),
    .A2(_158_),
    .A3(_192_),
    .ZN(_274_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nand2_1 _590_ (.A1(_200_),
    .A2(net20),
    .ZN(_275_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__oai21_1 _591_ (.A1(_273_),
    .A2(_274_),
    .B(_275_),
    .ZN(_276_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 _592_ (.I(_276_),
    .Z(\ringosc.dstage[7].id.trim[1] ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkinv_1 _593_ (.I(net21),
    .ZN(_277_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__oai32_1 _594_ (.A1(_245_),
    .A2(_247_),
    .A3(_267_),
    .B1(_277_),
    .B2(_252_),
    .ZN(\ringosc.dstage[8].id.trim[1] ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nand2_1 _595_ (.A1(_198_),
    .A2(net22),
    .ZN(_278_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nor3_1 _596_ (.A1(_245_),
    .A2(_247_),
    .A3(_267_),
    .ZN(_279_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__oai211_1 _597_ (.A1(_158_),
    .A2(_248_),
    .B(_268_),
    .C(_279_),
    .ZN(_280_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nand2_1 _598_ (.A1(_278_),
    .A2(_280_),
    .ZN(\ringosc.dstage[9].id.trim[1] ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nor2_1 _599_ (.A1(_252_),
    .A2(net23),
    .ZN(_281_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__aoi21_1 _600_ (.A1(_060_),
    .A2(_252_),
    .B(_281_),
    .ZN(_282_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 _601_ (.I(_282_),
    .Z(\ringosc.dstage[10].id.trim[1] ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nand2_1 _602_ (.A1(_200_),
    .A2(net24),
    .ZN(_283_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nand2_1 _603_ (.A1(_273_),
    .A2(_283_),
    .ZN(\ringosc.dstage[11].id.trim[1] ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__aoi21_1 _604_ (.A1(_133_),
    .A2(_253_),
    .B(_261_),
    .ZN(_284_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__aoi21_1 _605_ (.A1(_225_),
    .A2(net25),
    .B(_284_),
    .ZN(_285_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkinv_1 _606_ (.I(_285_),
    .ZN(\ringosc.iss.trim[1] ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nand2_1 _607_ (.A1(net7),
    .A2(net35),
    .ZN(_286_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 _608_ (.I(_286_),
    .Z(_287_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__buf_2 _609_ (.I(_287_),
    .Z(\ringosc.iss.reset ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 _610_ (.I(_197_),
    .Z(_288_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nor2_1 _611_ (.A1(_288_),
    .A2(\ringosc.iss.reset ),
    .ZN(_289_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 _612_ (.I(_289_),
    .Z(_000_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nor2_1 _613_ (.A1(_288_),
    .A2(\ringosc.iss.reset ),
    .ZN(_290_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 _614_ (.I(_290_),
    .Z(_001_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nor2_1 _615_ (.A1(_288_),
    .A2(\ringosc.iss.reset ),
    .ZN(_291_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 _616_ (.I(_291_),
    .Z(_002_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nor2_1 _617_ (.A1(_288_),
    .A2(\ringosc.iss.reset ),
    .ZN(_292_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 _618_ (.I(_292_),
    .Z(_003_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 _619_ (.I(_286_),
    .Z(_293_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nor2_1 _620_ (.A1(_288_),
    .A2(_293_),
    .ZN(_294_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 _621_ (.I(_294_),
    .Z(_004_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 _622_ (.I(_197_),
    .Z(_295_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nor2_1 _623_ (.A1(_295_),
    .A2(_293_),
    .ZN(_296_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 _624_ (.I(_296_),
    .Z(_005_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nor2_1 _625_ (.A1(_295_),
    .A2(_293_),
    .ZN(_297_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 _626_ (.I(_297_),
    .Z(_006_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nor2_1 _627_ (.A1(_295_),
    .A2(_293_),
    .ZN(_298_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 _628_ (.I(_298_),
    .Z(_007_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nor2_1 _629_ (.A1(_295_),
    .A2(_293_),
    .ZN(_299_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 _630_ (.I(_299_),
    .Z(_008_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 _631_ (.I(_286_),
    .Z(_300_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nor2_1 _632_ (.A1(_295_),
    .A2(_300_),
    .ZN(_301_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 _633_ (.I(_301_),
    .Z(_009_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 _634_ (.I(_189_),
    .Z(_302_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nor2_1 _635_ (.A1(_302_),
    .A2(_300_),
    .ZN(_303_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 _636_ (.I(_303_),
    .Z(_010_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nor2_1 _637_ (.A1(_302_),
    .A2(_300_),
    .ZN(_304_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 _638_ (.I(_304_),
    .Z(_011_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nor2_1 _639_ (.A1(_302_),
    .A2(_300_),
    .ZN(_305_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 _640_ (.I(_305_),
    .Z(_012_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nor2_1 _641_ (.A1(_302_),
    .A2(_300_),
    .ZN(_306_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 _642_ (.I(_306_),
    .Z(_013_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 _643_ (.I(_286_),
    .Z(_307_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nor2_1 _644_ (.A1(_302_),
    .A2(_307_),
    .ZN(_308_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 _645_ (.I(_308_),
    .Z(_014_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 _646_ (.I(_189_),
    .Z(_309_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nor2_1 _647_ (.A1(_309_),
    .A2(_307_),
    .ZN(_310_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 _648_ (.I(_310_),
    .Z(_015_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nor2_1 _649_ (.A1(_309_),
    .A2(_307_),
    .ZN(_311_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 _650_ (.I(_311_),
    .Z(_016_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nor2_1 _651_ (.A1(_309_),
    .A2(_307_),
    .ZN(_312_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 _652_ (.I(_312_),
    .Z(_017_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nor2_1 _653_ (.A1(_309_),
    .A2(_307_),
    .ZN(_313_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 _654_ (.I(_313_),
    .Z(_018_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nor2_1 _655_ (.A1(_309_),
    .A2(_287_),
    .ZN(_314_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 _656_ (.I(_314_),
    .Z(_019_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nor2_1 _657_ (.A1(_190_),
    .A2(_287_),
    .ZN(_315_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 _658_ (.I(_315_),
    .Z(_020_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nor2_1 _659_ (.A1(_190_),
    .A2(_287_),
    .ZN(_316_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 _660_ (.I(_316_),
    .Z(_021_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nor2_1 _661_ (.A1(_190_),
    .A2(_287_),
    .ZN(_317_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 _662_ (.I(_317_),
    .Z(_022_),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__dffrnq_1 _663_ (.D(_023_),
    .RN(_000_),
    .CLK(\pll_control.clock ),
    .Q(\pll_control.prep[0] ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__dffrnq_1 _664_ (.D(_024_),
    .RN(_001_),
    .CLK(\pll_control.clock ),
    .Q(\pll_control.prep[1] ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__dffrnq_1 _665_ (.D(_025_),
    .RN(_002_),
    .CLK(\pll_control.clock ),
    .Q(\pll_control.prep[2] ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__dffrnq_1 _666_ (.D(_026_),
    .RN(_003_),
    .CLK(\pll_control.clock ),
    .Q(\pll_control.count0[0] ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__dffrnq_1 _667_ (.D(_027_),
    .RN(_004_),
    .CLK(\pll_control.clock ),
    .Q(\pll_control.count0[1] ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__dffrnq_1 _668_ (.D(_028_),
    .RN(_005_),
    .CLK(\pll_control.clock ),
    .Q(\pll_control.count0[2] ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__dffrnq_1 _669_ (.D(_029_),
    .RN(_006_),
    .CLK(\pll_control.clock ),
    .Q(\pll_control.count0[3] ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__dffrnq_1 _670_ (.D(_030_),
    .RN(_007_),
    .CLK(\pll_control.clock ),
    .Q(\pll_control.count0[4] ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__dffrnq_1 _671_ (.D(_031_),
    .RN(_008_),
    .CLK(\pll_control.clock ),
    .Q(\pll_control.tval[0] ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__dffrnq_1 _672_ (.D(_032_),
    .RN(_009_),
    .CLK(\pll_control.clock ),
    .Q(\pll_control.tval[1] ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__dffrnq_1 _673_ (.D(_033_),
    .RN(_010_),
    .CLK(\pll_control.clock ),
    .Q(\pll_control.tint[0] ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__dffrnq_1 _674_ (.D(_034_),
    .RN(_011_),
    .CLK(\pll_control.clock ),
    .Q(\pll_control.tint[1] ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__dffrnq_1 _675_ (.D(_035_),
    .RN(_012_),
    .CLK(\pll_control.clock ),
    .Q(\pll_control.tint[2] ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__dffrnq_1 _676_ (.D(_036_),
    .RN(_013_),
    .CLK(\pll_control.clock ),
    .Q(\pll_control.tint[3] ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__dffrnq_1 _677_ (.D(_037_),
    .RN(_014_),
    .CLK(\pll_control.clock ),
    .Q(\pll_control.tint[4] ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__dffrnq_1 _678_ (.D(net34),
    .RN(_015_),
    .CLK(\pll_control.clock ),
    .Q(\pll_control.oscbuf[0] ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__dffrnq_1 _679_ (.D(\pll_control.oscbuf[0] ),
    .RN(_016_),
    .CLK(\pll_control.clock ),
    .Q(\pll_control.oscbuf[1] ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__dffrnq_1 _680_ (.D(\pll_control.oscbuf[1] ),
    .RN(_017_),
    .CLK(\pll_control.clock ),
    .Q(\pll_control.oscbuf[2] ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__dffrnq_1 _681_ (.D(_038_),
    .RN(_018_),
    .CLK(\pll_control.clock ),
    .Q(\pll_control.count1[0] ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__dffrnq_1 _682_ (.D(_039_),
    .RN(_019_),
    .CLK(\pll_control.clock ),
    .Q(\pll_control.count1[1] ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__dffrnq_1 _683_ (.D(_040_),
    .RN(_020_),
    .CLK(\pll_control.clock ),
    .Q(\pll_control.count1[2] ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__dffrnq_1 _684_ (.D(_041_),
    .RN(_021_),
    .CLK(\pll_control.clock ),
    .Q(\pll_control.count1[3] ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__dffrnq_1 _685_ (.D(_042_),
    .RN(_022_),
    .CLK(\pll_control.clock ),
    .Q(\pll_control.count1[4] ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 _686_ (.I(\pll_control.clock ),
    .Z(net36),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__buf_4 input1 (.I(dco),
    .Z(net1),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 input10 (.I(ext_trim[11]),
    .Z(net10),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 input11 (.I(ext_trim[12]),
    .Z(net11),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 input12 (.I(ext_trim[13]),
    .Z(net12),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 input13 (.I(ext_trim[14]),
    .Z(net13),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 input14 (.I(ext_trim[15]),
    .Z(net14),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 input15 (.I(ext_trim[16]),
    .Z(net15),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 input16 (.I(ext_trim[17]),
    .Z(net16),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 input17 (.I(ext_trim[18]),
    .Z(net17),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 input18 (.I(ext_trim[19]),
    .Z(net18),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 input19 (.I(ext_trim[1]),
    .Z(net19),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 input2 (.I(div[0]),
    .Z(net2),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 input20 (.I(ext_trim[20]),
    .Z(net20),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 input21 (.I(ext_trim[21]),
    .Z(net21),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 input22 (.I(ext_trim[22]),
    .Z(net22),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 input23 (.I(ext_trim[23]),
    .Z(net23),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 input24 (.I(ext_trim[24]),
    .Z(net24),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 input25 (.I(ext_trim[25]),
    .Z(net25),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 input26 (.I(ext_trim[2]),
    .Z(net26),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 input27 (.I(ext_trim[3]),
    .Z(net27),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 input28 (.I(ext_trim[4]),
    .Z(net28),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 input29 (.I(ext_trim[5]),
    .Z(net29),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 input3 (.I(div[1]),
    .Z(net3),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 input30 (.I(ext_trim[6]),
    .Z(net30),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 input31 (.I(ext_trim[7]),
    .Z(net31),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 input32 (.I(ext_trim[8]),
    .Z(net32),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 input33 (.I(ext_trim[9]),
    .Z(net33),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 input34 (.I(osc),
    .Z(net34),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 input35 (.I(resetb),
    .Z(net35),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 input4 (.I(div[2]),
    .Z(net4),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 input5 (.I(div[3]),
    .Z(net5),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 input6 (.I(div[4]),
    .Z(net6),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 input7 (.I(enable),
    .Z(net7),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 input8 (.I(ext_trim[0]),
    .Z(net8),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 input9 (.I(ext_trim[10]),
    .Z(net9),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_4 output36 (.I(net36),
    .Z(clockp[0]),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__buf_8 output37 (.I(net37),
    .Z(clockp[1]),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__buf_1 rebuffer1 (.I(\ringosc.dstage[5].id.ts ),
    .Z(net39),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__buf_1 rebuffer2 (.I(\ringosc.dstage[5].id.ts ),
    .Z(net40),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 \ringosc.dstage[0].id.delaybuf0  (.I(\ringosc.dstage[0].id.in ),
    .Z(\ringosc.dstage[0].id.ts ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 \ringosc.dstage[0].id.delaybuf1  (.I(\ringosc.dstage[0].id.ts ),
    .Z(\ringosc.dstage[0].id.d0 ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__invz_1 \ringosc.dstage[0].id.delayen0  (.EN(\ringosc.dstage[0].id.trim[0] ),
    .I(\ringosc.dstage[0].id.d2 ),
    .ZN(\ringosc.dstage[0].id.out ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__invz_1 \ringosc.dstage[0].id.delayen1  (.EN(\ringosc.dstage[0].id.trim[1] ),
    .I(\ringosc.dstage[0].id.d0 ),
    .ZN(\ringosc.dstage[0].id.d1 ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__invz_1 \ringosc.dstage[0].id.delayenb0  (.EN(\ringosc.dstage[0].id.trim0b ),
    .I(\ringosc.dstage[0].id.ts ),
    .ZN(\ringosc.dstage[0].id.out ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__invz_1 \ringosc.dstage[0].id.delayenb1  (.EN(\ringosc.dstage[0].id.trim1b ),
    .I(\ringosc.dstage[0].id.ts ),
    .ZN(\ringosc.dstage[0].id.d1 ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkinv_2 \ringosc.dstage[0].id.delayint0  (.I(\ringosc.dstage[0].id.d1 ),
    .ZN(\ringosc.dstage[0].id.d2 ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkinv_1 \ringosc.dstage[0].id.trim0bar  (.I(\ringosc.dstage[0].id.trim[0] ),
    .ZN(\ringosc.dstage[0].id.trim0b ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkinv_1 \ringosc.dstage[0].id.trim1bar  (.I(\ringosc.dstage[0].id.trim[1] ),
    .ZN(\ringosc.dstage[0].id.trim1b ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 \ringosc.dstage[10].id.delaybuf0  (.I(\ringosc.dstage[10].id.in ),
    .Z(\ringosc.dstage[10].id.ts ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 \ringosc.dstage[10].id.delaybuf1  (.I(\ringosc.dstage[10].id.ts ),
    .Z(\ringosc.dstage[10].id.d0 ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__invz_1 \ringosc.dstage[10].id.delayen0  (.EN(\ringosc.dstage[10].id.trim[0] ),
    .I(\ringosc.dstage[10].id.d2 ),
    .ZN(\ringosc.dstage[10].id.out ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__invz_1 \ringosc.dstage[10].id.delayen1  (.EN(\ringosc.dstage[10].id.trim[1] ),
    .I(\ringosc.dstage[10].id.d0 ),
    .ZN(\ringosc.dstage[10].id.d1 ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__invz_1 \ringosc.dstage[10].id.delayenb0  (.EN(\ringosc.dstage[10].id.trim0b ),
    .I(\ringosc.dstage[10].id.ts ),
    .ZN(\ringosc.dstage[10].id.out ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__invz_1 \ringosc.dstage[10].id.delayenb1  (.EN(\ringosc.dstage[10].id.trim1b ),
    .I(\ringosc.dstage[10].id.ts ),
    .ZN(\ringosc.dstage[10].id.d1 ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkinv_2 \ringosc.dstage[10].id.delayint0  (.I(\ringosc.dstage[10].id.d1 ),
    .ZN(\ringosc.dstage[10].id.d2 ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkinv_1 \ringosc.dstage[10].id.trim0bar  (.I(\ringosc.dstage[10].id.trim[0] ),
    .ZN(\ringosc.dstage[10].id.trim0b ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkinv_1 \ringosc.dstage[10].id.trim1bar  (.I(\ringosc.dstage[10].id.trim[1] ),
    .ZN(\ringosc.dstage[10].id.trim1b ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 \ringosc.dstage[11].id.delaybuf0  (.I(\ringosc.dstage[10].id.out ),
    .Z(\ringosc.dstage[11].id.ts ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 \ringosc.dstage[11].id.delaybuf1  (.I(\ringosc.dstage[11].id.ts ),
    .Z(\ringosc.dstage[11].id.d0 ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__invz_2 \ringosc.dstage[11].id.delayen0  (.EN(\ringosc.dstage[11].id.trim[0] ),
    .I(\ringosc.dstage[11].id.d2 ),
    .ZN(\ringosc.dstage[11].id.out ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__invz_1 \ringosc.dstage[11].id.delayen1  (.EN(\ringosc.dstage[11].id.trim[1] ),
    .I(\ringosc.dstage[11].id.d0 ),
    .ZN(\ringosc.dstage[11].id.d1 ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__invz_2 \ringosc.dstage[11].id.delayenb0  (.EN(\ringosc.dstage[11].id.trim0b ),
    .I(\ringosc.dstage[11].id.ts ),
    .ZN(\ringosc.dstage[11].id.out ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__invz_1 \ringosc.dstage[11].id.delayenb1  (.EN(\ringosc.dstage[11].id.trim1b ),
    .I(\ringosc.dstage[11].id.ts ),
    .ZN(\ringosc.dstage[11].id.d1 ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkinv_2 \ringosc.dstage[11].id.delayint0  (.I(\ringosc.dstage[11].id.d1 ),
    .ZN(\ringosc.dstage[11].id.d2 ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkinv_1 \ringosc.dstage[11].id.trim0bar  (.I(\ringosc.dstage[11].id.trim[0] ),
    .ZN(\ringosc.dstage[11].id.trim0b ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkinv_1 \ringosc.dstage[11].id.trim1bar  (.I(\ringosc.dstage[11].id.trim[1] ),
    .ZN(\ringosc.dstage[11].id.trim1b ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 \ringosc.dstage[1].id.delaybuf0  (.I(\ringosc.dstage[0].id.out ),
    .Z(\ringosc.dstage[1].id.ts ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 \ringosc.dstage[1].id.delaybuf1  (.I(\ringosc.dstage[1].id.ts ),
    .Z(\ringosc.dstage[1].id.d0 ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__invz_1 \ringosc.dstage[1].id.delayen0  (.EN(\ringosc.dstage[1].id.trim[0] ),
    .I(\ringosc.dstage[1].id.d2 ),
    .ZN(\ringosc.dstage[1].id.out ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__invz_1 \ringosc.dstage[1].id.delayen1  (.EN(\ringosc.dstage[1].id.trim[1] ),
    .I(\ringosc.dstage[1].id.d0 ),
    .ZN(\ringosc.dstage[1].id.d1 ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__invz_1 \ringosc.dstage[1].id.delayenb0  (.EN(\ringosc.dstage[1].id.trim0b ),
    .I(\ringosc.dstage[1].id.ts ),
    .ZN(\ringosc.dstage[1].id.out ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__invz_1 \ringosc.dstage[1].id.delayenb1  (.EN(\ringosc.dstage[1].id.trim1b ),
    .I(\ringosc.dstage[1].id.ts ),
    .ZN(\ringosc.dstage[1].id.d1 ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkinv_2 \ringosc.dstage[1].id.delayint0  (.I(\ringosc.dstage[1].id.d1 ),
    .ZN(\ringosc.dstage[1].id.d2 ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkinv_1 \ringosc.dstage[1].id.trim0bar  (.I(\ringosc.dstage[1].id.trim[0] ),
    .ZN(\ringosc.dstage[1].id.trim0b ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkinv_1 \ringosc.dstage[1].id.trim1bar  (.I(\ringosc.dstage[1].id.trim[1] ),
    .ZN(\ringosc.dstage[1].id.trim1b ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 \ringosc.dstage[2].id.delaybuf0  (.I(\ringosc.dstage[1].id.out ),
    .Z(\ringosc.dstage[2].id.ts ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 \ringosc.dstage[2].id.delaybuf1  (.I(\ringosc.dstage[2].id.ts ),
    .Z(\ringosc.dstage[2].id.d0 ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__invz_1 \ringosc.dstage[2].id.delayen0  (.EN(\ringosc.dstage[2].id.trim[0] ),
    .I(\ringosc.dstage[2].id.d2 ),
    .ZN(\ringosc.dstage[2].id.out ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__invz_1 \ringosc.dstage[2].id.delayen1  (.EN(\ringosc.dstage[2].id.trim[1] ),
    .I(\ringosc.dstage[2].id.d0 ),
    .ZN(\ringosc.dstage[2].id.d1 ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__invz_1 \ringosc.dstage[2].id.delayenb0  (.EN(\ringosc.dstage[2].id.trim0b ),
    .I(\ringosc.dstage[2].id.ts ),
    .ZN(\ringosc.dstage[2].id.out ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__invz_1 \ringosc.dstage[2].id.delayenb1  (.EN(\ringosc.dstage[2].id.trim1b ),
    .I(\ringosc.dstage[2].id.ts ),
    .ZN(\ringosc.dstage[2].id.d1 ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkinv_2 \ringosc.dstage[2].id.delayint0  (.I(\ringosc.dstage[2].id.d1 ),
    .ZN(\ringosc.dstage[2].id.d2 ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkinv_1 \ringosc.dstage[2].id.trim0bar  (.I(\ringosc.dstage[2].id.trim[0] ),
    .ZN(\ringosc.dstage[2].id.trim0b ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkinv_1 \ringosc.dstage[2].id.trim1bar  (.I(\ringosc.dstage[2].id.trim[1] ),
    .ZN(\ringosc.dstage[2].id.trim1b ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 \ringosc.dstage[3].id.delaybuf0  (.I(\ringosc.dstage[2].id.out ),
    .Z(\ringosc.dstage[3].id.ts ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 \ringosc.dstage[3].id.delaybuf1  (.I(\ringosc.dstage[3].id.ts ),
    .Z(\ringosc.dstage[3].id.d0 ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__invz_1 \ringosc.dstage[3].id.delayen0  (.EN(\ringosc.dstage[3].id.trim[0] ),
    .I(\ringosc.dstage[3].id.d2 ),
    .ZN(\ringosc.dstage[3].id.out ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__invz_1 \ringosc.dstage[3].id.delayen1  (.EN(\ringosc.dstage[3].id.trim[1] ),
    .I(\ringosc.dstage[3].id.d0 ),
    .ZN(\ringosc.dstage[3].id.d1 ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__invz_1 \ringosc.dstage[3].id.delayenb0  (.EN(\ringosc.dstage[3].id.trim0b ),
    .I(\ringosc.dstage[3].id.ts ),
    .ZN(\ringosc.dstage[3].id.out ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__invz_1 \ringosc.dstage[3].id.delayenb1  (.EN(\ringosc.dstage[3].id.trim1b ),
    .I(\ringosc.dstage[3].id.ts ),
    .ZN(\ringosc.dstage[3].id.d1 ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkinv_2 \ringosc.dstage[3].id.delayint0  (.I(\ringosc.dstage[3].id.d1 ),
    .ZN(\ringosc.dstage[3].id.d2 ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkinv_1 \ringosc.dstage[3].id.trim0bar  (.I(\ringosc.dstage[3].id.trim[0] ),
    .ZN(\ringosc.dstage[3].id.trim0b ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkinv_1 \ringosc.dstage[3].id.trim1bar  (.I(\ringosc.dstage[3].id.trim[1] ),
    .ZN(\ringosc.dstage[3].id.trim1b ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 \ringosc.dstage[4].id.delaybuf0  (.I(\ringosc.dstage[3].id.out ),
    .Z(\ringosc.dstage[4].id.ts ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 \ringosc.dstage[4].id.delaybuf1  (.I(\ringosc.dstage[4].id.ts ),
    .Z(\ringosc.dstage[4].id.d0 ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__invz_1 \ringosc.dstage[4].id.delayen0  (.EN(\ringosc.dstage[4].id.trim[0] ),
    .I(\ringosc.dstage[4].id.d2 ),
    .ZN(\ringosc.dstage[4].id.out ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__invz_1 \ringosc.dstage[4].id.delayen1  (.EN(\ringosc.dstage[4].id.trim[1] ),
    .I(\ringosc.dstage[4].id.d0 ),
    .ZN(\ringosc.dstage[4].id.d1 ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__invz_1 \ringosc.dstage[4].id.delayenb0  (.EN(\ringosc.dstage[4].id.trim0b ),
    .I(\ringosc.dstage[4].id.ts ),
    .ZN(\ringosc.dstage[4].id.out ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__invz_1 \ringosc.dstage[4].id.delayenb1  (.EN(\ringosc.dstage[4].id.trim1b ),
    .I(\ringosc.dstage[4].id.ts ),
    .ZN(\ringosc.dstage[4].id.d1 ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkinv_2 \ringosc.dstage[4].id.delayint0  (.I(\ringosc.dstage[4].id.d1 ),
    .ZN(\ringosc.dstage[4].id.d2 ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkinv_1 \ringosc.dstage[4].id.trim0bar  (.I(\ringosc.dstage[4].id.trim[0] ),
    .ZN(\ringosc.dstage[4].id.trim0b ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkinv_1 \ringosc.dstage[4].id.trim1bar  (.I(\ringosc.dstage[4].id.trim[1] ),
    .ZN(\ringosc.dstage[4].id.trim1b ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 \ringosc.dstage[5].id.delaybuf0  (.I(\ringosc.dstage[4].id.out ),
    .Z(\ringosc.dstage[5].id.ts ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 \ringosc.dstage[5].id.delaybuf1  (.I(net40),
    .Z(\ringosc.dstage[5].id.d0 ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__invz_1 \ringosc.dstage[5].id.delayen0  (.EN(\ringosc.dstage[5].id.trim[0] ),
    .I(\ringosc.dstage[5].id.d2 ),
    .ZN(\ringosc.dstage[5].id.out ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__invz_1 \ringosc.dstage[5].id.delayen1  (.EN(\ringosc.dstage[5].id.trim[1] ),
    .I(\ringosc.dstage[5].id.d0 ),
    .ZN(\ringosc.dstage[5].id.d1 ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__invz_1 \ringosc.dstage[5].id.delayenb0  (.EN(\ringosc.dstage[5].id.trim0b ),
    .I(\ringosc.dstage[5].id.ts ),
    .ZN(\ringosc.dstage[5].id.out ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__invz_1 \ringosc.dstage[5].id.delayenb1  (.EN(\ringosc.dstage[5].id.trim1b ),
    .I(net39),
    .ZN(\ringosc.dstage[5].id.d1 ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkinv_2 \ringosc.dstage[5].id.delayint0  (.I(\ringosc.dstage[5].id.d1 ),
    .ZN(\ringosc.dstage[5].id.d2 ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkinv_1 \ringosc.dstage[5].id.trim0bar  (.I(\ringosc.dstage[5].id.trim[0] ),
    .ZN(\ringosc.dstage[5].id.trim0b ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkinv_1 \ringosc.dstage[5].id.trim1bar  (.I(\ringosc.dstage[5].id.trim[1] ),
    .ZN(\ringosc.dstage[5].id.trim1b ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 \ringosc.dstage[6].id.delaybuf0  (.I(\ringosc.dstage[5].id.out ),
    .Z(\ringosc.dstage[6].id.ts ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 \ringosc.dstage[6].id.delaybuf1  (.I(\ringosc.dstage[6].id.ts ),
    .Z(\ringosc.dstage[6].id.d0 ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__invz_1 \ringosc.dstage[6].id.delayen0  (.EN(\ringosc.dstage[6].id.trim[0] ),
    .I(\ringosc.dstage[6].id.d2 ),
    .ZN(\ringosc.dstage[6].id.out ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__invz_1 \ringosc.dstage[6].id.delayen1  (.EN(\ringosc.dstage[6].id.trim[1] ),
    .I(\ringosc.dstage[6].id.d0 ),
    .ZN(\ringosc.dstage[6].id.d1 ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__invz_1 \ringosc.dstage[6].id.delayenb0  (.EN(\ringosc.dstage[6].id.trim0b ),
    .I(\ringosc.dstage[6].id.ts ),
    .ZN(\ringosc.dstage[6].id.out ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__invz_1 \ringosc.dstage[6].id.delayenb1  (.EN(\ringosc.dstage[6].id.trim1b ),
    .I(\ringosc.dstage[6].id.ts ),
    .ZN(\ringosc.dstage[6].id.d1 ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkinv_2 \ringosc.dstage[6].id.delayint0  (.I(\ringosc.dstage[6].id.d1 ),
    .ZN(\ringosc.dstage[6].id.d2 ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkinv_1 \ringosc.dstage[6].id.trim0bar  (.I(\ringosc.dstage[6].id.trim[0] ),
    .ZN(\ringosc.dstage[6].id.trim0b ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkinv_1 \ringosc.dstage[6].id.trim1bar  (.I(\ringosc.dstage[6].id.trim[1] ),
    .ZN(\ringosc.dstage[6].id.trim1b ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 \ringosc.dstage[7].id.delaybuf0  (.I(\ringosc.dstage[6].id.out ),
    .Z(\ringosc.dstage[7].id.ts ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 \ringosc.dstage[7].id.delaybuf1  (.I(\ringosc.dstage[7].id.ts ),
    .Z(\ringosc.dstage[7].id.d0 ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__invz_1 \ringosc.dstage[7].id.delayen0  (.EN(\ringosc.dstage[7].id.trim[0] ),
    .I(\ringosc.dstage[7].id.d2 ),
    .ZN(\ringosc.dstage[7].id.out ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__invz_1 \ringosc.dstage[7].id.delayen1  (.EN(\ringosc.dstage[7].id.trim[1] ),
    .I(\ringosc.dstage[7].id.d0 ),
    .ZN(\ringosc.dstage[7].id.d1 ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__invz_1 \ringosc.dstage[7].id.delayenb0  (.EN(\ringosc.dstage[7].id.trim0b ),
    .I(\ringosc.dstage[7].id.ts ),
    .ZN(\ringosc.dstage[7].id.out ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__invz_1 \ringosc.dstage[7].id.delayenb1  (.EN(\ringosc.dstage[7].id.trim1b ),
    .I(\ringosc.dstage[7].id.ts ),
    .ZN(\ringosc.dstage[7].id.d1 ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkinv_2 \ringosc.dstage[7].id.delayint0  (.I(\ringosc.dstage[7].id.d1 ),
    .ZN(\ringosc.dstage[7].id.d2 ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkinv_1 \ringosc.dstage[7].id.trim0bar  (.I(\ringosc.dstage[7].id.trim[0] ),
    .ZN(\ringosc.dstage[7].id.trim0b ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkinv_1 \ringosc.dstage[7].id.trim1bar  (.I(\ringosc.dstage[7].id.trim[1] ),
    .ZN(\ringosc.dstage[7].id.trim1b ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 \ringosc.dstage[8].id.delaybuf0  (.I(\ringosc.dstage[7].id.out ),
    .Z(\ringosc.dstage[8].id.ts ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 \ringosc.dstage[8].id.delaybuf1  (.I(\ringosc.dstage[8].id.ts ),
    .Z(\ringosc.dstage[8].id.d0 ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__invz_1 \ringosc.dstage[8].id.delayen0  (.EN(\ringosc.dstage[8].id.trim[0] ),
    .I(\ringosc.dstage[8].id.d2 ),
    .ZN(\ringosc.dstage[8].id.out ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__invz_1 \ringosc.dstage[8].id.delayen1  (.EN(\ringosc.dstage[8].id.trim[1] ),
    .I(\ringosc.dstage[8].id.d0 ),
    .ZN(\ringosc.dstage[8].id.d1 ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__invz_1 \ringosc.dstage[8].id.delayenb0  (.EN(\ringosc.dstage[8].id.trim0b ),
    .I(\ringosc.dstage[8].id.ts ),
    .ZN(\ringosc.dstage[8].id.out ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__invz_1 \ringosc.dstage[8].id.delayenb1  (.EN(\ringosc.dstage[8].id.trim1b ),
    .I(\ringosc.dstage[8].id.ts ),
    .ZN(\ringosc.dstage[8].id.d1 ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkinv_2 \ringosc.dstage[8].id.delayint0  (.I(\ringosc.dstage[8].id.d1 ),
    .ZN(\ringosc.dstage[8].id.d2 ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkinv_1 \ringosc.dstage[8].id.trim0bar  (.I(\ringosc.dstage[8].id.trim[0] ),
    .ZN(\ringosc.dstage[8].id.trim0b ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkinv_1 \ringosc.dstage[8].id.trim1bar  (.I(\ringosc.dstage[8].id.trim[1] ),
    .ZN(\ringosc.dstage[8].id.trim1b ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 \ringosc.dstage[9].id.delaybuf0  (.I(\ringosc.dstage[8].id.out ),
    .Z(\ringosc.dstage[9].id.ts ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 \ringosc.dstage[9].id.delaybuf1  (.I(\ringosc.dstage[9].id.ts ),
    .Z(\ringosc.dstage[9].id.d0 ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__invz_1 \ringosc.dstage[9].id.delayen0  (.EN(\ringosc.dstage[9].id.trim[0] ),
    .I(\ringosc.dstage[9].id.d2 ),
    .ZN(\ringosc.dstage[10].id.in ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__invz_1 \ringosc.dstage[9].id.delayen1  (.EN(\ringosc.dstage[9].id.trim[1] ),
    .I(\ringosc.dstage[9].id.d0 ),
    .ZN(\ringosc.dstage[9].id.d1 ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__invz_1 \ringosc.dstage[9].id.delayenb0  (.EN(\ringosc.dstage[9].id.trim0b ),
    .I(\ringosc.dstage[9].id.ts ),
    .ZN(\ringosc.dstage[10].id.in ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__invz_1 \ringosc.dstage[9].id.delayenb1  (.EN(\ringosc.dstage[9].id.trim1b ),
    .I(\ringosc.dstage[9].id.ts ),
    .ZN(\ringosc.dstage[9].id.d1 ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkinv_2 \ringosc.dstage[9].id.delayint0  (.I(\ringosc.dstage[9].id.d1 ),
    .ZN(\ringosc.dstage[9].id.d2 ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkinv_1 \ringosc.dstage[9].id.trim0bar  (.I(\ringosc.dstage[9].id.trim[0] ),
    .ZN(\ringosc.dstage[9].id.trim0b ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkinv_1 \ringosc.dstage[9].id.trim1bar  (.I(\ringosc.dstage[9].id.trim[1] ),
    .ZN(\ringosc.dstage[9].id.trim1b ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkinv_2 \ringosc.ibufp00  (.I(\ringosc.dstage[0].id.in ),
    .ZN(\ringosc.c[0] ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkinv_8 \ringosc.ibufp01  (.I(\ringosc.c[0] ),
    .ZN(\pll_control.clock ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkinv_2 \ringosc.ibufp10  (.I(\ringosc.dstage[5].id.out ),
    .ZN(\ringosc.c[1] ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkinv_4 \ringosc.ibufp11  (.I(\ringosc.c[1] ),
    .ZN(net37),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__nor2_1 \ringosc.iss.ctrlen0  (.A1(\ringosc.iss.reset ),
    .A2(\ringosc.iss.trim[0] ),
    .ZN(\ringosc.iss.ctrl0b ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_1 \ringosc.iss.delaybuf0  (.I(\ringosc.dstage[11].id.out ),
    .Z(\ringosc.iss.d0 ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__invz_2 \ringosc.iss.delayen0  (.EN(\ringosc.iss.trim[0] ),
    .I(\ringosc.iss.d2 ),
    .ZN(\ringosc.dstage[0].id.in ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__invz_1 \ringosc.iss.delayen1  (.EN(\ringosc.iss.trim[1] ),
    .I(\ringosc.iss.d0 ),
    .ZN(\ringosc.iss.d1 ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__invz_2 \ringosc.iss.delayenb0  (.EN(\ringosc.iss.ctrl0b ),
    .I(\ringosc.dstage[11].id.out ),
    .ZN(\ringosc.dstage[0].id.in ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__invz_1 \ringosc.iss.delayenb1  (.EN(\ringosc.iss.trim1b ),
    .I(\ringosc.dstage[11].id.out ),
    .ZN(\ringosc.iss.d1 ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkinv_1 \ringosc.iss.delayint0  (.I(\ringosc.iss.d1 ),
    .ZN(\ringosc.iss.d2 ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__invz_2 \ringosc.iss.reseten0  (.EN(\ringosc.iss.reset ),
    .I(net38),
    .ZN(\ringosc.dstage[0].id.in ),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__tieh \ringosc.iss.reseten0_38  (.Z(net38),
    .VDD(VDD),
    .VSS(VSS));
 gf180mcu_fd_sc_mcu7t5v0__clkinv_1 \ringosc.iss.trim1bar  (.I(\ringosc.iss.trim[1] ),
    .ZN(\ringosc.iss.trim1b ),
    .VDD(VDD),
    .VSS(VSS));
endmodule
