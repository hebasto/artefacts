	.file	"sha256_sse4.cpp"
	.text
	.globl	_ZN11sha256_sse49TransformEPjPKhy
	.def	_ZN11sha256_sse49TransformEPjPKhy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN11sha256_sse49TransformEPjPKhy
_ZN11sha256_sse49TransformEPjPKhy:
.LFB27:
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$144, %rsp
	.seh_stackalloc	144
	movups	%xmm6, 32(%rsp)
	.seh_savexmm	%xmm6, 32
	movups	%xmm7, 48(%rsp)
	.seh_savexmm	%xmm7, 48
	movups	%xmm8, 64(%rsp)
	.seh_savexmm	%xmm8, 64
	movups	%xmm9, 80(%rsp)
	.seh_savexmm	%xmm9, 80
	movups	%xmm10, 96(%rsp)
	.seh_savexmm	%xmm10, 96
	movups	%xmm11, 112(%rsp)
	.seh_savexmm	%xmm11, 112
	movups	%xmm12, 128(%rsp)
	.seh_savexmm	%xmm12, 128
	.seh_endprologue
/APP
 # 43 "crypto/sha256_sse4.cpp" 1
	shl    $0x6,%r8;je     Ldone_hash_24;add    %rdx,%r8;mov    %r8,24(%rsp);mov    (%rcx),%eax;mov    0x4(%rcx),%r9d;mov    0x8(%rcx),%r10d;mov    0xc(%rcx),%r11d;mov    0x10(%rcx),%r8d;mov    0x14(%rcx),%ebx;mov    0x18(%rcx),%esi;mov    0x1c(%rcx),%edi;movdqa _ZZN11sha256_sse49TransformEPjPKhyE9FLIP_MASK(%rip),%xmm12;movdqa _ZZN11sha256_sse49TransformEPjPKhyE9SHUF_00BA(%rip),%xmm10;movdqa _ZZN11sha256_sse49TransformEPjPKhyE9SHUF_DC00(%rip),%xmm11;Lloop0_24:lea    _ZZN11sha256_sse49TransformEPjPKhyE4K256(%rip),%r14;movdqu (%rdx),%xmm4;pshufb %xmm12,%xmm4;movdqu 0x10(%rdx),%xmm5;pshufb %xmm12,%xmm5;movdqu 0x20(%rdx),%xmm6;pshufb %xmm12,%xmm6;movdqu 0x30(%rdx),%xmm7;pshufb %xmm12,%xmm7;mov    %rdx,16(%rsp);mov    $3,%rdx;Lloop1_24:movdqa 0x0(%r14),%xmm9;paddd  %xmm4,%xmm9;movdqa %xmm9,(%rsp);movdqa %xmm7,%xmm0;mov    %r8d,%ebp;ror    $0xe,%ebp;mov    %eax,%r12d;palignr $0x4,%xmm6,%xmm0;ror    $0x9,%r12d;xor    %r8d,%ebp;mov    %ebx,%r13d;ror    $0x5,%ebp;movdqa %xmm5,%xmm1;xor    %eax,%r12d;xor    %esi,%r13d;paddd  %xmm4,%xmm0;xor    %r8d,%ebp;and    %r8d,%r13d;ror    $0xb,%r12d;palignr $0x4,%xmm4,%xmm1;xor    %eax,%r12d;ror    $0x6,%ebp;xor    %esi,%r13d;movdqa %xmm1,%xmm2;ror    $0x2,%r12d;add    %ebp,%r13d;add    (%rsp),%r13d;movdqa %xmm1,%xmm3;mov    %eax,%ebp;add    %r13d,%edi;mov    %eax,%r13d;pslld  $0x19,%xmm1;or     %r10d,%ebp;add    %edi,%r11d;and    %r10d,%r13d;psrld  $0x7,%xmm2;and    %r9d,%ebp;add    %r12d,%edi;por    %xmm2,%xmm1;or     %r13d,%ebp;add    %ebp,%edi;movdqa %xmm3,%xmm2;mov    %r11d,%ebp;mov    %edi,%r12d;movdqa %xmm3,%xmm8;ror    $0xe,%ebp;xor    %r11d,%ebp;mov    %r8d,%r13d;ror    $0x9,%r12d;pslld  $0xe,%xmm3;xor    %edi,%r12d;ror    $0x5,%ebp;xor    %ebx,%r13d;psrld  $0x12,%xmm2;ror    $0xb,%r12d;xor    %r11d,%ebp;and    %r11d,%r13d;ror    $0x6,%ebp;pxor   %xmm3,%xmm1;xor    %edi,%r12d;xor    %ebx,%r13d;psrld  $0x3,%xmm8;add    %ebp,%r13d;add    4+(%rsp),%r13d;ror    $0x2,%r12d;pxor   %xmm2,%xmm1;mov    %edi,%ebp;add    %r13d,%esi;mov    %edi,%r13d;pxor   %xmm8,%xmm1;or     %r9d,%ebp;add    %esi,%r10d;and    %r9d,%r13d;pshufd $0xfa,%xmm7,%xmm2;and    %eax,%ebp;add    %r12d,%esi;paddd  %xmm1,%xmm0;or     %r13d,%ebp;add    %ebp,%esi;movdqa %xmm2,%xmm3;mov    %r10d,%ebp;mov    %esi,%r12d;ror    $0xe,%ebp;movdqa %xmm2,%xmm8;xor    %r10d,%ebp;ror    $0x9,%r12d;mov    %r11d,%r13d;xor    %esi,%r12d;ror    $0x5,%ebp;psrlq  $0x11,%xmm2;xor    %r8d,%r13d;psrlq  $0x13,%xmm3;xor    %r10d,%ebp;and    %r10d,%r13d;psrld  $0xa,%xmm8;ror    $0xb,%r12d;xor    %esi,%r12d;xor    %r8d,%r13d;ror    $0x6,%ebp;pxor   %xmm3,%xmm2;add    %ebp,%r13d;ror    $0x2,%r12d;add    8+(%rsp),%r13d;pxor   %xmm2,%xmm8;mov    %esi,%ebp;add    %r13d,%ebx;mov    %esi,%r13d;pshufb %xmm10,%xmm8;or     %eax,%ebp;add    %ebx,%r9d;and    %eax,%r13d;paddd  %xmm8,%xmm0;and    %edi,%ebp;add    %r12d,%ebx;pshufd $0x50,%xmm0,%xmm2;or     %r13d,%ebp;add    %ebp,%ebx;movdqa %xmm2,%xmm3;mov    %r9d,%ebp;ror    $0xe,%ebp;mov    %ebx,%r12d;movdqa %xmm2,%xmm4;ror    $0x9,%r12d;xor    %r9d,%ebp;mov    %r10d,%r13d;ror    $0x5,%ebp;psrlq  $0x11,%xmm2;xor    %ebx,%r12d;xor    %r11d,%r13d;psrlq  $0x13,%xmm3;xor    %r9d,%ebp;and    %r9d,%r13d;ror    $0xb,%r12d;psrld  $0xa,%xmm4;xor    %ebx,%r12d;ror    $0x6,%ebp;xor    %r11d,%r13d;pxor   %xmm3,%xmm2;ror    $0x2,%r12d;add    %ebp,%r13d;add    12+(%rsp),%r13d;pxor   %xmm2,%xmm4;mov    %ebx,%ebp;add    %r13d,%r8d;mov    %ebx,%r13d;pshufb %xmm11,%xmm4;or     %edi,%ebp;add    %r8d,%eax;and    %edi,%r13d;paddd  %xmm0,%xmm4;and    %esi,%ebp;add    %r12d,%r8d;or     %r13d,%ebp;add    %ebp,%r8d;movdqa 0x10(%r14),%xmm9;paddd  %xmm5,%xmm9;movdqa %xmm9,(%rsp);movdqa %xmm4,%xmm0;mov    %eax,%ebp;ror    $0xe,%ebp;mov    %r8d,%r12d;palignr $0x4,%xmm7,%xmm0;ror    $0x9,%r12d;xor    %eax,%ebp;mov    %r9d,%r13d;ror    $0x5,%ebp;movdqa %xmm6,%xmm1;xor    %r8d,%r12d;xor    %r10d,%r13d;paddd  %xmm5,%xmm0;xor    %eax,%ebp;and    %eax,%r13d;ror    $0xb,%r12d;palignr $0x4,%xmm5,%xmm1;xor    %r8d,%r12d;ror    $0x6,%ebp;xor    %r10d,%r13d;movdqa %xmm1,%xmm2;ror    $0x2,%r12d;add    %ebp,%r13d;add    (%rsp),%r13d;movdqa %xmm1,%xmm3;mov    %r8d,%ebp;add    %r13d,%r11d;mov    %r8d,%r13d;pslld  $0x19,%xmm1;or     %esi,%ebp;add    %r11d,%edi;and    %esi,%r13d;psrld  $0x7,%xmm2;and    %ebx,%ebp;add    %r12d,%r11d;por    %xmm2,%xmm1;or     %r13d,%ebp;add    %ebp,%r11d;movdqa %xmm3,%xmm2;mov    %edi,%ebp;mov    %r11d,%r12d;movdqa %xmm3,%xmm8;ror    $0xe,%ebp;xor    %edi,%ebp;mov    %eax,%r13d;ror    $0x9,%r12d;pslld  $0xe,%xmm3;xor    %r11d,%r12d;ror    $0x5,%ebp;xor    %r9d,%r13d;psrld  $0x12,%xmm2;ror    $0xb,%r12d;xor    %edi,%ebp;and    %edi,%r13d;ror    $0x6,%ebp;pxor   %xmm3,%xmm1;xor    %r11d,%r12d;xor    %r9d,%r13d;psrld  $0x3,%xmm8;add    %ebp,%r13d;add    4+(%rsp),%r13d;ror    $0x2,%r12d;pxor   %xmm2,%xmm1;mov    %r11d,%ebp;add    %r13d,%r10d;mov    %r11d,%r13d;pxor   %xmm8,%xmm1;or     %ebx,%ebp;add    %r10d,%esi;and    %ebx,%r13d;pshufd $0xfa,%xmm4,%xmm2;and    %r8d,%ebp;add    %r12d,%r10d;paddd  %xmm1,%xmm0;or     %r13d,%ebp;add    %ebp,%r10d;movdqa %xmm2,%xmm3;mov    %esi,%ebp;mov    %r10d,%r12d;ror    $0xe,%ebp;movdqa %xmm2,%xmm8;xor    %esi,%ebp;ror    $0x9,%r12d;mov    %edi,%r13d;xor    %r10d,%r12d;ror    $0x5,%ebp;psrlq  $0x11,%xmm2;xor    %eax,%r13d;psrlq  $0x13,%xmm3;xor    %esi,%ebp;and    %esi,%r13d;psrld  $0xa,%xmm8;ror    $0xb,%r12d;xor    %r10d,%r12d;xor    %eax,%r13d;ror    $0x6,%ebp;pxor   %xmm3,%xmm2;add    %ebp,%r13d;ror    $0x2,%r12d;add    8+(%rsp),%r13d;pxor   %xmm2,%xmm8;mov    %r10d,%ebp;add    %r13d,%r9d;mov    %r10d,%r13d;pshufb %xmm10,%xmm8;or     %r8d,%ebp;add    %r9d,%ebx;and    %r8d,%r13d;paddd  %xmm8,%xmm0;and    %r11d,%ebp;add    %r12d,%r9d;pshufd $0x50,%xmm0,%xmm2;or     %r13d,%ebp;add    %ebp,%r9d;movdqa %xmm2,%xmm3;mov    %ebx,%ebp;ror    $0xe,%ebp;mov    %r9d,%r12d;movdqa %xmm2,%xmm5;ror    $0x9,%r12d;xor    %ebx,%ebp;mov    %esi,%r13d;ror    $0x5,%ebp;psrlq  $0x11,%xmm2;xor    %r9d,%r12d;xor    %edi,%r13d;psrlq  $0x13,%xmm3;xor    %ebx,%ebp;and    %ebx,%r13d;ror    $0xb,%r12d;psrld  $0xa,%xmm5;xor    %r9d,%r12d;ror    $0x6,%ebp;xor    %edi,%r13d;pxor   %xmm3,%xmm2;ror    $0x2,%r12d;add    %ebp,%r13d;add    12+(%rsp),%r13d;pxor   %xmm2,%xmm5;mov    %r9d,%ebp;add    %r13d,%eax;mov    %r9d,%r13d;pshufb %xmm11,%xmm5;or     %r11d,%ebp;add    %eax,%r8d;and    %r11d,%r13d;paddd  %xmm0,%xmm5;and    %r10d,%ebp;add    %r12d,%eax;or     %r13d,%ebp;add    %ebp,%eax;movdqa 0x20(%r14),%xmm9;paddd  %xmm6,%xmm9;movdqa %xmm9,(%rsp);movdqa %xmm5,%xmm0;mov    %r8d,%ebp;ror    $0xe,%ebp;mov    %eax,%r12d;palignr $0x4,%xmm4,%xmm0;ror    $0x9,%r12d;xor    %r8d,%ebp;mov    %ebx,%r13d;ror    $0x5,%ebp;movdqa %xmm7,%xmm1;xor    %eax,%r12d;xor    %esi,%r13d;paddd  %xmm6,%xmm0;xor    %r8d,%ebp;and    %r8d,%r13d;ror    $0xb,%r12d;palignr $0x4,%xmm6,%xmm1;xor    %eax,%r12d;ror    $0x6,%ebp;xor    %esi,%r13d;movdqa %xmm1,%xmm2;ror    $0x2,%r12d;add    %ebp,%r13d;add    (%rsp),%r13d;movdqa %xmm1,%xmm3;mov    %eax,%ebp;add    %r13d,%edi;mov    %eax,%r13d;pslld  $0x19,%xmm1;or     %r10d,%ebp;add    %edi,%r11d;and    %r10d,%r13d;psrld  $0x7,%xmm2;and    %r9d,%ebp;add    %r12d,%edi;por    %xmm2,%xmm1;or     %r13d,%ebp;add    %ebp,%edi;movdqa %xmm3,%xmm2;mov    %r11d,%ebp;mov    %edi,%r12d;movdqa %xmm3,%xmm8;ror    $0xe,%ebp;xor    %r11d,%ebp;mov    %r8d,%r13d;ror    $0x9,%r12d;pslld  $0xe,%xmm3;xor    %edi,%r12d;ror    $0x5,%ebp;xor    %ebx,%r13d;psrld  $0x12,%xmm2;ror    $0xb,%r12d;xor    %r11d,%ebp;and    %r11d,%r13d;ror    $0x6,%ebp;pxor   %xmm3,%xmm1;xor    %edi,%r12d;xor    %ebx,%r13d;psrld  $0x3,%xmm8;add    %ebp,%r13d;add    4+(%rsp),%r13d;ror    $0x2,%r12d;pxor   %xmm2,%xmm1;mov    %edi,%ebp;add    %r13d,%esi;mov    %edi,%r13d;pxor   %xmm8,%xmm1;or     %r9d,%ebp;add    %esi,%r10d;and    %r9d,%r13d;pshufd $0xfa,%xmm5,%xmm2;and    %eax,%ebp;add    %r12d,%esi;paddd  %xmm1,%xmm0;or     %r13d,%ebp;add    %ebp,%esi;movdqa %xmm2,%xmm3;mov    %r10d,%ebp;mov    %esi,%r12d;ror    $0xe,%ebp;movdqa %xmm2,%xmm8;xor    %r10d,%ebp;ror    $0x9,%r12d;mov    %r11d,%r13d;xor    %esi,%r12d;ror    $0x5,%ebp;psrlq  $0x11,%xmm2;xor    %r8d,%r13d;psrlq  $0x13,%xmm3;xor    %r10d,%ebp;and    %r10d,%r13d;psrld  $0xa,%xmm8;ror    $0xb,%r12d;xor    %esi,%r12d;xor    %r8d,%r13d;ror    $0x6,%ebp;pxor   %xmm3,%xmm2;add    %ebp,%r13d;ror    $0x2,%r12d;add    8+(%rsp),%r13d;pxor   %xmm2,%xmm8;mov    %esi,%ebp;add    %r13d,%ebx;mov    %esi,%r13d;pshufb %xmm10,%xmm8;or     %eax,%ebp;add    %ebx,%r9d;and    %eax,%r13d;paddd  %xmm8,%xmm0;and    %edi,%ebp;add    %r12d,%ebx;pshufd $0x50,%xmm0,%xmm2;or     %r13d,%ebp;add    %ebp,%ebx;movdqa %xmm2,%xmm3;mov    %r9d,%ebp;ror    $0xe,%ebp;mov    %ebx,%r12d;movdqa %xmm2,%xmm6;ror    $0x9,%r12d;xor    %r9d,%ebp;mov    %r10d,%r13d;ror    $0x5,%ebp;psrlq  $0x11,%xmm2;xor    %ebx,%r12d;xor    %r11d,%r13d;psrlq  $0x13,%xmm3;xor    %r9d,%ebp;and    %r9d,%r13d;ror    $0xb,%r12d;psrld  $0xa,%xmm6;xor    %ebx,%r12d;ror    $0x6,%ebp;xor    %r11d,%r13d;pxor   %xmm3,%xmm2;ror    $0x2,%r12d;add    %ebp,%r13d;add    12+(%rsp),%r13d;pxor   %xmm2,%xmm6;mov    %ebx,%ebp;add    %r13d,%r8d;mov    %ebx,%r13d;pshufb %xmm11,%xmm6;or     %edi,%ebp;add    %r8d,%eax;and    %edi,%r13d;paddd  %xmm0,%xmm6;and    %esi,%ebp;add    %r12d,%r8d;or     %r13d,%ebp;add    %ebp,%r8d;movdqa 0x30(%r14),%xmm9;paddd  %xmm7,%xmm9;movdqa %xmm9,(%rsp);add    $0x40,%r14;movdqa %xmm6,%xmm0;mov    %eax,%ebp;ror    $0xe,%ebp;mov    %r8d,%r12d;palignr $0x4,%xmm5,%xmm0;ror    $0x9,%r12d;xor    %eax,%ebp;mov    %r9d,%r13d;ror    $0x5,%ebp;movdqa %xmm4,%xmm1;xor    %r8d,%r12d;xor    %r10d,%r13d;paddd  %xmm7,%xmm0;xor    %eax,%ebp;and    %eax,%r13d;ror    $0xb,%r12d;palignr $0x4,%xmm7,%xmm1;xor    %r8d,%r12d;ror    $0x6,%ebp;xor    %r10d,%r13d;movdqa %xmm1,%xmm2;ror    $0x2,%r12d;add    %ebp,%r13d;add    (%rsp),%r13d;movdqa %xmm1,%xmm3;mov    %r8d,%ebp;add    %r13d,%r11d;mov    %r8d,%r13d;pslld  $0x19,%xmm1;or     %esi,%ebp;add    %r11d,%edi;and    %esi,%r13d;psrld  $0x7,%xmm2;and    %ebx,%ebp;add    %r12d,%r11d;por    %xmm2,%xmm1;or     %r13d,%ebp;add    %ebp,%r11d;movdqa %xmm3,%xmm2;mov    %edi,%ebp;mov    %r11d,%r12d;movdqa %xmm3,%xmm8;ror    $0xe,%ebp;xor    %edi,%ebp;mov    %eax,%r13d;ror    $0x9,%r12d;pslld  $0xe,%xmm3;xor    %r11d,%r12d;ror    $0x5,%ebp;xor    %r9d,%r13d;psrld  $0x12,%xmm2;ror    $0xb,%r12d;xor    %edi,%ebp;and    %edi,%r13d;ror    $0x6,%ebp;pxor   %xmm3,%xmm1;xor    %r11d,%r12d;xor    %r9d,%r13d;psrld  $0x3,%xmm8;add    %ebp,%r13d;add    4+(%rsp),%r13d;ror    $0x2,%r12d;pxor   %xmm2,%xmm1;mov    %r11d,%ebp;add    %r13d,%r10d;mov    %r11d,%r13d;pxor   %xmm8,%xmm1;or     %ebx,%ebp;add    %r10d,%esi;and    %ebx,%r13d;pshufd $0xfa,%xmm6,%xmm2;and    %r8d,%ebp;add    %r12d,%r10d;paddd  %xmm1,%xmm0;or     %r13d,%ebp;add    %ebp,%r10d;movdqa %xmm2,%xmm3;mov    %esi,%ebp;mov    %r10d,%r12d;ror    $0xe,%ebp;movdqa %xmm2,%xmm8;xor    %esi,%ebp;ror    $0x9,%r12d;mov    %edi,%r13d;xor    %r10d,%r12d;ror    $0x5,%ebp;psrlq  $0x11,%xmm2;xor    %eax,%r13d;psrlq  $0x13,%xmm3;xor    %esi,%ebp;and    %esi,%r13d;psrld  $0xa,%xmm8;ror    $0xb,%r12d;xor    %r10d,%r12d;xor    %eax,%r13d;ror    $0x6,%ebp;pxor   %xmm3,%xmm2;add    %ebp,%r13d;ror    $0x2,%r12d;add    8+(%rsp),%r13d;pxor   %xmm2,%xmm8;mov    %r10d,%ebp;add    %r13d,%r9d;mov    %r10d,%r13d;pshufb %xmm10,%xmm8;or     %r8d,%ebp;add    %r9d,%ebx;and    %r8d,%r13d;paddd  %xmm8,%xmm0;and    %r11d,%ebp;add    %r12d,%r9d;pshufd $0x50,%xmm0,%xmm2;or     %r13d,%ebp;add    %ebp,%r9d;movdqa %xmm2,%xmm3;mov    %ebx,%ebp;ror    $0xe,%ebp;mov    %r9d,%r12d;movdqa %xmm2,%xmm7;ror    $0x9,%r12d;xor    %ebx,%ebp;mov    %esi,%r13d;ror    $0x5,%ebp;psrlq  $0x11,%xmm2;xor    %r9d,%r12d;xor    %edi,%r13d;psrlq  $0x13,%xmm3;xor    %ebx,%ebp;and    %ebx,%r13d;ror    $0xb,%r12d;psrld  $0xa,%xmm7;xor    %r9d,%r12d;ror    $0x6,%ebp;xor    %edi,%r13d;pxor   %xmm3,%xmm2;ror    $0x2,%r12d;add    %ebp,%r13d;add    12+(%rsp),%r13d;pxor   %xmm2,%xmm7;mov    %r9d,%ebp;add    %r13d,%eax;mov    %r9d,%r13d;pshufb %xmm11,%xmm7;or     %r11d,%ebp;add    %eax,%r8d;and    %r11d,%r13d;paddd  %xmm0,%xmm7;and    %r10d,%ebp;add    %r12d,%eax;or     %r13d,%ebp;add    %ebp,%eax;sub    $0x1,%rdx;jne    Lloop1_24;mov    $0x2,%rdx;Lloop2_24:paddd  0x0(%r14),%xmm4;movdqa %xmm4,(%rsp);mov    %r8d,%ebp;ror    $0xe,%ebp;mov    %eax,%r12d;xor    %r8d,%ebp;ror    $0x9,%r12d;mov    %ebx,%r13d;xor    %eax,%r12d;ror    $0x5,%ebp;xor    %esi,%r13d;xor    %r8d,%ebp;ror    $0xb,%r12d;and    %r8d,%r13d;xor    %eax,%r12d;ror    $0x6,%ebp;xor    %esi,%r13d;add    %ebp,%r13d;ror    $0x2,%r12d;add    (%rsp),%r13d;mov    %eax,%ebp;add    %r13d,%edi;mov    %eax,%r13d;or     %r10d,%ebp;add    %edi,%r11d;and    %r10d,%r13d;and    %r9d,%ebp;add    %r12d,%edi;or     %r13d,%ebp;add    %ebp,%edi;mov    %r11d,%ebp;ror    $0xe,%ebp;mov    %edi,%r12d;xor    %r11d,%ebp;ror    $0x9,%r12d;mov    %r8d,%r13d;xor    %edi,%r12d;ror    $0x5,%ebp;xor    %ebx,%r13d;xor    %r11d,%ebp;ror    $0xb,%r12d;and    %r11d,%r13d;xor    %edi,%r12d;ror    $0x6,%ebp;xor    %ebx,%r13d;add    %ebp,%r13d;ror    $0x2,%r12d;add    4+(%rsp),%r13d;mov    %edi,%ebp;add    %r13d,%esi;mov    %edi,%r13d;or     %r9d,%ebp;add    %esi,%r10d;and    %r9d,%r13d;and    %eax,%ebp;add    %r12d,%esi;or     %r13d,%ebp;add    %ebp,%esi;mov    %r10d,%ebp;ror    $0xe,%ebp;mov    %esi,%r12d;xor    %r10d,%ebp;ror    $0x9,%r12d;mov    %r11d,%r13d;xor    %esi,%r12d;ror    $0x5,%ebp;xor    %r8d,%r13d;xor    %r10d,%ebp;ror    $0xb,%r12d;and    %r10d,%r13d;xor    %esi,%r12d;ror    $0x6,%ebp;xor    %r8d,%r13d;add    %ebp,%r13d;ror    $0x2,%r12d;add    8+(%rsp),%r13d;mov    %esi,%ebp;add    %r13d,%ebx;mov    %esi,%r13d;or     %eax,%ebp;add    %ebx,%r9d;and    %eax,%r13d;and    %edi,%ebp;add    %r12d,%ebx;or     %r13d,%ebp;add    %ebp,%ebx;mov    %r9d,%ebp;ror    $0xe,%ebp;mov    %ebx,%r12d;xor    %r9d,%ebp;ror    $0x9,%r12d;mov    %r10d,%r13d;xor    %ebx,%r12d;ror    $0x5,%ebp;xor    %r11d,%r13d;xor    %r9d,%ebp;ror    $0xb,%r12d;and    %r9d,%r13d;xor    %ebx,%r12d;ror    $0x6,%ebp;xor    %r11d,%r13d;add    %ebp,%r13d;ror    $0x2,%r12d;add    12+(%rsp),%r13d;mov    %ebx,%ebp;add    %r13d,%r8d;mov    %ebx,%r13d;or     %edi,%ebp;add    %r8d,%eax;and    %edi,%r13d;and    %esi,%ebp;add    %r12d,%r8d;or     %r13d,%ebp;add    %ebp,%r8d;paddd  0x10(%r14),%xmm5;movdqa %xmm5,(%rsp);add    $0x20,%r14;mov    %eax,%ebp;ror    $0xe,%ebp;mov    %r8d,%r12d;xor    %eax,%ebp;ror    $0x9,%r12d;mov    %r9d,%r13d;xor    %r8d,%r12d;ror    $0x5,%ebp;xor    %r10d,%r13d;xor    %eax,%ebp;ror    $0xb,%r12d;and    %eax,%r13d;xor    %r8d,%r12d;ror    $0x6,%ebp;xor    %r10d,%r13d;add    %ebp,%r13d;ror    $0x2,%r12d;add    (%rsp),%r13d;mov    %r8d,%ebp;add    %r13d,%r11d;mov    %r8d,%r13d;or     %esi,%ebp;add    %r11d,%edi;and    %esi,%r13d;and    %ebx,%ebp;add    %r12d,%r11d;or     %r13d,%ebp;add    %ebp,%r11d;mov    %edi,%ebp;ror    $0xe,%ebp;mov    %r11d,%r12d;xor    %edi,%ebp;ror    $0x9,%r12d;mov    %eax,%r13d;xor    %r11d,%r12d;ror    $0x5,%ebp;xor    %r9d,%r13d;xor    %edi,%ebp;ror    $0xb,%r12d;and    %edi,%r13d;xor    %r11d,%r12d;ror    $0x6,%ebp;xor    %r9d,%r13d;add    %ebp,%r13d;ror    $0x2,%r12d;add    4+(%rsp),%r13d;mov    %r11d,%ebp;add    %r13d,%r10d;mov    %r11d,%r13d;or     %ebx,%ebp;add    %r10d,%esi;and    %ebx,%r13d;and    %r8d,%ebp;add    %r12d,%r10d;or     %r13d,%ebp;add    %ebp,%r10d;mov    %esi,%ebp;ror    $0xe,%ebp;mov    %r10d,%r12d;xor    %esi,%ebp;ror    $0x9,%r12d;mov    %edi,%r13d;xor    %r10d,%r12d;ror    $0x5,%ebp;xor    %eax,%r13d;xor    %esi,%ebp;ror    $0xb,%r12d;and    %esi,%r13d;xor    %r10d,%r12d;ror    $0x6,%ebp;xor    %eax,%r13d;add    %ebp,%r13d;ror    $0x2,%r12d;add    8+(%rsp),%r13d;mov    %r10d,%ebp;add    %r13d,%r9d;mov    %r10d,%r13d;or     %r8d,%ebp;add    %r9d,%ebx;and    %r8d,%r13d;and    %r11d,%ebp;add    %r12d,%r9d;or     %r13d,%ebp;add    %ebp,%r9d;mov    %ebx,%ebp;ror    $0xe,%ebp;mov    %r9d,%r12d;xor    %ebx,%ebp;ror    $0x9,%r12d;mov    %esi,%r13d;xor    %r9d,%r12d;ror    $0x5,%ebp;xor    %edi,%r13d;xor    %ebx,%ebp;ror    $0xb,%r12d;and    %ebx,%r13d;xor    %r9d,%r12d;ror    $0x6,%ebp;xor    %edi,%r13d;add    %ebp,%r13d;ror    $0x2,%r12d;add    12+(%rsp),%r13d;mov    %r9d,%ebp;add    %r13d,%eax;mov    %r9d,%r13d;or     %r11d,%ebp;add    %eax,%r8d;and    %r11d,%r13d;and    %r10d,%ebp;add    %r12d,%eax;or     %r13d,%ebp;add    %ebp,%eax;movdqa %xmm6,%xmm4;movdqa %xmm7,%xmm5;sub    $0x1,%rdx;jne    Lloop2_24;add    (%rcx),%eax;mov    %eax,(%rcx);add    0x4(%rcx),%r9d;mov    %r9d,0x4(%rcx);add    0x8(%rcx),%r10d;mov    %r10d,0x8(%rcx);add    0xc(%rcx),%r11d;mov    %r11d,0xc(%rcx);add    0x10(%rcx),%r8d;mov    %r8d,0x10(%rcx);add    0x14(%rcx),%ebx;mov    %ebx,0x14(%rcx);add    0x18(%rcx),%esi;mov    %esi,0x18(%rcx);add    0x1c(%rcx),%edi;mov    %edi,0x1c(%rcx);mov    16(%rsp),%rdx;add    $0x40,%rdx;cmp    24(%rsp),%rdx;jne    Lloop0_24;Ldone_hash_24:
 # 0 "" 2
