// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.3
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="hls_macc_nb,hls_ip_2018_3,{HLS_INPUT_TYPE=c,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xa7a12tcsg325-1q,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=8.470000,HLS_SYN_LAT=6,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=45,HLS_SYN_FF=647,HLS_SYN_LUT=743,HLS_VERSION=2018_3}" *)

module hls_macc_nb (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        i1,
        i2,
        i3,
        i4,
        i5,
        i6,
        o1,
        o1_ap_vld,
        o2,
        o2_ap_vld,
        o3,
        o3_ap_vld,
        o4,
        o4_ap_vld,
        G1,
        G2,
        G3,
        G4,
        GG1,
        GG2
);

parameter    ap_ST_fsm_state1 = 7'd1;
parameter    ap_ST_fsm_state2 = 7'd2;
parameter    ap_ST_fsm_state3 = 7'd4;
parameter    ap_ST_fsm_state4 = 7'd8;
parameter    ap_ST_fsm_state5 = 7'd16;
parameter    ap_ST_fsm_state6 = 7'd32;
parameter    ap_ST_fsm_state7 = 7'd64;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] i1;
input  [31:0] i2;
input  [31:0] i3;
input  [31:0] i4;
input  [31:0] i5;
input  [31:0] i6;
output  [31:0] o1;
output   o1_ap_vld;
output  [31:0] o2;
output   o2_ap_vld;
output  [31:0] o3;
output   o3_ap_vld;
output  [31:0] o4;
output   o4_ap_vld;
input  [31:0] G1;
input  [31:0] G2;
input  [31:0] G3;
input  [31:0] G4;
input  [31:0] GG1;
input  [31:0] GG2;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg o1_ap_vld;
reg o2_ap_vld;
reg o3_ap_vld;
reg o4_ap_vld;

