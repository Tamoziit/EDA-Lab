`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.11.2025 00:54:48
// Design Name: 
// Module Name: ha_bh
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


module ha_bh(A, B, S, C);
input A;
input B;
output S;
output C;

wire A;
wire B;
reg S;
reg C;

always@(A or B)
begin
if (A == 1'b1 && B == 1'b1)
C = 1'b1;
else
C = 1'b0;

if (A == B)
S = 1'b0;
else
S = 1'b1;
end
endmodule
