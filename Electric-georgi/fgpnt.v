/* Verilog for cell 'fgpnt{lay}' from library 'CRC_GK' */
/* Created on Sun Nov 03, 2013 11:25:49 */
/* Last revised on Sun Nov 03, 2013 14:26:02 */
/* Written on Sun Nov 03, 2013 14:26:55 by Electric VLSI Design System, version 8.06 */

module muddlib07__xor2_1x(a, b, y, vdd, gnd);
  input a;
  input b;
  output y;
  input vdd;
  input gnd;

  supply1 vdd;
  supply0 gnd;
  wire net_158, net_68, net_70, net_76, net_79, net_87, plno_2_well;
  wire plnode_0_well;

  tranif1 nmos_0(gnd, net_79, a);
  tranif1 nmos_1(y, net_76, net_158);
  tranif1 nmos_2(net_76, gnd, net_87);
  tranif1 nmos_3(net_79, y, b);
  tranif1 nmos_4(gnd, net_158, b);
  tranif1 nmos_5(net_87, gnd, a);
  tranif0 pmos_0(vdd, net_68, net_87);
  tranif0 pmos_1(net_68, y, b);
  tranif0 pmos_2(y, net_70, net_158);
  tranif0 pmos_4(net_70, vdd, a);
  tranif0 pmos_5(net_87, vdd, a);
  tranif0 pmos_6(vdd, net_158, b);
endmodule   /* muddlib07__xor2_1x */

module CRC_GK__CRC_stage1(a, a_1, a_10, a_11, a_12, a_13, a_14, a_15, a_2, a_3, 
      a_4, a_5, a_6, a_7, a_8, a_9, b, b_1, b_10, b_11, b_12, b_13, b_14, b_15, 
      b_2, b_3, b_4, b_5, b_6, b_7, b_8, b_9, y, y_1, y_10, y_11, y_12, y_13, 
      y_14, y_15, y_2, y_3, y_4, y_5, y_6, y_7, y_8, y_9, vdd, vdd_1, vdd_10, 
      vdd_11, vdd_12, vdd_13, vdd_14, vdd_1_1, vdd_2, vdd_3, vdd_4, vdd_5, 
      vdd_6, vdd_7, vdd_8, vdd_9, gnd, gnd_1, gnd_10, gnd_11, gnd_12, gnd_13, 
      gnd_14, gnd_1_1, gnd_2, gnd_3, gnd_4, gnd_5, gnd_6, gnd_7, gnd_8, 
      gnd_9);
  input [0:0] a;
  input [1:1] a_1;
  input [10:10] a_10;
  input [11:11] a_11;
  input [12:12] a_12;
  input [13:13] a_13;
  input [14:14] a_14;
  input [15:15] a_15;
  input [2:2] a_2;
  input [3:3] a_3;
  input [4:4] a_4;
  input [5:5] a_5;
  input [6:6] a_6;
  input [7:7] a_7;
  input [8:8] a_8;
  input [9:9] a_9;
  input [0:0] b;
  input [1:1] b_1;
  input [10:10] b_10;
  input [11:11] b_11;
  input [12:12] b_12;
  input [13:13] b_13;
  input [14:14] b_14;
  input [15:15] b_15;
  input [2:2] b_2;
  input [3:3] b_3;
  input [4:4] b_4;
  input [5:5] b_5;
  input [6:6] b_6;
  input [7:7] b_7;
  input [8:8] b_8;
  input [9:9] b_9;
  output [0:0] y;
  output [1:1] y_1;
  output [10:10] y_10;
  output [11:11] y_11;
  output [12:12] y_12;
  output [13:13] y_13;
  output [14:14] y_14;
  output [15:15] y_15;
  output [2:2] y_2;
  output [3:3] y_3;
  output [4:4] y_4;
  output [5:5] y_5;
  output [6:6] y_6;
  output [7:7] y_7;
  output [8:8] y_8;
  output [9:9] y_9;
  input vdd;
  input vdd_1;
  input vdd_10;
  input vdd_11;
  input vdd_12;
  input vdd_13;
  input vdd_14;
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
  input gnd_11;
  input gnd_12;
  input gnd_13;
  input gnd_14;
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
  muddlib07__xor2_1x xor2_1x_0_(.a(a[0]), .b(b[0]), .y(y[0]), .vdd(vdd), 
      .gnd(gnd));
  muddlib07__xor2_1x xor2_1x_1_(.a(a_1[1]), .b(b_1[1]), .y(y_1[1]), 
      .vdd(vdd_1_1), .gnd(gnd_1_1));
  muddlib07__xor2_1x xor2_1x_2_(.a(a_2[2]), .b(b_2[2]), .y(y_2[2]), 
      .vdd(vdd_2), .gnd(gnd_2));
  muddlib07__xor2_1x xor2_1x_3_(.a(a_3[3]), .b(b_3[3]), .y(y_3[3]), 
      .vdd(vdd_3), .gnd(gnd_3));
  muddlib07__xor2_1x xor2_1x_4_(.a(a_4[4]), .b(b_4[4]), .y(y_4[4]), 
      .vdd(vdd_4), .gnd(gnd_4));
  muddlib07__xor2_1x xor2_1x_5_(.a(a_5[5]), .b(b_5[5]), .y(y_5[5]), 
      .vdd(vdd_5), .gnd(gnd_5));
  muddlib07__xor2_1x xor2_1x_6_(.a(a_6[6]), .b(b_6[6]), .y(y_6[6]), 
      .vdd(vdd_6), .gnd(gnd_6));
  muddlib07__xor2_1x xor2_1x_7_(.a(a_7[7]), .b(b_7[7]), .y(y_7[7]), 
      .vdd(vdd_7), .gnd(gnd_7));
  muddlib07__xor2_1x xor2_1x_8_(.a(a_8[8]), .b(b_8[8]), .y(y_8[8]), 
      .vdd(vdd_8), .gnd(gnd_8));
  muddlib07__xor2_1x xor2_1x_9_(.a(a_9[9]), .b(b_9[9]), .y(y_9[9]), 
      .vdd(vdd_9), .gnd(gnd_9));
  muddlib07__xor2_1x xor2_1x_10_(.a(a_10[10]), .b(b_10[10]), .y(y_10[10]), 
      .vdd(vdd_10), .gnd(gnd_10));
  muddlib07__xor2_1x xor2_1x_11_(.a(a_11[11]), .b(b_11[11]), .y(y_11[11]), 
      .vdd(vdd_11), .gnd(gnd_11));
  muddlib07__xor2_1x xor2_1x_12_(.a(a_12[12]), .b(b_12[12]), .y(y_12[12]), 
      .vdd(vdd_12), .gnd(gnd_12));
  muddlib07__xor2_1x xor2_1x_13_(.a(a_13[13]), .b(b_13[13]), .y(y_13[13]), 
      .vdd(vdd_13), .gnd(gnd_13));
  muddlib07__xor2_1x xor2_1x_14_(.a(a_14[14]), .b(b_14[14]), .y(y_14[14]), 
      .vdd(vdd_14), .gnd(gnd_14));
  muddlib07__xor2_1x xor2_1x_15_(.a(a_15[15]), .b(b_15[15]), .y(y_15[15]), 
      .vdd(vdd_1), .gnd(gnd_1));
