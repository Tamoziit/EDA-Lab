`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.11.2025 18:16:51
// Design Name: 
// Module Name: fa_bh_tbw
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


module fa_bh_tbw;
wire S;
wire Ca;
reg A;
reg B;
reg C;
fa_bh X1(A, B, C, S, Ca);
task display;
begin
$display("Time = %0d", $time, "ns");
end
endtask
initial
begin
C = 1'b0; B = 1'b0; A = 1'b0; #100; display;
C = 1'b0; B = 1'b0; A = 1'b1; #100; display;
C = 1'b0; B = 1'b1; A = 1'b0; #100; display;
C = 1'b0; B = 1'b1; A = 1'b1; #100; display;
C = 1'b1; B = 1'b0; A = 1'b0; #100; display;
C = 1'b1; B = 1'b0; A = 1'b1; #100; display;
C = 1'b1; B = 1'b1; A = 1'b0; #100; display;
C = 1'b1; B = 1'b1; A = 1'b1; #100; display;
end
endmodule
