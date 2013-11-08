/* Verilog for cell 'chipfgpnt{sch}' from library 'mojing' */
/* Created on Tue Nov 05, 2013 14:00:22 */
/* Last revised on Tue Nov 05, 2013 14:07:34 */
/* Written on Fri Nov 08, 2013 10:23:54 by Electric VLSI Design System, version 8.06 */

module muddlib07__a2o1_1x(a, b, c, y);
  input a;
  input b;
  input c;
  output y;

  supply1 vdd;
  supply0 gnd;
  wire net_0, net_11, net_19;

  tranif1 nmos_0(gnd, net_19, a);
  tranif1 nmos_1(net_19, net_0, b);
  tranif1 nmos_2(gnd, net_0, c);
  tranif1 nmos_3(gnd, y, net_0);
  tranif0 pmos_0(net_0, net_11, c);
  tranif0 pmos_1(net_11, vdd, b);
  tranif0 pmos_2(net_11, vdd, a);
  tranif0 pmos_3(y, vdd, net_0);
endmodule   /* muddlib07__a2o1_1x */

module muddlib07__inv_1x(a, y);
  input a;
  output y;

  supply1 vdd;
  supply0 gnd;
  tranif1 nmos_0(gnd, y, a);
  tranif0 pmos_0(y, vdd, a);
endmodule   /* muddlib07__inv_1x */

module muddlib07__mux2_dp_1x(d0, d1, s, sb, y);
  input d0;
  input d1;
  input s;
  input sb;
  output y;

  supply1 vdd;
  supply0 gnd;
  wire net_12, net_15, net_3, net_4, net_8;

  tranif1 nmos_0(gnd, net_3, d1);
  tranif1 nmos_1(gnd, net_4, d0);
  tranif1 nmos_2(net_3, net_8, s);
  tranif1 nmos_3(net_4, net_8, sb);
  tranif1 nmos_4(gnd, y, net_8);
  tranif0 pmos_0(net_8, net_15, sb);
  tranif0 pmos_1(net_15, vdd, d1);
  tranif0 pmos_2(net_8, net_12, s);
  tranif0 pmos_3(net_12, vdd, d0);
  tranif0 pmos_4(y, vdd, net_8);
endmodule   /* muddlib07__mux2_dp_1x */

module muddlib07__nand2_1x(a, b, y);
  input a;
  input b;
  output y;

  supply1 vdd;
  supply0 gnd;
  wire net_5;

  tranif1 nmos_0(net_5, y, b);
  tranif1 nmos_1(gnd, net_5, a);
  tranif0 pmos_0(y, vdd, b);
  tranif0 pmos_1(y, vdd, a);
endmodule   /* muddlib07__nand2_1x */

module muddlib07__nor2_1x(a, b, y);
  input a;
  input b;
  output y;

  supply1 vdd;
  supply0 gnd;
  wire net_9;

  tranif1 nmos_0(gnd, y, a);
  tranif1 nmos_1(gnd, y, b);
  tranif0 pmos_0(y, net_9, b);
  tranif0 pmos_1(net_9, vdd, a);
endmodule   /* muddlib07__nor2_1x */

module mips8_GK__aludec(aluop, funct, alucontrol);
  input [1:0] aluop;
  input [3:0] funct;
  output [2:0] alucontrol;

  supply1 vdd;
  supply0 gnd;
  wire net_5, net_57;

  muddlib07__inv_1x inv_1x_0(.a(aluop[1]), .y(net_57));
  muddlib07__mux2_dp_1x mux2_dp__0(.d0(aluop[0]), .d1(funct[1]), .s(aluop[1]), 
      .sb(net_57), .y(alucontrol[2]));
  muddlib07__nand2_1x nand2_1x_0(.a(aluop[1]), .b(funct[2]), 
      .y(alucontrol[1]));
  muddlib07__nor2_1x nor2_1x_0(.a(funct[0]), .b(funct[3]), .y(net_5));
  muddlib07__nor2_1x nor2_1x_1(.a(net_57), .b(net_5), .y(alucontrol[0]));
endmodule   /* mips8_GK__aludec */

