
test_eax:     file format elf64-x86-64


Disassembly of section .init:

0000000000400330 <_init>:
  400330:	48 83 ec 08          	sub    $0x8,%rsp
  400334:	e8 63 00 00 00       	callq  40039c <call_gmon_start>
  400339:	e8 62 01 00 00       	callq  4004a0 <frame_dummy>
  40033e:	e8 cd 02 00 00       	callq  400610 <__do_global_ctors_aux>
  400343:	48 83 c4 08          	add    $0x8,%rsp
  400347:	c3                   	retq   

Disassembly of section .plt:

0000000000400348 <__libc_start_main@plt-0x10>:
  400348:	ff 35 aa 05 20 00    	pushq  0x2005aa(%rip)        # 6008f8 <_GLOBAL_OFFSET_TABLE_+0x8>
  40034e:	ff 25 ac 05 20 00    	jmpq   *0x2005ac(%rip)        # 600900 <_GLOBAL_OFFSET_TABLE_+0x10>
  400354:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400358 <__libc_start_main@plt>:
  400358:	ff 25 aa 05 20 00    	jmpq   *0x2005aa(%rip)        # 600908 <_GLOBAL_OFFSET_TABLE_+0x18>
  40035e:	68 00 00 00 00       	pushq  $0x0
  400363:	e9 e0 ff ff ff       	jmpq   400348 <_init+0x18>

Disassembly of section .text:

0000000000400370 <_start>:
  400370:	31 ed                	xor    %ebp,%ebp
  400372:	49 89 d1             	mov    %rdx,%r9
  400375:	5e                   	pop    %rsi
  400376:	48 89 e2             	mov    %rsp,%rdx
  400379:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  40037d:	50                   	push   %rax
  40037e:	54                   	push   %rsp
  40037f:	49 c7 c0 70 05 40 00 	mov    $0x400570,%r8
  400386:	48 c7 c1 80 05 40 00 	mov    $0x400580,%rcx
  40038d:	48 c7 c7 1b 05 40 00 	mov    $0x40051b,%rdi
  400394:	e8 bf ff ff ff       	callq  400358 <__libc_start_main@plt>
  400399:	f4                   	hlt    
  40039a:	90                   	nop
  40039b:	90                   	nop

000000000040039c <call_gmon_start>:
  40039c:	48 83 ec 08          	sub    $0x8,%rsp
  4003a0:	48 8b 05 41 05 20 00 	mov    0x200541(%rip),%rax        # 6008e8 <_DYNAMIC+0x190>
  4003a7:	48 85 c0             	test   %rax,%rax
  4003aa:	74 02                	je     4003ae <call_gmon_start+0x12>
  4003ac:	ff d0                	callq  *%rax
  4003ae:	48 83 c4 08          	add    $0x8,%rsp
  4003b2:	c3                   	retq   
  4003b3:	90                   	nop
  4003b4:	90                   	nop
  4003b5:	90                   	nop
  4003b6:	90                   	nop
  4003b7:	90                   	nop
  4003b8:	90                   	nop
  4003b9:	90                   	nop
  4003ba:	90                   	nop
  4003bb:	90                   	nop
  4003bc:	90                   	nop
  4003bd:	90                   	nop
  4003be:	90                   	nop
  4003bf:	90                   	nop

