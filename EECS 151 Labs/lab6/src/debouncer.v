module debouncer #(
    parameter WIDTH              = 1,
    parameter SAMPLE_CNT_MAX     = 62500,
    parameter PULSE_CNT_MAX      = 200,
    parameter WRAPPING_CNT_WIDTH = $clog2(SAMPLE_CNT_MAX),
    parameter SAT_CNT_WIDTH      = $clog2(PULSE_CNT_MAX) + 1
) (
    input clk,
    input [WIDTH-1:0] glitchy_signal,
    output [WIDTH-1:0] debounced_signal
);
    // TODO: fill in neccesary logic to implement the wrapping counter and the saturating counters
    // Some initial code has been provided to you, but feel free to change it however you like
    // One wrapping counter is required, one saturating counter is needed for each bit of glitchy_signal
    // You need to think of the conditions for reseting, clock enable, etc. those registers
    // Refer to the block diagram in the spec
    
    reg [WRAPPING_CNT_WIDTH-1:0] wrapping_counter;

    reg [SAT_CNT_WIDTH-1:0] saturating_counter [WIDTH-1:0];

    integer k = 0;

    initial begin

        wrapping_counter = 0;

        for (k = 0; k < WIDTH; k = k + 1) begin

            saturating_counter[k] = 0;

        end

    end

    integer i = 0;

    always @(posedge clk) begin

        if (wrapping_counter == SAMPLE_CNT_MAX) begin
		
            wrapping_counter <= 0;

            for (i = 0; i < WIDTH; i = i + 1) begin

                if (glitchy_signal[i] == 1'b1) begin

                    if (saturating_counter[i] < PULSE_CNT_MAX) begin

                        saturating_counter[i] <= saturating_counter[i] + 1;
    
                    end
                    
                    
                end else begin
            
                    saturating_counter[i] <= 0;

                end

            end		

        end else begin

            wrapping_counter <= wrapping_counter + 1;

        end

    end

	genvar j;

	generate

		for (j = 0; j < WIDTH; j = j + 1) begin

			assign debounced_signal[j] = (saturating_counter[j] == PULSE_CNT_MAX) ? 1'b1 : 1'b0; 

		end

	endgenerate

endmodule