module controller_pla__controller_pla_Cell(in, in_1, in_2, in_3, in_4, in_5, 
      in_6, in_7, in_8, in_9, out, out_1, out_10, out_11, out_12, out_13, 
      out_14, out_15, out_16, out_17, out_18, out_19, out_2, out_20, out_21, 
      out_22, out_3, out_4, out_5, out_6, out_7, out_8, out_9);
  input [0:0] in;
  input [1:1] in_1;
  input [2:2] in_2;
  input [3:3] in_3;
  input [4:4] in_4;
  input [5:5] in_5;
  input [6:6] in_6;
  input [7:7] in_7;
  input [8:8] in_8;
  input [9:9] in_9;
  output [0:0] out;
  output [1:1] out_1;
  output [10:10] out_10;
  output [11:11] out_11;
  output [12:12] out_12;
  output [13:13] out_13;
  output [14:14] out_14;
  output [15:15] out_15;
  output [16:16] out_16;
  output [17:17] out_17;
  output [18:18] out_18;
  output [19:19] out_19;
  output [2:2] out_2;
  output [20:20] out_20;
  output [21:21] out_21;
  output [22:22] out_22;
  output [3:3] out_3;
  output [4:4] out_4;
  output [5:5] out_5;
  output [6:6] out_6;
  output [7:7] out_7;
  output [8:8] out_8;
  output [9:9] out_9;

  supply1 vdd;
  supply0 gnd;
  wire net_0, net_1005, net_1013, net_1037, net_1053, net_1332, net_1333;
  wire net_14, net_205, net_21, net_214, net_233, net_242, net_261, net_270;
  wire net_28, net_289, net_298, net_341, net_362, net_411, net_42, net_432;
  wire net_481, net_49, net_502, net_551, net_56, net_560, net_579, net_588;
  wire net_63, net_718, net_732, net_740, net_756, net_759, net_764, net_771;
  wire net_777, net_783, net_790, net_797, net_917, net_925, net_933, net_949;
  wire net_957, net_965, net_973, net_997;

  tranif1 nmos_3(gnd, net_0, in_9[9]);
  tranif1 nmos_10(gnd, net_1332, in_8[8]);
  tranif1 nmos_17(gnd, net_14, in_7[7]);
  tranif1 nmos_24(gnd, net_21, in_6[6]);
  tranif1 nmos_31(gnd, net_28, in_5[5]);
  tranif1 nmos_38(gnd, net_1333, in_4[4]);
  tranif1 nmos_45(gnd, net_42, in_3[3]);
  tranif1 nmos_52(gnd, net_49, in_2[2]);
  tranif1 nmos_59(gnd, net_56, in_1[1]);
  tranif1 nmos_66(gnd, net_63, in[0]);
  tranif1 nmos_72(net_205, gnd, net_42);
  tranif1 nmos_73(net_205, gnd, net_49);
  tranif1 nmos_74(net_205, gnd, in_1[1]);
  tranif1 nmos_75(net_205, gnd, in[0]);
  tranif1 nmos_76(gnd, net_214, net_42);
  tranif1 nmos_77(gnd, net_214, in_2[2]);
  tranif1 nmos_78(gnd, net_214, net_56);
  tranif1 nmos_79(gnd, net_214, net_63);
  tranif1 nmos_80(net_233, gnd, net_42);
  tranif1 nmos_81(net_233, gnd, in_2[2]);
  tranif1 nmos_82(net_233, gnd, net_56);
  tranif1 nmos_83(net_233, gnd, in[0]);
  tranif1 nmos_84(gnd, net_242, net_42);
  tranif1 nmos_85(gnd, net_242, in_2[2]);
  tranif1 nmos_86(gnd, net_242, in_1[1]);
  tranif1 nmos_87(gnd, net_242, net_63);
  tranif1 nmos_88(net_261, gnd, net_42);
  tranif1 nmos_89(net_261, gnd, in_2[2]);
  tranif1 nmos_90(net_261, gnd, in_1[1]);
  tranif1 nmos_91(net_261, gnd, in[0]);
  tranif1 nmos_92(gnd, net_270, in_3[3]);
  tranif1 nmos_93(gnd, net_270, net_49);
  tranif1 nmos_94(gnd, net_270, net_56);
  tranif1 nmos_95(gnd, net_270, net_63);
  tranif1 nmos_96(net_289, gnd, in_3[3]);
  tranif1 nmos_97(net_289, gnd, net_49);
  tranif1 nmos_98(net_289, gnd, net_56);
  tranif1 nmos_99(net_289, gnd, in[0]);
  tranif1 nmos_100(gnd, net_298, net_0);
  tranif1 nmos_101(gnd, net_298, in_8[8]);
  tranif1 nmos_102(gnd, net_298, net_14);
  tranif1 nmos_103(gnd, net_298, in_6[6]);
  tranif1 nmos_104(gnd, net_298, in_5[5]);
  tranif1 nmos_105(gnd, net_298, in_4[4]);
  tranif1 nmos_106(gnd, net_298, in_3[3]);
  tranif1 nmos_107(gnd, net_298, net_49);
  tranif1 nmos_108(gnd, net_298, in_1[1]);
  tranif1 nmos_109(gnd, net_298, net_63);
  tranif1 nmos_110(net_341, gnd, net_0);
  tranif1 nmos_111(net_341, gnd, in_8[8]);
  tranif1 nmos_112(net_341, gnd, in_7[7]);
  tranif1 nmos_113(net_341, gnd, in_6[6]);
  tranif1 nmos_114(net_341, gnd, in_5[5]);
  tranif1 nmos_115(net_341, gnd, in_4[4]);
  tranif1 nmos_116(net_341, gnd, in_3[3]);
  tranif1 nmos_117(net_341, gnd, net_49);
  tranif1 nmos_118(net_341, gnd, in_1[1]);
  tranif1 nmos_119(net_341, gnd, net_63);
  tranif1 nmos_120(gnd, net_362, in_9[9]);
  tranif1 nmos_121(gnd, net_362, in_8[8]);
  tranif1 nmos_122(gnd, net_362, in_7[7]);
  tranif1 nmos_123(gnd, net_362, in_6[6]);
  tranif1 nmos_124(gnd, net_362, net_28);
  tranif1 nmos_125(gnd, net_362, in_4[4]);
  tranif1 nmos_126(gnd, net_362, in_3[3]);
  tranif1 nmos_127(gnd, net_362, net_49);
  tranif1 nmos_128(gnd, net_362, in_1[1]);
  tranif1 nmos_129(gnd, net_362, in[0]);
  tranif1 nmos_130(net_411, gnd, in_9[9]);
  tranif1 nmos_131(net_411, gnd, in_8[8]);
  tranif1 nmos_132(net_411, gnd, in_7[7]);
  tranif1 nmos_133(net_411, gnd, net_21);
  tranif1 nmos_134(net_411, gnd, in_5[5]);
  tranif1 nmos_135(net_411, gnd, in_4[4]);
  tranif1 nmos_136(net_411, gnd, in_3[3]);
  tranif1 nmos_137(net_411, gnd, net_49);
  tranif1 nmos_138(net_411, gnd, in_1[1]);
  tranif1 nmos_139(net_411, gnd, in[0]);
  tranif1 nmos_140(gnd, net_432, in_9[9]);
  tranif1 nmos_141(gnd, net_432, in_8[8]);
  tranif1 nmos_142(gnd, net_432, in_7[7]);
  tranif1 nmos_143(gnd, net_432, in_6[6]);
  tranif1 nmos_144(gnd, net_432, in_5[5]);
  tranif1 nmos_145(gnd, net_432, in_4[4]);
  tranif1 nmos_146(gnd, net_432, in_3[3]);
  tranif1 nmos_147(gnd, net_432, net_49);
  tranif1 nmos_148(gnd, net_432, in_1[1]);
  tranif1 nmos_149(gnd, net_432, in[0]);
  tranif1 nmos_150(net_481, gnd, net_0);
  tranif1 nmos_151(net_481, gnd, in_8[8]);
  tranif1 nmos_152(net_481, gnd, net_14);
  tranif1 nmos_153(net_481, gnd, in_6[6]);
  tranif1 nmos_154(net_481, gnd, in_5[5]);
  tranif1 nmos_155(net_481, gnd, in_4[4]);
  tranif1 nmos_156(net_481, gnd, in_3[3]);
  tranif1 nmos_157(net_481, gnd, net_49);
  tranif1 nmos_158(net_481, gnd, in_1[1]);
  tranif1 nmos_159(net_481, gnd, in[0]);
  tranif1 nmos_160(gnd, net_502, net_0);
  tranif1 nmos_161(gnd, net_502, in_8[8]);
  tranif1 nmos_162(gnd, net_502, in_7[7]);
  tranif1 nmos_163(gnd, net_502, in_6[6]);
  tranif1 nmos_164(gnd, net_502, in_5[5]);
  tranif1 nmos_165(gnd, net_502, in_4[4]);
  tranif1 nmos_166(gnd, net_502, in_3[3]);
  tranif1 nmos_167(gnd, net_502, net_49);
  tranif1 nmos_168(gnd, net_502, in_1[1]);
  tranif1 nmos_169(gnd, net_502, in[0]);
  tranif1 nmos_170(net_551, gnd, in_3[3]);
  tranif1 nmos_171(net_551, gnd, in_2[2]);
  tranif1 nmos_172(net_551, gnd, net_56);
  tranif1 nmos_173(net_551, gnd, net_63);
  tranif1 nmos_174(gnd, net_560, in_3[3]);
  tranif1 nmos_175(gnd, net_560, in_2[2]);
  tranif1 nmos_176(gnd, net_560, net_56);
  tranif1 nmos_177(gnd, net_560, in[0]);
  tranif1 nmos_178(net_579, gnd, in_3[3]);
  tranif1 nmos_179(net_579, gnd, in_2[2]);
  tranif1 nmos_180(net_579, gnd, in_1[1]);
  tranif1 nmos_181(net_579, gnd, net_63);
  tranif1 nmos_182(gnd, net_588, in_3[3]);
  tranif1 nmos_183(gnd, net_588, in_2[2]);
  tranif1 nmos_184(gnd, net_588, in_1[1]);
  tranif1 nmos_185(gnd, net_588, in[0]);
  tranif1 nmos_414(gnd, net_718, net_205);
  tranif1 nmos_415(gnd, net_997, net_205);
  tranif1 nmos_416(gnd, net_925, net_214);
  tranif1 nmos_417(gnd, net_933, net_214);
  tranif1 nmos_418(gnd, net_1005, net_214);
  tranif1 nmos_419(gnd, net_764, net_214);
  tranif1 nmos_420(gnd, net_1013, net_233);
  tranif1 nmos_421(gnd, net_756, net_233);
  tranif1 nmos_422(gnd, net_917, net_242);
  tranif1 nmos_423(gnd, net_764, net_242);
  tranif1 nmos_424(gnd, net_777, net_242);
  tranif1 nmos_425(gnd, net_790, net_242);
  tranif1 nmos_426(gnd, net_759, net_261);
  tranif1 nmos_427(gnd, net_1053, net_261);
  tranif1 nmos_428(gnd, net_756, net_270);
  tranif1 nmos_429(gnd, net_1037, net_270);
  tranif1 nmos_430(gnd, net_759, net_289);
  tranif1 nmos_431(gnd, net_771, net_289);
  tranif1 nmos_432(gnd, net_783, net_289);
  tranif1 nmos_433(gnd, net_790, net_289);
  tranif1 nmos_434(gnd, net_797, net_289);
  tranif1 nmos_435(gnd, net_732, net_298);
  tranif1 nmos_436(gnd, net_764, net_298);
  tranif1 nmos_437(gnd, net_777, net_298);
  tranif1 nmos_438(gnd, net_732, net_341);
  tranif1 nmos_439(gnd, net_764, net_341);
  tranif1 nmos_440(gnd, net_783, net_341);
  tranif1 nmos_441(gnd, net_790, net_341);
  tranif1 nmos_442(gnd, net_732, net_362);
  tranif1 nmos_443(gnd, net_740, net_362);
  tranif1 nmos_444(gnd, net_777, net_362);
  tranif1 nmos_445(gnd, net_783, net_362);
  tranif1 nmos_446(gnd, net_732, net_411);
  tranif1 nmos_447(gnd, net_740, net_411);
  tranif1 nmos_448(gnd, net_777, net_411);
  tranif1 nmos_449(gnd, net_790, net_411);
  tranif1 nmos_450(gnd, net_797, net_411);
  tranif1 nmos_451(gnd, net_732, net_432);
  tranif1 nmos_452(gnd, net_740, net_432);
  tranif1 nmos_453(gnd, net_777, net_432);
  tranif1 nmos_454(gnd, net_797, net_432);
  tranif1 nmos_455(gnd, net_732, net_481);
  tranif1 nmos_456(gnd, net_740, net_481);
  tranif1 nmos_457(gnd, net_783, net_481);
  tranif1 nmos_458(gnd, net_797, net_481);
  tranif1 nmos_459(gnd, net_732, net_502);
  tranif1 nmos_460(gnd, net_740, net_502);
  tranif1 nmos_461(gnd, net_783, net_502);
  tranif1 nmos_462(gnd, net_797, net_502);
  tranif1 nmos_463(gnd, net_718, net_551);
  tranif1 nmos_464(gnd, net_949, net_551);
  tranif1 nmos_465(gnd, net_740, net_551);
  tranif1 nmos_466(gnd, net_771, net_551);
  tranif1 nmos_467(gnd, net_783, net_551);
  tranif1 nmos_468(gnd, net_718, net_560);
  tranif1 nmos_469(gnd, net_957, net_560);
  tranif1 nmos_470(gnd, net_740, net_560);
  tranif1 nmos_471(gnd, net_771, net_560);
  tranif1 nmos_472(gnd, net_790, net_560);
  tranif1 nmos_473(gnd, net_797, net_560);
  tranif1 nmos_474(gnd, net_718, net_579);
  tranif1 nmos_475(gnd, net_965, net_579);
  tranif1 nmos_476(gnd, net_740, net_579);
  tranif1 nmos_477(gnd, net_771, net_579);
  tranif1 nmos_478(gnd, net_790, net_579);
  tranif1 nmos_479(gnd, net_718, net_588);
  tranif1 nmos_480(gnd, net_973, net_588);
  tranif1 nmos_481(gnd, net_740, net_588);
  tranif1 nmos_482(gnd, net_771, net_588);
  tranif1 nmos_483(gnd, net_797, net_588);
  tranif1 nmos_576(gnd, out_22[22], net_917);
  tranif1 nmos_584(gnd, out_21[21], net_925);
  tranif1 nmos_592(gnd, out_20[20], net_933);
  tranif1 nmos_600(gnd, out_19[19], net_718);
  tranif1 nmos_608(gnd, out_18[18], net_949);
  tranif1 nmos_616(gnd, out_17[17], net_957);
  tranif1 nmos_624(gnd, out_16[16], net_965);
  tranif1 nmos_632(gnd, out_15[15], net_973);
  tranif1 nmos_640(gnd, out_14[14], net_732);
  tranif1 nmos_648(gnd, out_13[13], net_740);
  tranif1 nmos_656(gnd, out_12[12], net_997);
  tranif1 nmos_664(gnd, out_11[11], net_1005);
  tranif1 nmos_672(gnd, out_10[10], net_1013);
  tranif1 nmos_680(gnd, out_9[9], net_756);
  tranif1 nmos_688(gnd, out_8[8], net_759);
  tranif1 nmos_696(gnd, out_7[7], net_1037);
  tranif1 nmos_704(gnd, out_6[6], net_764);
  tranif1 nmos_712(gnd, out_5[5], net_1053);
  tranif1 nmos_720(gnd, out_4[4], net_771);
  tranif1 nmos_728(gnd, out_3[3], net_777);
  tranif1 nmos_736(gnd, out_2[2], net_783);
  tranif1 nmos_744(gnd, out_1[1], net_790);
  tranif1 nmos_752(gnd, out[0], net_797);
  tranif0 pmos_4(net_0, vdd, in_9[9]);
  tranif0 pmos_11(net_1332, vdd, in_8[8]);
  tranif0 pmos_18(net_14, vdd, in_7[7]);
  tranif0 pmos_25(net_21, vdd, in_6[6]);
  tranif0 pmos_32(net_28, vdd, in_5[5]);
  tranif0 pmos_39(net_1333, vdd, in_4[4]);
  tranif0 pmos_46(net_42, vdd, in_3[3]);
  tranif0 pmos_53(net_49, vdd, in_2[2]);
  tranif0 pmos_60(net_56, vdd, in_1[1]);
  tranif0 pmos_67(net_63, vdd, in[0]);
  tranif0 pmos_577(out_22[22], vdd, net_917);
  tranif0 pmos_585(out_21[21], vdd, net_925);
  tranif0 pmos_593(out_20[20], vdd, net_933);
  tranif0 pmos_601(out_19[19], vdd, net_718);
  tranif0 pmos_609(out_18[18], vdd, net_949);
  tranif0 pmos_617(out_17[17], vdd, net_957);
  tranif0 pmos_625(out_16[16], vdd, net_965);
  tranif0 pmos_633(out_15[15], vdd, net_973);
  tranif0 pmos_641(out_14[14], vdd, net_732);
  tranif0 pmos_649(out_13[13], vdd, net_740);
  tranif0 pmos_657(out_12[12], vdd, net_997);
  tranif0 pmos_665(out_11[11], vdd, net_1005);
  tranif0 pmos_673(out_10[10], vdd, net_1013);
  tranif0 pmos_681(out_9[9], vdd, net_756);
  tranif0 pmos_689(out_8[8], vdd, net_759);
  tranif0 pmos_697(out_7[7], vdd, net_1037);
  tranif0 pmos_705(out_6[6], vdd, net_764);
  tranif0 pmos_713(out_5[5], vdd, net_1053);
  tranif0 pmos_721(out_4[4], vdd, net_771);
  tranif0 pmos_729(out_3[3], vdd, net_777);
  tranif0 pmos_737(out_2[2], vdd, net_783);
  tranif0 pmos_745(out_1[1], vdd, net_790);
  tranif0 pmos_753(out[0], vdd, net_797);
  rtranif0 pmos_758(net_917, vdd, gnd);
  rtranif0 pmos_760(net_925, vdd, gnd);
  rtranif0 pmos_762(net_933, vdd, gnd);
  rtranif0 pmos_764(net_718, vdd, gnd);
  rtranif0 pmos_766(net_949, vdd, gnd);
  rtranif0 pmos_768(net_957, vdd, gnd);
  rtranif0 pmos_770(net_965, vdd, gnd);
  rtranif0 pmos_772(net_973, vdd, gnd);
  rtranif0 pmos_774(net_732, vdd, gnd);
  rtranif0 pmos_776(net_740, vdd, gnd);
  rtranif0 pmos_778(net_997, vdd, gnd);
  rtranif0 pmos_780(net_1005, vdd, gnd);
  rtranif0 pmos_782(net_1013, vdd, gnd);
  rtranif0 pmos_784(net_756, vdd, gnd);
  rtranif0 pmos_786(net_759, vdd, gnd);
  rtranif0 pmos_788(net_1037, vdd, gnd);
  rtranif0 pmos_790(net_764, vdd, gnd);
  rtranif0 pmos_792(net_1053, vdd, gnd);
  rtranif0 pmos_794(net_771, vdd, gnd);
  rtranif0 pmos_796(net_777, vdd, gnd);
  rtranif0 pmos_798(net_783, vdd, gnd);
  rtranif0 pmos_800(net_790, vdd, gnd);
  rtranif0 pmos_802(net_797, vdd, gnd);
  rtranif0 pmos_806(vdd, net_588, gnd);
  rtranif0 pmos_808(vdd, net_579, gnd);
  rtranif0 pmos_810(vdd, net_560, gnd);
  rtranif0 pmos_812(vdd, net_551, gnd);
  rtranif0 pmos_814(vdd, net_502, gnd);
  rtranif0 pmos_816(vdd, net_481, gnd);
  rtranif0 pmos_818(vdd, net_432, gnd);
  rtranif0 pmos_820(vdd, net_411, gnd);
  rtranif0 pmos_822(vdd, net_362, gnd);
  rtranif0 pmos_824(vdd, net_341, gnd);
  rtranif0 pmos_826(vdd, net_298, gnd);
  rtranif0 pmos_828(vdd, net_289, gnd);
  rtranif0 pmos_830(vdd, net_270, gnd);
  rtranif0 pmos_832(vdd, net_261, gnd);
  rtranif0 pmos_834(vdd, net_242, gnd);
  rtranif0 pmos_836(vdd, net_233, gnd);
  rtranif0 pmos_838(vdd, net_214, gnd);
  rtranif0 pmos_840(vdd, net_205, gnd);
endmodule   /* controller_pla__controller_pla_Cell */

module muddlib07__flopr_c_1x(ph1, ph2, d, resetb, q);
  input ph1;
  input ph2;
  input d;
  input resetb;
  output q;

  supply1 vdd;
  supply0 gnd;
  wire master, masterinb, n6, n7, n8, n9, net_429, ph1b, ph1buf, ph2b, ph2buf;
  wire slaveb;
  trireg masterb, slave;

  tranif1 nmos_2(masterinb, masterb, ph2buf);
  tranif1 nmos_3(gnd, master, masterb);
  rtranif1 nmos_4(master, slave, ph1buf);
  tranif1 nmos_5(n6, masterb, ph2b);
  tranif1 nmos_6(gnd, n6, master);
  tranif1 nmos_7(gnd, n8, slaveb);
  tranif1 nmos_8(gnd, slaveb, slave);
  tranif1 nmos_10(n8, slave, ph1b);
  tranif1 nmos_11(gnd, q, slaveb);
  tranif1 nmos_17(gnd, net_429, resetb);
  tranif1 nmos_19(net_429, masterinb, d);
  tranif1 nmos_22(gnd, ph2b, ph2);
  tranif1 nmos_25(gnd, ph2buf, ph2b);
  tranif1 nmos_26(gnd, ph1buf, ph1b);
  tranif1 nmos_27(gnd, ph1b, ph1);
  tranif0 pmos_2(masterb, masterinb, ph2b);
  tranif0 pmos_3(master, vdd, masterb);
  rtranif0 pmos_4(slave, master, ph1b);
  tranif0 pmos_5(masterb, n7, ph2buf);
  tranif0 pmos_6(n7, vdd, master);
  tranif0 pmos_7(n9, vdd, slaveb);
  tranif0 pmos_8(slaveb, vdd, slave);
  tranif0 pmos_10(slave, n9, ph1buf);
  tranif0 pmos_11(q, vdd, slaveb);
  tranif0 pmos_16(masterinb, vdd, d);
  tranif0 pmos_18(masterinb, vdd, resetb);
  tranif0 pmos_21(ph1b, vdd, ph1);
  tranif0 pmos_22(ph2b, vdd, ph2);
  tranif0 pmos_24(ph1buf, vdd, ph1b);
  tranif0 pmos_25(ph2buf, vdd, ph2b);
endmodule   /* muddlib07__flopr_c_1x */