00000000004003c0 <deregister_tm_clones>:
  4003c0:	b8 27 09 60 00       	mov    $0x600927,%eax
  4003c5:	55                   	push   %rbp
  4003c6:	48 2d 20 09 60 00    	sub    $0x600920,%rax
  4003cc:	48 83 f8 0e          	cmp    $0xe,%rax
  4003d0:	48 89 e5             	mov    %rsp,%rbp
  4003d3:	77 02                	ja     4003d7 <deregister_tm_clones+0x17>
  4003d5:	5d                   	pop    %rbp
  4003d6:	c3                   	retq   
  4003d7:	b8 00 00 00 00       	mov    $0x0,%eax
  4003dc:	48 85 c0             	test   %rax,%rax
  4003df:	74 f4                	je     4003d5 <deregister_tm_clones+0x15>
  4003e1:	5d                   	pop    %rbp
  4003e2:	bf 20 09 60 00       	mov    $0x600920,%edi
  4003e7:	ff e0                	jmpq   *%rax
  4003e9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000004003f0 <register_tm_clones>:
  4003f0:	b8 20 09 60 00       	mov    $0x600920,%eax
  4003f5:	55                   	push   %rbp
  4003f6:	48 2d 20 09 60 00    	sub    $0x600920,%rax
  4003fc:	48 c1 f8 03          	sar    $0x3,%rax
  400400:	48 89 e5             	mov    %rsp,%rbp
  400403:	48 89 c2             	mov    %rax,%rdx
  400406:	48 c1 ea 3f          	shr    $0x3f,%rdx
  40040a:	48 01 d0             	add    %rdx,%rax
  40040d:	48 d1 f8             	sar    %rax
  400410:	75 02                	jne    400414 <register_tm_clones+0x24>
  400412:	5d                   	pop    %rbp
  400413:	c3                   	retq   
  400414:	ba 00 00 00 00       	mov    $0x0,%edx
  400419:	48 85 d2             	test   %rdx,%rdx
  40041c:	74 f4                	je     400412 <register_tm_clones+0x22>
  40041e:	5d                   	pop    %rbp
  40041f:	48 89 c6             	mov    %rax,%rsi
  400422:	bf 20 09 60 00       	mov    $0x600920,%edi
  400427:	ff e2                	jmpq   *%rdx
  400429:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000400430 <__do_global_dtors_aux>:
  400430:	80 3d e9 04 20 00 00 	cmpb   $0x0,0x2004e9(%rip)        # 600920 <__bss_start>
  400437:	75 5f                	jne    400498 <__do_global_dtors_aux+0x68>
  400439:	55                   	push   %rbp
  40043a:	48 89 e5             	mov    %rsp,%rbp
  40043d:	53                   	push   %rbx
  40043e:	bb 48 07 60 00       	mov    $0x600748,%ebx
  400443:	48 81 eb 40 07 60 00 	sub    $0x600740,%rbx
  40044a:	48 83 ec 08          	sub    $0x8,%rsp
  40044e:	48 8b 05 d3 04 20 00 	mov    0x2004d3(%rip),%rax        # 600928 <dtor_idx.6305>
  400455:	48 c1 fb 03          	sar    $0x3,%rbx
  400459:	48 83 eb 01          	sub    $0x1,%rbx
  40045d:	48 39 d8             	cmp    %rbx,%rax
  400460:	73 24                	jae    400486 <__do_global_dtors_aux+0x56>
  400462:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  400468:	48 83 c0 01          	add    $0x1,%rax
  40046c:	48 89 05 b5 04 20 00 	mov    %rax,0x2004b5(%rip)        # 600928 <dtor_idx.6305>
  400473:	ff 14 c5 40 07 60 00 	callq  *0x600740(,%rax,8)
  40047a:	48 8b 05 a7 04 20 00 	mov    0x2004a7(%rip),%rax        # 600928 <dtor_idx.6305>
  400481:	48 39 d8             	cmp    %rbx,%rax
  400484:	72 e2                	jb     400468 <__do_global_dtors_aux+0x38>
  400486:	e8 35 ff ff ff       	callq  4003c0 <deregister_tm_clones>
  40048b:	c6 05 8e 04 20 00 01 	movb   $0x1,0x20048e(%rip)        # 600920 <__bss_start>
  400492:	48 83 c4 08          	add    $0x8,%rsp
  400496:	5b                   	pop    %rbx
  400497:	5d                   	pop    %rbp
  400498:	c3                   	retq   
  400499:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000004004a0 <frame_dummy>:
  4004a0:	48 83 3d a8 02 20 00 	cmpq   $0x0,0x2002a8(%rip)        # 600750 <__JCR_END__>
  4004a7:	00 
  4004a8:	74 1e                	je     4004c8 <frame_dummy+0x28>
  4004aa:	b8 00 00 00 00       	mov    $0x0,%eax
  4004af:	48 85 c0             	test   %rax,%rax
  4004b2:	74 14                	je     4004c8 <frame_dummy+0x28>
  4004b4:	55                   	push   %rbp
  4004b5:	bf 50 07 60 00       	mov    $0x600750,%edi
  4004ba:	48 89 e5             	mov    %rsp,%rbp
  4004bd:	ff d0                	callq  *%rax
  4004bf:	5d                   	pop    %rbp
  4004c0:	e9 2b ff ff ff       	jmpq   4003f0 <register_tm_clones>
  4004c5:	0f 1f 00             	nopl   (%rax)
  4004c8:	e9 23 ff ff ff       	jmpq   4003f0 <register_tm_clones>
  4004cd:	90                   	nop
  4004ce:	90                   	nop
  4004cf:	90                   	nop

