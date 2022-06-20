; ModuleID = 'main.c'
source_filename = "main.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx12.0.0"

@__const.main.src = private unnamed_addr constant [50 x i8] c"http://www.tutorialspoint.com\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [50 x i8], align 1
  %3 = alloca [50 x i8], align 1
  store i32 0, i32* %1, align 4
  %4 = bitcast [50 x i8]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %4, i8* align 1 getelementptr inbounds ([50 x i8], [50 x i8]* @__const.main.src, i32 0, i32 0), i64 50, i1 false)
  %5 = bitcast [50 x i8]* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %5, i8 0, i64 50, i1 false)
  %6 = bitcast i8* %5 to [50 x i8]*
  %7 = getelementptr inbounds [50 x i8], [50 x i8]* %6, i32 0, i32 0
  store i8 72, i8* %7, align 1
  %8 = getelementptr inbounds [50 x i8], [50 x i8]* %6, i32 0, i32 1
  store i8 101, i8* %8, align 1
  %9 = getelementptr inbounds [50 x i8], [50 x i8]* %6, i32 0, i32 2
  store i8 108, i8* %9, align 1
  %10 = getelementptr inbounds [50 x i8], [50 x i8]* %6, i32 0, i32 3
  store i8 108, i8* %10, align 1
  %11 = getelementptr inbounds [50 x i8], [50 x i8]* %6, i32 0, i32 4
  store i8 111, i8* %11, align 1
  %12 = getelementptr inbounds [50 x i8], [50 x i8]* %3, i64 0, i64 0
  %13 = getelementptr inbounds [50 x i8], [50 x i8]* %2, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %12, i8* align 1 %13, i64 29, i1 false)
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+v8.5a,+zcm,+zcz" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }

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
