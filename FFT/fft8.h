#ifndef FFT8_H
#define FFT8_H

#include "ap_fixed.h"
#include <complex>

#define N 8


typedef ap_fixed<16, 4, AP_RND, AP_SAT> fixed_t;


typedef std::complex<fixed_t> cplx_t;

void dit_fft_8(cplx_t in[N], cplx_t out[N]);

#endif