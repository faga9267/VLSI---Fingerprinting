/* Verilog for cell 'fingerprintALUM{sch}' from library 'fingerprint' */
/* Created on Fri Nov 08, 2013 13:09:59 */
/* Last revised on Fri Nov 15, 2013 18:34:29 */
/* Written on Fri Nov 15, 2013 18:34:48 by Electric VLSI Design System, version 8.06 */

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

module muddlib07__and4_1x(a, b, c, d, y);
  input a;
  input b;
  input c;
  input d;
  output y;

  supply1 vdd;
  supply0 gnd;
  wire net_1, net_45, net_46, net_9;

  tranif1 nmos_0(net_45, net_9, c);
  tranif1 nmos_1(net_9, net_1, d);
  tranif1 nmos_3(gnd, y, net_1);
  tranif1 nmos_4(net_46, net_45, b);
  tranif1 nmos_6(gnd, net_46, a);
  tranif0 pmos_0(net_1, vdd, d);
  tranif0 pmos_1(y, vdd, net_1);
  tranif0 pmos_2(net_1, vdd, c);
  tranif0 pmos_3(net_1, vdd, b);
  tranif0 pmos_4(net_1, vdd, a);
endmodule   /* muddlib07__and4_1x */

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

module muddlib07__xor2_1x(a, b, y);
  input a;
  input b;
  output y;

  supply1 vdd;
  supply0 gnd;
  wire ab, bb, net_3, net_4, net_7, net_8;

  tranif1 nmos_0(gnd, net_3, a);
  tranif1 nmos_1(gnd, net_4, ab);
  tranif1 nmos_2(net_3, y, b);
  tranif1 nmos_3(net_4, y, bb);
  tranif1 nmos_4(gnd, bb, b);
  tranif1 nmos_5(gnd, ab, a);
  tranif0 pmos_0(y, net_7, b);
  tranif0 pmos_1(net_7, vdd, ab);
  tranif0 pmos_2(y, net_8, bb);
  tranif0 pmos_3(net_8, vdd, a);
  tranif0 pmos_4(bb, vdd, b);
  tranif0 pmos_5(ab, vdd, a);
endmodule   /* muddlib07__xor2_1x */

module mojing__counter(E, ph1, ph2, reset, q);
  input E;
  input ph1;
  input ph2;
  input reset;
  output q;

  supply1 vdd;
  supply0 gnd;
  wire net_115, net_127, net_154, net_157, net_158, net_159, net_19, net_203;
  wire net_227, net_233, net_241, net_247, net_253, net_260, net_284, net_285;
  wire net_312, net_83, resbitone;
  wire [7:0] d;

  muddlib07__and2_1x and2_1x_0(.a(d[0]), .b(E), .y(net_227));
  muddlib07__and2_1x and2_1x_3(.a(d[1]), .b(net_227), .y(net_233));
  muddlib07__and2_1x and2_1x_4(.a(d[2]), .b(net_233), .y(net_241));
  muddlib07__and2_1x and2_1x_5(.a(d[3]), .b(net_241), .y(net_260));
  muddlib07__and2_1x and2_1x_6(.a(d[4]), .b(net_260), .y(net_247));
  muddlib07__and2_1x and2_1x_7(.a(d[5]), .b(net_247), .y(net_253));
  muddlib07__and2_1x and2_1x_8(.a(d[6]), .b(net_253), .y(net_203));
  muddlib07__and2_1x and2_1x_9(.a(net_284), .b(net_285), .y(q));
  muddlib07__and2_1x and2_1x_10(.a(d[0]), .b(reset), .y(net_312));
  muddlib07__and4_1x and4_1x_0(.a(d[3]), .b(d[2]), .c(d[1]), .d(d[0]), 
      .y(net_285));
  muddlib07__and4_1x and4_1x_1(.a(d[6]), .b(d[7]), .c(d[5]), .d(d[4]), 
      .y(net_284));
  muddlib07__flopr_c_1x flopr_c__0(.ph1(ph1), .ph2(ph2), .d(net_19), 
      .resetb(resbitone), .q(d[0]));
  muddlib07__flopr_c_1x flopr_c__1(.ph1(ph1), .ph2(ph2), .d(net_115), 
      .resetb(reset), .q(d[1]));
  muddlib07__flopr_c_1x flopr_c__2(.ph1(ph1), .ph2(ph2), .d(net_83), 
      .resetb(reset), .q(d[2]));
  muddlib07__flopr_c_1x flopr_c__3(.ph1(ph1), .ph2(ph2), .d(net_127), 
      .resetb(reset), .q(d[3]));
  muddlib07__flopr_c_1x flopr_c__4(.ph1(ph1), .ph2(ph2), .d(net_154), 
      .resetb(reset), .q(d[4]));
  muddlib07__flopr_c_1x flopr_c__5(.ph1(ph1), .ph2(ph2), .d(net_157), 
      .resetb(reset), .q(d[5]));
  muddlib07__flopr_c_1x flopr_c__6(.ph1(ph1), .ph2(ph2), .d(net_158), 
      .resetb(reset), .q(d[6]));
  muddlib07__flopr_c_1x flopr_c__7(.ph1(ph1), .ph2(ph2), .d(net_159), 
      .resetb(reset), .q(d[7]));
  muddlib07__or2_1x or2_1x_0(.a(reset), .b(E), .y(resbitone));
  muddlib07__xor2_1x xor2_1x_0(.a(net_312), .b(E), .y(net_19));
  muddlib07__xor2_1x xor2_1x_1(.a(d[1]), .b(net_227), .y(net_115));
  muddlib07__xor2_1x xor2_1x_2(.a(d[2]), .b(net_233), .y(net_83));
  muddlib07__xor2_1x xor2_1x_3(.a(d[3]), .b(net_241), .y(net_127));
  muddlib07__xor2_1x xor2_1x_4(.a(d[4]), .b(net_260), .y(net_154));
  muddlib07__xor2_1x xor2_1x_6(.a(d[5]), .b(net_247), .y(net_157));
  muddlib07__xor2_1x xor2_1x_7(.a(d[6]), .b(net_253), .y(net_158));
  muddlib07__xor2_1x xor2_1x_8(.a(d[7]), .b(net_203), .y(net_159));
