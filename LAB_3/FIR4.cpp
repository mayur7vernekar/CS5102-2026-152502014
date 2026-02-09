#define N 11
#include <ap_int.h>
void FIR4(int *y, int x){
int C[N]={53,0,-91,313,500,313,0,-91,0,53};
static int shift_reg[N];
int acc,i;
acc=0;
//loop fission
TDL: for(i=N-1;i>1;i=i-2){//TDL: Tapped Delay Line
          shift_reg[i]=shift_reg[i-1];
          shift_reg[i-1]=shift_reg[i-2];
      }
      if(i==0)shift_reg[1]=shift_reg[0];
      shift_reg[0]=x;
MAC: for(i=N-1;i>=0;i--){//MAC:Multiply  and Accumulate
          acc += shift_reg[i]*C[i];
     }//end for
   *y=acc;
}//end FIT
