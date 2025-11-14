`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.11.2025 08:40:19
// Design Name: 
// Module Name: decoder_bh
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


module decoder_bh(D, I);
input [2:0]D;
output [7:0]I;

wire [2:0]D;
reg [7:0]I;

always@(D)
begin
I[0] = 0; I[1] = 0; I[2] = 0; I[3] = 0; I[4] = 0; I[5] = 0; I[6] = 0; I[7] = 0;
case(D)
3'b000: I[0] = 1;
3'b001: I[1] = 1;
3'b010: I[2] = 1;
3'b011: I[3] = 1;
3'b100: I[4] = 1;
3'b101: I[5] = 1;
3'b110: I[6] = 1;
3'b111: I[7] = 1;
endcase
end
endmodule