endmodule   /* mojing__counter */

module CRC__CRC_stage1(a, b, y);
  input [15:0] a;
  input [15:0] b;
  output [15:0] y;

  supply1 vdd;
  supply0 gnd;
  muddlib07__xor2_1x xor2_1x_15_(.a(a[15]), .b(b[15]), .y(y[15]));
  muddlib07__xor2_1x xor2_1x_14_(.a(a[14]), .b(b[14]), .y(y[14]));
  muddlib07__xor2_1x xor2_1x_13_(.a(a[13]), .b(b[13]), .y(y[13]));
  muddlib07__xor2_1x xor2_1x_12_(.a(a[12]), .b(b[12]), .y(y[12]));
  muddlib07__xor2_1x xor2_1x_11_(.a(a[11]), .b(b[11]), .y(y[11]));
  muddlib07__xor2_1x xor2_1x_10_(.a(a[10]), .b(b[10]), .y(y[10]));
  muddlib07__xor2_1x xor2_1x_9_(.a(a[9]), .b(b[9]), .y(y[9]));
  muddlib07__xor2_1x xor2_1x_8_(.a(a[8]), .b(b[8]), .y(y[8]));
  muddlib07__xor2_1x xor2_1x_7_(.a(a[7]), .b(b[7]), .y(y[7]));
  muddlib07__xor2_1x xor2_1x_6_(.a(a[6]), .b(b[6]), .y(y[6]));
  muddlib07__xor2_1x xor2_1x_5_(.a(a[5]), .b(b[5]), .y(y[5]));
  muddlib07__xor2_1x xor2_1x_4_(.a(a[4]), .b(b[4]), .y(y[4]));
  muddlib07__xor2_1x xor2_1x_3_(.a(a[3]), .b(b[3]), .y(y[3]));
  muddlib07__xor2_1x xor2_1x_2_(.a(a[2]), .b(b[2]), .y(y[2]));
  muddlib07__xor2_1x xor2_1x_1_(.a(a[1]), .b(b[1]), .y(y[1]));
  muddlib07__xor2_1x xor2_1x_0_(.a(a[0]), .b(b[0]), .y(y[0]));
endmodule   /* CRC__CRC_stage1 */