00000000004004d0 <func>:
  4004d0:	55                   	push   %rbp
  4004d1:	48 89 e5             	mov    %rsp,%rbp
  4004d4:	89 7d dc             	mov    %edi,-0x24(%rbp)
  4004d7:	89 f0                	mov    %esi,%eax
  4004d9:	f3 0f 11 45 d4       	movss  %xmm0,-0x2c(%rbp)
  4004de:	88 45 d8             	mov    %al,-0x28(%rbp)
  4004e1:	8b 45 dc             	mov    -0x24(%rbp),%eax
  4004e4:	89 45 e0             	mov    %eax,-0x20(%rbp)
  4004e7:	0f b6 45 d8          	movzbl -0x28(%rbp),%eax
  4004eb:	88 45 e4             	mov    %al,-0x1c(%rbp)
  4004ee:	8b 45 d4             	mov    -0x2c(%rbp),%eax
  4004f1:	89 45 e8             	mov    %eax,-0x18(%rbp)
  4004f4:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  4004f8:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  4004fc:	8b 45 e8             	mov    -0x18(%rbp),%eax
  4004ff:	89 45 f8             	mov    %eax,-0x8(%rbp)
  400502:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  400506:	8b 45 f8             	mov    -0x8(%rbp),%eax
  400509:	48 89 d1             	mov    %rdx,%rcx
  40050c:	89 c2                	mov    %eax,%edx
  40050e:	48 89 c8             	mov    %rcx,%rax
  400511:	89 55 bc             	mov    %edx,-0x44(%rbp)
  400514:	f3 0f 10 45 bc       	movss  -0x44(%rbp),%xmm0
  400519:	5d                   	pop    %rbp
  40051a:	c3                   	retq   

000000000040051b <main>:
  40051b:	55                   	push   %rbp
  40051c:	48 89 e5             	mov    %rsp,%rbp
  40051f:	48 83 ec 20          	sub    $0x20,%rsp
  400523:	89 7d ec             	mov    %edi,-0x14(%rbp)
  400526:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
  40052a:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%rbp)
  400531:	c6 45 f4 00          	movb   $0x0,-0xc(%rbp)
  400535:	8b 05 21 01 00 00    	mov    0x121(%rip),%eax        # 40065c <_IO_stdin_used+0x4>
  40053b:	89 45 f8             	mov    %eax,-0x8(%rbp)
  40053e:	f3 0f 10 05 1a 01 00 	movss  0x11a(%rip),%xmm0        # 400660 <_IO_stdin_used+0x8>
  400545:	00 
  400546:	be 61 00 00 00       	mov    $0x61,%esi
  40054b:	bf 01 00 00 00       	mov    $0x1,%edi
  400550:	e8 7b ff ff ff       	callq  4004d0 <func>
  400555:	48 89 c2             	mov    %rax,%rdx
  400558:	f3 0f 11 45 e8       	movss  %xmm0,-0x18(%rbp)
  40055d:	8b 45 e8             	mov    -0x18(%rbp),%eax
  400560:	48 89 55 f0          	mov    %rdx,-0x10(%rbp)
  400564:	89 45 f8             	mov    %eax,-0x8(%rbp)
  400567:	8b 45 f0             	mov    -0x10(%rbp),%eax
  40056a:	c9                   	leaveq 
  40056b:	c3                   	retq   
  40056c:	90                   	nop
  40056d:	90                   	nop
  40056e:	90                   	nop
  40056f:	90                   	nop

0000000000400570 <__libc_csu_fini>:
  400570:	f3 c3                	repz retq 
  400572:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  400579:	1f 84 00 00 00 00 00 

