`timescale 1ns/1ns

`define SECOND 1000000000
`define MS 1000000

module counter_testbench();
    reg clock = 0;
    reg ce;
    wire [3:0] LEDS;

    counter ctr (
        .clk(clock),
        .ce(ce),
        .LEDS(LEDS)
    );

    // Notice that this code causes the `clock` signal to constantly
    // switch up and down every 4 time steps.
    always #(4) clock <= ~clock;

    initial begin
        `ifdef IVERILOG
            $dumpfile("counter_testbench.fst");
            $dumpvars(0, counter_testbench);
        `endif

        `ifndef IVERILOG
            $vcdpluson;
        `endif

        // TODO: Change input values and step forward in time to test
        // your counter and its clock enable/disable functionality.
		assert(clock == 0);

		assign ce = 1'd1;
		assert (LEDS == 4'd0);
		repeat(125001) @(posedge clock);
		assert (LEDS == 4'd1);
		repeat(125001) @(posedge clock);
		assert (LEDS == 4'd2);
		repeat(125001) @(posedge clock);
		assert (LEDS == 4'd3);

		assign ce = 1'd0;
		#(2)
		assert (ce == 1'd0);
		
		assign ce = 1'd1;
		#(1);
		assert (ce == 1'd1);
		

		//assert(clock == 0);
		//#(5);
		//assert(clock == 1);
		//#(9);
		//assert(clock == 1);
		//#(5);
		//assert(clock == 0);






        `ifndef IVERILOG
            $vcdplusoff;
        `endif
        $finish();
    end
endmodule