module CRC__CRC_stage2(a, b, y);
  input [10:0] a;
  input [10:0] b;
  output [10:0] y;

  supply1 vdd;
  supply0 gnd;
  muddlib07__xor2_1x xor2_1x_10_(.a(a[10]), .b(b[10]), .y(y[10]));
  muddlib07__xor2_1x xor2_1x_9_(.a(a[9]), .b(b[9]), .y(y[9]));
  muddlib07__xor2_1x xor2_1x_8_(.a(a[8]), .b(b[8]), .y(y[8]));
  muddlib07__xor2_1x xor2_1x_7_(.a(a[7]), .b(b[7]), .y(y[7]));
  muddlib07__xor2_1x xor2_1x_6_(.a(a[6]), .b(b[6]), .y(y[6]));
  muddlib07__xor2_1x xor2_1x_5_(.a(a[5]), .b(b[5]), .y(y[5]));
  muddlib07__xor2_1x xor2_1x_4_(.a(a[4]), .b(b[4]), .y(y[4]));
  muddlib07__xor2_1x xor2_1x_3_(.a(a[3]), .b(b[3]), .y(y[3]));
  muddlib07__xor2_1x xor2_1x_2_(.a(a[2]), .b(b[2]), .y(y[2]));
  muddlib07__xor2_1x xor2_1x_1_(.a(a[1]), .b(b[1]), .y(y[1]));
  muddlib07__xor2_1x xor2_1x_0_(.a(a[0]), .b(b[0]), .y(y[0]));
endmodule   /* CRC__CRC_stage2 */

module CRC__CRC_stage3(a, b, y);
  input [3:0] a;
  input [3:0] b;
  output [3:0] y;

  supply1 vdd;
  supply0 gnd;
  muddlib07__xor2_1x xor2_1x_3_(.a(a[3]), .b(b[3]), .y(y[3]));
  muddlib07__xor2_1x xor2_1x_2_(.a(a[2]), .b(b[2]), .y(y[2]));
  muddlib07__xor2_1x xor2_1x_1_(.a(a[1]), .b(b[1]), .y(y[1]));
  muddlib07__xor2_1x xor2_1x_0_(.a(a[0]), .b(b[0]), .y(y[0]));
endmodule   /* CRC__CRC_stage3 */

module muddlib07__xor3_1x(a, b, c, y);
  input a;
  input b;
  input c;
  output y;

  supply1 vdd;
  supply0 gnd;
  wire ab, bb, cb, n1, n2, n3, n4, p1, p2, p3, p4, yb;

  tranif1 nmos_0(gnd, n1, a);
  tranif1 nmos_1(n1, n4, bb);
  tranif1 nmos_2(n4, yb, cb);
  tranif1 nmos_3(gnd, n2, ab);
  tranif1 nmos_4(n1, n3, b);
  tranif1 nmos_5(n2, n3, bb);
  tranif1 nmos_6(n2, n4, b);
  tranif1 nmos_7(n3, yb, c);
  tranif1 nmos_9(gnd, y, yb);
  tranif1 nmos_10(gnd, cb, c);
  tranif1 nmos_11(gnd, bb, b);
  tranif1 nmos_12(gnd, ab, a);
  tranif0 pmos_0(yb, p4, cb);
  tranif0 pmos_1(yb, p3, c);
  tranif0 pmos_2(p3, p2, bb);
  tranif0 pmos_3(p4, p1, bb);
  tranif0 pmos_4(p1, vdd, a);
  tranif0 pmos_5(p2, vdd, ab);
  tranif0 pmos_6(p4, p2, b);
  tranif0 pmos_7(p3, p1, b);
  tranif0 pmos_8(y, vdd, yb);
  tranif0 pmos_9(cb, vdd, c);
  tranif0 pmos_10(bb, vdd, b);
  tranif0 pmos_11(ab, vdd, a);
endmodule   /* muddlib07__xor3_1x */

module CRC__xor_4(a1, y);
  input [0:3] a1;
  output y;

  supply1 vdd;
  supply0 gnd;
  wire net_0, net_3;

  muddlib07__xor2_1x xor2_1x_0(.a(a1[0]), .b(a1[1]), .y(net_0));
  muddlib07__xor2_1x xor2_1x_1(.a(a1[2]), .b(a1[3]), .y(net_3));
  muddlib07__xor2_1x xor2_1x_2(.a(net_0), .b(net_3), .y(y));
endmodule   /* CRC__xor_4 */

