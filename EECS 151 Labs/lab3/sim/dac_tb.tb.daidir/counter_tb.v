`timescale 1ns/1ns

`define SECOND 1000000
`define MS 1000

module counter_tb();
    reg clock = 0;
    wire [3:0] LEDS;
    reg [3:0] buttons;

    counter ctr (
        .clk(clock),
        .leds(LEDS),
        .buttons(buttons)
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

        buttons[0] = 0;
        repeat(125001) @(posedge clock);
        assert (buttons[0] == 0);

        buttons[0] = 1;
        assert (buttons[0] == 1);
        repeat(1) @(posedge clock);

        buttons[0] = 0;
        repeat(1) @(posedge clock);
        assert (buttons[0] == 0);

        buttons[0] = 0;
        repeat(125001) @(posedge clock);

        assert (LEDS[3] == 1'b0);
        assert (LEDS[2] == 1'b0);
        assert (LEDS[1] == 1'b0);
        assert (LEDS[0] == 1'b1);

        buttons[0] = 1;
        repeat(1) @(posedge clock);
        buttons[0] = 0;
        repeat(1) @(posedge clock);
        repeat(125001) @(posedge clock);

        assert (LEDS[3] == 1'b0);
        assert (LEDS[2] == 1'b0);
        assert (LEDS[1] == 1'b1);
        assert (LEDS[0] == 1'b0);

        buttons[0] = 1;
        repeat(1) @(posedge clock);
        buttons[0] = 0;
        repeat(1) @(posedge clock);

        buttons[0] = 1;
        repeat(1) @(posedge clock);
        buttons[0] = 0;
        repeat(1) @(posedge clock);
        
        assert (LEDS[3] == 1'b0);
        assert (LEDS[2] == 1'b1);
        assert (LEDS[1] == 1'b0);
        assert (LEDS[0] == 1'b0);

        buttons[0] = 1;
        repeat(1) @(posedge clock);
        buttons[0] = 0;
        repeat(1) @(posedge clock);

        buttons[0] = 1;
        repeat(1) @(posedge clock);
        buttons[0] = 0;
        repeat(1) @(posedge clock);

        buttons[0] = 1;
        repeat(1) @(posedge clock);
        buttons[0] = 0;
        repeat(1) @(posedge clock);

        buttons[0] = 1;
        repeat(1) @(posedge clock);
        buttons[0] = 0;
        repeat(1) @(posedge clock);

        assert (LEDS[3] == 1'b1);        
        repeat(125001) @(posedge clock);
        assert (LEDS[2] == 1'b0);
        assert (LEDS[1] == 1'b0);
        assert (LEDS[0] == 1'b0);

        buttons[0] = 1;
        repeat(1) @(posedge clock);
        buttons[0] = 0;
        repeat(1) @(posedge clock);

        buttons[0] = 1;
        repeat(1) @(posedge clock);
        buttons[0] = 0;
        repeat(1) @(posedge clock);

        buttons[0] = 1;
        repeat(1) @(posedge clock);
        buttons[0] = 0;
        repeat(1) @(posedge clock);

        buttons[0] = 1;
        repeat(1) @(posedge clock);
        buttons[0] = 0;
        repeat(1) @(posedge clock);

        buttons[0] = 1;
        repeat(1) @(posedge clock);
        buttons[0] = 0;
        repeat(1) @(posedge clock);

        buttons[0] = 1;
        repeat(1) @(posedge clock);
        buttons[0] = 0;
        repeat(1) @(posedge clock);

        buttons[0] = 1;
        repeat(1) @(posedge clock);
        buttons[0] = 0;
        repeat(1) @(posedge clock);

        assert (LEDS[3] == 1'b1);
        assert (LEDS[2] == 1'b1);
        assert (LEDS[1] == 1'b1);
        assert (LEDS[0] == 1'b1);
 
        buttons[0] = 1;
        repeat(1) @(posedge clock);
        buttons[0] = 0;
        repeat(1) @(posedge clock);
        
        assert (LEDS[3] == 1'b0);
        assert (LEDS[2] == 1'b0);
        assert (LEDS[1] == 1'b0);
        assert (LEDS[0] == 1'b0);

        buttons[0] = 1;
        repeat(1) @(posedge clock);
        buttons[0] = 0;
        repeat(1) @(posedge clock);

        assert (LEDS[3] == 1'b0);
        assert (LEDS[2] == 1'b0);
        assert (LEDS[1] == 1'b0);
        assert (LEDS[0] == 1'b1);

        buttons[1] = 1;
        repeat(1) @(posedge clock);
        buttons[1] = 0;
        repeat(1) @(posedge clock);

        assert (LEDS[3] == 1'b0);
        assert (LEDS[2] == 1'b0);
        assert (LEDS[1] == 1'b0);
        assert (LEDS[0] == 1'b0);

        buttons[1] = 1;
        repeat(1) @(posedge clock);
        buttons[1] = 0;
        repeat(1) @(posedge clock);

        assert (LEDS[3] == 1'b1);
        assert (LEDS[2] == 1'b1);
        assert (LEDS[1] == 1'b1);
        assert (LEDS[0] == 1'b1);

        buttons[1] = 1;
        repeat(1) @(posedge clock);
        buttons[1] = 0;
        repeat(1) @(posedge clock);

        assert (LEDS[3] == 1'b1);
        assert (LEDS[2] == 1'b1);
        assert (LEDS[1] == 1'b1);
        assert (LEDS[0] == 1'b0);

        buttons[1] = 1;
        repeat(1) @(posedge clock);
        buttons[1] = 0;
        repeat(1) @(posedge clock);

        buttons[1] = 1;
        repeat(1) @(posedge clock);
        buttons[1] = 0;
        repeat(1) @(posedge clock);

        assert (LEDS[3] == 1'b1);
        assert (LEDS[2] == 1'b1);
        assert (LEDS[1] == 1'b0);
        assert (LEDS[0] == 1'b0);

        buttons[1] = 1;
        repeat(1) @(posedge clock);
        buttons[1] = 0;
        repeat(1) @(posedge clock);

        buttons[1] = 1;
        repeat(1) @(posedge clock);
        buttons[1] = 0;
        repeat(1) @(posedge clock);

        buttons[1] = 1;
        repeat(1) @(posedge clock);
        buttons[1] = 0;
        repeat(1) @(posedge clock);

        buttons[1] = 1;
        repeat(1) @(posedge clock);
        buttons[1] = 0;
        repeat(1) @(posedge clock);

        assert (LEDS[3] == 1'b1);
        assert (LEDS[2] == 1'b0);
        assert (LEDS[1] == 1'b0);
        assert (LEDS[0] == 1'b0);

        buttons[1] = 1;
        repeat(1) @(posedge clock);
        buttons[1] = 0;
        repeat(1) @(posedge clock);

        buttons[1] = 1;
        repeat(1) @(posedge clock);
        buttons[1] = 0;
        repeat(1) @(posedge clock);

        buttons[1] = 1;
        repeat(1) @(posedge clock);
        buttons[1] = 0;
        repeat(1) @(posedge clock);

        buttons[1] = 1;
        repeat(1) @(posedge clock);
        buttons[1] = 0;
        repeat(1) @(posedge clock);

        buttons[1] = 1;
        repeat(1) @(posedge clock);
        buttons[1] = 0;
        repeat(1) @(posedge clock);

        buttons[1] = 1;
        repeat(1) @(posedge clock);
        buttons[1] = 0;
        repeat(1) @(posedge clock);

        buttons[1] = 1;
        repeat(1) @(posedge clock);
        buttons[1] = 0;
        repeat(1) @(posedge clock);

        buttons[1] = 1;
        repeat(1) @(posedge clock);
        buttons[1] = 0;
        repeat(1) @(posedge clock);

        assert (LEDS[3] == 1'b0);
        assert (LEDS[2] == 1'b0);
        assert (LEDS[1] == 1'b0);
        assert (LEDS[0] == 1'b0);

        buttons[1] = 1;
        repeat(1) @(posedge clock);
        buttons[1] = 0;
        repeat(1) @(posedge clock);

        assert (LEDS[3] == 1'b1);
        assert (LEDS[2] == 1'b1);
        assert (LEDS[1] == 1'b1);
        assert (LEDS[0] == 1'b1);

        buttons[3] = 1;
        repeat(1) @(posedge clock);
        buttons[3] = 0;
        repeat(1) @(posedge clock);
        
        assert (LEDS[3] == 1'b0);
        assert (LEDS[2] == 1'b0);
        assert (LEDS[1] == 1'b0);
        assert (LEDS[0] == 1'b0);

        buttons[3] = 1;
        repeat(1) @(posedge clock);
        buttons[3] = 0;
        repeat(1) @(posedge clock);

        assert (LEDS[3] == 1'b0);
        assert (LEDS[2] == 1'b0);
        assert (LEDS[1] == 1'b0);
        assert (LEDS[0] == 1'b0);

        buttons[0] = 1;
        repeat(1) @(posedge clock);
        buttons[0] = 0;
        repeat(1) @(posedge clock);

        assert (LEDS[3] == 1'b0);
        assert (LEDS[2] == 1'b0);
        assert (LEDS[1] == 1'b0);
        assert (LEDS[0] == 1'b1);

        buttons[3] = 1;
        repeat(1) @(posedge clock);
        buttons[3] = 0;
        repeat(1) @(posedge clock);

        assert (LEDS[3] == 1'b0);
        assert (LEDS[2] == 1'b0);
        assert (LEDS[1] == 1'b0);
        assert (LEDS[0] == 1'b0);

        buttons[2] = 1;
        repeat(1) @(posedge clock);
        buttons[2] = 0;
        repeat(1) @(posedge clock);

        assert (LEDS[3] == 1'b0);
        assert (LEDS[2] == 1'b0);
        assert (LEDS[1] == 1'b0);
        assert (LEDS[0] == 1'b0);

        repeat(125000) @(posedge clock);

        assert (LEDS[3] == 1'b0);
        assert (LEDS[2] == 1'b0);
        assert (LEDS[1] == 1'b0);
        assert (LEDS[0] == 1'b1);

        repeat(125001) @(posedge clock);

        assert (LEDS[3] == 1'b0);
        assert (LEDS[2] == 1'b0);
        assert (LEDS[1] == 1'b1);
        assert (LEDS[0] == 1'b0);

        repeat(125001) @(posedge clock);
        repeat(125001) @(posedge clock);

        assert (LEDS[3] == 1'b0);
        assert (LEDS[2] == 1'b1);
        assert (LEDS[1] == 1'b0);
        assert (LEDS[0] == 1'b0);

        repeat(125001) @(posedge clock);
        repeat(125001) @(posedge clock);
        repeat(125001) @(posedge clock);
        repeat(125001) @(posedge clock);

        assert (LEDS[3] == 1'b1);
        assert (LEDS[2] == 1'b0);
        assert (LEDS[1] == 1'b0);
        assert (LEDS[0] == 1'b0);

        repeat(125001) @(posedge clock);
        repeat(125001) @(posedge clock);
        repeat(125001) @(posedge clock);
        repeat(125001) @(posedge clock);
        repeat(125001) @(posedge clock);
        repeat(125001) @(posedge clock);
        repeat(125001) @(posedge clock);

        assert (LEDS[3] == 1'b1);
        assert (LEDS[2] == 1'b1);
        assert (LEDS[1] == 1'b1);
        assert (LEDS[0] == 1'b1);

        repeat(125001) @(posedge clock);

        assert (LEDS[3] == 1'b0);
        assert (LEDS[2] == 1'b0);
        assert (LEDS[1] == 1'b0);
        assert (LEDS[0] == 1'b0);

        repeat(125001) @(posedge clock);

        assert (LEDS[3] == 1'b0);
        assert (LEDS[2] == 1'b0);
        assert (LEDS[1] == 1'b0);
        assert (LEDS[0] == 1'b1);
    
        `ifndef IVERILOG
            $vcdplusoff;
        `endif
        $finish();
    end
endmodule
