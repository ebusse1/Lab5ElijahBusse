Numbers:
.long 1
.long 15
.long 4
.long 2
.long 7
.long 9
.long 23
.long 7
.long 3
.long 11

Array_length:
.long 10

main:

    movl $0, %ecx      # i = 0
    movl $0, %edi      # max = 0

.loop:
    cmpl Array_length, %ecx
    jge .done

    cmpl %edi, Numbers(,%ecx,4)
    jge .load

    incl %ecx
    jmp .loop

.load:
    movl Numbers(,%ecx,4), %edi
    incl %ecx
    jmp .loop

.done: