
qsort.out:     file format elf64-x86-64


Disassembly of section .init:

0000000000000ab8 <_init>:
 ab8:	48 83 ec 08          	sub    $0x8,%rsp
 abc:	48 8b 05 25 25 20 00 	mov    0x202525(%rip),%rax        # 202fe8 <__gmon_start__>
 ac3:	48 85 c0             	test   %rax,%rax
 ac6:	74 02                	je     aca <_init+0x12>
 ac8:	ff d0                	callq  *%rax
 aca:	48 83 c4 08          	add    $0x8,%rsp
 ace:	c3                   	retq   

Disassembly of section .plt:

0000000000000ad0 <.plt>:
 ad0:	ff 35 6a 24 20 00    	pushq  0x20246a(%rip)        # 202f40 <_GLOBAL_OFFSET_TABLE_+0x8>
 ad6:	ff 25 6c 24 20 00    	jmpq   *0x20246c(%rip)        # 202f48 <_GLOBAL_OFFSET_TABLE_+0x10>
 adc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000ae0 <rand@plt>:
 ae0:	ff 25 6a 24 20 00    	jmpq   *0x20246a(%rip)        # 202f50 <rand@GLIBC_2.2.5>
 ae6:	68 00 00 00 00       	pushq  $0x0
 aeb:	e9 e0 ff ff ff       	jmpq   ad0 <.plt>

0000000000000af0 <_ZSt17__throw_bad_allocv@plt>:
 af0:	ff 25 62 24 20 00    	jmpq   *0x202462(%rip)        # 202f58 <_ZSt17__throw_bad_allocv@GLIBCXX_3.4>
 af6:	68 01 00 00 00       	pushq  $0x1
 afb:	e9 d0 ff ff ff       	jmpq   ad0 <.plt>

0000000000000b00 <GOMP_task@plt>:
 b00:	ff 25 5a 24 20 00    	jmpq   *0x20245a(%rip)        # 202f60 <GOMP_task@GOMP_2.0>
 b06:	68 02 00 00 00       	pushq  $0x2
 b0b:	e9 c0 ff ff ff       	jmpq   ad0 <.plt>

0000000000000b10 <__cxa_atexit@plt>:
 b10:	ff 25 52 24 20 00    	jmpq   *0x202452(%rip)        # 202f68 <__cxa_atexit@GLIBC_2.2.5>
 b16:	68 03 00 00 00       	pushq  $0x3
 b1b:	e9 b0 ff ff ff       	jmpq   ad0 <.plt>

0000000000000b20 <time@plt>:
 b20:	ff 25 4a 24 20 00    	jmpq   *0x20244a(%rip)        # 202f70 <time@GLIBC_2.2.5>
 b26:	68 04 00 00 00       	pushq  $0x4
 b2b:	e9 a0 ff ff ff       	jmpq   ad0 <.plt>

0000000000000b30 <_ZdlPv@plt>:
 b30:	ff 25 42 24 20 00    	jmpq   *0x202442(%rip)        # 202f78 <_ZdlPv@GLIBCXX_3.4>
 b36:	68 05 00 00 00       	pushq  $0x5
 b3b:	e9 90 ff ff ff       	jmpq   ad0 <.plt>

0000000000000b40 <srand@plt>:
 b40:	ff 25 3a 24 20 00    	jmpq   *0x20243a(%rip)        # 202f80 <srand@GLIBC_2.2.5>
 b46:	68 06 00 00 00       	pushq  $0x6
 b4b:	e9 80 ff ff ff       	jmpq   ad0 <.plt>

0000000000000b50 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>:
 b50:	ff 25 32 24 20 00    	jmpq   *0x202432(%rip)        # 202f88 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@GLIBCXX_3.4>
 b56:	68 07 00 00 00       	pushq  $0x7
 b5b:	e9 70 ff ff ff       	jmpq   ad0 <.plt>

0000000000000b60 <_Znwm@plt>:
 b60:	ff 25 2a 24 20 00    	jmpq   *0x20242a(%rip)        # 202f90 <_Znwm@GLIBCXX_3.4>
 b66:	68 08 00 00 00       	pushq  $0x8
 b6b:	e9 60 ff ff ff       	jmpq   ad0 <.plt>

0000000000000b70 <_ZNSolsEPFRSoS_E@plt>:
 b70:	ff 25 22 24 20 00    	jmpq   *0x202422(%rip)        # 202f98 <_ZNSolsEPFRSoS_E@GLIBCXX_3.4>
 b76:	68 09 00 00 00       	pushq  $0x9
 b7b:	e9 50 ff ff ff       	jmpq   ad0 <.plt>

0000000000000b80 <__stack_chk_fail@plt>:
 b80:	ff 25 1a 24 20 00    	jmpq   *0x20241a(%rip)        # 202fa0 <__stack_chk_fail@GLIBC_2.4>
 b86:	68 0a 00 00 00       	pushq  $0xa
 b8b:	e9 40 ff ff ff       	jmpq   ad0 <.plt>

0000000000000b90 <GOMP_taskwait@plt>:
 b90:	ff 25 12 24 20 00    	jmpq   *0x202412(%rip)        # 202fa8 <GOMP_taskwait@GOMP_2.0>
 b96:	68 0b 00 00 00       	pushq  $0xb
 b9b:	e9 30 ff ff ff       	jmpq   ad0 <.plt>

0000000000000ba0 <_ZNSt8ios_base4InitC1Ev@plt>:
 ba0:	ff 25 0a 24 20 00    	jmpq   *0x20240a(%rip)        # 202fb0 <_ZNSt8ios_base4InitC1Ev@GLIBCXX_3.4>
 ba6:	68 0c 00 00 00       	pushq  $0xc
 bab:	e9 20 ff ff ff       	jmpq   ad0 <.plt>

0000000000000bb0 <_ZNSolsEi@plt>:
 bb0:	ff 25 02 24 20 00    	jmpq   *0x202402(%rip)        # 202fb8 <_ZNSolsEi@GLIBCXX_3.4>
 bb6:	68 0d 00 00 00       	pushq  $0xd
 bbb:	e9 10 ff ff ff       	jmpq   ad0 <.plt>

0000000000000bc0 <_Unwind_Resume@plt>:
 bc0:	ff 25 fa 23 20 00    	jmpq   *0x2023fa(%rip)        # 202fc0 <_Unwind_Resume@GCC_3.0>
 bc6:	68 0e 00 00 00       	pushq  $0xe
 bcb:	e9 00 ff ff ff       	jmpq   ad0 <.plt>

Disassembly of section .plt.got:

0000000000000bd0 <__cxa_finalize@plt>:
 bd0:	ff 25 f2 23 20 00    	jmpq   *0x2023f2(%rip)        # 202fc8 <__cxa_finalize@GLIBC_2.2.5>
 bd6:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

0000000000000be0 <_start>:
     be0:	31 ed                	xor    %ebp,%ebp
     be2:	49 89 d1             	mov    %rdx,%r9
     be5:	5e                   	pop    %rsi
     be6:	48 89 e2             	mov    %rsp,%rdx
     be9:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
     bed:	50                   	push   %rax
     bee:	54                   	push   %rsp
     bef:	4c 8d 05 fa 0d 00 00 	lea    0xdfa(%rip),%r8        # 19f0 <__libc_csu_fini>
     bf6:	48 8d 0d 83 0d 00 00 	lea    0xd83(%rip),%rcx        # 1980 <__libc_csu_init>
     bfd:	48 8d 3d fb 02 00 00 	lea    0x2fb(%rip),%rdi        # eff <main>
     c04:	ff 15 d6 23 20 00    	callq  *0x2023d6(%rip)        # 202fe0 <__libc_start_main@GLIBC_2.2.5>
     c0a:	f4                   	hlt    
     c0b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000000c10 <deregister_tm_clones>:
     c10:	48 8d 3d 01 24 20 00 	lea    0x202401(%rip),%rdi        # 203018 <__TMC_END__>
     c17:	55                   	push   %rbp
     c18:	48 8d 05 f9 23 20 00 	lea    0x2023f9(%rip),%rax        # 203018 <__TMC_END__>
     c1f:	48 39 f8             	cmp    %rdi,%rax
     c22:	48 89 e5             	mov    %rsp,%rbp
     c25:	74 19                	je     c40 <deregister_tm_clones+0x30>
     c27:	48 8b 05 aa 23 20 00 	mov    0x2023aa(%rip),%rax        # 202fd8 <_ITM_deregisterTMCloneTable>
     c2e:	48 85 c0             	test   %rax,%rax
     c31:	74 0d                	je     c40 <deregister_tm_clones+0x30>
     c33:	5d                   	pop    %rbp
     c34:	ff e0                	jmpq   *%rax
     c36:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
     c3d:	00 00 00 
     c40:	5d                   	pop    %rbp
     c41:	c3                   	retq   
     c42:	0f 1f 40 00          	nopl   0x0(%rax)
     c46:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
     c4d:	00 00 00 

