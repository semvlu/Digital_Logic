`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/03/11 15:50:16
// Design Name: 
// Module Name: _4x4_mult
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


module _4x4_mult(
    input [3:0] X,
    input [3:0] Y,
    output [7:0] P
    );
    wire [4:0] C;
    wire [3:0] S;
    assign P[0]=X[0]&Y[0];
    _4bits_adder fba0();

endmodule
