; ModuleID = 'D:/mayur/PG/SoCD_lab/FFT/FFT/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"class.std::complex<ap_fixed<16, 4, AP_RND, AP_SAT, 0> >" = type { %"struct.ap_fixed<16, 4, AP_RND, AP_SAT, 0>", %"struct.ap_fixed<16, 4, AP_RND, AP_SAT, 0>" }
%"struct.ap_fixed<16, 4, AP_RND, AP_SAT, 0>" = type { %"struct.ap_fixed_base<16, 4, true, AP_RND, AP_SAT, 0>" }
%"struct.ap_fixed_base<16, 4, true, AP_RND, AP_SAT, 0>" = type { %"struct.ssdm_int<16, true>" }
%"struct.ssdm_int<16, true>" = type { i16 }

; Function Attrs: noinline
define void @apatb_dit_fft_8_ir(%"class.std::complex<ap_fixed<16, 4, AP_RND, AP_SAT, 0> >"* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="8" "partition" %in, %"class.std::complex<ap_fixed<16, 4, AP_RND, AP_SAT, 0> >"* noalias nonnull "fpga.decayed.dim.hint"="8" "partition" %out) local_unnamed_addr #0 {
entry:
  %in_copy_0 = alloca i32, align 512
  %in_copy_1 = alloca i32, align 512
  %in_copy_2 = alloca i32, align 512
  %in_copy_3 = alloca i32, align 512
  %in_copy_4 = alloca i32, align 512
  %in_copy_5 = alloca i32, align 512
  %in_copy_6 = alloca i32, align 512
  %in_copy_7 = alloca i32, align 512
  %out_copy_0 = alloca i32, align 512
  %out_copy_1 = alloca i32, align 512
  %out_copy_2 = alloca i32, align 512
  %out_copy_3 = alloca i32, align 512
  %out_copy_4 = alloca i32, align 512
  %out_copy_5 = alloca i32, align 512
  %out_copy_6 = alloca i32, align 512
  %out_copy_7 = alloca i32, align 512
  %0 = bitcast %"class.std::complex<ap_fixed<16, 4, AP_RND, AP_SAT, 0> >"* %in to [8 x %"class.std::complex<ap_fixed<16, 4, AP_RND, AP_SAT, 0> >"]*
  %1 = bitcast %"class.std::complex<ap_fixed<16, 4, AP_RND, AP_SAT, 0> >"* %out to [8 x %"class.std::complex<ap_fixed<16, 4, AP_RND, AP_SAT, 0> >"]*
  call void @copy_in([8 x %"class.std::complex<ap_fixed<16, 4, AP_RND, AP_SAT, 0> >"]* nonnull %0, i32* nonnull align 512 %in_copy_0, i32* nonnull align 512 %in_copy_1, i32* nonnull align 512 %in_copy_2, i32* nonnull align 512 %in_copy_3, i32* nonnull align 512 %in_copy_4, i32* nonnull align 512 %in_copy_5, i32* nonnull align 512 %in_copy_6, i32* nonnull align 512 %in_copy_7, [8 x %"class.std::complex<ap_fixed<16, 4, AP_RND, AP_SAT, 0> >"]* nonnull %1, i32* nonnull align 512 %out_copy_0, i32* nonnull align 512 %out_copy_1, i32* nonnull align 512 %out_copy_2, i32* nonnull align 512 %out_copy_3, i32* nonnull align 512 %out_copy_4, i32* nonnull align 512 %out_copy_5, i32* nonnull align 512 %out_copy_6, i32* nonnull align 512 %out_copy_7)
  call void @apatb_dit_fft_8_hw(i32* %in_copy_0, i32* %in_copy_1, i32* %in_copy_2, i32* %in_copy_3, i32* %in_copy_4, i32* %in_copy_5, i32* %in_copy_6, i32* %in_copy_7, i32* %out_copy_0, i32* %out_copy_1, i32* %out_copy_2, i32* %out_copy_3, i32* %out_copy_4, i32* %out_copy_5, i32* %out_copy_6, i32* %out_copy_7)
  call void @copy_back([8 x %"class.std::complex<ap_fixed<16, 4, AP_RND, AP_SAT, 0> >"]* %0, i32* %in_copy_0, i32* %in_copy_1, i32* %in_copy_2, i32* %in_copy_3, i32* %in_copy_4, i32* %in_copy_5, i32* %in_copy_6, i32* %in_copy_7, [8 x %"class.std::complex<ap_fixed<16, 4, AP_RND, AP_SAT, 0> >"]* %1, i32* %out_copy_0, i32* %out_copy_1, i32* %out_copy_2, i32* %out_copy_3, i32* %out_copy_4, i32* %out_copy_5, i32* %out_copy_6, i32* %out_copy_7)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define void @"arraycpy_hls.p0a8class.std::complex<ap_fixed<16, 4, AP_RND, AP_SAT, 0> >"([8 x %"class.std::complex<ap_fixed<16, 4, AP_RND, AP_SAT, 0> >"]* "orig.arg.no"="0" %dst, [8 x %"class.std::complex<ap_fixed<16, 4, AP_RND, AP_SAT, 0> >"]* readonly "orig.arg.no"="1" %src, i64 "orig.arg.no"="2" %num) local_unnamed_addr #1 {
