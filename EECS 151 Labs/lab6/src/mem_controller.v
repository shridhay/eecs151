module mem_controller #(
  parameter FIFO_WIDTH = 8
) (
  input clk,
  input rst,
  input rx_fifo_empty,
  input tx_fifo_full,
  input [FIFO_WIDTH-1:0] din,

  output rx_fifo_rd_en,
  output tx_fifo_wr_en,
  output [FIFO_WIDTH-1:0] dout,
  output [5:0] state_leds
); 

  localparam MEM_WIDTH = 8;   /* Width of each mem entry (word) */
  localparam MEM_DEPTH = 256; /* Number of entries */
  localparam NUM_BYTES_PER_WORD = MEM_WIDTH/8;
  localparam MEM_ADDR_WIDTH = $clog2(MEM_DEPTH); 

  reg [NUM_BYTES_PER_WORD-1:0] mem_we = 0;
  reg [MEM_ADDR_WIDTH-1:0] mem_addr;
  reg [MEM_WIDTH-1:0] mem_din;
  wire [MEM_WIDTH-1:0] mem_dout;


  memory #(
    .MEM_WIDTH(MEM_WIDTH),
    .DEPTH(MEM_DEPTH)
  ) mem(
    .clk(clk),
    .en(1'b1),
    .we(mem_we),
    .addr(mem_addr),
    .din(mem_din),
    .dout(mem_dout)
  );

  localparam 
    IDLE = 3'd0,
    READ_CMD = 3'd1,
    READ_ADDR = 3'd2,
    READ_DATA = 3'd3,
    READ_MEM_VAL = 3'd4,
    ECHO_VAL = 3'd5,
    WRITE_MEM_VAL = 3'd6;

  reg [2:0] curr_state;
  reg [2:0] next_state;

  reg read_reg;
  reg write_reg;
  reg [FIFO_WIDTH-1:0] d_out;

  assign rx_fifo_rd_en = read_reg;
  assign tx_fifo_wr_en = write_reg;
  assign dout = mem_dout;
  assign state_leds = {3'b0,curr_state};

  always @(posedge clk) begin

    if (rst) begin

      curr_state <= IDLE;
      
    end else begin

      /* state reg update */ 

      curr_state <= next_state;
      
    end 
    
  end

  reg [2:0] pkt_rd_cnt;
  reg [MEM_WIDTH-1:0] cmd;
  reg [MEM_WIDTH-1:0] addr;
  reg [MEM_WIDTH-1:0] data;

  always @(*) begin
    
   if (rst) begin

    next_state = IDLE;
    write_reg = 0;
    read_reg = 0;
    mem_we = 0;
    mem_addr = 0;
    mem_din = 0;
    d_out = 0;
    
    end else begin

      /* initial values to avoid latch synthesis */

      next_state = curr_state;
      mem_we = 0;
      mem_addr = 0;
      mem_din = 0;
      write_reg = 0;
      read_reg = 0;

      /* next state logic */

      case (curr_state)

        IDLE: begin

          if (!rx_fifo_empty) begin

            next_state = READ_CMD;
            read_reg = 1;

          end 
            
        end

        READ_CMD: begin

          if (!rx_fifo_empty) begin

            if (pkt_rd_cnt == 1) begin

              next_state = READ_ADDR;
            
            end

            read_reg = 1;

          end 

        end
      
        READ_ADDR: begin

          if (cmd == 8'd48 && pkt_rd_cnt == 2) begin

            next_state = READ_MEM_VAL;

          end else if (cmd == 8'd49 && !rx_fifo_empty) begin

            if (pkt_rd_cnt == 2) begin

              next_state = READ_DATA;

            end

            read_reg = 1;

          end 

        end

        READ_DATA: begin

          if (pkt_rd_cnt == 3) begin

            next_state = WRITE_MEM_VAL;
          
          end

        end
    
        WRITE_MEM_VAL: begin

          next_state = IDLE;
          mem_addr = addr;      
          mem_we = 1;
          mem_din = data;

        end

        READ_MEM_VAL: begin

          next_state = ECHO_VAL;
          mem_addr = addr;

        end 
        
        ECHO_VAL: begin

          next_state = IDLE;

          if (!tx_fifo_full) begin

            write_reg = 1;

          end

        end

      endcase
    
   end 

  end

  always @(posedge clk) begin

    if (rst) begin

      pkt_rd_cnt <= 0;
      cmd <= 0;
      addr <= 0;
      data <= 0;

    end else begin

      /* byte reading and packet counting */

      case (curr_state)

        IDLE: begin

          pkt_rd_cnt <= 1;

        end

        READ_CMD: begin

          if (!rx_fifo_empty) begin

            cmd <= din;
            pkt_rd_cnt <= pkt_rd_cnt + 1;

          end 

        end

        READ_ADDR: begin

          if (cmd == 8'd49) begin

            if (!rx_fifo_empty) begin

              addr <= din;
              pkt_rd_cnt <= pkt_rd_cnt + 1;
            
            end

          end else begin

            addr <= din;
            pkt_rd_cnt <= pkt_rd_cnt + 1;

          end 

        end

        READ_DATA: begin

          data <= din;
          pkt_rd_cnt <= pkt_rd_cnt + 1;
  
        end

      endcase

    end

  end

endmodule

