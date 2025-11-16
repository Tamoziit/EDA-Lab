`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.11.2025 22:08:42
// Design Name: 
// Module Name: exp2_df_tbw
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


module exp2_df_tbw;
wire Y;
reg A;
reg B;
reg C;
reg D;
exp2_df X1(A, B, C, D, Y);
task display;
begin
$display("Time = %0d", $time, "ns", "A =", A, "B =", B, "C =", C, "D =", D, "Y =", Y);
end
endtask
initial
begin
A = 1'b0; B = 1'b0; C = 1'b0; D = 1'b0; #100; display;
A = 1'b0; B = 1'b0; C = 1'b0; D = 1'b1; #100; display;
A = 1'b0; B = 1'b0; C = 1'b1; D = 1'b0; #100; display;
A = 1'b0; B = 1'b0; C = 1'b1; D = 1'b1; #100; display;
A = 1'b0; B = 1'b1; C = 1'b0; D = 1'b0; #100; display;
A = 1'b0; B = 1'b1; C = 1'b0; D = 1'b1; #100; display;
A = 1'b0; B = 1'b1; C = 1'b1; D = 1'b0; #100; display;
A = 1'b0; B = 1'b1; C = 1'b1; D = 1'b1; #100; display;
A = 1'b1; B = 1'b0; C = 1'b0; D = 1'b0; #100; display;
A = 1'b1; B = 1'b0; C = 1'b0; D = 1'b1; #100; display;
A = 1'b1; B = 1'b0; C = 1'b1; D = 1'b0; #100; display;
A = 1'b1; B = 1'b0; C = 1'b1; D = 1'b1; #100; display;
A = 1'b1; B = 1'b1; C = 1'b0; D = 1'b0; #100; display;
A = 1'b1; B = 1'b1; C = 1'b0; D = 1'b1; #100; display;
A = 1'b1; B = 1'b1; C = 1'b1; D = 1'b0; #100; display;
A = 1'b1; B = 1'b1; C = 1'b1; D = 1'b1; #100; display;
end
endmodule

