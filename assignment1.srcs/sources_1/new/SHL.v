`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//Students: Brett Bushnell (Undergrad), Matt Dzurick (Grad)
//Date Create: 9/1/2016
//Assignment: 1
//File: SHL.v
//Description: This module is for the Shift Left datapath component. It has 1 data input (a),
// 	1 control input (sh_amt), and 1 data output (d)
//////////////////////////////////////////////////////////////////////////////////


module SHL #(parameter DATAWIDTH = 8)(a, sh_amt, d);
    input [DATAWIDTH-1:0] a;
    input [DATAWIDTH-1:0] sh_amt;
    output reg [DATAWIDTH-1:0] d;
    
    always @(a, sh_amt) begin
    	d <= a << sh_amt;
    end
endmodule
