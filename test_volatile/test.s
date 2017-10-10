
test:     file format elf64-x86-64


Disassembly of section .init:

0000000000400378 <_init>:
  400378:	48 83 ec 08          	sub    $0x8,%rsp
  40037c:	e8 6b 00 00 00       	callq  4003ec <call_gmon_start>
  400381:	e8 6a 01 00 00       	callq  4004f0 <frame_dummy>
  400386:	e8 a5 02 00 00       	callq  400630 <__do_global_ctors_aux>
  40038b:	48 83 c4 08          	add    $0x8,%rsp
  40038f:	c3                   	retq   

Disassembly of section .plt:

0000000000400390 <printf@plt-0x10>:
  400390:	ff 35 62 05 20 00    	pushq  0x200562(%rip)        # 6008f8 <_GLOBAL_OFFSET_TABLE_+0x8>
  400396:	ff 25 64 05 20 00    	jmpq   *0x200564(%rip)        # 600900 <_GLOBAL_OFFSET_TABLE_+0x10>
  40039c:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004003a0 <printf@plt>:
  4003a0:	ff 25 62 05 20 00    	jmpq   *0x200562(%rip)        # 600908 <_GLOBAL_OFFSET_TABLE_+0x18>
  4003a6:	68 00 00 00 00       	pushq  $0x0
  4003ab:	e9 e0 ff ff ff       	jmpq   400390 <_init+0x18>

00000000004003b0 <__libc_start_main@plt>:
  4003b0:	ff 25 5a 05 20 00    	jmpq   *0x20055a(%rip)        # 600910 <_GLOBAL_OFFSET_TABLE_+0x20>
  4003b6:	68 01 00 00 00       	pushq  $0x1
  4003bb:	e9 d0 ff ff ff       	jmpq   400390 <_init+0x18>

Disassembly of section .text:

00000000004003c0 <_start>:
  4003c0:	31 ed                	xor    %ebp,%ebp
  4003c2:	49 89 d1             	mov    %rdx,%r9
  4003c5:	5e                   	pop    %rsi
  4003c6:	48 89 e2             	mov    %rsp,%rdx
  4003c9:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  4003cd:	50                   	push   %rax
  4003ce:	54                   	push   %rsp
  4003cf:	49 c7 c0 90 05 40 00 	mov    $0x400590,%r8
  4003d6:	48 c7 c1 a0 05 40 00 	mov    $0x4005a0,%rcx
  4003dd:	48 c7 c7 20 05 40 00 	mov    $0x400520,%rdi
  4003e4:	e8 c7 ff ff ff       	callq  4003b0 <__libc_start_main@plt>
  4003e9:	f4                   	hlt    
  4003ea:	90                   	nop
  4003eb:	90                   	nop

00000000004003ec <call_gmon_start>:
  4003ec:	48 83 ec 08          	sub    $0x8,%rsp
  4003f0:	48 8b 05 f1 04 20 00 	mov    0x2004f1(%rip),%rax        # 6008e8 <_DYNAMIC+0x190>
  4003f7:	48 85 c0             	test   %rax,%rax
  4003fa:	74 02                	je     4003fe <call_gmon_start+0x12>
  4003fc:	ff d0                	callq  *%rax
  4003fe:	48 83 c4 08          	add    $0x8,%rsp
  400402:	c3                   	retq   
  400403:	90                   	nop
  400404:	90                   	nop
  400405:	90                   	nop
  400406:	90                   	nop
  400407:	90                   	nop
  400408:	90                   	nop
  400409:	90                   	nop
  40040a:	90                   	nop
  40040b:	90                   	nop
  40040c:	90                   	nop
  40040d:	90                   	nop
  40040e:	90                   	nop
  40040f:	90                   	nop