0000000000000c50 <register_tm_clones>:
     c50:	48 8d 3d c1 23 20 00 	lea    0x2023c1(%rip),%rdi        # 203018 <__TMC_END__>
     c57:	48 8d 35 ba 23 20 00 	lea    0x2023ba(%rip),%rsi        # 203018 <__TMC_END__>
     c5e:	55                   	push   %rbp
     c5f:	48 29 fe             	sub    %rdi,%rsi
     c62:	48 89 e5             	mov    %rsp,%rbp
     c65:	48 c1 fe 03          	sar    $0x3,%rsi
     c69:	48 89 f0             	mov    %rsi,%rax
     c6c:	48 c1 e8 3f          	shr    $0x3f,%rax
     c70:	48 01 c6             	add    %rax,%rsi
     c73:	48 d1 fe             	sar    %rsi
     c76:	74 18                	je     c90 <register_tm_clones+0x40>
     c78:	48 8b 05 71 23 20 00 	mov    0x202371(%rip),%rax        # 202ff0 <_ITM_registerTMCloneTable>
     c7f:	48 85 c0             	test   %rax,%rax
     c82:	74 0c                	je     c90 <register_tm_clones+0x40>
     c84:	5d                   	pop    %rbp
     c85:	ff e0                	jmpq   *%rax
     c87:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
     c8e:	00 00 
     c90:	5d                   	pop    %rbp
     c91:	c3                   	retq   
     c92:	0f 1f 40 00          	nopl   0x0(%rax)
     c96:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
     c9d:	00 00 00 

0000000000000ca0 <__do_global_dtors_aux>:
     ca0:	80 3d 89 24 20 00 00 	cmpb   $0x0,0x202489(%rip)        # 203130 <completed.7696>
     ca7:	75 2f                	jne    cd8 <__do_global_dtors_aux+0x38>
     ca9:	48 83 3d 17 23 20 00 	cmpq   $0x0,0x202317(%rip)        # 202fc8 <__cxa_finalize@GLIBC_2.2.5>
     cb0:	00 
     cb1:	55                   	push   %rbp
     cb2:	48 89 e5             	mov    %rsp,%rbp
     cb5:	74 0c                	je     cc3 <__do_global_dtors_aux+0x23>
     cb7:	48 8b 3d 4a 23 20 00 	mov    0x20234a(%rip),%rdi        # 203008 <__dso_handle>
     cbe:	e8 0d ff ff ff       	callq  bd0 <__cxa_finalize@plt>
     cc3:	e8 48 ff ff ff       	callq  c10 <deregister_tm_clones>
     cc8:	c6 05 61 24 20 00 01 	movb   $0x1,0x202461(%rip)        # 203130 <completed.7696>
     ccf:	5d                   	pop    %rbp
     cd0:	c3                   	retq   
     cd1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
     cd8:	f3 c3                	repz retq 
     cda:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000ce0 <frame_dummy>:
     ce0:	55                   	push   %rbp
     ce1:	48 89 e5             	mov    %rsp,%rbp
     ce4:	5d                   	pop    %rbp
     ce5:	e9 66 ff ff ff       	jmpq   c50 <register_tm_clones>

0000000000000cea <_Z9partitionRSt6vectorIiSaIiEEii>:
     cea:	55                   	push   %rbp
     ceb:	48 89 e5             	mov    %rsp,%rbp
     cee:	53                   	push   %rbx
     cef:	48 83 ec 28          	sub    $0x28,%rsp
     cf3:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
     cf7:	89 75 d4             	mov    %esi,-0x2c(%rbp)
     cfa:	89 55 d0             	mov    %edx,-0x30(%rbp)
     cfd:	8b 45 d0             	mov    -0x30(%rbp),%eax
     d00:	48 63 d0             	movslq %eax,%rdx
     d03:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
     d07:	48 89 d6             	mov    %rdx,%rsi
     d0a:	48 89 c7             	mov    %rax,%rdi
     d0d:	e8 38 05 00 00       	callq  124a <_ZNSt6vectorIiSaIiEEixEm>
     d12:	8b 00                	mov    (%rax),%eax
     d14:	89 45 e8             	mov    %eax,-0x18(%rbp)
     d17:	8b 45 d0             	mov    -0x30(%rbp),%eax
     d1a:	89 45 e0             	mov    %eax,-0x20(%rbp)
     d1d:	8b 45 d4             	mov    -0x2c(%rbp),%eax
     d20:	89 45 e4             	mov    %eax,-0x1c(%rbp)
     d23:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%rbp)
     d2a:	8b 45 e4             	mov    -0x1c(%rbp),%eax
     d2d:	3b 45 e0             	cmp    -0x20(%rbp),%eax
     d30:	0f 8d f4 00 00 00    	jge    e2a <_Z9partitionRSt6vectorIiSaIiEEii+0x140>
     d36:	8b 45 e4             	mov    -0x1c(%rbp),%eax
     d39:	48 63 d0             	movslq %eax,%rdx
     d3c:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
     d40:	48 89 d6             	mov    %rdx,%rsi
     d43:	48 89 c7             	mov    %rax,%rdi
     d46:	e8 ff 04 00 00       	callq  124a <_ZNSt6vectorIiSaIiEEixEm>
     d4b:	8b 00                	mov    (%rax),%eax
     d4d:	39 45 e8             	cmp    %eax,-0x18(%rbp)
     d50:	7e 0f                	jle    d61 <_Z9partitionRSt6vectorIiSaIiEEii+0x77>
     d52:	8b 45 e4             	mov    -0x1c(%rbp),%eax
     d55:	3b 45 e0             	cmp    -0x20(%rbp),%eax
     d58:	7d 07                	jge    d61 <_Z9partitionRSt6vectorIiSaIiEEii+0x77>
     d5a:	b8 01 00 00 00       	mov    $0x1,%eax
     d5f:	eb 05                	jmp    d66 <_Z9partitionRSt6vectorIiSaIiEEii+0x7c>
     d61:	b8 00 00 00 00       	mov    $0x0,%eax
     d66:	84 c0                	test   %al,%al
     d68:	74 06                	je     d70 <_Z9partitionRSt6vectorIiSaIiEEii+0x86>
     d6a:	83 45 e4 01          	addl   $0x1,-0x1c(%rbp)
     d6e:	eb c6                	jmp    d36 <_Z9partitionRSt6vectorIiSaIiEEii+0x4c>
     d70:	8b 45 e0             	mov    -0x20(%rbp),%eax
     d73:	48 63 d0             	movslq %eax,%rdx
     d76:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
     d7a:	48 89 d6             	mov    %rdx,%rsi
     d7d:	48 89 c7             	mov    %rax,%rdi
     d80:	e8 c5 04 00 00       	callq  124a <_ZNSt6vectorIiSaIiEEixEm>
     d85:	8b 00                	mov    (%rax),%eax
     d87:	39 45 e8             	cmp    %eax,-0x18(%rbp)
     d8a:	7d 0f                	jge    d9b <_Z9partitionRSt6vectorIiSaIiEEii+0xb1>
     d8c:	8b 45 e4             	mov    -0x1c(%rbp),%eax
     d8f:	3b 45 e0             	cmp    -0x20(%rbp),%eax
     d92:	7d 07                	jge    d9b <_Z9partitionRSt6vectorIiSaIiEEii+0xb1>
     d94:	b8 01 00 00 00       	mov    $0x1,%eax
     d99:	eb 05                	jmp    da0 <_Z9partitionRSt6vectorIiSaIiEEii+0xb6>
     d9b:	b8 00 00 00 00       	mov    $0x0,%eax
     da0:	84 c0                	test   %al,%al
     da2:	74 06                	je     daa <_Z9partitionRSt6vectorIiSaIiEEii+0xc0>
     da4:	83 6d e0 01          	subl   $0x1,-0x20(%rbp)
     da8:	eb c6                	jmp    d70 <_Z9partitionRSt6vectorIiSaIiEEii+0x86>
     daa:	8b 45 e4             	mov    -0x1c(%rbp),%eax
     dad:	3b 45 e0             	cmp    -0x20(%rbp),%eax
     db0:	0f 8d 74 ff ff ff    	jge    d2a <_Z9partitionRSt6vectorIiSaIiEEii+0x40>
     db6:	8b 45 e4             	mov    -0x1c(%rbp),%eax
     db9:	48 63 d0             	movslq %eax,%rdx
     dbc:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
     dc0:	48 89 d6             	mov    %rdx,%rsi
     dc3:	48 89 c7             	mov    %rax,%rdi
     dc6:	e8 7f 04 00 00       	callq  124a <_ZNSt6vectorIiSaIiEEixEm>
     dcb:	8b 00                	mov    (%rax),%eax
     dcd:	89 45 ec             	mov    %eax,-0x14(%rbp)
     dd0:	8b 45 e0             	mov    -0x20(%rbp),%eax
     dd3:	48 63 d0             	movslq %eax,%rdx
     dd6:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
     dda:	48 89 d6             	mov    %rdx,%rsi
     ddd:	48 89 c7             	mov    %rax,%rdi
     de0:	e8 65 04 00 00       	callq  124a <_ZNSt6vectorIiSaIiEEixEm>
     de5:	48 89 c3             	mov    %rax,%rbx
     de8:	8b 45 e4             	mov    -0x1c(%rbp),%eax
     deb:	48 63 d0             	movslq %eax,%rdx
     dee:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
     df2:	48 89 d6             	mov    %rdx,%rsi
     df5:	48 89 c7             	mov    %rax,%rdi
     df8:	e8 4d 04 00 00       	callq  124a <_ZNSt6vectorIiSaIiEEixEm>
     dfd:	48 89 c2             	mov    %rax,%rdx
     e00:	8b 03                	mov    (%rbx),%eax
     e02:	89 02                	mov    %eax,(%rdx)
     e04:	8b 45 e0             	mov    -0x20(%rbp),%eax
     e07:	48 63 d0             	movslq %eax,%rdx
     e0a:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
     e0e:	48 89 d6             	mov    %rdx,%rsi
     e11:	48 89 c7             	mov    %rax,%rdi
     e14:	e8 31 04 00 00       	callq  124a <_ZNSt6vectorIiSaIiEEixEm>
     e19:	48 89 c2             	mov    %rax,%rdx
     e1c:	8b 45 ec             	mov    -0x14(%rbp),%eax
     e1f:	89 02                	mov    %eax,(%rdx)
     e21:	83 45 e4 01          	addl   $0x1,-0x1c(%rbp)
     e25:	e9 00 ff ff ff       	jmpq   d2a <_Z9partitionRSt6vectorIiSaIiEEii+0x40>
     e2a:	8b 45 e4             	mov    -0x1c(%rbp),%eax
     e2d:	83 e8 01             	sub    $0x1,%eax
     e30:	48 83 c4 28          	add    $0x28,%rsp
     e34:	5b                   	pop    %rbx
     e35:	5d                   	pop    %rbp
     e36:	c3                   	retq   

