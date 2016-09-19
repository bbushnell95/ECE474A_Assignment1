`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//Students: Brett Bushnell (Undergrad), Matt Dzurick (Grad)
//Date Create: 9/1/2016
//Assignment: 1
//File: MOD.v
//Description: This module is for the Modulo datapath component. It has 2 data inputs (a,b)
// 	and 1 data output (rem)
//////////////////////////////////////////////////////////////////////////////////


module MOD #(parameter DATAWIDTH = 2)(a, b, rem);
    input [DATAWIDTH-1:0] a, b;
    output reg [DATAWIDTH-1:0] rem;
    
    always @(a, b) begin
        rem <= a % b;
    end
endmodule
