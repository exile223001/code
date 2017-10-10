	.file	"testprog.c"
	.section	.rodata
.LC0:
	.string	"In main() program:"
	.align 8
.LC1:
	.string	"x value is %d and is stored at address %p.\n"
	.align 8
.LC2:
	.string	"xptr pointer points to address %p which holds a value of %d.\n"
	.text
.globl main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	$5, -12(%rbp)
	leaq	-12(%rbp), %rax
	movq	%rax, -8(%rbp)
	movl	$.LC0, %edi
	call	puts
	movl	-12(%rbp), %ecx
	movl	$.LC1, %eax
	leaq	-12(%rbp), %rdx
	movl	%ecx, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf
	movq	-8(%rbp), %rax
	movl	(%rax), %edx
	movl	$.LC2, %eax
	movq	-8(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rdx
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	display
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.section	.rodata
.LC3:
	.string	"In display() function:"
	.align 8
.LC4:
	.string	"y value is %d and is stored at address %p.\n"
	.align 8
.LC5:
	.string	"yptr pointer points to address %p which holds a value of %d.\n"
	.text
	.type	display, @function
display:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	movl	$1145258561, -16(%rbp)
	movw	$17989, -12(%rbp)
	movb	$0, -10(%rbp)
	movl	$.LC3, %edi
	call	puts
	movl	-20(%rbp), %ecx
	movl	$.LC4, %eax
	leaq	-20(%rbp), %rdx
	movl	%ecx, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf
	movq	-32(%rbp), %rax
	movl	(%rax), %edx
	movl	$.LC5, %eax
	movq	-32(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	display, .-display
	.ident	"GCC: (GNU) 4.4.7 20120313 (Red Hat 4.4.7-18)"
	.section	.note.GNU-stack,"",@progbits
