`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.11.2025 22:06:43
// Design Name: 
// Module Name: exp2_df
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


module exp2_df(A, B, C, D, Y);
input A;
input B;
input C;
input D;
output Y;
assign Y = ~((A | D) & (B | C));
endmodule
