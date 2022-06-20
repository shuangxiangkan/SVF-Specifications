; ModuleID = 'EFT_STAT_asctime.c'
source_filename = "EFT_STAT_asctime.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx12.0.0"

%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tm.0 = type opaque

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.tm, align 4
  %3 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  %4 = getelementptr inbounds %struct.tm, %struct.tm* %2, i32 0, i32 0
  store i32 10, i32* %4, align 4
  %5 = getelementptr inbounds %struct.tm, %struct.tm* %2, i32 0, i32 1
  store i32 10, i32* %5, align 4
  %6 = getelementptr inbounds %struct.tm, %struct.tm* %2, i32 0, i32 2
  store i32 6, i32* %6, align 4
  %7 = getelementptr inbounds %struct.tm, %struct.tm* %2, i32 0, i32 3
  store i32 25, i32* %7, align 4
  %8 = getelementptr inbounds %struct.tm, %struct.tm* %2, i32 0, i32 4
  store i32 2, i32* %8, align 4
  %9 = getelementptr inbounds %struct.tm, %struct.tm* %2, i32 0, i32 5
  store i32 89, i32* %9, align 4
  %10 = getelementptr inbounds %struct.tm, %struct.tm* %2, i32 0, i32 6
  store i32 6, i32* %10, align 4
  %11 = bitcast %struct.tm* %2 to %struct.tm.0*
  %12 = call i8* @asctime(%struct.tm.0* %11)
  %13 = call i32 bitcast (i32 (...)* @puts to i32 (i8*)*)(i8* %12)
  %14 = sext i32 %13 to i64
  %15 = inttoptr i64 %14 to i8*
  store i8* %15, i8** %3, align 8
  %16 = load i8*, i8** %3, align 8
  %17 = bitcast %struct.tm* %2 to i8*
  call void @NOALIAS(i8* %16, i8* %17)
  ret i32 0
}

declare i32 @puts(...) #1

declare i8* @asctime(%struct.tm.0*) #1

declare void @NOALIAS(i8*, i8*) #1

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
