	.file	"main.c"
	.text
	.def	__main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
.LC0:
	.ascii "%d\12%d\12%d\12%d\12%d\12\0"
.LC1:
	.ascii "%d\12\0"
	.text
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	call	__main
	movl	$3, -4(%rbp)
	movl	-4(%rbp), %ecx
	leal	1(%rcx), %eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %edx
	leal	1(%rdx), %eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %r9d
	leal	1(%r9), %eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %r8d
	leal	1(%r8), %eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	leal	1(%rax), %r10d
	movl	%r10d, -4(%rbp)
	movl	%ecx, 40(%rsp)
	movl	%edx, 32(%rsp)
	movl	%eax, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rcx
	call	printf
	movl	-4(%rbp), %eax
	movl	%eax, %edx
	leaq	.LC1(%rip), %rax
	movq	%rax, %rcx
	call	printf
	movl	$0, %eax
	addq	$64, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.ident	"GCC: (GNU) 11.3.0"
	.def	printf;	.scl	2;	.type	32;	.endef