0000000000000e37 <_Z9quicksortRSt6vectorIiSaIiEEii>:
     e37:	55                   	push   %rbp
     e38:	48 89 e5             	mov    %rsp,%rbp
     e3b:	48 83 ec 40          	sub    $0x40,%rsp
     e3f:	48 89 7d c8          	mov    %rdi,-0x38(%rbp)
     e43:	89 75 c4             	mov    %esi,-0x3c(%rbp)
     e46:	89 55 c0             	mov    %edx,-0x40(%rbp)
     e49:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
     e50:	00 00 
     e52:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
     e56:	31 c0                	xor    %eax,%eax
     e58:	8b 45 c4             	mov    -0x3c(%rbp),%eax
     e5b:	3b 45 c0             	cmp    -0x40(%rbp),%eax
     e5e:	0f 8d 85 00 00 00    	jge    ee9 <_Z9quicksortRSt6vectorIiSaIiEEii+0xb2>
     e64:	8b 55 c0             	mov    -0x40(%rbp),%edx
     e67:	8b 4d c4             	mov    -0x3c(%rbp),%ecx
     e6a:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
     e6e:	89 ce                	mov    %ecx,%esi
     e70:	48 89 c7             	mov    %rax,%rdi
     e73:	e8 72 fe ff ff       	callq  cea <_Z9partitionRSt6vectorIiSaIiEEii>
     e78:	89 45 dc             	mov    %eax,-0x24(%rbp)
     e7b:	8b 45 dc             	mov    -0x24(%rbp),%eax
     e7e:	89 45 ec             	mov    %eax,-0x14(%rbp)
     e81:	8b 45 c4             	mov    -0x3c(%rbp),%eax
     e84:	89 45 e8             	mov    %eax,-0x18(%rbp)
     e87:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
     e8b:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
     e8f:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
     e93:	48 83 ec 08          	sub    $0x8,%rsp
     e97:	6a 00                	pushq  $0x0
     e99:	6a 00                	pushq  $0x0
     e9b:	6a 00                	pushq  $0x0
     e9d:	41 b9 01 00 00 00    	mov    $0x1,%r9d
     ea3:	41 b8 08 00 00 00    	mov    $0x8,%r8d
     ea9:	b9 10 00 00 00       	mov    $0x10,%ecx
     eae:	ba 00 00 00 00       	mov    $0x0,%edx
     eb3:	48 89 c6             	mov    %rax,%rsi
     eb6:	48 8d 3d 53 03 00 00 	lea    0x353(%rip),%rdi        # 1210 <_Z9quicksortRSt6vectorIiSaIiEEii._omp_fn.0>
     ebd:	e8 3e fc ff ff       	callq  b00 <GOMP_task@plt>
     ec2:	48 83 c4 20          	add    $0x20,%rsp
     ec6:	8b 45 dc             	mov    -0x24(%rbp),%eax
     ec9:	8d 48 01             	lea    0x1(%rax),%ecx
     ecc:	8b 55 c0             	mov    -0x40(%rbp),%edx
     ecf:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
     ed3:	89 ce                	mov    %ecx,%esi
     ed5:	48 89 c7             	mov    %rax,%rdi
     ed8:	e8 5a ff ff ff       	callq  e37 <_Z9quicksortRSt6vectorIiSaIiEEii>
     edd:	e8 ae fc ff ff       	callq  b90 <GOMP_taskwait@plt>
     ee2:	b8 01 00 00 00       	mov    $0x1,%eax
     ee7:	eb 00                	jmp    ee9 <_Z9quicksortRSt6vectorIiSaIiEEii+0xb2>
     ee9:	48 8b 75 f8          	mov    -0x8(%rbp),%rsi
     eed:	64 48 33 34 25 28 00 	xor    %fs:0x28,%rsi
     ef4:	00 00 
     ef6:	74 05                	je     efd <_Z9quicksortRSt6vectorIiSaIiEEii+0xc6>
     ef8:	e8 83 fc ff ff       	callq  b80 <__stack_chk_fail@plt>
     efd:	c9                   	leaveq 
     efe:	c3                   	retq   

