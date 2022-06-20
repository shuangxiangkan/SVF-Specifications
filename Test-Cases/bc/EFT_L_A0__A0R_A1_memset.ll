; ModuleID = 'EFT_L_A0__A0R_A1_memset.c'
source_filename = "EFT_L_A0__A0R_A1_memset.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx12.0.0"

@.str = private unnamed_addr constant [34 x i8] c"This is string.h library function\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [50 x i8], align 1
  %3 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  %4 = getelementptr inbounds [50 x i8], [50 x i8]* %2, i64 0, i64 0
  %5 = call i8* @strcpy(i8* %4, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %6 = getelementptr inbounds [50 x i8], [50 x i8]* %2, i64 0, i64 0
  %7 = call i8* @memset(i8* %6, i8* inttoptr (i64 36 to i8*), i8* inttoptr (i64 7 to i8*))
  store i8* %7, i8** %3, align 8
  %8 = getelementptr inbounds [50 x i8], [50 x i8]* %2, i64 0, i64 0
  %9 = load i8*, i8** %3, align 8
  call void @MAYALIAS(i8* %8, i8* %9)
  ret i32 0
}

declare i8* @strcpy(i8*, i8*) #1

declare i8* @memset(i8*, i8*, i8*) #1

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
