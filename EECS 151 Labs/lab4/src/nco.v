module nco(
    input clk,
    input rst,
    input [23:0] fcw,
    input next_sample,
    output [9:0] code
);

  reg [9:0] sine_lut [0:255];

  reg [23:0] phase_accumulator = 0;

  initial begin

    $readmemb("sine.bin", sine_lut);

  end

  always @ (posedge clk) begin

        if (rst) begin 

            phase_accumulator <= 0;

        end else begin

            if (next_sample) begin
    
                phase_accumulator <= phase_accumulator + fcw;

            end 

        end

    end
    
      assign code = sine_lut[phase_accumulator[23:16]]; 

endmodule