module CRC__xor_5(a1, y);
  input [0:4] a1;
  output y;

  supply1 vdd;
  supply0 gnd;
  wire net_0, net_3;

  muddlib07__xor2_1x xor2_1x_0(.a(a1[0]), .b(a1[1]), .y(net_3));
  muddlib07__xor2_1x xor2_1x_1(.a(net_3), .b(net_0), .y(y));
  muddlib07__xor3_1x xor3_1x_0(.a(a1[2]), .b(a1[3]), .c(a1[4]), .y(net_0));
endmodule   /* CRC__xor_5 */

module CRC__xor_6(a1, y);
  input [0:5] a1;
  output y;

  supply1 vdd;
  supply0 gnd;
  wire net_0, net_3;

  muddlib07__xor2_1x xor2_1x_0(.a(net_3), .b(net_0), .y(y));
  muddlib07__xor3_1x xor3_1x_0(.a(a1[3]), .b(a1[4]), .c(a1[5]), .y(net_0));
  muddlib07__xor3_1x xor3_1x_1(.a(a1[0]), .b(a1[1]), .c(a1[2]), .y(net_3));
endmodule   /* CRC__xor_6 */

module CRC__CRC_stage_output(a0, a1, a10, a11, a12, a13, a14, a15, a2, a3, a4, 
      a5, a6, a7, a8, a9, y);
  input [0:5] a0;
  input [0:5] a1;
  input [0:3] a10;
  input [0:3] a11;
  input [0:3] a12;
  input [0:4] a13;
  input [0:3] a14;
  input [0:4] a15;
  input [0:3] a2;
  input [0:4] a3;
  input [0:3] a4;
  input [0:4] a5;
  input [0:2] a6;
  input [0:3] a7;
  input [0:3] a8;
  input [0:3] a9;
  output [15:0] y;

  supply1 vdd;
  supply0 gnd;
  wire [5:14] a13_1;

  muddlib07__xor3_1x xor3_1x_9(.a(a6[0]), .b(a6[1]), .c(a6[2]), .y(y[6]));
  CRC__xor_4 xor_4_0_(.a1(a2[0:3]), .y(y[2]));
  CRC__xor_4 xor_4_1_(.a1(a4[0:3]), .y(y[4]));
  CRC__xor_4 xor_4_2_(.a1(a7[0:3]), .y(y[7]));
  CRC__xor_4 xor_4_3_(.a1(a8[0:3]), .y(y[8]));
  CRC__xor_4 xor_4_4_(.a1(a9[0:3]), .y(y[9]));
  CRC__xor_4 xor_4_5_(.a1(a10[0:3]), .y(y[10]));
  CRC__xor_4 xor_4_6_(.a1(a11[0:3]), .y(y[11]));
  CRC__xor_4 xor_4_7_(.a1(a12[0:3]), .y(y[12]));
  CRC__xor_4 xor_4_8_(.a1(a14[0:3]), .y(y[14]));
  CRC__xor_5 xor_5_0_(.a1(a3[0:4]), .y(y[3]));
  CRC__xor_5 xor_5_1_(.a1(a5[0:4]), .y(y[5]));
  CRC__xor_5 xor_5_2_(.a1(a13[0:4]), .y(y[13]));
  CRC__xor_5 xor_5_3_(.a1(a15[0:4]), .y(y[15]));
  CRC__xor_6 xor_6_0_(.a1(a0[0:5]), .y(y[0]));
  CRC__xor_6 xor_6_1_(.a1(a1[0:5]), .y(y[1]));
endmodule   /* CRC__CRC_stage_output */