endmodule   /* CRC_GK__CRC_stage1 */

module CRC_GK__CRC_stage2(a, a_1, a_10, a_2, a_3, a_4, a_5, a_6, a_7, a_8, a_9, 
      b, b_1, b_10, b_2, b_3, b_4, b_5, b_6, b_7, b_8, b_9, y, y_1, y_10, y_2, 
      y_3, y_4, y_5, y_6, y_7, y_8, y_9, vdd, vdd_1, vdd_1_1, vdd_2, vdd_3, 
      vdd_4, vdd_5, vdd_6, vdd_7, vdd_8, vdd_9, gnd, gnd_1, gnd_1_1, gnd_2, 
      gnd_3, gnd_4, gnd_5, gnd_6, gnd_7, gnd_8, gnd_9);
  input [0:0] a;
  input [1:1] a_1;
  input [10:10] a_10;
  input [2:2] a_2;
  input [3:3] a_3;
  input [4:4] a_4;
  input [5:5] a_5;
  input [6:6] a_6;
  input [7:7] a_7;
  input [8:8] a_8;
  input [9:9] a_9;
  input [0:0] b;
  input [1:1] b_1;
  input [10:10] b_10;
  input [2:2] b_2;
  input [3:3] b_3;
  input [4:4] b_4;
  input [5:5] b_5;
  input [6:6] b_6;
  input [7:7] b_7;
  input [8:8] b_8;
  input [9:9] b_9;
  output [0:0] y;
  output [1:1] y_1;
  output [10:10] y_10;
  output [2:2] y_2;
  output [3:3] y_3;
  output [4:4] y_4;
  output [5:5] y_5;
  output [6:6] y_6;
  output [7:7] y_7;
  output [8:8] y_8;
  output [9:9] y_9;
  input vdd;
  input vdd_1;
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
  muddlib07__xor2_1x xor2_1x_0_(.a(a[0]), .b(b[0]), .y(y[0]), .vdd(vdd_1), 
      .gnd(gnd_1));
  muddlib07__xor2_1x xor2_1x_1_(.a(a_1[1]), .b(b_1[1]), .y(y_1[1]), 
      .vdd(vdd_1_1), .gnd(gnd_1_1));
  muddlib07__xor2_1x xor2_1x_2_(.a(a_2[2]), .b(b_2[2]), .y(y_2[2]), 
      .vdd(vdd_2), .gnd(gnd_2));
  muddlib07__xor2_1x xor2_1x_3_(.a(a_3[3]), .b(b_3[3]), .y(y_3[3]), 
      .vdd(vdd_3), .gnd(gnd_3));
  muddlib07__xor2_1x xor2_1x_4_(.a(a_4[4]), .b(b_4[4]), .y(y_4[4]), 
      .vdd(vdd_4), .gnd(gnd_4));
  muddlib07__xor2_1x xor2_1x_5_(.a(a_5[5]), .b(b_5[5]), .y(y_5[5]), 
      .vdd(vdd_5), .gnd(gnd_5));
  muddlib07__xor2_1x xor2_1x_6_(.a(a_6[6]), .b(b_6[6]), .y(y_6[6]), 
      .vdd(vdd_6), .gnd(gnd_6));
  muddlib07__xor2_1x xor2_1x_7_(.a(a_7[7]), .b(b_7[7]), .y(y_7[7]), 
      .vdd(vdd_7), .gnd(gnd_7));
  muddlib07__xor2_1x xor2_1x_8_(.a(a_8[8]), .b(b_8[8]), .y(y_8[8]), 
      .vdd(vdd_8), .gnd(gnd_8));
  muddlib07__xor2_1x xor2_1x_9_(.a(a_9[9]), .b(b_9[9]), .y(y_9[9]), 
      .vdd(vdd_9), .gnd(gnd_9));
  muddlib07__xor2_1x xor2_1x_10_(.a(a_10[10]), .b(b_10[10]), .y(y_10[10]), 
      .vdd(vdd), .gnd(gnd));
endmodule   /* CRC_GK__CRC_stage2 */

module CRC_GK__CRC_stage3(a, a_1, a_2, a_3, b, b_1, b_2, b_3, y, y_1, y_2, y_3, 
      vdd, vdd_1, vdd_1_1, vdd_2, gnd, gnd_1, gnd_1_1, gnd_2);
  input [0:0] a;
  input [1:1] a_1;
  input [2:2] a_2;
  input [3:3] a_3;
  input [0:0] b;
  input [1:1] b_1;
  input [2:2] b_2;
  input [3:3] b_3;
  output [0:0] y;
  output [1:1] y_1;
  output [2:2] y_2;
  output [3:3] y_3;
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
  muddlib07__xor2_1x xor2_1x_0_(.a(a[0]), .b(b[0]), .y(y[0]), .vdd(vdd_1), 
      .gnd(gnd));
  muddlib07__xor2_1x xor2_1x_1_(.a(a_1[1]), .b(b_1[1]), .y(y_1[1]), 
      .vdd(vdd_1_1), .gnd(gnd_1_1));
  muddlib07__xor2_1x xor2_1x_2_(.a(a_2[2]), .b(b_2[2]), .y(y_2[2]), 
      .vdd(vdd_2), .gnd(gnd_2));
  muddlib07__xor2_1x xor2_1x_3_(.a(a_3[3]), .b(b_3[3]), .y(y_3[3]), .vdd(vdd), 
      .gnd(gnd_1));
endmodule   /* CRC_GK__CRC_stage3 */

module muddlib07__xor3_1x(a, b, c, y, vdd, gnd);
  input a;
  input b;
  input c;
  output y;
  input vdd;
  input gnd;

  supply1 vdd;
  supply0 gnd;
  wire net_104, net_202, net_206, net_218, net_232, net_348, net_401, net_587;
  wire net_602, net_612, net_636, net_642, plnode_0_well, plnode_2_well;

  tranif1 nmos_0(net_348, gnd, c);
  tranif1 nmos_1(net_401, gnd, b);
  tranif1 nmos_2(gnd, net_104, a);
  tranif1 nmos_3(gnd, y, net_218);
  tranif1 nmos_4(gnd, net_602, a);
  tranif1 nmos_5(net_602, net_642, net_401);
  tranif1 nmos_7(net_602, net_612, b);
  tranif1 nmos_8(net_612, net_218, c);
  tranif1 nmos_9(net_218, net_642, net_348);
  tranif1 nmos_10(net_642, net_636, b);
  tranif1 nmos_12(net_612, net_636, net_401);
  tranif1 nmos_13(net_636, gnd, net_104);
  tranif0 pmos_0(net_348, vdd, c);
  tranif0 pmos_1(net_401, vdd, b);
  tranif0 pmos_2(vdd, net_104, a);
  tranif0 pmos_3(vdd, y, net_218);
  tranif0 pmos_4(vdd, net_202, a);
  tranif0 pmos_5(net_202, net_206, net_401);
  tranif0 pmos_7(net_202, net_587, b);
  tranif0 pmos_8(net_587, net_218, c);
  tranif0 pmos_9(net_218, net_206, net_348);
  tranif0 pmos_10(net_206, net_232, b);
  tranif0 pmos_12(net_587, net_232, net_401);
  tranif0 pmos_13(net_232, vdd, net_104);
