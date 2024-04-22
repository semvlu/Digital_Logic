`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/04/17 19:03:45
// Design Name: 
// Module Name: divider
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


module divider(
    input CLK, reset,
    output reg DIV22, DIV15
    );
    wire [22:0]DIV;

    // clock freq is divided by 2 for 22 times
    freqDivider FD0(CLK, reset, DIV[0]);
    freqDivider FD1(DIV[0], reset, DIV[1]);
    freqDivider FD2(DIV[1], reset, DIV[2]);
    freqDivider FD3(DIV[2], reset, DIV[3]);
    freqDivider FD4(DIV[3], reset, DIV[4]);
    freqDivider FD5(DIV[4], reset, DIV[5]);
    freqDivider FD6(DIV[5], reset, DIV[6]);
    freqDivider FD7(DIV[6], reset, DIV[7]);
    freqDivider FD8(DIV[7], reset, DIV[8]);
    freqDivider FD9(DIV[8], reset, DIV[9]);
    freqDivider FD10(DIV[9], reset, DIV[10]);
    freqDivider FD11(DIV[10], reset, DIV[11]);
    freqDivider FD12(DIV[11], reset, DIV[12]);
    freqDivider FD13(DIV[12], reset, DIV[13]);
    freqDivider FD14(DIV[13], reset, DIV[14]);
    freqDivider FD15(DIV[14], reset, DIV[15]);
    freqDivider FD16(DIV[15], reset, DIV[16]);
    freqDivider FD17(DIV[16], reset, DIV[17]);
    freqDivider FD18(DIV[17], reset, DIV[18]);
    freqDivider FD19(DIV[18], reset, DIV[19]);
    freqDivider FD20(DIV[19], reset, DIV[20]);
    freqDivider FD21(DIV[20], reset, DIV[21]);
    freqDivider FD22(DIV[21], reset, DIV[22]);
    
    always @(posedge CLK) begin
        DIV15 <= DIV[15];
        DIV22 <= DIV[22];
    end
    
endmodule
