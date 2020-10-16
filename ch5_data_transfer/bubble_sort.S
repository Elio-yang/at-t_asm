#bubble_sort program
.section .data
value:
	.int 105,235,61,315,134,221,53,145,117,5
output:
	.asciz "%d %d %d %d %d %d %d %d %d %d \n"
.section .text
.global _start
_start:
	movl $0,%edi
	movl $value,%esi
	movl $9,%ecx
	movl $9,%ebx
  loop:
	movl (%esi),%eax
	cmp %eax,4(%esi)
	jge skip
	xchg %eax,4(%esi)
	movl %eax,(%esi)
  skip:
	add $4,%esi
	dec %ebx
	jnz loop
	dec %ecx
	jz end
  	movl $value,%esi
	movl %ecx,%ebx
	jmp loop
  end:
  out:
	push value(,%edi,4)
	inc %edi
	cmp $10,%edi
	jne out
	push $output
	call printf
	addl $44,%esp
	push $0
	call exit
	
