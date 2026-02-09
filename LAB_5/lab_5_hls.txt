#include <hls_stream.h>
#include <ap_axi_sdata.h>

#define N 10
//for keeping the necessary control signals
typedef ap_axiu<32,0,0,0> axis_t;

void FIR_ALL_NEW(hls::stream<axis_t> &s_axis,
                 hls::stream<axis_t> &m_axis)
{
#pragma HLS interface axis port=s_axis
#pragma HLS interface axis port=m_axis
#pragma HLS interface ap_ctrl_none port=return

    int C[N] = {53,0,-91,313,500,313,0,-91,0,53};

    static int shift_reg[N];
#pragma HLS array_partition variable=shift_reg complete

    // ---- Axis handshake was used here ----
    axis_t in_pkt = s_axis.read();   // blocks until VALID&READY
    int x = in_pkt.data;

    int acc = 0;

    // ---- FIR defenition
    FIR_LOOP:
    for(int i=N-1;i>=0;i--){
#pragma HLS unroll
        if(i==0){
            shift_reg[0] = x;
            acc += x * C[0];
        } else {
            shift_reg[i] = shift_reg[i-1];
            acc += shift_reg[i] * C[i];
        }
    }

    // ---- OUTPUT PACKET ----
    axis_t out_pkt;
    out_pkt.data = acc;

    // Verilog based writing
    out_pkt.last = in_pkt.last;   // TLAST pass-through
    out_pkt.keep = -1;            // full word valid (1111)

    m_axis.write(out_pkt);        // VALID asserted when written
}