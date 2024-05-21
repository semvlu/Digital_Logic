# Verilog Lab on FPGA: xc7a35tcsg324-1

> Lab 0: AND gate

> Lab 1: Half / Full adder

> Lab 2: 4 bits adder, 4x4 multiplier

> Lab 3:  2 bits adder, 4x4 multiplier, cf. Lab2

> Lab 4: 7 segment display

> Lab 5: Button counter (0-9) w/ debounce, Auto counter (00-99). Auto counter WIP: 00-11-22-33...99

> Lab 6: 24h clock. reset: 23:45:59. sw 0/1: 1Hz (normal) / 10 kHz

> Lab 7: 24h clock. With time adjustment function. reset: 00:00:00
* Push button
  * once: set hr
  * twice: set min
  * 3 times: set sec
  * 4 times: off  


# Testbench

Add sources: Simulation

reg as in; wire as out

```
module _4x4_mult_tb;
reg [3:0] x,y; // inputs
wire [7:0] p; // outputs
integer i, j; // variables used for 'for loop'
_4x4_mult uut(x,y,p); // instantiate the Unit Under Testing (UUT)
initial begin 
 for(i=0,i<16,i=i+1) begin
  x = i;
  #100
 end
endmodule
```
Run simulation: Behavioral

# Frequency Divider
```
module frequency_converter(
    input CLK, reset,
    input [26:0] divisor,
    output reg out_clock
    );
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
```

[Reference](https://github.com/gerardofisch/Verilog-HDL/tree/main/Labs)
