`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.11.2025 22:49:44
// Design Name: 
// Module Name: orgate_df_tbw
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


module orgate_df_tbw;
wire Y;
reg A;
reg B;
orgate_df X1(A, B, Y);
task display;
begin
$display("time = %0d", $time, "ns", "A =", A, "B =", B, "Y =", Y);
end
endtask
initial
begin
A = 1'b0; B = 1'b0; #10; display;
A = 1'b0; B = 1'b1; #10; display;
A = 1'b1; B = 1'b0; #10; display;
A = 1'b1; B = 1'b1; #10; display;
end
endmodule