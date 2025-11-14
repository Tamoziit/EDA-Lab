`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.11.2025 00:45:58
// Design Name: 
// Module Name: or_bh_tbw
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


module or_bh_tbw;
wire Y;
reg A;
reg B;
or_bh X1(A, B, Y);
task display;
begin
$display("Time = %0d", $time, "ns", "A =", A, "B =", B, "Y =", Y);
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
