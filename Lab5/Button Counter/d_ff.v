`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/04/08 14:24:19
// Design Name: 
// Module Name: d_ff
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


module d_ff(D, CLK, reset,Q);
    input D, CLK, reset;
    output reg Q;
    always @(posedge CLK or posedge reset) begin
        if(reset) Q <= 1'b0;
        else Q <= D;
    end
endmodule
