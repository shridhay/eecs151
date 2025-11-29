module structural_adder (
    input [13:0] a,
    input [13:0] b,
    output [14:0] sum
);

    // TODO: Your implementation here.
    // TODO: Remove the assign statement below once you write your own RTL.

	wire [13:0] carry_bit;

	full_adder first_one (a[0], b[0], 1'b0, sum[0], carry_bit[0]);
	
	genvar i;

	generate 
		for (i = 1; i < 14; i = i + 1) begin:sumloop
			full_adder rest (a[i], b[i], carry_bit[i-1], sum[i], carry_bit[i]); 
		end
	endgenerate 

	assign sum[14] = carry_bit[13];

endmodule
