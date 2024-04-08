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
    output fin_and_out // final output from the AND gate
    );
    wire [2:0] d_ff_out; // outputs for the 3 D Flip-Flop 
    wire and_out; // output for the 1st AND gate
    d_ff d0(D,CLK,reset,d_ff_out[0]); // D Flip-Flop
    d_ff d1(d_ff_out[0],CLK,reset,d_ff_out[1]); // ibid.
    d_ff d2(d_ff_out[1],CLK,reset,d_ff_out[2]); // ibid.
    and Gate0(and_out, d_ff_out[1],d_ff_out[0]); // AND gate (O,I0,I1
    and Gate1(fin_and_out, d_ff_out[2],and_out); // ibid.
endmodule
