
test:     file format elf64-x86-64


Disassembly of section .init:

0000000000400378 <_init>:
  400378:	48 83 ec 08          	sub    $0x8,%rsp
  40037c:	e8 6b 00 00 00       	callq  4003ec <call_gmon_start>
  400381:	e8 6a 01 00 00       	callq  4004f0 <frame_dummy>
  400386:	e8 d5 02 00 00       	callq  400660 <__do_global_ctors_aux>
  40038b:	48 83 c4 08          	add    $0x8,%rsp
  40038f:	c3                   	retq   

Disassembly of section .plt:

0000000000400390 <printf@plt-0x10>:
  400390:	ff 35 c2 05 20 00    	pushq  0x2005c2(%rip)        # 600958 <_GLOBAL_OFFSET_TABLE_+0x8>
  400396:	ff 25 c4 05 20 00    	jmpq   *0x2005c4(%rip)        # 600960 <_GLOBAL_OFFSET_TABLE_+0x10>
  40039c:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004003a0 <printf@plt>:
  4003a0:	ff 25 c2 05 20 00    	jmpq   *0x2005c2(%rip)        # 600968 <_GLOBAL_OFFSET_TABLE_+0x18>
  4003a6:	68 00 00 00 00       	pushq  $0x0
  4003ab:	e9 e0 ff ff ff       	jmpq   400390 <_init+0x18>

00000000004003b0 <__libc_start_main@plt>:
  4003b0:	ff 25 ba 05 20 00    	jmpq   *0x2005ba(%rip)        # 600970 <_GLOBAL_OFFSET_TABLE_+0x20>
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
  4003cf:	49 c7 c0 c0 05 40 00 	mov    $0x4005c0,%r8
  4003d6:	48 c7 c1 d0 05 40 00 	mov    $0x4005d0,%rcx
  4003dd:	48 c7 c7 a0 05 40 00 	mov    $0x4005a0,%rdi
  4003e4:	e8 c7 ff ff ff       	callq  4003b0 <__libc_start_main@plt>
  4003e9:	f4                   	hlt    
  4003ea:	90                   	nop
  4003eb:	90                   	nop

00000000004003ec <call_gmon_start>:
  4003ec:	48 83 ec 08          	sub    $0x8,%rsp
  4003f0:	48 8b 05 51 05 20 00 	mov    0x200551(%rip),%rax        # 600948 <_DYNAMIC+0x190>
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
  400410:	b8 8f 09 60 00       	mov    $0x60098f,%eax
  400415:	55                   	push   %rbp
  400416:	48 2d 88 09 60 00    	sub    $0x600988,%rax
  40041c:	48 83 f8 0e          	cmp    $0xe,%rax
  400420:	48 89 e5             	mov    %rsp,%rbp
  400423:	77 02                	ja     400427 <deregister_tm_clones+0x17>
  400425:	5d                   	pop    %rbp
  400426:	c3                   	retq   
  400427:	b8 00 00 00 00       	mov    $0x0,%eax
  40042c:	48 85 c0             	test   %rax,%rax
  40042f:	74 f4                	je     400425 <deregister_tm_clones+0x15>
  400431:	5d                   	pop    %rbp
  400432:	bf 88 09 60 00       	mov    $0x600988,%edi
  400437:	ff e0                	jmpq   *%rax
  400439:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000400440 <register_tm_clones>:
  400440:	b8 88 09 60 00       	mov    $0x600988,%eax
  400445:	55                   	push   %rbp
  400446:	48 2d 88 09 60 00    	sub    $0x600988,%rax
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
  400472:	bf 88 09 60 00       	mov    $0x600988,%edi
  400477:	ff e2                	jmpq   *%rdx
  400479:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000400480 <__do_global_dtors_aux>:
  400480:	80 3d 01 05 20 00 00 	cmpb   $0x0,0x200501(%rip)        # 600988 <__bss_start>
  400487:	75 5f                	jne    4004e8 <__do_global_dtors_aux+0x68>
  400489:	55                   	push   %rbp
  40048a:	48 89 e5             	mov    %rsp,%rbp
  40048d:	53                   	push   %rbx
  40048e:	bb a8 07 60 00       	mov    $0x6007a8,%ebx
  400493:	48 81 eb a0 07 60 00 	sub    $0x6007a0,%rbx
  40049a:	48 83 ec 08          	sub    $0x8,%rsp
  40049e:	48 8b 05 eb 04 20 00 	mov    0x2004eb(%rip),%rax        # 600990 <dtor_idx.6305>
  4004a5:	48 c1 fb 03          	sar    $0x3,%rbx
  4004a9:	48 83 eb 01          	sub    $0x1,%rbx
  4004ad:	48 39 d8             	cmp    %rbx,%rax
  4004b0:	73 24                	jae    4004d6 <__do_global_dtors_aux+0x56>
  4004b2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4004b8:	48 83 c0 01          	add    $0x1,%rax
  4004bc:	48 89 05 cd 04 20 00 	mov    %rax,0x2004cd(%rip)        # 600990 <dtor_idx.6305>
  4004c3:	ff 14 c5 a0 07 60 00 	callq  *0x6007a0(,%rax,8)
  4004ca:	48 8b 05 bf 04 20 00 	mov    0x2004bf(%rip),%rax        # 600990 <dtor_idx.6305>
  4004d1:	48 39 d8             	cmp    %rbx,%rax
  4004d4:	72 e2                	jb     4004b8 <__do_global_dtors_aux+0x38>
  4004d6:	e8 35 ff ff ff       	callq  400410 <deregister_tm_clones>
  4004db:	c6 05 a6 04 20 00 01 	movb   $0x1,0x2004a6(%rip)        # 600988 <__bss_start>
  4004e2:	48 83 c4 08          	add    $0x8,%rsp
  4004e6:	5b                   	pop    %rbx
  4004e7:	5d                   	pop    %rbp
  4004e8:	c3                   	retq   
  4004e9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000004004f0 <frame_dummy>:
  4004f0:	48 83 3d b8 02 20 00 	cmpq   $0x0,0x2002b8(%rip)        # 6007b0 <__JCR_END__>
  4004f7:	00 
  4004f8:	74 1e                	je     400518 <frame_dummy+0x28>
  4004fa:	b8 00 00 00 00       	mov    $0x0,%eax
  4004ff:	48 85 c0             	test   %rax,%rax
  400502:	74 14                	je     400518 <frame_dummy+0x28>
  400504:	55                   	push   %rbp
  400505:	bf b0 07 60 00       	mov    $0x6007b0,%edi
  40050a:	48 89 e5             	mov    %rsp,%rbp
  40050d:	ff d0                	callq  *%rax
  40050f:	5d                   	pop    %rbp
  400510:	e9 2b ff ff ff       	jmpq   400440 <register_tm_clones>
  400515:	0f 1f 00             	nopl   (%rax)
  400518:	e9 23 ff ff ff       	jmpq   400440 <register_tm_clones>
  40051d:	90                   	nop
  40051e:	90                   	nop
  40051f:	90                   	nop

