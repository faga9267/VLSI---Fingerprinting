/* Verilog for cell 'chip{lay}' from library 'mips8_GK' */
/* Created on Wed Oct 02, 2013 17:09:12 */
/* Last revised on Wed Oct 02, 2013 17:39:30 */
/* Written on Wed Oct 02, 2013 17:42:36 by Electric VLSI Design System, version 8.06 */

module muddlib07__a2o1_1x(a, b, c, y, vdd, gnd);
  input a;
  input b;
  input c;
  output y;
  input vdd;
  input gnd;

  supply1 vdd;
  supply0 gnd;
  wire net_254, net_259, net_288, plnode_0_well, plnode_1_well;

  tranif1 nmos_3(gnd, net_288, a);
  tranif1 nmos_4(net_288, net_259, b);
  tranif1 nmos_5(net_259, gnd, c);
  tranif1 nmos_6(gnd, y, net_259);
  tranif0 pmos_4(net_254, vdd, a);
  tranif0 pmos_5(vdd, net_254, b);
  tranif0 pmos_6(net_254, net_259, c);
  tranif0 pmos_8(y, vdd, net_259);
endmodule   /* muddlib07__a2o1_1x */

module muddlib07__inv_1x(a, y, vdd, gnd);
  input a;
  output y;
  input vdd;
  input gnd;

  supply1 vdd;
  supply0 gnd;
  wire plnode_0_well, plnode_1_well;

  tranif1 nmos_0(gnd, y, a);
  tranif0 pmos_0(vdd, y, a);
endmodule   /* muddlib07__inv_1x */

module muddlib07__mux2_dp_1x(d0, d1, s, sb, y, vdd, gnd);
  input d0;
  input d1;
  input s;
  input sb;
  output y;
  input vdd;
  input gnd;

  supply1 vdd;
  supply0 gnd;
  wire net_186, net_187, net_188, net_189, net_80, plnode_2_well, plnode_3_well;

  tranif1 nmos_1(gnd, net_189, d1);
  tranif1 nmos_2(net_189, net_80, s);
  tranif1 nmos_3(net_80, net_188, sb);
  tranif1 nmos_4(net_188, gnd, d0);
  tranif1 nmos_5(gnd, y, net_80);
  tranif0 pmos_0(vdd, net_187, d1);
  tranif0 pmos_1(net_187, net_80, sb);
  tranif0 pmos_2(net_80, net_186, s);
  tranif0 pmos_3(net_186, vdd, d0);
  tranif0 pmos_4(vdd, y, net_80);
endmodule   /* muddlib07__mux2_dp_1x */

module muddlib07__nand2_1x(a, b, y, vdd, gnd);
  input a;
  input b;
  output y;
  input vdd;
  input gnd;

  supply1 vdd;
  supply0 gnd;
  wire net_66, plno_2_well, plnode_0_well;

  tranif1 nmos_0(net_66, y, b);
  tranif1 nmos_1(gnd, net_66, a);
  tranif0 pmos_0(y, vdd, b);
  tranif0 pmos_1(vdd, y, a);
endmodule   /* muddlib07__nand2_1x */

module muddlib07__nor2_1x(a, b, y, vdd, gnd);
  input a;
  input b;
  output y;
  input vdd;
  input gnd;

  supply1 vdd;
  supply0 gnd;
  wire net_55, plno_2_well, plnode_0_well;

  tranif1 nmos_0(gnd, y, a);
  tranif1 nmos_1(y, gnd, b);
  tranif0 pmos_0(vdd, net_55, a);
  tranif0 pmos_1(net_55, y, b);
endmodule   /* muddlib07__nor2_1x */

module mips8_GK__aludec(aluop, aluop_1, funct, funct_1, funct_2, funct_3, 
      alucontrol, alucontrol_1, alucontrol_2, vdd, gnd);
  input [0:0] aluop;
  input [1:1] aluop_1;
  input [0:0] funct;
  input [1:1] funct_1;
  input [2:2] funct_2;
  input [3:3] funct_3;
  output [0:0] alucontrol;
  output [1:1] alucontrol_1;
  output [2:2] alucontrol_2;
  input vdd;
  input gnd;

  supply1 vdd;
  supply0 gnd;
  wire net_10, net_6;

  muddlib07__inv_1x inv_1x_0(.a(aluop_1[1]), .y(net_6), .vdd(vdd), .gnd(gnd));
  muddlib07__mux2_dp_1x mux2_dp__0(.d0(aluop[0]), .d1(funct_1[1]), 
      .s(aluop_1[1]), .sb(net_6), .y(alucontrol_2[2]), .vdd(vdd), .gnd(gnd));
  muddlib07__nand2_1x nand2_1x_0(.a(aluop_1[1]), .b(funct_2[2]), 
      .y(alucontrol_1[1]), .vdd(vdd), .gnd(gnd));
  muddlib07__nor2_1x nor2_1x_0(.a(net_6), .b(net_10), .y(alucontrol[0]), 
      .vdd(vdd), .gnd(gnd));
  muddlib07__nor2_1x nor2_1x_1(.a(funct[0]), .b(funct_3[3]), .y(net_10), 
      .vdd(vdd), .gnd(gnd));
endmodule   /* mips8_GK__aludec */

module controller_pla__controller_pla_Cell(in, in_1, in_2, in_3, in_4, in_5, 
      in_6, in_7, in_8, in_9, out, out_1, out_10, out_11, out_12, out_13, 
      out_14, out_15, out_16, out_17, out_18, out_19, out_2, out_20, out_21, 
      out_22, out_3, out_4, out_5, out_6, out_7, out_8, out_9, vdd, gnd);
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
  input vdd;
  input gnd;

  supply1 vdd;
  supply0 gnd;
  wire net_1004, net_1007, net_1010, net_1115, net_1121, net_1193, net_1229;
  wire net_1235, net_1251, net_1323, net_1353, net_1362, net_1405, net_1411;
  wire net_1516, net_1576, net_172, net_179, net_1795, net_1937, net_2067;
  wire net_213, net_2201, net_2215, net_2239, net_2272, net_2341, net_238;
  wire net_2418, net_2433, net_244, net_247, net_2498, net_2504, net_2879;
  wire net_2899, net_2919, net_2939, net_2959, net_353, net_394, net_401;
  wire net_55, net_554, net_561, net_62, net_711, net_786, net_826, net_891;
  wire net_898, plnode_0_well, plnode_1_well, plnode_2_well, plnode_3_well;
  wire plnode_5_select, plnode_6_select, plnode_7_select;

  tranif1 nmos_0(net_55, gnd, in_3[3]);
  tranif1 nmos_1(net_62, gnd, in_3[3]);
  tranif1 nmos_2(net_55, gnd, in_2[2]);
  tranif1 nmos_3(net_62, gnd, in_2[2]);
  tranif1 nmos_4(net_55, gnd, in_1[1]);
  tranif1 nmos_5(net_62, gnd, in_1[1]);
  tranif1 nmos_6(net_55, gnd, in[0]);
  tranif1 nmos_7(gnd, net_62, net_826);
  tranif1 nmos_8(net_172, gnd, in_3[3]);
  tranif1 nmos_9(net_179, gnd, in_3[3]);
  tranif1 nmos_10(net_172, gnd, in_2[2]);
  tranif1 nmos_11(net_179, gnd, in_2[2]);
  tranif1 nmos_12(gnd, net_172, net_213);
  tranif1 nmos_13(gnd, net_179, net_213);
  tranif1 nmos_14(net_172, gnd, in[0]);
  tranif1 nmos_15(gnd, net_179, net_826);
  tranif1 nmos_16(gnd, net_238, net_247);
  tranif1 nmos_17(gnd, net_244, net_247);
  tranif1 nmos_18(net_238, gnd, in_8[8]);
  tranif1 nmos_19(net_244, gnd, in_8[8]);
  tranif1 nmos_20(net_238, gnd, in_7[7]);
  tranif1 nmos_21(gnd, net_244, net_2899);
  tranif1 nmos_22(net_238, gnd, in_6[6]);
  tranif1 nmos_23(net_244, gnd, in_6[6]);
  tranif1 nmos_24(net_238, gnd, in_5[5]);
  tranif1 nmos_25(net_244, gnd, in_5[5]);
  tranif1 nmos_26(net_238, gnd, in_4[4]);
  tranif1 nmos_27(net_244, gnd, in_4[4]);
  tranif1 nmos_28(net_238, gnd, in_3[3]);
  tranif1 nmos_29(net_244, gnd, in_3[3]);
  tranif1 nmos_30(gnd, net_238, net_353);
  tranif1 nmos_31(gnd, net_244, net_353);
  tranif1 nmos_32(net_238, gnd, in_1[1]);
  tranif1 nmos_33(net_244, gnd, in_1[1]);
  tranif1 nmos_34(net_238, gnd, in[0]);
  tranif1 nmos_35(net_244, gnd, in[0]);
  tranif1 nmos_36(net_394, gnd, in_9[9]);
  tranif1 nmos_37(net_401, gnd, in_9[9]);
  tranif1 nmos_38(net_394, gnd, in_8[8]);
  tranif1 nmos_39(net_401, gnd, in_8[8]);
  tranif1 nmos_40(net_394, gnd, in_7[7]);
  tranif1 nmos_41(net_401, gnd, in_7[7]);
  tranif1 nmos_42(net_394, gnd, in_6[6]);
  tranif1 nmos_43(gnd, net_401, net_2919);
  tranif1 nmos_44(net_394, gnd, in_5[5]);
  tranif1 nmos_45(net_401, gnd, in_5[5]);
  tranif1 nmos_46(net_394, gnd, in_4[4]);
  tranif1 nmos_47(net_401, gnd, in_4[4]);
  tranif1 nmos_48(net_394, gnd, in_3[3]);
  tranif1 nmos_49(net_401, gnd, in_3[3]);
  tranif1 nmos_50(gnd, net_394, net_353);
  tranif1 nmos_51(gnd, net_401, net_353);
  tranif1 nmos_52(net_394, gnd, in_1[1]);
  tranif1 nmos_53(net_401, gnd, in_1[1]);
  tranif1 nmos_54(net_394, gnd, in[0]);
  tranif1 nmos_55(net_401, gnd, in[0]);
  tranif1 nmos_56(net_554, gnd, in_9[9]);
  tranif1 nmos_57(gnd, net_561, net_247);
  tranif1 nmos_58(net_554, gnd, in_8[8]);
  tranif1 nmos_59(net_561, gnd, in_8[8]);
  tranif1 nmos_60(net_554, gnd, in_7[7]);
  tranif1 nmos_61(net_561, gnd, in_7[7]);
  tranif1 nmos_62(net_554, gnd, in_6[6]);
  tranif1 nmos_63(net_561, gnd, in_6[6]);
  tranif1 nmos_64(gnd, net_554, net_2939);
  tranif1 nmos_65(net_561, gnd, in_5[5]);
  tranif1 nmos_66(net_554, gnd, in_4[4]);
  tranif1 nmos_67(net_561, gnd, in_4[4]);
  tranif1 nmos_68(net_554, gnd, in_3[3]);
  tranif1 nmos_69(net_561, gnd, in_3[3]);
  tranif1 nmos_70(gnd, net_554, net_353);
  tranif1 nmos_71(gnd, net_561, net_353);
  tranif1 nmos_72(net_554, gnd, in_1[1]);
  tranif1 nmos_73(net_561, gnd, in_1[1]);
  tranif1 nmos_74(net_554, gnd, in[0]);
  tranif1 nmos_75(gnd, net_561, net_826);
  tranif1 nmos_76(gnd, net_711, net_247);
  tranif1 nmos_77(net_711, gnd, in_8[8]);
  tranif1 nmos_78(gnd, net_711, net_2899);
  tranif1 nmos_79(net_711, gnd, in_6[6]);
  tranif1 nmos_80(net_711, gnd, in_5[5]);
  tranif1 nmos_81(net_711, gnd, in_4[4]);
  tranif1 nmos_82(net_711, gnd, in_3[3]);
  tranif1 nmos_83(net_786, gnd, in_3[3]);
  tranif1 nmos_84(gnd, net_711, net_353);
  tranif1 nmos_85(gnd, net_786, net_353);
  tranif1 nmos_86(net_711, gnd, in_1[1]);
  tranif1 nmos_87(gnd, net_786, net_213);
  tranif1 nmos_88(gnd, net_711, net_826);
  tranif1 nmos_89(net_786, gnd, in[0]);
  tranif1 nmos_90(net_891, gnd, in_3[3]);
  tranif1 nmos_91(gnd, net_898, net_1007);
  tranif1 nmos_92(gnd, net_891, net_353);
  tranif1 nmos_93(net_898, gnd, in_2[2]);
  tranif1 nmos_94(gnd, net_891, net_213);
  tranif1 nmos_95(net_898, gnd, in_1[1]);
  tranif1 nmos_96(gnd, net_891, net_826);
  tranif1 nmos_97(net_898, gnd, in[0]);
  tranif1 nmos_98(gnd, net_1004, net_1007);
  tranif1 nmos_99(gnd, net_1010, net_1007);
  tranif1 nmos_100(net_1004, gnd, in_2[2]);
  tranif1 nmos_101(net_1010, gnd, in_2[2]);
  tranif1 nmos_102(net_1004, gnd, in_1[1]);
  tranif1 nmos_103(gnd, net_1010, net_213);
  tranif1 nmos_104(gnd, net_1004, net_826);
  tranif1 nmos_105(net_1010, gnd, in[0]);
  tranif1 nmos_106(gnd, net_1115, net_1007);
  tranif1 nmos_107(gnd, net_1121, net_1007);
  tranif1 nmos_108(net_1115, gnd, in_2[2]);
  tranif1 nmos_109(gnd, net_1121, net_353);
  tranif1 nmos_110(gnd, net_1115, net_213);
  tranif1 nmos_111(net_1121, gnd, in_1[1]);
  tranif1 nmos_112(gnd, net_1115, net_826);
  tranif1 nmos_113(net_1121, gnd, in[0]);
  tranif1 nmos_114(net_1193, gnd, net_55);
  tranif1 nmos_115(gnd, net_1193, net_62);
  tranif1 nmos_116(net_1229, gnd, net_55);
  tranif1 nmos_117(gnd, net_1235, net_62);
  tranif1 nmos_118(net_1251, gnd, net_55);
  tranif1 nmos_119(gnd, net_1251, net_62);
  tranif1 nmos_120(net_1323, gnd, net_55);
  tranif1 nmos_121(gnd, net_1323, net_62);
  tranif1 nmos_122(gnd, net_1353, net_62);
  tranif1 nmos_123(net_1362, gnd, net_55);
  tranif1 nmos_124(net_1193, gnd, net_172);
  tranif1 nmos_125(gnd, net_1193, net_179);
  tranif1 nmos_126(net_1405, gnd, net_172);
  tranif1 nmos_127(gnd, net_1411, net_179);
  tranif1 nmos_128(net_1251, gnd, net_172);
  tranif1 nmos_129(gnd, net_1251, net_179);
  tranif1 nmos_130(net_1323, gnd, net_172);
  tranif1 nmos_131(gnd, net_1323, net_179);
  tranif1 nmos_132(net_1353, gnd, net_172);
  tranif1 nmos_133(gnd, net_1516, net_179);
  tranif1 nmos_134(net_1362, gnd, net_172);
  tranif1 nmos_135(net_1576, gnd, net_238);
  tranif1 nmos_136(net_1251, gnd, net_238);
  tranif1 nmos_137(gnd, net_1576, net_244);
  tranif1 nmos_138(gnd, net_1251, net_244);
  tranif1 nmos_139(net_1516, gnd, net_238);
  tranif1 nmos_140(gnd, net_1516, net_244);
  tranif1 nmos_141(net_1362, gnd, net_238);
  tranif1 nmos_142(gnd, net_1362, net_244);
  tranif1 nmos_143(net_1576, gnd, net_394);
  tranif1 nmos_144(net_1251, gnd, net_394);
  tranif1 nmos_145(gnd, net_1576, net_401);
  tranif1 nmos_146(gnd, net_1251, net_401);
  tranif1 nmos_147(net_1795, gnd, net_394);
  tranif1 nmos_148(gnd, net_1795, net_401);
  tranif1 nmos_149(gnd, net_1353, net_401);
  tranif1 nmos_150(net_1362, gnd, net_394);
  tranif1 nmos_151(gnd, net_1362, net_401);
  tranif1 nmos_152(net_1576, gnd, net_554);
  tranif1 nmos_153(net_1251, gnd, net_554);
  tranif1 nmos_154(gnd, net_1576, net_561);
  tranif1 nmos_155(gnd, net_1937, net_561);
  tranif1 nmos_156(net_1795, gnd, net_554);
  tranif1 nmos_157(net_1516, gnd, net_554);
  tranif1 nmos_158(gnd, net_1516, net_561);
  tranif1 nmos_159(gnd, net_1353, net_561);
  tranif1 nmos_160(net_1576, gnd, net_711);
  tranif1 nmos_161(gnd, net_2067, net_786);
  tranif1 nmos_162(net_1937, gnd, net_711);
  tranif1 nmos_163(net_1795, gnd, net_711);
  tranif1 nmos_164(gnd, net_1323, net_786);
  tranif1 nmos_165(gnd, net_1516, net_786);
  tranif1 nmos_166(gnd, net_1353, net_786);
  tranif1 nmos_167(gnd, net_1362, net_786);
  tranif1 nmos_168(net_2201, gnd, net_891);
  tranif1 nmos_169(net_2215, gnd, net_891);
  tranif1 nmos_170(gnd, net_2067, net_898);
  tranif1 nmos_171(gnd, net_2239, net_898);
  tranif1 nmos_172(net_2272, gnd, net_1004);
  tranif1 nmos_173(gnd, net_2341, net_1010);
  tranif1 nmos_174(gnd, net_2201, net_1010);
  tranif1 nmos_175(net_1937, gnd, net_1004);
  tranif1 nmos_176(net_1795, gnd, net_1004);
  tranif1 nmos_177(net_1353, gnd, net_1004);
  tranif1 nmos_178(net_2418, gnd, net_1115);
  tranif1 nmos_179(net_2433, gnd, net_1115);
  tranif1 nmos_180(gnd, net_1193, net_1121);
  tranif1 nmos_181(net_2498, gnd, net_1115);
  tranif1 nmos_182(gnd, net_2504, net_1121);
  tranif1 nmos_183(net_1937, gnd, net_1115);
  tranif1 nmos_184(gnd, net_247, in_9[9]);
  tranif1 nmos_185(gnd, net_2879, in_8[8]);
  tranif1 nmos_186(gnd, net_2899, in_7[7]);
  tranif1 nmos_187(gnd, net_2919, in_6[6]);
  tranif1 nmos_188(gnd, net_2939, in_5[5]);
  tranif1 nmos_189(gnd, net_2959, in_4[4]);
  tranif1 nmos_190(gnd, net_1007, in_3[3]);
  tranif1 nmos_191(gnd, net_353, in_2[2]);
  tranif1 nmos_192(gnd, net_213, in_1[1]);
  tranif1 nmos_193(gnd, net_826, in[0]);
  tranif1 nmos_194(out_22[22], gnd, net_2272);
  tranif1 nmos_195(gnd, out_21[21], net_2418);
  tranif1 nmos_196(out_20[20], gnd, net_2433);
  tranif1 nmos_197(gnd, out_19[19], net_1193);
  tranif1 nmos_198(out_18[18], gnd, net_1411);
  tranif1 nmos_199(gnd, out_17[17], net_1405);
  tranif1 nmos_200(out_16[16], gnd, net_1235);
  tranif1 nmos_201(gnd, out_15[15], net_1229);
  tranif1 nmos_202(out_14[14], gnd, net_1576);
  tranif1 nmos_203(gnd, out_13[13], net_1251);
  tranif1 nmos_204(out_12[12], gnd, net_2504);
  tranif1 nmos_205(gnd, out_11[11], net_2498);
  tranif1 nmos_206(out_10[10], gnd, net_2341);
  tranif1 nmos_207(gnd, out_9[9], net_2201);
  tranif1 nmos_208(out_8[8], gnd, net_2067);
  tranif1 nmos_209(gnd, out_7[7], net_2215);
  tranif1 nmos_210(out_6[6], gnd, net_1937);
  tranif1 nmos_211(gnd, out_5[5], net_2239);
  tranif1 nmos_212(out_4[4], gnd, net_1323);
  tranif1 nmos_213(gnd, out_3[3], net_1795);
  tranif1 nmos_214(out_2[2], gnd, net_1516);
  tranif1 nmos_215(gnd, out_1[1], net_1353);
  tranif1 nmos_216(out[0], gnd, net_1362);
  rtranif0 pmos_0(vdd, net_55, gnd);
  rtranif0 pmos_1(vdd, net_62, gnd);
  rtranif0 pmos_2(vdd, net_172, gnd);
  rtranif0 pmos_3(vdd, net_179, gnd);
  rtranif0 pmos_4(vdd, net_238, gnd);
  rtranif0 pmos_5(vdd, net_244, gnd);
  rtranif0 pmos_6(vdd, net_394, gnd);
  rtranif0 pmos_7(vdd, net_401, gnd);
  rtranif0 pmos_8(vdd, net_554, gnd);
  rtranif0 pmos_9(vdd, net_561, gnd);
  rtranif0 pmos_10(vdd, net_711, gnd);
  rtranif0 pmos_11(vdd, net_786, gnd);
  rtranif0 pmos_12(vdd, net_891, gnd);
  rtranif0 pmos_13(vdd, net_898, gnd);
  rtranif0 pmos_14(vdd, net_1004, gnd);
  rtranif0 pmos_15(vdd, net_1010, gnd);
  rtranif0 pmos_16(vdd, net_1115, gnd);
  rtranif0 pmos_17(vdd, net_1121, gnd);
  rtranif0 pmos_18(vdd, net_2272, gnd);
  rtranif0 pmos_19(vdd, net_2418, gnd);
  rtranif0 pmos_20(vdd, net_2433, gnd);
  rtranif0 pmos_21(vdd, net_1193, gnd);
  rtranif0 pmos_22(vdd, net_1411, gnd);
  rtranif0 pmos_23(vdd, net_1405, gnd);
  rtranif0 pmos_24(vdd, net_1235, gnd);
  rtranif0 pmos_25(vdd, net_1229, gnd);
  rtranif0 pmos_26(vdd, net_1576, gnd);
  rtranif0 pmos_27(vdd, net_1251, gnd);
  rtranif0 pmos_28(vdd, net_2504, gnd);
  rtranif0 pmos_29(vdd, net_2498, gnd);
  rtranif0 pmos_30(vdd, net_2341, gnd);
  rtranif0 pmos_31(vdd, net_2201, gnd);
  rtranif0 pmos_32(vdd, net_2067, gnd);
  rtranif0 pmos_33(vdd, net_2215, gnd);
  rtranif0 pmos_34(vdd, net_1937, gnd);
  rtranif0 pmos_35(vdd, net_2239, gnd);
  rtranif0 pmos_36(vdd, net_1323, gnd);
  rtranif0 pmos_37(vdd, net_1795, gnd);
  rtranif0 pmos_38(vdd, net_1516, gnd);
  rtranif0 pmos_39(vdd, net_1353, gnd);
  rtranif0 pmos_40(vdd, net_1362, gnd);
  tranif0 pmos_41(vdd, net_247, in_9[9]);
  tranif0 pmos_42(vdd, net_2879, in_8[8]);
  tranif0 pmos_43(vdd, net_2899, in_7[7]);
  tranif0 pmos_44(vdd, net_2919, in_6[6]);
  tranif0 pmos_45(vdd, net_2939, in_5[5]);
  tranif0 pmos_46(vdd, net_2959, in_4[4]);
  tranif0 pmos_47(vdd, net_1007, in_3[3]);
  tranif0 pmos_48(vdd, net_353, in_2[2]);
  tranif0 pmos_49(vdd, net_213, in_1[1]);
  tranif0 pmos_50(vdd, net_826, in[0]);
  tranif0 pmos_51(out_22[22], vdd, net_2272);
  tranif0 pmos_52(vdd, out_21[21], net_2418);
  tranif0 pmos_53(out_20[20], vdd, net_2433);
  tranif0 pmos_54(vdd, out_19[19], net_1193);
  tranif0 pmos_55(out_18[18], vdd, net_1411);
  tranif0 pmos_56(vdd, out_17[17], net_1405);
  tranif0 pmos_57(out_16[16], vdd, net_1235);
  tranif0 pmos_58(vdd, out_15[15], net_1229);
  tranif0 pmos_59(out_14[14], vdd, net_1576);
  tranif0 pmos_60(vdd, out_13[13], net_1251);
  tranif0 pmos_61(out_12[12], vdd, net_2504);
  tranif0 pmos_62(vdd, out_11[11], net_2498);
  tranif0 pmos_63(out_10[10], vdd, net_2341);
  tranif0 pmos_64(vdd, out_9[9], net_2201);
  tranif0 pmos_65(out_8[8], vdd, net_2067);
  tranif0 pmos_66(vdd, out_7[7], net_2215);
  tranif0 pmos_67(out_6[6], vdd, net_1937);
  tranif0 pmos_68(vdd, out_5[5], net_2239);
  tranif0 pmos_69(out_4[4], vdd, net_1323);
  tranif0 pmos_70(vdd, out_3[3], net_1795);
  tranif0 pmos_71(out_2[2], vdd, net_1516);
  tranif0 pmos_72(vdd, out_1[1], net_1353);
  tranif0 pmos_73(out[0], vdd, net_1362);
