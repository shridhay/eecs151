`include "opcode.vh"

module clu (

    input [31:0] instr_1,
    input [31:0] instr_2,
    input [31:0] instr_3,
    input        branch_pred,
    input        branch_taken,
    input        branch_taken_fr,
    input        clk,
    output       flush,
    output       replace_rout1,
    output       replace_rout2,
    output       replace_rs2,
    output [2:0] pcsel_signal,
    output       csr_sel,
    output       csr_we,
    output [1:0] asel_signal,
    output [1:0] bsel_signal,
    output       regwen_signal,
    output [1:0] wbsel_signal

);

reg [2:0] pcsel_reg;
reg flush_reg;
reg [1:0] asel_reg;
reg [1:0] bsel_reg;
reg regwen_reg;
reg [1:0] wbsel_reg;
reg csr_sel_reg;
reg csr_we_reg;
reg replace_rout1_reg;
reg replace_rout2_reg;
reg replace_rs2_reg;

assign flush = flush_reg;
assign pcsel_signal = pcsel_reg;
assign asel_signal = asel_reg;
assign bsel_signal = bsel_reg;
assign regwen_signal = regwen_reg;
assign wbsel_signal = wbsel_reg;
assign replace_rout1 = replace_rout1_reg;
assign replace_rout2 = replace_rout2_reg;
assign replace_rs2 = replace_rs2_reg;
assign csr_sel = csr_sel_reg;
assign csr_we = csr_we_reg;

reg [6:0] op_1, op_2, op_3;
reg [2:0] fn3_1, fn3_2, fn3_3;

always @(*) begin

    op_1 = instr_1[6:0];
    op_2 = instr_2[6:0];
    op_3 = instr_3[6:0];
    fn3_1 = instr_1[14:12];
    fn3_2 = instr_2[14:12];
    fn3_3 = instr_3[14:12];

end

  /* START S1 */
  /* Signals to drive:
    - pcsel
  */
always @(*) begin

    if (op_1 == `OPC_JAL || op_1 == `OPC_BRANCH && branch_pred) begin

        pcsel_reg = 3'b001; // pc + imm

    end else begin

        pcsel_reg = 3'b000; // pc + 4

    end

    flush_reg = 0;

    if ((branch_taken != branch_taken_fr) && op_2 == `OPC_BRANCH || op_2 == `OPC_JALR) begin

        flush_reg = 1; 

        if (branch_taken_fr) begin

            pcsel_reg = 3'b010; // we (didn't pred b) predicted pc+4, but it should be pc+imm

        end else begin

            pcsel_reg = 3'b011; // we predicted pc+imm, but it should be pc+4

        end

        if (op_2 == `OPC_JALR) pcsel_reg = 3'b100; // we predicted pc+imm, but it should be pc+4

    end

end

  /* END S1 */

    /* START S2 */
    /* Signals to drive:
        - asel
        - bsel
    */
reg [4:0] rs1_ex, rs2_ex, rd_mem, rs1_de, rs2_de;