endmodule   /* muddlib07__xor3_1x */

module CRC_GK__xor_4(a1, a1_1, a1_2, a1_3, y, vdd, gnd);
  input [0:0] a1;
  input [1:1] a1_1;
  input [2:2] a1_2;
  input [3:3] a1_3;
  output y;
  input vdd;
  input gnd;

  supply1 vdd;
  supply0 gnd;
  wire net_11, net_15;

  muddlib07__xor2_1x xor2_1x_1(.a(a1[0]), .b(a1_1[1]), .y(net_15), .vdd(vdd), 
      .gnd(gnd));
  muddlib07__xor2_1x xor2_1x_2(.a(a1_2[2]), .b(a1_3[3]), .y(net_11), .vdd(vdd), 
      .gnd(gnd));
  muddlib07__xor2_1x xor2_1x_4(.a(net_15), .b(net_11), .y(y), .vdd(vdd), 
      .gnd(gnd));
endmodule   /* CRC_GK__xor_4 */

module CRC_GK__xor_5(a1, a1_1, a1_2, a1_3, a1_4, y, vdd, gnd);
  input [0:0] a1;
  input [1:1] a1_1;
  input [2:2] a1_2;
  input [3:3] a1_3;
  input [4:4] a1_4;
  output y;
  input vdd;
  input gnd;

  supply1 vdd;
  supply0 gnd;
  wire net_4, net_7;

  muddlib07__xor2_1x xor2_1x_3(.a(a1[0]), .b(a1_1[1]), .y(net_4), .vdd(vdd), 
      .gnd(gnd));
  muddlib07__xor2_1x xor2_1x_5(.a(net_4), .b(net_7), .y(y), .vdd(vdd), 
      .gnd(gnd));
  muddlib07__xor3_1x xor3_1x_0(.a(a1_2[2]), .b(a1_3[3]), .c(a1_4[4]), 
      .y(net_7), .vdd(vdd), .gnd(gnd));
endmodule   /* CRC_GK__xor_5 */

module CRC_GK__xor_6(a1, a1_1, a1_2, a1_3, a1_4, a1_5, y, vdd, gnd);
  input [0:0] a1;
  input [1:1] a1_1;
  input [2:2] a1_2;
  input [3:3] a1_3;
  input [4:4] a1_4;
  input [5:5] a1_5;
  output y;
  input vdd;
  input gnd;

  supply1 vdd;
  supply0 gnd;
  wire net_4, net_7;

  muddlib07__xor2_1x xor2_1x_0(.a(net_4), .b(net_7), .y(y), .vdd(vdd), 
      .gnd(gnd));
  muddlib07__xor3_1x xor3_1x_0(.a(a1[0]), .b(a1_1[1]), .c(a1_2[2]), .y(net_4), 
      .vdd(vdd), .gnd(gnd));
  muddlib07__xor3_1x xor3_1x_1(.a(a1_3[3]), .b(a1_4[4]), .c(a1_5[5]), 
      .y(net_7), .vdd(vdd), .gnd(gnd));
endmodule   /* CRC_GK__xor_6 */