endmodule   /* controller_pla__controller_pla_Cell */

module muddlib07__flopr_c_1x(ph1, ph2, d, resetb, q, vdd, gnd);
  input ph1;
  input ph2;
  input d;
  input resetb;
  output q;
  input vdd;
  input gnd;

  supply1 vdd;
  supply0 gnd;
  wire master, masterinb, net_300, net_430, net_498, net_502, net_552, net_555;
  wire net_766, ph1b, ph1buf, plno_2_well, plnode_0_well, slaveb;
  trireg masterb, slave;

  tranif1 nmos_0(gnd, net_766, resetb);
  tranif1 nmos_2(net_766, masterinb, d);
  tranif1 nmos_12(net_300, gnd, ph2);
  tranif1 nmos_14(gnd, net_430, net_300);
  tranif1 nmos_16(ph1buf, gnd, ph1b);
  tranif1 nmos_18(masterinb, masterb, net_430);
  tranif1 nmos_19(masterb, net_498, net_300);
  tranif1 nmos_20(net_498, gnd, master);
  tranif1 nmos_21(gnd, master, masterb);
  rtranif1 nmos_22(master, slave, ph1buf);
  tranif1 nmos_23(slave, net_552, ph1b);
  tranif1 nmos_24(net_552, gnd, slaveb);
  tranif1 nmos_25(gnd, slaveb, slave);
  tranif1 nmos_26(gnd, q, slaveb);
  tranif1 nmos_27(gnd, ph1b, ph1);
  tranif0 pmos_2(masterinb, vdd, d);
  tranif0 pmos_6(vdd, masterinb, resetb);
  tranif0 pmos_12(net_300, vdd, ph2);
  tranif0 pmos_13(vdd, net_430, net_300);
  tranif0 pmos_14(ph1buf, vdd, ph1b);
  tranif0 pmos_17(masterinb, masterb, net_300);
  tranif0 pmos_18(masterb, net_502, net_430);
  tranif0 pmos_19(net_502, vdd, master);
  tranif0 pmos_20(vdd, master, masterb);
  rtranif0 pmos_21(master, slave, ph1b);
  tranif0 pmos_22(slave, net_555, ph1buf);
  tranif0 pmos_23(net_555, vdd, slaveb);
  tranif0 pmos_24(vdd, slaveb, slave);
  tranif0 pmos_25(vdd, q, slaveb);
  tranif0 pmos_26(vdd, ph1b, ph1);
endmodule   /* muddlib07__flopr_c_1x */

module mips8_GK__controller(funct, funct_1, funct_2, funct_3, op, op_1, op_2, 
      op_3, op_4, op_5, ph1, ph2, reset, zero, alucontrol, alucontrol_1, 
      alucontrol_2, alusrca, alusrcb, alusrcb_1, iord, irwrite, irwrite_1, 
      irwrite_2, irwrite_3, memread, memtoreg, memwrite, pcen, pcsrc, pcsrc_1, 
      regdst, regwrite, vdd, gnd);
  input [0:0] funct;
  input [1:1] funct_1;
  input [2:2] funct_2;
  input [3:3] funct_3;
  input [0:0] op;
  input [1:1] op_1;
  input [2:2] op_2;
  input [3:3] op_3;
  input [4:4] op_4;
  input [5:5] op_5;
  input ph1;
  input ph2;
  input reset;
  input zero;
  output [0:0] alucontrol;
  output [1:1] alucontrol_1;
  output [2:2] alucontrol_2;
  output alusrca;
  output [0:0] alusrcb;
  output [1:1] alusrcb_1;
  output iord;
  output [0:0] irwrite;
  output [1:1] irwrite_1;
  output [2:2] irwrite_2;
  output [3:3] irwrite_3;
  output memread;
  output memtoreg;
  output memwrite;
  output pcen;
  output [0:0] pcsrc;
  output [1:1] pcsrc_1;
  output regdst;
  output regwrite;
  input vdd;
  input gnd;

  supply1 vdd;
  supply0 gnd;
  wire branch, net_92, pcwrite;
  wire [1:0] aluop;
  wire [3:0] nextstate;
  wire [3:0] state;

  muddlib07__a2o1_1x a2o1_1x_0(.a(zero), .b(branch), .c(pcwrite), .y(pcen), 
      .vdd(vdd), .gnd(gnd));
  mips8_GK__aludec aludec_0(.aluop(aluop[0:0]), .aluop_1(aluop[1:1]), 
      .funct(funct[0:0]), .funct_1(funct_1[1:1]), .funct_2(funct_2[2:2]), 
      .funct_3(funct_3[3:3]), .alucontrol(alucontrol[0:0]), 
      .alucontrol_1(alucontrol_1[1:1]), .alucontrol_2(alucontrol_2[2:2]), 
      .vdd(vdd), .gnd(gnd));
  controller_pla__controller_pla_Cell controll_0(.in(state[0:0]), 
      .in_1(state[1:1]), .in_2(state[2:2]), .in_3(state[3:3]), .in_4(op[0:0]), 
      .in_5(op_1[1:1]), .in_6(op_2[2:2]), .in_7(op_3[3:3]), .in_8(op_4[4:4]), 
      .in_9(op_5[5:5]), .out(nextstate[0:0]), .out_1(nextstate[1:1]), 
      .out_10({regdst}), .out_11(pcsrc[0:0]), .out_12(pcsrc_1[1:1]), 
      .out_13(alusrcb[0:0]), .out_14(alusrcb_1[1:1]), .out_15(irwrite[0:0]), 
      .out_16(irwrite_1[1:1]), .out_17(irwrite_2[2:2]), 
      .out_18(irwrite_3[3:3]), .out_19({pcwrite}), .out_2(nextstate[2:2]), 
      .out_20({branch}), .out_21(aluop[0:0]), .out_22(aluop[1:1]), 
      .out_3(nextstate[3:3]), .out_4({memread}), .out_5({memwrite}), 
      .out_6({alusrca}), .out_7({memtoreg}), .out_8({iord}), 
      .out_9({regwrite}), .vdd(vdd), .gnd(gnd));
  muddlib07__flopr_c_1x flopr_c__0(.ph1(ph1), .ph2(ph2), .d(nextstate[0]), 
      .resetb(net_92), .q(state[0]), .vdd(vdd), .gnd(gnd));
  muddlib07__flopr_c_1x flopr_c__1(.ph1(ph1), .ph2(ph2), .d(nextstate[1]), 
      .resetb(net_92), .q(state[1]), .vdd(vdd), .gnd(gnd));
  muddlib07__flopr_c_1x flopr_c__2(.ph1(ph1), .ph2(ph2), .d(nextstate[2]), 
      .resetb(net_92), .q(state[2]), .vdd(vdd), .gnd(gnd));
  muddlib07__flopr_c_1x flopr_c__3(.ph1(ph1), .ph2(ph2), .d(nextstate[3]), 
      .resetb(net_92), .q(state[3]), .vdd(vdd), .gnd(gnd));
  muddlib07__inv_1x inv_1x_0(.a(reset), .y(net_92), .vdd(vdd), .gnd(gnd));
endmodule   /* mips8_GK__controller */

module muddlib07__invbuf_4x(s, s_out, sb_out, vdd, gnd);
  input s;
  output s_out;
  output sb_out;
  input vdd;
  input gnd;

  supply1 vdd;
  supply0 gnd;
  wire plnode_0_well, plnode_1_well;

  tranif1 nmos_0(gnd, sb_out, s);
  tranif1 nmos_1(gnd, s_out, sb_out);
  tranif0 pmos_0(vdd, sb_out, s);
  tranif0 pmos_1(vdd, s_out, sb_out);
endmodule   /* muddlib07__invbuf_4x */

module wordlib8__mux2_1x_8(d0, d0_1, d0_2, d0_3, d0_4, d0_5, d0_6, d0_7, d1, 
      d1_1, d1_2, d1_3, d1_4, d1_5, d1_6, d1_7, s, y, y_1, y_2, y_3, y_4, y_5, 
      y_6, y_7, vdd, vdd_1, vdd_32, vdd_33, vdd_34, vdd_35, vdd_36, vdd_37, 
      vdd_38, gnd, gnd_1, gnd_32, gnd_33, gnd_34, gnd_35, gnd_36, gnd_37, 
      gnd_38);
  input [0:0] d0;
  input [1:1] d0_1;
  input [2:2] d0_2;
  input [3:3] d0_3;
  input [4:4] d0_4;
  input [5:5] d0_5;
  input [6:6] d0_6;
  input [7:7] d0_7;
  input [0:0] d1;
  input [1:1] d1_1;
  input [2:2] d1_2;
  input [3:3] d1_3;
  input [4:4] d1_4;
  input [5:5] d1_5;
  input [6:6] d1_6;
  input [7:7] d1_7;
  input s;
  output [0:0] y;
  output [1:1] y_1;
  output [2:2] y_2;
  output [3:3] y_3;
  output [4:4] y_4;
  output [5:5] y_5;
  output [6:6] y_6;
  output [7:7] y_7;
  input vdd;
  input vdd_1;
  input vdd_32;
  input vdd_33;
  input vdd_34;
  input vdd_35;
  input vdd_36;
  input vdd_37;
  input vdd_38;
  input gnd;
  input gnd_1;
  input gnd_32;
  input gnd_33;
  input gnd_34;
  input gnd_35;
  input gnd_36;
  input gnd_37;
  input gnd_38;

  supply1 vdd;
  supply0 gnd;
  wire net_67, net_74;

  muddlib07__invbuf_4x invbuf_4_0(.s(s), .s_out(net_74), .sb_out(net_67), 
      .vdd(vdd_32), .gnd(gnd_32));
  muddlib07__mux2_dp_1x mux2_dp__0(.d0(d0[0]), .d1(d1[0]), .s(net_74), 
      .sb(net_67), .y(y[0]), .vdd(vdd_1), .gnd(gnd));
  muddlib07__mux2_dp_1x mux2_dp__32(.d0(d0_1[1]), .d1(d1_1[1]), .s(net_74), 
      .sb(net_67), .y(y_1[1]), .vdd(vdd_33), .gnd(gnd_33));
  muddlib07__mux2_dp_1x mux2_dp__33(.d0(d0_2[2]), .d1(d1_2[2]), .s(net_74), 
      .sb(net_67), .y(y_2[2]), .vdd(vdd_34), .gnd(gnd_34));
  muddlib07__mux2_dp_1x mux2_dp__34(.d0(d0_3[3]), .d1(d1_3[3]), .s(net_74), 
      .sb(net_67), .y(y_3[3]), .vdd(vdd_35), .gnd(gnd_35));
  muddlib07__mux2_dp_1x mux2_dp__35(.d0(d0_4[4]), .d1(d1_4[4]), .s(net_74), 
      .sb(net_67), .y(y_4[4]), .vdd(vdd_36), .gnd(gnd_36));
  muddlib07__mux2_dp_1x mux2_dp__36(.d0(d0_5[5]), .d1(d1_5[5]), .s(net_74), 
      .sb(net_67), .y(y_5[5]), .vdd(vdd_37), .gnd(gnd_37));
  muddlib07__mux2_dp_1x mux2_dp__37(.d0(d0_6[6]), .d1(d1_6[6]), .s(net_74), 
      .sb(net_67), .y(y_6[6]), .vdd(vdd_38), .gnd(gnd_38));
  muddlib07__mux2_dp_1x mux2_dp__38(.d0(d0_7[7]), .d1(d1_7[7]), .s(net_74), 
      .sb(net_67), .y(y_7[7]), .vdd(vdd), .gnd(gnd_1));
endmodule   /* wordlib8__mux2_1x_8 */

module muddlib07__fulladder(a, b, c, cout, s, vdd, gnd);
  input a;
  input b;
  input c;
  output cout;
  output s;
  input vdd;
  input gnd;

  supply1 vdd;
  supply0 gnd;
  wire coutb, net_10, net_11, net_122, net_123, net_124, net_13, net_134;
  wire net_135, net_27, net_30, plnode_0_well, plnode_1_well, plnode_2_well;
  wire plnode_3_well, sumb;

  tranif1 nmos_0(gnd, cout, coutb);
  tranif1 nmos_1(gnd, s, sumb);
  tranif1 nmos_2(net_124, gnd, a);
  tranif1 nmos_3(net_122, net_124, b);
  tranif1 nmos_4(sumb, net_122, c);
  tranif1 nmos_5(net_123, sumb, coutb);
  tranif1 nmos_6(gnd, net_123, c);
  tranif1 nmos_7(net_123, gnd, b);
  tranif1 nmos_8(gnd, net_123, a);
  tranif1 nmos_9(net_134, gnd, a);
  tranif1 nmos_10(coutb, net_134, b);
  tranif1 nmos_11(net_135, coutb, c);
  tranif1 nmos_12(gnd, net_135, b);
  tranif1 nmos_13(net_135, gnd, a);
  tranif0 pmos_0(vdd, cout, coutb);
  tranif0 pmos_1(vdd, s, sumb);
  tranif0 pmos_2(net_10, vdd, a);
  tranif0 pmos_3(net_11, net_10, b);
  tranif0 pmos_4(sumb, net_11, c);
  tranif0 pmos_5(net_27, sumb, coutb);
  tranif0 pmos_6(vdd, net_27, c);
  tranif0 pmos_7(net_27, vdd, b);
  tranif0 pmos_8(vdd, net_27, a);
  tranif0 pmos_9(net_13, vdd, a);
  tranif0 pmos_10(coutb, net_13, b);
  tranif0 pmos_11(net_30, coutb, c);
  tranif0 pmos_12(vdd, net_30, b);
  tranif0 pmos_13(net_30, vdd, a);
endmodule   /* muddlib07__fulladder */

module wordlib8__adder_8(a, a_1, a_2, a_3, a_4, a_5, a_6, a_7, b, b_1, b_2, 
      b_3, b_4, b_5, b_6, b_7, cin, cout, s, s_1, s_2, s_3, s_4, s_5, s_6, s_7, 
      vdd, vdd_1, vdd_1_1, vdd_2, vdd_3, vdd_4, vdd_5, vdd_6, gnd, gnd_1, 
      gnd_1_1, gnd_2, gnd_3, gnd_4, gnd_5, gnd_6);
  input [0:0] a;
  input [1:1] a_1;
  input [2:2] a_2;
  input [3:3] a_3;
  input [4:4] a_4;
  input [5:5] a_5;
  input [6:6] a_6;
  input [7:7] a_7;
  input [0:0] b;
  input [1:1] b_1;
  input [2:2] b_2;
  input [3:3] b_3;
  input [4:4] b_4;
  input [5:5] b_5;
  input [6:6] b_6;
  input [7:7] b_7;
  input cin;
  output cout;
  output [0:0] s;
  output [1:1] s_1;
  output [2:2] s_2;
  output [3:3] s_3;
  output [4:4] s_4;
  output [5:5] s_5;
  output [6:6] s_6;
  output [7:7] s_7;
  input vdd;
  input vdd_1;
  input vdd_1_1;
  input vdd_2;
  input vdd_3;
  input vdd_4;
  input vdd_5;
  input vdd_6;
  input gnd;
  input gnd_1;
  input gnd_1_1;
  input gnd_2;
  input gnd_3;
  input gnd_4;
  input gnd_5;
  input gnd_6;

  supply1 vdd;
  supply0 gnd;
  wire net_0, net_1, net_2, net_3, net_30, net_4, net_5;

  muddlib07__fulladder fulladde_0(.a(a[0]), .b(b[0]), .c(cin), .cout(net_0), 
      .s(s[0]), .vdd(vdd), .gnd(gnd));
  muddlib07__fulladder fulladde_1(.a(a_1[1]), .b(b_1[1]), .c(net_0), 
      .cout(net_30), .s(s_1[1]), .vdd(vdd_1_1), .gnd(gnd_1_1));
  muddlib07__fulladder fulladde_2(.a(a_2[2]), .b(b_2[2]), .c(net_30), 
      .cout(net_1), .s(s_2[2]), .vdd(vdd_2), .gnd(gnd_2));
  muddlib07__fulladder fulladde_3(.a(a_3[3]), .b(b_3[3]), .c(net_1), 
      .cout(net_2), .s(s_3[3]), .vdd(vdd_3), .gnd(gnd_3));
  muddlib07__fulladder fulladde_4(.a(a_4[4]), .b(b_4[4]), .c(net_2), 
      .cout(net_3), .s(s_4[4]), .vdd(vdd_4), .gnd(gnd_4));
  muddlib07__fulladder fulladde_5(.a(a_5[5]), .b(b_5[5]), .c(net_3), 
      .cout(net_4), .s(s_5[5]), .vdd(vdd_5), .gnd(gnd_5));
  muddlib07__fulladder fulladde_6(.a(a_6[6]), .b(b_6[6]), .c(net_4), 
      .cout(net_5), .s(s_6[6]), .vdd(vdd_6), .gnd(gnd_6));
  muddlib07__fulladder fulladde_7(.a(a_7[7]), .b(b_7[7]), .c(net_5), 
      .cout(cout), .s(s_7[7]), .vdd(vdd_1), .gnd(gnd_1));
endmodule   /* wordlib8__adder_8 */

module muddlib07__and2_1x(a, b, y, vdd, gnd);
  input a;
  input b;
  output y;
  input vdd;
  input gnd;

  supply1 vdd;
  supply0 gnd;
  wire net_72, net_73, plno_2_well, plnode_0_well;

  tranif1 nmos_0(gnd, net_72, a);
  tranif1 nmos_1(net_72, net_73, b);
  tranif1 nmos_2(y, gnd, net_73);
  tranif0 pmos_0(vdd, net_73, a);
  tranif0 pmos_1(net_73, vdd, b);
  tranif0 pmos_2(y, vdd, net_73);
endmodule   /* muddlib07__and2_1x */

module wordlib8__and2_1x_8(a, a_1, a_2, a_3, a_4, a_5, a_6, a_7, b, b_1, b_2, 
      b_3, b_4, b_5, b_6, b_7, y, y_1, y_2, y_3, y_4, y_5, y_6, y_7, vdd, 
      vdd_1, vdd_1_1, vdd_2, vdd_3, vdd_4, vdd_5, vdd_6, gnd, gnd_1, gnd_1_1, 
      gnd_2, gnd_3, gnd_4, gnd_5, gnd_6);
  input [0:0] a;
  input [1:1] a_1;
  input [2:2] a_2;
  input [3:3] a_3;
  input [4:4] a_4;
  input [5:5] a_5;
  input [6:6] a_6;
  input [7:7] a_7;
  input [0:0] b;
  input [1:1] b_1;
  input [2:2] b_2;
  input [3:3] b_3;
  input [4:4] b_4;
  input [5:5] b_5;
  input [6:6] b_6;
  input [7:7] b_7;
  output [0:0] y;
  output [1:1] y_1;
  output [2:2] y_2;
  output [3:3] y_3;
  output [4:4] y_4;
  output [5:5] y_5;
  output [6:6] y_6;
  output [7:7] y_7;
  input vdd;
  input vdd_1;
  input vdd_1_1;
  input vdd_2;
  input vdd_3;
  input vdd_4;
  input vdd_5;
  input vdd_6;
  input gnd;
  input gnd_1;
  input gnd_1_1;
  input gnd_2;
  input gnd_3;
  input gnd_4;
  input gnd_5;
  input gnd_6;

  supply1 vdd;
  supply0 gnd;
  muddlib07__and2_1x and2_1x_0(.a(a[0]), .b(b[0]), .y(y[0]), .vdd(vdd_1), 
      .gnd(gnd));
  muddlib07__and2_1x and2_1x_1(.a(a_1[1]), .b(b_1[1]), .y(y_1[1]), 
      .vdd(vdd_1_1), .gnd(gnd_1_1));
  muddlib07__and2_1x and2_1x_2(.a(a_2[2]), .b(b_2[2]), .y(y_2[2]), .vdd(vdd_2), 
      .gnd(gnd_2));
  muddlib07__and2_1x and2_1x_3(.a(a_3[3]), .b(b_3[3]), .y(y_3[3]), .vdd(vdd_3), 
      .gnd(gnd_3));
  muddlib07__and2_1x and2_1x_4(.a(a_4[4]), .b(b_4[4]), .y(y_4[4]), .vdd(vdd_4), 
      .gnd(gnd_4));
  muddlib07__and2_1x and2_1x_5(.a(a_5[5]), .b(b_5[5]), .y(y_5[5]), .vdd(vdd_5), 
      .gnd(gnd_5));
  muddlib07__and2_1x and2_1x_6(.a(a_6[6]), .b(b_6[6]), .y(y_6[6]), .vdd(vdd_6), 
      .gnd(gnd_6));
  muddlib07__and2_1x and2_1x_7(.a(a_7[7]), .b(b_7[7]), .y(y_7[7]), .vdd(vdd), 
      .gnd(gnd_1));
endmodule   /* wordlib8__and2_1x_8 */

