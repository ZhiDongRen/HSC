#include "fir_fixed.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

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
        mHdltvoutHandle << " , " <<  " \"h_V_address1\" :  \"" << h_V_address1.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"h_V_ce1\" :  \"" << h_V_ce1.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"h_V_q1\" :  \"" << h_V_q1.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"y_V\" :  \"" << y_V.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"y_V_ap_vld\" :  \"" << y_V_ap_vld.read() << "\" ";
        mHdltvinHandle << "}" << std::endl;
        mHdltvoutHandle << "}" << std::endl;
        ap_cycleNo++;
    }
}

}

