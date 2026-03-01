#define N 16
#define M 16
#define P 16

void MATMUL_RAW(int A[N][M], int B[M][P], int AB[N][P]) {


    #pragma HLS ARRAY_PARTITION variable=A type=complete dim=2


    #pragma HLS ARRAY_PARTITION variable=B type=complete dim=1


    #pragma HLS ARRAY_PARTITION variable=AB type=complete dim=0

    row: for(int i = 0; i < N; ++i) {
       //#pragma HLS LOOP_FLATTEN
#pragma HLS UNROLL
        col: for(int j = 0; j < P; ++j) {
            //#pragma HLS PIPELINE II=1
            //#pragma HLS LOOP_FLATTEN
#pragma HLS UNROLL

            int acc = 0;

            product: for(int k = 0; k < M; ++k) {
                #pragma HLS UNROLL
                acc += A[i][k] * B[k][j];
            }
            AB[i][j] = acc;
        }
    }
}
