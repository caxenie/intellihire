  function targMap = targDataMap(),

  ;%***********************
  ;% Create Parameter Map *
  ;%***********************
      
    nTotData      = 0; %add to this count as we go
    nTotSects     = 1;
    sectIdxOffset = 0;
    
    ;%
    ;% Define dummy sections & preallocate arrays
    ;%
    dumSection.nData = -1;  
    dumSection.data  = [];
    
    dumData.logicalSrcIdx = -1;
    dumData.dtTransOffset = -1;
    
    ;%
    ;% Init/prealloc paramMap
    ;%
    paramMap.nSections           = nTotSects;
    paramMap.sectIdxOffset       = sectIdxOffset;
      paramMap.sections(nTotSects) = dumSection; %prealloc
    paramMap.nTotData            = -1;
    
    ;%
    ;% Auto data (rtP)
    ;%
      section.nData     = 139;
      section.data(139)  = dumData; %prealloc
      
	  ;% rtP.N_a
	  section.data(1).logicalSrcIdx = 0;
	  section.data(1).dtTransOffset = 0;
	
	  ;% rtP.N_a_oojhulul21
	  section.data(2).logicalSrcIdx = 1;
	  section.data(2).dtTransOffset = 1;
	
	  ;% rtP.A_a
	  section.data(3).logicalSrcIdx = 2;
	  section.data(3).dtTransOffset = 2;
	
	  ;% rtP.D_a
	  section.data(4).logicalSrcIdx = 3;
	  section.data(4).dtTransOffset = 3;
	
	  ;% rtP.D_a_atzevrvx5s
	  section.data(5).logicalSrcIdx = 4;
	  section.data(5).dtTransOffset = 4;
	
	  ;% rtP.D_a_hypdpwh3sq
	  section.data(6).logicalSrcIdx = 5;
	  section.data(6).dtTransOffset = 5;
	
	  ;% rtP.A_a_fjaoebhh3i
	  section.data(7).logicalSrcIdx = 6;
	  section.data(7).dtTransOffset = 6;
	
	  ;% rtP.D_a_poal5lzl5j
	  section.data(8).logicalSrcIdx = 7;
	  section.data(8).dtTransOffset = 7;
	
	  ;% rtP.N_a_hwodywip2o
	  section.data(9).logicalSrcIdx = 8;
	  section.data(9).dtTransOffset = 8;
	
	  ;% rtP.A_a_onohpfidtp
	  section.data(10).logicalSrcIdx = 9;
	  section.data(10).dtTransOffset = 9;
	
	  ;% rtP.N_a_dzyonah23d
	  section.data(11).logicalSrcIdx = 10;
	  section.data(11).dtTransOffset = 10;
	
	  ;% rtP.A_a_oo4fe4sfqc
	  section.data(12).logicalSrcIdx = 11;
	  section.data(12).dtTransOffset = 11;
	
	  ;% rtP.D_a_gkv3rhxoiy
	  section.data(13).logicalSrcIdx = 12;
	  section.data(13).dtTransOffset = 12;
	
	  ;% rtP.A_a_jibubpdwxv
	  section.data(14).logicalSrcIdx = 13;
	  section.data(14).dtTransOffset = 13;
	
	  ;% rtP.N_a_ezq0ocx4xh
	  section.data(15).logicalSrcIdx = 14;
	  section.data(15).dtTransOffset = 14;
	
	  ;% rtP.N_b
	  section.data(16).logicalSrcIdx = 15;
	  section.data(16).dtTransOffset = 15;
	
	  ;% rtP.N_b_jyt1cuysux
	  section.data(17).logicalSrcIdx = 16;
	  section.data(17).dtTransOffset = 16;
	
	  ;% rtP.A_b
	  section.data(18).logicalSrcIdx = 17;
	  section.data(18).dtTransOffset = 17;
	
	  ;% rtP.D_b
	  section.data(19).logicalSrcIdx = 18;
	  section.data(19).dtTransOffset = 18;
	
	  ;% rtP.D_b_cdoy4yvefv
	  section.data(20).logicalSrcIdx = 19;
	  section.data(20).dtTransOffset = 19;
	
	  ;% rtP.D_b_c1utog13se
	  section.data(21).logicalSrcIdx = 20;
	  section.data(21).dtTransOffset = 20;
	
	  ;% rtP.A_b_ovzbbkizfb
	  section.data(22).logicalSrcIdx = 21;
	  section.data(22).dtTransOffset = 21;
	
	  ;% rtP.D_b_p0rdt1ddot
	  section.data(23).logicalSrcIdx = 22;
	  section.data(23).dtTransOffset = 22;
	
	  ;% rtP.N_b_dbun1azr0m
	  section.data(24).logicalSrcIdx = 23;
	  section.data(24).dtTransOffset = 23;
	
	  ;% rtP.A_b_abuqd5uyxo
	  section.data(25).logicalSrcIdx = 24;
	  section.data(25).dtTransOffset = 24;
	
	  ;% rtP.N_b_nd42u3w2py
	  section.data(26).logicalSrcIdx = 25;
	  section.data(26).dtTransOffset = 25;
	
	  ;% rtP.A_b_drywaugzqy
	  section.data(27).logicalSrcIdx = 26;
	  section.data(27).dtTransOffset = 26;
	
	  ;% rtP.D_b_omxzgxiggg
	  section.data(28).logicalSrcIdx = 27;
	  section.data(28).dtTransOffset = 27;
	
	  ;% rtP.A_b_gbnc3tunzh
	  section.data(29).logicalSrcIdx = 28;
	  section.data(29).dtTransOffset = 28;
	
	  ;% rtP.N_b_lpy30pwl3a
	  section.data(30).logicalSrcIdx = 29;
	  section.data(30).dtTransOffset = 29;
	
	  ;% rtP.N_c
	  section.data(31).logicalSrcIdx = 30;
	  section.data(31).dtTransOffset = 30;
	
	  ;% rtP.N_c_h5guvhlp1r
	  section.data(32).logicalSrcIdx = 31;
	  section.data(32).dtTransOffset = 31;
	
	  ;% rtP.A_c
	  section.data(33).logicalSrcIdx = 32;
	  section.data(33).dtTransOffset = 32;
	
	  ;% rtP.D_c
	  section.data(34).logicalSrcIdx = 33;
	  section.data(34).dtTransOffset = 33;
	
	  ;% rtP.D_c_clb3pwh4qd
	  section.data(35).logicalSrcIdx = 34;
	  section.data(35).dtTransOffset = 34;
	
	  ;% rtP.D_c_nsyqlhtqj5
	  section.data(36).logicalSrcIdx = 35;
	  section.data(36).dtTransOffset = 35;
	
	  ;% rtP.A_c_asjdlcaube
	  section.data(37).logicalSrcIdx = 36;
	  section.data(37).dtTransOffset = 36;
	
	  ;% rtP.D_c_esc5r5jntt
	  section.data(38).logicalSrcIdx = 37;
	  section.data(38).dtTransOffset = 37;
	
	  ;% rtP.N_c_awp42e2wrg
	  section.data(39).logicalSrcIdx = 38;
	  section.data(39).dtTransOffset = 38;
	
	  ;% rtP.A_c_jrwelih4tj
	  section.data(40).logicalSrcIdx = 39;
	  section.data(40).dtTransOffset = 39;
	
	  ;% rtP.N_c_kcutw0wvnt
	  section.data(41).logicalSrcIdx = 40;
	  section.data(41).dtTransOffset = 40;
	
	  ;% rtP.A_c_nyxkcrna4e
	  section.data(42).logicalSrcIdx = 41;
	  section.data(42).dtTransOffset = 41;
	
	  ;% rtP.D_c_oygo11yzn1
	  section.data(43).logicalSrcIdx = 42;
	  section.data(43).dtTransOffset = 42;
	
	  ;% rtP.A_c_dikexfrosm
	  section.data(44).logicalSrcIdx = 43;
	  section.data(44).dtTransOffset = 43;
	
	  ;% rtP.N_c_k3fgxt4ag4
	  section.data(45).logicalSrcIdx = 44;
	  section.data(45).dtTransOffset = 44;
	
	  ;% rtP.Out1_Y0
	  section.data(46).logicalSrcIdx = 45;
	  section.data(46).dtTransOffset = 45;
	
	  ;% rtP.u_Value
	  section.data(47).logicalSrcIdx = 46;
	  section.data(47).dtTransOffset = 46;
	
	  ;% rtP.Out1_Y0_d15z2sqfuh
	  section.data(48).logicalSrcIdx = 47;
	  section.data(48).dtTransOffset = 47;
	
	  ;% rtP.u_Value_af0bk4w1xj
	  section.data(49).logicalSrcIdx = 48;
	  section.data(49).dtTransOffset = 48;
	
	  ;% rtP.Out1_Y0_kmieloposb
	  section.data(50).logicalSrcIdx = 49;
	  section.data(50).dtTransOffset = 49;
	
	  ;% rtP.u_Value_d3wenmk50l
	  section.data(51).logicalSrcIdx = 50;
	  section.data(51).dtTransOffset = 50;
	
	  ;% rtP.Out1_Y0_ak01zxhnqg
	  section.data(52).logicalSrcIdx = 51;
	  section.data(52).dtTransOffset = 51;
	
	  ;% rtP.u_Value_a44qvrfyir
	  section.data(53).logicalSrcIdx = 52;
	  section.data(53).dtTransOffset = 52;
	
	  ;% rtP.Out1_Y0_h3v42ejtby
	  section.data(54).logicalSrcIdx = 53;
	  section.data(54).dtTransOffset = 53;
	
	  ;% rtP.u_Value_imznwmsyph
	  section.data(55).logicalSrcIdx = 54;
	  section.data(55).dtTransOffset = 54;
	
	  ;% rtP.Out1_Y0_irvbos3iq1
	  section.data(56).logicalSrcIdx = 55;
	  section.data(56).dtTransOffset = 55;
	
	  ;% rtP.u_Value_jnrbr0lq2t
	  section.data(57).logicalSrcIdx = 56;
	  section.data(57).dtTransOffset = 56;
	
	  ;% rtP.Out1_Y0_d5knnnho1s
	  section.data(58).logicalSrcIdx = 57;
	  section.data(58).dtTransOffset = 57;
	
	  ;% rtP.u_Value_dyxnwfw3lw
	  section.data(59).logicalSrcIdx = 58;
	  section.data(59).dtTransOffset = 58;
	
	  ;% rtP.Out1_Y0_iqvkyquvcv
	  section.data(60).logicalSrcIdx = 59;
	  section.data(60).dtTransOffset = 59;
	
	  ;% rtP.u_Value_peeihq3eqm
	  section.data(61).logicalSrcIdx = 60;
	  section.data(61).dtTransOffset = 60;
	
	  ;% rtP.Out1_Y0_mwk1wdyg41
	  section.data(62).logicalSrcIdx = 61;
	  section.data(62).dtTransOffset = 61;
	
	  ;% rtP.u_Value_bcgvks0d2b
	  section.data(63).logicalSrcIdx = 62;
	  section.data(63).dtTransOffset = 62;
	
	  ;% rtP.Out1_Y0_cveuuutdph
	  section.data(64).logicalSrcIdx = 63;
	  section.data(64).dtTransOffset = 63;
	
	  ;% rtP.u_Value_kog4riwu5a
	  section.data(65).logicalSrcIdx = 64;
	  section.data(65).dtTransOffset = 64;
	
	  ;% rtP.Out1_Y0_mhcgevt3ix
	  section.data(66).logicalSrcIdx = 65;
	  section.data(66).dtTransOffset = 65;
	
	  ;% rtP.u_Value_k51pmc0guv
	  section.data(67).logicalSrcIdx = 66;
	  section.data(67).dtTransOffset = 66;
	
	  ;% rtP.Out1_Y0_nqwjbl3t4v
	  section.data(68).logicalSrcIdx = 67;
	  section.data(68).dtTransOffset = 67;
	
	  ;% rtP.u_Value_epqq1snqgz
	  section.data(69).logicalSrcIdx = 68;
	  section.data(69).dtTransOffset = 68;
	
	  ;% rtP.Out1_Y0_i1cru3v3d5
	  section.data(70).logicalSrcIdx = 69;
	  section.data(70).dtTransOffset = 69;
	
	  ;% rtP.One_Value
	  section.data(71).logicalSrcIdx = 70;
	  section.data(71).dtTransOffset = 70;
	
	  ;% rtP.Out1_Y0_kzdbnm2xl3
	  section.data(72).logicalSrcIdx = 71;
	  section.data(72).dtTransOffset = 71;
	
	  ;% rtP.u_Value_bgtsdigesy
	  section.data(73).logicalSrcIdx = 72;
	  section.data(73).dtTransOffset = 72;
	
	  ;% rtP.Out1_Y0_aysco25yfp
	  section.data(74).logicalSrcIdx = 73;
	  section.data(74).dtTransOffset = 73;
	
	  ;% rtP.u_Value_i0mievjjm5
	  section.data(75).logicalSrcIdx = 74;
	  section.data(75).dtTransOffset = 74;
	
	  ;% rtP.Out1_Y0_hxc0ru5lgc
	  section.data(76).logicalSrcIdx = 75;
	  section.data(76).dtTransOffset = 75;
	
	  ;% rtP.u_Value_avx0tykbtl
	  section.data(77).logicalSrcIdx = 76;
	  section.data(77).dtTransOffset = 76;
	
	  ;% rtP.Out1_Y0_bvlacgihp0
	  section.data(78).logicalSrcIdx = 77;
	  section.data(78).dtTransOffset = 77;
	
	  ;% rtP.u_Value_lweuyrxoxe
	  section.data(79).logicalSrcIdx = 78;
	  section.data(79).dtTransOffset = 78;
	
	  ;% rtP.Out1_Y0_nt43sgff0h
	  section.data(80).logicalSrcIdx = 79;
	  section.data(80).dtTransOffset = 79;
	
	  ;% rtP.u_Value_f13hpm53qv
	  section.data(81).logicalSrcIdx = 80;
	  section.data(81).dtTransOffset = 80;
	
	  ;% rtP.Out1_Y0_cas3zl2fa0
	  section.data(82).logicalSrcIdx = 81;
	  section.data(82).dtTransOffset = 81;
	
	  ;% rtP.u_Value_bt4es1gnzv
	  section.data(83).logicalSrcIdx = 82;
	  section.data(83).dtTransOffset = 82;
	
	  ;% rtP.Out1_Y0_haz00o22po
	  section.data(84).logicalSrcIdx = 83;
	  section.data(84).dtTransOffset = 83;
	
	  ;% rtP.u_Value_oqpozg2zgw
	  section.data(85).logicalSrcIdx = 84;
	  section.data(85).dtTransOffset = 84;
	
	  ;% rtP.Out1_Y0_cbcrpp5koq
	  section.data(86).logicalSrcIdx = 85;
	  section.data(86).dtTransOffset = 85;
	
	  ;% rtP.u_Value_faem5jfsys
	  section.data(87).logicalSrcIdx = 86;
	  section.data(87).dtTransOffset = 86;
	
	  ;% rtP.Out1_Y0_emciigko23
	  section.data(88).logicalSrcIdx = 87;
	  section.data(88).dtTransOffset = 87;
	
	  ;% rtP.u_Value_jisznhmvi4
	  section.data(89).logicalSrcIdx = 88;
	  section.data(89).dtTransOffset = 88;
	
	  ;% rtP.Out1_Y0_fg2yvlo3sh
	  section.data(90).logicalSrcIdx = 89;
	  section.data(90).dtTransOffset = 89;
	
	  ;% rtP.u_Value_g4vnv1lstc
	  section.data(91).logicalSrcIdx = 90;
	  section.data(91).dtTransOffset = 90;
	
	  ;% rtP.Out1_Y0_fggnkc0tg3
	  section.data(92).logicalSrcIdx = 91;
	  section.data(92).dtTransOffset = 91;
	
	  ;% rtP.u_Value_bsdbkrthva
	  section.data(93).logicalSrcIdx = 92;
	  section.data(93).dtTransOffset = 92;
	
	  ;% rtP.Out1_Y0_ouwjoj2cot
	  section.data(94).logicalSrcIdx = 93;
	  section.data(94).dtTransOffset = 93;
	
	  ;% rtP.u_Value_eciy5u2lbv
	  section.data(95).logicalSrcIdx = 94;
	  section.data(95).dtTransOffset = 94;
	
	  ;% rtP.Out1_Y0_ludqsjyl5y
	  section.data(96).logicalSrcIdx = 95;
	  section.data(96).dtTransOffset = 95;
	
	  ;% rtP.u_Value_if3dx0enbx
	  section.data(97).logicalSrcIdx = 96;
	  section.data(97).dtTransOffset = 96;
	
	  ;% rtP.Out1_Y0_cfal5dyme1
	  section.data(98).logicalSrcIdx = 97;
	  section.data(98).dtTransOffset = 97;
	
	  ;% rtP.u_Value_c0pkel3rki
	  section.data(99).logicalSrcIdx = 98;
	  section.data(99).dtTransOffset = 98;
	
	  ;% rtP.Out1_Y0_myvtobus3i
	  section.data(100).logicalSrcIdx = 99;
	  section.data(100).dtTransOffset = 99;
	
	  ;% rtP.u_Value_pcugh0d1a0
	  section.data(101).logicalSrcIdx = 100;
	  section.data(101).dtTransOffset = 100;
	
	  ;% rtP.Out1_Y0_pbw30mzbac
	  section.data(102).logicalSrcIdx = 101;
	  section.data(102).dtTransOffset = 101;
	
	  ;% rtP.u_Value_grkvtw2xqe
	  section.data(103).logicalSrcIdx = 102;
	  section.data(103).dtTransOffset = 102;
	
	  ;% rtP.Out1_Y0_bb3o5wy5yu
	  section.data(104).logicalSrcIdx = 103;
	  section.data(104).dtTransOffset = 103;
	
	  ;% rtP.u_Value_k5a1a42dkk
	  section.data(105).logicalSrcIdx = 104;
	  section.data(105).dtTransOffset = 104;
	
	  ;% rtP.Out1_Y0_obop2nxz3j
	  section.data(106).logicalSrcIdx = 105;
	  section.data(106).dtTransOffset = 105;
	
	  ;% rtP.u_Value_azvegnfva2
	  section.data(107).logicalSrcIdx = 106;
	  section.data(107).dtTransOffset = 106;
	
	  ;% rtP.A1_Time0
	  section.data(108).logicalSrcIdx = 107;
	  section.data(108).dtTransOffset = 107;
	
	  ;% rtP.A1_Data0
	  section.data(109).logicalSrcIdx = 108;
	  section.data(109).dtTransOffset = 207;
	
	  ;% rtP.A_Time0
	  section.data(110).logicalSrcIdx = 109;
	  section.data(110).dtTransOffset = 307;
	
	  ;% rtP.A_Data0
	  section.data(111).logicalSrcIdx = 110;
	  section.data(111).dtTransOffset = 407;
	
	  ;% rtP.C_Time0
	  section.data(112).logicalSrcIdx = 111;
	  section.data(112).dtTransOffset = 507;
	
	  ;% rtP.C_Data0
	  section.data(113).logicalSrcIdx = 112;
	  section.data(113).dtTransOffset = 607;
	
	  ;% rtP.E_Time0
	  section.data(114).logicalSrcIdx = 113;
	  section.data(114).dtTransOffset = 707;
	
	  ;% rtP.E_Data0
	  section.data(115).logicalSrcIdx = 114;
	  section.data(115).dtTransOffset = 807;
	
	  ;% rtP.xdata_Value
	  section.data(116).logicalSrcIdx = 115;
	  section.data(116).dtTransOffset = 907;
	
	  ;% rtP.Weight_Value
	  section.data(117).logicalSrcIdx = 116;
	  section.data(117).dtTransOffset = 1008;
	
	  ;% rtP.O_Time0
	  section.data(118).logicalSrcIdx = 117;
	  section.data(118).dtTransOffset = 1009;
	
	  ;% rtP.O_Data0
	  section.data(119).logicalSrcIdx = 118;
	  section.data(119).dtTransOffset = 1109;
	
	  ;% rtP.S_Value
	  section.data(120).logicalSrcIdx = 119;
	  section.data(120).dtTransOffset = 1209;
	
	  ;% rtP.Weight_Value_ekozowvkro
	  section.data(121).logicalSrcIdx = 120;
	  section.data(121).dtTransOffset = 1310;
	
	  ;% rtP.T_Value
	  section.data(122).logicalSrcIdx = 121;
	  section.data(122).dtTransOffset = 1311;
	
	  ;% rtP.Weight_Value_k3wui3ulrr
	  section.data(123).logicalSrcIdx = 122;
	  section.data(123).dtTransOffset = 1412;
	
	  ;% rtP.AL_Value
	  section.data(124).logicalSrcIdx = 123;
	  section.data(124).dtTransOffset = 1413;
	
	  ;% rtP.Weight_Value_bkdm0homzl
	  section.data(125).logicalSrcIdx = 124;
	  section.data(125).dtTransOffset = 1514;
	
	  ;% rtP.D_Value
	  section.data(126).logicalSrcIdx = 125;
	  section.data(126).dtTransOffset = 1515;
	
	  ;% rtP.Weight_Value_p5jkvbcink
	  section.data(127).logicalSrcIdx = 126;
	  section.data(127).dtTransOffset = 1616;
	
	  ;% rtP.AR_Value
	  section.data(128).logicalSrcIdx = 127;
	  section.data(128).dtTransOffset = 1617;
	
	  ;% rtP.Weight_Value_f5nvs5sikx
	  section.data(129).logicalSrcIdx = 128;
	  section.data(129).dtTransOffset = 1718;
	
	  ;% rtP.Weight_Value_lskmsb11xd
	  section.data(130).logicalSrcIdx = 129;
	  section.data(130).dtTransOffset = 1719;
	
	  ;% rtP.Weight_Value_dyxf1j3gql
	  section.data(131).logicalSrcIdx = 130;
	  section.data(131).dtTransOffset = 1720;
	
	  ;% rtP.Weight_Value_h3t0de0zyt
	  section.data(132).logicalSrcIdx = 131;
	  section.data(132).dtTransOffset = 1721;
	
	  ;% rtP.Weight_Value_koi5htqqsy
	  section.data(133).logicalSrcIdx = 132;
	  section.data(133).dtTransOffset = 1722;
	
	  ;% rtP.Weight_Value_oonhgolpho
	  section.data(134).logicalSrcIdx = 133;
	  section.data(134).dtTransOffset = 1723;
	
	  ;% rtP.Weight_Value_b0lo0a4fxu
	  section.data(135).logicalSrcIdx = 134;
	  section.data(135).dtTransOffset = 1724;
	
	  ;% rtP.Weight_Value_ncx0rvrhff
	  section.data(136).logicalSrcIdx = 135;
	  section.data(136).dtTransOffset = 1725;
	
	  ;% rtP.Zero_Value
	  section.data(137).logicalSrcIdx = 136;
	  section.data(137).dtTransOffset = 1726;
	
	  ;% rtP.MidRange_Value
	  section.data(138).logicalSrcIdx = 137;
	  section.data(138).dtTransOffset = 1727;
	
	  ;% rtP.Switch_Threshold
	  section.data(139).logicalSrcIdx = 138;
	  section.data(139).dtTransOffset = 1728;
	
      nTotData = nTotData + section.nData;
      paramMap.sections(1) = section;
      clear section
      
    
      ;%
      ;% Non-auto Data (parameter)
      ;%
    

    ;%
    ;% Add final counts to struct.
    ;%
    paramMap.nTotData = nTotData;
    


  ;%**************************
  ;% Create Block Output Map *
  ;%**************************
      
    nTotData      = 0; %add to this count as we go
    nTotSects     = 31;
    sectIdxOffset = 0;
    
    ;%
    ;% Define dummy sections & preallocate arrays
    ;%
    dumSection.nData = -1;  
    dumSection.data  = [];
    
    dumData.logicalSrcIdx = -1;
    dumData.dtTransOffset = -1;
    
    ;%
    ;% Init/prealloc sigMap
    ;%
    sigMap.nSections           = nTotSects;
    sigMap.sectIdxOffset       = sectIdxOffset;
      sigMap.sections(nTotSects) = dumSection; %prealloc
    sigMap.nTotData            = -1;
    
    ;%
    ;% Auto data (rtB)
    ;%
      section.nData     = 51;
      section.data(51)  = dumData; %prealloc
      
	  ;% rtB.ejraml2cnc
	  section.data(1).logicalSrcIdx = 0;
	  section.data(1).dtTransOffset = 0;
	
	  ;% rtB.kqg3nqgidn
	  section.data(2).logicalSrcIdx = 1;
	  section.data(2).dtTransOffset = 1;
	
	  ;% rtB.mmhmg1ezgs
	  section.data(3).logicalSrcIdx = 2;
	  section.data(3).dtTransOffset = 2;
	
	  ;% rtB.icmlips5aw
	  section.data(4).logicalSrcIdx = 3;
	  section.data(4).dtTransOffset = 3;
	
	  ;% rtB.egjtu2ftmx
	  section.data(5).logicalSrcIdx = 4;
	  section.data(5).dtTransOffset = 4;
	
	  ;% rtB.bgv5je1zun
	  section.data(6).logicalSrcIdx = 5;
	  section.data(6).dtTransOffset = 5;
	
	  ;% rtB.gpou42e0tm
	  section.data(7).logicalSrcIdx = 6;
	  section.data(7).dtTransOffset = 6;
	
	  ;% rtB.ld0zszfhel
	  section.data(8).logicalSrcIdx = 7;
	  section.data(8).dtTransOffset = 7;
	
	  ;% rtB.ergnhz1uzn
	  section.data(9).logicalSrcIdx = 8;
	  section.data(9).dtTransOffset = 8;
	
	  ;% rtB.bqzqfnaxfc
	  section.data(10).logicalSrcIdx = 9;
	  section.data(10).dtTransOffset = 9;
	
	  ;% rtB.dgkbsqiyxd
	  section.data(11).logicalSrcIdx = 10;
	  section.data(11).dtTransOffset = 10;
	
	  ;% rtB.ecjxcpaayq
	  section.data(12).logicalSrcIdx = 11;
	  section.data(12).dtTransOffset = 11;
	
	  ;% rtB.jqegmipql0
	  section.data(13).logicalSrcIdx = 12;
	  section.data(13).dtTransOffset = 112;
	
	  ;% rtB.dodrqthtu1
	  section.data(14).logicalSrcIdx = 13;
	  section.data(14).dtTransOffset = 113;
	
	  ;% rtB.dkf5lf0ih2
	  section.data(15).logicalSrcIdx = 14;
	  section.data(15).dtTransOffset = 114;
	
	  ;% rtB.azfdxultzx
	  section.data(16).logicalSrcIdx = 15;
	  section.data(16).dtTransOffset = 115;
	
	  ;% rtB.lwusd2plu0
	  section.data(17).logicalSrcIdx = 16;
	  section.data(17).dtTransOffset = 116;
	
	  ;% rtB.pmiab44faz
	  section.data(18).logicalSrcIdx = 17;
	  section.data(18).dtTransOffset = 117;
	
	  ;% rtB.dxsawo501y
	  section.data(19).logicalSrcIdx = 18;
	  section.data(19).dtTransOffset = 118;
	
	  ;% rtB.jm4as15i1u
	  section.data(20).logicalSrcIdx = 19;
	  section.data(20).dtTransOffset = 219;
	
	  ;% rtB.bbejdthm00
	  section.data(21).logicalSrcIdx = 20;
	  section.data(21).dtTransOffset = 220;
	
	  ;% rtB.kf4tmpliyc
	  section.data(22).logicalSrcIdx = 21;
	  section.data(22).dtTransOffset = 221;
	
	  ;% rtB.aau1f4rvzr
	  section.data(23).logicalSrcIdx = 22;
	  section.data(23).dtTransOffset = 322;
	
	  ;% rtB.bocmebwa4a
	  section.data(24).logicalSrcIdx = 23;
	  section.data(24).dtTransOffset = 323;
	
	  ;% rtB.prgq2lqckt
	  section.data(25).logicalSrcIdx = 24;
	  section.data(25).dtTransOffset = 424;
	
	  ;% rtB.dqxt35jmlm
	  section.data(26).logicalSrcIdx = 25;
	  section.data(26).dtTransOffset = 425;
	
	  ;% rtB.ahvhce2dnr
	  section.data(27).logicalSrcIdx = 26;
	  section.data(27).dtTransOffset = 426;
	
	  ;% rtB.dhxh5qmltp
	  section.data(28).logicalSrcIdx = 27;
	  section.data(28).dtTransOffset = 527;
	
	  ;% rtB.mf5k2fyytu
	  section.data(29).logicalSrcIdx = 28;
	  section.data(29).dtTransOffset = 528;
	
	  ;% rtB.hr1mdpoart
	  section.data(30).logicalSrcIdx = 29;
	  section.data(30).dtTransOffset = 629;
	
	  ;% rtB.ewj3xaw32m
	  section.data(31).logicalSrcIdx = 30;
	  section.data(31).dtTransOffset = 630;
	
	  ;% rtB.pd2v535kng
	  section.data(32).logicalSrcIdx = 31;
	  section.data(32).dtTransOffset = 731;
	
	  ;% rtB.pqbriyjjej
	  section.data(33).logicalSrcIdx = 32;
	  section.data(33).dtTransOffset = 732;
	
	  ;% rtB.ozk0feligr
	  section.data(34).logicalSrcIdx = 33;
	  section.data(34).dtTransOffset = 833;
	
	  ;% rtB.kkynikatj3
	  section.data(35).logicalSrcIdx = 34;
	  section.data(35).dtTransOffset = 834;
	
	  ;% rtB.l13a3pxed0
	  section.data(36).logicalSrcIdx = 35;
	  section.data(36).dtTransOffset = 935;
	
	  ;% rtB.bxkpzrvbmb
	  section.data(37).logicalSrcIdx = 36;
	  section.data(37).dtTransOffset = 936;
	
	  ;% rtB.blwfysbt0r
	  section.data(38).logicalSrcIdx = 37;
	  section.data(38).dtTransOffset = 1037;
	
	  ;% rtB.pdmbrbuzqu
	  section.data(39).logicalSrcIdx = 38;
	  section.data(39).dtTransOffset = 1038;
	
	  ;% rtB.porpibzqnz
	  section.data(40).logicalSrcIdx = 39;
	  section.data(40).dtTransOffset = 1139;
	
	  ;% rtB.cvulgbdrdm
	  section.data(41).logicalSrcIdx = 40;
	  section.data(41).dtTransOffset = 1140;
	
	  ;% rtB.hgqxqbivri
	  section.data(42).logicalSrcIdx = 41;
	  section.data(42).dtTransOffset = 1241;
	
	  ;% rtB.mpvrvm0xyu
	  section.data(43).logicalSrcIdx = 42;
	  section.data(43).dtTransOffset = 1242;
	
	  ;% rtB.bd511ffw5y
	  section.data(44).logicalSrcIdx = 43;
	  section.data(44).dtTransOffset = 1343;
	
	  ;% rtB.eoi50a5ttb
	  section.data(45).logicalSrcIdx = 44;
	  section.data(45).dtTransOffset = 1344;
	
	  ;% rtB.cyzp543l3u
	  section.data(46).logicalSrcIdx = 45;
	  section.data(46).dtTransOffset = 1345;
	
	  ;% rtB.ic5ti3hjdm
	  section.data(47).logicalSrcIdx = 46;
	  section.data(47).dtTransOffset = 1346;
	
	  ;% rtB.dbimmocx15
	  section.data(48).logicalSrcIdx = 47;
	  section.data(48).dtTransOffset = 1347;
	
	  ;% rtB.nivjlnzek5
	  section.data(49).logicalSrcIdx = 48;
	  section.data(49).dtTransOffset = 1348;
	
	  ;% rtB.oysntbk4kl
	  section.data(50).logicalSrcIdx = 49;
	  section.data(50).dtTransOffset = 1349;
	
	  ;% rtB.onihjol30o
	  section.data(51).logicalSrcIdx = 50;
	  section.data(51).dtTransOffset = 1350;
	
      nTotData = nTotData + section.nData;
      sigMap.sections(1) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% rtB.ldmdcqsgrp.pqteeale5n
	  section.data(1).logicalSrcIdx = 51;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      sigMap.sections(2) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% rtB.mbmqqoarrc.atr3n1o2px
	  section.data(1).logicalSrcIdx = 52;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      sigMap.sections(3) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% rtB.ev2qnhdaiw.pqteeale5n
	  section.data(1).logicalSrcIdx = 53;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      sigMap.sections(4) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% rtB.mhw0zthztr.atr3n1o2px
	  section.data(1).logicalSrcIdx = 54;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      sigMap.sections(5) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% rtB.b4fsehh1oe.pqteeale5n
	  section.data(1).logicalSrcIdx = 55;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      sigMap.sections(6) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% rtB.pksk3bp0ad.atr3n1o2px
	  section.data(1).logicalSrcIdx = 56;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      sigMap.sections(7) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% rtB.iznhf4ggmb.pqteeale5n
	  section.data(1).logicalSrcIdx = 57;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      sigMap.sections(8) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% rtB.ap3ezzssma.atr3n1o2px
	  section.data(1).logicalSrcIdx = 58;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      sigMap.sections(9) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% rtB.ah3bwhijyp.pqteeale5n
	  section.data(1).logicalSrcIdx = 59;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      sigMap.sections(10) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% rtB.ood4hnt5ei.atr3n1o2px
	  section.data(1).logicalSrcIdx = 60;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      sigMap.sections(11) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% rtB.lh4zvktjrg.pqteeale5n
	  section.data(1).logicalSrcIdx = 61;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      sigMap.sections(12) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% rtB.azsinjrdhu.atr3n1o2px
	  section.data(1).logicalSrcIdx = 62;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      sigMap.sections(13) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% rtB.jrg3tx4nza.pqteeale5n
	  section.data(1).logicalSrcIdx = 63;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      sigMap.sections(14) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% rtB.nhom0zltaf.atr3n1o2px
	  section.data(1).logicalSrcIdx = 64;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      sigMap.sections(15) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% rtB.djuyhuwenn.pqteeale5n
	  section.data(1).logicalSrcIdx = 65;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      sigMap.sections(16) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% rtB.oijj04cs3h.atr3n1o2px
	  section.data(1).logicalSrcIdx = 66;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      sigMap.sections(17) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% rtB.cjayb1yiic.pqteeale5n
	  section.data(1).logicalSrcIdx = 67;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      sigMap.sections(18) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% rtB.fvswwmzdv2.atr3n1o2px
	  section.data(1).logicalSrcIdx = 68;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      sigMap.sections(19) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% rtB.dlvkf0rlu1.pqteeale5n
	  section.data(1).logicalSrcIdx = 69;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      sigMap.sections(20) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% rtB.dxwknx1onf.atr3n1o2px
	  section.data(1).logicalSrcIdx = 70;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      sigMap.sections(21) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% rtB.kipgjbpv3a.pqteeale5n
	  section.data(1).logicalSrcIdx = 71;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      sigMap.sections(22) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% rtB.hzposxf5kl.atr3n1o2px
	  section.data(1).logicalSrcIdx = 72;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      sigMap.sections(23) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% rtB.mbfe4mrkdx.pqteeale5n
	  section.data(1).logicalSrcIdx = 73;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      sigMap.sections(24) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% rtB.fljg5cx20p.atr3n1o2px
	  section.data(1).logicalSrcIdx = 74;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      sigMap.sections(25) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% rtB.kzunpguvig.pqteeale5n
	  section.data(1).logicalSrcIdx = 75;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      sigMap.sections(26) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% rtB.ncej1st4nu.atr3n1o2px
	  section.data(1).logicalSrcIdx = 76;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      sigMap.sections(27) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% rtB.ohhhx4jkfy.pqteeale5n
	  section.data(1).logicalSrcIdx = 77;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      sigMap.sections(28) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% rtB.nichsl1xkc.atr3n1o2px
	  section.data(1).logicalSrcIdx = 78;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      sigMap.sections(29) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% rtB.ggvzurdyei2.pqteeale5n
	  section.data(1).logicalSrcIdx = 79;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      sigMap.sections(30) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% rtB.iyvfkw0yfbs.atr3n1o2px
	  section.data(1).logicalSrcIdx = 80;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      sigMap.sections(31) = section;
      clear section
      
    
      ;%
      ;% Non-auto Data (signal)
      ;%
    

    ;%
    ;% Add final counts to struct.
    ;%
    sigMap.nTotData = nTotData;
    


  ;%*******************
  ;% Create DWork Map *
  ;%*******************
      
    nTotData      = 0; %add to this count as we go
    nTotSects     = 34;
    sectIdxOffset = 31;
    
    ;%
    ;% Define dummy sections & preallocate arrays
    ;%
    dumSection.nData = -1;  
    dumSection.data  = [];
    
    dumData.logicalSrcIdx = -1;
    dumData.dtTransOffset = -1;
    
    ;%
    ;% Init/prealloc dworkMap
    ;%
    dworkMap.nSections           = nTotSects;
    dworkMap.sectIdxOffset       = sectIdxOffset;
      dworkMap.sections(nTotSects) = dumSection; %prealloc
    dworkMap.nTotData            = -1;
    
    ;%
    ;% Auto data (rtDW)
    ;%
      section.nData     = 13;
      section.data(13)  = dumData; %prealloc
      
	  ;% rtDW.ijo5vr0dsf.TimePtr
	  section.data(1).logicalSrcIdx = 0;
	  section.data(1).dtTransOffset = 0;
	
	  ;% rtDW.pk2hxtizcr.AQHandles
	  section.data(2).logicalSrcIdx = 1;
	  section.data(2).dtTransOffset = 1;
	
	  ;% rtDW.ii2j2l1ar3.TimePtr
	  section.data(3).logicalSrcIdx = 2;
	  section.data(3).dtTransOffset = 2;
	
	  ;% rtDW.bvagcp555x.AQHandles
	  section.data(4).logicalSrcIdx = 3;
	  section.data(4).dtTransOffset = 3;
	
	  ;% rtDW.istisp00or.TimePtr
	  section.data(5).logicalSrcIdx = 4;
	  section.data(5).dtTransOffset = 4;
	
	  ;% rtDW.k2bd42oqgp.AQHandles
	  section.data(6).logicalSrcIdx = 5;
	  section.data(6).dtTransOffset = 5;
	
	  ;% rtDW.aeemq5hqyu.TimePtr
	  section.data(7).logicalSrcIdx = 6;
	  section.data(7).dtTransOffset = 6;
	
	  ;% rtDW.hrgk2314cc.AQHandles
	  section.data(8).logicalSrcIdx = 7;
	  section.data(8).dtTransOffset = 7;
	
	  ;% rtDW.gooemqeirj.TimePtr
	  section.data(9).logicalSrcIdx = 8;
	  section.data(9).dtTransOffset = 8;
	
	  ;% rtDW.g5dgz4ft44.AQHandles
	  section.data(10).logicalSrcIdx = 9;
	  section.data(10).dtTransOffset = 9;
	
	  ;% rtDW.h3ebubtfed.AQHandles
	  section.data(11).logicalSrcIdx = 10;
	  section.data(11).dtTransOffset = 10;
	
	  ;% rtDW.fkxihupgne.LoggedData
	  section.data(12).logicalSrcIdx = 11;
	  section.data(12).dtTransOffset = 11;
	
	  ;% rtDW.masdd02fj4.LoggedData
	  section.data(13).logicalSrcIdx = 12;
	  section.data(13).dtTransOffset = 12;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(1) = section;
      clear section
      
      section.nData     = 32;
      section.data(32)  = dumData; %prealloc
      
	  ;% rtDW.mdjual5xav.PrevIndex
	  section.data(1).logicalSrcIdx = 13;
	  section.data(1).dtTransOffset = 0;
	
	  ;% rtDW.mrfcfph0a2.PrevIndex
	  section.data(2).logicalSrcIdx = 14;
	  section.data(2).dtTransOffset = 1;
	
	  ;% rtDW.j0ioqstjuw.PrevIndex
	  section.data(3).logicalSrcIdx = 15;
	  section.data(3).dtTransOffset = 2;
	
	  ;% rtDW.kfrlm4drjl.PrevIndex
	  section.data(4).logicalSrcIdx = 16;
	  section.data(4).dtTransOffset = 3;
	
	  ;% rtDW.n1lmki10yy.PrevIndex
	  section.data(5).logicalSrcIdx = 17;
	  section.data(5).dtTransOffset = 4;
	
	  ;% rtDW.kwxe2ummmz
	  section.data(6).logicalSrcIdx = 18;
	  section.data(6).dtTransOffset = 5;
	
	  ;% rtDW.ndyjviitih
	  section.data(7).logicalSrcIdx = 19;
	  section.data(7).dtTransOffset = 6;
	
	  ;% rtDW.btdqg3gcar
	  section.data(8).logicalSrcIdx = 20;
	  section.data(8).dtTransOffset = 107;
	
	  ;% rtDW.goc4dqrjyi
	  section.data(9).logicalSrcIdx = 21;
	  section.data(9).dtTransOffset = 108;
	
	  ;% rtDW.bywyaogev2
	  section.data(10).logicalSrcIdx = 22;
	  section.data(10).dtTransOffset = 209;
	
	  ;% rtDW.jscfnuoswc
	  section.data(11).logicalSrcIdx = 23;
	  section.data(11).dtTransOffset = 210;
	
	  ;% rtDW.dy1vjcdlzk
	  section.data(12).logicalSrcIdx = 24;
	  section.data(12).dtTransOffset = 311;
	
	  ;% rtDW.hihv1wulcm
	  section.data(13).logicalSrcIdx = 25;
	  section.data(13).dtTransOffset = 312;
	
	  ;% rtDW.l5ovt5hhfo
	  section.data(14).logicalSrcIdx = 26;
	  section.data(14).dtTransOffset = 413;
	
	  ;% rtDW.jf1tzgil21
	  section.data(15).logicalSrcIdx = 27;
	  section.data(15).dtTransOffset = 414;
	
	  ;% rtDW.liz1vj30uh
	  section.data(16).logicalSrcIdx = 28;
	  section.data(16).dtTransOffset = 515;
	
	  ;% rtDW.c5j4u1xqw3
	  section.data(17).logicalSrcIdx = 29;
	  section.data(17).dtTransOffset = 516;
	
	  ;% rtDW.gq0bee352a
	  section.data(18).logicalSrcIdx = 30;
	  section.data(18).dtTransOffset = 617;
	
	  ;% rtDW.ogdam0v3pj
	  section.data(19).logicalSrcIdx = 31;
	  section.data(19).dtTransOffset = 618;
	
	  ;% rtDW.exkgoixz3c
	  section.data(20).logicalSrcIdx = 32;
	  section.data(20).dtTransOffset = 719;
	
	  ;% rtDW.e4dqg4rjlm
	  section.data(21).logicalSrcIdx = 33;
	  section.data(21).dtTransOffset = 720;
	
	  ;% rtDW.gfpopwu3z2
	  section.data(22).logicalSrcIdx = 34;
	  section.data(22).dtTransOffset = 821;
	
	  ;% rtDW.ghka0rzoxm
	  section.data(23).logicalSrcIdx = 35;
	  section.data(23).dtTransOffset = 822;
	
	  ;% rtDW.bgcc43lxq4
	  section.data(24).logicalSrcIdx = 36;
	  section.data(24).dtTransOffset = 923;
	
	  ;% rtDW.mlf3uj2ibv
	  section.data(25).logicalSrcIdx = 37;
	  section.data(25).dtTransOffset = 924;
	
	  ;% rtDW.hqoz04dgea
	  section.data(26).logicalSrcIdx = 38;
	  section.data(26).dtTransOffset = 1025;
	
	  ;% rtDW.dwcisdfkym
	  section.data(27).logicalSrcIdx = 39;
	  section.data(27).dtTransOffset = 1026;
	
	  ;% rtDW.csc00e4inz
	  section.data(28).logicalSrcIdx = 40;
	  section.data(28).dtTransOffset = 1127;
	
	  ;% rtDW.aaycx4m1zk
	  section.data(29).logicalSrcIdx = 41;
	  section.data(29).dtTransOffset = 1128;
	
	  ;% rtDW.j3vmyv1eru
	  section.data(30).logicalSrcIdx = 42;
	  section.data(30).dtTransOffset = 1229;
	
	  ;% rtDW.ldnqtcisa2
	  section.data(31).logicalSrcIdx = 43;
	  section.data(31).dtTransOffset = 1230;
	
	  ;% rtDW.mw0vrf2zq0
	  section.data(32).logicalSrcIdx = 44;
	  section.data(32).dtTransOffset = 1331;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(2) = section;
      clear section
      
      section.nData     = 48;
      section.data(48)  = dumData; %prealloc
      
	  ;% rtDW.ppqjzwpqsa
	  section.data(1).logicalSrcIdx = 45;
	  section.data(1).dtTransOffset = 0;
	
	  ;% rtDW.k04k2of1c1
	  section.data(2).logicalSrcIdx = 46;
	  section.data(2).dtTransOffset = 1;
	
	  ;% rtDW.atu3ph2kwr
	  section.data(3).logicalSrcIdx = 47;
	  section.data(3).dtTransOffset = 2;
	
	  ;% rtDW.nlqqo2kdb0
	  section.data(4).logicalSrcIdx = 48;
	  section.data(4).dtTransOffset = 3;
	
	  ;% rtDW.nkfvztudn4
	  section.data(5).logicalSrcIdx = 49;
	  section.data(5).dtTransOffset = 4;
	
	  ;% rtDW.ao4oedxurf
	  section.data(6).logicalSrcIdx = 50;
	  section.data(6).dtTransOffset = 5;
	
	  ;% rtDW.c2h4nruu2g
	  section.data(7).logicalSrcIdx = 51;
	  section.data(7).dtTransOffset = 6;
	
	  ;% rtDW.apqr4rycga
	  section.data(8).logicalSrcIdx = 52;
	  section.data(8).dtTransOffset = 7;
	
	  ;% rtDW.jgp5avkl2v
	  section.data(9).logicalSrcIdx = 53;
	  section.data(9).dtTransOffset = 8;
	
	  ;% rtDW.kky1n4nlyw
	  section.data(10).logicalSrcIdx = 54;
	  section.data(10).dtTransOffset = 9;
	
	  ;% rtDW.kfygzsdh1x
	  section.data(11).logicalSrcIdx = 55;
	  section.data(11).dtTransOffset = 10;
	
	  ;% rtDW.lxy5jly2jl
	  section.data(12).logicalSrcIdx = 56;
	  section.data(12).dtTransOffset = 11;
	
	  ;% rtDW.odk5kbum5p
	  section.data(13).logicalSrcIdx = 57;
	  section.data(13).dtTransOffset = 12;
	
	  ;% rtDW.iisyu5xfbk
	  section.data(14).logicalSrcIdx = 58;
	  section.data(14).dtTransOffset = 13;
	
	  ;% rtDW.dcpiw2ovvj
	  section.data(15).logicalSrcIdx = 59;
	  section.data(15).dtTransOffset = 14;
	
	  ;% rtDW.kw2jz0mfdl
	  section.data(16).logicalSrcIdx = 60;
	  section.data(16).dtTransOffset = 15;
	
	  ;% rtDW.apngkp115q
	  section.data(17).logicalSrcIdx = 61;
	  section.data(17).dtTransOffset = 16;
	
	  ;% rtDW.caxnckqtjo
	  section.data(18).logicalSrcIdx = 62;
	  section.data(18).dtTransOffset = 17;
	
	  ;% rtDW.gkd0aqjb5m
	  section.data(19).logicalSrcIdx = 63;
	  section.data(19).dtTransOffset = 18;
	
	  ;% rtDW.l1fziobgel
	  section.data(20).logicalSrcIdx = 64;
	  section.data(20).dtTransOffset = 19;
	
	  ;% rtDW.ouoyyx2uxm
	  section.data(21).logicalSrcIdx = 65;
	  section.data(21).dtTransOffset = 20;
	
	  ;% rtDW.ihs2horjfm
	  section.data(22).logicalSrcIdx = 66;
	  section.data(22).dtTransOffset = 21;
	
	  ;% rtDW.gwlrbs3xpu
	  section.data(23).logicalSrcIdx = 67;
	  section.data(23).dtTransOffset = 22;
	
	  ;% rtDW.iwhqwxle5w
	  section.data(24).logicalSrcIdx = 68;
	  section.data(24).dtTransOffset = 23;
	
	  ;% rtDW.bd5xvqbi3g
	  section.data(25).logicalSrcIdx = 69;
	  section.data(25).dtTransOffset = 24;
	
	  ;% rtDW.ik1s3spbam
	  section.data(26).logicalSrcIdx = 70;
	  section.data(26).dtTransOffset = 25;
	
	  ;% rtDW.ic3teaw54y
	  section.data(27).logicalSrcIdx = 71;
	  section.data(27).dtTransOffset = 26;
	
	  ;% rtDW.neyklpjx3u
	  section.data(28).logicalSrcIdx = 72;
	  section.data(28).dtTransOffset = 27;
	
	  ;% rtDW.iuwou0xbz1
	  section.data(29).logicalSrcIdx = 73;
	  section.data(29).dtTransOffset = 28;
	
	  ;% rtDW.fzz3eop2p2
	  section.data(30).logicalSrcIdx = 74;
	  section.data(30).dtTransOffset = 29;
	
	  ;% rtDW.fhpwv4ulwf
	  section.data(31).logicalSrcIdx = 75;
	  section.data(31).dtTransOffset = 30;
	
	  ;% rtDW.dpxrtlurdb
	  section.data(32).logicalSrcIdx = 76;
	  section.data(32).dtTransOffset = 31;
	
	  ;% rtDW.njft1g4bne
	  section.data(33).logicalSrcIdx = 77;
	  section.data(33).dtTransOffset = 32;
	
	  ;% rtDW.fqq04x2305
	  section.data(34).logicalSrcIdx = 78;
	  section.data(34).dtTransOffset = 33;
	
	  ;% rtDW.oxzcr0swre
	  section.data(35).logicalSrcIdx = 79;
	  section.data(35).dtTransOffset = 34;
	
	  ;% rtDW.nil0vzv4lt
	  section.data(36).logicalSrcIdx = 80;
	  section.data(36).dtTransOffset = 35;
	
	  ;% rtDW.mhbmzxhjf1
	  section.data(37).logicalSrcIdx = 81;
	  section.data(37).dtTransOffset = 36;
	
	  ;% rtDW.ie1ydddul2
	  section.data(38).logicalSrcIdx = 82;
	  section.data(38).dtTransOffset = 37;
	
	  ;% rtDW.oy05zyzhne
	  section.data(39).logicalSrcIdx = 83;
	  section.data(39).dtTransOffset = 38;
	
	  ;% rtDW.bzzykmrzsw
	  section.data(40).logicalSrcIdx = 84;
	  section.data(40).dtTransOffset = 39;
	
	  ;% rtDW.agyv3b2rxj
	  section.data(41).logicalSrcIdx = 85;
	  section.data(41).dtTransOffset = 40;
	
	  ;% rtDW.ee0pg0vumh
	  section.data(42).logicalSrcIdx = 86;
	  section.data(42).dtTransOffset = 41;
	
	  ;% rtDW.kyluz02r4l
	  section.data(43).logicalSrcIdx = 87;
	  section.data(43).dtTransOffset = 42;
	
	  ;% rtDW.nvhcbveppz
	  section.data(44).logicalSrcIdx = 88;
	  section.data(44).dtTransOffset = 43;
	
	  ;% rtDW.ao5oh0fiuv
	  section.data(45).logicalSrcIdx = 89;
	  section.data(45).dtTransOffset = 44;
	
	  ;% rtDW.fkuaquglzn
	  section.data(46).logicalSrcIdx = 90;
	  section.data(46).dtTransOffset = 45;
	
	  ;% rtDW.fippptyjon
	  section.data(47).logicalSrcIdx = 91;
	  section.data(47).dtTransOffset = 46;
	
	  ;% rtDW.asiinzs0en
	  section.data(48).logicalSrcIdx = 92;
	  section.data(48).dtTransOffset = 47;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(3) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% rtDW.kprk5tcvuo
	  section.data(1).logicalSrcIdx = 93;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(4) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% rtDW.ldmdcqsgrp.ougegqceux
	  section.data(1).logicalSrcIdx = 94;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(5) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% rtDW.mbmqqoarrc.ptkbx4dybd
	  section.data(1).logicalSrcIdx = 95;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(6) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% rtDW.ev2qnhdaiw.ougegqceux
	  section.data(1).logicalSrcIdx = 96;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(7) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% rtDW.mhw0zthztr.ptkbx4dybd
	  section.data(1).logicalSrcIdx = 97;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(8) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% rtDW.b4fsehh1oe.ougegqceux
	  section.data(1).logicalSrcIdx = 98;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(9) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% rtDW.pksk3bp0ad.ptkbx4dybd
	  section.data(1).logicalSrcIdx = 99;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(10) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% rtDW.iznhf4ggmb.ougegqceux
	  section.data(1).logicalSrcIdx = 100;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(11) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% rtDW.ap3ezzssma.ptkbx4dybd
	  section.data(1).logicalSrcIdx = 101;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(12) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% rtDW.ah3bwhijyp.ougegqceux
	  section.data(1).logicalSrcIdx = 102;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(13) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% rtDW.ood4hnt5ei.ptkbx4dybd
	  section.data(1).logicalSrcIdx = 103;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(14) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% rtDW.lh4zvktjrg.ougegqceux
	  section.data(1).logicalSrcIdx = 104;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(15) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% rtDW.azsinjrdhu.ptkbx4dybd
	  section.data(1).logicalSrcIdx = 105;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(16) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% rtDW.jrg3tx4nza.ougegqceux
	  section.data(1).logicalSrcIdx = 106;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(17) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% rtDW.nhom0zltaf.ptkbx4dybd
	  section.data(1).logicalSrcIdx = 107;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(18) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% rtDW.djuyhuwenn.ougegqceux
	  section.data(1).logicalSrcIdx = 108;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(19) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% rtDW.oijj04cs3h.ptkbx4dybd
	  section.data(1).logicalSrcIdx = 109;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(20) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% rtDW.cjayb1yiic.ougegqceux
	  section.data(1).logicalSrcIdx = 110;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(21) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% rtDW.fvswwmzdv2.ptkbx4dybd
	  section.data(1).logicalSrcIdx = 111;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(22) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% rtDW.dlvkf0rlu1.ougegqceux
	  section.data(1).logicalSrcIdx = 112;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(23) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% rtDW.dxwknx1onf.ptkbx4dybd
	  section.data(1).logicalSrcIdx = 113;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(24) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% rtDW.kipgjbpv3a.ougegqceux
	  section.data(1).logicalSrcIdx = 114;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(25) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% rtDW.hzposxf5kl.ptkbx4dybd
	  section.data(1).logicalSrcIdx = 115;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(26) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% rtDW.mbfe4mrkdx.ougegqceux
	  section.data(1).logicalSrcIdx = 116;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(27) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% rtDW.fljg5cx20p.ptkbx4dybd
	  section.data(1).logicalSrcIdx = 117;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(28) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% rtDW.kzunpguvig.ougegqceux
	  section.data(1).logicalSrcIdx = 118;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(29) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% rtDW.ncej1st4nu.ptkbx4dybd
	  section.data(1).logicalSrcIdx = 119;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(30) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% rtDW.ohhhx4jkfy.ougegqceux
	  section.data(1).logicalSrcIdx = 120;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(31) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% rtDW.nichsl1xkc.ptkbx4dybd
	  section.data(1).logicalSrcIdx = 121;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(32) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% rtDW.ggvzurdyei2.ougegqceux
	  section.data(1).logicalSrcIdx = 122;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(33) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% rtDW.iyvfkw0yfbs.ptkbx4dybd
	  section.data(1).logicalSrcIdx = 123;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(34) = section;
      clear section
      
    
      ;%
      ;% Non-auto Data (dwork)
      ;%
    

    ;%
    ;% Add final counts to struct.
    ;%
    dworkMap.nTotData = nTotData;
    


  ;%
  ;% Add individual maps to base struct.
  ;%

  targMap.paramMap  = paramMap;    
  targMap.signalMap = sigMap;
  targMap.dworkMap  = dworkMap;
  
  ;%
  ;% Add checksums to base struct.
  ;%


  targMap.checksum0 = 982986077;
  targMap.checksum1 = 1278681930;
  targMap.checksum2 = 2249042413;
  targMap.checksum3 = 2462330163;