module wordlib8__inv_1x_8(a, a_1, a_2, a_3, a_4, a_5, a_6, a_7, y, y_1, y_2, 
      y_3, y_4, y_5, y_6, y_7, vdd, vdd_1, vdd_1_1, vdd_2, vdd_3, vdd_4, vdd_5, 
      vdd_6, gnd, gnd_1, gnd_1_1, gnd_2, gnd_3, gnd_4, gnd_5, gnd_6);
  input [0:0] a;
  input [1:1] a_1;
  input [2:2] a_2;
  input [3:3] a_3;
  input [4:4] a_4;
  input [5:5] a_5;
  input [6:6] a_6;
  input [7:7] a_7;
  output [0:0] y;
  output [1:1] y_1;
  output [2:2] y_2;
  output [3:3] y_3;
  output [4:4] y_4;
  output [5:5] y_5;
  output [6:6] y_6;
  output [7:7] y_7;
  input vdd;
  input vdd_1;
  input vdd_1_1;
  input vdd_2;
  input vdd_3;
  input vdd_4;
  input vdd_5;
  input vdd_6;
  input gnd;
  input gnd_1;
  input gnd_1_1;
  input gnd_2;
  input gnd_3;
  input gnd_4;
  input gnd_5;
  input gnd_6;

  supply1 vdd;
  supply0 gnd;
  muddlib07__inv_1x inv_1x_0(.a(a[0]), .y(y[0]), .vdd(vdd), .gnd(gnd));
  muddlib07__inv_1x inv_1x_1(.a(a_1[1]), .y(y_1[1]), .vdd(vdd_1_1), 
      .gnd(gnd_1_1));
  muddlib07__inv_1x inv_1x_2(.a(a_2[2]), .y(y_2[2]), .vdd(vdd_2), 
      .gnd(gnd_2));
  muddlib07__inv_1x inv_1x_3(.a(a_3[3]), .y(y_3[3]), .vdd(vdd_3), 
      .gnd(gnd_3));
  muddlib07__inv_1x inv_1x_4(.a(a_4[4]), .y(y_4[4]), .vdd(vdd_4), 
      .gnd(gnd_4));
  muddlib07__inv_1x inv_1x_5(.a(a_5[5]), .y(y_5[5]), .vdd(vdd_5), 
      .gnd(gnd_5));
  muddlib07__inv_1x inv_1x_6(.a(a_6[6]), .y(y_6[6]), .vdd(vdd_6), 
      .gnd(gnd_6));
  muddlib07__inv_1x inv_1x_7(.a(a_7[7]), .y(y_7[7]), .vdd(vdd_1), 
      .gnd(gnd_1));
endmodule   /* wordlib8__inv_1x_8 */

module mips8_GK__condinv(a, a_1, a_2, a_3, a_4, a_5, a_6, a_7, invert, y, y_1, 
      y_2, y_3, y_4, y_5, y_6, y_7, vdd, vdd_1, vdd_32, vdd_33, vdd_34, vdd_35, 
      vdd_36, vdd_37, vdd_38, gnd, gnd_1, gnd_32, gnd_33, gnd_34, gnd_35, 
      gnd_36, gnd_37, gnd_38);
  input [0:0] a;
  input [1:1] a_1;
  input [2:2] a_2;
  input [3:3] a_3;
  input [4:4] a_4;
  input [5:5] a_5;
  input [6:6] a_6;
  input [7:7] a_7;
  input invert;
  output [0:0] y;
  output [1:1] y_1;
  output [2:2] y_2;
  output [3:3] y_3;
  output [4:4] y_4;
  output [5:5] y_5;
  output [6:6] y_6;
  output [7:7] y_7;
  input vdd;
  input vdd_1;
  input vdd_32;
  input vdd_33;
  input vdd_34;
  input vdd_35;
  input vdd_36;
  input vdd_37;
  input vdd_38;
  input gnd;
  input gnd_1;
  input gnd_32;
  input gnd_33;
  input gnd_34;
  input gnd_35;
  input gnd_36;
  input gnd_37;
  input gnd_38;

  supply1 vdd;
  supply0 gnd;
  wire net_16, net_18, net_19, net_20, net_21, net_22, net_23, net_24;

  wordlib8__inv_1x_8 inv_1x_8_0(.a(a[0:0]), .a_1(a_1[1:1]), .a_2(a_2[2:2]), 
      .a_3(a_3[3:3]), .a_4(a_4[4:4]), .a_5(a_5[5:5]), .a_6(a_6[6:6]), 
      .a_7(a_7[7:7]), .y({net_16}), .y_1({net_18}), .y_2({net_19}), 
      .y_3({net_20}), .y_4({net_21}), .y_5({net_22}), .y_6({net_23}), 
      .y_7({net_24}), .vdd(vdd_1), .vdd_1(vdd), .vdd_1_1(vdd_33), 
      .vdd_2(vdd_34), .vdd_3(vdd_35), .vdd_4(vdd_36), .vdd_5(vdd_37), 
      .vdd_6(vdd_38), .gnd(gnd_1), .gnd_1(gnd_33), .gnd_1_1(gnd), 
      .gnd_2(gnd_38), .gnd_3(gnd_37), .gnd_4(gnd_36), .gnd_5(gnd_35), 
      .gnd_6(gnd_34));
  wordlib8__mux2_1x_8 mux2_1x__0(.d0(a[0:0]), .d0_1(a_1[1:1]), .d0_2(a_2[2:2]), 
      .d0_3(a_3[3:3]), .d0_4(a_4[4:4]), .d0_5(a_5[5:5]), .d0_6(a_6[6:6]), 
      .d0_7(a_7[7:7]), .d1({net_16}), .d1_1({net_18}), .d1_2({net_19}), 
      .d1_3({net_20}), .d1_4({net_21}), .d1_5({net_22}), .d1_6({net_23}), 
      .d1_7({net_24}), .s(invert), .y(y[0:0]), .y_1(y_1[1:1]), .y_2(y_2[2:2]), 
      .y_3(y_3[3:3]), .y_4(y_4[4:4]), .y_5(y_5[5:5]), .y_6(y_6[6:6]), 
      .y_7(y_7[7:7]), .vdd(vdd), .vdd_1(vdd_1), .vdd_32(vdd_32), 
      .vdd_33(vdd_33), .vdd_34(vdd_34), .vdd_35(vdd_35), .vdd_36(vdd_36), 
      .vdd_37(vdd_37), .vdd_38(vdd_38), .gnd(gnd_1), .gnd_1(gnd_33), 
      .gnd_32(gnd_32), .gnd_33(gnd), .gnd_34(gnd_38), .gnd_35(gnd_37), 
      .gnd_36(gnd_36), .gnd_37(gnd_35), .gnd_38(gnd_34));
endmodule   /* mips8_GK__condinv */

module muddlib07__mux4_dp_1x(d0, d1, d2, d3, s0, s0b, s1, s1b, y, vdd, gnd);
  input d0;
  input d1;
  input d2;
  input d3;
  input s0;
  input s0b;
  input s1;
  input s1b;
  output y;
  input vdd;
  input gnd;

  supply1 vdd;
  supply0 gnd;
  wire net_306, net_318, net_338, net_390, net_501, net_835, net_856, net_857;
  wire net_858, net_880, net_902, net_904, net_907, plno_2_well, plnode_0_well;

  tranif1 nmos_6(gnd, y, net_835);
  tranif1 nmos_7(net_338, net_318, s0b);
  tranif1 nmos_8(net_318, gnd, d0);
  tranif1 nmos_9(gnd, net_880, d1);
  tranif1 nmos_10(net_880, net_338, s0);
  tranif1 nmos_12(net_338, net_835, s1b);
  tranif1 nmos_13(net_835, net_902, s1);
  tranif1 nmos_18(net_902, net_904, s0b);
  tranif1 nmos_19(net_904, gnd, d2);
  tranif1 nmos_20(gnd, net_907, d3);
  tranif1 nmos_21(net_907, net_902, s0);
  tranif0 pmos_5(vdd, y, net_835);
  tranif0 pmos_7(net_306, net_390, s0);
  tranif0 pmos_9(net_390, vdd, d0);
  tranif0 pmos_18(vdd, net_501, d1);
  tranif0 pmos_20(net_501, net_306, s0b);
  tranif0 pmos_21(net_306, net_835, s1);
  tranif0 pmos_22(net_835, net_856, s1b);
  tranif0 pmos_23(vdd, net_858, d3);
  tranif0 pmos_24(net_858, net_856, s0b);
  tranif0 pmos_25(net_856, net_857, s0);
  tranif0 pmos_26(net_857, vdd, d2);
endmodule   /* muddlib07__mux4_dp_1x */

module wordlib8__mux4_1x_8(d0, d0_1, d0_2, d0_3, d0_4, d0_5, d0_6, d0_7, d1, 
      d1_1, d1_2, d1_3, d1_4, d1_5, d1_6, d1_7, d2, d2_1, d2_2, d2_3, d2_4, 
      d2_5, d2_6, d2_7, d3, d3_1, d3_2, d3_3, d3_4, d3_5, d3_6, d3_7, s0, s1, 
      y, y_1, y_2, y_3, y_4, y_5, y_6, y_7, vdd, vdd_1, vdd_2, vdd_34, vdd_35, 
      vdd_36, vdd_37, vdd_38, vdd_39, gnd, gnd_1, gnd_2, gnd_34, gnd_35, 
      gnd_36, gnd_37, gnd_38, gnd_39);
  input [0:0] d0;
  input [1:1] d0_1;
  input [2:2] d0_2;
  input [3:3] d0_3;
  input [4:4] d0_4;
  input [5:5] d0_5;
  input [6:6] d0_6;
  input [7:7] d0_7;
  input [0:0] d1;
  input [1:1] d1_1;
  input [2:2] d1_2;
  input [3:3] d1_3;
  input [4:4] d1_4;
  input [5:5] d1_5;
  input [6:6] d1_6;
  input [7:7] d1_7;
  input [0:0] d2;
  input [1:1] d2_1;
  input [2:2] d2_2;
  input [3:3] d2_3;
  input [4:4] d2_4;
  input [5:5] d2_5;
  input [6:6] d2_6;
  input [7:7] d2_7;
  input [0:0] d3;
  input [1:1] d3_1;
  input [2:2] d3_2;
  input [3:3] d3_3;
  input [4:4] d3_4;
  input [5:5] d3_5;
  input [6:6] d3_6;
  input [7:7] d3_7;
  input s0;
  input s1;
  output [0:0] y;
  output [1:1] y_1;
  output [2:2] y_2;
  output [3:3] y_3;
  output [4:4] y_4;
  output [5:5] y_5;
  output [6:6] y_6;
  output [7:7] y_7;
  input vdd;
  input vdd_1;
  input vdd_2;
  input vdd_34;
  input vdd_35;
  input vdd_36;
  input vdd_37;
  input vdd_38;
  input vdd_39;
  input gnd;
  input gnd_1;
  input gnd_2;
  input gnd_34;
  input gnd_35;
  input gnd_36;
  input gnd_37;
  input gnd_38;
  input gnd_39;

  supply1 vdd;
  supply0 gnd;
  wire net_14, net_174, net_181, net_8;

  muddlib07__invbuf_4x invbuf_4_0(.s(s0), .s_out(net_181), .sb_out(net_8), 
      .vdd(vdd), .gnd(gnd_1));
  muddlib07__invbuf_4x invbuf_4_1(.s(s1), .s_out(net_174), .sb_out(net_14), 
      .vdd(vdd), .gnd(gnd_1));
  muddlib07__mux4_dp_1x mux4_dp__0(.d0(d0[0]), .d1(d1[0]), .d2(d2[0]), 
      .d3(d3[0]), .s0(net_181), .s0b(net_8), .s1(net_174), .s1b(net_14), 
      .y(y[0]), .vdd(vdd_2), .gnd(gnd_2));
  muddlib07__mux4_dp_1x mux4_dp__32(.d0(d0_1[1]), .d1(d1_1[1]), .d2(d2_1[1]), 
      .d3(d3_1[1]), .s0(net_181), .s0b(net_8), .s1(net_174), .s1b(net_14), 
      .y(y_1[1]), .vdd(vdd_34), .gnd(gnd_34));
  muddlib07__mux4_dp_1x mux4_dp__33(.d0(d0_2[2]), .d1(d1_2[2]), .d2(d2_2[2]), 
      .d3(d3_2[2]), .s0(net_181), .s0b(net_8), .s1(net_174), .s1b(net_14), 
      .y(y_2[2]), .vdd(vdd_35), .gnd(gnd_35));
  muddlib07__mux4_dp_1x mux4_dp__34(.d0(d0_3[3]), .d1(d1_3[3]), .d2(d2_3[3]), 
      .d3(d3_3[3]), .s0(net_181), .s0b(net_8), .s1(net_174), .s1b(net_14), 
      .y(y_3[3]), .vdd(vdd_36), .gnd(gnd_36));
  muddlib07__mux4_dp_1x mux4_dp__35(.d0(d0_4[4]), .d1(d1_4[4]), .d2(d2_4[4]), 
      .d3(d3_4[4]), .s0(net_181), .s0b(net_8), .s1(net_174), .s1b(net_14), 
      .y(y_4[4]), .vdd(vdd_37), .gnd(gnd_37));
  muddlib07__mux4_dp_1x mux4_dp__36(.d0(d0_5[5]), .d1(d1_5[5]), .d2(d2_5[5]), 
      .d3(d3_5[5]), .s0(net_181), .s0b(net_8), .s1(net_174), .s1b(net_14), 
      .y(y_5[5]), .vdd(vdd_38), .gnd(gnd_38));
  muddlib07__mux4_dp_1x mux4_dp__37(.d0(d0_6[6]), .d1(d1_6[6]), .d2(d2_6[6]), 
      .d3(d3_6[6]), .s0(net_181), .s0b(net_8), .s1(net_174), .s1b(net_14), 
      .y(y_6[6]), .vdd(vdd_39), .gnd(gnd_39));
  muddlib07__mux4_dp_1x mux4_dp__38(.d0(d0_7[7]), .d1(d1_7[7]), .d2(d2_7[7]), 
      .d3(d3_7[7]), .s0(net_181), .s0b(net_8), .s1(net_174), .s1b(net_14), 
      .y(y_7[7]), .vdd(vdd_1), .gnd(gnd));
endmodule   /* wordlib8__mux4_1x_8 */

module muddlib07__or2_1x(a, b, y, vdd, gnd);
  input a;
  input b;
  output y;
  input vdd;
  input gnd;

  supply1 vdd;
  supply0 gnd;
  wire net_75, net_8, plnode_0_well, plnode_1_well;

  tranif1 nmos_0(gnd, net_8, a);
  tranif1 nmos_1(net_8, gnd, b);
  tranif1 nmos_4(y, gnd, net_8);
  tranif0 pmos_0(vdd, net_75, a);
  tranif0 pmos_1(net_75, net_8, b);
  tranif0 pmos_4(y, vdd, net_8);
endmodule   /* muddlib07__or2_1x */

module wordlib8__or2_1x_8(a, a_1, a_2, a_3, a_4, a_5, a_6, a_7, b, b_1, b_2, 
      b_3, b_4, b_5, b_6, b_7, y, y_1, y_2, y_3, y_4, y_5, y_6, y_7, vdd, 
      vdd_1, vdd_1_1, vdd_2, vdd_3, vdd_4, vdd_5, vdd_6, gnd, gnd_1, gnd_1_1, 
      gnd_2, gnd_3, gnd_4, gnd_5, gnd_6);
  input [0:0] a;
  input [1:1] a_1;
  input [2:2] a_2;
  input [3:3] a_3;
  input [4:4] a_4;
  input [5:5] a_5;
  input [6:6] a_6;
  input [7:7] a_7;
  input [0:0] b;
  input [1:1] b_1;
  input [2:2] b_2;
  input [3:3] b_3;
  input [4:4] b_4;
  input [5:5] b_5;
  input [6:6] b_6;
  input [7:7] b_7;
  output [0:0] y;
  output [1:1] y_1;
  output [2:2] y_2;
  output [3:3] y_3;
  output [4:4] y_4;
  output [5:5] y_5;
  output [6:6] y_6;
  output [7:7] y_7;
  input vdd;
  input vdd_1;
  input vdd_1_1;
  input vdd_2;
  input vdd_3;
  input vdd_4;
  input vdd_5;
  input vdd_6;
  input gnd;
  input gnd_1;
  input gnd_1_1;
  input gnd_2;
  input gnd_3;
  input gnd_4;
  input gnd_5;
  input gnd_6;

  supply1 vdd;
  supply0 gnd;
  muddlib07__or2_1x or2_1x_0(.a(a[0]), .b(b[0]), .y(y[0]), .vdd(vdd), 
      .gnd(gnd));
  muddlib07__or2_1x or2_1x_1(.a(a_1[1]), .b(b_1[1]), .y(y_1[1]), .vdd(vdd_1_1), 
      .gnd(gnd_1_1));
  muddlib07__or2_1x or2_1x_2(.a(a_2[2]), .b(b_2[2]), .y(y_2[2]), .vdd(vdd_2), 
      .gnd(gnd_2));
  muddlib07__or2_1x or2_1x_3(.a(a_3[3]), .b(b_3[3]), .y(y_3[3]), .vdd(vdd_3), 
      .gnd(gnd_3));
  muddlib07__or2_1x or2_1x_4(.a(a_4[4]), .b(b_4[4]), .y(y_4[4]), .vdd(vdd_4), 
      .gnd(gnd_4));
  muddlib07__or2_1x or2_1x_5(.a(a_5[5]), .b(b_5[5]), .y(y_5[5]), .vdd(vdd_5), 
      .gnd(gnd_5));
  muddlib07__or2_1x or2_1x_6(.a(a_6[6]), .b(b_6[6]), .y(y_6[6]), .vdd(vdd_6), 
      .gnd(gnd_6));
  muddlib07__or2_1x or2_1x_7(.a(a_7[7]), .b(b_7[7]), .y(y_7[7]), .vdd(vdd_1), 
      .gnd(gnd_1));
endmodule   /* wordlib8__or2_1x_8 */

module mips8_GK__yzdetect_8(a, a_1, a_2, a_3, a_4, a_5, a_6, a_7, yzero, vdd, 
      vdd_1, vdd_1_1, vdd_2, vdd_3, vdd_4, vdd_5, gnd, gnd_1, gnd_1_1, gnd_2, 
      gnd_3, gnd_4, gnd_5);
  input [0:0] a;
  input [1:1] a_1;
  input [2:2] a_2;
  input [3:3] a_3;
  input [4:4] a_4;
  input [5:5] a_5;
  input [6:6] a_6;
  input [7:7] a_7;
  output yzero;
  input vdd;
  input vdd_1;
  input vdd_1_1;
  input vdd_2;
  input vdd_3;
  input vdd_4;
  input vdd_5;
  input gnd;
  input gnd_1;
  input gnd_1_1;
  input gnd_2;
  input gnd_3;
  input gnd_4;
  input gnd_5;

  supply1 vdd;
  supply0 gnd;
  wire net_11, net_16, net_2, net_21, net_5, net_8;

  muddlib07__nand2_1x nand2_1x_1(.a(net_11), .b(net_8), .y(net_21), .vdd(vdd), 
      .gnd(gnd_1));
  muddlib07__nand2_1x nand2_1x_2(.a(net_2), .b(net_5), .y(net_16), .vdd(vdd_1), 
      .gnd(gnd));
  muddlib07__nor2_1x nor2_1x_0(.a(a[0]), .b(a_1[1]), .y(net_2), .vdd(vdd_1_1), 
      .gnd(gnd_1_1));
  muddlib07__nor2_1x nor2_1x_1(.a(net_21), .b(net_16), .y(yzero), .vdd(vdd_2), 
      .gnd(gnd_2));
  muddlib07__nor2_1x nor2_1x_2(.a(a_2[2]), .b(a_3[3]), .y(net_5), .vdd(vdd_3), 
      .gnd(gnd_3));
  muddlib07__nor2_1x nor2_1x_3(.a(a_5[5]), .b(a_4[4]), .y(net_8), .vdd(vdd_4), 
      .gnd(gnd_4));
  muddlib07__nor2_1x nor2_1x_4(.a(a_6[6]), .b(a_7[7]), .y(net_11), .vdd(vdd_5), 
      .gnd(gnd_5));
endmodule   /* mips8_GK__yzdetect_8 */

