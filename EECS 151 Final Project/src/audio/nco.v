module nco(
    input clk,
    input rst,
    input [23:0] fcw,
    input next_sample,
    output [13:0] code
);

    reg [13:0] data_out; 
    reg [23:0] phase_accumulator;

    sine_lut sl 
    (
        .address(phase_accumulator[23:16]), 
        .data(data_out)
    );

    assign code = data_out;

    always @(posedge clk) begin

        if (rst) begin 

            phase_accumulator <= 0;

        end else begin

            if (next_sample) begin
    
                phase_accumulator <= phase_accumulator + fcw;

            end 

        end

    end
    
endmodule