module CRC__crc16(CRC_old, Data, CRC_new);
  input [15:0] CRC_old;
  input [15:0] Data;
  output [15:0] CRC_new;

  supply1 vdd;
  supply0 gnd;
  wire [15:0] T;
  wire [0:10] T2;
  wire [0:3] T3;

  CRC__CRC_stage1 CRC_stag_0(.a(Data[15:0]), .b(CRC_old[15:0]), .y(T[15:0]));
  CRC__CRC_stage2 CRC_stag_1(.a({T[11], T[12], T[8], T[1], T[0], T[4], T[2], 
      T[6], T[13], T[7], T[3]}), .b({T[6], T[15], T[9], T[7], T[5], T[10], 
      T[3], T[12], T[14], T[10], T[12]}), .y({T2[0], T2[1], T2[2], T2[3], 
      T2[4], T2[5], T2[6], T2[7], T2[8], T2[9], T2[10]}));
  CRC__CRC_stage3 CRC_stag_2(.a({T2[3], T2[4], T2[2], T2[5]}), .b({T2[6], 
      T2[0], T2[8], T2[1]}), .y({T3[0], T3[1], T3[2], T3[3]}));
  CRC__CRC_stage_output CRC_stag_3(.a0({T2[6], T[6], T[0], T2[2], T2[9], 
      T[13]}), .a1({T2[0], T[0], T[1], T2[8], T[2], T[4]}), .a10({T3[1], 
      T2[10], T3[2], T2[9]}), .a11({T3[2], T2[0], T3[3], T2[3]}), .a12({T3[1], 
      T[3], T2[1], T[14]}), .a13({T3[3], T[0], T2[2], T2[6], T[1]}), 
      .a14({T3[1], T[4], T2[3], T[8]}), .a15({T2[3], T2[7], T2[2], T[2], 
      T[5]}), .a2({T3[0], T[5], T2[1], T[14]}), .a3({T2[5], T[0], T[7], T[9], 
      T[15]}), .a4({T3[0], T[9], T3[1], T[13]}), .a5({T3[0], T[8], T2[5], 
      T2[7], T[14]}), .a6({T3[1], T2[5], T[15]}), .a7({T2[3], T[5], T2[0], 
      T[12]}), .a8({T2[10], T[0], T[9], T[10]}), .a9({T2[5], T[1], T[11], 
      T[13]}), .y(CRC_new[15:0]));
endmodule   /* CRC__crc16 */

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

module CRC__flopenr_1x_16(ph1, ph2, d, en, reset, q);
  input ph1;
  input ph2;
  input [15:0] d;
  input en;
  input reset;
  output [15:0] q;

  supply1 vdd;
  supply0 gnd;
  wordlib8__flopenr_1x_8 flopenr__0(.d({d[15], d[13], d[11], d[9], d[7], d[5], 
      d[3], d[1]}), .en(en), .ph1(ph1), .ph2(ph2), .reset(reset), .q({q[15], 
      q[13], q[11], q[9], q[7], q[5], q[3], q[1]}));
  wordlib8__flopenr_1x_8 flopenr__1(.d({d[14], d[12], d[10], d[8], d[6], d[4], 
      d[2], d[0]}), .en(en), .ph1(ph1), .ph2(ph2), .reset(reset), .q({q[14], 
      q[12], q[10], q[8], q[6], q[4], q[2], q[0]}));
endmodule   /* CRC__flopenr_1x_16 */

module muddlib07__inv_1x(a, y);
  input a;
  output y;

  supply1 vdd;
  supply0 gnd;
  tranif1 nmos_0(gnd, y, a);
  tranif0 pmos_0(y, vdd, a);
endmodule   /* muddlib07__inv_1x */

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

