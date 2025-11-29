`include "opcode.vh"

module imm_gen (
    input [31:0]  instr,
    output [31:0] immediate 
);

    reg [31:0] imm;
    reg [6:0] opcode;
    assign opcode = instr[6:0];
    assign immediate = imm;

    always @(*) begin

        imm = 0;

        if (opcode == `OPC_LUI || opcode == `OPC_AUIPC) 

            imm = $signed({instr[31:12], 12'h000}); // upper bits

        else if (opcode == `OPC_JAL)

            imm = $signed({instr[31], instr[19:12], instr[20], instr[30:21], 1'b0});

        else if (opcode == `OPC_JALR || opcode == `OPC_LOAD || opcode == `OPC_ARI_ITYPE)

            imm = $signed(instr[31:20]);

        else if (opcode == `OPC_BRANCH)

            imm = $signed({instr[31], instr[7], instr[30:25], instr[11:8], 1'b0});

        else if (opcode == `OPC_STORE)

            imm = $signed({instr[31:25], instr[11:7]});

        else if (opcode == `OPC_CSR)

            imm = {{27'b0}, instr[19:15]};

    end
    
endmodule 