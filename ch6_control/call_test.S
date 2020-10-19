.section .data
  output:
        .asciz "This is section %d\n"
.section .text
.global _start
_start:
        push $1
        push $output
        call printf
        add $8,%esp
        call overhere
        push $3
        push $output
        call printf
        add $8,%esp
        push $0
        call exit

overhere:
        push %ebp
        movl %esp,%ebp
        push $2
        push $output
        call printf
        add $8,%esp
        movl %ebp,%esp
        pop %ebp
        #pop the value and put into %ebp(recover %ebp)
        ret