0000000000000eff <main>:
     eff:	55                   	push   %rbp
     f00:	48 89 e5             	mov    %rsp,%rbp
     f03:	53                   	push   %rbx
     f04:	48 83 ec 68          	sub    $0x68,%rsp
     f08:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
     f0f:	00 00 
     f11:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
     f15:	31 c0                	xor    %eax,%eax
     f17:	bf 00 00 00 00       	mov    $0x0,%edi
     f1c:	e8 ff fb ff ff       	callq  b20 <time@plt>
     f21:	89 c7                	mov    %eax,%edi
     f23:	e8 18 fc ff ff       	callq  b40 <srand@plt>
     f28:	48 8d 45 98          	lea    -0x68(%rbp),%rax
     f2c:	48 89 c7             	mov    %rax,%rdi
     f2f:	e8 36 03 00 00       	callq  126a <_ZNSaIiEC1Ev>
     f34:	48 8d 55 98          	lea    -0x68(%rbp),%rdx
     f38:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
     f3c:	be d0 07 00 00       	mov    $0x7d0,%esi
     f41:	48 89 c7             	mov    %rax,%rdi
     f44:	e8 59 03 00 00       	callq  12a2 <_ZNSt6vectorIiSaIiEEC1EmRKS0_>
     f49:	48 8d 45 98          	lea    -0x68(%rbp),%rax
     f4d:	48 89 c7             	mov    %rax,%rdi
     f50:	e8 31 03 00 00       	callq  1286 <_ZNSaIiED1Ev>
     f55:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
     f59:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
     f5d:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
     f61:	48 89 c7             	mov    %rax,%rdi
     f64:	e8 df 03 00 00       	callq  1348 <_ZNSt6vectorIiSaIiEE5beginEv>
     f69:	48 89 45 90          	mov    %rax,-0x70(%rbp)
     f6d:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
     f71:	48 89 c7             	mov    %rax,%rdi
     f74:	e8 17 04 00 00       	callq  1390 <_ZNSt6vectorIiSaIiEE3endEv>
     f79:	48 89 45 98          	mov    %rax,-0x68(%rbp)
     f7d:	48 8d 55 98          	lea    -0x68(%rbp),%rdx
     f81:	48 8d 45 90          	lea    -0x70(%rbp),%rax
     f85:	48 89 d6             	mov    %rdx,%rsi
     f88:	48 89 c7             	mov    %rax,%rdi
     f8b:	e8 4c 04 00 00       	callq  13dc <_ZN9__gnu_cxxneIPiSt6vectorIiSaIiEEEEbRKNS_17__normal_iteratorIT_T0_EESA_>
     f90:	84 c0                	test   %al,%al
     f92:	74 4a                	je     fde <main+0xdf>
     f94:	48 8d 45 90          	lea    -0x70(%rbp),%rax
     f98:	48 89 c7             	mov    %rax,%rdi
     f9b:	e8 98 04 00 00       	callq  1438 <_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEdeEv>
     fa0:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
     fa4:	e8 37 fb ff ff       	callq  ae0 <rand@plt>
     fa9:	89 c1                	mov    %eax,%ecx
     fab:	ba d3 4d 62 10       	mov    $0x10624dd3,%edx
     fb0:	89 c8                	mov    %ecx,%eax
     fb2:	f7 ea                	imul   %edx
     fb4:	c1 fa 06             	sar    $0x6,%edx
     fb7:	89 c8                	mov    %ecx,%eax
     fb9:	c1 f8 1f             	sar    $0x1f,%eax
     fbc:	29 c2                	sub    %eax,%edx
     fbe:	89 d0                	mov    %edx,%eax
     fc0:	69 c0 e8 03 00 00    	imul   $0x3e8,%eax,%eax
     fc6:	29 c1                	sub    %eax,%ecx
     fc8:	89 c8                	mov    %ecx,%eax
     fca:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
     fce:	89 02                	mov    %eax,(%rdx)
     fd0:	48 8d 45 90          	lea    -0x70(%rbp),%rax
     fd4:	48 89 c7             	mov    %rax,%rdi
     fd7:	e8 3c 04 00 00       	callq  1418 <_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEppEv>
     fdc:	eb 9f                	jmp    f7d <main+0x7e>
     fde:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
     fe2:	48 89 45 a8          	mov    %rax,-0x58(%rbp)
     fe6:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
     fea:	48 89 c7             	mov    %rax,%rdi
     fed:	e8 56 03 00 00       	callq  1348 <_ZNSt6vectorIiSaIiEE5beginEv>
     ff2:	48 89 45 90          	mov    %rax,-0x70(%rbp)
     ff6:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
     ffa:	48 89 c7             	mov    %rax,%rdi
     ffd:	e8 8e 03 00 00       	callq  1390 <_ZNSt6vectorIiSaIiEE3endEv>
    1002:	48 89 45 98          	mov    %rax,-0x68(%rbp)
    1006:	48 8d 55 98          	lea    -0x68(%rbp),%rdx
    100a:	48 8d 45 90          	lea    -0x70(%rbp),%rax
    100e:	48 89 d6             	mov    %rdx,%rsi
    1011:	48 89 c7             	mov    %rax,%rdi
    1014:	e8 c3 03 00 00       	callq  13dc <_ZN9__gnu_cxxneIPiSt6vectorIiSaIiEEEEbRKNS_17__normal_iteratorIT_T0_EESA_>
    1019:	84 c0                	test   %al,%al
    101b:	74 41                	je     105e <main+0x15f>
    101d:	48 8d 45 90          	lea    -0x70(%rbp),%rax
    1021:	48 89 c7             	mov    %rax,%rdi
    1024:	e8 0f 04 00 00       	callq  1438 <_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEdeEv>
    1029:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
    102d:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    1031:	8b 00                	mov    (%rax),%eax
    1033:	89 c6                	mov    %eax,%esi
    1035:	48 8d 3d e4 1f 20 00 	lea    0x201fe4(%rip),%rdi        # 203020 <_ZSt4cout@@GLIBCXX_3.4>
    103c:	e8 6f fb ff ff       	callq  bb0 <_ZNSolsEi@plt>
    1041:	48 8d 35 c8 09 00 00 	lea    0x9c8(%rip),%rsi        # 1a10 <_ZL6LENGTH+0x4>
    1048:	48 89 c7             	mov    %rax,%rdi
    104b:	e8 00 fb ff ff       	callq  b50 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
    1050:	48 8d 45 90          	lea    -0x70(%rbp),%rax
    1054:	48 89 c7             	mov    %rax,%rdi
    1057:	e8 bc 03 00 00       	callq  1418 <_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEppEv>
    105c:	eb a8                	jmp    1006 <main+0x107>
    105e:	48 8b 05 6b 1f 20 00 	mov    0x201f6b(%rip),%rax        # 202fd0 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GLIBCXX_3.4>
    1065:	48 89 c6             	mov    %rax,%rsi
    1068:	48 8d 3d b1 1f 20 00 	lea    0x201fb1(%rip),%rdi        # 203020 <_ZSt4cout@@GLIBCXX_3.4>
    106f:	e8 fc fa ff ff       	callq  b70 <_ZNSolsEPFRSoS_E@plt>
    1074:	48 8d 35 9d 09 00 00 	lea    0x99d(%rip),%rsi        # 1a18 <_ZL6LENGTH+0xc>
    107b:	48 89 c7             	mov    %rax,%rdi
    107e:	e8 cd fa ff ff       	callq  b50 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
    1083:	48 89 c2             	mov    %rax,%rdx
    1086:	48 8b 05 43 1f 20 00 	mov    0x201f43(%rip),%rax        # 202fd0 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GLIBCXX_3.4>
    108d:	48 89 c6             	mov    %rax,%rsi
    1090:	48 89 d7             	mov    %rdx,%rdi
    1093:	e8 d8 fa ff ff       	callq  b70 <_ZNSolsEPFRSoS_E@plt>
    1098:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
    109c:	48 89 c7             	mov    %rax,%rdi
    109f:	e8 a6 03 00 00       	callq  144a <_ZNKSt6vectorIiSaIiEE4sizeEv>
    10a4:	83 e8 01             	sub    $0x1,%eax
    10a7:	89 c2                	mov    %eax,%edx
    10a9:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
    10ad:	be 00 00 00 00       	mov    $0x0,%esi
    10b2:	48 89 c7             	mov    %rax,%rdi
    10b5:	e8 7d fd ff ff       	callq  e37 <_Z9quicksortRSt6vectorIiSaIiEEii>
    10ba:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
    10be:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
    10c2:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    10c6:	48 89 c7             	mov    %rax,%rdi
    10c9:	e8 7a 02 00 00       	callq  1348 <_ZNSt6vectorIiSaIiEE5beginEv>
    10ce:	48 89 45 90          	mov    %rax,-0x70(%rbp)
    10d2:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    10d6:	48 89 c7             	mov    %rax,%rdi
    10d9:	e8 b2 02 00 00       	callq  1390 <_ZNSt6vectorIiSaIiEE3endEv>
    10de:	48 89 45 98          	mov    %rax,-0x68(%rbp)
    10e2:	48 8d 55 98          	lea    -0x68(%rbp),%rdx
    10e6:	48 8d 45 90          	lea    -0x70(%rbp),%rax
    10ea:	48 89 d6             	mov    %rdx,%rsi
    10ed:	48 89 c7             	mov    %rax,%rdi
    10f0:	e8 e7 02 00 00       	callq  13dc <_ZN9__gnu_cxxneIPiSt6vectorIiSaIiEEEEbRKNS_17__normal_iteratorIT_T0_EESA_>
    10f5:	84 c0                	test   %al,%al
    10f7:	74 41                	je     113a <main+0x23b>
    10f9:	48 8d 45 90          	lea    -0x70(%rbp),%rax
    10fd:	48 89 c7             	mov    %rax,%rdi
    1100:	e8 33 03 00 00       	callq  1438 <_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEdeEv>
    1105:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
    1109:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    110d:	8b 00                	mov    (%rax),%eax
    110f:	89 c6                	mov    %eax,%esi
    1111:	48 8d 3d 08 1f 20 00 	lea    0x201f08(%rip),%rdi        # 203020 <_ZSt4cout@@GLIBCXX_3.4>
    1118:	e8 93 fa ff ff       	callq  bb0 <_ZNSolsEi@plt>
    111d:	48 8d 35 ec 08 00 00 	lea    0x8ec(%rip),%rsi        # 1a10 <_ZL6LENGTH+0x4>
    1124:	48 89 c7             	mov    %rax,%rdi
    1127:	e8 24 fa ff ff       	callq  b50 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
    112c:	48 8d 45 90          	lea    -0x70(%rbp),%rax
    1130:	48 89 c7             	mov    %rax,%rdi
    1133:	e8 e0 02 00 00       	callq  1418 <_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEppEv>
    1138:	eb a8                	jmp    10e2 <main+0x1e3>
    113a:	48 8b 05 8f 1e 20 00 	mov    0x201e8f(%rip),%rax        # 202fd0 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GLIBCXX_3.4>
    1141:	48 89 c6             	mov    %rax,%rsi
    1144:	48 8d 3d d5 1e 20 00 	lea    0x201ed5(%rip),%rdi        # 203020 <_ZSt4cout@@GLIBCXX_3.4>
    114b:	e8 20 fa ff ff       	callq  b70 <_ZNSolsEPFRSoS_E@plt>
    1150:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
    1154:	48 89 c7             	mov    %rax,%rdi
    1157:	e8 a8 01 00 00       	callq  1304 <_ZNSt6vectorIiSaIiEED1Ev>
    115c:	b8 00 00 00 00       	mov    $0x0,%eax
    1161:	48 8b 5d e8          	mov    -0x18(%rbp),%rbx
    1165:	64 48 33 1c 25 28 00 	xor    %fs:0x28,%rbx
    116c:	00 00 
    116e:	74 3b                	je     11ab <main+0x2ac>
    1170:	eb 34                	jmp    11a6 <main+0x2a7>
    1172:	48 89 c3             	mov    %rax,%rbx
    1175:	48 8d 45 98          	lea    -0x68(%rbp),%rax
    1179:	48 89 c7             	mov    %rax,%rdi
    117c:	e8 05 01 00 00       	callq  1286 <_ZNSaIiED1Ev>
    1181:	48 89 d8             	mov    %rbx,%rax
    1184:	48 89 c7             	mov    %rax,%rdi
    1187:	e8 34 fa ff ff       	callq  bc0 <_Unwind_Resume@plt>
    118c:	48 89 c3             	mov    %rax,%rbx
    118f:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
    1193:	48 89 c7             	mov    %rax,%rdi
    1196:	e8 69 01 00 00       	callq  1304 <_ZNSt6vectorIiSaIiEED1Ev>
    119b:	48 89 d8             	mov    %rbx,%rax
    119e:	48 89 c7             	mov    %rax,%rdi
    11a1:	e8 1a fa ff ff       	callq  bc0 <_Unwind_Resume@plt>
    11a6:	e8 d5 f9 ff ff       	callq  b80 <__stack_chk_fail@plt>
    11ab:	48 83 c4 68          	add    $0x68,%rsp
    11af:	5b                   	pop    %rbx
    11b0:	5d                   	pop    %rbp
    11b1:	c3                   	retq   