module mips8_GK__controller(funct, op, ph1, ph2, reset, zero, alucontrol, 
      alusrca, alusrcb, iord, irwrite, memread, memtoreg, memwrite, pcen, 
      pcsrc, regdst, regwrite);
  input [3:0] funct;
  input [5:0] op;
  input ph1;
  input ph2;
  input reset;
  input zero;
  output [2:0] alucontrol;
  output alusrca;
  output [1:0] alusrcb;
  output iord;
  output [3:0] irwrite;
  output memread;
  output memtoreg;
  output memwrite;
  output pcen;
  output [1:0] pcsrc;
  output regdst;
  output regwrite;

  supply1 vdd;
  supply0 gnd;
  wire branch, net_86, pcwrite;
  wire [1:0] aluop;
  wire [3:0] nextstate;
  wire [3:0] state;

  muddlib07__a2o1_1x a2o1_1x_0(.a(zero), .b(branch), .c(pcwrite), .y(pcen));
  mips8_GK__aludec aludec_2(.aluop(aluop[1:0]), .funct(funct[3:0]), 
      .alucontrol(alucontrol[2:0]));
  controller_pla__controller_pla_Cell controll_2(.in(state[0:0]), 
      .in_1(state[1:1]), .in_2(state[2:2]), .in_3(state[3:3]), .in_4(op[0:0]), 
      .in_5(op[1:1]), .in_6(op[2:2]), .in_7(op[3:3]), .in_8(op[4:4]), 
      .in_9(op[5:5]), .out(nextstate[0:0]), .out_1(nextstate[1:1]), 
      .out_10({regdst}), .out_11(pcsrc[0:0]), .out_12(pcsrc[1:1]), 
      .out_13(alusrcb[0:0]), .out_14(alusrcb[1:1]), .out_15(irwrite[0:0]), 
      .out_16(irwrite[1:1]), .out_17(irwrite[2:2]), .out_18(irwrite[3:3]), 
      .out_19({pcwrite}), .out_2(nextstate[2:2]), .out_20({branch}), 
      .out_21(aluop[0:0]), .out_22(aluop[1:1]), .out_3(nextstate[3:3]), 
      .out_4({memread}), .out_5({memwrite}), .out_6({alusrca}), 
      .out_7({memtoreg}), .out_8({iord}), .out_9({regwrite}));
  muddlib07__inv_1x inv_1x_0(.a(reset), .y(net_86));
  muddlib07__flopr_c_1x stateflop_3_(.ph1(ph1), .ph2(ph2), .d(nextstate[3]), 
      .resetb(net_86), .q(state[3]));
  muddlib07__flopr_c_1x stateflop_2_(.ph1(ph1), .ph2(ph2), .d(nextstate[2]), 
      .resetb(net_86), .q(state[2]));
  muddlib07__flopr_c_1x stateflop_1_(.ph1(ph1), .ph2(ph2), .d(nextstate[1]), 
      .resetb(net_86), .q(state[1]));
  muddlib07__flopr_c_1x stateflop_0_(.ph1(ph1), .ph2(ph2), .d(nextstate[0]), 
      .resetb(net_86), .q(state[0]));
endmodule   /* mips8_GK__controller */

module muddlib07__inv_4x(a, y);
  input a;
  output y;

  supply1 vdd;
  supply0 gnd;
  tranif1 nmos_0(gnd, y, a);
  tranif0 pmos_0(y, vdd, a);
endmodule   /* muddlib07__inv_4x */

module muddlib07__invbuf_4x(s, s_out, sb_out);
  input s;
  output s_out;
  output sb_out;

  supply1 vdd;
  supply0 gnd;
  muddlib07__inv_4x inv_4x_3(.a(s), .y(sb_out));
  muddlib07__inv_4x inv_4x_4(.a(sb_out), .y(s_out));
endmodule   /* muddlib07__invbuf_4x */

module wordlib8__mux2_1x_8(d0, d1, s, y);
  input [7:0] d0;
  input [7:0] d1;
  input s;
  output [7:0] y;

  supply1 vdd;
  supply0 gnd;
  wire net_27, net_29;

  muddlib07__invbuf_4x invbuf_4_0(.s(s), .s_out(net_29), .sb_out(net_27));
  muddlib07__mux2_dp_1x mux2_1x_dp_7_(.d0(d0[7]), .d1(d1[7]), .s(net_29), 
      .sb(net_27), .y(y[7]));
  muddlib07__mux2_dp_1x mux2_1x_dp_6_(.d0(d0[6]), .d1(d1[6]), .s(net_29), 
      .sb(net_27), .y(y[6]));
  muddlib07__mux2_dp_1x mux2_1x_dp_5_(.d0(d0[5]), .d1(d1[5]), .s(net_29), 
      .sb(net_27), .y(y[5]));
  muddlib07__mux2_dp_1x mux2_1x_dp_4_(.d0(d0[4]), .d1(d1[4]), .s(net_29), 
      .sb(net_27), .y(y[4]));
  muddlib07__mux2_dp_1x mux2_1x_dp_3_(.d0(d0[3]), .d1(d1[3]), .s(net_29), 
      .sb(net_27), .y(y[3]));
  muddlib07__mux2_dp_1x mux2_1x_dp_2_(.d0(d0[2]), .d1(d1[2]), .s(net_29), 
      .sb(net_27), .y(y[2]));
  muddlib07__mux2_dp_1x mux2_1x_dp_1_(.d0(d0[1]), .d1(d1[1]), .s(net_29), 
      .sb(net_27), .y(y[1]));
  muddlib07__mux2_dp_1x mux2_1x_dp_0_(.d0(d0[0]), .d1(d1[0]), .s(net_29), 
      .sb(net_27), .y(y[0]));
endmodule   /* wordlib8__mux2_1x_8 */

module muddlib07__fulladder(a, b, c, cout, s);
  input a;
  input b;
  input c;
  output cout;
  output s;

  supply1 vdd;
  supply0 gnd;
  wire coutb, net_1, net_11, net_111, net_23, net_32, net_33, net_90, net_92;
  wire net_94, net_95, sb;

  tranif1 nmos_0(gnd, net_1, a);
  tranif1 nmos_1(gnd, net_1, b);
  tranif1 nmos_2(net_1, coutb, c);
  tranif1 nmos_3(gnd, net_11, a);
  tranif1 nmos_4(net_11, coutb, b);
  tranif1 nmos_5(gnd, net_23, a);
  tranif1 nmos_6(gnd, net_23, b);
  tranif1 nmos_7(gnd, net_23, c);
  tranif1 nmos_8(net_23, sb, coutb);
  tranif1 nmos_9(gnd, net_33, a);
  tranif1 nmos_10(net_33, net_32, b);
  tranif1 nmos_11(net_32, sb, c);
  tranif1 nmos_12(gnd, cout, coutb);
  tranif1 nmos_13(gnd, s, sb);
  tranif0 pmos_1(sb, net_92, c);
  tranif0 pmos_2(net_92, net_90, b);
  tranif0 pmos_3(net_90, vdd, a);
  tranif0 pmos_4(sb, net_94, coutb);
  tranif0 pmos_5(net_94, vdd, b);
  tranif0 pmos_6(net_94, vdd, c);
  tranif0 pmos_7(net_94, vdd, a);
  tranif0 pmos_8(cout, vdd, coutb);
  tranif0 pmos_9(net_95, vdd, a);
  tranif0 pmos_10(coutb, net_95, b);
  tranif0 pmos_11(net_111, vdd, a);
  tranif0 pmos_12(net_111, vdd, b);
  tranif0 pmos_13(coutb, net_111, c);
  tranif0 pmos_14(s, vdd, sb);
endmodule   /* muddlib07__fulladder */

module wordlib8__adder_8(a, b, cin, cout, s);
  input [7:0] a;
  input [7:0] b;
  input cin;
  output cout;
  output [7:0] s;

  supply1 vdd;
  supply0 gnd;
  wire [6:0] c;

  muddlib07__fulladder fa_7_(.a(a[7]), .b(b[7]), .c(c[6]), .cout(cout), 
      .s(s[7]));
  muddlib07__fulladder fa_6_(.a(a[6]), .b(b[6]), .c(c[5]), .cout(c[6]), 
      .s(s[6]));
  muddlib07__fulladder fa_5_(.a(a[5]), .b(b[5]), .c(c[4]), .cout(c[5]), 
      .s(s[5]));
  muddlib07__fulladder fa_4_(.a(a[4]), .b(b[4]), .c(c[3]), .cout(c[4]), 
      .s(s[4]));
  muddlib07__fulladder fa_3_(.a(a[3]), .b(b[3]), .c(c[2]), .cout(c[3]), 
      .s(s[3]));
  muddlib07__fulladder fa_2_(.a(a[2]), .b(b[2]), .c(c[1]), .cout(c[2]), 
      .s(s[2]));
  muddlib07__fulladder fa_1_(.a(a[1]), .b(b[1]), .c(c[0]), .cout(c[1]), 
      .s(s[1]));
  muddlib07__fulladder fa_0_(.a(a[0]), .b(b[0]), .c(cin), .cout(c[0]), 
      .s(s[0]));
endmodule   /* wordlib8__adder_8 */

module muddlib07__and2_1x(a, b, y);
  input a;
  input b;
  output y;

  supply1 vdd;
  supply0 gnd;
  wire net_1, net_2;

  tranif1 nmos_0(net_1, net_2, b);
  tranif1 nmos_1(gnd, net_1, a);
  tranif1 nmos_2(gnd, y, net_2);
  tranif0 pmos_0(net_2, vdd, b);
  tranif0 pmos_1(net_2, vdd, a);
  tranif0 pmos_2(y, vdd, net_2);
endmodule   /* muddlib07__and2_1x */

module wordlib8__and2_1x_8(a, b, y);
  input [7:0] a;
  input [7:0] b;
  output [7:0] y;

  supply1 vdd;
  supply0 gnd;
  muddlib07__and2_1x and2_1x_7_(.a(a[7]), .b(b[7]), .y(y[7]));
  muddlib07__and2_1x and2_1x_6_(.a(a[6]), .b(b[6]), .y(y[6]));
  muddlib07__and2_1x and2_1x_5_(.a(a[5]), .b(b[5]), .y(y[5]));
  muddlib07__and2_1x and2_1x_4_(.a(a[4]), .b(b[4]), .y(y[4]));
  muddlib07__and2_1x and2_1x_3_(.a(a[3]), .b(b[3]), .y(y[3]));
  muddlib07__and2_1x and2_1x_2_(.a(a[2]), .b(b[2]), .y(y[2]));
  muddlib07__and2_1x and2_1x_1_(.a(a[1]), .b(b[1]), .y(y[1]));
  muddlib07__and2_1x and2_1x_0_(.a(a[0]), .b(b[0]), .y(y[0]));
endmodule   /* wordlib8__and2_1x_8 */

module wordlib8__inv_1x_8(a, y);
  input [7:0] a;
  output [7:0] y;

  supply1 vdd;
  supply0 gnd;
  muddlib07__inv_1x inv_1x_7_(.a(a[7]), .y(y[7]));
  muddlib07__inv_1x inv_1x_6_(.a(a[6]), .y(y[6]));
  muddlib07__inv_1x inv_1x_5_(.a(a[5]), .y(y[5]));
  muddlib07__inv_1x inv_1x_4_(.a(a[4]), .y(y[4]));
  muddlib07__inv_1x inv_1x_3_(.a(a[3]), .y(y[3]));
  muddlib07__inv_1x inv_1x_2_(.a(a[2]), .y(y[2]));
  muddlib07__inv_1x inv_1x_1_(.a(a[1]), .y(y[1]));
  muddlib07__inv_1x inv_1x_0_(.a(a[0]), .y(y[0]));
endmodule   /* wordlib8__inv_1x_8 */

module mips8_GK__condinv(a, invert, y);
  input [7:0] a;
  input invert;
  output [7:0] y;

  supply1 vdd;
  supply0 gnd;
  wire [7:0] ab;

  wordlib8__inv_1x_8 inv_1x_8_0(.a(a[7:0]), .y(ab[7:0]));
  wordlib8__mux2_1x_8 mux2_1x__0(.d0(a[7:0]), .d1(ab[7:0]), .s(invert), 
      .y(y[7:0]));
endmodule   /* mips8_GK__condinv */

module muddlib07__mux4_dp_1x(d0, d1, d2, d3, s0, s0b, s1, s1b, y);
  input d0;
  input d1;
  input d2;
  input d3;
  input s0;
  input s0b;
  input s1;
  input s1b;
  output y;

  supply1 vdd;
  supply0 gnd;
  wire net_28, net_29, net_30, net_5, net_50, net_51, net_56, net_57, net_58;
  wire net_6, net_68, net_70, net_8;

  tranif1 nmos_0(gnd, net_5, d0);
  tranif1 nmos_1(gnd, net_6, d1);
  tranif1 nmos_3(net_5, net_8, s0b);
  tranif1 nmos_4(net_6, net_8, s0);
  tranif1 nmos_5(net_8, net_50, s1b);
  tranif1 nmos_7(gnd, net_70, d3);
  tranif1 nmos_8(net_68, net_51, s0b);
  tranif1 nmos_9(net_70, net_51, s0);
  tranif1 nmos_10(net_51, net_50, s1);
  tranif1 nmos_11(gnd, net_68, d2);
  tranif1 nmos_12(gnd, y, net_50);
  tranif0 pmos_0(net_50, net_30, s1);
  tranif0 pmos_2(net_30, net_28, s0);
  tranif0 pmos_3(net_28, vdd, d0);
  tranif0 pmos_4(net_30, net_29, s0b);
  tranif0 pmos_5(net_29, vdd, d1);
  tranif0 pmos_7(net_58, net_56, s0);
  tranif0 pmos_8(net_56, vdd, d2);
  tranif0 pmos_9(net_58, net_57, s0b);
  tranif0 pmos_10(net_57, vdd, d3);
  tranif0 pmos_11(net_50, net_58, s1b);
  tranif0 pmos_12(y, vdd, net_50);
