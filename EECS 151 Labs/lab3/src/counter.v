
module counter #(
    parameter CYCLES_PER_SECOND = 125_000_000
)(
    input clk,
    input [3:0] buttons,
    output [3:0] leds
);

	reg [26:0] req = 27'd125000000;

	reg [26:0] cycles = 0;

    reg [3:0] counter = 0;

    reg [1:0] dynamode = 1'b0;

    assign leds = counter; 
    
    always @(posedge clk) begin

		if (dynamode) begin

			cycles <= cycles + 1;

			if (cycles == req) begin

				counter <= counter + 1;

			end

		end 

		if (cycles == req) begin

			cycles <= 0;

		end

        if (buttons[0])

            counter <= counter + 4'd1;

        else if (buttons[1])

            counter <= counter - 4'd1;

        else if (buttons[3])

            counter <= 4'd0;

        else if (buttons[2])

			dynamode <= ~dynamode;

    end

endmodule