(* fsm_encoding = "none" *) reg   [6:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [31:0] op5_fu_130_p2;
reg   [31:0] op5_reg_272;
wire   [31:0] op6_fu_136_p2;
reg   [31:0] op6_reg_277;
wire   [31:0] op7_fu_142_p2;
reg   [31:0] op7_reg_282;
wire   [31:0] op8_fu_148_p2;
reg   [31:0] op8_reg_287;
wire  signed [31:0] op13_fu_159_p2;
reg  signed [31:0] op13_reg_292;
wire    ap_CS_fsm_state2;
wire  signed [31:0] op14_fu_169_p2;
reg  signed [31:0] op14_reg_299;
wire   [31:0] op17_fu_174_p2;
reg   [31:0] op17_reg_306;
wire    ap_CS_fsm_state3;
wire   [31:0] op18_fu_178_p2;
reg   [31:0] op18_reg_311;
wire  signed [31:0] tmp7_fu_182_p2;
reg  signed [31:0] tmp7_reg_316;
wire  signed [31:0] tmp8_fu_186_p2;
reg  signed [31:0] tmp8_reg_321;
wire  signed [31:0] op19_fu_190_p2;
reg  signed [31:0] op19_reg_326;
wire    ap_CS_fsm_state4;
wire  signed [31:0] op20_fu_194_p2;
reg  signed [31:0] op20_reg_332;
wire   [31:0] op1_fu_198_p2;
reg   [31:0] op1_reg_338;
wire    ap_CS_fsm_state5;
wire   [31:0] op2_fu_204_p2;
reg   [31:0] op2_reg_343;
wire   [31:0] op21_fu_210_p2;
reg   [31:0] op21_reg_348;
wire   [31:0] op22_fu_214_p2;
reg   [31:0] op22_reg_353;
wire  signed [31:0] tmp_fu_218_p2;
reg  signed [31:0] tmp_reg_358;
wire  signed [31:0] tmp2_fu_223_p2;
reg  signed [31:0] tmp2_reg_363;
wire   [31:0] tmp1_fu_243_p2;
reg   [31:0] tmp1_reg_368;
wire    ap_CS_fsm_state6;
wire   [31:0] tmp3_fu_247_p2;
reg   [31:0] tmp3_reg_373;
wire    ap_CS_fsm_state7;
wire  signed [31:0] op5_fu_130_p0;
wire  signed [31:0] op5_fu_130_p1;
wire  signed [31:0] op6_fu_136_p0;
wire  signed [31:0] op6_fu_136_p1;
wire  signed [31:0] op7_fu_142_p0;
wire  signed [31:0] op7_fu_142_p1;
wire  signed [31:0] op8_fu_148_p0;
wire  signed [31:0] op8_fu_148_p1;
wire   [31:0] tmp4_fu_154_p2;
wire   [31:0] tmp5_fu_164_p2;
wire  signed [31:0] op17_fu_174_p1;
wire  signed [31:0] op18_fu_178_p1;
wire  signed [31:0] tmp7_fu_182_p1;
wire  signed [31:0] tmp8_fu_186_p1;
wire  signed [31:0] op1_fu_198_p0;
wire  signed [31:0] op1_fu_198_p1;
wire  signed [31:0] op2_fu_204_p0;
wire  signed [31:0] op2_fu_204_p1;
wire  signed [31:0] op21_fu_210_p1;
wire  signed [31:0] op22_fu_214_p1;
wire  signed [31:0] tmp_fu_218_p1;
wire  signed [31:0] tmp2_fu_223_p1;
wire   [31:0] tmp6_fu_232_p2;
wire   [31:0] tmp9_fu_228_p2;
wire  signed [31:0] tmp1_fu_243_p1;
wire  signed [31:0] tmp3_fu_247_p1;
reg   [6:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 7'd1;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        op13_reg_292 <= op13_fu_159_p2;
        op14_reg_299 <= op14_fu_169_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        op17_reg_306 <= op17_fu_174_p2;
        op18_reg_311 <= op18_fu_178_p2;
        tmp7_reg_316 <= tmp7_fu_182_p2;
        tmp8_reg_321 <= tmp8_fu_186_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        op19_reg_326 <= op19_fu_190_p2;
        op20_reg_332 <= op20_fu_194_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        op1_reg_338 <= op1_fu_198_p2;
        op21_reg_348 <= op21_fu_210_p2;
        op22_reg_353 <= op22_fu_214_p2;
        op2_reg_343 <= op2_fu_204_p2;
        tmp2_reg_363 <= tmp2_fu_223_p2;
        tmp_reg_358 <= tmp_fu_218_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        op5_reg_272 <= op5_fu_130_p2;
        op6_reg_277 <= op6_fu_136_p2;
        op7_reg_282 <= op7_fu_142_p2;
        op8_reg_287 <= op8_fu_148_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        tmp1_reg_368 <= tmp1_fu_243_p2;
        tmp3_reg_373 <= tmp3_fu_247_p2;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        o1_ap_vld = 1'b1;
    end else begin
        o1_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        o2_ap_vld = 1'b1;
    end else begin
        o2_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        o3_ap_vld = 1'b1;
    end else begin
        o3_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        o4_ap_vld = 1'b1;
    end else begin
        o4_ap_vld = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign o1 = op13_reg_292;

assign o2 = op14_reg_299;

assign o3 = (tmp6_fu_232_p2 + tmp9_fu_228_p2);

assign o4 = (tmp3_reg_373 + tmp1_reg_368);

assign op13_fu_159_p2 = (tmp4_fu_154_p2 + op5_reg_272);

assign op14_fu_169_p2 = (tmp5_fu_164_p2 + op7_reg_282);

assign op17_fu_174_p1 = G1;

assign op17_fu_174_p2 = ($signed(op13_reg_292) * $signed(op17_fu_174_p1));

assign op18_fu_178_p1 = G2;

assign op18_fu_178_p2 = ($signed(op14_reg_299) * $signed(op18_fu_178_p1));

assign op19_fu_190_p2 = ($signed(tmp8_reg_321) * $signed(tmp7_reg_316));

assign op1_fu_198_p0 = GG1;

assign op1_fu_198_p1 = i1;

assign op1_fu_198_p2 = ($signed(op1_fu_198_p0) * $signed(op1_fu_198_p1));

assign op20_fu_194_p2 = (op17_reg_306 + op18_reg_311);

assign op21_fu_210_p1 = G1;

assign op21_fu_210_p2 = ($signed(op20_reg_332) * $signed(op21_fu_210_p1));

assign op22_fu_214_p1 = G2;

assign op22_fu_214_p2 = ($signed(op19_reg_326) * $signed(op22_fu_214_p1));

assign op2_fu_204_p0 = GG2;

assign op2_fu_204_p1 = i2;

assign op2_fu_204_p2 = ($signed(op2_fu_204_p0) * $signed(op2_fu_204_p1));

assign op5_fu_130_p0 = G1;

assign op5_fu_130_p1 = i3;

assign op5_fu_130_p2 = ($signed(op5_fu_130_p0) * $signed(op5_fu_130_p1));

assign op6_fu_136_p0 = G2;

assign op6_fu_136_p1 = i4;

assign op6_fu_136_p2 = ($signed(op6_fu_136_p0) * $signed(op6_fu_136_p1));

assign op7_fu_142_p0 = G1;

assign op7_fu_142_p1 = i4;

assign op7_fu_142_p2 = ($signed(op7_fu_142_p0) * $signed(op7_fu_142_p1));

assign op8_fu_148_p0 = G2;

assign op8_fu_148_p1 = i3;

assign op8_fu_148_p2 = ($signed(op8_fu_148_p0) * $signed(op8_fu_148_p1));

assign tmp1_fu_243_p1 = G2;

assign tmp1_fu_243_p2 = ($signed(tmp_reg_358) * $signed(tmp1_fu_243_p1));

assign tmp2_fu_223_p1 = i2;

assign tmp2_fu_223_p2 = ($signed(op19_reg_326) + $signed(tmp2_fu_223_p1));

assign tmp3_fu_247_p1 = G1;

assign tmp3_fu_247_p2 = ($signed(tmp2_reg_363) * $signed(tmp3_fu_247_p1));

assign tmp4_fu_154_p2 = (op6_reg_277 + i5);

assign tmp5_fu_164_p2 = (op8_reg_287 + i6);

assign tmp6_fu_232_p2 = (op22_reg_353 + op21_reg_348);

assign tmp7_fu_182_p1 = G1;

assign tmp7_fu_182_p2 = ($signed(op14_reg_299) * $signed(tmp7_fu_182_p1));

assign tmp8_fu_186_p1 = G2;

assign tmp8_fu_186_p2 = ($signed(op13_reg_292) * $signed(tmp8_fu_186_p1));

assign tmp9_fu_228_p2 = (op2_reg_343 + op1_reg_338);

assign tmp_fu_218_p1 = i1;

assign tmp_fu_218_p2 = ($signed(op20_reg_332) + $signed(tmp_fu_218_p1));

endmodule //hls_macc_nb