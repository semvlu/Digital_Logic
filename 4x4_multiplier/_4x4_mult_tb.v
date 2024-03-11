`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/03/11 17:18:23
// Design Name: 
// Module Name: _4x4_mult_tb
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


module _4x4_mult_tb;
reg [3:0] x,y;
wire [7:0] p;
integer i, j;
_4x4_mult uut(x,y,p);
initial begin 
    for(i=0;i<16;i=i+1) begin
        x = i;
        for(j=0;j<16;j=j+1) begin
            y=j;
            #100;
        end
    end
end
endmodule
