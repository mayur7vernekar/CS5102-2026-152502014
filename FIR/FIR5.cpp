#define N 11
#include <ap_int.h>
void FIR5(int *y, int x){
int C[N]={53,0,-91,313,500,313,0,-91,0,53};
static int shift_reg[N];
int acc,i;
acc=0;
#pragma HLS ARRAY_PARTITION variable=shift_reg complete
//loop fission
TDL: for(i=N-1;i>1;i=i-2){//TDL: Tapped Delay Line
          shift_reg[i]=shift_reg[i-1];
          shift_reg[i-1]=shift_reg[i-2];
      }
      if(i==0)shift_reg[1]=shift_reg[0];
      shift_reg[0]=x;
MAC: for(i=N-1;i>=3;i=i-4){//MAC:Multiply  and Accumulate

          acc += shift_reg[i]*C[i]+shift_reg[i-1]*C[i-1]+shift_reg[i-2]*C[i-2]+shift_reg[i-3]*C[i-4];
     }//end for
for(;i>=0;i--) acc +=shift_reg[i]*C[i];
   *y=acc;
}//end FIT
