set SynModuleInfo {
  {SRCNAME dit_fft_8 MODELNAME dit_fft_8 RTLNAME dit_fft_8 IS_TOP 1
    SUBMODULES {
      {MODELNAME dit_fft_8_mul_16s_13s_29_1_1 RTLNAME dit_fft_8_mul_16s_13s_29_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME dit_fft_8_mul_16s_13ns_29_1_1 RTLNAME dit_fft_8_mul_16s_13ns_29_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME dit_fft_8_mul_12s_12ns_12_1_1 RTLNAME dit_fft_8_mul_12s_12ns_12_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME dit_fft_8_am_addmul_16s_16s_12ns_29_4_1 RTLNAME dit_fft_8_am_addmul_16s_16s_12ns_29_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME dit_fft_8_am_submul_16s_16s_13s_29_4_1 RTLNAME dit_fft_8_am_submul_16s_16s_13s_29_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME dit_fft_8_am_addmul_16s_16s_13s_29_4_1 RTLNAME dit_fft_8_am_addmul_16s_16s_13s_29_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
    }
  }
}
