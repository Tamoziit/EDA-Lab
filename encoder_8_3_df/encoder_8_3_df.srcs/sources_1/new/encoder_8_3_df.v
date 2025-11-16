`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.11.2025 22:24:43
// Design Name: 
// Module Name: encoder_8_3_df
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


module encoder_8_3_df(I, Y);
input [7:0] I;
output [2:0] Y;
assign Y[2] = I[7] | I[6] | I[5] | I[4];
assign Y[1] = I[7] | I[6] | I[3] | I[2];
assign Y[0] = I[7] | I[5] | I[3] | I[1];
endmodule
