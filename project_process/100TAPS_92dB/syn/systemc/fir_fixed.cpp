// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "fir_fixed.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic fir_fixed::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic fir_fixed::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<6> fir_fixed::ap_ST_fsm_state1 = "1";
const sc_lv<6> fir_fixed::ap_ST_fsm_state2 = "10";
const sc_lv<6> fir_fixed::ap_ST_fsm_state3 = "100";
const sc_lv<6> fir_fixed::ap_ST_fsm_state4 = "1000";
const sc_lv<6> fir_fixed::ap_ST_fsm_state5 = "10000";
const sc_lv<6> fir_fixed::ap_ST_fsm_state6 = "100000";
const sc_lv<32> fir_fixed::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<32> fir_fixed::ap_const_lv32_1 = "1";
const sc_lv<1> fir_fixed::ap_const_lv1_0 = "0";
const sc_lv<32> fir_fixed::ap_const_lv32_2 = "10";
const sc_lv<32> fir_fixed::ap_const_lv32_3 = "11";
const sc_lv<32> fir_fixed::ap_const_lv32_4 = "100";
const sc_lv<32> fir_fixed::ap_const_lv32_5 = "101";
const sc_lv<8> fir_fixed::ap_const_lv8_63 = "1100011";
const sc_lv<17> fir_fixed::ap_const_lv17_0 = "00000000000000000";
const sc_lv<1> fir_fixed::ap_const_lv1_1 = "1";
const sc_lv<7> fir_fixed::ap_const_lv7_0 = "0000000";
const sc_lv<8> fir_fixed::ap_const_lv8_FF = "11111111";
const sc_lv<32> fir_fixed::ap_const_lv32_7 = "111";
const sc_lv<8> fir_fixed::ap_const_lv8_0 = "00000000";
const sc_lv<7> fir_fixed::ap_const_lv7_64 = "1100100";
const sc_lv<7> fir_fixed::ap_const_lv7_1 = "1";
const sc_lv<15> fir_fixed::ap_const_lv15_0 = "000000000000000";
const sc_lv<32> fir_fixed::ap_const_lv32_F = "1111";
const sc_lv<32> fir_fixed::ap_const_lv32_1F = "11111";
const bool fir_fixed::ap_const_boolean_1 = true;

