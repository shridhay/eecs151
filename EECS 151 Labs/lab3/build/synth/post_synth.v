// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Fri Sep 29 09:23:29 2023
// Host        : c111-1.EECS.Berkeley.EDU running 64-bit Red Hat Enterprise Linux release 8.8 (Ootpa)
// Command     : write_verilog -force -file post_synth.v
// Design      : z1top
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module button_parser
   (SR,
    \temp_reg[1] ,
    \saturating_counter_reg[3][1] ,
    Q,
    \temp_reg[0] ,
    \saturating_counter_reg[2][3] ,
    \saturating_counter_reg[2][6] ,
    CLK_125MHZ_FPGA_IBUF_BUFG,
    D);
  output [0:0]SR;
  output \temp_reg[1] ;
  output \saturating_counter_reg[3][1] ;
  output [0:0]Q;
  output \temp_reg[0] ;
  output \saturating_counter_reg[2][3] ;
  output \saturating_counter_reg[2][6] ;
  input CLK_125MHZ_FPGA_IBUF_BUFG;
  input [3:0]D;

  wire CLK_125MHZ_FPGA_IBUF_BUFG;
  wire [3:0]D;
  wire [0:0]Q;
  wire [0:0]SR;
  wire [3:0]debounced_signals;
  wire \saturating_counter_reg[2][3] ;
  wire \saturating_counter_reg[2][6] ;
  wire \saturating_counter_reg[3][1] ;
  wire [3:0]temp;
  wire \temp_reg[0] ;
  wire \temp_reg[1] ;
  wire [3:0]tmp2;

  debouncer button_debouncer
       (.CLK_125MHZ_FPGA_IBUF_BUFG(CLK_125MHZ_FPGA_IBUF_BUFG),
        .D(debounced_signals),
        .Q({temp[3],temp[1:0]}),
        .SR(SR),
        .\saturating_counter_reg[2][3]_0 (\saturating_counter_reg[2][3] ),
        .\saturating_counter_reg[2][6]_0 (\saturating_counter_reg[2][6] ),
        .\saturating_counter_reg[3][1]_0 (\saturating_counter_reg[3][1] ),
        .\saturating_counter_reg[3][7]_0 (tmp2),
        .\temp_reg[0] (\temp_reg[0] ),
        .\temp_reg[1] (\temp_reg[1] ));
  edge_detector button_edge_detector
       (.CLK_125MHZ_FPGA_IBUF_BUFG(CLK_125MHZ_FPGA_IBUF_BUFG),
        .D(debounced_signals),
        .Q({temp[3],Q,temp[1:0]}));
  synchronizer button_synchronizer
       (.CLK_125MHZ_FPGA_IBUF_BUFG(CLK_125MHZ_FPGA_IBUF_BUFG),
        .D(D),
        .Q(tmp2));
endmodule