entry:
  %0 = icmp eq [8 x %"class.std::complex<ap_fixed<16, 4, AP_RND, AP_SAT, 0> >"]* %src, null
  %1 = icmp eq [8 x %"class.std::complex<ap_fixed<16, 4, AP_RND, AP_SAT, 0> >"]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond17 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond17, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx18 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.0.07 = getelementptr [8 x %"class.std::complex<ap_fixed<16, 4, AP_RND, AP_SAT, 0> >"], [8 x %"class.std::complex<ap_fixed<16, 4, AP_RND, AP_SAT, 0> >"]* %src, i64 0, i64 %for.loop.idx18, i32 0, i32 0, i32 0, i32 0
  %dst.addr.0.0.0.08 = getelementptr [8 x %"class.std::complex<ap_fixed<16, 4, AP_RND, AP_SAT, 0> >"], [8 x %"class.std::complex<ap_fixed<16, 4, AP_RND, AP_SAT, 0> >"]* %dst, i64 0, i64 %for.loop.idx18, i32 0, i32 0, i32 0, i32 0
  %3 = load i16, i16* %src.addr.0.0.0.07, align 2
  store i16 %3, i16* %dst.addr.0.0.0.08, align 2
  %src.addr.1.0.0.015 = getelementptr [8 x %"class.std::complex<ap_fixed<16, 4, AP_RND, AP_SAT, 0> >"], [8 x %"class.std::complex<ap_fixed<16, 4, AP_RND, AP_SAT, 0> >"]* %src, i64 0, i64 %for.loop.idx18, i32 1, i32 0, i32 0, i32 0
  %dst.addr.1.0.0.016 = getelementptr [8 x %"class.std::complex<ap_fixed<16, 4, AP_RND, AP_SAT, 0> >"], [8 x %"class.std::complex<ap_fixed<16, 4, AP_RND, AP_SAT, 0> >"]* %dst, i64 0, i64 %for.loop.idx18, i32 1, i32 0, i32 0, i32 0
  %4 = load i16, i16* %src.addr.1.0.0.015, align 2
  store i16 %4, i16* %dst.addr.1.0.0.016, align 2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx18, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define void @"arraycpy_hls.p0a8class.std::complex<ap_fixed<16, 4, AP_RND, AP_SAT, 0> >.118.119"(%"class.std::complex<ap_fixed<16, 4, AP_RND, AP_SAT, 0> >"* "orig.arg.no"="0" "unpacked"="0.0" %dst_0, %"class.std::complex<ap_fixed<16, 4, AP_RND, AP_SAT, 0> >"* "orig.arg.no"="0" "unpacked"="0.1" %dst_1, %"class.std::complex<ap_fixed<16, 4, AP_RND, AP_SAT, 0> >"* "orig.arg.no"="0" "unpacked"="0.2" %dst_2, %"class.std::complex<ap_fixed<16, 4, AP_RND, AP_SAT, 0> >"* "orig.arg.no"="0" "unpacked"="0.3" %dst_3, %"class.std::complex<ap_fixed<16, 4, AP_RND, AP_SAT, 0> >"* "orig.arg.no"="0" "unpacked"="0.4" %dst_4, %"class.std::complex<ap_fixed<16, 4, AP_RND, AP_SAT, 0> >"* "orig.arg.no"="0" "unpacked"="0.5" %dst_5, %"class.std::complex<ap_fixed<16, 4, AP_RND, AP_SAT, 0> >"* "orig.arg.no"="0" "unpacked"="0.6" %dst_6, %"class.std::complex<ap_fixed<16, 4, AP_RND, AP_SAT, 0> >"* "orig.arg.no"="0" "unpacked"="0.7" %dst_7, [8 x %"class.std::complex<ap_fixed<16, 4, AP_RND, AP_SAT, 0> >"]* readonly "orig.arg.no"="1" %src, i64 "orig.arg.no"="2" %num) #1 {
entry:
  %0 = icmp eq [8 x %"class.std::complex<ap_fixed<16, 4, AP_RND, AP_SAT, 0> >"]* %src, null
  %1 = icmp eq %"class.std::complex<ap_fixed<16, 4, AP_RND, AP_SAT, 0> >"* %dst_0, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond17 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond17, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  %dst.addr.0.0.0.08_0 = getelementptr %"class.std::complex<ap_fixed<16, 4, AP_RND, AP_SAT, 0> >", %"class.std::complex<ap_fixed<16, 4, AP_RND, AP_SAT, 0> >"* %dst_0, i64 0, i32 0, i32 0, i32 0, i32 0
  %dst.addr.0.0.0.08_1 = getelementptr %"class.std::complex<ap_fixed<16, 4, AP_RND, AP_SAT, 0> >", %"class.std::complex<ap_fixed<16, 4, AP_RND, AP_SAT, 0> >"* %dst_1, i64 0, i32 0, i32 0, i32 0, i32 0
  %dst.addr.0.0.0.08_2 = getelementptr %"class.std::complex<ap_fixed<16, 4, AP_RND, AP_SAT, 0> >", %"class.std::complex<ap_fixed<16, 4, AP_RND, AP_SAT, 0> >"* %dst_2, i64 0, i32 0, i32 0, i32 0, i32 0
  %dst.addr.0.0.0.08_3 = getelementptr %"class.std::complex<ap_fixed<16, 4, AP_RND, AP_SAT, 0> >", %"class.std::complex<ap_fixed<16, 4, AP_RND, AP_SAT, 0> >"* %dst_3, i64 0, i32 0, i32 0, i32 0, i32 0
  %dst.addr.0.0.0.08_4 = getelementptr %"class.std::complex<ap_fixed<16, 4, AP_RND, AP_SAT, 0> >", %"class.std::complex<ap_fixed<16, 4, AP_RND, AP_SAT, 0> >"* %dst_4, i64 0, i32 0, i32 0, i32 0, i32 0
  %dst.addr.0.0.0.08_5 = getelementptr %"class.std::complex<ap_fixed<16, 4, AP_RND, AP_SAT, 0> >", %"class.std::complex<ap_fixed<16, 4, AP_RND, AP_SAT, 0> >"* %dst_5, i64 0, i32 0, i32 0, i32 0, i32 0
  %dst.addr.0.0.0.08_6 = getelementptr %"class.std::complex<ap_fixed<16, 4, AP_RND, AP_SAT, 0> >", %"class.std::complex<ap_fixed<16, 4, AP_RND, AP_SAT, 0> >"* %dst_6, i64 0, i32 0, i32 0, i32 0, i32 0
  %dst.addr.0.0.0.08_7 = getelementptr %"class.std::complex<ap_fixed<16, 4, AP_RND, AP_SAT, 0> >", %"class.std::complex<ap_fixed<16, 4, AP_RND, AP_SAT, 0> >"* %dst_7, i64 0, i32 0, i32 0, i32 0, i32 0
  %dst.addr.1.0.0.016_0 = getelementptr %"class.std::complex<ap_fixed<16, 4, AP_RND, AP_SAT, 0> >", %"class.std::complex<ap_fixed<16, 4, AP_RND, AP_SAT, 0> >"* %dst_0, i64 0, i32 1, i32 0, i32 0, i32 0
  %dst.addr.1.0.0.016_1 = getelementptr %"class.std::complex<ap_fixed<16, 4, AP_RND, AP_SAT, 0> >", %"class.std::complex<ap_fixed<16, 4, AP_RND, AP_SAT, 0> >"* %dst_1, i64 0, i32 1, i32 0, i32 0, i32 0
  %dst.addr.1.0.0.016_2 = getelementptr %"class.std::complex<ap_fixed<16, 4, AP_RND, AP_SAT, 0> >", %"class.std::complex<ap_fixed<16, 4, AP_RND, AP_SAT, 0> >"* %dst_2, i64 0, i32 1, i32 0, i32 0, i32 0
  %dst.addr.1.0.0.016_3 = getelementptr %"class.std::complex<ap_fixed<16, 4, AP_RND, AP_SAT, 0> >", %"class.std::complex<ap_fixed<16, 4, AP_RND, AP_SAT, 0> >"* %dst_3, i64 0, i32 1, i32 0, i32 0, i32 0
  %dst.addr.1.0.0.016_4 = getelementptr %"class.std::complex<ap_fixed<16, 4, AP_RND, AP_SAT, 0> >", %"class.std::complex<ap_fixed<16, 4, AP_RND, AP_SAT, 0> >"* %dst_4, i64 0, i32 1, i32 0, i32 0, i32 0
  %dst.addr.1.0.0.016_5 = getelementptr %"class.std::complex<ap_fixed<16, 4, AP_RND, AP_SAT, 0> >", %"class.std::complex<ap_fixed<16, 4, AP_RND, AP_SAT, 0> >"* %dst_5, i64 0, i32 1, i32 0, i32 0, i32 0
  %dst.addr.1.0.0.016_6 = getelementptr %"class.std::complex<ap_fixed<16, 4, AP_RND, AP_SAT, 0> >", %"class.std::complex<ap_fixed<16, 4, AP_RND, AP_SAT, 0> >"* %dst_6, i64 0, i32 1, i32 0, i32 0, i32 0
  %dst.addr.1.0.0.016_7 = getelementptr %"class.std::complex<ap_fixed<16, 4, AP_RND, AP_SAT, 0> >", %"class.std::complex<ap_fixed<16, 4, AP_RND, AP_SAT, 0> >"* %dst_7, i64 0, i32 1, i32 0, i32 0, i32 0
  br label %for.loop

