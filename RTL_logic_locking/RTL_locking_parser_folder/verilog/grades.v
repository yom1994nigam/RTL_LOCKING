// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.3
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="grade,hls_ip_2018_3,{HLS_INPUT_TYPE=c,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xa7a12tcsg325-1q,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=6.943000,HLS_SYN_LAT=2,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=40,HLS_SYN_LUT=346,HLS_VERSION=2018_3}" *)

module grade (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        p,
        b,
        c,
        m,
        cs,
        ap_return
);

parameter    ap_ST_fsm_state1 = 3'd1;
parameter    ap_ST_fsm_state2 = 3'd2;
parameter    ap_ST_fsm_state3 = 3'd4;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] p;
input  [31:0] b;
input  [31:0] c;
input  [31:0] m;
input  [31:0] cs;
output  [7:0] ap_return;

reg ap_done;
reg ap_idle;
reg ap_ready;

(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [31:0] tmp2_fu_80_p2;
reg   [31:0] tmp2_reg_217;
wire   [0:0] tmp_4_fu_97_p2;
reg   [0:0] tmp_4_reg_222;
wire    ap_CS_fsm_state2;
wire   [0:0] tmp_5_fu_103_p2;
reg   [0:0] tmp_5_reg_228;
wire   [0:0] tmp_7_fu_109_p2;
reg   [0:0] tmp_7_reg_234;
wire   [0:0] tmp_9_fu_115_p2;
reg   [0:0] tmp_9_reg_240;
wire   [0:0] tmp_3_fu_121_p2;
reg   [0:0] tmp_3_reg_245;
wire   [31:0] tmp1_fu_74_p2;
wire   [31:0] tmp_fu_86_p2;
wire   [31:0] total_fu_92_p2;
wire    ap_CS_fsm_state3;
wire   [0:0] sel_tmp1_fu_127_p2;
wire   [0:0] sel_tmp6_fu_137_p2;
wire   [0:0] sel_tmp_fu_147_p2;
wire   [0:0] sel_tmp3_fu_152_p2;
wire   [0:0] sel_tmp7_fu_142_p2;
wire   [0:0] sel_tmp2_fu_132_p2;
wire   [0:0] or_cond_fu_165_p2;
wire   [6:0] newSel_fu_157_p3;
wire   [6:0] newSel1_fu_171_p3;
wire   [0:0] or_cond1_fu_179_p2;
wire   [0:0] or_cond2_fu_199_p2;
wire   [6:0] newSel3_fu_191_p3;
wire   [6:0] newSel2_fu_184_p3;
wire   [6:0] newSel4_fu_205_p3;
reg   [2:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 3'd1;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        tmp2_reg_217 <= tmp2_fu_80_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        tmp_3_reg_245 <= tmp_3_fu_121_p2;
        tmp_4_reg_222 <= tmp_4_fu_97_p2;
        tmp_5_reg_228 <= tmp_5_fu_103_p2;
        tmp_7_reg_234 <= tmp_7_fu_109_p2;
        tmp_9_reg_240 <= tmp_9_fu_115_p2;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
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
    if ((1'b1 == ap_CS_fsm_state3)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
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

assign ap_return = newSel4_fu_205_p3;

assign newSel1_fu_171_p3 = ((sel_tmp2_fu_132_p2_temp) ? 7'd66 : 7'd65);

assign sel_tmp2_fu_132_p2_temp = sel_tmp2_fu_132_p2 & 1'b1;


//assign newSel2_fu_184_p3 = ((tmp_3_reg_245[0:0] === 1'b1) ? 7'd69 : 7'd70);

//assign newSel3_fu_191_p3 = ((or_cond_fu_165_p2[0:0] === 1'b1) ? newSel_fu_157_p3 : newSel1_fu_171_p3);

//assign newSel4_fu_205_p3 = ((or_cond2_fu_199_p2[0:0] === 1'b1) ? newSel3_fu_191_p3 : newSel2_fu_184_p3);

//assign newSel_fu_157_p3 = ((sel_tmp3_fu_152_p2[0:0] === 1'b1) ? 7'd68 : 7'd67);

//assign or_cond1_fu_179_p2 = (tmp_4_reg_222 | sel_tmp2_fu_132_p2);

//assign or_cond2_fu_199_p2 = (or_cond_fu_165_p2 | or_cond1_fu_179_p2);

//assign or_cond_fu_165_p2 = (sel_tmp7_fu_142_p2 | sel_tmp3_fu_152_p2);

//assign sel_tmp1_fu_127_p2 = (tmp_4_reg_222 ^ 1'd1);

//assign sel_tmp2_fu_132_p2 = (tmp_5_reg_228 & sel_tmp1_fu_127_p2);

//assign sel_tmp3_fu_152_p2 = (tmp_9_reg_240 & sel_tmp_fu_147_p2);

//assign sel_tmp6_fu_137_p2 = (tmp_5_reg_228 ^ 1'd1);

//assign sel_tmp7_fu_142_p2 = (tmp_7_reg_234 & sel_tmp6_fu_137_p2);

//assign sel_tmp_fu_147_p2 = (tmp_7_reg_234 ^ 1'd1);

//assign tmp1_fu_74_p2 = (b + cs);

//assign tmp2_fu_80_p2 = (tmp1_fu_74_p2 + p);

//assign tmp_3_fu_121_p2 = (($signed(total_fu_92_p2) > $signed(32'd249)) ? 1'b1 : 1'b0);

//assign tmp_4_fu_97_p2 = (($signed(total_fu_92_p2) > $signed(32'd449)) ? 1'b1 : 1'b0);

//assign tmp_5_fu_103_p2 = (($signed(total_fu_92_p2) > $signed(32'd399)) ? 1'b1 : 1'b0);

//assign tmp_7_fu_109_p2 = (($signed(total_fu_92_p2) > $signed(32'd349)) ? 1'b1 : 1'b0);

//assign tmp_9_fu_115_p2 = (($signed(total_fu_92_p2) > $signed(32'd299)) ? 1'b1 : 1'b0);

//assign tmp_fu_86_p2 = (c + m);

//assign total_fu_92_p2 = (tmp2_reg_217 + tmp_fu_86_p2);

endmodule //grade