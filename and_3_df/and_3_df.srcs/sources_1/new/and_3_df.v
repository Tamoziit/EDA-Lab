`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.11.2025 09:40:19
// Design Name: 
// Module Name: and_3_df
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


module and_3_df(A, B, C, Y);
input A;
input B;
input C;
output Y;
assign Y = A & B & C;
endmodule