for.loop:                                         ; preds = %dst.addr.1.0.0.016.exit, %for.loop.lr.ph
  %for.loop.idx18 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %dst.addr.1.0.0.016.exit ]
  %3 = trunc i64 %for.loop.idx18 to i3
  %src.addr.0.0.0.07 = getelementptr [8 x %"class.std::complex<ap_fixed<16, 4, AP_RND, AP_SAT, 0> >"], [8 x %"class.std::complex<ap_fixed<16, 4, AP_RND, AP_SAT, 0> >"]* %src, i64 0, i64 %for.loop.idx18, i32 0, i32 0, i32 0, i32 0
  %4 = load i16, i16* %src.addr.0.0.0.07, align 2
  %src.addr.1.0.0.015 = getelementptr [8 x %"class.std::complex<ap_fixed<16, 4, AP_RND, AP_SAT, 0> >"], [8 x %"class.std::complex<ap_fixed<16, 4, AP_RND, AP_SAT, 0> >"]* %src, i64 0, i64 %for.loop.idx18, i32 1, i32 0, i32 0, i32 0
  switch i3 %3, label %dst.addr.1.0.0.016.case.7 [
    i3 0, label %dst.addr.1.0.0.016.case.0
    i3 1, label %dst.addr.1.0.0.016.case.1
    i3 2, label %dst.addr.1.0.0.016.case.2
    i3 3, label %dst.addr.1.0.0.016.case.3
    i3 -4, label %dst.addr.1.0.0.016.case.4
    i3 -3, label %dst.addr.1.0.0.016.case.5
    i3 -2, label %dst.addr.1.0.0.016.case.6
  ]

dst.addr.1.0.0.016.case.0:                        ; preds = %for.loop
  store i16 %4, i16* %dst.addr.0.0.0.08_0, align 2
  %5 = load i16, i16* %src.addr.1.0.0.015, align 2
  store i16 %5, i16* %dst.addr.1.0.0.016_0, align 2
  br label %dst.addr.1.0.0.016.exit

dst.addr.1.0.0.016.case.1:                        ; preds = %for.loop
  store i16 %4, i16* %dst.addr.0.0.0.08_1, align 2
  %6 = load i16, i16* %src.addr.1.0.0.015, align 2
  store i16 %6, i16* %dst.addr.1.0.0.016_1, align 2
  br label %dst.addr.1.0.0.016.exit

dst.addr.1.0.0.016.case.2:                        ; preds = %for.loop
  store i16 %4, i16* %dst.addr.0.0.0.08_2, align 2
  %7 = load i16, i16* %src.addr.1.0.0.015, align 2
  store i16 %7, i16* %dst.addr.1.0.0.016_2, align 2
  br label %dst.addr.1.0.0.016.exit

dst.addr.1.0.0.016.case.3:                        ; preds = %for.loop
  store i16 %4, i16* %dst.addr.0.0.0.08_3, align 2
  %8 = load i16, i16* %src.addr.1.0.0.015, align 2
  store i16 %8, i16* %dst.addr.1.0.0.016_3, align 2
  br label %dst.addr.1.0.0.016.exit

dst.addr.1.0.0.016.case.4:                        ; preds = %for.loop
  store i16 %4, i16* %dst.addr.0.0.0.08_4, align 2
  %9 = load i16, i16* %src.addr.1.0.0.015, align 2
  store i16 %9, i16* %dst.addr.1.0.0.016_4, align 2
  br label %dst.addr.1.0.0.016.exit

dst.addr.1.0.0.016.case.5:                        ; preds = %for.loop
  store i16 %4, i16* %dst.addr.0.0.0.08_5, align 2
  %10 = load i16, i16* %src.addr.1.0.0.015, align 2
  store i16 %10, i16* %dst.addr.1.0.0.016_5, align 2
  br label %dst.addr.1.0.0.016.exit