module CRC_GK__CRC_stage_output(a0, a0_1, a0_2, a0_3, a0_4, a0_5, a1, a10, 
      a10_1, a10_2, a10_3, a11, a11_1, a11_2, a11_3, a12, a12_1, a12_2, a12_3, 
      a13, a13_1, a13_2, a13_3, a13_4, a14, a14_1, a14_2, a14_3, a15, a15_1, 
      a15_2, a15_3, a15_4, a1_1, a1_2, a1_3, a1_4, a1_5, a2, a2_1, a2_2, a2_3, 
      a3, a3_1, a3_2, a3_3, a3_4, a4, a4_1, a4_2, a4_3, a5, a5_1, a5_2, a5_3, 
      a5_4, a6, a6_1, a6_2, a7, a7_1, a7_2, a7_3, a8, a8_1, a8_2, a8_3, a9, 
      a9_1, a9_2, a9_3, y, y_1, y_10, y_11, y_12, y_13, y_14, y_15, y_2, y_3, 
      y_4, y_5, y_6, y_7, y_8, y_9, vdd, vdd_1, vdd_10, vdd_11, vdd_12, vdd_13, 
      vdd_14, vdd_1_1, vdd_2, vdd_3, vdd_4, vdd_5, vdd_6, vdd_7, vdd_8, vdd_9, 
      gnd, gnd_1, gnd_10, gnd_11, gnd_12, gnd_13, gnd_14, gnd_1_1, gnd_2, 
      gnd_3, gnd_4, gnd_5, gnd_6, gnd_7, gnd_8, gnd_9);
  input [0:0] a0;
  input [1:1] a0_1;
  input [2:2] a0_2;
  input [3:3] a0_3;
  input [4:4] a0_4;
  input [5:5] a0_5;
  input [0:0] a1;
  input [0:0] a10;
  input [1:1] a10_1;
  input [2:2] a10_2;
  input [3:3] a10_3;
  input [0:0] a11;
  input [1:1] a11_1;
  input [2:2] a11_2;
  input [3:3] a11_3;
  input [0:0] a12;
  input [1:1] a12_1;
  input [2:2] a12_2;
  input [3:3] a12_3;
  input [0:0] a13;
  input [1:1] a13_1;
  input [2:2] a13_2;
  input [3:3] a13_3;
  input [4:4] a13_4;
  input [0:0] a14;
  input [1:1] a14_1;
  input [2:2] a14_2;
  input [3:3] a14_3;
  input [0:0] a15;
  input [1:1] a15_1;
  input [2:2] a15_2;
  input [3:3] a15_3;
  input [4:4] a15_4;
  input [1:1] a1_1;
  input [2:2] a1_2;
  input [3:3] a1_3;
  input [4:4] a1_4;
  input [5:5] a1_5;
  input [0:0] a2;
  input [1:1] a2_1;
  input [2:2] a2_2;
  input [3:3] a2_3;
  input [0:0] a3;
  input [1:1] a3_1;
  input [2:2] a3_2;
  input [3:3] a3_3;
  input [4:4] a3_4;
  input [0:0] a4;
  input [1:1] a4_1;
  input [2:2] a4_2;
  input [3:3] a4_3;
  input [0:0] a5;
  input [1:1] a5_1;
  input [2:2] a5_2;
  input [3:3] a5_3;
  input [4:4] a5_4;
  input [0:0] a6;
  input [1:1] a6_1;
  input [2:2] a6_2;
  input [0:0] a7;
  input [1:1] a7_1;
  input [2:2] a7_2;
  input [3:3] a7_3;
  input [0:0] a8;
  input [1:1] a8_1;
  input [2:2] a8_2;
  input [3:3] a8_3;
  input [0:0] a9;
  input [1:1] a9_1;
  input [2:2] a9_2;
  input [3:3] a9_3;
  output [0:0] y;
  output [1:1] y_1;
  output [10:10] y_10;
  output [11:11] y_11;
  output [12:12] y_12;
  output [13:13] y_13;
  output [14:14] y_14;
  output [15:15] y_15;
  output [2:2] y_2;
  output [3:3] y_3;
  output [4:4] y_4;
  output [5:5] y_5;
  output [6:6] y_6;
  output [7:7] y_7;
  output [8:8] y_8;
  output [9:9] y_9;
  input vdd;
  input vdd_1;
  input vdd_10;
  input vdd_11;
  input vdd_12;
  input vdd_13;
  input vdd_14;
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
  input gnd_11;
  input gnd_12;
  input gnd_13;
  input gnd_14;
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
  muddlib07__xor3_1x xor3_1x_0(.a(a6[0]), .b(a6_1[1]), .c(a6_2[2]), .y(y_6[6]), 
      .vdd(vdd), .gnd(gnd));
  CRC_GK__xor_4 xor_4_1(.a1(a4[0:0]), .a1_1(a4_1[1:1]), .a1_2(a4_2[2:2]), 
      .a1_3(a4_3[3:3]), .y(y_4[4]), .vdd(vdd_1_1), .gnd(gnd_1_1));
  CRC_GK__xor_4 xor_4_2(.a1(a7[0:0]), .a1_1(a7_1[1:1]), .a1_2(a7_2[2:2]), 
      .a1_3(a7_3[3:3]), .y(y_7[7]), .vdd(vdd_2), .gnd(gnd_2));
  CRC_GK__xor_4 xor_4_3(.a1(a8[0:0]), .a1_1(a8_1[1:1]), .a1_2(a8_2[2:2]), 
      .a1_3(a8_3[3:3]), .y(y_8[8]), .vdd(vdd_3), .gnd(gnd_3));
  CRC_GK__xor_4 xor_4_4(.a1(a9[0:0]), .a1_1(a9_1[1:1]), .a1_2(a9_2[2:2]), 
      .a1_3(a9_3[3:3]), .y(y_9[9]), .vdd(vdd_4), .gnd(gnd_4));
  CRC_GK__xor_4 xor_4_5(.a1(a10[0:0]), .a1_1(a10_1[1:1]), .a1_2(a10_2[2:2]), 
      .a1_3(a10_3[3:3]), .y(y_10[10]), .vdd(vdd_5), .gnd(gnd_5));
  CRC_GK__xor_4 xor_4_6(.a1(a11[0:0]), .a1_1(a11_1[1:1]), .a1_2(a11_2[2:2]), 
      .a1_3(a11_3[3:3]), .y(y_11[11]), .vdd(vdd_6), .gnd(gnd_6));
  CRC_GK__xor_4 xor_4_7(.a1(a12[0:0]), .a1_1(a12_1[1:1]), .a1_2(a12_2[2:2]), 
      .a1_3(a12_3[3:3]), .y(y_12[12]), .vdd(vdd_7), .gnd(gnd_7));
  CRC_GK__xor_4 xor_4_8(.a1(a14[0:0]), .a1_1(a14_1[1:1]), .a1_2(a14_2[2:2]), 
      .a1_3(a14_3[3:3]), .y(y_14[14]), .vdd(vdd_8), .gnd(gnd_8));
  CRC_GK__xor_4 xor_4_0_(.a1(a2[0:0]), .a1_1(a2_1[1:1]), .a1_2(a2_2[2:2]), 
      .a1_3(a2_3[3:3]), .y(y_2[2]), .vdd(vdd_9), .gnd(gnd_9));
  CRC_GK__xor_5 xor_5_0(.a1(a3[0:0]), .a1_1(a3_1[1:1]), .a1_2(a3_2[2:2]), 
      .a1_3(a3_3[3:3]), .a1_4(a3_4[4:4]), .y(y_3[3]), .vdd(vdd_10), 
      .gnd(gnd_10));
  CRC_GK__xor_5 xor_5_1(.a1(a5[0:0]), .a1_1(a5_1[1:1]), .a1_2(a5_2[2:2]), 
      .a1_3(a5_3[3:3]), .a1_4(a5_4[4:4]), .y(y_5[5]), .vdd(vdd_11), 
      .gnd(gnd_11));
  CRC_GK__xor_5 xor_5_2(.a1(a13[0:0]), .a1_1(a13_1[1:1]), .a1_2(a13_2[2:2]), 
      .a1_3(a13_3[3:3]), .a1_4(a13_4[4:4]), .y(y_13[13]), .vdd(vdd_12), 
      .gnd(gnd_12));
  CRC_GK__xor_5 xor_5_3(.a1(a15[0:0]), .a1_1(a15_1[1:1]), .a1_2(a15_2[2:2]), 
      .a1_3(a15_3[3:3]), .a1_4(a15_4[4:4]), .y(y_15[15]), .vdd(vdd_13), 
      .gnd(gnd_13));
  CRC_GK__xor_6 xor_6_0_(.a1(a0[0:0]), .a1_1(a0_1[1:1]), .a1_2(a0_2[2:2]), 
      .a1_3(a0_3[3:3]), .a1_4(a0_4[4:4]), .a1_5(a0_5[5:5]), .y(y[0]), 
      .vdd(vdd_14), .gnd(gnd_14));
  CRC_GK__xor_6 xor_6_1_(.a1(a1[0:0]), .a1_1(a1_1[1:1]), .a1_2(a1_2[2:2]), 
      .a1_3(a1_3[3:3]), .a1_4(a1_4[4:4]), .a1_5(a1_5[5:5]), .y(y_1[1]), 
      .vdd(vdd_1), .gnd(gnd_1));
endmodule   /* CRC_GK__CRC_stage_output */