0000000000400520 <func>:
  400520:	48 83 ec 18          	sub    $0x18,%rsp
  400524:	31 c0                	xor    %eax,%eax
  400526:	89 34 24             	mov    %esi,(%rsp)
  400529:	48 8d 74 24 0c       	lea    0xc(%rsp),%rsi
  40052e:	89 7c 24 0c          	mov    %edi,0xc(%rsp)
  400532:	bf ac 06 40 00       	mov    $0x4006ac,%edi
  400537:	e8 64 fe ff ff       	callq  4003a0 <printf@plt>
  40053c:	48 89 e6             	mov    %rsp,%rsi
  40053f:	bf ac 06 40 00       	mov    $0x4006ac,%edi
  400544:	31 c0                	xor    %eax,%eax
  400546:	e8 55 fe ff ff       	callq  4003a0 <printf@plt>
  40054b:	8b 04 24             	mov    (%rsp),%eax
  40054e:	03 44 24 0c          	add    0xc(%rsp),%eax
  400552:	48 83 c4 18          	add    $0x18,%rsp
  400556:	c3                   	retq   
  400557:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40055e:	00 00 

0000000000400560 <func_raw>:
  400560:	48 83 ec 18          	sub    $0x18,%rsp
  400564:	31 c0                	xor    %eax,%eax
  400566:	89 74 24 08          	mov    %esi,0x8(%rsp)
  40056a:	48 8d 74 24 0c       	lea    0xc(%rsp),%rsi
  40056f:	89 7c 24 0c          	mov    %edi,0xc(%rsp)
  400573:	bf ac 06 40 00       	mov    $0x4006ac,%edi
  400578:	e8 23 fe ff ff       	callq  4003a0 <printf@plt>
  40057d:	48 8d 74 24 08       	lea    0x8(%rsp),%rsi
  400582:	bf ac 06 40 00       	mov    $0x4006ac,%edi
  400587:	31 c0                	xor    %eax,%eax
  400589:	e8 12 fe ff ff       	callq  4003a0 <printf@plt>
  40058e:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  400592:	03 44 24 08          	add    0x8(%rsp),%eax
  400596:	48 83 c4 18          	add    $0x18,%rsp
  40059a:	c3                   	retq   
  40059b:	90                   	nop
  40059c:	90                   	nop
  40059d:	90                   	nop
  40059e:	90                   	nop
  40059f:	90                   	nop

00000000004005a0 <main>:
  4005a0:	48 83 ec 08          	sub    $0x8,%rsp
  4005a4:	be 03 00 00 00       	mov    $0x3,%esi
  4005a9:	bf 01 00 00 00       	mov    $0x1,%edi
  4005ae:	e8 ad ff ff ff       	callq  400560 <func_raw>
  4005b3:	31 c0                	xor    %eax,%eax
  4005b5:	48 83 c4 08          	add    $0x8,%rsp
  4005b9:	c3                   	retq   
  4005ba:	90                   	nop
  4005bb:	90                   	nop
  4005bc:	90                   	nop
  4005bd:	90                   	nop
  4005be:	90                   	nop
  4005bf:	90                   	nop

