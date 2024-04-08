`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/04/08 14:42:55
// Design Name: 
// Module Name: up_counter
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


module up_counter(
    input D, CLK, reset,
    output reg [3:0] bcd // BCD bits
    );
    wire btn_db;
    debounce db(D,CLK,reset,btn_db); // connect output of debounce and input of up counter
    always @(posedge btn_db or posedge reset) begin
        if(reset) bcd=4'b0000; // reset as 0
        
        else begin
            case(bcd)
                (4'b0000):
                    bcd=4'b0001; // 1
                (4'b0001):
                    bcd=4'b0010; // 2
                (4'b0010):
                    bcd=4'b0011; // 3, mutatis mutandis for the following
                (4'b0011):
                    bcd=4'b0100;     
                (4'b0100):
                    bcd=4'b0101;
                (4'b0101):
                    bcd=4'b0110;
                (4'b0110):
                    bcd=4'b0111;
                (4'b0111):
                    bcd=4'b1000;    
                (4'b1000):
                    bcd=4'b1001; // 9
                (4'b1001):
                    bcd=4'b0000; // return to 0                               
            endcase
        end
    end
endmodule
