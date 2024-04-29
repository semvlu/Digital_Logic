`timescale 1ns / 1ps


module top(
    input CLK, reset, sw, btn1, btn2, btn3,
    input [6:0] new_value,   
    output [5:0] pos,  // position to display
    output [7:0] segL, segR // digit to display
    );
    wire chosen_clock; 
    wire digit_selector;
    wire [23:0] data;
    
    divider div(CLK, reset, sw, chosen_clock, digit_selector);
    time_counter cnt(chosen_clock, reset, data);
    display disp(digit_selector, data, pos, segL, segR);
endmodule