module CRC__not_nor(a, b, y);
  input [15:0] a;
  input b;
  output [15:0] y;

  supply1 vdd;
  supply0 gnd;
  wire [15:0] net_1;

  muddlib07__inv_1x inv_1x_15_(.a(a[15]), .y(net_1[15]));
  muddlib07__inv_1x inv_1x_14_(.a(a[14]), .y(net_1[14]));
  muddlib07__inv_1x inv_1x_13_(.a(a[13]), .y(net_1[13]));
  muddlib07__inv_1x inv_1x_12_(.a(a[12]), .y(net_1[12]));
  muddlib07__inv_1x inv_1x_11_(.a(a[11]), .y(net_1[11]));
  muddlib07__inv_1x inv_1x_10_(.a(a[10]), .y(net_1[10]));
  muddlib07__inv_1x inv_1x_9_(.a(a[9]), .y(net_1[9]));
  muddlib07__inv_1x inv_1x_8_(.a(a[8]), .y(net_1[8]));
  muddlib07__inv_1x inv_1x_7_(.a(a[7]), .y(net_1[7]));
  muddlib07__inv_1x inv_1x_6_(.a(a[6]), .y(net_1[6]));
  muddlib07__inv_1x inv_1x_5_(.a(a[5]), .y(net_1[5]));
  muddlib07__inv_1x inv_1x_4_(.a(a[4]), .y(net_1[4]));
  muddlib07__inv_1x inv_1x_3_(.a(a[3]), .y(net_1[3]));
  muddlib07__inv_1x inv_1x_2_(.a(a[2]), .y(net_1[2]));
  muddlib07__inv_1x inv_1x_1_(.a(a[1]), .y(net_1[1]));
  muddlib07__inv_1x inv_1x_0_(.a(a[0]), .y(net_1[0]));
  muddlib07__nor2_1x nor2_1x_15_(.a(net_1[15]), .b(b), .y(y[15]));
  muddlib07__nor2_1x nor2_1x_14_(.a(net_1[14]), .b(b), .y(y[14]));
  muddlib07__nor2_1x nor2_1x_13_(.a(net_1[13]), .b(b), .y(y[13]));
  muddlib07__nor2_1x nor2_1x_12_(.a(net_1[12]), .b(b), .y(y[12]));
  muddlib07__nor2_1x nor2_1x_11_(.a(net_1[11]), .b(b), .y(y[11]));
  muddlib07__nor2_1x nor2_1x_10_(.a(net_1[10]), .b(b), .y(y[10]));
  muddlib07__nor2_1x nor2_1x_9_(.a(net_1[9]), .b(b), .y(y[9]));
  muddlib07__nor2_1x nor2_1x_8_(.a(net_1[8]), .b(b), .y(y[8]));
  muddlib07__nor2_1x nor2_1x_7_(.a(net_1[7]), .b(b), .y(y[7]));
  muddlib07__nor2_1x nor2_1x_6_(.a(net_1[6]), .b(b), .y(y[6]));
  muddlib07__nor2_1x nor2_1x_5_(.a(net_1[5]), .b(b), .y(y[5]));
  muddlib07__nor2_1x nor2_1x_4_(.a(net_1[4]), .b(b), .y(y[4]));
  muddlib07__nor2_1x nor2_1x_3_(.a(net_1[3]), .b(b), .y(y[3]));
  muddlib07__nor2_1x nor2_1x_2_(.a(net_1[2]), .b(b), .y(y[2]));
  muddlib07__nor2_1x nor2_1x_1_(.a(net_1[1]), .b(b), .y(y[1]));
  muddlib07__nor2_1x nor2_1x_0_(.a(net_1[0]), .b(b), .y(y[0]));
endmodule   /* CRC__not_nor */

module CRC__fgpnt(Data, enable, ph1, ph2, reset, CRC);
  input [15:0] Data;
  input enable;
  input ph1;
  input ph2;
  input reset;
  output [15:0] CRC;

  supply1 vdd;
  supply0 gnd;
  wire net_36, net_39;
  wire [15:0] net_16;
  wire [15:0] net_34;

  CRC__crc16 crc16_0(.CRC_old(net_34[15:0]), .Data(Data[15:0]), 
      .CRC_new(net_16[15:0]));
  CRC__flopenr_1x_16 flopenr__0(.ph1(ph1), .ph2(ph2), .d(net_16[15:0]), 
      .en(enable), .reset(net_39), .q(CRC[15:0]));
  muddlib07__inv_1x inv_1x_0(.a(reset), .y(net_36));
  muddlib07__nor2_1x nor2_1x_0(.a(net_36), .b(enable), .y(net_39));
  CRC__not_nor not_nor_0(.a(CRC[15:0]), .b(reset), .y(net_34[15:0]));
endmodule   /* CRC__fgpnt */

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

module kaushik__flopenr_1x_16(ph1, ph2, d, en, reset, q);
  input ph1;
  input ph2;
  input [15:0] d;
  input en;
  input reset;
  output [15:0] q;

  supply1 vdd;
  supply0 gnd;
  wordlib8__flopenr_1x_8 flopenr__0(.d({d[15], d[13], d[11], d[9], d[7], d[5], 
      d[3], d[1]}), .en(en), .ph1(ph1), .ph2(ph2), .reset(reset), .q({q[15], 
      q[13], q[11], q[9], q[7], q[5], q[3], q[1]}));
  wordlib8__flopenr_1x_8 flopenr__1(.d({d[14], d[12], d[10], d[8], d[6], d[4], 
      d[2], d[0]}), .en(en), .ph1(ph1), .ph2(ph2), .reset(reset), .q({q[14], 
      q[12], q[10], q[8], q[6], q[4], q[2], q[0]}));
endmodule   /* kaushik__flopenr_1x_16 */

