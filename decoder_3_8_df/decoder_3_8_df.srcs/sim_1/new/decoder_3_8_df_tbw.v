`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.11.2025 01:12:24
// Design Name: 
// Module Name: decoder_3_8_df_tbw
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


module decoder_3_8_df_tbw;
wire I0;
wire I1;
wire I2;
wire I3;
wire I4;
wire I5;
wire I6;
wire I7;
reg A;
reg B;
reg C;
decoder_3_8_df X1(A, B, C, I0, I1, I2, I3, I4, I5, I6, I7);
task display;
begin
$display("Time = %0d", $time, "ns");
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
