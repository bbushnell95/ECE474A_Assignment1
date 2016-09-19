`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//Students: Brett Bushnell (Undergrad), Matt Dzurick (Grad)
//Date Create: 9/18/2016
//Assignment: 1
//File: circuit4.v
//Description: Netlist Behavior circuit implementation for "circuit4"
//
//////////////////////////////////////////////////////////////////////////////////


module circuit4(a, b, c, d, e, f, g, h, i, j, l, m, n, o, p, Clk, Rst, final);
input [7:0] a, b, c, d, e, f, g, h, i, j, l, m, n, o, p;
input Clk, Rst;

output [31:0] final;

wire [31:0] t1, t2, t3, t4, t5, t6, t7, t8, t9, t10, t11, t12, t13, t14;

//t1 = a + b
    ADD #(8) ADD_ab(a, b, t1[7:0]);
//t2 = t1 + c
    ADD #(32) ADD_t1c(t1,{24'b0,c}, t2);
//t3 = t2 + d
    ADD #(32) ADD_t2d(t2, {24'b0,d}, t3);
//t4 = t3 + e
    ADD #(32) ADD_t3e(t3, {24'b0,e}, t4);
//t5 = t4 + f
    ADD #(32) ADD_t4f(t4, {24'b0,f}, t5);
//t6 = t5 + g
    ADD #(32) ADD_t5g(t5, {24'b0,g}, t6);
//t7 = t6 + h
    ADD #(32) ADD_t6h(t6, {24'b0,h}, t7);
//t8 = t7 + i
    ADD #(32) ADD_t7i(t7, {24'b0,i}, t8);
//t9 = t8 + j
    ADD #(32) ADD_t8j(t8, {24'b0,j}, t9);
//t10 = t9 + l
    ADD #(32) ADD_t9l(t9, {24'b0,l}, t10);
//t11 = t10 + m
    ADD #(32) ADD_t10m(t10, {24'b0,m}, t11);
//t12 = t11 + n
    ADD #(32) ADD_t11n(t11, {24'b0,n}, t12);
//t13 = t12 + o
    ADD #(32) ADD_t12o(t12, {24'b0,o}, t13);
//t14 = t13 + p
    ADD #(32) ADD_t13p(t13, {24'b0,p}, t14);
//final = t14
    REG #(32) REG_final(t14, Clk, Rst, final);


endmodule
