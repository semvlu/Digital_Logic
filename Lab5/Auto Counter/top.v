`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/04/17 19:19:07
// Design Name: 
// Module Name: top
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


module top(
    input CLK, reset,
    output [1:0] pos, // position to display
    output [7:0] seg // digit format
    );
    wire [7:0] temp_data;
    wire DIV22, DIV15;
    
    divider div(CLK, reset, DIV22, DIV15);
    up_counter count(DIV22, reset, temp_data);
    display disp(DIV15, temp_data, pos, seg);
endmodule

