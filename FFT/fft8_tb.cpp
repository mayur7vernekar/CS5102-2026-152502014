#include <iostream>
#include <cstdio>
#include "fft8.h"

int main() {
    cplx_t in[N], out[N];

    // Input signal: {1, 2, 3, 4, 4, 3, 2, 1} (all real, imag = 0)
    float input_vals[N] = {1.0, 2.0, 3.0, 4.0, 4.0, 3.0, 2.0, 1.0};

    for (int i = 0; i < N; i++)
        in[i] = cplx_t(input_vals[i], 0.0);

    // Call DUT
    dit_fft_8(in, out);

    // Print results
    printf("%-5s %-12s %-12s\n", "k", "Real", "Imag");
    printf("----------------------------\n");
    for (int k = 0; k < N; k++)
        printf("X[%d]  %10.4f  %10.4f\n",
               k, (float)out[k].real(), (float)out[k].imag());

    return 0;
}