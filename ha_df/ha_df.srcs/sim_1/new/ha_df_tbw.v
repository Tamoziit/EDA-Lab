`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.11.2025 23:12:25
// Design Name: 
// Module Name: ha_df_tbw
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


module ha_df_tbw;
wire S;
wire C;
reg A;
reg B;
ha_df X1(A, B, S, C);
task display;
begin
$display("time = %0d", $time, "ns", "A =", A, "B =", B, "S =", "C =", C);
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
