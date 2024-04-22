`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/04/17 18:56:49
// Design Name: 
// Module Name: display
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


module display(
    input CLK,
    input [7:0] n, // number 
    output [1:0] pos, // position to display
    output [7:0] seg  // 7 segment format
    );
    wire[7:0] temp;
    
    seg_scan SS(CLK, n, pos, temp);
    decode dc(temp, seg);
endmodule