dst.addr.1.0.0.016.case.6:                        ; preds = %for.loop
  store i16 %4, i16* %dst.addr.0.0.0.08_6, align 2
  %11 = load i16, i16* %src.addr.1.0.0.015, align 2
  store i16 %11, i16* %dst.addr.1.0.0.016_6, align 2
  br label %dst.addr.1.0.0.016.exit

dst.addr.1.0.0.016.case.7:                        ; preds = %for.loop
  store i16 %4, i16* %dst.addr.0.0.0.08_7, align 2
  %12 = load i16, i16* %src.addr.1.0.0.015, align 2
  store i16 %12, i16* %dst.addr.1.0.0.016_7, align 2
  br label %dst.addr.1.0.0.016.exit

dst.addr.1.0.0.016.exit:                          ; preds = %dst.addr.1.0.0.016.case.7, %dst.addr.1.0.0.016.case.6, %dst.addr.1.0.0.016.case.5, %dst.addr.1.0.0.016.case.4, %dst.addr.1.0.0.016.case.3, %dst.addr.1.0.0.016.case.2, %dst.addr.1.0.0.016.case.1, %dst.addr.1.0.0.016.case.0
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx18, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %dst.addr.1.0.0.016.exit, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @copy_in([8 x %"class.std::complex<ap_fixed<16, 4, AP_RND, AP_SAT, 0> >"]* noalias readonly "orig.arg.no"="0", i32* noalias align 512 "orig.arg.no"="1" "unpacked"="1.0" %_0, i32* noalias align 512 "orig.arg.no"="1" "unpacked"="1.1" %_1, i32* noalias align 512 "orig.arg.no"="1" "unpacked"="1.2" %_2, i32* noalias align 512 "orig.arg.no"="1" "unpacked"="1.3" %_3, i32* noalias align 512 "orig.arg.no"="1" "unpacked"="1.4" %_4, i32* noalias align 512 "orig.arg.no"="1" "unpacked"="1.5" %_5, i32* noalias align 512 "orig.arg.no"="1" "unpacked"="1.6" %_6, i32* noalias align 512 "orig.arg.no"="1" "unpacked"="1.7" %_7, [8 x %"class.std::complex<ap_fixed<16, 4, AP_RND, AP_SAT, 0> >"]* noalias readonly "orig.arg.no"="2", i32* noalias align 512 "orig.arg.no"="3" "unpacked"="3.0" %_01, i32* noalias align 512 "orig.arg.no"="3" "unpacked"="3.1" %_12, i32* noalias align 512 "orig.arg.no"="3" "unpacked"="3.2" %_23, i32* noalias align 512 "orig.arg.no"="3" "unpacked"="3.3" %_34, i32* noalias align 512 "orig.arg.no"="3" "unpacked"="3.4" %_45, i32* noalias align 512 "orig.arg.no"="3" "unpacked"="3.5" %_56, i32* noalias align 512 "orig.arg.no"="3" "unpacked"="3.6" %_67, i32* noalias align 512 "orig.arg.no"="3" "unpacked"="3.7" %_78) #2 {
entry:
  call void @"onebyonecpy_hls.p0a8class.std::complex<ap_fixed<16, 4, AP_RND, AP_SAT, 0> >.117.120"(i32* align 512 %_0, i32* align 512 %_1, i32* align 512 %_2, i32* align 512 %_3, i32* align 512 %_4, i32* align 512 %_5, i32* align 512 %_6, i32* align 512 %_7, [8 x %"class.std::complex<ap_fixed<16, 4, AP_RND, AP_SAT, 0> >"]* %0)
  call void @"onebyonecpy_hls.p0a8class.std::complex<ap_fixed<16, 4, AP_RND, AP_SAT, 0> >.117.120"(i32* align 512 %_01, i32* align 512 %_12, i32* align 512 %_23, i32* align 512 %_34, i32* align 512 %_45, i32* align 512 %_56, i32* align 512 %_67, i32* align 512 %_78, [8 x %"class.std::complex<ap_fixed<16, 4, AP_RND, AP_SAT, 0> >"]* %1)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @copy_out([8 x %"class.std::complex<ap_fixed<16, 4, AP_RND, AP_SAT, 0> >"]* noalias "orig.arg.no"="0", i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.0" %_0, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.1" %_1, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.2" %_2, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.3" %_3, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.4" %_4, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.5" %_5, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.6" %_6, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.7" %_7, [8 x %"class.std::complex<ap_fixed<16, 4, AP_RND, AP_SAT, 0> >"]* noalias "orig.arg.no"="2", i32* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.0" %_01, i32* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.1" %_12, i32* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.2" %_23, i32* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.3" %_34, i32* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.4" %_45, i32* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.5" %_56, i32* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.6" %_67, i32* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.7" %_78) #3 {
entry:
  call void @"onebyonecpy_hls.p0a8class.std::complex<ap_fixed<16, 4, AP_RND, AP_SAT, 0> >.125.128"([8 x %"class.std::complex<ap_fixed<16, 4, AP_RND, AP_SAT, 0> >"]* %0, i32* align 512 %_0, i32* align 512 %_1, i32* align 512 %_2, i32* align 512 %_3, i32* align 512 %_4, i32* align 512 %_5, i32* align 512 %_6, i32* align 512 %_7)
  call void @"onebyonecpy_hls.p0a8class.std::complex<ap_fixed<16, 4, AP_RND, AP_SAT, 0> >.125.128"([8 x %"class.std::complex<ap_fixed<16, 4, AP_RND, AP_SAT, 0> >"]* %1, i32* align 512 %_01, i32* align 512 %_12, i32* align 512 %_23, i32* align 512 %_34, i32* align 512 %_45, i32* align 512 %_56, i32* align 512 %_67, i32* align 512 %_78)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @"onebyonecpy_hls.p0a8class.std::complex<ap_fixed<16, 4, AP_RND, AP_SAT, 0> >.117.120"(i32* noalias align 512 "orig.arg.no"="0" "unpacked"="0.0" %dst_0, i32* noalias align 512 "orig.arg.no"="0" "unpacked"="0.1" %dst_1, i32* noalias align 512 "orig.arg.no"="0" "unpacked"="0.2" %dst_2, i32* noalias align 512 "orig.arg.no"="0" "unpacked"="0.3" %dst_3, i32* noalias align 512 "orig.arg.no"="0" "unpacked"="0.4" %dst_4, i32* noalias align 512 "orig.arg.no"="0" "unpacked"="0.5" %dst_5, i32* noalias align 512 "orig.arg.no"="0" "unpacked"="0.6" %dst_6, i32* noalias align 512 "orig.arg.no"="0" "unpacked"="0.7" %dst_7, [8 x %"class.std::complex<ap_fixed<16, 4, AP_RND, AP_SAT, 0> >"]* noalias readonly "orig.arg.no"="1" %src) #4 {
