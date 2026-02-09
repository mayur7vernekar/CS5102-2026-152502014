/******************************************************************************
*
* Copyright (C) 2009 - 2014 Xilinx, Inc.  All rights reserved.
*
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in
* all copies or substantial portions of the Software.
*
* Use of the Software is limited solely to applications:
* (a) running on a Xilinx device, or
* (b) that interact with a Xilinx device through a bus or interconnect.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
* XILINX  BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
* WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF
* OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
* SOFTWARE.
*
* Except as contained in this notice, the name of the Xilinx shall not be used
* in advertising or otherwise to promote the sale, use or other dealings in
* this Software without prior written authorization from Xilinx.
*
******************************************************************************/

/*
 * helloworld.c: simple test application
 *
 * This application configures UART 16550 to baud rate 9600.
 * PS7 UART (Zynq) is not initialized by this application, since
 * bootrom/bsp configures it to baud rate 115200
 *
 * ------------------------------------------------
 * | UART TYPE   BAUD RATE                        |
 * ------------------------------------------------
 *   uartns550   9600
 *   uartlite    Configurable only in HW design
 *   ps7_uart    115200 (configured by bootrom/bsp)
 */

#include "xparameters.h"
#include "xaxidma.h"
#include "xil_printf.h"
#include "xil_cache.h"
#include "xstatus.h"

#define DMA_DEV_ID      XPAR_AXI_DMA_0_DEVICE_ID

#define SIZE            12                  // number of samples
#define BYTES           (SIZE * sizeof(u32))

u32 input_data[SIZE]  __attribute__((aligned(64)));
u32 output_data[SIZE] __attribute__((aligned(64)));

int main()
{
    XAxiDma dma;
    XAxiDma_Config *cfg;
    int status;

    xil_printf("\n\r=== FIR DMA Test Start ===\n\r");

    // --------------------------------------------------
    // DMA INIT
    // --------------------------------------------------
    cfg = XAxiDma_LookupConfig(DMA_DEV_ID);
    if (!cfg) {
        xil_printf("DMA lookup failed\n\r");
        return XST_FAILURE;
    }

    status = XAxiDma_CfgInitialize(&dma, cfg);
    if (status != XST_SUCCESS) {
        xil_printf("DMA init failed\n\r");
        return XST_FAILURE;
    }

    // Ensure simple mode
    if (XAxiDma_HasSg(&dma)) {
        xil_printf("DMA is in SG mode   expected simple mode\n\r");
        return XST_FAILURE;
    }

    // --------------------------------------------------
    // DMA RESET (important after bitstream download)
    // --------------------------------------------------
    XAxiDma_Reset(&dma);
    while (!XAxiDma_ResetIsDone(&dma));

    // Disable interrupts (polling mode)
    XAxiDma_IntrDisable(&dma, XAXIDMA_IRQ_ALL_MASK,
                        XAXIDMA_DMA_TO_DEVICE);
    XAxiDma_IntrDisable(&dma, XAXIDMA_IRQ_ALL_MASK,
                        XAXIDMA_DEVICE_TO_DMA);

    // --------------------------------------------------
    // PREPARE INPUT DATA
    // --------------------------------------------------
    for (int i = 0; i < SIZE; i++) {
        input_data[i] = i + 1;
        output_data[i] = 0;
    }

    // Cache maintenance
    Xil_DCacheFlushRange((UINTPTR)input_data, BYTES);
    Xil_DCacheFlushRange((UINTPTR)output_data, BYTES);

    // --------------------------------------------------
    // START DMA TRANSFERS
    // Order matters: start S2MM (receive) first
    // --------------------------------------------------

    status = XAxiDma_SimpleTransfer(&dma,
                                    (UINTPTR)output_data,
                                    BYTES,
                                    XAXIDMA_DEVICE_TO_DMA);
    if (status != XST_SUCCESS) {
        xil_printf("S2MM start failed\n\r");
        return XST_FAILURE;
    }

    status = XAxiDma_SimpleTransfer(&dma,
                                    (UINTPTR)input_data,
                                    BYTES,
                                    XAXIDMA_DMA_TO_DEVICE);
    if (status != XST_SUCCESS) {
        xil_printf("MM2S start failed\n\r");
        return XST_FAILURE;
    }

    // --------------------------------------------------
    // WAIT FOR COMPLETION
    // --------------------------------------------------
    while (XAxiDma_Busy(&dma, XAXIDMA_DMA_TO_DEVICE));
    while (XAxiDma_Busy(&dma, XAXIDMA_DEVICE_TO_DMA));

    // --------------------------------------------------
    // ERROR CHECK
    // --------------------------------------------------
    u32 sr;

    sr = XAxiDma_ReadReg(dma.RegBase, XAXIDMA_TX_OFFSET + XAXIDMA_SR_OFFSET);
    if (sr & XAXIDMA_ERR_ALL_MASK) {
        xil_printf("MM2S DMA error: 0x%08x\n\r", sr);
        return XST_FAILURE;
    }

    sr = XAxiDma_ReadReg(dma.RegBase, XAXIDMA_RX_OFFSET + XAXIDMA_SR_OFFSET);
    if (sr & XAXIDMA_ERR_ALL_MASK) {
        xil_printf("S2MM DMA error: 0x%08x\n\r", sr);
        return XST_FAILURE;
    }

    // --------------------------------------------------
    // INVALIDATE CACHE FOR OUTPUT
    // --------------------------------------------------
    Xil_DCacheInvalidateRange((UINTPTR)output_data, BYTES);

    // --------------------------------------------------
    // PRINT RESULTS
    // --------------------------------------------------
    xil_printf("\n\rFiltered Output:\n\r");
    for (int i = 0; i < SIZE; i++) {
        xil_printf("y[%d] = %d\n\r", i, output_data[i]);
    }

    xil_printf("\n\r=== FIR DMA Test Complete ===\n\r");

    return XST_SUCCESS;
}