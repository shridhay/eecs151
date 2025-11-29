// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Mon Oct 30 14:01:39 2023
// Host        : c111-16.EECS.Berkeley.EDU running 64-bit Red Hat Enterprise Linux release 8.8 (Ootpa)
// Command     : write_verilog -force post_route.v
// Design      : z1top
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module button_parser
   (\saturating_counter_reg[0][4] ,
    E,
    \saturating_counter_reg[0][0] ,
    \saturating_counter_reg[0][0]_0 ,
    \temp_reg[0] ,
    \temp_reg[0]_0 ,
    WEA,
    p_0_in,
    BUTTONS_IBUF,
    CLK_125MHZ_FPGA_IBUF_BUFG,
    symbol_edge,
    \tx_shift_reg[0] ,
    switches_sync,
    \counter_reg[7] ,
    \counter_reg[7]_0 ,
    \counter_reg[7]_1 ,
    \counter_reg[7]_2 ,
    Q);
  output \saturating_counter_reg[0][4] ;
  output [0:0]E;
  output \saturating_counter_reg[0][0] ;
  output \saturating_counter_reg[0][0]_0 ;
  output [0:0]\temp_reg[0] ;
  output \temp_reg[0]_0 ;
  output [0:0]WEA;
  output p_0_in;
  input [0:0]BUTTONS_IBUF;
  input CLK_125MHZ_FPGA_IBUF_BUFG;
  input symbol_edge;
  input \tx_shift_reg[0] ;
  input switches_sync;
  input \counter_reg[7] ;
  input \counter_reg[7]_0 ;
  input \counter_reg[7]_1 ;
  input \counter_reg[7]_2 ;
  input [0:0]Q;

  wire [0:0]BUTTONS_IBUF;
  wire CLK_125MHZ_FPGA_IBUF_BUFG;
  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]WEA;
  wire \counter_reg[7] ;
  wire \counter_reg[7]_0 ;
  wire \counter_reg[7]_1 ;
  wire \counter_reg[7]_2 ;
  wire [0:0]debounced_signals;
  wire p_0_in;
  wire \saturating_counter_reg[0][0] ;
  wire \saturating_counter_reg[0][0]_0 ;
  wire \saturating_counter_reg[0][4] ;
  wire switches_sync;
  wire symbol_edge;
  wire [0:0]temp;
  wire [0:0]\temp_reg[0] ;
  wire \temp_reg[0]_0 ;
  wire [0:0]tmp2;
  wire \tx_shift_reg[0] ;

  debouncer button_debouncer
       (.CLK_125MHZ_FPGA_IBUF_BUFG(CLK_125MHZ_FPGA_IBUF_BUFG),
        .E(E),
        .Q(Q),
        .WEA(WEA),
        .\counter_reg[7] (\counter_reg[7] ),
        .\counter_reg[7]_0 (\counter_reg[7]_0 ),
        .\counter_reg[7]_1 (\counter_reg[7]_1 ),
        .\counter_reg[7]_2 (\counter_reg[7]_2 ),
        .debounced_signals(debounced_signals),
        .p_0_in(p_0_in),
        .\saturating_counter_reg[0][0]_0 (\saturating_counter_reg[0][0] ),
        .\saturating_counter_reg[0][0]_1 (\saturating_counter_reg[0][0]_0 ),
        .\saturating_counter_reg[0][4]_0 (\saturating_counter_reg[0][4] ),
        .switches_sync(switches_sync),
        .symbol_edge(symbol_edge),
        .temp(temp),
        .\temp_reg[0] (\temp_reg[0] ),
        .\temp_reg[0]_0 (\temp_reg[0]_0 ),
        .tmp2(tmp2),
        .\tx_shift_reg[0] (\tx_shift_reg[0] ));
  edge_detector button_edge_detector
       (.CLK_125MHZ_FPGA_IBUF_BUFG(CLK_125MHZ_FPGA_IBUF_BUFG),
        .debounced_signals(debounced_signals),
        .temp(temp));
  synchronizer button_synchronizer
       (.BUTTONS_IBUF(BUTTONS_IBUF),
        .CLK_125MHZ_FPGA_IBUF_BUFG(CLK_125MHZ_FPGA_IBUF_BUFG),
        .tmp2(tmp2));
endmodule