/NO_APP
	movups	32(%rsp), %xmm6
	movups	48(%rsp), %xmm7
	movups	64(%rsp), %xmm8
	movups	80(%rsp), %xmm9
	movups	96(%rsp), %xmm10
	movups	112(%rsp), %xmm11
	movups	128(%rsp), %xmm12
	addq	$144, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 16
_ZZN11sha256_sse49TransformEPjPKhyE9SHUF_DC00:
	.long	-1
	.long	-1
	.long	50462976
	.long	185207048
	.align 16
_ZZN11sha256_sse49TransformEPjPKhyE9SHUF_00BA:
	.long	50462976
	.long	185207048
	.long	-1
	.long	-1
	.align 16
_ZZN11sha256_sse49TransformEPjPKhyE9FLIP_MASK:
	.long	66051
	.long	67438087
	.long	134810123
	.long	202182159
	.align 16
_ZZN11sha256_sse49TransformEPjPKhyE4K256:
	.long	1116352408
	.long	1899447441
	.long	-1245643825
	.long	-373957723
	.long	961987163
	.long	1508970993
	.long	-1841331548
	.long	-1424204075
	.long	-670586216
	.long	310598401
	.long	607225278
	.long	1426881987
	.long	1925078388
	.long	-2132889090
	.long	-1680079193
	.long	-1046744716
	.long	-459576895
	.long	-272742522
	.long	264347078
	.long	604807628
	.long	770255983
	.long	1249150122
	.long	1555081692
	.long	1996064986
	.long	-1740746414
	.long	-1473132947
	.long	-1341970488
	.long	-1084653625
	.long	-958395405
	.long	-710438585
	.long	113926993
	.long	338241895
	.long	666307205
	.long	773529912
	.long	1294757372
	.long	1396182291
	.long	1695183700
	.long	1986661051
	.long	-2117940946
	.long	-1838011259
	.long	-1564481375
	.long	-1474664885
	.long	-1035236496
	.long	-949202525
	.long	-778901479
	.long	-694614492
	.long	-200395387
	.long	275423344
	.long	430227734
	.long	506948616
	.long	659060556
	.long	883997877
	.long	958139571
	.long	1322822218
	.long	1537002063
	.long	1747873779
	.long	1955562222
	.long	2024104815
	.long	-2067236844
	.long	-1933114872
	.long	-1866530822
	.long	-1538233109
	.long	-1090935817
	.long	-965641998
	.ident	"GCC: (GNU) 10-posix 20220113"