fir_fixed::fir_fixed(sc_module_name name) : sc_module(name), mVcdFile(0) {
    regs_V_U = new fir_fixed_regs_V("regs_V_U");
    regs_V_U->clk(ap_clk);
    regs_V_U->reset(ap_rst);
    regs_V_U->address0(regs_V_address0);
    regs_V_U->ce0(regs_V_ce0);
    regs_V_U->we0(regs_V_we0);
    regs_V_U->d0(regs_V_d0);
    regs_V_U->q0(regs_V_q0);
    fir_fixed_mac_mulbkb_U1 = new fir_fixed_mac_mulbkb<1,1,16,16,32,32>("fir_fixed_mac_mulbkb_U1");
    fir_fixed_mac_mulbkb_U1->din0(regs_V_load_1_reg_287);
    fir_fixed_mac_mulbkb_U1->din1(h_V_load_reg_282);
    fir_fixed_mac_mulbkb_U1->din2(grp_fu_228_p2);
    fir_fixed_mac_mulbkb_U1->dout(grp_fu_228_p3);

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_ap_CS_fsm_state1);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state2);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state3);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state4);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state5);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state6);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( icmp_ln14_fu_187_p2 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_ap_phi_mux_i_0_phi_fu_121_p4);
    sensitive << ( i_0_reg_117 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( icmp_ln14_fu_187_p2 );

    SC_METHOD(thread_grp_fu_153_p0);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( ap_phi_mux_i_0_phi_fu_121_p4 );
    sensitive << ( i_0_reg_117 );

    SC_METHOD(thread_grp_fu_153_p2);
    sensitive << ( grp_fu_153_p0 );

    SC_METHOD(thread_grp_fu_228_p2);
    sensitive << ( ap_CS_fsm_state6 );
    sensitive << ( p_Val2_s_reg_129 );

    SC_METHOD(thread_h_V_address0);
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( zext_ln15_fu_199_p1 );

    SC_METHOD(thread_h_V_ce0);
    sensitive << ( ap_CS_fsm_state4 );

    SC_METHOD(thread_i_1_fu_193_p2);
    sensitive << ( i1_0_reg_142 );

    SC_METHOD(thread_icmp_ln14_fu_187_p2);
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( i1_0_reg_142 );

    SC_METHOD(thread_icmp_ln9_fu_172_p2);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( tmp_fu_164_p3 );
    sensitive << ( i_0_reg_117 );

    SC_METHOD(thread_regs_V_address0);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( icmp_ln9_fu_172_p2 );
    sensitive << ( tmp_fu_164_p3 );
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( zext_ln12_1_fu_178_p1 );
    sensitive << ( zext_ln12_fu_183_p1 );
    sensitive << ( zext_ln15_fu_199_p1 );

    SC_METHOD(thread_regs_V_ce0);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( icmp_ln9_fu_172_p2 );
    sensitive << ( tmp_fu_164_p3 );
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( ap_CS_fsm_state4 );

    SC_METHOD(thread_regs_V_d0);
    sensitive << ( x_V );
    sensitive << ( regs_V_q0 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( icmp_ln9_fu_172_p2 );
    sensitive << ( tmp_fu_164_p3 );
    sensitive << ( ap_CS_fsm_state3 );

    SC_METHOD(thread_regs_V_we0);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( icmp_ln9_fu_172_p2 );
    sensitive << ( icmp_ln9_reg_250 );
    sensitive << ( tmp_fu_164_p3 );
    sensitive << ( ap_CS_fsm_state3 );

    SC_METHOD(thread_sext_ln8_fu_160_p1);
    sensitive << ( i_0_reg_117 );

    SC_METHOD(thread_tmp_fu_164_p3);
    sensitive << ( i_0_reg_117 );

    SC_METHOD(thread_y_V);
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( icmp_ln14_fu_187_p2 );
    sensitive << ( p_Val2_s_reg_129 );

    SC_METHOD(thread_y_V_ap_vld);
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( icmp_ln14_fu_187_p2 );

    SC_METHOD(thread_zext_ln12_1_fu_178_p1);
    sensitive << ( grp_fu_153_p2 );

    SC_METHOD(thread_zext_ln12_fu_183_p1);
    sensitive << ( sext_ln8_reg_242 );

    SC_METHOD(thread_zext_ln15_fu_199_p1);
    sensitive << ( i1_0_reg_142 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( tmp_fu_164_p3 );
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( icmp_ln14_fu_187_p2 );

    SC_THREAD(thread_hdltv_gen);
    sensitive << ( ap_clk.pos() );

    ap_CS_fsm = "000001";
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "fir_fixed_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT__
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst, "(port)ap_rst");
    sc_trace(mVcdFile, ap_start, "(port)ap_start");
    sc_trace(mVcdFile, ap_done, "(port)ap_done");
    sc_trace(mVcdFile, ap_idle, "(port)ap_idle");
    sc_trace(mVcdFile, ap_ready, "(port)ap_ready");
    sc_trace(mVcdFile, x_V, "(port)x_V");
    sc_trace(mVcdFile, h_V_address0, "(port)h_V_address0");
    sc_trace(mVcdFile, h_V_ce0, "(port)h_V_ce0");
    sc_trace(mVcdFile, h_V_q0, "(port)h_V_q0");
    sc_trace(mVcdFile, y_V, "(port)y_V");
    sc_trace(mVcdFile, y_V_ap_vld, "(port)y_V_ap_vld");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_CS_fsm_state1, "ap_CS_fsm_state1");
    sc_trace(mVcdFile, regs_V_address0, "regs_V_address0");
    sc_trace(mVcdFile, regs_V_ce0, "regs_V_ce0");
    sc_trace(mVcdFile, regs_V_we0, "regs_V_we0");
    sc_trace(mVcdFile, regs_V_d0, "regs_V_d0");
    sc_trace(mVcdFile, regs_V_q0, "regs_V_q0");
    sc_trace(mVcdFile, sext_ln8_fu_160_p1, "sext_ln8_fu_160_p1");
    sc_trace(mVcdFile, sext_ln8_reg_242, "sext_ln8_reg_242");
    sc_trace(mVcdFile, ap_CS_fsm_state2, "ap_CS_fsm_state2");
    sc_trace(mVcdFile, icmp_ln9_fu_172_p2, "icmp_ln9_fu_172_p2");
    sc_trace(mVcdFile, icmp_ln9_reg_250, "icmp_ln9_reg_250");
    sc_trace(mVcdFile, tmp_fu_164_p3, "tmp_fu_164_p3");
    sc_trace(mVcdFile, grp_fu_153_p2, "grp_fu_153_p2");
    sc_trace(mVcdFile, ap_CS_fsm_state3, "ap_CS_fsm_state3");
    sc_trace(mVcdFile, i_1_fu_193_p2, "i_1_fu_193_p2");
    sc_trace(mVcdFile, i_1_reg_267, "i_1_reg_267");
    sc_trace(mVcdFile, ap_CS_fsm_state4, "ap_CS_fsm_state4");
    sc_trace(mVcdFile, icmp_ln14_fu_187_p2, "icmp_ln14_fu_187_p2");
    sc_trace(mVcdFile, h_V_load_reg_282, "h_V_load_reg_282");
    sc_trace(mVcdFile, ap_CS_fsm_state5, "ap_CS_fsm_state5");
    sc_trace(mVcdFile, regs_V_load_1_reg_287, "regs_V_load_1_reg_287");
    sc_trace(mVcdFile, ap_CS_fsm_state6, "ap_CS_fsm_state6");
    sc_trace(mVcdFile, ap_phi_mux_i_0_phi_fu_121_p4, "ap_phi_mux_i_0_phi_fu_121_p4");
    sc_trace(mVcdFile, i_0_reg_117, "i_0_reg_117");
    sc_trace(mVcdFile, p_Val2_s_reg_129, "p_Val2_s_reg_129");
    sc_trace(mVcdFile, i1_0_reg_142, "i1_0_reg_142");
    sc_trace(mVcdFile, zext_ln12_1_fu_178_p1, "zext_ln12_1_fu_178_p1");
    sc_trace(mVcdFile, zext_ln12_fu_183_p1, "zext_ln12_fu_183_p1");
    sc_trace(mVcdFile, zext_ln15_fu_199_p1, "zext_ln15_fu_199_p1");
    sc_trace(mVcdFile, grp_fu_153_p0, "grp_fu_153_p0");
    sc_trace(mVcdFile, grp_fu_228_p3, "grp_fu_228_p3");
    sc_trace(mVcdFile, grp_fu_228_p2, "grp_fu_228_p2");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
#endif

    }
    mHdltvinHandle.open("fir_fixed.hdltvin.dat");
    mHdltvoutHandle.open("fir_fixed.hdltvout.dat");
}

