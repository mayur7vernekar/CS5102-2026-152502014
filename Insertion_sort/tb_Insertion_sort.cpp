#include <hls_stream.h>
#include <ap_axi_sdata.h>
#include <ap_int.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define N              100
#define PKTS           7
#define EPP            16
#define LAST_PKT_ELEMS 4

typedef ap_axiu<512, 0, 0, 0> axis_512_t;

void INSERTION_SORT(hls::stream<axis_512_t> &s_axis,
                    hls::stream<axis_512_t> &m_axis);

void ref_sort(int A[N]) {
    for (int i = 1; i < N; i++) {
        int key = A[i], j = i - 1;
        while (j >= 0 && A[j] > key) { A[j+1] = A[j]; j--; }
        A[j+1] = key;
    }
}

void pack_and_send(hls::stream<axis_512_t> &s, int A[N]) {
    for (int p = 0; p < PKTS; p++) {
        axis_512_t pkt;
        pkt.data = 0;
        for (int i = 0; i < EPP; i++) {
            int idx = p * EPP + i;
            if (idx < N)
                pkt.data.range(i*32+31, i*32) = A[idx];
        }
        pkt.keep = (p < PKTS-1) ?
                   (ap_uint<64>)-1 :
                   (ap_uint<64>)0x000000000000FFFF;
        pkt.last = (p == PKTS - 1);
        s.write(pkt);
    }
}

void recv_and_unpack(hls::stream<axis_512_t> &m, int A[N]) {
    for (int p = 0; p < PKTS; p++) {
        axis_512_t pkt = m.read();
        for (int i = 0; i < EPP; i++) {
            int idx = p * EPP + i;
            if (idx < N)
                A[idx] = (int)pkt.data.range(i*32+31, i*32);
        }
    }
}

int main() {
    // Test 1: Random
    int t1[N];
    for (int i = 0; i < N; i++) t1[i] = N - 1 - i;   // reverse

    // Test 2: Already sorted
    int t2[N];
    for (int i = 0; i < N; i++) t2[i] = i;

    // Test 3: Random
    int t3[N] = {
        42,17,83,5,61,29,74,38,96,12,55,68,3,91,47,
        26,79,14,52,88,33,70,8,45,64,19,57,82,23,76,
        11,49,93,36,67,2,85,31,72,18,60,94,41,15,78,
        25,53,87,7,44,69,37,80,21,58,98,30,63,9,46,
        73,16,51,86,28,71,4,89,34,62,20,54,95,39,77,
        13,50,84,27,65,1,92,35,66,22,56,97,40,75,10,
        48,81,24,59,99,32,43,6,90,0
    };

    int tests[3][N];
    memcpy(tests[0], t1, sizeof(int)*N);
    memcpy(tests[1], t2, sizeof(int)*N);
    memcpy(tests[2], t3, sizeof(int)*N);

    const char *names[3] = {"Reverse", "Already Sorted", "Random"};
    int pass = 1;

    printf("========================================\n");
    printf("  Insertion Sort N=100 Testbench\n");
    printf("========================================\n\n");

    for (int t = 0; t < 3; t++) {
        hls::stream<axis_512_t> s_axis, m_axis;

        int sw_out[N], hw_out[N];
        memcpy(sw_out, tests[t], sizeof(int)*N);
        ref_sort(sw_out);

        pack_and_send(s_axis, tests[t]);
        INSERTION_SORT(s_axis, m_axis);
        recv_and_unpack(m_axis, hw_out);

        int ok = 1;
        for (int i = 0; i < N; i++)
            if (hw_out[i] != sw_out[i]) { ok = 0; pass = 0; }

        printf("Test %d (%s): %s\n", t+1, names[t], ok ? "PASS ✅" : "FAIL ❌");

        if (!ok) {
            printf("  HW: ");
            for (int i = 0; i < N; i++) printf("%d ", hw_out[i]);
            printf("\n  SW: ");
            for (int i = 0; i < N; i++) printf("%d ", sw_out[i]);
            printf("\n");
        }
    }

    printf("\n========================================\n");
    printf(pass ? "  ALL TESTS PASSED ✅\n" : "  SOME TESTS FAILED ❌\n");
    printf("========================================\n");
    return pass ? 0 : 1;
}