00000000000011b2 <_Z41__static_initialization_and_destruction_0ii>:
    11b2:	55                   	push   %rbp
    11b3:	48 89 e5             	mov    %rsp,%rbp
    11b6:	48 83 ec 10          	sub    $0x10,%rsp
    11ba:	89 7d fc             	mov    %edi,-0x4(%rbp)
    11bd:	89 75 f8             	mov    %esi,-0x8(%rbp)
    11c0:	83 7d fc 01          	cmpl   $0x1,-0x4(%rbp)
    11c4:	75 32                	jne    11f8 <_Z41__static_initialization_and_destruction_0ii+0x46>
    11c6:	81 7d f8 ff ff 00 00 	cmpl   $0xffff,-0x8(%rbp)
    11cd:	75 29                	jne    11f8 <_Z41__static_initialization_and_destruction_0ii+0x46>
    11cf:	48 8d 3d 5b 1f 20 00 	lea    0x201f5b(%rip),%rdi        # 203131 <_ZStL8__ioinit>
    11d6:	e8 c5 f9 ff ff       	callq  ba0 <_ZNSt8ios_base4InitC1Ev@plt>
    11db:	48 8d 15 26 1e 20 00 	lea    0x201e26(%rip),%rdx        # 203008 <__dso_handle>
    11e2:	48 8d 35 48 1f 20 00 	lea    0x201f48(%rip),%rsi        # 203131 <_ZStL8__ioinit>
    11e9:	48 8b 05 08 1e 20 00 	mov    0x201e08(%rip),%rax        # 202ff8 <_ZNSt8ios_base4InitD1Ev@GLIBCXX_3.4>
    11f0:	48 89 c7             	mov    %rax,%rdi
    11f3:	e8 18 f9 ff ff       	callq  b10 <__cxa_atexit@plt>
    11f8:	90                   	nop
    11f9:	c9                   	leaveq 
    11fa:	c3                   	retq   

00000000000011fb <_GLOBAL__sub_I__Z9partitionRSt6vectorIiSaIiEEii>:
    11fb:	55                   	push   %rbp
    11fc:	48 89 e5             	mov    %rsp,%rbp
    11ff:	be ff ff 00 00       	mov    $0xffff,%esi
    1204:	bf 01 00 00 00       	mov    $0x1,%edi
    1209:	e8 a4 ff ff ff       	callq  11b2 <_Z41__static_initialization_and_destruction_0ii>
    120e:	5d                   	pop    %rbp
    120f:	c3                   	retq   

0000000000001210 <_Z9quicksortRSt6vectorIiSaIiEEii._omp_fn.0>:
    1210:	55                   	push   %rbp
    1211:	48 89 e5             	mov    %rsp,%rbp
    1214:	48 83 ec 20          	sub    $0x20,%rsp
    1218:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    121c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1220:	8b 40 0c             	mov    0xc(%rax),%eax
    1223:	89 45 f8             	mov    %eax,-0x8(%rbp)
    1226:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    122a:	8b 40 08             	mov    0x8(%rax),%eax
    122d:	89 45 fc             	mov    %eax,-0x4(%rbp)
    1230:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1234:	48 8b 00             	mov    (%rax),%rax
    1237:	8b 55 f8             	mov    -0x8(%rbp),%edx
    123a:	8b 4d fc             	mov    -0x4(%rbp),%ecx
    123d:	89 ce                	mov    %ecx,%esi
    123f:	48 89 c7             	mov    %rax,%rdi
    1242:	e8 f0 fb ff ff       	callq  e37 <_Z9quicksortRSt6vectorIiSaIiEEii>
    1247:	c9                   	leaveq 
    1248:	c3                   	retq   
    1249:	90                   	nop

000000000000124a <_ZNSt6vectorIiSaIiEEixEm>:
    124a:	55                   	push   %rbp
    124b:	48 89 e5             	mov    %rsp,%rbp
    124e:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    1252:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    1256:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    125a:	48 8b 00             	mov    (%rax),%rax
    125d:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    1261:	48 c1 e2 02          	shl    $0x2,%rdx
    1265:	48 01 d0             	add    %rdx,%rax
    1268:	5d                   	pop    %rbp
    1269:	c3                   	retq   

000000000000126a <_ZNSaIiEC1Ev>:
    126a:	55                   	push   %rbp
    126b:	48 89 e5             	mov    %rsp,%rbp
    126e:	48 83 ec 10          	sub    $0x10,%rsp
    1272:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    1276:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    127a:	48 89 c7             	mov    %rax,%rdi
    127d:	e8 ee 01 00 00       	callq  1470 <_ZN9__gnu_cxx13new_allocatorIiEC1Ev>
    1282:	90                   	nop
    1283:	c9                   	leaveq 
    1284:	c3                   	retq   
    1285:	90                   	nop

0000000000001286 <_ZNSaIiED1Ev>:
    1286:	55                   	push   %rbp
    1287:	48 89 e5             	mov    %rsp,%rbp
    128a:	48 83 ec 10          	sub    $0x10,%rsp
    128e:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    1292:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1296:	48 89 c7             	mov    %rax,%rdi
    1299:	e8 de 01 00 00       	callq  147c <_ZN9__gnu_cxx13new_allocatorIiED1Ev>
    129e:	90                   	nop
    129f:	c9                   	leaveq 
    12a0:	c3                   	retq   
    12a1:	90                   	nop

00000000000012a2 <_ZNSt6vectorIiSaIiEEC1EmRKS0_>:
    12a2:	55                   	push   %rbp
    12a3:	48 89 e5             	mov    %rsp,%rbp
    12a6:	53                   	push   %rbx
    12a7:	48 83 ec 28          	sub    $0x28,%rsp
    12ab:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    12af:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    12b3:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
    12b7:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    12bb:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
    12bf:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    12c3:	48 89 ce             	mov    %rcx,%rsi
    12c6:	48 89 c7             	mov    %rax,%rdi
    12c9:	e8 d6 01 00 00       	callq  14a4 <_ZNSt12_Vector_baseIiSaIiEEC1EmRKS0_>
    12ce:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    12d2:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    12d6:	48 89 d6             	mov    %rdx,%rsi
    12d9:	48 89 c7             	mov    %rax,%rdi
    12dc:	e8 71 02 00 00       	callq  1552 <_ZNSt6vectorIiSaIiEE21_M_default_initializeEm>
    12e1:	eb 1a                	jmp    12fd <_ZNSt6vectorIiSaIiEEC1EmRKS0_+0x5b>
    12e3:	48 89 c3             	mov    %rax,%rbx
    12e6:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    12ea:	48 89 c7             	mov    %rax,%rdi
    12ed:	e8 10 02 00 00       	callq  1502 <_ZNSt12_Vector_baseIiSaIiEED1Ev>
    12f2:	48 89 d8             	mov    %rbx,%rax
    12f5:	48 89 c7             	mov    %rax,%rdi
    12f8:	e8 c3 f8 ff ff       	callq  bc0 <_Unwind_Resume@plt>
    12fd:	48 83 c4 28          	add    $0x28,%rsp
    1301:	5b                   	pop    %rbx
    1302:	5d                   	pop    %rbp
    1303:	c3                   	retq   

0000000000001304 <_ZNSt6vectorIiSaIiEED1Ev>:
    1304:	55                   	push   %rbp
    1305:	48 89 e5             	mov    %rsp,%rbp
    1308:	48 83 ec 10          	sub    $0x10,%rsp
    130c:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    1310:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1314:	48 89 c7             	mov    %rax,%rdi
    1317:	e8 7a 02 00 00       	callq  1596 <_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv>
    131c:	48 89 c2             	mov    %rax,%rdx
    131f:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1323:	48 8b 48 08          	mov    0x8(%rax),%rcx
    1327:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    132b:	48 8b 00             	mov    (%rax),%rax
    132e:	48 89 ce             	mov    %rcx,%rsi
    1331:	48 89 c7             	mov    %rax,%rdi
    1334:	e8 6b 02 00 00       	callq  15a4 <_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E>
    1339:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    133d:	48 89 c7             	mov    %rax,%rdi
    1340:	e8 bd 01 00 00       	callq  1502 <_ZNSt12_Vector_baseIiSaIiEED1Ev>
    1345:	90                   	nop
    1346:	c9                   	leaveq 
    1347:	c3                   	retq   

0000000000001348 <_ZNSt6vectorIiSaIiEE5beginEv>:
    1348:	55                   	push   %rbp
    1349:	48 89 e5             	mov    %rsp,%rbp
    134c:	48 83 ec 20          	sub    $0x20,%rsp
    1350:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    1354:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    135b:	00 00 
    135d:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    1361:	31 c0                	xor    %eax,%eax
    1363:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    1367:	48 8d 45 f0          	lea    -0x10(%rbp),%rax
    136b:	48 89 d6             	mov    %rdx,%rsi
    136e:	48 89 c7             	mov    %rax,%rdi
    1371:	e8 58 02 00 00       	callq  15ce <_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC1ERKS1_>
    1376:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    137a:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
    137e:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
    1385:	00 00 
    1387:	74 05                	je     138e <_ZNSt6vectorIiSaIiEE5beginEv+0x46>
    1389:	e8 f2 f7 ff ff       	callq  b80 <__stack_chk_fail@plt>
    138e:	c9                   	leaveq 
    138f:	c3                   	retq   

