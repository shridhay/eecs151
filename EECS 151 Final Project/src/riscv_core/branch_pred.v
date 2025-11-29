module branch_pred(
    
    input [31:0] instr,
    output branch_taken
);

assign branch_taken = instr[31] ? 1'b1 : 1'b0;

endmodule