entry:
  %0 = icmp eq i32* %dst_0, null
  %1 = icmp eq [8 x %"class.std::complex<ap_fixed<16, 4, AP_RND, AP_SAT, 0> >"]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a8class.std::complex<ap_fixed<16, 4, AP_RND, AP_SAT, 0> >.118.119.144.151.174.181.204.211.234.241"(i32* nonnull %dst_0, i32* %dst_1, i32* %dst_2, i32* %dst_3, i32* %dst_4, i32* %dst_5, i32* %dst_6, i32* %dst_7, [8 x %"class.std::complex<ap_fixed<16, 4, AP_RND, AP_SAT, 0> >"]* nonnull %src, i64 8)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define void @"arraycpy_hls.p0a8class.std::complex<ap_fixed<16, 4, AP_RND, AP_SAT, 0> >.118.119.144.151.174.181.204.211.234.241"(i32* "orig.arg.no"="0" "unpacked"="0.0" %dst_0, i32* "orig.arg.no"="0" "unpacked"="0.1" %dst_1, i32* "orig.arg.no"="0" "unpacked"="0.2" %dst_2, i32* "orig.arg.no"="0" "unpacked"="0.3" %dst_3, i32* "orig.arg.no"="0" "unpacked"="0.4" %dst_4, i32* "orig.arg.no"="0" "unpacked"="0.5" %dst_5, i32* "orig.arg.no"="0" "unpacked"="0.6" %dst_6, i32* "orig.arg.no"="0" "unpacked"="0.7" %dst_7, [8 x %"class.std::complex<ap_fixed<16, 4, AP_RND, AP_SAT, 0> >"]* readonly "orig.arg.no"="1" %src, i64 "orig.arg.no"="2" %num) #1 {
entry:
  %0 = icmp eq [8 x %"class.std::complex<ap_fixed<16, 4, AP_RND, AP_SAT, 0> >"]* %src, null
  %1 = icmp eq i32* %dst_0, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond17 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond17, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %dst.addr.1.0.0.016.exit, %for.loop.lr.ph
  %for.loop.idx18 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %dst.addr.1.0.0.016.exit ]
  %3 = trunc i64 %for.loop.idx18 to i3
  %src.addr.0.0.0.07 = getelementptr [8 x %"class.std::complex<ap_fixed<16, 4, AP_RND, AP_SAT, 0> >"], [8 x %"class.std::complex<ap_fixed<16, 4, AP_RND, AP_SAT, 0> >"]* %src, i64 0, i64 %for.loop.idx18, i32 0, i32 0, i32 0, i32 0
  %4 = load i16, i16* %src.addr.0.0.0.07, align 2
  %src.addr.1.0.0.015 = getelementptr [8 x %"class.std::complex<ap_fixed<16, 4, AP_RND, AP_SAT, 0> >"], [8 x %"class.std::complex<ap_fixed<16, 4, AP_RND, AP_SAT, 0> >"]* %src, i64 0, i64 %for.loop.idx18, i32 1, i32 0, i32 0, i32 0
  %5 = zext i16 %4 to i32
  switch i3 %3, label %dst.addr.1.0.0.016.case.7 [
    i3 0, label %dst.addr.1.0.0.016.case.0
    i3 1, label %dst.addr.1.0.0.016.case.1
    i3 2, label %dst.addr.1.0.0.016.case.2
    i3 3, label %dst.addr.1.0.0.016.case.3
    i3 -4, label %dst.addr.1.0.0.016.case.4
    i3 -3, label %dst.addr.1.0.0.016.case.5
    i3 -2, label %dst.addr.1.0.0.016.case.6
  ]

dst.addr.1.0.0.016.case.0:                        ; preds = %for.loop
  %6 = load i32, i32* %dst_0, align 4
  %7 = and i32 %6, -65536
  %.partset15 = or i32 %7, %5
  store i32 %.partset15, i32* %dst_0, align 4
  %8 = load i16, i16* %src.addr.1.0.0.015, align 2
  %9 = zext i16 %8 to i32
  %10 = shl i32 %9, 16
  %.partset14 = or i32 %10, %5
  store i32 %.partset14, i32* %dst_0, align 4
  br label %dst.addr.1.0.0.016.exit

dst.addr.1.0.0.016.case.1:                        ; preds = %for.loop
  %11 = load i32, i32* %dst_1, align 4
  %12 = and i32 %11, -65536
  %.partset13 = or i32 %12, %5
  store i32 %.partset13, i32* %dst_1, align 4
  %13 = load i16, i16* %src.addr.1.0.0.015, align 2
  %14 = zext i16 %13 to i32
  %15 = shl i32 %14, 16
  %.partset12 = or i32 %15, %5
  store i32 %.partset12, i32* %dst_1, align 4
  br label %dst.addr.1.0.0.016.exit

dst.addr.1.0.0.016.case.2:                        ; preds = %for.loop
  %16 = load i32, i32* %dst_2, align 4
  %17 = and i32 %16, -65536
  %.partset11 = or i32 %17, %5
  store i32 %.partset11, i32* %dst_2, align 4
  %18 = load i16, i16* %src.addr.1.0.0.015, align 2
  %19 = zext i16 %18 to i32
  %20 = shl i32 %19, 16
  %.partset10 = or i32 %20, %5
  store i32 %.partset10, i32* %dst_2, align 4
  br label %dst.addr.1.0.0.016.exit

dst.addr.1.0.0.016.case.3:                        ; preds = %for.loop
  %21 = load i32, i32* %dst_3, align 4
  %22 = and i32 %21, -65536
  %.partset9 = or i32 %22, %5
  store i32 %.partset9, i32* %dst_3, align 4
  %23 = load i16, i16* %src.addr.1.0.0.015, align 2
  %24 = zext i16 %23 to i32
  %25 = shl i32 %24, 16
  %.partset8 = or i32 %25, %5
  store i32 %.partset8, i32* %dst_3, align 4
  br label %dst.addr.1.0.0.016.exit

