`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.11.2025 23:58:34
// Design Name: 
// Module Name: mux_4_1_bh_tbw
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


module mux_4_1_bh_tbw;
wire Y;
reg [3:0]D;
reg [1:0]S;
mux_4_1_bh X1(D,S,Y);
task display;
begin
$display("time = %0d",$time,"ns"," a=%b",D[0]," b=%b",D[1]," c=%b",D[2]," d=%b",D[3]," s1=%b",S[0]," s0=%b",S[1]," Y=%b",Y);
end
endtask
initial
begin
D[0] = 1'b1;D[1] = 1'b1;D[2] = 1'b0;D[3] = 1'b1;
S[0] = 1'b0; S[1] = 1'b0 ;#10;display;
S[0] = 1'b0; S[1] = 1'b1 ;#10;display;
S[0] = 1'b1; S[1] = 1'b0 ;#10;display;
S[0] = 1'b1; S[1] = 1'b1 ;#10;display;
end
endmodule
