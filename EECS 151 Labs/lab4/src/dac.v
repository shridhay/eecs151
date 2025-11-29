module dac #(
    parameter CYCLES_PER_WINDOW = 1024,
    parameter CODE_WIDTH = $clog2(CYCLES_PER_WINDOW)
)(
    input clk,
    input rst,
    input [CODE_WIDTH-1:0] code,
    output reg next_sample,
    output reg pwm
);

	reg [11:0] cycles = 0;

    always @ (posedge clk) begin

        if (rst) begin

            cycles <= 0;

            next_sample <= 0;

        end else begin

                if (cycles == CYCLES_PER_WINDOW - 2) begin

                    next_sample <= 1;

                    cycles <= cycles + 1;

                end

                else if (cycles == CYCLES_PER_WINDOW - 1) begin

                    next_sample <= 0;

                    cycles <= 0;

                end else begin

                    next_sample <= 0;

                    cycles <= cycles + 1;

                end

            end

    end

    always @(*) begin

            if (code == 0) begin

                pwm = 0;

            end

            else if (cycles <= code) begin

                pwm = 1;

            end else begin

                pwm = 0;

            end 

    end

endmodule


