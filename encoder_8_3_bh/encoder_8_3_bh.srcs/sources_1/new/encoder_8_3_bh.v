`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.11.2025 22:54:25
// Design Name: 
// Module Name: encoder_8_3_bh
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


module encoder_8_3_bh(I, Y);
input [7:0] I;
output [2:0] Y;

wire [7:0] I;
reg [2:0] Y;

always@(I)
case(I)
8'b00000001: Y = 3'b000;
8'b00000010: Y = 3'b001;
8'b00000100: Y = 3'b010;
8'b00001000: Y = 3'b011;
8'b00010000: Y = 3'b100;
8'b00100000: Y = 3'b101;
8'b01000000: Y = 3'b110;
8'b10000000: Y = 3'b111;
default: Y = 3'bxxx;
endcase
endmodule
