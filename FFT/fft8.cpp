#include "fft8.h"

static const fixed_t Wr[4] = { 1.0,  0.7071,  0.0000, -0.7071 };
static const fixed_t Wi[4] = { 0.0, -0.7071, -1.0000, -0.7071 };

static void butterfly(cplx_t& a, cplx_t& b, fixed_t wr, fixed_t wi) {
#pragma HLS INLINE
    fixed_t tr = b.real() * wr - b.imag() * wi;
    fixed_t ti = b.real() * wi + b.imag() * wr;
    fixed_t ar = a.real(), ai = a.imag();
    a = cplx_t(ar + tr, ai + ti);
    b = cplx_t(ar - tr, ai - ti);
}

void dit_fft_8(cplx_t in[N], cplx_t out[N]) {


#pragma HLS INTERFACE ap_none port=in
#pragma HLS INTERFACE ap_none port=out
#pragma HLS INTERFACE ap_ctrl_none port=return


#pragma HLS ARRAY_PARTITION variable=in  complete
#pragma HLS ARRAY_PARTITION variable=out complete

    cplx_t s0[N], s1[N], s2[N];
#pragma HLS ARRAY_PARTITION variable=s0 complete
#pragma HLS ARRAY_PARTITION variable=s1 complete
#pragma HLS ARRAY_PARTITION variable=s2 complete


    s0[0]=in[0]; s0[1]=in[4];
    s0[2]=in[2]; s0[3]=in[6];
    s0[4]=in[1]; s0[5]=in[5];
    s0[6]=in[3]; s0[7]=in[7];


#pragma HLS PIPELINE II=1
    s1[0]=s0[0]; s1[1]=s0[1]; butterfly(s1[0], s1[1], Wr[0], Wi[0]);
    s1[2]=s0[2]; s1[3]=s0[3]; butterfly(s1[2], s1[3], Wr[0], Wi[0]);
    s1[4]=s0[4]; s1[5]=s0[5]; butterfly(s1[4], s1[5], Wr[0], Wi[0]);
    s1[6]=s0[6]; s1[7]=s0[7]; butterfly(s1[6], s1[7], Wr[0], Wi[0]);


    s2[0]=s1[0]; s2[2]=s1[2]; butterfly(s2[0], s2[2], Wr[0], Wi[0]);
    s2[1]=s1[1]; s2[3]=s1[3]; butterfly(s2[1], s2[3], Wr[2], Wi[2]);
    s2[4]=s1[4]; s2[6]=s1[6]; butterfly(s2[4], s2[6], Wr[0], Wi[0]);
    s2[5]=s1[5]; s2[7]=s1[7]; butterfly(s2[5], s2[7], Wr[2], Wi[2]);


    out[0]=s2[0]; out[4]=s2[4]; butterfly(out[0], out[4], Wr[0], Wi[0]);
    out[1]=s2[1]; out[5]=s2[5]; butterfly(out[1], out[5], Wr[1], Wi[1]);
    out[2]=s2[2]; out[6]=s2[6]; butterfly(out[2], out[6], Wr[2], Wi[2]);
    out[3]=s2[3]; out[7]=s2[7]; butterfly(out[3], out[7], Wr[3], Wi[3]);
}
