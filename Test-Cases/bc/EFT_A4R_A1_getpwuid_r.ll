; ModuleID = 'EFT_A4R_A1_getpwuid_r.c'
source_filename = "EFT_A4R_A1_getpwuid_r.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx12.0.0"

%struct.passwd = type {}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca %struct.passwd, align 1
  %4 = alloca %struct.passwd*, align 8
  %5 = alloca [10 x i8], align 1
  %6 = alloca i64, align 8
  %7 = alloca %struct.passwd, align 1
  %8 = alloca %struct.passwd*, align 8
  %9 = alloca %struct.passwd**, align 8
  %10 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store %struct.passwd* %3, %struct.passwd** %4, align 8
  store i64 10, i64* %6, align 8
  store %struct.passwd* %7, %struct.passwd** %8, align 8
  store %struct.passwd** %8, %struct.passwd*** %9, align 8
  %11 = load i64, i64* %2, align 8
  %12 = load %struct.passwd*, %struct.passwd** %4, align 8
  %13 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 0
  %14 = load i64, i64* %6, align 8
  %15 = load %struct.passwd**, %struct.passwd*** %9, align 8
  %16 = call i32 @getpwuid_r(i64 %11, %struct.passwd* %12, i8* %13, i64 %14, %struct.passwd** %15)
  store i32 %16, i32* %10, align 4
  %17 = load %struct.passwd*, %struct.passwd** %4, align 8
  %18 = bitcast %struct.passwd* %17 to i8*
  %19 = load %struct.passwd*, %struct.passwd** %8, align 8
  %20 = bitcast %struct.passwd* %19 to i8*
  call void @MAYALIAS(i8* %18, i8* %20)
  ret i32 0
}

declare i32 @getpwuid_r(i64, %struct.passwd*, i8*, i64, %struct.passwd**) #1

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
