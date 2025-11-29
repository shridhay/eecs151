module fifo #(
    parameter WIDTH = 8,
    parameter DEPTH = 32,
    parameter POINTER_WIDTH = $clog2(DEPTH)
) (
    input clk, rst,

    // Write side
    input wr_en,
    input [WIDTH-1:0] din,
    output full,

    // Read side
    input rd_en,
    output reg [WIDTH-1:0] dout,
    output empty
);

    reg [POINTER_WIDTH-1:0] rptr;
    reg [POINTER_WIDTH-1:0] wptr;
    reg [WIDTH-1:0] circ_array [DEPTH-1:0];
    reg [DEPTH-1:0] counter;
    reg full_reg;
    reg empty_reg;

    assign full = (counter == DEPTH);
    assign empty = (counter == 0);

    integer i;

    always @(posedge clk) begin

        if (rst) begin

            for (i = 0; i < DEPTH; i = i + 1) begin

                circ_array[i] <= 0;

            end 

            rptr <= 0;

            wptr <= 0;

            counter <= 0;

        end else begin

            if (wr_en && rd_en && !full & !empty) begin

                dout <= circ_array[rptr];

                rptr <= rptr + 1;

                circ_array[wptr] <= din;

                wptr <= wptr + 1;

            end else begin 

                if (wr_en) begin

                    if (!full) begin

                        circ_array[wptr] <= din;
                        
                        wptr <= wptr + 1;

                        counter <= counter + 1;

                    end

                end

                if (rd_en) begin

                    if (!empty) begin

                        dout <= circ_array[rptr];

                        rptr <= rptr + 1;
                        
                        counter <= counter - 1;
                        
                    end

                end 

            end

        end

    end

    assert property (@(posedge clk) disable iff (rst) full |-> ##1 (wptr == $past(wptr)));
    assert property (@(posedge clk) disable iff (rst) empty|-> ##1 (rptr == $past(rptr)));
    assert property (@(posedge clk) rst |-> ##1 (rptr == 0) && (wptr == 0) && (full == 0));

endmodule