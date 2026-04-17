#include "ap_int.h"

#define N 100

void INSERTION_SORT(int *input, int *output)
{
#pragma HLS INTERFACE m_axi port=input  depth=100 offset=slave bundle=gmem0
#pragma HLS INTERFACE m_axi port=output depth=100 offset=slave bundle=gmem1

#pragma HLS INTERFACE s_axilite port=input   bundle=control
#pragma HLS INTERFACE s_axilite port=output  bundle=control
#pragma HLS INTERFACE s_axilite port=return  bundle=control

    int A[N];
    int temp[N];

#pragma HLS ARRAY_PARTITION variable=A    type=complete dim=1
#pragma HLS ARRAY_PARTITION variable=temp type=complete dim=1

    load: for (int i = 0; i < N; i++) {
#pragma HLS PIPELINE II=1
        A[i] = input[i];
    }

    outer: for (int i = 1; i < N; i++) {
        int key = A[i];
        int pos = 0;

        find: for (int j = 0; j < N; j++) {
#pragma HLS PIPELINE II=1
            pos += (j < i && A[j] < key) ? 1 : 0;
        }

        snap: for (int j = 0; j < N; j++) {
#pragma HLS PIPELINE II=1
            temp[j] = A[j];
        }

        shift: for (int j = 0; j < N - 1; j++) {
#pragma HLS PIPELINE II=1
            if (j >= pos && j < i) A[j + 1] = temp[j];
        }

        A[pos] = key;
    }

    store: for (int i = 0; i < N; i++) {
#pragma HLS PIPELINE II=1
        output[i] = A[i];
    }
}
