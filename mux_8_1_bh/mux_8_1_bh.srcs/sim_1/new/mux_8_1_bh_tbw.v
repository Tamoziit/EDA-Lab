`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.11.2025 13:31:35
// Design Name: 
// Module Name: mux_8_1_bh_tbw
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


module mux_8_1_bh_tbw;
wire Y;
reg [7:0] I;
reg [2:0] S;

mux_8_1_bh X1(I, S, Y);

task display;
begin
$display("Time = %0d", $time, "ns", "S2 =", S[2], "S1 =", S[1], "S0 =", S[0]);
end
endtask
initial
begin
I[7] = 1'b1; I[6] = 1'b1; I[5] = 1'b0; I[4] = 1'b0; I[3] = 1'b1; I[2] = 1'b0; I[1] = 1'b1; I[0] = 1'b0;
S[2] = 1'b0; S[1] = 1'b0; S[0] = 1'b0; #100; display;
S[2] = 1'b0; S[1] = 1'b0; S[0] = 1'b1; #100; display;
S[2] = 1'b0; S[1] = 1'b1; S[0] = 1'b0; #100; display;
S[2] = 1'b0; S[1] = 1'b1; S[0] = 1'b1; #100; display;
S[2] = 1'b1; S[1] = 1'b0; S[0] = 1'b0; #100; display;
S[2] = 1'b1; S[1] = 1'b0; S[0] = 1'b1; #100; display;
S[2] = 1'b1; S[1] = 1'b1; S[0] = 1'b0; #100; display;
S[2] = 1'b1; S[1] = 1'b1; S[0] = 1'b1; #100; display;
end
endmodule