fir_fixed::~fir_fixed() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

    mHdltvinHandle << "] " << endl;
    mHdltvoutHandle << "] " << endl;
    mHdltvinHandle.close();
    mHdltvoutHandle.close();
    delete regs_V_U;
    delete fir_fixed_mac_mulbkb_U1;
}

void fir_fixed::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_fsm_state1;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(tmp_fu_164_p3.read(), ap_const_lv1_1))) {
        i1_0_reg_142 = ap_const_lv7_0;
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read())) {
        i1_0_reg_142 = i_1_reg_267.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        i_0_reg_117 = grp_fu_153_p2.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        i_0_reg_117 = ap_const_lv8_63;
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(tmp_fu_164_p3.read(), ap_const_lv1_1))) {
        p_Val2_s_reg_129 = ap_const_lv17_0;
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read())) {
        p_Val2_s_reg_129 = grp_fu_228_p3.read().range(31, 15);
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) {
        h_V_load_reg_282 = h_V_q0.read();
        regs_V_load_1_reg_287 = regs_V_q0.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        i_1_reg_267 = i_1_fu_193_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && esl_seteq<1,1,1>(tmp_fu_164_p3.read(), ap_const_lv1_0))) {
        icmp_ln9_reg_250 = icmp_ln9_fu_172_p2.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        sext_ln8_reg_242 = sext_ln8_fu_160_p1.read();
    }
}

void fir_fixed::thread_ap_CS_fsm_state1() {
    ap_CS_fsm_state1 = ap_CS_fsm.read()[0];
}

void fir_fixed::thread_ap_CS_fsm_state2() {
    ap_CS_fsm_state2 = ap_CS_fsm.read()[1];
}

void fir_fixed::thread_ap_CS_fsm_state3() {
    ap_CS_fsm_state3 = ap_CS_fsm.read()[2];
}

void fir_fixed::thread_ap_CS_fsm_state4() {
    ap_CS_fsm_state4 = ap_CS_fsm.read()[3];
}

void fir_fixed::thread_ap_CS_fsm_state5() {
    ap_CS_fsm_state5 = ap_CS_fsm.read()[4];
}

void fir_fixed::thread_ap_CS_fsm_state6() {
    ap_CS_fsm_state6 = ap_CS_fsm.read()[5];
}

