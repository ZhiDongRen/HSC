#include "fir_filter.h"

void fir_double (double x, double h[TAPS], double *y){
  static double regs[100];
  double temp = 0;

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