endmodule   /* muddlib07__mux4_dp_1x */

module wordlib8__mux4_1x_8(d0, d1, d2, d3, s0, s1, y);
  input [7:0] d0;
  input [7:0] d1;
  input [7:0] d2;
  input [7:0] d3;
  input s0;
  input s1;
  output [7:0] y;

  supply1 vdd;
  supply0 gnd;
  wire net_66, net_70, net_78, net_79;

  muddlib07__invbuf_4x invbuf_4_0(.s(s0), .s_out(net_66), .sb_out(net_78));
  muddlib07__invbuf_4x invbuf_4_1(.s(s1), .s_out(net_79), .sb_out(net_70));
  muddlib07__mux4_dp_1x mux4_dp_1x_7_(.d0(d0[7]), .d1(d1[7]), .d2(d2[7]), 
      .d3(d3[7]), .s0(net_66), .s0b(net_78), .s1(net_79), .s1b(net_70), 
      .y(y[7]));
  muddlib07__mux4_dp_1x mux4_dp_1x_6_(.d0(d0[6]), .d1(d1[6]), .d2(d2[6]), 
      .d3(d3[6]), .s0(net_66), .s0b(net_78), .s1(net_79), .s1b(net_70), 
      .y(y[6]));
  muddlib07__mux4_dp_1x mux4_dp_1x_5_(.d0(d0[5]), .d1(d1[5]), .d2(d2[5]), 
      .d3(d3[5]), .s0(net_66), .s0b(net_78), .s1(net_79), .s1b(net_70), 
      .y(y[5]));
  muddlib07__mux4_dp_1x mux4_dp_1x_4_(.d0(d0[4]), .d1(d1[4]), .d2(d2[4]), 
      .d3(d3[4]), .s0(net_66), .s0b(net_78), .s1(net_79), .s1b(net_70), 
      .y(y[4]));
  muddlib07__mux4_dp_1x mux4_dp_1x_3_(.d0(d0[3]), .d1(d1[3]), .d2(d2[3]), 
      .d3(d3[3]), .s0(net_66), .s0b(net_78), .s1(net_79), .s1b(net_70), 
      .y(y[3]));
  muddlib07__mux4_dp_1x mux4_dp_1x_2_(.d0(d0[2]), .d1(d1[2]), .d2(d2[2]), 
      .d3(d3[2]), .s0(net_66), .s0b(net_78), .s1(net_79), .s1b(net_70), 
      .y(y[2]));
  muddlib07__mux4_dp_1x mux4_dp_1x_1_(.d0(d0[1]), .d1(d1[1]), .d2(d2[1]), 
      .d3(d3[1]), .s0(net_66), .s0b(net_78), .s1(net_79), .s1b(net_70), 
      .y(y[1]));
  muddlib07__mux4_dp_1x mux4_dp_1x_0_(.d0(d0[0]), .d1(d1[0]), .d2(d2[0]), 
      .d3(d3[0]), .s0(net_66), .s0b(net_78), .s1(net_79), .s1b(net_70), 
      .y(y[0]));
endmodule   /* wordlib8__mux4_1x_8 */

module muddlib07__or2_1x(a, b, y);
  input a;
  input b;
  output y;

  supply1 vdd;
  supply0 gnd;
  wire net_58, net_71;

  tranif1 nmos_8(gnd, net_58, b);
  tranif1 nmos_10(gnd, y, net_58);
  tranif1 nmos_11(gnd, net_58, a);
  tranif0 pmos_2(net_58, net_71, b);
  tranif0 pmos_3(net_71, vdd, a);
  tranif0 pmos_4(y, vdd, net_58);
endmodule   /* muddlib07__or2_1x */

module wordlib8__or2_1x_8(a, b, y);
  input [7:0] a;
  input [7:0] b;
  output [7:0] y;

  supply1 vdd;
  supply0 gnd;
  muddlib07__or2_1x or2_1x_7_(.a(a[7]), .b(b[7]), .y(y[7]));
  muddlib07__or2_1x or2_1x_6_(.a(a[6]), .b(b[6]), .y(y[6]));
  muddlib07__or2_1x or2_1x_5_(.a(a[5]), .b(b[5]), .y(y[5]));
  muddlib07__or2_1x or2_1x_4_(.a(a[4]), .b(b[4]), .y(y[4]));
  muddlib07__or2_1x or2_1x_3_(.a(a[3]), .b(b[3]), .y(y[3]));
  muddlib07__or2_1x or2_1x_2_(.a(a[2]), .b(b[2]), .y(y[2]));
  muddlib07__or2_1x or2_1x_1_(.a(a[1]), .b(b[1]), .y(y[1]));
  muddlib07__or2_1x or2_1x_0_(.a(a[0]), .b(b[0]), .y(y[0]));
endmodule   /* wordlib8__or2_1x_8 */

module mips8_GK__yzdetect_8(a, yzero);
  input [7:0] a;
  output yzero;

  supply1 vdd;
  supply0 gnd;
  wire net_0, net_12, net_15, net_3, net_6, net_9;

  muddlib07__nand2_1x nand2_1x_4(.a(net_0), .b(net_3), .y(net_12));
  muddlib07__nand2_1x nand2_1x_5(.a(net_6), .b(net_9), .y(net_15));
  muddlib07__nor2_1x nor2_1x_0(.a(a[6]), .b(a[7]), .y(net_0));
  muddlib07__nor2_1x nor2_1x_1(.a(a[5]), .b(a[4]), .y(net_3));
  muddlib07__nor2_1x nor2_1x_2(.a(a[0]), .b(a[1]), .y(net_6));
  muddlib07__nor2_1x nor2_1x_3(.a(a[2]), .b(a[3]), .y(net_9));
  muddlib07__nor2_1x nor2_1x_4(.a(net_12), .b(net_15), .y(yzero));
endmodule   /* mips8_GK__yzdetect_8 */

module mips8_GK__alu(a, alucontrol, b, result, zero);
  input [7:0] a;
  input [2:0] alucontrol;
  input [7:0] b;
  output [7:0] result;
  output zero;

  supply1 vdd;
  supply0 gnd;
  wire adder_8_0_cout;
  wire [7:0] andresult;
  wire [7:0] b2;
  wire [7:0] orresult;
  wire [7:0] sumresult;

  wordlib8__adder_8 adder_8_0(.a(a[7:0]), .b(b2[7:0]), .cin(alucontrol[2]), 
      .cout(adder_8_0_cout), .s(sumresult[7:0]));
  wordlib8__and2_1x_8 and2_1x__0(.a(a[7:0]), .b(b[7:0]), .y(andresult[7:0]));
  mips8_GK__condinv condinv_0(.a(b[7:0]), .invert(alucontrol[2]), 
      .y(b2[7:0]));
  wordlib8__mux4_1x_8 mux4_1x__0(.d0(andresult[7:0]), .d1(orresult[7:0]), 
      .d2(sumresult[7:0]), .d3({gnd, gnd, gnd, gnd, gnd, gnd, gnd, 
      sumresult[7]}), .s0(alucontrol[0]), .s1(alucontrol[1]), 
      .y(result[7:0]));
  wordlib8__or2_1x_8 or2_1x_8_0(.a(a[7:0]), .b(b[7:0]), .y(orresult[7:0]));
  mips8_GK__yzdetect_8 yzdetect_0(.a(result[7:0]), .yzero(zero));
endmodule   /* mips8_GK__alu */

module muddlib07__clkinvbuf_4x(ph, phb, phbuf);
  input ph;
  output phb;
  output phbuf;

  supply1 vdd;
  supply0 gnd;
  wire notph;

  tranif1 nmos_0(gnd, phb, ph);
  tranif1 nmos_1(gnd, notph, ph);
  tranif1 nmos_2(gnd, phbuf, notph);
  tranif0 pmos_0(phb, vdd, ph);
  tranif0 pmos_1(notph, vdd, ph);
  tranif0 pmos_2(phbuf, vdd, notph);
endmodule   /* muddlib07__clkinvbuf_4x */

module muddlib07__clkinvbufdual_4x(ph1, ph2, ph1b, ph1buf, ph2b, ph2buf);
  input ph1;
  input ph2;
  output ph1b;
  output ph1buf;
  output ph2b;
  output ph2buf;

  supply1 vdd;
  supply0 gnd;
  muddlib07__clkinvbuf_4x clkinvbu_1(.ph(ph1), .phb(ph1b), .phbuf(ph1buf));
  muddlib07__clkinvbuf_4x clkinvbu_2(.ph(ph2), .phb(ph2b), .phbuf(ph2buf));
endmodule   /* muddlib07__clkinvbufdual_4x */

module muddlib07__flop_dp_1x(ph1, ph1b, ph2, ph2b, d, q);
  input ph1;
  input ph1b;
  input ph2;
  input ph2b;
  input d;
  output q;

  supply1 vdd;
  supply0 gnd;
  wire master, masterinb, n6, n7, n8, n9, slaveb;
  trireg masterb, slave;

  tranif1 nmos_2(masterinb, masterb, ph2);
  tranif1 nmos_3(gnd, master, masterb);
  rtranif1 nmos_4(master, slave, ph1);
  tranif1 nmos_5(n6, masterb, ph2b);
  tranif1 nmos_6(gnd, n6, master);
  tranif1 nmos_7(gnd, n8, slaveb);
  tranif1 nmos_8(gnd, slaveb, slave);
  tranif1 nmos_10(n8, slave, ph1b);
  tranif1 nmos_11(gnd, q, slaveb);
  tranif1 nmos_19(gnd, masterinb, d);
  tranif0 pmos_2(masterb, masterinb, ph2b);
  tranif0 pmos_3(master, vdd, masterb);
  rtranif0 pmos_4(slave, master, ph1b);
  tranif0 pmos_5(masterb, n7, ph2);
  tranif0 pmos_6(n7, vdd, master);
  tranif0 pmos_7(n9, vdd, slaveb);
  tranif0 pmos_8(slaveb, vdd, slave);
  tranif0 pmos_10(slave, n9, ph1);
  tranif0 pmos_11(q, vdd, slaveb);
  tranif0 pmos_16(masterinb, vdd, d);
endmodule   /* muddlib07__flop_dp_1x */

module wordlib8__flop_1x_8(d, ph1, ph2, q);
  input [7:0] d;
  input ph1;
  input ph2;
  output [7:0] q;

  supply1 vdd;
  supply0 gnd;
  wire net_29, net_30, net_31, net_32;

  muddlib07__clkinvbufdual_4x clkinvbu_0(.ph1(ph1), .ph2(ph2), .ph1b(net_29), 
      .ph1buf(net_30), .ph2b(net_31), .ph2buf(net_32));
  muddlib07__flop_dp_1x flop_8_7_(.ph1(net_30), .ph1b(net_29), .ph2(net_32), 
      .ph2b(net_31), .d(d[7]), .q(q[7]));
  muddlib07__flop_dp_1x flop_8_6_(.ph1(net_30), .ph1b(net_29), .ph2(net_32), 
      .ph2b(net_31), .d(d[6]), .q(q[6]));
  muddlib07__flop_dp_1x flop_8_5_(.ph1(net_30), .ph1b(net_29), .ph2(net_32), 
      .ph2b(net_31), .d(d[5]), .q(q[5]));
  muddlib07__flop_dp_1x flop_8_4_(.ph1(net_30), .ph1b(net_29), .ph2(net_32), 
      .ph2b(net_31), .d(d[4]), .q(q[4]));
  muddlib07__flop_dp_1x flop_8_3_(.ph1(net_30), .ph1b(net_29), .ph2(net_32), 
      .ph2b(net_31), .d(d[3]), .q(q[3]));
  muddlib07__flop_dp_1x flop_8_2_(.ph1(net_30), .ph1b(net_29), .ph2(net_32), 
      .ph2b(net_31), .d(d[2]), .q(q[2]));
  muddlib07__flop_dp_1x flop_8_1_(.ph1(net_30), .ph1b(net_29), .ph2(net_32), 
      .ph2b(net_31), .d(d[1]), .q(q[1]));
  muddlib07__flop_dp_1x flop_8_0_(.ph1(net_30), .ph1b(net_29), .ph2(net_32), 
      .ph2b(net_31), .d(d[0]), .q(q[0]));
endmodule   /* wordlib8__flop_1x_8 */

module muddlib07__flopen_dp_1x(ph1, ph1b, ph2, ph2b, d, en, enb, q);
  input ph1;
  input ph1b;
  input ph2;
  input ph2b;
  input d;
  input en;
  input enb;
  output q;

  supply1 vdd;
  supply0 gnd;
  wire master, masterinb, n2, n3, n4, n5, n6, n7, n8, n9, slaveb;
  trireg masterb, slave;

  tranif1 nmos_2(masterinb, masterb, ph2);
  tranif1 nmos_3(gnd, master, masterb);
  rtranif1 nmos_4(master, slave, ph1);
  tranif1 nmos_5(n6, masterb, ph2b);
  tranif1 nmos_6(gnd, n6, master);
  tranif1 nmos_7(gnd, n8, slaveb);
  tranif1 nmos_8(gnd, slaveb, slave);
  tranif1 nmos_10(n8, slave, ph1b);
  tranif1 nmos_11(gnd, q, slaveb);
  tranif1 nmos_16(gnd, n2, en);
  tranif1 nmos_18(n3, gnd, enb);
  tranif1 nmos_19(n2, masterinb, d);
  tranif1 nmos_20(masterinb, n3, slave);
  tranif0 pmos_2(masterb, masterinb, ph2b);
  tranif0 pmos_3(master, vdd, masterb);
  rtranif0 pmos_4(slave, master, ph1b);
  tranif0 pmos_5(masterb, n7, ph2);
  tranif0 pmos_6(n7, vdd, master);
  tranif0 pmos_7(n9, vdd, slaveb);
  tranif0 pmos_8(slaveb, vdd, slave);
  tranif0 pmos_10(slave, n9, ph1);
  tranif0 pmos_11(q, vdd, slaveb);
  tranif0 pmos_16(masterinb, n4, d);
  tranif0 pmos_17(n4, vdd, enb);
  tranif0 pmos_19(n5, masterinb, slave);
  tranif0 pmos_20(vdd, n5, en);
