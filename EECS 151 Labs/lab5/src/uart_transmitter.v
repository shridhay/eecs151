module uart_transmitter #(
    parameter CLOCK_FREQ = 125_000_000,
    parameter BAUD_RATE = 115_200)
(
    input clk,
    input reset,

    input [7:0] data_in,
    input data_in_valid,

    output data_in_ready,
    output serial_out
);
    localparam SYMBOL_EDGE_TIME = CLOCK_FREQ / BAUD_RATE;
    localparam CLOCK_COUNTER_WIDTH = $clog2(SYMBOL_EDGE_TIME);

    reg [9:0] tx_shift;
    reg [3:0] bit_counter;
    reg tx_running;
    reg [CLOCK_COUNTER_WIDTH-1:0] clock_counter;
    wire symbol_edge;

    assign tx_running = (bit_counter != 10);
    assign symbol_edge = clock_counter == (SYMBOL_EDGE_TIME - 1);
    assign serial_out = tx_shift[0];
    assign data_in_ready = !tx_running;

    always @(posedge clk) begin

        if (reset) begin

            clock_counter <= 0;

            bit_counter <= 10;

            tx_shift <= 1;
        
        end else begin

            if (data_in_valid && !tx_running) begin

                tx_shift <= {1'b1, data_in, 1'b0};

                bit_counter <= 0;

            end else begin

                if (symbol_edge) begin

                    clock_counter <= 0;

                    bit_counter <= bit_counter + 1;

                    tx_shift <= {1'b1, tx_shift[9:1]};

                end else begin

                    clock_counter <= clock_counter + 1;

                end
            
            end

        end

    end 

endmodule