module CRC_GK__crc16(CRC_old, CRC_old_1, CRC_old_10, CRC_old_11, CRC_old_12, 
      CRC_old_13, CRC_old_14, CRC_old_15, CRC_old_2, CRC_old_3, CRC_old_4, 
      CRC_old_5, CRC_old_6, CRC_old_7, CRC_old_8, CRC_old_9, Data, Data_1, 
      Data_10, Data_11, Data_12, Data_13, Data_14, Data_15, Data_2, Data_3, 
      Data_4, Data_5, Data_6, Data_7, Data_8, Data_9, CRC_new, CRC_new_1, 
      CRC_new_10, CRC_new_11, CRC_new_12, CRC_new_13, CRC_new_14, CRC_new_15, 
      CRC_new_2, CRC_new_3, CRC_new_4, CRC_new_5, CRC_new_6, CRC_new_7, 
      CRC_new_8, CRC_new_9, vdd, vdd_1, vdd_10, vdd_11, vdd_12, vdd_13, vdd_14, 
      vdd_15, vdd_2, vdd_3, vdd_4, vdd_5, vdd_6, vdd_7, vdd_8, vdd_9, gnd, 
      gnd_1, gnd_10, gnd_11, gnd_12, gnd_13, gnd_14, gnd_15, gnd_16, gnd_2, 
      gnd_3, gnd_5, gnd_6, gnd_7, gnd_8, gnd_9);
  input [0:0] CRC_old;
  input [1:1] CRC_old_1;
  input [10:10] CRC_old_10;
  input [11:11] CRC_old_11;
  input [12:12] CRC_old_12;
  input [13:13] CRC_old_13;
  input [14:14] CRC_old_14;
  input [15:15] CRC_old_15;
  input [2:2] CRC_old_2;
  input [3:3] CRC_old_3;
  input [4:4] CRC_old_4;
  input [5:5] CRC_old_5;
  input [6:6] CRC_old_6;
  input [7:7] CRC_old_7;
  input [8:8] CRC_old_8;
  input [9:9] CRC_old_9;
  input [0:0] Data;
  input [1:1] Data_1;
  input [10:10] Data_10;
  input [11:11] Data_11;
  input [12:12] Data_12;
  input [13:13] Data_13;
  input [14:14] Data_14;
  input [15:15] Data_15;
  input [2:2] Data_2;
  input [3:3] Data_3;
  input [4:4] Data_4;
  input [5:5] Data_5;
  input [6:6] Data_6;
  input [7:7] Data_7;
  input [8:8] Data_8;
  input [9:9] Data_9;
  output [0:0] CRC_new;
  output [1:1] CRC_new_1;
  output [10:10] CRC_new_10;
  output [11:11] CRC_new_11;
  output [12:12] CRC_new_12;
  output [13:13] CRC_new_13;
  output [14:14] CRC_new_14;
  output [15:15] CRC_new_15;
  output [2:2] CRC_new_2;
  output [3:3] CRC_new_3;
  output [4:4] CRC_new_4;
  output [5:5] CRC_new_5;
  output [6:6] CRC_new_6;
  output [7:7] CRC_new_7;
  output [8:8] CRC_new_8;
  output [9:9] CRC_new_9;
  input vdd;
  input vdd_1;
  input vdd_10;
  input vdd_11;
  input vdd_12;
  input vdd_13;
  input vdd_14;
  input vdd_15;
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
  input gnd_11;
  input gnd_12;
  input gnd_13;
  input gnd_14;
  input gnd_15;
  input gnd_16;
  input gnd_2;
  input gnd_3;
  input gnd_5;
  input gnd_6;
  input gnd_7;
  input gnd_8;
  input gnd_9;

  supply1 vdd;
  supply0 gnd;
  wire [15:0] T;
  wire [10:0] T2;
  wire [3:0] T3;

  CRC_GK__CRC_stage1 CRC_stag_0(.a(Data[0:0]), .a_1(Data_1[1:1]), 
      .a_10(Data_10[10:10]), .a_11(Data_11[11:11]), .a_12(Data_12[12:12]), 
      .a_13(Data_13[13:13]), .a_14(Data_14[14:14]), .a_15(Data_15[15:15]), 
      .a_2(Data_2[2:2]), .a_3(Data_3[3:3]), .a_4(Data_4[4:4]), 
      .a_5(Data_5[5:5]), .a_6(Data_6[6:6]), .a_7(Data_7[7:7]), 
      .a_8(Data_8[8:8]), .a_9(Data_9[9:9]), .b(CRC_old[0:0]), 
      .b_1(CRC_old_1[1:1]), .b_10(CRC_old_10[10:10]), .b_11(CRC_old_11[11:11]), 
      .b_12(CRC_old_12[12:12]), .b_13(CRC_old_13[13:13]), 
      .b_14(CRC_old_14[14:14]), .b_15(CRC_old_15[15:15]), .b_2(CRC_old_2[2:2]), 
      .b_3(CRC_old_3[3:3]), .b_4(CRC_old_4[4:4]), .b_5(CRC_old_5[5:5]), 
      .b_6(CRC_old_6[6:6]), .b_7(CRC_old_7[7:7]), .b_8(CRC_old_8[8:8]), 
      .b_9(CRC_old_9[9:9]), .y(T[0:0]), .y_1(T[1:1]), .y_10(T[10:10]), 
      .y_11(T[11:11]), .y_12(T[12:12]), .y_13(T[13:13]), .y_14(T[14:14]), 
      .y_15(T[15:15]), .y_2(T[2:2]), .y_3(T[3:3]), .y_4(T[4:4]), .y_5(T[5:5]), 
      .y_6(T[6:6]), .y_7(T[7:7]), .y_8(T[8:8]), .y_9(T[9:9]), .vdd(vdd), 
      .vdd_1(vdd_1), .vdd_10(vdd_11), .vdd_11(vdd_12), .vdd_12(vdd_13), 
      .vdd_13(vdd_14), .vdd_14(vdd_15), .vdd_1_1(vdd_2), .vdd_2(vdd_3), 
      .vdd_3(vdd_4), .vdd_4(vdd_5), .vdd_5(vdd_6), .vdd_6(vdd_7), 
      .vdd_7(vdd_8), .vdd_8(vdd_9), .vdd_9(vdd_10), .gnd(gnd_1), .gnd_1(gnd), 
      .gnd_10(gnd_12), .gnd_11(gnd_13), .gnd_12(gnd_14), .gnd_13(gnd_15), 
      .gnd_14(gnd_16), .gnd_1_1(gnd_3), .gnd_2(gnd_2), .gnd_3(gnd_5), 
      .gnd_4(gnd_6), .gnd_5(gnd_7), .gnd_6(gnd_8), .gnd_7(gnd_9), 
      .gnd_8(gnd_10), .gnd_9(gnd_11));
  CRC_GK__CRC_stage2 CRC_stag_1(.a(T[3:3]), .a_1(T[7:7]), .a_10(T[11:11]), 
      .a_2(T[13:13]), .a_3(T[6:6]), .a_4(T[2:2]), .a_5(T[4:4]), .a_6(T[0:0]), 
      .a_7(T[1:1]), .a_8(T[8:8]), .a_9(T[12:12]), .b(T[12:12]), .b_1(T[10:10]), 
      .b_10(T[6:6]), .b_2(T[14:14]), .b_3(T[12:12]), .b_4(T[3:3]), 
      .b_5(T[10:10]), .b_6(T[5:5]), .b_7(T[7:7]), .b_8(T[9:9]), .b_9(T[15:15]), 
      .y(T2[10:10]), .y_1(T2[9:9]), .y_10(T2[0:0]), .y_2(T2[8:8]), 
      .y_3(T2[7:7]), .y_4(T2[6:6]), .y_5(T2[5:5]), .y_6(T2[4:4]), 
      .y_7(T2[3:3]), .y_8(T2[2:2]), .y_9(T2[1:1]), .vdd(vdd_11), .vdd_1(vdd), 
      .vdd_1_1(vdd_2), .vdd_2(vdd_3), .vdd_3(vdd_4), .vdd_4(vdd_5), 
      .vdd_5(vdd_6), .vdd_6(vdd_7), .vdd_7(vdd_8), .vdd_8(vdd_9), 
      .vdd_9(vdd_10), .gnd(gnd_12), .gnd_1(gnd_1), .gnd_1_1(gnd_3), 
      .gnd_2(gnd_2), .gnd_3(gnd_5), .gnd_4(gnd_6), .gnd_5(gnd_7), 
      .gnd_6(gnd_8), .gnd_7(gnd_9), .gnd_8(gnd_10), .gnd_9(gnd_11));
  CRC_GK__CRC_stage3 CRC_stag_2(.a(T2[5:5]), .a_1(T2[2:2]), .a_2(T2[4:4]), 
      .a_3(T2[3:3]), .b(T2[1:1]), .b_1(T2[8:8]), .b_2(T2[0:0]), .b_3(T2[6:6]), 
      .y(T3[3:3]), .y_1(T3[2:2]), .y_2(T3[1:1]), .y_3(T3[0:0]), .vdd(vdd_4), 
      .vdd_1(vdd), .vdd_1_1(vdd_2), .vdd_2(vdd_3), .gnd(gnd_1), .gnd_1(gnd_5), 
      .gnd_1_1(gnd_3), .gnd_2(gnd_2));
  CRC_GK__CRC_stage_output CRC_stag_3(.a0(T2[6:6]), .a0_1(T[6:6]), 
      .a0_2(T[0:0]), .a0_3(T2[2:2]), .a0_4(T2[9:9]), .a0_5(T[13:13]), 
      .a1(T2[0:0]), .a10(T3[1:1]), .a10_1(T2[10:10]), .a10_2(T3[2:2]), 
      .a10_3(T2[9:9]), .a11(T3[2:2]), .a11_1(T2[0:0]), .a11_2(T3[3:3]), 
      .a11_3(T2[3:3]), .a12(T3[1:1]), .a12_1(T[3:3]), .a12_2(T2[1:1]), 
      .a12_3(T[14:14]), .a13(T3[3:3]), .a13_1(T[0:0]), .a13_2(T2[2:2]), 
      .a13_3(T2[6:6]), .a13_4(T[1:1]), .a14(T3[1:1]), .a14_1(T[4:4]), 
      .a14_2(T2[3:3]), .a14_3(T[8:8]), .a15(T2[3:3]), .a15_1(T2[7:7]), 
      .a15_2(T2[2:2]), .a15_3(T[2:2]), .a15_4(T[5:5]), .a1_1(T[0:0]), 
      .a1_2(T[1:1]), .a1_3(T2[8:8]), .a1_4(T[2:2]), .a1_5(T[4:4]), 
      .a2(T3[0:0]), .a2_1(T[5:5]), .a2_2(T2[1:1]), .a2_3(T[14:14]), 
      .a3(T2[5:5]), .a3_1(T[0:0]), .a3_2(T[7:7]), .a3_3(T[9:9]), 
      .a3_4(T[15:15]), .a4(T3[0:0]), .a4_1(T[9:9]), .a4_2(T3[1:1]), 
      .a4_3(T[13:13]), .a5(T3[0:0]), .a5_1(T[8:8]), .a5_2(T2[5:5]), 
      .a5_3(T2[7:7]), .a5_4(T[14:14]), .a6(T3[1:1]), .a6_1(T2[5:5]), 
      .a6_2(T[15:15]), .a7(T2[3:3]), .a7_1(T[5:5]), .a7_2(T2[0:0]), 
      .a7_3(T[12:12]), .a8(T2[10:10]), .a8_1(T[0:0]), .a8_2(T[9:9]), 
      .a8_3(T[10:10]), .a9(T2[5:5]), .a9_1(T[1:1]), .a9_2(T[11:11]), 
      .a9_3(T[13:13]), .y(CRC_new[0:0]), .y_1(CRC_new_1[1:1]), 
      .y_10(CRC_new_10[10:10]), .y_11(CRC_new_11[11:11]), 
      .y_12(CRC_new_12[12:12]), .y_13(CRC_new_13[13:13]), 
      .y_14(CRC_new_14[14:14]), .y_15(CRC_new_15[15:15]), .y_2(CRC_new_2[2:2]), 
      .y_3(CRC_new_3[3:3]), .y_4(CRC_new_4[4:4]), .y_5(CRC_new_5[5:5]), 
      .y_6(CRC_new_6[6:6]), .y_7(CRC_new_7[7:7]), .y_8(CRC_new_8[8:8]), 
      .y_9(CRC_new_9[9:9]), .vdd(vdd_7), .vdd_1(vdd_2), .vdd_10(vdd_4), 
      .vdd_11(vdd_6), .vdd_12(vdd_14), .vdd_13(vdd_1), .vdd_14(vdd), 
      .vdd_1_1(vdd_5), .vdd_2(vdd_8), .vdd_3(vdd_9), .vdd_4(vdd_10), 
      .vdd_5(vdd_11), .vdd_6(vdd_12), .vdd_7(vdd_13), .vdd_8(vdd_15), 
      .vdd_9(vdd_3), .gnd(gnd_8), .gnd_1(gnd_3), .gnd_10(gnd_5), 
      .gnd_11(gnd_7), .gnd_12(gnd_15), .gnd_13(gnd), .gnd_14(gnd_1), 
      .gnd_1_1(gnd_6), .gnd_2(gnd_9), .gnd_3(gnd_10), .gnd_4(gnd_11), 
      .gnd_5(gnd_12), .gnd_6(gnd_13), .gnd_7(gnd_14), .gnd_8(gnd_16), 
      .gnd_9(gnd_2));
