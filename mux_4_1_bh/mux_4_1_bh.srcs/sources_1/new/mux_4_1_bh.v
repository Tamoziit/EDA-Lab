`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.11.2025 23:37:03
// Design Name: 
// Module Name: mux_4_1_bh
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


module mux_4_1_bh(D, S, Y);
input [3:0]D;
input [1:0]S;
output Y;

wire [3:0]D;
wire [1:0]S;
reg Y;

always@(S or D)
case(S)
2'b00: Y = D[0];
2'b01: Y = D[1];
2'b10: Y = D[2];
2'b11: Y = D[3];
endcase
endmodule
