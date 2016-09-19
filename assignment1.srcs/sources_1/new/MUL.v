`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//Students: Brett Bushnell (Undergrad), Matt Dzurick (Grad)
//Date Create: 9/1/2016
//Assignment: 1
//File: MUL.v
//Description: This module is for the Adder datapath component. It has 2 inputs(a, b)
//  and 1 output (sum)
//////////////////////////////////////////////////////////////////////////////////



module MUL #(parameter DATAWIDTH = 2)(a, b, prod);
    input [DATAWIDTH-1:0] a, b;
    output reg [DATAWIDTH + DATAWIDTH-1:0] prod;
    
    always@(a, b)begin
        prod <= a * b;
    end
endmodule
