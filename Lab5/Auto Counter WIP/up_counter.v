`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/04/10 17:41:40
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
    //output reg c // carry
    );
    wire btn_db;
    debounce db(D,CLK,reset,btn_db); // connect output of debounce and input of up counter
    always @(posedge btn_db or posedge reset) begin
        if(reset) bcd=4'b0000; // reset as 0
        
        else begin
            case(bcd)
                (4'b0000): begin
                    bcd=4'b0001; // 1
                end
                (4'b0001): begin
                    bcd=4'b0010; // 2
                end
                (4'b0010): begin
                    bcd=4'b0011; // 3, mutatis mutandis for the following
                end
                (4'b0011): begin
                    bcd=4'b0100;
                end  
                (4'b0100): begin
                    bcd=4'b0101;
                end
                (4'b0101): begin
                    bcd=4'b0110;
                end
                (4'b0110): begin
                    bcd=4'b0111;
                end
                (4'b0111): begin
                    bcd=4'b1000;
                end    
                (4'b1000): begin
                    bcd=4'b1001; // 9
                end
                (4'b1001): begin
                    bcd=4'b0000; // return to 0
                end
                                                   
            endcase
        end
    end
endmodule
