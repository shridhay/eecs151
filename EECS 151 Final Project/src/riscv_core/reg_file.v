module reg_file (

    input clk,
    input we,
    input [4:0] ra1, ra2, wa,
    input [31:0] wd,
    output [31:0] rd1, rd2
    
);
    parameter DEPTH = 32;
    reg [31:0] mem [0:31];


    always @(posedge clk) begin

        mem[0] <= 0;

        if (we && (wa != 0)) mem[wa] <= wd;

    end

    assign rd1 = ra1 == 0 ? 32'b0 : mem[ra1];
    assign rd2 = ra2 == 0 ? 32'b0 : mem[ra2];


    // reg [31:0] x0, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x12, x13, x14, x15, x16, x17, x18, x19, x20, x21, x22, x23, x24, x25, x26, x27, x28, x29, x30, x31, x32;
    // assign x0 = mem[0];
    // assign x1 = mem[1];
    // assign x2 = mem[2];
    // assign x3 = mem[3];
    // assign x4 = mem[4];
    // assign x5 = mem[5];
    // assign x6 = mem[6];
    // assign x7 = mem[7];
    // assign x8 = mem[8];
    // assign x9 = mem[9];
    // assign x10 = mem[10];
    // assign x12 = mem[12];
    // assign x13 = mem[13];
    // assign x14 = mem[14];
    // assign x15 = mem[15];
    // assign x16 = mem[16];
    // assign x17 = mem[17];
    // assign x18 = mem[18];
    // assign x19 = mem[19];
    // assign x20 = mem[20];
    // assign x21 = mem[21];
    // assign x22 = mem[22];
    // assign x23 = mem[23];
    // assign x24 = mem[24];
    // assign x25 = mem[25];
    // assign x26 = mem[26];
    // assign x27 = mem[27];
    // assign x28 = mem[28];
    // assign x29 = mem[29];
    // assign x30 = mem[30];
    // assign x31 = mem[31];

    
endmodule
