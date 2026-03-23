#include <hls_stream.h>
#include <ap_axi_sdata.h>
#include <ap_int.h>

#define N              100
#define PKTS           7
#define EPP            16

typedef ap_axiu<512, 0, 0, 0> axis_512_t;

void INSERTION_SORT(hls::stream<axis_512_t> &s_axis,
                    hls::stream<axis_512_t> &m_axis) {

    #pragma HLS INTERFACE axis port=s_axis
    #pragma HLS INTERFACE axis port=m_axis
    #pragma HLS INTERFACE ap_ctrl_none port=return

    int A[N];
    int temp[N];

    #pragma HLS ARRAY_PARTITION variable=A    type=complete dim=1
    #pragma HLS ARRAY_PARTITION variable=temp type=complete dim=1


    // STAGE 1 — Unpack 7 packets into A[100]

    load: for (int p = 0; p < PKTS; p++) {
        #pragma HLS PIPELINE II=1
        axis_512_t pkt = s_axis.read();
        for (int i = 0; i < EPP; i++) {
            #pragma HLS UNROLL
            int idx = p * EPP + i;
            if (idx < N)
                A[idx] = (int)pkt.data.range(i*32+31, i*32);
        }
    }


    // STAGE 2 — Insertion Sort on A[100]

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


        shift: for (int j = 0; j < N-1; j++) {
#pragma HLS PIPELINE II=1
            if (j >= pos && j < i) A[j+1] = temp[j];
        }

        A[pos] = key;
    }


    // STAGE 3 — Pack A[100] into 7 output packets

    store: for (int p = 0; p < PKTS; p++) {
        #pragma HLS PIPELINE II=1
        ap_uint<512> result = 0;
        for (int i = 0; i < EPP; i++) {
            #pragma HLS UNROLL
            int idx = p * EPP + i;
            if (idx < N)
                result.range(i*32+31, i*32) = (ap_uint<32>)A[idx];
        }
        axis_512_t out_pkt;
        out_pkt.data = result;
        out_pkt.keep = (p < PKTS-1) ?
                       (ap_uint<64>)-1 :
                       (ap_uint<64>)0x000000000000FFFF;
        out_pkt.last  = (p == PKTS - 1);
        m_axis.write(out_pkt);
    }
}
