; ModuleID = 'EFT_A3R_A1R_NS_iconv.c'
source_filename = "EFT_A3R_A1R_NS_iconv.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx12.0.0"

@.str = private unnamed_addr constant [11 x i8] c"GBK \B5\E7\CA\D3\BB\FA\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i8**, align 8
  %4 = alloca [100 x i8], align 1
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  store i8** %2, i8*** %3, align 8
  %10 = getelementptr inbounds [100 x i8], [100 x i8]* %4, i64 0, i64 0
  store i8* %10, i8** %5, align 8
  store i8** %5, i8*** %6, align 8
  %11 = load i8*, i8** %2, align 8
  %12 = call i64 @strlen(i8* %11)
  store i64 %12, i64* %7, align 8
  store i64 100, i64* %8, align 8
  %13 = load i8*, i8** %9, align 8
  %14 = load i8**, i8*** %3, align 8
  %15 = load i8**, i8*** %6, align 8
  %16 = call i64 @iconv(i8* %13, i8** %14, i64* %7, i8** %15, i64* %8)
  %17 = load i8**, i8*** %3, align 8
  %18 = bitcast i8** %17 to i8*
  %19 = load i8**, i8*** %3, align 8
  %20 = bitcast i8** %19 to i8*
  call void @MAYALIAS(i8* %18, i8* %20)
  ret i32 0
}

declare i64 @strlen(i8*) #1

declare i64 @iconv(i8*, i8**, i64*, i8**, i64*) #1

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
