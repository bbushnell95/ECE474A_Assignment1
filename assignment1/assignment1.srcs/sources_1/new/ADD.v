`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//Students: Brett Bushnell (Undergrad), Matt Dzurick (Grad)
//Date Create: 9/1/2016
//Assignment: 1
//Description: This module is for the Adder datapath component. It has 2 inputs(a, b)
//  and 1 output (sum)
//////////////////////////////////////////////////////////////////////////////////

module ADD #(parameter DATAWIDTH = 2)(a, b, ci, co, sum);
    input [DATAWIDTH-1:0] a, b;
    output reg [DATAWIDTH-1:0] sum;
    
    reg [DATAWIDTH:0] cA, cB, cSUM;
    
    always@(a,b, ci)begin
        sum <= a + b;
    end
endmodule