module kaushik__my_fifo_8_16b(ph1, ph2, d, en, reset, q);
  input ph1;
  input ph2;
  input [15:0] d;
  input en;
  input reset;
  output [15:0] q;

  supply1 vdd;
  supply0 gnd;
  wire [15:0] net_1;
  wire [15:0] net_11;
  wire [15:0] net_13;
  wire [15:0] net_3;
  wire [15:0] net_5;
  wire [15:0] net_7;
  wire [15:0] net_9;

  kaushik__flopenr_1x_16 flopenr__0(.ph1(ph1), .ph2(ph2), .d(net_3[15:0]), 
      .en(en), .reset(reset), .q(q[15:0]));
  kaushik__flopenr_1x_16 flopenr__1(.ph1(ph1), .ph2(ph2), .d(net_5[15:0]), 
      .en(en), .reset(reset), .q(net_3[15:0]));
  kaushik__flopenr_1x_16 flopenr__2(.ph1(ph1), .ph2(ph2), .d(net_7[15:0]), 
      .en(en), .reset(reset), .q(net_5[15:0]));
  kaushik__flopenr_1x_16 flopenr__3(.ph1(ph1), .ph2(ph2), .d(net_9[15:0]), 
      .en(en), .reset(reset), .q(net_7[15:0]));
  kaushik__flopenr_1x_16 flopenr__4(.ph1(ph1), .ph2(ph2), .d(net_11[15:0]), 
      .en(en), .reset(reset), .q(net_9[15:0]));
  kaushik__flopenr_1x_16 flopenr__5(.ph1(ph1), .ph2(ph2), .d(net_13[15:0]), 
      .en(en), .reset(reset), .q(net_11[15:0]));
  kaushik__flopenr_1x_16 flopenr__6(.ph1(ph1), .ph2(ph2), .d(net_1[15:0]), 
      .en(en), .reset(reset), .q(net_13[15:0]));
  kaushik__flopenr_1x_16 flopenr__7(.ph1(ph1), .ph2(ph2), .d(d[15:0]), .en(en), 
      .reset(reset), .q(net_1[15:0]));
endmodule   /* kaushik__my_fifo_8_16b */

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