endmodule   /* muddlib07__flopen_dp_1x */

module wordlib8__flopen_1x_8(d, en, ph1, ph2, q);
  input [7:0] d;
  input en;
  input ph1;
  input ph2;
  output [7:0] q;

  supply1 vdd;
  supply0 gnd;
  wire net_15, net_16, net_17, net_18, net_19, net_21;

  muddlib07__clkinvbufdual_4x clkinvbu_0(.ph1(ph1), .ph2(ph2), .ph1b(net_18), 
      .ph1buf(net_17), .ph2b(net_16), .ph2buf(net_15));
  muddlib07__flopen_dp_1x flopen_8_7_(.ph1(net_17), .ph1b(net_18), 
      .ph2(net_15), .ph2b(net_16), .d(d[7]), .en(net_21), .enb(net_19), 
      .q(q[7]));
  muddlib07__flopen_dp_1x flopen_8_6_(.ph1(net_17), .ph1b(net_18), 
      .ph2(net_15), .ph2b(net_16), .d(d[6]), .en(net_21), .enb(net_19), 
      .q(q[6]));
  muddlib07__flopen_dp_1x flopen_8_5_(.ph1(net_17), .ph1b(net_18), 
      .ph2(net_15), .ph2b(net_16), .d(d[5]), .en(net_21), .enb(net_19), 
      .q(q[5]));
  muddlib07__flopen_dp_1x flopen_8_4_(.ph1(net_17), .ph1b(net_18), 
      .ph2(net_15), .ph2b(net_16), .d(d[4]), .en(net_21), .enb(net_19), 
      .q(q[4]));
  muddlib07__flopen_dp_1x flopen_8_3_(.ph1(net_17), .ph1b(net_18), 
      .ph2(net_15), .ph2b(net_16), .d(d[3]), .en(net_21), .enb(net_19), 
      .q(q[3]));
  muddlib07__flopen_dp_1x flopen_8_2_(.ph1(net_17), .ph1b(net_18), 
      .ph2(net_15), .ph2b(net_16), .d(d[2]), .en(net_21), .enb(net_19), 
      .q(q[2]));
  muddlib07__flopen_dp_1x flopen_8_1_(.ph1(net_17), .ph1b(net_18), 
      .ph2(net_15), .ph2b(net_16), .d(d[1]), .en(net_21), .enb(net_19), 
      .q(q[1]));
  muddlib07__flopen_dp_1x flopen_8_0_(.ph1(net_17), .ph1b(net_18), 
      .ph2(net_15), .ph2b(net_16), .d(d[0]), .en(net_21), .enb(net_19), 
      .q(q[0]));
  muddlib07__invbuf_4x invbuf_4_0(.s(en), .s_out(net_21), .sb_out(net_19));
endmodule   /* wordlib8__flopen_1x_8 */

module muddlib07__mux3_dp_1x(d0, d1, d2, s0, s0b, s1, s1b, y);
  input d0;
  input d1;
  input d2;
  input s0;
  input s0b;
  input s1;
  input s1b;
  output y;

  supply1 vdd;
  supply0 gnd;
  wire net_124, net_134, net_135, net_161, net_81, net_83, net_85, net_92;
  wire net_96;

  tranif1 nmos_8(net_92, net_83, s1);
  tranif1 nmos_9(gnd, y, net_83);
  tranif1 nmos_10(gnd, net_85, d0);
  tranif1 nmos_11(gnd, net_161, d1);
  tranif1 nmos_12(gnd, net_92, d2);
  tranif1 nmos_13(net_85, net_96, s0b);
  tranif1 nmos_14(net_161, net_96, s0);
  tranif1 nmos_15(net_96, net_83, s1b);
  tranif0 pmos_8(net_124, vdd, d2);
  tranif0 pmos_9(y, vdd, net_83);
  tranif0 pmos_10(net_83, net_81, s1);
  tranif0 pmos_11(net_83, net_124, s1b);
  tranif0 pmos_12(net_81, net_134, s0);
  tranif0 pmos_13(net_134, vdd, d0);
  tranif0 pmos_14(net_81, net_135, s0b);
  tranif0 pmos_15(net_135, vdd, d1);
endmodule   /* muddlib07__mux3_dp_1x */

module wordlib8__mux3_1x_8(d0, d1, d2, s0, s1, y);
  input [7:0] d0;
  input [7:0] d1;
  input [7:0] d2;
  input s0;
  input s1;
  output [7:0] y;

  supply1 vdd;
  supply0 gnd;
  wire net_42, net_48, net_49, net_53;

  muddlib07__invbuf_4x invbuf_4_0(.s(s0), .s_out(net_42), .sb_out(net_53));
  muddlib07__invbuf_4x invbuf_4_1(.s(s1), .s_out(net_48), .sb_out(net_49));
  muddlib07__mux3_dp_1x mux3_dp_1x_7_(.d0(d0[7]), .d1(d1[7]), .d2(d2[7]), 
      .s0(net_42), .s0b(net_53), .s1(net_48), .s1b(net_49), .y(y[7]));
  muddlib07__mux3_dp_1x mux3_dp_1x_6_(.d0(d0[6]), .d1(d1[6]), .d2(d2[6]), 
      .s0(net_42), .s0b(net_53), .s1(net_48), .s1b(net_49), .y(y[6]));
  muddlib07__mux3_dp_1x mux3_dp_1x_5_(.d0(d0[5]), .d1(d1[5]), .d2(d2[5]), 
      .s0(net_42), .s0b(net_53), .s1(net_48), .s1b(net_49), .y(y[5]));
  muddlib07__mux3_dp_1x mux3_dp_1x_4_(.d0(d0[4]), .d1(d1[4]), .d2(d2[4]), 
      .s0(net_42), .s0b(net_53), .s1(net_48), .s1b(net_49), .y(y[4]));
  muddlib07__mux3_dp_1x mux3_dp_1x_3_(.d0(d0[3]), .d1(d1[3]), .d2(d2[3]), 
      .s0(net_42), .s0b(net_53), .s1(net_48), .s1b(net_49), .y(y[3]));
  muddlib07__mux3_dp_1x mux3_dp_1x_2_(.d0(d0[2]), .d1(d1[2]), .d2(d2[2]), 
      .s0(net_42), .s0b(net_53), .s1(net_48), .s1b(net_49), .y(y[2]));
  muddlib07__mux3_dp_1x mux3_dp_1x_1_(.d0(d0[1]), .d1(d1[1]), .d2(d2[1]), 
      .s0(net_42), .s0b(net_53), .s1(net_48), .s1b(net_49), .y(y[1]));
  muddlib07__mux3_dp_1x mux3_dp_1x_0_(.d0(d0[0]), .d1(d1[0]), .d2(d2[0]), 
      .s0(net_42), .s0b(net_53), .s1(net_48), .s1b(net_49), .y(y[0]));
endmodule   /* wordlib8__mux3_1x_8 */

module muddlib07__flopenr_dp_1x(ph1, ph1b, ph2, ph2b, d, en, enb, resetb, q);
  input ph1;
  input ph1b;
  input ph2;
  input ph2b;
  input d;
  input en;
  input enb;
  input resetb;
  output q;

  supply1 vdd;
  supply0 gnd;
  wire master, masterinb, n1, n2, n3, n4, n5, n6, n7, n8, n9, slaveb;
  trireg masterb, slave;

  tranif1 nmos_2(masterinb, masterb, ph2);
  tranif1 nmos_3(gnd, master, masterb);
  rtranif1 nmos_4(master, slave, ph1);
  tranif1 nmos_5(n6, masterb, ph2b);
  tranif1 nmos_6(gnd, n6, master);
  tranif1 nmos_7(gnd, n8, slaveb);
  tranif1 nmos_8(gnd, slaveb, slave);
  tranif1 nmos_10(n8, slave, ph1b);
  tranif1 nmos_11(gnd, q, slaveb);
  tranif1 nmos_16(n1, n2, en);
  tranif1 nmos_17(gnd, n1, resetb);
  tranif1 nmos_18(n3, n1, enb);
  tranif1 nmos_19(n2, masterinb, d);
  tranif1 nmos_20(masterinb, n3, slave);
  tranif0 pmos_2(masterb, masterinb, ph2b);
  tranif0 pmos_3(master, vdd, masterb);
  rtranif0 pmos_4(slave, master, ph1b);
  tranif0 pmos_5(masterb, n7, ph2);
  tranif0 pmos_6(n7, vdd, master);
  tranif0 pmos_7(n9, vdd, slaveb);
  tranif0 pmos_8(slaveb, vdd, slave);
  tranif0 pmos_10(slave, n9, ph1);
  tranif0 pmos_11(q, vdd, slaveb);
  tranif0 pmos_16(masterinb, n4, d);
  tranif0 pmos_17(n4, vdd, enb);
  tranif0 pmos_18(masterinb, vdd, resetb);
  tranif0 pmos_19(n5, masterinb, slave);
  tranif0 pmos_20(vdd, n5, en);
endmodule   /* muddlib07__flopenr_dp_1x */

module wordlib8__flopenr_1x_8(d, en, ph1, ph2, reset, q);
  input [7:0] d;
  input en;
  input ph1;
  input ph2;
  input reset;
  output [7:0] q;

  supply1 vdd;
  supply0 gnd;
  wire net_10, net_11, net_12, net_13, net_16, net_2, net_6;

  muddlib07__clkinvbufdual_4x clkinvbu_0(.ph1(ph1), .ph2(ph2), .ph1b(net_13), 
      .ph1buf(net_12), .ph2b(net_11), .ph2buf(net_10));
  muddlib07__flopenr_dp_1x flopenr_8_7_(.ph1(net_12), .ph1b(net_13), 
      .ph2(net_10), .ph2b(net_11), .d(d[7]), .en(net_16), .enb(net_2), 
      .resetb(net_6), .q(q[7]));
  muddlib07__flopenr_dp_1x flopenr_8_6_(.ph1(net_12), .ph1b(net_13), 
      .ph2(net_10), .ph2b(net_11), .d(d[6]), .en(net_16), .enb(net_2), 
      .resetb(net_6), .q(q[6]));
  muddlib07__flopenr_dp_1x flopenr_8_5_(.ph1(net_12), .ph1b(net_13), 
      .ph2(net_10), .ph2b(net_11), .d(d[5]), .en(net_16), .enb(net_2), 
      .resetb(net_6), .q(q[5]));
  muddlib07__flopenr_dp_1x flopenr_8_4_(.ph1(net_12), .ph1b(net_13), 
      .ph2(net_10), .ph2b(net_11), .d(d[4]), .en(net_16), .enb(net_2), 
      .resetb(net_6), .q(q[4]));
  muddlib07__flopenr_dp_1x flopenr_8_3_(.ph1(net_12), .ph1b(net_13), 
      .ph2(net_10), .ph2b(net_11), .d(d[3]), .en(net_16), .enb(net_2), 
      .resetb(net_6), .q(q[3]));
  muddlib07__flopenr_dp_1x flopenr_8_2_(.ph1(net_12), .ph1b(net_13), 
      .ph2(net_10), .ph2b(net_11), .d(d[2]), .en(net_16), .enb(net_2), 
      .resetb(net_6), .q(q[2]));
  muddlib07__flopenr_dp_1x flopenr_8_1_(.ph1(net_12), .ph1b(net_13), 
      .ph2(net_10), .ph2b(net_11), .d(d[1]), .en(net_16), .enb(net_2), 
      .resetb(net_6), .q(q[1]));
  muddlib07__flopenr_dp_1x flopenr_8_0_(.ph1(net_12), .ph1b(net_13), 
      .ph2(net_10), .ph2b(net_11), .d(d[0]), .en(net_16), .enb(net_2), 
      .resetb(net_6), .q(q[0]));
  muddlib07__inv_4x inv_4x_0(.a(reset), .y(net_6));
  muddlib07__invbuf_4x invbuf_4_0(.s(en), .s_out(net_16), .sb_out(net_2));
endmodule   /* wordlib8__flopenr_1x_8 */

module muddlib07__mux2_c_1x(d0, d1, s, y);
  input d0;
  input d1;
  input s;
  output y;

  supply1 vdd;
  supply0 gnd;
  wire net_12, net_15, net_3, net_4, net_5, sb;

  tranif1 nmos_0(gnd, net_3, d1);
  tranif1 nmos_1(gnd, net_4, d0);
  tranif1 nmos_2(net_3, net_5, s);
  tranif1 nmos_3(net_4, net_5, sb);
  tranif1 nmos_4(gnd, y, net_5);
  tranif1 nmos_5(gnd, sb, s);
  tranif0 pmos_0(net_5, net_15, sb);
  tranif0 pmos_1(net_15, vdd, d1);
  tranif0 pmos_2(net_5, net_12, s);
  tranif0 pmos_3(net_12, vdd, d0);
  tranif0 pmos_4(y, vdd, net_5);
  tranif0 pmos_5(sb, vdd, s);
