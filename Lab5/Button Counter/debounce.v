`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/04/08 14:09:46
// Design Name: 
// Module Name: debounce
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


module debounce(
    input D, CLK, reset,
    output fin_and_out
    );
    wire [2:0] d_ff_out;
    wire and_out;
    d_ff d0(D,CLK,reset,d_ff_out[0]);
    d_ff d1(d_ff_out[0],CLK,reset,d_ff_out[1]);
    d_ff d2(d_ff_out[1],CLK,reset,d_ff_out[2]);
    and Gate0(and_out, d_ff_out[1],d_ff_out[0]);// o,i0,i1
    and Gate1(fin_and_out, d_ff_out[2],and_out);
endmodule
