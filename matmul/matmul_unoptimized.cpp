#define N 16
#define M 16
#define P 16
void MATMUL(int A[N][M], int B[M][P], int AB[N][P]) {
int x = 0;
#pragma HLS ARRAY RESHAPE variable=A complete dim=2
#pragma HLS ARRAY RESHAPE variable=B complete dim=1
row: for(int i = 0; i < N; ++i) {
col: for(int j = 0; j < P; ++j) {
#pragma HLS PIPELINE II=1
product: for(int k = 0; k < M; ++k) {
x =x+ A[i][k] * B[k][j];
}
AB[i][j] = x;
x=0;
}
}
}