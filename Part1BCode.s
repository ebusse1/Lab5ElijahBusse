.file   "helloworld.c"
.text
.section .text.startup,"ax",@progbits
.p2align 4
.globl  main
.type   main, @function
main:
.LFB11:
    .cfi_startproc
    .p2align 4,,10
    .p2align 3
.L2:
    jmp .L2
    .cfi_endproc
.LFE11:
    .size   main, .-main
    .globl  string
    .data
    .align  4
    .type   string, @object
    .size   string, 22
string:
    .string "the bear ate the grub"
    .globl  f
    .align  4
    .type   f, @object
    .size   f, 4
f:
    .long   1067320848
    .globl  c
    .type   c, @object
    .size   c, 1
c:
    .byte   97
    .globl  a
    .align  4
    .type   a, @object
    .size   a, 4
a:
    .long   1
    .ident  "GCC: (GNU) 11.5.0 20240719 (Red Hat 11.5.0-5)"
    .section .note.GNU-stack,"",@progbits