0000000000001390 <_ZNSt6vectorIiSaIiEE3endEv>:
    1390:	55                   	push   %rbp
    1391:	48 89 e5             	mov    %rsp,%rbp
    1394:	48 83 ec 20          	sub    $0x20,%rsp
    1398:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    139c:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    13a3:	00 00 
    13a5:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    13a9:	31 c0                	xor    %eax,%eax
    13ab:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    13af:	48 8d 50 08          	lea    0x8(%rax),%rdx
    13b3:	48 8d 45 f0          	lea    -0x10(%rbp),%rax
    13b7:	48 89 d6             	mov    %rdx,%rsi
    13ba:	48 89 c7             	mov    %rax,%rdi
    13bd:	e8 0c 02 00 00       	callq  15ce <_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC1ERKS1_>
    13c2:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    13c6:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
    13ca:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
    13d1:	00 00 
    13d3:	74 05                	je     13da <_ZNSt6vectorIiSaIiEE3endEv+0x4a>
    13d5:	e8 a6 f7 ff ff       	callq  b80 <__stack_chk_fail@plt>
    13da:	c9                   	leaveq 
    13db:	c3                   	retq   

00000000000013dc <_ZN9__gnu_cxxneIPiSt6vectorIiSaIiEEEEbRKNS_17__normal_iteratorIT_T0_EESA_>:
    13dc:	55                   	push   %rbp
    13dd:	48 89 e5             	mov    %rsp,%rbp
    13e0:	53                   	push   %rbx
    13e1:	48 83 ec 18          	sub    $0x18,%rsp
    13e5:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    13e9:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    13ed:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    13f1:	48 89 c7             	mov    %rax,%rdi
    13f4:	e8 f3 01 00 00       	callq  15ec <_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv>
    13f9:	48 8b 18             	mov    (%rax),%rbx
    13fc:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    1400:	48 89 c7             	mov    %rax,%rdi
    1403:	e8 e4 01 00 00       	callq  15ec <_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv>
    1408:	48 8b 00             	mov    (%rax),%rax
    140b:	48 39 c3             	cmp    %rax,%rbx
    140e:	0f 95 c0             	setne  %al
    1411:	48 83 c4 18          	add    $0x18,%rsp
    1415:	5b                   	pop    %rbx
    1416:	5d                   	pop    %rbp
    1417:	c3                   	retq   

0000000000001418 <_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEppEv>:
    1418:	55                   	push   %rbp
    1419:	48 89 e5             	mov    %rsp,%rbp
    141c:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    1420:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1424:	48 8b 00             	mov    (%rax),%rax
    1427:	48 8d 50 04          	lea    0x4(%rax),%rdx
    142b:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    142f:	48 89 10             	mov    %rdx,(%rax)
    1432:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1436:	5d                   	pop    %rbp
    1437:	c3                   	retq   

0000000000001438 <_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEdeEv>:
    1438:	55                   	push   %rbp
    1439:	48 89 e5             	mov    %rsp,%rbp
    143c:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    1440:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1444:	48 8b 00             	mov    (%rax),%rax
    1447:	5d                   	pop    %rbp
    1448:	c3                   	retq   
    1449:	90                   	nop

000000000000144a <_ZNKSt6vectorIiSaIiEE4sizeEv>:
    144a:	55                   	push   %rbp
    144b:	48 89 e5             	mov    %rsp,%rbp
    144e:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    1452:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1456:	48 8b 40 08          	mov    0x8(%rax),%rax
    145a:	48 89 c2             	mov    %rax,%rdx
    145d:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1461:	48 8b 00             	mov    (%rax),%rax
    1464:	48 29 c2             	sub    %rax,%rdx
    1467:	48 89 d0             	mov    %rdx,%rax
    146a:	48 c1 f8 02          	sar    $0x2,%rax
    146e:	5d                   	pop    %rbp
    146f:	c3                   	retq   

0000000000001470 <_ZN9__gnu_cxx13new_allocatorIiEC1Ev>:
    1470:	55                   	push   %rbp
    1471:	48 89 e5             	mov    %rsp,%rbp
    1474:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    1478:	90                   	nop
    1479:	5d                   	pop    %rbp
    147a:	c3                   	retq   
    147b:	90                   	nop

000000000000147c <_ZN9__gnu_cxx13new_allocatorIiED1Ev>:
    147c:	55                   	push   %rbp
    147d:	48 89 e5             	mov    %rsp,%rbp
    1480:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    1484:	90                   	nop
    1485:	5d                   	pop    %rbp
    1486:	c3                   	retq   
    1487:	90                   	nop

0000000000001488 <_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD1Ev>:
    1488:	55                   	push   %rbp
    1489:	48 89 e5             	mov    %rsp,%rbp
    148c:	48 83 ec 10          	sub    $0x10,%rsp
    1490:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    1494:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1498:	48 89 c7             	mov    %rax,%rdi
    149b:	e8 e6 fd ff ff       	callq  1286 <_ZNSaIiED1Ev>
    14a0:	90                   	nop
    14a1:	c9                   	leaveq 
    14a2:	c3                   	retq   
    14a3:	90                   	nop

00000000000014a4 <_ZNSt12_Vector_baseIiSaIiEEC1EmRKS0_>:
    14a4:	55                   	push   %rbp
    14a5:	48 89 e5             	mov    %rsp,%rbp
    14a8:	53                   	push   %rbx
    14a9:	48 83 ec 28          	sub    $0x28,%rsp
    14ad:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    14b1:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    14b5:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
    14b9:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    14bd:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
    14c1:	48 89 d6             	mov    %rdx,%rsi
    14c4:	48 89 c7             	mov    %rax,%rdi
    14c7:	e8 2e 01 00 00       	callq  15fa <_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC1ERKS0_>
    14cc:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    14d0:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    14d4:	48 89 d6             	mov    %rdx,%rsi
    14d7:	48 89 c7             	mov    %rax,%rdi
    14da:	e8 65 01 00 00       	callq  1644 <_ZNSt12_Vector_baseIiSaIiEE17_M_create_storageEm>
    14df:	eb 1a                	jmp    14fb <_ZNSt12_Vector_baseIiSaIiEEC1EmRKS0_+0x57>
    14e1:	48 89 c3             	mov    %rax,%rbx
    14e4:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    14e8:	48 89 c7             	mov    %rax,%rdi
    14eb:	e8 98 ff ff ff       	callq  1488 <_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD1Ev>
    14f0:	48 89 d8             	mov    %rbx,%rax
    14f3:	48 89 c7             	mov    %rax,%rdi
    14f6:	e8 c5 f6 ff ff       	callq  bc0 <_Unwind_Resume@plt>
    14fb:	48 83 c4 28          	add    $0x28,%rsp
    14ff:	5b                   	pop    %rbx
    1500:	5d                   	pop    %rbp
    1501:	c3                   	retq   

0000000000001502 <_ZNSt12_Vector_baseIiSaIiEED1Ev>:
    1502:	55                   	push   %rbp
    1503:	48 89 e5             	mov    %rsp,%rbp
    1506:	48 83 ec 10          	sub    $0x10,%rsp
    150a:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    150e:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1512:	48 8b 40 10          	mov    0x10(%rax),%rax
    1516:	48 89 c2             	mov    %rax,%rdx
    1519:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    151d:	48 8b 00             	mov    (%rax),%rax
    1520:	48 29 c2             	sub    %rax,%rdx
    1523:	48 89 d0             	mov    %rdx,%rax
    1526:	48 c1 f8 02          	sar    $0x2,%rax
    152a:	48 89 c2             	mov    %rax,%rdx
    152d:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1531:	48 8b 08             	mov    (%rax),%rcx
    1534:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1538:	48 89 ce             	mov    %rcx,%rsi
    153b:	48 89 c7             	mov    %rax,%rdi
    153e:	e8 5b 01 00 00       	callq  169e <_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim>
    1543:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1547:	48 89 c7             	mov    %rax,%rdi
    154a:	e8 39 ff ff ff       	callq  1488 <_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD1Ev>
    154f:	90                   	nop
    1550:	c9                   	leaveq 
    1551:	c3                   	retq   

0000000000001552 <_ZNSt6vectorIiSaIiEE21_M_default_initializeEm>:
    1552:	55                   	push   %rbp
    1553:	48 89 e5             	mov    %rsp,%rbp
    1556:	48 83 ec 10          	sub    $0x10,%rsp
    155a:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    155e:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    1562:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1566:	48 89 c7             	mov    %rax,%rdi
    1569:	e8 28 00 00 00       	callq  1596 <_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv>
    156e:	48 89 c2             	mov    %rax,%rdx
    1571:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1575:	48 8b 00             	mov    (%rax),%rax
    1578:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
    157c:	48 89 ce             	mov    %rcx,%rsi
    157f:	48 89 c7             	mov    %rax,%rdi
    1582:	e8 4c 01 00 00       	callq  16d3 <_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E>
    1587:	48 89 c2             	mov    %rax,%rdx
    158a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    158e:	48 89 50 08          	mov    %rdx,0x8(%rax)
    1592:	90                   	nop
    1593:	c9                   	leaveq 
    1594:	c3                   	retq   
    1595:	90                   	nop

0000000000001596 <_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv>:
    1596:	55                   	push   %rbp
    1597:	48 89 e5             	mov    %rsp,%rbp
    159a:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    159e:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    15a2:	5d                   	pop    %rbp
    15a3:	c3                   	retq   

00000000000015a4 <_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E>:
    15a4:	55                   	push   %rbp
    15a5:	48 89 e5             	mov    %rsp,%rbp
    15a8:	48 83 ec 20          	sub    $0x20,%rsp
    15ac:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    15b0:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    15b4:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
    15b8:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    15bc:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    15c0:	48 89 d6             	mov    %rdx,%rsi
    15c3:	48 89 c7             	mov    %rax,%rdi
    15c6:	e8 31 01 00 00       	callq  16fc <_ZSt8_DestroyIPiEvT_S1_>
    15cb:	90                   	nop
    15cc:	c9                   	leaveq 
    15cd:	c3                   	retq   

00000000000015ce <_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC1ERKS1_>:
    15ce:	55                   	push   %rbp
    15cf:	48 89 e5             	mov    %rsp,%rbp
    15d2:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    15d6:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    15da:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    15de:	48 8b 10             	mov    (%rax),%rdx
    15e1:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    15e5:	48 89 10             	mov    %rdx,(%rax)
    15e8:	90                   	nop
    15e9:	5d                   	pop    %rbp
    15ea:	c3                   	retq   
    15eb:	90                   	nop

00000000000015ec <_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv>:
    15ec:	55                   	push   %rbp
    15ed:	48 89 e5             	mov    %rsp,%rbp
    15f0:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    15f4:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    15f8:	5d                   	pop    %rbp
    15f9:	c3                   	retq   

00000000000015fa <_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC1ERKS0_>:
    15fa:	55                   	push   %rbp
    15fb:	48 89 e5             	mov    %rsp,%rbp
    15fe:	48 83 ec 10          	sub    $0x10,%rsp
    1602:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    1606:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    160a:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    160e:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1612:	48 89 d6             	mov    %rdx,%rsi
    1615:	48 89 c7             	mov    %rax,%rdi
    1618:	e8 05 01 00 00       	callq  1722 <_ZNSaIiEC1ERKS_>
    161d:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1621:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
    1628:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    162c:	48 c7 40 08 00 00 00 	movq   $0x0,0x8(%rax)
    1633:	00 
    1634:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1638:	48 c7 40 10 00 00 00 	movq   $0x0,0x10(%rax)
    163f:	00 
    1640:	90                   	nop
    1641:	c9                   	leaveq 
    1642:	c3                   	retq   
    1643:	90                   	nop

0000000000001644 <_ZNSt12_Vector_baseIiSaIiEE17_M_create_storageEm>:
    1644:	55                   	push   %rbp
    1645:	48 89 e5             	mov    %rsp,%rbp
    1648:	48 83 ec 10          	sub    $0x10,%rsp
    164c:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    1650:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    1654:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    1658:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    165c:	48 89 d6             	mov    %rdx,%rsi
    165f:	48 89 c7             	mov    %rax,%rdi
    1662:	e8 e1 00 00 00       	callq  1748 <_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm>
    1667:	48 89 c2             	mov    %rax,%rdx
    166a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    166e:	48 89 10             	mov    %rdx,(%rax)
    1671:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1675:	48 8b 10             	mov    (%rax),%rdx
    1678:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    167c:	48 89 50 08          	mov    %rdx,0x8(%rax)
    1680:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1684:	48 8b 00             	mov    (%rax),%rax
    1687:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    168b:	48 c1 e2 02          	shl    $0x2,%rdx
    168f:	48 01 c2             	add    %rax,%rdx
    1692:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1696:	48 89 50 10          	mov    %rdx,0x10(%rax)
    169a:	90                   	nop
    169b:	c9                   	leaveq 
    169c:	c3                   	retq   
    169d:	90                   	nop

000000000000169e <_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim>:
    169e:	55                   	push   %rbp
    169f:	48 89 e5             	mov    %rsp,%rbp
    16a2:	48 83 ec 20          	sub    $0x20,%rsp
    16a6:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    16aa:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    16ae:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
    16b2:	48 83 7d f0 00       	cmpq   $0x0,-0x10(%rbp)
    16b7:	74 17                	je     16d0 <_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim+0x32>
    16b9:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    16bd:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    16c1:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
    16c5:	48 89 ce             	mov    %rcx,%rsi
    16c8:	48 89 c7             	mov    %rax,%rdi
    16cb:	e8 ab 00 00 00       	callq  177b <_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim>
    16d0:	90                   	nop
    16d1:	c9                   	leaveq 
    16d2:	c3                   	retq   

00000000000016d3 <_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E>:
    16d3:	55                   	push   %rbp
    16d4:	48 89 e5             	mov    %rsp,%rbp
    16d7:	48 83 ec 20          	sub    $0x20,%rsp
    16db:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    16df:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    16e3:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
    16e7:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    16eb:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    16ef:	48 89 d6             	mov    %rdx,%rsi
    16f2:	48 89 c7             	mov    %rax,%rdi
    16f5:	e8 af 00 00 00       	callq  17a9 <_ZSt25__uninitialized_default_nIPimET_S1_T0_>
    16fa:	c9                   	leaveq 
    16fb:	c3                   	retq   

00000000000016fc <_ZSt8_DestroyIPiEvT_S1_>:
    16fc:	55                   	push   %rbp
    16fd:	48 89 e5             	mov    %rsp,%rbp
    1700:	48 83 ec 10          	sub    $0x10,%rsp
    1704:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    1708:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    170c:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    1710:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1714:	48 89 d6             	mov    %rdx,%rsi
    1717:	48 89 c7             	mov    %rax,%rdi
    171a:	e8 b3 00 00 00       	callq  17d2 <_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_>
    171f:	90                   	nop
    1720:	c9                   	leaveq 
    1721:	c3                   	retq   

0000000000001722 <_ZNSaIiEC1ERKS_>:
    1722:	55                   	push   %rbp
    1723:	48 89 e5             	mov    %rsp,%rbp
    1726:	48 83 ec 10          	sub    $0x10,%rsp
    172a:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    172e:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    1732:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    1736:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    173a:	48 89 d6             	mov    %rdx,%rsi
    173d:	48 89 c7             	mov    %rax,%rdi
    1740:	e8 9d 00 00 00       	callq  17e2 <_ZN9__gnu_cxx13new_allocatorIiEC1ERKS1_>
    1745:	90                   	nop
    1746:	c9                   	leaveq 
    1747:	c3                   	retq   

0000000000001748 <_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm>:
    1748:	55                   	push   %rbp
    1749:	48 89 e5             	mov    %rsp,%rbp
    174c:	48 83 ec 10          	sub    $0x10,%rsp
    1750:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    1754:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    1758:	48 83 7d f0 00       	cmpq   $0x0,-0x10(%rbp)
    175d:	74 15                	je     1774 <_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm+0x2c>
    175f:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1763:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    1767:	48 89 d6             	mov    %rdx,%rsi
    176a:	48 89 c7             	mov    %rax,%rdi
    176d:	e8 7f 00 00 00       	callq  17f1 <_ZNSt16allocator_traitsISaIiEE8allocateERS0_m>
    1772:	eb 05                	jmp    1779 <_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm+0x31>
    1774:	b8 00 00 00 00       	mov    $0x0,%eax
    1779:	c9                   	leaveq 
    177a:	c3                   	retq   

000000000000177b <_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim>:
    177b:	55                   	push   %rbp
    177c:	48 89 e5             	mov    %rsp,%rbp
    177f:	48 83 ec 20          	sub    $0x20,%rsp
    1783:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    1787:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    178b:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
    178f:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    1793:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
    1797:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    179b:	48 89 ce             	mov    %rcx,%rsi
    179e:	48 89 c7             	mov    %rax,%rdi
    17a1:	e8 76 00 00 00       	callq  181c <_ZN9__gnu_cxx13new_allocatorIiE10deallocateEPim>
    17a6:	90                   	nop
    17a7:	c9                   	leaveq 
    17a8:	c3                   	retq   

00000000000017a9 <_ZSt25__uninitialized_default_nIPimET_S1_T0_>:
    17a9:	55                   	push   %rbp
    17aa:	48 89 e5             	mov    %rsp,%rbp
    17ad:	48 83 ec 20          	sub    $0x20,%rsp
    17b1:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    17b5:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    17b9:	c6 45 ff 01          	movb   $0x1,-0x1(%rbp)
    17bd:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    17c1:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    17c5:	48 89 d6             	mov    %rdx,%rsi
    17c8:	48 89 c7             	mov    %rax,%rdi
    17cb:	e8 6f 00 00 00       	callq  183f <_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPimEET_S3_T0_>
    17d0:	c9                   	leaveq 
    17d1:	c3                   	retq   

00000000000017d2 <_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_>:
    17d2:	55                   	push   %rbp
    17d3:	48 89 e5             	mov    %rsp,%rbp
    17d6:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    17da:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    17de:	90                   	nop
    17df:	5d                   	pop    %rbp
    17e0:	c3                   	retq   
    17e1:	90                   	nop

00000000000017e2 <_ZN9__gnu_cxx13new_allocatorIiEC1ERKS1_>:
    17e2:	55                   	push   %rbp
    17e3:	48 89 e5             	mov    %rsp,%rbp
    17e6:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    17ea:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    17ee:	90                   	nop
    17ef:	5d                   	pop    %rbp
    17f0:	c3                   	retq   

