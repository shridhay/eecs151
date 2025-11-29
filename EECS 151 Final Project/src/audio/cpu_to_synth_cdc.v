module cpu_to_synth_cdc #(
    parameter N_VOICES = 1
)(
    input cpu_clk,
    input [N_VOICES-1:0] [23:0] cpu_carrier_fcws,
    input [23:0] cpu_mod_fcw,
    input [4:0] cpu_mod_shift,
    input [N_VOICES-1:0] cpu_note_en,
    input [4:0] cpu_synth_shift,
    input cpu_req,
    output cpu_ack,
    input synth_clk,
    output reg [N_VOICES-1:0] [23:0] synth_carrier_fcws,
    output reg [23:0] synth_mod_fcw,
    output reg [4:0] synth_mod_shift,
    output reg [N_VOICES-1:0] synth_note_en,
    output reg [4:0] synth_synth_shift
);

    reg synth_en;

    synchronizer #(.WIDTH(1)) cpu_to_synth (
        .async_signal(cpu_req),
        .clk(synth_clk),
        .sync_signal(synth_en)
    );

    always @(posedge synth_clk) begin

        if (synth_en) begin

            synth_carrier_fcws[0] <= cpu_carrier_fcws[0];
            synth_mod_fcw <= cpu_mod_fcw;
            synth_mod_shift <= cpu_mod_shift;
            synth_note_en <= cpu_note_en;
            synth_synth_shift <= cpu_synth_shift;

        end

    end 

    synchronizer #(.WIDTH(1)) synth_out (
        .async_signal(synth_en),
        .clk(cpu_clk),
        .sync_signal(cpu_ack)
    );

endmodule