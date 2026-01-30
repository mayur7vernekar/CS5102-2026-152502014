#define N 11
#include <ap_int.h>
void FIR1(int *y, int x){
int C[N]={53,0,-91,313,500,313,0,-91,0,53};
static int shift_reg[N];
int acc,i;
acc=0;
SAL: for(i=N-1;i>=0;i--){// loop with label SAL
      	if(i==0){
          acc+=x*C[0];
          shift_reg[0]=x;
      	}
      	else {
          shift_reg[i]=shift_reg[i-1];
          acc += shift_reg[i]*C[i];
      	}//end if
     }//end for
   *y=acc;
}//end FIT
