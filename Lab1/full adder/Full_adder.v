`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/03/04 14:06:33
// Design Name: 
// Module Name: Full_adder
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


module Full_adder(X,Y,C_in,S,C_out);
    input X,Y,C_in;
    wire S1,C1,C2,C3;
    output S,C_out;
    xor Gate1(S1,X,Y);
    and Gate2(C1,X,Y);
    and Gate3(C2,X,C_in);
    and Gate4(C3,Y,C_in);
    xor Gate5(S,S1,C_in);
    or Gate6(C_out,C1,C2,C3);
endmodule