endmodule   /* muddlib07__mux2_c_1x */

module muddlib07__nand3_1x(a, b, c, y);
  input a;
  input b;
  input c;
  output y;

  supply1 vdd;
  supply0 gnd;
  wire net_15, net_4;

  tranif1 nmos_0(net_15, net_4, b);
  tranif1 nmos_1(net_4, y, c);
  tranif1 nmos_2(gnd, net_15, a);
  tranif0 pmos_0(y, vdd, c);
  tranif0 pmos_1(y, vdd, b);
  tranif0 pmos_2(y, vdd, a);
endmodule   /* muddlib07__nand3_1x */

module muddlib07__nand5_1x(a, b, c, d, e, y);
  input a;
  input b;
  input c;
  input d;
  input e;
  output y;

  supply1 vdd;
  supply0 gnd;
  wire net_28, net_29, net_30, net_47;

  tranif1 nmos_0(net_28, net_30, b);
  tranif1 nmos_1(net_29, net_47, d);
  tranif1 nmos_2(gnd, net_28, a);
  tranif1 nmos_3(net_30, net_29, c);
  tranif1 nmos_4(net_47, y, e);
  tranif0 pmos_0(y, vdd, a);
  tranif0 pmos_1(y, vdd, b);
  tranif0 pmos_2(y, vdd, c);
  tranif0 pmos_3(y, vdd, d);
  tranif0 pmos_4(y, vdd, e);
endmodule   /* muddlib07__nand5_1x */

module mips8_GK__regram_zipper(RegWrite, ph2, r1a, r1a_1, r1a_2, r2a, r2a_1, 
      r2a_2, wa, wa_1, wa_2, read1, read1b, read2, read2b, write, writeb);
  input RegWrite;
  input ph2;
  input [0:0] r1a;
  input [1:1] r1a_1;
  input [2:2] r1a_2;
  input [0:0] r2a;
  input [1:1] r2a_1;
  input [2:2] r2a_2;
  input [0:0] wa;
  input [1:1] wa_1;
  input [2:2] wa_2;
  output read1;
  output read1b;
  output read2;
  output read2b;
  output write;
  output writeb;

  supply1 vdd;
  supply0 gnd;
  wire net_0, net_1, net_2;

  muddlib07__invbuf_4x invbuf_4x(.s(net_0), .s_out(read1b), .sb_out(read1));
  muddlib07__invbuf_4x invbuf_4x_1(.s(net_1), .s_out(read2b), .sb_out(read2));
  muddlib07__invbuf_4x invbuf_4x_2(.s(net_2), .s_out(writeb), .sb_out(write));
  muddlib07__nand3_1x nand3_1x(.a(r1a[0]), .b(r1a_1[1]), .c(r1a_2[2]), 
      .y(net_0));
  muddlib07__nand3_1x nand3_1x_1(.a(r2a[0]), .b(r2a_1[1]), .c(r2a_2[2]), 
      .y(net_1));
  muddlib07__nand5_1x nand5_1x_1(.a(wa[0]), .b(wa_1[1]), .c(wa_2[2]), .d(ph2), 
      .e(RegWrite), .y(net_2));
endmodule   /* mips8_GK__regram_zipper */

module mips8_GK__regram0(read1, read2, r1, r2);
  input read1;
  input read2;
  output r1;
  output r2;

  supply0 gnd;
  tranif1 nmos_0(gnd, r1, read1);
  tranif1 nmos_1(gnd, r2, read2);
endmodule   /* mips8_GK__regram0 */

module mips8_GK__regramvector0_dp(RegWrite, ph2, r1a, r1a_1, r1a_2, r2a, r2a_1, 
      r2a_2, wa, wa_1, wa_2, r1, r2);
  input RegWrite;
  input ph2;
  input [0:0] r1a;
  input [1:1] r1a_1;
  input [2:2] r1a_2;
  input [0:0] r2a;
  input [1:1] r2a_1;
  input [2:2] r2a_2;
  input [0:0] wa;
  input [1:1] wa_1;
  input [2:2] wa_2;
  output [7:0] r1;
  output [7:0] r2;

  supply1 vdd;
  supply0 gnd;
  wire net_16, net_32, regfile__0_read1b, regfile__0_read2b, regfile__0_write;
  wire regfile__0_writeb;

  mips8_GK__regram_zipper regfile__0(.RegWrite(RegWrite), .ph2(ph2), 
      .r1a(r1a[0:0]), .r1a_1(r1a_1[1:1]), .r1a_2(r1a_2[2:2]), .r2a(r2a[0:0]), 
      .r2a_1(r2a_1[1:1]), .r2a_2(r2a_2[2:2]), .wa(wa[0:0]), .wa_1(wa_1[1:1]), 
      .wa_2(wa_2[2:2]), .read1(net_32), .read1b(regfile__0_read1b), 
      .read2(net_16), .read2b(regfile__0_read2b), .write(regfile__0_write), 
      .writeb(regfile__0_writeb));
  mips8_GK__regram0 regram_0_7_(.read1(net_32), .read2(net_16), .r1(r1[7]), 
      .r2(r2[7]));
  mips8_GK__regram0 regram_0_6_(.read1(net_32), .read2(net_16), .r1(r1[6]), 
      .r2(r2[6]));
  mips8_GK__regram0 regram_0_5_(.read1(net_32), .read2(net_16), .r1(r1[5]), 
      .r2(r2[5]));
  mips8_GK__regram0 regram_0_4_(.read1(net_32), .read2(net_16), .r1(r1[4]), 
      .r2(r2[4]));
  mips8_GK__regram0 regram_0_3_(.read1(net_32), .read2(net_16), .r1(r1[3]), 
      .r2(r2[3]));
  mips8_GK__regram0 regram_0_2_(.read1(net_32), .read2(net_16), .r1(r1[2]), 
      .r2(r2[2]));
  mips8_GK__regram0 regram_0_1_(.read1(net_32), .read2(net_16), .r1(r1[1]), 
      .r2(r2[1]));
  mips8_GK__regram0 regram_0_0_(.read1(net_32), .read2(net_16), .r1(r1[0]), 
      .r2(r2[0]));
endmodule   /* mips8_GK__regramvector0_dp */

module mips8_GK__regram_dp(read1, read1b, read2, read2b, w, write, writeb, r1, 
      r2);
  input read1;
  input read1b;
  input read2;
  input read2b;
  input w;
  input write;
  input writeb;
  output r1;
  output r2;

  supply1 vdd;
  supply0 gnd;
  wire net_51, net_52, net_53, net_54, net_55, net_57, v, vb;

  tranif1 nmos_0(net_52, v, vb);
  tranif1 nmos_1(gnd, net_52, writeb);
  tranif1 nmos_2(gnd, vb, v);
  tranif1 nmos_3(w, v, write);
  tranif1 nmos_4(net_53, r1, read1);
  tranif1 nmos_5(net_55, r2, read2);
  tranif1 nmos_6(gnd, net_53, vb);
  tranif1 nmos_7(gnd, net_55, vb);
  tranif0 pmos_0(v, net_51, vb);
  tranif0 pmos_1(net_51, vdd, write);
  tranif0 pmos_2(vb, vdd, v);
  tranif0 pmos_3(v, w, writeb);
  tranif0 pmos_4(net_54, vdd, vb);
  tranif0 pmos_5(r1, net_54, read1b);
  tranif0 pmos_6(r2, net_57, read2b);
  tranif0 pmos_7(net_57, vdd, vb);
endmodule   /* mips8_GK__regram_dp */

module mips8_GK__regram_8(read1, read1b, read2, read2b, w, write, writeb, r1, 
      r2);
  input read1;
  input read1b;
  input read2;
  input read2b;
  input [7:0] w;
  input write;
  input writeb;
  output [7:0] r1;
  output [7:0] r2;

  supply1 vdd;
  supply0 gnd;
  mips8_GK__regram_dp regram_dp_7_(.read1(read1), .read1b(read1b), 
      .read2(read2), .read2b(read2b), .w(w[7]), .write(write), .writeb(writeb), 
      .r1(r1[7]), .r2(r2[7]));
  mips8_GK__regram_dp regram_dp_6_(.read1(read1), .read1b(read1b), 
      .read2(read2), .read2b(read2b), .w(w[6]), .write(write), .writeb(writeb), 
      .r1(r1[6]), .r2(r2[6]));
  mips8_GK__regram_dp regram_dp_5_(.read1(read1), .read1b(read1b), 
      .read2(read2), .read2b(read2b), .w(w[5]), .write(write), .writeb(writeb), 
      .r1(r1[5]), .r2(r2[5]));
  mips8_GK__regram_dp regram_dp_4_(.read1(read1), .read1b(read1b), 
      .read2(read2), .read2b(read2b), .w(w[4]), .write(write), .writeb(writeb), 
      .r1(r1[4]), .r2(r2[4]));
  mips8_GK__regram_dp regram_dp_3_(.read1(read1), .read1b(read1b), 
      .read2(read2), .read2b(read2b), .w(w[3]), .write(write), .writeb(writeb), 
      .r1(r1[3]), .r2(r2[3]));
  mips8_GK__regram_dp regram_dp_2_(.read1(read1), .read1b(read1b), 
      .read2(read2), .read2b(read2b), .w(w[2]), .write(write), .writeb(writeb), 
      .r1(r1[2]), .r2(r2[2]));
  mips8_GK__regram_dp regram_dp_1_(.read1(read1), .read1b(read1b), 
      .read2(read2), .read2b(read2b), .w(w[1]), .write(write), .writeb(writeb), 
      .r1(r1[1]), .r2(r2[1]));
  mips8_GK__regram_dp regram_dp_0_(.read1(read1), .read1b(read1b), 
      .read2(read2), .read2b(read2b), .w(w[0]), .write(write), .writeb(writeb), 
      .r1(r1[0]), .r2(r2[0]));
endmodule   /* mips8_GK__regram_8 */

module mips8_GK__regramvector_dp(RegWrite, ph2, r1a, r1a_1, r1a_2, r2a, r2a_1, 
      r2a_2, w, wa, wa_1, wa_2, r1, r2);
  input RegWrite;
  input ph2;
  input [0:0] r1a;
  input [1:1] r1a_1;
  input [2:2] r1a_2;
  input [0:0] r2a;
  input [1:1] r2a_1;
  input [2:2] r2a_2;
  input [7:0] w;
  input [0:0] wa;
  input [1:1] wa_1;
  input [2:2] wa_2;
  output [7:0] r1;
  output [7:0] r2;

  supply1 vdd;
  supply0 gnd;
  wire net_201, net_202, net_203, net_204, net_205, net_206;

  mips8_GK__regram_zipper regfile__0(.RegWrite(RegWrite), .ph2(ph2), 
      .r1a(r1a[0:0]), .r1a_1(r1a_1[1:1]), .r1a_2(r1a_2[2:2]), .r2a(r2a[0:0]), 
      .r2a_1(r2a_1[1:1]), .r2a_2(r2a_2[2:2]), .wa(wa[0:0]), .wa_1(wa_1[1:1]), 
      .wa_2(wa_2[2:2]), .read1(net_201), .read1b(net_202), .read2(net_203), 
      .read2b(net_204), .write(net_205), .writeb(net_206));
  mips8_GK__regram_8 regram_8_0(.read1(net_201), .read1b(net_202), 
      .read2(net_203), .read2b(net_204), .w(w[7:0]), .write(net_205), 
      .writeb(net_206), .r1(r1[7:0]), .r2(r2[7:0]));
endmodule   /* mips8_GK__regramvector_dp */