module debouncer
   (debounced_signals,
    \saturating_counter_reg[0][4]_0 ,
    E,
    \saturating_counter_reg[0][0]_0 ,
    \saturating_counter_reg[0][0]_1 ,
    \temp_reg[0] ,
    \temp_reg[0]_0 ,
    WEA,
    p_0_in,
    temp,
    symbol_edge,
    \tx_shift_reg[0] ,
    switches_sync,
    \counter_reg[7] ,
    \counter_reg[7]_0 ,
    \counter_reg[7]_1 ,
    \counter_reg[7]_2 ,
    Q,
    tmp2,
    CLK_125MHZ_FPGA_IBUF_BUFG);
  output [0:0]debounced_signals;
  output \saturating_counter_reg[0][4]_0 ;
  output [0:0]E;
  output \saturating_counter_reg[0][0]_0 ;
  output \saturating_counter_reg[0][0]_1 ;
  output [0:0]\temp_reg[0] ;
  output \temp_reg[0]_0 ;
  output [0:0]WEA;
  output p_0_in;
  input [0:0]temp;
  input symbol_edge;
  input \tx_shift_reg[0] ;
  input switches_sync;
  input \counter_reg[7] ;
  input \counter_reg[7]_0 ;
  input \counter_reg[7]_1 ;
  input \counter_reg[7]_2 ;
  input [0:0]Q;
  input [0:0]tmp2;
  input CLK_125MHZ_FPGA_IBUF_BUFG;

  wire \<const0> ;
  wire \<const1> ;
  wire CLK_125MHZ_FPGA_IBUF_BUFG;
  wire [0:0]E;
  wire \FSM_onehot_curr_state[6]_i_3_n_0 ;
  wire [0:0]Q;
  wire [0:0]WEA;
  wire \circ_array[7][7]_i_4_n_0 ;
  wire \counter_reg[7] ;
  wire \counter_reg[7]_0 ;
  wire \counter_reg[7]_1 ;
  wire \counter_reg[7]_2 ;
  wire [0:0]debounced_signals;
  wire p_0_in;
  wire [7:0]p_0_in__0;
  wire saturating_counter;
  wire \saturating_counter[0][7]_i_1_n_0 ;
  wire \saturating_counter[0][7]_i_4_n_0 ;
  wire \saturating_counter[0][7]_i_5_n_0 ;
  wire \saturating_counter_reg[0][0]_0 ;
  wire \saturating_counter_reg[0][0]_1 ;
  wire \saturating_counter_reg[0][4]_0 ;
  wire [7:0]\saturating_counter_reg[0]_0 ;
  wire switches_sync;
  wire symbol_edge;
  wire [0:0]temp;
  wire [0:0]\temp_reg[0] ;
  wire \temp_reg[0]_0 ;
  wire [0:0]tmp2;
  wire \tx_shift_reg[0] ;
  wire [15:0]wrapping_counter;
  wire wrapping_counter0_carry__0_n_0;
  wire wrapping_counter0_carry__0_n_4;
  wire wrapping_counter0_carry__0_n_5;
  wire wrapping_counter0_carry__0_n_6;
  wire wrapping_counter0_carry__0_n_7;
  wire wrapping_counter0_carry__1_n_0;
  wire wrapping_counter0_carry__1_n_4;
  wire wrapping_counter0_carry__1_n_5;
  wire wrapping_counter0_carry__1_n_6;
  wire wrapping_counter0_carry__1_n_7;
  wire wrapping_counter0_carry__2_n_5;
  wire wrapping_counter0_carry__2_n_6;
  wire wrapping_counter0_carry__2_n_7;
  wire wrapping_counter0_carry_n_0;
  wire wrapping_counter0_carry_n_4;
  wire wrapping_counter0_carry_n_5;
  wire wrapping_counter0_carry_n_6;
  wire wrapping_counter0_carry_n_7;
  wire \wrapping_counter[0]_i_2_n_0 ;
  wire \wrapping_counter[0]_i_3_n_0 ;
  wire \wrapping_counter[0]_i_4_n_0 ;
  wire \wrapping_counter[0]_i_5_n_0 ;
  wire \wrapping_counter[15]_i_1_n_0 ;
  wire [0:0]wrapping_counter_0;
  wire [3:0]NLW_wrapping_counter0_carry_CO_UNCONNECTED;
  wire [3:0]NLW_wrapping_counter0_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_wrapping_counter0_carry__1_CO_UNCONNECTED;

  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \FSM_onehot_curr_state[6]_i_1 
       (.I0(\saturating_counter_reg[0]_0 [4]),
        .I1(\saturating_counter_reg[0]_0 [5]),
        .I2(\saturating_counter_reg[0]_0 [0]),
        .I3(\saturating_counter_reg[0]_0 [1]),
        .I4(\FSM_onehot_curr_state[6]_i_3_n_0 ),
        .I5(temp),
        .O(\saturating_counter_reg[0][4]_0 ));
  LUT4 #(
    .INIT(16'hFF7F)) 
    \FSM_onehot_curr_state[6]_i_3 
       (.I0(\saturating_counter_reg[0]_0 [7]),
        .I1(\saturating_counter_reg[0]_0 [6]),
        .I2(\saturating_counter_reg[0]_0 [3]),
        .I3(\saturating_counter_reg[0]_0 [2]),
        .O(\FSM_onehot_curr_state[6]_i_3_n_0 ));
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAAB)) 
    \bit_counter[2]_i_2 
       (.I0(\tx_shift_reg[0] ),
        .I1(\saturating_counter[0][7]_i_4_n_0 ),
        .I2(\saturating_counter_reg[0]_0 [0]),
        .I3(\saturating_counter_reg[0]_0 [1]),
        .I4(\FSM_onehot_curr_state[6]_i_3_n_0 ),
        .I5(temp),
        .O(\saturating_counter_reg[0][0]_0 ));
  LUT6 #(
    .INIT(64'hFF01FFFFFF01FF01)) 
    \circ_array[7][7]_i_3 
       (.I0(temp),
        .I1(\FSM_onehot_curr_state[6]_i_3_n_0 ),
        .I2(\circ_array[7][7]_i_4_n_0 ),
        .I3(\counter_reg[7]_0 ),
        .I4(\counter_reg[7]_1 ),
        .I5(\counter_reg[7]_2 ),
        .O(\temp_reg[0]_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \circ_array[7][7]_i_4 
       (.I0(\saturating_counter_reg[0]_0 [1]),
        .I1(\saturating_counter_reg[0]_0 [0]),
        .I2(\saturating_counter_reg[0]_0 [5]),
        .I3(\saturating_counter_reg[0]_0 [4]),
        .O(\circ_array[7][7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \counter[7]_i_1__0 
       (.I0(\temp_reg[0]_0 ),
        .I1(\counter_reg[7] ),
        .O(\temp_reg[0] ));
  LUT6 #(
    .INIT(64'h00000000FFFFFFFE)) 
    \counter[7]_i_4 
       (.I0(\saturating_counter[0][7]_i_4_n_0 ),
        .I1(\saturating_counter_reg[0]_0 [0]),
        .I2(\saturating_counter_reg[0]_0 [1]),
        .I3(\FSM_onehot_curr_state[6]_i_3_n_0 ),
        .I4(temp),
        .I5(switches_sync),
        .O(\saturating_counter_reg[0][0]_1 ));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_i_17
       (.I0(p_0_in),
        .I1(Q),
        .O(WEA));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \saturating_counter[0][0]_i_1 
       (.I0(\saturating_counter_reg[0]_0 [0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \saturating_counter[0][1]_i_1 
       (.I0(\saturating_counter_reg[0]_0 [0]),
        .I1(\saturating_counter_reg[0]_0 [1]),
        .O(p_0_in__0[1]));
  LUT3 #(
    .INIT(8'h6A)) 
    \saturating_counter[0][2]_i_1 
       (.I0(\saturating_counter_reg[0]_0 [2]),
        .I1(\saturating_counter_reg[0]_0 [1]),
        .I2(\saturating_counter_reg[0]_0 [0]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \saturating_counter[0][3]_i_1 
       (.I0(\saturating_counter_reg[0]_0 [2]),
        .I1(\saturating_counter_reg[0]_0 [0]),
        .I2(\saturating_counter_reg[0]_0 [1]),
        .I3(\saturating_counter_reg[0]_0 [3]),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \saturating_counter[0][4]_i_1 
       (.I0(\saturating_counter_reg[0]_0 [4]),
        .I1(\saturating_counter_reg[0]_0 [3]),
        .I2(\saturating_counter_reg[0]_0 [2]),
        .I3(\saturating_counter_reg[0]_0 [0]),
        .I4(\saturating_counter_reg[0]_0 [1]),
        .O(p_0_in__0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \saturating_counter[0][5]_i_1 
       (.I0(\saturating_counter_reg[0]_0 [3]),
        .I1(\saturating_counter_reg[0]_0 [4]),
        .I2(\saturating_counter_reg[0]_0 [2]),
        .I3(\saturating_counter_reg[0]_0 [0]),
        .I4(\saturating_counter_reg[0]_0 [1]),
        .I5(\saturating_counter_reg[0]_0 [5]),
        .O(p_0_in__0[5]));
  LUT5 #(
    .INIT(32'hAA6AAAAA)) 
    \saturating_counter[0][6]_i_1 
       (.I0(\saturating_counter_reg[0]_0 [6]),
        .I1(\saturating_counter_reg[0]_0 [3]),
        .I2(\saturating_counter_reg[0]_0 [4]),
        .I3(\saturating_counter[0][7]_i_5_n_0 ),
        .I4(\saturating_counter_reg[0]_0 [5]),
        .O(p_0_in__0[6]));
  LUT3 #(
    .INIT(8'h01)) 
    \saturating_counter[0][7]_i_1 
       (.I0(\wrapping_counter[0]_i_2_n_0 ),
        .I1(wrapping_counter[0]),
        .I2(tmp2),
        .O(\saturating_counter[0][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0001111111111111)) 
    \saturating_counter[0][7]_i_2 
       (.I0(\wrapping_counter[0]_i_2_n_0 ),
        .I1(wrapping_counter[0]),
        .I2(\saturating_counter[0][7]_i_4_n_0 ),
        .I3(\saturating_counter_reg[0]_0 [3]),
        .I4(\saturating_counter_reg[0]_0 [6]),
        .I5(\saturating_counter_reg[0]_0 [7]),
        .O(saturating_counter));
  LUT6 #(
    .INIT(64'hA6AAAAAAAAAAAAAA)) 
    \saturating_counter[0][7]_i_3 
       (.I0(\saturating_counter_reg[0]_0 [7]),
        .I1(\saturating_counter_reg[0]_0 [5]),
        .I2(\saturating_counter[0][7]_i_5_n_0 ),
        .I3(\saturating_counter_reg[0]_0 [4]),
        .I4(\saturating_counter_reg[0]_0 [3]),
        .I5(\saturating_counter_reg[0]_0 [6]),
        .O(p_0_in__0[7]));
  LUT2 #(
    .INIT(4'hE)) 
    \saturating_counter[0][7]_i_4 
       (.I0(\saturating_counter_reg[0]_0 [4]),
        .I1(\saturating_counter_reg[0]_0 [5]),
        .O(\saturating_counter[0][7]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h7F)) 
    \saturating_counter[0][7]_i_5 
       (.I0(\saturating_counter_reg[0]_0 [1]),
        .I1(\saturating_counter_reg[0]_0 [0]),
        .I2(\saturating_counter_reg[0]_0 [2]),
        .O(\saturating_counter[0][7]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \saturating_counter_reg[0][0] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(saturating_counter),
        .D(p_0_in__0[0]),
        .Q(\saturating_counter_reg[0]_0 [0]),
        .R(\saturating_counter[0][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \saturating_counter_reg[0][1] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(saturating_counter),
        .D(p_0_in__0[1]),
        .Q(\saturating_counter_reg[0]_0 [1]),
        .R(\saturating_counter[0][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \saturating_counter_reg[0][2] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(saturating_counter),
        .D(p_0_in__0[2]),
        .Q(\saturating_counter_reg[0]_0 [2]),
        .R(\saturating_counter[0][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \saturating_counter_reg[0][3] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(saturating_counter),
        .D(p_0_in__0[3]),
        .Q(\saturating_counter_reg[0]_0 [3]),
        .R(\saturating_counter[0][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \saturating_counter_reg[0][4] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(saturating_counter),
        .D(p_0_in__0[4]),
        .Q(\saturating_counter_reg[0]_0 [4]),
        .R(\saturating_counter[0][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \saturating_counter_reg[0][5] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(saturating_counter),
        .D(p_0_in__0[5]),
        .Q(\saturating_counter_reg[0]_0 [5]),
        .R(\saturating_counter[0][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \saturating_counter_reg[0][6] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(saturating_counter),
        .D(p_0_in__0[6]),
        .Q(\saturating_counter_reg[0]_0 [6]),
        .R(\saturating_counter[0][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \saturating_counter_reg[0][7] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(saturating_counter),
        .D(p_0_in__0[7]),
        .Q(\saturating_counter_reg[0]_0 [7]),
        .R(\saturating_counter[0][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \temp[0]_i_1 
       (.I0(\FSM_onehot_curr_state[6]_i_3_n_0 ),
        .I1(\saturating_counter_reg[0]_0 [1]),
        .I2(\saturating_counter_reg[0]_0 [0]),
        .I3(\saturating_counter_reg[0]_0 [5]),
        .I4(\saturating_counter_reg[0]_0 [4]),
        .O(debounced_signals));
  LUT2 #(
    .INIT(4'hE)) 
    \tx_shift[9]_i_1 
       (.I0(\saturating_counter_reg[0][0]_0 ),
        .I1(symbol_edge),
        .O(E));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \tx_shift[9]_i_2 
       (.I0(temp),
        .I1(\FSM_onehot_curr_state[6]_i_3_n_0 ),
        .I2(\saturating_counter_reg[0]_0 [1]),
        .I3(\saturating_counter_reg[0]_0 [0]),
        .I4(\saturating_counter_reg[0]_0 [5]),
        .I5(\saturating_counter_reg[0]_0 [4]),
        .O(p_0_in));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 wrapping_counter0_carry
       (.CI(\<const0> ),
        .CO({wrapping_counter0_carry_n_0,NLW_wrapping_counter0_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(wrapping_counter[0]),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({wrapping_counter0_carry_n_4,wrapping_counter0_carry_n_5,wrapping_counter0_carry_n_6,wrapping_counter0_carry_n_7}),
        .S(wrapping_counter[4:1]));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 wrapping_counter0_carry__0
       (.CI(wrapping_counter0_carry_n_0),
        .CO({wrapping_counter0_carry__0_n_0,NLW_wrapping_counter0_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({wrapping_counter0_carry__0_n_4,wrapping_counter0_carry__0_n_5,wrapping_counter0_carry__0_n_6,wrapping_counter0_carry__0_n_7}),
        .S(wrapping_counter[8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 wrapping_counter0_carry__1
       (.CI(wrapping_counter0_carry__0_n_0),
        .CO({wrapping_counter0_carry__1_n_0,NLW_wrapping_counter0_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({wrapping_counter0_carry__1_n_4,wrapping_counter0_carry__1_n_5,wrapping_counter0_carry__1_n_6,wrapping_counter0_carry__1_n_7}),
        .S(wrapping_counter[12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 wrapping_counter0_carry__2
       (.CI(wrapping_counter0_carry__1_n_0),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({wrapping_counter0_carry__2_n_5,wrapping_counter0_carry__2_n_6,wrapping_counter0_carry__2_n_7}),
        .S({\<const0> ,wrapping_counter[15:13]}));
  LUT2 #(
    .INIT(4'h2)) 
    \wrapping_counter[0]_i_1 
       (.I0(\wrapping_counter[0]_i_2_n_0 ),
        .I1(wrapping_counter[0]),
        .O(wrapping_counter_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFEF)) 
    \wrapping_counter[0]_i_2 
       (.I0(\wrapping_counter[0]_i_3_n_0 ),
        .I1(\wrapping_counter[0]_i_4_n_0 ),
        .I2(wrapping_counter[13]),
        .I3(wrapping_counter[6]),
        .I4(wrapping_counter[9]),
        .I5(\wrapping_counter[0]_i_5_n_0 ),
        .O(\wrapping_counter[0]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hDFFF)) 
    \wrapping_counter[0]_i_3 
       (.I0(wrapping_counter[15]),
        .I1(wrapping_counter[3]),
        .I2(wrapping_counter[10]),
        .I3(wrapping_counter[2]),
        .O(\wrapping_counter[0]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \wrapping_counter[0]_i_4 
       (.I0(wrapping_counter[14]),
        .I1(wrapping_counter[8]),
        .I2(wrapping_counter[5]),
        .I3(wrapping_counter[4]),
        .O(\wrapping_counter[0]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \wrapping_counter[0]_i_5 
       (.I0(wrapping_counter[12]),
        .I1(wrapping_counter[1]),
        .I2(wrapping_counter[11]),
        .I3(wrapping_counter[7]),
        .O(\wrapping_counter[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \wrapping_counter[15]_i_1 
       (.I0(wrapping_counter[0]),
        .I1(\wrapping_counter[0]_i_2_n_0 ),
        .O(\wrapping_counter[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wrapping_counter_reg[0] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(wrapping_counter_0),
        .Q(wrapping_counter[0]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \wrapping_counter_reg[10] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(wrapping_counter0_carry__1_n_6),
        .Q(wrapping_counter[10]),
        .R(\wrapping_counter[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wrapping_counter_reg[11] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(wrapping_counter0_carry__1_n_5),
        .Q(wrapping_counter[11]),
        .R(\wrapping_counter[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wrapping_counter_reg[12] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(wrapping_counter0_carry__1_n_4),
        .Q(wrapping_counter[12]),
        .R(\wrapping_counter[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wrapping_counter_reg[13] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(wrapping_counter0_carry__2_n_7),
        .Q(wrapping_counter[13]),
        .R(\wrapping_counter[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wrapping_counter_reg[14] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(wrapping_counter0_carry__2_n_6),
        .Q(wrapping_counter[14]),
        .R(\wrapping_counter[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wrapping_counter_reg[15] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(wrapping_counter0_carry__2_n_5),
        .Q(wrapping_counter[15]),
        .R(\wrapping_counter[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wrapping_counter_reg[1] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(wrapping_counter0_carry_n_7),
        .Q(wrapping_counter[1]),
        .R(\wrapping_counter[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wrapping_counter_reg[2] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(wrapping_counter0_carry_n_6),
        .Q(wrapping_counter[2]),
        .R(\wrapping_counter[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wrapping_counter_reg[3] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(wrapping_counter0_carry_n_5),
        .Q(wrapping_counter[3]),
        .R(\wrapping_counter[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wrapping_counter_reg[4] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(wrapping_counter0_carry_n_4),
        .Q(wrapping_counter[4]),
        .R(\wrapping_counter[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wrapping_counter_reg[5] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(wrapping_counter0_carry__0_n_7),
        .Q(wrapping_counter[5]),
        .R(\wrapping_counter[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wrapping_counter_reg[6] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(wrapping_counter0_carry__0_n_6),
        .Q(wrapping_counter[6]),
        .R(\wrapping_counter[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wrapping_counter_reg[7] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(wrapping_counter0_carry__0_n_5),
        .Q(wrapping_counter[7]),
        .R(\wrapping_counter[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wrapping_counter_reg[8] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(wrapping_counter0_carry__0_n_4),
        .Q(wrapping_counter[8]),
        .R(\wrapping_counter[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wrapping_counter_reg[9] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(wrapping_counter0_carry__1_n_7),
        .Q(wrapping_counter[9]),
        .R(\wrapping_counter[15]_i_1_n_0 ));
endmodule

module edge_detector
   (temp,
    debounced_signals,
    CLK_125MHZ_FPGA_IBUF_BUFG);
  output [0:0]temp;
  input [0:0]debounced_signals;
  input CLK_125MHZ_FPGA_IBUF_BUFG;

  wire \<const0> ;
  wire \<const1> ;
  wire CLK_125MHZ_FPGA_IBUF_BUFG;
  wire [0:0]debounced_signals;
  wire [0:0]temp;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg[0] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(debounced_signals),
        .Q(temp),
        .R(\<const0> ));
endmodule

module fifo
   (\counter_reg[6]_0 ,
    \counter_reg[0]_0 ,
    has_byte_reg,
    \counter_reg[5]_0 ,
    cmd,
    \counter_reg[3]_0 ,
    \counter_reg[0]_1 ,
    \dout_reg[7]_0 ,
    D,
    \rptr_reg[2]_0 ,
    \counter_reg[7]_0 ,
    \wptr_reg[2]_0 ,
    has_byte,
    Q,
    \counter_reg[0]_2 ,
    CLK,
    \circ_array_reg[7][7]_0 ,
    p_0_in,
    switches_sync,
    \rptr_reg[0]_0 ,
    \rptr_reg[0]_1 ,
    E,
    \counter_reg[7]_1 );
  output \counter_reg[6]_0 ;
  output \counter_reg[0]_0 ;
  output has_byte_reg;
  output \counter_reg[5]_0 ;
  output cmd;
  output \counter_reg[3]_0 ;
  output \counter_reg[0]_1 ;
  output [7:0]\dout_reg[7]_0 ;
  input [0:0]D;
  input \rptr_reg[2]_0 ;
  input \counter_reg[7]_0 ;
  input \wptr_reg[2]_0 ;
  input has_byte;
  input [0:0]Q;
  input \counter_reg[0]_2 ;
  input CLK;
  input [7:0]\circ_array_reg[7][7]_0 ;
  input p_0_in;
  input switches_sync;
  input \rptr_reg[0]_0 ;
  input \rptr_reg[0]_1 ;
  input [0:0]E;
  input [0:0]\counter_reg[7]_1 ;

  wire \<const0> ;
  wire \<const1> ;
  wire CLK;
  wire [0:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire [7:0]circ_array;
  wire \circ_array[0][7]_i_1__0_n_0 ;
  wire \circ_array[1][7]_i_1__0_n_0 ;
  wire \circ_array[2][7]_i_1__0_n_0 ;
  wire \circ_array[3][7]_i_1__0_n_0 ;
  wire \circ_array[4][7]_i_1__0_n_0 ;
  wire \circ_array[5][7]_i_1__0_n_0 ;
  wire \circ_array[6][7]_i_1__0_n_0 ;
  wire \circ_array[7][7]_i_1__0_n_0 ;
  wire [7:0]\circ_array_reg[0] ;
  wire [7:0]\circ_array_reg[1] ;
  wire [7:0]\circ_array_reg[2] ;
  wire [7:0]\circ_array_reg[3] ;
  wire [7:0]\circ_array_reg[4] ;
  wire [7:0]\circ_array_reg[5] ;
  wire [7:0]\circ_array_reg[6] ;
  wire [7:0]\circ_array_reg[7] ;
  wire [7:0]\circ_array_reg[7][7]_0 ;
  wire cmd;
  wire \counter[3]_i_2_n_0 ;
  wire \counter[3]_i_3_n_0 ;
  wire \counter[4]_i_2_n_0 ;
  wire \counter[5]_i_2_n_0 ;
  wire \counter[5]_i_3_n_0 ;
  wire \counter[6]_i_2_n_0 ;
  wire \counter[6]_i_3_n_0 ;
  wire \counter[7]_i_3__0_n_0 ;
  wire \counter[7]_i_5_n_0 ;
  wire [7:0]counter_reg;
  wire \counter_reg[0]_0 ;
  wire \counter_reg[0]_1 ;
  wire \counter_reg[0]_2 ;
  wire \counter_reg[3]_0 ;
  wire \counter_reg[5]_0 ;
  wire \counter_reg[6]_0 ;
  wire \counter_reg[7]_0 ;
  wire [0:0]\counter_reg[7]_1 ;
  wire \dout[0]_i_2__0_n_0 ;
  wire \dout[0]_i_3__0_n_0 ;
  wire \dout[1]_i_2__0_n_0 ;
  wire \dout[1]_i_3__0_n_0 ;
  wire \dout[2]_i_2__0_n_0 ;
  wire \dout[2]_i_3__0_n_0 ;
  wire \dout[3]_i_2__0_n_0 ;
  wire \dout[3]_i_3__0_n_0 ;
  wire \dout[4]_i_2__0_n_0 ;
  wire \dout[4]_i_3__0_n_0 ;
  wire \dout[5]_i_2__0_n_0 ;
  wire \dout[5]_i_3__0_n_0 ;
  wire \dout[6]_i_2__0_n_0 ;
  wire \dout[6]_i_3__0_n_0 ;
  wire \dout[7]_i_4__0_n_0 ;
  wire \dout[7]_i_5_n_0 ;
  wire [7:0]\dout_reg[7]_0 ;
  wire has_byte;
  wire has_byte_reg;
  wire p_0_in;
  wire [7:0]p_0_in__2;
  wire [2:0]rptr;
  wire \rptr[0]_i_1_n_0 ;
  wire \rptr[1]_i_1_n_0 ;
  wire \rptr[2]_i_1_n_0 ;
  wire \rptr[2]_i_2__0_n_0 ;
  wire \rptr_reg[0]_0 ;
  wire \rptr_reg[0]_1 ;
  wire \rptr_reg[2]_0 ;
  wire switches_sync;
  wire [2:0]wptr;
  wire \wptr[0]_i_1_n_0 ;
  wire \wptr[1]_i_1_n_0 ;
  wire \wptr[2]_i_1_n_0 ;
  wire \wptr_reg[2]_0 ;

  LUT5 #(
    .INIT(32'hFFFEFFFF)) 
    \FSM_onehot_curr_state[6]_i_7 
       (.I0(counter_reg[6]),
        .I1(counter_reg[7]),
        .I2(counter_reg[4]),
        .I3(counter_reg[5]),
        .I4(\counter_reg[0]_0 ),
        .O(\counter_reg[6]_0 ));
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT4 #(
    .INIT(16'h0001)) 
    \addr[7]_i_2 
       (.I0(counter_reg[5]),
        .I1(counter_reg[4]),
        .I2(counter_reg[7]),
        .I3(counter_reg[6]),
        .O(\counter_reg[5]_0 ));
  LUT4 #(
    .INIT(16'h0010)) 
    \circ_array[0][7]_i_1__0 
       (.I0(wptr[1]),
        .I1(wptr[0]),
        .I2(has_byte_reg),
        .I3(wptr[2]),
        .O(\circ_array[0][7]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'h0040)) 
    \circ_array[1][7]_i_1__0 
       (.I0(wptr[1]),
        .I1(wptr[0]),
        .I2(has_byte_reg),
        .I3(wptr[2]),
        .O(\circ_array[1][7]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'h0040)) 
    \circ_array[2][7]_i_1__0 
       (.I0(wptr[0]),
        .I1(wptr[1]),
        .I2(has_byte_reg),
        .I3(wptr[2]),
        .O(\circ_array[2][7]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \circ_array[3][7]_i_1__0 
       (.I0(wptr[1]),
        .I1(wptr[0]),
        .I2(has_byte_reg),
        .I3(wptr[2]),
        .O(\circ_array[3][7]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'h1000)) 
    \circ_array[4][7]_i_1__0 
       (.I0(wptr[1]),
        .I1(wptr[0]),
        .I2(has_byte_reg),
        .I3(wptr[2]),
        .O(\circ_array[4][7]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \circ_array[5][7]_i_1__0 
       (.I0(wptr[1]),
        .I1(wptr[0]),
        .I2(has_byte_reg),
        .I3(wptr[2]),
        .O(\circ_array[5][7]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \circ_array[6][7]_i_1__0 
       (.I0(wptr[0]),
        .I1(wptr[1]),
        .I2(has_byte_reg),
        .I3(wptr[2]),
        .O(\circ_array[6][7]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \circ_array[7][7]_i_1__0 
       (.I0(has_byte_reg),
        .I1(wptr[2]),
        .I2(wptr[1]),
        .I3(wptr[0]),
        .O(\circ_array[7][7]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \circ_array_reg[0][0] 
       (.C(CLK),
        .CE(\circ_array[0][7]_i_1__0_n_0 ),
        .D(\circ_array_reg[7][7]_0 [0]),
        .Q(\circ_array_reg[0] [0]),
        .R(\counter_reg[0]_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \circ_array_reg[0][1] 
       (.C(CLK),
        .CE(\circ_array[0][7]_i_1__0_n_0 ),
        .D(\circ_array_reg[7][7]_0 [1]),
        .Q(\circ_array_reg[0] [1]),
        .R(\counter_reg[0]_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \circ_array_reg[0][2] 
       (.C(CLK),
        .CE(\circ_array[0][7]_i_1__0_n_0 ),
        .D(\circ_array_reg[7][7]_0 [2]),
        .Q(\circ_array_reg[0] [2]),
        .R(\counter_reg[0]_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \circ_array_reg[0][3] 
       (.C(CLK),
        .CE(\circ_array[0][7]_i_1__0_n_0 ),
        .D(\circ_array_reg[7][7]_0 [3]),
        .Q(\circ_array_reg[0] [3]),
        .R(\counter_reg[0]_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \circ_array_reg[0][4] 
       (.C(CLK),
        .CE(\circ_array[0][7]_i_1__0_n_0 ),
        .D(\circ_array_reg[7][7]_0 [4]),
        .Q(\circ_array_reg[0] [4]),
        .R(\counter_reg[0]_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \circ_array_reg[0][5] 
       (.C(CLK),
        .CE(\circ_array[0][7]_i_1__0_n_0 ),
        .D(\circ_array_reg[7][7]_0 [5]),
        .Q(\circ_array_reg[0] [5]),
        .R(\counter_reg[0]_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \circ_array_reg[0][6] 
       (.C(CLK),
        .CE(\circ_array[0][7]_i_1__0_n_0 ),
        .D(\circ_array_reg[7][7]_0 [6]),
        .Q(\circ_array_reg[0] [6]),
        .R(\counter_reg[0]_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \circ_array_reg[0][7] 
       (.C(CLK),
        .CE(\circ_array[0][7]_i_1__0_n_0 ),
        .D(\circ_array_reg[7][7]_0 [7]),
        .Q(\circ_array_reg[0] [7]),
        .R(\counter_reg[0]_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \circ_array_reg[1][0] 
       (.C(CLK),
        .CE(\circ_array[1][7]_i_1__0_n_0 ),
        .D(\circ_array_reg[7][7]_0 [0]),
        .Q(\circ_array_reg[1] [0]),
        .R(\counter_reg[0]_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \circ_array_reg[1][1] 
       (.C(CLK),
        .CE(\circ_array[1][7]_i_1__0_n_0 ),
        .D(\circ_array_reg[7][7]_0 [1]),
        .Q(\circ_array_reg[1] [1]),
        .R(\counter_reg[0]_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \circ_array_reg[1][2] 
       (.C(CLK),
        .CE(\circ_array[1][7]_i_1__0_n_0 ),
        .D(\circ_array_reg[7][7]_0 [2]),
        .Q(\circ_array_reg[1] [2]),
        .R(\counter_reg[0]_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \circ_array_reg[1][3] 
       (.C(CLK),
        .CE(\circ_array[1][7]_i_1__0_n_0 ),
        .D(\circ_array_reg[7][7]_0 [3]),
        .Q(\circ_array_reg[1] [3]),
        .R(\counter_reg[0]_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \circ_array_reg[1][4] 
       (.C(CLK),
        .CE(\circ_array[1][7]_i_1__0_n_0 ),
        .D(\circ_array_reg[7][7]_0 [4]),
        .Q(\circ_array_reg[1] [4]),
        .R(\counter_reg[0]_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \circ_array_reg[1][5] 
       (.C(CLK),
        .CE(\circ_array[1][7]_i_1__0_n_0 ),
        .D(\circ_array_reg[7][7]_0 [5]),
        .Q(\circ_array_reg[1] [5]),
        .R(\counter_reg[0]_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \circ_array_reg[1][6] 
       (.C(CLK),
        .CE(\circ_array[1][7]_i_1__0_n_0 ),
        .D(\circ_array_reg[7][7]_0 [6]),
        .Q(\circ_array_reg[1] [6]),
        .R(\counter_reg[0]_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \circ_array_reg[1][7] 
       (.C(CLK),
        .CE(\circ_array[1][7]_i_1__0_n_0 ),
        .D(\circ_array_reg[7][7]_0 [7]),
        .Q(\circ_array_reg[1] [7]),
        .R(\counter_reg[0]_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \circ_array_reg[2][0] 
       (.C(CLK),
        .CE(\circ_array[2][7]_i_1__0_n_0 ),
        .D(\circ_array_reg[7][7]_0 [0]),
        .Q(\circ_array_reg[2] [0]),
        .R(\counter_reg[0]_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \circ_array_reg[2][1] 
       (.C(CLK),
        .CE(\circ_array[2][7]_i_1__0_n_0 ),
        .D(\circ_array_reg[7][7]_0 [1]),
        .Q(\circ_array_reg[2] [1]),
        .R(\counter_reg[0]_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \circ_array_reg[2][2] 
       (.C(CLK),
        .CE(\circ_array[2][7]_i_1__0_n_0 ),
        .D(\circ_array_reg[7][7]_0 [2]),
        .Q(\circ_array_reg[2] [2]),
        .R(\counter_reg[0]_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \circ_array_reg[2][3] 
       (.C(CLK),
        .CE(\circ_array[2][7]_i_1__0_n_0 ),
        .D(\circ_array_reg[7][7]_0 [3]),
        .Q(\circ_array_reg[2] [3]),
        .R(\counter_reg[0]_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \circ_array_reg[2][4] 
       (.C(CLK),
        .CE(\circ_array[2][7]_i_1__0_n_0 ),
        .D(\circ_array_reg[7][7]_0 [4]),
        .Q(\circ_array_reg[2] [4]),
        .R(\counter_reg[0]_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \circ_array_reg[2][5] 
       (.C(CLK),
        .CE(\circ_array[2][7]_i_1__0_n_0 ),
        .D(\circ_array_reg[7][7]_0 [5]),
        .Q(\circ_array_reg[2] [5]),
        .R(\counter_reg[0]_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \circ_array_reg[2][6] 
       (.C(CLK),
        .CE(\circ_array[2][7]_i_1__0_n_0 ),
        .D(\circ_array_reg[7][7]_0 [6]),
        .Q(\circ_array_reg[2] [6]),
        .R(\counter_reg[0]_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \circ_array_reg[2][7] 
       (.C(CLK),
        .CE(\circ_array[2][7]_i_1__0_n_0 ),
        .D(\circ_array_reg[7][7]_0 [7]),
        .Q(\circ_array_reg[2] [7]),
        .R(\counter_reg[0]_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \circ_array_reg[3][0] 
       (.C(CLK),
        .CE(\circ_array[3][7]_i_1__0_n_0 ),
        .D(\circ_array_reg[7][7]_0 [0]),
        .Q(\circ_array_reg[3] [0]),
        .R(\counter_reg[0]_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \circ_array_reg[3][1] 
       (.C(CLK),
        .CE(\circ_array[3][7]_i_1__0_n_0 ),
        .D(\circ_array_reg[7][7]_0 [1]),
        .Q(\circ_array_reg[3] [1]),
        .R(\counter_reg[0]_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \circ_array_reg[3][2] 
       (.C(CLK),
        .CE(\circ_array[3][7]_i_1__0_n_0 ),
        .D(\circ_array_reg[7][7]_0 [2]),
        .Q(\circ_array_reg[3] [2]),
        .R(\counter_reg[0]_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \circ_array_reg[3][3] 
       (.C(CLK),
        .CE(\circ_array[3][7]_i_1__0_n_0 ),
        .D(\circ_array_reg[7][7]_0 [3]),
        .Q(\circ_array_reg[3] [3]),
        .R(\counter_reg[0]_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \circ_array_reg[3][4] 
       (.C(CLK),
        .CE(\circ_array[3][7]_i_1__0_n_0 ),
        .D(\circ_array_reg[7][7]_0 [4]),
        .Q(\circ_array_reg[3] [4]),
        .R(\counter_reg[0]_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \circ_array_reg[3][5] 
       (.C(CLK),
        .CE(\circ_array[3][7]_i_1__0_n_0 ),
        .D(\circ_array_reg[7][7]_0 [5]),
        .Q(\circ_array_reg[3] [5]),
        .R(\counter_reg[0]_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \circ_array_reg[3][6] 
       (.C(CLK),
        .CE(\circ_array[3][7]_i_1__0_n_0 ),
        .D(\circ_array_reg[7][7]_0 [6]),
        .Q(\circ_array_reg[3] [6]),
        .R(\counter_reg[0]_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \circ_array_reg[3][7] 
       (.C(CLK),
        .CE(\circ_array[3][7]_i_1__0_n_0 ),
        .D(\circ_array_reg[7][7]_0 [7]),
        .Q(\circ_array_reg[3] [7]),
        .R(\counter_reg[0]_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \circ_array_reg[4][0] 
       (.C(CLK),
        .CE(\circ_array[4][7]_i_1__0_n_0 ),
        .D(\circ_array_reg[7][7]_0 [0]),
        .Q(\circ_array_reg[4] [0]),
        .R(\counter_reg[0]_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \circ_array_reg[4][1] 
       (.C(CLK),
        .CE(\circ_array[4][7]_i_1__0_n_0 ),
        .D(\circ_array_reg[7][7]_0 [1]),
        .Q(\circ_array_reg[4] [1]),
        .R(\counter_reg[0]_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \circ_array_reg[4][2] 
       (.C(CLK),
        .CE(\circ_array[4][7]_i_1__0_n_0 ),
        .D(\circ_array_reg[7][7]_0 [2]),
        .Q(\circ_array_reg[4] [2]),
        .R(\counter_reg[0]_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \circ_array_reg[4][3] 
       (.C(CLK),
        .CE(\circ_array[4][7]_i_1__0_n_0 ),
        .D(\circ_array_reg[7][7]_0 [3]),
        .Q(\circ_array_reg[4] [3]),
        .R(\counter_reg[0]_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \circ_array_reg[4][4] 
       (.C(CLK),
        .CE(\circ_array[4][7]_i_1__0_n_0 ),
        .D(\circ_array_reg[7][7]_0 [4]),
        .Q(\circ_array_reg[4] [4]),
        .R(\counter_reg[0]_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \circ_array_reg[4][5] 
       (.C(CLK),
        .CE(\circ_array[4][7]_i_1__0_n_0 ),
        .D(\circ_array_reg[7][7]_0 [5]),
        .Q(\circ_array_reg[4] [5]),
        .R(\counter_reg[0]_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \circ_array_reg[4][6] 
       (.C(CLK),
        .CE(\circ_array[4][7]_i_1__0_n_0 ),
        .D(\circ_array_reg[7][7]_0 [6]),
        .Q(\circ_array_reg[4] [6]),
        .R(\counter_reg[0]_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \circ_array_reg[4][7] 
       (.C(CLK),
        .CE(\circ_array[4][7]_i_1__0_n_0 ),
        .D(\circ_array_reg[7][7]_0 [7]),
        .Q(\circ_array_reg[4] [7]),
        .R(\counter_reg[0]_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \circ_array_reg[5][0] 
       (.C(CLK),
        .CE(\circ_array[5][7]_i_1__0_n_0 ),
        .D(\circ_array_reg[7][7]_0 [0]),
        .Q(\circ_array_reg[5] [0]),
        .R(\counter_reg[0]_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \circ_array_reg[5][1] 
       (.C(CLK),
        .CE(\circ_array[5][7]_i_1__0_n_0 ),
        .D(\circ_array_reg[7][7]_0 [1]),
        .Q(\circ_array_reg[5] [1]),
        .R(\counter_reg[0]_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \circ_array_reg[5][2] 
       (.C(CLK),
        .CE(\circ_array[5][7]_i_1__0_n_0 ),
        .D(\circ_array_reg[7][7]_0 [2]),
        .Q(\circ_array_reg[5] [2]),
        .R(\counter_reg[0]_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \circ_array_reg[5][3] 
       (.C(CLK),
        .CE(\circ_array[5][7]_i_1__0_n_0 ),
        .D(\circ_array_reg[7][7]_0 [3]),
        .Q(\circ_array_reg[5] [3]),
        .R(\counter_reg[0]_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \circ_array_reg[5][4] 
       (.C(CLK),
        .CE(\circ_array[5][7]_i_1__0_n_0 ),
        .D(\circ_array_reg[7][7]_0 [4]),
        .Q(\circ_array_reg[5] [4]),
        .R(\counter_reg[0]_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \circ_array_reg[5][5] 
       (.C(CLK),
        .CE(\circ_array[5][7]_i_1__0_n_0 ),
        .D(\circ_array_reg[7][7]_0 [5]),
        .Q(\circ_array_reg[5] [5]),
        .R(\counter_reg[0]_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \circ_array_reg[5][6] 
       (.C(CLK),
        .CE(\circ_array[5][7]_i_1__0_n_0 ),
        .D(\circ_array_reg[7][7]_0 [6]),
        .Q(\circ_array_reg[5] [6]),
        .R(\counter_reg[0]_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \circ_array_reg[5][7] 
       (.C(CLK),
        .CE(\circ_array[5][7]_i_1__0_n_0 ),
        .D(\circ_array_reg[7][7]_0 [7]),
        .Q(\circ_array_reg[5] [7]),
        .R(\counter_reg[0]_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \circ_array_reg[6][0] 
       (.C(CLK),
        .CE(\circ_array[6][7]_i_1__0_n_0 ),
        .D(\circ_array_reg[7][7]_0 [0]),
        .Q(\circ_array_reg[6] [0]),
        .R(\counter_reg[0]_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \circ_array_reg[6][1] 
       (.C(CLK),
        .CE(\circ_array[6][7]_i_1__0_n_0 ),
        .D(\circ_array_reg[7][7]_0 [1]),
        .Q(\circ_array_reg[6] [1]),
        .R(\counter_reg[0]_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \circ_array_reg[6][2] 
       (.C(CLK),
        .CE(\circ_array[6][7]_i_1__0_n_0 ),
        .D(\circ_array_reg[7][7]_0 [2]),
        .Q(\circ_array_reg[6] [2]),
        .R(\counter_reg[0]_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \circ_array_reg[6][3] 
       (.C(CLK),
        .CE(\circ_array[6][7]_i_1__0_n_0 ),
        .D(\circ_array_reg[7][7]_0 [3]),
        .Q(\circ_array_reg[6] [3]),
        .R(\counter_reg[0]_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \circ_array_reg[6][4] 
       (.C(CLK),
        .CE(\circ_array[6][7]_i_1__0_n_0 ),
        .D(\circ_array_reg[7][7]_0 [4]),
        .Q(\circ_array_reg[6] [4]),
        .R(\counter_reg[0]_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \circ_array_reg[6][5] 
       (.C(CLK),
        .CE(\circ_array[6][7]_i_1__0_n_0 ),
        .D(\circ_array_reg[7][7]_0 [5]),
        .Q(\circ_array_reg[6] [5]),
        .R(\counter_reg[0]_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \circ_array_reg[6][6] 
       (.C(CLK),
        .CE(\circ_array[6][7]_i_1__0_n_0 ),
        .D(\circ_array_reg[7][7]_0 [6]),
        .Q(\circ_array_reg[6] [6]),
        .R(\counter_reg[0]_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \circ_array_reg[6][7] 
       (.C(CLK),
        .CE(\circ_array[6][7]_i_1__0_n_0 ),
        .D(\circ_array_reg[7][7]_0 [7]),
        .Q(\circ_array_reg[6] [7]),
        .R(\counter_reg[0]_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \circ_array_reg[7][0] 
       (.C(CLK),
        .CE(\circ_array[7][7]_i_1__0_n_0 ),
        .D(\circ_array_reg[7][7]_0 [0]),
        .Q(\circ_array_reg[7] [0]),
        .R(\counter_reg[0]_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \circ_array_reg[7][1] 
       (.C(CLK),
        .CE(\circ_array[7][7]_i_1__0_n_0 ),
        .D(\circ_array_reg[7][7]_0 [1]),
        .Q(\circ_array_reg[7] [1]),
        .R(\counter_reg[0]_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \circ_array_reg[7][2] 
       (.C(CLK),
        .CE(\circ_array[7][7]_i_1__0_n_0 ),
        .D(\circ_array_reg[7][7]_0 [2]),
        .Q(\circ_array_reg[7] [2]),
        .R(\counter_reg[0]_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \circ_array_reg[7][3] 
       (.C(CLK),
        .CE(\circ_array[7][7]_i_1__0_n_0 ),
        .D(\circ_array_reg[7][7]_0 [3]),
        .Q(\circ_array_reg[7] [3]),
        .R(\counter_reg[0]_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \circ_array_reg[7][4] 
       (.C(CLK),
        .CE(\circ_array[7][7]_i_1__0_n_0 ),
        .D(\circ_array_reg[7][7]_0 [4]),
        .Q(\circ_array_reg[7] [4]),
        .R(\counter_reg[0]_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \circ_array_reg[7][5] 
       (.C(CLK),
        .CE(\circ_array[7][7]_i_1__0_n_0 ),
        .D(\circ_array_reg[7][7]_0 [5]),
        .Q(\circ_array_reg[7] [5]),
        .R(\counter_reg[0]_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \circ_array_reg[7][6] 
       (.C(CLK),
        .CE(\circ_array[7][7]_i_1__0_n_0 ),
        .D(\circ_array_reg[7][7]_0 [6]),
        .Q(\circ_array_reg[7] [6]),
        .R(\counter_reg[0]_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \circ_array_reg[7][7] 
       (.C(CLK),
        .CE(\circ_array[7][7]_i_1__0_n_0 ),
        .D(\circ_array_reg[7][7]_0 [7]),
        .Q(\circ_array_reg[7] [7]),
        .R(\counter_reg[0]_2 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA2)) 
    \cmd[7]_i_1 
       (.I0(Q),
        .I1(\counter_reg[0]_0 ),
        .I2(counter_reg[5]),
        .I3(counter_reg[4]),
        .I4(counter_reg[7]),
        .I5(counter_reg[6]),
        .O(cmd));
  LUT4 #(
    .INIT(16'h0001)) 
    \cmd[7]_i_2 
       (.I0(counter_reg[0]),
        .I1(counter_reg[1]),
        .I2(counter_reg[2]),
        .I3(counter_reg[3]),
        .O(\counter_reg[0]_0 ));
  (* \PinAttr:I0:HOLD_DETOUR  = "190" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_1 
       (.I0(counter_reg[0]),
        .O(p_0_in__2[0]));
  (* \PinAttr:I0:HOLD_DETOUR  = "190" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \counter[1]_i_2 
       (.I0(counter_reg[0]),
        .I1(counter_reg[1]),
        .O(\counter_reg[0]_1 ));
  LUT6 #(
    .INIT(64'hA96A6A6A6A6A6A6A)) 
    \counter[2]_i_1 
       (.I0(counter_reg[2]),
        .I1(counter_reg[0]),
        .I2(counter_reg[1]),
        .I3(\rptr_reg[2]_0 ),
        .I4(\counter_reg[7]_0 ),
        .I5(\counter_reg[6]_0 ),
        .O(p_0_in__2[2]));
  LUT6 #(
    .INIT(64'hA999999959999999)) 
    \counter[3]_i_1 
       (.I0(counter_reg[3]),
        .I1(\counter[3]_i_2_n_0 ),
        .I2(\rptr_reg[2]_0 ),
        .I3(\counter_reg[7]_0 ),
        .I4(\counter_reg[6]_0 ),
        .I5(\counter[3]_i_3_n_0 ),
        .O(p_0_in__2[3]));
  LUT3 #(
    .INIT(8'h7F)) 
    \counter[3]_i_2 
       (.I0(counter_reg[1]),
        .I1(counter_reg[0]),
        .I2(counter_reg[2]),
        .O(\counter[3]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \counter[3]_i_3 
       (.I0(counter_reg[2]),
        .I1(counter_reg[1]),
        .I2(counter_reg[0]),
        .O(\counter[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h59999999A9999999)) 
    \counter[4]_i_1 
       (.I0(counter_reg[4]),
        .I1(\counter[4]_i_2_n_0 ),
        .I2(\rptr_reg[2]_0 ),
        .I3(\counter_reg[7]_0 ),
        .I4(\counter_reg[6]_0 ),
        .I5(\counter_reg[0]_0 ),
        .O(p_0_in__2[4]));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \counter[4]_i_2 
       (.I0(counter_reg[2]),
        .I1(counter_reg[0]),
        .I2(counter_reg[1]),
        .I3(counter_reg[3]),
        .O(\counter[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h993C3C3C3C3C3C3C)) 
    \counter[5]_i_1 
       (.I0(\counter[5]_i_2_n_0 ),
        .I1(counter_reg[5]),
        .I2(\counter[5]_i_3_n_0 ),
        .I3(\rptr_reg[2]_0 ),
        .I4(\counter_reg[7]_0 ),
        .I5(\counter_reg[6]_0 ),
        .O(p_0_in__2[5]));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \counter[5]_i_2 
       (.I0(counter_reg[4]),
        .I1(counter_reg[3]),
        .I2(counter_reg[2]),
        .I3(counter_reg[1]),
        .I4(counter_reg[0]),
        .O(\counter[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \counter[5]_i_3 
       (.I0(counter_reg[4]),
        .I1(counter_reg[3]),
        .I2(counter_reg[1]),
        .I3(counter_reg[0]),
        .I4(counter_reg[2]),
        .O(\counter[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h56666666A6666666)) 
    \counter[6]_i_1 
       (.I0(counter_reg[6]),
        .I1(\counter[6]_i_2_n_0 ),
        .I2(\rptr_reg[2]_0 ),
        .I3(\counter_reg[7]_0 ),
        .I4(\counter_reg[6]_0 ),
        .I5(\counter[6]_i_3_n_0 ),
        .O(p_0_in__2[6]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \counter[6]_i_2 
       (.I0(counter_reg[5]),
        .I1(counter_reg[2]),
        .I2(counter_reg[0]),
        .I3(counter_reg[1]),
        .I4(counter_reg[3]),
        .I5(counter_reg[4]),
        .O(\counter[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \counter[6]_i_3 
       (.I0(counter_reg[5]),
        .I1(counter_reg[0]),
        .I2(counter_reg[1]),
        .I3(counter_reg[2]),
        .I4(counter_reg[3]),
        .I5(counter_reg[4]),
        .O(\counter[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h56666666A6666666)) 
    \counter[7]_i_2 
       (.I0(counter_reg[7]),
        .I1(\counter[7]_i_3__0_n_0 ),
        .I2(\rptr_reg[2]_0 ),
        .I3(\counter_reg[7]_0 ),
        .I4(\counter_reg[6]_0 ),
        .I5(\counter[7]_i_5_n_0 ),
        .O(p_0_in__2[7]));
  LUT2 #(
    .INIT(4'h8)) 
    \counter[7]_i_3__0 
       (.I0(\counter[6]_i_2_n_0 ),
        .I1(counter_reg[6]),
        .O(\counter[7]_i_3__0_n_0 ));
  LUT4 #(
    .INIT(16'h0004)) 
    \counter[7]_i_5 
       (.I0(counter_reg[4]),
        .I1(\counter_reg[0]_0 ),
        .I2(counter_reg[5]),
        .I3(counter_reg[6]),
        .O(\counter[7]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(CLK),
        .CE(\counter_reg[7]_1 ),
        .D(p_0_in__2[0]),
        .Q(counter_reg[0]),
        .R(\counter_reg[0]_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(CLK),
        .CE(\counter_reg[7]_1 ),
        .D(D),
        .Q(counter_reg[1]),
        .R(\counter_reg[0]_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(CLK),
        .CE(\counter_reg[7]_1 ),
        .D(p_0_in__2[2]),
        .Q(counter_reg[2]),
        .R(\counter_reg[0]_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(CLK),
        .CE(\counter_reg[7]_1 ),
        .D(p_0_in__2[3]),
        .Q(counter_reg[3]),
        .R(\counter_reg[0]_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(CLK),
        .CE(\counter_reg[7]_1 ),
        .D(p_0_in__2[4]),
        .Q(counter_reg[4]),
        .R(\counter_reg[0]_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(CLK),
        .CE(\counter_reg[7]_1 ),
        .D(p_0_in__2[5]),
        .Q(counter_reg[5]),
        .R(\counter_reg[0]_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(CLK),
        .CE(\counter_reg[7]_1 ),
        .D(p_0_in__2[6]),
        .Q(counter_reg[6]),
        .R(\counter_reg[0]_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(CLK),
        .CE(\counter_reg[7]_1 ),
        .D(p_0_in__2[7]),
        .Q(counter_reg[7]),
        .R(\counter_reg[0]_2 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[0]_i_2__0 
       (.I0(\circ_array_reg[3] [0]),
        .I1(\circ_array_reg[2] [0]),
        .I2(rptr[1]),
        .I3(\circ_array_reg[1] [0]),
        .I4(rptr[0]),
        .I5(\circ_array_reg[0] [0]),
        .O(\dout[0]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[0]_i_3__0 
       (.I0(\circ_array_reg[7] [0]),
        .I1(\circ_array_reg[6] [0]),
        .I2(rptr[1]),
        .I3(\circ_array_reg[5] [0]),
        .I4(rptr[0]),
        .I5(\circ_array_reg[4] [0]),
        .O(\dout[0]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[1]_i_2__0 
       (.I0(\circ_array_reg[3] [1]),
        .I1(\circ_array_reg[2] [1]),
        .I2(rptr[1]),
        .I3(\circ_array_reg[1] [1]),
        .I4(rptr[0]),
        .I5(\circ_array_reg[0] [1]),
        .O(\dout[1]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[1]_i_3__0 
       (.I0(\circ_array_reg[7] [1]),
        .I1(\circ_array_reg[6] [1]),
        .I2(rptr[1]),
        .I3(\circ_array_reg[5] [1]),
        .I4(rptr[0]),
        .I5(\circ_array_reg[4] [1]),
        .O(\dout[1]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[2]_i_2__0 
       (.I0(\circ_array_reg[3] [2]),
        .I1(\circ_array_reg[2] [2]),
        .I2(rptr[1]),
        .I3(\circ_array_reg[1] [2]),
        .I4(rptr[0]),
        .I5(\circ_array_reg[0] [2]),
        .O(\dout[2]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[2]_i_3__0 
       (.I0(\circ_array_reg[7] [2]),
        .I1(\circ_array_reg[6] [2]),
        .I2(rptr[1]),
        .I3(\circ_array_reg[5] [2]),
        .I4(rptr[0]),
        .I5(\circ_array_reg[4] [2]),
        .O(\dout[2]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[3]_i_2__0 
       (.I0(\circ_array_reg[3] [3]),
        .I1(\circ_array_reg[2] [3]),
        .I2(rptr[1]),
        .I3(\circ_array_reg[1] [3]),
        .I4(rptr[0]),
        .I5(\circ_array_reg[0] [3]),
        .O(\dout[3]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[3]_i_3__0 
       (.I0(\circ_array_reg[7] [3]),
        .I1(\circ_array_reg[6] [3]),
        .I2(rptr[1]),
        .I3(\circ_array_reg[5] [3]),
        .I4(rptr[0]),
        .I5(\circ_array_reg[4] [3]),
        .O(\dout[3]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[4]_i_2__0 
       (.I0(\circ_array_reg[3] [4]),
        .I1(\circ_array_reg[2] [4]),
        .I2(rptr[1]),
        .I3(\circ_array_reg[1] [4]),
        .I4(rptr[0]),
        .I5(\circ_array_reg[0] [4]),
        .O(\dout[4]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[4]_i_3__0 
       (.I0(\circ_array_reg[7] [4]),
        .I1(\circ_array_reg[6] [4]),
        .I2(rptr[1]),
        .I3(\circ_array_reg[5] [4]),
        .I4(rptr[0]),
        .I5(\circ_array_reg[4] [4]),
        .O(\dout[4]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[5]_i_2__0 
       (.I0(\circ_array_reg[3] [5]),
        .I1(\circ_array_reg[2] [5]),
        .I2(rptr[1]),
        .I3(\circ_array_reg[1] [5]),
        .I4(rptr[0]),
        .I5(\circ_array_reg[0] [5]),
        .O(\dout[5]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[5]_i_3__0 
       (.I0(\circ_array_reg[7] [5]),
        .I1(\circ_array_reg[6] [5]),
        .I2(rptr[1]),
        .I3(\circ_array_reg[5] [5]),
        .I4(rptr[0]),
        .I5(\circ_array_reg[4] [5]),
        .O(\dout[5]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[6]_i_2__0 
       (.I0(\circ_array_reg[3] [6]),
        .I1(\circ_array_reg[2] [6]),
        .I2(rptr[1]),
        .I3(\circ_array_reg[1] [6]),
        .I4(rptr[0]),
        .I5(\circ_array_reg[0] [6]),
        .O(\dout[6]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[6]_i_3__0 
       (.I0(\circ_array_reg[7] [6]),
        .I1(\circ_array_reg[6] [6]),
        .I2(rptr[1]),
        .I3(\circ_array_reg[5] [6]),
        .I4(rptr[0]),
        .I5(\circ_array_reg[4] [6]),
        .O(\dout[6]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[7]_i_4__0 
       (.I0(\circ_array_reg[3] [7]),
        .I1(\circ_array_reg[2] [7]),
        .I2(rptr[1]),
        .I3(\circ_array_reg[1] [7]),
        .I4(rptr[0]),
        .I5(\circ_array_reg[0] [7]),
        .O(\dout[7]_i_4__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[7]_i_5 
       (.I0(\circ_array_reg[7] [7]),
        .I1(\circ_array_reg[6] [7]),
        .I2(rptr[1]),
        .I3(\circ_array_reg[5] [7]),
        .I4(rptr[0]),
        .I5(\circ_array_reg[4] [7]),
        .O(\dout[7]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(circ_array[0]),
        .Q(\dout_reg[7]_0 [0]),
        .R(\<const0> ));
  MUXF7 \dout_reg[0]_i_1__0 
       (.I0(\dout[0]_i_2__0_n_0 ),
        .I1(\dout[0]_i_3__0_n_0 ),
        .O(circ_array[0]),
        .S(rptr[2]));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[1] 
       (.C(CLK),
        .CE(E),
        .D(circ_array[1]),
        .Q(\dout_reg[7]_0 [1]),
        .R(\<const0> ));
  MUXF7 \dout_reg[1]_i_1__0 
       (.I0(\dout[1]_i_2__0_n_0 ),
        .I1(\dout[1]_i_3__0_n_0 ),
        .O(circ_array[1]),
        .S(rptr[2]));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[2] 
       (.C(CLK),
        .CE(E),
        .D(circ_array[2]),
        .Q(\dout_reg[7]_0 [2]),
        .R(\<const0> ));
  MUXF7 \dout_reg[2]_i_1__0 
       (.I0(\dout[2]_i_2__0_n_0 ),
        .I1(\dout[2]_i_3__0_n_0 ),
        .O(circ_array[2]),
        .S(rptr[2]));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[3] 
       (.C(CLK),
        .CE(E),
        .D(circ_array[3]),
        .Q(\dout_reg[7]_0 [3]),
        .R(\<const0> ));
  MUXF7 \dout_reg[3]_i_1__0 
       (.I0(\dout[3]_i_2__0_n_0 ),
        .I1(\dout[3]_i_3__0_n_0 ),
        .O(circ_array[3]),
        .S(rptr[2]));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[4] 
       (.C(CLK),
        .CE(E),
        .D(circ_array[4]),
        .Q(\dout_reg[7]_0 [4]),
        .R(\<const0> ));
  MUXF7 \dout_reg[4]_i_1__0 
       (.I0(\dout[4]_i_2__0_n_0 ),
        .I1(\dout[4]_i_3__0_n_0 ),
        .O(circ_array[4]),
        .S(rptr[2]));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[5] 
       (.C(CLK),
        .CE(E),
        .D(circ_array[5]),
        .Q(\dout_reg[7]_0 [5]),
        .R(\<const0> ));
  MUXF7 \dout_reg[5]_i_1__0 
       (.I0(\dout[5]_i_2__0_n_0 ),
        .I1(\dout[5]_i_3__0_n_0 ),
        .O(circ_array[5]),
        .S(rptr[2]));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[6] 
       (.C(CLK),
        .CE(E),
        .D(circ_array[6]),
        .Q(\dout_reg[7]_0 [6]),
        .R(\<const0> ));
  MUXF7 \dout_reg[6]_i_1__0 
       (.I0(\dout[6]_i_2__0_n_0 ),
        .I1(\dout[6]_i_3__0_n_0 ),
        .O(circ_array[6]),
        .S(rptr[2]));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[7] 
       (.C(CLK),
        .CE(E),
        .D(circ_array[7]),
        .Q(\dout_reg[7]_0 [7]),
        .R(\<const0> ));
  MUXF7 \dout_reg[7]_i_2__0 
       (.I0(\dout[7]_i_4__0_n_0 ),
        .I1(\dout[7]_i_5_n_0 ),
        .O(circ_array[7]),
        .S(rptr[2]));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    has_byte_i_2
       (.I0(counter_reg[3]),
        .I1(counter_reg[5]),
        .I2(counter_reg[4]),
        .I3(counter_reg[7]),
        .I4(counter_reg[6]),
        .I5(\counter[3]_i_3_n_0 ),
        .O(\counter_reg[3]_0 ));
  LUT6 #(
    .INIT(64'hFF37FFFF00C80000)) 
    \rptr[0]_i_1 
       (.I0(\rptr_reg[0]_0 ),
        .I1(\counter_reg[6]_0 ),
        .I2(\rptr_reg[0]_1 ),
        .I3(switches_sync),
        .I4(p_0_in),
        .I5(rptr[0]),
        .O(\rptr[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF7FFFFF00800000)) 
    \rptr[1]_i_1 
       (.I0(rptr[0]),
        .I1(\counter_reg[6]_0 ),
        .I2(p_0_in),
        .I3(switches_sync),
        .I4(\rptr_reg[2]_0 ),
        .I5(rptr[1]),
        .O(\rptr[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFBFFFFF00800000)) 
    \rptr[2]_i_1 
       (.I0(\rptr[2]_i_2__0_n_0 ),
        .I1(\counter_reg[6]_0 ),
        .I2(p_0_in),
        .I3(switches_sync),
        .I4(\rptr_reg[2]_0 ),
        .I5(rptr[2]),
        .O(\rptr[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \rptr[2]_i_2__0 
       (.I0(rptr[0]),
        .I1(rptr[1]),
        .I2(rptr[2]),
        .O(\rptr[2]_i_2__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rptr_reg[0] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\rptr[0]_i_1_n_0 ),
        .Q(rptr[0]),
        .R(\counter_reg[0]_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \rptr_reg[1] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\rptr[1]_i_1_n_0 ),
        .Q(rptr[1]),
        .R(\counter_reg[0]_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \rptr_reg[2] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\rptr[2]_i_1_n_0 ),
        .Q(rptr[2]),
        .R(\counter_reg[0]_2 ));
  LUT2 #(
    .INIT(4'h6)) 
    \wptr[0]_i_1 
       (.I0(has_byte_reg),
        .I1(wptr[0]),
        .O(\wptr[0]_i_1_n_0 ));
  (* \PinAttr:I2:HOLD_DETOUR  = "195" *) 
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \wptr[1]_i_1 
       (.I0(wptr[0]),
        .I1(has_byte_reg),
        .I2(wptr[1]),
        .O(\wptr[1]_i_1_n_0 ));
  (* \PinAttr:I0:HOLD_DETOUR  = "195" *) 
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \wptr[2]_i_1 
       (.I0(wptr[1]),
        .I1(wptr[0]),
        .I2(has_byte_reg),
        .I3(wptr[2]),
        .O(\wptr[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h40444444)) 
    \wptr[2]_i_2 
       (.I0(\wptr_reg[2]_0 ),
        .I1(has_byte),
        .I2(\counter[3]_i_3_n_0 ),
        .I3(\counter_reg[5]_0 ),
        .I4(counter_reg[3]),
        .O(has_byte_reg));
  FDRE #(
    .INIT(1'b0)) 
    \wptr_reg[0] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\wptr[0]_i_1_n_0 ),
        .Q(wptr[0]),
        .R(\counter_reg[0]_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \wptr_reg[1] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\wptr[1]_i_1_n_0 ),
        .Q(wptr[1]),
        .R(\counter_reg[0]_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \wptr_reg[2] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\wptr[2]_i_1_n_0 ),
        .Q(wptr[2]),
        .R(\counter_reg[0]_2 ));
endmodule

(* ORIG_REF_NAME = "fifo" *) 
module fifo_0
   (\counter_reg[6]_0 ,
    \counter_reg[3]_0 ,
    tx_fifo_empty,
    \counter_reg[2]_0 ,
    Q,
    \wptr_reg[2]_0 ,
    p_0_in,
    \rptr_reg[2]_0 ,
    \counter_reg[7]_0 ,
    D,
    CLK,
    E);
  output \counter_reg[6]_0 ;
  output \counter_reg[3]_0 ;
  output tx_fifo_empty;
  output \counter_reg[2]_0 ;
  output [7:0]Q;
  input \wptr_reg[2]_0 ;
  input p_0_in;
  input \rptr_reg[2]_0 ;
  input \counter_reg[7]_0 ;
  input [7:0]D;
  input CLK;
  input [0:0]E;

  wire \<const0> ;
  wire \<const1> ;
  wire CLK;
  wire [7:0]D;
  wire [0:0]E;
  wire [7:0]Q;
  wire [7:0]circ_array;
  wire \circ_array[0][7]_i_1_n_0 ;
  wire \circ_array[1][7]_i_1_n_0 ;
  wire \circ_array[2][7]_i_1_n_0 ;
  wire \circ_array[3][7]_i_1_n_0 ;
  wire \circ_array[4][7]_i_1_n_0 ;
  wire \circ_array[5][7]_i_1_n_0 ;
  wire \circ_array[6][7]_i_1_n_0 ;
  wire \circ_array[7][7]_i_1_n_0 ;
  wire \circ_array_reg_n_0_[0][0] ;
  wire \circ_array_reg_n_0_[0][1] ;
  wire \circ_array_reg_n_0_[0][2] ;
  wire \circ_array_reg_n_0_[0][3] ;
  wire \circ_array_reg_n_0_[0][4] ;
  wire \circ_array_reg_n_0_[0][5] ;
  wire \circ_array_reg_n_0_[0][6] ;
  wire \circ_array_reg_n_0_[0][7] ;
  wire \circ_array_reg_n_0_[1][0] ;
  wire \circ_array_reg_n_0_[1][1] ;
  wire \circ_array_reg_n_0_[1][2] ;
  wire \circ_array_reg_n_0_[1][3] ;
  wire \circ_array_reg_n_0_[1][4] ;
  wire \circ_array_reg_n_0_[1][5] ;
  wire \circ_array_reg_n_0_[1][6] ;
  wire \circ_array_reg_n_0_[1][7] ;
  wire \circ_array_reg_n_0_[2][0] ;
  wire \circ_array_reg_n_0_[2][1] ;
  wire \circ_array_reg_n_0_[2][2] ;
  wire \circ_array_reg_n_0_[2][3] ;
  wire \circ_array_reg_n_0_[2][4] ;
  wire \circ_array_reg_n_0_[2][5] ;
  wire \circ_array_reg_n_0_[2][6] ;
  wire \circ_array_reg_n_0_[2][7] ;
  wire \circ_array_reg_n_0_[3][0] ;
  wire \circ_array_reg_n_0_[3][1] ;
  wire \circ_array_reg_n_0_[3][2] ;
  wire \circ_array_reg_n_0_[3][3] ;
  wire \circ_array_reg_n_0_[3][4] ;
  wire \circ_array_reg_n_0_[3][5] ;
  wire \circ_array_reg_n_0_[3][6] ;
  wire \circ_array_reg_n_0_[3][7] ;
  wire \circ_array_reg_n_0_[4][0] ;
  wire \circ_array_reg_n_0_[4][1] ;
  wire \circ_array_reg_n_0_[4][2] ;
  wire \circ_array_reg_n_0_[4][3] ;
  wire \circ_array_reg_n_0_[4][4] ;
  wire \circ_array_reg_n_0_[4][5] ;
  wire \circ_array_reg_n_0_[4][6] ;
  wire \circ_array_reg_n_0_[4][7] ;
  wire \circ_array_reg_n_0_[5][0] ;
  wire \circ_array_reg_n_0_[5][1] ;
  wire \circ_array_reg_n_0_[5][2] ;
  wire \circ_array_reg_n_0_[5][3] ;
  wire \circ_array_reg_n_0_[5][4] ;
  wire \circ_array_reg_n_0_[5][5] ;
  wire \circ_array_reg_n_0_[5][6] ;
  wire \circ_array_reg_n_0_[5][7] ;
  wire \circ_array_reg_n_0_[6][0] ;
  wire \circ_array_reg_n_0_[6][1] ;
  wire \circ_array_reg_n_0_[6][2] ;
  wire \circ_array_reg_n_0_[6][3] ;
  wire \circ_array_reg_n_0_[6][4] ;
  wire \circ_array_reg_n_0_[6][5] ;
  wire \circ_array_reg_n_0_[6][6] ;
  wire \circ_array_reg_n_0_[6][7] ;
  wire \circ_array_reg_n_0_[7][0] ;
  wire \circ_array_reg_n_0_[7][1] ;
  wire \circ_array_reg_n_0_[7][2] ;
  wire \circ_array_reg_n_0_[7][3] ;
  wire \circ_array_reg_n_0_[7][4] ;
  wire \circ_array_reg_n_0_[7][5] ;
  wire \circ_array_reg_n_0_[7][6] ;
  wire \circ_array_reg_n_0_[7][7] ;
  wire \counter[7]_i_3_n_0 ;
  wire \counter[7]_i_4__0_n_0 ;
  wire [7:0]counter_reg;
  wire \counter_reg[2]_0 ;
  wire \counter_reg[3]_0 ;
  wire \counter_reg[6]_0 ;
  wire \counter_reg[7]_0 ;
  wire \dout[0]_i_2_n_0 ;
  wire \dout[0]_i_3_n_0 ;
  wire \dout[1]_i_2_n_0 ;
  wire \dout[1]_i_3_n_0 ;
  wire \dout[2]_i_2_n_0 ;
  wire \dout[2]_i_3_n_0 ;
  wire \dout[3]_i_2_n_0 ;
  wire \dout[3]_i_3_n_0 ;
  wire \dout[4]_i_2_n_0 ;
  wire \dout[4]_i_3_n_0 ;
  wire \dout[5]_i_2_n_0 ;
  wire \dout[5]_i_3_n_0 ;
  wire \dout[6]_i_2_n_0 ;
  wire \dout[6]_i_3_n_0 ;
  wire \dout[7]_i_1__0_n_0 ;
  wire \dout[7]_i_3__0_n_0 ;
  wire \dout[7]_i_4_n_0 ;
  wire p_0_in;
  wire [7:0]p_0_in__3;
  wire \rptr[0]_i_1_n_0 ;
  wire \rptr[1]_i_1_n_0 ;
  wire \rptr[2]_i_1_n_0 ;
  wire \rptr_reg[2]_0 ;
  wire \rptr_reg_n_0_[0] ;
  wire \rptr_reg_n_0_[1] ;
  wire \rptr_reg_n_0_[2] ;
  wire tx_fifo_empty;
  wire tx_fifo_empty_delayed_i_2_n_0;
  wire \wptr[0]_i_1_n_0 ;
  wire \wptr[1]_i_1_n_0 ;
  wire \wptr[2]_i_1_n_0 ;
  wire \wptr_reg[2]_0 ;
  wire \wptr_reg_n_0_[0] ;
  wire \wptr_reg_n_0_[1] ;
  wire \wptr_reg_n_0_[2] ;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT4 #(
    .INIT(16'h0001)) 
    \circ_array[0][7]_i_1 
       (.I0(\wptr_reg_n_0_[1] ),
        .I1(\wptr_reg_n_0_[0] ),
        .I2(\wptr_reg[2]_0 ),
        .I3(\wptr_reg_n_0_[2] ),
        .O(\circ_array[0][7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0004)) 
    \circ_array[1][7]_i_1 
       (.I0(\wptr_reg_n_0_[1] ),
        .I1(\wptr_reg_n_0_[0] ),
        .I2(\wptr_reg[2]_0 ),
        .I3(\wptr_reg_n_0_[2] ),
        .O(\circ_array[1][7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0004)) 
    \circ_array[2][7]_i_1 
       (.I0(\wptr_reg_n_0_[0] ),
        .I1(\wptr_reg_n_0_[1] ),
        .I2(\wptr_reg[2]_0 ),
        .I3(\wptr_reg_n_0_[2] ),
        .O(\circ_array[2][7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0008)) 
    \circ_array[3][7]_i_1 
       (.I0(\wptr_reg_n_0_[1] ),
        .I1(\wptr_reg_n_0_[0] ),
        .I2(\wptr_reg[2]_0 ),
        .I3(\wptr_reg_n_0_[2] ),
        .O(\circ_array[3][7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0100)) 
    \circ_array[4][7]_i_1 
       (.I0(\wptr_reg_n_0_[1] ),
        .I1(\wptr_reg_n_0_[0] ),
        .I2(\wptr_reg[2]_0 ),
        .I3(\wptr_reg_n_0_[2] ),
        .O(\circ_array[4][7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0400)) 
    \circ_array[5][7]_i_1 
       (.I0(\wptr_reg_n_0_[1] ),
        .I1(\wptr_reg_n_0_[0] ),
        .I2(\wptr_reg[2]_0 ),
        .I3(\wptr_reg_n_0_[2] ),
        .O(\circ_array[5][7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0400)) 
    \circ_array[6][7]_i_1 
       (.I0(\wptr_reg_n_0_[0] ),
        .I1(\wptr_reg_n_0_[1] ),
        .I2(\wptr_reg[2]_0 ),
        .I3(\wptr_reg_n_0_[2] ),
        .O(\circ_array[6][7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \circ_array[7][7]_i_1 
       (.I0(\wptr_reg[2]_0 ),
        .I1(\wptr_reg_n_0_[2] ),
        .I2(\wptr_reg_n_0_[1] ),
        .I3(\wptr_reg_n_0_[0] ),
        .O(\circ_array[7][7]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \circ_array[7][7]_i_6 
       (.I0(counter_reg[2]),
        .I1(counter_reg[1]),
        .I2(counter_reg[0]),
        .O(\counter_reg[2]_0 ));
  LUT5 #(
    .INIT(32'h00000002)) 
    \circ_array[7][7]_i_7 
       (.I0(counter_reg[3]),
        .I1(counter_reg[5]),
        .I2(counter_reg[7]),
        .I3(counter_reg[4]),
        .I4(counter_reg[6]),
        .O(\counter_reg[3]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \circ_array_reg[0][0] 
       (.C(CLK),
        .CE(\circ_array[0][7]_i_1_n_0 ),
        .D(D[0]),
        .Q(\circ_array_reg_n_0_[0][0] ),
        .R(\counter_reg[7]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \circ_array_reg[0][1] 
       (.C(CLK),
        .CE(\circ_array[0][7]_i_1_n_0 ),
        .D(D[1]),
        .Q(\circ_array_reg_n_0_[0][1] ),
        .R(\counter_reg[7]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \circ_array_reg[0][2] 
       (.C(CLK),
        .CE(\circ_array[0][7]_i_1_n_0 ),
        .D(D[2]),
        .Q(\circ_array_reg_n_0_[0][2] ),
        .R(\counter_reg[7]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \circ_array_reg[0][3] 
       (.C(CLK),
        .CE(\circ_array[0][7]_i_1_n_0 ),
        .D(D[3]),
        .Q(\circ_array_reg_n_0_[0][3] ),
        .R(\counter_reg[7]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \circ_array_reg[0][4] 
       (.C(CLK),
        .CE(\circ_array[0][7]_i_1_n_0 ),
        .D(D[4]),
        .Q(\circ_array_reg_n_0_[0][4] ),
        .R(\counter_reg[7]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \circ_array_reg[0][5] 
       (.C(CLK),
        .CE(\circ_array[0][7]_i_1_n_0 ),
        .D(D[5]),
        .Q(\circ_array_reg_n_0_[0][5] ),
        .R(\counter_reg[7]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \circ_array_reg[0][6] 
       (.C(CLK),
        .CE(\circ_array[0][7]_i_1_n_0 ),
        .D(D[6]),
        .Q(\circ_array_reg_n_0_[0][6] ),
        .R(\counter_reg[7]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \circ_array_reg[0][7] 
       (.C(CLK),
        .CE(\circ_array[0][7]_i_1_n_0 ),
        .D(D[7]),
        .Q(\circ_array_reg_n_0_[0][7] ),
        .R(\counter_reg[7]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \circ_array_reg[1][0] 
       (.C(CLK),
        .CE(\circ_array[1][7]_i_1_n_0 ),
        .D(D[0]),
        .Q(\circ_array_reg_n_0_[1][0] ),
        .R(\counter_reg[7]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \circ_array_reg[1][1] 
       (.C(CLK),
        .CE(\circ_array[1][7]_i_1_n_0 ),
        .D(D[1]),
        .Q(\circ_array_reg_n_0_[1][1] ),
        .R(\counter_reg[7]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \circ_array_reg[1][2] 
       (.C(CLK),
        .CE(\circ_array[1][7]_i_1_n_0 ),
        .D(D[2]),
        .Q(\circ_array_reg_n_0_[1][2] ),
        .R(\counter_reg[7]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \circ_array_reg[1][3] 
       (.C(CLK),
        .CE(\circ_array[1][7]_i_1_n_0 ),
        .D(D[3]),
        .Q(\circ_array_reg_n_0_[1][3] ),
        .R(\counter_reg[7]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \circ_array_reg[1][4] 
       (.C(CLK),
        .CE(\circ_array[1][7]_i_1_n_0 ),
        .D(D[4]),
        .Q(\circ_array_reg_n_0_[1][4] ),
        .R(\counter_reg[7]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \circ_array_reg[1][5] 
       (.C(CLK),
        .CE(\circ_array[1][7]_i_1_n_0 ),
        .D(D[5]),
        .Q(\circ_array_reg_n_0_[1][5] ),
        .R(\counter_reg[7]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \circ_array_reg[1][6] 
       (.C(CLK),
        .CE(\circ_array[1][7]_i_1_n_0 ),
        .D(D[6]),
        .Q(\circ_array_reg_n_0_[1][6] ),
        .R(\counter_reg[7]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \circ_array_reg[1][7] 
       (.C(CLK),
        .CE(\circ_array[1][7]_i_1_n_0 ),
        .D(D[7]),
        .Q(\circ_array_reg_n_0_[1][7] ),
        .R(\counter_reg[7]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \circ_array_reg[2][0] 
       (.C(CLK),
        .CE(\circ_array[2][7]_i_1_n_0 ),
        .D(D[0]),
        .Q(\circ_array_reg_n_0_[2][0] ),
        .R(\counter_reg[7]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \circ_array_reg[2][1] 
       (.C(CLK),
        .CE(\circ_array[2][7]_i_1_n_0 ),
        .D(D[1]),
        .Q(\circ_array_reg_n_0_[2][1] ),
        .R(\counter_reg[7]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \circ_array_reg[2][2] 
       (.C(CLK),
        .CE(\circ_array[2][7]_i_1_n_0 ),
        .D(D[2]),
        .Q(\circ_array_reg_n_0_[2][2] ),
        .R(\counter_reg[7]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \circ_array_reg[2][3] 
       (.C(CLK),
        .CE(\circ_array[2][7]_i_1_n_0 ),
        .D(D[3]),
        .Q(\circ_array_reg_n_0_[2][3] ),
        .R(\counter_reg[7]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \circ_array_reg[2][4] 
       (.C(CLK),
        .CE(\circ_array[2][7]_i_1_n_0 ),
        .D(D[4]),
        .Q(\circ_array_reg_n_0_[2][4] ),
        .R(\counter_reg[7]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \circ_array_reg[2][5] 
       (.C(CLK),
        .CE(\circ_array[2][7]_i_1_n_0 ),
        .D(D[5]),
        .Q(\circ_array_reg_n_0_[2][5] ),
        .R(\counter_reg[7]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \circ_array_reg[2][6] 
       (.C(CLK),
        .CE(\circ_array[2][7]_i_1_n_0 ),
        .D(D[6]),
        .Q(\circ_array_reg_n_0_[2][6] ),
        .R(\counter_reg[7]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \circ_array_reg[2][7] 
       (.C(CLK),
        .CE(\circ_array[2][7]_i_1_n_0 ),
        .D(D[7]),
        .Q(\circ_array_reg_n_0_[2][7] ),
        .R(\counter_reg[7]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \circ_array_reg[3][0] 
       (.C(CLK),
        .CE(\circ_array[3][7]_i_1_n_0 ),
        .D(D[0]),
        .Q(\circ_array_reg_n_0_[3][0] ),
        .R(\counter_reg[7]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \circ_array_reg[3][1] 
       (.C(CLK),
        .CE(\circ_array[3][7]_i_1_n_0 ),
        .D(D[1]),
        .Q(\circ_array_reg_n_0_[3][1] ),
        .R(\counter_reg[7]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \circ_array_reg[3][2] 
       (.C(CLK),
        .CE(\circ_array[3][7]_i_1_n_0 ),
        .D(D[2]),
        .Q(\circ_array_reg_n_0_[3][2] ),
        .R(\counter_reg[7]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \circ_array_reg[3][3] 
       (.C(CLK),
        .CE(\circ_array[3][7]_i_1_n_0 ),
        .D(D[3]),
        .Q(\circ_array_reg_n_0_[3][3] ),
        .R(\counter_reg[7]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \circ_array_reg[3][4] 
       (.C(CLK),
        .CE(\circ_array[3][7]_i_1_n_0 ),
        .D(D[4]),
        .Q(\circ_array_reg_n_0_[3][4] ),
        .R(\counter_reg[7]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \circ_array_reg[3][5] 
       (.C(CLK),
        .CE(\circ_array[3][7]_i_1_n_0 ),
        .D(D[5]),
        .Q(\circ_array_reg_n_0_[3][5] ),
        .R(\counter_reg[7]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \circ_array_reg[3][6] 
       (.C(CLK),
        .CE(\circ_array[3][7]_i_1_n_0 ),
        .D(D[6]),
        .Q(\circ_array_reg_n_0_[3][6] ),
        .R(\counter_reg[7]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \circ_array_reg[3][7] 
       (.C(CLK),
        .CE(\circ_array[3][7]_i_1_n_0 ),
        .D(D[7]),
        .Q(\circ_array_reg_n_0_[3][7] ),
        .R(\counter_reg[7]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \circ_array_reg[4][0] 
       (.C(CLK),
        .CE(\circ_array[4][7]_i_1_n_0 ),
        .D(D[0]),
        .Q(\circ_array_reg_n_0_[4][0] ),
        .R(\counter_reg[7]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \circ_array_reg[4][1] 
       (.C(CLK),
        .CE(\circ_array[4][7]_i_1_n_0 ),
        .D(D[1]),
        .Q(\circ_array_reg_n_0_[4][1] ),
        .R(\counter_reg[7]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \circ_array_reg[4][2] 
       (.C(CLK),
        .CE(\circ_array[4][7]_i_1_n_0 ),
        .D(D[2]),
        .Q(\circ_array_reg_n_0_[4][2] ),
        .R(\counter_reg[7]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \circ_array_reg[4][3] 
       (.C(CLK),
        .CE(\circ_array[4][7]_i_1_n_0 ),
        .D(D[3]),
        .Q(\circ_array_reg_n_0_[4][3] ),
        .R(\counter_reg[7]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \circ_array_reg[4][4] 
       (.C(CLK),
        .CE(\circ_array[4][7]_i_1_n_0 ),
        .D(D[4]),
        .Q(\circ_array_reg_n_0_[4][4] ),
        .R(\counter_reg[7]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \circ_array_reg[4][5] 
       (.C(CLK),
        .CE(\circ_array[4][7]_i_1_n_0 ),
        .D(D[5]),
        .Q(\circ_array_reg_n_0_[4][5] ),
        .R(\counter_reg[7]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \circ_array_reg[4][6] 
       (.C(CLK),
        .CE(\circ_array[4][7]_i_1_n_0 ),
        .D(D[6]),
        .Q(\circ_array_reg_n_0_[4][6] ),
        .R(\counter_reg[7]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \circ_array_reg[4][7] 
       (.C(CLK),
        .CE(\circ_array[4][7]_i_1_n_0 ),
        .D(D[7]),
        .Q(\circ_array_reg_n_0_[4][7] ),
        .R(\counter_reg[7]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \circ_array_reg[5][0] 
       (.C(CLK),
        .CE(\circ_array[5][7]_i_1_n_0 ),
        .D(D[0]),
        .Q(\circ_array_reg_n_0_[5][0] ),
        .R(\counter_reg[7]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \circ_array_reg[5][1] 
       (.C(CLK),
        .CE(\circ_array[5][7]_i_1_n_0 ),
        .D(D[1]),
        .Q(\circ_array_reg_n_0_[5][1] ),
        .R(\counter_reg[7]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \circ_array_reg[5][2] 
       (.C(CLK),
        .CE(\circ_array[5][7]_i_1_n_0 ),
        .D(D[2]),
        .Q(\circ_array_reg_n_0_[5][2] ),
        .R(\counter_reg[7]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \circ_array_reg[5][3] 
       (.C(CLK),
        .CE(\circ_array[5][7]_i_1_n_0 ),
        .D(D[3]),
        .Q(\circ_array_reg_n_0_[5][3] ),
        .R(\counter_reg[7]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \circ_array_reg[5][4] 
       (.C(CLK),
        .CE(\circ_array[5][7]_i_1_n_0 ),
        .D(D[4]),
        .Q(\circ_array_reg_n_0_[5][4] ),
        .R(\counter_reg[7]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \circ_array_reg[5][5] 
       (.C(CLK),
        .CE(\circ_array[5][7]_i_1_n_0 ),
        .D(D[5]),
        .Q(\circ_array_reg_n_0_[5][5] ),
        .R(\counter_reg[7]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \circ_array_reg[5][6] 
       (.C(CLK),
        .CE(\circ_array[5][7]_i_1_n_0 ),
        .D(D[6]),
        .Q(\circ_array_reg_n_0_[5][6] ),
        .R(\counter_reg[7]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \circ_array_reg[5][7] 
       (.C(CLK),
        .CE(\circ_array[5][7]_i_1_n_0 ),
        .D(D[7]),
        .Q(\circ_array_reg_n_0_[5][7] ),
        .R(\counter_reg[7]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \circ_array_reg[6][0] 
       (.C(CLK),
        .CE(\circ_array[6][7]_i_1_n_0 ),
        .D(D[0]),
        .Q(\circ_array_reg_n_0_[6][0] ),
        .R(\counter_reg[7]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \circ_array_reg[6][1] 
       (.C(CLK),
        .CE(\circ_array[6][7]_i_1_n_0 ),
        .D(D[1]),
        .Q(\circ_array_reg_n_0_[6][1] ),
        .R(\counter_reg[7]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \circ_array_reg[6][2] 
       (.C(CLK),
        .CE(\circ_array[6][7]_i_1_n_0 ),
        .D(D[2]),
        .Q(\circ_array_reg_n_0_[6][2] ),
        .R(\counter_reg[7]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \circ_array_reg[6][3] 
       (.C(CLK),
        .CE(\circ_array[6][7]_i_1_n_0 ),
        .D(D[3]),
        .Q(\circ_array_reg_n_0_[6][3] ),
        .R(\counter_reg[7]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \circ_array_reg[6][4] 
       (.C(CLK),
        .CE(\circ_array[6][7]_i_1_n_0 ),
        .D(D[4]),
        .Q(\circ_array_reg_n_0_[6][4] ),
        .R(\counter_reg[7]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \circ_array_reg[6][5] 
       (.C(CLK),
        .CE(\circ_array[6][7]_i_1_n_0 ),
        .D(D[5]),
        .Q(\circ_array_reg_n_0_[6][5] ),
        .R(\counter_reg[7]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \circ_array_reg[6][6] 
       (.C(CLK),
        .CE(\circ_array[6][7]_i_1_n_0 ),
        .D(D[6]),
        .Q(\circ_array_reg_n_0_[6][6] ),
        .R(\counter_reg[7]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \circ_array_reg[6][7] 
       (.C(CLK),
        .CE(\circ_array[6][7]_i_1_n_0 ),
        .D(D[7]),
        .Q(\circ_array_reg_n_0_[6][7] ),
        .R(\counter_reg[7]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \circ_array_reg[7][0] 
       (.C(CLK),
        .CE(\circ_array[7][7]_i_1_n_0 ),
        .D(D[0]),
        .Q(\circ_array_reg_n_0_[7][0] ),
        .R(\counter_reg[7]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \circ_array_reg[7][1] 
       (.C(CLK),
        .CE(\circ_array[7][7]_i_1_n_0 ),
        .D(D[1]),
        .Q(\circ_array_reg_n_0_[7][1] ),
        .R(\counter_reg[7]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \circ_array_reg[7][2] 
       (.C(CLK),
        .CE(\circ_array[7][7]_i_1_n_0 ),
        .D(D[2]),
        .Q(\circ_array_reg_n_0_[7][2] ),
        .R(\counter_reg[7]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \circ_array_reg[7][3] 
       (.C(CLK),
        .CE(\circ_array[7][7]_i_1_n_0 ),
        .D(D[3]),
        .Q(\circ_array_reg_n_0_[7][3] ),
        .R(\counter_reg[7]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \circ_array_reg[7][4] 
       (.C(CLK),
        .CE(\circ_array[7][7]_i_1_n_0 ),
        .D(D[4]),
        .Q(\circ_array_reg_n_0_[7][4] ),
        .R(\counter_reg[7]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \circ_array_reg[7][5] 
       (.C(CLK),
        .CE(\circ_array[7][7]_i_1_n_0 ),
        .D(D[5]),
        .Q(\circ_array_reg_n_0_[7][5] ),
        .R(\counter_reg[7]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \circ_array_reg[7][6] 
       (.C(CLK),
        .CE(\circ_array[7][7]_i_1_n_0 ),
        .D(D[6]),
        .Q(\circ_array_reg_n_0_[7][6] ),
        .R(\counter_reg[7]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \circ_array_reg[7][7] 
       (.C(CLK),
        .CE(\circ_array[7][7]_i_1_n_0 ),
        .D(D[7]),
        .Q(\circ_array_reg_n_0_[7][7] ),
        .R(\counter_reg[7]_0 ));
  (* \PinAttr:I0:HOLD_DETOUR  = "191" *) 
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_1__0 
       (.I0(counter_reg[0]),
        .O(p_0_in__3[0]));
  (* \PinAttr:I2:HOLD_DETOUR  = "191" *) 
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \counter[1]_i_1__0 
       (.I0(\counter_reg[6]_0 ),
        .I1(counter_reg[1]),
        .I2(counter_reg[0]),
        .O(p_0_in__3[1]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'hE718)) 
    \counter[2]_i_1__0 
       (.I0(counter_reg[1]),
        .I1(counter_reg[0]),
        .I2(\counter_reg[6]_0 ),
        .I3(counter_reg[2]),
        .O(p_0_in__3[2]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT5 #(
    .INIT(32'hFE7F0180)) 
    \counter[3]_i_1__0 
       (.I0(counter_reg[1]),
        .I1(counter_reg[0]),
        .I2(counter_reg[2]),
        .I3(\counter_reg[6]_0 ),
        .I4(counter_reg[3]),
        .O(p_0_in__3[3]));
  LUT6 #(
    .INIT(64'hFFFE7FFF00018000)) 
    \counter[4]_i_1__0 
       (.I0(counter_reg[3]),
        .I1(counter_reg[1]),
        .I2(counter_reg[0]),
        .I3(counter_reg[2]),
        .I4(\counter_reg[6]_0 ),
        .I5(counter_reg[4]),
        .O(p_0_in__3[4]));
  (* \PinAttr:I3:HOLD_DETOUR  = "195" *) 
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'hE21D)) 
    \counter[5]_i_1__0 
       (.I0(\counter[7]_i_4__0_n_0 ),
        .I1(\counter_reg[6]_0 ),
        .I2(\counter[7]_i_3_n_0 ),
        .I3(counter_reg[5]),
        .O(p_0_in__3[5]));
  (* \PinAttr:I1:HOLD_DETOUR  = "195" *) 
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT5 #(
    .INIT(32'hA9AAA966)) 
    \counter[6]_i_1__0 
       (.I0(counter_reg[6]),
        .I1(counter_reg[5]),
        .I2(\counter[7]_i_3_n_0 ),
        .I3(\counter_reg[6]_0 ),
        .I4(\counter[7]_i_4__0_n_0 ),
        .O(p_0_in__3[6]));
  LUT6 #(
    .INIT(64'hAAA9AAAAAAA95AAA)) 
    \counter[7]_i_2__0 
       (.I0(counter_reg[7]),
        .I1(\counter[7]_i_3_n_0 ),
        .I2(counter_reg[5]),
        .I3(counter_reg[6]),
        .I4(\counter_reg[6]_0 ),
        .I5(\counter[7]_i_4__0_n_0 ),
        .O(p_0_in__3[7]));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \counter[7]_i_3 
       (.I0(counter_reg[4]),
        .I1(counter_reg[2]),
        .I2(counter_reg[1]),
        .I3(counter_reg[0]),
        .I4(counter_reg[3]),
        .O(\counter[7]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \counter[7]_i_4__0 
       (.I0(counter_reg[3]),
        .I1(counter_reg[1]),
        .I2(counter_reg[0]),
        .I3(counter_reg[2]),
        .I4(counter_reg[4]),
        .O(\counter[7]_i_4__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(p_0_in__3[0]),
        .Q(counter_reg[0]),
        .R(\counter_reg[7]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(CLK),
        .CE(E),
        .D(p_0_in__3[1]),
        .Q(counter_reg[1]),
        .R(\counter_reg[7]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(CLK),
        .CE(E),
        .D(p_0_in__3[2]),
        .Q(counter_reg[2]),
        .R(\counter_reg[7]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(CLK),
        .CE(E),
        .D(p_0_in__3[3]),
        .Q(counter_reg[3]),
        .R(\counter_reg[7]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(CLK),
        .CE(E),
        .D(p_0_in__3[4]),
        .Q(counter_reg[4]),
        .R(\counter_reg[7]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(CLK),
        .CE(E),
        .D(p_0_in__3[5]),
        .Q(counter_reg[5]),
        .R(\counter_reg[7]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(CLK),
        .CE(E),
        .D(p_0_in__3[6]),
        .Q(counter_reg[6]),
        .R(\counter_reg[7]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(CLK),
        .CE(E),
        .D(p_0_in__3[7]),
        .Q(counter_reg[7]),
        .R(\counter_reg[7]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[0]_i_2 
       (.I0(\circ_array_reg_n_0_[3][0] ),
        .I1(\circ_array_reg_n_0_[2][0] ),
        .I2(\rptr_reg_n_0_[1] ),
        .I3(\circ_array_reg_n_0_[1][0] ),
        .I4(\rptr_reg_n_0_[0] ),
        .I5(\circ_array_reg_n_0_[0][0] ),
        .O(\dout[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[0]_i_3 
       (.I0(\circ_array_reg_n_0_[7][0] ),
        .I1(\circ_array_reg_n_0_[6][0] ),
        .I2(\rptr_reg_n_0_[1] ),
        .I3(\circ_array_reg_n_0_[5][0] ),
        .I4(\rptr_reg_n_0_[0] ),
        .I5(\circ_array_reg_n_0_[4][0] ),
        .O(\dout[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[1]_i_2 
       (.I0(\circ_array_reg_n_0_[3][1] ),
        .I1(\circ_array_reg_n_0_[2][1] ),
        .I2(\rptr_reg_n_0_[1] ),
        .I3(\circ_array_reg_n_0_[1][1] ),
        .I4(\rptr_reg_n_0_[0] ),
        .I5(\circ_array_reg_n_0_[0][1] ),
        .O(\dout[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[1]_i_3 
       (.I0(\circ_array_reg_n_0_[7][1] ),
        .I1(\circ_array_reg_n_0_[6][1] ),
        .I2(\rptr_reg_n_0_[1] ),
        .I3(\circ_array_reg_n_0_[5][1] ),
        .I4(\rptr_reg_n_0_[0] ),
        .I5(\circ_array_reg_n_0_[4][1] ),
        .O(\dout[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[2]_i_2 
       (.I0(\circ_array_reg_n_0_[3][2] ),
        .I1(\circ_array_reg_n_0_[2][2] ),
        .I2(\rptr_reg_n_0_[1] ),
        .I3(\circ_array_reg_n_0_[1][2] ),
        .I4(\rptr_reg_n_0_[0] ),
        .I5(\circ_array_reg_n_0_[0][2] ),
        .O(\dout[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[2]_i_3 
       (.I0(\circ_array_reg_n_0_[7][2] ),
        .I1(\circ_array_reg_n_0_[6][2] ),
        .I2(\rptr_reg_n_0_[1] ),
        .I3(\circ_array_reg_n_0_[5][2] ),
        .I4(\rptr_reg_n_0_[0] ),
        .I5(\circ_array_reg_n_0_[4][2] ),
        .O(\dout[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[3]_i_2 
       (.I0(\circ_array_reg_n_0_[3][3] ),
        .I1(\circ_array_reg_n_0_[2][3] ),
        .I2(\rptr_reg_n_0_[1] ),
        .I3(\circ_array_reg_n_0_[1][3] ),
        .I4(\rptr_reg_n_0_[0] ),
        .I5(\circ_array_reg_n_0_[0][3] ),
        .O(\dout[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[3]_i_3 
       (.I0(\circ_array_reg_n_0_[7][3] ),
        .I1(\circ_array_reg_n_0_[6][3] ),
        .I2(\rptr_reg_n_0_[1] ),
        .I3(\circ_array_reg_n_0_[5][3] ),
        .I4(\rptr_reg_n_0_[0] ),
        .I5(\circ_array_reg_n_0_[4][3] ),
        .O(\dout[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[4]_i_2 
       (.I0(\circ_array_reg_n_0_[3][4] ),
        .I1(\circ_array_reg_n_0_[2][4] ),
        .I2(\rptr_reg_n_0_[1] ),
        .I3(\circ_array_reg_n_0_[1][4] ),
        .I4(\rptr_reg_n_0_[0] ),
        .I5(\circ_array_reg_n_0_[0][4] ),
        .O(\dout[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[4]_i_3 
       (.I0(\circ_array_reg_n_0_[7][4] ),
        .I1(\circ_array_reg_n_0_[6][4] ),
        .I2(\rptr_reg_n_0_[1] ),
        .I3(\circ_array_reg_n_0_[5][4] ),
        .I4(\rptr_reg_n_0_[0] ),
        .I5(\circ_array_reg_n_0_[4][4] ),
        .O(\dout[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[5]_i_2 
       (.I0(\circ_array_reg_n_0_[3][5] ),
        .I1(\circ_array_reg_n_0_[2][5] ),
        .I2(\rptr_reg_n_0_[1] ),
        .I3(\circ_array_reg_n_0_[1][5] ),
        .I4(\rptr_reg_n_0_[0] ),
        .I5(\circ_array_reg_n_0_[0][5] ),
        .O(\dout[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[5]_i_3 
       (.I0(\circ_array_reg_n_0_[7][5] ),
        .I1(\circ_array_reg_n_0_[6][5] ),
        .I2(\rptr_reg_n_0_[1] ),
        .I3(\circ_array_reg_n_0_[5][5] ),
        .I4(\rptr_reg_n_0_[0] ),
        .I5(\circ_array_reg_n_0_[4][5] ),
        .O(\dout[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[6]_i_2 
       (.I0(\circ_array_reg_n_0_[3][6] ),
        .I1(\circ_array_reg_n_0_[2][6] ),
        .I2(\rptr_reg_n_0_[1] ),
        .I3(\circ_array_reg_n_0_[1][6] ),
        .I4(\rptr_reg_n_0_[0] ),
        .I5(\circ_array_reg_n_0_[0][6] ),
        .O(\dout[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[6]_i_3 
       (.I0(\circ_array_reg_n_0_[7][6] ),
        .I1(\circ_array_reg_n_0_[6][6] ),
        .I2(\rptr_reg_n_0_[1] ),
        .I3(\circ_array_reg_n_0_[5][6] ),
        .I4(\rptr_reg_n_0_[0] ),
        .I5(\circ_array_reg_n_0_[4][6] ),
        .O(\dout[6]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \dout[7]_i_1__0 
       (.I0(\counter_reg[6]_0 ),
        .I1(p_0_in),
        .O(\dout[7]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[7]_i_3__0 
       (.I0(\circ_array_reg_n_0_[3][7] ),
        .I1(\circ_array_reg_n_0_[2][7] ),
        .I2(\rptr_reg_n_0_[1] ),
        .I3(\circ_array_reg_n_0_[1][7] ),
        .I4(\rptr_reg_n_0_[0] ),
        .I5(\circ_array_reg_n_0_[0][7] ),
        .O(\dout[7]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dout[7]_i_4 
       (.I0(\circ_array_reg_n_0_[7][7] ),
        .I1(\circ_array_reg_n_0_[6][7] ),
        .I2(\rptr_reg_n_0_[1] ),
        .I3(\circ_array_reg_n_0_[5][7] ),
        .I4(\rptr_reg_n_0_[0] ),
        .I5(\circ_array_reg_n_0_[4][7] ),
        .O(\dout[7]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[0] 
       (.C(CLK),
        .CE(\dout[7]_i_1__0_n_0 ),
        .D(circ_array[0]),
        .Q(Q[0]),
        .R(\<const0> ));
  MUXF7 \dout_reg[0]_i_1 
       (.I0(\dout[0]_i_2_n_0 ),
        .I1(\dout[0]_i_3_n_0 ),
        .O(circ_array[0]),
        .S(\rptr_reg_n_0_[2] ));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[1] 
       (.C(CLK),
        .CE(\dout[7]_i_1__0_n_0 ),
        .D(circ_array[1]),
        .Q(Q[1]),
        .R(\<const0> ));
  MUXF7 \dout_reg[1]_i_1 
       (.I0(\dout[1]_i_2_n_0 ),
        .I1(\dout[1]_i_3_n_0 ),
        .O(circ_array[1]),
        .S(\rptr_reg_n_0_[2] ));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[2] 
       (.C(CLK),
        .CE(\dout[7]_i_1__0_n_0 ),
        .D(circ_array[2]),
        .Q(Q[2]),
        .R(\<const0> ));
  MUXF7 \dout_reg[2]_i_1 
       (.I0(\dout[2]_i_2_n_0 ),
        .I1(\dout[2]_i_3_n_0 ),
        .O(circ_array[2]),
        .S(\rptr_reg_n_0_[2] ));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[3] 
       (.C(CLK),
        .CE(\dout[7]_i_1__0_n_0 ),
        .D(circ_array[3]),
        .Q(Q[3]),
        .R(\<const0> ));
  MUXF7 \dout_reg[3]_i_1 
       (.I0(\dout[3]_i_2_n_0 ),
        .I1(\dout[3]_i_3_n_0 ),
        .O(circ_array[3]),
        .S(\rptr_reg_n_0_[2] ));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[4] 
       (.C(CLK),
        .CE(\dout[7]_i_1__0_n_0 ),
        .D(circ_array[4]),
        .Q(Q[4]),
        .R(\<const0> ));
  MUXF7 \dout_reg[4]_i_1 
       (.I0(\dout[4]_i_2_n_0 ),
        .I1(\dout[4]_i_3_n_0 ),
        .O(circ_array[4]),
        .S(\rptr_reg_n_0_[2] ));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[5] 
       (.C(CLK),
        .CE(\dout[7]_i_1__0_n_0 ),
        .D(circ_array[5]),
        .Q(Q[5]),
        .R(\<const0> ));
  MUXF7 \dout_reg[5]_i_1 
       (.I0(\dout[5]_i_2_n_0 ),
        .I1(\dout[5]_i_3_n_0 ),
        .O(circ_array[5]),
        .S(\rptr_reg_n_0_[2] ));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[6] 
       (.C(CLK),
        .CE(\dout[7]_i_1__0_n_0 ),
        .D(circ_array[6]),
        .Q(Q[6]),
        .R(\<const0> ));
  MUXF7 \dout_reg[6]_i_1 
       (.I0(\dout[6]_i_2_n_0 ),
        .I1(\dout[6]_i_3_n_0 ),
        .O(circ_array[6]),
        .S(\rptr_reg_n_0_[2] ));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[7] 
       (.C(CLK),
        .CE(\dout[7]_i_1__0_n_0 ),
        .D(circ_array[7]),
        .Q(Q[7]),
        .R(\<const0> ));
  MUXF7 \dout_reg[7]_i_2 
       (.I0(\dout[7]_i_3__0_n_0 ),
        .I1(\dout[7]_i_4_n_0 ),
        .O(circ_array[7]),
        .S(\rptr_reg_n_0_[2] ));
  LUT2 #(
    .INIT(4'h6)) 
    \rptr[0]_i_1 
       (.I0(\counter_reg[6]_0 ),
        .I1(\rptr_reg_n_0_[0] ),
        .O(\rptr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \rptr[1]_i_1 
       (.I0(\rptr_reg_n_0_[0] ),
        .I1(\counter_reg[6]_0 ),
        .I2(\rptr_reg_n_0_[1] ),
        .O(\rptr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \rptr[2]_i_1 
       (.I0(\rptr_reg_n_0_[0] ),
        .I1(\rptr_reg_n_0_[1] ),
        .I2(\counter_reg[6]_0 ),
        .I3(\rptr_reg_n_0_[2] ),
        .O(\rptr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    \rptr[2]_i_2 
       (.I0(\rptr_reg[2]_0 ),
        .I1(counter_reg[6]),
        .I2(counter_reg[4]),
        .I3(counter_reg[7]),
        .I4(counter_reg[5]),
        .I5(tx_fifo_empty_delayed_i_2_n_0),
        .O(\counter_reg[6]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rptr_reg[0] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\rptr[0]_i_1_n_0 ),
        .Q(\rptr_reg_n_0_[0] ),
        .R(\counter_reg[7]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rptr_reg[1] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\rptr[1]_i_1_n_0 ),
        .Q(\rptr_reg_n_0_[1] ),
        .R(\counter_reg[7]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rptr_reg[2] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\rptr[2]_i_1_n_0 ),
        .Q(\rptr_reg_n_0_[2] ),
        .R(\counter_reg[7]_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    tx_fifo_empty_delayed_i_1
       (.I0(tx_fifo_empty_delayed_i_2_n_0),
        .I1(counter_reg[5]),
        .I2(counter_reg[7]),
        .I3(counter_reg[4]),
        .I4(counter_reg[6]),
        .O(tx_fifo_empty));
  LUT4 #(
    .INIT(16'hFFFE)) 
    tx_fifo_empty_delayed_i_2
       (.I0(counter_reg[3]),
        .I1(counter_reg[0]),
        .I2(counter_reg[1]),
        .I3(counter_reg[2]),
        .O(tx_fifo_empty_delayed_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    \wptr[0]_i_1 
       (.I0(\wptr_reg[2]_0 ),
        .I1(\wptr_reg_n_0_[0] ),
        .O(\wptr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \wptr[1]_i_1 
       (.I0(\wptr_reg_n_0_[0] ),
        .I1(\wptr_reg[2]_0 ),
        .I2(\wptr_reg_n_0_[1] ),
        .O(\wptr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'hF708)) 
    \wptr[2]_i_1 
       (.I0(\wptr_reg_n_0_[1] ),
        .I1(\wptr_reg_n_0_[0] ),
        .I2(\wptr_reg[2]_0 ),
        .I3(\wptr_reg_n_0_[2] ),
        .O(\wptr[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wptr_reg[0] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\wptr[0]_i_1_n_0 ),
        .Q(\wptr_reg_n_0_[0] ),
        .R(\counter_reg[7]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wptr_reg[1] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\wptr[1]_i_1_n_0 ),
        .Q(\wptr_reg_n_0_[1] ),
        .R(\counter_reg[7]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wptr_reg[2] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\wptr[2]_i_1_n_0 ),
        .Q(\wptr_reg_n_0_[2] ),
        .R(\counter_reg[7]_0 ));
endmodule

module mem_controller
   (E,
    \FSM_onehot_curr_state_reg[0]_0 ,
    \FSM_onehot_curr_state_reg[2]_0 ,
    D,
    \tmp2_reg[0] ,
    Q,
    \FSM_onehot_curr_state_reg[2]_1 ,
    LEDS_OBUF,
    mem_reg,
    CLK,
    WEA,
    \counter_reg[7] ,
    switches_sync,
    p_0_in,
    \counter_reg[7]_0 ,
    \counter_reg[1] ,
    \addr_reg[0]_0 ,
    \addr_reg[0]_1 ,
    \addr_reg[0]_2 ,
    cmd,
    \data_reg[7]_0 );
  output [0:0]E;
  output \FSM_onehot_curr_state_reg[0]_0 ;
  output \FSM_onehot_curr_state_reg[2]_0 ;
  output [0:0]D;
  output [0:0]\tmp2_reg[0] ;
  output [2:0]Q;
  output \FSM_onehot_curr_state_reg[2]_1 ;
  output [2:0]LEDS_OBUF;
  output [7:0]mem_reg;
  input CLK;
  input [0:0]WEA;
  input \counter_reg[7] ;
  input switches_sync;
  input p_0_in;
  input \counter_reg[7]_0 ;
  input \counter_reg[1] ;
  input \addr_reg[0]_0 ;
  input \addr_reg[0]_1 ;
  input \addr_reg[0]_2 ;
  input cmd;
  input [7:0]\data_reg[7]_0 ;

  wire \<const1> ;
  wire CLK;
  wire [0:0]D;
  wire [0:0]E;
  wire \FSM_onehot_curr_state[0]_i_1_n_0 ;
  wire \FSM_onehot_curr_state[3]_i_1_n_0 ;
  wire \FSM_onehot_curr_state[3]_i_2_n_0 ;
  wire \FSM_onehot_curr_state[3]_i_3_n_0 ;
  wire \FSM_onehot_curr_state[5]_i_1_n_0 ;
  wire \FSM_onehot_curr_state[5]_i_2_n_0 ;
  wire \FSM_onehot_curr_state[5]_i_3_n_0 ;
  wire \FSM_onehot_curr_state[5]_i_4_n_0 ;
  wire \FSM_onehot_curr_state[6]_i_4_n_0 ;
  wire \FSM_onehot_curr_state[6]_i_5_n_0 ;
  wire \FSM_onehot_curr_state[6]_i_6_n_0 ;
  wire \FSM_onehot_curr_state[6]_i_8_n_0 ;
  wire \FSM_onehot_curr_state_reg[0]_0 ;
  wire \FSM_onehot_curr_state_reg[2]_0 ;
  wire \FSM_onehot_curr_state_reg[2]_1 ;
  wire \FSM_onehot_curr_state_reg_n_0_[0] ;
  wire \FSM_onehot_curr_state_reg_n_0_[2] ;
  wire \FSM_onehot_curr_state_reg_n_0_[3] ;
  wire [2:0]LEDS_OBUF;
  wire [2:0]Q;
  wire [0:0]WEA;
  wire [7:0]addr;
  wire \addr[7]_i_3_n_0 ;
  wire \addr[7]_i_4_n_0 ;
  wire addr_0;
  wire \addr_reg[0]_0 ;
  wire \addr_reg[0]_1 ;
  wire \addr_reg[0]_2 ;
  wire cmd;
  wire \cmd_reg_n_0_[0] ;
  wire \cmd_reg_n_0_[1] ;
  wire \cmd_reg_n_0_[2] ;
  wire \cmd_reg_n_0_[3] ;
  wire \cmd_reg_n_0_[4] ;
  wire \cmd_reg_n_0_[5] ;
  wire \cmd_reg_n_0_[6] ;
  wire \cmd_reg_n_0_[7] ;
  wire \counter_reg[1] ;
  wire \counter_reg[7] ;
  wire \counter_reg[7]_0 ;
  wire \curr_state[0]_i_1_n_0 ;
  wire \curr_state[1]_i_1_n_0 ;
  wire \curr_state[2]_i_1_n_0 ;
  wire data;
  wire [7:0]\data_reg[7]_0 ;
  wire \data_reg_n_0_[0] ;
  wire \data_reg_n_0_[1] ;
  wire \data_reg_n_0_[2] ;
  wire \data_reg_n_0_[3] ;
  wire \data_reg_n_0_[4] ;
  wire \data_reg_n_0_[5] ;
  wire \data_reg_n_0_[6] ;
  wire \data_reg_n_0_[7] ;
  wire \dout[7]_i_3_n_0 ;
  wire [7:0]mem_reg;
  wire [2:0]mem_state_leds;
  wire next_state;
  wire p_0_in;
  wire \pkt_rd_cnt[0]_i_1_n_0 ;
  wire \pkt_rd_cnt[1]_i_1_n_0 ;
  wire \pkt_rd_cnt[1]_i_2_n_0 ;
  wire \pkt_rd_cnt[2]_i_1_n_0 ;
  wire \pkt_rd_cnt[2]_i_2_n_0 ;
  wire \pkt_rd_cnt_reg_n_0_[0] ;
  wire \pkt_rd_cnt_reg_n_0_[1] ;
  wire \pkt_rd_cnt_reg_n_0_[2] ;
  wire switches_sync;
  wire [0:0]\tmp2_reg[0] ;

  LUT2 #(
    .INIT(4'hE)) 
    \FSM_onehot_curr_state[0]_i_1 
       (.I0(Q[1]),
        .I1(Q[2]),
        .O(\FSM_onehot_curr_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0100000000000000)) 
    \FSM_onehot_curr_state[3]_i_1 
       (.I0(\cmd_reg_n_0_[1] ),
        .I1(\cmd_reg_n_0_[0] ),
        .I2(\pkt_rd_cnt_reg_n_0_[2] ),
        .I3(\FSM_onehot_curr_state[3]_i_2_n_0 ),
        .I4(\FSM_onehot_curr_state[3]_i_3_n_0 ),
        .I5(\FSM_onehot_curr_state_reg_n_0_[2] ),
        .O(\FSM_onehot_curr_state[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0002)) 
    \FSM_onehot_curr_state[3]_i_2 
       (.I0(\pkt_rd_cnt_reg_n_0_[1] ),
        .I1(\pkt_rd_cnt_reg_n_0_[0] ),
        .I2(\cmd_reg_n_0_[6] ),
        .I3(\cmd_reg_n_0_[7] ),
        .O(\FSM_onehot_curr_state[3]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0008)) 
    \FSM_onehot_curr_state[3]_i_3 
       (.I0(\cmd_reg_n_0_[5] ),
        .I1(\cmd_reg_n_0_[4] ),
        .I2(\cmd_reg_n_0_[3] ),
        .I3(\cmd_reg_n_0_[2] ),
        .O(\FSM_onehot_curr_state[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_curr_state[5]_i_1 
       (.I0(\FSM_onehot_curr_state_reg_n_0_[2] ),
        .I1(\FSM_onehot_curr_state[5]_i_2_n_0 ),
        .O(\FSM_onehot_curr_state[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \FSM_onehot_curr_state[5]_i_2 
       (.I0(\FSM_onehot_curr_state[3]_i_3_n_0 ),
        .I1(\FSM_onehot_curr_state[5]_i_3_n_0 ),
        .I2(\FSM_onehot_curr_state[5]_i_4_n_0 ),
        .I3(\pkt_rd_cnt_reg_n_0_[2] ),
        .I4(\cmd_reg_n_0_[0] ),
        .I5(\cmd_reg_n_0_[1] ),
        .O(\FSM_onehot_curr_state[5]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \FSM_onehot_curr_state[5]_i_3 
       (.I0(\pkt_rd_cnt_reg_n_0_[0] ),
        .I1(\pkt_rd_cnt_reg_n_0_[1] ),
        .O(\FSM_onehot_curr_state[5]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_onehot_curr_state[5]_i_4 
       (.I0(\cmd_reg_n_0_[7] ),
        .I1(\cmd_reg_n_0_[6] ),
        .O(\FSM_onehot_curr_state[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFCFFFC)) 
    \FSM_onehot_curr_state[6]_i_2 
       (.I0(\FSM_onehot_curr_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_curr_state[3]_i_1_n_0 ),
        .I2(\FSM_onehot_curr_state[6]_i_4_n_0 ),
        .I3(\FSM_onehot_curr_state[6]_i_5_n_0 ),
        .I4(\FSM_onehot_curr_state[6]_i_6_n_0 ),
        .I5(\counter_reg[7] ),
        .O(next_state));
  LUT6 #(
    .INIT(64'hFEFEFEFEFEFFFEFE)) 
    \FSM_onehot_curr_state[6]_i_4 
       (.I0(\FSM_onehot_curr_state_reg_n_0_[3] ),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(\FSM_onehot_curr_state[6]_i_8_n_0 ),
        .I4(data),
        .I5(\pkt_rd_cnt_reg_n_0_[2] ),
        .O(\FSM_onehot_curr_state[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0004040400000000)) 
    \FSM_onehot_curr_state[6]_i_5 
       (.I0(\pkt_rd_cnt_reg_n_0_[2] ),
        .I1(\pkt_rd_cnt_reg_n_0_[0] ),
        .I2(\pkt_rd_cnt_reg_n_0_[1] ),
        .I3(\addr_reg[0]_0 ),
        .I4(\addr_reg[0]_1 ),
        .I5(Q[0]),
        .O(\FSM_onehot_curr_state[6]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000040)) 
    \FSM_onehot_curr_state[6]_i_6 
       (.I0(\pkt_rd_cnt_reg_n_0_[0] ),
        .I1(\pkt_rd_cnt_reg_n_0_[1] ),
        .I2(\FSM_onehot_curr_state_reg_n_0_[2] ),
        .I3(\pkt_rd_cnt_reg_n_0_[2] ),
        .I4(\addr[7]_i_4_n_0 ),
        .I5(\addr[7]_i_3_n_0 ),
        .O(\FSM_onehot_curr_state[6]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \FSM_onehot_curr_state[6]_i_8 
       (.I0(\pkt_rd_cnt_reg_n_0_[0] ),
        .I1(\pkt_rd_cnt_reg_n_0_[1] ),
        .O(\FSM_onehot_curr_state[6]_i_8_n_0 ));
  (* FSM_ENCODED_STATES = "IDLE:0000001,READ_CMD:0000010,READ_ADDR:0000100,WRITE_MEM_VAL:1000000,ECHO_VAL:0010000,READ_DATA:0100000,READ_MEM_VAL:0001000" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_curr_state_reg[0] 
       (.C(CLK),
        .CE(next_state),
        .D(\FSM_onehot_curr_state[0]_i_1_n_0 ),
        .Q(\FSM_onehot_curr_state_reg_n_0_[0] ),
        .S(\addr_reg[0]_2 ));
  (* FSM_ENCODED_STATES = "IDLE:0000001,READ_CMD:0000010,READ_ADDR:0000100,WRITE_MEM_VAL:1000000,ECHO_VAL:0010000,READ_DATA:0100000,READ_MEM_VAL:0001000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_curr_state_reg[1] 
       (.C(CLK),
        .CE(next_state),
        .D(\FSM_onehot_curr_state_reg_n_0_[0] ),
        .Q(Q[0]),
        .R(\addr_reg[0]_2 ));
  (* FSM_ENCODED_STATES = "IDLE:0000001,READ_CMD:0000010,READ_ADDR:0000100,WRITE_MEM_VAL:1000000,ECHO_VAL:0010000,READ_DATA:0100000,READ_MEM_VAL:0001000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_curr_state_reg[2] 
       (.C(CLK),
        .CE(next_state),
        .D(Q[0]),
        .Q(\FSM_onehot_curr_state_reg_n_0_[2] ),
        .R(\addr_reg[0]_2 ));
  (* FSM_ENCODED_STATES = "IDLE:0000001,READ_CMD:0000010,READ_ADDR:0000100,WRITE_MEM_VAL:1000000,ECHO_VAL:0010000,READ_DATA:0100000,READ_MEM_VAL:0001000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_curr_state_reg[3] 
       (.C(CLK),
        .CE(next_state),
        .D(\FSM_onehot_curr_state[3]_i_1_n_0 ),
        .Q(\FSM_onehot_curr_state_reg_n_0_[3] ),
        .R(\addr_reg[0]_2 ));
  (* FSM_ENCODED_STATES = "IDLE:0000001,READ_CMD:0000010,READ_ADDR:0000100,WRITE_MEM_VAL:1000000,ECHO_VAL:0010000,READ_DATA:0100000,READ_MEM_VAL:0001000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_curr_state_reg[4] 
       (.C(CLK),
        .CE(next_state),
        .D(\FSM_onehot_curr_state_reg_n_0_[3] ),
        .Q(Q[1]),
        .R(\addr_reg[0]_2 ));
  (* FSM_ENCODED_STATES = "IDLE:0000001,READ_CMD:0000010,READ_ADDR:0000100,WRITE_MEM_VAL:1000000,ECHO_VAL:0010000,READ_DATA:0100000,READ_MEM_VAL:0001000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_curr_state_reg[5] 
       (.C(CLK),
        .CE(next_state),
        .D(\FSM_onehot_curr_state[5]_i_1_n_0 ),
        .Q(data),
        .R(\addr_reg[0]_2 ));
  (* FSM_ENCODED_STATES = "IDLE:0000001,READ_CMD:0000010,READ_ADDR:0000100,WRITE_MEM_VAL:1000000,ECHO_VAL:0010000,READ_DATA:0100000,READ_MEM_VAL:0001000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_curr_state_reg[6] 
       (.C(CLK),
        .CE(next_state),
        .D(data),
        .Q(Q[2]),
        .R(\addr_reg[0]_2 ));
  LUT2 #(
    .INIT(4'h2)) 
    \LEDS_OBUF[0]_inst_i_1 
       (.I0(mem_state_leds[0]),
        .I1(switches_sync),
        .O(LEDS_OBUF[0]));
  LUT2 #(
    .INIT(4'h2)) 
    \LEDS_OBUF[1]_inst_i_1 
       (.I0(mem_state_leds[1]),
        .I1(switches_sync),
        .O(LEDS_OBUF[1]));
  LUT2 #(
    .INIT(4'h2)) 
    \LEDS_OBUF[2]_inst_i_1 
       (.I0(mem_state_leds[2]),
        .I1(switches_sync),
        .O(LEDS_OBUF[2]));
  VCC VCC
       (.P(\<const1> ));
  LUT5 #(
    .INIT(32'hFFF70000)) 
    \addr[7]_i_1 
       (.I0(\addr_reg[0]_0 ),
        .I1(\addr_reg[0]_1 ),
        .I2(\addr[7]_i_3_n_0 ),
        .I3(\addr[7]_i_4_n_0 ),
        .I4(\FSM_onehot_curr_state_reg_n_0_[2] ),
        .O(addr_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \addr[7]_i_3 
       (.I0(\cmd_reg_n_0_[1] ),
        .I1(\cmd_reg_n_0_[2] ),
        .I2(\cmd_reg_n_0_[6] ),
        .I3(\cmd_reg_n_0_[7] ),
        .O(\addr[7]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hDFFF)) 
    \addr[7]_i_4 
       (.I0(\cmd_reg_n_0_[5] ),
        .I1(\cmd_reg_n_0_[3] ),
        .I2(\cmd_reg_n_0_[4] ),
        .I3(\cmd_reg_n_0_[0] ),
        .O(\addr[7]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[0] 
       (.C(CLK),
        .CE(addr_0),
        .D(\data_reg[7]_0 [0]),
        .Q(addr[0]),
        .R(\addr_reg[0]_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[1] 
       (.C(CLK),
        .CE(addr_0),
        .D(\data_reg[7]_0 [1]),
        .Q(addr[1]),
        .R(\addr_reg[0]_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[2] 
       (.C(CLK),
        .CE(addr_0),
        .D(\data_reg[7]_0 [2]),
        .Q(addr[2]),
        .R(\addr_reg[0]_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[3] 
       (.C(CLK),
        .CE(addr_0),
        .D(\data_reg[7]_0 [3]),
        .Q(addr[3]),
        .R(\addr_reg[0]_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[4] 
       (.C(CLK),
        .CE(addr_0),
        .D(\data_reg[7]_0 [4]),
        .Q(addr[4]),
        .R(\addr_reg[0]_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[5] 
       (.C(CLK),
        .CE(addr_0),
        .D(\data_reg[7]_0 [5]),
        .Q(addr[5]),
        .R(\addr_reg[0]_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[6] 
       (.C(CLK),
        .CE(addr_0),
        .D(\data_reg[7]_0 [6]),
        .Q(addr[6]),
        .R(\addr_reg[0]_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[7] 
       (.C(CLK),
        .CE(addr_0),
        .D(\data_reg[7]_0 [7]),
        .Q(addr[7]),
        .R(\addr_reg[0]_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \cmd_reg[0] 
       (.C(CLK),
        .CE(cmd),
        .D(\data_reg[7]_0 [0]),
        .Q(\cmd_reg_n_0_[0] ),
        .R(\addr_reg[0]_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \cmd_reg[1] 
       (.C(CLK),
        .CE(cmd),
        .D(\data_reg[7]_0 [1]),
        .Q(\cmd_reg_n_0_[1] ),
        .R(\addr_reg[0]_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \cmd_reg[2] 
       (.C(CLK),
        .CE(cmd),
        .D(\data_reg[7]_0 [2]),
        .Q(\cmd_reg_n_0_[2] ),
        .R(\addr_reg[0]_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \cmd_reg[3] 
       (.C(CLK),
        .CE(cmd),
        .D(\data_reg[7]_0 [3]),
        .Q(\cmd_reg_n_0_[3] ),
        .R(\addr_reg[0]_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \cmd_reg[4] 
       (.C(CLK),
        .CE(cmd),
        .D(\data_reg[7]_0 [4]),
        .Q(\cmd_reg_n_0_[4] ),
        .R(\addr_reg[0]_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \cmd_reg[5] 
       (.C(CLK),
        .CE(cmd),
        .D(\data_reg[7]_0 [5]),
        .Q(\cmd_reg_n_0_[5] ),
        .R(\addr_reg[0]_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \cmd_reg[6] 
       (.C(CLK),
        .CE(cmd),
        .D(\data_reg[7]_0 [6]),
        .Q(\cmd_reg_n_0_[6] ),
        .R(\addr_reg[0]_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \cmd_reg[7] 
       (.C(CLK),
        .CE(cmd),
        .D(\data_reg[7]_0 [7]),
        .Q(\cmd_reg_n_0_[7] ),
        .R(\addr_reg[0]_2 ));
  LUT6 #(
    .INIT(64'hFF37FFFF00C80000)) 
    \counter[1]_i_1 
       (.I0(\FSM_onehot_curr_state_reg[0]_0 ),
        .I1(\counter_reg[7] ),
        .I2(\FSM_onehot_curr_state_reg[2]_0 ),
        .I3(switches_sync),
        .I4(p_0_in),
        .I5(\counter_reg[1] ),
        .O(D));
  LUT6 #(
    .INIT(64'hFF37FFFF00C80000)) 
    \counter[7]_i_1 
       (.I0(\FSM_onehot_curr_state_reg[0]_0 ),
        .I1(\counter_reg[7] ),
        .I2(\FSM_onehot_curr_state_reg[2]_0 ),
        .I3(switches_sync),
        .I4(p_0_in),
        .I5(\counter_reg[7]_0 ),
        .O(E));
  (* \PinAttr:I1:HOLD_DETOUR  = "158" *) 
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h010F)) 
    \curr_state[0]_i_1 
       (.I0(\FSM_onehot_curr_state[5]_i_2_n_0 ),
        .I1(mem_state_leds[2]),
        .I2(mem_state_leds[0]),
        .I3(mem_state_leds[1]),
        .O(\curr_state[0]_i_1_n_0 ));
  (* \PinAttr:I0:HOLD_DETOUR  = "158" *) 
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h5504)) 
    \curr_state[1]_i_1 
       (.I0(mem_state_leds[2]),
        .I1(mem_state_leds[1]),
        .I2(\FSM_onehot_curr_state[5]_i_2_n_0 ),
        .I3(mem_state_leds[0]),
        .O(\curr_state[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h5422)) 
    \curr_state[2]_i_1 
       (.I0(mem_state_leds[2]),
        .I1(mem_state_leds[0]),
        .I2(\FSM_onehot_curr_state[5]_i_2_n_0 ),
        .I3(mem_state_leds[1]),
        .O(\curr_state[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \curr_state_reg[0] 
       (.C(CLK),
        .CE(next_state),
        .D(\curr_state[0]_i_1_n_0 ),
        .Q(mem_state_leds[0]),
        .R(\addr_reg[0]_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \curr_state_reg[1] 
       (.C(CLK),
        .CE(next_state),
        .D(\curr_state[1]_i_1_n_0 ),
        .Q(mem_state_leds[1]),
        .R(\addr_reg[0]_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \curr_state_reg[2] 
       (.C(CLK),
        .CE(next_state),
        .D(\curr_state[2]_i_1_n_0 ),
        .Q(mem_state_leds[2]),
        .R(\addr_reg[0]_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[0] 
       (.C(CLK),
        .CE(data),
        .D(\data_reg[7]_0 [0]),
        .Q(\data_reg_n_0_[0] ),
        .R(\addr_reg[0]_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[1] 
       (.C(CLK),
        .CE(data),
        .D(\data_reg[7]_0 [1]),
        .Q(\data_reg_n_0_[1] ),
        .R(\addr_reg[0]_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[2] 
       (.C(CLK),
        .CE(data),
        .D(\data_reg[7]_0 [2]),
        .Q(\data_reg_n_0_[2] ),
        .R(\addr_reg[0]_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[3] 
       (.C(CLK),
        .CE(data),
        .D(\data_reg[7]_0 [3]),
        .Q(\data_reg_n_0_[3] ),
        .R(\addr_reg[0]_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[4] 
       (.C(CLK),
        .CE(data),
        .D(\data_reg[7]_0 [4]),
        .Q(\data_reg_n_0_[4] ),
        .R(\addr_reg[0]_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[5] 
       (.C(CLK),
        .CE(data),
        .D(\data_reg[7]_0 [5]),
        .Q(\data_reg_n_0_[5] ),
        .R(\addr_reg[0]_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[6] 
       (.C(CLK),
        .CE(data),
        .D(\data_reg[7]_0 [6]),
        .Q(\data_reg_n_0_[6] ),
        .R(\addr_reg[0]_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[7] 
       (.C(CLK),
        .CE(data),
        .D(\data_reg[7]_0 [7]),
        .Q(\data_reg_n_0_[7] ),
        .R(\addr_reg[0]_2 ));
  LUT6 #(
    .INIT(64'h2222000002000000)) 
    \dout[7]_i_1 
       (.I0(p_0_in),
        .I1(switches_sync),
        .I2(\dout[7]_i_3_n_0 ),
        .I3(\FSM_onehot_curr_state_reg_n_0_[2] ),
        .I4(\counter_reg[7] ),
        .I5(\FSM_onehot_curr_state_reg[0]_0 ),
        .O(\tmp2_reg[0] ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \dout[7]_i_3 
       (.I0(\cmd_reg_n_0_[7] ),
        .I1(\cmd_reg_n_0_[6] ),
        .I2(\cmd_reg_n_0_[2] ),
        .I3(\cmd_reg_n_0_[1] ),
        .I4(\addr[7]_i_4_n_0 ),
        .O(\dout[7]_i_3_n_0 ));
  memory mem
       (.CLK(CLK),
        .Q({\data_reg_n_0_[7] ,\data_reg_n_0_[6] ,\data_reg_n_0_[5] ,\data_reg_n_0_[4] ,\data_reg_n_0_[3] ,\data_reg_n_0_[2] ,\data_reg_n_0_[1] ,\data_reg_n_0_[0] }),
        .WEA(WEA),
        .mem_reg_0(mem_reg),
        .mem_reg_1({Q[2],\FSM_onehot_curr_state_reg_n_0_[3] }),
        .mem_reg_2(addr),
        .p_0_in(p_0_in),
        .switches_sync(switches_sync));
  LUT5 #(
    .INIT(32'hF0F1FFFE)) 
    \pkt_rd_cnt[0]_i_1 
       (.I0(cmd),
        .I1(data),
        .I2(\FSM_onehot_curr_state_reg_n_0_[0] ),
        .I3(addr_0),
        .I4(\pkt_rd_cnt_reg_n_0_[0] ),
        .O(\pkt_rd_cnt[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAA8)) 
    \pkt_rd_cnt[1]_i_1 
       (.I0(\pkt_rd_cnt[1]_i_2_n_0 ),
        .I1(cmd),
        .I2(data),
        .I3(\FSM_onehot_curr_state_reg_n_0_[0] ),
        .I4(addr_0),
        .I5(\pkt_rd_cnt_reg_n_0_[1] ),
        .O(\pkt_rd_cnt[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h66666660)) 
    \pkt_rd_cnt[1]_i_2 
       (.I0(\pkt_rd_cnt_reg_n_0_[0] ),
        .I1(\pkt_rd_cnt_reg_n_0_[1] ),
        .I2(data),
        .I3(Q[0]),
        .I4(\FSM_onehot_curr_state_reg_n_0_[2] ),
        .O(\pkt_rd_cnt[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAA8)) 
    \pkt_rd_cnt[2]_i_1 
       (.I0(\pkt_rd_cnt[2]_i_2_n_0 ),
        .I1(cmd),
        .I2(data),
        .I3(\FSM_onehot_curr_state_reg_n_0_[0] ),
        .I4(addr_0),
        .I5(\pkt_rd_cnt_reg_n_0_[2] ),
        .O(\pkt_rd_cnt[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00FEFEFEFE000000)) 
    \pkt_rd_cnt[2]_i_2 
       (.I0(data),
        .I1(Q[0]),
        .I2(\FSM_onehot_curr_state_reg_n_0_[2] ),
        .I3(\pkt_rd_cnt_reg_n_0_[1] ),
        .I4(\pkt_rd_cnt_reg_n_0_[0] ),
        .I5(\pkt_rd_cnt_reg_n_0_[2] ),
        .O(\pkt_rd_cnt[2]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pkt_rd_cnt_reg[0] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\pkt_rd_cnt[0]_i_1_n_0 ),
        .Q(\pkt_rd_cnt_reg_n_0_[0] ),
        .R(\addr_reg[0]_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \pkt_rd_cnt_reg[1] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\pkt_rd_cnt[1]_i_1_n_0 ),
        .Q(\pkt_rd_cnt_reg_n_0_[1] ),
        .R(\addr_reg[0]_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \pkt_rd_cnt_reg[2] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\pkt_rd_cnt[2]_i_1_n_0 ),
        .Q(\pkt_rd_cnt_reg_n_0_[2] ),
        .R(\addr_reg[0]_2 ));
  LUT2 #(
    .INIT(4'hE)) 
    \rptr[0]_i_2 
       (.I0(\FSM_onehot_curr_state_reg_n_0_[0] ),
        .I1(Q[0]),
        .O(\FSM_onehot_curr_state_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \rptr[0]_i_3 
       (.I0(\FSM_onehot_curr_state_reg_n_0_[2] ),
        .I1(\addr[7]_i_4_n_0 ),
        .I2(\cmd_reg_n_0_[1] ),
        .I3(\cmd_reg_n_0_[2] ),
        .I4(\cmd_reg_n_0_[6] ),
        .I5(\cmd_reg_n_0_[7] ),
        .O(\FSM_onehot_curr_state_reg[2]_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAABFAA)) 
    \rptr[2]_i_3__0 
       (.I0(\FSM_onehot_curr_state_reg[0]_0 ),
        .I1(\addr_reg[0]_0 ),
        .I2(\addr_reg[0]_1 ),
        .I3(\FSM_onehot_curr_state_reg_n_0_[2] ),
        .I4(\addr[7]_i_4_n_0 ),
        .I5(\addr[7]_i_3_n_0 ),
        .O(\FSM_onehot_curr_state_reg[2]_1 ));
endmodule

module memory
   (mem_reg_0,
    CLK,
    WEA,
    Q,
    p_0_in,
    mem_reg_1,
    mem_reg_2,
    switches_sync);
  output [7:0]mem_reg_0;
  input CLK;
  input [0:0]WEA;
  input [7:0]Q;
  input p_0_in;
  input [1:0]mem_reg_1;
  input [7:0]mem_reg_2;
  input switches_sync;

  wire \<const0> ;
  wire \<const1> ;
  wire CLK;
  wire [7:0]Q;
  wire [0:0]WEA;
  wire [7:0]mem_din;
  wire [7:0]mem_reg_0;
  wire [1:0]mem_reg_1;
  wire [7:0]mem_reg_2;
  wire mem_reg_i_10_n_0;
  wire mem_reg_i_11_n_0;
  wire mem_reg_i_12_n_0;
  wire mem_reg_i_13_n_0;
  wire mem_reg_i_14_n_0;
  wire mem_reg_i_15_n_0;
  wire mem_reg_i_16_n_0;
  wire mem_reg_i_1_n_0;
  wire mem_reg_i_2_n_0;
  wire mem_reg_i_3_n_0;
  wire mem_reg_i_4_n_0;
  wire mem_reg_i_5_n_0;
  wire mem_reg_i_6_n_0;
  wire mem_reg_i_7_n_0;
  wire mem_reg_i_8_n_0;
  wire mem_reg_i_9_n_0;
  wire p_0_in;
  wire switches_sync;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT2 #(
    .INIT(4'h2)) 
    \circ_array[7][0]_i_1 
       (.I0(mem_din[0]),
        .I1(switches_sync),
        .O(mem_reg_0[0]));
  LUT2 #(
    .INIT(4'h2)) 
    \circ_array[7][1]_i_1 
       (.I0(mem_din[1]),
        .I1(switches_sync),
        .O(mem_reg_0[1]));
  LUT2 #(
    .INIT(4'h2)) 
    \circ_array[7][2]_i_1 
       (.I0(mem_din[2]),
        .I1(switches_sync),
        .O(mem_reg_0[2]));
  LUT2 #(
    .INIT(4'h2)) 
    \circ_array[7][3]_i_1 
       (.I0(mem_din[3]),
        .I1(switches_sync),
        .O(mem_reg_0[3]));
  LUT2 #(
    .INIT(4'h2)) 
    \circ_array[7][4]_i_1 
       (.I0(mem_din[4]),
        .I1(switches_sync),
        .O(mem_reg_0[4]));
  LUT2 #(
    .INIT(4'h2)) 
    \circ_array[7][5]_i_1 
       (.I0(mem_din[5]),
        .I1(switches_sync),
        .O(mem_reg_0[5]));
  LUT2 #(
    .INIT(4'h2)) 
    \circ_array[7][6]_i_1 
       (.I0(mem_din[6]),
        .I1(switches_sync),
        .O(mem_reg_0[6]));
  LUT2 #(
    .INIT(4'h2)) 
    \circ_array[7][7]_i_2 
       (.I0(mem_din[7]),
        .I1(switches_sync),
        .O(mem_reg_0[7]));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "mem_ctrl/mem/mem" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "768" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "7" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(0)) 
    mem_reg
       (.ADDRARDADDR({\<const1> ,\<const1> ,mem_reg_i_1_n_0,mem_reg_i_2_n_0,mem_reg_i_3_n_0,mem_reg_i_4_n_0,mem_reg_i_5_n_0,mem_reg_i_6_n_0,mem_reg_i_7_n_0,mem_reg_i_8_n_0,\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .ADDRBWRADDR({\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .CLKARDCLK(CLK),
        .CLKBWRCLK(\<const0> ),
        .DIADI({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,mem_reg_i_9_n_0,mem_reg_i_10_n_0,mem_reg_i_11_n_0,mem_reg_i_12_n_0,mem_reg_i_13_n_0,mem_reg_i_14_n_0,mem_reg_i_15_n_0,mem_reg_i_16_n_0}),
        .DIBDI({\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .DIPADIP({\<const0> ,\<const0> }),
        .DIPBDIP({\<const1> ,\<const1> }),
        .DOADO(mem_din),
        .ENARDEN(\<const1> ),
        .ENBWREN(\<const0> ),
        .REGCEAREGCE(\<const0> ),
        .REGCEB(\<const0> ),
        .RSTRAMARSTRAM(\<const0> ),
        .RSTRAMB(\<const0> ),
        .RSTREGARSTREG(\<const0> ),
        .RSTREGB(\<const0> ),
        .WEA({WEA,WEA}),
        .WEBWE({\<const0> ,\<const0> ,\<const0> ,\<const0> }));
  LUT4 #(
    .INIT(16'hE000)) 
    mem_reg_i_1
       (.I0(mem_reg_1[1]),
        .I1(mem_reg_1[0]),
        .I2(p_0_in),
        .I3(mem_reg_2[7]),
        .O(mem_reg_i_1_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    mem_reg_i_10
       (.I0(Q[6]),
        .I1(p_0_in),
        .I2(mem_reg_1[1]),
        .O(mem_reg_i_10_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    mem_reg_i_11
       (.I0(Q[5]),
        .I1(p_0_in),
        .I2(mem_reg_1[1]),
        .O(mem_reg_i_11_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    mem_reg_i_12
       (.I0(Q[4]),
        .I1(p_0_in),
        .I2(mem_reg_1[1]),
        .O(mem_reg_i_12_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    mem_reg_i_13
       (.I0(Q[3]),
        .I1(p_0_in),
        .I2(mem_reg_1[1]),
        .O(mem_reg_i_13_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    mem_reg_i_14
       (.I0(Q[2]),
        .I1(p_0_in),
        .I2(mem_reg_1[1]),
        .O(mem_reg_i_14_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    mem_reg_i_15
       (.I0(Q[1]),
        .I1(p_0_in),
        .I2(mem_reg_1[1]),
        .O(mem_reg_i_15_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    mem_reg_i_16
       (.I0(Q[0]),
        .I1(p_0_in),
        .I2(mem_reg_1[1]),
        .O(mem_reg_i_16_n_0));
  LUT4 #(
    .INIT(16'hE000)) 
    mem_reg_i_2
       (.I0(mem_reg_1[1]),
        .I1(mem_reg_1[0]),
        .I2(p_0_in),
        .I3(mem_reg_2[6]),
        .O(mem_reg_i_2_n_0));
  LUT4 #(
    .INIT(16'hE000)) 
    mem_reg_i_3
       (.I0(mem_reg_1[1]),
        .I1(mem_reg_1[0]),
        .I2(p_0_in),
        .I3(mem_reg_2[5]),
        .O(mem_reg_i_3_n_0));
  LUT4 #(
    .INIT(16'hE000)) 
    mem_reg_i_4
       (.I0(mem_reg_1[1]),
        .I1(mem_reg_1[0]),
        .I2(p_0_in),
        .I3(mem_reg_2[4]),
        .O(mem_reg_i_4_n_0));
  LUT4 #(
    .INIT(16'hE000)) 
    mem_reg_i_5
       (.I0(mem_reg_1[1]),
        .I1(mem_reg_1[0]),
        .I2(p_0_in),
        .I3(mem_reg_2[3]),
        .O(mem_reg_i_5_n_0));
  LUT4 #(
    .INIT(16'hE000)) 
    mem_reg_i_6
       (.I0(mem_reg_1[1]),
        .I1(mem_reg_1[0]),
        .I2(p_0_in),
        .I3(mem_reg_2[2]),
        .O(mem_reg_i_6_n_0));
  LUT4 #(
    .INIT(16'hE000)) 
    mem_reg_i_7
       (.I0(mem_reg_1[1]),
        .I1(mem_reg_1[0]),
        .I2(p_0_in),
        .I3(mem_reg_2[1]),
        .O(mem_reg_i_7_n_0));
  LUT4 #(
    .INIT(16'hE000)) 
    mem_reg_i_8
       (.I0(mem_reg_1[1]),
        .I1(mem_reg_1[0]),
        .I2(p_0_in),
        .I3(mem_reg_2[0]),
        .O(mem_reg_i_8_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    mem_reg_i_9
       (.I0(Q[7]),
        .I1(p_0_in),
        .I2(mem_reg_1[1]),
        .O(mem_reg_i_9_n_0));
endmodule

module synchronizer
   (tmp2,
    BUTTONS_IBUF,
    CLK_125MHZ_FPGA_IBUF_BUFG);
  output [0:0]tmp2;
  input [0:0]BUTTONS_IBUF;
  input CLK_125MHZ_FPGA_IBUF_BUFG;

  wire \<const0> ;
  wire \<const1> ;
  wire [0:0]BUTTONS_IBUF;
  wire CLK_125MHZ_FPGA_IBUF_BUFG;
  wire [0:0]tmp1;
  wire [0:0]tmp2;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  FDRE #(
    .INIT(1'b0)) 
    \tmp1_reg[0] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(BUTTONS_IBUF),
        .Q(tmp1),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \tmp2_reg[0] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(tmp1),
        .Q(tmp2),
        .R(\<const0> ));
endmodule

(* ORIG_REF_NAME = "synchronizer" *) 
module synchronizer__parameterized0
   (switches_sync,
    \tmp2_reg[0]_0 ,
    SWITCHES_IBUF,
    CLK,
    Q);
  output switches_sync;
  output \tmp2_reg[0]_0 ;
  input [0:0]SWITCHES_IBUF;
  input CLK;
  input [0:0]Q;

  wire \<const0> ;
  wire \<const1> ;
  wire CLK;
  wire [0:0]Q;
  wire [0:0]SWITCHES_IBUF;
  wire switches_sync;
  wire \tmp1_reg_n_0_[0] ;
  wire \tmp2_reg[0]_0 ;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT2 #(
    .INIT(4'hB)) 
    \circ_array[7][7]_i_5 
       (.I0(switches_sync),
        .I1(Q),
        .O(\tmp2_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tmp1_reg[0] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(SWITCHES_IBUF),
        .Q(\tmp1_reg_n_0_[0] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \tmp2_reg[0] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\tmp1_reg_n_0_[0] ),
        .Q(switches_sync),
        .R(\<const0> ));
endmodule

module uart
   (FPGA_SERIAL_TX_OBUF,
    has_byte,
    \bit_counter_reg[3] ,
    symbol_edge,
    \bit_counter_reg[2] ,
    \bit_counter_reg[0] ,
    \rx_shift_reg[8] ,
    \bit_counter_reg[1] ,
    FPGA_SERIAL_RX_IBUF,
    CLK,
    Q,
    p_0_in,
    tx_fifo_empty_delayed,
    has_byte_reg,
    \bit_counter_reg[0]_0 ,
    E);
  output FPGA_SERIAL_TX_OBUF;
  output has_byte;
  output \bit_counter_reg[3] ;
  output symbol_edge;
  output \bit_counter_reg[2] ;
  output \bit_counter_reg[0] ;
  output [7:0]\rx_shift_reg[8] ;
  input \bit_counter_reg[1] ;
  input FPGA_SERIAL_RX_IBUF;
  input CLK;
  input [7:0]Q;
  input p_0_in;
  input tx_fifo_empty_delayed;
  input has_byte_reg;
  input \bit_counter_reg[0]_0 ;
  input [0:0]E;

  wire \<const1> ;
  wire CLK;
  wire [0:0]E;
  wire FPGA_SERIAL_RX_IBUF;
  wire FPGA_SERIAL_TX_OBUF;
  wire [7:0]Q;
  wire \bit_counter_reg[0] ;
  wire \bit_counter_reg[0]_0 ;
  wire \bit_counter_reg[1] ;
  wire \bit_counter_reg[2] ;
  wire \bit_counter_reg[3] ;
  wire has_byte;
  wire has_byte_reg;
  wire p_0_in;
  wire [7:0]\rx_shift_reg[8] ;
  wire serial_in_reg;
  wire symbol_edge;
  wire tx_fifo_empty_delayed;
  wire [0:0]tx_shift;

  VCC VCC
       (.P(\<const1> ));
  FDSE #(
    .INIT(1'b1)) 
    serial_in_reg_reg
       (.C(CLK),
        .CE(\<const1> ),
        .D(FPGA_SERIAL_RX_IBUF),
        .Q(serial_in_reg),
        .S(\bit_counter_reg[1] ));
  FDSE #(
    .INIT(1'b1)) 
    serial_out_reg_reg
       (.C(CLK),
        .CE(\<const1> ),
        .D(tx_shift),
        .Q(FPGA_SERIAL_TX_OBUF),
        .S(\bit_counter_reg[1] ));
  uart_receiver uareceive
       (.CLK(CLK),
        .\bit_counter_reg[2]_0 (\bit_counter_reg[2] ),
        .\bit_counter_reg[3]_0 (\bit_counter_reg[1] ),
        .has_byte(has_byte),
        .has_byte_reg_0(has_byte_reg),
        .p_0_in(p_0_in),
        .\rx_shift_reg[8]_0 (\rx_shift_reg[8] ),
        .serial_in_reg(serial_in_reg));
  uart_transmitter uatransmit
       (.CLK(CLK),
        .E(E),
        .Q(Q),
        .\bit_counter_reg[0]_0 (\bit_counter_reg[0] ),
        .\bit_counter_reg[0]_1 (\bit_counter_reg[0]_0 ),
        .\bit_counter_reg[1]_0 (\bit_counter_reg[1] ),
        .\bit_counter_reg[3]_0 (\bit_counter_reg[3] ),
        .\clock_counter_reg[0]_0 (symbol_edge),
        .p_0_in(p_0_in),
        .tx_fifo_empty_delayed(tx_fifo_empty_delayed),
        .\tx_shift_reg[0]_0 (tx_shift));
endmodule

module uart_receiver
   (has_byte,
    \bit_counter_reg[2]_0 ,
    \rx_shift_reg[8]_0 ,
    CLK,
    p_0_in,
    serial_in_reg,
    has_byte_reg_0,
    \bit_counter_reg[3]_0 );
  output has_byte;
  output \bit_counter_reg[2]_0 ;
  output [7:0]\rx_shift_reg[8]_0 ;
  input CLK;
  input p_0_in;
  input serial_in_reg;
  input has_byte_reg_0;
  input \bit_counter_reg[3]_0 ;

  wire \<const0> ;
  wire \<const1> ;
  wire CLK;
  wire [3:0]bit_counter;
  wire bit_counter0;
  wire \bit_counter[0]_i_1_n_0 ;
  wire \bit_counter[1]_i_1_n_0 ;
  wire \bit_counter[2]_i_1_n_0 ;
  wire \bit_counter[3]_i_1_n_0 ;
  wire \bit_counter[3]_i_2__0_n_0 ;
  wire \bit_counter[3]_i_3__0_n_0 ;
  wire \bit_counter_reg[2]_0 ;
  wire \bit_counter_reg[3]_0 ;
  wire \clock_counter[10]_i_1__0_n_0 ;
  wire \clock_counter[10]_i_3__0_n_0 ;
  wire \clock_counter[9]_i_2_n_0 ;
  wire [10:0]clock_counter_reg;
  wire has_byte;
  wire has_byte0;
  wire has_byte_i_1_n_0;
  wire has_byte_i_4_n_0;
  wire has_byte_reg_0;
  wire p_0_in;
  wire [10:0]p_0_in__1;
  wire rx_shift0;
  wire \rx_shift[9]_i_2_n_0 ;
  wire \rx_shift[9]_i_3_n_0 ;
  wire [7:0]\rx_shift_reg[8]_0 ;
  wire \rx_shift_reg_n_0_[9] ;
  wire serial_in_reg;
  wire start;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT5 #(
    .INIT(32'h6060A000)) 
    \bit_counter[0]_i_1 
       (.I0(bit_counter[0]),
        .I1(\bit_counter[3]_i_2__0_n_0 ),
        .I2(p_0_in),
        .I3(serial_in_reg),
        .I4(\bit_counter_reg[2]_0 ),
        .O(\bit_counter[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \bit_counter[0]_i_2 
       (.I0(bit_counter[2]),
        .I1(bit_counter[0]),
        .I2(bit_counter[1]),
        .I3(bit_counter[3]),
        .O(\bit_counter_reg[2]_0 ));
  LUT6 #(
    .INIT(64'hF50AF508F50AF50B)) 
    \bit_counter[1]_i_1 
       (.I0(\bit_counter[3]_i_2__0_n_0 ),
        .I1(bit_counter[2]),
        .I2(bit_counter[0]),
        .I3(bit_counter[1]),
        .I4(bit_counter[3]),
        .I5(serial_in_reg),
        .O(\bit_counter[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AAA60000)) 
    \bit_counter[2]_i_1 
       (.I0(bit_counter[2]),
        .I1(bit_counter0),
        .I2(bit_counter[1]),
        .I3(bit_counter[0]),
        .I4(p_0_in),
        .I5(start),
        .O(\bit_counter[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000200000)) 
    \bit_counter[2]_i_2__0 
       (.I0(\bit_counter_reg[2]_0 ),
        .I1(\rx_shift[9]_i_2_n_0 ),
        .I2(\bit_counter[3]_i_3__0_n_0 ),
        .I3(clock_counter_reg[0]),
        .I4(clock_counter_reg[4]),
        .I5(clock_counter_reg[1]),
        .O(bit_counter0));
  LUT5 #(
    .INIT(32'h00000001)) 
    \bit_counter[2]_i_3 
       (.I0(serial_in_reg),
        .I1(bit_counter[3]),
        .I2(bit_counter[1]),
        .I3(bit_counter[0]),
        .I4(bit_counter[2]),
        .O(start));
  LUT6 #(
    .INIT(64'hFFFD0000FFFD0003)) 
    \bit_counter[3]_i_1 
       (.I0(\bit_counter[3]_i_2__0_n_0 ),
        .I1(bit_counter[2]),
        .I2(bit_counter[0]),
        .I3(bit_counter[1]),
        .I4(bit_counter[3]),
        .I5(serial_in_reg),
        .O(\bit_counter[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000400)) 
    \bit_counter[3]_i_2__0 
       (.I0(clock_counter_reg[1]),
        .I1(clock_counter_reg[4]),
        .I2(clock_counter_reg[0]),
        .I3(\bit_counter[3]_i_3__0_n_0 ),
        .I4(\rx_shift[9]_i_2_n_0 ),
        .O(\bit_counter[3]_i_2__0_n_0 ));
  LUT4 #(
    .INIT(16'h0400)) 
    \bit_counter[3]_i_3__0 
       (.I0(clock_counter_reg[9]),
        .I1(clock_counter_reg[10]),
        .I2(clock_counter_reg[6]),
        .I3(clock_counter_reg[5]),
        .O(\bit_counter[3]_i_3__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bit_counter_reg[0] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\bit_counter[0]_i_1_n_0 ),
        .Q(bit_counter[0]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \bit_counter_reg[1] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\bit_counter[1]_i_1_n_0 ),
        .Q(bit_counter[1]),
        .R(\bit_counter_reg[3]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bit_counter_reg[2] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\bit_counter[2]_i_1_n_0 ),
        .Q(bit_counter[2]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \bit_counter_reg[3] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\bit_counter[3]_i_1_n_0 ),
        .Q(bit_counter[3]),
        .R(\bit_counter_reg[3]_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \clock_counter[0]_i_1__0 
       (.I0(clock_counter_reg[0]),
        .O(p_0_in__1[0]));
  LUT4 #(
    .INIT(16'hFF57)) 
    \clock_counter[10]_i_1__0 
       (.I0(p_0_in),
        .I1(serial_in_reg),
        .I2(\bit_counter_reg[2]_0 ),
        .I3(\bit_counter[3]_i_2__0_n_0 ),
        .O(\clock_counter[10]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \clock_counter[10]_i_2__0 
       (.I0(clock_counter_reg[10]),
        .I1(clock_counter_reg[8]),
        .I2(clock_counter_reg[6]),
        .I3(\clock_counter[10]_i_3__0_n_0 ),
        .I4(clock_counter_reg[7]),
        .I5(clock_counter_reg[9]),
        .O(p_0_in__1[10]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \clock_counter[10]_i_3__0 
       (.I0(clock_counter_reg[5]),
        .I1(clock_counter_reg[4]),
        .I2(clock_counter_reg[2]),
        .I3(clock_counter_reg[0]),
        .I4(clock_counter_reg[1]),
        .I5(clock_counter_reg[3]),
        .O(\clock_counter[10]_i_3__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \clock_counter[1]_i_1__0 
       (.I0(clock_counter_reg[0]),
        .I1(clock_counter_reg[1]),
        .O(p_0_in__1[1]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \clock_counter[2]_i_1__0 
       (.I0(clock_counter_reg[2]),
        .I1(clock_counter_reg[1]),
        .I2(clock_counter_reg[0]),
        .O(p_0_in__1[2]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \clock_counter[3]_i_1__0 
       (.I0(clock_counter_reg[3]),
        .I1(clock_counter_reg[2]),
        .I2(clock_counter_reg[0]),
        .I3(clock_counter_reg[1]),
        .O(p_0_in__1[3]));
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \clock_counter[4]_i_1__0 
       (.I0(clock_counter_reg[4]),
        .I1(clock_counter_reg[3]),
        .I2(clock_counter_reg[1]),
        .I3(clock_counter_reg[0]),
        .I4(clock_counter_reg[2]),
        .O(p_0_in__1[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \clock_counter[5]_i_1__0 
       (.I0(clock_counter_reg[4]),
        .I1(clock_counter_reg[2]),
        .I2(clock_counter_reg[0]),
        .I3(clock_counter_reg[1]),
        .I4(clock_counter_reg[3]),
        .I5(clock_counter_reg[5]),
        .O(p_0_in__1[5]));
  LUT3 #(
    .INIT(8'h9A)) 
    \clock_counter[6]_i_1__0 
       (.I0(clock_counter_reg[6]),
        .I1(\clock_counter[9]_i_2_n_0 ),
        .I2(clock_counter_reg[5]),
        .O(p_0_in__1[6]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hA6AA)) 
    \clock_counter[7]_i_1__0 
       (.I0(clock_counter_reg[7]),
        .I1(clock_counter_reg[5]),
        .I2(\clock_counter[9]_i_2_n_0 ),
        .I3(clock_counter_reg[6]),
        .O(p_0_in__1[7]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'hA6AAAAAA)) 
    \clock_counter[8]_i_1__0 
       (.I0(clock_counter_reg[8]),
        .I1(clock_counter_reg[6]),
        .I2(\clock_counter[9]_i_2_n_0 ),
        .I3(clock_counter_reg[5]),
        .I4(clock_counter_reg[7]),
        .O(p_0_in__1[8]));
  LUT6 #(
    .INIT(64'hAA6AAAAAAAAAAAAA)) 
    \clock_counter[9]_i_1__0 
       (.I0(clock_counter_reg[9]),
        .I1(clock_counter_reg[7]),
        .I2(clock_counter_reg[5]),
        .I3(\clock_counter[9]_i_2_n_0 ),
        .I4(clock_counter_reg[6]),
        .I5(clock_counter_reg[8]),
        .O(p_0_in__1[9]));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \clock_counter[9]_i_2 
       (.I0(clock_counter_reg[3]),
        .I1(clock_counter_reg[1]),
        .I2(clock_counter_reg[0]),
        .I3(clock_counter_reg[2]),
        .I4(clock_counter_reg[4]),
        .O(\clock_counter[9]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[0] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(p_0_in__1[0]),
        .Q(clock_counter_reg[0]),
        .R(\clock_counter[10]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[10] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(p_0_in__1[10]),
        .Q(clock_counter_reg[10]),
        .R(\clock_counter[10]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[1] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(p_0_in__1[1]),
        .Q(clock_counter_reg[1]),
        .R(\clock_counter[10]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[2] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(p_0_in__1[2]),
        .Q(clock_counter_reg[2]),
        .R(\clock_counter[10]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[3] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(p_0_in__1[3]),
        .Q(clock_counter_reg[3]),
        .R(\clock_counter[10]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[4] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(p_0_in__1[4]),
        .Q(clock_counter_reg[4]),
        .R(\clock_counter[10]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[5] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(p_0_in__1[5]),
        .Q(clock_counter_reg[5]),
        .R(\clock_counter[10]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[6] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(p_0_in__1[6]),
        .Q(clock_counter_reg[6]),
        .R(\clock_counter[10]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[7] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(p_0_in__1[7]),
        .Q(clock_counter_reg[7]),
        .R(\clock_counter[10]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[8] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(p_0_in__1[8]),
        .Q(clock_counter_reg[8]),
        .R(\clock_counter[10]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[9] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(p_0_in__1[9]),
        .Q(clock_counter_reg[9]),
        .R(\clock_counter[10]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'h00F8)) 
    has_byte_i_1
       (.I0(has_byte),
        .I1(has_byte_reg_0),
        .I2(has_byte0),
        .I3(\bit_counter_reg[3]_0 ),
        .O(has_byte_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000200000)) 
    has_byte_i_3
       (.I0(has_byte_i_4_n_0),
        .I1(\rx_shift[9]_i_2_n_0 ),
        .I2(\bit_counter[3]_i_3__0_n_0 ),
        .I3(clock_counter_reg[0]),
        .I4(clock_counter_reg[4]),
        .I5(clock_counter_reg[1]),
        .O(has_byte0));
  LUT4 #(
    .INIT(16'h0004)) 
    has_byte_i_4
       (.I0(bit_counter[1]),
        .I1(bit_counter[0]),
        .I2(bit_counter[3]),
        .I3(bit_counter[2]),
        .O(has_byte_i_4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    has_byte_reg
       (.C(CLK),
        .CE(\<const1> ),
        .D(has_byte_i_1_n_0),
        .Q(has_byte),
        .R(\<const0> ));
  LUT6 #(
    .INIT(64'h0400000000000000)) 
    \rx_shift[9]_i_1 
       (.I0(\rx_shift[9]_i_2_n_0 ),
        .I1(\rx_shift[9]_i_3_n_0 ),
        .I2(clock_counter_reg[0]),
        .I3(clock_counter_reg[1]),
        .I4(clock_counter_reg[4]),
        .I5(\bit_counter_reg[2]_0 ),
        .O(rx_shift0));
  LUT4 #(
    .INIT(16'hFFF7)) 
    \rx_shift[9]_i_2 
       (.I0(clock_counter_reg[3]),
        .I1(clock_counter_reg[2]),
        .I2(clock_counter_reg[8]),
        .I3(clock_counter_reg[7]),
        .O(\rx_shift[9]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0004)) 
    \rx_shift[9]_i_3 
       (.I0(clock_counter_reg[10]),
        .I1(clock_counter_reg[9]),
        .I2(clock_counter_reg[6]),
        .I3(clock_counter_reg[5]),
        .O(\rx_shift[9]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg[1] 
       (.C(CLK),
        .CE(rx_shift0),
        .D(\rx_shift_reg[8]_0 [1]),
        .Q(\rx_shift_reg[8]_0 [0]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg[2] 
       (.C(CLK),
        .CE(rx_shift0),
        .D(\rx_shift_reg[8]_0 [2]),
        .Q(\rx_shift_reg[8]_0 [1]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg[3] 
       (.C(CLK),
        .CE(rx_shift0),
        .D(\rx_shift_reg[8]_0 [3]),
        .Q(\rx_shift_reg[8]_0 [2]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg[4] 
       (.C(CLK),
        .CE(rx_shift0),
        .D(\rx_shift_reg[8]_0 [4]),
        .Q(\rx_shift_reg[8]_0 [3]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg[5] 
       (.C(CLK),
        .CE(rx_shift0),
        .D(\rx_shift_reg[8]_0 [5]),
        .Q(\rx_shift_reg[8]_0 [4]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg[6] 
       (.C(CLK),
        .CE(rx_shift0),
        .D(\rx_shift_reg[8]_0 [6]),
        .Q(\rx_shift_reg[8]_0 [5]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg[7] 
       (.C(CLK),
        .CE(rx_shift0),
        .D(\rx_shift_reg[8]_0 [7]),
        .Q(\rx_shift_reg[8]_0 [6]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg[8] 
       (.C(CLK),
        .CE(rx_shift0),
        .D(\rx_shift_reg_n_0_[9] ),
        .Q(\rx_shift_reg[8]_0 [7]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg[9] 
       (.C(CLK),
        .CE(rx_shift0),
        .D(serial_in_reg),
        .Q(\rx_shift_reg_n_0_[9] ),
        .R(\<const0> ));
endmodule

module uart_transmitter
   (\bit_counter_reg[3]_0 ,
    \tx_shift_reg[0]_0 ,
    \clock_counter_reg[0]_0 ,
    \bit_counter_reg[0]_0 ,
    Q,
    p_0_in,
    tx_fifo_empty_delayed,
    \bit_counter_reg[0]_1 ,
    \bit_counter_reg[1]_0 ,
    CLK,
    E);
  output \bit_counter_reg[3]_0 ;
  output [0:0]\tx_shift_reg[0]_0 ;
  output \clock_counter_reg[0]_0 ;
  output \bit_counter_reg[0]_0 ;
  input [7:0]Q;
  input p_0_in;
  input tx_fifo_empty_delayed;
  input \bit_counter_reg[0]_1 ;
  input \bit_counter_reg[1]_0 ;
  input CLK;
  input [0:0]E;

  wire \<const0> ;
  wire \<const1> ;
  wire CLK;
  wire [0:0]E;
  wire [7:0]Q;
  wire \bit_counter[0]_i_1_n_0 ;
  wire \bit_counter[1]_i_1_n_0 ;
  wire \bit_counter[2]_i_1_n_0 ;
  wire \bit_counter[3]_i_1_n_0 ;
  wire \bit_counter[3]_i_3_n_0 ;
  wire \bit_counter[3]_i_4_n_0 ;
  wire \bit_counter_reg[0]_0 ;
  wire \bit_counter_reg[0]_1 ;
  wire \bit_counter_reg[1]_0 ;
  wire \bit_counter_reg[3]_0 ;
  wire \bit_counter_reg_n_0_[0] ;
  wire \bit_counter_reg_n_0_[1] ;
  wire \bit_counter_reg_n_0_[2] ;
  wire \bit_counter_reg_n_0_[3] ;
  wire clock_counter;
  wire \clock_counter[10]_i_1_n_0 ;
  wire \clock_counter[10]_i_4_n_0 ;
  wire [10:0]clock_counter_reg;
  wire \clock_counter_reg[0]_0 ;
  wire p_0_in;
  wire [10:0]p_0_in__0;
  wire [8:0]p_1_in;
  wire tx_fifo_empty_delayed;
  wire [9:1]tx_shift;
  wire [0:0]\tx_shift_reg[0]_0 ;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \bit_counter[0]_i_1 
       (.I0(\bit_counter_reg_n_0_[0] ),
        .I1(\clock_counter_reg[0]_0 ),
        .I2(\bit_counter_reg[0]_1 ),
        .O(\bit_counter[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5FA05CA05FA05FA0)) 
    \bit_counter[1]_i_1 
       (.I0(\clock_counter_reg[0]_0 ),
        .I1(tx_fifo_empty_delayed),
        .I2(\bit_counter_reg_n_0_[0] ),
        .I3(\bit_counter_reg_n_0_[1] ),
        .I4(\bit_counter_reg_n_0_[2] ),
        .I5(\bit_counter_reg_n_0_[3] ),
        .O(\bit_counter[1]_i_1_n_0 ));
  (* \PinAttr:I3:HOLD_DETOUR  = "173" *) 
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'h00006AAA)) 
    \bit_counter[2]_i_1 
       (.I0(\bit_counter_reg_n_0_[2] ),
        .I1(\clock_counter_reg[0]_0 ),
        .I2(\bit_counter_reg_n_0_[0] ),
        .I3(\bit_counter_reg_n_0_[1] ),
        .I4(\bit_counter_reg[0]_1 ),
        .O(\bit_counter[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5FFFFCFFA0000000)) 
    \bit_counter[3]_i_1 
       (.I0(\clock_counter_reg[0]_0 ),
        .I1(tx_fifo_empty_delayed),
        .I2(\bit_counter_reg_n_0_[0] ),
        .I3(\bit_counter_reg_n_0_[1] ),
        .I4(\bit_counter_reg_n_0_[2] ),
        .I5(\bit_counter_reg_n_0_[3] ),
        .O(\bit_counter[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000800)) 
    \bit_counter[3]_i_2 
       (.I0(\bit_counter[3]_i_3_n_0 ),
        .I1(\bit_counter[3]_i_4_n_0 ),
        .I2(clock_counter_reg[0]),
        .I3(clock_counter_reg[2]),
        .I4(clock_counter_reg[1]),
        .O(\clock_counter_reg[0]_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \bit_counter[3]_i_3 
       (.I0(clock_counter_reg[6]),
        .I1(clock_counter_reg[5]),
        .I2(clock_counter_reg[4]),
        .I3(clock_counter_reg[3]),
        .O(\bit_counter[3]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h0004)) 
    \bit_counter[3]_i_4 
       (.I0(clock_counter_reg[9]),
        .I1(clock_counter_reg[10]),
        .I2(clock_counter_reg[8]),
        .I3(clock_counter_reg[7]),
        .O(\bit_counter[3]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bit_counter_reg[0] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\bit_counter[0]_i_1_n_0 ),
        .Q(\bit_counter_reg_n_0_[0] ),
        .R(\<const0> ));
  FDSE #(
    .INIT(1'b1)) 
    \bit_counter_reg[1] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\bit_counter[1]_i_1_n_0 ),
        .Q(\bit_counter_reg_n_0_[1] ),
        .S(\bit_counter_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bit_counter_reg[2] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\bit_counter[2]_i_1_n_0 ),
        .Q(\bit_counter_reg_n_0_[2] ),
        .R(\<const0> ));
  FDSE #(
    .INIT(1'b1)) 
    \bit_counter_reg[3] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\bit_counter[3]_i_1_n_0 ),
        .Q(\bit_counter_reg_n_0_[3] ),
        .S(\bit_counter_reg[1]_0 ));
  (* \PinAttr:I0:HOLD_DETOUR  = "194" *) 
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \clock_counter[0]_i_1 
       (.I0(clock_counter_reg[0]),
        .O(p_0_in__0[0]));
  LUT3 #(
    .INIT(8'h4F)) 
    \clock_counter[10]_i_1 
       (.I0(\bit_counter_reg[3]_0 ),
        .I1(\clock_counter_reg[0]_0 ),
        .I2(p_0_in),
        .O(\clock_counter[10]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \clock_counter[10]_i_2 
       (.I0(\bit_counter_reg_n_0_[3] ),
        .I1(\bit_counter_reg_n_0_[2] ),
        .I2(\bit_counter_reg_n_0_[1] ),
        .I3(\bit_counter_reg_n_0_[0] ),
        .O(clock_counter));
  LUT6 #(
    .INIT(64'hAA6AAAAAAAAAAAAA)) 
    \clock_counter[10]_i_3 
       (.I0(clock_counter_reg[10]),
        .I1(clock_counter_reg[8]),
        .I2(clock_counter_reg[6]),
        .I3(\clock_counter[10]_i_4_n_0 ),
        .I4(clock_counter_reg[7]),
        .I5(clock_counter_reg[9]),
        .O(p_0_in__0[10]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \clock_counter[10]_i_4 
       (.I0(clock_counter_reg[4]),
        .I1(clock_counter_reg[3]),
        .I2(clock_counter_reg[2]),
        .I3(clock_counter_reg[1]),
        .I4(clock_counter_reg[0]),
        .I5(clock_counter_reg[5]),
        .O(\clock_counter[10]_i_4_n_0 ));
  (* \PinAttr:I0:HOLD_DETOUR  = "194" *) 
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \clock_counter[1]_i_1 
       (.I0(clock_counter_reg[0]),
        .I1(clock_counter_reg[1]),
        .O(p_0_in__0[1]));
  LUT3 #(
    .INIT(8'h6A)) 
    \clock_counter[2]_i_1 
       (.I0(clock_counter_reg[2]),
        .I1(clock_counter_reg[1]),
        .I2(clock_counter_reg[0]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \clock_counter[3]_i_1 
       (.I0(clock_counter_reg[3]),
        .I1(clock_counter_reg[2]),
        .I2(clock_counter_reg[1]),
        .I3(clock_counter_reg[0]),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \clock_counter[4]_i_1 
       (.I0(clock_counter_reg[4]),
        .I1(clock_counter_reg[0]),
        .I2(clock_counter_reg[1]),
        .I3(clock_counter_reg[2]),
        .I4(clock_counter_reg[3]),
        .O(p_0_in__0[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \clock_counter[5]_i_1 
       (.I0(clock_counter_reg[5]),
        .I1(clock_counter_reg[4]),
        .I2(clock_counter_reg[3]),
        .I3(clock_counter_reg[2]),
        .I4(clock_counter_reg[1]),
        .I5(clock_counter_reg[0]),
        .O(p_0_in__0[5]));
  LUT2 #(
    .INIT(4'h9)) 
    \clock_counter[6]_i_1 
       (.I0(\clock_counter[10]_i_4_n_0 ),
        .I1(clock_counter_reg[6]),
        .O(p_0_in__0[6]));
  LUT3 #(
    .INIT(8'h9A)) 
    \clock_counter[7]_i_1 
       (.I0(clock_counter_reg[7]),
        .I1(\clock_counter[10]_i_4_n_0 ),
        .I2(clock_counter_reg[6]),
        .O(p_0_in__0[7]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'hA6AA)) 
    \clock_counter[8]_i_1 
       (.I0(clock_counter_reg[8]),
        .I1(clock_counter_reg[6]),
        .I2(\clock_counter[10]_i_4_n_0 ),
        .I3(clock_counter_reg[7]),
        .O(p_0_in__0[8]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'hA6AAAAAA)) 
    \clock_counter[9]_i_1 
       (.I0(clock_counter_reg[9]),
        .I1(clock_counter_reg[7]),
        .I2(\clock_counter[10]_i_4_n_0 ),
        .I3(clock_counter_reg[6]),
        .I4(clock_counter_reg[8]),
        .O(p_0_in__0[9]));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[0] 
       (.C(CLK),
        .CE(clock_counter),
        .D(p_0_in__0[0]),
        .Q(clock_counter_reg[0]),
        .R(\clock_counter[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[10] 
       (.C(CLK),
        .CE(clock_counter),
        .D(p_0_in__0[10]),
        .Q(clock_counter_reg[10]),
        .R(\clock_counter[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[1] 
       (.C(CLK),
        .CE(clock_counter),
        .D(p_0_in__0[1]),
        .Q(clock_counter_reg[1]),
        .R(\clock_counter[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[2] 
       (.C(CLK),
        .CE(clock_counter),
        .D(p_0_in__0[2]),
        .Q(clock_counter_reg[2]),
        .R(\clock_counter[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[3] 
       (.C(CLK),
        .CE(clock_counter),
        .D(p_0_in__0[3]),
        .Q(clock_counter_reg[3]),
        .R(\clock_counter[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[4] 
       (.C(CLK),
        .CE(clock_counter),
        .D(p_0_in__0[4]),
        .Q(clock_counter_reg[4]),
        .R(\clock_counter[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[5] 
       (.C(CLK),
        .CE(clock_counter),
        .D(p_0_in__0[5]),
        .Q(clock_counter_reg[5]),
        .R(\clock_counter[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[6] 
       (.C(CLK),
        .CE(clock_counter),
        .D(p_0_in__0[6]),
        .Q(clock_counter_reg[6]),
        .R(\clock_counter[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[7] 
       (.C(CLK),
        .CE(clock_counter),
        .D(p_0_in__0[7]),
        .Q(clock_counter_reg[7]),
        .R(\clock_counter[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[8] 
       (.C(CLK),
        .CE(clock_counter),
        .D(p_0_in__0[8]),
        .Q(clock_counter_reg[8]),
        .R(\clock_counter[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[9] 
       (.C(CLK),
        .CE(clock_counter),
        .D(p_0_in__0[9]),
        .Q(clock_counter_reg[9]),
        .R(\clock_counter[10]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0400)) 
    \rptr[2]_i_3 
       (.I0(\bit_counter_reg_n_0_[0] ),
        .I1(\bit_counter_reg_n_0_[1] ),
        .I2(\bit_counter_reg_n_0_[2] ),
        .I3(\bit_counter_reg_n_0_[3] ),
        .O(\bit_counter_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h4F)) 
    \tx_shift[0]_i_1 
       (.I0(\bit_counter_reg[3]_0 ),
        .I1(tx_shift[1]),
        .I2(p_0_in),
        .O(p_1_in[0]));
  LUT4 #(
    .INIT(16'hB080)) 
    \tx_shift[1]_i_1 
       (.I0(Q[0]),
        .I1(\bit_counter_reg[3]_0 ),
        .I2(p_0_in),
        .I3(tx_shift[2]),
        .O(p_1_in[1]));
  LUT4 #(
    .INIT(16'hB080)) 
    \tx_shift[2]_i_1 
       (.I0(Q[1]),
        .I1(\bit_counter_reg[3]_0 ),
        .I2(p_0_in),
        .I3(tx_shift[3]),
        .O(p_1_in[2]));
  LUT4 #(
    .INIT(16'hB080)) 
    \tx_shift[3]_i_1 
       (.I0(Q[2]),
        .I1(\bit_counter_reg[3]_0 ),
        .I2(p_0_in),
        .I3(tx_shift[4]),
        .O(p_1_in[3]));
  LUT4 #(
    .INIT(16'hB080)) 
    \tx_shift[4]_i_1 
       (.I0(Q[3]),
        .I1(\bit_counter_reg[3]_0 ),
        .I2(p_0_in),
        .I3(tx_shift[5]),
        .O(p_1_in[4]));
  LUT4 #(
    .INIT(16'hB080)) 
    \tx_shift[5]_i_1 
       (.I0(Q[4]),
        .I1(\bit_counter_reg[3]_0 ),
        .I2(p_0_in),
        .I3(tx_shift[6]),
        .O(p_1_in[5]));
  LUT4 #(
    .INIT(16'hB080)) 
    \tx_shift[6]_i_1 
       (.I0(Q[5]),
        .I1(\bit_counter_reg[3]_0 ),
        .I2(p_0_in),
        .I3(tx_shift[7]),
        .O(p_1_in[6]));
  LUT4 #(
    .INIT(16'hB080)) 
    \tx_shift[7]_i_1 
       (.I0(Q[6]),
        .I1(\bit_counter_reg[3]_0 ),
        .I2(p_0_in),
        .I3(tx_shift[8]),
        .O(p_1_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'hB080)) 
    \tx_shift[8]_i_1 
       (.I0(Q[7]),
        .I1(\bit_counter_reg[3]_0 ),
        .I2(p_0_in),
        .I3(tx_shift[9]),
        .O(p_1_in[8]));
  LUT5 #(
    .INIT(32'h00000020)) 
    \tx_shift[8]_i_2 
       (.I0(\bit_counter_reg_n_0_[3] ),
        .I1(\bit_counter_reg_n_0_[2] ),
        .I2(\bit_counter_reg_n_0_[1] ),
        .I3(\bit_counter_reg_n_0_[0] ),
        .I4(tx_fifo_empty_delayed),
        .O(\bit_counter_reg[3]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tx_shift_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in[0]),
        .Q(\tx_shift_reg[0]_0 ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \tx_shift_reg[1] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in[1]),
        .Q(tx_shift[1]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \tx_shift_reg[2] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in[2]),
        .Q(tx_shift[2]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \tx_shift_reg[3] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in[3]),
        .Q(tx_shift[3]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \tx_shift_reg[4] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in[4]),
        .Q(tx_shift[4]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \tx_shift_reg[5] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in[5]),
        .Q(tx_shift[5]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \tx_shift_reg[6] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in[6]),
        .Q(tx_shift[6]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \tx_shift_reg[7] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in[7]),
        .Q(tx_shift[7]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \tx_shift_reg[8] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in[8]),
        .Q(tx_shift[8]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \tx_shift_reg[9] 
       (.C(CLK),
        .CE(E),
        .D(p_0_in),
        .Q(tx_shift[9]),
        .R(\<const0> ));
endmodule

(* BAUD_RATE = "115200" *) (* B_PULSE_CNT_MAX = "200" *) (* B_SAMPLE_CNT_MAX = "62500" *) 
(* CLOCK_FREQ = "125000000" *) (* CYCLES_PER_SECOND = "125000000" *) (* ECO_CHECKSUM = "39186561" *) 
(* POWER_OPT_BRAM_CDC = "0" *) (* POWER_OPT_BRAM_SR_ADDR = "0" *) (* POWER_OPT_LOOPED_NET_PERCENTAGE = "0" *) 
(* STRUCTURAL_NETLIST = "yes" *)
module z1top
   (CLK_125MHZ_FPGA,
    BUTTONS,
    SWITCHES,
    LEDS,
    AUD_PWM,
    AUD_SD,
    FPGA_SERIAL_RX,
    FPGA_SERIAL_TX);
  input CLK_125MHZ_FPGA;
  input [3:0]BUTTONS;
  input [1:0]SWITCHES;
  output [5:0]LEDS;
  output AUD_PWM;
  output AUD_SD;
  input FPGA_SERIAL_RX;
  output FPGA_SERIAL_TX;

  wire \<const0> ;
  wire \<const1> ;
  wire AUD_PWM;
  wire AUD_SD;
  wire [3:0]BUTTONS;
  wire [0:0]BUTTONS_IBUF;
  wire CLK_125MHZ_FPGA;
  wire CLK_125MHZ_FPGA_IBUF;
  wire CLK_125MHZ_FPGA_IBUF_BUFG;
  wire FPGA_SERIAL_RX;
  wire FPGA_SERIAL_RX_IBUF;
  wire FPGA_SERIAL_TX;
  wire FPGA_SERIAL_TX_OBUF;
  wire [5:0]LEDS;
  wire [2:0]LEDS_OBUF;
  wire [1:0]SWITCHES;
  wire [0:0]SWITCHES_IBUF;
  wire bp_n_0;
  wire bp_n_1;
  wire bp_n_2;
  wire bp_n_3;
  wire bp_n_5;
  wire cmd;
  wire counter;
  wire counter_0;
  wire [7:0]din;
  wire mem_ctrl_n_1;
  wire mem_ctrl_n_2;
  wire mem_ctrl_n_4;
  wire mem_ctrl_n_5;
  wire mem_ctrl_n_6;
  wire mem_ctrl_n_7;
  wire mem_ctrl_n_8;
  wire mem_we1_out;
  wire on_chip_uart_n_2;
  wire on_chip_uart_n_4;
  wire on_chip_uart_n_5;
  wire p_0_in;
  wire [1:1]p_0_in__2;
  wire rx_fifo_n_0;
  wire rx_fifo_n_1;
  wire rx_fifo_n_10;
  wire rx_fifo_n_11;
  wire rx_fifo_n_12;
  wire rx_fifo_n_13;
  wire rx_fifo_n_14;
  wire rx_fifo_n_2;
  wire rx_fifo_n_3;
  wire rx_fifo_n_5;
  wire rx_fifo_n_6;
  wire rx_fifo_n_7;
  wire rx_fifo_n_8;
  wire rx_fifo_n_9;
  wire switch_sync_n_1;
  wire switches_sync;
  wire [7:0]tx_din;
  wire tx_fifo_empty;
  wire tx_fifo_empty_delayed;
  wire tx_fifo_n_0;
  wire tx_fifo_n_1;
  wire tx_fifo_n_10;
  wire tx_fifo_n_11;
  wire tx_fifo_n_3;
  wire tx_fifo_n_4;
  wire tx_fifo_n_5;
  wire tx_fifo_n_6;
  wire tx_fifo_n_7;
  wire tx_fifo_n_8;
  wire tx_fifo_n_9;
  wire \uareceive/has_byte ;
  wire \uatransmit/symbol_edge ;

  OBUFT AUD_PWM_OBUF_inst
       (.I(\<const0> ),
        .O(AUD_PWM),
        .T(\<const1> ));
  OBUFT AUD_SD_OBUF_inst
       (.I(\<const0> ),
        .O(AUD_SD),
        .T(\<const1> ));
  IBUF \BUTTONS_IBUF[0]_inst 
       (.I(BUTTONS[0]),
        .O(BUTTONS_IBUF));
  BUFG CLK_125MHZ_FPGA_IBUF_BUFG_inst
       (.I(CLK_125MHZ_FPGA_IBUF),
        .O(CLK_125MHZ_FPGA_IBUF_BUFG));
  IBUF CLK_125MHZ_FPGA_IBUF_inst
       (.I(CLK_125MHZ_FPGA),
        .O(CLK_125MHZ_FPGA_IBUF));
  IBUF FPGA_SERIAL_RX_IBUF_inst
       (.I(FPGA_SERIAL_RX),
        .O(FPGA_SERIAL_RX_IBUF));
  OBUF FPGA_SERIAL_TX_OBUF_inst
       (.I(FPGA_SERIAL_TX_OBUF),
        .O(FPGA_SERIAL_TX));
  GND GND
       (.G(\<const0> ));
  OBUF \LEDS_OBUF[0]_inst 
       (.I(LEDS_OBUF[0]),
        .O(LEDS[0]));
  OBUF \LEDS_OBUF[1]_inst 
       (.I(LEDS_OBUF[1]),
        .O(LEDS[1]));
  OBUF \LEDS_OBUF[2]_inst 
       (.I(LEDS_OBUF[2]),
        .O(LEDS[2]));
  OBUF \LEDS_OBUF[3]_inst 
       (.I(\<const0> ),
        .O(LEDS[3]));
  OBUF \LEDS_OBUF[4]_inst 
       (.I(\<const0> ),
        .O(LEDS[4]));
  OBUF \LEDS_OBUF[5]_inst 
       (.I(\<const0> ),
        .O(LEDS[5]));
  IBUF \SWITCHES_IBUF[0]_inst 
       (.I(SWITCHES[0]),
        .O(SWITCHES_IBUF));
  VCC VCC
       (.P(\<const1> ));
  button_parser bp
       (.BUTTONS_IBUF(BUTTONS_IBUF),
        .CLK_125MHZ_FPGA_IBUF_BUFG(CLK_125MHZ_FPGA_IBUF_BUFG),
        .E(bp_n_1),
        .Q(mem_ctrl_n_5),
        .WEA(mem_we1_out),
        .\counter_reg[7] (tx_fifo_n_0),
        .\counter_reg[7]_0 (switch_sync_n_1),
        .\counter_reg[7]_1 (tx_fifo_n_3),
        .\counter_reg[7]_2 (tx_fifo_n_1),
        .p_0_in(p_0_in),
        .\saturating_counter_reg[0][0] (bp_n_2),
        .\saturating_counter_reg[0][0]_0 (bp_n_3),
        .\saturating_counter_reg[0][4] (bp_n_0),
        .switches_sync(switches_sync),
        .symbol_edge(\uatransmit/symbol_edge ),
        .\temp_reg[0] (counter),
        .\temp_reg[0]_0 (bp_n_5),
        .\tx_shift_reg[0] (on_chip_uart_n_2));
  mem_controller mem_ctrl
       (.CLK(CLK_125MHZ_FPGA_IBUF_BUFG),
        .D(p_0_in__2),
        .E(counter_0),
        .\FSM_onehot_curr_state_reg[0]_0 (mem_ctrl_n_1),
        .\FSM_onehot_curr_state_reg[2]_0 (mem_ctrl_n_2),
        .\FSM_onehot_curr_state_reg[2]_1 (mem_ctrl_n_8),
        .LEDS_OBUF(LEDS_OBUF),
        .Q({mem_ctrl_n_5,mem_ctrl_n_6,mem_ctrl_n_7}),
        .WEA(mem_we1_out),
        .\addr_reg[0]_0 (rx_fifo_n_3),
        .\addr_reg[0]_1 (rx_fifo_n_1),
        .\addr_reg[0]_2 (bp_n_0),
        .cmd(cmd),
        .\counter_reg[1] (rx_fifo_n_6),
        .\counter_reg[7] (rx_fifo_n_0),
        .\counter_reg[7]_0 (rx_fifo_n_2),
        .\data_reg[7]_0 ({rx_fifo_n_7,rx_fifo_n_8,rx_fifo_n_9,rx_fifo_n_10,rx_fifo_n_11,rx_fifo_n_12,rx_fifo_n_13,rx_fifo_n_14}),
        .mem_reg(tx_din),
        .p_0_in(p_0_in),
        .switches_sync(switches_sync),
        .\tmp2_reg[0] (mem_ctrl_n_4));
  uart on_chip_uart
       (.CLK(CLK_125MHZ_FPGA_IBUF_BUFG),
        .E(bp_n_1),
        .FPGA_SERIAL_RX_IBUF(FPGA_SERIAL_RX_IBUF),
        .FPGA_SERIAL_TX_OBUF(FPGA_SERIAL_TX_OBUF),
        .Q({tx_fifo_n_4,tx_fifo_n_5,tx_fifo_n_6,tx_fifo_n_7,tx_fifo_n_8,tx_fifo_n_9,tx_fifo_n_10,tx_fifo_n_11}),
        .\bit_counter_reg[0] (on_chip_uart_n_5),
        .\bit_counter_reg[0]_0 (bp_n_2),
        .\bit_counter_reg[1] (bp_n_0),
        .\bit_counter_reg[2] (on_chip_uart_n_4),
        .\bit_counter_reg[3] (on_chip_uart_n_2),
        .has_byte(\uareceive/has_byte ),
        .has_byte_reg(rx_fifo_n_5),
        .p_0_in(p_0_in),
        .\rx_shift_reg[8] (din),
        .symbol_edge(\uatransmit/symbol_edge ),
        .tx_fifo_empty_delayed(tx_fifo_empty_delayed));
  fifo rx_fifo
       (.CLK(CLK_125MHZ_FPGA_IBUF_BUFG),
        .D(p_0_in__2),
        .E(mem_ctrl_n_4),
        .Q(mem_ctrl_n_7),
        .\circ_array_reg[7][7]_0 (din),
        .cmd(cmd),
        .\counter_reg[0]_0 (rx_fifo_n_1),
        .\counter_reg[0]_1 (rx_fifo_n_6),
        .\counter_reg[0]_2 (bp_n_0),
        .\counter_reg[3]_0 (rx_fifo_n_5),
        .\counter_reg[5]_0 (rx_fifo_n_3),
        .\counter_reg[6]_0 (rx_fifo_n_0),
        .\counter_reg[7]_0 (bp_n_3),
        .\counter_reg[7]_1 (counter_0),
        .\dout_reg[7]_0 ({rx_fifo_n_7,rx_fifo_n_8,rx_fifo_n_9,rx_fifo_n_10,rx_fifo_n_11,rx_fifo_n_12,rx_fifo_n_13,rx_fifo_n_14}),
        .has_byte(\uareceive/has_byte ),
        .has_byte_reg(rx_fifo_n_2),
        .p_0_in(p_0_in),
        .\rptr_reg[0]_0 (mem_ctrl_n_1),
        .\rptr_reg[0]_1 (mem_ctrl_n_2),
        .\rptr_reg[2]_0 (mem_ctrl_n_8),
        .switches_sync(switches_sync),
        .\wptr_reg[2]_0 (on_chip_uart_n_4));
  synchronizer__parameterized0 switch_sync
       (.CLK(CLK_125MHZ_FPGA_IBUF_BUFG),
        .Q(mem_ctrl_n_6),
        .SWITCHES_IBUF(SWITCHES_IBUF),
        .switches_sync(switches_sync),
        .\tmp2_reg[0]_0 (switch_sync_n_1));
  fifo_0 tx_fifo
       (.CLK(CLK_125MHZ_FPGA_IBUF_BUFG),
        .D(tx_din),
        .E(counter),
        .Q({tx_fifo_n_4,tx_fifo_n_5,tx_fifo_n_6,tx_fifo_n_7,tx_fifo_n_8,tx_fifo_n_9,tx_fifo_n_10,tx_fifo_n_11}),
        .\counter_reg[2]_0 (tx_fifo_n_3),
        .\counter_reg[3]_0 (tx_fifo_n_1),
        .\counter_reg[6]_0 (tx_fifo_n_0),
        .\counter_reg[7]_0 (bp_n_0),
        .p_0_in(p_0_in),
        .\rptr_reg[2]_0 (on_chip_uart_n_5),
        .tx_fifo_empty(tx_fifo_empty),
        .\wptr_reg[2]_0 (bp_n_5));
  FDRE #(
    .INIT(1'b0)) 
    tx_fifo_empty_delayed_reg
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(tx_fifo_empty),
        .Q(tx_fifo_empty_delayed),
        .R(\<const0> ));
endmodule
