; ModuleID = 'EFT_ALLOC_calloc.c'
source_filename = "EFT_ALLOC_calloc.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx12.0.0"

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  store i32 0, i32* %1, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call i8* @calloc(i32 %5, i32 4)
  %7 = bitcast i8* %6 to i32*
  store i32* %7, i32** %4, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = bitcast i32* %8 to i8*
  %10 = load i32, i32* %2, align 4
  %11 = sext i32 %10 to i64
  %12 = inttoptr i64 %11 to i8*
  call void @NOALIAS(i8* %9, i8* %12)
  %13 = load i32*, i32** %4, align 8
  %14 = bitcast i32* %13 to i8*
  call void @free(i8* %14)
  ret i32 0
}

declare i8* @calloc(i32, i32) #1

declare void @NOALIAS(i8*, i8*) #1

declare void @free(i8*) #1

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
