`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//Students: Brett Bushnell (Undergrad), Matt Dzurick (Grad)
//Date Create: 9/15/2016
//Assignment: 1
//File: circuit2.v
//Description: Netlist Behavior circuit implementation for "circuit2"
//
//////////////////////////////////////////////////////////////////////////////////


module circuit2(a, b, c, x, z, Clk, Rst);
	input [31:0] a, b, c;
	input Clk, Rst;
  	output [31:0] x, z;
   	
   	wire [31:0] d, e, f, g, h, xwire, zwire;
   	wire dLTe, dEQe;
   	
   	wire na1, na2;
  	
   	ADD #(32) ADD_ab(a, b, d);
  	ADD #(32) ADD_ac(a, c, e);
  	SUB #(32) SUB_ab(a, b, f);
  	COMP #(32) COMP_deqe(d, e, na1, dLTe, dEQe);
  	MUX2x1 #(32) MUX_dore(d, e, dLTe, g);
  	MUX2x1 #(32) MUX_gore(g, e, dEQe, h);
  	SHL #(32) SHL_g(g, dLTe, xwire);
  	SHR #(32) SHR_h(h, dEQe, zwire);
  	REG #(32) REG_x(xwire, Clk, Rst, x);
  	REG #(32) REG_z(zwire, Clk, Rst, z);

endmodule