void fir_fixed::thread_ap_done() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(icmp_ln14_fu_187_p2.read(), ap_const_lv1_1))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void fir_fixed::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void fir_fixed::thread_ap_phi_mux_i_0_phi_fu_121_p4() {
    ap_phi_mux_i_0_phi_fu_121_p4 = i_0_reg_117.read();
}

void fir_fixed::thread_ap_ready() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(icmp_ln14_fu_187_p2.read(), ap_const_lv1_1))) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void fir_fixed::thread_grp_fu_153_p0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        grp_fu_153_p0 = i_0_reg_117.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_fu_153_p0 = ap_phi_mux_i_0_phi_fu_121_p4.read();
    } else {
        grp_fu_153_p0 = "XXXXXXXX";
    }
}

void fir_fixed::thread_grp_fu_153_p2() {
    grp_fu_153_p2 = (!grp_fu_153_p0.read().is_01() || !ap_const_lv8_FF.is_01())? sc_lv<8>(): (sc_bigint<8>(grp_fu_153_p0.read()) + sc_bigint<8>(ap_const_lv8_FF));
}

void fir_fixed::thread_grp_fu_228_p2() {
    grp_fu_228_p2 = esl_concat<17,15>(p_Val2_s_reg_129.read(), ap_const_lv15_0);
}

void fir_fixed::thread_h_V_address0() {
    h_V_address0 =  (sc_lv<7>) (zext_ln15_fu_199_p1.read());
}

void fir_fixed::thread_h_V_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        h_V_ce0 = ap_const_logic_1;
    } else {
        h_V_ce0 = ap_const_logic_0;
    }
}

void fir_fixed::thread_i_1_fu_193_p2() {
    i_1_fu_193_p2 = (!i1_0_reg_142.read().is_01() || !ap_const_lv7_1.is_01())? sc_lv<7>(): (sc_biguint<7>(i1_0_reg_142.read()) + sc_biguint<7>(ap_const_lv7_1));
}

void fir_fixed::thread_icmp_ln14_fu_187_p2() {
    icmp_ln14_fu_187_p2 = (!i1_0_reg_142.read().is_01() || !ap_const_lv7_64.is_01())? sc_lv<1>(): sc_lv<1>(i1_0_reg_142.read() == ap_const_lv7_64);
}

void fir_fixed::thread_icmp_ln9_fu_172_p2() {
    icmp_ln9_fu_172_p2 = (!i_0_reg_117.read().is_01() || !ap_const_lv8_0.is_01())? sc_lv<1>(): sc_lv<1>(i_0_reg_117.read() == ap_const_lv8_0);
}

void fir_fixed::thread_regs_V_address0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        regs_V_address0 =  (sc_lv<7>) (zext_ln15_fu_199_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        regs_V_address0 =  (sc_lv<7>) (zext_ln12_fu_183_p1.read());
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
                esl_seteq<1,1,1>(tmp_fu_164_p3.read(), ap_const_lv1_0) && 
                esl_seteq<1,1,1>(icmp_ln9_fu_172_p2.read(), ap_const_lv1_1))) {
        regs_V_address0 = ap_const_lv7_0;
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
                esl_seteq<1,1,1>(tmp_fu_164_p3.read(), ap_const_lv1_0) && 
                esl_seteq<1,1,1>(icmp_ln9_fu_172_p2.read(), ap_const_lv1_0))) {
        regs_V_address0 =  (sc_lv<7>) (zext_ln12_1_fu_178_p1.read());
    } else {
        regs_V_address0 =  (sc_lv<7>) ("XXXXXXX");
    }
}

void fir_fixed::thread_regs_V_ce0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
          esl_seteq<1,1,1>(tmp_fu_164_p3.read(), ap_const_lv1_0) && 
          esl_seteq<1,1,1>(icmp_ln9_fu_172_p2.read(), ap_const_lv1_0)) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
          esl_seteq<1,1,1>(tmp_fu_164_p3.read(), ap_const_lv1_0) && 
          esl_seteq<1,1,1>(icmp_ln9_fu_172_p2.read(), ap_const_lv1_1)))) {
        regs_V_ce0 = ap_const_logic_1;
    } else {
        regs_V_ce0 = ap_const_logic_0;
    }
}