0000000000400410 <deregister_tm_clones>:
  400410:	b8 37 09 60 00       	mov    $0x600937,%eax
  400415:	55                   	push   %rbp
  400416:	48 2d 30 09 60 00    	sub    $0x600930,%rax
  40041c:	48 83 f8 0e          	cmp    $0xe,%rax
  400420:	48 89 e5             	mov    %rsp,%rbp
  400423:	77 02                	ja     400427 <deregister_tm_clones+0x17>
  400425:	5d                   	pop    %rbp
  400426:	c3                   	retq   
  400427:	b8 00 00 00 00       	mov    $0x0,%eax
  40042c:	48 85 c0             	test   %rax,%rax
  40042f:	74 f4                	je     400425 <deregister_tm_clones+0x15>
  400431:	5d                   	pop    %rbp
  400432:	bf 30 09 60 00       	mov    $0x600930,%edi
  400437:	ff e0                	jmpq   *%rax
  400439:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000400440 <register_tm_clones>:
  400440:	b8 30 09 60 00       	mov    $0x600930,%eax
  400445:	55                   	push   %rbp
  400446:	48 2d 30 09 60 00    	sub    $0x600930,%rax
  40044c:	48 c1 f8 03          	sar    $0x3,%rax
  400450:	48 89 e5             	mov    %rsp,%rbp
  400453:	48 89 c2             	mov    %rax,%rdx
  400456:	48 c1 ea 3f          	shr    $0x3f,%rdx
  40045a:	48 01 d0             	add    %rdx,%rax
  40045d:	48 d1 f8             	sar    %rax
  400460:	75 02                	jne    400464 <register_tm_clones+0x24>
  400462:	5d                   	pop    %rbp
  400463:	c3                   	retq   
  400464:	ba 00 00 00 00       	mov    $0x0,%edx
  400469:	48 85 d2             	test   %rdx,%rdx
  40046c:	74 f4                	je     400462 <register_tm_clones+0x22>
  40046e:	5d                   	pop    %rbp
  40046f:	48 89 c6             	mov    %rax,%rsi
  400472:	bf 30 09 60 00       	mov    $0x600930,%edi
  400477:	ff e2                	jmpq   *%rdx
  400479:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000400480 <__do_global_dtors_aux>:
  400480:	80 3d a9 04 20 00 00 	cmpb   $0x0,0x2004a9(%rip)        # 600930 <__TMC_END__>
  400487:	75 5f                	jne    4004e8 <__do_global_dtors_aux+0x68>
  400489:	55                   	push   %rbp
  40048a:	48 89 e5             	mov    %rsp,%rbp
  40048d:	53                   	push   %rbx
  40048e:	bb 48 07 60 00       	mov    $0x600748,%ebx
  400493:	48 81 eb 40 07 60 00 	sub    $0x600740,%rbx
  40049a:	48 83 ec 08          	sub    $0x8,%rsp
  40049e:	48 8b 05 93 04 20 00 	mov    0x200493(%rip),%rax        # 600938 <dtor_idx.6305>
  4004a5:	48 c1 fb 03          	sar    $0x3,%rbx
  4004a9:	48 83 eb 01          	sub    $0x1,%rbx
  4004ad:	48 39 d8             	cmp    %rbx,%rax
  4004b0:	73 24                	jae    4004d6 <__do_global_dtors_aux+0x56>
  4004b2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4004b8:	48 83 c0 01          	add    $0x1,%rax
  4004bc:	48 89 05 75 04 20 00 	mov    %rax,0x200475(%rip)        # 600938 <dtor_idx.6305>
  4004c3:	ff 14 c5 40 07 60 00 	callq  *0x600740(,%rax,8)
  4004ca:	48 8b 05 67 04 20 00 	mov    0x200467(%rip),%rax        # 600938 <dtor_idx.6305>
  4004d1:	48 39 d8             	cmp    %rbx,%rax
  4004d4:	72 e2                	jb     4004b8 <__do_global_dtors_aux+0x38>
  4004d6:	e8 35 ff ff ff       	callq  400410 <deregister_tm_clones>
  4004db:	c6 05 4e 04 20 00 01 	movb   $0x1,0x20044e(%rip)        # 600930 <__TMC_END__>
  4004e2:	48 83 c4 08          	add    $0x8,%rsp
  4004e6:	5b                   	pop    %rbx
  4004e7:	5d                   	pop    %rbp
  4004e8:	c3                   	retq   
  4004e9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000004004f0 <frame_dummy>:
  4004f0:	48 83 3d 58 02 20 00 	cmpq   $0x0,0x200258(%rip)        # 600750 <__JCR_END__>
  4004f7:	00 
  4004f8:	74 1e                	je     400518 <frame_dummy+0x28>
  4004fa:	b8 00 00 00 00       	mov    $0x0,%eax
  4004ff:	48 85 c0             	test   %rax,%rax
  400502:	74 14                	je     400518 <frame_dummy+0x28>
  400504:	55                   	push   %rbp
  400505:	bf 50 07 60 00       	mov    $0x600750,%edi
  40050a:	48 89 e5             	mov    %rsp,%rbp
  40050d:	ff d0                	callq  *%rax
  40050f:	5d                   	pop    %rbp
  400510:	e9 2b ff ff ff       	jmpq   400440 <register_tm_clones>
  400515:	0f 1f 00             	nopl   (%rax)
  400518:	e9 23 ff ff ff       	jmpq   400440 <register_tm_clones>
  40051d:	90                   	nop
  40051e:	90                   	nop
  40051f:	90                   	nop

