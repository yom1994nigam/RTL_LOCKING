
module reset
(
  ap_clk,
  ap_rst,
  ap_start,
  ap_done,
  ap_idle,
  ap_ready,
  dec_detl,
  dec_detl_ap_vld,
  detl,
  detl_ap_vld,
  dec_deth,
  dec_deth_ap_vld,
  deth,
  deth_ap_vld,
  rlt2,
  rlt2_ap_vld,
  rlt1,
  rlt1_ap_vld,
  plt2,
  plt2_ap_vld,
  plt1,
  plt1_ap_vld,
  al2,
  al2_ap_vld,
  al1,
  al1_ap_vld,
  nbl,
  nbl_ap_vld,
  rh2,
  rh2_ap_vld,
  rh1,
  rh1_ap_vld,
  ph2,
  ph2_ap_vld,
  ph1,
  ph1_ap_vld,
  ah2,
  ah2_ap_vld,
  ah1,
  ah1_ap_vld,
  nbh,
  nbh_ap_vld,
  dec_rlt2,
  dec_rlt2_ap_vld,
  dec_rlt1,
  dec_rlt1_ap_vld,
  dec_plt2,
  dec_plt2_ap_vld,
  dec_plt1,
  dec_plt1_ap_vld,
  dec_al2,
  dec_al2_ap_vld,
  dec_al1,
  dec_al1_ap_vld,
  dec_nbl,
  dec_nbl_ap_vld,
  dec_rh2,
  dec_rh2_ap_vld,
  dec_rh1,
  dec_rh1_ap_vld,
  dec_ph2,
  dec_ph2_ap_vld,
  dec_ph1,
  dec_ph1_ap_vld,
  dec_ah2,
  dec_ah2_ap_vld,
  dec_ah1,
  dec_ah1_ap_vld,
  dec_nbh,
  dec_nbh_ap_vld,
  delay_dltx_address0,
  delay_dltx_ce0,
  delay_dltx_we0,
  delay_dltx_d0,
  delay_dhx_address0,
  delay_dhx_ce0,
  delay_dhx_we0,
  delay_dhx_d0,
  dec_del_dltx_address0,
  dec_del_dltx_ce0,
  dec_del_dltx_we0,
  dec_del_dltx_d0,
  dec_del_dhx_address0,
  dec_del_dhx_ce0,
  dec_del_dhx_we0,
  dec_del_dhx_d0,
  delay_bpl_address0,
  delay_bpl_ce0,
  delay_bpl_we0,
  delay_bpl_d0,
  delay_bph_address0,
  delay_bph_ce0,
  delay_bph_we0,
  delay_bph_d0,
  dec_del_bpl_address0,
  dec_del_bpl_ce0,
  dec_del_bpl_we0,
  dec_del_bpl_d0,
  dec_del_bph_address0,
  dec_del_bph_ce0,
  dec_del_bph_we0,
  dec_del_bph_d0,
  tqmf_address0,
  tqmf_ce0,
  tqmf_we0,
  tqmf_d0,
  accumc_address0,
  accumc_ce0,
  accumc_we0,
  accumc_d0,
  accumd_address0,
  accumd_ce0,
  accumd_we0,
  accumd_d0
);

  input ap_clk;
  input ap_rst;
  input ap_start;
  output ap_done;
  output ap_idle;
  output ap_ready;
  output [14:0] dec_detl;
  output dec_detl_ap_vld;
  output [31:0] detl;
  output detl_ap_vld;
  output [14:0] dec_deth;
  output dec_deth_ap_vld;
  output [14:0] deth;
  output deth_ap_vld;
  output [31:0] rlt2;
  output rlt2_ap_vld;
  output [31:0] rlt1;
  output rlt1_ap_vld;
  output [31:0] plt2;
  output plt2_ap_vld;
  output [31:0] plt1;
  output plt1_ap_vld;
  output [31:0] al2;
  output al2_ap_vld;
  output [31:0] al1;
  output al1_ap_vld;
  output [31:0] nbl;
  output nbl_ap_vld;
  output [31:0] rh2;
  output rh2_ap_vld;
  output [31:0] rh1;
  output rh1_ap_vld;
  output [31:0] ph2;
  output ph2_ap_vld;
  output [31:0] ph1;
  output ph1_ap_vld;
  output [31:0] ah2;
  output ah2_ap_vld;
  output [31:0] ah1;
  output ah1_ap_vld;
  output [31:0] nbh;
  output nbh_ap_vld;
  output [31:0] dec_rlt2;
  output dec_rlt2_ap_vld;
  output [31:0] dec_rlt1;
  output dec_rlt1_ap_vld;
  output [31:0] dec_plt2;
  output dec_plt2_ap_vld;
  output [31:0] dec_plt1;
  output dec_plt1_ap_vld;
  output [31:0] dec_al2;
  output dec_al2_ap_vld;
  output [31:0] dec_al1;
  output dec_al1_ap_vld;
  output [31:0] dec_nbl;
  output dec_nbl_ap_vld;
  output [31:0] dec_rh2;
  output dec_rh2_ap_vld;
  output [31:0] dec_rh1;
  output dec_rh1_ap_vld;
  output [31:0] dec_ph2;
  output dec_ph2_ap_vld;
  output [31:0] dec_ph1;
  output dec_ph1_ap_vld;
  output [31:0] dec_ah2;
  output dec_ah2_ap_vld;
  output [31:0] dec_ah1;
  output dec_ah1_ap_vld;
  output [31:0] dec_nbh;
  output dec_nbh_ap_vld;
  output [2:0] delay_dltx_address0;
  output delay_dltx_ce0;
  output delay_dltx_we0;
  output [31:0] delay_dltx_d0;
  output [2:0] delay_dhx_address0;
  output delay_dhx_ce0;
  output delay_dhx_we0;
  output [31:0] delay_dhx_d0;
  output [2:0] dec_del_dltx_address0;
  output dec_del_dltx_ce0;
  output dec_del_dltx_we0;
  output [31:0] dec_del_dltx_d0;
  output [2:0] dec_del_dhx_address0;
  output dec_del_dhx_ce0;
  output dec_del_dhx_we0;
  output [31:0] dec_del_dhx_d0;
  output [2:0] delay_bpl_address0;
  output delay_bpl_ce0;
  output delay_bpl_we0;
  output [31:0] delay_bpl_d0;
  output [2:0] delay_bph_address0;
  output delay_bph_ce0;
  output delay_bph_we0;
  output [31:0] delay_bph_d0;
  output [2:0] dec_del_bpl_address0;
  output dec_del_bpl_ce0;
  output dec_del_bpl_we0;
  output [31:0] dec_del_bpl_d0;
  output [2:0] dec_del_bph_address0;
  output dec_del_bph_ce0;
  output dec_del_bph_we0;
  output [31:0] dec_del_bph_d0;
  output [4:0] tqmf_address0;
  output tqmf_ce0;
  output tqmf_we0;
  output [6:0] tqmf_d0;
  output [3:0] accumc_address0;
  output accumc_ce0;
  output accumc_we0;
  output [31:0] accumc_d0;
  output [3:0] accumd_address0;
  output accumd_ce0;
  output accumd_we0;
  output [31:0] accumd_d0;

  reset_0_obf
  i0
  (
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_done(ap_done),
    .ap_idle(ap_idle),
    .ap_ready(ap_ready),
    .dec_detl(dec_detl),
    .dec_detl_ap_vld(dec_detl_ap_vld),
    .detl(detl),
    .detl_ap_vld(detl_ap_vld),
    .dec_deth(dec_deth),
    .dec_deth_ap_vld(dec_deth_ap_vld),
    .deth(deth),
    .deth_ap_vld(deth_ap_vld),
    .rlt2(rlt2),
    .rlt2_ap_vld(rlt2_ap_vld),
    .rlt1(rlt1),
    .rlt1_ap_vld(rlt1_ap_vld),
    .plt2(plt2),
    .plt2_ap_vld(plt2_ap_vld),
    .plt1(plt1),
    .plt1_ap_vld(plt1_ap_vld),
    .al2(al2),
    .al2_ap_vld(al2_ap_vld),
    .al1(al1),
    .al1_ap_vld(al1_ap_vld),
    .nbl(nbl),
    .nbl_ap_vld(nbl_ap_vld),
    .rh2(rh2),
    .rh2_ap_vld(rh2_ap_vld),
    .rh1(rh1),
    .rh1_ap_vld(rh1_ap_vld),
    .ph2(ph2),
    .ph2_ap_vld(ph2_ap_vld),
    .ph1(ph1),
    .ph1_ap_vld(ph1_ap_vld),
    .ah2(ah2),
    .ah2_ap_vld(ah2_ap_vld),
    .ah1(ah1),
    .ah1_ap_vld(ah1_ap_vld),
    .nbh(nbh),
    .nbh_ap_vld(nbh_ap_vld),
    .dec_rlt2(dec_rlt2),
    .dec_rlt2_ap_vld(dec_rlt2_ap_vld),
    .dec_rlt1(dec_rlt1),
    .dec_rlt1_ap_vld(dec_rlt1_ap_vld),
    .dec_plt2(dec_plt2),
    .dec_plt2_ap_vld(dec_plt2_ap_vld),
    .dec_plt1(dec_plt1),
    .dec_plt1_ap_vld(dec_plt1_ap_vld),
    .dec_al2(dec_al2),
    .dec_al2_ap_vld(dec_al2_ap_vld),
    .dec_al1(dec_al1),
    .dec_al1_ap_vld(dec_al1_ap_vld),
    .dec_nbl(dec_nbl),
    .dec_nbl_ap_vld(dec_nbl_ap_vld),
    .dec_rh2(dec_rh2),
    .dec_rh2_ap_vld(dec_rh2_ap_vld),
    .dec_rh1(dec_rh1),
    .dec_rh1_ap_vld(dec_rh1_ap_vld),
    .dec_ph2(dec_ph2),
    .dec_ph2_ap_vld(dec_ph2_ap_vld),
    .dec_ph1(dec_ph1),
    .dec_ph1_ap_vld(dec_ph1_ap_vld),
    .dec_ah2(dec_ah2),
    .dec_ah2_ap_vld(dec_ah2_ap_vld),
    .dec_ah1(dec_ah1),
    .dec_ah1_ap_vld(dec_ah1_ap_vld),
    .dec_nbh(dec_nbh),
    .dec_nbh_ap_vld(dec_nbh_ap_vld),
    .delay_dltx_address0(delay_dltx_address0),
    .delay_dltx_ce0(delay_dltx_ce0),
    .delay_dltx_we0(delay_dltx_we0),
    .delay_dltx_d0(delay_dltx_d0),
    .delay_dhx_address0(delay_dhx_address0),
    .delay_dhx_ce0(delay_dhx_ce0),
    .delay_dhx_we0(delay_dhx_we0),
    .delay_dhx_d0(delay_dhx_d0),
    .dec_del_dltx_address0(dec_del_dltx_address0),
    .dec_del_dltx_ce0(dec_del_dltx_ce0),
    .dec_del_dltx_we0(dec_del_dltx_we0),
    .dec_del_dltx_d0(dec_del_dltx_d0),
    .dec_del_dhx_address0(dec_del_dhx_address0),
    .dec_del_dhx_ce0(dec_del_dhx_ce0),
    .dec_del_dhx_we0(dec_del_dhx_we0),
    .dec_del_dhx_d0(dec_del_dhx_d0),
    .delay_bpl_address0(delay_bpl_address0),
    .delay_bpl_ce0(delay_bpl_ce0),
    .delay_bpl_we0(delay_bpl_we0),
    .delay_bpl_d0(delay_bpl_d0),
    .delay_bph_address0(delay_bph_address0),
    .delay_bph_ce0(delay_bph_ce0),
    .delay_bph_we0(delay_bph_we0),
    .delay_bph_d0(delay_bph_d0),
    .dec_del_bpl_address0(dec_del_bpl_address0),
    .dec_del_bpl_ce0(dec_del_bpl_ce0),
    .dec_del_bpl_we0(dec_del_bpl_we0),
    .dec_del_bpl_d0(dec_del_bpl_d0),
    .dec_del_bph_address0(dec_del_bph_address0),
    .dec_del_bph_ce0(dec_del_bph_ce0),
    .dec_del_bph_we0(dec_del_bph_we0),
    .dec_del_bph_d0(dec_del_bph_d0),
    .tqmf_address0(tqmf_address0),
    .tqmf_ce0(tqmf_ce0),
    .tqmf_we0(tqmf_we0),
    .tqmf_d0(tqmf_d0),
    .accumc_address0(accumc_address0),
    .accumc_ce0(accumc_ce0),
    .accumc_we0(accumc_we0),
    .accumc_d0(accumc_d0),
    .accumd_address0(accumd_address0),
    .accumd_ce0(accumd_ce0),
    .accumd_we0(accumd_we0),
    .accumd_d0(accumd_d0),
    .working_key(12287'b11001010101010101010101010000010101010101010101010010101011111110100110101010010010101101010101110100110101010010010101101010100110010101010101010101010100000101010101010101010100101010111111101001101010100100101011010101011101001101010100100101011010111101100101010101010101010101000001010101010101010101001010101111111010011010101001001010110101010111010011010101001001010110101010011001010101010101010101010000010101010101010101010010101011111110100110101010010010101101010101110100110101010010010101101001100101010101010101010101000001010101010101010101001010101111111010011010101001001010110101010111010011010101001001010110101010011001010101010101010101010000010101010101010101010010101011111110100110101010010010101101010101110100110101010010010101101011110110010101010101010101010100000101010101010101010100101010111111101001101010100100101011010101011101001101010100100101011010101001100101010101010101010101000001010101010101010101001010101111111010011010101001001010110101010111010011010101001001010110101111111101100101010101010101010101000001010101010101010101001010101111111010011010101001001010110101010111010011010101001001010110101010011001010101010101010101010000010101010101010101010010101011111110100110101010010010101101010101110100110101010010010101101011110110010101010101010101010100000101010101010101010100101010111111101001101010100100101011010101011101001101010100100101011010101001100101010101010101010101000001010101010101010101001010101111111010011010101001001010110101010111010011010101001001010110101111011001010101010101010101010000010101010101010101010010101011111110100110101010010010101101010101110100110101010010010101101010100110010101010101010101010100000101010101010101010100101010111111101001101010100100101011010101011101001101010100100101011010111101100101010101010101010101000001010101010101010101001010101111111010011010101001001010110101010111010011010101001001010110101010011001010101010101010101010000010101010101010101010010101011111110100110101010010010101101010101110100110101010010010101101001100101010101010101010101000001010101010101010101001010101111111010011010101001001010110101010111010011010101001001010110101010011001010101010101010101010000010101010101010101010010101011111110100110101010010010101101010101110100110101010010010101101011110110010101010101010101010100000101010101010101010100101010111111101001101010100100101011010101011101001101010100100101011010101001100101010101010101010101000001010101010101010101001010101111111010011010101001001010110101010111010011010101001001010110101111111101100101010101010101010101000001010101010101010101001010101111111010011010101001001010110101010111010011010101001001010110101010011001010101010101010101010000010101010101010101010010101011111110100110101010010010101101010101110100110101010010010101101011110110010101010101010101010100000101010101010101010100101010111111101001101010100100101011010101011101001101010100100101011010101001100101010101010101010101000001010101010101010101001010101111111010011010101001001010110101010111010011010101001001010110101010011001010101010101010101010000010101010101010101010010101011111110100110101010010010101101010101110100110101010010010101101010100110010101010101010101010100000101010101010101010100101010111111101001101010100100101011010101011101001101010100100101011010111101100101010101010101010101000001010101010101010101001010101111111010011010101001001010110101010111010011010101001001010110101010011001010101010101010101010000010101010101010101010010101011111110100110101010010010101101010101110100110101010010010101101001100101010101010101010101000001010101010101010101001010101111111010011010101001001010110101010111010011010101001001010110101010011001010101010101010101010000010101010101010101010010101011111110100110101010010010101101010101110100110101010010010101101011110110010101010101010101010100000101010101010101010100101010111111101001101010100100101011010101011101001101010100100101011010101001100101010101010101010101000001010101010101010101001010101111111010011010101001001010110101010111010011010101001001010110101111111101100101010101010101010101000001010101010101010101001010101111111010011010101001001010110101010111010011010101001001010110101010011001010101010101010101010000010101010101010101010010101011111110100110101010010010101101010101110100110101010010010101101011110110010101010101010101010100000101010101010101010100101010111111101001101010100100101011010101011101001101010100100101011010101001100101010101010101010101000001010101010101010101001010101111111010011010101001001010110101010111010011010101001001010110101111011001010101010101010101010000010101010101010101010010101011111110100110101010010010101101010101110100110101010010010101101010100110010101010101010101010100000101010101010101010100101010111111101001101010100100101011010101011101001101010100100101011010111101100101010101010101010101000001010101010101010101001010101111111010011010101001001010110101010111010011010101001001010110101010011001010101010101010101010000010101010101010101010010101011111110100110101010010010101101010101110100110101010010010101101001100101010101010101010101000001010101010101010101001010101111111010011010101001001010110101010111010011010101001001010110101010011001010101010101010101010000010101010101010101010010101011111110100110101010010010101101010101110100110101010010010101101011110110010101010101010101010100000101010101010101010100101010111111101001101010100100101011010101011101001101010100100101011010101001100101010101010101010101000001010101010101010101001010101111111010011010101001001010110101010111010011010101001001010110101111111101100101010101010101010101000001010101010101010101001010101111111010011010101001001010110101010111010011010101001001010110101010011001010101010101010101010000010101010101010101010010101011111110100110101010010010101101010101110100110101010010010101101011110110010101010101010101010100000101010101010101010100101010111111101001101010100100101011010101011101001101010100100101011010101001100101010101010101010101000001010101010101010101001010101111111010011010101001001010110101010111010011010101001001010110101010011001010101010101010101010000010101010101010101010010101011111110100110101010010010101101010101110100110101010010010101101010100110010101010101010101010100000101010101010101010100101010111111101001101010100100101011010101011101001101010100100101011010111101100101010101010101010101000001010101010101010101001010101111111010011010101001001010110101010111010011010101001001010110101010011001010101010101010101010000010101010101010101010010101011111110100110101010010010101101010101110100110101010010010101101001100101010101010101010101000001010101010101010101001010101111111010011010101001001010110101010111010011010101001001010110101010011001010101010101010101010000010101010101010101010010101011111110100110101010010010101101010101110100110101010010010101101011110110010101010101010101010100000101010101010101010100101010111111101001101010100100101011010101011101001101010100100101011010101001100101010101010101010101000001010101010101010101001010101111111010011010101001001010110101010111010011010101001001010110101111111101100101010101010101010101000001010101010101010101001010101111111010011010101001001010110101010111010011010101001001010110101010011001010101010101010101010000010101010101010101010010101011111110100110101010010010101101010101110100110101010010010101101011110110010101010101010101010100000101010101010101010100101010111111101001101010100100101011010101011101001101010100100101011010101001100101010101010101010101000001010101010101010101001010101111111010011010101001001010110101010111010011010101001001010110101111011001010101010101010101010000010101010101010101010010101011111110100110101010010010101101010101110100110101010010010101101010100110010101010101010101010100000101010101010101010100101010111111101001101010100100101011010101011101001101010100100101011010111101100101010101010101010101000001010101010101010101001010101111111010011010101001001010110101010111010011010101001001010110101010011001010101010101010101010000010101010101010101010010101011111110100110101010010010101101010101110100110101010010010101101001100101010101010101010101000001010101010101010101001010101111111010011010101001001010110101010111010011010101001001010110101010011001010101010101010101010000010101010101010101010010101011111110100110101010010010101101010101110100110101010010010101101011110110010101010101010101010100000101010101010101010100101010111111101001101010100100101011010101011101001101010100100101011010101001100101010101010101010101000001010101010101010101001010101111111010011010101001001010110101010111010011010101001001010110101111111101100101010101010101010101000001010101010101010101001010101111111010011010101001001010110101010111010011010101001001010110101010011001010101010101010101010000010101010101010101010010101011111110100110101010010010101101010101110100110101010010010101101011110110010101010101010101010100000101010101010101010100101010111111101001101010100100101011010101011101001101010100100101011010101001100101010101010101010101000001010101010101010101001010101111111010011010101001001010110101010111010011010101001001010110101010011001010101010101010101010000010101010101010101010010101011111110100110101010010010101101010101110100110101010010010101101010100110010101010101010101010100000101010101010101010100101010111111101001101010100100101011010101011101001101010100100101011010111101100101010101010101010101000001010101010101010101001010101111111010011010101001001010110101010111010011010101001001010110101010011001010101010101010101010000010101010101010101010010101011111110100110101010010010101101010101110100110101010010010101101001100101010101010101010101000001010101010101010101001010101111111010011010101001001010110101010111010011010101001001010110101010011001010101010101010101010000010101010101010101010010101011111110100110101010010010101101010101110100110101010010010101101011110110010101010101010101010100000101010101010101010100101010111111101001101010100100101011010101011101001101010100100101011010101001100101010101010101010101000001010101010101010101001010101111111010011010101001001010110101010111010011010101001001010110101111111101100101010101010101010101000001010101010101010101001010101111111010011010101001001010110101010111010011010101001001010110101010011001010101010101010101010000010101010101010101010010101011111110100110101010010010101101010101110100110101010010010101101011110110010101010101010101010100000101010101010101010100101010111111101001101010100100101011010101011101001101010100100101011010101001100101010101010101010101000001010101010101010101001010101111111010011010101001001010110101010111010011010101001001010110101111011001010101010101010101010000010101010101010101010010101011111110100110101010010010101101010101110100110101010010010101101010100110010101010101010101010100000101010101010101010100101010111111101001101010100100101011010101011101001101010100100101011010111101100101010101010101010101000001010101010101010101001010101111111010011010101001001010110101010111010011010101001001010110101010011001010101010101010101010000010101010101010101010010101011111110100110101010010010101101010101110100110101010010010101101001100101010101010101010101000001010101010101010101001010101111111010011010101001001010110101010111010011010101001001010110101010011001010101010101010101010000010101010101010101010010101011111110100110101010010010101101010101110100110101010010010101101011110110010101010101010101010100000101010101010101010100101010111111101001101010100100101011010101011101001101010100100101011010101001100101010101010101010101000001010101010101010101001010101111111010011010101001001010110101010111010011010101001001010110101111111101100101010101010101010101000001010101010101010101001010101111111010011010101001001010110101010111010011010101001001010110101010011001010101010101010101010000010101010101010101010010101011111110100110101010010010101101010101110100110101010010010101101011110110010101010101010101010100000101010101010101010100101010111111101001101010100100101011010101011101001101010100100101011010101001100101010101010101010101000001010101010101010101001010101111111010011010101001001010110101010111010011010101001001010110101010)
  );


endmodule

