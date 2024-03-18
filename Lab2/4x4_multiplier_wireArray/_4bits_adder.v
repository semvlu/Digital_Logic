`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/03/11 15:49:05
// Design Name: 
// Module Name: _4bits_adder
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


module _4bits_adder(
    input [3:0]X,
    input [3:0]Y,
    input Cin,
    output [3:0]S,
    output Cout
    );
    wire [2:0] C; // temporary variables
    full_adder fa0(X[0],Y[0],Cin,S[0],C[0]); // full adder
    full_adder fa1(X[1],Y[1],C[0],S[1],C[1]); // ibid.
    full_adder fa2(X[2],Y[2],C[1],S[2],C[2]); // ibid.
    full_adder fa3(X[3],Y[3],C[2],S[3],Cout); // ibid.
endmodule
