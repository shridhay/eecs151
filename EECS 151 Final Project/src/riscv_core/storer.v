`include "opcode.vh"
module storer(
    input [31:0] instr,
    input [31:0] alu_out,
    input [31:0] data_in,
    output [31:0] data_out,
    output [3:0] mask
);

wire [6:0] opcode;
wire [2:0] funct3;
wire [1:0] offset;

assign opcode = instr[6:0];
assign funct3 = instr[14:12];
assign offset = alu_out[1:0];

reg [3:0] mask_reg;
reg [31:0] data_out_reg;


assign data_out = data_out_reg;
assign mask = mask_reg;

always @(*) begin

    mask_reg = 4'b0000;
    data_out_reg = 32'b0;

    if (opcode == `OPC_STORE) begin
   

        case (funct3)            

            `FNC_SW: begin

                mask_reg = 4'b1111;
                data_out_reg = data_in;
                
            end

            `FNC_SH: begin

                case (offset) 

                2'd0, 2'd1: begin
                    mask_reg = 4'b0011;
                    data_out_reg = data_in;  
                end
                2'd2, 2'd3: begin
                    mask_reg = 4'b1100;
                    data_out_reg = data_in << 16;
                end

                endcase

            end
            `FNC_SB: begin
                mask_reg = 4'b1111;
                case (offset)
                    2'b00: begin
                        mask_reg = 4'b0001;
                    end
                    2'b01: begin
                        mask_reg = 4'b0010;
                    end
                    2'b10: begin
                        mask_reg = 4'b0100;
                    end 
                    2'b11: begin
                        mask_reg = 4'b1000;
                    end
                endcase
                data_out_reg = data_in << (offset * 8);
            end
            default: begin
                mask_reg = 4'b0000;
                data_out_reg = 32'b0;
            end
        endcase

    end

end
endmodule