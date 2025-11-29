module full_adder (
    input a,
    input b,
    input carry_in,
    output sum,
    output carry_out
);
	wire xor_a_b;
	wire cin_and;
	wire and_a_b; 

	xor(sum, a, b, carry_in);
	xor(xor_a_b, a, b);
	and(cin_and, carry_in, xor_a_b);
	and(and_a_b, a, b);
	or(carry_out, and_a_b, cin_and);
	
endmodule
