`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.11.2025 00:57:54
// Design Name: 
// Module Name: ha_bh_tbw
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


module ha_bh_tbw;
wire S;
wire C;
reg A;
reg B;
ha_bh X1(A, B, S, C);
task display;
begin
$display("Time = %0d", $time, "ns", "A =", A, "B =", B, "S =", S, "C =", C);
end
endtask
initial
begin
A = 1'b0; B = 1'b0; #100; display;
A = 1'b0; B = 1'b1; #100; display;
A = 1'b1; B = 1'b0; #100; display;
A = 1'b1; B = 1'b1; #100; display;
end
endmodule
