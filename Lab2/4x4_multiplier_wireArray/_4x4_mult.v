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
    wire [2:0] C; // temporary variables
    wire [3:0] S0,S1,S2; // ibid.
    wire [3:0] x0, y0,x1, y1, x2, y2; // ibid.
    and Gate0(P[0], X[0], Y[0]); // AND gate
    and Gate1(x0[0], X[1], Y[0]); // ibid.
    and Gate2(x0[1], X[2], Y[0]); // ibid.
    and Gate3(x0[2], X[3], Y[0]); // ibid.
    assign x0[3] = 0; 
    // assign input x3 in the first 
    // 4 bits adder as 0, cf. design structure
    
    and Gate4(y0[0], X[0], Y[1]); // AND gate
    and Gate5(y0[1], X[1], Y[1]); // ibid.
    and Gate6(y0[2], X[2], Y[1]); // ibid.
    and Gate7(y0[3], X[3], Y[1]); // ibid.
    _4bits_adder fba0(x0, y0, 0, S0, C[0]); // 1st 4 bits adder
    
    assign  P[1] = S0[0];
    // assign output P1 in the first 
    // 4 bits adder, cf. design structure
    assign x1[0] = S0[1]; 
    // assign input in the second
    // 4 bits adder
    assign x1[1] = S0[2]; // ibid.
    assign x1[2] = S0[3]; // ibid.
    assign x1[3] = C[0]; // ibid.
    
    and Gate8(y1[0], X[0], Y[2]); // AND gate
    and Gate9(y1[1], X[1], Y[2]); // ibid.
    and Gate10(y1[2], X[2], Y[2]); // ibid.
    and Gate11(y1[3], X[3], Y[2]); // ibid.
    _4bits_adder fba1(x1, y1, 0, S1, C[1]); // 2nd 4 bits adder
    
    assign  P[2] = S1[0];
    // assign output P2 in the second
    // 4 bits adder, cf. design structure
    assign x2[0] = S1[1]; 
    // assign input in the third
    // 4 bits adder
    assign x2[1] = S1[2]; // ibid.
    assign x2[2] = S1[3]; // ibid.
    assign x2[3] = C[1]; // ibid.
    
    and Gate12(y2[0], X[0], Y[3]); // AND gate
    and Gate13(y2[1], X[1], Y[3]); // ibid.
    and Gate14(y2[2], X[2], Y[3]); // ibid.
    and Gate15(y2[3], X[3], Y[3]); // ibid.
    _4bits_adder fba2(x2, y2, 0, S2, C[2]); // 3rd 4 bits adder
    
    assign P[3] = S2[0];     
    // assign output Px in the third
    // 4 bits adder, x=3~7, cf. design structure
    assign P[4] = S2[1]; // ibid.
    assign P[5] = S2[2]; // ibid
    assign P[6] = S2[3]; // ibid
    assign P[7] = C[2]; // ibid
endmodule
