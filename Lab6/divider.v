`timescale 1ns / 1ps



module divider(
    input CLK, reset, sw,
    output chosen_clock,
    output digit_selector,
    wire [26:0] chosen_divisor
    );
      
    clock_selector cs(sw, chosen_divisor);
    frequency_converter clk24(CLK, reset, chosen_divisor, chosen_clock);
    frequency_converter disp(CLK, reset, 2 ** 15, digit_selector);
endmodule
