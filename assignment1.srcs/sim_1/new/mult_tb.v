`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/07/2016 01:47:45 PM
// Design Name: 
// Module Name: mult_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module mult_tb();
    reg [3:0]a_t, b_t;
    wire [7:0]prod_t;
    
    MUL MUL_TEST(a_t, b_t);
    
    initial begin
        a_t <= 4'b1111;
        b_t <= 4'b0010;
        
        #10 a_t <= 4'b0010; b_t <= 4'b0001;
    end


endmodule
