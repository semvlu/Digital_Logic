`timescale 1ns / 1ps

module decode(
    input [3:0] data, //number to display
    output [7:0] segL, segR // digit in 7 segment format to display
    );
    wire [7:0] n [9:0]; // n[i]: 7 segment format for i

    assign n[0] = 8'b11111100;
    assign n[1] = 8'b01100000;
    assign n[2] = 8'b11011010;
    assign n[3] = 8'b11110010;
    assign n[4] = 8'b01100110;
    assign n[5] = 8'b10110110;
    assign n[6] = 8'b10111110;
    assign n[7] = 8'b11100000;
    assign n[8] = 8'b11111110;
    assign n[9] = 8'b11110110;
    
    assign segL = n[data];
    assign segR = n[data];
endmodule