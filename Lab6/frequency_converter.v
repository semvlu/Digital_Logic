`timescale 1ns / 1ps



module frequency_converter(CLK, reset, divisor, out_clock);
    input CLK, reset;
    input [26:0] divisor;
    output reg out_clock;
    reg [26:0] counter = 0;
    
    initial out_clock = 0;    
    always @(posedge CLK or posedge reset) 
    begin
        counter <= counter + 1;
        if (reset) begin
            out_clock <= 26'b0;
            counter <= 0;
        end
        else begin
            if (counter >= divisor - 1) begin
                counter <= 0;
                out_clock <= ~out_clock;
            end
        end
    end
endmodule


