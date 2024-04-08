`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/04/08 14:04:38
// Design Name: 
// Module Name: _7_seg
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


module _7_seg(
    input [2:0] pos, // position, which 1 of the 8 to display
    input D, CLK, reset,
    output reg [7:0] disp, // 7-0 -> DK1-DK8
    output reg [7:0] segR,// 7 segment, L->R: a->LD, if side=0, use this, i.e. the rightmost 4 displayers
    output reg [7:0] segL // ibid. except side=1 and the leftmost 4 displayers
    );   
    wire [3:0] n; // number from 0-15 (0-f)
    up_counter cntr(D,CLK,reset,n); // connect up counter, output of up_counter as input of _7_seg
    always @(D or CLK or reset or pos) begin
        case (pos)// on/off for each displayer
            (3'b000):
                disp = 8'b00000001; // DK8
            (3'b001):
                disp = 8'b00000010; // DK7, mutatis mutandis for the following
            (3'b010):
                disp = 8'b00000100;
            (3'b011):
                disp = 8'b00001000;
            (3'b100):
                disp = 8'b00010000;
            (3'b101):
                disp = 8'b00100000;
            (3'b110):
                disp = 8'b01000000;
            (3'b111):
                disp = 8'b10000000; // DK1         
        endcase
       
  
        case(n)// assign the 7 segment format for segR & segL. from 0-15
            (4'b0000): begin
                segR = 8'b11111100;
                segL = 8'b11111100;
            end
            (4'b0001): begin
                 segR = 8'b01100000;
                 segL = 8'b01100000;
            end  
            (4'b0010): begin
                 segR = 8'b11011010;
                 segL = 8'b11011010;
            end
            (4'b0011): begin
                 segR = 8'b11110010;
                 segL = 8'b11110010;
            end
            (4'b0100): begin
                 segR = 8'b01100110;
                 segL = 8'b01100110;
            end
            (4'b0101): begin
                 segR = 8'b10110110;
                 segL = 8'b10110110;
            end  
            (4'b0110): begin
                 segR = 8'b10111110;
                 segL = 8'b10111110;
            end
            (4'b0111): begin
                segR = 8'b11100000;
                segL = 8'b11100000;
            end            
            (4'b1000): begin
                segR = 8'b11111110;
                segL = 8'b11111110;
            end
            (4'b1001): begin
                segR = 8'b11110110;
                segL = 8'b11110110;
            end  
            (4'b1010): begin
                segR = 8'b11101110;
                segL = 8'b11101110;
            end
            (4'b1011): begin
                segR = 8'b00111110;
                segL = 8'b00111110;
            end
            (4'b1100): begin
                segR = 8'b10011100;
                segL = 8'b10011100;
            end
            (4'b1101): begin
                segR = 8'b01111010;
                segL = 8'b01111010;
            end  
            (4'b1110): begin
                segR = 8'b10011110;
                segL = 8'b10011110;
            end
            (4'b1111): begin
                segR = 8'b10001110;
                segL = 8'b10001110;
            end         
        endcase

    end
endmodule