endmodule   /* CRC_GK__crc16 */

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

module CRC_GK__flopenr_1x_16(ph1, ph2, d, d_1, d_10, d_11, d_12, d_13, d_14, 
      d_15, d_2, d_3, d_4, d_5, d_6, d_7, d_8, d_9, en, reset, q, q_1, q_10, 
      q_11, q_12, q_13, q_14, q_15, q_2, q_3, q_4, q_5, q_6, q_7, q_8, q_9, 
      vdd, vdd_1, vdd_32, vdd_33, vdd_34, vdd_35, vdd_36, vdd_37, vdd_38, gnd, 
      gnd_1, gnd_32, gnd_33, gnd_34, gnd_35, gnd_36, gnd_37, gnd_38);
  input ph1;
  input ph2;
  input [0:0] d;
  input [1:1] d_1;
  input [10:10] d_10;
  input [11:11] d_11;
  input [12:12] d_12;
  input [13:13] d_13;
  input [14:14] d_14;
  input [15:15] d_15;
  input [2:2] d_2;
  input [3:3] d_3;
  input [4:4] d_4;
  input [5:5] d_5;
  input [6:6] d_6;
  input [7:7] d_7;
  input [8:8] d_8;
  input [9:9] d_9;
  input en;
  input reset;
  output [0:0] q;
  output [1:1] q_1;
  output [10:10] q_10;
  output [11:11] q_11;
  output [12:12] q_12;
  output [13:13] q_13;
  output [14:14] q_14;
  output [15:15] q_15;
  output [2:2] q_2;
  output [3:3] q_3;
  output [4:4] q_4;
  output [5:5] q_5;
  output [6:6] q_6;
  output [7:7] q_7;
  output [8:8] q_8;
  output [9:9] q_9;
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
  wire net_100, net_108, net_11, net_116, net_123, net_13, net_132, net_141;
  wire net_15, net_56, net_64, net_7, net_9, net_95;

  muddlib07__clkinvbufdual_4x clkinvbu_0(.ph1(ph1), .ph2(ph2), .ph1b(net_64), 
      .ph1buf(net_56), .ph2b(net_15), .ph2buf(net_13), .vdd(vdd_32), 
      .gnd(gnd_32));
  muddlib07__clkinvbufdual_4x clkinvbu_1(.ph1(ph1), .ph2(ph2), .ph1b(net_141), 
      .ph1buf(net_132), .ph2b(net_123), .ph2buf(net_116), .vdd(vdd_32), 
      .gnd(gnd_32));
  muddlib07__flopenr_dp_1x flopenr__8(.d(d[0]), .en(net_9), .enb(net_7), 
      .ph1(net_56), .ph1b(net_64), .ph2(net_13), .ph2b(net_15), 
      .resetb(net_11), .q(q[0]), .vdd(vdd), .gnd(gnd_1));
  muddlib07__flopenr_dp_1x flopenr__9(.d(d_2[2]), .en(net_9), .enb(net_7), 
      .ph1(net_56), .ph1b(net_64), .ph2(net_13), .ph2b(net_15), 
      .resetb(net_11), .q(q_2[2]), .vdd(vdd_33), .gnd(gnd_33));
  muddlib07__flopenr_dp_1x flopenr__10(.d(d_4[4]), .en(net_9), .enb(net_7), 
      .ph1(net_56), .ph1b(net_64), .ph2(net_13), .ph2b(net_15), 
      .resetb(net_11), .q(q_4[4]), .vdd(vdd_34), .gnd(gnd_34));
  muddlib07__flopenr_dp_1x flopenr__11(.d(d_6[6]), .en(net_9), .enb(net_7), 
      .ph1(net_56), .ph1b(net_64), .ph2(net_13), .ph2b(net_15), 
      .resetb(net_11), .q(q_6[6]), .vdd(vdd_35), .gnd(gnd_35));
  muddlib07__flopenr_dp_1x flopenr__12(.d(d_8[8]), .en(net_9), .enb(net_7), 
      .ph1(net_56), .ph1b(net_64), .ph2(net_13), .ph2b(net_15), 
      .resetb(net_11), .q(q_8[8]), .vdd(vdd_36), .gnd(gnd_36));
  muddlib07__flopenr_dp_1x flopenr__13(.d(d_10[10]), .en(net_9), .enb(net_7), 
      .ph1(net_56), .ph1b(net_64), .ph2(net_13), .ph2b(net_15), 
      .resetb(net_11), .q(q_10[10]), .vdd(vdd_37), .gnd(gnd_37));
  muddlib07__flopenr_dp_1x flopenr__14(.d(d_12[12]), .en(net_9), .enb(net_7), 
      .ph1(net_56), .ph1b(net_64), .ph2(net_13), .ph2b(net_15), 
      .resetb(net_11), .q(q_12[12]), .vdd(vdd_38), .gnd(gnd_38));
  muddlib07__flopenr_dp_1x flopenr__15(.d(d_14[14]), .en(net_9), .enb(net_7), 
      .ph1(net_56), .ph1b(net_64), .ph2(net_13), .ph2b(net_15), 
      .resetb(net_11), .q(q_14[14]), .vdd(vdd_1), .gnd(gnd));
  muddlib07__flopenr_dp_1x flopenr__16(.d(d_9[9]), .en(net_100), .enb(net_95), 
      .ph1(net_132), .ph1b(net_141), .ph2(net_116), .ph2b(net_123), 
      .resetb(net_108), .q(q_9[9]), .vdd(vdd_36), .gnd(gnd_36));
  muddlib07__flopenr_dp_1x flopenr__17(.d(d_11[11]), .en(net_100), 
      .enb(net_95), .ph1(net_132), .ph1b(net_141), .ph2(net_116), 
      .ph2b(net_123), .resetb(net_108), .q(q_11[11]), .vdd(vdd_37), 
      .gnd(gnd_37));
  muddlib07__flopenr_dp_1x flopenr__18(.d(d_13[13]), .en(net_100), 
      .enb(net_95), .ph1(net_132), .ph1b(net_141), .ph2(net_116), 
      .ph2b(net_123), .resetb(net_108), .q(q_13[13]), .vdd(vdd_38), 
      .gnd(gnd_38));
  muddlib07__flopenr_dp_1x flopenr__19(.d(d_15[15]), .en(net_100), 
      .enb(net_95), .ph1(net_132), .ph1b(net_141), .ph2(net_116), 
      .ph2b(net_123), .resetb(net_108), .q(q_15[15]), .vdd(vdd_1), .gnd(gnd));
  muddlib07__flopenr_dp_1x flopenr__20(.d(d_1[1]), .en(net_100), .enb(net_95), 
      .ph1(net_132), .ph1b(net_141), .ph2(net_116), .ph2b(net_123), 
      .resetb(net_108), .q(q_1[1]), .vdd(vdd), .gnd(gnd_1));
  muddlib07__flopenr_dp_1x flopenr__21(.d(d_3[3]), .en(net_100), .enb(net_95), 
      .ph1(net_132), .ph1b(net_141), .ph2(net_116), .ph2b(net_123), 
      .resetb(net_108), .q(q_3[3]), .vdd(vdd_33), .gnd(gnd_33));
  muddlib07__flopenr_dp_1x flopenr__22(.d(d_5[5]), .en(net_100), .enb(net_95), 
      .ph1(net_132), .ph1b(net_141), .ph2(net_116), .ph2b(net_123), 
      .resetb(net_108), .q(q_5[5]), .vdd(vdd_34), .gnd(gnd_34));
  muddlib07__flopenr_dp_1x flopenr__23(.d(d_7[7]), .en(net_100), .enb(net_95), 
      .ph1(net_132), .ph1b(net_141), .ph2(net_116), .ph2b(net_123), 
      .resetb(net_108), .q(q_7[7]), .vdd(vdd_35), .gnd(gnd_35));
  muddlib07__inv_4x inv_4x_0(.a(reset), .y(net_11), .vdd(vdd_32), 
      .gnd(gnd_32));
  muddlib07__inv_4x inv_4x_1(.a(net_7), .y(net_9), .vdd(vdd_32), 
      .gnd(gnd_32));
  muddlib07__inv_4x inv_4x_2(.a(en), .y(net_7), .vdd(vdd_32), .gnd(gnd_32));
  muddlib07__inv_4x inv_4x_3(.a(reset), .y(net_108), .vdd(vdd_32), 
      .gnd(gnd_32));
  muddlib07__inv_4x inv_4x_4(.a(net_95), .y(net_100), .vdd(vdd_32), 
      .gnd(gnd_32));
  muddlib07__inv_4x inv_4x_5(.a(en), .y(net_95), .vdd(vdd_32), .gnd(gnd_32));