module counter
   (Q,
    \dynamode_reg[1]_0 ,
    \counter_reg[3]_0 ,
    \dynamode_reg[1]_1 ,
    \dynamode_reg[1]_2 ,
    \dynamode_reg[1]_3 ,
    \dynamode_reg[1]_4 ,
    CLK_125MHZ_FPGA_IBUF_BUFG,
    SR);
  output [3:0]Q;
  input \dynamode_reg[1]_0 ;
  input \counter_reg[3]_0 ;
  input \dynamode_reg[1]_1 ;
  input \dynamode_reg[1]_2 ;
  input [0:0]\dynamode_reg[1]_3 ;
  input \dynamode_reg[1]_4 ;
  input CLK_125MHZ_FPGA_IBUF_BUFG;
  input [0:0]SR;

  wire \<const0> ;
  wire \<const1> ;
  wire CLK_125MHZ_FPGA_IBUF_BUFG;
  wire [3:0]Q;
  wire [0:0]SR;
  wire \counter[3]_i_2_n_0 ;
  wire \counter_reg[3]_0 ;
  wire [26:0]cycles;
  wire \cycles0_inferred__0/i__carry__0_n_0 ;
  wire \cycles0_inferred__0/i__carry__0_n_1 ;
  wire \cycles0_inferred__0/i__carry__0_n_2 ;
  wire \cycles0_inferred__0/i__carry__0_n_3 ;
  wire \cycles0_inferred__0/i__carry__0_n_4 ;
  wire \cycles0_inferred__0/i__carry__0_n_5 ;
  wire \cycles0_inferred__0/i__carry__0_n_6 ;
  wire \cycles0_inferred__0/i__carry__0_n_7 ;
  wire \cycles0_inferred__0/i__carry__1_n_0 ;
  wire \cycles0_inferred__0/i__carry__1_n_1 ;
  wire \cycles0_inferred__0/i__carry__1_n_2 ;
  wire \cycles0_inferred__0/i__carry__1_n_3 ;
  wire \cycles0_inferred__0/i__carry__1_n_4 ;
  wire \cycles0_inferred__0/i__carry__1_n_5 ;
  wire \cycles0_inferred__0/i__carry__1_n_6 ;
  wire \cycles0_inferred__0/i__carry__1_n_7 ;
  wire \cycles0_inferred__0/i__carry__2_n_0 ;
  wire \cycles0_inferred__0/i__carry__2_n_1 ;
  wire \cycles0_inferred__0/i__carry__2_n_2 ;
  wire \cycles0_inferred__0/i__carry__2_n_3 ;
  wire \cycles0_inferred__0/i__carry__2_n_4 ;
  wire \cycles0_inferred__0/i__carry__2_n_5 ;
  wire \cycles0_inferred__0/i__carry__2_n_6 ;
  wire \cycles0_inferred__0/i__carry__2_n_7 ;
  wire \cycles0_inferred__0/i__carry__3_n_0 ;
  wire \cycles0_inferred__0/i__carry__3_n_1 ;
  wire \cycles0_inferred__0/i__carry__3_n_2 ;
  wire \cycles0_inferred__0/i__carry__3_n_3 ;
  wire \cycles0_inferred__0/i__carry__3_n_4 ;
  wire \cycles0_inferred__0/i__carry__3_n_5 ;
  wire \cycles0_inferred__0/i__carry__3_n_6 ;
  wire \cycles0_inferred__0/i__carry__3_n_7 ;
  wire \cycles0_inferred__0/i__carry__4_n_0 ;
  wire \cycles0_inferred__0/i__carry__4_n_1 ;
  wire \cycles0_inferred__0/i__carry__4_n_2 ;
  wire \cycles0_inferred__0/i__carry__4_n_3 ;
  wire \cycles0_inferred__0/i__carry__4_n_4 ;
  wire \cycles0_inferred__0/i__carry__4_n_5 ;
  wire \cycles0_inferred__0/i__carry__4_n_6 ;
  wire \cycles0_inferred__0/i__carry__4_n_7 ;
  wire \cycles0_inferred__0/i__carry__5_n_3 ;
  wire \cycles0_inferred__0/i__carry__5_n_6 ;
  wire \cycles0_inferred__0/i__carry__5_n_7 ;
  wire \cycles0_inferred__0/i__carry_n_0 ;
  wire \cycles0_inferred__0/i__carry_n_1 ;
  wire \cycles0_inferred__0/i__carry_n_2 ;
  wire \cycles0_inferred__0/i__carry_n_3 ;
  wire \cycles0_inferred__0/i__carry_n_4 ;
  wire \cycles0_inferred__0/i__carry_n_5 ;
  wire \cycles0_inferred__0/i__carry_n_6 ;
  wire \cycles0_inferred__0/i__carry_n_7 ;
  wire \cycles[0]_i_1_n_0 ;
  wire \cycles[26]_i_1_n_0 ;
  wire \cycles[26]_i_3_n_0 ;
  wire \cycles[26]_i_4_n_0 ;
  wire \cycles[26]_i_5_n_0 ;
  wire \cycles[26]_i_6_n_0 ;
  wire \cycles[26]_i_7_n_0 ;
  wire \cycles[26]_i_8_n_0 ;
  wire \cycles[26]_i_9_n_0 ;
  wire cycles_0;
  wire [1:0]dynamode;
  wire \dynamode[0]_i_1_n_0 ;
  wire \dynamode[1]_i_1_n_0 ;
  wire \dynamode_reg[1]_0 ;
  wire \dynamode_reg[1]_1 ;
  wire \dynamode_reg[1]_2 ;
  wire [0:0]\dynamode_reg[1]_3 ;
  wire \dynamode_reg[1]_4 ;
  wire [3:0]p_0_in__3;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_1 
       (.I0(Q[0]),
        .O(p_0_in__3[0]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \counter[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(\counter_reg[3]_0 ),
        .O(p_0_in__3[1]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hE178)) 
    \counter[2]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(\counter_reg[3]_0 ),
        .O(p_0_in__3[2]));
  LUT5 #(
    .INIT(32'hFFFF1110)) 
    \counter[3]_i_2 
       (.I0(\cycles[26]_i_3_n_0 ),
        .I1(cycles[0]),
        .I2(dynamode[0]),
        .I3(dynamode[1]),
        .I4(\dynamode_reg[1]_0 ),
        .O(\counter[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'hFE017F80)) 
    \counter[3]_i_3 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(\counter_reg[3]_0 ),
        .O(p_0_in__3[3]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\counter[3]_i_2_n_0 ),
        .D(p_0_in__3[0]),
        .Q(Q[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\counter[3]_i_2_n_0 ),
        .D(p_0_in__3[1]),
        .Q(Q[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\counter[3]_i_2_n_0 ),
        .D(p_0_in__3[2]),
        .Q(Q[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\counter[3]_i_2_n_0 ),
        .D(p_0_in__3[3]),
        .Q(Q[3]),
        .R(SR));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cycles0_inferred__0/i__carry 
       (.CI(\<const0> ),
        .CO({\cycles0_inferred__0/i__carry_n_0 ,\cycles0_inferred__0/i__carry_n_1 ,\cycles0_inferred__0/i__carry_n_2 ,\cycles0_inferred__0/i__carry_n_3 }),
        .CYINIT(cycles[0]),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\cycles0_inferred__0/i__carry_n_4 ,\cycles0_inferred__0/i__carry_n_5 ,\cycles0_inferred__0/i__carry_n_6 ,\cycles0_inferred__0/i__carry_n_7 }),
        .S(cycles[4:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cycles0_inferred__0/i__carry__0 
       (.CI(\cycles0_inferred__0/i__carry_n_0 ),
        .CO({\cycles0_inferred__0/i__carry__0_n_0 ,\cycles0_inferred__0/i__carry__0_n_1 ,\cycles0_inferred__0/i__carry__0_n_2 ,\cycles0_inferred__0/i__carry__0_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\cycles0_inferred__0/i__carry__0_n_4 ,\cycles0_inferred__0/i__carry__0_n_5 ,\cycles0_inferred__0/i__carry__0_n_6 ,\cycles0_inferred__0/i__carry__0_n_7 }),
        .S(cycles[8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cycles0_inferred__0/i__carry__1 
       (.CI(\cycles0_inferred__0/i__carry__0_n_0 ),
        .CO({\cycles0_inferred__0/i__carry__1_n_0 ,\cycles0_inferred__0/i__carry__1_n_1 ,\cycles0_inferred__0/i__carry__1_n_2 ,\cycles0_inferred__0/i__carry__1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\cycles0_inferred__0/i__carry__1_n_4 ,\cycles0_inferred__0/i__carry__1_n_5 ,\cycles0_inferred__0/i__carry__1_n_6 ,\cycles0_inferred__0/i__carry__1_n_7 }),
        .S(cycles[12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cycles0_inferred__0/i__carry__2 
       (.CI(\cycles0_inferred__0/i__carry__1_n_0 ),
        .CO({\cycles0_inferred__0/i__carry__2_n_0 ,\cycles0_inferred__0/i__carry__2_n_1 ,\cycles0_inferred__0/i__carry__2_n_2 ,\cycles0_inferred__0/i__carry__2_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\cycles0_inferred__0/i__carry__2_n_4 ,\cycles0_inferred__0/i__carry__2_n_5 ,\cycles0_inferred__0/i__carry__2_n_6 ,\cycles0_inferred__0/i__carry__2_n_7 }),
        .S(cycles[16:13]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cycles0_inferred__0/i__carry__3 
       (.CI(\cycles0_inferred__0/i__carry__2_n_0 ),
        .CO({\cycles0_inferred__0/i__carry__3_n_0 ,\cycles0_inferred__0/i__carry__3_n_1 ,\cycles0_inferred__0/i__carry__3_n_2 ,\cycles0_inferred__0/i__carry__3_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\cycles0_inferred__0/i__carry__3_n_4 ,\cycles0_inferred__0/i__carry__3_n_5 ,\cycles0_inferred__0/i__carry__3_n_6 ,\cycles0_inferred__0/i__carry__3_n_7 }),
        .S(cycles[20:17]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cycles0_inferred__0/i__carry__4 
       (.CI(\cycles0_inferred__0/i__carry__3_n_0 ),
        .CO({\cycles0_inferred__0/i__carry__4_n_0 ,\cycles0_inferred__0/i__carry__4_n_1 ,\cycles0_inferred__0/i__carry__4_n_2 ,\cycles0_inferred__0/i__carry__4_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\cycles0_inferred__0/i__carry__4_n_4 ,\cycles0_inferred__0/i__carry__4_n_5 ,\cycles0_inferred__0/i__carry__4_n_6 ,\cycles0_inferred__0/i__carry__4_n_7 }),
        .S(cycles[24:21]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cycles0_inferred__0/i__carry__5 
       (.CI(\cycles0_inferred__0/i__carry__4_n_0 ),
        .CO(\cycles0_inferred__0/i__carry__5_n_3 ),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\cycles0_inferred__0/i__carry__5_n_6 ,\cycles0_inferred__0/i__carry__5_n_7 }),
        .S({\<const0> ,\<const0> ,cycles[26:25]}));
  LUT4 #(
    .INIT(16'h1E10)) 
    \cycles[0]_i_1 
       (.I0(dynamode[1]),
        .I1(dynamode[0]),
        .I2(cycles[0]),
        .I3(\cycles[26]_i_3_n_0 ),
        .O(\cycles[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \cycles[26]_i_1 
       (.I0(cycles[0]),
        .I1(\cycles[26]_i_3_n_0 ),
        .O(\cycles[26]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hEEEF)) 
    \cycles[26]_i_2 
       (.I0(dynamode[1]),
        .I1(dynamode[0]),
        .I2(cycles[0]),
        .I3(\cycles[26]_i_3_n_0 ),
        .O(cycles_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \cycles[26]_i_3 
       (.I0(\cycles[26]_i_4_n_0 ),
        .I1(\cycles[26]_i_5_n_0 ),
        .I2(\cycles[26]_i_6_n_0 ),
        .I3(\cycles[26]_i_7_n_0 ),
        .I4(\cycles[26]_i_8_n_0 ),
        .I5(\cycles[26]_i_9_n_0 ),
        .O(\cycles[26]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \cycles[26]_i_4 
       (.I0(cycles[16]),
        .I1(cycles[15]),
        .I2(cycles[17]),
        .I3(cycles[18]),
        .O(\cycles[26]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hDFFF)) 
    \cycles[26]_i_5 
       (.I0(cycles[20]),
        .I1(cycles[19]),
        .I2(cycles[22]),
        .I3(cycles[21]),
        .O(\cycles[26]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \cycles[26]_i_6 
       (.I0(cycles[8]),
        .I1(cycles[7]),
        .I2(cycles[10]),
        .I3(cycles[9]),
        .O(\cycles[26]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFF7F)) 
    \cycles[26]_i_7 
       (.I0(cycles[12]),
        .I1(cycles[11]),
        .I2(cycles[14]),
        .I3(cycles[13]),
        .O(\cycles[26]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \cycles[26]_i_8 
       (.I0(cycles[4]),
        .I1(cycles[3]),
        .I2(cycles[6]),
        .I3(cycles[5]),
        .O(\cycles[26]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF7FF)) 
    \cycles[26]_i_9 
       (.I0(cycles[25]),
        .I1(cycles[26]),
        .I2(cycles[23]),
        .I3(cycles[24]),
        .I4(cycles[2]),
        .I5(cycles[1]),
        .O(\cycles[26]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_reg[0] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\cycles[0]_i_1_n_0 ),
        .Q(cycles[0]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_reg[10] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(cycles_0),
        .D(\cycles0_inferred__0/i__carry__1_n_6 ),
        .Q(cycles[10]),
        .R(\cycles[26]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_reg[11] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(cycles_0),
        .D(\cycles0_inferred__0/i__carry__1_n_5 ),
        .Q(cycles[11]),
        .R(\cycles[26]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_reg[12] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(cycles_0),
        .D(\cycles0_inferred__0/i__carry__1_n_4 ),
        .Q(cycles[12]),
        .R(\cycles[26]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_reg[13] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(cycles_0),
        .D(\cycles0_inferred__0/i__carry__2_n_7 ),
        .Q(cycles[13]),
        .R(\cycles[26]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_reg[14] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(cycles_0),
        .D(\cycles0_inferred__0/i__carry__2_n_6 ),
        .Q(cycles[14]),
        .R(\cycles[26]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_reg[15] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(cycles_0),
        .D(\cycles0_inferred__0/i__carry__2_n_5 ),
        .Q(cycles[15]),
        .R(\cycles[26]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_reg[16] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(cycles_0),
        .D(\cycles0_inferred__0/i__carry__2_n_4 ),
        .Q(cycles[16]),
        .R(\cycles[26]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_reg[17] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(cycles_0),
        .D(\cycles0_inferred__0/i__carry__3_n_7 ),
        .Q(cycles[17]),
        .R(\cycles[26]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_reg[18] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(cycles_0),
        .D(\cycles0_inferred__0/i__carry__3_n_6 ),
        .Q(cycles[18]),
        .R(\cycles[26]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_reg[19] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(cycles_0),
        .D(\cycles0_inferred__0/i__carry__3_n_5 ),
        .Q(cycles[19]),
        .R(\cycles[26]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_reg[1] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(cycles_0),
        .D(\cycles0_inferred__0/i__carry_n_7 ),
        .Q(cycles[1]),
        .R(\cycles[26]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_reg[20] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(cycles_0),
        .D(\cycles0_inferred__0/i__carry__3_n_4 ),
        .Q(cycles[20]),
        .R(\cycles[26]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_reg[21] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(cycles_0),
        .D(\cycles0_inferred__0/i__carry__4_n_7 ),
        .Q(cycles[21]),
        .R(\cycles[26]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_reg[22] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(cycles_0),
        .D(\cycles0_inferred__0/i__carry__4_n_6 ),
        .Q(cycles[22]),
        .R(\cycles[26]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_reg[23] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(cycles_0),
        .D(\cycles0_inferred__0/i__carry__4_n_5 ),
        .Q(cycles[23]),
        .R(\cycles[26]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_reg[24] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(cycles_0),
        .D(\cycles0_inferred__0/i__carry__4_n_4 ),
        .Q(cycles[24]),
        .R(\cycles[26]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_reg[25] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(cycles_0),
        .D(\cycles0_inferred__0/i__carry__5_n_7 ),
        .Q(cycles[25]),
        .R(\cycles[26]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_reg[26] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(cycles_0),
        .D(\cycles0_inferred__0/i__carry__5_n_6 ),
        .Q(cycles[26]),
        .R(\cycles[26]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_reg[2] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(cycles_0),
        .D(\cycles0_inferred__0/i__carry_n_6 ),
        .Q(cycles[2]),
        .R(\cycles[26]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_reg[3] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(cycles_0),
        .D(\cycles0_inferred__0/i__carry_n_5 ),
        .Q(cycles[3]),
        .R(\cycles[26]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_reg[4] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(cycles_0),
        .D(\cycles0_inferred__0/i__carry_n_4 ),
        .Q(cycles[4]),
        .R(\cycles[26]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_reg[5] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(cycles_0),
        .D(\cycles0_inferred__0/i__carry__0_n_7 ),
        .Q(cycles[5]),
        .R(\cycles[26]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_reg[6] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(cycles_0),
        .D(\cycles0_inferred__0/i__carry__0_n_6 ),
        .Q(cycles[6]),
        .R(\cycles[26]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_reg[7] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(cycles_0),
        .D(\cycles0_inferred__0/i__carry__0_n_5 ),
        .Q(cycles[7]),
        .R(\cycles[26]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_reg[8] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(cycles_0),
        .D(\cycles0_inferred__0/i__carry__0_n_4 ),
        .Q(cycles[8]),
        .R(\cycles[26]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_reg[9] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(cycles_0),
        .D(\cycles0_inferred__0/i__carry__1_n_7 ),
        .Q(cycles[9]),
        .R(\cycles[26]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFF00040000)) 
    \dynamode[0]_i_1 
       (.I0(\dynamode_reg[1]_0 ),
        .I1(\dynamode_reg[1]_1 ),
        .I2(\dynamode_reg[1]_2 ),
        .I3(\dynamode_reg[1]_3 ),
        .I4(\dynamode_reg[1]_4 ),
        .I5(dynamode[0]),
        .O(\dynamode[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFF00040000)) 
    \dynamode[1]_i_1 
       (.I0(\dynamode_reg[1]_0 ),
        .I1(\dynamode_reg[1]_1 ),
        .I2(\dynamode_reg[1]_2 ),
        .I3(\dynamode_reg[1]_3 ),
        .I4(\dynamode_reg[1]_4 ),
        .I5(dynamode[1]),
        .O(\dynamode[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dynamode_reg[0] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\dynamode[0]_i_1_n_0 ),
        .Q(dynamode[0]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \dynamode_reg[1] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\dynamode[1]_i_1_n_0 ),
        .Q(dynamode[1]),
        .R(\<const0> ));
endmodule

module dac
   (next_sample,
    AUD_PWM_OBUF,
    out,
    CLK_125MHZ_FPGA_IBUF_BUFG,
    DI,
    S,
    code);
  output next_sample;
  output AUD_PWM_OBUF;
  output [1:0]out;
  input CLK_125MHZ_FPGA_IBUF_BUFG;
  input [0:0]DI;
  input [0:0]S;
  input [1:0]code;

  wire \<const0> ;
  wire \<const1> ;
  wire AUD_PWM_OBUF;
  wire CLK_125MHZ_FPGA_IBUF_BUFG;
  wire [0:0]DI;
  wire [0:0]S;
  wire [1:0]code;
  wire \cycles[0]_i_2_n_0 ;
  wire [11:0]cycles_reg;
  wire \cycles_reg[0]_i_1_n_0 ;
  wire \cycles_reg[0]_i_1_n_1 ;
  wire \cycles_reg[0]_i_1_n_2 ;
  wire \cycles_reg[0]_i_1_n_3 ;
  wire \cycles_reg[0]_i_1_n_4 ;
  wire \cycles_reg[0]_i_1_n_5 ;
  wire \cycles_reg[0]_i_1_n_6 ;
  wire \cycles_reg[0]_i_1_n_7 ;
  wire \cycles_reg[4]_i_1_n_0 ;
  wire \cycles_reg[4]_i_1_n_1 ;
  wire \cycles_reg[4]_i_1_n_2 ;
  wire \cycles_reg[4]_i_1_n_3 ;
  wire \cycles_reg[4]_i_1_n_4 ;
  wire \cycles_reg[4]_i_1_n_5 ;
  wire \cycles_reg[4]_i_1_n_6 ;
  wire \cycles_reg[4]_i_1_n_7 ;
  wire \cycles_reg[8]_i_1_n_1 ;
  wire \cycles_reg[8]_i_1_n_2 ;
  wire \cycles_reg[8]_i_1_n_3 ;
  wire \cycles_reg[8]_i_1_n_4 ;
  wire \cycles_reg[8]_i_1_n_5 ;
  wire \cycles_reg[8]_i_1_n_6 ;
  wire \cycles_reg[8]_i_1_n_7 ;
  wire next_sample;
  wire next_sample_i_1_n_0;
  wire next_sample_i_2_n_0;
  wire next_sample_i_3_n_0;
  wire [1:0]out;
  wire pwm0_carry__0_i_2_n_0;
  wire pwm0_carry__0_n_2;
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
    \cycles[0]_i_2 
       (.I0(cycles_reg[0]),
        .O(\cycles[0]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_reg[0] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\cycles_reg[0]_i_1_n_7 ),
        .Q(cycles_reg[0]),
        .R(\<const0> ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cycles_reg[0]_i_1 
       (.CI(\<const0> ),
        .CO({\cycles_reg[0]_i_1_n_0 ,\cycles_reg[0]_i_1_n_1 ,\cycles_reg[0]_i_1_n_2 ,\cycles_reg[0]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const1> }),
        .O({\cycles_reg[0]_i_1_n_4 ,\cycles_reg[0]_i_1_n_5 ,\cycles_reg[0]_i_1_n_6 ,\cycles_reg[0]_i_1_n_7 }),
        .S({cycles_reg[3:1],\cycles[0]_i_2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_reg[10] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\cycles_reg[8]_i_1_n_5 ),
        .Q(cycles_reg[10]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_reg[11] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\cycles_reg[8]_i_1_n_4 ),
        .Q(cycles_reg[11]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_reg[1] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\cycles_reg[0]_i_1_n_6 ),
        .Q(cycles_reg[1]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_reg[2] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\cycles_reg[0]_i_1_n_5 ),
        .Q(cycles_reg[2]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_reg[3] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\cycles_reg[0]_i_1_n_4 ),
        .Q(cycles_reg[3]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_reg[4] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\cycles_reg[4]_i_1_n_7 ),
        .Q(cycles_reg[4]),
        .R(\<const0> ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cycles_reg[4]_i_1 
       (.CI(\cycles_reg[0]_i_1_n_0 ),
        .CO({\cycles_reg[4]_i_1_n_0 ,\cycles_reg[4]_i_1_n_1 ,\cycles_reg[4]_i_1_n_2 ,\cycles_reg[4]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\cycles_reg[4]_i_1_n_4 ,\cycles_reg[4]_i_1_n_5 ,\cycles_reg[4]_i_1_n_6 ,\cycles_reg[4]_i_1_n_7 }),
        .S(cycles_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_reg[5] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\cycles_reg[4]_i_1_n_6 ),
        .Q(cycles_reg[5]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_reg[6] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\cycles_reg[4]_i_1_n_5 ),
        .Q(cycles_reg[6]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_reg[7] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\cycles_reg[4]_i_1_n_4 ),
        .Q(cycles_reg[7]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_reg[8] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\cycles_reg[8]_i_1_n_7 ),
        .Q(out[0]),
        .R(\<const0> ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cycles_reg[8]_i_1 
       (.CI(\cycles_reg[4]_i_1_n_0 ),
        .CO({\cycles_reg[8]_i_1_n_1 ,\cycles_reg[8]_i_1_n_2 ,\cycles_reg[8]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\cycles_reg[8]_i_1_n_4 ,\cycles_reg[8]_i_1_n_5 ,\cycles_reg[8]_i_1_n_6 ,\cycles_reg[8]_i_1_n_7 }),
        .S({cycles_reg[11:10],out}));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_reg[9] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\cycles_reg[8]_i_1_n_6 ),
        .Q(out[1]),
        .R(\<const0> ));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    next_sample_i_1
       (.I0(next_sample_i_2_n_0),
        .I1(cycles_reg[5]),
        .I2(cycles_reg[4]),
        .I3(cycles_reg[3]),
        .I4(cycles_reg[2]),
        .I5(next_sample_i_3_n_0),
        .O(next_sample_i_1_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    next_sample_i_2
       (.I0(cycles_reg[6]),
        .I1(cycles_reg[7]),
        .O(next_sample_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    next_sample_i_3
       (.I0(out[0]),
        .I1(out[1]),
        .I2(cycles_reg[0]),
        .I3(cycles_reg[1]),
        .I4(cycles_reg[11]),
        .I5(cycles_reg[10]),
        .O(next_sample_i_3_n_0));
  FDRE next_sample_reg
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(next_sample_i_1_n_0),
        .Q(next_sample),
        .R(\<const0> ));
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
        .CO({pwm0_carry__0_n_2,pwm0_carry__0_n_3}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,DI}),
        .S({\<const0> ,\<const0> ,pwm0_carry__0_i_2_n_0,S}));
  LUT2 #(
    .INIT(4'h1)) 
    pwm0_carry__0_i_2
       (.I0(cycles_reg[11]),
        .I1(cycles_reg[10]),
        .O(pwm0_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'h70)) 
    pwm0_carry_i_1
       (.I0(cycles_reg[7]),
        .I1(cycles_reg[6]),
        .I2(code[0]),
        .O(pwm0_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'h70)) 
    pwm0_carry_i_2
       (.I0(cycles_reg[5]),
        .I1(cycles_reg[4]),
        .I2(code[1]),
        .O(pwm0_carry_i_2_n_0));
  LUT3 #(
    .INIT(8'h70)) 
    pwm0_carry_i_3
       (.I0(cycles_reg[3]),
        .I1(cycles_reg[2]),
        .I2(code[0]),
        .O(pwm0_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pwm0_carry_i_4
       (.I0(cycles_reg[1]),
        .O(pwm0_carry_i_4_n_0));
  LUT3 #(
    .INIT(8'h81)) 
    pwm0_carry_i_5
       (.I0(code[0]),
        .I1(cycles_reg[6]),
        .I2(cycles_reg[7]),
        .O(pwm0_carry_i_5_n_0));
  LUT3 #(
    .INIT(8'h81)) 
    pwm0_carry_i_6
       (.I0(code[1]),
        .I1(cycles_reg[4]),
        .I2(cycles_reg[5]),
        .O(pwm0_carry_i_6_n_0));
  LUT3 #(
    .INIT(8'h81)) 
    pwm0_carry_i_7
       (.I0(code[0]),
        .I1(cycles_reg[2]),
        .I2(cycles_reg[3]),
        .O(pwm0_carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    pwm0_carry_i_8
       (.I0(cycles_reg[1]),
        .I1(cycles_reg[0]),
        .O(pwm0_carry_i_8_n_0));
  FDRE pwm_reg
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\<const1> ),
        .Q(AUD_PWM_OBUF),
        .R(pwm0_carry__0_n_2));
endmodule

module debouncer
   (D,
    SR,
    \temp_reg[1] ,
    \saturating_counter_reg[3][1]_0 ,
    \temp_reg[0] ,
    \saturating_counter_reg[2][3]_0 ,
    \saturating_counter_reg[2][6]_0 ,
    Q,
    \saturating_counter_reg[3][7]_0 ,
    CLK_125MHZ_FPGA_IBUF_BUFG);
  output [3:0]D;
  output [0:0]SR;
  output \temp_reg[1] ;
  output \saturating_counter_reg[3][1]_0 ;
  output \temp_reg[0] ;
  output \saturating_counter_reg[2][3]_0 ;
  output \saturating_counter_reg[2][6]_0 ;
  input [2:0]Q;
  input [3:0]\saturating_counter_reg[3][7]_0 ;
  input CLK_125MHZ_FPGA_IBUF_BUFG;

  wire \<const0> ;
  wire \<const1> ;
  wire CLK_125MHZ_FPGA_IBUF_BUFG;
  wire [3:0]D;
  wire [2:0]Q;
  wire [0:0]SR;
  wire \dynamode[1]_i_5_n_0 ;
  wire \dynamode[1]_i_6_n_0 ;
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
  wire \saturating_counter_reg[2][3]_0 ;
  wire \saturating_counter_reg[2][6]_0 ;
  wire [7:0]\saturating_counter_reg[2]_2 ;
  wire \saturating_counter_reg[3][1]_0 ;
  wire [3:0]\saturating_counter_reg[3][7]_0 ;
  wire [7:0]\saturating_counter_reg[3]_3 ;
  wire \temp[0]_i_2_n_0 ;
  wire \temp[1]_i_2_n_0 ;
  wire \temp[3]_i_2_n_0 ;
  wire \temp_reg[0] ;
  wire \temp_reg[1] ;
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
  wire \wrapping_counter[15]_i_2_n_0 ;
  wire \wrapping_counter[15]_i_3_n_0 ;
  wire [0:0]wrapping_counter_0;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT2 #(
    .INIT(4'h1)) 
    \counter[3]_i_1 
       (.I0(\temp_reg[1] ),
        .I1(\saturating_counter_reg[3][1]_0 ),
        .O(SR));
  LUT6 #(
    .INIT(64'h00000000000000FE)) 
    \counter[3]_i_4 
       (.I0(Q[0]),
        .I1(\dynamode[1]_i_6_n_0 ),
        .I2(\temp[0]_i_2_n_0 ),
        .I3(Q[1]),
        .I4(\dynamode[1]_i_5_n_0 ),
        .I5(\temp[1]_i_2_n_0 ),
        .O(\temp_reg[0] ));
  LUT6 #(
    .INIT(64'h01010101010101FF)) 
    \dynamode[1]_i_2 
       (.I0(Q[1]),
        .I1(\dynamode[1]_i_5_n_0 ),
        .I2(\temp[1]_i_2_n_0 ),
        .I3(Q[0]),
        .I4(\dynamode[1]_i_6_n_0 ),
        .I5(\temp[0]_i_2_n_0 ),
        .O(\temp_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \dynamode[1]_i_3 
       (.I0(\saturating_counter_reg[2]_2 [6]),
        .I1(\saturating_counter_reg[2]_2 [7]),
        .O(\saturating_counter_reg[2][6]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEFF)) 
    \dynamode[1]_i_4 
       (.I0(\temp[3]_i_2_n_0 ),
        .I1(\saturating_counter_reg[3]_3 [1]),
        .I2(\saturating_counter_reg[3]_3 [0]),
        .I3(\saturating_counter_reg[3]_3 [3]),
        .I4(\saturating_counter_reg[3]_3 [2]),
        .I5(Q[2]),
        .O(\saturating_counter_reg[3][1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hFFEF)) 
    \dynamode[1]_i_5 
       (.I0(\saturating_counter_reg[1]_1 [1]),
        .I1(\saturating_counter_reg[1]_1 [0]),
        .I2(\saturating_counter_reg[1]_1 [3]),
        .I3(\saturating_counter_reg[1]_1 [2]),
        .O(\dynamode[1]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFFEF)) 
    \dynamode[1]_i_6 
       (.I0(\saturating_counter_reg[0]_0 [1]),
        .I1(\saturating_counter_reg[0]_0 [0]),
        .I2(\saturating_counter_reg[0]_0 [3]),
        .I3(\saturating_counter_reg[0]_0 [2]),
        .O(\dynamode[1]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \saturating_counter[0][0]_i_1 
       (.I0(\saturating_counter_reg[0]_0 [0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \saturating_counter[0][1]_i_1 
       (.I0(\saturating_counter_reg[0]_0 [0]),
        .I1(\saturating_counter_reg[0]_0 [1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \saturating_counter[0][2]_i_1 
       (.I0(\saturating_counter_reg[0]_0 [1]),
        .I1(\saturating_counter_reg[0]_0 [0]),
        .I2(\saturating_counter_reg[0]_0 [2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \saturating_counter[0][3]_i_1 
       (.I0(\saturating_counter_reg[0]_0 [2]),
        .I1(\saturating_counter_reg[0]_0 [0]),
        .I2(\saturating_counter_reg[0]_0 [1]),
        .I3(\saturating_counter_reg[0]_0 [3]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \saturating_counter[0][4]_i_1 
       (.I0(\saturating_counter_reg[0]_0 [3]),
        .I1(\saturating_counter_reg[0]_0 [1]),
        .I2(\saturating_counter_reg[0]_0 [0]),
        .I3(\saturating_counter_reg[0]_0 [2]),
        .I4(\saturating_counter_reg[0]_0 [4]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \saturating_counter[0][5]_i_1 
       (.I0(\saturating_counter_reg[0]_0 [4]),
        .I1(\saturating_counter_reg[0]_0 [2]),
        .I2(\saturating_counter_reg[0]_0 [0]),
        .I3(\saturating_counter_reg[0]_0 [1]),
        .I4(\saturating_counter_reg[0]_0 [3]),
        .I5(\saturating_counter_reg[0]_0 [5]),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \saturating_counter[0][6]_i_1 
       (.I0(\saturating_counter[0][7]_i_4_n_0 ),
        .I1(\saturating_counter_reg[0]_0 [4]),
        .I2(\saturating_counter_reg[0]_0 [5]),
        .I3(\saturating_counter_reg[0]_0 [6]),
        .O(p_0_in[6]));
  LUT2 #(
    .INIT(4'h1)) 
    \saturating_counter[0][7]_i_1 
       (.I0(\wrapping_counter[15]_i_2_n_0 ),
        .I1(\saturating_counter_reg[3][7]_0 [0]),
        .O(\saturating_counter[0][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000100FF00FF00FF)) 
    \saturating_counter[0][7]_i_2 
       (.I0(\saturating_counter_reg[0]_0 [5]),
        .I1(\saturating_counter_reg[0]_0 [4]),
        .I2(\saturating_counter_reg[0]_0 [3]),
        .I3(\wrapping_counter[15]_i_2_n_0 ),
        .I4(\saturating_counter_reg[0]_0 [6]),
        .I5(\saturating_counter_reg[0]_0 [7]),
        .O(saturating_counter));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \saturating_counter[0][7]_i_3 
       (.I0(\saturating_counter[0][7]_i_4_n_0 ),
        .I1(\saturating_counter_reg[0]_0 [6]),
        .I2(\saturating_counter_reg[0]_0 [5]),
        .I3(\saturating_counter_reg[0]_0 [4]),
        .I4(\saturating_counter_reg[0]_0 [7]),
        .O(p_0_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \saturating_counter[0][7]_i_4 
       (.I0(\saturating_counter_reg[0]_0 [2]),
        .I1(\saturating_counter_reg[0]_0 [0]),
        .I2(\saturating_counter_reg[0]_0 [1]),
        .I3(\saturating_counter_reg[0]_0 [3]),
        .O(\saturating_counter[0][7]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \saturating_counter[1][0]_i_1 
       (.I0(\saturating_counter_reg[1]_1 [0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \saturating_counter[1][1]_i_1 
       (.I0(\saturating_counter_reg[1]_1 [0]),
        .I1(\saturating_counter_reg[1]_1 [1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \saturating_counter[1][2]_i_1 
       (.I0(\saturating_counter_reg[1]_1 [1]),
        .I1(\saturating_counter_reg[1]_1 [0]),
        .I2(\saturating_counter_reg[1]_1 [2]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \saturating_counter[1][3]_i_1 
       (.I0(\saturating_counter_reg[1]_1 [2]),
        .I1(\saturating_counter_reg[1]_1 [0]),
        .I2(\saturating_counter_reg[1]_1 [1]),
        .I3(\saturating_counter_reg[1]_1 [3]),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \saturating_counter[1][4]_i_1 
       (.I0(\saturating_counter_reg[1]_1 [3]),
        .I1(\saturating_counter_reg[1]_1 [1]),
        .I2(\saturating_counter_reg[1]_1 [0]),
        .I3(\saturating_counter_reg[1]_1 [2]),
        .I4(\saturating_counter_reg[1]_1 [4]),
        .O(p_0_in__0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \saturating_counter[1][5]_i_1 
       (.I0(\saturating_counter_reg[1]_1 [4]),
        .I1(\saturating_counter_reg[1]_1 [2]),
        .I2(\saturating_counter_reg[1]_1 [0]),
        .I3(\saturating_counter_reg[1]_1 [1]),
        .I4(\saturating_counter_reg[1]_1 [3]),
        .I5(\saturating_counter_reg[1]_1 [5]),
        .O(p_0_in__0[5]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \saturating_counter[1][6]_i_1 
       (.I0(\saturating_counter[1][7]_i_4_n_0 ),
        .I1(\saturating_counter_reg[1]_1 [4]),
        .I2(\saturating_counter_reg[1]_1 [5]),
        .I3(\saturating_counter_reg[1]_1 [6]),
        .O(p_0_in__0[6]));
  LUT2 #(
    .INIT(4'h1)) 
    \saturating_counter[1][7]_i_1 
       (.I0(\wrapping_counter[15]_i_2_n_0 ),
        .I1(\saturating_counter_reg[3][7]_0 [1]),
        .O(\saturating_counter[1][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000100FF00FF00FF)) 
    \saturating_counter[1][7]_i_2 
       (.I0(\saturating_counter_reg[1]_1 [5]),
        .I1(\saturating_counter_reg[1]_1 [4]),
        .I2(\saturating_counter_reg[1]_1 [3]),
        .I3(\wrapping_counter[15]_i_2_n_0 ),
        .I4(\saturating_counter_reg[1]_1 [6]),
        .I5(\saturating_counter_reg[1]_1 [7]),
        .O(\saturating_counter[1][7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \saturating_counter[1][7]_i_3 
       (.I0(\saturating_counter[1][7]_i_4_n_0 ),
        .I1(\saturating_counter_reg[1]_1 [6]),
        .I2(\saturating_counter_reg[1]_1 [5]),
        .I3(\saturating_counter_reg[1]_1 [4]),
        .I4(\saturating_counter_reg[1]_1 [7]),
        .O(p_0_in__0[7]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \saturating_counter[1][7]_i_4 
       (.I0(\saturating_counter_reg[1]_1 [2]),
        .I1(\saturating_counter_reg[1]_1 [0]),
        .I2(\saturating_counter_reg[1]_1 [1]),
        .I3(\saturating_counter_reg[1]_1 [3]),
        .O(\saturating_counter[1][7]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \saturating_counter[2][0]_i_1 
       (.I0(\saturating_counter_reg[2]_2 [0]),
        .O(p_0_in__1[0]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \saturating_counter[2][1]_i_1 
       (.I0(\saturating_counter_reg[2]_2 [0]),
        .I1(\saturating_counter_reg[2]_2 [1]),
        .O(p_0_in__1[1]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \saturating_counter[2][2]_i_1 
       (.I0(\saturating_counter_reg[2]_2 [1]),
        .I1(\saturating_counter_reg[2]_2 [0]),
        .I2(\saturating_counter_reg[2]_2 [2]),
        .O(p_0_in__1[2]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \saturating_counter[2][3]_i_1 
       (.I0(\saturating_counter_reg[2]_2 [2]),
        .I1(\saturating_counter_reg[2]_2 [0]),
        .I2(\saturating_counter_reg[2]_2 [1]),
        .I3(\saturating_counter_reg[2]_2 [3]),
        .O(p_0_in__1[3]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \saturating_counter[2][4]_i_1 
       (.I0(\saturating_counter_reg[2]_2 [3]),
        .I1(\saturating_counter_reg[2]_2 [1]),
        .I2(\saturating_counter_reg[2]_2 [0]),
        .I3(\saturating_counter_reg[2]_2 [2]),
        .I4(\saturating_counter_reg[2]_2 [4]),
        .O(p_0_in__1[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \saturating_counter[2][5]_i_1 
       (.I0(\saturating_counter_reg[2]_2 [4]),
        .I1(\saturating_counter_reg[2]_2 [2]),
        .I2(\saturating_counter_reg[2]_2 [0]),
        .I3(\saturating_counter_reg[2]_2 [1]),
        .I4(\saturating_counter_reg[2]_2 [3]),
        .I5(\saturating_counter_reg[2]_2 [5]),
        .O(p_0_in__1[5]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \saturating_counter[2][6]_i_1 
       (.I0(\saturating_counter[2][7]_i_4_n_0 ),
        .I1(\saturating_counter_reg[2]_2 [4]),
        .I2(\saturating_counter_reg[2]_2 [5]),
        .I3(\saturating_counter_reg[2]_2 [6]),
        .O(p_0_in__1[6]));
  LUT2 #(
    .INIT(4'h1)) 
    \saturating_counter[2][7]_i_1 
       (.I0(\wrapping_counter[15]_i_2_n_0 ),
        .I1(\saturating_counter_reg[3][7]_0 [2]),
        .O(\saturating_counter[2][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000100FF00FF00FF)) 
    \saturating_counter[2][7]_i_2 
       (.I0(\saturating_counter_reg[2]_2 [5]),
        .I1(\saturating_counter_reg[2]_2 [4]),
        .I2(\saturating_counter_reg[2]_2 [3]),
        .I3(\wrapping_counter[15]_i_2_n_0 ),
        .I4(\saturating_counter_reg[2]_2 [6]),
        .I5(\saturating_counter_reg[2]_2 [7]),
        .O(\saturating_counter[2][7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \saturating_counter[2][7]_i_3 
       (.I0(\saturating_counter[2][7]_i_4_n_0 ),
        .I1(\saturating_counter_reg[2]_2 [6]),
        .I2(\saturating_counter_reg[2]_2 [5]),
        .I3(\saturating_counter_reg[2]_2 [4]),
        .I4(\saturating_counter_reg[2]_2 [7]),
        .O(p_0_in__1[7]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \saturating_counter[2][7]_i_4 
       (.I0(\saturating_counter_reg[2]_2 [2]),
        .I1(\saturating_counter_reg[2]_2 [0]),
        .I2(\saturating_counter_reg[2]_2 [1]),
        .I3(\saturating_counter_reg[2]_2 [3]),
        .O(\saturating_counter[2][7]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \saturating_counter[3][0]_i_1 
       (.I0(\saturating_counter_reg[3]_3 [0]),
        .O(p_0_in__2[0]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \saturating_counter[3][1]_i_1 
       (.I0(\saturating_counter_reg[3]_3 [0]),
        .I1(\saturating_counter_reg[3]_3 [1]),
        .O(p_0_in__2[1]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \saturating_counter[3][2]_i_1 
       (.I0(\saturating_counter_reg[3]_3 [1]),
        .I1(\saturating_counter_reg[3]_3 [0]),
        .I2(\saturating_counter_reg[3]_3 [2]),
        .O(p_0_in__2[2]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \saturating_counter[3][3]_i_1 
       (.I0(\saturating_counter_reg[3]_3 [2]),
        .I1(\saturating_counter_reg[3]_3 [0]),
        .I2(\saturating_counter_reg[3]_3 [1]),
        .I3(\saturating_counter_reg[3]_3 [3]),
        .O(p_0_in__2[3]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \saturating_counter[3][4]_i_1 
       (.I0(\saturating_counter_reg[3]_3 [3]),
        .I1(\saturating_counter_reg[3]_3 [1]),
        .I2(\saturating_counter_reg[3]_3 [0]),
        .I3(\saturating_counter_reg[3]_3 [2]),
        .I4(\saturating_counter_reg[3]_3 [4]),
        .O(p_0_in__2[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \saturating_counter[3][5]_i_1 
       (.I0(\saturating_counter_reg[3]_3 [4]),
        .I1(\saturating_counter_reg[3]_3 [2]),
        .I2(\saturating_counter_reg[3]_3 [0]),
        .I3(\saturating_counter_reg[3]_3 [1]),
        .I4(\saturating_counter_reg[3]_3 [3]),
        .I5(\saturating_counter_reg[3]_3 [5]),
        .O(p_0_in__2[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \saturating_counter[3][6]_i_1 
       (.I0(\saturating_counter[3][7]_i_4_n_0 ),
        .I1(\saturating_counter_reg[3]_3 [4]),
        .I2(\saturating_counter_reg[3]_3 [5]),
        .I3(\saturating_counter_reg[3]_3 [6]),
        .O(p_0_in__2[6]));
  LUT2 #(
    .INIT(4'h1)) 
    \saturating_counter[3][7]_i_1 
       (.I0(\wrapping_counter[15]_i_2_n_0 ),
        .I1(\saturating_counter_reg[3][7]_0 [3]),
        .O(\saturating_counter[3][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000100FF00FF00FF)) 
    \saturating_counter[3][7]_i_2 
       (.I0(\saturating_counter_reg[3]_3 [5]),
        .I1(\saturating_counter_reg[3]_3 [4]),
        .I2(\saturating_counter_reg[3]_3 [3]),
        .I3(\wrapping_counter[15]_i_2_n_0 ),
        .I4(\saturating_counter_reg[3]_3 [6]),
        .I5(\saturating_counter_reg[3]_3 [7]),
        .O(\saturating_counter[3][7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \saturating_counter[3][7]_i_3 
       (.I0(\saturating_counter[3][7]_i_4_n_0 ),
        .I1(\saturating_counter_reg[3]_3 [6]),
        .I2(\saturating_counter_reg[3]_3 [5]),
        .I3(\saturating_counter_reg[3]_3 [4]),
        .I4(\saturating_counter_reg[3]_3 [7]),
        .O(p_0_in__2[7]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \saturating_counter[3][7]_i_4 
       (.I0(\saturating_counter_reg[3]_3 [2]),
        .I1(\saturating_counter_reg[3]_3 [0]),
        .I2(\saturating_counter_reg[3]_3 [1]),
        .I3(\saturating_counter_reg[3]_3 [3]),
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
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00000100)) 
    \temp[0]_i_1 
       (.I0(\temp[0]_i_2_n_0 ),
        .I1(\saturating_counter_reg[0]_0 [1]),
        .I2(\saturating_counter_reg[0]_0 [0]),
        .I3(\saturating_counter_reg[0]_0 [3]),
        .I4(\saturating_counter_reg[0]_0 [2]),
        .O(D[0]));
  LUT4 #(
    .INIT(16'hEFFF)) 
    \temp[0]_i_2 
       (.I0(\saturating_counter_reg[0]_0 [5]),
        .I1(\saturating_counter_reg[0]_0 [4]),
        .I2(\saturating_counter_reg[0]_0 [7]),
        .I3(\saturating_counter_reg[0]_0 [6]),
        .O(\temp[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h00000100)) 
    \temp[1]_i_1 
       (.I0(\temp[1]_i_2_n_0 ),
        .I1(\saturating_counter_reg[1]_1 [1]),
        .I2(\saturating_counter_reg[1]_1 [0]),
        .I3(\saturating_counter_reg[1]_1 [3]),
        .I4(\saturating_counter_reg[1]_1 [2]),
        .O(D[1]));
  LUT4 #(
    .INIT(16'hEFFF)) 
    \temp[1]_i_2 
       (.I0(\saturating_counter_reg[1]_1 [5]),
        .I1(\saturating_counter_reg[1]_1 [4]),
        .I2(\saturating_counter_reg[1]_1 [7]),
        .I3(\saturating_counter_reg[1]_1 [6]),
        .O(\temp[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \temp[2]_i_1 
       (.I0(\saturating_counter_reg[2][3]_0 ),
        .I1(\saturating_counter_reg[2]_2 [7]),
        .I2(\saturating_counter_reg[2]_2 [6]),
        .O(D[2]));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \temp[2]_i_2 
       (.I0(\saturating_counter_reg[2]_2 [3]),
        .I1(\saturating_counter_reg[2]_2 [2]),
        .I2(\saturating_counter_reg[2]_2 [0]),
        .I3(\saturating_counter_reg[2]_2 [1]),
        .I4(\saturating_counter_reg[2]_2 [5]),
        .I5(\saturating_counter_reg[2]_2 [4]),
        .O(\saturating_counter_reg[2][3]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h00000100)) 
    \temp[3]_i_1 
       (.I0(\temp[3]_i_2_n_0 ),
        .I1(\saturating_counter_reg[3]_3 [1]),
        .I2(\saturating_counter_reg[3]_3 [0]),
        .I3(\saturating_counter_reg[3]_3 [3]),
        .I4(\saturating_counter_reg[3]_3 [2]),
        .O(D[3]));
  LUT4 #(
    .INIT(16'hEFFF)) 
    \temp[3]_i_2 
       (.I0(\saturating_counter_reg[3]_3 [5]),
        .I1(\saturating_counter_reg[3]_3 [4]),
        .I2(\saturating_counter_reg[3]_3 [7]),
        .I3(\saturating_counter_reg[3]_3 [6]),
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
    .INIT(64'hFFFFFFFFFFFFEFFF)) 
    \wrapping_counter[0]_i_2 
       (.I0(\wrapping_counter[0]_i_3_n_0 ),
        .I1(\wrapping_counter[0]_i_4_n_0 ),
        .I2(wrapping_counter[15]),
        .I3(wrapping_counter[14]),
        .I4(wrapping_counter[1]),
        .I5(\wrapping_counter[0]_i_5_n_0 ),
        .O(\wrapping_counter[0]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \wrapping_counter[0]_i_3 
       (.I0(wrapping_counter[7]),
        .I1(wrapping_counter[6]),
        .I2(wrapping_counter[9]),
        .I3(wrapping_counter[8]),
        .O(\wrapping_counter[0]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \wrapping_counter[0]_i_4 
       (.I0(wrapping_counter[2]),
        .I1(wrapping_counter[3]),
        .I2(wrapping_counter[5]),
        .I3(wrapping_counter[4]),
        .O(\wrapping_counter[0]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hDFFF)) 
    \wrapping_counter[0]_i_5 
       (.I0(wrapping_counter[10]),
        .I1(wrapping_counter[11]),
        .I2(wrapping_counter[13]),
        .I3(wrapping_counter[12]),
        .O(\wrapping_counter[0]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wrapping_counter[15]_i_1 
       (.I0(\wrapping_counter[15]_i_2_n_0 ),
        .O(\wrapping_counter[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \wrapping_counter[15]_i_2 
       (.I0(\wrapping_counter[0]_i_5_n_0 ),
        .I1(\wrapping_counter[15]_i_3_n_0 ),
        .I2(\wrapping_counter[0]_i_4_n_0 ),
        .I3(\wrapping_counter[0]_i_3_n_0 ),
        .I4(wrapping_counter[0]),
        .O(\wrapping_counter[15]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hF7)) 
    \wrapping_counter[15]_i_3 
       (.I0(wrapping_counter[15]),
        .I1(wrapping_counter[14]),
        .I2(wrapping_counter[1]),
        .O(\wrapping_counter[15]_i_3_n_0 ));
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

module sq_wave_gen
   (DI,
    code,
    S,
    CLK_125MHZ_FPGA_IBUF_BUFG,
    next_sample,
    out);
  output [0:0]DI;
  output [1:0]code;
  output [0:0]S;
  input CLK_125MHZ_FPGA_IBUF_BUFG;
  input next_sample;
  input [1:0]out;

  wire \<const0> ;
  wire \<const1> ;
  wire CLK_125MHZ_FPGA_IBUF_BUFG;
  wire [0:0]DI;
  wire [0:0]S;
  wire [1:0]code;
  wire \code[8]_i_1_n_0 ;
  wire \code[9]_i_1_n_0 ;
  wire [8:1]cycles0;
  wire \cycles[0]_i_1_n_0 ;
  wire \cycles[8]_i_1_n_0 ;
  wire \cycles[8]_i_2_n_0 ;
  wire \cycles[8]_i_4_n_0 ;
  wire \cycles[8]_i_5_n_0 ;
  wire [8:0]cycles_reg;
  wire high;
  wire high_i_1_n_0;
  wire next_sample;
  wire [1:0]out;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h2E)) 
    \code[8]_i_1 
       (.I0(code[0]),
        .I1(next_sample),
        .I2(high),
        .O(\code[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \code[9]_i_1 
       (.I0(code[1]),
        .I1(next_sample),
        .I2(high),
        .O(\code[9]_i_1_n_0 ));
  FDRE \code_reg[8] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\code[8]_i_1_n_0 ),
        .Q(code[0]),
        .R(\<const0> ));
  FDRE \code_reg[9] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\code[9]_i_1_n_0 ),
        .Q(code[1]),
        .R(\<const0> ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \cycles[0]_i_1 
       (.I0(cycles_reg[0]),
        .O(\cycles[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \cycles[1]_i_1 
       (.I0(cycles_reg[0]),
        .I1(cycles_reg[1]),
        .O(cycles0[1]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \cycles[2]_i_1 
       (.I0(cycles_reg[1]),
        .I1(cycles_reg[0]),
        .I2(cycles_reg[2]),
        .O(cycles0[2]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \cycles[3]_i_1 
       (.I0(cycles_reg[2]),
        .I1(cycles_reg[0]),
        .I2(cycles_reg[1]),
        .I3(cycles_reg[3]),
        .O(cycles0[3]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \cycles[4]_i_1 
       (.I0(cycles_reg[2]),
        .I1(cycles_reg[1]),
        .I2(cycles_reg[0]),
        .I3(cycles_reg[3]),
        .I4(cycles_reg[4]),
        .O(cycles0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \cycles[5]_i_1 
       (.I0(cycles_reg[4]),
        .I1(cycles_reg[3]),
        .I2(cycles_reg[0]),
        .I3(cycles_reg[1]),
        .I4(cycles_reg[2]),
        .I5(cycles_reg[5]),
        .O(cycles0[5]));
  LUT3 #(
    .INIT(8'h78)) 
    \cycles[6]_i_1 
       (.I0(cycles_reg[5]),
        .I1(\cycles[8]_i_5_n_0 ),
        .I2(cycles_reg[6]),
        .O(cycles0[6]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \cycles[7]_i_1 
       (.I0(\cycles[8]_i_5_n_0 ),
        .I1(cycles_reg[5]),
        .I2(cycles_reg[6]),
        .I3(cycles_reg[7]),
        .O(cycles0[7]));
  LUT5 #(
    .INIT(32'h00008000)) 
    \cycles[8]_i_1 
       (.I0(cycles_reg[1]),
        .I1(cycles_reg[0]),
        .I2(cycles_reg[3]),
        .I3(\cycles[8]_i_4_n_0 ),
        .I4(next_sample),
        .O(\cycles[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF8000)) 
    \cycles[8]_i_2 
       (.I0(cycles_reg[1]),
        .I1(cycles_reg[0]),
        .I2(cycles_reg[3]),
        .I3(\cycles[8]_i_4_n_0 ),
        .I4(next_sample),
        .O(\cycles[8]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \cycles[8]_i_3 
       (.I0(\cycles[8]_i_5_n_0 ),
        .I1(cycles_reg[7]),
        .I2(cycles_reg[6]),
        .I3(cycles_reg[5]),
        .I4(cycles_reg[8]),
        .O(cycles0[8]));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \cycles[8]_i_4 
       (.I0(cycles_reg[5]),
        .I1(cycles_reg[6]),
        .I2(cycles_reg[2]),
        .I3(cycles_reg[4]),
        .I4(cycles_reg[8]),
        .I5(cycles_reg[7]),
        .O(\cycles[8]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \cycles[8]_i_5 
       (.I0(cycles_reg[2]),
        .I1(cycles_reg[1]),
        .I2(cycles_reg[0]),
        .I3(cycles_reg[3]),
        .I4(cycles_reg[4]),
        .O(\cycles[8]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_reg[0] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\cycles[8]_i_2_n_0 ),
        .D(\cycles[0]_i_1_n_0 ),
        .Q(cycles_reg[0]),
        .R(\cycles[8]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_reg[1] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\cycles[8]_i_2_n_0 ),
        .D(cycles0[1]),
        .Q(cycles_reg[1]),
        .R(\cycles[8]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_reg[2] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\cycles[8]_i_2_n_0 ),
        .D(cycles0[2]),
        .Q(cycles_reg[2]),
        .R(\cycles[8]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_reg[3] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\cycles[8]_i_2_n_0 ),
        .D(cycles0[3]),
        .Q(cycles_reg[3]),
        .R(\cycles[8]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_reg[4] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\cycles[8]_i_2_n_0 ),
        .D(cycles0[4]),
        .Q(cycles_reg[4]),
        .R(\cycles[8]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_reg[5] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\cycles[8]_i_2_n_0 ),
        .D(cycles0[5]),
        .Q(cycles_reg[5]),
        .R(\cycles[8]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_reg[6] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\cycles[8]_i_2_n_0 ),
        .D(cycles0[6]),
        .Q(cycles_reg[6]),
        .R(\cycles[8]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_reg[7] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\cycles[8]_i_2_n_0 ),
        .D(cycles0[7]),
        .Q(cycles_reg[7]),
        .R(\cycles[8]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cycles_reg[8] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\cycles[8]_i_2_n_0 ),
        .D(cycles0[8]),
        .Q(cycles_reg[8]),
        .R(\cycles[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    high_i_1
       (.I0(cycles_reg[1]),
        .I1(cycles_reg[0]),
        .I2(cycles_reg[3]),
        .I3(\cycles[8]_i_4_n_0 ),
        .I4(high),
        .O(high_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    high_reg
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(high_i_1_n_0),
        .Q(high),
        .R(\<const0> ));
  LUT4 #(
    .INIT(16'h22B2)) 
    pwm0_carry__0_i_1
       (.I0(code[1]),
        .I1(out[1]),
        .I2(code[0]),
        .I3(out[0]),
        .O(DI));
  LUT4 #(
    .INIT(16'h9009)) 
    pwm0_carry__0_i_3
       (.I0(code[1]),
        .I1(out[1]),
        .I2(code[0]),
        .I3(out[0]),
        .O(S));
endmodule

module synchronizer
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
  wire [3:0]tmp1;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  FDRE \tmp1_reg[0] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(D[0]),
        .Q(tmp1[0]),
        .R(\<const0> ));
  FDRE \tmp1_reg[1] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(D[1]),
        .Q(tmp1[1]),
        .R(\<const0> ));
  FDRE \tmp1_reg[2] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(D[2]),
        .Q(tmp1[2]),
        .R(\<const0> ));
  FDRE \tmp1_reg[3] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(D[3]),
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
  wire [3:0]LEDS_OBUF;
  wire [1:0]SWITCHES;
  wire bp_n_0;
  wire bp_n_1;
  wire bp_n_2;
  wire bp_n_4;
  wire bp_n_5;
  wire bp_n_6;
  wire [2:2]\button_edge_detector/temp ;
  wire [9:8]code;
  wire [9:8]cycles_reg;
  wire gen_n_0;
  wire gen_n_3;
  wire next_sample;

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
       (.I(\<const1> ),
        .O(LEDS[4]));
  OBUF \LEDS_OBUF[5]_inst 
       (.I(\<const1> ),
        .O(LEDS[5]));
  IBUF \SWITCHES_IBUF[1]_inst 
       (.I(SWITCHES[1]),
        .O(AUD_SD_OBUF));
  VCC VCC
       (.P(\<const1> ));
  button_parser bp
       (.CLK_125MHZ_FPGA_IBUF_BUFG(CLK_125MHZ_FPGA_IBUF_BUFG),
        .D(BUTTONS_IBUF),
        .Q(\button_edge_detector/temp ),
        .SR(bp_n_0),
        .\saturating_counter_reg[2][3] (bp_n_5),
        .\saturating_counter_reg[2][6] (bp_n_6),
        .\saturating_counter_reg[3][1] (bp_n_2),
        .\temp_reg[0] (bp_n_4),
        .\temp_reg[1] (bp_n_1));
  counter count
       (.CLK_125MHZ_FPGA_IBUF_BUFG(CLK_125MHZ_FPGA_IBUF_BUFG),
        .Q(LEDS_OBUF),
        .SR(bp_n_0),
        .\counter_reg[3]_0 (bp_n_4),
        .\dynamode_reg[1]_0 (bp_n_1),
        .\dynamode_reg[1]_1 (bp_n_5),
        .\dynamode_reg[1]_2 (bp_n_6),
        .\dynamode_reg[1]_3 (\button_edge_detector/temp ),
        .\dynamode_reg[1]_4 (bp_n_2));
  dac dac
       (.AUD_PWM_OBUF(AUD_PWM_OBUF),
        .CLK_125MHZ_FPGA_IBUF_BUFG(CLK_125MHZ_FPGA_IBUF_BUFG),
        .DI(gen_n_0),
        .S(gen_n_3),
        .code(code),
        .next_sample(next_sample),
        .out(cycles_reg));
  sq_wave_gen gen
       (.CLK_125MHZ_FPGA_IBUF_BUFG(CLK_125MHZ_FPGA_IBUF_BUFG),
        .DI(gen_n_0),
        .S(gen_n_3),
        .code(code),
        .next_sample(next_sample),
        .out(cycles_reg));
endmodule
