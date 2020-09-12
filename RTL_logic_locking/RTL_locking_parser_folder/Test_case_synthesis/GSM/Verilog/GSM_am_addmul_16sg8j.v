// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
`timescale 1 ns / 1 ps

module GSM_am_addmul_16sg8j_DSP48_2(
    input  [16 - 1:0] in0,
    input  [16 - 1:0] in1,
    input  [16 - 1:0] in2,
    output [33 - 1:0]  dout);

wire signed [18 - 1:0]     b;
wire signed [25 - 1:0]     a;
wire signed [25 - 1:0]     d;
wire signed [43 - 1:0]     m;
wire signed [25 - 1:0]    ad;

assign a = $signed(in0);
assign d = $signed(in1);
assign b = $signed(in2);

assign ad = a + d;
assign m  = ad * b;

assign dout = m;

endmodule
`timescale 1 ns / 1 ps
module GSM_am_addmul_16sg8j(
    din0,
    din1,
    din2,
    dout);

parameter ID = 32'd1;
parameter NUM_STAGE = 32'd1;
parameter din0_WIDTH = 32'd1;
parameter din1_WIDTH = 32'd1;
parameter din2_WIDTH = 32'd1;
parameter dout_WIDTH = 32'd1;
input[din0_WIDTH - 1:0] din0;
input[din1_WIDTH - 1:0] din1;
input[din2_WIDTH - 1:0] din2;
output[dout_WIDTH - 1:0] dout;



GSM_am_addmul_16sg8j_DSP48_2 GSM_am_addmul_16sg8j_DSP48_2_U(
    .in0( din0 ),
    .in1( din1 ),
    .in2( din2 ),
    .dout( dout ));

endmodule

