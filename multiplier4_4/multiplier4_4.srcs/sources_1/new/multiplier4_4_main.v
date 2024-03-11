`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/03/08 15:25:52
// Design Name: 
// Module Name: multiplier4_4_main
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


module multiplier4_4_main(
    input [3:0]X,
    input [3:0]Y,
    //input [2:0]Cin,
    output [7:0]P
    );
    wire [3:0]a0,b0,a1,b1,a2,b2;
    and gate0(P[0],X[0],Y[0]);
    //assign P[0]=X[0]&Y[0];  //the difference between data flow and gate, in small project is no matter,but big project with data flow you don't know the conduction of the machine, in normal ,the efficiency and sum would be the worst. 
    and gate1(a0[0],X[1],Y[0]);
    and gate2(a0[1],X[2],Y[0]);
    and gate4(a0[2],X[3],Y[0]);
    assign a0[3]=0;
    
    and gate5(b0[0],X[0],Y[1]);
    and gate6(b0[1],X[1],Y[1]);
    and gate7(b0[2],X[2],Y[1]);
    and gate8(b0[3],X[3],Y[1]);
    
    four_bits_adder_main FA4(.X(X),.Y(Y),.Cin(0),.Co(),.S);
endmodule
