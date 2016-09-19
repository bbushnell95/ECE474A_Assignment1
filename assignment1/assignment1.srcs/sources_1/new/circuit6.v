`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//Students: Brett Bushnell (Undergrad), Matt Dzurick (Grad)
//Date Create: 9/15/2016
//Assignment: 1
//File: circuit6.v
//Description: Netlist Behavior circuit implementation for "circuit6"
//
//////////////////////////////////////////////////////////////////////////////////


module circuit6(a, b, c, d, e, f, g, h, num, avg, Clk, Rst);
	input [15:0] a, b, c, d, e, f, g, h, num;
	input Clk, Rst;
  	output [15:0] avg;
   	
   	wire [15:0] avgwire;
   	wire [31:0] t1, t2, t3, t4, t5, t6, t7;
   	
   	reg [15:0] r1, r2, r3, r4, r5, r6, r7;
  	
   	ADD #(32) ADD_ab({16'b0,a}, {16'b0,b}, t1);
   	REG #(16) REG_r1(t1[15:0], Clk, Rst, r1);
   	ADD #(32) ADD_r1c({16'b0,r1}, {16'b0,c}, t2);
   	REG #(16) REG_r2(t2[15:0], Clk, Rst, r2);
   	ADD #(32) ADD_r2d({16'b0,r2}, {16'b0,d}, t3);
   	REG #(16) REG_r3(t3[15:0], Clk, Rst, r3);
   	ADD #(32) ADD_r3e({16'b0,r3}, {16'b0,e}, t4);
   	REG #(16) REG_r4(t4[15:0], Clk, Rst, r4);
   	ADD #(32) ADD_r4f({16'b0,r4}, {16'b0,f}, t5);
 	REG #(16) REG_r5(t5[15:0], Clk, Rst, r5);
   	ADD #(32) ADD_r5g({16'b0,r5}, {16'b0,g}, t6);
   	REG #(16) REG_r6(t6[15:0], Clk, Rst, r6);
   	ADD #(32) ADD_r6h({16'b0,r6}, {16'b0,h}, t7);
   	REG #(16) REG_r7(t7[15:0], Clk, Rst, r7);
   	DIV #(16) DIV_r7num(r7, num, avgwire);
  	REG #(16) REG_avg(avgwire, Clk, Rst, avg);

endmodule