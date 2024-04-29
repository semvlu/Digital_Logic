`timescale 1ns / 1ps



module clock_selector(
    input sw,
    output reg [26:0] chosen_divisor
    );
    always @(sw) begin
        // sw: 1->10kHz, 0->1Hz
        // param: CLK / factor / 2
        // 100 MHz = 100,000,000 Hz
        chosen_divisor <= (sw) ? 5000 : 50000000;
    end
endmodule
