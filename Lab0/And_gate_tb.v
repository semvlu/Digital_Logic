`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/02/26 15:55:14
// Design Name: 
// Module Name: And_gate_tb
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


module And_gate_tb;
reg X, Y;
wire Z;
And_gate uut(.A(X), .B(Y), .F(Z));
    initial begin
        X=0;
        Y=0;
        #100;
        
        X=1;
        Y=0;
        #100;
        
        X=0;
        Y=1;
        #100;
        
        X=1;
        Y=1;
        #100$stop;
    end
endmodule
