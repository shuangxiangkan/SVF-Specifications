; ModuleID = 'EFT_L_A8_XGetSubImage.c'
source_filename = "EFT_L_A8_XGetSubImage.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx12.0.0"

%struct.Display = type {}
%struct.XImage = type {}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.Display*, align 8
  %3 = alloca %struct.XImage, align 1
  %4 = alloca %struct.XImage*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  store %struct.XImage* %3, %struct.XImage** %4, align 8
  %12 = load %struct.Display*, %struct.Display** %2, align 8
  %13 = bitcast %struct.Display* %12 to i8*
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* %10, align 4
  %20 = load %struct.XImage*, %struct.XImage** %4, align 8
  %21 = bitcast %struct.XImage* %20 to i8*
  %22 = call i8* @XGetSubImage(i8* %13, i32 %14, i32 %15, i32 %16, i32 %17, i32 %18, i64 -1, i32 %19, i8* %21, i32 0, i32 0)
  store i8* %22, i8** %11, align 8
  %23 = load i8*, i8** %11, align 8
  %24 = load %struct.XImage*, %struct.XImage** %4, align 8
  %25 = bitcast %struct.XImage* %24 to i8*
  call void @MAYALIAS(i8* %23, i8* %25)
  ret i32 0
}

declare i8* @XGetSubImage(i8*, i32, i32, i32, i32, i32, i64, i32, i8*, i32, i32) #1

declare void @MAYALIAS(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"branch-target-enforcement", i32 0}
!2 = !{i32 1, !"sign-return-address", i32 0}
!3 = !{i32 1, !"sign-return-address-all", i32 0}
!4 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{i32 7, !"frame-pointer", i32 1}
!8 = !{!"Homebrew clang version 13.0.1"}