00000000000017f1 <_ZNSt16allocator_traitsISaIiEE8allocateERS0_m>:
    17f1:	55                   	push   %rbp
    17f2:	48 89 e5             	mov    %rsp,%rbp
    17f5:	48 83 ec 10          	sub    $0x10,%rsp
    17f9:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    17fd:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    1801:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
    1805:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1809:	ba 00 00 00 00       	mov    $0x0,%edx
    180e:	48 89 ce             	mov    %rcx,%rsi
    1811:	48 89 c7             	mov    %rax,%rdi
    1814:	e8 79 00 00 00       	callq  1892 <_ZN9__gnu_cxx13new_allocatorIiE8allocateEmPKv>
    1819:	c9                   	leaveq 
    181a:	c3                   	retq   
    181b:	90                   	nop

000000000000181c <_ZN9__gnu_cxx13new_allocatorIiE10deallocateEPim>:
    181c:	55                   	push   %rbp
    181d:	48 89 e5             	mov    %rsp,%rbp
    1820:	48 83 ec 20          	sub    $0x20,%rsp
    1824:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    1828:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    182c:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
    1830:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    1834:	48 89 c7             	mov    %rax,%rdi
    1837:	e8 f4 f2 ff ff       	callq  b30 <_ZdlPv@plt>
    183c:	90                   	nop
    183d:	c9                   	leaveq 
    183e:	c3                   	retq   

000000000000183f <_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPimEET_S3_T0_>:
    183f:	55                   	push   %rbp
    1840:	48 89 e5             	mov    %rsp,%rbp
    1843:	48 83 ec 20          	sub    $0x20,%rsp
    1847:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    184b:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    184f:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1856:	00 00 
    1858:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    185c:	31 c0                	xor    %eax,%eax
    185e:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%rbp)
    1865:	48 8d 55 f4          	lea    -0xc(%rbp),%rdx
    1869:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    186d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1871:	48 89 ce             	mov    %rcx,%rsi
    1874:	48 89 c7             	mov    %rax,%rdi
    1877:	e8 58 00 00 00       	callq  18d4 <_ZSt6fill_nIPimiET_S1_T0_RKT1_>
    187c:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
    1880:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
    1887:	00 00 
    1889:	74 05                	je     1890 <_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPimEET_S3_T0_+0x51>
    188b:	e8 f0 f2 ff ff       	callq  b80 <__stack_chk_fail@plt>
    1890:	c9                   	leaveq 
    1891:	c3                   	retq   

0000000000001892 <_ZN9__gnu_cxx13new_allocatorIiE8allocateEmPKv>:
    1892:	55                   	push   %rbp
    1893:	48 89 e5             	mov    %rsp,%rbp
    1896:	48 83 ec 20          	sub    $0x20,%rsp
    189a:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    189e:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    18a2:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
    18a6:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    18aa:	48 89 c7             	mov    %rax,%rdi
    18ad:	e8 5a 00 00 00       	callq  190c <_ZNK9__gnu_cxx13new_allocatorIiE8max_sizeEv>
    18b2:	48 39 45 f0          	cmp    %rax,-0x10(%rbp)
    18b6:	0f 97 c0             	seta   %al
    18b9:	84 c0                	test   %al,%al
    18bb:	74 05                	je     18c2 <_ZN9__gnu_cxx13new_allocatorIiE8allocateEmPKv+0x30>
    18bd:	e8 2e f2 ff ff       	callq  af0 <_ZSt17__throw_bad_allocv@plt>
    18c2:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    18c6:	48 c1 e0 02          	shl    $0x2,%rax
    18ca:	48 89 c7             	mov    %rax,%rdi
    18cd:	e8 8e f2 ff ff       	callq  b60 <_Znwm@plt>
    18d2:	c9                   	leaveq 
    18d3:	c3                   	retq   

00000000000018d4 <_ZSt6fill_nIPimiET_S1_T0_RKT1_>:
    18d4:	55                   	push   %rbp
    18d5:	48 89 e5             	mov    %rsp,%rbp
    18d8:	48 83 ec 20          	sub    $0x20,%rsp
    18dc:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    18e0:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    18e4:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
    18e8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    18ec:	48 89 c7             	mov    %rax,%rdi
    18ef:	e8 2c 00 00 00       	callq  1920 <_ZSt12__niter_baseIPiET_S1_>
    18f4:	48 89 c1             	mov    %rax,%rcx
    18f7:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    18fb:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    18ff:	48 89 c6             	mov    %rax,%rsi
    1902:	48 89 cf             	mov    %rcx,%rdi
    1905:	e8 24 00 00 00       	callq  192e <_ZSt10__fill_n_aIPimiEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT1_E7__valueET_E6__typeES6_T0_RKS4_>
    190a:	c9                   	leaveq 
    190b:	c3                   	retq   

000000000000190c <_ZNK9__gnu_cxx13new_allocatorIiE8max_sizeEv>:
    190c:	55                   	push   %rbp
    190d:	48 89 e5             	mov    %rsp,%rbp
    1910:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    1914:	48 b8 ff ff ff ff ff 	movabs $0x3fffffffffffffff,%rax
    191b:	ff ff 3f 
    191e:	5d                   	pop    %rbp
    191f:	c3                   	retq   

0000000000001920 <_ZSt12__niter_baseIPiET_S1_>:
    1920:	55                   	push   %rbp
    1921:	48 89 e5             	mov    %rsp,%rbp
    1924:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    1928:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    192c:	5d                   	pop    %rbp
    192d:	c3                   	retq   

000000000000192e <_ZSt10__fill_n_aIPimiEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT1_E7__valueET_E6__typeES6_T0_RKS4_>:
    192e:	55                   	push   %rbp
    192f:	48 89 e5             	mov    %rsp,%rbp
    1932:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    1936:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    193a:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
    193e:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    1942:	8b 00                	mov    (%rax),%eax
    1944:	89 45 f4             	mov    %eax,-0xc(%rbp)
    1947:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    194b:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    194f:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
    1954:	74 15                	je     196b <_ZSt10__fill_n_aIPimiEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT1_E7__valueET_E6__typeES6_T0_RKS4_+0x3d>
    1956:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    195a:	8b 55 f4             	mov    -0xc(%rbp),%edx
    195d:	89 10                	mov    %edx,(%rax)
    195f:	48 83 6d f8 01       	subq   $0x1,-0x8(%rbp)
    1964:	48 83 45 e8 04       	addq   $0x4,-0x18(%rbp)
    1969:	eb e4                	jmp    194f <_ZSt10__fill_n_aIPimiEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT1_E7__valueET_E6__typeES6_T0_RKS4_+0x21>
    196b:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    196f:	5d                   	pop    %rbp
    1970:	c3                   	retq   
    1971:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    1978:	00 00 00 
    197b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001980 <__libc_csu_init>:
    1980:	41 57                	push   %r15
    1982:	41 56                	push   %r14
    1984:	49 89 d7             	mov    %rdx,%r15
    1987:	41 55                	push   %r13
    1989:	41 54                	push   %r12
    198b:	4c 8d 25 6e 13 20 00 	lea    0x20136e(%rip),%r12        # 202d00 <__frame_dummy_init_array_entry>
    1992:	55                   	push   %rbp
    1993:	48 8d 2d 76 13 20 00 	lea    0x201376(%rip),%rbp        # 202d10 <__init_array_end>
    199a:	53                   	push   %rbx
    199b:	41 89 fd             	mov    %edi,%r13d
    199e:	49 89 f6             	mov    %rsi,%r14
    19a1:	4c 29 e5             	sub    %r12,%rbp
    19a4:	48 83 ec 08          	sub    $0x8,%rsp
    19a8:	48 c1 fd 03          	sar    $0x3,%rbp
    19ac:	e8 07 f1 ff ff       	callq  ab8 <_init>
    19b1:	48 85 ed             	test   %rbp,%rbp
    19b4:	74 20                	je     19d6 <__libc_csu_init+0x56>
    19b6:	31 db                	xor    %ebx,%ebx
    19b8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    19bf:	00 
    19c0:	4c 89 fa             	mov    %r15,%rdx
    19c3:	4c 89 f6             	mov    %r14,%rsi
    19c6:	44 89 ef             	mov    %r13d,%edi
    19c9:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
    19cd:	48 83 c3 01          	add    $0x1,%rbx
    19d1:	48 39 dd             	cmp    %rbx,%rbp
    19d4:	75 ea                	jne    19c0 <__libc_csu_init+0x40>
    19d6:	48 83 c4 08          	add    $0x8,%rsp
    19da:	5b                   	pop    %rbx
    19db:	5d                   	pop    %rbp
    19dc:	41 5c                	pop    %r12
    19de:	41 5d                	pop    %r13
    19e0:	41 5e                	pop    %r14
    19e2:	41 5f                	pop    %r15
    19e4:	c3                   	retq   
    19e5:	90                   	nop
    19e6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    19ed:	00 00 00 

00000000000019f0 <__libc_csu_fini>:
    19f0:	f3 c3                	repz retq 

Disassembly of section .fini:

00000000000019f4 <_fini>:
    19f4:	48 83 ec 08          	sub    $0x8,%rsp
    19f8:	48 83 c4 08          	add    $0x8,%rsp
    19fc:	c3                   	retq   