always @(*) begin

    case (op_2)

        `OPC_ARI_RTYPE: begin

            asel_reg = 2'b00;
            bsel_reg = 2'b00;

        end 

        `OPC_ARI_ITYPE: begin

            asel_reg = 2'b00;
            bsel_reg = 2'b01;

        end 

        `OPC_LOAD: begin

            asel_reg = 2'b00;
            bsel_reg = 2'b01;

        end 
        
        `OPC_STORE: begin

            asel_reg = 2'b00;
            bsel_reg = 2'b01;

        end

        `OPC_LUI: begin

            asel_reg = 2'b01;
            bsel_reg = 2'b01;

        end

        `OPC_AUIPC: begin

            asel_reg = 2'b01;
            bsel_reg = 2'b01;

        end

        `OPC_JALR: begin

            asel_reg = 2'b00;
            bsel_reg = 2'b01;

        end 

        `OPC_CSR: begin

            asel_reg = 2'b00;
            bsel_reg = 2'b00;

        end 

        default: begin

            asel_reg = 2'b00;
            bsel_reg = 2'b00;

        end

    endcase

    rs1_ex = instr_2[19:15];
    rs2_ex = instr_2[24:20];
    rs1_de = instr_1[19:15];
    rs2_de = instr_1[24:20];
    rd_mem = instr_3[11:7];

    replace_rout1_reg = 1'b0;
    replace_rout2_reg = 1'b0;
    replace_rs2_reg = 1'b0;

    if (regwen_reg && rd_mem != 0) begin // if we are not writing to zero --> potential hazard

        /* 2 cycle ahead hazard detection: decode from regfile needs update */
        if (op_1 != `OPC_LUI && op_1 != `OPC_AUIPC && op_1 != `OPC_JAL) begin

            if (rd_mem == rs1_de) begin

                replace_rout1_reg = 1'b1; 
    
            end 
            if (op_1 != `OPC_ARI_ITYPE && op_1 != `OPC_LOAD && rd_mem == rs2_de) begin
    
                replace_rout2_reg = 1'b1;
    
            end

        end

        /* Check if instr in execute is using a register:
            - forward to amux and bmux (also input to branch comp if we set asel and bsel to 2'b10)
                - bmux: if it is not using immediate then forward to bmux
            - forward to rs2 (for stores)
        */
        if (op_2 != `OPC_LUI && op_2 != `OPC_AUIPC && op_2 != `OPC_JAL) begin

            if (rd_mem == rs1_ex) begin
                    
                asel_reg = 2'b10;
    
            end 

            if (op_2 != `OPC_ARI_ITYPE && op_2 != `OPC_LOAD && rd_mem == rs2_ex) begin
                
                replace_rs2_reg = 1'b1;

                if (bsel_reg != 2'b01) bsel_reg = 2'b10;
                
            end

        end

    end

end

    /* END S2 */

    /* START S3 */
    /* Signals to drive:
        - regwen
        - websel
    */
always @(*) begin

    case (op_3)

        `OPC_ARI_RTYPE: begin

            regwen_reg = 1'b1;
            wbsel_reg = 2'b00;

        end 

        `OPC_ARI_ITYPE: begin

            regwen_reg = 1'b1;
            wbsel_reg = 2'b00;

        end 

        `OPC_LOAD: begin

            regwen_reg = 1'b1;
            wbsel_reg = 2'b10;

        end 
        
        `OPC_STORE: begin

            regwen_reg = 1'b0;
            wbsel_reg = 2'b00;

        end 

        `OPC_LUI: begin

            regwen_reg = 1'b1;
            wbsel_reg = 2'b00;

        end

        `OPC_AUIPC: begin

            regwen_reg = 1'b1;
            wbsel_reg = 2'b00;

        end

        `OPC_JAL: begin

            regwen_reg = 1'b1;
            wbsel_reg = 2'b01;

        end

        `OPC_JALR: begin

            regwen_reg = 1'b1;
            wbsel_reg = 2'b01;

        end 
        
        `OPC_CSR: begin

            regwen_reg = 1'b0;
            wbsel_reg = 2'b00;

        end

        default: begin

            regwen_reg = 1'b0;
            wbsel_reg = 2'b00;
            
        end

    endcase

end
    /* END S3 */

    /* START CSR */

    // assign csr_sel = ((op_2 == `OPC_CSR) && (fn3_2 == 3'b001)) ? 1'b1 : 1'b0;
    // assign csr_we = (op_2 == `OPC_CSR) ? 1'b1 : 1'b0;

    always @(*) begin

        csr_sel_reg = 1'b0;
        csr_we_reg = 1'b0;

        if (op_3 == `OPC_CSR) begin

            csr_we_reg = 1'b1;
            
            if (fn3_3 == 3'b001) begin

                csr_sel_reg = 1'b1;

            end 

        end

    end 

    /* END CSR */


endmodule