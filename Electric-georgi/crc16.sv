//---------------------------------------------------------
// or2.sv
// Georgi Kostadinov 2013-09-10
//
// Model and testbench of OR2 gate
//--------------------------------------------------------

module testbench();
    logic clk;
    logic [47:0] vectors[31:0], currentvec;
    logic [6:0] vectornum, errors;
    
    logic [15:0] data;
    logic [15:0] crc;
    logic [15:0] t;
    logic [15:0] y;
    
    // The device under test
    crc16 dut(data, crc, y);
    
    // read test vector file and initialize test
    initial begin
       $readmemb("E:\\Documents\\School\\Fall 2013\\ECSE-548\\Project\\crc16-vectors.txt", vectors);
       vectornum = 0; errors = 0;
    end
    // generate a clock to sequence tests
    always begin
       clk = 1; #10; clk = 0; #10;
    end
    // apply test
    always @(posedge clk) begin
       currentvec = vectors[vectornum];
       data = currentvec[47:32];
       crc = currentvec[31:16];
       t = currentvec[15:0];
       $display("got data %b and crc %b", 
                  data,crc);
       if (currentvec[0] === 1'bx) begin
         $display("Completed %d tests with %d errors.", 
                  vectornum, errors);
         $stop;
       end
    end
    // check if test was sucessful and apply next one
    always @(negedge clk) begin
       if ((y !== t)) begin
          $display("Error: inputs were data=%b crc=%b", data, crc);
          $display("       output mismatches as %b (%b expected)", 
                   y, t);
          errors = errors + 1;
       end
       vectornum = vectornum + 1;
    end
endmodule



/* Verilog for cell 'crc16{sch}' from library 'CRC' */
/* Created on Fri Oct 25, 2013 22:12:27 */
/* Last revised on Sat Oct 26, 2013 18:55:51 */
/* Written on Sat Oct 26, 2013 18:56:35 by Electric VLSI Design System, version 8.06 */

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

module crc16(CRC_old, Data, CRC_new);
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
endmodule   /* crc16 */
