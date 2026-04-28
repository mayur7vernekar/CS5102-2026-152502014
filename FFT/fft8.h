#ifndef FFT8_H
#define FFT8_H

#include "ap_fixed.h"
#include <complex>

#define N 8

// 16-bit fixed-point: 1 sign + 3 integer + 12 fractional bits
// Range: [-8, 8), Resolution: 2^-12 ≈ 0.000244
// AP_RND = round, AP_SAT = saturate on overflow
typedef ap_fixed<16, 4, AP_RND, AP_SAT> fixed_t;

// std::complex<ap_fixed> IS synthesizable in Vitis HLS
typedef std::complex<fixed_t> cplx_t;

// Top-level function
void dit_fft_8(cplx_t in[N], cplx_t out[N]);

#endif