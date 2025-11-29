module mux3(
    input [31:0] A,
    input [31:0] B,
    input [31:0] C,
    input [1:0] sel,
    output [31:0] out
);

assign out = (sel == 2'b00) ? A : ((sel == 2'b01) ? B : C);

endmodule