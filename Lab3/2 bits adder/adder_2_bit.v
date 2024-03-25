`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/03/25 13:56:14
// Design Name: 
// Module Name: adder_2_bit
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


module adder_2_bit(
    input [1:0] X, Y,
    output C,
    output [1:0] S
    );
    assign {C,S} = X + Y;
endmodule
