`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/03/11 14:11:41
// Design Name: 
// Module Name: _4bits_adder_tb
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


module _4bits_adder_tb;
reg [3:0]a;
reg [3:0]b;
reg cin;
wire [3:0]s;
//wire [3:0]c;
integer i,j,k;

_4bits_adder uut(a,b,cin,s,c);
initial begin
    for(i=0;i<2;i=i+1)
    begin
        cin = i;
        for(j=0;j<16;j=j+1)
        begin
            a=j;
            for(k=0;k<16;k=k+1)
            begin
                b=k;
                #100;
            end
        end
    end
end
endmodule