00000000004005c0 <__libc_csu_fini>:
  4005c0:	f3 c3                	repz retq 
  4005c2:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  4005c9:	1f 84 00 00 00 00 00 

00000000004005d0 <__libc_csu_init>:
  4005d0:	48 89 6c 24 d8       	mov    %rbp,-0x28(%rsp)
  4005d5:	4c 89 64 24 e0       	mov    %r12,-0x20(%rsp)
  4005da:	48 8d 2d ab 01 20 00 	lea    0x2001ab(%rip),%rbp        # 60078c <__init_array_end>
  4005e1:	4c 8d 25 a4 01 20 00 	lea    0x2001a4(%rip),%r12        # 60078c <__init_array_end>
  4005e8:	4c 89 6c 24 e8       	mov    %r13,-0x18(%rsp)
  4005ed:	4c 89 74 24 f0       	mov    %r14,-0x10(%rsp)
  4005f2:	4c 89 7c 24 f8       	mov    %r15,-0x8(%rsp)
  4005f7:	48 89 5c 24 d0       	mov    %rbx,-0x30(%rsp)
  4005fc:	48 83 ec 38          	sub    $0x38,%rsp
  400600:	4c 29 e5             	sub    %r12,%rbp
  400603:	41 89 fd             	mov    %edi,%r13d
  400606:	49 89 f6             	mov    %rsi,%r14
  400609:	48 c1 fd 03          	sar    $0x3,%rbp
  40060d:	49 89 d7             	mov    %rdx,%r15
  400610:	e8 63 fd ff ff       	callq  400378 <_init>
  400615:	48 85 ed             	test   %rbp,%rbp
  400618:	74 1c                	je     400636 <__libc_csu_init+0x66>
  40061a:	31 db                	xor    %ebx,%ebx
  40061c:	0f 1f 40 00          	nopl   0x0(%rax)
  400620:	4c 89 fa             	mov    %r15,%rdx
  400623:	4c 89 f6             	mov    %r14,%rsi
  400626:	44 89 ef             	mov    %r13d,%edi
  400629:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  40062d:	48 83 c3 01          	add    $0x1,%rbx
  400631:	48 39 eb             	cmp    %rbp,%rbx
  400634:	72 ea                	jb     400620 <__libc_csu_init+0x50>
  400636:	48 8b 5c 24 08       	mov    0x8(%rsp),%rbx
  40063b:	48 8b 6c 24 10       	mov    0x10(%rsp),%rbp
  400640:	4c 8b 64 24 18       	mov    0x18(%rsp),%r12
  400645:	4c 8b 6c 24 20       	mov    0x20(%rsp),%r13
  40064a:	4c 8b 74 24 28       	mov    0x28(%rsp),%r14
  40064f:	4c 8b 7c 24 30       	mov    0x30(%rsp),%r15
  400654:	48 83 c4 38          	add    $0x38,%rsp
  400658:	c3                   	retq   
  400659:	90                   	nop
  40065a:	90                   	nop
  40065b:	90                   	nop
  40065c:	90                   	nop
  40065d:	90                   	nop
  40065e:	90                   	nop
  40065f:	90                   	nop

0000000000400660 <__do_global_ctors_aux>:
  400660:	55                   	push   %rbp
  400661:	48 89 e5             	mov    %rsp,%rbp
  400664:	53                   	push   %rbx
  400665:	bb 90 07 60 00       	mov    $0x600790,%ebx
  40066a:	48 83 ec 08          	sub    $0x8,%rsp
  40066e:	48 8b 05 1b 01 20 00 	mov    0x20011b(%rip),%rax        # 600790 <__CTOR_LIST__>
  400675:	48 83 f8 ff          	cmp    $0xffffffffffffffff,%rax
  400679:	74 14                	je     40068f <__do_global_ctors_aux+0x2f>
  40067b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  400680:	48 83 eb 08          	sub    $0x8,%rbx
  400684:	ff d0                	callq  *%rax
  400686:	48 8b 03             	mov    (%rbx),%rax
  400689:	48 83 f8 ff          	cmp    $0xffffffffffffffff,%rax
  40068d:	75 f1                	jne    400680 <__do_global_ctors_aux+0x20>
  40068f:	48 83 c4 08          	add    $0x8,%rsp
  400693:	5b                   	pop    %rbx
  400694:	5d                   	pop    %rbp
  400695:	c3                   	retq   
  400696:	90                   	nop
  400697:	90                   	nop

Disassembly of section .fini:

0000000000400698 <_fini>:
  400698:	48 83 ec 08          	sub    $0x8,%rsp
  40069c:	e8 df fd ff ff       	callq  400480 <__do_global_dtors_aux>
  4006a1:	48 83 c4 08          	add    $0x8,%rsp
  4006a5:	c3                   	retq   
