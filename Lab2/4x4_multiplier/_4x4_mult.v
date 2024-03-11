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
    wire C0,C1,C2;
    wire [3:0] S0,S1,S2;
    wire [3:0] x0, y0,x1, y1, x2, y2;
    and Gate0(P[0], X[0], Y[0]);
    and Gate1(x0[0], X[1], Y[0]);
    and Gate2(x0[1], X[2], Y[0]);
    and Gate3(x0[2], X[3], Y[0]);
    assign x0[3] = 0;
    
    and Gate4(y0[0], X[0], Y[1]);
    and Gate5(y0[1], X[1], Y[1]);
    and Gate6(y0[2], X[2], Y[1]);
    and Gate7(y0[3], X[3], Y[1]);
    _4bits_adder fba0(x0, y0, 0, S0, C0);
    // 1st 4 bits adder 
    
    assign  P[1] = S0[0];
    assign x1[0] = S0[1];
    assign x1[1] = S0[2];
    assign x1[2] = S0[3];
    assign x1[3] = C0;
    
    and Gate8(y1[0], X[0], Y[2]);
    and Gate9(y1[1], X[1], Y[2]);
    and Gate10(y1[2], X[2], Y[2]);
    and Gate11(y1[3], X[3], Y[2]);
    _4bits_adder fba1(x1, y1, 0, S1, C1);
    // 2nd 4 bits adder
    
    assign  P[2] = S1[0];
    assign x2[0] = S1[1];
    assign x2[1] = S1[2];
    assign x2[2] = S1[3];
    assign x2[3] = C1;
    
    and Gate12(y2[0], X[0], Y[3]);
    and Gate13(y2[1], X[1], Y[3]);
    and Gate14(y2[2], X[2], Y[3]);
    and Gate15(y2[3], X[3], Y[3]);
    _4bits_adder fba2(x2, y2, 0, S2, C2);
    // 3rd 4 bits adder
    
    assign P[3] = S2[0];
    assign P[4] = S2[1];
    assign P[5] = S2[2];
    assign P[6] = S2[3];
    assign P[7] = C2;
endmodule