module mips8_GK__alu(a, a_1, a_2, a_3, a_4, a_5, a_6, a_7, alucontrol, 
      alucontrol_1, alucontrol_2, b, b_1, b_2, b_3, b_4, b_5, b_6, b_7, result, 
      result_1, result_2, result_3, result_4, result_5, result_6, result_7, 
      zero, vdd, vdd_1, vdd_2, vdd_3, vdd_32, vdd_4, vdd_40, vdd_5, vdd_6, 
      vdd_7, gnd, gnd_1, gnd_2, gnd_3, gnd_32, gnd_4, gnd_40, gnd_5, gnd_6, 
      gnd_7);
  input [0:0] a;
  input [1:1] a_1;
  input [2:2] a_2;
  input [3:3] a_3;
  input [4:4] a_4;
  input [5:5] a_5;
  input [6:6] a_6;
  input [7:7] a_7;
  input [0:0] alucontrol;
  input [1:1] alucontrol_1;
  input [2:2] alucontrol_2;
  input [0:0] b;
  input [1:1] b_1;
  input [2:2] b_2;
  input [3:3] b_3;
  input [4:4] b_4;
  input [5:5] b_5;
  input [6:6] b_6;
  input [7:7] b_7;
  output [0:0] result;
  output [1:1] result_1;
  output [2:2] result_2;
  output [3:3] result_3;
  output [4:4] result_4;
  output [5:5] result_5;
  output [6:6] result_6;
  output [7:7] result_7;
  output zero;
  input vdd;
  input vdd_1;
  input vdd_2;
  input vdd_3;
  input vdd_32;
  input vdd_4;
  input vdd_40;
  input vdd_5;
  input vdd_6;
  input vdd_7;
  input gnd;
  input gnd_1;
  input gnd_2;
  input gnd_3;
  input gnd_32;
  input gnd_4;
  input gnd_40;
  input gnd_5;
  input gnd_6;
  input gnd_7;

  supply1 vdd;
  supply0 gnd;
  wire adder_8_1_cout, pin_191_metal_2, plnode_0_select, plnode_10_select;
  wire plnode_11_select, plnode_12_select, plnode_13_select, plnode_14_select;
  wire plnode_15_select, plnode_1_select, plnode_2_select, plnode_3_select;
  wire plnode_4_select, plnode_5_select, plnode_6_select, plnode_7_select;
  wire plnode_8_select, plnode_9_select;
  wire [7:0] andresult;
  wire [7:0] b2;
  wire [7:0] orresult;
  wire [7:0] sumresult;

  wordlib8__adder_8 adder_8_1(.a(a[0:0]), .a_1(a_1[1:1]), .a_2(a_2[2:2]), 
      .a_3(a_3[3:3]), .a_4(a_4[4:4]), .a_5(a_5[5:5]), .a_6(a_6[6:6]), 
      .a_7(a_7[7:7]), .b(b2[0:0]), .b_1(b2[1:1]), .b_2(b2[2:2]), .b_3(b2[3:3]), 
      .b_4(b2[4:4]), .b_5(b2[5:5]), .b_6(b2[6:6]), .b_7(b2[7:7]), 
      .cin(alucontrol_2[2]), .cout(adder_8_1_cout), .s(sumresult[0:0]), 
      .s_1(sumresult[1:1]), .s_2(sumresult[2:2]), .s_3(sumresult[3:3]), 
      .s_4(sumresult[4:4]), .s_5(sumresult[5:5]), .s_6(sumresult[6:6]), 
      .s_7(sumresult[7:7]), .vdd(vdd_1), .vdd_1(vdd_7), .vdd_1_1(vdd), 
      .vdd_2(vdd_2), .vdd_3(vdd_3), .vdd_4(vdd_4), .vdd_5(vdd_5), 
      .vdd_6(vdd_6), .gnd(gnd_1), .gnd_1(gnd_7), .gnd_1_1(gnd), .gnd_2(gnd_2), 
      .gnd_3(gnd_3), .gnd_4(gnd_4), .gnd_5(gnd_5), .gnd_6(gnd_6));
  wordlib8__and2_1x_8 and2_1x__0(.a(a[0:0]), .a_1(a_1[1:1]), .a_2(a_2[2:2]), 
      .a_3(a_3[3:3]), .a_4(a_4[4:4]), .a_5(a_5[5:5]), .a_6(a_6[6:6]), 
      .a_7(a_7[7:7]), .b(b[0:0]), .b_1(b_1[1:1]), .b_2(b_2[2:2]), 
      .b_3(b_3[3:3]), .b_4(b_4[4:4]), .b_5(b_5[5:5]), .b_6(b_6[6:6]), 
      .b_7(b_7[7:7]), .y(andresult[0:0]), .y_1(andresult[1:1]), 
      .y_2(andresult[2:2]), .y_3(andresult[3:3]), .y_4(andresult[4:4]), 
      .y_5(andresult[5:5]), .y_6(andresult[6:6]), .y_7(andresult[7:7]), 
      .vdd(vdd_7), .vdd_1(vdd_1), .vdd_1_1(vdd), .vdd_2(vdd_2), .vdd_3(vdd_3), 
      .vdd_4(vdd_4), .vdd_5(vdd_5), .vdd_6(vdd_6), .gnd(gnd_1), .gnd_1(gnd_7), 
      .gnd_1_1(gnd), .gnd_2(gnd_2), .gnd_3(gnd_3), .gnd_4(gnd_4), 
      .gnd_5(gnd_5), .gnd_6(gnd_6));
  mips8_GK__condinv condinv_1(.a(b[0:0]), .a_1(b_1[1:1]), .a_2(b_2[2:2]), 
      .a_3(b_3[3:3]), .a_4(b_4[4:4]), .a_5(b_5[5:5]), .a_6(b_6[6:6]), 
      .a_7(b_7[7:7]), .invert(alucontrol_2[2]), .y(b2[0:0]), .y_1(b2[1:1]), 
      .y_2(b2[2:2]), .y_3(b2[3:3]), .y_4(b2[4:4]), .y_5(b2[5:5]), 
      .y_6(b2[6:6]), .y_7(b2[7:7]), .vdd(vdd_7), .vdd_1(vdd_1), 
      .vdd_32(vdd_32), .vdd_33(vdd), .vdd_34(vdd_2), .vdd_35(vdd_3), 
      .vdd_36(vdd_4), .vdd_37(vdd_5), .vdd_38(vdd_6), .gnd(gnd), .gnd_1(gnd_1), 
      .gnd_32(gnd_32), .gnd_33(gnd_7), .gnd_34(gnd_6), .gnd_35(gnd_5), 
      .gnd_36(gnd_4), .gnd_37(gnd_3), .gnd_38(gnd_2));
  wordlib8__mux4_1x_8 mux4_1x__1(.d0(andresult[0:0]), .d0_1(andresult[1:1]), 
      .d0_2(andresult[2:2]), .d0_3(andresult[3:3]), .d0_4(andresult[4:4]), 
      .d0_5(andresult[5:5]), .d0_6(andresult[6:6]), .d0_7(andresult[7:7]), 
      .d1(orresult[0:0]), .d1_1(orresult[1:1]), .d1_2(orresult[2:2]), 
      .d1_3(orresult[3:3]), .d1_4(orresult[4:4]), .d1_5(orresult[5:5]), 
      .d1_6(orresult[6:6]), .d1_7(orresult[7:7]), .d2(sumresult[0:0]), 
      .d2_1(sumresult[1:1]), .d2_2(sumresult[2:2]), .d2_3(sumresult[3:3]), 
      .d2_4(sumresult[4:4]), .d2_5(sumresult[5:5]), .d2_6(sumresult[6:6]), 
      .d2_7(sumresult[7:7]), .d3(sumresult[7:7]), .d3_1({gnd}), .d3_2({gnd_2}), 
      .d3_3({gnd_3}), .d3_4({gnd_4}), .d3_5({gnd_5}), .d3_6({gnd_6}), 
      .d3_7({gnd_7}), .s0(alucontrol[0]), .s1(alucontrol_1[1]), 
      .y(result[0:0]), .y_1(result_1[1:1]), .y_2(result_2[2:2]), 
      .y_3(result_3[3:3]), .y_4(result_4[4:4]), .y_5(result_5[5:5]), 
      .y_6(result_6[6:6]), .y_7(result_7[7:7]), .vdd(vdd_40), .vdd_1(vdd_7), 
      .vdd_2(vdd_1), .vdd_34(vdd), .vdd_35(vdd_2), .vdd_36(vdd_3), 
      .vdd_37(vdd_4), .vdd_38(vdd_5), .vdd_39(vdd_6), .gnd(gnd_7), 
      .gnd_1(gnd_40), .gnd_2(gnd_1), .gnd_34(gnd), .gnd_35(gnd_2), 
      .gnd_36(gnd_3), .gnd_37(gnd_4), .gnd_38(gnd_5), .gnd_39(gnd_6));
  wordlib8__or2_1x_8 or2_1x_8_0(.a(a[0:0]), .a_1(a_1[1:1]), .a_2(a_2[2:2]), 
      .a_3(a_3[3:3]), .a_4(a_4[4:4]), .a_5(a_5[5:5]), .a_6(a_6[6:6]), 
      .a_7(a_7[7:7]), .b(b[0:0]), .b_1(b_1[1:1]), .b_2(b_2[2:2]), 
      .b_3(b_3[3:3]), .b_4(b_4[4:4]), .b_5(b_5[5:5]), .b_6(b_6[6:6]), 
      .b_7(b_7[7:7]), .y(orresult[0:0]), .y_1(orresult[1:1]), 
      .y_2(orresult[2:2]), .y_3(orresult[3:3]), .y_4(orresult[4:4]), 
      .y_5(orresult[5:5]), .y_6(orresult[6:6]), .y_7(orresult[7:7]), 
      .vdd(vdd_1), .vdd_1(vdd_7), .vdd_1_1(vdd), .vdd_2(vdd_2), .vdd_3(vdd_3), 
      .vdd_4(vdd_4), .vdd_5(vdd_5), .vdd_6(vdd_6), .gnd(gnd_1), .gnd_1(gnd_7), 
      .gnd_1_1(gnd), .gnd_2(gnd_2), .gnd_3(gnd_3), .gnd_4(gnd_4), 
      .gnd_5(gnd_5), .gnd_6(gnd_6));
  mips8_GK__yzdetect_8 yzdetect_1(.a(result[0:0]), .a_1(result_1[1:1]), 
      .a_2(result_2[2:2]), .a_3(result_3[3:3]), .a_4(result_4[4:4]), 
      .a_5(result_5[5:5]), .a_6(result_6[6:6]), .a_7(result_7[7:7]), 
      .yzero(zero), .vdd(vdd_5), .vdd_1(vdd), .vdd_1_1(vdd_1), .vdd_2(vdd_3), 
      .vdd_3(vdd_2), .vdd_4(vdd_4), .vdd_5(vdd_6), .gnd(gnd), .gnd_1(gnd_5), 
      .gnd_1_1(gnd_1), .gnd_2(gnd_3), .gnd_3(gnd_2), .gnd_4(gnd_4), 
      .gnd_5(gnd_6));
endmodule   /* mips8_GK__alu */

module muddlib07__clkinvbuf_4x(ph, phb, phbuf, vdd, gnd);
  output ph;
  output phb;
  output phbuf;
  input vdd;
  input gnd;

  supply1 vdd;
  supply0 gnd;
  wire notph, plnode_0_well, plnode_1_well;

  tranif1 nmos_0(gnd, notph, ph);
  tranif1 nmos_1(phb, gnd, ph);
  tranif1 nmos_2(gnd, phbuf, notph);
  tranif0 pmos_0(vdd, notph, ph);
  tranif0 pmos_1(phb, vdd, ph);
  tranif0 pmos_2(vdd, phbuf, notph);
endmodule   /* muddlib07__clkinvbuf_4x */

module muddlib07__clkinvbufdual_4x(ph1, ph2, ph1b, ph1buf, ph2b, ph2buf, vdd, 
      gnd);
  input ph1;
  input ph2;
  output ph1b;
  output ph1buf;
  output ph2b;
  output ph2buf;
  input vdd;
  input gnd;

  supply1 vdd;
  supply0 gnd;
  muddlib07__clkinvbuf_4x clkinvbu_0(.ph(ph2), .phb(ph2b), .phbuf(ph2buf), 
      .vdd(vdd), .gnd(gnd));
  muddlib07__clkinvbuf_4x clkinvbu_1(.ph(ph1), .phb(ph1b), .phbuf(ph1buf), 
      .vdd(vdd), .gnd(gnd));
endmodule   /* muddlib07__clkinvbufdual_4x */

module muddlib07__flop_dp_1x(d, ph1, ph1b, ph2, ph2b, q, vdd, gnd);
  input d;
  input ph1;
  input ph1b;
  input ph2;
  input ph2b;
  output q;
  input vdd;
  input gnd;

  supply1 vdd;
  supply0 gnd;
  wire master, masterinb, net_498, net_502, net_552, net_555, net_557;
  wire plno_2_well, plnode_0_well;
  trireg masterb, slave;

  tranif1 nmos_2(gnd, masterinb, d);
  tranif1 nmos_18(masterinb, masterb, ph2);
  tranif1 nmos_19(masterb, net_498, ph2b);
  tranif1 nmos_20(net_498, gnd, master);
  tranif1 nmos_21(gnd, master, masterb);
  rtranif1 nmos_22(master, slave, ph1);
  tranif1 nmos_23(slave, net_552, ph1b);
  tranif1 nmos_24(net_552, gnd, net_557);
  tranif1 nmos_25(gnd, net_557, slave);
  tranif1 nmos_26(gnd, q, net_557);
  tranif0 pmos_2(vdd, masterinb, d);
  tranif0 pmos_17(masterinb, masterb, ph2b);
  tranif0 pmos_18(masterb, net_502, ph2);
  tranif0 pmos_19(net_502, vdd, master);
  tranif0 pmos_20(vdd, master, masterb);
  rtranif0 pmos_21(master, slave, ph1b);
  tranif0 pmos_22(slave, net_555, ph1);
  tranif0 pmos_23(net_555, vdd, net_557);
  tranif0 pmos_24(vdd, net_557, slave);
  tranif0 pmos_25(vdd, q, net_557);
endmodule   /* muddlib07__flop_dp_1x */

module wordlib8__flop_1x_8(d, d_1, d_2, d_3, d_4, d_5, d_6, d_7, ph1, ph2, q, 
      q_1, q_2, q_3, q_4, q_5, q_6, q_7, vdd, vdd_1, vdd_10, vdd_11, vdd_12, 
      vdd_13, vdd_14, vdd_15, vdd_9, gnd, gnd_1, gnd_10, gnd_11, gnd_12, 
      gnd_13, gnd_14, gnd_15, gnd_9);
  input [0:0] d;
  input [1:1] d_1;
  input [2:2] d_2;
  input [3:3] d_3;
  input [4:4] d_4;
  input [5:5] d_5;
  input [6:6] d_6;
  input [7:7] d_7;
  input ph1;
  input ph2;
  output [0:0] q;
  output [1:1] q_1;
  output [2:2] q_2;
  output [3:3] q_3;
  output [4:4] q_4;
  output [5:5] q_5;
  output [6:6] q_6;
  output [7:7] q_7;
  input vdd;
  input vdd_1;
  input vdd_10;
  input vdd_11;
  input vdd_12;
  input vdd_13;
  input vdd_14;
  input vdd_15;
  input vdd_9;
  input gnd;
  input gnd_1;
  input gnd_10;
  input gnd_11;
  input gnd_12;
  input gnd_13;
  input gnd_14;
  input gnd_15;
  input gnd_9;

  supply1 vdd;
  supply0 gnd;
  wire net_242, net_244, net_248, net_341;

  muddlib07__clkinvbufdual_4x clkinvbu_1(.ph1(ph1), .ph2(ph2), .ph1b(net_242), 
      .ph1buf(net_244), .ph2b(net_341), .ph2buf(net_248), .vdd(vdd_1), 
      .gnd(gnd));
  muddlib07__flop_dp_1x flop_dp__0(.d(d[0]), .ph1(net_244), .ph1b(net_242), 
      .ph2(net_248), .ph2b(net_341), .q(q[0]), .vdd(vdd), .gnd(gnd_1));
  muddlib07__flop_dp_1x flop_dp__8(.d(d_1[1]), .ph1(net_244), .ph1b(net_242), 
      .ph2(net_248), .ph2b(net_341), .q(q_1[1]), .vdd(vdd_9), .gnd(gnd_9));
  muddlib07__flop_dp_1x flop_dp__9(.d(d_2[2]), .ph1(net_244), .ph1b(net_242), 
      .ph2(net_248), .ph2b(net_341), .q(q_2[2]), .vdd(vdd_10), .gnd(gnd_10));
  muddlib07__flop_dp_1x flop_dp__10(.d(d_3[3]), .ph1(net_244), .ph1b(net_242), 
      .ph2(net_248), .ph2b(net_341), .q(q_3[3]), .vdd(vdd_11), .gnd(gnd_11));
  muddlib07__flop_dp_1x flop_dp__11(.d(d_4[4]), .ph1(net_244), .ph1b(net_242), 
      .ph2(net_248), .ph2b(net_341), .q(q_4[4]), .vdd(vdd_12), .gnd(gnd_12));
  muddlib07__flop_dp_1x flop_dp__12(.d(d_5[5]), .ph1(net_244), .ph1b(net_242), 
      .ph2(net_248), .ph2b(net_341), .q(q_5[5]), .vdd(vdd_13), .gnd(gnd_13));
  muddlib07__flop_dp_1x flop_dp__13(.d(d_6[6]), .ph1(net_244), .ph1b(net_242), 
      .ph2(net_248), .ph2b(net_341), .q(q_6[6]), .vdd(vdd_14), .gnd(gnd_14));
  muddlib07__flop_dp_1x flop_dp__14(.d(d_7[7]), .ph1(net_244), .ph1b(net_242), 
      .ph2(net_248), .ph2b(net_341), .q(q_7[7]), .vdd(vdd_15), .gnd(gnd_15));
endmodule   /* wordlib8__flop_1x_8 */

module muddlib07__flopenr_dp_1x(d, en, enb, ph1, ph1b, ph2, ph2b, resetb, q, 
      vdd, gnd);
  input d;
  input en;
  input enb;
  input ph1;
  input ph1b;
  input ph2;
  input ph2b;
  input resetb;
  output q;
  input vdd;
  input gnd;

  supply1 vdd;
  supply0 gnd;
  wire master, masterinb, n1, n2, net_239, net_498, net_502, net_552, net_555;
  wire net_557, net_72, net_75, plno_2_well, plnode_0_well;
  trireg masterb, slave;

  tranif1 nmos_0(gnd, n1, resetb);
  tranif1 nmos_1(n1, n2, en);
  tranif1 nmos_2(n2, masterinb, d);
  tranif1 nmos_3(masterinb, net_239, slave);
  tranif1 nmos_5(net_239, n1, enb);
  tranif1 nmos_18(masterinb, masterb, ph2);
  tranif1 nmos_19(masterb, net_498, ph2b);
  tranif1 nmos_20(net_498, gnd, master);
  tranif1 nmos_21(gnd, master, masterb);
  rtranif1 nmos_22(master, slave, ph1);
  tranif1 nmos_23(slave, net_552, ph1b);
  tranif1 nmos_24(net_552, gnd, net_557);
  tranif1 nmos_25(gnd, net_557, slave);
  tranif1 nmos_26(gnd, q, net_557);
  tranif0 pmos_0(vdd, net_72, enb);
  tranif0 pmos_2(net_72, masterinb, d);
  tranif0 pmos_3(masterinb, net_75, slave);
  tranif0 pmos_4(net_75, vdd, en);
  tranif0 pmos_6(vdd, masterinb, resetb);
  tranif0 pmos_17(masterinb, masterb, ph2b);
  tranif0 pmos_18(masterb, net_502, ph2);
  tranif0 pmos_19(net_502, vdd, master);
  tranif0 pmos_20(vdd, master, masterb);
  rtranif0 pmos_21(master, slave, ph1b);
  tranif0 pmos_22(slave, net_555, ph1);
  tranif0 pmos_23(net_555, vdd, net_557);
  tranif0 pmos_24(vdd, net_557, slave);
  tranif0 pmos_25(vdd, q, net_557);
endmodule   /* muddlib07__flopenr_dp_1x */

module muddlib07__inv_4x(a, y, vdd, gnd);
  input a;
  output y;
  input vdd;
  input gnd;

  supply1 vdd;
  supply0 gnd;
  wire plnode_0_well, plnode_1_well;

  tranif1 nmos_0(gnd, y, a);
  tranif0 pmos_0(vdd, y, a);
endmodule   /* muddlib07__inv_4x */

module wordlib8__flopenr_1x_8(d, d_1, d_2, d_3, d_4, d_5, d_6, d_7, en, ph1, 
      ph2, reset, q, q_1, q_2, q_3, q_4, q_5, q_6, q_7, vdd, vdd_1, vdd_32, 
      vdd_33, vdd_34, vdd_35, vdd_36, vdd_37, vdd_38, gnd, gnd_1, gnd_32, 
      gnd_33, gnd_34, gnd_35, gnd_36, gnd_37, gnd_38);
  input [0:0] d;
  input [1:1] d_1;
  input [2:2] d_2;
  input [3:3] d_3;
  input [4:4] d_4;
  input [5:5] d_5;
  input [6:6] d_6;
  input [7:7] d_7;
  input en;
  input ph1;
  input ph2;
  input reset;
  output [0:0] q;
  output [1:1] q_1;
  output [2:2] q_2;
  output [3:3] q_3;
  output [4:4] q_4;
  output [5:5] q_5;
  output [6:6] q_6;
  output [7:7] q_7;
  input vdd;
  input vdd_1;
  input vdd_32;
  input vdd_33;
  input vdd_34;
  input vdd_35;
  input vdd_36;
  input vdd_37;
  input vdd_38;
  input gnd;
  input gnd_1;
  input gnd_32;
  input gnd_33;
  input gnd_34;
  input gnd_35;
  input gnd_36;
  input gnd_37;
  input gnd_38;

  supply1 vdd;
  supply0 gnd;
  wire net_223, net_226, net_228, net_299, net_302, net_370, net_377;

  muddlib07__clkinvbufdual_4x clkinvbu_0(.ph1(ph1), .ph2(ph2), .ph1b(net_377), 
      .ph1buf(net_370), .ph2b(net_302), .ph2buf(net_299), .vdd(vdd_32), 
      .gnd(gnd_32));
  muddlib07__flopenr_dp_1x flopenr__0(.d(d[0]), .en(net_226), .enb(net_223), 
      .ph1(net_370), .ph1b(net_377), .ph2(net_299), .ph2b(net_302), 
      .resetb(net_228), .q(q[0]), .vdd(vdd), .gnd(gnd));
  muddlib07__flopenr_dp_1x flopenr__32(.d(d_1[1]), .en(net_226), .enb(net_223), 
      .ph1(net_370), .ph1b(net_377), .ph2(net_299), .ph2b(net_302), 
      .resetb(net_228), .q(q_1[1]), .vdd(vdd_33), .gnd(gnd_33));
  muddlib07__flopenr_dp_1x flopenr__33(.d(d_2[2]), .en(net_226), .enb(net_223), 
      .ph1(net_370), .ph1b(net_377), .ph2(net_299), .ph2b(net_302), 
      .resetb(net_228), .q(q_2[2]), .vdd(vdd_34), .gnd(gnd_34));
  muddlib07__flopenr_dp_1x flopenr__34(.d(d_3[3]), .en(net_226), .enb(net_223), 
      .ph1(net_370), .ph1b(net_377), .ph2(net_299), .ph2b(net_302), 
      .resetb(net_228), .q(q_3[3]), .vdd(vdd_35), .gnd(gnd_35));
  muddlib07__flopenr_dp_1x flopenr__35(.d(d_4[4]), .en(net_226), .enb(net_223), 
      .ph1(net_370), .ph1b(net_377), .ph2(net_299), .ph2b(net_302), 
      .resetb(net_228), .q(q_4[4]), .vdd(vdd_36), .gnd(gnd_36));
  muddlib07__flopenr_dp_1x flopenr__36(.d(d_5[5]), .en(net_226), .enb(net_223), 
      .ph1(net_370), .ph1b(net_377), .ph2(net_299), .ph2b(net_302), 
      .resetb(net_228), .q(q_5[5]), .vdd(vdd_37), .gnd(gnd_37));
  muddlib07__flopenr_dp_1x flopenr__37(.d(d_6[6]), .en(net_226), .enb(net_223), 
      .ph1(net_370), .ph1b(net_377), .ph2(net_299), .ph2b(net_302), 
      .resetb(net_228), .q(q_6[6]), .vdd(vdd_38), .gnd(gnd_38));
  muddlib07__flopenr_dp_1x flopenr__38(.d(d_7[7]), .en(net_226), .enb(net_223), 
      .ph1(net_370), .ph1b(net_377), .ph2(net_299), .ph2b(net_302), 
      .resetb(net_228), .q(q_7[7]), .vdd(vdd_1), .gnd(gnd_1));
  muddlib07__inv_4x inv_4x_0(.a(reset), .y(net_228), .vdd(vdd_32), 
      .gnd(gnd_32));
  muddlib07__inv_4x inv_4x_1(.a(net_223), .y(net_226), .vdd(vdd_32), 
      .gnd(gnd_32));
  muddlib07__inv_4x inv_4x_2(.a(en), .y(net_223), .vdd(vdd_32), .gnd(gnd_32));
endmodule   /* wordlib8__flopenr_1x_8 */

module muddlib07__flopen_dp_1x(d, en, enb, ph1, ph1b, ph2, ph2b, q, vdd, gnd);
  input d;
  input en;
  input enb;
  input ph1;
  input ph1b;
  input ph2;
  input ph2b;
  output q;
  input vdd;
  input gnd;

  supply1 vdd;
  supply0 gnd;
  wire master, masterinb, net_239, net_498, net_502, net_552, net_555, net_557;
  wire net_72, net_75, net_775, plno_2_well, plnode_0_well;
  trireg masterb, slave;

  tranif1 nmos_1(gnd, net_775, en);
  tranif1 nmos_2(net_775, masterinb, d);
  tranif1 nmos_3(masterinb, net_239, slave);
  tranif1 nmos_5(net_239, gnd, enb);
  tranif1 nmos_18(masterinb, masterb, ph2);
  tranif1 nmos_19(masterb, net_498, ph2b);
  tranif1 nmos_20(net_498, gnd, master);
  tranif1 nmos_21(gnd, master, masterb);
  rtranif1 nmos_22(master, slave, ph1);
  tranif1 nmos_23(slave, net_552, ph1b);
  tranif1 nmos_24(net_552, gnd, net_557);
  tranif1 nmos_25(gnd, net_557, slave);
  tranif1 nmos_26(gnd, q, net_557);
  tranif0 pmos_0(vdd, net_72, enb);
  tranif0 pmos_2(net_72, masterinb, d);
  tranif0 pmos_3(masterinb, net_75, slave);
  tranif0 pmos_4(net_75, vdd, en);
  tranif0 pmos_17(masterinb, masterb, ph2b);
  tranif0 pmos_18(masterb, net_502, ph2);
  tranif0 pmos_19(net_502, vdd, master);
  tranif0 pmos_20(vdd, master, masterb);
  rtranif0 pmos_21(master, slave, ph1b);
  tranif0 pmos_22(slave, net_555, ph1);
  tranif0 pmos_23(net_555, vdd, net_557);
  tranif0 pmos_24(vdd, net_557, slave);
  tranif0 pmos_25(vdd, q, net_557);
