`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.11.2025 22:35:10
// Design Name: 
// Module Name: encoder_8_3_df_tbw
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


module encoder_8_3_df_tbw;
wire [2:0] Y;
reg [7:0] I;
encoder_8_3_df X1(I, Y);
task display;
begin
$display("Time = %0d", $time, "ns", "I =", I, "Y =", Y);
end
endtask
initial
begin
I = 8'b00000001; #100; display;
I = 8'b00000010; #100; display;
I = 8'b00000100; #100; display;
I = 8'b00001000; #100; display;
I = 8'b00010000; #100; display;
I = 8'b00100000; #100; display;
I = 8'b01000000; #100; display;
I = 8'b10000000; #100; display;
end
endmodule
