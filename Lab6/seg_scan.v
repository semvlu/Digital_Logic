`timescale 1ns / 1ps


module seg_scan(
    input CLK,
    input [23:0] data, // number to be displayed
    output reg [5:0] pos,   // position to display
    output reg [3:0] seg_data // digit to display
    );
    reg [2:0] counter = 0;
    
    always @(posedge CLK) begin
        counter <= counter + 1;
        if (counter >= 5) begin
            counter <= 0;
        end
        case (counter)
            3'b000 : begin seg_data = data[3:0]; pos = 6'b000001; end
            3'b001 : begin seg_data = data[7:4]; pos = 6'b000010; end
            3'b010 : begin seg_data = data[11:8]; pos = 6'b000100; end
            3'b011 : begin seg_data = data[15:12]; pos = 6'b001000; end
            3'b100 : begin seg_data = data[19:16]; pos = 6'b010000; end
            default : begin seg_data = data[23:20]; pos = 6'b100000; end
        endcase
     end
endmodule
