`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/04/17 18:38:57
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
    input CLK,reset,
    output reg[7:0] n // number
    );
    initial n = 0;

    always @(posedge CLK or posedge  reset) begin
        if (reset)         // reset the number
            n <= 0;
        else begin
            if (n[7:4] >= 9) begin   // n >= 90
                if (n[3:0] >= 9)    // n >= 99 -> n=0
                    n <= 0;
                else                   // 90 <= n < 99 -> n++
                    n <= n + 1;
            end
            else begin                  // n < 90
                if (n[3:0] >= 9) begin       // X9 
                    n[7:4] <= n[7:4] + 1; // tens digit += 1
                    n[3:0] <= 0;             // units digit = 0
                end
                else begin 
                    n <= n + 1;
                end
            end
        end  
    end
endmodule