module mips8_GK__regramarray_dp(ph2, regwrite, w, wa, r1, r2, ra1, ra2);
  input ph2;
  input regwrite;
  input [7:0] w;
  input [2:0] wa;
  output [7:0] r1;
  output [7:0] r2;
  input [2:0] ra1;
  input [2:0] ra2;

  supply1 vdd;
  supply0 gnd;
  wire [2:0] r1a;
  wire [2:0] r1ab;
  wire [2:0] r2a;
  wire [2:0] r2ab;
  wire [2:0] wab;
  wire [2:0] wabb;

  muddlib07__invbuf_4x invbuf2_2_(.s(ra2[2]), .s_out(r2a[2]), 
      .sb_out(r2ab[2]));
  muddlib07__invbuf_4x invbuf2_1_(.s(ra2[1]), .s_out(r2a[1]), 
      .sb_out(r2ab[1]));
  muddlib07__invbuf_4x invbuf2_0_(.s(ra2[0]), .s_out(r2a[0]), 
      .sb_out(r2ab[0]));
  muddlib07__invbuf_4x invbuf3_2_(.s(ra1[2]), .s_out(r1a[2]), 
      .sb_out(r1ab[2]));
  muddlib07__invbuf_4x invbuf3_1_(.s(ra1[1]), .s_out(r1a[1]), 
      .sb_out(r1ab[1]));
  muddlib07__invbuf_4x invbuf3_0_(.s(ra1[0]), .s_out(r1a[0]), 
      .sb_out(r1ab[0]));
  muddlib07__invbuf_4x invbuf_2_(.s(wa[2]), .s_out(wabb[2]), .sb_out(wab[2]));
  muddlib07__invbuf_4x invbuf_1_(.s(wa[1]), .s_out(wabb[1]), .sb_out(wab[1]));
  muddlib07__invbuf_4x invbuf_0_(.s(wa[0]), .s_out(wabb[0]), .sb_out(wab[0]));
  mips8_GK__regramvector0_dp regramve_0(.RegWrite(regwrite), .ph2(ph2), 
      .r1a(r1ab[0:0]), .r1a_1(r1ab[1:1]), .r1a_2(r1ab[2:2]), .r2a(r2ab[0:0]), 
      .r2a_1(r2ab[1:1]), .r2a_2(r2ab[2:2]), .wa(wab[0:0]), .wa_1(wab[1:1]), 
      .wa_2(wab[2:2]), .r1(r1[7:0]), .r2(r2[7:0]));
  mips8_GK__regramvector_dp regramvector_dp_1_(.RegWrite(regwrite), .ph2(ph2), 
      .r1a(r1a[0:0]), .r1a_1(r1ab[1:1]), .r1a_2(r1ab[2:2]), .r2a(r2a[0:0]), 
      .r2a_1(r2ab[1:1]), .r2a_2(r2ab[2:2]), .w(w[7:0]), .wa(wabb[0:0]), 
      .wa_1(wab[1:1]), .wa_2(wab[2:2]), .r1(r1[7:0]), .r2(r2[7:0]));
  mips8_GK__regramvector_dp regramvector_dp_2_(.RegWrite(regwrite), .ph2(ph2), 
      .r1a(r1ab[0:0]), .r1a_1(r1a[1:1]), .r1a_2(r1ab[2:2]), .r2a(r2ab[0:0]), 
      .r2a_1(r2a[1:1]), .r2a_2(r2ab[2:2]), .w(w[7:0]), .wa(wab[0:0]), 
      .wa_1(wabb[1:1]), .wa_2(wab[2:2]), .r1(r1[7:0]), .r2(r2[7:0]));
  mips8_GK__regramvector_dp regramvector_dp_3_(.RegWrite(regwrite), .ph2(ph2), 
      .r1a(r1a[0:0]), .r1a_1(r1a[1:1]), .r1a_2(r1ab[2:2]), .r2a(r2a[0:0]), 
      .r2a_1(r2a[1:1]), .r2a_2(r2ab[2:2]), .w(w[7:0]), .wa(wabb[0:0]), 
      .wa_1(wabb[1:1]), .wa_2(wab[2:2]), .r1(r1[7:0]), .r2(r2[7:0]));
  mips8_GK__regramvector_dp regramvector_dp_4_(.RegWrite(regwrite), .ph2(ph2), 
      .r1a(r1ab[0:0]), .r1a_1(r1ab[1:1]), .r1a_2(r1a[2:2]), .r2a(r2ab[0:0]), 
      .r2a_1(r2ab[1:1]), .r2a_2(r2a[2:2]), .w(w[7:0]), .wa(wab[0:0]), 
      .wa_1(wab[1:1]), .wa_2(wabb[2:2]), .r1(r1[7:0]), .r2(r2[7:0]));
  mips8_GK__regramvector_dp regramvector_dp_5_(.RegWrite(regwrite), .ph2(ph2), 
      .r1a(r1a[0:0]), .r1a_1(r1ab[1:1]), .r1a_2(r1a[2:2]), .r2a(r2a[0:0]), 
      .r2a_1(r2ab[1:1]), .r2a_2(r2a[2:2]), .w(w[7:0]), .wa(wabb[0:0]), 
      .wa_1(wab[1:1]), .wa_2(wabb[2:2]), .r1(r1[7:0]), .r2(r2[7:0]));
  mips8_GK__regramvector_dp regramvector_dp_6_(.RegWrite(regwrite), .ph2(ph2), 
      .r1a(r1ab[0:0]), .r1a_1(r1a[1:1]), .r1a_2(r1a[2:2]), .r2a(r2ab[0:0]), 
      .r2a_1(r2a[1:1]), .r2a_2(r2a[2:2]), .w(w[7:0]), .wa(wab[0:0]), 
      .wa_1(wabb[1:1]), .wa_2(wabb[2:2]), .r1(r1[7:0]), .r2(r2[7:0]));
  mips8_GK__regramvector_dp regramvector_dp_7_(.RegWrite(regwrite), .ph2(ph2), 
      .r1a(r1a[0:0]), .r1a_1(r1a[1:1]), .r1a_2(r1a[2:2]), .r2a(r2a[0:0]), 
      .r2a_1(r2a[1:1]), .r2a_2(r2a[2:2]), .w(w[7:0]), .wa(wabb[0:0]), 
      .wa_1(wabb[1:1]), .wa_2(wabb[2:2]), .r1(r1[7:0]), .r2(r2[7:0]));
endmodule   /* mips8_GK__regramarray_dp */

module mojing__datapath(alucontrol, alusrca, alusrcb, iord, memdata, memtoreg, 
      pcen, pcsrc, ph1, ph2, regdst, regwrite, reset, zero, adr, aluout, 
      writedata, funct, irwrite, op);
  input [2:0] alucontrol;
  input alusrca;
  input [1:0] alusrcb;
  input iord;
  input [7:0] memdata;
  input memtoreg;
  input pcen;
  input [1:0] pcsrc;
  input ph1;
  input ph2;
  input regdst;
  input regwrite;
  input reset;
  input zero;
  output [7:0] adr;
  output [7:0] aluout;
  output [7:0] writedata;
  input [5:0] funct;
  input [3:0] irwrite;
  input [5:0] op;

  supply1 vdd;
  supply0 gnd;
  wire [7:0] a;
  wire [7:0] aluresult;
  wire [7:0] data;
  wire [25:6] instr;
  wire [7:0] net_106;
  wire [2:0] net_231;
  wire [7:0] net_82;
  wire [7:0] pc;
  wire [7:0] rd1;
  wire [7:0] rd2;
  wire [7:0] srca;
  wire [7:0] srcb;

  wordlib8__mux2_1x_8 adrmux(.d0(pc[7:0]), .d1(aluout[7:0]), .s(iord), 
      .y(adr[7:0]));
  mips8_GK__alu alu_0(.a(srca[7:0]), .alucontrol(alucontrol[2:0]), 
      .b(srcb[7:0]), .result(aluresult[7:0]), .zero(zero));
  wordlib8__flop_1x_8 areg(.d(rd1[7:0]), .ph1(ph1), .ph2(ph2), .q(a[7:0]));
  wordlib8__flop_1x_8 datareg(.d(memdata[7:0]), .ph1(ph1), .ph2(ph2), 
      .q(data[7:0]));
  wordlib8__flopen_1x_8 ir0(.d(memdata[7:0]), .en(irwrite[0]), .ph1(ph1), 
      .ph2(ph2), .q({instr[7], instr[6], funct[5], funct[4], funct[3], 
      funct[2], funct[1], funct[0]}));
  wordlib8__flopen_1x_8 ir1(.d(memdata[7:0]), .en(irwrite[1]), .ph1(ph1), 
      .ph2(ph2), .q(instr[15:8]));
  wordlib8__flopen_1x_8 ir2(.d(memdata[7:0]), .en(irwrite[2]), .ph1(ph1), 
      .ph2(ph2), .q(instr[23:16]));
  wordlib8__flopen_1x_8 ir3(.d(memdata[7:0]), .en(irwrite[3]), .ph1(ph1), 
      .ph2(ph2), .q({op[5], op[4], op[3], op[2], op[1], op[0], instr[25], 
      instr[24]}));
  wordlib8__mux3_1x_8 pcmux(.d0(aluresult[7:0]), .d1(aluout[7:0]), 
      .d2({funct[5], funct[4], funct[3], funct[2], funct[1], funct[0], gnd, 
      gnd}), .s0(pcsrc[0]), .s1(pcsrc[1]), .y(net_82[7:0]));
  wordlib8__flopenr_1x_8 pcreg(.d(net_82[7:0]), .en(pcen), .ph1(ph1), 
      .ph2(ph2), .reset(reset), .q(pc[7:0]));
  muddlib07__mux2_c_1x regmux_2_(.d0(instr[18]), .d1(instr[13]), .s(regdst), 
      .y(net_231[2]));
  muddlib07__mux2_c_1x regmux_1_(.d0(instr[17]), .d1(instr[12]), .s(regdst), 
      .y(net_231[1]));
  muddlib07__mux2_c_1x regmux_0_(.d0(instr[16]), .d1(instr[11]), .s(regdst), 
      .y(net_231[0]));
  wordlib8__flop_1x_8 resreg(.d(aluresult[7:0]), .ph1(ph1), .ph2(ph2), 
      .q(aluout[7:0]));
  mips8_GK__regramarray_dp rf(.ph2(ph2), .regwrite(regwrite), .w(net_106[7:0]), 
      .wa(net_231[2:0]), .r1(rd1[7:0]), .r2(rd2[7:0]), .ra1(instr[23:21]), 
      .ra2(instr[18:16]));
  wordlib8__mux2_1x_8 src1mux(.d0(pc[7:0]), .d1(a[7:0]), .s(alusrca), 
      .y(srca[7:0]));
  wordlib8__mux4_1x_8 src2mux(.d0(writedata[7:0]), .d1({gnd, gnd, gnd, gnd, 
      gnd, gnd, gnd, vdd}), .d2({instr[7], instr[6], funct[5], funct[4], 
      funct[3], funct[2], funct[1], funct[0]}), .d3({funct[5], funct[4], 
      funct[3], funct[2], funct[1], funct[0], gnd, gnd}), .s0(alusrcb[0]), 
      .s1(alusrcb[1]), .y(srcb[7:0]));
  wordlib8__mux2_1x_8 wdmux(.d0(aluout[7:0]), .d1(data[7:0]), .s(memtoreg), 
      .y(net_106[7:0]));
  wordlib8__flop_1x_8 wrdreg(.d(rd2[7:0]), .ph1(ph1), .ph2(ph2), 
      .q(writedata[7:0]));
endmodule   /* mojing__datapath */

module mojing__mipsfgpnt(memdata, memdata_1, memdata_2, memdata_3, memdata_4, 
      memdata_5, memdata_6, memdata_7, ph1, ph2, reset, adr, adr_1, adr_2, 
      adr_3, adr_4, adr_5, adr_6, adr_7, aluout, aluout_1, aluout_2, aluout_3, 
      aluout_4, aluout_5, aluout_6, aluout_7, memread, memtoreg, memwrite, 
      writedata, writedata_1, writedata_2, writedata_3, writedata_4, 
      writedata_5, writedata_6, writedata_7);
  input [0:0] memdata;
  input [1:1] memdata_1;
  input [2:2] memdata_2;
  input [3:3] memdata_3;
  input [4:4] memdata_4;
  input [5:5] memdata_5;
  input [6:6] memdata_6;
  input [7:7] memdata_7;
  input ph1;
  input ph2;
  input reset;
  output [0:0] adr;
  output [1:1] adr_1;
  output [2:2] adr_2;
  output [3:3] adr_3;
  output [4:4] adr_4;
  output [5:5] adr_5;
  output [6:6] adr_6;
  output [7:7] adr_7;
  output [0:0] aluout;
  output [1:1] aluout_1;
  output [2:2] aluout_2;
  output [3:3] aluout_3;
  output [4:4] aluout_4;
  output [5:5] aluout_5;
  output [6:6] aluout_6;
  output [7:7] aluout_7;
  output memread;
  output memtoreg;
  output memwrite;
  output [0:0] writedata;
  output [1:1] writedata_1;
  output [2:2] writedata_2;
  output [3:3] writedata_3;
  output [4:4] writedata_4;
  output [5:5] writedata_5;
  output [6:6] writedata_6;
  output [7:7] writedata_7;

  supply1 vdd;
  supply0 gnd;
  wire alusrca, iord, pcen, regdst, regwrite, zero;
  wire [2:0] alucontrol;
  wire [1:0] alusrcb;
  wire [5:0] funct;
  wire [3:0] irwrite;
  wire [5:0] op;
  wire [1:0] pcsrc;

  mips8_GK__controller controll_0(.funct(funct[3:0]), .op(op[5:0]), .ph1(ph1), 
      .ph2(ph2), .reset(reset), .zero(zero), .alucontrol(alucontrol[2:0]), 
      .alusrca(alusrca), .alusrcb(alusrcb[1:0]), .iord(iord), 
      .irwrite(irwrite[3:0]), .memread(memread), .memtoreg(memtoreg), 
      .memwrite(memwrite), .pcen(pcen), .pcsrc(pcsrc[1:0]), .regdst(regdst), 
      .regwrite(regwrite));
  mojing__datapath datapath_0(.alucontrol(alucontrol[2:0]), .alusrca(alusrca), 
      .alusrcb(alusrcb[1:0]), .iord(iord), .memdata({memdata_7[7], 
      memdata_6[6], memdata_5[5], memdata_4[4], memdata_3[3], memdata_2[2], 
      memdata_1[1], memdata[0]}), .memtoreg(memtoreg), .pcen(pcen), 
      .pcsrc(pcsrc[1:0]), .ph1(ph1), .ph2(ph2), .regdst(regdst), 
      .regwrite(regwrite), .reset(reset), .zero(zero), .adr({adr_7[7], 
      adr_6[6], adr_5[5], adr_4[4], adr_3[3], adr_2[2], adr_1[1], adr[0]}), 
      .aluout({aluout_7[7], aluout_6[6], aluout_5[5], aluout_4[4], aluout_3[3], 
      aluout_2[2], aluout_1[1], aluout[0]}), .writedata({writedata_7[7], 
      writedata_6[6], writedata_5[5], writedata_4[4], writedata_3[3], 
      writedata_2[2], writedata_1[1], writedata[0]}), .funct(funct[5:0]), 
      .irwrite(irwrite[3:0]), .op(op[5:0]));
endmodule   /* mojing__mipsfgpnt */

