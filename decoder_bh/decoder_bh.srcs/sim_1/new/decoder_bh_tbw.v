`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.11.2025 09:06:15
// Design Name: 
// Module Name: decoder_bh_tbw
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


module decoder_bh_tbw;
wire [7:0]I;
reg [2:0]D;
decoder_bh X1(D, I);
task display;
begin
$display("Time = %0d", $time, "ns");
end
endtask
initial
begin
D[2] = 1'b0; D[1] = 1'b0; D[0] = 1'b0; #100; display;
D[2] = 1'b0; D[1] = 1'b0; D[0] = 1'b1; #100; display;
D[2] = 1'b0; D[1] = 1'b1; D[0] = 1'b0; #100; display;
D[2] = 1'b0; D[1] = 1'b1; D[0] = 1'b1; #100; display;
D[2] = 1'b1; D[1] = 1'b0; D[0] = 1'b0; #100; display;
D[2] = 1'b1; D[1] = 1'b0; D[0] = 1'b1; #100; display;
D[2] = 1'b1; D[1] = 1'b1; D[0] = 1'b0; #100; display;
D[2] = 1'b1; D[1] = 1'b1; D[0] = 1'b1; #100; display;
end
endmodule
