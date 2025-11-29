// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Tue Oct 24 14:20:26 2023
// Host        : c111-17.EECS.Berkeley.EDU running 64-bit Red Hat Enterprise Linux release 8.8 (Ootpa)
// Command     : write_verilog -force -file post_synth.v
// Design      : z1top
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module button_parser
   (next_sample_reg,
    \buttons_pressed[3] ,
    D,
    \curr_state_reg[0] ,
    \temp_reg[1] ,
    \temp_reg[0] ,
    SR,
    \temp_reg[2] ,
    DI,
    S,
    \tmp2_reg[0] ,
    \temp_reg[2]_0 ,
    \d_out_reg[14] ,
    \d_out_reg[13] ,
    \tmp2_reg[0]_0 ,
    next_sample,
    Q,
    CO,
    expmode_reg,
    d_out,
    sq_wave_leds,
    CLK_125MHZ_FPGA_IBUF_BUFG,
    \tmp1_reg[3] );
  output next_sample_reg;
  output \buttons_pressed[3] ;
  output [1:0]D;
  output \curr_state_reg[0] ;
  output \temp_reg[1] ;
  output \temp_reg[0] ;
  output [0:0]SR;
  output \temp_reg[2] ;
  output [0:0]DI;
  output [2:0]S;
  output \tmp2_reg[0] ;
  output [0:0]\temp_reg[2]_0 ;
  output [0:0]\d_out_reg[14] ;
  output [3:0]\d_out_reg[13] ;
  output [3:0]\tmp2_reg[0]_0 ;
  input next_sample;
  input [1:0]Q;
  input [0:0]CO;
  input [0:0]expmode_reg;
  input [11:0]d_out;
  input [0:0]sq_wave_leds;
  input CLK_125MHZ_FPGA_IBUF_BUFG;
  input [3:0]\tmp1_reg[3] ;

  wire CLK_125MHZ_FPGA_IBUF_BUFG;
  wire [0:0]CO;
  wire [1:0]D;
  wire [0:0]DI;
  wire [1:0]Q;
  wire [2:0]S;
  wire [0:0]SR;
  wire \buttons_pressed[3] ;
  wire \curr_state_reg[0] ;
  wire [11:0]d_out;
  wire [3:0]\d_out_reg[13] ;
  wire [0:0]\d_out_reg[14] ;
  wire [3:0]debounced_signals;
  wire [0:0]expmode_reg;
  wire next_sample;
  wire next_sample_reg;
  wire [0:0]sq_wave_leds;
  wire [3:0]temp;
  wire \temp_reg[0] ;
  wire \temp_reg[1] ;
  wire \temp_reg[2] ;
  wire [0:0]\temp_reg[2]_0 ;
  wire [3:0]\tmp1_reg[3] ;
  wire [3:0]tmp2;
  wire \tmp2_reg[0] ;
  wire [3:0]\tmp2_reg[0]_0 ;

  debouncer button_debouncer
       (.CLK_125MHZ_FPGA_IBUF_BUFG(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CO(CO),
        .D(debounced_signals),
        .DI(DI),
        .Q(Q),
        .S(S),
        .SR(SR),
        .\curr_state_reg[0] (D),
        .\curr_state_reg[0]_0 (\curr_state_reg[0] ),
        .d_out(d_out),
        .\d_out_reg[13] (\d_out_reg[13] ),
        .\d_out_reg[14] (\d_out_reg[14] ),
        .expmode_reg(expmode_reg),
        .next_sample(next_sample),
        .next_sample_reg(next_sample_reg),
        .\saturating_counter_reg[3][7]_0 (\buttons_pressed[3] ),
        .\saturating_counter_reg[3][7]_1 (tmp2),
        .sel(temp),
        .sq_wave_leds(sq_wave_leds),
        .\temp_reg[0] (\temp_reg[0] ),
        .\temp_reg[1] (\temp_reg[1] ),
        .\temp_reg[2] (\temp_reg[2] ),
        .\temp_reg[2]_0 (\temp_reg[2]_0 ),
        .\tmp2_reg[0] (\tmp2_reg[0] ),
        .\tmp2_reg[0]_0 (\tmp2_reg[0]_0 ));
  edge_detector button_edge_detector
       (.CLK_125MHZ_FPGA_IBUF_BUFG(CLK_125MHZ_FPGA_IBUF_BUFG),
        .D(debounced_signals),
        .Q(temp));
  synchronizer button_synchronizer
       (.CLK_125MHZ_FPGA_IBUF_BUFG(CLK_125MHZ_FPGA_IBUF_BUFG),
        .Q(tmp2),
        .\tmp1_reg[3]_0 (\tmp1_reg[3] ));
endmodule

module dac
   (next_sample,
    CO,
    Q,
    \buttons_pressed_BUFG[3] ,
    CLK,
    S,
    DOADO,
    pwm0_carry__0_0,
    pwm0_carry__0_1,
    pwm0_carry_0,
    pwm0_carry__0_2);
  output next_sample;
  output [0:0]CO;
  output [1:0]Q;
  input \buttons_pressed_BUFG[3] ;
  input CLK;
  input [0:0]S;
  input [8:0]DOADO;
  input [0:0]pwm0_carry__0_0;
  input pwm0_carry__0_1;
  input pwm0_carry_0;
  input pwm0_carry__0_2;

  wire \<const0> ;
  wire \<const1> ;
  wire CLK;
  wire [0:0]CO;
  wire [8:0]DOADO;
  wire [1:0]Q;
  wire [0:0]S;
  wire \buttons_pressed_BUFG[3] ;
  wire [11:0]cycles;
  wire [0:0]cycles0;
  wire [11:1]cycles0__0;
  wire \cycles[10]_i_1_n_0 ;
  wire \cycles[11]_i_1_n_0 ;
  wire \cycles[11]_i_3_n_0 ;
  wire \cycles[11]_i_4_n_0 ;
  wire \cycles[11]_i_5_n_0 ;
  wire \cycles[1]_i_1_n_0 ;
  wire \cycles[2]_i_1_n_0 ;
  wire \cycles[3]_i_1_n_0 ;
  wire \cycles[4]_i_1_n_0 ;
  wire \cycles[5]_i_1_n_0 ;
  wire \cycles[6]_i_1_n_0 ;
  wire \cycles[7]_i_1_n_0 ;
  wire \cycles[8]_i_1_n_0 ;
  wire \cycles[9]_i_1_n_0 ;
  wire \cycles_reg[11]_i_2_n_2 ;
  wire \cycles_reg[11]_i_2_n_3 ;
  wire \cycles_reg[4]_i_2_n_0 ;
  wire \cycles_reg[4]_i_2_n_1 ;
  wire \cycles_reg[4]_i_2_n_2 ;
  wire \cycles_reg[4]_i_2_n_3 ;
  wire \cycles_reg[8]_i_2_n_0 ;
  wire \cycles_reg[8]_i_2_n_1 ;
  wire \cycles_reg[8]_i_2_n_2 ;
  wire \cycles_reg[8]_i_2_n_3 ;
  wire next_sample;
  wire next_sample_0;
  wire pwm0_carry_0;
  wire [0:0]pwm0_carry__0_0;
  wire pwm0_carry__0_1;
  wire pwm0_carry__0_2;
  wire pwm0_carry__0_i_1_n_0;
  wire pwm0_carry__0_i_2_n_0;
  wire pwm0_carry__0_n_3;
  wire pwm0_carry_i_1_n_0;
  wire pwm0_carry_i_2_n_0;
  wire pwm0_carry_i_3_n_0;
  wire pwm0_carry_i_4_n_0;
  wire pwm0_carry_i_5_n_0;
  wire pwm0_carry_i_6_n_0;
  wire pwm0_carry_i_7_n_0;
  wire pwm0_carry_i_8_n_0;
  wire pwm0_carry_n_0;
  wire pwm0_carry_n_1;
  wire pwm0_carry_n_2;
  wire pwm0_carry_n_3;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT1 #(
    .INIT(2'h1)) 
    \cycles[0]_i_1 
       (.I0(cycles[0]),
        .O(cycles0));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cycles[10]_i_1 
       (.I0(cycles0__0[10]),
        .I1(\cycles[11]_i_3_n_0 ),
        .O(\cycles[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cycles[11]_i_1 
       (.I0(cycles0__0[11]),
        .I1(\cycles[11]_i_3_n_0 ),
        .O(\cycles[11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000080)) 
    \cycles[11]_i_3 
       (.I0(cycles[4]),
        .I1(cycles[7]),
        .I2(cycles[3]),
        .I3(\cycles[11]_i_4_n_0 ),
        .I4(\cycles[11]_i_5_n_0 ),
        .O(\cycles[11]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hEFFF)) 
    \cycles[11]_i_4 
       (.I0(cycles[10]),
        .I1(cycles[11]),
        .I2(Q[0]),
        .I3(cycles[5]),
        .O(\cycles[11]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \cycles[11]_i_5 
       (.I0(cycles[6]),
        .I1(cycles[2]),
        .I2(Q[1]),
        .I3(cycles[1]),
        .O(\cycles[11]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h74)) 
    \cycles[1]_i_1 
       (.I0(cycles[0]),
        .I1(\cycles[11]_i_3_n_0 ),
        .I2(cycles0__0[1]),
        .O(\cycles[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h74)) 
    \cycles[2]_i_1 
       (.I0(cycles[0]),
        .I1(\cycles[11]_i_3_n_0 ),
        .I2(cycles0__0[2]),
        .O(\cycles[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h74)) 
    \cycles[3]_i_1 
       (.I0(cycles[0]),
        .I1(\cycles[11]_i_3_n_0 ),
        .I2(cycles0__0[3]),
        .O(\cycles[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h74)) 
    \cycles[4]_i_1 
       (.I0(cycles[0]),
        .I1(\cycles[11]_i_3_n_0 ),
        .I2(cycles0__0[4]),
        .O(\cycles[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h74)) 
    \cycles[5]_i_1 
       (.I0(cycles[0]),
        .I1(\cycles[11]_i_3_n_0 ),
        .I2(cycles0__0[5]),
        .O(\cycles[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h74)) 
    \cycles[6]_i_1 
       (.I0(cycles[0]),
        .I1(\cycles[11]_i_3_n_0 ),
        .I2(cycles0__0[6]),
        .O(\cycles[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h74)) 
    \cycles[7]_i_1 
       (.I0(cycles[0]),
        .I1(\cycles[11]_i_3_n_0 ),
        .I2(cycles0__0[7]),
        .O(\cycles[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h74)) 
    \cycles[8]_i_1 
       (.I0(cycles[0]),
        .I1(\cycles[11]_i_3_n_0 ),
        .I2(cycles0__0[8]),
        .O(\cycles[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h74)) 
    \cycles[9]_i_1 
       (.I0(cycles[0]),
        .I1(\cycles[11]_i_3_n_0 ),
        .I2(cycles0__0[9]),
        .O(\cycles[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_reg[0] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(cycles0),
        .Q(cycles[0]),
        .R(\buttons_pressed_BUFG[3] ));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_reg[10] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\cycles[10]_i_1_n_0 ),
        .Q(cycles[10]),
        .R(\buttons_pressed_BUFG[3] ));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_reg[11] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\cycles[11]_i_1_n_0 ),
        .Q(cycles[11]),
        .R(\buttons_pressed_BUFG[3] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cycles_reg[11]_i_2 
       (.CI(\cycles_reg[8]_i_2_n_0 ),
        .CO({\cycles_reg[11]_i_2_n_2 ,\cycles_reg[11]_i_2_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(cycles0__0[11:9]),
        .S({\<const0> ,cycles[11:10],Q[1]}));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_reg[1] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\cycles[1]_i_1_n_0 ),
        .Q(cycles[1]),
        .R(\buttons_pressed_BUFG[3] ));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_reg[2] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\cycles[2]_i_1_n_0 ),
        .Q(cycles[2]),
        .R(\buttons_pressed_BUFG[3] ));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_reg[3] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\cycles[3]_i_1_n_0 ),
        .Q(cycles[3]),
        .R(\buttons_pressed_BUFG[3] ));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_reg[4] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\cycles[4]_i_1_n_0 ),
        .Q(cycles[4]),
        .R(\buttons_pressed_BUFG[3] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cycles_reg[4]_i_2 
       (.CI(\<const0> ),
        .CO({\cycles_reg[4]_i_2_n_0 ,\cycles_reg[4]_i_2_n_1 ,\cycles_reg[4]_i_2_n_2 ,\cycles_reg[4]_i_2_n_3 }),
        .CYINIT(cycles[0]),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(cycles0__0[4:1]),
        .S(cycles[4:1]));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_reg[5] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\cycles[5]_i_1_n_0 ),
        .Q(cycles[5]),
        .R(\buttons_pressed_BUFG[3] ));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_reg[6] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\cycles[6]_i_1_n_0 ),
        .Q(cycles[6]),
        .R(\buttons_pressed_BUFG[3] ));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_reg[7] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\cycles[7]_i_1_n_0 ),
        .Q(cycles[7]),
        .R(\buttons_pressed_BUFG[3] ));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_reg[8] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\cycles[8]_i_1_n_0 ),
        .Q(Q[0]),
        .R(\buttons_pressed_BUFG[3] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cycles_reg[8]_i_2 
       (.CI(\cycles_reg[4]_i_2_n_0 ),
        .CO({\cycles_reg[8]_i_2_n_0 ,\cycles_reg[8]_i_2_n_1 ,\cycles_reg[8]_i_2_n_2 ,\cycles_reg[8]_i_2_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(cycles0__0[8:5]),
        .S({Q[0],cycles[7:5]}));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_reg[9] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\cycles[9]_i_1_n_0 ),
        .Q(Q[1]),
        .R(\buttons_pressed_BUFG[3] ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h2)) 
    next_sample_i_1
       (.I0(\cycles[11]_i_3_n_0 ),
        .I1(cycles[0]),
        .O(next_sample_0));
  FDRE next_sample_reg
       (.C(CLK),
        .CE(\<const1> ),
        .D(next_sample_0),
        .Q(next_sample),
        .R(\buttons_pressed_BUFG[3] ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 pwm0_carry
       (.CI(\<const0> ),
        .CO({pwm0_carry_n_0,pwm0_carry_n_1,pwm0_carry_n_2,pwm0_carry_n_3}),
        .CYINIT(\<const1> ),
        .DI({pwm0_carry_i_1_n_0,pwm0_carry_i_2_n_0,pwm0_carry_i_3_n_0,pwm0_carry_i_4_n_0}),
        .S({pwm0_carry_i_5_n_0,pwm0_carry_i_6_n_0,pwm0_carry_i_7_n_0,pwm0_carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 pwm0_carry__0
       (.CI(pwm0_carry_n_0),
        .CO({CO,pwm0_carry__0_n_3}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,pwm0_carry__0_i_1_n_0}),
        .S({\<const0> ,\<const0> ,pwm0_carry__0_i_2_n_0,S}));
  LUT6 #(
    .INIT(64'h44444444DDD444D4)) 
    pwm0_carry__0_i_1
       (.I0(Q[1]),
        .I1(pwm0_carry__0_2),
        .I2(pwm0_carry__0_1),
        .I3(pwm0_carry__0_0),
        .I4(DOADO[8]),
        .I5(Q[0]),
        .O(pwm0_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    pwm0_carry__0_i_2
       (.I0(cycles[11]),
        .I1(cycles[10]),
        .O(pwm0_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h54045404FC5C5C0C)) 
    pwm0_carry_i_1
       (.I0(cycles[7]),
        .I1(pwm0_carry__0_1),
        .I2(pwm0_carry__0_0),
        .I3(DOADO[7]),
        .I4(DOADO[6]),
        .I5(cycles[6]),
        .O(pwm0_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h54045404FC5C5C0C)) 
    pwm0_carry_i_2
       (.I0(cycles[5]),
        .I1(pwm0_carry_0),
        .I2(pwm0_carry__0_0),
        .I3(DOADO[5]),
        .I4(DOADO[4]),
        .I5(cycles[4]),
        .O(pwm0_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h54045404FC5C5C0C)) 
    pwm0_carry_i_3
       (.I0(cycles[3]),
        .I1(pwm0_carry__0_1),
        .I2(pwm0_carry__0_0),
        .I3(DOADO[3]),
        .I4(DOADO[2]),
        .I5(cycles[2]),
        .O(pwm0_carry_i_3_n_0));
  LUT5 #(
    .INIT(32'h4545D545)) 
    pwm0_carry_i_4
       (.I0(cycles[1]),
        .I1(DOADO[1]),
        .I2(pwm0_carry__0_0),
        .I3(DOADO[0]),
        .I4(cycles[0]),
        .O(pwm0_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'h90CC900009000933)) 
    pwm0_carry_i_5
       (.I0(DOADO[7]),
        .I1(cycles[7]),
        .I2(DOADO[6]),
        .I3(pwm0_carry__0_0),
        .I4(pwm0_carry__0_1),
        .I5(cycles[6]),
        .O(pwm0_carry_i_5_n_0));
  LUT6 #(
    .INIT(64'h90CC900009000933)) 
    pwm0_carry_i_6
       (.I0(DOADO[5]),
        .I1(cycles[5]),
        .I2(DOADO[4]),
        .I3(pwm0_carry__0_0),
        .I4(pwm0_carry_0),
        .I5(cycles[4]),
        .O(pwm0_carry_i_6_n_0));
  LUT6 #(
    .INIT(64'h90CC900009000933)) 
    pwm0_carry_i_7
       (.I0(DOADO[3]),
        .I1(cycles[3]),
        .I2(DOADO[2]),
        .I3(pwm0_carry__0_0),
        .I4(pwm0_carry__0_1),
        .I5(cycles[2]),
        .O(pwm0_carry_i_7_n_0));
  LUT5 #(
    .INIT(32'h90000C9C)) 
    pwm0_carry_i_8
       (.I0(DOADO[1]),
        .I1(cycles[1]),
        .I2(pwm0_carry__0_0),
        .I3(DOADO[0]),
        .I4(cycles[0]),
        .O(pwm0_carry_i_8_n_0));
endmodule

module debouncer
   (next_sample_reg,
    \saturating_counter_reg[3][7]_0 ,
    D,
    \curr_state_reg[0] ,
    \curr_state_reg[0]_0 ,
    \temp_reg[1] ,
    \temp_reg[0] ,
    SR,
    \temp_reg[2] ,
    DI,
    S,
    \tmp2_reg[0] ,
    \temp_reg[2]_0 ,
    \d_out_reg[14] ,
    \d_out_reg[13] ,
    \tmp2_reg[0]_0 ,
    next_sample,
    Q,
    sel,
    CO,
    expmode_reg,
    \saturating_counter_reg[3][7]_1 ,
    d_out,
    sq_wave_leds,
    CLK_125MHZ_FPGA_IBUF_BUFG);
  output next_sample_reg;
  output \saturating_counter_reg[3][7]_0 ;
  output [3:0]D;
  output [1:0]\curr_state_reg[0] ;
  output \curr_state_reg[0]_0 ;
  output \temp_reg[1] ;
  output \temp_reg[0] ;
  output [0:0]SR;
  output \temp_reg[2] ;
  output [0:0]DI;
  output [2:0]S;
  output \tmp2_reg[0] ;
  output [0:0]\temp_reg[2]_0 ;
  output [0:0]\d_out_reg[14] ;
  output [3:0]\d_out_reg[13] ;
  output [3:0]\tmp2_reg[0]_0 ;
  input next_sample;
  input [1:0]Q;
  input [3:0]sel;
  input [0:0]CO;
  input [0:0]expmode_reg;
  input [3:0]\saturating_counter_reg[3][7]_1 ;
  input [11:0]d_out;
  input [0:0]sq_wave_leds;
  input CLK_125MHZ_FPGA_IBUF_BUFG;

  wire \<const0> ;
  wire \<const1> ;
  wire CLK_125MHZ_FPGA_IBUF_BUFG;
  wire [0:0]CO;
  wire [3:0]D;
  wire [0:0]DI;
  wire [1:0]Q;
  wire [2:0]S;
  wire [0:0]SR;
  wire \curr_state[0]_i_2_n_0 ;
  wire \curr_state[0]_i_3_n_0 ;
  wire \curr_state[0]_i_4_n_0 ;
  wire \curr_state[0]_i_5_n_0 ;
  wire \curr_state[0]_i_6_n_0 ;
  wire \curr_state[0]_i_7_n_0 ;
  wire [1:0]\curr_state_reg[0] ;
  wire \curr_state_reg[0]_0 ;
  wire [11:0]d_out;
  wire [3:0]\d_out_reg[13] ;
  wire [0:0]\d_out_reg[14] ;
  wire [0:0]expmode_reg;
  wire fcw0_carry__0_i_6_n_0;
  wire next_sample;
  wire next_sample_reg;
  wire [7:0]p_0_in;
  wire [7:0]p_0_in__0;
  wire [7:0]p_0_in__1;
  wire [7:0]p_0_in__2;
  wire saturating_counter;
  wire \saturating_counter[0][7]_i_1_n_0 ;
  wire \saturating_counter[0][7]_i_4_n_0 ;
  wire \saturating_counter[1][7]_i_1_n_0 ;
  wire \saturating_counter[1][7]_i_2_n_0 ;
  wire \saturating_counter[1][7]_i_4_n_0 ;
  wire \saturating_counter[2][7]_i_1_n_0 ;
  wire \saturating_counter[2][7]_i_2_n_0 ;
  wire \saturating_counter[2][7]_i_4_n_0 ;
  wire \saturating_counter[3][7]_i_1_n_0 ;
  wire \saturating_counter[3][7]_i_2_n_0 ;
  wire \saturating_counter[3][7]_i_4_n_0 ;
  wire [7:0]\saturating_counter_reg[0]_0 ;
  wire [7:0]\saturating_counter_reg[1]_1 ;
  wire [7:0]\saturating_counter_reg[2]_2 ;
  wire \saturating_counter_reg[3][7]_0 ;
  wire [3:0]\saturating_counter_reg[3][7]_1 ;
  wire [7:0]\saturating_counter_reg[3]_3 ;
  wire [3:0]sel;
  wire [0:0]sq_wave_leds;
  wire \temp[0]_i_2_n_0 ;
  wire \temp[1]_i_2_n_0 ;
  wire \temp[2]_i_2_n_0 ;
  wire \temp[3]_i_2_n_0 ;
  wire \temp_reg[0] ;
  wire \temp_reg[1] ;
  wire \temp_reg[2] ;
  wire [0:0]\temp_reg[2]_0 ;
  wire \tmp2_reg[0] ;
  wire [3:0]\tmp2_reg[0]_0 ;
  wire [15:0]wrapping_counter;
  wire wrapping_counter0_carry__0_n_0;
  wire wrapping_counter0_carry__0_n_1;
  wire wrapping_counter0_carry__0_n_2;
  wire wrapping_counter0_carry__0_n_3;
  wire wrapping_counter0_carry__0_n_4;
  wire wrapping_counter0_carry__0_n_5;
  wire wrapping_counter0_carry__0_n_6;
  wire wrapping_counter0_carry__0_n_7;
  wire wrapping_counter0_carry__1_n_0;
  wire wrapping_counter0_carry__1_n_1;
  wire wrapping_counter0_carry__1_n_2;
  wire wrapping_counter0_carry__1_n_3;
  wire wrapping_counter0_carry__1_n_4;
  wire wrapping_counter0_carry__1_n_5;
  wire wrapping_counter0_carry__1_n_6;
  wire wrapping_counter0_carry__1_n_7;
  wire wrapping_counter0_carry__2_n_2;
  wire wrapping_counter0_carry__2_n_3;
  wire wrapping_counter0_carry__2_n_5;
  wire wrapping_counter0_carry__2_n_6;
  wire wrapping_counter0_carry__2_n_7;
  wire wrapping_counter0_carry_n_0;
  wire wrapping_counter0_carry_n_1;
  wire wrapping_counter0_carry_n_2;
  wire wrapping_counter0_carry_n_3;
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

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT6 #(
    .INIT(64'h0000000000004000)) 
    \buttons_pressed_BUFG[3]_inst_i_1 
       (.I0(\temp[3]_i_2_n_0 ),
        .I1(\saturating_counter_reg[3]_3 [7]),
        .I2(\saturating_counter_reg[3]_3 [6]),
        .I3(\saturating_counter_reg[3]_3 [3]),
        .I4(\saturating_counter_reg[3]_3 [2]),
        .I5(sel[3]),
        .O(\saturating_counter_reg[3][7]_0 ));
  LUT4 #(
    .INIT(16'hAFBA)) 
    \counter[26]_i_1 
       (.I0(\saturating_counter_reg[3][7]_0 ),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\curr_state[0]_i_2_n_0 ),
        .O(\curr_state_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h0040554044040004)) 
    \curr_state[0]_i_1 
       (.I0(\saturating_counter_reg[3][7]_0 ),
        .I1(\curr_state[0]_i_2_n_0 ),
        .I2(\curr_state[0]_i_3_n_0 ),
        .I3(Q[1]),
        .I4(\curr_state[0]_i_4_n_0 ),
        .I5(Q[0]),
        .O(\curr_state_reg[0] [0]));
  LUT6 #(
    .INIT(64'hFFFFFFDFFFFFFFFF)) 
    \curr_state[0]_i_2 
       (.I0(\curr_state[0]_i_5_n_0 ),
        .I1(\saturating_counter_reg[0]_0 [2]),
        .I2(\saturating_counter_reg[0]_0 [3]),
        .I3(\temp[0]_i_2_n_0 ),
        .I4(sel[0]),
        .I5(expmode_reg),
        .O(\curr_state[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFDFFFFFFFFF)) 
    \curr_state[0]_i_3 
       (.I0(\curr_state[0]_i_6_n_0 ),
        .I1(\saturating_counter_reg[1]_1 [2]),
        .I2(\saturating_counter_reg[1]_1 [3]),
        .I3(\temp[1]_i_2_n_0 ),
        .I4(sel[1]),
        .I5(expmode_reg),
        .O(\curr_state[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000800)) 
    \curr_state[0]_i_4 
       (.I0(expmode_reg),
        .I1(\curr_state[0]_i_7_n_0 ),
        .I2(\saturating_counter_reg[2]_2 [2]),
        .I3(\saturating_counter_reg[2]_2 [3]),
        .I4(\temp[2]_i_2_n_0 ),
        .I5(sel[2]),
        .O(\curr_state[0]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \curr_state[0]_i_5 
       (.I0(\saturating_counter_reg[0]_0 [6]),
        .I1(\saturating_counter_reg[0]_0 [7]),
        .O(\curr_state[0]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \curr_state[0]_i_6 
       (.I0(\saturating_counter_reg[1]_1 [6]),
        .I1(\saturating_counter_reg[1]_1 [7]),
        .O(\curr_state[0]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \curr_state[0]_i_7 
       (.I0(\saturating_counter_reg[2]_2 [6]),
        .I1(\saturating_counter_reg[2]_2 [7]),
        .O(\curr_state[0]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \curr_state[1]_i_1 
       (.I0(\curr_state_reg[0]_0 ),
        .O(\curr_state_reg[0] [1]));
  LUT3 #(
    .INIT(8'hBA)) 
    \cycles[20]_i_1 
       (.I0(\saturating_counter_reg[3][7]_0 ),
        .I1(next_sample),
        .I2(CO),
        .O(SR));
  LUT4 #(
    .INIT(16'hEF10)) 
    expmode_i_1
       (.I0(expmode_reg),
        .I1(\temp_reg[2] ),
        .I2(\temp_reg[1] ),
        .I3(sq_wave_leds),
        .O(\tmp2_reg[0] ));
  LUT5 #(
    .INIT(32'hFF7F0080)) 
    fcw0_carry__0_i_1
       (.I0(\temp_reg[2] ),
        .I1(expmode_reg),
        .I2(\temp_reg[0] ),
        .I3(fcw0_carry__0_i_6_n_0),
        .I4(d_out[6]),
        .O(\tmp2_reg[0]_0 [3]));
  LUT5 #(
    .INIT(32'hFF7F0080)) 
    fcw0_carry__0_i_2
       (.I0(\temp_reg[2] ),
        .I1(expmode_reg),
        .I2(\temp_reg[0] ),
        .I3(fcw0_carry__0_i_6_n_0),
        .I4(d_out[5]),
        .O(\tmp2_reg[0]_0 [2]));
  LUT5 #(
    .INIT(32'hFF7F0080)) 
    fcw0_carry__0_i_3
       (.I0(\temp_reg[2] ),
        .I1(expmode_reg),
        .I2(\temp_reg[0] ),
        .I3(fcw0_carry__0_i_6_n_0),
        .I4(d_out[4]),
        .O(\tmp2_reg[0]_0 [1]));
  LUT3 #(
    .INIT(8'hD2)) 
    fcw0_carry__0_i_4
       (.I0(\temp_reg[2] ),
        .I1(\curr_state[0]_i_2_n_0 ),
        .I2(d_out[3]),
        .O(\tmp2_reg[0]_0 [0]));
  LUT6 #(
    .INIT(64'hFFEFFFFFFFFFFFFF)) 
    fcw0_carry__0_i_5
       (.I0(sel[0]),
        .I1(\temp[0]_i_2_n_0 ),
        .I2(\saturating_counter_reg[0]_0 [3]),
        .I3(\saturating_counter_reg[0]_0 [2]),
        .I4(\saturating_counter_reg[0]_0 [7]),
        .I5(\saturating_counter_reg[0]_0 [6]),
        .O(\temp_reg[0] ));
  LUT6 #(
    .INIT(64'hFFEFFFFFFFFFFFFF)) 
    fcw0_carry__0_i_6
       (.I0(sel[1]),
        .I1(\temp[1]_i_2_n_0 ),
        .I2(\saturating_counter_reg[1]_1 [3]),
        .I3(\saturating_counter_reg[1]_1 [2]),
        .I4(\saturating_counter_reg[1]_1 [7]),
        .I5(\saturating_counter_reg[1]_1 [6]),
        .O(fcw0_carry__0_i_6_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    fcw0_carry__1_i_1
       (.I0(\temp_reg[2] ),
        .I1(\curr_state[0]_i_2_n_0 ),
        .O(DI));
  LUT3 #(
    .INIT(8'hD2)) 
    fcw0_carry__1_i_2
       (.I0(\temp_reg[2] ),
        .I1(\curr_state[0]_i_2_n_0 ),
        .I2(d_out[10]),
        .O(\d_out_reg[13] [3]));
  LUT5 #(
    .INIT(32'hFF7F0080)) 
    fcw0_carry__1_i_3
       (.I0(\temp_reg[2] ),
        .I1(expmode_reg),
        .I2(\temp_reg[0] ),
        .I3(fcw0_carry__0_i_6_n_0),
        .I4(d_out[9]),
        .O(\d_out_reg[13] [2]));
  LUT3 #(
    .INIT(8'hD2)) 
    fcw0_carry__1_i_4
       (.I0(\temp_reg[2] ),
        .I1(\curr_state[0]_i_2_n_0 ),
        .I2(d_out[8]),
        .O(\d_out_reg[13] [1]));
  LUT3 #(
    .INIT(8'hD2)) 
    fcw0_carry__1_i_5
       (.I0(\temp_reg[2] ),
        .I1(\curr_state[0]_i_2_n_0 ),
        .I2(d_out[7]),
        .O(\d_out_reg[13] [0]));
  LUT2 #(
    .INIT(4'hD)) 
    fcw0_carry__2_i_1
       (.I0(\temp_reg[2] ),
        .I1(\curr_state[0]_i_2_n_0 ),
        .O(\temp_reg[2]_0 ));
  LUT3 #(
    .INIT(8'hD2)) 
    fcw0_carry__2_i_5
       (.I0(\temp_reg[2] ),
        .I1(\curr_state[0]_i_2_n_0 ),
        .I2(d_out[11]),
        .O(\d_out_reg[14] ));
  LUT3 #(
    .INIT(8'hD2)) 
    fcw0_carry_i_1
       (.I0(\temp_reg[2] ),
        .I1(\curr_state[0]_i_2_n_0 ),
        .I2(d_out[2]),
        .O(S[2]));
  LUT3 #(
    .INIT(8'hD2)) 
    fcw0_carry_i_2
       (.I0(\temp_reg[2] ),
        .I1(\curr_state[0]_i_2_n_0 ),
        .I2(d_out[1]),
        .O(S[1]));
  LUT4 #(
    .INIT(16'h9AAA)) 
    fcw0_carry_i_3
       (.I0(d_out[0]),
        .I1(\temp_reg[1] ),
        .I2(expmode_reg),
        .I3(\temp_reg[2] ),
        .O(S[0]));
  LUT6 #(
    .INIT(64'hFFEFFFFFFFFFFFFF)) 
    \ram[0][23]_i_3 
       (.I0(sel[2]),
        .I1(\temp[2]_i_2_n_0 ),
        .I2(\saturating_counter_reg[2]_2 [3]),
        .I3(\saturating_counter_reg[2]_2 [2]),
        .I4(\saturating_counter_reg[2]_2 [7]),
        .I5(\saturating_counter_reg[2]_2 [6]),
        .O(\temp_reg[2] ));
  LUT2 #(
    .INIT(4'h8)) 
    \samples[20]_i_3 
       (.I0(fcw0_carry__0_i_6_n_0),
        .I1(\temp_reg[0] ),
        .O(\temp_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \saturating_counter[0][0]_i_1 
       (.I0(\saturating_counter_reg[0]_0 [0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \saturating_counter[0][1]_i_1 
       (.I0(\saturating_counter_reg[0]_0 [0]),
        .I1(\saturating_counter_reg[0]_0 [1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \saturating_counter[0][2]_i_1 
       (.I0(\saturating_counter_reg[0]_0 [2]),
        .I1(\saturating_counter_reg[0]_0 [1]),
        .I2(\saturating_counter_reg[0]_0 [0]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \saturating_counter[0][3]_i_1 
       (.I0(\saturating_counter_reg[0]_0 [3]),
        .I1(\saturating_counter_reg[0]_0 [0]),
        .I2(\saturating_counter_reg[0]_0 [1]),
        .I3(\saturating_counter_reg[0]_0 [2]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \saturating_counter[0][4]_i_1 
       (.I0(\saturating_counter_reg[0]_0 [4]),
        .I1(\saturating_counter_reg[0]_0 [3]),
        .I2(\saturating_counter_reg[0]_0 [2]),
        .I3(\saturating_counter_reg[0]_0 [1]),
        .I4(\saturating_counter_reg[0]_0 [0]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \saturating_counter[0][5]_i_1 
       (.I0(\saturating_counter_reg[0]_0 [5]),
        .I1(\saturating_counter_reg[0]_0 [0]),
        .I2(\saturating_counter_reg[0]_0 [1]),
        .I3(\saturating_counter_reg[0]_0 [2]),
        .I4(\saturating_counter_reg[0]_0 [3]),
        .I5(\saturating_counter_reg[0]_0 [4]),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \saturating_counter[0][6]_i_1 
       (.I0(\saturating_counter_reg[0]_0 [6]),
        .I1(\saturating_counter[0][7]_i_4_n_0 ),
        .O(p_0_in[6]));
  LUT2 #(
    .INIT(4'h2)) 
    \saturating_counter[0][7]_i_1 
       (.I0(\wrapping_counter[15]_i_1_n_0 ),
        .I1(\saturating_counter_reg[3][7]_1 [0]),
        .O(\saturating_counter[0][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0002AAAAAAAAAAAA)) 
    \saturating_counter[0][7]_i_2 
       (.I0(\wrapping_counter[15]_i_1_n_0 ),
        .I1(\saturating_counter_reg[0]_0 [3]),
        .I2(\saturating_counter_reg[0]_0 [5]),
        .I3(\saturating_counter_reg[0]_0 [4]),
        .I4(\saturating_counter_reg[0]_0 [6]),
        .I5(\saturating_counter_reg[0]_0 [7]),
        .O(saturating_counter));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \saturating_counter[0][7]_i_3 
       (.I0(\saturating_counter_reg[0]_0 [7]),
        .I1(\saturating_counter[0][7]_i_4_n_0 ),
        .I2(\saturating_counter_reg[0]_0 [6]),
        .O(p_0_in[7]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \saturating_counter[0][7]_i_4 
       (.I0(\saturating_counter_reg[0]_0 [5]),
        .I1(\saturating_counter_reg[0]_0 [0]),
        .I2(\saturating_counter_reg[0]_0 [1]),
        .I3(\saturating_counter_reg[0]_0 [2]),
        .I4(\saturating_counter_reg[0]_0 [3]),
        .I5(\saturating_counter_reg[0]_0 [4]),
        .O(\saturating_counter[0][7]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \saturating_counter[1][0]_i_1 
       (.I0(\saturating_counter_reg[1]_1 [0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \saturating_counter[1][1]_i_1 
       (.I0(\saturating_counter_reg[1]_1 [0]),
        .I1(\saturating_counter_reg[1]_1 [1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \saturating_counter[1][2]_i_1 
       (.I0(\saturating_counter_reg[1]_1 [2]),
        .I1(\saturating_counter_reg[1]_1 [1]),
        .I2(\saturating_counter_reg[1]_1 [0]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \saturating_counter[1][3]_i_1 
       (.I0(\saturating_counter_reg[1]_1 [3]),
        .I1(\saturating_counter_reg[1]_1 [0]),
        .I2(\saturating_counter_reg[1]_1 [1]),
        .I3(\saturating_counter_reg[1]_1 [2]),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \saturating_counter[1][4]_i_1 
       (.I0(\saturating_counter_reg[1]_1 [4]),
        .I1(\saturating_counter_reg[1]_1 [3]),
        .I2(\saturating_counter_reg[1]_1 [2]),
        .I3(\saturating_counter_reg[1]_1 [1]),
        .I4(\saturating_counter_reg[1]_1 [0]),
        .O(p_0_in__0[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \saturating_counter[1][5]_i_1 
       (.I0(\saturating_counter_reg[1]_1 [5]),
        .I1(\saturating_counter_reg[1]_1 [0]),
        .I2(\saturating_counter_reg[1]_1 [1]),
        .I3(\saturating_counter_reg[1]_1 [2]),
        .I4(\saturating_counter_reg[1]_1 [3]),
        .I5(\saturating_counter_reg[1]_1 [4]),
        .O(p_0_in__0[5]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \saturating_counter[1][6]_i_1 
       (.I0(\saturating_counter_reg[1]_1 [6]),
        .I1(\saturating_counter[1][7]_i_4_n_0 ),
        .O(p_0_in__0[6]));
  LUT2 #(
    .INIT(4'h2)) 
    \saturating_counter[1][7]_i_1 
       (.I0(\wrapping_counter[15]_i_1_n_0 ),
        .I1(\saturating_counter_reg[3][7]_1 [1]),
        .O(\saturating_counter[1][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0002AAAAAAAAAAAA)) 
    \saturating_counter[1][7]_i_2 
       (.I0(\wrapping_counter[15]_i_1_n_0 ),
        .I1(\saturating_counter_reg[1]_1 [3]),
        .I2(\saturating_counter_reg[1]_1 [5]),
        .I3(\saturating_counter_reg[1]_1 [4]),
        .I4(\saturating_counter_reg[1]_1 [6]),
        .I5(\saturating_counter_reg[1]_1 [7]),
        .O(\saturating_counter[1][7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \saturating_counter[1][7]_i_3 
       (.I0(\saturating_counter_reg[1]_1 [7]),
        .I1(\saturating_counter[1][7]_i_4_n_0 ),
        .I2(\saturating_counter_reg[1]_1 [6]),
        .O(p_0_in__0[7]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \saturating_counter[1][7]_i_4 
       (.I0(\saturating_counter_reg[1]_1 [5]),
        .I1(\saturating_counter_reg[1]_1 [0]),
        .I2(\saturating_counter_reg[1]_1 [1]),
        .I3(\saturating_counter_reg[1]_1 [2]),
        .I4(\saturating_counter_reg[1]_1 [3]),
        .I5(\saturating_counter_reg[1]_1 [4]),
        .O(\saturating_counter[1][7]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \saturating_counter[2][0]_i_1 
       (.I0(\saturating_counter_reg[2]_2 [0]),
        .O(p_0_in__1[0]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \saturating_counter[2][1]_i_1 
       (.I0(\saturating_counter_reg[2]_2 [0]),
        .I1(\saturating_counter_reg[2]_2 [1]),
        .O(p_0_in__1[1]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \saturating_counter[2][2]_i_1 
       (.I0(\saturating_counter_reg[2]_2 [2]),
        .I1(\saturating_counter_reg[2]_2 [1]),
        .I2(\saturating_counter_reg[2]_2 [0]),
        .O(p_0_in__1[2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \saturating_counter[2][3]_i_1 
       (.I0(\saturating_counter_reg[2]_2 [3]),
        .I1(\saturating_counter_reg[2]_2 [0]),
        .I2(\saturating_counter_reg[2]_2 [1]),
        .I3(\saturating_counter_reg[2]_2 [2]),
        .O(p_0_in__1[3]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \saturating_counter[2][4]_i_1 
       (.I0(\saturating_counter_reg[2]_2 [4]),
        .I1(\saturating_counter_reg[2]_2 [3]),
        .I2(\saturating_counter_reg[2]_2 [2]),
        .I3(\saturating_counter_reg[2]_2 [1]),
        .I4(\saturating_counter_reg[2]_2 [0]),
        .O(p_0_in__1[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \saturating_counter[2][5]_i_1 
       (.I0(\saturating_counter_reg[2]_2 [5]),
        .I1(\saturating_counter_reg[2]_2 [0]),
        .I2(\saturating_counter_reg[2]_2 [1]),
        .I3(\saturating_counter_reg[2]_2 [2]),
        .I4(\saturating_counter_reg[2]_2 [3]),
        .I5(\saturating_counter_reg[2]_2 [4]),
        .O(p_0_in__1[5]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \saturating_counter[2][6]_i_1 
       (.I0(\saturating_counter_reg[2]_2 [6]),
        .I1(\saturating_counter[2][7]_i_4_n_0 ),
        .O(p_0_in__1[6]));
  LUT2 #(
    .INIT(4'h2)) 
    \saturating_counter[2][7]_i_1 
       (.I0(\wrapping_counter[15]_i_1_n_0 ),
        .I1(\saturating_counter_reg[3][7]_1 [2]),
        .O(\saturating_counter[2][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0002AAAAAAAAAAAA)) 
    \saturating_counter[2][7]_i_2 
       (.I0(\wrapping_counter[15]_i_1_n_0 ),
        .I1(\saturating_counter_reg[2]_2 [3]),
        .I2(\saturating_counter_reg[2]_2 [5]),
        .I3(\saturating_counter_reg[2]_2 [4]),
        .I4(\saturating_counter_reg[2]_2 [6]),
        .I5(\saturating_counter_reg[2]_2 [7]),
        .O(\saturating_counter[2][7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \saturating_counter[2][7]_i_3 
       (.I0(\saturating_counter_reg[2]_2 [7]),
        .I1(\saturating_counter[2][7]_i_4_n_0 ),
        .I2(\saturating_counter_reg[2]_2 [6]),
        .O(p_0_in__1[7]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \saturating_counter[2][7]_i_4 
       (.I0(\saturating_counter_reg[2]_2 [5]),
        .I1(\saturating_counter_reg[2]_2 [0]),
        .I2(\saturating_counter_reg[2]_2 [1]),
        .I3(\saturating_counter_reg[2]_2 [2]),
        .I4(\saturating_counter_reg[2]_2 [3]),
        .I5(\saturating_counter_reg[2]_2 [4]),
        .O(\saturating_counter[2][7]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \saturating_counter[3][0]_i_1 
       (.I0(\saturating_counter_reg[3]_3 [0]),
        .O(p_0_in__2[0]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \saturating_counter[3][1]_i_1 
       (.I0(\saturating_counter_reg[3]_3 [0]),
        .I1(\saturating_counter_reg[3]_3 [1]),
        .O(p_0_in__2[1]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \saturating_counter[3][2]_i_1 
       (.I0(\saturating_counter_reg[3]_3 [2]),
        .I1(\saturating_counter_reg[3]_3 [1]),
        .I2(\saturating_counter_reg[3]_3 [0]),
        .O(p_0_in__2[2]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \saturating_counter[3][3]_i_1 
       (.I0(\saturating_counter_reg[3]_3 [3]),
        .I1(\saturating_counter_reg[3]_3 [0]),
        .I2(\saturating_counter_reg[3]_3 [1]),
        .I3(\saturating_counter_reg[3]_3 [2]),
        .O(p_0_in__2[3]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \saturating_counter[3][4]_i_1 
       (.I0(\saturating_counter_reg[3]_3 [4]),
        .I1(\saturating_counter_reg[3]_3 [3]),
        .I2(\saturating_counter_reg[3]_3 [2]),
        .I3(\saturating_counter_reg[3]_3 [1]),
        .I4(\saturating_counter_reg[3]_3 [0]),
        .O(p_0_in__2[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \saturating_counter[3][5]_i_1 
       (.I0(\saturating_counter_reg[3]_3 [5]),
        .I1(\saturating_counter_reg[3]_3 [0]),
        .I2(\saturating_counter_reg[3]_3 [1]),
        .I3(\saturating_counter_reg[3]_3 [2]),
        .I4(\saturating_counter_reg[3]_3 [3]),
        .I5(\saturating_counter_reg[3]_3 [4]),
        .O(p_0_in__2[5]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \saturating_counter[3][6]_i_1 
       (.I0(\saturating_counter_reg[3]_3 [6]),
        .I1(\saturating_counter[3][7]_i_4_n_0 ),
        .O(p_0_in__2[6]));
  LUT2 #(
    .INIT(4'h2)) 
    \saturating_counter[3][7]_i_1 
       (.I0(\wrapping_counter[15]_i_1_n_0 ),
        .I1(\saturating_counter_reg[3][7]_1 [3]),
        .O(\saturating_counter[3][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0002AAAAAAAAAAAA)) 
    \saturating_counter[3][7]_i_2 
       (.I0(\wrapping_counter[15]_i_1_n_0 ),
        .I1(\saturating_counter_reg[3]_3 [3]),
        .I2(\saturating_counter_reg[3]_3 [5]),
        .I3(\saturating_counter_reg[3]_3 [4]),
        .I4(\saturating_counter_reg[3]_3 [6]),
        .I5(\saturating_counter_reg[3]_3 [7]),
        .O(\saturating_counter[3][7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \saturating_counter[3][7]_i_3 
       (.I0(\saturating_counter_reg[3]_3 [7]),
        .I1(\saturating_counter[3][7]_i_4_n_0 ),
        .I2(\saturating_counter_reg[3]_3 [6]),
        .O(p_0_in__2[7]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \saturating_counter[3][7]_i_4 
       (.I0(\saturating_counter_reg[3]_3 [5]),
        .I1(\saturating_counter_reg[3]_3 [0]),
        .I2(\saturating_counter_reg[3]_3 [1]),
        .I3(\saturating_counter_reg[3]_3 [2]),
        .I4(\saturating_counter_reg[3]_3 [3]),
        .I5(\saturating_counter_reg[3]_3 [4]),
        .O(\saturating_counter[3][7]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \saturating_counter_reg[0][0] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(saturating_counter),
        .D(p_0_in[0]),
        .Q(\saturating_counter_reg[0]_0 [0]),
        .R(\saturating_counter[0][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \saturating_counter_reg[0][1] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(saturating_counter),
        .D(p_0_in[1]),
        .Q(\saturating_counter_reg[0]_0 [1]),
        .R(\saturating_counter[0][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \saturating_counter_reg[0][2] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(saturating_counter),
        .D(p_0_in[2]),
        .Q(\saturating_counter_reg[0]_0 [2]),
        .R(\saturating_counter[0][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \saturating_counter_reg[0][3] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(saturating_counter),
        .D(p_0_in[3]),
        .Q(\saturating_counter_reg[0]_0 [3]),
        .R(\saturating_counter[0][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \saturating_counter_reg[0][4] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(saturating_counter),
        .D(p_0_in[4]),
        .Q(\saturating_counter_reg[0]_0 [4]),
        .R(\saturating_counter[0][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \saturating_counter_reg[0][5] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(saturating_counter),
        .D(p_0_in[5]),
        .Q(\saturating_counter_reg[0]_0 [5]),
        .R(\saturating_counter[0][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \saturating_counter_reg[0][6] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(saturating_counter),
        .D(p_0_in[6]),
        .Q(\saturating_counter_reg[0]_0 [6]),
        .R(\saturating_counter[0][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \saturating_counter_reg[0][7] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(saturating_counter),
        .D(p_0_in[7]),
        .Q(\saturating_counter_reg[0]_0 [7]),
        .R(\saturating_counter[0][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \saturating_counter_reg[1][0] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\saturating_counter[1][7]_i_2_n_0 ),
        .D(p_0_in__0[0]),
        .Q(\saturating_counter_reg[1]_1 [0]),
        .R(\saturating_counter[1][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \saturating_counter_reg[1][1] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\saturating_counter[1][7]_i_2_n_0 ),
        .D(p_0_in__0[1]),
        .Q(\saturating_counter_reg[1]_1 [1]),
        .R(\saturating_counter[1][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \saturating_counter_reg[1][2] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\saturating_counter[1][7]_i_2_n_0 ),
        .D(p_0_in__0[2]),
        .Q(\saturating_counter_reg[1]_1 [2]),
        .R(\saturating_counter[1][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \saturating_counter_reg[1][3] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\saturating_counter[1][7]_i_2_n_0 ),
        .D(p_0_in__0[3]),
        .Q(\saturating_counter_reg[1]_1 [3]),
        .R(\saturating_counter[1][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \saturating_counter_reg[1][4] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\saturating_counter[1][7]_i_2_n_0 ),
        .D(p_0_in__0[4]),
        .Q(\saturating_counter_reg[1]_1 [4]),
        .R(\saturating_counter[1][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \saturating_counter_reg[1][5] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\saturating_counter[1][7]_i_2_n_0 ),
        .D(p_0_in__0[5]),
        .Q(\saturating_counter_reg[1]_1 [5]),
        .R(\saturating_counter[1][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \saturating_counter_reg[1][6] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\saturating_counter[1][7]_i_2_n_0 ),
        .D(p_0_in__0[6]),
        .Q(\saturating_counter_reg[1]_1 [6]),
        .R(\saturating_counter[1][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \saturating_counter_reg[1][7] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\saturating_counter[1][7]_i_2_n_0 ),
        .D(p_0_in__0[7]),
        .Q(\saturating_counter_reg[1]_1 [7]),
        .R(\saturating_counter[1][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \saturating_counter_reg[2][0] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\saturating_counter[2][7]_i_2_n_0 ),
        .D(p_0_in__1[0]),
        .Q(\saturating_counter_reg[2]_2 [0]),
        .R(\saturating_counter[2][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \saturating_counter_reg[2][1] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\saturating_counter[2][7]_i_2_n_0 ),
        .D(p_0_in__1[1]),
        .Q(\saturating_counter_reg[2]_2 [1]),
        .R(\saturating_counter[2][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \saturating_counter_reg[2][2] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\saturating_counter[2][7]_i_2_n_0 ),
        .D(p_0_in__1[2]),
        .Q(\saturating_counter_reg[2]_2 [2]),
        .R(\saturating_counter[2][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \saturating_counter_reg[2][3] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\saturating_counter[2][7]_i_2_n_0 ),
        .D(p_0_in__1[3]),
        .Q(\saturating_counter_reg[2]_2 [3]),
        .R(\saturating_counter[2][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \saturating_counter_reg[2][4] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\saturating_counter[2][7]_i_2_n_0 ),
        .D(p_0_in__1[4]),
        .Q(\saturating_counter_reg[2]_2 [4]),
        .R(\saturating_counter[2][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \saturating_counter_reg[2][5] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\saturating_counter[2][7]_i_2_n_0 ),
        .D(p_0_in__1[5]),
        .Q(\saturating_counter_reg[2]_2 [5]),
        .R(\saturating_counter[2][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \saturating_counter_reg[2][6] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\saturating_counter[2][7]_i_2_n_0 ),
        .D(p_0_in__1[6]),
        .Q(\saturating_counter_reg[2]_2 [6]),
        .R(\saturating_counter[2][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \saturating_counter_reg[2][7] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\saturating_counter[2][7]_i_2_n_0 ),
        .D(p_0_in__1[7]),
        .Q(\saturating_counter_reg[2]_2 [7]),
        .R(\saturating_counter[2][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \saturating_counter_reg[3][0] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\saturating_counter[3][7]_i_2_n_0 ),
        .D(p_0_in__2[0]),
        .Q(\saturating_counter_reg[3]_3 [0]),
        .R(\saturating_counter[3][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \saturating_counter_reg[3][1] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\saturating_counter[3][7]_i_2_n_0 ),
        .D(p_0_in__2[1]),
        .Q(\saturating_counter_reg[3]_3 [1]),
        .R(\saturating_counter[3][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \saturating_counter_reg[3][2] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\saturating_counter[3][7]_i_2_n_0 ),
        .D(p_0_in__2[2]),
        .Q(\saturating_counter_reg[3]_3 [2]),
        .R(\saturating_counter[3][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \saturating_counter_reg[3][3] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\saturating_counter[3][7]_i_2_n_0 ),
        .D(p_0_in__2[3]),
        .Q(\saturating_counter_reg[3]_3 [3]),
        .R(\saturating_counter[3][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \saturating_counter_reg[3][4] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\saturating_counter[3][7]_i_2_n_0 ),
        .D(p_0_in__2[4]),
        .Q(\saturating_counter_reg[3]_3 [4]),
        .R(\saturating_counter[3][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \saturating_counter_reg[3][5] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\saturating_counter[3][7]_i_2_n_0 ),
        .D(p_0_in__2[5]),
        .Q(\saturating_counter_reg[3]_3 [5]),
        .R(\saturating_counter[3][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \saturating_counter_reg[3][6] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\saturating_counter[3][7]_i_2_n_0 ),
        .D(p_0_in__2[6]),
        .Q(\saturating_counter_reg[3]_3 [6]),
        .R(\saturating_counter[3][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \saturating_counter_reg[3][7] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\saturating_counter[3][7]_i_2_n_0 ),
        .D(p_0_in__2[7]),
        .Q(\saturating_counter_reg[3]_3 [7]),
        .R(\saturating_counter[3][7]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    sel_i_1
       (.I0(\saturating_counter_reg[3][7]_0 ),
        .I1(next_sample),
        .O(next_sample_reg));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h04000000)) 
    \temp[0]_i_1 
       (.I0(\temp[0]_i_2_n_0 ),
        .I1(\saturating_counter_reg[0]_0 [3]),
        .I2(\saturating_counter_reg[0]_0 [2]),
        .I3(\saturating_counter_reg[0]_0 [7]),
        .I4(\saturating_counter_reg[0]_0 [6]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \temp[0]_i_2 
       (.I0(\saturating_counter_reg[0]_0 [5]),
        .I1(\saturating_counter_reg[0]_0 [4]),
        .I2(\saturating_counter_reg[0]_0 [1]),
        .I3(\saturating_counter_reg[0]_0 [0]),
        .O(\temp[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h04000000)) 
    \temp[1]_i_1 
       (.I0(\temp[1]_i_2_n_0 ),
        .I1(\saturating_counter_reg[1]_1 [3]),
        .I2(\saturating_counter_reg[1]_1 [2]),
        .I3(\saturating_counter_reg[1]_1 [7]),
        .I4(\saturating_counter_reg[1]_1 [6]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \temp[1]_i_2 
       (.I0(\saturating_counter_reg[1]_1 [5]),
        .I1(\saturating_counter_reg[1]_1 [4]),
        .I2(\saturating_counter_reg[1]_1 [1]),
        .I3(\saturating_counter_reg[1]_1 [0]),
        .O(\temp[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h04000000)) 
    \temp[2]_i_1 
       (.I0(\temp[2]_i_2_n_0 ),
        .I1(\saturating_counter_reg[2]_2 [3]),
        .I2(\saturating_counter_reg[2]_2 [2]),
        .I3(\saturating_counter_reg[2]_2 [7]),
        .I4(\saturating_counter_reg[2]_2 [6]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \temp[2]_i_2 
       (.I0(\saturating_counter_reg[2]_2 [5]),
        .I1(\saturating_counter_reg[2]_2 [4]),
        .I2(\saturating_counter_reg[2]_2 [1]),
        .I3(\saturating_counter_reg[2]_2 [0]),
        .O(\temp[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00004000)) 
    \temp[3]_i_1 
       (.I0(\saturating_counter_reg[3]_3 [2]),
        .I1(\saturating_counter_reg[3]_3 [3]),
        .I2(\saturating_counter_reg[3]_3 [6]),
        .I3(\saturating_counter_reg[3]_3 [7]),
        .I4(\temp[3]_i_2_n_0 ),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \temp[3]_i_2 
       (.I0(\saturating_counter_reg[3]_3 [5]),
        .I1(\saturating_counter_reg[3]_3 [4]),
        .I2(\saturating_counter_reg[3]_3 [1]),
        .I3(\saturating_counter_reg[3]_3 [0]),
        .O(\temp[3]_i_2_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 wrapping_counter0_carry
       (.CI(\<const0> ),
        .CO({wrapping_counter0_carry_n_0,wrapping_counter0_carry_n_1,wrapping_counter0_carry_n_2,wrapping_counter0_carry_n_3}),
        .CYINIT(wrapping_counter[0]),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({wrapping_counter0_carry_n_4,wrapping_counter0_carry_n_5,wrapping_counter0_carry_n_6,wrapping_counter0_carry_n_7}),
        .S(wrapping_counter[4:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 wrapping_counter0_carry__0
       (.CI(wrapping_counter0_carry_n_0),
        .CO({wrapping_counter0_carry__0_n_0,wrapping_counter0_carry__0_n_1,wrapping_counter0_carry__0_n_2,wrapping_counter0_carry__0_n_3}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({wrapping_counter0_carry__0_n_4,wrapping_counter0_carry__0_n_5,wrapping_counter0_carry__0_n_6,wrapping_counter0_carry__0_n_7}),
        .S(wrapping_counter[8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 wrapping_counter0_carry__1
       (.CI(wrapping_counter0_carry__0_n_0),
        .CO({wrapping_counter0_carry__1_n_0,wrapping_counter0_carry__1_n_1,wrapping_counter0_carry__1_n_2,wrapping_counter0_carry__1_n_3}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({wrapping_counter0_carry__1_n_4,wrapping_counter0_carry__1_n_5,wrapping_counter0_carry__1_n_6,wrapping_counter0_carry__1_n_7}),
        .S(wrapping_counter[12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 wrapping_counter0_carry__2
       (.CI(wrapping_counter0_carry__1_n_0),
        .CO({wrapping_counter0_carry__2_n_2,wrapping_counter0_carry__2_n_3}),
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
    .INIT(64'hFFFFFFFFFFFEFFFF)) 
    \wrapping_counter[0]_i_2 
       (.I0(\wrapping_counter[0]_i_3_n_0 ),
        .I1(\wrapping_counter[0]_i_4_n_0 ),
        .I2(\wrapping_counter[0]_i_5_n_0 ),
        .I3(wrapping_counter[8]),
        .I4(wrapping_counter[13]),
        .I5(wrapping_counter[9]),
        .O(\wrapping_counter[0]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hEFFF)) 
    \wrapping_counter[0]_i_3 
       (.I0(wrapping_counter[11]),
        .I1(wrapping_counter[7]),
        .I2(wrapping_counter[14]),
        .I3(wrapping_counter[5]),
        .O(\wrapping_counter[0]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \wrapping_counter[0]_i_4 
       (.I0(wrapping_counter[15]),
        .I1(wrapping_counter[3]),
        .I2(wrapping_counter[12]),
        .I3(wrapping_counter[4]),
        .O(\wrapping_counter[0]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \wrapping_counter[0]_i_5 
       (.I0(wrapping_counter[2]),
        .I1(wrapping_counter[1]),
        .I2(wrapping_counter[10]),
        .I3(wrapping_counter[6]),
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
   (Q,
    D,
    CLK_125MHZ_FPGA_IBUF_BUFG);
  output [3:0]Q;
  input [3:0]D;
  input CLK_125MHZ_FPGA_IBUF_BUFG;

  wire \<const0> ;
  wire \<const1> ;
  wire CLK_125MHZ_FPGA_IBUF_BUFG;
  wire [3:0]D;
  wire [3:0]Q;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  FDRE \temp_reg[0] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(D[0]),
        .Q(Q[0]),
        .R(\<const0> ));
  FDRE \temp_reg[1] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(D[1]),
        .Q(Q[1]),
        .R(\<const0> ));
  FDRE \temp_reg[2] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(D[2]),
        .Q(Q[2]),
        .R(\<const0> ));
  FDRE \temp_reg[3] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(D[3]),
        .Q(Q[3]),
        .R(\<const0> ));
endmodule

module fcw_ram
   (D,
    \d_out_reg[21]_0 ,
    DI,
    \d_out_reg[13]_0 ,
    S,
    \d_out_reg[20]_0 ,
    \d_out_reg[22]_0 ,
    \ram_reg[0][0]_0 ,
    Q,
    \ram_reg[0][0]_1 ,
    note_reg,
    \buttons_pressed[3] ,
    \ram_reg[3][2]_0 ,
    fcw__0,
    \buttons_pressed_BUFG[3] ,
    \ram_reg[3][23]_0 ,
    CLK);
  output [23:0]D;
  output [7:0]\d_out_reg[21]_0 ;
  output [0:0]DI;
  output [10:0]\d_out_reg[13]_0 ;
  output [2:0]S;
  output [3:0]\d_out_reg[20]_0 ;
  output [1:0]\d_out_reg[22]_0 ;
  input \ram_reg[0][0]_0 ;
  input [0:0]Q;
  input \ram_reg[0][0]_1 ;
  input [1:0]note_reg;
  input \buttons_pressed[3] ;
  input [1:0]\ram_reg[3][2]_0 ;
  input [21:0]fcw__0;
  input \buttons_pressed_BUFG[3] ;
  input [23:0]\ram_reg[3][23]_0 ;
  input CLK;

  wire \<const0> ;
  wire \<const1> ;
  wire CLK;
  wire [23:0]D;
  wire [0:0]DI;
  wire [0:0]Q;
  wire [2:0]S;
  wire \buttons_pressed[3] ;
  wire \buttons_pressed_BUFG[3] ;
  wire [23:0]d_out;
  wire \d_out[0]_i_1_n_0 ;
  wire \d_out[10]_i_1_n_0 ;
  wire \d_out[11]_i_1_n_0 ;
  wire \d_out[12]_i_1_n_0 ;
  wire \d_out[13]_i_1_n_0 ;
  wire \d_out[14]_i_1_n_0 ;
  wire \d_out[15]_i_1_n_0 ;
  wire \d_out[16]_i_1_n_0 ;
  wire \d_out[17]_i_1_n_0 ;
  wire \d_out[18]_i_1_n_0 ;
  wire \d_out[19]_i_1_n_0 ;
  wire \d_out[1]_i_1_n_0 ;
  wire \d_out[20]_i_1_n_0 ;
  wire \d_out[21]_i_1_n_0 ;
  wire \d_out[22]_i_1_n_0 ;
  wire \d_out[23]_i_1_n_0 ;
  wire \d_out[2]_i_1_n_0 ;
  wire \d_out[3]_i_1_n_0 ;
  wire \d_out[4]_i_1_n_0 ;
  wire \d_out[5]_i_1_n_0 ;
  wire \d_out[6]_i_1_n_0 ;
  wire \d_out[7]_i_1_n_0 ;
  wire \d_out[8]_i_1_n_0 ;
  wire \d_out[9]_i_1_n_0 ;
  wire [10:0]\d_out_reg[13]_0 ;
  wire [3:0]\d_out_reg[20]_0 ;
  wire [7:0]\d_out_reg[21]_0 ;
  wire [1:0]\d_out_reg[22]_0 ;
  wire [21:0]fcw__0;
  wire [1:0]note_reg;
  wire ram;
  wire \ram[0][23]_i_1_n_0 ;
  wire \ram[0][23]_i_2_n_0 ;
  wire \ram[1][23]_i_1_n_0 ;
  wire \ram[2][23]_i_1_n_0 ;
  wire [23:0]\ram_reg[0] ;
  wire \ram_reg[0][0]_0 ;
  wire \ram_reg[0][0]_1 ;
  wire [23:0]\ram_reg[1] ;
  wire [23:0]\ram_reg[2] ;
  wire [23:0]\ram_reg[3] ;
  wire [23:0]\ram_reg[3][23]_0 ;
  wire [1:0]\ram_reg[3][2]_0 ;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT6 #(
    .INIT(64'hF0AACCFFF0AACC00)) 
    \d_out[0]_i_1 
       (.I0(\ram_reg[2] [0]),
        .I1(\ram_reg[1] [0]),
        .I2(\ram_reg[3] [0]),
        .I3(note_reg[0]),
        .I4(note_reg[1]),
        .I5(\ram_reg[0] [0]),
        .O(\d_out[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \d_out[10]_i_1 
       (.I0(\ram_reg[2] [10]),
        .I1(\ram_reg[0] [10]),
        .I2(\ram_reg[3] [10]),
        .I3(note_reg[0]),
        .I4(note_reg[1]),
        .I5(\ram_reg[1] [10]),
        .O(\d_out[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAACCF0FFAACCF000)) 
    \d_out[11]_i_1 
       (.I0(\ram_reg[3] [11]),
        .I1(\ram_reg[2] [11]),
        .I2(\ram_reg[1] [11]),
        .I3(note_reg[0]),
        .I4(note_reg[1]),
        .I5(\ram_reg[0] [11]),
        .O(\d_out[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \d_out[12]_i_1 
       (.I0(\ram_reg[2] [12]),
        .I1(\ram_reg[0] [12]),
        .I2(\ram_reg[3] [12]),
        .I3(note_reg[0]),
        .I4(note_reg[1]),
        .I5(\ram_reg[1] [12]),
        .O(\d_out[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAACCFFF0AACC00F0)) 
    \d_out[13]_i_1 
       (.I0(\ram_reg[3] [13]),
        .I1(\ram_reg[2] [13]),
        .I2(\ram_reg[0] [13]),
        .I3(note_reg[0]),
        .I4(note_reg[1]),
        .I5(\ram_reg[1] [13]),
        .O(\d_out[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AACCFFF0AACC00)) 
    \d_out[14]_i_1 
       (.I0(\ram_reg[2] [14]),
        .I1(\ram_reg[1] [14]),
        .I2(\ram_reg[3] [14]),
        .I3(note_reg[0]),
        .I4(note_reg[1]),
        .I5(\ram_reg[0] [14]),
        .O(\d_out[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \d_out[15]_i_1 
       (.I0(\ram_reg[2] [15]),
        .I1(\ram_reg[0] [15]),
        .I2(\ram_reg[3] [15]),
        .I3(note_reg[0]),
        .I4(note_reg[1]),
        .I5(\ram_reg[1] [15]),
        .O(\d_out[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AACCFFF0AACC00)) 
    \d_out[16]_i_1 
       (.I0(\ram_reg[2] [16]),
        .I1(\ram_reg[1] [16]),
        .I2(\ram_reg[3] [16]),
        .I3(note_reg[0]),
        .I4(note_reg[1]),
        .I5(\ram_reg[0] [16]),
        .O(\d_out[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \d_out[17]_i_1 
       (.I0(\ram_reg[2] [17]),
        .I1(\ram_reg[0] [17]),
        .I2(\ram_reg[3] [17]),
        .I3(note_reg[0]),
        .I4(note_reg[1]),
        .I5(\ram_reg[1] [17]),
        .O(\d_out[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \d_out[18]_i_1 
       (.I0(\ram_reg[2] [18]),
        .I1(\ram_reg[0] [18]),
        .I2(\ram_reg[3] [18]),
        .I3(note_reg[0]),
        .I4(note_reg[1]),
        .I5(\ram_reg[1] [18]),
        .O(\d_out[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAACCF0FFAACCF000)) 
    \d_out[19]_i_1 
       (.I0(\ram_reg[3] [19]),
        .I1(\ram_reg[2] [19]),
        .I2(\ram_reg[1] [19]),
        .I3(note_reg[0]),
        .I4(note_reg[1]),
        .I5(\ram_reg[0] [19]),
        .O(\d_out[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \d_out[1]_i_1 
       (.I0(\ram_reg[2] [1]),
        .I1(\ram_reg[0] [1]),
        .I2(\ram_reg[3] [1]),
        .I3(note_reg[0]),
        .I4(note_reg[1]),
        .I5(\ram_reg[1] [1]),
        .O(\d_out[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \d_out[20]_i_1 
       (.I0(\ram_reg[2] [20]),
        .I1(\ram_reg[0] [20]),
        .I2(\ram_reg[3] [20]),
        .I3(note_reg[0]),
        .I4(note_reg[1]),
        .I5(\ram_reg[1] [20]),
        .O(\d_out[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAACCFFF0AACC00F0)) 
    \d_out[21]_i_1 
       (.I0(\ram_reg[3] [21]),
        .I1(\ram_reg[2] [21]),
        .I2(\ram_reg[0] [21]),
        .I3(note_reg[0]),
        .I4(note_reg[1]),
        .I5(\ram_reg[1] [21]),
        .O(\d_out[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AACCFFF0AACC00)) 
    \d_out[22]_i_1 
       (.I0(\ram_reg[2] [22]),
        .I1(\ram_reg[1] [22]),
        .I2(\ram_reg[3] [22]),
        .I3(note_reg[0]),
        .I4(note_reg[1]),
        .I5(\ram_reg[0] [22]),
        .O(\d_out[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \d_out[23]_i_1 
       (.I0(\ram_reg[2] [23]),
        .I1(\ram_reg[0] [23]),
        .I2(\ram_reg[3] [23]),
        .I3(note_reg[0]),
        .I4(note_reg[1]),
        .I5(\ram_reg[1] [23]),
        .O(\d_out[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \d_out[2]_i_1 
       (.I0(\ram_reg[2] [2]),
        .I1(\ram_reg[0] [2]),
        .I2(\ram_reg[3] [2]),
        .I3(note_reg[0]),
        .I4(note_reg[1]),
        .I5(\ram_reg[1] [2]),
        .O(\d_out[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAACCF0FFAACCF000)) 
    \d_out[3]_i_1 
       (.I0(\ram_reg[3] [3]),
        .I1(\ram_reg[2] [3]),
        .I2(\ram_reg[1] [3]),
        .I3(note_reg[0]),
        .I4(note_reg[1]),
        .I5(\ram_reg[0] [3]),
        .O(\d_out[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \d_out[4]_i_1 
       (.I0(\ram_reg[2] [4]),
        .I1(\ram_reg[0] [4]),
        .I2(\ram_reg[3] [4]),
        .I3(note_reg[0]),
        .I4(note_reg[1]),
        .I5(\ram_reg[1] [4]),
        .O(\d_out[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAACCFFF0AACC00F0)) 
    \d_out[5]_i_1 
       (.I0(\ram_reg[3] [5]),
        .I1(\ram_reg[2] [5]),
        .I2(\ram_reg[0] [5]),
        .I3(note_reg[0]),
        .I4(note_reg[1]),
        .I5(\ram_reg[1] [5]),
        .O(\d_out[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AACCFFF0AACC00)) 
    \d_out[6]_i_1 
       (.I0(\ram_reg[2] [6]),
        .I1(\ram_reg[1] [6]),
        .I2(\ram_reg[3] [6]),
        .I3(note_reg[0]),
        .I4(note_reg[1]),
        .I5(\ram_reg[0] [6]),
        .O(\d_out[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \d_out[7]_i_1 
       (.I0(\ram_reg[2] [7]),
        .I1(\ram_reg[0] [7]),
        .I2(\ram_reg[3] [7]),
        .I3(note_reg[0]),
        .I4(note_reg[1]),
        .I5(\ram_reg[1] [7]),
        .O(\d_out[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AACCFFF0AACC00)) 
    \d_out[8]_i_1 
       (.I0(\ram_reg[2] [8]),
        .I1(\ram_reg[1] [8]),
        .I2(\ram_reg[3] [8]),
        .I3(note_reg[0]),
        .I4(note_reg[1]),
        .I5(\ram_reg[0] [8]),
        .O(\d_out[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \d_out[9]_i_1 
       (.I0(\ram_reg[2] [9]),
        .I1(\ram_reg[0] [9]),
        .I2(\ram_reg[3] [9]),
        .I3(note_reg[0]),
        .I4(note_reg[1]),
        .I5(\ram_reg[1] [9]),
        .O(\d_out[9]_i_1_n_0 ));
  FDRE \d_out_reg[0] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\d_out[0]_i_1_n_0 ),
        .Q(d_out[0]),
        .R(\<const0> ));
  FDRE \d_out_reg[10] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\d_out[10]_i_1_n_0 ),
        .Q(\d_out_reg[13]_0 [7]),
        .R(\<const0> ));
  FDRE \d_out_reg[11] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\d_out[11]_i_1_n_0 ),
        .Q(\d_out_reg[13]_0 [8]),
        .R(\<const0> ));
  FDRE \d_out_reg[12] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\d_out[12]_i_1_n_0 ),
        .Q(\d_out_reg[13]_0 [9]),
        .R(\<const0> ));
  FDRE \d_out_reg[13] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\d_out[13]_i_1_n_0 ),
        .Q(\d_out_reg[13]_0 [10]),
        .R(\<const0> ));
  FDRE \d_out_reg[14] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\d_out[14]_i_1_n_0 ),
        .Q(DI),
        .R(\<const0> ));
  FDRE \d_out_reg[15] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\d_out[15]_i_1_n_0 ),
        .Q(\d_out_reg[21]_0 [1]),
        .R(\<const0> ));
  FDRE \d_out_reg[16] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\d_out[16]_i_1_n_0 ),
        .Q(\d_out_reg[21]_0 [2]),
        .R(\<const0> ));
  FDRE \d_out_reg[17] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\d_out[17]_i_1_n_0 ),
        .Q(\d_out_reg[21]_0 [3]),
        .R(\<const0> ));
  FDRE \d_out_reg[18] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\d_out[18]_i_1_n_0 ),
        .Q(\d_out_reg[21]_0 [4]),
        .R(\<const0> ));
  FDRE \d_out_reg[19] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\d_out[19]_i_1_n_0 ),
        .Q(\d_out_reg[21]_0 [5]),
        .R(\<const0> ));
  FDRE \d_out_reg[1] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\d_out[1]_i_1_n_0 ),
        .Q(d_out[1]),
        .R(\<const0> ));
  FDRE \d_out_reg[20] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\d_out[20]_i_1_n_0 ),
        .Q(\d_out_reg[21]_0 [6]),
        .R(\<const0> ));
  FDRE \d_out_reg[21] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\d_out[21]_i_1_n_0 ),
        .Q(\d_out_reg[21]_0 [7]),
        .R(\<const0> ));
  FDRE \d_out_reg[22] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\d_out[22]_i_1_n_0 ),
        .Q(d_out[22]),
        .R(\<const0> ));
  FDRE \d_out_reg[23] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\d_out[23]_i_1_n_0 ),
        .Q(d_out[23]),
        .R(\<const0> ));
  FDRE \d_out_reg[2] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\d_out[2]_i_1_n_0 ),
        .Q(\d_out_reg[21]_0 [0]),
        .R(\<const0> ));
  FDRE \d_out_reg[3] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\d_out[3]_i_1_n_0 ),
        .Q(\d_out_reg[13]_0 [0]),
        .R(\<const0> ));
  FDRE \d_out_reg[4] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\d_out[4]_i_1_n_0 ),
        .Q(\d_out_reg[13]_0 [1]),
        .R(\<const0> ));
  FDRE \d_out_reg[5] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\d_out[5]_i_1_n_0 ),
        .Q(\d_out_reg[13]_0 [2]),
        .R(\<const0> ));
  FDRE \d_out_reg[6] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\d_out[6]_i_1_n_0 ),
        .Q(\d_out_reg[13]_0 [3]),
        .R(\<const0> ));
  FDRE \d_out_reg[7] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\d_out[7]_i_1_n_0 ),
        .Q(\d_out_reg[13]_0 [4]),
        .R(\<const0> ));
  FDRE \d_out_reg[8] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\d_out[8]_i_1_n_0 ),
        .Q(\d_out_reg[13]_0 [5]),
        .R(\<const0> ));
  FDRE \d_out_reg[9] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\d_out[9]_i_1_n_0 ),
        .Q(\d_out_reg[13]_0 [6]),
        .R(\<const0> ));
  LUT2 #(
    .INIT(4'h9)) 
    fcw0_carry__2_i_2
       (.I0(\d_out_reg[21]_0 [2]),
        .I1(\d_out_reg[21]_0 [3]),
        .O(S[2]));
  LUT2 #(
    .INIT(4'h9)) 
    fcw0_carry__2_i_3
       (.I0(\d_out_reg[21]_0 [1]),
        .I1(\d_out_reg[21]_0 [2]),
        .O(S[1]));
  LUT2 #(
    .INIT(4'h9)) 
    fcw0_carry__2_i_4
       (.I0(DI),
        .I1(\d_out_reg[21]_0 [1]),
        .O(S[0]));
  LUT2 #(
    .INIT(4'h9)) 
    fcw0_carry__3_i_1
       (.I0(\d_out_reg[21]_0 [6]),
        .I1(\d_out_reg[21]_0 [7]),
        .O(\d_out_reg[20]_0 [3]));
  LUT2 #(
    .INIT(4'h9)) 
    fcw0_carry__3_i_2
       (.I0(\d_out_reg[21]_0 [5]),
        .I1(\d_out_reg[21]_0 [6]),
        .O(\d_out_reg[20]_0 [2]));
  LUT2 #(
    .INIT(4'h9)) 
    fcw0_carry__3_i_3
       (.I0(\d_out_reg[21]_0 [4]),
        .I1(\d_out_reg[21]_0 [5]),
        .O(\d_out_reg[20]_0 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    fcw0_carry__3_i_4
       (.I0(\d_out_reg[21]_0 [3]),
        .I1(\d_out_reg[21]_0 [4]),
        .O(\d_out_reg[20]_0 [0]));
  LUT2 #(
    .INIT(4'h9)) 
    fcw0_carry__4_i_1
       (.I0(d_out[22]),
        .I1(d_out[23]),
        .O(\d_out_reg[22]_0 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    fcw0_carry__4_i_2
       (.I0(\d_out_reg[21]_0 [7]),
        .I1(d_out[22]),
        .O(\d_out_reg[22]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \fcw_reg[0]_i_1 
       (.I0(d_out[0]),
        .I1(\ram_reg[3][2]_0 [0]),
        .I2(\ram_reg[3][2]_0 [1]),
        .O(D[0]));
  LUT4 #(
    .INIT(16'h8F80)) 
    \fcw_reg[10]_i_1 
       (.I0(\ram_reg[3][2]_0 [0]),
        .I1(fcw__0[8]),
        .I2(\ram_reg[3][2]_0 [1]),
        .I3(\d_out_reg[13]_0 [7]),
        .O(D[10]));
  LUT4 #(
    .INIT(16'h8F80)) 
    \fcw_reg[11]_i_1 
       (.I0(\ram_reg[3][2]_0 [0]),
        .I1(fcw__0[9]),
        .I2(\ram_reg[3][2]_0 [1]),
        .I3(\d_out_reg[13]_0 [8]),
        .O(D[11]));
  LUT4 #(
    .INIT(16'h8F80)) 
    \fcw_reg[12]_i_1 
       (.I0(\ram_reg[3][2]_0 [0]),
        .I1(fcw__0[10]),
        .I2(\ram_reg[3][2]_0 [1]),
        .I3(\d_out_reg[13]_0 [9]),
        .O(D[12]));
  LUT4 #(
    .INIT(16'h8F80)) 
    \fcw_reg[13]_i_1 
       (.I0(\ram_reg[3][2]_0 [0]),
        .I1(fcw__0[11]),
        .I2(\ram_reg[3][2]_0 [1]),
        .I3(\d_out_reg[13]_0 [10]),
        .O(D[13]));
  LUT4 #(
    .INIT(16'h8F80)) 
    \fcw_reg[14]_i_1 
       (.I0(\ram_reg[3][2]_0 [0]),
        .I1(fcw__0[12]),
        .I2(\ram_reg[3][2]_0 [1]),
        .I3(DI),
        .O(D[14]));
  LUT4 #(
    .INIT(16'h8F80)) 
    \fcw_reg[15]_i_1 
       (.I0(\ram_reg[3][2]_0 [0]),
        .I1(fcw__0[13]),
        .I2(\ram_reg[3][2]_0 [1]),
        .I3(\d_out_reg[21]_0 [1]),
        .O(D[15]));
  LUT4 #(
    .INIT(16'h8F80)) 
    \fcw_reg[16]_i_1 
       (.I0(\ram_reg[3][2]_0 [0]),
        .I1(fcw__0[14]),
        .I2(\ram_reg[3][2]_0 [1]),
        .I3(\d_out_reg[21]_0 [2]),
        .O(D[16]));
  LUT4 #(
    .INIT(16'h8F80)) 
    \fcw_reg[17]_i_1 
       (.I0(\ram_reg[3][2]_0 [0]),
        .I1(fcw__0[15]),
        .I2(\ram_reg[3][2]_0 [1]),
        .I3(\d_out_reg[21]_0 [3]),
        .O(D[17]));
  LUT4 #(
    .INIT(16'h8F80)) 
    \fcw_reg[18]_i_1 
       (.I0(\ram_reg[3][2]_0 [0]),
        .I1(fcw__0[16]),
        .I2(\ram_reg[3][2]_0 [1]),
        .I3(\d_out_reg[21]_0 [4]),
        .O(D[18]));
  LUT4 #(
    .INIT(16'h8F80)) 
    \fcw_reg[19]_i_1 
       (.I0(\ram_reg[3][2]_0 [0]),
        .I1(fcw__0[17]),
        .I2(\ram_reg[3][2]_0 [1]),
        .I3(\d_out_reg[21]_0 [5]),
        .O(D[19]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \fcw_reg[1]_i_1 
       (.I0(d_out[1]),
        .I1(\ram_reg[3][2]_0 [0]),
        .I2(\ram_reg[3][2]_0 [1]),
        .O(D[1]));
  LUT4 #(
    .INIT(16'h8F80)) 
    \fcw_reg[20]_i_1 
       (.I0(\ram_reg[3][2]_0 [0]),
        .I1(fcw__0[18]),
        .I2(\ram_reg[3][2]_0 [1]),
        .I3(\d_out_reg[21]_0 [6]),
        .O(D[20]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h8F80)) 
    \fcw_reg[21]_i_1 
       (.I0(\ram_reg[3][2]_0 [0]),
        .I1(fcw__0[19]),
        .I2(\ram_reg[3][2]_0 [1]),
        .I3(\d_out_reg[21]_0 [7]),
        .O(D[21]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h8F80)) 
    \fcw_reg[22]_i_1 
       (.I0(\ram_reg[3][2]_0 [0]),
        .I1(fcw__0[20]),
        .I2(\ram_reg[3][2]_0 [1]),
        .I3(d_out[22]),
        .O(D[22]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h8F80)) 
    \fcw_reg[23]_i_1 
       (.I0(\ram_reg[3][2]_0 [0]),
        .I1(fcw__0[21]),
        .I2(\ram_reg[3][2]_0 [1]),
        .I3(d_out[23]),
        .O(D[23]));
  LUT4 #(
    .INIT(16'h8F80)) 
    \fcw_reg[2]_i_1 
       (.I0(\ram_reg[3][2]_0 [0]),
        .I1(fcw__0[0]),
        .I2(\ram_reg[3][2]_0 [1]),
        .I3(\d_out_reg[21]_0 [0]),
        .O(D[2]));
  LUT4 #(
    .INIT(16'h8F80)) 
    \fcw_reg[3]_i_1 
       (.I0(\ram_reg[3][2]_0 [0]),
        .I1(fcw__0[1]),
        .I2(\ram_reg[3][2]_0 [1]),
        .I3(\d_out_reg[13]_0 [0]),
        .O(D[3]));
  LUT4 #(
    .INIT(16'h8F80)) 
    \fcw_reg[4]_i_1 
       (.I0(\ram_reg[3][2]_0 [0]),
        .I1(fcw__0[2]),
        .I2(\ram_reg[3][2]_0 [1]),
        .I3(\d_out_reg[13]_0 [1]),
        .O(D[4]));
  LUT4 #(
    .INIT(16'h8F80)) 
    \fcw_reg[5]_i_1 
       (.I0(\ram_reg[3][2]_0 [0]),
        .I1(fcw__0[3]),
        .I2(\ram_reg[3][2]_0 [1]),
        .I3(\d_out_reg[13]_0 [2]),
        .O(D[5]));
  LUT4 #(
    .INIT(16'h8F80)) 
    \fcw_reg[6]_i_1 
       (.I0(\ram_reg[3][2]_0 [0]),
        .I1(fcw__0[4]),
        .I2(\ram_reg[3][2]_0 [1]),
        .I3(\d_out_reg[13]_0 [3]),
        .O(D[6]));
  LUT4 #(
    .INIT(16'h8F80)) 
    \fcw_reg[7]_i_1 
       (.I0(\ram_reg[3][2]_0 [0]),
        .I1(fcw__0[5]),
        .I2(\ram_reg[3][2]_0 [1]),
        .I3(\d_out_reg[13]_0 [4]),
        .O(D[7]));
  LUT4 #(
    .INIT(16'h8F80)) 
    \fcw_reg[8]_i_1 
       (.I0(\ram_reg[3][2]_0 [0]),
        .I1(fcw__0[6]),
        .I2(\ram_reg[3][2]_0 [1]),
        .I3(\d_out_reg[13]_0 [5]),
        .O(D[8]));
  LUT4 #(
    .INIT(16'h8F80)) 
    \fcw_reg[9]_i_1 
       (.I0(\ram_reg[3][2]_0 [0]),
        .I1(fcw__0[7]),
        .I2(\ram_reg[3][2]_0 [1]),
        .I3(\d_out_reg[13]_0 [6]),
        .O(D[9]));
  LUT6 #(
    .INIT(64'h0000000001000000)) 
    \ram[0][23]_i_1 
       (.I0(note_reg[0]),
        .I1(note_reg[1]),
        .I2(\ram[0][23]_i_2_n_0 ),
        .I3(\ram_reg[0][0]_0 ),
        .I4(Q),
        .I5(\ram_reg[0][0]_1 ),
        .O(\ram[0][23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hBF)) 
    \ram[0][23]_i_2 
       (.I0(\buttons_pressed[3] ),
        .I1(\ram_reg[3][2]_0 [0]),
        .I2(\ram_reg[3][2]_0 [1]),
        .O(\ram[0][23]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000400000)) 
    \ram[1][23]_i_1 
       (.I0(\ram[0][23]_i_2_n_0 ),
        .I1(\ram_reg[0][0]_0 ),
        .I2(Q),
        .I3(\ram_reg[0][0]_1 ),
        .I4(note_reg[0]),
        .I5(note_reg[1]),
        .O(\ram[1][23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000400000)) 
    \ram[2][23]_i_1 
       (.I0(\ram[0][23]_i_2_n_0 ),
        .I1(\ram_reg[0][0]_0 ),
        .I2(Q),
        .I3(\ram_reg[0][0]_1 ),
        .I4(note_reg[1]),
        .I5(note_reg[0]),
        .O(\ram[2][23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0040000000000000)) 
    \ram[3][23]_i_1 
       (.I0(\ram[0][23]_i_2_n_0 ),
        .I1(\ram_reg[0][0]_0 ),
        .I2(Q),
        .I3(\ram_reg[0][0]_1 ),
        .I4(note_reg[0]),
        .I5(note_reg[1]),
        .O(ram));
  FDRE \ram_reg[0][0] 
       (.C(CLK),
        .CE(\ram[0][23]_i_1_n_0 ),
        .D(\ram_reg[3][23]_0 [0]),
        .Q(\ram_reg[0] [0]),
        .R(\buttons_pressed_BUFG[3] ));
  FDSE \ram_reg[0][10] 
       (.C(CLK),
        .CE(\ram[0][23]_i_1_n_0 ),
        .D(\ram_reg[3][23]_0 [10]),
        .Q(\ram_reg[0] [10]),
        .S(\buttons_pressed_BUFG[3] ));
  FDSE \ram_reg[0][11] 
       (.C(CLK),
        .CE(\ram[0][23]_i_1_n_0 ),
        .D(\ram_reg[3][23]_0 [11]),
        .Q(\ram_reg[0] [11]),
        .S(\buttons_pressed_BUFG[3] ));
  FDRE \ram_reg[0][12] 
       (.C(CLK),
        .CE(\ram[0][23]_i_1_n_0 ),
        .D(\ram_reg[3][23]_0 [12]),
        .Q(\ram_reg[0] [12]),
        .R(\buttons_pressed_BUFG[3] ));
  FDSE \ram_reg[0][13] 
       (.C(CLK),
        .CE(\ram[0][23]_i_1_n_0 ),
        .D(\ram_reg[3][23]_0 [13]),
        .Q(\ram_reg[0] [13]),
        .S(\buttons_pressed_BUFG[3] ));
  FDSE \ram_reg[0][14] 
       (.C(CLK),
        .CE(\ram[0][23]_i_1_n_0 ),
        .D(\ram_reg[3][23]_0 [14]),
        .Q(\ram_reg[0] [14]),
        .S(\buttons_pressed_BUFG[3] ));
  FDSE \ram_reg[0][15] 
       (.C(CLK),
        .CE(\ram[0][23]_i_1_n_0 ),
        .D(\ram_reg[3][23]_0 [15]),
        .Q(\ram_reg[0] [15]),
        .S(\buttons_pressed_BUFG[3] ));
  FDRE \ram_reg[0][16] 
       (.C(CLK),
        .CE(\ram[0][23]_i_1_n_0 ),
        .D(\ram_reg[3][23]_0 [16]),
        .Q(\ram_reg[0] [16]),
        .R(\buttons_pressed_BUFG[3] ));
  FDRE \ram_reg[0][17] 
       (.C(CLK),
        .CE(\ram[0][23]_i_1_n_0 ),
        .D(\ram_reg[3][23]_0 [17]),
        .Q(\ram_reg[0] [17]),
        .R(\buttons_pressed_BUFG[3] ));
  FDRE \ram_reg[0][18] 
       (.C(CLK),
        .CE(\ram[0][23]_i_1_n_0 ),
        .D(\ram_reg[3][23]_0 [18]),
        .Q(\ram_reg[0] [18]),
        .R(\buttons_pressed_BUFG[3] ));
  FDRE \ram_reg[0][19] 
       (.C(CLK),
        .CE(\ram[0][23]_i_1_n_0 ),
        .D(\ram_reg[3][23]_0 [19]),
        .Q(\ram_reg[0] [19]),
        .R(\buttons_pressed_BUFG[3] ));
  FDRE \ram_reg[0][1] 
       (.C(CLK),
        .CE(\ram[0][23]_i_1_n_0 ),
        .D(\ram_reg[3][23]_0 [1]),
        .Q(\ram_reg[0] [1]),
        .R(\buttons_pressed_BUFG[3] ));
  FDRE \ram_reg[0][20] 
       (.C(CLK),
        .CE(\ram[0][23]_i_1_n_0 ),
        .D(\ram_reg[3][23]_0 [20]),
        .Q(\ram_reg[0] [20]),
        .R(\buttons_pressed_BUFG[3] ));
  FDRE \ram_reg[0][21] 
       (.C(CLK),
        .CE(\ram[0][23]_i_1_n_0 ),
        .D(\ram_reg[3][23]_0 [21]),
        .Q(\ram_reg[0] [21]),
        .R(\buttons_pressed_BUFG[3] ));
  FDRE \ram_reg[0][22] 
       (.C(CLK),
        .CE(\ram[0][23]_i_1_n_0 ),
        .D(\ram_reg[3][23]_0 [22]),
        .Q(\ram_reg[0] [22]),
        .R(\buttons_pressed_BUFG[3] ));
  FDRE \ram_reg[0][23] 
       (.C(CLK),
        .CE(\ram[0][23]_i_1_n_0 ),
        .D(\ram_reg[3][23]_0 [23]),
        .Q(\ram_reg[0] [23]),
        .R(\buttons_pressed_BUFG[3] ));
  FDSE \ram_reg[0][2] 
       (.C(CLK),
        .CE(\ram[0][23]_i_1_n_0 ),
        .D(\ram_reg[3][23]_0 [2]),
        .Q(\ram_reg[0] [2]),
        .S(\buttons_pressed_BUFG[3] ));
  FDSE \ram_reg[0][3] 
       (.C(CLK),
        .CE(\ram[0][23]_i_1_n_0 ),
        .D(\ram_reg[3][23]_0 [3]),
        .Q(\ram_reg[0] [3]),
        .S(\buttons_pressed_BUFG[3] ));
  FDSE \ram_reg[0][4] 
       (.C(CLK),
        .CE(\ram[0][23]_i_1_n_0 ),
        .D(\ram_reg[3][23]_0 [4]),
        .Q(\ram_reg[0] [4]),
        .S(\buttons_pressed_BUFG[3] ));
  FDRE \ram_reg[0][5] 
       (.C(CLK),
        .CE(\ram[0][23]_i_1_n_0 ),
        .D(\ram_reg[3][23]_0 [5]),
        .Q(\ram_reg[0] [5]),
        .R(\buttons_pressed_BUFG[3] ));
  FDSE \ram_reg[0][6] 
       (.C(CLK),
        .CE(\ram[0][23]_i_1_n_0 ),
        .D(\ram_reg[3][23]_0 [6]),
        .Q(\ram_reg[0] [6]),
        .S(\buttons_pressed_BUFG[3] ));
  FDRE \ram_reg[0][7] 
       (.C(CLK),
        .CE(\ram[0][23]_i_1_n_0 ),
        .D(\ram_reg[3][23]_0 [7]),
        .Q(\ram_reg[0] [7]),
        .R(\buttons_pressed_BUFG[3] ));
  FDRE \ram_reg[0][8] 
       (.C(CLK),
        .CE(\ram[0][23]_i_1_n_0 ),
        .D(\ram_reg[3][23]_0 [8]),
        .Q(\ram_reg[0] [8]),
        .R(\buttons_pressed_BUFG[3] ));
  FDRE \ram_reg[0][9] 
       (.C(CLK),
        .CE(\ram[0][23]_i_1_n_0 ),
        .D(\ram_reg[3][23]_0 [9]),
        .Q(\ram_reg[0] [9]),
        .R(\buttons_pressed_BUFG[3] ));
  FDRE \ram_reg[1][0] 
       (.C(CLK),
        .CE(\ram[1][23]_i_1_n_0 ),
        .D(\ram_reg[3][23]_0 [0]),
        .Q(\ram_reg[1] [0]),
        .R(\buttons_pressed_BUFG[3] ));
  FDRE \ram_reg[1][10] 
       (.C(CLK),
        .CE(\ram[1][23]_i_1_n_0 ),
        .D(\ram_reg[3][23]_0 [10]),
        .Q(\ram_reg[1] [10]),
        .R(\buttons_pressed_BUFG[3] ));
  FDSE \ram_reg[1][11] 
       (.C(CLK),
        .CE(\ram[1][23]_i_1_n_0 ),
        .D(\ram_reg[3][23]_0 [11]),
        .Q(\ram_reg[1] [11]),
        .S(\buttons_pressed_BUFG[3] ));
  FDRE \ram_reg[1][12] 
       (.C(CLK),
        .CE(\ram[1][23]_i_1_n_0 ),
        .D(\ram_reg[3][23]_0 [12]),
        .Q(\ram_reg[1] [12]),
        .R(\buttons_pressed_BUFG[3] ));
  FDRE \ram_reg[1][13] 
       (.C(CLK),
        .CE(\ram[1][23]_i_1_n_0 ),
        .D(\ram_reg[3][23]_0 [13]),
        .Q(\ram_reg[1] [13]),
        .R(\buttons_pressed_BUFG[3] ));
  FDRE \ram_reg[1][14] 
       (.C(CLK),
        .CE(\ram[1][23]_i_1_n_0 ),
        .D(\ram_reg[3][23]_0 [14]),
        .Q(\ram_reg[1] [14]),
        .R(\buttons_pressed_BUFG[3] ));
  FDRE \ram_reg[1][15] 
       (.C(CLK),
        .CE(\ram[1][23]_i_1_n_0 ),
        .D(\ram_reg[3][23]_0 [15]),
        .Q(\ram_reg[1] [15]),
        .R(\buttons_pressed_BUFG[3] ));
  FDSE \ram_reg[1][16] 
       (.C(CLK),
        .CE(\ram[1][23]_i_1_n_0 ),
        .D(\ram_reg[3][23]_0 [16]),
        .Q(\ram_reg[1] [16]),
        .S(\buttons_pressed_BUFG[3] ));
  FDRE \ram_reg[1][17] 
       (.C(CLK),
        .CE(\ram[1][23]_i_1_n_0 ),
        .D(\ram_reg[3][23]_0 [17]),
        .Q(\ram_reg[1] [17]),
        .R(\buttons_pressed_BUFG[3] ));
  FDRE \ram_reg[1][18] 
       (.C(CLK),
        .CE(\ram[1][23]_i_1_n_0 ),
        .D(\ram_reg[3][23]_0 [18]),
        .Q(\ram_reg[1] [18]),
        .R(\buttons_pressed_BUFG[3] ));
  FDRE \ram_reg[1][19] 
       (.C(CLK),
        .CE(\ram[1][23]_i_1_n_0 ),
        .D(\ram_reg[3][23]_0 [19]),
        .Q(\ram_reg[1] [19]),
        .R(\buttons_pressed_BUFG[3] ));
  FDSE \ram_reg[1][1] 
       (.C(CLK),
        .CE(\ram[1][23]_i_1_n_0 ),
        .D(\ram_reg[3][23]_0 [1]),
        .Q(\ram_reg[1] [1]),
        .S(\buttons_pressed_BUFG[3] ));
  FDRE \ram_reg[1][20] 
       (.C(CLK),
        .CE(\ram[1][23]_i_1_n_0 ),
        .D(\ram_reg[3][23]_0 [20]),
        .Q(\ram_reg[1] [20]),
        .R(\buttons_pressed_BUFG[3] ));
  FDRE \ram_reg[1][21] 
       (.C(CLK),
        .CE(\ram[1][23]_i_1_n_0 ),
        .D(\ram_reg[3][23]_0 [21]),
        .Q(\ram_reg[1] [21]),
        .R(\buttons_pressed_BUFG[3] ));
  FDRE \ram_reg[1][22] 
       (.C(CLK),
        .CE(\ram[1][23]_i_1_n_0 ),
        .D(\ram_reg[3][23]_0 [22]),
        .Q(\ram_reg[1] [22]),
        .R(\buttons_pressed_BUFG[3] ));
  FDRE \ram_reg[1][23] 
       (.C(CLK),
        .CE(\ram[1][23]_i_1_n_0 ),
        .D(\ram_reg[3][23]_0 [23]),
        .Q(\ram_reg[1] [23]),
        .R(\buttons_pressed_BUFG[3] ));
  FDSE \ram_reg[1][2] 
       (.C(CLK),
        .CE(\ram[1][23]_i_1_n_0 ),
        .D(\ram_reg[3][23]_0 [2]),
        .Q(\ram_reg[1] [2]),
        .S(\buttons_pressed_BUFG[3] ));
  FDSE \ram_reg[1][3] 
       (.C(CLK),
        .CE(\ram[1][23]_i_1_n_0 ),
        .D(\ram_reg[3][23]_0 [3]),
        .Q(\ram_reg[1] [3]),
        .S(\buttons_pressed_BUFG[3] ));
  FDSE \ram_reg[1][4] 
       (.C(CLK),
        .CE(\ram[1][23]_i_1_n_0 ),
        .D(\ram_reg[3][23]_0 [4]),
        .Q(\ram_reg[1] [4]),
        .S(\buttons_pressed_BUFG[3] ));
  FDRE \ram_reg[1][5] 
       (.C(CLK),
        .CE(\ram[1][23]_i_1_n_0 ),
        .D(\ram_reg[3][23]_0 [5]),
        .Q(\ram_reg[1] [5]),
        .R(\buttons_pressed_BUFG[3] ));
  FDSE \ram_reg[1][6] 
       (.C(CLK),
        .CE(\ram[1][23]_i_1_n_0 ),
        .D(\ram_reg[3][23]_0 [6]),
        .Q(\ram_reg[1] [6]),
        .S(\buttons_pressed_BUFG[3] ));
  FDRE \ram_reg[1][7] 
       (.C(CLK),
        .CE(\ram[1][23]_i_1_n_0 ),
        .D(\ram_reg[3][23]_0 [7]),
        .Q(\ram_reg[1] [7]),
        .R(\buttons_pressed_BUFG[3] ));
  FDSE \ram_reg[1][8] 
       (.C(CLK),
        .CE(\ram[1][23]_i_1_n_0 ),
        .D(\ram_reg[3][23]_0 [8]),
        .Q(\ram_reg[1] [8]),
        .S(\buttons_pressed_BUFG[3] ));
  FDRE \ram_reg[1][9] 
       (.C(CLK),
        .CE(\ram[1][23]_i_1_n_0 ),
        .D(\ram_reg[3][23]_0 [9]),
        .Q(\ram_reg[1] [9]),
        .R(\buttons_pressed_BUFG[3] ));
  FDRE \ram_reg[2][0] 
       (.C(CLK),
        .CE(\ram[2][23]_i_1_n_0 ),
        .D(\ram_reg[3][23]_0 [0]),
        .Q(\ram_reg[2] [0]),
        .R(\buttons_pressed_BUFG[3] ));
  FDRE \ram_reg[2][10] 
       (.C(CLK),
        .CE(\ram[2][23]_i_1_n_0 ),
        .D(\ram_reg[3][23]_0 [10]),
        .Q(\ram_reg[2] [10]),
        .R(\buttons_pressed_BUFG[3] ));
  FDSE \ram_reg[2][11] 
       (.C(CLK),
        .CE(\ram[2][23]_i_1_n_0 ),
        .D(\ram_reg[3][23]_0 [11]),
        .Q(\ram_reg[2] [11]),
        .S(\buttons_pressed_BUFG[3] ));
  FDSE \ram_reg[2][12] 
       (.C(CLK),
        .CE(\ram[2][23]_i_1_n_0 ),
        .D(\ram_reg[3][23]_0 [12]),
        .Q(\ram_reg[2] [12]),
        .S(\buttons_pressed_BUFG[3] ));
  FDRE \ram_reg[2][13] 
       (.C(CLK),
        .CE(\ram[2][23]_i_1_n_0 ),
        .D(\ram_reg[3][23]_0 [13]),
        .Q(\ram_reg[2] [13]),
        .R(\buttons_pressed_BUFG[3] ));
  FDRE \ram_reg[2][14] 
       (.C(CLK),
        .CE(\ram[2][23]_i_1_n_0 ),
        .D(\ram_reg[3][23]_0 [14]),
        .Q(\ram_reg[2] [14]),
        .R(\buttons_pressed_BUFG[3] ));
  FDRE \ram_reg[2][15] 
       (.C(CLK),
        .CE(\ram[2][23]_i_1_n_0 ),
        .D(\ram_reg[3][23]_0 [15]),
        .Q(\ram_reg[2] [15]),
        .R(\buttons_pressed_BUFG[3] ));
  FDSE \ram_reg[2][16] 
       (.C(CLK),
        .CE(\ram[2][23]_i_1_n_0 ),
        .D(\ram_reg[3][23]_0 [16]),
        .Q(\ram_reg[2] [16]),
        .S(\buttons_pressed_BUFG[3] ));
  FDRE \ram_reg[2][17] 
       (.C(CLK),
        .CE(\ram[2][23]_i_1_n_0 ),
        .D(\ram_reg[3][23]_0 [17]),
        .Q(\ram_reg[2] [17]),
        .R(\buttons_pressed_BUFG[3] ));
  FDRE \ram_reg[2][18] 
       (.C(CLK),
        .CE(\ram[2][23]_i_1_n_0 ),
        .D(\ram_reg[3][23]_0 [18]),
        .Q(\ram_reg[2] [18]),
        .R(\buttons_pressed_BUFG[3] ));
  FDRE \ram_reg[2][19] 
       (.C(CLK),
        .CE(\ram[2][23]_i_1_n_0 ),
        .D(\ram_reg[3][23]_0 [19]),
        .Q(\ram_reg[2] [19]),
        .R(\buttons_pressed_BUFG[3] ));
  FDSE \ram_reg[2][1] 
       (.C(CLK),
        .CE(\ram[2][23]_i_1_n_0 ),
        .D(\ram_reg[3][23]_0 [1]),
        .Q(\ram_reg[2] [1]),
        .S(\buttons_pressed_BUFG[3] ));
  FDRE \ram_reg[2][20] 
       (.C(CLK),
        .CE(\ram[2][23]_i_1_n_0 ),
        .D(\ram_reg[3][23]_0 [20]),
        .Q(\ram_reg[2] [20]),
        .R(\buttons_pressed_BUFG[3] ));
  FDRE \ram_reg[2][21] 
       (.C(CLK),
        .CE(\ram[2][23]_i_1_n_0 ),
        .D(\ram_reg[3][23]_0 [21]),
        .Q(\ram_reg[2] [21]),
        .R(\buttons_pressed_BUFG[3] ));
  FDRE \ram_reg[2][22] 
       (.C(CLK),
        .CE(\ram[2][23]_i_1_n_0 ),
        .D(\ram_reg[3][23]_0 [22]),
        .Q(\ram_reg[2] [22]),
        .R(\buttons_pressed_BUFG[3] ));
  FDRE \ram_reg[2][23] 
       (.C(CLK),
        .CE(\ram[2][23]_i_1_n_0 ),
        .D(\ram_reg[3][23]_0 [23]),
        .Q(\ram_reg[2] [23]),
        .R(\buttons_pressed_BUFG[3] ));
  FDRE \ram_reg[2][2] 
       (.C(CLK),
        .CE(\ram[2][23]_i_1_n_0 ),
        .D(\ram_reg[3][23]_0 [2]),
        .Q(\ram_reg[2] [2]),
        .R(\buttons_pressed_BUFG[3] ));
  FDRE \ram_reg[2][3] 
       (.C(CLK),
        .CE(\ram[2][23]_i_1_n_0 ),
        .D(\ram_reg[3][23]_0 [3]),
        .Q(\ram_reg[2] [3]),
        .R(\buttons_pressed_BUFG[3] ));
  FDSE \ram_reg[2][4] 
       (.C(CLK),
        .CE(\ram[2][23]_i_1_n_0 ),
        .D(\ram_reg[3][23]_0 [4]),
        .Q(\ram_reg[2] [4]),
        .S(\buttons_pressed_BUFG[3] ));
  FDSE \ram_reg[2][5] 
       (.C(CLK),
        .CE(\ram[2][23]_i_1_n_0 ),
        .D(\ram_reg[3][23]_0 [5]),
        .Q(\ram_reg[2] [5]),
        .S(\buttons_pressed_BUFG[3] ));
  FDSE \ram_reg[2][6] 
       (.C(CLK),
        .CE(\ram[2][23]_i_1_n_0 ),
        .D(\ram_reg[3][23]_0 [6]),
        .Q(\ram_reg[2] [6]),
        .S(\buttons_pressed_BUFG[3] ));
  FDSE \ram_reg[2][7] 
       (.C(CLK),
        .CE(\ram[2][23]_i_1_n_0 ),
        .D(\ram_reg[3][23]_0 [7]),
        .Q(\ram_reg[2] [7]),
        .S(\buttons_pressed_BUFG[3] ));
  FDRE \ram_reg[2][8] 
       (.C(CLK),
        .CE(\ram[2][23]_i_1_n_0 ),
        .D(\ram_reg[3][23]_0 [8]),
        .Q(\ram_reg[2] [8]),
        .R(\buttons_pressed_BUFG[3] ));
  FDRE \ram_reg[2][9] 
       (.C(CLK),
        .CE(\ram[2][23]_i_1_n_0 ),
        .D(\ram_reg[3][23]_0 [9]),
        .Q(\ram_reg[2] [9]),
        .R(\buttons_pressed_BUFG[3] ));
  FDSE \ram_reg[3][0] 
       (.C(CLK),
        .CE(ram),
        .D(\ram_reg[3][23]_0 [0]),
        .Q(\ram_reg[3] [0]),
        .S(\buttons_pressed_BUFG[3] ));
  FDRE \ram_reg[3][10] 
       (.C(CLK),
        .CE(ram),
        .D(\ram_reg[3][23]_0 [10]),
        .Q(\ram_reg[3] [10]),
        .R(\buttons_pressed_BUFG[3] ));
  FDSE \ram_reg[3][11] 
       (.C(CLK),
        .CE(ram),
        .D(\ram_reg[3][23]_0 [11]),
        .Q(\ram_reg[3] [11]),
        .S(\buttons_pressed_BUFG[3] ));
  FDSE \ram_reg[3][12] 
       (.C(CLK),
        .CE(ram),
        .D(\ram_reg[3][23]_0 [12]),
        .Q(\ram_reg[3] [12]),
        .S(\buttons_pressed_BUFG[3] ));
  FDSE \ram_reg[3][13] 
       (.C(CLK),
        .CE(ram),
        .D(\ram_reg[3][23]_0 [13]),
        .Q(\ram_reg[3] [13]),
        .S(\buttons_pressed_BUFG[3] ));
  FDRE \ram_reg[3][14] 
       (.C(CLK),
        .CE(ram),
        .D(\ram_reg[3][23]_0 [14]),
        .Q(\ram_reg[3] [14]),
        .R(\buttons_pressed_BUFG[3] ));
  FDRE \ram_reg[3][15] 
       (.C(CLK),
        .CE(ram),
        .D(\ram_reg[3][23]_0 [15]),
        .Q(\ram_reg[3] [15]),
        .R(\buttons_pressed_BUFG[3] ));
  FDSE \ram_reg[3][16] 
       (.C(CLK),
        .CE(ram),
        .D(\ram_reg[3][23]_0 [16]),
        .Q(\ram_reg[3] [16]),
        .S(\buttons_pressed_BUFG[3] ));
  FDRE \ram_reg[3][17] 
       (.C(CLK),
        .CE(ram),
        .D(\ram_reg[3][23]_0 [17]),
        .Q(\ram_reg[3] [17]),
        .R(\buttons_pressed_BUFG[3] ));
  FDRE \ram_reg[3][18] 
       (.C(CLK),
        .CE(ram),
        .D(\ram_reg[3][23]_0 [18]),
        .Q(\ram_reg[3] [18]),
        .R(\buttons_pressed_BUFG[3] ));
  FDRE \ram_reg[3][19] 
       (.C(CLK),
        .CE(ram),
        .D(\ram_reg[3][23]_0 [19]),
        .Q(\ram_reg[3] [19]),
        .R(\buttons_pressed_BUFG[3] ));
  FDSE \ram_reg[3][1] 
       (.C(CLK),
        .CE(ram),
        .D(\ram_reg[3][23]_0 [1]),
        .Q(\ram_reg[3] [1]),
        .S(\buttons_pressed_BUFG[3] ));
  FDRE \ram_reg[3][20] 
       (.C(CLK),
        .CE(ram),
        .D(\ram_reg[3][23]_0 [20]),
        .Q(\ram_reg[3] [20]),
        .R(\buttons_pressed_BUFG[3] ));
  FDRE \ram_reg[3][21] 
       (.C(CLK),
        .CE(ram),
        .D(\ram_reg[3][23]_0 [21]),
        .Q(\ram_reg[3] [21]),
        .R(\buttons_pressed_BUFG[3] ));
  FDRE \ram_reg[3][22] 
       (.C(CLK),
        .CE(ram),
        .D(\ram_reg[3][23]_0 [22]),
        .Q(\ram_reg[3] [22]),
        .R(\buttons_pressed_BUFG[3] ));
  FDRE \ram_reg[3][23] 
       (.C(CLK),
        .CE(ram),
        .D(\ram_reg[3][23]_0 [23]),
        .Q(\ram_reg[3] [23]),
        .R(\buttons_pressed_BUFG[3] ));
  FDRE \ram_reg[3][2] 
       (.C(CLK),
        .CE(ram),
        .D(\ram_reg[3][23]_0 [2]),
        .Q(\ram_reg[3] [2]),
        .R(\buttons_pressed_BUFG[3] ));
  FDRE \ram_reg[3][3] 
       (.C(CLK),
        .CE(ram),
        .D(\ram_reg[3][23]_0 [3]),
        .Q(\ram_reg[3] [3]),
        .R(\buttons_pressed_BUFG[3] ));
  FDSE \ram_reg[3][4] 
       (.C(CLK),
        .CE(ram),
        .D(\ram_reg[3][23]_0 [4]),
        .Q(\ram_reg[3] [4]),
        .S(\buttons_pressed_BUFG[3] ));
  FDRE \ram_reg[3][5] 
       (.C(CLK),
        .CE(ram),
        .D(\ram_reg[3][23]_0 [5]),
        .Q(\ram_reg[3] [5]),
        .R(\buttons_pressed_BUFG[3] ));
  FDSE \ram_reg[3][6] 
       (.C(CLK),
        .CE(ram),
        .D(\ram_reg[3][23]_0 [6]),
        .Q(\ram_reg[3] [6]),
        .S(\buttons_pressed_BUFG[3] ));
  FDRE \ram_reg[3][7] 
       (.C(CLK),
        .CE(ram),
        .D(\ram_reg[3][23]_0 [7]),
        .Q(\ram_reg[3] [7]),
        .R(\buttons_pressed_BUFG[3] ));
  FDSE \ram_reg[3][8] 
       (.C(CLK),
        .CE(ram),
        .D(\ram_reg[3][23]_0 [8]),
        .Q(\ram_reg[3] [8]),
        .S(\buttons_pressed_BUFG[3] ));
  FDSE \ram_reg[3][9] 
       (.C(CLK),
        .CE(ram),
        .D(\ram_reg[3][23]_0 [9]),
        .Q(\ram_reg[3] [9]),
        .S(\buttons_pressed_BUFG[3] ));
endmodule

module fsm
   (\d_out_reg[14] ,
    LEDS_OBUF,
    O,
    \curr_state_reg[0]_0 ,
    \phase_accumulator_reg[7] ,
    \phase_accumulator_reg[11] ,
    \phase_accumulator_reg[15] ,
    \phase_accumulator_reg[19] ,
    \phase_accumulator_reg[23] ,
    S,
    \fcw_reg[6]_i_1 ,
    DI,
    \fcw_reg[10]_i_1 ,
    \fcw_reg[14]_i_1 ,
    \fcw_reg[14]_i_1_0 ,
    \ram_reg[0][0] ,
    Q,
    \ram_reg[0][0]_0 ,
    \buttons_pressed[3] ,
    \buttons_pressed_BUFG[3] ,
    sq_wave_leds,
    \phase_accumulator_reg[23]_0 ,
    phase_accumulator_reg,
    D,
    CLK,
    E);
  output [11:0]\d_out_reg[14] ;
  output [5:0]LEDS_OBUF;
  output [3:0]O;
  output [23:0]\curr_state_reg[0]_0 ;
  output [3:0]\phase_accumulator_reg[7] ;
  output [3:0]\phase_accumulator_reg[11] ;
  output [3:0]\phase_accumulator_reg[15] ;
  output [3:0]\phase_accumulator_reg[19] ;
  output [3:0]\phase_accumulator_reg[23] ;
  input [2:0]S;
  input [3:0]\fcw_reg[6]_i_1 ;
  input [0:0]DI;
  input [3:0]\fcw_reg[10]_i_1 ;
  input [0:0]\fcw_reg[14]_i_1 ;
  input [0:0]\fcw_reg[14]_i_1_0 ;
  input \ram_reg[0][0] ;
  input [0:0]Q;
  input \ram_reg[0][0]_0 ;
  input \buttons_pressed[3] ;
  input \buttons_pressed_BUFG[3] ;
  input [0:0]sq_wave_leds;
  input [0:0]\phase_accumulator_reg[23]_0 ;
  input [22:0]phase_accumulator_reg;
  input [1:0]D;
  input CLK;
  input [0:0]E;

  wire \<const0> ;
  wire \<const1> ;
  wire CLK;
  wire [1:0]D;
  wire [0:0]DI;
  wire [0:0]E;
  wire GND_2;
  wire [5:0]LEDS_OBUF;
  wire [3:0]O;
  wire [0:0]Q;
  wire [2:0]S;
  wire VCC_2;
  wire \buttons_pressed[3] ;
  wire \buttons_pressed_BUFG[3] ;
  wire [26:0]counter;
  wire counter0_carry__0_n_0;
  wire counter0_carry__0_n_1;
  wire counter0_carry__0_n_2;
  wire counter0_carry__0_n_3;
  wire counter0_carry__0_n_4;
  wire counter0_carry__0_n_5;
  wire counter0_carry__0_n_6;
  wire counter0_carry__0_n_7;
  wire counter0_carry__1_n_0;
  wire counter0_carry__1_n_1;
  wire counter0_carry__1_n_2;
  wire counter0_carry__1_n_3;
  wire counter0_carry__1_n_4;
  wire counter0_carry__1_n_5;
  wire counter0_carry__1_n_6;
  wire counter0_carry__1_n_7;
  wire counter0_carry__2_n_0;
  wire counter0_carry__2_n_1;
  wire counter0_carry__2_n_2;
  wire counter0_carry__2_n_3;
  wire counter0_carry__2_n_4;
  wire counter0_carry__2_n_5;
  wire counter0_carry__2_n_6;
  wire counter0_carry__2_n_7;
  wire counter0_carry__3_n_0;
  wire counter0_carry__3_n_1;
  wire counter0_carry__3_n_2;
  wire counter0_carry__3_n_3;
  wire counter0_carry__3_n_4;
  wire counter0_carry__3_n_5;
  wire counter0_carry__3_n_6;
  wire counter0_carry__3_n_7;
  wire counter0_carry__4_n_0;
  wire counter0_carry__4_n_1;
  wire counter0_carry__4_n_2;
  wire counter0_carry__4_n_3;
  wire counter0_carry__4_n_4;
  wire counter0_carry__4_n_5;
  wire counter0_carry__4_n_6;
  wire counter0_carry__4_n_7;
  wire counter0_carry__5_n_3;
  wire counter0_carry__5_n_6;
  wire counter0_carry__5_n_7;
  wire counter0_carry_n_0;
  wire counter0_carry_n_1;
  wire counter0_carry_n_2;
  wire counter0_carry_n_3;
  wire counter0_carry_n_4;
  wire counter0_carry_n_5;
  wire counter0_carry_n_6;
  wire counter0_carry_n_7;
  wire \counter[26]_i_3_n_0 ;
  wire \counter[26]_i_4_n_0 ;
  wire \counter[26]_i_5_n_0 ;
  wire \counter[26]_i_6_n_0 ;
  wire \counter[26]_i_7_n_0 ;
  wire \counter[26]_i_8_n_0 ;
  wire \counter[26]_i_9_n_0 ;
  wire [26:0]counter_0;
  wire [23:0]\curr_state_reg[0]_0 ;
  wire [21:2]d_out;
  wire [11:0]\d_out_reg[14] ;
  wire fcw0_carry__0_n_0;
  wire fcw0_carry__0_n_1;
  wire fcw0_carry__0_n_2;
  wire fcw0_carry__0_n_3;
  wire fcw0_carry__1_n_0;
  wire fcw0_carry__1_n_1;
  wire fcw0_carry__1_n_2;
  wire fcw0_carry__1_n_3;
  wire fcw0_carry__2_n_0;
  wire fcw0_carry__2_n_1;
  wire fcw0_carry__2_n_2;
  wire fcw0_carry__2_n_3;
  wire fcw0_carry__3_n_0;
  wire fcw0_carry__3_n_1;
  wire fcw0_carry__3_n_2;
  wire fcw0_carry__3_n_3;
  wire fcw0_carry__4_n_3;
  wire fcw0_carry_n_0;
  wire fcw0_carry_n_1;
  wire fcw0_carry_n_2;
  wire fcw0_carry_n_3;
  wire [23:2]fcw__0;
  wire [3:0]\fcw_reg[10]_i_1 ;
  wire [0:0]\fcw_reg[14]_i_1 ;
  wire [0:0]\fcw_reg[14]_i_1_0 ;
  wire [3:0]\fcw_reg[6]_i_1 ;
  wire \note[0]_i_1_n_0 ;
  wire \note[1]_i_1_n_0 ;
  wire [1:0]note_reg;
  wire notes_n_0;
  wire notes_n_1;
  wire notes_n_10;
  wire notes_n_11;
  wire notes_n_12;
  wire notes_n_13;
  wire notes_n_14;
  wire notes_n_15;
  wire notes_n_16;
  wire notes_n_17;
  wire notes_n_18;
  wire notes_n_19;
  wire notes_n_2;
  wire notes_n_20;
  wire notes_n_21;
  wire notes_n_22;
  wire notes_n_23;
  wire notes_n_3;
  wire notes_n_4;
  wire notes_n_44;
  wire notes_n_45;
  wire notes_n_46;
  wire notes_n_47;
  wire notes_n_48;
  wire notes_n_49;
  wire notes_n_5;
  wire notes_n_50;
  wire notes_n_51;
  wire notes_n_52;
  wire notes_n_6;
  wire notes_n_7;
  wire notes_n_8;
  wire notes_n_9;
  wire \phase_accumulator[0]_i_2_n_0 ;
  wire \phase_accumulator[0]_i_3_n_0 ;
  wire \phase_accumulator[0]_i_4_n_0 ;
  wire \phase_accumulator[0]_i_5_n_0 ;
  wire \phase_accumulator[12]_i_2_n_0 ;
  wire \phase_accumulator[12]_i_3_n_0 ;
  wire \phase_accumulator[12]_i_4_n_0 ;
  wire \phase_accumulator[12]_i_5_n_0 ;
  wire \phase_accumulator[16]_i_2_n_0 ;
  wire \phase_accumulator[16]_i_3_n_0 ;
  wire \phase_accumulator[16]_i_4_n_0 ;
  wire \phase_accumulator[16]_i_5_n_0 ;
  wire \phase_accumulator[20]_i_3_n_0 ;
  wire \phase_accumulator[20]_i_4_n_0 ;
  wire \phase_accumulator[20]_i_5_n_0 ;
  wire \phase_accumulator[4]_i_2_n_0 ;
  wire \phase_accumulator[4]_i_3_n_0 ;
  wire \phase_accumulator[4]_i_4_n_0 ;
  wire \phase_accumulator[4]_i_5_n_0 ;
  wire \phase_accumulator[8]_i_2_n_0 ;
  wire \phase_accumulator[8]_i_3_n_0 ;
  wire \phase_accumulator[8]_i_4_n_0 ;
  wire \phase_accumulator[8]_i_5_n_0 ;
  wire [22:0]phase_accumulator_reg;
  wire \phase_accumulator_reg[0]_i_1_n_0 ;
  wire \phase_accumulator_reg[0]_i_1_n_1 ;
  wire \phase_accumulator_reg[0]_i_1_n_2 ;
  wire \phase_accumulator_reg[0]_i_1_n_3 ;
  wire [3:0]\phase_accumulator_reg[11] ;
  wire \phase_accumulator_reg[12]_i_1_n_0 ;
  wire \phase_accumulator_reg[12]_i_1_n_1 ;
  wire \phase_accumulator_reg[12]_i_1_n_2 ;
  wire \phase_accumulator_reg[12]_i_1_n_3 ;
  wire [3:0]\phase_accumulator_reg[15] ;
  wire \phase_accumulator_reg[16]_i_1_n_0 ;
  wire \phase_accumulator_reg[16]_i_1_n_1 ;
  wire \phase_accumulator_reg[16]_i_1_n_2 ;
  wire \phase_accumulator_reg[16]_i_1_n_3 ;
  wire [3:0]\phase_accumulator_reg[19] ;
  wire \phase_accumulator_reg[20]_i_1_n_1 ;
  wire \phase_accumulator_reg[20]_i_1_n_2 ;
  wire \phase_accumulator_reg[20]_i_1_n_3 ;
  wire [3:0]\phase_accumulator_reg[23] ;
  wire [0:0]\phase_accumulator_reg[23]_0 ;
  wire \phase_accumulator_reg[4]_i_1_n_0 ;
  wire \phase_accumulator_reg[4]_i_1_n_1 ;
  wire \phase_accumulator_reg[4]_i_1_n_2 ;
  wire \phase_accumulator_reg[4]_i_1_n_3 ;
  wire [3:0]\phase_accumulator_reg[7] ;
  wire \phase_accumulator_reg[8]_i_1_n_0 ;
  wire \phase_accumulator_reg[8]_i_1_n_1 ;
  wire \phase_accumulator_reg[8]_i_1_n_2 ;
  wire \phase_accumulator_reg[8]_i_1_n_3 ;
  wire \ram_reg[0][0] ;
  wire \ram_reg[0][0]_0 ;
  wire [0:0]sq_wave_leds;

  GND GND
       (.G(\<const0> ));
  GND GND_1
       (.G(GND_2));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'h1F10)) 
    \LEDS_OBUF[0]_inst_i_1 
       (.I0(note_reg[1]),
        .I1(note_reg[0]),
        .I2(Q),
        .I3(sq_wave_leds),
        .O(LEDS_OBUF[0]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \LEDS_OBUF[1]_inst_i_1 
       (.I0(Q),
        .I1(note_reg[0]),
        .I2(note_reg[1]),
        .O(LEDS_OBUF[1]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \LEDS_OBUF[2]_inst_i_1 
       (.I0(Q),
        .I1(note_reg[1]),
        .I2(note_reg[0]),
        .O(LEDS_OBUF[2]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \LEDS_OBUF[3]_inst_i_1 
       (.I0(Q),
        .I1(note_reg[0]),
        .I2(note_reg[1]),
        .O(LEDS_OBUF[3]));
  VCC VCC
       (.P(\<const1> ));
  VCC VCC_1
       (.P(VCC_2));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry
       (.CI(\<const0> ),
        .CO({counter0_carry_n_0,counter0_carry_n_1,counter0_carry_n_2,counter0_carry_n_3}),
        .CYINIT(counter[0]),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({counter0_carry_n_4,counter0_carry_n_5,counter0_carry_n_6,counter0_carry_n_7}),
        .S(counter[4:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry__0
       (.CI(counter0_carry_n_0),
        .CO({counter0_carry__0_n_0,counter0_carry__0_n_1,counter0_carry__0_n_2,counter0_carry__0_n_3}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({counter0_carry__0_n_4,counter0_carry__0_n_5,counter0_carry__0_n_6,counter0_carry__0_n_7}),
        .S(counter[8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry__1
       (.CI(counter0_carry__0_n_0),
        .CO({counter0_carry__1_n_0,counter0_carry__1_n_1,counter0_carry__1_n_2,counter0_carry__1_n_3}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({counter0_carry__1_n_4,counter0_carry__1_n_5,counter0_carry__1_n_6,counter0_carry__1_n_7}),
        .S(counter[12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry__2
       (.CI(counter0_carry__1_n_0),
        .CO({counter0_carry__2_n_0,counter0_carry__2_n_1,counter0_carry__2_n_2,counter0_carry__2_n_3}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({counter0_carry__2_n_4,counter0_carry__2_n_5,counter0_carry__2_n_6,counter0_carry__2_n_7}),
        .S(counter[16:13]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry__3
       (.CI(counter0_carry__2_n_0),
        .CO({counter0_carry__3_n_0,counter0_carry__3_n_1,counter0_carry__3_n_2,counter0_carry__3_n_3}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({counter0_carry__3_n_4,counter0_carry__3_n_5,counter0_carry__3_n_6,counter0_carry__3_n_7}),
        .S(counter[20:17]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry__4
       (.CI(counter0_carry__3_n_0),
        .CO({counter0_carry__4_n_0,counter0_carry__4_n_1,counter0_carry__4_n_2,counter0_carry__4_n_3}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({counter0_carry__4_n_4,counter0_carry__4_n_5,counter0_carry__4_n_6,counter0_carry__4_n_7}),
        .S(counter[24:21]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry__5
       (.CI(counter0_carry__4_n_0),
        .CO(counter0_carry__5_n_3),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({counter0_carry__5_n_6,counter0_carry__5_n_7}),
        .S({\<const0> ,\<const0> ,counter[26:25]}));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \counter[0]_i_1 
       (.I0(counter[0]),
        .I1(\counter[26]_i_3_n_0 ),
        .O(counter_0[0]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter[10]_i_1 
       (.I0(counter0_carry__1_n_6),
        .I1(\counter[26]_i_3_n_0 ),
        .O(counter_0[10]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter[11]_i_1 
       (.I0(counter0_carry__1_n_5),
        .I1(\counter[26]_i_3_n_0 ),
        .O(counter_0[11]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter[12]_i_1 
       (.I0(counter0_carry__1_n_4),
        .I1(\counter[26]_i_3_n_0 ),
        .O(counter_0[12]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter[13]_i_1 
       (.I0(counter0_carry__2_n_7),
        .I1(\counter[26]_i_3_n_0 ),
        .O(counter_0[13]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter[14]_i_1 
       (.I0(counter0_carry__2_n_6),
        .I1(\counter[26]_i_3_n_0 ),
        .O(counter_0[14]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter[15]_i_1 
       (.I0(counter0_carry__2_n_5),
        .I1(\counter[26]_i_3_n_0 ),
        .O(counter_0[15]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter[16]_i_1 
       (.I0(counter0_carry__2_n_4),
        .I1(\counter[26]_i_3_n_0 ),
        .O(counter_0[16]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter[17]_i_1 
       (.I0(counter0_carry__3_n_7),
        .I1(\counter[26]_i_3_n_0 ),
        .O(counter_0[17]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter[18]_i_1 
       (.I0(counter0_carry__3_n_6),
        .I1(\counter[26]_i_3_n_0 ),
        .O(counter_0[18]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter[19]_i_1 
       (.I0(counter0_carry__3_n_5),
        .I1(\counter[26]_i_3_n_0 ),
        .O(counter_0[19]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter[1]_i_1 
       (.I0(counter0_carry_n_7),
        .I1(\counter[26]_i_3_n_0 ),
        .O(counter_0[1]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter[20]_i_1 
       (.I0(counter0_carry__3_n_4),
        .I1(\counter[26]_i_3_n_0 ),
        .O(counter_0[20]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter[21]_i_1 
       (.I0(counter0_carry__4_n_7),
        .I1(\counter[26]_i_3_n_0 ),
        .O(counter_0[21]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter[22]_i_1 
       (.I0(counter0_carry__4_n_6),
        .I1(\counter[26]_i_3_n_0 ),
        .O(counter_0[22]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter[23]_i_1 
       (.I0(counter0_carry__4_n_5),
        .I1(\counter[26]_i_3_n_0 ),
        .O(counter_0[23]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter[24]_i_1 
       (.I0(counter0_carry__4_n_4),
        .I1(\counter[26]_i_3_n_0 ),
        .O(counter_0[24]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter[25]_i_1 
       (.I0(counter0_carry__5_n_7),
        .I1(\counter[26]_i_3_n_0 ),
        .O(counter_0[25]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter[26]_i_2 
       (.I0(counter0_carry__5_n_6),
        .I1(\counter[26]_i_3_n_0 ),
        .O(counter_0[26]));
  LUT6 #(
    .INIT(64'h0000000000000040)) 
    \counter[26]_i_3 
       (.I0(\counter[26]_i_4_n_0 ),
        .I1(counter[11]),
        .I2(counter[21]),
        .I3(counter[23]),
        .I4(\counter[26]_i_5_n_0 ),
        .I5(\counter[26]_i_6_n_0 ),
        .O(\counter[26]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFB)) 
    \counter[26]_i_4 
       (.I0(counter[7]),
        .I1(counter[8]),
        .I2(counter[19]),
        .I3(counter[5]),
        .I4(\counter[26]_i_7_n_0 ),
        .O(\counter[26]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFBFFF)) 
    \counter[26]_i_5 
       (.I0(counter[15]),
        .I1(counter[17]),
        .I2(counter[22]),
        .I3(counter[26]),
        .I4(\counter[26]_i_8_n_0 ),
        .O(\counter[26]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFEFFF)) 
    \counter[26]_i_6 
       (.I0(counter[9]),
        .I1(counter[10]),
        .I2(counter[14]),
        .I3(counter[25]),
        .I4(\counter[26]_i_9_n_0 ),
        .O(\counter[26]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'hFFEF)) 
    \counter[26]_i_7 
       (.I0(counter[4]),
        .I1(counter[3]),
        .I2(counter[12]),
        .I3(counter[0]),
        .O(\counter[26]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFF7F)) 
    \counter[26]_i_8 
       (.I0(counter[16]),
        .I1(counter[24]),
        .I2(counter[6]),
        .I3(counter[1]),
        .O(\counter[26]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \counter[26]_i_9 
       (.I0(counter[20]),
        .I1(counter[13]),
        .I2(counter[18]),
        .I3(counter[2]),
        .O(\counter[26]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter[2]_i_1 
       (.I0(counter0_carry_n_6),
        .I1(\counter[26]_i_3_n_0 ),
        .O(counter_0[2]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter[3]_i_1 
       (.I0(counter0_carry_n_5),
        .I1(\counter[26]_i_3_n_0 ),
        .O(counter_0[3]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter[4]_i_1 
       (.I0(counter0_carry_n_4),
        .I1(\counter[26]_i_3_n_0 ),
        .O(counter_0[4]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter[5]_i_1 
       (.I0(counter0_carry__0_n_7),
        .I1(\counter[26]_i_3_n_0 ),
        .O(counter_0[5]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter[6]_i_1 
       (.I0(counter0_carry__0_n_6),
        .I1(\counter[26]_i_3_n_0 ),
        .O(counter_0[6]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter[7]_i_1 
       (.I0(counter0_carry__0_n_5),
        .I1(\counter[26]_i_3_n_0 ),
        .O(counter_0[7]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter[8]_i_1 
       (.I0(counter0_carry__0_n_4),
        .I1(\counter[26]_i_3_n_0 ),
        .O(counter_0[8]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter[9]_i_1 
       (.I0(counter0_carry__1_n_7),
        .I1(\counter[26]_i_3_n_0 ),
        .O(counter_0[9]));
  FDRE \counter_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(counter_0[0]),
        .Q(counter[0]),
        .R(\buttons_pressed_BUFG[3] ));
  FDRE \counter_reg[10] 
       (.C(CLK),
        .CE(E),
        .D(counter_0[10]),
        .Q(counter[10]),
        .R(\buttons_pressed_BUFG[3] ));
  FDRE \counter_reg[11] 
       (.C(CLK),
        .CE(E),
        .D(counter_0[11]),
        .Q(counter[11]),
        .R(\buttons_pressed_BUFG[3] ));
  FDRE \counter_reg[12] 
       (.C(CLK),
        .CE(E),
        .D(counter_0[12]),
        .Q(counter[12]),
        .R(\buttons_pressed_BUFG[3] ));
  FDRE \counter_reg[13] 
       (.C(CLK),
        .CE(E),
        .D(counter_0[13]),
        .Q(counter[13]),
        .R(\buttons_pressed_BUFG[3] ));
  FDRE \counter_reg[14] 
       (.C(CLK),
        .CE(E),
        .D(counter_0[14]),
        .Q(counter[14]),
        .R(\buttons_pressed_BUFG[3] ));
  FDRE \counter_reg[15] 
       (.C(CLK),
        .CE(E),
        .D(counter_0[15]),
        .Q(counter[15]),
        .R(\buttons_pressed_BUFG[3] ));
  FDRE \counter_reg[16] 
       (.C(CLK),
        .CE(E),
        .D(counter_0[16]),
        .Q(counter[16]),
        .R(\buttons_pressed_BUFG[3] ));
  FDRE \counter_reg[17] 
       (.C(CLK),
        .CE(E),
        .D(counter_0[17]),
        .Q(counter[17]),
        .R(\buttons_pressed_BUFG[3] ));
  FDRE \counter_reg[18] 
       (.C(CLK),
        .CE(E),
        .D(counter_0[18]),
        .Q(counter[18]),
        .R(\buttons_pressed_BUFG[3] ));
  FDRE \counter_reg[19] 
       (.C(CLK),
        .CE(E),
        .D(counter_0[19]),
        .Q(counter[19]),
        .R(\buttons_pressed_BUFG[3] ));
  FDRE \counter_reg[1] 
       (.C(CLK),
        .CE(E),
        .D(counter_0[1]),
        .Q(counter[1]),
        .R(\buttons_pressed_BUFG[3] ));
  FDRE \counter_reg[20] 
       (.C(CLK),
        .CE(E),
        .D(counter_0[20]),
        .Q(counter[20]),
        .R(\buttons_pressed_BUFG[3] ));
  FDRE \counter_reg[21] 
       (.C(CLK),
        .CE(E),
        .D(counter_0[21]),
        .Q(counter[21]),
        .R(\buttons_pressed_BUFG[3] ));
  FDRE \counter_reg[22] 
       (.C(CLK),
        .CE(E),
        .D(counter_0[22]),
        .Q(counter[22]),
        .R(\buttons_pressed_BUFG[3] ));
  FDRE \counter_reg[23] 
       (.C(CLK),
        .CE(E),
        .D(counter_0[23]),
        .Q(counter[23]),
        .R(\buttons_pressed_BUFG[3] ));
  FDRE \counter_reg[24] 
       (.C(CLK),
        .CE(E),
        .D(counter_0[24]),
        .Q(counter[24]),
        .R(\buttons_pressed_BUFG[3] ));
  FDRE \counter_reg[25] 
       (.C(CLK),
        .CE(E),
        .D(counter_0[25]),
        .Q(counter[25]),
        .R(\buttons_pressed_BUFG[3] ));
  FDRE \counter_reg[26] 
       (.C(CLK),
        .CE(E),
        .D(counter_0[26]),
        .Q(counter[26]),
        .R(\buttons_pressed_BUFG[3] ));
  FDRE \counter_reg[2] 
       (.C(CLK),
        .CE(E),
        .D(counter_0[2]),
        .Q(counter[2]),
        .R(\buttons_pressed_BUFG[3] ));
  FDRE \counter_reg[3] 
       (.C(CLK),
        .CE(E),
        .D(counter_0[3]),
        .Q(counter[3]),
        .R(\buttons_pressed_BUFG[3] ));
  FDRE \counter_reg[4] 
       (.C(CLK),
        .CE(E),
        .D(counter_0[4]),
        .Q(counter[4]),
        .R(\buttons_pressed_BUFG[3] ));
  FDRE \counter_reg[5] 
       (.C(CLK),
        .CE(E),
        .D(counter_0[5]),
        .Q(counter[5]),
        .R(\buttons_pressed_BUFG[3] ));
  FDRE \counter_reg[6] 
       (.C(CLK),
        .CE(E),
        .D(counter_0[6]),
        .Q(counter[6]),
        .R(\buttons_pressed_BUFG[3] ));
  FDRE \counter_reg[7] 
       (.C(CLK),
        .CE(E),
        .D(counter_0[7]),
        .Q(counter[7]),
        .R(\buttons_pressed_BUFG[3] ));
  FDRE \counter_reg[8] 
       (.C(CLK),
        .CE(E),
        .D(counter_0[8]),
        .Q(counter[8]),
        .R(\buttons_pressed_BUFG[3] ));
  FDRE \counter_reg[9] 
       (.C(CLK),
        .CE(E),
        .D(counter_0[9]),
        .Q(counter[9]),
        .R(\buttons_pressed_BUFG[3] ));
  FDRE \curr_state_reg[0] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(D[0]),
        .Q(LEDS_OBUF[4]),
        .R(\buttons_pressed_BUFG[3] ));
  FDRE \curr_state_reg[1] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(D[1]),
        .Q(LEDS_OBUF[5]),
        .R(\buttons_pressed_BUFG[3] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 fcw0_carry
       (.CI(\<const0> ),
        .CO({fcw0_carry_n_0,fcw0_carry_n_1,fcw0_carry_n_2,fcw0_carry_n_3}),
        .CYINIT(\<const0> ),
        .DI({\d_out_reg[14] [2:0],\<const0> }),
        .O(fcw__0[5:2]),
        .S({S,d_out[2]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 fcw0_carry__0
       (.CI(fcw0_carry_n_0),
        .CO({fcw0_carry__0_n_0,fcw0_carry__0_n_1,fcw0_carry__0_n_2,fcw0_carry__0_n_3}),
        .CYINIT(\<const0> ),
        .DI(\d_out_reg[14] [6:3]),
        .O(fcw__0[9:6]),
        .S(\fcw_reg[6]_i_1 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 fcw0_carry__1
       (.CI(fcw0_carry__0_n_0),
        .CO({fcw0_carry__1_n_0,fcw0_carry__1_n_1,fcw0_carry__1_n_2,fcw0_carry__1_n_3}),
        .CYINIT(\<const0> ),
        .DI({DI,\d_out_reg[14] [9:7]}),
        .O(fcw__0[13:10]),
        .S(\fcw_reg[10]_i_1 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 fcw0_carry__2
       (.CI(fcw0_carry__1_n_0),
        .CO({fcw0_carry__2_n_0,fcw0_carry__2_n_1,fcw0_carry__2_n_2,fcw0_carry__2_n_3}),
        .CYINIT(\<const0> ),
        .DI({d_out[16:15],\d_out_reg[14] [11],\fcw_reg[14]_i_1 }),
        .O(fcw__0[17:14]),
        .S({notes_n_44,notes_n_45,notes_n_46,\fcw_reg[14]_i_1_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 fcw0_carry__3
       (.CI(fcw0_carry__2_n_0),
        .CO({fcw0_carry__3_n_0,fcw0_carry__3_n_1,fcw0_carry__3_n_2,fcw0_carry__3_n_3}),
        .CYINIT(\<const0> ),
        .DI(d_out[20:17]),
        .O(fcw__0[21:18]),
        .S({notes_n_47,notes_n_48,notes_n_49,notes_n_50}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 fcw0_carry__4
       (.CI(fcw0_carry__3_n_0),
        .CO(fcw0_carry__4_n_3),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,d_out[21]}),
        .O(fcw__0[23:22]),
        .S({\<const0> ,\<const0> ,notes_n_51,notes_n_52}));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \fcw_reg[0] 
       (.CLR(GND_2),
        .D(notes_n_23),
        .G(\buttons_pressed_BUFG[3] ),
        .GE(VCC_2),
        .Q(\curr_state_reg[0]_0 [0]));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \fcw_reg[10] 
       (.CLR(GND_2),
        .D(notes_n_13),
        .G(\buttons_pressed_BUFG[3] ),
        .GE(VCC_2),
        .Q(\curr_state_reg[0]_0 [10]));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \fcw_reg[11] 
       (.CLR(GND_2),
        .D(notes_n_12),
        .G(\buttons_pressed_BUFG[3] ),
        .GE(VCC_2),
        .Q(\curr_state_reg[0]_0 [11]));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \fcw_reg[12] 
       (.CLR(GND_2),
        .D(notes_n_11),
        .G(\buttons_pressed_BUFG[3] ),
        .GE(VCC_2),
        .Q(\curr_state_reg[0]_0 [12]));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \fcw_reg[13] 
       (.CLR(GND_2),
        .D(notes_n_10),
        .G(\buttons_pressed_BUFG[3] ),
        .GE(VCC_2),
        .Q(\curr_state_reg[0]_0 [13]));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \fcw_reg[14] 
       (.CLR(GND_2),
        .D(notes_n_9),
        .G(\buttons_pressed_BUFG[3] ),
        .GE(VCC_2),
        .Q(\curr_state_reg[0]_0 [14]));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \fcw_reg[15] 
       (.CLR(GND_2),
        .D(notes_n_8),
        .G(\buttons_pressed_BUFG[3] ),
        .GE(VCC_2),
        .Q(\curr_state_reg[0]_0 [15]));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \fcw_reg[16] 
       (.CLR(GND_2),
        .D(notes_n_7),
        .G(\buttons_pressed_BUFG[3] ),
        .GE(VCC_2),
        .Q(\curr_state_reg[0]_0 [16]));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \fcw_reg[17] 
       (.CLR(GND_2),
        .D(notes_n_6),
        .G(\buttons_pressed_BUFG[3] ),
        .GE(VCC_2),
        .Q(\curr_state_reg[0]_0 [17]));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \fcw_reg[18] 
       (.CLR(GND_2),
        .D(notes_n_5),
        .G(\buttons_pressed_BUFG[3] ),
        .GE(VCC_2),
        .Q(\curr_state_reg[0]_0 [18]));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \fcw_reg[19] 
       (.CLR(GND_2),
        .D(notes_n_4),
        .G(\buttons_pressed_BUFG[3] ),
        .GE(VCC_2),
        .Q(\curr_state_reg[0]_0 [19]));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \fcw_reg[1] 
       (.CLR(GND_2),
        .D(notes_n_22),
        .G(\buttons_pressed_BUFG[3] ),
        .GE(VCC_2),
        .Q(\curr_state_reg[0]_0 [1]));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \fcw_reg[20] 
       (.CLR(GND_2),
        .D(notes_n_3),
        .G(\buttons_pressed_BUFG[3] ),
        .GE(VCC_2),
        .Q(\curr_state_reg[0]_0 [20]));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \fcw_reg[21] 
       (.CLR(GND_2),
        .D(notes_n_2),
        .G(\buttons_pressed_BUFG[3] ),
        .GE(VCC_2),
        .Q(\curr_state_reg[0]_0 [21]));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \fcw_reg[22] 
       (.CLR(GND_2),
        .D(notes_n_1),
        .G(\buttons_pressed_BUFG[3] ),
        .GE(VCC_2),
        .Q(\curr_state_reg[0]_0 [22]));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \fcw_reg[23] 
       (.CLR(GND_2),
        .D(notes_n_0),
        .G(\buttons_pressed_BUFG[3] ),
        .GE(VCC_2),
        .Q(\curr_state_reg[0]_0 [23]));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \fcw_reg[2] 
       (.CLR(GND_2),
        .D(notes_n_21),
        .G(\buttons_pressed_BUFG[3] ),
        .GE(VCC_2),
        .Q(\curr_state_reg[0]_0 [2]));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \fcw_reg[3] 
       (.CLR(GND_2),
        .D(notes_n_20),
        .G(\buttons_pressed_BUFG[3] ),
        .GE(VCC_2),
        .Q(\curr_state_reg[0]_0 [3]));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \fcw_reg[4] 
       (.CLR(GND_2),
        .D(notes_n_19),
        .G(\buttons_pressed_BUFG[3] ),
        .GE(VCC_2),
        .Q(\curr_state_reg[0]_0 [4]));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \fcw_reg[5] 
       (.CLR(GND_2),
        .D(notes_n_18),
        .G(\buttons_pressed_BUFG[3] ),
        .GE(VCC_2),
        .Q(\curr_state_reg[0]_0 [5]));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \fcw_reg[6] 
       (.CLR(GND_2),
        .D(notes_n_17),
        .G(\buttons_pressed_BUFG[3] ),
        .GE(VCC_2),
        .Q(\curr_state_reg[0]_0 [6]));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \fcw_reg[7] 
       (.CLR(GND_2),
        .D(notes_n_16),
        .G(\buttons_pressed_BUFG[3] ),
        .GE(VCC_2),
        .Q(\curr_state_reg[0]_0 [7]));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \fcw_reg[8] 
       (.CLR(GND_2),
        .D(notes_n_15),
        .G(\buttons_pressed_BUFG[3] ),
        .GE(VCC_2),
        .Q(\curr_state_reg[0]_0 [8]));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \fcw_reg[9] 
       (.CLR(GND_2),
        .D(notes_n_14),
        .G(\buttons_pressed_BUFG[3] ),
        .GE(VCC_2),
        .Q(\curr_state_reg[0]_0 [9]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \note[0]_i_1 
       (.I0(\counter[26]_i_3_n_0 ),
        .I1(E),
        .I2(note_reg[0]),
        .O(\note[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'h9FFF6000)) 
    \note[1]_i_1 
       (.I0(D[0]),
        .I1(note_reg[0]),
        .I2(E),
        .I3(\counter[26]_i_3_n_0 ),
        .I4(note_reg[1]),
        .O(\note[1]_i_1_n_0 ));
  FDRE \note_reg[0] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\note[0]_i_1_n_0 ),
        .Q(note_reg[0]),
        .R(\buttons_pressed_BUFG[3] ));
  FDRE \note_reg[1] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\note[1]_i_1_n_0 ),
        .Q(note_reg[1]),
        .R(\buttons_pressed_BUFG[3] ));
  fcw_ram notes
       (.CLK(CLK),
        .D({notes_n_0,notes_n_1,notes_n_2,notes_n_3,notes_n_4,notes_n_5,notes_n_6,notes_n_7,notes_n_8,notes_n_9,notes_n_10,notes_n_11,notes_n_12,notes_n_13,notes_n_14,notes_n_15,notes_n_16,notes_n_17,notes_n_18,notes_n_19,notes_n_20,notes_n_21,notes_n_22,notes_n_23}),
        .DI(\d_out_reg[14] [11]),
        .Q(Q),
        .S({notes_n_44,notes_n_45,notes_n_46}),
        .\buttons_pressed[3] (\buttons_pressed[3] ),
        .\buttons_pressed_BUFG[3] (\buttons_pressed_BUFG[3] ),
        .\d_out_reg[13]_0 (\d_out_reg[14] [10:0]),
        .\d_out_reg[20]_0 ({notes_n_47,notes_n_48,notes_n_49,notes_n_50}),
        .\d_out_reg[21]_0 ({d_out[21:15],d_out[2]}),
        .\d_out_reg[22]_0 ({notes_n_51,notes_n_52}),
        .fcw__0(fcw__0),
        .note_reg(note_reg),
        .\ram_reg[0][0]_0 (\ram_reg[0][0] ),
        .\ram_reg[0][0]_1 (\ram_reg[0][0]_0 ),
        .\ram_reg[3][23]_0 (\curr_state_reg[0]_0 ),
        .\ram_reg[3][2]_0 (LEDS_OBUF[5:4]));
  LUT2 #(
    .INIT(4'h6)) 
    \phase_accumulator[0]_i_2 
       (.I0(\curr_state_reg[0]_0 [3]),
        .I1(phase_accumulator_reg[3]),
        .O(\phase_accumulator[0]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \phase_accumulator[0]_i_3 
       (.I0(\curr_state_reg[0]_0 [2]),
        .I1(phase_accumulator_reg[2]),
        .O(\phase_accumulator[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \phase_accumulator[0]_i_4 
       (.I0(\curr_state_reg[0]_0 [1]),
        .I1(phase_accumulator_reg[1]),
        .O(\phase_accumulator[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \phase_accumulator[0]_i_5 
       (.I0(\curr_state_reg[0]_0 [0]),
        .I1(phase_accumulator_reg[0]),
        .O(\phase_accumulator[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \phase_accumulator[12]_i_2 
       (.I0(\curr_state_reg[0]_0 [15]),
        .I1(phase_accumulator_reg[15]),
        .O(\phase_accumulator[12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \phase_accumulator[12]_i_3 
       (.I0(\curr_state_reg[0]_0 [14]),
        .I1(phase_accumulator_reg[14]),
        .O(\phase_accumulator[12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \phase_accumulator[12]_i_4 
       (.I0(\curr_state_reg[0]_0 [13]),
        .I1(phase_accumulator_reg[13]),
        .O(\phase_accumulator[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \phase_accumulator[12]_i_5 
       (.I0(\curr_state_reg[0]_0 [12]),
        .I1(phase_accumulator_reg[12]),
        .O(\phase_accumulator[12]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \phase_accumulator[16]_i_2 
       (.I0(\curr_state_reg[0]_0 [19]),
        .I1(phase_accumulator_reg[19]),
        .O(\phase_accumulator[16]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \phase_accumulator[16]_i_3 
       (.I0(\curr_state_reg[0]_0 [18]),
        .I1(phase_accumulator_reg[18]),
        .O(\phase_accumulator[16]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \phase_accumulator[16]_i_4 
       (.I0(\curr_state_reg[0]_0 [17]),
        .I1(phase_accumulator_reg[17]),
        .O(\phase_accumulator[16]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \phase_accumulator[16]_i_5 
       (.I0(\curr_state_reg[0]_0 [16]),
        .I1(phase_accumulator_reg[16]),
        .O(\phase_accumulator[16]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \phase_accumulator[20]_i_3 
       (.I0(\curr_state_reg[0]_0 [22]),
        .I1(phase_accumulator_reg[22]),
        .O(\phase_accumulator[20]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \phase_accumulator[20]_i_4 
       (.I0(\curr_state_reg[0]_0 [21]),
        .I1(phase_accumulator_reg[21]),
        .O(\phase_accumulator[20]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \phase_accumulator[20]_i_5 
       (.I0(\curr_state_reg[0]_0 [20]),
        .I1(phase_accumulator_reg[20]),
        .O(\phase_accumulator[20]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \phase_accumulator[4]_i_2 
       (.I0(\curr_state_reg[0]_0 [7]),
        .I1(phase_accumulator_reg[7]),
        .O(\phase_accumulator[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \phase_accumulator[4]_i_3 
       (.I0(\curr_state_reg[0]_0 [6]),
        .I1(phase_accumulator_reg[6]),
        .O(\phase_accumulator[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \phase_accumulator[4]_i_4 
       (.I0(\curr_state_reg[0]_0 [5]),
        .I1(phase_accumulator_reg[5]),
        .O(\phase_accumulator[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \phase_accumulator[4]_i_5 
       (.I0(\curr_state_reg[0]_0 [4]),
        .I1(phase_accumulator_reg[4]),
        .O(\phase_accumulator[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \phase_accumulator[8]_i_2 
       (.I0(\curr_state_reg[0]_0 [11]),
        .I1(phase_accumulator_reg[11]),
        .O(\phase_accumulator[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \phase_accumulator[8]_i_3 
       (.I0(\curr_state_reg[0]_0 [10]),
        .I1(phase_accumulator_reg[10]),
        .O(\phase_accumulator[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \phase_accumulator[8]_i_4 
       (.I0(\curr_state_reg[0]_0 [9]),
        .I1(phase_accumulator_reg[9]),
        .O(\phase_accumulator[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \phase_accumulator[8]_i_5 
       (.I0(\curr_state_reg[0]_0 [8]),
        .I1(phase_accumulator_reg[8]),
        .O(\phase_accumulator[8]_i_5_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \phase_accumulator_reg[0]_i_1 
       (.CI(\<const0> ),
        .CO({\phase_accumulator_reg[0]_i_1_n_0 ,\phase_accumulator_reg[0]_i_1_n_1 ,\phase_accumulator_reg[0]_i_1_n_2 ,\phase_accumulator_reg[0]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI(\curr_state_reg[0]_0 [3:0]),
        .O(O),
        .S({\phase_accumulator[0]_i_2_n_0 ,\phase_accumulator[0]_i_3_n_0 ,\phase_accumulator[0]_i_4_n_0 ,\phase_accumulator[0]_i_5_n_0 }));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \phase_accumulator_reg[12]_i_1 
       (.CI(\phase_accumulator_reg[8]_i_1_n_0 ),
        .CO({\phase_accumulator_reg[12]_i_1_n_0 ,\phase_accumulator_reg[12]_i_1_n_1 ,\phase_accumulator_reg[12]_i_1_n_2 ,\phase_accumulator_reg[12]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI(\curr_state_reg[0]_0 [15:12]),
        .O(\phase_accumulator_reg[15] ),
        .S({\phase_accumulator[12]_i_2_n_0 ,\phase_accumulator[12]_i_3_n_0 ,\phase_accumulator[12]_i_4_n_0 ,\phase_accumulator[12]_i_5_n_0 }));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \phase_accumulator_reg[16]_i_1 
       (.CI(\phase_accumulator_reg[12]_i_1_n_0 ),
        .CO({\phase_accumulator_reg[16]_i_1_n_0 ,\phase_accumulator_reg[16]_i_1_n_1 ,\phase_accumulator_reg[16]_i_1_n_2 ,\phase_accumulator_reg[16]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI(\curr_state_reg[0]_0 [19:16]),
        .O(\phase_accumulator_reg[19] ),
        .S({\phase_accumulator[16]_i_2_n_0 ,\phase_accumulator[16]_i_3_n_0 ,\phase_accumulator[16]_i_4_n_0 ,\phase_accumulator[16]_i_5_n_0 }));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \phase_accumulator_reg[20]_i_1 
       (.CI(\phase_accumulator_reg[16]_i_1_n_0 ),
        .CO({\phase_accumulator_reg[20]_i_1_n_1 ,\phase_accumulator_reg[20]_i_1_n_2 ,\phase_accumulator_reg[20]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\curr_state_reg[0]_0 [22:20]}),
        .O(\phase_accumulator_reg[23] ),
        .S({\phase_accumulator_reg[23]_0 ,\phase_accumulator[20]_i_3_n_0 ,\phase_accumulator[20]_i_4_n_0 ,\phase_accumulator[20]_i_5_n_0 }));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \phase_accumulator_reg[4]_i_1 
       (.CI(\phase_accumulator_reg[0]_i_1_n_0 ),
        .CO({\phase_accumulator_reg[4]_i_1_n_0 ,\phase_accumulator_reg[4]_i_1_n_1 ,\phase_accumulator_reg[4]_i_1_n_2 ,\phase_accumulator_reg[4]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI(\curr_state_reg[0]_0 [7:4]),
        .O(\phase_accumulator_reg[7] ),
        .S({\phase_accumulator[4]_i_2_n_0 ,\phase_accumulator[4]_i_3_n_0 ,\phase_accumulator[4]_i_4_n_0 ,\phase_accumulator[4]_i_5_n_0 }));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \phase_accumulator_reg[8]_i_1 
       (.CI(\phase_accumulator_reg[4]_i_1_n_0 ),
        .CO({\phase_accumulator_reg[8]_i_1_n_0 ,\phase_accumulator_reg[8]_i_1_n_1 ,\phase_accumulator_reg[8]_i_1_n_2 ,\phase_accumulator_reg[8]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI(\curr_state_reg[0]_0 [11:8]),
        .O(\phase_accumulator_reg[11] ),
        .S({\phase_accumulator[8]_i_2_n_0 ,\phase_accumulator[8]_i_3_n_0 ,\phase_accumulator[8]_i_4_n_0 ,\phase_accumulator[8]_i_5_n_0 }));
endmodule

module nco
   (\phase_accumulator_reg[22]_0 ,
    \phase_accumulator_reg[23]_0 ,
    ADDRARDADDR,
    \buttons_pressed_BUFG[3] ,
    next_sample,
    O,
    CLK,
    \phase_accumulator_reg[7]_0 ,
    \phase_accumulator_reg[11]_0 ,
    \phase_accumulator_reg[15]_0 ,
    \phase_accumulator_reg[19]_0 ,
    \phase_accumulator_reg[23]_1 ,
    \phase_accumulator_reg[23]_2 ,
    \buttons_pressed[3] );
  output [22:0]\phase_accumulator_reg[22]_0 ;
  output [0:0]\phase_accumulator_reg[23]_0 ;
  output [7:0]ADDRARDADDR;
  input \buttons_pressed_BUFG[3] ;
  input next_sample;
  input [3:0]O;
  input CLK;
  input [3:0]\phase_accumulator_reg[7]_0 ;
  input [3:0]\phase_accumulator_reg[11]_0 ;
  input [3:0]\phase_accumulator_reg[15]_0 ;
  input [3:0]\phase_accumulator_reg[19]_0 ;
  input [3:0]\phase_accumulator_reg[23]_1 ;
  input [23:0]\phase_accumulator_reg[23]_2 ;
  input \buttons_pressed[3] ;

  wire \<const0> ;
  wire [7:0]ADDRARDADDR;
  wire CLK;
  wire [3:0]O;
  wire \buttons_pressed[3] ;
  wire \buttons_pressed_BUFG[3] ;
  wire next_sample;
  wire phase_accumulator0_carry__0_i_1_n_0;
  wire phase_accumulator0_carry__0_i_2_n_0;
  wire phase_accumulator0_carry__0_i_3_n_0;
  wire phase_accumulator0_carry__0_i_4_n_0;
  wire phase_accumulator0_carry__0_n_0;
  wire phase_accumulator0_carry__0_n_1;
  wire phase_accumulator0_carry__0_n_2;
  wire phase_accumulator0_carry__0_n_3;
  wire phase_accumulator0_carry__1_i_1_n_0;
  wire phase_accumulator0_carry__1_i_2_n_0;
  wire phase_accumulator0_carry__1_i_3_n_0;
  wire phase_accumulator0_carry__1_i_4_n_0;
  wire phase_accumulator0_carry__1_n_0;
  wire phase_accumulator0_carry__1_n_1;
  wire phase_accumulator0_carry__1_n_2;
  wire phase_accumulator0_carry__1_n_3;
  wire phase_accumulator0_carry__2_i_1_n_0;
  wire phase_accumulator0_carry__2_i_2_n_0;
  wire phase_accumulator0_carry__2_i_3_n_0;
  wire phase_accumulator0_carry__2_i_4_n_0;
  wire phase_accumulator0_carry__2_n_0;
  wire phase_accumulator0_carry__2_n_1;
  wire phase_accumulator0_carry__2_n_2;
  wire phase_accumulator0_carry__2_n_3;
  wire phase_accumulator0_carry__3_i_1_n_0;
  wire phase_accumulator0_carry__3_i_2_n_0;
  wire phase_accumulator0_carry__3_i_3_n_0;
  wire phase_accumulator0_carry__3_i_4_n_0;
  wire phase_accumulator0_carry__3_n_0;
  wire phase_accumulator0_carry__3_n_1;
  wire phase_accumulator0_carry__3_n_2;
  wire phase_accumulator0_carry__3_n_3;
  wire phase_accumulator0_carry__4_i_1_n_0;
  wire phase_accumulator0_carry__4_i_2_n_0;
  wire phase_accumulator0_carry__4_i_3_n_0;
  wire phase_accumulator0_carry__4_i_4_n_0;
  wire phase_accumulator0_carry__4_n_1;
  wire phase_accumulator0_carry__4_n_2;
  wire phase_accumulator0_carry__4_n_3;
  wire phase_accumulator0_carry_i_1_n_0;
  wire phase_accumulator0_carry_i_2_n_0;
  wire phase_accumulator0_carry_i_3_n_0;
  wire phase_accumulator0_carry_i_4_n_0;
  wire phase_accumulator0_carry_n_0;
  wire phase_accumulator0_carry_n_1;
  wire phase_accumulator0_carry_n_2;
  wire phase_accumulator0_carry_n_3;
  wire [23:23]phase_accumulator_reg;
  wire [3:0]\phase_accumulator_reg[11]_0 ;
  wire [3:0]\phase_accumulator_reg[15]_0 ;
  wire [3:0]\phase_accumulator_reg[19]_0 ;
  wire [22:0]\phase_accumulator_reg[22]_0 ;
  wire [0:0]\phase_accumulator_reg[23]_0 ;
  wire [3:0]\phase_accumulator_reg[23]_1 ;
  wire [23:0]\phase_accumulator_reg[23]_2 ;
  wire [3:0]\phase_accumulator_reg[7]_0 ;
  wire [7:0]sel__0;

  GND GND
       (.G(\<const0> ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 phase_accumulator0_carry
       (.CI(\<const0> ),
        .CO({phase_accumulator0_carry_n_0,phase_accumulator0_carry_n_1,phase_accumulator0_carry_n_2,phase_accumulator0_carry_n_3}),
        .CYINIT(\<const0> ),
        .DI(\phase_accumulator_reg[22]_0 [3:0]),
        .S({phase_accumulator0_carry_i_1_n_0,phase_accumulator0_carry_i_2_n_0,phase_accumulator0_carry_i_3_n_0,phase_accumulator0_carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 phase_accumulator0_carry__0
       (.CI(phase_accumulator0_carry_n_0),
        .CO({phase_accumulator0_carry__0_n_0,phase_accumulator0_carry__0_n_1,phase_accumulator0_carry__0_n_2,phase_accumulator0_carry__0_n_3}),
        .CYINIT(\<const0> ),
        .DI(\phase_accumulator_reg[22]_0 [7:4]),
        .S({phase_accumulator0_carry__0_i_1_n_0,phase_accumulator0_carry__0_i_2_n_0,phase_accumulator0_carry__0_i_3_n_0,phase_accumulator0_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    phase_accumulator0_carry__0_i_1
       (.I0(\phase_accumulator_reg[22]_0 [7]),
        .I1(\phase_accumulator_reg[23]_2 [7]),
        .O(phase_accumulator0_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    phase_accumulator0_carry__0_i_2
       (.I0(\phase_accumulator_reg[22]_0 [6]),
        .I1(\phase_accumulator_reg[23]_2 [6]),
        .O(phase_accumulator0_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    phase_accumulator0_carry__0_i_3
       (.I0(\phase_accumulator_reg[22]_0 [5]),
        .I1(\phase_accumulator_reg[23]_2 [5]),
        .O(phase_accumulator0_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    phase_accumulator0_carry__0_i_4
       (.I0(\phase_accumulator_reg[22]_0 [4]),
        .I1(\phase_accumulator_reg[23]_2 [4]),
        .O(phase_accumulator0_carry__0_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 phase_accumulator0_carry__1
       (.CI(phase_accumulator0_carry__0_n_0),
        .CO({phase_accumulator0_carry__1_n_0,phase_accumulator0_carry__1_n_1,phase_accumulator0_carry__1_n_2,phase_accumulator0_carry__1_n_3}),
        .CYINIT(\<const0> ),
        .DI(\phase_accumulator_reg[22]_0 [11:8]),
        .S({phase_accumulator0_carry__1_i_1_n_0,phase_accumulator0_carry__1_i_2_n_0,phase_accumulator0_carry__1_i_3_n_0,phase_accumulator0_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    phase_accumulator0_carry__1_i_1
       (.I0(\phase_accumulator_reg[22]_0 [11]),
        .I1(\phase_accumulator_reg[23]_2 [11]),
        .O(phase_accumulator0_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    phase_accumulator0_carry__1_i_2
       (.I0(\phase_accumulator_reg[22]_0 [10]),
        .I1(\phase_accumulator_reg[23]_2 [10]),
        .O(phase_accumulator0_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    phase_accumulator0_carry__1_i_3
       (.I0(\phase_accumulator_reg[22]_0 [9]),
        .I1(\phase_accumulator_reg[23]_2 [9]),
        .O(phase_accumulator0_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    phase_accumulator0_carry__1_i_4
       (.I0(\phase_accumulator_reg[22]_0 [8]),
        .I1(\phase_accumulator_reg[23]_2 [8]),
        .O(phase_accumulator0_carry__1_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 phase_accumulator0_carry__2
       (.CI(phase_accumulator0_carry__1_n_0),
        .CO({phase_accumulator0_carry__2_n_0,phase_accumulator0_carry__2_n_1,phase_accumulator0_carry__2_n_2,phase_accumulator0_carry__2_n_3}),
        .CYINIT(\<const0> ),
        .DI(\phase_accumulator_reg[22]_0 [15:12]),
        .S({phase_accumulator0_carry__2_i_1_n_0,phase_accumulator0_carry__2_i_2_n_0,phase_accumulator0_carry__2_i_3_n_0,phase_accumulator0_carry__2_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    phase_accumulator0_carry__2_i_1
       (.I0(\phase_accumulator_reg[22]_0 [15]),
        .I1(\phase_accumulator_reg[23]_2 [15]),
        .O(phase_accumulator0_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    phase_accumulator0_carry__2_i_2
       (.I0(\phase_accumulator_reg[22]_0 [14]),
        .I1(\phase_accumulator_reg[23]_2 [14]),
        .O(phase_accumulator0_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    phase_accumulator0_carry__2_i_3
       (.I0(\phase_accumulator_reg[22]_0 [13]),
        .I1(\phase_accumulator_reg[23]_2 [13]),
        .O(phase_accumulator0_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    phase_accumulator0_carry__2_i_4
       (.I0(\phase_accumulator_reg[22]_0 [12]),
        .I1(\phase_accumulator_reg[23]_2 [12]),
        .O(phase_accumulator0_carry__2_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 phase_accumulator0_carry__3
       (.CI(phase_accumulator0_carry__2_n_0),
        .CO({phase_accumulator0_carry__3_n_0,phase_accumulator0_carry__3_n_1,phase_accumulator0_carry__3_n_2,phase_accumulator0_carry__3_n_3}),
        .CYINIT(\<const0> ),
        .DI(\phase_accumulator_reg[22]_0 [19:16]),
        .O(sel__0[3:0]),
        .S({phase_accumulator0_carry__3_i_1_n_0,phase_accumulator0_carry__3_i_2_n_0,phase_accumulator0_carry__3_i_3_n_0,phase_accumulator0_carry__3_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    phase_accumulator0_carry__3_i_1
       (.I0(\phase_accumulator_reg[22]_0 [19]),
        .I1(\phase_accumulator_reg[23]_2 [19]),
        .O(phase_accumulator0_carry__3_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    phase_accumulator0_carry__3_i_2
       (.I0(\phase_accumulator_reg[22]_0 [18]),
        .I1(\phase_accumulator_reg[23]_2 [18]),
        .O(phase_accumulator0_carry__3_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    phase_accumulator0_carry__3_i_3
       (.I0(\phase_accumulator_reg[22]_0 [17]),
        .I1(\phase_accumulator_reg[23]_2 [17]),
        .O(phase_accumulator0_carry__3_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    phase_accumulator0_carry__3_i_4
       (.I0(\phase_accumulator_reg[22]_0 [16]),
        .I1(\phase_accumulator_reg[23]_2 [16]),
        .O(phase_accumulator0_carry__3_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 phase_accumulator0_carry__4
       (.CI(phase_accumulator0_carry__3_n_0),
        .CO({phase_accumulator0_carry__4_n_1,phase_accumulator0_carry__4_n_2,phase_accumulator0_carry__4_n_3}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\phase_accumulator_reg[22]_0 [22:20]}),
        .O(sel__0[7:4]),
        .S({phase_accumulator0_carry__4_i_1_n_0,phase_accumulator0_carry__4_i_2_n_0,phase_accumulator0_carry__4_i_3_n_0,phase_accumulator0_carry__4_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    phase_accumulator0_carry__4_i_1
       (.I0(phase_accumulator_reg),
        .I1(\phase_accumulator_reg[23]_2 [23]),
        .O(phase_accumulator0_carry__4_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    phase_accumulator0_carry__4_i_2
       (.I0(\phase_accumulator_reg[22]_0 [22]),
        .I1(\phase_accumulator_reg[23]_2 [22]),
        .O(phase_accumulator0_carry__4_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    phase_accumulator0_carry__4_i_3
       (.I0(\phase_accumulator_reg[22]_0 [21]),
        .I1(\phase_accumulator_reg[23]_2 [21]),
        .O(phase_accumulator0_carry__4_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    phase_accumulator0_carry__4_i_4
       (.I0(\phase_accumulator_reg[22]_0 [20]),
        .I1(\phase_accumulator_reg[23]_2 [20]),
        .O(phase_accumulator0_carry__4_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    phase_accumulator0_carry_i_1
       (.I0(\phase_accumulator_reg[22]_0 [3]),
        .I1(\phase_accumulator_reg[23]_2 [3]),
        .O(phase_accumulator0_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    phase_accumulator0_carry_i_2
       (.I0(\phase_accumulator_reg[22]_0 [2]),
        .I1(\phase_accumulator_reg[23]_2 [2]),
        .O(phase_accumulator0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    phase_accumulator0_carry_i_3
       (.I0(\phase_accumulator_reg[22]_0 [1]),
        .I1(\phase_accumulator_reg[23]_2 [1]),
        .O(phase_accumulator0_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    phase_accumulator0_carry_i_4
       (.I0(\phase_accumulator_reg[22]_0 [0]),
        .I1(\phase_accumulator_reg[23]_2 [0]),
        .O(phase_accumulator0_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    \phase_accumulator[20]_i_2 
       (.I0(phase_accumulator_reg),
        .I1(\phase_accumulator_reg[23]_2 [23]),
        .O(\phase_accumulator_reg[23]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \phase_accumulator_reg[0] 
       (.C(CLK),
        .CE(next_sample),
        .D(O[0]),
        .Q(\phase_accumulator_reg[22]_0 [0]),
        .R(\buttons_pressed_BUFG[3] ));
  FDRE #(
    .INIT(1'b0)) 
    \phase_accumulator_reg[10] 
       (.C(CLK),
        .CE(next_sample),
        .D(\phase_accumulator_reg[11]_0 [2]),
        .Q(\phase_accumulator_reg[22]_0 [10]),
        .R(\buttons_pressed_BUFG[3] ));
  FDRE #(
    .INIT(1'b0)) 
    \phase_accumulator_reg[11] 
       (.C(CLK),
        .CE(next_sample),
        .D(\phase_accumulator_reg[11]_0 [3]),
        .Q(\phase_accumulator_reg[22]_0 [11]),
        .R(\buttons_pressed_BUFG[3] ));
  FDRE #(
    .INIT(1'b0)) 
    \phase_accumulator_reg[12] 
       (.C(CLK),
        .CE(next_sample),
        .D(\phase_accumulator_reg[15]_0 [0]),
        .Q(\phase_accumulator_reg[22]_0 [12]),
        .R(\buttons_pressed_BUFG[3] ));
  FDRE #(
    .INIT(1'b0)) 
    \phase_accumulator_reg[13] 
       (.C(CLK),
        .CE(next_sample),
        .D(\phase_accumulator_reg[15]_0 [1]),
        .Q(\phase_accumulator_reg[22]_0 [13]),
        .R(\buttons_pressed_BUFG[3] ));
  FDRE #(
    .INIT(1'b0)) 
    \phase_accumulator_reg[14] 
       (.C(CLK),
        .CE(next_sample),
        .D(\phase_accumulator_reg[15]_0 [2]),
        .Q(\phase_accumulator_reg[22]_0 [14]),
        .R(\buttons_pressed_BUFG[3] ));
  FDRE #(
    .INIT(1'b0)) 
    \phase_accumulator_reg[15] 
       (.C(CLK),
        .CE(next_sample),
        .D(\phase_accumulator_reg[15]_0 [3]),
        .Q(\phase_accumulator_reg[22]_0 [15]),
        .R(\buttons_pressed_BUFG[3] ));
  FDRE #(
    .INIT(1'b0)) 
    \phase_accumulator_reg[16] 
       (.C(CLK),
        .CE(next_sample),
        .D(\phase_accumulator_reg[19]_0 [0]),
        .Q(\phase_accumulator_reg[22]_0 [16]),
        .R(\buttons_pressed_BUFG[3] ));
  FDRE #(
    .INIT(1'b0)) 
    \phase_accumulator_reg[17] 
       (.C(CLK),
        .CE(next_sample),
        .D(\phase_accumulator_reg[19]_0 [1]),
        .Q(\phase_accumulator_reg[22]_0 [17]),
        .R(\buttons_pressed_BUFG[3] ));
  FDRE #(
    .INIT(1'b0)) 
    \phase_accumulator_reg[18] 
       (.C(CLK),
        .CE(next_sample),
        .D(\phase_accumulator_reg[19]_0 [2]),
        .Q(\phase_accumulator_reg[22]_0 [18]),
        .R(\buttons_pressed_BUFG[3] ));
  FDRE #(
    .INIT(1'b0)) 
    \phase_accumulator_reg[19] 
       (.C(CLK),
        .CE(next_sample),
        .D(\phase_accumulator_reg[19]_0 [3]),
        .Q(\phase_accumulator_reg[22]_0 [19]),
        .R(\buttons_pressed_BUFG[3] ));
  FDRE #(
    .INIT(1'b0)) 
    \phase_accumulator_reg[1] 
       (.C(CLK),
        .CE(next_sample),
        .D(O[1]),
        .Q(\phase_accumulator_reg[22]_0 [1]),
        .R(\buttons_pressed_BUFG[3] ));
  FDRE #(
    .INIT(1'b0)) 
    \phase_accumulator_reg[20] 
       (.C(CLK),
        .CE(next_sample),
        .D(\phase_accumulator_reg[23]_1 [0]),
        .Q(\phase_accumulator_reg[22]_0 [20]),
        .R(\buttons_pressed_BUFG[3] ));
  FDRE #(
    .INIT(1'b0)) 
    \phase_accumulator_reg[21] 
       (.C(CLK),
        .CE(next_sample),
        .D(\phase_accumulator_reg[23]_1 [1]),
        .Q(\phase_accumulator_reg[22]_0 [21]),
        .R(\buttons_pressed_BUFG[3] ));
  FDRE #(
    .INIT(1'b0)) 
    \phase_accumulator_reg[22] 
       (.C(CLK),
        .CE(next_sample),
        .D(\phase_accumulator_reg[23]_1 [2]),
        .Q(\phase_accumulator_reg[22]_0 [22]),
        .R(\buttons_pressed_BUFG[3] ));
  FDRE #(
    .INIT(1'b0)) 
    \phase_accumulator_reg[23] 
       (.C(CLK),
        .CE(next_sample),
        .D(\phase_accumulator_reg[23]_1 [3]),
        .Q(phase_accumulator_reg),
        .R(\buttons_pressed_BUFG[3] ));
  FDRE #(
    .INIT(1'b0)) 
    \phase_accumulator_reg[2] 
       (.C(CLK),
        .CE(next_sample),
        .D(O[2]),
        .Q(\phase_accumulator_reg[22]_0 [2]),
        .R(\buttons_pressed_BUFG[3] ));
  FDRE #(
    .INIT(1'b0)) 
    \phase_accumulator_reg[3] 
       (.C(CLK),
        .CE(next_sample),
        .D(O[3]),
        .Q(\phase_accumulator_reg[22]_0 [3]),
        .R(\buttons_pressed_BUFG[3] ));
  FDRE #(
    .INIT(1'b0)) 
    \phase_accumulator_reg[4] 
       (.C(CLK),
        .CE(next_sample),
        .D(\phase_accumulator_reg[7]_0 [0]),
        .Q(\phase_accumulator_reg[22]_0 [4]),
        .R(\buttons_pressed_BUFG[3] ));
  FDRE #(
    .INIT(1'b0)) 
    \phase_accumulator_reg[5] 
       (.C(CLK),
        .CE(next_sample),
        .D(\phase_accumulator_reg[7]_0 [1]),
        .Q(\phase_accumulator_reg[22]_0 [5]),
        .R(\buttons_pressed_BUFG[3] ));
  FDRE #(
    .INIT(1'b0)) 
    \phase_accumulator_reg[6] 
       (.C(CLK),
        .CE(next_sample),
        .D(\phase_accumulator_reg[7]_0 [2]),
        .Q(\phase_accumulator_reg[22]_0 [6]),
        .R(\buttons_pressed_BUFG[3] ));
  FDRE #(
    .INIT(1'b0)) 
    \phase_accumulator_reg[7] 
       (.C(CLK),
        .CE(next_sample),
        .D(\phase_accumulator_reg[7]_0 [3]),
        .Q(\phase_accumulator_reg[22]_0 [7]),
        .R(\buttons_pressed_BUFG[3] ));
  FDRE #(
    .INIT(1'b0)) 
    \phase_accumulator_reg[8] 
       (.C(CLK),
        .CE(next_sample),
        .D(\phase_accumulator_reg[11]_0 [0]),
        .Q(\phase_accumulator_reg[22]_0 [8]),
        .R(\buttons_pressed_BUFG[3] ));
  FDRE #(
    .INIT(1'b0)) 
    \phase_accumulator_reg[9] 
       (.C(CLK),
        .CE(next_sample),
        .D(\phase_accumulator_reg[11]_0 [1]),
        .Q(\phase_accumulator_reg[22]_0 [9]),
        .R(\buttons_pressed_BUFG[3] ));
  LUT2 #(
    .INIT(4'h2)) 
    sel_i_2
       (.I0(sel__0[7]),
        .I1(\buttons_pressed[3] ),
        .O(ADDRARDADDR[7]));
  LUT2 #(
    .INIT(4'h2)) 
    sel_i_3
       (.I0(sel__0[6]),
        .I1(\buttons_pressed[3] ),
        .O(ADDRARDADDR[6]));
  LUT2 #(
    .INIT(4'h2)) 
    sel_i_4
       (.I0(sel__0[5]),
        .I1(\buttons_pressed[3] ),
        .O(ADDRARDADDR[5]));
  LUT2 #(
    .INIT(4'h2)) 
    sel_i_5
       (.I0(sel__0[4]),
        .I1(\buttons_pressed[3] ),
        .O(ADDRARDADDR[4]));
  LUT2 #(
    .INIT(4'h2)) 
    sel_i_6
       (.I0(sel__0[3]),
        .I1(\buttons_pressed[3] ),
        .O(ADDRARDADDR[3]));
  LUT2 #(
    .INIT(4'h2)) 
    sel_i_7
       (.I0(sel__0[2]),
        .I1(\buttons_pressed[3] ),
        .O(ADDRARDADDR[2]));
  LUT2 #(
    .INIT(4'h2)) 
    sel_i_8
       (.I0(sel__0[1]),
        .I1(\buttons_pressed[3] ),
        .O(ADDRARDADDR[1]));
  LUT2 #(
    .INIT(4'h2)) 
    sel_i_9
       (.I0(sel__0[0]),
        .I1(\buttons_pressed[3] ),
        .O(ADDRARDADDR[0]));
endmodule

module sq_wave_gen
   (CO,
    sq_wave_leds,
    \code_opt_reg[4]_0 ,
    \code_opt_reg[2]_0 ,
    sel,
    \code_opt_reg[4]_1 ,
    \buttons_pressed_BUFG[3] ,
    expmode_reg_0,
    CLK,
    \samples_reg[20]_0 ,
    DOADO,
    Q,
    next_sample,
    \buttons_pressed[3] ,
    E,
    SR);
  output [0:0]CO;
  output [0:0]sq_wave_leds;
  output \code_opt_reg[4]_0 ;
  output \code_opt_reg[2]_0 ;
  output sel;
  output \code_opt_reg[4]_1 ;
  input \buttons_pressed_BUFG[3] ;
  input expmode_reg_0;
  input CLK;
  input \samples_reg[20]_0 ;
  input [3:0]DOADO;
  input [0:0]Q;
  input next_sample;
  input \buttons_pressed[3] ;
  input [0:0]E;
  input [0:0]SR;

  wire \<const0> ;
  wire \<const1> ;
  wire CLK;
  wire [0:0]CO;
  wire [3:0]DOADO;
  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]SR;
  wire \buttons_pressed[3] ;
  wire \buttons_pressed_BUFG[3] ;
  wire \code_opt[2]_i_1_n_0 ;
  wire \code_opt[4]_i_1_n_0 ;
  wire \code_opt_reg[2]_0 ;
  wire \code_opt_reg[4]_0 ;
  wire \code_opt_reg[4]_1 ;
  wire cycles0_carry__0_n_0;
  wire cycles0_carry__0_n_1;
  wire cycles0_carry__0_n_2;
  wire cycles0_carry__0_n_3;
  wire cycles0_carry__0_n_4;
  wire cycles0_carry__0_n_5;
  wire cycles0_carry__0_n_6;
  wire cycles0_carry__0_n_7;
  wire cycles0_carry__1_n_0;
  wire cycles0_carry__1_n_1;
  wire cycles0_carry__1_n_2;
  wire cycles0_carry__1_n_3;
  wire cycles0_carry__1_n_4;
  wire cycles0_carry__1_n_5;
  wire cycles0_carry__1_n_6;
  wire cycles0_carry__1_n_7;
  wire cycles0_carry__2_n_0;
  wire cycles0_carry__2_n_1;
  wire cycles0_carry__2_n_2;
  wire cycles0_carry__2_n_3;
  wire cycles0_carry__2_n_4;
  wire cycles0_carry__2_n_5;
  wire cycles0_carry__2_n_6;
  wire cycles0_carry__2_n_7;
  wire cycles0_carry__3_n_1;
  wire cycles0_carry__3_n_2;
  wire cycles0_carry__3_n_3;
  wire cycles0_carry__3_n_4;
  wire cycles0_carry__3_n_5;
  wire cycles0_carry__3_n_6;
  wire cycles0_carry__3_n_7;
  wire cycles0_carry_n_0;
  wire cycles0_carry_n_1;
  wire cycles0_carry_n_2;
  wire cycles0_carry_n_3;
  wire cycles0_carry_n_4;
  wire cycles0_carry_n_5;
  wire cycles0_carry_n_6;
  wire cycles0_carry_n_7;
  wire cycles1_carry__0_i_1_n_0;
  wire cycles1_carry__0_i_2_n_0;
  wire cycles1_carry__0_i_3_n_0;
  wire cycles1_carry__0_n_2;
  wire cycles1_carry__0_n_3;
  wire cycles1_carry_i_1_n_0;
  wire cycles1_carry_i_2_n_0;
  wire cycles1_carry_i_3_n_0;
  wire cycles1_carry_i_4_n_0;
  wire cycles1_carry_n_0;
  wire cycles1_carry_n_1;
  wire cycles1_carry_n_2;
  wire cycles1_carry_n_3;
  wire \cycles[0]_i_1_n_0 ;
  wire \cycles_reg_n_0_[0] ;
  wire \cycles_reg_n_0_[10] ;
  wire \cycles_reg_n_0_[11] ;
  wire \cycles_reg_n_0_[12] ;
  wire \cycles_reg_n_0_[13] ;
  wire \cycles_reg_n_0_[14] ;
  wire \cycles_reg_n_0_[15] ;
  wire \cycles_reg_n_0_[16] ;
  wire \cycles_reg_n_0_[17] ;
  wire \cycles_reg_n_0_[18] ;
  wire \cycles_reg_n_0_[19] ;
  wire \cycles_reg_n_0_[1] ;
  wire \cycles_reg_n_0_[20] ;
  wire \cycles_reg_n_0_[2] ;
  wire \cycles_reg_n_0_[3] ;
  wire \cycles_reg_n_0_[4] ;
  wire \cycles_reg_n_0_[5] ;
  wire \cycles_reg_n_0_[6] ;
  wire \cycles_reg_n_0_[7] ;
  wire \cycles_reg_n_0_[8] ;
  wire \cycles_reg_n_0_[9] ;
  wire expmode_reg_0;
  wire high;
  wire high_i_1_n_0;
  wire next_sample;
  wire [20:0]p_1_in__0;
  wire [20:1]samples;
  wire [20:0]samples0;
  wire [20:0]samples00_in;
  wire \samples[11]_i_4_n_0 ;
  wire \samples[11]_i_5_n_0 ;
  wire \samples[11]_i_6_n_0 ;
  wire \samples[11]_i_7_n_0 ;
  wire \samples[15]_i_4_n_0 ;
  wire \samples[15]_i_5_n_0 ;
  wire \samples[15]_i_6_n_0 ;
  wire \samples[15]_i_7_n_0 ;
  wire \samples[19]_i_4_n_0 ;
  wire \samples[19]_i_5_n_0 ;
  wire \samples[19]_i_6_n_0 ;
  wire \samples[19]_i_7_n_0 ;
  wire \samples[20]_i_7_n_0 ;
  wire \samples[3]_i_4_n_0 ;
  wire \samples[3]_i_5_n_0 ;
  wire \samples[3]_i_6_n_0 ;
  wire \samples[3]_i_7_n_0 ;
  wire \samples[7]_i_4_n_0 ;
  wire \samples[7]_i_5_n_0 ;
  wire \samples[7]_i_6_n_0 ;
  wire \samples[7]_i_7_n_0 ;
  wire \samples_reg[11]_i_2_n_0 ;
  wire \samples_reg[11]_i_2_n_1 ;
  wire \samples_reg[11]_i_2_n_2 ;
  wire \samples_reg[11]_i_2_n_3 ;
  wire \samples_reg[11]_i_3_n_0 ;
  wire \samples_reg[11]_i_3_n_1 ;
  wire \samples_reg[11]_i_3_n_2 ;
  wire \samples_reg[11]_i_3_n_3 ;
  wire \samples_reg[15]_i_2_n_0 ;
  wire \samples_reg[15]_i_2_n_1 ;
  wire \samples_reg[15]_i_2_n_2 ;
  wire \samples_reg[15]_i_2_n_3 ;
  wire \samples_reg[15]_i_3_n_0 ;
  wire \samples_reg[15]_i_3_n_1 ;
  wire \samples_reg[15]_i_3_n_2 ;
  wire \samples_reg[15]_i_3_n_3 ;
  wire \samples_reg[19]_i_2_n_0 ;
  wire \samples_reg[19]_i_2_n_1 ;
  wire \samples_reg[19]_i_2_n_2 ;
  wire \samples_reg[19]_i_2_n_3 ;
  wire \samples_reg[19]_i_3_n_0 ;
  wire \samples_reg[19]_i_3_n_1 ;
  wire \samples_reg[19]_i_3_n_2 ;
  wire \samples_reg[19]_i_3_n_3 ;
  wire \samples_reg[20]_0 ;
  wire \samples_reg[3]_i_2_n_0 ;
  wire \samples_reg[3]_i_2_n_1 ;
  wire \samples_reg[3]_i_2_n_2 ;
  wire \samples_reg[3]_i_2_n_3 ;
  wire \samples_reg[3]_i_3_n_0 ;
  wire \samples_reg[3]_i_3_n_1 ;
  wire \samples_reg[3]_i_3_n_2 ;
  wire \samples_reg[3]_i_3_n_3 ;
  wire \samples_reg[7]_i_2_n_0 ;
  wire \samples_reg[7]_i_2_n_1 ;
  wire \samples_reg[7]_i_2_n_2 ;
  wire \samples_reg[7]_i_2_n_3 ;
  wire \samples_reg[7]_i_3_n_0 ;
  wire \samples_reg[7]_i_3_n_1 ;
  wire \samples_reg[7]_i_3_n_2 ;
  wire \samples_reg[7]_i_3_n_3 ;
  wire sel;
  wire [0:0]sq_wave_leds;
  wire [3:0]\NLW_samples_reg[3]_i_2_O_UNCONNECTED ;

  LUT5 #(
    .INIT(32'hFFFACCFA)) 
    AUD_PWM_OBUF_inst_i_2
       (.I0(\code_opt_reg[4]_0 ),
        .I1(DOADO[3]),
        .I2(\code_opt_reg[2]_0 ),
        .I3(Q),
        .I4(DOADO[2]),
        .O(\code_opt_reg[4]_1 ));
  LUT4 #(
    .INIT(16'hFCAC)) 
    AUD_PWM_OBUF_inst_i_4
       (.I0(DOADO[1]),
        .I1(\code_opt_reg[2]_0 ),
        .I2(Q),
        .I3(DOADO[0]),
        .O(sel));
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'hA2AE)) 
    \code_opt[2]_i_1 
       (.I0(\code_opt_reg[2]_0 ),
        .I1(next_sample),
        .I2(\buttons_pressed[3] ),
        .I3(high),
        .O(\code_opt[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'hAEA2)) 
    \code_opt[4]_i_1 
       (.I0(\code_opt_reg[4]_0 ),
        .I1(next_sample),
        .I2(\buttons_pressed[3] ),
        .I3(high),
        .O(\code_opt[4]_i_1_n_0 ));
  FDRE \code_opt_reg[2] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\code_opt[2]_i_1_n_0 ),
        .Q(\code_opt_reg[2]_0 ),
        .R(\<const0> ));
  FDRE \code_opt_reg[4] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\code_opt[4]_i_1_n_0 ),
        .Q(\code_opt_reg[4]_0 ),
        .R(\<const0> ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cycles0_carry
       (.CI(\<const0> ),
        .CO({cycles0_carry_n_0,cycles0_carry_n_1,cycles0_carry_n_2,cycles0_carry_n_3}),
        .CYINIT(\cycles_reg_n_0_[0] ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({cycles0_carry_n_4,cycles0_carry_n_5,cycles0_carry_n_6,cycles0_carry_n_7}),
        .S({\cycles_reg_n_0_[4] ,\cycles_reg_n_0_[3] ,\cycles_reg_n_0_[2] ,\cycles_reg_n_0_[1] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cycles0_carry__0
       (.CI(cycles0_carry_n_0),
        .CO({cycles0_carry__0_n_0,cycles0_carry__0_n_1,cycles0_carry__0_n_2,cycles0_carry__0_n_3}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({cycles0_carry__0_n_4,cycles0_carry__0_n_5,cycles0_carry__0_n_6,cycles0_carry__0_n_7}),
        .S({\cycles_reg_n_0_[8] ,\cycles_reg_n_0_[7] ,\cycles_reg_n_0_[6] ,\cycles_reg_n_0_[5] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cycles0_carry__1
       (.CI(cycles0_carry__0_n_0),
        .CO({cycles0_carry__1_n_0,cycles0_carry__1_n_1,cycles0_carry__1_n_2,cycles0_carry__1_n_3}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({cycles0_carry__1_n_4,cycles0_carry__1_n_5,cycles0_carry__1_n_6,cycles0_carry__1_n_7}),
        .S({\cycles_reg_n_0_[12] ,\cycles_reg_n_0_[11] ,\cycles_reg_n_0_[10] ,\cycles_reg_n_0_[9] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cycles0_carry__2
       (.CI(cycles0_carry__1_n_0),
        .CO({cycles0_carry__2_n_0,cycles0_carry__2_n_1,cycles0_carry__2_n_2,cycles0_carry__2_n_3}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({cycles0_carry__2_n_4,cycles0_carry__2_n_5,cycles0_carry__2_n_6,cycles0_carry__2_n_7}),
        .S({\cycles_reg_n_0_[16] ,\cycles_reg_n_0_[15] ,\cycles_reg_n_0_[14] ,\cycles_reg_n_0_[13] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cycles0_carry__3
       (.CI(cycles0_carry__2_n_0),
        .CO({cycles0_carry__3_n_1,cycles0_carry__3_n_2,cycles0_carry__3_n_3}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({cycles0_carry__3_n_4,cycles0_carry__3_n_5,cycles0_carry__3_n_6,cycles0_carry__3_n_7}),
        .S({\cycles_reg_n_0_[20] ,\cycles_reg_n_0_[19] ,\cycles_reg_n_0_[18] ,\cycles_reg_n_0_[17] }));
  CARRY4 cycles1_carry
       (.CI(\<const0> ),
        .CO({cycles1_carry_n_0,cycles1_carry_n_1,cycles1_carry_n_2,cycles1_carry_n_3}),
        .CYINIT(\<const1> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .S({cycles1_carry_i_1_n_0,cycles1_carry_i_2_n_0,cycles1_carry_i_3_n_0,cycles1_carry_i_4_n_0}));
  CARRY4 cycles1_carry__0
       (.CI(cycles1_carry_n_0),
        .CO({CO,cycles1_carry__0_n_2,cycles1_carry__0_n_3}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .S({\<const0> ,cycles1_carry__0_i_1_n_0,cycles1_carry__0_i_2_n_0,cycles1_carry__0_i_3_n_0}));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    cycles1_carry__0_i_1
       (.I0(samples[19]),
        .I1(\cycles_reg_n_0_[19] ),
        .I2(\cycles_reg_n_0_[20] ),
        .I3(samples[20]),
        .I4(\cycles_reg_n_0_[18] ),
        .I5(samples[18]),
        .O(cycles1_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    cycles1_carry__0_i_2
       (.I0(samples[15]),
        .I1(\cycles_reg_n_0_[15] ),
        .I2(\cycles_reg_n_0_[17] ),
        .I3(samples[17]),
        .I4(\cycles_reg_n_0_[16] ),
        .I5(samples[16]),
        .O(cycles1_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    cycles1_carry__0_i_3
       (.I0(samples[12]),
        .I1(\cycles_reg_n_0_[12] ),
        .I2(\cycles_reg_n_0_[14] ),
        .I3(samples[14]),
        .I4(\cycles_reg_n_0_[13] ),
        .I5(samples[13]),
        .O(cycles1_carry__0_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    cycles1_carry_i_1
       (.I0(samples[9]),
        .I1(\cycles_reg_n_0_[9] ),
        .I2(\cycles_reg_n_0_[11] ),
        .I3(samples[11]),
        .I4(\cycles_reg_n_0_[10] ),
        .I5(samples[10]),
        .O(cycles1_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    cycles1_carry_i_2
       (.I0(samples[6]),
        .I1(\cycles_reg_n_0_[6] ),
        .I2(\cycles_reg_n_0_[8] ),
        .I3(samples[8]),
        .I4(\cycles_reg_n_0_[7] ),
        .I5(samples[7]),
        .O(cycles1_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    cycles1_carry_i_3
       (.I0(samples[4]),
        .I1(\cycles_reg_n_0_[4] ),
        .I2(\cycles_reg_n_0_[5] ),
        .I3(samples[5]),
        .I4(\cycles_reg_n_0_[3] ),
        .I5(samples[3]),
        .O(cycles1_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    cycles1_carry_i_4
       (.I0(samples[1]),
        .I1(\cycles_reg_n_0_[1] ),
        .I2(\cycles_reg_n_0_[2] ),
        .I3(samples[2]),
        .I4(\cycles_reg_n_0_[0] ),
        .I5(samples00_in[0]),
        .O(cycles1_carry_i_4_n_0));
  LUT3 #(
    .INIT(8'h5E)) 
    \cycles[0]_i_1 
       (.I0(next_sample),
        .I1(CO),
        .I2(\cycles_reg_n_0_[0] ),
        .O(\cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_reg[0] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\cycles[0]_i_1_n_0 ),
        .Q(\cycles_reg_n_0_[0] ),
        .R(\buttons_pressed_BUFG[3] ));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_reg[10] 
       (.C(CLK),
        .CE(next_sample),
        .D(cycles0_carry__1_n_6),
        .Q(\cycles_reg_n_0_[10] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_reg[11] 
       (.C(CLK),
        .CE(next_sample),
        .D(cycles0_carry__1_n_5),
        .Q(\cycles_reg_n_0_[11] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_reg[12] 
       (.C(CLK),
        .CE(next_sample),
        .D(cycles0_carry__1_n_4),
        .Q(\cycles_reg_n_0_[12] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_reg[13] 
       (.C(CLK),
        .CE(next_sample),
        .D(cycles0_carry__2_n_7),
        .Q(\cycles_reg_n_0_[13] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_reg[14] 
       (.C(CLK),
        .CE(next_sample),
        .D(cycles0_carry__2_n_6),
        .Q(\cycles_reg_n_0_[14] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_reg[15] 
       (.C(CLK),
        .CE(next_sample),
        .D(cycles0_carry__2_n_5),
        .Q(\cycles_reg_n_0_[15] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_reg[16] 
       (.C(CLK),
        .CE(next_sample),
        .D(cycles0_carry__2_n_4),
        .Q(\cycles_reg_n_0_[16] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_reg[17] 
       (.C(CLK),
        .CE(next_sample),
        .D(cycles0_carry__3_n_7),
        .Q(\cycles_reg_n_0_[17] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_reg[18] 
       (.C(CLK),
        .CE(next_sample),
        .D(cycles0_carry__3_n_6),
        .Q(\cycles_reg_n_0_[18] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_reg[19] 
       (.C(CLK),
        .CE(next_sample),
        .D(cycles0_carry__3_n_5),
        .Q(\cycles_reg_n_0_[19] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_reg[1] 
       (.C(CLK),
        .CE(next_sample),
        .D(cycles0_carry_n_7),
        .Q(\cycles_reg_n_0_[1] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_reg[20] 
       (.C(CLK),
        .CE(next_sample),
        .D(cycles0_carry__3_n_4),
        .Q(\cycles_reg_n_0_[20] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_reg[2] 
       (.C(CLK),
        .CE(next_sample),
        .D(cycles0_carry_n_6),
        .Q(\cycles_reg_n_0_[2] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_reg[3] 
       (.C(CLK),
        .CE(next_sample),
        .D(cycles0_carry_n_5),
        .Q(\cycles_reg_n_0_[3] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_reg[4] 
       (.C(CLK),
        .CE(next_sample),
        .D(cycles0_carry_n_4),
        .Q(\cycles_reg_n_0_[4] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_reg[5] 
       (.C(CLK),
        .CE(next_sample),
        .D(cycles0_carry__0_n_7),
        .Q(\cycles_reg_n_0_[5] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_reg[6] 
       (.C(CLK),
        .CE(next_sample),
        .D(cycles0_carry__0_n_6),
        .Q(\cycles_reg_n_0_[6] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_reg[7] 
       (.C(CLK),
        .CE(next_sample),
        .D(cycles0_carry__0_n_5),
        .Q(\cycles_reg_n_0_[7] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_reg[8] 
       (.C(CLK),
        .CE(next_sample),
        .D(cycles0_carry__0_n_4),
        .Q(\cycles_reg_n_0_[8] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_reg[9] 
       (.C(CLK),
        .CE(next_sample),
        .D(cycles0_carry__1_n_7),
        .Q(\cycles_reg_n_0_[9] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    expmode_reg
       (.C(CLK),
        .CE(\<const1> ),
        .D(expmode_reg_0),
        .Q(sq_wave_leds),
        .R(\buttons_pressed_BUFG[3] ));
  LUT2 #(
    .INIT(4'h6)) 
    high_i_1
       (.I0(CO),
        .I1(high),
        .O(high_i_1_n_0));
  FDSE #(
    .INIT(1'b0)) 
    high_reg
       (.C(CLK),
        .CE(\<const1> ),
        .D(high_i_1_n_0),
        .Q(high),
        .S(\buttons_pressed_BUFG[3] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \samples[0]_i_1 
       (.I0(samples00_in[0]),
        .I1(\samples_reg[20]_0 ),
        .I2(samples[1]),
        .I3(sq_wave_leds),
        .I4(samples0[0]),
        .O(p_1_in__0[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \samples[10]_i_1 
       (.I0(samples[9]),
        .I1(samples00_in[10]),
        .I2(\samples_reg[20]_0 ),
        .I3(samples[11]),
        .I4(sq_wave_leds),
        .I5(samples0[10]),
        .O(p_1_in__0[10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \samples[11]_i_1 
       (.I0(samples[10]),
        .I1(samples00_in[11]),
        .I2(\samples_reg[20]_0 ),
        .I3(samples[12]),
        .I4(sq_wave_leds),
        .I5(samples0[11]),
        .O(p_1_in__0[11]));
  LUT1 #(
    .INIT(2'h1)) 
    \samples[11]_i_4 
       (.I0(samples[11]),
        .O(\samples[11]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \samples[11]_i_5 
       (.I0(samples[10]),
        .O(\samples[11]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \samples[11]_i_6 
       (.I0(samples[9]),
        .O(\samples[11]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \samples[11]_i_7 
       (.I0(samples[8]),
        .O(\samples[11]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \samples[12]_i_1 
       (.I0(samples[11]),
        .I1(samples00_in[12]),
        .I2(\samples_reg[20]_0 ),
        .I3(samples[13]),
        .I4(sq_wave_leds),
        .I5(samples0[12]),
        .O(p_1_in__0[12]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \samples[13]_i_1 
       (.I0(samples[12]),
        .I1(samples00_in[13]),
        .I2(\samples_reg[20]_0 ),
        .I3(samples[14]),
        .I4(sq_wave_leds),
        .I5(samples0[13]),
        .O(p_1_in__0[13]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \samples[14]_i_1 
       (.I0(samples[13]),
        .I1(samples00_in[14]),
        .I2(\samples_reg[20]_0 ),
        .I3(samples[15]),
        .I4(sq_wave_leds),
        .I5(samples0[14]),
        .O(p_1_in__0[14]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \samples[15]_i_1 
       (.I0(samples[14]),
        .I1(samples00_in[15]),
        .I2(\samples_reg[20]_0 ),
        .I3(samples[16]),
        .I4(sq_wave_leds),
        .I5(samples0[15]),
        .O(p_1_in__0[15]));
  LUT1 #(
    .INIT(2'h1)) 
    \samples[15]_i_4 
       (.I0(samples[15]),
        .O(\samples[15]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \samples[15]_i_5 
       (.I0(samples[14]),
        .O(\samples[15]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \samples[15]_i_6 
       (.I0(samples[13]),
        .O(\samples[15]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \samples[15]_i_7 
       (.I0(samples[12]),
        .O(\samples[15]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \samples[16]_i_1 
       (.I0(samples[15]),
        .I1(samples00_in[16]),
        .I2(\samples_reg[20]_0 ),
        .I3(samples[17]),
        .I4(sq_wave_leds),
        .I5(samples0[16]),
        .O(p_1_in__0[16]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \samples[17]_i_1 
       (.I0(samples[16]),
        .I1(samples00_in[17]),
        .I2(\samples_reg[20]_0 ),
        .I3(samples[18]),
        .I4(sq_wave_leds),
        .I5(samples0[17]),
        .O(p_1_in__0[17]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \samples[18]_i_1 
       (.I0(samples[17]),
        .I1(samples00_in[18]),
        .I2(\samples_reg[20]_0 ),
        .I3(samples[19]),
        .I4(sq_wave_leds),
        .I5(samples0[18]),
        .O(p_1_in__0[18]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \samples[19]_i_1 
       (.I0(samples[18]),
        .I1(samples00_in[19]),
        .I2(\samples_reg[20]_0 ),
        .I3(samples[20]),
        .I4(sq_wave_leds),
        .I5(samples0[19]),
        .O(p_1_in__0[19]));
  LUT1 #(
    .INIT(2'h1)) 
    \samples[19]_i_4 
       (.I0(samples[19]),
        .O(\samples[19]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \samples[19]_i_5 
       (.I0(samples[18]),
        .O(\samples[19]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \samples[19]_i_6 
       (.I0(samples[17]),
        .O(\samples[19]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \samples[19]_i_7 
       (.I0(samples[16]),
        .O(\samples[19]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \samples[1]_i_1 
       (.I0(samples00_in[0]),
        .I1(samples00_in[1]),
        .I2(\samples_reg[20]_0 ),
        .I3(samples[2]),
        .I4(sq_wave_leds),
        .I5(samples0[1]),
        .O(p_1_in__0[1]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \samples[20]_i_2 
       (.I0(samples[19]),
        .I1(samples00_in[20]),
        .I2(\samples_reg[20]_0 ),
        .I3(samples0[20]),
        .I4(sq_wave_leds),
        .O(p_1_in__0[20]));
  LUT1 #(
    .INIT(2'h1)) 
    \samples[20]_i_7 
       (.I0(samples[20]),
        .O(\samples[20]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \samples[2]_i_1 
       (.I0(samples[1]),
        .I1(samples00_in[2]),
        .I2(\samples_reg[20]_0 ),
        .I3(samples[3]),
        .I4(sq_wave_leds),
        .I5(samples0[2]),
        .O(p_1_in__0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \samples[3]_i_1 
       (.I0(samples[2]),
        .I1(samples00_in[3]),
        .I2(\samples_reg[20]_0 ),
        .I3(samples[4]),
        .I4(sq_wave_leds),
        .I5(samples0[3]),
        .O(p_1_in__0[3]));
  LUT1 #(
    .INIT(2'h1)) 
    \samples[3]_i_4 
       (.I0(samples[3]),
        .O(\samples[3]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \samples[3]_i_5 
       (.I0(samples[1]),
        .O(\samples[3]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \samples[3]_i_6 
       (.I0(samples[2]),
        .O(\samples[3]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \samples[3]_i_7 
       (.I0(samples[1]),
        .O(\samples[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \samples[4]_i_1 
       (.I0(samples[3]),
        .I1(samples00_in[4]),
        .I2(\samples_reg[20]_0 ),
        .I3(samples[5]),
        .I4(sq_wave_leds),
        .I5(samples0[4]),
        .O(p_1_in__0[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \samples[5]_i_1 
       (.I0(samples[4]),
        .I1(samples00_in[5]),
        .I2(\samples_reg[20]_0 ),
        .I3(samples[6]),
        .I4(sq_wave_leds),
        .I5(samples0[5]),
        .O(p_1_in__0[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \samples[6]_i_1 
       (.I0(samples[5]),
        .I1(samples00_in[6]),
        .I2(\samples_reg[20]_0 ),
        .I3(samples[7]),
        .I4(sq_wave_leds),
        .I5(samples0[6]),
        .O(p_1_in__0[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \samples[7]_i_1 
       (.I0(samples[6]),
        .I1(samples00_in[7]),
        .I2(\samples_reg[20]_0 ),
        .I3(samples[8]),
        .I4(sq_wave_leds),
        .I5(samples0[7]),
        .O(p_1_in__0[7]));
  LUT1 #(
    .INIT(2'h1)) 
    \samples[7]_i_4 
       (.I0(samples[7]),
        .O(\samples[7]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \samples[7]_i_5 
       (.I0(samples[6]),
        .O(\samples[7]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \samples[7]_i_6 
       (.I0(samples[5]),
        .O(\samples[7]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \samples[7]_i_7 
       (.I0(samples[4]),
        .O(\samples[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \samples[8]_i_1 
       (.I0(samples[7]),
        .I1(samples00_in[8]),
        .I2(\samples_reg[20]_0 ),
        .I3(samples[9]),
        .I4(sq_wave_leds),
        .I5(samples0[8]),
        .O(p_1_in__0[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \samples[9]_i_1 
       (.I0(samples[8]),
        .I1(samples00_in[9]),
        .I2(\samples_reg[20]_0 ),
        .I3(samples[10]),
        .I4(sq_wave_leds),
        .I5(samples0[9]),
        .O(p_1_in__0[9]));
  FDSE #(
    .INIT(1'b1)) 
    \samples_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in__0[0]),
        .Q(samples00_in[0]),
        .S(\buttons_pressed_BUFG[3] ));
  FDRE #(
    .INIT(1'b0)) 
    \samples_reg[10] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in__0[10]),
        .Q(samples[10]),
        .R(\buttons_pressed_BUFG[3] ));
  FDRE #(
    .INIT(1'b0)) 
    \samples_reg[11] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in__0[11]),
        .Q(samples[11]),
        .R(\buttons_pressed_BUFG[3] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \samples_reg[11]_i_2 
       (.CI(\samples_reg[7]_i_2_n_0 ),
        .CO({\samples_reg[11]_i_2_n_0 ,\samples_reg[11]_i_2_n_1 ,\samples_reg[11]_i_2_n_2 ,\samples_reg[11]_i_2_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(samples00_in[11:8]),
        .S(samples[11:8]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \samples_reg[11]_i_3 
       (.CI(\samples_reg[7]_i_3_n_0 ),
        .CO({\samples_reg[11]_i_3_n_0 ,\samples_reg[11]_i_3_n_1 ,\samples_reg[11]_i_3_n_2 ,\samples_reg[11]_i_3_n_3 }),
        .CYINIT(\<const0> ),
        .DI(samples[11:8]),
        .O(samples0[11:8]),
        .S({\samples[11]_i_4_n_0 ,\samples[11]_i_5_n_0 ,\samples[11]_i_6_n_0 ,\samples[11]_i_7_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \samples_reg[12] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in__0[12]),
        .Q(samples[12]),
        .R(\buttons_pressed_BUFG[3] ));
  FDRE #(
    .INIT(1'b0)) 
    \samples_reg[13] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in__0[13]),
        .Q(samples[13]),
        .R(\buttons_pressed_BUFG[3] ));
  FDRE #(
    .INIT(1'b0)) 
    \samples_reg[14] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in__0[14]),
        .Q(samples[14]),
        .R(\buttons_pressed_BUFG[3] ));
  FDRE #(
    .INIT(1'b0)) 
    \samples_reg[15] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in__0[15]),
        .Q(samples[15]),
        .R(\buttons_pressed_BUFG[3] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \samples_reg[15]_i_2 
       (.CI(\samples_reg[11]_i_2_n_0 ),
        .CO({\samples_reg[15]_i_2_n_0 ,\samples_reg[15]_i_2_n_1 ,\samples_reg[15]_i_2_n_2 ,\samples_reg[15]_i_2_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(samples00_in[15:12]),
        .S(samples[15:12]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \samples_reg[15]_i_3 
       (.CI(\samples_reg[11]_i_3_n_0 ),
        .CO({\samples_reg[15]_i_3_n_0 ,\samples_reg[15]_i_3_n_1 ,\samples_reg[15]_i_3_n_2 ,\samples_reg[15]_i_3_n_3 }),
        .CYINIT(\<const0> ),
        .DI(samples[15:12]),
        .O(samples0[15:12]),
        .S({\samples[15]_i_4_n_0 ,\samples[15]_i_5_n_0 ,\samples[15]_i_6_n_0 ,\samples[15]_i_7_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \samples_reg[16] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in__0[16]),
        .Q(samples[16]),
        .R(\buttons_pressed_BUFG[3] ));
  FDRE #(
    .INIT(1'b0)) 
    \samples_reg[17] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in__0[17]),
        .Q(samples[17]),
        .R(\buttons_pressed_BUFG[3] ));
  FDRE #(
    .INIT(1'b0)) 
    \samples_reg[18] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in__0[18]),
        .Q(samples[18]),
        .R(\buttons_pressed_BUFG[3] ));
  FDRE #(
    .INIT(1'b0)) 
    \samples_reg[19] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in__0[19]),
        .Q(samples[19]),
        .R(\buttons_pressed_BUFG[3] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \samples_reg[19]_i_2 
       (.CI(\samples_reg[15]_i_2_n_0 ),
        .CO({\samples_reg[19]_i_2_n_0 ,\samples_reg[19]_i_2_n_1 ,\samples_reg[19]_i_2_n_2 ,\samples_reg[19]_i_2_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(samples00_in[19:16]),
        .S(samples[19:16]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \samples_reg[19]_i_3 
       (.CI(\samples_reg[15]_i_3_n_0 ),
        .CO({\samples_reg[19]_i_3_n_0 ,\samples_reg[19]_i_3_n_1 ,\samples_reg[19]_i_3_n_2 ,\samples_reg[19]_i_3_n_3 }),
        .CYINIT(\<const0> ),
        .DI(samples[19:16]),
        .O(samples0[19:16]),
        .S({\samples[19]_i_4_n_0 ,\samples[19]_i_5_n_0 ,\samples[19]_i_6_n_0 ,\samples[19]_i_7_n_0 }));
  FDSE #(
    .INIT(1'b1)) 
    \samples_reg[1] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in__0[1]),
        .Q(samples[1]),
        .S(\buttons_pressed_BUFG[3] ));
  FDRE #(
    .INIT(1'b0)) 
    \samples_reg[20] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in__0[20]),
        .Q(samples[20]),
        .R(\buttons_pressed_BUFG[3] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \samples_reg[20]_i_4 
       (.CI(\samples_reg[19]_i_2_n_0 ),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(samples00_in[20]),
        .S({\<const0> ,\<const0> ,\<const0> ,samples[20]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \samples_reg[20]_i_6 
       (.CI(\samples_reg[19]_i_3_n_0 ),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(samples0[20]),
        .S({\<const0> ,\<const0> ,\<const0> ,\samples[20]_i_7_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \samples_reg[2] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in__0[2]),
        .Q(samples[2]),
        .R(\buttons_pressed_BUFG[3] ));
  FDSE #(
    .INIT(1'b1)) 
    \samples_reg[3] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in__0[3]),
        .Q(samples[3]),
        .S(\buttons_pressed_BUFG[3] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \samples_reg[3]_i_2 
       (.CI(\<const0> ),
        .CO({\samples_reg[3]_i_2_n_0 ,\samples_reg[3]_i_2_n_1 ,\samples_reg[3]_i_2_n_2 ,\samples_reg[3]_i_2_n_3 }),
        .CYINIT(\<const0> ),
        .DI({samples[3],\<const0> ,samples[1],\<const0> }),
        .O({samples00_in[3:1],\NLW_samples_reg[3]_i_2_O_UNCONNECTED [0]}),
        .S({\samples[3]_i_4_n_0 ,samples[2],\samples[3]_i_5_n_0 ,samples00_in[0]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \samples_reg[3]_i_3 
       (.CI(\<const0> ),
        .CO({\samples_reg[3]_i_3_n_0 ,\samples_reg[3]_i_3_n_1 ,\samples_reg[3]_i_3_n_2 ,\samples_reg[3]_i_3_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,samples[2:1],\<const0> }),
        .O(samples0[3:0]),
        .S({samples[3],\samples[3]_i_6_n_0 ,\samples[3]_i_7_n_0 ,samples00_in[0]}));
  FDRE #(
    .INIT(1'b0)) 
    \samples_reg[4] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in__0[4]),
        .Q(samples[4]),
        .R(\buttons_pressed_BUFG[3] ));
  FDRE #(
    .INIT(1'b0)) 
    \samples_reg[5] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in__0[5]),
        .Q(samples[5]),
        .R(\buttons_pressed_BUFG[3] ));
  FDRE #(
    .INIT(1'b0)) 
    \samples_reg[6] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in__0[6]),
        .Q(samples[6]),
        .R(\buttons_pressed_BUFG[3] ));
  FDSE #(
    .INIT(1'b1)) 
    \samples_reg[7] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in__0[7]),
        .Q(samples[7]),
        .S(\buttons_pressed_BUFG[3] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \samples_reg[7]_i_2 
       (.CI(\samples_reg[3]_i_2_n_0 ),
        .CO({\samples_reg[7]_i_2_n_0 ,\samples_reg[7]_i_2_n_1 ,\samples_reg[7]_i_2_n_2 ,\samples_reg[7]_i_2_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(samples00_in[7:4]),
        .S(samples[7:4]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \samples_reg[7]_i_3 
       (.CI(\samples_reg[3]_i_3_n_0 ),
        .CO({\samples_reg[7]_i_3_n_0 ,\samples_reg[7]_i_3_n_1 ,\samples_reg[7]_i_3_n_2 ,\samples_reg[7]_i_3_n_3 }),
        .CYINIT(\<const0> ),
        .DI(samples[7:4]),
        .O(samples0[7:4]),
        .S({\samples[7]_i_4_n_0 ,\samples[7]_i_5_n_0 ,\samples[7]_i_6_n_0 ,\samples[7]_i_7_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \samples_reg[8] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in__0[8]),
        .Q(samples[8]),
        .R(\buttons_pressed_BUFG[3] ));
  FDRE #(
    .INIT(1'b0)) 
    \samples_reg[9] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in__0[9]),
        .Q(samples[9]),
        .R(\buttons_pressed_BUFG[3] ));
endmodule

module synchronizer
   (Q,
    \tmp1_reg[3]_0 ,
    CLK_125MHZ_FPGA_IBUF_BUFG);
  output [3:0]Q;
  input [3:0]\tmp1_reg[3]_0 ;
  input CLK_125MHZ_FPGA_IBUF_BUFG;

  wire \<const0> ;
  wire \<const1> ;
  wire CLK_125MHZ_FPGA_IBUF_BUFG;
  wire [3:0]Q;
  wire [3:0]tmp1;
  wire [3:0]\tmp1_reg[3]_0 ;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  FDRE \tmp1_reg[0] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\tmp1_reg[3]_0 [0]),
        .Q(tmp1[0]),
        .R(\<const0> ));
  FDRE \tmp1_reg[1] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\tmp1_reg[3]_0 [1]),
        .Q(tmp1[1]),
        .R(\<const0> ));
  FDRE \tmp1_reg[2] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\tmp1_reg[3]_0 [2]),
        .Q(tmp1[2]),
        .R(\<const0> ));
  FDRE \tmp1_reg[3] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\tmp1_reg[3]_0 [3]),
        .Q(tmp1[3]),
        .R(\<const0> ));
  FDRE \tmp2_reg[0] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(tmp1[0]),
        .Q(Q[0]),
        .R(\<const0> ));
  FDRE \tmp2_reg[1] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(tmp1[1]),
        .Q(Q[1]),
        .R(\<const0> ));
  FDRE \tmp2_reg[2] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(tmp1[2]),
        .Q(Q[2]),
        .R(\<const0> ));
  FDRE \tmp2_reg[3] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(tmp1[3]),
        .Q(Q[3]),
        .R(\<const0> ));
endmodule

(* ORIG_REF_NAME = "synchronizer" *) 
module synchronizer__parameterized0
   (AUD_PWM_OBUF,
    Q,
    S,
    sel,
    \tmp2_reg[0]_0 ,
    E,
    CO,
    AUD_PWM,
    AUD_PWM_0,
    DOADO,
    pwm0_carry__0_i_1,
    pwm0_carry__0,
    pwm0_carry__0_i_3_0,
    \samples_reg[20] ,
    \samples_reg[0] ,
    D,
    CLK);
  output AUD_PWM_OBUF;
  output [1:0]Q;
  output [0:0]S;
  output sel;
  output \tmp2_reg[0]_0 ;
  output [0:0]E;
  input [0:0]CO;
  input AUD_PWM;
  input AUD_PWM_0;
  input [7:0]DOADO;
  input pwm0_carry__0_i_1;
  input [1:0]pwm0_carry__0;
  input pwm0_carry__0_i_3_0;
  input \samples_reg[20] ;
  input \samples_reg[0] ;
  input [1:0]D;
  input CLK;

  wire \<const0> ;
  wire \<const1> ;
  wire AUD_PWM;
  wire AUD_PWM_0;
  wire AUD_PWM_OBUF;
  wire AUD_PWM_OBUF_inst_i_3_n_0;
  wire AUD_PWM_OBUF_inst_i_5_n_0;
  wire AUD_PWM_OBUF_inst_i_6_n_0;
  wire CLK;
  wire [0:0]CO;
  wire [1:0]D;
  wire [7:0]DOADO;
  wire [0:0]E;
  wire [1:0]Q;
  wire [0:0]S;
  wire [1:0]pwm0_carry__0;
  wire pwm0_carry__0_i_1;
  wire pwm0_carry__0_i_3_0;
  wire pwm0_carry__0_i_5_n_0;
  wire \samples_reg[0] ;
  wire \samples_reg[20] ;
  wire sel;
  wire \tmp1_reg_n_0_[0] ;
  wire \tmp1_reg_n_0_[1] ;
  wire \tmp2_reg[0]_0 ;

  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAA8A)) 
    AUD_PWM_OBUF_inst_i_1
       (.I0(CO),
        .I1(AUD_PWM),
        .I2(AUD_PWM_OBUF_inst_i_3_n_0),
        .I3(AUD_PWM_0),
        .I4(AUD_PWM_OBUF_inst_i_5_n_0),
        .I5(AUD_PWM_OBUF_inst_i_6_n_0),
        .O(AUD_PWM_OBUF));
  LUT5 #(
    .INIT(32'h00000100)) 
    AUD_PWM_OBUF_inst_i_3
       (.I0(DOADO[0]),
        .I1(DOADO[1]),
        .I2(DOADO[2]),
        .I3(Q[0]),
        .I4(DOADO[3]),
        .O(AUD_PWM_OBUF_inst_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    AUD_PWM_OBUF_inst_i_5
       (.I0(DOADO[5]),
        .I1(Q[0]),
        .I2(pwm0_carry__0_i_1),
        .O(AUD_PWM_OBUF_inst_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    AUD_PWM_OBUF_inst_i_6
       (.I0(DOADO[4]),
        .I1(Q[0]),
        .I2(pwm0_carry__0_i_1),
        .O(AUD_PWM_OBUF_inst_i_6_n_0));
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT6 #(
    .INIT(64'hB84700000000B847)) 
    pwm0_carry__0_i_3
       (.I0(DOADO[7]),
        .I1(Q[0]),
        .I2(pwm0_carry__0_i_1),
        .I3(pwm0_carry__0[1]),
        .I4(pwm0_carry__0_i_5_n_0),
        .I5(pwm0_carry__0[0]),
        .O(S));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    pwm0_carry__0_i_4
       (.I0(DOADO[7]),
        .I1(Q[0]),
        .I2(pwm0_carry__0_i_1),
        .O(sel));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    pwm0_carry__0_i_5
       (.I0(DOADO[6]),
        .I1(Q[0]),
        .I2(pwm0_carry__0_i_3_0),
        .O(pwm0_carry__0_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \samples[20]_i_1 
       (.I0(Q[0]),
        .I1(\samples_reg[0] ),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \samples[20]_i_5 
       (.I0(Q[0]),
        .I1(\samples_reg[20] ),
        .O(\tmp2_reg[0]_0 ));
  FDRE \tmp1_reg[0] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(D[0]),
        .Q(\tmp1_reg_n_0_[0] ),
        .R(\<const0> ));
  FDRE \tmp1_reg[1] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(D[1]),
        .Q(\tmp1_reg_n_0_[1] ),
        .R(\<const0> ));
  FDRE \tmp2_reg[0] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\tmp1_reg_n_0_[0] ),
        .Q(Q[0]),
        .R(\<const0> ));
  FDRE \tmp2_reg[1] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\tmp1_reg_n_0_[1] ),
        .Q(Q[1]),
        .R(\<const0> ));
endmodule

(* B_PULSE_CNT_MAX = "200" *) (* B_SAMPLE_CNT_MAX = "62500" *) 
(* STRUCTURAL_NETLIST = "yes" *)
module z1top
   (CLK_125MHZ_FPGA,
    BUTTONS,
    SWITCHES,
    LEDS,
    AUD_PWM,
    AUD_SD);
  input CLK_125MHZ_FPGA;
  input [3:0]BUTTONS;
  input [1:0]SWITCHES;
  output [5:0]LEDS;
  output AUD_PWM;
  output AUD_SD;

  wire \<const0> ;
  wire \<const1> ;
  wire AUD_PWM;
  wire AUD_PWM_OBUF;
  wire AUD_SD;
  wire AUD_SD_OBUF;
  wire [3:0]BUTTONS;
  wire [3:0]BUTTONS_IBUF;
  wire CLK_125MHZ_FPGA;
  wire CLK_125MHZ_FPGA_IBUF;
  wire CLK_125MHZ_FPGA_IBUF_BUFG;
  wire [5:0]LEDS;
  wire [5:0]LEDS_OBUF;
  wire [1:0]SWITCHES;
  wire [1:0]SWITCHES_IBUF;
  wire bp_n_0;
  wire bp_n_10;
  wire bp_n_11;
  wire bp_n_12;
  wire bp_n_13;
  wire bp_n_14;
  wire bp_n_15;
  wire bp_n_16;
  wire bp_n_17;
  wire bp_n_18;
  wire bp_n_19;
  wire bp_n_2;
  wire bp_n_20;
  wire bp_n_21;
  wire bp_n_22;
  wire bp_n_23;
  wire bp_n_3;
  wire bp_n_4;
  wire bp_n_5;
  wire bp_n_6;
  wire bp_n_7;
  wire bp_n_8;
  wire bp_n_9;
  wire \buttons_pressed[3] ;
  wire \buttons_pressed_BUFG[3] ;
  wire [9:8]cycles;
  wire [14:3]d_out;
  wire dac_n_1;
  wire [23:0]fcw;
  wire fsm_n_18;
  wire fsm_n_19;
  wire fsm_n_20;
  wire fsm_n_21;
  wire fsm_n_46;
  wire fsm_n_47;
  wire fsm_n_48;
  wire fsm_n_49;
  wire fsm_n_50;
  wire fsm_n_51;
  wire fsm_n_52;
  wire fsm_n_53;
  wire fsm_n_54;
  wire fsm_n_55;
  wire fsm_n_56;
  wire fsm_n_57;
  wire fsm_n_58;
  wire fsm_n_59;
  wire fsm_n_60;
  wire fsm_n_61;
  wire fsm_n_62;
  wire fsm_n_63;
  wire fsm_n_64;
  wire fsm_n_65;
  wire gen_n_0;
  wire gen_n_2;
  wire gen_n_3;
  wire gen_n_4;
  wire gen_n_5;
  wire nco_n_23;
  wire nco_n_24;
  wire nco_n_25;
  wire nco_n_26;
  wire nco_n_27;
  wire nco_n_28;
  wire nco_n_29;
  wire nco_n_30;
  wire nco_n_31;
  wire next_sample;
  wire [22:0]phase_accumulator_reg;
  wire sel_n_10;
  wire sel_n_11;
  wire sel_n_12;
  wire sel_n_13;
  wire sel_n_14;
  wire sel_n_15;
  wire sel_n_6;
  wire sel_n_7;
  wire sel_n_8;
  wire sel_n_9;
  wire [0:0]sq_wave_leds;
  wire switch_sync_n_3;
  wire switch_sync_n_4;
  wire switch_sync_n_5;
  wire switch_sync_n_6;
  wire [0:0]switches_sync;

  OBUF AUD_PWM_OBUF_inst
       (.I(AUD_PWM_OBUF),
        .O(AUD_PWM));
  OBUF AUD_SD_OBUF_inst
       (.I(AUD_SD_OBUF),
        .O(AUD_SD));
  IBUF \BUTTONS_IBUF[0]_inst 
       (.I(BUTTONS[0]),
        .O(BUTTONS_IBUF[0]));
  IBUF \BUTTONS_IBUF[1]_inst 
       (.I(BUTTONS[1]),
        .O(BUTTONS_IBUF[1]));
  IBUF \BUTTONS_IBUF[2]_inst 
       (.I(BUTTONS[2]),
        .O(BUTTONS_IBUF[2]));
  IBUF \BUTTONS_IBUF[3]_inst 
       (.I(BUTTONS[3]),
        .O(BUTTONS_IBUF[3]));
  BUFG CLK_125MHZ_FPGA_IBUF_BUFG_inst
       (.I(CLK_125MHZ_FPGA_IBUF),
        .O(CLK_125MHZ_FPGA_IBUF_BUFG));
  IBUF CLK_125MHZ_FPGA_IBUF_inst
       (.I(CLK_125MHZ_FPGA),
        .O(CLK_125MHZ_FPGA_IBUF));
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
       (.I(LEDS_OBUF[3]),
        .O(LEDS[3]));
  OBUF \LEDS_OBUF[4]_inst 
       (.I(LEDS_OBUF[4]),
        .O(LEDS[4]));
  OBUF \LEDS_OBUF[5]_inst 
       (.I(LEDS_OBUF[5]),
        .O(LEDS[5]));
  IBUF \SWITCHES_IBUF[0]_inst 
       (.I(SWITCHES[0]),
        .O(SWITCHES_IBUF[0]));
  IBUF \SWITCHES_IBUF[1]_inst 
       (.I(SWITCHES[1]),
        .O(SWITCHES_IBUF[1]));
  VCC VCC
       (.P(\<const1> ));
  button_parser bp
       (.CLK_125MHZ_FPGA_IBUF_BUFG(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CO(gen_n_0),
        .D({bp_n_2,bp_n_3}),
        .DI(bp_n_9),
        .Q(LEDS_OBUF[5:4]),
        .S({bp_n_10,bp_n_11,bp_n_12}),
        .SR(bp_n_7),
        .\buttons_pressed[3] (\buttons_pressed[3] ),
        .\curr_state_reg[0] (bp_n_4),
        .d_out(d_out),
        .\d_out_reg[13] ({bp_n_16,bp_n_17,bp_n_18,bp_n_19}),
        .\d_out_reg[14] (bp_n_15),
        .expmode_reg(switches_sync),
        .next_sample(next_sample),
        .next_sample_reg(bp_n_0),
        .sq_wave_leds(sq_wave_leds),
        .\temp_reg[0] (bp_n_6),
        .\temp_reg[1] (bp_n_5),
        .\temp_reg[2] (bp_n_8),
        .\temp_reg[2]_0 (bp_n_14),
        .\tmp1_reg[3] (BUTTONS_IBUF),
        .\tmp2_reg[0] (bp_n_13),
        .\tmp2_reg[0]_0 ({bp_n_20,bp_n_21,bp_n_22,bp_n_23}));
  BUFG \buttons_pressed_BUFG[3]_inst 
       (.I(\buttons_pressed[3] ),
        .O(\buttons_pressed_BUFG[3] ));
  dac dac
       (.CLK(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CO(dac_n_1),
        .DOADO({sel_n_7,sel_n_8,sel_n_9,sel_n_10,sel_n_11,sel_n_12,sel_n_13,sel_n_14,sel_n_15}),
        .Q(cycles),
        .S(switch_sync_n_3),
        .\buttons_pressed_BUFG[3] (\buttons_pressed_BUFG[3] ),
        .next_sample(next_sample),
        .pwm0_carry_0(gen_n_2),
        .pwm0_carry__0_0(switches_sync),
        .pwm0_carry__0_1(gen_n_3),
        .pwm0_carry__0_2(switch_sync_n_4));
  fsm fsm
       (.CLK(CLK_125MHZ_FPGA_IBUF_BUFG),
        .D({bp_n_2,bp_n_3}),
        .DI(bp_n_9),
        .E(bp_n_4),
        .LEDS_OBUF(LEDS_OBUF),
        .O({fsm_n_18,fsm_n_19,fsm_n_20,fsm_n_21}),
        .Q(switches_sync),
        .S({bp_n_10,bp_n_11,bp_n_12}),
        .\buttons_pressed[3] (\buttons_pressed[3] ),
        .\buttons_pressed_BUFG[3] (\buttons_pressed_BUFG[3] ),
        .\curr_state_reg[0]_0 (fcw),
        .\d_out_reg[14] (d_out),
        .\fcw_reg[10]_i_1 ({bp_n_16,bp_n_17,bp_n_18,bp_n_19}),
        .\fcw_reg[14]_i_1 (bp_n_14),
        .\fcw_reg[14]_i_1_0 (bp_n_15),
        .\fcw_reg[6]_i_1 ({bp_n_20,bp_n_21,bp_n_22,bp_n_23}),
        .phase_accumulator_reg(phase_accumulator_reg),
        .\phase_accumulator_reg[11] ({fsm_n_50,fsm_n_51,fsm_n_52,fsm_n_53}),
        .\phase_accumulator_reg[15] ({fsm_n_54,fsm_n_55,fsm_n_56,fsm_n_57}),
        .\phase_accumulator_reg[19] ({fsm_n_58,fsm_n_59,fsm_n_60,fsm_n_61}),
        .\phase_accumulator_reg[23] ({fsm_n_62,fsm_n_63,fsm_n_64,fsm_n_65}),
        .\phase_accumulator_reg[23]_0 (nco_n_23),
        .\phase_accumulator_reg[7] ({fsm_n_46,fsm_n_47,fsm_n_48,fsm_n_49}),
        .\ram_reg[0][0] (bp_n_8),
        .\ram_reg[0][0]_0 (bp_n_5),
        .sq_wave_leds(sq_wave_leds));
  sq_wave_gen gen
       (.CLK(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CO(gen_n_0),
        .DOADO({sel_n_6,sel_n_7,sel_n_8,sel_n_9}),
        .E(switch_sync_n_6),
        .Q(switches_sync),
        .SR(bp_n_7),
        .\buttons_pressed[3] (\buttons_pressed[3] ),
        .\buttons_pressed_BUFG[3] (\buttons_pressed_BUFG[3] ),
        .\code_opt_reg[2]_0 (gen_n_3),
        .\code_opt_reg[4]_0 (gen_n_2),
        .\code_opt_reg[4]_1 (gen_n_5),
        .expmode_reg_0(bp_n_13),
        .next_sample(next_sample),
        .\samples_reg[20]_0 (switch_sync_n_5),
        .sel(gen_n_4),
        .sq_wave_leds(sq_wave_leds));
  nco nco
       (.ADDRARDADDR({nco_n_24,nco_n_25,nco_n_26,nco_n_27,nco_n_28,nco_n_29,nco_n_30,nco_n_31}),
        .CLK(CLK_125MHZ_FPGA_IBUF_BUFG),
        .O({fsm_n_18,fsm_n_19,fsm_n_20,fsm_n_21}),
        .\buttons_pressed[3] (\buttons_pressed[3] ),
        .\buttons_pressed_BUFG[3] (\buttons_pressed_BUFG[3] ),
        .next_sample(next_sample),
        .\phase_accumulator_reg[11]_0 ({fsm_n_50,fsm_n_51,fsm_n_52,fsm_n_53}),
        .\phase_accumulator_reg[15]_0 ({fsm_n_54,fsm_n_55,fsm_n_56,fsm_n_57}),
        .\phase_accumulator_reg[19]_0 ({fsm_n_58,fsm_n_59,fsm_n_60,fsm_n_61}),
        .\phase_accumulator_reg[22]_0 (phase_accumulator_reg),
        .\phase_accumulator_reg[23]_0 (nco_n_23),
        .\phase_accumulator_reg[23]_1 ({fsm_n_62,fsm_n_63,fsm_n_64,fsm_n_65}),
        .\phase_accumulator_reg[23]_2 (fcw),
        .\phase_accumulator_reg[7]_0 ({fsm_n_46,fsm_n_47,fsm_n_48,fsm_n_49}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d10" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "2560" *) 
  (* RTL_RAM_NAME = "" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "9" *) 
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
    .INIT_00(256'h02B802AC02A002940288027C027002630257024B023E023202250219020C0200),
    .INIT_01(256'h03610357034E0344033A03300326031C0311030702FC02F102E602DA02CF02C3),
    .INIT_02(256'h03D403CE03C903C303BD03B703B003A903A2039B0393038B0383037B0372036A),
    .INIT_03(256'h03FF03FF03FE03FD03FC03FA03F803F603F303F003ED03E903E603E203DD03D9),
    .INIT_04(256'h03DD03E203E603E903ED03F003F303F603F803FA03FC03FD03FE03FF03FF03FF),
    .INIT_05(256'h0372037B0383038B0393039B03A203A903B003B703BD03C303C903CE03D403D9),
    .INIT_06(256'h02CF02DA02E602F102FC03070311031C03260330033A0344034E03570361036A),
    .INIT_07(256'h020C021902250232023E024B025702630270027C0288029402A002AC02B802C3),
    .INIT_08(256'h01470153015F016B01770183018F019C01A801B401C101CD01DA01E601F30200),
    .INIT_09(256'h009E00A800B100BB00C500CF00D900E300EE00F80103010E011901250130013C),
    .INIT_0A(256'h002B00310036003C00420048004F0056005D0064006C0074007C0084008D0095),
    .INIT_0B(256'h00000000000100020003000500070009000C000F001200160019001D00220026),
    .INIT_0C(256'h0022001D001900160012000F000C000900070005000300020001000000000000),
    .INIT_0D(256'h008D0084007C0074006C0064005D0056004F00480042003C00360031002B0026),
    .INIT_0E(256'h013001250119010E010300F800EE00E300D900CF00C500BB00B100A8009E0095),
    .INIT_0F(256'h01F301E601DA01CD01C101B401A8019C018F01830177016B015F01530147013C),
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
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(0)) 
    sel
       (.ADDRARDADDR({\<const0> ,\<const0> ,nco_n_24,nco_n_25,nco_n_26,nco_n_27,nco_n_28,nco_n_29,nco_n_30,nco_n_31,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .ADDRBWRADDR({\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .CLKARDCLK(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CLKBWRCLK(\<const0> ),
        .DIADI({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .DIBDI({\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .DIPADIP({\<const0> ,\<const0> }),
        .DIPBDIP({\<const1> ,\<const1> }),
        .DOADO({sel_n_6,sel_n_7,sel_n_8,sel_n_9,sel_n_10,sel_n_11,sel_n_12,sel_n_13,sel_n_14,sel_n_15}),
        .ENARDEN(bp_n_0),
        .ENBWREN(\<const0> ),
        .REGCEAREGCE(\<const0> ),
        .REGCEB(\<const0> ),
        .RSTRAMARSTRAM(\<const0> ),
        .RSTRAMB(\<const0> ),
        .RSTREGARSTREG(\<const0> ),
        .RSTREGB(\<const0> ),
        .WEA({\<const0> ,\<const0> }),
        .WEBWE({\<const0> ,\<const0> ,\<const0> ,\<const0> }));
  synchronizer__parameterized0 switch_sync
       (.AUD_PWM(gen_n_5),
        .AUD_PWM_0(gen_n_4),
        .AUD_PWM_OBUF(AUD_PWM_OBUF),
        .CLK(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CO(dac_n_1),
        .D(SWITCHES_IBUF),
        .DOADO({sel_n_6,sel_n_7,sel_n_10,sel_n_11,sel_n_12,sel_n_13,sel_n_14,sel_n_15}),
        .E(switch_sync_n_6),
        .Q({AUD_SD_OBUF,switches_sync}),
        .S(switch_sync_n_3),
        .pwm0_carry__0(cycles),
        .pwm0_carry__0_i_1(gen_n_2),
        .pwm0_carry__0_i_3_0(gen_n_3),
        .\samples_reg[0] (bp_n_5),
        .\samples_reg[20] (bp_n_6),
        .sel(switch_sync_n_4),
        .\tmp2_reg[0]_0 (switch_sync_n_5));
endmodule
