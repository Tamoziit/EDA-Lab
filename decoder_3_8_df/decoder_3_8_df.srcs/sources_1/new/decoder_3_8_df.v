`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.11.2025 01:07:59
// Design Name: 
// Module Name: decoder_3_8_df
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


module decoder_3_8_df(A, B, C, Y0, Y1, Y2, Y3, Y4, Y5, Y6, Y7);
    input A;
    input B;
    input C;
    output Y0;
    output Y1;
    output Y2;
    output Y3;
    output Y4;
    output Y5;
    output Y6;
    output Y7;
    assign Y0 = ~A & ~B & ~C;
    assign Y1 = ~A & ~B & C;
    assign Y2 = ~A & B & ~C;
    assign Y3 = ~A & B & C;
    assign Y4 = A & ~B & ~C;
    assign Y5 = A & ~B & C;
    assign Y6 = A & B & ~C;
    assign Y7 = A & B & C;
endmodule