endmodule   /* CRC_GK__flopenr_1x_16 */

module fgpnt(ph1, ph2, Data, Data_1, Data_10, Data_11, Data_12, Data_13, 
      Data_14, Data_15, Data_2, Data_3, Data_4, Data_5, Data_6, Data_7, Data_8, 
      Data_9, enable, reset, CRC, CRC_1, CRC_10, CRC_11, CRC_12, CRC_13, 
      CRC_14, CRC_15, CRC_2, CRC_3, CRC_4, CRC_5, CRC_6, CRC_7, CRC_8, CRC_9, 
      vdd, vdd_1, vdd_10, vdd_11, vdd_12, vdd_13, vdd_14, vdd_15, vdd_16, 
      vdd_41, vdd_42, vdd_43, vdd_44, vdd_45, vdd_46, vdd_47, gnd, gnd_1, 
      gnd_10, gnd_11, gnd_12, gnd_13, gnd_14, gnd_15, gnd_16, gnd_17, gnd_32, 
      gnd_4, gnd_42, gnd_44, gnd_45, gnd_46, gnd_47);
  input ph1;
  input ph2;
  input [0:0] Data;
  input [1:1] Data_1;
  input [10:10] Data_10;
  input [11:11] Data_11;
  input [12:12] Data_12;
  input [13:13] Data_13;
  input [14:14] Data_14;
  input [15:15] Data_15;
  input [2:2] Data_2;
  input [3:3] Data_3;
  input [4:4] Data_4;
  input [5:5] Data_5;
  input [6:6] Data_6;
  input [7:7] Data_7;
  input [8:8] Data_8;
  input [9:9] Data_9;
  input enable;
  input reset;
  output [0:0] CRC;
  output [1:1] CRC_1;
  output [10:10] CRC_10;
  output [11:11] CRC_11;
  output [12:12] CRC_12;
  output [13:13] CRC_13;
  output [14:14] CRC_14;
  output [15:15] CRC_15;
  output [2:2] CRC_2;
  output [3:3] CRC_3;
  output [4:4] CRC_4;
  output [5:5] CRC_5;
  output [6:6] CRC_6;
  output [7:7] CRC_7;
  output [8:8] CRC_8;
  output [9:9] CRC_9;
  input vdd;
  input vdd_1;
  input vdd_10;
  input vdd_11;
  input vdd_12;
  input vdd_13;
  input vdd_14;
  input vdd_15;
  input vdd_16;
  input vdd_41;
  input vdd_42;
  input vdd_43;
  input vdd_44;
  input vdd_45;
  input vdd_46;
  input vdd_47;
  input gnd;
  input gnd_1;
  input gnd_10;
  input gnd_11;
  input gnd_12;
  input gnd_13;
  input gnd_14;
  input gnd_15;
  input gnd_16;
  input gnd_17;
  input gnd_32;
  input gnd_4;
  input gnd_42;
  input gnd_44;
  input gnd_45;
  input gnd_46;
  input gnd_47;

  supply1 vdd;
  supply0 gnd;
  wire [15:0] d;

  CRC_GK__crc16 crc16_0(.CRC_old(CRC[0:0]), .CRC_old_1(CRC_1[1:1]), 
      .CRC_old_10(CRC_10[10:10]), .CRC_old_11(CRC_11[11:11]), 
      .CRC_old_12(CRC_12[12:12]), .CRC_old_13(CRC_13[13:13]), 
      .CRC_old_14(CRC_14[14:14]), .CRC_old_15(CRC_15[15:15]), 
      .CRC_old_2(CRC_2[2:2]), .CRC_old_3(CRC_3[3:3]), .CRC_old_4(CRC_4[4:4]), 
      .CRC_old_5(CRC_5[5:5]), .CRC_old_6(CRC_6[6:6]), .CRC_old_7(CRC_7[7:7]), 
      .CRC_old_8(CRC_8[8:8]), .CRC_old_9(CRC_9[9:9]), .Data(Data[0:0]), 
      .Data_1(Data_1[1:1]), .Data_10(Data_10[10:10]), .Data_11(Data_11[11:11]), 
      .Data_12(Data_12[12:12]), .Data_13(Data_13[13:13]), 
      .Data_14(Data_14[14:14]), .Data_15(Data_15[15:15]), .Data_2(Data_2[2:2]), 
      .Data_3(Data_3[3:3]), .Data_4(Data_4[4:4]), .Data_5(Data_5[5:5]), 
      .Data_6(Data_6[6:6]), .Data_7(Data_7[7:7]), .Data_8(Data_8[8:8]), 
      .Data_9(Data_9[9:9]), .CRC_new(d[0:0]), .CRC_new_1(d[1:1]), 
      .CRC_new_10(d[10:10]), .CRC_new_11(d[11:11]), .CRC_new_12(d[12:12]), 
      .CRC_new_13(d[13:13]), .CRC_new_14(d[14:14]), .CRC_new_15(d[15:15]), 
      .CRC_new_2(d[2:2]), .CRC_new_3(d[3:3]), .CRC_new_4(d[4:4]), 
      .CRC_new_5(d[5:5]), .CRC_new_6(d[6:6]), .CRC_new_7(d[7:7]), 
      .CRC_new_8(d[8:8]), .CRC_new_9(d[9:9]), .vdd(vdd_1), .vdd_1(vdd_16), 
      .vdd_10(vdd_10), .vdd_11(vdd_11), .vdd_12(vdd_12), .vdd_13(vdd_13), 
      .vdd_14(vdd_14), .vdd_15(vdd_15), .vdd_2(vdd_42), .vdd_3(vdd_43), 
      .vdd_4(vdd_44), .vdd_5(vdd_45), .vdd_6(vdd_46), .vdd_7(vdd_47), 
      .vdd_8(vdd), .vdd_9(vdd_41), .gnd(gnd_17), .gnd_1(gnd), .gnd_10(gnd_10), 
      .gnd_11(gnd_11), .gnd_12(gnd_12), .gnd_13(gnd_13), .gnd_14(gnd_14), 
      .gnd_15(gnd_15), .gnd_16(gnd_16), .gnd_2(gnd_4), .gnd_3(gnd_42), 
      .gnd_5(gnd_44), .gnd_6(gnd_45), .gnd_7(gnd_46), .gnd_8(gnd_47), 
      .gnd_9(gnd_1));
  CRC_GK__flopenr_1x_16 flopenr__0(.ph1(ph1), .ph2(ph2), .d(d[0:0]), 
      .d_1(d[1:1]), .d_10(d[10:10]), .d_11(d[11:11]), .d_12(d[12:12]), 
      .d_13(d[13:13]), .d_14(d[14:14]), .d_15(d[15:15]), .d_2(d[2:2]), 
      .d_3(d[3:3]), .d_4(d[4:4]), .d_5(d[5:5]), .d_6(d[6:6]), .d_7(d[7:7]), 
      .d_8(d[8:8]), .d_9(d[9:9]), .en(enable), .reset(reset), .q(CRC[0:0]), 
      .q_1(CRC_1[1:1]), .q_10(CRC_10[10:10]), .q_11(CRC_11[11:11]), 
      .q_12(CRC_12[12:12]), .q_13(CRC_13[13:13]), .q_14(CRC_14[14:14]), 
      .q_15(CRC_15[15:15]), .q_2(CRC_2[2:2]), .q_3(CRC_3[3:3]), 
      .q_4(CRC_4[4:4]), .q_5(CRC_5[5:5]), .q_6(CRC_6[6:6]), .q_7(CRC_7[7:7]), 
      .q_8(CRC_8[8:8]), .q_9(CRC_9[9:9]), .vdd(vdd_1), .vdd_1(vdd), 
      .vdd_32(vdd_41), .vdd_33(vdd_42), .vdd_34(vdd_43), .vdd_35(vdd_44), 
      .vdd_36(vdd_45), .vdd_37(vdd_46), .vdd_38(vdd_47), .gnd(gnd_1), 
      .gnd_1(gnd), .gnd_32(gnd_32), .gnd_33(gnd_42), .gnd_34(gnd_4), 
      .gnd_35(gnd_44), .gnd_36(gnd_45), .gnd_37(gnd_46), .gnd_38(gnd_47));
endmodule   /* fgpnt */
