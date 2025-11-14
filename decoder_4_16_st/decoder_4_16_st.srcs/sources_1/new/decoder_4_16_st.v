`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.11.2025 09:16:46
// Design Name: 
// Module Name: decoder_4_16_st
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


module decoder_4_16_st(D, I);
input [3:0] D;
output [15:0] I;

wire D3_bar, D2_bar, D1_bar, D0_bar;

not (D3_bar, D[3]);
not (D2_bar, D[2]);
not (D1_bar, D[1]);
not (D0_bar, D[0]);

and(I[0],  D3_bar, D2_bar, D1_bar, D0_bar); // 0000
and(I[1],  D3_bar, D2_bar, D1_bar, D[0]);   // 0001
and(I[2],  D3_bar, D2_bar, D[1],   D0_bar); // 0010
and(I[3],  D3_bar, D2_bar, D[1],   D[0]);   // 0011
and(I[4],  D3_bar, D[2],   D1_bar, D0_bar); // 0100
and(I[5],  D3_bar, D[2],   D1_bar, D[0]);   // 0101
and(I[6],  D3_bar, D[2],   D[1],   D0_bar); // 0110
and(I[7],  D3_bar, D[2],   D[1],   D[0]);   // 0111
and(I[8],  D[3],   D2_bar, D1_bar, D0_bar); // 1000
and(I[9],  D[3],   D2_bar, D1_bar, D[0]);   // 1001
and(I[10], D[3],   D2_bar, D[1],   D0_bar); // 1010
and(I[11], D[3],   D2_bar, D[1],   D[0]);   // 1011
and(I[12], D[3],   D[2],   D1_bar, D0_bar); // 1100
and(I[13], D[3],   D[2],   D1_bar, D[0]);   // 1101
and(I[14], D[3],   D[2],   D[1],   D0_bar); // 1110
and(I[15], D[3],   D[2],   D[1],   D[0]);   // 1111
endmodule
