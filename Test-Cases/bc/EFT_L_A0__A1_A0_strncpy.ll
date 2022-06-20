; ModuleID = 'EFT_L_A0__A1_A0_strncpy.c'
source_filename = "EFT_L_A0__A1_A0_strncpy.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx12.0.0"

@__const.main.src = private unnamed_addr constant [40 x i8] c"This is a long string.\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [40 x i8], align 1
  %3 = alloca [12 x i8], align 1
  %4 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  %5 = bitcast [40 x i8]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %5, i8* align 1 getelementptr inbounds ([40 x i8], [40 x i8]* @__const.main.src, i32 0, i32 0), i64 40, i1 false)
  %6 = getelementptr inbounds [12 x i8], [12 x i8]* %3, i64 0, i64 0
  %7 = getelementptr inbounds [40 x i8], [40 x i8]* %2, i64 0, i64 0
  %8 = call i8* @strncpy(i8* %6, i8* %7, i64 10)
  store i8* %8, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = getelementptr inbounds [12 x i8], [12 x i8]* %3, i64 0, i64 0
  call void @MAYALIAS(i8* %9, i8* %10)
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare i8* @strncpy(i8*, i8*, i64) #2

declare void @MAYALIAS(i8*, i8*) #2

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }

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
