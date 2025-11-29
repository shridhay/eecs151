module sigma_delta_dac #(
    parameter CODE_WIDTH = 10
)(
    input clk,
    input rst,
    input [CODE_WIDTH-1:0] code,
    output pwm
);

    reg [CODE_WIDTH:0] prev = 0;
    reg [CODE_WIDTH:0] cycles = 0;

    always @ (posedge clk) begin

        if (rst) begin

            cycles <= 0;
            
            prev <= 0;

        end else begin

                prev <= {1'b0, code};

                cycles <= cycles[CODE_WIDTH-1:0] + prev;

            end

        end

    assign pwm = (rst) ? 0 : cycles[CODE_WIDTH] ^ prev[CODE_WIDTH];

endmodule
