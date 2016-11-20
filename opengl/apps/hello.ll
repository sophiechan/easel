; Copied directly from the documentation
; Declare the string constant as a global constant.
@.str = private unnamed_addr constant [13 x i8] c"hello world\0A\00"

; External declaration of the puts function
declare i32 @puts(i8* nocapture) nounwind
declare i32 @draw_default() nounwind

; Definition of main function
define i32 @main() {   ; i32()*
    ; Convert [13 x i8]* to i8  *...
    %cast210 = getelementptr [13 x i8]* @.str, i64 0, i64 0

    ; Call puts function to write out the string to stdout.
    call i32 @puts(i8* %cast210)
    call i32 @draw_default()
    ret i32 0
}

; Named metadata
!1 = metadata !{i32 42}
!foo = !{!1, !1}
