`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.11.2025 00:41:33
// Design Name: 
// Module Name: or_bh
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


module or_bh(A, B, Y);
    input A;
    input B;
    output Y;
    
    wire A;
    wire B;
    reg Y;
    
    always@(A or B)
    begin
        if (A == 1'b1 || B == 1'b1)
            Y = 1'b1;
        else
            Y = 1'b0;
    end
endmodule
