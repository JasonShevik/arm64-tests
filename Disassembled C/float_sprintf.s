
float_sprintf:     file format elf64-littleaarch64


Disassembly of section .init:

00000000000005f0 <_init>:
 5f0:	d503201f 	nop
 5f4:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
 5f8:	910003fd 	mov	x29, sp
 5fc:	9400003e 	bl	6f4 <call_weak_fn>
 600:	a8c17bfd 	ldp	x29, x30, [sp], #16
 604:	d65f03c0 	ret

Disassembly of section .plt:

0000000000000610 <.plt>:
 610:	a9bf7bf0 	stp	x16, x30, [sp, #-16]!
 614:	f00000f0 	adrp	x16, 1f000 <__FRAME_END__+0x1e6e0>
 618:	f947fe11 	ldr	x17, [x16, #4088]
 61c:	913fe210 	add	x16, x16, #0xff8
 620:	d61f0220 	br	x17
 624:	d503201f 	nop
 628:	d503201f 	nop
 62c:	d503201f 	nop

0000000000000630 <__libc_start_main@plt>:
 630:	90000110 	adrp	x16, 20000 <__libc_start_main@GLIBC_2.34>
 634:	f9400211 	ldr	x17, [x16]
 638:	91000210 	add	x16, x16, #0x0
 63c:	d61f0220 	br	x17

0000000000000640 <__cxa_finalize@plt>:
 640:	90000110 	adrp	x16, 20000 <__libc_start_main@GLIBC_2.34>
 644:	f9400611 	ldr	x17, [x16, #8]
 648:	91002210 	add	x16, x16, #0x8
 64c:	d61f0220 	br	x17

0000000000000650 <sprintf@plt>:
 650:	90000110 	adrp	x16, 20000 <__libc_start_main@GLIBC_2.34>
 654:	f9400a11 	ldr	x17, [x16, #16]
 658:	91004210 	add	x16, x16, #0x10
 65c:	d61f0220 	br	x17

0000000000000660 <__gmon_start__@plt>:
 660:	90000110 	adrp	x16, 20000 <__libc_start_main@GLIBC_2.34>
 664:	f9400e11 	ldr	x17, [x16, #24]
 668:	91006210 	add	x16, x16, #0x18
 66c:	d61f0220 	br	x17

0000000000000670 <abort@plt>:
 670:	90000110 	adrp	x16, 20000 <__libc_start_main@GLIBC_2.34>
 674:	f9401211 	ldr	x17, [x16, #32]
 678:	91008210 	add	x16, x16, #0x20
 67c:	d61f0220 	br	x17

0000000000000680 <puts@plt>:
 680:	90000110 	adrp	x16, 20000 <__libc_start_main@GLIBC_2.34>
 684:	f9401611 	ldr	x17, [x16, #40]
 688:	9100a210 	add	x16, x16, #0x28
 68c:	d61f0220 	br	x17

Disassembly of section .text:

00000000000006c0 <_start>:
 6c0:	d503201f 	nop
 6c4:	d280001d 	mov	x29, #0x0                   	// #0
 6c8:	d280001e 	mov	x30, #0x0                   	// #0
 6cc:	aa0003e5 	mov	x5, x0
 6d0:	f94003e1 	ldr	x1, [sp]
 6d4:	910023e2 	add	x2, sp, #0x8
 6d8:	910003e6 	mov	x6, sp
 6dc:	f00000e0 	adrp	x0, 1f000 <__FRAME_END__+0x1e6e0>
 6e0:	f947ec00 	ldr	x0, [x0, #4056]
 6e4:	d2800003 	mov	x3, #0x0                   	// #0
 6e8:	d2800004 	mov	x4, #0x0                   	// #0
 6ec:	97ffffd1 	bl	630 <__libc_start_main@plt>
 6f0:	97ffffe0 	bl	670 <abort@plt>

00000000000006f4 <call_weak_fn>:
 6f4:	f00000e0 	adrp	x0, 1f000 <__FRAME_END__+0x1e6e0>
 6f8:	f947e800 	ldr	x0, [x0, #4048]
 6fc:	b4000040 	cbz	x0, 704 <call_weak_fn+0x10>
 700:	17ffffd8 	b	660 <__gmon_start__@plt>
 704:	d65f03c0 	ret
 708:	d503201f 	nop
 70c:	d503201f 	nop

0000000000000710 <deregister_tm_clones>:
 710:	90000100 	adrp	x0, 20000 <__libc_start_main@GLIBC_2.34>
 714:	91010000 	add	x0, x0, #0x40
 718:	90000101 	adrp	x1, 20000 <__libc_start_main@GLIBC_2.34>
 71c:	91010021 	add	x1, x1, #0x40
 720:	eb00003f 	cmp	x1, x0
 724:	540000c0 	b.eq	73c <deregister_tm_clones+0x2c>  // b.none
 728:	f00000e1 	adrp	x1, 1f000 <__FRAME_END__+0x1e6e0>
 72c:	f947e021 	ldr	x1, [x1, #4032]
 730:	b4000061 	cbz	x1, 73c <deregister_tm_clones+0x2c>
 734:	aa0103f0 	mov	x16, x1
 738:	d61f0200 	br	x16
 73c:	d65f03c0 	ret

0000000000000740 <register_tm_clones>:
 740:	90000100 	adrp	x0, 20000 <__libc_start_main@GLIBC_2.34>
 744:	91010000 	add	x0, x0, #0x40
 748:	90000101 	adrp	x1, 20000 <__libc_start_main@GLIBC_2.34>
 74c:	91010021 	add	x1, x1, #0x40
 750:	cb000021 	sub	x1, x1, x0
 754:	d37ffc22 	lsr	x2, x1, #63
 758:	8b810c41 	add	x1, x2, x1, asr #3
 75c:	9341fc21 	asr	x1, x1, #1
 760:	b40000c1 	cbz	x1, 778 <register_tm_clones+0x38>
 764:	f00000e2 	adrp	x2, 1f000 <__FRAME_END__+0x1e6e0>
 768:	f947f042 	ldr	x2, [x2, #4064]
 76c:	b4000062 	cbz	x2, 778 <register_tm_clones+0x38>
 770:	aa0203f0 	mov	x16, x2
 774:	d61f0200 	br	x16
 778:	d65f03c0 	ret
 77c:	d503201f 	nop

0000000000000780 <__do_global_dtors_aux>:
 780:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
 784:	910003fd 	mov	x29, sp
 788:	f9000bf3 	str	x19, [sp, #16]
 78c:	90000113 	adrp	x19, 20000 <__libc_start_main@GLIBC_2.34>
 790:	39410260 	ldrb	w0, [x19, #64]
 794:	35000140 	cbnz	w0, 7bc <__do_global_dtors_aux+0x3c>
 798:	f00000e0 	adrp	x0, 1f000 <__FRAME_END__+0x1e6e0>
 79c:	f947e400 	ldr	x0, [x0, #4040]
 7a0:	b4000080 	cbz	x0, 7b0 <__do_global_dtors_aux+0x30>
 7a4:	90000100 	adrp	x0, 20000 <__libc_start_main@GLIBC_2.34>
 7a8:	f9401c00 	ldr	x0, [x0, #56]
 7ac:	97ffffa5 	bl	640 <__cxa_finalize@plt>
 7b0:	97ffffd8 	bl	710 <deregister_tm_clones>
 7b4:	52800020 	mov	w0, #0x1                   	// #1
 7b8:	39010260 	strb	w0, [x19, #64]
 7bc:	f9400bf3 	ldr	x19, [sp, #16]
 7c0:	a8c27bfd 	ldp	x29, x30, [sp], #32
 7c4:	d65f03c0 	ret
 7c8:	d503201f 	nop
 7cc:	d503201f 	nop

00000000000007d0 <frame_dummy>:
 7d0:	17ffffdc 	b	740 <register_tm_clones>

00000000000007d4 <main>:
 7d4:	a9bd7bfd 	stp	x29, x30, [sp, #-48]!
 7d8:	910003fd 	mov	x29, sp
 7dc:	529eb860 	mov	w0, #0xf5c3                	// #62915
 7e0:	72a80900 	movk	w0, #0x4048, lsl #16
 7e4:	1e270000 	fmov	s0, w0
 7e8:	bd002fe0 	str	s0, [sp, #44]
 7ec:	bd402fe0 	ldr	s0, [sp, #44]
 7f0:	1e22c000 	fcvt	d0, s0
 7f4:	910063e2 	add	x2, sp, #0x18
 7f8:	90000000 	adrp	x0, 0 <__abi_tag-0x278>
 7fc:	9120e001 	add	x1, x0, #0x838
 800:	aa0203e0 	mov	x0, x2
 804:	97ffff93 	bl	650 <sprintf@plt>
 808:	910063e0 	add	x0, sp, #0x18
 80c:	97ffff9d 	bl	680 <puts@plt>
 810:	52800000 	mov	w0, #0x0                   	// #0
 814:	a8c37bfd 	ldp	x29, x30, [sp], #48
 818:	d65f03c0 	ret

Disassembly of section .fini:

000000000000081c <_fini>:
 81c:	d503201f 	nop
 820:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
 824:	910003fd 	mov	x29, sp
 828:	a8c17bfd 	ldp	x29, x30, [sp], #16
 82c:	d65f03c0 	ret
