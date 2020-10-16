#find max in value
.section .data
  output:
	.asciz "the largest value is %d\n"
  value:
	.int 12,45,67,89,123,4,56,123,56,77
.section .text
.global _start
_start:
	nop
	movl value,%ebx
	movl $1,%edi
loop:
	movl value(,%edi,4),%eax
	cmp %ebx,%eax
	#if %eax>%ebx then put %eax into %ebx
	cmova %eax,%ebx
	inc %edi
	cmp $10,%edi
	jne loop
	push %ebx
	push $output
	call printf
	addl $8,%esp
	push $0
	call exit

