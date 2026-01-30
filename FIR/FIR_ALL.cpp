
#define N 11
#include <ap_int.h>
extern void FIR1(int *,int);
extern void FIR2(int *,int);
extern void FIR3(int *,int);
extern void FIR4(int *,int);
extern void FIR5(int *,int);
void FIR_ALL(int *y, int x)
{

#pragma HLS pipeline off

  //FIR1(y,x);
  //FIR2(y,x);
  //FIR3(y,x);
  //FIR4(y,x);
    FIR5(y,x);
}