module muddpads13_ami05__pad_corner(vdd, gnd);
  input vdd;
  input gnd;

  supply1 vdd;
  supply0 gnd;
endmodule   /* muddpads13_ami05__pad_corner */

module muddpads13_ami05__pad_raw(pad, vdd, gnd);
  input pad;
  input vdd;
  input gnd;

  supply1 vdd;
  supply0 gnd;
endmodule   /* muddpads13_ami05__pad_raw */

module muddpads13_ami05__pad_dgnd(vdd, gnd);
  input vdd;
  input gnd;

  supply1 vdd;
  supply0 gnd;
  muddpads13_ami05__pad_raw pad_raw_0(.pad(gnd), .vdd(vdd), .gnd(gnd));
endmodule   /* muddpads13_ami05__pad_dgnd */

module muddpads13_ami05__pad_dvdd(vdd, gnd);
  input vdd;
  input gnd;

  supply1 vdd;
  supply0 gnd;
  muddpads13_ami05__pad_raw pad_raw_0(.pad(vdd), .vdd(vdd), .gnd(gnd));
endmodule   /* muddpads13_ami05__pad_dvdd */

module muddpads13_ami05__pad_io(dout, en, din, dinb, pad, vdd, gnd);
  input dout;
  input en;
  output din;
  output dinb;
  inout pad;
  input vdd;
  input gnd;

  supply1 vdd;
  supply0 gnd;
  wire oe, oeb, pren, prep;

  tranif1 nmos_0(gnd, pad, pren);
  tranif1 nmos_1(gnd, dinb, pad);
  tranif1 nmos_2(gnd, din, dinb);
  tranif1 nmos_3(pren, prep, oe);
  tranif1 nmos_4(gnd, pren, oeb);
  tranif1 nmos_5(gnd, oeb, en);
  tranif1 nmos_6(gnd, oe, oeb);
  tranif1 nmos_7(gnd, pren, dout);
  tranif0 pmos_0(pad, vdd, prep);
  tranif0 pmos_1(dinb, vdd, pad);
  tranif0 pmos_2(din, vdd, dinb);
  tranif0 pmos_3(prep, vdd, oe);
  tranif0 pmos_4(pren, prep, oeb);
  tranif0 pmos_5(prep, vdd, dout);
  tranif0 pmos_6(oeb, vdd, en);
  tranif0 pmos_7(oe, vdd, oeb);
  muddpads13_ami05__pad_raw pad_raw_0(.pad(pad), .vdd(vdd), .gnd(gnd));
endmodule   /* muddpads13_ami05__pad_io */

module muddpads13_ami05__pad_in(pad, din, vdd, gnd);
  input pad;
  output din;
  input vdd;
  input gnd;

  supply1 vdd;
  supply0 gnd;
  wire pad_io_0_dinb;

  muddpads13_ami05__pad_io pad_io_0(.dout(gnd), .en(gnd), .din(din), 
      .dinb(pad_io_0_dinb), .pad(pad), .vdd(vdd), .gnd(gnd));
endmodule   /* muddpads13_ami05__pad_in */

module muddpads13_ami05__pad_out(dout, pad, vdd, gnd);
  input dout;
  output pad;
  input vdd;
  input gnd;

  supply1 vdd;
  supply0 gnd;
  wire pad_io_0_din, pad_io_0_dinb;

  muddpads13_ami05__pad_io pad_io_0(.dout(dout), .en(vdd), .din(pad_io_0_din), 
      .dinb(pad_io_0_dinb), .pad(pad), .vdd(vdd), .gnd(gnd));
endmodule   /* muddpads13_ami05__pad_out */

module chipfgpnt(memdata, memdata_1, memdata_2, memdata_3, memdata_4, 
      memdata_5, memdata_6, memdata_7, ph1, ph2, reset, adr, adr_1, adr_2, 
      adr_3, adr_4, adr_5, adr_6, adr_7, aluout, aluout_1, aluout_2, aluout_3, 
      aluout_4, aluout_5, aluout_6, aluout_7, memread, memtoreg, memwrite, 
      writedata, writedata_1, writedata_2, writedata_3, writedata_4, 
      writedata_5, writedata_6, writedata_7, vdd, gnd);
  input [0:0] memdata;
  input [1:1] memdata_1;
  input [2:2] memdata_2;
  input [3:3] memdata_3;
  input [4:4] memdata_4;
  input [5:5] memdata_5;
  input [6:6] memdata_6;
  input [7:7] memdata_7;
  input ph1;
  input ph2;
  input reset;
  output [0:0] adr;
  output [1:1] adr_1;
  output [2:2] adr_2;
  output [3:3] adr_3;
  output [4:4] adr_4;
  output [5:5] adr_5;
  output [6:6] adr_6;
  output [7:7] adr_7;
  output [0:0] aluout;
  output [1:1] aluout_1;
  output [2:2] aluout_2;
  output [3:3] aluout_3;
  output [4:4] aluout_4;
  output [5:5] aluout_5;
  output [6:6] aluout_6;
  output [7:7] aluout_7;
  output memread;
  output memtoreg;
  output memwrite;
  output [0:0] writedata;
  output [1:1] writedata_1;
  output [2:2] writedata_2;
  output [3:3] writedata_3;
  output [4:4] writedata_4;
  output [5:5] writedata_5;
  output [6:6] writedata_6;
  output [7:7] writedata_7;
  input vdd;
  input gnd;

  supply1 vdd;
  supply0 gnd;
  wire net_100, net_101, net_102, net_103, net_104, net_105, net_106, net_107;
  wire net_108, net_109, net_110, net_111, net_112, net_113, net_114, net_115;
  wire net_116, net_117, net_118, net_119, net_120, net_121, net_122, net_123;
  wire net_86, net_87, net_88, net_89, net_90, net_91, net_92, net_93, net_94;
  wire net_95, net_96, net_97, net_98, net_99;

  mojing__mipsfgpnt mipsfgpn_0(.memdata({net_97}), .memdata_1({net_96}), 
      .memdata_2({net_95}), .memdata_3({net_94}), .memdata_4({net_93}), 
      .memdata_5({net_92}), .memdata_6({net_91}), .memdata_7({net_90}), 
      .ph1(net_88), .ph2(net_89), .reset(net_123), .adr({net_113}), 
      .adr_1({net_112}), .adr_2({net_111}), .adr_3({net_110}), 
      .adr_4({net_109}), .adr_5({net_108}), .adr_6({net_107}), 
      .adr_7({net_106}), .aluout({net_114}), .aluout_1({net_115}), 
      .aluout_2({net_116}), .aluout_3({net_117}), .aluout_4({net_118}), 
      .aluout_5({net_119}), .aluout_6({net_120}), .aluout_7({net_121}), 
      .memread(net_86), .memtoreg(net_122), .memwrite(net_87), 
      .writedata({net_105}), .writedata_1({net_104}), .writedata_2({net_103}), 
      .writedata_3({net_102}), .writedata_4({net_101}), 
      .writedata_5({net_100}), .writedata_6({net_99}), 
      .writedata_7({net_98}));
  muddpads13_ami05__pad_corner pad_corn_0(.vdd(vdd), .gnd(gnd));
  muddpads13_ami05__pad_corner pad_corn_1(.vdd(vdd), .gnd(gnd));
  muddpads13_ami05__pad_corner pad_corn_2(.vdd(vdd), .gnd(gnd));
  muddpads13_ami05__pad_corner pad_corn_3(.vdd(vdd), .gnd(gnd));
  muddpads13_ami05__pad_dgnd pad_dgnd_0(.vdd(vdd), .gnd(gnd));
  muddpads13_ami05__pad_dvdd pad_dvdd_0(.vdd(vdd), .gnd(gnd));
  muddpads13_ami05__pad_in pad_in_0(.pad(ph1), .din(net_88), .vdd(vdd), 
      .gnd(gnd));
  muddpads13_ami05__pad_in pad_in_1(.pad(ph2), .din(net_89), .vdd(vdd), 
      .gnd(gnd));
  muddpads13_ami05__pad_in pad_in_2(.pad(memdata_7[7]), .din(net_90), 
      .vdd(vdd), .gnd(gnd));
  muddpads13_ami05__pad_in pad_in_3(.pad(memdata_6[6]), .din(net_91), 
      .vdd(vdd), .gnd(gnd));
  muddpads13_ami05__pad_in pad_in_4(.pad(memdata_5[5]), .din(net_92), 
      .vdd(vdd), .gnd(gnd));
  muddpads13_ami05__pad_in pad_in_5(.pad(memdata_4[4]), .din(net_93), 
      .vdd(vdd), .gnd(gnd));
  muddpads13_ami05__pad_in pad_in_6(.pad(memdata_3[3]), .din(net_94), 
      .vdd(vdd), .gnd(gnd));
  muddpads13_ami05__pad_in pad_in_7(.pad(memdata_2[2]), .din(net_95), 
      .vdd(vdd), .gnd(gnd));
  muddpads13_ami05__pad_in pad_in_8(.pad(memdata_1[1]), .din(net_96), 
      .vdd(vdd), .gnd(gnd));
  muddpads13_ami05__pad_in pad_in_9(.pad(memdata[0]), .din(net_97), .vdd(vdd), 
      .gnd(gnd));
  muddpads13_ami05__pad_in pad_in_10(.pad(reset), .din(net_123), .vdd(vdd), 
      .gnd(gnd));
  muddpads13_ami05__pad_out pad_out_0(.dout(net_86), .pad(memread), .vdd(vdd), 
      .gnd(gnd));
  muddpads13_ami05__pad_out pad_out_1(.dout(net_87), .pad(memwrite), .vdd(vdd), 
      .gnd(gnd));
  muddpads13_ami05__pad_out pad_out_2(.dout(net_98), .pad(writedata_7[7]), 
      .vdd(vdd), .gnd(gnd));
  muddpads13_ami05__pad_out pad_out_3(.dout(net_99), .pad(writedata_6[6]), 
      .vdd(vdd), .gnd(gnd));
  muddpads13_ami05__pad_out pad_out_4(.dout(net_100), .pad(writedata_5[5]), 
      .vdd(vdd), .gnd(gnd));
  muddpads13_ami05__pad_out pad_out_5(.dout(net_101), .pad(writedata_4[4]), 
      .vdd(vdd), .gnd(gnd));
  muddpads13_ami05__pad_out pad_out_6(.dout(net_102), .pad(writedata_3[3]), 
      .vdd(vdd), .gnd(gnd));
  muddpads13_ami05__pad_out pad_out_7(.dout(net_103), .pad(writedata_2[2]), 
      .vdd(vdd), .gnd(gnd));
  muddpads13_ami05__pad_out pad_out_8(.dout(net_104), .pad(writedata_1[1]), 
      .vdd(vdd), .gnd(gnd));
  muddpads13_ami05__pad_out pad_out_9(.dout(net_105), .pad(writedata[0]), 
      .vdd(vdd), .gnd(gnd));
  muddpads13_ami05__pad_out pad_out_10(.dout(net_106), .pad(adr_7[7]), 
      .vdd(vdd), .gnd(gnd));
  muddpads13_ami05__pad_out pad_out_11(.dout(net_107), .pad(adr_6[6]), 
      .vdd(vdd), .gnd(gnd));
  muddpads13_ami05__pad_out pad_out_12(.dout(net_108), .pad(adr_5[5]), 
      .vdd(vdd), .gnd(gnd));
  muddpads13_ami05__pad_out pad_out_13(.dout(net_109), .pad(adr_4[4]), 
      .vdd(vdd), .gnd(gnd));
  muddpads13_ami05__pad_out pad_out_14(.dout(net_110), .pad(adr_3[3]), 
      .vdd(vdd), .gnd(gnd));
  muddpads13_ami05__pad_out pad_out_15(.dout(net_111), .pad(adr_2[2]), 
      .vdd(vdd), .gnd(gnd));
  muddpads13_ami05__pad_out pad_out_16(.dout(net_112), .pad(adr_1[1]), 
      .vdd(vdd), .gnd(gnd));
  muddpads13_ami05__pad_out pad_out_17(.dout(net_113), .pad(adr[0]), .vdd(vdd), 
      .gnd(gnd));
  muddpads13_ami05__pad_out pad_out_18(.dout(net_114), .pad(aluout[0]), 
      .vdd(vdd), .gnd(gnd));
  muddpads13_ami05__pad_out pad_out_19(.dout(net_115), .pad(aluout_1[1]), 
      .vdd(vdd), .gnd(gnd));
  muddpads13_ami05__pad_out pad_out_20(.dout(net_116), .pad(aluout_2[2]), 
      .vdd(vdd), .gnd(gnd));
  muddpads13_ami05__pad_out pad_out_21(.dout(net_117), .pad(aluout_3[3]), 
      .vdd(vdd), .gnd(gnd));
  muddpads13_ami05__pad_out pad_out_22(.dout(net_118), .pad(aluout_4[4]), 
      .vdd(vdd), .gnd(gnd));
  muddpads13_ami05__pad_out pad_out_23(.dout(net_119), .pad(aluout_5[5]), 
      .vdd(vdd), .gnd(gnd));
  muddpads13_ami05__pad_out pad_out_24(.dout(net_120), .pad(aluout_6[6]), 
      .vdd(vdd), .gnd(gnd));
  muddpads13_ami05__pad_out pad_out_25(.dout(net_121), .pad(aluout_7[7]), 
      .vdd(vdd), .gnd(gnd));
  muddpads13_ami05__pad_out pad_out_26(.dout(net_122), .pad(memtoreg), 
      .vdd(vdd), .gnd(gnd));
endmodule   /* chipfgpnt */
