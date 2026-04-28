#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("ap_clk", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_rst", 1, hls_in, -1, "", "", 1),
	Port_Property("in_0", 32, hls_in, 0, "ap_none", "in_data", 1),
	Port_Property("in_1", 32, hls_in, 1, "ap_none", "in_data", 1),
	Port_Property("in_2", 32, hls_in, 2, "ap_none", "in_data", 1),
	Port_Property("in_3", 32, hls_in, 3, "ap_none", "in_data", 1),
	Port_Property("in_4", 32, hls_in, 4, "ap_none", "in_data", 1),
	Port_Property("in_5", 32, hls_in, 5, "ap_none", "in_data", 1),
	Port_Property("in_6", 32, hls_in, 6, "ap_none", "in_data", 1),
	Port_Property("in_7", 32, hls_in, 7, "ap_none", "in_data", 1),
	Port_Property("out_0", 32, hls_out, 8, "ap_none", "out_data", 1),
	Port_Property("out_1", 32, hls_out, 9, "ap_none", "out_data", 1),
	Port_Property("out_2", 32, hls_out, 10, "ap_none", "out_data", 1),
	Port_Property("out_3", 32, hls_out, 11, "ap_none", "out_data", 1),
	Port_Property("out_4", 32, hls_out, 12, "ap_none", "out_data", 1),
	Port_Property("out_5", 32, hls_out, 13, "ap_none", "out_data", 1),
	Port_Property("out_6", 32, hls_out, 14, "ap_none", "out_data", 1),
	Port_Property("out_7", 32, hls_out, 15, "ap_none", "out_data", 1),
};
const char* HLS_Design_Meta::dut_name = "dit_fft_8";