endmodule   /* muddlib07__flopen_dp_1x */

module wordlib8__flopen_1x_8(d, d_1, d_2, d_3, d_4, d_5, d_6, d_7, en, ph1, 
      ph2, q, q_1, q_2, q_3, q_4, q_5, q_6, q_7, vdd, vdd_1, vdd_1_1, vdd_2, 
      vdd_3, vdd_4, vdd_5, vdd_6, vdd_7, gnd, gnd_1, gnd_1_1, gnd_2, gnd_3, 
      gnd_4, gnd_5, gnd_6, gnd_7);
  input [0:0] d;
  input [1:1] d_1;
  input [2:2] d_2;
  input [3:3] d_3;
  input [4:4] d_4;
  input [5:5] d_5;
  input [6:6] d_6;
  input [7:7] d_7;
  input en;
  input ph1;
  input ph2;
  output [0:0] q;
  output [1:1] q_1;
  output [2:2] q_2;
  output [3:3] q_3;
  output [4:4] q_4;
  output [5:5] q_5;
  output [6:6] q_6;
  output [7:7] q_7;
  input vdd;
  input vdd_1;
  input vdd_1_1;
  input vdd_2;
  input vdd_3;
  input vdd_4;
  input vdd_5;
  input vdd_6;
  input vdd_7;
  input gnd;
  input gnd_1;
  input gnd_1_1;
  input gnd_2;
  input gnd_3;
  input gnd_4;
  input gnd_5;
  input gnd_6;
  input gnd_7;

  supply1 vdd;
  supply0 gnd;
  wire net_232, net_237, net_242, net_244, net_248, net_272;

  muddlib07__clkinvbufdual_4x clkinvbu_1(.ph1(ph1), .ph2(ph2), .ph1b(net_242), 
      .ph1buf(net_244), .ph2b(net_272), .ph2buf(net_248), .vdd(vdd_1), 
      .gnd(gnd_1));
  muddlib07__flopen_dp_1x flopen_d_32(.d(d_1[1]), .en(net_237), .enb(net_232), 
      .ph1(net_244), .ph1b(net_242), .ph2(net_248), .ph2b(net_272), .q(q_1[1]), 
      .vdd(vdd), .gnd(gnd));
  muddlib07__flopen_dp_1x flopen_d_33(.d(d_2[2]), .en(net_237), .enb(net_232), 
      .ph1(net_244), .ph1b(net_242), .ph2(net_248), .ph2b(net_272), .q(q_2[2]), 
      .vdd(vdd_1_1), .gnd(gnd_1_1));
  muddlib07__flopen_dp_1x flopen_d_34(.d(d_3[3]), .en(net_237), .enb(net_232), 
      .ph1(net_244), .ph1b(net_242), .ph2(net_248), .ph2b(net_272), .q(q_3[3]), 
      .vdd(vdd_2), .gnd(gnd_2));
  muddlib07__flopen_dp_1x flopen_d_35(.d(d_4[4]), .en(net_237), .enb(net_232), 
      .ph1(net_244), .ph1b(net_242), .ph2(net_248), .ph2b(net_272), .q(q_4[4]), 
      .vdd(vdd_3), .gnd(gnd_3));
  muddlib07__flopen_dp_1x flopen_d_36(.d(d_5[5]), .en(net_237), .enb(net_232), 
      .ph1(net_244), .ph1b(net_242), .ph2(net_248), .ph2b(net_272), .q(q_5[5]), 
      .vdd(vdd_4), .gnd(gnd_4));
  muddlib07__flopen_dp_1x flopen_d_37(.d(d_6[6]), .en(net_237), .enb(net_232), 
      .ph1(net_244), .ph1b(net_242), .ph2(net_248), .ph2b(net_272), .q(q_6[6]), 
      .vdd(vdd_5), .gnd(gnd_5));
  muddlib07__flopen_dp_1x flopen_d_38(.d(d_7[7]), .en(net_237), .enb(net_232), 
      .ph1(net_244), .ph1b(net_242), .ph2(net_248), .ph2b(net_272), .q(q_7[7]), 
      .vdd(vdd_6), .gnd(gnd_6));
  muddlib07__flopen_dp_1x flopen_d_39(.d(d[0]), .en(net_237), .enb(net_232), 
      .ph1(net_244), .ph1b(net_242), .ph2(net_248), .ph2b(net_272), .q(q[0]), 
      .vdd(vdd_7), .gnd(gnd_7));
  muddlib07__inv_4x inv_4x_2(.a(net_232), .y(net_237), .vdd(vdd_1), 
      .gnd(gnd_1));
  muddlib07__inv_4x inv_4x_3(.a(en), .y(net_232), .vdd(vdd_1), .gnd(gnd_1));
endmodule   /* wordlib8__flopen_1x_8 */

module muddlib07__mux2_c_1x(d0, d1, s, y, vdd, gnd);
  input d0;
  input d1;
  input s;
  output y;
  input vdd;
  input gnd;

  supply1 vdd;
  supply0 gnd;
  wire net_114, net_186, net_187, net_188, net_189, net_80, plno_2_well;
  wire plnode_0_well;

  tranif1 nmos_1(gnd, net_189, d1);
  tranif1 nmos_2(net_189, net_80, s);
  tranif1 nmos_3(net_80, net_188, net_114);
  tranif1 nmos_4(net_188, gnd, d0);
  tranif1 nmos_5(net_114, gnd, s);
  tranif1 nmos_6(gnd, y, net_80);
  tranif0 pmos_0(vdd, net_187, d1);
  tranif0 pmos_1(net_187, net_80, net_114);
  tranif0 pmos_2(net_80, net_186, s);
  tranif0 pmos_3(net_186, vdd, d0);
  tranif0 pmos_4(net_114, vdd, s);
  tranif0 pmos_5(vdd, y, net_80);
endmodule   /* muddlib07__mux2_c_1x */

module muddlib07__mux3_dp_1x(d0, d1, d2, s0, s0b, s1, s1b, y, vdd, gnd);
  input d0;
  input d1;
  input d2;
  input s0;
  input s0b;
  input s1;
  input s1b;
  output y;
  input vdd;
  input gnd;

  supply1 vdd;
  supply0 gnd;
  wire net_0, net_15, net_155, net_160, net_22, net_24, net_30, net_44, net_87;
  wire plnode_0_well, plnode_1_well;

  tranif1 nmos_0(net_15, net_22, s0);
  tranif1 nmos_1(net_22, gnd, d1);
  tranif1 nmos_2(gnd, net_24, d0);
  tranif1 nmos_3(net_24, net_15, s0b);
  tranif1 nmos_4(net_15, net_44, s1b);
  tranif1 nmos_5(net_44, net_160, s1);
  tranif1 nmos_6(net_160, gnd, d2);
  tranif1 nmos_7(y, gnd, net_44);
  tranif0 pmos_0(vdd, y, net_44);
  tranif0 pmos_1(net_0, net_44, s1);
  tranif0 pmos_2(net_155, net_0, s0b);
  tranif0 pmos_3(vdd, net_155, d1);
  tranif0 pmos_4(net_87, vdd, d0);
  tranif0 pmos_5(net_0, net_87, s0);
  tranif0 pmos_6(net_44, net_30, s1b);
  tranif0 pmos_7(net_30, vdd, d2);
endmodule   /* muddlib07__mux3_dp_1x */

module wordlib8__mux3_1x_8(d0, d0_1, d0_2, d0_3, d0_4, d0_5, d0_6, d0_7, d1, 
      d1_1, d1_2, d1_3, d1_4, d1_5, d1_6, d1_7, d2, d2_1, d2_2, d2_3, d2_4, 
      d2_5, d2_6, d2_7, s0, s1, y, y_1, y_2, y_3, y_4, y_5, y_6, y_7, vdd, 
      vdd_1, vdd_32, vdd_33, vdd_34, vdd_35, vdd_36, vdd_37, vdd_38, gnd, 
      gnd_1, gnd_32, gnd_33, gnd_34, gnd_35, gnd_36, gnd_37, gnd_38);
  input [0:0] d0;
  input [1:1] d0_1;
  input [2:2] d0_2;
  input [3:3] d0_3;
  input [4:4] d0_4;
  input [5:5] d0_5;
  input [6:6] d0_6;
  input [7:7] d0_7;
  input [0:0] d1;
  input [1:1] d1_1;
  input [2:2] d1_2;
  input [3:3] d1_3;
  input [4:4] d1_4;
  input [5:5] d1_5;
  input [6:6] d1_6;
  input [7:7] d1_7;
  input [0:0] d2;
  input [1:1] d2_1;
  input [2:2] d2_2;
  input [3:3] d2_3;
  input [4:4] d2_4;
  input [5:5] d2_5;
  input [6:6] d2_6;
  input [7:7] d2_7;
  input s0;
  input s1;
  output [0:0] y;
  output [1:1] y_1;
  output [2:2] y_2;
  output [3:3] y_3;
  output [4:4] y_4;
  output [5:5] y_5;
  output [6:6] y_6;
  output [7:7] y_7;
  input vdd;
  input vdd_1;
  input vdd_32;
  input vdd_33;
  input vdd_34;
  input vdd_35;
  input vdd_36;
  input vdd_37;
  input vdd_38;
  input gnd;
  input gnd_1;
  input gnd_32;
  input gnd_33;
  input gnd_34;
  input gnd_35;
  input gnd_36;
  input gnd_37;
  input gnd_38;

  supply1 vdd;
  supply0 gnd;
  wire net_161, net_168, net_175, net_182;

  muddlib07__invbuf_4x invbuf_4_0(.s(s0), .s_out(net_161), .sb_out(net_168), 
      .vdd(vdd_32), .gnd(gnd_32));
  muddlib07__invbuf_4x invbuf_4_1(.s(s1), .s_out(net_182), .sb_out(net_175), 
      .vdd(vdd_32), .gnd(gnd_32));
  muddlib07__mux3_dp_1x mux3_dp__0(.d0(d0[0]), .d1(d1[0]), .d2(d2[0]), 
      .s0(net_161), .s0b(net_168), .s1(net_182), .s1b(net_175), .y(y[0]), 
      .vdd(vdd_1), .gnd(gnd_1));
  muddlib07__mux3_dp_1x mux3_dp__32(.d0(d0_1[1]), .d1(d1_1[1]), .d2(d2_1[1]), 
      .s0(net_161), .s0b(net_168), .s1(net_182), .s1b(net_175), .y(y_1[1]), 
      .vdd(vdd_33), .gnd(gnd_33));
  muddlib07__mux3_dp_1x mux3_dp__33(.d0(d0_2[2]), .d1(d1_2[2]), .d2(d2_2[2]), 
      .s0(net_161), .s0b(net_168), .s1(net_182), .s1b(net_175), .y(y_2[2]), 
      .vdd(vdd_34), .gnd(gnd_34));
  muddlib07__mux3_dp_1x mux3_dp__34(.d0(d0_3[3]), .d1(d1_3[3]), .d2(d2_3[3]), 
      .s0(net_161), .s0b(net_168), .s1(net_182), .s1b(net_175), .y(y_3[3]), 
      .vdd(vdd_35), .gnd(gnd_35));
  muddlib07__mux3_dp_1x mux3_dp__35(.d0(d0_4[4]), .d1(d1_4[4]), .d2(d2_4[4]), 
      .s0(net_161), .s0b(net_168), .s1(net_182), .s1b(net_175), .y(y_4[4]), 
      .vdd(vdd_36), .gnd(gnd_36));
  muddlib07__mux3_dp_1x mux3_dp__36(.d0(d0_5[5]), .d1(d1_5[5]), .d2(d2_5[5]), 
      .s0(net_161), .s0b(net_168), .s1(net_182), .s1b(net_175), .y(y_5[5]), 
      .vdd(vdd_37), .gnd(gnd_37));
  muddlib07__mux3_dp_1x mux3_dp__37(.d0(d0_6[6]), .d1(d1_6[6]), .d2(d2_6[6]), 
      .s0(net_161), .s0b(net_168), .s1(net_182), .s1b(net_175), .y(y_6[6]), 
      .vdd(vdd_38), .gnd(gnd_38));
  muddlib07__mux3_dp_1x mux3_dp__38(.d0(d0_7[7]), .d1(d1_7[7]), .d2(d2_7[7]), 
      .s0(net_161), .s0b(net_168), .s1(net_182), .s1b(net_175), .y(y_7[7]), 
      .vdd(vdd), .gnd(gnd));
endmodule   /* wordlib8__mux3_1x_8 */

module muddlib07__nand3_1x(a, b, c, y, vdd, gnd);
  input a;
  input b;
  input c;
  output y;
  input vdd;
  input gnd;

  supply1 vdd;
  supply0 gnd;
  wire net_177, net_178, plno_2_well, plnode_0_well;

  tranif1 nmos_6(gnd, net_177, a);
  tranif1 nmos_7(net_177, net_178, b);
  tranif1 nmos_8(net_178, y, c);
  tranif0 pmos_6(vdd, y, c);
  tranif0 pmos_7(y, vdd, b);
  tranif0 pmos_8(vdd, y, a);
endmodule   /* muddlib07__nand3_1x */

module muddlib07__nand5_1x(a, b, c, d, e, y, vdd, gnd);
  input a;
  input b;
  input c;
  input d;
  input e;
  output y;
  input vdd;
  input gnd;

  supply1 vdd;
  supply0 gnd;
  wire net_2, net_3, net_4, net_71, plnode_0_well, plnode_1_well;

  tranif1 nmos_0(net_4, net_3, b);
  tranif1 nmos_1(net_3, net_2, c);
  tranif1 nmos_2(net_2, net_71, d);
  tranif1 nmos_3(gnd, net_4, a);
  tranif1 nmos_4(net_71, y, e);
  tranif0 pmos_0(vdd, y, a);
  tranif0 pmos_1(y, vdd, b);
  tranif0 pmos_2(vdd, y, c);
  tranif0 pmos_3(y, vdd, d);
  tranif0 pmos_4(vdd, y, e);
endmodule   /* muddlib07__nand5_1x */

module mips8_GK__regram_zipper(RegWrite, ph2, r1a, r1a_1, r1a_2, r2a, r2a_1, 
      r2a_2, wa, wa_1, wa_2, read1, read1b, read2, read2b, write, writeb, vdd, 
      vdd_1, vdd_1_1, vdd_2, gnd, gnd_1, gnd_1_1, gnd_2);
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
  input vdd;
  input vdd_1;
  input vdd_1_1;
  input vdd_2;
  input gnd;
  input gnd_1;
  input gnd_1_1;
  input gnd_2;

  supply1 vdd;
  supply0 gnd;
  wire net_25, net_27, net_32;

  muddlib07__invbuf_4x invbuf_4_0(.s(net_27), .s_out(writeb), .sb_out(write), 
      .vdd(vdd_1), .gnd(gnd));
  muddlib07__invbuf_4x invbuf_4_1(.s(net_25), .s_out(read1b), .sb_out(read1), 
      .vdd(vdd_2), .gnd(gnd_2));
  muddlib07__invbuf_4x invbuf_4_3(.s(net_32), .s_out(read2b), .sb_out(read2), 
      .vdd(vdd_1), .gnd(gnd));
  muddlib07__nand3_1x nand3_1x_0(.a(r2a[0]), .b(r2a_1[1]), .c(r2a_2[2]), 
      .y(net_32), .vdd(vdd), .gnd(gnd_1));
  muddlib07__nand3_1x nand3_1x_1(.a(r1a[0]), .b(r1a_1[1]), .c(r1a_2[2]), 
      .y(net_25), .vdd(vdd_2), .gnd(gnd_2));
  muddlib07__nand5_1x nand5_1x_0(.a(wa[0]), .b(wa_1[1]), .c(wa_2[2]), .d(ph2), 
      .e(RegWrite), .y(net_27), .vdd(vdd_1_1), .gnd(gnd_1_1));
endmodule   /* mips8_GK__regram_zipper */

module mips8_GK__regram_dp(read1, read1b, read2, read2b, w, write, writeb, r1, 
      r2, vdd, gnd);
  input read1;
  input read1b;
  input read2;
  input read2b;
  input w;
  input write;
  input writeb;
  output r1;
  output r2;
  input vdd;
  input gnd;

  supply1 vdd;
  supply0 gnd;
  wire net_0, net_1, net_107, net_118, net_129, net_86, net_95, net_96;
  wire plnode_0_well, plnode_1_well, plnode_2_select, plnode_3_select;

  tranif1 nmos_0(net_118, r2, read2);
  tranif1 nmos_1(gnd, net_118, net_0);
  tranif1 nmos_2(w, net_1, write);
  tranif1 nmos_3(net_1, net_95, net_0);
  tranif1 nmos_4(net_95, gnd, writeb);
  tranif1 nmos_5(gnd, net_0, net_1);
  tranif1 nmos_6(net_96, gnd, net_0);
  tranif1 nmos_7(r1, net_96, read1);
  tranif0 pmos_0(net_86, vdd, write);
  tranif0 pmos_1(vdd, net_0, net_1);
  tranif0 pmos_2(net_129, r2, read2b);
  tranif0 pmos_3(vdd, net_129, net_0);
  tranif0 pmos_4(w, net_1, writeb);
  tranif0 pmos_5(net_1, net_86, net_0);
  tranif0 pmos_6(net_107, vdd, net_0);
  tranif0 pmos_7(r1, net_107, read1b);
endmodule   /* mips8_GK__regram_dp */

module mips8_GK__regram_8(read1, read1b, read2, read2b, w, w_1, w_2, w_3, w_4, 
      w_5, w_6, w_7, write, writeb, r1, r1_1, r1_2, r1_3, r1_4, r1_5, r1_6, 
      r1_7, r2, r2_1, r2_2, r2_3, r2_4, r2_5, r2_6, r2_7, vdd, vdd_1, vdd_1_1, 
      vdd_2, vdd_3, vdd_4, vdd_5, vdd_6, gnd, gnd_1, gnd_1_1, gnd_2, gnd_3, 
      gnd_4, gnd_5, gnd_6);
  input read1;
  input read1b;
  input read2;
  input read2b;
  input [0:0] w;
  input [1:1] w_1;
  input [2:2] w_2;
  input [3:3] w_3;
  input [4:4] w_4;
  input [5:5] w_5;
  input [6:6] w_6;
  input [7:7] w_7;
  input write;
  input writeb;
  output [0:0] r1;
  output [1:1] r1_1;
  output [2:2] r1_2;
  output [3:3] r1_3;
  output [4:4] r1_4;
  output [5:5] r1_5;
  output [6:6] r1_6;
  output [7:7] r1_7;
  output [0:0] r2;
  output [1:1] r2_1;
  output [2:2] r2_2;
  output [3:3] r2_3;
  output [4:4] r2_4;
  output [5:5] r2_5;
  output [6:6] r2_6;
  output [7:7] r2_7;
  input vdd;
  input vdd_1;
  input vdd_1_1;
  input vdd_2;
  input vdd_3;
  input vdd_4;
  input vdd_5;
  input vdd_6;
  input gnd;
  input gnd_1;
  input gnd_1_1;
  input gnd_2;
  input gnd_3;
  input gnd_4;
  input gnd_5;
  input gnd_6;

  supply1 vdd;
  supply0 gnd;
  mips8_GK__regram_dp regram_d_0(.read1(read1), .read1b(read1b), .read2(read2), 
      .read2b(read2b), .w(w[0]), .write(write), .writeb(writeb), .r1(r1[0]), 
      .r2(r2[0]), .vdd(vdd), .gnd(gnd_1));
  mips8_GK__regram_dp regram_d_1(.read1(read1), .read1b(read1b), .read2(read2), 
      .read2b(read2b), .w(w_1[1]), .write(write), .writeb(writeb), 
      .r1(r1_1[1]), .r2(r2_1[1]), .vdd(vdd_1_1), .gnd(gnd_1_1));
  mips8_GK__regram_dp regram_d_2(.read1(read1), .read1b(read1b), .read2(read2), 
      .read2b(read2b), .w(w_2[2]), .write(write), .writeb(writeb), 
      .r1(r1_2[2]), .r2(r2_2[2]), .vdd(vdd_2), .gnd(gnd_2));
  mips8_GK__regram_dp regram_d_3(.read1(read1), .read1b(read1b), .read2(read2), 
      .read2b(read2b), .w(w_3[3]), .write(write), .writeb(writeb), 
      .r1(r1_3[3]), .r2(r2_3[3]), .vdd(vdd_3), .gnd(gnd_3));
  mips8_GK__regram_dp regram_d_4(.read1(read1), .read1b(read1b), .read2(read2), 
      .read2b(read2b), .w(w_4[4]), .write(write), .writeb(writeb), 
      .r1(r1_4[4]), .r2(r2_4[4]), .vdd(vdd_4), .gnd(gnd_4));
  mips8_GK__regram_dp regram_d_5(.read1(read1), .read1b(read1b), .read2(read2), 
      .read2b(read2b), .w(w_5[5]), .write(write), .writeb(writeb), 
      .r1(r1_5[5]), .r2(r2_5[5]), .vdd(vdd_5), .gnd(gnd_5));
  mips8_GK__regram_dp regram_d_6(.read1(read1), .read1b(read1b), .read2(read2), 
      .read2b(read2b), .w(w_6[6]), .write(write), .writeb(writeb), 
      .r1(r1_6[6]), .r2(r2_6[6]), .vdd(vdd_6), .gnd(gnd_6));
  mips8_GK__regram_dp regram_d_7(.read1(read1), .read1b(read1b), .read2(read2), 
      .read2b(read2b), .w(w_7[7]), .write(write), .writeb(writeb), 
      .r1(r1_7[7]), .r2(r2_7[7]), .vdd(vdd_1), .gnd(gnd));
endmodule   /* mips8_GK__regram_8 */

