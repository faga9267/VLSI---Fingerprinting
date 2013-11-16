/* Verilog for cell 'mojing:counter{sch}' from library 'mojing' */
/* Created on Wed Nov 06, 2013 12:39:40 */
/* Last revised on Fri Nov 15, 2013 17:49:53 */
/* Written on Fri Nov 15, 2013 17:50:03 by Electric VLSI Design System, version 8.06 */

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

module counter(E, ph1, ph2, reset, d, q);
  input E;
  input ph1;
  input ph2;
  input reset;
  output [7:0] d;
  output q;

  supply1 vdd;
  supply0 gnd;
  wire flopr_c__0_resetb, net_115, net_127, net_154, net_157, net_158, net_159;
  wire net_19, net_203, net_227, net_233, net_241, net_247, net_253, net_260;
  wire net_284, net_285, net_83, or2_1x_0_y;

  muddlib07__and2_1x and2_1x_0(.a(d[0]), .b(E), .y(net_227));
  muddlib07__and2_1x and2_1x_3(.a(d[1]), .b(net_227), .y(net_233));
  muddlib07__and2_1x and2_1x_4(.a(d[2]), .b(net_233), .y(net_241));
  muddlib07__and2_1x and2_1x_5(.a(d[3]), .b(net_241), .y(net_260));
  muddlib07__and2_1x and2_1x_6(.a(d[4]), .b(net_260), .y(net_247));
  muddlib07__and2_1x and2_1x_7(.a(d[5]), .b(net_247), .y(net_253));
  muddlib07__and2_1x and2_1x_8(.a(d[6]), .b(net_253), .y(net_203));
  muddlib07__and2_1x and2_1x_9(.a(net_284), .b(net_285), .y(q));
  muddlib07__and4_1x and4_1x_0(.a(d[3]), .b(d[2]), .c(d[1]), .d(d[0]), 
      .y(net_285));
  muddlib07__and4_1x and4_1x_1(.a(d[6]), .b(d[7]), .c(d[5]), .d(d[4]), 
      .y(net_284));
  muddlib07__flopr_c_1x flopr_c__0(.ph1(ph1), .ph2(ph2), .d(net_19), 
      .resetb(flopr_c__0_resetb), .q(d[0]));
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
  muddlib07__or2_1x or2_1x_0(.a(reset), .b(E), .y(or2_1x_0_y));
  muddlib07__xor2_1x xor2_1x_0(.a(d[0]), .b(E), .y(net_19));
  muddlib07__xor2_1x xor2_1x_1(.a(d[1]), .b(net_227), .y(net_115));
  muddlib07__xor2_1x xor2_1x_2(.a(d[2]), .b(net_233), .y(net_83));
  muddlib07__xor2_1x xor2_1x_3(.a(d[3]), .b(net_241), .y(net_127));
  muddlib07__xor2_1x xor2_1x_4(.a(d[4]), .b(net_260), .y(net_154));
  muddlib07__xor2_1x xor2_1x_6(.a(d[5]), .b(net_247), .y(net_157));
  muddlib07__xor2_1x xor2_1x_7(.a(d[6]), .b(net_253), .y(net_158));
  muddlib07__xor2_1x xor2_1x_8(.a(d[7]), .b(net_203), .y(net_159));
endmodule   /* counter */
