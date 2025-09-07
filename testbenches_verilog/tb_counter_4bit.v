`timescale 1ns/1ps

module tb;
  reg clk, reset, valid;
  wire [3:0] count;

  // Instantiate the design
  counter uut (
    .clk(clk),
    .reset(reset),
    .valid(valid),
    .count(count)
  );

  // Clock generation: 10ns period
  always #5 clk = ~clk;

  initial begin
    // Initialize inputs
    clk = 0;
    reset = 0;
    valid = 0;

    // Apply reset
    #10 reset = 1;
    #10 reset = 0;

    // Enable counting
    #10 valid = 1;
    #50 valid = 0;   // stop counting, hold value

    // Reset again while valid=0
    #20 reset = 1;
    #10 reset = 0;

    // Count again
    #10 valid = 1;
    #40 valid = 0;

    // Finish simulation
    #50 $finish;
  end

  // Monitor outputs
  initial begin
    $monitor("Time=%0t | clk=%b reset=%b valid=%b count=%d", 
              $time, clk, reset, valid, count);
  end

endmodule
