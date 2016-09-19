`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/01/2016 01:01:21 PM
// Design Name: 
// Module Name: REG_tb
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


module REG_tb();
    reg [1:0] d_t;
    reg Clk_t, Rst_t;
    wire [1:0] q_t;
    
    REG REG_t(d_t, Clk_t, Rst_t,q_t); 
    
    always begin
         Clk_t <= 0;
         #10;
         Clk_t <= 1;
         #10;
    end
    
    initial begin
        Rst_t <= 1;
        #15 Rst_t <= 0; d_t <= 2'b00;
        #10 d_t <= 2'b11;
        #10 Rst_t <= 1;
        #10 Rst_t <= 0;
        
        
    end
endmodule
