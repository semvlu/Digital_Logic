`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/04/10 17:47:58
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
    input D, CLK, reset,
    output [7:0] disp, // 7-0 -> DK1-DK8
    output reg [7:0] segR // 7 segment, L->R: a->LD, if side=0, use this, i.e. the rightmost 4 displayers
    //output reg [7:0] segL // ibid. except side=1 and the leftmost 4 displayers
    );   
    assign disp = 8'b00000011; // only the rightmost 2 LEDs will be on
    //wire c; // carry
    wire [3:0] n; // number from 0-15 (0-f)
    wire mod_clk; // modified clock, 10Hz
    clk_divider dvdr(CLK, mod_clk);
    up_counter cntr0(D,mod_clk,reset,n); // units digit. connect up counter, output of up_counter as input of _7_seg
    //up_counter cntr1(c,mod_clk,reset,n1,0); // tens digit
    always @(mod_clk or reset) begin

        case(n)// assign the 7 segment format for segR & segL. from 0-15
            (4'b0000): begin
                segR = 8'b11111100;
            end
            (4'b0001): begin
                segR = 8'b01100000;
            end  
            (4'b0010): begin
                segR = 8'b11011010;
            end
            (4'b0011): begin
                segR = 8'b11110010;
            end
            (4'b0100): begin
                segR = 8'b01100110; 
            end
            (4'b0101): begin
                segR = 8'b10110110;
            end  
            (4'b0110): begin
                segR = 8'b10111110;
            end
            (4'b0111): begin
                segR = 8'b11100000;
            end            
            (4'b1000): begin
                segR = 8'b11111110;
            end
            (4'b1001): begin
                segR = 8'b11110110;
            end  
            (4'b1010): begin
                segR = 8'b11101110;
            end
            (4'b1011): begin
                segR = 8'b00111110;
            end
            (4'b1100): begin
                segR = 8'b10011100;
            end
            (4'b1101): begin
                segR = 8'b01111010;
            end  
            (4'b1110): begin
                segR = 8'b10011110;
            end
            (4'b1111): begin
                segR = 8'b10001110;
            end         
        endcase


    end
endmodule