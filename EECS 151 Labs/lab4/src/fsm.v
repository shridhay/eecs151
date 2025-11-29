module fsm #(
    parameter CYCLES_PER_SECOND = 125_000_000,
    parameter WIDTH = $clog2(CYCLES_PER_SECOND)
)(
    input clk,
    input rst,
    input [2:0] buttons,
    output [3:0] leds,
    output reg [23:0] fcw,
    output  [1:0] leds_state
);

    wire [1:0] addr;
    wire wr_en, rd_en;
    wire [23:0] d_in;
    wire [23:0] d_out;

    fcw_ram notes (
        .clk(clk),
        .rst(rst),
        .rd_en(rd_en),
        .wr_en(wr_en),
        .addr(addr),
        .d_in(d_in),
        .d_out(d_out)
    );

    reg [26:0] counter; 
    reg [1:0] note;
    reg write_reg;
    reg read_reg;
    reg [1:0] curr_state;
    reg [1:0] nxt_state;

    localparam REGULAR_PLAY = 2'd0;
    localparam REVERSE_PLAY = 2'd1;
    localparam PAUSED = 2'd2;
    localparam EDIT = 2'd3;

    assign leds_state = curr_state;
    assign d_in = fcw;
    assign addr = note;
    assign wr_en = write_reg;
    assign rd_en = read_reg;

    assign leds[0] = (addr == 0);
    assign leds[1] = (addr == 1);
    assign leds[2] = (addr == 2);
    assign leds[3] = (addr == 3);

    always @ (posedge clk) begin

        if (rst) begin

            counter <= 0;

            curr_state <= REGULAR_PLAY;            

            note <= 0;

        end else begin

            curr_state <= nxt_state;

            if (nxt_state == REGULAR_PLAY) begin

                if (counter == 125000000) begin

                    note <= note + 1;

                    counter <= 0;

                end else begin

                    counter <= counter + 1;

                end

            end 

            else if (nxt_state == REVERSE_PLAY) begin

                if (counter == 125000000) begin

                    note <= note - 1;

                    counter <= 0;

                end else begin

                    counter <= counter + 1;

                end

            end 

        end

    end

    always @(*) begin

        if (rst) begin

            nxt_state = REGULAR_PLAY;         

            read_reg = 1;

            write_reg = 0;
   
        end else begin

            write_reg = 0;

            case (curr_state)

                REGULAR_PLAY:
                begin

                    nxt_state = REGULAR_PLAY;

                    if (buttons[0]) begin

                        nxt_state = PAUSED;

                    end

                    else if (buttons[1]) begin 

                        nxt_state = REVERSE_PLAY;

                    end

                    fcw = d_out;
                                
                end
                
                REVERSE_PLAY:
                begin

                    nxt_state = REVERSE_PLAY;

                    if (buttons[0]) begin

                        nxt_state = PAUSED;

                    
                    end

                    else if (buttons[1]) begin

                        nxt_state = REGULAR_PLAY;

                    end

                    fcw = d_out;

                end

                PAUSED:
                begin

                    nxt_state = PAUSED;

                    if (buttons[0]) begin

                        nxt_state = REGULAR_PLAY;

                    end

                    else if (buttons[2]) begin

                        nxt_state = EDIT; 

                    end

                    fcw = 0;
                    
                end
                    
                EDIT:
                begin

                    nxt_state = EDIT;
                    
                    fcw = d_out;

                    if (buttons[2]) begin

                        nxt_state = PAUSED;

                    end

                    else if (buttons[0]) begin

                        write_reg = 1;

                        fcw = d_out - 5000;

                    end

                    else if (buttons[1]) begin

                        write_reg = 1;

                        fcw = d_out + 5000;

                    end

                end

            endcase

        end

    end 

endmodule