dst.addr.1.0.0.016.case.4:                        ; preds = %for.loop
  %26 = load i32, i32* %dst_4, align 4
  %27 = and i32 %26, -65536
  %.partset7 = or i32 %27, %5
  store i32 %.partset7, i32* %dst_4, align 4
  %28 = load i16, i16* %src.addr.1.0.0.015, align 2
  %29 = zext i16 %28 to i32
  %30 = shl i32 %29, 16
  %.partset6 = or i32 %30, %5
  store i32 %.partset6, i32* %dst_4, align 4
  br label %dst.addr.1.0.0.016.exit

dst.addr.1.0.0.016.case.5:                        ; preds = %for.loop
  %31 = load i32, i32* %dst_5, align 4
  %32 = and i32 %31, -65536
  %.partset5 = or i32 %32, %5
  store i32 %.partset5, i32* %dst_5, align 4
  %33 = load i16, i16* %src.addr.1.0.0.015, align 2
  %34 = zext i16 %33 to i32
  %35 = shl i32 %34, 16
  %.partset4 = or i32 %35, %5
  store i32 %.partset4, i32* %dst_5, align 4
  br label %dst.addr.1.0.0.016.exit

dst.addr.1.0.0.016.case.6:                        ; preds = %for.loop
  %36 = load i32, i32* %dst_6, align 4
  %37 = and i32 %36, -65536
  %.partset3 = or i32 %37, %5
  store i32 %.partset3, i32* %dst_6, align 4
  %38 = load i16, i16* %src.addr.1.0.0.015, align 2
  %39 = zext i16 %38 to i32
  %40 = shl i32 %39, 16
  %.partset2 = or i32 %40, %5
  store i32 %.partset2, i32* %dst_6, align 4
  br label %dst.addr.1.0.0.016.exit

dst.addr.1.0.0.016.case.7:                        ; preds = %for.loop
  %41 = load i32, i32* %dst_7, align 4
  %42 = and i32 %41, -65536
  %.partset1 = or i32 %42, %5
  store i32 %.partset1, i32* %dst_7, align 4
  %43 = load i16, i16* %src.addr.1.0.0.015, align 2
  %44 = zext i16 %43 to i32
  %45 = shl i32 %44, 16
  %.partset = or i32 %45, %5
  store i32 %.partset, i32* %dst_7, align 4
  br label %dst.addr.1.0.0.016.exit

dst.addr.1.0.0.016.exit:                          ; preds = %dst.addr.1.0.0.016.case.7, %dst.addr.1.0.0.016.case.6, %dst.addr.1.0.0.016.case.5, %dst.addr.1.0.0.016.case.4, %dst.addr.1.0.0.016.case.3, %dst.addr.1.0.0.016.case.2, %dst.addr.1.0.0.016.case.1, %dst.addr.1.0.0.016.case.0
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx18, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %dst.addr.1.0.0.016.exit, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @"onebyonecpy_hls.p0a8class.std::complex<ap_fixed<16, 4, AP_RND, AP_SAT, 0> >.125.128"([8 x %"class.std::complex<ap_fixed<16, 4, AP_RND, AP_SAT, 0> >"]* noalias "orig.arg.no"="0" %dst, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.0" %src_0, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.1" %src_1, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.2" %src_2, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.3" %src_3, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.4" %src_4, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.5" %src_5, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.6" %src_6, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.7" %src_7) #4 {
entry:
  %0 = icmp eq [8 x %"class.std::complex<ap_fixed<16, 4, AP_RND, AP_SAT, 0> >"]* %dst, null
  %1 = icmp eq i32* %src_0, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a8class.std::complex<ap_fixed<16, 4, AP_RND, AP_SAT, 0> >.126.127.136.159.166.189.196.219.226.249"([8 x %"class.std::complex<ap_fixed<16, 4, AP_RND, AP_SAT, 0> >"]* nonnull %dst, i32* nonnull %src_0, i32* %src_1, i32* %src_2, i32* %src_3, i32* %src_4, i32* %src_5, i32* %src_6, i32* %src_7, i64 8)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define void @"arraycpy_hls.p0a8class.std::complex<ap_fixed<16, 4, AP_RND, AP_SAT, 0> >.126.127.136.159.166.189.196.219.226.249"([8 x %"class.std::complex<ap_fixed<16, 4, AP_RND, AP_SAT, 0> >"]* "orig.arg.no"="0" %dst, i32* readonly "orig.arg.no"="1" "unpacked"="1.0" %src_0, i32* readonly "orig.arg.no"="1" "unpacked"="1.1" %src_1, i32* readonly "orig.arg.no"="1" "unpacked"="1.2" %src_2, i32* readonly "orig.arg.no"="1" "unpacked"="1.3" %src_3, i32* readonly "orig.arg.no"="1" "unpacked"="1.4" %src_4, i32* readonly "orig.arg.no"="1" "unpacked"="1.5" %src_5, i32* readonly "orig.arg.no"="1" "unpacked"="1.6" %src_6, i32* readonly "orig.arg.no"="1" "unpacked"="1.7" %src_7, i64 "orig.arg.no"="2" %num) #1 {
entry:
  %0 = icmp eq i32* %src_0, null
  %1 = icmp eq [8 x %"class.std::complex<ap_fixed<16, 4, AP_RND, AP_SAT, 0> >"]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond17 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond17, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %src.addr.1.0.0.015.exit, %for.loop.lr.ph
  %for.loop.idx18 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %src.addr.1.0.0.015.exit ]
  %3 = trunc i64 %for.loop.idx18 to i3
  %dst.addr.0.0.0.08 = getelementptr [8 x %"class.std::complex<ap_fixed<16, 4, AP_RND, AP_SAT, 0> >"], [8 x %"class.std::complex<ap_fixed<16, 4, AP_RND, AP_SAT, 0> >"]* %dst, i64 0, i64 %for.loop.idx18, i32 0, i32 0, i32 0, i32 0
  %dst.addr.1.0.0.016 = getelementptr [8 x %"class.std::complex<ap_fixed<16, 4, AP_RND, AP_SAT, 0> >"], [8 x %"class.std::complex<ap_fixed<16, 4, AP_RND, AP_SAT, 0> >"]* %dst, i64 0, i64 %for.loop.idx18, i32 1, i32 0, i32 0, i32 0
  switch i3 %3, label %src.addr.1.0.0.015.case.7 [
    i3 0, label %src.addr.1.0.0.015.case.0
    i3 1, label %src.addr.1.0.0.015.case.1
    i3 2, label %src.addr.1.0.0.015.case.2
    i3 3, label %src.addr.1.0.0.015.case.3
    i3 -4, label %src.addr.1.0.0.015.case.4
    i3 -3, label %src.addr.1.0.0.015.case.5
    i3 -2, label %src.addr.1.0.0.015.case.6
  ]

