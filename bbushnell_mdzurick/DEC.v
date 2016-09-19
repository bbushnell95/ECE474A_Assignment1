`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//Students: Brett Bushnell (Undergrad), Matt Dzurick (Grad)
//Date Create: 9/1/2016
//Assignment: 1
//File: DEC.v
//Description: This module is for the Decrement datapath component. It has 1 data input (a)
// 	and 1 data output (d)
//////////////////////////////////////////////////////////////////////////////////


module DEC #(parameter DATAWIDTH = 2)(a, d);
    input [DATAWIDTH-1:0] a;
    output reg [DATAWIDTH-1:0] d;
    
    always @(a) begin
        d <= a - 1;
    end
endmodule