module mips8_GK__regramvector_dp(RegWrite, ph2, r1a, r1a_1, r1a_2, r2a, r2a_1, 
      r2a_2, w, w_1, w_2, w_3, w_4, w_5, w_6, w_7, wa, wa_1, wa_2, r1, r1_1, 
      r1_2, r1_3, r1_4, r1_5, r1_6, r1_7, r2, r2_1, r2_2, r2_3, r2_4, r2_5, 
      r2_6, r2_7, vdd, vdd_1, vdd_10, vdd_1_1, vdd_2, vdd_3, vdd_4, vdd_5, 
      vdd_6, vdd_7, vdd_8, vdd_9, gnd, gnd_1, gnd_10, gnd_1_1, gnd_2, gnd_3, 
      gnd_4, gnd_5, gnd_6, gnd_7, gnd_8, gnd_9);
  input RegWrite;
  input ph2;
  input [0:0] r1a;
  input [1:1] r1a_1;
  input [2:2] r1a_2;
  input [0:0] r2a;
  input [1:1] r2a_1;
  input [2:2] r2a_2;
  input [0:0] w;
  input [1:1] w_1;
  input [2:2] w_2;
  input [3:3] w_3;
  input [4:4] w_4;
  input [5:5] w_5;
  input [6:6] w_6;
  input [7:7] w_7;
  input [0:0] wa;
  input [1:1] wa_1;
  input [2:2] wa_2;
  output [0:0] r1;
  output [1:1] r1_1;
  output [2:2] r1_2;
  output [3:3] r1_3;
  output [4:4] r1_4;
  output [5:5] r1_5;
  output [6:6] r1_6;
  output [7:7] r1_7;
  output [0:0] r2;
  output [1:1] r2_1;
  output [2:2] r2_2;
  output [3:3] r2_3;
  output [4:4] r2_4;
  output [5:5] r2_5;
  output [6:6] r2_6;
  output [7:7] r2_7;
  input vdd;
  input vdd_1;
  input vdd_10;
  input vdd_1_1;
  input vdd_2;
  input vdd_3;
  input vdd_4;
  input vdd_5;
  input vdd_6;
  input vdd_7;
  input vdd_8;
  input vdd_9;
  input gnd;
  input gnd_1;
  input gnd_10;
  input gnd_1_1;
  input gnd_2;
  input gnd_3;
  input gnd_4;
  input gnd_5;
  input gnd_6;
  input gnd_7;
  input gnd_8;
  input gnd_9;

  supply1 vdd;
  supply0 gnd;
  wire net_72, net_73, net_74, net_75, net_76, net_77;

  mips8_GK__regram_zipper regfile__0(.RegWrite(RegWrite), .ph2(ph2), 
      .r1a(r1a[0:0]), .r1a_1(r1a_1[1:1]), .r1a_2(r1a_2[2:2]), .r2a(r2a[0:0]), 
      .r2a_1(r2a_1[1:1]), .r2a_2(r2a_2[2:2]), .wa(wa[0:0]), .wa_1(wa_1[1:1]), 
      .wa_2(wa_2[2:2]), .read1(net_74), .read1b(net_75), .read2(net_77), 
      .read2b(net_76), .write(net_73), .writeb(net_72), .vdd(vdd), 
      .vdd_1(vdd_3), .vdd_1_1(vdd_1_1), .vdd_2(vdd_2), .gnd(gnd_3), 
      .gnd_1(gnd_1), .gnd_1_1(gnd_1_1), .gnd_2(gnd_2));
  mips8_GK__regram_8 regram_8_0(.read1(net_74), .read1b(net_75), 
      .read2(net_77), .read2b(net_76), .w(w[0:0]), .w_1(w_1[1:1]), 
      .w_2(w_2[2:2]), .w_3(w_3[3:3]), .w_4(w_4[4:4]), .w_5(w_5[5:5]), 
      .w_6(w_6[6:6]), .w_7(w_7[7:7]), .write(net_73), .writeb(net_72), 
      .r1(r1[0:0]), .r1_1(r1_1[1:1]), .r1_2(r1_2[2:2]), .r1_3(r1_3[3:3]), 
      .r1_4(r1_4[4:4]), .r1_5(r1_5[5:5]), .r1_6(r1_6[6:6]), .r1_7(r1_7[7:7]), 
      .r2(r2[0:0]), .r2_1(r2_1[1:1]), .r2_2(r2_2[2:2]), .r2_3(r2_3[3:3]), 
      .r2_4(r2_4[4:4]), .r2_5(r2_5[5:5]), .r2_6(r2_6[6:6]), .r2_7(r2_7[7:7]), 
      .vdd(vdd_4), .vdd_1(vdd_1), .vdd_1_1(vdd_5), .vdd_2(vdd_6), 
      .vdd_3(vdd_7), .vdd_4(vdd_8), .vdd_5(vdd_9), .vdd_6(vdd_10), .gnd(gnd), 
      .gnd_1(gnd_4), .gnd_1_1(gnd_5), .gnd_2(gnd_6), .gnd_3(gnd_7), 
      .gnd_4(gnd_8), .gnd_5(gnd_9), .gnd_6(gnd_10));
endmodule   /* mips8_GK__regramvector_dp */

module mips8_GK__regram0(read1, read2, r1, r2, gnd);
  input read1;
  input read2;
  output r1;
  output r2;
  input gnd;

  supply0 gnd;
  wire plnode_0_well;

  tranif1 nmos_0(gnd, r2, read2);
  tranif1 nmos_1(gnd, r1, read1);
endmodule   /* mips8_GK__regram0 */

module mips8_GK__regramvector0_dp(RegWrite, ph2, r1a, r1a_1, r1a_2, r2a, r2a_1, 
      r2a_2, wa, wa_1, wa_2, r1, r1_1, r1_2, r1_3, r1_4, r1_5, r1_6, r1_7, r2, 
      r2_1, r2_2, r2_3, r2_4, r2_5, r2_6, r2_7, vdd, vdd_1, vdd_1_1, vdd_2, 
      gnd, gnd_1, gnd_10, gnd_11, gnd_1_1, gnd_2, gnd_4, gnd_5, gnd_6, gnd_7, 
      gnd_8, gnd_9);
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
  output [0:0] r1;
  output [1:1] r1_1;
  output [2:2] r1_2;
  output [3:3] r1_3;
  output [4:4] r1_4;
  output [5:5] r1_5;
  output [6:6] r1_6;
  output [7:7] r1_7;
  output [0:0] r2;
  output [1:1] r2_1;
  output [2:2] r2_2;
  output [3:3] r2_3;
  output [4:4] r2_4;
  output [5:5] r2_5;
  output [6:6] r2_6;
  output [7:7] r2_7;
  input vdd;
  input vdd_1;
  input vdd_1_1;
  input vdd_2;
  input gnd;
  input gnd_1;
  input gnd_10;
  input gnd_11;
  input gnd_1_1;
  input gnd_2;
  input gnd_4;
  input gnd_5;
  input gnd_6;
  input gnd_7;
  input gnd_8;
  input gnd_9;

  supply1 vdd;
  supply0 gnd;
  wire net_0, net_7, regfile__0_read1b, regfile__0_read2b, regfile__0_write;
  wire regfile__0_writeb;

  mips8_GK__regram_zipper regfile__0(.RegWrite(RegWrite), .ph2(ph2), 
      .r1a(r1a[0:0]), .r1a_1(r1a_1[1:1]), .r1a_2(r1a_2[2:2]), .r2a(r2a[0:0]), 
      .r2a_1(r2a_1[1:1]), .r2a_2(r2a_2[2:2]), .wa(wa[0:0]), .wa_1(wa_1[1:1]), 
      .wa_2(wa_2[2:2]), .read1(net_7), .read1b(regfile__0_read1b), 
      .read2(net_0), .read2b(regfile__0_read2b), .write(regfile__0_write), 
      .writeb(regfile__0_writeb), .vdd(vdd), .vdd_1(vdd_1), .vdd_1_1(vdd_1_1), 
      .vdd_2(vdd_2), .gnd(gnd_1), .gnd_1(gnd), .gnd_1_1(gnd_1_1), 
      .gnd_2(gnd_2));
  mips8_GK__regram0 regram_0_0(.read1(net_7), .read2(net_0), .r1(r1[0]), 
      .r2(r2[0]), .gnd(gnd_4));
  mips8_GK__regram0 regram_0_8(.read1(net_7), .read2(net_0), .r1(r1_1[1]), 
      .r2(r2_1[1]), .gnd(gnd_5));
  mips8_GK__regram0 regram_0_9(.read1(net_7), .read2(net_0), .r1(r1_2[2]), 
      .r2(r2_2[2]), .gnd(gnd_6));
  mips8_GK__regram0 regram_0_10(.read1(net_7), .read2(net_0), .r1(r1_3[3]), 
      .r2(r2_3[3]), .gnd(gnd_7));
  mips8_GK__regram0 regram_0_11(.read1(net_7), .read2(net_0), .r1(r1_4[4]), 
      .r2(r2_4[4]), .gnd(gnd_8));
  mips8_GK__regram0 regram_0_12(.read1(net_7), .read2(net_0), .r1(r1_5[5]), 
      .r2(r2_5[5]), .gnd(gnd_9));
  mips8_GK__regram0 regram_0_13(.read1(net_7), .read2(net_0), .r1(r1_6[6]), 
      .r2(r2_6[6]), .gnd(gnd_10));
  mips8_GK__regram0 regram_0_14(.read1(net_7), .read2(net_0), .r1(r1_7[7]), 
      .r2(r2_7[7]), .gnd(gnd_11));
endmodule   /* mips8_GK__regramvector0_dp */

module mips8_GK__regramarray_dp(ph2, ra1, ra1_1, ra1_2, ra2, ra2_1, ra2_2, 
      regwrite, w, w_1, w_2, w_3, w_4, w_5, w_6, w_7, wa, wa_1, wa_2, r1, r1_1, 
      r1_2, r1_3, r1_4, r1_5, r1_6, r1_7, r2, r2_1, r2_2, r2_3, r2_4, r2_5, 
      r2_6, r2_7, vdd, vdd_1, vdd_10, vdd_11, vdd_12, vdd_3, vdd_4, vdd_5, 
      vdd_6, vdd_7, vdd_8, vdd_9, gnd, gnd_1, gnd_10, gnd_1_1, gnd_2, gnd_3, 
      gnd_4, gnd_5, gnd_6, gnd_7, gnd_8, gnd_9);
  input ph2;
  input [0:0] ra1;
  input [1:1] ra1_1;
  input [2:2] ra1_2;
  input [0:0] ra2;
  input [1:1] ra2_1;
  input [2:2] ra2_2;
  input regwrite;
  input [0:0] w;
  input [1:1] w_1;
  input [2:2] w_2;
  input [3:3] w_3;
  input [4:4] w_4;
  input [5:5] w_5;
  input [6:6] w_6;
  input [7:7] w_7;
  input [0:0] wa;
  input [1:1] wa_1;
  input [2:2] wa_2;
  output [0:0] r1;
  output [1:1] r1_1;
  output [2:2] r1_2;
  output [3:3] r1_3;
  output [4:4] r1_4;
  output [5:5] r1_5;
  output [6:6] r1_6;
  output [7:7] r1_7;
  output [0:0] r2;
  output [1:1] r2_1;
  output [2:2] r2_2;
  output [3:3] r2_3;
  output [4:4] r2_4;
  output [5:5] r2_5;
  output [6:6] r2_6;
  output [7:7] r2_7;
  input vdd;
  input vdd_1;
  input vdd_10;
  input vdd_11;
  input vdd_12;
  input vdd_3;
  input vdd_4;
  input vdd_5;
  input vdd_6;
  input vdd_7;
  input vdd_8;
  input vdd_9;
  input gnd;
  input gnd_1;
  input gnd_10;
  input gnd_1_1;
  input gnd_2;
  input gnd_3;
  input gnd_4;
  input gnd_5;
  input gnd_6;
  input gnd_7;
  input gnd_8;
  input gnd_9;

  supply1 vdd;
  supply0 gnd;
  wire net_323, net_324, net_325, net_327, net_328, net_330, net_331, net_359;
  wire net_360, net_361, net_363, net_364, net_373, net_374, net_375, net_376;
  wire net_377, net_378, plnode_2_select, plnode_3_select, plnode_4_select;
  wire plnode_5_select, plnode_6_select, plnode_7_select;

  muddlib07__invbuf_4x invbuf_4_0(.s(ra1[0]), .s_out(net_323), 
      .sb_out(net_325), .vdd(vdd_1), .gnd(gnd));
  muddlib07__invbuf_4x invbuf_4_1(.s(ra2[0]), .s_out(net_324), 
      .sb_out(net_364), .vdd(vdd_12), .gnd(gnd_10));
  muddlib07__invbuf_4x invbuf_4_2(.s(wa[0]), .s_out(net_378), .sb_out(net_377), 
      .vdd(vdd), .gnd(gnd_9));
  muddlib07__invbuf_4x invbuf_4_3(.s(ra1_1[1]), .s_out(net_327), 
      .sb_out(net_328), .vdd(vdd_1), .gnd(gnd));
  muddlib07__invbuf_4x invbuf_4_4(.s(ra2_1[1]), .s_out(net_363), 
      .sb_out(net_361), .vdd(vdd_12), .gnd(gnd_10));
  muddlib07__invbuf_4x invbuf_4_5(.s(wa_1[1]), .s_out(net_376), 
      .sb_out(net_375), .vdd(vdd), .gnd(gnd_9));
  muddlib07__invbuf_4x invbuf_4_6(.s(ra1_2[2]), .s_out(net_330), 
      .sb_out(net_331), .vdd(vdd_1), .gnd(gnd));
  muddlib07__invbuf_4x invbuf_4_7(.s(ra2_2[2]), .s_out(net_359), 
      .sb_out(net_360), .vdd(vdd_12), .gnd(gnd_10));
  muddlib07__invbuf_4x invbuf_4_8(.s(wa_2[2]), .s_out(net_373), 
      .sb_out(net_374), .vdd(vdd), .gnd(gnd_9));
  mips8_GK__regramvector_dp regramve_1(.RegWrite(regwrite), .ph2(ph2), 
      .r1a({net_323}), .r1a_1({net_328}), .r1a_2({net_331}), .r2a({net_324}), 
      .r2a_1({net_361}), .r2a_2({net_360}), .w(w[0:0]), .w_1(w_1[1:1]), 
      .w_2(w_2[2:2]), .w_3(w_3[3:3]), .w_4(w_4[4:4]), .w_5(w_5[5:5]), 
      .w_6(w_6[6:6]), .w_7(w_7[7:7]), .wa({net_378}), .wa_1({net_375}), 
      .wa_2({net_374}), .r1(r1[0:0]), .r1_1(r1_1[1:1]), .r1_2(r1_2[2:2]), 
      .r1_3(r1_3[3:3]), .r1_4(r1_4[4:4]), .r1_5(r1_5[5:5]), .r1_6(r1_6[6:6]), 
      .r1_7(r1_7[7:7]), .r2(r2[0:0]), .r2_1(r2_1[1:1]), .r2_2(r2_2[2:2]), 
      .r2_3(r2_3[3:3]), .r2_4(r2_4[4:4]), .r2_5(r2_5[5:5]), .r2_6(r2_6[6:6]), 
      .r2_7(r2_7[7:7]), .vdd(vdd_12), .vdd_1(vdd_4), .vdd_10(vdd_5), 
      .vdd_1_1(vdd), .vdd_2(vdd_1), .vdd_3(vdd_3), .vdd_4(vdd_11), 
      .vdd_5(vdd_10), .vdd_6(vdd_9), .vdd_7(vdd_8), .vdd_8(vdd_7), 
      .vdd_9(vdd_6), .gnd(gnd_7), .gnd_1(gnd_10), .gnd_10(gnd_6), 
      .gnd_1_1(gnd_9), .gnd_2(gnd), .gnd_3(gnd_8), .gnd_4(gnd_1), 
      .gnd_5(gnd_1_1), .gnd_6(gnd_2), .gnd_7(gnd_3), .gnd_8(gnd_4), 
      .gnd_9(gnd_5));
  mips8_GK__regramvector_dp regramve_2(.RegWrite(regwrite), .ph2(ph2), 
      .r1a({net_325}), .r1a_1({net_327}), .r1a_2({net_331}), .r2a({net_364}), 
      .r2a_1({net_363}), .r2a_2({net_360}), .w(w[0:0]), .w_1(w_1[1:1]), 
      .w_2(w_2[2:2]), .w_3(w_3[3:3]), .w_4(w_4[4:4]), .w_5(w_5[5:5]), 
      .w_6(w_6[6:6]), .w_7(w_7[7:7]), .wa({net_377}), .wa_1({net_376}), 
      .wa_2({net_374}), .r1(r1[0:0]), .r1_1(r1_1[1:1]), .r1_2(r1_2[2:2]), 
      .r1_3(r1_3[3:3]), .r1_4(r1_4[4:4]), .r1_5(r1_5[5:5]), .r1_6(r1_6[6:6]), 
      .r1_7(r1_7[7:7]), .r2(r2[0:0]), .r2_1(r2_1[1:1]), .r2_2(r2_2[2:2]), 
      .r2_3(r2_3[3:3]), .r2_4(r2_4[4:4]), .r2_5(r2_5[5:5]), .r2_6(r2_6[6:6]), 
      .r2_7(r2_7[7:7]), .vdd(vdd_12), .vdd_1(vdd_4), .vdd_10(vdd_5), 
      .vdd_1_1(vdd), .vdd_2(vdd_1), .vdd_3(vdd_3), .vdd_4(vdd_11), 
      .vdd_5(vdd_10), .vdd_6(vdd_9), .vdd_7(vdd_8), .vdd_8(vdd_7), 
      .vdd_9(vdd_6), .gnd(gnd_7), .gnd_1(gnd_10), .gnd_10(gnd_6), 
      .gnd_1_1(gnd_9), .gnd_2(gnd), .gnd_3(gnd_8), .gnd_4(gnd_1), 
      .gnd_5(gnd_1_1), .gnd_6(gnd_2), .gnd_7(gnd_3), .gnd_8(gnd_4), 
      .gnd_9(gnd_5));
  mips8_GK__regramvector_dp regramve_3(.RegWrite(regwrite), .ph2(ph2), 
      .r1a({net_323}), .r1a_1({net_327}), .r1a_2({net_331}), .r2a({net_324}), 
      .r2a_1({net_363}), .r2a_2({net_360}), .w(w[0:0]), .w_1(w_1[1:1]), 
      .w_2(w_2[2:2]), .w_3(w_3[3:3]), .w_4(w_4[4:4]), .w_5(w_5[5:5]), 
      .w_6(w_6[6:6]), .w_7(w_7[7:7]), .wa({net_378}), .wa_1({net_376}), 
      .wa_2({net_374}), .r1(r1[0:0]), .r1_1(r1_1[1:1]), .r1_2(r1_2[2:2]), 
      .r1_3(r1_3[3:3]), .r1_4(r1_4[4:4]), .r1_5(r1_5[5:5]), .r1_6(r1_6[6:6]), 
      .r1_7(r1_7[7:7]), .r2(r2[0:0]), .r2_1(r2_1[1:1]), .r2_2(r2_2[2:2]), 
      .r2_3(r2_3[3:3]), .r2_4(r2_4[4:4]), .r2_5(r2_5[5:5]), .r2_6(r2_6[6:6]), 
      .r2_7(r2_7[7:7]), .vdd(vdd_12), .vdd_1(vdd_4), .vdd_10(vdd_5), 
      .vdd_1_1(vdd), .vdd_2(vdd_1), .vdd_3(vdd_3), .vdd_4(vdd_11), 
      .vdd_5(vdd_10), .vdd_6(vdd_9), .vdd_7(vdd_8), .vdd_8(vdd_7), 
      .vdd_9(vdd_6), .gnd(gnd_7), .gnd_1(gnd_10), .gnd_10(gnd_6), 
      .gnd_1_1(gnd_9), .gnd_2(gnd), .gnd_3(gnd_8), .gnd_4(gnd_1), 
      .gnd_5(gnd_1_1), .gnd_6(gnd_2), .gnd_7(gnd_3), .gnd_8(gnd_4), 
      .gnd_9(gnd_5));
  mips8_GK__regramvector_dp regramve_4(.RegWrite(regwrite), .ph2(ph2), 
      .r1a({net_325}), .r1a_1({net_328}), .r1a_2({net_330}), .r2a({net_364}), 
      .r2a_1({net_361}), .r2a_2({net_359}), .w(w[0:0]), .w_1(w_1[1:1]), 
      .w_2(w_2[2:2]), .w_3(w_3[3:3]), .w_4(w_4[4:4]), .w_5(w_5[5:5]), 
      .w_6(w_6[6:6]), .w_7(w_7[7:7]), .wa({net_377}), .wa_1({net_375}), 
      .wa_2({net_373}), .r1(r1[0:0]), .r1_1(r1_1[1:1]), .r1_2(r1_2[2:2]), 
      .r1_3(r1_3[3:3]), .r1_4(r1_4[4:4]), .r1_5(r1_5[5:5]), .r1_6(r1_6[6:6]), 
      .r1_7(r1_7[7:7]), .r2(r2[0:0]), .r2_1(r2_1[1:1]), .r2_2(r2_2[2:2]), 
      .r2_3(r2_3[3:3]), .r2_4(r2_4[4:4]), .r2_5(r2_5[5:5]), .r2_6(r2_6[6:6]), 
      .r2_7(r2_7[7:7]), .vdd(vdd_12), .vdd_1(vdd_4), .vdd_10(vdd_5), 
      .vdd_1_1(vdd), .vdd_2(vdd_1), .vdd_3(vdd_3), .vdd_4(vdd_11), 
      .vdd_5(vdd_10), .vdd_6(vdd_9), .vdd_7(vdd_8), .vdd_8(vdd_7), 
      .vdd_9(vdd_6), .gnd(gnd_7), .gnd_1(gnd_10), .gnd_10(gnd_6), 
      .gnd_1_1(gnd_9), .gnd_2(gnd), .gnd_3(gnd_8), .gnd_4(gnd_1), 
      .gnd_5(gnd_1_1), .gnd_6(gnd_2), .gnd_7(gnd_3), .gnd_8(gnd_4), 
      .gnd_9(gnd_5));
  mips8_GK__regramvector_dp regramve_5(.RegWrite(regwrite), .ph2(ph2), 
      .r1a({net_323}), .r1a_1({net_328}), .r1a_2({net_330}), .r2a({net_324}), 
      .r2a_1({net_361}), .r2a_2({net_359}), .w(w[0:0]), .w_1(w_1[1:1]), 
      .w_2(w_2[2:2]), .w_3(w_3[3:3]), .w_4(w_4[4:4]), .w_5(w_5[5:5]), 
      .w_6(w_6[6:6]), .w_7(w_7[7:7]), .wa({net_378}), .wa_1({net_375}), 
      .wa_2({net_373}), .r1(r1[0:0]), .r1_1(r1_1[1:1]), .r1_2(r1_2[2:2]), 
      .r1_3(r1_3[3:3]), .r1_4(r1_4[4:4]), .r1_5(r1_5[5:5]), .r1_6(r1_6[6:6]), 
      .r1_7(r1_7[7:7]), .r2(r2[0:0]), .r2_1(r2_1[1:1]), .r2_2(r2_2[2:2]), 
      .r2_3(r2_3[3:3]), .r2_4(r2_4[4:4]), .r2_5(r2_5[5:5]), .r2_6(r2_6[6:6]), 
      .r2_7(r2_7[7:7]), .vdd(vdd_12), .vdd_1(vdd_4), .vdd_10(vdd_5), 
      .vdd_1_1(vdd), .vdd_2(vdd_1), .vdd_3(vdd_3), .vdd_4(vdd_11), 
      .vdd_5(vdd_10), .vdd_6(vdd_9), .vdd_7(vdd_8), .vdd_8(vdd_7), 
      .vdd_9(vdd_6), .gnd(gnd_7), .gnd_1(gnd_10), .gnd_10(gnd_6), 
      .gnd_1_1(gnd_9), .gnd_2(gnd), .gnd_3(gnd_8), .gnd_4(gnd_1), 
      .gnd_5(gnd_1_1), .gnd_6(gnd_2), .gnd_7(gnd_3), .gnd_8(gnd_4), 
      .gnd_9(gnd_5));
  mips8_GK__regramvector_dp regramve_6(.RegWrite(regwrite), .ph2(ph2), 
      .r1a({net_325}), .r1a_1({net_327}), .r1a_2({net_330}), .r2a({net_364}), 
      .r2a_1({net_363}), .r2a_2({net_359}), .w(w[0:0]), .w_1(w_1[1:1]), 
      .w_2(w_2[2:2]), .w_3(w_3[3:3]), .w_4(w_4[4:4]), .w_5(w_5[5:5]), 
      .w_6(w_6[6:6]), .w_7(w_7[7:7]), .wa({net_377}), .wa_1({net_376}), 
      .wa_2({net_373}), .r1(r1[0:0]), .r1_1(r1_1[1:1]), .r1_2(r1_2[2:2]), 
      .r1_3(r1_3[3:3]), .r1_4(r1_4[4:4]), .r1_5(r1_5[5:5]), .r1_6(r1_6[6:6]), 
      .r1_7(r1_7[7:7]), .r2(r2[0:0]), .r2_1(r2_1[1:1]), .r2_2(r2_2[2:2]), 
      .r2_3(r2_3[3:3]), .r2_4(r2_4[4:4]), .r2_5(r2_5[5:5]), .r2_6(r2_6[6:6]), 
      .r2_7(r2_7[7:7]), .vdd(vdd_12), .vdd_1(vdd_4), .vdd_10(vdd_5), 
      .vdd_1_1(vdd), .vdd_2(vdd_1), .vdd_3(vdd_3), .vdd_4(vdd_11), 
      .vdd_5(vdd_10), .vdd_6(vdd_9), .vdd_7(vdd_8), .vdd_8(vdd_7), 
      .vdd_9(vdd_6), .gnd(gnd_7), .gnd_1(gnd_10), .gnd_10(gnd_6), 
      .gnd_1_1(gnd_9), .gnd_2(gnd), .gnd_3(gnd_8), .gnd_4(gnd_1), 
      .gnd_5(gnd_1_1), .gnd_6(gnd_2), .gnd_7(gnd_3), .gnd_8(gnd_4), 
      .gnd_9(gnd_5));
  mips8_GK__regramvector_dp regramve_7(.RegWrite(regwrite), .ph2(ph2), 
      .r1a({net_323}), .r1a_1({net_327}), .r1a_2({net_330}), .r2a({net_324}), 
      .r2a_1({net_363}), .r2a_2({net_359}), .w(w[0:0]), .w_1(w_1[1:1]), 
      .w_2(w_2[2:2]), .w_3(w_3[3:3]), .w_4(w_4[4:4]), .w_5(w_5[5:5]), 
      .w_6(w_6[6:6]), .w_7(w_7[7:7]), .wa({net_378}), .wa_1({net_376}), 
      .wa_2({net_373}), .r1(r1[0:0]), .r1_1(r1_1[1:1]), .r1_2(r1_2[2:2]), 
      .r1_3(r1_3[3:3]), .r1_4(r1_4[4:4]), .r1_5(r1_5[5:5]), .r1_6(r1_6[6:6]), 
      .r1_7(r1_7[7:7]), .r2(r2[0:0]), .r2_1(r2_1[1:1]), .r2_2(r2_2[2:2]), 
      .r2_3(r2_3[3:3]), .r2_4(r2_4[4:4]), .r2_5(r2_5[5:5]), .r2_6(r2_6[6:6]), 
      .r2_7(r2_7[7:7]), .vdd(vdd_12), .vdd_1(vdd_4), .vdd_10(vdd_5), 
      .vdd_1_1(vdd), .vdd_2(vdd_1), .vdd_3(vdd_3), .vdd_4(vdd_11), 
      .vdd_5(vdd_10), .vdd_6(vdd_9), .vdd_7(vdd_8), .vdd_8(vdd_7), 
      .vdd_9(vdd_6), .gnd(gnd_7), .gnd_1(gnd_10), .gnd_10(gnd_6), 
      .gnd_1_1(gnd_9), .gnd_2(gnd), .gnd_3(gnd_8), .gnd_4(gnd_1), 
      .gnd_5(gnd_1_1), .gnd_6(gnd_2), .gnd_7(gnd_3), .gnd_8(gnd_4), 
      .gnd_9(gnd_5));
  mips8_GK__regramvector0_dp regramve_8(.RegWrite(regwrite), .ph2(ph2), 
      .r1a({net_325}), .r1a_1({net_328}), .r1a_2({net_331}), .r2a({net_364}), 
      .r2a_1({net_361}), .r2a_2({net_360}), .wa({net_377}), .wa_1({net_375}), 
      .wa_2({net_374}), .r1(r1[0:0]), .r1_1(r1_1[1:1]), .r1_2(r1_2[2:2]), 
      .r1_3(r1_3[3:3]), .r1_4(r1_4[4:4]), .r1_5(r1_5[5:5]), .r1_6(r1_6[6:6]), 
      .r1_7(r1_7[7:7]), .r2(r2[0:0]), .r2_1(r2_1[1:1]), .r2_2(r2_2[2:2]), 
      .r2_3(r2_3[3:3]), .r2_4(r2_4[4:4]), .r2_5(r2_5[5:5]), .r2_6(r2_6[6:6]), 
      .r2_7(r2_7[7:7]), .vdd(vdd_12), .vdd_1(vdd_3), .vdd_1_1(vdd), 
      .vdd_2(vdd_1), .gnd(gnd_10), .gnd_1(gnd_8), .gnd_10(gnd_6), 
      .gnd_11(gnd_7), .gnd_1_1(gnd_9), .gnd_2(gnd), .gnd_4(gnd_1), 
      .gnd_5(gnd_1_1), .gnd_6(gnd_2), .gnd_7(gnd_3), .gnd_8(gnd_4), 
      .gnd_9(gnd_5));
