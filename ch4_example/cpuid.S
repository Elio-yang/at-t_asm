.section .data
output:
	.asciz "The processor Vendor ID is '%s' and today is %f\n"
.section .bss
	.lcomm buffer,12
.section .text
.global _start
_start:
	movl $0,%eax  	        #load 0 to eax 
	cpuid			#cpuid instruction
	movl $buffer,%edi
	movl %ebx,(%edi) 	#get information from ebx edx ecx
	movl %edx,4(%edi)
	movl %ecx,8(%edi)
	push $buffer
	push $output
	call printf
	addl $8,%esp
	push $0
	call exit
