`timescale 1ns / 1ps



module hour_counter(
    input CLK, reset,
    output [23:0] data
    );
    wire timer_sec, timer_min, timer_hr;
    
    // 8'b01100000 = 60 (BCD), 8'b01000101 = 45 (BCD)
    counter seconds(CLK, reset, 8'b01100000, 8'b01000101, data[7:0], timer_sec);
    // 8'b01100000 = 60 (BCD), 8'b01011001 = 59 (BCD)
    counter minutes(timer_sec, reset, 8'b01100000, 8'b01011001, data[15:8], timer_min);
    // 8'b00100100 = 24 (BCD), 8'b00100011 = 23 (BCD)
    counter hours(timer_min, reset, 8'b00100100, 8'b00100011, data[23:16], timer_hr);

endmodule
