`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/04/10 19:09:18
// Design Name: 
// Module Name: clk_divider
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


module clk_divider(
    input CLK,
    output reg mod_clk
    );
    reg[31:0] counter = 32'd0;
    parameter dvsr = 32'd10000000;
    always @(posedge CLK) begin
        counter <= counter + 1;
        if(counter >= (dvsr - 1) )
            counter <= 32'd0;
        mod_clk <= (counter < dvsr / 2)? 1'b1 : 1'b0;
    end
endmodule
