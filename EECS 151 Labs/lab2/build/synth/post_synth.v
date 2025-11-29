// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Tue Sep 19 19:56:50 2023
// Host        : c111-18.EECS.Berkeley.EDU running 64-bit Red Hat Enterprise Linux release 8.8 (Ootpa)
// Command     : write_verilog -force -file post_synth.v
// Design      : z1top
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module adder_tester
   (adder_operand1,
    adder_operand2,
    LEDS_OBUF,
    CLK_125MHZ_FPGA_IBUF_BUFG,
    S,
    error0_carry_i_13_0,
    error0_carry_i_10_0,
    error0_carry__0_i_2_0);
  output [13:0]adder_operand1;
  output [13:0]adder_operand2;
  output [0:0]LEDS_OBUF;
  input CLK_125MHZ_FPGA_IBUF_BUFG;
  input [3:0]S;
  input [3:0]error0_carry_i_13_0;
  input [3:0]error0_carry_i_10_0;
  input [1:0]error0_carry__0_i_2_0;

  wire \<const0> ;
  wire \<const1> ;
  wire CLK_125MHZ_FPGA_IBUF_BUFG;
  wire [0:0]LEDS_OBUF;
  wire [3:0]S;
  wire [13:0]adder_operand1;
  wire [13:0]adder_operand2;
  wire and_a_b__3;
  wire and_a_b__8;
  wire [14:0]behavioral_sum;
  wire cin_and__3;
  wire cin_and__8;
  wire error;
  wire error0_carry__0_i_1_n_0;
  wire [1:0]error0_carry__0_i_2_0;
  wire error0_carry__0_i_2_n_0;
  wire error0_carry__0_i_3_n_3;
  wire [3:0]error0_carry_i_10_0;
  wire error0_carry_i_10_n_0;
  wire error0_carry_i_12_n_0;
  wire error0_carry_i_12_n_1;
  wire error0_carry_i_12_n_2;
  wire error0_carry_i_12_n_3;
  wire [3:0]error0_carry_i_13_0;
  wire error0_carry_i_13_n_0;
  wire error0_carry_i_14_n_0;
  wire error0_carry_i_1_n_0;
  wire error0_carry_i_2_n_0;
  wire error0_carry_i_3_n_0;
  wire error0_carry_i_4_n_0;
  wire error0_carry_i_6_n_0;
  wire error0_carry_i_6_n_1;
  wire error0_carry_i_6_n_2;
  wire error0_carry_i_6_n_3;
  wire error0_carry_i_7_n_0;
  wire error0_carry_i_9_n_0;
  wire error0_carry_i_9_n_1;
  wire error0_carry_i_9_n_2;
  wire error0_carry_i_9_n_3;
  wire error0_carry_n_0;
  wire error0_carry_n_1;
  wire error0_carry_n_2;
  wire error0_carry_n_3;
  wire error_i_1_n_0;
  wire \operands[0]_i_2_n_0 ;
  wire \operands_reg[0]_i_1_n_0 ;
  wire \operands_reg[0]_i_1_n_1 ;
  wire \operands_reg[0]_i_1_n_2 ;
  wire \operands_reg[0]_i_1_n_3 ;
  wire \operands_reg[0]_i_1_n_4 ;
  wire \operands_reg[0]_i_1_n_5 ;
  wire \operands_reg[0]_i_1_n_6 ;
  wire \operands_reg[0]_i_1_n_7 ;
  wire \operands_reg[12]_i_1_n_0 ;
  wire \operands_reg[12]_i_1_n_1 ;
  wire \operands_reg[12]_i_1_n_2 ;
  wire \operands_reg[12]_i_1_n_3 ;
  wire \operands_reg[12]_i_1_n_4 ;
  wire \operands_reg[12]_i_1_n_5 ;
  wire \operands_reg[12]_i_1_n_6 ;
  wire \operands_reg[12]_i_1_n_7 ;
  wire \operands_reg[16]_i_1_n_0 ;
  wire \operands_reg[16]_i_1_n_1 ;
  wire \operands_reg[16]_i_1_n_2 ;
  wire \operands_reg[16]_i_1_n_3 ;
  wire \operands_reg[16]_i_1_n_4 ;
  wire \operands_reg[16]_i_1_n_5 ;
  wire \operands_reg[16]_i_1_n_6 ;
  wire \operands_reg[16]_i_1_n_7 ;
  wire \operands_reg[20]_i_1_n_0 ;
  wire \operands_reg[20]_i_1_n_1 ;
  wire \operands_reg[20]_i_1_n_2 ;
  wire \operands_reg[20]_i_1_n_3 ;
  wire \operands_reg[20]_i_1_n_4 ;
  wire \operands_reg[20]_i_1_n_5 ;
  wire \operands_reg[20]_i_1_n_6 ;
  wire \operands_reg[20]_i_1_n_7 ;
  wire \operands_reg[24]_i_1_n_1 ;
  wire \operands_reg[24]_i_1_n_2 ;
  wire \operands_reg[24]_i_1_n_3 ;
  wire \operands_reg[24]_i_1_n_4 ;
  wire \operands_reg[24]_i_1_n_5 ;
  wire \operands_reg[24]_i_1_n_6 ;
  wire \operands_reg[24]_i_1_n_7 ;
  wire \operands_reg[4]_i_1_n_0 ;
  wire \operands_reg[4]_i_1_n_1 ;
  wire \operands_reg[4]_i_1_n_2 ;
  wire \operands_reg[4]_i_1_n_3 ;
  wire \operands_reg[4]_i_1_n_4 ;
  wire \operands_reg[4]_i_1_n_5 ;
  wire \operands_reg[4]_i_1_n_6 ;
  wire \operands_reg[4]_i_1_n_7 ;
  wire \operands_reg[8]_i_1_n_0 ;
  wire \operands_reg[8]_i_1_n_1 ;
  wire \operands_reg[8]_i_1_n_2 ;
  wire \operands_reg[8]_i_1_n_3 ;
  wire \operands_reg[8]_i_1_n_4 ;
  wire \operands_reg[8]_i_1_n_5 ;
  wire \operands_reg[8]_i_1_n_6 ;
  wire \operands_reg[8]_i_1_n_7 ;
  wire p_0_in;
  wire \structural_test_adder/carry_bit_0 ;
  wire \structural_test_adder/carry_bit_12 ;
  wire \structural_test_adder/carry_bit_2 ;
  wire \structural_test_adder/carry_bit_3 ;
  wire \structural_test_adder/carry_bit_4 ;
  wire \structural_test_adder/carry_bit_5 ;
  wire \structural_test_adder/carry_bit_6 ;
  wire \structural_test_adder/carry_bit_7 ;
  wire \structural_test_adder/carry_bit_8 ;
  wire \structural_test_adder/carry_bit_9 ;
  wire \structural_test_adder/sumloop[10].rest/xor_a_b__0 ;
  wire \structural_test_adder/sumloop[11].rest/xor_a_b__0 ;
  wire \structural_test_adder/sumloop[12].rest/xor_a_b__0 ;
  wire \structural_test_adder/sumloop[2].rest/xor_a_b__0 ;
  wire \structural_test_adder/sumloop[5].rest/xor_a_b__0 ;
  wire \structural_test_adder/sumloop[8].rest/xor_a_b__0 ;
  wire [3:0]NLW_error0_carry__0_i_3_CO_UNCONNECTED;

  GND GND
       (.G(\<const0> ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \LEDS_OBUF[5]_inst_i_1 
       (.I0(error),
        .O(LEDS_OBUF));
  VCC VCC
       (.P(\<const1> ));
  CARRY4 error0_carry
       (.CI(\<const0> ),
        .CO({error0_carry_n_0,error0_carry_n_1,error0_carry_n_2,error0_carry_n_3}),
        .CYINIT(\<const0> ),
        .DI({\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .S({error0_carry_i_1_n_0,error0_carry_i_2_n_0,error0_carry_i_3_n_0,error0_carry_i_4_n_0}));
  CARRY4 error0_carry__0
       (.CI(error0_carry_n_0),
        .CO(p_0_in),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const1> }),
        .S({\<const0> ,\<const0> ,\<const0> ,error0_carry__0_i_1_n_0}));
  LUT6 #(
    .INIT(64'h8002022008808002)) 
    error0_carry__0_i_1
       (.I0(error0_carry__0_i_2_n_0),
        .I1(behavioral_sum[14]),
        .I2(\structural_test_adder/carry_bit_12 ),
        .I3(adder_operand1[13]),
        .I4(adder_operand2[13]),
        .I5(behavioral_sum[13]),
        .O(error0_carry__0_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    error0_carry__0_i_10
       (.I0(adder_operand2[10]),
        .I1(adder_operand1[10]),
        .O(\structural_test_adder/sumloop[10].rest/xor_a_b__0 ));
  LUT6 #(
    .INIT(64'h6669666966696999)) 
    error0_carry__0_i_2
       (.I0(behavioral_sum[12]),
        .I1(\structural_test_adder/sumloop[12].rest/xor_a_b__0 ),
        .I2(adder_operand2[11]),
        .I3(adder_operand1[11]),
        .I4(and_a_b__8),
        .I5(cin_and__8),
        .O(error0_carry__0_i_2_n_0));
  CARRY4 error0_carry__0_i_3
       (.CI(error0_carry_i_6_n_0),
        .CO({behavioral_sum[14],NLW_error0_carry__0_i_3_CO_UNCONNECTED[1],error0_carry__0_i_3_n_3}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,adder_operand1[13:12]}),
        .O(behavioral_sum[13:12]),
        .S({\<const0> ,\<const1> ,error0_carry__0_i_2_0}));
  LUT6 #(
    .INIT(64'hEEE8EEE8EEE8E888)) 
    error0_carry__0_i_4
       (.I0(adder_operand2[12]),
        .I1(adder_operand1[12]),
        .I2(adder_operand2[11]),
        .I3(adder_operand1[11]),
        .I4(and_a_b__8),
        .I5(cin_and__8),
        .O(\structural_test_adder/carry_bit_12 ));
  LUT2 #(
    .INIT(4'h6)) 
    error0_carry__0_i_5
       (.I0(adder_operand2[12]),
        .I1(adder_operand1[12]),
        .O(\structural_test_adder/sumloop[12].rest/xor_a_b__0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    error0_carry__0_i_6
       (.I0(adder_operand1[10]),
        .I1(adder_operand2[10]),
        .O(and_a_b__8));
  LUT6 #(
    .INIT(64'hFFE8E80000000000)) 
    error0_carry__0_i_7
       (.I0(\structural_test_adder/carry_bit_7 ),
        .I1(adder_operand1[8]),
        .I2(adder_operand2[8]),
        .I3(adder_operand1[9]),
        .I4(adder_operand2[9]),
        .I5(\structural_test_adder/sumloop[10].rest/xor_a_b__0 ),
        .O(cin_and__8));
  LUT5 #(
    .INIT(32'h96690000)) 
    error0_carry_i_1
       (.I0(\structural_test_adder/carry_bit_8 ),
        .I1(adder_operand1[9]),
        .I2(adder_operand2[9]),
        .I3(behavioral_sum[9]),
        .I4(error0_carry_i_7_n_0),
        .O(error0_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h0229944094400229)) 
    error0_carry_i_10
       (.I0(behavioral_sum[7]),
        .I1(\structural_test_adder/carry_bit_6 ),
        .I2(adder_operand1[7]),
        .I3(adder_operand2[7]),
        .I4(\structural_test_adder/sumloop[8].rest/xor_a_b__0 ),
        .I5(behavioral_sum[8]),
        .O(error0_carry_i_10_n_0));
  LUT6 #(
    .INIT(64'hEEE8E888E888E888)) 
    error0_carry_i_11
       (.I0(adder_operand2[2]),
        .I1(adder_operand1[2]),
        .I2(adder_operand2[1]),
        .I3(adder_operand1[1]),
        .I4(adder_operand1[0]),
        .I5(adder_operand2[0]),
        .O(\structural_test_adder/carry_bit_2 ));
  CARRY4 error0_carry_i_12
       (.CI(\<const0> ),
        .CO({error0_carry_i_12_n_0,error0_carry_i_12_n_1,error0_carry_i_12_n_2,error0_carry_i_12_n_3}),
        .CYINIT(\<const0> ),
        .DI(adder_operand1[3:0]),
        .O(behavioral_sum[3:0]),
        .S(S));
  LUT6 #(
    .INIT(64'h0229944094400229)) 
    error0_carry_i_13
       (.I0(behavioral_sum[4]),
        .I1(\structural_test_adder/carry_bit_3 ),
        .I2(adder_operand1[4]),
        .I3(adder_operand2[4]),
        .I4(\structural_test_adder/sumloop[5].rest/xor_a_b__0 ),
        .I5(behavioral_sum[5]),
        .O(error0_carry_i_13_n_0));
  LUT6 #(
    .INIT(64'h0229944094400229)) 
    error0_carry_i_14
       (.I0(behavioral_sum[1]),
        .I1(\structural_test_adder/carry_bit_0 ),
        .I2(adder_operand1[1]),
        .I3(adder_operand2[1]),
        .I4(\structural_test_adder/sumloop[2].rest/xor_a_b__0 ),
        .I5(behavioral_sum[2]),
        .O(error0_carry_i_14_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    error0_carry_i_15
       (.I0(adder_operand2[6]),
        .I1(adder_operand1[6]),
        .I2(adder_operand2[5]),
        .I3(adder_operand1[5]),
        .I4(\structural_test_adder/carry_bit_4 ),
        .O(\structural_test_adder/carry_bit_6 ));
  LUT5 #(
    .INIT(32'h96690000)) 
    error0_carry_i_2
       (.I0(\structural_test_adder/carry_bit_5 ),
        .I1(adder_operand1[6]),
        .I2(adder_operand2[6]),
        .I3(behavioral_sum[6]),
        .I4(error0_carry_i_10_n_0),
        .O(error0_carry_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    error0_carry_i_20
       (.I0(adder_operand2[9]),
        .I1(adder_operand1[9]),
        .I2(adder_operand2[8]),
        .I3(adder_operand1[8]),
        .I4(\structural_test_adder/carry_bit_7 ),
        .O(\structural_test_adder/carry_bit_9 ));
  LUT2 #(
    .INIT(4'h6)) 
    error0_carry_i_21
       (.I0(adder_operand2[11]),
        .I1(adder_operand1[11]),
        .O(\structural_test_adder/sumloop[11].rest/xor_a_b__0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    error0_carry_i_22
       (.I0(adder_operand2[4]),
        .I1(adder_operand1[4]),
        .I2(adder_operand2[3]),
        .I3(adder_operand1[3]),
        .I4(\structural_test_adder/carry_bit_2 ),
        .O(\structural_test_adder/carry_bit_4 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    error0_carry_i_27
       (.I0(adder_operand2[8]),
        .I1(adder_operand1[8]),
        .O(\structural_test_adder/sumloop[8].rest/xor_a_b__0 ));
  LUT5 #(
    .INIT(32'h96690000)) 
    error0_carry_i_3
       (.I0(\structural_test_adder/carry_bit_2 ),
        .I1(adder_operand1[3]),
        .I2(adder_operand2[3]),
        .I3(behavioral_sum[3]),
        .I4(error0_carry_i_13_n_0),
        .O(error0_carry_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    error0_carry_i_32
       (.I0(adder_operand2[3]),
        .I1(adder_operand1[3]),
        .I2(\structural_test_adder/carry_bit_2 ),
        .O(\structural_test_adder/carry_bit_3 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    error0_carry_i_33
       (.I0(adder_operand2[5]),
        .I1(adder_operand1[5]),
        .O(\structural_test_adder/sumloop[5].rest/xor_a_b__0 ));
  LUT2 #(
    .INIT(4'h8)) 
    error0_carry_i_34
       (.I0(adder_operand1[0]),
        .I1(adder_operand2[0]),
        .O(\structural_test_adder/carry_bit_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    error0_carry_i_35
       (.I0(adder_operand2[2]),
        .I1(adder_operand1[2]),
        .O(\structural_test_adder/sumloop[2].rest/xor_a_b__0 ));
  LUT6 #(
    .INIT(64'hEEE8EEE8EEE8E888)) 
    error0_carry_i_36
       (.I0(adder_operand2[7]),
        .I1(adder_operand1[7]),
        .I2(adder_operand2[6]),
        .I3(adder_operand1[6]),
        .I4(and_a_b__3),
        .I5(cin_and__3),
        .O(\structural_test_adder/carry_bit_7 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    error0_carry_i_37
       (.I0(adder_operand1[5]),
        .I1(adder_operand2[5]),
        .O(and_a_b__3));
  LUT6 #(
    .INIT(64'hFFE8E80000000000)) 
    error0_carry_i_38
       (.I0(\structural_test_adder/carry_bit_2 ),
        .I1(adder_operand1[3]),
        .I2(adder_operand2[3]),
        .I3(adder_operand1[4]),
        .I4(adder_operand2[4]),
        .I5(\structural_test_adder/sumloop[5].rest/xor_a_b__0 ),
        .O(cin_and__3));
  LUT4 #(
    .INIT(16'h6900)) 
    error0_carry_i_4
       (.I0(adder_operand2[0]),
        .I1(adder_operand1[0]),
        .I2(behavioral_sum[0]),
        .I3(error0_carry_i_14_n_0),
        .O(error0_carry_i_4_n_0));
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    error0_carry_i_5
       (.I0(adder_operand2[8]),
        .I1(adder_operand1[8]),
        .I2(adder_operand2[7]),
        .I3(adder_operand1[7]),
        .I4(\structural_test_adder/carry_bit_6 ),
        .O(\structural_test_adder/carry_bit_8 ));
  CARRY4 error0_carry_i_6
       (.CI(error0_carry_i_9_n_0),
        .CO({error0_carry_i_6_n_0,error0_carry_i_6_n_1,error0_carry_i_6_n_2,error0_carry_i_6_n_3}),
        .CYINIT(\<const0> ),
        .DI(adder_operand1[11:8]),
        .O(behavioral_sum[11:8]),
        .S(error0_carry_i_10_0));
  LUT6 #(
    .INIT(64'h0229944094400229)) 
    error0_carry_i_7
       (.I0(behavioral_sum[10]),
        .I1(\structural_test_adder/carry_bit_9 ),
        .I2(adder_operand1[10]),
        .I3(adder_operand2[10]),
        .I4(\structural_test_adder/sumloop[11].rest/xor_a_b__0 ),
        .I5(behavioral_sum[11]),
        .O(error0_carry_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    error0_carry_i_8
       (.I0(adder_operand2[5]),
        .I1(adder_operand1[5]),
        .I2(\structural_test_adder/carry_bit_4 ),
        .O(\structural_test_adder/carry_bit_5 ));
  CARRY4 error0_carry_i_9
       (.CI(error0_carry_i_12_n_0),
        .CO({error0_carry_i_9_n_0,error0_carry_i_9_n_1,error0_carry_i_9_n_2,error0_carry_i_9_n_3}),
        .CYINIT(\<const0> ),
        .DI(adder_operand1[7:4]),
        .O(behavioral_sum[7:4]),
        .S(error0_carry_i_13_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'hE)) 
    error_i_1
       (.I0(error),
        .I1(p_0_in),
        .O(error_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    error_reg
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(error_i_1_n_0),
        .Q(error),
        .R(\<const0> ));
  LUT1 #(
    .INIT(2'h1)) 
    \operands[0]_i_2 
       (.I0(adder_operand1[0]),
        .O(\operands[0]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \operands_reg[0] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\operands_reg[0]_i_1_n_7 ),
        .Q(adder_operand1[0]),
        .R(\<const0> ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \operands_reg[0]_i_1 
       (.CI(\<const0> ),
        .CO({\operands_reg[0]_i_1_n_0 ,\operands_reg[0]_i_1_n_1 ,\operands_reg[0]_i_1_n_2 ,\operands_reg[0]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const1> }),
        .O({\operands_reg[0]_i_1_n_4 ,\operands_reg[0]_i_1_n_5 ,\operands_reg[0]_i_1_n_6 ,\operands_reg[0]_i_1_n_7 }),
        .S({adder_operand1[3:1],\operands[0]_i_2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \operands_reg[10] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\operands_reg[8]_i_1_n_5 ),
        .Q(adder_operand1[10]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \operands_reg[11] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\operands_reg[8]_i_1_n_4 ),
        .Q(adder_operand1[11]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \operands_reg[12] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\operands_reg[12]_i_1_n_7 ),
        .Q(adder_operand1[12]),
        .R(\<const0> ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \operands_reg[12]_i_1 
       (.CI(\operands_reg[8]_i_1_n_0 ),
        .CO({\operands_reg[12]_i_1_n_0 ,\operands_reg[12]_i_1_n_1 ,\operands_reg[12]_i_1_n_2 ,\operands_reg[12]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\operands_reg[12]_i_1_n_4 ,\operands_reg[12]_i_1_n_5 ,\operands_reg[12]_i_1_n_6 ,\operands_reg[12]_i_1_n_7 }),
        .S({adder_operand2[1:0],adder_operand1[13:12]}));
  FDRE #(
    .INIT(1'b0)) 
    \operands_reg[13] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\operands_reg[12]_i_1_n_6 ),
        .Q(adder_operand1[13]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \operands_reg[14] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\operands_reg[12]_i_1_n_5 ),
        .Q(adder_operand2[0]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \operands_reg[15] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\operands_reg[12]_i_1_n_4 ),
        .Q(adder_operand2[1]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \operands_reg[16] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\operands_reg[16]_i_1_n_7 ),
        .Q(adder_operand2[2]),
        .R(\<const0> ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \operands_reg[16]_i_1 
       (.CI(\operands_reg[12]_i_1_n_0 ),
        .CO({\operands_reg[16]_i_1_n_0 ,\operands_reg[16]_i_1_n_1 ,\operands_reg[16]_i_1_n_2 ,\operands_reg[16]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\operands_reg[16]_i_1_n_4 ,\operands_reg[16]_i_1_n_5 ,\operands_reg[16]_i_1_n_6 ,\operands_reg[16]_i_1_n_7 }),
        .S(adder_operand2[5:2]));
  FDRE #(
    .INIT(1'b0)) 
    \operands_reg[17] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\operands_reg[16]_i_1_n_6 ),
        .Q(adder_operand2[3]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \operands_reg[18] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\operands_reg[16]_i_1_n_5 ),
        .Q(adder_operand2[4]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \operands_reg[19] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\operands_reg[16]_i_1_n_4 ),
        .Q(adder_operand2[5]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \operands_reg[1] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\operands_reg[0]_i_1_n_6 ),
        .Q(adder_operand1[1]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \operands_reg[20] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\operands_reg[20]_i_1_n_7 ),
        .Q(adder_operand2[6]),
        .R(\<const0> ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \operands_reg[20]_i_1 
       (.CI(\operands_reg[16]_i_1_n_0 ),
        .CO({\operands_reg[20]_i_1_n_0 ,\operands_reg[20]_i_1_n_1 ,\operands_reg[20]_i_1_n_2 ,\operands_reg[20]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\operands_reg[20]_i_1_n_4 ,\operands_reg[20]_i_1_n_5 ,\operands_reg[20]_i_1_n_6 ,\operands_reg[20]_i_1_n_7 }),
        .S(adder_operand2[9:6]));
  FDRE #(
    .INIT(1'b0)) 
    \operands_reg[21] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\operands_reg[20]_i_1_n_6 ),
        .Q(adder_operand2[7]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \operands_reg[22] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\operands_reg[20]_i_1_n_5 ),
        .Q(adder_operand2[8]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \operands_reg[23] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\operands_reg[20]_i_1_n_4 ),
        .Q(adder_operand2[9]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \operands_reg[24] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\operands_reg[24]_i_1_n_7 ),
        .Q(adder_operand2[10]),
        .R(\<const0> ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \operands_reg[24]_i_1 
       (.CI(\operands_reg[20]_i_1_n_0 ),
        .CO({\operands_reg[24]_i_1_n_1 ,\operands_reg[24]_i_1_n_2 ,\operands_reg[24]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\operands_reg[24]_i_1_n_4 ,\operands_reg[24]_i_1_n_5 ,\operands_reg[24]_i_1_n_6 ,\operands_reg[24]_i_1_n_7 }),
        .S(adder_operand2[13:10]));
  FDRE #(
    .INIT(1'b0)) 
    \operands_reg[25] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\operands_reg[24]_i_1_n_6 ),
        .Q(adder_operand2[11]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \operands_reg[26] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\operands_reg[24]_i_1_n_5 ),
        .Q(adder_operand2[12]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \operands_reg[27] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\operands_reg[24]_i_1_n_4 ),
        .Q(adder_operand2[13]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \operands_reg[2] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\operands_reg[0]_i_1_n_5 ),
        .Q(adder_operand1[2]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \operands_reg[3] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\operands_reg[0]_i_1_n_4 ),
        .Q(adder_operand1[3]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \operands_reg[4] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\operands_reg[4]_i_1_n_7 ),
        .Q(adder_operand1[4]),
        .R(\<const0> ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \operands_reg[4]_i_1 
       (.CI(\operands_reg[0]_i_1_n_0 ),
        .CO({\operands_reg[4]_i_1_n_0 ,\operands_reg[4]_i_1_n_1 ,\operands_reg[4]_i_1_n_2 ,\operands_reg[4]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\operands_reg[4]_i_1_n_4 ,\operands_reg[4]_i_1_n_5 ,\operands_reg[4]_i_1_n_6 ,\operands_reg[4]_i_1_n_7 }),
        .S(adder_operand1[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \operands_reg[5] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\operands_reg[4]_i_1_n_6 ),
        .Q(adder_operand1[5]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \operands_reg[6] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\operands_reg[4]_i_1_n_5 ),
        .Q(adder_operand1[6]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \operands_reg[7] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\operands_reg[4]_i_1_n_4 ),
        .Q(adder_operand1[7]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \operands_reg[8] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\operands_reg[8]_i_1_n_7 ),
        .Q(adder_operand1[8]),
        .R(\<const0> ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \operands_reg[8]_i_1 
       (.CI(\operands_reg[4]_i_1_n_0 ),
        .CO({\operands_reg[8]_i_1_n_0 ,\operands_reg[8]_i_1_n_1 ,\operands_reg[8]_i_1_n_2 ,\operands_reg[8]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\operands_reg[8]_i_1_n_4 ,\operands_reg[8]_i_1_n_5 ,\operands_reg[8]_i_1_n_6 ,\operands_reg[8]_i_1_n_7 }),
        .S(adder_operand1[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \operands_reg[9] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\operands_reg[8]_i_1_n_6 ),
        .Q(adder_operand1[9]),
        .R(\<const0> ));
endmodule

module behavioral_adder
   (S,
    \operands_reg[7] ,
    \operands_reg[11] ,
    \operands_reg[13] ,
    adder_operand1,
    adder_operand2);
  output [3:0]S;
  output [3:0]\operands_reg[7] ;
  output [3:0]\operands_reg[11] ;
  output [1:0]\operands_reg[13] ;
  input [13:0]adder_operand1;
  input [13:0]adder_operand2;

  wire [3:0]S;
  wire [13:0]adder_operand1;
  wire [13:0]adder_operand2;
  wire [3:0]\operands_reg[11] ;
  wire [1:0]\operands_reg[13] ;
  wire [3:0]\operands_reg[7] ;

  LUT2 #(
    .INIT(4'h6)) 
    error0_carry__0_i_8
       (.I0(adder_operand1[13]),
        .I1(adder_operand2[13]),
        .O(\operands_reg[13] [1]));
  LUT2 #(
    .INIT(4'h6)) 
    error0_carry__0_i_9
       (.I0(adder_operand1[12]),
        .I1(adder_operand2[12]),
        .O(\operands_reg[13] [0]));
  LUT2 #(
    .INIT(4'h6)) 
    error0_carry_i_16
       (.I0(adder_operand1[11]),
        .I1(adder_operand2[11]),
        .O(\operands_reg[11] [3]));
  LUT2 #(
    .INIT(4'h6)) 
    error0_carry_i_17
       (.I0(adder_operand1[10]),
        .I1(adder_operand2[10]),
        .O(\operands_reg[11] [2]));
  LUT2 #(
    .INIT(4'h6)) 
    error0_carry_i_18
       (.I0(adder_operand1[9]),
        .I1(adder_operand2[9]),
        .O(\operands_reg[11] [1]));
  LUT2 #(
    .INIT(4'h6)) 
    error0_carry_i_19
       (.I0(adder_operand1[8]),
        .I1(adder_operand2[8]),
        .O(\operands_reg[11] [0]));
  LUT2 #(
    .INIT(4'h6)) 
    error0_carry_i_23
       (.I0(adder_operand1[7]),
        .I1(adder_operand2[7]),
        .O(\operands_reg[7] [3]));
  LUT2 #(
    .INIT(4'h6)) 
    error0_carry_i_24
       (.I0(adder_operand1[6]),
        .I1(adder_operand2[6]),
        .O(\operands_reg[7] [2]));
  LUT2 #(
    .INIT(4'h6)) 
    error0_carry_i_25
       (.I0(adder_operand1[5]),
        .I1(adder_operand2[5]),
        .O(\operands_reg[7] [1]));
  LUT2 #(
    .INIT(4'h6)) 
    error0_carry_i_26
       (.I0(adder_operand1[4]),
        .I1(adder_operand2[4]),
        .O(\operands_reg[7] [0]));
  LUT2 #(
    .INIT(4'h6)) 
    error0_carry_i_28
       (.I0(adder_operand1[3]),
        .I1(adder_operand2[3]),
        .O(S[3]));
  LUT2 #(
    .INIT(4'h6)) 
    error0_carry_i_29
       (.I0(adder_operand1[2]),
        .I1(adder_operand2[2]),
        .O(S[2]));
  LUT2 #(
    .INIT(4'h6)) 
    error0_carry_i_30
       (.I0(adder_operand1[1]),
        .I1(adder_operand2[1]),
        .O(S[1]));
  LUT2 #(
    .INIT(4'h6)) 
    error0_carry_i_31
       (.I0(adder_operand1[0]),
        .I1(adder_operand2[0]),
        .O(S[0]));
endmodule

module full_adder
   (LEDS_OBUF,
    SWITCHES_IBUF,
    BUTTONS_IBUF);
  output [0:0]LEDS_OBUF;
  input [1:0]SWITCHES_IBUF;
  input [3:0]BUTTONS_IBUF;

  wire [3:0]BUTTONS_IBUF;
  wire [0:0]LEDS_OBUF;
  wire [1:0]SWITCHES_IBUF;

  LUT6 #(
    .INIT(64'hEEE8E888E888E888)) 
    carry_out
       (.I0(SWITCHES_IBUF[1]),
        .I1(SWITCHES_IBUF[0]),
        .I2(BUTTONS_IBUF[3]),
        .I3(BUTTONS_IBUF[1]),
        .I4(BUTTONS_IBUF[0]),
        .I5(BUTTONS_IBUF[2]),
        .O(LEDS_OBUF));
endmodule

module structural_adder
   (LEDS_OBUF,
    SWITCHES_IBUF,
    BUTTONS_IBUF);
  output [0:0]LEDS_OBUF;
  input [1:0]SWITCHES_IBUF;
  input [3:0]BUTTONS_IBUF;

  wire [3:0]BUTTONS_IBUF;
  wire [0:0]LEDS_OBUF;
  wire [1:0]SWITCHES_IBUF;

  full_adder \sumloop[2].rest 
       (.BUTTONS_IBUF(BUTTONS_IBUF),
        .LEDS_OBUF(LEDS_OBUF),
        .SWITCHES_IBUF(SWITCHES_IBUF));
endmodule

(* STRUCTURAL_NETLIST = "yes" *)
module z1top
   (CLK_125MHZ_FPGA,
    BUTTONS,
    SWITCHES,
    LEDS);
  input CLK_125MHZ_FPGA;
  input [3:0]BUTTONS;
  input [1:0]SWITCHES;
  output [5:0]LEDS;

  wire [3:0]BUTTONS;
  wire [3:0]BUTTONS_IBUF;
  wire CLK_125MHZ_FPGA;
  wire CLK_125MHZ_FPGA_IBUF;
  wire CLK_125MHZ_FPGA_IBUF_BUFG;
  wire [5:0]LEDS;
  wire [4:0]LEDS_OBUF;
  wire [1:0]SWITCHES;
  wire [1:0]SWITCHES_IBUF;
  wire [13:0]adder_operand1;
  wire [13:0]adder_operand2;
  wire behavioral_test_adder_n_0;
  wire behavioral_test_adder_n_1;
  wire behavioral_test_adder_n_10;
  wire behavioral_test_adder_n_11;
  wire behavioral_test_adder_n_12;
  wire behavioral_test_adder_n_13;
  wire behavioral_test_adder_n_2;
  wire behavioral_test_adder_n_3;
  wire behavioral_test_adder_n_4;
  wire behavioral_test_adder_n_5;
  wire behavioral_test_adder_n_6;
  wire behavioral_test_adder_n_7;
  wire behavioral_test_adder_n_8;
  wire behavioral_test_adder_n_9;

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
  OBUF \LEDS_OBUF[0]_inst 
       (.I(LEDS_OBUF[0]),
        .O(LEDS[0]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \LEDS_OBUF[0]_inst_i_1 
       (.I0(BUTTONS_IBUF[2]),
        .I1(BUTTONS_IBUF[0]),
        .O(LEDS_OBUF[0]));
  OBUF \LEDS_OBUF[1]_inst 
       (.I(LEDS_OBUF[1]),
        .O(LEDS[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h8778)) 
    \LEDS_OBUF[1]_inst_i_1 
       (.I0(BUTTONS_IBUF[2]),
        .I1(BUTTONS_IBUF[0]),
        .I2(BUTTONS_IBUF[1]),
        .I3(BUTTONS_IBUF[3]),
        .O(LEDS_OBUF[1]));
  OBUF \LEDS_OBUF[2]_inst 
       (.I(LEDS_OBUF[2]),
        .O(LEDS[2]));
  LUT6 #(
    .INIT(64'hF880077F077FF880)) 
    \LEDS_OBUF[2]_inst_i_1 
       (.I0(BUTTONS_IBUF[2]),
        .I1(BUTTONS_IBUF[0]),
        .I2(BUTTONS_IBUF[1]),
        .I3(BUTTONS_IBUF[3]),
        .I4(SWITCHES_IBUF[0]),
        .I5(SWITCHES_IBUF[1]),
        .O(LEDS_OBUF[2]));
  OBUF \LEDS_OBUF[3]_inst 
       (.I(LEDS_OBUF[3]),
        .O(LEDS[3]));
  OBUF \LEDS_OBUF[4]_inst 
       (.I(LEDS_OBUF[4]),
        .O(LEDS[4]));
  OBUF \LEDS_OBUF[5]_inst 
       (.I(LEDS_OBUF[4]),
        .O(LEDS[5]));
  IBUF \SWITCHES_IBUF[0]_inst 
       (.I(SWITCHES[0]),
        .O(SWITCHES_IBUF[0]));
  IBUF \SWITCHES_IBUF[1]_inst 
       (.I(SWITCHES[1]),
        .O(SWITCHES_IBUF[1]));
  behavioral_adder behavioral_test_adder
       (.S({behavioral_test_adder_n_0,behavioral_test_adder_n_1,behavioral_test_adder_n_2,behavioral_test_adder_n_3}),
        .adder_operand1(adder_operand1),
        .adder_operand2(adder_operand2),
        .\operands_reg[11] ({behavioral_test_adder_n_8,behavioral_test_adder_n_9,behavioral_test_adder_n_10,behavioral_test_adder_n_11}),
        .\operands_reg[13] ({behavioral_test_adder_n_12,behavioral_test_adder_n_13}),
        .\operands_reg[7] ({behavioral_test_adder_n_4,behavioral_test_adder_n_5,behavioral_test_adder_n_6,behavioral_test_adder_n_7}));
  adder_tester tester
       (.CLK_125MHZ_FPGA_IBUF_BUFG(CLK_125MHZ_FPGA_IBUF_BUFG),
        .LEDS_OBUF(LEDS_OBUF[4]),
        .S({behavioral_test_adder_n_0,behavioral_test_adder_n_1,behavioral_test_adder_n_2,behavioral_test_adder_n_3}),
        .adder_operand1(adder_operand1),
        .adder_operand2(adder_operand2),
        .error0_carry__0_i_2_0({behavioral_test_adder_n_12,behavioral_test_adder_n_13}),
        .error0_carry_i_10_0({behavioral_test_adder_n_8,behavioral_test_adder_n_9,behavioral_test_adder_n_10,behavioral_test_adder_n_11}),
        .error0_carry_i_13_0({behavioral_test_adder_n_4,behavioral_test_adder_n_5,behavioral_test_adder_n_6,behavioral_test_adder_n_7}));
  structural_adder user_adder
       (.BUTTONS_IBUF(BUTTONS_IBUF),
        .LEDS_OBUF(LEDS_OBUF[3]),
        .SWITCHES_IBUF(SWITCHES_IBUF));
endmodule