0000000000400520 <main>:
  400520:	48 83 ec 28          	sub    $0x28,%rsp
  400524:	be 0a 00 00 00       	mov    $0xa,%esi
  400529:	bf 7c 06 40 00       	mov    $0x40067c,%edi
  40052e:	31 c0                	xor    %eax,%eax
  400530:	c7 04 24 0a 00 00 00 	movl   $0xa,(%rsp)
  400537:	c7 44 24 10 14 00 00 	movl   $0x14,0x10(%rsp)
  40053e:	00 
  40053f:	e8 5c fe ff ff       	callq  4003a0 <printf@plt>
  400544:	48 89 e6             	mov    %rsp,%rsi
  400547:	bf 84 06 40 00       	mov    $0x400684,%edi
  40054c:	31 c0                	xor    %eax,%eax
  40054e:	e8 4d fe ff ff       	callq  4003a0 <printf@plt>
  400553:	48 8d 74 24 10       	lea    0x10(%rsp),%rsi
  400558:	bf 8a 06 40 00       	mov    $0x40068a,%edi
  40055d:	31 c0                	xor    %eax,%eax
  40055f:	e8 3c fe ff ff       	callq  4003a0 <printf@plt>
  400564:	8b 34 24             	mov    (%rsp),%esi
  400567:	bf 7c 06 40 00       	mov    $0x40067c,%edi
  40056c:	31 c0                	xor    %eax,%eax
  40056e:	c7 44 24 0c 1e 00 00 	movl   $0x1e,0xc(%rsp)
  400575:	00 
  400576:	e8 25 fe ff ff       	callq  4003a0 <printf@plt>
  40057b:	8b 05 a7 03 20 00    	mov    0x2003a7(%rip),%eax        # 600928 <global>
  400581:	48 83 c4 28          	add    $0x28,%rsp
  400585:	c3                   	retq   
  400586:	90                   	nop
  400587:	90                   	nop
  400588:	90                   	nop
  400589:	90                   	nop
  40058a:	90                   	nop
  40058b:	90                   	nop
  40058c:	90                   	nop
  40058d:	90                   	nop
  40058e:	90                   	nop
  40058f:	90                   	nop

0000000000400590 <__libc_csu_fini>:
  400590:	f3 c3                	repz retq 
  400592:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  400599:	1f 84 00 00 00 00 00 

