`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//Students: Brett Bushnell (Undergrad), Matt Dzurick (Grad)
//Date Create: 9/14/2016
//Assignment: 1
//File: circuit1.v
//Description: Netlist Behavior circuit implementation for "circuit1"
//
//////////////////////////////////////////////////////////////////////////////////


module circuit1(a, b, c, Clk, Rst, x, z);
    input [7:0] a, b, c;
    input Clk, Rst;
    output [7:0] z;
    output [15:0] x;
    
    
    wire [7:0] d, e;
    wire [15:0] f, g, xwire;
    
    //Dummy wires for the lt and et of the Comp datapath component
    wire na1, na2; 
    
    ADD #(8) ADD_ab(a, b, d);
    ADD #(8) ADD_ac(a, c, e);
    
    COMP #(8) COMP_dgte(d, e, g[0], na1, na2);
    MUX2x1 #(8) MUX_dore(d, e, g[0], z);
    
    MUL #(8) MUL_ac(a, c, f);
    SUB #(16) SUB_fd(f, {8'b0,d}, xwire);
    
    REG #(16) REG_x(xwire, Clk, Rst, x);
     
endmodule
