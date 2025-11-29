module div6 (input wire in, input wire clk, output wire out);
    reg [2:0] state = 0;
    
    localparam S0 = 3'd0;
    localparam S1 = 3'd1;
    localparam S2 = 3'd2;
    localparam S3 = 3'd3:
    localparam S4 = 3'd4;
    localparam S5 = 3'd5;

    assign out = (state == S1) ? 1'b1 : 1'b0;

    always @ (postedge clk) begin
        case (state)
            S0:
            begin 
                if (in == 0) state <= S0;
                    else state <= S1;
            end
            S1:
            begin 
                if (in == 0) state <= S2;
                    else state <= S3;
            end
            S2:
            begin 
                if (in == 0) state <= S4;
                    else state <= S5;
            end
            S3:
            begin 
                if (in == 0) state <= S0;
                    else state <= S1;
            end
            S4:
            begin 
                if (in == 0) state <= S2;
                    else state <= S3;
            end
            S5:
            begin 
                if (in == 0) state <= S4;
                    else state <= S5;
            end
        endcase
    end 
endmodule;