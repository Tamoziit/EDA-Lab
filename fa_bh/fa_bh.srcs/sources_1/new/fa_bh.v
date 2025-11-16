`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.11.2025 17:59:40
// Design Name: 
// Module Name: fa_bh
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


module fa_bh(A, B, C, S, Ca);
input A;
input B;
input C;
output S;
output Ca;

wire A;
wire B;
wire C;
reg S;
reg Ca;

always@(A or B or C)
begin
    if (C == 1'b0)
    begin
        // SUM
        if (A != B)
            S = 1'b1;
        else
            S = 1'b0;

        // CARRY
        if (A == 1'b1 && B == 1'b1)
            Ca = 1'b1;
        else
            Ca = 1'b0;
    end
    else
    begin
        // SUM
        if (A != B)
            S = 1'b0;
        else
            S = 1'b1;

        // CARRY
        if (A == 1'b0 && B == 1'b0)
            Ca = 1'b0;
        else
            Ca = 1'b1;
    end
end
endmodule
