	.file	"main.c"
	.text
	.p2align 4,,15
.globl main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	movl	$3, %eax
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (GNU) 4.4.7 20120313 (Red Hat 4.4.7-18)"
	.section	.note.GNU-stack,"",@progbits