endmodule   /* mips8_GK__regramarray_dp */

module mips8_GK__datapath(alucontrol, alucontrol_1, alucontrol_2, alusrca, 
      alusrcb, alusrcb_1, iord, irwrite, irwrite_1, irwrite_2, irwrite_3, 
      memdata, memdata_1, memdata_2, memdata_3, memdata_4, memdata_5, 
      memdata_6, memdata_7, memtoreg, pcen, pcsrc, pcsrc_1, ph1, ph2, regdst, 
      regwrite, reset, adr, adr_1, adr_2, adr_3, adr_4, adr_5, adr_6, adr_7, 
      funct, funct_1, funct_2, funct_3, funct_4, funct_5, op, op_1, op_2, op_3, 
      op_4, op_5, writedata, writedata_1, writedata_2, writedata_3, 
      writedata_4, writedata_5, writedata_6, writedata_7, zero, vdd, gnd);
  input [0:0] alucontrol;
  input [1:1] alucontrol_1;
  input [2:2] alucontrol_2;
  input alusrca;
  input [0:0] alusrcb;
  input [1:1] alusrcb_1;
  input iord;
  input [0:0] irwrite;
  input [1:1] irwrite_1;
  input [2:2] irwrite_2;
  input [3:3] irwrite_3;
  input [0:0] memdata;
  input [1:1] memdata_1;
  input [2:2] memdata_2;
  input [3:3] memdata_3;
  input [4:4] memdata_4;
  input [5:5] memdata_5;
  input [6:6] memdata_6;
  input [7:7] memdata_7;
  input memtoreg;
  input pcen;
  input [0:0] pcsrc;
  input [1:1] pcsrc_1;
  input ph1;
  input ph2;
  input regdst;
  input regwrite;
  input reset;
  output [0:0] adr;
  output [1:1] adr_1;
  output [2:2] adr_2;
  output [3:3] adr_3;
  output [4:4] adr_4;
  output [5:5] adr_5;
  output [6:6] adr_6;
  output [7:7] adr_7;
  output [0:0] funct;
  output [1:1] funct_1;
  output [2:2] funct_2;
  output [3:3] funct_3;
  output [4:4] funct_4;
  output [5:5] funct_5;
  output [0:0] op;
  output [1:1] op_1;
  output [2:2] op_2;
  output [3:3] op_3;
  output [4:4] op_4;
  output [5:5] op_5;
  output [0:0] writedata;
  output [1:1] writedata_1;
  output [2:2] writedata_2;
  output [3:3] writedata_3;
  output [4:4] writedata_4;
  output [5:5] writedata_5;
  output [6:6] writedata_6;
  output [7:7] writedata_7;
  output zero;
  input vdd;
  input gnd;

  supply1 vdd;
  supply0 gnd;
  wire net_593, net_594, plnode_10_select, plnode_11_select, plnode_12_select;
  wire plnode_13_select, plnode_14_select, plnode_15_select, plnode_16_select;
  wire plnode_17_select, plnode_18_select, plnode_19_select, plnode_1_select;
  wire plnode_20_select, plnode_21_select, plnode_22_select, plnode_23_select;
  wire plnode_24_select, plnode_25_select, plnode_26_select, plnode_27_select;
  wire plnode_28_select, plnode_29_select, plnode_2_select, plnode_30_select;
  wire plnode_31_select, plnode_32_select, plnode_33_select, plnode_34_select;
  wire plnode_35_select, plnode_36_select, plnode_37_select, plnode_38_select;
  wire plnode_39_select, plnode_3_select, plnode_40_select, plnode_41_select;
  wire plnode_42_select, plnode_43_select, plnode_44_select, plnode_45_select;
  wire plnode_46_select, plnode_47_select, plnode_48_select, plnode_49_select;
  wire plnode_4_select, plnode_50_select, plnode_51_select, plnode_52_select;
  wire plnode_53_select, plnode_54_select, plnode_55_select, plnode_5_select;
  wire plnode_6_select, plnode_7_select, plnode_8_select, plnode_9_select;
  wire [7:0] a;
  wire [7:0] aluout;
  wire [7:0] aluresult;
  wire [7:0] data;
  wire [13:11] instr;
  wire [18:16] instr_1;
  wire [23:21] instr_2;
  wire [2:0] ir1_q;
  wire [7:6] ir1_q_1;
  wire [4:3] ir2_q;
  wire [1:0] ir3_q;
  wire [7:0] nextpc;
  wire [7:0] pc;
  wire [7:0] rd1;
  wire [7:0] rd2;
  wire [7:0] srca;
  wire [7:0] srcb;
  wire [2:0] wa;
  wire [7:0] wd;

  wordlib8__mux2_1x_8 adrmux(.d0(pc[0:0]), .d0_1(pc[1:1]), .d0_2(pc[2:2]), 
      .d0_3(pc[3:3]), .d0_4(pc[4:4]), .d0_5(pc[5:5]), .d0_6(pc[6:6]), 
      .d0_7(pc[7:7]), .d1(aluout[0:0]), .d1_1(aluout[1:1]), .d1_2(aluout[2:2]), 
      .d1_3(aluout[3:3]), .d1_4(aluout[4:4]), .d1_5(aluout[5:5]), 
      .d1_6(aluout[6:6]), .d1_7(aluout[7:7]), .s(iord), .y(adr[0:0]), 
      .y_1(adr_1[1:1]), .y_2(adr_2[2:2]), .y_3(adr_3[3:3]), .y_4(adr_4[4:4]), 
      .y_5(adr_5[5:5]), .y_6(adr_6[6:6]), .y_7(adr_7[7:7]), .vdd(vdd), 
      .vdd_1(vdd), .vdd_32(vdd), .vdd_33(vdd), .vdd_34(vdd), .vdd_35(vdd), 
      .vdd_36(vdd), .vdd_37(vdd), .vdd_38(vdd), .gnd(gnd), .gnd_1(gnd), 
      .gnd_32(gnd), .gnd_33(gnd), .gnd_34(gnd), .gnd_35(gnd), .gnd_36(gnd), 
      .gnd_37(gnd), .gnd_38(gnd));
  mips8_GK__alu alu_1(.a(srca[0:0]), .a_1(srca[1:1]), .a_2(srca[2:2]), 
      .a_3(srca[3:3]), .a_4(srca[4:4]), .a_5(srca[5:5]), .a_6(srca[6:6]), 
      .a_7(srca[7:7]), .alucontrol(alucontrol[0:0]), 
      .alucontrol_1(alucontrol_1[1:1]), .alucontrol_2(alucontrol_2[2:2]), 
      .b(srcb[0:0]), .b_1(srcb[1:1]), .b_2(srcb[2:2]), .b_3(srcb[3:3]), 
      .b_4(srcb[4:4]), .b_5(srcb[5:5]), .b_6(srcb[6:6]), .b_7(srcb[7:7]), 
      .result(aluresult[0:0]), .result_1(aluresult[1:1]), 
      .result_2(aluresult[2:2]), .result_3(aluresult[3:3]), 
      .result_4(aluresult[4:4]), .result_5(aluresult[5:5]), 
      .result_6(aluresult[6:6]), .result_7(aluresult[7:7]), .zero(zero), 
      .vdd(vdd), .vdd_1(vdd), .vdd_2(vdd), .vdd_3(vdd), .vdd_32(vdd), 
      .vdd_4(vdd), .vdd_40(vdd), .vdd_5(vdd), .vdd_6(vdd), .vdd_7(vdd), 
      .gnd(gnd), .gnd_1(gnd), .gnd_2(gnd), .gnd_3(gnd), .gnd_32(gnd), 
      .gnd_4(gnd), .gnd_40(gnd), .gnd_5(gnd), .gnd_6(gnd), .gnd_7(gnd));
  wordlib8__flop_1x_8 areg(.d(rd1[0:0]), .d_1(rd1[1:1]), .d_2(rd1[2:2]), 
      .d_3(rd1[3:3]), .d_4(rd1[4:4]), .d_5(rd1[5:5]), .d_6(rd1[6:6]), 
      .d_7(rd1[7:7]), .ph1(ph1), .ph2(ph2), .q(a[0:0]), .q_1(a[1:1]), 
      .q_2(a[2:2]), .q_3(a[3:3]), .q_4(a[4:4]), .q_5(a[5:5]), .q_6(a[6:6]), 
      .q_7(a[7:7]), .vdd(vdd), .vdd_1(vdd), .vdd_10(vdd), .vdd_11(vdd), 
      .vdd_12(vdd), .vdd_13(vdd), .vdd_14(vdd), .vdd_15(vdd), .vdd_9(vdd), 
      .gnd(gnd), .gnd_1(gnd), .gnd_10(gnd), .gnd_11(gnd), .gnd_12(gnd), 
      .gnd_13(gnd), .gnd_14(gnd), .gnd_15(gnd), .gnd_9(gnd));
  wordlib8__flop_1x_8 datareg(.d(memdata[0:0]), .d_1(memdata_1[1:1]), 
      .d_2(memdata_2[2:2]), .d_3(memdata_3[3:3]), .d_4(memdata_4[4:4]), 
      .d_5(memdata_5[5:5]), .d_6(memdata_6[6:6]), .d_7(memdata_7[7:7]), 
      .ph1(ph1), .ph2(ph2), .q(data[0:0]), .q_1(data[1:1]), .q_2(data[2:2]), 
      .q_3(data[3:3]), .q_4(data[4:4]), .q_5(data[5:5]), .q_6(data[6:6]), 
      .q_7(data[7:7]), .vdd(vdd), .vdd_1(vdd), .vdd_10(vdd), .vdd_11(vdd), 
      .vdd_12(vdd), .vdd_13(vdd), .vdd_14(vdd), .vdd_15(vdd), .vdd_9(vdd), 
      .gnd(gnd), .gnd_1(gnd), .gnd_10(gnd), .gnd_11(gnd), .gnd_12(gnd), 
      .gnd_13(gnd), .gnd_14(gnd), .gnd_15(gnd), .gnd_9(gnd));
  wordlib8__flopenr_1x_8 flopenr__0(.d(nextpc[0:0]), .d_1(nextpc[1:1]), 
      .d_2(nextpc[2:2]), .d_3(nextpc[3:3]), .d_4(nextpc[4:4]), 
      .d_5(nextpc[5:5]), .d_6(nextpc[6:6]), .d_7(nextpc[7:7]), .en(pcen), 
      .ph1(ph1), .ph2(ph2), .reset(reset), .q(pc[0:0]), .q_1(pc[1:1]), 
      .q_2(pc[2:2]), .q_3(pc[3:3]), .q_4(pc[4:4]), .q_5(pc[5:5]), 
      .q_6(pc[6:6]), .q_7(pc[7:7]), .vdd(vdd), .vdd_1(vdd), .vdd_32(vdd), 
      .vdd_33(vdd), .vdd_34(vdd), .vdd_35(vdd), .vdd_36(vdd), .vdd_37(vdd), 
      .vdd_38(vdd), .gnd(gnd), .gnd_1(gnd), .gnd_32(gnd), .gnd_33(gnd), 
      .gnd_34(gnd), .gnd_35(gnd), .gnd_36(gnd), .gnd_37(gnd), .gnd_38(gnd));
  wordlib8__flopen_1x_8 ir0(.d(memdata[0:0]), .d_1(memdata_1[1:1]), 
      .d_2(memdata_2[2:2]), .d_3(memdata_3[3:3]), .d_4(memdata_4[4:4]), 
      .d_5(memdata_5[5:5]), .d_6(memdata_6[6:6]), .d_7(memdata_7[7:7]), 
      .en(irwrite[0]), .ph1(ph1), .ph2(ph2), .q(funct[0:0]), 
      .q_1(funct_1[1:1]), .q_2(funct_2[2:2]), .q_3(funct_3[3:3]), 
      .q_4(funct_4[4:4]), .q_5(funct_5[5:5]), .q_6({net_593}), .q_7({net_594}), 
      .vdd(vdd), .vdd_1(vdd), .vdd_1_1(vdd), .vdd_2(vdd), .vdd_3(vdd), 
      .vdd_4(vdd), .vdd_5(vdd), .vdd_6(vdd), .vdd_7(vdd), .gnd(gnd), 
      .gnd_1(gnd), .gnd_1_1(gnd), .gnd_2(gnd), .gnd_3(gnd), .gnd_4(gnd), 
      .gnd_5(gnd), .gnd_6(gnd), .gnd_7(gnd));
  wordlib8__flopen_1x_8 ir1(.d(memdata[0:0]), .d_1(memdata_1[1:1]), 
      .d_2(memdata_2[2:2]), .d_3(memdata_3[3:3]), .d_4(memdata_4[4:4]), 
      .d_5(memdata_5[5:5]), .d_6(memdata_6[6:6]), .d_7(memdata_7[7:7]), 
      .en(irwrite_1[1]), .ph1(ph1), .ph2(ph2), .q(ir1_q[0:0]), 
      .q_1(ir1_q[1:1]), .q_2(ir1_q[2:2]), .q_3(instr[11:11]), 
      .q_4(instr[12:12]), .q_5(instr[13:13]), .q_6(ir1_q_1[6:6]), 
      .q_7(ir1_q_1[7:7]), .vdd(vdd), .vdd_1(vdd), .vdd_1_1(vdd), .vdd_2(vdd), 
      .vdd_3(vdd), .vdd_4(vdd), .vdd_5(vdd), .vdd_6(vdd), .vdd_7(vdd), 
      .gnd(gnd), .gnd_1(gnd), .gnd_1_1(gnd), .gnd_2(gnd), .gnd_3(gnd), 
      .gnd_4(gnd), .gnd_5(gnd), .gnd_6(gnd), .gnd_7(gnd));
  wordlib8__flopen_1x_8 ir2(.d(memdata[0:0]), .d_1(memdata_1[1:1]), 
      .d_2(memdata_2[2:2]), .d_3(memdata_3[3:3]), .d_4(memdata_4[4:4]), 
      .d_5(memdata_5[5:5]), .d_6(memdata_6[6:6]), .d_7(memdata_7[7:7]), 
      .en(irwrite_2[2]), .ph1(ph1), .ph2(ph2), .q(instr_1[16:16]), 
      .q_1(instr_1[17:17]), .q_2(instr_1[18:18]), .q_3(ir2_q[3:3]), 
      .q_4(ir2_q[4:4]), .q_5(instr_2[21:21]), .q_6(instr_2[22:22]), 
      .q_7(instr_2[23:23]), .vdd(vdd), .vdd_1(vdd), .vdd_1_1(vdd), .vdd_2(vdd), 
      .vdd_3(vdd), .vdd_4(vdd), .vdd_5(vdd), .vdd_6(vdd), .vdd_7(vdd), 
      .gnd(gnd), .gnd_1(gnd), .gnd_1_1(gnd), .gnd_2(gnd), .gnd_3(gnd), 
      .gnd_4(gnd), .gnd_5(gnd), .gnd_6(gnd), .gnd_7(gnd));
  wordlib8__flopen_1x_8 ir3(.d(memdata[0:0]), .d_1(memdata_1[1:1]), 
      .d_2(memdata_2[2:2]), .d_3(memdata_3[3:3]), .d_4(memdata_4[4:4]), 
      .d_5(memdata_5[5:5]), .d_6(memdata_6[6:6]), .d_7(memdata_7[7:7]), 
      .en(irwrite_3[3]), .ph1(ph1), .ph2(ph2), .q(ir3_q[0:0]), 
      .q_1(ir3_q[1:1]), .q_2(op[0:0]), .q_3(op_1[1:1]), .q_4(op_2[2:2]), 
      .q_5(op_3[3:3]), .q_6(op_4[4:4]), .q_7(op_5[5:5]), .vdd(vdd), 
      .vdd_1(vdd), .vdd_1_1(vdd), .vdd_2(vdd), .vdd_3(vdd), .vdd_4(vdd), 
      .vdd_5(vdd), .vdd_6(vdd), .vdd_7(vdd), .gnd(gnd), .gnd_1(gnd), 
      .gnd_1_1(gnd), .gnd_2(gnd), .gnd_3(gnd), .gnd_4(gnd), .gnd_5(gnd), 
      .gnd_6(gnd), .gnd_7(gnd));
  muddlib07__mux2_c_1x mux2_c_1_0(.d0(instr_1[16]), .d1(instr[11]), .s(regdst), 
      .y(wa[0]), .vdd(vdd), .gnd(gnd));
  muddlib07__mux2_c_1x mux2_c_1_1(.d0(instr_1[17]), .d1(instr[12]), .s(regdst), 
      .y(wa[1]), .vdd(vdd), .gnd(gnd));
  muddlib07__mux2_c_1x mux2_c_1_2(.d0(instr_1[18]), .d1(instr[13]), .s(regdst), 
      .y(wa[2]), .vdd(vdd), .gnd(gnd));
  wordlib8__mux3_1x_8 pcmux(.d0(aluresult[0:0]), .d0_1(aluresult[1:1]), 
      .d0_2(aluresult[2:2]), .d0_3(aluresult[3:3]), .d0_4(aluresult[4:4]), 
      .d0_5(aluresult[5:5]), .d0_6(aluresult[6:6]), .d0_7(aluresult[7:7]), 
      .d1(aluout[0:0]), .d1_1(aluout[1:1]), .d1_2(aluout[2:2]), 
      .d1_3(aluout[3:3]), .d1_4(aluout[4:4]), .d1_5(aluout[5:5]), 
      .d1_6(aluout[6:6]), .d1_7(aluout[7:7]), .d2({gnd}), .d2_1({gnd}), 
      .d2_2(funct[0:0]), .d2_3(funct_1[1:1]), .d2_4(funct_2[2:2]), 
      .d2_5(funct_3[3:3]), .d2_6(funct_4[4:4]), .d2_7(funct_5[5:5]), 
      .s0(pcsrc[0]), .s1(pcsrc_1[1]), .y(nextpc[0:0]), .y_1(nextpc[1:1]), 
      .y_2(nextpc[2:2]), .y_3(nextpc[3:3]), .y_4(nextpc[4:4]), 
      .y_5(nextpc[5:5]), .y_6(nextpc[6:6]), .y_7(nextpc[7:7]), .vdd(vdd), 
      .vdd_1(vdd), .vdd_32(vdd), .vdd_33(vdd), .vdd_34(vdd), .vdd_35(vdd), 
      .vdd_36(vdd), .vdd_37(vdd), .vdd_38(vdd), .gnd(gnd), .gnd_1(gnd), 
      .gnd_32(gnd), .gnd_33(gnd), .gnd_34(gnd), .gnd_35(gnd), .gnd_36(gnd), 
      .gnd_37(gnd), .gnd_38(gnd));
  wordlib8__flop_1x_8 resreg(.d(aluresult[0:0]), .d_1(aluresult[1:1]), 
      .d_2(aluresult[2:2]), .d_3(aluresult[3:3]), .d_4(aluresult[4:4]), 
      .d_5(aluresult[5:5]), .d_6(aluresult[6:6]), .d_7(aluresult[7:7]), 
      .ph1(ph1), .ph2(ph2), .q(aluout[0:0]), .q_1(aluout[1:1]), 
      .q_2(aluout[2:2]), .q_3(aluout[3:3]), .q_4(aluout[4:4]), 
      .q_5(aluout[5:5]), .q_6(aluout[6:6]), .q_7(aluout[7:7]), .vdd(vdd), 
      .vdd_1(vdd), .vdd_10(vdd), .vdd_11(vdd), .vdd_12(vdd), .vdd_13(vdd), 
      .vdd_14(vdd), .vdd_15(vdd), .vdd_9(vdd), .gnd(gnd), .gnd_1(gnd), 
      .gnd_10(gnd), .gnd_11(gnd), .gnd_12(gnd), .gnd_13(gnd), .gnd_14(gnd), 
      .gnd_15(gnd), .gnd_9(gnd));
  mips8_GK__regramarray_dp rf(.ph2(ph2), .ra1(instr_2[21:21]), 
      .ra1_1(instr_2[22:22]), .ra1_2(instr_2[23:23]), .ra2(instr_1[16:16]), 
      .ra2_1(instr_1[17:17]), .ra2_2(instr_1[18:18]), .regwrite(regwrite), 
      .w(wd[0:0]), .w_1(wd[1:1]), .w_2(wd[2:2]), .w_3(wd[3:3]), .w_4(wd[4:4]), 
      .w_5(wd[5:5]), .w_6(wd[6:6]), .w_7(wd[7:7]), .wa(wa[0:0]), 
      .wa_1(wa[1:1]), .wa_2(wa[2:2]), .r1(rd1[0:0]), .r1_1(rd1[1:1]), 
      .r1_2(rd1[2:2]), .r1_3(rd1[3:3]), .r1_4(rd1[4:4]), .r1_5(rd1[5:5]), 
      .r1_6(rd1[6:6]), .r1_7(rd1[7:7]), .r2(rd2[0:0]), .r2_1(rd2[1:1]), 
      .r2_2(rd2[2:2]), .r2_3(rd2[3:3]), .r2_4(rd2[4:4]), .r2_5(rd2[5:5]), 
      .r2_6(rd2[6:6]), .r2_7(rd2[7:7]), .vdd(vdd), .vdd_1(vdd), .vdd_10(vdd), 
      .vdd_11(vdd), .vdd_12(vdd), .vdd_3(vdd), .vdd_4(vdd), .vdd_5(vdd), 
      .vdd_6(vdd), .vdd_7(vdd), .vdd_8(vdd), .vdd_9(vdd), .gnd(gnd), 
      .gnd_1(gnd), .gnd_10(gnd), .gnd_1_1(gnd), .gnd_2(gnd), .gnd_3(gnd), 
      .gnd_4(gnd), .gnd_5(gnd), .gnd_6(gnd), .gnd_7(gnd), .gnd_8(gnd), 
      .gnd_9(gnd));
  wordlib8__mux2_1x_8 src1mux(.d0(pc[0:0]), .d0_1(pc[1:1]), .d0_2(pc[2:2]), 
      .d0_3(pc[3:3]), .d0_4(pc[4:4]), .d0_5(pc[5:5]), .d0_6(pc[6:6]), 
      .d0_7(pc[7:7]), .d1(a[0:0]), .d1_1(a[1:1]), .d1_2(a[2:2]), .d1_3(a[3:3]), 
      .d1_4(a[4:4]), .d1_5(a[5:5]), .d1_6(a[6:6]), .d1_7(a[7:7]), .s(alusrca), 
      .y(srca[0:0]), .y_1(srca[1:1]), .y_2(srca[2:2]), .y_3(srca[3:3]), 
      .y_4(srca[4:4]), .y_5(srca[5:5]), .y_6(srca[6:6]), .y_7(srca[7:7]), 
      .vdd(vdd), .vdd_1(vdd), .vdd_32(vdd), .vdd_33(vdd), .vdd_34(vdd), 
      .vdd_35(vdd), .vdd_36(vdd), .vdd_37(vdd), .vdd_38(vdd), .gnd(gnd), 
      .gnd_1(gnd), .gnd_32(gnd), .gnd_33(gnd), .gnd_34(gnd), .gnd_35(gnd), 
      .gnd_36(gnd), .gnd_37(gnd), .gnd_38(gnd));
  wordlib8__mux4_1x_8 src2mux(.d0(writedata[0:0]), .d0_1(writedata_1[1:1]), 
      .d0_2(writedata_2[2:2]), .d0_3(writedata_3[3:3]), 
      .d0_4(writedata_4[4:4]), .d0_5(writedata_5[5:5]), 
      .d0_6(writedata_6[6:6]), .d0_7(writedata_7[7:7]), .d1({vdd}), 
      .d1_1({gnd}), .d1_2({gnd}), .d1_3({gnd}), .d1_4({gnd}), .d1_5({gnd}), 
      .d1_6({gnd}), .d1_7({gnd}), .d2(funct[0:0]), .d2_1(funct_1[1:1]), 
      .d2_2(funct_2[2:2]), .d2_3(funct_3[3:3]), .d2_4(funct_4[4:4]), 
      .d2_5(funct_5[5:5]), .d2_6({net_593}), .d2_7({net_594}), .d3({gnd}), 
      .d3_1({gnd}), .d3_2(funct[0:0]), .d3_3(funct_1[1:1]), 
      .d3_4(funct_2[2:2]), .d3_5(funct_3[3:3]), .d3_6(funct_4[4:4]), 
      .d3_7(funct_5[5:5]), .s0(alusrcb[0]), .s1(alusrcb_1[1]), .y(srcb[0:0]), 
      .y_1(srcb[1:1]), .y_2(srcb[2:2]), .y_3(srcb[3:3]), .y_4(srcb[4:4]), 
      .y_5(srcb[5:5]), .y_6(srcb[6:6]), .y_7(srcb[7:7]), .vdd(vdd), 
      .vdd_1(vdd), .vdd_2(vdd), .vdd_34(vdd), .vdd_35(vdd), .vdd_36(vdd), 
      .vdd_37(vdd), .vdd_38(vdd), .vdd_39(vdd), .gnd(gnd), .gnd_1(gnd), 
      .gnd_2(gnd), .gnd_34(gnd), .gnd_35(gnd), .gnd_36(gnd), .gnd_37(gnd), 
      .gnd_38(gnd), .gnd_39(gnd));
  wordlib8__mux2_1x_8 wdmux(.d0(aluout[0:0]), .d0_1(aluout[1:1]), 
      .d0_2(aluout[2:2]), .d0_3(aluout[3:3]), .d0_4(aluout[4:4]), 
      .d0_5(aluout[5:5]), .d0_6(aluout[6:6]), .d0_7(aluout[7:7]), 
      .d1(data[0:0]), .d1_1(data[1:1]), .d1_2(data[2:2]), .d1_3(data[3:3]), 
      .d1_4(data[4:4]), .d1_5(data[5:5]), .d1_6(data[6:6]), .d1_7(data[7:7]), 
      .s(memtoreg), .y(wd[0:0]), .y_1(wd[1:1]), .y_2(wd[2:2]), .y_3(wd[3:3]), 
      .y_4(wd[4:4]), .y_5(wd[5:5]), .y_6(wd[6:6]), .y_7(wd[7:7]), .vdd(vdd), 
      .vdd_1(vdd), .vdd_32(vdd), .vdd_33(vdd), .vdd_34(vdd), .vdd_35(vdd), 
      .vdd_36(vdd), .vdd_37(vdd), .vdd_38(vdd), .gnd(gnd), .gnd_1(gnd), 
      .gnd_32(gnd), .gnd_33(gnd), .gnd_34(gnd), .gnd_35(gnd), .gnd_36(gnd), 
      .gnd_37(gnd), .gnd_38(gnd));
  wordlib8__flop_1x_8 wrdreg(.d(rd2[0:0]), .d_1(rd2[1:1]), .d_2(rd2[2:2]), 
      .d_3(rd2[3:3]), .d_4(rd2[4:4]), .d_5(rd2[5:5]), .d_6(rd2[6:6]), 
      .d_7(rd2[7:7]), .ph1(ph1), .ph2(ph2), .q(writedata[0:0]), 
      .q_1(writedata_1[1:1]), .q_2(writedata_2[2:2]), .q_3(writedata_3[3:3]), 
      .q_4(writedata_4[4:4]), .q_5(writedata_5[5:5]), .q_6(writedata_6[6:6]), 
      .q_7(writedata_7[7:7]), .vdd(vdd), .vdd_1(vdd), .vdd_10(vdd), 
      .vdd_11(vdd), .vdd_12(vdd), .vdd_13(vdd), .vdd_14(vdd), .vdd_15(vdd), 
      .vdd_9(vdd), .gnd(gnd), .gnd_1(gnd), .gnd_10(gnd), .gnd_11(gnd), 
      .gnd_12(gnd), .gnd_13(gnd), .gnd_14(gnd), .gnd_15(gnd), .gnd_9(gnd));
