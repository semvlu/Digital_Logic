`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/03/11 13:52:32
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
    wire C1,C2,C3;
    full_adder fa0(X[0],Y[0],Cin,S[0],C1);
    full_adder fa1(X[1],Y[1],C1,S[1],C2);
    full_adder fa2(X[2],Y[2],C2,S[2],C3);
    full_adder fa3(X[3],Y[3],C3,S[3],Cout);
endmodule
