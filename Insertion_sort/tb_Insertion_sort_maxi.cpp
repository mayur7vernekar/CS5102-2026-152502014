#include <stdio.h>
#include <string.h>

#define N 100

// DUT declaration
void INSERTION_SORT(int *input, int *output);

// Golden software reference
void ref_sort(int A[], int n)
{
    for (int i = 1; i < n; i++) {
        int key = A[i], j = i - 1;
        while (j >= 0 && A[j] > key) { A[j + 1] = A[j]; j--; }
        A[j + 1] = key;
    }
}

int main()
{
    // ---- Test vectors ----------------------------------------
    int t1[N], t2[N];
    for (int i = 0; i < N; i++) t1[i] = N - 1 - i;   // reverse
    for (int i = 0; i < N; i++) t2[i] = i;            // sorted

    int t3[N] = {
        42,17,83, 5,61,29,74,38,96,12,55,68, 3,91,47,
        26,79,14,52,88,33,70, 8,45,64,19,57,82,23,76,
        11,49,93,36,67, 2,85,31,72,18,60,94,41,15,78,
        25,53,87, 7,44,69,37,80,21,58,98,30,63, 9,46,
        73,16,51,86,28,71, 4,89,34,62,20,54,95,39,77,
        13,50,84,27,65, 1,92,35,66,22,56,97,40,75,10,
        48,81,24,59,99,32,43, 6,90, 0
    };

    int tests[3][N];
    memcpy(tests[0], t1, sizeof(int) * N);
    memcpy(tests[1], t2, sizeof(int) * N);
    memcpy(tests[2], t3, sizeof(int) * N);

    const char *names[3] = { "Reverse-sorted", "Already sorted", "Random" };
    int all_pass = 1;

    printf("============================================\n");
    printf("  Insertion Sort (m_axi)  N=%d  Testbench\n", N);
    printf("============================================\n\n");

    for (int t = 0; t < 3; t++)
    {
        // hw_in  = DDR read  region (connected to HP0 / gmem0)
        // hw_out = DDR write region (connected to HP1 / gmem1)
        int hw_in [N];
        int hw_out[N];
        int sw_out[N];

        memcpy(hw_in,  tests[t], sizeof(int) * N);
        memcpy(sw_out, tests[t], sizeof(int) * N);

        // Golden reference
        ref_sort(sw_out, N);

        // Call HLS kernel (C-sim: plain pointer dereference)
        INSERTION_SORT(hw_in, hw_out);

        // Compare HW vs SW
        int ok = 1;
        for (int i = 0; i < N; i++) {
            if (hw_out[i] != sw_out[i]) { ok = 0; all_pass = 0; break; }
        }

        printf("Test %d (%s): %s\n",
               t + 1, names[t], ok ? "PASS [OK]" : "FAIL [!!]");

        if (!ok) {
            printf("  HW: ");
            for (int i = 0; i < N; i++) printf("%d ", hw_out[i]);
            printf("\n  SW: ");
            for (int i = 0; i < N; i++) printf("%d ", sw_out[i]);
            printf("\n");
        }
    }

    printf("\n============================================\n");
    printf(all_pass ? "  ALL TESTS PASSED\n" : "  SOME TESTS FAILED\n");
    printf("============================================\n");

    return all_pass ? 0 : 1;
}
