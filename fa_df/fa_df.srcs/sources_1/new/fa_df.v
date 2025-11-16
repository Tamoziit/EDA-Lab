`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.11.2025 15:27:28
// Design Name: 
// Module Name: fa_df
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


module fa_df(A, B, C, S, Ca);
input A;
input B;
input C;
output S;
output Ca;
assign S = A ^ B ^ C;
assign Ca = (A & B) | (C & (A ^ B));
endmodule
