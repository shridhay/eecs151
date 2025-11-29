module sampler (
    input clk,
    input rst,
    input synth_valid,
    input [9:0] scaled_synth_code,
    output synth_ready,
    output pwm_out
);

    reg [12:0] counter = 13'b0;
    reg synth_ready_reg = 1'b0;
    reg [9:0] dout = 10'b0;
    reg [9:0] din = 10'b0;

    assign synth_ready = synth_ready_reg;

    sigma_delta_dac #(
        .CODE_WIDTH(10)
    ) SDD (
        .clk(clk),
        .rst(rst),
        .code(dout),
        .pwm(pwm_out)
    ); 

    always @(posedge clk) begin 

        if (rst) begin

            synth_ready_reg <= 1'b0;

            counter <= 13'b0;
            
            dout <= 10'b0;

            din <= 10'b0;

        end else begin

            din <= scaled_synth_code;

            synth_ready_reg <= 1'b0;

            counter <= counter + 1'b1;

            if (counter == 13'd2499) begin

                dout <= din;

                synth_ready_reg <= 1'b1;

                counter <= 13'b0;   

            end 

        end 

    end 

endmodule