0000000000400580 <__libc_csu_init>:
  400580:	48 89 6c 24 d8       	mov    %rbp,-0x28(%rsp)
  400585:	4c 89 64 24 e0       	mov    %r12,-0x20(%rsp)
  40058a:	48 8d 2d 9b 01 20 00 	lea    0x20019b(%rip),%rbp        # 60072c <__init_array_end>
  400591:	4c 8d 25 94 01 20 00 	lea    0x200194(%rip),%r12        # 60072c <__init_array_end>
  400598:	4c 89 6c 24 e8       	mov    %r13,-0x18(%rsp)
  40059d:	4c 89 74 24 f0       	mov    %r14,-0x10(%rsp)
  4005a2:	4c 89 7c 24 f8       	mov    %r15,-0x8(%rsp)
  4005a7:	48 89 5c 24 d0       	mov    %rbx,-0x30(%rsp)
  4005ac:	48 83 ec 38          	sub    $0x38,%rsp
  4005b0:	4c 29 e5             	sub    %r12,%rbp
  4005b3:	41 89 fd             	mov    %edi,%r13d
  4005b6:	49 89 f6             	mov    %rsi,%r14
  4005b9:	48 c1 fd 03          	sar    $0x3,%rbp
  4005bd:	49 89 d7             	mov    %rdx,%r15
  4005c0:	e8 6b fd ff ff       	callq  400330 <_init>
  4005c5:	48 85 ed             	test   %rbp,%rbp
  4005c8:	74 1c                	je     4005e6 <__libc_csu_init+0x66>
  4005ca:	31 db                	xor    %ebx,%ebx
  4005cc:	0f 1f 40 00          	nopl   0x0(%rax)
  4005d0:	4c 89 fa             	mov    %r15,%rdx
  4005d3:	4c 89 f6             	mov    %r14,%rsi
  4005d6:	44 89 ef             	mov    %r13d,%edi
  4005d9:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  4005dd:	48 83 c3 01          	add    $0x1,%rbx
  4005e1:	48 39 eb             	cmp    %rbp,%rbx
  4005e4:	72 ea                	jb     4005d0 <__libc_csu_init+0x50>
  4005e6:	48 8b 5c 24 08       	mov    0x8(%rsp),%rbx
  4005eb:	48 8b 6c 24 10       	mov    0x10(%rsp),%rbp
  4005f0:	4c 8b 64 24 18       	mov    0x18(%rsp),%r12
  4005f5:	4c 8b 6c 24 20       	mov    0x20(%rsp),%r13
  4005fa:	4c 8b 74 24 28       	mov    0x28(%rsp),%r14
  4005ff:	4c 8b 7c 24 30       	mov    0x30(%rsp),%r15
  400604:	48 83 c4 38          	add    $0x38,%rsp
  400608:	c3                   	retq   
  400609:	90                   	nop
  40060a:	90                   	nop
  40060b:	90                   	nop
  40060c:	90                   	nop
  40060d:	90                   	nop
  40060e:	90                   	nop
  40060f:	90                   	nop

0000000000400610 <__do_global_ctors_aux>:
  400610:	55                   	push   %rbp
  400611:	48 89 e5             	mov    %rsp,%rbp
  400614:	53                   	push   %rbx
  400615:	bb 30 07 60 00       	mov    $0x600730,%ebx
  40061a:	48 83 ec 08          	sub    $0x8,%rsp
  40061e:	48 8b 05 0b 01 20 00 	mov    0x20010b(%rip),%rax        # 600730 <__CTOR_LIST__>
  400625:	48 83 f8 ff          	cmp    $0xffffffffffffffff,%rax
  400629:	74 14                	je     40063f <__do_global_ctors_aux+0x2f>
  40062b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  400630:	48 83 eb 08          	sub    $0x8,%rbx
  400634:	ff d0                	callq  *%rax
  400636:	48 8b 03             	mov    (%rbx),%rax
  400639:	48 83 f8 ff          	cmp    $0xffffffffffffffff,%rax
  40063d:	75 f1                	jne    400630 <__do_global_ctors_aux+0x20>
  40063f:	48 83 c4 08          	add    $0x8,%rsp
  400643:	5b                   	pop    %rbx
  400644:	5d                   	pop    %rbp
  400645:	c3                   	retq   
  400646:	90                   	nop
  400647:	90                   	nop

Disassembly of section .fini:

0000000000400648 <_fini>:
  400648:	48 83 ec 08          	sub    $0x8,%rsp
  40064c:	e8 df fd ff ff       	callq  400430 <__do_global_dtors_aux>
  400651:	48 83 c4 08          	add    $0x8,%rsp
  400655:	c3                   	retq   
