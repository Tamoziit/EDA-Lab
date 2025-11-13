`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.11.2025 23:20:28
// Design Name: 
// Module Name: mux_4_1_df_tbw
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


module mux_4_1_df_tbw;
wire Y;
reg A;
reg B;
reg C;
reg D;
reg S1;
reg S0;
mux_4_1_df X1(A, B, C, D, S1, S0, Y);
task display;
begin
$display("Time = %0d", $time, "ns", "A =", A, "B =", B, "C =", C, "D =", D, "S1 =", S1, "S0 =", S0, "Y =", Y);
end
endtask
initial
begin
A = 1'b1; B = 1'b0; C = 1'b1; D = 1'b0;
S1 = 1'b0; S0 = 1'b0; #100; display;
S1 = 1'b0; S0 = 1'b1; #100; display;
S1 = 1'b1; S0 = 1'b0; #100; display;
S1 = 1'b1; S0 = 1'b1; #100; display;
end;
endmodule
