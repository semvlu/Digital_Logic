`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/04/10 17:40:00
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
    always @(posedge CLK or posedge reset) begin // as CLK or reset have a pulse from 0 to 1, do the following
        if(reset) Q <= 1'b0; // reset to 0
        else Q <= D; // output Q as D
    end
endmodule
