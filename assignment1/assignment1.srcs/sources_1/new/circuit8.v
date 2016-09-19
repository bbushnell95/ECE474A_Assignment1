`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//Students: Brett Bushnell (Undergrad), Matt Dzurick (Grad)
//Date Create: 9/15/2016
//Assignment: 1
//File: circuit8.v
//Description: Netlist Behavior circuit implementation for "circuit8"
//
//////////////////////////////////////////////////////////////////////////////////


module circuit8(a, c, z, zero, Clk, Rst);
	input [63:0] a, c, zero;
	input Clk, Rst;
  	output [63:0] z;
   	
   	wire [63:0] e, f, g, zwire;
   	wire gEQz;
   	
   	wire na1, na2;
  	
  	//SUB #(64) SUB_a1(a, 1, e);
  	//ADD #(64) ADD_c1(c, 1, f);
  	DEC #(64) DEC_a(a, e);
  	INC #(64) INC_c(c, f);
  	MOD #(64) MOD_ac(a, c, g);
  	COMP #(64) COMP_gzero(g, zero, na1, na2, gEQz);
  	MUX2x1 #(64) MUX_eorf(e, f, gEQz, zwire);
  	REG #(64) REG_z(zwire, Clk, Rst, z);
  	
endmodule