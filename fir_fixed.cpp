#include "fir_filter.h"

void fir_fixed(sig_t x, tap_t h[TAPS], out_t *y){
  //static sig_t regs[TAPS] = {0,};
	static sig_t regs[TAPS] = {0,};
  out_t temp = 0;

  SHIFT: for(int i=TAPS-1;i>=0;i--)
    if(i==0)
      regs[i] = x;
    else
      regs[i] = regs[i-1];

  MAC:for (int i = 0; i<TAPS; i++) {
    temp += h[i]*regs[i];
  }
  *y = temp;
}