module mipsxinchi__ourmux(ctrl1, ctrl2, data1, data2, out);
  input ctrl1;
  input ctrl2;
  input [15:0] data1;
  input [7:0] data2;
  output [15:0] out;

  supply1 vdd;
  supply0 gnd;
  wire net_381, net_384, net_387, net_390, net_393, net_396, net_398, net_401;
  wire net_405, net_407, net_410, net_413, net_416, net_419, net_422, net_425;
  wire net_428, net_432, net_435, net_438, net_442, net_445, net_448, net_451;

  muddlib07__nand2_1x nand2_1x_0(.a(net_381), .b(vdd), .y(out[15]));
  muddlib07__nand2_1x nand2_1x_1(.a(net_384), .b(vdd), .y(out[14]));
  muddlib07__nand2_1x nand2_1x_2(.a(net_387), .b(vdd), .y(out[13]));
  muddlib07__nand2_1x nand2_1x_3(.a(net_390), .b(vdd), .y(out[12]));
  muddlib07__nand2_1x nand2_1x_4(.a(net_393), .b(vdd), .y(out[11]));
  muddlib07__nand2_1x nand2_1x_5(.a(net_396), .b(vdd), .y(out[10]));
  muddlib07__nand2_1x nand2_1x_6(.a(net_398), .b(vdd), .y(out[9]));
  muddlib07__nand2_1x nand2_1x_7(.a(net_401), .b(vdd), .y(out[8]));
  muddlib07__nand2_1x nand2_1x_8(.a(net_405), .b(net_428), .y(out[7]));
  muddlib07__nand2_1x nand2_1x_9(.a(net_407), .b(net_432), .y(out[6]));
  muddlib07__nand2_1x nand2_1x_10(.a(net_413), .b(net_438), .y(out[4]));
  muddlib07__nand2_1x nand2_1x_11(.a(net_410), .b(net_435), .y(out[5]));
  muddlib07__nand2_1x nand2_1x_12(.a(net_425), .b(net_451), .y(out[0]));
  muddlib07__nand2_1x nand2_1x_13(.a(net_422), .b(net_448), .y(out[1]));
  muddlib07__nand2_1x nand2_1x_14(.a(net_416), .b(net_442), .y(out[3]));
  muddlib07__nand2_1x nand2_1x_15(.a(net_419), .b(net_445), .y(out[2]));
  muddlib07__nand2_1x nand2_1x_16(.a(data1[15]), .b(ctrl1), .y(net_381));
  muddlib07__nand2_1x nand2_1x_17(.a(data1[14]), .b(ctrl1), .y(net_384));
  muddlib07__nand2_1x nand2_1x_18(.a(data1[13]), .b(ctrl1), .y(net_387));
  muddlib07__nand2_1x nand2_1x_19(.a(data1[12]), .b(ctrl1), .y(net_390));
  muddlib07__nand2_1x nand2_1x_20(.a(data1[11]), .b(ctrl1), .y(net_393));
  muddlib07__nand2_1x nand2_1x_21(.a(data1[10]), .b(ctrl1), .y(net_396));
  muddlib07__nand2_1x nand2_1x_22(.a(data1[9]), .b(ctrl1), .y(net_398));
  muddlib07__nand2_1x nand2_1x_23(.a(data1[8]), .b(ctrl1), .y(net_401));
  muddlib07__nand2_1x nand2_1x_24(.a(data1[7]), .b(ctrl1), .y(net_405));
  muddlib07__nand2_1x nand2_1x_25(.a(data1[6]), .b(ctrl1), .y(net_407));
  muddlib07__nand2_1x nand2_1x_26(.a(data1[5]), .b(ctrl1), .y(net_410));
  muddlib07__nand2_1x nand2_1x_27(.a(data1[4]), .b(ctrl1), .y(net_413));
  muddlib07__nand2_1x nand2_1x_28(.a(data1[3]), .b(ctrl1), .y(net_416));
  muddlib07__nand2_1x nand2_1x_29(.a(data1[2]), .b(ctrl1), .y(net_419));
  muddlib07__nand2_1x nand2_1x_30(.a(data1[1]), .b(ctrl1), .y(net_422));
  muddlib07__nand2_1x nand2_1x_31(.a(data1[0]), .b(ctrl1), .y(net_425));
  muddlib07__nand2_1x nand2_1x_32(.a(data2[6]), .b(ctrl2), .y(net_432));
  muddlib07__nand2_1x nand2_1x_33(.a(data2[7]), .b(ctrl2), .y(net_428));
  muddlib07__nand2_1x nand2_1x_34(.a(data2[4]), .b(ctrl2), .y(net_438));
  muddlib07__nand2_1x nand2_1x_35(.a(data2[5]), .b(ctrl2), .y(net_435));
  muddlib07__nand2_1x nand2_1x_36(.a(data2[2]), .b(ctrl2), .y(net_445));
  muddlib07__nand2_1x nand2_1x_37(.a(data2[3]), .b(ctrl2), .y(net_442));
  muddlib07__nand2_1x nand2_1x_38(.a(data2[0]), .b(ctrl2), .y(net_451));
  muddlib07__nand2_1x nand2_1x_39(.a(data2[1]), .b(ctrl2), .y(net_448));
endmodule   /* mipsxinchi__ourmux */

module fingerprintALUM(ph1, ph2, data1, data2, fiforeset, memtoreg, memwrite, 
      y);
  input ph1;
  input ph2;
  input [15:0] data1;
  input [7:0] data2;
  input fiforeset;
  input memtoreg;
  input memwrite;
  output [15:0] y;

  supply1 vdd;
  supply0 gnd;
  wire enable, net_108, net_84, reset;
  wire [15:0] net_62;
  wire [15:0] net_63;

  mojing__counter counter_0(.E(enable), .ph1(ph1), .ph2(ph2), .reset(net_108), 
      .q(net_84));
  CRC__fgpnt fgpnt_0(.Data(net_62[15:0]), .enable(enable), .ph1(ph1), 
      .ph2(ph2), .reset(reset), .CRC(net_63[15:0]));
  muddlib07__inv_1x inv_1x_0(.a(reset), .y(net_108));
  muddlib07__mux2_c_1x mux2_c_1_0(.d0(net_84), .d1(fiforeset), .s(fiforeset), 
      .y(reset));
  kaushik__my_fifo_8_16b my_fifo__0(.ph1(ph1), .ph2(ph2), .d(net_63[15:0]), 
      .en(reset), .reset(fiforeset), .q(y[15:0]));
  muddlib07__or2_1x or2_1x_0(.a(memwrite), .b(memtoreg), .y(enable));
  mipsxinchi__ourmux ourmux_0(.ctrl1(memwrite), .ctrl2(memtoreg), 
      .data1(data1[15:0]), .data2(data2[7:0]), .out(net_62[15:0]));
endmodule   /* fingerprintALUM */
