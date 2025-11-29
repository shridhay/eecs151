`include "opcode.vh"

module loader(
    input [31:0] instr,
    input [31:0] alu_out,
    input [31:0] mem_out_raw,
    output [31:0] mem_out
);

wire [6:0] opcode;
wire [2:0] funct3;
wire [1:0] offset;

assign opcode = instr[6:0];
assign funct3 = instr[14:12];
assign offset = alu_out[1:0];

reg [31:0] mem_out_reg;
reg [3:0] mask;

assign mem_out = mem_out_reg;

always @(*) begin

    mem_out_reg = 0;

    if (opcode == `OPC_LOAD) begin

        case (funct3)

            `FNC_LW: begin

                mem_out_reg = mem_out_raw;

            end

            `FNC_LH: begin
                case (offset) 
                    2'd3, 2'd2: begin
                        mem_out_reg = $signed(mem_out_raw[31:16]);
                    end
                    default: begin
                        mem_out_reg = $signed(mem_out_raw[15:0]);
                    end
                endcase
            end 

            `FNC_LB: begin

                mask = 4'b0001 << offset;
                case (mask)
                    4'b0001: begin
                        mem_out_reg = $signed(mem_out_raw[7:0]);
                    end
                    4'b0010: begin
                        mem_out_reg = $signed(mem_out_raw[15:8]);
                    end
                    4'b0100: begin
                        mem_out_reg = $signed(mem_out_raw[23:16]);
                    end
                    4'b1000: begin
                        mem_out_reg = $signed(mem_out_raw[31:24]);
                    end
                    default: begin
                        mem_out_reg = 32'b0;
                    end
                endcase

            end

            `FNC_LBU: begin

                mask = 4'b0001 << offset;
                case (mask)
                    4'b0001: begin
                        mem_out_reg = $signed({24'b0, mem_out_raw[7:0]});
                    end
                    4'b0010: begin
                        mem_out_reg = $signed({24'b0, mem_out_raw[15:8]});
                    end
                    4'b0100: begin
                        mem_out_reg = $signed({24'b0, mem_out_raw[23:16]});
                    end
                    4'b1000: begin
                        mem_out_reg = $signed({24'b0, mem_out_raw[31:24]});
                    end
                    default: begin
                        mem_out_reg = 32'b0;
                    end
                endcase

            end

            `FNC_LHU: begin

                case (offset) 
                    2'd3, 2'd2: begin
                        mem_out_reg = mem_out_raw[31:16];
                    end
                    default: begin
                        mem_out_reg = mem_out_raw[15:0];
                    end
                endcase

            end

            default: begin
                mask = 4'b0000;
                mem_out_reg = 32'b0;
            end

        endcase

    end


end

endmodule