`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//Students: Brett Bushnell (Undergrad), Matt Dzurick (Grad)
//Date Create: 9/15/2016
//Assignment: 1
//File: circuit7.v
//Description: Netlist Behavior circuit implementation for "circuit7"
//
//////////////////////////////////////////////////////////////////////////////////


module circuit7(a, b, c, d, z, zero, Clk, Rst);
	input [63:0] a, b, c, d, zero;
	input Clk, Rst;
  	output [63:0] z;
   	
   	wire [63:0] e, f, g, xwire;
   	wire gEQz;
   	
   	wire na1, na2;
  	
  	DIV #(64) DIV_ab(a, b, e);
  	DIV #(64) DIV_cd(c, d, f);
  	MOD #(64) MOD_ab(a, b, g);
  	COMP #(64) COMP_gzero(g, zero, na1, na2, gEQz);
  	MUX2x1 #(64) MUX_eorf(e, f, dEQz, zwire);
  	REG #(64) REG_z(zwire, Clk, Rst, z);
  	
endmodule
