`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//Students: Brett Bushnell (Undergrad), Matt Dzurick (Grad)
//Date Create: 9/1/2016
//Assignment: 1
//File: DIV.v
//Description: This module is for the Division datapath component. It has 2 data inputs (a,b),
// 	and 1 data output (quot)
//////////////////////////////////////////////////////////////////////////////////


module DIV #(parameter DATAWIDTH = 2)(a, b, quot);
    input [DATAWIDTH-1:0] a, b;
    output reg [DATAWIDTH-1:0] quot;
    
    
    always@(a,b)begin
        quot <= a / b;
    end
endmodule
