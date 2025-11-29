`include "opcode.vh"
module alu (

    input  [31:0] a,
    input  [31:0] b,
    input  [2:0]  f3,
    input [4:0] shamt,
    input  instr_30,
    input [6:0] opcode,
    output reg [31:0] out,
    input csrsel

);

    always @(*) begin

        if (opcode == `OPC_LUI) out = b;

      
       else if (opcode == `OPC_ARI_ITYPE || opcode == `OPC_ARI_RTYPE) begin

            case (f3)

                `FNC_ADD_SUB: begin

                    if (opcode == `OPC_ARI_RTYPE) out = instr_30 ? a - b : a + b;

                    else out = a + b;
                    
                end

                `FNC_SLL: begin

                    if (opcode == `OPC_ARI_ITYPE) out = a << shamt;

                    else out = a << b[4:0];

                end

                `FNC_SLT: out = ($signed(a) < $signed(b)) ? 1 : 0;

                `FNC_SLTU: out = (a < b) ? 1 : 0;

                `FNC_XOR: out = a ^ b;

                `FNC_OR: out = a | b;

                `FNC_AND: out = a & b;

                `FNC_SRL_SRA: begin

                    if (opcode == `OPC_ARI_ITYPE) begin

                        if (instr_30 == 0) out = a >> shamt;

                        else out = $signed(a) >>> shamt;

                    end else begin

                        if (instr_30 == 0) out = a >> b[4:0];

                        else out = $signed(a) >>> b[4:0];

                    end

                end

                default: out = a + b;

            endcase

        end 

        else out = a + b;

    end
    
endmodule
