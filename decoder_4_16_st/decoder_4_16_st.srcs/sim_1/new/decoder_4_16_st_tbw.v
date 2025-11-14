`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.11.2025 09:25:58
// Design Name: 
// Module Name: decoder_4_16_st_tbw
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


module decoder_4_16_st_tbw;
wire [15:0]I;
reg [3:0]D;
decoder_4_16_st X1(D, I);
task display;
begin
$display("Time = %0d", $time, "ns");
end
endtask
initial
begin
D[3] = 1'b0; D[2] = 1'b0; D[1] = 1'b0; D[0] = 1'b0; #100; display;
D[3] = 1'b0; D[2] = 1'b0; D[1] = 1'b0; D[0] = 1'b1; #100; display;
D[3] = 1'b0; D[2] = 1'b0; D[1] = 1'b1; D[0] = 1'b0; #100; display;
D[3] = 1'b0; D[2] = 1'b0; D[1] = 1'b1; D[0] = 1'b1; #100; display;
D[3] = 1'b0; D[2] = 1'b1; D[1] = 1'b0; D[0] = 1'b0; #100; display;
D[3] = 1'b0; D[2] = 1'b1; D[1] = 1'b0; D[0] = 1'b1; #100; display;
D[3] = 1'b0; D[2] = 1'b1; D[1] = 1'b1; D[0] = 1'b0; #100; display;
D[3] = 1'b0; D[2] = 1'b1; D[1] = 1'b1; D[0] = 1'b1; #100; display;
D[3] = 1'b1; D[2] = 1'b0; D[1] = 1'b0; D[0] = 1'b0; #100; display;
D[3] = 1'b1; D[2] = 1'b0; D[1] = 1'b0; D[0] = 1'b1; #100; display;
D[3] = 1'b1; D[2] = 1'b0; D[1] = 1'b1; D[0] = 1'b0; #100; display;
D[3] = 1'b1; D[2] = 1'b0; D[1] = 1'b1; D[0] = 1'b1; #100; display;
D[3] = 1'b1; D[2] = 1'b1; D[1] = 1'b0; D[0] = 1'b0; #100; display;
D[3] = 1'b1; D[2] = 1'b1; D[1] = 1'b0; D[0] = 1'b1; #100; display;
D[3] = 1'b1; D[2] = 1'b1; D[1] = 1'b1; D[0] = 1'b0; #100; display;
D[3] = 1'b1; D[2] = 1'b1; D[1] = 1'b1; D[0] = 1'b1; #100; display;
end
endmodule