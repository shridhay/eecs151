`include "opcode.vh"
module cpu #(
    parameter CPU_CLOCK_FREQ = 50_000_000,
    parameter RESET_PC = 32'h4000_0000,
    parameter BAUD_RATE = 115200,
    parameter N_VOICES = 1
) (
    input clk,
    input rst,
    input serial_in,
    output serial_out,
    input [1:0] switches,
    input [3:0] buttons, 
    input fifo_empty,

    input tx_ack,
    output reg tx_req,

    output fifo_rd_en,
    output reg [5:0] LEDS,
    output reg [23:0] mod_fcw,
    output reg [N_VOICES-1:0] [23:0] car_fcw,
    output reg [4:0] mod_shift, synth_shift,
    output reg [N_VOICES-1:0] note_en
);

    localparam STALL = 32'b00000000000000000000000000010011; //addi x0, x0, 0

    // BIOS Memory
    // Synchronous read: read takes one cycle
    // Synchronous write: write takes one cycle
    wire [11:0] bios_addra, bios_addrb;
    wire [31:0] bios_douta, bios_doutb;
    wire bios_ena, bios_enb;
    bios_mem bios_mem (
      .clk(clk),
      .ena(bios_ena),
      .addra(bios_addra),
      .douta(bios_douta),
      .enb(bios_enb),
      .addrb(bios_addrb),
      .doutb(bios_doutb)
    );

    // Data Memory
    // Synchronous read: read takes one cycle
    // Synchronous write: write takes one cycle
    // Write-byte-enable: select which of the four bytes to write
    wire [13:0] dmem_addr;
    wire [31:0] dmem_din, dmem_dout;
    wire [3:0] dmem_we;
    wire dmem_en;
    dmem dmem (
      .clk(clk),
      .en(dmem_en),
      .we(dmem_we),
      .addr(dmem_addr),
      .din(dmem_din),
      .dout(dmem_dout)
    );

    // Instruction Memory
    // Synchronous read: read takes one cycle
    // Synchronous write: write takes one cycle
    // Write-byte-enable: select which of the four bytes to write
    wire [31:0] imem_dina, imem_doutb;
    wire [13:0] imem_addra, imem_addrb;
    wire [3:0] imem_wea;
    wire imem_ena;
    imem imem (
      .clk(clk),
      .ena(imem_ena),
      .wea(imem_wea),
      .addra(imem_addra),
      .dina(imem_dina),
      .addrb(imem_addrb),
      .doutb(imem_doutb)
    );

    // Register file
    // Asynchronous read: read data is available in the same cycle
    // Synchronous write: write takes one cycle
    wire we;
    wire [4:0] ra1, ra2;
    wire [31:0] wd;
    wire [31:0] rd1, rd2;
    wire [4:0] wa;

    reg_file rf (
        .clk(clk),
        .we(we),
        .ra1(ra1), 
        .ra2(ra2), 
        .wa(wa),
        .wd(wd),
        .rd1(rd1), 
        .rd2(rd2)
    );

    // On-chip UART
    //// UART Receiver
    wire [7:0] uart_rx_data_out;
    wire uart_rx_data_out_valid;
    wire uart_rx_data_out_ready;
    //// UART Transmitter
    wire [7:0] uart_tx_data_in;
    wire uart_tx_data_in_valid;
    wire uart_tx_data_in_ready;
    uart #(
        .CLOCK_FREQ(CPU_CLOCK_FREQ),
        .BAUD_RATE(BAUD_RATE)
    ) on_chip_uart (
        .clk(clk),
        .reset(rst),

        .serial_in(serial_in),
        .data_out(uart_rx_data_out),
        .data_out_valid(uart_rx_data_out_valid),
        .data_out_ready(uart_rx_data_out_ready),

        .serial_out(serial_out),
        .data_in(uart_tx_data_in),
        .data_in_valid(uart_tx_data_in_valid),
        .data_in_ready(uart_tx_data_in_ready)
    );

    reg [31:0] tohost_csr = 0;

    // TODO: Your code to implement a fully functioning RISC-V core
    // Add as many modules as you want
    // Feel free to move the memory modules around

    /* *********************** SETUP ****************************** */
    reg [31:0] next_pc;
    reg [31:0] pc_1, pc_2, pc_3;
    reg [31:0] instr_1;
    reg [31:0] instr_2, instr_3;
    reg branch_taken_1, branch_taken_2, branch_taken_fr; // branching & pred

    reg [31:0] immediate_1, immediate_2, immediate_3; // immediates

    /* ALU stuff */
    reg [31:0] alu_in_a_2, alu_in_b_2, alu_out_2;
    reg [31:0] alu_out_3;
    /* regfile stuff */
    reg [31:0] rout1_1, rout2_1;
    reg [31:0] rout1_2, rout2_2, rout1_3;
    /* mem stuff */
    reg [31:0] data_out;
    
    /* START CLU */
    reg flush;
    reg csr_sel, csr_we;
    reg [2:0] pcsel;
    reg [1:0] asel, bsel, wbsel;
    reg regwen;
    reg replace_rout1, replace_rout2, replace_rs2;

    clu control(

      .instr_1(instr_1),
      .instr_2(instr_2),
      .instr_3(instr_3),
      .branch_pred(branch_taken_1),
      .branch_taken(branch_taken_2),
      .branch_taken_fr(branch_taken_fr),
      .clk(clk),
      .flush(flush),
      .replace_rout1(replace_rout1),
      .replace_rout2(replace_rout2),
      .replace_rs2(replace_rs2),
      .pcsel_signal(pcsel),
      .csr_sel(csr_sel),
      .csr_we(csr_we),
      .asel_signal(asel),
      .bsel_signal(bsel),
      .regwen_signal(regwen),
      .wbsel_signal(wbsel)

    );

    /* END CLU */

    /* Uart stuff */
    reg [31:0] instructions, cycles;

    always @(posedge clk) begin

      if (rst || alu_out_2 == 32'h80000018) begin

        instructions <= 0;
        cycles <= 0;

      end else begin

        if (instr_3 > 0 && instr_3 != STALL) instructions <= instructions + 1;
        cycles <= cycles + 1;

      end

    end

    /* *********************** STAGE 1 ***************************** */

    /* BEGIN SYNC BLOCK */
    //fetch instruction
    assign bios_addra = next_pc[13:2];
    assign imem_addrb = next_pc[15:2];

    always @(posedge clk) begin
      pc_1 <= next_pc;
    end
    assign instr_1 = pc_1[30] ? bios_douta : imem_doutb;
    // assign instr_1 = flush ? STALL : next_pc[30] ? bios_douta : imem_doutb;
    /* END SYNC BLOCK */

    /* Begin Decode & pred */
    wire [4:0] rs1_1;
    wire [4:0] rs2_1;
    reg [4:0] shamt_1;
    reg [4:0] rd_1;
    reg [2:0] funct3_1;
    reg [6:0] funct7_1;
    reg [6:0] opcode_1;

    decoder d_1(
        .instruction(instr_1),
        .rs1(rs1_1),
        .rs2(rs2_1),
        .shamt(shamt_1),
        .rd(rd_1),
        .funct3(funct3_1),
        .funct7(funct7_1),
        .opcode(opcode_1)
    );

    imm_gen igen_1(
      .instr(instr_1),
      .immediate(immediate_1)
    );

    branch_pred bpred(
      .instr(instr_1),
      .branch_taken(branch_taken_1)
    );
    /* End Decode & pred */

    /* Begin Drive RegFile */
    assign ra1 = rs1_1;
    assign ra2 = rs2_1;

    assign rout1_1 = rd1;
    assign rout2_1 = rd2;

    /* START FF */

    always @(posedge clk) begin
      pc_2 <= pc_1;
      immediate_2 <= immediate_1;
      branch_taken_2 <= branch_taken_1;

      instr_2 <= instr_1;
      if (flush) instr_2 <= STALL;

      rout1_2 <= rout1_1; //TODO add forwarding logic for regfiles
      rout2_2 <= rout2_1;
      if (replace_rout1) rout1_2 <= data_out;
      if (replace_rout2) rout2_2 <= data_out;
      
    end

    /* END FF */

    /* *********************** STAGE 2 ***************************** */
    reg [4:0] rs1_2;
    reg [4:0] rs2_2;
    reg [4:0] rd_2;
    reg [4:0] shamt_2;
    reg [2:0] funct3_2;
    reg [6:0] funct7_2;
    reg [6:0] opcode_2;

    decoder d_2(
        .instruction(instr_2),
        .rs1(rs1_2),
        .rs2(rs2_2),
        .rd(rd_2),
        .shamt(shamt_2),
        .funct3(funct3_2),
        .funct7(funct7_2),
        .opcode(opcode_2)
    );

    branch_comp b_comp(
      .r1(asel == 2'b10 ? data_out : rout1_2),
      .r2(bsel == 2'b10 ? data_out : rout2_2),
      .b_type(funct3_2),
      .branch_taken(branch_taken_fr)
    );

    /* Begin A&B muxs and ALU */
    mux3 a(
      .A(rout1_2),
      .B(pc_2),
      .C(data_out),
      .sel(asel),
      .out(alu_in_a_2)
    );

    mux3 b(
      .A(rout2_2),
      .B(immediate_2),
      .C(data_out),
      .sel(bsel),
      .out(alu_in_b_2)
    );
    
    alu al (
      .a(alu_in_a_2),
      .b(alu_in_b_2),
      .f3(funct3_2),
      .shamt(shamt_2),
      .instr_30(instr_2[30]),
      .opcode(opcode_2),
      .out(alu_out_2),
      .csrsel(csr_sel)
    );
    /* End A&B muxs and ALU */

    /* *********************** STAGE 2.5 (memory + pipeline) ***************************** */
    /* Start ff */

    always @(posedge clk) begin
      pc_3 <= pc_2;
      instr_3 <= instr_2;
      alu_out_3 <= alu_out_2;
      rout1_3 <= asel == 2'b10 ? data_out : rout1_2;
      immediate_3 <= immediate_2;
    end
    /* End ff */

    /* Begin drive bios, I/O, dmem, Imem */
    reg [3:0] mem_write_enable;
    reg [31:0] data_to_mem;

    storer store(
      
      .instr(instr_2),
      .alu_out(alu_out_2),
      .data_in(replace_rs2 ? data_out : rout2_2),
      .data_out(data_to_mem),
      .mask(mem_write_enable)

    );
    // /* UART */
    reg [31:0] uart_out, IO_out;
    assign uart_rx_data_out_ready = (opcode_2 == `OPC_LOAD && alu_out_2 == 32'h80000004) ? 1'b1 : 1'b0; // drive uart in s2
    //moved to s3: assign uart_out = alu_out_3 == 32'h80000000 ? {30'b0, uart_rx_data_out_valid, uart_tx_data_in_ready} : alu_out_3 == 32'h80000004 ? {24'b0, uart_rx_data_out} : alu_out_3 == 32'h80000010 ? cycles : alu_out_3 == 32'h80000014 ? instructions : 32'b0; // read uart s3 

    // write uart
    assign uart_tx_data_in = replace_rs2 ? data_out[7:0] : rout2_2[7:0];
    assign uart_tx_data_in_valid = (opcode_2 == `OPC_STORE && alu_out_2 == 32'h80000008) ? 1'b1 : 1'b0;

    /* SYNTH */
    assign fifo_rd_en = (opcode_2 == `OPC_LOAD && alu_out_2 == 32'h80000024) ? 1'b1 : 1'b0; // drive fifo in s2
    
    always @(posedge clk) begin

      if (rst) LEDS <= 0;

      if (opcode_2 == `OPC_STORE) begin
        
        case (alu_out_2)

        32'h80000030: LEDS <= data_to_mem[5:0];
        32'h80000100: car_fcw[0] <= data_to_mem[23:0];
        // 32'h80000100: car_fcw[0] <= 24'd2796202;
        32'h80000200: mod_fcw <= data_to_mem[23:0];
        // 32'h80000200: mod_fcw <= 24'd1118481;
        32'h80000204: mod_shift <= data_to_mem[4:0];
        32'h80000208: note_en <= data_to_mem[N_VOICES-1:0];
        // 32'h80000208: note_en <= 1;

        32'h8000020C: synth_shift <= data_to_mem[4:0];
        32'h80000210: tx_req <= data_to_mem[0];

        endcase

      end

    end

    assign bios_addrb = alu_out_2[13:2];
    assign bios_ena = 1'b1; // always enable bc potential read in decode stage
    assign bios_enb = (instr_2[6:0] == `OPC_STORE) || (instr_2[6:0] == `OPC_LOAD) ? 1'b1 : 1'b0;

    assign imem_addra = alu_out_2[15:2];
    assign imem_dina = data_to_mem;
    assign imem_ena = 1'b1; // always enable bc potential read in decode stage
    assign imem_wea = (instr_2[6:0] == `OPC_STORE && alu_out_2[31:29] == 3'b001 && pc_2[30] == 1'b1) ? mem_write_enable : 4'b0000;

    assign dmem_en = (instr_2[6:0] == `OPC_STORE || instr_2[6:0] == `OPC_LOAD) && alu_out_2[31:30] == 2'b00 && alu_out_2[28] == 1'b1 ? 1'b1 : 1'b0;
    assign dmem_we = (instr_2[6:0] == `OPC_STORE) ? mem_write_enable : 4'b0000;
    assign dmem_addr = alu_out_2[15:2];
    assign dmem_din = (instr_2[6:0] == `OPC_STORE) ? data_to_mem : 32'b0;

    /* *********************** STAGE 3 ***************************** */
    reg [4:0] rs1_3;
    reg [4:0] rs2_3;
    reg [4:0] shamt_3;
    reg [4:0] rd_3;
    reg [2:0] funct3_3;
    reg [6:0] funct7_3;
    reg [6:0] opcode_3;

    decoder d_3(
        .instruction(instr_3),
        .rs1(rs1_3),
        .rs2(rs2_3),
        .shamt(shamt_3),
        .rd(rd_3),
        .funct3(funct3_3),
        .funct7(funct7_3),
        .opcode(opcode_3)
    );

    // Load from memory
    reg [31:0] mem_out_raw, mem_out, wb_data;

    /* Grab stuff from mem */
     mux2 bios_or_dmem(

      .A(bios_doutb),
      .B(dmem_dout),
      .sel(alu_out_3[30]),
      .out(mem_out_raw)

    );

     /* Grab mem out and pass into loader */
    loader load(
     
      .instr(instr_3),
      .mem_out_raw(mem_out_raw),
      .alu_out(alu_out_3),
      .mem_out(mem_out)
    
    );

    always @(*) begin

      case (alu_out_3)

        32'h80000000: IO_out = {30'b0, uart_rx_data_out_valid, uart_tx_data_in_ready};
        32'h80000004: IO_out = {24'b0, uart_rx_data_out};
        32'h80000010: IO_out = cycles;
        32'h80000014: IO_out = instructions;
        32'h80000020: IO_out = {31'b0, fifo_empty};
        32'h80000024: IO_out = {29'b0, buttons[3:1]};
        32'h80000028: IO_out = {30'b0, switches[1:0]};
        32'h80000214: IO_out = {31'b0, tx_ack};
        default: IO_out = 32'b0;

      endcase
    
    end

    mux2 mem_or_uart(

      .A(IO_out),
      .B(mem_out),
      .sel(alu_out_3[31] == 1'b1 ? 1'b1 : 1'b0),
      // .sel(1'b1),
      .out(wb_data)

    );

    mux4 wb(

      .A(alu_out_3),
      .B(pc_3 + 4),
      .C(wb_data),
      .D(pc_3), // not needed?
      .sel(wbsel),
      .out(data_out)

    );

    // write to reg file if needed
    assign we = regwen;
    assign wa = rd_3;
    assign wd = data_out;

    /* Begin CSR */
    always @(posedge clk) begin
      // potentially forward lol
      if (csr_we) tohost_csr <= csr_sel ? rout1_3 : immediate_3;
    end 
    /* End CSR */

    // add pc!
    always @(*) begin

      if (rst) next_pc = RESET_PC;

      else begin

        case (pcsel)

          3'b000: next_pc = pc_1 + 4;
          3'b001: next_pc = pc_1 + immediate_1;
          3'b010: next_pc = pc_2 + immediate_2;
          3'b011: next_pc = pc_2 + 4;
          default: next_pc = alu_out_2; // jalr

        endcase

      end

    end

    // // /* pc properly reset */
    // assert property (@(posedge clk) rst |-> (next_pc == RESET_PC));

    // /* store masks */
    // assert property (@(posedge clk) disable iff (rst) opcode_2 == `OPC_STORE && funct3_2 == `FNC_SW |-> (mem_write_enable == 4'b1111));
    // assert property (@(posedge clk) disable iff (rst) opcode_2 == `OPC_STORE && funct3_2 == `FNC_SH |-> (alu_out_2[1] ? mem_write_enable == 4'b1100 : mem_write_enable == 4'b0011));
    // assert property (@(posedge clk) disable iff (rst) opcode_2 == `OPC_STORE && funct3_2 == `FNC_SB |-> (mem_write_enable == 4'b0001 << alu_out_2[1:0]));
    
    // // For lb instructions, the upper 24 bits of data written to the regfile should be all 0s or 1s. 
    // // For lh instructions, the upper 16 bits of data written to the regfile should be all 0s or 1s.
    // /* LH */
    // assert property (@(posedge clk) disable iff (rst) opcode_3 == `OPC_LOAD && funct3_3 == `FNC_LH  |-> (mem_out[31:16] == 16'hFFFF || mem_out[31:16] == 16'h0000));
    // assert property (@(posedge clk) disable iff (rst) opcode_3 == `OPC_LOAD && funct3_3 == `FNC_LHU |-> (mem_out[31:16] == 16'b0));
    // /* LB */
    // assert property (@(posedge clk) disable iff (rst) opcode_3 == `OPC_LOAD && funct3_3 == `FNC_LB |-> (mem_out[31:8] == 24'hFFFFFF || mem_out[31:8] == 24'h000000));
    
    // /* LBU */
    // assert property (@(posedge clk) disable iff (rst) opcode_3 == `OPC_LOAD && funct3_3 == `FNC_LBU |-> (mem_out[31:8] == 24'b0));

    // /* X0 = 0 */
    // assert property (@(posedge clk) (ra1 == 0) |-> rd1 == 0);
    // assert property (@(posedge clk) (ra2 == 0) |-> rd2 == 0);

endmodule