00000000004005a0 <__libc_csu_init>:
  4005a0:	48 89 6c 24 d8       	mov    %rbp,-0x28(%rsp)
  4005a5:	4c 89 64 24 e0       	mov    %r12,-0x20(%rsp)
  4005aa:	48 8d 2d 7b 01 20 00 	lea    0x20017b(%rip),%rbp        # 60072c <__init_array_end>
  4005b1:	4c 8d 25 74 01 20 00 	lea    0x200174(%rip),%r12        # 60072c <__init_array_end>
  4005b8:	4c 89 6c 24 e8       	mov    %r13,-0x18(%rsp)
  4005bd:	4c 89 74 24 f0       	mov    %r14,-0x10(%rsp)
  4005c2:	4c 89 7c 24 f8       	mov    %r15,-0x8(%rsp)
  4005c7:	48 89 5c 24 d0       	mov    %rbx,-0x30(%rsp)
  4005cc:	48 83 ec 38          	sub    $0x38,%rsp
  4005d0:	4c 29 e5             	sub    %r12,%rbp
  4005d3:	41 89 fd             	mov    %edi,%r13d
  4005d6:	49 89 f6             	mov    %rsi,%r14
  4005d9:	48 c1 fd 03          	sar    $0x3,%rbp
  4005dd:	49 89 d7             	mov    %rdx,%r15
  4005e0:	e8 93 fd ff ff       	callq  400378 <_init>
  4005e5:	48 85 ed             	test   %rbp,%rbp
  4005e8:	74 1c                	je     400606 <__libc_csu_init+0x66>
  4005ea:	31 db                	xor    %ebx,%ebx
  4005ec:	0f 1f 40 00          	nopl   0x0(%rax)
  4005f0:	4c 89 fa             	mov    %r15,%rdx
  4005f3:	4c 89 f6             	mov    %r14,%rsi
  4005f6:	44 89 ef             	mov    %r13d,%edi
  4005f9:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  4005fd:	48 83 c3 01          	add    $0x1,%rbx
  400601:	48 39 eb             	cmp    %rbp,%rbx
  400604:	72 ea                	jb     4005f0 <__libc_csu_init+0x50>
  400606:	48 8b 5c 24 08       	mov    0x8(%rsp),%rbx
  40060b:	48 8b 6c 24 10       	mov    0x10(%rsp),%rbp
  400610:	4c 8b 64 24 18       	mov    0x18(%rsp),%r12
  400615:	4c 8b 6c 24 20       	mov    0x20(%rsp),%r13
  40061a:	4c 8b 74 24 28       	mov    0x28(%rsp),%r14
  40061f:	4c 8b 7c 24 30       	mov    0x30(%rsp),%r15
  400624:	48 83 c4 38          	add    $0x38,%rsp
  400628:	c3                   	retq   
  400629:	90                   	nop
  40062a:	90                   	nop
  40062b:	90                   	nop
  40062c:	90                   	nop
  40062d:	90                   	nop
  40062e:	90                   	nop
  40062f:	90                   	nop

0000000000400630 <__do_global_ctors_aux>:
  400630:	55                   	push   %rbp
  400631:	48 89 e5             	mov    %rsp,%rbp
  400634:	53                   	push   %rbx
  400635:	bb 30 07 60 00       	mov    $0x600730,%ebx
  40063a:	48 83 ec 08          	sub    $0x8,%rsp
  40063e:	48 8b 05 eb 00 20 00 	mov    0x2000eb(%rip),%rax        # 600730 <__CTOR_LIST__>
  400645:	48 83 f8 ff          	cmp    $0xffffffffffffffff,%rax
  400649:	74 14                	je     40065f <__do_global_ctors_aux+0x2f>
  40064b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  400650:	48 83 eb 08          	sub    $0x8,%rbx
  400654:	ff d0                	callq  *%rax
  400656:	48 8b 03             	mov    (%rbx),%rax
  400659:	48 83 f8 ff          	cmp    $0xffffffffffffffff,%rax
  40065d:	75 f1                	jne    400650 <__do_global_ctors_aux+0x20>
  40065f:	48 83 c4 08          	add    $0x8,%rsp
  400663:	5b                   	pop    %rbx
  400664:	5d                   	pop    %rbp
  400665:	c3                   	retq   
  400666:	90                   	nop
  400667:	90                   	nop

Disassembly of section .fini:

0000000000400668 <_fini>:
  400668:	48 83 ec 08          	sub    $0x8,%rsp
  40066c:	e8 0f fe ff ff       	callq  400480 <__do_global_dtors_aux>
  400671:	48 83 c4 08          	add    $0x8,%rsp
  400675:	c3                   	retq   
