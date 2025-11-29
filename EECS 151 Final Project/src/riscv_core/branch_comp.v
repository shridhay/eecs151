`include "opcode.vh"

module branch_comp(
    
    input [31:0] r1,
    input [31:0] r2,
    input [2:0] b_type, // FUNC3

    output branch_taken
);
    reg branch;
    assign branch_taken = branch;

    always @(*) begin

        case(b_type) 

            `FNC_BEQ: branch = (r1 == r2);

            `FNC_BNE: branch = (r1 != r2);

            `FNC_BLT: branch = ($signed(r1) < $signed(r2));

            `FNC_BGE: branch = ($signed(r1) >= $signed(r2));

            `FNC_BLTU: branch = (r1 < r2);

            `FNC_BGEU: branch = (r1 >= r2);
            
            default: branch = 0;

        endcase

    end

endmodule