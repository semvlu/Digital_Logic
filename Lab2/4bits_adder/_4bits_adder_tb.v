`timescale 1ns / 1ps

module _4bits_adder_tb;
reg [3:0]a; // inputs
reg [3:0]b; // inputs
reg cin; // input
wire [3:0]s;// outputs
wire c; // output
integer i,j,k; // variables for 'for loop'

_4bits_adder uut(a,b,cin,s,c); // instantiate the Unit Under Testing (UUT)
initial begin
    for(i=0;i<2;i=i+1)
    begin
        cin = i; // assign cin from 0-1
        for(j=0;j<16;j=j+1)
        begin
            a=j; // assign a from 0000-1111
            for(k=0;k<16;k=k+1)
            begin
                b=k; // assign b from 0000-1111
                #100; // wait 100ns
            end
        end
    end
end
endmodule
