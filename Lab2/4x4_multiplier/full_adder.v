`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/03/11 15:48:02
// Design Name: 
// Module Name: full_adder
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


module full_adder(X,Y,C_in,S,C_out);
    input X,Y,C_in;
    wire S1,C1,C2,C3; // temporary variables
    output S,C_out;
    xor Gate1(S1,X,Y); // XOR gate
    and Gate2(C1,X,Y); // AND gate
    and Gate3(C2,X,C_in); // Ibid.
    and Gate4(C3,Y,C_in); // Ibid.
    xor Gate5(S,S1,C_in); // cf. Gate1
    or Gate6(C_out,C1,C2,C3); // OR gate
endmodule
