// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _fir_fixed_HH_
#define _fir_fixed_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "fir_fixed_mac_mulbkb.h"
#include "fir_fixed_regs_V.h"

namespace ap_rtl {

struct fir_fixed : public sc_module {
    // Port declarations 12
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<16> > x_V;
    sc_out< sc_lv<7> > h_V_address0;
    sc_out< sc_logic > h_V_ce0;
    sc_in< sc_lv<16> > h_V_q0;
    sc_out< sc_lv<17> > y_V;
    sc_out< sc_logic > y_V_ap_vld;


    // Module declarations
    fir_fixed(sc_module_name name);
    SC_HAS_PROCESS(fir_fixed);

    ~fir_fixed();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    fir_fixed_regs_V* regs_V_U;
    fir_fixed_mac_mulbkb<1,1,16,16,32,32>* fir_fixed_mac_mulbkb_U1;
    sc_signal< sc_lv<6> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<7> > regs_V_address0;
    sc_signal< sc_logic > regs_V_ce0;
    sc_signal< sc_logic > regs_V_we0;
    sc_signal< sc_lv<16> > regs_V_d0;
    sc_signal< sc_lv<16> > regs_V_q0;
    sc_signal< sc_lv<17> > p_Val2_s_reg_143;
    sc_signal< sc_lv<7> > i1_0_reg_156;
    sc_signal< sc_lv<32> > sext_ln8_fu_174_p1;
    sc_signal< sc_lv<32> > sext_ln8_reg_255;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<1> > tmp_1_fu_178_p3;
    sc_signal< sc_lv<1> > icmp_ln9_fu_186_p2;
    sc_signal< sc_lv<1> > icmp_ln9_reg_264;
    sc_signal< sc_lv<8> > grp_fu_167_p2;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<1> > icmp_ln14_fu_201_p2;
    sc_signal< sc_lv<1> > icmp_ln14_reg_278;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage0;
    sc_signal< bool > ap_block_state4_pp0_stage0_iter0;
    sc_signal< bool > ap_block_state6_pp0_stage0_iter1;
    sc_signal< bool > ap_block_pp0_stage0_11001;
    sc_signal< sc_lv<7> > i_1_fu_207_p2;
    sc_signal< sc_lv<7> > i_1_reg_282;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter0;
    sc_signal< sc_lv<16> > h_V_load_reg_297;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage1;
    sc_signal< bool > ap_block_state5_pp0_stage1_iter0;
    sc_signal< bool > ap_block_pp0_stage1_11001;
    sc_signal< sc_lv<16> > regs_V_load_1_reg_302;
    sc_signal< sc_lv<32> > lhs_V_fu_219_p3;
    sc_signal< sc_lv<32> > lhs_V_reg_307;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter1;
    sc_signal< bool > ap_block_pp0_stage0_subdone;
    sc_signal< sc_logic > ap_condition_pp0_exit_iter0_state4;
    sc_signal< bool > ap_block_pp0_stage1_subdone;
    sc_signal< sc_lv<8> > ap_phi_mux_i_0_phi_fu_135_p4;
    sc_signal< sc_lv<8> > i_0_reg_131;
    sc_signal< bool > ap_block_pp0_stage0;
    sc_signal< sc_lv<7> > ap_phi_mux_i1_0_phi_fu_160_p4;
    sc_signal< sc_lv<64> > zext_ln12_1_fu_192_p1;
    sc_signal< sc_lv<64> > zext_ln12_fu_197_p1;
    sc_signal< sc_lv<64> > zext_ln15_fu_213_p1;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_lv<8> > grp_fu_167_p0;
    sc_signal< bool > ap_block_pp0_stage1;
    sc_signal< sc_lv<32> > grp_fu_242_p3;
    sc_signal< sc_lv<6> > ap_NS_fsm;
    sc_signal< sc_logic > ap_idle_pp0;
    sc_signal< sc_logic > ap_enable_pp0;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<6> ap_ST_fsm_state1;
    static const sc_lv<6> ap_ST_fsm_state2;
    static const sc_lv<6> ap_ST_fsm_state3;
    static const sc_lv<6> ap_ST_fsm_pp0_stage0;
    static const sc_lv<6> ap_ST_fsm_pp0_stage1;
    static const sc_lv<6> ap_ST_fsm_state7;
    static const sc_lv<32> ap_const_lv32_0;
    static const bool ap_const_boolean_1;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_3;
    static const bool ap_const_boolean_0;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<8> ap_const_lv8_63;
    static const sc_lv<17> ap_const_lv17_0;
    static const sc_lv<7> ap_const_lv7_0;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<8> ap_const_lv8_FF;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<8> ap_const_lv8_0;
    static const sc_lv<7> ap_const_lv7_64;
    static const sc_lv<7> ap_const_lv7_1;
    static const sc_lv<15> ap_const_lv15_0;
    static const sc_lv<32> ap_const_lv32_F;
    static const sc_lv<32> ap_const_lv32_1F;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_pp0_stage0();
    void thread_ap_CS_fsm_pp0_stage1();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state7();
    void thread_ap_block_pp0_stage0();
    void thread_ap_block_pp0_stage0_11001();
    void thread_ap_block_pp0_stage0_subdone();
    void thread_ap_block_pp0_stage1();
    void thread_ap_block_pp0_stage1_11001();
    void thread_ap_block_pp0_stage1_subdone();
    void thread_ap_block_state4_pp0_stage0_iter0();
    void thread_ap_block_state5_pp0_stage1_iter0();
    void thread_ap_block_state6_pp0_stage0_iter1();
    void thread_ap_condition_pp0_exit_iter0_state4();
    void thread_ap_done();
    void thread_ap_enable_pp0();
    void thread_ap_idle();
    void thread_ap_idle_pp0();
    void thread_ap_phi_mux_i1_0_phi_fu_160_p4();
    void thread_ap_phi_mux_i_0_phi_fu_135_p4();
    void thread_ap_ready();
    void thread_grp_fu_167_p0();
    void thread_grp_fu_167_p2();
    void thread_h_V_address0();
    void thread_h_V_ce0();
    void thread_i_1_fu_207_p2();
    void thread_icmp_ln14_fu_201_p2();
    void thread_icmp_ln9_fu_186_p2();
    void thread_lhs_V_fu_219_p3();
    void thread_regs_V_address0();
    void thread_regs_V_ce0();
    void thread_regs_V_d0();
    void thread_regs_V_we0();
    void thread_sext_ln8_fu_174_p1();
    void thread_tmp_1_fu_178_p3();
    void thread_y_V();
    void thread_y_V_ap_vld();
    void thread_zext_ln12_1_fu_192_p1();
    void thread_zext_ln12_fu_197_p1();
    void thread_zext_ln15_fu_213_p1();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif
