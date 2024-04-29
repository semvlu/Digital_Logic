`timescale 1ns / 1ps


module display(
    input CLK,
    input [23:0] data, // number to be displayed
    output [5:0] pos, // position to display
    output [7:0] segL, segR // digit to display
    );
    
    wire [3:0] temp;
    
    seg_scan SS(CLK, data, pos, temp);
    decode DEC(temp, segL, segR);
endmodule
