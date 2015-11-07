
game:     file format elf32-i386


Disassembly of section .text:

080480a0 <add_irq_handle>:
 80480a0:	55                   	push   %ebp
 80480a1:	89 e5                	mov    %esp,%ebp
 80480a3:	83 ec 0c             	sub    $0xc,%esp
 80480a6:	ff 75 0c             	pushl  0xc(%ebp)
 80480a9:	ff 75 08             	pushl  0x8(%ebp)
 80480ac:	6a 00                	push   $0x0
 80480ae:	e8 7d 00 00 00       	call   8048130 <syscall>
 80480b3:	83 c4 10             	add    $0x10,%esp
 80480b6:	c9                   	leave  
 80480b7:	c3                   	ret    
 80480b8:	90                   	nop
 80480b9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

080480c0 <game_init>:
 80480c0:	55                   	push   %ebp
 80480c1:	89 e5                	mov    %esp,%ebp
 80480c3:	83 ec 08             	sub    $0x8,%esp
 80480c6:	e8 85 01 00 00       	call   8048250 <init_timer>
 80480cb:	83 ec 04             	sub    $0x4,%esp
 80480ce:	68 50 87 04 08       	push   $0x8048750
 80480d3:	6a 00                	push   $0x0
 80480d5:	6a 00                	push   $0x0
 80480d7:	e8 54 00 00 00       	call   8048130 <syscall>
 80480dc:	68 0c 46 05 08       	push   $0x805460c
 80480e1:	6a 11                	push   $0x11
 80480e3:	68 80 45 05 08       	push   $0x8054580
 80480e8:	68 98 45 05 08       	push   $0x8054598
 80480ed:	e8 8e 11 00 00       	call   8049280 <printf>
 80480f2:	83 c4 20             	add    $0x20,%esp
 80480f5:	e8 96 06 00 00       	call   8048790 <main_loop>
 80480fa:	fa                   	cli    
 80480fb:	83 ec 0c             	sub    $0xc,%esp
 80480fe:	68 3d 46 05 08       	push   $0x805463d
 8048103:	68 0c 46 05 08       	push   $0x805460c
 8048108:	6a 15                	push   $0x15
 804810a:	68 80 45 05 08       	push   $0x8054580
 804810f:	68 c4 45 05 08       	push   $0x80545c4
 8048114:	e8 67 11 00 00       	call   8049280 <printf>
 8048119:	b8 01 00 00 00       	mov    $0x1,%eax
 804811e:	d6                   	(bad)  
 804811f:	83 c4 20             	add    $0x20,%esp
 8048122:	c9                   	leave  
 8048123:	c3                   	ret    
 8048124:	66 90                	xchg   %ax,%ax
 8048126:	66 90                	xchg   %ax,%ax
 8048128:	66 90                	xchg   %ax,%ax
 804812a:	66 90                	xchg   %ax,%ax
 804812c:	66 90                	xchg   %ax,%ax
 804812e:	66 90                	xchg   %ax,%ax

08048130 <syscall>:
 8048130:	55                   	push   %ebp
 8048131:	89 e5                	mov    %esp,%ebp
 8048133:	53                   	push   %ebx
 8048134:	8b 55 14             	mov    0x14(%ebp),%edx
 8048137:	8b 4d 10             	mov    0x10(%ebp),%ecx
 804813a:	8b 45 08             	mov    0x8(%ebp),%eax
 804813d:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 8048140:	cd 80                	int    $0x80
 8048142:	5b                   	pop    %ebx
 8048143:	5d                   	pop    %ebp
 8048144:	c3                   	ret    
 8048145:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8048149:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

08048150 <_exit>:
 8048150:	55                   	push   %ebp
 8048151:	89 e5                	mov    %esp,%ebp
 8048153:	8b 45 08             	mov    0x8(%ebp),%eax
 8048156:	85 c0                	test   %eax,%eax
 8048158:	74 06                	je     8048160 <_exit+0x10>
 804815a:	b8 01 00 00 00       	mov    $0x1,%eax
 804815f:	d6                   	(bad)  
 8048160:	5d                   	pop    %ebp
 8048161:	c3                   	ret    
 8048162:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 8048169:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

08048170 <open>:
 8048170:	55                   	push   %ebp
 8048171:	b8 01 00 00 00       	mov    $0x1,%eax
 8048176:	89 e5                	mov    %esp,%ebp
 8048178:	d6                   	(bad)  
 8048179:	30 c0                	xor    %al,%al
 804817b:	5d                   	pop    %ebp
 804817c:	c3                   	ret    
 804817d:	8d 76 00             	lea    0x0(%esi),%esi

08048180 <read>:
 8048180:	55                   	push   %ebp
 8048181:	b8 01 00 00 00       	mov    $0x1,%eax
 8048186:	89 e5                	mov    %esp,%ebp
 8048188:	d6                   	(bad)  
 8048189:	30 c0                	xor    %al,%al
 804818b:	5d                   	pop    %ebp
 804818c:	c3                   	ret    
 804818d:	8d 76 00             	lea    0x0(%esi),%esi

08048190 <write>:
 8048190:	55                   	push   %ebp
 8048191:	89 e5                	mov    %esp,%ebp
 8048193:	ff 75 10             	pushl  0x10(%ebp)
 8048196:	ff 75 0c             	pushl  0xc(%ebp)
 8048199:	ff 75 08             	pushl  0x8(%ebp)
 804819c:	6a 04                	push   $0x4
 804819e:	e8 8d ff ff ff       	call   8048130 <syscall>
 80481a3:	c9                   	leave  
 80481a4:	c3                   	ret    
 80481a5:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 80481a9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

080481b0 <lseek>:
 80481b0:	55                   	push   %ebp
 80481b1:	b8 01 00 00 00       	mov    $0x1,%eax
 80481b6:	89 e5                	mov    %esp,%ebp
 80481b8:	d6                   	(bad)  
 80481b9:	30 c0                	xor    %al,%al
 80481bb:	5d                   	pop    %ebp
 80481bc:	c3                   	ret    
 80481bd:	8d 76 00             	lea    0x0(%esi),%esi

080481c0 <sbrk>:
 80481c0:	55                   	push   %ebp
 80481c1:	89 e5                	mov    %esp,%ebp
 80481c3:	56                   	push   %esi
 80481c4:	53                   	push   %ebx
 80481c5:	8b 1d 40 7d 05 08    	mov    0x8057d40,%ebx
 80481cb:	85 db                	test   %ebx,%ebx
 80481cd:	74 31                	je     8048200 <sbrk+0x40>
 80481cf:	8b 75 08             	mov    0x8(%ebp),%esi
 80481d2:	01 de                	add    %ebx,%esi
 80481d4:	56                   	push   %esi
 80481d5:	6a 2d                	push   $0x2d
 80481d7:	e8 54 ff ff ff       	call   8048130 <syscall>
 80481dc:	85 c0                	test   %eax,%eax
 80481de:	5a                   	pop    %edx
 80481df:	59                   	pop    %ecx
 80481e0:	74 06                	je     80481e8 <sbrk+0x28>
 80481e2:	b8 01 00 00 00       	mov    $0x1,%eax
 80481e7:	d6                   	(bad)  
 80481e8:	89 35 40 7d 05 08    	mov    %esi,0x8057d40
 80481ee:	8d 65 f8             	lea    -0x8(%ebp),%esp
 80481f1:	89 d8                	mov    %ebx,%eax
 80481f3:	5b                   	pop    %ebx
 80481f4:	5e                   	pop    %esi
 80481f5:	5d                   	pop    %ebp
 80481f6:	c3                   	ret    
 80481f7:	89 f6                	mov    %esi,%esi
 80481f9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
 8048200:	bb 78 d6 06 08       	mov    $0x806d678,%ebx
 8048205:	eb c8                	jmp    80481cf <sbrk+0xf>
 8048207:	89 f6                	mov    %esi,%esi
 8048209:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

08048210 <close>:
 8048210:	55                   	push   %ebp
 8048211:	b8 01 00 00 00       	mov    $0x1,%eax
 8048216:	89 e5                	mov    %esp,%ebp
 8048218:	d6                   	(bad)  
 8048219:	30 c0                	xor    %al,%al
 804821b:	5d                   	pop    %ebp
 804821c:	c3                   	ret    
 804821d:	8d 76 00             	lea    0x0(%esi),%esi

08048220 <fstat>:
 8048220:	55                   	push   %ebp
 8048221:	89 e5                	mov    %esp,%ebp
 8048223:	8b 45 0c             	mov    0xc(%ebp),%eax
 8048226:	c7 40 04 00 20 00 00 	movl   $0x2000,0x4(%eax)
 804822d:	31 c0                	xor    %eax,%eax
 804822f:	5d                   	pop    %ebp
 8048230:	c3                   	ret    
 8048231:	eb 0d                	jmp    8048240 <isatty>
 8048233:	90                   	nop
 8048234:	90                   	nop
 8048235:	90                   	nop
 8048236:	90                   	nop
 8048237:	90                   	nop
 8048238:	90                   	nop
 8048239:	90                   	nop
 804823a:	90                   	nop
 804823b:	90                   	nop
 804823c:	90                   	nop
 804823d:	90                   	nop
 804823e:	90                   	nop
 804823f:	90                   	nop

08048240 <isatty>:
 8048240:	55                   	push   %ebp
 8048241:	31 c0                	xor    %eax,%eax
 8048243:	89 e5                	mov    %esp,%ebp
 8048245:	5d                   	pop    %ebp
 8048246:	c3                   	ret    
 8048247:	66 90                	xchg   %ax,%ax
 8048249:	66 90                	xchg   %ax,%ax
 804824b:	66 90                	xchg   %ax,%ax
 804824d:	66 90                	xchg   %ax,%ax
 804824f:	90                   	nop

08048250 <init_timer>:
 8048250:	55                   	push   %ebp
 8048251:	ba 43 00 00 00       	mov    $0x43,%edx
 8048256:	b8 34 00 00 00       	mov    $0x34,%eax
 804825b:	89 e5                	mov    %esp,%ebp
 804825d:	ee                   	out    %al,(%dx)
 804825e:	b8 9b ff ff ff       	mov    $0xffffff9b,%eax
 8048263:	b2 40                	mov    $0x40,%dl
 8048265:	ee                   	out    %al,(%dx)
 8048266:	b8 2e 00 00 00       	mov    $0x2e,%eax
 804826b:	ee                   	out    %al,(%dx)
 804826c:	5d                   	pop    %ebp
 804826d:	c3                   	ret    
 804826e:	66 90                	xchg   %ax,%ax

08048270 <write_palette>:
 8048270:	55                   	push   %ebp
 8048271:	ba c8 03 00 00       	mov    $0x3c8,%edx
 8048276:	31 c0                	xor    %eax,%eax
 8048278:	89 e5                	mov    %esp,%ebp
 804827a:	53                   	push   %ebx
 804827b:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 804827e:	ee                   	out    %al,(%dx)
 804827f:	85 db                	test   %ebx,%ebx
 8048281:	7e 2b                	jle    80482ae <write_palette+0x3e>
 8048283:	8b 4d 08             	mov    0x8(%ebp),%ecx
 8048286:	b2 c9                	mov    $0xc9,%dl
 8048288:	8d 1c 99             	lea    (%ecx,%ebx,4),%ebx
 804828b:	90                   	nop
 804828c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8048290:	0f b6 01             	movzbl (%ecx),%eax
 8048293:	c0 e8 02             	shr    $0x2,%al
 8048296:	ee                   	out    %al,(%dx)
 8048297:	0f b6 41 01          	movzbl 0x1(%ecx),%eax
 804829b:	c0 e8 02             	shr    $0x2,%al
 804829e:	ee                   	out    %al,(%dx)
 804829f:	0f b6 41 02          	movzbl 0x2(%ecx),%eax
 80482a3:	c0 e8 02             	shr    $0x2,%al
 80482a6:	ee                   	out    %al,(%dx)
 80482a7:	83 c1 04             	add    $0x4,%ecx
 80482aa:	39 d9                	cmp    %ebx,%ecx
 80482ac:	75 e2                	jne    8048290 <write_palette+0x20>
 80482ae:	5b                   	pop    %ebx
 80482af:	5d                   	pop    %ebp
 80482b0:	c3                   	ret    
 80482b1:	eb 0d                	jmp    80482c0 <read_palette>
 80482b3:	90                   	nop
 80482b4:	90                   	nop
 80482b5:	90                   	nop
 80482b6:	90                   	nop
 80482b7:	90                   	nop
 80482b8:	90                   	nop
 80482b9:	90                   	nop
 80482ba:	90                   	nop
 80482bb:	90                   	nop
 80482bc:	90                   	nop
 80482bd:	90                   	nop
 80482be:	90                   	nop
 80482bf:	90                   	nop

080482c0 <read_palette>:
 80482c0:	55                   	push   %ebp
 80482c1:	ba c7 03 00 00       	mov    $0x3c7,%edx
 80482c6:	31 c0                	xor    %eax,%eax
 80482c8:	89 e5                	mov    %esp,%ebp
 80482ca:	57                   	push   %edi
 80482cb:	56                   	push   %esi
 80482cc:	53                   	push   %ebx
 80482cd:	83 ec 0c             	sub    $0xc,%esp
 80482d0:	ee                   	out    %al,(%dx)
 80482d1:	bb 00 01 00 00       	mov    $0x100,%ebx
 80482d6:	be c9 03 00 00       	mov    $0x3c9,%esi
 80482db:	90                   	nop
 80482dc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 80482e0:	89 f2                	mov    %esi,%edx
 80482e2:	ec                   	in     (%dx),%al
 80482e3:	0f b6 c8             	movzbl %al,%ecx
 80482e6:	ec                   	in     (%dx),%al
 80482e7:	89 c7                	mov    %eax,%edi
 80482e9:	ec                   	in     (%dx),%al
 80482ea:	0f b6 c0             	movzbl %al,%eax
 80482ed:	50                   	push   %eax
 80482ee:	89 f8                	mov    %edi,%eax
 80482f0:	0f b6 f8             	movzbl %al,%edi
 80482f3:	57                   	push   %edi
 80482f4:	51                   	push   %ecx
 80482f5:	68 16 46 05 08       	push   $0x8054616
 80482fa:	e8 81 0f 00 00       	call   8049280 <printf>
 80482ff:	83 c4 10             	add    $0x10,%esp
 8048302:	83 eb 01             	sub    $0x1,%ebx
 8048305:	75 d9                	jne    80482e0 <read_palette+0x20>
 8048307:	8d 65 f4             	lea    -0xc(%ebp),%esp
 804830a:	5b                   	pop    %ebx
 804830b:	5e                   	pop    %esi
 804830c:	5f                   	pop    %edi
 804830d:	5d                   	pop    %ebp
 804830e:	c3                   	ret    
 804830f:	90                   	nop

08048310 <prepare_buffer>:
 8048310:	55                   	push   %ebp
 8048311:	89 e5                	mov    %esp,%ebp
 8048313:	83 ec 0c             	sub    $0xc,%esp
 8048316:	68 00 fa 00 00       	push   $0xfa00
 804831b:	6a 00                	push   $0x0
 804831d:	ff 35 00 74 05 08    	pushl  0x8057400
 8048323:	e8 99 0e 00 00       	call   80491c1 <memset>
 8048328:	83 c4 10             	add    $0x10,%esp
 804832b:	c9                   	leave  
 804832c:	c3                   	ret    
 804832d:	8d 76 00             	lea    0x0(%esi),%esi

08048330 <display_buffer>:
 8048330:	55                   	push   %ebp
 8048331:	b9 80 3e 00 00       	mov    $0x3e80,%ecx
 8048336:	89 e5                	mov    %esp,%ebp
 8048338:	57                   	push   %edi
 8048339:	bf 00 00 0a 00       	mov    $0xa0000,%edi
 804833e:	56                   	push   %esi
 804833f:	8b 35 00 74 05 08    	mov    0x8057400,%esi
 8048345:	fc                   	cld    
 8048346:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
 8048348:	5e                   	pop    %esi
 8048349:	5f                   	pop    %edi
 804834a:	5d                   	pop    %ebp
 804834b:	c3                   	ret    
 804834c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

08048350 <draw_string>:
 8048350:	55                   	push   %ebp
 8048351:	89 e5                	mov    %esp,%ebp
 8048353:	57                   	push   %edi
 8048354:	56                   	push   %esi
 8048355:	53                   	push   %ebx
 8048356:	83 ec 1c             	sub    $0x1c,%esp
 8048359:	8b 7d 10             	mov    0x10(%ebp),%edi
 804835c:	8b 45 08             	mov    0x8(%ebp),%eax
 804835f:	0f be 18             	movsbl (%eax),%ebx
 8048362:	84 db                	test   %bl,%bl
 8048364:	0f 84 9d 00 00 00    	je     8048407 <draw_string+0xb7>
 804836a:	83 45 08 01          	addl   $0x1,0x8(%ebp)
 804836e:	84 db                	test   %bl,%bl
 8048370:	0f 88 d2 00 00 00    	js     8048448 <draw_string+0xf8>
 8048376:	8b 45 0c             	mov    0xc(%ebp),%eax
 8048379:	8b 75 0c             	mov    0xc(%ebp),%esi
 804837c:	8d 14 dd 00 70 05 08 	lea    0x8057000(,%ebx,8),%edx
 8048383:	83 c0 08             	add    $0x8,%eax
 8048386:	29 f2                	sub    %esi,%edx
 8048388:	89 45 dc             	mov    %eax,-0x24(%ebp)
 804838b:	90                   	nop
 804838c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8048390:	69 c6 40 01 00 00    	imul   $0x140,%esi,%eax
 8048396:	31 db                	xor    %ebx,%ebx
 8048398:	89 7d 10             	mov    %edi,0x10(%ebp)
 804839b:	89 45 e0             	mov    %eax,-0x20(%ebp)
 804839e:	eb 08                	jmp    80483a8 <draw_string+0x58>
 80483a0:	83 c3 01             	add    $0x1,%ebx
 80483a3:	83 fb 08             	cmp    $0x8,%ebx
 80483a6:	74 39                	je     80483e1 <draw_string+0x91>
 80483a8:	0f be 04 32          	movsbl (%edx,%esi,1),%eax
 80483ac:	0f a3 d8             	bt     %ebx,%eax
 80483af:	73 ef                	jae    80483a0 <draw_string+0x50>
 80483b1:	8b 45 10             	mov    0x10(%ebp),%eax
 80483b4:	01 d8                	add    %ebx,%eax
 80483b6:	3d 3f 01 00 00       	cmp    $0x13f,%eax
 80483bb:	77 53                	ja     8048410 <draw_string+0xc0>
 80483bd:	81 fe c7 00 00 00    	cmp    $0xc7,%esi
 80483c3:	77 4b                	ja     8048410 <draw_string+0xc0>
 80483c5:	a1 00 74 05 08       	mov    0x8057400,%eax
 80483ca:	0f b6 4d 14          	movzbl 0x14(%ebp),%ecx
 80483ce:	8b 7d e0             	mov    -0x20(%ebp),%edi
 80483d1:	01 d8                	add    %ebx,%eax
 80483d3:	03 45 10             	add    0x10(%ebp),%eax
 80483d6:	83 c3 01             	add    $0x1,%ebx
 80483d9:	83 fb 08             	cmp    $0x8,%ebx
 80483dc:	88 0c 38             	mov    %cl,(%eax,%edi,1)
 80483df:	75 c7                	jne    80483a8 <draw_string+0x58>
 80483e1:	83 c6 01             	add    $0x1,%esi
 80483e4:	3b 75 dc             	cmp    -0x24(%ebp),%esi
 80483e7:	8b 7d 10             	mov    0x10(%ebp),%edi
 80483ea:	75 a4                	jne    8048390 <draw_string+0x40>
 80483ec:	81 ff 37 01 00 00    	cmp    $0x137,%edi
 80483f2:	7e 4c                	jle    8048440 <draw_string+0xf0>
 80483f4:	8b 45 08             	mov    0x8(%ebp),%eax
 80483f7:	31 ff                	xor    %edi,%edi
 80483f9:	89 75 0c             	mov    %esi,0xc(%ebp)
 80483fc:	0f be 18             	movsbl (%eax),%ebx
 80483ff:	84 db                	test   %bl,%bl
 8048401:	0f 85 63 ff ff ff    	jne    804836a <draw_string+0x1a>
 8048407:	8d 65 f4             	lea    -0xc(%ebp),%esp
 804840a:	5b                   	pop    %ebx
 804840b:	5e                   	pop    %esi
 804840c:	5f                   	pop    %edi
 804840d:	5d                   	pop    %ebp
 804840e:	c3                   	ret    
 804840f:	90                   	nop
 8048410:	89 55 e4             	mov    %edx,-0x1c(%ebp)
 8048413:	fa                   	cli    
 8048414:	83 ec 0c             	sub    $0xc,%esp
 8048417:	68 7c 46 05 08       	push   $0x805467c
 804841c:	68 b0 46 05 08       	push   $0x80546b0
 8048421:	6a 0f                	push   $0xf
 8048423:	68 3f 46 05 08       	push   $0x805463f
 8048428:	68 c4 45 05 08       	push   $0x80545c4
 804842d:	e8 4e 0e 00 00       	call   8049280 <printf>
 8048432:	b8 01 00 00 00       	mov    $0x1,%eax
 8048437:	d6                   	(bad)  
 8048438:	83 c4 20             	add    $0x20,%esp
 804843b:	8b 55 e4             	mov    -0x1c(%ebp),%edx
 804843e:	eb 85                	jmp    80483c5 <draw_string+0x75>
 8048440:	83 c7 08             	add    $0x8,%edi
 8048443:	e9 14 ff ff ff       	jmp    804835c <draw_string+0xc>
 8048448:	fa                   	cli    
 8048449:	83 ec 0c             	sub    $0xc,%esp
 804844c:	68 2e 46 05 08       	push   $0x805462e
 8048451:	68 bb 46 05 08       	push   $0x80546bb
 8048456:	6a 18                	push   $0x18
 8048458:	68 5c 46 05 08       	push   $0x805465c
 804845d:	68 c4 45 05 08       	push   $0x80545c4
 8048462:	e8 19 0e 00 00       	call   8049280 <printf>
 8048467:	b8 01 00 00 00       	mov    $0x1,%eax
 804846c:	d6                   	(bad)  
 804846d:	83 c4 20             	add    $0x20,%esp
 8048470:	e9 01 ff ff ff       	jmp    8048376 <draw_string+0x26>
 8048475:	66 90                	xchg   %ax,%ax
 8048477:	66 90                	xchg   %ax,%ax
 8048479:	66 90                	xchg   %ax,%ax
 804847b:	66 90                	xchg   %ax,%ax
 804847d:	66 90                	xchg   %ax,%ax
 804847f:	90                   	nop

08048480 <redraw_screen>:
 8048480:	55                   	push   %ebp
 8048481:	89 e5                	mov    %esp,%ebp
 8048483:	53                   	push   %ebx
 8048484:	83 ec 04             	sub    $0x4,%esp
 8048487:	e8 84 fe ff ff       	call   8048310 <prepare_buffer>
 804848c:	e8 3f 06 00 00       	call   8048ad0 <characters>
 8048491:	85 c0                	test   %eax,%eax
 8048493:	89 c3                	mov    %eax,%ebx
 8048495:	74 54                	je     80484eb <redraw_screen+0x6b>
 8048497:	89 f6                	mov    %esi,%esi
 8048499:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
 80484a0:	0f b6 43 08          	movzbl 0x8(%ebx),%eax
 80484a4:	c6 05 9f 77 06 08 00 	movb   $0x0,0x806779f
 80484ab:	83 c0 41             	add    $0x41,%eax
 80484ae:	a2 9e 77 06 08       	mov    %al,0x806779e
 80484b3:	8b 13                	mov    (%ebx),%edx
 80484b5:	6a 0f                	push   $0xf
 80484b7:	ff 73 04             	pushl  0x4(%ebx)
 80484ba:	89 d0                	mov    %edx,%eax
 80484bc:	25 00 00 00 80       	and    $0x80000000,%eax
 80484c1:	31 c2                	xor    %eax,%edx
 80484c3:	85 c0                	test   %eax,%eax
 80484c5:	0f 95 c0             	setne  %al
 80484c8:	c1 fa 10             	sar    $0x10,%edx
 80484cb:	0f b6 c0             	movzbl %al,%eax
 80484ce:	89 c1                	mov    %eax,%ecx
 80484d0:	f7 d9                	neg    %ecx
 80484d2:	31 ca                	xor    %ecx,%edx
 80484d4:	01 c2                	add    %eax,%edx
 80484d6:	52                   	push   %edx
 80484d7:	68 9e 77 06 08       	push   $0x806779e
 80484dc:	e8 6f fe ff ff       	call   8048350 <draw_string>
 80484e1:	8b 5b 14             	mov    0x14(%ebx),%ebx
 80484e4:	83 c4 10             	add    $0x10,%esp
 80484e7:	85 db                	test   %ebx,%ebx
 80484e9:	75 b5                	jne    80484a0 <redraw_screen+0x20>
 80484eb:	e8 00 02 00 00       	call   80486f0 <last_key_code>
 80484f0:	50                   	push   %eax
 80484f1:	68 ca 46 05 08       	push   $0x80546ca
 80484f6:	6a 1e                	push   $0x1e
 80484f8:	68 80 77 06 08       	push   $0x8067780
 80484fd:	e8 be 0e 00 00       	call   80493c0 <snprintf>
 8048502:	6a 30                	push   $0x30
 8048504:	6a 00                	push   $0x0
 8048506:	68 c0 00 00 00       	push   $0xc0
 804850b:	68 80 77 06 08       	push   $0x8067780
 8048510:	e8 3b fe ff ff       	call   8048350 <draw_string>
 8048515:	83 c4 20             	add    $0x20,%esp
 8048518:	e8 93 05 00 00       	call   8048ab0 <get_hit>
 804851d:	50                   	push   %eax
 804851e:	68 ca 46 05 08       	push   $0x80546ca
 8048523:	6a 1e                	push   $0x1e
 8048525:	68 80 77 06 08       	push   $0x8067780
 804852a:	e8 91 0e 00 00       	call   80493c0 <snprintf>
 804852f:	c7 04 24 80 77 06 08 	movl   $0x8067780,(%esp)
 8048536:	e8 25 0f 00 00       	call   8049460 <strlen>
 804853b:	f7 d8                	neg    %eax
 804853d:	6a 0a                	push   $0xa
 804853f:	8d 04 c5 40 01 00 00 	lea    0x140(,%eax,8),%eax
 8048546:	50                   	push   %eax
 8048547:	6a 00                	push   $0x0
 8048549:	68 80 77 06 08       	push   $0x8067780
 804854e:	e8 fd fd ff ff       	call   8048350 <draw_string>
 8048553:	83 c4 20             	add    $0x20,%esp
 8048556:	e8 65 05 00 00       	call   8048ac0 <get_miss>
 804855b:	50                   	push   %eax
 804855c:	68 ca 46 05 08       	push   $0x80546ca
 8048561:	6a 1e                	push   $0x1e
 8048563:	68 80 77 06 08       	push   $0x8067780
 8048568:	e8 53 0e 00 00       	call   80493c0 <snprintf>
 804856d:	c7 04 24 80 77 06 08 	movl   $0x8067780,(%esp)
 8048574:	e8 e7 0e 00 00       	call   8049460 <strlen>
 8048579:	f7 d8                	neg    %eax
 804857b:	6a 0c                	push   $0xc
 804857d:	8d 04 c5 40 01 00 00 	lea    0x140(,%eax,8),%eax
 8048584:	50                   	push   %eax
 8048585:	68 c0 00 00 00       	push   $0xc0
 804858a:	68 80 77 06 08       	push   $0x8067780
 804858f:	e8 bc fd ff ff       	call   8048350 <draw_string>
 8048594:	83 c4 20             	add    $0x20,%esp
 8048597:	e8 e4 01 00 00       	call   8048780 <get_fps>
 804859c:	50                   	push   %eax
 804859d:	68 ca 46 05 08       	push   $0x80546ca
 80485a2:	6a 1e                	push   $0x1e
 80485a4:	68 80 77 06 08       	push   $0x8067780
 80485a9:	e8 12 0e 00 00       	call   80493c0 <snprintf>
 80485ae:	6a 0e                	push   $0xe
 80485b0:	6a 00                	push   $0x0
 80485b2:	6a 00                	push   $0x0
 80485b4:	68 80 77 06 08       	push   $0x8067780
 80485b9:	e8 92 fd ff ff       	call   8048350 <draw_string>
 80485be:	83 c4 20             	add    $0x20,%esp
 80485c1:	e8 ba 01 00 00       	call   8048780 <get_fps>
 80485c6:	50                   	push   %eax
 80485c7:	68 ca 46 05 08       	push   $0x80546ca
 80485cc:	6a 1e                	push   $0x1e
 80485ce:	68 80 77 06 08       	push   $0x8067780
 80485d3:	e8 e8 0d 00 00       	call   80493c0 <snprintf>
 80485d8:	c7 04 24 80 77 06 08 	movl   $0x8067780,(%esp)
 80485df:	e8 7c 0e 00 00       	call   8049460 <strlen>
 80485e4:	c1 e0 03             	shl    $0x3,%eax
 80485e7:	6a 0e                	push   $0xe
 80485e9:	50                   	push   %eax
 80485ea:	6a 00                	push   $0x0
 80485ec:	68 cd 46 05 08       	push   $0x80546cd
 80485f1:	e8 5a fd ff ff       	call   8048350 <draw_string>
 80485f6:	83 c4 20             	add    $0x20,%esp
 80485f9:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 80485fc:	c9                   	leave  
 80485fd:	e9 2e fd ff ff       	jmp    8048330 <display_buffer>
 8048602:	66 90                	xchg   %ax,%ax
 8048604:	66 90                	xchg   %ax,%ax
 8048606:	66 90                	xchg   %ax,%ax
 8048608:	66 90                	xchg   %ax,%ax
 804860a:	66 90                	xchg   %ax,%ax
 804860c:	66 90                	xchg   %ax,%ax
 804860e:	66 90                	xchg   %ax,%ax

08048610 <press_key>:
 8048610:	55                   	push   %ebp
 8048611:	31 c0                	xor    %eax,%eax
 8048613:	89 e5                	mov    %esp,%ebp
 8048615:	8b 55 08             	mov    0x8(%ebp),%edx
 8048618:	eb 0e                	jmp    8048628 <press_key+0x18>
 804861a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 8048620:	83 c0 01             	add    $0x1,%eax
 8048623:	83 f8 1a             	cmp    $0x1a,%eax
 8048626:	74 18                	je     8048640 <press_key+0x30>
 8048628:	39 14 85 80 47 05 08 	cmp    %edx,0x8054780(,%eax,4)
 804862f:	75 ef                	jne    8048620 <press_key+0x10>
 8048631:	c6 80 a4 77 06 08 01 	movb   $0x1,0x80677a4(%eax)
 8048638:	83 c0 01             	add    $0x1,%eax
 804863b:	83 f8 1a             	cmp    $0x1a,%eax
 804863e:	75 e8                	jne    8048628 <press_key+0x18>
 8048640:	5d                   	pop    %ebp
 8048641:	c3                   	ret    
 8048642:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 8048649:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

08048650 <release_key>:
 8048650:	55                   	push   %ebp
 8048651:	89 e5                	mov    %esp,%ebp
 8048653:	53                   	push   %ebx
 8048654:	83 ec 04             	sub    $0x4,%esp
 8048657:	8b 5d 08             	mov    0x8(%ebp),%ebx
 804865a:	83 fb 19             	cmp    $0x19,%ebx
 804865d:	76 28                	jbe    8048687 <release_key+0x37>
 804865f:	fa                   	cli    
 8048660:	83 ec 0c             	sub    $0xc,%esp
 8048663:	68 d1 46 05 08       	push   $0x80546d1
 8048668:	68 4a 47 05 08       	push   $0x805474a
 804866d:	6a 19                	push   $0x19
 804866f:	68 ea 46 05 08       	push   $0x80546ea
 8048674:	68 c4 45 05 08       	push   $0x80545c4
 8048679:	e8 02 0c 00 00       	call   8049280 <printf>
 804867e:	b8 01 00 00 00       	mov    $0x1,%eax
 8048683:	d6                   	(bad)  
 8048684:	83 c4 20             	add    $0x20,%esp
 8048687:	c6 83 a4 77 06 08 00 	movb   $0x0,0x80677a4(%ebx)
 804868e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 8048691:	c9                   	leave  
 8048692:	c3                   	ret    
 8048693:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 8048699:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

080486a0 <query_key>:
 80486a0:	55                   	push   %ebp
 80486a1:	89 e5                	mov    %esp,%ebp
 80486a3:	53                   	push   %ebx
 80486a4:	83 ec 04             	sub    $0x4,%esp
 80486a7:	8b 5d 08             	mov    0x8(%ebp),%ebx
 80486aa:	83 fb 19             	cmp    $0x19,%ebx
 80486ad:	76 28                	jbe    80486d7 <query_key+0x37>
 80486af:	fa                   	cli    
 80486b0:	83 ec 0c             	sub    $0xc,%esp
 80486b3:	68 d1 46 05 08       	push   $0x80546d1
 80486b8:	68 40 47 05 08       	push   $0x8054740
 80486bd:	6a 1f                	push   $0x1f
 80486bf:	68 ea 46 05 08       	push   $0x80546ea
 80486c4:	68 c4 45 05 08       	push   $0x80545c4
 80486c9:	e8 b2 0b 00 00       	call   8049280 <printf>
 80486ce:	b8 01 00 00 00       	mov    $0x1,%eax
 80486d3:	d6                   	(bad)  
 80486d4:	83 c4 20             	add    $0x20,%esp
 80486d7:	0f b6 83 a4 77 06 08 	movzbl 0x80677a4(%ebx),%eax
 80486de:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 80486e1:	c9                   	leave  
 80486e2:	c3                   	ret    
 80486e3:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 80486e9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

080486f0 <last_key_code>:
 80486f0:	55                   	push   %ebp
 80486f1:	a1 a0 77 06 08       	mov    0x80677a0,%eax
 80486f6:	89 e5                	mov    %esp,%ebp
 80486f8:	5d                   	pop    %ebp
 80486f9:	c3                   	ret    
 80486fa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

08048700 <keyboard_event>:
 8048700:	55                   	push   %ebp
 8048701:	ba 60 00 00 00       	mov    $0x60,%edx
 8048706:	89 e5                	mov    %esp,%ebp
 8048708:	ec                   	in     (%dx),%al
 8048709:	0f b6 c0             	movzbl %al,%eax
 804870c:	a3 a0 77 06 08       	mov    %eax,0x80677a0
 8048711:	31 c0                	xor    %eax,%eax
 8048713:	8b 15 a0 77 06 08    	mov    0x80677a0,%edx
 8048719:	eb 0d                	jmp    8048728 <keyboard_event+0x28>
 804871b:	90                   	nop
 804871c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8048720:	83 c0 01             	add    $0x1,%eax
 8048723:	83 f8 1a             	cmp    $0x1a,%eax
 8048726:	74 18                	je     8048740 <keyboard_event+0x40>
 8048728:	3b 14 85 80 47 05 08 	cmp    0x8054780(,%eax,4),%edx
 804872f:	75 ef                	jne    8048720 <keyboard_event+0x20>
 8048731:	c6 80 a4 77 06 08 01 	movb   $0x1,0x80677a4(%eax)
 8048738:	83 c0 01             	add    $0x1,%eax
 804873b:	83 f8 1a             	cmp    $0x1a,%eax
 804873e:	75 e8                	jne    8048728 <keyboard_event+0x28>
 8048740:	5d                   	pop    %ebp
 8048741:	c3                   	ret    
 8048742:	66 90                	xchg   %ax,%ax
 8048744:	66 90                	xchg   %ax,%ax
 8048746:	66 90                	xchg   %ax,%ax
 8048748:	66 90                	xchg   %ax,%ax
 804874a:	66 90                	xchg   %ax,%ax
 804874c:	66 90                	xchg   %ax,%ax
 804874e:	66 90                	xchg   %ax,%ax

08048750 <timer_event>:
 8048750:	a1 c0 77 06 08       	mov    0x80677c0,%eax
 8048755:	55                   	push   %ebp
 8048756:	89 e5                	mov    %esp,%ebp
 8048758:	83 c0 01             	add    $0x1,%eax
 804875b:	a3 c0 77 06 08       	mov    %eax,0x80677c0
 8048760:	5d                   	pop    %ebp
 8048761:	c3                   	ret    
 8048762:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 8048769:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

08048770 <set_fps>:
 8048770:	55                   	push   %ebp
 8048771:	89 e5                	mov    %esp,%ebp
 8048773:	8b 45 08             	mov    0x8(%ebp),%eax
 8048776:	5d                   	pop    %ebp
 8048777:	a3 c4 77 06 08       	mov    %eax,0x80677c4
 804877c:	c3                   	ret    
 804877d:	8d 76 00             	lea    0x0(%esi),%esi

08048780 <get_fps>:
 8048780:	55                   	push   %ebp
 8048781:	a1 c4 77 06 08       	mov    0x80677c4,%eax
 8048786:	89 e5                	mov    %esp,%ebp
 8048788:	5d                   	pop    %ebp
 8048789:	c3                   	ret    
 804878a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

08048790 <main_loop>:
 8048790:	55                   	push   %ebp
 8048791:	89 e5                	mov    %esp,%ebp
 8048793:	57                   	push   %edi
 8048794:	56                   	push   %esi
 8048795:	53                   	push   %ebx
 8048796:	31 ff                	xor    %edi,%edi
 8048798:	31 db                	xor    %ebx,%ebx
 804879a:	83 ec 1c             	sub    $0x1c,%esp
 804879d:	8d 76 00             	lea    0x0(%esi),%esi
 80487a0:	f4                   	hlt    
 80487a1:	fa                   	cli    
 80487a2:	a1 c0 77 06 08       	mov    0x80677c0,%eax
 80487a7:	39 c3                	cmp    %eax,%ebx
 80487a9:	0f 84 d1 00 00 00    	je     8048880 <main_loop+0xf0>
 80487af:	a1 c0 77 06 08       	mov    0x80677c0,%eax
 80487b4:	39 c3                	cmp    %eax,%ebx
 80487b6:	0f 8d d4 00 00 00    	jge    8048890 <main_loop+0x100>
 80487bc:	8b 35 c0 77 06 08    	mov    0x80677c0,%esi
 80487c2:	fb                   	sti    
 80487c3:	90                   	nop
 80487c4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 80487c8:	e8 d3 04 00 00       	call   8048ca0 <update_keypress>
 80487cd:	84 c0                	test   %al,%al
 80487cf:	75 f7                	jne    80487c8 <main_loop+0x38>
 80487d1:	39 f3                	cmp    %esi,%ebx
 80487d3:	7d cb                	jge    80487a0 <main_loop+0x10>
 80487d5:	c6 45 e7 00          	movb   $0x0,-0x19(%ebp)
 80487d9:	eb 59                	jmp    8048834 <main_loop+0xa4>
 80487db:	90                   	nop
 80487dc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 80487e0:	e8 1b 04 00 00       	call   8048c00 <update_letter_pos>
 80487e5:	b8 56 55 55 55       	mov    $0x55555556,%eax
 80487ea:	f7 eb                	imul   %ebx
 80487ec:	89 d8                	mov    %ebx,%eax
 80487ee:	c1 f8 1f             	sar    $0x1f,%eax
 80487f1:	29 c2                	sub    %eax,%edx
 80487f3:	8d 04 52             	lea    (%edx,%edx,2),%eax
 80487f6:	39 c3                	cmp    %eax,%ebx
 80487f8:	75 04                	jne    80487fe <main_loop+0x6e>
 80487fa:	c6 45 e7 01          	movb   $0x1,-0x19(%ebp)
 80487fe:	89 d8                	mov    %ebx,%eax
 8048800:	ba 1f 85 eb 51       	mov    $0x51eb851f,%edx
 8048805:	f7 ea                	imul   %edx
 8048807:	89 d8                	mov    %ebx,%eax
 8048809:	c1 f8 1f             	sar    $0x1f,%eax
 804880c:	c1 fa 04             	sar    $0x4,%edx
 804880f:	29 c2                	sub    %eax,%edx
 8048811:	6b d2 32             	imul   $0x32,%edx,%edx
 8048814:	39 d3                	cmp    %edx,%ebx
 8048816:	75 15                	jne    804882d <main_loop+0x9d>
 8048818:	8d 44 3f 01          	lea    0x1(%edi,%edi,1),%eax
 804881c:	83 f8 1e             	cmp    $0x1e,%eax
 804881f:	7e 05                	jle    8048826 <main_loop+0x96>
 8048821:	b8 1e 00 00 00       	mov    $0x1e,%eax
 8048826:	a3 c4 77 06 08       	mov    %eax,0x80677c4
 804882b:	31 ff                	xor    %edi,%edi
 804882d:	83 c3 01             	add    $0x1,%ebx
 8048830:	39 f3                	cmp    %esi,%ebx
 8048832:	74 2c                	je     8048860 <main_loop+0xd0>
 8048834:	b8 e1 83 0f 3e       	mov    $0x3e0f83e1,%eax
 8048839:	f7 eb                	imul   %ebx
 804883b:	89 d8                	mov    %ebx,%eax
 804883d:	c1 f8 1f             	sar    $0x1f,%eax
 8048840:	c1 fa 03             	sar    $0x3,%edx
 8048843:	29 c2                	sub    %eax,%edx
 8048845:	89 d0                	mov    %edx,%eax
 8048847:	c1 e0 05             	shl    $0x5,%eax
 804884a:	01 c2                	add    %eax,%edx
 804884c:	39 d3                	cmp    %edx,%ebx
 804884e:	75 90                	jne    80487e0 <main_loop+0x50>
 8048850:	e8 8b 02 00 00       	call   8048ae0 <create_new_letter>
 8048855:	eb 89                	jmp    80487e0 <main_loop+0x50>
 8048857:	89 f6                	mov    %esi,%esi
 8048859:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
 8048860:	80 7d e7 00          	cmpb   $0x0,-0x19(%ebp)
 8048864:	0f 84 36 ff ff ff    	je     80487a0 <main_loop+0x10>
 804886a:	83 c7 01             	add    $0x1,%edi
 804886d:	e8 0e fc ff ff       	call   8048480 <redraw_screen>
 8048872:	e9 29 ff ff ff       	jmp    80487a0 <main_loop+0x10>
 8048877:	89 f6                	mov    %esi,%esi
 8048879:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
 8048880:	fb                   	sti    
 8048881:	e9 1a ff ff ff       	jmp    80487a0 <main_loop+0x10>
 8048886:	8d 76 00             	lea    0x0(%esi),%esi
 8048889:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
 8048890:	fa                   	cli    
 8048891:	83 ec 0c             	sub    $0xc,%esp
 8048894:	68 e8 47 05 08       	push   $0x80547e8
 8048899:	68 0a 48 05 08       	push   $0x805480a
 804889e:	6a 31                	push   $0x31
 80488a0:	68 f3 47 05 08       	push   $0x80547f3
 80488a5:	68 c4 45 05 08       	push   $0x80545c4
 80488aa:	e8 d1 09 00 00       	call   8049280 <printf>
 80488af:	b8 01 00 00 00       	mov    $0x1,%eax
 80488b4:	d6                   	(bad)  
 80488b5:	83 c4 20             	add    $0x20,%esp
 80488b8:	e9 ff fe ff ff       	jmp    80487bc <main_loop+0x2c>
 80488bd:	66 90                	xchg   %ax,%ax
 80488bf:	90                   	nop

080488c0 <fly_new>:
 80488c0:	55                   	push   %ebp
 80488c1:	89 e5                	mov    %esp,%ebp
 80488c3:	53                   	push   %ebx
 80488c4:	83 ec 04             	sub    $0x4,%esp
 80488c7:	8b 1d 0c 78 06 08    	mov    0x806780c,%ebx
 80488cd:	85 db                	test   %ebx,%ebx
 80488cf:	74 27                	je     80488f8 <fly_new+0x38>
 80488d1:	8b 43 14             	mov    0x14(%ebx),%eax
 80488d4:	85 c0                	test   %eax,%eax
 80488d6:	74 41                	je     8048919 <fly_new+0x59>
 80488d8:	a3 0c 78 06 08       	mov    %eax,0x806780c
 80488dd:	c7 43 14 00 00 00 00 	movl   $0x0,0x14(%ebx)
 80488e4:	89 d8                	mov    %ebx,%eax
 80488e6:	c7 43 10 00 00 00 00 	movl   $0x0,0x10(%ebx)
 80488ed:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 80488f0:	c9                   	leave  
 80488f1:	c3                   	ret    
 80488f2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 80488f8:	b8 58 78 06 08       	mov    $0x8067858,%eax
 80488fd:	8d 76 00             	lea    0x0(%esi),%esi
 8048900:	89 40 fc             	mov    %eax,-0x4(%eax)
 8048903:	83 c0 18             	add    $0x18,%eax
 8048906:	3d 18 d6 06 08       	cmp    $0x806d618,%eax
 804890b:	75 f3                	jne    8048900 <fly_new+0x40>
 804890d:	bb 40 78 06 08       	mov    $0x8067840,%ebx
 8048912:	8b 43 14             	mov    0x14(%ebx),%eax
 8048915:	85 c0                	test   %eax,%eax
 8048917:	75 bf                	jne    80488d8 <fly_new+0x18>
 8048919:	fa                   	cli    
 804891a:	83 ec 0c             	sub    $0xc,%esp
 804891d:	68 14 48 05 08       	push   $0x8054814
 8048922:	68 bd 48 05 08       	push   $0x80548bd
 8048927:	6a 0b                	push   $0xb
 8048929:	68 2d 48 05 08       	push   $0x805482d
 804892e:	68 c4 45 05 08       	push   $0x80545c4
 8048933:	e8 48 09 00 00       	call   8049280 <printf>
 8048938:	b8 01 00 00 00       	mov    $0x1,%eax
 804893d:	d6                   	(bad)  
 804893e:	8b 43 14             	mov    0x14(%ebx),%eax
 8048941:	83 c4 20             	add    $0x20,%esp
 8048944:	eb 92                	jmp    80488d8 <fly_new+0x18>
 8048946:	8d 76 00             	lea    0x0(%esi),%esi
 8048949:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

08048950 <fly_prev>:
 8048950:	55                   	push   %ebp
 8048951:	89 e5                	mov    %esp,%ebp
 8048953:	53                   	push   %ebx
 8048954:	83 ec 04             	sub    $0x4,%esp
 8048957:	8b 5d 08             	mov    0x8(%ebp),%ebx
 804895a:	85 db                	test   %ebx,%ebx
 804895c:	74 12                	je     8048970 <fly_prev+0x20>
 804895e:	8b 43 10             	mov    0x10(%ebx),%eax
 8048961:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 8048964:	c9                   	leave  
 8048965:	c3                   	ret    
 8048966:	8d 76 00             	lea    0x0(%esi),%esi
 8048969:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
 8048970:	fa                   	cli    
 8048971:	83 ec 0c             	sub    $0xc,%esp
 8048974:	68 46 48 05 08       	push   $0x8054846
 8048979:	68 b4 48 05 08       	push   $0x80548b4
 804897e:	6a 0b                	push   $0xb
 8048980:	68 2d 48 05 08       	push   $0x805482d
 8048985:	68 c4 45 05 08       	push   $0x80545c4
 804898a:	e8 f1 08 00 00       	call   8049280 <printf>
 804898f:	b8 01 00 00 00       	mov    $0x1,%eax
 8048994:	d6                   	(bad)  
 8048995:	8b 43 10             	mov    0x10(%ebx),%eax
 8048998:	83 c4 20             	add    $0x20,%esp
 804899b:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 804899e:	c9                   	leave  
 804899f:	c3                   	ret    

080489a0 <fly_next>:
 80489a0:	55                   	push   %ebp
 80489a1:	89 e5                	mov    %esp,%ebp
 80489a3:	53                   	push   %ebx
 80489a4:	83 ec 04             	sub    $0x4,%esp
 80489a7:	8b 5d 08             	mov    0x8(%ebp),%ebx
 80489aa:	85 db                	test   %ebx,%ebx
 80489ac:	74 12                	je     80489c0 <fly_next+0x20>
 80489ae:	8b 43 14             	mov    0x14(%ebx),%eax
 80489b1:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 80489b4:	c9                   	leave  
 80489b5:	c3                   	ret    
 80489b6:	8d 76 00             	lea    0x0(%esi),%esi
 80489b9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
 80489c0:	fa                   	cli    
 80489c1:	83 ec 0c             	sub    $0xc,%esp
 80489c4:	68 46 48 05 08       	push   $0x8054846
 80489c9:	68 ab 48 05 08       	push   $0x80548ab
 80489ce:	6a 0b                	push   $0xb
 80489d0:	68 2d 48 05 08       	push   $0x805482d
 80489d5:	68 c4 45 05 08       	push   $0x80545c4
 80489da:	e8 a1 08 00 00       	call   8049280 <printf>
 80489df:	b8 01 00 00 00       	mov    $0x1,%eax
 80489e4:	d6                   	(bad)  
 80489e5:	8b 43 14             	mov    0x14(%ebx),%eax
 80489e8:	83 c4 20             	add    $0x20,%esp
 80489eb:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 80489ee:	c9                   	leave  
 80489ef:	c3                   	ret    

080489f0 <fly_insert>:
 80489f0:	55                   	push   %ebp
 80489f1:	89 e5                	mov    %esp,%ebp
 80489f3:	53                   	push   %ebx
 80489f4:	83 ec 04             	sub    $0x4,%esp
 80489f7:	8b 45 08             	mov    0x8(%ebp),%eax
 80489fa:	8b 55 0c             	mov    0xc(%ebp),%edx
 80489fd:	8b 5d 10             	mov    0x10(%ebp),%ebx
 8048a00:	85 c0                	test   %eax,%eax
 8048a02:	75 04                	jne    8048a08 <fly_insert+0x18>
 8048a04:	85 d2                	test   %edx,%edx
 8048a06:	74 20                	je     8048a28 <fly_insert+0x38>
 8048a08:	85 c0                	test   %eax,%eax
 8048a0a:	89 43 10             	mov    %eax,0x10(%ebx)
 8048a0d:	89 53 14             	mov    %edx,0x14(%ebx)
 8048a10:	74 03                	je     8048a15 <fly_insert+0x25>
 8048a12:	89 58 14             	mov    %ebx,0x14(%eax)
 8048a15:	85 d2                	test   %edx,%edx
 8048a17:	74 03                	je     8048a1c <fly_insert+0x2c>
 8048a19:	89 5a 10             	mov    %ebx,0x10(%edx)
 8048a1c:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 8048a1f:	c9                   	leave  
 8048a20:	c3                   	ret    
 8048a21:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 8048a28:	fa                   	cli    
 8048a29:	83 ec 0c             	sub    $0xc,%esp
 8048a2c:	68 53 48 05 08       	push   $0x8054853
 8048a31:	68 a0 48 05 08       	push   $0x80548a0
 8048a36:	6a 0b                	push   $0xb
 8048a38:	68 2d 48 05 08       	push   $0x805482d
 8048a3d:	68 c4 45 05 08       	push   $0x80545c4
 8048a42:	e8 39 08 00 00       	call   8049280 <printf>
 8048a47:	b8 01 00 00 00       	mov    $0x1,%eax
 8048a4c:	d6                   	(bad)  
 8048a4d:	c7 43 10 00 00 00 00 	movl   $0x0,0x10(%ebx)
 8048a54:	c7 43 14 00 00 00 00 	movl   $0x0,0x14(%ebx)
 8048a5b:	83 c4 20             	add    $0x20,%esp
 8048a5e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 8048a61:	c9                   	leave  
 8048a62:	c3                   	ret    
 8048a63:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 8048a69:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

08048a70 <fly_remove>:
 8048a70:	55                   	push   %ebp
 8048a71:	89 e5                	mov    %esp,%ebp
 8048a73:	8b 45 08             	mov    0x8(%ebp),%eax
 8048a76:	8b 50 10             	mov    0x10(%eax),%edx
 8048a79:	8b 40 14             	mov    0x14(%eax),%eax
 8048a7c:	85 d2                	test   %edx,%edx
 8048a7e:	74 03                	je     8048a83 <fly_remove+0x13>
 8048a80:	89 42 14             	mov    %eax,0x14(%edx)
 8048a83:	85 c0                	test   %eax,%eax
 8048a85:	74 03                	je     8048a8a <fly_remove+0x1a>
 8048a87:	89 50 10             	mov    %edx,0x10(%eax)
 8048a8a:	5d                   	pop    %ebp
 8048a8b:	c3                   	ret    
 8048a8c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

08048a90 <fly_free>:
 8048a90:	55                   	push   %ebp
 8048a91:	8b 15 0c 78 06 08    	mov    0x806780c,%edx
 8048a97:	89 e5                	mov    %esp,%ebp
 8048a99:	8b 45 08             	mov    0x8(%ebp),%eax
 8048a9c:	89 50 14             	mov    %edx,0x14(%eax)
 8048a9f:	a3 0c 78 06 08       	mov    %eax,0x806780c
 8048aa4:	5d                   	pop    %ebp
 8048aa5:	c3                   	ret    
 8048aa6:	8d 76 00             	lea    0x0(%esi),%esi
 8048aa9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

08048ab0 <get_hit>:
 8048ab0:	55                   	push   %ebp
 8048ab1:	a1 04 78 06 08       	mov    0x8067804,%eax
 8048ab6:	89 e5                	mov    %esp,%ebp
 8048ab8:	5d                   	pop    %ebp
 8048ab9:	c3                   	ret    
 8048aba:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

08048ac0 <get_miss>:
 8048ac0:	55                   	push   %ebp
 8048ac1:	a1 00 78 06 08       	mov    0x8067800,%eax
 8048ac6:	89 e5                	mov    %esp,%ebp
 8048ac8:	5d                   	pop    %ebp
 8048ac9:	c3                   	ret    
 8048aca:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

08048ad0 <characters>:
 8048ad0:	55                   	push   %ebp
 8048ad1:	a1 08 78 06 08       	mov    0x8067808,%eax
 8048ad6:	89 e5                	mov    %esp,%ebp
 8048ad8:	5d                   	pop    %ebp
 8048ad9:	c3                   	ret    
 8048ada:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

08048ae0 <create_new_letter>:
 8048ae0:	8b 15 08 78 06 08    	mov    0x8067808,%edx
 8048ae6:	55                   	push   %ebp
 8048ae7:	89 e5                	mov    %esp,%ebp
 8048ae9:	56                   	push   %esi
 8048aea:	53                   	push   %ebx
 8048aeb:	85 d2                	test   %edx,%edx
 8048aed:	0f 84 f5 00 00 00    	je     8048be8 <create_new_letter+0x108>
 8048af3:	e8 c8 fd ff ff       	call   80488c0 <fly_new>
 8048af8:	83 ec 04             	sub    $0x4,%esp
 8048afb:	89 c3                	mov    %eax,%ebx
 8048afd:	50                   	push   %eax
 8048afe:	ff 35 08 78 06 08    	pushl  0x8067808
 8048b04:	6a 00                	push   $0x0
 8048b06:	e8 e5 fe ff ff       	call   80489f0 <fly_insert>
 8048b0b:	89 1d 08 78 06 08    	mov    %ebx,0x8067808
 8048b11:	83 c4 10             	add    $0x10,%esp
 8048b14:	c7 03 00 00 00 00    	movl   $0x0,(%ebx)
 8048b1a:	e8 b1 07 00 00       	call   80492d0 <rand>
 8048b1f:	ba f3 1a ca 6b       	mov    $0x6bca1af3,%edx
 8048b24:	89 c1                	mov    %eax,%ecx
 8048b26:	f7 ea                	imul   %edx
 8048b28:	89 c8                	mov    %ecx,%eax
 8048b2a:	c1 f8 1f             	sar    $0x1f,%eax
 8048b2d:	c1 fa 04             	sar    $0x4,%edx
 8048b30:	29 c2                	sub    %eax,%edx
 8048b32:	6b d2 26             	imul   $0x26,%edx,%edx
 8048b35:	29 d1                	sub    %edx,%ecx
 8048b37:	8d 04 cd 08 00 00 00 	lea    0x8(,%ecx,8),%eax
 8048b3e:	89 43 04             	mov    %eax,0x4(%ebx)
 8048b41:	8b 1d 08 78 06 08    	mov    0x8067808,%ebx
 8048b47:	e8 84 07 00 00       	call   80492d0 <rand>
 8048b4c:	ba d3 4d 62 10       	mov    $0x10624dd3,%edx
 8048b51:	89 c1                	mov    %eax,%ecx
 8048b53:	f7 ea                	imul   %edx
 8048b55:	89 c8                	mov    %ecx,%eax
 8048b57:	c1 f8 1f             	sar    $0x1f,%eax
 8048b5a:	c1 fa 06             	sar    $0x6,%edx
 8048b5d:	29 c2                	sub    %eax,%edx
 8048b5f:	69 d2 e8 03 00 00    	imul   $0x3e8,%edx,%edx
 8048b65:	29 d1                	sub    %edx,%ecx
 8048b67:	89 c8                	mov    %ecx,%eax
 8048b69:	89 ca                	mov    %ecx,%edx
 8048b6b:	25 00 00 00 80       	and    $0x80000000,%eax
 8048b70:	31 c2                	xor    %eax,%edx
 8048b72:	85 c0                	test   %eax,%eax
 8048b74:	0f 95 c0             	setne  %al
 8048b77:	c1 e2 10             	shl    $0x10,%edx
 8048b7a:	83 ec 08             	sub    $0x8,%esp
 8048b7d:	0f b6 c0             	movzbl %al,%eax
 8048b80:	68 00 00 d0 07       	push   $0x7d00000
 8048b85:	89 c1                	mov    %eax,%ecx
 8048b87:	f7 d9                	neg    %ecx
 8048b89:	31 ca                	xor    %ecx,%edx
 8048b8b:	01 c2                	add    %eax,%edx
 8048b8d:	52                   	push   %edx
 8048b8e:	e8 89 03 00 00       	call   8048f1c <F_div_F>
 8048b93:	89 c6                	mov    %eax,%esi
 8048b95:	c7 04 24 00 00 00 3f 	movl   $0x3f000000,(%esp)
 8048b9c:	e8 78 04 00 00       	call   8049019 <f2F>
 8048ba1:	01 f0                	add    %esi,%eax
 8048ba3:	89 43 0c             	mov    %eax,0xc(%ebx)
 8048ba6:	8b 1d 08 78 06 08    	mov    0x8067808,%ebx
 8048bac:	e8 1f 07 00 00       	call   80492d0 <rand>
 8048bb1:	ba 4f ec c4 4e       	mov    $0x4ec4ec4f,%edx
 8048bb6:	89 c1                	mov    %eax,%ecx
 8048bb8:	f7 ea                	imul   %edx
 8048bba:	89 c8                	mov    %ecx,%eax
 8048bbc:	c1 f8 1f             	sar    $0x1f,%eax
 8048bbf:	c1 fa 03             	sar    $0x3,%edx
 8048bc2:	29 c2                	sub    %eax,%edx
 8048bc4:	6b d2 1a             	imul   $0x1a,%edx,%edx
 8048bc7:	29 d1                	sub    %edx,%ecx
 8048bc9:	89 4b 08             	mov    %ecx,0x8(%ebx)
 8048bcc:	58                   	pop    %eax
 8048bcd:	a1 08 78 06 08       	mov    0x8067808,%eax
 8048bd2:	ff 70 08             	pushl  0x8(%eax)
 8048bd5:	e8 76 fa ff ff       	call   8048650 <release_key>
 8048bda:	83 c4 10             	add    $0x10,%esp
 8048bdd:	8d 65 f8             	lea    -0x8(%ebp),%esp
 8048be0:	5b                   	pop    %ebx
 8048be1:	5e                   	pop    %esi
 8048be2:	5d                   	pop    %ebp
 8048be3:	c3                   	ret    
 8048be4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8048be8:	e8 d3 fc ff ff       	call   80488c0 <fly_new>
 8048bed:	89 c3                	mov    %eax,%ebx
 8048bef:	a3 08 78 06 08       	mov    %eax,0x8067808
 8048bf4:	e9 1b ff ff ff       	jmp    8048b14 <create_new_letter+0x34>
 8048bf9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

08048c00 <update_letter_pos>:
 8048c00:	55                   	push   %ebp
 8048c01:	89 e5                	mov    %esp,%ebp
 8048c03:	57                   	push   %edi
 8048c04:	56                   	push   %esi
 8048c05:	53                   	push   %ebx
 8048c06:	83 ec 0c             	sub    $0xc,%esp
 8048c09:	8b 1d 08 78 06 08    	mov    0x8067808,%ebx
 8048c0f:	85 db                	test   %ebx,%ebx
 8048c11:	75 54                	jne    8048c67 <update_letter_pos+0x67>
 8048c13:	eb 7b                	jmp    8048c90 <update_letter_pos+0x90>
 8048c15:	8d 76 00             	lea    0x0(%esi),%esi
 8048c18:	83 ec 0c             	sub    $0xc,%esp
 8048c1b:	68 cd cc fc 40       	push   $0x40fccccd
 8048c20:	e8 f4 03 00 00       	call   8049019 <f2F>
 8048c25:	01 c6                	add    %eax,%esi
 8048c27:	83 c4 10             	add    $0x10,%esp
 8048c2a:	81 fe 00 00 c8 00    	cmp    $0xc80000,%esi
 8048c30:	7e 2f                	jle    8048c61 <update_letter_pos+0x61>
 8048c32:	8b 03                	mov    (%ebx),%eax
 8048c34:	85 c0                	test   %eax,%eax
 8048c36:	78 3d                	js     8048c75 <update_letter_pos+0x75>
 8048c38:	83 05 00 78 06 08 01 	addl   $0x1,0x8067800
 8048c3f:	83 ec 0c             	sub    $0xc,%esp
 8048c42:	53                   	push   %ebx
 8048c43:	e8 28 fe ff ff       	call   8048a70 <fly_remove>
 8048c48:	83 c4 10             	add    $0x10,%esp
 8048c4b:	3b 1d 08 78 06 08    	cmp    0x8067808,%ebx
 8048c51:	a1 0c 78 06 08       	mov    0x806780c,%eax
 8048c56:	89 1d 0c 78 06 08    	mov    %ebx,0x806780c
 8048c5c:	89 43 14             	mov    %eax,0x14(%ebx)
 8048c5f:	74 1f                	je     8048c80 <update_letter_pos+0x80>
 8048c61:	85 ff                	test   %edi,%edi
 8048c63:	89 fb                	mov    %edi,%ebx
 8048c65:	74 29                	je     8048c90 <update_letter_pos+0x90>
 8048c67:	8b 73 0c             	mov    0xc(%ebx),%esi
 8048c6a:	03 33                	add    (%ebx),%esi
 8048c6c:	8b 7b 14             	mov    0x14(%ebx),%edi
 8048c6f:	85 f6                	test   %esi,%esi
 8048c71:	89 33                	mov    %esi,(%ebx)
 8048c73:	79 a3                	jns    8048c18 <update_letter_pos+0x18>
 8048c75:	83 05 04 78 06 08 01 	addl   $0x1,0x8067804
 8048c7c:	eb c1                	jmp    8048c3f <update_letter_pos+0x3f>
 8048c7e:	66 90                	xchg   %ax,%ax
 8048c80:	85 ff                	test   %edi,%edi
 8048c82:	89 3d 08 78 06 08    	mov    %edi,0x8067808
 8048c88:	89 fb                	mov    %edi,%ebx
 8048c8a:	75 db                	jne    8048c67 <update_letter_pos+0x67>
 8048c8c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8048c90:	8d 65 f4             	lea    -0xc(%ebp),%esp
 8048c93:	5b                   	pop    %ebx
 8048c94:	5e                   	pop    %esi
 8048c95:	5f                   	pop    %edi
 8048c96:	5d                   	pop    %ebp
 8048c97:	c3                   	ret    
 8048c98:	90                   	nop
 8048c99:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

08048ca0 <update_keypress>:
 8048ca0:	55                   	push   %ebp
 8048ca1:	89 e5                	mov    %esp,%ebp
 8048ca3:	57                   	push   %edi
 8048ca4:	56                   	push   %esi
 8048ca5:	53                   	push   %ebx
 8048ca6:	83 ec 0c             	sub    $0xc,%esp
 8048ca9:	fa                   	cli    
 8048caa:	8b 3d 08 78 06 08    	mov    0x8067808,%edi
 8048cb0:	85 ff                	test   %edi,%edi
 8048cb2:	0f 84 a8 00 00 00    	je     8048d60 <update_keypress+0xc0>
 8048cb8:	bb 00 00 9c ff       	mov    $0xff9c0000,%ebx
 8048cbd:	31 f6                	xor    %esi,%esi
 8048cbf:	eb 19                	jmp    8048cda <update_keypress+0x3a>
 8048cc1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 8048cc8:	8b 47 0c             	mov    0xc(%edi),%eax
 8048ccb:	85 c0                	test   %eax,%eax
 8048ccd:	7e 04                	jle    8048cd3 <update_keypress+0x33>
 8048ccf:	39 1f                	cmp    %ebx,(%edi)
 8048cd1:	7f 3d                	jg     8048d10 <update_keypress+0x70>
 8048cd3:	8b 7f 14             	mov    0x14(%edi),%edi
 8048cd6:	85 ff                	test   %edi,%edi
 8048cd8:	74 56                	je     8048d30 <update_keypress+0x90>
 8048cda:	83 7f 08 19          	cmpl   $0x19,0x8(%edi)
 8048cde:	76 e8                	jbe    8048cc8 <update_keypress+0x28>
 8048ce0:	fa                   	cli    
 8048ce1:	83 ec 0c             	sub    $0xc,%esp
 8048ce4:	68 70 48 05 08       	push   $0x8054870
 8048ce9:	68 90 48 05 08       	push   $0x8054890
 8048cee:	6a 4c                	push   $0x4c
 8048cf0:	68 2d 48 05 08       	push   $0x805482d
 8048cf5:	68 c4 45 05 08       	push   $0x80545c4
 8048cfa:	e8 81 05 00 00       	call   8049280 <printf>
 8048cff:	b8 01 00 00 00       	mov    $0x1,%eax
 8048d04:	d6                   	(bad)  
 8048d05:	83 c4 20             	add    $0x20,%esp
 8048d08:	eb be                	jmp    8048cc8 <update_keypress+0x28>
 8048d0a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 8048d10:	83 ec 0c             	sub    $0xc,%esp
 8048d13:	ff 77 08             	pushl  0x8(%edi)
 8048d16:	e8 85 f9 ff ff       	call   80486a0 <query_key>
 8048d1b:	83 c4 10             	add    $0x10,%esp
 8048d1e:	84 c0                	test   %al,%al
 8048d20:	74 b1                	je     8048cd3 <update_keypress+0x33>
 8048d22:	8b 1f                	mov    (%edi),%ebx
 8048d24:	89 fe                	mov    %edi,%esi
 8048d26:	8b 7f 14             	mov    0x14(%edi),%edi
 8048d29:	85 ff                	test   %edi,%edi
 8048d2b:	75 ad                	jne    8048cda <update_keypress+0x3a>
 8048d2d:	8d 76 00             	lea    0x0(%esi),%esi
 8048d30:	85 f6                	test   %esi,%esi
 8048d32:	74 2c                	je     8048d60 <update_keypress+0xc0>
 8048d34:	83 ec 0c             	sub    $0xc,%esp
 8048d37:	ff 76 08             	pushl  0x8(%esi)
 8048d3a:	e8 11 f9 ff ff       	call   8048650 <release_key>
 8048d3f:	c7 46 0c 00 00 fd ff 	movl   $0xfffd0000,0xc(%esi)
 8048d46:	83 c4 10             	add    $0x10,%esp
 8048d49:	8d 65 f4             	lea    -0xc(%ebp),%esp
 8048d4c:	b8 01 00 00 00       	mov    $0x1,%eax
 8048d51:	5b                   	pop    %ebx
 8048d52:	5e                   	pop    %esi
 8048d53:	5f                   	pop    %edi
 8048d54:	5d                   	pop    %ebp
 8048d55:	c3                   	ret    
 8048d56:	8d 76 00             	lea    0x0(%esi),%esi
 8048d59:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
 8048d60:	fb                   	sti    
 8048d61:	8d 65 f4             	lea    -0xc(%ebp),%esp
 8048d64:	31 c0                	xor    %eax,%eax
 8048d66:	5b                   	pop    %ebx
 8048d67:	5e                   	pop    %esi
 8048d68:	5f                   	pop    %edi
 8048d69:	5d                   	pop    %ebp
 8048d6a:	c3                   	ret    

08048d6b <int2F>:
 8048d6b:	55                   	push   %ebp
 8048d6c:	89 e5                	mov    %esp,%ebp
 8048d6e:	83 ec 10             	sub    $0x10,%esp
 8048d71:	8b 45 08             	mov    0x8(%ebp),%eax
 8048d74:	25 00 00 00 80       	and    $0x80000000,%eax
 8048d79:	89 45 fc             	mov    %eax,-0x4(%ebp)
 8048d7c:	8b 45 fc             	mov    -0x4(%ebp),%eax
 8048d7f:	31 45 08             	xor    %eax,0x8(%ebp)
 8048d82:	c1 65 08 10          	shll   $0x10,0x8(%ebp)
 8048d86:	83 7d fc 00          	cmpl   $0x0,-0x4(%ebp)
 8048d8a:	74 03                	je     8048d8f <int2F+0x24>
 8048d8c:	f7 5d 08             	negl   0x8(%ebp)
 8048d8f:	8b 45 08             	mov    0x8(%ebp),%eax
 8048d92:	c9                   	leave  
 8048d93:	c3                   	ret    

08048d94 <F_div_int>:
 8048d94:	55                   	push   %ebp
 8048d95:	89 e5                	mov    %esp,%ebp
 8048d97:	8b 45 08             	mov    0x8(%ebp),%eax
 8048d9a:	99                   	cltd   
 8048d9b:	f7 7d 0c             	idivl  0xc(%ebp)
 8048d9e:	5d                   	pop    %ebp
 8048d9f:	c3                   	ret    

08048da0 <F_mul_F>:
 8048da0:	55                   	push   %ebp
 8048da1:	89 e5                	mov    %esp,%ebp
 8048da3:	53                   	push   %ebx
 8048da4:	83 ec 14             	sub    $0x14,%esp
 8048da7:	8b 45 08             	mov    0x8(%ebp),%eax
 8048daa:	99                   	cltd   
 8048dab:	89 45 f0             	mov    %eax,-0x10(%ebp)
 8048dae:	89 55 f4             	mov    %edx,-0xc(%ebp)
 8048db1:	8b 45 0c             	mov    0xc(%ebp),%eax
 8048db4:	99                   	cltd   
 8048db5:	8b 4d f4             	mov    -0xc(%ebp),%ecx
 8048db8:	89 cb                	mov    %ecx,%ebx
 8048dba:	0f af d8             	imul   %eax,%ebx
 8048dbd:	8b 4d f0             	mov    -0x10(%ebp),%ecx
 8048dc0:	0f af ca             	imul   %edx,%ecx
 8048dc3:	01 d9                	add    %ebx,%ecx
 8048dc5:	f7 65 f0             	mull   -0x10(%ebp)
 8048dc8:	01 d1                	add    %edx,%ecx
 8048dca:	89 ca                	mov    %ecx,%edx
 8048dcc:	89 45 f0             	mov    %eax,-0x10(%ebp)
 8048dcf:	89 55 f4             	mov    %edx,-0xc(%ebp)
 8048dd2:	89 45 f0             	mov    %eax,-0x10(%ebp)
 8048dd5:	89 55 f4             	mov    %edx,-0xc(%ebp)
 8048dd8:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8048ddb:	8b 55 f4             	mov    -0xc(%ebp),%edx
 8048dde:	0f ac d0 10          	shrd   $0x10,%edx,%eax
 8048de2:	c1 fa 10             	sar    $0x10,%edx
 8048de5:	89 45 f0             	mov    %eax,-0x10(%ebp)
 8048de8:	89 55 f4             	mov    %edx,-0xc(%ebp)
 8048deb:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8048dee:	89 45 08             	mov    %eax,0x8(%ebp)
 8048df1:	8b 45 08             	mov    0x8(%ebp),%eax
 8048df4:	83 c4 14             	add    $0x14,%esp
 8048df7:	5b                   	pop    %ebx
 8048df8:	5d                   	pop    %ebp
 8048df9:	c3                   	ret    

08048dfa <howManyBits>:
 8048dfa:	55                   	push   %ebp
 8048dfb:	89 e5                	mov    %esp,%ebp
 8048dfd:	83 ec 10             	sub    $0x10,%esp
 8048e00:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
 8048e07:	8b 45 08             	mov    0x8(%ebp),%eax
 8048e0a:	c1 e0 10             	shl    $0x10,%eax
 8048e0d:	c1 f8 10             	sar    $0x10,%eax
 8048e10:	3b 45 08             	cmp    0x8(%ebp),%eax
 8048e13:	0f 94 c0             	sete   %al
 8048e16:	0f b6 c0             	movzbl %al,%eax
 8048e19:	89 45 f8             	mov    %eax,-0x8(%ebp)
 8048e1c:	8b 45 08             	mov    0x8(%ebp),%eax
 8048e1f:	c1 f8 1f             	sar    $0x1f,%eax
 8048e22:	31 45 08             	xor    %eax,0x8(%ebp)
 8048e25:	8b 45 f8             	mov    -0x8(%ebp),%eax
 8048e28:	c1 e0 04             	shl    $0x4,%eax
 8048e2b:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8048e2e:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8048e31:	89 45 fc             	mov    %eax,-0x4(%ebp)
 8048e34:	8b 45 fc             	mov    -0x4(%ebp),%eax
 8048e37:	83 c0 08             	add    $0x8,%eax
 8048e3a:	89 45 f0             	mov    %eax,-0x10(%ebp)
 8048e3d:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8048e40:	8b 55 08             	mov    0x8(%ebp),%edx
 8048e43:	89 c1                	mov    %eax,%ecx
 8048e45:	d3 e2                	shl    %cl,%edx
 8048e47:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8048e4a:	89 c1                	mov    %eax,%ecx
 8048e4c:	d3 fa                	sar    %cl,%edx
 8048e4e:	89 d0                	mov    %edx,%eax
 8048e50:	3b 45 08             	cmp    0x8(%ebp),%eax
 8048e53:	0f 94 c0             	sete   %al
 8048e56:	0f b6 c0             	movzbl %al,%eax
 8048e59:	89 45 f8             	mov    %eax,-0x8(%ebp)
 8048e5c:	8b 45 f8             	mov    -0x8(%ebp),%eax
 8048e5f:	c1 e0 03             	shl    $0x3,%eax
 8048e62:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8048e65:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8048e68:	01 45 fc             	add    %eax,-0x4(%ebp)
 8048e6b:	8b 45 fc             	mov    -0x4(%ebp),%eax
 8048e6e:	83 c0 04             	add    $0x4,%eax
 8048e71:	89 45 f0             	mov    %eax,-0x10(%ebp)
 8048e74:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8048e77:	8b 55 08             	mov    0x8(%ebp),%edx
 8048e7a:	89 c1                	mov    %eax,%ecx
 8048e7c:	d3 e2                	shl    %cl,%edx
 8048e7e:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8048e81:	89 c1                	mov    %eax,%ecx
 8048e83:	d3 fa                	sar    %cl,%edx
 8048e85:	89 d0                	mov    %edx,%eax
 8048e87:	3b 45 08             	cmp    0x8(%ebp),%eax
 8048e8a:	0f 94 c0             	sete   %al
 8048e8d:	0f b6 c0             	movzbl %al,%eax
 8048e90:	89 45 f8             	mov    %eax,-0x8(%ebp)
 8048e93:	8b 45 f8             	mov    -0x8(%ebp),%eax
 8048e96:	c1 e0 02             	shl    $0x2,%eax
 8048e99:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8048e9c:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8048e9f:	01 45 fc             	add    %eax,-0x4(%ebp)
 8048ea2:	8b 45 fc             	mov    -0x4(%ebp),%eax
 8048ea5:	83 c0 02             	add    $0x2,%eax
 8048ea8:	89 45 f0             	mov    %eax,-0x10(%ebp)
 8048eab:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8048eae:	8b 55 08             	mov    0x8(%ebp),%edx
 8048eb1:	89 c1                	mov    %eax,%ecx
 8048eb3:	d3 e2                	shl    %cl,%edx
 8048eb5:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8048eb8:	89 c1                	mov    %eax,%ecx
 8048eba:	d3 fa                	sar    %cl,%edx
 8048ebc:	89 d0                	mov    %edx,%eax
 8048ebe:	3b 45 08             	cmp    0x8(%ebp),%eax
 8048ec1:	0f 94 c0             	sete   %al
 8048ec4:	0f b6 c0             	movzbl %al,%eax
 8048ec7:	89 45 f8             	mov    %eax,-0x8(%ebp)
 8048eca:	8b 45 f8             	mov    -0x8(%ebp),%eax
 8048ecd:	01 c0                	add    %eax,%eax
 8048ecf:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8048ed2:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8048ed5:	01 45 fc             	add    %eax,-0x4(%ebp)
 8048ed8:	8b 45 fc             	mov    -0x4(%ebp),%eax
 8048edb:	83 c0 01             	add    $0x1,%eax
 8048ede:	89 45 f0             	mov    %eax,-0x10(%ebp)
 8048ee1:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8048ee4:	8b 55 08             	mov    0x8(%ebp),%edx
 8048ee7:	89 c1                	mov    %eax,%ecx
 8048ee9:	d3 e2                	shl    %cl,%edx
 8048eeb:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8048eee:	89 c1                	mov    %eax,%ecx
 8048ef0:	d3 fa                	sar    %cl,%edx
 8048ef2:	89 d0                	mov    %edx,%eax
 8048ef4:	3b 45 08             	cmp    0x8(%ebp),%eax
 8048ef7:	0f 94 c0             	sete   %al
 8048efa:	0f b6 c0             	movzbl %al,%eax
 8048efd:	89 45 f8             	mov    %eax,-0x8(%ebp)
 8048f00:	8b 45 f8             	mov    -0x8(%ebp),%eax
 8048f03:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8048f06:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8048f09:	01 45 fc             	add    %eax,-0x4(%ebp)
 8048f0c:	b8 20 00 00 00       	mov    $0x20,%eax
 8048f11:	2b 45 fc             	sub    -0x4(%ebp),%eax
 8048f14:	89 45 fc             	mov    %eax,-0x4(%ebp)
 8048f17:	8b 45 fc             	mov    -0x4(%ebp),%eax
 8048f1a:	c9                   	leave  
 8048f1b:	c3                   	ret    

08048f1c <F_div_F>:
 8048f1c:	55                   	push   %ebp
 8048f1d:	89 e5                	mov    %esp,%ebp
 8048f1f:	83 ec 30             	sub    $0x30,%esp
 8048f22:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
 8048f29:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
 8048f30:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 8048f34:	79 0a                	jns    8048f40 <F_div_F+0x24>
 8048f36:	c7 45 fc 01 00 00 00 	movl   $0x1,-0x4(%ebp)
 8048f3d:	f7 5d 08             	negl   0x8(%ebp)
 8048f40:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
 8048f44:	79 0a                	jns    8048f50 <F_div_F+0x34>
 8048f46:	c7 45 f8 01 00 00 00 	movl   $0x1,-0x8(%ebp)
 8048f4d:	f7 5d 0c             	negl   0xc(%ebp)
 8048f50:	8b 45 08             	mov    0x8(%ebp),%eax
 8048f53:	99                   	cltd   
 8048f54:	89 45 f0             	mov    %eax,-0x10(%ebp)
 8048f57:	89 55 f4             	mov    %edx,-0xc(%ebp)
 8048f5a:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8048f5d:	8b 55 f4             	mov    -0xc(%ebp),%edx
 8048f60:	0f a4 c2 10          	shld   $0x10,%eax,%edx
 8048f64:	c1 e0 10             	shl    $0x10,%eax
 8048f67:	89 45 f0             	mov    %eax,-0x10(%ebp)
 8048f6a:	89 55 f4             	mov    %edx,-0xc(%ebp)
 8048f6d:	ff 75 0c             	pushl  0xc(%ebp)
 8048f70:	e8 85 fe ff ff       	call   8048dfa <howManyBits>
 8048f75:	83 c4 04             	add    $0x4,%esp
 8048f78:	89 45 e0             	mov    %eax,-0x20(%ebp)
 8048f7b:	8b 45 0c             	mov    0xc(%ebp),%eax
 8048f7e:	99                   	cltd   
 8048f7f:	89 45 d8             	mov    %eax,-0x28(%ebp)
 8048f82:	89 55 dc             	mov    %edx,-0x24(%ebp)
 8048f85:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
 8048f8c:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
 8048f93:	b8 40 00 00 00       	mov    $0x40,%eax
 8048f98:	2b 45 e0             	sub    -0x20(%ebp),%eax
 8048f9b:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 8048f9e:	eb 5c                	jmp    8048ffc <F_div_F+0xe0>
 8048fa0:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
 8048fa3:	8b 45 d8             	mov    -0x28(%ebp),%eax
 8048fa6:	8b 55 dc             	mov    -0x24(%ebp),%edx
 8048fa9:	0f a5 c2             	shld   %cl,%eax,%edx
 8048fac:	d3 e0                	shl    %cl,%eax
 8048fae:	f6 c1 20             	test   $0x20,%cl
 8048fb1:	74 04                	je     8048fb7 <F_div_F+0x9b>
 8048fb3:	89 c2                	mov    %eax,%edx
 8048fb5:	31 c0                	xor    %eax,%eax
 8048fb7:	3b 55 f4             	cmp    -0xc(%ebp),%edx
 8048fba:	7f 3c                	jg     8048ff8 <F_div_F+0xdc>
 8048fbc:	3b 55 f4             	cmp    -0xc(%ebp),%edx
 8048fbf:	7c 05                	jl     8048fc6 <F_div_F+0xaa>
 8048fc1:	3b 45 f0             	cmp    -0x10(%ebp),%eax
 8048fc4:	77 32                	ja     8048ff8 <F_div_F+0xdc>
 8048fc6:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 8048fc9:	ba 01 00 00 00       	mov    $0x1,%edx
 8048fce:	89 c1                	mov    %eax,%ecx
 8048fd0:	d3 e2                	shl    %cl,%edx
 8048fd2:	89 d0                	mov    %edx,%eax
 8048fd4:	99                   	cltd   
 8048fd5:	01 45 e8             	add    %eax,-0x18(%ebp)
 8048fd8:	11 55 ec             	adc    %edx,-0x14(%ebp)
 8048fdb:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
 8048fde:	8b 45 d8             	mov    -0x28(%ebp),%eax
 8048fe1:	8b 55 dc             	mov    -0x24(%ebp),%edx
 8048fe4:	0f a5 c2             	shld   %cl,%eax,%edx
 8048fe7:	d3 e0                	shl    %cl,%eax
 8048fe9:	f6 c1 20             	test   $0x20,%cl
 8048fec:	74 04                	je     8048ff2 <F_div_F+0xd6>
 8048fee:	89 c2                	mov    %eax,%edx
 8048ff0:	31 c0                	xor    %eax,%eax
 8048ff2:	29 45 f0             	sub    %eax,-0x10(%ebp)
 8048ff5:	19 55 f4             	sbb    %edx,-0xc(%ebp)
 8048ff8:	83 6d e4 01          	subl   $0x1,-0x1c(%ebp)
 8048ffc:	83 7d e4 00          	cmpl   $0x0,-0x1c(%ebp)
 8049000:	79 9e                	jns    8048fa0 <F_div_F+0x84>
 8049002:	8b 45 fc             	mov    -0x4(%ebp),%eax
 8049005:	3b 45 f8             	cmp    -0x8(%ebp),%eax
 8049008:	74 0a                	je     8049014 <F_div_F+0xf8>
 804900a:	f7 5d e8             	negl   -0x18(%ebp)
 804900d:	83 55 ec 00          	adcl   $0x0,-0x14(%ebp)
 8049011:	f7 5d ec             	negl   -0x14(%ebp)
 8049014:	8b 45 e8             	mov    -0x18(%ebp),%eax
 8049017:	c9                   	leave  
 8049018:	c3                   	ret    

08049019 <f2F>:
 8049019:	55                   	push   %ebp
 804901a:	89 e5                	mov    %esp,%ebp
 804901c:	83 ec 10             	sub    $0x10,%esp
 804901f:	8b 45 08             	mov    0x8(%ebp),%eax
 8049022:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8049025:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8049028:	05 00 00 00 08       	add    $0x8000000,%eax
 804902d:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8049030:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8049033:	25 00 00 00 80       	and    $0x80000000,%eax
 8049038:	89 45 fc             	mov    %eax,-0x4(%ebp)
 804903b:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804903e:	25 00 00 80 7f       	and    $0x7f800000,%eax
 8049043:	c1 f8 17             	sar    $0x17,%eax
 8049046:	89 45 f8             	mov    %eax,-0x8(%ebp)
 8049049:	81 7d f8 ff 00 00 00 	cmpl   $0xff,-0x8(%ebp)
 8049050:	75 07                	jne    8049059 <f2F+0x40>
 8049052:	b8 00 00 00 80       	mov    $0x80000000,%eax
 8049057:	eb 6f                	jmp    80490c8 <f2F+0xaf>
 8049059:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804905c:	25 ff ff 7f 00       	and    $0x7fffff,%eax
 8049061:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8049064:	83 7d f8 7e          	cmpl   $0x7e,-0x8(%ebp)
 8049068:	77 07                	ja     8049071 <f2F+0x58>
 804906a:	b8 00 00 00 00       	mov    $0x0,%eax
 804906f:	eb 57                	jmp    80490c8 <f2F+0xaf>
 8049071:	83 6d f8 7f          	subl   $0x7f,-0x8(%ebp)
 8049075:	83 7d f8 36          	cmpl   $0x36,-0x8(%ebp)
 8049079:	76 07                	jbe    8049082 <f2F+0x69>
 804907b:	b8 00 00 00 80       	mov    $0x80000000,%eax
 8049080:	eb 46                	jmp    80490c8 <f2F+0xaf>
 8049082:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8049085:	05 00 00 80 00       	add    $0x800000,%eax
 804908a:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804908d:	83 7d f8 16          	cmpl   $0x16,-0x8(%ebp)
 8049091:	76 12                	jbe    80490a5 <f2F+0x8c>
 8049093:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8049096:	8b 55 f8             	mov    -0x8(%ebp),%edx
 8049099:	83 ea 17             	sub    $0x17,%edx
 804909c:	89 d1                	mov    %edx,%ecx
 804909e:	d3 e0                	shl    %cl,%eax
 80490a0:	89 45 f4             	mov    %eax,-0xc(%ebp)
 80490a3:	eb 12                	jmp    80490b7 <f2F+0x9e>
 80490a5:	8b 45 f4             	mov    -0xc(%ebp),%eax
 80490a8:	ba 17 00 00 00       	mov    $0x17,%edx
 80490ad:	2b 55 f8             	sub    -0x8(%ebp),%edx
 80490b0:	89 d1                	mov    %edx,%ecx
 80490b2:	d3 f8                	sar    %cl,%eax
 80490b4:	89 45 f4             	mov    %eax,-0xc(%ebp)
 80490b7:	83 7d fc 00          	cmpl   $0x0,-0x4(%ebp)
 80490bb:	74 08                	je     80490c5 <f2F+0xac>
 80490bd:	8b 45 f4             	mov    -0xc(%ebp),%eax
 80490c0:	f7 d8                	neg    %eax
 80490c2:	89 45 f4             	mov    %eax,-0xc(%ebp)
 80490c5:	8b 45 f4             	mov    -0xc(%ebp),%eax
 80490c8:	c9                   	leave  
 80490c9:	c3                   	ret    

080490ca <Fabs>:
 80490ca:	55                   	push   %ebp
 80490cb:	89 e5                	mov    %esp,%ebp
 80490cd:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 80490d1:	79 03                	jns    80490d6 <Fabs+0xc>
 80490d3:	f7 5d 08             	negl   0x8(%ebp)
 80490d6:	8b 45 08             	mov    0x8(%ebp),%eax
 80490d9:	5d                   	pop    %ebp
 80490da:	c3                   	ret    

080490db <sqrt>:
 80490db:	55                   	push   %ebp
 80490dc:	89 e5                	mov    %esp,%ebp
 80490de:	53                   	push   %ebx
 80490df:	83 ec 14             	sub    $0x14,%esp
 80490e2:	6a 02                	push   $0x2
 80490e4:	e8 82 fc ff ff       	call   8048d6b <int2F>
 80490e9:	83 c4 04             	add    $0x4,%esp
 80490ec:	89 45 f4             	mov    %eax,-0xc(%ebp)
 80490ef:	ff 75 f4             	pushl  -0xc(%ebp)
 80490f2:	ff 75 08             	pushl  0x8(%ebp)
 80490f5:	e8 22 fe ff ff       	call   8048f1c <F_div_F>
 80490fa:	83 c4 08             	add    $0x8,%esp
 80490fd:	2b 45 f4             	sub    -0xc(%ebp),%eax
 8049100:	6a 02                	push   $0x2
 8049102:	50                   	push   %eax
 8049103:	e8 8c fc ff ff       	call   8048d94 <F_div_int>
 8049108:	83 c4 08             	add    $0x8,%esp
 804910b:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804910e:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8049111:	01 45 f4             	add    %eax,-0xc(%ebp)
 8049114:	83 ec 04             	sub    $0x4,%esp
 8049117:	ff 75 f0             	pushl  -0x10(%ebp)
 804911a:	e8 ab ff ff ff       	call   80490ca <Fabs>
 804911f:	83 c4 08             	add    $0x8,%esp
 8049122:	89 c3                	mov    %eax,%ebx
 8049124:	83 ec 04             	sub    $0x4,%esp
 8049127:	a1 c8 48 05 08       	mov    0x80548c8,%eax
 804912c:	50                   	push   %eax
 804912d:	e8 e7 fe ff ff       	call   8049019 <f2F>
 8049132:	83 c4 08             	add    $0x8,%esp
 8049135:	39 c3                	cmp    %eax,%ebx
 8049137:	7f b6                	jg     80490ef <sqrt+0x14>
 8049139:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804913c:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 804913f:	c9                   	leave  
 8049140:	c3                   	ret    

08049141 <pow>:
 8049141:	55                   	push   %ebp
 8049142:	89 e5                	mov    %esp,%ebp
 8049144:	53                   	push   %ebx
 8049145:	83 ec 14             	sub    $0x14,%esp
 8049148:	6a 02                	push   $0x2
 804914a:	e8 1c fc ff ff       	call   8048d6b <int2F>
 804914f:	83 c4 04             	add    $0x4,%esp
 8049152:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8049155:	ff 75 f4             	pushl  -0xc(%ebp)
 8049158:	ff 75 f4             	pushl  -0xc(%ebp)
 804915b:	e8 40 fc ff ff       	call   8048da0 <F_mul_F>
 8049160:	83 c4 08             	add    $0x8,%esp
 8049163:	89 45 f0             	mov    %eax,-0x10(%ebp)
 8049166:	ff 75 f0             	pushl  -0x10(%ebp)
 8049169:	ff 75 08             	pushl  0x8(%ebp)
 804916c:	e8 ab fd ff ff       	call   8048f1c <F_div_F>
 8049171:	83 c4 08             	add    $0x8,%esp
 8049174:	2b 45 f4             	sub    -0xc(%ebp),%eax
 8049177:	89 c1                	mov    %eax,%ecx
 8049179:	ba 56 55 55 55       	mov    $0x55555556,%edx
 804917e:	89 c8                	mov    %ecx,%eax
 8049180:	f7 ea                	imul   %edx
 8049182:	89 c8                	mov    %ecx,%eax
 8049184:	c1 f8 1f             	sar    $0x1f,%eax
 8049187:	29 c2                	sub    %eax,%edx
 8049189:	89 d0                	mov    %edx,%eax
 804918b:	89 45 ec             	mov    %eax,-0x14(%ebp)
 804918e:	8b 45 ec             	mov    -0x14(%ebp),%eax
 8049191:	01 45 f4             	add    %eax,-0xc(%ebp)
 8049194:	83 ec 04             	sub    $0x4,%esp
 8049197:	ff 75 ec             	pushl  -0x14(%ebp)
 804919a:	e8 2b ff ff ff       	call   80490ca <Fabs>
 804919f:	83 c4 08             	add    $0x8,%esp
 80491a2:	89 c3                	mov    %eax,%ebx
 80491a4:	83 ec 04             	sub    $0x4,%esp
 80491a7:	a1 c8 48 05 08       	mov    0x80548c8,%eax
 80491ac:	50                   	push   %eax
 80491ad:	e8 67 fe ff ff       	call   8049019 <f2F>
 80491b2:	83 c4 08             	add    $0x8,%esp
 80491b5:	39 c3                	cmp    %eax,%ebx
 80491b7:	7f 9c                	jg     8049155 <pow+0x14>
 80491b9:	8b 45 f4             	mov    -0xc(%ebp),%eax
 80491bc:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 80491bf:	c9                   	leave  
 80491c0:	c3                   	ret    

080491c1 <memset>:
 80491c1:	55                   	push   %ebp
 80491c2:	89 e5                	mov    %esp,%ebp
 80491c4:	57                   	push   %edi
 80491c5:	8b 7d 08             	mov    0x8(%ebp),%edi
 80491c8:	0f b6 45 0c          	movzbl 0xc(%ebp),%eax
 80491cc:	8b 4d 10             	mov    0x10(%ebp),%ecx
 80491cf:	fc                   	cld    
 80491d0:	83 f9 10             	cmp    $0x10,%ecx
 80491d3:	76 69                	jbe    804923e <memset+0x7d>
 80491d5:	f7 c7 07 00 00 00    	test   $0x7,%edi
 80491db:	74 4c                	je     8049229 <memset+0x68>
 80491dd:	88 07                	mov    %al,(%edi)
 80491df:	47                   	inc    %edi
 80491e0:	49                   	dec    %ecx
 80491e1:	f7 c7 07 00 00 00    	test   $0x7,%edi
 80491e7:	74 40                	je     8049229 <memset+0x68>
 80491e9:	88 07                	mov    %al,(%edi)
 80491eb:	47                   	inc    %edi
 80491ec:	49                   	dec    %ecx
 80491ed:	f7 c7 07 00 00 00    	test   $0x7,%edi
 80491f3:	74 34                	je     8049229 <memset+0x68>
 80491f5:	88 07                	mov    %al,(%edi)
 80491f7:	47                   	inc    %edi
 80491f8:	49                   	dec    %ecx
 80491f9:	f7 c7 07 00 00 00    	test   $0x7,%edi
 80491ff:	74 28                	je     8049229 <memset+0x68>
 8049201:	88 07                	mov    %al,(%edi)
 8049203:	47                   	inc    %edi
 8049204:	49                   	dec    %ecx
 8049205:	f7 c7 07 00 00 00    	test   $0x7,%edi
 804920b:	74 1c                	je     8049229 <memset+0x68>
 804920d:	88 07                	mov    %al,(%edi)
 804920f:	47                   	inc    %edi
 8049210:	49                   	dec    %ecx
 8049211:	f7 c7 07 00 00 00    	test   $0x7,%edi
 8049217:	74 10                	je     8049229 <memset+0x68>
 8049219:	88 07                	mov    %al,(%edi)
 804921b:	47                   	inc    %edi
 804921c:	49                   	dec    %ecx
 804921d:	f7 c7 07 00 00 00    	test   $0x7,%edi
 8049223:	74 04                	je     8049229 <memset+0x68>
 8049225:	88 07                	mov    %al,(%edi)
 8049227:	47                   	inc    %edi
 8049228:	49                   	dec    %ecx
 8049229:	88 c4                	mov    %al,%ah
 804922b:	89 c2                	mov    %eax,%edx
 804922d:	c1 e2 10             	shl    $0x10,%edx
 8049230:	09 d0                	or     %edx,%eax
 8049232:	89 ca                	mov    %ecx,%edx
 8049234:	c1 e9 02             	shr    $0x2,%ecx
 8049237:	83 e2 03             	and    $0x3,%edx
 804923a:	f3 ab                	rep stos %eax,%es:(%edi)
 804923c:	89 d1                	mov    %edx,%ecx
 804923e:	f3 aa                	rep stos %al,%es:(%edi)
 8049240:	8b 45 08             	mov    0x8(%ebp),%eax
 8049243:	8d 65 fc             	lea    -0x4(%ebp),%esp
 8049246:	5f                   	pop    %edi
 8049247:	c9                   	leave  
 8049248:	c3                   	ret    
 8049249:	66 90                	xchg   %ax,%ax
 804924b:	66 90                	xchg   %ax,%ax
 804924d:	66 90                	xchg   %ax,%ax
 804924f:	90                   	nop

08049250 <_printf_r>:
 8049250:	55                   	push   %ebp
 8049251:	89 e5                	mov    %esp,%ebp
 8049253:	83 ec 18             	sub    $0x18,%esp
 8049256:	8d 55 10             	lea    0x10(%ebp),%edx
 8049259:	8b 45 08             	mov    0x8(%ebp),%eax
 804925c:	89 54 24 0c          	mov    %edx,0xc(%esp)
 8049260:	8b 55 0c             	mov    0xc(%ebp),%edx
 8049263:	89 54 24 08          	mov    %edx,0x8(%esp)
 8049267:	8b 50 08             	mov    0x8(%eax),%edx
 804926a:	89 04 24             	mov    %eax,(%esp)
 804926d:	89 54 24 04          	mov    %edx,0x4(%esp)
 8049271:	e8 6a 21 00 00       	call   804b3e0 <_vfprintf_r>
 8049276:	c9                   	leave  
 8049277:	c3                   	ret    
 8049278:	90                   	nop
 8049279:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

08049280 <printf>:
 8049280:	55                   	push   %ebp
 8049281:	89 e5                	mov    %esp,%ebp
 8049283:	83 ec 18             	sub    $0x18,%esp
 8049286:	e8 e5 61 00 00       	call   804f470 <__getreent>
 804928b:	8d 55 0c             	lea    0xc(%ebp),%edx
 804928e:	89 54 24 0c          	mov    %edx,0xc(%esp)
 8049292:	8b 55 08             	mov    0x8(%ebp),%edx
 8049295:	89 54 24 08          	mov    %edx,0x8(%esp)
 8049299:	8b 50 08             	mov    0x8(%eax),%edx
 804929c:	89 04 24             	mov    %eax,(%esp)
 804929f:	89 54 24 04          	mov    %edx,0x4(%esp)
 80492a3:	e8 38 21 00 00       	call   804b3e0 <_vfprintf_r>
 80492a8:	c9                   	leave  
 80492a9:	c3                   	ret    
 80492aa:	66 90                	xchg   %ax,%ax
 80492ac:	66 90                	xchg   %ax,%ax
 80492ae:	66 90                	xchg   %ax,%ax

080492b0 <srand>:
 80492b0:	55                   	push   %ebp
 80492b1:	89 e5                	mov    %esp,%ebp
 80492b3:	83 ec 08             	sub    $0x8,%esp
 80492b6:	e8 b5 61 00 00       	call   804f470 <__getreent>
 80492bb:	8b 55 08             	mov    0x8(%ebp),%edx
 80492be:	c7 80 a8 00 00 00 00 	movl   $0x0,0xa8(%eax)
 80492c5:	00 00 00 
 80492c8:	89 90 a4 00 00 00    	mov    %edx,0xa4(%eax)
 80492ce:	c9                   	leave  
 80492cf:	c3                   	ret    

080492d0 <rand>:
 80492d0:	55                   	push   %ebp
 80492d1:	89 e5                	mov    %esp,%ebp
 80492d3:	56                   	push   %esi
 80492d4:	53                   	push   %ebx
 80492d5:	e8 96 61 00 00       	call   804f470 <__getreent>
 80492da:	b9 2d 7f 95 4c       	mov    $0x4c957f2d,%ecx
 80492df:	69 90 a4 00 00 00 2d 	imul   $0x5851f42d,0xa4(%eax),%edx
 80492e6:	f4 51 58 
 80492e9:	89 c6                	mov    %eax,%esi
 80492eb:	69 98 a8 00 00 00 2d 	imul   $0x4c957f2d,0xa8(%eax),%ebx
 80492f2:	7f 95 4c 
 80492f5:	89 c8                	mov    %ecx,%eax
 80492f7:	01 d3                	add    %edx,%ebx
 80492f9:	f7 a6 a4 00 00 00    	mull   0xa4(%esi)
 80492ff:	89 d1                	mov    %edx,%ecx
 8049301:	01 d9                	add    %ebx,%ecx
 8049303:	89 cb                	mov    %ecx,%ebx
 8049305:	89 c1                	mov    %eax,%ecx
 8049307:	83 c1 01             	add    $0x1,%ecx
 804930a:	83 d3 00             	adc    $0x0,%ebx
 804930d:	89 d8                	mov    %ebx,%eax
 804930f:	89 8e a4 00 00 00    	mov    %ecx,0xa4(%esi)
 8049315:	25 ff ff ff 7f       	and    $0x7fffffff,%eax
 804931a:	89 9e a8 00 00 00    	mov    %ebx,0xa8(%esi)
 8049320:	5b                   	pop    %ebx
 8049321:	5e                   	pop    %esi
 8049322:	5d                   	pop    %ebp
 8049323:	c3                   	ret    
 8049324:	66 90                	xchg   %ax,%ax
 8049326:	66 90                	xchg   %ax,%ax
 8049328:	66 90                	xchg   %ax,%ax
 804932a:	66 90                	xchg   %ax,%ax
 804932c:	66 90                	xchg   %ax,%ax
 804932e:	66 90                	xchg   %ax,%ax

08049330 <_snprintf_r>:
 8049330:	55                   	push   %ebp
 8049331:	89 e5                	mov    %esp,%ebp
 8049333:	56                   	push   %esi
 8049334:	53                   	push   %ebx
 8049335:	83 c4 80             	add    $0xffffff80,%esp
 8049338:	8b 5d 10             	mov    0x10(%ebp),%ebx
 804933b:	8b 75 08             	mov    0x8(%ebp),%esi
 804933e:	8b 45 0c             	mov    0xc(%ebp),%eax
 8049341:	85 db                	test   %ebx,%ebx
 8049343:	78 63                	js     80493a8 <_snprintf_r+0x78>
 8049345:	ba 08 02 00 00       	mov    $0x208,%edx
 804934a:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
 804934f:	66 89 55 9c          	mov    %dx,-0x64(%ebp)
 8049353:	8d 53 ff             	lea    -0x1(%ebx),%edx
 8049356:	89 45 90             	mov    %eax,-0x70(%ebp)
 8049359:	89 45 a0             	mov    %eax,-0x60(%ebp)
 804935c:	31 c0                	xor    %eax,%eax
 804935e:	85 db                	test   %ebx,%ebx
 8049360:	0f 45 c2             	cmovne %edx,%eax
 8049363:	89 45 98             	mov    %eax,-0x68(%ebp)
 8049366:	89 45 a4             	mov    %eax,-0x5c(%ebp)
 8049369:	8d 45 18             	lea    0x18(%ebp),%eax
 804936c:	89 44 24 0c          	mov    %eax,0xc(%esp)
 8049370:	8b 45 14             	mov    0x14(%ebp),%eax
 8049373:	89 34 24             	mov    %esi,(%esp)
 8049376:	66 89 4d 9e          	mov    %cx,-0x62(%ebp)
 804937a:	89 44 24 08          	mov    %eax,0x8(%esp)
 804937e:	8d 45 90             	lea    -0x70(%ebp),%eax
 8049381:	89 44 24 04          	mov    %eax,0x4(%esp)
 8049385:	e8 56 01 00 00       	call   80494e0 <_svfprintf_r>
 804938a:	83 f8 ff             	cmp    $0xffffffff,%eax
 804938d:	7c 11                	jl     80493a0 <_snprintf_r+0x70>
 804938f:	85 db                	test   %ebx,%ebx
 8049391:	74 06                	je     8049399 <_snprintf_r+0x69>
 8049393:	8b 55 90             	mov    -0x70(%ebp),%edx
 8049396:	c6 02 00             	movb   $0x0,(%edx)
 8049399:	83 ec 80             	sub    $0xffffff80,%esp
 804939c:	5b                   	pop    %ebx
 804939d:	5e                   	pop    %esi
 804939e:	5d                   	pop    %ebp
 804939f:	c3                   	ret    
 80493a0:	c7 06 8b 00 00 00    	movl   $0x8b,(%esi)
 80493a6:	eb e7                	jmp    804938f <_snprintf_r+0x5f>
 80493a8:	c7 06 8b 00 00 00    	movl   $0x8b,(%esi)
 80493ae:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 80493b3:	eb e4                	jmp    8049399 <_snprintf_r+0x69>
 80493b5:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 80493b9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

080493c0 <snprintf>:
 80493c0:	55                   	push   %ebp
 80493c1:	89 e5                	mov    %esp,%ebp
 80493c3:	57                   	push   %edi
 80493c4:	56                   	push   %esi
 80493c5:	53                   	push   %ebx
 80493c6:	81 ec 8c 00 00 00    	sub    $0x8c,%esp
 80493cc:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 80493cf:	8b 75 08             	mov    0x8(%ebp),%esi
 80493d2:	e8 99 60 00 00       	call   804f470 <__getreent>
 80493d7:	85 db                	test   %ebx,%ebx
 80493d9:	89 c7                	mov    %eax,%edi
 80493db:	78 6b                	js     8049448 <snprintf+0x88>
 80493dd:	b8 08 02 00 00       	mov    $0x208,%eax
 80493e2:	31 d2                	xor    %edx,%edx
 80493e4:	66 89 45 8c          	mov    %ax,-0x74(%ebp)
 80493e8:	85 db                	test   %ebx,%ebx
 80493ea:	8d 43 ff             	lea    -0x1(%ebx),%eax
 80493ed:	0f 45 d0             	cmovne %eax,%edx
 80493f0:	8d 45 14             	lea    0x14(%ebp),%eax
 80493f3:	89 44 24 0c          	mov    %eax,0xc(%esp)
 80493f7:	8b 45 10             	mov    0x10(%ebp),%eax
 80493fa:	89 55 88             	mov    %edx,-0x78(%ebp)
 80493fd:	89 55 94             	mov    %edx,-0x6c(%ebp)
 8049400:	ba ff ff ff ff       	mov    $0xffffffff,%edx
 8049405:	89 3c 24             	mov    %edi,(%esp)
 8049408:	89 44 24 08          	mov    %eax,0x8(%esp)
 804940c:	8d 45 80             	lea    -0x80(%ebp),%eax
 804940f:	89 44 24 04          	mov    %eax,0x4(%esp)
 8049413:	89 75 80             	mov    %esi,-0x80(%ebp)
 8049416:	89 75 90             	mov    %esi,-0x70(%ebp)
 8049419:	66 89 55 8e          	mov    %dx,-0x72(%ebp)
 804941d:	e8 be 00 00 00       	call   80494e0 <_svfprintf_r>
 8049422:	83 f8 ff             	cmp    $0xffffffff,%eax
 8049425:	7c 19                	jl     8049440 <snprintf+0x80>
 8049427:	85 db                	test   %ebx,%ebx
 8049429:	74 06                	je     8049431 <snprintf+0x71>
 804942b:	8b 55 80             	mov    -0x80(%ebp),%edx
 804942e:	c6 02 00             	movb   $0x0,(%edx)
 8049431:	81 c4 8c 00 00 00    	add    $0x8c,%esp
 8049437:	5b                   	pop    %ebx
 8049438:	5e                   	pop    %esi
 8049439:	5f                   	pop    %edi
 804943a:	5d                   	pop    %ebp
 804943b:	c3                   	ret    
 804943c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8049440:	c7 07 8b 00 00 00    	movl   $0x8b,(%edi)
 8049446:	eb df                	jmp    8049427 <snprintf+0x67>
 8049448:	c7 00 8b 00 00 00    	movl   $0x8b,(%eax)
 804944e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8049453:	eb dc                	jmp    8049431 <snprintf+0x71>
 8049455:	66 90                	xchg   %ax,%ax
 8049457:	66 90                	xchg   %ax,%ax
 8049459:	66 90                	xchg   %ax,%ax
 804945b:	66 90                	xchg   %ax,%ax
 804945d:	66 90                	xchg   %ax,%ax
 804945f:	90                   	nop

08049460 <strlen>:
 8049460:	55                   	push   %ebp
 8049461:	89 e5                	mov    %esp,%ebp
 8049463:	57                   	push   %edi
 8049464:	8b 55 08             	mov    0x8(%ebp),%edx
 8049467:	89 d7                	mov    %edx,%edi
 8049469:	f7 c7 03 00 00 00    	test   $0x3,%edi
 804946f:	74 25                	je     8049496 <L5>
 8049471:	8a 0f                	mov    (%edi),%cl
 8049473:	47                   	inc    %edi
 8049474:	84 c9                	test   %cl,%cl
 8049476:	74 56                	je     80494ce <L15>
 8049478:	f7 c7 03 00 00 00    	test   $0x3,%edi
 804947e:	74 16                	je     8049496 <L5>
 8049480:	8a 0f                	mov    (%edi),%cl
 8049482:	47                   	inc    %edi
 8049483:	84 c9                	test   %cl,%cl
 8049485:	74 47                	je     80494ce <L15>
 8049487:	f7 c7 03 00 00 00    	test   $0x3,%edi
 804948d:	74 07                	je     8049496 <L5>
 804948f:	8a 0f                	mov    (%edi),%cl
 8049491:	47                   	inc    %edi
 8049492:	84 c9                	test   %cl,%cl
 8049494:	74 38                	je     80494ce <L15>

08049496 <L5>:
 8049496:	83 ef 04             	sub    $0x4,%edi
 8049499:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

080494a0 <L10>:
 80494a0:	83 c7 04             	add    $0x4,%edi
 80494a3:	8b 0f                	mov    (%edi),%ecx
 80494a5:	8d 81 ff fe fe fe    	lea    -0x1010101(%ecx),%eax
 80494ab:	f7 d1                	not    %ecx
 80494ad:	21 c8                	and    %ecx,%eax
 80494af:	a9 80 80 80 80       	test   $0x80808080,%eax
 80494b4:	74 ea                	je     80494a0 <L10>
 80494b6:	f7 d1                	not    %ecx
 80494b8:	47                   	inc    %edi
 80494b9:	84 c9                	test   %cl,%cl
 80494bb:	74 11                	je     80494ce <L15>
 80494bd:	47                   	inc    %edi
 80494be:	c1 e9 08             	shr    $0x8,%ecx
 80494c1:	84 c9                	test   %cl,%cl
 80494c3:	74 09                	je     80494ce <L15>
 80494c5:	47                   	inc    %edi
 80494c6:	c1 e9 08             	shr    $0x8,%ecx
 80494c9:	84 c9                	test   %cl,%cl
 80494cb:	74 01                	je     80494ce <L15>
 80494cd:	47                   	inc    %edi

080494ce <L15>:
 80494ce:	29 d7                	sub    %edx,%edi
 80494d0:	8d 47 ff             	lea    -0x1(%edi),%eax
 80494d3:	8d 65 fc             	lea    -0x4(%ebp),%esp
 80494d6:	5f                   	pop    %edi
 80494d7:	c9                   	leave  
 80494d8:	c3                   	ret    
 80494d9:	66 90                	xchg   %ax,%ax
 80494db:	66 90                	xchg   %ax,%ax
 80494dd:	66 90                	xchg   %ax,%ax
 80494df:	90                   	nop

080494e0 <_svfprintf_r>:
 80494e0:	55                   	push   %ebp
 80494e1:	89 e5                	mov    %esp,%ebp
 80494e3:	57                   	push   %edi
 80494e4:	56                   	push   %esi
 80494e5:	53                   	push   %ebx
 80494e6:	81 ec 1c 01 00 00    	sub    $0x11c,%esp
 80494ec:	8b 45 08             	mov    0x8(%ebp),%eax
 80494ef:	89 04 24             	mov    %eax,(%esp)
 80494f2:	e8 39 60 00 00       	call   804f530 <_localeconv_r>
 80494f7:	8b 00                	mov    (%eax),%eax
 80494f9:	89 04 24             	mov    %eax,(%esp)
 80494fc:	89 85 0c ff ff ff    	mov    %eax,-0xf4(%ebp)
 8049502:	e8 59 ff ff ff       	call   8049460 <strlen>
 8049507:	89 85 08 ff ff ff    	mov    %eax,-0xf8(%ebp)
 804950d:	8b 45 0c             	mov    0xc(%ebp),%eax
 8049510:	f6 40 0c 80          	testb  $0x80,0xc(%eax)
 8049514:	74 0b                	je     8049521 <_svfprintf_r+0x41>
 8049516:	8b 40 10             	mov    0x10(%eax),%eax
 8049519:	85 c0                	test   %eax,%eax
 804951b:	0f 84 62 18 00 00    	je     804ad83 <_svfprintf_r+0x18a3>
 8049521:	8d 45 a8             	lea    -0x58(%ebp),%eax
 8049524:	8d 55 a7             	lea    -0x59(%ebp),%edx
 8049527:	89 c7                	mov    %eax,%edi
 8049529:	89 85 74 ff ff ff    	mov    %eax,-0x8c(%ebp)
 804952f:	90                   	nop
 8049530:	90                   	nop
 8049531:	29 d0                	sub    %edx,%eax
 8049533:	c7 85 7c ff ff ff 00 	movl   $0x0,-0x84(%ebp)
 804953a:	00 00 00 
 804953d:	90                   	nop
 804953e:	90                   	nop
 804953f:	90                   	nop
 8049540:	90                   	nop
 8049541:	90                   	nop
 8049542:	90                   	nop
 8049543:	c7 85 78 ff ff ff 00 	movl   $0x0,-0x88(%ebp)
 804954a:	00 00 00 
 804954d:	c7 85 1c ff ff ff 00 	movl   $0x0,-0xe4(%ebp)
 8049554:	00 00 00 
 8049557:	c7 85 18 ff ff ff 00 	movl   $0x0,-0xe8(%ebp)
 804955e:	00 00 00 
 8049561:	c7 85 04 ff ff ff 00 	movl   $0x0,-0xfc(%ebp)
 8049568:	00 00 00 
 804956b:	c7 85 34 ff ff ff 00 	movl   $0x0,-0xcc(%ebp)
 8049572:	00 00 00 
 8049575:	89 85 00 ff ff ff    	mov    %eax,-0x100(%ebp)
 804957b:	8b 45 10             	mov    0x10(%ebp),%eax
 804957e:	8b 5d 10             	mov    0x10(%ebp),%ebx
 8049581:	0f b6 00             	movzbl (%eax),%eax
 8049584:	3c 25                	cmp    $0x25,%al
 8049586:	74 4d                	je     80495d5 <_svfprintf_r+0xf5>
 8049588:	84 c0                	test   %al,%al
 804958a:	75 08                	jne    8049594 <_svfprintf_r+0xb4>
 804958c:	eb 47                	jmp    80495d5 <_svfprintf_r+0xf5>
 804958e:	66 90                	xchg   %ax,%ax
 8049590:	84 c0                	test   %al,%al
 8049592:	74 0a                	je     804959e <_svfprintf_r+0xbe>
 8049594:	83 c3 01             	add    $0x1,%ebx
 8049597:	0f b6 03             	movzbl (%ebx),%eax
 804959a:	3c 25                	cmp    $0x25,%al
 804959c:	75 f2                	jne    8049590 <_svfprintf_r+0xb0>
 804959e:	89 de                	mov    %ebx,%esi
 80495a0:	2b 75 10             	sub    0x10(%ebp),%esi
 80495a3:	74 30                	je     80495d5 <_svfprintf_r+0xf5>
 80495a5:	8b 45 10             	mov    0x10(%ebp),%eax
 80495a8:	83 c7 08             	add    $0x8,%edi
 80495ab:	89 77 fc             	mov    %esi,-0x4(%edi)
 80495ae:	01 b5 7c ff ff ff    	add    %esi,-0x84(%ebp)
 80495b4:	89 47 f8             	mov    %eax,-0x8(%edi)
 80495b7:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 80495bd:	83 c0 01             	add    $0x1,%eax
 80495c0:	83 f8 07             	cmp    $0x7,%eax
 80495c3:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
 80495c9:	0f 8f 91 00 00 00    	jg     8049660 <_svfprintf_r+0x180>
 80495cf:	01 b5 34 ff ff ff    	add    %esi,-0xcc(%ebp)
 80495d5:	80 3b 00             	cmpb   $0x0,(%ebx)
 80495d8:	0f 84 aa 00 00 00    	je     8049688 <_svfprintf_r+0x1a8>
 80495de:	8d 43 01             	lea    0x1(%ebx),%eax
 80495e1:	be 20 00 00 00       	mov    $0x20,%esi
 80495e6:	c6 85 59 ff ff ff 00 	movb   $0x0,-0xa7(%ebp)
 80495ed:	31 db                	xor    %ebx,%ebx
 80495ef:	c7 85 44 ff ff ff ff 	movl   $0xffffffff,-0xbc(%ebp)
 80495f6:	ff ff ff 
 80495f9:	c7 85 40 ff ff ff 00 	movl   $0x0,-0xc0(%ebp)
 8049600:	00 00 00 
 8049603:	c7 85 4c ff ff ff 00 	movl   $0x0,-0xb4(%ebp)
 804960a:	00 00 00 
 804960d:	8d 48 01             	lea    0x1(%eax),%ecx
 8049610:	0f be 00             	movsbl (%eax),%eax
 8049613:	8d 50 e0             	lea    -0x20(%eax),%edx
 8049616:	83 fa 58             	cmp    $0x58,%edx
 8049619:	0f 87 8f 07 00 00    	ja     8049dae <_svfprintf_r+0x8ce>
 804961f:	ff 24 95 08 49 05 08 	jmp    *0x8054908(,%edx,4)
 8049626:	66 90                	xchg   %ax,%ax
 8049628:	83 8d 4c ff ff ff 10 	orl    $0x10,-0xb4(%ebp)
 804962f:	89 c8                	mov    %ecx,%eax
 8049631:	eb da                	jmp    804960d <_svfprintf_r+0x12d>
 8049633:	8b 45 14             	mov    0x14(%ebp),%eax
 8049636:	8b 55 14             	mov    0x14(%ebp),%edx
 8049639:	8b 00                	mov    (%eax),%eax
 804963b:	83 c2 04             	add    $0x4,%edx
 804963e:	89 55 14             	mov    %edx,0x14(%ebp)
 8049641:	85 c0                	test   %eax,%eax
 8049643:	89 85 40 ff ff ff    	mov    %eax,-0xc0(%ebp)
 8049649:	79 e4                	jns    804962f <_svfprintf_r+0x14f>
 804964b:	f7 9d 40 ff ff ff    	negl   -0xc0(%ebp)
 8049651:	83 8d 4c ff ff ff 04 	orl    $0x4,-0xb4(%ebp)
 8049658:	89 c8                	mov    %ecx,%eax
 804965a:	eb b1                	jmp    804960d <_svfprintf_r+0x12d>
 804965c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8049660:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
 8049666:	89 44 24 08          	mov    %eax,0x8(%esp)
 804966a:	8b 45 0c             	mov    0xc(%ebp),%eax
 804966d:	89 44 24 04          	mov    %eax,0x4(%esp)
 8049671:	8b 45 08             	mov    0x8(%ebp),%eax
 8049674:	89 04 24             	mov    %eax,(%esp)
 8049677:	e8 d4 78 00 00       	call   8050f50 <__ssprint_r>
 804967c:	85 c0                	test   %eax,%eax
 804967e:	75 30                	jne    80496b0 <_svfprintf_r+0x1d0>
 8049680:	8d 7d a8             	lea    -0x58(%ebp),%edi
 8049683:	e9 47 ff ff ff       	jmp    80495cf <_svfprintf_r+0xef>
 8049688:	8b 85 7c ff ff ff    	mov    -0x84(%ebp),%eax
 804968e:	85 c0                	test   %eax,%eax
 8049690:	74 1e                	je     80496b0 <_svfprintf_r+0x1d0>
 8049692:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
 8049698:	89 44 24 08          	mov    %eax,0x8(%esp)
 804969c:	8b 45 0c             	mov    0xc(%ebp),%eax
 804969f:	89 44 24 04          	mov    %eax,0x4(%esp)
 80496a3:	8b 45 08             	mov    0x8(%ebp),%eax
 80496a6:	89 04 24             	mov    %eax,(%esp)
 80496a9:	e8 a2 78 00 00       	call   8050f50 <__ssprint_r>
 80496ae:	66 90                	xchg   %ax,%ax
 80496b0:	8b 55 0c             	mov    0xc(%ebp),%edx
 80496b3:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 80496b8:	f6 42 0c 40          	testb  $0x40,0xc(%edx)
 80496bc:	0f 44 85 34 ff ff ff 	cmove  -0xcc(%ebp),%eax
 80496c3:	81 c4 1c 01 00 00    	add    $0x11c,%esp
 80496c9:	5b                   	pop    %ebx
 80496ca:	5e                   	pop    %esi
 80496cb:	5f                   	pop    %edi
 80496cc:	5d                   	pop    %ebp
 80496cd:	c3                   	ret    
 80496ce:	bb 2b 00 00 00       	mov    $0x2b,%ebx
 80496d3:	89 c8                	mov    %ecx,%eax
 80496d5:	e9 33 ff ff ff       	jmp    804960d <_svfprintf_r+0x12d>
 80496da:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
 80496e0:	8b 45 14             	mov    0x14(%ebp),%eax
 80496e3:	89 4d 10             	mov    %ecx,0x10(%ebp)
 80496e6:	c6 85 59 ff ff ff 00 	movb   $0x0,-0xa7(%ebp)
 80496ed:	8d 70 04             	lea    0x4(%eax),%esi
 80496f0:	8b 00                	mov    (%eax),%eax
 80496f2:	85 c0                	test   %eax,%eax
 80496f4:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
 80496fa:	0f 84 7f 18 00 00    	je     804af7f <_svfprintf_r+0x1a9f>
 8049700:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
 8049706:	85 c0                	test   %eax,%eax
 8049708:	0f 88 b6 17 00 00    	js     804aec4 <_svfprintf_r+0x19e4>
 804970e:	89 44 24 08          	mov    %eax,0x8(%esp)
 8049712:	8b 85 28 ff ff ff    	mov    -0xd8(%ebp),%eax
 8049718:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 804971f:	00 
 8049720:	89 04 24             	mov    %eax,(%esp)
 8049723:	e8 e8 66 00 00       	call   804fe10 <memchr>
 8049728:	85 c0                	test   %eax,%eax
 804972a:	0f 84 a0 19 00 00    	je     804b0d0 <_svfprintf_r+0x1bf0>
 8049730:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
 8049736:	2b 85 28 ff ff ff    	sub    -0xd8(%ebp),%eax
 804973c:	39 d0                	cmp    %edx,%eax
 804973e:	0f 4f c2             	cmovg  %edx,%eax
 8049741:	89 c2                	mov    %eax,%edx
 8049743:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
 804974a:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
 8049750:	31 c0                	xor    %eax,%eax
 8049752:	85 d2                	test   %edx,%edx
 8049754:	0f 49 c2             	cmovns %edx,%eax
 8049757:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
 804975d:	89 75 14             	mov    %esi,0x14(%ebp)
 8049760:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
 8049767:	00 00 00 
 804976a:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
 8049771:	00 00 00 
 8049774:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8049778:	84 db                	test   %bl,%bl
 804977a:	74 07                	je     8049783 <_svfprintf_r+0x2a3>
 804977c:	83 85 48 ff ff ff 01 	addl   $0x1,-0xb8(%ebp)
 8049783:	8b 8d 48 ff ff ff    	mov    -0xb8(%ebp),%ecx
 8049789:	8b b5 4c ff ff ff    	mov    -0xb4(%ebp),%esi
 804978f:	89 c8                	mov    %ecx,%eax
 8049791:	89 f2                	mov    %esi,%edx
 8049793:	83 c0 02             	add    $0x2,%eax
 8049796:	83 e2 02             	and    $0x2,%edx
 8049799:	89 95 30 ff ff ff    	mov    %edx,-0xd0(%ebp)
 804979f:	89 f2                	mov    %esi,%edx
 80497a1:	0f 44 c1             	cmove  %ecx,%eax
 80497a4:	81 e2 84 00 00 00    	and    $0x84,%edx
 80497aa:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
 80497b0:	89 95 2c ff ff ff    	mov    %edx,-0xd4(%ebp)
 80497b6:	0f 85 1c 06 00 00    	jne    8049dd8 <_svfprintf_r+0x8f8>
 80497bc:	8b b5 40 ff ff ff    	mov    -0xc0(%ebp),%esi
 80497c2:	2b b5 48 ff ff ff    	sub    -0xb8(%ebp),%esi
 80497c8:	85 f6                	test   %esi,%esi
 80497ca:	0f 8e 08 06 00 00    	jle    8049dd8 <_svfprintf_r+0x8f8>
 80497d0:	83 fe 10             	cmp    $0x10,%esi
 80497d3:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
 80497d9:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 80497df:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
 80497e5:	7f 11                	jg     80497f8 <_svfprintf_r+0x318>
 80497e7:	eb 6b                	jmp    8049854 <_svfprintf_r+0x374>
 80497e9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 80497f0:	83 ee 10             	sub    $0x10,%esi
 80497f3:	83 fe 10             	cmp    $0x10,%esi
 80497f6:	7e 5c                	jle    8049854 <_svfprintf_r+0x374>
 80497f8:	83 c0 01             	add    $0x1,%eax
 80497fb:	83 c1 10             	add    $0x10,%ecx
 80497fe:	c7 07 7c 4a 05 08    	movl   $0x8054a7c,(%edi)
 8049804:	83 c7 08             	add    $0x8,%edi
 8049807:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
 804980e:	83 f8 07             	cmp    $0x7,%eax
 8049811:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
 8049817:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
 804981d:	7e d1                	jle    80497f0 <_svfprintf_r+0x310>
 804981f:	8b 45 0c             	mov    0xc(%ebp),%eax
 8049822:	89 5c 24 08          	mov    %ebx,0x8(%esp)
 8049826:	89 44 24 04          	mov    %eax,0x4(%esp)
 804982a:	8b 45 08             	mov    0x8(%ebp),%eax
 804982d:	89 04 24             	mov    %eax,(%esp)
 8049830:	e8 1b 77 00 00       	call   8050f50 <__ssprint_r>
 8049835:	85 c0                	test   %eax,%eax
 8049837:	0f 85 73 fe ff ff    	jne    80496b0 <_svfprintf_r+0x1d0>
 804983d:	83 ee 10             	sub    $0x10,%esi
 8049840:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
 8049846:	83 fe 10             	cmp    $0x10,%esi
 8049849:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 804984f:	8d 7d a8             	lea    -0x58(%ebp),%edi
 8049852:	7f a4                	jg     80497f8 <_svfprintf_r+0x318>
 8049854:	83 c0 01             	add    $0x1,%eax
 8049857:	01 f1                	add    %esi,%ecx
 8049859:	83 f8 07             	cmp    $0x7,%eax
 804985c:	c7 07 7c 4a 05 08    	movl   $0x8054a7c,(%edi)
 8049862:	89 77 04             	mov    %esi,0x4(%edi)
 8049865:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
 804986b:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
 8049871:	0f 8f 16 0e 00 00    	jg     804a68d <_svfprintf_r+0x11ad>
 8049877:	83 c7 08             	add    $0x8,%edi
 804987a:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
 8049881:	e9 58 05 00 00       	jmp    8049dde <_svfprintf_r+0x8fe>
 8049886:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
 804988d:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
 8049893:	8b 45 14             	mov    0x14(%ebp),%eax
 8049896:	89 4d 10             	mov    %ecx,0x10(%ebp)
 8049899:	0f 85 fd 04 00 00    	jne    8049d9c <_svfprintf_r+0x8bc>
 804989f:	f6 85 4c ff ff ff 40 	testb  $0x40,-0xb4(%ebp)
 80498a6:	0f 84 f0 04 00 00    	je     8049d9c <_svfprintf_r+0x8bc>
 80498ac:	0f b7 08             	movzwl (%eax),%ecx
 80498af:	83 c0 04             	add    $0x4,%eax
 80498b2:	89 45 14             	mov    %eax,0x14(%ebp)
 80498b5:	b8 01 00 00 00       	mov    $0x1,%eax
 80498ba:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 80498c0:	c6 85 59 ff ff ff 00 	movb   $0x0,-0xa7(%ebp)
 80498c7:	31 db                	xor    %ebx,%ebx
 80498c9:	8b b5 4c ff ff ff    	mov    -0xb4(%ebp),%esi
 80498cf:	89 f2                	mov    %esi,%edx
 80498d1:	80 e2 7f             	and    $0x7f,%dl
 80498d4:	83 bd 44 ff ff ff 00 	cmpl   $0x0,-0xbc(%ebp)
 80498db:	0f 48 d6             	cmovs  %esi,%edx
 80498de:	89 95 4c ff ff ff    	mov    %edx,-0xb4(%ebp)
 80498e4:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
 80498ea:	85 d2                	test   %edx,%edx
 80498ec:	75 08                	jne    80498f6 <_svfprintf_r+0x416>
 80498ee:	85 c9                	test   %ecx,%ecx
 80498f0:	0f 84 ea 08 00 00    	je     804a1e0 <_svfprintf_r+0xd00>
 80498f6:	3c 01                	cmp    $0x1,%al
 80498f8:	0f 84 6a 0d 00 00    	je     804a668 <_svfprintf_r+0x1188>
 80498fe:	3c 02                	cmp    $0x2,%al
 8049900:	8d 45 a8             	lea    -0x58(%ebp),%eax
 8049903:	0f 85 bf 0b 00 00    	jne    804a4c8 <_svfprintf_r+0xfe8>
 8049909:	8b b5 18 ff ff ff    	mov    -0xe8(%ebp),%esi
 804990f:	90                   	nop
 8049910:	89 ca                	mov    %ecx,%edx
 8049912:	83 e8 01             	sub    $0x1,%eax
 8049915:	83 e2 0f             	and    $0xf,%edx
 8049918:	0f b6 14 16          	movzbl (%esi,%edx,1),%edx
 804991c:	c1 e9 04             	shr    $0x4,%ecx
 804991f:	85 c9                	test   %ecx,%ecx
 8049921:	88 10                	mov    %dl,(%eax)
 8049923:	75 eb                	jne    8049910 <_svfprintf_r+0x430>
 8049925:	8d 55 a8             	lea    -0x58(%ebp),%edx
 8049928:	29 c2                	sub    %eax,%edx
 804992a:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
 8049930:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
 8049936:	66 90                	xchg   %ax,%ax
 8049938:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
 804993e:	8b 95 38 ff ff ff    	mov    -0xc8(%ebp),%edx
 8049944:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
 804994b:	00 00 00 
 804994e:	39 c2                	cmp    %eax,%edx
 8049950:	0f 4d c2             	cmovge %edx,%eax
 8049953:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
 8049959:	e9 1a fe ff ff       	jmp    8049778 <_svfprintf_r+0x298>
 804995e:	84 db                	test   %bl,%bl
 8049960:	89 c8                	mov    %ecx,%eax
 8049962:	0f 44 de             	cmove  %esi,%ebx
 8049965:	e9 a3 fc ff ff       	jmp    804960d <_svfprintf_r+0x12d>
 804996a:	83 8d 4c ff ff ff 01 	orl    $0x1,-0xb4(%ebp)
 8049971:	89 c8                	mov    %ecx,%eax
 8049973:	e9 95 fc ff ff       	jmp    804960d <_svfprintf_r+0x12d>
 8049978:	81 8d 4c ff ff ff 80 	orl    $0x80,-0xb4(%ebp)
 804997f:	00 00 00 
 8049982:	89 c8                	mov    %ecx,%eax
 8049984:	e9 84 fc ff ff       	jmp    804960d <_svfprintf_r+0x12d>
 8049989:	89 bd 48 ff ff ff    	mov    %edi,-0xb8(%ebp)
 804998f:	8d 50 d0             	lea    -0x30(%eax),%edx
 8049992:	31 ff                	xor    %edi,%edi
 8049994:	c7 85 40 ff ff ff 00 	movl   $0x0,-0xc0(%ebp)
 804999b:	00 00 00 
 804999e:	66 90                	xchg   %ax,%ax
 80499a0:	8d 04 bf             	lea    (%edi,%edi,4),%eax
 80499a3:	83 c1 01             	add    $0x1,%ecx
 80499a6:	8d 3c 42             	lea    (%edx,%eax,2),%edi
 80499a9:	0f be 41 ff          	movsbl -0x1(%ecx),%eax
 80499ad:	8d 50 d0             	lea    -0x30(%eax),%edx
 80499b0:	83 fa 09             	cmp    $0x9,%edx
 80499b3:	76 eb                	jbe    80499a0 <_svfprintf_r+0x4c0>
 80499b5:	89 bd 40 ff ff ff    	mov    %edi,-0xc0(%ebp)
 80499bb:	8b bd 48 ff ff ff    	mov    -0xb8(%ebp),%edi
 80499c1:	e9 4d fc ff ff       	jmp    8049613 <_svfprintf_r+0x133>
 80499c6:	83 8d 4c ff ff ff 10 	orl    $0x10,-0xb4(%ebp)
 80499cd:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
 80499d4:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
 80499da:	8b 45 14             	mov    0x14(%ebp),%eax
 80499dd:	89 4d 10             	mov    %ecx,0x10(%ebp)
 80499e0:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
 80499e6:	0f 85 61 02 00 00    	jne    8049c4d <_svfprintf_r+0x76d>
 80499ec:	f6 85 4c ff ff ff 40 	testb  $0x40,-0xb4(%ebp)
 80499f3:	0f 84 54 02 00 00    	je     8049c4d <_svfprintf_r+0x76d>
 80499f9:	0f bf 08             	movswl (%eax),%ecx
 80499fc:	83 c0 04             	add    $0x4,%eax
 80499ff:	89 45 14             	mov    %eax,0x14(%ebp)
 8049a02:	85 c9                	test   %ecx,%ecx
 8049a04:	0f 88 53 02 00 00    	js     8049c5d <_svfprintf_r+0x77d>
 8049a0a:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
 8049a11:	b8 01 00 00 00       	mov    $0x1,%eax
 8049a16:	e9 ae fe ff ff       	jmp    80498c9 <_svfprintf_r+0x3e9>
 8049a1b:	f6 85 4c ff ff ff 08 	testb  $0x8,-0xb4(%ebp)
 8049a22:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
 8049a28:	8b 45 14             	mov    0x14(%ebp),%eax
 8049a2b:	89 4d 10             	mov    %ecx,0x10(%ebp)
 8049a2e:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
 8049a34:	0f 84 15 10 00 00    	je     804aa4f <_svfprintf_r+0x156f>
 8049a3a:	db 28                	fldt   (%eax)
 8049a3c:	83 c0 0c             	add    $0xc,%eax
 8049a3f:	89 45 14             	mov    %eax,0x14(%ebp)
 8049a42:	dd 9d 10 ff ff ff    	fstpl  -0xf0(%ebp)
 8049a48:	dd 85 10 ff ff ff    	fldl   -0xf0(%ebp)
 8049a4e:	dd 1c 24             	fstpl  (%esp)
 8049a51:	e8 da 72 00 00       	call   8050d30 <__fpclassifyd>
 8049a56:	83 f8 01             	cmp    $0x1,%eax
 8049a59:	0f 85 82 0f 00 00    	jne    804a9e1 <_svfprintf_r+0x1501>
 8049a5f:	90                   	nop
 8049a60:	90                   	nop
 8049a61:	dd 85 10 ff ff ff    	fldl   -0xf0(%ebp)
 8049a67:	d9 c9                	fxch   %st(1)
 8049a69:	df e9                	fucomip %st(1),%st
 8049a6b:	dd d8                	fstp   %st(0)
 8049a6d:	0f 87 59 15 00 00    	ja     804afcc <_svfprintf_r+0x1aec>
 8049a73:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
 8049a7a:	83 bd 24 ff ff ff 47 	cmpl   $0x47,-0xdc(%ebp)
 8049a81:	ba cc 48 05 08       	mov    $0x80548cc,%edx
 8049a86:	b8 d0 48 05 08       	mov    $0x80548d0,%eax
 8049a8b:	c7 85 48 ff ff ff 03 	movl   $0x3,-0xb8(%ebp)
 8049a92:	00 00 00 
 8049a95:	0f 4e c2             	cmovle %edx,%eax
 8049a98:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
 8049a9e:	81 a5 4c ff ff ff 7f 	andl   $0xffffff7f,-0xb4(%ebp)
 8049aa5:	ff ff ff 
 8049aa8:	c7 85 38 ff ff ff 03 	movl   $0x3,-0xc8(%ebp)
 8049aaf:	00 00 00 
 8049ab2:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
 8049ab9:	00 00 00 
 8049abc:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
 8049ac3:	00 00 00 
 8049ac6:	e9 ad fc ff ff       	jmp    8049778 <_svfprintf_r+0x298>
 8049acb:	8d 41 01             	lea    0x1(%ecx),%eax
 8049ace:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
 8049ad4:	0f be 01             	movsbl (%ecx),%eax
 8049ad7:	83 f8 2a             	cmp    $0x2a,%eax
 8049ada:	0f 84 84 18 00 00    	je     804b364 <_svfprintf_r+0x1e84>
 8049ae0:	8d 50 d0             	lea    -0x30(%eax),%edx
 8049ae3:	31 c9                	xor    %ecx,%ecx
 8049ae5:	83 fa 09             	cmp    $0x9,%edx
 8049ae8:	0f 87 a8 16 00 00    	ja     804b196 <_svfprintf_r+0x1cb6>
 8049aee:	89 bd 44 ff ff ff    	mov    %edi,-0xbc(%ebp)
 8049af4:	8b bd 48 ff ff ff    	mov    -0xb8(%ebp),%edi
 8049afa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 8049b00:	8d 04 89             	lea    (%ecx,%ecx,4),%eax
 8049b03:	83 c7 01             	add    $0x1,%edi
 8049b06:	8d 0c 42             	lea    (%edx,%eax,2),%ecx
 8049b09:	0f be 47 ff          	movsbl -0x1(%edi),%eax
 8049b0d:	8d 50 d0             	lea    -0x30(%eax),%edx
 8049b10:	83 fa 09             	cmp    $0x9,%edx
 8049b13:	76 eb                	jbe    8049b00 <_svfprintf_r+0x620>
 8049b15:	85 c9                	test   %ecx,%ecx
 8049b17:	89 ca                	mov    %ecx,%edx
 8049b19:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
 8049b1e:	0f 48 d1             	cmovs  %ecx,%edx
 8049b21:	89 bd 48 ff ff ff    	mov    %edi,-0xb8(%ebp)
 8049b27:	8b bd 44 ff ff ff    	mov    -0xbc(%ebp),%edi
 8049b2d:	8b 8d 48 ff ff ff    	mov    -0xb8(%ebp),%ecx
 8049b33:	89 95 44 ff ff ff    	mov    %edx,-0xbc(%ebp)
 8049b39:	e9 d5 fa ff ff       	jmp    8049613 <_svfprintf_r+0x133>
 8049b3e:	8b 45 14             	mov    0x14(%ebp),%eax
 8049b41:	89 4d 10             	mov    %ecx,0x10(%ebp)
 8049b44:	83 8d 4c ff ff ff 02 	orl    $0x2,-0xb4(%ebp)
 8049b4b:	8b 08                	mov    (%eax),%ecx
 8049b4d:	83 c0 04             	add    $0x4,%eax
 8049b50:	89 45 14             	mov    %eax,0x14(%ebp)
 8049b53:	b8 02 00 00 00       	mov    $0x2,%eax
 8049b58:	c6 85 5a ff ff ff 30 	movb   $0x30,-0xa6(%ebp)
 8049b5f:	c6 85 5b ff ff ff 78 	movb   $0x78,-0xa5(%ebp)
 8049b66:	c7 85 18 ff ff ff ed 	movl   $0x80548ed,-0xe8(%ebp)
 8049b6d:	48 05 08 
 8049b70:	c7 85 24 ff ff ff 78 	movl   $0x78,-0xdc(%ebp)
 8049b77:	00 00 00 
 8049b7a:	e9 41 fd ff ff       	jmp    80498c0 <_svfprintf_r+0x3e0>
 8049b7f:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
 8049b86:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
 8049b8c:	8b 45 14             	mov    0x14(%ebp),%eax
 8049b8f:	89 4d 10             	mov    %ecx,0x10(%ebp)
 8049b92:	0f 85 87 00 00 00    	jne    8049c1f <_svfprintf_r+0x73f>
 8049b98:	f6 85 4c ff ff ff 40 	testb  $0x40,-0xb4(%ebp)
 8049b9f:	74 7e                	je     8049c1f <_svfprintf_r+0x73f>
 8049ba1:	0f b7 08             	movzwl (%eax),%ecx
 8049ba4:	83 c0 04             	add    $0x4,%eax
 8049ba7:	89 45 14             	mov    %eax,0x14(%ebp)
 8049baa:	31 c0                	xor    %eax,%eax
 8049bac:	e9 0f fd ff ff       	jmp    80498c0 <_svfprintf_r+0x3e0>
 8049bb1:	83 8d 4c ff ff ff 08 	orl    $0x8,-0xb4(%ebp)
 8049bb8:	89 c8                	mov    %ecx,%eax
 8049bba:	e9 4e fa ff ff       	jmp    804960d <_svfprintf_r+0x12d>
 8049bbf:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
 8049bc6:	89 4d 10             	mov    %ecx,0x10(%ebp)
 8049bc9:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
 8049bcf:	0f 85 97 0b 00 00    	jne    804a76c <_svfprintf_r+0x128c>
 8049bd5:	f6 85 4c ff ff ff 40 	testb  $0x40,-0xb4(%ebp)
 8049bdc:	0f 84 8a 0b 00 00    	je     804a76c <_svfprintf_r+0x128c>
 8049be2:	8b 45 14             	mov    0x14(%ebp),%eax
 8049be5:	0f b7 95 34 ff ff ff 	movzwl -0xcc(%ebp),%edx
 8049bec:	8b 00                	mov    (%eax),%eax
 8049bee:	66 89 10             	mov    %dx,(%eax)
 8049bf1:	8b 45 14             	mov    0x14(%ebp),%eax
 8049bf4:	83 c0 04             	add    $0x4,%eax
 8049bf7:	89 45 14             	mov    %eax,0x14(%ebp)
 8049bfa:	e9 7c f9 ff ff       	jmp    804957b <_svfprintf_r+0x9b>
 8049bff:	83 8d 4c ff ff ff 10 	orl    $0x10,-0xb4(%ebp)
 8049c06:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
 8049c0d:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
 8049c13:	8b 45 14             	mov    0x14(%ebp),%eax
 8049c16:	89 4d 10             	mov    %ecx,0x10(%ebp)
 8049c19:	0f 84 79 ff ff ff    	je     8049b98 <_svfprintf_r+0x6b8>
 8049c1f:	8b 08                	mov    (%eax),%ecx
 8049c21:	83 c0 04             	add    $0x4,%eax
 8049c24:	89 45 14             	mov    %eax,0x14(%ebp)
 8049c27:	31 c0                	xor    %eax,%eax
 8049c29:	e9 92 fc ff ff       	jmp    80498c0 <_svfprintf_r+0x3e0>
 8049c2e:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
 8049c35:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
 8049c3b:	8b 45 14             	mov    0x14(%ebp),%eax
 8049c3e:	89 4d 10             	mov    %ecx,0x10(%ebp)
 8049c41:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
 8049c47:	0f 84 9f fd ff ff    	je     80499ec <_svfprintf_r+0x50c>
 8049c4d:	8b 08                	mov    (%eax),%ecx
 8049c4f:	83 c0 04             	add    $0x4,%eax
 8049c52:	89 45 14             	mov    %eax,0x14(%ebp)
 8049c55:	85 c9                	test   %ecx,%ecx
 8049c57:	0f 89 ad fd ff ff    	jns    8049a0a <_svfprintf_r+0x52a>
 8049c5d:	f7 d9                	neg    %ecx
 8049c5f:	bb 2d 00 00 00       	mov    $0x2d,%ebx
 8049c64:	c6 85 59 ff ff ff 2d 	movb   $0x2d,-0xa7(%ebp)
 8049c6b:	b8 01 00 00 00       	mov    $0x1,%eax
 8049c70:	e9 54 fc ff ff       	jmp    80498c9 <_svfprintf_r+0x3e9>
 8049c75:	83 8d 4c ff ff ff 40 	orl    $0x40,-0xb4(%ebp)
 8049c7c:	89 c8                	mov    %ecx,%eax
 8049c7e:	e9 8a f9 ff ff       	jmp    804960d <_svfprintf_r+0x12d>
 8049c83:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
 8049c8a:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
 8049c90:	8b 45 14             	mov    0x14(%ebp),%eax
 8049c93:	89 4d 10             	mov    %ecx,0x10(%ebp)
 8049c96:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
 8049c9c:	c7 85 18 ff ff ff ed 	movl   $0x80548ed,-0xe8(%ebp)
 8049ca3:	48 05 08 
 8049ca6:	75 71                	jne    8049d19 <_svfprintf_r+0x839>
 8049ca8:	f6 85 4c ff ff ff 40 	testb  $0x40,-0xb4(%ebp)
 8049caf:	74 68                	je     8049d19 <_svfprintf_r+0x839>
 8049cb1:	0f b7 08             	movzwl (%eax),%ecx
 8049cb4:	83 c0 04             	add    $0x4,%eax
 8049cb7:	89 45 14             	mov    %eax,0x14(%ebp)
 8049cba:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
 8049cc1:	b8 02 00 00 00       	mov    $0x2,%eax
 8049cc6:	0f 84 f4 fb ff ff    	je     80498c0 <_svfprintf_r+0x3e0>
 8049ccc:	85 c9                	test   %ecx,%ecx
 8049cce:	0f 84 ec fb ff ff    	je     80498c0 <_svfprintf_r+0x3e0>
 8049cd4:	0f b6 95 24 ff ff ff 	movzbl -0xdc(%ebp),%edx
 8049cdb:	c6 85 5a ff ff ff 30 	movb   $0x30,-0xa6(%ebp)
 8049ce2:	83 8d 4c ff ff ff 02 	orl    $0x2,-0xb4(%ebp)
 8049ce9:	88 95 5b ff ff ff    	mov    %dl,-0xa5(%ebp)
 8049cef:	e9 cc fb ff ff       	jmp    80498c0 <_svfprintf_r+0x3e0>
 8049cf4:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
 8049cfb:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
 8049d01:	8b 45 14             	mov    0x14(%ebp),%eax
 8049d04:	89 4d 10             	mov    %ecx,0x10(%ebp)
 8049d07:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
 8049d0d:	c7 85 18 ff ff ff dc 	movl   $0x80548dc,-0xe8(%ebp)
 8049d14:	48 05 08 
 8049d17:	74 8f                	je     8049ca8 <_svfprintf_r+0x7c8>
 8049d19:	8b 08                	mov    (%eax),%ecx
 8049d1b:	83 c0 04             	add    $0x4,%eax
 8049d1e:	89 45 14             	mov    %eax,0x14(%ebp)
 8049d21:	eb 97                	jmp    8049cba <_svfprintf_r+0x7da>
 8049d23:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
 8049d29:	8b 45 14             	mov    0x14(%ebp),%eax
 8049d2c:	89 4d 10             	mov    %ecx,0x10(%ebp)
 8049d2f:	c6 85 59 ff ff ff 00 	movb   $0x0,-0xa7(%ebp)
 8049d36:	8b 00                	mov    (%eax),%eax
 8049d38:	88 45 80             	mov    %al,-0x80(%ebp)
 8049d3b:	8b 45 14             	mov    0x14(%ebp),%eax
 8049d3e:	83 c0 04             	add    $0x4,%eax
 8049d41:	89 45 14             	mov    %eax,0x14(%ebp)
 8049d44:	8d 45 80             	lea    -0x80(%ebp),%eax
 8049d47:	31 db                	xor    %ebx,%ebx
 8049d49:	c7 85 48 ff ff ff 01 	movl   $0x1,-0xb8(%ebp)
 8049d50:	00 00 00 
 8049d53:	c7 85 38 ff ff ff 01 	movl   $0x1,-0xc8(%ebp)
 8049d5a:	00 00 00 
 8049d5d:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
 8049d64:	00 00 00 
 8049d67:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
 8049d6e:	00 00 00 
 8049d71:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
 8049d77:	e9 07 fa ff ff       	jmp    8049783 <_svfprintf_r+0x2a3>
 8049d7c:	83 8d 4c ff ff ff 10 	orl    $0x10,-0xb4(%ebp)
 8049d83:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
 8049d8a:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
 8049d90:	8b 45 14             	mov    0x14(%ebp),%eax
 8049d93:	89 4d 10             	mov    %ecx,0x10(%ebp)
 8049d96:	0f 84 03 fb ff ff    	je     804989f <_svfprintf_r+0x3bf>
 8049d9c:	8b 08                	mov    (%eax),%ecx
 8049d9e:	83 c0 04             	add    $0x4,%eax
 8049da1:	89 45 14             	mov    %eax,0x14(%ebp)
 8049da4:	b8 01 00 00 00       	mov    $0x1,%eax
 8049da9:	e9 12 fb ff ff       	jmp    80498c0 <_svfprintf_r+0x3e0>
 8049dae:	85 c0                	test   %eax,%eax
 8049db0:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
 8049db6:	89 4d 10             	mov    %ecx,0x10(%ebp)
 8049db9:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
 8049dbf:	0f 84 c3 f8 ff ff    	je     8049688 <_svfprintf_r+0x1a8>
 8049dc5:	88 45 80             	mov    %al,-0x80(%ebp)
 8049dc8:	c6 85 59 ff ff ff 00 	movb   $0x0,-0xa7(%ebp)
 8049dcf:	e9 70 ff ff ff       	jmp    8049d44 <_svfprintf_r+0x864>
 8049dd4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8049dd8:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
 8049dde:	84 db                	test   %bl,%bl
 8049de0:	74 33                	je     8049e15 <_svfprintf_r+0x935>
 8049de2:	8d 85 59 ff ff ff    	lea    -0xa7(%ebp),%eax
 8049de8:	83 c1 01             	add    $0x1,%ecx
 8049deb:	89 07                	mov    %eax,(%edi)
 8049ded:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 8049df3:	83 c7 08             	add    $0x8,%edi
 8049df6:	c7 47 fc 01 00 00 00 	movl   $0x1,-0x4(%edi)
 8049dfd:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
 8049e03:	83 c0 01             	add    $0x1,%eax
 8049e06:	83 f8 07             	cmp    $0x7,%eax
 8049e09:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
 8049e0f:	0f 8f 7b 06 00 00    	jg     804a490 <_svfprintf_r+0xfb0>
 8049e15:	8b 9d 30 ff ff ff    	mov    -0xd0(%ebp),%ebx
 8049e1b:	85 db                	test   %ebx,%ebx
 8049e1d:	74 33                	je     8049e52 <_svfprintf_r+0x972>
 8049e1f:	8d 85 5a ff ff ff    	lea    -0xa6(%ebp),%eax
 8049e25:	83 c1 02             	add    $0x2,%ecx
 8049e28:	89 07                	mov    %eax,(%edi)
 8049e2a:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 8049e30:	83 c7 08             	add    $0x8,%edi
 8049e33:	c7 47 fc 02 00 00 00 	movl   $0x2,-0x4(%edi)
 8049e3a:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
 8049e40:	83 c0 01             	add    $0x1,%eax
 8049e43:	83 f8 07             	cmp    $0x7,%eax
 8049e46:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
 8049e4c:	0f 8f 06 06 00 00    	jg     804a458 <_svfprintf_r+0xf78>
 8049e52:	81 bd 2c ff ff ff 80 	cmpl   $0x80,-0xd4(%ebp)
 8049e59:	00 00 00 
 8049e5c:	0f 84 c6 03 00 00    	je     804a228 <_svfprintf_r+0xd48>
 8049e62:	8b b5 44 ff ff ff    	mov    -0xbc(%ebp),%esi
 8049e68:	2b b5 38 ff ff ff    	sub    -0xc8(%ebp),%esi
 8049e6e:	85 f6                	test   %esi,%esi
 8049e70:	0f 8e d2 00 00 00    	jle    8049f48 <_svfprintf_r+0xa68>
 8049e76:	83 fe 10             	cmp    $0x10,%esi
 8049e79:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 8049e7f:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
 8049e85:	7f 11                	jg     8049e98 <_svfprintf_r+0x9b8>
 8049e87:	eb 6b                	jmp    8049ef4 <_svfprintf_r+0xa14>
 8049e89:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 8049e90:	83 ee 10             	sub    $0x10,%esi
 8049e93:	83 fe 10             	cmp    $0x10,%esi
 8049e96:	7e 5c                	jle    8049ef4 <_svfprintf_r+0xa14>
 8049e98:	83 c0 01             	add    $0x1,%eax
 8049e9b:	83 c1 10             	add    $0x10,%ecx
 8049e9e:	c7 07 6c 4a 05 08    	movl   $0x8054a6c,(%edi)
 8049ea4:	83 c7 08             	add    $0x8,%edi
 8049ea7:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
 8049eae:	83 f8 07             	cmp    $0x7,%eax
 8049eb1:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
 8049eb7:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
 8049ebd:	7e d1                	jle    8049e90 <_svfprintf_r+0x9b0>
 8049ebf:	8b 45 0c             	mov    0xc(%ebp),%eax
 8049ec2:	89 5c 24 08          	mov    %ebx,0x8(%esp)
 8049ec6:	89 44 24 04          	mov    %eax,0x4(%esp)
 8049eca:	8b 45 08             	mov    0x8(%ebp),%eax
 8049ecd:	89 04 24             	mov    %eax,(%esp)
 8049ed0:	e8 7b 70 00 00       	call   8050f50 <__ssprint_r>
 8049ed5:	85 c0                	test   %eax,%eax
 8049ed7:	0f 85 d3 f7 ff ff    	jne    80496b0 <_svfprintf_r+0x1d0>
 8049edd:	83 ee 10             	sub    $0x10,%esi
 8049ee0:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
 8049ee6:	83 fe 10             	cmp    $0x10,%esi
 8049ee9:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 8049eef:	8d 7d a8             	lea    -0x58(%ebp),%edi
 8049ef2:	7f a4                	jg     8049e98 <_svfprintf_r+0x9b8>
 8049ef4:	83 c0 01             	add    $0x1,%eax
 8049ef7:	01 f1                	add    %esi,%ecx
 8049ef9:	c7 07 6c 4a 05 08    	movl   $0x8054a6c,(%edi)
 8049eff:	83 c7 08             	add    $0x8,%edi
 8049f02:	89 77 fc             	mov    %esi,-0x4(%edi)
 8049f05:	83 f8 07             	cmp    $0x7,%eax
 8049f08:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
 8049f0e:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
 8049f14:	7e 32                	jle    8049f48 <_svfprintf_r+0xa68>
 8049f16:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
 8049f1c:	89 44 24 08          	mov    %eax,0x8(%esp)
 8049f20:	8b 45 0c             	mov    0xc(%ebp),%eax
 8049f23:	89 44 24 04          	mov    %eax,0x4(%esp)
 8049f27:	8b 45 08             	mov    0x8(%ebp),%eax
 8049f2a:	89 04 24             	mov    %eax,(%esp)
 8049f2d:	e8 1e 70 00 00       	call   8050f50 <__ssprint_r>
 8049f32:	85 c0                	test   %eax,%eax
 8049f34:	0f 85 76 f7 ff ff    	jne    80496b0 <_svfprintf_r+0x1d0>
 8049f3a:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
 8049f40:	8d 7d a8             	lea    -0x58(%ebp),%edi
 8049f43:	90                   	nop
 8049f44:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8049f48:	f7 85 4c ff ff ff 00 	testl  $0x100,-0xb4(%ebp)
 8049f4f:	01 00 00 
 8049f52:	0f 85 50 01 00 00    	jne    804a0a8 <_svfprintf_r+0xbc8>
 8049f58:	8b 85 28 ff ff ff    	mov    -0xd8(%ebp),%eax
 8049f5e:	89 07                	mov    %eax,(%edi)
 8049f60:	8b 85 38 ff ff ff    	mov    -0xc8(%ebp),%eax
 8049f66:	01 c1                	add    %eax,%ecx
 8049f68:	89 47 04             	mov    %eax,0x4(%edi)
 8049f6b:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 8049f71:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
 8049f77:	83 c0 01             	add    $0x1,%eax
 8049f7a:	83 f8 07             	cmp    $0x7,%eax
 8049f7d:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
 8049f83:	0f 8f 6a 04 00 00    	jg     804a3f3 <_svfprintf_r+0xf13>
 8049f89:	83 c7 08             	add    $0x8,%edi
 8049f8c:	f6 85 4c ff ff ff 04 	testb  $0x4,-0xb4(%ebp)
 8049f93:	0f 84 d7 00 00 00    	je     804a070 <_svfprintf_r+0xb90>
 8049f99:	8b b5 40 ff ff ff    	mov    -0xc0(%ebp),%esi
 8049f9f:	2b b5 48 ff ff ff    	sub    -0xb8(%ebp),%esi
 8049fa5:	85 f6                	test   %esi,%esi
 8049fa7:	0f 8e c3 00 00 00    	jle    804a070 <_svfprintf_r+0xb90>
 8049fad:	83 fe 10             	cmp    $0x10,%esi
 8049fb0:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 8049fb6:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
 8049fbc:	7f 0a                	jg     8049fc8 <_svfprintf_r+0xae8>
 8049fbe:	eb 64                	jmp    804a024 <_svfprintf_r+0xb44>
 8049fc0:	83 ee 10             	sub    $0x10,%esi
 8049fc3:	83 fe 10             	cmp    $0x10,%esi
 8049fc6:	7e 5c                	jle    804a024 <_svfprintf_r+0xb44>
 8049fc8:	83 c0 01             	add    $0x1,%eax
 8049fcb:	83 c1 10             	add    $0x10,%ecx
 8049fce:	c7 07 7c 4a 05 08    	movl   $0x8054a7c,(%edi)
 8049fd4:	83 c7 08             	add    $0x8,%edi
 8049fd7:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
 8049fde:	83 f8 07             	cmp    $0x7,%eax
 8049fe1:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
 8049fe7:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
 8049fed:	7e d1                	jle    8049fc0 <_svfprintf_r+0xae0>
 8049fef:	8b 45 0c             	mov    0xc(%ebp),%eax
 8049ff2:	89 5c 24 08          	mov    %ebx,0x8(%esp)
 8049ff6:	89 44 24 04          	mov    %eax,0x4(%esp)
 8049ffa:	8b 45 08             	mov    0x8(%ebp),%eax
 8049ffd:	89 04 24             	mov    %eax,(%esp)
 804a000:	e8 4b 6f 00 00       	call   8050f50 <__ssprint_r>
 804a005:	85 c0                	test   %eax,%eax
 804a007:	0f 85 a3 f6 ff ff    	jne    80496b0 <_svfprintf_r+0x1d0>
 804a00d:	83 ee 10             	sub    $0x10,%esi
 804a010:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
 804a016:	83 fe 10             	cmp    $0x10,%esi
 804a019:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 804a01f:	8d 7d a8             	lea    -0x58(%ebp),%edi
 804a022:	7f a4                	jg     8049fc8 <_svfprintf_r+0xae8>
 804a024:	83 c0 01             	add    $0x1,%eax
 804a027:	01 f1                	add    %esi,%ecx
 804a029:	83 f8 07             	cmp    $0x7,%eax
 804a02c:	c7 07 7c 4a 05 08    	movl   $0x8054a7c,(%edi)
 804a032:	89 77 04             	mov    %esi,0x4(%edi)
 804a035:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
 804a03b:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
 804a041:	7e 2d                	jle    804a070 <_svfprintf_r+0xb90>
 804a043:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
 804a049:	89 44 24 08          	mov    %eax,0x8(%esp)
 804a04d:	8b 45 0c             	mov    0xc(%ebp),%eax
 804a050:	89 44 24 04          	mov    %eax,0x4(%esp)
 804a054:	8b 45 08             	mov    0x8(%ebp),%eax
 804a057:	89 04 24             	mov    %eax,(%esp)
 804a05a:	e8 f1 6e 00 00       	call   8050f50 <__ssprint_r>
 804a05f:	85 c0                	test   %eax,%eax
 804a061:	0f 85 49 f6 ff ff    	jne    80496b0 <_svfprintf_r+0x1d0>
 804a067:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
 804a06d:	8d 76 00             	lea    0x0(%esi),%esi
 804a070:	8b 85 40 ff ff ff    	mov    -0xc0(%ebp),%eax
 804a076:	8b 95 48 ff ff ff    	mov    -0xb8(%ebp),%edx
 804a07c:	39 c2                	cmp    %eax,%edx
 804a07e:	0f 4d c2             	cmovge %edx,%eax
 804a081:	01 85 34 ff ff ff    	add    %eax,-0xcc(%ebp)
 804a087:	85 c9                	test   %ecx,%ecx
 804a089:	0f 85 99 03 00 00    	jne    804a428 <_svfprintf_r+0xf48>
 804a08f:	c7 85 78 ff ff ff 00 	movl   $0x0,-0x88(%ebp)
 804a096:	00 00 00 
 804a099:	8d 7d a8             	lea    -0x58(%ebp),%edi
 804a09c:	e9 da f4 ff ff       	jmp    804957b <_svfprintf_r+0x9b>
 804a0a1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 804a0a8:	83 bd 24 ff ff ff 65 	cmpl   $0x65,-0xdc(%ebp)
 804a0af:	0f 8e 5b 02 00 00    	jle    804a310 <_svfprintf_r+0xe30>
 804a0b5:	90                   	nop
 804a0b6:	90                   	nop
 804a0b7:	90                   	nop
 804a0b8:	90                   	nop
 804a0b9:	90                   	nop
 804a0ba:	90                   	nop
 804a0bb:	90                   	nop
 804a0bc:	90                   	nop
 804a0bd:	90                   	nop
 804a0be:	90                   	nop
 804a0bf:	90                   	nop
 804a0c0:	90                   	nop
 804a0c1:	0f 8a 59 04 00 00    	jp     804a520 <_svfprintf_r+0x1040>
 804a0c7:	0f 85 53 04 00 00    	jne    804a520 <_svfprintf_r+0x1040>
 804a0cd:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 804a0d3:	83 c1 01             	add    $0x1,%ecx
 804a0d6:	83 c7 08             	add    $0x8,%edi
 804a0d9:	c7 47 f8 3d 46 05 08 	movl   $0x805463d,-0x8(%edi)
 804a0e0:	c7 47 fc 01 00 00 00 	movl   $0x1,-0x4(%edi)
 804a0e7:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
 804a0ed:	83 c0 01             	add    $0x1,%eax
 804a0f0:	83 f8 07             	cmp    $0x7,%eax
 804a0f3:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
 804a0f9:	0f 8f 63 09 00 00    	jg     804aa62 <_svfprintf_r+0x1582>
 804a0ff:	8b 85 1c ff ff ff    	mov    -0xe4(%ebp),%eax
 804a105:	39 85 5c ff ff ff    	cmp    %eax,-0xa4(%ebp)
 804a10b:	7c 0d                	jl     804a11a <_svfprintf_r+0xc3a>
 804a10d:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
 804a114:	0f 84 72 fe ff ff    	je     8049f8c <_svfprintf_r+0xaac>
 804a11a:	8b 85 0c ff ff ff    	mov    -0xf4(%ebp),%eax
 804a120:	83 c7 08             	add    $0x8,%edi
 804a123:	89 47 f8             	mov    %eax,-0x8(%edi)
 804a126:	8b 85 08 ff ff ff    	mov    -0xf8(%ebp),%eax
 804a12c:	89 47 fc             	mov    %eax,-0x4(%edi)
 804a12f:	01 c1                	add    %eax,%ecx
 804a131:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 804a137:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
 804a13d:	83 c0 01             	add    $0x1,%eax
 804a140:	83 f8 07             	cmp    $0x7,%eax
 804a143:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
 804a149:	0f 8f dc 0b 00 00    	jg     804ad2b <_svfprintf_r+0x184b>
 804a14f:	8b 85 1c ff ff ff    	mov    -0xe4(%ebp),%eax
 804a155:	8d 70 ff             	lea    -0x1(%eax),%esi
 804a158:	85 f6                	test   %esi,%esi
 804a15a:	0f 8e 2c fe ff ff    	jle    8049f8c <_svfprintf_r+0xaac>
 804a160:	83 fe 10             	cmp    $0x10,%esi
 804a163:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 804a169:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
 804a16f:	7f 13                	jg     804a184 <_svfprintf_r+0xca4>
 804a171:	e9 e6 05 00 00       	jmp    804a75c <_svfprintf_r+0x127c>
 804a176:	66 90                	xchg   %ax,%ax
 804a178:	83 ee 10             	sub    $0x10,%esi
 804a17b:	83 fe 10             	cmp    $0x10,%esi
 804a17e:	0f 8e d8 05 00 00    	jle    804a75c <_svfprintf_r+0x127c>
 804a184:	83 c0 01             	add    $0x1,%eax
 804a187:	83 c1 10             	add    $0x10,%ecx
 804a18a:	c7 07 6c 4a 05 08    	movl   $0x8054a6c,(%edi)
 804a190:	83 c7 08             	add    $0x8,%edi
 804a193:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
 804a19a:	83 f8 07             	cmp    $0x7,%eax
 804a19d:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
 804a1a3:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
 804a1a9:	7e cd                	jle    804a178 <_svfprintf_r+0xc98>
 804a1ab:	8b 45 0c             	mov    0xc(%ebp),%eax
 804a1ae:	89 5c 24 08          	mov    %ebx,0x8(%esp)
 804a1b2:	89 44 24 04          	mov    %eax,0x4(%esp)
 804a1b6:	8b 45 08             	mov    0x8(%ebp),%eax
 804a1b9:	89 04 24             	mov    %eax,(%esp)
 804a1bc:	e8 8f 6d 00 00       	call   8050f50 <__ssprint_r>
 804a1c1:	85 c0                	test   %eax,%eax
 804a1c3:	0f 85 e7 f4 ff ff    	jne    80496b0 <_svfprintf_r+0x1d0>
 804a1c9:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
 804a1cf:	8d 7d a8             	lea    -0x58(%ebp),%edi
 804a1d2:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 804a1d8:	eb 9e                	jmp    804a178 <_svfprintf_r+0xc98>
 804a1da:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 804a1e0:	84 c0                	test   %al,%al
 804a1e2:	75 2c                	jne    804a210 <_svfprintf_r+0xd30>
 804a1e4:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
 804a1eb:	74 23                	je     804a210 <_svfprintf_r+0xd30>
 804a1ed:	8b 85 00 ff ff ff    	mov    -0x100(%ebp),%eax
 804a1f3:	c6 45 a7 30          	movb   $0x30,-0x59(%ebp)
 804a1f7:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
 804a1fd:	8d 45 a7             	lea    -0x59(%ebp),%eax
 804a200:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
 804a206:	e9 2d f7 ff ff       	jmp    8049938 <_svfprintf_r+0x458>
 804a20b:	90                   	nop
 804a20c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 804a210:	8d 45 a8             	lea    -0x58(%ebp),%eax
 804a213:	c7 85 38 ff ff ff 00 	movl   $0x0,-0xc8(%ebp)
 804a21a:	00 00 00 
 804a21d:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
 804a223:	e9 10 f7 ff ff       	jmp    8049938 <_svfprintf_r+0x458>
 804a228:	8b b5 40 ff ff ff    	mov    -0xc0(%ebp),%esi
 804a22e:	2b b5 48 ff ff ff    	sub    -0xb8(%ebp),%esi
 804a234:	85 f6                	test   %esi,%esi
 804a236:	0f 8e 26 fc ff ff    	jle    8049e62 <_svfprintf_r+0x982>
 804a23c:	83 fe 10             	cmp    $0x10,%esi
 804a23f:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 804a245:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
 804a24b:	7f 0b                	jg     804a258 <_svfprintf_r+0xd78>
 804a24d:	eb 65                	jmp    804a2b4 <_svfprintf_r+0xdd4>
 804a24f:	90                   	nop
 804a250:	83 ee 10             	sub    $0x10,%esi
 804a253:	83 fe 10             	cmp    $0x10,%esi
 804a256:	7e 5c                	jle    804a2b4 <_svfprintf_r+0xdd4>
 804a258:	83 c0 01             	add    $0x1,%eax
 804a25b:	83 c1 10             	add    $0x10,%ecx
 804a25e:	c7 07 6c 4a 05 08    	movl   $0x8054a6c,(%edi)
 804a264:	83 c7 08             	add    $0x8,%edi
 804a267:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
 804a26e:	83 f8 07             	cmp    $0x7,%eax
 804a271:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
 804a277:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
 804a27d:	7e d1                	jle    804a250 <_svfprintf_r+0xd70>
 804a27f:	8b 45 0c             	mov    0xc(%ebp),%eax
 804a282:	89 5c 24 08          	mov    %ebx,0x8(%esp)
 804a286:	89 44 24 04          	mov    %eax,0x4(%esp)
 804a28a:	8b 45 08             	mov    0x8(%ebp),%eax
 804a28d:	89 04 24             	mov    %eax,(%esp)
 804a290:	e8 bb 6c 00 00       	call   8050f50 <__ssprint_r>
 804a295:	85 c0                	test   %eax,%eax
 804a297:	0f 85 13 f4 ff ff    	jne    80496b0 <_svfprintf_r+0x1d0>
 804a29d:	83 ee 10             	sub    $0x10,%esi
 804a2a0:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
 804a2a6:	83 fe 10             	cmp    $0x10,%esi
 804a2a9:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 804a2af:	8d 7d a8             	lea    -0x58(%ebp),%edi
 804a2b2:	7f a4                	jg     804a258 <_svfprintf_r+0xd78>
 804a2b4:	83 c0 01             	add    $0x1,%eax
 804a2b7:	01 f1                	add    %esi,%ecx
 804a2b9:	c7 07 6c 4a 05 08    	movl   $0x8054a6c,(%edi)
 804a2bf:	83 c7 08             	add    $0x8,%edi
 804a2c2:	89 77 fc             	mov    %esi,-0x4(%edi)
 804a2c5:	83 f8 07             	cmp    $0x7,%eax
 804a2c8:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
 804a2ce:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
 804a2d4:	0f 8e 88 fb ff ff    	jle    8049e62 <_svfprintf_r+0x982>
 804a2da:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
 804a2e0:	89 44 24 08          	mov    %eax,0x8(%esp)
 804a2e4:	8b 45 0c             	mov    0xc(%ebp),%eax
 804a2e7:	89 44 24 04          	mov    %eax,0x4(%esp)
 804a2eb:	8b 45 08             	mov    0x8(%ebp),%eax
 804a2ee:	89 04 24             	mov    %eax,(%esp)
 804a2f1:	e8 5a 6c 00 00       	call   8050f50 <__ssprint_r>
 804a2f6:	85 c0                	test   %eax,%eax
 804a2f8:	0f 85 b2 f3 ff ff    	jne    80496b0 <_svfprintf_r+0x1d0>
 804a2fe:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
 804a304:	8d 7d a8             	lea    -0x58(%ebp),%edi
 804a307:	e9 56 fb ff ff       	jmp    8049e62 <_svfprintf_r+0x982>
 804a30c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 804a310:	83 bd 1c ff ff ff 01 	cmpl   $0x1,-0xe4(%ebp)
 804a317:	8b 85 28 ff ff ff    	mov    -0xd8(%ebp),%eax
 804a31d:	0f 8e df 05 00 00    	jle    804a902 <_svfprintf_r+0x1422>
 804a323:	89 07                	mov    %eax,(%edi)
 804a325:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 804a32b:	8d 51 01             	lea    0x1(%ecx),%edx
 804a32e:	c7 47 04 01 00 00 00 	movl   $0x1,0x4(%edi)
 804a335:	83 c7 08             	add    $0x8,%edi
 804a338:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
 804a33e:	83 c0 01             	add    $0x1,%eax
 804a341:	83 f8 07             	cmp    $0x7,%eax
 804a344:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
 804a34a:	0f 8f 59 06 00 00    	jg     804a9a9 <_svfprintf_r+0x14c9>
 804a350:	8b 9d 0c ff ff ff    	mov    -0xf4(%ebp),%ebx
 804a356:	83 c0 01             	add    $0x1,%eax
 804a359:	83 c7 08             	add    $0x8,%edi
 804a35c:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
 804a362:	89 5f f8             	mov    %ebx,-0x8(%edi)
 804a365:	8b 9d 08 ff ff ff    	mov    -0xf8(%ebp),%ebx
 804a36b:	89 5f fc             	mov    %ebx,-0x4(%edi)
 804a36e:	01 da                	add    %ebx,%edx
 804a370:	83 f8 07             	cmp    $0x7,%eax
 804a373:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
 804a379:	0f 8f f2 05 00 00    	jg     804a971 <_svfprintf_r+0x1491>
 804a37f:	90                   	nop
 804a380:	90                   	nop
 804a381:	dd 85 10 ff ff ff    	fldl   -0xf0(%ebp)
 804a387:	df e9                	fucomip %st(1),%st
 804a389:	dd d8                	fstp   %st(0)
 804a38b:	7a 06                	jp     804a393 <_svfprintf_r+0xeb3>
 804a38d:	0f 84 33 03 00 00    	je     804a6c6 <_svfprintf_r+0x11e6>
 804a393:	8b 8d 28 ff ff ff    	mov    -0xd8(%ebp),%ecx
 804a399:	8b 9d 1c ff ff ff    	mov    -0xe4(%ebp),%ebx
 804a39f:	83 c1 01             	add    $0x1,%ecx
 804a3a2:	89 0f                	mov    %ecx,(%edi)
 804a3a4:	8d 4b ff             	lea    -0x1(%ebx),%ecx
 804a3a7:	89 4f 04             	mov    %ecx,0x4(%edi)
 804a3aa:	01 ca                	add    %ecx,%edx
 804a3ac:	83 c0 01             	add    $0x1,%eax
 804a3af:	83 f8 07             	cmp    $0x7,%eax
 804a3b2:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
 804a3b8:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
 804a3be:	0f 8f 75 05 00 00    	jg     804a939 <_svfprintf_r+0x1459>
 804a3c4:	83 c7 08             	add    $0x8,%edi
 804a3c7:	8b 9d 04 ff ff ff    	mov    -0xfc(%ebp),%ebx
 804a3cd:	8d 8d 65 ff ff ff    	lea    -0x9b(%ebp),%ecx
 804a3d3:	89 0f                	mov    %ecx,(%edi)
 804a3d5:	89 5f 04             	mov    %ebx,0x4(%edi)
 804a3d8:	8d 0c 1a             	lea    (%edx,%ebx,1),%ecx
 804a3db:	83 c0 01             	add    $0x1,%eax
 804a3de:	83 f8 07             	cmp    $0x7,%eax
 804a3e1:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
 804a3e7:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
 804a3ed:	0f 8e 96 fb ff ff    	jle    8049f89 <_svfprintf_r+0xaa9>
 804a3f3:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
 804a3f9:	89 44 24 08          	mov    %eax,0x8(%esp)
 804a3fd:	8b 45 0c             	mov    0xc(%ebp),%eax
 804a400:	89 44 24 04          	mov    %eax,0x4(%esp)
 804a404:	8b 45 08             	mov    0x8(%ebp),%eax
 804a407:	89 04 24             	mov    %eax,(%esp)
 804a40a:	e8 41 6b 00 00       	call   8050f50 <__ssprint_r>
 804a40f:	85 c0                	test   %eax,%eax
 804a411:	0f 85 99 f2 ff ff    	jne    80496b0 <_svfprintf_r+0x1d0>
 804a417:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
 804a41d:	8d 7d a8             	lea    -0x58(%ebp),%edi
 804a420:	e9 67 fb ff ff       	jmp    8049f8c <_svfprintf_r+0xaac>
 804a425:	8d 76 00             	lea    0x0(%esi),%esi
 804a428:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
 804a42e:	89 44 24 08          	mov    %eax,0x8(%esp)
 804a432:	8b 45 0c             	mov    0xc(%ebp),%eax
 804a435:	89 44 24 04          	mov    %eax,0x4(%esp)
 804a439:	8b 45 08             	mov    0x8(%ebp),%eax
 804a43c:	89 04 24             	mov    %eax,(%esp)
 804a43f:	e8 0c 6b 00 00       	call   8050f50 <__ssprint_r>
 804a444:	85 c0                	test   %eax,%eax
 804a446:	0f 84 43 fc ff ff    	je     804a08f <_svfprintf_r+0xbaf>
 804a44c:	e9 5f f2 ff ff       	jmp    80496b0 <_svfprintf_r+0x1d0>
 804a451:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 804a458:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
 804a45e:	89 44 24 08          	mov    %eax,0x8(%esp)
 804a462:	8b 45 0c             	mov    0xc(%ebp),%eax
 804a465:	89 44 24 04          	mov    %eax,0x4(%esp)
 804a469:	8b 45 08             	mov    0x8(%ebp),%eax
 804a46c:	89 04 24             	mov    %eax,(%esp)
 804a46f:	e8 dc 6a 00 00       	call   8050f50 <__ssprint_r>
 804a474:	85 c0                	test   %eax,%eax
 804a476:	0f 85 34 f2 ff ff    	jne    80496b0 <_svfprintf_r+0x1d0>
 804a47c:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
 804a482:	8d 7d a8             	lea    -0x58(%ebp),%edi
 804a485:	e9 c8 f9 ff ff       	jmp    8049e52 <_svfprintf_r+0x972>
 804a48a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 804a490:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
 804a496:	89 44 24 08          	mov    %eax,0x8(%esp)
 804a49a:	8b 45 0c             	mov    0xc(%ebp),%eax
 804a49d:	89 44 24 04          	mov    %eax,0x4(%esp)
 804a4a1:	8b 45 08             	mov    0x8(%ebp),%eax
 804a4a4:	89 04 24             	mov    %eax,(%esp)
 804a4a7:	e8 a4 6a 00 00       	call   8050f50 <__ssprint_r>
 804a4ac:	85 c0                	test   %eax,%eax
 804a4ae:	0f 85 fc f1 ff ff    	jne    80496b0 <_svfprintf_r+0x1d0>
 804a4b4:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
 804a4ba:	8d 7d a8             	lea    -0x58(%ebp),%edi
 804a4bd:	e9 53 f9 ff ff       	jmp    8049e15 <_svfprintf_r+0x935>
 804a4c2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 804a4c8:	89 c2                	mov    %eax,%edx
 804a4ca:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 804a4d0:	89 c8                	mov    %ecx,%eax
 804a4d2:	83 ea 01             	sub    $0x1,%edx
 804a4d5:	83 e0 07             	and    $0x7,%eax
 804a4d8:	c1 e9 03             	shr    $0x3,%ecx
 804a4db:	83 c0 30             	add    $0x30,%eax
 804a4de:	85 c9                	test   %ecx,%ecx
 804a4e0:	88 02                	mov    %al,(%edx)
 804a4e2:	75 ec                	jne    804a4d0 <_svfprintf_r+0xff0>
 804a4e4:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
 804a4eb:	89 95 28 ff ff ff    	mov    %edx,-0xd8(%ebp)
 804a4f1:	0f 84 5b 01 00 00    	je     804a652 <_svfprintf_r+0x1172>
 804a4f7:	3c 30                	cmp    $0x30,%al
 804a4f9:	74 0b                	je     804a506 <_svfprintf_r+0x1026>
 804a4fb:	83 ad 28 ff ff ff 01 	subl   $0x1,-0xd8(%ebp)
 804a502:	c6 42 ff 30          	movb   $0x30,-0x1(%edx)
 804a506:	8d 45 a8             	lea    -0x58(%ebp),%eax
 804a509:	2b 85 28 ff ff ff    	sub    -0xd8(%ebp),%eax
 804a50f:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
 804a515:	e9 1e f4 ff ff       	jmp    8049938 <_svfprintf_r+0x458>
 804a51a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 804a520:	8b 9d 5c ff ff ff    	mov    -0xa4(%ebp),%ebx
 804a526:	85 db                	test   %ebx,%ebx
 804a528:	0f 8e 66 05 00 00    	jle    804aa94 <_svfprintf_r+0x15b4>
 804a52e:	8b 95 28 ff ff ff    	mov    -0xd8(%ebp),%edx
 804a534:	8b 85 1c ff ff ff    	mov    -0xe4(%ebp),%eax
 804a53a:	01 d0                	add    %edx,%eax
 804a53c:	89 c3                	mov    %eax,%ebx
 804a53e:	29 d3                	sub    %edx,%ebx
 804a540:	89 85 44 ff ff ff    	mov    %eax,-0xbc(%ebp)
 804a546:	89 d0                	mov    %edx,%eax
 804a548:	8b 95 20 ff ff ff    	mov    -0xe0(%ebp),%edx
 804a54e:	39 d3                	cmp    %edx,%ebx
 804a550:	0f 4f da             	cmovg  %edx,%ebx
 804a553:	85 db                	test   %ebx,%ebx
 804a555:	7e 28                	jle    804a57f <_svfprintf_r+0x109f>
 804a557:	89 07                	mov    %eax,(%edi)
 804a559:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 804a55f:	01 d9                	add    %ebx,%ecx
 804a561:	89 5f 04             	mov    %ebx,0x4(%edi)
 804a564:	83 c7 08             	add    $0x8,%edi
 804a567:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
 804a56d:	83 c0 01             	add    $0x1,%eax
 804a570:	83 f8 07             	cmp    $0x7,%eax
 804a573:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
 804a579:	0f 8f 58 09 00 00    	jg     804aed7 <_svfprintf_r+0x19f7>
 804a57f:	8b b5 20 ff ff ff    	mov    -0xe0(%ebp),%esi
 804a585:	31 c0                	xor    %eax,%eax
 804a587:	85 db                	test   %ebx,%ebx
 804a589:	0f 49 c3             	cmovns %ebx,%eax
 804a58c:	29 c6                	sub    %eax,%esi
 804a58e:	85 f6                	test   %esi,%esi
 804a590:	0f 8e 40 02 00 00    	jle    804a7d6 <_svfprintf_r+0x12f6>
 804a596:	83 fe 10             	cmp    $0x10,%esi
 804a599:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 804a59f:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
 804a5a5:	7f 15                	jg     804a5bc <_svfprintf_r+0x10dc>
 804a5a7:	e9 db 01 00 00       	jmp    804a787 <_svfprintf_r+0x12a7>
 804a5ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 804a5b0:	83 ee 10             	sub    $0x10,%esi
 804a5b3:	83 fe 10             	cmp    $0x10,%esi
 804a5b6:	0f 8e cb 01 00 00    	jle    804a787 <_svfprintf_r+0x12a7>
 804a5bc:	83 c0 01             	add    $0x1,%eax
 804a5bf:	83 c1 10             	add    $0x10,%ecx
 804a5c2:	c7 07 6c 4a 05 08    	movl   $0x8054a6c,(%edi)
 804a5c8:	83 c7 08             	add    $0x8,%edi
 804a5cb:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
 804a5d2:	83 f8 07             	cmp    $0x7,%eax
 804a5d5:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
 804a5db:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
 804a5e1:	7e cd                	jle    804a5b0 <_svfprintf_r+0x10d0>
 804a5e3:	8b 45 0c             	mov    0xc(%ebp),%eax
 804a5e6:	89 5c 24 08          	mov    %ebx,0x8(%esp)
 804a5ea:	89 44 24 04          	mov    %eax,0x4(%esp)
 804a5ee:	8b 45 08             	mov    0x8(%ebp),%eax
 804a5f1:	89 04 24             	mov    %eax,(%esp)
 804a5f4:	e8 57 69 00 00       	call   8050f50 <__ssprint_r>
 804a5f9:	85 c0                	test   %eax,%eax
 804a5fb:	0f 85 af f0 ff ff    	jne    80496b0 <_svfprintf_r+0x1d0>
 804a601:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
 804a607:	8d 7d a8             	lea    -0x58(%ebp),%edi
 804a60a:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 804a610:	eb 9e                	jmp    804a5b0 <_svfprintf_r+0x10d0>
 804a612:	8d 45 a8             	lea    -0x58(%ebp),%eax
 804a615:	be cd cc cc cc       	mov    $0xcccccccd,%esi
 804a61a:	89 bd 48 ff ff ff    	mov    %edi,-0xb8(%ebp)
 804a620:	89 c7                	mov    %eax,%edi
 804a622:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 804a628:	89 c8                	mov    %ecx,%eax
 804a62a:	83 ef 01             	sub    $0x1,%edi
 804a62d:	f7 e6                	mul    %esi
 804a62f:	c1 ea 03             	shr    $0x3,%edx
 804a632:	8d 04 92             	lea    (%edx,%edx,4),%eax
 804a635:	01 c0                	add    %eax,%eax
 804a637:	29 c1                	sub    %eax,%ecx
 804a639:	83 c1 30             	add    $0x30,%ecx
 804a63c:	85 d2                	test   %edx,%edx
 804a63e:	88 0f                	mov    %cl,(%edi)
 804a640:	89 d1                	mov    %edx,%ecx
 804a642:	75 e4                	jne    804a628 <_svfprintf_r+0x1148>
 804a644:	89 fa                	mov    %edi,%edx
 804a646:	89 bd 28 ff ff ff    	mov    %edi,-0xd8(%ebp)
 804a64c:	8b bd 48 ff ff ff    	mov    -0xb8(%ebp),%edi
 804a652:	8d 45 a8             	lea    -0x58(%ebp),%eax
 804a655:	29 d0                	sub    %edx,%eax
 804a657:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
 804a65d:	e9 d6 f2 ff ff       	jmp    8049938 <_svfprintf_r+0x458>
 804a662:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 804a668:	83 f9 09             	cmp    $0x9,%ecx
 804a66b:	77 a5                	ja     804a612 <_svfprintf_r+0x1132>
 804a66d:	8b 85 00 ff ff ff    	mov    -0x100(%ebp),%eax
 804a673:	83 c1 30             	add    $0x30,%ecx
 804a676:	88 4d a7             	mov    %cl,-0x59(%ebp)
 804a679:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
 804a67f:	8d 45 a7             	lea    -0x59(%ebp),%eax
 804a682:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
 804a688:	e9 ab f2 ff ff       	jmp    8049938 <_svfprintf_r+0x458>
 804a68d:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
 804a693:	89 44 24 08          	mov    %eax,0x8(%esp)
 804a697:	8b 45 0c             	mov    0xc(%ebp),%eax
 804a69a:	89 44 24 04          	mov    %eax,0x4(%esp)
 804a69e:	8b 45 08             	mov    0x8(%ebp),%eax
 804a6a1:	89 04 24             	mov    %eax,(%esp)
 804a6a4:	e8 a7 68 00 00       	call   8050f50 <__ssprint_r>
 804a6a9:	85 c0                	test   %eax,%eax
 804a6ab:	0f 85 ff ef ff ff    	jne    80496b0 <_svfprintf_r+0x1d0>
 804a6b1:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
 804a6b8:	8d 7d a8             	lea    -0x58(%ebp),%edi
 804a6bb:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
 804a6c1:	e9 18 f7 ff ff       	jmp    8049dde <_svfprintf_r+0x8fe>
 804a6c6:	8b 9d 1c ff ff ff    	mov    -0xe4(%ebp),%ebx
 804a6cc:	8d 73 ff             	lea    -0x1(%ebx),%esi
 804a6cf:	85 f6                	test   %esi,%esi
 804a6d1:	0f 8e f0 fc ff ff    	jle    804a3c7 <_svfprintf_r+0xee7>
 804a6d7:	83 fe 10             	cmp    $0x10,%esi
 804a6da:	7e 70                	jle    804a74c <_svfprintf_r+0x126c>
 804a6dc:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
 804a6e2:	eb 0c                	jmp    804a6f0 <_svfprintf_r+0x1210>
 804a6e4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 804a6e8:	83 ee 10             	sub    $0x10,%esi
 804a6eb:	83 fe 10             	cmp    $0x10,%esi
 804a6ee:	7e 5c                	jle    804a74c <_svfprintf_r+0x126c>
 804a6f0:	83 c0 01             	add    $0x1,%eax
 804a6f3:	83 c2 10             	add    $0x10,%edx
 804a6f6:	c7 07 6c 4a 05 08    	movl   $0x8054a6c,(%edi)
 804a6fc:	83 c7 08             	add    $0x8,%edi
 804a6ff:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
 804a706:	83 f8 07             	cmp    $0x7,%eax
 804a709:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
 804a70f:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
 804a715:	7e d1                	jle    804a6e8 <_svfprintf_r+0x1208>
 804a717:	8b 45 0c             	mov    0xc(%ebp),%eax
 804a71a:	89 5c 24 08          	mov    %ebx,0x8(%esp)
 804a71e:	89 44 24 04          	mov    %eax,0x4(%esp)
 804a722:	8b 45 08             	mov    0x8(%ebp),%eax
 804a725:	89 04 24             	mov    %eax,(%esp)
 804a728:	e8 23 68 00 00       	call   8050f50 <__ssprint_r>
 804a72d:	85 c0                	test   %eax,%eax
 804a72f:	0f 85 7b ef ff ff    	jne    80496b0 <_svfprintf_r+0x1d0>
 804a735:	83 ee 10             	sub    $0x10,%esi
 804a738:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
 804a73e:	83 fe 10             	cmp    $0x10,%esi
 804a741:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 804a747:	8d 7d a8             	lea    -0x58(%ebp),%edi
 804a74a:	7f a4                	jg     804a6f0 <_svfprintf_r+0x1210>
 804a74c:	c7 07 6c 4a 05 08    	movl   $0x8054a6c,(%edi)
 804a752:	01 f2                	add    %esi,%edx
 804a754:	89 77 04             	mov    %esi,0x4(%edi)
 804a757:	e9 50 fc ff ff       	jmp    804a3ac <_svfprintf_r+0xecc>
 804a75c:	c7 07 6c 4a 05 08    	movl   $0x8054a6c,(%edi)
 804a762:	01 f1                	add    %esi,%ecx
 804a764:	89 77 04             	mov    %esi,0x4(%edi)
 804a767:	e9 6f fc ff ff       	jmp    804a3db <_svfprintf_r+0xefb>
 804a76c:	8b 45 14             	mov    0x14(%ebp),%eax
 804a76f:	8b 95 34 ff ff ff    	mov    -0xcc(%ebp),%edx
 804a775:	8b 00                	mov    (%eax),%eax
 804a777:	89 10                	mov    %edx,(%eax)
 804a779:	8b 45 14             	mov    0x14(%ebp),%eax
 804a77c:	83 c0 04             	add    $0x4,%eax
 804a77f:	89 45 14             	mov    %eax,0x14(%ebp)
 804a782:	e9 f4 ed ff ff       	jmp    804957b <_svfprintf_r+0x9b>
 804a787:	83 c0 01             	add    $0x1,%eax
 804a78a:	01 f1                	add    %esi,%ecx
 804a78c:	c7 07 6c 4a 05 08    	movl   $0x8054a6c,(%edi)
 804a792:	83 c7 08             	add    $0x8,%edi
 804a795:	89 77 fc             	mov    %esi,-0x4(%edi)
 804a798:	83 f8 07             	cmp    $0x7,%eax
 804a79b:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
 804a7a1:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
 804a7a7:	7e 2d                	jle    804a7d6 <_svfprintf_r+0x12f6>
 804a7a9:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
 804a7af:	89 44 24 08          	mov    %eax,0x8(%esp)
 804a7b3:	8b 45 0c             	mov    0xc(%ebp),%eax
 804a7b6:	89 44 24 04          	mov    %eax,0x4(%esp)
 804a7ba:	8b 45 08             	mov    0x8(%ebp),%eax
 804a7bd:	89 04 24             	mov    %eax,(%esp)
 804a7c0:	e8 8b 67 00 00       	call   8050f50 <__ssprint_r>
 804a7c5:	85 c0                	test   %eax,%eax
 804a7c7:	0f 85 e3 ee ff ff    	jne    80496b0 <_svfprintf_r+0x1d0>
 804a7cd:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
 804a7d3:	8d 7d a8             	lea    -0x58(%ebp),%edi
 804a7d6:	8b 85 28 ff ff ff    	mov    -0xd8(%ebp),%eax
 804a7dc:	8b 95 5c ff ff ff    	mov    -0xa4(%ebp),%edx
 804a7e2:	03 85 20 ff ff ff    	add    -0xe0(%ebp),%eax
 804a7e8:	3b 95 1c ff ff ff    	cmp    -0xe4(%ebp),%edx
 804a7ee:	89 c6                	mov    %eax,%esi
 804a7f0:	7c 0d                	jl     804a7ff <_svfprintf_r+0x131f>
 804a7f2:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
 804a7f9:	0f 84 5e 05 00 00    	je     804ad5d <_svfprintf_r+0x187d>
 804a7ff:	8b 85 0c ff ff ff    	mov    -0xf4(%ebp),%eax
 804a805:	89 07                	mov    %eax,(%edi)
 804a807:	8b 85 08 ff ff ff    	mov    -0xf8(%ebp),%eax
 804a80d:	01 c1                	add    %eax,%ecx
 804a80f:	89 47 04             	mov    %eax,0x4(%edi)
 804a812:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 804a818:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
 804a81e:	83 c0 01             	add    $0x1,%eax
 804a821:	83 f8 07             	cmp    $0x7,%eax
 804a824:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
 804a82a:	0f 8f d9 06 00 00    	jg     804af09 <_svfprintf_r+0x1a29>
 804a830:	83 c7 08             	add    $0x8,%edi
 804a833:	89 d0                	mov    %edx,%eax
 804a835:	8b 9d 44 ff ff ff    	mov    -0xbc(%ebp),%ebx
 804a83b:	89 f2                	mov    %esi,%edx
 804a83d:	29 f3                	sub    %esi,%ebx
 804a83f:	8b b5 1c ff ff ff    	mov    -0xe4(%ebp),%esi
 804a845:	29 c6                	sub    %eax,%esi
 804a847:	39 de                	cmp    %ebx,%esi
 804a849:	0f 4e de             	cmovle %esi,%ebx
 804a84c:	85 db                	test   %ebx,%ebx
 804a84e:	7e 29                	jle    804a879 <_svfprintf_r+0x1399>
 804a850:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 804a856:	01 d9                	add    %ebx,%ecx
 804a858:	83 c7 08             	add    $0x8,%edi
 804a85b:	89 57 f8             	mov    %edx,-0x8(%edi)
 804a85e:	89 5f fc             	mov    %ebx,-0x4(%edi)
 804a861:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
 804a867:	83 c0 01             	add    $0x1,%eax
 804a86a:	83 f8 07             	cmp    $0x7,%eax
 804a86d:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
 804a873:	0f 8f c8 06 00 00    	jg     804af41 <_svfprintf_r+0x1a61>
 804a879:	31 c0                	xor    %eax,%eax
 804a87b:	85 db                	test   %ebx,%ebx
 804a87d:	0f 49 c3             	cmovns %ebx,%eax
 804a880:	29 c6                	sub    %eax,%esi
 804a882:	85 f6                	test   %esi,%esi
 804a884:	0f 8e 02 f7 ff ff    	jle    8049f8c <_svfprintf_r+0xaac>
 804a88a:	83 fe 10             	cmp    $0x10,%esi
 804a88d:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 804a893:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
 804a899:	7f 11                	jg     804a8ac <_svfprintf_r+0x13cc>
 804a89b:	e9 bc fe ff ff       	jmp    804a75c <_svfprintf_r+0x127c>
 804a8a0:	83 ee 10             	sub    $0x10,%esi
 804a8a3:	83 fe 10             	cmp    $0x10,%esi
 804a8a6:	0f 8e b0 fe ff ff    	jle    804a75c <_svfprintf_r+0x127c>
 804a8ac:	83 c0 01             	add    $0x1,%eax
 804a8af:	83 c1 10             	add    $0x10,%ecx
 804a8b2:	c7 07 6c 4a 05 08    	movl   $0x8054a6c,(%edi)
 804a8b8:	83 c7 08             	add    $0x8,%edi
 804a8bb:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
 804a8c2:	83 f8 07             	cmp    $0x7,%eax
 804a8c5:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
 804a8cb:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
 804a8d1:	7e cd                	jle    804a8a0 <_svfprintf_r+0x13c0>
 804a8d3:	8b 45 0c             	mov    0xc(%ebp),%eax
 804a8d6:	89 5c 24 08          	mov    %ebx,0x8(%esp)
 804a8da:	89 44 24 04          	mov    %eax,0x4(%esp)
 804a8de:	8b 45 08             	mov    0x8(%ebp),%eax
 804a8e1:	89 04 24             	mov    %eax,(%esp)
 804a8e4:	e8 67 66 00 00       	call   8050f50 <__ssprint_r>
 804a8e9:	85 c0                	test   %eax,%eax
 804a8eb:	0f 85 bf ed ff ff    	jne    80496b0 <_svfprintf_r+0x1d0>
 804a8f1:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
 804a8f7:	8d 7d a8             	lea    -0x58(%ebp),%edi
 804a8fa:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 804a900:	eb 9e                	jmp    804a8a0 <_svfprintf_r+0x13c0>
 804a902:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
 804a909:	0f 85 14 fa ff ff    	jne    804a323 <_svfprintf_r+0xe43>
 804a90f:	89 07                	mov    %eax,(%edi)
 804a911:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 804a917:	8d 51 01             	lea    0x1(%ecx),%edx
 804a91a:	c7 47 04 01 00 00 00 	movl   $0x1,0x4(%edi)
 804a921:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
 804a927:	83 c0 01             	add    $0x1,%eax
 804a92a:	83 f8 07             	cmp    $0x7,%eax
 804a92d:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
 804a933:	0f 8e 8b fa ff ff    	jle    804a3c4 <_svfprintf_r+0xee4>
 804a939:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
 804a93f:	89 44 24 08          	mov    %eax,0x8(%esp)
 804a943:	8b 45 0c             	mov    0xc(%ebp),%eax
 804a946:	89 44 24 04          	mov    %eax,0x4(%esp)
 804a94a:	8b 45 08             	mov    0x8(%ebp),%eax
 804a94d:	89 04 24             	mov    %eax,(%esp)
 804a950:	e8 fb 65 00 00       	call   8050f50 <__ssprint_r>
 804a955:	85 c0                	test   %eax,%eax
 804a957:	0f 85 53 ed ff ff    	jne    80496b0 <_svfprintf_r+0x1d0>
 804a95d:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
 804a963:	8d 7d a8             	lea    -0x58(%ebp),%edi
 804a966:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 804a96c:	e9 56 fa ff ff       	jmp    804a3c7 <_svfprintf_r+0xee7>
 804a971:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
 804a977:	89 44 24 08          	mov    %eax,0x8(%esp)
 804a97b:	8b 45 0c             	mov    0xc(%ebp),%eax
 804a97e:	89 44 24 04          	mov    %eax,0x4(%esp)
 804a982:	8b 45 08             	mov    0x8(%ebp),%eax
 804a985:	89 04 24             	mov    %eax,(%esp)
 804a988:	e8 c3 65 00 00       	call   8050f50 <__ssprint_r>
 804a98d:	85 c0                	test   %eax,%eax
 804a98f:	0f 85 1b ed ff ff    	jne    80496b0 <_svfprintf_r+0x1d0>
 804a995:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
 804a99b:	8d 7d a8             	lea    -0x58(%ebp),%edi
 804a99e:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 804a9a4:	e9 d6 f9 ff ff       	jmp    804a37f <_svfprintf_r+0xe9f>
 804a9a9:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
 804a9af:	89 44 24 08          	mov    %eax,0x8(%esp)
 804a9b3:	8b 45 0c             	mov    0xc(%ebp),%eax
 804a9b6:	89 44 24 04          	mov    %eax,0x4(%esp)
 804a9ba:	8b 45 08             	mov    0x8(%ebp),%eax
 804a9bd:	89 04 24             	mov    %eax,(%esp)
 804a9c0:	e8 8b 65 00 00       	call   8050f50 <__ssprint_r>
 804a9c5:	85 c0                	test   %eax,%eax
 804a9c7:	0f 85 e3 ec ff ff    	jne    80496b0 <_svfprintf_r+0x1d0>
 804a9cd:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
 804a9d3:	8d 7d a8             	lea    -0x58(%ebp),%edi
 804a9d6:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 804a9dc:	e9 6f f9 ff ff       	jmp    804a350 <_svfprintf_r+0xe70>
 804a9e1:	dd 85 10 ff ff ff    	fldl   -0xf0(%ebp)
 804a9e7:	dd 1c 24             	fstpl  (%esp)
 804a9ea:	e8 41 63 00 00       	call   8050d30 <__fpclassifyd>
 804a9ef:	85 c0                	test   %eax,%eax
 804a9f1:	0f 85 a3 01 00 00    	jne    804ab9a <_svfprintf_r+0x16ba>
 804a9f7:	83 bd 24 ff ff ff 47 	cmpl   $0x47,-0xdc(%ebp)
 804a9fe:	ba d4 48 05 08       	mov    $0x80548d4,%edx
 804aa03:	b8 d8 48 05 08       	mov    $0x80548d8,%eax
 804aa08:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
 804aa0f:	c7 85 48 ff ff ff 03 	movl   $0x3,-0xb8(%ebp)
 804aa16:	00 00 00 
 804aa19:	0f 4e c2             	cmovle %edx,%eax
 804aa1c:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
 804aa22:	81 a5 4c ff ff ff 7f 	andl   $0xffffff7f,-0xb4(%ebp)
 804aa29:	ff ff ff 
 804aa2c:	c7 85 38 ff ff ff 03 	movl   $0x3,-0xc8(%ebp)
 804aa33:	00 00 00 
 804aa36:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
 804aa3d:	00 00 00 
 804aa40:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
 804aa47:	00 00 00 
 804aa4a:	e9 29 ed ff ff       	jmp    8049778 <_svfprintf_r+0x298>
 804aa4f:	dd 00                	fldl   (%eax)
 804aa51:	83 c0 08             	add    $0x8,%eax
 804aa54:	dd 9d 10 ff ff ff    	fstpl  -0xf0(%ebp)
 804aa5a:	89 45 14             	mov    %eax,0x14(%ebp)
 804aa5d:	e9 e6 ef ff ff       	jmp    8049a48 <_svfprintf_r+0x568>
 804aa62:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
 804aa68:	89 44 24 08          	mov    %eax,0x8(%esp)
 804aa6c:	8b 45 0c             	mov    0xc(%ebp),%eax
 804aa6f:	89 44 24 04          	mov    %eax,0x4(%esp)
 804aa73:	8b 45 08             	mov    0x8(%ebp),%eax
 804aa76:	89 04 24             	mov    %eax,(%esp)
 804aa79:	e8 d2 64 00 00       	call   8050f50 <__ssprint_r>
 804aa7e:	85 c0                	test   %eax,%eax
 804aa80:	0f 85 2a ec ff ff    	jne    80496b0 <_svfprintf_r+0x1d0>
 804aa86:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
 804aa8c:	8d 7d a8             	lea    -0x58(%ebp),%edi
 804aa8f:	e9 6b f6 ff ff       	jmp    804a0ff <_svfprintf_r+0xc1f>
 804aa94:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 804aa9a:	83 c1 01             	add    $0x1,%ecx
 804aa9d:	83 c7 08             	add    $0x8,%edi
 804aaa0:	c7 47 f8 3d 46 05 08 	movl   $0x805463d,-0x8(%edi)
 804aaa7:	c7 47 fc 01 00 00 00 	movl   $0x1,-0x4(%edi)
 804aaae:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
 804aab4:	83 c0 01             	add    $0x1,%eax
 804aab7:	83 f8 07             	cmp    $0x7,%eax
 804aaba:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
 804aac0:	0f 8f ef 02 00 00    	jg     804adb5 <_svfprintf_r+0x18d5>
 804aac6:	85 db                	test   %ebx,%ebx
 804aac8:	75 17                	jne    804aae1 <_svfprintf_r+0x1601>
 804aaca:	8b 95 1c ff ff ff    	mov    -0xe4(%ebp),%edx
 804aad0:	85 d2                	test   %edx,%edx
 804aad2:	75 0d                	jne    804aae1 <_svfprintf_r+0x1601>
 804aad4:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
 804aadb:	0f 84 ab f4 ff ff    	je     8049f8c <_svfprintf_r+0xaac>
 804aae1:	8b 85 0c ff ff ff    	mov    -0xf4(%ebp),%eax
 804aae7:	83 c7 08             	add    $0x8,%edi
 804aaea:	89 47 f8             	mov    %eax,-0x8(%edi)
 804aaed:	8b 85 08 ff ff ff    	mov    -0xf8(%ebp),%eax
 804aaf3:	89 47 fc             	mov    %eax,-0x4(%edi)
 804aaf6:	8d 14 01             	lea    (%ecx,%eax,1),%edx
 804aaf9:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 804aaff:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
 804ab05:	83 c0 01             	add    $0x1,%eax
 804ab08:	83 f8 07             	cmp    $0x7,%eax
 804ab0b:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
 804ab11:	0f 8f 60 03 00 00    	jg     804ae77 <_svfprintf_r+0x1997>
 804ab17:	f7 db                	neg    %ebx
 804ab19:	85 db                	test   %ebx,%ebx
 804ab1b:	0f 8e 21 03 00 00    	jle    804ae42 <_svfprintf_r+0x1962>
 804ab21:	83 fb 10             	cmp    $0x10,%ebx
 804ab24:	0f 8e c3 02 00 00    	jle    804aded <_svfprintf_r+0x190d>
 804ab2a:	8d b5 74 ff ff ff    	lea    -0x8c(%ebp),%esi
 804ab30:	eb 12                	jmp    804ab44 <_svfprintf_r+0x1664>
 804ab32:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 804ab38:	83 eb 10             	sub    $0x10,%ebx
 804ab3b:	83 fb 10             	cmp    $0x10,%ebx
 804ab3e:	0f 8e a9 02 00 00    	jle    804aded <_svfprintf_r+0x190d>
 804ab44:	83 c0 01             	add    $0x1,%eax
 804ab47:	83 c2 10             	add    $0x10,%edx
 804ab4a:	c7 07 6c 4a 05 08    	movl   $0x8054a6c,(%edi)
 804ab50:	83 c7 08             	add    $0x8,%edi
 804ab53:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
 804ab5a:	83 f8 07             	cmp    $0x7,%eax
 804ab5d:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
 804ab63:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
 804ab69:	7e cd                	jle    804ab38 <_svfprintf_r+0x1658>
 804ab6b:	8b 45 0c             	mov    0xc(%ebp),%eax
 804ab6e:	89 74 24 08          	mov    %esi,0x8(%esp)
 804ab72:	89 44 24 04          	mov    %eax,0x4(%esp)
 804ab76:	8b 45 08             	mov    0x8(%ebp),%eax
 804ab79:	89 04 24             	mov    %eax,(%esp)
 804ab7c:	e8 cf 63 00 00       	call   8050f50 <__ssprint_r>
 804ab81:	85 c0                	test   %eax,%eax
 804ab83:	0f 85 27 eb ff ff    	jne    80496b0 <_svfprintf_r+0x1d0>
 804ab89:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
 804ab8f:	8d 7d a8             	lea    -0x58(%ebp),%edi
 804ab92:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 804ab98:	eb 9e                	jmp    804ab38 <_svfprintf_r+0x1658>
 804ab9a:	8b 9d 24 ff ff ff    	mov    -0xdc(%ebp),%ebx
 804aba0:	83 e3 df             	and    $0xffffffdf,%ebx
 804aba3:	83 bd 44 ff ff ff ff 	cmpl   $0xffffffff,-0xbc(%ebp)
 804abaa:	0f 84 05 03 00 00    	je     804aeb5 <_svfprintf_r+0x19d5>
 804abb0:	83 fb 47             	cmp    $0x47,%ebx
 804abb3:	75 16                	jne    804abcb <_svfprintf_r+0x16eb>
 804abb5:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
 804abbb:	b8 01 00 00 00       	mov    $0x1,%eax
 804abc0:	85 d2                	test   %edx,%edx
 804abc2:	0f 45 c2             	cmovne %edx,%eax
 804abc5:	89 85 44 ff ff ff    	mov    %eax,-0xbc(%ebp)
 804abcb:	8b 85 4c ff ff ff    	mov    -0xb4(%ebp),%eax
 804abd1:	dd 85 10 ff ff ff    	fldl   -0xf0(%ebp)
 804abd7:	dd 95 38 ff ff ff    	fstl   -0xc8(%ebp)
 804abdd:	80 cc 01             	or     $0x1,%ah
 804abe0:	89 85 30 ff ff ff    	mov    %eax,-0xd0(%ebp)
 804abe6:	8b 85 3c ff ff ff    	mov    -0xc4(%ebp),%eax
 804abec:	c6 85 48 ff ff ff 00 	movb   $0x0,-0xb8(%ebp)
 804abf3:	85 c0                	test   %eax,%eax
 804abf5:	0f 88 ba 05 00 00    	js     804b1b5 <_svfprintf_r+0x1cd5>
 804abfb:	83 fb 46             	cmp    $0x46,%ebx
 804abfe:	0f 94 c0             	sete   %al
 804ac01:	89 c6                	mov    %eax,%esi
 804ac03:	0f 84 d4 03 00 00    	je     804afdd <_svfprintf_r+0x1afd>
 804ac09:	83 fb 45             	cmp    $0x45,%ebx
 804ac0c:	0f 85 99 05 00 00    	jne    804b1ab <_svfprintf_r+0x1ccb>
 804ac12:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
 804ac18:	dd 54 24 04          	fstl   0x4(%esp)
 804ac1c:	c7 44 24 0c 02 00 00 	movl   $0x2,0xc(%esp)
 804ac23:	00 
 804ac24:	dd 9d 38 ff ff ff    	fstpl  -0xc8(%ebp)
 804ac2a:	8d 70 01             	lea    0x1(%eax),%esi
 804ac2d:	8d 85 6c ff ff ff    	lea    -0x94(%ebp),%eax
 804ac33:	89 44 24 1c          	mov    %eax,0x1c(%esp)
 804ac37:	8d 85 60 ff ff ff    	lea    -0xa0(%ebp),%eax
 804ac3d:	89 44 24 18          	mov    %eax,0x18(%esp)
 804ac41:	8d 85 5c ff ff ff    	lea    -0xa4(%ebp),%eax
 804ac47:	89 44 24 14          	mov    %eax,0x14(%esp)
 804ac4b:	8b 45 08             	mov    0x8(%ebp),%eax
 804ac4e:	89 74 24 10          	mov    %esi,0x10(%esp)
 804ac52:	89 04 24             	mov    %eax,(%esp)
 804ac55:	e8 06 2b 00 00       	call   804d760 <_dtoa_r>
 804ac5a:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
 804ac60:	8d 0c 30             	lea    (%eax,%esi,1),%ecx
 804ac63:	dd 85 38 ff ff ff    	fldl   -0xc8(%ebp)
 804ac69:	90                   	nop
 804ac6a:	90                   	nop
 804ac6b:	d9 c9                	fxch   %st(1)
 804ac6d:	df e9                	fucomip %st(1),%st
 804ac6f:	dd d8                	fstp   %st(0)
 804ac71:	0f 8a fd 00 00 00    	jp     804ad74 <_svfprintf_r+0x1894>
 804ac77:	89 c8                	mov    %ecx,%eax
 804ac79:	0f 85 f5 00 00 00    	jne    804ad74 <_svfprintf_r+0x1894>
 804ac7f:	2b 85 28 ff ff ff    	sub    -0xd8(%ebp),%eax
 804ac85:	83 fb 47             	cmp    $0x47,%ebx
 804ac88:	89 85 1c ff ff ff    	mov    %eax,-0xe4(%ebp)
 804ac8e:	0f 84 1e 04 00 00    	je     804b0b2 <_svfprintf_r+0x1bd2>
 804ac94:	83 bd 24 ff ff ff 65 	cmpl   $0x65,-0xdc(%ebp)
 804ac9b:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
 804aca1:	0f 8e 65 04 00 00    	jle    804b10c <_svfprintf_r+0x1c2c>
 804aca7:	83 bd 24 ff ff ff 66 	cmpl   $0x66,-0xdc(%ebp)
 804acae:	89 85 20 ff ff ff    	mov    %eax,-0xe0(%ebp)
 804acb4:	0f 84 3c 05 00 00    	je     804b1f6 <_svfprintf_r+0x1d16>
 804acba:	8b 85 20 ff ff ff    	mov    -0xe0(%ebp),%eax
 804acc0:	39 85 1c ff ff ff    	cmp    %eax,-0xe4(%ebp)
 804acc6:	0f 8f f7 04 00 00    	jg     804b1c3 <_svfprintf_r+0x1ce3>
 804accc:	8b 85 4c ff ff ff    	mov    -0xb4(%ebp),%eax
 804acd2:	83 e0 01             	and    $0x1,%eax
 804acd5:	0f 85 e2 05 00 00    	jne    804b2bd <_svfprintf_r+0x1ddd>
 804acdb:	8b 95 20 ff ff ff    	mov    -0xe0(%ebp),%edx
 804ace1:	c7 85 24 ff ff ff 67 	movl   $0x67,-0xdc(%ebp)
 804ace8:	00 00 00 
 804aceb:	85 d2                	test   %edx,%edx
 804aced:	0f 49 c2             	cmovns %edx,%eax
 804acf0:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
 804acf6:	80 bd 48 ff ff ff 00 	cmpb   $0x0,-0xb8(%ebp)
 804acfd:	0f 85 68 03 00 00    	jne    804b06b <_svfprintf_r+0x1b8b>
 804ad03:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
 804ad09:	8b 85 30 ff ff ff    	mov    -0xd0(%ebp),%eax
 804ad0f:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
 804ad16:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
 804ad1d:	00 00 00 
 804ad20:	89 85 4c ff ff ff    	mov    %eax,-0xb4(%ebp)
 804ad26:	e9 4d ea ff ff       	jmp    8049778 <_svfprintf_r+0x298>
 804ad2b:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
 804ad31:	89 44 24 08          	mov    %eax,0x8(%esp)
 804ad35:	8b 45 0c             	mov    0xc(%ebp),%eax
 804ad38:	89 44 24 04          	mov    %eax,0x4(%esp)
 804ad3c:	8b 45 08             	mov    0x8(%ebp),%eax
 804ad3f:	89 04 24             	mov    %eax,(%esp)
 804ad42:	e8 09 62 00 00       	call   8050f50 <__ssprint_r>
 804ad47:	85 c0                	test   %eax,%eax
 804ad49:	0f 85 61 e9 ff ff    	jne    80496b0 <_svfprintf_r+0x1d0>
 804ad4f:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
 804ad55:	8d 7d a8             	lea    -0x58(%ebp),%edi
 804ad58:	e9 f2 f3 ff ff       	jmp    804a14f <_svfprintf_r+0xc6f>
 804ad5d:	89 d0                	mov    %edx,%eax
 804ad5f:	e9 d1 fa ff ff       	jmp    804a835 <_svfprintf_r+0x1355>
 804ad64:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 804ad68:	8d 50 01             	lea    0x1(%eax),%edx
 804ad6b:	89 95 6c ff ff ff    	mov    %edx,-0x94(%ebp)
 804ad71:	c6 00 30             	movb   $0x30,(%eax)
 804ad74:	8b 85 6c ff ff ff    	mov    -0x94(%ebp),%eax
 804ad7a:	39 c1                	cmp    %eax,%ecx
 804ad7c:	77 ea                	ja     804ad68 <_svfprintf_r+0x1888>
 804ad7e:	e9 fc fe ff ff       	jmp    804ac7f <_svfprintf_r+0x179f>
 804ad83:	8b 45 08             	mov    0x8(%ebp),%eax
 804ad86:	c7 44 24 04 40 00 00 	movl   $0x40,0x4(%esp)
 804ad8d:	00 
 804ad8e:	89 04 24             	mov    %eax,(%esp)
 804ad91:	e8 3a 49 00 00       	call   804f6d0 <_malloc_r>
 804ad96:	8b 55 0c             	mov    0xc(%ebp),%edx
 804ad99:	85 c0                	test   %eax,%eax
 804ad9b:	89 02                	mov    %eax,(%edx)
 804ad9d:	89 42 10             	mov    %eax,0x10(%edx)
 804ada0:	0f 84 15 06 00 00    	je     804b3bb <_svfprintf_r+0x1edb>
 804ada6:	8b 45 0c             	mov    0xc(%ebp),%eax
 804ada9:	c7 40 14 40 00 00 00 	movl   $0x40,0x14(%eax)
 804adb0:	e9 6c e7 ff ff       	jmp    8049521 <_svfprintf_r+0x41>
 804adb5:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
 804adbb:	89 44 24 08          	mov    %eax,0x8(%esp)
 804adbf:	8b 45 0c             	mov    0xc(%ebp),%eax
 804adc2:	89 44 24 04          	mov    %eax,0x4(%esp)
 804adc6:	8b 45 08             	mov    0x8(%ebp),%eax
 804adc9:	89 04 24             	mov    %eax,(%esp)
 804adcc:	e8 7f 61 00 00       	call   8050f50 <__ssprint_r>
 804add1:	85 c0                	test   %eax,%eax
 804add3:	0f 85 d7 e8 ff ff    	jne    80496b0 <_svfprintf_r+0x1d0>
 804add9:	8b 9d 5c ff ff ff    	mov    -0xa4(%ebp),%ebx
 804addf:	8d 7d a8             	lea    -0x58(%ebp),%edi
 804ade2:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
 804ade8:	e9 d9 fc ff ff       	jmp    804aac6 <_svfprintf_r+0x15e6>
 804aded:	83 c0 01             	add    $0x1,%eax
 804adf0:	01 da                	add    %ebx,%edx
 804adf2:	c7 07 6c 4a 05 08    	movl   $0x8054a6c,(%edi)
 804adf8:	83 c7 08             	add    $0x8,%edi
 804adfb:	89 5f fc             	mov    %ebx,-0x4(%edi)
 804adfe:	83 f8 07             	cmp    $0x7,%eax
 804ae01:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
 804ae07:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
 804ae0d:	7e 33                	jle    804ae42 <_svfprintf_r+0x1962>
 804ae0f:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
 804ae15:	89 44 24 08          	mov    %eax,0x8(%esp)
 804ae19:	8b 45 0c             	mov    0xc(%ebp),%eax
 804ae1c:	89 44 24 04          	mov    %eax,0x4(%esp)
 804ae20:	8b 45 08             	mov    0x8(%ebp),%eax
 804ae23:	89 04 24             	mov    %eax,(%esp)
 804ae26:	e8 25 61 00 00       	call   8050f50 <__ssprint_r>
 804ae2b:	85 c0                	test   %eax,%eax
 804ae2d:	0f 85 7d e8 ff ff    	jne    80496b0 <_svfprintf_r+0x1d0>
 804ae33:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
 804ae39:	8d 7d a8             	lea    -0x58(%ebp),%edi
 804ae3c:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 804ae42:	8b 9d 28 ff ff ff    	mov    -0xd8(%ebp),%ebx
 804ae48:	83 c0 01             	add    $0x1,%eax
 804ae4b:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
 804ae51:	89 1f                	mov    %ebx,(%edi)
 804ae53:	8b 9d 1c ff ff ff    	mov    -0xe4(%ebp),%ebx
 804ae59:	01 da                	add    %ebx,%edx
 804ae5b:	83 f8 07             	cmp    $0x7,%eax
 804ae5e:	89 5f 04             	mov    %ebx,0x4(%edi)
 804ae61:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
 804ae67:	0f 8f 86 f5 ff ff    	jg     804a3f3 <_svfprintf_r+0xf13>
 804ae6d:	83 c7 08             	add    $0x8,%edi
 804ae70:	89 d1                	mov    %edx,%ecx
 804ae72:	e9 15 f1 ff ff       	jmp    8049f8c <_svfprintf_r+0xaac>
 804ae77:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
 804ae7d:	89 44 24 08          	mov    %eax,0x8(%esp)
 804ae81:	8b 45 0c             	mov    0xc(%ebp),%eax
 804ae84:	89 44 24 04          	mov    %eax,0x4(%esp)
 804ae88:	8b 45 08             	mov    0x8(%ebp),%eax
 804ae8b:	89 04 24             	mov    %eax,(%esp)
 804ae8e:	e8 bd 60 00 00       	call   8050f50 <__ssprint_r>
 804ae93:	85 c0                	test   %eax,%eax
 804ae95:	0f 85 15 e8 ff ff    	jne    80496b0 <_svfprintf_r+0x1d0>
 804ae9b:	8b 9d 5c ff ff ff    	mov    -0xa4(%ebp),%ebx
 804aea1:	8d 7d a8             	lea    -0x58(%ebp),%edi
 804aea4:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
 804aeaa:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 804aeb0:	e9 62 fc ff ff       	jmp    804ab17 <_svfprintf_r+0x1637>
 804aeb5:	c7 85 44 ff ff ff 06 	movl   $0x6,-0xbc(%ebp)
 804aebc:	00 00 00 
 804aebf:	e9 07 fd ff ff       	jmp    804abcb <_svfprintf_r+0x16eb>
 804aec4:	8b 85 28 ff ff ff    	mov    -0xd8(%ebp),%eax
 804aeca:	89 04 24             	mov    %eax,(%esp)
 804aecd:	e8 8e e5 ff ff       	call   8049460 <strlen>
 804aed2:	e9 6a e8 ff ff       	jmp    8049741 <_svfprintf_r+0x261>
 804aed7:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
 804aedd:	89 44 24 08          	mov    %eax,0x8(%esp)
 804aee1:	8b 45 0c             	mov    0xc(%ebp),%eax
 804aee4:	89 44 24 04          	mov    %eax,0x4(%esp)
 804aee8:	8b 45 08             	mov    0x8(%ebp),%eax
 804aeeb:	89 04 24             	mov    %eax,(%esp)
 804aeee:	e8 5d 60 00 00       	call   8050f50 <__ssprint_r>
 804aef3:	85 c0                	test   %eax,%eax
 804aef5:	0f 85 b5 e7 ff ff    	jne    80496b0 <_svfprintf_r+0x1d0>
 804aefb:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
 804af01:	8d 7d a8             	lea    -0x58(%ebp),%edi
 804af04:	e9 76 f6 ff ff       	jmp    804a57f <_svfprintf_r+0x109f>
 804af09:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
 804af0f:	89 44 24 08          	mov    %eax,0x8(%esp)
 804af13:	8b 45 0c             	mov    0xc(%ebp),%eax
 804af16:	89 44 24 04          	mov    %eax,0x4(%esp)
 804af1a:	8b 45 08             	mov    0x8(%ebp),%eax
 804af1d:	89 04 24             	mov    %eax,(%esp)
 804af20:	e8 2b 60 00 00       	call   8050f50 <__ssprint_r>
 804af25:	85 c0                	test   %eax,%eax
 804af27:	0f 85 83 e7 ff ff    	jne    80496b0 <_svfprintf_r+0x1d0>
 804af2d:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
 804af33:	8d 7d a8             	lea    -0x58(%ebp),%edi
 804af36:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
 804af3c:	e9 f4 f8 ff ff       	jmp    804a835 <_svfprintf_r+0x1355>
 804af41:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
 804af47:	89 44 24 08          	mov    %eax,0x8(%esp)
 804af4b:	8b 45 0c             	mov    0xc(%ebp),%eax
 804af4e:	89 44 24 04          	mov    %eax,0x4(%esp)
 804af52:	8b 45 08             	mov    0x8(%ebp),%eax
 804af55:	89 04 24             	mov    %eax,(%esp)
 804af58:	e8 f3 5f 00 00       	call   8050f50 <__ssprint_r>
 804af5d:	85 c0                	test   %eax,%eax
 804af5f:	0f 85 4b e7 ff ff    	jne    80496b0 <_svfprintf_r+0x1d0>
 804af65:	8b b5 1c ff ff ff    	mov    -0xe4(%ebp),%esi
 804af6b:	8d 7d a8             	lea    -0x58(%ebp),%edi
 804af6e:	2b b5 5c ff ff ff    	sub    -0xa4(%ebp),%esi
 804af74:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
 804af7a:	e9 fa f8 ff ff       	jmp    804a879 <_svfprintf_r+0x1399>
 804af7f:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
 804af85:	b0 06                	mov    $0x6,%al
 804af87:	89 75 14             	mov    %esi,0x14(%ebp)
 804af8a:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
 804af91:	00 00 00 
 804af94:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
 804af9b:	00 00 00 
 804af9e:	83 fa 06             	cmp    $0x6,%edx
 804afa1:	0f 46 c2             	cmovbe %edx,%eax
 804afa4:	8b 95 28 ff ff ff    	mov    -0xd8(%ebp),%edx
 804afaa:	85 c0                	test   %eax,%eax
 804afac:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
 804afb2:	c7 85 28 ff ff ff fe 	movl   $0x80548fe,-0xd8(%ebp)
 804afb9:	48 05 08 
 804afbc:	0f 49 d0             	cmovns %eax,%edx
 804afbf:	31 db                	xor    %ebx,%ebx
 804afc1:	89 95 48 ff ff ff    	mov    %edx,-0xb8(%ebp)
 804afc7:	e9 b7 e7 ff ff       	jmp    8049783 <_svfprintf_r+0x2a3>
 804afcc:	c6 85 59 ff ff ff 2d 	movb   $0x2d,-0xa7(%ebp)
 804afd3:	bb 2d 00 00 00       	mov    $0x2d,%ebx
 804afd8:	e9 9d ea ff ff       	jmp    8049a7a <_svfprintf_r+0x59a>
 804afdd:	ba 03 00 00 00       	mov    $0x3,%edx
 804afe2:	8d 85 6c ff ff ff    	lea    -0x94(%ebp),%eax
 804afe8:	89 44 24 1c          	mov    %eax,0x1c(%esp)
 804afec:	8d 85 60 ff ff ff    	lea    -0xa0(%ebp),%eax
 804aff2:	89 44 24 18          	mov    %eax,0x18(%esp)
 804aff6:	8d 85 5c ff ff ff    	lea    -0xa4(%ebp),%eax
 804affc:	89 44 24 14          	mov    %eax,0x14(%esp)
 804b000:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
 804b006:	dd 54 24 04          	fstl   0x4(%esp)
 804b00a:	89 54 24 0c          	mov    %edx,0xc(%esp)
 804b00e:	dd 9d 38 ff ff ff    	fstpl  -0xc8(%ebp)
 804b014:	89 44 24 10          	mov    %eax,0x10(%esp)
 804b018:	8b 45 08             	mov    0x8(%ebp),%eax
 804b01b:	89 04 24             	mov    %eax,(%esp)
 804b01e:	e8 3d 27 00 00       	call   804d760 <_dtoa_r>
 804b023:	83 fb 47             	cmp    $0x47,%ebx
 804b026:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
 804b02c:	dd 85 38 ff ff ff    	fldl   -0xc8(%ebp)
 804b032:	75 09                	jne    804b03d <_svfprintf_r+0x1b5d>
 804b034:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
 804b03b:	74 5b                	je     804b098 <_svfprintf_r+0x1bb8>
 804b03d:	8b 95 28 ff ff ff    	mov    -0xd8(%ebp),%edx
 804b043:	89 f0                	mov    %esi,%eax
 804b045:	8b 8d 44 ff ff ff    	mov    -0xbc(%ebp),%ecx
 804b04b:	01 d1                	add    %edx,%ecx
 804b04d:	84 c0                	test   %al,%al
 804b04f:	0f 84 14 fc ff ff    	je     804ac69 <_svfprintf_r+0x1789>
 804b055:	80 3a 30             	cmpb   $0x30,(%edx)
 804b058:	0f 84 37 02 00 00    	je     804b295 <_svfprintf_r+0x1db5>
 804b05e:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
 804b064:	01 c1                	add    %eax,%ecx
 804b066:	e9 fe fb ff ff       	jmp    804ac69 <_svfprintf_r+0x1789>
 804b06b:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
 804b071:	8b 85 30 ff ff ff    	mov    -0xd0(%ebp),%eax
 804b077:	bb 2d 00 00 00       	mov    $0x2d,%ebx
 804b07c:	c6 85 59 ff ff ff 2d 	movb   $0x2d,-0xa7(%ebp)
 804b083:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
 804b08a:	00 00 00 
 804b08d:	89 85 4c ff ff ff    	mov    %eax,-0xb4(%ebp)
 804b093:	e9 e4 e6 ff ff       	jmp    804977c <_svfprintf_r+0x29c>
 804b098:	dd d8                	fstp   %st(0)
 804b09a:	8b 85 6c ff ff ff    	mov    -0x94(%ebp),%eax
 804b0a0:	89 85 1c ff ff ff    	mov    %eax,-0xe4(%ebp)
 804b0a6:	8b 85 28 ff ff ff    	mov    -0xd8(%ebp),%eax
 804b0ac:	29 85 1c ff ff ff    	sub    %eax,-0xe4(%ebp)
 804b0b2:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
 804b0b8:	83 f8 fd             	cmp    $0xfffffffd,%eax
 804b0bb:	7c 48                	jl     804b105 <_svfprintf_r+0x1c25>
 804b0bd:	39 85 44 ff ff ff    	cmp    %eax,-0xbc(%ebp)
 804b0c3:	7c 40                	jl     804b105 <_svfprintf_r+0x1c25>
 804b0c5:	89 85 20 ff ff ff    	mov    %eax,-0xe0(%ebp)
 804b0cb:	e9 ea fb ff ff       	jmp    804acba <_svfprintf_r+0x17da>
 804b0d0:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
 804b0d6:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
 804b0dd:	89 75 14             	mov    %esi,0x14(%ebp)
 804b0e0:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
 804b0e7:	00 00 00 
 804b0ea:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
 804b0f0:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
 804b0f6:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
 804b0fd:	00 00 00 
 804b100:	e9 73 e6 ff ff       	jmp    8049778 <_svfprintf_r+0x298>
 804b105:	83 ad 24 ff ff ff 02 	subl   $0x2,-0xdc(%ebp)
 804b10c:	8d 48 ff             	lea    -0x1(%eax),%ecx
 804b10f:	0f b6 85 24 ff ff ff 	movzbl -0xdc(%ebp),%eax
 804b116:	85 c9                	test   %ecx,%ecx
 804b118:	89 8d 5c ff ff ff    	mov    %ecx,-0xa4(%ebp)
 804b11e:	88 85 65 ff ff ff    	mov    %al,-0x9b(%ebp)
 804b124:	0f 88 2c 02 00 00    	js     804b356 <_svfprintf_r+0x1e76>
 804b12a:	c6 85 66 ff ff ff 2b 	movb   $0x2b,-0x9a(%ebp)
 804b131:	83 f9 09             	cmp    $0x9,%ecx
 804b134:	0f 8f ea 00 00 00    	jg     804b224 <_svfprintf_r+0x1d44>
 804b13a:	83 c1 30             	add    $0x30,%ecx
 804b13d:	c6 85 67 ff ff ff 30 	movb   $0x30,-0x99(%ebp)
 804b144:	8d 85 69 ff ff ff    	lea    -0x97(%ebp),%eax
 804b14a:	88 8d 68 ff ff ff    	mov    %cl,-0x98(%ebp)
 804b150:	8b 9d 1c ff ff ff    	mov    -0xe4(%ebp),%ebx
 804b156:	8d 95 65 ff ff ff    	lea    -0x9b(%ebp),%edx
 804b15c:	29 d0                	sub    %edx,%eax
 804b15e:	89 85 04 ff ff ff    	mov    %eax,-0xfc(%ebp)
 804b164:	89 da                	mov    %ebx,%edx
 804b166:	01 c2                	add    %eax,%edx
 804b168:	83 fb 01             	cmp    $0x1,%ebx
 804b16b:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
 804b171:	0f 8e 21 02 00 00    	jle    804b398 <_svfprintf_r+0x1eb8>
 804b177:	31 c0                	xor    %eax,%eax
 804b179:	83 85 38 ff ff ff 01 	addl   $0x1,-0xc8(%ebp)
 804b180:	0f 49 85 38 ff ff ff 	cmovns -0xc8(%ebp),%eax
 804b187:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
 804b18e:	00 00 00 
 804b191:	e9 60 fb ff ff       	jmp    804acf6 <_svfprintf_r+0x1816>
 804b196:	8b 8d 48 ff ff ff    	mov    -0xb8(%ebp),%ecx
 804b19c:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
 804b1a3:	00 00 00 
 804b1a6:	e9 68 e4 ff ff       	jmp    8049613 <_svfprintf_r+0x133>
 804b1ab:	ba 02 00 00 00       	mov    $0x2,%edx
 804b1b0:	e9 2d fe ff ff       	jmp    804afe2 <_svfprintf_r+0x1b02>
 804b1b5:	d9 e0                	fchs   
 804b1b7:	c6 85 48 ff ff ff 2d 	movb   $0x2d,-0xb8(%ebp)
 804b1be:	e9 38 fa ff ff       	jmp    804abfb <_svfprintf_r+0x171b>
 804b1c3:	8b 8d 20 ff ff ff    	mov    -0xe0(%ebp),%ecx
 804b1c9:	ba 01 00 00 00       	mov    $0x1,%edx
 804b1ce:	85 c9                	test   %ecx,%ecx
 804b1d0:	0f 8e 5a 01 00 00    	jle    804b330 <_svfprintf_r+0x1e50>
 804b1d6:	31 c0                	xor    %eax,%eax
 804b1d8:	03 95 1c ff ff ff    	add    -0xe4(%ebp),%edx
 804b1de:	c7 85 24 ff ff ff 67 	movl   $0x67,-0xdc(%ebp)
 804b1e5:	00 00 00 
 804b1e8:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
 804b1ee:	0f 49 c2             	cmovns %edx,%eax
 804b1f1:	e9 00 fb ff ff       	jmp    804acf6 <_svfprintf_r+0x1816>
 804b1f6:	85 c0                	test   %eax,%eax
 804b1f8:	0f 8e 06 01 00 00    	jle    804b304 <_svfprintf_r+0x1e24>
 804b1fe:	8b b5 44 ff ff ff    	mov    -0xbc(%ebp),%esi
 804b204:	85 f6                	test   %esi,%esi
 804b206:	0f 85 d4 00 00 00    	jne    804b2e0 <_svfprintf_r+0x1e00>
 804b20c:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
 804b213:	0f 85 c7 00 00 00    	jne    804b2e0 <_svfprintf_r+0x1e00>
 804b219:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
 804b21f:	e9 d2 fa ff ff       	jmp    804acf6 <_svfprintf_r+0x1816>
 804b224:	8d b5 73 ff ff ff    	lea    -0x8d(%ebp),%esi
 804b22a:	89 f3                	mov    %esi,%ebx
 804b22c:	b8 67 66 66 66       	mov    $0x66666667,%eax
 804b231:	83 eb 01             	sub    $0x1,%ebx
 804b234:	f7 e9                	imul   %ecx
 804b236:	89 c8                	mov    %ecx,%eax
 804b238:	c1 f8 1f             	sar    $0x1f,%eax
 804b23b:	c1 fa 02             	sar    $0x2,%edx
 804b23e:	29 c2                	sub    %eax,%edx
 804b240:	8d 04 92             	lea    (%edx,%edx,4),%eax
 804b243:	01 c0                	add    %eax,%eax
 804b245:	29 c1                	sub    %eax,%ecx
 804b247:	83 fa 09             	cmp    $0x9,%edx
 804b24a:	8d 41 30             	lea    0x30(%ecx),%eax
 804b24d:	89 d1                	mov    %edx,%ecx
 804b24f:	88 03                	mov    %al,(%ebx)
 804b251:	7f d9                	jg     804b22c <_svfprintf_r+0x1d4c>
 804b253:	8d 43 ff             	lea    -0x1(%ebx),%eax
 804b256:	83 c1 30             	add    $0x30,%ecx
 804b259:	39 f0                	cmp    %esi,%eax
 804b25b:	88 4b ff             	mov    %cl,-0x1(%ebx)
 804b25e:	0f 83 6a 01 00 00    	jae    804b3ce <_svfprintf_r+0x1eee>
 804b264:	8d 95 67 ff ff ff    	lea    -0x99(%ebp),%edx
 804b26a:	eb 07                	jmp    804b273 <_svfprintf_r+0x1d93>
 804b26c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 804b270:	0f b6 08             	movzbl (%eax),%ecx
 804b273:	83 c0 01             	add    $0x1,%eax
 804b276:	83 c2 01             	add    $0x1,%edx
 804b279:	39 f0                	cmp    %esi,%eax
 804b27b:	88 4a ff             	mov    %cl,-0x1(%edx)
 804b27e:	75 f0                	jne    804b270 <_svfprintf_r+0x1d90>
 804b280:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
 804b286:	29 d8                	sub    %ebx,%eax
 804b288:	8d 95 67 ff ff ff    	lea    -0x99(%ebp),%edx
 804b28e:	01 d0                	add    %edx,%eax
 804b290:	e9 bb fe ff ff       	jmp    804b150 <_svfprintf_r+0x1c70>
 804b295:	d9 ee                	fldz   
 804b297:	d9 c9                	fxch   %st(1)
 804b299:	db e9                	fucomi %st(1),%st
 804b29b:	dd d9                	fstp   %st(1)
 804b29d:	7a 06                	jp     804b2a5 <_svfprintf_r+0x1dc5>
 804b29f:	0f 84 b9 fd ff ff    	je     804b05e <_svfprintf_r+0x1b7e>
 804b2a5:	b8 01 00 00 00       	mov    $0x1,%eax
 804b2aa:	2b 85 44 ff ff ff    	sub    -0xbc(%ebp),%eax
 804b2b0:	89 85 5c ff ff ff    	mov    %eax,-0xa4(%ebp)
 804b2b6:	01 c1                	add    %eax,%ecx
 804b2b8:	e9 ac f9 ff ff       	jmp    804ac69 <_svfprintf_r+0x1789>
 804b2bd:	8b 95 20 ff ff ff    	mov    -0xe0(%ebp),%edx
 804b2c3:	31 c0                	xor    %eax,%eax
 804b2c5:	c7 85 24 ff ff ff 67 	movl   $0x67,-0xdc(%ebp)
 804b2cc:	00 00 00 
 804b2cf:	83 c2 01             	add    $0x1,%edx
 804b2d2:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
 804b2d8:	0f 49 c2             	cmovns %edx,%eax
 804b2db:	e9 16 fa ff ff       	jmp    804acf6 <_svfprintf_r+0x1816>
 804b2e0:	8b 95 20 ff ff ff    	mov    -0xe0(%ebp),%edx
 804b2e6:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
 804b2ec:	8d 44 10 01          	lea    0x1(%eax,%edx,1),%eax
 804b2f0:	89 c2                	mov    %eax,%edx
 804b2f2:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
 804b2f8:	31 c0                	xor    %eax,%eax
 804b2fa:	85 d2                	test   %edx,%edx
 804b2fc:	0f 49 c2             	cmovns %edx,%eax
 804b2ff:	e9 f2 f9 ff ff       	jmp    804acf6 <_svfprintf_r+0x1816>
 804b304:	8b 9d 44 ff ff ff    	mov    -0xbc(%ebp),%ebx
 804b30a:	85 db                	test   %ebx,%ebx
 804b30c:	75 2f                	jne    804b33d <_svfprintf_r+0x1e5d>
 804b30e:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
 804b315:	75 26                	jne    804b33d <_svfprintf_r+0x1e5d>
 804b317:	b8 01 00 00 00       	mov    $0x1,%eax
 804b31c:	c7 85 38 ff ff ff 01 	movl   $0x1,-0xc8(%ebp)
 804b323:	00 00 00 
 804b326:	e9 cb f9 ff ff       	jmp    804acf6 <_svfprintf_r+0x1816>
 804b32b:	90                   	nop
 804b32c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 804b330:	b2 02                	mov    $0x2,%dl
 804b332:	2b 95 20 ff ff ff    	sub    -0xe0(%ebp),%edx
 804b338:	e9 99 fe ff ff       	jmp    804b1d6 <_svfprintf_r+0x1cf6>
 804b33d:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
 804b343:	31 c0                	xor    %eax,%eax
 804b345:	83 c2 02             	add    $0x2,%edx
 804b348:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
 804b34e:	0f 49 c2             	cmovns %edx,%eax
 804b351:	e9 a0 f9 ff ff       	jmp    804acf6 <_svfprintf_r+0x1816>
 804b356:	f7 d9                	neg    %ecx
 804b358:	c6 85 66 ff ff ff 2d 	movb   $0x2d,-0x9a(%ebp)
 804b35f:	e9 cd fd ff ff       	jmp    804b131 <_svfprintf_r+0x1c51>
 804b364:	8b 55 14             	mov    0x14(%ebp),%edx
 804b367:	8b 45 14             	mov    0x14(%ebp),%eax
 804b36a:	8b 8d 48 ff ff ff    	mov    -0xb8(%ebp),%ecx
 804b370:	8b 12                	mov    (%edx),%edx
 804b372:	83 c0 04             	add    $0x4,%eax
 804b375:	89 45 14             	mov    %eax,0x14(%ebp)
 804b378:	85 d2                	test   %edx,%edx
 804b37a:	89 95 44 ff ff ff    	mov    %edx,-0xbc(%ebp)
 804b380:	0f 89 a9 e2 ff ff    	jns    804962f <_svfprintf_r+0x14f>
 804b386:	c7 85 44 ff ff ff ff 	movl   $0xffffffff,-0xbc(%ebp)
 804b38d:	ff ff ff 
 804b390:	89 c8                	mov    %ecx,%eax
 804b392:	e9 76 e2 ff ff       	jmp    804960d <_svfprintf_r+0x12d>
 804b397:	90                   	nop
 804b398:	8b 85 4c ff ff ff    	mov    -0xb4(%ebp),%eax
 804b39e:	83 e0 01             	and    $0x1,%eax
 804b3a1:	0f 85 d0 fd ff ff    	jne    804b177 <_svfprintf_r+0x1c97>
 804b3a7:	85 d2                	test   %edx,%edx
 804b3a9:	0f 49 c2             	cmovns %edx,%eax
 804b3ac:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
 804b3b3:	00 00 00 
 804b3b6:	e9 3b f9 ff ff       	jmp    804acf6 <_svfprintf_r+0x1816>
 804b3bb:	8b 45 08             	mov    0x8(%ebp),%eax
 804b3be:	c7 00 0c 00 00 00    	movl   $0xc,(%eax)
 804b3c4:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804b3c9:	e9 f5 e2 ff ff       	jmp    80496c3 <_svfprintf_r+0x1e3>
 804b3ce:	8d 85 67 ff ff ff    	lea    -0x99(%ebp),%eax
 804b3d4:	e9 77 fd ff ff       	jmp    804b150 <_svfprintf_r+0x1c70>
 804b3d9:	66 90                	xchg   %ax,%ax
 804b3db:	66 90                	xchg   %ax,%ax
 804b3dd:	66 90                	xchg   %ax,%ax
 804b3df:	90                   	nop

0804b3e0 <_vfprintf_r>:
 804b3e0:	55                   	push   %ebp
 804b3e1:	89 e5                	mov    %esp,%ebp
 804b3e3:	57                   	push   %edi
 804b3e4:	56                   	push   %esi
 804b3e5:	53                   	push   %ebx
 804b3e6:	81 ec 1c 01 00 00    	sub    $0x11c,%esp
 804b3ec:	8b 45 08             	mov    0x8(%ebp),%eax
 804b3ef:	89 04 24             	mov    %eax,(%esp)
 804b3f2:	e8 39 41 00 00       	call   804f530 <_localeconv_r>
 804b3f7:	8b 00                	mov    (%eax),%eax
 804b3f9:	89 04 24             	mov    %eax,(%esp)
 804b3fc:	89 85 18 ff ff ff    	mov    %eax,-0xe8(%ebp)
 804b402:	e8 59 e0 ff ff       	call   8049460 <strlen>
 804b407:	8b 5d 08             	mov    0x8(%ebp),%ebx
 804b40a:	85 db                	test   %ebx,%ebx
 804b40c:	89 85 0c ff ff ff    	mov    %eax,-0xf4(%ebp)
 804b412:	74 0e                	je     804b422 <_vfprintf_r+0x42>
 804b414:	8b 45 08             	mov    0x8(%ebp),%eax
 804b417:	8b 48 38             	mov    0x38(%eax),%ecx
 804b41a:	85 c9                	test   %ecx,%ecx
 804b41c:	0f 84 56 02 00 00    	je     804b678 <_vfprintf_r+0x298>
 804b422:	8b 45 0c             	mov    0xc(%ebp),%eax
 804b425:	0f b7 40 0c          	movzwl 0xc(%eax),%eax
 804b429:	f6 c4 20             	test   $0x20,%ah
 804b42c:	75 11                	jne    804b43f <_vfprintf_r+0x5f>
 804b42e:	8b 55 0c             	mov    0xc(%ebp),%edx
 804b431:	80 cc 20             	or     $0x20,%ah
 804b434:	81 62 64 ff df ff ff 	andl   $0xffffdfff,0x64(%edx)
 804b43b:	66 89 42 0c          	mov    %ax,0xc(%edx)
 804b43f:	a8 08                	test   $0x8,%al
 804b441:	0f 84 59 01 00 00    	je     804b5a0 <_vfprintf_r+0x1c0>
 804b447:	8b 55 0c             	mov    0xc(%ebp),%edx
 804b44a:	8b 52 10             	mov    0x10(%edx),%edx
 804b44d:	85 d2                	test   %edx,%edx
 804b44f:	0f 84 4b 01 00 00    	je     804b5a0 <_vfprintf_r+0x1c0>
 804b455:	83 e0 1a             	and    $0x1a,%eax
 804b458:	66 83 f8 0a          	cmp    $0xa,%ax
 804b45c:	0f 84 68 01 00 00    	je     804b5ca <_vfprintf_r+0x1ea>
 804b462:	8d 45 a8             	lea    -0x58(%ebp),%eax
 804b465:	8d 55 a7             	lea    -0x59(%ebp),%edx
 804b468:	89 c7                	mov    %eax,%edi
 804b46a:	89 85 74 ff ff ff    	mov    %eax,-0x8c(%ebp)
 804b470:	90                   	nop
 804b471:	90                   	nop
 804b472:	29 d0                	sub    %edx,%eax
 804b474:	c7 85 7c ff ff ff 00 	movl   $0x0,-0x84(%ebp)
 804b47b:	00 00 00 
 804b47e:	90                   	nop
 804b47f:	90                   	nop
 804b480:	90                   	nop
 804b481:	90                   	nop
 804b482:	90                   	nop
 804b483:	90                   	nop
 804b484:	c7 85 78 ff ff ff 00 	movl   $0x0,-0x88(%ebp)
 804b48b:	00 00 00 
 804b48e:	c7 85 1c ff ff ff 00 	movl   $0x0,-0xe4(%ebp)
 804b495:	00 00 00 
 804b498:	c7 85 08 ff ff ff 00 	movl   $0x0,-0xf8(%ebp)
 804b49f:	00 00 00 
 804b4a2:	c7 85 04 ff ff ff 00 	movl   $0x0,-0xfc(%ebp)
 804b4a9:	00 00 00 
 804b4ac:	c7 85 28 ff ff ff 00 	movl   $0x0,-0xd8(%ebp)
 804b4b3:	00 00 00 
 804b4b6:	89 85 00 ff ff ff    	mov    %eax,-0x100(%ebp)
 804b4bc:	8b 45 10             	mov    0x10(%ebp),%eax
 804b4bf:	8b 5d 10             	mov    0x10(%ebp),%ebx
 804b4c2:	0f b6 00             	movzbl (%eax),%eax
 804b4c5:	3c 25                	cmp    $0x25,%al
 804b4c7:	74 4c                	je     804b515 <_vfprintf_r+0x135>
 804b4c9:	84 c0                	test   %al,%al
 804b4cb:	75 07                	jne    804b4d4 <_vfprintf_r+0xf4>
 804b4cd:	eb 46                	jmp    804b515 <_vfprintf_r+0x135>
 804b4cf:	90                   	nop
 804b4d0:	84 c0                	test   %al,%al
 804b4d2:	74 0a                	je     804b4de <_vfprintf_r+0xfe>
 804b4d4:	83 c3 01             	add    $0x1,%ebx
 804b4d7:	0f b6 03             	movzbl (%ebx),%eax
 804b4da:	3c 25                	cmp    $0x25,%al
 804b4dc:	75 f2                	jne    804b4d0 <_vfprintf_r+0xf0>
 804b4de:	89 de                	mov    %ebx,%esi
 804b4e0:	2b 75 10             	sub    0x10(%ebp),%esi
 804b4e3:	74 30                	je     804b515 <_vfprintf_r+0x135>
 804b4e5:	8b 45 10             	mov    0x10(%ebp),%eax
 804b4e8:	83 c7 08             	add    $0x8,%edi
 804b4eb:	89 77 fc             	mov    %esi,-0x4(%edi)
 804b4ee:	01 b5 7c ff ff ff    	add    %esi,-0x84(%ebp)
 804b4f4:	89 47 f8             	mov    %eax,-0x8(%edi)
 804b4f7:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 804b4fd:	83 c0 01             	add    $0x1,%eax
 804b500:	83 f8 07             	cmp    $0x7,%eax
 804b503:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
 804b509:	0f 8f f9 00 00 00    	jg     804b608 <_vfprintf_r+0x228>
 804b50f:	01 b5 28 ff ff ff    	add    %esi,-0xd8(%ebp)
 804b515:	80 3b 00             	cmpb   $0x0,(%ebx)
 804b518:	0f 84 12 01 00 00    	je     804b630 <_vfprintf_r+0x250>
 804b51e:	8d 43 01             	lea    0x1(%ebx),%eax
 804b521:	be 20 00 00 00       	mov    $0x20,%esi
 804b526:	c6 85 59 ff ff ff 00 	movb   $0x0,-0xa7(%ebp)
 804b52d:	31 db                	xor    %ebx,%ebx
 804b52f:	c7 85 44 ff ff ff ff 	movl   $0xffffffff,-0xbc(%ebp)
 804b536:	ff ff ff 
 804b539:	c7 85 40 ff ff ff 00 	movl   $0x0,-0xc0(%ebp)
 804b540:	00 00 00 
 804b543:	c7 85 4c ff ff ff 00 	movl   $0x0,-0xb4(%ebp)
 804b54a:	00 00 00 
 804b54d:	8d 48 01             	lea    0x1(%eax),%ecx
 804b550:	0f be 00             	movsbl (%eax),%eax
 804b553:	8d 50 e0             	lea    -0x20(%eax),%edx
 804b556:	83 fa 58             	cmp    $0x58,%edx
 804b559:	0f 87 f2 07 00 00    	ja     804bd51 <_vfprintf_r+0x971>
 804b55f:	ff 24 95 8c 4a 05 08 	jmp    *0x8054a8c(,%edx,4)
 804b566:	66 90                	xchg   %ax,%ax
 804b568:	83 8d 4c ff ff ff 10 	orl    $0x10,-0xb4(%ebp)
 804b56f:	89 c8                	mov    %ecx,%eax
 804b571:	eb da                	jmp    804b54d <_vfprintf_r+0x16d>
 804b573:	8b 45 14             	mov    0x14(%ebp),%eax
 804b576:	8b 55 14             	mov    0x14(%ebp),%edx
 804b579:	8b 00                	mov    (%eax),%eax
 804b57b:	83 c2 04             	add    $0x4,%edx
 804b57e:	89 55 14             	mov    %edx,0x14(%ebp)
 804b581:	85 c0                	test   %eax,%eax
 804b583:	89 85 40 ff ff ff    	mov    %eax,-0xc0(%ebp)
 804b589:	79 e4                	jns    804b56f <_vfprintf_r+0x18f>
 804b58b:	f7 9d 40 ff ff ff    	negl   -0xc0(%ebp)
 804b591:	83 8d 4c ff ff ff 04 	orl    $0x4,-0xb4(%ebp)
 804b598:	89 c8                	mov    %ecx,%eax
 804b59a:	eb b1                	jmp    804b54d <_vfprintf_r+0x16d>
 804b59c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 804b5a0:	8b 45 0c             	mov    0xc(%ebp),%eax
 804b5a3:	89 44 24 04          	mov    %eax,0x4(%esp)
 804b5a7:	8b 45 08             	mov    0x8(%ebp),%eax
 804b5aa:	89 04 24             	mov    %eax,(%esp)
 804b5ad:	e8 ae 1e 00 00       	call   804d460 <__swsetup_r>
 804b5b2:	85 c0                	test   %eax,%eax
 804b5b4:	75 42                	jne    804b5f8 <_vfprintf_r+0x218>
 804b5b6:	8b 45 0c             	mov    0xc(%ebp),%eax
 804b5b9:	0f b7 40 0c          	movzwl 0xc(%eax),%eax
 804b5bd:	83 e0 1a             	and    $0x1a,%eax
 804b5c0:	66 83 f8 0a          	cmp    $0xa,%ax
 804b5c4:	0f 85 98 fe ff ff    	jne    804b462 <_vfprintf_r+0x82>
 804b5ca:	8b 45 0c             	mov    0xc(%ebp),%eax
 804b5cd:	66 83 78 0e 00       	cmpw   $0x0,0xe(%eax)
 804b5d2:	0f 88 8a fe ff ff    	js     804b462 <_vfprintf_r+0x82>
 804b5d8:	8b 45 14             	mov    0x14(%ebp),%eax
 804b5db:	8b 4d 10             	mov    0x10(%ebp),%ecx
 804b5de:	8b 55 0c             	mov    0xc(%ebp),%edx
 804b5e1:	89 04 24             	mov    %eax,(%esp)
 804b5e4:	8b 45 08             	mov    0x8(%ebp),%eax
 804b5e7:	e8 94 1d 00 00       	call   804d380 <__sbprintf>
 804b5ec:	81 c4 1c 01 00 00    	add    $0x11c,%esp
 804b5f2:	5b                   	pop    %ebx
 804b5f3:	5e                   	pop    %esi
 804b5f4:	5f                   	pop    %edi
 804b5f5:	5d                   	pop    %ebp
 804b5f6:	c3                   	ret    
 804b5f7:	90                   	nop
 804b5f8:	81 c4 1c 01 00 00    	add    $0x11c,%esp
 804b5fe:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804b603:	5b                   	pop    %ebx
 804b604:	5e                   	pop    %esi
 804b605:	5f                   	pop    %edi
 804b606:	5d                   	pop    %ebp
 804b607:	c3                   	ret    
 804b608:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
 804b60e:	89 44 24 08          	mov    %eax,0x8(%esp)
 804b612:	8b 45 0c             	mov    0xc(%ebp),%eax
 804b615:	89 44 24 04          	mov    %eax,0x4(%esp)
 804b619:	8b 45 08             	mov    0x8(%ebp),%eax
 804b61c:	89 04 24             	mov    %eax,(%esp)
 804b61f:	e8 1c 6a 00 00       	call   8052040 <__sprint_r>
 804b624:	85 c0                	test   %eax,%eax
 804b626:	75 30                	jne    804b658 <_vfprintf_r+0x278>
 804b628:	8d 7d a8             	lea    -0x58(%ebp),%edi
 804b62b:	e9 df fe ff ff       	jmp    804b50f <_vfprintf_r+0x12f>
 804b630:	8b 85 7c ff ff ff    	mov    -0x84(%ebp),%eax
 804b636:	85 c0                	test   %eax,%eax
 804b638:	74 1e                	je     804b658 <_vfprintf_r+0x278>
 804b63a:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
 804b640:	89 44 24 08          	mov    %eax,0x8(%esp)
 804b644:	8b 45 0c             	mov    0xc(%ebp),%eax
 804b647:	89 44 24 04          	mov    %eax,0x4(%esp)
 804b64b:	8b 45 08             	mov    0x8(%ebp),%eax
 804b64e:	89 04 24             	mov    %eax,(%esp)
 804b651:	e8 ea 69 00 00       	call   8052040 <__sprint_r>
 804b656:	66 90                	xchg   %ax,%ax
 804b658:	8b 45 0c             	mov    0xc(%ebp),%eax
 804b65b:	f6 40 0c 40          	testb  $0x40,0xc(%eax)
 804b65f:	75 97                	jne    804b5f8 <_vfprintf_r+0x218>
 804b661:	8b 85 28 ff ff ff    	mov    -0xd8(%ebp),%eax
 804b667:	81 c4 1c 01 00 00    	add    $0x11c,%esp
 804b66d:	5b                   	pop    %ebx
 804b66e:	5e                   	pop    %esi
 804b66f:	5f                   	pop    %edi
 804b670:	5d                   	pop    %ebp
 804b671:	c3                   	ret    
 804b672:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 804b678:	89 04 24             	mov    %eax,(%esp)
 804b67b:	e8 50 36 00 00       	call   804ecd0 <__sinit>
 804b680:	e9 9d fd ff ff       	jmp    804b422 <_vfprintf_r+0x42>
 804b685:	bb 2b 00 00 00       	mov    $0x2b,%ebx
 804b68a:	89 c8                	mov    %ecx,%eax
 804b68c:	e9 bc fe ff ff       	jmp    804b54d <_vfprintf_r+0x16d>
 804b691:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
 804b697:	8b 45 14             	mov    0x14(%ebp),%eax
 804b69a:	89 4d 10             	mov    %ecx,0x10(%ebp)
 804b69d:	c6 85 59 ff ff ff 00 	movb   $0x0,-0xa7(%ebp)
 804b6a4:	8d 70 04             	lea    0x4(%eax),%esi
 804b6a7:	8b 00                	mov    (%eax),%eax
 804b6a9:	85 c0                	test   %eax,%eax
 804b6ab:	89 85 2c ff ff ff    	mov    %eax,-0xd4(%ebp)
 804b6b1:	0f 84 0a 18 00 00    	je     804cec1 <_vfprintf_r+0x1ae1>
 804b6b7:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
 804b6bd:	85 c0                	test   %eax,%eax
 804b6bf:	0f 88 41 17 00 00    	js     804ce06 <_vfprintf_r+0x1a26>
 804b6c5:	89 44 24 08          	mov    %eax,0x8(%esp)
 804b6c9:	8b 85 2c ff ff ff    	mov    -0xd4(%ebp),%eax
 804b6cf:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 804b6d6:	00 
 804b6d7:	89 04 24             	mov    %eax,(%esp)
 804b6da:	e8 31 47 00 00       	call   804fe10 <memchr>
 804b6df:	85 c0                	test   %eax,%eax
 804b6e1:	0f 84 2b 19 00 00    	je     804d012 <_vfprintf_r+0x1c32>
 804b6e7:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
 804b6ed:	2b 85 2c ff ff ff    	sub    -0xd4(%ebp),%eax
 804b6f3:	39 d0                	cmp    %edx,%eax
 804b6f5:	0f 4f c2             	cmovg  %edx,%eax
 804b6f8:	89 c2                	mov    %eax,%edx
 804b6fa:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
 804b701:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
 804b707:	31 c0                	xor    %eax,%eax
 804b709:	85 d2                	test   %edx,%edx
 804b70b:	0f 49 c2             	cmovns %edx,%eax
 804b70e:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
 804b714:	89 75 14             	mov    %esi,0x14(%ebp)
 804b717:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
 804b71e:	00 00 00 
 804b721:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
 804b728:	00 00 00 
 804b72b:	90                   	nop
 804b72c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 804b730:	84 db                	test   %bl,%bl
 804b732:	74 07                	je     804b73b <_vfprintf_r+0x35b>
 804b734:	83 85 48 ff ff ff 01 	addl   $0x1,-0xb8(%ebp)
 804b73b:	8b 8d 48 ff ff ff    	mov    -0xb8(%ebp),%ecx
 804b741:	8b b5 4c ff ff ff    	mov    -0xb4(%ebp),%esi
 804b747:	89 c8                	mov    %ecx,%eax
 804b749:	89 f2                	mov    %esi,%edx
 804b74b:	83 c0 02             	add    $0x2,%eax
 804b74e:	83 e2 02             	and    $0x2,%edx
 804b751:	89 95 34 ff ff ff    	mov    %edx,-0xcc(%ebp)
 804b757:	89 f2                	mov    %esi,%edx
 804b759:	0f 44 c1             	cmove  %ecx,%eax
 804b75c:	81 e2 84 00 00 00    	and    $0x84,%edx
 804b762:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
 804b768:	89 95 30 ff ff ff    	mov    %edx,-0xd0(%ebp)
 804b76e:	0f 85 1c 06 00 00    	jne    804bd90 <_vfprintf_r+0x9b0>
 804b774:	8b b5 40 ff ff ff    	mov    -0xc0(%ebp),%esi
 804b77a:	2b b5 48 ff ff ff    	sub    -0xb8(%ebp),%esi
 804b780:	85 f6                	test   %esi,%esi
 804b782:	0f 8e 08 06 00 00    	jle    804bd90 <_vfprintf_r+0x9b0>
 804b788:	83 fe 10             	cmp    $0x10,%esi
 804b78b:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
 804b791:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 804b797:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
 804b79d:	7f 11                	jg     804b7b0 <_vfprintf_r+0x3d0>
 804b79f:	eb 6b                	jmp    804b80c <_vfprintf_r+0x42c>
 804b7a1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 804b7a8:	83 ee 10             	sub    $0x10,%esi
 804b7ab:	83 fe 10             	cmp    $0x10,%esi
 804b7ae:	7e 5c                	jle    804b80c <_vfprintf_r+0x42c>
 804b7b0:	83 c0 01             	add    $0x1,%eax
 804b7b3:	83 c1 10             	add    $0x10,%ecx
 804b7b6:	c7 07 00 4c 05 08    	movl   $0x8054c00,(%edi)
 804b7bc:	83 c7 08             	add    $0x8,%edi
 804b7bf:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
 804b7c6:	83 f8 07             	cmp    $0x7,%eax
 804b7c9:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
 804b7cf:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
 804b7d5:	7e d1                	jle    804b7a8 <_vfprintf_r+0x3c8>
 804b7d7:	8b 45 0c             	mov    0xc(%ebp),%eax
 804b7da:	89 5c 24 08          	mov    %ebx,0x8(%esp)
 804b7de:	89 44 24 04          	mov    %eax,0x4(%esp)
 804b7e2:	8b 45 08             	mov    0x8(%ebp),%eax
 804b7e5:	89 04 24             	mov    %eax,(%esp)
 804b7e8:	e8 53 68 00 00       	call   8052040 <__sprint_r>
 804b7ed:	85 c0                	test   %eax,%eax
 804b7ef:	0f 85 63 fe ff ff    	jne    804b658 <_vfprintf_r+0x278>
 804b7f5:	83 ee 10             	sub    $0x10,%esi
 804b7f8:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
 804b7fe:	83 fe 10             	cmp    $0x10,%esi
 804b801:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 804b807:	8d 7d a8             	lea    -0x58(%ebp),%edi
 804b80a:	7f a4                	jg     804b7b0 <_vfprintf_r+0x3d0>
 804b80c:	83 c0 01             	add    $0x1,%eax
 804b80f:	01 f1                	add    %esi,%ecx
 804b811:	83 f8 07             	cmp    $0x7,%eax
 804b814:	c7 07 00 4c 05 08    	movl   $0x8054c00,(%edi)
 804b81a:	89 77 04             	mov    %esi,0x4(%edi)
 804b81d:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
 804b823:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
 804b829:	0f 8f 16 0e 00 00    	jg     804c645 <_vfprintf_r+0x1265>
 804b82f:	83 c7 08             	add    $0x8,%edi
 804b832:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
 804b839:	e9 58 05 00 00       	jmp    804bd96 <_vfprintf_r+0x9b6>
 804b83e:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
 804b845:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
 804b84b:	8b 45 14             	mov    0x14(%ebp),%eax
 804b84e:	89 4d 10             	mov    %ecx,0x10(%ebp)
 804b851:	0f 85 15 02 00 00    	jne    804ba6c <_vfprintf_r+0x68c>
 804b857:	f6 85 4c ff ff ff 40 	testb  $0x40,-0xb4(%ebp)
 804b85e:	0f 84 08 02 00 00    	je     804ba6c <_vfprintf_r+0x68c>
 804b864:	0f b7 08             	movzwl (%eax),%ecx
 804b867:	83 c0 04             	add    $0x4,%eax
 804b86a:	89 45 14             	mov    %eax,0x14(%ebp)
 804b86d:	b8 01 00 00 00       	mov    $0x1,%eax
 804b872:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 804b878:	c6 85 59 ff ff ff 00 	movb   $0x0,-0xa7(%ebp)
 804b87f:	31 db                	xor    %ebx,%ebx
 804b881:	8b b5 4c ff ff ff    	mov    -0xb4(%ebp),%esi
 804b887:	89 f2                	mov    %esi,%edx
 804b889:	80 e2 7f             	and    $0x7f,%dl
 804b88c:	83 bd 44 ff ff ff 00 	cmpl   $0x0,-0xbc(%ebp)
 804b893:	0f 48 d6             	cmovs  %esi,%edx
 804b896:	89 95 4c ff ff ff    	mov    %edx,-0xb4(%ebp)
 804b89c:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
 804b8a2:	85 d2                	test   %edx,%edx
 804b8a4:	75 08                	jne    804b8ae <_vfprintf_r+0x4ce>
 804b8a6:	85 c9                	test   %ecx,%ecx
 804b8a8:	0f 84 ea 08 00 00    	je     804c198 <_vfprintf_r+0xdb8>
 804b8ae:	3c 01                	cmp    $0x1,%al
 804b8b0:	0f 84 6a 0d 00 00    	je     804c620 <_vfprintf_r+0x1240>
 804b8b6:	3c 02                	cmp    $0x2,%al
 804b8b8:	8d 45 a8             	lea    -0x58(%ebp),%eax
 804b8bb:	0f 85 bf 0b 00 00    	jne    804c480 <_vfprintf_r+0x10a0>
 804b8c1:	8b b5 08 ff ff ff    	mov    -0xf8(%ebp),%esi
 804b8c7:	90                   	nop
 804b8c8:	89 ca                	mov    %ecx,%edx
 804b8ca:	83 e8 01             	sub    $0x1,%eax
 804b8cd:	83 e2 0f             	and    $0xf,%edx
 804b8d0:	0f b6 14 16          	movzbl (%esi,%edx,1),%edx
 804b8d4:	c1 e9 04             	shr    $0x4,%ecx
 804b8d7:	85 c9                	test   %ecx,%ecx
 804b8d9:	88 10                	mov    %dl,(%eax)
 804b8db:	75 eb                	jne    804b8c8 <_vfprintf_r+0x4e8>
 804b8dd:	8d 55 a8             	lea    -0x58(%ebp),%edx
 804b8e0:	29 c2                	sub    %eax,%edx
 804b8e2:	89 85 2c ff ff ff    	mov    %eax,-0xd4(%ebp)
 804b8e8:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
 804b8ee:	66 90                	xchg   %ax,%ax
 804b8f0:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
 804b8f6:	8b 95 38 ff ff ff    	mov    -0xc8(%ebp),%edx
 804b8fc:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
 804b903:	00 00 00 
 804b906:	39 c2                	cmp    %eax,%edx
 804b908:	0f 4d c2             	cmovge %edx,%eax
 804b90b:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
 804b911:	e9 1a fe ff ff       	jmp    804b730 <_vfprintf_r+0x350>
 804b916:	81 8d 4c ff ff ff 80 	orl    $0x80,-0xb4(%ebp)
 804b91d:	00 00 00 
 804b920:	89 c8                	mov    %ecx,%eax
 804b922:	e9 26 fc ff ff       	jmp    804b54d <_vfprintf_r+0x16d>
 804b927:	89 bd 48 ff ff ff    	mov    %edi,-0xb8(%ebp)
 804b92d:	8d 50 d0             	lea    -0x30(%eax),%edx
 804b930:	31 ff                	xor    %edi,%edi
 804b932:	c7 85 40 ff ff ff 00 	movl   $0x0,-0xc0(%ebp)
 804b939:	00 00 00 
 804b93c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 804b940:	8d 04 bf             	lea    (%edi,%edi,4),%eax
 804b943:	83 c1 01             	add    $0x1,%ecx
 804b946:	8d 3c 42             	lea    (%edx,%eax,2),%edi
 804b949:	0f be 41 ff          	movsbl -0x1(%ecx),%eax
 804b94d:	8d 50 d0             	lea    -0x30(%eax),%edx
 804b950:	83 fa 09             	cmp    $0x9,%edx
 804b953:	76 eb                	jbe    804b940 <_vfprintf_r+0x560>
 804b955:	89 bd 40 ff ff ff    	mov    %edi,-0xc0(%ebp)
 804b95b:	8b bd 48 ff ff ff    	mov    -0xb8(%ebp),%edi
 804b961:	e9 ed fb ff ff       	jmp    804b553 <_vfprintf_r+0x173>
 804b966:	8d 41 01             	lea    0x1(%ecx),%eax
 804b969:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
 804b96f:	0f be 01             	movsbl (%ecx),%eax
 804b972:	83 f8 2a             	cmp    $0x2a,%eax
 804b975:	0f 84 1e 19 00 00    	je     804d299 <_vfprintf_r+0x1eb9>
 804b97b:	8d 50 d0             	lea    -0x30(%eax),%edx
 804b97e:	31 c9                	xor    %ecx,%ecx
 804b980:	83 fa 09             	cmp    $0x9,%edx
 804b983:	0f 87 8d 17 00 00    	ja     804d116 <_vfprintf_r+0x1d36>
 804b989:	89 bd 44 ff ff ff    	mov    %edi,-0xbc(%ebp)
 804b98f:	8b bd 48 ff ff ff    	mov    -0xb8(%ebp),%edi
 804b995:	8d 76 00             	lea    0x0(%esi),%esi
 804b998:	8d 04 89             	lea    (%ecx,%ecx,4),%eax
 804b99b:	83 c7 01             	add    $0x1,%edi
 804b99e:	8d 0c 42             	lea    (%edx,%eax,2),%ecx
 804b9a1:	0f be 47 ff          	movsbl -0x1(%edi),%eax
 804b9a5:	8d 50 d0             	lea    -0x30(%eax),%edx
 804b9a8:	83 fa 09             	cmp    $0x9,%edx
 804b9ab:	76 eb                	jbe    804b998 <_vfprintf_r+0x5b8>
 804b9ad:	85 c9                	test   %ecx,%ecx
 804b9af:	89 ca                	mov    %ecx,%edx
 804b9b1:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
 804b9b6:	0f 48 d1             	cmovs  %ecx,%edx
 804b9b9:	89 bd 48 ff ff ff    	mov    %edi,-0xb8(%ebp)
 804b9bf:	8b bd 44 ff ff ff    	mov    -0xbc(%ebp),%edi
 804b9c5:	8b 8d 48 ff ff ff    	mov    -0xb8(%ebp),%ecx
 804b9cb:	89 95 44 ff ff ff    	mov    %edx,-0xbc(%ebp)
 804b9d1:	e9 7d fb ff ff       	jmp    804b553 <_vfprintf_r+0x173>
 804b9d6:	8b 45 14             	mov    0x14(%ebp),%eax
 804b9d9:	89 4d 10             	mov    %ecx,0x10(%ebp)
 804b9dc:	83 8d 4c ff ff ff 02 	orl    $0x2,-0xb4(%ebp)
 804b9e3:	8b 08                	mov    (%eax),%ecx
 804b9e5:	83 c0 04             	add    $0x4,%eax
 804b9e8:	89 45 14             	mov    %eax,0x14(%ebp)
 804b9eb:	b8 02 00 00 00       	mov    $0x2,%eax
 804b9f0:	c6 85 5a ff ff ff 30 	movb   $0x30,-0xa6(%ebp)
 804b9f7:	c6 85 5b ff ff ff 78 	movb   $0x78,-0xa5(%ebp)
 804b9fe:	c7 85 08 ff ff ff ed 	movl   $0x80548ed,-0xf8(%ebp)
 804ba05:	48 05 08 
 804ba08:	c7 85 24 ff ff ff 78 	movl   $0x78,-0xdc(%ebp)
 804ba0f:	00 00 00 
 804ba12:	e9 61 fe ff ff       	jmp    804b878 <_vfprintf_r+0x498>
 804ba17:	83 8d 4c ff ff ff 10 	orl    $0x10,-0xb4(%ebp)
 804ba1e:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
 804ba25:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
 804ba2b:	8b 45 14             	mov    0x14(%ebp),%eax
 804ba2e:	89 4d 10             	mov    %ecx,0x10(%ebp)
 804ba31:	75 60                	jne    804ba93 <_vfprintf_r+0x6b3>
 804ba33:	f6 85 4c ff ff ff 40 	testb  $0x40,-0xb4(%ebp)
 804ba3a:	74 57                	je     804ba93 <_vfprintf_r+0x6b3>
 804ba3c:	0f b7 08             	movzwl (%eax),%ecx
 804ba3f:	83 c0 04             	add    $0x4,%eax
 804ba42:	89 45 14             	mov    %eax,0x14(%ebp)
 804ba45:	31 c0                	xor    %eax,%eax
 804ba47:	e9 2c fe ff ff       	jmp    804b878 <_vfprintf_r+0x498>
 804ba4c:	83 8d 4c ff ff ff 10 	orl    $0x10,-0xb4(%ebp)
 804ba53:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
 804ba5a:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
 804ba60:	8b 45 14             	mov    0x14(%ebp),%eax
 804ba63:	89 4d 10             	mov    %ecx,0x10(%ebp)
 804ba66:	0f 84 eb fd ff ff    	je     804b857 <_vfprintf_r+0x477>
 804ba6c:	8b 08                	mov    (%eax),%ecx
 804ba6e:	83 c0 04             	add    $0x4,%eax
 804ba71:	89 45 14             	mov    %eax,0x14(%ebp)
 804ba74:	b8 01 00 00 00       	mov    $0x1,%eax
 804ba79:	e9 fa fd ff ff       	jmp    804b878 <_vfprintf_r+0x498>
 804ba7e:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
 804ba85:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
 804ba8b:	8b 45 14             	mov    0x14(%ebp),%eax
 804ba8e:	89 4d 10             	mov    %ecx,0x10(%ebp)
 804ba91:	74 a0                	je     804ba33 <_vfprintf_r+0x653>
 804ba93:	8b 08                	mov    (%eax),%ecx
 804ba95:	83 c0 04             	add    $0x4,%eax
 804ba98:	89 45 14             	mov    %eax,0x14(%ebp)
 804ba9b:	31 c0                	xor    %eax,%eax
 804ba9d:	e9 d6 fd ff ff       	jmp    804b878 <_vfprintf_r+0x498>
 804baa2:	83 8d 4c ff ff ff 10 	orl    $0x10,-0xb4(%ebp)
 804baa9:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
 804bab0:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
 804bab6:	8b 45 14             	mov    0x14(%ebp),%eax
 804bab9:	89 4d 10             	mov    %ecx,0x10(%ebp)
 804babc:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
 804bac2:	0f 85 d3 01 00 00    	jne    804bc9b <_vfprintf_r+0x8bb>
 804bac8:	f6 85 4c ff ff ff 40 	testb  $0x40,-0xb4(%ebp)
 804bacf:	0f 84 c6 01 00 00    	je     804bc9b <_vfprintf_r+0x8bb>
 804bad5:	0f bf 08             	movswl (%eax),%ecx
 804bad8:	83 c0 04             	add    $0x4,%eax
 804badb:	89 45 14             	mov    %eax,0x14(%ebp)
 804bade:	85 c9                	test   %ecx,%ecx
 804bae0:	0f 88 9b 0e 00 00    	js     804c981 <_vfprintf_r+0x15a1>
 804bae6:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
 804baed:	b8 01 00 00 00       	mov    $0x1,%eax
 804baf2:	e9 8a fd ff ff       	jmp    804b881 <_vfprintf_r+0x4a1>
 804baf7:	f6 85 4c ff ff ff 08 	testb  $0x8,-0xb4(%ebp)
 804bafe:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
 804bb04:	8b 45 14             	mov    0x14(%ebp),%eax
 804bb07:	89 4d 10             	mov    %ecx,0x10(%ebp)
 804bb0a:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
 804bb10:	0f 84 2a 10 00 00    	je     804cb40 <_vfprintf_r+0x1760>
 804bb16:	db 28                	fldt   (%eax)
 804bb18:	83 c0 0c             	add    $0xc,%eax
 804bb1b:	89 45 14             	mov    %eax,0x14(%ebp)
 804bb1e:	dd 9d 10 ff ff ff    	fstpl  -0xf0(%ebp)
 804bb24:	dd 85 10 ff ff ff    	fldl   -0xf0(%ebp)
 804bb2a:	dd 1c 24             	fstpl  (%esp)
 804bb2d:	e8 fe 51 00 00       	call   8050d30 <__fpclassifyd>
 804bb32:	83 f8 01             	cmp    $0x1,%eax
 804bb35:	0f 85 5e 0e 00 00    	jne    804c999 <_vfprintf_r+0x15b9>
 804bb3b:	d9 ee                	fldz   
 804bb3d:	dd 85 10 ff ff ff    	fldl   -0xf0(%ebp)
 804bb43:	d9 c9                	fxch   %st(1)
 804bb45:	df e9                	fucomip %st(1),%st
 804bb47:	dd d8                	fstp   %st(0)
 804bb49:	0f 87 4d 14 00 00    	ja     804cf9c <_vfprintf_r+0x1bbc>
 804bb4f:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
 804bb56:	83 bd 24 ff ff ff 47 	cmpl   $0x47,-0xdc(%ebp)
 804bb5d:	ba cc 48 05 08       	mov    $0x80548cc,%edx
 804bb62:	b8 d0 48 05 08       	mov    $0x80548d0,%eax
 804bb67:	c7 85 48 ff ff ff 03 	movl   $0x3,-0xb8(%ebp)
 804bb6e:	00 00 00 
 804bb71:	0f 4e c2             	cmovle %edx,%eax
 804bb74:	89 85 2c ff ff ff    	mov    %eax,-0xd4(%ebp)
 804bb7a:	81 a5 4c ff ff ff 7f 	andl   $0xffffff7f,-0xb4(%ebp)
 804bb81:	ff ff ff 
 804bb84:	c7 85 38 ff ff ff 03 	movl   $0x3,-0xc8(%ebp)
 804bb8b:	00 00 00 
 804bb8e:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
 804bb95:	00 00 00 
 804bb98:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
 804bb9f:	00 00 00 
 804bba2:	e9 89 fb ff ff       	jmp    804b730 <_vfprintf_r+0x350>
 804bba7:	83 8d 4c ff ff ff 08 	orl    $0x8,-0xb4(%ebp)
 804bbae:	89 c8                	mov    %ecx,%eax
 804bbb0:	e9 98 f9 ff ff       	jmp    804b54d <_vfprintf_r+0x16d>
 804bbb5:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
 804bbbc:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
 804bbc2:	8b 45 14             	mov    0x14(%ebp),%eax
 804bbc5:	89 4d 10             	mov    %ecx,0x10(%ebp)
 804bbc8:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
 804bbce:	c7 85 08 ff ff ff ed 	movl   $0x80548ed,-0xf8(%ebp)
 804bbd5:	48 05 08 
 804bbd8:	0f 85 0d 01 00 00    	jne    804bceb <_vfprintf_r+0x90b>
 804bbde:	f6 85 4c ff ff ff 40 	testb  $0x40,-0xb4(%ebp)
 804bbe5:	0f 84 00 01 00 00    	je     804bceb <_vfprintf_r+0x90b>
 804bbeb:	0f b7 08             	movzwl (%eax),%ecx
 804bbee:	83 c0 04             	add    $0x4,%eax
 804bbf1:	89 45 14             	mov    %eax,0x14(%ebp)
 804bbf4:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
 804bbfb:	b8 02 00 00 00       	mov    $0x2,%eax
 804bc00:	0f 84 72 fc ff ff    	je     804b878 <_vfprintf_r+0x498>
 804bc06:	85 c9                	test   %ecx,%ecx
 804bc08:	0f 84 6a fc ff ff    	je     804b878 <_vfprintf_r+0x498>
 804bc0e:	0f b6 95 24 ff ff ff 	movzbl -0xdc(%ebp),%edx
 804bc15:	c6 85 5a ff ff ff 30 	movb   $0x30,-0xa6(%ebp)
 804bc1c:	83 8d 4c ff ff ff 02 	orl    $0x2,-0xb4(%ebp)
 804bc23:	88 95 5b ff ff ff    	mov    %dl,-0xa5(%ebp)
 804bc29:	e9 4a fc ff ff       	jmp    804b878 <_vfprintf_r+0x498>
 804bc2e:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
 804bc35:	89 4d 10             	mov    %ecx,0x10(%ebp)
 804bc38:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
 804bc3e:	0f 85 30 01 00 00    	jne    804bd74 <_vfprintf_r+0x994>
 804bc44:	f6 85 4c ff ff ff 40 	testb  $0x40,-0xb4(%ebp)
 804bc4b:	0f 84 23 01 00 00    	je     804bd74 <_vfprintf_r+0x994>
 804bc51:	8b 45 14             	mov    0x14(%ebp),%eax
 804bc54:	0f b7 95 28 ff ff ff 	movzwl -0xd8(%ebp),%edx
 804bc5b:	8b 00                	mov    (%eax),%eax
 804bc5d:	66 89 10             	mov    %dx,(%eax)
 804bc60:	8b 45 14             	mov    0x14(%ebp),%eax
 804bc63:	83 c0 04             	add    $0x4,%eax
 804bc66:	89 45 14             	mov    %eax,0x14(%ebp)
 804bc69:	e9 4e f8 ff ff       	jmp    804b4bc <_vfprintf_r+0xdc>
 804bc6e:	83 8d 4c ff ff ff 40 	orl    $0x40,-0xb4(%ebp)
 804bc75:	89 c8                	mov    %ecx,%eax
 804bc77:	e9 d1 f8 ff ff       	jmp    804b54d <_vfprintf_r+0x16d>
 804bc7c:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
 804bc83:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
 804bc89:	8b 45 14             	mov    0x14(%ebp),%eax
 804bc8c:	89 4d 10             	mov    %ecx,0x10(%ebp)
 804bc8f:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
 804bc95:	0f 84 2d fe ff ff    	je     804bac8 <_vfprintf_r+0x6e8>
 804bc9b:	8b 08                	mov    (%eax),%ecx
 804bc9d:	83 c0 04             	add    $0x4,%eax
 804bca0:	89 45 14             	mov    %eax,0x14(%ebp)
 804bca3:	e9 36 fe ff ff       	jmp    804bade <_vfprintf_r+0x6fe>
 804bca8:	84 db                	test   %bl,%bl
 804bcaa:	89 c8                	mov    %ecx,%eax
 804bcac:	0f 44 de             	cmove  %esi,%ebx
 804bcaf:	e9 99 f8 ff ff       	jmp    804b54d <_vfprintf_r+0x16d>
 804bcb4:	83 8d 4c ff ff ff 01 	orl    $0x1,-0xb4(%ebp)
 804bcbb:	89 c8                	mov    %ecx,%eax
 804bcbd:	e9 8b f8 ff ff       	jmp    804b54d <_vfprintf_r+0x16d>
 804bcc2:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
 804bcc9:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
 804bccf:	8b 45 14             	mov    0x14(%ebp),%eax
 804bcd2:	89 4d 10             	mov    %ecx,0x10(%ebp)
 804bcd5:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
 804bcdb:	c7 85 08 ff ff ff dc 	movl   $0x80548dc,-0xf8(%ebp)
 804bce2:	48 05 08 
 804bce5:	0f 84 f3 fe ff ff    	je     804bbde <_vfprintf_r+0x7fe>
 804bceb:	8b 08                	mov    (%eax),%ecx
 804bced:	83 c0 04             	add    $0x4,%eax
 804bcf0:	89 45 14             	mov    %eax,0x14(%ebp)
 804bcf3:	e9 fc fe ff ff       	jmp    804bbf4 <_vfprintf_r+0x814>
 804bcf8:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
 804bcfe:	8b 45 14             	mov    0x14(%ebp),%eax
 804bd01:	89 4d 10             	mov    %ecx,0x10(%ebp)
 804bd04:	c6 85 59 ff ff ff 00 	movb   $0x0,-0xa7(%ebp)
 804bd0b:	8b 00                	mov    (%eax),%eax
 804bd0d:	88 45 80             	mov    %al,-0x80(%ebp)
 804bd10:	8b 45 14             	mov    0x14(%ebp),%eax
 804bd13:	83 c0 04             	add    $0x4,%eax
 804bd16:	89 45 14             	mov    %eax,0x14(%ebp)
 804bd19:	8d 45 80             	lea    -0x80(%ebp),%eax
 804bd1c:	31 db                	xor    %ebx,%ebx
 804bd1e:	c7 85 48 ff ff ff 01 	movl   $0x1,-0xb8(%ebp)
 804bd25:	00 00 00 
 804bd28:	c7 85 38 ff ff ff 01 	movl   $0x1,-0xc8(%ebp)
 804bd2f:	00 00 00 
 804bd32:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
 804bd39:	00 00 00 
 804bd3c:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
 804bd43:	00 00 00 
 804bd46:	89 85 2c ff ff ff    	mov    %eax,-0xd4(%ebp)
 804bd4c:	e9 ea f9 ff ff       	jmp    804b73b <_vfprintf_r+0x35b>
 804bd51:	85 c0                	test   %eax,%eax
 804bd53:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
 804bd59:	89 4d 10             	mov    %ecx,0x10(%ebp)
 804bd5c:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
 804bd62:	0f 84 c8 f8 ff ff    	je     804b630 <_vfprintf_r+0x250>
 804bd68:	88 45 80             	mov    %al,-0x80(%ebp)
 804bd6b:	c6 85 59 ff ff ff 00 	movb   $0x0,-0xa7(%ebp)
 804bd72:	eb a5                	jmp    804bd19 <_vfprintf_r+0x939>
 804bd74:	8b 45 14             	mov    0x14(%ebp),%eax
 804bd77:	8b 95 28 ff ff ff    	mov    -0xd8(%ebp),%edx
 804bd7d:	8b 00                	mov    (%eax),%eax
 804bd7f:	89 10                	mov    %edx,(%eax)
 804bd81:	8b 45 14             	mov    0x14(%ebp),%eax
 804bd84:	83 c0 04             	add    $0x4,%eax
 804bd87:	89 45 14             	mov    %eax,0x14(%ebp)
 804bd8a:	e9 2d f7 ff ff       	jmp    804b4bc <_vfprintf_r+0xdc>
 804bd8f:	90                   	nop
 804bd90:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
 804bd96:	84 db                	test   %bl,%bl
 804bd98:	74 33                	je     804bdcd <_vfprintf_r+0x9ed>
 804bd9a:	8d 85 59 ff ff ff    	lea    -0xa7(%ebp),%eax
 804bda0:	83 c1 01             	add    $0x1,%ecx
 804bda3:	89 07                	mov    %eax,(%edi)
 804bda5:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 804bdab:	83 c7 08             	add    $0x8,%edi
 804bdae:	c7 47 fc 01 00 00 00 	movl   $0x1,-0x4(%edi)
 804bdb5:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
 804bdbb:	83 c0 01             	add    $0x1,%eax
 804bdbe:	83 f8 07             	cmp    $0x7,%eax
 804bdc1:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
 804bdc7:	0f 8f 43 06 00 00    	jg     804c410 <_vfprintf_r+0x1030>
 804bdcd:	8b 9d 34 ff ff ff    	mov    -0xcc(%ebp),%ebx
 804bdd3:	85 db                	test   %ebx,%ebx
 804bdd5:	74 33                	je     804be0a <_vfprintf_r+0xa2a>
 804bdd7:	8d 85 5a ff ff ff    	lea    -0xa6(%ebp),%eax
 804bddd:	83 c1 02             	add    $0x2,%ecx
 804bde0:	89 07                	mov    %eax,(%edi)
 804bde2:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 804bde8:	83 c7 08             	add    $0x8,%edi
 804bdeb:	c7 47 fc 02 00 00 00 	movl   $0x2,-0x4(%edi)
 804bdf2:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
 804bdf8:	83 c0 01             	add    $0x1,%eax
 804bdfb:	83 f8 07             	cmp    $0x7,%eax
 804bdfe:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
 804be04:	0f 8f 3e 06 00 00    	jg     804c448 <_vfprintf_r+0x1068>
 804be0a:	81 bd 30 ff ff ff 80 	cmpl   $0x80,-0xd0(%ebp)
 804be11:	00 00 00 
 804be14:	0f 84 c6 03 00 00    	je     804c1e0 <_vfprintf_r+0xe00>
 804be1a:	8b b5 44 ff ff ff    	mov    -0xbc(%ebp),%esi
 804be20:	2b b5 38 ff ff ff    	sub    -0xc8(%ebp),%esi
 804be26:	85 f6                	test   %esi,%esi
 804be28:	0f 8e d2 00 00 00    	jle    804bf00 <_vfprintf_r+0xb20>
 804be2e:	83 fe 10             	cmp    $0x10,%esi
 804be31:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 804be37:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
 804be3d:	7f 11                	jg     804be50 <_vfprintf_r+0xa70>
 804be3f:	eb 6b                	jmp    804beac <_vfprintf_r+0xacc>
 804be41:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 804be48:	83 ee 10             	sub    $0x10,%esi
 804be4b:	83 fe 10             	cmp    $0x10,%esi
 804be4e:	7e 5c                	jle    804beac <_vfprintf_r+0xacc>
 804be50:	83 c0 01             	add    $0x1,%eax
 804be53:	83 c1 10             	add    $0x10,%ecx
 804be56:	c7 07 f0 4b 05 08    	movl   $0x8054bf0,(%edi)
 804be5c:	83 c7 08             	add    $0x8,%edi
 804be5f:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
 804be66:	83 f8 07             	cmp    $0x7,%eax
 804be69:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
 804be6f:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
 804be75:	7e d1                	jle    804be48 <_vfprintf_r+0xa68>
 804be77:	8b 45 0c             	mov    0xc(%ebp),%eax
 804be7a:	89 5c 24 08          	mov    %ebx,0x8(%esp)
 804be7e:	89 44 24 04          	mov    %eax,0x4(%esp)
 804be82:	8b 45 08             	mov    0x8(%ebp),%eax
 804be85:	89 04 24             	mov    %eax,(%esp)
 804be88:	e8 b3 61 00 00       	call   8052040 <__sprint_r>
 804be8d:	85 c0                	test   %eax,%eax
 804be8f:	0f 85 c3 f7 ff ff    	jne    804b658 <_vfprintf_r+0x278>
 804be95:	83 ee 10             	sub    $0x10,%esi
 804be98:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
 804be9e:	83 fe 10             	cmp    $0x10,%esi
 804bea1:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 804bea7:	8d 7d a8             	lea    -0x58(%ebp),%edi
 804beaa:	7f a4                	jg     804be50 <_vfprintf_r+0xa70>
 804beac:	83 c0 01             	add    $0x1,%eax
 804beaf:	01 f1                	add    %esi,%ecx
 804beb1:	c7 07 f0 4b 05 08    	movl   $0x8054bf0,(%edi)
 804beb7:	83 c7 08             	add    $0x8,%edi
 804beba:	89 77 fc             	mov    %esi,-0x4(%edi)
 804bebd:	83 f8 07             	cmp    $0x7,%eax
 804bec0:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
 804bec6:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
 804becc:	7e 32                	jle    804bf00 <_vfprintf_r+0xb20>
 804bece:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
 804bed4:	89 44 24 08          	mov    %eax,0x8(%esp)
 804bed8:	8b 45 0c             	mov    0xc(%ebp),%eax
 804bedb:	89 44 24 04          	mov    %eax,0x4(%esp)
 804bedf:	8b 45 08             	mov    0x8(%ebp),%eax
 804bee2:	89 04 24             	mov    %eax,(%esp)
 804bee5:	e8 56 61 00 00       	call   8052040 <__sprint_r>
 804beea:	85 c0                	test   %eax,%eax
 804beec:	0f 85 66 f7 ff ff    	jne    804b658 <_vfprintf_r+0x278>
 804bef2:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
 804bef8:	8d 7d a8             	lea    -0x58(%ebp),%edi
 804befb:	90                   	nop
 804befc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 804bf00:	f7 85 4c ff ff ff 00 	testl  $0x100,-0xb4(%ebp)
 804bf07:	01 00 00 
 804bf0a:	0f 85 50 01 00 00    	jne    804c060 <_vfprintf_r+0xc80>
 804bf10:	8b 85 2c ff ff ff    	mov    -0xd4(%ebp),%eax
 804bf16:	89 07                	mov    %eax,(%edi)
 804bf18:	8b 85 38 ff ff ff    	mov    -0xc8(%ebp),%eax
 804bf1e:	01 c1                	add    %eax,%ecx
 804bf20:	89 47 04             	mov    %eax,0x4(%edi)
 804bf23:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 804bf29:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
 804bf2f:	83 c0 01             	add    $0x1,%eax
 804bf32:	83 f8 07             	cmp    $0x7,%eax
 804bf35:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
 804bf3b:	0f 8f 6a 04 00 00    	jg     804c3ab <_vfprintf_r+0xfcb>
 804bf41:	83 c7 08             	add    $0x8,%edi
 804bf44:	f6 85 4c ff ff ff 04 	testb  $0x4,-0xb4(%ebp)
 804bf4b:	0f 84 d7 00 00 00    	je     804c028 <_vfprintf_r+0xc48>
 804bf51:	8b b5 40 ff ff ff    	mov    -0xc0(%ebp),%esi
 804bf57:	2b b5 48 ff ff ff    	sub    -0xb8(%ebp),%esi
 804bf5d:	85 f6                	test   %esi,%esi
 804bf5f:	0f 8e c3 00 00 00    	jle    804c028 <_vfprintf_r+0xc48>
 804bf65:	83 fe 10             	cmp    $0x10,%esi
 804bf68:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 804bf6e:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
 804bf74:	7f 0a                	jg     804bf80 <_vfprintf_r+0xba0>
 804bf76:	eb 64                	jmp    804bfdc <_vfprintf_r+0xbfc>
 804bf78:	83 ee 10             	sub    $0x10,%esi
 804bf7b:	83 fe 10             	cmp    $0x10,%esi
 804bf7e:	7e 5c                	jle    804bfdc <_vfprintf_r+0xbfc>
 804bf80:	83 c0 01             	add    $0x1,%eax
 804bf83:	83 c1 10             	add    $0x10,%ecx
 804bf86:	c7 07 00 4c 05 08    	movl   $0x8054c00,(%edi)
 804bf8c:	83 c7 08             	add    $0x8,%edi
 804bf8f:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
 804bf96:	83 f8 07             	cmp    $0x7,%eax
 804bf99:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
 804bf9f:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
 804bfa5:	7e d1                	jle    804bf78 <_vfprintf_r+0xb98>
 804bfa7:	8b 45 0c             	mov    0xc(%ebp),%eax
 804bfaa:	89 5c 24 08          	mov    %ebx,0x8(%esp)
 804bfae:	89 44 24 04          	mov    %eax,0x4(%esp)
 804bfb2:	8b 45 08             	mov    0x8(%ebp),%eax
 804bfb5:	89 04 24             	mov    %eax,(%esp)
 804bfb8:	e8 83 60 00 00       	call   8052040 <__sprint_r>
 804bfbd:	85 c0                	test   %eax,%eax
 804bfbf:	0f 85 93 f6 ff ff    	jne    804b658 <_vfprintf_r+0x278>
 804bfc5:	83 ee 10             	sub    $0x10,%esi
 804bfc8:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
 804bfce:	83 fe 10             	cmp    $0x10,%esi
 804bfd1:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 804bfd7:	8d 7d a8             	lea    -0x58(%ebp),%edi
 804bfda:	7f a4                	jg     804bf80 <_vfprintf_r+0xba0>
 804bfdc:	83 c0 01             	add    $0x1,%eax
 804bfdf:	01 f1                	add    %esi,%ecx
 804bfe1:	83 f8 07             	cmp    $0x7,%eax
 804bfe4:	c7 07 00 4c 05 08    	movl   $0x8054c00,(%edi)
 804bfea:	89 77 04             	mov    %esi,0x4(%edi)
 804bfed:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
 804bff3:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
 804bff9:	7e 2d                	jle    804c028 <_vfprintf_r+0xc48>
 804bffb:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
 804c001:	89 44 24 08          	mov    %eax,0x8(%esp)
 804c005:	8b 45 0c             	mov    0xc(%ebp),%eax
 804c008:	89 44 24 04          	mov    %eax,0x4(%esp)
 804c00c:	8b 45 08             	mov    0x8(%ebp),%eax
 804c00f:	89 04 24             	mov    %eax,(%esp)
 804c012:	e8 29 60 00 00       	call   8052040 <__sprint_r>
 804c017:	85 c0                	test   %eax,%eax
 804c019:	0f 85 39 f6 ff ff    	jne    804b658 <_vfprintf_r+0x278>
 804c01f:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
 804c025:	8d 76 00             	lea    0x0(%esi),%esi
 804c028:	8b 85 40 ff ff ff    	mov    -0xc0(%ebp),%eax
 804c02e:	8b 95 48 ff ff ff    	mov    -0xb8(%ebp),%edx
 804c034:	39 c2                	cmp    %eax,%edx
 804c036:	0f 4d c2             	cmovge %edx,%eax
 804c039:	01 85 28 ff ff ff    	add    %eax,-0xd8(%ebp)
 804c03f:	85 c9                	test   %ecx,%ecx
 804c041:	0f 85 99 03 00 00    	jne    804c3e0 <_vfprintf_r+0x1000>
 804c047:	c7 85 78 ff ff ff 00 	movl   $0x0,-0x88(%ebp)
 804c04e:	00 00 00 
 804c051:	8d 7d a8             	lea    -0x58(%ebp),%edi
 804c054:	e9 63 f4 ff ff       	jmp    804b4bc <_vfprintf_r+0xdc>
 804c059:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 804c060:	83 bd 24 ff ff ff 65 	cmpl   $0x65,-0xdc(%ebp)
 804c067:	0f 8e 5b 02 00 00    	jle    804c2c8 <_vfprintf_r+0xee8>
 804c06d:	d9 ee                	fldz   
 804c06f:	dd 85 10 ff ff ff    	fldl   -0xf0(%ebp)
 804c075:	df e9                	fucomip %st(1),%st
 804c077:	dd d8                	fstp   %st(0)
 804c079:	0f 8a 59 04 00 00    	jp     804c4d8 <_vfprintf_r+0x10f8>
 804c07f:	0f 85 53 04 00 00    	jne    804c4d8 <_vfprintf_r+0x10f8>
 804c085:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 804c08b:	83 c1 01             	add    $0x1,%ecx
 804c08e:	83 c7 08             	add    $0x8,%edi
 804c091:	c7 47 f8 3d 46 05 08 	movl   $0x805463d,-0x8(%edi)
 804c098:	c7 47 fc 01 00 00 00 	movl   $0x1,-0x4(%edi)
 804c09f:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
 804c0a5:	83 c0 01             	add    $0x1,%eax
 804c0a8:	83 f8 07             	cmp    $0x7,%eax
 804c0ab:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
 804c0b1:	0f 8f 9c 0a 00 00    	jg     804cb53 <_vfprintf_r+0x1773>
 804c0b7:	8b 85 1c ff ff ff    	mov    -0xe4(%ebp),%eax
 804c0bd:	39 85 5c ff ff ff    	cmp    %eax,-0xa4(%ebp)
 804c0c3:	7c 0d                	jl     804c0d2 <_vfprintf_r+0xcf2>
 804c0c5:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
 804c0cc:	0f 84 72 fe ff ff    	je     804bf44 <_vfprintf_r+0xb64>
 804c0d2:	8b 85 18 ff ff ff    	mov    -0xe8(%ebp),%eax
 804c0d8:	83 c7 08             	add    $0x8,%edi
 804c0db:	89 47 f8             	mov    %eax,-0x8(%edi)
 804c0de:	8b 85 0c ff ff ff    	mov    -0xf4(%ebp),%eax
 804c0e4:	89 47 fc             	mov    %eax,-0x4(%edi)
 804c0e7:	01 c1                	add    %eax,%ecx
 804c0e9:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 804c0ef:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
 804c0f5:	83 c0 01             	add    $0x1,%eax
 804c0f8:	83 f8 07             	cmp    $0x7,%eax
 804c0fb:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
 804c101:	0f 8f 43 0c 00 00    	jg     804cd4a <_vfprintf_r+0x196a>
 804c107:	8b 85 1c ff ff ff    	mov    -0xe4(%ebp),%eax
 804c10d:	8d 70 ff             	lea    -0x1(%eax),%esi
 804c110:	85 f6                	test   %esi,%esi
 804c112:	0f 8e 2c fe ff ff    	jle    804bf44 <_vfprintf_r+0xb64>
 804c118:	83 fe 10             	cmp    $0x10,%esi
 804c11b:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 804c121:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
 804c127:	7f 13                	jg     804c13c <_vfprintf_r+0xd5c>
 804c129:	e9 d4 05 00 00       	jmp    804c702 <_vfprintf_r+0x1322>
 804c12e:	66 90                	xchg   %ax,%ax
 804c130:	83 ee 10             	sub    $0x10,%esi
 804c133:	83 fe 10             	cmp    $0x10,%esi
 804c136:	0f 8e c6 05 00 00    	jle    804c702 <_vfprintf_r+0x1322>
 804c13c:	83 c0 01             	add    $0x1,%eax
 804c13f:	83 c1 10             	add    $0x10,%ecx
 804c142:	c7 07 f0 4b 05 08    	movl   $0x8054bf0,(%edi)
 804c148:	83 c7 08             	add    $0x8,%edi
 804c14b:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
 804c152:	83 f8 07             	cmp    $0x7,%eax
 804c155:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
 804c15b:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
 804c161:	7e cd                	jle    804c130 <_vfprintf_r+0xd50>
 804c163:	8b 45 0c             	mov    0xc(%ebp),%eax
 804c166:	89 5c 24 08          	mov    %ebx,0x8(%esp)
 804c16a:	89 44 24 04          	mov    %eax,0x4(%esp)
 804c16e:	8b 45 08             	mov    0x8(%ebp),%eax
 804c171:	89 04 24             	mov    %eax,(%esp)
 804c174:	e8 c7 5e 00 00       	call   8052040 <__sprint_r>
 804c179:	85 c0                	test   %eax,%eax
 804c17b:	0f 85 d7 f4 ff ff    	jne    804b658 <_vfprintf_r+0x278>
 804c181:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
 804c187:	8d 7d a8             	lea    -0x58(%ebp),%edi
 804c18a:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 804c190:	eb 9e                	jmp    804c130 <_vfprintf_r+0xd50>
 804c192:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 804c198:	84 c0                	test   %al,%al
 804c19a:	75 2c                	jne    804c1c8 <_vfprintf_r+0xde8>
 804c19c:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
 804c1a3:	74 23                	je     804c1c8 <_vfprintf_r+0xde8>
 804c1a5:	8b 85 00 ff ff ff    	mov    -0x100(%ebp),%eax
 804c1ab:	c6 45 a7 30          	movb   $0x30,-0x59(%ebp)
 804c1af:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
 804c1b5:	8d 45 a7             	lea    -0x59(%ebp),%eax
 804c1b8:	89 85 2c ff ff ff    	mov    %eax,-0xd4(%ebp)
 804c1be:	e9 2d f7 ff ff       	jmp    804b8f0 <_vfprintf_r+0x510>
 804c1c3:	90                   	nop
 804c1c4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 804c1c8:	8d 45 a8             	lea    -0x58(%ebp),%eax
 804c1cb:	c7 85 38 ff ff ff 00 	movl   $0x0,-0xc8(%ebp)
 804c1d2:	00 00 00 
 804c1d5:	89 85 2c ff ff ff    	mov    %eax,-0xd4(%ebp)
 804c1db:	e9 10 f7 ff ff       	jmp    804b8f0 <_vfprintf_r+0x510>
 804c1e0:	8b b5 40 ff ff ff    	mov    -0xc0(%ebp),%esi
 804c1e6:	2b b5 48 ff ff ff    	sub    -0xb8(%ebp),%esi
 804c1ec:	85 f6                	test   %esi,%esi
 804c1ee:	0f 8e 26 fc ff ff    	jle    804be1a <_vfprintf_r+0xa3a>
 804c1f4:	83 fe 10             	cmp    $0x10,%esi
 804c1f7:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 804c1fd:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
 804c203:	7f 0b                	jg     804c210 <_vfprintf_r+0xe30>
 804c205:	eb 65                	jmp    804c26c <_vfprintf_r+0xe8c>
 804c207:	90                   	nop
 804c208:	83 ee 10             	sub    $0x10,%esi
 804c20b:	83 fe 10             	cmp    $0x10,%esi
 804c20e:	7e 5c                	jle    804c26c <_vfprintf_r+0xe8c>
 804c210:	83 c0 01             	add    $0x1,%eax
 804c213:	83 c1 10             	add    $0x10,%ecx
 804c216:	c7 07 f0 4b 05 08    	movl   $0x8054bf0,(%edi)
 804c21c:	83 c7 08             	add    $0x8,%edi
 804c21f:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
 804c226:	83 f8 07             	cmp    $0x7,%eax
 804c229:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
 804c22f:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
 804c235:	7e d1                	jle    804c208 <_vfprintf_r+0xe28>
 804c237:	8b 45 0c             	mov    0xc(%ebp),%eax
 804c23a:	89 5c 24 08          	mov    %ebx,0x8(%esp)
 804c23e:	89 44 24 04          	mov    %eax,0x4(%esp)
 804c242:	8b 45 08             	mov    0x8(%ebp),%eax
 804c245:	89 04 24             	mov    %eax,(%esp)
 804c248:	e8 f3 5d 00 00       	call   8052040 <__sprint_r>
 804c24d:	85 c0                	test   %eax,%eax
 804c24f:	0f 85 03 f4 ff ff    	jne    804b658 <_vfprintf_r+0x278>
 804c255:	83 ee 10             	sub    $0x10,%esi
 804c258:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
 804c25e:	83 fe 10             	cmp    $0x10,%esi
 804c261:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 804c267:	8d 7d a8             	lea    -0x58(%ebp),%edi
 804c26a:	7f a4                	jg     804c210 <_vfprintf_r+0xe30>
 804c26c:	83 c0 01             	add    $0x1,%eax
 804c26f:	01 f1                	add    %esi,%ecx
 804c271:	c7 07 f0 4b 05 08    	movl   $0x8054bf0,(%edi)
 804c277:	83 c7 08             	add    $0x8,%edi
 804c27a:	89 77 fc             	mov    %esi,-0x4(%edi)
 804c27d:	83 f8 07             	cmp    $0x7,%eax
 804c280:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
 804c286:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
 804c28c:	0f 8e 88 fb ff ff    	jle    804be1a <_vfprintf_r+0xa3a>
 804c292:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
 804c298:	89 44 24 08          	mov    %eax,0x8(%esp)
 804c29c:	8b 45 0c             	mov    0xc(%ebp),%eax
 804c29f:	89 44 24 04          	mov    %eax,0x4(%esp)
 804c2a3:	8b 45 08             	mov    0x8(%ebp),%eax
 804c2a6:	89 04 24             	mov    %eax,(%esp)
 804c2a9:	e8 92 5d 00 00       	call   8052040 <__sprint_r>
 804c2ae:	85 c0                	test   %eax,%eax
 804c2b0:	0f 85 a2 f3 ff ff    	jne    804b658 <_vfprintf_r+0x278>
 804c2b6:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
 804c2bc:	8d 7d a8             	lea    -0x58(%ebp),%edi
 804c2bf:	e9 56 fb ff ff       	jmp    804be1a <_vfprintf_r+0xa3a>
 804c2c4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 804c2c8:	83 bd 1c ff ff ff 01 	cmpl   $0x1,-0xe4(%ebp)
 804c2cf:	8b 85 2c ff ff ff    	mov    -0xd4(%ebp),%eax
 804c2d5:	0f 8e b7 05 00 00    	jle    804c892 <_vfprintf_r+0x14b2>
 804c2db:	89 07                	mov    %eax,(%edi)
 804c2dd:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 804c2e3:	8d 51 01             	lea    0x1(%ecx),%edx
 804c2e6:	c7 47 04 01 00 00 00 	movl   $0x1,0x4(%edi)
 804c2ed:	83 c7 08             	add    $0x8,%edi
 804c2f0:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
 804c2f6:	83 c0 01             	add    $0x1,%eax
 804c2f9:	83 f8 07             	cmp    $0x7,%eax
 804c2fc:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
 804c302:	0f 8f f9 05 00 00    	jg     804c901 <_vfprintf_r+0x1521>
 804c308:	8b 9d 18 ff ff ff    	mov    -0xe8(%ebp),%ebx
 804c30e:	83 c0 01             	add    $0x1,%eax
 804c311:	83 c7 08             	add    $0x8,%edi
 804c314:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
 804c31a:	89 5f f8             	mov    %ebx,-0x8(%edi)
 804c31d:	8b 9d 0c ff ff ff    	mov    -0xf4(%ebp),%ebx
 804c323:	89 5f fc             	mov    %ebx,-0x4(%edi)
 804c326:	01 da                	add    %ebx,%edx
 804c328:	83 f8 07             	cmp    $0x7,%eax
 804c32b:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
 804c331:	0f 8f 12 06 00 00    	jg     804c949 <_vfprintf_r+0x1569>
 804c337:	d9 ee                	fldz   
 804c339:	dd 85 10 ff ff ff    	fldl   -0xf0(%ebp)
 804c33f:	df e9                	fucomip %st(1),%st
 804c341:	dd d8                	fstp   %st(0)
 804c343:	7a 06                	jp     804c34b <_vfprintf_r+0xf6b>
 804c345:	0f 84 33 03 00 00    	je     804c67e <_vfprintf_r+0x129e>
 804c34b:	8b 8d 2c ff ff ff    	mov    -0xd4(%ebp),%ecx
 804c351:	8b 9d 1c ff ff ff    	mov    -0xe4(%ebp),%ebx
 804c357:	83 c1 01             	add    $0x1,%ecx
 804c35a:	89 0f                	mov    %ecx,(%edi)
 804c35c:	8d 4b ff             	lea    -0x1(%ebx),%ecx
 804c35f:	89 4f 04             	mov    %ecx,0x4(%edi)
 804c362:	01 ca                	add    %ecx,%edx
 804c364:	83 c0 01             	add    $0x1,%eax
 804c367:	83 f8 07             	cmp    $0x7,%eax
 804c36a:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
 804c370:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
 804c376:	0f 8f 4d 05 00 00    	jg     804c8c9 <_vfprintf_r+0x14e9>
 804c37c:	83 c7 08             	add    $0x8,%edi
 804c37f:	8b 9d 04 ff ff ff    	mov    -0xfc(%ebp),%ebx
 804c385:	8d 8d 65 ff ff ff    	lea    -0x9b(%ebp),%ecx
 804c38b:	89 0f                	mov    %ecx,(%edi)
 804c38d:	89 5f 04             	mov    %ebx,0x4(%edi)
 804c390:	8d 0c 1a             	lea    (%edx,%ebx,1),%ecx
 804c393:	83 c0 01             	add    $0x1,%eax
 804c396:	83 f8 07             	cmp    $0x7,%eax
 804c399:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
 804c39f:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
 804c3a5:	0f 8e 96 fb ff ff    	jle    804bf41 <_vfprintf_r+0xb61>
 804c3ab:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
 804c3b1:	89 44 24 08          	mov    %eax,0x8(%esp)
 804c3b5:	8b 45 0c             	mov    0xc(%ebp),%eax
 804c3b8:	89 44 24 04          	mov    %eax,0x4(%esp)
 804c3bc:	8b 45 08             	mov    0x8(%ebp),%eax
 804c3bf:	89 04 24             	mov    %eax,(%esp)
 804c3c2:	e8 79 5c 00 00       	call   8052040 <__sprint_r>
 804c3c7:	85 c0                	test   %eax,%eax
 804c3c9:	0f 85 89 f2 ff ff    	jne    804b658 <_vfprintf_r+0x278>
 804c3cf:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
 804c3d5:	8d 7d a8             	lea    -0x58(%ebp),%edi
 804c3d8:	e9 67 fb ff ff       	jmp    804bf44 <_vfprintf_r+0xb64>
 804c3dd:	8d 76 00             	lea    0x0(%esi),%esi
 804c3e0:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
 804c3e6:	89 44 24 08          	mov    %eax,0x8(%esp)
 804c3ea:	8b 45 0c             	mov    0xc(%ebp),%eax
 804c3ed:	89 44 24 04          	mov    %eax,0x4(%esp)
 804c3f1:	8b 45 08             	mov    0x8(%ebp),%eax
 804c3f4:	89 04 24             	mov    %eax,(%esp)
 804c3f7:	e8 44 5c 00 00       	call   8052040 <__sprint_r>
 804c3fc:	85 c0                	test   %eax,%eax
 804c3fe:	0f 84 43 fc ff ff    	je     804c047 <_vfprintf_r+0xc67>
 804c404:	e9 4f f2 ff ff       	jmp    804b658 <_vfprintf_r+0x278>
 804c409:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 804c410:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
 804c416:	89 44 24 08          	mov    %eax,0x8(%esp)
 804c41a:	8b 45 0c             	mov    0xc(%ebp),%eax
 804c41d:	89 44 24 04          	mov    %eax,0x4(%esp)
 804c421:	8b 45 08             	mov    0x8(%ebp),%eax
 804c424:	89 04 24             	mov    %eax,(%esp)
 804c427:	e8 14 5c 00 00       	call   8052040 <__sprint_r>
 804c42c:	85 c0                	test   %eax,%eax
 804c42e:	0f 85 24 f2 ff ff    	jne    804b658 <_vfprintf_r+0x278>
 804c434:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
 804c43a:	8d 7d a8             	lea    -0x58(%ebp),%edi
 804c43d:	e9 8b f9 ff ff       	jmp    804bdcd <_vfprintf_r+0x9ed>
 804c442:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 804c448:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
 804c44e:	89 44 24 08          	mov    %eax,0x8(%esp)
 804c452:	8b 45 0c             	mov    0xc(%ebp),%eax
 804c455:	89 44 24 04          	mov    %eax,0x4(%esp)
 804c459:	8b 45 08             	mov    0x8(%ebp),%eax
 804c45c:	89 04 24             	mov    %eax,(%esp)
 804c45f:	e8 dc 5b 00 00       	call   8052040 <__sprint_r>
 804c464:	85 c0                	test   %eax,%eax
 804c466:	0f 85 ec f1 ff ff    	jne    804b658 <_vfprintf_r+0x278>
 804c46c:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
 804c472:	8d 7d a8             	lea    -0x58(%ebp),%edi
 804c475:	e9 90 f9 ff ff       	jmp    804be0a <_vfprintf_r+0xa2a>
 804c47a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 804c480:	89 c2                	mov    %eax,%edx
 804c482:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 804c488:	89 c8                	mov    %ecx,%eax
 804c48a:	83 ea 01             	sub    $0x1,%edx
 804c48d:	83 e0 07             	and    $0x7,%eax
 804c490:	c1 e9 03             	shr    $0x3,%ecx
 804c493:	83 c0 30             	add    $0x30,%eax
 804c496:	85 c9                	test   %ecx,%ecx
 804c498:	88 02                	mov    %al,(%edx)
 804c49a:	75 ec                	jne    804c488 <_vfprintf_r+0x10a8>
 804c49c:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
 804c4a3:	89 95 2c ff ff ff    	mov    %edx,-0xd4(%ebp)
 804c4a9:	0f 84 5b 01 00 00    	je     804c60a <_vfprintf_r+0x122a>
 804c4af:	3c 30                	cmp    $0x30,%al
 804c4b1:	74 0b                	je     804c4be <_vfprintf_r+0x10de>
 804c4b3:	83 ad 2c ff ff ff 01 	subl   $0x1,-0xd4(%ebp)
 804c4ba:	c6 42 ff 30          	movb   $0x30,-0x1(%edx)
 804c4be:	8d 45 a8             	lea    -0x58(%ebp),%eax
 804c4c1:	2b 85 2c ff ff ff    	sub    -0xd4(%ebp),%eax
 804c4c7:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
 804c4cd:	e9 1e f4 ff ff       	jmp    804b8f0 <_vfprintf_r+0x510>
 804c4d2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 804c4d8:	8b 9d 5c ff ff ff    	mov    -0xa4(%ebp),%ebx
 804c4de:	85 db                	test   %ebx,%ebx
 804c4e0:	0f 8e 9f 06 00 00    	jle    804cb85 <_vfprintf_r+0x17a5>
 804c4e6:	8b 95 2c ff ff ff    	mov    -0xd4(%ebp),%edx
 804c4ec:	8b 85 1c ff ff ff    	mov    -0xe4(%ebp),%eax
 804c4f2:	01 d0                	add    %edx,%eax
 804c4f4:	89 c3                	mov    %eax,%ebx
 804c4f6:	29 d3                	sub    %edx,%ebx
 804c4f8:	89 85 44 ff ff ff    	mov    %eax,-0xbc(%ebp)
 804c4fe:	89 d0                	mov    %edx,%eax
 804c500:	8b 95 20 ff ff ff    	mov    -0xe0(%ebp),%edx
 804c506:	39 d3                	cmp    %edx,%ebx
 804c508:	0f 4f da             	cmovg  %edx,%ebx
 804c50b:	85 db                	test   %ebx,%ebx
 804c50d:	7e 28                	jle    804c537 <_vfprintf_r+0x1157>
 804c50f:	89 07                	mov    %eax,(%edi)
 804c511:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 804c517:	01 d9                	add    %ebx,%ecx
 804c519:	89 5f 04             	mov    %ebx,0x4(%edi)
 804c51c:	83 c7 08             	add    $0x8,%edi
 804c51f:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
 804c525:	83 c0 01             	add    $0x1,%eax
 804c528:	83 f8 07             	cmp    $0x7,%eax
 804c52b:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
 804c531:	0f 8f e2 08 00 00    	jg     804ce19 <_vfprintf_r+0x1a39>
 804c537:	8b b5 20 ff ff ff    	mov    -0xe0(%ebp),%esi
 804c53d:	31 c0                	xor    %eax,%eax
 804c53f:	85 db                	test   %ebx,%ebx
 804c541:	0f 49 c3             	cmovns %ebx,%eax
 804c544:	29 c6                	sub    %eax,%esi
 804c546:	85 f6                	test   %esi,%esi
 804c548:	0f 8e 13 02 00 00    	jle    804c761 <_vfprintf_r+0x1381>
 804c54e:	83 fe 10             	cmp    $0x10,%esi
 804c551:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 804c557:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
 804c55d:	7f 15                	jg     804c574 <_vfprintf_r+0x1194>
 804c55f:	e9 ae 01 00 00       	jmp    804c712 <_vfprintf_r+0x1332>
 804c564:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 804c568:	83 ee 10             	sub    $0x10,%esi
 804c56b:	83 fe 10             	cmp    $0x10,%esi
 804c56e:	0f 8e 9e 01 00 00    	jle    804c712 <_vfprintf_r+0x1332>
 804c574:	83 c0 01             	add    $0x1,%eax
 804c577:	83 c1 10             	add    $0x10,%ecx
 804c57a:	c7 07 f0 4b 05 08    	movl   $0x8054bf0,(%edi)
 804c580:	83 c7 08             	add    $0x8,%edi
 804c583:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
 804c58a:	83 f8 07             	cmp    $0x7,%eax
 804c58d:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
 804c593:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
 804c599:	7e cd                	jle    804c568 <_vfprintf_r+0x1188>
 804c59b:	8b 45 0c             	mov    0xc(%ebp),%eax
 804c59e:	89 5c 24 08          	mov    %ebx,0x8(%esp)
 804c5a2:	89 44 24 04          	mov    %eax,0x4(%esp)
 804c5a6:	8b 45 08             	mov    0x8(%ebp),%eax
 804c5a9:	89 04 24             	mov    %eax,(%esp)
 804c5ac:	e8 8f 5a 00 00       	call   8052040 <__sprint_r>
 804c5b1:	85 c0                	test   %eax,%eax
 804c5b3:	0f 85 9f f0 ff ff    	jne    804b658 <_vfprintf_r+0x278>
 804c5b9:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
 804c5bf:	8d 7d a8             	lea    -0x58(%ebp),%edi
 804c5c2:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 804c5c8:	eb 9e                	jmp    804c568 <_vfprintf_r+0x1188>
 804c5ca:	8d 45 a8             	lea    -0x58(%ebp),%eax
 804c5cd:	be cd cc cc cc       	mov    $0xcccccccd,%esi
 804c5d2:	89 bd 48 ff ff ff    	mov    %edi,-0xb8(%ebp)
 804c5d8:	89 c7                	mov    %eax,%edi
 804c5da:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 804c5e0:	89 c8                	mov    %ecx,%eax
 804c5e2:	83 ef 01             	sub    $0x1,%edi
 804c5e5:	f7 e6                	mul    %esi
 804c5e7:	c1 ea 03             	shr    $0x3,%edx
 804c5ea:	8d 04 92             	lea    (%edx,%edx,4),%eax
 804c5ed:	01 c0                	add    %eax,%eax
 804c5ef:	29 c1                	sub    %eax,%ecx
 804c5f1:	83 c1 30             	add    $0x30,%ecx
 804c5f4:	85 d2                	test   %edx,%edx
 804c5f6:	88 0f                	mov    %cl,(%edi)
 804c5f8:	89 d1                	mov    %edx,%ecx
 804c5fa:	75 e4                	jne    804c5e0 <_vfprintf_r+0x1200>
 804c5fc:	89 fa                	mov    %edi,%edx
 804c5fe:	89 bd 2c ff ff ff    	mov    %edi,-0xd4(%ebp)
 804c604:	8b bd 48 ff ff ff    	mov    -0xb8(%ebp),%edi
 804c60a:	8d 45 a8             	lea    -0x58(%ebp),%eax
 804c60d:	29 d0                	sub    %edx,%eax
 804c60f:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
 804c615:	e9 d6 f2 ff ff       	jmp    804b8f0 <_vfprintf_r+0x510>
 804c61a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 804c620:	83 f9 09             	cmp    $0x9,%ecx
 804c623:	77 a5                	ja     804c5ca <_vfprintf_r+0x11ea>
 804c625:	8b 85 00 ff ff ff    	mov    -0x100(%ebp),%eax
 804c62b:	83 c1 30             	add    $0x30,%ecx
 804c62e:	88 4d a7             	mov    %cl,-0x59(%ebp)
 804c631:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
 804c637:	8d 45 a7             	lea    -0x59(%ebp),%eax
 804c63a:	89 85 2c ff ff ff    	mov    %eax,-0xd4(%ebp)
 804c640:	e9 ab f2 ff ff       	jmp    804b8f0 <_vfprintf_r+0x510>
 804c645:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
 804c64b:	89 44 24 08          	mov    %eax,0x8(%esp)
 804c64f:	8b 45 0c             	mov    0xc(%ebp),%eax
 804c652:	89 44 24 04          	mov    %eax,0x4(%esp)
 804c656:	8b 45 08             	mov    0x8(%ebp),%eax
 804c659:	89 04 24             	mov    %eax,(%esp)
 804c65c:	e8 df 59 00 00       	call   8052040 <__sprint_r>
 804c661:	85 c0                	test   %eax,%eax
 804c663:	0f 85 ef ef ff ff    	jne    804b658 <_vfprintf_r+0x278>
 804c669:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
 804c670:	8d 7d a8             	lea    -0x58(%ebp),%edi
 804c673:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
 804c679:	e9 18 f7 ff ff       	jmp    804bd96 <_vfprintf_r+0x9b6>
 804c67e:	8b 9d 1c ff ff ff    	mov    -0xe4(%ebp),%ebx
 804c684:	8d 73 ff             	lea    -0x1(%ebx),%esi
 804c687:	85 f6                	test   %esi,%esi
 804c689:	0f 8e f0 fc ff ff    	jle    804c37f <_vfprintf_r+0xf9f>
 804c68f:	83 fe 10             	cmp    $0x10,%esi
 804c692:	0f 8e a1 02 00 00    	jle    804c939 <_vfprintf_r+0x1559>
 804c698:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
 804c69e:	eb 0c                	jmp    804c6ac <_vfprintf_r+0x12cc>
 804c6a0:	83 ee 10             	sub    $0x10,%esi
 804c6a3:	83 fe 10             	cmp    $0x10,%esi
 804c6a6:	0f 8e 8d 02 00 00    	jle    804c939 <_vfprintf_r+0x1559>
 804c6ac:	83 c0 01             	add    $0x1,%eax
 804c6af:	83 c2 10             	add    $0x10,%edx
 804c6b2:	c7 07 f0 4b 05 08    	movl   $0x8054bf0,(%edi)
 804c6b8:	83 c7 08             	add    $0x8,%edi
 804c6bb:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
 804c6c2:	83 f8 07             	cmp    $0x7,%eax
 804c6c5:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
 804c6cb:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
 804c6d1:	7e cd                	jle    804c6a0 <_vfprintf_r+0x12c0>
 804c6d3:	8b 45 0c             	mov    0xc(%ebp),%eax
 804c6d6:	89 5c 24 08          	mov    %ebx,0x8(%esp)
 804c6da:	89 44 24 04          	mov    %eax,0x4(%esp)
 804c6de:	8b 45 08             	mov    0x8(%ebp),%eax
 804c6e1:	89 04 24             	mov    %eax,(%esp)
 804c6e4:	e8 57 59 00 00       	call   8052040 <__sprint_r>
 804c6e9:	85 c0                	test   %eax,%eax
 804c6eb:	0f 85 67 ef ff ff    	jne    804b658 <_vfprintf_r+0x278>
 804c6f1:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
 804c6f7:	8d 7d a8             	lea    -0x58(%ebp),%edi
 804c6fa:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 804c700:	eb 9e                	jmp    804c6a0 <_vfprintf_r+0x12c0>
 804c702:	c7 07 f0 4b 05 08    	movl   $0x8054bf0,(%edi)
 804c708:	01 f1                	add    %esi,%ecx
 804c70a:	89 77 04             	mov    %esi,0x4(%edi)
 804c70d:	e9 81 fc ff ff       	jmp    804c393 <_vfprintf_r+0xfb3>
 804c712:	83 c0 01             	add    $0x1,%eax
 804c715:	01 f1                	add    %esi,%ecx
 804c717:	c7 07 f0 4b 05 08    	movl   $0x8054bf0,(%edi)
 804c71d:	83 c7 08             	add    $0x8,%edi
 804c720:	89 77 fc             	mov    %esi,-0x4(%edi)
 804c723:	83 f8 07             	cmp    $0x7,%eax
 804c726:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
 804c72c:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
 804c732:	7e 2d                	jle    804c761 <_vfprintf_r+0x1381>
 804c734:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
 804c73a:	89 44 24 08          	mov    %eax,0x8(%esp)
 804c73e:	8b 45 0c             	mov    0xc(%ebp),%eax
 804c741:	89 44 24 04          	mov    %eax,0x4(%esp)
 804c745:	8b 45 08             	mov    0x8(%ebp),%eax
 804c748:	89 04 24             	mov    %eax,(%esp)
 804c74b:	e8 f0 58 00 00       	call   8052040 <__sprint_r>
 804c750:	85 c0                	test   %eax,%eax
 804c752:	0f 85 00 ef ff ff    	jne    804b658 <_vfprintf_r+0x278>
 804c758:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
 804c75e:	8d 7d a8             	lea    -0x58(%ebp),%edi
 804c761:	8b 85 2c ff ff ff    	mov    -0xd4(%ebp),%eax
 804c767:	8b 95 5c ff ff ff    	mov    -0xa4(%ebp),%edx
 804c76d:	03 85 20 ff ff ff    	add    -0xe0(%ebp),%eax
 804c773:	3b 95 1c ff ff ff    	cmp    -0xe4(%ebp),%edx
 804c779:	89 c6                	mov    %eax,%esi
 804c77b:	7c 0d                	jl     804c78a <_vfprintf_r+0x13aa>
 804c77d:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
 804c784:	0f 84 61 05 00 00    	je     804cceb <_vfprintf_r+0x190b>
 804c78a:	8b 85 18 ff ff ff    	mov    -0xe8(%ebp),%eax
 804c790:	89 07                	mov    %eax,(%edi)
 804c792:	8b 85 0c ff ff ff    	mov    -0xf4(%ebp),%eax
 804c798:	01 c1                	add    %eax,%ecx
 804c79a:	89 47 04             	mov    %eax,0x4(%edi)
 804c79d:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 804c7a3:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
 804c7a9:	83 c0 01             	add    $0x1,%eax
 804c7ac:	83 f8 07             	cmp    $0x7,%eax
 804c7af:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
 804c7b5:	0f 8f 90 06 00 00    	jg     804ce4b <_vfprintf_r+0x1a6b>
 804c7bb:	83 c7 08             	add    $0x8,%edi
 804c7be:	89 d0                	mov    %edx,%eax
 804c7c0:	8b 9d 44 ff ff ff    	mov    -0xbc(%ebp),%ebx
 804c7c6:	89 f2                	mov    %esi,%edx
 804c7c8:	29 f3                	sub    %esi,%ebx
 804c7ca:	8b b5 1c ff ff ff    	mov    -0xe4(%ebp),%esi
 804c7d0:	29 c6                	sub    %eax,%esi
 804c7d2:	39 de                	cmp    %ebx,%esi
 804c7d4:	0f 4e de             	cmovle %esi,%ebx
 804c7d7:	85 db                	test   %ebx,%ebx
 804c7d9:	7e 29                	jle    804c804 <_vfprintf_r+0x1424>
 804c7db:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 804c7e1:	01 d9                	add    %ebx,%ecx
 804c7e3:	83 c7 08             	add    $0x8,%edi
 804c7e6:	89 57 f8             	mov    %edx,-0x8(%edi)
 804c7e9:	89 5f fc             	mov    %ebx,-0x4(%edi)
 804c7ec:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
 804c7f2:	83 c0 01             	add    $0x1,%eax
 804c7f5:	83 f8 07             	cmp    $0x7,%eax
 804c7f8:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
 804c7fe:	0f 8f 7f 06 00 00    	jg     804ce83 <_vfprintf_r+0x1aa3>
 804c804:	31 c0                	xor    %eax,%eax
 804c806:	85 db                	test   %ebx,%ebx
 804c808:	0f 49 c3             	cmovns %ebx,%eax
 804c80b:	29 c6                	sub    %eax,%esi
 804c80d:	85 f6                	test   %esi,%esi
 804c80f:	0f 8e 2f f7 ff ff    	jle    804bf44 <_vfprintf_r+0xb64>
 804c815:	83 fe 10             	cmp    $0x10,%esi
 804c818:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 804c81e:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
 804c824:	7f 16                	jg     804c83c <_vfprintf_r+0x145c>
 804c826:	e9 d7 fe ff ff       	jmp    804c702 <_vfprintf_r+0x1322>
 804c82b:	90                   	nop
 804c82c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 804c830:	83 ee 10             	sub    $0x10,%esi
 804c833:	83 fe 10             	cmp    $0x10,%esi
 804c836:	0f 8e c6 fe ff ff    	jle    804c702 <_vfprintf_r+0x1322>
 804c83c:	83 c0 01             	add    $0x1,%eax
 804c83f:	83 c1 10             	add    $0x10,%ecx
 804c842:	c7 07 f0 4b 05 08    	movl   $0x8054bf0,(%edi)
 804c848:	83 c7 08             	add    $0x8,%edi
 804c84b:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
 804c852:	83 f8 07             	cmp    $0x7,%eax
 804c855:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
 804c85b:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
 804c861:	7e cd                	jle    804c830 <_vfprintf_r+0x1450>
 804c863:	8b 45 0c             	mov    0xc(%ebp),%eax
 804c866:	89 5c 24 08          	mov    %ebx,0x8(%esp)
 804c86a:	89 44 24 04          	mov    %eax,0x4(%esp)
 804c86e:	8b 45 08             	mov    0x8(%ebp),%eax
 804c871:	89 04 24             	mov    %eax,(%esp)
 804c874:	e8 c7 57 00 00       	call   8052040 <__sprint_r>
 804c879:	85 c0                	test   %eax,%eax
 804c87b:	0f 85 d7 ed ff ff    	jne    804b658 <_vfprintf_r+0x278>
 804c881:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
 804c887:	8d 7d a8             	lea    -0x58(%ebp),%edi
 804c88a:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 804c890:	eb 9e                	jmp    804c830 <_vfprintf_r+0x1450>
 804c892:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
 804c899:	0f 85 3c fa ff ff    	jne    804c2db <_vfprintf_r+0xefb>
 804c89f:	89 07                	mov    %eax,(%edi)
 804c8a1:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 804c8a7:	8d 51 01             	lea    0x1(%ecx),%edx
 804c8aa:	c7 47 04 01 00 00 00 	movl   $0x1,0x4(%edi)
 804c8b1:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
 804c8b7:	83 c0 01             	add    $0x1,%eax
 804c8ba:	83 f8 07             	cmp    $0x7,%eax
 804c8bd:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
 804c8c3:	0f 8e b3 fa ff ff    	jle    804c37c <_vfprintf_r+0xf9c>
 804c8c9:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
 804c8cf:	89 44 24 08          	mov    %eax,0x8(%esp)
 804c8d3:	8b 45 0c             	mov    0xc(%ebp),%eax
 804c8d6:	89 44 24 04          	mov    %eax,0x4(%esp)
 804c8da:	8b 45 08             	mov    0x8(%ebp),%eax
 804c8dd:	89 04 24             	mov    %eax,(%esp)
 804c8e0:	e8 5b 57 00 00       	call   8052040 <__sprint_r>
 804c8e5:	85 c0                	test   %eax,%eax
 804c8e7:	0f 85 6b ed ff ff    	jne    804b658 <_vfprintf_r+0x278>
 804c8ed:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
 804c8f3:	8d 7d a8             	lea    -0x58(%ebp),%edi
 804c8f6:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 804c8fc:	e9 7e fa ff ff       	jmp    804c37f <_vfprintf_r+0xf9f>
 804c901:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
 804c907:	89 44 24 08          	mov    %eax,0x8(%esp)
 804c90b:	8b 45 0c             	mov    0xc(%ebp),%eax
 804c90e:	89 44 24 04          	mov    %eax,0x4(%esp)
 804c912:	8b 45 08             	mov    0x8(%ebp),%eax
 804c915:	89 04 24             	mov    %eax,(%esp)
 804c918:	e8 23 57 00 00       	call   8052040 <__sprint_r>
 804c91d:	85 c0                	test   %eax,%eax
 804c91f:	0f 85 33 ed ff ff    	jne    804b658 <_vfprintf_r+0x278>
 804c925:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
 804c92b:	8d 7d a8             	lea    -0x58(%ebp),%edi
 804c92e:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 804c934:	e9 cf f9 ff ff       	jmp    804c308 <_vfprintf_r+0xf28>
 804c939:	c7 07 f0 4b 05 08    	movl   $0x8054bf0,(%edi)
 804c93f:	01 f2                	add    %esi,%edx
 804c941:	89 77 04             	mov    %esi,0x4(%edi)
 804c944:	e9 1b fa ff ff       	jmp    804c364 <_vfprintf_r+0xf84>
 804c949:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
 804c94f:	89 44 24 08          	mov    %eax,0x8(%esp)
 804c953:	8b 45 0c             	mov    0xc(%ebp),%eax
 804c956:	89 44 24 04          	mov    %eax,0x4(%esp)
 804c95a:	8b 45 08             	mov    0x8(%ebp),%eax
 804c95d:	89 04 24             	mov    %eax,(%esp)
 804c960:	e8 db 56 00 00       	call   8052040 <__sprint_r>
 804c965:	85 c0                	test   %eax,%eax
 804c967:	0f 85 eb ec ff ff    	jne    804b658 <_vfprintf_r+0x278>
 804c96d:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
 804c973:	8d 7d a8             	lea    -0x58(%ebp),%edi
 804c976:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 804c97c:	e9 b6 f9 ff ff       	jmp    804c337 <_vfprintf_r+0xf57>
 804c981:	f7 d9                	neg    %ecx
 804c983:	bb 2d 00 00 00       	mov    $0x2d,%ebx
 804c988:	c6 85 59 ff ff ff 2d 	movb   $0x2d,-0xa7(%ebp)
 804c98f:	b8 01 00 00 00       	mov    $0x1,%eax
 804c994:	e9 e8 ee ff ff       	jmp    804b881 <_vfprintf_r+0x4a1>
 804c999:	dd 85 10 ff ff ff    	fldl   -0xf0(%ebp)
 804c99f:	dd 1c 24             	fstpl  (%esp)
 804c9a2:	e8 89 43 00 00       	call   8050d30 <__fpclassifyd>
 804c9a7:	85 c0                	test   %eax,%eax
 804c9a9:	0f 84 e4 02 00 00    	je     804cc93 <_vfprintf_r+0x18b3>
 804c9af:	8b 9d 24 ff ff ff    	mov    -0xdc(%ebp),%ebx
 804c9b5:	83 e3 df             	and    $0xffffffdf,%ebx
 804c9b8:	83 bd 44 ff ff ff ff 	cmpl   $0xffffffff,-0xbc(%ebp)
 804c9bf:	0f 84 b1 07 00 00    	je     804d176 <_vfprintf_r+0x1d96>
 804c9c5:	83 fb 47             	cmp    $0x47,%ebx
 804c9c8:	75 16                	jne    804c9e0 <_vfprintf_r+0x1600>
 804c9ca:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
 804c9d0:	b8 01 00 00 00       	mov    $0x1,%eax
 804c9d5:	85 d2                	test   %edx,%edx
 804c9d7:	0f 45 c2             	cmovne %edx,%eax
 804c9da:	89 85 44 ff ff ff    	mov    %eax,-0xbc(%ebp)
 804c9e0:	8b 85 4c ff ff ff    	mov    -0xb4(%ebp),%eax
 804c9e6:	dd 85 10 ff ff ff    	fldl   -0xf0(%ebp)
 804c9ec:	dd 95 38 ff ff ff    	fstl   -0xc8(%ebp)
 804c9f2:	80 cc 01             	or     $0x1,%ah
 804c9f5:	89 85 34 ff ff ff    	mov    %eax,-0xcc(%ebp)
 804c9fb:	8b 85 3c ff ff ff    	mov    -0xc4(%ebp),%eax
 804ca01:	c6 85 48 ff ff ff 00 	movb   $0x0,-0xb8(%ebp)
 804ca08:	85 c0                	test   %eax,%eax
 804ca0a:	0f 88 58 07 00 00    	js     804d168 <_vfprintf_r+0x1d88>
 804ca10:	83 fb 46             	cmp    $0x46,%ebx
 804ca13:	0f 94 c0             	sete   %al
 804ca16:	89 c6                	mov    %eax,%esi
 804ca18:	0f 84 f0 04 00 00    	je     804cf0e <_vfprintf_r+0x1b2e>
 804ca1e:	83 fb 45             	cmp    $0x45,%ebx
 804ca21:	0f 85 37 07 00 00    	jne    804d15e <_vfprintf_r+0x1d7e>
 804ca27:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
 804ca2d:	dd 54 24 04          	fstl   0x4(%esp)
 804ca31:	c7 44 24 0c 02 00 00 	movl   $0x2,0xc(%esp)
 804ca38:	00 
 804ca39:	dd 9d 38 ff ff ff    	fstpl  -0xc8(%ebp)
 804ca3f:	8d 70 01             	lea    0x1(%eax),%esi
 804ca42:	8d 85 6c ff ff ff    	lea    -0x94(%ebp),%eax
 804ca48:	89 44 24 1c          	mov    %eax,0x1c(%esp)
 804ca4c:	8d 85 60 ff ff ff    	lea    -0xa0(%ebp),%eax
 804ca52:	89 44 24 18          	mov    %eax,0x18(%esp)
 804ca56:	8d 85 5c ff ff ff    	lea    -0xa4(%ebp),%eax
 804ca5c:	89 44 24 14          	mov    %eax,0x14(%esp)
 804ca60:	8b 45 08             	mov    0x8(%ebp),%eax
 804ca63:	89 74 24 10          	mov    %esi,0x10(%esp)
 804ca67:	89 04 24             	mov    %eax,(%esp)
 804ca6a:	e8 f1 0c 00 00       	call   804d760 <_dtoa_r>
 804ca6f:	89 85 2c ff ff ff    	mov    %eax,-0xd4(%ebp)
 804ca75:	8d 0c 30             	lea    (%eax,%esi,1),%ecx
 804ca78:	dd 85 38 ff ff ff    	fldl   -0xc8(%ebp)
 804ca7e:	d9 ee                	fldz   
 804ca80:	d9 c9                	fxch   %st(1)
 804ca82:	df e9                	fucomip %st(1),%st
 804ca84:	dd d8                	fstp   %st(0)
 804ca86:	0f 8a f8 01 00 00    	jp     804cc84 <_vfprintf_r+0x18a4>
 804ca8c:	89 c8                	mov    %ecx,%eax
 804ca8e:	0f 85 f0 01 00 00    	jne    804cc84 <_vfprintf_r+0x18a4>
 804ca94:	2b 85 2c ff ff ff    	sub    -0xd4(%ebp),%eax
 804ca9a:	83 fb 47             	cmp    $0x47,%ebx
 804ca9d:	89 85 1c ff ff ff    	mov    %eax,-0xe4(%ebp)
 804caa3:	0f 84 4b 05 00 00    	je     804cff4 <_vfprintf_r+0x1c14>
 804caa9:	83 bd 24 ff ff ff 65 	cmpl   $0x65,-0xdc(%ebp)
 804cab0:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
 804cab6:	0f 8e 92 05 00 00    	jle    804d04e <_vfprintf_r+0x1c6e>
 804cabc:	83 bd 24 ff ff ff 66 	cmpl   $0x66,-0xdc(%ebp)
 804cac3:	89 85 20 ff ff ff    	mov    %eax,-0xe0(%ebp)
 804cac9:	0f 84 b6 06 00 00    	je     804d185 <_vfprintf_r+0x1da5>
 804cacf:	8b 85 20 ff ff ff    	mov    -0xe0(%ebp),%eax
 804cad5:	39 85 1c ff ff ff    	cmp    %eax,-0xe4(%ebp)
 804cadb:	0f 8f 4a 06 00 00    	jg     804d12b <_vfprintf_r+0x1d4b>
 804cae1:	8b 85 4c ff ff ff    	mov    -0xb4(%ebp),%eax
 804cae7:	83 e0 01             	and    $0x1,%eax
 804caea:	0f 85 79 07 00 00    	jne    804d269 <_vfprintf_r+0x1e89>
 804caf0:	8b 95 20 ff ff ff    	mov    -0xe0(%ebp),%edx
 804caf6:	c7 85 24 ff ff ff 67 	movl   $0x67,-0xdc(%ebp)
 804cafd:	00 00 00 
 804cb00:	85 d2                	test   %edx,%edx
 804cb02:	0f 49 c2             	cmovns %edx,%eax
 804cb05:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
 804cb0b:	80 bd 48 ff ff ff 00 	cmpb   $0x0,-0xb8(%ebp)
 804cb12:	0f 85 95 04 00 00    	jne    804cfad <_vfprintf_r+0x1bcd>
 804cb18:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
 804cb1e:	8b 85 34 ff ff ff    	mov    -0xcc(%ebp),%eax
 804cb24:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
 804cb2b:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
 804cb32:	00 00 00 
 804cb35:	89 85 4c ff ff ff    	mov    %eax,-0xb4(%ebp)
 804cb3b:	e9 f0 eb ff ff       	jmp    804b730 <_vfprintf_r+0x350>
 804cb40:	dd 00                	fldl   (%eax)
 804cb42:	83 c0 08             	add    $0x8,%eax
 804cb45:	dd 9d 10 ff ff ff    	fstpl  -0xf0(%ebp)
 804cb4b:	89 45 14             	mov    %eax,0x14(%ebp)
 804cb4e:	e9 d1 ef ff ff       	jmp    804bb24 <_vfprintf_r+0x744>
 804cb53:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
 804cb59:	89 44 24 08          	mov    %eax,0x8(%esp)
 804cb5d:	8b 45 0c             	mov    0xc(%ebp),%eax
 804cb60:	89 44 24 04          	mov    %eax,0x4(%esp)
 804cb64:	8b 45 08             	mov    0x8(%ebp),%eax
 804cb67:	89 04 24             	mov    %eax,(%esp)
 804cb6a:	e8 d1 54 00 00       	call   8052040 <__sprint_r>
 804cb6f:	85 c0                	test   %eax,%eax
 804cb71:	0f 85 e1 ea ff ff    	jne    804b658 <_vfprintf_r+0x278>
 804cb77:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
 804cb7d:	8d 7d a8             	lea    -0x58(%ebp),%edi
 804cb80:	e9 32 f5 ff ff       	jmp    804c0b7 <_vfprintf_r+0xcd7>
 804cb85:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 804cb8b:	83 c1 01             	add    $0x1,%ecx
 804cb8e:	83 c7 08             	add    $0x8,%edi
 804cb91:	c7 47 f8 3d 46 05 08 	movl   $0x805463d,-0x8(%edi)
 804cb98:	c7 47 fc 01 00 00 00 	movl   $0x1,-0x4(%edi)
 804cb9f:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
 804cba5:	83 c0 01             	add    $0x1,%eax
 804cba8:	83 f8 07             	cmp    $0x7,%eax
 804cbab:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
 804cbb1:	0f 8f 5b 01 00 00    	jg     804cd12 <_vfprintf_r+0x1932>
 804cbb7:	85 db                	test   %ebx,%ebx
 804cbb9:	0f 84 33 01 00 00    	je     804ccf2 <_vfprintf_r+0x1912>
 804cbbf:	8b 85 18 ff ff ff    	mov    -0xe8(%ebp),%eax
 804cbc5:	83 c7 08             	add    $0x8,%edi
 804cbc8:	89 47 f8             	mov    %eax,-0x8(%edi)
 804cbcb:	8b 85 0c ff ff ff    	mov    -0xf4(%ebp),%eax
 804cbd1:	89 47 fc             	mov    %eax,-0x4(%edi)
 804cbd4:	8d 14 01             	lea    (%ecx,%eax,1),%edx
 804cbd7:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 804cbdd:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
 804cbe3:	83 c0 01             	add    $0x1,%eax
 804cbe6:	83 f8 07             	cmp    $0x7,%eax
 804cbe9:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
 804cbef:	0f 8f e3 04 00 00    	jg     804d0d8 <_vfprintf_r+0x1cf8>
 804cbf5:	f7 db                	neg    %ebx
 804cbf7:	85 db                	test   %ebx,%ebx
 804cbf9:	0f 8e d2 01 00 00    	jle    804cdd1 <_vfprintf_r+0x19f1>
 804cbff:	83 fb 10             	cmp    $0x10,%ebx
 804cc02:	0f 8e 74 01 00 00    	jle    804cd7c <_vfprintf_r+0x199c>
 804cc08:	8d b5 74 ff ff ff    	lea    -0x8c(%ebp),%esi
 804cc0e:	eb 0c                	jmp    804cc1c <_vfprintf_r+0x183c>
 804cc10:	83 eb 10             	sub    $0x10,%ebx
 804cc13:	83 fb 10             	cmp    $0x10,%ebx
 804cc16:	0f 8e 60 01 00 00    	jle    804cd7c <_vfprintf_r+0x199c>
 804cc1c:	83 c0 01             	add    $0x1,%eax
 804cc1f:	83 c2 10             	add    $0x10,%edx
 804cc22:	c7 07 f0 4b 05 08    	movl   $0x8054bf0,(%edi)
 804cc28:	83 c7 08             	add    $0x8,%edi
 804cc2b:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
 804cc32:	83 f8 07             	cmp    $0x7,%eax
 804cc35:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
 804cc3b:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
 804cc41:	7e cd                	jle    804cc10 <_vfprintf_r+0x1830>
 804cc43:	8b 45 0c             	mov    0xc(%ebp),%eax
 804cc46:	89 74 24 08          	mov    %esi,0x8(%esp)
 804cc4a:	89 44 24 04          	mov    %eax,0x4(%esp)
 804cc4e:	8b 45 08             	mov    0x8(%ebp),%eax
 804cc51:	89 04 24             	mov    %eax,(%esp)
 804cc54:	e8 e7 53 00 00       	call   8052040 <__sprint_r>
 804cc59:	85 c0                	test   %eax,%eax
 804cc5b:	0f 85 f7 e9 ff ff    	jne    804b658 <_vfprintf_r+0x278>
 804cc61:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
 804cc67:	8d 7d a8             	lea    -0x58(%ebp),%edi
 804cc6a:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 804cc70:	eb 9e                	jmp    804cc10 <_vfprintf_r+0x1830>
 804cc72:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 804cc78:	8d 50 01             	lea    0x1(%eax),%edx
 804cc7b:	89 95 6c ff ff ff    	mov    %edx,-0x94(%ebp)
 804cc81:	c6 00 30             	movb   $0x30,(%eax)
 804cc84:	8b 85 6c ff ff ff    	mov    -0x94(%ebp),%eax
 804cc8a:	39 c1                	cmp    %eax,%ecx
 804cc8c:	77 ea                	ja     804cc78 <_vfprintf_r+0x1898>
 804cc8e:	e9 01 fe ff ff       	jmp    804ca94 <_vfprintf_r+0x16b4>
 804cc93:	83 bd 24 ff ff ff 47 	cmpl   $0x47,-0xdc(%ebp)
 804cc9a:	ba d4 48 05 08       	mov    $0x80548d4,%edx
 804cc9f:	b8 d8 48 05 08       	mov    $0x80548d8,%eax
 804cca4:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
 804ccab:	c7 85 48 ff ff ff 03 	movl   $0x3,-0xb8(%ebp)
 804ccb2:	00 00 00 
 804ccb5:	0f 4e c2             	cmovle %edx,%eax
 804ccb8:	89 85 2c ff ff ff    	mov    %eax,-0xd4(%ebp)
 804ccbe:	81 a5 4c ff ff ff 7f 	andl   $0xffffff7f,-0xb4(%ebp)
 804ccc5:	ff ff ff 
 804ccc8:	c7 85 38 ff ff ff 03 	movl   $0x3,-0xc8(%ebp)
 804cccf:	00 00 00 
 804ccd2:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
 804ccd9:	00 00 00 
 804ccdc:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
 804cce3:	00 00 00 
 804cce6:	e9 45 ea ff ff       	jmp    804b730 <_vfprintf_r+0x350>
 804cceb:	89 d0                	mov    %edx,%eax
 804cced:	e9 ce fa ff ff       	jmp    804c7c0 <_vfprintf_r+0x13e0>
 804ccf2:	8b 95 1c ff ff ff    	mov    -0xe4(%ebp),%edx
 804ccf8:	85 d2                	test   %edx,%edx
 804ccfa:	0f 85 bf fe ff ff    	jne    804cbbf <_vfprintf_r+0x17df>
 804cd00:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
 804cd07:	0f 84 37 f2 ff ff    	je     804bf44 <_vfprintf_r+0xb64>
 804cd0d:	e9 ad fe ff ff       	jmp    804cbbf <_vfprintf_r+0x17df>
 804cd12:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
 804cd18:	89 44 24 08          	mov    %eax,0x8(%esp)
 804cd1c:	8b 45 0c             	mov    0xc(%ebp),%eax
 804cd1f:	89 44 24 04          	mov    %eax,0x4(%esp)
 804cd23:	8b 45 08             	mov    0x8(%ebp),%eax
 804cd26:	89 04 24             	mov    %eax,(%esp)
 804cd29:	e8 12 53 00 00       	call   8052040 <__sprint_r>
 804cd2e:	85 c0                	test   %eax,%eax
 804cd30:	0f 85 22 e9 ff ff    	jne    804b658 <_vfprintf_r+0x278>
 804cd36:	8b 9d 5c ff ff ff    	mov    -0xa4(%ebp),%ebx
 804cd3c:	8d 7d a8             	lea    -0x58(%ebp),%edi
 804cd3f:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
 804cd45:	e9 6d fe ff ff       	jmp    804cbb7 <_vfprintf_r+0x17d7>
 804cd4a:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
 804cd50:	89 44 24 08          	mov    %eax,0x8(%esp)
 804cd54:	8b 45 0c             	mov    0xc(%ebp),%eax
 804cd57:	89 44 24 04          	mov    %eax,0x4(%esp)
 804cd5b:	8b 45 08             	mov    0x8(%ebp),%eax
 804cd5e:	89 04 24             	mov    %eax,(%esp)
 804cd61:	e8 da 52 00 00       	call   8052040 <__sprint_r>
 804cd66:	85 c0                	test   %eax,%eax
 804cd68:	0f 85 ea e8 ff ff    	jne    804b658 <_vfprintf_r+0x278>
 804cd6e:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
 804cd74:	8d 7d a8             	lea    -0x58(%ebp),%edi
 804cd77:	e9 8b f3 ff ff       	jmp    804c107 <_vfprintf_r+0xd27>
 804cd7c:	83 c0 01             	add    $0x1,%eax
 804cd7f:	01 da                	add    %ebx,%edx
 804cd81:	c7 07 f0 4b 05 08    	movl   $0x8054bf0,(%edi)
 804cd87:	83 c7 08             	add    $0x8,%edi
 804cd8a:	89 5f fc             	mov    %ebx,-0x4(%edi)
 804cd8d:	83 f8 07             	cmp    $0x7,%eax
 804cd90:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
 804cd96:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
 804cd9c:	7e 33                	jle    804cdd1 <_vfprintf_r+0x19f1>
 804cd9e:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
 804cda4:	89 44 24 08          	mov    %eax,0x8(%esp)
 804cda8:	8b 45 0c             	mov    0xc(%ebp),%eax
 804cdab:	89 44 24 04          	mov    %eax,0x4(%esp)
 804cdaf:	8b 45 08             	mov    0x8(%ebp),%eax
 804cdb2:	89 04 24             	mov    %eax,(%esp)
 804cdb5:	e8 86 52 00 00       	call   8052040 <__sprint_r>
 804cdba:	85 c0                	test   %eax,%eax
 804cdbc:	0f 85 96 e8 ff ff    	jne    804b658 <_vfprintf_r+0x278>
 804cdc2:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
 804cdc8:	8d 7d a8             	lea    -0x58(%ebp),%edi
 804cdcb:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 804cdd1:	8b 9d 2c ff ff ff    	mov    -0xd4(%ebp),%ebx
 804cdd7:	83 c0 01             	add    $0x1,%eax
 804cdda:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
 804cde0:	89 1f                	mov    %ebx,(%edi)
 804cde2:	8b 9d 1c ff ff ff    	mov    -0xe4(%ebp),%ebx
 804cde8:	01 da                	add    %ebx,%edx
 804cdea:	83 f8 07             	cmp    $0x7,%eax
 804cded:	89 5f 04             	mov    %ebx,0x4(%edi)
 804cdf0:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
 804cdf6:	0f 8f af f5 ff ff    	jg     804c3ab <_vfprintf_r+0xfcb>
 804cdfc:	83 c7 08             	add    $0x8,%edi
 804cdff:	89 d1                	mov    %edx,%ecx
 804ce01:	e9 3e f1 ff ff       	jmp    804bf44 <_vfprintf_r+0xb64>
 804ce06:	8b 85 2c ff ff ff    	mov    -0xd4(%ebp),%eax
 804ce0c:	89 04 24             	mov    %eax,(%esp)
 804ce0f:	e8 4c c6 ff ff       	call   8049460 <strlen>
 804ce14:	e9 df e8 ff ff       	jmp    804b6f8 <_vfprintf_r+0x318>
 804ce19:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
 804ce1f:	89 44 24 08          	mov    %eax,0x8(%esp)
 804ce23:	8b 45 0c             	mov    0xc(%ebp),%eax
 804ce26:	89 44 24 04          	mov    %eax,0x4(%esp)
 804ce2a:	8b 45 08             	mov    0x8(%ebp),%eax
 804ce2d:	89 04 24             	mov    %eax,(%esp)
 804ce30:	e8 0b 52 00 00       	call   8052040 <__sprint_r>
 804ce35:	85 c0                	test   %eax,%eax
 804ce37:	0f 85 1b e8 ff ff    	jne    804b658 <_vfprintf_r+0x278>
 804ce3d:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
 804ce43:	8d 7d a8             	lea    -0x58(%ebp),%edi
 804ce46:	e9 ec f6 ff ff       	jmp    804c537 <_vfprintf_r+0x1157>
 804ce4b:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
 804ce51:	89 44 24 08          	mov    %eax,0x8(%esp)
 804ce55:	8b 45 0c             	mov    0xc(%ebp),%eax
 804ce58:	89 44 24 04          	mov    %eax,0x4(%esp)
 804ce5c:	8b 45 08             	mov    0x8(%ebp),%eax
 804ce5f:	89 04 24             	mov    %eax,(%esp)
 804ce62:	e8 d9 51 00 00       	call   8052040 <__sprint_r>
 804ce67:	85 c0                	test   %eax,%eax
 804ce69:	0f 85 e9 e7 ff ff    	jne    804b658 <_vfprintf_r+0x278>
 804ce6f:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
 804ce75:	8d 7d a8             	lea    -0x58(%ebp),%edi
 804ce78:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
 804ce7e:	e9 3d f9 ff ff       	jmp    804c7c0 <_vfprintf_r+0x13e0>
 804ce83:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
 804ce89:	89 44 24 08          	mov    %eax,0x8(%esp)
 804ce8d:	8b 45 0c             	mov    0xc(%ebp),%eax
 804ce90:	89 44 24 04          	mov    %eax,0x4(%esp)
 804ce94:	8b 45 08             	mov    0x8(%ebp),%eax
 804ce97:	89 04 24             	mov    %eax,(%esp)
 804ce9a:	e8 a1 51 00 00       	call   8052040 <__sprint_r>
 804ce9f:	85 c0                	test   %eax,%eax
 804cea1:	0f 85 b1 e7 ff ff    	jne    804b658 <_vfprintf_r+0x278>
 804cea7:	8b b5 1c ff ff ff    	mov    -0xe4(%ebp),%esi
 804cead:	8d 7d a8             	lea    -0x58(%ebp),%edi
 804ceb0:	2b b5 5c ff ff ff    	sub    -0xa4(%ebp),%esi
 804ceb6:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
 804cebc:	e9 43 f9 ff ff       	jmp    804c804 <_vfprintf_r+0x1424>
 804cec1:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
 804cec7:	b0 06                	mov    $0x6,%al
 804cec9:	89 75 14             	mov    %esi,0x14(%ebp)
 804cecc:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
 804ced3:	00 00 00 
 804ced6:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
 804cedd:	00 00 00 
 804cee0:	83 fa 06             	cmp    $0x6,%edx
 804cee3:	0f 46 c2             	cmovbe %edx,%eax
 804cee6:	8b 95 2c ff ff ff    	mov    -0xd4(%ebp),%edx
 804ceec:	85 c0                	test   %eax,%eax
 804ceee:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
 804cef4:	c7 85 2c ff ff ff fe 	movl   $0x80548fe,-0xd4(%ebp)
 804cefb:	48 05 08 
 804cefe:	0f 49 d0             	cmovns %eax,%edx
 804cf01:	31 db                	xor    %ebx,%ebx
 804cf03:	89 95 48 ff ff ff    	mov    %edx,-0xb8(%ebp)
 804cf09:	e9 2d e8 ff ff       	jmp    804b73b <_vfprintf_r+0x35b>
 804cf0e:	ba 03 00 00 00       	mov    $0x3,%edx
 804cf13:	8d 85 6c ff ff ff    	lea    -0x94(%ebp),%eax
 804cf19:	89 44 24 1c          	mov    %eax,0x1c(%esp)
 804cf1d:	8d 85 60 ff ff ff    	lea    -0xa0(%ebp),%eax
 804cf23:	89 44 24 18          	mov    %eax,0x18(%esp)
 804cf27:	8d 85 5c ff ff ff    	lea    -0xa4(%ebp),%eax
 804cf2d:	89 44 24 14          	mov    %eax,0x14(%esp)
 804cf31:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
 804cf37:	dd 54 24 04          	fstl   0x4(%esp)
 804cf3b:	89 54 24 0c          	mov    %edx,0xc(%esp)
 804cf3f:	dd 9d 38 ff ff ff    	fstpl  -0xc8(%ebp)
 804cf45:	89 44 24 10          	mov    %eax,0x10(%esp)
 804cf49:	8b 45 08             	mov    0x8(%ebp),%eax
 804cf4c:	89 04 24             	mov    %eax,(%esp)
 804cf4f:	e8 0c 08 00 00       	call   804d760 <_dtoa_r>
 804cf54:	83 fb 47             	cmp    $0x47,%ebx
 804cf57:	89 85 2c ff ff ff    	mov    %eax,-0xd4(%ebp)
 804cf5d:	dd 85 38 ff ff ff    	fldl   -0xc8(%ebp)
 804cf63:	75 09                	jne    804cf6e <_vfprintf_r+0x1b8e>
 804cf65:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
 804cf6c:	74 6c                	je     804cfda <_vfprintf_r+0x1bfa>
 804cf6e:	8b 95 2c ff ff ff    	mov    -0xd4(%ebp),%edx
 804cf74:	89 f0                	mov    %esi,%eax
 804cf76:	8b 8d 44 ff ff ff    	mov    -0xbc(%ebp),%ecx
 804cf7c:	01 d1                	add    %edx,%ecx
 804cf7e:	84 c0                	test   %al,%al
 804cf80:	0f 84 f8 fa ff ff    	je     804ca7e <_vfprintf_r+0x169e>
 804cf86:	80 3a 30             	cmpb   $0x30,(%edx)
 804cf89:	0f 84 b2 02 00 00    	je     804d241 <_vfprintf_r+0x1e61>
 804cf8f:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
 804cf95:	01 c1                	add    %eax,%ecx
 804cf97:	e9 e2 fa ff ff       	jmp    804ca7e <_vfprintf_r+0x169e>
 804cf9c:	c6 85 59 ff ff ff 2d 	movb   $0x2d,-0xa7(%ebp)
 804cfa3:	bb 2d 00 00 00       	mov    $0x2d,%ebx
 804cfa8:	e9 a9 eb ff ff       	jmp    804bb56 <_vfprintf_r+0x776>
 804cfad:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
 804cfb3:	8b 85 34 ff ff ff    	mov    -0xcc(%ebp),%eax
 804cfb9:	bb 2d 00 00 00       	mov    $0x2d,%ebx
 804cfbe:	c6 85 59 ff ff ff 2d 	movb   $0x2d,-0xa7(%ebp)
 804cfc5:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
 804cfcc:	00 00 00 
 804cfcf:	89 85 4c ff ff ff    	mov    %eax,-0xb4(%ebp)
 804cfd5:	e9 5a e7 ff ff       	jmp    804b734 <_vfprintf_r+0x354>
 804cfda:	dd d8                	fstp   %st(0)
 804cfdc:	8b 85 6c ff ff ff    	mov    -0x94(%ebp),%eax
 804cfe2:	89 85 1c ff ff ff    	mov    %eax,-0xe4(%ebp)
 804cfe8:	8b 85 2c ff ff ff    	mov    -0xd4(%ebp),%eax
 804cfee:	29 85 1c ff ff ff    	sub    %eax,-0xe4(%ebp)
 804cff4:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
 804cffa:	83 f8 fd             	cmp    $0xfffffffd,%eax
 804cffd:	7c 48                	jl     804d047 <_vfprintf_r+0x1c67>
 804cfff:	39 85 44 ff ff ff    	cmp    %eax,-0xbc(%ebp)
 804d005:	7c 40                	jl     804d047 <_vfprintf_r+0x1c67>
 804d007:	89 85 20 ff ff ff    	mov    %eax,-0xe0(%ebp)
 804d00d:	e9 bd fa ff ff       	jmp    804cacf <_vfprintf_r+0x16ef>
 804d012:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
 804d018:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
 804d01f:	89 75 14             	mov    %esi,0x14(%ebp)
 804d022:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
 804d029:	00 00 00 
 804d02c:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
 804d032:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
 804d038:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
 804d03f:	00 00 00 
 804d042:	e9 e9 e6 ff ff       	jmp    804b730 <_vfprintf_r+0x350>
 804d047:	83 ad 24 ff ff ff 02 	subl   $0x2,-0xdc(%ebp)
 804d04e:	8d 48 ff             	lea    -0x1(%eax),%ecx
 804d051:	0f b6 85 24 ff ff ff 	movzbl -0xdc(%ebp),%eax
 804d058:	85 c9                	test   %ecx,%ecx
 804d05a:	89 8d 5c ff ff ff    	mov    %ecx,-0xa4(%ebp)
 804d060:	88 85 65 ff ff ff    	mov    %al,-0x9b(%ebp)
 804d066:	0f 88 af 02 00 00    	js     804d31b <_vfprintf_r+0x1f3b>
 804d06c:	c6 85 66 ff ff ff 2b 	movb   $0x2b,-0x9a(%ebp)
 804d073:	83 f9 09             	cmp    $0x9,%ecx
 804d076:	0f 8f 33 01 00 00    	jg     804d1af <_vfprintf_r+0x1dcf>
 804d07c:	83 c1 30             	add    $0x30,%ecx
 804d07f:	c6 85 67 ff ff ff 30 	movb   $0x30,-0x99(%ebp)
 804d086:	8d 85 69 ff ff ff    	lea    -0x97(%ebp),%eax
 804d08c:	88 8d 68 ff ff ff    	mov    %cl,-0x98(%ebp)
 804d092:	8b 9d 1c ff ff ff    	mov    -0xe4(%ebp),%ebx
 804d098:	8d 95 65 ff ff ff    	lea    -0x9b(%ebp),%edx
 804d09e:	29 d0                	sub    %edx,%eax
 804d0a0:	89 85 04 ff ff ff    	mov    %eax,-0xfc(%ebp)
 804d0a6:	89 da                	mov    %ebx,%edx
 804d0a8:	01 c2                	add    %eax,%edx
 804d0aa:	83 fb 01             	cmp    $0x1,%ebx
 804d0ad:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
 804d0b3:	0f 8e 3f 02 00 00    	jle    804d2f8 <_vfprintf_r+0x1f18>
 804d0b9:	31 c0                	xor    %eax,%eax
 804d0bb:	83 85 38 ff ff ff 01 	addl   $0x1,-0xc8(%ebp)
 804d0c2:	0f 49 85 38 ff ff ff 	cmovns -0xc8(%ebp),%eax
 804d0c9:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
 804d0d0:	00 00 00 
 804d0d3:	e9 33 fa ff ff       	jmp    804cb0b <_vfprintf_r+0x172b>
 804d0d8:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
 804d0de:	89 44 24 08          	mov    %eax,0x8(%esp)
 804d0e2:	8b 45 0c             	mov    0xc(%ebp),%eax
 804d0e5:	89 44 24 04          	mov    %eax,0x4(%esp)
 804d0e9:	8b 45 08             	mov    0x8(%ebp),%eax
 804d0ec:	89 04 24             	mov    %eax,(%esp)
 804d0ef:	e8 4c 4f 00 00       	call   8052040 <__sprint_r>
 804d0f4:	85 c0                	test   %eax,%eax
 804d0f6:	0f 85 5c e5 ff ff    	jne    804b658 <_vfprintf_r+0x278>
 804d0fc:	8b 9d 5c ff ff ff    	mov    -0xa4(%ebp),%ebx
 804d102:	8d 7d a8             	lea    -0x58(%ebp),%edi
 804d105:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
 804d10b:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 804d111:	e9 df fa ff ff       	jmp    804cbf5 <_vfprintf_r+0x1815>
 804d116:	8b 8d 48 ff ff ff    	mov    -0xb8(%ebp),%ecx
 804d11c:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
 804d123:	00 00 00 
 804d126:	e9 28 e4 ff ff       	jmp    804b553 <_vfprintf_r+0x173>
 804d12b:	8b 8d 20 ff ff ff    	mov    -0xe0(%ebp),%ecx
 804d131:	ba 01 00 00 00       	mov    $0x1,%edx
 804d136:	85 c9                	test   %ecx,%ecx
 804d138:	0f 8e 4e 01 00 00    	jle    804d28c <_vfprintf_r+0x1eac>
 804d13e:	31 c0                	xor    %eax,%eax
 804d140:	03 95 1c ff ff ff    	add    -0xe4(%ebp),%edx
 804d146:	c7 85 24 ff ff ff 67 	movl   $0x67,-0xdc(%ebp)
 804d14d:	00 00 00 
 804d150:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
 804d156:	0f 49 c2             	cmovns %edx,%eax
 804d159:	e9 ad f9 ff ff       	jmp    804cb0b <_vfprintf_r+0x172b>
 804d15e:	ba 02 00 00 00       	mov    $0x2,%edx
 804d163:	e9 ab fd ff ff       	jmp    804cf13 <_vfprintf_r+0x1b33>
 804d168:	d9 e0                	fchs   
 804d16a:	c6 85 48 ff ff ff 2d 	movb   $0x2d,-0xb8(%ebp)
 804d171:	e9 9a f8 ff ff       	jmp    804ca10 <_vfprintf_r+0x1630>
 804d176:	c7 85 44 ff ff ff 06 	movl   $0x6,-0xbc(%ebp)
 804d17d:	00 00 00 
 804d180:	e9 5b f8 ff ff       	jmp    804c9e0 <_vfprintf_r+0x1600>
 804d185:	85 c0                	test   %eax,%eax
 804d187:	0f 8e 43 01 00 00    	jle    804d2d0 <_vfprintf_r+0x1ef0>
 804d18d:	8b b5 44 ff ff ff    	mov    -0xbc(%ebp),%esi
 804d193:	85 f6                	test   %esi,%esi
 804d195:	0f 85 82 00 00 00    	jne    804d21d <_vfprintf_r+0x1e3d>
 804d19b:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
 804d1a2:	75 79                	jne    804d21d <_vfprintf_r+0x1e3d>
 804d1a4:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
 804d1aa:	e9 5c f9 ff ff       	jmp    804cb0b <_vfprintf_r+0x172b>
 804d1af:	8d b5 73 ff ff ff    	lea    -0x8d(%ebp),%esi
 804d1b5:	89 f3                	mov    %esi,%ebx
 804d1b7:	b8 67 66 66 66       	mov    $0x66666667,%eax
 804d1bc:	83 eb 01             	sub    $0x1,%ebx
 804d1bf:	f7 e9                	imul   %ecx
 804d1c1:	89 c8                	mov    %ecx,%eax
 804d1c3:	c1 f8 1f             	sar    $0x1f,%eax
 804d1c6:	c1 fa 02             	sar    $0x2,%edx
 804d1c9:	29 c2                	sub    %eax,%edx
 804d1cb:	8d 04 92             	lea    (%edx,%edx,4),%eax
 804d1ce:	01 c0                	add    %eax,%eax
 804d1d0:	29 c1                	sub    %eax,%ecx
 804d1d2:	83 fa 09             	cmp    $0x9,%edx
 804d1d5:	8d 41 30             	lea    0x30(%ecx),%eax
 804d1d8:	89 d1                	mov    %edx,%ecx
 804d1da:	88 03                	mov    %al,(%ebx)
 804d1dc:	7f d9                	jg     804d1b7 <_vfprintf_r+0x1dd7>
 804d1de:	8d 43 ff             	lea    -0x1(%ebx),%eax
 804d1e1:	83 c1 30             	add    $0x30,%ecx
 804d1e4:	39 f0                	cmp    %esi,%eax
 804d1e6:	88 4b ff             	mov    %cl,-0x1(%ebx)
 804d1e9:	0f 83 53 01 00 00    	jae    804d342 <_vfprintf_r+0x1f62>
 804d1ef:	8d 95 67 ff ff ff    	lea    -0x99(%ebp),%edx
 804d1f5:	eb 04                	jmp    804d1fb <_vfprintf_r+0x1e1b>
 804d1f7:	90                   	nop
 804d1f8:	0f b6 08             	movzbl (%eax),%ecx
 804d1fb:	83 c0 01             	add    $0x1,%eax
 804d1fe:	83 c2 01             	add    $0x1,%edx
 804d201:	39 f0                	cmp    %esi,%eax
 804d203:	88 4a ff             	mov    %cl,-0x1(%edx)
 804d206:	75 f0                	jne    804d1f8 <_vfprintf_r+0x1e18>
 804d208:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
 804d20e:	29 d8                	sub    %ebx,%eax
 804d210:	8d 95 67 ff ff ff    	lea    -0x99(%ebp),%edx
 804d216:	01 d0                	add    %edx,%eax
 804d218:	e9 75 fe ff ff       	jmp    804d092 <_vfprintf_r+0x1cb2>
 804d21d:	8b 95 20 ff ff ff    	mov    -0xe0(%ebp),%edx
 804d223:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
 804d229:	8d 44 10 01          	lea    0x1(%eax,%edx,1),%eax
 804d22d:	89 c2                	mov    %eax,%edx
 804d22f:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
 804d235:	31 c0                	xor    %eax,%eax
 804d237:	85 d2                	test   %edx,%edx
 804d239:	0f 49 c2             	cmovns %edx,%eax
 804d23c:	e9 ca f8 ff ff       	jmp    804cb0b <_vfprintf_r+0x172b>
 804d241:	d9 ee                	fldz   
 804d243:	d9 c9                	fxch   %st(1)
 804d245:	db e9                	fucomi %st(1),%st
 804d247:	dd d9                	fstp   %st(1)
 804d249:	7a 06                	jp     804d251 <_vfprintf_r+0x1e71>
 804d24b:	0f 84 3e fd ff ff    	je     804cf8f <_vfprintf_r+0x1baf>
 804d251:	b8 01 00 00 00       	mov    $0x1,%eax
 804d256:	2b 85 44 ff ff ff    	sub    -0xbc(%ebp),%eax
 804d25c:	89 85 5c ff ff ff    	mov    %eax,-0xa4(%ebp)
 804d262:	01 c1                	add    %eax,%ecx
 804d264:	e9 15 f8 ff ff       	jmp    804ca7e <_vfprintf_r+0x169e>
 804d269:	8b 95 20 ff ff ff    	mov    -0xe0(%ebp),%edx
 804d26f:	31 c0                	xor    %eax,%eax
 804d271:	c7 85 24 ff ff ff 67 	movl   $0x67,-0xdc(%ebp)
 804d278:	00 00 00 
 804d27b:	83 c2 01             	add    $0x1,%edx
 804d27e:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
 804d284:	0f 49 c2             	cmovns %edx,%eax
 804d287:	e9 7f f8 ff ff       	jmp    804cb0b <_vfprintf_r+0x172b>
 804d28c:	b2 02                	mov    $0x2,%dl
 804d28e:	2b 95 20 ff ff ff    	sub    -0xe0(%ebp),%edx
 804d294:	e9 a5 fe ff ff       	jmp    804d13e <_vfprintf_r+0x1d5e>
 804d299:	8b 55 14             	mov    0x14(%ebp),%edx
 804d29c:	8b 45 14             	mov    0x14(%ebp),%eax
 804d29f:	8b 8d 48 ff ff ff    	mov    -0xb8(%ebp),%ecx
 804d2a5:	8b 12                	mov    (%edx),%edx
 804d2a7:	83 c0 04             	add    $0x4,%eax
 804d2aa:	89 45 14             	mov    %eax,0x14(%ebp)
 804d2ad:	85 d2                	test   %edx,%edx
 804d2af:	89 95 44 ff ff ff    	mov    %edx,-0xbc(%ebp)
 804d2b5:	0f 89 b4 e2 ff ff    	jns    804b56f <_vfprintf_r+0x18f>
 804d2bb:	c7 85 44 ff ff ff ff 	movl   $0xffffffff,-0xbc(%ebp)
 804d2c2:	ff ff ff 
 804d2c5:	89 c8                	mov    %ecx,%eax
 804d2c7:	e9 81 e2 ff ff       	jmp    804b54d <_vfprintf_r+0x16d>
 804d2cc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 804d2d0:	8b 9d 44 ff ff ff    	mov    -0xbc(%ebp),%ebx
 804d2d6:	85 db                	test   %ebx,%ebx
 804d2d8:	75 4f                	jne    804d329 <_vfprintf_r+0x1f49>
 804d2da:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
 804d2e1:	75 46                	jne    804d329 <_vfprintf_r+0x1f49>
 804d2e3:	b8 01 00 00 00       	mov    $0x1,%eax
 804d2e8:	c7 85 38 ff ff ff 01 	movl   $0x1,-0xc8(%ebp)
 804d2ef:	00 00 00 
 804d2f2:	e9 14 f8 ff ff       	jmp    804cb0b <_vfprintf_r+0x172b>
 804d2f7:	90                   	nop
 804d2f8:	8b 85 4c ff ff ff    	mov    -0xb4(%ebp),%eax
 804d2fe:	83 e0 01             	and    $0x1,%eax
 804d301:	0f 85 b2 fd ff ff    	jne    804d0b9 <_vfprintf_r+0x1cd9>
 804d307:	85 d2                	test   %edx,%edx
 804d309:	0f 49 c2             	cmovns %edx,%eax
 804d30c:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
 804d313:	00 00 00 
 804d316:	e9 f0 f7 ff ff       	jmp    804cb0b <_vfprintf_r+0x172b>
 804d31b:	f7 d9                	neg    %ecx
 804d31d:	c6 85 66 ff ff ff 2d 	movb   $0x2d,-0x9a(%ebp)
 804d324:	e9 4a fd ff ff       	jmp    804d073 <_vfprintf_r+0x1c93>
 804d329:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
 804d32f:	31 c0                	xor    %eax,%eax
 804d331:	83 c2 02             	add    $0x2,%edx
 804d334:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
 804d33a:	0f 49 c2             	cmovns %edx,%eax
 804d33d:	e9 c9 f7 ff ff       	jmp    804cb0b <_vfprintf_r+0x172b>
 804d342:	8d 85 67 ff ff ff    	lea    -0x99(%ebp),%eax
 804d348:	e9 45 fd ff ff       	jmp    804d092 <_vfprintf_r+0x1cb2>
 804d34d:	8d 76 00             	lea    0x0(%esi),%esi

0804d350 <vfprintf>:
 804d350:	55                   	push   %ebp
 804d351:	89 e5                	mov    %esp,%ebp
 804d353:	83 ec 18             	sub    $0x18,%esp
 804d356:	e8 15 21 00 00       	call   804f470 <__getreent>
 804d35b:	8b 55 10             	mov    0x10(%ebp),%edx
 804d35e:	89 54 24 0c          	mov    %edx,0xc(%esp)
 804d362:	8b 55 0c             	mov    0xc(%ebp),%edx
 804d365:	89 04 24             	mov    %eax,(%esp)
 804d368:	89 54 24 08          	mov    %edx,0x8(%esp)
 804d36c:	8b 55 08             	mov    0x8(%ebp),%edx
 804d36f:	89 54 24 04          	mov    %edx,0x4(%esp)
 804d373:	e8 68 e0 ff ff       	call   804b3e0 <_vfprintf_r>
 804d378:	c9                   	leave  
 804d379:	c3                   	ret    
 804d37a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

0804d380 <__sbprintf>:
 804d380:	55                   	push   %ebp
 804d381:	89 e5                	mov    %esp,%ebp
 804d383:	57                   	push   %edi
 804d384:	89 c7                	mov    %eax,%edi
 804d386:	56                   	push   %esi
 804d387:	53                   	push   %ebx
 804d388:	89 d3                	mov    %edx,%ebx
 804d38a:	81 ec 9c 04 00 00    	sub    $0x49c,%esp
 804d390:	0f b7 42 0c          	movzwl 0xc(%edx),%eax
 804d394:	c7 85 88 fb ff ff 00 	movl   $0x400,-0x478(%ebp)
 804d39b:	04 00 00 
 804d39e:	c7 85 94 fb ff ff 00 	movl   $0x400,-0x46c(%ebp)
 804d3a5:	04 00 00 
 804d3a8:	c7 85 98 fb ff ff 00 	movl   $0x0,-0x468(%ebp)
 804d3af:	00 00 00 
 804d3b2:	83 e0 fd             	and    $0xfffffffd,%eax
 804d3b5:	66 89 85 8c fb ff ff 	mov    %ax,-0x474(%ebp)
 804d3bc:	8b 42 64             	mov    0x64(%edx),%eax
 804d3bf:	89 85 e4 fb ff ff    	mov    %eax,-0x41c(%ebp)
 804d3c5:	0f b7 42 0e          	movzwl 0xe(%edx),%eax
 804d3c9:	66 89 85 8e fb ff ff 	mov    %ax,-0x472(%ebp)
 804d3d0:	8b 42 1c             	mov    0x1c(%edx),%eax
 804d3d3:	89 85 9c fb ff ff    	mov    %eax,-0x464(%ebp)
 804d3d9:	8b 42 24             	mov    0x24(%edx),%eax
 804d3dc:	8d 95 80 fb ff ff    	lea    -0x480(%ebp),%edx
 804d3e2:	89 4c 24 08          	mov    %ecx,0x8(%esp)
 804d3e6:	89 54 24 04          	mov    %edx,0x4(%esp)
 804d3ea:	89 3c 24             	mov    %edi,(%esp)
 804d3ed:	89 85 a4 fb ff ff    	mov    %eax,-0x45c(%ebp)
 804d3f3:	8d 85 e8 fb ff ff    	lea    -0x418(%ebp),%eax
 804d3f9:	89 85 80 fb ff ff    	mov    %eax,-0x480(%ebp)
 804d3ff:	89 85 90 fb ff ff    	mov    %eax,-0x470(%ebp)
 804d405:	8b 45 08             	mov    0x8(%ebp),%eax
 804d408:	89 95 74 fb ff ff    	mov    %edx,-0x48c(%ebp)
 804d40e:	89 44 24 0c          	mov    %eax,0xc(%esp)
 804d412:	e8 c9 df ff ff       	call   804b3e0 <_vfprintf_r>
 804d417:	85 c0                	test   %eax,%eax
 804d419:	89 c6                	mov    %eax,%esi
 804d41b:	78 1c                	js     804d439 <__sbprintf+0xb9>
 804d41d:	8b 95 74 fb ff ff    	mov    -0x48c(%ebp),%edx
 804d423:	89 3c 24             	mov    %edi,(%esp)
 804d426:	89 54 24 04          	mov    %edx,0x4(%esp)
 804d42a:	e8 31 17 00 00       	call   804eb60 <_fflush_r>
 804d42f:	85 c0                	test   %eax,%eax
 804d431:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804d436:	0f 45 f0             	cmovne %eax,%esi
 804d439:	f6 85 8c fb ff ff 40 	testb  $0x40,-0x474(%ebp)
 804d440:	74 05                	je     804d447 <__sbprintf+0xc7>
 804d442:	66 83 4b 0c 40       	orw    $0x40,0xc(%ebx)
 804d447:	81 c4 9c 04 00 00    	add    $0x49c,%esp
 804d44d:	89 f0                	mov    %esi,%eax
 804d44f:	5b                   	pop    %ebx
 804d450:	5e                   	pop    %esi
 804d451:	5f                   	pop    %edi
 804d452:	5d                   	pop    %ebp
 804d453:	c3                   	ret    
 804d454:	66 90                	xchg   %ax,%ax
 804d456:	66 90                	xchg   %ax,%ax
 804d458:	66 90                	xchg   %ax,%ax
 804d45a:	66 90                	xchg   %ax,%ax
 804d45c:	66 90                	xchg   %ax,%ax
 804d45e:	66 90                	xchg   %ax,%ax

0804d460 <__swsetup_r>:
 804d460:	55                   	push   %ebp
 804d461:	89 e5                	mov    %esp,%ebp
 804d463:	53                   	push   %ebx
 804d464:	83 ec 14             	sub    $0x14,%esp
 804d467:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 804d46a:	e8 01 20 00 00       	call   804f470 <__getreent>
 804d46f:	85 c0                	test   %eax,%eax
 804d471:	74 0b                	je     804d47e <__swsetup_r+0x1e>
 804d473:	8b 50 38             	mov    0x38(%eax),%edx
 804d476:	85 d2                	test   %edx,%edx
 804d478:	0f 84 a2 00 00 00    	je     804d520 <__swsetup_r+0xc0>
 804d47e:	0f b7 43 0c          	movzwl 0xc(%ebx),%eax
 804d482:	a8 08                	test   $0x8,%al
 804d484:	74 2a                	je     804d4b0 <__swsetup_r+0x50>
 804d486:	8b 53 10             	mov    0x10(%ebx),%edx
 804d489:	85 d2                	test   %edx,%edx
 804d48b:	74 3d                	je     804d4ca <__swsetup_r+0x6a>
 804d48d:	a8 01                	test   $0x1,%al
 804d48f:	75 5f                	jne    804d4f0 <__swsetup_r+0x90>
 804d491:	31 c9                	xor    %ecx,%ecx
 804d493:	a8 02                	test   $0x2,%al
 804d495:	75 03                	jne    804d49a <__swsetup_r+0x3a>
 804d497:	8b 4b 14             	mov    0x14(%ebx),%ecx
 804d49a:	31 c0                	xor    %eax,%eax
 804d49c:	85 d2                	test   %edx,%edx
 804d49e:	89 4b 08             	mov    %ecx,0x8(%ebx)
 804d4a1:	74 62                	je     804d505 <__swsetup_r+0xa5>
 804d4a3:	83 c4 14             	add    $0x14,%esp
 804d4a6:	5b                   	pop    %ebx
 804d4a7:	5d                   	pop    %ebp
 804d4a8:	c3                   	ret    
 804d4a9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 804d4b0:	a8 10                	test   $0x10,%al
 804d4b2:	0f 84 b8 00 00 00    	je     804d570 <__swsetup_r+0x110>
 804d4b8:	a8 04                	test   $0x4,%al
 804d4ba:	75 74                	jne    804d530 <__swsetup_r+0xd0>
 804d4bc:	8b 53 10             	mov    0x10(%ebx),%edx
 804d4bf:	83 c8 08             	or     $0x8,%eax
 804d4c2:	85 d2                	test   %edx,%edx
 804d4c4:	66 89 43 0c          	mov    %ax,0xc(%ebx)
 804d4c8:	75 c3                	jne    804d48d <__swsetup_r+0x2d>
 804d4ca:	89 c1                	mov    %eax,%ecx
 804d4cc:	66 81 e1 80 02       	and    $0x280,%cx
 804d4d1:	66 81 f9 00 02       	cmp    $0x200,%cx
 804d4d6:	74 b5                	je     804d48d <__swsetup_r+0x2d>
 804d4d8:	8b 45 08             	mov    0x8(%ebp),%eax
 804d4db:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 804d4df:	89 04 24             	mov    %eax,(%esp)
 804d4e2:	e8 a9 20 00 00       	call   804f590 <__smakebuf_r>
 804d4e7:	0f b7 43 0c          	movzwl 0xc(%ebx),%eax
 804d4eb:	8b 53 10             	mov    0x10(%ebx),%edx
 804d4ee:	eb 9d                	jmp    804d48d <__swsetup_r+0x2d>
 804d4f0:	8b 43 14             	mov    0x14(%ebx),%eax
 804d4f3:	c7 43 08 00 00 00 00 	movl   $0x0,0x8(%ebx)
 804d4fa:	f7 d8                	neg    %eax
 804d4fc:	89 43 18             	mov    %eax,0x18(%ebx)
 804d4ff:	31 c0                	xor    %eax,%eax
 804d501:	85 d2                	test   %edx,%edx
 804d503:	75 9e                	jne    804d4a3 <__swsetup_r+0x43>
 804d505:	0f b7 53 0c          	movzwl 0xc(%ebx),%edx
 804d509:	f6 c2 80             	test   $0x80,%dl
 804d50c:	74 95                	je     804d4a3 <__swsetup_r+0x43>
 804d50e:	83 ca 40             	or     $0x40,%edx
 804d511:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804d516:	66 89 53 0c          	mov    %dx,0xc(%ebx)
 804d51a:	eb 87                	jmp    804d4a3 <__swsetup_r+0x43>
 804d51c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 804d520:	89 04 24             	mov    %eax,(%esp)
 804d523:	e8 a8 17 00 00       	call   804ecd0 <__sinit>
 804d528:	e9 51 ff ff ff       	jmp    804d47e <__swsetup_r+0x1e>
 804d52d:	8d 76 00             	lea    0x0(%esi),%esi
 804d530:	8b 53 30             	mov    0x30(%ebx),%edx
 804d533:	85 d2                	test   %edx,%edx
 804d535:	74 21                	je     804d558 <__swsetup_r+0xf8>
 804d537:	8d 4b 40             	lea    0x40(%ebx),%ecx
 804d53a:	39 ca                	cmp    %ecx,%edx
 804d53c:	74 13                	je     804d551 <__swsetup_r+0xf1>
 804d53e:	8b 45 08             	mov    0x8(%ebp),%eax
 804d541:	89 54 24 04          	mov    %edx,0x4(%esp)
 804d545:	89 04 24             	mov    %eax,(%esp)
 804d548:	e8 d3 1b 00 00       	call   804f120 <_free_r>
 804d54d:	0f b7 43 0c          	movzwl 0xc(%ebx),%eax
 804d551:	c7 43 30 00 00 00 00 	movl   $0x0,0x30(%ebx)
 804d558:	8b 53 10             	mov    0x10(%ebx),%edx
 804d55b:	83 e0 db             	and    $0xffffffdb,%eax
 804d55e:	c7 43 04 00 00 00 00 	movl   $0x0,0x4(%ebx)
 804d565:	89 13                	mov    %edx,(%ebx)
 804d567:	e9 53 ff ff ff       	jmp    804d4bf <__swsetup_r+0x5f>
 804d56c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 804d570:	8b 4d 08             	mov    0x8(%ebp),%ecx
 804d573:	83 c8 40             	or     $0x40,%eax
 804d576:	c7 01 09 00 00 00    	movl   $0x9,(%ecx)
 804d57c:	66 89 43 0c          	mov    %ax,0xc(%ebx)
 804d580:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804d585:	e9 19 ff ff ff       	jmp    804d4a3 <__swsetup_r+0x43>
 804d58a:	66 90                	xchg   %ax,%ax
 804d58c:	66 90                	xchg   %ax,%ax
 804d58e:	66 90                	xchg   %ax,%ax

0804d590 <quorem>:
 804d590:	55                   	push   %ebp
 804d591:	89 c1                	mov    %eax,%ecx
 804d593:	89 e5                	mov    %esp,%ebp
 804d595:	57                   	push   %edi
 804d596:	89 d7                	mov    %edx,%edi
 804d598:	56                   	push   %esi
 804d599:	53                   	push   %ebx
 804d59a:	83 ec 3c             	sub    $0x3c,%esp
 804d59d:	89 45 d0             	mov    %eax,-0x30(%ebp)
 804d5a0:	8b 42 10             	mov    0x10(%edx),%eax
 804d5a3:	3b 41 10             	cmp    0x10(%ecx),%eax
 804d5a6:	89 55 c8             	mov    %edx,-0x38(%ebp)
 804d5a9:	89 ca                	mov    %ecx,%edx
 804d5ab:	0f 8f 9f 01 00 00    	jg     804d750 <quorem+0x1c0>
 804d5b1:	83 e8 01             	sub    $0x1,%eax
 804d5b4:	83 c7 14             	add    $0x14,%edi
 804d5b7:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 804d5ba:	c1 e0 02             	shl    $0x2,%eax
 804d5bd:	83 c2 14             	add    $0x14,%edx
 804d5c0:	8d 1c 07             	lea    (%edi,%eax,1),%ebx
 804d5c3:	01 d0                	add    %edx,%eax
 804d5c5:	89 55 d8             	mov    %edx,-0x28(%ebp)
 804d5c8:	8b 13                	mov    (%ebx),%edx
 804d5ca:	89 45 c4             	mov    %eax,-0x3c(%ebp)
 804d5cd:	8b 00                	mov    (%eax),%eax
 804d5cf:	89 5d e4             	mov    %ebx,-0x1c(%ebp)
 804d5d2:	8d 4a 01             	lea    0x1(%edx),%ecx
 804d5d5:	31 d2                	xor    %edx,%edx
 804d5d7:	f7 f1                	div    %ecx
 804d5d9:	85 c0                	test   %eax,%eax
 804d5db:	89 45 e0             	mov    %eax,-0x20(%ebp)
 804d5de:	89 45 cc             	mov    %eax,-0x34(%ebp)
 804d5e1:	0f 84 b5 00 00 00    	je     804d69c <quorem+0x10c>
 804d5e7:	8b 45 d8             	mov    -0x28(%ebp),%eax
 804d5ea:	31 f6                	xor    %esi,%esi
 804d5ec:	89 fa                	mov    %edi,%edx
 804d5ee:	89 7d c0             	mov    %edi,-0x40(%ebp)
 804d5f1:	89 f7                	mov    %esi,%edi
 804d5f3:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%ebp)
 804d5fa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 804d600:	83 c2 04             	add    $0x4,%edx
 804d603:	8b 72 fc             	mov    -0x4(%edx),%esi
 804d606:	83 c0 04             	add    $0x4,%eax
 804d609:	0f b7 ce             	movzwl %si,%ecx
 804d60c:	0f af 4d e0          	imul   -0x20(%ebp),%ecx
 804d610:	03 4d dc             	add    -0x24(%ebp),%ecx
 804d613:	c1 ee 10             	shr    $0x10,%esi
 804d616:	0f af 75 e0          	imul   -0x20(%ebp),%esi
 804d61a:	89 cb                	mov    %ecx,%ebx
 804d61c:	0f b7 c9             	movzwl %cx,%ecx
 804d61f:	c1 eb 10             	shr    $0x10,%ebx
 804d622:	29 cf                	sub    %ecx,%edi
 804d624:	01 f3                	add    %esi,%ebx
 804d626:	89 de                	mov    %ebx,%esi
 804d628:	0f b7 db             	movzwl %bx,%ebx
 804d62b:	c1 ee 10             	shr    $0x10,%esi
 804d62e:	89 75 dc             	mov    %esi,-0x24(%ebp)
 804d631:	8b 70 fc             	mov    -0x4(%eax),%esi
 804d634:	0f b7 ce             	movzwl %si,%ecx
 804d637:	01 f9                	add    %edi,%ecx
 804d639:	c1 ee 10             	shr    $0x10,%esi
 804d63c:	29 de                	sub    %ebx,%esi
 804d63e:	89 cb                	mov    %ecx,%ebx
 804d640:	c1 fb 10             	sar    $0x10,%ebx
 804d643:	0f b7 c9             	movzwl %cx,%ecx
 804d646:	01 de                	add    %ebx,%esi
 804d648:	89 f7                	mov    %esi,%edi
 804d64a:	c1 e6 10             	shl    $0x10,%esi
 804d64d:	09 ce                	or     %ecx,%esi
 804d64f:	c1 ff 10             	sar    $0x10,%edi
 804d652:	39 55 e4             	cmp    %edx,-0x1c(%ebp)
 804d655:	89 70 fc             	mov    %esi,-0x4(%eax)
 804d658:	73 a6                	jae    804d600 <quorem+0x70>
 804d65a:	8b 45 c4             	mov    -0x3c(%ebp),%eax
 804d65d:	8b 7d c0             	mov    -0x40(%ebp),%edi
 804d660:	8b 10                	mov    (%eax),%edx
 804d662:	85 d2                	test   %edx,%edx
 804d664:	75 36                	jne    804d69c <quorem+0x10c>
 804d666:	8b 4d d8             	mov    -0x28(%ebp),%ecx
 804d669:	89 c2                	mov    %eax,%edx
 804d66b:	83 e8 04             	sub    $0x4,%eax
 804d66e:	39 c1                	cmp    %eax,%ecx
 804d670:	73 21                	jae    804d693 <quorem+0x103>
 804d672:	8b 72 fc             	mov    -0x4(%edx),%esi
 804d675:	85 f6                	test   %esi,%esi
 804d677:	75 1a                	jne    804d693 <quorem+0x103>
 804d679:	8b 55 d4             	mov    -0x2c(%ebp),%edx
 804d67c:	eb 08                	jmp    804d686 <quorem+0xf6>
 804d67e:	66 90                	xchg   %ax,%ax
 804d680:	8b 18                	mov    (%eax),%ebx
 804d682:	85 db                	test   %ebx,%ebx
 804d684:	75 0a                	jne    804d690 <quorem+0x100>
 804d686:	83 e8 04             	sub    $0x4,%eax
 804d689:	83 ea 01             	sub    $0x1,%edx
 804d68c:	39 c1                	cmp    %eax,%ecx
 804d68e:	72 f0                	jb     804d680 <quorem+0xf0>
 804d690:	89 55 d4             	mov    %edx,-0x2c(%ebp)
 804d693:	8b 45 d0             	mov    -0x30(%ebp),%eax
 804d696:	8b 55 d4             	mov    -0x2c(%ebp),%edx
 804d699:	89 50 10             	mov    %edx,0x10(%eax)
 804d69c:	8b 45 c8             	mov    -0x38(%ebp),%eax
 804d69f:	89 44 24 04          	mov    %eax,0x4(%esp)
 804d6a3:	8b 45 d0             	mov    -0x30(%ebp),%eax
 804d6a6:	89 04 24             	mov    %eax,(%esp)
 804d6a9:	e8 22 30 00 00       	call   80506d0 <__mcmp>
 804d6ae:	85 c0                	test   %eax,%eax
 804d6b0:	0f 88 8e 00 00 00    	js     804d744 <quorem+0x1b4>
 804d6b6:	8b 45 e0             	mov    -0x20(%ebp),%eax
 804d6b9:	31 f6                	xor    %esi,%esi
 804d6bb:	83 c0 01             	add    $0x1,%eax
 804d6be:	89 45 cc             	mov    %eax,-0x34(%ebp)
 804d6c1:	8b 45 d8             	mov    -0x28(%ebp),%eax
 804d6c4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 804d6c8:	83 c7 04             	add    $0x4,%edi
 804d6cb:	8b 4f fc             	mov    -0x4(%edi),%ecx
 804d6ce:	83 c0 04             	add    $0x4,%eax
 804d6d1:	8b 58 fc             	mov    -0x4(%eax),%ebx
 804d6d4:	0f b7 d1             	movzwl %cx,%edx
 804d6d7:	29 d6                	sub    %edx,%esi
 804d6d9:	0f b7 d3             	movzwl %bx,%edx
 804d6dc:	01 f2                	add    %esi,%edx
 804d6de:	c1 e9 10             	shr    $0x10,%ecx
 804d6e1:	c1 eb 10             	shr    $0x10,%ebx
 804d6e4:	29 cb                	sub    %ecx,%ebx
 804d6e6:	89 d1                	mov    %edx,%ecx
 804d6e8:	c1 f9 10             	sar    $0x10,%ecx
 804d6eb:	0f b7 d2             	movzwl %dx,%edx
 804d6ee:	01 cb                	add    %ecx,%ebx
 804d6f0:	89 de                	mov    %ebx,%esi
 804d6f2:	c1 e3 10             	shl    $0x10,%ebx
 804d6f5:	09 d3                	or     %edx,%ebx
 804d6f7:	c1 fe 10             	sar    $0x10,%esi
 804d6fa:	39 7d e4             	cmp    %edi,-0x1c(%ebp)
 804d6fd:	89 58 fc             	mov    %ebx,-0x4(%eax)
 804d700:	73 c6                	jae    804d6c8 <quorem+0x138>
 804d702:	8b 45 d8             	mov    -0x28(%ebp),%eax
 804d705:	8b 7d d4             	mov    -0x2c(%ebp),%edi
 804d708:	8d 14 b8             	lea    (%eax,%edi,4),%edx
 804d70b:	8b 02                	mov    (%edx),%eax
 804d70d:	85 c0                	test   %eax,%eax
 804d70f:	75 33                	jne    804d744 <quorem+0x1b4>
 804d711:	8b 4d d8             	mov    -0x28(%ebp),%ecx
 804d714:	8d 42 fc             	lea    -0x4(%edx),%eax
 804d717:	39 c1                	cmp    %eax,%ecx
 804d719:	73 20                	jae    804d73b <quorem+0x1ab>
 804d71b:	8b 72 fc             	mov    -0x4(%edx),%esi
 804d71e:	85 f6                	test   %esi,%esi
 804d720:	75 19                	jne    804d73b <quorem+0x1ab>
 804d722:	89 fa                	mov    %edi,%edx
 804d724:	eb 08                	jmp    804d72e <quorem+0x19e>
 804d726:	66 90                	xchg   %ax,%ax
 804d728:	8b 18                	mov    (%eax),%ebx
 804d72a:	85 db                	test   %ebx,%ebx
 804d72c:	75 0a                	jne    804d738 <quorem+0x1a8>
 804d72e:	83 e8 04             	sub    $0x4,%eax
 804d731:	83 ea 01             	sub    $0x1,%edx
 804d734:	39 c1                	cmp    %eax,%ecx
 804d736:	72 f0                	jb     804d728 <quorem+0x198>
 804d738:	89 55 d4             	mov    %edx,-0x2c(%ebp)
 804d73b:	8b 45 d0             	mov    -0x30(%ebp),%eax
 804d73e:	8b 7d d4             	mov    -0x2c(%ebp),%edi
 804d741:	89 78 10             	mov    %edi,0x10(%eax)
 804d744:	8b 45 cc             	mov    -0x34(%ebp),%eax
 804d747:	83 c4 3c             	add    $0x3c,%esp
 804d74a:	5b                   	pop    %ebx
 804d74b:	5e                   	pop    %esi
 804d74c:	5f                   	pop    %edi
 804d74d:	5d                   	pop    %ebp
 804d74e:	c3                   	ret    
 804d74f:	90                   	nop
 804d750:	83 c4 3c             	add    $0x3c,%esp
 804d753:	31 c0                	xor    %eax,%eax
 804d755:	5b                   	pop    %ebx
 804d756:	5e                   	pop    %esi
 804d757:	5f                   	pop    %edi
 804d758:	5d                   	pop    %ebp
 804d759:	c3                   	ret    
 804d75a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

0804d760 <_dtoa_r>:
 804d760:	55                   	push   %ebp
 804d761:	89 e5                	mov    %esp,%ebp
 804d763:	57                   	push   %edi
 804d764:	56                   	push   %esi
 804d765:	53                   	push   %ebx
 804d766:	81 ec 8c 00 00 00    	sub    $0x8c,%esp
 804d76c:	8b 75 08             	mov    0x8(%ebp),%esi
 804d76f:	dd 45 0c             	fldl   0xc(%ebp)
 804d772:	8b 5d 20             	mov    0x20(%ebp),%ebx
 804d775:	dd 5d c0             	fstpl  -0x40(%ebp)
 804d778:	8b 46 40             	mov    0x40(%esi),%eax
 804d77b:	85 c0                	test   %eax,%eax
 804d77d:	74 23                	je     804d7a2 <_dtoa_r+0x42>
 804d77f:	8b 4e 44             	mov    0x44(%esi),%ecx
 804d782:	ba 01 00 00 00       	mov    $0x1,%edx
 804d787:	d3 e2                	shl    %cl,%edx
 804d789:	89 48 04             	mov    %ecx,0x4(%eax)
 804d78c:	89 50 08             	mov    %edx,0x8(%eax)
 804d78f:	89 44 24 04          	mov    %eax,0x4(%esp)
 804d793:	89 34 24             	mov    %esi,(%esp)
 804d796:	e8 15 28 00 00       	call   804ffb0 <_Bfree>
 804d79b:	c7 46 40 00 00 00 00 	movl   $0x0,0x40(%esi)
 804d7a2:	8b 7d c4             	mov    -0x3c(%ebp),%edi
 804d7a5:	85 ff                	test   %edi,%edi
 804d7a7:	0f 88 3b 02 00 00    	js     804d9e8 <_dtoa_r+0x288>
 804d7ad:	c7 03 00 00 00 00    	movl   $0x0,(%ebx)
 804d7b3:	89 f8                	mov    %edi,%eax
 804d7b5:	25 00 00 f0 7f       	and    $0x7ff00000,%eax
 804d7ba:	3d 00 00 f0 7f       	cmp    $0x7ff00000,%eax
 804d7bf:	0f 84 e3 01 00 00    	je     804d9a8 <_dtoa_r+0x248>
 804d7c5:	dd 45 c0             	fldl   -0x40(%ebp)
 804d7c8:	d9 ee                	fldz   
 804d7ca:	d9 c9                	fxch   %st(1)
 804d7cc:	db e9                	fucomi %st(1),%st
 804d7ce:	dd d9                	fstp   %st(1)
 804d7d0:	7a 36                	jp     804d808 <_dtoa_r+0xa8>
 804d7d2:	75 34                	jne    804d808 <_dtoa_r+0xa8>
 804d7d4:	dd d8                	fstp   %st(0)
 804d7d6:	8b 4d 24             	mov    0x24(%ebp),%ecx
 804d7d9:	8b 45 1c             	mov    0x1c(%ebp),%eax
 804d7dc:	85 c9                	test   %ecx,%ecx
 804d7de:	c7 00 01 00 00 00    	movl   $0x1,(%eax)
 804d7e4:	0f 84 4e 02 00 00    	je     804da38 <_dtoa_r+0x2d8>
 804d7ea:	8b 45 24             	mov    0x24(%ebp),%eax
 804d7ed:	c7 00 3e 46 05 08    	movl   $0x805463e,(%eax)
 804d7f3:	b8 3d 46 05 08       	mov    $0x805463d,%eax
 804d7f8:	81 c4 8c 00 00 00    	add    $0x8c,%esp
 804d7fe:	5b                   	pop    %ebx
 804d7ff:	5e                   	pop    %esi
 804d800:	5f                   	pop    %edi
 804d801:	5d                   	pop    %ebp
 804d802:	c3                   	ret    
 804d803:	90                   	nop
 804d804:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 804d808:	8d 45 e0             	lea    -0x20(%ebp),%eax
 804d80b:	89 fb                	mov    %edi,%ebx
 804d80d:	89 44 24 10          	mov    %eax,0x10(%esp)
 804d811:	8d 45 e4             	lea    -0x1c(%ebp),%eax
 804d814:	dd 54 24 04          	fstl   0x4(%esp)
 804d818:	89 44 24 0c          	mov    %eax,0xc(%esp)
 804d81c:	dd 5d b8             	fstpl  -0x48(%ebp)
 804d81f:	89 34 24             	mov    %esi,(%esp)
 804d822:	c1 eb 14             	shr    $0x14,%ebx
 804d825:	e8 f6 31 00 00       	call   8050a20 <__d2b>
 804d82a:	85 db                	test   %ebx,%ebx
 804d82c:	89 45 a4             	mov    %eax,-0x5c(%ebp)
 804d82f:	0f 85 db 01 00 00    	jne    804da10 <_dtoa_r+0x2b0>
 804d835:	8b 45 e0             	mov    -0x20(%ebp),%eax
 804d838:	8b 5d e4             	mov    -0x1c(%ebp),%ebx
 804d83b:	89 45 b4             	mov    %eax,-0x4c(%ebp)
 804d83e:	01 c3                	add    %eax,%ebx
 804d840:	81 fb ef fb ff ff    	cmp    $0xfffffbef,%ebx
 804d846:	0f 8c ec 07 00 00    	jl     804e038 <_dtoa_r+0x8d8>
 804d84c:	8b 55 c0             	mov    -0x40(%ebp),%edx
 804d84f:	b9 0e fc ff ff       	mov    $0xfffffc0e,%ecx
 804d854:	89 f8                	mov    %edi,%eax
 804d856:	29 d9                	sub    %ebx,%ecx
 804d858:	d3 e0                	shl    %cl,%eax
 804d85a:	8d 8b 12 04 00 00    	lea    0x412(%ebx),%ecx
 804d860:	d3 ea                	shr    %cl,%edx
 804d862:	09 d0                	or     %edx,%eax
 804d864:	31 d2                	xor    %edx,%edx
 804d866:	83 eb 01             	sub    $0x1,%ebx
 804d869:	89 55 cc             	mov    %edx,-0x34(%ebp)
 804d86c:	8b 55 b4             	mov    -0x4c(%ebp),%edx
 804d86f:	89 45 c8             	mov    %eax,-0x38(%ebp)
 804d872:	df 6d c8             	fildll -0x38(%ebp)
 804d875:	dd 5d b8             	fstpl  -0x48(%ebp)
 804d878:	81 6d bc 00 00 f0 01 	subl   $0x1f00000,-0x44(%ebp)
 804d87f:	c7 45 8c 01 00 00 00 	movl   $0x1,-0x74(%ebp)
 804d886:	dd 45 b8             	fldl   -0x48(%ebp)
 804d889:	d8 25 20 4c 05 08    	fsubs  0x8054c20
 804d88f:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 804d892:	d9 7d d2             	fnstcw -0x2e(%ebp)
 804d895:	dc 0d 38 4c 05 08    	fmull  0x8054c38
 804d89b:	0f b7 45 d2          	movzwl -0x2e(%ebp),%eax
 804d89f:	b4 0c                	mov    $0xc,%ah
 804d8a1:	dc 05 40 4c 05 08    	faddl  0x8054c40
 804d8a7:	66 89 45 d0          	mov    %ax,-0x30(%ebp)
 804d8ab:	db 45 d4             	fildl  -0x2c(%ebp)
 804d8ae:	dc 0d 48 4c 05 08    	fmull  0x8054c48
 804d8b4:	de c1                	faddp  %st,%st(1)
 804d8b6:	d9 6d d0             	fldcw  -0x30(%ebp)
 804d8b9:	db 55 b8             	fistl  -0x48(%ebp)
 804d8bc:	d9 6d d2             	fldcw  -0x2e(%ebp)
 804d8bf:	d9 ee                	fldz   
 804d8c1:	df e9                	fucomip %st(1),%st
 804d8c3:	0f 87 27 07 00 00    	ja     804dff0 <_dtoa_r+0x890>
 804d8c9:	dd d8                	fstp   %st(0)
 804d8cb:	83 7d b8 16          	cmpl   $0x16,-0x48(%ebp)
 804d8cf:	c7 45 9c 01 00 00 00 	movl   $0x1,-0x64(%ebp)
 804d8d6:	77 24                	ja     804d8fc <_dtoa_r+0x19c>
 804d8d8:	8b 45 b8             	mov    -0x48(%ebp),%eax
 804d8db:	dd 04 c5 00 4d 05 08 	fldl   0x8054d00(,%eax,8)
 804d8e2:	dd 45 c0             	fldl   -0x40(%ebp)
 804d8e5:	d9 c9                	fxch   %st(1)
 804d8e7:	df e9                	fucomip %st(1),%st
 804d8e9:	dd d8                	fstp   %st(0)
 804d8eb:	0f 86 5f 07 00 00    	jbe    804e050 <_dtoa_r+0x8f0>
 804d8f1:	83 6d b8 01          	subl   $0x1,-0x48(%ebp)
 804d8f5:	c7 45 9c 00 00 00 00 	movl   $0x0,-0x64(%ebp)
 804d8fc:	89 d0                	mov    %edx,%eax
 804d8fe:	29 d8                	sub    %ebx,%eax
 804d900:	83 e8 01             	sub    $0x1,%eax
 804d903:	c7 45 a0 00 00 00 00 	movl   $0x0,-0x60(%ebp)
 804d90a:	89 45 ac             	mov    %eax,-0x54(%ebp)
 804d90d:	0f 88 0d 07 00 00    	js     804e020 <_dtoa_r+0x8c0>
 804d913:	8b 45 b8             	mov    -0x48(%ebp),%eax
 804d916:	85 c0                	test   %eax,%eax
 804d918:	0f 88 ea 06 00 00    	js     804e008 <_dtoa_r+0x8a8>
 804d91e:	01 45 ac             	add    %eax,-0x54(%ebp)
 804d921:	89 45 94             	mov    %eax,-0x6c(%ebp)
 804d924:	c7 45 b0 00 00 00 00 	movl   $0x0,-0x50(%ebp)
 804d92b:	83 7d 14 09          	cmpl   $0x9,0x14(%ebp)
 804d92f:	0f 87 0b 03 00 00    	ja     804dc40 <_dtoa_r+0x4e0>
 804d935:	83 7d 14 05          	cmpl   $0x5,0x14(%ebp)
 804d939:	0f 8e 23 10 00 00    	jle    804e962 <_dtoa_r+0x1202>
 804d93f:	83 6d 14 04          	subl   $0x4,0x14(%ebp)
 804d943:	31 c0                	xor    %eax,%eax
 804d945:	83 7d 14 03          	cmpl   $0x3,0x14(%ebp)
 804d949:	0f 84 43 0d 00 00    	je     804e692 <_dtoa_r+0xf32>
 804d94f:	0f 8e f3 00 00 00    	jle    804da48 <_dtoa_r+0x2e8>
 804d955:	83 7d 14 04          	cmpl   $0x4,0x14(%ebp)
 804d959:	c7 45 98 01 00 00 00 	movl   $0x1,-0x68(%ebp)
 804d960:	0f 84 f3 00 00 00    	je     804da59 <_dtoa_r+0x2f9>
 804d966:	83 7d 14 05          	cmpl   $0x5,0x14(%ebp)
 804d96a:	0f 85 d7 02 00 00    	jne    804dc47 <_dtoa_r+0x4e7>
 804d970:	8b 5d b8             	mov    -0x48(%ebp),%ebx
 804d973:	03 5d 18             	add    0x18(%ebp),%ebx
 804d976:	89 5d 90             	mov    %ebx,-0x70(%ebp)
 804d979:	83 c3 01             	add    $0x1,%ebx
 804d97c:	83 fb 0e             	cmp    $0xe,%ebx
 804d97f:	0f 96 c2             	setbe  %dl
 804d982:	85 db                	test   %ebx,%ebx
 804d984:	89 5d a8             	mov    %ebx,-0x58(%ebp)
 804d987:	0f 8e a7 08 00 00    	jle    804e234 <_dtoa_r+0xad4>
 804d98d:	8b 5d a8             	mov    -0x58(%ebp),%ebx
 804d990:	83 fb 0e             	cmp    $0xe,%ebx
 804d993:	89 df                	mov    %ebx,%edi
 804d995:	0f 96 45 b4          	setbe  -0x4c(%ebp)
 804d999:	20 45 b4             	and    %al,-0x4c(%ebp)
 804d99c:	e9 d6 00 00 00       	jmp    804da77 <_dtoa_r+0x317>
 804d9a1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 804d9a8:	8b 55 c0             	mov    -0x40(%ebp),%edx
 804d9ab:	8b 45 1c             	mov    0x1c(%ebp),%eax
 804d9ae:	85 d2                	test   %edx,%edx
 804d9b0:	c7 00 0f 27 00 00    	movl   $0x270f,(%eax)
 804d9b6:	b8 19 4c 05 08       	mov    $0x8054c19,%eax
 804d9bb:	74 43                	je     804da00 <_dtoa_r+0x2a0>
 804d9bd:	8b 5d 24             	mov    0x24(%ebp),%ebx
 804d9c0:	85 db                	test   %ebx,%ebx
 804d9c2:	0f 84 30 fe ff ff    	je     804d7f8 <_dtoa_r+0x98>
 804d9c8:	8b 75 24             	mov    0x24(%ebp),%esi
 804d9cb:	8d 50 08             	lea    0x8(%eax),%edx
 804d9ce:	80 78 03 00          	cmpb   $0x0,0x3(%eax)
 804d9d2:	8d 48 03             	lea    0x3(%eax),%ecx
 804d9d5:	0f 44 d1             	cmove  %ecx,%edx
 804d9d8:	89 16                	mov    %edx,(%esi)
 804d9da:	81 c4 8c 00 00 00    	add    $0x8c,%esp
 804d9e0:	5b                   	pop    %ebx
 804d9e1:	5e                   	pop    %esi
 804d9e2:	5f                   	pop    %edi
 804d9e3:	5d                   	pop    %ebp
 804d9e4:	c3                   	ret    
 804d9e5:	8d 76 00             	lea    0x0(%esi),%esi
 804d9e8:	81 e7 ff ff ff 7f    	and    $0x7fffffff,%edi
 804d9ee:	c7 03 01 00 00 00    	movl   $0x1,(%ebx)
 804d9f4:	89 7d c4             	mov    %edi,-0x3c(%ebp)
 804d9f7:	e9 b7 fd ff ff       	jmp    804d7b3 <_dtoa_r+0x53>
 804d9fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 804da00:	81 e7 ff ff 0f 00    	and    $0xfffff,%edi
 804da06:	ba 10 4c 05 08       	mov    $0x8054c10,%edx
 804da0b:	0f 44 c2             	cmove  %edx,%eax
 804da0e:	eb ad                	jmp    804d9bd <_dtoa_r+0x25d>
 804da10:	8b 45 bc             	mov    -0x44(%ebp),%eax
 804da13:	81 eb ff 03 00 00    	sub    $0x3ff,%ebx
 804da19:	8b 55 e0             	mov    -0x20(%ebp),%edx
 804da1c:	c7 45 8c 00 00 00 00 	movl   $0x0,-0x74(%ebp)
 804da23:	25 ff ff 0f 00       	and    $0xfffff,%eax
 804da28:	0d 00 00 f0 3f       	or     $0x3ff00000,%eax
 804da2d:	89 45 bc             	mov    %eax,-0x44(%ebp)
 804da30:	e9 51 fe ff ff       	jmp    804d886 <_dtoa_r+0x126>
 804da35:	8d 76 00             	lea    0x0(%esi),%esi
 804da38:	b8 3d 46 05 08       	mov    $0x805463d,%eax
 804da3d:	e9 b6 fd ff ff       	jmp    804d7f8 <_dtoa_r+0x98>
 804da42:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 804da48:	83 7d 14 02          	cmpl   $0x2,0x14(%ebp)
 804da4c:	c7 45 98 00 00 00 00 	movl   $0x0,-0x68(%ebp)
 804da53:	0f 85 ee 01 00 00    	jne    804dc47 <_dtoa_r+0x4e7>
 804da59:	8b 55 18             	mov    0x18(%ebp),%edx
 804da5c:	85 d2                	test   %edx,%edx
 804da5e:	0f 8e b6 07 00 00    	jle    804e21a <_dtoa_r+0xaba>
 804da64:	8b 7d 18             	mov    0x18(%ebp),%edi
 804da67:	83 ff 0e             	cmp    $0xe,%edi
 804da6a:	0f 96 45 b4          	setbe  -0x4c(%ebp)
 804da6e:	20 45 b4             	and    %al,-0x4c(%ebp)
 804da71:	89 7d 90             	mov    %edi,-0x70(%ebp)
 804da74:	89 7d a8             	mov    %edi,-0x58(%ebp)
 804da77:	83 ff 17             	cmp    $0x17,%edi
 804da7a:	c7 46 44 00 00 00 00 	movl   $0x0,0x44(%esi)
 804da81:	0f 86 e5 0e 00 00    	jbe    804e96c <_dtoa_r+0x120c>
 804da87:	b9 01 00 00 00       	mov    $0x1,%ecx
 804da8c:	b8 04 00 00 00       	mov    $0x4,%eax
 804da91:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 804da98:	01 c0                	add    %eax,%eax
 804da9a:	89 ca                	mov    %ecx,%edx
 804da9c:	8d 58 14             	lea    0x14(%eax),%ebx
 804da9f:	39 fb                	cmp    %edi,%ebx
 804daa1:	8d 49 01             	lea    0x1(%ecx),%ecx
 804daa4:	76 f2                	jbe    804da98 <_dtoa_r+0x338>
 804daa6:	89 56 44             	mov    %edx,0x44(%esi)
 804daa9:	89 54 24 04          	mov    %edx,0x4(%esp)
 804daad:	89 34 24             	mov    %esi,(%esp)
 804dab0:	e8 5b 24 00 00       	call   804ff10 <_Balloc>
 804dab5:	80 7d b4 00          	cmpb   $0x0,-0x4c(%ebp)
 804dab9:	89 c7                	mov    %eax,%edi
 804dabb:	89 46 40             	mov    %eax,0x40(%esi)
 804dabe:	0f 84 bb 01 00 00    	je     804dc7f <_dtoa_r+0x51f>
 804dac4:	8b 5d b8             	mov    -0x48(%ebp),%ebx
 804dac7:	dd 45 c0             	fldl   -0x40(%ebp)
 804daca:	85 db                	test   %ebx,%ebx
 804dacc:	0f 8e de 07 00 00    	jle    804e2b0 <_dtoa_r+0xb50>
 804dad2:	89 d8                	mov    %ebx,%eax
 804dad4:	83 e0 0f             	and    $0xf,%eax
 804dad7:	dd 04 c5 00 4d 05 08 	fldl   0x8054d00(,%eax,8)
 804dade:	89 d8                	mov    %ebx,%eax
 804dae0:	c1 f8 04             	sar    $0x4,%eax
 804dae3:	a8 10                	test   $0x10,%al
 804dae5:	0f 84 cd 05 00 00    	je     804e0b8 <_dtoa_r+0x958>
 804daeb:	dd 05 e0 4c 05 08    	fldl   0x8054ce0
 804daf1:	83 e0 0f             	and    $0xf,%eax
 804daf4:	b9 03 00 00 00       	mov    $0x3,%ecx
 804daf9:	d8 fa                	fdivr  %st(2),%st
 804dafb:	85 c0                	test   %eax,%eax
 804dafd:	74 22                	je     804db21 <_dtoa_r+0x3c1>
 804daff:	31 d2                	xor    %edx,%edx
 804db01:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 804db08:	a8 01                	test   $0x1,%al
 804db0a:	74 0e                	je     804db1a <_dtoa_r+0x3ba>
 804db0c:	d9 c9                	fxch   %st(1)
 804db0e:	dc 0c d5 c0 4c 05 08 	fmull  0x8054cc0(,%edx,8)
 804db15:	d9 c9                	fxch   %st(1)
 804db17:	83 c1 01             	add    $0x1,%ecx
 804db1a:	83 c2 01             	add    $0x1,%edx
 804db1d:	d1 f8                	sar    %eax
 804db1f:	75 e7                	jne    804db08 <_dtoa_r+0x3a8>
 804db21:	de f1                	fdivp  %st,%st(1)
 804db23:	8b 45 9c             	mov    -0x64(%ebp),%eax
 804db26:	85 c0                	test   %eax,%eax
 804db28:	74 0a                	je     804db34 <_dtoa_r+0x3d4>
 804db2a:	d9 e8                	fld1   
 804db2c:	df e9                	fucomip %st(1),%st
 804db2e:	0f 87 92 0b 00 00    	ja     804e6c6 <_dtoa_r+0xf66>
 804db34:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
 804db37:	8b 45 a8             	mov    -0x58(%ebp),%eax
 804db3a:	db 45 d4             	fildl  -0x2c(%ebp)
 804db3d:	d8 c9                	fmul   %st(1),%st
 804db3f:	d8 05 2c 4c 05 08    	fadds  0x8054c2c
 804db45:	dd 5d c0             	fstpl  -0x40(%ebp)
 804db48:	81 6d c4 00 00 40 03 	subl   $0x3400000,-0x3c(%ebp)
 804db4f:	85 c0                	test   %eax,%eax
 804db51:	0f 84 89 05 00 00    	je     804e0e0 <_dtoa_r+0x980>
 804db57:	8b 45 b8             	mov    -0x48(%ebp),%eax
 804db5a:	8b 4d a8             	mov    -0x58(%ebp),%ecx
 804db5d:	89 45 b4             	mov    %eax,-0x4c(%ebp)
 804db60:	8b 45 98             	mov    -0x68(%ebp),%eax
 804db63:	85 c0                	test   %eax,%eax
 804db65:	0f 84 b5 07 00 00    	je     804e320 <_dtoa_r+0xbc0>
 804db6b:	d9 05 34 4c 05 08    	flds   0x8054c34
 804db71:	8d 57 01             	lea    0x1(%edi),%edx
 804db74:	dc 34 cd f8 4c 05 08 	fdivl  0x8054cf8(,%ecx,8)
 804db7b:	d9 7d d2             	fnstcw -0x2e(%ebp)
 804db7e:	0f b7 45 d2          	movzwl -0x2e(%ebp),%eax
 804db82:	b4 0c                	mov    $0xc,%ah
 804db84:	66 89 45 d0          	mov    %ax,-0x30(%ebp)
 804db88:	dc 65 c0             	fsubl  -0x40(%ebp)
 804db8b:	d9 c9                	fxch   %st(1)
 804db8d:	d9 6d d0             	fldcw  -0x30(%ebp)
 804db90:	db 55 d4             	fistl  -0x2c(%ebp)
 804db93:	d9 6d d2             	fldcw  -0x2e(%ebp)
 804db96:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 804db99:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 804db9c:	83 c0 30             	add    $0x30,%eax
 804db9f:	db 45 d4             	fildl  -0x2c(%ebp)
 804dba2:	de e9                	fsubrp %st,%st(1)
 804dba4:	d9 c9                	fxch   %st(1)
 804dba6:	88 07                	mov    %al,(%edi)
 804dba8:	db e9                	fucomi %st(1),%st
 804dbaa:	77 7f                	ja     804dc2b <_dtoa_r+0x4cb>
 804dbac:	d9 c1                	fld    %st(1)
 804dbae:	d8 2d 24 4c 05 08    	fsubrs 0x8054c24
 804dbb4:	d9 c9                	fxch   %st(1)
 804dbb6:	db e9                	fucomi %st(1),%st
 804dbb8:	dd d9                	fstp   %st(1)
 804dbba:	0f 87 33 0c 00 00    	ja     804e7f3 <_dtoa_r+0x1093>
 804dbc0:	83 f9 01             	cmp    $0x1,%ecx
 804dbc3:	0f 8e c4 06 00 00    	jle    804e28d <_dtoa_r+0xb2d>
 804dbc9:	01 f9                	add    %edi,%ecx
 804dbcb:	d9 05 28 4c 05 08    	flds   0x8054c28
 804dbd1:	eb 25                	jmp    804dbf8 <_dtoa_r+0x498>
 804dbd3:	90                   	nop
 804dbd4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 804dbd8:	d9 c1                	fld    %st(1)
 804dbda:	d8 2d 24 4c 05 08    	fsubrs 0x8054c24
 804dbe0:	d9 c9                	fxch   %st(1)
 804dbe2:	db e9                	fucomi %st(1),%st
 804dbe4:	dd d9                	fstp   %st(1)
 804dbe6:	0f 87 14 0c 00 00    	ja     804e800 <_dtoa_r+0x10a0>
 804dbec:	39 ca                	cmp    %ecx,%edx
 804dbee:	0f 84 a4 06 00 00    	je     804e298 <_dtoa_r+0xb38>
 804dbf4:	d9 c9                	fxch   %st(1)
 804dbf6:	d9 ca                	fxch   %st(2)
 804dbf8:	dc c9                	fmul   %st,%st(1)
 804dbfa:	83 c2 01             	add    $0x1,%edx
 804dbfd:	dc ca                	fmul   %st,%st(2)
 804dbff:	d9 ca                	fxch   %st(2)
 804dc01:	d9 6d d0             	fldcw  -0x30(%ebp)
 804dc04:	db 55 d4             	fistl  -0x2c(%ebp)
 804dc07:	d9 6d d2             	fldcw  -0x2e(%ebp)
 804dc0a:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 804dc0d:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 804dc10:	83 c0 30             	add    $0x30,%eax
 804dc13:	db 45 d4             	fildl  -0x2c(%ebp)
 804dc16:	de e9                	fsubrp %st,%st(1)
 804dc18:	d9 c9                	fxch   %st(1)
 804dc1a:	88 42 ff             	mov    %al,-0x1(%edx)
 804dc1d:	db e9                	fucomi %st(1),%st
 804dc1f:	76 b7                	jbe    804dbd8 <_dtoa_r+0x478>
 804dc21:	dd d8                	fstp   %st(0)
 804dc23:	dd d8                	fstp   %st(0)
 804dc25:	dd d8                	fstp   %st(0)
 804dc27:	dd d8                	fstp   %st(0)
 804dc29:	eb 06                	jmp    804dc31 <_dtoa_r+0x4d1>
 804dc2b:	dd d8                	fstp   %st(0)
 804dc2d:	dd d8                	fstp   %st(0)
 804dc2f:	dd d8                	fstp   %st(0)
 804dc31:	8b 45 b4             	mov    -0x4c(%ebp),%eax
 804dc34:	89 fb                	mov    %edi,%ebx
 804dc36:	89 d7                	mov    %edx,%edi
 804dc38:	89 45 b8             	mov    %eax,-0x48(%ebp)
 804dc3b:	e9 70 03 00 00       	jmp    804dfb0 <_dtoa_r+0x850>
 804dc40:	c7 45 14 00 00 00 00 	movl   $0x0,0x14(%ebp)
 804dc47:	c7 46 44 00 00 00 00 	movl   $0x0,0x44(%esi)
 804dc4e:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 804dc55:	00 
 804dc56:	89 34 24             	mov    %esi,(%esp)
 804dc59:	e8 b2 22 00 00       	call   804ff10 <_Balloc>
 804dc5e:	c7 45 98 01 00 00 00 	movl   $0x1,-0x68(%ebp)
 804dc65:	c7 45 a8 ff ff ff ff 	movl   $0xffffffff,-0x58(%ebp)
 804dc6c:	c7 45 90 ff ff ff ff 	movl   $0xffffffff,-0x70(%ebp)
 804dc73:	c7 45 18 00 00 00 00 	movl   $0x0,0x18(%ebp)
 804dc7a:	89 c7                	mov    %eax,%edi
 804dc7c:	89 46 40             	mov    %eax,0x40(%esi)
 804dc7f:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 804dc82:	85 c0                	test   %eax,%eax
 804dc84:	0f 88 2e 01 00 00    	js     804ddb8 <_dtoa_r+0x658>
 804dc8a:	83 7d b8 0e          	cmpl   $0xe,-0x48(%ebp)
 804dc8e:	0f 8f 24 01 00 00    	jg     804ddb8 <_dtoa_r+0x658>
 804dc94:	8b 45 b8             	mov    -0x48(%ebp),%eax
 804dc97:	dd 04 c5 00 4d 05 08 	fldl   0x8054d00(,%eax,8)
 804dc9e:	8b 45 a8             	mov    -0x58(%ebp),%eax
 804dca1:	85 c0                	test   %eax,%eax
 804dca3:	7f 0e                	jg     804dcb3 <_dtoa_r+0x553>
 804dca5:	8b 45 18             	mov    0x18(%ebp),%eax
 804dca8:	c1 e8 1f             	shr    $0x1f,%eax
 804dcab:	84 c0                	test   %al,%al
 804dcad:	0f 85 9d 07 00 00    	jne    804e450 <_dtoa_r+0xcf0>
 804dcb3:	dd 45 c0             	fldl   -0x40(%ebp)
 804dcb6:	d9 c0                	fld    %st(0)
 804dcb8:	d8 f2                	fdiv   %st(2),%st
 804dcba:	d9 7d d2             	fnstcw -0x2e(%ebp)
 804dcbd:	83 7d a8 01          	cmpl   $0x1,-0x58(%ebp)
 804dcc1:	0f b7 45 d2          	movzwl -0x2e(%ebp),%eax
 804dcc5:	b4 0c                	mov    $0xc,%ah
 804dcc7:	66 89 45 d0          	mov    %ax,-0x30(%ebp)
 804dccb:	8d 47 01             	lea    0x1(%edi),%eax
 804dcce:	89 45 c0             	mov    %eax,-0x40(%ebp)
 804dcd1:	d9 6d d0             	fldcw  -0x30(%ebp)
 804dcd4:	db 5d d4             	fistpl -0x2c(%ebp)
 804dcd7:	d9 6d d2             	fldcw  -0x2e(%ebp)
 804dcda:	8b 55 d4             	mov    -0x2c(%ebp),%edx
 804dcdd:	89 55 d4             	mov    %edx,-0x2c(%ebp)
 804dce0:	8d 42 30             	lea    0x30(%edx),%eax
 804dce3:	db 45 d4             	fildl  -0x2c(%ebp)
 804dce6:	d8 ca                	fmul   %st(2),%st
 804dce8:	88 07                	mov    %al,(%edi)
 804dcea:	de e9                	fsubrp %st,%st(1)
 804dcec:	74 66                	je     804dd54 <_dtoa_r+0x5f4>
 804dcee:	d8 0d 28 4c 05 08    	fmuls  0x8054c28
 804dcf4:	d9 ee                	fldz   
 804dcf6:	d9 c9                	fxch   %st(1)
 804dcf8:	db e9                	fucomi %st(1),%st
 804dcfa:	dd d9                	fstp   %st(1)
 804dcfc:	0f 8b 33 0c 00 00    	jnp    804e935 <_dtoa_r+0x11d5>
 804dd02:	8b 5d a8             	mov    -0x58(%ebp),%ebx
 804dd05:	8d 47 02             	lea    0x2(%edi),%eax
 804dd08:	d9 05 28 4c 05 08    	flds   0x8054c28
 804dd0e:	01 fb                	add    %edi,%ebx
 804dd10:	eb 19                	jmp    804dd2b <_dtoa_r+0x5cb>
 804dd12:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 804dd18:	dc c9                	fmul   %st,%st(1)
 804dd1a:	83 c0 01             	add    $0x1,%eax
 804dd1d:	d9 ee                	fldz   
 804dd1f:	d9 ca                	fxch   %st(2)
 804dd21:	db ea                	fucomi %st(2),%st
 804dd23:	dd da                	fstp   %st(2)
 804dd25:	0f 8b 73 09 00 00    	jnp    804e69e <_dtoa_r+0xf3e>
 804dd2b:	d9 c1                	fld    %st(1)
 804dd2d:	39 d8                	cmp    %ebx,%eax
 804dd2f:	d8 f3                	fdiv   %st(3),%st
 804dd31:	89 45 c0             	mov    %eax,-0x40(%ebp)
 804dd34:	d9 6d d0             	fldcw  -0x30(%ebp)
 804dd37:	db 5d d4             	fistpl -0x2c(%ebp)
 804dd3a:	d9 6d d2             	fldcw  -0x2e(%ebp)
 804dd3d:	8b 55 d4             	mov    -0x2c(%ebp),%edx
 804dd40:	89 55 d4             	mov    %edx,-0x2c(%ebp)
 804dd43:	8d 4a 30             	lea    0x30(%edx),%ecx
 804dd46:	db 45 d4             	fildl  -0x2c(%ebp)
 804dd49:	d8 cb                	fmul   %st(3),%st
 804dd4b:	88 48 ff             	mov    %cl,-0x1(%eax)
 804dd4e:	de ea                	fsubrp %st,%st(2)
 804dd50:	75 c6                	jne    804dd18 <_dtoa_r+0x5b8>
 804dd52:	dd d8                	fstp   %st(0)
 804dd54:	d8 c0                	fadd   %st(0),%st
 804dd56:	db e9                	fucomi %st(1),%st
 804dd58:	77 1e                	ja     804dd78 <_dtoa_r+0x618>
 804dd5a:	d9 c9                	fxch   %st(1)
 804dd5c:	df e9                	fucomip %st(1),%st
 804dd5e:	dd d8                	fstp   %st(0)
 804dd60:	0f 8a 44 09 00 00    	jp     804e6aa <_dtoa_r+0xf4a>
 804dd66:	0f 85 3e 09 00 00    	jne    804e6aa <_dtoa_r+0xf4a>
 804dd6c:	83 e2 01             	and    $0x1,%edx
 804dd6f:	90                   	nop
 804dd70:	0f 84 34 09 00 00    	je     804e6aa <_dtoa_r+0xf4a>
 804dd76:	eb 04                	jmp    804dd7c <_dtoa_r+0x61c>
 804dd78:	dd d8                	fstp   %st(0)
 804dd7a:	dd d8                	fstp   %st(0)
 804dd7c:	8b 4d c0             	mov    -0x40(%ebp),%ecx
 804dd7f:	89 fb                	mov    %edi,%ebx
 804dd81:	0f b6 41 ff          	movzbl -0x1(%ecx),%eax
 804dd85:	89 cf                	mov    %ecx,%edi
 804dd87:	8b 4d b8             	mov    -0x48(%ebp),%ecx
 804dd8a:	89 4d b4             	mov    %ecx,-0x4c(%ebp)
 804dd8d:	eb 0f                	jmp    804dd9e <_dtoa_r+0x63e>
 804dd8f:	90                   	nop
 804dd90:	39 d3                	cmp    %edx,%ebx
 804dd92:	0f 84 75 09 00 00    	je     804e70d <_dtoa_r+0xfad>
 804dd98:	0f b6 42 ff          	movzbl -0x1(%edx),%eax
 804dd9c:	89 d7                	mov    %edx,%edi
 804dd9e:	3c 39                	cmp    $0x39,%al
 804dda0:	8d 57 ff             	lea    -0x1(%edi),%edx
 804dda3:	74 eb                	je     804dd90 <_dtoa_r+0x630>
 804dda5:	8b 4d b4             	mov    -0x4c(%ebp),%ecx
 804dda8:	83 c0 01             	add    $0x1,%eax
 804ddab:	88 02                	mov    %al,(%edx)
 804ddad:	89 4d b8             	mov    %ecx,-0x48(%ebp)
 804ddb0:	e9 fb 01 00 00       	jmp    804dfb0 <_dtoa_r+0x850>
 804ddb5:	8d 76 00             	lea    0x0(%esi),%esi
 804ddb8:	8b 4d 98             	mov    -0x68(%ebp),%ecx
 804ddbb:	85 c9                	test   %ecx,%ecx
 804ddbd:	0f 85 9d 02 00 00    	jne    804e060 <_dtoa_r+0x900>
 804ddc3:	8b 55 b0             	mov    -0x50(%ebp),%edx
 804ddc6:	8b 5d a0             	mov    -0x60(%ebp),%ebx
 804ddc9:	c7 45 b4 00 00 00 00 	movl   $0x0,-0x4c(%ebp)
 804ddd0:	8b 45 ac             	mov    -0x54(%ebp),%eax
 804ddd3:	85 c0                	test   %eax,%eax
 804ddd5:	7e 14                	jle    804ddeb <_dtoa_r+0x68b>
 804ddd7:	85 db                	test   %ebx,%ebx
 804ddd9:	7e 10                	jle    804ddeb <_dtoa_r+0x68b>
 804dddb:	8b 45 ac             	mov    -0x54(%ebp),%eax
 804ddde:	39 d8                	cmp    %ebx,%eax
 804dde0:	0f 4f c3             	cmovg  %ebx,%eax
 804dde3:	29 45 a0             	sub    %eax,-0x60(%ebp)
 804dde6:	29 c3                	sub    %eax,%ebx
 804dde8:	29 45 ac             	sub    %eax,-0x54(%ebp)
 804ddeb:	8b 45 b0             	mov    -0x50(%ebp),%eax
 804ddee:	85 c0                	test   %eax,%eax
 804ddf0:	7e 61                	jle    804de53 <_dtoa_r+0x6f3>
 804ddf2:	8b 45 98             	mov    -0x68(%ebp),%eax
 804ddf5:	85 c0                	test   %eax,%eax
 804ddf7:	0f 84 72 04 00 00    	je     804e26f <_dtoa_r+0xb0f>
 804ddfd:	85 d2                	test   %edx,%edx
 804ddff:	7e 47                	jle    804de48 <_dtoa_r+0x6e8>
 804de01:	8b 45 b4             	mov    -0x4c(%ebp),%eax
 804de04:	89 54 24 08          	mov    %edx,0x8(%esp)
 804de08:	89 34 24             	mov    %esi,(%esp)
 804de0b:	89 55 88             	mov    %edx,-0x78(%ebp)
 804de0e:	89 44 24 04          	mov    %eax,0x4(%esp)
 804de12:	e8 79 26 00 00       	call   8050490 <__pow5mult>
 804de17:	8b 4d a4             	mov    -0x5c(%ebp),%ecx
 804de1a:	89 34 24             	mov    %esi,(%esp)
 804de1d:	89 4c 24 08          	mov    %ecx,0x8(%esp)
 804de21:	89 44 24 04          	mov    %eax,0x4(%esp)
 804de25:	89 45 b4             	mov    %eax,-0x4c(%ebp)
 804de28:	e8 93 24 00 00       	call   80502c0 <__multiply>
 804de2d:	8b 4d a4             	mov    -0x5c(%ebp),%ecx
 804de30:	89 34 24             	mov    %esi,(%esp)
 804de33:	89 4c 24 04          	mov    %ecx,0x4(%esp)
 804de37:	89 45 8c             	mov    %eax,-0x74(%ebp)
 804de3a:	e8 71 21 00 00       	call   804ffb0 <_Bfree>
 804de3f:	8b 45 8c             	mov    -0x74(%ebp),%eax
 804de42:	8b 55 88             	mov    -0x78(%ebp),%edx
 804de45:	89 45 a4             	mov    %eax,-0x5c(%ebp)
 804de48:	8b 45 b0             	mov    -0x50(%ebp),%eax
 804de4b:	29 d0                	sub    %edx,%eax
 804de4d:	0f 85 1f 04 00 00    	jne    804e272 <_dtoa_r+0xb12>
 804de53:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
 804de5a:	00 
 804de5b:	89 34 24             	mov    %esi,(%esp)
 804de5e:	e8 2d 24 00 00       	call   8050290 <__i2b>
 804de63:	8b 4d 94             	mov    -0x6c(%ebp),%ecx
 804de66:	85 c9                	test   %ecx,%ecx
 804de68:	89 45 b0             	mov    %eax,-0x50(%ebp)
 804de6b:	7e 13                	jle    804de80 <_dtoa_r+0x720>
 804de6d:	89 4c 24 08          	mov    %ecx,0x8(%esp)
 804de71:	89 44 24 04          	mov    %eax,0x4(%esp)
 804de75:	89 34 24             	mov    %esi,(%esp)
 804de78:	e8 13 26 00 00       	call   8050490 <__pow5mult>
 804de7d:	89 45 b0             	mov    %eax,-0x50(%ebp)
 804de80:	83 7d 14 01          	cmpl   $0x1,0x14(%ebp)
 804de84:	c7 45 8c 00 00 00 00 	movl   $0x0,-0x74(%ebp)
 804de8b:	0f 8e f7 05 00 00    	jle    804e488 <_dtoa_r+0xd28>
 804de91:	8b 45 94             	mov    -0x6c(%ebp),%eax
 804de94:	ba 01 00 00 00       	mov    $0x1,%edx
 804de99:	85 c0                	test   %eax,%eax
 804de9b:	0f 85 27 05 00 00    	jne    804e3c8 <_dtoa_r+0xc68>
 804dea1:	8b 45 ac             	mov    -0x54(%ebp),%eax
 804dea4:	01 d0                	add    %edx,%eax
 804dea6:	83 e0 1f             	and    $0x1f,%eax
 804dea9:	89 c2                	mov    %eax,%edx
 804deab:	0f 84 57 03 00 00    	je     804e208 <_dtoa_r+0xaa8>
 804deb1:	b8 20 00 00 00       	mov    $0x20,%eax
 804deb6:	29 d0                	sub    %edx,%eax
 804deb8:	83 f8 04             	cmp    $0x4,%eax
 804debb:	0f 8e 8c 0a 00 00    	jle    804e94d <_dtoa_r+0x11ed>
 804dec1:	b8 1c 00 00 00       	mov    $0x1c,%eax
 804dec6:	29 d0                	sub    %edx,%eax
 804dec8:	01 45 a0             	add    %eax,-0x60(%ebp)
 804decb:	01 c3                	add    %eax,%ebx
 804decd:	01 45 ac             	add    %eax,-0x54(%ebp)
 804ded0:	8b 45 a0             	mov    -0x60(%ebp),%eax
 804ded3:	85 c0                	test   %eax,%eax
 804ded5:	7e 16                	jle    804deed <_dtoa_r+0x78d>
 804ded7:	89 44 24 08          	mov    %eax,0x8(%esp)
 804dedb:	8b 45 a4             	mov    -0x5c(%ebp),%eax
 804dede:	89 34 24             	mov    %esi,(%esp)
 804dee1:	89 44 24 04          	mov    %eax,0x4(%esp)
 804dee5:	e8 c6 26 00 00       	call   80505b0 <__lshift>
 804deea:	89 45 a4             	mov    %eax,-0x5c(%ebp)
 804deed:	8b 45 ac             	mov    -0x54(%ebp),%eax
 804def0:	85 c0                	test   %eax,%eax
 804def2:	7e 16                	jle    804df0a <_dtoa_r+0x7aa>
 804def4:	89 44 24 08          	mov    %eax,0x8(%esp)
 804def8:	8b 45 b0             	mov    -0x50(%ebp),%eax
 804defb:	89 34 24             	mov    %esi,(%esp)
 804defe:	89 44 24 04          	mov    %eax,0x4(%esp)
 804df02:	e8 a9 26 00 00       	call   80505b0 <__lshift>
 804df07:	89 45 b0             	mov    %eax,-0x50(%ebp)
 804df0a:	8b 45 9c             	mov    -0x64(%ebp),%eax
 804df0d:	85 c0                	test   %eax,%eax
 804df0f:	0f 85 d3 04 00 00    	jne    804e3e8 <_dtoa_r+0xc88>
 804df15:	83 7d 14 02          	cmpl   $0x2,0x14(%ebp)
 804df19:	0f 8e 11 02 00 00    	jle    804e130 <_dtoa_r+0x9d0>
 804df1f:	8b 45 a8             	mov    -0x58(%ebp),%eax
 804df22:	85 c0                	test   %eax,%eax
 804df24:	0f 8f 06 02 00 00    	jg     804e130 <_dtoa_r+0x9d0>
 804df2a:	8b 45 a8             	mov    -0x58(%ebp),%eax
 804df2d:	85 c0                	test   %eax,%eax
 804df2f:	0f 85 e0 01 00 00    	jne    804e115 <_dtoa_r+0x9b5>
 804df35:	8b 45 b0             	mov    -0x50(%ebp),%eax
 804df38:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
 804df3f:	00 
 804df40:	c7 44 24 08 05 00 00 	movl   $0x5,0x8(%esp)
 804df47:	00 
 804df48:	89 34 24             	mov    %esi,(%esp)
 804df4b:	89 44 24 04          	mov    %eax,0x4(%esp)
 804df4f:	e8 7c 20 00 00       	call   804ffd0 <__multadd>
 804df54:	89 45 b0             	mov    %eax,-0x50(%ebp)
 804df57:	89 44 24 04          	mov    %eax,0x4(%esp)
 804df5b:	8b 45 a4             	mov    -0x5c(%ebp),%eax
 804df5e:	89 04 24             	mov    %eax,(%esp)
 804df61:	e8 6a 27 00 00       	call   80506d0 <__mcmp>
 804df66:	85 c0                	test   %eax,%eax
 804df68:	0f 8e a7 01 00 00    	jle    804e115 <_dtoa_r+0x9b5>
 804df6e:	83 45 b8 01          	addl   $0x1,-0x48(%ebp)
 804df72:	89 fb                	mov    %edi,%ebx
 804df74:	83 c7 01             	add    $0x1,%edi
 804df77:	c6 47 ff 31          	movb   $0x31,-0x1(%edi)
 804df7b:	c7 45 c0 00 00 00 00 	movl   $0x0,-0x40(%ebp)
 804df82:	8b 45 b0             	mov    -0x50(%ebp),%eax
 804df85:	89 34 24             	mov    %esi,(%esp)
 804df88:	89 44 24 04          	mov    %eax,0x4(%esp)
 804df8c:	e8 1f 20 00 00       	call   804ffb0 <_Bfree>
 804df91:	8b 45 b4             	mov    -0x4c(%ebp),%eax
 804df94:	85 c0                	test   %eax,%eax
 804df96:	74 18                	je     804dfb0 <_dtoa_r+0x850>
 804df98:	39 45 c0             	cmp    %eax,-0x40(%ebp)
 804df9b:	0f 85 a7 02 00 00    	jne    804e248 <_dtoa_r+0xae8>
 804dfa1:	8b 45 b4             	mov    -0x4c(%ebp),%eax
 804dfa4:	89 34 24             	mov    %esi,(%esp)
 804dfa7:	89 44 24 04          	mov    %eax,0x4(%esp)
 804dfab:	e8 00 20 00 00       	call   804ffb0 <_Bfree>
 804dfb0:	8b 45 a4             	mov    -0x5c(%ebp),%eax
 804dfb3:	89 34 24             	mov    %esi,(%esp)
 804dfb6:	89 44 24 04          	mov    %eax,0x4(%esp)
 804dfba:	e8 f1 1f 00 00       	call   804ffb0 <_Bfree>
 804dfbf:	8b 45 b8             	mov    -0x48(%ebp),%eax
 804dfc2:	8b 75 1c             	mov    0x1c(%ebp),%esi
 804dfc5:	c6 07 00             	movb   $0x0,(%edi)
 804dfc8:	83 c0 01             	add    $0x1,%eax
 804dfcb:	89 06                	mov    %eax,(%esi)
 804dfcd:	8b 45 24             	mov    0x24(%ebp),%eax
 804dfd0:	85 c0                	test   %eax,%eax
 804dfd2:	0f 84 90 02 00 00    	je     804e268 <_dtoa_r+0xb08>
 804dfd8:	8b 45 24             	mov    0x24(%ebp),%eax
 804dfdb:	89 38                	mov    %edi,(%eax)
 804dfdd:	81 c4 8c 00 00 00    	add    $0x8c,%esp
 804dfe3:	89 d8                	mov    %ebx,%eax
 804dfe5:	5b                   	pop    %ebx
 804dfe6:	5e                   	pop    %esi
 804dfe7:	5f                   	pop    %edi
 804dfe8:	5d                   	pop    %ebp
 804dfe9:	c3                   	ret    
 804dfea:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 804dff0:	db 45 b8             	fildl  -0x48(%ebp)
 804dff3:	df e9                	fucomip %st(1),%st
 804dff5:	dd d8                	fstp   %st(0)
 804dff7:	7a 06                	jp     804dfff <_dtoa_r+0x89f>
 804dff9:	0f 84 cc f8 ff ff    	je     804d8cb <_dtoa_r+0x16b>
 804dfff:	83 6d b8 01          	subl   $0x1,-0x48(%ebp)
 804e003:	e9 c3 f8 ff ff       	jmp    804d8cb <_dtoa_r+0x16b>
 804e008:	8b 45 b8             	mov    -0x48(%ebp),%eax
 804e00b:	29 45 a0             	sub    %eax,-0x60(%ebp)
 804e00e:	c7 45 94 00 00 00 00 	movl   $0x0,-0x6c(%ebp)
 804e015:	f7 d8                	neg    %eax
 804e017:	89 45 b0             	mov    %eax,-0x50(%ebp)
 804e01a:	e9 0c f9 ff ff       	jmp    804d92b <_dtoa_r+0x1cb>
 804e01f:	90                   	nop
 804e020:	f7 d8                	neg    %eax
 804e022:	89 45 a0             	mov    %eax,-0x60(%ebp)
 804e025:	c7 45 ac 00 00 00 00 	movl   $0x0,-0x54(%ebp)
 804e02c:	e9 e2 f8 ff ff       	jmp    804d913 <_dtoa_r+0x1b3>
 804e031:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 804e038:	8b 45 c0             	mov    -0x40(%ebp),%eax
 804e03b:	b9 ee fb ff ff       	mov    $0xfffffbee,%ecx
 804e040:	29 d9                	sub    %ebx,%ecx
 804e042:	d3 e0                	shl    %cl,%eax
 804e044:	e9 1b f8 ff ff       	jmp    804d864 <_dtoa_r+0x104>
 804e049:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 804e050:	c7 45 9c 00 00 00 00 	movl   $0x0,-0x64(%ebp)
 804e057:	e9 a0 f8 ff ff       	jmp    804d8fc <_dtoa_r+0x19c>
 804e05c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 804e060:	83 7d 14 01          	cmpl   $0x1,0x14(%ebp)
 804e064:	0f 8e fe 06 00 00    	jle    804e768 <_dtoa_r+0x1008>
 804e06a:	8b 45 a8             	mov    -0x58(%ebp),%eax
 804e06d:	83 e8 01             	sub    $0x1,%eax
 804e070:	39 45 b0             	cmp    %eax,-0x50(%ebp)
 804e073:	0f 8c 3b 06 00 00    	jl     804e6b4 <_dtoa_r+0xf54>
 804e079:	8b 55 b0             	mov    -0x50(%ebp),%edx
 804e07c:	29 c2                	sub    %eax,%edx
 804e07e:	8b 4d a8             	mov    -0x58(%ebp),%ecx
 804e081:	8b 5d a0             	mov    -0x60(%ebp),%ebx
 804e084:	85 c9                	test   %ecx,%ecx
 804e086:	89 c8                	mov    %ecx,%eax
 804e088:	0f 88 83 07 00 00    	js     804e811 <_dtoa_r+0x10b1>
 804e08e:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
 804e095:	00 
 804e096:	89 34 24             	mov    %esi,(%esp)
 804e099:	89 55 8c             	mov    %edx,-0x74(%ebp)
 804e09c:	01 45 a0             	add    %eax,-0x60(%ebp)
 804e09f:	01 45 ac             	add    %eax,-0x54(%ebp)
 804e0a2:	e8 e9 21 00 00       	call   8050290 <__i2b>
 804e0a7:	8b 55 8c             	mov    -0x74(%ebp),%edx
 804e0aa:	89 45 b4             	mov    %eax,-0x4c(%ebp)
 804e0ad:	e9 1e fd ff ff       	jmp    804ddd0 <_dtoa_r+0x670>
 804e0b2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 804e0b8:	d9 c1                	fld    %st(1)
 804e0ba:	b9 02 00 00 00       	mov    $0x2,%ecx
 804e0bf:	e9 37 fa ff ff       	jmp    804dafb <_dtoa_r+0x39b>
 804e0c4:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
 804e0c7:	db 45 d4             	fildl  -0x2c(%ebp)
 804e0ca:	d8 c9                	fmul   %st(1),%st
 804e0cc:	d8 05 2c 4c 05 08    	fadds  0x8054c2c
 804e0d2:	dd 5d c0             	fstpl  -0x40(%ebp)
 804e0d5:	81 6d c4 00 00 40 03 	subl   $0x3400000,-0x3c(%ebp)
 804e0dc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 804e0e0:	d8 25 30 4c 05 08    	fsubs  0x8054c30
 804e0e6:	dd 45 c0             	fldl   -0x40(%ebp)
 804e0e9:	d9 c9                	fxch   %st(1)
 804e0eb:	db e9                	fucomi %st(1),%st
 804e0ed:	0f 87 0d 02 00 00    	ja     804e300 <_dtoa_r+0xba0>
 804e0f3:	d9 c9                	fxch   %st(1)
 804e0f5:	d9 e0                	fchs   
 804e0f7:	df e9                	fucomip %st(1),%st
 804e0f9:	dd d8                	fstp   %st(0)
 804e0fb:	0f 86 a7 01 00 00    	jbe    804e2a8 <_dtoa_r+0xb48>
 804e101:	dd d8                	fstp   %st(0)
 804e103:	eb 02                	jmp    804e107 <_dtoa_r+0x9a7>
 804e105:	dd d8                	fstp   %st(0)
 804e107:	c7 45 b0 00 00 00 00 	movl   $0x0,-0x50(%ebp)
 804e10e:	c7 45 b4 00 00 00 00 	movl   $0x0,-0x4c(%ebp)
 804e115:	8b 45 18             	mov    0x18(%ebp),%eax
 804e118:	89 fb                	mov    %edi,%ebx
 804e11a:	c7 45 c0 00 00 00 00 	movl   $0x0,-0x40(%ebp)
 804e121:	f7 d0                	not    %eax
 804e123:	89 45 b8             	mov    %eax,-0x48(%ebp)
 804e126:	e9 57 fe ff ff       	jmp    804df82 <_dtoa_r+0x822>
 804e12b:	90                   	nop
 804e12c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 804e130:	8b 45 98             	mov    -0x68(%ebp),%eax
 804e133:	85 c0                	test   %eax,%eax
 804e135:	0f 85 c5 03 00 00    	jne    804e500 <_dtoa_r+0xda0>
 804e13b:	89 75 08             	mov    %esi,0x8(%ebp)
 804e13e:	bb 01 00 00 00       	mov    $0x1,%ebx
 804e143:	8b 75 a4             	mov    -0x5c(%ebp),%esi
 804e146:	eb 24                	jmp    804e16c <_dtoa_r+0xa0c>
 804e148:	8b 45 08             	mov    0x8(%ebp),%eax
 804e14b:	83 c3 01             	add    $0x1,%ebx
 804e14e:	89 74 24 04          	mov    %esi,0x4(%esp)
 804e152:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
 804e159:	00 
 804e15a:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
 804e161:	00 
 804e162:	89 04 24             	mov    %eax,(%esp)
 804e165:	e8 66 1e 00 00       	call   804ffd0 <__multadd>
 804e16a:	89 c6                	mov    %eax,%esi
 804e16c:	8b 55 b0             	mov    -0x50(%ebp),%edx
 804e16f:	89 f0                	mov    %esi,%eax
 804e171:	e8 1a f4 ff ff       	call   804d590 <quorem>
 804e176:	83 c0 30             	add    $0x30,%eax
 804e179:	3b 5d a8             	cmp    -0x58(%ebp),%ebx
 804e17c:	88 44 1f ff          	mov    %al,-0x1(%edi,%ebx,1)
 804e180:	7c c6                	jl     804e148 <_dtoa_r+0x9e8>
 804e182:	89 45 a0             	mov    %eax,-0x60(%ebp)
 804e185:	8b 45 a8             	mov    -0x58(%ebp),%eax
 804e188:	ba 01 00 00 00       	mov    $0x1,%edx
 804e18d:	89 75 a4             	mov    %esi,-0x5c(%ebp)
 804e190:	8b 75 08             	mov    0x8(%ebp),%esi
 804e193:	c7 45 c0 00 00 00 00 	movl   $0x0,-0x40(%ebp)
 804e19a:	85 c0                	test   %eax,%eax
 804e19c:	0f 4f d0             	cmovg  %eax,%edx
 804e19f:	01 fa                	add    %edi,%edx
 804e1a1:	8b 45 a4             	mov    -0x5c(%ebp),%eax
 804e1a4:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 804e1ab:	00 
 804e1ac:	89 34 24             	mov    %esi,(%esp)
 804e1af:	89 55 ac             	mov    %edx,-0x54(%ebp)
 804e1b2:	89 44 24 04          	mov    %eax,0x4(%esp)
 804e1b6:	e8 f5 23 00 00       	call   80505b0 <__lshift>
 804e1bb:	8b 5d b0             	mov    -0x50(%ebp),%ebx
 804e1be:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 804e1c2:	89 04 24             	mov    %eax,(%esp)
 804e1c5:	89 45 a4             	mov    %eax,-0x5c(%ebp)
 804e1c8:	e8 03 25 00 00       	call   80506d0 <__mcmp>
 804e1cd:	8b 55 ac             	mov    -0x54(%ebp),%edx
 804e1d0:	83 f8 00             	cmp    $0x0,%eax
 804e1d3:	0f 8e 41 06 00 00    	jle    804e81a <_dtoa_r+0x10ba>
 804e1d9:	0f b6 4a ff          	movzbl -0x1(%edx),%ecx
 804e1dd:	eb 0f                	jmp    804e1ee <_dtoa_r+0xa8e>
 804e1df:	90                   	nop
 804e1e0:	39 c7                	cmp    %eax,%edi
 804e1e2:	0f 84 70 05 00 00    	je     804e758 <_dtoa_r+0xff8>
 804e1e8:	0f b6 48 ff          	movzbl -0x1(%eax),%ecx
 804e1ec:	89 c2                	mov    %eax,%edx
 804e1ee:	80 f9 39             	cmp    $0x39,%cl
 804e1f1:	8d 42 ff             	lea    -0x1(%edx),%eax
 804e1f4:	74 ea                	je     804e1e0 <_dtoa_r+0xa80>
 804e1f6:	83 c1 01             	add    $0x1,%ecx
 804e1f9:	89 fb                	mov    %edi,%ebx
 804e1fb:	88 08                	mov    %cl,(%eax)
 804e1fd:	89 d7                	mov    %edx,%edi
 804e1ff:	e9 7e fd ff ff       	jmp    804df82 <_dtoa_r+0x822>
 804e204:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 804e208:	b8 1c 00 00 00       	mov    $0x1c,%eax
 804e20d:	01 45 a0             	add    %eax,-0x60(%ebp)
 804e210:	01 c3                	add    %eax,%ebx
 804e212:	01 45 ac             	add    %eax,-0x54(%ebp)
 804e215:	e9 b6 fc ff ff       	jmp    804ded0 <_dtoa_r+0x770>
 804e21a:	ba 01 00 00 00       	mov    $0x1,%edx
 804e21f:	c7 45 90 01 00 00 00 	movl   $0x1,-0x70(%ebp)
 804e226:	c7 45 a8 01 00 00 00 	movl   $0x1,-0x58(%ebp)
 804e22d:	c7 45 18 01 00 00 00 	movl   $0x1,0x18(%ebp)
 804e234:	21 c2                	and    %eax,%edx
 804e236:	88 55 b4             	mov    %dl,-0x4c(%ebp)
 804e239:	31 d2                	xor    %edx,%edx
 804e23b:	c7 46 44 00 00 00 00 	movl   $0x0,0x44(%esi)
 804e242:	e9 62 f8 ff ff       	jmp    804daa9 <_dtoa_r+0x349>
 804e247:	90                   	nop
 804e248:	8b 55 c0             	mov    -0x40(%ebp),%edx
 804e24b:	85 d2                	test   %edx,%edx
 804e24d:	0f 84 4e fd ff ff    	je     804dfa1 <_dtoa_r+0x841>
 804e253:	8b 45 c0             	mov    -0x40(%ebp),%eax
 804e256:	89 34 24             	mov    %esi,(%esp)
 804e259:	89 44 24 04          	mov    %eax,0x4(%esp)
 804e25d:	e8 4e 1d 00 00       	call   804ffb0 <_Bfree>
 804e262:	e9 3a fd ff ff       	jmp    804dfa1 <_dtoa_r+0x841>
 804e267:	90                   	nop
 804e268:	89 d8                	mov    %ebx,%eax
 804e26a:	e9 89 f5 ff ff       	jmp    804d7f8 <_dtoa_r+0x98>
 804e26f:	8b 45 b0             	mov    -0x50(%ebp),%eax
 804e272:	89 44 24 08          	mov    %eax,0x8(%esp)
 804e276:	8b 45 a4             	mov    -0x5c(%ebp),%eax
 804e279:	89 34 24             	mov    %esi,(%esp)
 804e27c:	89 44 24 04          	mov    %eax,0x4(%esp)
 804e280:	e8 0b 22 00 00       	call   8050490 <__pow5mult>
 804e285:	89 45 a4             	mov    %eax,-0x5c(%ebp)
 804e288:	e9 c6 fb ff ff       	jmp    804de53 <_dtoa_r+0x6f3>
 804e28d:	dd d8                	fstp   %st(0)
 804e28f:	dd d8                	fstp   %st(0)
 804e291:	eb 15                	jmp    804e2a8 <_dtoa_r+0xb48>
 804e293:	90                   	nop
 804e294:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 804e298:	dd d8                	fstp   %st(0)
 804e29a:	dd d8                	fstp   %st(0)
 804e29c:	dd d8                	fstp   %st(0)
 804e29e:	eb 08                	jmp    804e2a8 <_dtoa_r+0xb48>
 804e2a0:	dd d8                	fstp   %st(0)
 804e2a2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 804e2a8:	dd 5d c0             	fstpl  -0x40(%ebp)
 804e2ab:	e9 cf f9 ff ff       	jmp    804dc7f <_dtoa_r+0x51f>
 804e2b0:	8b 45 b8             	mov    -0x48(%ebp),%eax
 804e2b3:	f7 d8                	neg    %eax
 804e2b5:	0f 84 6a 04 00 00    	je     804e725 <_dtoa_r+0xfc5>
 804e2bb:	89 c2                	mov    %eax,%edx
 804e2bd:	b9 02 00 00 00       	mov    $0x2,%ecx
 804e2c2:	83 e2 0f             	and    $0xf,%edx
 804e2c5:	c1 f8 04             	sar    $0x4,%eax
 804e2c8:	dd 04 d5 00 4d 05 08 	fldl   0x8054d00(,%edx,8)
 804e2cf:	85 c0                	test   %eax,%eax
 804e2d1:	d8 c9                	fmul   %st(1),%st
 804e2d3:	0f 84 4a f8 ff ff    	je     804db23 <_dtoa_r+0x3c3>
 804e2d9:	31 d2                	xor    %edx,%edx
 804e2db:	90                   	nop
 804e2dc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 804e2e0:	a8 01                	test   $0x1,%al
 804e2e2:	74 0a                	je     804e2ee <_dtoa_r+0xb8e>
 804e2e4:	dc 0c d5 c0 4c 05 08 	fmull  0x8054cc0(,%edx,8)
 804e2eb:	83 c1 01             	add    $0x1,%ecx
 804e2ee:	83 c2 01             	add    $0x1,%edx
 804e2f1:	d1 f8                	sar    %eax
 804e2f3:	75 eb                	jne    804e2e0 <_dtoa_r+0xb80>
 804e2f5:	e9 29 f8 ff ff       	jmp    804db23 <_dtoa_r+0x3c3>
 804e2fa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 804e300:	dd d8                	fstp   %st(0)
 804e302:	dd d8                	fstp   %st(0)
 804e304:	dd d8                	fstp   %st(0)
 804e306:	c7 45 b0 00 00 00 00 	movl   $0x0,-0x50(%ebp)
 804e30d:	c7 45 b4 00 00 00 00 	movl   $0x0,-0x4c(%ebp)
 804e314:	e9 55 fc ff ff       	jmp    804df6e <_dtoa_r+0x80e>
 804e319:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 804e320:	d9 7d d2             	fnstcw -0x2e(%ebp)
 804e323:	8d 41 ff             	lea    -0x1(%ecx),%eax
 804e326:	dd 45 c0             	fldl   -0x40(%ebp)
 804e329:	dc 0c c5 00 4d 05 08 	fmull  0x8054d00(,%eax,8)
 804e330:	d9 c9                	fxch   %st(1)
 804e332:	89 45 88             	mov    %eax,-0x78(%ebp)
 804e335:	0f b7 45 d2          	movzwl -0x2e(%ebp),%eax
 804e339:	8d 57 01             	lea    0x1(%edi),%edx
 804e33c:	8d 1c 0f             	lea    (%edi,%ecx,1),%ebx
 804e33f:	b4 0c                	mov    $0xc,%ah
 804e341:	66 89 45 d0          	mov    %ax,-0x30(%ebp)
 804e345:	d9 6d d0             	fldcw  -0x30(%ebp)
 804e348:	db 55 d4             	fistl  -0x2c(%ebp)
 804e34b:	d9 6d d2             	fldcw  -0x2e(%ebp)
 804e34e:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 804e351:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 804e354:	83 c0 30             	add    $0x30,%eax
 804e357:	83 f9 01             	cmp    $0x1,%ecx
 804e35a:	db 45 d4             	fildl  -0x2c(%ebp)
 804e35d:	de e9                	fsubrp %st,%st(1)
 804e35f:	88 07                	mov    %al,(%edi)
 804e361:	89 d0                	mov    %edx,%eax
 804e363:	74 37                	je     804e39c <_dtoa_r+0xc3c>
 804e365:	d9 05 28 4c 05 08    	flds   0x8054c28
 804e36b:	eb 05                	jmp    804e372 <_dtoa_r+0xc12>
 804e36d:	8d 76 00             	lea    0x0(%esi),%esi
 804e370:	d9 c9                	fxch   %st(1)
 804e372:	dc c9                	fmul   %st,%st(1)
 804e374:	d9 c9                	fxch   %st(1)
 804e376:	83 c0 01             	add    $0x1,%eax
 804e379:	d9 6d d0             	fldcw  -0x30(%ebp)
 804e37c:	db 55 d4             	fistl  -0x2c(%ebp)
 804e37f:	d9 6d d2             	fldcw  -0x2e(%ebp)
 804e382:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
 804e385:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
 804e388:	83 c1 30             	add    $0x30,%ecx
 804e38b:	39 d8                	cmp    %ebx,%eax
 804e38d:	db 45 d4             	fildl  -0x2c(%ebp)
 804e390:	de e9                	fsubrp %st,%st(1)
 804e392:	88 48 ff             	mov    %cl,-0x1(%eax)
 804e395:	75 d9                	jne    804e370 <_dtoa_r+0xc10>
 804e397:	dd d9                	fstp   %st(1)
 804e399:	03 55 88             	add    -0x78(%ebp),%edx
 804e39c:	d9 05 34 4c 05 08    	flds   0x8054c34
 804e3a2:	d9 c2                	fld    %st(2)
 804e3a4:	d8 c1                	fadd   %st(1),%st
 804e3a6:	d9 ca                	fxch   %st(2)
 804e3a8:	db ea                	fucomi %st(2),%st
 804e3aa:	dd da                	fstp   %st(2)
 804e3ac:	0f 86 7f 03 00 00    	jbe    804e731 <_dtoa_r+0xfd1>
 804e3b2:	dd d8                	fstp   %st(0)
 804e3b4:	dd d8                	fstp   %st(0)
 804e3b6:	dd d8                	fstp   %st(0)
 804e3b8:	dd d8                	fstp   %st(0)
 804e3ba:	89 fb                	mov    %edi,%ebx
 804e3bc:	0f b6 42 ff          	movzbl -0x1(%edx),%eax
 804e3c0:	89 d7                	mov    %edx,%edi
 804e3c2:	e9 d7 f9 ff ff       	jmp    804dd9e <_dtoa_r+0x63e>
 804e3c7:	90                   	nop
 804e3c8:	8b 4d b0             	mov    -0x50(%ebp),%ecx
 804e3cb:	8b 41 10             	mov    0x10(%ecx),%eax
 804e3ce:	8b 44 81 10          	mov    0x10(%ecx,%eax,4),%eax
 804e3d2:	89 04 24             	mov    %eax,(%esp)
 804e3d5:	e8 d6 1d 00 00       	call   80501b0 <__hi0bits>
 804e3da:	ba 20 00 00 00       	mov    $0x20,%edx
 804e3df:	29 c2                	sub    %eax,%edx
 804e3e1:	e9 bb fa ff ff       	jmp    804dea1 <_dtoa_r+0x741>
 804e3e6:	66 90                	xchg   %ax,%ax
 804e3e8:	8b 45 b0             	mov    -0x50(%ebp),%eax
 804e3eb:	89 44 24 04          	mov    %eax,0x4(%esp)
 804e3ef:	8b 45 a4             	mov    -0x5c(%ebp),%eax
 804e3f2:	89 04 24             	mov    %eax,(%esp)
 804e3f5:	e8 d6 22 00 00       	call   80506d0 <__mcmp>
 804e3fa:	85 c0                	test   %eax,%eax
 804e3fc:	0f 89 13 fb ff ff    	jns    804df15 <_dtoa_r+0x7b5>
 804e402:	8b 45 a4             	mov    -0x5c(%ebp),%eax
 804e405:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
 804e40c:	00 
 804e40d:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
 804e414:	00 
 804e415:	89 34 24             	mov    %esi,(%esp)
 804e418:	89 44 24 04          	mov    %eax,0x4(%esp)
 804e41c:	83 6d b8 01          	subl   $0x1,-0x48(%ebp)
 804e420:	e8 ab 1b 00 00       	call   804ffd0 <__multadd>
 804e425:	8b 4d 98             	mov    -0x68(%ebp),%ecx
 804e428:	85 c9                	test   %ecx,%ecx
 804e42a:	89 45 a4             	mov    %eax,-0x5c(%ebp)
 804e42d:	0f 85 8d 00 00 00    	jne    804e4c0 <_dtoa_r+0xd60>
 804e433:	83 7d 90 00          	cmpl   $0x0,-0x70(%ebp)
 804e437:	8b 45 90             	mov    -0x70(%ebp),%eax
 804e43a:	7f 0a                	jg     804e446 <_dtoa_r+0xce6>
 804e43c:	83 7d 14 02          	cmpl   $0x2,0x14(%ebp)
 804e440:	0f 8f ff 04 00 00    	jg     804e945 <_dtoa_r+0x11e5>
 804e446:	89 45 a8             	mov    %eax,-0x58(%ebp)
 804e449:	e9 ed fc ff ff       	jmp    804e13b <_dtoa_r+0x9db>
 804e44e:	66 90                	xchg   %ax,%ax
 804e450:	8b 5d a8             	mov    -0x58(%ebp),%ebx
 804e453:	85 db                	test   %ebx,%ebx
 804e455:	0f 85 aa fc ff ff    	jne    804e105 <_dtoa_r+0x9a5>
 804e45b:	d8 0d 30 4c 05 08    	fmuls  0x8054c30
 804e461:	c7 45 b0 00 00 00 00 	movl   $0x0,-0x50(%ebp)
 804e468:	c7 45 b4 00 00 00 00 	movl   $0x0,-0x4c(%ebp)
 804e46f:	dd 45 c0             	fldl   -0x40(%ebp)
 804e472:	d9 c9                	fxch   %st(1)
 804e474:	df e9                	fucomip %st(1),%st
 804e476:	dd d8                	fstp   %st(0)
 804e478:	0f 83 97 fc ff ff    	jae    804e115 <_dtoa_r+0x9b5>
 804e47e:	e9 eb fa ff ff       	jmp    804df6e <_dtoa_r+0x80e>
 804e483:	90                   	nop
 804e484:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 804e488:	8b 45 c0             	mov    -0x40(%ebp),%eax
 804e48b:	85 c0                	test   %eax,%eax
 804e48d:	0f 85 fe f9 ff ff    	jne    804de91 <_dtoa_r+0x731>
 804e493:	8b 45 c4             	mov    -0x3c(%ebp),%eax
 804e496:	a9 ff ff 0f 00       	test   $0xfffff,%eax
 804e49b:	0f 85 f0 f9 ff ff    	jne    804de91 <_dtoa_r+0x731>
 804e4a1:	a9 00 00 f0 7f       	test   $0x7ff00000,%eax
 804e4a6:	0f 84 e5 f9 ff ff    	je     804de91 <_dtoa_r+0x731>
 804e4ac:	83 45 a0 01          	addl   $0x1,-0x60(%ebp)
 804e4b0:	83 45 ac 01          	addl   $0x1,-0x54(%ebp)
 804e4b4:	c7 45 8c 01 00 00 00 	movl   $0x1,-0x74(%ebp)
 804e4bb:	e9 d1 f9 ff ff       	jmp    804de91 <_dtoa_r+0x731>
 804e4c0:	8b 45 b4             	mov    -0x4c(%ebp),%eax
 804e4c3:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
 804e4ca:	00 
 804e4cb:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
 804e4d2:	00 
 804e4d3:	89 34 24             	mov    %esi,(%esp)
 804e4d6:	89 44 24 04          	mov    %eax,0x4(%esp)
 804e4da:	e8 f1 1a 00 00       	call   804ffd0 <__multadd>
 804e4df:	8b 55 90             	mov    -0x70(%ebp),%edx
 804e4e2:	85 d2                	test   %edx,%edx
 804e4e4:	89 45 b4             	mov    %eax,-0x4c(%ebp)
 804e4e7:	8b 45 90             	mov    -0x70(%ebp),%eax
 804e4ea:	7f 0a                	jg     804e4f6 <_dtoa_r+0xd96>
 804e4ec:	83 7d 14 02          	cmpl   $0x2,0x14(%ebp)
 804e4f0:	0f 8f 4f 04 00 00    	jg     804e945 <_dtoa_r+0x11e5>
 804e4f6:	89 45 a8             	mov    %eax,-0x58(%ebp)
 804e4f9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 804e500:	85 db                	test   %ebx,%ebx
 804e502:	7e 16                	jle    804e51a <_dtoa_r+0xdba>
 804e504:	8b 45 b4             	mov    -0x4c(%ebp),%eax
 804e507:	89 5c 24 08          	mov    %ebx,0x8(%esp)
 804e50b:	89 34 24             	mov    %esi,(%esp)
 804e50e:	89 44 24 04          	mov    %eax,0x4(%esp)
 804e512:	e8 99 20 00 00       	call   80505b0 <__lshift>
 804e517:	89 45 b4             	mov    %eax,-0x4c(%ebp)
 804e51a:	8b 5d 8c             	mov    -0x74(%ebp),%ebx
 804e51d:	8b 45 b4             	mov    -0x4c(%ebp),%eax
 804e520:	85 db                	test   %ebx,%ebx
 804e522:	89 45 ac             	mov    %eax,-0x54(%ebp)
 804e525:	0f 85 11 03 00 00    	jne    804e83c <_dtoa_r+0x10dc>
 804e52b:	8b 45 a8             	mov    -0x58(%ebp),%eax
 804e52e:	8d 5f 01             	lea    0x1(%edi),%ebx
 804e531:	89 7d 8c             	mov    %edi,-0x74(%ebp)
 804e534:	01 f8                	add    %edi,%eax
 804e536:	8b 7d a4             	mov    -0x5c(%ebp),%edi
 804e539:	89 45 90             	mov    %eax,-0x70(%ebp)
 804e53c:	8b 45 c0             	mov    -0x40(%ebp),%eax
 804e53f:	83 e0 01             	and    $0x1,%eax
 804e542:	89 45 9c             	mov    %eax,-0x64(%ebp)
 804e545:	eb 2e                	jmp    804e575 <_dtoa_r+0xe15>
 804e547:	90                   	nop
 804e548:	e8 83 1a 00 00       	call   804ffd0 <__multadd>
 804e54d:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
 804e554:	00 
 804e555:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
 804e55c:	00 
 804e55d:	89 34 24             	mov    %esi,(%esp)
 804e560:	89 45 b4             	mov    %eax,-0x4c(%ebp)
 804e563:	8b 45 ac             	mov    -0x54(%ebp),%eax
 804e566:	89 44 24 04          	mov    %eax,0x4(%esp)
 804e56a:	e8 61 1a 00 00       	call   804ffd0 <__multadd>
 804e56f:	89 45 ac             	mov    %eax,-0x54(%ebp)
 804e572:	83 c3 01             	add    $0x1,%ebx
 804e575:	8b 55 b0             	mov    -0x50(%ebp),%edx
 804e578:	8d 43 ff             	lea    -0x1(%ebx),%eax
 804e57b:	89 45 98             	mov    %eax,-0x68(%ebp)
 804e57e:	89 f8                	mov    %edi,%eax
 804e580:	e8 0b f0 ff ff       	call   804d590 <quorem>
 804e585:	89 3c 24             	mov    %edi,(%esp)
 804e588:	8d 48 30             	lea    0x30(%eax),%ecx
 804e58b:	89 4d a0             	mov    %ecx,-0x60(%ebp)
 804e58e:	8b 4d b4             	mov    -0x4c(%ebp),%ecx
 804e591:	89 45 94             	mov    %eax,-0x6c(%ebp)
 804e594:	89 4c 24 04          	mov    %ecx,0x4(%esp)
 804e598:	e8 33 21 00 00       	call   80506d0 <__mcmp>
 804e59d:	8b 4d ac             	mov    -0x54(%ebp),%ecx
 804e5a0:	89 34 24             	mov    %esi,(%esp)
 804e5a3:	89 4c 24 08          	mov    %ecx,0x8(%esp)
 804e5a7:	89 45 c0             	mov    %eax,-0x40(%ebp)
 804e5aa:	8b 45 b0             	mov    -0x50(%ebp),%eax
 804e5ad:	89 44 24 04          	mov    %eax,0x4(%esp)
 804e5b1:	e8 6a 21 00 00       	call   8050720 <__mdiff>
 804e5b6:	8b 48 0c             	mov    0xc(%eax),%ecx
 804e5b9:	89 c2                	mov    %eax,%edx
 804e5bb:	85 c9                	test   %ecx,%ecx
 804e5bd:	0f 85 c5 00 00 00    	jne    804e688 <_dtoa_r+0xf28>
 804e5c3:	89 44 24 04          	mov    %eax,0x4(%esp)
 804e5c7:	89 3c 24             	mov    %edi,(%esp)
 804e5ca:	89 45 a8             	mov    %eax,-0x58(%ebp)
 804e5cd:	e8 fe 20 00 00       	call   80506d0 <__mcmp>
 804e5d2:	8b 55 a8             	mov    -0x58(%ebp),%edx
 804e5d5:	89 54 24 04          	mov    %edx,0x4(%esp)
 804e5d9:	89 34 24             	mov    %esi,(%esp)
 804e5dc:	89 45 a8             	mov    %eax,-0x58(%ebp)
 804e5df:	e8 cc 19 00 00       	call   804ffb0 <_Bfree>
 804e5e4:	8b 45 a8             	mov    -0x58(%ebp),%eax
 804e5e7:	89 c1                	mov    %eax,%ecx
 804e5e9:	0b 4d 14             	or     0x14(%ebp),%ecx
 804e5ec:	75 0b                	jne    804e5f9 <_dtoa_r+0xe99>
 804e5ee:	8b 55 9c             	mov    -0x64(%ebp),%edx
 804e5f1:	85 d2                	test   %edx,%edx
 804e5f3:	0f 84 fb 02 00 00    	je     804e8f4 <_dtoa_r+0x1194>
 804e5f9:	8b 55 c0             	mov    -0x40(%ebp),%edx
 804e5fc:	85 d2                	test   %edx,%edx
 804e5fe:	0f 88 7f 01 00 00    	js     804e783 <_dtoa_r+0x1023>
 804e604:	8b 4d c0             	mov    -0x40(%ebp),%ecx
 804e607:	0b 4d 14             	or     0x14(%ebp),%ecx
 804e60a:	75 0b                	jne    804e617 <_dtoa_r+0xeb7>
 804e60c:	8b 4d 9c             	mov    -0x64(%ebp),%ecx
 804e60f:	85 c9                	test   %ecx,%ecx
 804e611:	0f 84 6c 01 00 00    	je     804e783 <_dtoa_r+0x1023>
 804e617:	85 c0                	test   %eax,%eax
 804e619:	0f 8f 82 02 00 00    	jg     804e8a1 <_dtoa_r+0x1141>
 804e61f:	0f b6 45 a0          	movzbl -0x60(%ebp),%eax
 804e623:	89 da                	mov    %ebx,%edx
 804e625:	3b 5d 90             	cmp    -0x70(%ebp),%ebx
 804e628:	88 43 ff             	mov    %al,-0x1(%ebx)
 804e62b:	0f 84 8d 02 00 00    	je     804e8be <_dtoa_r+0x115e>
 804e631:	89 7c 24 04          	mov    %edi,0x4(%esp)
 804e635:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
 804e63c:	00 
 804e63d:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
 804e644:	00 
 804e645:	89 34 24             	mov    %esi,(%esp)
 804e648:	e8 83 19 00 00       	call   804ffd0 <__multadd>
 804e64d:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
 804e654:	00 
 804e655:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
 804e65c:	00 
 804e65d:	89 34 24             	mov    %esi,(%esp)
 804e660:	89 c7                	mov    %eax,%edi
 804e662:	8b 45 ac             	mov    -0x54(%ebp),%eax
 804e665:	39 45 b4             	cmp    %eax,-0x4c(%ebp)
 804e668:	8b 45 b4             	mov    -0x4c(%ebp),%eax
 804e66b:	89 44 24 04          	mov    %eax,0x4(%esp)
 804e66f:	0f 85 d3 fe ff ff    	jne    804e548 <_dtoa_r+0xde8>
 804e675:	e8 56 19 00 00       	call   804ffd0 <__multadd>
 804e67a:	89 45 b4             	mov    %eax,-0x4c(%ebp)
 804e67d:	89 45 ac             	mov    %eax,-0x54(%ebp)
 804e680:	e9 ed fe ff ff       	jmp    804e572 <_dtoa_r+0xe12>
 804e685:	8d 76 00             	lea    0x0(%esi),%esi
 804e688:	b8 01 00 00 00       	mov    $0x1,%eax
 804e68d:	e9 43 ff ff ff       	jmp    804e5d5 <_dtoa_r+0xe75>
 804e692:	c7 45 98 00 00 00 00 	movl   $0x0,-0x68(%ebp)
 804e699:	e9 d2 f2 ff ff       	jmp    804d970 <_dtoa_r+0x210>
 804e69e:	0f 85 87 f6 ff ff    	jne    804dd2b <_dtoa_r+0x5cb>
 804e6a4:	dd d8                	fstp   %st(0)
 804e6a6:	dd d8                	fstp   %st(0)
 804e6a8:	dd d8                	fstp   %st(0)
 804e6aa:	89 fb                	mov    %edi,%ebx
 804e6ac:	8b 7d c0             	mov    -0x40(%ebp),%edi
 804e6af:	e9 fc f8 ff ff       	jmp    804dfb0 <_dtoa_r+0x850>
 804e6b4:	89 c2                	mov    %eax,%edx
 804e6b6:	2b 55 b0             	sub    -0x50(%ebp),%edx
 804e6b9:	89 45 b0             	mov    %eax,-0x50(%ebp)
 804e6bc:	01 55 94             	add    %edx,-0x6c(%ebp)
 804e6bf:	31 d2                	xor    %edx,%edx
 804e6c1:	e9 b8 f9 ff ff       	jmp    804e07e <_dtoa_r+0x91e>
 804e6c6:	8b 45 a8             	mov    -0x58(%ebp),%eax
 804e6c9:	85 c0                	test   %eax,%eax
 804e6cb:	0f 84 f3 f9 ff ff    	je     804e0c4 <_dtoa_r+0x964>
 804e6d1:	8b 45 90             	mov    -0x70(%ebp),%eax
 804e6d4:	85 c0                	test   %eax,%eax
 804e6d6:	0f 8e c4 fb ff ff    	jle    804e2a0 <_dtoa_r+0xb40>
 804e6dc:	d8 0d 28 4c 05 08    	fmuls  0x8054c28
 804e6e2:	83 c1 01             	add    $0x1,%ecx
 804e6e5:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
 804e6e8:	8b 5d b8             	mov    -0x48(%ebp),%ebx
 804e6eb:	89 c1                	mov    %eax,%ecx
 804e6ed:	83 eb 01             	sub    $0x1,%ebx
 804e6f0:	db 45 d4             	fildl  -0x2c(%ebp)
 804e6f3:	d8 c9                	fmul   %st(1),%st
 804e6f5:	89 5d b4             	mov    %ebx,-0x4c(%ebp)
 804e6f8:	d8 05 2c 4c 05 08    	fadds  0x8054c2c
 804e6fe:	dd 5d c0             	fstpl  -0x40(%ebp)
 804e701:	81 6d c4 00 00 40 03 	subl   $0x3400000,-0x3c(%ebp)
 804e708:	e9 53 f4 ff ff       	jmp    804db60 <_dtoa_r+0x400>
 804e70d:	8b 45 b4             	mov    -0x4c(%ebp),%eax
 804e710:	c6 03 30             	movb   $0x30,(%ebx)
 804e713:	83 c0 01             	add    $0x1,%eax
 804e716:	89 45 b8             	mov    %eax,-0x48(%ebp)
 804e719:	b8 31 00 00 00       	mov    $0x31,%eax
 804e71e:	88 02                	mov    %al,(%edx)
 804e720:	e9 8b f8 ff ff       	jmp    804dfb0 <_dtoa_r+0x850>
 804e725:	d9 c0                	fld    %st(0)
 804e727:	b9 02 00 00 00       	mov    $0x2,%ecx
 804e72c:	e9 f2 f3 ff ff       	jmp    804db23 <_dtoa_r+0x3c3>
 804e731:	de e2                	fsubp  %st,%st(2)
 804e733:	d9 c9                	fxch   %st(1)
 804e735:	df e9                	fucomip %st(1),%st
 804e737:	dd d8                	fstp   %st(0)
 804e739:	0f 86 69 fb ff ff    	jbe    804e2a8 <_dtoa_r+0xb48>
 804e73f:	dd d8                	fstp   %st(0)
 804e741:	eb 07                	jmp    804e74a <_dtoa_r+0xfea>
 804e743:	90                   	nop
 804e744:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 804e748:	89 c2                	mov    %eax,%edx
 804e74a:	80 7a ff 30          	cmpb   $0x30,-0x1(%edx)
 804e74e:	8d 42 ff             	lea    -0x1(%edx),%eax
 804e751:	74 f5                	je     804e748 <_dtoa_r+0xfe8>
 804e753:	e9 d9 f4 ff ff       	jmp    804dc31 <_dtoa_r+0x4d1>
 804e758:	c6 07 31             	movb   $0x31,(%edi)
 804e75b:	89 fb                	mov    %edi,%ebx
 804e75d:	89 d7                	mov    %edx,%edi
 804e75f:	83 45 b8 01          	addl   $0x1,-0x48(%ebp)
 804e763:	e9 1a f8 ff ff       	jmp    804df82 <_dtoa_r+0x822>
 804e768:	8b 55 8c             	mov    -0x74(%ebp),%edx
 804e76b:	85 d2                	test   %edx,%edx
 804e76d:	0f 84 1b 01 00 00    	je     804e88e <_dtoa_r+0x112e>
 804e773:	05 33 04 00 00       	add    $0x433,%eax
 804e778:	8b 55 b0             	mov    -0x50(%ebp),%edx
 804e77b:	8b 5d a0             	mov    -0x60(%ebp),%ebx
 804e77e:	e9 0b f9 ff ff       	jmp    804e08e <_dtoa_r+0x92e>
 804e783:	85 c0                	test   %eax,%eax
 804e785:	89 7d a4             	mov    %edi,-0x5c(%ebp)
 804e788:	8b 7d 8c             	mov    -0x74(%ebp),%edi
 804e78b:	7e 45                	jle    804e7d2 <_dtoa_r+0x1072>
 804e78d:	8b 45 a4             	mov    -0x5c(%ebp),%eax
 804e790:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 804e797:	00 
 804e798:	89 34 24             	mov    %esi,(%esp)
 804e79b:	89 44 24 04          	mov    %eax,0x4(%esp)
 804e79f:	e8 0c 1e 00 00       	call   80505b0 <__lshift>
 804e7a4:	8b 5d b0             	mov    -0x50(%ebp),%ebx
 804e7a7:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 804e7ab:	89 04 24             	mov    %eax,(%esp)
 804e7ae:	89 45 a4             	mov    %eax,-0x5c(%ebp)
 804e7b1:	e8 1a 1f 00 00       	call   80506d0 <__mcmp>
 804e7b6:	83 f8 00             	cmp    $0x0,%eax
 804e7b9:	0f 8e 5b 01 00 00    	jle    804e91a <_dtoa_r+0x11ba>
 804e7bf:	83 7d a0 39          	cmpl   $0x39,-0x60(%ebp)
 804e7c3:	0f 84 0c 01 00 00    	je     804e8d5 <_dtoa_r+0x1175>
 804e7c9:	8b 45 94             	mov    -0x6c(%ebp),%eax
 804e7cc:	83 c0 31             	add    $0x31,%eax
 804e7cf:	89 45 a0             	mov    %eax,-0x60(%ebp)
 804e7d2:	8b 4d 98             	mov    -0x68(%ebp),%ecx
 804e7d5:	0f b6 45 a0          	movzbl -0x60(%ebp),%eax
 804e7d9:	89 cb                	mov    %ecx,%ebx
 804e7db:	88 03                	mov    %al,(%ebx)
 804e7dd:	8b 45 b4             	mov    -0x4c(%ebp),%eax
 804e7e0:	89 fb                	mov    %edi,%ebx
 804e7e2:	8d 79 01             	lea    0x1(%ecx),%edi
 804e7e5:	89 45 c0             	mov    %eax,-0x40(%ebp)
 804e7e8:	8b 45 ac             	mov    -0x54(%ebp),%eax
 804e7eb:	89 45 b4             	mov    %eax,-0x4c(%ebp)
 804e7ee:	e9 8f f7 ff ff       	jmp    804df82 <_dtoa_r+0x822>
 804e7f3:	dd d8                	fstp   %st(0)
 804e7f5:	dd d8                	fstp   %st(0)
 804e7f7:	dd d8                	fstp   %st(0)
 804e7f9:	eb 0d                	jmp    804e808 <_dtoa_r+0x10a8>
 804e7fb:	90                   	nop
 804e7fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 804e800:	dd d8                	fstp   %st(0)
 804e802:	dd d8                	fstp   %st(0)
 804e804:	dd d8                	fstp   %st(0)
 804e806:	dd d8                	fstp   %st(0)
 804e808:	89 fb                	mov    %edi,%ebx
 804e80a:	89 d7                	mov    %edx,%edi
 804e80c:	e9 8d f5 ff ff       	jmp    804dd9e <_dtoa_r+0x63e>
 804e811:	29 cb                	sub    %ecx,%ebx
 804e813:	31 c0                	xor    %eax,%eax
 804e815:	e9 74 f8 ff ff       	jmp    804e08e <_dtoa_r+0x92e>
 804e81a:	75 0e                	jne    804e82a <_dtoa_r+0x10ca>
 804e81c:	f6 45 a0 01          	testb  $0x1,-0x60(%ebp)
 804e820:	74 08                	je     804e82a <_dtoa_r+0x10ca>
 804e822:	e9 b2 f9 ff ff       	jmp    804e1d9 <_dtoa_r+0xa79>
 804e827:	90                   	nop
 804e828:	89 c2                	mov    %eax,%edx
 804e82a:	80 7a ff 30          	cmpb   $0x30,-0x1(%edx)
 804e82e:	8d 42 ff             	lea    -0x1(%edx),%eax
 804e831:	74 f5                	je     804e828 <_dtoa_r+0x10c8>
 804e833:	89 fb                	mov    %edi,%ebx
 804e835:	89 d7                	mov    %edx,%edi
 804e837:	e9 46 f7 ff ff       	jmp    804df82 <_dtoa_r+0x822>
 804e83c:	8b 40 04             	mov    0x4(%eax),%eax
 804e83f:	89 34 24             	mov    %esi,(%esp)
 804e842:	89 44 24 04          	mov    %eax,0x4(%esp)
 804e846:	e8 c5 16 00 00       	call   804ff10 <_Balloc>
 804e84b:	8b 4d b4             	mov    -0x4c(%ebp),%ecx
 804e84e:	89 c3                	mov    %eax,%ebx
 804e850:	8b 41 10             	mov    0x10(%ecx),%eax
 804e853:	8d 04 85 08 00 00 00 	lea    0x8(,%eax,4),%eax
 804e85a:	89 44 24 08          	mov    %eax,0x8(%esp)
 804e85e:	89 c8                	mov    %ecx,%eax
 804e860:	83 c0 0c             	add    $0xc,%eax
 804e863:	89 44 24 04          	mov    %eax,0x4(%esp)
 804e867:	8d 43 0c             	lea    0xc(%ebx),%eax
 804e86a:	89 04 24             	mov    %eax,(%esp)
 804e86d:	e8 36 16 00 00       	call   804fea8 <memcpy>
 804e872:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 804e879:	00 
 804e87a:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 804e87e:	89 34 24             	mov    %esi,(%esp)
 804e881:	e8 2a 1d 00 00       	call   80505b0 <__lshift>
 804e886:	89 45 ac             	mov    %eax,-0x54(%ebp)
 804e889:	e9 9d fc ff ff       	jmp    804e52b <_dtoa_r+0xdcb>
 804e88e:	b8 36 00 00 00       	mov    $0x36,%eax
 804e893:	8b 55 b0             	mov    -0x50(%ebp),%edx
 804e896:	2b 45 e0             	sub    -0x20(%ebp),%eax
 804e899:	8b 5d a0             	mov    -0x60(%ebp),%ebx
 804e89c:	e9 ed f7 ff ff       	jmp    804e08e <_dtoa_r+0x92e>
 804e8a1:	83 7d a0 39          	cmpl   $0x39,-0x60(%ebp)
 804e8a5:	89 7d a4             	mov    %edi,-0x5c(%ebp)
 804e8a8:	8b 7d 8c             	mov    -0x74(%ebp),%edi
 804e8ab:	74 28                	je     804e8d5 <_dtoa_r+0x1175>
 804e8ad:	0f b6 45 a0          	movzbl -0x60(%ebp),%eax
 804e8b1:	8b 4d 98             	mov    -0x68(%ebp),%ecx
 804e8b4:	83 c0 01             	add    $0x1,%eax
 804e8b7:	89 cb                	mov    %ecx,%ebx
 804e8b9:	e9 1d ff ff ff       	jmp    804e7db <_dtoa_r+0x107b>
 804e8be:	8b 45 b4             	mov    -0x4c(%ebp),%eax
 804e8c1:	89 7d a4             	mov    %edi,-0x5c(%ebp)
 804e8c4:	8b 7d 8c             	mov    -0x74(%ebp),%edi
 804e8c7:	89 45 c0             	mov    %eax,-0x40(%ebp)
 804e8ca:	8b 45 ac             	mov    -0x54(%ebp),%eax
 804e8cd:	89 45 b4             	mov    %eax,-0x4c(%ebp)
 804e8d0:	e9 cc f8 ff ff       	jmp    804e1a1 <_dtoa_r+0xa41>
 804e8d5:	8b 45 98             	mov    -0x68(%ebp),%eax
 804e8d8:	b9 39 00 00 00       	mov    $0x39,%ecx
 804e8dd:	8d 50 01             	lea    0x1(%eax),%edx
 804e8e0:	c6 00 39             	movb   $0x39,(%eax)
 804e8e3:	8b 45 b4             	mov    -0x4c(%ebp),%eax
 804e8e6:	89 45 c0             	mov    %eax,-0x40(%ebp)
 804e8e9:	8b 45 ac             	mov    -0x54(%ebp),%eax
 804e8ec:	89 45 b4             	mov    %eax,-0x4c(%ebp)
 804e8ef:	e9 fa f8 ff ff       	jmp    804e1ee <_dtoa_r+0xa8e>
 804e8f4:	8b 5d a0             	mov    -0x60(%ebp),%ebx
 804e8f7:	89 7d a4             	mov    %edi,-0x5c(%ebp)
 804e8fa:	8b 7d 8c             	mov    -0x74(%ebp),%edi
 804e8fd:	83 fb 39             	cmp    $0x39,%ebx
 804e900:	74 d3                	je     804e8d5 <_dtoa_r+0x1175>
 804e902:	8b 4d c0             	mov    -0x40(%ebp),%ecx
 804e905:	8b 45 94             	mov    -0x6c(%ebp),%eax
 804e908:	83 c0 31             	add    $0x31,%eax
 804e90b:	85 c9                	test   %ecx,%ecx
 804e90d:	8b 4d 98             	mov    -0x68(%ebp),%ecx
 804e910:	0f 4e c3             	cmovle %ebx,%eax
 804e913:	89 cb                	mov    %ecx,%ebx
 804e915:	e9 c1 fe ff ff       	jmp    804e7db <_dtoa_r+0x107b>
 804e91a:	0f 85 b2 fe ff ff    	jne    804e7d2 <_dtoa_r+0x1072>
 804e920:	f6 45 a0 01          	testb  $0x1,-0x60(%ebp)
 804e924:	0f 84 a8 fe ff ff    	je     804e7d2 <_dtoa_r+0x1072>
 804e92a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 804e930:	e9 8a fe ff ff       	jmp    804e7bf <_dtoa_r+0x105f>
 804e935:	0f 85 c7 f3 ff ff    	jne    804dd02 <_dtoa_r+0x5a2>
 804e93b:	dd d8                	fstp   %st(0)
 804e93d:	dd d8                	fstp   %st(0)
 804e93f:	90                   	nop
 804e940:	e9 65 fd ff ff       	jmp    804e6aa <_dtoa_r+0xf4a>
 804e945:	89 45 a8             	mov    %eax,-0x58(%ebp)
 804e948:	e9 dd f5 ff ff       	jmp    804df2a <_dtoa_r+0x7ca>
 804e94d:	8d 76 00             	lea    0x0(%esi),%esi
 804e950:	0f 84 7a f5 ff ff    	je     804ded0 <_dtoa_r+0x770>
 804e956:	b8 3c 00 00 00       	mov    $0x3c,%eax
 804e95b:	29 d0                	sub    %edx,%eax
 804e95d:	e9 ab f8 ff ff       	jmp    804e20d <_dtoa_r+0xaad>
 804e962:	b8 01 00 00 00       	mov    $0x1,%eax
 804e967:	e9 d9 ef ff ff       	jmp    804d945 <_dtoa_r+0x1e5>
 804e96c:	31 d2                	xor    %edx,%edx
 804e96e:	e9 36 f1 ff ff       	jmp    804daa9 <_dtoa_r+0x349>
 804e973:	66 90                	xchg   %ax,%ax
 804e975:	66 90                	xchg   %ax,%ax
 804e977:	66 90                	xchg   %ax,%ax
 804e979:	66 90                	xchg   %ax,%ax
 804e97b:	66 90                	xchg   %ax,%ax
 804e97d:	66 90                	xchg   %ax,%ax
 804e97f:	90                   	nop

0804e980 <__sflush_r>:
 804e980:	55                   	push   %ebp
 804e981:	89 e5                	mov    %esp,%ebp
 804e983:	57                   	push   %edi
 804e984:	56                   	push   %esi
 804e985:	53                   	push   %ebx
 804e986:	83 ec 1c             	sub    $0x1c,%esp
 804e989:	8b 7d 0c             	mov    0xc(%ebp),%edi
 804e98c:	0f b7 47 0c          	movzwl 0xc(%edi),%eax
 804e990:	a8 08                	test   $0x8,%al
 804e992:	0f 85 c8 00 00 00    	jne    804ea60 <__sflush_r+0xe0>
 804e998:	8b 77 04             	mov    0x4(%edi),%esi
 804e99b:	89 c1                	mov    %eax,%ecx
 804e99d:	80 cd 08             	or     $0x8,%ch
 804e9a0:	66 89 4f 0c          	mov    %cx,0xc(%edi)
 804e9a4:	85 f6                	test   %esi,%esi
 804e9a6:	0f 8e 0c 01 00 00    	jle    804eab8 <__sflush_r+0x138>
 804e9ac:	8b 57 28             	mov    0x28(%edi),%edx
 804e9af:	85 d2                	test   %edx,%edx
 804e9b1:	0f 84 98 00 00 00    	je     804ea4f <__sflush_r+0xcf>
 804e9b7:	8b 75 08             	mov    0x8(%ebp),%esi
 804e9ba:	f6 c4 10             	test   $0x10,%ah
 804e9bd:	8b 1e                	mov    (%esi),%ebx
 804e9bf:	c7 06 00 00 00 00    	movl   $0x0,(%esi)
 804e9c5:	0f 84 fd 00 00 00    	je     804eac8 <__sflush_r+0x148>
 804e9cb:	8b 47 50             	mov    0x50(%edi),%eax
 804e9ce:	83 e1 04             	and    $0x4,%ecx
 804e9d1:	74 0d                	je     804e9e0 <__sflush_r+0x60>
 804e9d3:	8b 4f 30             	mov    0x30(%edi),%ecx
 804e9d6:	2b 47 04             	sub    0x4(%edi),%eax
 804e9d9:	85 c9                	test   %ecx,%ecx
 804e9db:	74 03                	je     804e9e0 <__sflush_r+0x60>
 804e9dd:	2b 47 3c             	sub    0x3c(%edi),%eax
 804e9e0:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
 804e9e7:	00 
 804e9e8:	89 44 24 08          	mov    %eax,0x8(%esp)
 804e9ec:	8b 47 1c             	mov    0x1c(%edi),%eax
 804e9ef:	89 44 24 04          	mov    %eax,0x4(%esp)
 804e9f3:	8b 45 08             	mov    0x8(%ebp),%eax
 804e9f6:	89 04 24             	mov    %eax,(%esp)
 804e9f9:	ff d2                	call   *%edx
 804e9fb:	83 f8 ff             	cmp    $0xffffffff,%eax
 804e9fe:	0f 84 f4 00 00 00    	je     804eaf8 <__sflush_r+0x178>
 804ea04:	0f b7 57 0c          	movzwl 0xc(%edi),%edx
 804ea08:	c7 47 04 00 00 00 00 	movl   $0x0,0x4(%edi)
 804ea0f:	89 d1                	mov    %edx,%ecx
 804ea11:	80 e5 f7             	and    $0xf7,%ch
 804ea14:	80 e6 10             	and    $0x10,%dh
 804ea17:	66 89 4f 0c          	mov    %cx,0xc(%edi)
 804ea1b:	8b 4f 10             	mov    0x10(%edi),%ecx
 804ea1e:	89 0f                	mov    %ecx,(%edi)
 804ea20:	0f 85 25 01 00 00    	jne    804eb4b <__sflush_r+0x1cb>
 804ea26:	8b 45 08             	mov    0x8(%ebp),%eax
 804ea29:	89 18                	mov    %ebx,(%eax)
 804ea2b:	8b 47 30             	mov    0x30(%edi),%eax
 804ea2e:	85 c0                	test   %eax,%eax
 804ea30:	74 1d                	je     804ea4f <__sflush_r+0xcf>
 804ea32:	8d 57 40             	lea    0x40(%edi),%edx
 804ea35:	39 d0                	cmp    %edx,%eax
 804ea37:	74 0f                	je     804ea48 <__sflush_r+0xc8>
 804ea39:	89 44 24 04          	mov    %eax,0x4(%esp)
 804ea3d:	8b 45 08             	mov    0x8(%ebp),%eax
 804ea40:	89 04 24             	mov    %eax,(%esp)
 804ea43:	e8 d8 06 00 00       	call   804f120 <_free_r>
 804ea48:	c7 47 30 00 00 00 00 	movl   $0x0,0x30(%edi)
 804ea4f:	31 c0                	xor    %eax,%eax
 804ea51:	83 c4 1c             	add    $0x1c,%esp
 804ea54:	5b                   	pop    %ebx
 804ea55:	5e                   	pop    %esi
 804ea56:	5f                   	pop    %edi
 804ea57:	5d                   	pop    %ebp
 804ea58:	c3                   	ret    
 804ea59:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 804ea60:	8b 77 10             	mov    0x10(%edi),%esi
 804ea63:	85 f6                	test   %esi,%esi
 804ea65:	74 e8                	je     804ea4f <__sflush_r+0xcf>
 804ea67:	8b 1f                	mov    (%edi),%ebx
 804ea69:	31 c9                	xor    %ecx,%ecx
 804ea6b:	89 37                	mov    %esi,(%edi)
 804ea6d:	29 f3                	sub    %esi,%ebx
 804ea6f:	a8 03                	test   $0x3,%al
 804ea71:	75 03                	jne    804ea76 <__sflush_r+0xf6>
 804ea73:	8b 4f 14             	mov    0x14(%edi),%ecx
 804ea76:	85 db                	test   %ebx,%ebx
 804ea78:	89 4f 08             	mov    %ecx,0x8(%edi)
 804ea7b:	7f 0b                	jg     804ea88 <__sflush_r+0x108>
 804ea7d:	eb d0                	jmp    804ea4f <__sflush_r+0xcf>
 804ea7f:	90                   	nop
 804ea80:	29 c3                	sub    %eax,%ebx
 804ea82:	01 c6                	add    %eax,%esi
 804ea84:	85 db                	test   %ebx,%ebx
 804ea86:	7e c7                	jle    804ea4f <__sflush_r+0xcf>
 804ea88:	89 5c 24 0c          	mov    %ebx,0xc(%esp)
 804ea8c:	89 74 24 08          	mov    %esi,0x8(%esp)
 804ea90:	8b 47 1c             	mov    0x1c(%edi),%eax
 804ea93:	89 44 24 04          	mov    %eax,0x4(%esp)
 804ea97:	8b 45 08             	mov    0x8(%ebp),%eax
 804ea9a:	89 04 24             	mov    %eax,(%esp)
 804ea9d:	ff 57 24             	call   *0x24(%edi)
 804eaa0:	85 c0                	test   %eax,%eax
 804eaa2:	7f dc                	jg     804ea80 <__sflush_r+0x100>
 804eaa4:	66 83 4f 0c 40       	orw    $0x40,0xc(%edi)
 804eaa9:	83 c4 1c             	add    $0x1c,%esp
 804eaac:	5b                   	pop    %ebx
 804eaad:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804eab2:	5e                   	pop    %esi
 804eab3:	5f                   	pop    %edi
 804eab4:	5d                   	pop    %ebp
 804eab5:	c3                   	ret    
 804eab6:	66 90                	xchg   %ax,%ax
 804eab8:	8b 5f 3c             	mov    0x3c(%edi),%ebx
 804eabb:	85 db                	test   %ebx,%ebx
 804eabd:	0f 8f e9 fe ff ff    	jg     804e9ac <__sflush_r+0x2c>
 804eac3:	eb 8a                	jmp    804ea4f <__sflush_r+0xcf>
 804eac5:	8d 76 00             	lea    0x0(%esi),%esi
 804eac8:	c7 44 24 0c 01 00 00 	movl   $0x1,0xc(%esp)
 804eacf:	00 
 804ead0:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 804ead7:	00 
 804ead8:	8b 47 1c             	mov    0x1c(%edi),%eax
 804eadb:	89 44 24 04          	mov    %eax,0x4(%esp)
 804eadf:	8b 45 08             	mov    0x8(%ebp),%eax
 804eae2:	89 04 24             	mov    %eax,(%esp)
 804eae5:	ff d2                	call   *%edx
 804eae7:	83 f8 ff             	cmp    $0xffffffff,%eax
 804eaea:	74 3c                	je     804eb28 <__sflush_r+0x1a8>
 804eaec:	0f b7 4f 0c          	movzwl 0xc(%edi),%ecx
 804eaf0:	8b 57 28             	mov    0x28(%edi),%edx
 804eaf3:	e9 d6 fe ff ff       	jmp    804e9ce <__sflush_r+0x4e>
 804eaf8:	8b 55 08             	mov    0x8(%ebp),%edx
 804eafb:	8b 12                	mov    (%edx),%edx
 804eafd:	85 d2                	test   %edx,%edx
 804eaff:	0f 84 ff fe ff ff    	je     804ea04 <__sflush_r+0x84>
 804eb05:	83 fa 1d             	cmp    $0x1d,%edx
 804eb08:	74 05                	je     804eb0f <__sflush_r+0x18f>
 804eb0a:	83 fa 16             	cmp    $0x16,%edx
 804eb0d:	75 95                	jne    804eaa4 <__sflush_r+0x124>
 804eb0f:	8b 47 10             	mov    0x10(%edi),%eax
 804eb12:	66 81 67 0c ff f7    	andw   $0xf7ff,0xc(%edi)
 804eb18:	c7 47 04 00 00 00 00 	movl   $0x0,0x4(%edi)
 804eb1f:	89 07                	mov    %eax,(%edi)
 804eb21:	e9 00 ff ff ff       	jmp    804ea26 <__sflush_r+0xa6>
 804eb26:	66 90                	xchg   %ax,%ax
 804eb28:	8b 55 08             	mov    0x8(%ebp),%edx
 804eb2b:	8b 12                	mov    (%edx),%edx
 804eb2d:	85 d2                	test   %edx,%edx
 804eb2f:	74 bb                	je     804eaec <__sflush_r+0x16c>
 804eb31:	83 fa 16             	cmp    $0x16,%edx
 804eb34:	74 09                	je     804eb3f <__sflush_r+0x1bf>
 804eb36:	83 fa 1d             	cmp    $0x1d,%edx
 804eb39:	0f 85 65 ff ff ff    	jne    804eaa4 <__sflush_r+0x124>
 804eb3f:	8b 45 08             	mov    0x8(%ebp),%eax
 804eb42:	89 18                	mov    %ebx,(%eax)
 804eb44:	31 c0                	xor    %eax,%eax
 804eb46:	e9 06 ff ff ff       	jmp    804ea51 <__sflush_r+0xd1>
 804eb4b:	89 47 50             	mov    %eax,0x50(%edi)
 804eb4e:	e9 d3 fe ff ff       	jmp    804ea26 <__sflush_r+0xa6>
 804eb53:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 804eb59:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

0804eb60 <_fflush_r>:
 804eb60:	55                   	push   %ebp
 804eb61:	89 e5                	mov    %esp,%ebp
 804eb63:	56                   	push   %esi
 804eb64:	53                   	push   %ebx
 804eb65:	83 ec 10             	sub    $0x10,%esp
 804eb68:	8b 5d 08             	mov    0x8(%ebp),%ebx
 804eb6b:	8b 75 0c             	mov    0xc(%ebp),%esi
 804eb6e:	85 db                	test   %ebx,%ebx
 804eb70:	74 07                	je     804eb79 <_fflush_r+0x19>
 804eb72:	8b 43 38             	mov    0x38(%ebx),%eax
 804eb75:	85 c0                	test   %eax,%eax
 804eb77:	74 2f                	je     804eba8 <_fflush_r+0x48>
 804eb79:	66 83 7e 0c 00       	cmpw   $0x0,0xc(%esi)
 804eb7e:	75 10                	jne    804eb90 <_fflush_r+0x30>
 804eb80:	83 c4 10             	add    $0x10,%esp
 804eb83:	31 c0                	xor    %eax,%eax
 804eb85:	5b                   	pop    %ebx
 804eb86:	5e                   	pop    %esi
 804eb87:	5d                   	pop    %ebp
 804eb88:	c3                   	ret    
 804eb89:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 804eb90:	89 75 0c             	mov    %esi,0xc(%ebp)
 804eb93:	89 5d 08             	mov    %ebx,0x8(%ebp)
 804eb96:	83 c4 10             	add    $0x10,%esp
 804eb99:	5b                   	pop    %ebx
 804eb9a:	5e                   	pop    %esi
 804eb9b:	5d                   	pop    %ebp
 804eb9c:	e9 df fd ff ff       	jmp    804e980 <__sflush_r>
 804eba1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 804eba8:	89 1c 24             	mov    %ebx,(%esp)
 804ebab:	e8 20 01 00 00       	call   804ecd0 <__sinit>
 804ebb0:	eb c7                	jmp    804eb79 <_fflush_r+0x19>
 804ebb2:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 804ebb9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

0804ebc0 <fflush>:
 804ebc0:	55                   	push   %ebp
 804ebc1:	89 e5                	mov    %esp,%ebp
 804ebc3:	53                   	push   %ebx
 804ebc4:	83 ec 14             	sub    $0x14,%esp
 804ebc7:	8b 5d 08             	mov    0x8(%ebp),%ebx
 804ebca:	85 db                	test   %ebx,%ebx
 804ebcc:	74 1a                	je     804ebe8 <fflush+0x28>
 804ebce:	e8 9d 08 00 00       	call   804f470 <__getreent>
 804ebd3:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 804ebd7:	89 04 24             	mov    %eax,(%esp)
 804ebda:	e8 81 ff ff ff       	call   804eb60 <_fflush_r>
 804ebdf:	83 c4 14             	add    $0x14,%esp
 804ebe2:	5b                   	pop    %ebx
 804ebe3:	5d                   	pop    %ebp
 804ebe4:	c3                   	ret    
 804ebe5:	8d 76 00             	lea    0x0(%esi),%esi
 804ebe8:	a1 50 4c 05 08       	mov    0x8054c50,%eax
 804ebed:	c7 44 24 04 60 eb 04 	movl   $0x804eb60,0x4(%esp)
 804ebf4:	08 
 804ebf5:	89 04 24             	mov    %eax,(%esp)
 804ebf8:	e8 f3 07 00 00       	call   804f3f0 <_fwalk_reent>
 804ebfd:	83 c4 14             	add    $0x14,%esp
 804ec00:	5b                   	pop    %ebx
 804ec01:	5d                   	pop    %ebp
 804ec02:	c3                   	ret    
 804ec03:	66 90                	xchg   %ax,%ax
 804ec05:	66 90                	xchg   %ax,%ax
 804ec07:	66 90                	xchg   %ax,%ax
 804ec09:	66 90                	xchg   %ax,%ax
 804ec0b:	66 90                	xchg   %ax,%ax
 804ec0d:	66 90                	xchg   %ax,%ax
 804ec0f:	90                   	nop

0804ec10 <__fp_lock>:
 804ec10:	55                   	push   %ebp
 804ec11:	31 c0                	xor    %eax,%eax
 804ec13:	89 e5                	mov    %esp,%ebp
 804ec15:	5d                   	pop    %ebp
 804ec16:	c3                   	ret    
 804ec17:	89 f6                	mov    %esi,%esi
 804ec19:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

0804ec20 <__fp_unlock>:
 804ec20:	55                   	push   %ebp
 804ec21:	31 c0                	xor    %eax,%eax
 804ec23:	89 e5                	mov    %esp,%ebp
 804ec25:	5d                   	pop    %ebp
 804ec26:	c3                   	ret    
 804ec27:	89 f6                	mov    %esi,%esi
 804ec29:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

0804ec30 <_cleanup_r>:
 804ec30:	55                   	push   %ebp
 804ec31:	89 e5                	mov    %esp,%ebp
 804ec33:	83 ec 18             	sub    $0x18,%esp
 804ec36:	8b 45 08             	mov    0x8(%ebp),%eax
 804ec39:	c7 44 24 04 60 33 05 	movl   $0x8053360,0x4(%esp)
 804ec40:	08 
 804ec41:	89 04 24             	mov    %eax,(%esp)
 804ec44:	e8 37 07 00 00       	call   804f380 <_fwalk>
 804ec49:	c9                   	leave  
 804ec4a:	c3                   	ret    
 804ec4b:	90                   	nop
 804ec4c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

0804ec50 <__sfmoreglue>:
 804ec50:	55                   	push   %ebp
 804ec51:	89 e5                	mov    %esp,%ebp
 804ec53:	57                   	push   %edi
 804ec54:	56                   	push   %esi
 804ec55:	53                   	push   %ebx
 804ec56:	83 ec 1c             	sub    $0x1c,%esp
 804ec59:	8b 75 0c             	mov    0xc(%ebp),%esi
 804ec5c:	8d 7e ff             	lea    -0x1(%esi),%edi
 804ec5f:	6b ff 68             	imul   $0x68,%edi,%edi
 804ec62:	8d 47 74             	lea    0x74(%edi),%eax
 804ec65:	89 44 24 04          	mov    %eax,0x4(%esp)
 804ec69:	8b 45 08             	mov    0x8(%ebp),%eax
 804ec6c:	89 04 24             	mov    %eax,(%esp)
 804ec6f:	e8 5c 0a 00 00       	call   804f6d0 <_malloc_r>
 804ec74:	85 c0                	test   %eax,%eax
 804ec76:	89 c3                	mov    %eax,%ebx
 804ec78:	74 26                	je     804eca0 <__sfmoreglue+0x50>
 804ec7a:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
 804ec80:	83 c7 68             	add    $0x68,%edi
 804ec83:	89 70 04             	mov    %esi,0x4(%eax)
 804ec86:	8d 40 0c             	lea    0xc(%eax),%eax
 804ec89:	89 43 08             	mov    %eax,0x8(%ebx)
 804ec8c:	89 7c 24 08          	mov    %edi,0x8(%esp)
 804ec90:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 804ec97:	00 
 804ec98:	89 04 24             	mov    %eax,(%esp)
 804ec9b:	e8 21 a5 ff ff       	call   80491c1 <memset>
 804eca0:	83 c4 1c             	add    $0x1c,%esp
 804eca3:	89 d8                	mov    %ebx,%eax
 804eca5:	5b                   	pop    %ebx
 804eca6:	5e                   	pop    %esi
 804eca7:	5f                   	pop    %edi
 804eca8:	5d                   	pop    %ebp
 804eca9:	c3                   	ret    
 804ecaa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

0804ecb0 <_cleanup>:
 804ecb0:	55                   	push   %ebp
 804ecb1:	89 e5                	mov    %esp,%ebp
 804ecb3:	83 ec 18             	sub    $0x18,%esp
 804ecb6:	a1 50 4c 05 08       	mov    0x8054c50,%eax
 804ecbb:	c7 44 24 04 60 33 05 	movl   $0x8053360,0x4(%esp)
 804ecc2:	08 
 804ecc3:	89 04 24             	mov    %eax,(%esp)
 804ecc6:	e8 b5 06 00 00       	call   804f380 <_fwalk>
 804eccb:	c9                   	leave  
 804eccc:	c3                   	ret    
 804eccd:	8d 76 00             	lea    0x0(%esi),%esi

0804ecd0 <__sinit>:
 804ecd0:	55                   	push   %ebp
 804ecd1:	89 e5                	mov    %esp,%ebp
 804ecd3:	56                   	push   %esi
 804ecd4:	53                   	push   %ebx
 804ecd5:	83 ec 10             	sub    $0x10,%esp
 804ecd8:	8b 75 08             	mov    0x8(%ebp),%esi
 804ecdb:	8b 46 38             	mov    0x38(%esi),%eax
 804ecde:	85 c0                	test   %eax,%eax
 804ece0:	0f 85 a8 01 00 00    	jne    804ee8e <__sinit+0x1be>
 804ece6:	8b 5e 04             	mov    0x4(%esi),%ebx
 804ece9:	8d 86 ec 02 00 00    	lea    0x2ec(%esi),%eax
 804ecef:	31 d2                	xor    %edx,%edx
 804ecf1:	89 86 e8 02 00 00    	mov    %eax,0x2e8(%esi)
 804ecf7:	b8 04 00 00 00       	mov    $0x4,%eax
 804ecfc:	c7 46 3c 30 ec 04 08 	movl   $0x804ec30,0x3c(%esi)
 804ed03:	c7 86 e0 02 00 00 00 	movl   $0x0,0x2e0(%esi)
 804ed0a:	00 00 00 
 804ed0d:	c7 86 e4 02 00 00 03 	movl   $0x3,0x2e4(%esi)
 804ed14:	00 00 00 
 804ed17:	66 89 43 0c          	mov    %ax,0xc(%ebx)
 804ed1b:	8d 43 5c             	lea    0x5c(%ebx),%eax
 804ed1e:	66 89 53 0e          	mov    %dx,0xe(%ebx)
 804ed22:	c7 03 00 00 00 00    	movl   $0x0,(%ebx)
 804ed28:	c7 43 04 00 00 00 00 	movl   $0x0,0x4(%ebx)
 804ed2f:	c7 43 08 00 00 00 00 	movl   $0x0,0x8(%ebx)
 804ed36:	c7 43 64 00 00 00 00 	movl   $0x0,0x64(%ebx)
 804ed3d:	c7 43 10 00 00 00 00 	movl   $0x0,0x10(%ebx)
 804ed44:	c7 43 14 00 00 00 00 	movl   $0x0,0x14(%ebx)
 804ed4b:	c7 43 18 00 00 00 00 	movl   $0x0,0x18(%ebx)
 804ed52:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
 804ed59:	00 
 804ed5a:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 804ed61:	00 
 804ed62:	89 04 24             	mov    %eax,(%esp)
 804ed65:	e8 57 a4 ff ff       	call   80491c1 <memset>
 804ed6a:	b8 01 00 00 00       	mov    $0x1,%eax
 804ed6f:	b9 09 00 00 00       	mov    $0x9,%ecx
 804ed74:	89 5b 1c             	mov    %ebx,0x1c(%ebx)
 804ed77:	c7 43 20 a0 0d 05 08 	movl   $0x8050da0,0x20(%ebx)
 804ed7e:	c7 43 24 00 0e 05 08 	movl   $0x8050e00,0x24(%ebx)
 804ed85:	c7 43 28 70 0e 05 08 	movl   $0x8050e70,0x28(%ebx)
 804ed8c:	c7 43 2c c0 0e 05 08 	movl   $0x8050ec0,0x2c(%ebx)
 804ed93:	8b 5e 08             	mov    0x8(%esi),%ebx
 804ed96:	66 89 43 0e          	mov    %ax,0xe(%ebx)
 804ed9a:	8d 43 5c             	lea    0x5c(%ebx),%eax
 804ed9d:	66 89 4b 0c          	mov    %cx,0xc(%ebx)
 804eda1:	c7 03 00 00 00 00    	movl   $0x0,(%ebx)
 804eda7:	c7 43 04 00 00 00 00 	movl   $0x0,0x4(%ebx)
 804edae:	c7 43 08 00 00 00 00 	movl   $0x0,0x8(%ebx)
 804edb5:	c7 43 64 00 00 00 00 	movl   $0x0,0x64(%ebx)
 804edbc:	c7 43 10 00 00 00 00 	movl   $0x0,0x10(%ebx)
 804edc3:	c7 43 14 00 00 00 00 	movl   $0x0,0x14(%ebx)
 804edca:	c7 43 18 00 00 00 00 	movl   $0x0,0x18(%ebx)
 804edd1:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
 804edd8:	00 
 804edd9:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 804ede0:	00 
 804ede1:	89 04 24             	mov    %eax,(%esp)
 804ede4:	e8 d8 a3 ff ff       	call   80491c1 <memset>
 804ede9:	b8 12 00 00 00       	mov    $0x12,%eax
 804edee:	89 5b 1c             	mov    %ebx,0x1c(%ebx)
 804edf1:	c7 43 20 a0 0d 05 08 	movl   $0x8050da0,0x20(%ebx)
 804edf8:	c7 43 24 00 0e 05 08 	movl   $0x8050e00,0x24(%ebx)
 804edff:	c7 43 28 70 0e 05 08 	movl   $0x8050e70,0x28(%ebx)
 804ee06:	c7 43 2c c0 0e 05 08 	movl   $0x8050ec0,0x2c(%ebx)
 804ee0d:	8b 5e 0c             	mov    0xc(%esi),%ebx
 804ee10:	66 89 43 0c          	mov    %ax,0xc(%ebx)
 804ee14:	b8 02 00 00 00       	mov    $0x2,%eax
 804ee19:	66 89 43 0e          	mov    %ax,0xe(%ebx)
 804ee1d:	8d 43 5c             	lea    0x5c(%ebx),%eax
 804ee20:	c7 03 00 00 00 00    	movl   $0x0,(%ebx)
 804ee26:	c7 43 04 00 00 00 00 	movl   $0x0,0x4(%ebx)
 804ee2d:	c7 43 08 00 00 00 00 	movl   $0x0,0x8(%ebx)
 804ee34:	c7 43 64 00 00 00 00 	movl   $0x0,0x64(%ebx)
 804ee3b:	c7 43 10 00 00 00 00 	movl   $0x0,0x10(%ebx)
 804ee42:	c7 43 14 00 00 00 00 	movl   $0x0,0x14(%ebx)
 804ee49:	c7 43 18 00 00 00 00 	movl   $0x0,0x18(%ebx)
 804ee50:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
 804ee57:	00 
 804ee58:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 804ee5f:	00 
 804ee60:	89 04 24             	mov    %eax,(%esp)
 804ee63:	e8 59 a3 ff ff       	call   80491c1 <memset>
 804ee68:	89 5b 1c             	mov    %ebx,0x1c(%ebx)
 804ee6b:	c7 43 20 a0 0d 05 08 	movl   $0x8050da0,0x20(%ebx)
 804ee72:	c7 43 24 00 0e 05 08 	movl   $0x8050e00,0x24(%ebx)
 804ee79:	c7 43 28 70 0e 05 08 	movl   $0x8050e70,0x28(%ebx)
 804ee80:	c7 43 2c c0 0e 05 08 	movl   $0x8050ec0,0x2c(%ebx)
 804ee87:	c7 46 38 01 00 00 00 	movl   $0x1,0x38(%esi)
 804ee8e:	83 c4 10             	add    $0x10,%esp
 804ee91:	5b                   	pop    %ebx
 804ee92:	5e                   	pop    %esi
 804ee93:	5d                   	pop    %ebp
 804ee94:	c3                   	ret    
 804ee95:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 804ee99:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

0804eea0 <__sfp>:
 804eea0:	55                   	push   %ebp
 804eea1:	89 e5                	mov    %esp,%ebp
 804eea3:	56                   	push   %esi
 804eea4:	53                   	push   %ebx
 804eea5:	83 ec 10             	sub    $0x10,%esp
 804eea8:	8b 35 50 4c 05 08    	mov    0x8054c50,%esi
 804eeae:	8b 4e 38             	mov    0x38(%esi),%ecx
 804eeb1:	85 c9                	test   %ecx,%ecx
 804eeb3:	0f 84 bf 00 00 00    	je     804ef78 <__sfp+0xd8>
 804eeb9:	81 c6 e0 02 00 00    	add    $0x2e0,%esi
 804eebf:	8b 46 04             	mov    0x4(%esi),%eax
 804eec2:	8b 5e 08             	mov    0x8(%esi),%ebx
 804eec5:	83 e8 01             	sub    $0x1,%eax
 804eec8:	79 15                	jns    804eedf <__sfp+0x3f>
 804eeca:	e9 99 00 00 00       	jmp    804ef68 <__sfp+0xc8>
 804eecf:	90                   	nop
 804eed0:	83 e8 01             	sub    $0x1,%eax
 804eed3:	83 c3 68             	add    $0x68,%ebx
 804eed6:	83 f8 ff             	cmp    $0xffffffff,%eax
 804eed9:	0f 84 89 00 00 00    	je     804ef68 <__sfp+0xc8>
 804eedf:	66 83 7b 0c 00       	cmpw   $0x0,0xc(%ebx)
 804eee4:	75 ea                	jne    804eed0 <__sfp+0x30>
 804eee6:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804eeeb:	ba 01 00 00 00       	mov    $0x1,%edx
 804eef0:	66 89 43 0e          	mov    %ax,0xe(%ebx)
 804eef4:	8d 43 5c             	lea    0x5c(%ebx),%eax
 804eef7:	66 89 53 0c          	mov    %dx,0xc(%ebx)
 804eefb:	c7 43 64 00 00 00 00 	movl   $0x0,0x64(%ebx)
 804ef02:	c7 03 00 00 00 00    	movl   $0x0,(%ebx)
 804ef08:	c7 43 08 00 00 00 00 	movl   $0x0,0x8(%ebx)
 804ef0f:	c7 43 04 00 00 00 00 	movl   $0x0,0x4(%ebx)
 804ef16:	c7 43 10 00 00 00 00 	movl   $0x0,0x10(%ebx)
 804ef1d:	c7 43 14 00 00 00 00 	movl   $0x0,0x14(%ebx)
 804ef24:	c7 43 18 00 00 00 00 	movl   $0x0,0x18(%ebx)
 804ef2b:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
 804ef32:	00 
 804ef33:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 804ef3a:	00 
 804ef3b:	89 04 24             	mov    %eax,(%esp)
 804ef3e:	e8 7e a2 ff ff       	call   80491c1 <memset>
 804ef43:	89 d8                	mov    %ebx,%eax
 804ef45:	c7 43 30 00 00 00 00 	movl   $0x0,0x30(%ebx)
 804ef4c:	c7 43 34 00 00 00 00 	movl   $0x0,0x34(%ebx)
 804ef53:	c7 43 44 00 00 00 00 	movl   $0x0,0x44(%ebx)
 804ef5a:	c7 43 48 00 00 00 00 	movl   $0x0,0x48(%ebx)
 804ef61:	83 c4 10             	add    $0x10,%esp
 804ef64:	5b                   	pop    %ebx
 804ef65:	5e                   	pop    %esi
 804ef66:	5d                   	pop    %ebp
 804ef67:	c3                   	ret    
 804ef68:	8b 06                	mov    (%esi),%eax
 804ef6a:	85 c0                	test   %eax,%eax
 804ef6c:	74 17                	je     804ef85 <__sfp+0xe5>
 804ef6e:	89 c6                	mov    %eax,%esi
 804ef70:	e9 4a ff ff ff       	jmp    804eebf <__sfp+0x1f>
 804ef75:	8d 76 00             	lea    0x0(%esi),%esi
 804ef78:	89 34 24             	mov    %esi,(%esp)
 804ef7b:	e8 50 fd ff ff       	call   804ecd0 <__sinit>
 804ef80:	e9 34 ff ff ff       	jmp    804eeb9 <__sfp+0x19>
 804ef85:	8b 45 08             	mov    0x8(%ebp),%eax
 804ef88:	c7 44 24 04 04 00 00 	movl   $0x4,0x4(%esp)
 804ef8f:	00 
 804ef90:	89 04 24             	mov    %eax,(%esp)
 804ef93:	e8 b8 fc ff ff       	call   804ec50 <__sfmoreglue>
 804ef98:	85 c0                	test   %eax,%eax
 804ef9a:	89 06                	mov    %eax,(%esi)
 804ef9c:	75 d0                	jne    804ef6e <__sfp+0xce>
 804ef9e:	8b 45 08             	mov    0x8(%ebp),%eax
 804efa1:	c7 00 0c 00 00 00    	movl   $0xc,(%eax)
 804efa7:	31 c0                	xor    %eax,%eax
 804efa9:	eb b6                	jmp    804ef61 <__sfp+0xc1>
 804efab:	90                   	nop
 804efac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

0804efb0 <__sfp_lock_acquire>:
 804efb0:	55                   	push   %ebp
 804efb1:	89 e5                	mov    %esp,%ebp
 804efb3:	5d                   	pop    %ebp
 804efb4:	c3                   	ret    
 804efb5:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 804efb9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

0804efc0 <__sfp_lock_release>:
 804efc0:	55                   	push   %ebp
 804efc1:	89 e5                	mov    %esp,%ebp
 804efc3:	5d                   	pop    %ebp
 804efc4:	c3                   	ret    
 804efc5:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 804efc9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

0804efd0 <__sinit_lock_acquire>:
 804efd0:	55                   	push   %ebp
 804efd1:	89 e5                	mov    %esp,%ebp
 804efd3:	5d                   	pop    %ebp
 804efd4:	c3                   	ret    
 804efd5:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 804efd9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

0804efe0 <__sinit_lock_release>:
 804efe0:	55                   	push   %ebp
 804efe1:	89 e5                	mov    %esp,%ebp
 804efe3:	5d                   	pop    %ebp
 804efe4:	c3                   	ret    
 804efe5:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 804efe9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

0804eff0 <__fp_lock_all>:
 804eff0:	55                   	push   %ebp
 804eff1:	89 e5                	mov    %esp,%ebp
 804eff3:	83 ec 18             	sub    $0x18,%esp
 804eff6:	e8 75 04 00 00       	call   804f470 <__getreent>
 804effb:	c7 44 24 04 10 ec 04 	movl   $0x804ec10,0x4(%esp)
 804f002:	08 
 804f003:	89 04 24             	mov    %eax,(%esp)
 804f006:	e8 75 03 00 00       	call   804f380 <_fwalk>
 804f00b:	c9                   	leave  
 804f00c:	c3                   	ret    
 804f00d:	8d 76 00             	lea    0x0(%esi),%esi

0804f010 <__fp_unlock_all>:
 804f010:	55                   	push   %ebp
 804f011:	89 e5                	mov    %esp,%ebp
 804f013:	83 ec 18             	sub    $0x18,%esp
 804f016:	e8 55 04 00 00       	call   804f470 <__getreent>
 804f01b:	c7 44 24 04 20 ec 04 	movl   $0x804ec20,0x4(%esp)
 804f022:	08 
 804f023:	89 04 24             	mov    %eax,(%esp)
 804f026:	e8 55 03 00 00       	call   804f380 <_fwalk>
 804f02b:	c9                   	leave  
 804f02c:	c3                   	ret    
 804f02d:	66 90                	xchg   %ax,%ax
 804f02f:	90                   	nop

0804f030 <_malloc_trim_r>:
 804f030:	55                   	push   %ebp
 804f031:	89 e5                	mov    %esp,%ebp
 804f033:	57                   	push   %edi
 804f034:	56                   	push   %esi
 804f035:	53                   	push   %ebx
 804f036:	83 ec 1c             	sub    $0x1c,%esp
 804f039:	8b 75 08             	mov    0x8(%ebp),%esi
 804f03c:	89 34 24             	mov    %esi,(%esp)
 804f03f:	e8 ac 0e 00 00       	call   804fef0 <__malloc_lock>
 804f044:	a1 28 79 05 08       	mov    0x8057928,%eax
 804f049:	8b 58 04             	mov    0x4(%eax),%ebx
 804f04c:	83 e3 fc             	and    $0xfffffffc,%ebx
 804f04f:	89 d8                	mov    %ebx,%eax
 804f051:	2b 45 0c             	sub    0xc(%ebp),%eax
 804f054:	05 ef 0f 00 00       	add    $0xfef,%eax
 804f059:	25 00 f0 ff ff       	and    $0xfffff000,%eax
 804f05e:	8d b8 00 f0 ff ff    	lea    -0x1000(%eax),%edi
 804f064:	81 ff ff 0f 00 00    	cmp    $0xfff,%edi
 804f06a:	7e 1c                	jle    804f088 <_malloc_trim_r+0x58>
 804f06c:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 804f073:	00 
 804f074:	89 34 24             	mov    %esi,(%esp)
 804f077:	e8 74 1c 00 00       	call   8050cf0 <_sbrk_r>
 804f07c:	8b 15 28 79 05 08    	mov    0x8057928,%edx
 804f082:	01 da                	add    %ebx,%edx
 804f084:	39 d0                	cmp    %edx,%eax
 804f086:	74 18                	je     804f0a0 <_malloc_trim_r+0x70>
 804f088:	89 34 24             	mov    %esi,(%esp)
 804f08b:	e8 70 0e 00 00       	call   804ff00 <__malloc_unlock>
 804f090:	83 c4 1c             	add    $0x1c,%esp
 804f093:	31 c0                	xor    %eax,%eax
 804f095:	5b                   	pop    %ebx
 804f096:	5e                   	pop    %esi
 804f097:	5f                   	pop    %edi
 804f098:	5d                   	pop    %ebp
 804f099:	c3                   	ret    
 804f09a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 804f0a0:	89 f8                	mov    %edi,%eax
 804f0a2:	f7 d8                	neg    %eax
 804f0a4:	89 44 24 04          	mov    %eax,0x4(%esp)
 804f0a8:	89 34 24             	mov    %esi,(%esp)
 804f0ab:	e8 40 1c 00 00       	call   8050cf0 <_sbrk_r>
 804f0b0:	83 f8 ff             	cmp    $0xffffffff,%eax
 804f0b3:	74 2b                	je     804f0e0 <_malloc_trim_r+0xb0>
 804f0b5:	a1 28 79 05 08       	mov    0x8057928,%eax
 804f0ba:	29 fb                	sub    %edi,%ebx
 804f0bc:	83 cb 01             	or     $0x1,%ebx
 804f0bf:	29 3d 40 d6 06 08    	sub    %edi,0x806d640
 804f0c5:	89 58 04             	mov    %ebx,0x4(%eax)
 804f0c8:	89 34 24             	mov    %esi,(%esp)
 804f0cb:	e8 30 0e 00 00       	call   804ff00 <__malloc_unlock>
 804f0d0:	83 c4 1c             	add    $0x1c,%esp
 804f0d3:	b8 01 00 00 00       	mov    $0x1,%eax
 804f0d8:	5b                   	pop    %ebx
 804f0d9:	5e                   	pop    %esi
 804f0da:	5f                   	pop    %edi
 804f0db:	5d                   	pop    %ebp
 804f0dc:	c3                   	ret    
 804f0dd:	8d 76 00             	lea    0x0(%esi),%esi
 804f0e0:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 804f0e7:	00 
 804f0e8:	89 34 24             	mov    %esi,(%esp)
 804f0eb:	e8 00 1c 00 00       	call   8050cf0 <_sbrk_r>
 804f0f0:	8b 15 28 79 05 08    	mov    0x8057928,%edx
 804f0f6:	89 c1                	mov    %eax,%ecx
 804f0f8:	29 d1                	sub    %edx,%ecx
 804f0fa:	83 f9 0f             	cmp    $0xf,%ecx
 804f0fd:	7e 89                	jle    804f088 <_malloc_trim_r+0x58>
 804f0ff:	2b 05 00 79 05 08    	sub    0x8057900,%eax
 804f105:	83 c9 01             	or     $0x1,%ecx
 804f108:	89 4a 04             	mov    %ecx,0x4(%edx)
 804f10b:	a3 40 d6 06 08       	mov    %eax,0x806d640
 804f110:	e9 73 ff ff ff       	jmp    804f088 <_malloc_trim_r+0x58>
 804f115:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 804f119:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

0804f120 <_free_r>:
 804f120:	55                   	push   %ebp
 804f121:	89 e5                	mov    %esp,%ebp
 804f123:	57                   	push   %edi
 804f124:	56                   	push   %esi
 804f125:	53                   	push   %ebx
 804f126:	83 ec 1c             	sub    $0x1c,%esp
 804f129:	8b 75 0c             	mov    0xc(%ebp),%esi
 804f12c:	8b 45 08             	mov    0x8(%ebp),%eax
 804f12f:	85 f6                	test   %esi,%esi
 804f131:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 804f134:	0f 84 fe 00 00 00    	je     804f238 <_free_r+0x118>
 804f13a:	89 04 24             	mov    %eax,(%esp)
 804f13d:	e8 ae 0d 00 00       	call   804fef0 <__malloc_lock>
 804f142:	8b 7e fc             	mov    -0x4(%esi),%edi
 804f145:	8d 56 f8             	lea    -0x8(%esi),%edx
 804f148:	89 f8                	mov    %edi,%eax
 804f14a:	83 e0 fe             	and    $0xfffffffe,%eax
 804f14d:	8d 0c 02             	lea    (%edx,%eax,1),%ecx
 804f150:	8b 59 04             	mov    0x4(%ecx),%ebx
 804f153:	83 e3 fc             	and    $0xfffffffc,%ebx
 804f156:	39 0d 28 79 05 08    	cmp    %ecx,0x8057928
 804f15c:	0f 84 0e 01 00 00    	je     804f270 <_free_r+0x150>
 804f162:	83 e7 01             	and    $0x1,%edi
 804f165:	89 59 04             	mov    %ebx,0x4(%ecx)
 804f168:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%ebp)
 804f16f:	75 1f                	jne    804f190 <_free_r+0x70>
 804f171:	8b 76 f8             	mov    -0x8(%esi),%esi
 804f174:	29 f2                	sub    %esi,%edx
 804f176:	01 f0                	add    %esi,%eax
 804f178:	8b 72 08             	mov    0x8(%edx),%esi
 804f17b:	81 fe 28 79 05 08    	cmp    $0x8057928,%esi
 804f181:	0f 84 39 01 00 00    	je     804f2c0 <_free_r+0x1a0>
 804f187:	8b 7a 0c             	mov    0xc(%edx),%edi
 804f18a:	89 7e 0c             	mov    %edi,0xc(%esi)
 804f18d:	89 77 08             	mov    %esi,0x8(%edi)
 804f190:	f6 44 19 04 01       	testb  $0x1,0x4(%ecx,%ebx,1)
 804f195:	75 21                	jne    804f1b8 <_free_r+0x98>
 804f197:	8b 75 e0             	mov    -0x20(%ebp),%esi
 804f19a:	01 d8                	add    %ebx,%eax
 804f19c:	8b 59 08             	mov    0x8(%ecx),%ebx
 804f19f:	85 f6                	test   %esi,%esi
 804f1a1:	75 0c                	jne    804f1af <_free_r+0x8f>
 804f1a3:	81 fb 28 79 05 08    	cmp    $0x8057928,%ebx
 804f1a9:	0f 84 21 01 00 00    	je     804f2d0 <_free_r+0x1b0>
 804f1af:	8b 49 0c             	mov    0xc(%ecx),%ecx
 804f1b2:	89 4b 0c             	mov    %ecx,0xc(%ebx)
 804f1b5:	89 59 08             	mov    %ebx,0x8(%ecx)
 804f1b8:	89 c1                	mov    %eax,%ecx
 804f1ba:	83 c9 01             	or     $0x1,%ecx
 804f1bd:	89 4a 04             	mov    %ecx,0x4(%edx)
 804f1c0:	8b 4d e0             	mov    -0x20(%ebp),%ecx
 804f1c3:	89 04 02             	mov    %eax,(%edx,%eax,1)
 804f1c6:	85 c9                	test   %ecx,%ecx
 804f1c8:	75 56                	jne    804f220 <_free_r+0x100>
 804f1ca:	3d ff 01 00 00       	cmp    $0x1ff,%eax
 804f1cf:	76 6f                	jbe    804f240 <_free_r+0x120>
 804f1d1:	89 c1                	mov    %eax,%ecx
 804f1d3:	c1 e9 09             	shr    $0x9,%ecx
 804f1d6:	83 f9 04             	cmp    $0x4,%ecx
 804f1d9:	0f 87 21 01 00 00    	ja     804f300 <_free_r+0x1e0>
 804f1df:	89 c1                	mov    %eax,%ecx
 804f1e1:	c1 e9 06             	shr    $0x6,%ecx
 804f1e4:	83 c1 38             	add    $0x38,%ecx
 804f1e7:	8d 1c 09             	lea    (%ecx,%ecx,1),%ebx
 804f1ea:	8d 34 9d 20 79 05 08 	lea    0x8057920(,%ebx,4),%esi
 804f1f1:	8b 5e 08             	mov    0x8(%esi),%ebx
 804f1f4:	39 f3                	cmp    %esi,%ebx
 804f1f6:	0f 84 14 01 00 00    	je     804f310 <_free_r+0x1f0>
 804f1fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 804f200:	8b 4b 04             	mov    0x4(%ebx),%ecx
 804f203:	83 e1 fc             	and    $0xfffffffc,%ecx
 804f206:	39 c8                	cmp    %ecx,%eax
 804f208:	73 07                	jae    804f211 <_free_r+0xf1>
 804f20a:	8b 5b 08             	mov    0x8(%ebx),%ebx
 804f20d:	39 de                	cmp    %ebx,%esi
 804f20f:	75 ef                	jne    804f200 <_free_r+0xe0>
 804f211:	8b 43 0c             	mov    0xc(%ebx),%eax
 804f214:	89 42 0c             	mov    %eax,0xc(%edx)
 804f217:	89 5a 08             	mov    %ebx,0x8(%edx)
 804f21a:	89 50 08             	mov    %edx,0x8(%eax)
 804f21d:	89 53 0c             	mov    %edx,0xc(%ebx)
 804f220:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 804f223:	89 45 08             	mov    %eax,0x8(%ebp)
 804f226:	83 c4 1c             	add    $0x1c,%esp
 804f229:	5b                   	pop    %ebx
 804f22a:	5e                   	pop    %esi
 804f22b:	5f                   	pop    %edi
 804f22c:	5d                   	pop    %ebp
 804f22d:	e9 ce 0c 00 00       	jmp    804ff00 <__malloc_unlock>
 804f232:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 804f238:	83 c4 1c             	add    $0x1c,%esp
 804f23b:	5b                   	pop    %ebx
 804f23c:	5e                   	pop    %esi
 804f23d:	5f                   	pop    %edi
 804f23e:	5d                   	pop    %ebp
 804f23f:	c3                   	ret    
 804f240:	c1 e8 03             	shr    $0x3,%eax
 804f243:	bb 01 00 00 00       	mov    $0x1,%ebx
 804f248:	89 c1                	mov    %eax,%ecx
 804f24a:	c1 f9 02             	sar    $0x2,%ecx
 804f24d:	8d 04 c5 20 79 05 08 	lea    0x8057920(,%eax,8),%eax
 804f254:	d3 e3                	shl    %cl,%ebx
 804f256:	8b 48 08             	mov    0x8(%eax),%ecx
 804f259:	09 1d 24 79 05 08    	or     %ebx,0x8057924
 804f25f:	89 42 0c             	mov    %eax,0xc(%edx)
 804f262:	89 4a 08             	mov    %ecx,0x8(%edx)
 804f265:	89 50 08             	mov    %edx,0x8(%eax)
 804f268:	89 51 0c             	mov    %edx,0xc(%ecx)
 804f26b:	eb b3                	jmp    804f220 <_free_r+0x100>
 804f26d:	8d 76 00             	lea    0x0(%esi),%esi
 804f270:	01 d8                	add    %ebx,%eax
 804f272:	83 e7 01             	and    $0x1,%edi
 804f275:	75 13                	jne    804f28a <_free_r+0x16a>
 804f277:	8b 4e f8             	mov    -0x8(%esi),%ecx
 804f27a:	29 ca                	sub    %ecx,%edx
 804f27c:	01 c8                	add    %ecx,%eax
 804f27e:	8b 5a 08             	mov    0x8(%edx),%ebx
 804f281:	8b 4a 0c             	mov    0xc(%edx),%ecx
 804f284:	89 4b 0c             	mov    %ecx,0xc(%ebx)
 804f287:	89 59 08             	mov    %ebx,0x8(%ecx)
 804f28a:	89 c1                	mov    %eax,%ecx
 804f28c:	83 c9 01             	or     $0x1,%ecx
 804f28f:	3b 05 04 79 05 08    	cmp    0x8057904,%eax
 804f295:	89 4a 04             	mov    %ecx,0x4(%edx)
 804f298:	89 15 28 79 05 08    	mov    %edx,0x8057928
 804f29e:	72 80                	jb     804f220 <_free_r+0x100>
 804f2a0:	a1 70 d6 06 08       	mov    0x806d670,%eax
 804f2a5:	89 44 24 04          	mov    %eax,0x4(%esp)
 804f2a9:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 804f2ac:	89 04 24             	mov    %eax,(%esp)
 804f2af:	e8 7c fd ff ff       	call   804f030 <_malloc_trim_r>
 804f2b4:	e9 67 ff ff ff       	jmp    804f220 <_free_r+0x100>
 804f2b9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 804f2c0:	c7 45 e0 01 00 00 00 	movl   $0x1,-0x20(%ebp)
 804f2c7:	e9 c4 fe ff ff       	jmp    804f190 <_free_r+0x70>
 804f2cc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 804f2d0:	89 c1                	mov    %eax,%ecx
 804f2d2:	83 c9 01             	or     $0x1,%ecx
 804f2d5:	89 15 34 79 05 08    	mov    %edx,0x8057934
 804f2db:	89 15 30 79 05 08    	mov    %edx,0x8057930
 804f2e1:	c7 42 0c 28 79 05 08 	movl   $0x8057928,0xc(%edx)
 804f2e8:	c7 42 08 28 79 05 08 	movl   $0x8057928,0x8(%edx)
 804f2ef:	89 4a 04             	mov    %ecx,0x4(%edx)
 804f2f2:	89 04 02             	mov    %eax,(%edx,%eax,1)
 804f2f5:	e9 26 ff ff ff       	jmp    804f220 <_free_r+0x100>
 804f2fa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 804f300:	83 f9 14             	cmp    $0x14,%ecx
 804f303:	77 23                	ja     804f328 <_free_r+0x208>
 804f305:	83 c1 5b             	add    $0x5b,%ecx
 804f308:	8d 1c 09             	lea    (%ecx,%ecx,1),%ebx
 804f30b:	e9 da fe ff ff       	jmp    804f1ea <_free_r+0xca>
 804f310:	c1 f9 02             	sar    $0x2,%ecx
 804f313:	b8 01 00 00 00       	mov    $0x1,%eax
 804f318:	d3 e0                	shl    %cl,%eax
 804f31a:	09 05 24 79 05 08    	or     %eax,0x8057924
 804f320:	89 d8                	mov    %ebx,%eax
 804f322:	e9 ed fe ff ff       	jmp    804f214 <_free_r+0xf4>
 804f327:	90                   	nop
 804f328:	83 f9 54             	cmp    $0x54,%ecx
 804f32b:	77 10                	ja     804f33d <_free_r+0x21d>
 804f32d:	89 c1                	mov    %eax,%ecx
 804f32f:	c1 e9 0c             	shr    $0xc,%ecx
 804f332:	83 c1 6e             	add    $0x6e,%ecx
 804f335:	8d 1c 09             	lea    (%ecx,%ecx,1),%ebx
 804f338:	e9 ad fe ff ff       	jmp    804f1ea <_free_r+0xca>
 804f33d:	81 f9 54 01 00 00    	cmp    $0x154,%ecx
 804f343:	77 10                	ja     804f355 <_free_r+0x235>
 804f345:	89 c1                	mov    %eax,%ecx
 804f347:	c1 e9 0f             	shr    $0xf,%ecx
 804f34a:	83 c1 77             	add    $0x77,%ecx
 804f34d:	8d 1c 09             	lea    (%ecx,%ecx,1),%ebx
 804f350:	e9 95 fe ff ff       	jmp    804f1ea <_free_r+0xca>
 804f355:	81 f9 54 05 00 00    	cmp    $0x554,%ecx
 804f35b:	77 10                	ja     804f36d <_free_r+0x24d>
 804f35d:	89 c1                	mov    %eax,%ecx
 804f35f:	c1 e9 12             	shr    $0x12,%ecx
 804f362:	83 c1 7c             	add    $0x7c,%ecx
 804f365:	8d 1c 09             	lea    (%ecx,%ecx,1),%ebx
 804f368:	e9 7d fe ff ff       	jmp    804f1ea <_free_r+0xca>
 804f36d:	bb fc 00 00 00       	mov    $0xfc,%ebx
 804f372:	b9 7e 00 00 00       	mov    $0x7e,%ecx
 804f377:	e9 6e fe ff ff       	jmp    804f1ea <_free_r+0xca>
 804f37c:	66 90                	xchg   %ax,%ax
 804f37e:	66 90                	xchg   %ax,%ax

0804f380 <_fwalk>:
 804f380:	55                   	push   %ebp
 804f381:	89 e5                	mov    %esp,%ebp
 804f383:	57                   	push   %edi
 804f384:	56                   	push   %esi
 804f385:	53                   	push   %ebx
 804f386:	83 ec 1c             	sub    $0x1c,%esp
 804f389:	8b 75 08             	mov    0x8(%ebp),%esi
 804f38c:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
 804f393:	81 c6 e0 02 00 00    	add    $0x2e0,%esi
 804f399:	74 3d                	je     804f3d8 <_fwalk+0x58>
 804f39b:	90                   	nop
 804f39c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 804f3a0:	8b 7e 04             	mov    0x4(%esi),%edi
 804f3a3:	8b 5e 08             	mov    0x8(%esi),%ebx
 804f3a6:	83 ef 01             	sub    $0x1,%edi
 804f3a9:	78 27                	js     804f3d2 <_fwalk+0x52>
 804f3ab:	90                   	nop
 804f3ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 804f3b0:	66 83 7b 0c 01       	cmpw   $0x1,0xc(%ebx)
 804f3b5:	76 10                	jbe    804f3c7 <_fwalk+0x47>
 804f3b7:	66 83 7b 0e ff       	cmpw   $0xffff,0xe(%ebx)
 804f3bc:	74 09                	je     804f3c7 <_fwalk+0x47>
 804f3be:	89 1c 24             	mov    %ebx,(%esp)
 804f3c1:	ff 55 0c             	call   *0xc(%ebp)
 804f3c4:	09 45 e4             	or     %eax,-0x1c(%ebp)
 804f3c7:	83 ef 01             	sub    $0x1,%edi
 804f3ca:	83 c3 68             	add    $0x68,%ebx
 804f3cd:	83 ff ff             	cmp    $0xffffffff,%edi
 804f3d0:	75 de                	jne    804f3b0 <_fwalk+0x30>
 804f3d2:	8b 36                	mov    (%esi),%esi
 804f3d4:	85 f6                	test   %esi,%esi
 804f3d6:	75 c8                	jne    804f3a0 <_fwalk+0x20>
 804f3d8:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 804f3db:	83 c4 1c             	add    $0x1c,%esp
 804f3de:	5b                   	pop    %ebx
 804f3df:	5e                   	pop    %esi
 804f3e0:	5f                   	pop    %edi
 804f3e1:	5d                   	pop    %ebp
 804f3e2:	c3                   	ret    
 804f3e3:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 804f3e9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

0804f3f0 <_fwalk_reent>:
 804f3f0:	55                   	push   %ebp
 804f3f1:	89 e5                	mov    %esp,%ebp
 804f3f3:	57                   	push   %edi
 804f3f4:	56                   	push   %esi
 804f3f5:	53                   	push   %ebx
 804f3f6:	83 ec 1c             	sub    $0x1c,%esp
 804f3f9:	8b 7d 08             	mov    0x8(%ebp),%edi
 804f3fc:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
 804f403:	81 c7 e0 02 00 00    	add    $0x2e0,%edi
 804f409:	74 4c                	je     804f457 <_fwalk_reent+0x67>
 804f40b:	90                   	nop
 804f40c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 804f410:	8b 77 04             	mov    0x4(%edi),%esi
 804f413:	8b 5f 08             	mov    0x8(%edi),%ebx
 804f416:	83 ee 01             	sub    $0x1,%esi
 804f419:	78 36                	js     804f451 <_fwalk_reent+0x61>
 804f41b:	89 d8                	mov    %ebx,%eax
 804f41d:	89 f3                	mov    %esi,%ebx
 804f41f:	89 c6                	mov    %eax,%esi
 804f421:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 804f428:	66 83 7e 0c 01       	cmpw   $0x1,0xc(%esi)
 804f42d:	76 17                	jbe    804f446 <_fwalk_reent+0x56>
 804f42f:	66 83 7e 0e ff       	cmpw   $0xffff,0xe(%esi)
 804f434:	74 10                	je     804f446 <_fwalk_reent+0x56>
 804f436:	8b 45 08             	mov    0x8(%ebp),%eax
 804f439:	89 74 24 04          	mov    %esi,0x4(%esp)
 804f43d:	89 04 24             	mov    %eax,(%esp)
 804f440:	ff 55 0c             	call   *0xc(%ebp)
 804f443:	09 45 e4             	or     %eax,-0x1c(%ebp)
 804f446:	83 eb 01             	sub    $0x1,%ebx
 804f449:	83 c6 68             	add    $0x68,%esi
 804f44c:	83 fb ff             	cmp    $0xffffffff,%ebx
 804f44f:	75 d7                	jne    804f428 <_fwalk_reent+0x38>
 804f451:	8b 3f                	mov    (%edi),%edi
 804f453:	85 ff                	test   %edi,%edi
 804f455:	75 b9                	jne    804f410 <_fwalk_reent+0x20>
 804f457:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 804f45a:	83 c4 1c             	add    $0x1c,%esp
 804f45d:	5b                   	pop    %ebx
 804f45e:	5e                   	pop    %esi
 804f45f:	5f                   	pop    %edi
 804f460:	5d                   	pop    %ebp
 804f461:	c3                   	ret    
 804f462:	66 90                	xchg   %ax,%ax
 804f464:	66 90                	xchg   %ax,%ax
 804f466:	66 90                	xchg   %ax,%ax
 804f468:	66 90                	xchg   %ax,%ax
 804f46a:	66 90                	xchg   %ax,%ax
 804f46c:	66 90                	xchg   %ax,%ax
 804f46e:	66 90                	xchg   %ax,%ax

0804f470 <__getreent>:
 804f470:	55                   	push   %ebp
 804f471:	a1 20 74 05 08       	mov    0x8057420,%eax
 804f476:	89 e5                	mov    %esp,%ebp
 804f478:	5d                   	pop    %ebp
 804f479:	c3                   	ret    
 804f47a:	66 90                	xchg   %ax,%ax
 804f47c:	66 90                	xchg   %ax,%ax
 804f47e:	66 90                	xchg   %ax,%ax

0804f480 <_setlocale_r>:
 804f480:	55                   	push   %ebp
 804f481:	89 e5                	mov    %esp,%ebp
 804f483:	53                   	push   %ebx
 804f484:	83 ec 14             	sub    $0x14,%esp
 804f487:	8b 5d 10             	mov    0x10(%ebp),%ebx
 804f48a:	85 db                	test   %ebx,%ebx
 804f48c:	74 14                	je     804f4a2 <_setlocale_r+0x22>
 804f48e:	c7 44 24 04 56 4c 05 	movl   $0x8054c56,0x4(%esp)
 804f495:	08 
 804f496:	89 1c 24             	mov    %ebx,(%esp)
 804f499:	e8 42 1a 00 00       	call   8050ee0 <strcmp>
 804f49e:	85 c0                	test   %eax,%eax
 804f4a0:	75 0e                	jne    804f4b0 <_setlocale_r+0x30>
 804f4a2:	83 c4 14             	add    $0x14,%esp
 804f4a5:	b8 54 4c 05 08       	mov    $0x8054c54,%eax
 804f4aa:	5b                   	pop    %ebx
 804f4ab:	5d                   	pop    %ebp
 804f4ac:	c3                   	ret    
 804f4ad:	8d 76 00             	lea    0x0(%esi),%esi
 804f4b0:	c7 44 24 04 54 4c 05 	movl   $0x8054c54,0x4(%esp)
 804f4b7:	08 
 804f4b8:	89 1c 24             	mov    %ebx,(%esp)
 804f4bb:	e8 20 1a 00 00       	call   8050ee0 <strcmp>
 804f4c0:	85 c0                	test   %eax,%eax
 804f4c2:	74 de                	je     804f4a2 <_setlocale_r+0x22>
 804f4c4:	89 1c 24             	mov    %ebx,(%esp)
 804f4c7:	c7 44 24 04 2d 46 05 	movl   $0x805462d,0x4(%esp)
 804f4ce:	08 
 804f4cf:	e8 0c 1a 00 00       	call   8050ee0 <strcmp>
 804f4d4:	89 c2                	mov    %eax,%edx
 804f4d6:	31 c0                	xor    %eax,%eax
 804f4d8:	85 d2                	test   %edx,%edx
 804f4da:	ba 54 4c 05 08       	mov    $0x8054c54,%edx
 804f4df:	0f 44 c2             	cmove  %edx,%eax
 804f4e2:	83 c4 14             	add    $0x14,%esp
 804f4e5:	5b                   	pop    %ebx
 804f4e6:	5d                   	pop    %ebp
 804f4e7:	c3                   	ret    
 804f4e8:	90                   	nop
 804f4e9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

0804f4f0 <__locale_charset>:
 804f4f0:	55                   	push   %ebp
 804f4f1:	b8 a0 78 05 08       	mov    $0x80578a0,%eax
 804f4f6:	89 e5                	mov    %esp,%ebp
 804f4f8:	5d                   	pop    %ebp
 804f4f9:	c3                   	ret    
 804f4fa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

0804f500 <__locale_mb_cur_max>:
 804f500:	55                   	push   %ebp
 804f501:	a1 f8 78 05 08       	mov    0x80578f8,%eax
 804f506:	89 e5                	mov    %esp,%ebp
 804f508:	5d                   	pop    %ebp
 804f509:	c3                   	ret    
 804f50a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

0804f510 <__locale_msgcharset>:
 804f510:	55                   	push   %ebp
 804f511:	b8 80 78 05 08       	mov    $0x8057880,%eax
 804f516:	89 e5                	mov    %esp,%ebp
 804f518:	5d                   	pop    %ebp
 804f519:	c3                   	ret    
 804f51a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

0804f520 <__locale_cjk_lang>:
 804f520:	55                   	push   %ebp
 804f521:	31 c0                	xor    %eax,%eax
 804f523:	89 e5                	mov    %esp,%ebp
 804f525:	5d                   	pop    %ebp
 804f526:	c3                   	ret    
 804f527:	89 f6                	mov    %esi,%esi
 804f529:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

0804f530 <_localeconv_r>:
 804f530:	55                   	push   %ebp
 804f531:	b8 c0 78 05 08       	mov    $0x80578c0,%eax
 804f536:	89 e5                	mov    %esp,%ebp
 804f538:	5d                   	pop    %ebp
 804f539:	c3                   	ret    
 804f53a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

0804f540 <setlocale>:
 804f540:	55                   	push   %ebp
 804f541:	89 e5                	mov    %esp,%ebp
 804f543:	83 ec 18             	sub    $0x18,%esp
 804f546:	e8 25 ff ff ff       	call   804f470 <__getreent>
 804f54b:	8b 55 0c             	mov    0xc(%ebp),%edx
 804f54e:	89 54 24 08          	mov    %edx,0x8(%esp)
 804f552:	8b 55 08             	mov    0x8(%ebp),%edx
 804f555:	89 04 24             	mov    %eax,(%esp)
 804f558:	89 54 24 04          	mov    %edx,0x4(%esp)
 804f55c:	e8 1f ff ff ff       	call   804f480 <_setlocale_r>
 804f561:	c9                   	leave  
 804f562:	c3                   	ret    
 804f563:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 804f569:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

0804f570 <localeconv>:
 804f570:	55                   	push   %ebp
 804f571:	89 e5                	mov    %esp,%ebp
 804f573:	83 ec 08             	sub    $0x8,%esp
 804f576:	e8 f5 fe ff ff       	call   804f470 <__getreent>
 804f57b:	b8 c0 78 05 08       	mov    $0x80578c0,%eax
 804f580:	c9                   	leave  
 804f581:	c3                   	ret    
 804f582:	66 90                	xchg   %ax,%ax
 804f584:	66 90                	xchg   %ax,%ax
 804f586:	66 90                	xchg   %ax,%ax
 804f588:	66 90                	xchg   %ax,%ax
 804f58a:	66 90                	xchg   %ax,%ax
 804f58c:	66 90                	xchg   %ax,%ax
 804f58e:	66 90                	xchg   %ax,%ax

0804f590 <__smakebuf_r>:
 804f590:	55                   	push   %ebp
 804f591:	89 e5                	mov    %esp,%ebp
 804f593:	57                   	push   %edi
 804f594:	56                   	push   %esi
 804f595:	53                   	push   %ebx
 804f596:	83 ec 5c             	sub    $0x5c,%esp
 804f599:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 804f59c:	0f b7 43 0c          	movzwl 0xc(%ebx),%eax
 804f5a0:	a8 02                	test   $0x2,%al
 804f5a2:	0f 85 c0 00 00 00    	jne    804f668 <__smakebuf_r+0xd8>
 804f5a8:	0f bf 53 0e          	movswl 0xe(%ebx),%edx
 804f5ac:	66 85 d2             	test   %dx,%dx
 804f5af:	78 4b                	js     804f5fc <__smakebuf_r+0x6c>
 804f5b1:	8d 45 ac             	lea    -0x54(%ebp),%eax
 804f5b4:	89 44 24 08          	mov    %eax,0x8(%esp)
 804f5b8:	8b 45 08             	mov    0x8(%ebp),%eax
 804f5bb:	89 54 24 04          	mov    %edx,0x4(%esp)
 804f5bf:	89 04 24             	mov    %eax,(%esp)
 804f5c2:	e8 39 3f 00 00       	call   8053500 <_fstat_r>
 804f5c7:	85 c0                	test   %eax,%eax
 804f5c9:	78 2d                	js     804f5f8 <__smakebuf_r+0x68>
 804f5cb:	8b 45 b0             	mov    -0x50(%ebp),%eax
 804f5ce:	31 c9                	xor    %ecx,%ecx
 804f5d0:	25 00 f0 00 00       	and    $0xf000,%eax
 804f5d5:	3d 00 20 00 00       	cmp    $0x2000,%eax
 804f5da:	0f 94 c1             	sete   %cl
 804f5dd:	3d 00 80 00 00       	cmp    $0x8000,%eax
 804f5e2:	89 cf                	mov    %ecx,%edi
 804f5e4:	0f 84 96 00 00 00    	je     804f680 <__smakebuf_r+0xf0>
 804f5ea:	66 81 4b 0c 00 08    	orw    $0x800,0xc(%ebx)
 804f5f0:	be 00 04 00 00       	mov    $0x400,%esi
 804f5f5:	eb 24                	jmp    804f61b <__smakebuf_r+0x8b>
 804f5f7:	90                   	nop
 804f5f8:	0f b7 43 0c          	movzwl 0xc(%ebx),%eax
 804f5fc:	89 c2                	mov    %eax,%edx
 804f5fe:	66 81 e2 80 00       	and    $0x80,%dx
 804f603:	66 83 fa 01          	cmp    $0x1,%dx
 804f607:	19 f6                	sbb    %esi,%esi
 804f609:	80 cc 08             	or     $0x8,%ah
 804f60c:	81 e6 c0 03 00 00    	and    $0x3c0,%esi
 804f612:	31 ff                	xor    %edi,%edi
 804f614:	83 c6 40             	add    $0x40,%esi
 804f617:	66 89 43 0c          	mov    %ax,0xc(%ebx)
 804f61b:	8b 45 08             	mov    0x8(%ebp),%eax
 804f61e:	89 74 24 04          	mov    %esi,0x4(%esp)
 804f622:	89 04 24             	mov    %eax,(%esp)
 804f625:	e8 a6 00 00 00       	call   804f6d0 <_malloc_r>
 804f62a:	85 c0                	test   %eax,%eax
 804f62c:	74 2a                	je     804f658 <__smakebuf_r+0xc8>
 804f62e:	8b 4d 08             	mov    0x8(%ebp),%ecx
 804f631:	c7 41 3c 30 ec 04 08 	movl   $0x804ec30,0x3c(%ecx)
 804f638:	66 81 4b 0c 80 00    	orw    $0x80,0xc(%ebx)
 804f63e:	85 ff                	test   %edi,%edi
 804f640:	89 03                	mov    %eax,(%ebx)
 804f642:	89 43 10             	mov    %eax,0x10(%ebx)
 804f645:	89 73 14             	mov    %esi,0x14(%ebx)
 804f648:	75 5e                	jne    804f6a8 <__smakebuf_r+0x118>
 804f64a:	83 c4 5c             	add    $0x5c,%esp
 804f64d:	5b                   	pop    %ebx
 804f64e:	5e                   	pop    %esi
 804f64f:	5f                   	pop    %edi
 804f650:	5d                   	pop    %ebp
 804f651:	c3                   	ret    
 804f652:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 804f658:	0f b7 43 0c          	movzwl 0xc(%ebx),%eax
 804f65c:	f6 c4 02             	test   $0x2,%ah
 804f65f:	75 e9                	jne    804f64a <__smakebuf_r+0xba>
 804f661:	83 c8 02             	or     $0x2,%eax
 804f664:	66 89 43 0c          	mov    %ax,0xc(%ebx)
 804f668:	8d 43 43             	lea    0x43(%ebx),%eax
 804f66b:	89 03                	mov    %eax,(%ebx)
 804f66d:	89 43 10             	mov    %eax,0x10(%ebx)
 804f670:	c7 43 14 01 00 00 00 	movl   $0x1,0x14(%ebx)
 804f677:	83 c4 5c             	add    $0x5c,%esp
 804f67a:	5b                   	pop    %ebx
 804f67b:	5e                   	pop    %esi
 804f67c:	5f                   	pop    %edi
 804f67d:	5d                   	pop    %ebp
 804f67e:	c3                   	ret    
 804f67f:	90                   	nop
 804f680:	81 7b 28 70 0e 05 08 	cmpl   $0x8050e70,0x28(%ebx)
 804f687:	0f 85 5d ff ff ff    	jne    804f5ea <__smakebuf_r+0x5a>
 804f68d:	66 81 4b 0c 00 04    	orw    $0x400,0xc(%ebx)
 804f693:	be 00 04 00 00       	mov    $0x400,%esi
 804f698:	c7 43 4c 00 04 00 00 	movl   $0x400,0x4c(%ebx)
 804f69f:	e9 77 ff ff ff       	jmp    804f61b <__smakebuf_r+0x8b>
 804f6a4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 804f6a8:	0f bf 43 0e          	movswl 0xe(%ebx),%eax
 804f6ac:	89 0c 24             	mov    %ecx,(%esp)
 804f6af:	89 44 24 04          	mov    %eax,0x4(%esp)
 804f6b3:	e8 68 43 00 00       	call   8053a20 <_isatty_r>
 804f6b8:	85 c0                	test   %eax,%eax
 804f6ba:	74 8e                	je     804f64a <__smakebuf_r+0xba>
 804f6bc:	66 83 4b 0c 01       	orw    $0x1,0xc(%ebx)
 804f6c1:	eb 87                	jmp    804f64a <__smakebuf_r+0xba>
 804f6c3:	66 90                	xchg   %ax,%ax
 804f6c5:	66 90                	xchg   %ax,%ax
 804f6c7:	66 90                	xchg   %ax,%ax
 804f6c9:	66 90                	xchg   %ax,%ax
 804f6cb:	66 90                	xchg   %ax,%ax
 804f6cd:	66 90                	xchg   %ax,%ax
 804f6cf:	90                   	nop

0804f6d0 <_malloc_r>:
 804f6d0:	55                   	push   %ebp
 804f6d1:	89 e5                	mov    %esp,%ebp
 804f6d3:	57                   	push   %edi
 804f6d4:	56                   	push   %esi
 804f6d5:	53                   	push   %ebx
 804f6d6:	83 ec 2c             	sub    $0x2c,%esp
 804f6d9:	8b 45 0c             	mov    0xc(%ebp),%eax
 804f6dc:	8d 50 0b             	lea    0xb(%eax),%edx
 804f6df:	83 fa 16             	cmp    $0x16,%edx
 804f6e2:	76 6c                	jbe    804f750 <_malloc_r+0x80>
 804f6e4:	89 d7                	mov    %edx,%edi
 804f6e6:	83 e7 f8             	and    $0xfffffff8,%edi
 804f6e9:	89 fe                	mov    %edi,%esi
 804f6eb:	c1 ee 1f             	shr    $0x1f,%esi
 804f6ee:	39 c7                	cmp    %eax,%edi
 804f6f0:	8b 45 08             	mov    0x8(%ebp),%eax
 804f6f3:	89 f2                	mov    %esi,%edx
 804f6f5:	72 67                	jb     804f75e <_malloc_r+0x8e>
 804f6f7:	84 d2                	test   %dl,%dl
 804f6f9:	75 63                	jne    804f75e <_malloc_r+0x8e>
 804f6fb:	89 04 24             	mov    %eax,(%esp)
 804f6fe:	e8 ed 07 00 00       	call   804fef0 <__malloc_lock>
 804f703:	81 ff f7 01 00 00    	cmp    $0x1f7,%edi
 804f709:	77 65                	ja     804f770 <_malloc_r+0xa0>
 804f70b:	89 fa                	mov    %edi,%edx
 804f70d:	c1 ea 03             	shr    $0x3,%edx
 804f710:	8d 04 d5 20 79 05 08 	lea    0x8057920(,%edx,8),%eax
 804f717:	8b 58 0c             	mov    0xc(%eax),%ebx
 804f71a:	39 c3                	cmp    %eax,%ebx
 804f71c:	0f 84 3e 05 00 00    	je     804fc60 <_malloc_r+0x590>
 804f722:	8b 43 04             	mov    0x4(%ebx),%eax
 804f725:	83 e0 fc             	and    $0xfffffffc,%eax
 804f728:	8b 53 0c             	mov    0xc(%ebx),%edx
 804f72b:	8b 4b 08             	mov    0x8(%ebx),%ecx
 804f72e:	89 51 0c             	mov    %edx,0xc(%ecx)
 804f731:	89 4a 08             	mov    %ecx,0x8(%edx)
 804f734:	83 4c 03 04 01       	orl    $0x1,0x4(%ebx,%eax,1)
 804f739:	8b 45 08             	mov    0x8(%ebp),%eax
 804f73c:	89 04 24             	mov    %eax,(%esp)
 804f73f:	e8 bc 07 00 00       	call   804ff00 <__malloc_unlock>
 804f744:	8d 43 08             	lea    0x8(%ebx),%eax
 804f747:	83 c4 2c             	add    $0x2c,%esp
 804f74a:	5b                   	pop    %ebx
 804f74b:	5e                   	pop    %esi
 804f74c:	5f                   	pop    %edi
 804f74d:	5d                   	pop    %ebp
 804f74e:	c3                   	ret    
 804f74f:	90                   	nop
 804f750:	bf 10 00 00 00       	mov    $0x10,%edi
 804f755:	31 d2                	xor    %edx,%edx
 804f757:	39 c7                	cmp    %eax,%edi
 804f759:	8b 45 08             	mov    0x8(%ebp),%eax
 804f75c:	73 99                	jae    804f6f7 <_malloc_r+0x27>
 804f75e:	c7 00 0c 00 00 00    	movl   $0xc,(%eax)
 804f764:	83 c4 2c             	add    $0x2c,%esp
 804f767:	31 c0                	xor    %eax,%eax
 804f769:	5b                   	pop    %ebx
 804f76a:	5e                   	pop    %esi
 804f76b:	5f                   	pop    %edi
 804f76c:	5d                   	pop    %ebp
 804f76d:	c3                   	ret    
 804f76e:	66 90                	xchg   %ax,%ax
 804f770:	89 fe                	mov    %edi,%esi
 804f772:	c1 ee 09             	shr    $0x9,%esi
 804f775:	85 f6                	test   %esi,%esi
 804f777:	0f 84 ab 01 00 00    	je     804f928 <_malloc_r+0x258>
 804f77d:	83 fe 04             	cmp    $0x4,%esi
 804f780:	0f 87 8a 03 00 00    	ja     804fb10 <_malloc_r+0x440>
 804f786:	89 fe                	mov    %edi,%esi
 804f788:	c1 ee 06             	shr    $0x6,%esi
 804f78b:	83 c6 38             	add    $0x38,%esi
 804f78e:	8d 04 36             	lea    (%esi,%esi,1),%eax
 804f791:	8d 0c 85 20 79 05 08 	lea    0x8057920(,%eax,4),%ecx
 804f798:	8b 59 0c             	mov    0xc(%ecx),%ebx
 804f79b:	39 d9                	cmp    %ebx,%ecx
 804f79d:	75 18                	jne    804f7b7 <_malloc_r+0xe7>
 804f79f:	eb 28                	jmp    804f7c9 <_malloc_r+0xf9>
 804f7a1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 804f7a8:	85 d2                	test   %edx,%edx
 804f7aa:	0f 89 78 ff ff ff    	jns    804f728 <_malloc_r+0x58>
 804f7b0:	8b 5b 0c             	mov    0xc(%ebx),%ebx
 804f7b3:	39 d9                	cmp    %ebx,%ecx
 804f7b5:	74 12                	je     804f7c9 <_malloc_r+0xf9>
 804f7b7:	8b 43 04             	mov    0x4(%ebx),%eax
 804f7ba:	83 e0 fc             	and    $0xfffffffc,%eax
 804f7bd:	89 c2                	mov    %eax,%edx
 804f7bf:	29 fa                	sub    %edi,%edx
 804f7c1:	83 fa 0f             	cmp    $0xf,%edx
 804f7c4:	7e e2                	jle    804f7a8 <_malloc_r+0xd8>
 804f7c6:	83 ee 01             	sub    $0x1,%esi
 804f7c9:	8d 46 01             	lea    0x1(%esi),%eax
 804f7cc:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 804f7cf:	8b 1d 30 79 05 08    	mov    0x8057930,%ebx
 804f7d5:	a1 24 79 05 08       	mov    0x8057924,%eax
 804f7da:	81 fb 28 79 05 08    	cmp    $0x8057928,%ebx
 804f7e0:	74 6b                	je     804f84d <_malloc_r+0x17d>
 804f7e2:	8b 73 04             	mov    0x4(%ebx),%esi
 804f7e5:	83 e6 fc             	and    $0xfffffffc,%esi
 804f7e8:	89 f0                	mov    %esi,%eax
 804f7ea:	29 f8                	sub    %edi,%eax
 804f7ec:	83 f8 0f             	cmp    $0xf,%eax
 804f7ef:	0f 8f a3 03 00 00    	jg     804fb98 <_malloc_r+0x4c8>
 804f7f5:	85 c0                	test   %eax,%eax
 804f7f7:	c7 05 34 79 05 08 28 	movl   $0x8057928,0x8057934
 804f7fe:	79 05 08 
 804f801:	c7 05 30 79 05 08 28 	movl   $0x8057928,0x8057930
 804f808:	79 05 08 
 804f80b:	0f 89 27 01 00 00    	jns    804f938 <_malloc_r+0x268>
 804f811:	81 fe ff 01 00 00    	cmp    $0x1ff,%esi
 804f817:	0f 87 1b 03 00 00    	ja     804fb38 <_malloc_r+0x468>
 804f81d:	c1 ee 03             	shr    $0x3,%esi
 804f820:	b8 01 00 00 00       	mov    $0x1,%eax
 804f825:	89 f1                	mov    %esi,%ecx
 804f827:	8d 14 f5 20 79 05 08 	lea    0x8057920(,%esi,8),%edx
 804f82e:	c1 f9 02             	sar    $0x2,%ecx
 804f831:	d3 e0                	shl    %cl,%eax
 804f833:	8b 4a 08             	mov    0x8(%edx),%ecx
 804f836:	0b 05 24 79 05 08    	or     0x8057924,%eax
 804f83c:	89 53 0c             	mov    %edx,0xc(%ebx)
 804f83f:	89 4b 08             	mov    %ecx,0x8(%ebx)
 804f842:	a3 24 79 05 08       	mov    %eax,0x8057924
 804f847:	89 5a 08             	mov    %ebx,0x8(%edx)
 804f84a:	89 59 0c             	mov    %ebx,0xc(%ecx)
 804f84d:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
 804f850:	be 01 00 00 00       	mov    $0x1,%esi
 804f855:	c1 f9 02             	sar    $0x2,%ecx
 804f858:	d3 e6                	shl    %cl,%esi
 804f85a:	39 c6                	cmp    %eax,%esi
 804f85c:	0f 87 f6 00 00 00    	ja     804f958 <_malloc_r+0x288>
 804f862:	85 f0                	test   %esi,%eax
 804f864:	0f 85 76 03 00 00    	jne    804fbe0 <_malloc_r+0x510>
 804f86a:	8b 55 e4             	mov    -0x1c(%ebp),%edx
 804f86d:	01 f6                	add    %esi,%esi
 804f86f:	83 e2 fc             	and    $0xfffffffc,%edx
 804f872:	85 f0                	test   %esi,%eax
 804f874:	8d 4a 04             	lea    0x4(%edx),%ecx
 804f877:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
 804f87a:	0f 85 60 03 00 00    	jne    804fbe0 <_malloc_r+0x510>
 804f880:	89 ca                	mov    %ecx,%edx
 804f882:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 804f888:	01 f6                	add    %esi,%esi
 804f88a:	83 c2 04             	add    $0x4,%edx
 804f88d:	85 f0                	test   %esi,%eax
 804f88f:	74 f7                	je     804f888 <_malloc_r+0x1b8>
 804f891:	89 55 e4             	mov    %edx,-0x1c(%ebp)
 804f894:	89 75 dc             	mov    %esi,-0x24(%ebp)
 804f897:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 804f89a:	8d 34 c5 20 79 05 08 	lea    0x8057920(,%eax,8),%esi
 804f8a1:	89 f1                	mov    %esi,%ecx
 804f8a3:	89 45 e0             	mov    %eax,-0x20(%ebp)
 804f8a6:	8b 59 0c             	mov    0xc(%ecx),%ebx
 804f8a9:	39 d9                	cmp    %ebx,%ecx
 804f8ab:	75 1e                	jne    804f8cb <_malloc_r+0x1fb>
 804f8ad:	e9 36 03 00 00       	jmp    804fbe8 <_malloc_r+0x518>
 804f8b2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 804f8b8:	85 d2                	test   %edx,%edx
 804f8ba:	0f 89 c0 03 00 00    	jns    804fc80 <_malloc_r+0x5b0>
 804f8c0:	8b 5b 0c             	mov    0xc(%ebx),%ebx
 804f8c3:	39 d9                	cmp    %ebx,%ecx
 804f8c5:	0f 84 1d 03 00 00    	je     804fbe8 <_malloc_r+0x518>
 804f8cb:	8b 43 04             	mov    0x4(%ebx),%eax
 804f8ce:	83 e0 fc             	and    $0xfffffffc,%eax
 804f8d1:	89 c2                	mov    %eax,%edx
 804f8d3:	29 fa                	sub    %edi,%edx
 804f8d5:	83 fa 0f             	cmp    $0xf,%edx
 804f8d8:	7e de                	jle    804f8b8 <_malloc_r+0x1e8>
 804f8da:	8b 4b 0c             	mov    0xc(%ebx),%ecx
 804f8dd:	8d 04 3b             	lea    (%ebx,%edi,1),%eax
 804f8e0:	83 cf 01             	or     $0x1,%edi
 804f8e3:	8b 73 08             	mov    0x8(%ebx),%esi
 804f8e6:	89 7b 04             	mov    %edi,0x4(%ebx)
 804f8e9:	89 4e 0c             	mov    %ecx,0xc(%esi)
 804f8ec:	89 71 08             	mov    %esi,0x8(%ecx)
 804f8ef:	89 d1                	mov    %edx,%ecx
 804f8f1:	83 c9 01             	or     $0x1,%ecx
 804f8f4:	a3 34 79 05 08       	mov    %eax,0x8057934
 804f8f9:	a3 30 79 05 08       	mov    %eax,0x8057930
 804f8fe:	c7 40 0c 28 79 05 08 	movl   $0x8057928,0xc(%eax)
 804f905:	c7 40 08 28 79 05 08 	movl   $0x8057928,0x8(%eax)
 804f90c:	89 48 04             	mov    %ecx,0x4(%eax)
 804f90f:	89 14 10             	mov    %edx,(%eax,%edx,1)
 804f912:	8b 45 08             	mov    0x8(%ebp),%eax
 804f915:	89 04 24             	mov    %eax,(%esp)
 804f918:	e8 e3 05 00 00       	call   804ff00 <__malloc_unlock>
 804f91d:	8d 43 08             	lea    0x8(%ebx),%eax
 804f920:	e9 22 fe ff ff       	jmp    804f747 <_malloc_r+0x77>
 804f925:	8d 76 00             	lea    0x0(%esi),%esi
 804f928:	b8 7e 00 00 00       	mov    $0x7e,%eax
 804f92d:	be 3f 00 00 00       	mov    $0x3f,%esi
 804f932:	e9 5a fe ff ff       	jmp    804f791 <_malloc_r+0xc1>
 804f937:	90                   	nop
 804f938:	8b 45 08             	mov    0x8(%ebp),%eax
 804f93b:	83 4c 33 04 01       	orl    $0x1,0x4(%ebx,%esi,1)
 804f940:	89 04 24             	mov    %eax,(%esp)
 804f943:	e8 b8 05 00 00       	call   804ff00 <__malloc_unlock>
 804f948:	83 c4 2c             	add    $0x2c,%esp
 804f94b:	8d 43 08             	lea    0x8(%ebx),%eax
 804f94e:	5b                   	pop    %ebx
 804f94f:	5e                   	pop    %esi
 804f950:	5f                   	pop    %edi
 804f951:	5d                   	pop    %ebp
 804f952:	c3                   	ret    
 804f953:	90                   	nop
 804f954:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 804f958:	8b 1d 28 79 05 08    	mov    0x8057928,%ebx
 804f95e:	8b 73 04             	mov    0x4(%ebx),%esi
 804f961:	83 e6 fc             	and    $0xfffffffc,%esi
 804f964:	39 f7                	cmp    %esi,%edi
 804f966:	77 0d                	ja     804f975 <_malloc_r+0x2a5>
 804f968:	89 f0                	mov    %esi,%eax
 804f96a:	29 f8                	sub    %edi,%eax
 804f96c:	83 f8 0f             	cmp    $0xf,%eax
 804f96f:	0f 8f 6b 01 00 00    	jg     804fae0 <_malloc_r+0x410>
 804f975:	8b 0d 70 d6 06 08    	mov    0x806d670,%ecx
 804f97b:	8d 04 33             	lea    (%ebx,%esi,1),%eax
 804f97e:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 804f981:	01 f9                	add    %edi,%ecx
 804f983:	8d 81 0f 10 00 00    	lea    0x100f(%ecx),%eax
 804f989:	83 c1 10             	add    $0x10,%ecx
 804f98c:	25 00 f0 ff ff       	and    $0xfffff000,%eax
 804f991:	83 3d 00 79 05 08 ff 	cmpl   $0xffffffff,0x8057900
 804f998:	0f 44 c1             	cmove  %ecx,%eax
 804f99b:	89 45 e0             	mov    %eax,-0x20(%ebp)
 804f99e:	89 44 24 04          	mov    %eax,0x4(%esp)
 804f9a2:	8b 45 08             	mov    0x8(%ebp),%eax
 804f9a5:	89 04 24             	mov    %eax,(%esp)
 804f9a8:	e8 43 13 00 00       	call   8050cf0 <_sbrk_r>
 804f9ad:	83 f8 ff             	cmp    $0xffffffff,%eax
 804f9b0:	89 c1                	mov    %eax,%ecx
 804f9b2:	0f 84 17 03 00 00    	je     804fccf <_malloc_r+0x5ff>
 804f9b8:	39 45 e4             	cmp    %eax,-0x1c(%ebp)
 804f9bb:	0f 87 02 03 00 00    	ja     804fcc3 <_malloc_r+0x5f3>
 804f9c1:	8b 55 e0             	mov    -0x20(%ebp),%edx
 804f9c4:	03 15 40 d6 06 08    	add    0x806d640,%edx
 804f9ca:	39 4d e4             	cmp    %ecx,-0x1c(%ebp)
 804f9cd:	89 15 40 d6 06 08    	mov    %edx,0x806d640
 804f9d3:	0f 84 a9 03 00 00    	je     804fd82 <_malloc_r+0x6b2>
 804f9d9:	83 3d 00 79 05 08 ff 	cmpl   $0xffffffff,0x8057900
 804f9e0:	0f 84 ca 03 00 00    	je     804fdb0 <_malloc_r+0x6e0>
 804f9e6:	89 c8                	mov    %ecx,%eax
 804f9e8:	2b 45 e4             	sub    -0x1c(%ebp),%eax
 804f9eb:	01 d0                	add    %edx,%eax
 804f9ed:	a3 40 d6 06 08       	mov    %eax,0x806d640
 804f9f2:	89 c8                	mov    %ecx,%eax
 804f9f4:	ba 00 10 00 00       	mov    $0x1000,%edx
 804f9f9:	83 e0 07             	and    $0x7,%eax
 804f9fc:	74 0c                	je     804fa0a <_malloc_r+0x33a>
 804f9fe:	29 c1                	sub    %eax,%ecx
 804fa00:	ba 08 10 00 00       	mov    $0x1008,%edx
 804fa05:	8d 49 08             	lea    0x8(%ecx),%ecx
 804fa08:	29 c2                	sub    %eax,%edx
 804fa0a:	8b 45 e0             	mov    -0x20(%ebp),%eax
 804fa0d:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
 804fa10:	01 c8                	add    %ecx,%eax
 804fa12:	25 ff 0f 00 00       	and    $0xfff,%eax
 804fa17:	29 c2                	sub    %eax,%edx
 804fa19:	8b 45 08             	mov    0x8(%ebp),%eax
 804fa1c:	89 54 24 04          	mov    %edx,0x4(%esp)
 804fa20:	89 55 e0             	mov    %edx,-0x20(%ebp)
 804fa23:	89 04 24             	mov    %eax,(%esp)
 804fa26:	e8 c5 12 00 00       	call   8050cf0 <_sbrk_r>
 804fa2b:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
 804fa2e:	83 f8 ff             	cmp    $0xffffffff,%eax
 804fa31:	0f 84 6d 03 00 00    	je     804fda4 <_malloc_r+0x6d4>
 804fa37:	8b 55 e0             	mov    -0x20(%ebp),%edx
 804fa3a:	29 c8                	sub    %ecx,%eax
 804fa3c:	01 d0                	add    %edx,%eax
 804fa3e:	83 c8 01             	or     $0x1,%eax
 804fa41:	03 15 40 d6 06 08    	add    0x806d640,%edx
 804fa47:	81 fb 20 79 05 08    	cmp    $0x8057920,%ebx
 804fa4d:	89 0d 28 79 05 08    	mov    %ecx,0x8057928
 804fa53:	89 41 04             	mov    %eax,0x4(%ecx)
 804fa56:	89 15 40 d6 06 08    	mov    %edx,0x806d640
 804fa5c:	0f 84 f2 02 00 00    	je     804fd54 <_malloc_r+0x684>
 804fa62:	83 fe 0f             	cmp    $0xf,%esi
 804fa65:	0f 86 8d 02 00 00    	jbe    804fcf8 <_malloc_r+0x628>
 804fa6b:	8b 43 04             	mov    0x4(%ebx),%eax
 804fa6e:	83 ee 0c             	sub    $0xc,%esi
 804fa71:	83 e6 f8             	and    $0xfffffff8,%esi
 804fa74:	83 e0 01             	and    $0x1,%eax
 804fa77:	09 f0                	or     %esi,%eax
 804fa79:	83 fe 0f             	cmp    $0xf,%esi
 804fa7c:	89 43 04             	mov    %eax,0x4(%ebx)
 804fa7f:	a1 28 79 05 08       	mov    0x8057928,%eax
 804fa84:	c7 44 33 04 05 00 00 	movl   $0x5,0x4(%ebx,%esi,1)
 804fa8b:	00 
 804fa8c:	c7 44 33 08 05 00 00 	movl   $0x5,0x8(%ebx,%esi,1)
 804fa93:	00 
 804fa94:	0f 87 a2 02 00 00    	ja     804fd3c <_malloc_r+0x66c>
 804fa9a:	3b 15 6c d6 06 08    	cmp    0x806d66c,%edx
 804faa0:	76 06                	jbe    804faa8 <_malloc_r+0x3d8>
 804faa2:	89 15 6c d6 06 08    	mov    %edx,0x806d66c
 804faa8:	3b 15 68 d6 06 08    	cmp    0x806d668,%edx
 804faae:	76 06                	jbe    804fab6 <_malloc_r+0x3e6>
 804fab0:	89 15 68 d6 06 08    	mov    %edx,0x806d668
 804fab6:	8b 50 04             	mov    0x4(%eax),%edx
 804fab9:	89 c3                	mov    %eax,%ebx
 804fabb:	83 e2 fc             	and    $0xfffffffc,%edx
 804fabe:	89 d0                	mov    %edx,%eax
 804fac0:	29 f8                	sub    %edi,%eax
 804fac2:	39 d7                	cmp    %edx,%edi
 804fac4:	77 05                	ja     804facb <_malloc_r+0x3fb>
 804fac6:	83 f8 0f             	cmp    $0xf,%eax
 804fac9:	7f 15                	jg     804fae0 <_malloc_r+0x410>
 804facb:	8b 45 08             	mov    0x8(%ebp),%eax
 804face:	89 04 24             	mov    %eax,(%esp)
 804fad1:	e8 2a 04 00 00       	call   804ff00 <__malloc_unlock>
 804fad6:	31 c0                	xor    %eax,%eax
 804fad8:	e9 6a fc ff ff       	jmp    804f747 <_malloc_r+0x77>
 804fadd:	8d 76 00             	lea    0x0(%esi),%esi
 804fae0:	89 fa                	mov    %edi,%edx
 804fae2:	83 c8 01             	or     $0x1,%eax
 804fae5:	83 ca 01             	or     $0x1,%edx
 804fae8:	89 53 04             	mov    %edx,0x4(%ebx)
 804faeb:	8d 14 3b             	lea    (%ebx,%edi,1),%edx
 804faee:	89 15 28 79 05 08    	mov    %edx,0x8057928
 804faf4:	89 42 04             	mov    %eax,0x4(%edx)
 804faf7:	8b 45 08             	mov    0x8(%ebp),%eax
 804fafa:	89 04 24             	mov    %eax,(%esp)
 804fafd:	e8 fe 03 00 00       	call   804ff00 <__malloc_unlock>
 804fb02:	83 c4 2c             	add    $0x2c,%esp
 804fb05:	8d 43 08             	lea    0x8(%ebx),%eax
 804fb08:	5b                   	pop    %ebx
 804fb09:	5e                   	pop    %esi
 804fb0a:	5f                   	pop    %edi
 804fb0b:	5d                   	pop    %ebp
 804fb0c:	c3                   	ret    
 804fb0d:	8d 76 00             	lea    0x0(%esi),%esi
 804fb10:	83 fe 14             	cmp    $0x14,%esi
 804fb13:	0f 86 8f 01 00 00    	jbe    804fca8 <_malloc_r+0x5d8>
 804fb19:	83 fe 54             	cmp    $0x54,%esi
 804fb1c:	0f 87 be 01 00 00    	ja     804fce0 <_malloc_r+0x610>
 804fb22:	89 fe                	mov    %edi,%esi
 804fb24:	c1 ee 0c             	shr    $0xc,%esi
 804fb27:	83 c6 6e             	add    $0x6e,%esi
 804fb2a:	8d 04 36             	lea    (%esi,%esi,1),%eax
 804fb2d:	e9 5f fc ff ff       	jmp    804f791 <_malloc_r+0xc1>
 804fb32:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 804fb38:	89 f1                	mov    %esi,%ecx
 804fb3a:	c1 e9 09             	shr    $0x9,%ecx
 804fb3d:	83 f9 04             	cmp    $0x4,%ecx
 804fb40:	0f 86 6d 01 00 00    	jbe    804fcb3 <_malloc_r+0x5e3>
 804fb46:	83 f9 14             	cmp    $0x14,%ecx
 804fb49:	0f 87 0f 02 00 00    	ja     804fd5e <_malloc_r+0x68e>
 804fb4f:	83 c1 5b             	add    $0x5b,%ecx
 804fb52:	8d 04 09             	lea    (%ecx,%ecx,1),%eax
 804fb55:	8d 04 85 20 79 05 08 	lea    0x8057920(,%eax,4),%eax
 804fb5c:	8b 50 08             	mov    0x8(%eax),%edx
 804fb5f:	39 c2                	cmp    %eax,%edx
 804fb61:	0f 84 a1 01 00 00    	je     804fd08 <_malloc_r+0x638>
 804fb67:	90                   	nop
 804fb68:	8b 4a 04             	mov    0x4(%edx),%ecx
 804fb6b:	83 e1 fc             	and    $0xfffffffc,%ecx
 804fb6e:	39 ce                	cmp    %ecx,%esi
 804fb70:	73 07                	jae    804fb79 <_malloc_r+0x4a9>
 804fb72:	8b 52 08             	mov    0x8(%edx),%edx
 804fb75:	39 d0                	cmp    %edx,%eax
 804fb77:	75 ef                	jne    804fb68 <_malloc_r+0x498>
 804fb79:	8b 4a 0c             	mov    0xc(%edx),%ecx
 804fb7c:	a1 24 79 05 08       	mov    0x8057924,%eax
 804fb81:	89 4b 0c             	mov    %ecx,0xc(%ebx)
 804fb84:	89 53 08             	mov    %edx,0x8(%ebx)
 804fb87:	89 59 08             	mov    %ebx,0x8(%ecx)
 804fb8a:	89 5a 0c             	mov    %ebx,0xc(%edx)
 804fb8d:	e9 bb fc ff ff       	jmp    804f84d <_malloc_r+0x17d>
 804fb92:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 804fb98:	89 c1                	mov    %eax,%ecx
 804fb9a:	8d 14 3b             	lea    (%ebx,%edi,1),%edx
 804fb9d:	83 c9 01             	or     $0x1,%ecx
 804fba0:	83 cf 01             	or     $0x1,%edi
 804fba3:	89 7b 04             	mov    %edi,0x4(%ebx)
 804fba6:	89 15 34 79 05 08    	mov    %edx,0x8057934
 804fbac:	89 15 30 79 05 08    	mov    %edx,0x8057930
 804fbb2:	c7 42 0c 28 79 05 08 	movl   $0x8057928,0xc(%edx)
 804fbb9:	c7 42 08 28 79 05 08 	movl   $0x8057928,0x8(%edx)
 804fbc0:	89 4a 04             	mov    %ecx,0x4(%edx)
 804fbc3:	89 04 02             	mov    %eax,(%edx,%eax,1)
 804fbc6:	8b 45 08             	mov    0x8(%ebp),%eax
 804fbc9:	89 04 24             	mov    %eax,(%esp)
 804fbcc:	e8 2f 03 00 00       	call   804ff00 <__malloc_unlock>
 804fbd1:	8d 43 08             	lea    0x8(%ebx),%eax
 804fbd4:	e9 6e fb ff ff       	jmp    804f747 <_malloc_r+0x77>
 804fbd9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 804fbe0:	89 75 dc             	mov    %esi,-0x24(%ebp)
 804fbe3:	e9 af fc ff ff       	jmp    804f897 <_malloc_r+0x1c7>
 804fbe8:	83 45 e0 01          	addl   $0x1,-0x20(%ebp)
 804fbec:	83 c1 08             	add    $0x8,%ecx
 804fbef:	f6 45 e0 03          	testb  $0x3,-0x20(%ebp)
 804fbf3:	0f 85 ad fc ff ff    	jne    804f8a6 <_malloc_r+0x1d6>
 804fbf9:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 804fbfc:	eb 12                	jmp    804fc10 <_malloc_r+0x540>
 804fbfe:	66 90                	xchg   %ax,%ax
 804fc00:	8d 56 f8             	lea    -0x8(%esi),%edx
 804fc03:	8b 36                	mov    (%esi),%esi
 804fc05:	83 e8 01             	sub    $0x1,%eax
 804fc08:	39 d6                	cmp    %edx,%esi
 804fc0a:	0f 85 ea 01 00 00    	jne    804fdfa <_malloc_r+0x72a>
 804fc10:	a8 03                	test   $0x3,%al
 804fc12:	75 ec                	jne    804fc00 <_malloc_r+0x530>
 804fc14:	8b 45 dc             	mov    -0x24(%ebp),%eax
 804fc17:	f7 d0                	not    %eax
 804fc19:	23 05 24 79 05 08    	and    0x8057924,%eax
 804fc1f:	a3 24 79 05 08       	mov    %eax,0x8057924
 804fc24:	d1 65 dc             	shll   -0x24(%ebp)
 804fc27:	8b 55 dc             	mov    -0x24(%ebp),%edx
 804fc2a:	39 c2                	cmp    %eax,%edx
 804fc2c:	0f 87 26 fd ff ff    	ja     804f958 <_malloc_r+0x288>
 804fc32:	85 d2                	test   %edx,%edx
 804fc34:	0f 84 1e fd ff ff    	je     804f958 <_malloc_r+0x288>
 804fc3a:	85 c2                	test   %eax,%edx
 804fc3c:	0f 85 c2 01 00 00    	jne    804fe04 <_malloc_r+0x734>
 804fc42:	8b 75 e0             	mov    -0x20(%ebp),%esi
 804fc45:	89 f1                	mov    %esi,%ecx
 804fc47:	01 d2                	add    %edx,%edx
 804fc49:	83 c1 04             	add    $0x4,%ecx
 804fc4c:	85 d0                	test   %edx,%eax
 804fc4e:	74 f7                	je     804fc47 <_malloc_r+0x577>
 804fc50:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
 804fc53:	89 55 dc             	mov    %edx,-0x24(%ebp)
 804fc56:	e9 3c fc ff ff       	jmp    804f897 <_malloc_r+0x1c7>
 804fc5b:	90                   	nop
 804fc5c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 804fc60:	8d 43 08             	lea    0x8(%ebx),%eax
 804fc63:	8b 5b 14             	mov    0x14(%ebx),%ebx
 804fc66:	39 d8                	cmp    %ebx,%eax
 804fc68:	0f 85 b4 fa ff ff    	jne    804f722 <_malloc_r+0x52>
 804fc6e:	8d 42 02             	lea    0x2(%edx),%eax
 804fc71:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 804fc74:	e9 56 fb ff ff       	jmp    804f7cf <_malloc_r+0xff>
 804fc79:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 804fc80:	83 4c 03 04 01       	orl    $0x1,0x4(%ebx,%eax,1)
 804fc85:	8b 53 08             	mov    0x8(%ebx),%edx
 804fc88:	8b 43 0c             	mov    0xc(%ebx),%eax
 804fc8b:	89 42 0c             	mov    %eax,0xc(%edx)
 804fc8e:	89 50 08             	mov    %edx,0x8(%eax)
 804fc91:	8b 45 08             	mov    0x8(%ebp),%eax
 804fc94:	89 04 24             	mov    %eax,(%esp)
 804fc97:	e8 64 02 00 00       	call   804ff00 <__malloc_unlock>
 804fc9c:	8d 43 08             	lea    0x8(%ebx),%eax
 804fc9f:	e9 a3 fa ff ff       	jmp    804f747 <_malloc_r+0x77>
 804fca4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 804fca8:	83 c6 5b             	add    $0x5b,%esi
 804fcab:	8d 04 36             	lea    (%esi,%esi,1),%eax
 804fcae:	e9 de fa ff ff       	jmp    804f791 <_malloc_r+0xc1>
 804fcb3:	89 f1                	mov    %esi,%ecx
 804fcb5:	c1 e9 06             	shr    $0x6,%ecx
 804fcb8:	83 c1 38             	add    $0x38,%ecx
 804fcbb:	8d 04 09             	lea    (%ecx,%ecx,1),%eax
 804fcbe:	e9 92 fe ff ff       	jmp    804fb55 <_malloc_r+0x485>
 804fcc3:	81 fb 20 79 05 08    	cmp    $0x8057920,%ebx
 804fcc9:	0f 84 f2 fc ff ff    	je     804f9c1 <_malloc_r+0x2f1>
 804fccf:	8b 1d 28 79 05 08    	mov    0x8057928,%ebx
 804fcd5:	8b 53 04             	mov    0x4(%ebx),%edx
 804fcd8:	83 e2 fc             	and    $0xfffffffc,%edx
 804fcdb:	e9 de fd ff ff       	jmp    804fabe <_malloc_r+0x3ee>
 804fce0:	81 fe 54 01 00 00    	cmp    $0x154,%esi
 804fce6:	77 3c                	ja     804fd24 <_malloc_r+0x654>
 804fce8:	89 fe                	mov    %edi,%esi
 804fcea:	c1 ee 0f             	shr    $0xf,%esi
 804fced:	83 c6 77             	add    $0x77,%esi
 804fcf0:	8d 04 36             	lea    (%esi,%esi,1),%eax
 804fcf3:	e9 99 fa ff ff       	jmp    804f791 <_malloc_r+0xc1>
 804fcf8:	c7 41 04 01 00 00 00 	movl   $0x1,0x4(%ecx)
 804fcff:	89 cb                	mov    %ecx,%ebx
 804fd01:	31 d2                	xor    %edx,%edx
 804fd03:	e9 b6 fd ff ff       	jmp    804fabe <_malloc_r+0x3ee>
 804fd08:	c1 f9 02             	sar    $0x2,%ecx
 804fd0b:	b8 01 00 00 00       	mov    $0x1,%eax
 804fd10:	d3 e0                	shl    %cl,%eax
 804fd12:	89 d1                	mov    %edx,%ecx
 804fd14:	0b 05 24 79 05 08    	or     0x8057924,%eax
 804fd1a:	a3 24 79 05 08       	mov    %eax,0x8057924
 804fd1f:	e9 5d fe ff ff       	jmp    804fb81 <_malloc_r+0x4b1>
 804fd24:	81 fe 54 05 00 00    	cmp    $0x554,%esi
 804fd2a:	77 47                	ja     804fd73 <_malloc_r+0x6a3>
 804fd2c:	89 fe                	mov    %edi,%esi
 804fd2e:	c1 ee 12             	shr    $0x12,%esi
 804fd31:	83 c6 7c             	add    $0x7c,%esi
 804fd34:	8d 04 36             	lea    (%esi,%esi,1),%eax
 804fd37:	e9 55 fa ff ff       	jmp    804f791 <_malloc_r+0xc1>
 804fd3c:	8b 45 08             	mov    0x8(%ebp),%eax
 804fd3f:	83 c3 08             	add    $0x8,%ebx
 804fd42:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 804fd46:	89 04 24             	mov    %eax,(%esp)
 804fd49:	e8 d2 f3 ff ff       	call   804f120 <_free_r>
 804fd4e:	8b 15 40 d6 06 08    	mov    0x806d640,%edx
 804fd54:	a1 28 79 05 08       	mov    0x8057928,%eax
 804fd59:	e9 3c fd ff ff       	jmp    804fa9a <_malloc_r+0x3ca>
 804fd5e:	83 f9 54             	cmp    $0x54,%ecx
 804fd61:	77 58                	ja     804fdbb <_malloc_r+0x6eb>
 804fd63:	89 f1                	mov    %esi,%ecx
 804fd65:	c1 e9 0c             	shr    $0xc,%ecx
 804fd68:	83 c1 6e             	add    $0x6e,%ecx
 804fd6b:	8d 04 09             	lea    (%ecx,%ecx,1),%eax
 804fd6e:	e9 e2 fd ff ff       	jmp    804fb55 <_malloc_r+0x485>
 804fd73:	b8 fc 00 00 00       	mov    $0xfc,%eax
 804fd78:	be 7e 00 00 00       	mov    $0x7e,%esi
 804fd7d:	e9 0f fa ff ff       	jmp    804f791 <_malloc_r+0xc1>
 804fd82:	f7 45 e4 ff 0f 00 00 	testl  $0xfff,-0x1c(%ebp)
 804fd89:	0f 85 4a fc ff ff    	jne    804f9d9 <_malloc_r+0x309>
 804fd8f:	8b 4d e0             	mov    -0x20(%ebp),%ecx
 804fd92:	a1 28 79 05 08       	mov    0x8057928,%eax
 804fd97:	01 f1                	add    %esi,%ecx
 804fd99:	83 c9 01             	or     $0x1,%ecx
 804fd9c:	89 48 04             	mov    %ecx,0x4(%eax)
 804fd9f:	e9 f6 fc ff ff       	jmp    804fa9a <_malloc_r+0x3ca>
 804fda4:	b8 01 00 00 00       	mov    $0x1,%eax
 804fda9:	31 d2                	xor    %edx,%edx
 804fdab:	e9 91 fc ff ff       	jmp    804fa41 <_malloc_r+0x371>
 804fdb0:	89 0d 00 79 05 08    	mov    %ecx,0x8057900
 804fdb6:	e9 37 fc ff ff       	jmp    804f9f2 <_malloc_r+0x322>
 804fdbb:	81 f9 54 01 00 00    	cmp    $0x154,%ecx
 804fdc1:	77 10                	ja     804fdd3 <_malloc_r+0x703>
 804fdc3:	89 f1                	mov    %esi,%ecx
 804fdc5:	c1 e9 0f             	shr    $0xf,%ecx
 804fdc8:	83 c1 77             	add    $0x77,%ecx
 804fdcb:	8d 04 09             	lea    (%ecx,%ecx,1),%eax
 804fdce:	e9 82 fd ff ff       	jmp    804fb55 <_malloc_r+0x485>
 804fdd3:	81 f9 54 05 00 00    	cmp    $0x554,%ecx
 804fdd9:	77 10                	ja     804fdeb <_malloc_r+0x71b>
 804fddb:	89 f1                	mov    %esi,%ecx
 804fddd:	c1 e9 12             	shr    $0x12,%ecx
 804fde0:	83 c1 7c             	add    $0x7c,%ecx
 804fde3:	8d 04 09             	lea    (%ecx,%ecx,1),%eax
 804fde6:	e9 6a fd ff ff       	jmp    804fb55 <_malloc_r+0x485>
 804fdeb:	b8 fc 00 00 00       	mov    $0xfc,%eax
 804fdf0:	b9 7e 00 00 00       	mov    $0x7e,%ecx
 804fdf5:	e9 5b fd ff ff       	jmp    804fb55 <_malloc_r+0x485>
 804fdfa:	a1 24 79 05 08       	mov    0x8057924,%eax
 804fdff:	e9 20 fe ff ff       	jmp    804fc24 <_malloc_r+0x554>
 804fe04:	8b 45 e0             	mov    -0x20(%ebp),%eax
 804fe07:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 804fe0a:	e9 88 fa ff ff       	jmp    804f897 <_malloc_r+0x1c7>
 804fe0f:	90                   	nop

0804fe10 <memchr>:
 804fe10:	55                   	push   %ebp
 804fe11:	89 e5                	mov    %esp,%ebp
 804fe13:	57                   	push   %edi
 804fe14:	0f b6 45 0c          	movzbl 0xc(%ebp),%eax
 804fe18:	8b 4d 10             	mov    0x10(%ebp),%ecx
 804fe1b:	8b 7d 08             	mov    0x8(%ebp),%edi
 804fe1e:	31 d2                	xor    %edx,%edx
 804fe20:	85 c9                	test   %ecx,%ecx
 804fe22:	74 79                	je     804fe9d <L20>
 804fe24:	f7 c7 03 00 00 00    	test   $0x3,%edi
 804fe2a:	74 28                	je     804fe54 <L5>
 804fe2c:	3a 07                	cmp    (%edi),%al
 804fe2e:	74 6a                	je     804fe9a <L15>
 804fe30:	47                   	inc    %edi
 804fe31:	49                   	dec    %ecx
 804fe32:	74 69                	je     804fe9d <L20>
 804fe34:	f7 c7 03 00 00 00    	test   $0x3,%edi
 804fe3a:	74 18                	je     804fe54 <L5>
 804fe3c:	3a 07                	cmp    (%edi),%al
 804fe3e:	74 5a                	je     804fe9a <L15>
 804fe40:	47                   	inc    %edi
 804fe41:	49                   	dec    %ecx
 804fe42:	74 59                	je     804fe9d <L20>
 804fe44:	f7 c7 03 00 00 00    	test   $0x3,%edi
 804fe4a:	74 08                	je     804fe54 <L5>
 804fe4c:	3a 07                	cmp    (%edi),%al
 804fe4e:	74 4a                	je     804fe9a <L15>
 804fe50:	47                   	inc    %edi
 804fe51:	49                   	dec    %ecx
 804fe52:	74 49                	je     804fe9d <L20>

0804fe54 <L5>:
 804fe54:	88 c4                	mov    %al,%ah
 804fe56:	89 c2                	mov    %eax,%edx
 804fe58:	c1 e2 10             	shl    $0x10,%edx
 804fe5b:	09 d0                	or     %edx,%eax
 804fe5d:	53                   	push   %ebx
 804fe5e:	66 90                	xchg   %ax,%ax

0804fe60 <L8>:
 804fe60:	83 e9 04             	sub    $0x4,%ecx
 804fe63:	72 1c                	jb     804fe81 <L9>
 804fe65:	8b 17                	mov    (%edi),%edx
 804fe67:	83 c7 04             	add    $0x4,%edi
 804fe6a:	31 c2                	xor    %eax,%edx
 804fe6c:	8d 9a ff fe fe fe    	lea    -0x1010101(%edx),%ebx
 804fe72:	f7 d2                	not    %edx
 804fe74:	21 d3                	and    %edx,%ebx
 804fe76:	f7 c3 80 80 80 80    	test   $0x80808080,%ebx
 804fe7c:	74 e2                	je     804fe60 <L8>
 804fe7e:	83 ef 04             	sub    $0x4,%edi

0804fe81 <L9>:
 804fe81:	5b                   	pop    %ebx
 804fe82:	31 d2                	xor    %edx,%edx
 804fe84:	83 c1 04             	add    $0x4,%ecx
 804fe87:	74 14                	je     804fe9d <L20>
 804fe89:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

0804fe90 <L10>:
 804fe90:	3a 07                	cmp    (%edi),%al
 804fe92:	74 06                	je     804fe9a <L15>
 804fe94:	47                   	inc    %edi
 804fe95:	49                   	dec    %ecx
 804fe96:	75 f8                	jne    804fe90 <L10>
 804fe98:	31 ff                	xor    %edi,%edi

0804fe9a <L15>:
 804fe9a:	4a                   	dec    %edx
 804fe9b:	21 fa                	and    %edi,%edx

0804fe9d <L20>:
 804fe9d:	89 d0                	mov    %edx,%eax
 804fe9f:	8d 65 fc             	lea    -0x4(%ebp),%esp
 804fea2:	5f                   	pop    %edi
 804fea3:	c9                   	leave  
 804fea4:	c3                   	ret    
 804fea5:	66 90                	xchg   %ax,%ax
 804fea7:	90                   	nop

0804fea8 <memcpy>:
 804fea8:	55                   	push   %ebp
 804fea9:	89 e5                	mov    %esp,%ebp
 804feab:	56                   	push   %esi
 804feac:	57                   	push   %edi
 804fead:	53                   	push   %ebx
 804feae:	8b 7d 08             	mov    0x8(%ebp),%edi
 804feb1:	8b 4d 10             	mov    0x10(%ebp),%ecx
 804feb4:	8b 75 0c             	mov    0xc(%ebp),%esi
 804feb7:	fc                   	cld    
 804feb8:	83 f9 08             	cmp    $0x8,%ecx
 804febb:	76 26                	jbe    804fee3 <memcpy+0x3b>
 804febd:	89 fa                	mov    %edi,%edx
 804febf:	89 cb                	mov    %ecx,%ebx
 804fec1:	83 e2 03             	and    $0x3,%edx
 804fec4:	74 10                	je     804fed6 <memcpy+0x2e>
 804fec6:	b9 04 00 00 00       	mov    $0x4,%ecx
 804fecb:	29 d1                	sub    %edx,%ecx
 804fecd:	83 e1 03             	and    $0x3,%ecx
 804fed0:	29 cb                	sub    %ecx,%ebx
 804fed2:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
 804fed4:	89 d9                	mov    %ebx,%ecx
 804fed6:	c1 e9 02             	shr    $0x2,%ecx
 804fed9:	8d 76 00             	lea    0x0(%esi),%esi
 804fedc:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
 804fede:	89 d9                	mov    %ebx,%ecx
 804fee0:	83 e1 03             	and    $0x3,%ecx
 804fee3:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
 804fee5:	8b 45 08             	mov    0x8(%ebp),%eax
 804fee8:	8d 65 f4             	lea    -0xc(%ebp),%esp
 804feeb:	5b                   	pop    %ebx
 804feec:	5f                   	pop    %edi
 804feed:	5e                   	pop    %esi
 804feee:	c9                   	leave  
 804feef:	c3                   	ret    

0804fef0 <__malloc_lock>:
 804fef0:	55                   	push   %ebp
 804fef1:	89 e5                	mov    %esp,%ebp
 804fef3:	5d                   	pop    %ebp
 804fef4:	c3                   	ret    
 804fef5:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 804fef9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

0804ff00 <__malloc_unlock>:
 804ff00:	55                   	push   %ebp
 804ff01:	89 e5                	mov    %esp,%ebp
 804ff03:	5d                   	pop    %ebp
 804ff04:	c3                   	ret    
 804ff05:	66 90                	xchg   %ax,%ax
 804ff07:	66 90                	xchg   %ax,%ax
 804ff09:	66 90                	xchg   %ax,%ax
 804ff0b:	66 90                	xchg   %ax,%ax
 804ff0d:	66 90                	xchg   %ax,%ax
 804ff0f:	90                   	nop

0804ff10 <_Balloc>:
 804ff10:	55                   	push   %ebp
 804ff11:	89 e5                	mov    %esp,%ebp
 804ff13:	57                   	push   %edi
 804ff14:	56                   	push   %esi
 804ff15:	53                   	push   %ebx
 804ff16:	83 ec 1c             	sub    $0x1c,%esp
 804ff19:	8b 75 08             	mov    0x8(%ebp),%esi
 804ff1c:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 804ff1f:	8b 46 4c             	mov    0x4c(%esi),%eax
 804ff22:	85 c0                	test   %eax,%eax
 804ff24:	74 2a                	je     804ff50 <_Balloc+0x40>
 804ff26:	8d 14 98             	lea    (%eax,%ebx,4),%edx
 804ff29:	8b 02                	mov    (%edx),%eax
 804ff2b:	85 c0                	test   %eax,%eax
 804ff2d:	74 49                	je     804ff78 <_Balloc+0x68>
 804ff2f:	8b 08                	mov    (%eax),%ecx
 804ff31:	89 0a                	mov    %ecx,(%edx)
 804ff33:	c7 40 10 00 00 00 00 	movl   $0x0,0x10(%eax)
 804ff3a:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%eax)
 804ff41:	83 c4 1c             	add    $0x1c,%esp
 804ff44:	5b                   	pop    %ebx
 804ff45:	5e                   	pop    %esi
 804ff46:	5f                   	pop    %edi
 804ff47:	5d                   	pop    %ebp
 804ff48:	c3                   	ret    
 804ff49:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 804ff50:	c7 44 24 08 21 00 00 	movl   $0x21,0x8(%esp)
 804ff57:	00 
 804ff58:	c7 44 24 04 04 00 00 	movl   $0x4,0x4(%esp)
 804ff5f:	00 
 804ff60:	89 34 24             	mov    %esi,(%esp)
 804ff63:	e8 08 32 00 00       	call   8053170 <_calloc_r>
 804ff68:	85 c0                	test   %eax,%eax
 804ff6a:	89 46 4c             	mov    %eax,0x4c(%esi)
 804ff6d:	75 b7                	jne    804ff26 <_Balloc+0x16>
 804ff6f:	31 c0                	xor    %eax,%eax
 804ff71:	eb ce                	jmp    804ff41 <_Balloc+0x31>
 804ff73:	90                   	nop
 804ff74:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 804ff78:	89 d9                	mov    %ebx,%ecx
 804ff7a:	bf 01 00 00 00       	mov    $0x1,%edi
 804ff7f:	d3 e7                	shl    %cl,%edi
 804ff81:	8d 04 bd 14 00 00 00 	lea    0x14(,%edi,4),%eax
 804ff88:	89 44 24 08          	mov    %eax,0x8(%esp)
 804ff8c:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
 804ff93:	00 
 804ff94:	89 34 24             	mov    %esi,(%esp)
 804ff97:	e8 d4 31 00 00       	call   8053170 <_calloc_r>
 804ff9c:	85 c0                	test   %eax,%eax
 804ff9e:	74 cf                	je     804ff6f <_Balloc+0x5f>
 804ffa0:	89 58 04             	mov    %ebx,0x4(%eax)
 804ffa3:	89 78 08             	mov    %edi,0x8(%eax)
 804ffa6:	eb 8b                	jmp    804ff33 <_Balloc+0x23>
 804ffa8:	90                   	nop
 804ffa9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

0804ffb0 <_Bfree>:
 804ffb0:	55                   	push   %ebp
 804ffb1:	89 e5                	mov    %esp,%ebp
 804ffb3:	8b 45 0c             	mov    0xc(%ebp),%eax
 804ffb6:	85 c0                	test   %eax,%eax
 804ffb8:	74 12                	je     804ffcc <_Bfree+0x1c>
 804ffba:	8b 55 08             	mov    0x8(%ebp),%edx
 804ffbd:	8b 48 04             	mov    0x4(%eax),%ecx
 804ffc0:	8b 52 4c             	mov    0x4c(%edx),%edx
 804ffc3:	8d 14 8a             	lea    (%edx,%ecx,4),%edx
 804ffc6:	8b 0a                	mov    (%edx),%ecx
 804ffc8:	89 08                	mov    %ecx,(%eax)
 804ffca:	89 02                	mov    %eax,(%edx)
 804ffcc:	5d                   	pop    %ebp
 804ffcd:	c3                   	ret    
 804ffce:	66 90                	xchg   %ax,%ax

0804ffd0 <__multadd>:
 804ffd0:	55                   	push   %ebp
 804ffd1:	89 e5                	mov    %esp,%ebp
 804ffd3:	57                   	push   %edi
 804ffd4:	56                   	push   %esi
 804ffd5:	53                   	push   %ebx
 804ffd6:	83 ec 2c             	sub    $0x2c,%esp
 804ffd9:	8b 45 0c             	mov    0xc(%ebp),%eax
 804ffdc:	8b 5d 14             	mov    0x14(%ebp),%ebx
 804ffdf:	8b 40 10             	mov    0x10(%eax),%eax
 804ffe2:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 804ffe5:	8b 45 0c             	mov    0xc(%ebp),%eax
 804ffe8:	8d 78 14             	lea    0x14(%eax),%edi
 804ffeb:	31 c0                	xor    %eax,%eax
 804ffed:	8d 76 00             	lea    0x0(%esi),%esi
 804fff0:	8b 0c 87             	mov    (%edi,%eax,4),%ecx
 804fff3:	0f b7 d1             	movzwl %cx,%edx
 804fff6:	0f af 55 10          	imul   0x10(%ebp),%edx
 804fffa:	c1 e9 10             	shr    $0x10,%ecx
 804fffd:	0f af 4d 10          	imul   0x10(%ebp),%ecx
 8050001:	01 da                	add    %ebx,%edx
 8050003:	89 d3                	mov    %edx,%ebx
 8050005:	0f b7 d2             	movzwl %dx,%edx
 8050008:	c1 eb 10             	shr    $0x10,%ebx
 805000b:	01 d9                	add    %ebx,%ecx
 805000d:	89 ce                	mov    %ecx,%esi
 805000f:	c1 e1 10             	shl    $0x10,%ecx
 8050012:	01 d1                	add    %edx,%ecx
 8050014:	c1 ee 10             	shr    $0x10,%esi
 8050017:	89 0c 87             	mov    %ecx,(%edi,%eax,4)
 805001a:	83 c0 01             	add    $0x1,%eax
 805001d:	89 f3                	mov    %esi,%ebx
 805001f:	39 45 e4             	cmp    %eax,-0x1c(%ebp)
 8050022:	7f cc                	jg     804fff0 <__multadd+0x20>
 8050024:	85 f6                	test   %esi,%esi
 8050026:	74 1b                	je     8050043 <__multadd+0x73>
 8050028:	8b 45 0c             	mov    0xc(%ebp),%eax
 805002b:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 805002e:	3b 78 08             	cmp    0x8(%eax),%edi
 8050031:	7d 1d                	jge    8050050 <__multadd+0x80>
 8050033:	8b 7d 0c             	mov    0xc(%ebp),%edi
 8050036:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 8050039:	89 74 87 14          	mov    %esi,0x14(%edi,%eax,4)
 805003d:	83 c0 01             	add    $0x1,%eax
 8050040:	89 47 10             	mov    %eax,0x10(%edi)
 8050043:	8b 45 0c             	mov    0xc(%ebp),%eax
 8050046:	83 c4 2c             	add    $0x2c,%esp
 8050049:	5b                   	pop    %ebx
 805004a:	5e                   	pop    %esi
 805004b:	5f                   	pop    %edi
 805004c:	5d                   	pop    %ebp
 805004d:	c3                   	ret    
 805004e:	66 90                	xchg   %ax,%ax
 8050050:	8b 40 04             	mov    0x4(%eax),%eax
 8050053:	89 45 e0             	mov    %eax,-0x20(%ebp)
 8050056:	83 c0 01             	add    $0x1,%eax
 8050059:	89 44 24 04          	mov    %eax,0x4(%esp)
 805005d:	8b 45 08             	mov    0x8(%ebp),%eax
 8050060:	89 04 24             	mov    %eax,(%esp)
 8050063:	e8 a8 fe ff ff       	call   804ff10 <_Balloc>
 8050068:	89 c3                	mov    %eax,%ebx
 805006a:	8b 45 0c             	mov    0xc(%ebp),%eax
 805006d:	8b 40 10             	mov    0x10(%eax),%eax
 8050070:	8d 04 85 08 00 00 00 	lea    0x8(,%eax,4),%eax
 8050077:	89 44 24 08          	mov    %eax,0x8(%esp)
 805007b:	8b 45 0c             	mov    0xc(%ebp),%eax
 805007e:	83 c0 0c             	add    $0xc,%eax
 8050081:	89 44 24 04          	mov    %eax,0x4(%esp)
 8050085:	8d 43 0c             	lea    0xc(%ebx),%eax
 8050088:	89 04 24             	mov    %eax,(%esp)
 805008b:	e8 18 fe ff ff       	call   804fea8 <memcpy>
 8050090:	8b 45 0c             	mov    0xc(%ebp),%eax
 8050093:	8b 7d 0c             	mov    0xc(%ebp),%edi
 8050096:	89 5d 0c             	mov    %ebx,0xc(%ebp)
 8050099:	8b 50 04             	mov    0x4(%eax),%edx
 805009c:	8b 45 08             	mov    0x8(%ebp),%eax
 805009f:	8b 40 4c             	mov    0x4c(%eax),%eax
 80500a2:	8d 04 90             	lea    (%eax,%edx,4),%eax
 80500a5:	8b 10                	mov    (%eax),%edx
 80500a7:	89 17                	mov    %edx,(%edi)
 80500a9:	89 38                	mov    %edi,(%eax)
 80500ab:	eb 86                	jmp    8050033 <__multadd+0x63>
 80500ad:	8d 76 00             	lea    0x0(%esi),%esi

080500b0 <__s2b>:
 80500b0:	55                   	push   %ebp
 80500b1:	ba 39 8e e3 38       	mov    $0x38e38e39,%edx
 80500b6:	89 e5                	mov    %esp,%ebp
 80500b8:	57                   	push   %edi
 80500b9:	56                   	push   %esi
 80500ba:	53                   	push   %ebx
 80500bb:	83 ec 2c             	sub    $0x2c,%esp
 80500be:	8b 45 14             	mov    0x14(%ebp),%eax
 80500c1:	8b 5d 08             	mov    0x8(%ebp),%ebx
 80500c4:	8b 75 0c             	mov    0xc(%ebp),%esi
 80500c7:	8d 48 08             	lea    0x8(%eax),%ecx
 80500ca:	89 c8                	mov    %ecx,%eax
 80500cc:	f7 ea                	imul   %edx
 80500ce:	c1 f9 1f             	sar    $0x1f,%ecx
 80500d1:	d1 fa                	sar    %edx
 80500d3:	29 ca                	sub    %ecx,%edx
 80500d5:	83 fa 01             	cmp    $0x1,%edx
 80500d8:	0f 8e be 00 00 00    	jle    805019c <__s2b+0xec>
 80500de:	b8 01 00 00 00       	mov    $0x1,%eax
 80500e3:	31 c9                	xor    %ecx,%ecx
 80500e5:	8d 76 00             	lea    0x0(%esi),%esi
 80500e8:	01 c0                	add    %eax,%eax
 80500ea:	83 c1 01             	add    $0x1,%ecx
 80500ed:	39 c2                	cmp    %eax,%edx
 80500ef:	7f f7                	jg     80500e8 <__s2b+0x38>
 80500f1:	89 4c 24 04          	mov    %ecx,0x4(%esp)
 80500f5:	89 1c 24             	mov    %ebx,(%esp)
 80500f8:	e8 13 fe ff ff       	call   804ff10 <_Balloc>
 80500fd:	8b 55 18             	mov    0x18(%ebp),%edx
 8050100:	83 7d 10 09          	cmpl   $0x9,0x10(%ebp)
 8050104:	89 50 14             	mov    %edx,0x14(%eax)
 8050107:	c7 40 10 01 00 00 00 	movl   $0x1,0x10(%eax)
 805010e:	0f 8e 7c 00 00 00    	jle    8050190 <__s2b+0xe0>
 8050114:	8d 4e 09             	lea    0x9(%esi),%ecx
 8050117:	03 75 10             	add    0x10(%ebp),%esi
 805011a:	89 cf                	mov    %ecx,%edi
 805011c:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
 805011f:	90                   	nop
 8050120:	83 c7 01             	add    $0x1,%edi
 8050123:	0f be 57 ff          	movsbl -0x1(%edi),%edx
 8050127:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
 805012e:	00 
 805012f:	89 44 24 04          	mov    %eax,0x4(%esp)
 8050133:	89 1c 24             	mov    %ebx,(%esp)
 8050136:	83 ea 30             	sub    $0x30,%edx
 8050139:	89 54 24 0c          	mov    %edx,0xc(%esp)
 805013d:	e8 8e fe ff ff       	call   804ffd0 <__multadd>
 8050142:	39 f7                	cmp    %esi,%edi
 8050144:	75 da                	jne    8050120 <__s2b+0x70>
 8050146:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
 8050149:	8b 7d 10             	mov    0x10(%ebp),%edi
 805014c:	8d 74 39 f8          	lea    -0x8(%ecx,%edi,1),%esi
 8050150:	8b 4d 10             	mov    0x10(%ebp),%ecx
 8050153:	39 4d 14             	cmp    %ecx,0x14(%ebp)
 8050156:	7e 2e                	jle    8050186 <__s2b+0xd6>
 8050158:	8b 7d 14             	mov    0x14(%ebp),%edi
 805015b:	29 cf                	sub    %ecx,%edi
 805015d:	01 f7                	add    %esi,%edi
 805015f:	90                   	nop
 8050160:	83 c6 01             	add    $0x1,%esi
 8050163:	0f be 56 ff          	movsbl -0x1(%esi),%edx
 8050167:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
 805016e:	00 
 805016f:	89 44 24 04          	mov    %eax,0x4(%esp)
 8050173:	89 1c 24             	mov    %ebx,(%esp)
 8050176:	83 ea 30             	sub    $0x30,%edx
 8050179:	89 54 24 0c          	mov    %edx,0xc(%esp)
 805017d:	e8 4e fe ff ff       	call   804ffd0 <__multadd>
 8050182:	39 fe                	cmp    %edi,%esi
 8050184:	75 da                	jne    8050160 <__s2b+0xb0>
 8050186:	83 c4 2c             	add    $0x2c,%esp
 8050189:	5b                   	pop    %ebx
 805018a:	5e                   	pop    %esi
 805018b:	5f                   	pop    %edi
 805018c:	5d                   	pop    %ebp
 805018d:	c3                   	ret    
 805018e:	66 90                	xchg   %ax,%ax
 8050190:	83 c6 0a             	add    $0xa,%esi
 8050193:	c7 45 10 09 00 00 00 	movl   $0x9,0x10(%ebp)
 805019a:	eb b4                	jmp    8050150 <__s2b+0xa0>
 805019c:	31 c9                	xor    %ecx,%ecx
 805019e:	e9 4e ff ff ff       	jmp    80500f1 <__s2b+0x41>
 80501a3:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 80501a9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

080501b0 <__hi0bits>:
 80501b0:	55                   	push   %ebp
 80501b1:	31 c9                	xor    %ecx,%ecx
 80501b3:	89 e5                	mov    %esp,%ebp
 80501b5:	8b 55 08             	mov    0x8(%ebp),%edx
 80501b8:	f7 c2 00 00 ff ff    	test   $0xffff0000,%edx
 80501be:	75 05                	jne    80501c5 <__hi0bits+0x15>
 80501c0:	c1 e2 10             	shl    $0x10,%edx
 80501c3:	b1 10                	mov    $0x10,%cl
 80501c5:	f7 c2 00 00 00 ff    	test   $0xff000000,%edx
 80501cb:	75 06                	jne    80501d3 <__hi0bits+0x23>
 80501cd:	83 c1 08             	add    $0x8,%ecx
 80501d0:	c1 e2 08             	shl    $0x8,%edx
 80501d3:	f7 c2 00 00 00 f0    	test   $0xf0000000,%edx
 80501d9:	75 06                	jne    80501e1 <__hi0bits+0x31>
 80501db:	83 c1 04             	add    $0x4,%ecx
 80501de:	c1 e2 04             	shl    $0x4,%edx
 80501e1:	f7 c2 00 00 00 c0    	test   $0xc0000000,%edx
 80501e7:	75 06                	jne    80501ef <__hi0bits+0x3f>
 80501e9:	83 c1 02             	add    $0x2,%ecx
 80501ec:	c1 e2 02             	shl    $0x2,%edx
 80501ef:	85 d2                	test   %edx,%edx
 80501f1:	89 c8                	mov    %ecx,%eax
 80501f3:	78 0d                	js     8050202 <__hi0bits+0x52>
 80501f5:	81 e2 00 00 00 40    	and    $0x40000000,%edx
 80501fb:	b8 20 00 00 00       	mov    $0x20,%eax
 8050200:	75 06                	jne    8050208 <__hi0bits+0x58>
 8050202:	5d                   	pop    %ebp
 8050203:	c3                   	ret    
 8050204:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8050208:	8d 41 01             	lea    0x1(%ecx),%eax
 805020b:	5d                   	pop    %ebp
 805020c:	c3                   	ret    
 805020d:	8d 76 00             	lea    0x0(%esi),%esi

08050210 <__lo0bits>:
 8050210:	55                   	push   %ebp
 8050211:	89 e5                	mov    %esp,%ebp
 8050213:	53                   	push   %ebx
 8050214:	8b 5d 08             	mov    0x8(%ebp),%ebx
 8050217:	8b 13                	mov    (%ebx),%edx
 8050219:	f6 c2 07             	test   $0x7,%dl
 805021c:	74 1a                	je     8050238 <__lo0bits+0x28>
 805021e:	31 c0                	xor    %eax,%eax
 8050220:	f6 c2 01             	test   $0x1,%dl
 8050223:	75 0f                	jne    8050234 <__lo0bits+0x24>
 8050225:	f6 c2 02             	test   $0x2,%dl
 8050228:	75 56                	jne    8050280 <__lo0bits+0x70>
 805022a:	c1 ea 02             	shr    $0x2,%edx
 805022d:	b8 02 00 00 00       	mov    $0x2,%eax
 8050232:	89 13                	mov    %edx,(%ebx)
 8050234:	5b                   	pop    %ebx
 8050235:	5d                   	pop    %ebp
 8050236:	c3                   	ret    
 8050237:	90                   	nop
 8050238:	31 c9                	xor    %ecx,%ecx
 805023a:	66 85 d2             	test   %dx,%dx
 805023d:	75 05                	jne    8050244 <__lo0bits+0x34>
 805023f:	c1 ea 10             	shr    $0x10,%edx
 8050242:	b1 10                	mov    $0x10,%cl
 8050244:	84 d2                	test   %dl,%dl
 8050246:	75 06                	jne    805024e <__lo0bits+0x3e>
 8050248:	83 c1 08             	add    $0x8,%ecx
 805024b:	c1 ea 08             	shr    $0x8,%edx
 805024e:	f6 c2 0f             	test   $0xf,%dl
 8050251:	75 06                	jne    8050259 <__lo0bits+0x49>
 8050253:	83 c1 04             	add    $0x4,%ecx
 8050256:	c1 ea 04             	shr    $0x4,%edx
 8050259:	f6 c2 03             	test   $0x3,%dl
 805025c:	75 06                	jne    8050264 <__lo0bits+0x54>
 805025e:	83 c1 02             	add    $0x2,%ecx
 8050261:	c1 ea 02             	shr    $0x2,%edx
 8050264:	f6 c2 01             	test   $0x1,%dl
 8050267:	75 0c                	jne    8050275 <__lo0bits+0x65>
 8050269:	d1 ea                	shr    %edx
 805026b:	b8 20 00 00 00       	mov    $0x20,%eax
 8050270:	74 c2                	je     8050234 <__lo0bits+0x24>
 8050272:	83 c1 01             	add    $0x1,%ecx
 8050275:	89 13                	mov    %edx,(%ebx)
 8050277:	89 c8                	mov    %ecx,%eax
 8050279:	5b                   	pop    %ebx
 805027a:	5d                   	pop    %ebp
 805027b:	c3                   	ret    
 805027c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8050280:	d1 ea                	shr    %edx
 8050282:	b0 01                	mov    $0x1,%al
 8050284:	89 13                	mov    %edx,(%ebx)
 8050286:	5b                   	pop    %ebx
 8050287:	5d                   	pop    %ebp
 8050288:	c3                   	ret    
 8050289:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

08050290 <__i2b>:
 8050290:	55                   	push   %ebp
 8050291:	89 e5                	mov    %esp,%ebp
 8050293:	83 ec 18             	sub    $0x18,%esp
 8050296:	8b 45 08             	mov    0x8(%ebp),%eax
 8050299:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
 80502a0:	00 
 80502a1:	89 04 24             	mov    %eax,(%esp)
 80502a4:	e8 67 fc ff ff       	call   804ff10 <_Balloc>
 80502a9:	8b 55 0c             	mov    0xc(%ebp),%edx
 80502ac:	89 50 14             	mov    %edx,0x14(%eax)
 80502af:	c7 40 10 01 00 00 00 	movl   $0x1,0x10(%eax)
 80502b6:	c9                   	leave  
 80502b7:	c3                   	ret    
 80502b8:	90                   	nop
 80502b9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

080502c0 <__multiply>:
 80502c0:	55                   	push   %ebp
 80502c1:	89 e5                	mov    %esp,%ebp
 80502c3:	57                   	push   %edi
 80502c4:	56                   	push   %esi
 80502c5:	53                   	push   %ebx
 80502c6:	83 ec 3c             	sub    $0x3c,%esp
 80502c9:	8b 75 0c             	mov    0xc(%ebp),%esi
 80502cc:	8b 45 10             	mov    0x10(%ebp),%eax
 80502cf:	8b 7e 10             	mov    0x10(%esi),%edi
 80502d2:	8b 58 10             	mov    0x10(%eax),%ebx
 80502d5:	39 df                	cmp    %ebx,%edi
 80502d7:	7d 0e                	jge    80502e7 <__multiply+0x27>
 80502d9:	89 f8                	mov    %edi,%eax
 80502db:	89 df                	mov    %ebx,%edi
 80502dd:	89 c3                	mov    %eax,%ebx
 80502df:	89 f0                	mov    %esi,%eax
 80502e1:	8b 75 10             	mov    0x10(%ebp),%esi
 80502e4:	89 45 10             	mov    %eax,0x10(%ebp)
 80502e7:	8d 04 1f             	lea    (%edi,%ebx,1),%eax
 80502ea:	3b 46 08             	cmp    0x8(%esi),%eax
 80502ed:	89 45 c8             	mov    %eax,-0x38(%ebp)
 80502f0:	0f 9f c0             	setg   %al
 80502f3:	0f b6 c0             	movzbl %al,%eax
 80502f6:	03 46 04             	add    0x4(%esi),%eax
 80502f9:	89 44 24 04          	mov    %eax,0x4(%esp)
 80502fd:	8b 45 08             	mov    0x8(%ebp),%eax
 8050300:	89 04 24             	mov    %eax,(%esp)
 8050303:	e8 08 fc ff ff       	call   804ff10 <_Balloc>
 8050308:	8b 55 c8             	mov    -0x38(%ebp),%edx
 805030b:	89 45 c0             	mov    %eax,-0x40(%ebp)
 805030e:	8d 40 14             	lea    0x14(%eax),%eax
 8050311:	8d 14 90             	lea    (%eax,%edx,4),%edx
 8050314:	89 d1                	mov    %edx,%ecx
 8050316:	39 c8                	cmp    %ecx,%eax
 8050318:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 805031b:	89 55 c4             	mov    %edx,-0x3c(%ebp)
 805031e:	73 15                	jae    8050335 <__multiply+0x75>
 8050320:	8b 55 c4             	mov    -0x3c(%ebp),%edx
 8050323:	90                   	nop
 8050324:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8050328:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
 805032e:	83 c0 04             	add    $0x4,%eax
 8050331:	39 c2                	cmp    %eax,%edx
 8050333:	77 f3                	ja     8050328 <__multiply+0x68>
 8050335:	8d 46 14             	lea    0x14(%esi),%eax
 8050338:	89 45 d0             	mov    %eax,-0x30(%ebp)
 805033b:	8d 04 b8             	lea    (%eax,%edi,4),%eax
 805033e:	89 45 dc             	mov    %eax,-0x24(%ebp)
 8050341:	8b 45 10             	mov    0x10(%ebp),%eax
 8050344:	83 c0 14             	add    $0x14,%eax
 8050347:	8d 3c 98             	lea    (%eax,%ebx,4),%edi
 805034a:	39 f8                	cmp    %edi,%eax
 805034c:	89 45 d8             	mov    %eax,-0x28(%ebp)
 805034f:	89 7d cc             	mov    %edi,-0x34(%ebp)
 8050352:	0f 83 e8 00 00 00    	jae    8050440 <__multiply+0x180>
 8050358:	8b 45 d8             	mov    -0x28(%ebp),%eax
 805035b:	8b 00                	mov    (%eax),%eax
 805035d:	0f b7 f8             	movzwl %ax,%edi
 8050360:	85 ff                	test   %edi,%edi
 8050362:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 8050365:	74 5a                	je     80503c1 <__multiply+0x101>
 8050367:	8b 55 d4             	mov    -0x2c(%ebp),%edx
 805036a:	31 db                	xor    %ebx,%ebx
 805036c:	8b 75 d0             	mov    -0x30(%ebp),%esi
 805036f:	eb 09                	jmp    805037a <__multiply+0xba>
 8050371:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 8050378:	89 fa                	mov    %edi,%edx
 805037a:	8b 0e                	mov    (%esi),%ecx
 805037c:	83 c6 04             	add    $0x4,%esi
 805037f:	0f b7 3a             	movzwl (%edx),%edi
 8050382:	0f b7 c1             	movzwl %cx,%eax
 8050385:	0f af 45 e4          	imul   -0x1c(%ebp),%eax
 8050389:	c1 e9 10             	shr    $0x10,%ecx
 805038c:	0f af 4d e4          	imul   -0x1c(%ebp),%ecx
 8050390:	01 f8                	add    %edi,%eax
 8050392:	01 d8                	add    %ebx,%eax
 8050394:	8b 1a                	mov    (%edx),%ebx
 8050396:	8d 7a 04             	lea    0x4(%edx),%edi
 8050399:	c1 eb 10             	shr    $0x10,%ebx
 805039c:	01 d9                	add    %ebx,%ecx
 805039e:	89 c3                	mov    %eax,%ebx
 80503a0:	c1 eb 10             	shr    $0x10,%ebx
 80503a3:	0f b7 c0             	movzwl %ax,%eax
 80503a6:	01 d9                	add    %ebx,%ecx
 80503a8:	89 cb                	mov    %ecx,%ebx
 80503aa:	c1 e1 10             	shl    $0x10,%ecx
 80503ad:	09 c1                	or     %eax,%ecx
 80503af:	c1 eb 10             	shr    $0x10,%ebx
 80503b2:	39 75 dc             	cmp    %esi,-0x24(%ebp)
 80503b5:	89 0a                	mov    %ecx,(%edx)
 80503b7:	77 bf                	ja     8050378 <__multiply+0xb8>
 80503b9:	8b 45 d8             	mov    -0x28(%ebp),%eax
 80503bc:	89 5a 04             	mov    %ebx,0x4(%edx)
 80503bf:	8b 00                	mov    (%eax),%eax
 80503c1:	c1 e8 10             	shr    $0x10,%eax
 80503c4:	85 c0                	test   %eax,%eax
 80503c6:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 80503c9:	74 61                	je     805042c <__multiply+0x16c>
 80503cb:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 80503ce:	31 ff                	xor    %edi,%edi
 80503d0:	89 fe                	mov    %edi,%esi
 80503d2:	8b 10                	mov    (%eax),%edx
 80503d4:	89 45 e0             	mov    %eax,-0x20(%ebp)
 80503d7:	8b 45 d0             	mov    -0x30(%ebp),%eax
 80503da:	89 d3                	mov    %edx,%ebx
 80503dc:	eb 05                	jmp    80503e3 <__multiply+0x123>
 80503de:	66 90                	xchg   %ax,%ax
 80503e0:	89 4d e0             	mov    %ecx,-0x20(%ebp)
 80503e3:	0f b7 08             	movzwl (%eax),%ecx
 80503e6:	c1 eb 10             	shr    $0x10,%ebx
 80503e9:	0f b7 d2             	movzwl %dx,%edx
 80503ec:	0f af 4d e4          	imul   -0x1c(%ebp),%ecx
 80503f0:	83 c0 04             	add    $0x4,%eax
 80503f3:	8d 3c 19             	lea    (%ecx,%ebx,1),%edi
 80503f6:	01 f7                	add    %esi,%edi
 80503f8:	8b 75 e0             	mov    -0x20(%ebp),%esi
 80503fb:	89 fb                	mov    %edi,%ebx
 80503fd:	c1 e3 10             	shl    $0x10,%ebx
 8050400:	09 d3                	or     %edx,%ebx
 8050402:	89 1e                	mov    %ebx,(%esi)
 8050404:	8b 5e 04             	mov    0x4(%esi),%ebx
 8050407:	8d 4e 04             	lea    0x4(%esi),%ecx
 805040a:	0f b7 50 fe          	movzwl -0x2(%eax),%edx
 805040e:	c1 ef 10             	shr    $0x10,%edi
 8050411:	0f af 55 e4          	imul   -0x1c(%ebp),%edx
 8050415:	0f b7 f3             	movzwl %bx,%esi
 8050418:	01 f2                	add    %esi,%edx
 805041a:	01 fa                	add    %edi,%edx
 805041c:	89 d6                	mov    %edx,%esi
 805041e:	c1 ee 10             	shr    $0x10,%esi
 8050421:	39 45 dc             	cmp    %eax,-0x24(%ebp)
 8050424:	77 ba                	ja     80503e0 <__multiply+0x120>
 8050426:	8b 45 e0             	mov    -0x20(%ebp),%eax
 8050429:	89 50 04             	mov    %edx,0x4(%eax)
 805042c:	83 45 d8 04          	addl   $0x4,-0x28(%ebp)
 8050430:	8b 45 d8             	mov    -0x28(%ebp),%eax
 8050433:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
 8050437:	39 45 cc             	cmp    %eax,-0x34(%ebp)
 805043a:	0f 87 18 ff ff ff    	ja     8050358 <__multiply+0x98>
 8050440:	8b 75 c8             	mov    -0x38(%ebp),%esi
 8050443:	85 f6                	test   %esi,%esi
 8050445:	7e 29                	jle    8050470 <__multiply+0x1b0>
 8050447:	8b 7d c4             	mov    -0x3c(%ebp),%edi
 805044a:	8b 5f fc             	mov    -0x4(%edi),%ebx
 805044d:	85 db                	test   %ebx,%ebx
 805044f:	75 1f                	jne    8050470 <__multiply+0x1b0>
 8050451:	8b 55 c8             	mov    -0x38(%ebp),%edx
 8050454:	89 d0                	mov    %edx,%eax
 8050456:	c1 e0 02             	shl    $0x2,%eax
 8050459:	29 c7                	sub    %eax,%edi
 805045b:	89 f8                	mov    %edi,%eax
 805045d:	eb 09                	jmp    8050468 <__multiply+0x1a8>
 805045f:	90                   	nop
 8050460:	8b 4c 90 fc          	mov    -0x4(%eax,%edx,4),%ecx
 8050464:	85 c9                	test   %ecx,%ecx
 8050466:	75 05                	jne    805046d <__multiply+0x1ad>
 8050468:	83 ea 01             	sub    $0x1,%edx
 805046b:	75 f3                	jne    8050460 <__multiply+0x1a0>
 805046d:	89 55 c8             	mov    %edx,-0x38(%ebp)
 8050470:	8b 45 c0             	mov    -0x40(%ebp),%eax
 8050473:	8b 7d c8             	mov    -0x38(%ebp),%edi
 8050476:	89 78 10             	mov    %edi,0x10(%eax)
 8050479:	83 c4 3c             	add    $0x3c,%esp
 805047c:	5b                   	pop    %ebx
 805047d:	5e                   	pop    %esi
 805047e:	5f                   	pop    %edi
 805047f:	5d                   	pop    %ebp
 8050480:	c3                   	ret    
 8050481:	eb 0d                	jmp    8050490 <__pow5mult>
 8050483:	90                   	nop
 8050484:	90                   	nop
 8050485:	90                   	nop
 8050486:	90                   	nop
 8050487:	90                   	nop
 8050488:	90                   	nop
 8050489:	90                   	nop
 805048a:	90                   	nop
 805048b:	90                   	nop
 805048c:	90                   	nop
 805048d:	90                   	nop
 805048e:	90                   	nop
 805048f:	90                   	nop

08050490 <__pow5mult>:
 8050490:	55                   	push   %ebp
 8050491:	89 e5                	mov    %esp,%ebp
 8050493:	57                   	push   %edi
 8050494:	56                   	push   %esi
 8050495:	53                   	push   %ebx
 8050496:	83 ec 2c             	sub    $0x2c,%esp
 8050499:	8b 5d 10             	mov    0x10(%ebp),%ebx
 805049c:	8b 4d 08             	mov    0x8(%ebp),%ecx
 805049f:	8b 7d 0c             	mov    0xc(%ebp),%edi
 80504a2:	89 d8                	mov    %ebx,%eax
 80504a4:	83 e0 03             	and    $0x3,%eax
 80504a7:	0f 85 a3 00 00 00    	jne    8050550 <__pow5mult+0xc0>
 80504ad:	c1 fb 02             	sar    $0x2,%ebx
 80504b0:	85 db                	test   %ebx,%ebx
 80504b2:	74 5c                	je     8050510 <__pow5mult+0x80>
 80504b4:	8b 71 48             	mov    0x48(%ecx),%esi
 80504b7:	85 f6                	test   %esi,%esi
 80504b9:	0f 84 bd 00 00 00    	je     805057c <__pow5mult+0xec>
 80504bf:	f6 c3 01             	test   $0x1,%bl
 80504c2:	75 15                	jne    80504d9 <__pow5mult+0x49>
 80504c4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 80504c8:	d1 fb                	sar    %ebx
 80504ca:	74 44                	je     8050510 <__pow5mult+0x80>
 80504cc:	8b 06                	mov    (%esi),%eax
 80504ce:	85 c0                	test   %eax,%eax
 80504d0:	74 4e                	je     8050520 <__pow5mult+0x90>
 80504d2:	89 c6                	mov    %eax,%esi
 80504d4:	f6 c3 01             	test   $0x1,%bl
 80504d7:	74 ef                	je     80504c8 <__pow5mult+0x38>
 80504d9:	89 0c 24             	mov    %ecx,(%esp)
 80504dc:	89 74 24 08          	mov    %esi,0x8(%esp)
 80504e0:	89 7c 24 04          	mov    %edi,0x4(%esp)
 80504e4:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
 80504e7:	e8 d4 fd ff ff       	call   80502c0 <__multiply>
 80504ec:	85 ff                	test   %edi,%edi
 80504ee:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
 80504f1:	89 45 e0             	mov    %eax,-0x20(%ebp)
 80504f4:	74 52                	je     8050548 <__pow5mult+0xb8>
 80504f6:	8b 57 04             	mov    0x4(%edi),%edx
 80504f9:	d1 fb                	sar    %ebx
 80504fb:	8b 41 4c             	mov    0x4c(%ecx),%eax
 80504fe:	8d 04 90             	lea    (%eax,%edx,4),%eax
 8050501:	8b 10                	mov    (%eax),%edx
 8050503:	89 17                	mov    %edx,(%edi)
 8050505:	89 38                	mov    %edi,(%eax)
 8050507:	8b 7d e0             	mov    -0x20(%ebp),%edi
 805050a:	75 c0                	jne    80504cc <__pow5mult+0x3c>
 805050c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8050510:	83 c4 2c             	add    $0x2c,%esp
 8050513:	89 f8                	mov    %edi,%eax
 8050515:	5b                   	pop    %ebx
 8050516:	5e                   	pop    %esi
 8050517:	5f                   	pop    %edi
 8050518:	5d                   	pop    %ebp
 8050519:	c3                   	ret    
 805051a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 8050520:	89 74 24 08          	mov    %esi,0x8(%esp)
 8050524:	89 74 24 04          	mov    %esi,0x4(%esp)
 8050528:	89 0c 24             	mov    %ecx,(%esp)
 805052b:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
 805052e:	e8 8d fd ff ff       	call   80502c0 <__multiply>
 8050533:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
 8050536:	89 06                	mov    %eax,(%esi)
 8050538:	89 c6                	mov    %eax,%esi
 805053a:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
 8050540:	eb 92                	jmp    80504d4 <__pow5mult+0x44>
 8050542:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 8050548:	8b 7d e0             	mov    -0x20(%ebp),%edi
 805054b:	e9 78 ff ff ff       	jmp    80504c8 <__pow5mult+0x38>
 8050550:	8b 04 85 5c 4c 05 08 	mov    0x8054c5c(,%eax,4),%eax
 8050557:	89 7c 24 04          	mov    %edi,0x4(%esp)
 805055b:	89 0c 24             	mov    %ecx,(%esp)
 805055e:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
 8050565:	00 
 8050566:	89 44 24 08          	mov    %eax,0x8(%esp)
 805056a:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
 805056d:	e8 5e fa ff ff       	call   804ffd0 <__multadd>
 8050572:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
 8050575:	89 c7                	mov    %eax,%edi
 8050577:	e9 31 ff ff ff       	jmp    80504ad <__pow5mult+0x1d>
 805057c:	89 0c 24             	mov    %ecx,(%esp)
 805057f:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
 8050586:	00 
 8050587:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
 805058a:	e8 81 f9 ff ff       	call   804ff10 <_Balloc>
 805058f:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
 8050592:	c7 40 14 71 02 00 00 	movl   $0x271,0x14(%eax)
 8050599:	89 c6                	mov    %eax,%esi
 805059b:	c7 40 10 01 00 00 00 	movl   $0x1,0x10(%eax)
 80505a2:	89 41 48             	mov    %eax,0x48(%ecx)
 80505a5:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
 80505ab:	e9 0f ff ff ff       	jmp    80504bf <__pow5mult+0x2f>

080505b0 <__lshift>:
 80505b0:	55                   	push   %ebp
 80505b1:	89 e5                	mov    %esp,%ebp
 80505b3:	57                   	push   %edi
 80505b4:	56                   	push   %esi
 80505b5:	53                   	push   %ebx
 80505b6:	83 ec 2c             	sub    $0x2c,%esp
 80505b9:	8b 45 0c             	mov    0xc(%ebp),%eax
 80505bc:	8b 75 10             	mov    0x10(%ebp),%esi
 80505bf:	89 c7                	mov    %eax,%edi
 80505c1:	8b 50 04             	mov    0x4(%eax),%edx
 80505c4:	8b 40 10             	mov    0x10(%eax),%eax
 80505c7:	89 f3                	mov    %esi,%ebx
 80505c9:	c1 fb 05             	sar    $0x5,%ebx
 80505cc:	01 d8                	add    %ebx,%eax
 80505ce:	89 45 d0             	mov    %eax,-0x30(%ebp)
 80505d1:	83 c0 01             	add    $0x1,%eax
 80505d4:	89 c1                	mov    %eax,%ecx
 80505d6:	89 45 d8             	mov    %eax,-0x28(%ebp)
 80505d9:	8b 47 08             	mov    0x8(%edi),%eax
 80505dc:	39 c1                	cmp    %eax,%ecx
 80505de:	7e 09                	jle    80505e9 <__lshift+0x39>
 80505e0:	01 c0                	add    %eax,%eax
 80505e2:	83 c2 01             	add    $0x1,%edx
 80505e5:	39 c1                	cmp    %eax,%ecx
 80505e7:	7f f7                	jg     80505e0 <__lshift+0x30>
 80505e9:	8b 45 08             	mov    0x8(%ebp),%eax
 80505ec:	89 54 24 04          	mov    %edx,0x4(%esp)
 80505f0:	89 04 24             	mov    %eax,(%esp)
 80505f3:	e8 18 f9 ff ff       	call   804ff10 <_Balloc>
 80505f8:	85 db                	test   %ebx,%ebx
 80505fa:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 80505fd:	8d 50 14             	lea    0x14(%eax),%edx
 8050600:	7e 17                	jle    8050619 <__lshift+0x69>
 8050602:	31 c0                	xor    %eax,%eax
 8050604:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8050608:	c7 04 82 00 00 00 00 	movl   $0x0,(%edx,%eax,4)
 805060f:	83 c0 01             	add    $0x1,%eax
 8050612:	39 d8                	cmp    %ebx,%eax
 8050614:	75 f2                	jne    8050608 <__lshift+0x58>
 8050616:	8d 14 82             	lea    (%edx,%eax,4),%edx
 8050619:	8b 7d 0c             	mov    0xc(%ebp),%edi
 805061c:	8b 45 0c             	mov    0xc(%ebp),%eax
 805061f:	8b 4f 10             	mov    0x10(%edi),%ecx
 8050622:	83 c0 14             	add    $0x14,%eax
 8050625:	83 e6 1f             	and    $0x1f,%esi
 8050628:	89 75 e0             	mov    %esi,-0x20(%ebp)
 805062b:	8d 3c 88             	lea    (%eax,%ecx,4),%edi
 805062e:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 8050631:	74 7d                	je     80506b0 <__lshift+0x100>
 8050633:	c7 45 dc 20 00 00 00 	movl   $0x20,-0x24(%ebp)
 805063a:	29 75 dc             	sub    %esi,-0x24(%ebp)
 805063d:	31 f6                	xor    %esi,%esi
 805063f:	eb 09                	jmp    805064a <__lshift+0x9a>
 8050641:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 8050648:	89 fa                	mov    %edi,%edx
 805064a:	8b 18                	mov    (%eax),%ebx
 805064c:	83 c0 04             	add    $0x4,%eax
 805064f:	0f b6 4d e0          	movzbl -0x20(%ebp),%ecx
 8050653:	8d 7a 04             	lea    0x4(%edx),%edi
 8050656:	d3 e3                	shl    %cl,%ebx
 8050658:	0f b6 4d dc          	movzbl -0x24(%ebp),%ecx
 805065c:	09 f3                	or     %esi,%ebx
 805065e:	89 1a                	mov    %ebx,(%edx)
 8050660:	8b 70 fc             	mov    -0x4(%eax),%esi
 8050663:	d3 ee                	shr    %cl,%esi
 8050665:	39 45 e4             	cmp    %eax,-0x1c(%ebp)
 8050668:	77 de                	ja     8050648 <__lshift+0x98>
 805066a:	8b 45 d0             	mov    -0x30(%ebp),%eax
 805066d:	89 72 04             	mov    %esi,0x4(%edx)
 8050670:	83 c0 02             	add    $0x2,%eax
 8050673:	85 f6                	test   %esi,%esi
 8050675:	0f 44 45 d8          	cmove  -0x28(%ebp),%eax
 8050679:	89 45 d8             	mov    %eax,-0x28(%ebp)
 805067c:	8b 45 d8             	mov    -0x28(%ebp),%eax
 805067f:	8b 7d d4             	mov    -0x2c(%ebp),%edi
 8050682:	8b 75 0c             	mov    0xc(%ebp),%esi
 8050685:	83 e8 01             	sub    $0x1,%eax
 8050688:	89 47 10             	mov    %eax,0x10(%edi)
 805068b:	8b 45 0c             	mov    0xc(%ebp),%eax
 805068e:	8b 50 04             	mov    0x4(%eax),%edx
 8050691:	8b 45 08             	mov    0x8(%ebp),%eax
 8050694:	8b 40 4c             	mov    0x4c(%eax),%eax
 8050697:	8d 04 90             	lea    (%eax,%edx,4),%eax
 805069a:	8b 10                	mov    (%eax),%edx
 805069c:	89 16                	mov    %edx,(%esi)
 805069e:	89 30                	mov    %esi,(%eax)
 80506a0:	83 c4 2c             	add    $0x2c,%esp
 80506a3:	89 f8                	mov    %edi,%eax
 80506a5:	5b                   	pop    %ebx
 80506a6:	5e                   	pop    %esi
 80506a7:	5f                   	pop    %edi
 80506a8:	5d                   	pop    %ebp
 80506a9:	c3                   	ret    
 80506aa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 80506b0:	8b 5d e4             	mov    -0x1c(%ebp),%ebx
 80506b3:	90                   	nop
 80506b4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 80506b8:	83 c0 04             	add    $0x4,%eax
 80506bb:	8b 48 fc             	mov    -0x4(%eax),%ecx
 80506be:	83 c2 04             	add    $0x4,%edx
 80506c1:	39 c3                	cmp    %eax,%ebx
 80506c3:	89 4a fc             	mov    %ecx,-0x4(%edx)
 80506c6:	77 f0                	ja     80506b8 <__lshift+0x108>
 80506c8:	eb b2                	jmp    805067c <__lshift+0xcc>
 80506ca:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

080506d0 <__mcmp>:
 80506d0:	55                   	push   %ebp
 80506d1:	89 e5                	mov    %esp,%ebp
 80506d3:	8b 4d 08             	mov    0x8(%ebp),%ecx
 80506d6:	8b 55 0c             	mov    0xc(%ebp),%edx
 80506d9:	53                   	push   %ebx
 80506da:	8b 41 10             	mov    0x10(%ecx),%eax
 80506dd:	8b 5a 10             	mov    0x10(%edx),%ebx
 80506e0:	29 d8                	sub    %ebx,%eax
 80506e2:	85 c0                	test   %eax,%eax
 80506e4:	75 27                	jne    805070d <__mcmp+0x3d>
 80506e6:	c1 e3 02             	shl    $0x2,%ebx
 80506e9:	83 c1 14             	add    $0x14,%ecx
 80506ec:	8d 04 19             	lea    (%ecx,%ebx,1),%eax
 80506ef:	8d 54 1a 14          	lea    0x14(%edx,%ebx,1),%edx
 80506f3:	eb 07                	jmp    80506fc <__mcmp+0x2c>
 80506f5:	8d 76 00             	lea    0x0(%esi),%esi
 80506f8:	39 c1                	cmp    %eax,%ecx
 80506fa:	73 14                	jae    8050710 <__mcmp+0x40>
 80506fc:	83 ea 04             	sub    $0x4,%edx
 80506ff:	83 e8 04             	sub    $0x4,%eax
 8050702:	8b 1a                	mov    (%edx),%ebx
 8050704:	39 18                	cmp    %ebx,(%eax)
 8050706:	74 f0                	je     80506f8 <__mcmp+0x28>
 8050708:	19 c0                	sbb    %eax,%eax
 805070a:	83 c8 01             	or     $0x1,%eax
 805070d:	5b                   	pop    %ebx
 805070e:	5d                   	pop    %ebp
 805070f:	c3                   	ret    
 8050710:	31 c0                	xor    %eax,%eax
 8050712:	5b                   	pop    %ebx
 8050713:	5d                   	pop    %ebp
 8050714:	c3                   	ret    
 8050715:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8050719:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

08050720 <__mdiff>:
 8050720:	55                   	push   %ebp
 8050721:	89 e5                	mov    %esp,%ebp
 8050723:	57                   	push   %edi
 8050724:	56                   	push   %esi
 8050725:	53                   	push   %ebx
 8050726:	83 ec 2c             	sub    $0x2c,%esp
 8050729:	8b 75 0c             	mov    0xc(%ebp),%esi
 805072c:	8b 5d 10             	mov    0x10(%ebp),%ebx
 805072f:	89 34 24             	mov    %esi,(%esp)
 8050732:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 8050736:	e8 95 ff ff ff       	call   80506d0 <__mcmp>
 805073b:	85 c0                	test   %eax,%eax
 805073d:	0f 84 25 01 00 00    	je     8050868 <__mdiff+0x148>
 8050743:	0f 88 0f 01 00 00    	js     8050858 <__mdiff+0x138>
 8050749:	31 ff                	xor    %edi,%edi
 805074b:	8b 46 04             	mov    0x4(%esi),%eax
 805074e:	83 c6 14             	add    $0x14,%esi
 8050751:	89 44 24 04          	mov    %eax,0x4(%esp)
 8050755:	8b 45 08             	mov    0x8(%ebp),%eax
 8050758:	89 04 24             	mov    %eax,(%esp)
 805075b:	e8 b0 f7 ff ff       	call   804ff10 <_Balloc>
 8050760:	8d 4b 14             	lea    0x14(%ebx),%ecx
 8050763:	89 c2                	mov    %eax,%edx
 8050765:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 8050768:	89 78 0c             	mov    %edi,0xc(%eax)
 805076b:	8b 46 fc             	mov    -0x4(%esi),%eax
 805076e:	89 75 e4             	mov    %esi,-0x1c(%ebp)
 8050771:	89 45 dc             	mov    %eax,-0x24(%ebp)
 8050774:	8d 04 86             	lea    (%esi,%eax,4),%eax
 8050777:	89 45 d8             	mov    %eax,-0x28(%ebp)
 805077a:	8b 43 10             	mov    0x10(%ebx),%eax
 805077d:	31 db                	xor    %ebx,%ebx
 805077f:	8d 04 81             	lea    (%ecx,%eax,4),%eax
 8050782:	89 45 e0             	mov    %eax,-0x20(%ebp)
 8050785:	89 d0                	mov    %edx,%eax
 8050787:	83 c0 14             	add    $0x14,%eax
 805078a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 8050790:	8b 75 e4             	mov    -0x1c(%ebp),%esi
 8050793:	83 c0 04             	add    $0x4,%eax
 8050796:	83 c1 04             	add    $0x4,%ecx
 8050799:	83 45 e4 04          	addl   $0x4,-0x1c(%ebp)
 805079d:	8b 3e                	mov    (%esi),%edi
 805079f:	8b 71 fc             	mov    -0x4(%ecx),%esi
 80507a2:	0f b7 d7             	movzwl %di,%edx
 80507a5:	01 da                	add    %ebx,%edx
 80507a7:	0f b7 de             	movzwl %si,%ebx
 80507aa:	29 da                	sub    %ebx,%edx
 80507ac:	c1 ef 10             	shr    $0x10,%edi
 80507af:	89 d3                	mov    %edx,%ebx
 80507b1:	c1 ee 10             	shr    $0x10,%esi
 80507b4:	0f b7 d2             	movzwl %dx,%edx
 80507b7:	c1 fb 10             	sar    $0x10,%ebx
 80507ba:	29 f7                	sub    %esi,%edi
 80507bc:	01 df                	add    %ebx,%edi
 80507be:	89 fb                	mov    %edi,%ebx
 80507c0:	c1 e7 10             	shl    $0x10,%edi
 80507c3:	09 d7                	or     %edx,%edi
 80507c5:	c1 fb 10             	sar    $0x10,%ebx
 80507c8:	39 4d e0             	cmp    %ecx,-0x20(%ebp)
 80507cb:	89 78 fc             	mov    %edi,-0x4(%eax)
 80507ce:	77 c0                	ja     8050790 <__mdiff+0x70>
 80507d0:	8b 75 e4             	mov    -0x1c(%ebp),%esi
 80507d3:	8b 4d d8             	mov    -0x28(%ebp),%ecx
 80507d6:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 80507d9:	89 75 e0             	mov    %esi,-0x20(%ebp)
 80507dc:	39 f1                	cmp    %esi,%ecx
 80507de:	76 3f                	jbe    805081f <__mdiff+0xff>
 80507e0:	8b 3e                	mov    (%esi),%edi
 80507e2:	83 c6 04             	add    $0x4,%esi
 80507e5:	83 c0 04             	add    $0x4,%eax
 80507e8:	0f b7 d7             	movzwl %di,%edx
 80507eb:	01 da                	add    %ebx,%edx
 80507ed:	89 d3                	mov    %edx,%ebx
 80507ef:	0f b7 d2             	movzwl %dx,%edx
 80507f2:	c1 fb 10             	sar    $0x10,%ebx
 80507f5:	c1 ef 10             	shr    $0x10,%edi
 80507f8:	01 df                	add    %ebx,%edi
 80507fa:	89 fb                	mov    %edi,%ebx
 80507fc:	c1 e7 10             	shl    $0x10,%edi
 80507ff:	09 d7                	or     %edx,%edi
 8050801:	c1 fb 10             	sar    $0x10,%ebx
 8050804:	39 f1                	cmp    %esi,%ecx
 8050806:	89 78 fc             	mov    %edi,-0x4(%eax)
 8050809:	77 d5                	ja     80507e0 <__mdiff+0xc0>
 805080b:	8b 45 e0             	mov    -0x20(%ebp),%eax
 805080e:	8b 4d d8             	mov    -0x28(%ebp),%ecx
 8050811:	f7 d0                	not    %eax
 8050813:	01 c8                	add    %ecx,%eax
 8050815:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
 8050818:	c1 e8 02             	shr    $0x2,%eax
 805081b:	8d 44 81 04          	lea    0x4(%ecx,%eax,4),%eax
 805081f:	85 ff                	test   %edi,%edi
 8050821:	75 23                	jne    8050846 <__mdiff+0x126>
 8050823:	8b 4d dc             	mov    -0x24(%ebp),%ecx
 8050826:	8d 14 8d 00 00 00 00 	lea    0x0(,%ecx,4),%edx
 805082d:	29 d0                	sub    %edx,%eax
 805082f:	89 ca                	mov    %ecx,%edx
 8050831:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 8050838:	83 ea 01             	sub    $0x1,%edx
 805083b:	8b 4c 90 fc          	mov    -0x4(%eax,%edx,4),%ecx
 805083f:	85 c9                	test   %ecx,%ecx
 8050841:	74 f5                	je     8050838 <__mdiff+0x118>
 8050843:	89 55 dc             	mov    %edx,-0x24(%ebp)
 8050846:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 8050849:	8b 4d dc             	mov    -0x24(%ebp),%ecx
 805084c:	89 48 10             	mov    %ecx,0x10(%eax)
 805084f:	83 c4 2c             	add    $0x2c,%esp
 8050852:	5b                   	pop    %ebx
 8050853:	5e                   	pop    %esi
 8050854:	5f                   	pop    %edi
 8050855:	5d                   	pop    %ebp
 8050856:	c3                   	ret    
 8050857:	90                   	nop
 8050858:	89 f0                	mov    %esi,%eax
 805085a:	bf 01 00 00 00       	mov    $0x1,%edi
 805085f:	89 de                	mov    %ebx,%esi
 8050861:	89 c3                	mov    %eax,%ebx
 8050863:	e9 e3 fe ff ff       	jmp    805074b <__mdiff+0x2b>
 8050868:	8b 45 08             	mov    0x8(%ebp),%eax
 805086b:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 8050872:	00 
 8050873:	89 04 24             	mov    %eax,(%esp)
 8050876:	e8 95 f6 ff ff       	call   804ff10 <_Balloc>
 805087b:	c7 40 10 01 00 00 00 	movl   $0x1,0x10(%eax)
 8050882:	c7 40 14 00 00 00 00 	movl   $0x0,0x14(%eax)
 8050889:	83 c4 2c             	add    $0x2c,%esp
 805088c:	5b                   	pop    %ebx
 805088d:	5e                   	pop    %esi
 805088e:	5f                   	pop    %edi
 805088f:	5d                   	pop    %ebp
 8050890:	c3                   	ret    
 8050891:	eb 0d                	jmp    80508a0 <__ulp>
 8050893:	90                   	nop
 8050894:	90                   	nop
 8050895:	90                   	nop
 8050896:	90                   	nop
 8050897:	90                   	nop
 8050898:	90                   	nop
 8050899:	90                   	nop
 805089a:	90                   	nop
 805089b:	90                   	nop
 805089c:	90                   	nop
 805089d:	90                   	nop
 805089e:	90                   	nop
 805089f:	90                   	nop

080508a0 <__ulp>:
 80508a0:	55                   	push   %ebp
 80508a1:	89 e5                	mov    %esp,%ebp
 80508a3:	83 ec 08             	sub    $0x8,%esp
 80508a6:	dd 45 08             	fldl   0x8(%ebp)
 80508a9:	dd 5d f8             	fstpl  -0x8(%ebp)
 80508ac:	8b 4d fc             	mov    -0x4(%ebp),%ecx
 80508af:	81 e1 00 00 f0 7f    	and    $0x7ff00000,%ecx
 80508b5:	81 e9 00 00 40 03    	sub    $0x3400000,%ecx
 80508bb:	85 c9                	test   %ecx,%ecx
 80508bd:	7e 11                	jle    80508d0 <__ulp+0x30>
 80508bf:	89 4d fc             	mov    %ecx,-0x4(%ebp)
 80508c2:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
 80508c9:	dd 45 f8             	fldl   -0x8(%ebp)
 80508cc:	c9                   	leave  
 80508cd:	c3                   	ret    
 80508ce:	66 90                	xchg   %ax,%ax
 80508d0:	f7 d9                	neg    %ecx
 80508d2:	c1 f9 14             	sar    $0x14,%ecx
 80508d5:	83 f9 13             	cmp    $0x13,%ecx
 80508d8:	7e 26                	jle    8050900 <__ulp+0x60>
 80508da:	83 f9 32             	cmp    $0x32,%ecx
 80508dd:	b8 01 00 00 00       	mov    $0x1,%eax
 80508e2:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
 80508e9:	7f 0b                	jg     80508f6 <__ulp+0x56>
 80508eb:	ba 33 00 00 00       	mov    $0x33,%edx
 80508f0:	29 ca                	sub    %ecx,%edx
 80508f2:	89 d1                	mov    %edx,%ecx
 80508f4:	d3 e0                	shl    %cl,%eax
 80508f6:	89 45 f8             	mov    %eax,-0x8(%ebp)
 80508f9:	dd 45 f8             	fldl   -0x8(%ebp)
 80508fc:	c9                   	leave  
 80508fd:	c3                   	ret    
 80508fe:	66 90                	xchg   %ax,%ax
 8050900:	b8 00 00 08 00       	mov    $0x80000,%eax
 8050905:	d3 f8                	sar    %cl,%eax
 8050907:	89 45 fc             	mov    %eax,-0x4(%ebp)
 805090a:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
 8050911:	dd 45 f8             	fldl   -0x8(%ebp)
 8050914:	c9                   	leave  
 8050915:	c3                   	ret    
 8050916:	8d 76 00             	lea    0x0(%esi),%esi
 8050919:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

08050920 <__b2d>:
 8050920:	55                   	push   %ebp
 8050921:	89 e5                	mov    %esp,%ebp
 8050923:	57                   	push   %edi
 8050924:	56                   	push   %esi
 8050925:	53                   	push   %ebx
 8050926:	83 ec 18             	sub    $0x18,%esp
 8050929:	8b 45 08             	mov    0x8(%ebp),%eax
 805092c:	8d 78 14             	lea    0x14(%eax),%edi
 805092f:	8b 40 10             	mov    0x10(%eax),%eax
 8050932:	8d 1c 87             	lea    (%edi,%eax,4),%ebx
 8050935:	8b 73 fc             	mov    -0x4(%ebx),%esi
 8050938:	8d 43 fc             	lea    -0x4(%ebx),%eax
 805093b:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 805093e:	89 34 24             	mov    %esi,(%esp)
 8050941:	e8 6a f8 ff ff       	call   80501b0 <__hi0bits>
 8050946:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 8050949:	ba 20 00 00 00       	mov    $0x20,%edx
 805094e:	29 c2                	sub    %eax,%edx
 8050950:	83 f8 0a             	cmp    $0xa,%eax
 8050953:	89 11                	mov    %edx,(%ecx)
 8050955:	7f 41                	jg     8050998 <__b2d+0x78>
 8050957:	b9 0b 00 00 00       	mov    $0xb,%ecx
 805095c:	89 f2                	mov    %esi,%edx
 805095e:	29 c1                	sub    %eax,%ecx
 8050960:	d3 ea                	shr    %cl,%edx
 8050962:	81 ca 00 00 f0 3f    	or     $0x3ff00000,%edx
 8050968:	89 55 ec             	mov    %edx,-0x14(%ebp)
 805096b:	31 d2                	xor    %edx,%edx
 805096d:	3b 7d e4             	cmp    -0x1c(%ebp),%edi
 8050970:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
 8050977:	73 05                	jae    805097e <__b2d+0x5e>
 8050979:	8b 53 f8             	mov    -0x8(%ebx),%edx
 805097c:	d3 ea                	shr    %cl,%edx
 805097e:	8d 48 15             	lea    0x15(%eax),%ecx
 8050981:	d3 e6                	shl    %cl,%esi
 8050983:	09 f2                	or     %esi,%edx
 8050985:	89 55 e8             	mov    %edx,-0x18(%ebp)
 8050988:	dd 45 e8             	fldl   -0x18(%ebp)
 805098b:	83 c4 18             	add    $0x18,%esp
 805098e:	5b                   	pop    %ebx
 805098f:	5e                   	pop    %esi
 8050990:	5f                   	pop    %edi
 8050991:	5d                   	pop    %ebp
 8050992:	c3                   	ret    
 8050993:	90                   	nop
 8050994:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8050998:	31 d2                	xor    %edx,%edx
 805099a:	3b 7d e4             	cmp    -0x1c(%ebp),%edi
 805099d:	73 09                	jae    80509a8 <__b2d+0x88>
 805099f:	8b 53 f8             	mov    -0x8(%ebx),%edx
 80509a2:	8d 4b f8             	lea    -0x8(%ebx),%ecx
 80509a5:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
 80509a8:	89 c3                	mov    %eax,%ebx
 80509aa:	83 eb 0b             	sub    $0xb,%ebx
 80509ad:	89 5d e0             	mov    %ebx,-0x20(%ebp)
 80509b0:	74 4e                	je     8050a00 <__b2d+0xe0>
 80509b2:	0f b6 4d e0          	movzbl -0x20(%ebp),%ecx
 80509b6:	bb 2b 00 00 00       	mov    $0x2b,%ebx
 80509bb:	29 c3                	sub    %eax,%ebx
 80509bd:	89 d0                	mov    %edx,%eax
 80509bf:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
 80509c6:	d3 e6                	shl    %cl,%esi
 80509c8:	89 d9                	mov    %ebx,%ecx
 80509ca:	d3 e8                	shr    %cl,%eax
 80509cc:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
 80509cf:	81 ce 00 00 f0 3f    	or     $0x3ff00000,%esi
 80509d5:	09 c6                	or     %eax,%esi
 80509d7:	31 c0                	xor    %eax,%eax
 80509d9:	89 75 ec             	mov    %esi,-0x14(%ebp)
 80509dc:	39 f9                	cmp    %edi,%ecx
 80509de:	76 07                	jbe    80509e7 <__b2d+0xc7>
 80509e0:	8b 41 fc             	mov    -0x4(%ecx),%eax
 80509e3:	89 d9                	mov    %ebx,%ecx
 80509e5:	d3 e8                	shr    %cl,%eax
 80509e7:	0f b6 4d e0          	movzbl -0x20(%ebp),%ecx
 80509eb:	d3 e2                	shl    %cl,%edx
 80509ed:	09 d0                	or     %edx,%eax
 80509ef:	89 45 e8             	mov    %eax,-0x18(%ebp)
 80509f2:	dd 45 e8             	fldl   -0x18(%ebp)
 80509f5:	83 c4 18             	add    $0x18,%esp
 80509f8:	5b                   	pop    %ebx
 80509f9:	5e                   	pop    %esi
 80509fa:	5f                   	pop    %edi
 80509fb:	5d                   	pop    %ebp
 80509fc:	c3                   	ret    
 80509fd:	8d 76 00             	lea    0x0(%esi),%esi
 8050a00:	81 ce 00 00 f0 3f    	or     $0x3ff00000,%esi
 8050a06:	89 75 ec             	mov    %esi,-0x14(%ebp)
 8050a09:	89 55 e8             	mov    %edx,-0x18(%ebp)
 8050a0c:	dd 45 e8             	fldl   -0x18(%ebp)
 8050a0f:	83 c4 18             	add    $0x18,%esp
 8050a12:	5b                   	pop    %ebx
 8050a13:	5e                   	pop    %esi
 8050a14:	5f                   	pop    %edi
 8050a15:	5d                   	pop    %ebp
 8050a16:	c3                   	ret    
 8050a17:	89 f6                	mov    %esi,%esi
 8050a19:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

08050a20 <__d2b>:
 8050a20:	55                   	push   %ebp
 8050a21:	89 e5                	mov    %esp,%ebp
 8050a23:	57                   	push   %edi
 8050a24:	56                   	push   %esi
 8050a25:	53                   	push   %ebx
 8050a26:	83 ec 2c             	sub    $0x2c,%esp
 8050a29:	8b 45 08             	mov    0x8(%ebp),%eax
 8050a2c:	dd 45 0c             	fldl   0xc(%ebp)
 8050a2f:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
 8050a36:	00 
 8050a37:	dd 5d d0             	fstpl  -0x30(%ebp)
 8050a3a:	89 04 24             	mov    %eax,(%esp)
 8050a3d:	e8 ce f4 ff ff       	call   804ff10 <_Balloc>
 8050a42:	8b 5d d4             	mov    -0x2c(%ebp),%ebx
 8050a45:	89 c6                	mov    %eax,%esi
 8050a47:	89 d8                	mov    %ebx,%eax
 8050a49:	81 e3 ff ff ff 7f    	and    $0x7fffffff,%ebx
 8050a4f:	25 ff ff 0f 00       	and    $0xfffff,%eax
 8050a54:	c1 eb 14             	shr    $0x14,%ebx
 8050a57:	85 db                	test   %ebx,%ebx
 8050a59:	74 05                	je     8050a60 <__d2b+0x40>
 8050a5b:	0d 00 00 10 00       	or     $0x100000,%eax
 8050a60:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 8050a63:	8b 45 d0             	mov    -0x30(%ebp),%eax
 8050a66:	85 c0                	test   %eax,%eax
 8050a68:	74 56                	je     8050ac0 <__d2b+0xa0>
 8050a6a:	89 45 e0             	mov    %eax,-0x20(%ebp)
 8050a6d:	8d 45 e0             	lea    -0x20(%ebp),%eax
 8050a70:	89 04 24             	mov    %eax,(%esp)
 8050a73:	e8 98 f7 ff ff       	call   8050210 <__lo0bits>
 8050a78:	85 c0                	test   %eax,%eax
 8050a7a:	0f 85 90 00 00 00    	jne    8050b10 <__d2b+0xf0>
 8050a80:	8b 55 e0             	mov    -0x20(%ebp),%edx
 8050a83:	89 56 14             	mov    %edx,0x14(%esi)
 8050a86:	8b 55 e4             	mov    -0x1c(%ebp),%edx
 8050a89:	83 fa 01             	cmp    $0x1,%edx
 8050a8c:	19 ff                	sbb    %edi,%edi
 8050a8e:	83 c7 02             	add    $0x2,%edi
 8050a91:	85 db                	test   %ebx,%ebx
 8050a93:	89 56 18             	mov    %edx,0x18(%esi)
 8050a96:	89 7e 10             	mov    %edi,0x10(%esi)
 8050a99:	74 49                	je     8050ae4 <__d2b+0xc4>
 8050a9b:	8b 4d 14             	mov    0x14(%ebp),%ecx
 8050a9e:	8d 94 18 cd fb ff ff 	lea    -0x433(%eax,%ebx,1),%edx
 8050aa5:	89 11                	mov    %edx,(%ecx)
 8050aa7:	ba 35 00 00 00       	mov    $0x35,%edx
 8050aac:	29 c2                	sub    %eax,%edx
 8050aae:	8b 45 18             	mov    0x18(%ebp),%eax
 8050ab1:	89 10                	mov    %edx,(%eax)
 8050ab3:	83 c4 2c             	add    $0x2c,%esp
 8050ab6:	89 f0                	mov    %esi,%eax
 8050ab8:	5b                   	pop    %ebx
 8050ab9:	5e                   	pop    %esi
 8050aba:	5f                   	pop    %edi
 8050abb:	5d                   	pop    %ebp
 8050abc:	c3                   	ret    
 8050abd:	8d 76 00             	lea    0x0(%esi),%esi
 8050ac0:	8d 45 e4             	lea    -0x1c(%ebp),%eax
 8050ac3:	bf 01 00 00 00       	mov    $0x1,%edi
 8050ac8:	89 04 24             	mov    %eax,(%esp)
 8050acb:	e8 40 f7 ff ff       	call   8050210 <__lo0bits>
 8050ad0:	8b 55 e4             	mov    -0x1c(%ebp),%edx
 8050ad3:	c7 46 10 01 00 00 00 	movl   $0x1,0x10(%esi)
 8050ada:	89 56 14             	mov    %edx,0x14(%esi)
 8050add:	83 c0 20             	add    $0x20,%eax
 8050ae0:	85 db                	test   %ebx,%ebx
 8050ae2:	75 b7                	jne    8050a9b <__d2b+0x7b>
 8050ae4:	8b 4d 14             	mov    0x14(%ebp),%ecx
 8050ae7:	2d 32 04 00 00       	sub    $0x432,%eax
 8050aec:	89 01                	mov    %eax,(%ecx)
 8050aee:	8b 44 be 10          	mov    0x10(%esi,%edi,4),%eax
 8050af2:	c1 e7 05             	shl    $0x5,%edi
 8050af5:	89 04 24             	mov    %eax,(%esp)
 8050af8:	e8 b3 f6 ff ff       	call   80501b0 <__hi0bits>
 8050afd:	29 c7                	sub    %eax,%edi
 8050aff:	8b 45 18             	mov    0x18(%ebp),%eax
 8050b02:	89 38                	mov    %edi,(%eax)
 8050b04:	83 c4 2c             	add    $0x2c,%esp
 8050b07:	89 f0                	mov    %esi,%eax
 8050b09:	5b                   	pop    %ebx
 8050b0a:	5e                   	pop    %esi
 8050b0b:	5f                   	pop    %edi
 8050b0c:	5d                   	pop    %ebp
 8050b0d:	c3                   	ret    
 8050b0e:	66 90                	xchg   %ax,%ax
 8050b10:	8b 55 e4             	mov    -0x1c(%ebp),%edx
 8050b13:	b9 20 00 00 00       	mov    $0x20,%ecx
 8050b18:	29 c1                	sub    %eax,%ecx
 8050b1a:	89 d7                	mov    %edx,%edi
 8050b1c:	d3 e7                	shl    %cl,%edi
 8050b1e:	8b 4d e0             	mov    -0x20(%ebp),%ecx
 8050b21:	09 f9                	or     %edi,%ecx
 8050b23:	89 4e 14             	mov    %ecx,0x14(%esi)
 8050b26:	89 c1                	mov    %eax,%ecx
 8050b28:	d3 ea                	shr    %cl,%edx
 8050b2a:	89 55 e4             	mov    %edx,-0x1c(%ebp)
 8050b2d:	e9 57 ff ff ff       	jmp    8050a89 <__d2b+0x69>
 8050b32:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 8050b39:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

08050b40 <__ratio>:
 8050b40:	55                   	push   %ebp
 8050b41:	89 e5                	mov    %esp,%ebp
 8050b43:	56                   	push   %esi
 8050b44:	53                   	push   %ebx
 8050b45:	83 ec 30             	sub    $0x30,%esp
 8050b48:	8b 75 08             	mov    0x8(%ebp),%esi
 8050b4b:	8d 45 f0             	lea    -0x10(%ebp),%eax
 8050b4e:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 8050b51:	89 44 24 04          	mov    %eax,0x4(%esp)
 8050b55:	89 34 24             	mov    %esi,(%esp)
 8050b58:	e8 c3 fd ff ff       	call   8050920 <__b2d>
 8050b5d:	8d 45 f4             	lea    -0xc(%ebp),%eax
 8050b60:	89 44 24 04          	mov    %eax,0x4(%esp)
 8050b64:	89 1c 24             	mov    %ebx,(%esp)
 8050b67:	dd 55 e0             	fstl   -0x20(%ebp)
 8050b6a:	dd 5d d8             	fstpl  -0x28(%ebp)
 8050b6d:	e8 ae fd ff ff       	call   8050920 <__b2d>
 8050b72:	8b 46 10             	mov    0x10(%esi),%eax
 8050b75:	2b 43 10             	sub    0x10(%ebx),%eax
 8050b78:	8b 55 f0             	mov    -0x10(%ebp),%edx
 8050b7b:	2b 55 f4             	sub    -0xc(%ebp),%edx
 8050b7e:	c1 e0 05             	shl    $0x5,%eax
 8050b81:	01 d0                	add    %edx,%eax
 8050b83:	dd 55 d0             	fstl   -0x30(%ebp)
 8050b86:	85 c0                	test   %eax,%eax
 8050b88:	dd 45 d8             	fldl   -0x28(%ebp)
 8050b8b:	7e 1b                	jle    8050ba8 <__ratio+0x68>
 8050b8d:	dd d8                	fstp   %st(0)
 8050b8f:	c1 e0 14             	shl    $0x14,%eax
 8050b92:	01 45 e4             	add    %eax,-0x1c(%ebp)
 8050b95:	dd 45 e0             	fldl   -0x20(%ebp)
 8050b98:	83 c4 30             	add    $0x30,%esp
 8050b9b:	5b                   	pop    %ebx
 8050b9c:	de f1                	fdivp  %st,%st(1)
 8050b9e:	5e                   	pop    %esi
 8050b9f:	5d                   	pop    %ebp
 8050ba0:	c3                   	ret    
 8050ba1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 8050ba8:	dd d9                	fstp   %st(1)
 8050baa:	c1 e0 14             	shl    $0x14,%eax
 8050bad:	29 45 d4             	sub    %eax,-0x2c(%ebp)
 8050bb0:	dd 45 d0             	fldl   -0x30(%ebp)
 8050bb3:	83 c4 30             	add    $0x30,%esp
 8050bb6:	5b                   	pop    %ebx
 8050bb7:	de f9                	fdivrp %st,%st(1)
 8050bb9:	5e                   	pop    %esi
 8050bba:	5d                   	pop    %ebp
 8050bbb:	c3                   	ret    
 8050bbc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

08050bc0 <_mprec_log10>:
 8050bc0:	55                   	push   %ebp
 8050bc1:	89 e5                	mov    %esp,%ebp
 8050bc3:	8b 45 08             	mov    0x8(%ebp),%eax
 8050bc6:	83 f8 17             	cmp    $0x17,%eax
 8050bc9:	7e 1d                	jle    8050be8 <_mprec_log10+0x28>
 8050bcb:	d9 e8                	fld1   
 8050bcd:	d9 05 28 4c 05 08    	flds   0x8054c28
 8050bd3:	90                   	nop
 8050bd4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8050bd8:	83 e8 01             	sub    $0x1,%eax
 8050bdb:	dc c9                	fmul   %st,%st(1)
 8050bdd:	75 f9                	jne    8050bd8 <_mprec_log10+0x18>
 8050bdf:	dd d8                	fstp   %st(0)
 8050be1:	5d                   	pop    %ebp
 8050be2:	c3                   	ret    
 8050be3:	90                   	nop
 8050be4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8050be8:	dd 04 c5 00 4d 05 08 	fldl   0x8054d00(,%eax,8)
 8050bef:	5d                   	pop    %ebp
 8050bf0:	c3                   	ret    
 8050bf1:	eb 0d                	jmp    8050c00 <__copybits>
 8050bf3:	90                   	nop
 8050bf4:	90                   	nop
 8050bf5:	90                   	nop
 8050bf6:	90                   	nop
 8050bf7:	90                   	nop
 8050bf8:	90                   	nop
 8050bf9:	90                   	nop
 8050bfa:	90                   	nop
 8050bfb:	90                   	nop
 8050bfc:	90                   	nop
 8050bfd:	90                   	nop
 8050bfe:	90                   	nop
 8050bff:	90                   	nop

08050c00 <__copybits>:
 8050c00:	55                   	push   %ebp
 8050c01:	89 e5                	mov    %esp,%ebp
 8050c03:	57                   	push   %edi
 8050c04:	8b 7d 10             	mov    0x10(%ebp),%edi
 8050c07:	56                   	push   %esi
 8050c08:	8b 75 0c             	mov    0xc(%ebp),%esi
 8050c0b:	8b 45 08             	mov    0x8(%ebp),%eax
 8050c0e:	53                   	push   %ebx
 8050c0f:	8b 4f 10             	mov    0x10(%edi),%ecx
 8050c12:	8d 56 ff             	lea    -0x1(%esi),%edx
 8050c15:	c1 fa 05             	sar    $0x5,%edx
 8050c18:	8d 74 90 04          	lea    0x4(%eax,%edx,4),%esi
 8050c1c:	8d 57 14             	lea    0x14(%edi),%edx
 8050c1f:	8d 1c 8a             	lea    (%edx,%ecx,4),%ebx
 8050c22:	39 da                	cmp    %ebx,%edx
 8050c24:	73 34                	jae    8050c5a <__copybits+0x5a>
 8050c26:	89 c1                	mov    %eax,%ecx
 8050c28:	83 c2 04             	add    $0x4,%edx
 8050c2b:	8b 42 fc             	mov    -0x4(%edx),%eax
 8050c2e:	83 c1 04             	add    $0x4,%ecx
 8050c31:	39 d3                	cmp    %edx,%ebx
 8050c33:	89 41 fc             	mov    %eax,-0x4(%ecx)
 8050c36:	77 f0                	ja     8050c28 <__copybits+0x28>
 8050c38:	8b 45 08             	mov    0x8(%ebp),%eax
 8050c3b:	29 fb                	sub    %edi,%ebx
 8050c3d:	8d 53 eb             	lea    -0x15(%ebx),%edx
 8050c40:	c1 ea 02             	shr    $0x2,%edx
 8050c43:	8d 44 90 04          	lea    0x4(%eax,%edx,4),%eax
 8050c47:	39 c6                	cmp    %eax,%esi
 8050c49:	76 13                	jbe    8050c5e <__copybits+0x5e>
 8050c4b:	90                   	nop
 8050c4c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8050c50:	83 c0 04             	add    $0x4,%eax
 8050c53:	c7 40 fc 00 00 00 00 	movl   $0x0,-0x4(%eax)
 8050c5a:	39 c6                	cmp    %eax,%esi
 8050c5c:	77 f2                	ja     8050c50 <__copybits+0x50>
 8050c5e:	5b                   	pop    %ebx
 8050c5f:	5e                   	pop    %esi
 8050c60:	5f                   	pop    %edi
 8050c61:	5d                   	pop    %ebp
 8050c62:	c3                   	ret    
 8050c63:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 8050c69:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

08050c70 <__any_on>:
 8050c70:	55                   	push   %ebp
 8050c71:	89 e5                	mov    %esp,%ebp
 8050c73:	8b 45 08             	mov    0x8(%ebp),%eax
 8050c76:	57                   	push   %edi
 8050c77:	56                   	push   %esi
 8050c78:	53                   	push   %ebx
 8050c79:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 8050c7c:	8d 50 14             	lea    0x14(%eax),%edx
 8050c7f:	8b 40 10             	mov    0x10(%eax),%eax
 8050c82:	c1 fb 05             	sar    $0x5,%ebx
 8050c85:	39 d8                	cmp    %ebx,%eax
 8050c87:	7d 2f                	jge    8050cb8 <__any_on+0x48>
 8050c89:	8d 1c 82             	lea    (%edx,%eax,4),%ebx
 8050c8c:	39 da                	cmp    %ebx,%edx
 8050c8e:	73 1d                	jae    8050cad <__any_on+0x3d>
 8050c90:	8d 43 fc             	lea    -0x4(%ebx),%eax
 8050c93:	8b 5b fc             	mov    -0x4(%ebx),%ebx
 8050c96:	85 db                	test   %ebx,%ebx
 8050c98:	74 0f                	je     8050ca9 <__any_on+0x39>
 8050c9a:	eb 44                	jmp    8050ce0 <__any_on+0x70>
 8050c9c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8050ca0:	83 e8 04             	sub    $0x4,%eax
 8050ca3:	8b 08                	mov    (%eax),%ecx
 8050ca5:	85 c9                	test   %ecx,%ecx
 8050ca7:	75 37                	jne    8050ce0 <__any_on+0x70>
 8050ca9:	39 c2                	cmp    %eax,%edx
 8050cab:	72 f3                	jb     8050ca0 <__any_on+0x30>
 8050cad:	31 c0                	xor    %eax,%eax
 8050caf:	5b                   	pop    %ebx
 8050cb0:	5e                   	pop    %esi
 8050cb1:	5f                   	pop    %edi
 8050cb2:	5d                   	pop    %ebp
 8050cb3:	c3                   	ret    
 8050cb4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8050cb8:	7e 1e                	jle    8050cd8 <__any_on+0x68>
 8050cba:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 8050cbd:	8d 1c 9a             	lea    (%edx,%ebx,4),%ebx
 8050cc0:	83 e1 1f             	and    $0x1f,%ecx
 8050cc3:	74 c7                	je     8050c8c <__any_on+0x1c>
 8050cc5:	8b 3b                	mov    (%ebx),%edi
 8050cc7:	b8 01 00 00 00       	mov    $0x1,%eax
 8050ccc:	89 fe                	mov    %edi,%esi
 8050cce:	d3 ee                	shr    %cl,%esi
 8050cd0:	d3 e6                	shl    %cl,%esi
 8050cd2:	39 fe                	cmp    %edi,%esi
 8050cd4:	75 d9                	jne    8050caf <__any_on+0x3f>
 8050cd6:	eb b4                	jmp    8050c8c <__any_on+0x1c>
 8050cd8:	8d 1c 9a             	lea    (%edx,%ebx,4),%ebx
 8050cdb:	eb af                	jmp    8050c8c <__any_on+0x1c>
 8050cdd:	8d 76 00             	lea    0x0(%esi),%esi
 8050ce0:	5b                   	pop    %ebx
 8050ce1:	b8 01 00 00 00       	mov    $0x1,%eax
 8050ce6:	5e                   	pop    %esi
 8050ce7:	5f                   	pop    %edi
 8050ce8:	5d                   	pop    %ebp
 8050ce9:	c3                   	ret    
 8050cea:	66 90                	xchg   %ax,%ax
 8050cec:	66 90                	xchg   %ax,%ax
 8050cee:	66 90                	xchg   %ax,%ax

08050cf0 <_sbrk_r>:
 8050cf0:	55                   	push   %ebp
 8050cf1:	89 e5                	mov    %esp,%ebp
 8050cf3:	83 ec 18             	sub    $0x18,%esp
 8050cf6:	8b 45 0c             	mov    0xc(%ebp),%eax
 8050cf9:	c7 05 74 d6 06 08 00 	movl   $0x0,0x806d674
 8050d00:	00 00 00 
 8050d03:	89 04 24             	mov    %eax,(%esp)
 8050d06:	e8 b5 74 ff ff       	call   80481c0 <sbrk>
 8050d0b:	83 f8 ff             	cmp    $0xffffffff,%eax
 8050d0e:	74 08                	je     8050d18 <_sbrk_r+0x28>
 8050d10:	c9                   	leave  
 8050d11:	c3                   	ret    
 8050d12:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 8050d18:	8b 15 74 d6 06 08    	mov    0x806d674,%edx
 8050d1e:	85 d2                	test   %edx,%edx
 8050d20:	74 ee                	je     8050d10 <_sbrk_r+0x20>
 8050d22:	8b 4d 08             	mov    0x8(%ebp),%ecx
 8050d25:	89 11                	mov    %edx,(%ecx)
 8050d27:	c9                   	leave  
 8050d28:	c3                   	ret    
 8050d29:	66 90                	xchg   %ax,%ax
 8050d2b:	66 90                	xchg   %ax,%ax
 8050d2d:	66 90                	xchg   %ax,%ax
 8050d2f:	90                   	nop

08050d30 <__fpclassifyd>:
 8050d30:	55                   	push   %ebp
 8050d31:	b8 02 00 00 00       	mov    $0x2,%eax
 8050d36:	89 e5                	mov    %esp,%ebp
 8050d38:	53                   	push   %ebx
 8050d39:	83 ec 0c             	sub    $0xc,%esp
 8050d3c:	dd 45 08             	fldl   0x8(%ebp)
 8050d3f:	dd 5d f0             	fstpl  -0x10(%ebp)
 8050d42:	8b 55 f0             	mov    -0x10(%ebp),%edx
 8050d45:	8b 4d f4             	mov    -0xc(%ebp),%ecx
 8050d48:	89 d3                	mov    %edx,%ebx
 8050d4a:	09 cb                	or     %ecx,%ebx
 8050d4c:	75 0a                	jne    8050d58 <__fpclassifyd+0x28>
 8050d4e:	83 c4 0c             	add    $0xc,%esp
 8050d51:	5b                   	pop    %ebx
 8050d52:	5d                   	pop    %ebp
 8050d53:	c3                   	ret    
 8050d54:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8050d58:	85 d2                	test   %edx,%edx
 8050d5a:	0f 94 c2             	sete   %dl
 8050d5d:	75 08                	jne    8050d67 <__fpclassifyd+0x37>
 8050d5f:	81 f9 00 00 00 80    	cmp    $0x80000000,%ecx
 8050d65:	74 e7                	je     8050d4e <__fpclassifyd+0x1e>
 8050d67:	81 e1 ff ff ff 7f    	and    $0x7fffffff,%ecx
 8050d6d:	b8 04 00 00 00       	mov    $0x4,%eax
 8050d72:	8d 99 00 00 f0 ff    	lea    -0x100000(%ecx),%ebx
 8050d78:	81 fb ff ff df 7f    	cmp    $0x7fdfffff,%ebx
 8050d7e:	76 ce                	jbe    8050d4e <__fpclassifyd+0x1e>
 8050d80:	81 f9 ff ff 0f 00    	cmp    $0xfffff,%ecx
 8050d86:	b0 03                	mov    $0x3,%al
 8050d88:	76 c4                	jbe    8050d4e <__fpclassifyd+0x1e>
 8050d8a:	31 c0                	xor    %eax,%eax
 8050d8c:	81 f9 00 00 f0 7f    	cmp    $0x7ff00000,%ecx
 8050d92:	0f 94 c0             	sete   %al
 8050d95:	21 d0                	and    %edx,%eax
 8050d97:	eb b5                	jmp    8050d4e <__fpclassifyd+0x1e>
 8050d99:	66 90                	xchg   %ax,%ax
 8050d9b:	66 90                	xchg   %ax,%ax
 8050d9d:	66 90                	xchg   %ax,%ax
 8050d9f:	90                   	nop

08050da0 <__sread>:
 8050da0:	55                   	push   %ebp
 8050da1:	89 e5                	mov    %esp,%ebp
 8050da3:	53                   	push   %ebx
 8050da4:	83 ec 14             	sub    $0x14,%esp
 8050da7:	8b 45 14             	mov    0x14(%ebp),%eax
 8050daa:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 8050dad:	89 44 24 0c          	mov    %eax,0xc(%esp)
 8050db1:	8b 45 10             	mov    0x10(%ebp),%eax
 8050db4:	89 44 24 08          	mov    %eax,0x8(%esp)
 8050db8:	0f bf 43 0e          	movswl 0xe(%ebx),%eax
 8050dbc:	89 44 24 04          	mov    %eax,0x4(%esp)
 8050dc0:	8b 45 08             	mov    0x8(%ebp),%eax
 8050dc3:	89 04 24             	mov    %eax,(%esp)
 8050dc6:	e8 75 2d 00 00       	call   8053b40 <_read_r>
 8050dcb:	85 c0                	test   %eax,%eax
 8050dcd:	78 09                	js     8050dd8 <__sread+0x38>
 8050dcf:	01 43 50             	add    %eax,0x50(%ebx)
 8050dd2:	83 c4 14             	add    $0x14,%esp
 8050dd5:	5b                   	pop    %ebx
 8050dd6:	5d                   	pop    %ebp
 8050dd7:	c3                   	ret    
 8050dd8:	66 81 63 0c ff ef    	andw   $0xefff,0xc(%ebx)
 8050dde:	83 c4 14             	add    $0x14,%esp
 8050de1:	5b                   	pop    %ebx
 8050de2:	5d                   	pop    %ebp
 8050de3:	c3                   	ret    
 8050de4:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 8050dea:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

08050df0 <__seofread>:
 8050df0:	55                   	push   %ebp
 8050df1:	31 c0                	xor    %eax,%eax
 8050df3:	89 e5                	mov    %esp,%ebp
 8050df5:	5d                   	pop    %ebp
 8050df6:	c3                   	ret    
 8050df7:	89 f6                	mov    %esi,%esi
 8050df9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

08050e00 <__swrite>:
 8050e00:	55                   	push   %ebp
 8050e01:	89 e5                	mov    %esp,%ebp
 8050e03:	57                   	push   %edi
 8050e04:	56                   	push   %esi
 8050e05:	53                   	push   %ebx
 8050e06:	83 ec 2c             	sub    $0x2c,%esp
 8050e09:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 8050e0c:	8b 75 08             	mov    0x8(%ebp),%esi
 8050e0f:	8b 7d 10             	mov    0x10(%ebp),%edi
 8050e12:	8b 55 14             	mov    0x14(%ebp),%edx
 8050e15:	0f b7 43 0c          	movzwl 0xc(%ebx),%eax
 8050e19:	f6 c4 01             	test   $0x1,%ah
 8050e1c:	74 2a                	je     8050e48 <__swrite+0x48>
 8050e1e:	c7 44 24 0c 02 00 00 	movl   $0x2,0xc(%esp)
 8050e25:	00 
 8050e26:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 8050e2d:	00 
 8050e2e:	0f bf 43 0e          	movswl 0xe(%ebx),%eax
 8050e32:	89 34 24             	mov    %esi,(%esp)
 8050e35:	89 55 e4             	mov    %edx,-0x1c(%ebp)
 8050e38:	89 44 24 04          	mov    %eax,0x4(%esp)
 8050e3c:	e8 1f 2c 00 00       	call   8053a60 <_lseek_r>
 8050e41:	0f b7 43 0c          	movzwl 0xc(%ebx),%eax
 8050e45:	8b 55 e4             	mov    -0x1c(%ebp),%edx
 8050e48:	80 e4 ef             	and    $0xef,%ah
 8050e4b:	66 89 43 0c          	mov    %ax,0xc(%ebx)
 8050e4f:	89 7d 10             	mov    %edi,0x10(%ebp)
 8050e52:	89 55 14             	mov    %edx,0x14(%ebp)
 8050e55:	0f bf 43 0e          	movswl 0xe(%ebx),%eax
 8050e59:	89 75 08             	mov    %esi,0x8(%ebp)
 8050e5c:	89 45 0c             	mov    %eax,0xc(%ebp)
 8050e5f:	83 c4 2c             	add    $0x2c,%esp
 8050e62:	5b                   	pop    %ebx
 8050e63:	5e                   	pop    %esi
 8050e64:	5f                   	pop    %edi
 8050e65:	5d                   	pop    %ebp
 8050e66:	e9 b5 22 00 00       	jmp    8053120 <_write_r>
 8050e6b:	90                   	nop
 8050e6c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

08050e70 <__sseek>:
 8050e70:	55                   	push   %ebp
 8050e71:	89 e5                	mov    %esp,%ebp
 8050e73:	53                   	push   %ebx
 8050e74:	83 ec 14             	sub    $0x14,%esp
 8050e77:	8b 45 14             	mov    0x14(%ebp),%eax
 8050e7a:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 8050e7d:	89 44 24 0c          	mov    %eax,0xc(%esp)
 8050e81:	8b 45 10             	mov    0x10(%ebp),%eax
 8050e84:	89 44 24 08          	mov    %eax,0x8(%esp)
 8050e88:	0f bf 43 0e          	movswl 0xe(%ebx),%eax
 8050e8c:	89 44 24 04          	mov    %eax,0x4(%esp)
 8050e90:	8b 45 08             	mov    0x8(%ebp),%eax
 8050e93:	89 04 24             	mov    %eax,(%esp)
 8050e96:	e8 c5 2b 00 00       	call   8053a60 <_lseek_r>
 8050e9b:	83 f8 ff             	cmp    $0xffffffff,%eax
 8050e9e:	74 10                	je     8050eb0 <__sseek+0x40>
 8050ea0:	66 81 4b 0c 00 10    	orw    $0x1000,0xc(%ebx)
 8050ea6:	89 43 50             	mov    %eax,0x50(%ebx)
 8050ea9:	83 c4 14             	add    $0x14,%esp
 8050eac:	5b                   	pop    %ebx
 8050ead:	5d                   	pop    %ebp
 8050eae:	c3                   	ret    
 8050eaf:	90                   	nop
 8050eb0:	66 81 63 0c ff ef    	andw   $0xefff,0xc(%ebx)
 8050eb6:	83 c4 14             	add    $0x14,%esp
 8050eb9:	5b                   	pop    %ebx
 8050eba:	5d                   	pop    %ebp
 8050ebb:	c3                   	ret    
 8050ebc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

08050ec0 <__sclose>:
 8050ec0:	55                   	push   %ebp
 8050ec1:	89 e5                	mov    %esp,%ebp
 8050ec3:	8b 45 0c             	mov    0xc(%ebp),%eax
 8050ec6:	0f bf 40 0e          	movswl 0xe(%eax),%eax
 8050eca:	89 45 0c             	mov    %eax,0xc(%ebp)
 8050ecd:	5d                   	pop    %ebp
 8050ece:	e9 5d 23 00 00       	jmp    8053230 <_close_r>
 8050ed3:	66 90                	xchg   %ax,%ax
 8050ed5:	66 90                	xchg   %ax,%ax
 8050ed7:	66 90                	xchg   %ax,%ax
 8050ed9:	66 90                	xchg   %ax,%ax
 8050edb:	66 90                	xchg   %ax,%ax
 8050edd:	66 90                	xchg   %ax,%ax
 8050edf:	90                   	nop

08050ee0 <strcmp>:
 8050ee0:	55                   	push   %ebp
 8050ee1:	89 e5                	mov    %esp,%ebp
 8050ee3:	8b 45 08             	mov    0x8(%ebp),%eax
 8050ee6:	8b 55 0c             	mov    0xc(%ebp),%edx
 8050ee9:	53                   	push   %ebx
 8050eea:	89 c1                	mov    %eax,%ecx
 8050eec:	09 d1                	or     %edx,%ecx
 8050eee:	83 e1 03             	and    $0x3,%ecx
 8050ef1:	75 17                	jne    8050f0a <strcmp+0x2a>
 8050ef3:	8b 08                	mov    (%eax),%ecx
 8050ef5:	3b 0a                	cmp    (%edx),%ecx
 8050ef7:	74 33                	je     8050f2c <strcmp+0x4c>
 8050ef9:	eb 0f                	jmp    8050f0a <strcmp+0x2a>
 8050efb:	90                   	nop
 8050efc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8050f00:	3a 0a                	cmp    (%edx),%cl
 8050f02:	75 0d                	jne    8050f11 <strcmp+0x31>
 8050f04:	83 c0 01             	add    $0x1,%eax
 8050f07:	83 c2 01             	add    $0x1,%edx
 8050f0a:	0f b6 08             	movzbl (%eax),%ecx
 8050f0d:	84 c9                	test   %cl,%cl
 8050f0f:	75 ef                	jne    8050f00 <strcmp+0x20>
 8050f11:	0f b6 00             	movzbl (%eax),%eax
 8050f14:	0f b6 12             	movzbl (%edx),%edx
 8050f17:	5b                   	pop    %ebx
 8050f18:	5d                   	pop    %ebp
 8050f19:	29 d0                	sub    %edx,%eax
 8050f1b:	c3                   	ret    
 8050f1c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8050f20:	83 c0 04             	add    $0x4,%eax
 8050f23:	83 c2 04             	add    $0x4,%edx
 8050f26:	8b 08                	mov    (%eax),%ecx
 8050f28:	3b 0a                	cmp    (%edx),%ecx
 8050f2a:	75 de                	jne    8050f0a <strcmp+0x2a>
 8050f2c:	8d 99 ff fe fe fe    	lea    -0x1010101(%ecx),%ebx
 8050f32:	f7 d1                	not    %ecx
 8050f34:	21 cb                	and    %ecx,%ebx
 8050f36:	81 e3 80 80 80 80    	and    $0x80808080,%ebx
 8050f3c:	74 e2                	je     8050f20 <strcmp+0x40>
 8050f3e:	31 c0                	xor    %eax,%eax
 8050f40:	5b                   	pop    %ebx
 8050f41:	5d                   	pop    %ebp
 8050f42:	c3                   	ret    
 8050f43:	66 90                	xchg   %ax,%ax
 8050f45:	66 90                	xchg   %ax,%ax
 8050f47:	66 90                	xchg   %ax,%ax
 8050f49:	66 90                	xchg   %ax,%ax
 8050f4b:	66 90                	xchg   %ax,%ax
 8050f4d:	66 90                	xchg   %ax,%ax
 8050f4f:	90                   	nop

08050f50 <__ssprint_r>:
 8050f50:	55                   	push   %ebp
 8050f51:	89 e5                	mov    %esp,%ebp
 8050f53:	57                   	push   %edi
 8050f54:	56                   	push   %esi
 8050f55:	53                   	push   %ebx
 8050f56:	83 ec 2c             	sub    $0x2c,%esp
 8050f59:	8b 45 10             	mov    0x10(%ebp),%eax
 8050f5c:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 8050f5f:	8b 00                	mov    (%eax),%eax
 8050f61:	89 c7                	mov    %eax,%edi
 8050f63:	8b 45 10             	mov    0x10(%ebp),%eax
 8050f66:	8b 40 08             	mov    0x8(%eax),%eax
 8050f69:	85 c0                	test   %eax,%eax
 8050f6b:	0f 84 af 01 00 00    	je     8051120 <__ssprint_r+0x1d0>
 8050f71:	31 c9                	xor    %ecx,%ecx
 8050f73:	31 d2                	xor    %edx,%edx
 8050f75:	8b 03                	mov    (%ebx),%eax
 8050f77:	89 ce                	mov    %ecx,%esi
 8050f79:	85 f6                	test   %esi,%esi
 8050f7b:	89 55 e4             	mov    %edx,-0x1c(%ebp)
 8050f7e:	0f 84 ec 00 00 00    	je     8051070 <__ssprint_r+0x120>
 8050f84:	8b 53 08             	mov    0x8(%ebx),%edx
 8050f87:	39 d6                	cmp    %edx,%esi
 8050f89:	0f 82 fc 00 00 00    	jb     805108b <__ssprint_r+0x13b>
 8050f8f:	0f b7 4b 0c          	movzwl 0xc(%ebx),%ecx
 8050f93:	66 f7 c1 80 04       	test   $0x480,%cx
 8050f98:	0f 84 fa 00 00 00    	je     8051098 <__ssprint_r+0x148>
 8050f9e:	8b 53 10             	mov    0x10(%ebx),%edx
 8050fa1:	29 d0                	sub    %edx,%eax
 8050fa3:	89 45 dc             	mov    %eax,-0x24(%ebp)
 8050fa6:	8b 43 14             	mov    0x14(%ebx),%eax
 8050fa9:	89 55 d8             	mov    %edx,-0x28(%ebp)
 8050fac:	8d 04 40             	lea    (%eax,%eax,2),%eax
 8050faf:	89 c2                	mov    %eax,%edx
 8050fb1:	c1 ea 1f             	shr    $0x1f,%edx
 8050fb4:	01 d0                	add    %edx,%eax
 8050fb6:	89 45 e0             	mov    %eax,-0x20(%ebp)
 8050fb9:	8b 45 dc             	mov    -0x24(%ebp),%eax
 8050fbc:	d1 7d e0             	sarl   -0x20(%ebp)
 8050fbf:	8d 44 06 01          	lea    0x1(%esi,%eax,1),%eax
 8050fc3:	39 45 e0             	cmp    %eax,-0x20(%ebp)
 8050fc6:	0f 83 34 01 00 00    	jae    8051100 <__ssprint_r+0x1b0>
 8050fcc:	89 45 e0             	mov    %eax,-0x20(%ebp)
 8050fcf:	80 e5 04             	and    $0x4,%ch
 8050fd2:	0f 84 c8 00 00 00    	je     80510a0 <__ssprint_r+0x150>
 8050fd8:	89 44 24 04          	mov    %eax,0x4(%esp)
 8050fdc:	8b 45 08             	mov    0x8(%ebp),%eax
 8050fdf:	89 04 24             	mov    %eax,(%esp)
 8050fe2:	e8 e9 e6 ff ff       	call   804f6d0 <_malloc_r>
 8050fe7:	85 c0                	test   %eax,%eax
 8050fe9:	89 c2                	mov    %eax,%edx
 8050feb:	0f 84 e1 00 00 00    	je     80510d2 <__ssprint_r+0x182>
 8050ff1:	8b 45 dc             	mov    -0x24(%ebp),%eax
 8050ff4:	89 55 d8             	mov    %edx,-0x28(%ebp)
 8050ff7:	89 44 24 08          	mov    %eax,0x8(%esp)
 8050ffb:	8b 43 10             	mov    0x10(%ebx),%eax
 8050ffe:	89 14 24             	mov    %edx,(%esp)
 8051001:	89 44 24 04          	mov    %eax,0x4(%esp)
 8051005:	e8 9e ee ff ff       	call   804fea8 <memcpy>
 805100a:	0f b7 43 0c          	movzwl 0xc(%ebx),%eax
 805100e:	8b 55 d8             	mov    -0x28(%ebp),%edx
 8051011:	66 25 7f fb          	and    $0xfb7f,%ax
 8051015:	0c 80                	or     $0x80,%al
 8051017:	66 89 43 0c          	mov    %ax,0xc(%ebx)
 805101b:	8b 4d e0             	mov    -0x20(%ebp),%ecx
 805101e:	8b 45 dc             	mov    -0x24(%ebp),%eax
 8051021:	89 53 10             	mov    %edx,0x10(%ebx)
 8051024:	89 4b 14             	mov    %ecx,0x14(%ebx)
 8051027:	2b 4d dc             	sub    -0x24(%ebp),%ecx
 805102a:	01 d0                	add    %edx,%eax
 805102c:	89 03                	mov    %eax,(%ebx)
 805102e:	89 f2                	mov    %esi,%edx
 8051030:	89 4b 08             	mov    %ecx,0x8(%ebx)
 8051033:	89 f1                	mov    %esi,%ecx
 8051035:	89 4c 24 08          	mov    %ecx,0x8(%esp)
 8051039:	89 4d e0             	mov    %ecx,-0x20(%ebp)
 805103c:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
 805103f:	89 04 24             	mov    %eax,(%esp)
 8051042:	89 55 dc             	mov    %edx,-0x24(%ebp)
 8051045:	89 4c 24 04          	mov    %ecx,0x4(%esp)
 8051049:	e8 62 2a 00 00       	call   8053ab0 <memmove>
 805104e:	8b 03                	mov    (%ebx),%eax
 8051050:	8b 4d e0             	mov    -0x20(%ebp),%ecx
 8051053:	8b 55 dc             	mov    -0x24(%ebp),%edx
 8051056:	29 53 08             	sub    %edx,0x8(%ebx)
 8051059:	01 c8                	add    %ecx,%eax
 805105b:	8b 4d 10             	mov    0x10(%ebp),%ecx
 805105e:	89 03                	mov    %eax,(%ebx)
 8051060:	8b 51 08             	mov    0x8(%ecx),%edx
 8051063:	29 f2                	sub    %esi,%edx
 8051065:	85 d2                	test   %edx,%edx
 8051067:	89 51 08             	mov    %edx,0x8(%ecx)
 805106a:	0f 84 98 00 00 00    	je     8051108 <__ssprint_r+0x1b8>
 8051070:	8b 77 04             	mov    0x4(%edi),%esi
 8051073:	83 c7 08             	add    $0x8,%edi
 8051076:	8b 4f f8             	mov    -0x8(%edi),%ecx
 8051079:	85 f6                	test   %esi,%esi
 805107b:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
 805107e:	74 f0                	je     8051070 <__ssprint_r+0x120>
 8051080:	8b 53 08             	mov    0x8(%ebx),%edx
 8051083:	39 d6                	cmp    %edx,%esi
 8051085:	0f 83 04 ff ff ff    	jae    8050f8f <__ssprint_r+0x3f>
 805108b:	89 f2                	mov    %esi,%edx
 805108d:	89 f1                	mov    %esi,%ecx
 805108f:	eb a4                	jmp    8051035 <__ssprint_r+0xe5>
 8051091:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 8051098:	89 d1                	mov    %edx,%ecx
 805109a:	eb 99                	jmp    8051035 <__ssprint_r+0xe5>
 805109c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 80510a0:	89 44 24 08          	mov    %eax,0x8(%esp)
 80510a4:	8b 45 d8             	mov    -0x28(%ebp),%eax
 80510a7:	89 44 24 04          	mov    %eax,0x4(%esp)
 80510ab:	8b 45 08             	mov    0x8(%ebp),%eax
 80510ae:	89 04 24             	mov    %eax,(%esp)
 80510b1:	e8 da 2a 00 00       	call   8053b90 <_realloc_r>
 80510b6:	85 c0                	test   %eax,%eax
 80510b8:	89 c2                	mov    %eax,%edx
 80510ba:	0f 85 5b ff ff ff    	jne    805101b <__ssprint_r+0xcb>
 80510c0:	8b 43 10             	mov    0x10(%ebx),%eax
 80510c3:	89 44 24 04          	mov    %eax,0x4(%esp)
 80510c7:	8b 45 08             	mov    0x8(%ebp),%eax
 80510ca:	89 04 24             	mov    %eax,(%esp)
 80510cd:	e8 4e e0 ff ff       	call   804f120 <_free_r>
 80510d2:	8b 45 08             	mov    0x8(%ebp),%eax
 80510d5:	c7 00 0c 00 00 00    	movl   $0xc,(%eax)
 80510db:	8b 45 10             	mov    0x10(%ebp),%eax
 80510de:	66 83 4b 0c 40       	orw    $0x40,0xc(%ebx)
 80510e3:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%eax)
 80510ea:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
 80510f1:	83 c4 2c             	add    $0x2c,%esp
 80510f4:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 80510f9:	5b                   	pop    %ebx
 80510fa:	5e                   	pop    %esi
 80510fb:	5f                   	pop    %edi
 80510fc:	5d                   	pop    %ebp
 80510fd:	c3                   	ret    
 80510fe:	66 90                	xchg   %ax,%ax
 8051100:	8b 45 e0             	mov    -0x20(%ebp),%eax
 8051103:	e9 c7 fe ff ff       	jmp    8050fcf <__ssprint_r+0x7f>
 8051108:	c7 41 04 00 00 00 00 	movl   $0x0,0x4(%ecx)
 805110f:	83 c4 2c             	add    $0x2c,%esp
 8051112:	31 c0                	xor    %eax,%eax
 8051114:	5b                   	pop    %ebx
 8051115:	5e                   	pop    %esi
 8051116:	5f                   	pop    %edi
 8051117:	5d                   	pop    %ebp
 8051118:	c3                   	ret    
 8051119:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 8051120:	8b 45 10             	mov    0x10(%ebp),%eax
 8051123:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
 805112a:	83 c4 2c             	add    $0x2c,%esp
 805112d:	31 c0                	xor    %eax,%eax
 805112f:	5b                   	pop    %ebx
 8051130:	5e                   	pop    %esi
 8051131:	5f                   	pop    %edi
 8051132:	5d                   	pop    %ebp
 8051133:	c3                   	ret    
 8051134:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 805113a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

08051140 <_svfiprintf_r>:
 8051140:	55                   	push   %ebp
 8051141:	89 e5                	mov    %esp,%ebp
 8051143:	57                   	push   %edi
 8051144:	56                   	push   %esi
 8051145:	53                   	push   %ebx
 8051146:	81 ec cc 00 00 00    	sub    $0xcc,%esp
 805114c:	8b 45 0c             	mov    0xc(%ebp),%eax
 805114f:	f6 40 0c 80          	testb  $0x80,0xc(%eax)
 8051153:	74 0b                	je     8051160 <_svfiprintf_r+0x20>
 8051155:	8b 50 10             	mov    0x10(%eax),%edx
 8051158:	85 d2                	test   %edx,%edx
 805115a:	0f 84 1c 0d 00 00    	je     8051e7c <_svfiprintf_r+0xd3c>
 8051160:	8d 45 a8             	lea    -0x58(%ebp),%eax
 8051163:	8d 5d a7             	lea    -0x59(%ebp),%ebx
 8051166:	89 c6                	mov    %eax,%esi
 8051168:	89 85 74 ff ff ff    	mov    %eax,-0x8c(%ebp)
 805116e:	29 d8                	sub    %ebx,%eax
 8051170:	c7 85 7c ff ff ff 00 	movl   $0x0,-0x84(%ebp)
 8051177:	00 00 00 
 805117a:	c7 85 78 ff ff ff 00 	movl   $0x0,-0x88(%ebp)
 8051181:	00 00 00 
 8051184:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
 805118b:	00 00 00 
 805118e:	c7 85 50 ff ff ff 00 	movl   $0x0,-0xb0(%ebp)
 8051195:	00 00 00 
 8051198:	89 85 3c ff ff ff    	mov    %eax,-0xc4(%ebp)
 805119e:	8b 45 10             	mov    0x10(%ebp),%eax
 80511a1:	8b 5d 10             	mov    0x10(%ebp),%ebx
 80511a4:	0f b6 00             	movzbl (%eax),%eax
 80511a7:	84 c0                	test   %al,%al
 80511a9:	74 58                	je     8051203 <_svfiprintf_r+0xc3>
 80511ab:	3c 25                	cmp    $0x25,%al
 80511ad:	75 13                	jne    80511c2 <_svfiprintf_r+0x82>
 80511af:	eb 52                	jmp    8051203 <_svfiprintf_r+0xc3>
 80511b1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 80511b8:	84 c0                	test   %al,%al
 80511ba:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 80511c0:	74 0a                	je     80511cc <_svfiprintf_r+0x8c>
 80511c2:	83 c3 01             	add    $0x1,%ebx
 80511c5:	0f b6 03             	movzbl (%ebx),%eax
 80511c8:	3c 25                	cmp    $0x25,%al
 80511ca:	75 ec                	jne    80511b8 <_svfiprintf_r+0x78>
 80511cc:	89 df                	mov    %ebx,%edi
 80511ce:	2b 7d 10             	sub    0x10(%ebp),%edi
 80511d1:	74 30                	je     8051203 <_svfiprintf_r+0xc3>
 80511d3:	8b 45 10             	mov    0x10(%ebp),%eax
 80511d6:	83 c6 08             	add    $0x8,%esi
 80511d9:	89 7e fc             	mov    %edi,-0x4(%esi)
 80511dc:	01 bd 7c ff ff ff    	add    %edi,-0x84(%ebp)
 80511e2:	89 46 f8             	mov    %eax,-0x8(%esi)
 80511e5:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 80511eb:	83 c0 01             	add    $0x1,%eax
 80511ee:	83 f8 07             	cmp    $0x7,%eax
 80511f1:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
 80511f7:	0f 8f eb 0a 00 00    	jg     8051ce8 <_svfiprintf_r+0xba8>
 80511fd:	01 bd 50 ff ff ff    	add    %edi,-0xb0(%ebp)
 8051203:	80 3b 00             	cmpb   $0x0,(%ebx)
 8051206:	0f 84 11 09 00 00    	je     8051b1d <_svfiprintf_r+0x9dd>
 805120c:	8d 43 01             	lea    0x1(%ebx),%eax
 805120f:	31 ff                	xor    %edi,%edi
 8051211:	c6 85 71 ff ff ff 00 	movb   $0x0,-0x8f(%ebp)
 8051218:	c7 85 5c ff ff ff ff 	movl   $0xffffffff,-0xa4(%ebp)
 805121f:	ff ff ff 
 8051222:	c7 85 54 ff ff ff 00 	movl   $0x0,-0xac(%ebp)
 8051229:	00 00 00 
 805122c:	c7 85 64 ff ff ff 00 	movl   $0x0,-0x9c(%ebp)
 8051233:	00 00 00 
 8051236:	8d 50 01             	lea    0x1(%eax),%edx
 8051239:	0f be 00             	movsbl (%eax),%eax
 805123c:	8d 48 e0             	lea    -0x20(%eax),%ecx
 805123f:	83 f9 58             	cmp    $0x58,%ecx
 8051242:	0f 87 63 03 00 00    	ja     80515ab <_svfiprintf_r+0x46b>
 8051248:	ff 24 8d c8 4d 05 08 	jmp    *0x8054dc8(,%ecx,4)
 805124f:	90                   	nop
 8051250:	83 8d 64 ff ff ff 10 	orl    $0x10,-0x9c(%ebp)
 8051257:	89 d0                	mov    %edx,%eax
 8051259:	eb db                	jmp    8051236 <_svfiprintf_r+0xf6>
 805125b:	8b 45 14             	mov    0x14(%ebp),%eax
 805125e:	8b 5d 14             	mov    0x14(%ebp),%ebx
 8051261:	8b 00                	mov    (%eax),%eax
 8051263:	83 c3 04             	add    $0x4,%ebx
 8051266:	89 5d 14             	mov    %ebx,0x14(%ebp)
 8051269:	85 c0                	test   %eax,%eax
 805126b:	89 85 54 ff ff ff    	mov    %eax,-0xac(%ebp)
 8051271:	79 e4                	jns    8051257 <_svfiprintf_r+0x117>
 8051273:	f7 9d 54 ff ff ff    	negl   -0xac(%ebp)
 8051279:	83 8d 64 ff ff ff 04 	orl    $0x4,-0x9c(%ebp)
 8051280:	89 d0                	mov    %edx,%eax
 8051282:	eb b2                	jmp    8051236 <_svfiprintf_r+0xf6>
 8051284:	bf 2b 00 00 00       	mov    $0x2b,%edi
 8051289:	89 d0                	mov    %edx,%eax
 805128b:	eb a9                	jmp    8051236 <_svfiprintf_r+0xf6>
 805128d:	8b 45 14             	mov    0x14(%ebp),%eax
 8051290:	83 8d 64 ff ff ff 02 	orl    $0x2,-0x9c(%ebp)
 8051297:	89 55 10             	mov    %edx,0x10(%ebp)
 805129a:	ba 02 00 00 00       	mov    $0x2,%edx
 805129f:	8b 08                	mov    (%eax),%ecx
 80512a1:	83 c0 04             	add    $0x4,%eax
 80512a4:	c6 85 72 ff ff ff 30 	movb   $0x30,-0x8e(%ebp)
 80512ab:	c6 85 73 ff ff ff 78 	movb   $0x78,-0x8d(%ebp)
 80512b2:	89 45 14             	mov    %eax,0x14(%ebp)
 80512b5:	c7 85 44 ff ff ff ed 	movl   $0x80548ed,-0xbc(%ebp)
 80512bc:	48 05 08 
 80512bf:	90                   	nop
 80512c0:	c6 85 71 ff ff ff 00 	movb   $0x0,-0x8f(%ebp)
 80512c7:	31 ff                	xor    %edi,%edi
 80512c9:	8b 9d 64 ff ff ff    	mov    -0x9c(%ebp),%ebx
 80512cf:	89 d8                	mov    %ebx,%eax
 80512d1:	24 7f                	and    $0x7f,%al
 80512d3:	83 bd 5c ff ff ff 00 	cmpl   $0x0,-0xa4(%ebp)
 80512da:	0f 48 c3             	cmovs  %ebx,%eax
 80512dd:	89 85 64 ff ff ff    	mov    %eax,-0x9c(%ebp)
 80512e3:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
 80512e9:	85 c0                	test   %eax,%eax
 80512eb:	75 08                	jne    80512f5 <_svfiprintf_r+0x1b5>
 80512ed:	85 c9                	test   %ecx,%ecx
 80512ef:	0f 84 03 08 00 00    	je     8051af8 <_svfiprintf_r+0x9b8>
 80512f5:	80 fa 01             	cmp    $0x1,%dl
 80512f8:	0f 84 8a 0a 00 00    	je     8051d88 <_svfiprintf_r+0xc48>
 80512fe:	80 fa 02             	cmp    $0x2,%dl
 8051301:	8d 5d a8             	lea    -0x58(%ebp),%ebx
 8051304:	0f 85 86 01 00 00    	jne    8051490 <_svfiprintf_r+0x350>
 805130a:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
 8051310:	89 c8                	mov    %ecx,%eax
 8051312:	83 eb 01             	sub    $0x1,%ebx
 8051315:	83 e0 0f             	and    $0xf,%eax
 8051318:	0f b6 04 02          	movzbl (%edx,%eax,1),%eax
 805131c:	c1 e9 04             	shr    $0x4,%ecx
 805131f:	85 c9                	test   %ecx,%ecx
 8051321:	88 03                	mov    %al,(%ebx)
 8051323:	75 eb                	jne    8051310 <_svfiprintf_r+0x1d0>
 8051325:	8d 45 a8             	lea    -0x58(%ebp),%eax
 8051328:	29 d8                	sub    %ebx,%eax
 805132a:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
 8051330:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
 8051336:	8b 8d 58 ff ff ff    	mov    -0xa8(%ebp),%ecx
 805133c:	39 c1                	cmp    %eax,%ecx
 805133e:	0f 4d c1             	cmovge %ecx,%eax
 8051341:	89 85 60 ff ff ff    	mov    %eax,-0xa0(%ebp)
 8051347:	89 f8                	mov    %edi,%eax
 8051349:	3c 01                	cmp    $0x1,%al
 805134b:	83 9d 60 ff ff ff ff 	sbbl   $0xffffffff,-0xa0(%ebp)
 8051352:	8b 95 60 ff ff ff    	mov    -0xa0(%ebp),%edx
 8051358:	8b 8d 64 ff ff ff    	mov    -0x9c(%ebp),%ecx
 805135e:	89 d0                	mov    %edx,%eax
 8051360:	89 cf                	mov    %ecx,%edi
 8051362:	83 c0 02             	add    $0x2,%eax
 8051365:	83 e7 02             	and    $0x2,%edi
 8051368:	89 bd 4c ff ff ff    	mov    %edi,-0xb4(%ebp)
 805136e:	89 cf                	mov    %ecx,%edi
 8051370:	0f 44 c2             	cmove  %edx,%eax
 8051373:	81 e7 84 00 00 00    	and    $0x84,%edi
 8051379:	89 85 60 ff ff ff    	mov    %eax,-0xa0(%ebp)
 805137f:	89 bd 48 ff ff ff    	mov    %edi,-0xb8(%ebp)
 8051385:	0f 85 cd 04 00 00    	jne    8051858 <_svfiprintf_r+0x718>
 805138b:	8b bd 54 ff ff ff    	mov    -0xac(%ebp),%edi
 8051391:	2b bd 60 ff ff ff    	sub    -0xa0(%ebp),%edi
 8051397:	85 ff                	test   %edi,%edi
 8051399:	0f 8e b9 04 00 00    	jle    8051858 <_svfiprintf_r+0x718>
 805139f:	83 ff 10             	cmp    $0x10,%edi
 80513a2:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
 80513a8:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 80513ae:	7e 7c                	jle    805142c <_svfiprintf_r+0x2ec>
 80513b0:	89 9d 40 ff ff ff    	mov    %ebx,-0xc0(%ebp)
 80513b6:	89 f1                	mov    %esi,%ecx
 80513b8:	8b 5d 08             	mov    0x8(%ebp),%ebx
 80513bb:	8b 75 0c             	mov    0xc(%ebp),%esi
 80513be:	eb 08                	jmp    80513c8 <_svfiprintf_r+0x288>
 80513c0:	83 ef 10             	sub    $0x10,%edi
 80513c3:	83 ff 10             	cmp    $0x10,%edi
 80513c6:	7e 5c                	jle    8051424 <_svfiprintf_r+0x2e4>
 80513c8:	83 c0 01             	add    $0x1,%eax
 80513cb:	83 c2 10             	add    $0x10,%edx
 80513ce:	c7 01 3c 4f 05 08    	movl   $0x8054f3c,(%ecx)
 80513d4:	83 c1 08             	add    $0x8,%ecx
 80513d7:	c7 41 fc 10 00 00 00 	movl   $0x10,-0x4(%ecx)
 80513de:	83 f8 07             	cmp    $0x7,%eax
 80513e1:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
 80513e7:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
 80513ed:	7e d1                	jle    80513c0 <_svfiprintf_r+0x280>
 80513ef:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
 80513f5:	89 44 24 08          	mov    %eax,0x8(%esp)
 80513f9:	89 74 24 04          	mov    %esi,0x4(%esp)
 80513fd:	89 1c 24             	mov    %ebx,(%esp)
 8051400:	e8 4b fb ff ff       	call   8050f50 <__ssprint_r>
 8051405:	85 c0                	test   %eax,%eax
 8051407:	0f 85 3b 07 00 00    	jne    8051b48 <_svfiprintf_r+0xa08>
 805140d:	83 ef 10             	sub    $0x10,%edi
 8051410:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
 8051416:	83 ff 10             	cmp    $0x10,%edi
 8051419:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 805141f:	8d 4d a8             	lea    -0x58(%ebp),%ecx
 8051422:	7f a4                	jg     80513c8 <_svfiprintf_r+0x288>
 8051424:	8b 9d 40 ff ff ff    	mov    -0xc0(%ebp),%ebx
 805142a:	89 ce                	mov    %ecx,%esi
 805142c:	83 c0 01             	add    $0x1,%eax
 805142f:	01 fa                	add    %edi,%edx
 8051431:	c7 06 3c 4f 05 08    	movl   $0x8054f3c,(%esi)
 8051437:	83 c6 08             	add    $0x8,%esi
 805143a:	89 7e fc             	mov    %edi,-0x4(%esi)
 805143d:	83 f8 07             	cmp    $0x7,%eax
 8051440:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
 8051446:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
 805144c:	0f 8e 12 04 00 00    	jle    8051864 <_svfiprintf_r+0x724>
 8051452:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
 8051458:	89 44 24 08          	mov    %eax,0x8(%esp)
 805145c:	8b 45 0c             	mov    0xc(%ebp),%eax
 805145f:	89 44 24 04          	mov    %eax,0x4(%esp)
 8051463:	8b 45 08             	mov    0x8(%ebp),%eax
 8051466:	89 04 24             	mov    %eax,(%esp)
 8051469:	e8 e2 fa ff ff       	call   8050f50 <__ssprint_r>
 805146e:	85 c0                	test   %eax,%eax
 8051470:	0f 85 d2 06 00 00    	jne    8051b48 <_svfiprintf_r+0xa08>
 8051476:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
 805147c:	8d 75 a8             	lea    -0x58(%ebp),%esi
 805147f:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 8051485:	e9 da 03 00 00       	jmp    8051864 <_svfiprintf_r+0x724>
 805148a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 8051490:	89 c8                	mov    %ecx,%eax
 8051492:	83 eb 01             	sub    $0x1,%ebx
 8051495:	83 e0 07             	and    $0x7,%eax
 8051498:	c1 e9 03             	shr    $0x3,%ecx
 805149b:	83 c0 30             	add    $0x30,%eax
 805149e:	85 c9                	test   %ecx,%ecx
 80514a0:	88 03                	mov    %al,(%ebx)
 80514a2:	75 ec                	jne    8051490 <_svfiprintf_r+0x350>
 80514a4:	f6 85 64 ff ff ff 01 	testb  $0x1,-0x9c(%ebp)
 80514ab:	89 da                	mov    %ebx,%edx
 80514ad:	0f 84 72 fe ff ff    	je     8051325 <_svfiprintf_r+0x1e5>
 80514b3:	3c 30                	cmp    $0x30,%al
 80514b5:	0f 84 6a fe ff ff    	je     8051325 <_svfiprintf_r+0x1e5>
 80514bb:	83 eb 01             	sub    $0x1,%ebx
 80514be:	8d 45 a8             	lea    -0x58(%ebp),%eax
 80514c1:	29 d8                	sub    %ebx,%eax
 80514c3:	c6 42 ff 30          	movb   $0x30,-0x1(%edx)
 80514c7:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
 80514cd:	e9 5e fe ff ff       	jmp    8051330 <_svfiprintf_r+0x1f0>
 80514d2:	83 8d 64 ff ff ff 10 	orl    $0x10,-0x9c(%ebp)
 80514d9:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
 80514e0:	89 55 10             	mov    %edx,0x10(%ebp)
 80514e3:	8b 45 14             	mov    0x14(%ebp),%eax
 80514e6:	0f 85 48 01 00 00    	jne    8051634 <_svfiprintf_r+0x4f4>
 80514ec:	f6 85 64 ff ff ff 40 	testb  $0x40,-0x9c(%ebp)
 80514f3:	0f 84 3b 01 00 00    	je     8051634 <_svfiprintf_r+0x4f4>
 80514f9:	0f b7 08             	movzwl (%eax),%ecx
 80514fc:	83 c0 04             	add    $0x4,%eax
 80514ff:	31 d2                	xor    %edx,%edx
 8051501:	89 45 14             	mov    %eax,0x14(%ebp)
 8051504:	e9 b7 fd ff ff       	jmp    80512c0 <_svfiprintf_r+0x180>
 8051509:	83 8d 64 ff ff ff 10 	orl    $0x10,-0x9c(%ebp)
 8051510:	89 f8                	mov    %edi,%eax
 8051512:	89 55 10             	mov    %edx,0x10(%ebp)
 8051515:	88 85 71 ff ff ff    	mov    %al,-0x8f(%ebp)
 805151b:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
 8051522:	8b 45 14             	mov    0x14(%ebp),%eax
 8051525:	75 0d                	jne    8051534 <_svfiprintf_r+0x3f4>
 8051527:	f6 85 64 ff ff ff 40 	testb  $0x40,-0x9c(%ebp)
 805152e:	0f 85 f2 08 00 00    	jne    8051e26 <_svfiprintf_r+0xce6>
 8051534:	8b 08                	mov    (%eax),%ecx
 8051536:	83 c0 04             	add    $0x4,%eax
 8051539:	89 45 14             	mov    %eax,0x14(%ebp)
 805153c:	85 c9                	test   %ecx,%ecx
 805153e:	0f 88 f3 08 00 00    	js     8051e37 <_svfiprintf_r+0xcf7>
 8051544:	0f b6 bd 71 ff ff ff 	movzbl -0x8f(%ebp),%edi
 805154b:	ba 01 00 00 00       	mov    $0x1,%edx
 8051550:	e9 74 fd ff ff       	jmp    80512c9 <_svfiprintf_r+0x189>
 8051555:	0f be 02             	movsbl (%edx),%eax
 8051558:	8d 5a 01             	lea    0x1(%edx),%ebx
 805155b:	83 f8 2a             	cmp    $0x2a,%eax
 805155e:	0f 84 af 09 00 00    	je     8051f13 <_svfiprintf_r+0xdd3>
 8051564:	8d 48 d0             	lea    -0x30(%eax),%ecx
 8051567:	31 d2                	xor    %edx,%edx
 8051569:	83 f9 09             	cmp    $0x9,%ecx
 805156c:	0f 87 90 09 00 00    	ja     8051f02 <_svfiprintf_r+0xdc2>
 8051572:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 8051578:	8d 04 92             	lea    (%edx,%edx,4),%eax
 805157b:	83 c3 01             	add    $0x1,%ebx
 805157e:	8d 14 41             	lea    (%ecx,%eax,2),%edx
 8051581:	0f be 43 ff          	movsbl -0x1(%ebx),%eax
 8051585:	8d 48 d0             	lea    -0x30(%eax),%ecx
 8051588:	83 f9 09             	cmp    $0x9,%ecx
 805158b:	76 eb                	jbe    8051578 <_svfiprintf_r+0x438>
 805158d:	85 d2                	test   %edx,%edx
 805158f:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
 8051594:	0f 48 d1             	cmovs  %ecx,%edx
 8051597:	8d 48 e0             	lea    -0x20(%eax),%ecx
 805159a:	83 f9 58             	cmp    $0x58,%ecx
 805159d:	89 95 5c ff ff ff    	mov    %edx,-0xa4(%ebp)
 80515a3:	89 da                	mov    %ebx,%edx
 80515a5:	0f 86 9d fc ff ff    	jbe    8051248 <_svfiprintf_r+0x108>
 80515ab:	89 fb                	mov    %edi,%ebx
 80515ad:	85 c0                	test   %eax,%eax
 80515af:	89 55 10             	mov    %edx,0x10(%ebp)
 80515b2:	88 9d 71 ff ff ff    	mov    %bl,-0x8f(%ebp)
 80515b8:	0f 84 5f 05 00 00    	je     8051b1d <_svfiprintf_r+0x9dd>
 80515be:	88 45 80             	mov    %al,-0x80(%ebp)
 80515c1:	8d 5d 80             	lea    -0x80(%ebp),%ebx
 80515c4:	c6 85 71 ff ff ff 00 	movb   $0x0,-0x8f(%ebp)
 80515cb:	c7 85 60 ff ff ff 01 	movl   $0x1,-0xa0(%ebp)
 80515d2:	00 00 00 
 80515d5:	c7 85 58 ff ff ff 01 	movl   $0x1,-0xa8(%ebp)
 80515dc:	00 00 00 
 80515df:	e9 5a 01 00 00       	jmp    805173e <_svfiprintf_r+0x5fe>
 80515e4:	31 db                	xor    %ebx,%ebx
 80515e6:	8d 48 d0             	lea    -0x30(%eax),%ecx
 80515e9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 80515f0:	8d 04 9b             	lea    (%ebx,%ebx,4),%eax
 80515f3:	83 c2 01             	add    $0x1,%edx
 80515f6:	8d 1c 41             	lea    (%ecx,%eax,2),%ebx
 80515f9:	0f be 42 ff          	movsbl -0x1(%edx),%eax
 80515fd:	8d 48 d0             	lea    -0x30(%eax),%ecx
 8051600:	83 f9 09             	cmp    $0x9,%ecx
 8051603:	76 eb                	jbe    80515f0 <_svfiprintf_r+0x4b0>
 8051605:	89 9d 54 ff ff ff    	mov    %ebx,-0xac(%ebp)
 805160b:	e9 2c fc ff ff       	jmp    805123c <_svfiprintf_r+0xfc>
 8051610:	81 8d 64 ff ff ff 80 	orl    $0x80,-0x9c(%ebp)
 8051617:	00 00 00 
 805161a:	89 d0                	mov    %edx,%eax
 805161c:	e9 15 fc ff ff       	jmp    8051236 <_svfiprintf_r+0xf6>
 8051621:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
 8051628:	89 55 10             	mov    %edx,0x10(%ebp)
 805162b:	8b 45 14             	mov    0x14(%ebp),%eax
 805162e:	0f 84 b8 fe ff ff    	je     80514ec <_svfiprintf_r+0x3ac>
 8051634:	8b 08                	mov    (%eax),%ecx
 8051636:	83 c0 04             	add    $0x4,%eax
 8051639:	31 d2                	xor    %edx,%edx
 805163b:	89 45 14             	mov    %eax,0x14(%ebp)
 805163e:	e9 7d fc ff ff       	jmp    80512c0 <_svfiprintf_r+0x180>
 8051643:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
 805164a:	89 f8                	mov    %edi,%eax
 805164c:	89 55 10             	mov    %edx,0x10(%ebp)
 805164f:	88 85 71 ff ff ff    	mov    %al,-0x8f(%ebp)
 8051655:	0f 85 a2 07 00 00    	jne    8051dfd <_svfiprintf_r+0xcbd>
 805165b:	f6 85 64 ff ff ff 40 	testb  $0x40,-0x9c(%ebp)
 8051662:	0f 84 95 07 00 00    	je     8051dfd <_svfiprintf_r+0xcbd>
 8051668:	8b 45 14             	mov    0x14(%ebp),%eax
 805166b:	0f b7 9d 50 ff ff ff 	movzwl -0xb0(%ebp),%ebx
 8051672:	8b 00                	mov    (%eax),%eax
 8051674:	66 89 18             	mov    %bx,(%eax)
 8051677:	8b 45 14             	mov    0x14(%ebp),%eax
 805167a:	83 c0 04             	add    $0x4,%eax
 805167d:	89 45 14             	mov    %eax,0x14(%ebp)
 8051680:	e9 19 fb ff ff       	jmp    805119e <_svfiprintf_r+0x5e>
 8051685:	89 fb                	mov    %edi,%ebx
 8051687:	89 55 10             	mov    %edx,0x10(%ebp)
 805168a:	88 9d 71 ff ff ff    	mov    %bl,-0x8f(%ebp)
 8051690:	c7 85 44 ff ff ff ed 	movl   $0x80548ed,-0xbc(%ebp)
 8051697:	48 05 08 
 805169a:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
 80516a1:	8b 5d 14             	mov    0x14(%ebp),%ebx
 80516a4:	75 0d                	jne    80516b3 <_svfiprintf_r+0x573>
 80516a6:	f6 85 64 ff ff ff 40 	testb  $0x40,-0x9c(%ebp)
 80516ad:	0f 85 65 07 00 00    	jne    8051e18 <_svfiprintf_r+0xcd8>
 80516b3:	8b 0b                	mov    (%ebx),%ecx
 80516b5:	83 c3 04             	add    $0x4,%ebx
 80516b8:	89 5d 14             	mov    %ebx,0x14(%ebp)
 80516bb:	f6 85 64 ff ff ff 01 	testb  $0x1,-0x9c(%ebp)
 80516c2:	ba 02 00 00 00       	mov    $0x2,%edx
 80516c7:	0f 84 f3 fb ff ff    	je     80512c0 <_svfiprintf_r+0x180>
 80516cd:	85 c9                	test   %ecx,%ecx
 80516cf:	0f 84 eb fb ff ff    	je     80512c0 <_svfiprintf_r+0x180>
 80516d5:	c6 85 72 ff ff ff 30 	movb   $0x30,-0x8e(%ebp)
 80516dc:	88 85 73 ff ff ff    	mov    %al,-0x8d(%ebp)
 80516e2:	83 8d 64 ff ff ff 02 	orl    $0x2,-0x9c(%ebp)
 80516e9:	e9 d2 fb ff ff       	jmp    80512c0 <_svfiprintf_r+0x180>
 80516ee:	83 8d 64 ff ff ff 40 	orl    $0x40,-0x9c(%ebp)
 80516f5:	89 d0                	mov    %edx,%eax
 80516f7:	e9 3a fb ff ff       	jmp    8051236 <_svfiprintf_r+0xf6>
 80516fc:	89 f8                	mov    %edi,%eax
 80516fe:	89 55 10             	mov    %edx,0x10(%ebp)
 8051701:	88 85 71 ff ff ff    	mov    %al,-0x8f(%ebp)
 8051707:	e9 0f fe ff ff       	jmp    805151b <_svfiprintf_r+0x3db>
 805170c:	8b 45 14             	mov    0x14(%ebp),%eax
 805170f:	8d 5d 80             	lea    -0x80(%ebp),%ebx
 8051712:	89 55 10             	mov    %edx,0x10(%ebp)
 8051715:	c6 85 71 ff ff ff 00 	movb   $0x0,-0x8f(%ebp)
 805171c:	c7 85 60 ff ff ff 01 	movl   $0x1,-0xa0(%ebp)
 8051723:	00 00 00 
 8051726:	8b 00                	mov    (%eax),%eax
 8051728:	c7 85 58 ff ff ff 01 	movl   $0x1,-0xa8(%ebp)
 805172f:	00 00 00 
 8051732:	88 45 80             	mov    %al,-0x80(%ebp)
 8051735:	8b 45 14             	mov    0x14(%ebp),%eax
 8051738:	83 c0 04             	add    $0x4,%eax
 805173b:	89 45 14             	mov    %eax,0x14(%ebp)
 805173e:	c7 85 5c ff ff ff 00 	movl   $0x0,-0xa4(%ebp)
 8051745:	00 00 00 
 8051748:	e9 05 fc ff ff       	jmp    8051352 <_svfiprintf_r+0x212>
 805174d:	89 fb                	mov    %edi,%ebx
 805174f:	89 55 10             	mov    %edx,0x10(%ebp)
 8051752:	88 9d 71 ff ff ff    	mov    %bl,-0x8f(%ebp)
 8051758:	c7 85 44 ff ff ff dc 	movl   $0x80548dc,-0xbc(%ebp)
 805175f:	48 05 08 
 8051762:	e9 33 ff ff ff       	jmp    805169a <_svfiprintf_r+0x55a>
 8051767:	83 8d 64 ff ff ff 10 	orl    $0x10,-0x9c(%ebp)
 805176e:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
 8051775:	89 55 10             	mov    %edx,0x10(%ebp)
 8051778:	8b 45 14             	mov    0x14(%ebp),%eax
 805177b:	75 39                	jne    80517b6 <_svfiprintf_r+0x676>
 805177d:	f6 85 64 ff ff ff 40 	testb  $0x40,-0x9c(%ebp)
 8051784:	74 30                	je     80517b6 <_svfiprintf_r+0x676>
 8051786:	0f b7 08             	movzwl (%eax),%ecx
 8051789:	83 c0 04             	add    $0x4,%eax
 805178c:	ba 01 00 00 00       	mov    $0x1,%edx
 8051791:	89 45 14             	mov    %eax,0x14(%ebp)
 8051794:	e9 27 fb ff ff       	jmp    80512c0 <_svfiprintf_r+0x180>
 8051799:	83 8d 64 ff ff ff 01 	orl    $0x1,-0x9c(%ebp)
 80517a0:	89 d0                	mov    %edx,%eax
 80517a2:	e9 8f fa ff ff       	jmp    8051236 <_svfiprintf_r+0xf6>
 80517a7:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
 80517ae:	89 55 10             	mov    %edx,0x10(%ebp)
 80517b1:	8b 45 14             	mov    0x14(%ebp),%eax
 80517b4:	74 c7                	je     805177d <_svfiprintf_r+0x63d>
 80517b6:	8b 08                	mov    (%eax),%ecx
 80517b8:	83 c0 04             	add    $0x4,%eax
 80517bb:	ba 01 00 00 00       	mov    $0x1,%edx
 80517c0:	89 45 14             	mov    %eax,0x14(%ebp)
 80517c3:	e9 f8 fa ff ff       	jmp    80512c0 <_svfiprintf_r+0x180>
 80517c8:	8b 45 14             	mov    0x14(%ebp),%eax
 80517cb:	89 55 10             	mov    %edx,0x10(%ebp)
 80517ce:	c6 85 71 ff ff ff 00 	movb   $0x0,-0x8f(%ebp)
 80517d5:	8b 18                	mov    (%eax),%ebx
 80517d7:	8d 50 04             	lea    0x4(%eax),%edx
 80517da:	85 db                	test   %ebx,%ebx
 80517dc:	0f 84 cc 06 00 00    	je     8051eae <_svfiprintf_r+0xd6e>
 80517e2:	8b bd 5c ff ff ff    	mov    -0xa4(%ebp),%edi
 80517e8:	89 95 60 ff ff ff    	mov    %edx,-0xa0(%ebp)
 80517ee:	85 ff                	test   %edi,%edi
 80517f0:	0f 88 59 06 00 00    	js     8051e4f <_svfiprintf_r+0xd0f>
 80517f6:	89 7c 24 08          	mov    %edi,0x8(%esp)
 80517fa:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 8051801:	00 
 8051802:	89 1c 24             	mov    %ebx,(%esp)
 8051805:	e8 06 e6 ff ff       	call   804fe10 <memchr>
 805180a:	8b 95 60 ff ff ff    	mov    -0xa0(%ebp),%edx
 8051810:	85 c0                	test   %eax,%eax
 8051812:	0f 84 c5 06 00 00    	je     8051edd <_svfiprintf_r+0xd9d>
 8051818:	29 d8                	sub    %ebx,%eax
 805181a:	39 f8                	cmp    %edi,%eax
 805181c:	0f 4f c7             	cmovg  %edi,%eax
 805181f:	0f b6 bd 71 ff ff ff 	movzbl -0x8f(%ebp),%edi
 8051826:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
 805182c:	89 55 14             	mov    %edx,0x14(%ebp)
 805182f:	c7 85 5c ff ff ff 00 	movl   $0x0,-0xa4(%ebp)
 8051836:	00 00 00 
 8051839:	e9 f2 fa ff ff       	jmp    8051330 <_svfiprintf_r+0x1f0>
 805183e:	89 f8                	mov    %edi,%eax
 8051840:	84 c0                	test   %al,%al
 8051842:	b8 20 00 00 00       	mov    $0x20,%eax
 8051847:	0f 44 f8             	cmove  %eax,%edi
 805184a:	89 d0                	mov    %edx,%eax
 805184c:	e9 e5 f9 ff ff       	jmp    8051236 <_svfiprintf_r+0xf6>
 8051851:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 8051858:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
 805185e:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 8051864:	80 bd 71 ff ff ff 00 	cmpb   $0x0,-0x8f(%ebp)
 805186b:	74 2e                	je     805189b <_svfiprintf_r+0x75b>
 805186d:	83 c0 01             	add    $0x1,%eax
 8051870:	83 c2 01             	add    $0x1,%edx
 8051873:	8d 8d 71 ff ff ff    	lea    -0x8f(%ebp),%ecx
 8051879:	83 c6 08             	add    $0x8,%esi
 805187c:	89 4e f8             	mov    %ecx,-0x8(%esi)
 805187f:	c7 46 fc 01 00 00 00 	movl   $0x1,-0x4(%esi)
 8051886:	83 f8 07             	cmp    $0x7,%eax
 8051889:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
 805188f:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
 8051895:	0f 8f b5 04 00 00    	jg     8051d50 <_svfiprintf_r+0xc10>
 805189b:	8b 8d 4c ff ff ff    	mov    -0xb4(%ebp),%ecx
 80518a1:	85 c9                	test   %ecx,%ecx
 80518a3:	74 2e                	je     80518d3 <_svfiprintf_r+0x793>
 80518a5:	83 c0 01             	add    $0x1,%eax
 80518a8:	83 c2 02             	add    $0x2,%edx
 80518ab:	8d 8d 72 ff ff ff    	lea    -0x8e(%ebp),%ecx
 80518b1:	83 c6 08             	add    $0x8,%esi
 80518b4:	89 4e f8             	mov    %ecx,-0x8(%esi)
 80518b7:	c7 46 fc 02 00 00 00 	movl   $0x2,-0x4(%esi)
 80518be:	83 f8 07             	cmp    $0x7,%eax
 80518c1:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
 80518c7:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
 80518cd:	0f 8f 45 04 00 00    	jg     8051d18 <_svfiprintf_r+0xbd8>
 80518d3:	81 bd 48 ff ff ff 80 	cmpl   $0x80,-0xb8(%ebp)
 80518da:	00 00 00 
 80518dd:	0f 84 9d 02 00 00    	je     8051b80 <_svfiprintf_r+0xa40>
 80518e3:	8b bd 5c ff ff ff    	mov    -0xa4(%ebp),%edi
 80518e9:	2b bd 58 ff ff ff    	sub    -0xa8(%ebp),%edi
 80518ef:	85 ff                	test   %edi,%edi
 80518f1:	0f 8e e1 00 00 00    	jle    80519d8 <_svfiprintf_r+0x898>
 80518f7:	83 ff 10             	cmp    $0x10,%edi
 80518fa:	0f 8e 7c 00 00 00    	jle    805197c <_svfiprintf_r+0x83c>
 8051900:	89 9d 5c ff ff ff    	mov    %ebx,-0xa4(%ebp)
 8051906:	89 f1                	mov    %esi,%ecx
 8051908:	8b 5d 08             	mov    0x8(%ebp),%ebx
 805190b:	8b 75 0c             	mov    0xc(%ebp),%esi
 805190e:	eb 08                	jmp    8051918 <_svfiprintf_r+0x7d8>
 8051910:	83 ef 10             	sub    $0x10,%edi
 8051913:	83 ff 10             	cmp    $0x10,%edi
 8051916:	7e 5c                	jle    8051974 <_svfiprintf_r+0x834>
 8051918:	83 c0 01             	add    $0x1,%eax
 805191b:	83 c2 10             	add    $0x10,%edx
 805191e:	c7 01 2c 4f 05 08    	movl   $0x8054f2c,(%ecx)
 8051924:	83 c1 08             	add    $0x8,%ecx
 8051927:	c7 41 fc 10 00 00 00 	movl   $0x10,-0x4(%ecx)
 805192e:	83 f8 07             	cmp    $0x7,%eax
 8051931:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
 8051937:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
 805193d:	7e d1                	jle    8051910 <_svfiprintf_r+0x7d0>
 805193f:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
 8051945:	89 44 24 08          	mov    %eax,0x8(%esp)
 8051949:	89 74 24 04          	mov    %esi,0x4(%esp)
 805194d:	89 1c 24             	mov    %ebx,(%esp)
 8051950:	e8 fb f5 ff ff       	call   8050f50 <__ssprint_r>
 8051955:	85 c0                	test   %eax,%eax
 8051957:	0f 85 eb 01 00 00    	jne    8051b48 <_svfiprintf_r+0xa08>
 805195d:	83 ef 10             	sub    $0x10,%edi
 8051960:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
 8051966:	83 ff 10             	cmp    $0x10,%edi
 8051969:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 805196f:	8d 4d a8             	lea    -0x58(%ebp),%ecx
 8051972:	7f a4                	jg     8051918 <_svfiprintf_r+0x7d8>
 8051974:	8b 9d 5c ff ff ff    	mov    -0xa4(%ebp),%ebx
 805197a:	89 ce                	mov    %ecx,%esi
 805197c:	83 c0 01             	add    $0x1,%eax
 805197f:	01 fa                	add    %edi,%edx
 8051981:	c7 06 2c 4f 05 08    	movl   $0x8054f2c,(%esi)
 8051987:	83 c6 08             	add    $0x8,%esi
 805198a:	89 7e fc             	mov    %edi,-0x4(%esi)
 805198d:	83 f8 07             	cmp    $0x7,%eax
 8051990:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
 8051996:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
 805199c:	7e 3a                	jle    80519d8 <_svfiprintf_r+0x898>
 805199e:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
 80519a4:	89 44 24 08          	mov    %eax,0x8(%esp)
 80519a8:	8b 45 0c             	mov    0xc(%ebp),%eax
 80519ab:	89 44 24 04          	mov    %eax,0x4(%esp)
 80519af:	8b 45 08             	mov    0x8(%ebp),%eax
 80519b2:	89 04 24             	mov    %eax,(%esp)
 80519b5:	e8 96 f5 ff ff       	call   8050f50 <__ssprint_r>
 80519ba:	85 c0                	test   %eax,%eax
 80519bc:	0f 85 86 01 00 00    	jne    8051b48 <_svfiprintf_r+0xa08>
 80519c2:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
 80519c8:	8d 75 a8             	lea    -0x58(%ebp),%esi
 80519cb:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 80519d1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 80519d8:	89 1e                	mov    %ebx,(%esi)
 80519da:	8b 9d 58 ff ff ff    	mov    -0xa8(%ebp),%ebx
 80519e0:	83 c0 01             	add    $0x1,%eax
 80519e3:	83 c6 08             	add    $0x8,%esi
 80519e6:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
 80519ec:	89 5e fc             	mov    %ebx,-0x4(%esi)
 80519ef:	01 da                	add    %ebx,%edx
 80519f1:	83 f8 07             	cmp    $0x7,%eax
 80519f4:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
 80519fa:	0f 8f 80 02 00 00    	jg     8051c80 <_svfiprintf_r+0xb40>
 8051a00:	f6 85 64 ff ff ff 04 	testb  $0x4,-0x9c(%ebp)
 8051a07:	0f 84 b9 00 00 00    	je     8051ac6 <_svfiprintf_r+0x986>
 8051a0d:	8b bd 54 ff ff ff    	mov    -0xac(%ebp),%edi
 8051a13:	2b bd 60 ff ff ff    	sub    -0xa0(%ebp),%edi
 8051a19:	85 ff                	test   %edi,%edi
 8051a1b:	0f 8e a5 00 00 00    	jle    8051ac6 <_svfiprintf_r+0x986>
 8051a21:	83 ff 10             	cmp    $0x10,%edi
 8051a24:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 8051a2a:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
 8051a30:	7e 71                	jle    8051aa3 <_svfiprintf_r+0x963>
 8051a32:	89 f1                	mov    %esi,%ecx
 8051a34:	8b 75 08             	mov    0x8(%ebp),%esi
 8051a37:	eb 0f                	jmp    8051a48 <_svfiprintf_r+0x908>
 8051a39:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 8051a40:	83 ef 10             	sub    $0x10,%edi
 8051a43:	83 ff 10             	cmp    $0x10,%edi
 8051a46:	7e 59                	jle    8051aa1 <_svfiprintf_r+0x961>
 8051a48:	83 c0 01             	add    $0x1,%eax
 8051a4b:	83 c2 10             	add    $0x10,%edx
 8051a4e:	c7 01 3c 4f 05 08    	movl   $0x8054f3c,(%ecx)
 8051a54:	83 c1 08             	add    $0x8,%ecx
 8051a57:	c7 41 fc 10 00 00 00 	movl   $0x10,-0x4(%ecx)
 8051a5e:	83 f8 07             	cmp    $0x7,%eax
 8051a61:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
 8051a67:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
 8051a6d:	7e d1                	jle    8051a40 <_svfiprintf_r+0x900>
 8051a6f:	8b 45 0c             	mov    0xc(%ebp),%eax
 8051a72:	89 5c 24 08          	mov    %ebx,0x8(%esp)
 8051a76:	89 34 24             	mov    %esi,(%esp)
 8051a79:	89 44 24 04          	mov    %eax,0x4(%esp)
 8051a7d:	e8 ce f4 ff ff       	call   8050f50 <__ssprint_r>
 8051a82:	85 c0                	test   %eax,%eax
 8051a84:	0f 85 be 00 00 00    	jne    8051b48 <_svfiprintf_r+0xa08>
 8051a8a:	83 ef 10             	sub    $0x10,%edi
 8051a8d:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
 8051a93:	83 ff 10             	cmp    $0x10,%edi
 8051a96:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 8051a9c:	8d 4d a8             	lea    -0x58(%ebp),%ecx
 8051a9f:	7f a7                	jg     8051a48 <_svfiprintf_r+0x908>
 8051aa1:	89 ce                	mov    %ecx,%esi
 8051aa3:	83 c0 01             	add    $0x1,%eax
 8051aa6:	01 fa                	add    %edi,%edx
 8051aa8:	83 f8 07             	cmp    $0x7,%eax
 8051aab:	c7 06 3c 4f 05 08    	movl   $0x8054f3c,(%esi)
 8051ab1:	89 7e 04             	mov    %edi,0x4(%esi)
 8051ab4:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
 8051aba:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
 8051ac0:	0f 8f ee 02 00 00    	jg     8051db4 <_svfiprintf_r+0xc74>
 8051ac6:	8b 85 54 ff ff ff    	mov    -0xac(%ebp),%eax
 8051acc:	8b b5 60 ff ff ff    	mov    -0xa0(%ebp),%esi
 8051ad2:	39 c6                	cmp    %eax,%esi
 8051ad4:	0f 4d c6             	cmovge %esi,%eax
 8051ad7:	01 85 50 ff ff ff    	add    %eax,-0xb0(%ebp)
 8051add:	85 d2                	test   %edx,%edx
 8051adf:	0f 85 d3 01 00 00    	jne    8051cb8 <_svfiprintf_r+0xb78>
 8051ae5:	c7 85 78 ff ff ff 00 	movl   $0x0,-0x88(%ebp)
 8051aec:	00 00 00 
 8051aef:	8d 75 a8             	lea    -0x58(%ebp),%esi
 8051af2:	e9 a7 f6 ff ff       	jmp    805119e <_svfiprintf_r+0x5e>
 8051af7:	90                   	nop
 8051af8:	84 d2                	test   %dl,%dl
 8051afa:	75 6c                	jne    8051b68 <_svfiprintf_r+0xa28>
 8051afc:	f6 85 64 ff ff ff 01 	testb  $0x1,-0x9c(%ebp)
 8051b03:	74 63                	je     8051b68 <_svfiprintf_r+0xa28>
 8051b05:	8b 85 3c ff ff ff    	mov    -0xc4(%ebp),%eax
 8051b0b:	8d 5d a7             	lea    -0x59(%ebp),%ebx
 8051b0e:	c6 45 a7 30          	movb   $0x30,-0x59(%ebp)
 8051b12:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
 8051b18:	e9 13 f8 ff ff       	jmp    8051330 <_svfiprintf_r+0x1f0>
 8051b1d:	8b 85 7c ff ff ff    	mov    -0x84(%ebp),%eax
 8051b23:	85 c0                	test   %eax,%eax
 8051b25:	74 21                	je     8051b48 <_svfiprintf_r+0xa08>
 8051b27:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
 8051b2d:	89 44 24 08          	mov    %eax,0x8(%esp)
 8051b31:	8b 45 0c             	mov    0xc(%ebp),%eax
 8051b34:	89 44 24 04          	mov    %eax,0x4(%esp)
 8051b38:	8b 45 08             	mov    0x8(%ebp),%eax
 8051b3b:	89 04 24             	mov    %eax,(%esp)
 8051b3e:	e8 0d f4 ff ff       	call   8050f50 <__ssprint_r>
 8051b43:	90                   	nop
 8051b44:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8051b48:	8b 75 0c             	mov    0xc(%ebp),%esi
 8051b4b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8051b50:	f6 46 0c 40          	testb  $0x40,0xc(%esi)
 8051b54:	0f 44 85 50 ff ff ff 	cmove  -0xb0(%ebp),%eax
 8051b5b:	81 c4 cc 00 00 00    	add    $0xcc,%esp
 8051b61:	5b                   	pop    %ebx
 8051b62:	5e                   	pop    %esi
 8051b63:	5f                   	pop    %edi
 8051b64:	5d                   	pop    %ebp
 8051b65:	c3                   	ret    
 8051b66:	66 90                	xchg   %ax,%ax
 8051b68:	c7 85 58 ff ff ff 00 	movl   $0x0,-0xa8(%ebp)
 8051b6f:	00 00 00 
 8051b72:	8d 5d a8             	lea    -0x58(%ebp),%ebx
 8051b75:	e9 b6 f7 ff ff       	jmp    8051330 <_svfiprintf_r+0x1f0>
 8051b7a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 8051b80:	8b bd 54 ff ff ff    	mov    -0xac(%ebp),%edi
 8051b86:	2b bd 60 ff ff ff    	sub    -0xa0(%ebp),%edi
 8051b8c:	85 ff                	test   %edi,%edi
 8051b8e:	0f 8e 4f fd ff ff    	jle    80518e3 <_svfiprintf_r+0x7a3>
 8051b94:	83 ff 10             	cmp    $0x10,%edi
 8051b97:	0f 8e 7f 00 00 00    	jle    8051c1c <_svfiprintf_r+0xadc>
 8051b9d:	89 9d 4c ff ff ff    	mov    %ebx,-0xb4(%ebp)
 8051ba3:	89 f1                	mov    %esi,%ecx
 8051ba5:	8b 5d 08             	mov    0x8(%ebp),%ebx
 8051ba8:	8b 75 0c             	mov    0xc(%ebp),%esi
 8051bab:	eb 0b                	jmp    8051bb8 <_svfiprintf_r+0xa78>
 8051bad:	8d 76 00             	lea    0x0(%esi),%esi
 8051bb0:	83 ef 10             	sub    $0x10,%edi
 8051bb3:	83 ff 10             	cmp    $0x10,%edi
 8051bb6:	7e 5c                	jle    8051c14 <_svfiprintf_r+0xad4>
 8051bb8:	83 c0 01             	add    $0x1,%eax
 8051bbb:	83 c2 10             	add    $0x10,%edx
 8051bbe:	c7 01 2c 4f 05 08    	movl   $0x8054f2c,(%ecx)
 8051bc4:	83 c1 08             	add    $0x8,%ecx
 8051bc7:	c7 41 fc 10 00 00 00 	movl   $0x10,-0x4(%ecx)
 8051bce:	83 f8 07             	cmp    $0x7,%eax
 8051bd1:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
 8051bd7:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
 8051bdd:	7e d1                	jle    8051bb0 <_svfiprintf_r+0xa70>
 8051bdf:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
 8051be5:	89 44 24 08          	mov    %eax,0x8(%esp)
 8051be9:	89 74 24 04          	mov    %esi,0x4(%esp)
 8051bed:	89 1c 24             	mov    %ebx,(%esp)
 8051bf0:	e8 5b f3 ff ff       	call   8050f50 <__ssprint_r>
 8051bf5:	85 c0                	test   %eax,%eax
 8051bf7:	0f 85 4b ff ff ff    	jne    8051b48 <_svfiprintf_r+0xa08>
 8051bfd:	83 ef 10             	sub    $0x10,%edi
 8051c00:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
 8051c06:	83 ff 10             	cmp    $0x10,%edi
 8051c09:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 8051c0f:	8d 4d a8             	lea    -0x58(%ebp),%ecx
 8051c12:	7f a4                	jg     8051bb8 <_svfiprintf_r+0xa78>
 8051c14:	8b 9d 4c ff ff ff    	mov    -0xb4(%ebp),%ebx
 8051c1a:	89 ce                	mov    %ecx,%esi
 8051c1c:	83 c0 01             	add    $0x1,%eax
 8051c1f:	01 fa                	add    %edi,%edx
 8051c21:	c7 06 2c 4f 05 08    	movl   $0x8054f2c,(%esi)
 8051c27:	83 c6 08             	add    $0x8,%esi
 8051c2a:	89 7e fc             	mov    %edi,-0x4(%esi)
 8051c2d:	83 f8 07             	cmp    $0x7,%eax
 8051c30:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
 8051c36:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
 8051c3c:	0f 8e a1 fc ff ff    	jle    80518e3 <_svfiprintf_r+0x7a3>
 8051c42:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
 8051c48:	89 44 24 08          	mov    %eax,0x8(%esp)
 8051c4c:	8b 45 0c             	mov    0xc(%ebp),%eax
 8051c4f:	89 44 24 04          	mov    %eax,0x4(%esp)
 8051c53:	8b 45 08             	mov    0x8(%ebp),%eax
 8051c56:	89 04 24             	mov    %eax,(%esp)
 8051c59:	e8 f2 f2 ff ff       	call   8050f50 <__ssprint_r>
 8051c5e:	85 c0                	test   %eax,%eax
 8051c60:	0f 85 e2 fe ff ff    	jne    8051b48 <_svfiprintf_r+0xa08>
 8051c66:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
 8051c6c:	8d 75 a8             	lea    -0x58(%ebp),%esi
 8051c6f:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 8051c75:	e9 69 fc ff ff       	jmp    80518e3 <_svfiprintf_r+0x7a3>
 8051c7a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 8051c80:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
 8051c86:	89 44 24 08          	mov    %eax,0x8(%esp)
 8051c8a:	8b 45 0c             	mov    0xc(%ebp),%eax
 8051c8d:	89 44 24 04          	mov    %eax,0x4(%esp)
 8051c91:	8b 45 08             	mov    0x8(%ebp),%eax
 8051c94:	89 04 24             	mov    %eax,(%esp)
 8051c97:	e8 b4 f2 ff ff       	call   8050f50 <__ssprint_r>
 8051c9c:	85 c0                	test   %eax,%eax
 8051c9e:	0f 85 a4 fe ff ff    	jne    8051b48 <_svfiprintf_r+0xa08>
 8051ca4:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
 8051caa:	8d 75 a8             	lea    -0x58(%ebp),%esi
 8051cad:	e9 4e fd ff ff       	jmp    8051a00 <_svfiprintf_r+0x8c0>
 8051cb2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 8051cb8:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
 8051cbe:	89 44 24 08          	mov    %eax,0x8(%esp)
 8051cc2:	8b 45 0c             	mov    0xc(%ebp),%eax
 8051cc5:	89 44 24 04          	mov    %eax,0x4(%esp)
 8051cc9:	8b 45 08             	mov    0x8(%ebp),%eax
 8051ccc:	89 04 24             	mov    %eax,(%esp)
 8051ccf:	e8 7c f2 ff ff       	call   8050f50 <__ssprint_r>
 8051cd4:	85 c0                	test   %eax,%eax
 8051cd6:	0f 84 09 fe ff ff    	je     8051ae5 <_svfiprintf_r+0x9a5>
 8051cdc:	e9 67 fe ff ff       	jmp    8051b48 <_svfiprintf_r+0xa08>
 8051ce1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 8051ce8:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
 8051cee:	89 44 24 08          	mov    %eax,0x8(%esp)
 8051cf2:	8b 45 0c             	mov    0xc(%ebp),%eax
 8051cf5:	89 44 24 04          	mov    %eax,0x4(%esp)
 8051cf9:	8b 45 08             	mov    0x8(%ebp),%eax
 8051cfc:	89 04 24             	mov    %eax,(%esp)
 8051cff:	e8 4c f2 ff ff       	call   8050f50 <__ssprint_r>
 8051d04:	85 c0                	test   %eax,%eax
 8051d06:	0f 85 3c fe ff ff    	jne    8051b48 <_svfiprintf_r+0xa08>
 8051d0c:	8d 75 a8             	lea    -0x58(%ebp),%esi
 8051d0f:	e9 e9 f4 ff ff       	jmp    80511fd <_svfiprintf_r+0xbd>
 8051d14:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8051d18:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
 8051d1e:	89 44 24 08          	mov    %eax,0x8(%esp)
 8051d22:	8b 45 0c             	mov    0xc(%ebp),%eax
 8051d25:	89 44 24 04          	mov    %eax,0x4(%esp)
 8051d29:	8b 45 08             	mov    0x8(%ebp),%eax
 8051d2c:	89 04 24             	mov    %eax,(%esp)
 8051d2f:	e8 1c f2 ff ff       	call   8050f50 <__ssprint_r>
 8051d34:	85 c0                	test   %eax,%eax
 8051d36:	0f 85 0c fe ff ff    	jne    8051b48 <_svfiprintf_r+0xa08>
 8051d3c:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
 8051d42:	8d 75 a8             	lea    -0x58(%ebp),%esi
 8051d45:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 8051d4b:	e9 83 fb ff ff       	jmp    80518d3 <_svfiprintf_r+0x793>
 8051d50:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
 8051d56:	89 44 24 08          	mov    %eax,0x8(%esp)
 8051d5a:	8b 45 0c             	mov    0xc(%ebp),%eax
 8051d5d:	89 44 24 04          	mov    %eax,0x4(%esp)
 8051d61:	8b 45 08             	mov    0x8(%ebp),%eax
 8051d64:	89 04 24             	mov    %eax,(%esp)
 8051d67:	e8 e4 f1 ff ff       	call   8050f50 <__ssprint_r>
 8051d6c:	85 c0                	test   %eax,%eax
 8051d6e:	0f 85 d4 fd ff ff    	jne    8051b48 <_svfiprintf_r+0xa08>
 8051d74:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
 8051d7a:	8d 75 a8             	lea    -0x58(%ebp),%esi
 8051d7d:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 8051d83:	e9 13 fb ff ff       	jmp    805189b <_svfiprintf_r+0x75b>
 8051d88:	83 f9 09             	cmp    $0x9,%ecx
 8051d8b:	76 56                	jbe    8051de3 <_svfiprintf_r+0xca3>
 8051d8d:	8d 5d a8             	lea    -0x58(%ebp),%ebx
 8051d90:	b8 cd cc cc cc       	mov    $0xcccccccd,%eax
 8051d95:	83 eb 01             	sub    $0x1,%ebx
 8051d98:	f7 e1                	mul    %ecx
 8051d9a:	c1 ea 03             	shr    $0x3,%edx
 8051d9d:	8d 04 92             	lea    (%edx,%edx,4),%eax
 8051da0:	01 c0                	add    %eax,%eax
 8051da2:	29 c1                	sub    %eax,%ecx
 8051da4:	83 c1 30             	add    $0x30,%ecx
 8051da7:	85 d2                	test   %edx,%edx
 8051da9:	88 0b                	mov    %cl,(%ebx)
 8051dab:	89 d1                	mov    %edx,%ecx
 8051dad:	75 e1                	jne    8051d90 <_svfiprintf_r+0xc50>
 8051daf:	e9 71 f5 ff ff       	jmp    8051325 <_svfiprintf_r+0x1e5>
 8051db4:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
 8051dba:	89 44 24 08          	mov    %eax,0x8(%esp)
 8051dbe:	8b 45 0c             	mov    0xc(%ebp),%eax
 8051dc1:	89 44 24 04          	mov    %eax,0x4(%esp)
 8051dc5:	8b 45 08             	mov    0x8(%ebp),%eax
 8051dc8:	89 04 24             	mov    %eax,(%esp)
 8051dcb:	e8 80 f1 ff ff       	call   8050f50 <__ssprint_r>
 8051dd0:	85 c0                	test   %eax,%eax
 8051dd2:	0f 85 70 fd ff ff    	jne    8051b48 <_svfiprintf_r+0xa08>
 8051dd8:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
 8051dde:	e9 e3 fc ff ff       	jmp    8051ac6 <_svfiprintf_r+0x986>
 8051de3:	8b 85 3c ff ff ff    	mov    -0xc4(%ebp),%eax
 8051de9:	83 c1 30             	add    $0x30,%ecx
 8051dec:	88 4d a7             	mov    %cl,-0x59(%ebp)
 8051def:	8d 5d a7             	lea    -0x59(%ebp),%ebx
 8051df2:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
 8051df8:	e9 33 f5 ff ff       	jmp    8051330 <_svfiprintf_r+0x1f0>
 8051dfd:	8b 45 14             	mov    0x14(%ebp),%eax
 8051e00:	8b 9d 50 ff ff ff    	mov    -0xb0(%ebp),%ebx
 8051e06:	8b 00                	mov    (%eax),%eax
 8051e08:	89 18                	mov    %ebx,(%eax)
 8051e0a:	8b 45 14             	mov    0x14(%ebp),%eax
 8051e0d:	83 c0 04             	add    $0x4,%eax
 8051e10:	89 45 14             	mov    %eax,0x14(%ebp)
 8051e13:	e9 86 f3 ff ff       	jmp    805119e <_svfiprintf_r+0x5e>
 8051e18:	0f b7 0b             	movzwl (%ebx),%ecx
 8051e1b:	83 c3 04             	add    $0x4,%ebx
 8051e1e:	89 5d 14             	mov    %ebx,0x14(%ebp)
 8051e21:	e9 95 f8 ff ff       	jmp    80516bb <_svfiprintf_r+0x57b>
 8051e26:	0f bf 08             	movswl (%eax),%ecx
 8051e29:	83 c0 04             	add    $0x4,%eax
 8051e2c:	89 45 14             	mov    %eax,0x14(%ebp)
 8051e2f:	85 c9                	test   %ecx,%ecx
 8051e31:	0f 89 0d f7 ff ff    	jns    8051544 <_svfiprintf_r+0x404>
 8051e37:	f7 d9                	neg    %ecx
 8051e39:	bf 2d 00 00 00       	mov    $0x2d,%edi
 8051e3e:	c6 85 71 ff ff ff 2d 	movb   $0x2d,-0x8f(%ebp)
 8051e45:	ba 01 00 00 00       	mov    $0x1,%edx
 8051e4a:	e9 7a f4 ff ff       	jmp    80512c9 <_svfiprintf_r+0x189>
 8051e4f:	89 1c 24             	mov    %ebx,(%esp)
 8051e52:	e8 09 76 ff ff       	call   8049460 <strlen>
 8051e57:	8b 95 60 ff ff ff    	mov    -0xa0(%ebp),%edx
 8051e5d:	0f b6 bd 71 ff ff ff 	movzbl -0x8f(%ebp),%edi
 8051e64:	c7 85 5c ff ff ff 00 	movl   $0x0,-0xa4(%ebp)
 8051e6b:	00 00 00 
 8051e6e:	89 55 14             	mov    %edx,0x14(%ebp)
 8051e71:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
 8051e77:	e9 b4 f4 ff ff       	jmp    8051330 <_svfiprintf_r+0x1f0>
 8051e7c:	8b 45 08             	mov    0x8(%ebp),%eax
 8051e7f:	c7 44 24 04 40 00 00 	movl   $0x40,0x4(%esp)
 8051e86:	00 
 8051e87:	89 04 24             	mov    %eax,(%esp)
 8051e8a:	e8 41 d8 ff ff       	call   804f6d0 <_malloc_r>
 8051e8f:	8b 75 0c             	mov    0xc(%ebp),%esi
 8051e92:	85 c0                	test   %eax,%eax
 8051e94:	89 06                	mov    %eax,(%esi)
 8051e96:	89 46 10             	mov    %eax,0x10(%esi)
 8051e99:	0f 84 a3 00 00 00    	je     8051f42 <_svfiprintf_r+0xe02>
 8051e9f:	8b 45 0c             	mov    0xc(%ebp),%eax
 8051ea2:	c7 40 14 40 00 00 00 	movl   $0x40,0x14(%eax)
 8051ea9:	e9 b2 f2 ff ff       	jmp    8051160 <_svfiprintf_r+0x20>
 8051eae:	8b bd 5c ff ff ff    	mov    -0xa4(%ebp),%edi
 8051eb4:	b8 06 00 00 00       	mov    $0x6,%eax
 8051eb9:	89 55 14             	mov    %edx,0x14(%ebp)
 8051ebc:	83 ff 06             	cmp    $0x6,%edi
 8051ebf:	0f 46 c7             	cmovbe %edi,%eax
 8051ec2:	85 c0                	test   %eax,%eax
 8051ec4:	0f 49 d8             	cmovns %eax,%ebx
 8051ec7:	89 9d 60 ff ff ff    	mov    %ebx,-0xa0(%ebp)
 8051ecd:	bb fe 48 05 08       	mov    $0x80548fe,%ebx
 8051ed2:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
 8051ed8:	e9 61 f8 ff ff       	jmp    805173e <_svfiprintf_r+0x5fe>
 8051edd:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
 8051ee3:	0f b6 bd 71 ff ff ff 	movzbl -0x8f(%ebp),%edi
 8051eea:	89 55 14             	mov    %edx,0x14(%ebp)
 8051eed:	c7 85 5c ff ff ff 00 	movl   $0x0,-0xa4(%ebp)
 8051ef4:	00 00 00 
 8051ef7:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
 8051efd:	e9 2e f4 ff ff       	jmp    8051330 <_svfiprintf_r+0x1f0>
 8051f02:	89 da                	mov    %ebx,%edx
 8051f04:	c7 85 5c ff ff ff 00 	movl   $0x0,-0xa4(%ebp)
 8051f0b:	00 00 00 
 8051f0e:	e9 29 f3 ff ff       	jmp    805123c <_svfiprintf_r+0xfc>
 8051f13:	8b 4d 14             	mov    0x14(%ebp),%ecx
 8051f16:	89 da                	mov    %ebx,%edx
 8051f18:	8b 45 14             	mov    0x14(%ebp),%eax
 8051f1b:	8b 09                	mov    (%ecx),%ecx
 8051f1d:	83 c0 04             	add    $0x4,%eax
 8051f20:	89 45 14             	mov    %eax,0x14(%ebp)
 8051f23:	85 c9                	test   %ecx,%ecx
 8051f25:	89 8d 5c ff ff ff    	mov    %ecx,-0xa4(%ebp)
 8051f2b:	0f 89 26 f3 ff ff    	jns    8051257 <_svfiprintf_r+0x117>
 8051f31:	c7 85 5c ff ff ff ff 	movl   $0xffffffff,-0xa4(%ebp)
 8051f38:	ff ff ff 
 8051f3b:	89 d0                	mov    %edx,%eax
 8051f3d:	e9 f4 f2 ff ff       	jmp    8051236 <_svfiprintf_r+0xf6>
 8051f42:	8b 45 08             	mov    0x8(%ebp),%eax
 8051f45:	c7 00 0c 00 00 00    	movl   $0xc,(%eax)
 8051f4b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8051f50:	e9 06 fc ff ff       	jmp    8051b5b <_svfiprintf_r+0xa1b>
 8051f55:	66 90                	xchg   %ax,%ax
 8051f57:	66 90                	xchg   %ax,%ax
 8051f59:	66 90                	xchg   %ax,%ax
 8051f5b:	66 90                	xchg   %ax,%ax
 8051f5d:	66 90                	xchg   %ax,%ax
 8051f5f:	90                   	nop

08051f60 <__sprint_r.part.0>:
 8051f60:	55                   	push   %ebp
 8051f61:	89 e5                	mov    %esp,%ebp
 8051f63:	57                   	push   %edi
 8051f64:	56                   	push   %esi
 8051f65:	53                   	push   %ebx
 8051f66:	83 ec 2c             	sub    $0x2c,%esp
 8051f69:	f6 42 65 20          	testb  $0x20,0x65(%edx)
 8051f6d:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 8051f70:	89 c8                	mov    %ecx,%eax
 8051f72:	89 4d dc             	mov    %ecx,-0x24(%ebp)
 8051f75:	0f 84 a5 00 00 00    	je     8052020 <__sprint_r.part.0+0xc0>
 8051f7b:	8b 40 08             	mov    0x8(%eax),%eax
 8051f7e:	8b 09                	mov    (%ecx),%ecx
 8051f80:	85 c0                	test   %eax,%eax
 8051f82:	89 4d d8             	mov    %ecx,-0x28(%ebp)
 8051f85:	0f 84 8a 00 00 00    	je     8052015 <__sprint_r.part.0+0xb5>
 8051f8b:	89 55 d4             	mov    %edx,-0x2c(%ebp)
 8051f8e:	8b 45 d8             	mov    -0x28(%ebp),%eax
 8051f91:	31 ff                	xor    %edi,%edi
 8051f93:	8b 58 04             	mov    0x4(%eax),%ebx
 8051f96:	8b 30                	mov    (%eax),%esi
 8051f98:	c1 eb 02             	shr    $0x2,%ebx
 8051f9b:	85 db                	test   %ebx,%ebx
 8051f9d:	7e 5c                	jle    8051ffb <__sprint_r.part.0+0x9b>
 8051f9f:	89 5d e0             	mov    %ebx,-0x20(%ebp)
 8051fa2:	89 f3                	mov    %esi,%ebx
 8051fa4:	89 fe                	mov    %edi,%esi
 8051fa6:	8b 7d d4             	mov    -0x2c(%ebp),%edi
 8051fa9:	eb 0d                	jmp    8051fb8 <__sprint_r.part.0+0x58>
 8051fab:	90                   	nop
 8051fac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8051fb0:	83 c6 01             	add    $0x1,%esi
 8051fb3:	39 75 e0             	cmp    %esi,-0x20(%ebp)
 8051fb6:	74 40                	je     8051ff8 <__sprint_r.part.0+0x98>
 8051fb8:	89 7c 24 08          	mov    %edi,0x8(%esp)
 8051fbc:	8b 04 b3             	mov    (%ebx,%esi,4),%eax
 8051fbf:	89 44 24 04          	mov    %eax,0x4(%esp)
 8051fc3:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 8051fc6:	89 04 24             	mov    %eax,(%esp)
 8051fc9:	e8 b2 13 00 00       	call   8053380 <_fputwc_r>
 8051fce:	83 f8 ff             	cmp    $0xffffffff,%eax
 8051fd1:	75 dd                	jne    8051fb0 <__sprint_r.part.0+0x50>
 8051fd3:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8051fd8:	8b 55 dc             	mov    -0x24(%ebp),%edx
 8051fdb:	c7 42 08 00 00 00 00 	movl   $0x0,0x8(%edx)
 8051fe2:	c7 42 04 00 00 00 00 	movl   $0x0,0x4(%edx)
 8051fe9:	83 c4 2c             	add    $0x2c,%esp
 8051fec:	5b                   	pop    %ebx
 8051fed:	5e                   	pop    %esi
 8051fee:	5f                   	pop    %edi
 8051fef:	5d                   	pop    %ebp
 8051ff0:	c3                   	ret    
 8051ff1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 8051ff8:	8b 5d e0             	mov    -0x20(%ebp),%ebx
 8051ffb:	8b 4d dc             	mov    -0x24(%ebp),%ecx
 8051ffe:	c1 e3 02             	shl    $0x2,%ebx
 8052001:	83 45 d8 08          	addl   $0x8,-0x28(%ebp)
 8052005:	8b 41 08             	mov    0x8(%ecx),%eax
 8052008:	29 d8                	sub    %ebx,%eax
 805200a:	85 c0                	test   %eax,%eax
 805200c:	89 41 08             	mov    %eax,0x8(%ecx)
 805200f:	0f 85 79 ff ff ff    	jne    8051f8e <__sprint_r.part.0+0x2e>
 8052015:	31 c0                	xor    %eax,%eax
 8052017:	eb bf                	jmp    8051fd8 <__sprint_r.part.0+0x78>
 8052019:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 8052020:	8b 45 dc             	mov    -0x24(%ebp),%eax
 8052023:	89 54 24 04          	mov    %edx,0x4(%esp)
 8052027:	89 44 24 08          	mov    %eax,0x8(%esp)
 805202b:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 805202e:	89 04 24             	mov    %eax,(%esp)
 8052031:	e8 1a 15 00 00       	call   8053550 <__sfvwrite_r>
 8052036:	eb a0                	jmp    8051fd8 <__sprint_r.part.0+0x78>
 8052038:	90                   	nop
 8052039:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

08052040 <__sprint_r>:
 8052040:	55                   	push   %ebp
 8052041:	89 e5                	mov    %esp,%ebp
 8052043:	8b 4d 10             	mov    0x10(%ebp),%ecx
 8052046:	8b 45 08             	mov    0x8(%ebp),%eax
 8052049:	8b 55 0c             	mov    0xc(%ebp),%edx
 805204c:	83 79 08 00          	cmpl   $0x0,0x8(%ecx)
 8052050:	74 06                	je     8052058 <__sprint_r+0x18>
 8052052:	5d                   	pop    %ebp
 8052053:	e9 08 ff ff ff       	jmp    8051f60 <__sprint_r.part.0>
 8052058:	c7 41 04 00 00 00 00 	movl   $0x0,0x4(%ecx)
 805205f:	31 c0                	xor    %eax,%eax
 8052061:	5d                   	pop    %ebp
 8052062:	c3                   	ret    
 8052063:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 8052069:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

08052070 <_vfiprintf_r>:
 8052070:	55                   	push   %ebp
 8052071:	89 e5                	mov    %esp,%ebp
 8052073:	57                   	push   %edi
 8052074:	56                   	push   %esi
 8052075:	53                   	push   %ebx
 8052076:	81 ec cc 00 00 00    	sub    $0xcc,%esp
 805207c:	8b 5d 08             	mov    0x8(%ebp),%ebx
 805207f:	85 db                	test   %ebx,%ebx
 8052081:	74 0e                	je     8052091 <_vfiprintf_r+0x21>
 8052083:	8b 45 08             	mov    0x8(%ebp),%eax
 8052086:	8b 48 38             	mov    0x38(%eax),%ecx
 8052089:	85 c9                	test   %ecx,%ecx
 805208b:	0f 84 c7 01 00 00    	je     8052258 <_vfiprintf_r+0x1e8>
 8052091:	8b 45 0c             	mov    0xc(%ebp),%eax
 8052094:	0f b7 40 0c          	movzwl 0xc(%eax),%eax
 8052098:	f6 c4 20             	test   $0x20,%ah
 805209b:	75 11                	jne    80520ae <_vfiprintf_r+0x3e>
 805209d:	8b 7d 0c             	mov    0xc(%ebp),%edi
 80520a0:	80 cc 20             	or     $0x20,%ah
 80520a3:	81 67 64 ff df ff ff 	andl   $0xffffdfff,0x64(%edi)
 80520aa:	66 89 47 0c          	mov    %ax,0xc(%edi)
 80520ae:	a8 08                	test   $0x8,%al
 80520b0:	0f 84 3a 01 00 00    	je     80521f0 <_vfiprintf_r+0x180>
 80520b6:	8b 7d 0c             	mov    0xc(%ebp),%edi
 80520b9:	8b 57 10             	mov    0x10(%edi),%edx
 80520bc:	85 d2                	test   %edx,%edx
 80520be:	0f 84 2c 01 00 00    	je     80521f0 <_vfiprintf_r+0x180>
 80520c4:	83 e0 1a             	and    $0x1a,%eax
 80520c7:	66 83 f8 0a          	cmp    $0xa,%ax
 80520cb:	0f 84 49 01 00 00    	je     805221a <_vfiprintf_r+0x1aa>
 80520d1:	8d 45 a8             	lea    -0x58(%ebp),%eax
 80520d4:	8d 7d a7             	lea    -0x59(%ebp),%edi
 80520d7:	89 c6                	mov    %eax,%esi
 80520d9:	89 85 74 ff ff ff    	mov    %eax,-0x8c(%ebp)
 80520df:	29 f8                	sub    %edi,%eax
 80520e1:	c7 85 7c ff ff ff 00 	movl   $0x0,-0x84(%ebp)
 80520e8:	00 00 00 
 80520eb:	c7 85 78 ff ff ff 00 	movl   $0x0,-0x88(%ebp)
 80520f2:	00 00 00 
 80520f5:	c7 85 40 ff ff ff 00 	movl   $0x0,-0xc0(%ebp)
 80520fc:	00 00 00 
 80520ff:	c7 85 50 ff ff ff 00 	movl   $0x0,-0xb0(%ebp)
 8052106:	00 00 00 
 8052109:	89 85 3c ff ff ff    	mov    %eax,-0xc4(%ebp)
 805210f:	8b 45 10             	mov    0x10(%ebp),%eax
 8052112:	8b 5d 10             	mov    0x10(%ebp),%ebx
 8052115:	0f b6 00             	movzbl (%eax),%eax
 8052118:	84 c0                	test   %al,%al
 805211a:	74 5b                	je     8052177 <_vfiprintf_r+0x107>
 805211c:	3c 25                	cmp    $0x25,%al
 805211e:	75 12                	jne    8052132 <_vfiprintf_r+0xc2>
 8052120:	eb 55                	jmp    8052177 <_vfiprintf_r+0x107>
 8052122:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 8052128:	84 c0                	test   %al,%al
 805212a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 8052130:	74 0a                	je     805213c <_vfiprintf_r+0xcc>
 8052132:	83 c3 01             	add    $0x1,%ebx
 8052135:	0f b6 03             	movzbl (%ebx),%eax
 8052138:	3c 25                	cmp    $0x25,%al
 805213a:	75 ec                	jne    8052128 <_vfiprintf_r+0xb8>
 805213c:	89 df                	mov    %ebx,%edi
 805213e:	2b 7d 10             	sub    0x10(%ebp),%edi
 8052141:	74 34                	je     8052177 <_vfiprintf_r+0x107>
 8052143:	8b 45 10             	mov    0x10(%ebp),%eax
 8052146:	83 c6 08             	add    $0x8,%esi
 8052149:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
 805214f:	89 7e fc             	mov    %edi,-0x4(%esi)
 8052152:	89 46 f8             	mov    %eax,-0x8(%esi)
 8052155:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 805215b:	01 fa                	add    %edi,%edx
 805215d:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
 8052163:	83 c0 01             	add    $0x1,%eax
 8052166:	83 f8 07             	cmp    $0x7,%eax
 8052169:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
 805216f:	7f 57                	jg     80521c8 <_vfiprintf_r+0x158>
 8052171:	01 bd 50 ff ff ff    	add    %edi,-0xb0(%ebp)
 8052177:	80 3b 00             	cmpb   $0x0,(%ebx)
 805217a:	0f 84 f9 07 00 00    	je     8052979 <_vfiprintf_r+0x909>
 8052180:	83 c3 01             	add    $0x1,%ebx
 8052183:	31 ff                	xor    %edi,%edi
 8052185:	c6 85 71 ff ff ff 00 	movb   $0x0,-0x8f(%ebp)
 805218c:	c7 85 5c ff ff ff ff 	movl   $0xffffffff,-0xa4(%ebp)
 8052193:	ff ff ff 
 8052196:	c7 85 54 ff ff ff 00 	movl   $0x0,-0xac(%ebp)
 805219d:	00 00 00 
 80521a0:	c7 85 64 ff ff ff 00 	movl   $0x0,-0x9c(%ebp)
 80521a7:	00 00 00 
 80521aa:	0f be 03             	movsbl (%ebx),%eax
 80521ad:	8d 53 01             	lea    0x1(%ebx),%edx
 80521b0:	8d 48 e0             	lea    -0x20(%eax),%ecx
 80521b3:	83 f9 58             	cmp    $0x58,%ecx
 80521b6:	0f 87 15 06 00 00    	ja     80527d1 <_vfiprintf_r+0x761>
 80521bc:	ff 24 8d 4c 4f 05 08 	jmp    *0x8054f4c(,%ecx,4)
 80521c3:	90                   	nop
 80521c4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 80521c8:	85 d2                	test   %edx,%edx
 80521ca:	0f 85 e8 0b 00 00    	jne    8052db8 <_vfiprintf_r+0xd48>
 80521d0:	c7 85 78 ff ff ff 00 	movl   $0x0,-0x88(%ebp)
 80521d7:	00 00 00 
 80521da:	8d 75 a8             	lea    -0x58(%ebp),%esi
 80521dd:	eb 92                	jmp    8052171 <_vfiprintf_r+0x101>
 80521df:	90                   	nop
 80521e0:	83 8d 64 ff ff ff 10 	orl    $0x10,-0x9c(%ebp)
 80521e7:	89 d3                	mov    %edx,%ebx
 80521e9:	eb bf                	jmp    80521aa <_vfiprintf_r+0x13a>
 80521eb:	90                   	nop
 80521ec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 80521f0:	8b 45 0c             	mov    0xc(%ebp),%eax
 80521f3:	89 44 24 04          	mov    %eax,0x4(%esp)
 80521f7:	8b 45 08             	mov    0x8(%ebp),%eax
 80521fa:	89 04 24             	mov    %eax,(%esp)
 80521fd:	e8 5e b2 ff ff       	call   804d460 <__swsetup_r>
 8052202:	85 c0                	test   %eax,%eax
 8052204:	75 42                	jne    8052248 <_vfiprintf_r+0x1d8>
 8052206:	8b 45 0c             	mov    0xc(%ebp),%eax
 8052209:	0f b7 40 0c          	movzwl 0xc(%eax),%eax
 805220d:	83 e0 1a             	and    $0x1a,%eax
 8052210:	66 83 f8 0a          	cmp    $0xa,%ax
 8052214:	0f 85 b7 fe ff ff    	jne    80520d1 <_vfiprintf_r+0x61>
 805221a:	8b 45 0c             	mov    0xc(%ebp),%eax
 805221d:	66 83 78 0e 00       	cmpw   $0x0,0xe(%eax)
 8052222:	0f 88 a9 fe ff ff    	js     80520d1 <_vfiprintf_r+0x61>
 8052228:	8b 45 14             	mov    0x14(%ebp),%eax
 805222b:	8b 4d 10             	mov    0x10(%ebp),%ecx
 805222e:	8b 55 0c             	mov    0xc(%ebp),%edx
 8052231:	89 04 24             	mov    %eax,(%esp)
 8052234:	8b 45 08             	mov    0x8(%ebp),%eax
 8052237:	e8 04 0e 00 00       	call   8053040 <__sbprintf>
 805223c:	81 c4 cc 00 00 00    	add    $0xcc,%esp
 8052242:	5b                   	pop    %ebx
 8052243:	5e                   	pop    %esi
 8052244:	5f                   	pop    %edi
 8052245:	5d                   	pop    %ebp
 8052246:	c3                   	ret    
 8052247:	90                   	nop
 8052248:	81 c4 cc 00 00 00    	add    $0xcc,%esp
 805224e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8052253:	5b                   	pop    %ebx
 8052254:	5e                   	pop    %esi
 8052255:	5f                   	pop    %edi
 8052256:	5d                   	pop    %ebp
 8052257:	c3                   	ret    
 8052258:	89 04 24             	mov    %eax,(%esp)
 805225b:	e8 70 ca ff ff       	call   804ecd0 <__sinit>
 8052260:	e9 2c fe ff ff       	jmp    8052091 <_vfiprintf_r+0x21>
 8052265:	8b 45 14             	mov    0x14(%ebp),%eax
 8052268:	8b 4d 14             	mov    0x14(%ebp),%ecx
 805226b:	8b 00                	mov    (%eax),%eax
 805226d:	83 c1 04             	add    $0x4,%ecx
 8052270:	89 4d 14             	mov    %ecx,0x14(%ebp)
 8052273:	85 c0                	test   %eax,%eax
 8052275:	89 85 54 ff ff ff    	mov    %eax,-0xac(%ebp)
 805227b:	0f 89 66 ff ff ff    	jns    80521e7 <_vfiprintf_r+0x177>
 8052281:	f7 9d 54 ff ff ff    	negl   -0xac(%ebp)
 8052287:	83 8d 64 ff ff ff 04 	orl    $0x4,-0x9c(%ebp)
 805228e:	89 d3                	mov    %edx,%ebx
 8052290:	e9 15 ff ff ff       	jmp    80521aa <_vfiprintf_r+0x13a>
 8052295:	bf 2b 00 00 00       	mov    $0x2b,%edi
 805229a:	89 d3                	mov    %edx,%ebx
 805229c:	e9 09 ff ff ff       	jmp    80521aa <_vfiprintf_r+0x13a>
 80522a1:	8b 45 14             	mov    0x14(%ebp),%eax
 80522a4:	83 8d 64 ff ff ff 02 	orl    $0x2,-0x9c(%ebp)
 80522ab:	89 55 10             	mov    %edx,0x10(%ebp)
 80522ae:	ba 02 00 00 00       	mov    $0x2,%edx
 80522b3:	8b 08                	mov    (%eax),%ecx
 80522b5:	83 c0 04             	add    $0x4,%eax
 80522b8:	c6 85 72 ff ff ff 30 	movb   $0x30,-0x8e(%ebp)
 80522bf:	c6 85 73 ff ff ff 78 	movb   $0x78,-0x8d(%ebp)
 80522c6:	89 45 14             	mov    %eax,0x14(%ebp)
 80522c9:	c7 85 40 ff ff ff ed 	movl   $0x80548ed,-0xc0(%ebp)
 80522d0:	48 05 08 
 80522d3:	90                   	nop
 80522d4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 80522d8:	c6 85 71 ff ff ff 00 	movb   $0x0,-0x8f(%ebp)
 80522df:	31 ff                	xor    %edi,%edi
 80522e1:	8b 9d 64 ff ff ff    	mov    -0x9c(%ebp),%ebx
 80522e7:	89 d8                	mov    %ebx,%eax
 80522e9:	24 7f                	and    $0x7f,%al
 80522eb:	83 bd 5c ff ff ff 00 	cmpl   $0x0,-0xa4(%ebp)
 80522f2:	0f 48 c3             	cmovs  %ebx,%eax
 80522f5:	89 85 64 ff ff ff    	mov    %eax,-0x9c(%ebp)
 80522fb:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
 8052301:	85 c0                	test   %eax,%eax
 8052303:	75 08                	jne    805230d <_vfiprintf_r+0x29d>
 8052305:	85 c9                	test   %ecx,%ecx
 8052307:	0f 84 8b 08 00 00    	je     8052b98 <_vfiprintf_r+0xb28>
 805230d:	80 fa 01             	cmp    $0x1,%dl
 8052310:	0f 84 52 0a 00 00    	je     8052d68 <_vfiprintf_r+0xcf8>
 8052316:	80 fa 02             	cmp    $0x2,%dl
 8052319:	8d 45 a8             	lea    -0x58(%ebp),%eax
 805231c:	0f 85 ee 09 00 00    	jne    8052d10 <_vfiprintf_r+0xca0>
 8052322:	8b 9d 40 ff ff ff    	mov    -0xc0(%ebp),%ebx
 8052328:	89 ca                	mov    %ecx,%edx
 805232a:	83 e8 01             	sub    $0x1,%eax
 805232d:	83 e2 0f             	and    $0xf,%edx
 8052330:	0f b6 14 13          	movzbl (%ebx,%edx,1),%edx
 8052334:	c1 e9 04             	shr    $0x4,%ecx
 8052337:	85 c9                	test   %ecx,%ecx
 8052339:	88 10                	mov    %dl,(%eax)
 805233b:	75 eb                	jne    8052328 <_vfiprintf_r+0x2b8>
 805233d:	8d 4d a8             	lea    -0x58(%ebp),%ecx
 8052340:	29 c1                	sub    %eax,%ecx
 8052342:	89 85 44 ff ff ff    	mov    %eax,-0xbc(%ebp)
 8052348:	89 8d 58 ff ff ff    	mov    %ecx,-0xa8(%ebp)
 805234e:	66 90                	xchg   %ax,%ax
 8052350:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
 8052356:	8b 8d 58 ff ff ff    	mov    -0xa8(%ebp),%ecx
 805235c:	39 c1                	cmp    %eax,%ecx
 805235e:	0f 4d c1             	cmovge %ecx,%eax
 8052361:	89 85 60 ff ff ff    	mov    %eax,-0xa0(%ebp)
 8052367:	89 f8                	mov    %edi,%eax
 8052369:	3c 01                	cmp    $0x1,%al
 805236b:	83 9d 60 ff ff ff ff 	sbbl   $0xffffffff,-0xa0(%ebp)
 8052372:	8b 9d 60 ff ff ff    	mov    -0xa0(%ebp),%ebx
 8052378:	8b 8d 64 ff ff ff    	mov    -0x9c(%ebp),%ecx
 805237e:	89 d8                	mov    %ebx,%eax
 8052380:	89 cf                	mov    %ecx,%edi
 8052382:	83 c0 02             	add    $0x2,%eax
 8052385:	83 e7 02             	and    $0x2,%edi
 8052388:	89 bd 4c ff ff ff    	mov    %edi,-0xb4(%ebp)
 805238e:	89 cf                	mov    %ecx,%edi
 8052390:	0f 44 c3             	cmove  %ebx,%eax
 8052393:	81 e7 84 00 00 00    	and    $0x84,%edi
 8052399:	89 85 60 ff ff ff    	mov    %eax,-0xa0(%ebp)
 805239f:	89 bd 48 ff ff ff    	mov    %edi,-0xb8(%ebp)
 80523a5:	0f 85 b5 04 00 00    	jne    8052860 <_vfiprintf_r+0x7f0>
 80523ab:	8b 9d 54 ff ff ff    	mov    -0xac(%ebp),%ebx
 80523b1:	2b 9d 60 ff ff ff    	sub    -0xa0(%ebp),%ebx
 80523b7:	85 db                	test   %ebx,%ebx
 80523b9:	0f 8e a1 04 00 00    	jle    8052860 <_vfiprintf_r+0x7f0>
 80523bf:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 80523c5:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
 80523cb:	83 c0 01             	add    $0x1,%eax
 80523ce:	83 fb 10             	cmp    $0x10,%ebx
 80523d1:	7e 5b                	jle    805242e <_vfiprintf_r+0x3be>
 80523d3:	8b bd 78 ff ff ff    	mov    -0x88(%ebp),%edi
 80523d9:	eb 15                	jmp    80523f0 <_vfiprintf_r+0x380>
 80523db:	90                   	nop
 80523dc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 80523e0:	8d 47 02             	lea    0x2(%edi),%eax
 80523e3:	83 c6 08             	add    $0x8,%esi
 80523e6:	89 cf                	mov    %ecx,%edi
 80523e8:	83 eb 10             	sub    $0x10,%ebx
 80523eb:	83 fb 10             	cmp    $0x10,%ebx
 80523ee:	7e 3e                	jle    805242e <_vfiprintf_r+0x3be>
 80523f0:	8d 4f 01             	lea    0x1(%edi),%ecx
 80523f3:	83 c2 10             	add    $0x10,%edx
 80523f6:	83 f9 07             	cmp    $0x7,%ecx
 80523f9:	c7 06 c0 50 05 08    	movl   $0x80550c0,(%esi)
 80523ff:	c7 46 04 10 00 00 00 	movl   $0x10,0x4(%esi)
 8052406:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
 805240c:	89 8d 78 ff ff ff    	mov    %ecx,-0x88(%ebp)
 8052412:	7e cc                	jle    80523e0 <_vfiprintf_r+0x370>
 8052414:	85 d2                	test   %edx,%edx
 8052416:	0f 85 14 04 00 00    	jne    8052830 <_vfiprintf_r+0x7c0>
 805241c:	83 eb 10             	sub    $0x10,%ebx
 805241f:	31 ff                	xor    %edi,%edi
 8052421:	83 fb 10             	cmp    $0x10,%ebx
 8052424:	b8 01 00 00 00       	mov    $0x1,%eax
 8052429:	8d 75 a8             	lea    -0x58(%ebp),%esi
 805242c:	7f c2                	jg     80523f0 <_vfiprintf_r+0x380>
 805242e:	01 da                	add    %ebx,%edx
 8052430:	83 f8 07             	cmp    $0x7,%eax
 8052433:	c7 06 c0 50 05 08    	movl   $0x80550c0,(%esi)
 8052439:	89 5e 04             	mov    %ebx,0x4(%esi)
 805243c:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
 8052442:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
 8052448:	0f 8f 02 09 00 00    	jg     8052d50 <_vfiprintf_r+0xce0>
 805244e:	83 c6 08             	add    $0x8,%esi
 8052451:	8d 48 01             	lea    0x1(%eax),%ecx
 8052454:	e9 16 04 00 00       	jmp    805286f <_vfiprintf_r+0x7ff>
 8052459:	8b 45 14             	mov    0x14(%ebp),%eax
 805245c:	89 55 10             	mov    %edx,0x10(%ebp)
 805245f:	c6 85 71 ff ff ff 00 	movb   $0x0,-0x8f(%ebp)
 8052466:	8d 58 04             	lea    0x4(%eax),%ebx
 8052469:	8b 00                	mov    (%eax),%eax
 805246b:	85 c0                	test   %eax,%eax
 805246d:	89 85 44 ff ff ff    	mov    %eax,-0xbc(%ebp)
 8052473:	0f 84 e9 0a 00 00    	je     8052f62 <_vfiprintf_r+0xef2>
 8052479:	8b bd 5c ff ff ff    	mov    -0xa4(%ebp),%edi
 805247f:	85 ff                	test   %edi,%edi
 8052481:	0f 88 7e 0a 00 00    	js     8052f05 <_vfiprintf_r+0xe95>
 8052487:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
 805248d:	89 7c 24 08          	mov    %edi,0x8(%esp)
 8052491:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 8052498:	00 
 8052499:	89 04 24             	mov    %eax,(%esp)
 805249c:	e8 6f d9 ff ff       	call   804fe10 <memchr>
 80524a1:	85 c0                	test   %eax,%eax
 80524a3:	0f 84 f0 0a 00 00    	je     8052f99 <_vfiprintf_r+0xf29>
 80524a9:	2b 85 44 ff ff ff    	sub    -0xbc(%ebp),%eax
 80524af:	89 5d 14             	mov    %ebx,0x14(%ebp)
 80524b2:	c7 85 5c ff ff ff 00 	movl   $0x0,-0xa4(%ebp)
 80524b9:	00 00 00 
 80524bc:	39 f8                	cmp    %edi,%eax
 80524be:	0f 4f c7             	cmovg  %edi,%eax
 80524c1:	0f b6 bd 71 ff ff ff 	movzbl -0x8f(%ebp),%edi
 80524c8:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
 80524ce:	e9 7d fe ff ff       	jmp    8052350 <_vfiprintf_r+0x2e0>
 80524d3:	83 8d 64 ff ff ff 40 	orl    $0x40,-0x9c(%ebp)
 80524da:	89 d3                	mov    %edx,%ebx
 80524dc:	e9 c9 fc ff ff       	jmp    80521aa <_vfiprintf_r+0x13a>
 80524e1:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
 80524e8:	89 f9                	mov    %edi,%ecx
 80524ea:	89 55 10             	mov    %edx,0x10(%ebp)
 80524ed:	8b 7d 14             	mov    0x14(%ebp),%edi
 80524f0:	88 8d 71 ff ff ff    	mov    %cl,-0x8f(%ebp)
 80524f6:	c7 85 40 ff ff ff ed 	movl   $0x80548ed,-0xc0(%ebp)
 80524fd:	48 05 08 
 8052500:	0f 85 44 01 00 00    	jne    805264a <_vfiprintf_r+0x5da>
 8052506:	f6 85 64 ff ff ff 40 	testb  $0x40,-0x9c(%ebp)
 805250d:	0f 84 37 01 00 00    	je     805264a <_vfiprintf_r+0x5da>
 8052513:	0f b7 0f             	movzwl (%edi),%ecx
 8052516:	83 c7 04             	add    $0x4,%edi
 8052519:	89 7d 14             	mov    %edi,0x14(%ebp)
 805251c:	f6 85 64 ff ff ff 01 	testb  $0x1,-0x9c(%ebp)
 8052523:	ba 02 00 00 00       	mov    $0x2,%edx
 8052528:	0f 84 aa fd ff ff    	je     80522d8 <_vfiprintf_r+0x268>
 805252e:	85 c9                	test   %ecx,%ecx
 8052530:	0f 84 a2 fd ff ff    	je     80522d8 <_vfiprintf_r+0x268>
 8052536:	c6 85 72 ff ff ff 30 	movb   $0x30,-0x8e(%ebp)
 805253d:	88 85 73 ff ff ff    	mov    %al,-0x8d(%ebp)
 8052543:	83 8d 64 ff ff ff 02 	orl    $0x2,-0x9c(%ebp)
 805254a:	e9 89 fd ff ff       	jmp    80522d8 <_vfiprintf_r+0x268>
 805254f:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
 8052556:	89 f8                	mov    %edi,%eax
 8052558:	89 55 10             	mov    %edx,0x10(%ebp)
 805255b:	88 85 71 ff ff ff    	mov    %al,-0x8f(%ebp)
 8052561:	0f 85 a9 02 00 00    	jne    8052810 <_vfiprintf_r+0x7a0>
 8052567:	f6 85 64 ff ff ff 40 	testb  $0x40,-0x9c(%ebp)
 805256e:	0f 84 9c 02 00 00    	je     8052810 <_vfiprintf_r+0x7a0>
 8052574:	8b 45 14             	mov    0x14(%ebp),%eax
 8052577:	0f b7 bd 50 ff ff ff 	movzwl -0xb0(%ebp),%edi
 805257e:	8b 00                	mov    (%eax),%eax
 8052580:	66 89 38             	mov    %di,(%eax)
 8052583:	8b 45 14             	mov    0x14(%ebp),%eax
 8052586:	83 c0 04             	add    $0x4,%eax
 8052589:	89 45 14             	mov    %eax,0x14(%ebp)
 805258c:	e9 7e fb ff ff       	jmp    805210f <_vfiprintf_r+0x9f>
 8052591:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
 8052598:	89 55 10             	mov    %edx,0x10(%ebp)
 805259b:	8b 45 14             	mov    0x14(%ebp),%eax
 805259e:	75 73                	jne    8052613 <_vfiprintf_r+0x5a3>
 80525a0:	f6 85 64 ff ff ff 40 	testb  $0x40,-0x9c(%ebp)
 80525a7:	74 6a                	je     8052613 <_vfiprintf_r+0x5a3>
 80525a9:	0f b7 08             	movzwl (%eax),%ecx
 80525ac:	83 c0 04             	add    $0x4,%eax
 80525af:	ba 01 00 00 00       	mov    $0x1,%edx
 80525b4:	89 45 14             	mov    %eax,0x14(%ebp)
 80525b7:	e9 1c fd ff ff       	jmp    80522d8 <_vfiprintf_r+0x268>
 80525bc:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
 80525c3:	89 55 10             	mov    %edx,0x10(%ebp)
 80525c6:	8b 45 14             	mov    0x14(%ebp),%eax
 80525c9:	0f 85 f3 01 00 00    	jne    80527c2 <_vfiprintf_r+0x752>
 80525cf:	f6 85 64 ff ff ff 40 	testb  $0x40,-0x9c(%ebp)
 80525d6:	0f 84 e6 01 00 00    	je     80527c2 <_vfiprintf_r+0x752>
 80525dc:	0f b7 08             	movzwl (%eax),%ecx
 80525df:	83 c0 04             	add    $0x4,%eax
 80525e2:	31 d2                	xor    %edx,%edx
 80525e4:	89 45 14             	mov    %eax,0x14(%ebp)
 80525e7:	e9 ec fc ff ff       	jmp    80522d8 <_vfiprintf_r+0x268>
 80525ec:	81 8d 64 ff ff ff 80 	orl    $0x80,-0x9c(%ebp)
 80525f3:	00 00 00 
 80525f6:	89 d3                	mov    %edx,%ebx
 80525f8:	e9 ad fb ff ff       	jmp    80521aa <_vfiprintf_r+0x13a>
 80525fd:	83 8d 64 ff ff ff 10 	orl    $0x10,-0x9c(%ebp)
 8052604:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
 805260b:	89 55 10             	mov    %edx,0x10(%ebp)
 805260e:	8b 45 14             	mov    0x14(%ebp),%eax
 8052611:	74 8d                	je     80525a0 <_vfiprintf_r+0x530>
 8052613:	8b 08                	mov    (%eax),%ecx
 8052615:	83 c0 04             	add    $0x4,%eax
 8052618:	ba 01 00 00 00       	mov    $0x1,%edx
 805261d:	89 45 14             	mov    %eax,0x14(%ebp)
 8052620:	e9 b3 fc ff ff       	jmp    80522d8 <_vfiprintf_r+0x268>
 8052625:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
 805262c:	89 f9                	mov    %edi,%ecx
 805262e:	89 55 10             	mov    %edx,0x10(%ebp)
 8052631:	8b 7d 14             	mov    0x14(%ebp),%edi
 8052634:	88 8d 71 ff ff ff    	mov    %cl,-0x8f(%ebp)
 805263a:	c7 85 40 ff ff ff dc 	movl   $0x80548dc,-0xc0(%ebp)
 8052641:	48 05 08 
 8052644:	0f 84 bc fe ff ff    	je     8052506 <_vfiprintf_r+0x496>
 805264a:	8b 0f                	mov    (%edi),%ecx
 805264c:	83 c7 04             	add    $0x4,%edi
 805264f:	89 7d 14             	mov    %edi,0x14(%ebp)
 8052652:	e9 c5 fe ff ff       	jmp    805251c <_vfiprintf_r+0x4ac>
 8052657:	8b 45 14             	mov    0x14(%ebp),%eax
 805265a:	89 55 10             	mov    %edx,0x10(%ebp)
 805265d:	c6 85 71 ff ff ff 00 	movb   $0x0,-0x8f(%ebp)
 8052664:	c7 85 60 ff ff ff 01 	movl   $0x1,-0xa0(%ebp)
 805266b:	00 00 00 
 805266e:	8b 00                	mov    (%eax),%eax
 8052670:	c7 85 58 ff ff ff 01 	movl   $0x1,-0xa8(%ebp)
 8052677:	00 00 00 
 805267a:	88 45 80             	mov    %al,-0x80(%ebp)
 805267d:	8b 45 14             	mov    0x14(%ebp),%eax
 8052680:	83 c0 04             	add    $0x4,%eax
 8052683:	89 45 14             	mov    %eax,0x14(%ebp)
 8052686:	8d 45 80             	lea    -0x80(%ebp),%eax
 8052689:	89 85 44 ff ff ff    	mov    %eax,-0xbc(%ebp)
 805268f:	c7 85 5c ff ff ff 00 	movl   $0x0,-0xa4(%ebp)
 8052696:	00 00 00 
 8052699:	e9 d4 fc ff ff       	jmp    8052372 <_vfiprintf_r+0x302>
 805269e:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
 80526a5:	89 f8                	mov    %edi,%eax
 80526a7:	88 85 71 ff ff ff    	mov    %al,-0x8f(%ebp)
 80526ad:	8b 45 14             	mov    0x14(%ebp),%eax
 80526b0:	89 55 10             	mov    %edx,0x10(%ebp)
 80526b3:	0f 85 bd 00 00 00    	jne    8052776 <_vfiprintf_r+0x706>
 80526b9:	f6 85 64 ff ff ff 40 	testb  $0x40,-0x9c(%ebp)
 80526c0:	0f 84 b0 00 00 00    	je     8052776 <_vfiprintf_r+0x706>
 80526c6:	0f bf 08             	movswl (%eax),%ecx
 80526c9:	83 c0 04             	add    $0x4,%eax
 80526cc:	89 45 14             	mov    %eax,0x14(%ebp)
 80526cf:	85 c9                	test   %ecx,%ecx
 80526d1:	0f 88 e6 07 00 00    	js     8052ebd <_vfiprintf_r+0xe4d>
 80526d7:	0f b6 bd 71 ff ff ff 	movzbl -0x8f(%ebp),%edi
 80526de:	ba 01 00 00 00       	mov    $0x1,%edx
 80526e3:	e9 f9 fb ff ff       	jmp    80522e1 <_vfiprintf_r+0x271>
 80526e8:	89 f8                	mov    %edi,%eax
 80526ea:	89 d3                	mov    %edx,%ebx
 80526ec:	84 c0                	test   %al,%al
 80526ee:	b8 20 00 00 00       	mov    $0x20,%eax
 80526f3:	0f 44 f8             	cmove  %eax,%edi
 80526f6:	e9 af fa ff ff       	jmp    80521aa <_vfiprintf_r+0x13a>
 80526fb:	83 8d 64 ff ff ff 01 	orl    $0x1,-0x9c(%ebp)
 8052702:	89 d3                	mov    %edx,%ebx
 8052704:	e9 a1 fa ff ff       	jmp    80521aa <_vfiprintf_r+0x13a>
 8052709:	0f be 02             	movsbl (%edx),%eax
 805270c:	8d 5a 01             	lea    0x1(%edx),%ebx
 805270f:	83 f8 2a             	cmp    $0x2a,%eax
 8052712:	0f 84 be 08 00 00    	je     8052fd6 <_vfiprintf_r+0xf66>
 8052718:	8d 48 d0             	lea    -0x30(%eax),%ecx
 805271b:	31 d2                	xor    %edx,%edx
 805271d:	83 f9 09             	cmp    $0x9,%ecx
 8052720:	0f 87 9f 08 00 00    	ja     8052fc5 <_vfiprintf_r+0xf55>
 8052726:	66 90                	xchg   %ax,%ax
 8052728:	8d 04 92             	lea    (%edx,%edx,4),%eax
 805272b:	83 c3 01             	add    $0x1,%ebx
 805272e:	8d 14 41             	lea    (%ecx,%eax,2),%edx
 8052731:	0f be 43 ff          	movsbl -0x1(%ebx),%eax
 8052735:	8d 48 d0             	lea    -0x30(%eax),%ecx
 8052738:	83 f9 09             	cmp    $0x9,%ecx
 805273b:	76 eb                	jbe    8052728 <_vfiprintf_r+0x6b8>
 805273d:	85 d2                	test   %edx,%edx
 805273f:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
 8052744:	0f 48 d1             	cmovs  %ecx,%edx
 8052747:	89 95 5c ff ff ff    	mov    %edx,-0xa4(%ebp)
 805274d:	89 da                	mov    %ebx,%edx
 805274f:	e9 5c fa ff ff       	jmp    80521b0 <_vfiprintf_r+0x140>
 8052754:	83 8d 64 ff ff ff 10 	orl    $0x10,-0x9c(%ebp)
 805275b:	89 f8                	mov    %edi,%eax
 805275d:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
 8052764:	88 85 71 ff ff ff    	mov    %al,-0x8f(%ebp)
 805276a:	8b 45 14             	mov    0x14(%ebp),%eax
 805276d:	89 55 10             	mov    %edx,0x10(%ebp)
 8052770:	0f 84 43 ff ff ff    	je     80526b9 <_vfiprintf_r+0x649>
 8052776:	8b 08                	mov    (%eax),%ecx
 8052778:	83 c0 04             	add    $0x4,%eax
 805277b:	89 45 14             	mov    %eax,0x14(%ebp)
 805277e:	e9 4c ff ff ff       	jmp    80526cf <_vfiprintf_r+0x65f>
 8052783:	31 db                	xor    %ebx,%ebx
 8052785:	8d 48 d0             	lea    -0x30(%eax),%ecx
 8052788:	8d 04 9b             	lea    (%ebx,%ebx,4),%eax
 805278b:	83 c2 01             	add    $0x1,%edx
 805278e:	8d 1c 41             	lea    (%ecx,%eax,2),%ebx
 8052791:	0f be 42 ff          	movsbl -0x1(%edx),%eax
 8052795:	8d 48 d0             	lea    -0x30(%eax),%ecx
 8052798:	83 f9 09             	cmp    $0x9,%ecx
 805279b:	76 eb                	jbe    8052788 <_vfiprintf_r+0x718>
 805279d:	89 9d 54 ff ff ff    	mov    %ebx,-0xac(%ebp)
 80527a3:	e9 08 fa ff ff       	jmp    80521b0 <_vfiprintf_r+0x140>
 80527a8:	83 8d 64 ff ff ff 10 	orl    $0x10,-0x9c(%ebp)
 80527af:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
 80527b6:	89 55 10             	mov    %edx,0x10(%ebp)
 80527b9:	8b 45 14             	mov    0x14(%ebp),%eax
 80527bc:	0f 84 0d fe ff ff    	je     80525cf <_vfiprintf_r+0x55f>
 80527c2:	8b 08                	mov    (%eax),%ecx
 80527c4:	83 c0 04             	add    $0x4,%eax
 80527c7:	31 d2                	xor    %edx,%edx
 80527c9:	89 45 14             	mov    %eax,0x14(%ebp)
 80527cc:	e9 07 fb ff ff       	jmp    80522d8 <_vfiprintf_r+0x268>
 80527d1:	89 f9                	mov    %edi,%ecx
 80527d3:	85 c0                	test   %eax,%eax
 80527d5:	89 55 10             	mov    %edx,0x10(%ebp)
 80527d8:	88 8d 71 ff ff ff    	mov    %cl,-0x8f(%ebp)
 80527de:	0f 84 95 01 00 00    	je     8052979 <_vfiprintf_r+0x909>
 80527e4:	88 45 80             	mov    %al,-0x80(%ebp)
 80527e7:	8d 45 80             	lea    -0x80(%ebp),%eax
 80527ea:	c6 85 71 ff ff ff 00 	movb   $0x0,-0x8f(%ebp)
 80527f1:	c7 85 60 ff ff ff 01 	movl   $0x1,-0xa0(%ebp)
 80527f8:	00 00 00 
 80527fb:	c7 85 58 ff ff ff 01 	movl   $0x1,-0xa8(%ebp)
 8052802:	00 00 00 
 8052805:	89 85 44 ff ff ff    	mov    %eax,-0xbc(%ebp)
 805280b:	e9 7f fe ff ff       	jmp    805268f <_vfiprintf_r+0x61f>
 8052810:	8b 45 14             	mov    0x14(%ebp),%eax
 8052813:	8b bd 50 ff ff ff    	mov    -0xb0(%ebp),%edi
 8052819:	8b 00                	mov    (%eax),%eax
 805281b:	89 38                	mov    %edi,(%eax)
 805281d:	8b 45 14             	mov    0x14(%ebp),%eax
 8052820:	83 c0 04             	add    $0x4,%eax
 8052823:	89 45 14             	mov    %eax,0x14(%ebp)
 8052826:	e9 e4 f8 ff ff       	jmp    805210f <_vfiprintf_r+0x9f>
 805282b:	90                   	nop
 805282c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8052830:	8b 55 0c             	mov    0xc(%ebp),%edx
 8052833:	8d 8d 74 ff ff ff    	lea    -0x8c(%ebp),%ecx
 8052839:	8b 45 08             	mov    0x8(%ebp),%eax
 805283c:	e8 1f f7 ff ff       	call   8051f60 <__sprint_r.part.0>
 8052841:	85 c0                	test   %eax,%eax
 8052843:	0f 85 4f 01 00 00    	jne    8052998 <_vfiprintf_r+0x928>
 8052849:	8b bd 78 ff ff ff    	mov    -0x88(%ebp),%edi
 805284f:	8d 75 a8             	lea    -0x58(%ebp),%esi
 8052852:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
 8052858:	8d 47 01             	lea    0x1(%edi),%eax
 805285b:	e9 88 fb ff ff       	jmp    80523e8 <_vfiprintf_r+0x378>
 8052860:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 8052866:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
 805286c:	8d 48 01             	lea    0x1(%eax),%ecx
 805286f:	80 bd 71 ff ff ff 00 	cmpb   $0x0,-0x8f(%ebp)
 8052876:	74 2f                	je     80528a7 <_vfiprintf_r+0x837>
 8052878:	83 c2 01             	add    $0x1,%edx
 805287b:	83 f9 07             	cmp    $0x7,%ecx
 805287e:	8d 85 71 ff ff ff    	lea    -0x8f(%ebp),%eax
 8052884:	89 06                	mov    %eax,(%esi)
 8052886:	c7 46 04 01 00 00 00 	movl   $0x1,0x4(%esi)
 805288d:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
 8052893:	89 8d 78 ff ff ff    	mov    %ecx,-0x88(%ebp)
 8052899:	0f 8f 41 04 00 00    	jg     8052ce0 <_vfiprintf_r+0xc70>
 805289f:	89 c8                	mov    %ecx,%eax
 80528a1:	83 c6 08             	add    $0x8,%esi
 80528a4:	83 c1 01             	add    $0x1,%ecx
 80528a7:	8b 9d 4c ff ff ff    	mov    -0xb4(%ebp),%ebx
 80528ad:	85 db                	test   %ebx,%ebx
 80528af:	74 2f                	je     80528e0 <_vfiprintf_r+0x870>
 80528b1:	83 c2 02             	add    $0x2,%edx
 80528b4:	83 f9 07             	cmp    $0x7,%ecx
 80528b7:	8d 85 72 ff ff ff    	lea    -0x8e(%ebp),%eax
 80528bd:	89 06                	mov    %eax,(%esi)
 80528bf:	c7 46 04 02 00 00 00 	movl   $0x2,0x4(%esi)
 80528c6:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
 80528cc:	89 8d 78 ff ff ff    	mov    %ecx,-0x88(%ebp)
 80528d2:	0f 8f 20 04 00 00    	jg     8052cf8 <_vfiprintf_r+0xc88>
 80528d8:	89 c8                	mov    %ecx,%eax
 80528da:	83 c6 08             	add    $0x8,%esi
 80528dd:	83 c1 01             	add    $0x1,%ecx
 80528e0:	81 bd 48 ff ff ff 80 	cmpl   $0x80,-0xb8(%ebp)
 80528e7:	00 00 00 
 80528ea:	0f 84 28 03 00 00    	je     8052c18 <_vfiprintf_r+0xba8>
 80528f0:	8b 9d 5c ff ff ff    	mov    -0xa4(%ebp),%ebx
 80528f6:	2b 9d 58 ff ff ff    	sub    -0xa8(%ebp),%ebx
 80528fc:	85 db                	test   %ebx,%ebx
 80528fe:	7f 13                	jg     8052913 <_vfiprintf_r+0x8a3>
 8052900:	e9 db 00 00 00       	jmp    80529e0 <_vfiprintf_r+0x970>
 8052905:	8d 76 00             	lea    0x0(%esi),%esi
 8052908:	8d 48 02             	lea    0x2(%eax),%ecx
 805290b:	83 c6 08             	add    $0x8,%esi
 805290e:	89 f8                	mov    %edi,%eax
 8052910:	83 eb 10             	sub    $0x10,%ebx
 8052913:	83 fb 10             	cmp    $0x10,%ebx
 8052916:	c7 06 b0 50 05 08    	movl   $0x80550b0,(%esi)
 805291c:	0f 8e 4e 02 00 00    	jle    8052b70 <_vfiprintf_r+0xb00>
 8052922:	8d 78 01             	lea    0x1(%eax),%edi
 8052925:	83 c2 10             	add    $0x10,%edx
 8052928:	83 ff 07             	cmp    $0x7,%edi
 805292b:	c7 46 04 10 00 00 00 	movl   $0x10,0x4(%esi)
 8052932:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
 8052938:	89 bd 78 ff ff ff    	mov    %edi,-0x88(%ebp)
 805293e:	7e c8                	jle    8052908 <_vfiprintf_r+0x898>
 8052940:	85 d2                	test   %edx,%edx
 8052942:	75 0c                	jne    8052950 <_vfiprintf_r+0x8e0>
 8052944:	b9 01 00 00 00       	mov    $0x1,%ecx
 8052949:	31 c0                	xor    %eax,%eax
 805294b:	8d 75 a8             	lea    -0x58(%ebp),%esi
 805294e:	eb c0                	jmp    8052910 <_vfiprintf_r+0x8a0>
 8052950:	8b 55 0c             	mov    0xc(%ebp),%edx
 8052953:	8d 8d 74 ff ff ff    	lea    -0x8c(%ebp),%ecx
 8052959:	8b 45 08             	mov    0x8(%ebp),%eax
 805295c:	e8 ff f5 ff ff       	call   8051f60 <__sprint_r.part.0>
 8052961:	85 c0                	test   %eax,%eax
 8052963:	75 33                	jne    8052998 <_vfiprintf_r+0x928>
 8052965:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 805296b:	8d 75 a8             	lea    -0x58(%ebp),%esi
 805296e:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
 8052974:	8d 48 01             	lea    0x1(%eax),%ecx
 8052977:	eb 97                	jmp    8052910 <_vfiprintf_r+0x8a0>
 8052979:	8b 85 7c ff ff ff    	mov    -0x84(%ebp),%eax
 805297f:	85 c0                	test   %eax,%eax
 8052981:	74 15                	je     8052998 <_vfiprintf_r+0x928>
 8052983:	8b 55 0c             	mov    0xc(%ebp),%edx
 8052986:	8d 8d 74 ff ff ff    	lea    -0x8c(%ebp),%ecx
 805298c:	8b 45 08             	mov    0x8(%ebp),%eax
 805298f:	e8 cc f5 ff ff       	call   8051f60 <__sprint_r.part.0>
 8052994:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8052998:	8b 45 0c             	mov    0xc(%ebp),%eax
 805299b:	f6 40 0c 40          	testb  $0x40,0xc(%eax)
 805299f:	0f 85 a3 f8 ff ff    	jne    8052248 <_vfiprintf_r+0x1d8>
 80529a5:	8b 85 50 ff ff ff    	mov    -0xb0(%ebp),%eax
 80529ab:	81 c4 cc 00 00 00    	add    $0xcc,%esp
 80529b1:	5b                   	pop    %ebx
 80529b2:	5e                   	pop    %esi
 80529b3:	5f                   	pop    %edi
 80529b4:	5d                   	pop    %ebp
 80529b5:	c3                   	ret    
 80529b6:	8b 55 0c             	mov    0xc(%ebp),%edx
 80529b9:	8d 8d 74 ff ff ff    	lea    -0x8c(%ebp),%ecx
 80529bf:	8b 45 08             	mov    0x8(%ebp),%eax
 80529c2:	e8 99 f5 ff ff       	call   8051f60 <__sprint_r.part.0>
 80529c7:	85 c0                	test   %eax,%eax
 80529c9:	75 cd                	jne    8052998 <_vfiprintf_r+0x928>
 80529cb:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 80529d1:	8d 75 a8             	lea    -0x58(%ebp),%esi
 80529d4:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
 80529da:	8d 48 01             	lea    0x1(%eax),%ecx
 80529dd:	8d 76 00             	lea    0x0(%esi),%esi
 80529e0:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
 80529e6:	89 8d 78 ff ff ff    	mov    %ecx,-0x88(%ebp)
 80529ec:	89 06                	mov    %eax,(%esi)
 80529ee:	8b 85 58 ff ff ff    	mov    -0xa8(%ebp),%eax
 80529f4:	01 c2                	add    %eax,%edx
 80529f6:	83 f9 07             	cmp    $0x7,%ecx
 80529f9:	89 46 04             	mov    %eax,0x4(%esi)
 80529fc:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
 8052a02:	0f 8e ef 01 00 00    	jle    8052bf7 <_vfiprintf_r+0xb87>
 8052a08:	85 d2                	test   %edx,%edx
 8052a0a:	0f 85 81 03 00 00    	jne    8052d91 <_vfiprintf_r+0xd21>
 8052a10:	c7 85 78 ff ff ff 00 	movl   $0x0,-0x88(%ebp)
 8052a17:	00 00 00 
 8052a1a:	8d 75 a8             	lea    -0x58(%ebp),%esi
 8052a1d:	f6 85 64 ff ff ff 04 	testb  $0x4,-0x9c(%ebp)
 8052a24:	0f 84 ce 00 00 00    	je     8052af8 <_vfiprintf_r+0xa88>
 8052a2a:	8b 9d 54 ff ff ff    	mov    -0xac(%ebp),%ebx
 8052a30:	2b 9d 60 ff ff ff    	sub    -0xa0(%ebp),%ebx
 8052a36:	85 db                	test   %ebx,%ebx
 8052a38:	0f 8e ba 00 00 00    	jle    8052af8 <_vfiprintf_r+0xa88>
 8052a3e:	8b 8d 78 ff ff ff    	mov    -0x88(%ebp),%ecx
 8052a44:	83 fb 10             	cmp    $0x10,%ebx
 8052a47:	8d 79 01             	lea    0x1(%ecx),%edi
 8052a4a:	7f 14                	jg     8052a60 <_vfiprintf_r+0x9f0>
 8052a4c:	eb 50                	jmp    8052a9e <_vfiprintf_r+0xa2e>
 8052a4e:	66 90                	xchg   %ax,%ax
 8052a50:	8d 79 02             	lea    0x2(%ecx),%edi
 8052a53:	83 c6 08             	add    $0x8,%esi
 8052a56:	89 c1                	mov    %eax,%ecx
 8052a58:	83 eb 10             	sub    $0x10,%ebx
 8052a5b:	83 fb 10             	cmp    $0x10,%ebx
 8052a5e:	7e 3e                	jle    8052a9e <_vfiprintf_r+0xa2e>
 8052a60:	8d 41 01             	lea    0x1(%ecx),%eax
 8052a63:	83 c2 10             	add    $0x10,%edx
 8052a66:	83 f8 07             	cmp    $0x7,%eax
 8052a69:	c7 06 c0 50 05 08    	movl   $0x80550c0,(%esi)
 8052a6f:	c7 46 04 10 00 00 00 	movl   $0x10,0x4(%esi)
 8052a76:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
 8052a7c:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
 8052a82:	7e cc                	jle    8052a50 <_vfiprintf_r+0x9e0>
 8052a84:	85 d2                	test   %edx,%edx
 8052a86:	0f 85 b4 00 00 00    	jne    8052b40 <_vfiprintf_r+0xad0>
 8052a8c:	83 eb 10             	sub    $0x10,%ebx
 8052a8f:	31 c9                	xor    %ecx,%ecx
 8052a91:	83 fb 10             	cmp    $0x10,%ebx
 8052a94:	bf 01 00 00 00       	mov    $0x1,%edi
 8052a99:	8d 75 a8             	lea    -0x58(%ebp),%esi
 8052a9c:	7f c2                	jg     8052a60 <_vfiprintf_r+0x9f0>
 8052a9e:	01 da                	add    %ebx,%edx
 8052aa0:	83 ff 07             	cmp    $0x7,%edi
 8052aa3:	c7 06 c0 50 05 08    	movl   $0x80550c0,(%esi)
 8052aa9:	89 5e 04             	mov    %ebx,0x4(%esi)
 8052aac:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
 8052ab2:	89 bd 78 ff ff ff    	mov    %edi,-0x88(%ebp)
 8052ab8:	7e 3e                	jle    8052af8 <_vfiprintf_r+0xa88>
 8052aba:	85 d2                	test   %edx,%edx
 8052abc:	75 19                	jne    8052ad7 <_vfiprintf_r+0xa67>
 8052abe:	8b 85 54 ff ff ff    	mov    -0xac(%ebp),%eax
 8052ac4:	8b bd 60 ff ff ff    	mov    -0xa0(%ebp),%edi
 8052aca:	39 c7                	cmp    %eax,%edi
 8052acc:	0f 4d c7             	cmovge %edi,%eax
 8052acf:	01 85 50 ff ff ff    	add    %eax,-0xb0(%ebp)
 8052ad5:	eb 55                	jmp    8052b2c <_vfiprintf_r+0xabc>
 8052ad7:	8b 55 0c             	mov    0xc(%ebp),%edx
 8052ada:	8d 8d 74 ff ff ff    	lea    -0x8c(%ebp),%ecx
 8052ae0:	8b 45 08             	mov    0x8(%ebp),%eax
 8052ae3:	e8 78 f4 ff ff       	call   8051f60 <__sprint_r.part.0>
 8052ae8:	85 c0                	test   %eax,%eax
 8052aea:	0f 85 a8 fe ff ff    	jne    8052998 <_vfiprintf_r+0x928>
 8052af0:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
 8052af6:	66 90                	xchg   %ax,%ax
 8052af8:	8b 85 54 ff ff ff    	mov    -0xac(%ebp),%eax
 8052afe:	8b bd 60 ff ff ff    	mov    -0xa0(%ebp),%edi
 8052b04:	39 c7                	cmp    %eax,%edi
 8052b06:	0f 4d c7             	cmovge %edi,%eax
 8052b09:	01 85 50 ff ff ff    	add    %eax,-0xb0(%ebp)
 8052b0f:	85 d2                	test   %edx,%edx
 8052b11:	74 19                	je     8052b2c <_vfiprintf_r+0xabc>
 8052b13:	8b 55 0c             	mov    0xc(%ebp),%edx
 8052b16:	8d 8d 74 ff ff ff    	lea    -0x8c(%ebp),%ecx
 8052b1c:	8b 45 08             	mov    0x8(%ebp),%eax
 8052b1f:	e8 3c f4 ff ff       	call   8051f60 <__sprint_r.part.0>
 8052b24:	85 c0                	test   %eax,%eax
 8052b26:	0f 85 6c fe ff ff    	jne    8052998 <_vfiprintf_r+0x928>
 8052b2c:	c7 85 78 ff ff ff 00 	movl   $0x0,-0x88(%ebp)
 8052b33:	00 00 00 
 8052b36:	8d 75 a8             	lea    -0x58(%ebp),%esi
 8052b39:	e9 d1 f5 ff ff       	jmp    805210f <_vfiprintf_r+0x9f>
 8052b3e:	66 90                	xchg   %ax,%ax
 8052b40:	8b 55 0c             	mov    0xc(%ebp),%edx
 8052b43:	8d 8d 74 ff ff ff    	lea    -0x8c(%ebp),%ecx
 8052b49:	8b 45 08             	mov    0x8(%ebp),%eax
 8052b4c:	e8 0f f4 ff ff       	call   8051f60 <__sprint_r.part.0>
 8052b51:	85 c0                	test   %eax,%eax
 8052b53:	0f 85 3f fe ff ff    	jne    8052998 <_vfiprintf_r+0x928>
 8052b59:	8b 8d 78 ff ff ff    	mov    -0x88(%ebp),%ecx
 8052b5f:	8d 75 a8             	lea    -0x58(%ebp),%esi
 8052b62:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
 8052b68:	8d 79 01             	lea    0x1(%ecx),%edi
 8052b6b:	e9 e8 fe ff ff       	jmp    8052a58 <_vfiprintf_r+0x9e8>
 8052b70:	01 da                	add    %ebx,%edx
 8052b72:	83 f9 07             	cmp    $0x7,%ecx
 8052b75:	89 5e 04             	mov    %ebx,0x4(%esi)
 8052b78:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
 8052b7e:	89 8d 78 ff ff ff    	mov    %ecx,-0x88(%ebp)
 8052b84:	7f 42                	jg     8052bc8 <_vfiprintf_r+0xb58>
 8052b86:	83 c6 08             	add    $0x8,%esi
 8052b89:	83 c1 01             	add    $0x1,%ecx
 8052b8c:	e9 4f fe ff ff       	jmp    80529e0 <_vfiprintf_r+0x970>
 8052b91:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 8052b98:	84 d2                	test   %dl,%dl
 8052b9a:	75 64                	jne    8052c00 <_vfiprintf_r+0xb90>
 8052b9c:	f6 85 64 ff ff ff 01 	testb  $0x1,-0x9c(%ebp)
 8052ba3:	74 5b                	je     8052c00 <_vfiprintf_r+0xb90>
 8052ba5:	8b 85 3c ff ff ff    	mov    -0xc4(%ebp),%eax
 8052bab:	c6 45 a7 30          	movb   $0x30,-0x59(%ebp)
 8052baf:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
 8052bb5:	8d 45 a7             	lea    -0x59(%ebp),%eax
 8052bb8:	89 85 44 ff ff ff    	mov    %eax,-0xbc(%ebp)
 8052bbe:	e9 8d f7 ff ff       	jmp    8052350 <_vfiprintf_r+0x2e0>
 8052bc3:	90                   	nop
 8052bc4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8052bc8:	85 d2                	test   %edx,%edx
 8052bca:	0f 85 e6 fd ff ff    	jne    80529b6 <_vfiprintf_r+0x946>
 8052bd0:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
 8052bd6:	8d 75 a8             	lea    -0x58(%ebp),%esi
 8052bd9:	c7 85 78 ff ff ff 01 	movl   $0x1,-0x88(%ebp)
 8052be0:	00 00 00 
 8052be3:	89 45 a8             	mov    %eax,-0x58(%ebp)
 8052be6:	8b 85 58 ff ff ff    	mov    -0xa8(%ebp),%eax
 8052bec:	89 45 ac             	mov    %eax,-0x54(%ebp)
 8052bef:	89 c2                	mov    %eax,%edx
 8052bf1:	89 85 7c ff ff ff    	mov    %eax,-0x84(%ebp)
 8052bf7:	83 c6 08             	add    $0x8,%esi
 8052bfa:	e9 1e fe ff ff       	jmp    8052a1d <_vfiprintf_r+0x9ad>
 8052bff:	90                   	nop
 8052c00:	8d 45 a8             	lea    -0x58(%ebp),%eax
 8052c03:	c7 85 58 ff ff ff 00 	movl   $0x0,-0xa8(%ebp)
 8052c0a:	00 00 00 
 8052c0d:	89 85 44 ff ff ff    	mov    %eax,-0xbc(%ebp)
 8052c13:	e9 38 f7 ff ff       	jmp    8052350 <_vfiprintf_r+0x2e0>
 8052c18:	8b bd 54 ff ff ff    	mov    -0xac(%ebp),%edi
 8052c1e:	2b bd 60 ff ff ff    	sub    -0xa0(%ebp),%edi
 8052c24:	85 ff                	test   %edi,%edi
 8052c26:	0f 8e c4 fc ff ff    	jle    80528f0 <_vfiprintf_r+0x880>
 8052c2c:	83 ff 10             	cmp    $0x10,%edi
 8052c2f:	7f 17                	jg     8052c48 <_vfiprintf_r+0xbd8>
 8052c31:	e9 88 03 00 00       	jmp    8052fbe <_vfiprintf_r+0xf4e>
 8052c36:	66 90                	xchg   %ax,%ax
 8052c38:	8d 58 02             	lea    0x2(%eax),%ebx
 8052c3b:	83 c6 08             	add    $0x8,%esi
 8052c3e:	89 c8                	mov    %ecx,%eax
 8052c40:	83 ef 10             	sub    $0x10,%edi
 8052c43:	83 ff 10             	cmp    $0x10,%edi
 8052c46:	7e 3a                	jle    8052c82 <_vfiprintf_r+0xc12>
 8052c48:	8d 48 01             	lea    0x1(%eax),%ecx
 8052c4b:	83 c2 10             	add    $0x10,%edx
 8052c4e:	83 f9 07             	cmp    $0x7,%ecx
 8052c51:	c7 06 b0 50 05 08    	movl   $0x80550b0,(%esi)
 8052c57:	c7 46 04 10 00 00 00 	movl   $0x10,0x4(%esi)
 8052c5e:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
 8052c64:	89 8d 78 ff ff ff    	mov    %ecx,-0x88(%ebp)
 8052c6a:	7e cc                	jle    8052c38 <_vfiprintf_r+0xbc8>
 8052c6c:	85 d2                	test   %edx,%edx
 8052c6e:	75 40                	jne    8052cb0 <_vfiprintf_r+0xc40>
 8052c70:	83 ef 10             	sub    $0x10,%edi
 8052c73:	31 c0                	xor    %eax,%eax
 8052c75:	83 ff 10             	cmp    $0x10,%edi
 8052c78:	bb 01 00 00 00       	mov    $0x1,%ebx
 8052c7d:	8d 75 a8             	lea    -0x58(%ebp),%esi
 8052c80:	7f c6                	jg     8052c48 <_vfiprintf_r+0xbd8>
 8052c82:	01 fa                	add    %edi,%edx
 8052c84:	83 fb 07             	cmp    $0x7,%ebx
 8052c87:	c7 06 b0 50 05 08    	movl   $0x80550b0,(%esi)
 8052c8d:	89 7e 04             	mov    %edi,0x4(%esi)
 8052c90:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
 8052c96:	89 9d 78 ff ff ff    	mov    %ebx,-0x88(%ebp)
 8052c9c:	0f 8f 97 01 00 00    	jg     8052e39 <_vfiprintf_r+0xdc9>
 8052ca2:	83 c6 08             	add    $0x8,%esi
 8052ca5:	89 d8                	mov    %ebx,%eax
 8052ca7:	8d 4b 01             	lea    0x1(%ebx),%ecx
 8052caa:	e9 41 fc ff ff       	jmp    80528f0 <_vfiprintf_r+0x880>
 8052caf:	90                   	nop
 8052cb0:	8b 55 0c             	mov    0xc(%ebp),%edx
 8052cb3:	8d 8d 74 ff ff ff    	lea    -0x8c(%ebp),%ecx
 8052cb9:	8b 45 08             	mov    0x8(%ebp),%eax
 8052cbc:	e8 9f f2 ff ff       	call   8051f60 <__sprint_r.part.0>
 8052cc1:	85 c0                	test   %eax,%eax
 8052cc3:	0f 85 cf fc ff ff    	jne    8052998 <_vfiprintf_r+0x928>
 8052cc9:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 8052ccf:	8d 75 a8             	lea    -0x58(%ebp),%esi
 8052cd2:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
 8052cd8:	8d 58 01             	lea    0x1(%eax),%ebx
 8052cdb:	e9 60 ff ff ff       	jmp    8052c40 <_vfiprintf_r+0xbd0>
 8052ce0:	85 d2                	test   %edx,%edx
 8052ce2:	0f 85 f1 00 00 00    	jne    8052dd9 <_vfiprintf_r+0xd69>
 8052ce8:	b9 01 00 00 00       	mov    $0x1,%ecx
 8052ced:	31 c0                	xor    %eax,%eax
 8052cef:	8d 75 a8             	lea    -0x58(%ebp),%esi
 8052cf2:	e9 b0 fb ff ff       	jmp    80528a7 <_vfiprintf_r+0x837>
 8052cf7:	90                   	nop
 8052cf8:	85 d2                	test   %edx,%edx
 8052cfa:	0f 85 09 01 00 00    	jne    8052e09 <_vfiprintf_r+0xd99>
 8052d00:	b9 01 00 00 00       	mov    $0x1,%ecx
 8052d05:	31 c0                	xor    %eax,%eax
 8052d07:	8d 75 a8             	lea    -0x58(%ebp),%esi
 8052d0a:	e9 d1 fb ff ff       	jmp    80528e0 <_vfiprintf_r+0x870>
 8052d0f:	90                   	nop
 8052d10:	89 c2                	mov    %eax,%edx
 8052d12:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 8052d18:	89 c8                	mov    %ecx,%eax
 8052d1a:	83 ea 01             	sub    $0x1,%edx
 8052d1d:	83 e0 07             	and    $0x7,%eax
 8052d20:	c1 e9 03             	shr    $0x3,%ecx
 8052d23:	83 c0 30             	add    $0x30,%eax
 8052d26:	85 c9                	test   %ecx,%ecx
 8052d28:	88 02                	mov    %al,(%edx)
 8052d2a:	75 ec                	jne    8052d18 <_vfiprintf_r+0xca8>
 8052d2c:	f6 85 64 ff ff ff 01 	testb  $0x1,-0x9c(%ebp)
 8052d33:	89 95 44 ff ff ff    	mov    %edx,-0xbc(%ebp)
 8052d39:	0f 85 5b 01 00 00    	jne    8052e9a <_vfiprintf_r+0xe2a>
 8052d3f:	8d 45 a8             	lea    -0x58(%ebp),%eax
 8052d42:	29 d0                	sub    %edx,%eax
 8052d44:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
 8052d4a:	e9 01 f6 ff ff       	jmp    8052350 <_vfiprintf_r+0x2e0>
 8052d4f:	90                   	nop
 8052d50:	85 d2                	test   %edx,%edx
 8052d52:	0f 85 7d 01 00 00    	jne    8052ed5 <_vfiprintf_r+0xe65>
 8052d58:	31 c0                	xor    %eax,%eax
 8052d5a:	b9 01 00 00 00       	mov    $0x1,%ecx
 8052d5f:	8d 75 a8             	lea    -0x58(%ebp),%esi
 8052d62:	e9 08 fb ff ff       	jmp    805286f <_vfiprintf_r+0x7ff>
 8052d67:	90                   	nop
 8052d68:	83 f9 09             	cmp    $0x9,%ecx
 8052d6b:	0f 87 df 00 00 00    	ja     8052e50 <_vfiprintf_r+0xde0>
 8052d71:	8b 85 3c ff ff ff    	mov    -0xc4(%ebp),%eax
 8052d77:	83 c1 30             	add    $0x30,%ecx
 8052d7a:	88 4d a7             	mov    %cl,-0x59(%ebp)
 8052d7d:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
 8052d83:	8d 45 a7             	lea    -0x59(%ebp),%eax
 8052d86:	89 85 44 ff ff ff    	mov    %eax,-0xbc(%ebp)
 8052d8c:	e9 bf f5 ff ff       	jmp    8052350 <_vfiprintf_r+0x2e0>
 8052d91:	8b 55 0c             	mov    0xc(%ebp),%edx
 8052d94:	8d 8d 74 ff ff ff    	lea    -0x8c(%ebp),%ecx
 8052d9a:	8b 45 08             	mov    0x8(%ebp),%eax
 8052d9d:	e8 be f1 ff ff       	call   8051f60 <__sprint_r.part.0>
 8052da2:	85 c0                	test   %eax,%eax
 8052da4:	0f 85 ee fb ff ff    	jne    8052998 <_vfiprintf_r+0x928>
 8052daa:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
 8052db0:	8d 75 a8             	lea    -0x58(%ebp),%esi
 8052db3:	e9 65 fc ff ff       	jmp    8052a1d <_vfiprintf_r+0x9ad>
 8052db8:	8b 55 0c             	mov    0xc(%ebp),%edx
 8052dbb:	8d 8d 74 ff ff ff    	lea    -0x8c(%ebp),%ecx
 8052dc1:	8b 45 08             	mov    0x8(%ebp),%eax
 8052dc4:	e8 97 f1 ff ff       	call   8051f60 <__sprint_r.part.0>
 8052dc9:	85 c0                	test   %eax,%eax
 8052dcb:	0f 85 c7 fb ff ff    	jne    8052998 <_vfiprintf_r+0x928>
 8052dd1:	8d 75 a8             	lea    -0x58(%ebp),%esi
 8052dd4:	e9 98 f3 ff ff       	jmp    8052171 <_vfiprintf_r+0x101>
 8052dd9:	8b 55 0c             	mov    0xc(%ebp),%edx
 8052ddc:	8d 8d 74 ff ff ff    	lea    -0x8c(%ebp),%ecx
 8052de2:	8b 45 08             	mov    0x8(%ebp),%eax
 8052de5:	e8 76 f1 ff ff       	call   8051f60 <__sprint_r.part.0>
 8052dea:	85 c0                	test   %eax,%eax
 8052dec:	0f 85 a6 fb ff ff    	jne    8052998 <_vfiprintf_r+0x928>
 8052df2:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 8052df8:	8d 75 a8             	lea    -0x58(%ebp),%esi
 8052dfb:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
 8052e01:	8d 48 01             	lea    0x1(%eax),%ecx
 8052e04:	e9 9e fa ff ff       	jmp    80528a7 <_vfiprintf_r+0x837>
 8052e09:	8b 55 0c             	mov    0xc(%ebp),%edx
 8052e0c:	8d 8d 74 ff ff ff    	lea    -0x8c(%ebp),%ecx
 8052e12:	8b 45 08             	mov    0x8(%ebp),%eax
 8052e15:	e8 46 f1 ff ff       	call   8051f60 <__sprint_r.part.0>
 8052e1a:	85 c0                	test   %eax,%eax
 8052e1c:	0f 85 76 fb ff ff    	jne    8052998 <_vfiprintf_r+0x928>
 8052e22:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 8052e28:	8d 75 a8             	lea    -0x58(%ebp),%esi
 8052e2b:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
 8052e31:	8d 48 01             	lea    0x1(%eax),%ecx
 8052e34:	e9 a7 fa ff ff       	jmp    80528e0 <_vfiprintf_r+0x870>
 8052e39:	85 d2                	test   %edx,%edx
 8052e3b:	0f 85 f1 00 00 00    	jne    8052f32 <_vfiprintf_r+0xec2>
 8052e41:	b9 01 00 00 00       	mov    $0x1,%ecx
 8052e46:	31 c0                	xor    %eax,%eax
 8052e48:	8d 75 a8             	lea    -0x58(%ebp),%esi
 8052e4b:	e9 a0 fa ff ff       	jmp    80528f0 <_vfiprintf_r+0x880>
 8052e50:	8d 45 a8             	lea    -0x58(%ebp),%eax
 8052e53:	bb cd cc cc cc       	mov    $0xcccccccd,%ebx
 8052e58:	89 b5 60 ff ff ff    	mov    %esi,-0xa0(%ebp)
 8052e5e:	89 c6                	mov    %eax,%esi
 8052e60:	89 c8                	mov    %ecx,%eax
 8052e62:	83 ee 01             	sub    $0x1,%esi
 8052e65:	f7 e3                	mul    %ebx
 8052e67:	c1 ea 03             	shr    $0x3,%edx
 8052e6a:	8d 04 92             	lea    (%edx,%edx,4),%eax
 8052e6d:	01 c0                	add    %eax,%eax
 8052e6f:	29 c1                	sub    %eax,%ecx
 8052e71:	83 c1 30             	add    $0x30,%ecx
 8052e74:	85 d2                	test   %edx,%edx
 8052e76:	88 0e                	mov    %cl,(%esi)
 8052e78:	89 d1                	mov    %edx,%ecx
 8052e7a:	75 e4                	jne    8052e60 <_vfiprintf_r+0xdf0>
 8052e7c:	89 f1                	mov    %esi,%ecx
 8052e7e:	8d 45 a8             	lea    -0x58(%ebp),%eax
 8052e81:	29 c8                	sub    %ecx,%eax
 8052e83:	89 b5 44 ff ff ff    	mov    %esi,-0xbc(%ebp)
 8052e89:	8b b5 60 ff ff ff    	mov    -0xa0(%ebp),%esi
 8052e8f:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
 8052e95:	e9 b6 f4 ff ff       	jmp    8052350 <_vfiprintf_r+0x2e0>
 8052e9a:	3c 30                	cmp    $0x30,%al
 8052e9c:	74 0b                	je     8052ea9 <_vfiprintf_r+0xe39>
 8052e9e:	83 ad 44 ff ff ff 01 	subl   $0x1,-0xbc(%ebp)
 8052ea5:	c6 42 ff 30          	movb   $0x30,-0x1(%edx)
 8052ea9:	8d 45 a8             	lea    -0x58(%ebp),%eax
 8052eac:	2b 85 44 ff ff ff    	sub    -0xbc(%ebp),%eax
 8052eb2:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
 8052eb8:	e9 93 f4 ff ff       	jmp    8052350 <_vfiprintf_r+0x2e0>
 8052ebd:	f7 d9                	neg    %ecx
 8052ebf:	bf 2d 00 00 00       	mov    $0x2d,%edi
 8052ec4:	c6 85 71 ff ff ff 2d 	movb   $0x2d,-0x8f(%ebp)
 8052ecb:	ba 01 00 00 00       	mov    $0x1,%edx
 8052ed0:	e9 0c f4 ff ff       	jmp    80522e1 <_vfiprintf_r+0x271>
 8052ed5:	8b 55 0c             	mov    0xc(%ebp),%edx
 8052ed8:	8d 8d 74 ff ff ff    	lea    -0x8c(%ebp),%ecx
 8052ede:	8b 45 08             	mov    0x8(%ebp),%eax
 8052ee1:	e8 7a f0 ff ff       	call   8051f60 <__sprint_r.part.0>
 8052ee6:	85 c0                	test   %eax,%eax
 8052ee8:	0f 85 aa fa ff ff    	jne    8052998 <_vfiprintf_r+0x928>
 8052eee:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 8052ef4:	8d 75 a8             	lea    -0x58(%ebp),%esi
 8052ef7:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
 8052efd:	8d 48 01             	lea    0x1(%eax),%ecx
 8052f00:	e9 6a f9 ff ff       	jmp    805286f <_vfiprintf_r+0x7ff>
 8052f05:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
 8052f0b:	89 04 24             	mov    %eax,(%esp)
 8052f0e:	e8 4d 65 ff ff       	call   8049460 <strlen>
 8052f13:	0f b6 bd 71 ff ff ff 	movzbl -0x8f(%ebp),%edi
 8052f1a:	89 5d 14             	mov    %ebx,0x14(%ebp)
 8052f1d:	c7 85 5c ff ff ff 00 	movl   $0x0,-0xa4(%ebp)
 8052f24:	00 00 00 
 8052f27:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
 8052f2d:	e9 1e f4 ff ff       	jmp    8052350 <_vfiprintf_r+0x2e0>
 8052f32:	8b 55 0c             	mov    0xc(%ebp),%edx
 8052f35:	8d 8d 74 ff ff ff    	lea    -0x8c(%ebp),%ecx
 8052f3b:	8b 45 08             	mov    0x8(%ebp),%eax
 8052f3e:	e8 1d f0 ff ff       	call   8051f60 <__sprint_r.part.0>
 8052f43:	85 c0                	test   %eax,%eax
 8052f45:	0f 85 4d fa ff ff    	jne    8052998 <_vfiprintf_r+0x928>
 8052f4b:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 8052f51:	8d 75 a8             	lea    -0x58(%ebp),%esi
 8052f54:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
 8052f5a:	8d 48 01             	lea    0x1(%eax),%ecx
 8052f5d:	e9 8e f9 ff ff       	jmp    80528f0 <_vfiprintf_r+0x880>
 8052f62:	8b bd 5c ff ff ff    	mov    -0xa4(%ebp),%edi
 8052f68:	b0 06                	mov    $0x6,%al
 8052f6a:	89 5d 14             	mov    %ebx,0x14(%ebp)
 8052f6d:	83 ff 06             	cmp    $0x6,%edi
 8052f70:	0f 46 c7             	cmovbe %edi,%eax
 8052f73:	8b bd 44 ff ff ff    	mov    -0xbc(%ebp),%edi
 8052f79:	85 c0                	test   %eax,%eax
 8052f7b:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
 8052f81:	c7 85 44 ff ff ff fe 	movl   $0x80548fe,-0xbc(%ebp)
 8052f88:	48 05 08 
 8052f8b:	0f 49 f8             	cmovns %eax,%edi
 8052f8e:	89 bd 60 ff ff ff    	mov    %edi,-0xa0(%ebp)
 8052f94:	e9 f6 f6 ff ff       	jmp    805268f <_vfiprintf_r+0x61f>
 8052f99:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
 8052f9f:	0f b6 bd 71 ff ff ff 	movzbl -0x8f(%ebp),%edi
 8052fa6:	89 5d 14             	mov    %ebx,0x14(%ebp)
 8052fa9:	c7 85 5c ff ff ff 00 	movl   $0x0,-0xa4(%ebp)
 8052fb0:	00 00 00 
 8052fb3:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
 8052fb9:	e9 92 f3 ff ff       	jmp    8052350 <_vfiprintf_r+0x2e0>
 8052fbe:	89 cb                	mov    %ecx,%ebx
 8052fc0:	e9 bd fc ff ff       	jmp    8052c82 <_vfiprintf_r+0xc12>
 8052fc5:	89 da                	mov    %ebx,%edx
 8052fc7:	c7 85 5c ff ff ff 00 	movl   $0x0,-0xa4(%ebp)
 8052fce:	00 00 00 
 8052fd1:	e9 da f1 ff ff       	jmp    80521b0 <_vfiprintf_r+0x140>
 8052fd6:	8b 4d 14             	mov    0x14(%ebp),%ecx
 8052fd9:	89 da                	mov    %ebx,%edx
 8052fdb:	8b 45 14             	mov    0x14(%ebp),%eax
 8052fde:	8b 09                	mov    (%ecx),%ecx
 8052fe0:	83 c0 04             	add    $0x4,%eax
 8052fe3:	89 45 14             	mov    %eax,0x14(%ebp)
 8052fe6:	85 c9                	test   %ecx,%ecx
 8052fe8:	89 8d 5c ff ff ff    	mov    %ecx,-0xa4(%ebp)
 8052fee:	0f 89 f3 f1 ff ff    	jns    80521e7 <_vfiprintf_r+0x177>
 8052ff4:	c7 85 5c ff ff ff ff 	movl   $0xffffffff,-0xa4(%ebp)
 8052ffb:	ff ff ff 
 8052ffe:	89 d3                	mov    %edx,%ebx
 8053000:	e9 a5 f1 ff ff       	jmp    80521aa <_vfiprintf_r+0x13a>
 8053005:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8053009:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

08053010 <vfiprintf>:
 8053010:	55                   	push   %ebp
 8053011:	89 e5                	mov    %esp,%ebp
 8053013:	83 ec 18             	sub    $0x18,%esp
 8053016:	e8 55 c4 ff ff       	call   804f470 <__getreent>
 805301b:	8b 55 10             	mov    0x10(%ebp),%edx
 805301e:	89 54 24 0c          	mov    %edx,0xc(%esp)
 8053022:	8b 55 0c             	mov    0xc(%ebp),%edx
 8053025:	89 04 24             	mov    %eax,(%esp)
 8053028:	89 54 24 08          	mov    %edx,0x8(%esp)
 805302c:	8b 55 08             	mov    0x8(%ebp),%edx
 805302f:	89 54 24 04          	mov    %edx,0x4(%esp)
 8053033:	e8 38 f0 ff ff       	call   8052070 <_vfiprintf_r>
 8053038:	c9                   	leave  
 8053039:	c3                   	ret    
 805303a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

08053040 <__sbprintf>:
 8053040:	55                   	push   %ebp
 8053041:	89 e5                	mov    %esp,%ebp
 8053043:	57                   	push   %edi
 8053044:	89 c7                	mov    %eax,%edi
 8053046:	56                   	push   %esi
 8053047:	53                   	push   %ebx
 8053048:	89 d3                	mov    %edx,%ebx
 805304a:	81 ec 9c 04 00 00    	sub    $0x49c,%esp
 8053050:	0f b7 42 0c          	movzwl 0xc(%edx),%eax
 8053054:	c7 85 88 fb ff ff 00 	movl   $0x400,-0x478(%ebp)
 805305b:	04 00 00 
 805305e:	c7 85 94 fb ff ff 00 	movl   $0x400,-0x46c(%ebp)
 8053065:	04 00 00 
 8053068:	c7 85 98 fb ff ff 00 	movl   $0x0,-0x468(%ebp)
 805306f:	00 00 00 
 8053072:	83 e0 fd             	and    $0xfffffffd,%eax
 8053075:	66 89 85 8c fb ff ff 	mov    %ax,-0x474(%ebp)
 805307c:	8b 42 64             	mov    0x64(%edx),%eax
 805307f:	89 85 e4 fb ff ff    	mov    %eax,-0x41c(%ebp)
 8053085:	0f b7 42 0e          	movzwl 0xe(%edx),%eax
 8053089:	66 89 85 8e fb ff ff 	mov    %ax,-0x472(%ebp)
 8053090:	8b 42 1c             	mov    0x1c(%edx),%eax
 8053093:	89 85 9c fb ff ff    	mov    %eax,-0x464(%ebp)
 8053099:	8b 42 24             	mov    0x24(%edx),%eax
 805309c:	8d 95 80 fb ff ff    	lea    -0x480(%ebp),%edx
 80530a2:	89 4c 24 08          	mov    %ecx,0x8(%esp)
 80530a6:	89 54 24 04          	mov    %edx,0x4(%esp)
 80530aa:	89 3c 24             	mov    %edi,(%esp)
 80530ad:	89 85 a4 fb ff ff    	mov    %eax,-0x45c(%ebp)
 80530b3:	8d 85 e8 fb ff ff    	lea    -0x418(%ebp),%eax
 80530b9:	89 85 80 fb ff ff    	mov    %eax,-0x480(%ebp)
 80530bf:	89 85 90 fb ff ff    	mov    %eax,-0x470(%ebp)
 80530c5:	8b 45 08             	mov    0x8(%ebp),%eax
 80530c8:	89 95 74 fb ff ff    	mov    %edx,-0x48c(%ebp)
 80530ce:	89 44 24 0c          	mov    %eax,0xc(%esp)
 80530d2:	e8 99 ef ff ff       	call   8052070 <_vfiprintf_r>
 80530d7:	85 c0                	test   %eax,%eax
 80530d9:	89 c6                	mov    %eax,%esi
 80530db:	78 1c                	js     80530f9 <__sbprintf+0xb9>
 80530dd:	8b 95 74 fb ff ff    	mov    -0x48c(%ebp),%edx
 80530e3:	89 3c 24             	mov    %edi,(%esp)
 80530e6:	89 54 24 04          	mov    %edx,0x4(%esp)
 80530ea:	e8 71 ba ff ff       	call   804eb60 <_fflush_r>
 80530ef:	85 c0                	test   %eax,%eax
 80530f1:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 80530f6:	0f 45 f0             	cmovne %eax,%esi
 80530f9:	f6 85 8c fb ff ff 40 	testb  $0x40,-0x474(%ebp)
 8053100:	74 05                	je     8053107 <__sbprintf+0xc7>
 8053102:	66 83 4b 0c 40       	orw    $0x40,0xc(%ebx)
 8053107:	81 c4 9c 04 00 00    	add    $0x49c,%esp
 805310d:	89 f0                	mov    %esi,%eax
 805310f:	5b                   	pop    %ebx
 8053110:	5e                   	pop    %esi
 8053111:	5f                   	pop    %edi
 8053112:	5d                   	pop    %ebp
 8053113:	c3                   	ret    
 8053114:	66 90                	xchg   %ax,%ax
 8053116:	66 90                	xchg   %ax,%ax
 8053118:	66 90                	xchg   %ax,%ax
 805311a:	66 90                	xchg   %ax,%ax
 805311c:	66 90                	xchg   %ax,%ax
 805311e:	66 90                	xchg   %ax,%ax

08053120 <_write_r>:
 8053120:	55                   	push   %ebp
 8053121:	89 e5                	mov    %esp,%ebp
 8053123:	83 ec 18             	sub    $0x18,%esp
 8053126:	8b 45 14             	mov    0x14(%ebp),%eax
 8053129:	c7 05 74 d6 06 08 00 	movl   $0x0,0x806d674
 8053130:	00 00 00 
 8053133:	89 44 24 08          	mov    %eax,0x8(%esp)
 8053137:	8b 45 10             	mov    0x10(%ebp),%eax
 805313a:	89 44 24 04          	mov    %eax,0x4(%esp)
 805313e:	8b 45 0c             	mov    0xc(%ebp),%eax
 8053141:	89 04 24             	mov    %eax,(%esp)
 8053144:	e8 47 50 ff ff       	call   8048190 <write>
 8053149:	83 f8 ff             	cmp    $0xffffffff,%eax
 805314c:	74 02                	je     8053150 <_write_r+0x30>
 805314e:	c9                   	leave  
 805314f:	c3                   	ret    
 8053150:	8b 15 74 d6 06 08    	mov    0x806d674,%edx
 8053156:	85 d2                	test   %edx,%edx
 8053158:	74 f4                	je     805314e <_write_r+0x2e>
 805315a:	8b 4d 08             	mov    0x8(%ebp),%ecx
 805315d:	89 11                	mov    %edx,(%ecx)
 805315f:	c9                   	leave  
 8053160:	c3                   	ret    
 8053161:	66 90                	xchg   %ax,%ax
 8053163:	66 90                	xchg   %ax,%ax
 8053165:	66 90                	xchg   %ax,%ax
 8053167:	66 90                	xchg   %ax,%ax
 8053169:	66 90                	xchg   %ax,%ax
 805316b:	66 90                	xchg   %ax,%ax
 805316d:	66 90                	xchg   %ax,%ax
 805316f:	90                   	nop

08053170 <_calloc_r>:
 8053170:	55                   	push   %ebp
 8053171:	89 e5                	mov    %esp,%ebp
 8053173:	53                   	push   %ebx
 8053174:	83 ec 14             	sub    $0x14,%esp
 8053177:	8b 45 10             	mov    0x10(%ebp),%eax
 805317a:	0f af 45 0c          	imul   0xc(%ebp),%eax
 805317e:	89 44 24 04          	mov    %eax,0x4(%esp)
 8053182:	8b 45 08             	mov    0x8(%ebp),%eax
 8053185:	89 04 24             	mov    %eax,(%esp)
 8053188:	e8 43 c5 ff ff       	call   804f6d0 <_malloc_r>
 805318d:	85 c0                	test   %eax,%eax
 805318f:	89 c3                	mov    %eax,%ebx
 8053191:	0f 84 91 00 00 00    	je     8053228 <_calloc_r+0xb8>
 8053197:	8b 40 fc             	mov    -0x4(%eax),%eax
 805319a:	83 e0 fc             	and    $0xfffffffc,%eax
 805319d:	83 e8 04             	sub    $0x4,%eax
 80531a0:	83 f8 24             	cmp    $0x24,%eax
 80531a3:	77 63                	ja     8053208 <_calloc_r+0x98>
 80531a5:	83 f8 13             	cmp    $0x13,%eax
 80531a8:	89 da                	mov    %ebx,%edx
 80531aa:	77 1c                	ja     80531c8 <_calloc_r+0x58>
 80531ac:	c7 02 00 00 00 00    	movl   $0x0,(%edx)
 80531b2:	89 d8                	mov    %ebx,%eax
 80531b4:	c7 42 04 00 00 00 00 	movl   $0x0,0x4(%edx)
 80531bb:	c7 42 08 00 00 00 00 	movl   $0x0,0x8(%edx)
 80531c2:	83 c4 14             	add    $0x14,%esp
 80531c5:	5b                   	pop    %ebx
 80531c6:	5d                   	pop    %ebp
 80531c7:	c3                   	ret    
 80531c8:	83 f8 1b             	cmp    $0x1b,%eax
 80531cb:	c7 03 00 00 00 00    	movl   $0x0,(%ebx)
 80531d1:	8d 53 08             	lea    0x8(%ebx),%edx
 80531d4:	c7 43 04 00 00 00 00 	movl   $0x0,0x4(%ebx)
 80531db:	76 cf                	jbe    80531ac <_calloc_r+0x3c>
 80531dd:	83 f8 24             	cmp    $0x24,%eax
 80531e0:	c7 43 08 00 00 00 00 	movl   $0x0,0x8(%ebx)
 80531e7:	8d 53 10             	lea    0x10(%ebx),%edx
 80531ea:	c7 43 0c 00 00 00 00 	movl   $0x0,0xc(%ebx)
 80531f1:	75 b9                	jne    80531ac <_calloc_r+0x3c>
 80531f3:	c7 43 10 00 00 00 00 	movl   $0x0,0x10(%ebx)
 80531fa:	8d 53 18             	lea    0x18(%ebx),%edx
 80531fd:	c7 43 14 00 00 00 00 	movl   $0x0,0x14(%ebx)
 8053204:	eb a6                	jmp    80531ac <_calloc_r+0x3c>
 8053206:	66 90                	xchg   %ax,%ax
 8053208:	89 1c 24             	mov    %ebx,(%esp)
 805320b:	89 44 24 08          	mov    %eax,0x8(%esp)
 805320f:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 8053216:	00 
 8053217:	e8 a5 5f ff ff       	call   80491c1 <memset>
 805321c:	83 c4 14             	add    $0x14,%esp
 805321f:	89 d8                	mov    %ebx,%eax
 8053221:	5b                   	pop    %ebx
 8053222:	5d                   	pop    %ebp
 8053223:	c3                   	ret    
 8053224:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8053228:	31 c0                	xor    %eax,%eax
 805322a:	eb 96                	jmp    80531c2 <_calloc_r+0x52>
 805322c:	66 90                	xchg   %ax,%ax
 805322e:	66 90                	xchg   %ax,%ax

08053230 <_close_r>:
 8053230:	55                   	push   %ebp
 8053231:	89 e5                	mov    %esp,%ebp
 8053233:	83 ec 18             	sub    $0x18,%esp
 8053236:	8b 45 0c             	mov    0xc(%ebp),%eax
 8053239:	c7 05 74 d6 06 08 00 	movl   $0x0,0x806d674
 8053240:	00 00 00 
 8053243:	89 04 24             	mov    %eax,(%esp)
 8053246:	e8 c5 4f ff ff       	call   8048210 <close>
 805324b:	83 f8 ff             	cmp    $0xffffffff,%eax
 805324e:	74 08                	je     8053258 <_close_r+0x28>
 8053250:	c9                   	leave  
 8053251:	c3                   	ret    
 8053252:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 8053258:	8b 15 74 d6 06 08    	mov    0x806d674,%edx
 805325e:	85 d2                	test   %edx,%edx
 8053260:	74 ee                	je     8053250 <_close_r+0x20>
 8053262:	8b 4d 08             	mov    0x8(%ebp),%ecx
 8053265:	89 11                	mov    %edx,(%ecx)
 8053267:	c9                   	leave  
 8053268:	c3                   	ret    
 8053269:	66 90                	xchg   %ax,%ax
 805326b:	66 90                	xchg   %ax,%ax
 805326d:	66 90                	xchg   %ax,%ax
 805326f:	90                   	nop

08053270 <_fclose_r>:
 8053270:	55                   	push   %ebp
 8053271:	89 e5                	mov    %esp,%ebp
 8053273:	57                   	push   %edi
 8053274:	56                   	push   %esi
 8053275:	53                   	push   %ebx
 8053276:	83 ec 1c             	sub    $0x1c,%esp
 8053279:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 805327c:	8b 75 08             	mov    0x8(%ebp),%esi
 805327f:	85 db                	test   %ebx,%ebx
 8053281:	74 16                	je     8053299 <_fclose_r+0x29>
 8053283:	85 f6                	test   %esi,%esi
 8053285:	74 0b                	je     8053292 <_fclose_r+0x22>
 8053287:	8b 56 38             	mov    0x38(%esi),%edx
 805328a:	85 d2                	test   %edx,%edx
 805328c:	0f 84 9e 00 00 00    	je     8053330 <_fclose_r+0xc0>
 8053292:	66 83 7b 0c 00       	cmpw   $0x0,0xc(%ebx)
 8053297:	75 0f                	jne    80532a8 <_fclose_r+0x38>
 8053299:	83 c4 1c             	add    $0x1c,%esp
 805329c:	31 c0                	xor    %eax,%eax
 805329e:	5b                   	pop    %ebx
 805329f:	5e                   	pop    %esi
 80532a0:	5f                   	pop    %edi
 80532a1:	5d                   	pop    %ebp
 80532a2:	c3                   	ret    
 80532a3:	90                   	nop
 80532a4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 80532a8:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 80532ac:	89 34 24             	mov    %esi,(%esp)
 80532af:	e8 ac b8 ff ff       	call   804eb60 <_fflush_r>
 80532b4:	89 c7                	mov    %eax,%edi
 80532b6:	8b 43 2c             	mov    0x2c(%ebx),%eax
 80532b9:	85 c0                	test   %eax,%eax
 80532bb:	74 16                	je     80532d3 <_fclose_r+0x63>
 80532bd:	8b 53 1c             	mov    0x1c(%ebx),%edx
 80532c0:	89 34 24             	mov    %esi,(%esp)
 80532c3:	89 54 24 04          	mov    %edx,0x4(%esp)
 80532c7:	ff d0                	call   *%eax
 80532c9:	85 c0                	test   %eax,%eax
 80532cb:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 80532d0:	0f 48 f8             	cmovs  %eax,%edi
 80532d3:	f6 43 0c 80          	testb  $0x80,0xc(%ebx)
 80532d7:	75 67                	jne    8053340 <_fclose_r+0xd0>
 80532d9:	8b 43 30             	mov    0x30(%ebx),%eax
 80532dc:	85 c0                	test   %eax,%eax
 80532de:	74 1a                	je     80532fa <_fclose_r+0x8a>
 80532e0:	8d 53 40             	lea    0x40(%ebx),%edx
 80532e3:	39 d0                	cmp    %edx,%eax
 80532e5:	74 0c                	je     80532f3 <_fclose_r+0x83>
 80532e7:	89 44 24 04          	mov    %eax,0x4(%esp)
 80532eb:	89 34 24             	mov    %esi,(%esp)
 80532ee:	e8 2d be ff ff       	call   804f120 <_free_r>
 80532f3:	c7 43 30 00 00 00 00 	movl   $0x0,0x30(%ebx)
 80532fa:	8b 43 44             	mov    0x44(%ebx),%eax
 80532fd:	85 c0                	test   %eax,%eax
 80532ff:	74 13                	je     8053314 <_fclose_r+0xa4>
 8053301:	89 44 24 04          	mov    %eax,0x4(%esp)
 8053305:	89 34 24             	mov    %esi,(%esp)
 8053308:	e8 13 be ff ff       	call   804f120 <_free_r>
 805330d:	c7 43 44 00 00 00 00 	movl   $0x0,0x44(%ebx)
 8053314:	e8 97 bc ff ff       	call   804efb0 <__sfp_lock_acquire>
 8053319:	31 c0                	xor    %eax,%eax
 805331b:	66 89 43 0c          	mov    %ax,0xc(%ebx)
 805331f:	e8 9c bc ff ff       	call   804efc0 <__sfp_lock_release>
 8053324:	83 c4 1c             	add    $0x1c,%esp
 8053327:	89 f8                	mov    %edi,%eax
 8053329:	5b                   	pop    %ebx
 805332a:	5e                   	pop    %esi
 805332b:	5f                   	pop    %edi
 805332c:	5d                   	pop    %ebp
 805332d:	c3                   	ret    
 805332e:	66 90                	xchg   %ax,%ax
 8053330:	89 34 24             	mov    %esi,(%esp)
 8053333:	e8 98 b9 ff ff       	call   804ecd0 <__sinit>
 8053338:	e9 55 ff ff ff       	jmp    8053292 <_fclose_r+0x22>
 805333d:	8d 76 00             	lea    0x0(%esi),%esi
 8053340:	8b 43 10             	mov    0x10(%ebx),%eax
 8053343:	89 34 24             	mov    %esi,(%esp)
 8053346:	89 44 24 04          	mov    %eax,0x4(%esp)
 805334a:	e8 d1 bd ff ff       	call   804f120 <_free_r>
 805334f:	eb 88                	jmp    80532d9 <_fclose_r+0x69>
 8053351:	eb 0d                	jmp    8053360 <fclose>
 8053353:	90                   	nop
 8053354:	90                   	nop
 8053355:	90                   	nop
 8053356:	90                   	nop
 8053357:	90                   	nop
 8053358:	90                   	nop
 8053359:	90                   	nop
 805335a:	90                   	nop
 805335b:	90                   	nop
 805335c:	90                   	nop
 805335d:	90                   	nop
 805335e:	90                   	nop
 805335f:	90                   	nop

08053360 <fclose>:
 8053360:	55                   	push   %ebp
 8053361:	89 e5                	mov    %esp,%ebp
 8053363:	83 ec 18             	sub    $0x18,%esp
 8053366:	e8 05 c1 ff ff       	call   804f470 <__getreent>
 805336b:	8b 55 08             	mov    0x8(%ebp),%edx
 805336e:	89 54 24 04          	mov    %edx,0x4(%esp)
 8053372:	89 04 24             	mov    %eax,(%esp)
 8053375:	e8 f6 fe ff ff       	call   8053270 <_fclose_r>
 805337a:	c9                   	leave  
 805337b:	c3                   	ret    
 805337c:	66 90                	xchg   %ax,%ax
 805337e:	66 90                	xchg   %ax,%ax

08053380 <_fputwc_r>:
 8053380:	55                   	push   %ebp
 8053381:	89 e5                	mov    %esp,%ebp
 8053383:	57                   	push   %edi
 8053384:	56                   	push   %esi
 8053385:	53                   	push   %ebx
 8053386:	83 ec 2c             	sub    $0x2c,%esp
 8053389:	8b 5d 10             	mov    0x10(%ebp),%ebx
 805338c:	0f b7 43 0c          	movzwl 0xc(%ebx),%eax
 8053390:	f6 c4 20             	test   $0x20,%ah
 8053393:	75 0e                	jne    80533a3 <_fputwc_r+0x23>
 8053395:	81 4b 64 00 20 00 00 	orl    $0x2000,0x64(%ebx)
 805339c:	80 cc 20             	or     $0x20,%ah
 805339f:	66 89 43 0c          	mov    %ax,0xc(%ebx)
 80533a3:	e8 58 c1 ff ff       	call   804f500 <__locale_mb_cur_max>
 80533a8:	83 f8 01             	cmp    $0x1,%eax
 80533ab:	0f 84 cf 00 00 00    	je     8053480 <_fputwc_r+0x100>
 80533b1:	8d 43 5c             	lea    0x5c(%ebx),%eax
 80533b4:	89 44 24 0c          	mov    %eax,0xc(%esp)
 80533b8:	8b 45 0c             	mov    0xc(%ebp),%eax
 80533bb:	89 44 24 08          	mov    %eax,0x8(%esp)
 80533bf:	8d 45 e7             	lea    -0x19(%ebp),%eax
 80533c2:	89 44 24 04          	mov    %eax,0x4(%esp)
 80533c6:	8b 45 08             	mov    0x8(%ebp),%eax
 80533c9:	89 04 24             	mov    %eax,(%esp)
 80533cc:	e8 df 0f 00 00       	call   80543b0 <_wcrtomb_r>
 80533d1:	83 f8 ff             	cmp    $0xffffffff,%eax
 80533d4:	89 c7                	mov    %eax,%edi
 80533d6:	74 60                	je     8053438 <_fputwc_r+0xb8>
 80533d8:	85 ff                	test   %edi,%edi
 80533da:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 80533de:	74 48                	je     8053428 <_fputwc_r+0xa8>
 80533e0:	31 f6                	xor    %esi,%esi
 80533e2:	eb 17                	jmp    80533fb <_fputwc_r+0x7b>
 80533e4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 80533e8:	8b 13                	mov    (%ebx),%edx
 80533ea:	88 02                	mov    %al,(%edx)
 80533ec:	83 03 01             	addl   $0x1,(%ebx)
 80533ef:	83 c6 01             	add    $0x1,%esi
 80533f2:	39 fe                	cmp    %edi,%esi
 80533f4:	73 32                	jae    8053428 <_fputwc_r+0xa8>
 80533f6:	0f b6 44 35 e7       	movzbl -0x19(%ebp,%esi,1),%eax
 80533fb:	8b 4b 08             	mov    0x8(%ebx),%ecx
 80533fe:	8d 51 ff             	lea    -0x1(%ecx),%edx
 8053401:	85 d2                	test   %edx,%edx
 8053403:	89 53 08             	mov    %edx,0x8(%ebx)
 8053406:	79 e0                	jns    80533e8 <_fputwc_r+0x68>
 8053408:	3b 53 18             	cmp    0x18(%ebx),%edx
 805340b:	7c 43                	jl     8053450 <_fputwc_r+0xd0>
 805340d:	8b 13                	mov    (%ebx),%edx
 805340f:	88 02                	mov    %al,(%edx)
 8053411:	8b 03                	mov    (%ebx),%eax
 8053413:	80 38 0a             	cmpb   $0xa,(%eax)
 8053416:	0f 84 8c 00 00 00    	je     80534a8 <_fputwc_r+0x128>
 805341c:	83 c6 01             	add    $0x1,%esi
 805341f:	83 c0 01             	add    $0x1,%eax
 8053422:	39 fe                	cmp    %edi,%esi
 8053424:	89 03                	mov    %eax,(%ebx)
 8053426:	72 ce                	jb     80533f6 <_fputwc_r+0x76>
 8053428:	8b 45 0c             	mov    0xc(%ebp),%eax
 805342b:	83 c4 2c             	add    $0x2c,%esp
 805342e:	5b                   	pop    %ebx
 805342f:	5e                   	pop    %esi
 8053430:	5f                   	pop    %edi
 8053431:	5d                   	pop    %ebp
 8053432:	c3                   	ret    
 8053433:	90                   	nop
 8053434:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8053438:	66 83 4b 0c 40       	orw    $0x40,0xc(%ebx)
 805343d:	83 c4 2c             	add    $0x2c,%esp
 8053440:	5b                   	pop    %ebx
 8053441:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8053446:	5e                   	pop    %esi
 8053447:	5f                   	pop    %edi
 8053448:	5d                   	pop    %ebp
 8053449:	c3                   	ret    
 805344a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 8053450:	89 5c 24 08          	mov    %ebx,0x8(%esp)
 8053454:	89 44 24 04          	mov    %eax,0x4(%esp)
 8053458:	8b 45 08             	mov    0x8(%ebp),%eax
 805345b:	89 04 24             	mov    %eax,(%esp)
 805345e:	e8 fd 0d 00 00       	call   8054260 <__swbuf_r>
 8053463:	83 f8 ff             	cmp    $0xffffffff,%eax
 8053466:	0f 94 c0             	sete   %al
 8053469:	84 c0                	test   %al,%al
 805346b:	74 82                	je     80533ef <_fputwc_r+0x6f>
 805346d:	83 c4 2c             	add    $0x2c,%esp
 8053470:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8053475:	5b                   	pop    %ebx
 8053476:	5e                   	pop    %esi
 8053477:	5f                   	pop    %edi
 8053478:	5d                   	pop    %ebp
 8053479:	c3                   	ret    
 805347a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 8053480:	8b 45 0c             	mov    0xc(%ebp),%eax
 8053483:	83 e8 01             	sub    $0x1,%eax
 8053486:	3d fe 00 00 00       	cmp    $0xfe,%eax
 805348b:	0f 87 20 ff ff ff    	ja     80533b1 <_fputwc_r+0x31>
 8053491:	0f b6 45 0c          	movzbl 0xc(%ebp),%eax
 8053495:	bf 01 00 00 00       	mov    $0x1,%edi
 805349a:	88 45 e7             	mov    %al,-0x19(%ebp)
 805349d:	e9 3e ff ff ff       	jmp    80533e0 <_fputwc_r+0x60>
 80534a2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 80534a8:	89 5c 24 08          	mov    %ebx,0x8(%esp)
 80534ac:	c7 44 24 04 0a 00 00 	movl   $0xa,0x4(%esp)
 80534b3:	00 
 80534b4:	eb a2                	jmp    8053458 <_fputwc_r+0xd8>
 80534b6:	8d 76 00             	lea    0x0(%esi),%esi
 80534b9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

080534c0 <fputwc>:
 80534c0:	55                   	push   %ebp
 80534c1:	89 e5                	mov    %esp,%ebp
 80534c3:	83 ec 18             	sub    $0x18,%esp
 80534c6:	e8 a5 bf ff ff       	call   804f470 <__getreent>
 80534cb:	85 c0                	test   %eax,%eax
 80534cd:	74 15                	je     80534e4 <fputwc+0x24>
 80534cf:	8b 50 38             	mov    0x38(%eax),%edx
 80534d2:	85 d2                	test   %edx,%edx
 80534d4:	75 0e                	jne    80534e4 <fputwc+0x24>
 80534d6:	89 04 24             	mov    %eax,(%esp)
 80534d9:	89 45 f4             	mov    %eax,-0xc(%ebp)
 80534dc:	e8 ef b7 ff ff       	call   804ecd0 <__sinit>
 80534e1:	8b 45 f4             	mov    -0xc(%ebp),%eax
 80534e4:	8b 55 0c             	mov    0xc(%ebp),%edx
 80534e7:	89 04 24             	mov    %eax,(%esp)
 80534ea:	89 54 24 08          	mov    %edx,0x8(%esp)
 80534ee:	8b 55 08             	mov    0x8(%ebp),%edx
 80534f1:	89 54 24 04          	mov    %edx,0x4(%esp)
 80534f5:	e8 86 fe ff ff       	call   8053380 <_fputwc_r>
 80534fa:	c9                   	leave  
 80534fb:	c3                   	ret    
 80534fc:	66 90                	xchg   %ax,%ax
 80534fe:	66 90                	xchg   %ax,%ax

08053500 <_fstat_r>:
 8053500:	55                   	push   %ebp
 8053501:	89 e5                	mov    %esp,%ebp
 8053503:	83 ec 18             	sub    $0x18,%esp
 8053506:	8b 45 10             	mov    0x10(%ebp),%eax
 8053509:	c7 05 74 d6 06 08 00 	movl   $0x0,0x806d674
 8053510:	00 00 00 
 8053513:	89 44 24 04          	mov    %eax,0x4(%esp)
 8053517:	8b 45 0c             	mov    0xc(%ebp),%eax
 805351a:	89 04 24             	mov    %eax,(%esp)
 805351d:	e8 fe 4c ff ff       	call   8048220 <fstat>
 8053522:	83 f8 ff             	cmp    $0xffffffff,%eax
 8053525:	74 09                	je     8053530 <_fstat_r+0x30>
 8053527:	c9                   	leave  
 8053528:	c3                   	ret    
 8053529:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 8053530:	8b 15 74 d6 06 08    	mov    0x806d674,%edx
 8053536:	85 d2                	test   %edx,%edx
 8053538:	74 ed                	je     8053527 <_fstat_r+0x27>
 805353a:	8b 4d 08             	mov    0x8(%ebp),%ecx
 805353d:	89 11                	mov    %edx,(%ecx)
 805353f:	c9                   	leave  
 8053540:	c3                   	ret    
 8053541:	66 90                	xchg   %ax,%ax
 8053543:	66 90                	xchg   %ax,%ax
 8053545:	66 90                	xchg   %ax,%ax
 8053547:	66 90                	xchg   %ax,%ax
 8053549:	66 90                	xchg   %ax,%ax
 805354b:	66 90                	xchg   %ax,%ax
 805354d:	66 90                	xchg   %ax,%ax
 805354f:	90                   	nop

08053550 <__sfvwrite_r>:
 8053550:	55                   	push   %ebp
 8053551:	89 e5                	mov    %esp,%ebp
 8053553:	57                   	push   %edi
 8053554:	56                   	push   %esi
 8053555:	53                   	push   %ebx
 8053556:	83 ec 3c             	sub    $0x3c,%esp
 8053559:	8b 45 10             	mov    0x10(%ebp),%eax
 805355c:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 805355f:	8b 48 08             	mov    0x8(%eax),%ecx
 8053562:	85 c9                	test   %ecx,%ecx
 8053564:	74 7e                	je     80535e4 <__sfvwrite_r+0x94>
 8053566:	0f b7 43 0c          	movzwl 0xc(%ebx),%eax
 805356a:	a8 08                	test   $0x8,%al
 805356c:	0f 84 7e 00 00 00    	je     80535f0 <__sfvwrite_r+0xa0>
 8053572:	8b 53 10             	mov    0x10(%ebx),%edx
 8053575:	85 d2                	test   %edx,%edx
 8053577:	74 77                	je     80535f0 <__sfvwrite_r+0xa0>
 8053579:	8b 7d 10             	mov    0x10(%ebp),%edi
 805357c:	a8 02                	test   $0x2,%al
 805357e:	8b 3f                	mov    (%edi),%edi
 8053580:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 8053583:	0f 84 92 00 00 00    	je     805361b <__sfvwrite_r+0xcb>
 8053589:	31 ff                	xor    %edi,%edi
 805358b:	31 f6                	xor    %esi,%esi
 805358d:	89 5d 0c             	mov    %ebx,0xc(%ebp)
 8053590:	89 fb                	mov    %edi,%ebx
 8053592:	8b 7d 0c             	mov    0xc(%ebp),%edi
 8053595:	8d 76 00             	lea    0x0(%esi),%esi
 8053598:	85 f6                	test   %esi,%esi
 805359a:	0f 84 00 01 00 00    	je     80536a0 <__sfvwrite_r+0x150>
 80535a0:	81 fe 00 fc ff 7f    	cmp    $0x7ffffc00,%esi
 80535a6:	b8 00 fc ff 7f       	mov    $0x7ffffc00,%eax
 80535ab:	0f 46 c6             	cmovbe %esi,%eax
 80535ae:	89 44 24 0c          	mov    %eax,0xc(%esp)
 80535b2:	89 5c 24 08          	mov    %ebx,0x8(%esp)
 80535b6:	8b 47 1c             	mov    0x1c(%edi),%eax
 80535b9:	89 44 24 04          	mov    %eax,0x4(%esp)
 80535bd:	8b 45 08             	mov    0x8(%ebp),%eax
 80535c0:	89 04 24             	mov    %eax,(%esp)
 80535c3:	ff 57 24             	call   *0x24(%edi)
 80535c6:	85 c0                	test   %eax,%eax
 80535c8:	0f 8e 2a 04 00 00    	jle    80539f8 <__sfvwrite_r+0x4a8>
 80535ce:	8b 4d 10             	mov    0x10(%ebp),%ecx
 80535d1:	01 c3                	add    %eax,%ebx
 80535d3:	29 c6                	sub    %eax,%esi
 80535d5:	8b 49 08             	mov    0x8(%ecx),%ecx
 80535d8:	29 c1                	sub    %eax,%ecx
 80535da:	8b 45 10             	mov    0x10(%ebp),%eax
 80535dd:	85 c9                	test   %ecx,%ecx
 80535df:	89 48 08             	mov    %ecx,0x8(%eax)
 80535e2:	75 b4                	jne    8053598 <__sfvwrite_r+0x48>
 80535e4:	31 c0                	xor    %eax,%eax
 80535e6:	83 c4 3c             	add    $0x3c,%esp
 80535e9:	5b                   	pop    %ebx
 80535ea:	5e                   	pop    %esi
 80535eb:	5f                   	pop    %edi
 80535ec:	5d                   	pop    %ebp
 80535ed:	c3                   	ret    
 80535ee:	66 90                	xchg   %ax,%ax
 80535f0:	8b 45 08             	mov    0x8(%ebp),%eax
 80535f3:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 80535f7:	89 04 24             	mov    %eax,(%esp)
 80535fa:	e8 61 9e ff ff       	call   804d460 <__swsetup_r>
 80535ff:	85 c0                	test   %eax,%eax
 8053601:	0f 85 f8 03 00 00    	jne    80539ff <__sfvwrite_r+0x4af>
 8053607:	8b 7d 10             	mov    0x10(%ebp),%edi
 805360a:	0f b7 43 0c          	movzwl 0xc(%ebx),%eax
 805360e:	8b 3f                	mov    (%edi),%edi
 8053610:	a8 02                	test   $0x2,%al
 8053612:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 8053615:	0f 85 6e ff ff ff    	jne    8053589 <__sfvwrite_r+0x39>
 805361b:	a8 01                	test   $0x1,%al
 805361d:	0f 85 95 00 00 00    	jne    80536b8 <__sfvwrite_r+0x168>
 8053623:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%ebp)
 805362a:	31 ff                	xor    %edi,%edi
 805362c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8053630:	85 ff                	test   %edi,%edi
 8053632:	74 5b                	je     805368f <__sfvwrite_r+0x13f>
 8053634:	f6 c4 02             	test   $0x2,%ah
 8053637:	8b 73 08             	mov    0x8(%ebx),%esi
 805363a:	0f 84 30 01 00 00    	je     8053770 <__sfvwrite_r+0x220>
 8053640:	39 f7                	cmp    %esi,%edi
 8053642:	0f 82 d8 01 00 00    	jb     8053820 <__sfvwrite_r+0x2d0>
 8053648:	66 a9 80 04          	test   $0x480,%ax
 805364c:	0f 85 16 02 00 00    	jne    8053868 <__sfvwrite_r+0x318>
 8053652:	8b 03                	mov    (%ebx),%eax
 8053654:	89 f2                	mov    %esi,%edx
 8053656:	89 54 24 08          	mov    %edx,0x8(%esp)
 805365a:	89 55 dc             	mov    %edx,-0x24(%ebp)
 805365d:	8b 55 e0             	mov    -0x20(%ebp),%edx
 8053660:	89 04 24             	mov    %eax,(%esp)
 8053663:	89 54 24 04          	mov    %edx,0x4(%esp)
 8053667:	e8 44 04 00 00       	call   8053ab0 <memmove>
 805366c:	8b 55 dc             	mov    -0x24(%ebp),%edx
 805366f:	01 13                	add    %edx,(%ebx)
 8053671:	29 73 08             	sub    %esi,0x8(%ebx)
 8053674:	89 fe                	mov    %edi,%esi
 8053676:	8b 45 10             	mov    0x10(%ebp),%eax
 8053679:	29 f7                	sub    %esi,%edi
 805367b:	01 75 e0             	add    %esi,-0x20(%ebp)
 805367e:	29 70 08             	sub    %esi,0x8(%eax)
 8053681:	0f 84 5d ff ff ff    	je     80535e4 <__sfvwrite_r+0x94>
 8053687:	85 ff                	test   %edi,%edi
 8053689:	0f b7 43 0c          	movzwl 0xc(%ebx),%eax
 805368d:	75 a5                	jne    8053634 <__sfvwrite_r+0xe4>
 805368f:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
 8053692:	83 45 e4 08          	addl   $0x8,-0x1c(%ebp)
 8053696:	8b 11                	mov    (%ecx),%edx
 8053698:	8b 79 04             	mov    0x4(%ecx),%edi
 805369b:	89 55 e0             	mov    %edx,-0x20(%ebp)
 805369e:	eb 90                	jmp    8053630 <__sfvwrite_r+0xe0>
 80536a0:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 80536a3:	83 45 e4 08          	addl   $0x8,-0x1c(%ebp)
 80536a7:	8b 18                	mov    (%eax),%ebx
 80536a9:	8b 70 04             	mov    0x4(%eax),%esi
 80536ac:	e9 e7 fe ff ff       	jmp    8053598 <__sfvwrite_r+0x48>
 80536b1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 80536b8:	c7 45 d8 00 00 00 00 	movl   $0x0,-0x28(%ebp)
 80536bf:	31 ff                	xor    %edi,%edi
 80536c1:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%ebp)
 80536c8:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%ebp)
 80536cf:	90                   	nop
 80536d0:	85 ff                	test   %edi,%edi
 80536d2:	74 7f                	je     8053753 <__sfvwrite_r+0x203>
 80536d4:	8b 45 dc             	mov    -0x24(%ebp),%eax
 80536d7:	85 c0                	test   %eax,%eax
 80536d9:	0f 84 51 01 00 00    	je     8053830 <__sfvwrite_r+0x2e0>
 80536df:	8b 75 d8             	mov    -0x28(%ebp),%esi
 80536e2:	8b 0b                	mov    (%ebx),%ecx
 80536e4:	8b 53 08             	mov    0x8(%ebx),%edx
 80536e7:	8b 43 14             	mov    0x14(%ebx),%eax
 80536ea:	39 fe                	cmp    %edi,%esi
 80536ec:	0f 47 f7             	cmova  %edi,%esi
 80536ef:	3b 4b 10             	cmp    0x10(%ebx),%ecx
 80536f2:	76 0a                	jbe    80536fe <__sfvwrite_r+0x1ae>
 80536f4:	01 c2                	add    %eax,%edx
 80536f6:	39 d6                	cmp    %edx,%esi
 80536f8:	0f 8f 4a 02 00 00    	jg     8053948 <__sfvwrite_r+0x3f8>
 80536fe:	39 c6                	cmp    %eax,%esi
 8053700:	0f 8c da 00 00 00    	jl     80537e0 <__sfvwrite_r+0x290>
 8053706:	89 44 24 0c          	mov    %eax,0xc(%esp)
 805370a:	8b 45 e0             	mov    -0x20(%ebp),%eax
 805370d:	89 44 24 08          	mov    %eax,0x8(%esp)
 8053711:	8b 43 1c             	mov    0x1c(%ebx),%eax
 8053714:	89 44 24 04          	mov    %eax,0x4(%esp)
 8053718:	8b 45 08             	mov    0x8(%ebp),%eax
 805371b:	89 04 24             	mov    %eax,(%esp)
 805371e:	ff 53 24             	call   *0x24(%ebx)
 8053721:	85 c0                	test   %eax,%eax
 8053723:	89 c6                	mov    %eax,%esi
 8053725:	0f 8e 9d 00 00 00    	jle    80537c8 <__sfvwrite_r+0x278>
 805372b:	29 75 d8             	sub    %esi,-0x28(%ebp)
 805372e:	0f 84 cd 00 00 00    	je     8053801 <__sfvwrite_r+0x2b1>
 8053734:	8b 45 10             	mov    0x10(%ebp),%eax
 8053737:	29 f7                	sub    %esi,%edi
 8053739:	8b 55 10             	mov    0x10(%ebp),%edx
 805373c:	01 75 e0             	add    %esi,-0x20(%ebp)
 805373f:	8b 40 08             	mov    0x8(%eax),%eax
 8053742:	29 f0                	sub    %esi,%eax
 8053744:	85 c0                	test   %eax,%eax
 8053746:	89 42 08             	mov    %eax,0x8(%edx)
 8053749:	0f 84 95 fe ff ff    	je     80535e4 <__sfvwrite_r+0x94>
 805374f:	85 ff                	test   %edi,%edi
 8053751:	75 81                	jne    80536d4 <__sfvwrite_r+0x184>
 8053753:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 8053756:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%ebp)
 805375d:	83 45 e4 08          	addl   $0x8,-0x1c(%ebp)
 8053761:	8b 08                	mov    (%eax),%ecx
 8053763:	8b 78 04             	mov    0x4(%eax),%edi
 8053766:	89 4d e0             	mov    %ecx,-0x20(%ebp)
 8053769:	e9 62 ff ff ff       	jmp    80536d0 <__sfvwrite_r+0x180>
 805376e:	66 90                	xchg   %ax,%ax
 8053770:	8b 03                	mov    (%ebx),%eax
 8053772:	3b 43 10             	cmp    0x10(%ebx),%eax
 8053775:	77 0b                	ja     8053782 <__sfvwrite_r+0x232>
 8053777:	8b 4b 14             	mov    0x14(%ebx),%ecx
 805377a:	39 cf                	cmp    %ecx,%edi
 805377c:	0f 83 86 01 00 00    	jae    8053908 <__sfvwrite_r+0x3b8>
 8053782:	8b 55 e0             	mov    -0x20(%ebp),%edx
 8053785:	39 f7                	cmp    %esi,%edi
 8053787:	0f 46 f7             	cmovbe %edi,%esi
 805378a:	89 74 24 08          	mov    %esi,0x8(%esp)
 805378e:	89 04 24             	mov    %eax,(%esp)
 8053791:	89 54 24 04          	mov    %edx,0x4(%esp)
 8053795:	e8 16 03 00 00       	call   8053ab0 <memmove>
 805379a:	8b 43 08             	mov    0x8(%ebx),%eax
 805379d:	01 33                	add    %esi,(%ebx)
 805379f:	29 f0                	sub    %esi,%eax
 80537a1:	85 c0                	test   %eax,%eax
 80537a3:	89 43 08             	mov    %eax,0x8(%ebx)
 80537a6:	0f 85 ca fe ff ff    	jne    8053676 <__sfvwrite_r+0x126>
 80537ac:	8b 45 08             	mov    0x8(%ebp),%eax
 80537af:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 80537b3:	89 04 24             	mov    %eax,(%esp)
 80537b6:	e8 a5 b3 ff ff       	call   804eb60 <_fflush_r>
 80537bb:	85 c0                	test   %eax,%eax
 80537bd:	0f 84 b3 fe ff ff    	je     8053676 <__sfvwrite_r+0x126>
 80537c3:	90                   	nop
 80537c4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 80537c8:	0f b7 43 0c          	movzwl 0xc(%ebx),%eax
 80537cc:	83 c8 40             	or     $0x40,%eax
 80537cf:	66 89 43 0c          	mov    %ax,0xc(%ebx)
 80537d3:	83 c4 3c             	add    $0x3c,%esp
 80537d6:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 80537db:	5b                   	pop    %ebx
 80537dc:	5e                   	pop    %esi
 80537dd:	5f                   	pop    %edi
 80537de:	5d                   	pop    %ebp
 80537df:	c3                   	ret    
 80537e0:	8b 45 e0             	mov    -0x20(%ebp),%eax
 80537e3:	89 74 24 08          	mov    %esi,0x8(%esp)
 80537e7:	89 0c 24             	mov    %ecx,(%esp)
 80537ea:	89 44 24 04          	mov    %eax,0x4(%esp)
 80537ee:	e8 bd 02 00 00       	call   8053ab0 <memmove>
 80537f3:	29 73 08             	sub    %esi,0x8(%ebx)
 80537f6:	01 33                	add    %esi,(%ebx)
 80537f8:	29 75 d8             	sub    %esi,-0x28(%ebp)
 80537fb:	0f 85 33 ff ff ff    	jne    8053734 <__sfvwrite_r+0x1e4>
 8053801:	8b 45 08             	mov    0x8(%ebp),%eax
 8053804:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 8053808:	89 04 24             	mov    %eax,(%esp)
 805380b:	e8 50 b3 ff ff       	call   804eb60 <_fflush_r>
 8053810:	85 c0                	test   %eax,%eax
 8053812:	75 b4                	jne    80537c8 <__sfvwrite_r+0x278>
 8053814:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%ebp)
 805381b:	e9 14 ff ff ff       	jmp    8053734 <__sfvwrite_r+0x1e4>
 8053820:	89 fe                	mov    %edi,%esi
 8053822:	8b 03                	mov    (%ebx),%eax
 8053824:	89 fa                	mov    %edi,%edx
 8053826:	e9 2b fe ff ff       	jmp    8053656 <__sfvwrite_r+0x106>
 805382b:	90                   	nop
 805382c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8053830:	8b 75 e0             	mov    -0x20(%ebp),%esi
 8053833:	89 7c 24 08          	mov    %edi,0x8(%esp)
 8053837:	c7 44 24 04 0a 00 00 	movl   $0xa,0x4(%esp)
 805383e:	00 
 805383f:	89 34 24             	mov    %esi,(%esp)
 8053842:	e8 c9 c5 ff ff       	call   804fe10 <memchr>
 8053847:	85 c0                	test   %eax,%eax
 8053849:	0f 84 91 01 00 00    	je     80539e0 <__sfvwrite_r+0x490>
 805384f:	83 c0 01             	add    $0x1,%eax
 8053852:	89 45 d8             	mov    %eax,-0x28(%ebp)
 8053855:	c7 45 dc 01 00 00 00 	movl   $0x1,-0x24(%ebp)
 805385c:	29 75 d8             	sub    %esi,-0x28(%ebp)
 805385f:	e9 7b fe ff ff       	jmp    80536df <__sfvwrite_r+0x18f>
 8053864:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8053868:	8b 53 14             	mov    0x14(%ebx),%edx
 805386b:	8b 0b                	mov    (%ebx),%ecx
 805386d:	8b 73 10             	mov    0x10(%ebx),%esi
 8053870:	8d 14 52             	lea    (%edx,%edx,2),%edx
 8053873:	89 4d dc             	mov    %ecx,-0x24(%ebp)
 8053876:	89 d1                	mov    %edx,%ecx
 8053878:	c1 e9 1f             	shr    $0x1f,%ecx
 805387b:	29 75 dc             	sub    %esi,-0x24(%ebp)
 805387e:	01 ca                	add    %ecx,%edx
 8053880:	8b 4d dc             	mov    -0x24(%ebp),%ecx
 8053883:	d1 fa                	sar    %edx
 8053885:	8d 4c 0f 01          	lea    0x1(%edi,%ecx,1),%ecx
 8053889:	39 ca                	cmp    %ecx,%edx
 805388b:	0f 83 f7 00 00 00    	jae    8053988 <__sfvwrite_r+0x438>
 8053891:	89 ca                	mov    %ecx,%edx
 8053893:	f6 c4 04             	test   $0x4,%ah
 8053896:	89 55 d8             	mov    %edx,-0x28(%ebp)
 8053899:	0f 84 f7 00 00 00    	je     8053996 <__sfvwrite_r+0x446>
 805389f:	8b 45 08             	mov    0x8(%ebp),%eax
 80538a2:	89 4c 24 04          	mov    %ecx,0x4(%esp)
 80538a6:	89 04 24             	mov    %eax,(%esp)
 80538a9:	e8 22 be ff ff       	call   804f6d0 <_malloc_r>
 80538ae:	8b 55 d8             	mov    -0x28(%ebp),%edx
 80538b1:	85 c0                	test   %eax,%eax
 80538b3:	89 c6                	mov    %eax,%esi
 80538b5:	0f 84 4e 01 00 00    	je     8053a09 <__sfvwrite_r+0x4b9>
 80538bb:	8b 45 dc             	mov    -0x24(%ebp),%eax
 80538be:	89 55 d8             	mov    %edx,-0x28(%ebp)
 80538c1:	89 44 24 08          	mov    %eax,0x8(%esp)
 80538c5:	8b 43 10             	mov    0x10(%ebx),%eax
 80538c8:	89 34 24             	mov    %esi,(%esp)
 80538cb:	89 44 24 04          	mov    %eax,0x4(%esp)
 80538cf:	e8 d4 c5 ff ff       	call   804fea8 <memcpy>
 80538d4:	0f b7 43 0c          	movzwl 0xc(%ebx),%eax
 80538d8:	8b 55 d8             	mov    -0x28(%ebp),%edx
 80538db:	66 25 7f fb          	and    $0xfb7f,%ax
 80538df:	0c 80                	or     $0x80,%al
 80538e1:	66 89 43 0c          	mov    %ax,0xc(%ebx)
 80538e5:	8b 4d dc             	mov    -0x24(%ebp),%ecx
 80538e8:	89 53 14             	mov    %edx,0x14(%ebx)
 80538eb:	89 73 10             	mov    %esi,0x10(%ebx)
 80538ee:	89 c8                	mov    %ecx,%eax
 80538f0:	29 ca                	sub    %ecx,%edx
 80538f2:	01 f0                	add    %esi,%eax
 80538f4:	89 fe                	mov    %edi,%esi
 80538f6:	89 53 08             	mov    %edx,0x8(%ebx)
 80538f9:	89 fa                	mov    %edi,%edx
 80538fb:	89 03                	mov    %eax,(%ebx)
 80538fd:	e9 54 fd ff ff       	jmp    8053656 <__sfvwrite_r+0x106>
 8053902:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 8053908:	81 ff ff ff ff 7f    	cmp    $0x7fffffff,%edi
 805390e:	b8 ff ff ff 7f       	mov    $0x7fffffff,%eax
 8053913:	0f 46 c7             	cmovbe %edi,%eax
 8053916:	99                   	cltd   
 8053917:	f7 f9                	idiv   %ecx
 8053919:	0f af c1             	imul   %ecx,%eax
 805391c:	89 44 24 0c          	mov    %eax,0xc(%esp)
 8053920:	8b 45 e0             	mov    -0x20(%ebp),%eax
 8053923:	89 44 24 08          	mov    %eax,0x8(%esp)
 8053927:	8b 43 1c             	mov    0x1c(%ebx),%eax
 805392a:	89 44 24 04          	mov    %eax,0x4(%esp)
 805392e:	8b 45 08             	mov    0x8(%ebp),%eax
 8053931:	89 04 24             	mov    %eax,(%esp)
 8053934:	ff 53 24             	call   *0x24(%ebx)
 8053937:	85 c0                	test   %eax,%eax
 8053939:	0f 8e 89 fe ff ff    	jle    80537c8 <__sfvwrite_r+0x278>
 805393f:	89 c6                	mov    %eax,%esi
 8053941:	e9 30 fd ff ff       	jmp    8053676 <__sfvwrite_r+0x126>
 8053946:	66 90                	xchg   %ax,%ax
 8053948:	8b 45 e0             	mov    -0x20(%ebp),%eax
 805394b:	89 54 24 08          	mov    %edx,0x8(%esp)
 805394f:	89 0c 24             	mov    %ecx,(%esp)
 8053952:	89 55 d4             	mov    %edx,-0x2c(%ebp)
 8053955:	89 44 24 04          	mov    %eax,0x4(%esp)
 8053959:	e8 52 01 00 00       	call   8053ab0 <memmove>
 805395e:	8b 55 d4             	mov    -0x2c(%ebp),%edx
 8053961:	8b 45 08             	mov    0x8(%ebp),%eax
 8053964:	01 13                	add    %edx,(%ebx)
 8053966:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 805396a:	89 04 24             	mov    %eax,(%esp)
 805396d:	e8 ee b1 ff ff       	call   804eb60 <_fflush_r>
 8053972:	8b 55 d4             	mov    -0x2c(%ebp),%edx
 8053975:	85 c0                	test   %eax,%eax
 8053977:	0f 85 4b fe ff ff    	jne    80537c8 <__sfvwrite_r+0x278>
 805397d:	89 d6                	mov    %edx,%esi
 805397f:	e9 a7 fd ff ff       	jmp    805372b <__sfvwrite_r+0x1db>
 8053984:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8053988:	f6 c4 04             	test   $0x4,%ah
 805398b:	89 d1                	mov    %edx,%ecx
 805398d:	89 55 d8             	mov    %edx,-0x28(%ebp)
 8053990:	0f 85 09 ff ff ff    	jne    805389f <__sfvwrite_r+0x34f>
 8053996:	8b 45 08             	mov    0x8(%ebp),%eax
 8053999:	89 74 24 04          	mov    %esi,0x4(%esp)
 805399d:	89 4c 24 08          	mov    %ecx,0x8(%esp)
 80539a1:	89 04 24             	mov    %eax,(%esp)
 80539a4:	e8 e7 01 00 00       	call   8053b90 <_realloc_r>
 80539a9:	8b 55 d8             	mov    -0x28(%ebp),%edx
 80539ac:	85 c0                	test   %eax,%eax
 80539ae:	89 c6                	mov    %eax,%esi
 80539b0:	0f 85 2f ff ff ff    	jne    80538e5 <__sfvwrite_r+0x395>
 80539b6:	8b 43 10             	mov    0x10(%ebx),%eax
 80539b9:	89 44 24 04          	mov    %eax,0x4(%esp)
 80539bd:	8b 45 08             	mov    0x8(%ebp),%eax
 80539c0:	89 04 24             	mov    %eax,(%esp)
 80539c3:	e8 58 b7 ff ff       	call   804f120 <_free_r>
 80539c8:	0f b7 43 0c          	movzwl 0xc(%ebx),%eax
 80539cc:	8b 7d 08             	mov    0x8(%ebp),%edi
 80539cf:	24 7f                	and    $0x7f,%al
 80539d1:	c7 07 0c 00 00 00    	movl   $0xc,(%edi)
 80539d7:	e9 f0 fd ff ff       	jmp    80537cc <__sfvwrite_r+0x27c>
 80539dc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 80539e0:	8d 47 01             	lea    0x1(%edi),%eax
 80539e3:	89 45 d8             	mov    %eax,-0x28(%ebp)
 80539e6:	c7 45 dc 01 00 00 00 	movl   $0x1,-0x24(%ebp)
 80539ed:	e9 ed fc ff ff       	jmp    80536df <__sfvwrite_r+0x18f>
 80539f2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 80539f8:	89 fb                	mov    %edi,%ebx
 80539fa:	e9 c9 fd ff ff       	jmp    80537c8 <__sfvwrite_r+0x278>
 80539ff:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8053a04:	e9 dd fb ff ff       	jmp    80535e6 <__sfvwrite_r+0x96>
 8053a09:	8b 45 08             	mov    0x8(%ebp),%eax
 8053a0c:	c7 00 0c 00 00 00    	movl   $0xc,(%eax)
 8053a12:	0f b7 43 0c          	movzwl 0xc(%ebx),%eax
 8053a16:	e9 b1 fd ff ff       	jmp    80537cc <__sfvwrite_r+0x27c>
 8053a1b:	66 90                	xchg   %ax,%ax
 8053a1d:	66 90                	xchg   %ax,%ax
 8053a1f:	90                   	nop

08053a20 <_isatty_r>:
 8053a20:	55                   	push   %ebp
 8053a21:	89 e5                	mov    %esp,%ebp
 8053a23:	83 ec 18             	sub    $0x18,%esp
 8053a26:	8b 45 0c             	mov    0xc(%ebp),%eax
 8053a29:	c7 05 74 d6 06 08 00 	movl   $0x0,0x806d674
 8053a30:	00 00 00 
 8053a33:	89 04 24             	mov    %eax,(%esp)
 8053a36:	e8 05 48 ff ff       	call   8048240 <isatty>
 8053a3b:	83 f8 ff             	cmp    $0xffffffff,%eax
 8053a3e:	74 08                	je     8053a48 <_isatty_r+0x28>
 8053a40:	c9                   	leave  
 8053a41:	c3                   	ret    
 8053a42:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 8053a48:	8b 15 74 d6 06 08    	mov    0x806d674,%edx
 8053a4e:	85 d2                	test   %edx,%edx
 8053a50:	74 ee                	je     8053a40 <_isatty_r+0x20>
 8053a52:	8b 4d 08             	mov    0x8(%ebp),%ecx
 8053a55:	89 11                	mov    %edx,(%ecx)
 8053a57:	c9                   	leave  
 8053a58:	c3                   	ret    
 8053a59:	66 90                	xchg   %ax,%ax
 8053a5b:	66 90                	xchg   %ax,%ax
 8053a5d:	66 90                	xchg   %ax,%ax
 8053a5f:	90                   	nop

08053a60 <_lseek_r>:
 8053a60:	55                   	push   %ebp
 8053a61:	89 e5                	mov    %esp,%ebp
 8053a63:	83 ec 18             	sub    $0x18,%esp
 8053a66:	8b 45 14             	mov    0x14(%ebp),%eax
 8053a69:	c7 05 74 d6 06 08 00 	movl   $0x0,0x806d674
 8053a70:	00 00 00 
 8053a73:	89 44 24 08          	mov    %eax,0x8(%esp)
 8053a77:	8b 45 10             	mov    0x10(%ebp),%eax
 8053a7a:	89 44 24 04          	mov    %eax,0x4(%esp)
 8053a7e:	8b 45 0c             	mov    0xc(%ebp),%eax
 8053a81:	89 04 24             	mov    %eax,(%esp)
 8053a84:	e8 27 47 ff ff       	call   80481b0 <lseek>
 8053a89:	83 f8 ff             	cmp    $0xffffffff,%eax
 8053a8c:	74 02                	je     8053a90 <_lseek_r+0x30>
 8053a8e:	c9                   	leave  
 8053a8f:	c3                   	ret    
 8053a90:	8b 15 74 d6 06 08    	mov    0x806d674,%edx
 8053a96:	85 d2                	test   %edx,%edx
 8053a98:	74 f4                	je     8053a8e <_lseek_r+0x2e>
 8053a9a:	8b 4d 08             	mov    0x8(%ebp),%ecx
 8053a9d:	89 11                	mov    %edx,(%ecx)
 8053a9f:	c9                   	leave  
 8053aa0:	c3                   	ret    
 8053aa1:	66 90                	xchg   %ax,%ax
 8053aa3:	66 90                	xchg   %ax,%ax
 8053aa5:	66 90                	xchg   %ax,%ax
 8053aa7:	66 90                	xchg   %ax,%ax
 8053aa9:	66 90                	xchg   %ax,%ax
 8053aab:	66 90                	xchg   %ax,%ax
 8053aad:	66 90                	xchg   %ax,%ax
 8053aaf:	90                   	nop

08053ab0 <memmove>:
 8053ab0:	55                   	push   %ebp
 8053ab1:	89 e5                	mov    %esp,%ebp
 8053ab3:	56                   	push   %esi
 8053ab4:	57                   	push   %edi
 8053ab5:	53                   	push   %ebx
 8053ab6:	8b 7d 08             	mov    0x8(%ebp),%edi
 8053ab9:	8b 4d 10             	mov    0x10(%ebp),%ecx
 8053abc:	8b 75 0c             	mov    0xc(%ebp),%esi
 8053abf:	fc                   	cld    
 8053ac0:	39 fe                	cmp    %edi,%esi
 8053ac2:	73 43                	jae    8053b07 <memmove+0x57>
 8053ac4:	8d 5c 31 ff          	lea    -0x1(%ecx,%esi,1),%ebx
 8053ac8:	39 df                	cmp    %ebx,%edi
 8053aca:	77 3b                	ja     8053b07 <memmove+0x57>
 8053acc:	01 ce                	add    %ecx,%esi
 8053ace:	01 cf                	add    %ecx,%edi
 8053ad0:	fd                   	std    
 8053ad1:	83 f9 08             	cmp    $0x8,%ecx
 8053ad4:	76 2b                	jbe    8053b01 <memmove+0x51>
 8053ad6:	89 fa                	mov    %edi,%edx
 8053ad8:	89 cb                	mov    %ecx,%ebx
 8053ada:	83 e2 03             	and    $0x3,%edx
 8053add:	74 0c                	je     8053aeb <memmove+0x3b>
 8053adf:	89 d1                	mov    %edx,%ecx
 8053ae1:	4e                   	dec    %esi
 8053ae2:	4f                   	dec    %edi
 8053ae3:	29 cb                	sub    %ecx,%ebx
 8053ae5:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
 8053ae7:	89 d9                	mov    %ebx,%ecx
 8053ae9:	46                   	inc    %esi
 8053aea:	47                   	inc    %edi
 8053aeb:	c1 e9 02             	shr    $0x2,%ecx
 8053aee:	83 ee 04             	sub    $0x4,%esi
 8053af1:	83 ef 04             	sub    $0x4,%edi
 8053af4:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
 8053af6:	83 c6 04             	add    $0x4,%esi
 8053af9:	83 c7 04             	add    $0x4,%edi
 8053afc:	89 d9                	mov    %ebx,%ecx
 8053afe:	83 e1 03             	and    $0x3,%ecx
 8053b01:	4e                   	dec    %esi
 8053b02:	4f                   	dec    %edi
 8053b03:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
 8053b05:	eb 2a                	jmp    8053b31 <memmove+0x81>
 8053b07:	83 f9 08             	cmp    $0x8,%ecx
 8053b0a:	76 23                	jbe    8053b2f <memmove+0x7f>
 8053b0c:	89 fa                	mov    %edi,%edx
 8053b0e:	89 cb                	mov    %ecx,%ebx
 8053b10:	83 e2 03             	and    $0x3,%edx
 8053b13:	74 10                	je     8053b25 <memmove+0x75>
 8053b15:	b9 04 00 00 00       	mov    $0x4,%ecx
 8053b1a:	29 d1                	sub    %edx,%ecx
 8053b1c:	83 e1 03             	and    $0x3,%ecx
 8053b1f:	29 cb                	sub    %ecx,%ebx
 8053b21:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
 8053b23:	89 d9                	mov    %ebx,%ecx
 8053b25:	c1 e9 02             	shr    $0x2,%ecx
 8053b28:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
 8053b2a:	89 d9                	mov    %ebx,%ecx
 8053b2c:	83 e1 03             	and    $0x3,%ecx
 8053b2f:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
 8053b31:	8b 45 08             	mov    0x8(%ebp),%eax
 8053b34:	fc                   	cld    
 8053b35:	8d 65 f4             	lea    -0xc(%ebp),%esp
 8053b38:	5b                   	pop    %ebx
 8053b39:	5f                   	pop    %edi
 8053b3a:	5e                   	pop    %esi
 8053b3b:	c9                   	leave  
 8053b3c:	c3                   	ret    
 8053b3d:	66 90                	xchg   %ax,%ax
 8053b3f:	90                   	nop

08053b40 <_read_r>:
 8053b40:	55                   	push   %ebp
 8053b41:	89 e5                	mov    %esp,%ebp
 8053b43:	83 ec 18             	sub    $0x18,%esp
 8053b46:	8b 45 14             	mov    0x14(%ebp),%eax
 8053b49:	c7 05 74 d6 06 08 00 	movl   $0x0,0x806d674
 8053b50:	00 00 00 
 8053b53:	89 44 24 08          	mov    %eax,0x8(%esp)
 8053b57:	8b 45 10             	mov    0x10(%ebp),%eax
 8053b5a:	89 44 24 04          	mov    %eax,0x4(%esp)
 8053b5e:	8b 45 0c             	mov    0xc(%ebp),%eax
 8053b61:	89 04 24             	mov    %eax,(%esp)
 8053b64:	e8 17 46 ff ff       	call   8048180 <read>
 8053b69:	83 f8 ff             	cmp    $0xffffffff,%eax
 8053b6c:	74 02                	je     8053b70 <_read_r+0x30>
 8053b6e:	c9                   	leave  
 8053b6f:	c3                   	ret    
 8053b70:	8b 15 74 d6 06 08    	mov    0x806d674,%edx
 8053b76:	85 d2                	test   %edx,%edx
 8053b78:	74 f4                	je     8053b6e <_read_r+0x2e>
 8053b7a:	8b 4d 08             	mov    0x8(%ebp),%ecx
 8053b7d:	89 11                	mov    %edx,(%ecx)
 8053b7f:	c9                   	leave  
 8053b80:	c3                   	ret    
 8053b81:	66 90                	xchg   %ax,%ax
 8053b83:	66 90                	xchg   %ax,%ax
 8053b85:	66 90                	xchg   %ax,%ax
 8053b87:	66 90                	xchg   %ax,%ax
 8053b89:	66 90                	xchg   %ax,%ax
 8053b8b:	66 90                	xchg   %ax,%ax
 8053b8d:	66 90                	xchg   %ax,%ax
 8053b8f:	90                   	nop

08053b90 <_realloc_r>:
 8053b90:	55                   	push   %ebp
 8053b91:	89 e5                	mov    %esp,%ebp
 8053b93:	57                   	push   %edi
 8053b94:	56                   	push   %esi
 8053b95:	53                   	push   %ebx
 8053b96:	83 ec 3c             	sub    $0x3c,%esp
 8053b99:	8b 45 08             	mov    0x8(%ebp),%eax
 8053b9c:	8b 7d 0c             	mov    0xc(%ebp),%edi
 8053b9f:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 8053ba2:	8b 45 10             	mov    0x10(%ebp),%eax
 8053ba5:	85 ff                	test   %edi,%edi
 8053ba7:	89 45 e0             	mov    %eax,-0x20(%ebp)
 8053baa:	0f 84 50 02 00 00    	je     8053e00 <_realloc_r+0x270>
 8053bb0:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 8053bb3:	8d 77 f8             	lea    -0x8(%edi),%esi
 8053bb6:	89 04 24             	mov    %eax,(%esp)
 8053bb9:	e8 32 c3 ff ff       	call   804fef0 <__malloc_lock>
 8053bbe:	8b 47 fc             	mov    -0x4(%edi),%eax
 8053bc1:	8b 4d e0             	mov    -0x20(%ebp),%ecx
 8053bc4:	89 c3                	mov    %eax,%ebx
 8053bc6:	8d 51 0b             	lea    0xb(%ecx),%edx
 8053bc9:	83 e3 fc             	and    $0xfffffffc,%ebx
 8053bcc:	83 fa 16             	cmp    $0x16,%edx
 8053bcf:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 8053bd2:	0f 87 00 01 00 00    	ja     8053cd8 <_realloc_r+0x148>
 8053bd8:	31 d2                	xor    %edx,%edx
 8053bda:	c7 45 d8 10 00 00 00 	movl   $0x10,-0x28(%ebp)
 8053be1:	c7 45 dc 10 00 00 00 	movl   $0x10,-0x24(%ebp)
 8053be8:	8b 4d e0             	mov    -0x20(%ebp),%ecx
 8053beb:	39 4d dc             	cmp    %ecx,-0x24(%ebp)
 8053bee:	0f 82 1c 02 00 00    	jb     8053e10 <_realloc_r+0x280>
 8053bf4:	84 d2                	test   %dl,%dl
 8053bf6:	0f 85 14 02 00 00    	jne    8053e10 <_realloc_r+0x280>
 8053bfc:	3b 5d d8             	cmp    -0x28(%ebp),%ebx
 8053bff:	0f 8d eb 00 00 00    	jge    8053cf0 <_realloc_r+0x160>
 8053c05:	8b 0d 28 79 05 08    	mov    0x8057928,%ecx
 8053c0b:	8d 14 1e             	lea    (%esi,%ebx,1),%edx
 8053c0e:	39 d1                	cmp    %edx,%ecx
 8053c10:	89 4d cc             	mov    %ecx,-0x34(%ebp)
 8053c13:	0f 84 6f 02 00 00    	je     8053e88 <_realloc_r+0x2f8>
 8053c19:	8b 4a 04             	mov    0x4(%edx),%ecx
 8053c1c:	89 c8                	mov    %ecx,%eax
 8053c1e:	83 e0 fe             	and    $0xfffffffe,%eax
 8053c21:	f6 44 02 04 01       	testb  $0x1,0x4(%edx,%eax,1)
 8053c26:	0f 84 f4 00 00 00    	je     8053d20 <_realloc_r+0x190>
 8053c2c:	c7 45 d0 00 00 00 00 	movl   $0x0,-0x30(%ebp)
 8053c33:	31 d2                	xor    %edx,%edx
 8053c35:	f6 45 d4 01          	testb  $0x1,-0x2c(%ebp)
 8053c39:	0f 85 39 01 00 00    	jne    8053d78 <_realloc_r+0x1e8>
 8053c3f:	89 f1                	mov    %esi,%ecx
 8053c41:	2b 4f f8             	sub    -0x8(%edi),%ecx
 8053c44:	8b 41 04             	mov    0x4(%ecx),%eax
 8053c47:	83 e0 fc             	and    $0xfffffffc,%eax
 8053c4a:	85 d2                	test   %edx,%edx
 8053c4c:	0f 84 f6 02 00 00    	je     8053f48 <_realloc_r+0x3b8>
 8053c52:	3b 55 cc             	cmp    -0x34(%ebp),%edx
 8053c55:	0f 84 f5 02 00 00    	je     8053f50 <_realloc_r+0x3c0>
 8053c5b:	89 55 d4             	mov    %edx,-0x2c(%ebp)
 8053c5e:	8b 55 d0             	mov    -0x30(%ebp),%edx
 8053c61:	01 d8                	add    %ebx,%eax
 8053c63:	01 c2                	add    %eax,%edx
 8053c65:	3b 55 d8             	cmp    -0x28(%ebp),%edx
 8053c68:	89 55 d0             	mov    %edx,-0x30(%ebp)
 8053c6b:	8b 55 d4             	mov    -0x2c(%ebp),%edx
 8053c6e:	0f 8c ac 01 00 00    	jl     8053e20 <_realloc_r+0x290>
 8053c74:	8b 42 0c             	mov    0xc(%edx),%eax
 8053c77:	83 eb 04             	sub    $0x4,%ebx
 8053c7a:	8b 52 08             	mov    0x8(%edx),%edx
 8053c7d:	83 fb 24             	cmp    $0x24,%ebx
 8053c80:	8d 71 08             	lea    0x8(%ecx),%esi
 8053c83:	89 42 0c             	mov    %eax,0xc(%edx)
 8053c86:	89 50 08             	mov    %edx,0x8(%eax)
 8053c89:	8b 41 0c             	mov    0xc(%ecx),%eax
 8053c8c:	8b 51 08             	mov    0x8(%ecx),%edx
 8053c8f:	89 42 0c             	mov    %eax,0xc(%edx)
 8053c92:	89 50 08             	mov    %edx,0x8(%eax)
 8053c95:	0f 87 85 03 00 00    	ja     8054020 <_realloc_r+0x490>
 8053c9b:	83 fb 13             	cmp    $0x13,%ebx
 8053c9e:	89 f0                	mov    %esi,%eax
 8053ca0:	76 1a                	jbe    8053cbc <_realloc_r+0x12c>
 8053ca2:	8b 07                	mov    (%edi),%eax
 8053ca4:	83 fb 1b             	cmp    $0x1b,%ebx
 8053ca7:	89 41 08             	mov    %eax,0x8(%ecx)
 8053caa:	8b 47 04             	mov    0x4(%edi),%eax
 8053cad:	89 41 0c             	mov    %eax,0xc(%ecx)
 8053cb0:	0f 87 8f 03 00 00    	ja     8054045 <_realloc_r+0x4b5>
 8053cb6:	8d 41 10             	lea    0x10(%ecx),%eax
 8053cb9:	83 c7 08             	add    $0x8,%edi
 8053cbc:	8b 17                	mov    (%edi),%edx
 8053cbe:	8b 5d d0             	mov    -0x30(%ebp),%ebx
 8053cc1:	89 10                	mov    %edx,(%eax)
 8053cc3:	8b 57 04             	mov    0x4(%edi),%edx
 8053cc6:	89 50 04             	mov    %edx,0x4(%eax)
 8053cc9:	8b 57 08             	mov    0x8(%edi),%edx
 8053ccc:	89 f7                	mov    %esi,%edi
 8053cce:	89 ce                	mov    %ecx,%esi
 8053cd0:	89 50 08             	mov    %edx,0x8(%eax)
 8053cd3:	8b 41 04             	mov    0x4(%ecx),%eax
 8053cd6:	eb 1b                	jmp    8053cf3 <_realloc_r+0x163>
 8053cd8:	83 e2 f8             	and    $0xfffffff8,%edx
 8053cdb:	89 55 dc             	mov    %edx,-0x24(%ebp)
 8053cde:	89 55 d8             	mov    %edx,-0x28(%ebp)
 8053ce1:	c1 ea 1f             	shr    $0x1f,%edx
 8053ce4:	e9 ff fe ff ff       	jmp    8053be8 <_realloc_r+0x58>
 8053ce9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 8053cf0:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 8053cf3:	89 da                	mov    %ebx,%edx
 8053cf5:	2b 55 dc             	sub    -0x24(%ebp),%edx
 8053cf8:	83 fa 0f             	cmp    $0xf,%edx
 8053cfb:	77 4b                	ja     8053d48 <_realloc_r+0x1b8>
 8053cfd:	83 e0 01             	and    $0x1,%eax
 8053d00:	09 d8                	or     %ebx,%eax
 8053d02:	89 46 04             	mov    %eax,0x4(%esi)
 8053d05:	83 4c 1e 04 01       	orl    $0x1,0x4(%esi,%ebx,1)
 8053d0a:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 8053d0d:	89 04 24             	mov    %eax,(%esp)
 8053d10:	e8 eb c1 ff ff       	call   804ff00 <__malloc_unlock>
 8053d15:	89 f8                	mov    %edi,%eax
 8053d17:	83 c4 3c             	add    $0x3c,%esp
 8053d1a:	5b                   	pop    %ebx
 8053d1b:	5e                   	pop    %esi
 8053d1c:	5f                   	pop    %edi
 8053d1d:	5d                   	pop    %ebp
 8053d1e:	c3                   	ret    
 8053d1f:	90                   	nop
 8053d20:	83 e1 fc             	and    $0xfffffffc,%ecx
 8053d23:	89 4d d0             	mov    %ecx,-0x30(%ebp)
 8053d26:	01 d9                	add    %ebx,%ecx
 8053d28:	3b 4d d8             	cmp    -0x28(%ebp),%ecx
 8053d2b:	0f 8c 04 ff ff ff    	jl     8053c35 <_realloc_r+0xa5>
 8053d31:	8b 5a 0c             	mov    0xc(%edx),%ebx
 8053d34:	8b 52 08             	mov    0x8(%edx),%edx
 8053d37:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 8053d3a:	89 5a 0c             	mov    %ebx,0xc(%edx)
 8053d3d:	89 53 08             	mov    %edx,0x8(%ebx)
 8053d40:	89 cb                	mov    %ecx,%ebx
 8053d42:	eb af                	jmp    8053cf3 <_realloc_r+0x163>
 8053d44:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8053d48:	8b 5d dc             	mov    -0x24(%ebp),%ebx
 8053d4b:	83 e0 01             	and    $0x1,%eax
 8053d4e:	09 d8                	or     %ebx,%eax
 8053d50:	89 46 04             	mov    %eax,0x4(%esi)
 8053d53:	89 d0                	mov    %edx,%eax
 8053d55:	8d 0c 1e             	lea    (%esi,%ebx,1),%ecx
 8053d58:	83 c8 01             	or     $0x1,%eax
 8053d5b:	89 41 04             	mov    %eax,0x4(%ecx)
 8053d5e:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 8053d61:	83 4c 11 04 01       	orl    $0x1,0x4(%ecx,%edx,1)
 8053d66:	83 c1 08             	add    $0x8,%ecx
 8053d69:	89 4c 24 04          	mov    %ecx,0x4(%esp)
 8053d6d:	89 04 24             	mov    %eax,(%esp)
 8053d70:	e8 ab b3 ff ff       	call   804f120 <_free_r>
 8053d75:	eb 93                	jmp    8053d0a <_realloc_r+0x17a>
 8053d77:	90                   	nop
 8053d78:	8b 45 e0             	mov    -0x20(%ebp),%eax
 8053d7b:	89 44 24 04          	mov    %eax,0x4(%esp)
 8053d7f:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 8053d82:	89 04 24             	mov    %eax,(%esp)
 8053d85:	e8 46 b9 ff ff       	call   804f6d0 <_malloc_r>
 8053d8a:	85 c0                	test   %eax,%eax
 8053d8c:	89 c1                	mov    %eax,%ecx
 8053d8e:	0f 84 65 03 00 00    	je     80540f9 <_realloc_r+0x569>
 8053d94:	8b 47 fc             	mov    -0x4(%edi),%eax
 8053d97:	8d 51 f8             	lea    -0x8(%ecx),%edx
 8053d9a:	89 55 e0             	mov    %edx,-0x20(%ebp)
 8053d9d:	89 c2                	mov    %eax,%edx
 8053d9f:	83 e2 fe             	and    $0xfffffffe,%edx
 8053da2:	01 f2                	add    %esi,%edx
 8053da4:	39 55 e0             	cmp    %edx,-0x20(%ebp)
 8053da7:	0f 84 63 02 00 00    	je     8054010 <_realloc_r+0x480>
 8053dad:	83 eb 04             	sub    $0x4,%ebx
 8053db0:	83 fb 24             	cmp    $0x24,%ebx
 8053db3:	0f 87 6f 01 00 00    	ja     8053f28 <_realloc_r+0x398>
 8053db9:	83 fb 13             	cmp    $0x13,%ebx
 8053dbc:	0f 87 ee 00 00 00    	ja     8053eb0 <_realloc_r+0x320>
 8053dc2:	89 c8                	mov    %ecx,%eax
 8053dc4:	89 fa                	mov    %edi,%edx
 8053dc6:	8b 1a                	mov    (%edx),%ebx
 8053dc8:	89 18                	mov    %ebx,(%eax)
 8053dca:	8b 5a 04             	mov    0x4(%edx),%ebx
 8053dcd:	89 58 04             	mov    %ebx,0x4(%eax)
 8053dd0:	8b 52 08             	mov    0x8(%edx),%edx
 8053dd3:	89 50 08             	mov    %edx,0x8(%eax)
 8053dd6:	8b 75 e4             	mov    -0x1c(%ebp),%esi
 8053dd9:	89 7c 24 04          	mov    %edi,0x4(%esp)
 8053ddd:	89 4d e0             	mov    %ecx,-0x20(%ebp)
 8053de0:	89 34 24             	mov    %esi,(%esp)
 8053de3:	e8 38 b3 ff ff       	call   804f120 <_free_r>
 8053de8:	89 34 24             	mov    %esi,(%esp)
 8053deb:	e8 10 c1 ff ff       	call   804ff00 <__malloc_unlock>
 8053df0:	8b 4d e0             	mov    -0x20(%ebp),%ecx
 8053df3:	83 c4 3c             	add    $0x3c,%esp
 8053df6:	5b                   	pop    %ebx
 8053df7:	5e                   	pop    %esi
 8053df8:	5f                   	pop    %edi
 8053df9:	89 c8                	mov    %ecx,%eax
 8053dfb:	5d                   	pop    %ebp
 8053dfc:	c3                   	ret    
 8053dfd:	8d 76 00             	lea    0x0(%esi),%esi
 8053e00:	89 45 0c             	mov    %eax,0xc(%ebp)
 8053e03:	83 c4 3c             	add    $0x3c,%esp
 8053e06:	5b                   	pop    %ebx
 8053e07:	5e                   	pop    %esi
 8053e08:	5f                   	pop    %edi
 8053e09:	5d                   	pop    %ebp
 8053e0a:	e9 c1 b8 ff ff       	jmp    804f6d0 <_malloc_r>
 8053e0f:	90                   	nop
 8053e10:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 8053e13:	c7 00 0c 00 00 00    	movl   $0xc,(%eax)
 8053e19:	31 c0                	xor    %eax,%eax
 8053e1b:	e9 f7 fe ff ff       	jmp    8053d17 <_realloc_r+0x187>
 8053e20:	89 c2                	mov    %eax,%edx
 8053e22:	3b 55 d8             	cmp    -0x28(%ebp),%edx
 8053e25:	0f 8c 4d ff ff ff    	jl     8053d78 <_realloc_r+0x1e8>
 8053e2b:	8b 71 08             	mov    0x8(%ecx),%esi
 8053e2e:	83 eb 04             	sub    $0x4,%ebx
 8053e31:	8b 41 0c             	mov    0xc(%ecx),%eax
 8053e34:	83 fb 24             	cmp    $0x24,%ebx
 8053e37:	89 46 0c             	mov    %eax,0xc(%esi)
 8053e3a:	89 70 08             	mov    %esi,0x8(%eax)
 8053e3d:	8d 71 08             	lea    0x8(%ecx),%esi
 8053e40:	0f 87 88 00 00 00    	ja     8053ece <_realloc_r+0x33e>
 8053e46:	83 fb 13             	cmp    $0x13,%ebx
 8053e49:	89 f0                	mov    %esi,%eax
 8053e4b:	76 1a                	jbe    8053e67 <_realloc_r+0x2d7>
 8053e4d:	8b 07                	mov    (%edi),%eax
 8053e4f:	83 fb 1b             	cmp    $0x1b,%ebx
 8053e52:	89 41 08             	mov    %eax,0x8(%ecx)
 8053e55:	8b 47 04             	mov    0x4(%edi),%eax
 8053e58:	89 41 0c             	mov    %eax,0xc(%ecx)
 8053e5b:	0f 87 17 02 00 00    	ja     8054078 <_realloc_r+0x4e8>
 8053e61:	8d 41 10             	lea    0x10(%ecx),%eax
 8053e64:	83 c7 08             	add    $0x8,%edi
 8053e67:	8b 1f                	mov    (%edi),%ebx
 8053e69:	89 18                	mov    %ebx,(%eax)
 8053e6b:	8b 5f 04             	mov    0x4(%edi),%ebx
 8053e6e:	89 58 04             	mov    %ebx,0x4(%eax)
 8053e71:	8b 5f 08             	mov    0x8(%edi),%ebx
 8053e74:	89 f7                	mov    %esi,%edi
 8053e76:	89 ce                	mov    %ecx,%esi
 8053e78:	89 58 08             	mov    %ebx,0x8(%eax)
 8053e7b:	89 d3                	mov    %edx,%ebx
 8053e7d:	8b 41 04             	mov    0x4(%ecx),%eax
 8053e80:	e9 6e fe ff ff       	jmp    8053cf3 <_realloc_r+0x163>
 8053e85:	8d 76 00             	lea    0x0(%esi),%esi
 8053e88:	8b 45 cc             	mov    -0x34(%ebp),%eax
 8053e8b:	8b 55 dc             	mov    -0x24(%ebp),%edx
 8053e8e:	8b 48 04             	mov    0x4(%eax),%ecx
 8053e91:	83 c2 10             	add    $0x10,%edx
 8053e94:	89 4d d0             	mov    %ecx,-0x30(%ebp)
 8053e97:	83 65 d0 fc          	andl   $0xfffffffc,-0x30(%ebp)
 8053e9b:	8b 4d d0             	mov    -0x30(%ebp),%ecx
 8053e9e:	01 d9                	add    %ebx,%ecx
 8053ea0:	39 d1                	cmp    %edx,%ecx
 8053ea2:	7d 54                	jge    8053ef8 <_realloc_r+0x368>
 8053ea4:	89 c2                	mov    %eax,%edx
 8053ea6:	e9 8a fd ff ff       	jmp    8053c35 <_realloc_r+0xa5>
 8053eab:	90                   	nop
 8053eac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8053eb0:	8b 07                	mov    (%edi),%eax
 8053eb2:	83 fb 1b             	cmp    $0x1b,%ebx
 8053eb5:	89 01                	mov    %eax,(%ecx)
 8053eb7:	8b 47 04             	mov    0x4(%edi),%eax
 8053eba:	89 41 04             	mov    %eax,0x4(%ecx)
 8053ebd:	0f 87 2d 01 00 00    	ja     8053ff0 <_realloc_r+0x460>
 8053ec3:	8d 41 08             	lea    0x8(%ecx),%eax
 8053ec6:	8d 57 08             	lea    0x8(%edi),%edx
 8053ec9:	e9 f8 fe ff ff       	jmp    8053dc6 <_realloc_r+0x236>
 8053ece:	89 5c 24 08          	mov    %ebx,0x8(%esp)
 8053ed2:	89 7c 24 04          	mov    %edi,0x4(%esp)
 8053ed6:	89 f7                	mov    %esi,%edi
 8053ed8:	89 34 24             	mov    %esi,(%esp)
 8053edb:	89 55 d8             	mov    %edx,-0x28(%ebp)
 8053ede:	89 4d e0             	mov    %ecx,-0x20(%ebp)
 8053ee1:	e8 ca fb ff ff       	call   8053ab0 <memmove>
 8053ee6:	8b 4d e0             	mov    -0x20(%ebp),%ecx
 8053ee9:	8b 55 d8             	mov    -0x28(%ebp),%edx
 8053eec:	8b 41 04             	mov    0x4(%ecx),%eax
 8053eef:	89 ce                	mov    %ecx,%esi
 8053ef1:	89 d3                	mov    %edx,%ebx
 8053ef3:	e9 fb fd ff ff       	jmp    8053cf3 <_realloc_r+0x163>
 8053ef8:	8b 5d dc             	mov    -0x24(%ebp),%ebx
 8053efb:	29 d9                	sub    %ebx,%ecx
 8053efd:	01 de                	add    %ebx,%esi
 8053eff:	83 c9 01             	or     $0x1,%ecx
 8053f02:	89 35 28 79 05 08    	mov    %esi,0x8057928
 8053f08:	89 4e 04             	mov    %ecx,0x4(%esi)
 8053f0b:	8b 47 fc             	mov    -0x4(%edi),%eax
 8053f0e:	83 e0 01             	and    $0x1,%eax
 8053f11:	09 d8                	or     %ebx,%eax
 8053f13:	89 47 fc             	mov    %eax,-0x4(%edi)
 8053f16:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 8053f19:	89 04 24             	mov    %eax,(%esp)
 8053f1c:	e8 df bf ff ff       	call   804ff00 <__malloc_unlock>
 8053f21:	89 f8                	mov    %edi,%eax
 8053f23:	e9 ef fd ff ff       	jmp    8053d17 <_realloc_r+0x187>
 8053f28:	89 0c 24             	mov    %ecx,(%esp)
 8053f2b:	89 5c 24 08          	mov    %ebx,0x8(%esp)
 8053f2f:	89 7c 24 04          	mov    %edi,0x4(%esp)
 8053f33:	89 4d e0             	mov    %ecx,-0x20(%ebp)
 8053f36:	e8 75 fb ff ff       	call   8053ab0 <memmove>
 8053f3b:	8b 4d e0             	mov    -0x20(%ebp),%ecx
 8053f3e:	e9 93 fe ff ff       	jmp    8053dd6 <_realloc_r+0x246>
 8053f43:	90                   	nop
 8053f44:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8053f48:	8d 14 18             	lea    (%eax,%ebx,1),%edx
 8053f4b:	e9 d2 fe ff ff       	jmp    8053e22 <_realloc_r+0x292>
 8053f50:	8d 14 18             	lea    (%eax,%ebx,1),%edx
 8053f53:	8b 45 d0             	mov    -0x30(%ebp),%eax
 8053f56:	01 d0                	add    %edx,%eax
 8053f58:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 8053f5b:	8b 45 dc             	mov    -0x24(%ebp),%eax
 8053f5e:	83 c0 10             	add    $0x10,%eax
 8053f61:	39 45 d4             	cmp    %eax,-0x2c(%ebp)
 8053f64:	0f 8c b8 fe ff ff    	jl     8053e22 <_realloc_r+0x292>
 8053f6a:	8b 41 0c             	mov    0xc(%ecx),%eax
 8053f6d:	83 eb 04             	sub    $0x4,%ebx
 8053f70:	8b 51 08             	mov    0x8(%ecx),%edx
 8053f73:	83 fb 24             	cmp    $0x24,%ebx
 8053f76:	8d 71 08             	lea    0x8(%ecx),%esi
 8053f79:	89 42 0c             	mov    %eax,0xc(%edx)
 8053f7c:	89 50 08             	mov    %edx,0x8(%eax)
 8053f7f:	0f 87 3d 01 00 00    	ja     80540c2 <_realloc_r+0x532>
 8053f85:	83 fb 13             	cmp    $0x13,%ebx
 8053f88:	89 f0                	mov    %esi,%eax
 8053f8a:	76 1a                	jbe    8053fa6 <_realloc_r+0x416>
 8053f8c:	8b 07                	mov    (%edi),%eax
 8053f8e:	83 fb 1b             	cmp    $0x1b,%ebx
 8053f91:	89 41 08             	mov    %eax,0x8(%ecx)
 8053f94:	8b 47 04             	mov    0x4(%edi),%eax
 8053f97:	89 41 0c             	mov    %eax,0xc(%ecx)
 8053f9a:	0f 87 3d 01 00 00    	ja     80540dd <_realloc_r+0x54d>
 8053fa0:	8d 41 10             	lea    0x10(%ecx),%eax
 8053fa3:	83 c7 08             	add    $0x8,%edi
 8053fa6:	8b 17                	mov    (%edi),%edx
 8053fa8:	89 10                	mov    %edx,(%eax)
 8053faa:	8b 57 04             	mov    0x4(%edi),%edx
 8053fad:	89 50 04             	mov    %edx,0x4(%eax)
 8053fb0:	8b 57 08             	mov    0x8(%edi),%edx
 8053fb3:	89 50 08             	mov    %edx,0x8(%eax)
 8053fb6:	8b 5d dc             	mov    -0x24(%ebp),%ebx
 8053fb9:	8b 7d d4             	mov    -0x2c(%ebp),%edi
 8053fbc:	89 d8                	mov    %ebx,%eax
 8053fbe:	29 df                	sub    %ebx,%edi
 8053fc0:	01 c8                	add    %ecx,%eax
 8053fc2:	83 cf 01             	or     $0x1,%edi
 8053fc5:	a3 28 79 05 08       	mov    %eax,0x8057928
 8053fca:	89 78 04             	mov    %edi,0x4(%eax)
 8053fcd:	8b 41 04             	mov    0x4(%ecx),%eax
 8053fd0:	83 e0 01             	and    $0x1,%eax
 8053fd3:	09 d8                	or     %ebx,%eax
 8053fd5:	89 41 04             	mov    %eax,0x4(%ecx)
 8053fd8:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 8053fdb:	89 04 24             	mov    %eax,(%esp)
 8053fde:	e8 1d bf ff ff       	call   804ff00 <__malloc_unlock>
 8053fe3:	89 f0                	mov    %esi,%eax
 8053fe5:	e9 2d fd ff ff       	jmp    8053d17 <_realloc_r+0x187>
 8053fea:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 8053ff0:	8b 47 08             	mov    0x8(%edi),%eax
 8053ff3:	83 fb 24             	cmp    $0x24,%ebx
 8053ff6:	89 41 08             	mov    %eax,0x8(%ecx)
 8053ff9:	8b 47 0c             	mov    0xc(%edi),%eax
 8053ffc:	89 41 0c             	mov    %eax,0xc(%ecx)
 8053fff:	74 60                	je     8054061 <_realloc_r+0x4d1>
 8054001:	8d 41 10             	lea    0x10(%ecx),%eax
 8054004:	8d 57 10             	lea    0x10(%edi),%edx
 8054007:	e9 ba fd ff ff       	jmp    8053dc6 <_realloc_r+0x236>
 805400c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8054010:	8b 51 fc             	mov    -0x4(%ecx),%edx
 8054013:	83 e2 fc             	and    $0xfffffffc,%edx
 8054016:	01 d3                	add    %edx,%ebx
 8054018:	e9 d6 fc ff ff       	jmp    8053cf3 <_realloc_r+0x163>
 805401d:	8d 76 00             	lea    0x0(%esi),%esi
 8054020:	89 5c 24 08          	mov    %ebx,0x8(%esp)
 8054024:	89 7c 24 04          	mov    %edi,0x4(%esp)
 8054028:	89 f7                	mov    %esi,%edi
 805402a:	89 34 24             	mov    %esi,(%esp)
 805402d:	89 4d e0             	mov    %ecx,-0x20(%ebp)
 8054030:	e8 7b fa ff ff       	call   8053ab0 <memmove>
 8054035:	8b 4d e0             	mov    -0x20(%ebp),%ecx
 8054038:	8b 5d d0             	mov    -0x30(%ebp),%ebx
 805403b:	8b 41 04             	mov    0x4(%ecx),%eax
 805403e:	89 ce                	mov    %ecx,%esi
 8054040:	e9 ae fc ff ff       	jmp    8053cf3 <_realloc_r+0x163>
 8054045:	8b 47 08             	mov    0x8(%edi),%eax
 8054048:	83 fb 24             	cmp    $0x24,%ebx
 805404b:	89 41 10             	mov    %eax,0x10(%ecx)
 805404e:	8b 47 0c             	mov    0xc(%edi),%eax
 8054051:	89 41 14             	mov    %eax,0x14(%ecx)
 8054054:	74 3e                	je     8054094 <_realloc_r+0x504>
 8054056:	8d 41 18             	lea    0x18(%ecx),%eax
 8054059:	83 c7 10             	add    $0x10,%edi
 805405c:	e9 5b fc ff ff       	jmp    8053cbc <_realloc_r+0x12c>
 8054061:	8b 47 10             	mov    0x10(%edi),%eax
 8054064:	8d 57 18             	lea    0x18(%edi),%edx
 8054067:	89 41 10             	mov    %eax,0x10(%ecx)
 805406a:	8b 5f 14             	mov    0x14(%edi),%ebx
 805406d:	8d 41 18             	lea    0x18(%ecx),%eax
 8054070:	89 59 14             	mov    %ebx,0x14(%ecx)
 8054073:	e9 4e fd ff ff       	jmp    8053dc6 <_realloc_r+0x236>
 8054078:	8b 47 08             	mov    0x8(%edi),%eax
 805407b:	83 fb 24             	cmp    $0x24,%ebx
 805407e:	89 41 10             	mov    %eax,0x10(%ecx)
 8054081:	8b 47 0c             	mov    0xc(%edi),%eax
 8054084:	89 41 14             	mov    %eax,0x14(%ecx)
 8054087:	74 22                	je     80540ab <_realloc_r+0x51b>
 8054089:	8d 41 18             	lea    0x18(%ecx),%eax
 805408c:	83 c7 10             	add    $0x10,%edi
 805408f:	e9 d3 fd ff ff       	jmp    8053e67 <_realloc_r+0x2d7>
 8054094:	8b 47 10             	mov    0x10(%edi),%eax
 8054097:	83 c7 18             	add    $0x18,%edi
 805409a:	89 41 18             	mov    %eax,0x18(%ecx)
 805409d:	8b 57 fc             	mov    -0x4(%edi),%edx
 80540a0:	8d 41 20             	lea    0x20(%ecx),%eax
 80540a3:	89 51 1c             	mov    %edx,0x1c(%ecx)
 80540a6:	e9 11 fc ff ff       	jmp    8053cbc <_realloc_r+0x12c>
 80540ab:	8b 47 10             	mov    0x10(%edi),%eax
 80540ae:	83 c7 18             	add    $0x18,%edi
 80540b1:	89 41 18             	mov    %eax,0x18(%ecx)
 80540b4:	8b 5f fc             	mov    -0x4(%edi),%ebx
 80540b7:	8d 41 20             	lea    0x20(%ecx),%eax
 80540ba:	89 59 1c             	mov    %ebx,0x1c(%ecx)
 80540bd:	e9 a5 fd ff ff       	jmp    8053e67 <_realloc_r+0x2d7>
 80540c2:	89 5c 24 08          	mov    %ebx,0x8(%esp)
 80540c6:	89 7c 24 04          	mov    %edi,0x4(%esp)
 80540ca:	89 34 24             	mov    %esi,(%esp)
 80540cd:	89 4d e0             	mov    %ecx,-0x20(%ebp)
 80540d0:	e8 db f9 ff ff       	call   8053ab0 <memmove>
 80540d5:	8b 4d e0             	mov    -0x20(%ebp),%ecx
 80540d8:	e9 d9 fe ff ff       	jmp    8053fb6 <_realloc_r+0x426>
 80540dd:	8b 47 08             	mov    0x8(%edi),%eax
 80540e0:	83 fb 24             	cmp    $0x24,%ebx
 80540e3:	89 41 10             	mov    %eax,0x10(%ecx)
 80540e6:	8b 47 0c             	mov    0xc(%edi),%eax
 80540e9:	89 41 14             	mov    %eax,0x14(%ecx)
 80540ec:	74 1d                	je     805410b <_realloc_r+0x57b>
 80540ee:	8d 41 18             	lea    0x18(%ecx),%eax
 80540f1:	83 c7 10             	add    $0x10,%edi
 80540f4:	e9 ad fe ff ff       	jmp    8053fa6 <_realloc_r+0x416>
 80540f9:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 80540fc:	89 04 24             	mov    %eax,(%esp)
 80540ff:	e8 fc bd ff ff       	call   804ff00 <__malloc_unlock>
 8054104:	31 c0                	xor    %eax,%eax
 8054106:	e9 0c fc ff ff       	jmp    8053d17 <_realloc_r+0x187>
 805410b:	8b 47 10             	mov    0x10(%edi),%eax
 805410e:	83 c7 18             	add    $0x18,%edi
 8054111:	89 41 18             	mov    %eax,0x18(%ecx)
 8054114:	8b 57 fc             	mov    -0x4(%edi),%edx
 8054117:	8d 41 20             	lea    0x20(%ecx),%eax
 805411a:	89 51 1c             	mov    %edx,0x1c(%ecx)
 805411d:	e9 84 fe ff ff       	jmp    8053fa6 <_realloc_r+0x416>
 8054122:	66 90                	xchg   %ax,%ax
 8054124:	66 90                	xchg   %ax,%ax
 8054126:	66 90                	xchg   %ax,%ax
 8054128:	66 90                	xchg   %ax,%ax
 805412a:	66 90                	xchg   %ax,%ax
 805412c:	66 90                	xchg   %ax,%ax
 805412e:	66 90                	xchg   %ax,%ax

08054130 <cleanup_glue>:
 8054130:	55                   	push   %ebp
 8054131:	89 e5                	mov    %esp,%ebp
 8054133:	56                   	push   %esi
 8054134:	53                   	push   %ebx
 8054135:	83 ec 10             	sub    $0x10,%esp
 8054138:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 805413b:	8b 75 08             	mov    0x8(%ebp),%esi
 805413e:	8b 03                	mov    (%ebx),%eax
 8054140:	85 c0                	test   %eax,%eax
 8054142:	74 0c                	je     8054150 <cleanup_glue+0x20>
 8054144:	89 44 24 04          	mov    %eax,0x4(%esp)
 8054148:	89 34 24             	mov    %esi,(%esp)
 805414b:	e8 e0 ff ff ff       	call   8054130 <cleanup_glue>
 8054150:	89 5d 0c             	mov    %ebx,0xc(%ebp)
 8054153:	89 75 08             	mov    %esi,0x8(%ebp)
 8054156:	83 c4 10             	add    $0x10,%esp
 8054159:	5b                   	pop    %ebx
 805415a:	5e                   	pop    %esi
 805415b:	5d                   	pop    %ebp
 805415c:	e9 bf af ff ff       	jmp    804f120 <_free_r>
 8054161:	eb 0d                	jmp    8054170 <_reclaim_reent>
 8054163:	90                   	nop
 8054164:	90                   	nop
 8054165:	90                   	nop
 8054166:	90                   	nop
 8054167:	90                   	nop
 8054168:	90                   	nop
 8054169:	90                   	nop
 805416a:	90                   	nop
 805416b:	90                   	nop
 805416c:	90                   	nop
 805416d:	90                   	nop
 805416e:	90                   	nop
 805416f:	90                   	nop

08054170 <_reclaim_reent>:
 8054170:	55                   	push   %ebp
 8054171:	89 e5                	mov    %esp,%ebp
 8054173:	57                   	push   %edi
 8054174:	56                   	push   %esi
 8054175:	53                   	push   %ebx
 8054176:	83 ec 1c             	sub    $0x1c,%esp
 8054179:	8b 5d 08             	mov    0x8(%ebp),%ebx
 805417c:	3b 1d 20 74 05 08    	cmp    0x8057420,%ebx
 8054182:	0f 84 a6 00 00 00    	je     805422e <_reclaim_reent+0xbe>
 8054188:	8b 53 4c             	mov    0x4c(%ebx),%edx
 805418b:	85 d2                	test   %edx,%edx
 805418d:	74 46                	je     80541d5 <_reclaim_reent+0x65>
 805418f:	31 c0                	xor    %eax,%eax
 8054191:	31 f6                	xor    %esi,%esi
 8054193:	90                   	nop
 8054194:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8054198:	8b 04 82             	mov    (%edx,%eax,4),%eax
 805419b:	85 c0                	test   %eax,%eax
 805419d:	75 0b                	jne    80541aa <_reclaim_reent+0x3a>
 805419f:	eb 1e                	jmp    80541bf <_reclaim_reent+0x4f>
 80541a1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 80541a8:	89 f8                	mov    %edi,%eax
 80541aa:	8b 38                	mov    (%eax),%edi
 80541ac:	89 44 24 04          	mov    %eax,0x4(%esp)
 80541b0:	89 1c 24             	mov    %ebx,(%esp)
 80541b3:	e8 68 af ff ff       	call   804f120 <_free_r>
 80541b8:	85 ff                	test   %edi,%edi
 80541ba:	75 ec                	jne    80541a8 <_reclaim_reent+0x38>
 80541bc:	8b 53 4c             	mov    0x4c(%ebx),%edx
 80541bf:	83 c6 01             	add    $0x1,%esi
 80541c2:	83 fe 20             	cmp    $0x20,%esi
 80541c5:	89 f0                	mov    %esi,%eax
 80541c7:	75 cf                	jne    8054198 <_reclaim_reent+0x28>
 80541c9:	89 54 24 04          	mov    %edx,0x4(%esp)
 80541cd:	89 1c 24             	mov    %ebx,(%esp)
 80541d0:	e8 4b af ff ff       	call   804f120 <_free_r>
 80541d5:	8b 43 40             	mov    0x40(%ebx),%eax
 80541d8:	85 c0                	test   %eax,%eax
 80541da:	74 0c                	je     80541e8 <_reclaim_reent+0x78>
 80541dc:	89 44 24 04          	mov    %eax,0x4(%esp)
 80541e0:	89 1c 24             	mov    %ebx,(%esp)
 80541e3:	e8 38 af ff ff       	call   804f120 <_free_r>
 80541e8:	8b 83 48 01 00 00    	mov    0x148(%ebx),%eax
 80541ee:	85 c0                	test   %eax,%eax
 80541f0:	74 22                	je     8054214 <_reclaim_reent+0xa4>
 80541f2:	8d b3 4c 01 00 00    	lea    0x14c(%ebx),%esi
 80541f8:	39 f0                	cmp    %esi,%eax
 80541fa:	75 06                	jne    8054202 <_reclaim_reent+0x92>
 80541fc:	eb 16                	jmp    8054214 <_reclaim_reent+0xa4>
 80541fe:	66 90                	xchg   %ax,%ax
 8054200:	89 f8                	mov    %edi,%eax
 8054202:	8b 38                	mov    (%eax),%edi
 8054204:	89 44 24 04          	mov    %eax,0x4(%esp)
 8054208:	89 1c 24             	mov    %ebx,(%esp)
 805420b:	e8 10 af ff ff       	call   804f120 <_free_r>
 8054210:	39 fe                	cmp    %edi,%esi
 8054212:	75 ec                	jne    8054200 <_reclaim_reent+0x90>
 8054214:	8b 43 54             	mov    0x54(%ebx),%eax
 8054217:	85 c0                	test   %eax,%eax
 8054219:	74 0c                	je     8054227 <_reclaim_reent+0xb7>
 805421b:	89 44 24 04          	mov    %eax,0x4(%esp)
 805421f:	89 1c 24             	mov    %ebx,(%esp)
 8054222:	e8 f9 ae ff ff       	call   804f120 <_free_r>
 8054227:	8b 43 38             	mov    0x38(%ebx),%eax
 805422a:	85 c0                	test   %eax,%eax
 805422c:	75 08                	jne    8054236 <_reclaim_reent+0xc6>
 805422e:	83 c4 1c             	add    $0x1c,%esp
 8054231:	5b                   	pop    %ebx
 8054232:	5e                   	pop    %esi
 8054233:	5f                   	pop    %edi
 8054234:	5d                   	pop    %ebp
 8054235:	c3                   	ret    
 8054236:	89 1c 24             	mov    %ebx,(%esp)
 8054239:	ff 53 3c             	call   *0x3c(%ebx)
 805423c:	8b 83 e0 02 00 00    	mov    0x2e0(%ebx),%eax
 8054242:	85 c0                	test   %eax,%eax
 8054244:	74 e8                	je     805422e <_reclaim_reent+0xbe>
 8054246:	89 1c 24             	mov    %ebx,(%esp)
 8054249:	89 44 24 04          	mov    %eax,0x4(%esp)
 805424d:	e8 de fe ff ff       	call   8054130 <cleanup_glue>
 8054252:	83 c4 1c             	add    $0x1c,%esp
 8054255:	5b                   	pop    %ebx
 8054256:	5e                   	pop    %esi
 8054257:	5f                   	pop    %edi
 8054258:	5d                   	pop    %ebp
 8054259:	c3                   	ret    
 805425a:	66 90                	xchg   %ax,%ax
 805425c:	66 90                	xchg   %ax,%ax
 805425e:	66 90                	xchg   %ax,%ax

08054260 <__swbuf_r>:
 8054260:	55                   	push   %ebp
 8054261:	89 e5                	mov    %esp,%ebp
 8054263:	57                   	push   %edi
 8054264:	56                   	push   %esi
 8054265:	53                   	push   %ebx
 8054266:	83 ec 1c             	sub    $0x1c,%esp
 8054269:	8b 75 08             	mov    0x8(%ebp),%esi
 805426c:	8b 5d 10             	mov    0x10(%ebp),%ebx
 805426f:	85 f6                	test   %esi,%esi
 8054271:	74 0b                	je     805427e <__swbuf_r+0x1e>
 8054273:	8b 46 38             	mov    0x38(%esi),%eax
 8054276:	85 c0                	test   %eax,%eax
 8054278:	0f 84 da 00 00 00    	je     8054358 <__swbuf_r+0xf8>
 805427e:	8b 43 18             	mov    0x18(%ebx),%eax
 8054281:	89 43 08             	mov    %eax,0x8(%ebx)
 8054284:	0f b7 43 0c          	movzwl 0xc(%ebx),%eax
 8054288:	a8 08                	test   $0x8,%al
 805428a:	0f 84 a8 00 00 00    	je     8054338 <__swbuf_r+0xd8>
 8054290:	8b 53 10             	mov    0x10(%ebx),%edx
 8054293:	85 d2                	test   %edx,%edx
 8054295:	0f 84 9d 00 00 00    	je     8054338 <__swbuf_r+0xd8>
 805429b:	f6 c4 20             	test   $0x20,%ah
 805429e:	0f b6 7d 0c          	movzbl 0xc(%ebp),%edi
 80542a2:	74 3c                	je     80542e0 <__swbuf_r+0x80>
 80542a4:	8b 03                	mov    (%ebx),%eax
 80542a6:	89 c1                	mov    %eax,%ecx
 80542a8:	29 d1                	sub    %edx,%ecx
 80542aa:	3b 4b 14             	cmp    0x14(%ebx),%ecx
 80542ad:	89 ca                	mov    %ecx,%edx
 80542af:	7d 4a                	jge    80542fb <__swbuf_r+0x9b>
 80542b1:	83 c2 01             	add    $0x1,%edx
 80542b4:	8d 48 01             	lea    0x1(%eax),%ecx
 80542b7:	89 0b                	mov    %ecx,(%ebx)
 80542b9:	89 f9                	mov    %edi,%ecx
 80542bb:	83 6b 08 01          	subl   $0x1,0x8(%ebx)
 80542bf:	88 08                	mov    %cl,(%eax)
 80542c1:	39 53 14             	cmp    %edx,0x14(%ebx)
 80542c4:	74 52                	je     8054318 <__swbuf_r+0xb8>
 80542c6:	f6 43 0c 01          	testb  $0x1,0xc(%ebx)
 80542ca:	89 f8                	mov    %edi,%eax
 80542cc:	74 05                	je     80542d3 <__swbuf_r+0x73>
 80542ce:	83 ff 0a             	cmp    $0xa,%edi
 80542d1:	74 45                	je     8054318 <__swbuf_r+0xb8>
 80542d3:	83 c4 1c             	add    $0x1c,%esp
 80542d6:	5b                   	pop    %ebx
 80542d7:	5e                   	pop    %esi
 80542d8:	5f                   	pop    %edi
 80542d9:	5d                   	pop    %ebp
 80542da:	c3                   	ret    
 80542db:	90                   	nop
 80542dc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 80542e0:	80 cc 20             	or     $0x20,%ah
 80542e3:	66 89 43 0c          	mov    %ax,0xc(%ebx)
 80542e7:	8b 03                	mov    (%ebx),%eax
 80542e9:	81 63 64 ff df ff ff 	andl   $0xffffdfff,0x64(%ebx)
 80542f0:	89 c1                	mov    %eax,%ecx
 80542f2:	29 d1                	sub    %edx,%ecx
 80542f4:	3b 4b 14             	cmp    0x14(%ebx),%ecx
 80542f7:	89 ca                	mov    %ecx,%edx
 80542f9:	7c b6                	jl     80542b1 <__swbuf_r+0x51>
 80542fb:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 80542ff:	89 34 24             	mov    %esi,(%esp)
 8054302:	e8 59 a8 ff ff       	call   804eb60 <_fflush_r>
 8054307:	85 c0                	test   %eax,%eax
 8054309:	75 5d                	jne    8054368 <__swbuf_r+0x108>
 805430b:	8b 03                	mov    (%ebx),%eax
 805430d:	ba 01 00 00 00       	mov    $0x1,%edx
 8054312:	eb a0                	jmp    80542b4 <__swbuf_r+0x54>
 8054314:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8054318:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 805431c:	89 34 24             	mov    %esi,(%esp)
 805431f:	e8 3c a8 ff ff       	call   804eb60 <_fflush_r>
 8054324:	85 c0                	test   %eax,%eax
 8054326:	75 40                	jne    8054368 <__swbuf_r+0x108>
 8054328:	83 c4 1c             	add    $0x1c,%esp
 805432b:	89 f8                	mov    %edi,%eax
 805432d:	5b                   	pop    %ebx
 805432e:	5e                   	pop    %esi
 805432f:	5f                   	pop    %edi
 8054330:	5d                   	pop    %ebp
 8054331:	c3                   	ret    
 8054332:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 8054338:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 805433c:	89 34 24             	mov    %esi,(%esp)
 805433f:	e8 1c 91 ff ff       	call   804d460 <__swsetup_r>
 8054344:	85 c0                	test   %eax,%eax
 8054346:	75 20                	jne    8054368 <__swbuf_r+0x108>
 8054348:	0f b7 43 0c          	movzwl 0xc(%ebx),%eax
 805434c:	8b 53 10             	mov    0x10(%ebx),%edx
 805434f:	e9 47 ff ff ff       	jmp    805429b <__swbuf_r+0x3b>
 8054354:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8054358:	89 34 24             	mov    %esi,(%esp)
 805435b:	e8 70 a9 ff ff       	call   804ecd0 <__sinit>
 8054360:	e9 19 ff ff ff       	jmp    805427e <__swbuf_r+0x1e>
 8054365:	8d 76 00             	lea    0x0(%esi),%esi
 8054368:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 805436d:	e9 61 ff ff ff       	jmp    80542d3 <__swbuf_r+0x73>
 8054372:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 8054379:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

08054380 <__swbuf>:
 8054380:	55                   	push   %ebp
 8054381:	89 e5                	mov    %esp,%ebp
 8054383:	83 ec 18             	sub    $0x18,%esp
 8054386:	e8 e5 b0 ff ff       	call   804f470 <__getreent>
 805438b:	8b 55 0c             	mov    0xc(%ebp),%edx
 805438e:	89 54 24 08          	mov    %edx,0x8(%esp)
 8054392:	8b 55 08             	mov    0x8(%ebp),%edx
 8054395:	89 04 24             	mov    %eax,(%esp)
 8054398:	89 54 24 04          	mov    %edx,0x4(%esp)
 805439c:	e8 bf fe ff ff       	call   8054260 <__swbuf_r>
 80543a1:	c9                   	leave  
 80543a2:	c3                   	ret    
 80543a3:	66 90                	xchg   %ax,%ax
 80543a5:	66 90                	xchg   %ax,%ax
 80543a7:	66 90                	xchg   %ax,%ax
 80543a9:	66 90                	xchg   %ax,%ax
 80543ab:	66 90                	xchg   %ax,%ax
 80543ad:	66 90                	xchg   %ax,%ax
 80543af:	90                   	nop

080543b0 <_wcrtomb_r>:
 80543b0:	55                   	push   %ebp
 80543b1:	89 e5                	mov    %esp,%ebp
 80543b3:	57                   	push   %edi
 80543b4:	56                   	push   %esi
 80543b5:	53                   	push   %ebx
 80543b6:	83 ec 3c             	sub    $0x3c,%esp
 80543b9:	8b 7d 0c             	mov    0xc(%ebp),%edi
 80543bc:	8b 75 14             	mov    0x14(%ebp),%esi
 80543bf:	85 ff                	test   %edi,%edi
 80543c1:	74 45                	je     8054408 <_wcrtomb_r+0x58>
 80543c3:	8b 1d 28 7d 05 08    	mov    0x8057d28,%ebx
 80543c9:	e8 22 b1 ff ff       	call   804f4f0 <__locale_charset>
 80543ce:	89 74 24 10          	mov    %esi,0x10(%esp)
 80543d2:	89 7c 24 04          	mov    %edi,0x4(%esp)
 80543d6:	89 44 24 0c          	mov    %eax,0xc(%esp)
 80543da:	8b 45 10             	mov    0x10(%ebp),%eax
 80543dd:	89 44 24 08          	mov    %eax,0x8(%esp)
 80543e1:	8b 45 08             	mov    0x8(%ebp),%eax
 80543e4:	89 04 24             	mov    %eax,(%esp)
 80543e7:	ff d3                	call   *%ebx
 80543e9:	83 f8 ff             	cmp    $0xffffffff,%eax
 80543ec:	75 0f                	jne    80543fd <_wcrtomb_r+0x4d>
 80543ee:	8b 55 08             	mov    0x8(%ebp),%edx
 80543f1:	c7 06 00 00 00 00    	movl   $0x0,(%esi)
 80543f7:	c7 02 8a 00 00 00    	movl   $0x8a,(%edx)
 80543fd:	83 c4 3c             	add    $0x3c,%esp
 8054400:	5b                   	pop    %ebx
 8054401:	5e                   	pop    %esi
 8054402:	5f                   	pop    %edi
 8054403:	5d                   	pop    %ebp
 8054404:	c3                   	ret    
 8054405:	8d 76 00             	lea    0x0(%esi),%esi
 8054408:	8b 3d 28 7d 05 08    	mov    0x8057d28,%edi
 805440e:	e8 dd b0 ff ff       	call   804f4f0 <__locale_charset>
 8054413:	89 74 24 10          	mov    %esi,0x10(%esp)
 8054417:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 805441e:	00 
 805441f:	89 44 24 0c          	mov    %eax,0xc(%esp)
 8054423:	8d 45 de             	lea    -0x22(%ebp),%eax
 8054426:	89 44 24 04          	mov    %eax,0x4(%esp)
 805442a:	8b 45 08             	mov    0x8(%ebp),%eax
 805442d:	89 04 24             	mov    %eax,(%esp)
 8054430:	ff d7                	call   *%edi
 8054432:	eb b5                	jmp    80543e9 <_wcrtomb_r+0x39>
 8054434:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 805443a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

08054440 <wcrtomb>:
 8054440:	55                   	push   %ebp
 8054441:	89 e5                	mov    %esp,%ebp
 8054443:	57                   	push   %edi
 8054444:	56                   	push   %esi
 8054445:	53                   	push   %ebx
 8054446:	83 ec 3c             	sub    $0x3c,%esp
 8054449:	8b 7d 08             	mov    0x8(%ebp),%edi
 805444c:	e8 1f b0 ff ff       	call   804f470 <__getreent>
 8054451:	85 ff                	test   %edi,%edi
 8054453:	89 c3                	mov    %eax,%ebx
 8054455:	74 49                	je     80544a0 <wcrtomb+0x60>
 8054457:	8b 35 28 7d 05 08    	mov    0x8057d28,%esi
 805445d:	e8 8e b0 ff ff       	call   804f4f0 <__locale_charset>
 8054462:	8b 55 10             	mov    0x10(%ebp),%edx
 8054465:	89 7c 24 04          	mov    %edi,0x4(%esp)
 8054469:	89 1c 24             	mov    %ebx,(%esp)
 805446c:	89 54 24 10          	mov    %edx,0x10(%esp)
 8054470:	89 44 24 0c          	mov    %eax,0xc(%esp)
 8054474:	8b 45 0c             	mov    0xc(%ebp),%eax
 8054477:	89 44 24 08          	mov    %eax,0x8(%esp)
 805447b:	ff d6                	call   *%esi
 805447d:	83 f8 ff             	cmp    $0xffffffff,%eax
 8054480:	75 0f                	jne    8054491 <wcrtomb+0x51>
 8054482:	8b 4d 10             	mov    0x10(%ebp),%ecx
 8054485:	c7 01 00 00 00 00    	movl   $0x0,(%ecx)
 805448b:	c7 03 8a 00 00 00    	movl   $0x8a,(%ebx)
 8054491:	83 c4 3c             	add    $0x3c,%esp
 8054494:	5b                   	pop    %ebx
 8054495:	5e                   	pop    %esi
 8054496:	5f                   	pop    %edi
 8054497:	5d                   	pop    %ebp
 8054498:	c3                   	ret    
 8054499:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 80544a0:	8b 3d 28 7d 05 08    	mov    0x8057d28,%edi
 80544a6:	e8 45 b0 ff ff       	call   804f4f0 <__locale_charset>
 80544ab:	8b 4d 10             	mov    0x10(%ebp),%ecx
 80544ae:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 80544b5:	00 
 80544b6:	89 1c 24             	mov    %ebx,(%esp)
 80544b9:	89 4c 24 10          	mov    %ecx,0x10(%esp)
 80544bd:	89 44 24 0c          	mov    %eax,0xc(%esp)
 80544c1:	8d 45 de             	lea    -0x22(%ebp),%eax
 80544c4:	89 44 24 04          	mov    %eax,0x4(%esp)
 80544c8:	ff d7                	call   *%edi
 80544ca:	eb b1                	jmp    805447d <wcrtomb+0x3d>
 80544cc:	66 90                	xchg   %ax,%ax
 80544ce:	66 90                	xchg   %ax,%ax

080544d0 <__ascii_wctomb>:
 80544d0:	55                   	push   %ebp
 80544d1:	89 e5                	mov    %esp,%ebp
 80544d3:	8b 45 0c             	mov    0xc(%ebp),%eax
 80544d6:	8b 55 10             	mov    0x10(%ebp),%edx
 80544d9:	85 c0                	test   %eax,%eax
 80544db:	74 13                	je     80544f0 <__ascii_wctomb+0x20>
 80544dd:	81 fa ff 00 00 00    	cmp    $0xff,%edx
 80544e3:	77 13                	ja     80544f8 <__ascii_wctomb+0x28>
 80544e5:	88 10                	mov    %dl,(%eax)
 80544e7:	b8 01 00 00 00       	mov    $0x1,%eax
 80544ec:	5d                   	pop    %ebp
 80544ed:	c3                   	ret    
 80544ee:	66 90                	xchg   %ax,%ax
 80544f0:	31 c0                	xor    %eax,%eax
 80544f2:	5d                   	pop    %ebp
 80544f3:	c3                   	ret    
 80544f4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 80544f8:	8b 45 08             	mov    0x8(%ebp),%eax
 80544fb:	c7 00 8a 00 00 00    	movl   $0x8a,(%eax)
 8054501:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8054506:	5d                   	pop    %ebp
 8054507:	c3                   	ret    
 8054508:	90                   	nop
 8054509:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

08054510 <_wctomb_r>:
 8054510:	55                   	push   %ebp
 8054511:	89 e5                	mov    %esp,%ebp
 8054513:	53                   	push   %ebx
 8054514:	83 ec 24             	sub    $0x24,%esp
 8054517:	8b 1d 28 7d 05 08    	mov    0x8057d28,%ebx
 805451d:	e8 ce af ff ff       	call   804f4f0 <__locale_charset>
 8054522:	8b 55 14             	mov    0x14(%ebp),%edx
 8054525:	89 54 24 10          	mov    %edx,0x10(%esp)
 8054529:	89 44 24 0c          	mov    %eax,0xc(%esp)
 805452d:	8b 45 10             	mov    0x10(%ebp),%eax
 8054530:	89 44 24 08          	mov    %eax,0x8(%esp)
 8054534:	8b 45 0c             	mov    0xc(%ebp),%eax
 8054537:	89 44 24 04          	mov    %eax,0x4(%esp)
 805453b:	8b 45 08             	mov    0x8(%ebp),%eax
 805453e:	89 04 24             	mov    %eax,(%esp)
 8054541:	ff d3                	call   *%ebx
 8054543:	83 c4 24             	add    $0x24,%esp
 8054546:	5b                   	pop    %ebx
 8054547:	5d                   	pop    %ebp
 8054548:	c3                   	ret    