endmodule   /* mips8_GK__datapath */

module mips8_GK__mips(memdata, memdata_1, memdata_2, memdata_3, memdata_4, 
      memdata_5, memdata_6, memdata_7, ph1, ph2, reset, adr, adr_1, adr_2, 
      adr_3, adr_4, adr_5, adr_6, adr_7, memread, memwrite, writedata, 
      writedata_1, writedata_2, writedata_3, writedata_4, writedata_5, 
      writedata_6, writedata_7, vdd, gnd);
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
  output memread;
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
  wire net_10, net_11, net_12, net_13, net_14, net_15, net_16, net_17, net_18;
  wire net_19, net_2, net_20, net_21, net_22, net_23, net_24, net_25, net_26;
  wire net_27, net_28, net_29, net_3, net_4, net_5, net_6, net_7, net_8, net_9;
  wire [5:4] datapath_0_funct;

  mips8_GK__controller controll_0(.funct({net_17}), .funct_1({net_16}), 
      .funct_2({net_15}), .funct_3({net_14}), .op({net_9}), .op_1({net_8}), 
      .op_2({net_7}), .op_3({net_6}), .op_4({net_5}), .op_5({net_4}), 
      .ph1(ph1), .ph2(ph2), .reset(reset), .zero(net_26), 
      .alucontrol({net_28}), .alucontrol_1({net_29}), .alucontrol_2({net_27}), 
      .alusrca(net_22), .alusrcb({net_20}), .alusrcb_1({net_21}), .iord(net_2), 
      .irwrite({net_12}), .irwrite_1({net_11}), .irwrite_2({net_10}), 
      .irwrite_3({net_3}), .memread(memread), .memtoreg(net_13), 
      .memwrite(memwrite), .pcen(net_25), .pcsrc({net_23}), .pcsrc_1({net_24}), 
      .regdst(net_18), .regwrite(net_19), .vdd(vdd), .gnd(gnd));
  mips8_GK__datapath datapath_0(.alucontrol({net_28}), .alucontrol_1({net_29}), 
      .alucontrol_2({net_27}), .alusrca(net_22), .alusrcb({net_20}), 
      .alusrcb_1({net_21}), .iord(net_2), .irwrite({net_12}), 
      .irwrite_1({net_11}), .irwrite_2({net_10}), .irwrite_3({net_3}), 
      .memdata(memdata[0:0]), .memdata_1(memdata_1[1:1]), 
      .memdata_2(memdata_2[2:2]), .memdata_3(memdata_3[3:3]), 
      .memdata_4(memdata_4[4:4]), .memdata_5(memdata_5[5:5]), 
      .memdata_6(memdata_6[6:6]), .memdata_7(memdata_7[7:7]), 
      .memtoreg(net_13), .pcen(net_25), .pcsrc({net_23}), .pcsrc_1({net_24}), 
      .ph1(ph1), .ph2(ph2), .regdst(net_18), .regwrite(net_19), .reset(reset), 
      .adr(adr[0:0]), .adr_1(adr_1[1:1]), .adr_2(adr_2[2:2]), 
      .adr_3(adr_3[3:3]), .adr_4(adr_4[4:4]), .adr_5(adr_5[5:5]), 
      .adr_6(adr_6[6:6]), .adr_7(adr_7[7:7]), .funct({net_17}), 
      .funct_1({net_16}), .funct_2({net_15}), .funct_3({net_14}), 
      .funct_4(datapath_0_funct[4:4]), .funct_5(datapath_0_funct[5:5]), 
      .op({net_9}), .op_1({net_8}), .op_2({net_7}), .op_3({net_6}), 
      .op_4({net_5}), .op_5({net_4}), .writedata(writedata[0:0]), 
      .writedata_1(writedata_1[1:1]), .writedata_2(writedata_2[2:2]), 
      .writedata_3(writedata_3[3:3]), .writedata_4(writedata_4[4:4]), 
      .writedata_5(writedata_5[5:5]), .writedata_6(writedata_6[6:6]), 
      .writedata_7(writedata_7[7:7]), .zero(net_26), .vdd(vdd), .gnd(gnd));
endmodule   /* mips8_GK__mips */

module muddpads13_ami05__pad_corner(vdd, gnd);
  input vdd;
  input gnd;

  supply1 vdd;
  supply0 gnd;
  wire plnode_0_metal_1, plnode_1_metal_1, plnode_2_metal_1, plnode_3_metal_1;
  wire plnode_4_metal_1, plnode_5_select;

endmodule   /* muddpads13_ami05__pad_corner */

module muddpads13_ami05__pad_raw(pad, vdd, gnd);
  input pad;
  input vdd;
  input gnd;

  supply1 vdd;
  supply0 gnd;
  wire plnode_0_select, plnode_1_well, plnode_3_well, plnode_4_well;
  wire plnode_5_well, plnode_6_passivation;

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
  wire oe, oeb, plnode_0_well, plnode_1_select, plnode_2_select;
  wire plnode_3_select, plnode_4_select, plnode_5_well, plnode_6_well, pren;
  wire prep;

  tranif1 nmos_0(pren, gnd, oeb);
  tranif1 nmos_1(pren, prep, oe);
  tranif1 nmos_2(gnd, dinb, pad);
  tranif1 nmos_3(gnd, din, dinb);
  tranif1 nmos_4(gnd, pad, pren);
  tranif1 nmos_5(pren, gnd, dout);
  tranif1 nmos_6(pad, gnd, pren);
  tranif1 nmos_7(pad, gnd, pren);
  tranif1 nmos_8(gnd, pad, pren);
  tranif1 nmos_9(gnd, oeb, en);
  tranif1 nmos_10(gnd, oe, oeb);
  muddpads13_ami05__pad_raw pad_raw_0(.pad(pad), .vdd(vdd), .gnd(gnd));
  tranif0 pmos_0(vdd, prep, dout);
  tranif0 pmos_1(pren, prep, oeb);
  tranif0 pmos_2(vdd, dinb, pad);
  tranif0 pmos_3(vdd, dinb, pad);
  tranif0 pmos_4(pad, vdd, prep);
  tranif0 pmos_5(vdd, prep, oe);
  tranif0 pmos_6(vdd, pad, prep);
  tranif0 pmos_7(vdd, pad, prep);
  tranif0 pmos_8(pad, vdd, prep);
  tranif0 pmos_9(pad, vdd, prep);
  tranif0 pmos_10(vdd, pad, prep);
  tranif0 pmos_11(vdd, pad, prep);
  tranif0 pmos_12(pad, vdd, prep);
  tranif0 pmos_13(vdd, oeb, en);
  tranif0 pmos_14(vdd, oe, oeb);
  tranif0 pmos_15(vdd, din, dinb);
  tranif0 pmos_16(vdd, din, dinb);
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

module chip(memdata, memdata_1, memdata_2, memdata_3, memdata_4, memdata_5, 
      memdata_6, memdata_7, ph1, ph2, reset, adr, adr_1, adr_2, adr_3, adr_4, 
      adr_5, adr_6, adr_7, memread, memwrite, writedata, writedata_1, 
      writedata_2, writedata_3, writedata_4, writedata_5, writedata_6, 
      writedata_7, vdd, gnd);
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
  output memread;
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
  wire net_122, net_127, net_132, net_137, net_145, net_154, net_163, net_172;
  wire net_183, net_203, net_229, net_257, net_287, net_318, net_327, net_379;
  wire net_401, net_428, net_439, net_460, net_474, net_502, net_517, net_538;
  wire net_549, net_563, net_584, net_593, net_612;

  mips8_GK__mips mips_0(.memdata({net_257}), .memdata_1({net_474}), 
      .memdata_2({net_401}), .memdata_3({net_229}), .memdata_4({net_183}), 
      .memdata_5({net_203}), .memdata_6({net_379}), .memdata_7({net_502}), 
      .ph1(net_538), .ph2(net_460), .reset(net_612), .adr({net_584}), 
      .adr_1({net_549}), .adr_2({net_517}), .adr_3({net_428}), 
      .adr_4({net_318}), .adr_5({net_287}), .adr_6({net_327}), 
      .adr_7({net_439}), .memread(net_593), .memwrite(net_563), 
      .writedata({net_172}), .writedata_1({net_163}), .writedata_2({net_154}), 
      .writedata_3({net_145}), .writedata_4({net_132}), 
      .writedata_5({net_122}), .writedata_6({net_127}), 
      .writedata_7({net_137}), .vdd(vdd), .gnd(gnd));
  muddpads13_ami05__pad_corner pad_corn_0(.vdd(vdd), .gnd(gnd));
  muddpads13_ami05__pad_corner pad_corn_1(.vdd(vdd), .gnd(gnd));
  muddpads13_ami05__pad_corner pad_corn_2(.vdd(vdd), .gnd(gnd));
  muddpads13_ami05__pad_corner pad_corn_3(.vdd(vdd), .gnd(gnd));
  muddpads13_ami05__pad_dgnd pad_dgnd_0(.vdd(vdd), .gnd(gnd));
  muddpads13_ami05__pad_dgnd pad_dgnd_1(.vdd(vdd), .gnd(gnd));
  muddpads13_ami05__pad_dgnd pad_dgnd_2(.vdd(vdd), .gnd(gnd));
  muddpads13_ami05__pad_dgnd pad_dgnd_3(.vdd(vdd), .gnd(gnd));
  muddpads13_ami05__pad_dgnd pad_dgnd_4(.vdd(vdd), .gnd(gnd));
  muddpads13_ami05__pad_dgnd pad_dgnd_5(.vdd(vdd), .gnd(gnd));
  muddpads13_ami05__pad_dvdd pad_dvdd_0(.vdd(vdd), .gnd(gnd));
  muddpads13_ami05__pad_dvdd pad_dvdd_1(.vdd(vdd), .gnd(gnd));
  muddpads13_ami05__pad_dvdd pad_dvdd_2(.vdd(vdd), .gnd(gnd));
  muddpads13_ami05__pad_dvdd pad_dvdd_3(.vdd(vdd), .gnd(gnd));
  muddpads13_ami05__pad_dvdd pad_dvdd_4(.vdd(vdd), .gnd(gnd));
  muddpads13_ami05__pad_in pad_in_0(.pad(ph1), .din(net_538), .vdd(vdd), 
      .gnd(gnd));
  muddpads13_ami05__pad_in pad_in_1(.pad(ph2), .din(net_460), .vdd(vdd), 
      .gnd(gnd));
  muddpads13_ami05__pad_in pad_in_2(.pad(memdata_7[7]), .din(net_502), 
      .vdd(vdd), .gnd(gnd));
  muddpads13_ami05__pad_in pad_in_3(.pad(memdata_6[6]), .din(net_379), 
      .vdd(vdd), .gnd(gnd));
  muddpads13_ami05__pad_in pad_in_4(.pad(memdata_5[5]), .din(net_203), 
      .vdd(vdd), .gnd(gnd));
  muddpads13_ami05__pad_in pad_in_5(.pad(memdata_4[4]), .din(net_183), 
      .vdd(vdd), .gnd(gnd));
  muddpads13_ami05__pad_in pad_in_6(.pad(memdata_3[3]), .din(net_229), 
      .vdd(vdd), .gnd(gnd));
  muddpads13_ami05__pad_in pad_in_7(.pad(memdata_2[2]), .din(net_401), 
      .vdd(vdd), .gnd(gnd));
  muddpads13_ami05__pad_in pad_in_8(.pad(memdata_1[1]), .din(net_474), 
      .vdd(vdd), .gnd(gnd));
  muddpads13_ami05__pad_in pad_in_9(.pad(memdata[0]), .din(net_257), .vdd(vdd), 
      .gnd(gnd));
  muddpads13_ami05__pad_in pad_in_10(.pad(reset), .din(net_612), .vdd(vdd), 
      .gnd(gnd));
  muddpads13_ami05__pad_out pad_out_0(.dout(net_593), .pad(memread), .vdd(vdd), 
      .gnd(gnd));
  muddpads13_ami05__pad_out pad_out_1(.dout(net_563), .pad(memwrite), 
      .vdd(vdd), .gnd(gnd));
  muddpads13_ami05__pad_out pad_out_2(.dout(net_137), .pad(writedata_7[7]), 
      .vdd(vdd), .gnd(gnd));
  muddpads13_ami05__pad_out pad_out_3(.dout(net_127), .pad(writedata_6[6]), 
      .vdd(vdd), .gnd(gnd));
  muddpads13_ami05__pad_out pad_out_4(.dout(net_122), .pad(writedata_5[5]), 
      .vdd(vdd), .gnd(gnd));
  muddpads13_ami05__pad_out pad_out_5(.dout(net_132), .pad(writedata_4[4]), 
      .vdd(vdd), .gnd(gnd));
  muddpads13_ami05__pad_out pad_out_6(.dout(net_145), .pad(writedata_3[3]), 
      .vdd(vdd), .gnd(gnd));
  muddpads13_ami05__pad_out pad_out_7(.dout(net_154), .pad(writedata_2[2]), 
      .vdd(vdd), .gnd(gnd));
  muddpads13_ami05__pad_out pad_out_8(.dout(net_163), .pad(writedata_1[1]), 
      .vdd(vdd), .gnd(gnd));
  muddpads13_ami05__pad_out pad_out_9(.dout(net_172), .pad(writedata[0]), 
      .vdd(vdd), .gnd(gnd));
  muddpads13_ami05__pad_out pad_out_10(.dout(net_439), .pad(adr_7[7]), 
      .vdd(vdd), .gnd(gnd));
  muddpads13_ami05__pad_out pad_out_11(.dout(net_327), .pad(adr_6[6]), 
      .vdd(vdd), .gnd(gnd));
  muddpads13_ami05__pad_out pad_out_12(.dout(net_287), .pad(adr_5[5]), 
      .vdd(vdd), .gnd(gnd));
  muddpads13_ami05__pad_out pad_out_13(.dout(net_318), .pad(adr_4[4]), 
      .vdd(vdd), .gnd(gnd));
  muddpads13_ami05__pad_out pad_out_14(.dout(net_428), .pad(adr_3[3]), 
      .vdd(vdd), .gnd(gnd));
  muddpads13_ami05__pad_out pad_out_15(.dout(net_517), .pad(adr_2[2]), 
      .vdd(vdd), .gnd(gnd));
  muddpads13_ami05__pad_out pad_out_16(.dout(net_549), .pad(adr_1[1]), 
      .vdd(vdd), .gnd(gnd));
  muddpads13_ami05__pad_out pad_out_17(.dout(net_584), .pad(adr[0]), .vdd(vdd), 
      .gnd(gnd));
endmodule   /* chip */
