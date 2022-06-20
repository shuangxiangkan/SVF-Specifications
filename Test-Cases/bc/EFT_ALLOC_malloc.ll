; ModuleID = 'EFT_ALLOC_malloc.c'
source_filename = "EFT_ALLOC_malloc.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx12.0.0"

@.str = private unnamed_addr constant [15 x i8] c"tutorialspoint\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c".com\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  %4 = call i8* @malloc(i32 15)
  store i8* %4, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = call i8* @strcpy(i8* %5, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %7 = load i8*, i8** %2, align 8
  %8 = call i8* @realloc(i8* %7, i32 25)
  store i8* %8, i8** %3, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = call i8* @strcat(i8* %9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %11 = load i8*, i8** %2, align 8
  %12 = load i8*, i8** %3, align 8
  call void @NOALIAS(i8* %11, i8* %12)
  %13 = load i8*, i8** %2, align 8
  call void @free(i8* %13)
  %14 = load i8*, i8** %3, align 8
  call void @free(i8* %14)
  ret i32 0
}

declare i8* @malloc(i32) #1

declare i8* @strcpy(i8*, i8*) #1

declare i8* @realloc(i8*, i32) #1

declare i8* @strcat(i8*, i8*) #1

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
