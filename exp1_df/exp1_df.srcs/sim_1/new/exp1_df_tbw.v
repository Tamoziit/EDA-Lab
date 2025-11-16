`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.11.2025 21:59:18
// Design Name: 
// Module Name: exp1_df_tbw
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


module exp1_df_tbw;
wire Y;
reg A;
reg B;
reg C;
exp1_df X1(A, B, C, Y);
task display;
begin
$display("Time = %0d", $time, "ns", "A =", A, "B =", B, "C =", C, "Y =", Y);
end
endtask
initial
begin
A = 1'b0; B = 1'b0; C = 1'b0; #100; display;
A = 1'b0; B = 1'b0; C = 1'b1; #100; display;
A = 1'b0; B = 1'b1; C = 1'b0; #100; display;
A = 1'b0; B = 1'b1; C = 1'b1; #100; display;
A = 1'b1; B = 1'b0; C = 1'b0; #100; display;
A = 1'b1; B = 1'b0; C = 1'b1; #100; display;
A = 1'b1; B = 1'b1; C = 1'b0; #100; display;
A = 1'b1; B = 1'b1; C = 1'b1; #100; display;
end
endmodule
