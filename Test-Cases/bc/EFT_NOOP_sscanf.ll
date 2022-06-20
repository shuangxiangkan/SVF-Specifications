; ModuleID = 'EFT_NOOP_sscanf.c'
source_filename = "EFT_NOOP_sscanf.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx12.0.0"

@.str = private unnamed_addr constant [23 x i8] c"Saturday March 25 1989\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"%s %s %d  %d\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"%s %d, %d = %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [20 x i8], align 1
  %5 = alloca [20 x i8], align 1
  %6 = alloca [100 x i8], align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %9 = getelementptr inbounds [100 x i8], [100 x i8]* %6, i64 0, i64 0
  %10 = call i8* @strcpy(i8* %9, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %11 = getelementptr inbounds [100 x i8], [100 x i8]* %6, i64 0, i64 0
  %12 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 0
  %13 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i64 0, i64 0
  %14 = call i32 (i8*, i8*, ...) @sscanf(i8* %11, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %12, i8* %13, i32* %2, i32* %3)
  store i32 %14, i32* %7, align 4
  %15 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i64 0, i64 0
  %16 = load i32, i32* %2, align 4
  %17 = load i32, i32* %3, align 4
  %18 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 0
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8* %15, i32 %16, i32 %17, i8* %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = inttoptr i64 %21 to i8*
  %23 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 0
  call void @NOALIAS(i8* %22, i8* %23)
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = inttoptr i64 %25 to i8*
  %27 = load i32, i32* %2, align 4
  %28 = sext i32 %27 to i64
  %29 = inttoptr i64 %28 to i8*
  call void @NOALIAS(i8* %26, i8* %29)
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = inttoptr i64 %31 to i8*
  %33 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i64 0, i64 0
  call void @NOALIAS(i8* %32, i8* %33)
  %34 = load i32, i32* %8, align 4
  %35 = sext i32 %34 to i64
  %36 = inttoptr i64 %35 to i8*
  %37 = load i32, i32* %3, align 4
  %38 = sext i32 %37 to i64
  %39 = inttoptr i64 %38 to i8*
  call void @NOALIAS(i8* %36, i8* %39)
  ret i32 0
}

declare i8* @strcpy(i8*, i8*) #1

declare i32 @sscanf(i8*, i8*, ...) #1

declare i32 @printf(i8*, ...) #1

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
