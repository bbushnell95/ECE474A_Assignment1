`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//Students: Brett Bushnell (Undergrad), Matt Dzurick (Grad)
//Date Create: 9/1/2016
//Assignment: 1
//Description: This module is for the Register datapath components. It has 1 input(D)
//  2 control inputs(Clk, Rst) and 1 output (q)
//////////////////////////////////////////////////////////////////////////////////


module REG #(parameter DATAWIDTH = 2)(d, Clk, Rst, q);
    input [DATAWIDTH-1:0] d;
    input Clk, Rst;
    output reg [DATAWIDTH-1:0] q;
    
    always@(posedge Clk, Rst) begin
        if(Rst == 1)
            q <= 0;
        else
            q <= d;
    end
endmodule