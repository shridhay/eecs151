module counter (
  input clk,
  input ce,
  output [3:0] LEDS
);
    // TODO: delete this assignment once you write your own logic.
    // assign LEDS = 4'd0;

    // TODO: Instantiate a reg net to count the number of cycles
    // required to reach one second. Note that our clock period is 8ns.
    // Think about how many bits are needed for your reg.

	reg [26:0] req = 27'd125000000;

	reg [26:0] cycles = 0;

    // TODO: Instantiate a reg net to hold the current count,
    // and assign this value to the LEDS.

	reg [3:0] count = 0;

	assign LEDS = count;

    // TODO: update the reg if clock is enabled (ce is 1).
    // Once the requisite number of cycles is reached, increment the count.

	always @(posedge clk) begin
			if (ce) begin
				cycles = cycles + 1;
				if (cycles == req) begin
					count = count + 1;
				end
			end 
			if (cycles == req) begin
				cycles = 0;
			end
	end	
endmodule

