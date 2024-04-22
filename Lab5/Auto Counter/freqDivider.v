`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/04/17 19:05:43
// Design Name: 
// Module Name: freqDivider
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


module freqDivider (
    input CLK,
    input reset,
    output reg mod_clk
    );
    initial mod_clk = 0;
    
    always @(posedge CLK)
    begin
    if (reset)
        mod_clk <= 1'b0;
    else
        // val of mod_clk changes every time CLK has a posedge, freq /=2
        mod_clk <= ~ mod_clk;
    end
endmodule
