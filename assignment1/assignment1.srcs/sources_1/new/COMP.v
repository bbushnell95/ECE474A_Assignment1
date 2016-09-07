`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//Students: Brett Bushnell (Undergrad), Matt Dzurick (Grad)
//Date Create: 9/1/2016
//Assignment: 1
//File: COMP.v
//Description: This module is for the Comparator datapath components. It has 2 inputs(a,b)
//  and 3 control outputs (gt,lt,eq)
//////////////////////////////////////////////////////////////////////////////////


module COMP #(parameter DATAWIDTH = 2)(a, b, gt, lt, eq);
    input [DATAWIDTH-1:0] a, b;
    output reg gt, lt, eq;
    
    always	@(a,b) begin
        if (a > b) begin
        	gt <= 1;
        	lt <= 0;
        	eq <= 0;
       	end
        else if (a < b) begin
        	gt <= 0;
        	lt <= 1;
        	eq <= 0;
        end
        else begin
        	gt <= 0;
        	lt <= 0;
        	eq <= 1;
        end
    end
endmodule