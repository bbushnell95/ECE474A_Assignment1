`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//Students: Brett Bushnell (Undergrad), Matt Dzurick (Grad)
//Date Create: 9/14/2016
//Assignment: 1
//File: circuit1.v
//Description: Netlist Behavior circuit implementation for "circuit1"
//
//////////////////////////////////////////////////////////////////////////////////


module circuit1(a, b, c, x, z);
    input [7:0] a, b, c;
    output [7:0] z;
    output [15:0] x;
    
    wire [7:0] d, e;
    wire [15:0]f, g, xwire;
    
    wire na1, na2;
    
    ADD #(8) ADD_ab(a, b, d);
    ADD #(8) ADD_ac(a, c, e);
    
    COMP #(8) COMP_dgte(d, e, g, na1, na2);
    MUX2x1 #(8) MUX_dore(d, e, g, z);
    
    MUL #(8) MUL_ac(a, c, f);
    SUB #(16) SUB_fd(f, d, xwire);
    
    REG #(16) REG_x(xwire, 1'b1 , 1'b0, x);
     
endmodule