src.addr.1.0.0.015.case.0:                        ; preds = %for.loop
  %4 = load i32, i32* %src_0, align 4
  %_0.partselect = trunc i32 %4 to i16
  store i16 %_0.partselect, i16* %dst.addr.0.0.0.08, align 2
  %5 = load i32, i32* %src_0, align 4
  %6 = lshr i32 %5, 16
  %_01.partselect = trunc i32 %6 to i16
  br label %src.addr.1.0.0.015.exit

src.addr.1.0.0.015.case.1:                        ; preds = %for.loop
  %7 = load i32, i32* %src_1, align 4
  %_1.partselect = trunc i32 %7 to i16
  store i16 %_1.partselect, i16* %dst.addr.0.0.0.08, align 2
  %8 = load i32, i32* %src_1, align 4
  %9 = lshr i32 %8, 16
  %_12.partselect = trunc i32 %9 to i16
  br label %src.addr.1.0.0.015.exit

src.addr.1.0.0.015.case.2:                        ; preds = %for.loop
  %10 = load i32, i32* %src_2, align 4
  %_2.partselect = trunc i32 %10 to i16
  store i16 %_2.partselect, i16* %dst.addr.0.0.0.08, align 2
  %11 = load i32, i32* %src_2, align 4
  %12 = lshr i32 %11, 16
  %_23.partselect = trunc i32 %12 to i16
  br label %src.addr.1.0.0.015.exit

src.addr.1.0.0.015.case.3:                        ; preds = %for.loop
  %13 = load i32, i32* %src_3, align 4
  %_3.partselect = trunc i32 %13 to i16
  store i16 %_3.partselect, i16* %dst.addr.0.0.0.08, align 2
  %14 = load i32, i32* %src_3, align 4
  %15 = lshr i32 %14, 16
  %_34.partselect = trunc i32 %15 to i16
  br label %src.addr.1.0.0.015.exit

src.addr.1.0.0.015.case.4:                        ; preds = %for.loop
  %16 = load i32, i32* %src_4, align 4
  %_4.partselect = trunc i32 %16 to i16
  store i16 %_4.partselect, i16* %dst.addr.0.0.0.08, align 2
  %17 = load i32, i32* %src_4, align 4
  %18 = lshr i32 %17, 16
  %_45.partselect = trunc i32 %18 to i16
  br label %src.addr.1.0.0.015.exit

src.addr.1.0.0.015.case.5:                        ; preds = %for.loop
  %19 = load i32, i32* %src_5, align 4
  %_5.partselect = trunc i32 %19 to i16
  store i16 %_5.partselect, i16* %dst.addr.0.0.0.08, align 2
  %20 = load i32, i32* %src_5, align 4
  %21 = lshr i32 %20, 16
  %_56.partselect = trunc i32 %21 to i16
  br label %src.addr.1.0.0.015.exit

src.addr.1.0.0.015.case.6:                        ; preds = %for.loop
  %22 = load i32, i32* %src_6, align 4
  %_6.partselect = trunc i32 %22 to i16
  store i16 %_6.partselect, i16* %dst.addr.0.0.0.08, align 2
  %23 = load i32, i32* %src_6, align 4
  %24 = lshr i32 %23, 16
  %_67.partselect = trunc i32 %24 to i16
  br label %src.addr.1.0.0.015.exit

src.addr.1.0.0.015.case.7:                        ; preds = %for.loop
  %25 = load i32, i32* %src_7, align 4
  %_7.partselect = trunc i32 %25 to i16
  store i16 %_7.partselect, i16* %dst.addr.0.0.0.08, align 2
  %26 = load i32, i32* %src_7, align 4
  %27 = lshr i32 %26, 16
  %_78.partselect = trunc i32 %27 to i16
  br label %src.addr.1.0.0.015.exit

src.addr.1.0.0.015.exit:                          ; preds = %src.addr.1.0.0.015.case.7, %src.addr.1.0.0.015.case.6, %src.addr.1.0.0.015.case.5, %src.addr.1.0.0.015.case.4, %src.addr.1.0.0.015.case.3, %src.addr.1.0.0.015.case.2, %src.addr.1.0.0.015.case.1, %src.addr.1.0.0.015.case.0
  %28 = phi i16 [ %_01.partselect, %src.addr.1.0.0.015.case.0 ], [ %_12.partselect, %src.addr.1.0.0.015.case.1 ], [ %_23.partselect, %src.addr.1.0.0.015.case.2 ], [ %_34.partselect, %src.addr.1.0.0.015.case.3 ], [ %_45.partselect, %src.addr.1.0.0.015.case.4 ], [ %_56.partselect, %src.addr.1.0.0.015.case.5 ], [ %_67.partselect, %src.addr.1.0.0.015.case.6 ], [ %_78.partselect, %src.addr.1.0.0.015.case.7 ]
  store i16 %28, i16* %dst.addr.1.0.0.016, align 2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx18, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %src.addr.1.0.0.015.exit, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

declare void @apatb_dit_fft_8_hw(i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*)

