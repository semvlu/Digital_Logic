`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/03/04 14:14:55
// Design Name: 
// Module Name: Full_adder_tb
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


module Full_adder_tb;
reg a,b,cin;
wire s,cout;
Full_adder uut(.X(a), .Y(b), .C_in(cin), .S(s), .C_out(cout));
    initial begin
        a=0;
        b=0;
        cin=0;
        #100;
        
        a=0;
        b=0;
        cin=1;
        #100;
        
        a=0;
        b=1;
        cin=0;
        #100;
        
        a=0;
        b=1;
        cin=1;
        #100;
        
        a=1;
        b=0;
        cin=0;
        #100;
        
        a=1;
        b=0;
        cin=1;
        #100;
        
        a=1;
        b=1;
        cin=0;
        #100;
        
        a=1;
        b=1;
        cin=1;
        #100;
        
   end 
    

endmodule
