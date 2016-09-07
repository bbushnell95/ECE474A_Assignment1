`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//Students: Brett Bushnell (Undergrad), Matt Dzurick (Grad)
//Date Create: 9/1/2016
//Assignment: 1
//File: SUB.v
//Description: This module is for the Subtractor datapath component. It has 2 inputs(a, b)
//  and 1 output (diff)
//////////////////////////////////////////////////////////////////////////////////



module SUB #(parameter DATAWIDTH = 2)(a, b, diff);
    input [DATAWIDTH-1:0] a, b;
    output reg [DATAWIDTH-1:0] diff;
    
    
    always@(a, b)begin
        diff <= a - b;
    end
endmodule
