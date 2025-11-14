`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.11.2025 09:42:46
// Design Name: 
// Module Name: and_3_df_tbw
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


module and_3_df_tbw;
wire Y;
reg A;
reg B;
reg C;
and_3_df X1(A, B, C, Y);
task display;
begin
$display("Running");
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
