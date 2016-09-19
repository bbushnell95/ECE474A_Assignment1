`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/13/2016 08:59:31 PM
// Design Name: 
// Module Name: SHR_Test
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


module SHR_Test();
    reg [7:0] a_t;
    reg [7:0] sh_amt;
    wire [7:0] d_t;
    
    SHL SHL_1(a_t, sh_amt, d_t);
    
    initial begin
        a_t <= 8'b00000001;
        sh_amt <= 8'b00000001;
    end




endmodule
