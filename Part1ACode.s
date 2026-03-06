.file   "helloworld.c"
.text
.globl  a
.data
.align  4
.type   a, @object
.size   a, 4
a:
    .long   1
.globl  c
.type   c, @object
.size   c, 1
c:
    .byte   97
.globl  f
.align  4
.type   f, @object
.size   f, 4
f:
    .long   1067320848
.globl  string
.align  4
.type   string, @object
.size   string, 22
string:
    .string "the bear ate the grub"
.text
.globl  main
.type   main, @function
main:
.LFB0:
    .cfi_startproc
    pushl   %ebp
    .cfi_def_cfa_offset 8
    .cfi_offset 5, -8
    movl    %esp, %ebp
    .cfi_def_cfa_register 5
    subl    $16, %esp
    movl    $0, -4(%ebp)

.L2:
    movl    a, %eax
    movl    %eax, a
    addl    $1, -4(%ebp)
    jmp     .L2

    .cfi_endproc
.LFE0:
    .size   main, .-main
    .ident  "GCC: (GNU) 11.5.0 20240719 (Red Hat 11.5.0-5)"
    .section .note.GNU-stack,"",@progbits