	.file	"test.c"
	.globl	value1
	.data
	.align 4
	.type	value1, @object
	.size	value1, 4
value1:
	.long	1
	.globl	value2
	.align 4
	.type	value2, @object
	.size	value2, 4
value2:
	.long	2
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$2, value1(%rip)
	movl	$2, value2(%rip)
	movl	value1(%rip), %edx
	movl	value2(%rip), %eax
	addl	%edx, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (GNU) 4.8.2"
	.section	.note.GNU-stack,"",@progbits
