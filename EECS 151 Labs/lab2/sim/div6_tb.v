// Code your testbench here
// or browse Examples
`timescale 1ns/1ns
`define CLK_PERIOD 8
module testbench();
  reg clk = 0;
  always #(`CLK_PERIOD/2) clk = ~clk;
  reg in;
  wire out;
  // Instantiate the div6 module
  div6 uut (
    .clk(clk),
    .in(in),
    .out(out)
  );
  // Stimulus generation
  initial begin
    `ifdef IVERILOG
    $dumpfile(“div6.fst”);
    $dumpvars(0, testbench);
    `endif
    `ifndef IVERILOG
    	$vcdpluson;
    `endif
    clk = 0; // Initialize clock to 0
    in = 0; // Initialize input to 0
    // Apply the provided input pattern
    // Change ‘in’ at the rising edge of the clock
    @(posedge clk); #1;
    in = 1;
    @(posedge clk); #1;
    in = 1;
    @(posedge clk); #1;
    in = 0;
    @(posedge clk); #1;
    in = 1;
    @(posedge clk); #1;
    in = 1;
    @(posedge clk); #1;
    in = 0;
    @(posedge clk); #1;
    in = 0;
    @(posedge clk); #1;
    in = 0;
    @(posedge clk); #1;
    in = 1;
    @(posedge clk); #1;
    in = 0;
    @(posedge clk); #1;
    in = 1;
    @(posedge clk); #1;
    in = 0;
    @(posedge clk); #1;
    in = 1;
    @(posedge clk); #1;
    in = 1;
    @(posedge clk); #1;
    in = 0;
    @(posedge clk); #1;
    in = 1;
    @(posedge clk); #1;
    in = 1;
    @(posedge clk); #1;
    in = 0;
    @(posedge clk); #1;
    in = 1;
    @(posedge clk); #1;
    in = 1;
    @(posedge clk); #1;
    in = 0;
    @(posedge clk); #1;
    in = 1;
    @(posedge clk); #1;
    in = 1;
    @(posedge clk); #1;
    in = 0;
    @(posedge clk); #1;
    in = 0;
    @(posedge clk); #1;
    in = 0;
    @(posedge clk); #1;
    in = 0;
    @(posedge clk); #1;
    in = 1;
    @(posedge clk); #1;
    in = 0;
    @(posedge clk); #1;
    in = 1;
    @(posedge clk); #1;
    in = 1;
    // End simulation after a delay
    `ifndef IVERILOG
    	$vcdplusoff;
    `endif
    $finish();
  end
  // Display the results
  initial begin
    $display(“Time\tClock\tInput\tOutput”);
    $monitor(“%d\t%d\t%d\t%d”, $time, clk, in, out);
  end
endmodule