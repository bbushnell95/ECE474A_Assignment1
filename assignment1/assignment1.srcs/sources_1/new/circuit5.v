`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//Students: Brett Bushnell (Undergrad), Matt Dzurick (Grad)
//Date Create: 9/15/2016
//Assignment: 1
//File: circuit5.v
//Description: Netlist Behavior circuit implementation for "circuit5"
//
//////////////////////////////////////////////////////////////////////////////////


module circuit5(a, b, c, x, z, Clk, Rst);
	input [63:0] a, b, c;
	input Clk, Rst;
  	output [31:0] x, z;
   	
   	wire [63:0] d, e, f, g, h, xrin, zrin;
   	wire dLTe, dEQe;
   	reg [63:0] greg, hreg;
   	
   	wire na1;
  	
   	ADD #(64) ADD_ab(a, b, d);
  	ADD #(64) ADD_ac(a, c, e);
  	SUB #(64) SUB_ab(a, b, f);
  	COMP #(64) COMP_deqe(d, e, na1, dLTe, dEQe);
  	MUX2x1 #(64) MUX_dore(d, e, dLTe, g);
  	MUX2x1 #(64) MUX_gore(g, f, dEQe, h);
  	REG #(64) REG_greg(g, Clk, Rst, greg);
  	REG #(64) REG_hreg(h, Clk, Rst, hreg);
  	SHL #(64) SHL_g(hreg, dLTe, xrin);
  	SHR #(64) SHR_h(hreg, dEQe, zrin);
  	REG #(32) REG_x(xrin[15:0], Clk, Rst, x);
  	REG #(32) REG_z(zrin[15:0], Clk, Rst, z);

endmodule