void fir_fixed::thread_regs_V_d0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        regs_V_d0 = regs_V_q0.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
                esl_seteq<1,1,1>(tmp_fu_164_p3.read(), ap_const_lv1_0) && 
                esl_seteq<1,1,1>(icmp_ln9_fu_172_p2.read(), ap_const_lv1_1))) {
        regs_V_d0 = x_V.read();
    } else {
        regs_V_d0 =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void fir_fixed::thread_regs_V_we0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && 
          esl_seteq<1,1,1>(icmp_ln9_reg_250.read(), ap_const_lv1_0)) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
          esl_seteq<1,1,1>(tmp_fu_164_p3.read(), ap_const_lv1_0) && 
          esl_seteq<1,1,1>(icmp_ln9_fu_172_p2.read(), ap_const_lv1_1)))) {
        regs_V_we0 = ap_const_logic_1;
    } else {
        regs_V_we0 = ap_const_logic_0;
    }
}

void fir_fixed::thread_sext_ln8_fu_160_p1() {
    sext_ln8_fu_160_p1 = esl_sext<32,8>(i_0_reg_117.read());
}

void fir_fixed::thread_tmp_fu_164_p3() {
    tmp_fu_164_p3 = i_0_reg_117.read().range(7, 7);
}

void fir_fixed::thread_y_V() {
    y_V = p_Val2_s_reg_129.read();
}

void fir_fixed::thread_y_V_ap_vld() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(icmp_ln14_fu_187_p2.read(), ap_const_lv1_1))) {
        y_V_ap_vld = ap_const_logic_1;
    } else {
        y_V_ap_vld = ap_const_logic_0;
    }
}

void fir_fixed::thread_zext_ln12_1_fu_178_p1() {
    zext_ln12_1_fu_178_p1 = esl_zext<64,8>(grp_fu_153_p2.read());
}

void fir_fixed::thread_zext_ln12_fu_183_p1() {
    zext_ln12_fu_183_p1 = esl_zext<64,32>(sext_ln8_reg_242.read());
}

void fir_fixed::thread_zext_ln15_fu_199_p1() {
    zext_ln15_fu_199_p1 = esl_zext<64,7>(i1_0_reg_142.read());
}

void fir_fixed::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
                ap_NS_fsm = ap_ST_fsm_state2;
            } else {
                ap_NS_fsm = ap_ST_fsm_state1;
            }
            break;
        case 2 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && esl_seteq<1,1,1>(tmp_fu_164_p3.read(), ap_const_lv1_1))) {
                ap_NS_fsm = ap_ST_fsm_state4;
            } else {
                ap_NS_fsm = ap_ST_fsm_state3;
            }
            break;
        case 4 : 
            ap_NS_fsm = ap_ST_fsm_state2;
            break;
        case 8 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && esl_seteq<1,1,1>(icmp_ln14_fu_187_p2.read(), ap_const_lv1_1))) {
                ap_NS_fsm = ap_ST_fsm_state1;
            } else {
                ap_NS_fsm = ap_ST_fsm_state5;
            }
            break;
        case 16 : 
            ap_NS_fsm = ap_ST_fsm_state6;
            break;
        case 32 : 
            ap_NS_fsm = ap_ST_fsm_state4;
            break;
        default : 
            ap_NS_fsm =  (sc_lv<6>) ("XXXXXX");
            break;
    }
}

void fir_fixed::thread_hdltv_gen() {
    const char* dump_tv = std::getenv("AP_WRITE_TV");
    if (!(dump_tv && string(dump_tv) == "on")) return;

    wait();

    mHdltvinHandle << "[ " << endl;
    mHdltvoutHandle << "[ " << endl;
    int ap_cycleNo = 0;
    while (1) {
        wait();
        const char* mComma = ap_cycleNo == 0 ? " " : ", " ;
        mHdltvinHandle << mComma << "{"  <<  " \"ap_rst\" :  \"" << ap_rst.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"ap_start\" :  \"" << ap_start.read() << "\" ";
        mHdltvoutHandle << mComma << "{"  <<  " \"ap_done\" :  \"" << ap_done.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"ap_idle\" :  \"" << ap_idle.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"ap_ready\" :  \"" << ap_ready.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"x_V\" :  \"" << x_V.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"h_V_address0\" :  \"" << h_V_address0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"h_V_ce0\" :  \"" << h_V_ce0.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"h_V_q0\" :  \"" << h_V_q0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"y_V\" :  \"" << y_V.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"y_V_ap_vld\" :  \"" << y_V_ap_vld.read() << "\" ";
        mHdltvinHandle << "}" << std::endl;
        mHdltvoutHandle << "}" << std::endl;
        ap_cycleNo++;
    }
}

}