; Function Attrs: argmemonly noinline norecurse
define internal void @copy_back([8 x %"class.std::complex<ap_fixed<16, 4, AP_RND, AP_SAT, 0> >"]* noalias "orig.arg.no"="0", i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.0" %_0, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.1" %_1, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.2" %_2, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.3" %_3, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.4" %_4, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.5" %_5, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.6" %_6, i32* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.7" %_7, [8 x %"class.std::complex<ap_fixed<16, 4, AP_RND, AP_SAT, 0> >"]* noalias "orig.arg.no"="2", i32* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.0" %_01, i32* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.1" %_12, i32* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.2" %_23, i32* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.3" %_34, i32* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.4" %_45, i32* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.5" %_56, i32* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.6" %_67, i32* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.7" %_78) #3 {
entry:
  call void @"onebyonecpy_hls.p0a8class.std::complex<ap_fixed<16, 4, AP_RND, AP_SAT, 0> >.125.128"([8 x %"class.std::complex<ap_fixed<16, 4, AP_RND, AP_SAT, 0> >"]* %1, i32* align 512 %_01, i32* align 512 %_12, i32* align 512 %_23, i32* align 512 %_34, i32* align 512 %_45, i32* align 512 %_56, i32* align 512 %_67, i32* align 512 %_78)
  ret void
}

define void @dit_fft_8_hw_stub_wrapper(i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #5 {
entry:
  %16 = alloca [8 x %"class.std::complex<ap_fixed<16, 4, AP_RND, AP_SAT, 0> >"]
  %17 = alloca [8 x %"class.std::complex<ap_fixed<16, 4, AP_RND, AP_SAT, 0> >"]
  call void @copy_out([8 x %"class.std::complex<ap_fixed<16, 4, AP_RND, AP_SAT, 0> >"]* %16, i32* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32* %5, i32* %6, i32* %7, [8 x %"class.std::complex<ap_fixed<16, 4, AP_RND, AP_SAT, 0> >"]* %17, i32* %8, i32* %9, i32* %10, i32* %11, i32* %12, i32* %13, i32* %14, i32* %15)
  %18 = bitcast [8 x %"class.std::complex<ap_fixed<16, 4, AP_RND, AP_SAT, 0> >"]* %16 to %"class.std::complex<ap_fixed<16, 4, AP_RND, AP_SAT, 0> >"*
  %19 = bitcast [8 x %"class.std::complex<ap_fixed<16, 4, AP_RND, AP_SAT, 0> >"]* %17 to %"class.std::complex<ap_fixed<16, 4, AP_RND, AP_SAT, 0> >"*
  call void @dit_fft_8_hw_stub(%"class.std::complex<ap_fixed<16, 4, AP_RND, AP_SAT, 0> >"* %18, %"class.std::complex<ap_fixed<16, 4, AP_RND, AP_SAT, 0> >"* %19)
  call void @copy_in([8 x %"class.std::complex<ap_fixed<16, 4, AP_RND, AP_SAT, 0> >"]* %16, i32* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32* %5, i32* %6, i32* %7, [8 x %"class.std::complex<ap_fixed<16, 4, AP_RND, AP_SAT, 0> >"]* %17, i32* %8, i32* %9, i32* %10, i32* %11, i32* %12, i32* %13, i32* %14, i32* %15)
  ret void
}

declare void @dit_fft_8_hw_stub(%"class.std::complex<ap_fixed<16, 4, AP_RND, AP_SAT, 0> >"*, %"class.std::complex<ap_fixed<16, 4, AP_RND, AP_SAT, 0> >"*)

attributes #0 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline norecurse "fpga.wrapper.func"="arraycpy_hls" }
attributes #2 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyin" }
attributes #3 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyout" }
attributes #4 = { argmemonly noinline norecurse "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #5 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}
!datalayout.transforms.on.top = !{!5, !19}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
!5 = !{!6, !8, !10}
!6 = !{!7}
!7 = !{!"0", [8 x %"class.std::complex<ap_fixed<16, 4, AP_RND, AP_SAT, 0> >"]* null}
!8 = !{!9}
!9 = !{!"array_partition", !"type=Complete", !"dim=1"}
!10 = !{!11, !12, !13, !14, !15, !16, !17, !18}
!11 = !{!"0.0", %"class.std::complex<ap_fixed<16, 4, AP_RND, AP_SAT, 0> >"* null}
!12 = !{!"0.1", %"class.std::complex<ap_fixed<16, 4, AP_RND, AP_SAT, 0> >"* null}
!13 = !{!"0.2", %"class.std::complex<ap_fixed<16, 4, AP_RND, AP_SAT, 0> >"* null}
!14 = !{!"0.3", %"class.std::complex<ap_fixed<16, 4, AP_RND, AP_SAT, 0> >"* null}
!15 = !{!"0.4", %"class.std::complex<ap_fixed<16, 4, AP_RND, AP_SAT, 0> >"* null}
!16 = !{!"0.5", %"class.std::complex<ap_fixed<16, 4, AP_RND, AP_SAT, 0> >"* null}
!17 = !{!"0.6", %"class.std::complex<ap_fixed<16, 4, AP_RND, AP_SAT, 0> >"* null}
!18 = !{!"0.7", %"class.std::complex<ap_fixed<16, 4, AP_RND, AP_SAT, 0> >"* null}
!19 = !{!20, !8, !22}
!20 = !{!21}
!21 = !{!"1", [8 x %"class.std::complex<ap_fixed<16, 4, AP_RND, AP_SAT, 0> >"]* null}
!22 = !{!23, !24, !25, !26, !27, !28, !29, !30}
!23 = !{!"1.0", %"class.std::complex<ap_fixed<16, 4, AP_RND, AP_SAT, 0> >"* null}
!24 = !{!"1.1", %"class.std::complex<ap_fixed<16, 4, AP_RND, AP_SAT, 0> >"* null}
!25 = !{!"1.2", %"class.std::complex<ap_fixed<16, 4, AP_RND, AP_SAT, 0> >"* null}
!26 = !{!"1.3", %"class.std::complex<ap_fixed<16, 4, AP_RND, AP_SAT, 0> >"* null}
!27 = !{!"1.4", %"class.std::complex<ap_fixed<16, 4, AP_RND, AP_SAT, 0> >"* null}
!28 = !{!"1.5", %"class.std::complex<ap_fixed<16, 4, AP_RND, AP_SAT, 0> >"* null}
!29 = !{!"1.6", %"class.std::complex<ap_fixed<16, 4, AP_RND, AP_SAT, 0> >"* null}
!30 = !{!"1.7", %"class.std::complex<ap_fixed<16, 4, AP_RND, AP_SAT, 0> >"* null}
