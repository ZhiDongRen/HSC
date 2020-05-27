#ifndef _FIR_FILTER_H
#define _FIR_FILTER_H

#include <ap_fixed.h>


#define TAPS 100


typedef ap_fixed<16,1> sig_t; //16bit_width signal
typedef ap_fixed<16,1> tap_t; //16bit_width taps
//typedef ap_fixed<16,1> out_t;
//typedef ap_fixed<16,1,AP_TRN,AP_SAT> out_t;//AP_SAT saturation
typedef ap_fixed<17,2> out_t;//larger_bit_width_out_put_signal,optimization



void fir_double (double x, double h[TAPS], double *y);
void fir_fixed(sig_t x, tap_t h[TAPS], out_t *y);
#endif
