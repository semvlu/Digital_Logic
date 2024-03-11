`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/03/04 13:54:29
// Design Name: 
// Module Name: Half_adder_tb
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


module Half_adder_tb;
reg A,B;
wire c, s;
Half_adder uut(.X(A), .Y(B), .C(c), .S(s));
// mapping by name
// or: mapping by location Half_adder uut(A, B, c, s);
    initial begin
        A=0;
        B=0;
        #100;
        
        A=0;
        B=1;
        #100;
        
        A=1;
        B=0;
        #100;
        
        A=1;
        B=1;
        #100$stop;
    end
endmodule
