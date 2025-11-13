`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.11.2025 23:17:43
// Design Name: 
// Module Name: mux_4_1_df
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


module mux_4_1_df(A, B, C, D, S1, S0, Y);
input A;
input B;
input C;
input D;
input S1;
input S0;
output Y;
assign Y = S1 ? (S0 ? A : B) : (S0 ? C : D); 
endmodule
