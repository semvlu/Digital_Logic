`timescale 1ns / 1ps

module counter(
    input CLK, reset,
    input [7:0] max_val, reset_val,
    output reg [7:0] count,
    output reg CLK_mod // clock signal for the next count (e.g. CLK_mod (sec) -> CLK (min))
    );
    reg [7:0] max_val_minus_one;
    
    initial count = reset_val;
    
    always @(posedge CLK or posedge reset) begin
        if (reset) begin // reset
            count[7:4] <= reset_val[7:4];
            count[3:0] <= reset_val[3:0];
            CLK_mod <= 0;
        end

        else if (CLK) begin // normal case 
            if (max_val[3:0] == 0) begin
                max_val_minus_one[7:4] = max_val[7:4] - 4'b0001;
                max_val_minus_one[3:0] = 4'b1001;
            end 
            else begin
                max_val_minus_one = max_val - 8'b00000001;
            end
            if (count[7:4] >= max_val_minus_one[7:4]) begin
                if (count[3:0] >= max_val_minus_one[3:0]) begin
                    count <= 0;
                    CLK_mod <= 1;
                end
                else begin
                    count <= count + 1;
                    CLK_mod <= 0;
                end                    
            end
            else begin
                if (count[3:0] >= 9) begin
                    count[7:4] <= count[7:4] + 1;
                    count[3:0] <= 0;
                    CLK_mod <= 0;
                end
                else begin 
                    count <= count + 1;
                    CLK_mod <= 0;
                end
            end
        end  
    end
endmodule
