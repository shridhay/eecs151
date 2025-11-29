module sq_wave_gen (
    input clk,
    input next_sample,
    output reg [9:0] code
);
    reg [8:0] req = 9'd139;

    reg [8:0] cycles = 0;

    reg high = 0;

    always @ (posedge clk) begin

        if (cycles == req) begin

            cycles <= 0;

            high <= ~high;

        end

        if (next_sample) begin

            if (high) begin

                code <= 562;

            end else begin

                code <= 462;

            end

            cycles <= cycles + 1;

        end 

    end

endmodule
