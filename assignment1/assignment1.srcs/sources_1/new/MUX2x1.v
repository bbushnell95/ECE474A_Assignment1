            d <= b;
    end
endmodule`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//Students: Brett Bushnell (Undergrad), Matt Dzurick (Grad)
//Date Create: 9/1/2016
//Assignment: 1
//File: MUL2x1.v
//Description: This module is for the 2x1 Multiplxor datapath component. It has 2 data inputs (a,b),
// 	1 control input (sel), and 1 data output (d)
//////////////////////////////////////////////////////////////////////////////////


module MUL2x1#(parameter DATAWIDTH = 2)(a, b, sel, d);
    input [DATAWIDTH-1:0] a, b;
    input [DATAWIDTH-1:0] sel;
    output reg [DATAWIDTH-1:0] d;

    always@(a, b, sel)begin
        if(sel == 0)
            d <= a;
        else 

