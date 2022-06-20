; ModuleID = 'EFT_A2R_A1_readdir_r.c'
source_filename = "EFT_A2R_A1_readdir_r.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx12.0.0"

%struct.dirent = type {}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.dirent, align 1
  %3 = alloca %struct.dirent*, align 8
  %4 = alloca %struct.dirent, align 1
  %5 = alloca %struct.dirent*, align 8
  %6 = alloca %struct.dirent**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store %struct.dirent* %2, %struct.dirent** %3, align 8
  store %struct.dirent* %4, %struct.dirent** %5, align 8
  store %struct.dirent** %5, %struct.dirent*** %6, align 8
  %9 = load i8*, i8** %7, align 8
  %10 = load %struct.dirent*, %struct.dirent** %3, align 8
  %11 = load %struct.dirent**, %struct.dirent*** %6, align 8
  %12 = call i32 @readdir_r(i8* %9, %struct.dirent* %10, %struct.dirent** %11)
  store i32 %12, i32* %8, align 4
  %13 = load %struct.dirent*, %struct.dirent** %3, align 8
  %14 = bitcast %struct.dirent* %13 to i8*
  %15 = load %struct.dirent*, %struct.dirent** %5, align 8
  %16 = bitcast %struct.dirent* %15 to i8*
  call void @MAYALIAS(i8* %14, i8* %16)
  ret i32 0
}

declare i32 @readdir_r(i8*, %struct.dirent*, %struct.dirent**) #1

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
