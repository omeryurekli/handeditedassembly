/*
 * Division
 * Does simple division in Assembly
 * Author: Omer Yurekli - yureklio@bc.edu
 */


    .file	"pa4.c"
	.text
	.globl	div_qr
	.type	div_qr, @function
div_qr:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	24(%rbp), %eax
	cltd
	idivl	20(%rbp)
	movl    %edx, 16(%rbp)
	movl	%eax, 28(%rbp)
	#idivl	-8(%rbp)
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	div_qr, .-div_qr
	.section	.rodata
.LC0:
	.string	"> "
.LC1:
	.string	"%d %d"
.LC2:
	.string	"%d / %d = %d, r %d\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB3:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
.L6:
	movl	$.LC0, %edi
	movl	$0, %eax
	call	printf
	leaq	-12(%rbp), %rdx
	leaq	-8(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC1, %edi
	movl	$0, %eax
	call	__isoc99_scanf
	cmpl	$2, %eax
	je	.L4
	jmp	.L8
.L4:
	call	div_qr
	movl	%eax, -4(%rbp)
	movl	-16(%rbp), %esi
	movl	-12(%rbp), %edx
	movl	-8(%rbp), %eax
	movl	-4(%rbp), %ecx
	movl	%esi, %r8d
	movl	%eax, %esi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	printf
	jmp	.L6
.L8:
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	main, .-main
	.ident	"GCC: (GNU) 4.8.5 20150623 (Red Hat 4.8.5-44)"
	.section	.note.GNU-stack,"",@progbits
