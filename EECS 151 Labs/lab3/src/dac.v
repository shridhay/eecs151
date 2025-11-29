module dac #(
    parameter CYCLES_PER_WINDOW = 1024,
    parameter CODE_WIDTH = $clog2(CYCLES_PER_WINDOW)
)(
    input clk,
    input [CODE_WIDTH-1:0] code,
    output reg next_sample,
    output reg pwm
);

    reg [11:0] req = 27'd1023;

	reg [11:0] cycles = 0;

    reg zero_time = 0;

    always @ (posedge clk) begin

        if (code == 0) begin

            zero_time <= 1;

        end

        if (cycles == req) begin

            next_sample <= 1;

            cycles <= 0;

        end else begin

            next_sample <= 0;

        end

        if (zero_time) begin

            pwm <= 0;

        end else begin

            if (cycles <= code) begin

                pwm <= 0;

            end else begin

                pwm <= 1;

            end 

        end

        cycles <= cycles + 1;

    end

endmodule