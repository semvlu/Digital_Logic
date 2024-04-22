`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/04/17 19:16:43
// Design Name: 
// Module Name: seg_scan
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


module seg_scan(
    input CLK,
    input [7:0] n, // number
    output [1:0] pos, // position to display
    output [3:0] seg // digit format
    );
    assign seg = (CLK) ? n[3:0] : n[7:4];
    assign pos = (CLK) ? 2'b01 : 2'b10;
endmodule

