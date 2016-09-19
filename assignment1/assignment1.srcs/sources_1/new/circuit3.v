`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//Students: Brett Bushnell (Undergrad), Matt Dzurick (Grad)
//Date Create: 9/14/2016
//Assignment: 1
//File: circuit3.v
//Description: Netlist Behavior circuit implementation for "circuit3"
//
//////////////////////////////////////////////////////////////////////////////////

module circuit3(a, b, c, d, e, f, g, h, sa, Clk, Rst, avg);
    input [15:0] a, b, c, d, e, f, g, h;
    input [7:0] sa;
    input Clk, Rst;
    
    output [15:0] avg;
    
    wire [31:0] l00, l01, l02, l03, l10, l11, l2, l2div2, l2div4, l2div8;
    
    //l00 = a + b
    ADD #(16) ADD_ab(a, b, l00[15:0]);
    //l01 = c + d
    ADD #(16) ADD_cd(c, d, l01[15:0]);
    //l02 = c + d
    ADD #(16) ADD_ef(e, f, l02[15:0]);
    //l03 = g + h
    ADD #(16) ADD_gh(g, h, l03[15:0]);
    //l10 = l00 + l01
    ADD #(32) ADD_l00_l01(l00, l01, l10);
    //l11 = l02 + l03
    ADD #(32) ADD_l02_l03(l02, l03, l11);
    //l2 = l10 + l11
    ADD #(32) ADD_l10_l11(l10, l11, l2);
    //l2div2 = l2 >> sa
    
    SHR #(32) SHR_l2_by_sa(l2, {24'b0,sa}, l2div2);
    //l2div4 = l2div2 >> sa
    SHR #(32) SHR_l2div2_by_sa(l2div2, {24'b0,sa}, l2div4); 
    //l2div8 = l2div4 >> sa
    SHR #(32) SHR_l2div4_by_sa(l2div4, {24'b0,sa}, l2div8);
    //avg = l2div8
    
    REG #(16) REG_avg(l2div8[15:0], Clk, Rst, avg);



endmodule
