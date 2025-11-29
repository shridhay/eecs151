module sq_wave_gen #(
    parameter STEP = 10
)(
    input clk,
    input rst,
    input next_sample,
    input [2:0] buttons,
    output [9:0] code,
    output [3:0] leds
);

    reg [9:0] code_opt;

    reg [20:0] cycles = 0;

    reg [20:0] samples = 139;

    reg high = 0;

    reg expmode = 0;

    assign code = code_opt;

    assign leds[0] = expmode;

    reg counter = 0;

    always @ (posedge clk) begin
    
        if (rst) begin

            cycles <= 0;

            expmode <= 0;

            samples <= 139;

            high <= 1;

        end else begin

            if (expmode) begin

                counter <= 1;

            end else begin

                counter <= 0;

            end

            if (cycles == samples) begin

                cycles <= 1;

                high <= ~high;

            end

            if (next_sample) begin

                if (high) begin

                    code_opt <= 562;

                end else begin

                    code_opt <= 462;

                end

                cycles <= cycles + 1;

            end 

            if (buttons[0])

                if (expmode) begin

                    samples <= samples << 1;

                end else begin

                    samples <= samples + STEP;

                end

            else if (buttons[1])

                if (expmode) begin

                    samples <= samples >> 1;

                end else begin

                    samples <= samples - STEP;

                end

            else if (buttons[2])

                expmode <= ~expmode;    
    
        end

    end

endmodule