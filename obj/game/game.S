
game:     file format elf32-i386


Disassembly of section .text:

080480a0 <add_irq_handle>:
 80480a0:	55                   	push   %ebp
 80480a1:	89 e5                	mov    %esp,%ebp
 80480a3:	83 ec 0c             	sub    $0xc,%esp
 80480a6:	ff 75 0c             	pushl  0xc(%ebp)
 80480a9:	ff 75 08             	pushl  0x8(%ebp)
 80480ac:	6a 00                	push   $0x0
 80480ae:	e8 8d 00 00 00       	call   8048140 <syscall>
 80480b3:	83 c4 10             	add    $0x10,%esp
 80480b6:	c9                   	leave  
 80480b7:	c3                   	ret    
 80480b8:	90                   	nop
 80480b9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

080480c0 <game_init>:
 80480c0:	55                   	push   %ebp
 80480c1:	89 e5                	mov    %esp,%ebp
 80480c3:	83 ec 08             	sub    $0x8,%esp
 80480c6:	e8 c5 01 00 00       	call   8048290 <init_timer>
 80480cb:	83 ec 04             	sub    $0x4,%esp
 80480ce:	68 90 87 04 08       	push   $0x8048790
 80480d3:	6a 00                	push   $0x0
 80480d5:	6a 00                	push   $0x0
 80480d7:	e8 64 00 00 00       	call   8048140 <syscall>
 80480dc:	83 c4 0c             	add    $0xc,%esp
 80480df:	68 40 87 04 08       	push   $0x8048740
 80480e4:	6a 00                	push   $0x0
 80480e6:	6a 00                	push   $0x0
 80480e8:	e8 53 00 00 00       	call   8048140 <syscall>
 80480ed:	68 4c 46 05 08       	push   $0x805464c
 80480f2:	6a 12                	push   $0x12
 80480f4:	68 c0 45 05 08       	push   $0x80545c0
 80480f9:	68 d8 45 05 08       	push   $0x80545d8
 80480fe:	e8 bd 11 00 00       	call   80492c0 <printf>
 8048103:	83 c4 20             	add    $0x20,%esp
 8048106:	e8 c5 06 00 00       	call   80487d0 <main_loop>
 804810b:	fa                   	cli    
 804810c:	83 ec 0c             	sub    $0xc,%esp
 804810f:	68 7d 46 05 08       	push   $0x805467d
 8048114:	68 4c 46 05 08       	push   $0x805464c
 8048119:	6a 16                	push   $0x16
 804811b:	68 c0 45 05 08       	push   $0x80545c0
 8048120:	68 04 46 05 08       	push   $0x8054604
 8048125:	e8 96 11 00 00       	call   80492c0 <printf>
 804812a:	b8 01 00 00 00       	mov    $0x1,%eax
 804812f:	d6                   	(bad)  
 8048130:	83 c4 20             	add    $0x20,%esp
 8048133:	c9                   	leave  
 8048134:	c3                   	ret    
 8048135:	66 90                	xchg   %ax,%ax
 8048137:	66 90                	xchg   %ax,%ax
 8048139:	66 90                	xchg   %ax,%ax
 804813b:	66 90                	xchg   %ax,%ax
 804813d:	66 90                	xchg   %ax,%ax
 804813f:	90                   	nop

08048140 <syscall>:
 8048140:	55                   	push   %ebp
 8048141:	89 e5                	mov    %esp,%ebp
 8048143:	53                   	push   %ebx
 8048144:	8b 55 14             	mov    0x14(%ebp),%edx
 8048147:	8b 4d 10             	mov    0x10(%ebp),%ecx
 804814a:	8b 45 08             	mov    0x8(%ebp),%eax
 804814d:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 8048150:	cd 80                	int    $0x80
 8048152:	5b                   	pop    %ebx
 8048153:	5d                   	pop    %ebp
 8048154:	c3                   	ret    
 8048155:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8048159:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

08048160 <_exit>:
 8048160:	55                   	push   %ebp
 8048161:	89 e5                	mov    %esp,%ebp
 8048163:	8b 45 08             	mov    0x8(%ebp),%eax
 8048166:	85 c0                	test   %eax,%eax
 8048168:	74 06                	je     8048170 <_exit+0x10>
 804816a:	b8 01 00 00 00       	mov    $0x1,%eax
 804816f:	d6                   	(bad)  
 8048170:	5d                   	pop    %ebp
 8048171:	c3                   	ret    
 8048172:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 8048179:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

08048180 <open>:
 8048180:	55                   	push   %ebp
 8048181:	89 e5                	mov    %esp,%ebp
 8048183:	ff 75 0c             	pushl  0xc(%ebp)
 8048186:	ff 75 08             	pushl  0x8(%ebp)
 8048189:	6a 05                	push   $0x5
 804818b:	e8 b0 ff ff ff       	call   8048140 <syscall>
 8048190:	c9                   	leave  
 8048191:	c3                   	ret    
 8048192:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 8048199:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

080481a0 <read>:
 80481a0:	55                   	push   %ebp
 80481a1:	89 e5                	mov    %esp,%ebp
 80481a3:	ff 75 10             	pushl  0x10(%ebp)
 80481a6:	ff 75 0c             	pushl  0xc(%ebp)
 80481a9:	ff 75 08             	pushl  0x8(%ebp)
 80481ac:	6a 03                	push   $0x3
 80481ae:	e8 8d ff ff ff       	call   8048140 <syscall>
 80481b3:	c9                   	leave  
 80481b4:	c3                   	ret    
 80481b5:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 80481b9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

080481c0 <write>:
 80481c0:	55                   	push   %ebp
 80481c1:	89 e5                	mov    %esp,%ebp
 80481c3:	ff 75 10             	pushl  0x10(%ebp)
 80481c6:	ff 75 0c             	pushl  0xc(%ebp)
 80481c9:	ff 75 08             	pushl  0x8(%ebp)
 80481cc:	6a 04                	push   $0x4
 80481ce:	e8 6d ff ff ff       	call   8048140 <syscall>
 80481d3:	c9                   	leave  
 80481d4:	c3                   	ret    
 80481d5:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 80481d9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

080481e0 <lseek>:
 80481e0:	55                   	push   %ebp
 80481e1:	89 e5                	mov    %esp,%ebp
 80481e3:	ff 75 10             	pushl  0x10(%ebp)
 80481e6:	ff 75 0c             	pushl  0xc(%ebp)
 80481e9:	ff 75 08             	pushl  0x8(%ebp)
 80481ec:	6a 13                	push   $0x13
 80481ee:	e8 4d ff ff ff       	call   8048140 <syscall>
 80481f3:	c9                   	leave  
 80481f4:	c3                   	ret    
 80481f5:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 80481f9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

08048200 <sbrk>:
 8048200:	55                   	push   %ebp
 8048201:	89 e5                	mov    %esp,%ebp
 8048203:	56                   	push   %esi
 8048204:	53                   	push   %ebx
 8048205:	8b 1d 40 7d 05 08    	mov    0x8057d40,%ebx
 804820b:	85 db                	test   %ebx,%ebx
 804820d:	74 31                	je     8048240 <sbrk+0x40>
 804820f:	8b 75 08             	mov    0x8(%ebp),%esi
 8048212:	01 de                	add    %ebx,%esi
 8048214:	56                   	push   %esi
 8048215:	6a 2d                	push   $0x2d
 8048217:	e8 24 ff ff ff       	call   8048140 <syscall>
 804821c:	85 c0                	test   %eax,%eax
 804821e:	5a                   	pop    %edx
 804821f:	59                   	pop    %ecx
 8048220:	74 06                	je     8048228 <sbrk+0x28>
 8048222:	b8 01 00 00 00       	mov    $0x1,%eax
 8048227:	d6                   	(bad)  
 8048228:	89 35 40 7d 05 08    	mov    %esi,0x8057d40
 804822e:	8d 65 f8             	lea    -0x8(%ebp),%esp
 8048231:	89 d8                	mov    %ebx,%eax
 8048233:	5b                   	pop    %ebx
 8048234:	5e                   	pop    %esi
 8048235:	5d                   	pop    %ebp
 8048236:	c3                   	ret    
 8048237:	89 f6                	mov    %esi,%esi
 8048239:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
 8048240:	bb 78 d6 06 08       	mov    $0x806d678,%ebx
 8048245:	eb c8                	jmp    804820f <sbrk+0xf>
 8048247:	89 f6                	mov    %esi,%esi
 8048249:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

08048250 <close>:
 8048250:	55                   	push   %ebp
 8048251:	89 e5                	mov    %esp,%ebp
 8048253:	ff 75 08             	pushl  0x8(%ebp)
 8048256:	6a 06                	push   $0x6
 8048258:	e8 e3 fe ff ff       	call   8048140 <syscall>
 804825d:	c9                   	leave  
 804825e:	c3                   	ret    
 804825f:	90                   	nop

08048260 <fstat>:
 8048260:	55                   	push   %ebp
 8048261:	89 e5                	mov    %esp,%ebp
 8048263:	8b 45 0c             	mov    0xc(%ebp),%eax
 8048266:	c7 40 04 00 20 00 00 	movl   $0x2000,0x4(%eax)
 804826d:	31 c0                	xor    %eax,%eax
 804826f:	5d                   	pop    %ebp
 8048270:	c3                   	ret    
 8048271:	eb 0d                	jmp    8048280 <isatty>
 8048273:	90                   	nop
 8048274:	90                   	nop
 8048275:	90                   	nop
 8048276:	90                   	nop
 8048277:	90                   	nop
 8048278:	90                   	nop
 8048279:	90                   	nop
 804827a:	90                   	nop
 804827b:	90                   	nop
 804827c:	90                   	nop
 804827d:	90                   	nop
 804827e:	90                   	nop
 804827f:	90                   	nop

08048280 <isatty>:
 8048280:	55                   	push   %ebp
 8048281:	31 c0                	xor    %eax,%eax
 8048283:	89 e5                	mov    %esp,%ebp
 8048285:	5d                   	pop    %ebp
 8048286:	c3                   	ret    
 8048287:	66 90                	xchg   %ax,%ax
 8048289:	66 90                	xchg   %ax,%ax
 804828b:	66 90                	xchg   %ax,%ax
 804828d:	66 90                	xchg   %ax,%ax
 804828f:	90                   	nop

08048290 <init_timer>:
 8048290:	55                   	push   %ebp
 8048291:	ba 43 00 00 00       	mov    $0x43,%edx
 8048296:	b8 34 00 00 00       	mov    $0x34,%eax
 804829b:	89 e5                	mov    %esp,%ebp
 804829d:	ee                   	out    %al,(%dx)
 804829e:	b8 9b ff ff ff       	mov    $0xffffff9b,%eax
 80482a3:	b2 40                	mov    $0x40,%dl
 80482a5:	ee                   	out    %al,(%dx)
 80482a6:	b8 2e 00 00 00       	mov    $0x2e,%eax
 80482ab:	ee                   	out    %al,(%dx)
 80482ac:	5d                   	pop    %ebp
 80482ad:	c3                   	ret    
 80482ae:	66 90                	xchg   %ax,%ax

080482b0 <write_palette>:
 80482b0:	55                   	push   %ebp
 80482b1:	ba c8 03 00 00       	mov    $0x3c8,%edx
 80482b6:	31 c0                	xor    %eax,%eax
 80482b8:	89 e5                	mov    %esp,%ebp
 80482ba:	53                   	push   %ebx
 80482bb:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 80482be:	ee                   	out    %al,(%dx)
 80482bf:	85 db                	test   %ebx,%ebx
 80482c1:	7e 2b                	jle    80482ee <write_palette+0x3e>
 80482c3:	8b 4d 08             	mov    0x8(%ebp),%ecx
 80482c6:	b2 c9                	mov    $0xc9,%dl
 80482c8:	8d 1c 99             	lea    (%ecx,%ebx,4),%ebx
 80482cb:	90                   	nop
 80482cc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 80482d0:	0f b6 01             	movzbl (%ecx),%eax
 80482d3:	c0 e8 02             	shr    $0x2,%al
 80482d6:	ee                   	out    %al,(%dx)
 80482d7:	0f b6 41 01          	movzbl 0x1(%ecx),%eax
 80482db:	c0 e8 02             	shr    $0x2,%al
 80482de:	ee                   	out    %al,(%dx)
 80482df:	0f b6 41 02          	movzbl 0x2(%ecx),%eax
 80482e3:	c0 e8 02             	shr    $0x2,%al
 80482e6:	ee                   	out    %al,(%dx)
 80482e7:	83 c1 04             	add    $0x4,%ecx
 80482ea:	39 d9                	cmp    %ebx,%ecx
 80482ec:	75 e2                	jne    80482d0 <write_palette+0x20>
 80482ee:	5b                   	pop    %ebx
 80482ef:	5d                   	pop    %ebp
 80482f0:	c3                   	ret    
 80482f1:	eb 0d                	jmp    8048300 <read_palette>
 80482f3:	90                   	nop
 80482f4:	90                   	nop
 80482f5:	90                   	nop
 80482f6:	90                   	nop
 80482f7:	90                   	nop
 80482f8:	90                   	nop
 80482f9:	90                   	nop
 80482fa:	90                   	nop
 80482fb:	90                   	nop
 80482fc:	90                   	nop
 80482fd:	90                   	nop
 80482fe:	90                   	nop
 80482ff:	90                   	nop

08048300 <read_palette>:
 8048300:	55                   	push   %ebp
 8048301:	ba c7 03 00 00       	mov    $0x3c7,%edx
 8048306:	31 c0                	xor    %eax,%eax
 8048308:	89 e5                	mov    %esp,%ebp
 804830a:	57                   	push   %edi
 804830b:	56                   	push   %esi
 804830c:	53                   	push   %ebx
 804830d:	83 ec 0c             	sub    $0xc,%esp
 8048310:	ee                   	out    %al,(%dx)
 8048311:	bb 00 01 00 00       	mov    $0x100,%ebx
 8048316:	be c9 03 00 00       	mov    $0x3c9,%esi
 804831b:	90                   	nop
 804831c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8048320:	89 f2                	mov    %esi,%edx
 8048322:	ec                   	in     (%dx),%al
 8048323:	0f b6 c8             	movzbl %al,%ecx
 8048326:	ec                   	in     (%dx),%al
 8048327:	89 c7                	mov    %eax,%edi
 8048329:	ec                   	in     (%dx),%al
 804832a:	0f b6 c0             	movzbl %al,%eax
 804832d:	50                   	push   %eax
 804832e:	89 f8                	mov    %edi,%eax
 8048330:	0f b6 f8             	movzbl %al,%edi
 8048333:	57                   	push   %edi
 8048334:	51                   	push   %ecx
 8048335:	68 56 46 05 08       	push   $0x8054656
 804833a:	e8 81 0f 00 00       	call   80492c0 <printf>
 804833f:	83 c4 10             	add    $0x10,%esp
 8048342:	83 eb 01             	sub    $0x1,%ebx
 8048345:	75 d9                	jne    8048320 <read_palette+0x20>
 8048347:	8d 65 f4             	lea    -0xc(%ebp),%esp
 804834a:	5b                   	pop    %ebx
 804834b:	5e                   	pop    %esi
 804834c:	5f                   	pop    %edi
 804834d:	5d                   	pop    %ebp
 804834e:	c3                   	ret    
 804834f:	90                   	nop

08048350 <prepare_buffer>:
 8048350:	55                   	push   %ebp
 8048351:	89 e5                	mov    %esp,%ebp
 8048353:	83 ec 0c             	sub    $0xc,%esp
 8048356:	68 00 fa 00 00       	push   $0xfa00
 804835b:	6a 00                	push   $0x0
 804835d:	ff 35 00 74 05 08    	pushl  0x8057400
 8048363:	e8 99 0e 00 00       	call   8049201 <memset>
 8048368:	83 c4 10             	add    $0x10,%esp
 804836b:	c9                   	leave  
 804836c:	c3                   	ret    
 804836d:	8d 76 00             	lea    0x0(%esi),%esi

08048370 <display_buffer>:
 8048370:	55                   	push   %ebp
 8048371:	b9 80 3e 00 00       	mov    $0x3e80,%ecx
 8048376:	89 e5                	mov    %esp,%ebp
 8048378:	57                   	push   %edi
 8048379:	bf 00 00 0a 00       	mov    $0xa0000,%edi
 804837e:	56                   	push   %esi
 804837f:	8b 35 00 74 05 08    	mov    0x8057400,%esi
 8048385:	fc                   	cld    
 8048386:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
 8048388:	5e                   	pop    %esi
 8048389:	5f                   	pop    %edi
 804838a:	5d                   	pop    %ebp
 804838b:	c3                   	ret    
 804838c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

08048390 <draw_string>:
 8048390:	55                   	push   %ebp
 8048391:	89 e5                	mov    %esp,%ebp
 8048393:	57                   	push   %edi
 8048394:	56                   	push   %esi
 8048395:	53                   	push   %ebx
 8048396:	83 ec 1c             	sub    $0x1c,%esp
 8048399:	8b 7d 10             	mov    0x10(%ebp),%edi
 804839c:	8b 45 08             	mov    0x8(%ebp),%eax
 804839f:	0f be 18             	movsbl (%eax),%ebx
 80483a2:	84 db                	test   %bl,%bl
 80483a4:	0f 84 9d 00 00 00    	je     8048447 <draw_string+0xb7>
 80483aa:	83 45 08 01          	addl   $0x1,0x8(%ebp)
 80483ae:	84 db                	test   %bl,%bl
 80483b0:	0f 88 d2 00 00 00    	js     8048488 <draw_string+0xf8>
 80483b6:	8b 45 0c             	mov    0xc(%ebp),%eax
 80483b9:	8b 75 0c             	mov    0xc(%ebp),%esi
 80483bc:	8d 14 dd 00 70 05 08 	lea    0x8057000(,%ebx,8),%edx
 80483c3:	83 c0 08             	add    $0x8,%eax
 80483c6:	29 f2                	sub    %esi,%edx
 80483c8:	89 45 dc             	mov    %eax,-0x24(%ebp)
 80483cb:	90                   	nop
 80483cc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 80483d0:	69 c6 40 01 00 00    	imul   $0x140,%esi,%eax
 80483d6:	31 db                	xor    %ebx,%ebx
 80483d8:	89 7d 10             	mov    %edi,0x10(%ebp)
 80483db:	89 45 e0             	mov    %eax,-0x20(%ebp)
 80483de:	eb 08                	jmp    80483e8 <draw_string+0x58>
 80483e0:	83 c3 01             	add    $0x1,%ebx
 80483e3:	83 fb 08             	cmp    $0x8,%ebx
 80483e6:	74 39                	je     8048421 <draw_string+0x91>
 80483e8:	0f be 04 32          	movsbl (%edx,%esi,1),%eax
 80483ec:	0f a3 d8             	bt     %ebx,%eax
 80483ef:	73 ef                	jae    80483e0 <draw_string+0x50>
 80483f1:	8b 45 10             	mov    0x10(%ebp),%eax
 80483f4:	01 d8                	add    %ebx,%eax
 80483f6:	3d 3f 01 00 00       	cmp    $0x13f,%eax
 80483fb:	77 53                	ja     8048450 <draw_string+0xc0>
 80483fd:	81 fe c7 00 00 00    	cmp    $0xc7,%esi
 8048403:	77 4b                	ja     8048450 <draw_string+0xc0>
 8048405:	a1 00 74 05 08       	mov    0x8057400,%eax
 804840a:	0f b6 4d 14          	movzbl 0x14(%ebp),%ecx
 804840e:	8b 7d e0             	mov    -0x20(%ebp),%edi
 8048411:	01 d8                	add    %ebx,%eax
 8048413:	03 45 10             	add    0x10(%ebp),%eax
 8048416:	83 c3 01             	add    $0x1,%ebx
 8048419:	83 fb 08             	cmp    $0x8,%ebx
 804841c:	88 0c 38             	mov    %cl,(%eax,%edi,1)
 804841f:	75 c7                	jne    80483e8 <draw_string+0x58>
 8048421:	83 c6 01             	add    $0x1,%esi
 8048424:	3b 75 dc             	cmp    -0x24(%ebp),%esi
 8048427:	8b 7d 10             	mov    0x10(%ebp),%edi
 804842a:	75 a4                	jne    80483d0 <draw_string+0x40>
 804842c:	81 ff 37 01 00 00    	cmp    $0x137,%edi
 8048432:	7e 4c                	jle    8048480 <draw_string+0xf0>
 8048434:	8b 45 08             	mov    0x8(%ebp),%eax
 8048437:	31 ff                	xor    %edi,%edi
 8048439:	89 75 0c             	mov    %esi,0xc(%ebp)
 804843c:	0f be 18             	movsbl (%eax),%ebx
 804843f:	84 db                	test   %bl,%bl
 8048441:	0f 85 63 ff ff ff    	jne    80483aa <draw_string+0x1a>
 8048447:	8d 65 f4             	lea    -0xc(%ebp),%esp
 804844a:	5b                   	pop    %ebx
 804844b:	5e                   	pop    %esi
 804844c:	5f                   	pop    %edi
 804844d:	5d                   	pop    %ebp
 804844e:	c3                   	ret    
 804844f:	90                   	nop
 8048450:	89 55 e4             	mov    %edx,-0x1c(%ebp)
 8048453:	fa                   	cli    
 8048454:	83 ec 0c             	sub    $0xc,%esp
 8048457:	68 bc 46 05 08       	push   $0x80546bc
 804845c:	68 f0 46 05 08       	push   $0x80546f0
 8048461:	6a 0f                	push   $0xf
 8048463:	68 7f 46 05 08       	push   $0x805467f
 8048468:	68 04 46 05 08       	push   $0x8054604
 804846d:	e8 4e 0e 00 00       	call   80492c0 <printf>
 8048472:	b8 01 00 00 00       	mov    $0x1,%eax
 8048477:	d6                   	(bad)  
 8048478:	83 c4 20             	add    $0x20,%esp
 804847b:	8b 55 e4             	mov    -0x1c(%ebp),%edx
 804847e:	eb 85                	jmp    8048405 <draw_string+0x75>
 8048480:	83 c7 08             	add    $0x8,%edi
 8048483:	e9 14 ff ff ff       	jmp    804839c <draw_string+0xc>
 8048488:	fa                   	cli    
 8048489:	83 ec 0c             	sub    $0xc,%esp
 804848c:	68 6e 46 05 08       	push   $0x805466e
 8048491:	68 fb 46 05 08       	push   $0x80546fb
 8048496:	6a 18                	push   $0x18
 8048498:	68 9c 46 05 08       	push   $0x805469c
 804849d:	68 04 46 05 08       	push   $0x8054604
 80484a2:	e8 19 0e 00 00       	call   80492c0 <printf>
 80484a7:	b8 01 00 00 00       	mov    $0x1,%eax
 80484ac:	d6                   	(bad)  
 80484ad:	83 c4 20             	add    $0x20,%esp
 80484b0:	e9 01 ff ff ff       	jmp    80483b6 <draw_string+0x26>
 80484b5:	66 90                	xchg   %ax,%ax
 80484b7:	66 90                	xchg   %ax,%ax
 80484b9:	66 90                	xchg   %ax,%ax
 80484bb:	66 90                	xchg   %ax,%ax
 80484bd:	66 90                	xchg   %ax,%ax
 80484bf:	90                   	nop

080484c0 <redraw_screen>:
 80484c0:	55                   	push   %ebp
 80484c1:	89 e5                	mov    %esp,%ebp
 80484c3:	53                   	push   %ebx
 80484c4:	83 ec 04             	sub    $0x4,%esp
 80484c7:	e8 84 fe ff ff       	call   8048350 <prepare_buffer>
 80484cc:	e8 3f 06 00 00       	call   8048b10 <characters>
 80484d1:	85 c0                	test   %eax,%eax
 80484d3:	89 c3                	mov    %eax,%ebx
 80484d5:	74 54                	je     804852b <redraw_screen+0x6b>
 80484d7:	89 f6                	mov    %esi,%esi
 80484d9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
 80484e0:	0f b6 43 08          	movzbl 0x8(%ebx),%eax
 80484e4:	c6 05 9f 77 06 08 00 	movb   $0x0,0x806779f
 80484eb:	83 c0 41             	add    $0x41,%eax
 80484ee:	a2 9e 77 06 08       	mov    %al,0x806779e
 80484f3:	8b 13                	mov    (%ebx),%edx
 80484f5:	6a 0f                	push   $0xf
 80484f7:	ff 73 04             	pushl  0x4(%ebx)
 80484fa:	89 d0                	mov    %edx,%eax
 80484fc:	25 00 00 00 80       	and    $0x80000000,%eax
 8048501:	31 c2                	xor    %eax,%edx
 8048503:	85 c0                	test   %eax,%eax
 8048505:	0f 95 c0             	setne  %al
 8048508:	c1 fa 10             	sar    $0x10,%edx
 804850b:	0f b6 c0             	movzbl %al,%eax
 804850e:	89 c1                	mov    %eax,%ecx
 8048510:	f7 d9                	neg    %ecx
 8048512:	31 ca                	xor    %ecx,%edx
 8048514:	01 c2                	add    %eax,%edx
 8048516:	52                   	push   %edx
 8048517:	68 9e 77 06 08       	push   $0x806779e
 804851c:	e8 6f fe ff ff       	call   8048390 <draw_string>
 8048521:	8b 5b 14             	mov    0x14(%ebx),%ebx
 8048524:	83 c4 10             	add    $0x10,%esp
 8048527:	85 db                	test   %ebx,%ebx
 8048529:	75 b5                	jne    80484e0 <redraw_screen+0x20>
 804852b:	e8 00 02 00 00       	call   8048730 <last_key_code>
 8048530:	50                   	push   %eax
 8048531:	68 0a 47 05 08       	push   $0x805470a
 8048536:	6a 1e                	push   $0x1e
 8048538:	68 80 77 06 08       	push   $0x8067780
 804853d:	e8 be 0e 00 00       	call   8049400 <snprintf>
 8048542:	6a 30                	push   $0x30
 8048544:	6a 00                	push   $0x0
 8048546:	68 c0 00 00 00       	push   $0xc0
 804854b:	68 80 77 06 08       	push   $0x8067780
 8048550:	e8 3b fe ff ff       	call   8048390 <draw_string>
 8048555:	83 c4 20             	add    $0x20,%esp
 8048558:	e8 93 05 00 00       	call   8048af0 <get_hit>
 804855d:	50                   	push   %eax
 804855e:	68 0a 47 05 08       	push   $0x805470a
 8048563:	6a 1e                	push   $0x1e
 8048565:	68 80 77 06 08       	push   $0x8067780
 804856a:	e8 91 0e 00 00       	call   8049400 <snprintf>
 804856f:	c7 04 24 80 77 06 08 	movl   $0x8067780,(%esp)
 8048576:	e8 25 0f 00 00       	call   80494a0 <strlen>
 804857b:	f7 d8                	neg    %eax
 804857d:	6a 0a                	push   $0xa
 804857f:	8d 04 c5 40 01 00 00 	lea    0x140(,%eax,8),%eax
 8048586:	50                   	push   %eax
 8048587:	6a 00                	push   $0x0
 8048589:	68 80 77 06 08       	push   $0x8067780
 804858e:	e8 fd fd ff ff       	call   8048390 <draw_string>
 8048593:	83 c4 20             	add    $0x20,%esp
 8048596:	e8 65 05 00 00       	call   8048b00 <get_miss>
 804859b:	50                   	push   %eax
 804859c:	68 0a 47 05 08       	push   $0x805470a
 80485a1:	6a 1e                	push   $0x1e
 80485a3:	68 80 77 06 08       	push   $0x8067780
 80485a8:	e8 53 0e 00 00       	call   8049400 <snprintf>
 80485ad:	c7 04 24 80 77 06 08 	movl   $0x8067780,(%esp)
 80485b4:	e8 e7 0e 00 00       	call   80494a0 <strlen>
 80485b9:	f7 d8                	neg    %eax
 80485bb:	6a 0c                	push   $0xc
 80485bd:	8d 04 c5 40 01 00 00 	lea    0x140(,%eax,8),%eax
 80485c4:	50                   	push   %eax
 80485c5:	68 c0 00 00 00       	push   $0xc0
 80485ca:	68 80 77 06 08       	push   $0x8067780
 80485cf:	e8 bc fd ff ff       	call   8048390 <draw_string>
 80485d4:	83 c4 20             	add    $0x20,%esp
 80485d7:	e8 e4 01 00 00       	call   80487c0 <get_fps>
 80485dc:	50                   	push   %eax
 80485dd:	68 0a 47 05 08       	push   $0x805470a
 80485e2:	6a 1e                	push   $0x1e
 80485e4:	68 80 77 06 08       	push   $0x8067780
 80485e9:	e8 12 0e 00 00       	call   8049400 <snprintf>
 80485ee:	6a 0e                	push   $0xe
 80485f0:	6a 00                	push   $0x0
 80485f2:	6a 00                	push   $0x0
 80485f4:	68 80 77 06 08       	push   $0x8067780
 80485f9:	e8 92 fd ff ff       	call   8048390 <draw_string>
 80485fe:	83 c4 20             	add    $0x20,%esp
 8048601:	e8 ba 01 00 00       	call   80487c0 <get_fps>
 8048606:	50                   	push   %eax
 8048607:	68 0a 47 05 08       	push   $0x805470a
 804860c:	6a 1e                	push   $0x1e
 804860e:	68 80 77 06 08       	push   $0x8067780
 8048613:	e8 e8 0d 00 00       	call   8049400 <snprintf>
 8048618:	c7 04 24 80 77 06 08 	movl   $0x8067780,(%esp)
 804861f:	e8 7c 0e 00 00       	call   80494a0 <strlen>
 8048624:	c1 e0 03             	shl    $0x3,%eax
 8048627:	6a 0e                	push   $0xe
 8048629:	50                   	push   %eax
 804862a:	6a 00                	push   $0x0
 804862c:	68 0d 47 05 08       	push   $0x805470d
 8048631:	e8 5a fd ff ff       	call   8048390 <draw_string>
 8048636:	83 c4 20             	add    $0x20,%esp
 8048639:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 804863c:	c9                   	leave  
 804863d:	e9 2e fd ff ff       	jmp    8048370 <display_buffer>
 8048642:	66 90                	xchg   %ax,%ax
 8048644:	66 90                	xchg   %ax,%ax
 8048646:	66 90                	xchg   %ax,%ax
 8048648:	66 90                	xchg   %ax,%ax
 804864a:	66 90                	xchg   %ax,%ax
 804864c:	66 90                	xchg   %ax,%ax
 804864e:	66 90                	xchg   %ax,%ax

08048650 <press_key>:
 8048650:	55                   	push   %ebp
 8048651:	31 c0                	xor    %eax,%eax
 8048653:	89 e5                	mov    %esp,%ebp
 8048655:	8b 55 08             	mov    0x8(%ebp),%edx
 8048658:	eb 0e                	jmp    8048668 <press_key+0x18>
 804865a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 8048660:	83 c0 01             	add    $0x1,%eax
 8048663:	83 f8 1a             	cmp    $0x1a,%eax
 8048666:	74 18                	je     8048680 <press_key+0x30>
 8048668:	39 14 85 c0 47 05 08 	cmp    %edx,0x80547c0(,%eax,4)
 804866f:	75 ef                	jne    8048660 <press_key+0x10>
 8048671:	c6 80 a4 77 06 08 01 	movb   $0x1,0x80677a4(%eax)
 8048678:	83 c0 01             	add    $0x1,%eax
 804867b:	83 f8 1a             	cmp    $0x1a,%eax
 804867e:	75 e8                	jne    8048668 <press_key+0x18>
 8048680:	5d                   	pop    %ebp
 8048681:	c3                   	ret    
 8048682:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 8048689:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

08048690 <release_key>:
 8048690:	55                   	push   %ebp
 8048691:	89 e5                	mov    %esp,%ebp
 8048693:	53                   	push   %ebx
 8048694:	83 ec 04             	sub    $0x4,%esp
 8048697:	8b 5d 08             	mov    0x8(%ebp),%ebx
 804869a:	83 fb 19             	cmp    $0x19,%ebx
 804869d:	76 28                	jbe    80486c7 <release_key+0x37>
 804869f:	fa                   	cli    
 80486a0:	83 ec 0c             	sub    $0xc,%esp
 80486a3:	68 11 47 05 08       	push   $0x8054711
 80486a8:	68 8a 47 05 08       	push   $0x805478a
 80486ad:	6a 19                	push   $0x19
 80486af:	68 2a 47 05 08       	push   $0x805472a
 80486b4:	68 04 46 05 08       	push   $0x8054604
 80486b9:	e8 02 0c 00 00       	call   80492c0 <printf>
 80486be:	b8 01 00 00 00       	mov    $0x1,%eax
 80486c3:	d6                   	(bad)  
 80486c4:	83 c4 20             	add    $0x20,%esp
 80486c7:	c6 83 a4 77 06 08 00 	movb   $0x0,0x80677a4(%ebx)
 80486ce:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 80486d1:	c9                   	leave  
 80486d2:	c3                   	ret    
 80486d3:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 80486d9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

080486e0 <query_key>:
 80486e0:	55                   	push   %ebp
 80486e1:	89 e5                	mov    %esp,%ebp
 80486e3:	53                   	push   %ebx
 80486e4:	83 ec 04             	sub    $0x4,%esp
 80486e7:	8b 5d 08             	mov    0x8(%ebp),%ebx
 80486ea:	83 fb 19             	cmp    $0x19,%ebx
 80486ed:	76 28                	jbe    8048717 <query_key+0x37>
 80486ef:	fa                   	cli    
 80486f0:	83 ec 0c             	sub    $0xc,%esp
 80486f3:	68 11 47 05 08       	push   $0x8054711
 80486f8:	68 80 47 05 08       	push   $0x8054780
 80486fd:	6a 1f                	push   $0x1f
 80486ff:	68 2a 47 05 08       	push   $0x805472a
 8048704:	68 04 46 05 08       	push   $0x8054604
 8048709:	e8 b2 0b 00 00       	call   80492c0 <printf>
 804870e:	b8 01 00 00 00       	mov    $0x1,%eax
 8048713:	d6                   	(bad)  
 8048714:	83 c4 20             	add    $0x20,%esp
 8048717:	0f b6 83 a4 77 06 08 	movzbl 0x80677a4(%ebx),%eax
 804871e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 8048721:	c9                   	leave  
 8048722:	c3                   	ret    
 8048723:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 8048729:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

08048730 <last_key_code>:
 8048730:	55                   	push   %ebp
 8048731:	a1 a0 77 06 08       	mov    0x80677a0,%eax
 8048736:	89 e5                	mov    %esp,%ebp
 8048738:	5d                   	pop    %ebp
 8048739:	c3                   	ret    
 804873a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

08048740 <keyboard_event>:
 8048740:	55                   	push   %ebp
 8048741:	ba 60 00 00 00       	mov    $0x60,%edx
 8048746:	89 e5                	mov    %esp,%ebp
 8048748:	ec                   	in     (%dx),%al
 8048749:	0f b6 c0             	movzbl %al,%eax
 804874c:	a3 a0 77 06 08       	mov    %eax,0x80677a0
 8048751:	31 c0                	xor    %eax,%eax
 8048753:	8b 15 a0 77 06 08    	mov    0x80677a0,%edx
 8048759:	eb 0d                	jmp    8048768 <keyboard_event+0x28>
 804875b:	90                   	nop
 804875c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8048760:	83 c0 01             	add    $0x1,%eax
 8048763:	83 f8 1a             	cmp    $0x1a,%eax
 8048766:	74 18                	je     8048780 <keyboard_event+0x40>
 8048768:	3b 14 85 c0 47 05 08 	cmp    0x80547c0(,%eax,4),%edx
 804876f:	75 ef                	jne    8048760 <keyboard_event+0x20>
 8048771:	c6 80 a4 77 06 08 01 	movb   $0x1,0x80677a4(%eax)
 8048778:	83 c0 01             	add    $0x1,%eax
 804877b:	83 f8 1a             	cmp    $0x1a,%eax
 804877e:	75 e8                	jne    8048768 <keyboard_event+0x28>
 8048780:	5d                   	pop    %ebp
 8048781:	c3                   	ret    
 8048782:	66 90                	xchg   %ax,%ax
 8048784:	66 90                	xchg   %ax,%ax
 8048786:	66 90                	xchg   %ax,%ax
 8048788:	66 90                	xchg   %ax,%ax
 804878a:	66 90                	xchg   %ax,%ax
 804878c:	66 90                	xchg   %ax,%ax
 804878e:	66 90                	xchg   %ax,%ax

08048790 <timer_event>:
 8048790:	a1 c0 77 06 08       	mov    0x80677c0,%eax
 8048795:	55                   	push   %ebp
 8048796:	89 e5                	mov    %esp,%ebp
 8048798:	83 c0 01             	add    $0x1,%eax
 804879b:	a3 c0 77 06 08       	mov    %eax,0x80677c0
 80487a0:	5d                   	pop    %ebp
 80487a1:	c3                   	ret    
 80487a2:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 80487a9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

080487b0 <set_fps>:
 80487b0:	55                   	push   %ebp
 80487b1:	89 e5                	mov    %esp,%ebp
 80487b3:	8b 45 08             	mov    0x8(%ebp),%eax
 80487b6:	5d                   	pop    %ebp
 80487b7:	a3 c4 77 06 08       	mov    %eax,0x80677c4
 80487bc:	c3                   	ret    
 80487bd:	8d 76 00             	lea    0x0(%esi),%esi

080487c0 <get_fps>:
 80487c0:	55                   	push   %ebp
 80487c1:	a1 c4 77 06 08       	mov    0x80677c4,%eax
 80487c6:	89 e5                	mov    %esp,%ebp
 80487c8:	5d                   	pop    %ebp
 80487c9:	c3                   	ret    
 80487ca:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

080487d0 <main_loop>:
 80487d0:	55                   	push   %ebp
 80487d1:	89 e5                	mov    %esp,%ebp
 80487d3:	57                   	push   %edi
 80487d4:	56                   	push   %esi
 80487d5:	53                   	push   %ebx
 80487d6:	31 ff                	xor    %edi,%edi
 80487d8:	31 db                	xor    %ebx,%ebx
 80487da:	83 ec 1c             	sub    $0x1c,%esp
 80487dd:	8d 76 00             	lea    0x0(%esi),%esi
 80487e0:	f4                   	hlt    
 80487e1:	fa                   	cli    
 80487e2:	a1 c0 77 06 08       	mov    0x80677c0,%eax
 80487e7:	39 c3                	cmp    %eax,%ebx
 80487e9:	0f 84 d1 00 00 00    	je     80488c0 <main_loop+0xf0>
 80487ef:	a1 c0 77 06 08       	mov    0x80677c0,%eax
 80487f4:	39 c3                	cmp    %eax,%ebx
 80487f6:	0f 8d d4 00 00 00    	jge    80488d0 <main_loop+0x100>
 80487fc:	8b 35 c0 77 06 08    	mov    0x80677c0,%esi
 8048802:	fb                   	sti    
 8048803:	90                   	nop
 8048804:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8048808:	e8 d3 04 00 00       	call   8048ce0 <update_keypress>
 804880d:	84 c0                	test   %al,%al
 804880f:	75 f7                	jne    8048808 <main_loop+0x38>
 8048811:	39 f3                	cmp    %esi,%ebx
 8048813:	7d cb                	jge    80487e0 <main_loop+0x10>
 8048815:	c6 45 e7 00          	movb   $0x0,-0x19(%ebp)
 8048819:	eb 59                	jmp    8048874 <main_loop+0xa4>
 804881b:	90                   	nop
 804881c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8048820:	e8 1b 04 00 00       	call   8048c40 <update_letter_pos>
 8048825:	b8 56 55 55 55       	mov    $0x55555556,%eax
 804882a:	f7 eb                	imul   %ebx
 804882c:	89 d8                	mov    %ebx,%eax
 804882e:	c1 f8 1f             	sar    $0x1f,%eax
 8048831:	29 c2                	sub    %eax,%edx
 8048833:	8d 04 52             	lea    (%edx,%edx,2),%eax
 8048836:	39 c3                	cmp    %eax,%ebx
 8048838:	75 04                	jne    804883e <main_loop+0x6e>
 804883a:	c6 45 e7 01          	movb   $0x1,-0x19(%ebp)
 804883e:	89 d8                	mov    %ebx,%eax
 8048840:	ba 1f 85 eb 51       	mov    $0x51eb851f,%edx
 8048845:	f7 ea                	imul   %edx
 8048847:	89 d8                	mov    %ebx,%eax
 8048849:	c1 f8 1f             	sar    $0x1f,%eax
 804884c:	c1 fa 04             	sar    $0x4,%edx
 804884f:	29 c2                	sub    %eax,%edx
 8048851:	6b d2 32             	imul   $0x32,%edx,%edx
 8048854:	39 d3                	cmp    %edx,%ebx
 8048856:	75 15                	jne    804886d <main_loop+0x9d>
 8048858:	8d 44 3f 01          	lea    0x1(%edi,%edi,1),%eax
 804885c:	83 f8 1e             	cmp    $0x1e,%eax
 804885f:	7e 05                	jle    8048866 <main_loop+0x96>
 8048861:	b8 1e 00 00 00       	mov    $0x1e,%eax
 8048866:	a3 c4 77 06 08       	mov    %eax,0x80677c4
 804886b:	31 ff                	xor    %edi,%edi
 804886d:	83 c3 01             	add    $0x1,%ebx
 8048870:	39 f3                	cmp    %esi,%ebx
 8048872:	74 2c                	je     80488a0 <main_loop+0xd0>
 8048874:	b8 e1 83 0f 3e       	mov    $0x3e0f83e1,%eax
 8048879:	f7 eb                	imul   %ebx
 804887b:	89 d8                	mov    %ebx,%eax
 804887d:	c1 f8 1f             	sar    $0x1f,%eax
 8048880:	c1 fa 03             	sar    $0x3,%edx
 8048883:	29 c2                	sub    %eax,%edx
 8048885:	89 d0                	mov    %edx,%eax
 8048887:	c1 e0 05             	shl    $0x5,%eax
 804888a:	01 c2                	add    %eax,%edx
 804888c:	39 d3                	cmp    %edx,%ebx
 804888e:	75 90                	jne    8048820 <main_loop+0x50>
 8048890:	e8 8b 02 00 00       	call   8048b20 <create_new_letter>
 8048895:	eb 89                	jmp    8048820 <main_loop+0x50>
 8048897:	89 f6                	mov    %esi,%esi
 8048899:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
 80488a0:	80 7d e7 00          	cmpb   $0x0,-0x19(%ebp)
 80488a4:	0f 84 36 ff ff ff    	je     80487e0 <main_loop+0x10>
 80488aa:	83 c7 01             	add    $0x1,%edi
 80488ad:	e8 0e fc ff ff       	call   80484c0 <redraw_screen>
 80488b2:	e9 29 ff ff ff       	jmp    80487e0 <main_loop+0x10>
 80488b7:	89 f6                	mov    %esi,%esi
 80488b9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
 80488c0:	fb                   	sti    
 80488c1:	e9 1a ff ff ff       	jmp    80487e0 <main_loop+0x10>
 80488c6:	8d 76 00             	lea    0x0(%esi),%esi
 80488c9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
 80488d0:	fa                   	cli    
 80488d1:	83 ec 0c             	sub    $0xc,%esp
 80488d4:	68 28 48 05 08       	push   $0x8054828
 80488d9:	68 4a 48 05 08       	push   $0x805484a
 80488de:	6a 31                	push   $0x31
 80488e0:	68 33 48 05 08       	push   $0x8054833
 80488e5:	68 04 46 05 08       	push   $0x8054604
 80488ea:	e8 d1 09 00 00       	call   80492c0 <printf>
 80488ef:	b8 01 00 00 00       	mov    $0x1,%eax
 80488f4:	d6                   	(bad)  
 80488f5:	83 c4 20             	add    $0x20,%esp
 80488f8:	e9 ff fe ff ff       	jmp    80487fc <main_loop+0x2c>
 80488fd:	66 90                	xchg   %ax,%ax
 80488ff:	90                   	nop

08048900 <fly_new>:
 8048900:	55                   	push   %ebp
 8048901:	89 e5                	mov    %esp,%ebp
 8048903:	53                   	push   %ebx
 8048904:	83 ec 04             	sub    $0x4,%esp
 8048907:	8b 1d 0c 78 06 08    	mov    0x806780c,%ebx
 804890d:	85 db                	test   %ebx,%ebx
 804890f:	74 27                	je     8048938 <fly_new+0x38>
 8048911:	8b 43 14             	mov    0x14(%ebx),%eax
 8048914:	85 c0                	test   %eax,%eax
 8048916:	74 41                	je     8048959 <fly_new+0x59>
 8048918:	a3 0c 78 06 08       	mov    %eax,0x806780c
 804891d:	c7 43 14 00 00 00 00 	movl   $0x0,0x14(%ebx)
 8048924:	89 d8                	mov    %ebx,%eax
 8048926:	c7 43 10 00 00 00 00 	movl   $0x0,0x10(%ebx)
 804892d:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 8048930:	c9                   	leave  
 8048931:	c3                   	ret    
 8048932:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 8048938:	b8 58 78 06 08       	mov    $0x8067858,%eax
 804893d:	8d 76 00             	lea    0x0(%esi),%esi
 8048940:	89 40 fc             	mov    %eax,-0x4(%eax)
 8048943:	83 c0 18             	add    $0x18,%eax
 8048946:	3d 18 d6 06 08       	cmp    $0x806d618,%eax
 804894b:	75 f3                	jne    8048940 <fly_new+0x40>
 804894d:	bb 40 78 06 08       	mov    $0x8067840,%ebx
 8048952:	8b 43 14             	mov    0x14(%ebx),%eax
 8048955:	85 c0                	test   %eax,%eax
 8048957:	75 bf                	jne    8048918 <fly_new+0x18>
 8048959:	fa                   	cli    
 804895a:	83 ec 0c             	sub    $0xc,%esp
 804895d:	68 54 48 05 08       	push   $0x8054854
 8048962:	68 fd 48 05 08       	push   $0x80548fd
 8048967:	6a 0b                	push   $0xb
 8048969:	68 6d 48 05 08       	push   $0x805486d
 804896e:	68 04 46 05 08       	push   $0x8054604
 8048973:	e8 48 09 00 00       	call   80492c0 <printf>
 8048978:	b8 01 00 00 00       	mov    $0x1,%eax
 804897d:	d6                   	(bad)  
 804897e:	8b 43 14             	mov    0x14(%ebx),%eax
 8048981:	83 c4 20             	add    $0x20,%esp
 8048984:	eb 92                	jmp    8048918 <fly_new+0x18>
 8048986:	8d 76 00             	lea    0x0(%esi),%esi
 8048989:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

08048990 <fly_prev>:
 8048990:	55                   	push   %ebp
 8048991:	89 e5                	mov    %esp,%ebp
 8048993:	53                   	push   %ebx
 8048994:	83 ec 04             	sub    $0x4,%esp
 8048997:	8b 5d 08             	mov    0x8(%ebp),%ebx
 804899a:	85 db                	test   %ebx,%ebx
 804899c:	74 12                	je     80489b0 <fly_prev+0x20>
 804899e:	8b 43 10             	mov    0x10(%ebx),%eax
 80489a1:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 80489a4:	c9                   	leave  
 80489a5:	c3                   	ret    
 80489a6:	8d 76 00             	lea    0x0(%esi),%esi
 80489a9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
 80489b0:	fa                   	cli    
 80489b1:	83 ec 0c             	sub    $0xc,%esp
 80489b4:	68 86 48 05 08       	push   $0x8054886
 80489b9:	68 f4 48 05 08       	push   $0x80548f4
 80489be:	6a 0b                	push   $0xb
 80489c0:	68 6d 48 05 08       	push   $0x805486d
 80489c5:	68 04 46 05 08       	push   $0x8054604
 80489ca:	e8 f1 08 00 00       	call   80492c0 <printf>
 80489cf:	b8 01 00 00 00       	mov    $0x1,%eax
 80489d4:	d6                   	(bad)  
 80489d5:	8b 43 10             	mov    0x10(%ebx),%eax
 80489d8:	83 c4 20             	add    $0x20,%esp
 80489db:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 80489de:	c9                   	leave  
 80489df:	c3                   	ret    

080489e0 <fly_next>:
 80489e0:	55                   	push   %ebp
 80489e1:	89 e5                	mov    %esp,%ebp
 80489e3:	53                   	push   %ebx
 80489e4:	83 ec 04             	sub    $0x4,%esp
 80489e7:	8b 5d 08             	mov    0x8(%ebp),%ebx
 80489ea:	85 db                	test   %ebx,%ebx
 80489ec:	74 12                	je     8048a00 <fly_next+0x20>
 80489ee:	8b 43 14             	mov    0x14(%ebx),%eax
 80489f1:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 80489f4:	c9                   	leave  
 80489f5:	c3                   	ret    
 80489f6:	8d 76 00             	lea    0x0(%esi),%esi
 80489f9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
 8048a00:	fa                   	cli    
 8048a01:	83 ec 0c             	sub    $0xc,%esp
 8048a04:	68 86 48 05 08       	push   $0x8054886
 8048a09:	68 eb 48 05 08       	push   $0x80548eb
 8048a0e:	6a 0b                	push   $0xb
 8048a10:	68 6d 48 05 08       	push   $0x805486d
 8048a15:	68 04 46 05 08       	push   $0x8054604
 8048a1a:	e8 a1 08 00 00       	call   80492c0 <printf>
 8048a1f:	b8 01 00 00 00       	mov    $0x1,%eax
 8048a24:	d6                   	(bad)  
 8048a25:	8b 43 14             	mov    0x14(%ebx),%eax
 8048a28:	83 c4 20             	add    $0x20,%esp
 8048a2b:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 8048a2e:	c9                   	leave  
 8048a2f:	c3                   	ret    

08048a30 <fly_insert>:
 8048a30:	55                   	push   %ebp
 8048a31:	89 e5                	mov    %esp,%ebp
 8048a33:	53                   	push   %ebx
 8048a34:	83 ec 04             	sub    $0x4,%esp
 8048a37:	8b 45 08             	mov    0x8(%ebp),%eax
 8048a3a:	8b 55 0c             	mov    0xc(%ebp),%edx
 8048a3d:	8b 5d 10             	mov    0x10(%ebp),%ebx
 8048a40:	85 c0                	test   %eax,%eax
 8048a42:	75 04                	jne    8048a48 <fly_insert+0x18>
 8048a44:	85 d2                	test   %edx,%edx
 8048a46:	74 20                	je     8048a68 <fly_insert+0x38>
 8048a48:	85 c0                	test   %eax,%eax
 8048a4a:	89 43 10             	mov    %eax,0x10(%ebx)
 8048a4d:	89 53 14             	mov    %edx,0x14(%ebx)
 8048a50:	74 03                	je     8048a55 <fly_insert+0x25>
 8048a52:	89 58 14             	mov    %ebx,0x14(%eax)
 8048a55:	85 d2                	test   %edx,%edx
 8048a57:	74 03                	je     8048a5c <fly_insert+0x2c>
 8048a59:	89 5a 10             	mov    %ebx,0x10(%edx)
 8048a5c:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 8048a5f:	c9                   	leave  
 8048a60:	c3                   	ret    
 8048a61:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 8048a68:	fa                   	cli    
 8048a69:	83 ec 0c             	sub    $0xc,%esp
 8048a6c:	68 93 48 05 08       	push   $0x8054893
 8048a71:	68 e0 48 05 08       	push   $0x80548e0
 8048a76:	6a 0b                	push   $0xb
 8048a78:	68 6d 48 05 08       	push   $0x805486d
 8048a7d:	68 04 46 05 08       	push   $0x8054604
 8048a82:	e8 39 08 00 00       	call   80492c0 <printf>
 8048a87:	b8 01 00 00 00       	mov    $0x1,%eax
 8048a8c:	d6                   	(bad)  
 8048a8d:	c7 43 10 00 00 00 00 	movl   $0x0,0x10(%ebx)
 8048a94:	c7 43 14 00 00 00 00 	movl   $0x0,0x14(%ebx)
 8048a9b:	83 c4 20             	add    $0x20,%esp
 8048a9e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 8048aa1:	c9                   	leave  
 8048aa2:	c3                   	ret    
 8048aa3:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 8048aa9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

08048ab0 <fly_remove>:
 8048ab0:	55                   	push   %ebp
 8048ab1:	89 e5                	mov    %esp,%ebp
 8048ab3:	8b 45 08             	mov    0x8(%ebp),%eax
 8048ab6:	8b 50 10             	mov    0x10(%eax),%edx
 8048ab9:	8b 40 14             	mov    0x14(%eax),%eax
 8048abc:	85 d2                	test   %edx,%edx
 8048abe:	74 03                	je     8048ac3 <fly_remove+0x13>
 8048ac0:	89 42 14             	mov    %eax,0x14(%edx)
 8048ac3:	85 c0                	test   %eax,%eax
 8048ac5:	74 03                	je     8048aca <fly_remove+0x1a>
 8048ac7:	89 50 10             	mov    %edx,0x10(%eax)
 8048aca:	5d                   	pop    %ebp
 8048acb:	c3                   	ret    
 8048acc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

08048ad0 <fly_free>:
 8048ad0:	55                   	push   %ebp
 8048ad1:	8b 15 0c 78 06 08    	mov    0x806780c,%edx
 8048ad7:	89 e5                	mov    %esp,%ebp
 8048ad9:	8b 45 08             	mov    0x8(%ebp),%eax
 8048adc:	89 50 14             	mov    %edx,0x14(%eax)
 8048adf:	a3 0c 78 06 08       	mov    %eax,0x806780c
 8048ae4:	5d                   	pop    %ebp
 8048ae5:	c3                   	ret    
 8048ae6:	8d 76 00             	lea    0x0(%esi),%esi
 8048ae9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

08048af0 <get_hit>:
 8048af0:	55                   	push   %ebp
 8048af1:	a1 04 78 06 08       	mov    0x8067804,%eax
 8048af6:	89 e5                	mov    %esp,%ebp
 8048af8:	5d                   	pop    %ebp
 8048af9:	c3                   	ret    
 8048afa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

08048b00 <get_miss>:
 8048b00:	55                   	push   %ebp
 8048b01:	a1 00 78 06 08       	mov    0x8067800,%eax
 8048b06:	89 e5                	mov    %esp,%ebp
 8048b08:	5d                   	pop    %ebp
 8048b09:	c3                   	ret    
 8048b0a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

08048b10 <characters>:
 8048b10:	55                   	push   %ebp
 8048b11:	a1 08 78 06 08       	mov    0x8067808,%eax
 8048b16:	89 e5                	mov    %esp,%ebp
 8048b18:	5d                   	pop    %ebp
 8048b19:	c3                   	ret    
 8048b1a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

08048b20 <create_new_letter>:
 8048b20:	8b 15 08 78 06 08    	mov    0x8067808,%edx
 8048b26:	55                   	push   %ebp
 8048b27:	89 e5                	mov    %esp,%ebp
 8048b29:	56                   	push   %esi
 8048b2a:	53                   	push   %ebx
 8048b2b:	85 d2                	test   %edx,%edx
 8048b2d:	0f 84 f5 00 00 00    	je     8048c28 <create_new_letter+0x108>
 8048b33:	e8 c8 fd ff ff       	call   8048900 <fly_new>
 8048b38:	83 ec 04             	sub    $0x4,%esp
 8048b3b:	89 c3                	mov    %eax,%ebx
 8048b3d:	50                   	push   %eax
 8048b3e:	ff 35 08 78 06 08    	pushl  0x8067808
 8048b44:	6a 00                	push   $0x0
 8048b46:	e8 e5 fe ff ff       	call   8048a30 <fly_insert>
 8048b4b:	89 1d 08 78 06 08    	mov    %ebx,0x8067808
 8048b51:	83 c4 10             	add    $0x10,%esp
 8048b54:	c7 03 00 00 00 00    	movl   $0x0,(%ebx)
 8048b5a:	e8 b1 07 00 00       	call   8049310 <rand>
 8048b5f:	ba f3 1a ca 6b       	mov    $0x6bca1af3,%edx
 8048b64:	89 c1                	mov    %eax,%ecx
 8048b66:	f7 ea                	imul   %edx
 8048b68:	89 c8                	mov    %ecx,%eax
 8048b6a:	c1 f8 1f             	sar    $0x1f,%eax
 8048b6d:	c1 fa 04             	sar    $0x4,%edx
 8048b70:	29 c2                	sub    %eax,%edx
 8048b72:	6b d2 26             	imul   $0x26,%edx,%edx
 8048b75:	29 d1                	sub    %edx,%ecx
 8048b77:	8d 04 cd 08 00 00 00 	lea    0x8(,%ecx,8),%eax
 8048b7e:	89 43 04             	mov    %eax,0x4(%ebx)
 8048b81:	8b 1d 08 78 06 08    	mov    0x8067808,%ebx
 8048b87:	e8 84 07 00 00       	call   8049310 <rand>
 8048b8c:	ba d3 4d 62 10       	mov    $0x10624dd3,%edx
 8048b91:	89 c1                	mov    %eax,%ecx
 8048b93:	f7 ea                	imul   %edx
 8048b95:	89 c8                	mov    %ecx,%eax
 8048b97:	c1 f8 1f             	sar    $0x1f,%eax
 8048b9a:	c1 fa 06             	sar    $0x6,%edx
 8048b9d:	29 c2                	sub    %eax,%edx
 8048b9f:	69 d2 e8 03 00 00    	imul   $0x3e8,%edx,%edx
 8048ba5:	29 d1                	sub    %edx,%ecx
 8048ba7:	89 c8                	mov    %ecx,%eax
 8048ba9:	89 ca                	mov    %ecx,%edx
 8048bab:	25 00 00 00 80       	and    $0x80000000,%eax
 8048bb0:	31 c2                	xor    %eax,%edx
 8048bb2:	85 c0                	test   %eax,%eax
 8048bb4:	0f 95 c0             	setne  %al
 8048bb7:	c1 e2 10             	shl    $0x10,%edx
 8048bba:	83 ec 08             	sub    $0x8,%esp
 8048bbd:	0f b6 c0             	movzbl %al,%eax
 8048bc0:	68 00 00 d0 07       	push   $0x7d00000
 8048bc5:	89 c1                	mov    %eax,%ecx
 8048bc7:	f7 d9                	neg    %ecx
 8048bc9:	31 ca                	xor    %ecx,%edx
 8048bcb:	01 c2                	add    %eax,%edx
 8048bcd:	52                   	push   %edx
 8048bce:	e8 89 03 00 00       	call   8048f5c <F_div_F>
 8048bd3:	89 c6                	mov    %eax,%esi
 8048bd5:	c7 04 24 00 00 00 3f 	movl   $0x3f000000,(%esp)
 8048bdc:	e8 78 04 00 00       	call   8049059 <f2F>
 8048be1:	01 f0                	add    %esi,%eax
 8048be3:	89 43 0c             	mov    %eax,0xc(%ebx)
 8048be6:	8b 1d 08 78 06 08    	mov    0x8067808,%ebx
 8048bec:	e8 1f 07 00 00       	call   8049310 <rand>
 8048bf1:	ba 4f ec c4 4e       	mov    $0x4ec4ec4f,%edx
 8048bf6:	89 c1                	mov    %eax,%ecx
 8048bf8:	f7 ea                	imul   %edx
 8048bfa:	89 c8                	mov    %ecx,%eax
 8048bfc:	c1 f8 1f             	sar    $0x1f,%eax
 8048bff:	c1 fa 03             	sar    $0x3,%edx
 8048c02:	29 c2                	sub    %eax,%edx
 8048c04:	6b d2 1a             	imul   $0x1a,%edx,%edx
 8048c07:	29 d1                	sub    %edx,%ecx
 8048c09:	89 4b 08             	mov    %ecx,0x8(%ebx)
 8048c0c:	58                   	pop    %eax
 8048c0d:	a1 08 78 06 08       	mov    0x8067808,%eax
 8048c12:	ff 70 08             	pushl  0x8(%eax)
 8048c15:	e8 76 fa ff ff       	call   8048690 <release_key>
 8048c1a:	83 c4 10             	add    $0x10,%esp
 8048c1d:	8d 65 f8             	lea    -0x8(%ebp),%esp
 8048c20:	5b                   	pop    %ebx
 8048c21:	5e                   	pop    %esi
 8048c22:	5d                   	pop    %ebp
 8048c23:	c3                   	ret    
 8048c24:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8048c28:	e8 d3 fc ff ff       	call   8048900 <fly_new>
 8048c2d:	89 c3                	mov    %eax,%ebx
 8048c2f:	a3 08 78 06 08       	mov    %eax,0x8067808
 8048c34:	e9 1b ff ff ff       	jmp    8048b54 <create_new_letter+0x34>
 8048c39:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

08048c40 <update_letter_pos>:
 8048c40:	55                   	push   %ebp
 8048c41:	89 e5                	mov    %esp,%ebp
 8048c43:	57                   	push   %edi
 8048c44:	56                   	push   %esi
 8048c45:	53                   	push   %ebx
 8048c46:	83 ec 0c             	sub    $0xc,%esp
 8048c49:	8b 1d 08 78 06 08    	mov    0x8067808,%ebx
 8048c4f:	85 db                	test   %ebx,%ebx
 8048c51:	75 54                	jne    8048ca7 <update_letter_pos+0x67>
 8048c53:	eb 7b                	jmp    8048cd0 <update_letter_pos+0x90>
 8048c55:	8d 76 00             	lea    0x0(%esi),%esi
 8048c58:	83 ec 0c             	sub    $0xc,%esp
 8048c5b:	68 cd cc fc 40       	push   $0x40fccccd
 8048c60:	e8 f4 03 00 00       	call   8049059 <f2F>
 8048c65:	01 c6                	add    %eax,%esi
 8048c67:	83 c4 10             	add    $0x10,%esp
 8048c6a:	81 fe 00 00 c8 00    	cmp    $0xc80000,%esi
 8048c70:	7e 2f                	jle    8048ca1 <update_letter_pos+0x61>
 8048c72:	8b 03                	mov    (%ebx),%eax
 8048c74:	85 c0                	test   %eax,%eax
 8048c76:	78 3d                	js     8048cb5 <update_letter_pos+0x75>
 8048c78:	83 05 00 78 06 08 01 	addl   $0x1,0x8067800
 8048c7f:	83 ec 0c             	sub    $0xc,%esp
 8048c82:	53                   	push   %ebx
 8048c83:	e8 28 fe ff ff       	call   8048ab0 <fly_remove>
 8048c88:	83 c4 10             	add    $0x10,%esp
 8048c8b:	3b 1d 08 78 06 08    	cmp    0x8067808,%ebx
 8048c91:	a1 0c 78 06 08       	mov    0x806780c,%eax
 8048c96:	89 1d 0c 78 06 08    	mov    %ebx,0x806780c
 8048c9c:	89 43 14             	mov    %eax,0x14(%ebx)
 8048c9f:	74 1f                	je     8048cc0 <update_letter_pos+0x80>
 8048ca1:	85 ff                	test   %edi,%edi
 8048ca3:	89 fb                	mov    %edi,%ebx
 8048ca5:	74 29                	je     8048cd0 <update_letter_pos+0x90>
 8048ca7:	8b 73 0c             	mov    0xc(%ebx),%esi
 8048caa:	03 33                	add    (%ebx),%esi
 8048cac:	8b 7b 14             	mov    0x14(%ebx),%edi
 8048caf:	85 f6                	test   %esi,%esi
 8048cb1:	89 33                	mov    %esi,(%ebx)
 8048cb3:	79 a3                	jns    8048c58 <update_letter_pos+0x18>
 8048cb5:	83 05 04 78 06 08 01 	addl   $0x1,0x8067804
 8048cbc:	eb c1                	jmp    8048c7f <update_letter_pos+0x3f>
 8048cbe:	66 90                	xchg   %ax,%ax
 8048cc0:	85 ff                	test   %edi,%edi
 8048cc2:	89 3d 08 78 06 08    	mov    %edi,0x8067808
 8048cc8:	89 fb                	mov    %edi,%ebx
 8048cca:	75 db                	jne    8048ca7 <update_letter_pos+0x67>
 8048ccc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8048cd0:	8d 65 f4             	lea    -0xc(%ebp),%esp
 8048cd3:	5b                   	pop    %ebx
 8048cd4:	5e                   	pop    %esi
 8048cd5:	5f                   	pop    %edi
 8048cd6:	5d                   	pop    %ebp
 8048cd7:	c3                   	ret    
 8048cd8:	90                   	nop
 8048cd9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

08048ce0 <update_keypress>:
 8048ce0:	55                   	push   %ebp
 8048ce1:	89 e5                	mov    %esp,%ebp
 8048ce3:	57                   	push   %edi
 8048ce4:	56                   	push   %esi
 8048ce5:	53                   	push   %ebx
 8048ce6:	83 ec 0c             	sub    $0xc,%esp
 8048ce9:	fa                   	cli    
 8048cea:	8b 3d 08 78 06 08    	mov    0x8067808,%edi
 8048cf0:	85 ff                	test   %edi,%edi
 8048cf2:	0f 84 a8 00 00 00    	je     8048da0 <update_keypress+0xc0>
 8048cf8:	bb 00 00 9c ff       	mov    $0xff9c0000,%ebx
 8048cfd:	31 f6                	xor    %esi,%esi
 8048cff:	eb 19                	jmp    8048d1a <update_keypress+0x3a>
 8048d01:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 8048d08:	8b 47 0c             	mov    0xc(%edi),%eax
 8048d0b:	85 c0                	test   %eax,%eax
 8048d0d:	7e 04                	jle    8048d13 <update_keypress+0x33>
 8048d0f:	39 1f                	cmp    %ebx,(%edi)
 8048d11:	7f 3d                	jg     8048d50 <update_keypress+0x70>
 8048d13:	8b 7f 14             	mov    0x14(%edi),%edi
 8048d16:	85 ff                	test   %edi,%edi
 8048d18:	74 56                	je     8048d70 <update_keypress+0x90>
 8048d1a:	83 7f 08 19          	cmpl   $0x19,0x8(%edi)
 8048d1e:	76 e8                	jbe    8048d08 <update_keypress+0x28>
 8048d20:	fa                   	cli    
 8048d21:	83 ec 0c             	sub    $0xc,%esp
 8048d24:	68 b0 48 05 08       	push   $0x80548b0
 8048d29:	68 d0 48 05 08       	push   $0x80548d0
 8048d2e:	6a 4c                	push   $0x4c
 8048d30:	68 6d 48 05 08       	push   $0x805486d
 8048d35:	68 04 46 05 08       	push   $0x8054604
 8048d3a:	e8 81 05 00 00       	call   80492c0 <printf>
 8048d3f:	b8 01 00 00 00       	mov    $0x1,%eax
 8048d44:	d6                   	(bad)  
 8048d45:	83 c4 20             	add    $0x20,%esp
 8048d48:	eb be                	jmp    8048d08 <update_keypress+0x28>
 8048d4a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 8048d50:	83 ec 0c             	sub    $0xc,%esp
 8048d53:	ff 77 08             	pushl  0x8(%edi)
 8048d56:	e8 85 f9 ff ff       	call   80486e0 <query_key>
 8048d5b:	83 c4 10             	add    $0x10,%esp
 8048d5e:	84 c0                	test   %al,%al
 8048d60:	74 b1                	je     8048d13 <update_keypress+0x33>
 8048d62:	8b 1f                	mov    (%edi),%ebx
 8048d64:	89 fe                	mov    %edi,%esi
 8048d66:	8b 7f 14             	mov    0x14(%edi),%edi
 8048d69:	85 ff                	test   %edi,%edi
 8048d6b:	75 ad                	jne    8048d1a <update_keypress+0x3a>
 8048d6d:	8d 76 00             	lea    0x0(%esi),%esi
 8048d70:	85 f6                	test   %esi,%esi
 8048d72:	74 2c                	je     8048da0 <update_keypress+0xc0>
 8048d74:	83 ec 0c             	sub    $0xc,%esp
 8048d77:	ff 76 08             	pushl  0x8(%esi)
 8048d7a:	e8 11 f9 ff ff       	call   8048690 <release_key>
 8048d7f:	c7 46 0c 00 00 fd ff 	movl   $0xfffd0000,0xc(%esi)
 8048d86:	83 c4 10             	add    $0x10,%esp
 8048d89:	8d 65 f4             	lea    -0xc(%ebp),%esp
 8048d8c:	b8 01 00 00 00       	mov    $0x1,%eax
 8048d91:	5b                   	pop    %ebx
 8048d92:	5e                   	pop    %esi
 8048d93:	5f                   	pop    %edi
 8048d94:	5d                   	pop    %ebp
 8048d95:	c3                   	ret    
 8048d96:	8d 76 00             	lea    0x0(%esi),%esi
 8048d99:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
 8048da0:	fb                   	sti    
 8048da1:	8d 65 f4             	lea    -0xc(%ebp),%esp
 8048da4:	31 c0                	xor    %eax,%eax
 8048da6:	5b                   	pop    %ebx
 8048da7:	5e                   	pop    %esi
 8048da8:	5f                   	pop    %edi
 8048da9:	5d                   	pop    %ebp
 8048daa:	c3                   	ret    

08048dab <int2F>:
 8048dab:	55                   	push   %ebp
 8048dac:	89 e5                	mov    %esp,%ebp
 8048dae:	83 ec 10             	sub    $0x10,%esp
 8048db1:	8b 45 08             	mov    0x8(%ebp),%eax
 8048db4:	25 00 00 00 80       	and    $0x80000000,%eax
 8048db9:	89 45 fc             	mov    %eax,-0x4(%ebp)
 8048dbc:	8b 45 fc             	mov    -0x4(%ebp),%eax
 8048dbf:	31 45 08             	xor    %eax,0x8(%ebp)
 8048dc2:	c1 65 08 10          	shll   $0x10,0x8(%ebp)
 8048dc6:	83 7d fc 00          	cmpl   $0x0,-0x4(%ebp)
 8048dca:	74 03                	je     8048dcf <int2F+0x24>
 8048dcc:	f7 5d 08             	negl   0x8(%ebp)
 8048dcf:	8b 45 08             	mov    0x8(%ebp),%eax
 8048dd2:	c9                   	leave  
 8048dd3:	c3                   	ret    

08048dd4 <F_div_int>:
 8048dd4:	55                   	push   %ebp
 8048dd5:	89 e5                	mov    %esp,%ebp
 8048dd7:	8b 45 08             	mov    0x8(%ebp),%eax
 8048dda:	99                   	cltd   
 8048ddb:	f7 7d 0c             	idivl  0xc(%ebp)
 8048dde:	5d                   	pop    %ebp
 8048ddf:	c3                   	ret    

08048de0 <F_mul_F>:
 8048de0:	55                   	push   %ebp
 8048de1:	89 e5                	mov    %esp,%ebp
 8048de3:	53                   	push   %ebx
 8048de4:	83 ec 14             	sub    $0x14,%esp
 8048de7:	8b 45 08             	mov    0x8(%ebp),%eax
 8048dea:	99                   	cltd   
 8048deb:	89 45 f0             	mov    %eax,-0x10(%ebp)
 8048dee:	89 55 f4             	mov    %edx,-0xc(%ebp)
 8048df1:	8b 45 0c             	mov    0xc(%ebp),%eax
 8048df4:	99                   	cltd   
 8048df5:	8b 4d f4             	mov    -0xc(%ebp),%ecx
 8048df8:	89 cb                	mov    %ecx,%ebx
 8048dfa:	0f af d8             	imul   %eax,%ebx
 8048dfd:	8b 4d f0             	mov    -0x10(%ebp),%ecx
 8048e00:	0f af ca             	imul   %edx,%ecx
 8048e03:	01 d9                	add    %ebx,%ecx
 8048e05:	f7 65 f0             	mull   -0x10(%ebp)
 8048e08:	01 d1                	add    %edx,%ecx
 8048e0a:	89 ca                	mov    %ecx,%edx
 8048e0c:	89 45 f0             	mov    %eax,-0x10(%ebp)
 8048e0f:	89 55 f4             	mov    %edx,-0xc(%ebp)
 8048e12:	89 45 f0             	mov    %eax,-0x10(%ebp)
 8048e15:	89 55 f4             	mov    %edx,-0xc(%ebp)
 8048e18:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8048e1b:	8b 55 f4             	mov    -0xc(%ebp),%edx
 8048e1e:	0f ac d0 10          	shrd   $0x10,%edx,%eax
 8048e22:	c1 fa 10             	sar    $0x10,%edx
 8048e25:	89 45 f0             	mov    %eax,-0x10(%ebp)
 8048e28:	89 55 f4             	mov    %edx,-0xc(%ebp)
 8048e2b:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8048e2e:	89 45 08             	mov    %eax,0x8(%ebp)
 8048e31:	8b 45 08             	mov    0x8(%ebp),%eax
 8048e34:	83 c4 14             	add    $0x14,%esp
 8048e37:	5b                   	pop    %ebx
 8048e38:	5d                   	pop    %ebp
 8048e39:	c3                   	ret    

08048e3a <howManyBits>:
 8048e3a:	55                   	push   %ebp
 8048e3b:	89 e5                	mov    %esp,%ebp
 8048e3d:	83 ec 10             	sub    $0x10,%esp
 8048e40:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
 8048e47:	8b 45 08             	mov    0x8(%ebp),%eax
 8048e4a:	c1 e0 10             	shl    $0x10,%eax
 8048e4d:	c1 f8 10             	sar    $0x10,%eax
 8048e50:	3b 45 08             	cmp    0x8(%ebp),%eax
 8048e53:	0f 94 c0             	sete   %al
 8048e56:	0f b6 c0             	movzbl %al,%eax
 8048e59:	89 45 f8             	mov    %eax,-0x8(%ebp)
 8048e5c:	8b 45 08             	mov    0x8(%ebp),%eax
 8048e5f:	c1 f8 1f             	sar    $0x1f,%eax
 8048e62:	31 45 08             	xor    %eax,0x8(%ebp)
 8048e65:	8b 45 f8             	mov    -0x8(%ebp),%eax
 8048e68:	c1 e0 04             	shl    $0x4,%eax
 8048e6b:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8048e6e:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8048e71:	89 45 fc             	mov    %eax,-0x4(%ebp)
 8048e74:	8b 45 fc             	mov    -0x4(%ebp),%eax
 8048e77:	83 c0 08             	add    $0x8,%eax
 8048e7a:	89 45 f0             	mov    %eax,-0x10(%ebp)
 8048e7d:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8048e80:	8b 55 08             	mov    0x8(%ebp),%edx
 8048e83:	89 c1                	mov    %eax,%ecx
 8048e85:	d3 e2                	shl    %cl,%edx
 8048e87:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8048e8a:	89 c1                	mov    %eax,%ecx
 8048e8c:	d3 fa                	sar    %cl,%edx
 8048e8e:	89 d0                	mov    %edx,%eax
 8048e90:	3b 45 08             	cmp    0x8(%ebp),%eax
 8048e93:	0f 94 c0             	sete   %al
 8048e96:	0f b6 c0             	movzbl %al,%eax
 8048e99:	89 45 f8             	mov    %eax,-0x8(%ebp)
 8048e9c:	8b 45 f8             	mov    -0x8(%ebp),%eax
 8048e9f:	c1 e0 03             	shl    $0x3,%eax
 8048ea2:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8048ea5:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8048ea8:	01 45 fc             	add    %eax,-0x4(%ebp)
 8048eab:	8b 45 fc             	mov    -0x4(%ebp),%eax
 8048eae:	83 c0 04             	add    $0x4,%eax
 8048eb1:	89 45 f0             	mov    %eax,-0x10(%ebp)
 8048eb4:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8048eb7:	8b 55 08             	mov    0x8(%ebp),%edx
 8048eba:	89 c1                	mov    %eax,%ecx
 8048ebc:	d3 e2                	shl    %cl,%edx
 8048ebe:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8048ec1:	89 c1                	mov    %eax,%ecx
 8048ec3:	d3 fa                	sar    %cl,%edx
 8048ec5:	89 d0                	mov    %edx,%eax
 8048ec7:	3b 45 08             	cmp    0x8(%ebp),%eax
 8048eca:	0f 94 c0             	sete   %al
 8048ecd:	0f b6 c0             	movzbl %al,%eax
 8048ed0:	89 45 f8             	mov    %eax,-0x8(%ebp)
 8048ed3:	8b 45 f8             	mov    -0x8(%ebp),%eax
 8048ed6:	c1 e0 02             	shl    $0x2,%eax
 8048ed9:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8048edc:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8048edf:	01 45 fc             	add    %eax,-0x4(%ebp)
 8048ee2:	8b 45 fc             	mov    -0x4(%ebp),%eax
 8048ee5:	83 c0 02             	add    $0x2,%eax
 8048ee8:	89 45 f0             	mov    %eax,-0x10(%ebp)
 8048eeb:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8048eee:	8b 55 08             	mov    0x8(%ebp),%edx
 8048ef1:	89 c1                	mov    %eax,%ecx
 8048ef3:	d3 e2                	shl    %cl,%edx
 8048ef5:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8048ef8:	89 c1                	mov    %eax,%ecx
 8048efa:	d3 fa                	sar    %cl,%edx
 8048efc:	89 d0                	mov    %edx,%eax
 8048efe:	3b 45 08             	cmp    0x8(%ebp),%eax
 8048f01:	0f 94 c0             	sete   %al
 8048f04:	0f b6 c0             	movzbl %al,%eax
 8048f07:	89 45 f8             	mov    %eax,-0x8(%ebp)
 8048f0a:	8b 45 f8             	mov    -0x8(%ebp),%eax
 8048f0d:	01 c0                	add    %eax,%eax
 8048f0f:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8048f12:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8048f15:	01 45 fc             	add    %eax,-0x4(%ebp)
 8048f18:	8b 45 fc             	mov    -0x4(%ebp),%eax
 8048f1b:	83 c0 01             	add    $0x1,%eax
 8048f1e:	89 45 f0             	mov    %eax,-0x10(%ebp)
 8048f21:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8048f24:	8b 55 08             	mov    0x8(%ebp),%edx
 8048f27:	89 c1                	mov    %eax,%ecx
 8048f29:	d3 e2                	shl    %cl,%edx
 8048f2b:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8048f2e:	89 c1                	mov    %eax,%ecx
 8048f30:	d3 fa                	sar    %cl,%edx
 8048f32:	89 d0                	mov    %edx,%eax
 8048f34:	3b 45 08             	cmp    0x8(%ebp),%eax
 8048f37:	0f 94 c0             	sete   %al
 8048f3a:	0f b6 c0             	movzbl %al,%eax
 8048f3d:	89 45 f8             	mov    %eax,-0x8(%ebp)
 8048f40:	8b 45 f8             	mov    -0x8(%ebp),%eax
 8048f43:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8048f46:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8048f49:	01 45 fc             	add    %eax,-0x4(%ebp)
 8048f4c:	b8 20 00 00 00       	mov    $0x20,%eax
 8048f51:	2b 45 fc             	sub    -0x4(%ebp),%eax
 8048f54:	89 45 fc             	mov    %eax,-0x4(%ebp)
 8048f57:	8b 45 fc             	mov    -0x4(%ebp),%eax
 8048f5a:	c9                   	leave  
 8048f5b:	c3                   	ret    

08048f5c <F_div_F>:
 8048f5c:	55                   	push   %ebp
 8048f5d:	89 e5                	mov    %esp,%ebp
 8048f5f:	83 ec 30             	sub    $0x30,%esp
 8048f62:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
 8048f69:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
 8048f70:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 8048f74:	79 0a                	jns    8048f80 <F_div_F+0x24>
 8048f76:	c7 45 fc 01 00 00 00 	movl   $0x1,-0x4(%ebp)
 8048f7d:	f7 5d 08             	negl   0x8(%ebp)
 8048f80:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
 8048f84:	79 0a                	jns    8048f90 <F_div_F+0x34>
 8048f86:	c7 45 f8 01 00 00 00 	movl   $0x1,-0x8(%ebp)
 8048f8d:	f7 5d 0c             	negl   0xc(%ebp)
 8048f90:	8b 45 08             	mov    0x8(%ebp),%eax
 8048f93:	99                   	cltd   
 8048f94:	89 45 f0             	mov    %eax,-0x10(%ebp)
 8048f97:	89 55 f4             	mov    %edx,-0xc(%ebp)
 8048f9a:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8048f9d:	8b 55 f4             	mov    -0xc(%ebp),%edx
 8048fa0:	0f a4 c2 10          	shld   $0x10,%eax,%edx
 8048fa4:	c1 e0 10             	shl    $0x10,%eax
 8048fa7:	89 45 f0             	mov    %eax,-0x10(%ebp)
 8048faa:	89 55 f4             	mov    %edx,-0xc(%ebp)
 8048fad:	ff 75 0c             	pushl  0xc(%ebp)
 8048fb0:	e8 85 fe ff ff       	call   8048e3a <howManyBits>
 8048fb5:	83 c4 04             	add    $0x4,%esp
 8048fb8:	89 45 e0             	mov    %eax,-0x20(%ebp)
 8048fbb:	8b 45 0c             	mov    0xc(%ebp),%eax
 8048fbe:	99                   	cltd   
 8048fbf:	89 45 d8             	mov    %eax,-0x28(%ebp)
 8048fc2:	89 55 dc             	mov    %edx,-0x24(%ebp)
 8048fc5:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
 8048fcc:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
 8048fd3:	b8 40 00 00 00       	mov    $0x40,%eax
 8048fd8:	2b 45 e0             	sub    -0x20(%ebp),%eax
 8048fdb:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 8048fde:	eb 5c                	jmp    804903c <F_div_F+0xe0>
 8048fe0:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
 8048fe3:	8b 45 d8             	mov    -0x28(%ebp),%eax
 8048fe6:	8b 55 dc             	mov    -0x24(%ebp),%edx
 8048fe9:	0f a5 c2             	shld   %cl,%eax,%edx
 8048fec:	d3 e0                	shl    %cl,%eax
 8048fee:	f6 c1 20             	test   $0x20,%cl
 8048ff1:	74 04                	je     8048ff7 <F_div_F+0x9b>
 8048ff3:	89 c2                	mov    %eax,%edx
 8048ff5:	31 c0                	xor    %eax,%eax
 8048ff7:	3b 55 f4             	cmp    -0xc(%ebp),%edx
 8048ffa:	7f 3c                	jg     8049038 <F_div_F+0xdc>
 8048ffc:	3b 55 f4             	cmp    -0xc(%ebp),%edx
 8048fff:	7c 05                	jl     8049006 <F_div_F+0xaa>
 8049001:	3b 45 f0             	cmp    -0x10(%ebp),%eax
 8049004:	77 32                	ja     8049038 <F_div_F+0xdc>
 8049006:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 8049009:	ba 01 00 00 00       	mov    $0x1,%edx
 804900e:	89 c1                	mov    %eax,%ecx
 8049010:	d3 e2                	shl    %cl,%edx
 8049012:	89 d0                	mov    %edx,%eax
 8049014:	99                   	cltd   
 8049015:	01 45 e8             	add    %eax,-0x18(%ebp)
 8049018:	11 55 ec             	adc    %edx,-0x14(%ebp)
 804901b:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
 804901e:	8b 45 d8             	mov    -0x28(%ebp),%eax
 8049021:	8b 55 dc             	mov    -0x24(%ebp),%edx
 8049024:	0f a5 c2             	shld   %cl,%eax,%edx
 8049027:	d3 e0                	shl    %cl,%eax
 8049029:	f6 c1 20             	test   $0x20,%cl
 804902c:	74 04                	je     8049032 <F_div_F+0xd6>
 804902e:	89 c2                	mov    %eax,%edx
 8049030:	31 c0                	xor    %eax,%eax
 8049032:	29 45 f0             	sub    %eax,-0x10(%ebp)
 8049035:	19 55 f4             	sbb    %edx,-0xc(%ebp)
 8049038:	83 6d e4 01          	subl   $0x1,-0x1c(%ebp)
 804903c:	83 7d e4 00          	cmpl   $0x0,-0x1c(%ebp)
 8049040:	79 9e                	jns    8048fe0 <F_div_F+0x84>
 8049042:	8b 45 fc             	mov    -0x4(%ebp),%eax
 8049045:	3b 45 f8             	cmp    -0x8(%ebp),%eax
 8049048:	74 0a                	je     8049054 <F_div_F+0xf8>
 804904a:	f7 5d e8             	negl   -0x18(%ebp)
 804904d:	83 55 ec 00          	adcl   $0x0,-0x14(%ebp)
 8049051:	f7 5d ec             	negl   -0x14(%ebp)
 8049054:	8b 45 e8             	mov    -0x18(%ebp),%eax
 8049057:	c9                   	leave  
 8049058:	c3                   	ret    

08049059 <f2F>:
 8049059:	55                   	push   %ebp
 804905a:	89 e5                	mov    %esp,%ebp
 804905c:	83 ec 10             	sub    $0x10,%esp
 804905f:	8b 45 08             	mov    0x8(%ebp),%eax
 8049062:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8049065:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8049068:	05 00 00 00 08       	add    $0x8000000,%eax
 804906d:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8049070:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8049073:	25 00 00 00 80       	and    $0x80000000,%eax
 8049078:	89 45 fc             	mov    %eax,-0x4(%ebp)
 804907b:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804907e:	25 00 00 80 7f       	and    $0x7f800000,%eax
 8049083:	c1 f8 17             	sar    $0x17,%eax
 8049086:	89 45 f8             	mov    %eax,-0x8(%ebp)
 8049089:	81 7d f8 ff 00 00 00 	cmpl   $0xff,-0x8(%ebp)
 8049090:	75 07                	jne    8049099 <f2F+0x40>
 8049092:	b8 00 00 00 80       	mov    $0x80000000,%eax
 8049097:	eb 6f                	jmp    8049108 <f2F+0xaf>
 8049099:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804909c:	25 ff ff 7f 00       	and    $0x7fffff,%eax
 80490a1:	89 45 f4             	mov    %eax,-0xc(%ebp)
 80490a4:	83 7d f8 7e          	cmpl   $0x7e,-0x8(%ebp)
 80490a8:	77 07                	ja     80490b1 <f2F+0x58>
 80490aa:	b8 00 00 00 00       	mov    $0x0,%eax
 80490af:	eb 57                	jmp    8049108 <f2F+0xaf>
 80490b1:	83 6d f8 7f          	subl   $0x7f,-0x8(%ebp)
 80490b5:	83 7d f8 36          	cmpl   $0x36,-0x8(%ebp)
 80490b9:	76 07                	jbe    80490c2 <f2F+0x69>
 80490bb:	b8 00 00 00 80       	mov    $0x80000000,%eax
 80490c0:	eb 46                	jmp    8049108 <f2F+0xaf>
 80490c2:	8b 45 f4             	mov    -0xc(%ebp),%eax
 80490c5:	05 00 00 80 00       	add    $0x800000,%eax
 80490ca:	89 45 f4             	mov    %eax,-0xc(%ebp)
 80490cd:	83 7d f8 16          	cmpl   $0x16,-0x8(%ebp)
 80490d1:	76 12                	jbe    80490e5 <f2F+0x8c>
 80490d3:	8b 45 f4             	mov    -0xc(%ebp),%eax
 80490d6:	8b 55 f8             	mov    -0x8(%ebp),%edx
 80490d9:	83 ea 17             	sub    $0x17,%edx
 80490dc:	89 d1                	mov    %edx,%ecx
 80490de:	d3 e0                	shl    %cl,%eax
 80490e0:	89 45 f4             	mov    %eax,-0xc(%ebp)
 80490e3:	eb 12                	jmp    80490f7 <f2F+0x9e>
 80490e5:	8b 45 f4             	mov    -0xc(%ebp),%eax
 80490e8:	ba 17 00 00 00       	mov    $0x17,%edx
 80490ed:	2b 55 f8             	sub    -0x8(%ebp),%edx
 80490f0:	89 d1                	mov    %edx,%ecx
 80490f2:	d3 f8                	sar    %cl,%eax
 80490f4:	89 45 f4             	mov    %eax,-0xc(%ebp)
 80490f7:	83 7d fc 00          	cmpl   $0x0,-0x4(%ebp)
 80490fb:	74 08                	je     8049105 <f2F+0xac>
 80490fd:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8049100:	f7 d8                	neg    %eax
 8049102:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8049105:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8049108:	c9                   	leave  
 8049109:	c3                   	ret    

0804910a <Fabs>:
 804910a:	55                   	push   %ebp
 804910b:	89 e5                	mov    %esp,%ebp
 804910d:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 8049111:	79 03                	jns    8049116 <Fabs+0xc>
 8049113:	f7 5d 08             	negl   0x8(%ebp)
 8049116:	8b 45 08             	mov    0x8(%ebp),%eax
 8049119:	5d                   	pop    %ebp
 804911a:	c3                   	ret    

0804911b <sqrt>:
 804911b:	55                   	push   %ebp
 804911c:	89 e5                	mov    %esp,%ebp
 804911e:	53                   	push   %ebx
 804911f:	83 ec 14             	sub    $0x14,%esp
 8049122:	6a 02                	push   $0x2
 8049124:	e8 82 fc ff ff       	call   8048dab <int2F>
 8049129:	83 c4 04             	add    $0x4,%esp
 804912c:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804912f:	ff 75 f4             	pushl  -0xc(%ebp)
 8049132:	ff 75 08             	pushl  0x8(%ebp)
 8049135:	e8 22 fe ff ff       	call   8048f5c <F_div_F>
 804913a:	83 c4 08             	add    $0x8,%esp
 804913d:	2b 45 f4             	sub    -0xc(%ebp),%eax
 8049140:	6a 02                	push   $0x2
 8049142:	50                   	push   %eax
 8049143:	e8 8c fc ff ff       	call   8048dd4 <F_div_int>
 8049148:	83 c4 08             	add    $0x8,%esp
 804914b:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804914e:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8049151:	01 45 f4             	add    %eax,-0xc(%ebp)
 8049154:	83 ec 04             	sub    $0x4,%esp
 8049157:	ff 75 f0             	pushl  -0x10(%ebp)
 804915a:	e8 ab ff ff ff       	call   804910a <Fabs>
 804915f:	83 c4 08             	add    $0x8,%esp
 8049162:	89 c3                	mov    %eax,%ebx
 8049164:	83 ec 04             	sub    $0x4,%esp
 8049167:	a1 08 49 05 08       	mov    0x8054908,%eax
 804916c:	50                   	push   %eax
 804916d:	e8 e7 fe ff ff       	call   8049059 <f2F>
 8049172:	83 c4 08             	add    $0x8,%esp
 8049175:	39 c3                	cmp    %eax,%ebx
 8049177:	7f b6                	jg     804912f <sqrt+0x14>
 8049179:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804917c:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 804917f:	c9                   	leave  
 8049180:	c3                   	ret    

08049181 <pow>:
 8049181:	55                   	push   %ebp
 8049182:	89 e5                	mov    %esp,%ebp
 8049184:	53                   	push   %ebx
 8049185:	83 ec 14             	sub    $0x14,%esp
 8049188:	6a 02                	push   $0x2
 804918a:	e8 1c fc ff ff       	call   8048dab <int2F>
 804918f:	83 c4 04             	add    $0x4,%esp
 8049192:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8049195:	ff 75 f4             	pushl  -0xc(%ebp)
 8049198:	ff 75 f4             	pushl  -0xc(%ebp)
 804919b:	e8 40 fc ff ff       	call   8048de0 <F_mul_F>
 80491a0:	83 c4 08             	add    $0x8,%esp
 80491a3:	89 45 f0             	mov    %eax,-0x10(%ebp)
 80491a6:	ff 75 f0             	pushl  -0x10(%ebp)
 80491a9:	ff 75 08             	pushl  0x8(%ebp)
 80491ac:	e8 ab fd ff ff       	call   8048f5c <F_div_F>
 80491b1:	83 c4 08             	add    $0x8,%esp
 80491b4:	2b 45 f4             	sub    -0xc(%ebp),%eax
 80491b7:	89 c1                	mov    %eax,%ecx
 80491b9:	ba 56 55 55 55       	mov    $0x55555556,%edx
 80491be:	89 c8                	mov    %ecx,%eax
 80491c0:	f7 ea                	imul   %edx
 80491c2:	89 c8                	mov    %ecx,%eax
 80491c4:	c1 f8 1f             	sar    $0x1f,%eax
 80491c7:	29 c2                	sub    %eax,%edx
 80491c9:	89 d0                	mov    %edx,%eax
 80491cb:	89 45 ec             	mov    %eax,-0x14(%ebp)
 80491ce:	8b 45 ec             	mov    -0x14(%ebp),%eax
 80491d1:	01 45 f4             	add    %eax,-0xc(%ebp)
 80491d4:	83 ec 04             	sub    $0x4,%esp
 80491d7:	ff 75 ec             	pushl  -0x14(%ebp)
 80491da:	e8 2b ff ff ff       	call   804910a <Fabs>
 80491df:	83 c4 08             	add    $0x8,%esp
 80491e2:	89 c3                	mov    %eax,%ebx
 80491e4:	83 ec 04             	sub    $0x4,%esp
 80491e7:	a1 08 49 05 08       	mov    0x8054908,%eax
 80491ec:	50                   	push   %eax
 80491ed:	e8 67 fe ff ff       	call   8049059 <f2F>
 80491f2:	83 c4 08             	add    $0x8,%esp
 80491f5:	39 c3                	cmp    %eax,%ebx
 80491f7:	7f 9c                	jg     8049195 <pow+0x14>
 80491f9:	8b 45 f4             	mov    -0xc(%ebp),%eax
 80491fc:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 80491ff:	c9                   	leave  
 8049200:	c3                   	ret    

08049201 <memset>:
 8049201:	55                   	push   %ebp
 8049202:	89 e5                	mov    %esp,%ebp
 8049204:	57                   	push   %edi
 8049205:	8b 7d 08             	mov    0x8(%ebp),%edi
 8049208:	0f b6 45 0c          	movzbl 0xc(%ebp),%eax
 804920c:	8b 4d 10             	mov    0x10(%ebp),%ecx
 804920f:	fc                   	cld    
 8049210:	83 f9 10             	cmp    $0x10,%ecx
 8049213:	76 69                	jbe    804927e <memset+0x7d>
 8049215:	f7 c7 07 00 00 00    	test   $0x7,%edi
 804921b:	74 4c                	je     8049269 <memset+0x68>
 804921d:	88 07                	mov    %al,(%edi)
 804921f:	47                   	inc    %edi
 8049220:	49                   	dec    %ecx
 8049221:	f7 c7 07 00 00 00    	test   $0x7,%edi
 8049227:	74 40                	je     8049269 <memset+0x68>
 8049229:	88 07                	mov    %al,(%edi)
 804922b:	47                   	inc    %edi
 804922c:	49                   	dec    %ecx
 804922d:	f7 c7 07 00 00 00    	test   $0x7,%edi
 8049233:	74 34                	je     8049269 <memset+0x68>
 8049235:	88 07                	mov    %al,(%edi)
 8049237:	47                   	inc    %edi
 8049238:	49                   	dec    %ecx
 8049239:	f7 c7 07 00 00 00    	test   $0x7,%edi
 804923f:	74 28                	je     8049269 <memset+0x68>
 8049241:	88 07                	mov    %al,(%edi)
 8049243:	47                   	inc    %edi
 8049244:	49                   	dec    %ecx
 8049245:	f7 c7 07 00 00 00    	test   $0x7,%edi
 804924b:	74 1c                	je     8049269 <memset+0x68>
 804924d:	88 07                	mov    %al,(%edi)
 804924f:	47                   	inc    %edi
 8049250:	49                   	dec    %ecx
 8049251:	f7 c7 07 00 00 00    	test   $0x7,%edi
 8049257:	74 10                	je     8049269 <memset+0x68>
 8049259:	88 07                	mov    %al,(%edi)
 804925b:	47                   	inc    %edi
 804925c:	49                   	dec    %ecx
 804925d:	f7 c7 07 00 00 00    	test   $0x7,%edi
 8049263:	74 04                	je     8049269 <memset+0x68>
 8049265:	88 07                	mov    %al,(%edi)
 8049267:	47                   	inc    %edi
 8049268:	49                   	dec    %ecx
 8049269:	88 c4                	mov    %al,%ah
 804926b:	89 c2                	mov    %eax,%edx
 804926d:	c1 e2 10             	shl    $0x10,%edx
 8049270:	09 d0                	or     %edx,%eax
 8049272:	89 ca                	mov    %ecx,%edx
 8049274:	c1 e9 02             	shr    $0x2,%ecx
 8049277:	83 e2 03             	and    $0x3,%edx
 804927a:	f3 ab                	rep stos %eax,%es:(%edi)
 804927c:	89 d1                	mov    %edx,%ecx
 804927e:	f3 aa                	rep stos %al,%es:(%edi)
 8049280:	8b 45 08             	mov    0x8(%ebp),%eax
 8049283:	8d 65 fc             	lea    -0x4(%ebp),%esp
 8049286:	5f                   	pop    %edi
 8049287:	c9                   	leave  
 8049288:	c3                   	ret    
 8049289:	66 90                	xchg   %ax,%ax
 804928b:	66 90                	xchg   %ax,%ax
 804928d:	66 90                	xchg   %ax,%ax
 804928f:	90                   	nop

08049290 <_printf_r>:
 8049290:	55                   	push   %ebp
 8049291:	89 e5                	mov    %esp,%ebp
 8049293:	83 ec 18             	sub    $0x18,%esp
 8049296:	8d 55 10             	lea    0x10(%ebp),%edx
 8049299:	8b 45 08             	mov    0x8(%ebp),%eax
 804929c:	89 54 24 0c          	mov    %edx,0xc(%esp)
 80492a0:	8b 55 0c             	mov    0xc(%ebp),%edx
 80492a3:	89 54 24 08          	mov    %edx,0x8(%esp)
 80492a7:	8b 50 08             	mov    0x8(%eax),%edx
 80492aa:	89 04 24             	mov    %eax,(%esp)
 80492ad:	89 54 24 04          	mov    %edx,0x4(%esp)
 80492b1:	e8 6a 21 00 00       	call   804b420 <_vfprintf_r>
 80492b6:	c9                   	leave  
 80492b7:	c3                   	ret    
 80492b8:	90                   	nop
 80492b9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

080492c0 <printf>:
 80492c0:	55                   	push   %ebp
 80492c1:	89 e5                	mov    %esp,%ebp
 80492c3:	83 ec 18             	sub    $0x18,%esp
 80492c6:	e8 e5 61 00 00       	call   804f4b0 <__getreent>
 80492cb:	8d 55 0c             	lea    0xc(%ebp),%edx
 80492ce:	89 54 24 0c          	mov    %edx,0xc(%esp)
 80492d2:	8b 55 08             	mov    0x8(%ebp),%edx
 80492d5:	89 54 24 08          	mov    %edx,0x8(%esp)
 80492d9:	8b 50 08             	mov    0x8(%eax),%edx
 80492dc:	89 04 24             	mov    %eax,(%esp)
 80492df:	89 54 24 04          	mov    %edx,0x4(%esp)
 80492e3:	e8 38 21 00 00       	call   804b420 <_vfprintf_r>
 80492e8:	c9                   	leave  
 80492e9:	c3                   	ret    
 80492ea:	66 90                	xchg   %ax,%ax
 80492ec:	66 90                	xchg   %ax,%ax
 80492ee:	66 90                	xchg   %ax,%ax

080492f0 <srand>:
 80492f0:	55                   	push   %ebp
 80492f1:	89 e5                	mov    %esp,%ebp
 80492f3:	83 ec 08             	sub    $0x8,%esp
 80492f6:	e8 b5 61 00 00       	call   804f4b0 <__getreent>
 80492fb:	8b 55 08             	mov    0x8(%ebp),%edx
 80492fe:	c7 80 a8 00 00 00 00 	movl   $0x0,0xa8(%eax)
 8049305:	00 00 00 
 8049308:	89 90 a4 00 00 00    	mov    %edx,0xa4(%eax)
 804930e:	c9                   	leave  
 804930f:	c3                   	ret    

08049310 <rand>:
 8049310:	55                   	push   %ebp
 8049311:	89 e5                	mov    %esp,%ebp
 8049313:	56                   	push   %esi
 8049314:	53                   	push   %ebx
 8049315:	e8 96 61 00 00       	call   804f4b0 <__getreent>
 804931a:	b9 2d 7f 95 4c       	mov    $0x4c957f2d,%ecx
 804931f:	69 90 a4 00 00 00 2d 	imul   $0x5851f42d,0xa4(%eax),%edx
 8049326:	f4 51 58 
 8049329:	89 c6                	mov    %eax,%esi
 804932b:	69 98 a8 00 00 00 2d 	imul   $0x4c957f2d,0xa8(%eax),%ebx
 8049332:	7f 95 4c 
 8049335:	89 c8                	mov    %ecx,%eax
 8049337:	01 d3                	add    %edx,%ebx
 8049339:	f7 a6 a4 00 00 00    	mull   0xa4(%esi)
 804933f:	89 d1                	mov    %edx,%ecx
 8049341:	01 d9                	add    %ebx,%ecx
 8049343:	89 cb                	mov    %ecx,%ebx
 8049345:	89 c1                	mov    %eax,%ecx
 8049347:	83 c1 01             	add    $0x1,%ecx
 804934a:	83 d3 00             	adc    $0x0,%ebx
 804934d:	89 d8                	mov    %ebx,%eax
 804934f:	89 8e a4 00 00 00    	mov    %ecx,0xa4(%esi)
 8049355:	25 ff ff ff 7f       	and    $0x7fffffff,%eax
 804935a:	89 9e a8 00 00 00    	mov    %ebx,0xa8(%esi)
 8049360:	5b                   	pop    %ebx
 8049361:	5e                   	pop    %esi
 8049362:	5d                   	pop    %ebp
 8049363:	c3                   	ret    
 8049364:	66 90                	xchg   %ax,%ax
 8049366:	66 90                	xchg   %ax,%ax
 8049368:	66 90                	xchg   %ax,%ax
 804936a:	66 90                	xchg   %ax,%ax
 804936c:	66 90                	xchg   %ax,%ax
 804936e:	66 90                	xchg   %ax,%ax

08049370 <_snprintf_r>:
 8049370:	55                   	push   %ebp
 8049371:	89 e5                	mov    %esp,%ebp
 8049373:	56                   	push   %esi
 8049374:	53                   	push   %ebx
 8049375:	83 c4 80             	add    $0xffffff80,%esp
 8049378:	8b 5d 10             	mov    0x10(%ebp),%ebx
 804937b:	8b 75 08             	mov    0x8(%ebp),%esi
 804937e:	8b 45 0c             	mov    0xc(%ebp),%eax
 8049381:	85 db                	test   %ebx,%ebx
 8049383:	78 63                	js     80493e8 <_snprintf_r+0x78>
 8049385:	ba 08 02 00 00       	mov    $0x208,%edx
 804938a:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
 804938f:	66 89 55 9c          	mov    %dx,-0x64(%ebp)
 8049393:	8d 53 ff             	lea    -0x1(%ebx),%edx
 8049396:	89 45 90             	mov    %eax,-0x70(%ebp)
 8049399:	89 45 a0             	mov    %eax,-0x60(%ebp)
 804939c:	31 c0                	xor    %eax,%eax
 804939e:	85 db                	test   %ebx,%ebx
 80493a0:	0f 45 c2             	cmovne %edx,%eax
 80493a3:	89 45 98             	mov    %eax,-0x68(%ebp)
 80493a6:	89 45 a4             	mov    %eax,-0x5c(%ebp)
 80493a9:	8d 45 18             	lea    0x18(%ebp),%eax
 80493ac:	89 44 24 0c          	mov    %eax,0xc(%esp)
 80493b0:	8b 45 14             	mov    0x14(%ebp),%eax
 80493b3:	89 34 24             	mov    %esi,(%esp)
 80493b6:	66 89 4d 9e          	mov    %cx,-0x62(%ebp)
 80493ba:	89 44 24 08          	mov    %eax,0x8(%esp)
 80493be:	8d 45 90             	lea    -0x70(%ebp),%eax
 80493c1:	89 44 24 04          	mov    %eax,0x4(%esp)
 80493c5:	e8 56 01 00 00       	call   8049520 <_svfprintf_r>
 80493ca:	83 f8 ff             	cmp    $0xffffffff,%eax
 80493cd:	7c 11                	jl     80493e0 <_snprintf_r+0x70>
 80493cf:	85 db                	test   %ebx,%ebx
 80493d1:	74 06                	je     80493d9 <_snprintf_r+0x69>
 80493d3:	8b 55 90             	mov    -0x70(%ebp),%edx
 80493d6:	c6 02 00             	movb   $0x0,(%edx)
 80493d9:	83 ec 80             	sub    $0xffffff80,%esp
 80493dc:	5b                   	pop    %ebx
 80493dd:	5e                   	pop    %esi
 80493de:	5d                   	pop    %ebp
 80493df:	c3                   	ret    
 80493e0:	c7 06 8b 00 00 00    	movl   $0x8b,(%esi)
 80493e6:	eb e7                	jmp    80493cf <_snprintf_r+0x5f>
 80493e8:	c7 06 8b 00 00 00    	movl   $0x8b,(%esi)
 80493ee:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 80493f3:	eb e4                	jmp    80493d9 <_snprintf_r+0x69>
 80493f5:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 80493f9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

08049400 <snprintf>:
 8049400:	55                   	push   %ebp
 8049401:	89 e5                	mov    %esp,%ebp
 8049403:	57                   	push   %edi
 8049404:	56                   	push   %esi
 8049405:	53                   	push   %ebx
 8049406:	81 ec 8c 00 00 00    	sub    $0x8c,%esp
 804940c:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 804940f:	8b 75 08             	mov    0x8(%ebp),%esi
 8049412:	e8 99 60 00 00       	call   804f4b0 <__getreent>
 8049417:	85 db                	test   %ebx,%ebx
 8049419:	89 c7                	mov    %eax,%edi
 804941b:	78 6b                	js     8049488 <snprintf+0x88>
 804941d:	b8 08 02 00 00       	mov    $0x208,%eax
 8049422:	31 d2                	xor    %edx,%edx
 8049424:	66 89 45 8c          	mov    %ax,-0x74(%ebp)
 8049428:	85 db                	test   %ebx,%ebx
 804942a:	8d 43 ff             	lea    -0x1(%ebx),%eax
 804942d:	0f 45 d0             	cmovne %eax,%edx
 8049430:	8d 45 14             	lea    0x14(%ebp),%eax
 8049433:	89 44 24 0c          	mov    %eax,0xc(%esp)
 8049437:	8b 45 10             	mov    0x10(%ebp),%eax
 804943a:	89 55 88             	mov    %edx,-0x78(%ebp)
 804943d:	89 55 94             	mov    %edx,-0x6c(%ebp)
 8049440:	ba ff ff ff ff       	mov    $0xffffffff,%edx
 8049445:	89 3c 24             	mov    %edi,(%esp)
 8049448:	89 44 24 08          	mov    %eax,0x8(%esp)
 804944c:	8d 45 80             	lea    -0x80(%ebp),%eax
 804944f:	89 44 24 04          	mov    %eax,0x4(%esp)
 8049453:	89 75 80             	mov    %esi,-0x80(%ebp)
 8049456:	89 75 90             	mov    %esi,-0x70(%ebp)
 8049459:	66 89 55 8e          	mov    %dx,-0x72(%ebp)
 804945d:	e8 be 00 00 00       	call   8049520 <_svfprintf_r>
 8049462:	83 f8 ff             	cmp    $0xffffffff,%eax
 8049465:	7c 19                	jl     8049480 <snprintf+0x80>
 8049467:	85 db                	test   %ebx,%ebx
 8049469:	74 06                	je     8049471 <snprintf+0x71>
 804946b:	8b 55 80             	mov    -0x80(%ebp),%edx
 804946e:	c6 02 00             	movb   $0x0,(%edx)
 8049471:	81 c4 8c 00 00 00    	add    $0x8c,%esp
 8049477:	5b                   	pop    %ebx
 8049478:	5e                   	pop    %esi
 8049479:	5f                   	pop    %edi
 804947a:	5d                   	pop    %ebp
 804947b:	c3                   	ret    
 804947c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8049480:	c7 07 8b 00 00 00    	movl   $0x8b,(%edi)
 8049486:	eb df                	jmp    8049467 <snprintf+0x67>
 8049488:	c7 00 8b 00 00 00    	movl   $0x8b,(%eax)
 804948e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8049493:	eb dc                	jmp    8049471 <snprintf+0x71>
 8049495:	66 90                	xchg   %ax,%ax
 8049497:	66 90                	xchg   %ax,%ax
 8049499:	66 90                	xchg   %ax,%ax
 804949b:	66 90                	xchg   %ax,%ax
 804949d:	66 90                	xchg   %ax,%ax
 804949f:	90                   	nop

080494a0 <strlen>:
 80494a0:	55                   	push   %ebp
 80494a1:	89 e5                	mov    %esp,%ebp
 80494a3:	57                   	push   %edi
 80494a4:	8b 55 08             	mov    0x8(%ebp),%edx
 80494a7:	89 d7                	mov    %edx,%edi
 80494a9:	f7 c7 03 00 00 00    	test   $0x3,%edi
 80494af:	74 25                	je     80494d6 <L5>
 80494b1:	8a 0f                	mov    (%edi),%cl
 80494b3:	47                   	inc    %edi
 80494b4:	84 c9                	test   %cl,%cl
 80494b6:	74 56                	je     804950e <L15>
 80494b8:	f7 c7 03 00 00 00    	test   $0x3,%edi
 80494be:	74 16                	je     80494d6 <L5>
 80494c0:	8a 0f                	mov    (%edi),%cl
 80494c2:	47                   	inc    %edi
 80494c3:	84 c9                	test   %cl,%cl
 80494c5:	74 47                	je     804950e <L15>
 80494c7:	f7 c7 03 00 00 00    	test   $0x3,%edi
 80494cd:	74 07                	je     80494d6 <L5>
 80494cf:	8a 0f                	mov    (%edi),%cl
 80494d1:	47                   	inc    %edi
 80494d2:	84 c9                	test   %cl,%cl
 80494d4:	74 38                	je     804950e <L15>

080494d6 <L5>:
 80494d6:	83 ef 04             	sub    $0x4,%edi
 80494d9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

080494e0 <L10>:
 80494e0:	83 c7 04             	add    $0x4,%edi
 80494e3:	8b 0f                	mov    (%edi),%ecx
 80494e5:	8d 81 ff fe fe fe    	lea    -0x1010101(%ecx),%eax
 80494eb:	f7 d1                	not    %ecx
 80494ed:	21 c8                	and    %ecx,%eax
 80494ef:	a9 80 80 80 80       	test   $0x80808080,%eax
 80494f4:	74 ea                	je     80494e0 <L10>
 80494f6:	f7 d1                	not    %ecx
 80494f8:	47                   	inc    %edi
 80494f9:	84 c9                	test   %cl,%cl
 80494fb:	74 11                	je     804950e <L15>
 80494fd:	47                   	inc    %edi
 80494fe:	c1 e9 08             	shr    $0x8,%ecx
 8049501:	84 c9                	test   %cl,%cl
 8049503:	74 09                	je     804950e <L15>
 8049505:	47                   	inc    %edi
 8049506:	c1 e9 08             	shr    $0x8,%ecx
 8049509:	84 c9                	test   %cl,%cl
 804950b:	74 01                	je     804950e <L15>
 804950d:	47                   	inc    %edi

0804950e <L15>:
 804950e:	29 d7                	sub    %edx,%edi
 8049510:	8d 47 ff             	lea    -0x1(%edi),%eax
 8049513:	8d 65 fc             	lea    -0x4(%ebp),%esp
 8049516:	5f                   	pop    %edi
 8049517:	c9                   	leave  
 8049518:	c3                   	ret    
 8049519:	66 90                	xchg   %ax,%ax
 804951b:	66 90                	xchg   %ax,%ax
 804951d:	66 90                	xchg   %ax,%ax
 804951f:	90                   	nop

08049520 <_svfprintf_r>:
 8049520:	55                   	push   %ebp
 8049521:	89 e5                	mov    %esp,%ebp
 8049523:	57                   	push   %edi
 8049524:	56                   	push   %esi
 8049525:	53                   	push   %ebx
 8049526:	81 ec 1c 01 00 00    	sub    $0x11c,%esp
 804952c:	8b 45 08             	mov    0x8(%ebp),%eax
 804952f:	89 04 24             	mov    %eax,(%esp)
 8049532:	e8 39 60 00 00       	call   804f570 <_localeconv_r>
 8049537:	8b 00                	mov    (%eax),%eax
 8049539:	89 04 24             	mov    %eax,(%esp)
 804953c:	89 85 0c ff ff ff    	mov    %eax,-0xf4(%ebp)
 8049542:	e8 59 ff ff ff       	call   80494a0 <strlen>
 8049547:	89 85 08 ff ff ff    	mov    %eax,-0xf8(%ebp)
 804954d:	8b 45 0c             	mov    0xc(%ebp),%eax
 8049550:	f6 40 0c 80          	testb  $0x80,0xc(%eax)
 8049554:	74 0b                	je     8049561 <_svfprintf_r+0x41>
 8049556:	8b 40 10             	mov    0x10(%eax),%eax
 8049559:	85 c0                	test   %eax,%eax
 804955b:	0f 84 62 18 00 00    	je     804adc3 <_svfprintf_r+0x18a3>
 8049561:	8d 45 a8             	lea    -0x58(%ebp),%eax
 8049564:	8d 55 a7             	lea    -0x59(%ebp),%edx
 8049567:	89 c7                	mov    %eax,%edi
 8049569:	89 85 74 ff ff ff    	mov    %eax,-0x8c(%ebp)
 804956f:	90                   	nop
 8049570:	90                   	nop
 8049571:	29 d0                	sub    %edx,%eax
 8049573:	c7 85 7c ff ff ff 00 	movl   $0x0,-0x84(%ebp)
 804957a:	00 00 00 
 804957d:	90                   	nop
 804957e:	90                   	nop
 804957f:	90                   	nop
 8049580:	90                   	nop
 8049581:	90                   	nop
 8049582:	90                   	nop
 8049583:	c7 85 78 ff ff ff 00 	movl   $0x0,-0x88(%ebp)
 804958a:	00 00 00 
 804958d:	c7 85 1c ff ff ff 00 	movl   $0x0,-0xe4(%ebp)
 8049594:	00 00 00 
 8049597:	c7 85 18 ff ff ff 00 	movl   $0x0,-0xe8(%ebp)
 804959e:	00 00 00 
 80495a1:	c7 85 04 ff ff ff 00 	movl   $0x0,-0xfc(%ebp)
 80495a8:	00 00 00 
 80495ab:	c7 85 34 ff ff ff 00 	movl   $0x0,-0xcc(%ebp)
 80495b2:	00 00 00 
 80495b5:	89 85 00 ff ff ff    	mov    %eax,-0x100(%ebp)
 80495bb:	8b 45 10             	mov    0x10(%ebp),%eax
 80495be:	8b 5d 10             	mov    0x10(%ebp),%ebx
 80495c1:	0f b6 00             	movzbl (%eax),%eax
 80495c4:	3c 25                	cmp    $0x25,%al
 80495c6:	74 4d                	je     8049615 <_svfprintf_r+0xf5>
 80495c8:	84 c0                	test   %al,%al
 80495ca:	75 08                	jne    80495d4 <_svfprintf_r+0xb4>
 80495cc:	eb 47                	jmp    8049615 <_svfprintf_r+0xf5>
 80495ce:	66 90                	xchg   %ax,%ax
 80495d0:	84 c0                	test   %al,%al
 80495d2:	74 0a                	je     80495de <_svfprintf_r+0xbe>
 80495d4:	83 c3 01             	add    $0x1,%ebx
 80495d7:	0f b6 03             	movzbl (%ebx),%eax
 80495da:	3c 25                	cmp    $0x25,%al
 80495dc:	75 f2                	jne    80495d0 <_svfprintf_r+0xb0>
 80495de:	89 de                	mov    %ebx,%esi
 80495e0:	2b 75 10             	sub    0x10(%ebp),%esi
 80495e3:	74 30                	je     8049615 <_svfprintf_r+0xf5>
 80495e5:	8b 45 10             	mov    0x10(%ebp),%eax
 80495e8:	83 c7 08             	add    $0x8,%edi
 80495eb:	89 77 fc             	mov    %esi,-0x4(%edi)
 80495ee:	01 b5 7c ff ff ff    	add    %esi,-0x84(%ebp)
 80495f4:	89 47 f8             	mov    %eax,-0x8(%edi)
 80495f7:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 80495fd:	83 c0 01             	add    $0x1,%eax
 8049600:	83 f8 07             	cmp    $0x7,%eax
 8049603:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
 8049609:	0f 8f 91 00 00 00    	jg     80496a0 <_svfprintf_r+0x180>
 804960f:	01 b5 34 ff ff ff    	add    %esi,-0xcc(%ebp)
 8049615:	80 3b 00             	cmpb   $0x0,(%ebx)
 8049618:	0f 84 aa 00 00 00    	je     80496c8 <_svfprintf_r+0x1a8>
 804961e:	8d 43 01             	lea    0x1(%ebx),%eax
 8049621:	be 20 00 00 00       	mov    $0x20,%esi
 8049626:	c6 85 59 ff ff ff 00 	movb   $0x0,-0xa7(%ebp)
 804962d:	31 db                	xor    %ebx,%ebx
 804962f:	c7 85 44 ff ff ff ff 	movl   $0xffffffff,-0xbc(%ebp)
 8049636:	ff ff ff 
 8049639:	c7 85 40 ff ff ff 00 	movl   $0x0,-0xc0(%ebp)
 8049640:	00 00 00 
 8049643:	c7 85 4c ff ff ff 00 	movl   $0x0,-0xb4(%ebp)
 804964a:	00 00 00 
 804964d:	8d 48 01             	lea    0x1(%eax),%ecx
 8049650:	0f be 00             	movsbl (%eax),%eax
 8049653:	8d 50 e0             	lea    -0x20(%eax),%edx
 8049656:	83 fa 58             	cmp    $0x58,%edx
 8049659:	0f 87 8f 07 00 00    	ja     8049dee <_svfprintf_r+0x8ce>
 804965f:	ff 24 95 48 49 05 08 	jmp    *0x8054948(,%edx,4)
 8049666:	66 90                	xchg   %ax,%ax
 8049668:	83 8d 4c ff ff ff 10 	orl    $0x10,-0xb4(%ebp)
 804966f:	89 c8                	mov    %ecx,%eax
 8049671:	eb da                	jmp    804964d <_svfprintf_r+0x12d>
 8049673:	8b 45 14             	mov    0x14(%ebp),%eax
 8049676:	8b 55 14             	mov    0x14(%ebp),%edx
 8049679:	8b 00                	mov    (%eax),%eax
 804967b:	83 c2 04             	add    $0x4,%edx
 804967e:	89 55 14             	mov    %edx,0x14(%ebp)
 8049681:	85 c0                	test   %eax,%eax
 8049683:	89 85 40 ff ff ff    	mov    %eax,-0xc0(%ebp)
 8049689:	79 e4                	jns    804966f <_svfprintf_r+0x14f>
 804968b:	f7 9d 40 ff ff ff    	negl   -0xc0(%ebp)
 8049691:	83 8d 4c ff ff ff 04 	orl    $0x4,-0xb4(%ebp)
 8049698:	89 c8                	mov    %ecx,%eax
 804969a:	eb b1                	jmp    804964d <_svfprintf_r+0x12d>
 804969c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 80496a0:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
 80496a6:	89 44 24 08          	mov    %eax,0x8(%esp)
 80496aa:	8b 45 0c             	mov    0xc(%ebp),%eax
 80496ad:	89 44 24 04          	mov    %eax,0x4(%esp)
 80496b1:	8b 45 08             	mov    0x8(%ebp),%eax
 80496b4:	89 04 24             	mov    %eax,(%esp)
 80496b7:	e8 d4 78 00 00       	call   8050f90 <__ssprint_r>
 80496bc:	85 c0                	test   %eax,%eax
 80496be:	75 30                	jne    80496f0 <_svfprintf_r+0x1d0>
 80496c0:	8d 7d a8             	lea    -0x58(%ebp),%edi
 80496c3:	e9 47 ff ff ff       	jmp    804960f <_svfprintf_r+0xef>
 80496c8:	8b 85 7c ff ff ff    	mov    -0x84(%ebp),%eax
 80496ce:	85 c0                	test   %eax,%eax
 80496d0:	74 1e                	je     80496f0 <_svfprintf_r+0x1d0>
 80496d2:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
 80496d8:	89 44 24 08          	mov    %eax,0x8(%esp)
 80496dc:	8b 45 0c             	mov    0xc(%ebp),%eax
 80496df:	89 44 24 04          	mov    %eax,0x4(%esp)
 80496e3:	8b 45 08             	mov    0x8(%ebp),%eax
 80496e6:	89 04 24             	mov    %eax,(%esp)
 80496e9:	e8 a2 78 00 00       	call   8050f90 <__ssprint_r>
 80496ee:	66 90                	xchg   %ax,%ax
 80496f0:	8b 55 0c             	mov    0xc(%ebp),%edx
 80496f3:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 80496f8:	f6 42 0c 40          	testb  $0x40,0xc(%edx)
 80496fc:	0f 44 85 34 ff ff ff 	cmove  -0xcc(%ebp),%eax
 8049703:	81 c4 1c 01 00 00    	add    $0x11c,%esp
 8049709:	5b                   	pop    %ebx
 804970a:	5e                   	pop    %esi
 804970b:	5f                   	pop    %edi
 804970c:	5d                   	pop    %ebp
 804970d:	c3                   	ret    
 804970e:	bb 2b 00 00 00       	mov    $0x2b,%ebx
 8049713:	89 c8                	mov    %ecx,%eax
 8049715:	e9 33 ff ff ff       	jmp    804964d <_svfprintf_r+0x12d>
 804971a:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
 8049720:	8b 45 14             	mov    0x14(%ebp),%eax
 8049723:	89 4d 10             	mov    %ecx,0x10(%ebp)
 8049726:	c6 85 59 ff ff ff 00 	movb   $0x0,-0xa7(%ebp)
 804972d:	8d 70 04             	lea    0x4(%eax),%esi
 8049730:	8b 00                	mov    (%eax),%eax
 8049732:	85 c0                	test   %eax,%eax
 8049734:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
 804973a:	0f 84 7f 18 00 00    	je     804afbf <_svfprintf_r+0x1a9f>
 8049740:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
 8049746:	85 c0                	test   %eax,%eax
 8049748:	0f 88 b6 17 00 00    	js     804af04 <_svfprintf_r+0x19e4>
 804974e:	89 44 24 08          	mov    %eax,0x8(%esp)
 8049752:	8b 85 28 ff ff ff    	mov    -0xd8(%ebp),%eax
 8049758:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 804975f:	00 
 8049760:	89 04 24             	mov    %eax,(%esp)
 8049763:	e8 e8 66 00 00       	call   804fe50 <memchr>
 8049768:	85 c0                	test   %eax,%eax
 804976a:	0f 84 a0 19 00 00    	je     804b110 <_svfprintf_r+0x1bf0>
 8049770:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
 8049776:	2b 85 28 ff ff ff    	sub    -0xd8(%ebp),%eax
 804977c:	39 d0                	cmp    %edx,%eax
 804977e:	0f 4f c2             	cmovg  %edx,%eax
 8049781:	89 c2                	mov    %eax,%edx
 8049783:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
 804978a:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
 8049790:	31 c0                	xor    %eax,%eax
 8049792:	85 d2                	test   %edx,%edx
 8049794:	0f 49 c2             	cmovns %edx,%eax
 8049797:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
 804979d:	89 75 14             	mov    %esi,0x14(%ebp)
 80497a0:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
 80497a7:	00 00 00 
 80497aa:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
 80497b1:	00 00 00 
 80497b4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 80497b8:	84 db                	test   %bl,%bl
 80497ba:	74 07                	je     80497c3 <_svfprintf_r+0x2a3>
 80497bc:	83 85 48 ff ff ff 01 	addl   $0x1,-0xb8(%ebp)
 80497c3:	8b 8d 48 ff ff ff    	mov    -0xb8(%ebp),%ecx
 80497c9:	8b b5 4c ff ff ff    	mov    -0xb4(%ebp),%esi
 80497cf:	89 c8                	mov    %ecx,%eax
 80497d1:	89 f2                	mov    %esi,%edx
 80497d3:	83 c0 02             	add    $0x2,%eax
 80497d6:	83 e2 02             	and    $0x2,%edx
 80497d9:	89 95 30 ff ff ff    	mov    %edx,-0xd0(%ebp)
 80497df:	89 f2                	mov    %esi,%edx
 80497e1:	0f 44 c1             	cmove  %ecx,%eax
 80497e4:	81 e2 84 00 00 00    	and    $0x84,%edx
 80497ea:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
 80497f0:	89 95 2c ff ff ff    	mov    %edx,-0xd4(%ebp)
 80497f6:	0f 85 1c 06 00 00    	jne    8049e18 <_svfprintf_r+0x8f8>
 80497fc:	8b b5 40 ff ff ff    	mov    -0xc0(%ebp),%esi
 8049802:	2b b5 48 ff ff ff    	sub    -0xb8(%ebp),%esi
 8049808:	85 f6                	test   %esi,%esi
 804980a:	0f 8e 08 06 00 00    	jle    8049e18 <_svfprintf_r+0x8f8>
 8049810:	83 fe 10             	cmp    $0x10,%esi
 8049813:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
 8049819:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 804981f:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
 8049825:	7f 11                	jg     8049838 <_svfprintf_r+0x318>
 8049827:	eb 6b                	jmp    8049894 <_svfprintf_r+0x374>
 8049829:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 8049830:	83 ee 10             	sub    $0x10,%esi
 8049833:	83 fe 10             	cmp    $0x10,%esi
 8049836:	7e 5c                	jle    8049894 <_svfprintf_r+0x374>
 8049838:	83 c0 01             	add    $0x1,%eax
 804983b:	83 c1 10             	add    $0x10,%ecx
 804983e:	c7 07 bc 4a 05 08    	movl   $0x8054abc,(%edi)
 8049844:	83 c7 08             	add    $0x8,%edi
 8049847:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
 804984e:	83 f8 07             	cmp    $0x7,%eax
 8049851:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
 8049857:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
 804985d:	7e d1                	jle    8049830 <_svfprintf_r+0x310>
 804985f:	8b 45 0c             	mov    0xc(%ebp),%eax
 8049862:	89 5c 24 08          	mov    %ebx,0x8(%esp)
 8049866:	89 44 24 04          	mov    %eax,0x4(%esp)
 804986a:	8b 45 08             	mov    0x8(%ebp),%eax
 804986d:	89 04 24             	mov    %eax,(%esp)
 8049870:	e8 1b 77 00 00       	call   8050f90 <__ssprint_r>
 8049875:	85 c0                	test   %eax,%eax
 8049877:	0f 85 73 fe ff ff    	jne    80496f0 <_svfprintf_r+0x1d0>
 804987d:	83 ee 10             	sub    $0x10,%esi
 8049880:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
 8049886:	83 fe 10             	cmp    $0x10,%esi
 8049889:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 804988f:	8d 7d a8             	lea    -0x58(%ebp),%edi
 8049892:	7f a4                	jg     8049838 <_svfprintf_r+0x318>
 8049894:	83 c0 01             	add    $0x1,%eax
 8049897:	01 f1                	add    %esi,%ecx
 8049899:	83 f8 07             	cmp    $0x7,%eax
 804989c:	c7 07 bc 4a 05 08    	movl   $0x8054abc,(%edi)
 80498a2:	89 77 04             	mov    %esi,0x4(%edi)
 80498a5:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
 80498ab:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
 80498b1:	0f 8f 16 0e 00 00    	jg     804a6cd <_svfprintf_r+0x11ad>
 80498b7:	83 c7 08             	add    $0x8,%edi
 80498ba:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
 80498c1:	e9 58 05 00 00       	jmp    8049e1e <_svfprintf_r+0x8fe>
 80498c6:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
 80498cd:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
 80498d3:	8b 45 14             	mov    0x14(%ebp),%eax
 80498d6:	89 4d 10             	mov    %ecx,0x10(%ebp)
 80498d9:	0f 85 fd 04 00 00    	jne    8049ddc <_svfprintf_r+0x8bc>
 80498df:	f6 85 4c ff ff ff 40 	testb  $0x40,-0xb4(%ebp)
 80498e6:	0f 84 f0 04 00 00    	je     8049ddc <_svfprintf_r+0x8bc>
 80498ec:	0f b7 08             	movzwl (%eax),%ecx
 80498ef:	83 c0 04             	add    $0x4,%eax
 80498f2:	89 45 14             	mov    %eax,0x14(%ebp)
 80498f5:	b8 01 00 00 00       	mov    $0x1,%eax
 80498fa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 8049900:	c6 85 59 ff ff ff 00 	movb   $0x0,-0xa7(%ebp)
 8049907:	31 db                	xor    %ebx,%ebx
 8049909:	8b b5 4c ff ff ff    	mov    -0xb4(%ebp),%esi
 804990f:	89 f2                	mov    %esi,%edx
 8049911:	80 e2 7f             	and    $0x7f,%dl
 8049914:	83 bd 44 ff ff ff 00 	cmpl   $0x0,-0xbc(%ebp)
 804991b:	0f 48 d6             	cmovs  %esi,%edx
 804991e:	89 95 4c ff ff ff    	mov    %edx,-0xb4(%ebp)
 8049924:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
 804992a:	85 d2                	test   %edx,%edx
 804992c:	75 08                	jne    8049936 <_svfprintf_r+0x416>
 804992e:	85 c9                	test   %ecx,%ecx
 8049930:	0f 84 ea 08 00 00    	je     804a220 <_svfprintf_r+0xd00>
 8049936:	3c 01                	cmp    $0x1,%al
 8049938:	0f 84 6a 0d 00 00    	je     804a6a8 <_svfprintf_r+0x1188>
 804993e:	3c 02                	cmp    $0x2,%al
 8049940:	8d 45 a8             	lea    -0x58(%ebp),%eax
 8049943:	0f 85 bf 0b 00 00    	jne    804a508 <_svfprintf_r+0xfe8>
 8049949:	8b b5 18 ff ff ff    	mov    -0xe8(%ebp),%esi
 804994f:	90                   	nop
 8049950:	89 ca                	mov    %ecx,%edx
 8049952:	83 e8 01             	sub    $0x1,%eax
 8049955:	83 e2 0f             	and    $0xf,%edx
 8049958:	0f b6 14 16          	movzbl (%esi,%edx,1),%edx
 804995c:	c1 e9 04             	shr    $0x4,%ecx
 804995f:	85 c9                	test   %ecx,%ecx
 8049961:	88 10                	mov    %dl,(%eax)
 8049963:	75 eb                	jne    8049950 <_svfprintf_r+0x430>
 8049965:	8d 55 a8             	lea    -0x58(%ebp),%edx
 8049968:	29 c2                	sub    %eax,%edx
 804996a:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
 8049970:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
 8049976:	66 90                	xchg   %ax,%ax
 8049978:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
 804997e:	8b 95 38 ff ff ff    	mov    -0xc8(%ebp),%edx
 8049984:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
 804998b:	00 00 00 
 804998e:	39 c2                	cmp    %eax,%edx
 8049990:	0f 4d c2             	cmovge %edx,%eax
 8049993:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
 8049999:	e9 1a fe ff ff       	jmp    80497b8 <_svfprintf_r+0x298>
 804999e:	84 db                	test   %bl,%bl
 80499a0:	89 c8                	mov    %ecx,%eax
 80499a2:	0f 44 de             	cmove  %esi,%ebx
 80499a5:	e9 a3 fc ff ff       	jmp    804964d <_svfprintf_r+0x12d>
 80499aa:	83 8d 4c ff ff ff 01 	orl    $0x1,-0xb4(%ebp)
 80499b1:	89 c8                	mov    %ecx,%eax
 80499b3:	e9 95 fc ff ff       	jmp    804964d <_svfprintf_r+0x12d>
 80499b8:	81 8d 4c ff ff ff 80 	orl    $0x80,-0xb4(%ebp)
 80499bf:	00 00 00 
 80499c2:	89 c8                	mov    %ecx,%eax
 80499c4:	e9 84 fc ff ff       	jmp    804964d <_svfprintf_r+0x12d>
 80499c9:	89 bd 48 ff ff ff    	mov    %edi,-0xb8(%ebp)
 80499cf:	8d 50 d0             	lea    -0x30(%eax),%edx
 80499d2:	31 ff                	xor    %edi,%edi
 80499d4:	c7 85 40 ff ff ff 00 	movl   $0x0,-0xc0(%ebp)
 80499db:	00 00 00 
 80499de:	66 90                	xchg   %ax,%ax
 80499e0:	8d 04 bf             	lea    (%edi,%edi,4),%eax
 80499e3:	83 c1 01             	add    $0x1,%ecx
 80499e6:	8d 3c 42             	lea    (%edx,%eax,2),%edi
 80499e9:	0f be 41 ff          	movsbl -0x1(%ecx),%eax
 80499ed:	8d 50 d0             	lea    -0x30(%eax),%edx
 80499f0:	83 fa 09             	cmp    $0x9,%edx
 80499f3:	76 eb                	jbe    80499e0 <_svfprintf_r+0x4c0>
 80499f5:	89 bd 40 ff ff ff    	mov    %edi,-0xc0(%ebp)
 80499fb:	8b bd 48 ff ff ff    	mov    -0xb8(%ebp),%edi
 8049a01:	e9 4d fc ff ff       	jmp    8049653 <_svfprintf_r+0x133>
 8049a06:	83 8d 4c ff ff ff 10 	orl    $0x10,-0xb4(%ebp)
 8049a0d:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
 8049a14:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
 8049a1a:	8b 45 14             	mov    0x14(%ebp),%eax
 8049a1d:	89 4d 10             	mov    %ecx,0x10(%ebp)
 8049a20:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
 8049a26:	0f 85 61 02 00 00    	jne    8049c8d <_svfprintf_r+0x76d>
 8049a2c:	f6 85 4c ff ff ff 40 	testb  $0x40,-0xb4(%ebp)
 8049a33:	0f 84 54 02 00 00    	je     8049c8d <_svfprintf_r+0x76d>
 8049a39:	0f bf 08             	movswl (%eax),%ecx
 8049a3c:	83 c0 04             	add    $0x4,%eax
 8049a3f:	89 45 14             	mov    %eax,0x14(%ebp)
 8049a42:	85 c9                	test   %ecx,%ecx
 8049a44:	0f 88 53 02 00 00    	js     8049c9d <_svfprintf_r+0x77d>
 8049a4a:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
 8049a51:	b8 01 00 00 00       	mov    $0x1,%eax
 8049a56:	e9 ae fe ff ff       	jmp    8049909 <_svfprintf_r+0x3e9>
 8049a5b:	f6 85 4c ff ff ff 08 	testb  $0x8,-0xb4(%ebp)
 8049a62:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
 8049a68:	8b 45 14             	mov    0x14(%ebp),%eax
 8049a6b:	89 4d 10             	mov    %ecx,0x10(%ebp)
 8049a6e:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
 8049a74:	0f 84 15 10 00 00    	je     804aa8f <_svfprintf_r+0x156f>
 8049a7a:	db 28                	fldt   (%eax)
 8049a7c:	83 c0 0c             	add    $0xc,%eax
 8049a7f:	89 45 14             	mov    %eax,0x14(%ebp)
 8049a82:	dd 9d 10 ff ff ff    	fstpl  -0xf0(%ebp)
 8049a88:	dd 85 10 ff ff ff    	fldl   -0xf0(%ebp)
 8049a8e:	dd 1c 24             	fstpl  (%esp)
 8049a91:	e8 da 72 00 00       	call   8050d70 <__fpclassifyd>
 8049a96:	83 f8 01             	cmp    $0x1,%eax
 8049a99:	0f 85 82 0f 00 00    	jne    804aa21 <_svfprintf_r+0x1501>
 8049a9f:	90                   	nop
 8049aa0:	90                   	nop
 8049aa1:	dd 85 10 ff ff ff    	fldl   -0xf0(%ebp)
 8049aa7:	d9 c9                	fxch   %st(1)
 8049aa9:	df e9                	fucomip %st(1),%st
 8049aab:	dd d8                	fstp   %st(0)
 8049aad:	0f 87 59 15 00 00    	ja     804b00c <_svfprintf_r+0x1aec>
 8049ab3:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
 8049aba:	83 bd 24 ff ff ff 47 	cmpl   $0x47,-0xdc(%ebp)
 8049ac1:	ba 0c 49 05 08       	mov    $0x805490c,%edx
 8049ac6:	b8 10 49 05 08       	mov    $0x8054910,%eax
 8049acb:	c7 85 48 ff ff ff 03 	movl   $0x3,-0xb8(%ebp)
 8049ad2:	00 00 00 
 8049ad5:	0f 4e c2             	cmovle %edx,%eax
 8049ad8:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
 8049ade:	81 a5 4c ff ff ff 7f 	andl   $0xffffff7f,-0xb4(%ebp)
 8049ae5:	ff ff ff 
 8049ae8:	c7 85 38 ff ff ff 03 	movl   $0x3,-0xc8(%ebp)
 8049aef:	00 00 00 
 8049af2:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
 8049af9:	00 00 00 
 8049afc:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
 8049b03:	00 00 00 
 8049b06:	e9 ad fc ff ff       	jmp    80497b8 <_svfprintf_r+0x298>
 8049b0b:	8d 41 01             	lea    0x1(%ecx),%eax
 8049b0e:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
 8049b14:	0f be 01             	movsbl (%ecx),%eax
 8049b17:	83 f8 2a             	cmp    $0x2a,%eax
 8049b1a:	0f 84 84 18 00 00    	je     804b3a4 <_svfprintf_r+0x1e84>
 8049b20:	8d 50 d0             	lea    -0x30(%eax),%edx
 8049b23:	31 c9                	xor    %ecx,%ecx
 8049b25:	83 fa 09             	cmp    $0x9,%edx
 8049b28:	0f 87 a8 16 00 00    	ja     804b1d6 <_svfprintf_r+0x1cb6>
 8049b2e:	89 bd 44 ff ff ff    	mov    %edi,-0xbc(%ebp)
 8049b34:	8b bd 48 ff ff ff    	mov    -0xb8(%ebp),%edi
 8049b3a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 8049b40:	8d 04 89             	lea    (%ecx,%ecx,4),%eax
 8049b43:	83 c7 01             	add    $0x1,%edi
 8049b46:	8d 0c 42             	lea    (%edx,%eax,2),%ecx
 8049b49:	0f be 47 ff          	movsbl -0x1(%edi),%eax
 8049b4d:	8d 50 d0             	lea    -0x30(%eax),%edx
 8049b50:	83 fa 09             	cmp    $0x9,%edx
 8049b53:	76 eb                	jbe    8049b40 <_svfprintf_r+0x620>
 8049b55:	85 c9                	test   %ecx,%ecx
 8049b57:	89 ca                	mov    %ecx,%edx
 8049b59:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
 8049b5e:	0f 48 d1             	cmovs  %ecx,%edx
 8049b61:	89 bd 48 ff ff ff    	mov    %edi,-0xb8(%ebp)
 8049b67:	8b bd 44 ff ff ff    	mov    -0xbc(%ebp),%edi
 8049b6d:	8b 8d 48 ff ff ff    	mov    -0xb8(%ebp),%ecx
 8049b73:	89 95 44 ff ff ff    	mov    %edx,-0xbc(%ebp)
 8049b79:	e9 d5 fa ff ff       	jmp    8049653 <_svfprintf_r+0x133>
 8049b7e:	8b 45 14             	mov    0x14(%ebp),%eax
 8049b81:	89 4d 10             	mov    %ecx,0x10(%ebp)
 8049b84:	83 8d 4c ff ff ff 02 	orl    $0x2,-0xb4(%ebp)
 8049b8b:	8b 08                	mov    (%eax),%ecx
 8049b8d:	83 c0 04             	add    $0x4,%eax
 8049b90:	89 45 14             	mov    %eax,0x14(%ebp)
 8049b93:	b8 02 00 00 00       	mov    $0x2,%eax
 8049b98:	c6 85 5a ff ff ff 30 	movb   $0x30,-0xa6(%ebp)
 8049b9f:	c6 85 5b ff ff ff 78 	movb   $0x78,-0xa5(%ebp)
 8049ba6:	c7 85 18 ff ff ff 2d 	movl   $0x805492d,-0xe8(%ebp)
 8049bad:	49 05 08 
 8049bb0:	c7 85 24 ff ff ff 78 	movl   $0x78,-0xdc(%ebp)
 8049bb7:	00 00 00 
 8049bba:	e9 41 fd ff ff       	jmp    8049900 <_svfprintf_r+0x3e0>
 8049bbf:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
 8049bc6:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
 8049bcc:	8b 45 14             	mov    0x14(%ebp),%eax
 8049bcf:	89 4d 10             	mov    %ecx,0x10(%ebp)
 8049bd2:	0f 85 87 00 00 00    	jne    8049c5f <_svfprintf_r+0x73f>
 8049bd8:	f6 85 4c ff ff ff 40 	testb  $0x40,-0xb4(%ebp)
 8049bdf:	74 7e                	je     8049c5f <_svfprintf_r+0x73f>
 8049be1:	0f b7 08             	movzwl (%eax),%ecx
 8049be4:	83 c0 04             	add    $0x4,%eax
 8049be7:	89 45 14             	mov    %eax,0x14(%ebp)
 8049bea:	31 c0                	xor    %eax,%eax
 8049bec:	e9 0f fd ff ff       	jmp    8049900 <_svfprintf_r+0x3e0>
 8049bf1:	83 8d 4c ff ff ff 08 	orl    $0x8,-0xb4(%ebp)
 8049bf8:	89 c8                	mov    %ecx,%eax
 8049bfa:	e9 4e fa ff ff       	jmp    804964d <_svfprintf_r+0x12d>
 8049bff:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
 8049c06:	89 4d 10             	mov    %ecx,0x10(%ebp)
 8049c09:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
 8049c0f:	0f 85 97 0b 00 00    	jne    804a7ac <_svfprintf_r+0x128c>
 8049c15:	f6 85 4c ff ff ff 40 	testb  $0x40,-0xb4(%ebp)
 8049c1c:	0f 84 8a 0b 00 00    	je     804a7ac <_svfprintf_r+0x128c>
 8049c22:	8b 45 14             	mov    0x14(%ebp),%eax
 8049c25:	0f b7 95 34 ff ff ff 	movzwl -0xcc(%ebp),%edx
 8049c2c:	8b 00                	mov    (%eax),%eax
 8049c2e:	66 89 10             	mov    %dx,(%eax)
 8049c31:	8b 45 14             	mov    0x14(%ebp),%eax
 8049c34:	83 c0 04             	add    $0x4,%eax
 8049c37:	89 45 14             	mov    %eax,0x14(%ebp)
 8049c3a:	e9 7c f9 ff ff       	jmp    80495bb <_svfprintf_r+0x9b>
 8049c3f:	83 8d 4c ff ff ff 10 	orl    $0x10,-0xb4(%ebp)
 8049c46:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
 8049c4d:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
 8049c53:	8b 45 14             	mov    0x14(%ebp),%eax
 8049c56:	89 4d 10             	mov    %ecx,0x10(%ebp)
 8049c59:	0f 84 79 ff ff ff    	je     8049bd8 <_svfprintf_r+0x6b8>
 8049c5f:	8b 08                	mov    (%eax),%ecx
 8049c61:	83 c0 04             	add    $0x4,%eax
 8049c64:	89 45 14             	mov    %eax,0x14(%ebp)
 8049c67:	31 c0                	xor    %eax,%eax
 8049c69:	e9 92 fc ff ff       	jmp    8049900 <_svfprintf_r+0x3e0>
 8049c6e:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
 8049c75:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
 8049c7b:	8b 45 14             	mov    0x14(%ebp),%eax
 8049c7e:	89 4d 10             	mov    %ecx,0x10(%ebp)
 8049c81:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
 8049c87:	0f 84 9f fd ff ff    	je     8049a2c <_svfprintf_r+0x50c>
 8049c8d:	8b 08                	mov    (%eax),%ecx
 8049c8f:	83 c0 04             	add    $0x4,%eax
 8049c92:	89 45 14             	mov    %eax,0x14(%ebp)
 8049c95:	85 c9                	test   %ecx,%ecx
 8049c97:	0f 89 ad fd ff ff    	jns    8049a4a <_svfprintf_r+0x52a>
 8049c9d:	f7 d9                	neg    %ecx
 8049c9f:	bb 2d 00 00 00       	mov    $0x2d,%ebx
 8049ca4:	c6 85 59 ff ff ff 2d 	movb   $0x2d,-0xa7(%ebp)
 8049cab:	b8 01 00 00 00       	mov    $0x1,%eax
 8049cb0:	e9 54 fc ff ff       	jmp    8049909 <_svfprintf_r+0x3e9>
 8049cb5:	83 8d 4c ff ff ff 40 	orl    $0x40,-0xb4(%ebp)
 8049cbc:	89 c8                	mov    %ecx,%eax
 8049cbe:	e9 8a f9 ff ff       	jmp    804964d <_svfprintf_r+0x12d>
 8049cc3:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
 8049cca:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
 8049cd0:	8b 45 14             	mov    0x14(%ebp),%eax
 8049cd3:	89 4d 10             	mov    %ecx,0x10(%ebp)
 8049cd6:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
 8049cdc:	c7 85 18 ff ff ff 2d 	movl   $0x805492d,-0xe8(%ebp)
 8049ce3:	49 05 08 
 8049ce6:	75 71                	jne    8049d59 <_svfprintf_r+0x839>
 8049ce8:	f6 85 4c ff ff ff 40 	testb  $0x40,-0xb4(%ebp)
 8049cef:	74 68                	je     8049d59 <_svfprintf_r+0x839>
 8049cf1:	0f b7 08             	movzwl (%eax),%ecx
 8049cf4:	83 c0 04             	add    $0x4,%eax
 8049cf7:	89 45 14             	mov    %eax,0x14(%ebp)
 8049cfa:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
 8049d01:	b8 02 00 00 00       	mov    $0x2,%eax
 8049d06:	0f 84 f4 fb ff ff    	je     8049900 <_svfprintf_r+0x3e0>
 8049d0c:	85 c9                	test   %ecx,%ecx
 8049d0e:	0f 84 ec fb ff ff    	je     8049900 <_svfprintf_r+0x3e0>
 8049d14:	0f b6 95 24 ff ff ff 	movzbl -0xdc(%ebp),%edx
 8049d1b:	c6 85 5a ff ff ff 30 	movb   $0x30,-0xa6(%ebp)
 8049d22:	83 8d 4c ff ff ff 02 	orl    $0x2,-0xb4(%ebp)
 8049d29:	88 95 5b ff ff ff    	mov    %dl,-0xa5(%ebp)
 8049d2f:	e9 cc fb ff ff       	jmp    8049900 <_svfprintf_r+0x3e0>
 8049d34:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
 8049d3b:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
 8049d41:	8b 45 14             	mov    0x14(%ebp),%eax
 8049d44:	89 4d 10             	mov    %ecx,0x10(%ebp)
 8049d47:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
 8049d4d:	c7 85 18 ff ff ff 1c 	movl   $0x805491c,-0xe8(%ebp)
 8049d54:	49 05 08 
 8049d57:	74 8f                	je     8049ce8 <_svfprintf_r+0x7c8>
 8049d59:	8b 08                	mov    (%eax),%ecx
 8049d5b:	83 c0 04             	add    $0x4,%eax
 8049d5e:	89 45 14             	mov    %eax,0x14(%ebp)
 8049d61:	eb 97                	jmp    8049cfa <_svfprintf_r+0x7da>
 8049d63:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
 8049d69:	8b 45 14             	mov    0x14(%ebp),%eax
 8049d6c:	89 4d 10             	mov    %ecx,0x10(%ebp)
 8049d6f:	c6 85 59 ff ff ff 00 	movb   $0x0,-0xa7(%ebp)
 8049d76:	8b 00                	mov    (%eax),%eax
 8049d78:	88 45 80             	mov    %al,-0x80(%ebp)
 8049d7b:	8b 45 14             	mov    0x14(%ebp),%eax
 8049d7e:	83 c0 04             	add    $0x4,%eax
 8049d81:	89 45 14             	mov    %eax,0x14(%ebp)
 8049d84:	8d 45 80             	lea    -0x80(%ebp),%eax
 8049d87:	31 db                	xor    %ebx,%ebx
 8049d89:	c7 85 48 ff ff ff 01 	movl   $0x1,-0xb8(%ebp)
 8049d90:	00 00 00 
 8049d93:	c7 85 38 ff ff ff 01 	movl   $0x1,-0xc8(%ebp)
 8049d9a:	00 00 00 
 8049d9d:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
 8049da4:	00 00 00 
 8049da7:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
 8049dae:	00 00 00 
 8049db1:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
 8049db7:	e9 07 fa ff ff       	jmp    80497c3 <_svfprintf_r+0x2a3>
 8049dbc:	83 8d 4c ff ff ff 10 	orl    $0x10,-0xb4(%ebp)
 8049dc3:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
 8049dca:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
 8049dd0:	8b 45 14             	mov    0x14(%ebp),%eax
 8049dd3:	89 4d 10             	mov    %ecx,0x10(%ebp)
 8049dd6:	0f 84 03 fb ff ff    	je     80498df <_svfprintf_r+0x3bf>
 8049ddc:	8b 08                	mov    (%eax),%ecx
 8049dde:	83 c0 04             	add    $0x4,%eax
 8049de1:	89 45 14             	mov    %eax,0x14(%ebp)
 8049de4:	b8 01 00 00 00       	mov    $0x1,%eax
 8049de9:	e9 12 fb ff ff       	jmp    8049900 <_svfprintf_r+0x3e0>
 8049dee:	85 c0                	test   %eax,%eax
 8049df0:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
 8049df6:	89 4d 10             	mov    %ecx,0x10(%ebp)
 8049df9:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
 8049dff:	0f 84 c3 f8 ff ff    	je     80496c8 <_svfprintf_r+0x1a8>
 8049e05:	88 45 80             	mov    %al,-0x80(%ebp)
 8049e08:	c6 85 59 ff ff ff 00 	movb   $0x0,-0xa7(%ebp)
 8049e0f:	e9 70 ff ff ff       	jmp    8049d84 <_svfprintf_r+0x864>
 8049e14:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8049e18:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
 8049e1e:	84 db                	test   %bl,%bl
 8049e20:	74 33                	je     8049e55 <_svfprintf_r+0x935>
 8049e22:	8d 85 59 ff ff ff    	lea    -0xa7(%ebp),%eax
 8049e28:	83 c1 01             	add    $0x1,%ecx
 8049e2b:	89 07                	mov    %eax,(%edi)
 8049e2d:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 8049e33:	83 c7 08             	add    $0x8,%edi
 8049e36:	c7 47 fc 01 00 00 00 	movl   $0x1,-0x4(%edi)
 8049e3d:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
 8049e43:	83 c0 01             	add    $0x1,%eax
 8049e46:	83 f8 07             	cmp    $0x7,%eax
 8049e49:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
 8049e4f:	0f 8f 7b 06 00 00    	jg     804a4d0 <_svfprintf_r+0xfb0>
 8049e55:	8b 9d 30 ff ff ff    	mov    -0xd0(%ebp),%ebx
 8049e5b:	85 db                	test   %ebx,%ebx
 8049e5d:	74 33                	je     8049e92 <_svfprintf_r+0x972>
 8049e5f:	8d 85 5a ff ff ff    	lea    -0xa6(%ebp),%eax
 8049e65:	83 c1 02             	add    $0x2,%ecx
 8049e68:	89 07                	mov    %eax,(%edi)
 8049e6a:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 8049e70:	83 c7 08             	add    $0x8,%edi
 8049e73:	c7 47 fc 02 00 00 00 	movl   $0x2,-0x4(%edi)
 8049e7a:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
 8049e80:	83 c0 01             	add    $0x1,%eax
 8049e83:	83 f8 07             	cmp    $0x7,%eax
 8049e86:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
 8049e8c:	0f 8f 06 06 00 00    	jg     804a498 <_svfprintf_r+0xf78>
 8049e92:	81 bd 2c ff ff ff 80 	cmpl   $0x80,-0xd4(%ebp)
 8049e99:	00 00 00 
 8049e9c:	0f 84 c6 03 00 00    	je     804a268 <_svfprintf_r+0xd48>
 8049ea2:	8b b5 44 ff ff ff    	mov    -0xbc(%ebp),%esi
 8049ea8:	2b b5 38 ff ff ff    	sub    -0xc8(%ebp),%esi
 8049eae:	85 f6                	test   %esi,%esi
 8049eb0:	0f 8e d2 00 00 00    	jle    8049f88 <_svfprintf_r+0xa68>
 8049eb6:	83 fe 10             	cmp    $0x10,%esi
 8049eb9:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 8049ebf:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
 8049ec5:	7f 11                	jg     8049ed8 <_svfprintf_r+0x9b8>
 8049ec7:	eb 6b                	jmp    8049f34 <_svfprintf_r+0xa14>
 8049ec9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 8049ed0:	83 ee 10             	sub    $0x10,%esi
 8049ed3:	83 fe 10             	cmp    $0x10,%esi
 8049ed6:	7e 5c                	jle    8049f34 <_svfprintf_r+0xa14>
 8049ed8:	83 c0 01             	add    $0x1,%eax
 8049edb:	83 c1 10             	add    $0x10,%ecx
 8049ede:	c7 07 ac 4a 05 08    	movl   $0x8054aac,(%edi)
 8049ee4:	83 c7 08             	add    $0x8,%edi
 8049ee7:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
 8049eee:	83 f8 07             	cmp    $0x7,%eax
 8049ef1:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
 8049ef7:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
 8049efd:	7e d1                	jle    8049ed0 <_svfprintf_r+0x9b0>
 8049eff:	8b 45 0c             	mov    0xc(%ebp),%eax
 8049f02:	89 5c 24 08          	mov    %ebx,0x8(%esp)
 8049f06:	89 44 24 04          	mov    %eax,0x4(%esp)
 8049f0a:	8b 45 08             	mov    0x8(%ebp),%eax
 8049f0d:	89 04 24             	mov    %eax,(%esp)
 8049f10:	e8 7b 70 00 00       	call   8050f90 <__ssprint_r>
 8049f15:	85 c0                	test   %eax,%eax
 8049f17:	0f 85 d3 f7 ff ff    	jne    80496f0 <_svfprintf_r+0x1d0>
 8049f1d:	83 ee 10             	sub    $0x10,%esi
 8049f20:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
 8049f26:	83 fe 10             	cmp    $0x10,%esi
 8049f29:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 8049f2f:	8d 7d a8             	lea    -0x58(%ebp),%edi
 8049f32:	7f a4                	jg     8049ed8 <_svfprintf_r+0x9b8>
 8049f34:	83 c0 01             	add    $0x1,%eax
 8049f37:	01 f1                	add    %esi,%ecx
 8049f39:	c7 07 ac 4a 05 08    	movl   $0x8054aac,(%edi)
 8049f3f:	83 c7 08             	add    $0x8,%edi
 8049f42:	89 77 fc             	mov    %esi,-0x4(%edi)
 8049f45:	83 f8 07             	cmp    $0x7,%eax
 8049f48:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
 8049f4e:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
 8049f54:	7e 32                	jle    8049f88 <_svfprintf_r+0xa68>
 8049f56:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
 8049f5c:	89 44 24 08          	mov    %eax,0x8(%esp)
 8049f60:	8b 45 0c             	mov    0xc(%ebp),%eax
 8049f63:	89 44 24 04          	mov    %eax,0x4(%esp)
 8049f67:	8b 45 08             	mov    0x8(%ebp),%eax
 8049f6a:	89 04 24             	mov    %eax,(%esp)
 8049f6d:	e8 1e 70 00 00       	call   8050f90 <__ssprint_r>
 8049f72:	85 c0                	test   %eax,%eax
 8049f74:	0f 85 76 f7 ff ff    	jne    80496f0 <_svfprintf_r+0x1d0>
 8049f7a:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
 8049f80:	8d 7d a8             	lea    -0x58(%ebp),%edi
 8049f83:	90                   	nop
 8049f84:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8049f88:	f7 85 4c ff ff ff 00 	testl  $0x100,-0xb4(%ebp)
 8049f8f:	01 00 00 
 8049f92:	0f 85 50 01 00 00    	jne    804a0e8 <_svfprintf_r+0xbc8>
 8049f98:	8b 85 28 ff ff ff    	mov    -0xd8(%ebp),%eax
 8049f9e:	89 07                	mov    %eax,(%edi)
 8049fa0:	8b 85 38 ff ff ff    	mov    -0xc8(%ebp),%eax
 8049fa6:	01 c1                	add    %eax,%ecx
 8049fa8:	89 47 04             	mov    %eax,0x4(%edi)
 8049fab:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 8049fb1:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
 8049fb7:	83 c0 01             	add    $0x1,%eax
 8049fba:	83 f8 07             	cmp    $0x7,%eax
 8049fbd:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
 8049fc3:	0f 8f 6a 04 00 00    	jg     804a433 <_svfprintf_r+0xf13>
 8049fc9:	83 c7 08             	add    $0x8,%edi
 8049fcc:	f6 85 4c ff ff ff 04 	testb  $0x4,-0xb4(%ebp)
 8049fd3:	0f 84 d7 00 00 00    	je     804a0b0 <_svfprintf_r+0xb90>
 8049fd9:	8b b5 40 ff ff ff    	mov    -0xc0(%ebp),%esi
 8049fdf:	2b b5 48 ff ff ff    	sub    -0xb8(%ebp),%esi
 8049fe5:	85 f6                	test   %esi,%esi
 8049fe7:	0f 8e c3 00 00 00    	jle    804a0b0 <_svfprintf_r+0xb90>
 8049fed:	83 fe 10             	cmp    $0x10,%esi
 8049ff0:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 8049ff6:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
 8049ffc:	7f 0a                	jg     804a008 <_svfprintf_r+0xae8>
 8049ffe:	eb 64                	jmp    804a064 <_svfprintf_r+0xb44>
 804a000:	83 ee 10             	sub    $0x10,%esi
 804a003:	83 fe 10             	cmp    $0x10,%esi
 804a006:	7e 5c                	jle    804a064 <_svfprintf_r+0xb44>
 804a008:	83 c0 01             	add    $0x1,%eax
 804a00b:	83 c1 10             	add    $0x10,%ecx
 804a00e:	c7 07 bc 4a 05 08    	movl   $0x8054abc,(%edi)
 804a014:	83 c7 08             	add    $0x8,%edi
 804a017:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
 804a01e:	83 f8 07             	cmp    $0x7,%eax
 804a021:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
 804a027:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
 804a02d:	7e d1                	jle    804a000 <_svfprintf_r+0xae0>
 804a02f:	8b 45 0c             	mov    0xc(%ebp),%eax
 804a032:	89 5c 24 08          	mov    %ebx,0x8(%esp)
 804a036:	89 44 24 04          	mov    %eax,0x4(%esp)
 804a03a:	8b 45 08             	mov    0x8(%ebp),%eax
 804a03d:	89 04 24             	mov    %eax,(%esp)
 804a040:	e8 4b 6f 00 00       	call   8050f90 <__ssprint_r>
 804a045:	85 c0                	test   %eax,%eax
 804a047:	0f 85 a3 f6 ff ff    	jne    80496f0 <_svfprintf_r+0x1d0>
 804a04d:	83 ee 10             	sub    $0x10,%esi
 804a050:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
 804a056:	83 fe 10             	cmp    $0x10,%esi
 804a059:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 804a05f:	8d 7d a8             	lea    -0x58(%ebp),%edi
 804a062:	7f a4                	jg     804a008 <_svfprintf_r+0xae8>
 804a064:	83 c0 01             	add    $0x1,%eax
 804a067:	01 f1                	add    %esi,%ecx
 804a069:	83 f8 07             	cmp    $0x7,%eax
 804a06c:	c7 07 bc 4a 05 08    	movl   $0x8054abc,(%edi)
 804a072:	89 77 04             	mov    %esi,0x4(%edi)
 804a075:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
 804a07b:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
 804a081:	7e 2d                	jle    804a0b0 <_svfprintf_r+0xb90>
 804a083:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
 804a089:	89 44 24 08          	mov    %eax,0x8(%esp)
 804a08d:	8b 45 0c             	mov    0xc(%ebp),%eax
 804a090:	89 44 24 04          	mov    %eax,0x4(%esp)
 804a094:	8b 45 08             	mov    0x8(%ebp),%eax
 804a097:	89 04 24             	mov    %eax,(%esp)
 804a09a:	e8 f1 6e 00 00       	call   8050f90 <__ssprint_r>
 804a09f:	85 c0                	test   %eax,%eax
 804a0a1:	0f 85 49 f6 ff ff    	jne    80496f0 <_svfprintf_r+0x1d0>
 804a0a7:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
 804a0ad:	8d 76 00             	lea    0x0(%esi),%esi
 804a0b0:	8b 85 40 ff ff ff    	mov    -0xc0(%ebp),%eax
 804a0b6:	8b 95 48 ff ff ff    	mov    -0xb8(%ebp),%edx
 804a0bc:	39 c2                	cmp    %eax,%edx
 804a0be:	0f 4d c2             	cmovge %edx,%eax
 804a0c1:	01 85 34 ff ff ff    	add    %eax,-0xcc(%ebp)
 804a0c7:	85 c9                	test   %ecx,%ecx
 804a0c9:	0f 85 99 03 00 00    	jne    804a468 <_svfprintf_r+0xf48>
 804a0cf:	c7 85 78 ff ff ff 00 	movl   $0x0,-0x88(%ebp)
 804a0d6:	00 00 00 
 804a0d9:	8d 7d a8             	lea    -0x58(%ebp),%edi
 804a0dc:	e9 da f4 ff ff       	jmp    80495bb <_svfprintf_r+0x9b>
 804a0e1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 804a0e8:	83 bd 24 ff ff ff 65 	cmpl   $0x65,-0xdc(%ebp)
 804a0ef:	0f 8e 5b 02 00 00    	jle    804a350 <_svfprintf_r+0xe30>
 804a0f5:	90                   	nop
 804a0f6:	90                   	nop
 804a0f7:	90                   	nop
 804a0f8:	90                   	nop
 804a0f9:	90                   	nop
 804a0fa:	90                   	nop
 804a0fb:	90                   	nop
 804a0fc:	90                   	nop
 804a0fd:	90                   	nop
 804a0fe:	90                   	nop
 804a0ff:	90                   	nop
 804a100:	90                   	nop
 804a101:	0f 8a 59 04 00 00    	jp     804a560 <_svfprintf_r+0x1040>
 804a107:	0f 85 53 04 00 00    	jne    804a560 <_svfprintf_r+0x1040>
 804a10d:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 804a113:	83 c1 01             	add    $0x1,%ecx
 804a116:	83 c7 08             	add    $0x8,%edi
 804a119:	c7 47 f8 7d 46 05 08 	movl   $0x805467d,-0x8(%edi)
 804a120:	c7 47 fc 01 00 00 00 	movl   $0x1,-0x4(%edi)
 804a127:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
 804a12d:	83 c0 01             	add    $0x1,%eax
 804a130:	83 f8 07             	cmp    $0x7,%eax
 804a133:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
 804a139:	0f 8f 63 09 00 00    	jg     804aaa2 <_svfprintf_r+0x1582>
 804a13f:	8b 85 1c ff ff ff    	mov    -0xe4(%ebp),%eax
 804a145:	39 85 5c ff ff ff    	cmp    %eax,-0xa4(%ebp)
 804a14b:	7c 0d                	jl     804a15a <_svfprintf_r+0xc3a>
 804a14d:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
 804a154:	0f 84 72 fe ff ff    	je     8049fcc <_svfprintf_r+0xaac>
 804a15a:	8b 85 0c ff ff ff    	mov    -0xf4(%ebp),%eax
 804a160:	83 c7 08             	add    $0x8,%edi
 804a163:	89 47 f8             	mov    %eax,-0x8(%edi)
 804a166:	8b 85 08 ff ff ff    	mov    -0xf8(%ebp),%eax
 804a16c:	89 47 fc             	mov    %eax,-0x4(%edi)
 804a16f:	01 c1                	add    %eax,%ecx
 804a171:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 804a177:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
 804a17d:	83 c0 01             	add    $0x1,%eax
 804a180:	83 f8 07             	cmp    $0x7,%eax
 804a183:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
 804a189:	0f 8f dc 0b 00 00    	jg     804ad6b <_svfprintf_r+0x184b>
 804a18f:	8b 85 1c ff ff ff    	mov    -0xe4(%ebp),%eax
 804a195:	8d 70 ff             	lea    -0x1(%eax),%esi
 804a198:	85 f6                	test   %esi,%esi
 804a19a:	0f 8e 2c fe ff ff    	jle    8049fcc <_svfprintf_r+0xaac>
 804a1a0:	83 fe 10             	cmp    $0x10,%esi
 804a1a3:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 804a1a9:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
 804a1af:	7f 13                	jg     804a1c4 <_svfprintf_r+0xca4>
 804a1b1:	e9 e6 05 00 00       	jmp    804a79c <_svfprintf_r+0x127c>
 804a1b6:	66 90                	xchg   %ax,%ax
 804a1b8:	83 ee 10             	sub    $0x10,%esi
 804a1bb:	83 fe 10             	cmp    $0x10,%esi
 804a1be:	0f 8e d8 05 00 00    	jle    804a79c <_svfprintf_r+0x127c>
 804a1c4:	83 c0 01             	add    $0x1,%eax
 804a1c7:	83 c1 10             	add    $0x10,%ecx
 804a1ca:	c7 07 ac 4a 05 08    	movl   $0x8054aac,(%edi)
 804a1d0:	83 c7 08             	add    $0x8,%edi
 804a1d3:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
 804a1da:	83 f8 07             	cmp    $0x7,%eax
 804a1dd:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
 804a1e3:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
 804a1e9:	7e cd                	jle    804a1b8 <_svfprintf_r+0xc98>
 804a1eb:	8b 45 0c             	mov    0xc(%ebp),%eax
 804a1ee:	89 5c 24 08          	mov    %ebx,0x8(%esp)
 804a1f2:	89 44 24 04          	mov    %eax,0x4(%esp)
 804a1f6:	8b 45 08             	mov    0x8(%ebp),%eax
 804a1f9:	89 04 24             	mov    %eax,(%esp)
 804a1fc:	e8 8f 6d 00 00       	call   8050f90 <__ssprint_r>
 804a201:	85 c0                	test   %eax,%eax
 804a203:	0f 85 e7 f4 ff ff    	jne    80496f0 <_svfprintf_r+0x1d0>
 804a209:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
 804a20f:	8d 7d a8             	lea    -0x58(%ebp),%edi
 804a212:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 804a218:	eb 9e                	jmp    804a1b8 <_svfprintf_r+0xc98>
 804a21a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 804a220:	84 c0                	test   %al,%al
 804a222:	75 2c                	jne    804a250 <_svfprintf_r+0xd30>
 804a224:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
 804a22b:	74 23                	je     804a250 <_svfprintf_r+0xd30>
 804a22d:	8b 85 00 ff ff ff    	mov    -0x100(%ebp),%eax
 804a233:	c6 45 a7 30          	movb   $0x30,-0x59(%ebp)
 804a237:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
 804a23d:	8d 45 a7             	lea    -0x59(%ebp),%eax
 804a240:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
 804a246:	e9 2d f7 ff ff       	jmp    8049978 <_svfprintf_r+0x458>
 804a24b:	90                   	nop
 804a24c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 804a250:	8d 45 a8             	lea    -0x58(%ebp),%eax
 804a253:	c7 85 38 ff ff ff 00 	movl   $0x0,-0xc8(%ebp)
 804a25a:	00 00 00 
 804a25d:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
 804a263:	e9 10 f7 ff ff       	jmp    8049978 <_svfprintf_r+0x458>
 804a268:	8b b5 40 ff ff ff    	mov    -0xc0(%ebp),%esi
 804a26e:	2b b5 48 ff ff ff    	sub    -0xb8(%ebp),%esi
 804a274:	85 f6                	test   %esi,%esi
 804a276:	0f 8e 26 fc ff ff    	jle    8049ea2 <_svfprintf_r+0x982>
 804a27c:	83 fe 10             	cmp    $0x10,%esi
 804a27f:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 804a285:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
 804a28b:	7f 0b                	jg     804a298 <_svfprintf_r+0xd78>
 804a28d:	eb 65                	jmp    804a2f4 <_svfprintf_r+0xdd4>
 804a28f:	90                   	nop
 804a290:	83 ee 10             	sub    $0x10,%esi
 804a293:	83 fe 10             	cmp    $0x10,%esi
 804a296:	7e 5c                	jle    804a2f4 <_svfprintf_r+0xdd4>
 804a298:	83 c0 01             	add    $0x1,%eax
 804a29b:	83 c1 10             	add    $0x10,%ecx
 804a29e:	c7 07 ac 4a 05 08    	movl   $0x8054aac,(%edi)
 804a2a4:	83 c7 08             	add    $0x8,%edi
 804a2a7:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
 804a2ae:	83 f8 07             	cmp    $0x7,%eax
 804a2b1:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
 804a2b7:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
 804a2bd:	7e d1                	jle    804a290 <_svfprintf_r+0xd70>
 804a2bf:	8b 45 0c             	mov    0xc(%ebp),%eax
 804a2c2:	89 5c 24 08          	mov    %ebx,0x8(%esp)
 804a2c6:	89 44 24 04          	mov    %eax,0x4(%esp)
 804a2ca:	8b 45 08             	mov    0x8(%ebp),%eax
 804a2cd:	89 04 24             	mov    %eax,(%esp)
 804a2d0:	e8 bb 6c 00 00       	call   8050f90 <__ssprint_r>
 804a2d5:	85 c0                	test   %eax,%eax
 804a2d7:	0f 85 13 f4 ff ff    	jne    80496f0 <_svfprintf_r+0x1d0>
 804a2dd:	83 ee 10             	sub    $0x10,%esi
 804a2e0:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
 804a2e6:	83 fe 10             	cmp    $0x10,%esi
 804a2e9:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 804a2ef:	8d 7d a8             	lea    -0x58(%ebp),%edi
 804a2f2:	7f a4                	jg     804a298 <_svfprintf_r+0xd78>
 804a2f4:	83 c0 01             	add    $0x1,%eax
 804a2f7:	01 f1                	add    %esi,%ecx
 804a2f9:	c7 07 ac 4a 05 08    	movl   $0x8054aac,(%edi)
 804a2ff:	83 c7 08             	add    $0x8,%edi
 804a302:	89 77 fc             	mov    %esi,-0x4(%edi)
 804a305:	83 f8 07             	cmp    $0x7,%eax
 804a308:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
 804a30e:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
 804a314:	0f 8e 88 fb ff ff    	jle    8049ea2 <_svfprintf_r+0x982>
 804a31a:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
 804a320:	89 44 24 08          	mov    %eax,0x8(%esp)
 804a324:	8b 45 0c             	mov    0xc(%ebp),%eax
 804a327:	89 44 24 04          	mov    %eax,0x4(%esp)
 804a32b:	8b 45 08             	mov    0x8(%ebp),%eax
 804a32e:	89 04 24             	mov    %eax,(%esp)
 804a331:	e8 5a 6c 00 00       	call   8050f90 <__ssprint_r>
 804a336:	85 c0                	test   %eax,%eax
 804a338:	0f 85 b2 f3 ff ff    	jne    80496f0 <_svfprintf_r+0x1d0>
 804a33e:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
 804a344:	8d 7d a8             	lea    -0x58(%ebp),%edi
 804a347:	e9 56 fb ff ff       	jmp    8049ea2 <_svfprintf_r+0x982>
 804a34c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 804a350:	83 bd 1c ff ff ff 01 	cmpl   $0x1,-0xe4(%ebp)
 804a357:	8b 85 28 ff ff ff    	mov    -0xd8(%ebp),%eax
 804a35d:	0f 8e df 05 00 00    	jle    804a942 <_svfprintf_r+0x1422>
 804a363:	89 07                	mov    %eax,(%edi)
 804a365:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 804a36b:	8d 51 01             	lea    0x1(%ecx),%edx
 804a36e:	c7 47 04 01 00 00 00 	movl   $0x1,0x4(%edi)
 804a375:	83 c7 08             	add    $0x8,%edi
 804a378:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
 804a37e:	83 c0 01             	add    $0x1,%eax
 804a381:	83 f8 07             	cmp    $0x7,%eax
 804a384:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
 804a38a:	0f 8f 59 06 00 00    	jg     804a9e9 <_svfprintf_r+0x14c9>
 804a390:	8b 9d 0c ff ff ff    	mov    -0xf4(%ebp),%ebx
 804a396:	83 c0 01             	add    $0x1,%eax
 804a399:	83 c7 08             	add    $0x8,%edi
 804a39c:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
 804a3a2:	89 5f f8             	mov    %ebx,-0x8(%edi)
 804a3a5:	8b 9d 08 ff ff ff    	mov    -0xf8(%ebp),%ebx
 804a3ab:	89 5f fc             	mov    %ebx,-0x4(%edi)
 804a3ae:	01 da                	add    %ebx,%edx
 804a3b0:	83 f8 07             	cmp    $0x7,%eax
 804a3b3:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
 804a3b9:	0f 8f f2 05 00 00    	jg     804a9b1 <_svfprintf_r+0x1491>
 804a3bf:	90                   	nop
 804a3c0:	90                   	nop
 804a3c1:	dd 85 10 ff ff ff    	fldl   -0xf0(%ebp)
 804a3c7:	df e9                	fucomip %st(1),%st
 804a3c9:	dd d8                	fstp   %st(0)
 804a3cb:	7a 06                	jp     804a3d3 <_svfprintf_r+0xeb3>
 804a3cd:	0f 84 33 03 00 00    	je     804a706 <_svfprintf_r+0x11e6>
 804a3d3:	8b 8d 28 ff ff ff    	mov    -0xd8(%ebp),%ecx
 804a3d9:	8b 9d 1c ff ff ff    	mov    -0xe4(%ebp),%ebx
 804a3df:	83 c1 01             	add    $0x1,%ecx
 804a3e2:	89 0f                	mov    %ecx,(%edi)
 804a3e4:	8d 4b ff             	lea    -0x1(%ebx),%ecx
 804a3e7:	89 4f 04             	mov    %ecx,0x4(%edi)
 804a3ea:	01 ca                	add    %ecx,%edx
 804a3ec:	83 c0 01             	add    $0x1,%eax
 804a3ef:	83 f8 07             	cmp    $0x7,%eax
 804a3f2:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
 804a3f8:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
 804a3fe:	0f 8f 75 05 00 00    	jg     804a979 <_svfprintf_r+0x1459>
 804a404:	83 c7 08             	add    $0x8,%edi
 804a407:	8b 9d 04 ff ff ff    	mov    -0xfc(%ebp),%ebx
 804a40d:	8d 8d 65 ff ff ff    	lea    -0x9b(%ebp),%ecx
 804a413:	89 0f                	mov    %ecx,(%edi)
 804a415:	89 5f 04             	mov    %ebx,0x4(%edi)
 804a418:	8d 0c 1a             	lea    (%edx,%ebx,1),%ecx
 804a41b:	83 c0 01             	add    $0x1,%eax
 804a41e:	83 f8 07             	cmp    $0x7,%eax
 804a421:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
 804a427:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
 804a42d:	0f 8e 96 fb ff ff    	jle    8049fc9 <_svfprintf_r+0xaa9>
 804a433:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
 804a439:	89 44 24 08          	mov    %eax,0x8(%esp)
 804a43d:	8b 45 0c             	mov    0xc(%ebp),%eax
 804a440:	89 44 24 04          	mov    %eax,0x4(%esp)
 804a444:	8b 45 08             	mov    0x8(%ebp),%eax
 804a447:	89 04 24             	mov    %eax,(%esp)
 804a44a:	e8 41 6b 00 00       	call   8050f90 <__ssprint_r>
 804a44f:	85 c0                	test   %eax,%eax
 804a451:	0f 85 99 f2 ff ff    	jne    80496f0 <_svfprintf_r+0x1d0>
 804a457:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
 804a45d:	8d 7d a8             	lea    -0x58(%ebp),%edi
 804a460:	e9 67 fb ff ff       	jmp    8049fcc <_svfprintf_r+0xaac>
 804a465:	8d 76 00             	lea    0x0(%esi),%esi
 804a468:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
 804a46e:	89 44 24 08          	mov    %eax,0x8(%esp)
 804a472:	8b 45 0c             	mov    0xc(%ebp),%eax
 804a475:	89 44 24 04          	mov    %eax,0x4(%esp)
 804a479:	8b 45 08             	mov    0x8(%ebp),%eax
 804a47c:	89 04 24             	mov    %eax,(%esp)
 804a47f:	e8 0c 6b 00 00       	call   8050f90 <__ssprint_r>
 804a484:	85 c0                	test   %eax,%eax
 804a486:	0f 84 43 fc ff ff    	je     804a0cf <_svfprintf_r+0xbaf>
 804a48c:	e9 5f f2 ff ff       	jmp    80496f0 <_svfprintf_r+0x1d0>
 804a491:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 804a498:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
 804a49e:	89 44 24 08          	mov    %eax,0x8(%esp)
 804a4a2:	8b 45 0c             	mov    0xc(%ebp),%eax
 804a4a5:	89 44 24 04          	mov    %eax,0x4(%esp)
 804a4a9:	8b 45 08             	mov    0x8(%ebp),%eax
 804a4ac:	89 04 24             	mov    %eax,(%esp)
 804a4af:	e8 dc 6a 00 00       	call   8050f90 <__ssprint_r>
 804a4b4:	85 c0                	test   %eax,%eax
 804a4b6:	0f 85 34 f2 ff ff    	jne    80496f0 <_svfprintf_r+0x1d0>
 804a4bc:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
 804a4c2:	8d 7d a8             	lea    -0x58(%ebp),%edi
 804a4c5:	e9 c8 f9 ff ff       	jmp    8049e92 <_svfprintf_r+0x972>
 804a4ca:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 804a4d0:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
 804a4d6:	89 44 24 08          	mov    %eax,0x8(%esp)
 804a4da:	8b 45 0c             	mov    0xc(%ebp),%eax
 804a4dd:	89 44 24 04          	mov    %eax,0x4(%esp)
 804a4e1:	8b 45 08             	mov    0x8(%ebp),%eax
 804a4e4:	89 04 24             	mov    %eax,(%esp)
 804a4e7:	e8 a4 6a 00 00       	call   8050f90 <__ssprint_r>
 804a4ec:	85 c0                	test   %eax,%eax
 804a4ee:	0f 85 fc f1 ff ff    	jne    80496f0 <_svfprintf_r+0x1d0>
 804a4f4:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
 804a4fa:	8d 7d a8             	lea    -0x58(%ebp),%edi
 804a4fd:	e9 53 f9 ff ff       	jmp    8049e55 <_svfprintf_r+0x935>
 804a502:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 804a508:	89 c2                	mov    %eax,%edx
 804a50a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 804a510:	89 c8                	mov    %ecx,%eax
 804a512:	83 ea 01             	sub    $0x1,%edx
 804a515:	83 e0 07             	and    $0x7,%eax
 804a518:	c1 e9 03             	shr    $0x3,%ecx
 804a51b:	83 c0 30             	add    $0x30,%eax
 804a51e:	85 c9                	test   %ecx,%ecx
 804a520:	88 02                	mov    %al,(%edx)
 804a522:	75 ec                	jne    804a510 <_svfprintf_r+0xff0>
 804a524:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
 804a52b:	89 95 28 ff ff ff    	mov    %edx,-0xd8(%ebp)
 804a531:	0f 84 5b 01 00 00    	je     804a692 <_svfprintf_r+0x1172>
 804a537:	3c 30                	cmp    $0x30,%al
 804a539:	74 0b                	je     804a546 <_svfprintf_r+0x1026>
 804a53b:	83 ad 28 ff ff ff 01 	subl   $0x1,-0xd8(%ebp)
 804a542:	c6 42 ff 30          	movb   $0x30,-0x1(%edx)
 804a546:	8d 45 a8             	lea    -0x58(%ebp),%eax
 804a549:	2b 85 28 ff ff ff    	sub    -0xd8(%ebp),%eax
 804a54f:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
 804a555:	e9 1e f4 ff ff       	jmp    8049978 <_svfprintf_r+0x458>
 804a55a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 804a560:	8b 9d 5c ff ff ff    	mov    -0xa4(%ebp),%ebx
 804a566:	85 db                	test   %ebx,%ebx
 804a568:	0f 8e 66 05 00 00    	jle    804aad4 <_svfprintf_r+0x15b4>
 804a56e:	8b 95 28 ff ff ff    	mov    -0xd8(%ebp),%edx
 804a574:	8b 85 1c ff ff ff    	mov    -0xe4(%ebp),%eax
 804a57a:	01 d0                	add    %edx,%eax
 804a57c:	89 c3                	mov    %eax,%ebx
 804a57e:	29 d3                	sub    %edx,%ebx
 804a580:	89 85 44 ff ff ff    	mov    %eax,-0xbc(%ebp)
 804a586:	89 d0                	mov    %edx,%eax
 804a588:	8b 95 20 ff ff ff    	mov    -0xe0(%ebp),%edx
 804a58e:	39 d3                	cmp    %edx,%ebx
 804a590:	0f 4f da             	cmovg  %edx,%ebx
 804a593:	85 db                	test   %ebx,%ebx
 804a595:	7e 28                	jle    804a5bf <_svfprintf_r+0x109f>
 804a597:	89 07                	mov    %eax,(%edi)
 804a599:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 804a59f:	01 d9                	add    %ebx,%ecx
 804a5a1:	89 5f 04             	mov    %ebx,0x4(%edi)
 804a5a4:	83 c7 08             	add    $0x8,%edi
 804a5a7:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
 804a5ad:	83 c0 01             	add    $0x1,%eax
 804a5b0:	83 f8 07             	cmp    $0x7,%eax
 804a5b3:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
 804a5b9:	0f 8f 58 09 00 00    	jg     804af17 <_svfprintf_r+0x19f7>
 804a5bf:	8b b5 20 ff ff ff    	mov    -0xe0(%ebp),%esi
 804a5c5:	31 c0                	xor    %eax,%eax
 804a5c7:	85 db                	test   %ebx,%ebx
 804a5c9:	0f 49 c3             	cmovns %ebx,%eax
 804a5cc:	29 c6                	sub    %eax,%esi
 804a5ce:	85 f6                	test   %esi,%esi
 804a5d0:	0f 8e 40 02 00 00    	jle    804a816 <_svfprintf_r+0x12f6>
 804a5d6:	83 fe 10             	cmp    $0x10,%esi
 804a5d9:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 804a5df:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
 804a5e5:	7f 15                	jg     804a5fc <_svfprintf_r+0x10dc>
 804a5e7:	e9 db 01 00 00       	jmp    804a7c7 <_svfprintf_r+0x12a7>
 804a5ec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 804a5f0:	83 ee 10             	sub    $0x10,%esi
 804a5f3:	83 fe 10             	cmp    $0x10,%esi
 804a5f6:	0f 8e cb 01 00 00    	jle    804a7c7 <_svfprintf_r+0x12a7>
 804a5fc:	83 c0 01             	add    $0x1,%eax
 804a5ff:	83 c1 10             	add    $0x10,%ecx
 804a602:	c7 07 ac 4a 05 08    	movl   $0x8054aac,(%edi)
 804a608:	83 c7 08             	add    $0x8,%edi
 804a60b:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
 804a612:	83 f8 07             	cmp    $0x7,%eax
 804a615:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
 804a61b:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
 804a621:	7e cd                	jle    804a5f0 <_svfprintf_r+0x10d0>
 804a623:	8b 45 0c             	mov    0xc(%ebp),%eax
 804a626:	89 5c 24 08          	mov    %ebx,0x8(%esp)
 804a62a:	89 44 24 04          	mov    %eax,0x4(%esp)
 804a62e:	8b 45 08             	mov    0x8(%ebp),%eax
 804a631:	89 04 24             	mov    %eax,(%esp)
 804a634:	e8 57 69 00 00       	call   8050f90 <__ssprint_r>
 804a639:	85 c0                	test   %eax,%eax
 804a63b:	0f 85 af f0 ff ff    	jne    80496f0 <_svfprintf_r+0x1d0>
 804a641:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
 804a647:	8d 7d a8             	lea    -0x58(%ebp),%edi
 804a64a:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 804a650:	eb 9e                	jmp    804a5f0 <_svfprintf_r+0x10d0>
 804a652:	8d 45 a8             	lea    -0x58(%ebp),%eax
 804a655:	be cd cc cc cc       	mov    $0xcccccccd,%esi
 804a65a:	89 bd 48 ff ff ff    	mov    %edi,-0xb8(%ebp)
 804a660:	89 c7                	mov    %eax,%edi
 804a662:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 804a668:	89 c8                	mov    %ecx,%eax
 804a66a:	83 ef 01             	sub    $0x1,%edi
 804a66d:	f7 e6                	mul    %esi
 804a66f:	c1 ea 03             	shr    $0x3,%edx
 804a672:	8d 04 92             	lea    (%edx,%edx,4),%eax
 804a675:	01 c0                	add    %eax,%eax
 804a677:	29 c1                	sub    %eax,%ecx
 804a679:	83 c1 30             	add    $0x30,%ecx
 804a67c:	85 d2                	test   %edx,%edx
 804a67e:	88 0f                	mov    %cl,(%edi)
 804a680:	89 d1                	mov    %edx,%ecx
 804a682:	75 e4                	jne    804a668 <_svfprintf_r+0x1148>
 804a684:	89 fa                	mov    %edi,%edx
 804a686:	89 bd 28 ff ff ff    	mov    %edi,-0xd8(%ebp)
 804a68c:	8b bd 48 ff ff ff    	mov    -0xb8(%ebp),%edi
 804a692:	8d 45 a8             	lea    -0x58(%ebp),%eax
 804a695:	29 d0                	sub    %edx,%eax
 804a697:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
 804a69d:	e9 d6 f2 ff ff       	jmp    8049978 <_svfprintf_r+0x458>
 804a6a2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 804a6a8:	83 f9 09             	cmp    $0x9,%ecx
 804a6ab:	77 a5                	ja     804a652 <_svfprintf_r+0x1132>
 804a6ad:	8b 85 00 ff ff ff    	mov    -0x100(%ebp),%eax
 804a6b3:	83 c1 30             	add    $0x30,%ecx
 804a6b6:	88 4d a7             	mov    %cl,-0x59(%ebp)
 804a6b9:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
 804a6bf:	8d 45 a7             	lea    -0x59(%ebp),%eax
 804a6c2:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
 804a6c8:	e9 ab f2 ff ff       	jmp    8049978 <_svfprintf_r+0x458>
 804a6cd:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
 804a6d3:	89 44 24 08          	mov    %eax,0x8(%esp)
 804a6d7:	8b 45 0c             	mov    0xc(%ebp),%eax
 804a6da:	89 44 24 04          	mov    %eax,0x4(%esp)
 804a6de:	8b 45 08             	mov    0x8(%ebp),%eax
 804a6e1:	89 04 24             	mov    %eax,(%esp)
 804a6e4:	e8 a7 68 00 00       	call   8050f90 <__ssprint_r>
 804a6e9:	85 c0                	test   %eax,%eax
 804a6eb:	0f 85 ff ef ff ff    	jne    80496f0 <_svfprintf_r+0x1d0>
 804a6f1:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
 804a6f8:	8d 7d a8             	lea    -0x58(%ebp),%edi
 804a6fb:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
 804a701:	e9 18 f7 ff ff       	jmp    8049e1e <_svfprintf_r+0x8fe>
 804a706:	8b 9d 1c ff ff ff    	mov    -0xe4(%ebp),%ebx
 804a70c:	8d 73 ff             	lea    -0x1(%ebx),%esi
 804a70f:	85 f6                	test   %esi,%esi
 804a711:	0f 8e f0 fc ff ff    	jle    804a407 <_svfprintf_r+0xee7>
 804a717:	83 fe 10             	cmp    $0x10,%esi
 804a71a:	7e 70                	jle    804a78c <_svfprintf_r+0x126c>
 804a71c:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
 804a722:	eb 0c                	jmp    804a730 <_svfprintf_r+0x1210>
 804a724:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 804a728:	83 ee 10             	sub    $0x10,%esi
 804a72b:	83 fe 10             	cmp    $0x10,%esi
 804a72e:	7e 5c                	jle    804a78c <_svfprintf_r+0x126c>
 804a730:	83 c0 01             	add    $0x1,%eax
 804a733:	83 c2 10             	add    $0x10,%edx
 804a736:	c7 07 ac 4a 05 08    	movl   $0x8054aac,(%edi)
 804a73c:	83 c7 08             	add    $0x8,%edi
 804a73f:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
 804a746:	83 f8 07             	cmp    $0x7,%eax
 804a749:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
 804a74f:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
 804a755:	7e d1                	jle    804a728 <_svfprintf_r+0x1208>
 804a757:	8b 45 0c             	mov    0xc(%ebp),%eax
 804a75a:	89 5c 24 08          	mov    %ebx,0x8(%esp)
 804a75e:	89 44 24 04          	mov    %eax,0x4(%esp)
 804a762:	8b 45 08             	mov    0x8(%ebp),%eax
 804a765:	89 04 24             	mov    %eax,(%esp)
 804a768:	e8 23 68 00 00       	call   8050f90 <__ssprint_r>
 804a76d:	85 c0                	test   %eax,%eax
 804a76f:	0f 85 7b ef ff ff    	jne    80496f0 <_svfprintf_r+0x1d0>
 804a775:	83 ee 10             	sub    $0x10,%esi
 804a778:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
 804a77e:	83 fe 10             	cmp    $0x10,%esi
 804a781:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 804a787:	8d 7d a8             	lea    -0x58(%ebp),%edi
 804a78a:	7f a4                	jg     804a730 <_svfprintf_r+0x1210>
 804a78c:	c7 07 ac 4a 05 08    	movl   $0x8054aac,(%edi)
 804a792:	01 f2                	add    %esi,%edx
 804a794:	89 77 04             	mov    %esi,0x4(%edi)
 804a797:	e9 50 fc ff ff       	jmp    804a3ec <_svfprintf_r+0xecc>
 804a79c:	c7 07 ac 4a 05 08    	movl   $0x8054aac,(%edi)
 804a7a2:	01 f1                	add    %esi,%ecx
 804a7a4:	89 77 04             	mov    %esi,0x4(%edi)
 804a7a7:	e9 6f fc ff ff       	jmp    804a41b <_svfprintf_r+0xefb>
 804a7ac:	8b 45 14             	mov    0x14(%ebp),%eax
 804a7af:	8b 95 34 ff ff ff    	mov    -0xcc(%ebp),%edx
 804a7b5:	8b 00                	mov    (%eax),%eax
 804a7b7:	89 10                	mov    %edx,(%eax)
 804a7b9:	8b 45 14             	mov    0x14(%ebp),%eax
 804a7bc:	83 c0 04             	add    $0x4,%eax
 804a7bf:	89 45 14             	mov    %eax,0x14(%ebp)
 804a7c2:	e9 f4 ed ff ff       	jmp    80495bb <_svfprintf_r+0x9b>
 804a7c7:	83 c0 01             	add    $0x1,%eax
 804a7ca:	01 f1                	add    %esi,%ecx
 804a7cc:	c7 07 ac 4a 05 08    	movl   $0x8054aac,(%edi)
 804a7d2:	83 c7 08             	add    $0x8,%edi
 804a7d5:	89 77 fc             	mov    %esi,-0x4(%edi)
 804a7d8:	83 f8 07             	cmp    $0x7,%eax
 804a7db:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
 804a7e1:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
 804a7e7:	7e 2d                	jle    804a816 <_svfprintf_r+0x12f6>
 804a7e9:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
 804a7ef:	89 44 24 08          	mov    %eax,0x8(%esp)
 804a7f3:	8b 45 0c             	mov    0xc(%ebp),%eax
 804a7f6:	89 44 24 04          	mov    %eax,0x4(%esp)
 804a7fa:	8b 45 08             	mov    0x8(%ebp),%eax
 804a7fd:	89 04 24             	mov    %eax,(%esp)
 804a800:	e8 8b 67 00 00       	call   8050f90 <__ssprint_r>
 804a805:	85 c0                	test   %eax,%eax
 804a807:	0f 85 e3 ee ff ff    	jne    80496f0 <_svfprintf_r+0x1d0>
 804a80d:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
 804a813:	8d 7d a8             	lea    -0x58(%ebp),%edi
 804a816:	8b 85 28 ff ff ff    	mov    -0xd8(%ebp),%eax
 804a81c:	8b 95 5c ff ff ff    	mov    -0xa4(%ebp),%edx
 804a822:	03 85 20 ff ff ff    	add    -0xe0(%ebp),%eax
 804a828:	3b 95 1c ff ff ff    	cmp    -0xe4(%ebp),%edx
 804a82e:	89 c6                	mov    %eax,%esi
 804a830:	7c 0d                	jl     804a83f <_svfprintf_r+0x131f>
 804a832:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
 804a839:	0f 84 5e 05 00 00    	je     804ad9d <_svfprintf_r+0x187d>
 804a83f:	8b 85 0c ff ff ff    	mov    -0xf4(%ebp),%eax
 804a845:	89 07                	mov    %eax,(%edi)
 804a847:	8b 85 08 ff ff ff    	mov    -0xf8(%ebp),%eax
 804a84d:	01 c1                	add    %eax,%ecx
 804a84f:	89 47 04             	mov    %eax,0x4(%edi)
 804a852:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 804a858:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
 804a85e:	83 c0 01             	add    $0x1,%eax
 804a861:	83 f8 07             	cmp    $0x7,%eax
 804a864:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
 804a86a:	0f 8f d9 06 00 00    	jg     804af49 <_svfprintf_r+0x1a29>
 804a870:	83 c7 08             	add    $0x8,%edi
 804a873:	89 d0                	mov    %edx,%eax
 804a875:	8b 9d 44 ff ff ff    	mov    -0xbc(%ebp),%ebx
 804a87b:	89 f2                	mov    %esi,%edx
 804a87d:	29 f3                	sub    %esi,%ebx
 804a87f:	8b b5 1c ff ff ff    	mov    -0xe4(%ebp),%esi
 804a885:	29 c6                	sub    %eax,%esi
 804a887:	39 de                	cmp    %ebx,%esi
 804a889:	0f 4e de             	cmovle %esi,%ebx
 804a88c:	85 db                	test   %ebx,%ebx
 804a88e:	7e 29                	jle    804a8b9 <_svfprintf_r+0x1399>
 804a890:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 804a896:	01 d9                	add    %ebx,%ecx
 804a898:	83 c7 08             	add    $0x8,%edi
 804a89b:	89 57 f8             	mov    %edx,-0x8(%edi)
 804a89e:	89 5f fc             	mov    %ebx,-0x4(%edi)
 804a8a1:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
 804a8a7:	83 c0 01             	add    $0x1,%eax
 804a8aa:	83 f8 07             	cmp    $0x7,%eax
 804a8ad:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
 804a8b3:	0f 8f c8 06 00 00    	jg     804af81 <_svfprintf_r+0x1a61>
 804a8b9:	31 c0                	xor    %eax,%eax
 804a8bb:	85 db                	test   %ebx,%ebx
 804a8bd:	0f 49 c3             	cmovns %ebx,%eax
 804a8c0:	29 c6                	sub    %eax,%esi
 804a8c2:	85 f6                	test   %esi,%esi
 804a8c4:	0f 8e 02 f7 ff ff    	jle    8049fcc <_svfprintf_r+0xaac>
 804a8ca:	83 fe 10             	cmp    $0x10,%esi
 804a8cd:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 804a8d3:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
 804a8d9:	7f 11                	jg     804a8ec <_svfprintf_r+0x13cc>
 804a8db:	e9 bc fe ff ff       	jmp    804a79c <_svfprintf_r+0x127c>
 804a8e0:	83 ee 10             	sub    $0x10,%esi
 804a8e3:	83 fe 10             	cmp    $0x10,%esi
 804a8e6:	0f 8e b0 fe ff ff    	jle    804a79c <_svfprintf_r+0x127c>
 804a8ec:	83 c0 01             	add    $0x1,%eax
 804a8ef:	83 c1 10             	add    $0x10,%ecx
 804a8f2:	c7 07 ac 4a 05 08    	movl   $0x8054aac,(%edi)
 804a8f8:	83 c7 08             	add    $0x8,%edi
 804a8fb:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
 804a902:	83 f8 07             	cmp    $0x7,%eax
 804a905:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
 804a90b:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
 804a911:	7e cd                	jle    804a8e0 <_svfprintf_r+0x13c0>
 804a913:	8b 45 0c             	mov    0xc(%ebp),%eax
 804a916:	89 5c 24 08          	mov    %ebx,0x8(%esp)
 804a91a:	89 44 24 04          	mov    %eax,0x4(%esp)
 804a91e:	8b 45 08             	mov    0x8(%ebp),%eax
 804a921:	89 04 24             	mov    %eax,(%esp)
 804a924:	e8 67 66 00 00       	call   8050f90 <__ssprint_r>
 804a929:	85 c0                	test   %eax,%eax
 804a92b:	0f 85 bf ed ff ff    	jne    80496f0 <_svfprintf_r+0x1d0>
 804a931:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
 804a937:	8d 7d a8             	lea    -0x58(%ebp),%edi
 804a93a:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 804a940:	eb 9e                	jmp    804a8e0 <_svfprintf_r+0x13c0>
 804a942:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
 804a949:	0f 85 14 fa ff ff    	jne    804a363 <_svfprintf_r+0xe43>
 804a94f:	89 07                	mov    %eax,(%edi)
 804a951:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 804a957:	8d 51 01             	lea    0x1(%ecx),%edx
 804a95a:	c7 47 04 01 00 00 00 	movl   $0x1,0x4(%edi)
 804a961:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
 804a967:	83 c0 01             	add    $0x1,%eax
 804a96a:	83 f8 07             	cmp    $0x7,%eax
 804a96d:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
 804a973:	0f 8e 8b fa ff ff    	jle    804a404 <_svfprintf_r+0xee4>
 804a979:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
 804a97f:	89 44 24 08          	mov    %eax,0x8(%esp)
 804a983:	8b 45 0c             	mov    0xc(%ebp),%eax
 804a986:	89 44 24 04          	mov    %eax,0x4(%esp)
 804a98a:	8b 45 08             	mov    0x8(%ebp),%eax
 804a98d:	89 04 24             	mov    %eax,(%esp)
 804a990:	e8 fb 65 00 00       	call   8050f90 <__ssprint_r>
 804a995:	85 c0                	test   %eax,%eax
 804a997:	0f 85 53 ed ff ff    	jne    80496f0 <_svfprintf_r+0x1d0>
 804a99d:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
 804a9a3:	8d 7d a8             	lea    -0x58(%ebp),%edi
 804a9a6:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 804a9ac:	e9 56 fa ff ff       	jmp    804a407 <_svfprintf_r+0xee7>
 804a9b1:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
 804a9b7:	89 44 24 08          	mov    %eax,0x8(%esp)
 804a9bb:	8b 45 0c             	mov    0xc(%ebp),%eax
 804a9be:	89 44 24 04          	mov    %eax,0x4(%esp)
 804a9c2:	8b 45 08             	mov    0x8(%ebp),%eax
 804a9c5:	89 04 24             	mov    %eax,(%esp)
 804a9c8:	e8 c3 65 00 00       	call   8050f90 <__ssprint_r>
 804a9cd:	85 c0                	test   %eax,%eax
 804a9cf:	0f 85 1b ed ff ff    	jne    80496f0 <_svfprintf_r+0x1d0>
 804a9d5:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
 804a9db:	8d 7d a8             	lea    -0x58(%ebp),%edi
 804a9de:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 804a9e4:	e9 d6 f9 ff ff       	jmp    804a3bf <_svfprintf_r+0xe9f>
 804a9e9:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
 804a9ef:	89 44 24 08          	mov    %eax,0x8(%esp)
 804a9f3:	8b 45 0c             	mov    0xc(%ebp),%eax
 804a9f6:	89 44 24 04          	mov    %eax,0x4(%esp)
 804a9fa:	8b 45 08             	mov    0x8(%ebp),%eax
 804a9fd:	89 04 24             	mov    %eax,(%esp)
 804aa00:	e8 8b 65 00 00       	call   8050f90 <__ssprint_r>
 804aa05:	85 c0                	test   %eax,%eax
 804aa07:	0f 85 e3 ec ff ff    	jne    80496f0 <_svfprintf_r+0x1d0>
 804aa0d:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
 804aa13:	8d 7d a8             	lea    -0x58(%ebp),%edi
 804aa16:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 804aa1c:	e9 6f f9 ff ff       	jmp    804a390 <_svfprintf_r+0xe70>
 804aa21:	dd 85 10 ff ff ff    	fldl   -0xf0(%ebp)
 804aa27:	dd 1c 24             	fstpl  (%esp)
 804aa2a:	e8 41 63 00 00       	call   8050d70 <__fpclassifyd>
 804aa2f:	85 c0                	test   %eax,%eax
 804aa31:	0f 85 a3 01 00 00    	jne    804abda <_svfprintf_r+0x16ba>
 804aa37:	83 bd 24 ff ff ff 47 	cmpl   $0x47,-0xdc(%ebp)
 804aa3e:	ba 14 49 05 08       	mov    $0x8054914,%edx
 804aa43:	b8 18 49 05 08       	mov    $0x8054918,%eax
 804aa48:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
 804aa4f:	c7 85 48 ff ff ff 03 	movl   $0x3,-0xb8(%ebp)
 804aa56:	00 00 00 
 804aa59:	0f 4e c2             	cmovle %edx,%eax
 804aa5c:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
 804aa62:	81 a5 4c ff ff ff 7f 	andl   $0xffffff7f,-0xb4(%ebp)
 804aa69:	ff ff ff 
 804aa6c:	c7 85 38 ff ff ff 03 	movl   $0x3,-0xc8(%ebp)
 804aa73:	00 00 00 
 804aa76:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
 804aa7d:	00 00 00 
 804aa80:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
 804aa87:	00 00 00 
 804aa8a:	e9 29 ed ff ff       	jmp    80497b8 <_svfprintf_r+0x298>
 804aa8f:	dd 00                	fldl   (%eax)
 804aa91:	83 c0 08             	add    $0x8,%eax
 804aa94:	dd 9d 10 ff ff ff    	fstpl  -0xf0(%ebp)
 804aa9a:	89 45 14             	mov    %eax,0x14(%ebp)
 804aa9d:	e9 e6 ef ff ff       	jmp    8049a88 <_svfprintf_r+0x568>
 804aaa2:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
 804aaa8:	89 44 24 08          	mov    %eax,0x8(%esp)
 804aaac:	8b 45 0c             	mov    0xc(%ebp),%eax
 804aaaf:	89 44 24 04          	mov    %eax,0x4(%esp)
 804aab3:	8b 45 08             	mov    0x8(%ebp),%eax
 804aab6:	89 04 24             	mov    %eax,(%esp)
 804aab9:	e8 d2 64 00 00       	call   8050f90 <__ssprint_r>
 804aabe:	85 c0                	test   %eax,%eax
 804aac0:	0f 85 2a ec ff ff    	jne    80496f0 <_svfprintf_r+0x1d0>
 804aac6:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
 804aacc:	8d 7d a8             	lea    -0x58(%ebp),%edi
 804aacf:	e9 6b f6 ff ff       	jmp    804a13f <_svfprintf_r+0xc1f>
 804aad4:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 804aada:	83 c1 01             	add    $0x1,%ecx
 804aadd:	83 c7 08             	add    $0x8,%edi
 804aae0:	c7 47 f8 7d 46 05 08 	movl   $0x805467d,-0x8(%edi)
 804aae7:	c7 47 fc 01 00 00 00 	movl   $0x1,-0x4(%edi)
 804aaee:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
 804aaf4:	83 c0 01             	add    $0x1,%eax
 804aaf7:	83 f8 07             	cmp    $0x7,%eax
 804aafa:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
 804ab00:	0f 8f ef 02 00 00    	jg     804adf5 <_svfprintf_r+0x18d5>
 804ab06:	85 db                	test   %ebx,%ebx
 804ab08:	75 17                	jne    804ab21 <_svfprintf_r+0x1601>
 804ab0a:	8b 95 1c ff ff ff    	mov    -0xe4(%ebp),%edx
 804ab10:	85 d2                	test   %edx,%edx
 804ab12:	75 0d                	jne    804ab21 <_svfprintf_r+0x1601>
 804ab14:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
 804ab1b:	0f 84 ab f4 ff ff    	je     8049fcc <_svfprintf_r+0xaac>
 804ab21:	8b 85 0c ff ff ff    	mov    -0xf4(%ebp),%eax
 804ab27:	83 c7 08             	add    $0x8,%edi
 804ab2a:	89 47 f8             	mov    %eax,-0x8(%edi)
 804ab2d:	8b 85 08 ff ff ff    	mov    -0xf8(%ebp),%eax
 804ab33:	89 47 fc             	mov    %eax,-0x4(%edi)
 804ab36:	8d 14 01             	lea    (%ecx,%eax,1),%edx
 804ab39:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 804ab3f:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
 804ab45:	83 c0 01             	add    $0x1,%eax
 804ab48:	83 f8 07             	cmp    $0x7,%eax
 804ab4b:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
 804ab51:	0f 8f 60 03 00 00    	jg     804aeb7 <_svfprintf_r+0x1997>
 804ab57:	f7 db                	neg    %ebx
 804ab59:	85 db                	test   %ebx,%ebx
 804ab5b:	0f 8e 21 03 00 00    	jle    804ae82 <_svfprintf_r+0x1962>
 804ab61:	83 fb 10             	cmp    $0x10,%ebx
 804ab64:	0f 8e c3 02 00 00    	jle    804ae2d <_svfprintf_r+0x190d>
 804ab6a:	8d b5 74 ff ff ff    	lea    -0x8c(%ebp),%esi
 804ab70:	eb 12                	jmp    804ab84 <_svfprintf_r+0x1664>
 804ab72:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 804ab78:	83 eb 10             	sub    $0x10,%ebx
 804ab7b:	83 fb 10             	cmp    $0x10,%ebx
 804ab7e:	0f 8e a9 02 00 00    	jle    804ae2d <_svfprintf_r+0x190d>
 804ab84:	83 c0 01             	add    $0x1,%eax
 804ab87:	83 c2 10             	add    $0x10,%edx
 804ab8a:	c7 07 ac 4a 05 08    	movl   $0x8054aac,(%edi)
 804ab90:	83 c7 08             	add    $0x8,%edi
 804ab93:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
 804ab9a:	83 f8 07             	cmp    $0x7,%eax
 804ab9d:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
 804aba3:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
 804aba9:	7e cd                	jle    804ab78 <_svfprintf_r+0x1658>
 804abab:	8b 45 0c             	mov    0xc(%ebp),%eax
 804abae:	89 74 24 08          	mov    %esi,0x8(%esp)
 804abb2:	89 44 24 04          	mov    %eax,0x4(%esp)
 804abb6:	8b 45 08             	mov    0x8(%ebp),%eax
 804abb9:	89 04 24             	mov    %eax,(%esp)
 804abbc:	e8 cf 63 00 00       	call   8050f90 <__ssprint_r>
 804abc1:	85 c0                	test   %eax,%eax
 804abc3:	0f 85 27 eb ff ff    	jne    80496f0 <_svfprintf_r+0x1d0>
 804abc9:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
 804abcf:	8d 7d a8             	lea    -0x58(%ebp),%edi
 804abd2:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 804abd8:	eb 9e                	jmp    804ab78 <_svfprintf_r+0x1658>
 804abda:	8b 9d 24 ff ff ff    	mov    -0xdc(%ebp),%ebx
 804abe0:	83 e3 df             	and    $0xffffffdf,%ebx
 804abe3:	83 bd 44 ff ff ff ff 	cmpl   $0xffffffff,-0xbc(%ebp)
 804abea:	0f 84 05 03 00 00    	je     804aef5 <_svfprintf_r+0x19d5>
 804abf0:	83 fb 47             	cmp    $0x47,%ebx
 804abf3:	75 16                	jne    804ac0b <_svfprintf_r+0x16eb>
 804abf5:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
 804abfb:	b8 01 00 00 00       	mov    $0x1,%eax
 804ac00:	85 d2                	test   %edx,%edx
 804ac02:	0f 45 c2             	cmovne %edx,%eax
 804ac05:	89 85 44 ff ff ff    	mov    %eax,-0xbc(%ebp)
 804ac0b:	8b 85 4c ff ff ff    	mov    -0xb4(%ebp),%eax
 804ac11:	dd 85 10 ff ff ff    	fldl   -0xf0(%ebp)
 804ac17:	dd 95 38 ff ff ff    	fstl   -0xc8(%ebp)
 804ac1d:	80 cc 01             	or     $0x1,%ah
 804ac20:	89 85 30 ff ff ff    	mov    %eax,-0xd0(%ebp)
 804ac26:	8b 85 3c ff ff ff    	mov    -0xc4(%ebp),%eax
 804ac2c:	c6 85 48 ff ff ff 00 	movb   $0x0,-0xb8(%ebp)
 804ac33:	85 c0                	test   %eax,%eax
 804ac35:	0f 88 ba 05 00 00    	js     804b1f5 <_svfprintf_r+0x1cd5>
 804ac3b:	83 fb 46             	cmp    $0x46,%ebx
 804ac3e:	0f 94 c0             	sete   %al
 804ac41:	89 c6                	mov    %eax,%esi
 804ac43:	0f 84 d4 03 00 00    	je     804b01d <_svfprintf_r+0x1afd>
 804ac49:	83 fb 45             	cmp    $0x45,%ebx
 804ac4c:	0f 85 99 05 00 00    	jne    804b1eb <_svfprintf_r+0x1ccb>
 804ac52:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
 804ac58:	dd 54 24 04          	fstl   0x4(%esp)
 804ac5c:	c7 44 24 0c 02 00 00 	movl   $0x2,0xc(%esp)
 804ac63:	00 
 804ac64:	dd 9d 38 ff ff ff    	fstpl  -0xc8(%ebp)
 804ac6a:	8d 70 01             	lea    0x1(%eax),%esi
 804ac6d:	8d 85 6c ff ff ff    	lea    -0x94(%ebp),%eax
 804ac73:	89 44 24 1c          	mov    %eax,0x1c(%esp)
 804ac77:	8d 85 60 ff ff ff    	lea    -0xa0(%ebp),%eax
 804ac7d:	89 44 24 18          	mov    %eax,0x18(%esp)
 804ac81:	8d 85 5c ff ff ff    	lea    -0xa4(%ebp),%eax
 804ac87:	89 44 24 14          	mov    %eax,0x14(%esp)
 804ac8b:	8b 45 08             	mov    0x8(%ebp),%eax
 804ac8e:	89 74 24 10          	mov    %esi,0x10(%esp)
 804ac92:	89 04 24             	mov    %eax,(%esp)
 804ac95:	e8 06 2b 00 00       	call   804d7a0 <_dtoa_r>
 804ac9a:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
 804aca0:	8d 0c 30             	lea    (%eax,%esi,1),%ecx
 804aca3:	dd 85 38 ff ff ff    	fldl   -0xc8(%ebp)
 804aca9:	90                   	nop
 804acaa:	90                   	nop
 804acab:	d9 c9                	fxch   %st(1)
 804acad:	df e9                	fucomip %st(1),%st
 804acaf:	dd d8                	fstp   %st(0)
 804acb1:	0f 8a fd 00 00 00    	jp     804adb4 <_svfprintf_r+0x1894>
 804acb7:	89 c8                	mov    %ecx,%eax
 804acb9:	0f 85 f5 00 00 00    	jne    804adb4 <_svfprintf_r+0x1894>
 804acbf:	2b 85 28 ff ff ff    	sub    -0xd8(%ebp),%eax
 804acc5:	83 fb 47             	cmp    $0x47,%ebx
 804acc8:	89 85 1c ff ff ff    	mov    %eax,-0xe4(%ebp)
 804acce:	0f 84 1e 04 00 00    	je     804b0f2 <_svfprintf_r+0x1bd2>
 804acd4:	83 bd 24 ff ff ff 65 	cmpl   $0x65,-0xdc(%ebp)
 804acdb:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
 804ace1:	0f 8e 65 04 00 00    	jle    804b14c <_svfprintf_r+0x1c2c>
 804ace7:	83 bd 24 ff ff ff 66 	cmpl   $0x66,-0xdc(%ebp)
 804acee:	89 85 20 ff ff ff    	mov    %eax,-0xe0(%ebp)
 804acf4:	0f 84 3c 05 00 00    	je     804b236 <_svfprintf_r+0x1d16>
 804acfa:	8b 85 20 ff ff ff    	mov    -0xe0(%ebp),%eax
 804ad00:	39 85 1c ff ff ff    	cmp    %eax,-0xe4(%ebp)
 804ad06:	0f 8f f7 04 00 00    	jg     804b203 <_svfprintf_r+0x1ce3>
 804ad0c:	8b 85 4c ff ff ff    	mov    -0xb4(%ebp),%eax
 804ad12:	83 e0 01             	and    $0x1,%eax
 804ad15:	0f 85 e2 05 00 00    	jne    804b2fd <_svfprintf_r+0x1ddd>
 804ad1b:	8b 95 20 ff ff ff    	mov    -0xe0(%ebp),%edx
 804ad21:	c7 85 24 ff ff ff 67 	movl   $0x67,-0xdc(%ebp)
 804ad28:	00 00 00 
 804ad2b:	85 d2                	test   %edx,%edx
 804ad2d:	0f 49 c2             	cmovns %edx,%eax
 804ad30:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
 804ad36:	80 bd 48 ff ff ff 00 	cmpb   $0x0,-0xb8(%ebp)
 804ad3d:	0f 85 68 03 00 00    	jne    804b0ab <_svfprintf_r+0x1b8b>
 804ad43:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
 804ad49:	8b 85 30 ff ff ff    	mov    -0xd0(%ebp),%eax
 804ad4f:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
 804ad56:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
 804ad5d:	00 00 00 
 804ad60:	89 85 4c ff ff ff    	mov    %eax,-0xb4(%ebp)
 804ad66:	e9 4d ea ff ff       	jmp    80497b8 <_svfprintf_r+0x298>
 804ad6b:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
 804ad71:	89 44 24 08          	mov    %eax,0x8(%esp)
 804ad75:	8b 45 0c             	mov    0xc(%ebp),%eax
 804ad78:	89 44 24 04          	mov    %eax,0x4(%esp)
 804ad7c:	8b 45 08             	mov    0x8(%ebp),%eax
 804ad7f:	89 04 24             	mov    %eax,(%esp)
 804ad82:	e8 09 62 00 00       	call   8050f90 <__ssprint_r>
 804ad87:	85 c0                	test   %eax,%eax
 804ad89:	0f 85 61 e9 ff ff    	jne    80496f0 <_svfprintf_r+0x1d0>
 804ad8f:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
 804ad95:	8d 7d a8             	lea    -0x58(%ebp),%edi
 804ad98:	e9 f2 f3 ff ff       	jmp    804a18f <_svfprintf_r+0xc6f>
 804ad9d:	89 d0                	mov    %edx,%eax
 804ad9f:	e9 d1 fa ff ff       	jmp    804a875 <_svfprintf_r+0x1355>
 804ada4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 804ada8:	8d 50 01             	lea    0x1(%eax),%edx
 804adab:	89 95 6c ff ff ff    	mov    %edx,-0x94(%ebp)
 804adb1:	c6 00 30             	movb   $0x30,(%eax)
 804adb4:	8b 85 6c ff ff ff    	mov    -0x94(%ebp),%eax
 804adba:	39 c1                	cmp    %eax,%ecx
 804adbc:	77 ea                	ja     804ada8 <_svfprintf_r+0x1888>
 804adbe:	e9 fc fe ff ff       	jmp    804acbf <_svfprintf_r+0x179f>
 804adc3:	8b 45 08             	mov    0x8(%ebp),%eax
 804adc6:	c7 44 24 04 40 00 00 	movl   $0x40,0x4(%esp)
 804adcd:	00 
 804adce:	89 04 24             	mov    %eax,(%esp)
 804add1:	e8 3a 49 00 00       	call   804f710 <_malloc_r>
 804add6:	8b 55 0c             	mov    0xc(%ebp),%edx
 804add9:	85 c0                	test   %eax,%eax
 804addb:	89 02                	mov    %eax,(%edx)
 804addd:	89 42 10             	mov    %eax,0x10(%edx)
 804ade0:	0f 84 15 06 00 00    	je     804b3fb <_svfprintf_r+0x1edb>
 804ade6:	8b 45 0c             	mov    0xc(%ebp),%eax
 804ade9:	c7 40 14 40 00 00 00 	movl   $0x40,0x14(%eax)
 804adf0:	e9 6c e7 ff ff       	jmp    8049561 <_svfprintf_r+0x41>
 804adf5:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
 804adfb:	89 44 24 08          	mov    %eax,0x8(%esp)
 804adff:	8b 45 0c             	mov    0xc(%ebp),%eax
 804ae02:	89 44 24 04          	mov    %eax,0x4(%esp)
 804ae06:	8b 45 08             	mov    0x8(%ebp),%eax
 804ae09:	89 04 24             	mov    %eax,(%esp)
 804ae0c:	e8 7f 61 00 00       	call   8050f90 <__ssprint_r>
 804ae11:	85 c0                	test   %eax,%eax
 804ae13:	0f 85 d7 e8 ff ff    	jne    80496f0 <_svfprintf_r+0x1d0>
 804ae19:	8b 9d 5c ff ff ff    	mov    -0xa4(%ebp),%ebx
 804ae1f:	8d 7d a8             	lea    -0x58(%ebp),%edi
 804ae22:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
 804ae28:	e9 d9 fc ff ff       	jmp    804ab06 <_svfprintf_r+0x15e6>
 804ae2d:	83 c0 01             	add    $0x1,%eax
 804ae30:	01 da                	add    %ebx,%edx
 804ae32:	c7 07 ac 4a 05 08    	movl   $0x8054aac,(%edi)
 804ae38:	83 c7 08             	add    $0x8,%edi
 804ae3b:	89 5f fc             	mov    %ebx,-0x4(%edi)
 804ae3e:	83 f8 07             	cmp    $0x7,%eax
 804ae41:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
 804ae47:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
 804ae4d:	7e 33                	jle    804ae82 <_svfprintf_r+0x1962>
 804ae4f:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
 804ae55:	89 44 24 08          	mov    %eax,0x8(%esp)
 804ae59:	8b 45 0c             	mov    0xc(%ebp),%eax
 804ae5c:	89 44 24 04          	mov    %eax,0x4(%esp)
 804ae60:	8b 45 08             	mov    0x8(%ebp),%eax
 804ae63:	89 04 24             	mov    %eax,(%esp)
 804ae66:	e8 25 61 00 00       	call   8050f90 <__ssprint_r>
 804ae6b:	85 c0                	test   %eax,%eax
 804ae6d:	0f 85 7d e8 ff ff    	jne    80496f0 <_svfprintf_r+0x1d0>
 804ae73:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
 804ae79:	8d 7d a8             	lea    -0x58(%ebp),%edi
 804ae7c:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 804ae82:	8b 9d 28 ff ff ff    	mov    -0xd8(%ebp),%ebx
 804ae88:	83 c0 01             	add    $0x1,%eax
 804ae8b:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
 804ae91:	89 1f                	mov    %ebx,(%edi)
 804ae93:	8b 9d 1c ff ff ff    	mov    -0xe4(%ebp),%ebx
 804ae99:	01 da                	add    %ebx,%edx
 804ae9b:	83 f8 07             	cmp    $0x7,%eax
 804ae9e:	89 5f 04             	mov    %ebx,0x4(%edi)
 804aea1:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
 804aea7:	0f 8f 86 f5 ff ff    	jg     804a433 <_svfprintf_r+0xf13>
 804aead:	83 c7 08             	add    $0x8,%edi
 804aeb0:	89 d1                	mov    %edx,%ecx
 804aeb2:	e9 15 f1 ff ff       	jmp    8049fcc <_svfprintf_r+0xaac>
 804aeb7:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
 804aebd:	89 44 24 08          	mov    %eax,0x8(%esp)
 804aec1:	8b 45 0c             	mov    0xc(%ebp),%eax
 804aec4:	89 44 24 04          	mov    %eax,0x4(%esp)
 804aec8:	8b 45 08             	mov    0x8(%ebp),%eax
 804aecb:	89 04 24             	mov    %eax,(%esp)
 804aece:	e8 bd 60 00 00       	call   8050f90 <__ssprint_r>
 804aed3:	85 c0                	test   %eax,%eax
 804aed5:	0f 85 15 e8 ff ff    	jne    80496f0 <_svfprintf_r+0x1d0>
 804aedb:	8b 9d 5c ff ff ff    	mov    -0xa4(%ebp),%ebx
 804aee1:	8d 7d a8             	lea    -0x58(%ebp),%edi
 804aee4:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
 804aeea:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 804aef0:	e9 62 fc ff ff       	jmp    804ab57 <_svfprintf_r+0x1637>
 804aef5:	c7 85 44 ff ff ff 06 	movl   $0x6,-0xbc(%ebp)
 804aefc:	00 00 00 
 804aeff:	e9 07 fd ff ff       	jmp    804ac0b <_svfprintf_r+0x16eb>
 804af04:	8b 85 28 ff ff ff    	mov    -0xd8(%ebp),%eax
 804af0a:	89 04 24             	mov    %eax,(%esp)
 804af0d:	e8 8e e5 ff ff       	call   80494a0 <strlen>
 804af12:	e9 6a e8 ff ff       	jmp    8049781 <_svfprintf_r+0x261>
 804af17:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
 804af1d:	89 44 24 08          	mov    %eax,0x8(%esp)
 804af21:	8b 45 0c             	mov    0xc(%ebp),%eax
 804af24:	89 44 24 04          	mov    %eax,0x4(%esp)
 804af28:	8b 45 08             	mov    0x8(%ebp),%eax
 804af2b:	89 04 24             	mov    %eax,(%esp)
 804af2e:	e8 5d 60 00 00       	call   8050f90 <__ssprint_r>
 804af33:	85 c0                	test   %eax,%eax
 804af35:	0f 85 b5 e7 ff ff    	jne    80496f0 <_svfprintf_r+0x1d0>
 804af3b:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
 804af41:	8d 7d a8             	lea    -0x58(%ebp),%edi
 804af44:	e9 76 f6 ff ff       	jmp    804a5bf <_svfprintf_r+0x109f>
 804af49:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
 804af4f:	89 44 24 08          	mov    %eax,0x8(%esp)
 804af53:	8b 45 0c             	mov    0xc(%ebp),%eax
 804af56:	89 44 24 04          	mov    %eax,0x4(%esp)
 804af5a:	8b 45 08             	mov    0x8(%ebp),%eax
 804af5d:	89 04 24             	mov    %eax,(%esp)
 804af60:	e8 2b 60 00 00       	call   8050f90 <__ssprint_r>
 804af65:	85 c0                	test   %eax,%eax
 804af67:	0f 85 83 e7 ff ff    	jne    80496f0 <_svfprintf_r+0x1d0>
 804af6d:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
 804af73:	8d 7d a8             	lea    -0x58(%ebp),%edi
 804af76:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
 804af7c:	e9 f4 f8 ff ff       	jmp    804a875 <_svfprintf_r+0x1355>
 804af81:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
 804af87:	89 44 24 08          	mov    %eax,0x8(%esp)
 804af8b:	8b 45 0c             	mov    0xc(%ebp),%eax
 804af8e:	89 44 24 04          	mov    %eax,0x4(%esp)
 804af92:	8b 45 08             	mov    0x8(%ebp),%eax
 804af95:	89 04 24             	mov    %eax,(%esp)
 804af98:	e8 f3 5f 00 00       	call   8050f90 <__ssprint_r>
 804af9d:	85 c0                	test   %eax,%eax
 804af9f:	0f 85 4b e7 ff ff    	jne    80496f0 <_svfprintf_r+0x1d0>
 804afa5:	8b b5 1c ff ff ff    	mov    -0xe4(%ebp),%esi
 804afab:	8d 7d a8             	lea    -0x58(%ebp),%edi
 804afae:	2b b5 5c ff ff ff    	sub    -0xa4(%ebp),%esi
 804afb4:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
 804afba:	e9 fa f8 ff ff       	jmp    804a8b9 <_svfprintf_r+0x1399>
 804afbf:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
 804afc5:	b0 06                	mov    $0x6,%al
 804afc7:	89 75 14             	mov    %esi,0x14(%ebp)
 804afca:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
 804afd1:	00 00 00 
 804afd4:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
 804afdb:	00 00 00 
 804afde:	83 fa 06             	cmp    $0x6,%edx
 804afe1:	0f 46 c2             	cmovbe %edx,%eax
 804afe4:	8b 95 28 ff ff ff    	mov    -0xd8(%ebp),%edx
 804afea:	85 c0                	test   %eax,%eax
 804afec:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
 804aff2:	c7 85 28 ff ff ff 3e 	movl   $0x805493e,-0xd8(%ebp)
 804aff9:	49 05 08 
 804affc:	0f 49 d0             	cmovns %eax,%edx
 804afff:	31 db                	xor    %ebx,%ebx
 804b001:	89 95 48 ff ff ff    	mov    %edx,-0xb8(%ebp)
 804b007:	e9 b7 e7 ff ff       	jmp    80497c3 <_svfprintf_r+0x2a3>
 804b00c:	c6 85 59 ff ff ff 2d 	movb   $0x2d,-0xa7(%ebp)
 804b013:	bb 2d 00 00 00       	mov    $0x2d,%ebx
 804b018:	e9 9d ea ff ff       	jmp    8049aba <_svfprintf_r+0x59a>
 804b01d:	ba 03 00 00 00       	mov    $0x3,%edx
 804b022:	8d 85 6c ff ff ff    	lea    -0x94(%ebp),%eax
 804b028:	89 44 24 1c          	mov    %eax,0x1c(%esp)
 804b02c:	8d 85 60 ff ff ff    	lea    -0xa0(%ebp),%eax
 804b032:	89 44 24 18          	mov    %eax,0x18(%esp)
 804b036:	8d 85 5c ff ff ff    	lea    -0xa4(%ebp),%eax
 804b03c:	89 44 24 14          	mov    %eax,0x14(%esp)
 804b040:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
 804b046:	dd 54 24 04          	fstl   0x4(%esp)
 804b04a:	89 54 24 0c          	mov    %edx,0xc(%esp)
 804b04e:	dd 9d 38 ff ff ff    	fstpl  -0xc8(%ebp)
 804b054:	89 44 24 10          	mov    %eax,0x10(%esp)
 804b058:	8b 45 08             	mov    0x8(%ebp),%eax
 804b05b:	89 04 24             	mov    %eax,(%esp)
 804b05e:	e8 3d 27 00 00       	call   804d7a0 <_dtoa_r>
 804b063:	83 fb 47             	cmp    $0x47,%ebx
 804b066:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
 804b06c:	dd 85 38 ff ff ff    	fldl   -0xc8(%ebp)
 804b072:	75 09                	jne    804b07d <_svfprintf_r+0x1b5d>
 804b074:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
 804b07b:	74 5b                	je     804b0d8 <_svfprintf_r+0x1bb8>
 804b07d:	8b 95 28 ff ff ff    	mov    -0xd8(%ebp),%edx
 804b083:	89 f0                	mov    %esi,%eax
 804b085:	8b 8d 44 ff ff ff    	mov    -0xbc(%ebp),%ecx
 804b08b:	01 d1                	add    %edx,%ecx
 804b08d:	84 c0                	test   %al,%al
 804b08f:	0f 84 14 fc ff ff    	je     804aca9 <_svfprintf_r+0x1789>
 804b095:	80 3a 30             	cmpb   $0x30,(%edx)
 804b098:	0f 84 37 02 00 00    	je     804b2d5 <_svfprintf_r+0x1db5>
 804b09e:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
 804b0a4:	01 c1                	add    %eax,%ecx
 804b0a6:	e9 fe fb ff ff       	jmp    804aca9 <_svfprintf_r+0x1789>
 804b0ab:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
 804b0b1:	8b 85 30 ff ff ff    	mov    -0xd0(%ebp),%eax
 804b0b7:	bb 2d 00 00 00       	mov    $0x2d,%ebx
 804b0bc:	c6 85 59 ff ff ff 2d 	movb   $0x2d,-0xa7(%ebp)
 804b0c3:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
 804b0ca:	00 00 00 
 804b0cd:	89 85 4c ff ff ff    	mov    %eax,-0xb4(%ebp)
 804b0d3:	e9 e4 e6 ff ff       	jmp    80497bc <_svfprintf_r+0x29c>
 804b0d8:	dd d8                	fstp   %st(0)
 804b0da:	8b 85 6c ff ff ff    	mov    -0x94(%ebp),%eax
 804b0e0:	89 85 1c ff ff ff    	mov    %eax,-0xe4(%ebp)
 804b0e6:	8b 85 28 ff ff ff    	mov    -0xd8(%ebp),%eax
 804b0ec:	29 85 1c ff ff ff    	sub    %eax,-0xe4(%ebp)
 804b0f2:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
 804b0f8:	83 f8 fd             	cmp    $0xfffffffd,%eax
 804b0fb:	7c 48                	jl     804b145 <_svfprintf_r+0x1c25>
 804b0fd:	39 85 44 ff ff ff    	cmp    %eax,-0xbc(%ebp)
 804b103:	7c 40                	jl     804b145 <_svfprintf_r+0x1c25>
 804b105:	89 85 20 ff ff ff    	mov    %eax,-0xe0(%ebp)
 804b10b:	e9 ea fb ff ff       	jmp    804acfa <_svfprintf_r+0x17da>
 804b110:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
 804b116:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
 804b11d:	89 75 14             	mov    %esi,0x14(%ebp)
 804b120:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
 804b127:	00 00 00 
 804b12a:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
 804b130:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
 804b136:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
 804b13d:	00 00 00 
 804b140:	e9 73 e6 ff ff       	jmp    80497b8 <_svfprintf_r+0x298>
 804b145:	83 ad 24 ff ff ff 02 	subl   $0x2,-0xdc(%ebp)
 804b14c:	8d 48 ff             	lea    -0x1(%eax),%ecx
 804b14f:	0f b6 85 24 ff ff ff 	movzbl -0xdc(%ebp),%eax
 804b156:	85 c9                	test   %ecx,%ecx
 804b158:	89 8d 5c ff ff ff    	mov    %ecx,-0xa4(%ebp)
 804b15e:	88 85 65 ff ff ff    	mov    %al,-0x9b(%ebp)
 804b164:	0f 88 2c 02 00 00    	js     804b396 <_svfprintf_r+0x1e76>
 804b16a:	c6 85 66 ff ff ff 2b 	movb   $0x2b,-0x9a(%ebp)
 804b171:	83 f9 09             	cmp    $0x9,%ecx
 804b174:	0f 8f ea 00 00 00    	jg     804b264 <_svfprintf_r+0x1d44>
 804b17a:	83 c1 30             	add    $0x30,%ecx
 804b17d:	c6 85 67 ff ff ff 30 	movb   $0x30,-0x99(%ebp)
 804b184:	8d 85 69 ff ff ff    	lea    -0x97(%ebp),%eax
 804b18a:	88 8d 68 ff ff ff    	mov    %cl,-0x98(%ebp)
 804b190:	8b 9d 1c ff ff ff    	mov    -0xe4(%ebp),%ebx
 804b196:	8d 95 65 ff ff ff    	lea    -0x9b(%ebp),%edx
 804b19c:	29 d0                	sub    %edx,%eax
 804b19e:	89 85 04 ff ff ff    	mov    %eax,-0xfc(%ebp)
 804b1a4:	89 da                	mov    %ebx,%edx
 804b1a6:	01 c2                	add    %eax,%edx
 804b1a8:	83 fb 01             	cmp    $0x1,%ebx
 804b1ab:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
 804b1b1:	0f 8e 21 02 00 00    	jle    804b3d8 <_svfprintf_r+0x1eb8>
 804b1b7:	31 c0                	xor    %eax,%eax
 804b1b9:	83 85 38 ff ff ff 01 	addl   $0x1,-0xc8(%ebp)
 804b1c0:	0f 49 85 38 ff ff ff 	cmovns -0xc8(%ebp),%eax
 804b1c7:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
 804b1ce:	00 00 00 
 804b1d1:	e9 60 fb ff ff       	jmp    804ad36 <_svfprintf_r+0x1816>
 804b1d6:	8b 8d 48 ff ff ff    	mov    -0xb8(%ebp),%ecx
 804b1dc:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
 804b1e3:	00 00 00 
 804b1e6:	e9 68 e4 ff ff       	jmp    8049653 <_svfprintf_r+0x133>
 804b1eb:	ba 02 00 00 00       	mov    $0x2,%edx
 804b1f0:	e9 2d fe ff ff       	jmp    804b022 <_svfprintf_r+0x1b02>
 804b1f5:	d9 e0                	fchs   
 804b1f7:	c6 85 48 ff ff ff 2d 	movb   $0x2d,-0xb8(%ebp)
 804b1fe:	e9 38 fa ff ff       	jmp    804ac3b <_svfprintf_r+0x171b>
 804b203:	8b 8d 20 ff ff ff    	mov    -0xe0(%ebp),%ecx
 804b209:	ba 01 00 00 00       	mov    $0x1,%edx
 804b20e:	85 c9                	test   %ecx,%ecx
 804b210:	0f 8e 5a 01 00 00    	jle    804b370 <_svfprintf_r+0x1e50>
 804b216:	31 c0                	xor    %eax,%eax
 804b218:	03 95 1c ff ff ff    	add    -0xe4(%ebp),%edx
 804b21e:	c7 85 24 ff ff ff 67 	movl   $0x67,-0xdc(%ebp)
 804b225:	00 00 00 
 804b228:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
 804b22e:	0f 49 c2             	cmovns %edx,%eax
 804b231:	e9 00 fb ff ff       	jmp    804ad36 <_svfprintf_r+0x1816>
 804b236:	85 c0                	test   %eax,%eax
 804b238:	0f 8e 06 01 00 00    	jle    804b344 <_svfprintf_r+0x1e24>
 804b23e:	8b b5 44 ff ff ff    	mov    -0xbc(%ebp),%esi
 804b244:	85 f6                	test   %esi,%esi
 804b246:	0f 85 d4 00 00 00    	jne    804b320 <_svfprintf_r+0x1e00>
 804b24c:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
 804b253:	0f 85 c7 00 00 00    	jne    804b320 <_svfprintf_r+0x1e00>
 804b259:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
 804b25f:	e9 d2 fa ff ff       	jmp    804ad36 <_svfprintf_r+0x1816>
 804b264:	8d b5 73 ff ff ff    	lea    -0x8d(%ebp),%esi
 804b26a:	89 f3                	mov    %esi,%ebx
 804b26c:	b8 67 66 66 66       	mov    $0x66666667,%eax
 804b271:	83 eb 01             	sub    $0x1,%ebx
 804b274:	f7 e9                	imul   %ecx
 804b276:	89 c8                	mov    %ecx,%eax
 804b278:	c1 f8 1f             	sar    $0x1f,%eax
 804b27b:	c1 fa 02             	sar    $0x2,%edx
 804b27e:	29 c2                	sub    %eax,%edx
 804b280:	8d 04 92             	lea    (%edx,%edx,4),%eax
 804b283:	01 c0                	add    %eax,%eax
 804b285:	29 c1                	sub    %eax,%ecx
 804b287:	83 fa 09             	cmp    $0x9,%edx
 804b28a:	8d 41 30             	lea    0x30(%ecx),%eax
 804b28d:	89 d1                	mov    %edx,%ecx
 804b28f:	88 03                	mov    %al,(%ebx)
 804b291:	7f d9                	jg     804b26c <_svfprintf_r+0x1d4c>
 804b293:	8d 43 ff             	lea    -0x1(%ebx),%eax
 804b296:	83 c1 30             	add    $0x30,%ecx
 804b299:	39 f0                	cmp    %esi,%eax
 804b29b:	88 4b ff             	mov    %cl,-0x1(%ebx)
 804b29e:	0f 83 6a 01 00 00    	jae    804b40e <_svfprintf_r+0x1eee>
 804b2a4:	8d 95 67 ff ff ff    	lea    -0x99(%ebp),%edx
 804b2aa:	eb 07                	jmp    804b2b3 <_svfprintf_r+0x1d93>
 804b2ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 804b2b0:	0f b6 08             	movzbl (%eax),%ecx
 804b2b3:	83 c0 01             	add    $0x1,%eax
 804b2b6:	83 c2 01             	add    $0x1,%edx
 804b2b9:	39 f0                	cmp    %esi,%eax
 804b2bb:	88 4a ff             	mov    %cl,-0x1(%edx)
 804b2be:	75 f0                	jne    804b2b0 <_svfprintf_r+0x1d90>
 804b2c0:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
 804b2c6:	29 d8                	sub    %ebx,%eax
 804b2c8:	8d 95 67 ff ff ff    	lea    -0x99(%ebp),%edx
 804b2ce:	01 d0                	add    %edx,%eax
 804b2d0:	e9 bb fe ff ff       	jmp    804b190 <_svfprintf_r+0x1c70>
 804b2d5:	d9 ee                	fldz   
 804b2d7:	d9 c9                	fxch   %st(1)
 804b2d9:	db e9                	fucomi %st(1),%st
 804b2db:	dd d9                	fstp   %st(1)
 804b2dd:	7a 06                	jp     804b2e5 <_svfprintf_r+0x1dc5>
 804b2df:	0f 84 b9 fd ff ff    	je     804b09e <_svfprintf_r+0x1b7e>
 804b2e5:	b8 01 00 00 00       	mov    $0x1,%eax
 804b2ea:	2b 85 44 ff ff ff    	sub    -0xbc(%ebp),%eax
 804b2f0:	89 85 5c ff ff ff    	mov    %eax,-0xa4(%ebp)
 804b2f6:	01 c1                	add    %eax,%ecx
 804b2f8:	e9 ac f9 ff ff       	jmp    804aca9 <_svfprintf_r+0x1789>
 804b2fd:	8b 95 20 ff ff ff    	mov    -0xe0(%ebp),%edx
 804b303:	31 c0                	xor    %eax,%eax
 804b305:	c7 85 24 ff ff ff 67 	movl   $0x67,-0xdc(%ebp)
 804b30c:	00 00 00 
 804b30f:	83 c2 01             	add    $0x1,%edx
 804b312:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
 804b318:	0f 49 c2             	cmovns %edx,%eax
 804b31b:	e9 16 fa ff ff       	jmp    804ad36 <_svfprintf_r+0x1816>
 804b320:	8b 95 20 ff ff ff    	mov    -0xe0(%ebp),%edx
 804b326:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
 804b32c:	8d 44 10 01          	lea    0x1(%eax,%edx,1),%eax
 804b330:	89 c2                	mov    %eax,%edx
 804b332:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
 804b338:	31 c0                	xor    %eax,%eax
 804b33a:	85 d2                	test   %edx,%edx
 804b33c:	0f 49 c2             	cmovns %edx,%eax
 804b33f:	e9 f2 f9 ff ff       	jmp    804ad36 <_svfprintf_r+0x1816>
 804b344:	8b 9d 44 ff ff ff    	mov    -0xbc(%ebp),%ebx
 804b34a:	85 db                	test   %ebx,%ebx
 804b34c:	75 2f                	jne    804b37d <_svfprintf_r+0x1e5d>
 804b34e:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
 804b355:	75 26                	jne    804b37d <_svfprintf_r+0x1e5d>
 804b357:	b8 01 00 00 00       	mov    $0x1,%eax
 804b35c:	c7 85 38 ff ff ff 01 	movl   $0x1,-0xc8(%ebp)
 804b363:	00 00 00 
 804b366:	e9 cb f9 ff ff       	jmp    804ad36 <_svfprintf_r+0x1816>
 804b36b:	90                   	nop
 804b36c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 804b370:	b2 02                	mov    $0x2,%dl
 804b372:	2b 95 20 ff ff ff    	sub    -0xe0(%ebp),%edx
 804b378:	e9 99 fe ff ff       	jmp    804b216 <_svfprintf_r+0x1cf6>
 804b37d:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
 804b383:	31 c0                	xor    %eax,%eax
 804b385:	83 c2 02             	add    $0x2,%edx
 804b388:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
 804b38e:	0f 49 c2             	cmovns %edx,%eax
 804b391:	e9 a0 f9 ff ff       	jmp    804ad36 <_svfprintf_r+0x1816>
 804b396:	f7 d9                	neg    %ecx
 804b398:	c6 85 66 ff ff ff 2d 	movb   $0x2d,-0x9a(%ebp)
 804b39f:	e9 cd fd ff ff       	jmp    804b171 <_svfprintf_r+0x1c51>
 804b3a4:	8b 55 14             	mov    0x14(%ebp),%edx
 804b3a7:	8b 45 14             	mov    0x14(%ebp),%eax
 804b3aa:	8b 8d 48 ff ff ff    	mov    -0xb8(%ebp),%ecx
 804b3b0:	8b 12                	mov    (%edx),%edx
 804b3b2:	83 c0 04             	add    $0x4,%eax
 804b3b5:	89 45 14             	mov    %eax,0x14(%ebp)
 804b3b8:	85 d2                	test   %edx,%edx
 804b3ba:	89 95 44 ff ff ff    	mov    %edx,-0xbc(%ebp)
 804b3c0:	0f 89 a9 e2 ff ff    	jns    804966f <_svfprintf_r+0x14f>
 804b3c6:	c7 85 44 ff ff ff ff 	movl   $0xffffffff,-0xbc(%ebp)
 804b3cd:	ff ff ff 
 804b3d0:	89 c8                	mov    %ecx,%eax
 804b3d2:	e9 76 e2 ff ff       	jmp    804964d <_svfprintf_r+0x12d>
 804b3d7:	90                   	nop
 804b3d8:	8b 85 4c ff ff ff    	mov    -0xb4(%ebp),%eax
 804b3de:	83 e0 01             	and    $0x1,%eax
 804b3e1:	0f 85 d0 fd ff ff    	jne    804b1b7 <_svfprintf_r+0x1c97>
 804b3e7:	85 d2                	test   %edx,%edx
 804b3e9:	0f 49 c2             	cmovns %edx,%eax
 804b3ec:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
 804b3f3:	00 00 00 
 804b3f6:	e9 3b f9 ff ff       	jmp    804ad36 <_svfprintf_r+0x1816>
 804b3fb:	8b 45 08             	mov    0x8(%ebp),%eax
 804b3fe:	c7 00 0c 00 00 00    	movl   $0xc,(%eax)
 804b404:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804b409:	e9 f5 e2 ff ff       	jmp    8049703 <_svfprintf_r+0x1e3>
 804b40e:	8d 85 67 ff ff ff    	lea    -0x99(%ebp),%eax
 804b414:	e9 77 fd ff ff       	jmp    804b190 <_svfprintf_r+0x1c70>
 804b419:	66 90                	xchg   %ax,%ax
 804b41b:	66 90                	xchg   %ax,%ax
 804b41d:	66 90                	xchg   %ax,%ax
 804b41f:	90                   	nop

0804b420 <_vfprintf_r>:
 804b420:	55                   	push   %ebp
 804b421:	89 e5                	mov    %esp,%ebp
 804b423:	57                   	push   %edi
 804b424:	56                   	push   %esi
 804b425:	53                   	push   %ebx
 804b426:	81 ec 1c 01 00 00    	sub    $0x11c,%esp
 804b42c:	8b 45 08             	mov    0x8(%ebp),%eax
 804b42f:	89 04 24             	mov    %eax,(%esp)
 804b432:	e8 39 41 00 00       	call   804f570 <_localeconv_r>
 804b437:	8b 00                	mov    (%eax),%eax
 804b439:	89 04 24             	mov    %eax,(%esp)
 804b43c:	89 85 18 ff ff ff    	mov    %eax,-0xe8(%ebp)
 804b442:	e8 59 e0 ff ff       	call   80494a0 <strlen>
 804b447:	8b 5d 08             	mov    0x8(%ebp),%ebx
 804b44a:	85 db                	test   %ebx,%ebx
 804b44c:	89 85 0c ff ff ff    	mov    %eax,-0xf4(%ebp)
 804b452:	74 0e                	je     804b462 <_vfprintf_r+0x42>
 804b454:	8b 45 08             	mov    0x8(%ebp),%eax
 804b457:	8b 48 38             	mov    0x38(%eax),%ecx
 804b45a:	85 c9                	test   %ecx,%ecx
 804b45c:	0f 84 56 02 00 00    	je     804b6b8 <_vfprintf_r+0x298>
 804b462:	8b 45 0c             	mov    0xc(%ebp),%eax
 804b465:	0f b7 40 0c          	movzwl 0xc(%eax),%eax
 804b469:	f6 c4 20             	test   $0x20,%ah
 804b46c:	75 11                	jne    804b47f <_vfprintf_r+0x5f>
 804b46e:	8b 55 0c             	mov    0xc(%ebp),%edx
 804b471:	80 cc 20             	or     $0x20,%ah
 804b474:	81 62 64 ff df ff ff 	andl   $0xffffdfff,0x64(%edx)
 804b47b:	66 89 42 0c          	mov    %ax,0xc(%edx)
 804b47f:	a8 08                	test   $0x8,%al
 804b481:	0f 84 59 01 00 00    	je     804b5e0 <_vfprintf_r+0x1c0>
 804b487:	8b 55 0c             	mov    0xc(%ebp),%edx
 804b48a:	8b 52 10             	mov    0x10(%edx),%edx
 804b48d:	85 d2                	test   %edx,%edx
 804b48f:	0f 84 4b 01 00 00    	je     804b5e0 <_vfprintf_r+0x1c0>
 804b495:	83 e0 1a             	and    $0x1a,%eax
 804b498:	66 83 f8 0a          	cmp    $0xa,%ax
 804b49c:	0f 84 68 01 00 00    	je     804b60a <_vfprintf_r+0x1ea>
 804b4a2:	8d 45 a8             	lea    -0x58(%ebp),%eax
 804b4a5:	8d 55 a7             	lea    -0x59(%ebp),%edx
 804b4a8:	89 c7                	mov    %eax,%edi
 804b4aa:	89 85 74 ff ff ff    	mov    %eax,-0x8c(%ebp)
 804b4b0:	90                   	nop
 804b4b1:	90                   	nop
 804b4b2:	29 d0                	sub    %edx,%eax
 804b4b4:	c7 85 7c ff ff ff 00 	movl   $0x0,-0x84(%ebp)
 804b4bb:	00 00 00 
 804b4be:	90                   	nop
 804b4bf:	90                   	nop
 804b4c0:	90                   	nop
 804b4c1:	90                   	nop
 804b4c2:	90                   	nop
 804b4c3:	90                   	nop
 804b4c4:	c7 85 78 ff ff ff 00 	movl   $0x0,-0x88(%ebp)
 804b4cb:	00 00 00 
 804b4ce:	c7 85 1c ff ff ff 00 	movl   $0x0,-0xe4(%ebp)
 804b4d5:	00 00 00 
 804b4d8:	c7 85 08 ff ff ff 00 	movl   $0x0,-0xf8(%ebp)
 804b4df:	00 00 00 
 804b4e2:	c7 85 04 ff ff ff 00 	movl   $0x0,-0xfc(%ebp)
 804b4e9:	00 00 00 
 804b4ec:	c7 85 28 ff ff ff 00 	movl   $0x0,-0xd8(%ebp)
 804b4f3:	00 00 00 
 804b4f6:	89 85 00 ff ff ff    	mov    %eax,-0x100(%ebp)
 804b4fc:	8b 45 10             	mov    0x10(%ebp),%eax
 804b4ff:	8b 5d 10             	mov    0x10(%ebp),%ebx
 804b502:	0f b6 00             	movzbl (%eax),%eax
 804b505:	3c 25                	cmp    $0x25,%al
 804b507:	74 4c                	je     804b555 <_vfprintf_r+0x135>
 804b509:	84 c0                	test   %al,%al
 804b50b:	75 07                	jne    804b514 <_vfprintf_r+0xf4>
 804b50d:	eb 46                	jmp    804b555 <_vfprintf_r+0x135>
 804b50f:	90                   	nop
 804b510:	84 c0                	test   %al,%al
 804b512:	74 0a                	je     804b51e <_vfprintf_r+0xfe>
 804b514:	83 c3 01             	add    $0x1,%ebx
 804b517:	0f b6 03             	movzbl (%ebx),%eax
 804b51a:	3c 25                	cmp    $0x25,%al
 804b51c:	75 f2                	jne    804b510 <_vfprintf_r+0xf0>
 804b51e:	89 de                	mov    %ebx,%esi
 804b520:	2b 75 10             	sub    0x10(%ebp),%esi
 804b523:	74 30                	je     804b555 <_vfprintf_r+0x135>
 804b525:	8b 45 10             	mov    0x10(%ebp),%eax
 804b528:	83 c7 08             	add    $0x8,%edi
 804b52b:	89 77 fc             	mov    %esi,-0x4(%edi)
 804b52e:	01 b5 7c ff ff ff    	add    %esi,-0x84(%ebp)
 804b534:	89 47 f8             	mov    %eax,-0x8(%edi)
 804b537:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 804b53d:	83 c0 01             	add    $0x1,%eax
 804b540:	83 f8 07             	cmp    $0x7,%eax
 804b543:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
 804b549:	0f 8f f9 00 00 00    	jg     804b648 <_vfprintf_r+0x228>
 804b54f:	01 b5 28 ff ff ff    	add    %esi,-0xd8(%ebp)
 804b555:	80 3b 00             	cmpb   $0x0,(%ebx)
 804b558:	0f 84 12 01 00 00    	je     804b670 <_vfprintf_r+0x250>
 804b55e:	8d 43 01             	lea    0x1(%ebx),%eax
 804b561:	be 20 00 00 00       	mov    $0x20,%esi
 804b566:	c6 85 59 ff ff ff 00 	movb   $0x0,-0xa7(%ebp)
 804b56d:	31 db                	xor    %ebx,%ebx
 804b56f:	c7 85 44 ff ff ff ff 	movl   $0xffffffff,-0xbc(%ebp)
 804b576:	ff ff ff 
 804b579:	c7 85 40 ff ff ff 00 	movl   $0x0,-0xc0(%ebp)
 804b580:	00 00 00 
 804b583:	c7 85 4c ff ff ff 00 	movl   $0x0,-0xb4(%ebp)
 804b58a:	00 00 00 
 804b58d:	8d 48 01             	lea    0x1(%eax),%ecx
 804b590:	0f be 00             	movsbl (%eax),%eax
 804b593:	8d 50 e0             	lea    -0x20(%eax),%edx
 804b596:	83 fa 58             	cmp    $0x58,%edx
 804b599:	0f 87 f2 07 00 00    	ja     804bd91 <_vfprintf_r+0x971>
 804b59f:	ff 24 95 cc 4a 05 08 	jmp    *0x8054acc(,%edx,4)
 804b5a6:	66 90                	xchg   %ax,%ax
 804b5a8:	83 8d 4c ff ff ff 10 	orl    $0x10,-0xb4(%ebp)
 804b5af:	89 c8                	mov    %ecx,%eax
 804b5b1:	eb da                	jmp    804b58d <_vfprintf_r+0x16d>
 804b5b3:	8b 45 14             	mov    0x14(%ebp),%eax
 804b5b6:	8b 55 14             	mov    0x14(%ebp),%edx
 804b5b9:	8b 00                	mov    (%eax),%eax
 804b5bb:	83 c2 04             	add    $0x4,%edx
 804b5be:	89 55 14             	mov    %edx,0x14(%ebp)
 804b5c1:	85 c0                	test   %eax,%eax
 804b5c3:	89 85 40 ff ff ff    	mov    %eax,-0xc0(%ebp)
 804b5c9:	79 e4                	jns    804b5af <_vfprintf_r+0x18f>
 804b5cb:	f7 9d 40 ff ff ff    	negl   -0xc0(%ebp)
 804b5d1:	83 8d 4c ff ff ff 04 	orl    $0x4,-0xb4(%ebp)
 804b5d8:	89 c8                	mov    %ecx,%eax
 804b5da:	eb b1                	jmp    804b58d <_vfprintf_r+0x16d>
 804b5dc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 804b5e0:	8b 45 0c             	mov    0xc(%ebp),%eax
 804b5e3:	89 44 24 04          	mov    %eax,0x4(%esp)
 804b5e7:	8b 45 08             	mov    0x8(%ebp),%eax
 804b5ea:	89 04 24             	mov    %eax,(%esp)
 804b5ed:	e8 ae 1e 00 00       	call   804d4a0 <__swsetup_r>
 804b5f2:	85 c0                	test   %eax,%eax
 804b5f4:	75 42                	jne    804b638 <_vfprintf_r+0x218>
 804b5f6:	8b 45 0c             	mov    0xc(%ebp),%eax
 804b5f9:	0f b7 40 0c          	movzwl 0xc(%eax),%eax
 804b5fd:	83 e0 1a             	and    $0x1a,%eax
 804b600:	66 83 f8 0a          	cmp    $0xa,%ax
 804b604:	0f 85 98 fe ff ff    	jne    804b4a2 <_vfprintf_r+0x82>
 804b60a:	8b 45 0c             	mov    0xc(%ebp),%eax
 804b60d:	66 83 78 0e 00       	cmpw   $0x0,0xe(%eax)
 804b612:	0f 88 8a fe ff ff    	js     804b4a2 <_vfprintf_r+0x82>
 804b618:	8b 45 14             	mov    0x14(%ebp),%eax
 804b61b:	8b 4d 10             	mov    0x10(%ebp),%ecx
 804b61e:	8b 55 0c             	mov    0xc(%ebp),%edx
 804b621:	89 04 24             	mov    %eax,(%esp)
 804b624:	8b 45 08             	mov    0x8(%ebp),%eax
 804b627:	e8 94 1d 00 00       	call   804d3c0 <__sbprintf>
 804b62c:	81 c4 1c 01 00 00    	add    $0x11c,%esp
 804b632:	5b                   	pop    %ebx
 804b633:	5e                   	pop    %esi
 804b634:	5f                   	pop    %edi
 804b635:	5d                   	pop    %ebp
 804b636:	c3                   	ret    
 804b637:	90                   	nop
 804b638:	81 c4 1c 01 00 00    	add    $0x11c,%esp
 804b63e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804b643:	5b                   	pop    %ebx
 804b644:	5e                   	pop    %esi
 804b645:	5f                   	pop    %edi
 804b646:	5d                   	pop    %ebp
 804b647:	c3                   	ret    
 804b648:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
 804b64e:	89 44 24 08          	mov    %eax,0x8(%esp)
 804b652:	8b 45 0c             	mov    0xc(%ebp),%eax
 804b655:	89 44 24 04          	mov    %eax,0x4(%esp)
 804b659:	8b 45 08             	mov    0x8(%ebp),%eax
 804b65c:	89 04 24             	mov    %eax,(%esp)
 804b65f:	e8 1c 6a 00 00       	call   8052080 <__sprint_r>
 804b664:	85 c0                	test   %eax,%eax
 804b666:	75 30                	jne    804b698 <_vfprintf_r+0x278>
 804b668:	8d 7d a8             	lea    -0x58(%ebp),%edi
 804b66b:	e9 df fe ff ff       	jmp    804b54f <_vfprintf_r+0x12f>
 804b670:	8b 85 7c ff ff ff    	mov    -0x84(%ebp),%eax
 804b676:	85 c0                	test   %eax,%eax
 804b678:	74 1e                	je     804b698 <_vfprintf_r+0x278>
 804b67a:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
 804b680:	89 44 24 08          	mov    %eax,0x8(%esp)
 804b684:	8b 45 0c             	mov    0xc(%ebp),%eax
 804b687:	89 44 24 04          	mov    %eax,0x4(%esp)
 804b68b:	8b 45 08             	mov    0x8(%ebp),%eax
 804b68e:	89 04 24             	mov    %eax,(%esp)
 804b691:	e8 ea 69 00 00       	call   8052080 <__sprint_r>
 804b696:	66 90                	xchg   %ax,%ax
 804b698:	8b 45 0c             	mov    0xc(%ebp),%eax
 804b69b:	f6 40 0c 40          	testb  $0x40,0xc(%eax)
 804b69f:	75 97                	jne    804b638 <_vfprintf_r+0x218>
 804b6a1:	8b 85 28 ff ff ff    	mov    -0xd8(%ebp),%eax
 804b6a7:	81 c4 1c 01 00 00    	add    $0x11c,%esp
 804b6ad:	5b                   	pop    %ebx
 804b6ae:	5e                   	pop    %esi
 804b6af:	5f                   	pop    %edi
 804b6b0:	5d                   	pop    %ebp
 804b6b1:	c3                   	ret    
 804b6b2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 804b6b8:	89 04 24             	mov    %eax,(%esp)
 804b6bb:	e8 50 36 00 00       	call   804ed10 <__sinit>
 804b6c0:	e9 9d fd ff ff       	jmp    804b462 <_vfprintf_r+0x42>
 804b6c5:	bb 2b 00 00 00       	mov    $0x2b,%ebx
 804b6ca:	89 c8                	mov    %ecx,%eax
 804b6cc:	e9 bc fe ff ff       	jmp    804b58d <_vfprintf_r+0x16d>
 804b6d1:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
 804b6d7:	8b 45 14             	mov    0x14(%ebp),%eax
 804b6da:	89 4d 10             	mov    %ecx,0x10(%ebp)
 804b6dd:	c6 85 59 ff ff ff 00 	movb   $0x0,-0xa7(%ebp)
 804b6e4:	8d 70 04             	lea    0x4(%eax),%esi
 804b6e7:	8b 00                	mov    (%eax),%eax
 804b6e9:	85 c0                	test   %eax,%eax
 804b6eb:	89 85 2c ff ff ff    	mov    %eax,-0xd4(%ebp)
 804b6f1:	0f 84 0a 18 00 00    	je     804cf01 <_vfprintf_r+0x1ae1>
 804b6f7:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
 804b6fd:	85 c0                	test   %eax,%eax
 804b6ff:	0f 88 41 17 00 00    	js     804ce46 <_vfprintf_r+0x1a26>
 804b705:	89 44 24 08          	mov    %eax,0x8(%esp)
 804b709:	8b 85 2c ff ff ff    	mov    -0xd4(%ebp),%eax
 804b70f:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 804b716:	00 
 804b717:	89 04 24             	mov    %eax,(%esp)
 804b71a:	e8 31 47 00 00       	call   804fe50 <memchr>
 804b71f:	85 c0                	test   %eax,%eax
 804b721:	0f 84 2b 19 00 00    	je     804d052 <_vfprintf_r+0x1c32>
 804b727:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
 804b72d:	2b 85 2c ff ff ff    	sub    -0xd4(%ebp),%eax
 804b733:	39 d0                	cmp    %edx,%eax
 804b735:	0f 4f c2             	cmovg  %edx,%eax
 804b738:	89 c2                	mov    %eax,%edx
 804b73a:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
 804b741:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
 804b747:	31 c0                	xor    %eax,%eax
 804b749:	85 d2                	test   %edx,%edx
 804b74b:	0f 49 c2             	cmovns %edx,%eax
 804b74e:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
 804b754:	89 75 14             	mov    %esi,0x14(%ebp)
 804b757:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
 804b75e:	00 00 00 
 804b761:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
 804b768:	00 00 00 
 804b76b:	90                   	nop
 804b76c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 804b770:	84 db                	test   %bl,%bl
 804b772:	74 07                	je     804b77b <_vfprintf_r+0x35b>
 804b774:	83 85 48 ff ff ff 01 	addl   $0x1,-0xb8(%ebp)
 804b77b:	8b 8d 48 ff ff ff    	mov    -0xb8(%ebp),%ecx
 804b781:	8b b5 4c ff ff ff    	mov    -0xb4(%ebp),%esi
 804b787:	89 c8                	mov    %ecx,%eax
 804b789:	89 f2                	mov    %esi,%edx
 804b78b:	83 c0 02             	add    $0x2,%eax
 804b78e:	83 e2 02             	and    $0x2,%edx
 804b791:	89 95 34 ff ff ff    	mov    %edx,-0xcc(%ebp)
 804b797:	89 f2                	mov    %esi,%edx
 804b799:	0f 44 c1             	cmove  %ecx,%eax
 804b79c:	81 e2 84 00 00 00    	and    $0x84,%edx
 804b7a2:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
 804b7a8:	89 95 30 ff ff ff    	mov    %edx,-0xd0(%ebp)
 804b7ae:	0f 85 1c 06 00 00    	jne    804bdd0 <_vfprintf_r+0x9b0>
 804b7b4:	8b b5 40 ff ff ff    	mov    -0xc0(%ebp),%esi
 804b7ba:	2b b5 48 ff ff ff    	sub    -0xb8(%ebp),%esi
 804b7c0:	85 f6                	test   %esi,%esi
 804b7c2:	0f 8e 08 06 00 00    	jle    804bdd0 <_vfprintf_r+0x9b0>
 804b7c8:	83 fe 10             	cmp    $0x10,%esi
 804b7cb:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
 804b7d1:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 804b7d7:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
 804b7dd:	7f 11                	jg     804b7f0 <_vfprintf_r+0x3d0>
 804b7df:	eb 6b                	jmp    804b84c <_vfprintf_r+0x42c>
 804b7e1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 804b7e8:	83 ee 10             	sub    $0x10,%esi
 804b7eb:	83 fe 10             	cmp    $0x10,%esi
 804b7ee:	7e 5c                	jle    804b84c <_vfprintf_r+0x42c>
 804b7f0:	83 c0 01             	add    $0x1,%eax
 804b7f3:	83 c1 10             	add    $0x10,%ecx
 804b7f6:	c7 07 40 4c 05 08    	movl   $0x8054c40,(%edi)
 804b7fc:	83 c7 08             	add    $0x8,%edi
 804b7ff:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
 804b806:	83 f8 07             	cmp    $0x7,%eax
 804b809:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
 804b80f:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
 804b815:	7e d1                	jle    804b7e8 <_vfprintf_r+0x3c8>
 804b817:	8b 45 0c             	mov    0xc(%ebp),%eax
 804b81a:	89 5c 24 08          	mov    %ebx,0x8(%esp)
 804b81e:	89 44 24 04          	mov    %eax,0x4(%esp)
 804b822:	8b 45 08             	mov    0x8(%ebp),%eax
 804b825:	89 04 24             	mov    %eax,(%esp)
 804b828:	e8 53 68 00 00       	call   8052080 <__sprint_r>
 804b82d:	85 c0                	test   %eax,%eax
 804b82f:	0f 85 63 fe ff ff    	jne    804b698 <_vfprintf_r+0x278>
 804b835:	83 ee 10             	sub    $0x10,%esi
 804b838:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
 804b83e:	83 fe 10             	cmp    $0x10,%esi
 804b841:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 804b847:	8d 7d a8             	lea    -0x58(%ebp),%edi
 804b84a:	7f a4                	jg     804b7f0 <_vfprintf_r+0x3d0>
 804b84c:	83 c0 01             	add    $0x1,%eax
 804b84f:	01 f1                	add    %esi,%ecx
 804b851:	83 f8 07             	cmp    $0x7,%eax
 804b854:	c7 07 40 4c 05 08    	movl   $0x8054c40,(%edi)
 804b85a:	89 77 04             	mov    %esi,0x4(%edi)
 804b85d:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
 804b863:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
 804b869:	0f 8f 16 0e 00 00    	jg     804c685 <_vfprintf_r+0x1265>
 804b86f:	83 c7 08             	add    $0x8,%edi
 804b872:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
 804b879:	e9 58 05 00 00       	jmp    804bdd6 <_vfprintf_r+0x9b6>
 804b87e:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
 804b885:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
 804b88b:	8b 45 14             	mov    0x14(%ebp),%eax
 804b88e:	89 4d 10             	mov    %ecx,0x10(%ebp)
 804b891:	0f 85 15 02 00 00    	jne    804baac <_vfprintf_r+0x68c>
 804b897:	f6 85 4c ff ff ff 40 	testb  $0x40,-0xb4(%ebp)
 804b89e:	0f 84 08 02 00 00    	je     804baac <_vfprintf_r+0x68c>
 804b8a4:	0f b7 08             	movzwl (%eax),%ecx
 804b8a7:	83 c0 04             	add    $0x4,%eax
 804b8aa:	89 45 14             	mov    %eax,0x14(%ebp)
 804b8ad:	b8 01 00 00 00       	mov    $0x1,%eax
 804b8b2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 804b8b8:	c6 85 59 ff ff ff 00 	movb   $0x0,-0xa7(%ebp)
 804b8bf:	31 db                	xor    %ebx,%ebx
 804b8c1:	8b b5 4c ff ff ff    	mov    -0xb4(%ebp),%esi
 804b8c7:	89 f2                	mov    %esi,%edx
 804b8c9:	80 e2 7f             	and    $0x7f,%dl
 804b8cc:	83 bd 44 ff ff ff 00 	cmpl   $0x0,-0xbc(%ebp)
 804b8d3:	0f 48 d6             	cmovs  %esi,%edx
 804b8d6:	89 95 4c ff ff ff    	mov    %edx,-0xb4(%ebp)
 804b8dc:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
 804b8e2:	85 d2                	test   %edx,%edx
 804b8e4:	75 08                	jne    804b8ee <_vfprintf_r+0x4ce>
 804b8e6:	85 c9                	test   %ecx,%ecx
 804b8e8:	0f 84 ea 08 00 00    	je     804c1d8 <_vfprintf_r+0xdb8>
 804b8ee:	3c 01                	cmp    $0x1,%al
 804b8f0:	0f 84 6a 0d 00 00    	je     804c660 <_vfprintf_r+0x1240>
 804b8f6:	3c 02                	cmp    $0x2,%al
 804b8f8:	8d 45 a8             	lea    -0x58(%ebp),%eax
 804b8fb:	0f 85 bf 0b 00 00    	jne    804c4c0 <_vfprintf_r+0x10a0>
 804b901:	8b b5 08 ff ff ff    	mov    -0xf8(%ebp),%esi
 804b907:	90                   	nop
 804b908:	89 ca                	mov    %ecx,%edx
 804b90a:	83 e8 01             	sub    $0x1,%eax
 804b90d:	83 e2 0f             	and    $0xf,%edx
 804b910:	0f b6 14 16          	movzbl (%esi,%edx,1),%edx
 804b914:	c1 e9 04             	shr    $0x4,%ecx
 804b917:	85 c9                	test   %ecx,%ecx
 804b919:	88 10                	mov    %dl,(%eax)
 804b91b:	75 eb                	jne    804b908 <_vfprintf_r+0x4e8>
 804b91d:	8d 55 a8             	lea    -0x58(%ebp),%edx
 804b920:	29 c2                	sub    %eax,%edx
 804b922:	89 85 2c ff ff ff    	mov    %eax,-0xd4(%ebp)
 804b928:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
 804b92e:	66 90                	xchg   %ax,%ax
 804b930:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
 804b936:	8b 95 38 ff ff ff    	mov    -0xc8(%ebp),%edx
 804b93c:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
 804b943:	00 00 00 
 804b946:	39 c2                	cmp    %eax,%edx
 804b948:	0f 4d c2             	cmovge %edx,%eax
 804b94b:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
 804b951:	e9 1a fe ff ff       	jmp    804b770 <_vfprintf_r+0x350>
 804b956:	81 8d 4c ff ff ff 80 	orl    $0x80,-0xb4(%ebp)
 804b95d:	00 00 00 
 804b960:	89 c8                	mov    %ecx,%eax
 804b962:	e9 26 fc ff ff       	jmp    804b58d <_vfprintf_r+0x16d>
 804b967:	89 bd 48 ff ff ff    	mov    %edi,-0xb8(%ebp)
 804b96d:	8d 50 d0             	lea    -0x30(%eax),%edx
 804b970:	31 ff                	xor    %edi,%edi
 804b972:	c7 85 40 ff ff ff 00 	movl   $0x0,-0xc0(%ebp)
 804b979:	00 00 00 
 804b97c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 804b980:	8d 04 bf             	lea    (%edi,%edi,4),%eax
 804b983:	83 c1 01             	add    $0x1,%ecx
 804b986:	8d 3c 42             	lea    (%edx,%eax,2),%edi
 804b989:	0f be 41 ff          	movsbl -0x1(%ecx),%eax
 804b98d:	8d 50 d0             	lea    -0x30(%eax),%edx
 804b990:	83 fa 09             	cmp    $0x9,%edx
 804b993:	76 eb                	jbe    804b980 <_vfprintf_r+0x560>
 804b995:	89 bd 40 ff ff ff    	mov    %edi,-0xc0(%ebp)
 804b99b:	8b bd 48 ff ff ff    	mov    -0xb8(%ebp),%edi
 804b9a1:	e9 ed fb ff ff       	jmp    804b593 <_vfprintf_r+0x173>
 804b9a6:	8d 41 01             	lea    0x1(%ecx),%eax
 804b9a9:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
 804b9af:	0f be 01             	movsbl (%ecx),%eax
 804b9b2:	83 f8 2a             	cmp    $0x2a,%eax
 804b9b5:	0f 84 1e 19 00 00    	je     804d2d9 <_vfprintf_r+0x1eb9>
 804b9bb:	8d 50 d0             	lea    -0x30(%eax),%edx
 804b9be:	31 c9                	xor    %ecx,%ecx
 804b9c0:	83 fa 09             	cmp    $0x9,%edx
 804b9c3:	0f 87 8d 17 00 00    	ja     804d156 <_vfprintf_r+0x1d36>
 804b9c9:	89 bd 44 ff ff ff    	mov    %edi,-0xbc(%ebp)
 804b9cf:	8b bd 48 ff ff ff    	mov    -0xb8(%ebp),%edi
 804b9d5:	8d 76 00             	lea    0x0(%esi),%esi
 804b9d8:	8d 04 89             	lea    (%ecx,%ecx,4),%eax
 804b9db:	83 c7 01             	add    $0x1,%edi
 804b9de:	8d 0c 42             	lea    (%edx,%eax,2),%ecx
 804b9e1:	0f be 47 ff          	movsbl -0x1(%edi),%eax
 804b9e5:	8d 50 d0             	lea    -0x30(%eax),%edx
 804b9e8:	83 fa 09             	cmp    $0x9,%edx
 804b9eb:	76 eb                	jbe    804b9d8 <_vfprintf_r+0x5b8>
 804b9ed:	85 c9                	test   %ecx,%ecx
 804b9ef:	89 ca                	mov    %ecx,%edx
 804b9f1:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
 804b9f6:	0f 48 d1             	cmovs  %ecx,%edx
 804b9f9:	89 bd 48 ff ff ff    	mov    %edi,-0xb8(%ebp)
 804b9ff:	8b bd 44 ff ff ff    	mov    -0xbc(%ebp),%edi
 804ba05:	8b 8d 48 ff ff ff    	mov    -0xb8(%ebp),%ecx
 804ba0b:	89 95 44 ff ff ff    	mov    %edx,-0xbc(%ebp)
 804ba11:	e9 7d fb ff ff       	jmp    804b593 <_vfprintf_r+0x173>
 804ba16:	8b 45 14             	mov    0x14(%ebp),%eax
 804ba19:	89 4d 10             	mov    %ecx,0x10(%ebp)
 804ba1c:	83 8d 4c ff ff ff 02 	orl    $0x2,-0xb4(%ebp)
 804ba23:	8b 08                	mov    (%eax),%ecx
 804ba25:	83 c0 04             	add    $0x4,%eax
 804ba28:	89 45 14             	mov    %eax,0x14(%ebp)
 804ba2b:	b8 02 00 00 00       	mov    $0x2,%eax
 804ba30:	c6 85 5a ff ff ff 30 	movb   $0x30,-0xa6(%ebp)
 804ba37:	c6 85 5b ff ff ff 78 	movb   $0x78,-0xa5(%ebp)
 804ba3e:	c7 85 08 ff ff ff 2d 	movl   $0x805492d,-0xf8(%ebp)
 804ba45:	49 05 08 
 804ba48:	c7 85 24 ff ff ff 78 	movl   $0x78,-0xdc(%ebp)
 804ba4f:	00 00 00 
 804ba52:	e9 61 fe ff ff       	jmp    804b8b8 <_vfprintf_r+0x498>
 804ba57:	83 8d 4c ff ff ff 10 	orl    $0x10,-0xb4(%ebp)
 804ba5e:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
 804ba65:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
 804ba6b:	8b 45 14             	mov    0x14(%ebp),%eax
 804ba6e:	89 4d 10             	mov    %ecx,0x10(%ebp)
 804ba71:	75 60                	jne    804bad3 <_vfprintf_r+0x6b3>
 804ba73:	f6 85 4c ff ff ff 40 	testb  $0x40,-0xb4(%ebp)
 804ba7a:	74 57                	je     804bad3 <_vfprintf_r+0x6b3>
 804ba7c:	0f b7 08             	movzwl (%eax),%ecx
 804ba7f:	83 c0 04             	add    $0x4,%eax
 804ba82:	89 45 14             	mov    %eax,0x14(%ebp)
 804ba85:	31 c0                	xor    %eax,%eax
 804ba87:	e9 2c fe ff ff       	jmp    804b8b8 <_vfprintf_r+0x498>
 804ba8c:	83 8d 4c ff ff ff 10 	orl    $0x10,-0xb4(%ebp)
 804ba93:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
 804ba9a:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
 804baa0:	8b 45 14             	mov    0x14(%ebp),%eax
 804baa3:	89 4d 10             	mov    %ecx,0x10(%ebp)
 804baa6:	0f 84 eb fd ff ff    	je     804b897 <_vfprintf_r+0x477>
 804baac:	8b 08                	mov    (%eax),%ecx
 804baae:	83 c0 04             	add    $0x4,%eax
 804bab1:	89 45 14             	mov    %eax,0x14(%ebp)
 804bab4:	b8 01 00 00 00       	mov    $0x1,%eax
 804bab9:	e9 fa fd ff ff       	jmp    804b8b8 <_vfprintf_r+0x498>
 804babe:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
 804bac5:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
 804bacb:	8b 45 14             	mov    0x14(%ebp),%eax
 804bace:	89 4d 10             	mov    %ecx,0x10(%ebp)
 804bad1:	74 a0                	je     804ba73 <_vfprintf_r+0x653>
 804bad3:	8b 08                	mov    (%eax),%ecx
 804bad5:	83 c0 04             	add    $0x4,%eax
 804bad8:	89 45 14             	mov    %eax,0x14(%ebp)
 804badb:	31 c0                	xor    %eax,%eax
 804badd:	e9 d6 fd ff ff       	jmp    804b8b8 <_vfprintf_r+0x498>
 804bae2:	83 8d 4c ff ff ff 10 	orl    $0x10,-0xb4(%ebp)
 804bae9:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
 804baf0:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
 804baf6:	8b 45 14             	mov    0x14(%ebp),%eax
 804baf9:	89 4d 10             	mov    %ecx,0x10(%ebp)
 804bafc:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
 804bb02:	0f 85 d3 01 00 00    	jne    804bcdb <_vfprintf_r+0x8bb>
 804bb08:	f6 85 4c ff ff ff 40 	testb  $0x40,-0xb4(%ebp)
 804bb0f:	0f 84 c6 01 00 00    	je     804bcdb <_vfprintf_r+0x8bb>
 804bb15:	0f bf 08             	movswl (%eax),%ecx
 804bb18:	83 c0 04             	add    $0x4,%eax
 804bb1b:	89 45 14             	mov    %eax,0x14(%ebp)
 804bb1e:	85 c9                	test   %ecx,%ecx
 804bb20:	0f 88 9b 0e 00 00    	js     804c9c1 <_vfprintf_r+0x15a1>
 804bb26:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
 804bb2d:	b8 01 00 00 00       	mov    $0x1,%eax
 804bb32:	e9 8a fd ff ff       	jmp    804b8c1 <_vfprintf_r+0x4a1>
 804bb37:	f6 85 4c ff ff ff 08 	testb  $0x8,-0xb4(%ebp)
 804bb3e:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
 804bb44:	8b 45 14             	mov    0x14(%ebp),%eax
 804bb47:	89 4d 10             	mov    %ecx,0x10(%ebp)
 804bb4a:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
 804bb50:	0f 84 2a 10 00 00    	je     804cb80 <_vfprintf_r+0x1760>
 804bb56:	db 28                	fldt   (%eax)
 804bb58:	83 c0 0c             	add    $0xc,%eax
 804bb5b:	89 45 14             	mov    %eax,0x14(%ebp)
 804bb5e:	dd 9d 10 ff ff ff    	fstpl  -0xf0(%ebp)
 804bb64:	dd 85 10 ff ff ff    	fldl   -0xf0(%ebp)
 804bb6a:	dd 1c 24             	fstpl  (%esp)
 804bb6d:	e8 fe 51 00 00       	call   8050d70 <__fpclassifyd>
 804bb72:	83 f8 01             	cmp    $0x1,%eax
 804bb75:	0f 85 5e 0e 00 00    	jne    804c9d9 <_vfprintf_r+0x15b9>
 804bb7b:	d9 ee                	fldz   
 804bb7d:	dd 85 10 ff ff ff    	fldl   -0xf0(%ebp)
 804bb83:	d9 c9                	fxch   %st(1)
 804bb85:	df e9                	fucomip %st(1),%st
 804bb87:	dd d8                	fstp   %st(0)
 804bb89:	0f 87 4d 14 00 00    	ja     804cfdc <_vfprintf_r+0x1bbc>
 804bb8f:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
 804bb96:	83 bd 24 ff ff ff 47 	cmpl   $0x47,-0xdc(%ebp)
 804bb9d:	ba 0c 49 05 08       	mov    $0x805490c,%edx
 804bba2:	b8 10 49 05 08       	mov    $0x8054910,%eax
 804bba7:	c7 85 48 ff ff ff 03 	movl   $0x3,-0xb8(%ebp)
 804bbae:	00 00 00 
 804bbb1:	0f 4e c2             	cmovle %edx,%eax
 804bbb4:	89 85 2c ff ff ff    	mov    %eax,-0xd4(%ebp)
 804bbba:	81 a5 4c ff ff ff 7f 	andl   $0xffffff7f,-0xb4(%ebp)
 804bbc1:	ff ff ff 
 804bbc4:	c7 85 38 ff ff ff 03 	movl   $0x3,-0xc8(%ebp)
 804bbcb:	00 00 00 
 804bbce:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
 804bbd5:	00 00 00 
 804bbd8:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
 804bbdf:	00 00 00 
 804bbe2:	e9 89 fb ff ff       	jmp    804b770 <_vfprintf_r+0x350>
 804bbe7:	83 8d 4c ff ff ff 08 	orl    $0x8,-0xb4(%ebp)
 804bbee:	89 c8                	mov    %ecx,%eax
 804bbf0:	e9 98 f9 ff ff       	jmp    804b58d <_vfprintf_r+0x16d>
 804bbf5:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
 804bbfc:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
 804bc02:	8b 45 14             	mov    0x14(%ebp),%eax
 804bc05:	89 4d 10             	mov    %ecx,0x10(%ebp)
 804bc08:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
 804bc0e:	c7 85 08 ff ff ff 2d 	movl   $0x805492d,-0xf8(%ebp)
 804bc15:	49 05 08 
 804bc18:	0f 85 0d 01 00 00    	jne    804bd2b <_vfprintf_r+0x90b>
 804bc1e:	f6 85 4c ff ff ff 40 	testb  $0x40,-0xb4(%ebp)
 804bc25:	0f 84 00 01 00 00    	je     804bd2b <_vfprintf_r+0x90b>
 804bc2b:	0f b7 08             	movzwl (%eax),%ecx
 804bc2e:	83 c0 04             	add    $0x4,%eax
 804bc31:	89 45 14             	mov    %eax,0x14(%ebp)
 804bc34:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
 804bc3b:	b8 02 00 00 00       	mov    $0x2,%eax
 804bc40:	0f 84 72 fc ff ff    	je     804b8b8 <_vfprintf_r+0x498>
 804bc46:	85 c9                	test   %ecx,%ecx
 804bc48:	0f 84 6a fc ff ff    	je     804b8b8 <_vfprintf_r+0x498>
 804bc4e:	0f b6 95 24 ff ff ff 	movzbl -0xdc(%ebp),%edx
 804bc55:	c6 85 5a ff ff ff 30 	movb   $0x30,-0xa6(%ebp)
 804bc5c:	83 8d 4c ff ff ff 02 	orl    $0x2,-0xb4(%ebp)
 804bc63:	88 95 5b ff ff ff    	mov    %dl,-0xa5(%ebp)
 804bc69:	e9 4a fc ff ff       	jmp    804b8b8 <_vfprintf_r+0x498>
 804bc6e:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
 804bc75:	89 4d 10             	mov    %ecx,0x10(%ebp)
 804bc78:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
 804bc7e:	0f 85 30 01 00 00    	jne    804bdb4 <_vfprintf_r+0x994>
 804bc84:	f6 85 4c ff ff ff 40 	testb  $0x40,-0xb4(%ebp)
 804bc8b:	0f 84 23 01 00 00    	je     804bdb4 <_vfprintf_r+0x994>
 804bc91:	8b 45 14             	mov    0x14(%ebp),%eax
 804bc94:	0f b7 95 28 ff ff ff 	movzwl -0xd8(%ebp),%edx
 804bc9b:	8b 00                	mov    (%eax),%eax
 804bc9d:	66 89 10             	mov    %dx,(%eax)
 804bca0:	8b 45 14             	mov    0x14(%ebp),%eax
 804bca3:	83 c0 04             	add    $0x4,%eax
 804bca6:	89 45 14             	mov    %eax,0x14(%ebp)
 804bca9:	e9 4e f8 ff ff       	jmp    804b4fc <_vfprintf_r+0xdc>
 804bcae:	83 8d 4c ff ff ff 40 	orl    $0x40,-0xb4(%ebp)
 804bcb5:	89 c8                	mov    %ecx,%eax
 804bcb7:	e9 d1 f8 ff ff       	jmp    804b58d <_vfprintf_r+0x16d>
 804bcbc:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
 804bcc3:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
 804bcc9:	8b 45 14             	mov    0x14(%ebp),%eax
 804bccc:	89 4d 10             	mov    %ecx,0x10(%ebp)
 804bccf:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
 804bcd5:	0f 84 2d fe ff ff    	je     804bb08 <_vfprintf_r+0x6e8>
 804bcdb:	8b 08                	mov    (%eax),%ecx
 804bcdd:	83 c0 04             	add    $0x4,%eax
 804bce0:	89 45 14             	mov    %eax,0x14(%ebp)
 804bce3:	e9 36 fe ff ff       	jmp    804bb1e <_vfprintf_r+0x6fe>
 804bce8:	84 db                	test   %bl,%bl
 804bcea:	89 c8                	mov    %ecx,%eax
 804bcec:	0f 44 de             	cmove  %esi,%ebx
 804bcef:	e9 99 f8 ff ff       	jmp    804b58d <_vfprintf_r+0x16d>
 804bcf4:	83 8d 4c ff ff ff 01 	orl    $0x1,-0xb4(%ebp)
 804bcfb:	89 c8                	mov    %ecx,%eax
 804bcfd:	e9 8b f8 ff ff       	jmp    804b58d <_vfprintf_r+0x16d>
 804bd02:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
 804bd09:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
 804bd0f:	8b 45 14             	mov    0x14(%ebp),%eax
 804bd12:	89 4d 10             	mov    %ecx,0x10(%ebp)
 804bd15:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
 804bd1b:	c7 85 08 ff ff ff 1c 	movl   $0x805491c,-0xf8(%ebp)
 804bd22:	49 05 08 
 804bd25:	0f 84 f3 fe ff ff    	je     804bc1e <_vfprintf_r+0x7fe>
 804bd2b:	8b 08                	mov    (%eax),%ecx
 804bd2d:	83 c0 04             	add    $0x4,%eax
 804bd30:	89 45 14             	mov    %eax,0x14(%ebp)
 804bd33:	e9 fc fe ff ff       	jmp    804bc34 <_vfprintf_r+0x814>
 804bd38:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
 804bd3e:	8b 45 14             	mov    0x14(%ebp),%eax
 804bd41:	89 4d 10             	mov    %ecx,0x10(%ebp)
 804bd44:	c6 85 59 ff ff ff 00 	movb   $0x0,-0xa7(%ebp)
 804bd4b:	8b 00                	mov    (%eax),%eax
 804bd4d:	88 45 80             	mov    %al,-0x80(%ebp)
 804bd50:	8b 45 14             	mov    0x14(%ebp),%eax
 804bd53:	83 c0 04             	add    $0x4,%eax
 804bd56:	89 45 14             	mov    %eax,0x14(%ebp)
 804bd59:	8d 45 80             	lea    -0x80(%ebp),%eax
 804bd5c:	31 db                	xor    %ebx,%ebx
 804bd5e:	c7 85 48 ff ff ff 01 	movl   $0x1,-0xb8(%ebp)
 804bd65:	00 00 00 
 804bd68:	c7 85 38 ff ff ff 01 	movl   $0x1,-0xc8(%ebp)
 804bd6f:	00 00 00 
 804bd72:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
 804bd79:	00 00 00 
 804bd7c:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
 804bd83:	00 00 00 
 804bd86:	89 85 2c ff ff ff    	mov    %eax,-0xd4(%ebp)
 804bd8c:	e9 ea f9 ff ff       	jmp    804b77b <_vfprintf_r+0x35b>
 804bd91:	85 c0                	test   %eax,%eax
 804bd93:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
 804bd99:	89 4d 10             	mov    %ecx,0x10(%ebp)
 804bd9c:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
 804bda2:	0f 84 c8 f8 ff ff    	je     804b670 <_vfprintf_r+0x250>
 804bda8:	88 45 80             	mov    %al,-0x80(%ebp)
 804bdab:	c6 85 59 ff ff ff 00 	movb   $0x0,-0xa7(%ebp)
 804bdb2:	eb a5                	jmp    804bd59 <_vfprintf_r+0x939>
 804bdb4:	8b 45 14             	mov    0x14(%ebp),%eax
 804bdb7:	8b 95 28 ff ff ff    	mov    -0xd8(%ebp),%edx
 804bdbd:	8b 00                	mov    (%eax),%eax
 804bdbf:	89 10                	mov    %edx,(%eax)
 804bdc1:	8b 45 14             	mov    0x14(%ebp),%eax
 804bdc4:	83 c0 04             	add    $0x4,%eax
 804bdc7:	89 45 14             	mov    %eax,0x14(%ebp)
 804bdca:	e9 2d f7 ff ff       	jmp    804b4fc <_vfprintf_r+0xdc>
 804bdcf:	90                   	nop
 804bdd0:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
 804bdd6:	84 db                	test   %bl,%bl
 804bdd8:	74 33                	je     804be0d <_vfprintf_r+0x9ed>
 804bdda:	8d 85 59 ff ff ff    	lea    -0xa7(%ebp),%eax
 804bde0:	83 c1 01             	add    $0x1,%ecx
 804bde3:	89 07                	mov    %eax,(%edi)
 804bde5:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 804bdeb:	83 c7 08             	add    $0x8,%edi
 804bdee:	c7 47 fc 01 00 00 00 	movl   $0x1,-0x4(%edi)
 804bdf5:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
 804bdfb:	83 c0 01             	add    $0x1,%eax
 804bdfe:	83 f8 07             	cmp    $0x7,%eax
 804be01:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
 804be07:	0f 8f 43 06 00 00    	jg     804c450 <_vfprintf_r+0x1030>
 804be0d:	8b 9d 34 ff ff ff    	mov    -0xcc(%ebp),%ebx
 804be13:	85 db                	test   %ebx,%ebx
 804be15:	74 33                	je     804be4a <_vfprintf_r+0xa2a>
 804be17:	8d 85 5a ff ff ff    	lea    -0xa6(%ebp),%eax
 804be1d:	83 c1 02             	add    $0x2,%ecx
 804be20:	89 07                	mov    %eax,(%edi)
 804be22:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 804be28:	83 c7 08             	add    $0x8,%edi
 804be2b:	c7 47 fc 02 00 00 00 	movl   $0x2,-0x4(%edi)
 804be32:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
 804be38:	83 c0 01             	add    $0x1,%eax
 804be3b:	83 f8 07             	cmp    $0x7,%eax
 804be3e:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
 804be44:	0f 8f 3e 06 00 00    	jg     804c488 <_vfprintf_r+0x1068>
 804be4a:	81 bd 30 ff ff ff 80 	cmpl   $0x80,-0xd0(%ebp)
 804be51:	00 00 00 
 804be54:	0f 84 c6 03 00 00    	je     804c220 <_vfprintf_r+0xe00>
 804be5a:	8b b5 44 ff ff ff    	mov    -0xbc(%ebp),%esi
 804be60:	2b b5 38 ff ff ff    	sub    -0xc8(%ebp),%esi
 804be66:	85 f6                	test   %esi,%esi
 804be68:	0f 8e d2 00 00 00    	jle    804bf40 <_vfprintf_r+0xb20>
 804be6e:	83 fe 10             	cmp    $0x10,%esi
 804be71:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 804be77:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
 804be7d:	7f 11                	jg     804be90 <_vfprintf_r+0xa70>
 804be7f:	eb 6b                	jmp    804beec <_vfprintf_r+0xacc>
 804be81:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 804be88:	83 ee 10             	sub    $0x10,%esi
 804be8b:	83 fe 10             	cmp    $0x10,%esi
 804be8e:	7e 5c                	jle    804beec <_vfprintf_r+0xacc>
 804be90:	83 c0 01             	add    $0x1,%eax
 804be93:	83 c1 10             	add    $0x10,%ecx
 804be96:	c7 07 30 4c 05 08    	movl   $0x8054c30,(%edi)
 804be9c:	83 c7 08             	add    $0x8,%edi
 804be9f:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
 804bea6:	83 f8 07             	cmp    $0x7,%eax
 804bea9:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
 804beaf:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
 804beb5:	7e d1                	jle    804be88 <_vfprintf_r+0xa68>
 804beb7:	8b 45 0c             	mov    0xc(%ebp),%eax
 804beba:	89 5c 24 08          	mov    %ebx,0x8(%esp)
 804bebe:	89 44 24 04          	mov    %eax,0x4(%esp)
 804bec2:	8b 45 08             	mov    0x8(%ebp),%eax
 804bec5:	89 04 24             	mov    %eax,(%esp)
 804bec8:	e8 b3 61 00 00       	call   8052080 <__sprint_r>
 804becd:	85 c0                	test   %eax,%eax
 804becf:	0f 85 c3 f7 ff ff    	jne    804b698 <_vfprintf_r+0x278>
 804bed5:	83 ee 10             	sub    $0x10,%esi
 804bed8:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
 804bede:	83 fe 10             	cmp    $0x10,%esi
 804bee1:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 804bee7:	8d 7d a8             	lea    -0x58(%ebp),%edi
 804beea:	7f a4                	jg     804be90 <_vfprintf_r+0xa70>
 804beec:	83 c0 01             	add    $0x1,%eax
 804beef:	01 f1                	add    %esi,%ecx
 804bef1:	c7 07 30 4c 05 08    	movl   $0x8054c30,(%edi)
 804bef7:	83 c7 08             	add    $0x8,%edi
 804befa:	89 77 fc             	mov    %esi,-0x4(%edi)
 804befd:	83 f8 07             	cmp    $0x7,%eax
 804bf00:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
 804bf06:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
 804bf0c:	7e 32                	jle    804bf40 <_vfprintf_r+0xb20>
 804bf0e:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
 804bf14:	89 44 24 08          	mov    %eax,0x8(%esp)
 804bf18:	8b 45 0c             	mov    0xc(%ebp),%eax
 804bf1b:	89 44 24 04          	mov    %eax,0x4(%esp)
 804bf1f:	8b 45 08             	mov    0x8(%ebp),%eax
 804bf22:	89 04 24             	mov    %eax,(%esp)
 804bf25:	e8 56 61 00 00       	call   8052080 <__sprint_r>
 804bf2a:	85 c0                	test   %eax,%eax
 804bf2c:	0f 85 66 f7 ff ff    	jne    804b698 <_vfprintf_r+0x278>
 804bf32:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
 804bf38:	8d 7d a8             	lea    -0x58(%ebp),%edi
 804bf3b:	90                   	nop
 804bf3c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 804bf40:	f7 85 4c ff ff ff 00 	testl  $0x100,-0xb4(%ebp)
 804bf47:	01 00 00 
 804bf4a:	0f 85 50 01 00 00    	jne    804c0a0 <_vfprintf_r+0xc80>
 804bf50:	8b 85 2c ff ff ff    	mov    -0xd4(%ebp),%eax
 804bf56:	89 07                	mov    %eax,(%edi)
 804bf58:	8b 85 38 ff ff ff    	mov    -0xc8(%ebp),%eax
 804bf5e:	01 c1                	add    %eax,%ecx
 804bf60:	89 47 04             	mov    %eax,0x4(%edi)
 804bf63:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 804bf69:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
 804bf6f:	83 c0 01             	add    $0x1,%eax
 804bf72:	83 f8 07             	cmp    $0x7,%eax
 804bf75:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
 804bf7b:	0f 8f 6a 04 00 00    	jg     804c3eb <_vfprintf_r+0xfcb>
 804bf81:	83 c7 08             	add    $0x8,%edi
 804bf84:	f6 85 4c ff ff ff 04 	testb  $0x4,-0xb4(%ebp)
 804bf8b:	0f 84 d7 00 00 00    	je     804c068 <_vfprintf_r+0xc48>
 804bf91:	8b b5 40 ff ff ff    	mov    -0xc0(%ebp),%esi
 804bf97:	2b b5 48 ff ff ff    	sub    -0xb8(%ebp),%esi
 804bf9d:	85 f6                	test   %esi,%esi
 804bf9f:	0f 8e c3 00 00 00    	jle    804c068 <_vfprintf_r+0xc48>
 804bfa5:	83 fe 10             	cmp    $0x10,%esi
 804bfa8:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 804bfae:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
 804bfb4:	7f 0a                	jg     804bfc0 <_vfprintf_r+0xba0>
 804bfb6:	eb 64                	jmp    804c01c <_vfprintf_r+0xbfc>
 804bfb8:	83 ee 10             	sub    $0x10,%esi
 804bfbb:	83 fe 10             	cmp    $0x10,%esi
 804bfbe:	7e 5c                	jle    804c01c <_vfprintf_r+0xbfc>
 804bfc0:	83 c0 01             	add    $0x1,%eax
 804bfc3:	83 c1 10             	add    $0x10,%ecx
 804bfc6:	c7 07 40 4c 05 08    	movl   $0x8054c40,(%edi)
 804bfcc:	83 c7 08             	add    $0x8,%edi
 804bfcf:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
 804bfd6:	83 f8 07             	cmp    $0x7,%eax
 804bfd9:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
 804bfdf:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
 804bfe5:	7e d1                	jle    804bfb8 <_vfprintf_r+0xb98>
 804bfe7:	8b 45 0c             	mov    0xc(%ebp),%eax
 804bfea:	89 5c 24 08          	mov    %ebx,0x8(%esp)
 804bfee:	89 44 24 04          	mov    %eax,0x4(%esp)
 804bff2:	8b 45 08             	mov    0x8(%ebp),%eax
 804bff5:	89 04 24             	mov    %eax,(%esp)
 804bff8:	e8 83 60 00 00       	call   8052080 <__sprint_r>
 804bffd:	85 c0                	test   %eax,%eax
 804bfff:	0f 85 93 f6 ff ff    	jne    804b698 <_vfprintf_r+0x278>
 804c005:	83 ee 10             	sub    $0x10,%esi
 804c008:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
 804c00e:	83 fe 10             	cmp    $0x10,%esi
 804c011:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 804c017:	8d 7d a8             	lea    -0x58(%ebp),%edi
 804c01a:	7f a4                	jg     804bfc0 <_vfprintf_r+0xba0>
 804c01c:	83 c0 01             	add    $0x1,%eax
 804c01f:	01 f1                	add    %esi,%ecx
 804c021:	83 f8 07             	cmp    $0x7,%eax
 804c024:	c7 07 40 4c 05 08    	movl   $0x8054c40,(%edi)
 804c02a:	89 77 04             	mov    %esi,0x4(%edi)
 804c02d:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
 804c033:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
 804c039:	7e 2d                	jle    804c068 <_vfprintf_r+0xc48>
 804c03b:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
 804c041:	89 44 24 08          	mov    %eax,0x8(%esp)
 804c045:	8b 45 0c             	mov    0xc(%ebp),%eax
 804c048:	89 44 24 04          	mov    %eax,0x4(%esp)
 804c04c:	8b 45 08             	mov    0x8(%ebp),%eax
 804c04f:	89 04 24             	mov    %eax,(%esp)
 804c052:	e8 29 60 00 00       	call   8052080 <__sprint_r>
 804c057:	85 c0                	test   %eax,%eax
 804c059:	0f 85 39 f6 ff ff    	jne    804b698 <_vfprintf_r+0x278>
 804c05f:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
 804c065:	8d 76 00             	lea    0x0(%esi),%esi
 804c068:	8b 85 40 ff ff ff    	mov    -0xc0(%ebp),%eax
 804c06e:	8b 95 48 ff ff ff    	mov    -0xb8(%ebp),%edx
 804c074:	39 c2                	cmp    %eax,%edx
 804c076:	0f 4d c2             	cmovge %edx,%eax
 804c079:	01 85 28 ff ff ff    	add    %eax,-0xd8(%ebp)
 804c07f:	85 c9                	test   %ecx,%ecx
 804c081:	0f 85 99 03 00 00    	jne    804c420 <_vfprintf_r+0x1000>
 804c087:	c7 85 78 ff ff ff 00 	movl   $0x0,-0x88(%ebp)
 804c08e:	00 00 00 
 804c091:	8d 7d a8             	lea    -0x58(%ebp),%edi
 804c094:	e9 63 f4 ff ff       	jmp    804b4fc <_vfprintf_r+0xdc>
 804c099:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 804c0a0:	83 bd 24 ff ff ff 65 	cmpl   $0x65,-0xdc(%ebp)
 804c0a7:	0f 8e 5b 02 00 00    	jle    804c308 <_vfprintf_r+0xee8>
 804c0ad:	d9 ee                	fldz   
 804c0af:	dd 85 10 ff ff ff    	fldl   -0xf0(%ebp)
 804c0b5:	df e9                	fucomip %st(1),%st
 804c0b7:	dd d8                	fstp   %st(0)
 804c0b9:	0f 8a 59 04 00 00    	jp     804c518 <_vfprintf_r+0x10f8>
 804c0bf:	0f 85 53 04 00 00    	jne    804c518 <_vfprintf_r+0x10f8>
 804c0c5:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 804c0cb:	83 c1 01             	add    $0x1,%ecx
 804c0ce:	83 c7 08             	add    $0x8,%edi
 804c0d1:	c7 47 f8 7d 46 05 08 	movl   $0x805467d,-0x8(%edi)
 804c0d8:	c7 47 fc 01 00 00 00 	movl   $0x1,-0x4(%edi)
 804c0df:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
 804c0e5:	83 c0 01             	add    $0x1,%eax
 804c0e8:	83 f8 07             	cmp    $0x7,%eax
 804c0eb:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
 804c0f1:	0f 8f 9c 0a 00 00    	jg     804cb93 <_vfprintf_r+0x1773>
 804c0f7:	8b 85 1c ff ff ff    	mov    -0xe4(%ebp),%eax
 804c0fd:	39 85 5c ff ff ff    	cmp    %eax,-0xa4(%ebp)
 804c103:	7c 0d                	jl     804c112 <_vfprintf_r+0xcf2>
 804c105:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
 804c10c:	0f 84 72 fe ff ff    	je     804bf84 <_vfprintf_r+0xb64>
 804c112:	8b 85 18 ff ff ff    	mov    -0xe8(%ebp),%eax
 804c118:	83 c7 08             	add    $0x8,%edi
 804c11b:	89 47 f8             	mov    %eax,-0x8(%edi)
 804c11e:	8b 85 0c ff ff ff    	mov    -0xf4(%ebp),%eax
 804c124:	89 47 fc             	mov    %eax,-0x4(%edi)
 804c127:	01 c1                	add    %eax,%ecx
 804c129:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 804c12f:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
 804c135:	83 c0 01             	add    $0x1,%eax
 804c138:	83 f8 07             	cmp    $0x7,%eax
 804c13b:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
 804c141:	0f 8f 43 0c 00 00    	jg     804cd8a <_vfprintf_r+0x196a>
 804c147:	8b 85 1c ff ff ff    	mov    -0xe4(%ebp),%eax
 804c14d:	8d 70 ff             	lea    -0x1(%eax),%esi
 804c150:	85 f6                	test   %esi,%esi
 804c152:	0f 8e 2c fe ff ff    	jle    804bf84 <_vfprintf_r+0xb64>
 804c158:	83 fe 10             	cmp    $0x10,%esi
 804c15b:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 804c161:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
 804c167:	7f 13                	jg     804c17c <_vfprintf_r+0xd5c>
 804c169:	e9 d4 05 00 00       	jmp    804c742 <_vfprintf_r+0x1322>
 804c16e:	66 90                	xchg   %ax,%ax
 804c170:	83 ee 10             	sub    $0x10,%esi
 804c173:	83 fe 10             	cmp    $0x10,%esi
 804c176:	0f 8e c6 05 00 00    	jle    804c742 <_vfprintf_r+0x1322>
 804c17c:	83 c0 01             	add    $0x1,%eax
 804c17f:	83 c1 10             	add    $0x10,%ecx
 804c182:	c7 07 30 4c 05 08    	movl   $0x8054c30,(%edi)
 804c188:	83 c7 08             	add    $0x8,%edi
 804c18b:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
 804c192:	83 f8 07             	cmp    $0x7,%eax
 804c195:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
 804c19b:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
 804c1a1:	7e cd                	jle    804c170 <_vfprintf_r+0xd50>
 804c1a3:	8b 45 0c             	mov    0xc(%ebp),%eax
 804c1a6:	89 5c 24 08          	mov    %ebx,0x8(%esp)
 804c1aa:	89 44 24 04          	mov    %eax,0x4(%esp)
 804c1ae:	8b 45 08             	mov    0x8(%ebp),%eax
 804c1b1:	89 04 24             	mov    %eax,(%esp)
 804c1b4:	e8 c7 5e 00 00       	call   8052080 <__sprint_r>
 804c1b9:	85 c0                	test   %eax,%eax
 804c1bb:	0f 85 d7 f4 ff ff    	jne    804b698 <_vfprintf_r+0x278>
 804c1c1:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
 804c1c7:	8d 7d a8             	lea    -0x58(%ebp),%edi
 804c1ca:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 804c1d0:	eb 9e                	jmp    804c170 <_vfprintf_r+0xd50>
 804c1d2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 804c1d8:	84 c0                	test   %al,%al
 804c1da:	75 2c                	jne    804c208 <_vfprintf_r+0xde8>
 804c1dc:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
 804c1e3:	74 23                	je     804c208 <_vfprintf_r+0xde8>
 804c1e5:	8b 85 00 ff ff ff    	mov    -0x100(%ebp),%eax
 804c1eb:	c6 45 a7 30          	movb   $0x30,-0x59(%ebp)
 804c1ef:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
 804c1f5:	8d 45 a7             	lea    -0x59(%ebp),%eax
 804c1f8:	89 85 2c ff ff ff    	mov    %eax,-0xd4(%ebp)
 804c1fe:	e9 2d f7 ff ff       	jmp    804b930 <_vfprintf_r+0x510>
 804c203:	90                   	nop
 804c204:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 804c208:	8d 45 a8             	lea    -0x58(%ebp),%eax
 804c20b:	c7 85 38 ff ff ff 00 	movl   $0x0,-0xc8(%ebp)
 804c212:	00 00 00 
 804c215:	89 85 2c ff ff ff    	mov    %eax,-0xd4(%ebp)
 804c21b:	e9 10 f7 ff ff       	jmp    804b930 <_vfprintf_r+0x510>
 804c220:	8b b5 40 ff ff ff    	mov    -0xc0(%ebp),%esi
 804c226:	2b b5 48 ff ff ff    	sub    -0xb8(%ebp),%esi
 804c22c:	85 f6                	test   %esi,%esi
 804c22e:	0f 8e 26 fc ff ff    	jle    804be5a <_vfprintf_r+0xa3a>
 804c234:	83 fe 10             	cmp    $0x10,%esi
 804c237:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 804c23d:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
 804c243:	7f 0b                	jg     804c250 <_vfprintf_r+0xe30>
 804c245:	eb 65                	jmp    804c2ac <_vfprintf_r+0xe8c>
 804c247:	90                   	nop
 804c248:	83 ee 10             	sub    $0x10,%esi
 804c24b:	83 fe 10             	cmp    $0x10,%esi
 804c24e:	7e 5c                	jle    804c2ac <_vfprintf_r+0xe8c>
 804c250:	83 c0 01             	add    $0x1,%eax
 804c253:	83 c1 10             	add    $0x10,%ecx
 804c256:	c7 07 30 4c 05 08    	movl   $0x8054c30,(%edi)
 804c25c:	83 c7 08             	add    $0x8,%edi
 804c25f:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
 804c266:	83 f8 07             	cmp    $0x7,%eax
 804c269:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
 804c26f:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
 804c275:	7e d1                	jle    804c248 <_vfprintf_r+0xe28>
 804c277:	8b 45 0c             	mov    0xc(%ebp),%eax
 804c27a:	89 5c 24 08          	mov    %ebx,0x8(%esp)
 804c27e:	89 44 24 04          	mov    %eax,0x4(%esp)
 804c282:	8b 45 08             	mov    0x8(%ebp),%eax
 804c285:	89 04 24             	mov    %eax,(%esp)
 804c288:	e8 f3 5d 00 00       	call   8052080 <__sprint_r>
 804c28d:	85 c0                	test   %eax,%eax
 804c28f:	0f 85 03 f4 ff ff    	jne    804b698 <_vfprintf_r+0x278>
 804c295:	83 ee 10             	sub    $0x10,%esi
 804c298:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
 804c29e:	83 fe 10             	cmp    $0x10,%esi
 804c2a1:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 804c2a7:	8d 7d a8             	lea    -0x58(%ebp),%edi
 804c2aa:	7f a4                	jg     804c250 <_vfprintf_r+0xe30>
 804c2ac:	83 c0 01             	add    $0x1,%eax
 804c2af:	01 f1                	add    %esi,%ecx
 804c2b1:	c7 07 30 4c 05 08    	movl   $0x8054c30,(%edi)
 804c2b7:	83 c7 08             	add    $0x8,%edi
 804c2ba:	89 77 fc             	mov    %esi,-0x4(%edi)
 804c2bd:	83 f8 07             	cmp    $0x7,%eax
 804c2c0:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
 804c2c6:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
 804c2cc:	0f 8e 88 fb ff ff    	jle    804be5a <_vfprintf_r+0xa3a>
 804c2d2:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
 804c2d8:	89 44 24 08          	mov    %eax,0x8(%esp)
 804c2dc:	8b 45 0c             	mov    0xc(%ebp),%eax
 804c2df:	89 44 24 04          	mov    %eax,0x4(%esp)
 804c2e3:	8b 45 08             	mov    0x8(%ebp),%eax
 804c2e6:	89 04 24             	mov    %eax,(%esp)
 804c2e9:	e8 92 5d 00 00       	call   8052080 <__sprint_r>
 804c2ee:	85 c0                	test   %eax,%eax
 804c2f0:	0f 85 a2 f3 ff ff    	jne    804b698 <_vfprintf_r+0x278>
 804c2f6:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
 804c2fc:	8d 7d a8             	lea    -0x58(%ebp),%edi
 804c2ff:	e9 56 fb ff ff       	jmp    804be5a <_vfprintf_r+0xa3a>
 804c304:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 804c308:	83 bd 1c ff ff ff 01 	cmpl   $0x1,-0xe4(%ebp)
 804c30f:	8b 85 2c ff ff ff    	mov    -0xd4(%ebp),%eax
 804c315:	0f 8e b7 05 00 00    	jle    804c8d2 <_vfprintf_r+0x14b2>
 804c31b:	89 07                	mov    %eax,(%edi)
 804c31d:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 804c323:	8d 51 01             	lea    0x1(%ecx),%edx
 804c326:	c7 47 04 01 00 00 00 	movl   $0x1,0x4(%edi)
 804c32d:	83 c7 08             	add    $0x8,%edi
 804c330:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
 804c336:	83 c0 01             	add    $0x1,%eax
 804c339:	83 f8 07             	cmp    $0x7,%eax
 804c33c:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
 804c342:	0f 8f f9 05 00 00    	jg     804c941 <_vfprintf_r+0x1521>
 804c348:	8b 9d 18 ff ff ff    	mov    -0xe8(%ebp),%ebx
 804c34e:	83 c0 01             	add    $0x1,%eax
 804c351:	83 c7 08             	add    $0x8,%edi
 804c354:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
 804c35a:	89 5f f8             	mov    %ebx,-0x8(%edi)
 804c35d:	8b 9d 0c ff ff ff    	mov    -0xf4(%ebp),%ebx
 804c363:	89 5f fc             	mov    %ebx,-0x4(%edi)
 804c366:	01 da                	add    %ebx,%edx
 804c368:	83 f8 07             	cmp    $0x7,%eax
 804c36b:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
 804c371:	0f 8f 12 06 00 00    	jg     804c989 <_vfprintf_r+0x1569>
 804c377:	d9 ee                	fldz   
 804c379:	dd 85 10 ff ff ff    	fldl   -0xf0(%ebp)
 804c37f:	df e9                	fucomip %st(1),%st
 804c381:	dd d8                	fstp   %st(0)
 804c383:	7a 06                	jp     804c38b <_vfprintf_r+0xf6b>
 804c385:	0f 84 33 03 00 00    	je     804c6be <_vfprintf_r+0x129e>
 804c38b:	8b 8d 2c ff ff ff    	mov    -0xd4(%ebp),%ecx
 804c391:	8b 9d 1c ff ff ff    	mov    -0xe4(%ebp),%ebx
 804c397:	83 c1 01             	add    $0x1,%ecx
 804c39a:	89 0f                	mov    %ecx,(%edi)
 804c39c:	8d 4b ff             	lea    -0x1(%ebx),%ecx
 804c39f:	89 4f 04             	mov    %ecx,0x4(%edi)
 804c3a2:	01 ca                	add    %ecx,%edx
 804c3a4:	83 c0 01             	add    $0x1,%eax
 804c3a7:	83 f8 07             	cmp    $0x7,%eax
 804c3aa:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
 804c3b0:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
 804c3b6:	0f 8f 4d 05 00 00    	jg     804c909 <_vfprintf_r+0x14e9>
 804c3bc:	83 c7 08             	add    $0x8,%edi
 804c3bf:	8b 9d 04 ff ff ff    	mov    -0xfc(%ebp),%ebx
 804c3c5:	8d 8d 65 ff ff ff    	lea    -0x9b(%ebp),%ecx
 804c3cb:	89 0f                	mov    %ecx,(%edi)
 804c3cd:	89 5f 04             	mov    %ebx,0x4(%edi)
 804c3d0:	8d 0c 1a             	lea    (%edx,%ebx,1),%ecx
 804c3d3:	83 c0 01             	add    $0x1,%eax
 804c3d6:	83 f8 07             	cmp    $0x7,%eax
 804c3d9:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
 804c3df:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
 804c3e5:	0f 8e 96 fb ff ff    	jle    804bf81 <_vfprintf_r+0xb61>
 804c3eb:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
 804c3f1:	89 44 24 08          	mov    %eax,0x8(%esp)
 804c3f5:	8b 45 0c             	mov    0xc(%ebp),%eax
 804c3f8:	89 44 24 04          	mov    %eax,0x4(%esp)
 804c3fc:	8b 45 08             	mov    0x8(%ebp),%eax
 804c3ff:	89 04 24             	mov    %eax,(%esp)
 804c402:	e8 79 5c 00 00       	call   8052080 <__sprint_r>
 804c407:	85 c0                	test   %eax,%eax
 804c409:	0f 85 89 f2 ff ff    	jne    804b698 <_vfprintf_r+0x278>
 804c40f:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
 804c415:	8d 7d a8             	lea    -0x58(%ebp),%edi
 804c418:	e9 67 fb ff ff       	jmp    804bf84 <_vfprintf_r+0xb64>
 804c41d:	8d 76 00             	lea    0x0(%esi),%esi
 804c420:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
 804c426:	89 44 24 08          	mov    %eax,0x8(%esp)
 804c42a:	8b 45 0c             	mov    0xc(%ebp),%eax
 804c42d:	89 44 24 04          	mov    %eax,0x4(%esp)
 804c431:	8b 45 08             	mov    0x8(%ebp),%eax
 804c434:	89 04 24             	mov    %eax,(%esp)
 804c437:	e8 44 5c 00 00       	call   8052080 <__sprint_r>
 804c43c:	85 c0                	test   %eax,%eax
 804c43e:	0f 84 43 fc ff ff    	je     804c087 <_vfprintf_r+0xc67>
 804c444:	e9 4f f2 ff ff       	jmp    804b698 <_vfprintf_r+0x278>
 804c449:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 804c450:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
 804c456:	89 44 24 08          	mov    %eax,0x8(%esp)
 804c45a:	8b 45 0c             	mov    0xc(%ebp),%eax
 804c45d:	89 44 24 04          	mov    %eax,0x4(%esp)
 804c461:	8b 45 08             	mov    0x8(%ebp),%eax
 804c464:	89 04 24             	mov    %eax,(%esp)
 804c467:	e8 14 5c 00 00       	call   8052080 <__sprint_r>
 804c46c:	85 c0                	test   %eax,%eax
 804c46e:	0f 85 24 f2 ff ff    	jne    804b698 <_vfprintf_r+0x278>
 804c474:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
 804c47a:	8d 7d a8             	lea    -0x58(%ebp),%edi
 804c47d:	e9 8b f9 ff ff       	jmp    804be0d <_vfprintf_r+0x9ed>
 804c482:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 804c488:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
 804c48e:	89 44 24 08          	mov    %eax,0x8(%esp)
 804c492:	8b 45 0c             	mov    0xc(%ebp),%eax
 804c495:	89 44 24 04          	mov    %eax,0x4(%esp)
 804c499:	8b 45 08             	mov    0x8(%ebp),%eax
 804c49c:	89 04 24             	mov    %eax,(%esp)
 804c49f:	e8 dc 5b 00 00       	call   8052080 <__sprint_r>
 804c4a4:	85 c0                	test   %eax,%eax
 804c4a6:	0f 85 ec f1 ff ff    	jne    804b698 <_vfprintf_r+0x278>
 804c4ac:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
 804c4b2:	8d 7d a8             	lea    -0x58(%ebp),%edi
 804c4b5:	e9 90 f9 ff ff       	jmp    804be4a <_vfprintf_r+0xa2a>
 804c4ba:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 804c4c0:	89 c2                	mov    %eax,%edx
 804c4c2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 804c4c8:	89 c8                	mov    %ecx,%eax
 804c4ca:	83 ea 01             	sub    $0x1,%edx
 804c4cd:	83 e0 07             	and    $0x7,%eax
 804c4d0:	c1 e9 03             	shr    $0x3,%ecx
 804c4d3:	83 c0 30             	add    $0x30,%eax
 804c4d6:	85 c9                	test   %ecx,%ecx
 804c4d8:	88 02                	mov    %al,(%edx)
 804c4da:	75 ec                	jne    804c4c8 <_vfprintf_r+0x10a8>
 804c4dc:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
 804c4e3:	89 95 2c ff ff ff    	mov    %edx,-0xd4(%ebp)
 804c4e9:	0f 84 5b 01 00 00    	je     804c64a <_vfprintf_r+0x122a>
 804c4ef:	3c 30                	cmp    $0x30,%al
 804c4f1:	74 0b                	je     804c4fe <_vfprintf_r+0x10de>
 804c4f3:	83 ad 2c ff ff ff 01 	subl   $0x1,-0xd4(%ebp)
 804c4fa:	c6 42 ff 30          	movb   $0x30,-0x1(%edx)
 804c4fe:	8d 45 a8             	lea    -0x58(%ebp),%eax
 804c501:	2b 85 2c ff ff ff    	sub    -0xd4(%ebp),%eax
 804c507:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
 804c50d:	e9 1e f4 ff ff       	jmp    804b930 <_vfprintf_r+0x510>
 804c512:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 804c518:	8b 9d 5c ff ff ff    	mov    -0xa4(%ebp),%ebx
 804c51e:	85 db                	test   %ebx,%ebx
 804c520:	0f 8e 9f 06 00 00    	jle    804cbc5 <_vfprintf_r+0x17a5>
 804c526:	8b 95 2c ff ff ff    	mov    -0xd4(%ebp),%edx
 804c52c:	8b 85 1c ff ff ff    	mov    -0xe4(%ebp),%eax
 804c532:	01 d0                	add    %edx,%eax
 804c534:	89 c3                	mov    %eax,%ebx
 804c536:	29 d3                	sub    %edx,%ebx
 804c538:	89 85 44 ff ff ff    	mov    %eax,-0xbc(%ebp)
 804c53e:	89 d0                	mov    %edx,%eax
 804c540:	8b 95 20 ff ff ff    	mov    -0xe0(%ebp),%edx
 804c546:	39 d3                	cmp    %edx,%ebx
 804c548:	0f 4f da             	cmovg  %edx,%ebx
 804c54b:	85 db                	test   %ebx,%ebx
 804c54d:	7e 28                	jle    804c577 <_vfprintf_r+0x1157>
 804c54f:	89 07                	mov    %eax,(%edi)
 804c551:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 804c557:	01 d9                	add    %ebx,%ecx
 804c559:	89 5f 04             	mov    %ebx,0x4(%edi)
 804c55c:	83 c7 08             	add    $0x8,%edi
 804c55f:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
 804c565:	83 c0 01             	add    $0x1,%eax
 804c568:	83 f8 07             	cmp    $0x7,%eax
 804c56b:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
 804c571:	0f 8f e2 08 00 00    	jg     804ce59 <_vfprintf_r+0x1a39>
 804c577:	8b b5 20 ff ff ff    	mov    -0xe0(%ebp),%esi
 804c57d:	31 c0                	xor    %eax,%eax
 804c57f:	85 db                	test   %ebx,%ebx
 804c581:	0f 49 c3             	cmovns %ebx,%eax
 804c584:	29 c6                	sub    %eax,%esi
 804c586:	85 f6                	test   %esi,%esi
 804c588:	0f 8e 13 02 00 00    	jle    804c7a1 <_vfprintf_r+0x1381>
 804c58e:	83 fe 10             	cmp    $0x10,%esi
 804c591:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 804c597:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
 804c59d:	7f 15                	jg     804c5b4 <_vfprintf_r+0x1194>
 804c59f:	e9 ae 01 00 00       	jmp    804c752 <_vfprintf_r+0x1332>
 804c5a4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 804c5a8:	83 ee 10             	sub    $0x10,%esi
 804c5ab:	83 fe 10             	cmp    $0x10,%esi
 804c5ae:	0f 8e 9e 01 00 00    	jle    804c752 <_vfprintf_r+0x1332>
 804c5b4:	83 c0 01             	add    $0x1,%eax
 804c5b7:	83 c1 10             	add    $0x10,%ecx
 804c5ba:	c7 07 30 4c 05 08    	movl   $0x8054c30,(%edi)
 804c5c0:	83 c7 08             	add    $0x8,%edi
 804c5c3:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
 804c5ca:	83 f8 07             	cmp    $0x7,%eax
 804c5cd:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
 804c5d3:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
 804c5d9:	7e cd                	jle    804c5a8 <_vfprintf_r+0x1188>
 804c5db:	8b 45 0c             	mov    0xc(%ebp),%eax
 804c5de:	89 5c 24 08          	mov    %ebx,0x8(%esp)
 804c5e2:	89 44 24 04          	mov    %eax,0x4(%esp)
 804c5e6:	8b 45 08             	mov    0x8(%ebp),%eax
 804c5e9:	89 04 24             	mov    %eax,(%esp)
 804c5ec:	e8 8f 5a 00 00       	call   8052080 <__sprint_r>
 804c5f1:	85 c0                	test   %eax,%eax
 804c5f3:	0f 85 9f f0 ff ff    	jne    804b698 <_vfprintf_r+0x278>
 804c5f9:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
 804c5ff:	8d 7d a8             	lea    -0x58(%ebp),%edi
 804c602:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 804c608:	eb 9e                	jmp    804c5a8 <_vfprintf_r+0x1188>
 804c60a:	8d 45 a8             	lea    -0x58(%ebp),%eax
 804c60d:	be cd cc cc cc       	mov    $0xcccccccd,%esi
 804c612:	89 bd 48 ff ff ff    	mov    %edi,-0xb8(%ebp)
 804c618:	89 c7                	mov    %eax,%edi
 804c61a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 804c620:	89 c8                	mov    %ecx,%eax
 804c622:	83 ef 01             	sub    $0x1,%edi
 804c625:	f7 e6                	mul    %esi
 804c627:	c1 ea 03             	shr    $0x3,%edx
 804c62a:	8d 04 92             	lea    (%edx,%edx,4),%eax
 804c62d:	01 c0                	add    %eax,%eax
 804c62f:	29 c1                	sub    %eax,%ecx
 804c631:	83 c1 30             	add    $0x30,%ecx
 804c634:	85 d2                	test   %edx,%edx
 804c636:	88 0f                	mov    %cl,(%edi)
 804c638:	89 d1                	mov    %edx,%ecx
 804c63a:	75 e4                	jne    804c620 <_vfprintf_r+0x1200>
 804c63c:	89 fa                	mov    %edi,%edx
 804c63e:	89 bd 2c ff ff ff    	mov    %edi,-0xd4(%ebp)
 804c644:	8b bd 48 ff ff ff    	mov    -0xb8(%ebp),%edi
 804c64a:	8d 45 a8             	lea    -0x58(%ebp),%eax
 804c64d:	29 d0                	sub    %edx,%eax
 804c64f:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
 804c655:	e9 d6 f2 ff ff       	jmp    804b930 <_vfprintf_r+0x510>
 804c65a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 804c660:	83 f9 09             	cmp    $0x9,%ecx
 804c663:	77 a5                	ja     804c60a <_vfprintf_r+0x11ea>
 804c665:	8b 85 00 ff ff ff    	mov    -0x100(%ebp),%eax
 804c66b:	83 c1 30             	add    $0x30,%ecx
 804c66e:	88 4d a7             	mov    %cl,-0x59(%ebp)
 804c671:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
 804c677:	8d 45 a7             	lea    -0x59(%ebp),%eax
 804c67a:	89 85 2c ff ff ff    	mov    %eax,-0xd4(%ebp)
 804c680:	e9 ab f2 ff ff       	jmp    804b930 <_vfprintf_r+0x510>
 804c685:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
 804c68b:	89 44 24 08          	mov    %eax,0x8(%esp)
 804c68f:	8b 45 0c             	mov    0xc(%ebp),%eax
 804c692:	89 44 24 04          	mov    %eax,0x4(%esp)
 804c696:	8b 45 08             	mov    0x8(%ebp),%eax
 804c699:	89 04 24             	mov    %eax,(%esp)
 804c69c:	e8 df 59 00 00       	call   8052080 <__sprint_r>
 804c6a1:	85 c0                	test   %eax,%eax
 804c6a3:	0f 85 ef ef ff ff    	jne    804b698 <_vfprintf_r+0x278>
 804c6a9:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
 804c6b0:	8d 7d a8             	lea    -0x58(%ebp),%edi
 804c6b3:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
 804c6b9:	e9 18 f7 ff ff       	jmp    804bdd6 <_vfprintf_r+0x9b6>
 804c6be:	8b 9d 1c ff ff ff    	mov    -0xe4(%ebp),%ebx
 804c6c4:	8d 73 ff             	lea    -0x1(%ebx),%esi
 804c6c7:	85 f6                	test   %esi,%esi
 804c6c9:	0f 8e f0 fc ff ff    	jle    804c3bf <_vfprintf_r+0xf9f>
 804c6cf:	83 fe 10             	cmp    $0x10,%esi
 804c6d2:	0f 8e a1 02 00 00    	jle    804c979 <_vfprintf_r+0x1559>
 804c6d8:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
 804c6de:	eb 0c                	jmp    804c6ec <_vfprintf_r+0x12cc>
 804c6e0:	83 ee 10             	sub    $0x10,%esi
 804c6e3:	83 fe 10             	cmp    $0x10,%esi
 804c6e6:	0f 8e 8d 02 00 00    	jle    804c979 <_vfprintf_r+0x1559>
 804c6ec:	83 c0 01             	add    $0x1,%eax
 804c6ef:	83 c2 10             	add    $0x10,%edx
 804c6f2:	c7 07 30 4c 05 08    	movl   $0x8054c30,(%edi)
 804c6f8:	83 c7 08             	add    $0x8,%edi
 804c6fb:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
 804c702:	83 f8 07             	cmp    $0x7,%eax
 804c705:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
 804c70b:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
 804c711:	7e cd                	jle    804c6e0 <_vfprintf_r+0x12c0>
 804c713:	8b 45 0c             	mov    0xc(%ebp),%eax
 804c716:	89 5c 24 08          	mov    %ebx,0x8(%esp)
 804c71a:	89 44 24 04          	mov    %eax,0x4(%esp)
 804c71e:	8b 45 08             	mov    0x8(%ebp),%eax
 804c721:	89 04 24             	mov    %eax,(%esp)
 804c724:	e8 57 59 00 00       	call   8052080 <__sprint_r>
 804c729:	85 c0                	test   %eax,%eax
 804c72b:	0f 85 67 ef ff ff    	jne    804b698 <_vfprintf_r+0x278>
 804c731:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
 804c737:	8d 7d a8             	lea    -0x58(%ebp),%edi
 804c73a:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 804c740:	eb 9e                	jmp    804c6e0 <_vfprintf_r+0x12c0>
 804c742:	c7 07 30 4c 05 08    	movl   $0x8054c30,(%edi)
 804c748:	01 f1                	add    %esi,%ecx
 804c74a:	89 77 04             	mov    %esi,0x4(%edi)
 804c74d:	e9 81 fc ff ff       	jmp    804c3d3 <_vfprintf_r+0xfb3>
 804c752:	83 c0 01             	add    $0x1,%eax
 804c755:	01 f1                	add    %esi,%ecx
 804c757:	c7 07 30 4c 05 08    	movl   $0x8054c30,(%edi)
 804c75d:	83 c7 08             	add    $0x8,%edi
 804c760:	89 77 fc             	mov    %esi,-0x4(%edi)
 804c763:	83 f8 07             	cmp    $0x7,%eax
 804c766:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
 804c76c:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
 804c772:	7e 2d                	jle    804c7a1 <_vfprintf_r+0x1381>
 804c774:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
 804c77a:	89 44 24 08          	mov    %eax,0x8(%esp)
 804c77e:	8b 45 0c             	mov    0xc(%ebp),%eax
 804c781:	89 44 24 04          	mov    %eax,0x4(%esp)
 804c785:	8b 45 08             	mov    0x8(%ebp),%eax
 804c788:	89 04 24             	mov    %eax,(%esp)
 804c78b:	e8 f0 58 00 00       	call   8052080 <__sprint_r>
 804c790:	85 c0                	test   %eax,%eax
 804c792:	0f 85 00 ef ff ff    	jne    804b698 <_vfprintf_r+0x278>
 804c798:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
 804c79e:	8d 7d a8             	lea    -0x58(%ebp),%edi
 804c7a1:	8b 85 2c ff ff ff    	mov    -0xd4(%ebp),%eax
 804c7a7:	8b 95 5c ff ff ff    	mov    -0xa4(%ebp),%edx
 804c7ad:	03 85 20 ff ff ff    	add    -0xe0(%ebp),%eax
 804c7b3:	3b 95 1c ff ff ff    	cmp    -0xe4(%ebp),%edx
 804c7b9:	89 c6                	mov    %eax,%esi
 804c7bb:	7c 0d                	jl     804c7ca <_vfprintf_r+0x13aa>
 804c7bd:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
 804c7c4:	0f 84 61 05 00 00    	je     804cd2b <_vfprintf_r+0x190b>
 804c7ca:	8b 85 18 ff ff ff    	mov    -0xe8(%ebp),%eax
 804c7d0:	89 07                	mov    %eax,(%edi)
 804c7d2:	8b 85 0c ff ff ff    	mov    -0xf4(%ebp),%eax
 804c7d8:	01 c1                	add    %eax,%ecx
 804c7da:	89 47 04             	mov    %eax,0x4(%edi)
 804c7dd:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 804c7e3:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
 804c7e9:	83 c0 01             	add    $0x1,%eax
 804c7ec:	83 f8 07             	cmp    $0x7,%eax
 804c7ef:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
 804c7f5:	0f 8f 90 06 00 00    	jg     804ce8b <_vfprintf_r+0x1a6b>
 804c7fb:	83 c7 08             	add    $0x8,%edi
 804c7fe:	89 d0                	mov    %edx,%eax
 804c800:	8b 9d 44 ff ff ff    	mov    -0xbc(%ebp),%ebx
 804c806:	89 f2                	mov    %esi,%edx
 804c808:	29 f3                	sub    %esi,%ebx
 804c80a:	8b b5 1c ff ff ff    	mov    -0xe4(%ebp),%esi
 804c810:	29 c6                	sub    %eax,%esi
 804c812:	39 de                	cmp    %ebx,%esi
 804c814:	0f 4e de             	cmovle %esi,%ebx
 804c817:	85 db                	test   %ebx,%ebx
 804c819:	7e 29                	jle    804c844 <_vfprintf_r+0x1424>
 804c81b:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 804c821:	01 d9                	add    %ebx,%ecx
 804c823:	83 c7 08             	add    $0x8,%edi
 804c826:	89 57 f8             	mov    %edx,-0x8(%edi)
 804c829:	89 5f fc             	mov    %ebx,-0x4(%edi)
 804c82c:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
 804c832:	83 c0 01             	add    $0x1,%eax
 804c835:	83 f8 07             	cmp    $0x7,%eax
 804c838:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
 804c83e:	0f 8f 7f 06 00 00    	jg     804cec3 <_vfprintf_r+0x1aa3>
 804c844:	31 c0                	xor    %eax,%eax
 804c846:	85 db                	test   %ebx,%ebx
 804c848:	0f 49 c3             	cmovns %ebx,%eax
 804c84b:	29 c6                	sub    %eax,%esi
 804c84d:	85 f6                	test   %esi,%esi
 804c84f:	0f 8e 2f f7 ff ff    	jle    804bf84 <_vfprintf_r+0xb64>
 804c855:	83 fe 10             	cmp    $0x10,%esi
 804c858:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 804c85e:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
 804c864:	7f 16                	jg     804c87c <_vfprintf_r+0x145c>
 804c866:	e9 d7 fe ff ff       	jmp    804c742 <_vfprintf_r+0x1322>
 804c86b:	90                   	nop
 804c86c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 804c870:	83 ee 10             	sub    $0x10,%esi
 804c873:	83 fe 10             	cmp    $0x10,%esi
 804c876:	0f 8e c6 fe ff ff    	jle    804c742 <_vfprintf_r+0x1322>
 804c87c:	83 c0 01             	add    $0x1,%eax
 804c87f:	83 c1 10             	add    $0x10,%ecx
 804c882:	c7 07 30 4c 05 08    	movl   $0x8054c30,(%edi)
 804c888:	83 c7 08             	add    $0x8,%edi
 804c88b:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
 804c892:	83 f8 07             	cmp    $0x7,%eax
 804c895:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
 804c89b:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
 804c8a1:	7e cd                	jle    804c870 <_vfprintf_r+0x1450>
 804c8a3:	8b 45 0c             	mov    0xc(%ebp),%eax
 804c8a6:	89 5c 24 08          	mov    %ebx,0x8(%esp)
 804c8aa:	89 44 24 04          	mov    %eax,0x4(%esp)
 804c8ae:	8b 45 08             	mov    0x8(%ebp),%eax
 804c8b1:	89 04 24             	mov    %eax,(%esp)
 804c8b4:	e8 c7 57 00 00       	call   8052080 <__sprint_r>
 804c8b9:	85 c0                	test   %eax,%eax
 804c8bb:	0f 85 d7 ed ff ff    	jne    804b698 <_vfprintf_r+0x278>
 804c8c1:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
 804c8c7:	8d 7d a8             	lea    -0x58(%ebp),%edi
 804c8ca:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 804c8d0:	eb 9e                	jmp    804c870 <_vfprintf_r+0x1450>
 804c8d2:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
 804c8d9:	0f 85 3c fa ff ff    	jne    804c31b <_vfprintf_r+0xefb>
 804c8df:	89 07                	mov    %eax,(%edi)
 804c8e1:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 804c8e7:	8d 51 01             	lea    0x1(%ecx),%edx
 804c8ea:	c7 47 04 01 00 00 00 	movl   $0x1,0x4(%edi)
 804c8f1:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
 804c8f7:	83 c0 01             	add    $0x1,%eax
 804c8fa:	83 f8 07             	cmp    $0x7,%eax
 804c8fd:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
 804c903:	0f 8e b3 fa ff ff    	jle    804c3bc <_vfprintf_r+0xf9c>
 804c909:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
 804c90f:	89 44 24 08          	mov    %eax,0x8(%esp)
 804c913:	8b 45 0c             	mov    0xc(%ebp),%eax
 804c916:	89 44 24 04          	mov    %eax,0x4(%esp)
 804c91a:	8b 45 08             	mov    0x8(%ebp),%eax
 804c91d:	89 04 24             	mov    %eax,(%esp)
 804c920:	e8 5b 57 00 00       	call   8052080 <__sprint_r>
 804c925:	85 c0                	test   %eax,%eax
 804c927:	0f 85 6b ed ff ff    	jne    804b698 <_vfprintf_r+0x278>
 804c92d:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
 804c933:	8d 7d a8             	lea    -0x58(%ebp),%edi
 804c936:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 804c93c:	e9 7e fa ff ff       	jmp    804c3bf <_vfprintf_r+0xf9f>
 804c941:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
 804c947:	89 44 24 08          	mov    %eax,0x8(%esp)
 804c94b:	8b 45 0c             	mov    0xc(%ebp),%eax
 804c94e:	89 44 24 04          	mov    %eax,0x4(%esp)
 804c952:	8b 45 08             	mov    0x8(%ebp),%eax
 804c955:	89 04 24             	mov    %eax,(%esp)
 804c958:	e8 23 57 00 00       	call   8052080 <__sprint_r>
 804c95d:	85 c0                	test   %eax,%eax
 804c95f:	0f 85 33 ed ff ff    	jne    804b698 <_vfprintf_r+0x278>
 804c965:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
 804c96b:	8d 7d a8             	lea    -0x58(%ebp),%edi
 804c96e:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 804c974:	e9 cf f9 ff ff       	jmp    804c348 <_vfprintf_r+0xf28>
 804c979:	c7 07 30 4c 05 08    	movl   $0x8054c30,(%edi)
 804c97f:	01 f2                	add    %esi,%edx
 804c981:	89 77 04             	mov    %esi,0x4(%edi)
 804c984:	e9 1b fa ff ff       	jmp    804c3a4 <_vfprintf_r+0xf84>
 804c989:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
 804c98f:	89 44 24 08          	mov    %eax,0x8(%esp)
 804c993:	8b 45 0c             	mov    0xc(%ebp),%eax
 804c996:	89 44 24 04          	mov    %eax,0x4(%esp)
 804c99a:	8b 45 08             	mov    0x8(%ebp),%eax
 804c99d:	89 04 24             	mov    %eax,(%esp)
 804c9a0:	e8 db 56 00 00       	call   8052080 <__sprint_r>
 804c9a5:	85 c0                	test   %eax,%eax
 804c9a7:	0f 85 eb ec ff ff    	jne    804b698 <_vfprintf_r+0x278>
 804c9ad:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
 804c9b3:	8d 7d a8             	lea    -0x58(%ebp),%edi
 804c9b6:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 804c9bc:	e9 b6 f9 ff ff       	jmp    804c377 <_vfprintf_r+0xf57>
 804c9c1:	f7 d9                	neg    %ecx
 804c9c3:	bb 2d 00 00 00       	mov    $0x2d,%ebx
 804c9c8:	c6 85 59 ff ff ff 2d 	movb   $0x2d,-0xa7(%ebp)
 804c9cf:	b8 01 00 00 00       	mov    $0x1,%eax
 804c9d4:	e9 e8 ee ff ff       	jmp    804b8c1 <_vfprintf_r+0x4a1>
 804c9d9:	dd 85 10 ff ff ff    	fldl   -0xf0(%ebp)
 804c9df:	dd 1c 24             	fstpl  (%esp)
 804c9e2:	e8 89 43 00 00       	call   8050d70 <__fpclassifyd>
 804c9e7:	85 c0                	test   %eax,%eax
 804c9e9:	0f 84 e4 02 00 00    	je     804ccd3 <_vfprintf_r+0x18b3>
 804c9ef:	8b 9d 24 ff ff ff    	mov    -0xdc(%ebp),%ebx
 804c9f5:	83 e3 df             	and    $0xffffffdf,%ebx
 804c9f8:	83 bd 44 ff ff ff ff 	cmpl   $0xffffffff,-0xbc(%ebp)
 804c9ff:	0f 84 b1 07 00 00    	je     804d1b6 <_vfprintf_r+0x1d96>
 804ca05:	83 fb 47             	cmp    $0x47,%ebx
 804ca08:	75 16                	jne    804ca20 <_vfprintf_r+0x1600>
 804ca0a:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
 804ca10:	b8 01 00 00 00       	mov    $0x1,%eax
 804ca15:	85 d2                	test   %edx,%edx
 804ca17:	0f 45 c2             	cmovne %edx,%eax
 804ca1a:	89 85 44 ff ff ff    	mov    %eax,-0xbc(%ebp)
 804ca20:	8b 85 4c ff ff ff    	mov    -0xb4(%ebp),%eax
 804ca26:	dd 85 10 ff ff ff    	fldl   -0xf0(%ebp)
 804ca2c:	dd 95 38 ff ff ff    	fstl   -0xc8(%ebp)
 804ca32:	80 cc 01             	or     $0x1,%ah
 804ca35:	89 85 34 ff ff ff    	mov    %eax,-0xcc(%ebp)
 804ca3b:	8b 85 3c ff ff ff    	mov    -0xc4(%ebp),%eax
 804ca41:	c6 85 48 ff ff ff 00 	movb   $0x0,-0xb8(%ebp)
 804ca48:	85 c0                	test   %eax,%eax
 804ca4a:	0f 88 58 07 00 00    	js     804d1a8 <_vfprintf_r+0x1d88>
 804ca50:	83 fb 46             	cmp    $0x46,%ebx
 804ca53:	0f 94 c0             	sete   %al
 804ca56:	89 c6                	mov    %eax,%esi
 804ca58:	0f 84 f0 04 00 00    	je     804cf4e <_vfprintf_r+0x1b2e>
 804ca5e:	83 fb 45             	cmp    $0x45,%ebx
 804ca61:	0f 85 37 07 00 00    	jne    804d19e <_vfprintf_r+0x1d7e>
 804ca67:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
 804ca6d:	dd 54 24 04          	fstl   0x4(%esp)
 804ca71:	c7 44 24 0c 02 00 00 	movl   $0x2,0xc(%esp)
 804ca78:	00 
 804ca79:	dd 9d 38 ff ff ff    	fstpl  -0xc8(%ebp)
 804ca7f:	8d 70 01             	lea    0x1(%eax),%esi
 804ca82:	8d 85 6c ff ff ff    	lea    -0x94(%ebp),%eax
 804ca88:	89 44 24 1c          	mov    %eax,0x1c(%esp)
 804ca8c:	8d 85 60 ff ff ff    	lea    -0xa0(%ebp),%eax
 804ca92:	89 44 24 18          	mov    %eax,0x18(%esp)
 804ca96:	8d 85 5c ff ff ff    	lea    -0xa4(%ebp),%eax
 804ca9c:	89 44 24 14          	mov    %eax,0x14(%esp)
 804caa0:	8b 45 08             	mov    0x8(%ebp),%eax
 804caa3:	89 74 24 10          	mov    %esi,0x10(%esp)
 804caa7:	89 04 24             	mov    %eax,(%esp)
 804caaa:	e8 f1 0c 00 00       	call   804d7a0 <_dtoa_r>
 804caaf:	89 85 2c ff ff ff    	mov    %eax,-0xd4(%ebp)
 804cab5:	8d 0c 30             	lea    (%eax,%esi,1),%ecx
 804cab8:	dd 85 38 ff ff ff    	fldl   -0xc8(%ebp)
 804cabe:	d9 ee                	fldz   
 804cac0:	d9 c9                	fxch   %st(1)
 804cac2:	df e9                	fucomip %st(1),%st
 804cac4:	dd d8                	fstp   %st(0)
 804cac6:	0f 8a f8 01 00 00    	jp     804ccc4 <_vfprintf_r+0x18a4>
 804cacc:	89 c8                	mov    %ecx,%eax
 804cace:	0f 85 f0 01 00 00    	jne    804ccc4 <_vfprintf_r+0x18a4>
 804cad4:	2b 85 2c ff ff ff    	sub    -0xd4(%ebp),%eax
 804cada:	83 fb 47             	cmp    $0x47,%ebx
 804cadd:	89 85 1c ff ff ff    	mov    %eax,-0xe4(%ebp)
 804cae3:	0f 84 4b 05 00 00    	je     804d034 <_vfprintf_r+0x1c14>
 804cae9:	83 bd 24 ff ff ff 65 	cmpl   $0x65,-0xdc(%ebp)
 804caf0:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
 804caf6:	0f 8e 92 05 00 00    	jle    804d08e <_vfprintf_r+0x1c6e>
 804cafc:	83 bd 24 ff ff ff 66 	cmpl   $0x66,-0xdc(%ebp)
 804cb03:	89 85 20 ff ff ff    	mov    %eax,-0xe0(%ebp)
 804cb09:	0f 84 b6 06 00 00    	je     804d1c5 <_vfprintf_r+0x1da5>
 804cb0f:	8b 85 20 ff ff ff    	mov    -0xe0(%ebp),%eax
 804cb15:	39 85 1c ff ff ff    	cmp    %eax,-0xe4(%ebp)
 804cb1b:	0f 8f 4a 06 00 00    	jg     804d16b <_vfprintf_r+0x1d4b>
 804cb21:	8b 85 4c ff ff ff    	mov    -0xb4(%ebp),%eax
 804cb27:	83 e0 01             	and    $0x1,%eax
 804cb2a:	0f 85 79 07 00 00    	jne    804d2a9 <_vfprintf_r+0x1e89>
 804cb30:	8b 95 20 ff ff ff    	mov    -0xe0(%ebp),%edx
 804cb36:	c7 85 24 ff ff ff 67 	movl   $0x67,-0xdc(%ebp)
 804cb3d:	00 00 00 
 804cb40:	85 d2                	test   %edx,%edx
 804cb42:	0f 49 c2             	cmovns %edx,%eax
 804cb45:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
 804cb4b:	80 bd 48 ff ff ff 00 	cmpb   $0x0,-0xb8(%ebp)
 804cb52:	0f 85 95 04 00 00    	jne    804cfed <_vfprintf_r+0x1bcd>
 804cb58:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
 804cb5e:	8b 85 34 ff ff ff    	mov    -0xcc(%ebp),%eax
 804cb64:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
 804cb6b:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
 804cb72:	00 00 00 
 804cb75:	89 85 4c ff ff ff    	mov    %eax,-0xb4(%ebp)
 804cb7b:	e9 f0 eb ff ff       	jmp    804b770 <_vfprintf_r+0x350>
 804cb80:	dd 00                	fldl   (%eax)
 804cb82:	83 c0 08             	add    $0x8,%eax
 804cb85:	dd 9d 10 ff ff ff    	fstpl  -0xf0(%ebp)
 804cb8b:	89 45 14             	mov    %eax,0x14(%ebp)
 804cb8e:	e9 d1 ef ff ff       	jmp    804bb64 <_vfprintf_r+0x744>
 804cb93:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
 804cb99:	89 44 24 08          	mov    %eax,0x8(%esp)
 804cb9d:	8b 45 0c             	mov    0xc(%ebp),%eax
 804cba0:	89 44 24 04          	mov    %eax,0x4(%esp)
 804cba4:	8b 45 08             	mov    0x8(%ebp),%eax
 804cba7:	89 04 24             	mov    %eax,(%esp)
 804cbaa:	e8 d1 54 00 00       	call   8052080 <__sprint_r>
 804cbaf:	85 c0                	test   %eax,%eax
 804cbb1:	0f 85 e1 ea ff ff    	jne    804b698 <_vfprintf_r+0x278>
 804cbb7:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
 804cbbd:	8d 7d a8             	lea    -0x58(%ebp),%edi
 804cbc0:	e9 32 f5 ff ff       	jmp    804c0f7 <_vfprintf_r+0xcd7>
 804cbc5:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 804cbcb:	83 c1 01             	add    $0x1,%ecx
 804cbce:	83 c7 08             	add    $0x8,%edi
 804cbd1:	c7 47 f8 7d 46 05 08 	movl   $0x805467d,-0x8(%edi)
 804cbd8:	c7 47 fc 01 00 00 00 	movl   $0x1,-0x4(%edi)
 804cbdf:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
 804cbe5:	83 c0 01             	add    $0x1,%eax
 804cbe8:	83 f8 07             	cmp    $0x7,%eax
 804cbeb:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
 804cbf1:	0f 8f 5b 01 00 00    	jg     804cd52 <_vfprintf_r+0x1932>
 804cbf7:	85 db                	test   %ebx,%ebx
 804cbf9:	0f 84 33 01 00 00    	je     804cd32 <_vfprintf_r+0x1912>
 804cbff:	8b 85 18 ff ff ff    	mov    -0xe8(%ebp),%eax
 804cc05:	83 c7 08             	add    $0x8,%edi
 804cc08:	89 47 f8             	mov    %eax,-0x8(%edi)
 804cc0b:	8b 85 0c ff ff ff    	mov    -0xf4(%ebp),%eax
 804cc11:	89 47 fc             	mov    %eax,-0x4(%edi)
 804cc14:	8d 14 01             	lea    (%ecx,%eax,1),%edx
 804cc17:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 804cc1d:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
 804cc23:	83 c0 01             	add    $0x1,%eax
 804cc26:	83 f8 07             	cmp    $0x7,%eax
 804cc29:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
 804cc2f:	0f 8f e3 04 00 00    	jg     804d118 <_vfprintf_r+0x1cf8>
 804cc35:	f7 db                	neg    %ebx
 804cc37:	85 db                	test   %ebx,%ebx
 804cc39:	0f 8e d2 01 00 00    	jle    804ce11 <_vfprintf_r+0x19f1>
 804cc3f:	83 fb 10             	cmp    $0x10,%ebx
 804cc42:	0f 8e 74 01 00 00    	jle    804cdbc <_vfprintf_r+0x199c>
 804cc48:	8d b5 74 ff ff ff    	lea    -0x8c(%ebp),%esi
 804cc4e:	eb 0c                	jmp    804cc5c <_vfprintf_r+0x183c>
 804cc50:	83 eb 10             	sub    $0x10,%ebx
 804cc53:	83 fb 10             	cmp    $0x10,%ebx
 804cc56:	0f 8e 60 01 00 00    	jle    804cdbc <_vfprintf_r+0x199c>
 804cc5c:	83 c0 01             	add    $0x1,%eax
 804cc5f:	83 c2 10             	add    $0x10,%edx
 804cc62:	c7 07 30 4c 05 08    	movl   $0x8054c30,(%edi)
 804cc68:	83 c7 08             	add    $0x8,%edi
 804cc6b:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
 804cc72:	83 f8 07             	cmp    $0x7,%eax
 804cc75:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
 804cc7b:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
 804cc81:	7e cd                	jle    804cc50 <_vfprintf_r+0x1830>
 804cc83:	8b 45 0c             	mov    0xc(%ebp),%eax
 804cc86:	89 74 24 08          	mov    %esi,0x8(%esp)
 804cc8a:	89 44 24 04          	mov    %eax,0x4(%esp)
 804cc8e:	8b 45 08             	mov    0x8(%ebp),%eax
 804cc91:	89 04 24             	mov    %eax,(%esp)
 804cc94:	e8 e7 53 00 00       	call   8052080 <__sprint_r>
 804cc99:	85 c0                	test   %eax,%eax
 804cc9b:	0f 85 f7 e9 ff ff    	jne    804b698 <_vfprintf_r+0x278>
 804cca1:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
 804cca7:	8d 7d a8             	lea    -0x58(%ebp),%edi
 804ccaa:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 804ccb0:	eb 9e                	jmp    804cc50 <_vfprintf_r+0x1830>
 804ccb2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 804ccb8:	8d 50 01             	lea    0x1(%eax),%edx
 804ccbb:	89 95 6c ff ff ff    	mov    %edx,-0x94(%ebp)
 804ccc1:	c6 00 30             	movb   $0x30,(%eax)
 804ccc4:	8b 85 6c ff ff ff    	mov    -0x94(%ebp),%eax
 804ccca:	39 c1                	cmp    %eax,%ecx
 804cccc:	77 ea                	ja     804ccb8 <_vfprintf_r+0x1898>
 804ccce:	e9 01 fe ff ff       	jmp    804cad4 <_vfprintf_r+0x16b4>
 804ccd3:	83 bd 24 ff ff ff 47 	cmpl   $0x47,-0xdc(%ebp)
 804ccda:	ba 14 49 05 08       	mov    $0x8054914,%edx
 804ccdf:	b8 18 49 05 08       	mov    $0x8054918,%eax
 804cce4:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
 804cceb:	c7 85 48 ff ff ff 03 	movl   $0x3,-0xb8(%ebp)
 804ccf2:	00 00 00 
 804ccf5:	0f 4e c2             	cmovle %edx,%eax
 804ccf8:	89 85 2c ff ff ff    	mov    %eax,-0xd4(%ebp)
 804ccfe:	81 a5 4c ff ff ff 7f 	andl   $0xffffff7f,-0xb4(%ebp)
 804cd05:	ff ff ff 
 804cd08:	c7 85 38 ff ff ff 03 	movl   $0x3,-0xc8(%ebp)
 804cd0f:	00 00 00 
 804cd12:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
 804cd19:	00 00 00 
 804cd1c:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
 804cd23:	00 00 00 
 804cd26:	e9 45 ea ff ff       	jmp    804b770 <_vfprintf_r+0x350>
 804cd2b:	89 d0                	mov    %edx,%eax
 804cd2d:	e9 ce fa ff ff       	jmp    804c800 <_vfprintf_r+0x13e0>
 804cd32:	8b 95 1c ff ff ff    	mov    -0xe4(%ebp),%edx
 804cd38:	85 d2                	test   %edx,%edx
 804cd3a:	0f 85 bf fe ff ff    	jne    804cbff <_vfprintf_r+0x17df>
 804cd40:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
 804cd47:	0f 84 37 f2 ff ff    	je     804bf84 <_vfprintf_r+0xb64>
 804cd4d:	e9 ad fe ff ff       	jmp    804cbff <_vfprintf_r+0x17df>
 804cd52:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
 804cd58:	89 44 24 08          	mov    %eax,0x8(%esp)
 804cd5c:	8b 45 0c             	mov    0xc(%ebp),%eax
 804cd5f:	89 44 24 04          	mov    %eax,0x4(%esp)
 804cd63:	8b 45 08             	mov    0x8(%ebp),%eax
 804cd66:	89 04 24             	mov    %eax,(%esp)
 804cd69:	e8 12 53 00 00       	call   8052080 <__sprint_r>
 804cd6e:	85 c0                	test   %eax,%eax
 804cd70:	0f 85 22 e9 ff ff    	jne    804b698 <_vfprintf_r+0x278>
 804cd76:	8b 9d 5c ff ff ff    	mov    -0xa4(%ebp),%ebx
 804cd7c:	8d 7d a8             	lea    -0x58(%ebp),%edi
 804cd7f:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
 804cd85:	e9 6d fe ff ff       	jmp    804cbf7 <_vfprintf_r+0x17d7>
 804cd8a:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
 804cd90:	89 44 24 08          	mov    %eax,0x8(%esp)
 804cd94:	8b 45 0c             	mov    0xc(%ebp),%eax
 804cd97:	89 44 24 04          	mov    %eax,0x4(%esp)
 804cd9b:	8b 45 08             	mov    0x8(%ebp),%eax
 804cd9e:	89 04 24             	mov    %eax,(%esp)
 804cda1:	e8 da 52 00 00       	call   8052080 <__sprint_r>
 804cda6:	85 c0                	test   %eax,%eax
 804cda8:	0f 85 ea e8 ff ff    	jne    804b698 <_vfprintf_r+0x278>
 804cdae:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
 804cdb4:	8d 7d a8             	lea    -0x58(%ebp),%edi
 804cdb7:	e9 8b f3 ff ff       	jmp    804c147 <_vfprintf_r+0xd27>
 804cdbc:	83 c0 01             	add    $0x1,%eax
 804cdbf:	01 da                	add    %ebx,%edx
 804cdc1:	c7 07 30 4c 05 08    	movl   $0x8054c30,(%edi)
 804cdc7:	83 c7 08             	add    $0x8,%edi
 804cdca:	89 5f fc             	mov    %ebx,-0x4(%edi)
 804cdcd:	83 f8 07             	cmp    $0x7,%eax
 804cdd0:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
 804cdd6:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
 804cddc:	7e 33                	jle    804ce11 <_vfprintf_r+0x19f1>
 804cdde:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
 804cde4:	89 44 24 08          	mov    %eax,0x8(%esp)
 804cde8:	8b 45 0c             	mov    0xc(%ebp),%eax
 804cdeb:	89 44 24 04          	mov    %eax,0x4(%esp)
 804cdef:	8b 45 08             	mov    0x8(%ebp),%eax
 804cdf2:	89 04 24             	mov    %eax,(%esp)
 804cdf5:	e8 86 52 00 00       	call   8052080 <__sprint_r>
 804cdfa:	85 c0                	test   %eax,%eax
 804cdfc:	0f 85 96 e8 ff ff    	jne    804b698 <_vfprintf_r+0x278>
 804ce02:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
 804ce08:	8d 7d a8             	lea    -0x58(%ebp),%edi
 804ce0b:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 804ce11:	8b 9d 2c ff ff ff    	mov    -0xd4(%ebp),%ebx
 804ce17:	83 c0 01             	add    $0x1,%eax
 804ce1a:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
 804ce20:	89 1f                	mov    %ebx,(%edi)
 804ce22:	8b 9d 1c ff ff ff    	mov    -0xe4(%ebp),%ebx
 804ce28:	01 da                	add    %ebx,%edx
 804ce2a:	83 f8 07             	cmp    $0x7,%eax
 804ce2d:	89 5f 04             	mov    %ebx,0x4(%edi)
 804ce30:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
 804ce36:	0f 8f af f5 ff ff    	jg     804c3eb <_vfprintf_r+0xfcb>
 804ce3c:	83 c7 08             	add    $0x8,%edi
 804ce3f:	89 d1                	mov    %edx,%ecx
 804ce41:	e9 3e f1 ff ff       	jmp    804bf84 <_vfprintf_r+0xb64>
 804ce46:	8b 85 2c ff ff ff    	mov    -0xd4(%ebp),%eax
 804ce4c:	89 04 24             	mov    %eax,(%esp)
 804ce4f:	e8 4c c6 ff ff       	call   80494a0 <strlen>
 804ce54:	e9 df e8 ff ff       	jmp    804b738 <_vfprintf_r+0x318>
 804ce59:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
 804ce5f:	89 44 24 08          	mov    %eax,0x8(%esp)
 804ce63:	8b 45 0c             	mov    0xc(%ebp),%eax
 804ce66:	89 44 24 04          	mov    %eax,0x4(%esp)
 804ce6a:	8b 45 08             	mov    0x8(%ebp),%eax
 804ce6d:	89 04 24             	mov    %eax,(%esp)
 804ce70:	e8 0b 52 00 00       	call   8052080 <__sprint_r>
 804ce75:	85 c0                	test   %eax,%eax
 804ce77:	0f 85 1b e8 ff ff    	jne    804b698 <_vfprintf_r+0x278>
 804ce7d:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
 804ce83:	8d 7d a8             	lea    -0x58(%ebp),%edi
 804ce86:	e9 ec f6 ff ff       	jmp    804c577 <_vfprintf_r+0x1157>
 804ce8b:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
 804ce91:	89 44 24 08          	mov    %eax,0x8(%esp)
 804ce95:	8b 45 0c             	mov    0xc(%ebp),%eax
 804ce98:	89 44 24 04          	mov    %eax,0x4(%esp)
 804ce9c:	8b 45 08             	mov    0x8(%ebp),%eax
 804ce9f:	89 04 24             	mov    %eax,(%esp)
 804cea2:	e8 d9 51 00 00       	call   8052080 <__sprint_r>
 804cea7:	85 c0                	test   %eax,%eax
 804cea9:	0f 85 e9 e7 ff ff    	jne    804b698 <_vfprintf_r+0x278>
 804ceaf:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
 804ceb5:	8d 7d a8             	lea    -0x58(%ebp),%edi
 804ceb8:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
 804cebe:	e9 3d f9 ff ff       	jmp    804c800 <_vfprintf_r+0x13e0>
 804cec3:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
 804cec9:	89 44 24 08          	mov    %eax,0x8(%esp)
 804cecd:	8b 45 0c             	mov    0xc(%ebp),%eax
 804ced0:	89 44 24 04          	mov    %eax,0x4(%esp)
 804ced4:	8b 45 08             	mov    0x8(%ebp),%eax
 804ced7:	89 04 24             	mov    %eax,(%esp)
 804ceda:	e8 a1 51 00 00       	call   8052080 <__sprint_r>
 804cedf:	85 c0                	test   %eax,%eax
 804cee1:	0f 85 b1 e7 ff ff    	jne    804b698 <_vfprintf_r+0x278>
 804cee7:	8b b5 1c ff ff ff    	mov    -0xe4(%ebp),%esi
 804ceed:	8d 7d a8             	lea    -0x58(%ebp),%edi
 804cef0:	2b b5 5c ff ff ff    	sub    -0xa4(%ebp),%esi
 804cef6:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
 804cefc:	e9 43 f9 ff ff       	jmp    804c844 <_vfprintf_r+0x1424>
 804cf01:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
 804cf07:	b0 06                	mov    $0x6,%al
 804cf09:	89 75 14             	mov    %esi,0x14(%ebp)
 804cf0c:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
 804cf13:	00 00 00 
 804cf16:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
 804cf1d:	00 00 00 
 804cf20:	83 fa 06             	cmp    $0x6,%edx
 804cf23:	0f 46 c2             	cmovbe %edx,%eax
 804cf26:	8b 95 2c ff ff ff    	mov    -0xd4(%ebp),%edx
 804cf2c:	85 c0                	test   %eax,%eax
 804cf2e:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
 804cf34:	c7 85 2c ff ff ff 3e 	movl   $0x805493e,-0xd4(%ebp)
 804cf3b:	49 05 08 
 804cf3e:	0f 49 d0             	cmovns %eax,%edx
 804cf41:	31 db                	xor    %ebx,%ebx
 804cf43:	89 95 48 ff ff ff    	mov    %edx,-0xb8(%ebp)
 804cf49:	e9 2d e8 ff ff       	jmp    804b77b <_vfprintf_r+0x35b>
 804cf4e:	ba 03 00 00 00       	mov    $0x3,%edx
 804cf53:	8d 85 6c ff ff ff    	lea    -0x94(%ebp),%eax
 804cf59:	89 44 24 1c          	mov    %eax,0x1c(%esp)
 804cf5d:	8d 85 60 ff ff ff    	lea    -0xa0(%ebp),%eax
 804cf63:	89 44 24 18          	mov    %eax,0x18(%esp)
 804cf67:	8d 85 5c ff ff ff    	lea    -0xa4(%ebp),%eax
 804cf6d:	89 44 24 14          	mov    %eax,0x14(%esp)
 804cf71:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
 804cf77:	dd 54 24 04          	fstl   0x4(%esp)
 804cf7b:	89 54 24 0c          	mov    %edx,0xc(%esp)
 804cf7f:	dd 9d 38 ff ff ff    	fstpl  -0xc8(%ebp)
 804cf85:	89 44 24 10          	mov    %eax,0x10(%esp)
 804cf89:	8b 45 08             	mov    0x8(%ebp),%eax
 804cf8c:	89 04 24             	mov    %eax,(%esp)
 804cf8f:	e8 0c 08 00 00       	call   804d7a0 <_dtoa_r>
 804cf94:	83 fb 47             	cmp    $0x47,%ebx
 804cf97:	89 85 2c ff ff ff    	mov    %eax,-0xd4(%ebp)
 804cf9d:	dd 85 38 ff ff ff    	fldl   -0xc8(%ebp)
 804cfa3:	75 09                	jne    804cfae <_vfprintf_r+0x1b8e>
 804cfa5:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
 804cfac:	74 6c                	je     804d01a <_vfprintf_r+0x1bfa>
 804cfae:	8b 95 2c ff ff ff    	mov    -0xd4(%ebp),%edx
 804cfb4:	89 f0                	mov    %esi,%eax
 804cfb6:	8b 8d 44 ff ff ff    	mov    -0xbc(%ebp),%ecx
 804cfbc:	01 d1                	add    %edx,%ecx
 804cfbe:	84 c0                	test   %al,%al
 804cfc0:	0f 84 f8 fa ff ff    	je     804cabe <_vfprintf_r+0x169e>
 804cfc6:	80 3a 30             	cmpb   $0x30,(%edx)
 804cfc9:	0f 84 b2 02 00 00    	je     804d281 <_vfprintf_r+0x1e61>
 804cfcf:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
 804cfd5:	01 c1                	add    %eax,%ecx
 804cfd7:	e9 e2 fa ff ff       	jmp    804cabe <_vfprintf_r+0x169e>
 804cfdc:	c6 85 59 ff ff ff 2d 	movb   $0x2d,-0xa7(%ebp)
 804cfe3:	bb 2d 00 00 00       	mov    $0x2d,%ebx
 804cfe8:	e9 a9 eb ff ff       	jmp    804bb96 <_vfprintf_r+0x776>
 804cfed:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
 804cff3:	8b 85 34 ff ff ff    	mov    -0xcc(%ebp),%eax
 804cff9:	bb 2d 00 00 00       	mov    $0x2d,%ebx
 804cffe:	c6 85 59 ff ff ff 2d 	movb   $0x2d,-0xa7(%ebp)
 804d005:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
 804d00c:	00 00 00 
 804d00f:	89 85 4c ff ff ff    	mov    %eax,-0xb4(%ebp)
 804d015:	e9 5a e7 ff ff       	jmp    804b774 <_vfprintf_r+0x354>
 804d01a:	dd d8                	fstp   %st(0)
 804d01c:	8b 85 6c ff ff ff    	mov    -0x94(%ebp),%eax
 804d022:	89 85 1c ff ff ff    	mov    %eax,-0xe4(%ebp)
 804d028:	8b 85 2c ff ff ff    	mov    -0xd4(%ebp),%eax
 804d02e:	29 85 1c ff ff ff    	sub    %eax,-0xe4(%ebp)
 804d034:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
 804d03a:	83 f8 fd             	cmp    $0xfffffffd,%eax
 804d03d:	7c 48                	jl     804d087 <_vfprintf_r+0x1c67>
 804d03f:	39 85 44 ff ff ff    	cmp    %eax,-0xbc(%ebp)
 804d045:	7c 40                	jl     804d087 <_vfprintf_r+0x1c67>
 804d047:	89 85 20 ff ff ff    	mov    %eax,-0xe0(%ebp)
 804d04d:	e9 bd fa ff ff       	jmp    804cb0f <_vfprintf_r+0x16ef>
 804d052:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
 804d058:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
 804d05f:	89 75 14             	mov    %esi,0x14(%ebp)
 804d062:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
 804d069:	00 00 00 
 804d06c:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
 804d072:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
 804d078:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
 804d07f:	00 00 00 
 804d082:	e9 e9 e6 ff ff       	jmp    804b770 <_vfprintf_r+0x350>
 804d087:	83 ad 24 ff ff ff 02 	subl   $0x2,-0xdc(%ebp)
 804d08e:	8d 48 ff             	lea    -0x1(%eax),%ecx
 804d091:	0f b6 85 24 ff ff ff 	movzbl -0xdc(%ebp),%eax
 804d098:	85 c9                	test   %ecx,%ecx
 804d09a:	89 8d 5c ff ff ff    	mov    %ecx,-0xa4(%ebp)
 804d0a0:	88 85 65 ff ff ff    	mov    %al,-0x9b(%ebp)
 804d0a6:	0f 88 af 02 00 00    	js     804d35b <_vfprintf_r+0x1f3b>
 804d0ac:	c6 85 66 ff ff ff 2b 	movb   $0x2b,-0x9a(%ebp)
 804d0b3:	83 f9 09             	cmp    $0x9,%ecx
 804d0b6:	0f 8f 33 01 00 00    	jg     804d1ef <_vfprintf_r+0x1dcf>
 804d0bc:	83 c1 30             	add    $0x30,%ecx
 804d0bf:	c6 85 67 ff ff ff 30 	movb   $0x30,-0x99(%ebp)
 804d0c6:	8d 85 69 ff ff ff    	lea    -0x97(%ebp),%eax
 804d0cc:	88 8d 68 ff ff ff    	mov    %cl,-0x98(%ebp)
 804d0d2:	8b 9d 1c ff ff ff    	mov    -0xe4(%ebp),%ebx
 804d0d8:	8d 95 65 ff ff ff    	lea    -0x9b(%ebp),%edx
 804d0de:	29 d0                	sub    %edx,%eax
 804d0e0:	89 85 04 ff ff ff    	mov    %eax,-0xfc(%ebp)
 804d0e6:	89 da                	mov    %ebx,%edx
 804d0e8:	01 c2                	add    %eax,%edx
 804d0ea:	83 fb 01             	cmp    $0x1,%ebx
 804d0ed:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
 804d0f3:	0f 8e 3f 02 00 00    	jle    804d338 <_vfprintf_r+0x1f18>
 804d0f9:	31 c0                	xor    %eax,%eax
 804d0fb:	83 85 38 ff ff ff 01 	addl   $0x1,-0xc8(%ebp)
 804d102:	0f 49 85 38 ff ff ff 	cmovns -0xc8(%ebp),%eax
 804d109:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
 804d110:	00 00 00 
 804d113:	e9 33 fa ff ff       	jmp    804cb4b <_vfprintf_r+0x172b>
 804d118:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
 804d11e:	89 44 24 08          	mov    %eax,0x8(%esp)
 804d122:	8b 45 0c             	mov    0xc(%ebp),%eax
 804d125:	89 44 24 04          	mov    %eax,0x4(%esp)
 804d129:	8b 45 08             	mov    0x8(%ebp),%eax
 804d12c:	89 04 24             	mov    %eax,(%esp)
 804d12f:	e8 4c 4f 00 00       	call   8052080 <__sprint_r>
 804d134:	85 c0                	test   %eax,%eax
 804d136:	0f 85 5c e5 ff ff    	jne    804b698 <_vfprintf_r+0x278>
 804d13c:	8b 9d 5c ff ff ff    	mov    -0xa4(%ebp),%ebx
 804d142:	8d 7d a8             	lea    -0x58(%ebp),%edi
 804d145:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
 804d14b:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 804d151:	e9 df fa ff ff       	jmp    804cc35 <_vfprintf_r+0x1815>
 804d156:	8b 8d 48 ff ff ff    	mov    -0xb8(%ebp),%ecx
 804d15c:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
 804d163:	00 00 00 
 804d166:	e9 28 e4 ff ff       	jmp    804b593 <_vfprintf_r+0x173>
 804d16b:	8b 8d 20 ff ff ff    	mov    -0xe0(%ebp),%ecx
 804d171:	ba 01 00 00 00       	mov    $0x1,%edx
 804d176:	85 c9                	test   %ecx,%ecx
 804d178:	0f 8e 4e 01 00 00    	jle    804d2cc <_vfprintf_r+0x1eac>
 804d17e:	31 c0                	xor    %eax,%eax
 804d180:	03 95 1c ff ff ff    	add    -0xe4(%ebp),%edx
 804d186:	c7 85 24 ff ff ff 67 	movl   $0x67,-0xdc(%ebp)
 804d18d:	00 00 00 
 804d190:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
 804d196:	0f 49 c2             	cmovns %edx,%eax
 804d199:	e9 ad f9 ff ff       	jmp    804cb4b <_vfprintf_r+0x172b>
 804d19e:	ba 02 00 00 00       	mov    $0x2,%edx
 804d1a3:	e9 ab fd ff ff       	jmp    804cf53 <_vfprintf_r+0x1b33>
 804d1a8:	d9 e0                	fchs   
 804d1aa:	c6 85 48 ff ff ff 2d 	movb   $0x2d,-0xb8(%ebp)
 804d1b1:	e9 9a f8 ff ff       	jmp    804ca50 <_vfprintf_r+0x1630>
 804d1b6:	c7 85 44 ff ff ff 06 	movl   $0x6,-0xbc(%ebp)
 804d1bd:	00 00 00 
 804d1c0:	e9 5b f8 ff ff       	jmp    804ca20 <_vfprintf_r+0x1600>
 804d1c5:	85 c0                	test   %eax,%eax
 804d1c7:	0f 8e 43 01 00 00    	jle    804d310 <_vfprintf_r+0x1ef0>
 804d1cd:	8b b5 44 ff ff ff    	mov    -0xbc(%ebp),%esi
 804d1d3:	85 f6                	test   %esi,%esi
 804d1d5:	0f 85 82 00 00 00    	jne    804d25d <_vfprintf_r+0x1e3d>
 804d1db:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
 804d1e2:	75 79                	jne    804d25d <_vfprintf_r+0x1e3d>
 804d1e4:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
 804d1ea:	e9 5c f9 ff ff       	jmp    804cb4b <_vfprintf_r+0x172b>
 804d1ef:	8d b5 73 ff ff ff    	lea    -0x8d(%ebp),%esi
 804d1f5:	89 f3                	mov    %esi,%ebx
 804d1f7:	b8 67 66 66 66       	mov    $0x66666667,%eax
 804d1fc:	83 eb 01             	sub    $0x1,%ebx
 804d1ff:	f7 e9                	imul   %ecx
 804d201:	89 c8                	mov    %ecx,%eax
 804d203:	c1 f8 1f             	sar    $0x1f,%eax
 804d206:	c1 fa 02             	sar    $0x2,%edx
 804d209:	29 c2                	sub    %eax,%edx
 804d20b:	8d 04 92             	lea    (%edx,%edx,4),%eax
 804d20e:	01 c0                	add    %eax,%eax
 804d210:	29 c1                	sub    %eax,%ecx
 804d212:	83 fa 09             	cmp    $0x9,%edx
 804d215:	8d 41 30             	lea    0x30(%ecx),%eax
 804d218:	89 d1                	mov    %edx,%ecx
 804d21a:	88 03                	mov    %al,(%ebx)
 804d21c:	7f d9                	jg     804d1f7 <_vfprintf_r+0x1dd7>
 804d21e:	8d 43 ff             	lea    -0x1(%ebx),%eax
 804d221:	83 c1 30             	add    $0x30,%ecx
 804d224:	39 f0                	cmp    %esi,%eax
 804d226:	88 4b ff             	mov    %cl,-0x1(%ebx)
 804d229:	0f 83 53 01 00 00    	jae    804d382 <_vfprintf_r+0x1f62>
 804d22f:	8d 95 67 ff ff ff    	lea    -0x99(%ebp),%edx
 804d235:	eb 04                	jmp    804d23b <_vfprintf_r+0x1e1b>
 804d237:	90                   	nop
 804d238:	0f b6 08             	movzbl (%eax),%ecx
 804d23b:	83 c0 01             	add    $0x1,%eax
 804d23e:	83 c2 01             	add    $0x1,%edx
 804d241:	39 f0                	cmp    %esi,%eax
 804d243:	88 4a ff             	mov    %cl,-0x1(%edx)
 804d246:	75 f0                	jne    804d238 <_vfprintf_r+0x1e18>
 804d248:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
 804d24e:	29 d8                	sub    %ebx,%eax
 804d250:	8d 95 67 ff ff ff    	lea    -0x99(%ebp),%edx
 804d256:	01 d0                	add    %edx,%eax
 804d258:	e9 75 fe ff ff       	jmp    804d0d2 <_vfprintf_r+0x1cb2>
 804d25d:	8b 95 20 ff ff ff    	mov    -0xe0(%ebp),%edx
 804d263:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
 804d269:	8d 44 10 01          	lea    0x1(%eax,%edx,1),%eax
 804d26d:	89 c2                	mov    %eax,%edx
 804d26f:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
 804d275:	31 c0                	xor    %eax,%eax
 804d277:	85 d2                	test   %edx,%edx
 804d279:	0f 49 c2             	cmovns %edx,%eax
 804d27c:	e9 ca f8 ff ff       	jmp    804cb4b <_vfprintf_r+0x172b>
 804d281:	d9 ee                	fldz   
 804d283:	d9 c9                	fxch   %st(1)
 804d285:	db e9                	fucomi %st(1),%st
 804d287:	dd d9                	fstp   %st(1)
 804d289:	7a 06                	jp     804d291 <_vfprintf_r+0x1e71>
 804d28b:	0f 84 3e fd ff ff    	je     804cfcf <_vfprintf_r+0x1baf>
 804d291:	b8 01 00 00 00       	mov    $0x1,%eax
 804d296:	2b 85 44 ff ff ff    	sub    -0xbc(%ebp),%eax
 804d29c:	89 85 5c ff ff ff    	mov    %eax,-0xa4(%ebp)
 804d2a2:	01 c1                	add    %eax,%ecx
 804d2a4:	e9 15 f8 ff ff       	jmp    804cabe <_vfprintf_r+0x169e>
 804d2a9:	8b 95 20 ff ff ff    	mov    -0xe0(%ebp),%edx
 804d2af:	31 c0                	xor    %eax,%eax
 804d2b1:	c7 85 24 ff ff ff 67 	movl   $0x67,-0xdc(%ebp)
 804d2b8:	00 00 00 
 804d2bb:	83 c2 01             	add    $0x1,%edx
 804d2be:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
 804d2c4:	0f 49 c2             	cmovns %edx,%eax
 804d2c7:	e9 7f f8 ff ff       	jmp    804cb4b <_vfprintf_r+0x172b>
 804d2cc:	b2 02                	mov    $0x2,%dl
 804d2ce:	2b 95 20 ff ff ff    	sub    -0xe0(%ebp),%edx
 804d2d4:	e9 a5 fe ff ff       	jmp    804d17e <_vfprintf_r+0x1d5e>
 804d2d9:	8b 55 14             	mov    0x14(%ebp),%edx
 804d2dc:	8b 45 14             	mov    0x14(%ebp),%eax
 804d2df:	8b 8d 48 ff ff ff    	mov    -0xb8(%ebp),%ecx
 804d2e5:	8b 12                	mov    (%edx),%edx
 804d2e7:	83 c0 04             	add    $0x4,%eax
 804d2ea:	89 45 14             	mov    %eax,0x14(%ebp)
 804d2ed:	85 d2                	test   %edx,%edx
 804d2ef:	89 95 44 ff ff ff    	mov    %edx,-0xbc(%ebp)
 804d2f5:	0f 89 b4 e2 ff ff    	jns    804b5af <_vfprintf_r+0x18f>
 804d2fb:	c7 85 44 ff ff ff ff 	movl   $0xffffffff,-0xbc(%ebp)
 804d302:	ff ff ff 
 804d305:	89 c8                	mov    %ecx,%eax
 804d307:	e9 81 e2 ff ff       	jmp    804b58d <_vfprintf_r+0x16d>
 804d30c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 804d310:	8b 9d 44 ff ff ff    	mov    -0xbc(%ebp),%ebx
 804d316:	85 db                	test   %ebx,%ebx
 804d318:	75 4f                	jne    804d369 <_vfprintf_r+0x1f49>
 804d31a:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
 804d321:	75 46                	jne    804d369 <_vfprintf_r+0x1f49>
 804d323:	b8 01 00 00 00       	mov    $0x1,%eax
 804d328:	c7 85 38 ff ff ff 01 	movl   $0x1,-0xc8(%ebp)
 804d32f:	00 00 00 
 804d332:	e9 14 f8 ff ff       	jmp    804cb4b <_vfprintf_r+0x172b>
 804d337:	90                   	nop
 804d338:	8b 85 4c ff ff ff    	mov    -0xb4(%ebp),%eax
 804d33e:	83 e0 01             	and    $0x1,%eax
 804d341:	0f 85 b2 fd ff ff    	jne    804d0f9 <_vfprintf_r+0x1cd9>
 804d347:	85 d2                	test   %edx,%edx
 804d349:	0f 49 c2             	cmovns %edx,%eax
 804d34c:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
 804d353:	00 00 00 
 804d356:	e9 f0 f7 ff ff       	jmp    804cb4b <_vfprintf_r+0x172b>
 804d35b:	f7 d9                	neg    %ecx
 804d35d:	c6 85 66 ff ff ff 2d 	movb   $0x2d,-0x9a(%ebp)
 804d364:	e9 4a fd ff ff       	jmp    804d0b3 <_vfprintf_r+0x1c93>
 804d369:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
 804d36f:	31 c0                	xor    %eax,%eax
 804d371:	83 c2 02             	add    $0x2,%edx
 804d374:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
 804d37a:	0f 49 c2             	cmovns %edx,%eax
 804d37d:	e9 c9 f7 ff ff       	jmp    804cb4b <_vfprintf_r+0x172b>
 804d382:	8d 85 67 ff ff ff    	lea    -0x99(%ebp),%eax
 804d388:	e9 45 fd ff ff       	jmp    804d0d2 <_vfprintf_r+0x1cb2>
 804d38d:	8d 76 00             	lea    0x0(%esi),%esi

0804d390 <vfprintf>:
 804d390:	55                   	push   %ebp
 804d391:	89 e5                	mov    %esp,%ebp
 804d393:	83 ec 18             	sub    $0x18,%esp
 804d396:	e8 15 21 00 00       	call   804f4b0 <__getreent>
 804d39b:	8b 55 10             	mov    0x10(%ebp),%edx
 804d39e:	89 54 24 0c          	mov    %edx,0xc(%esp)
 804d3a2:	8b 55 0c             	mov    0xc(%ebp),%edx
 804d3a5:	89 04 24             	mov    %eax,(%esp)
 804d3a8:	89 54 24 08          	mov    %edx,0x8(%esp)
 804d3ac:	8b 55 08             	mov    0x8(%ebp),%edx
 804d3af:	89 54 24 04          	mov    %edx,0x4(%esp)
 804d3b3:	e8 68 e0 ff ff       	call   804b420 <_vfprintf_r>
 804d3b8:	c9                   	leave  
 804d3b9:	c3                   	ret    
 804d3ba:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

0804d3c0 <__sbprintf>:
 804d3c0:	55                   	push   %ebp
 804d3c1:	89 e5                	mov    %esp,%ebp
 804d3c3:	57                   	push   %edi
 804d3c4:	89 c7                	mov    %eax,%edi
 804d3c6:	56                   	push   %esi
 804d3c7:	53                   	push   %ebx
 804d3c8:	89 d3                	mov    %edx,%ebx
 804d3ca:	81 ec 9c 04 00 00    	sub    $0x49c,%esp
 804d3d0:	0f b7 42 0c          	movzwl 0xc(%edx),%eax
 804d3d4:	c7 85 88 fb ff ff 00 	movl   $0x400,-0x478(%ebp)
 804d3db:	04 00 00 
 804d3de:	c7 85 94 fb ff ff 00 	movl   $0x400,-0x46c(%ebp)
 804d3e5:	04 00 00 
 804d3e8:	c7 85 98 fb ff ff 00 	movl   $0x0,-0x468(%ebp)
 804d3ef:	00 00 00 
 804d3f2:	83 e0 fd             	and    $0xfffffffd,%eax
 804d3f5:	66 89 85 8c fb ff ff 	mov    %ax,-0x474(%ebp)
 804d3fc:	8b 42 64             	mov    0x64(%edx),%eax
 804d3ff:	89 85 e4 fb ff ff    	mov    %eax,-0x41c(%ebp)
 804d405:	0f b7 42 0e          	movzwl 0xe(%edx),%eax
 804d409:	66 89 85 8e fb ff ff 	mov    %ax,-0x472(%ebp)
 804d410:	8b 42 1c             	mov    0x1c(%edx),%eax
 804d413:	89 85 9c fb ff ff    	mov    %eax,-0x464(%ebp)
 804d419:	8b 42 24             	mov    0x24(%edx),%eax
 804d41c:	8d 95 80 fb ff ff    	lea    -0x480(%ebp),%edx
 804d422:	89 4c 24 08          	mov    %ecx,0x8(%esp)
 804d426:	89 54 24 04          	mov    %edx,0x4(%esp)
 804d42a:	89 3c 24             	mov    %edi,(%esp)
 804d42d:	89 85 a4 fb ff ff    	mov    %eax,-0x45c(%ebp)
 804d433:	8d 85 e8 fb ff ff    	lea    -0x418(%ebp),%eax
 804d439:	89 85 80 fb ff ff    	mov    %eax,-0x480(%ebp)
 804d43f:	89 85 90 fb ff ff    	mov    %eax,-0x470(%ebp)
 804d445:	8b 45 08             	mov    0x8(%ebp),%eax
 804d448:	89 95 74 fb ff ff    	mov    %edx,-0x48c(%ebp)
 804d44e:	89 44 24 0c          	mov    %eax,0xc(%esp)
 804d452:	e8 c9 df ff ff       	call   804b420 <_vfprintf_r>
 804d457:	85 c0                	test   %eax,%eax
 804d459:	89 c6                	mov    %eax,%esi
 804d45b:	78 1c                	js     804d479 <__sbprintf+0xb9>
 804d45d:	8b 95 74 fb ff ff    	mov    -0x48c(%ebp),%edx
 804d463:	89 3c 24             	mov    %edi,(%esp)
 804d466:	89 54 24 04          	mov    %edx,0x4(%esp)
 804d46a:	e8 31 17 00 00       	call   804eba0 <_fflush_r>
 804d46f:	85 c0                	test   %eax,%eax
 804d471:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804d476:	0f 45 f0             	cmovne %eax,%esi
 804d479:	f6 85 8c fb ff ff 40 	testb  $0x40,-0x474(%ebp)
 804d480:	74 05                	je     804d487 <__sbprintf+0xc7>
 804d482:	66 83 4b 0c 40       	orw    $0x40,0xc(%ebx)
 804d487:	81 c4 9c 04 00 00    	add    $0x49c,%esp
 804d48d:	89 f0                	mov    %esi,%eax
 804d48f:	5b                   	pop    %ebx
 804d490:	5e                   	pop    %esi
 804d491:	5f                   	pop    %edi
 804d492:	5d                   	pop    %ebp
 804d493:	c3                   	ret    
 804d494:	66 90                	xchg   %ax,%ax
 804d496:	66 90                	xchg   %ax,%ax
 804d498:	66 90                	xchg   %ax,%ax
 804d49a:	66 90                	xchg   %ax,%ax
 804d49c:	66 90                	xchg   %ax,%ax
 804d49e:	66 90                	xchg   %ax,%ax

0804d4a0 <__swsetup_r>:
 804d4a0:	55                   	push   %ebp
 804d4a1:	89 e5                	mov    %esp,%ebp
 804d4a3:	53                   	push   %ebx
 804d4a4:	83 ec 14             	sub    $0x14,%esp
 804d4a7:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 804d4aa:	e8 01 20 00 00       	call   804f4b0 <__getreent>
 804d4af:	85 c0                	test   %eax,%eax
 804d4b1:	74 0b                	je     804d4be <__swsetup_r+0x1e>
 804d4b3:	8b 50 38             	mov    0x38(%eax),%edx
 804d4b6:	85 d2                	test   %edx,%edx
 804d4b8:	0f 84 a2 00 00 00    	je     804d560 <__swsetup_r+0xc0>
 804d4be:	0f b7 43 0c          	movzwl 0xc(%ebx),%eax
 804d4c2:	a8 08                	test   $0x8,%al
 804d4c4:	74 2a                	je     804d4f0 <__swsetup_r+0x50>
 804d4c6:	8b 53 10             	mov    0x10(%ebx),%edx
 804d4c9:	85 d2                	test   %edx,%edx
 804d4cb:	74 3d                	je     804d50a <__swsetup_r+0x6a>
 804d4cd:	a8 01                	test   $0x1,%al
 804d4cf:	75 5f                	jne    804d530 <__swsetup_r+0x90>
 804d4d1:	31 c9                	xor    %ecx,%ecx
 804d4d3:	a8 02                	test   $0x2,%al
 804d4d5:	75 03                	jne    804d4da <__swsetup_r+0x3a>
 804d4d7:	8b 4b 14             	mov    0x14(%ebx),%ecx
 804d4da:	31 c0                	xor    %eax,%eax
 804d4dc:	85 d2                	test   %edx,%edx
 804d4de:	89 4b 08             	mov    %ecx,0x8(%ebx)
 804d4e1:	74 62                	je     804d545 <__swsetup_r+0xa5>
 804d4e3:	83 c4 14             	add    $0x14,%esp
 804d4e6:	5b                   	pop    %ebx
 804d4e7:	5d                   	pop    %ebp
 804d4e8:	c3                   	ret    
 804d4e9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 804d4f0:	a8 10                	test   $0x10,%al
 804d4f2:	0f 84 b8 00 00 00    	je     804d5b0 <__swsetup_r+0x110>
 804d4f8:	a8 04                	test   $0x4,%al
 804d4fa:	75 74                	jne    804d570 <__swsetup_r+0xd0>
 804d4fc:	8b 53 10             	mov    0x10(%ebx),%edx
 804d4ff:	83 c8 08             	or     $0x8,%eax
 804d502:	85 d2                	test   %edx,%edx
 804d504:	66 89 43 0c          	mov    %ax,0xc(%ebx)
 804d508:	75 c3                	jne    804d4cd <__swsetup_r+0x2d>
 804d50a:	89 c1                	mov    %eax,%ecx
 804d50c:	66 81 e1 80 02       	and    $0x280,%cx
 804d511:	66 81 f9 00 02       	cmp    $0x200,%cx
 804d516:	74 b5                	je     804d4cd <__swsetup_r+0x2d>
 804d518:	8b 45 08             	mov    0x8(%ebp),%eax
 804d51b:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 804d51f:	89 04 24             	mov    %eax,(%esp)
 804d522:	e8 a9 20 00 00       	call   804f5d0 <__smakebuf_r>
 804d527:	0f b7 43 0c          	movzwl 0xc(%ebx),%eax
 804d52b:	8b 53 10             	mov    0x10(%ebx),%edx
 804d52e:	eb 9d                	jmp    804d4cd <__swsetup_r+0x2d>
 804d530:	8b 43 14             	mov    0x14(%ebx),%eax
 804d533:	c7 43 08 00 00 00 00 	movl   $0x0,0x8(%ebx)
 804d53a:	f7 d8                	neg    %eax
 804d53c:	89 43 18             	mov    %eax,0x18(%ebx)
 804d53f:	31 c0                	xor    %eax,%eax
 804d541:	85 d2                	test   %edx,%edx
 804d543:	75 9e                	jne    804d4e3 <__swsetup_r+0x43>
 804d545:	0f b7 53 0c          	movzwl 0xc(%ebx),%edx
 804d549:	f6 c2 80             	test   $0x80,%dl
 804d54c:	74 95                	je     804d4e3 <__swsetup_r+0x43>
 804d54e:	83 ca 40             	or     $0x40,%edx
 804d551:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804d556:	66 89 53 0c          	mov    %dx,0xc(%ebx)
 804d55a:	eb 87                	jmp    804d4e3 <__swsetup_r+0x43>
 804d55c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 804d560:	89 04 24             	mov    %eax,(%esp)
 804d563:	e8 a8 17 00 00       	call   804ed10 <__sinit>
 804d568:	e9 51 ff ff ff       	jmp    804d4be <__swsetup_r+0x1e>
 804d56d:	8d 76 00             	lea    0x0(%esi),%esi
 804d570:	8b 53 30             	mov    0x30(%ebx),%edx
 804d573:	85 d2                	test   %edx,%edx
 804d575:	74 21                	je     804d598 <__swsetup_r+0xf8>
 804d577:	8d 4b 40             	lea    0x40(%ebx),%ecx
 804d57a:	39 ca                	cmp    %ecx,%edx
 804d57c:	74 13                	je     804d591 <__swsetup_r+0xf1>
 804d57e:	8b 45 08             	mov    0x8(%ebp),%eax
 804d581:	89 54 24 04          	mov    %edx,0x4(%esp)
 804d585:	89 04 24             	mov    %eax,(%esp)
 804d588:	e8 d3 1b 00 00       	call   804f160 <_free_r>
 804d58d:	0f b7 43 0c          	movzwl 0xc(%ebx),%eax
 804d591:	c7 43 30 00 00 00 00 	movl   $0x0,0x30(%ebx)
 804d598:	8b 53 10             	mov    0x10(%ebx),%edx
 804d59b:	83 e0 db             	and    $0xffffffdb,%eax
 804d59e:	c7 43 04 00 00 00 00 	movl   $0x0,0x4(%ebx)
 804d5a5:	89 13                	mov    %edx,(%ebx)
 804d5a7:	e9 53 ff ff ff       	jmp    804d4ff <__swsetup_r+0x5f>
 804d5ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 804d5b0:	8b 4d 08             	mov    0x8(%ebp),%ecx
 804d5b3:	83 c8 40             	or     $0x40,%eax
 804d5b6:	c7 01 09 00 00 00    	movl   $0x9,(%ecx)
 804d5bc:	66 89 43 0c          	mov    %ax,0xc(%ebx)
 804d5c0:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804d5c5:	e9 19 ff ff ff       	jmp    804d4e3 <__swsetup_r+0x43>
 804d5ca:	66 90                	xchg   %ax,%ax
 804d5cc:	66 90                	xchg   %ax,%ax
 804d5ce:	66 90                	xchg   %ax,%ax

0804d5d0 <quorem>:
 804d5d0:	55                   	push   %ebp
 804d5d1:	89 c1                	mov    %eax,%ecx
 804d5d3:	89 e5                	mov    %esp,%ebp
 804d5d5:	57                   	push   %edi
 804d5d6:	89 d7                	mov    %edx,%edi
 804d5d8:	56                   	push   %esi
 804d5d9:	53                   	push   %ebx
 804d5da:	83 ec 3c             	sub    $0x3c,%esp
 804d5dd:	89 45 d0             	mov    %eax,-0x30(%ebp)
 804d5e0:	8b 42 10             	mov    0x10(%edx),%eax
 804d5e3:	3b 41 10             	cmp    0x10(%ecx),%eax
 804d5e6:	89 55 c8             	mov    %edx,-0x38(%ebp)
 804d5e9:	89 ca                	mov    %ecx,%edx
 804d5eb:	0f 8f 9f 01 00 00    	jg     804d790 <quorem+0x1c0>
 804d5f1:	83 e8 01             	sub    $0x1,%eax
 804d5f4:	83 c7 14             	add    $0x14,%edi
 804d5f7:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 804d5fa:	c1 e0 02             	shl    $0x2,%eax
 804d5fd:	83 c2 14             	add    $0x14,%edx
 804d600:	8d 1c 07             	lea    (%edi,%eax,1),%ebx
 804d603:	01 d0                	add    %edx,%eax
 804d605:	89 55 d8             	mov    %edx,-0x28(%ebp)
 804d608:	8b 13                	mov    (%ebx),%edx
 804d60a:	89 45 c4             	mov    %eax,-0x3c(%ebp)
 804d60d:	8b 00                	mov    (%eax),%eax
 804d60f:	89 5d e4             	mov    %ebx,-0x1c(%ebp)
 804d612:	8d 4a 01             	lea    0x1(%edx),%ecx
 804d615:	31 d2                	xor    %edx,%edx
 804d617:	f7 f1                	div    %ecx
 804d619:	85 c0                	test   %eax,%eax
 804d61b:	89 45 e0             	mov    %eax,-0x20(%ebp)
 804d61e:	89 45 cc             	mov    %eax,-0x34(%ebp)
 804d621:	0f 84 b5 00 00 00    	je     804d6dc <quorem+0x10c>
 804d627:	8b 45 d8             	mov    -0x28(%ebp),%eax
 804d62a:	31 f6                	xor    %esi,%esi
 804d62c:	89 fa                	mov    %edi,%edx
 804d62e:	89 7d c0             	mov    %edi,-0x40(%ebp)
 804d631:	89 f7                	mov    %esi,%edi
 804d633:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%ebp)
 804d63a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 804d640:	83 c2 04             	add    $0x4,%edx
 804d643:	8b 72 fc             	mov    -0x4(%edx),%esi
 804d646:	83 c0 04             	add    $0x4,%eax
 804d649:	0f b7 ce             	movzwl %si,%ecx
 804d64c:	0f af 4d e0          	imul   -0x20(%ebp),%ecx
 804d650:	03 4d dc             	add    -0x24(%ebp),%ecx
 804d653:	c1 ee 10             	shr    $0x10,%esi
 804d656:	0f af 75 e0          	imul   -0x20(%ebp),%esi
 804d65a:	89 cb                	mov    %ecx,%ebx
 804d65c:	0f b7 c9             	movzwl %cx,%ecx
 804d65f:	c1 eb 10             	shr    $0x10,%ebx
 804d662:	29 cf                	sub    %ecx,%edi
 804d664:	01 f3                	add    %esi,%ebx
 804d666:	89 de                	mov    %ebx,%esi
 804d668:	0f b7 db             	movzwl %bx,%ebx
 804d66b:	c1 ee 10             	shr    $0x10,%esi
 804d66e:	89 75 dc             	mov    %esi,-0x24(%ebp)
 804d671:	8b 70 fc             	mov    -0x4(%eax),%esi
 804d674:	0f b7 ce             	movzwl %si,%ecx
 804d677:	01 f9                	add    %edi,%ecx
 804d679:	c1 ee 10             	shr    $0x10,%esi
 804d67c:	29 de                	sub    %ebx,%esi
 804d67e:	89 cb                	mov    %ecx,%ebx
 804d680:	c1 fb 10             	sar    $0x10,%ebx
 804d683:	0f b7 c9             	movzwl %cx,%ecx
 804d686:	01 de                	add    %ebx,%esi
 804d688:	89 f7                	mov    %esi,%edi
 804d68a:	c1 e6 10             	shl    $0x10,%esi
 804d68d:	09 ce                	or     %ecx,%esi
 804d68f:	c1 ff 10             	sar    $0x10,%edi
 804d692:	39 55 e4             	cmp    %edx,-0x1c(%ebp)
 804d695:	89 70 fc             	mov    %esi,-0x4(%eax)
 804d698:	73 a6                	jae    804d640 <quorem+0x70>
 804d69a:	8b 45 c4             	mov    -0x3c(%ebp),%eax
 804d69d:	8b 7d c0             	mov    -0x40(%ebp),%edi
 804d6a0:	8b 10                	mov    (%eax),%edx
 804d6a2:	85 d2                	test   %edx,%edx
 804d6a4:	75 36                	jne    804d6dc <quorem+0x10c>
 804d6a6:	8b 4d d8             	mov    -0x28(%ebp),%ecx
 804d6a9:	89 c2                	mov    %eax,%edx
 804d6ab:	83 e8 04             	sub    $0x4,%eax
 804d6ae:	39 c1                	cmp    %eax,%ecx
 804d6b0:	73 21                	jae    804d6d3 <quorem+0x103>
 804d6b2:	8b 72 fc             	mov    -0x4(%edx),%esi
 804d6b5:	85 f6                	test   %esi,%esi
 804d6b7:	75 1a                	jne    804d6d3 <quorem+0x103>
 804d6b9:	8b 55 d4             	mov    -0x2c(%ebp),%edx
 804d6bc:	eb 08                	jmp    804d6c6 <quorem+0xf6>
 804d6be:	66 90                	xchg   %ax,%ax
 804d6c0:	8b 18                	mov    (%eax),%ebx
 804d6c2:	85 db                	test   %ebx,%ebx
 804d6c4:	75 0a                	jne    804d6d0 <quorem+0x100>
 804d6c6:	83 e8 04             	sub    $0x4,%eax
 804d6c9:	83 ea 01             	sub    $0x1,%edx
 804d6cc:	39 c1                	cmp    %eax,%ecx
 804d6ce:	72 f0                	jb     804d6c0 <quorem+0xf0>
 804d6d0:	89 55 d4             	mov    %edx,-0x2c(%ebp)
 804d6d3:	8b 45 d0             	mov    -0x30(%ebp),%eax
 804d6d6:	8b 55 d4             	mov    -0x2c(%ebp),%edx
 804d6d9:	89 50 10             	mov    %edx,0x10(%eax)
 804d6dc:	8b 45 c8             	mov    -0x38(%ebp),%eax
 804d6df:	89 44 24 04          	mov    %eax,0x4(%esp)
 804d6e3:	8b 45 d0             	mov    -0x30(%ebp),%eax
 804d6e6:	89 04 24             	mov    %eax,(%esp)
 804d6e9:	e8 22 30 00 00       	call   8050710 <__mcmp>
 804d6ee:	85 c0                	test   %eax,%eax
 804d6f0:	0f 88 8e 00 00 00    	js     804d784 <quorem+0x1b4>
 804d6f6:	8b 45 e0             	mov    -0x20(%ebp),%eax
 804d6f9:	31 f6                	xor    %esi,%esi
 804d6fb:	83 c0 01             	add    $0x1,%eax
 804d6fe:	89 45 cc             	mov    %eax,-0x34(%ebp)
 804d701:	8b 45 d8             	mov    -0x28(%ebp),%eax
 804d704:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 804d708:	83 c7 04             	add    $0x4,%edi
 804d70b:	8b 4f fc             	mov    -0x4(%edi),%ecx
 804d70e:	83 c0 04             	add    $0x4,%eax
 804d711:	8b 58 fc             	mov    -0x4(%eax),%ebx
 804d714:	0f b7 d1             	movzwl %cx,%edx
 804d717:	29 d6                	sub    %edx,%esi
 804d719:	0f b7 d3             	movzwl %bx,%edx
 804d71c:	01 f2                	add    %esi,%edx
 804d71e:	c1 e9 10             	shr    $0x10,%ecx
 804d721:	c1 eb 10             	shr    $0x10,%ebx
 804d724:	29 cb                	sub    %ecx,%ebx
 804d726:	89 d1                	mov    %edx,%ecx
 804d728:	c1 f9 10             	sar    $0x10,%ecx
 804d72b:	0f b7 d2             	movzwl %dx,%edx
 804d72e:	01 cb                	add    %ecx,%ebx
 804d730:	89 de                	mov    %ebx,%esi
 804d732:	c1 e3 10             	shl    $0x10,%ebx
 804d735:	09 d3                	or     %edx,%ebx
 804d737:	c1 fe 10             	sar    $0x10,%esi
 804d73a:	39 7d e4             	cmp    %edi,-0x1c(%ebp)
 804d73d:	89 58 fc             	mov    %ebx,-0x4(%eax)
 804d740:	73 c6                	jae    804d708 <quorem+0x138>
 804d742:	8b 45 d8             	mov    -0x28(%ebp),%eax
 804d745:	8b 7d d4             	mov    -0x2c(%ebp),%edi
 804d748:	8d 14 b8             	lea    (%eax,%edi,4),%edx
 804d74b:	8b 02                	mov    (%edx),%eax
 804d74d:	85 c0                	test   %eax,%eax
 804d74f:	75 33                	jne    804d784 <quorem+0x1b4>
 804d751:	8b 4d d8             	mov    -0x28(%ebp),%ecx
 804d754:	8d 42 fc             	lea    -0x4(%edx),%eax
 804d757:	39 c1                	cmp    %eax,%ecx
 804d759:	73 20                	jae    804d77b <quorem+0x1ab>
 804d75b:	8b 72 fc             	mov    -0x4(%edx),%esi
 804d75e:	85 f6                	test   %esi,%esi
 804d760:	75 19                	jne    804d77b <quorem+0x1ab>
 804d762:	89 fa                	mov    %edi,%edx
 804d764:	eb 08                	jmp    804d76e <quorem+0x19e>
 804d766:	66 90                	xchg   %ax,%ax
 804d768:	8b 18                	mov    (%eax),%ebx
 804d76a:	85 db                	test   %ebx,%ebx
 804d76c:	75 0a                	jne    804d778 <quorem+0x1a8>
 804d76e:	83 e8 04             	sub    $0x4,%eax
 804d771:	83 ea 01             	sub    $0x1,%edx
 804d774:	39 c1                	cmp    %eax,%ecx
 804d776:	72 f0                	jb     804d768 <quorem+0x198>
 804d778:	89 55 d4             	mov    %edx,-0x2c(%ebp)
 804d77b:	8b 45 d0             	mov    -0x30(%ebp),%eax
 804d77e:	8b 7d d4             	mov    -0x2c(%ebp),%edi
 804d781:	89 78 10             	mov    %edi,0x10(%eax)
 804d784:	8b 45 cc             	mov    -0x34(%ebp),%eax
 804d787:	83 c4 3c             	add    $0x3c,%esp
 804d78a:	5b                   	pop    %ebx
 804d78b:	5e                   	pop    %esi
 804d78c:	5f                   	pop    %edi
 804d78d:	5d                   	pop    %ebp
 804d78e:	c3                   	ret    
 804d78f:	90                   	nop
 804d790:	83 c4 3c             	add    $0x3c,%esp
 804d793:	31 c0                	xor    %eax,%eax
 804d795:	5b                   	pop    %ebx
 804d796:	5e                   	pop    %esi
 804d797:	5f                   	pop    %edi
 804d798:	5d                   	pop    %ebp
 804d799:	c3                   	ret    
 804d79a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

0804d7a0 <_dtoa_r>:
 804d7a0:	55                   	push   %ebp
 804d7a1:	89 e5                	mov    %esp,%ebp
 804d7a3:	57                   	push   %edi
 804d7a4:	56                   	push   %esi
 804d7a5:	53                   	push   %ebx
 804d7a6:	81 ec 8c 00 00 00    	sub    $0x8c,%esp
 804d7ac:	8b 75 08             	mov    0x8(%ebp),%esi
 804d7af:	dd 45 0c             	fldl   0xc(%ebp)
 804d7b2:	8b 5d 20             	mov    0x20(%ebp),%ebx
 804d7b5:	dd 5d c0             	fstpl  -0x40(%ebp)
 804d7b8:	8b 46 40             	mov    0x40(%esi),%eax
 804d7bb:	85 c0                	test   %eax,%eax
 804d7bd:	74 23                	je     804d7e2 <_dtoa_r+0x42>
 804d7bf:	8b 4e 44             	mov    0x44(%esi),%ecx
 804d7c2:	ba 01 00 00 00       	mov    $0x1,%edx
 804d7c7:	d3 e2                	shl    %cl,%edx
 804d7c9:	89 48 04             	mov    %ecx,0x4(%eax)
 804d7cc:	89 50 08             	mov    %edx,0x8(%eax)
 804d7cf:	89 44 24 04          	mov    %eax,0x4(%esp)
 804d7d3:	89 34 24             	mov    %esi,(%esp)
 804d7d6:	e8 15 28 00 00       	call   804fff0 <_Bfree>
 804d7db:	c7 46 40 00 00 00 00 	movl   $0x0,0x40(%esi)
 804d7e2:	8b 7d c4             	mov    -0x3c(%ebp),%edi
 804d7e5:	85 ff                	test   %edi,%edi
 804d7e7:	0f 88 3b 02 00 00    	js     804da28 <_dtoa_r+0x288>
 804d7ed:	c7 03 00 00 00 00    	movl   $0x0,(%ebx)
 804d7f3:	89 f8                	mov    %edi,%eax
 804d7f5:	25 00 00 f0 7f       	and    $0x7ff00000,%eax
 804d7fa:	3d 00 00 f0 7f       	cmp    $0x7ff00000,%eax
 804d7ff:	0f 84 e3 01 00 00    	je     804d9e8 <_dtoa_r+0x248>
 804d805:	dd 45 c0             	fldl   -0x40(%ebp)
 804d808:	d9 ee                	fldz   
 804d80a:	d9 c9                	fxch   %st(1)
 804d80c:	db e9                	fucomi %st(1),%st
 804d80e:	dd d9                	fstp   %st(1)
 804d810:	7a 36                	jp     804d848 <_dtoa_r+0xa8>
 804d812:	75 34                	jne    804d848 <_dtoa_r+0xa8>
 804d814:	dd d8                	fstp   %st(0)
 804d816:	8b 4d 24             	mov    0x24(%ebp),%ecx
 804d819:	8b 45 1c             	mov    0x1c(%ebp),%eax
 804d81c:	85 c9                	test   %ecx,%ecx
 804d81e:	c7 00 01 00 00 00    	movl   $0x1,(%eax)
 804d824:	0f 84 4e 02 00 00    	je     804da78 <_dtoa_r+0x2d8>
 804d82a:	8b 45 24             	mov    0x24(%ebp),%eax
 804d82d:	c7 00 7e 46 05 08    	movl   $0x805467e,(%eax)
 804d833:	b8 7d 46 05 08       	mov    $0x805467d,%eax
 804d838:	81 c4 8c 00 00 00    	add    $0x8c,%esp
 804d83e:	5b                   	pop    %ebx
 804d83f:	5e                   	pop    %esi
 804d840:	5f                   	pop    %edi
 804d841:	5d                   	pop    %ebp
 804d842:	c3                   	ret    
 804d843:	90                   	nop
 804d844:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 804d848:	8d 45 e0             	lea    -0x20(%ebp),%eax
 804d84b:	89 fb                	mov    %edi,%ebx
 804d84d:	89 44 24 10          	mov    %eax,0x10(%esp)
 804d851:	8d 45 e4             	lea    -0x1c(%ebp),%eax
 804d854:	dd 54 24 04          	fstl   0x4(%esp)
 804d858:	89 44 24 0c          	mov    %eax,0xc(%esp)
 804d85c:	dd 5d b8             	fstpl  -0x48(%ebp)
 804d85f:	89 34 24             	mov    %esi,(%esp)
 804d862:	c1 eb 14             	shr    $0x14,%ebx
 804d865:	e8 f6 31 00 00       	call   8050a60 <__d2b>
 804d86a:	85 db                	test   %ebx,%ebx
 804d86c:	89 45 a4             	mov    %eax,-0x5c(%ebp)
 804d86f:	0f 85 db 01 00 00    	jne    804da50 <_dtoa_r+0x2b0>
 804d875:	8b 45 e0             	mov    -0x20(%ebp),%eax
 804d878:	8b 5d e4             	mov    -0x1c(%ebp),%ebx
 804d87b:	89 45 b4             	mov    %eax,-0x4c(%ebp)
 804d87e:	01 c3                	add    %eax,%ebx
 804d880:	81 fb ef fb ff ff    	cmp    $0xfffffbef,%ebx
 804d886:	0f 8c ec 07 00 00    	jl     804e078 <_dtoa_r+0x8d8>
 804d88c:	8b 55 c0             	mov    -0x40(%ebp),%edx
 804d88f:	b9 0e fc ff ff       	mov    $0xfffffc0e,%ecx
 804d894:	89 f8                	mov    %edi,%eax
 804d896:	29 d9                	sub    %ebx,%ecx
 804d898:	d3 e0                	shl    %cl,%eax
 804d89a:	8d 8b 12 04 00 00    	lea    0x412(%ebx),%ecx
 804d8a0:	d3 ea                	shr    %cl,%edx
 804d8a2:	09 d0                	or     %edx,%eax
 804d8a4:	31 d2                	xor    %edx,%edx
 804d8a6:	83 eb 01             	sub    $0x1,%ebx
 804d8a9:	89 55 cc             	mov    %edx,-0x34(%ebp)
 804d8ac:	8b 55 b4             	mov    -0x4c(%ebp),%edx
 804d8af:	89 45 c8             	mov    %eax,-0x38(%ebp)
 804d8b2:	df 6d c8             	fildll -0x38(%ebp)
 804d8b5:	dd 5d b8             	fstpl  -0x48(%ebp)
 804d8b8:	81 6d bc 00 00 f0 01 	subl   $0x1f00000,-0x44(%ebp)
 804d8bf:	c7 45 8c 01 00 00 00 	movl   $0x1,-0x74(%ebp)
 804d8c6:	dd 45 b8             	fldl   -0x48(%ebp)
 804d8c9:	d8 25 60 4c 05 08    	fsubs  0x8054c60
 804d8cf:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 804d8d2:	d9 7d d2             	fnstcw -0x2e(%ebp)
 804d8d5:	dc 0d 78 4c 05 08    	fmull  0x8054c78
 804d8db:	0f b7 45 d2          	movzwl -0x2e(%ebp),%eax
 804d8df:	b4 0c                	mov    $0xc,%ah
 804d8e1:	dc 05 80 4c 05 08    	faddl  0x8054c80
 804d8e7:	66 89 45 d0          	mov    %ax,-0x30(%ebp)
 804d8eb:	db 45 d4             	fildl  -0x2c(%ebp)
 804d8ee:	dc 0d 88 4c 05 08    	fmull  0x8054c88
 804d8f4:	de c1                	faddp  %st,%st(1)
 804d8f6:	d9 6d d0             	fldcw  -0x30(%ebp)
 804d8f9:	db 55 b8             	fistl  -0x48(%ebp)
 804d8fc:	d9 6d d2             	fldcw  -0x2e(%ebp)
 804d8ff:	d9 ee                	fldz   
 804d901:	df e9                	fucomip %st(1),%st
 804d903:	0f 87 27 07 00 00    	ja     804e030 <_dtoa_r+0x890>
 804d909:	dd d8                	fstp   %st(0)
 804d90b:	83 7d b8 16          	cmpl   $0x16,-0x48(%ebp)
 804d90f:	c7 45 9c 01 00 00 00 	movl   $0x1,-0x64(%ebp)
 804d916:	77 24                	ja     804d93c <_dtoa_r+0x19c>
 804d918:	8b 45 b8             	mov    -0x48(%ebp),%eax
 804d91b:	dd 04 c5 40 4d 05 08 	fldl   0x8054d40(,%eax,8)
 804d922:	dd 45 c0             	fldl   -0x40(%ebp)
 804d925:	d9 c9                	fxch   %st(1)
 804d927:	df e9                	fucomip %st(1),%st
 804d929:	dd d8                	fstp   %st(0)
 804d92b:	0f 86 5f 07 00 00    	jbe    804e090 <_dtoa_r+0x8f0>
 804d931:	83 6d b8 01          	subl   $0x1,-0x48(%ebp)
 804d935:	c7 45 9c 00 00 00 00 	movl   $0x0,-0x64(%ebp)
 804d93c:	89 d0                	mov    %edx,%eax
 804d93e:	29 d8                	sub    %ebx,%eax
 804d940:	83 e8 01             	sub    $0x1,%eax
 804d943:	c7 45 a0 00 00 00 00 	movl   $0x0,-0x60(%ebp)
 804d94a:	89 45 ac             	mov    %eax,-0x54(%ebp)
 804d94d:	0f 88 0d 07 00 00    	js     804e060 <_dtoa_r+0x8c0>
 804d953:	8b 45 b8             	mov    -0x48(%ebp),%eax
 804d956:	85 c0                	test   %eax,%eax
 804d958:	0f 88 ea 06 00 00    	js     804e048 <_dtoa_r+0x8a8>
 804d95e:	01 45 ac             	add    %eax,-0x54(%ebp)
 804d961:	89 45 94             	mov    %eax,-0x6c(%ebp)
 804d964:	c7 45 b0 00 00 00 00 	movl   $0x0,-0x50(%ebp)
 804d96b:	83 7d 14 09          	cmpl   $0x9,0x14(%ebp)
 804d96f:	0f 87 0b 03 00 00    	ja     804dc80 <_dtoa_r+0x4e0>
 804d975:	83 7d 14 05          	cmpl   $0x5,0x14(%ebp)
 804d979:	0f 8e 23 10 00 00    	jle    804e9a2 <_dtoa_r+0x1202>
 804d97f:	83 6d 14 04          	subl   $0x4,0x14(%ebp)
 804d983:	31 c0                	xor    %eax,%eax
 804d985:	83 7d 14 03          	cmpl   $0x3,0x14(%ebp)
 804d989:	0f 84 43 0d 00 00    	je     804e6d2 <_dtoa_r+0xf32>
 804d98f:	0f 8e f3 00 00 00    	jle    804da88 <_dtoa_r+0x2e8>
 804d995:	83 7d 14 04          	cmpl   $0x4,0x14(%ebp)
 804d999:	c7 45 98 01 00 00 00 	movl   $0x1,-0x68(%ebp)
 804d9a0:	0f 84 f3 00 00 00    	je     804da99 <_dtoa_r+0x2f9>
 804d9a6:	83 7d 14 05          	cmpl   $0x5,0x14(%ebp)
 804d9aa:	0f 85 d7 02 00 00    	jne    804dc87 <_dtoa_r+0x4e7>
 804d9b0:	8b 5d b8             	mov    -0x48(%ebp),%ebx
 804d9b3:	03 5d 18             	add    0x18(%ebp),%ebx
 804d9b6:	89 5d 90             	mov    %ebx,-0x70(%ebp)
 804d9b9:	83 c3 01             	add    $0x1,%ebx
 804d9bc:	83 fb 0e             	cmp    $0xe,%ebx
 804d9bf:	0f 96 c2             	setbe  %dl
 804d9c2:	85 db                	test   %ebx,%ebx
 804d9c4:	89 5d a8             	mov    %ebx,-0x58(%ebp)
 804d9c7:	0f 8e a7 08 00 00    	jle    804e274 <_dtoa_r+0xad4>
 804d9cd:	8b 5d a8             	mov    -0x58(%ebp),%ebx
 804d9d0:	83 fb 0e             	cmp    $0xe,%ebx
 804d9d3:	89 df                	mov    %ebx,%edi
 804d9d5:	0f 96 45 b4          	setbe  -0x4c(%ebp)
 804d9d9:	20 45 b4             	and    %al,-0x4c(%ebp)
 804d9dc:	e9 d6 00 00 00       	jmp    804dab7 <_dtoa_r+0x317>
 804d9e1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 804d9e8:	8b 55 c0             	mov    -0x40(%ebp),%edx
 804d9eb:	8b 45 1c             	mov    0x1c(%ebp),%eax
 804d9ee:	85 d2                	test   %edx,%edx
 804d9f0:	c7 00 0f 27 00 00    	movl   $0x270f,(%eax)
 804d9f6:	b8 59 4c 05 08       	mov    $0x8054c59,%eax
 804d9fb:	74 43                	je     804da40 <_dtoa_r+0x2a0>
 804d9fd:	8b 5d 24             	mov    0x24(%ebp),%ebx
 804da00:	85 db                	test   %ebx,%ebx
 804da02:	0f 84 30 fe ff ff    	je     804d838 <_dtoa_r+0x98>
 804da08:	8b 75 24             	mov    0x24(%ebp),%esi
 804da0b:	8d 50 08             	lea    0x8(%eax),%edx
 804da0e:	80 78 03 00          	cmpb   $0x0,0x3(%eax)
 804da12:	8d 48 03             	lea    0x3(%eax),%ecx
 804da15:	0f 44 d1             	cmove  %ecx,%edx
 804da18:	89 16                	mov    %edx,(%esi)
 804da1a:	81 c4 8c 00 00 00    	add    $0x8c,%esp
 804da20:	5b                   	pop    %ebx
 804da21:	5e                   	pop    %esi
 804da22:	5f                   	pop    %edi
 804da23:	5d                   	pop    %ebp
 804da24:	c3                   	ret    
 804da25:	8d 76 00             	lea    0x0(%esi),%esi
 804da28:	81 e7 ff ff ff 7f    	and    $0x7fffffff,%edi
 804da2e:	c7 03 01 00 00 00    	movl   $0x1,(%ebx)
 804da34:	89 7d c4             	mov    %edi,-0x3c(%ebp)
 804da37:	e9 b7 fd ff ff       	jmp    804d7f3 <_dtoa_r+0x53>
 804da3c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 804da40:	81 e7 ff ff 0f 00    	and    $0xfffff,%edi
 804da46:	ba 50 4c 05 08       	mov    $0x8054c50,%edx
 804da4b:	0f 44 c2             	cmove  %edx,%eax
 804da4e:	eb ad                	jmp    804d9fd <_dtoa_r+0x25d>
 804da50:	8b 45 bc             	mov    -0x44(%ebp),%eax
 804da53:	81 eb ff 03 00 00    	sub    $0x3ff,%ebx
 804da59:	8b 55 e0             	mov    -0x20(%ebp),%edx
 804da5c:	c7 45 8c 00 00 00 00 	movl   $0x0,-0x74(%ebp)
 804da63:	25 ff ff 0f 00       	and    $0xfffff,%eax
 804da68:	0d 00 00 f0 3f       	or     $0x3ff00000,%eax
 804da6d:	89 45 bc             	mov    %eax,-0x44(%ebp)
 804da70:	e9 51 fe ff ff       	jmp    804d8c6 <_dtoa_r+0x126>
 804da75:	8d 76 00             	lea    0x0(%esi),%esi
 804da78:	b8 7d 46 05 08       	mov    $0x805467d,%eax
 804da7d:	e9 b6 fd ff ff       	jmp    804d838 <_dtoa_r+0x98>
 804da82:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 804da88:	83 7d 14 02          	cmpl   $0x2,0x14(%ebp)
 804da8c:	c7 45 98 00 00 00 00 	movl   $0x0,-0x68(%ebp)
 804da93:	0f 85 ee 01 00 00    	jne    804dc87 <_dtoa_r+0x4e7>
 804da99:	8b 55 18             	mov    0x18(%ebp),%edx
 804da9c:	85 d2                	test   %edx,%edx
 804da9e:	0f 8e b6 07 00 00    	jle    804e25a <_dtoa_r+0xaba>
 804daa4:	8b 7d 18             	mov    0x18(%ebp),%edi
 804daa7:	83 ff 0e             	cmp    $0xe,%edi
 804daaa:	0f 96 45 b4          	setbe  -0x4c(%ebp)
 804daae:	20 45 b4             	and    %al,-0x4c(%ebp)
 804dab1:	89 7d 90             	mov    %edi,-0x70(%ebp)
 804dab4:	89 7d a8             	mov    %edi,-0x58(%ebp)
 804dab7:	83 ff 17             	cmp    $0x17,%edi
 804daba:	c7 46 44 00 00 00 00 	movl   $0x0,0x44(%esi)
 804dac1:	0f 86 e5 0e 00 00    	jbe    804e9ac <_dtoa_r+0x120c>
 804dac7:	b9 01 00 00 00       	mov    $0x1,%ecx
 804dacc:	b8 04 00 00 00       	mov    $0x4,%eax
 804dad1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 804dad8:	01 c0                	add    %eax,%eax
 804dada:	89 ca                	mov    %ecx,%edx
 804dadc:	8d 58 14             	lea    0x14(%eax),%ebx
 804dadf:	39 fb                	cmp    %edi,%ebx
 804dae1:	8d 49 01             	lea    0x1(%ecx),%ecx
 804dae4:	76 f2                	jbe    804dad8 <_dtoa_r+0x338>
 804dae6:	89 56 44             	mov    %edx,0x44(%esi)
 804dae9:	89 54 24 04          	mov    %edx,0x4(%esp)
 804daed:	89 34 24             	mov    %esi,(%esp)
 804daf0:	e8 5b 24 00 00       	call   804ff50 <_Balloc>
 804daf5:	80 7d b4 00          	cmpb   $0x0,-0x4c(%ebp)
 804daf9:	89 c7                	mov    %eax,%edi
 804dafb:	89 46 40             	mov    %eax,0x40(%esi)
 804dafe:	0f 84 bb 01 00 00    	je     804dcbf <_dtoa_r+0x51f>
 804db04:	8b 5d b8             	mov    -0x48(%ebp),%ebx
 804db07:	dd 45 c0             	fldl   -0x40(%ebp)
 804db0a:	85 db                	test   %ebx,%ebx
 804db0c:	0f 8e de 07 00 00    	jle    804e2f0 <_dtoa_r+0xb50>
 804db12:	89 d8                	mov    %ebx,%eax
 804db14:	83 e0 0f             	and    $0xf,%eax
 804db17:	dd 04 c5 40 4d 05 08 	fldl   0x8054d40(,%eax,8)
 804db1e:	89 d8                	mov    %ebx,%eax
 804db20:	c1 f8 04             	sar    $0x4,%eax
 804db23:	a8 10                	test   $0x10,%al
 804db25:	0f 84 cd 05 00 00    	je     804e0f8 <_dtoa_r+0x958>
 804db2b:	dd 05 20 4d 05 08    	fldl   0x8054d20
 804db31:	83 e0 0f             	and    $0xf,%eax
 804db34:	b9 03 00 00 00       	mov    $0x3,%ecx
 804db39:	d8 fa                	fdivr  %st(2),%st
 804db3b:	85 c0                	test   %eax,%eax
 804db3d:	74 22                	je     804db61 <_dtoa_r+0x3c1>
 804db3f:	31 d2                	xor    %edx,%edx
 804db41:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 804db48:	a8 01                	test   $0x1,%al
 804db4a:	74 0e                	je     804db5a <_dtoa_r+0x3ba>
 804db4c:	d9 c9                	fxch   %st(1)
 804db4e:	dc 0c d5 00 4d 05 08 	fmull  0x8054d00(,%edx,8)
 804db55:	d9 c9                	fxch   %st(1)
 804db57:	83 c1 01             	add    $0x1,%ecx
 804db5a:	83 c2 01             	add    $0x1,%edx
 804db5d:	d1 f8                	sar    %eax
 804db5f:	75 e7                	jne    804db48 <_dtoa_r+0x3a8>
 804db61:	de f1                	fdivp  %st,%st(1)
 804db63:	8b 45 9c             	mov    -0x64(%ebp),%eax
 804db66:	85 c0                	test   %eax,%eax
 804db68:	74 0a                	je     804db74 <_dtoa_r+0x3d4>
 804db6a:	d9 e8                	fld1   
 804db6c:	df e9                	fucomip %st(1),%st
 804db6e:	0f 87 92 0b 00 00    	ja     804e706 <_dtoa_r+0xf66>
 804db74:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
 804db77:	8b 45 a8             	mov    -0x58(%ebp),%eax
 804db7a:	db 45 d4             	fildl  -0x2c(%ebp)
 804db7d:	d8 c9                	fmul   %st(1),%st
 804db7f:	d8 05 6c 4c 05 08    	fadds  0x8054c6c
 804db85:	dd 5d c0             	fstpl  -0x40(%ebp)
 804db88:	81 6d c4 00 00 40 03 	subl   $0x3400000,-0x3c(%ebp)
 804db8f:	85 c0                	test   %eax,%eax
 804db91:	0f 84 89 05 00 00    	je     804e120 <_dtoa_r+0x980>
 804db97:	8b 45 b8             	mov    -0x48(%ebp),%eax
 804db9a:	8b 4d a8             	mov    -0x58(%ebp),%ecx
 804db9d:	89 45 b4             	mov    %eax,-0x4c(%ebp)
 804dba0:	8b 45 98             	mov    -0x68(%ebp),%eax
 804dba3:	85 c0                	test   %eax,%eax
 804dba5:	0f 84 b5 07 00 00    	je     804e360 <_dtoa_r+0xbc0>
 804dbab:	d9 05 74 4c 05 08    	flds   0x8054c74
 804dbb1:	8d 57 01             	lea    0x1(%edi),%edx
 804dbb4:	dc 34 cd 38 4d 05 08 	fdivl  0x8054d38(,%ecx,8)
 804dbbb:	d9 7d d2             	fnstcw -0x2e(%ebp)
 804dbbe:	0f b7 45 d2          	movzwl -0x2e(%ebp),%eax
 804dbc2:	b4 0c                	mov    $0xc,%ah
 804dbc4:	66 89 45 d0          	mov    %ax,-0x30(%ebp)
 804dbc8:	dc 65 c0             	fsubl  -0x40(%ebp)
 804dbcb:	d9 c9                	fxch   %st(1)
 804dbcd:	d9 6d d0             	fldcw  -0x30(%ebp)
 804dbd0:	db 55 d4             	fistl  -0x2c(%ebp)
 804dbd3:	d9 6d d2             	fldcw  -0x2e(%ebp)
 804dbd6:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 804dbd9:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 804dbdc:	83 c0 30             	add    $0x30,%eax
 804dbdf:	db 45 d4             	fildl  -0x2c(%ebp)
 804dbe2:	de e9                	fsubrp %st,%st(1)
 804dbe4:	d9 c9                	fxch   %st(1)
 804dbe6:	88 07                	mov    %al,(%edi)
 804dbe8:	db e9                	fucomi %st(1),%st
 804dbea:	77 7f                	ja     804dc6b <_dtoa_r+0x4cb>
 804dbec:	d9 c1                	fld    %st(1)
 804dbee:	d8 2d 64 4c 05 08    	fsubrs 0x8054c64
 804dbf4:	d9 c9                	fxch   %st(1)
 804dbf6:	db e9                	fucomi %st(1),%st
 804dbf8:	dd d9                	fstp   %st(1)
 804dbfa:	0f 87 33 0c 00 00    	ja     804e833 <_dtoa_r+0x1093>
 804dc00:	83 f9 01             	cmp    $0x1,%ecx
 804dc03:	0f 8e c4 06 00 00    	jle    804e2cd <_dtoa_r+0xb2d>
 804dc09:	01 f9                	add    %edi,%ecx
 804dc0b:	d9 05 68 4c 05 08    	flds   0x8054c68
 804dc11:	eb 25                	jmp    804dc38 <_dtoa_r+0x498>
 804dc13:	90                   	nop
 804dc14:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 804dc18:	d9 c1                	fld    %st(1)
 804dc1a:	d8 2d 64 4c 05 08    	fsubrs 0x8054c64
 804dc20:	d9 c9                	fxch   %st(1)
 804dc22:	db e9                	fucomi %st(1),%st
 804dc24:	dd d9                	fstp   %st(1)
 804dc26:	0f 87 14 0c 00 00    	ja     804e840 <_dtoa_r+0x10a0>
 804dc2c:	39 ca                	cmp    %ecx,%edx
 804dc2e:	0f 84 a4 06 00 00    	je     804e2d8 <_dtoa_r+0xb38>
 804dc34:	d9 c9                	fxch   %st(1)
 804dc36:	d9 ca                	fxch   %st(2)
 804dc38:	dc c9                	fmul   %st,%st(1)
 804dc3a:	83 c2 01             	add    $0x1,%edx
 804dc3d:	dc ca                	fmul   %st,%st(2)
 804dc3f:	d9 ca                	fxch   %st(2)
 804dc41:	d9 6d d0             	fldcw  -0x30(%ebp)
 804dc44:	db 55 d4             	fistl  -0x2c(%ebp)
 804dc47:	d9 6d d2             	fldcw  -0x2e(%ebp)
 804dc4a:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 804dc4d:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 804dc50:	83 c0 30             	add    $0x30,%eax
 804dc53:	db 45 d4             	fildl  -0x2c(%ebp)
 804dc56:	de e9                	fsubrp %st,%st(1)
 804dc58:	d9 c9                	fxch   %st(1)
 804dc5a:	88 42 ff             	mov    %al,-0x1(%edx)
 804dc5d:	db e9                	fucomi %st(1),%st
 804dc5f:	76 b7                	jbe    804dc18 <_dtoa_r+0x478>
 804dc61:	dd d8                	fstp   %st(0)
 804dc63:	dd d8                	fstp   %st(0)
 804dc65:	dd d8                	fstp   %st(0)
 804dc67:	dd d8                	fstp   %st(0)
 804dc69:	eb 06                	jmp    804dc71 <_dtoa_r+0x4d1>
 804dc6b:	dd d8                	fstp   %st(0)
 804dc6d:	dd d8                	fstp   %st(0)
 804dc6f:	dd d8                	fstp   %st(0)
 804dc71:	8b 45 b4             	mov    -0x4c(%ebp),%eax
 804dc74:	89 fb                	mov    %edi,%ebx
 804dc76:	89 d7                	mov    %edx,%edi
 804dc78:	89 45 b8             	mov    %eax,-0x48(%ebp)
 804dc7b:	e9 70 03 00 00       	jmp    804dff0 <_dtoa_r+0x850>
 804dc80:	c7 45 14 00 00 00 00 	movl   $0x0,0x14(%ebp)
 804dc87:	c7 46 44 00 00 00 00 	movl   $0x0,0x44(%esi)
 804dc8e:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 804dc95:	00 
 804dc96:	89 34 24             	mov    %esi,(%esp)
 804dc99:	e8 b2 22 00 00       	call   804ff50 <_Balloc>
 804dc9e:	c7 45 98 01 00 00 00 	movl   $0x1,-0x68(%ebp)
 804dca5:	c7 45 a8 ff ff ff ff 	movl   $0xffffffff,-0x58(%ebp)
 804dcac:	c7 45 90 ff ff ff ff 	movl   $0xffffffff,-0x70(%ebp)
 804dcb3:	c7 45 18 00 00 00 00 	movl   $0x0,0x18(%ebp)
 804dcba:	89 c7                	mov    %eax,%edi
 804dcbc:	89 46 40             	mov    %eax,0x40(%esi)
 804dcbf:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 804dcc2:	85 c0                	test   %eax,%eax
 804dcc4:	0f 88 2e 01 00 00    	js     804ddf8 <_dtoa_r+0x658>
 804dcca:	83 7d b8 0e          	cmpl   $0xe,-0x48(%ebp)
 804dcce:	0f 8f 24 01 00 00    	jg     804ddf8 <_dtoa_r+0x658>
 804dcd4:	8b 45 b8             	mov    -0x48(%ebp),%eax
 804dcd7:	dd 04 c5 40 4d 05 08 	fldl   0x8054d40(,%eax,8)
 804dcde:	8b 45 a8             	mov    -0x58(%ebp),%eax
 804dce1:	85 c0                	test   %eax,%eax
 804dce3:	7f 0e                	jg     804dcf3 <_dtoa_r+0x553>
 804dce5:	8b 45 18             	mov    0x18(%ebp),%eax
 804dce8:	c1 e8 1f             	shr    $0x1f,%eax
 804dceb:	84 c0                	test   %al,%al
 804dced:	0f 85 9d 07 00 00    	jne    804e490 <_dtoa_r+0xcf0>
 804dcf3:	dd 45 c0             	fldl   -0x40(%ebp)
 804dcf6:	d9 c0                	fld    %st(0)
 804dcf8:	d8 f2                	fdiv   %st(2),%st
 804dcfa:	d9 7d d2             	fnstcw -0x2e(%ebp)
 804dcfd:	83 7d a8 01          	cmpl   $0x1,-0x58(%ebp)
 804dd01:	0f b7 45 d2          	movzwl -0x2e(%ebp),%eax
 804dd05:	b4 0c                	mov    $0xc,%ah
 804dd07:	66 89 45 d0          	mov    %ax,-0x30(%ebp)
 804dd0b:	8d 47 01             	lea    0x1(%edi),%eax
 804dd0e:	89 45 c0             	mov    %eax,-0x40(%ebp)
 804dd11:	d9 6d d0             	fldcw  -0x30(%ebp)
 804dd14:	db 5d d4             	fistpl -0x2c(%ebp)
 804dd17:	d9 6d d2             	fldcw  -0x2e(%ebp)
 804dd1a:	8b 55 d4             	mov    -0x2c(%ebp),%edx
 804dd1d:	89 55 d4             	mov    %edx,-0x2c(%ebp)
 804dd20:	8d 42 30             	lea    0x30(%edx),%eax
 804dd23:	db 45 d4             	fildl  -0x2c(%ebp)
 804dd26:	d8 ca                	fmul   %st(2),%st
 804dd28:	88 07                	mov    %al,(%edi)
 804dd2a:	de e9                	fsubrp %st,%st(1)
 804dd2c:	74 66                	je     804dd94 <_dtoa_r+0x5f4>
 804dd2e:	d8 0d 68 4c 05 08    	fmuls  0x8054c68
 804dd34:	d9 ee                	fldz   
 804dd36:	d9 c9                	fxch   %st(1)
 804dd38:	db e9                	fucomi %st(1),%st
 804dd3a:	dd d9                	fstp   %st(1)
 804dd3c:	0f 8b 33 0c 00 00    	jnp    804e975 <_dtoa_r+0x11d5>
 804dd42:	8b 5d a8             	mov    -0x58(%ebp),%ebx
 804dd45:	8d 47 02             	lea    0x2(%edi),%eax
 804dd48:	d9 05 68 4c 05 08    	flds   0x8054c68
 804dd4e:	01 fb                	add    %edi,%ebx
 804dd50:	eb 19                	jmp    804dd6b <_dtoa_r+0x5cb>
 804dd52:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 804dd58:	dc c9                	fmul   %st,%st(1)
 804dd5a:	83 c0 01             	add    $0x1,%eax
 804dd5d:	d9 ee                	fldz   
 804dd5f:	d9 ca                	fxch   %st(2)
 804dd61:	db ea                	fucomi %st(2),%st
 804dd63:	dd da                	fstp   %st(2)
 804dd65:	0f 8b 73 09 00 00    	jnp    804e6de <_dtoa_r+0xf3e>
 804dd6b:	d9 c1                	fld    %st(1)
 804dd6d:	39 d8                	cmp    %ebx,%eax
 804dd6f:	d8 f3                	fdiv   %st(3),%st
 804dd71:	89 45 c0             	mov    %eax,-0x40(%ebp)
 804dd74:	d9 6d d0             	fldcw  -0x30(%ebp)
 804dd77:	db 5d d4             	fistpl -0x2c(%ebp)
 804dd7a:	d9 6d d2             	fldcw  -0x2e(%ebp)
 804dd7d:	8b 55 d4             	mov    -0x2c(%ebp),%edx
 804dd80:	89 55 d4             	mov    %edx,-0x2c(%ebp)
 804dd83:	8d 4a 30             	lea    0x30(%edx),%ecx
 804dd86:	db 45 d4             	fildl  -0x2c(%ebp)
 804dd89:	d8 cb                	fmul   %st(3),%st
 804dd8b:	88 48 ff             	mov    %cl,-0x1(%eax)
 804dd8e:	de ea                	fsubrp %st,%st(2)
 804dd90:	75 c6                	jne    804dd58 <_dtoa_r+0x5b8>
 804dd92:	dd d8                	fstp   %st(0)
 804dd94:	d8 c0                	fadd   %st(0),%st
 804dd96:	db e9                	fucomi %st(1),%st
 804dd98:	77 1e                	ja     804ddb8 <_dtoa_r+0x618>
 804dd9a:	d9 c9                	fxch   %st(1)
 804dd9c:	df e9                	fucomip %st(1),%st
 804dd9e:	dd d8                	fstp   %st(0)
 804dda0:	0f 8a 44 09 00 00    	jp     804e6ea <_dtoa_r+0xf4a>
 804dda6:	0f 85 3e 09 00 00    	jne    804e6ea <_dtoa_r+0xf4a>
 804ddac:	83 e2 01             	and    $0x1,%edx
 804ddaf:	90                   	nop
 804ddb0:	0f 84 34 09 00 00    	je     804e6ea <_dtoa_r+0xf4a>
 804ddb6:	eb 04                	jmp    804ddbc <_dtoa_r+0x61c>
 804ddb8:	dd d8                	fstp   %st(0)
 804ddba:	dd d8                	fstp   %st(0)
 804ddbc:	8b 4d c0             	mov    -0x40(%ebp),%ecx
 804ddbf:	89 fb                	mov    %edi,%ebx
 804ddc1:	0f b6 41 ff          	movzbl -0x1(%ecx),%eax
 804ddc5:	89 cf                	mov    %ecx,%edi
 804ddc7:	8b 4d b8             	mov    -0x48(%ebp),%ecx
 804ddca:	89 4d b4             	mov    %ecx,-0x4c(%ebp)
 804ddcd:	eb 0f                	jmp    804ddde <_dtoa_r+0x63e>
 804ddcf:	90                   	nop
 804ddd0:	39 d3                	cmp    %edx,%ebx
 804ddd2:	0f 84 75 09 00 00    	je     804e74d <_dtoa_r+0xfad>
 804ddd8:	0f b6 42 ff          	movzbl -0x1(%edx),%eax
 804dddc:	89 d7                	mov    %edx,%edi
 804ddde:	3c 39                	cmp    $0x39,%al
 804dde0:	8d 57 ff             	lea    -0x1(%edi),%edx
 804dde3:	74 eb                	je     804ddd0 <_dtoa_r+0x630>
 804dde5:	8b 4d b4             	mov    -0x4c(%ebp),%ecx
 804dde8:	83 c0 01             	add    $0x1,%eax
 804ddeb:	88 02                	mov    %al,(%edx)
 804dded:	89 4d b8             	mov    %ecx,-0x48(%ebp)
 804ddf0:	e9 fb 01 00 00       	jmp    804dff0 <_dtoa_r+0x850>
 804ddf5:	8d 76 00             	lea    0x0(%esi),%esi
 804ddf8:	8b 4d 98             	mov    -0x68(%ebp),%ecx
 804ddfb:	85 c9                	test   %ecx,%ecx
 804ddfd:	0f 85 9d 02 00 00    	jne    804e0a0 <_dtoa_r+0x900>
 804de03:	8b 55 b0             	mov    -0x50(%ebp),%edx
 804de06:	8b 5d a0             	mov    -0x60(%ebp),%ebx
 804de09:	c7 45 b4 00 00 00 00 	movl   $0x0,-0x4c(%ebp)
 804de10:	8b 45 ac             	mov    -0x54(%ebp),%eax
 804de13:	85 c0                	test   %eax,%eax
 804de15:	7e 14                	jle    804de2b <_dtoa_r+0x68b>
 804de17:	85 db                	test   %ebx,%ebx
 804de19:	7e 10                	jle    804de2b <_dtoa_r+0x68b>
 804de1b:	8b 45 ac             	mov    -0x54(%ebp),%eax
 804de1e:	39 d8                	cmp    %ebx,%eax
 804de20:	0f 4f c3             	cmovg  %ebx,%eax
 804de23:	29 45 a0             	sub    %eax,-0x60(%ebp)
 804de26:	29 c3                	sub    %eax,%ebx
 804de28:	29 45 ac             	sub    %eax,-0x54(%ebp)
 804de2b:	8b 45 b0             	mov    -0x50(%ebp),%eax
 804de2e:	85 c0                	test   %eax,%eax
 804de30:	7e 61                	jle    804de93 <_dtoa_r+0x6f3>
 804de32:	8b 45 98             	mov    -0x68(%ebp),%eax
 804de35:	85 c0                	test   %eax,%eax
 804de37:	0f 84 72 04 00 00    	je     804e2af <_dtoa_r+0xb0f>
 804de3d:	85 d2                	test   %edx,%edx
 804de3f:	7e 47                	jle    804de88 <_dtoa_r+0x6e8>
 804de41:	8b 45 b4             	mov    -0x4c(%ebp),%eax
 804de44:	89 54 24 08          	mov    %edx,0x8(%esp)
 804de48:	89 34 24             	mov    %esi,(%esp)
 804de4b:	89 55 88             	mov    %edx,-0x78(%ebp)
 804de4e:	89 44 24 04          	mov    %eax,0x4(%esp)
 804de52:	e8 79 26 00 00       	call   80504d0 <__pow5mult>
 804de57:	8b 4d a4             	mov    -0x5c(%ebp),%ecx
 804de5a:	89 34 24             	mov    %esi,(%esp)
 804de5d:	89 4c 24 08          	mov    %ecx,0x8(%esp)
 804de61:	89 44 24 04          	mov    %eax,0x4(%esp)
 804de65:	89 45 b4             	mov    %eax,-0x4c(%ebp)
 804de68:	e8 93 24 00 00       	call   8050300 <__multiply>
 804de6d:	8b 4d a4             	mov    -0x5c(%ebp),%ecx
 804de70:	89 34 24             	mov    %esi,(%esp)
 804de73:	89 4c 24 04          	mov    %ecx,0x4(%esp)
 804de77:	89 45 8c             	mov    %eax,-0x74(%ebp)
 804de7a:	e8 71 21 00 00       	call   804fff0 <_Bfree>
 804de7f:	8b 45 8c             	mov    -0x74(%ebp),%eax
 804de82:	8b 55 88             	mov    -0x78(%ebp),%edx
 804de85:	89 45 a4             	mov    %eax,-0x5c(%ebp)
 804de88:	8b 45 b0             	mov    -0x50(%ebp),%eax
 804de8b:	29 d0                	sub    %edx,%eax
 804de8d:	0f 85 1f 04 00 00    	jne    804e2b2 <_dtoa_r+0xb12>
 804de93:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
 804de9a:	00 
 804de9b:	89 34 24             	mov    %esi,(%esp)
 804de9e:	e8 2d 24 00 00       	call   80502d0 <__i2b>
 804dea3:	8b 4d 94             	mov    -0x6c(%ebp),%ecx
 804dea6:	85 c9                	test   %ecx,%ecx
 804dea8:	89 45 b0             	mov    %eax,-0x50(%ebp)
 804deab:	7e 13                	jle    804dec0 <_dtoa_r+0x720>
 804dead:	89 4c 24 08          	mov    %ecx,0x8(%esp)
 804deb1:	89 44 24 04          	mov    %eax,0x4(%esp)
 804deb5:	89 34 24             	mov    %esi,(%esp)
 804deb8:	e8 13 26 00 00       	call   80504d0 <__pow5mult>
 804debd:	89 45 b0             	mov    %eax,-0x50(%ebp)
 804dec0:	83 7d 14 01          	cmpl   $0x1,0x14(%ebp)
 804dec4:	c7 45 8c 00 00 00 00 	movl   $0x0,-0x74(%ebp)
 804decb:	0f 8e f7 05 00 00    	jle    804e4c8 <_dtoa_r+0xd28>
 804ded1:	8b 45 94             	mov    -0x6c(%ebp),%eax
 804ded4:	ba 01 00 00 00       	mov    $0x1,%edx
 804ded9:	85 c0                	test   %eax,%eax
 804dedb:	0f 85 27 05 00 00    	jne    804e408 <_dtoa_r+0xc68>
 804dee1:	8b 45 ac             	mov    -0x54(%ebp),%eax
 804dee4:	01 d0                	add    %edx,%eax
 804dee6:	83 e0 1f             	and    $0x1f,%eax
 804dee9:	89 c2                	mov    %eax,%edx
 804deeb:	0f 84 57 03 00 00    	je     804e248 <_dtoa_r+0xaa8>
 804def1:	b8 20 00 00 00       	mov    $0x20,%eax
 804def6:	29 d0                	sub    %edx,%eax
 804def8:	83 f8 04             	cmp    $0x4,%eax
 804defb:	0f 8e 8c 0a 00 00    	jle    804e98d <_dtoa_r+0x11ed>
 804df01:	b8 1c 00 00 00       	mov    $0x1c,%eax
 804df06:	29 d0                	sub    %edx,%eax
 804df08:	01 45 a0             	add    %eax,-0x60(%ebp)
 804df0b:	01 c3                	add    %eax,%ebx
 804df0d:	01 45 ac             	add    %eax,-0x54(%ebp)
 804df10:	8b 45 a0             	mov    -0x60(%ebp),%eax
 804df13:	85 c0                	test   %eax,%eax
 804df15:	7e 16                	jle    804df2d <_dtoa_r+0x78d>
 804df17:	89 44 24 08          	mov    %eax,0x8(%esp)
 804df1b:	8b 45 a4             	mov    -0x5c(%ebp),%eax
 804df1e:	89 34 24             	mov    %esi,(%esp)
 804df21:	89 44 24 04          	mov    %eax,0x4(%esp)
 804df25:	e8 c6 26 00 00       	call   80505f0 <__lshift>
 804df2a:	89 45 a4             	mov    %eax,-0x5c(%ebp)
 804df2d:	8b 45 ac             	mov    -0x54(%ebp),%eax
 804df30:	85 c0                	test   %eax,%eax
 804df32:	7e 16                	jle    804df4a <_dtoa_r+0x7aa>
 804df34:	89 44 24 08          	mov    %eax,0x8(%esp)
 804df38:	8b 45 b0             	mov    -0x50(%ebp),%eax
 804df3b:	89 34 24             	mov    %esi,(%esp)
 804df3e:	89 44 24 04          	mov    %eax,0x4(%esp)
 804df42:	e8 a9 26 00 00       	call   80505f0 <__lshift>
 804df47:	89 45 b0             	mov    %eax,-0x50(%ebp)
 804df4a:	8b 45 9c             	mov    -0x64(%ebp),%eax
 804df4d:	85 c0                	test   %eax,%eax
 804df4f:	0f 85 d3 04 00 00    	jne    804e428 <_dtoa_r+0xc88>
 804df55:	83 7d 14 02          	cmpl   $0x2,0x14(%ebp)
 804df59:	0f 8e 11 02 00 00    	jle    804e170 <_dtoa_r+0x9d0>
 804df5f:	8b 45 a8             	mov    -0x58(%ebp),%eax
 804df62:	85 c0                	test   %eax,%eax
 804df64:	0f 8f 06 02 00 00    	jg     804e170 <_dtoa_r+0x9d0>
 804df6a:	8b 45 a8             	mov    -0x58(%ebp),%eax
 804df6d:	85 c0                	test   %eax,%eax
 804df6f:	0f 85 e0 01 00 00    	jne    804e155 <_dtoa_r+0x9b5>
 804df75:	8b 45 b0             	mov    -0x50(%ebp),%eax
 804df78:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
 804df7f:	00 
 804df80:	c7 44 24 08 05 00 00 	movl   $0x5,0x8(%esp)
 804df87:	00 
 804df88:	89 34 24             	mov    %esi,(%esp)
 804df8b:	89 44 24 04          	mov    %eax,0x4(%esp)
 804df8f:	e8 7c 20 00 00       	call   8050010 <__multadd>
 804df94:	89 45 b0             	mov    %eax,-0x50(%ebp)
 804df97:	89 44 24 04          	mov    %eax,0x4(%esp)
 804df9b:	8b 45 a4             	mov    -0x5c(%ebp),%eax
 804df9e:	89 04 24             	mov    %eax,(%esp)
 804dfa1:	e8 6a 27 00 00       	call   8050710 <__mcmp>
 804dfa6:	85 c0                	test   %eax,%eax
 804dfa8:	0f 8e a7 01 00 00    	jle    804e155 <_dtoa_r+0x9b5>
 804dfae:	83 45 b8 01          	addl   $0x1,-0x48(%ebp)
 804dfb2:	89 fb                	mov    %edi,%ebx
 804dfb4:	83 c7 01             	add    $0x1,%edi
 804dfb7:	c6 47 ff 31          	movb   $0x31,-0x1(%edi)
 804dfbb:	c7 45 c0 00 00 00 00 	movl   $0x0,-0x40(%ebp)
 804dfc2:	8b 45 b0             	mov    -0x50(%ebp),%eax
 804dfc5:	89 34 24             	mov    %esi,(%esp)
 804dfc8:	89 44 24 04          	mov    %eax,0x4(%esp)
 804dfcc:	e8 1f 20 00 00       	call   804fff0 <_Bfree>
 804dfd1:	8b 45 b4             	mov    -0x4c(%ebp),%eax
 804dfd4:	85 c0                	test   %eax,%eax
 804dfd6:	74 18                	je     804dff0 <_dtoa_r+0x850>
 804dfd8:	39 45 c0             	cmp    %eax,-0x40(%ebp)
 804dfdb:	0f 85 a7 02 00 00    	jne    804e288 <_dtoa_r+0xae8>
 804dfe1:	8b 45 b4             	mov    -0x4c(%ebp),%eax
 804dfe4:	89 34 24             	mov    %esi,(%esp)
 804dfe7:	89 44 24 04          	mov    %eax,0x4(%esp)
 804dfeb:	e8 00 20 00 00       	call   804fff0 <_Bfree>
 804dff0:	8b 45 a4             	mov    -0x5c(%ebp),%eax
 804dff3:	89 34 24             	mov    %esi,(%esp)
 804dff6:	89 44 24 04          	mov    %eax,0x4(%esp)
 804dffa:	e8 f1 1f 00 00       	call   804fff0 <_Bfree>
 804dfff:	8b 45 b8             	mov    -0x48(%ebp),%eax
 804e002:	8b 75 1c             	mov    0x1c(%ebp),%esi
 804e005:	c6 07 00             	movb   $0x0,(%edi)
 804e008:	83 c0 01             	add    $0x1,%eax
 804e00b:	89 06                	mov    %eax,(%esi)
 804e00d:	8b 45 24             	mov    0x24(%ebp),%eax
 804e010:	85 c0                	test   %eax,%eax
 804e012:	0f 84 90 02 00 00    	je     804e2a8 <_dtoa_r+0xb08>
 804e018:	8b 45 24             	mov    0x24(%ebp),%eax
 804e01b:	89 38                	mov    %edi,(%eax)
 804e01d:	81 c4 8c 00 00 00    	add    $0x8c,%esp
 804e023:	89 d8                	mov    %ebx,%eax
 804e025:	5b                   	pop    %ebx
 804e026:	5e                   	pop    %esi
 804e027:	5f                   	pop    %edi
 804e028:	5d                   	pop    %ebp
 804e029:	c3                   	ret    
 804e02a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 804e030:	db 45 b8             	fildl  -0x48(%ebp)
 804e033:	df e9                	fucomip %st(1),%st
 804e035:	dd d8                	fstp   %st(0)
 804e037:	7a 06                	jp     804e03f <_dtoa_r+0x89f>
 804e039:	0f 84 cc f8 ff ff    	je     804d90b <_dtoa_r+0x16b>
 804e03f:	83 6d b8 01          	subl   $0x1,-0x48(%ebp)
 804e043:	e9 c3 f8 ff ff       	jmp    804d90b <_dtoa_r+0x16b>
 804e048:	8b 45 b8             	mov    -0x48(%ebp),%eax
 804e04b:	29 45 a0             	sub    %eax,-0x60(%ebp)
 804e04e:	c7 45 94 00 00 00 00 	movl   $0x0,-0x6c(%ebp)
 804e055:	f7 d8                	neg    %eax
 804e057:	89 45 b0             	mov    %eax,-0x50(%ebp)
 804e05a:	e9 0c f9 ff ff       	jmp    804d96b <_dtoa_r+0x1cb>
 804e05f:	90                   	nop
 804e060:	f7 d8                	neg    %eax
 804e062:	89 45 a0             	mov    %eax,-0x60(%ebp)
 804e065:	c7 45 ac 00 00 00 00 	movl   $0x0,-0x54(%ebp)
 804e06c:	e9 e2 f8 ff ff       	jmp    804d953 <_dtoa_r+0x1b3>
 804e071:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 804e078:	8b 45 c0             	mov    -0x40(%ebp),%eax
 804e07b:	b9 ee fb ff ff       	mov    $0xfffffbee,%ecx
 804e080:	29 d9                	sub    %ebx,%ecx
 804e082:	d3 e0                	shl    %cl,%eax
 804e084:	e9 1b f8 ff ff       	jmp    804d8a4 <_dtoa_r+0x104>
 804e089:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 804e090:	c7 45 9c 00 00 00 00 	movl   $0x0,-0x64(%ebp)
 804e097:	e9 a0 f8 ff ff       	jmp    804d93c <_dtoa_r+0x19c>
 804e09c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 804e0a0:	83 7d 14 01          	cmpl   $0x1,0x14(%ebp)
 804e0a4:	0f 8e fe 06 00 00    	jle    804e7a8 <_dtoa_r+0x1008>
 804e0aa:	8b 45 a8             	mov    -0x58(%ebp),%eax
 804e0ad:	83 e8 01             	sub    $0x1,%eax
 804e0b0:	39 45 b0             	cmp    %eax,-0x50(%ebp)
 804e0b3:	0f 8c 3b 06 00 00    	jl     804e6f4 <_dtoa_r+0xf54>
 804e0b9:	8b 55 b0             	mov    -0x50(%ebp),%edx
 804e0bc:	29 c2                	sub    %eax,%edx
 804e0be:	8b 4d a8             	mov    -0x58(%ebp),%ecx
 804e0c1:	8b 5d a0             	mov    -0x60(%ebp),%ebx
 804e0c4:	85 c9                	test   %ecx,%ecx
 804e0c6:	89 c8                	mov    %ecx,%eax
 804e0c8:	0f 88 83 07 00 00    	js     804e851 <_dtoa_r+0x10b1>
 804e0ce:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
 804e0d5:	00 
 804e0d6:	89 34 24             	mov    %esi,(%esp)
 804e0d9:	89 55 8c             	mov    %edx,-0x74(%ebp)
 804e0dc:	01 45 a0             	add    %eax,-0x60(%ebp)
 804e0df:	01 45 ac             	add    %eax,-0x54(%ebp)
 804e0e2:	e8 e9 21 00 00       	call   80502d0 <__i2b>
 804e0e7:	8b 55 8c             	mov    -0x74(%ebp),%edx
 804e0ea:	89 45 b4             	mov    %eax,-0x4c(%ebp)
 804e0ed:	e9 1e fd ff ff       	jmp    804de10 <_dtoa_r+0x670>
 804e0f2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 804e0f8:	d9 c1                	fld    %st(1)
 804e0fa:	b9 02 00 00 00       	mov    $0x2,%ecx
 804e0ff:	e9 37 fa ff ff       	jmp    804db3b <_dtoa_r+0x39b>
 804e104:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
 804e107:	db 45 d4             	fildl  -0x2c(%ebp)
 804e10a:	d8 c9                	fmul   %st(1),%st
 804e10c:	d8 05 6c 4c 05 08    	fadds  0x8054c6c
 804e112:	dd 5d c0             	fstpl  -0x40(%ebp)
 804e115:	81 6d c4 00 00 40 03 	subl   $0x3400000,-0x3c(%ebp)
 804e11c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 804e120:	d8 25 70 4c 05 08    	fsubs  0x8054c70
 804e126:	dd 45 c0             	fldl   -0x40(%ebp)
 804e129:	d9 c9                	fxch   %st(1)
 804e12b:	db e9                	fucomi %st(1),%st
 804e12d:	0f 87 0d 02 00 00    	ja     804e340 <_dtoa_r+0xba0>
 804e133:	d9 c9                	fxch   %st(1)
 804e135:	d9 e0                	fchs   
 804e137:	df e9                	fucomip %st(1),%st
 804e139:	dd d8                	fstp   %st(0)
 804e13b:	0f 86 a7 01 00 00    	jbe    804e2e8 <_dtoa_r+0xb48>
 804e141:	dd d8                	fstp   %st(0)
 804e143:	eb 02                	jmp    804e147 <_dtoa_r+0x9a7>
 804e145:	dd d8                	fstp   %st(0)
 804e147:	c7 45 b0 00 00 00 00 	movl   $0x0,-0x50(%ebp)
 804e14e:	c7 45 b4 00 00 00 00 	movl   $0x0,-0x4c(%ebp)
 804e155:	8b 45 18             	mov    0x18(%ebp),%eax
 804e158:	89 fb                	mov    %edi,%ebx
 804e15a:	c7 45 c0 00 00 00 00 	movl   $0x0,-0x40(%ebp)
 804e161:	f7 d0                	not    %eax
 804e163:	89 45 b8             	mov    %eax,-0x48(%ebp)
 804e166:	e9 57 fe ff ff       	jmp    804dfc2 <_dtoa_r+0x822>
 804e16b:	90                   	nop
 804e16c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 804e170:	8b 45 98             	mov    -0x68(%ebp),%eax
 804e173:	85 c0                	test   %eax,%eax
 804e175:	0f 85 c5 03 00 00    	jne    804e540 <_dtoa_r+0xda0>
 804e17b:	89 75 08             	mov    %esi,0x8(%ebp)
 804e17e:	bb 01 00 00 00       	mov    $0x1,%ebx
 804e183:	8b 75 a4             	mov    -0x5c(%ebp),%esi
 804e186:	eb 24                	jmp    804e1ac <_dtoa_r+0xa0c>
 804e188:	8b 45 08             	mov    0x8(%ebp),%eax
 804e18b:	83 c3 01             	add    $0x1,%ebx
 804e18e:	89 74 24 04          	mov    %esi,0x4(%esp)
 804e192:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
 804e199:	00 
 804e19a:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
 804e1a1:	00 
 804e1a2:	89 04 24             	mov    %eax,(%esp)
 804e1a5:	e8 66 1e 00 00       	call   8050010 <__multadd>
 804e1aa:	89 c6                	mov    %eax,%esi
 804e1ac:	8b 55 b0             	mov    -0x50(%ebp),%edx
 804e1af:	89 f0                	mov    %esi,%eax
 804e1b1:	e8 1a f4 ff ff       	call   804d5d0 <quorem>
 804e1b6:	83 c0 30             	add    $0x30,%eax
 804e1b9:	3b 5d a8             	cmp    -0x58(%ebp),%ebx
 804e1bc:	88 44 1f ff          	mov    %al,-0x1(%edi,%ebx,1)
 804e1c0:	7c c6                	jl     804e188 <_dtoa_r+0x9e8>
 804e1c2:	89 45 a0             	mov    %eax,-0x60(%ebp)
 804e1c5:	8b 45 a8             	mov    -0x58(%ebp),%eax
 804e1c8:	ba 01 00 00 00       	mov    $0x1,%edx
 804e1cd:	89 75 a4             	mov    %esi,-0x5c(%ebp)
 804e1d0:	8b 75 08             	mov    0x8(%ebp),%esi
 804e1d3:	c7 45 c0 00 00 00 00 	movl   $0x0,-0x40(%ebp)
 804e1da:	85 c0                	test   %eax,%eax
 804e1dc:	0f 4f d0             	cmovg  %eax,%edx
 804e1df:	01 fa                	add    %edi,%edx
 804e1e1:	8b 45 a4             	mov    -0x5c(%ebp),%eax
 804e1e4:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 804e1eb:	00 
 804e1ec:	89 34 24             	mov    %esi,(%esp)
 804e1ef:	89 55 ac             	mov    %edx,-0x54(%ebp)
 804e1f2:	89 44 24 04          	mov    %eax,0x4(%esp)
 804e1f6:	e8 f5 23 00 00       	call   80505f0 <__lshift>
 804e1fb:	8b 5d b0             	mov    -0x50(%ebp),%ebx
 804e1fe:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 804e202:	89 04 24             	mov    %eax,(%esp)
 804e205:	89 45 a4             	mov    %eax,-0x5c(%ebp)
 804e208:	e8 03 25 00 00       	call   8050710 <__mcmp>
 804e20d:	8b 55 ac             	mov    -0x54(%ebp),%edx
 804e210:	83 f8 00             	cmp    $0x0,%eax
 804e213:	0f 8e 41 06 00 00    	jle    804e85a <_dtoa_r+0x10ba>
 804e219:	0f b6 4a ff          	movzbl -0x1(%edx),%ecx
 804e21d:	eb 0f                	jmp    804e22e <_dtoa_r+0xa8e>
 804e21f:	90                   	nop
 804e220:	39 c7                	cmp    %eax,%edi
 804e222:	0f 84 70 05 00 00    	je     804e798 <_dtoa_r+0xff8>
 804e228:	0f b6 48 ff          	movzbl -0x1(%eax),%ecx
 804e22c:	89 c2                	mov    %eax,%edx
 804e22e:	80 f9 39             	cmp    $0x39,%cl
 804e231:	8d 42 ff             	lea    -0x1(%edx),%eax
 804e234:	74 ea                	je     804e220 <_dtoa_r+0xa80>
 804e236:	83 c1 01             	add    $0x1,%ecx
 804e239:	89 fb                	mov    %edi,%ebx
 804e23b:	88 08                	mov    %cl,(%eax)
 804e23d:	89 d7                	mov    %edx,%edi
 804e23f:	e9 7e fd ff ff       	jmp    804dfc2 <_dtoa_r+0x822>
 804e244:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 804e248:	b8 1c 00 00 00       	mov    $0x1c,%eax
 804e24d:	01 45 a0             	add    %eax,-0x60(%ebp)
 804e250:	01 c3                	add    %eax,%ebx
 804e252:	01 45 ac             	add    %eax,-0x54(%ebp)
 804e255:	e9 b6 fc ff ff       	jmp    804df10 <_dtoa_r+0x770>
 804e25a:	ba 01 00 00 00       	mov    $0x1,%edx
 804e25f:	c7 45 90 01 00 00 00 	movl   $0x1,-0x70(%ebp)
 804e266:	c7 45 a8 01 00 00 00 	movl   $0x1,-0x58(%ebp)
 804e26d:	c7 45 18 01 00 00 00 	movl   $0x1,0x18(%ebp)
 804e274:	21 c2                	and    %eax,%edx
 804e276:	88 55 b4             	mov    %dl,-0x4c(%ebp)
 804e279:	31 d2                	xor    %edx,%edx
 804e27b:	c7 46 44 00 00 00 00 	movl   $0x0,0x44(%esi)
 804e282:	e9 62 f8 ff ff       	jmp    804dae9 <_dtoa_r+0x349>
 804e287:	90                   	nop
 804e288:	8b 55 c0             	mov    -0x40(%ebp),%edx
 804e28b:	85 d2                	test   %edx,%edx
 804e28d:	0f 84 4e fd ff ff    	je     804dfe1 <_dtoa_r+0x841>
 804e293:	8b 45 c0             	mov    -0x40(%ebp),%eax
 804e296:	89 34 24             	mov    %esi,(%esp)
 804e299:	89 44 24 04          	mov    %eax,0x4(%esp)
 804e29d:	e8 4e 1d 00 00       	call   804fff0 <_Bfree>
 804e2a2:	e9 3a fd ff ff       	jmp    804dfe1 <_dtoa_r+0x841>
 804e2a7:	90                   	nop
 804e2a8:	89 d8                	mov    %ebx,%eax
 804e2aa:	e9 89 f5 ff ff       	jmp    804d838 <_dtoa_r+0x98>
 804e2af:	8b 45 b0             	mov    -0x50(%ebp),%eax
 804e2b2:	89 44 24 08          	mov    %eax,0x8(%esp)
 804e2b6:	8b 45 a4             	mov    -0x5c(%ebp),%eax
 804e2b9:	89 34 24             	mov    %esi,(%esp)
 804e2bc:	89 44 24 04          	mov    %eax,0x4(%esp)
 804e2c0:	e8 0b 22 00 00       	call   80504d0 <__pow5mult>
 804e2c5:	89 45 a4             	mov    %eax,-0x5c(%ebp)
 804e2c8:	e9 c6 fb ff ff       	jmp    804de93 <_dtoa_r+0x6f3>
 804e2cd:	dd d8                	fstp   %st(0)
 804e2cf:	dd d8                	fstp   %st(0)
 804e2d1:	eb 15                	jmp    804e2e8 <_dtoa_r+0xb48>
 804e2d3:	90                   	nop
 804e2d4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 804e2d8:	dd d8                	fstp   %st(0)
 804e2da:	dd d8                	fstp   %st(0)
 804e2dc:	dd d8                	fstp   %st(0)
 804e2de:	eb 08                	jmp    804e2e8 <_dtoa_r+0xb48>
 804e2e0:	dd d8                	fstp   %st(0)
 804e2e2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 804e2e8:	dd 5d c0             	fstpl  -0x40(%ebp)
 804e2eb:	e9 cf f9 ff ff       	jmp    804dcbf <_dtoa_r+0x51f>
 804e2f0:	8b 45 b8             	mov    -0x48(%ebp),%eax
 804e2f3:	f7 d8                	neg    %eax
 804e2f5:	0f 84 6a 04 00 00    	je     804e765 <_dtoa_r+0xfc5>
 804e2fb:	89 c2                	mov    %eax,%edx
 804e2fd:	b9 02 00 00 00       	mov    $0x2,%ecx
 804e302:	83 e2 0f             	and    $0xf,%edx
 804e305:	c1 f8 04             	sar    $0x4,%eax
 804e308:	dd 04 d5 40 4d 05 08 	fldl   0x8054d40(,%edx,8)
 804e30f:	85 c0                	test   %eax,%eax
 804e311:	d8 c9                	fmul   %st(1),%st
 804e313:	0f 84 4a f8 ff ff    	je     804db63 <_dtoa_r+0x3c3>
 804e319:	31 d2                	xor    %edx,%edx
 804e31b:	90                   	nop
 804e31c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 804e320:	a8 01                	test   $0x1,%al
 804e322:	74 0a                	je     804e32e <_dtoa_r+0xb8e>
 804e324:	dc 0c d5 00 4d 05 08 	fmull  0x8054d00(,%edx,8)
 804e32b:	83 c1 01             	add    $0x1,%ecx
 804e32e:	83 c2 01             	add    $0x1,%edx
 804e331:	d1 f8                	sar    %eax
 804e333:	75 eb                	jne    804e320 <_dtoa_r+0xb80>
 804e335:	e9 29 f8 ff ff       	jmp    804db63 <_dtoa_r+0x3c3>
 804e33a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 804e340:	dd d8                	fstp   %st(0)
 804e342:	dd d8                	fstp   %st(0)
 804e344:	dd d8                	fstp   %st(0)
 804e346:	c7 45 b0 00 00 00 00 	movl   $0x0,-0x50(%ebp)
 804e34d:	c7 45 b4 00 00 00 00 	movl   $0x0,-0x4c(%ebp)
 804e354:	e9 55 fc ff ff       	jmp    804dfae <_dtoa_r+0x80e>
 804e359:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 804e360:	d9 7d d2             	fnstcw -0x2e(%ebp)
 804e363:	8d 41 ff             	lea    -0x1(%ecx),%eax
 804e366:	dd 45 c0             	fldl   -0x40(%ebp)
 804e369:	dc 0c c5 40 4d 05 08 	fmull  0x8054d40(,%eax,8)
 804e370:	d9 c9                	fxch   %st(1)
 804e372:	89 45 88             	mov    %eax,-0x78(%ebp)
 804e375:	0f b7 45 d2          	movzwl -0x2e(%ebp),%eax
 804e379:	8d 57 01             	lea    0x1(%edi),%edx
 804e37c:	8d 1c 0f             	lea    (%edi,%ecx,1),%ebx
 804e37f:	b4 0c                	mov    $0xc,%ah
 804e381:	66 89 45 d0          	mov    %ax,-0x30(%ebp)
 804e385:	d9 6d d0             	fldcw  -0x30(%ebp)
 804e388:	db 55 d4             	fistl  -0x2c(%ebp)
 804e38b:	d9 6d d2             	fldcw  -0x2e(%ebp)
 804e38e:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 804e391:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 804e394:	83 c0 30             	add    $0x30,%eax
 804e397:	83 f9 01             	cmp    $0x1,%ecx
 804e39a:	db 45 d4             	fildl  -0x2c(%ebp)
 804e39d:	de e9                	fsubrp %st,%st(1)
 804e39f:	88 07                	mov    %al,(%edi)
 804e3a1:	89 d0                	mov    %edx,%eax
 804e3a3:	74 37                	je     804e3dc <_dtoa_r+0xc3c>
 804e3a5:	d9 05 68 4c 05 08    	flds   0x8054c68
 804e3ab:	eb 05                	jmp    804e3b2 <_dtoa_r+0xc12>
 804e3ad:	8d 76 00             	lea    0x0(%esi),%esi
 804e3b0:	d9 c9                	fxch   %st(1)
 804e3b2:	dc c9                	fmul   %st,%st(1)
 804e3b4:	d9 c9                	fxch   %st(1)
 804e3b6:	83 c0 01             	add    $0x1,%eax
 804e3b9:	d9 6d d0             	fldcw  -0x30(%ebp)
 804e3bc:	db 55 d4             	fistl  -0x2c(%ebp)
 804e3bf:	d9 6d d2             	fldcw  -0x2e(%ebp)
 804e3c2:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
 804e3c5:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
 804e3c8:	83 c1 30             	add    $0x30,%ecx
 804e3cb:	39 d8                	cmp    %ebx,%eax
 804e3cd:	db 45 d4             	fildl  -0x2c(%ebp)
 804e3d0:	de e9                	fsubrp %st,%st(1)
 804e3d2:	88 48 ff             	mov    %cl,-0x1(%eax)
 804e3d5:	75 d9                	jne    804e3b0 <_dtoa_r+0xc10>
 804e3d7:	dd d9                	fstp   %st(1)
 804e3d9:	03 55 88             	add    -0x78(%ebp),%edx
 804e3dc:	d9 05 74 4c 05 08    	flds   0x8054c74
 804e3e2:	d9 c2                	fld    %st(2)
 804e3e4:	d8 c1                	fadd   %st(1),%st
 804e3e6:	d9 ca                	fxch   %st(2)
 804e3e8:	db ea                	fucomi %st(2),%st
 804e3ea:	dd da                	fstp   %st(2)
 804e3ec:	0f 86 7f 03 00 00    	jbe    804e771 <_dtoa_r+0xfd1>
 804e3f2:	dd d8                	fstp   %st(0)
 804e3f4:	dd d8                	fstp   %st(0)
 804e3f6:	dd d8                	fstp   %st(0)
 804e3f8:	dd d8                	fstp   %st(0)
 804e3fa:	89 fb                	mov    %edi,%ebx
 804e3fc:	0f b6 42 ff          	movzbl -0x1(%edx),%eax
 804e400:	89 d7                	mov    %edx,%edi
 804e402:	e9 d7 f9 ff ff       	jmp    804ddde <_dtoa_r+0x63e>
 804e407:	90                   	nop
 804e408:	8b 4d b0             	mov    -0x50(%ebp),%ecx
 804e40b:	8b 41 10             	mov    0x10(%ecx),%eax
 804e40e:	8b 44 81 10          	mov    0x10(%ecx,%eax,4),%eax
 804e412:	89 04 24             	mov    %eax,(%esp)
 804e415:	e8 d6 1d 00 00       	call   80501f0 <__hi0bits>
 804e41a:	ba 20 00 00 00       	mov    $0x20,%edx
 804e41f:	29 c2                	sub    %eax,%edx
 804e421:	e9 bb fa ff ff       	jmp    804dee1 <_dtoa_r+0x741>
 804e426:	66 90                	xchg   %ax,%ax
 804e428:	8b 45 b0             	mov    -0x50(%ebp),%eax
 804e42b:	89 44 24 04          	mov    %eax,0x4(%esp)
 804e42f:	8b 45 a4             	mov    -0x5c(%ebp),%eax
 804e432:	89 04 24             	mov    %eax,(%esp)
 804e435:	e8 d6 22 00 00       	call   8050710 <__mcmp>
 804e43a:	85 c0                	test   %eax,%eax
 804e43c:	0f 89 13 fb ff ff    	jns    804df55 <_dtoa_r+0x7b5>
 804e442:	8b 45 a4             	mov    -0x5c(%ebp),%eax
 804e445:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
 804e44c:	00 
 804e44d:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
 804e454:	00 
 804e455:	89 34 24             	mov    %esi,(%esp)
 804e458:	89 44 24 04          	mov    %eax,0x4(%esp)
 804e45c:	83 6d b8 01          	subl   $0x1,-0x48(%ebp)
 804e460:	e8 ab 1b 00 00       	call   8050010 <__multadd>
 804e465:	8b 4d 98             	mov    -0x68(%ebp),%ecx
 804e468:	85 c9                	test   %ecx,%ecx
 804e46a:	89 45 a4             	mov    %eax,-0x5c(%ebp)
 804e46d:	0f 85 8d 00 00 00    	jne    804e500 <_dtoa_r+0xd60>
 804e473:	83 7d 90 00          	cmpl   $0x0,-0x70(%ebp)
 804e477:	8b 45 90             	mov    -0x70(%ebp),%eax
 804e47a:	7f 0a                	jg     804e486 <_dtoa_r+0xce6>
 804e47c:	83 7d 14 02          	cmpl   $0x2,0x14(%ebp)
 804e480:	0f 8f ff 04 00 00    	jg     804e985 <_dtoa_r+0x11e5>
 804e486:	89 45 a8             	mov    %eax,-0x58(%ebp)
 804e489:	e9 ed fc ff ff       	jmp    804e17b <_dtoa_r+0x9db>
 804e48e:	66 90                	xchg   %ax,%ax
 804e490:	8b 5d a8             	mov    -0x58(%ebp),%ebx
 804e493:	85 db                	test   %ebx,%ebx
 804e495:	0f 85 aa fc ff ff    	jne    804e145 <_dtoa_r+0x9a5>
 804e49b:	d8 0d 70 4c 05 08    	fmuls  0x8054c70
 804e4a1:	c7 45 b0 00 00 00 00 	movl   $0x0,-0x50(%ebp)
 804e4a8:	c7 45 b4 00 00 00 00 	movl   $0x0,-0x4c(%ebp)
 804e4af:	dd 45 c0             	fldl   -0x40(%ebp)
 804e4b2:	d9 c9                	fxch   %st(1)
 804e4b4:	df e9                	fucomip %st(1),%st
 804e4b6:	dd d8                	fstp   %st(0)
 804e4b8:	0f 83 97 fc ff ff    	jae    804e155 <_dtoa_r+0x9b5>
 804e4be:	e9 eb fa ff ff       	jmp    804dfae <_dtoa_r+0x80e>
 804e4c3:	90                   	nop
 804e4c4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 804e4c8:	8b 45 c0             	mov    -0x40(%ebp),%eax
 804e4cb:	85 c0                	test   %eax,%eax
 804e4cd:	0f 85 fe f9 ff ff    	jne    804ded1 <_dtoa_r+0x731>
 804e4d3:	8b 45 c4             	mov    -0x3c(%ebp),%eax
 804e4d6:	a9 ff ff 0f 00       	test   $0xfffff,%eax
 804e4db:	0f 85 f0 f9 ff ff    	jne    804ded1 <_dtoa_r+0x731>
 804e4e1:	a9 00 00 f0 7f       	test   $0x7ff00000,%eax
 804e4e6:	0f 84 e5 f9 ff ff    	je     804ded1 <_dtoa_r+0x731>
 804e4ec:	83 45 a0 01          	addl   $0x1,-0x60(%ebp)
 804e4f0:	83 45 ac 01          	addl   $0x1,-0x54(%ebp)
 804e4f4:	c7 45 8c 01 00 00 00 	movl   $0x1,-0x74(%ebp)
 804e4fb:	e9 d1 f9 ff ff       	jmp    804ded1 <_dtoa_r+0x731>
 804e500:	8b 45 b4             	mov    -0x4c(%ebp),%eax
 804e503:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
 804e50a:	00 
 804e50b:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
 804e512:	00 
 804e513:	89 34 24             	mov    %esi,(%esp)
 804e516:	89 44 24 04          	mov    %eax,0x4(%esp)
 804e51a:	e8 f1 1a 00 00       	call   8050010 <__multadd>
 804e51f:	8b 55 90             	mov    -0x70(%ebp),%edx
 804e522:	85 d2                	test   %edx,%edx
 804e524:	89 45 b4             	mov    %eax,-0x4c(%ebp)
 804e527:	8b 45 90             	mov    -0x70(%ebp),%eax
 804e52a:	7f 0a                	jg     804e536 <_dtoa_r+0xd96>
 804e52c:	83 7d 14 02          	cmpl   $0x2,0x14(%ebp)
 804e530:	0f 8f 4f 04 00 00    	jg     804e985 <_dtoa_r+0x11e5>
 804e536:	89 45 a8             	mov    %eax,-0x58(%ebp)
 804e539:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 804e540:	85 db                	test   %ebx,%ebx
 804e542:	7e 16                	jle    804e55a <_dtoa_r+0xdba>
 804e544:	8b 45 b4             	mov    -0x4c(%ebp),%eax
 804e547:	89 5c 24 08          	mov    %ebx,0x8(%esp)
 804e54b:	89 34 24             	mov    %esi,(%esp)
 804e54e:	89 44 24 04          	mov    %eax,0x4(%esp)
 804e552:	e8 99 20 00 00       	call   80505f0 <__lshift>
 804e557:	89 45 b4             	mov    %eax,-0x4c(%ebp)
 804e55a:	8b 5d 8c             	mov    -0x74(%ebp),%ebx
 804e55d:	8b 45 b4             	mov    -0x4c(%ebp),%eax
 804e560:	85 db                	test   %ebx,%ebx
 804e562:	89 45 ac             	mov    %eax,-0x54(%ebp)
 804e565:	0f 85 11 03 00 00    	jne    804e87c <_dtoa_r+0x10dc>
 804e56b:	8b 45 a8             	mov    -0x58(%ebp),%eax
 804e56e:	8d 5f 01             	lea    0x1(%edi),%ebx
 804e571:	89 7d 8c             	mov    %edi,-0x74(%ebp)
 804e574:	01 f8                	add    %edi,%eax
 804e576:	8b 7d a4             	mov    -0x5c(%ebp),%edi
 804e579:	89 45 90             	mov    %eax,-0x70(%ebp)
 804e57c:	8b 45 c0             	mov    -0x40(%ebp),%eax
 804e57f:	83 e0 01             	and    $0x1,%eax
 804e582:	89 45 9c             	mov    %eax,-0x64(%ebp)
 804e585:	eb 2e                	jmp    804e5b5 <_dtoa_r+0xe15>
 804e587:	90                   	nop
 804e588:	e8 83 1a 00 00       	call   8050010 <__multadd>
 804e58d:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
 804e594:	00 
 804e595:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
 804e59c:	00 
 804e59d:	89 34 24             	mov    %esi,(%esp)
 804e5a0:	89 45 b4             	mov    %eax,-0x4c(%ebp)
 804e5a3:	8b 45 ac             	mov    -0x54(%ebp),%eax
 804e5a6:	89 44 24 04          	mov    %eax,0x4(%esp)
 804e5aa:	e8 61 1a 00 00       	call   8050010 <__multadd>
 804e5af:	89 45 ac             	mov    %eax,-0x54(%ebp)
 804e5b2:	83 c3 01             	add    $0x1,%ebx
 804e5b5:	8b 55 b0             	mov    -0x50(%ebp),%edx
 804e5b8:	8d 43 ff             	lea    -0x1(%ebx),%eax
 804e5bb:	89 45 98             	mov    %eax,-0x68(%ebp)
 804e5be:	89 f8                	mov    %edi,%eax
 804e5c0:	e8 0b f0 ff ff       	call   804d5d0 <quorem>
 804e5c5:	89 3c 24             	mov    %edi,(%esp)
 804e5c8:	8d 48 30             	lea    0x30(%eax),%ecx
 804e5cb:	89 4d a0             	mov    %ecx,-0x60(%ebp)
 804e5ce:	8b 4d b4             	mov    -0x4c(%ebp),%ecx
 804e5d1:	89 45 94             	mov    %eax,-0x6c(%ebp)
 804e5d4:	89 4c 24 04          	mov    %ecx,0x4(%esp)
 804e5d8:	e8 33 21 00 00       	call   8050710 <__mcmp>
 804e5dd:	8b 4d ac             	mov    -0x54(%ebp),%ecx
 804e5e0:	89 34 24             	mov    %esi,(%esp)
 804e5e3:	89 4c 24 08          	mov    %ecx,0x8(%esp)
 804e5e7:	89 45 c0             	mov    %eax,-0x40(%ebp)
 804e5ea:	8b 45 b0             	mov    -0x50(%ebp),%eax
 804e5ed:	89 44 24 04          	mov    %eax,0x4(%esp)
 804e5f1:	e8 6a 21 00 00       	call   8050760 <__mdiff>
 804e5f6:	8b 48 0c             	mov    0xc(%eax),%ecx
 804e5f9:	89 c2                	mov    %eax,%edx
 804e5fb:	85 c9                	test   %ecx,%ecx
 804e5fd:	0f 85 c5 00 00 00    	jne    804e6c8 <_dtoa_r+0xf28>
 804e603:	89 44 24 04          	mov    %eax,0x4(%esp)
 804e607:	89 3c 24             	mov    %edi,(%esp)
 804e60a:	89 45 a8             	mov    %eax,-0x58(%ebp)
 804e60d:	e8 fe 20 00 00       	call   8050710 <__mcmp>
 804e612:	8b 55 a8             	mov    -0x58(%ebp),%edx
 804e615:	89 54 24 04          	mov    %edx,0x4(%esp)
 804e619:	89 34 24             	mov    %esi,(%esp)
 804e61c:	89 45 a8             	mov    %eax,-0x58(%ebp)
 804e61f:	e8 cc 19 00 00       	call   804fff0 <_Bfree>
 804e624:	8b 45 a8             	mov    -0x58(%ebp),%eax
 804e627:	89 c1                	mov    %eax,%ecx
 804e629:	0b 4d 14             	or     0x14(%ebp),%ecx
 804e62c:	75 0b                	jne    804e639 <_dtoa_r+0xe99>
 804e62e:	8b 55 9c             	mov    -0x64(%ebp),%edx
 804e631:	85 d2                	test   %edx,%edx
 804e633:	0f 84 fb 02 00 00    	je     804e934 <_dtoa_r+0x1194>
 804e639:	8b 55 c0             	mov    -0x40(%ebp),%edx
 804e63c:	85 d2                	test   %edx,%edx
 804e63e:	0f 88 7f 01 00 00    	js     804e7c3 <_dtoa_r+0x1023>
 804e644:	8b 4d c0             	mov    -0x40(%ebp),%ecx
 804e647:	0b 4d 14             	or     0x14(%ebp),%ecx
 804e64a:	75 0b                	jne    804e657 <_dtoa_r+0xeb7>
 804e64c:	8b 4d 9c             	mov    -0x64(%ebp),%ecx
 804e64f:	85 c9                	test   %ecx,%ecx
 804e651:	0f 84 6c 01 00 00    	je     804e7c3 <_dtoa_r+0x1023>
 804e657:	85 c0                	test   %eax,%eax
 804e659:	0f 8f 82 02 00 00    	jg     804e8e1 <_dtoa_r+0x1141>
 804e65f:	0f b6 45 a0          	movzbl -0x60(%ebp),%eax
 804e663:	89 da                	mov    %ebx,%edx
 804e665:	3b 5d 90             	cmp    -0x70(%ebp),%ebx
 804e668:	88 43 ff             	mov    %al,-0x1(%ebx)
 804e66b:	0f 84 8d 02 00 00    	je     804e8fe <_dtoa_r+0x115e>
 804e671:	89 7c 24 04          	mov    %edi,0x4(%esp)
 804e675:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
 804e67c:	00 
 804e67d:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
 804e684:	00 
 804e685:	89 34 24             	mov    %esi,(%esp)
 804e688:	e8 83 19 00 00       	call   8050010 <__multadd>
 804e68d:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
 804e694:	00 
 804e695:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
 804e69c:	00 
 804e69d:	89 34 24             	mov    %esi,(%esp)
 804e6a0:	89 c7                	mov    %eax,%edi
 804e6a2:	8b 45 ac             	mov    -0x54(%ebp),%eax
 804e6a5:	39 45 b4             	cmp    %eax,-0x4c(%ebp)
 804e6a8:	8b 45 b4             	mov    -0x4c(%ebp),%eax
 804e6ab:	89 44 24 04          	mov    %eax,0x4(%esp)
 804e6af:	0f 85 d3 fe ff ff    	jne    804e588 <_dtoa_r+0xde8>
 804e6b5:	e8 56 19 00 00       	call   8050010 <__multadd>
 804e6ba:	89 45 b4             	mov    %eax,-0x4c(%ebp)
 804e6bd:	89 45 ac             	mov    %eax,-0x54(%ebp)
 804e6c0:	e9 ed fe ff ff       	jmp    804e5b2 <_dtoa_r+0xe12>
 804e6c5:	8d 76 00             	lea    0x0(%esi),%esi
 804e6c8:	b8 01 00 00 00       	mov    $0x1,%eax
 804e6cd:	e9 43 ff ff ff       	jmp    804e615 <_dtoa_r+0xe75>
 804e6d2:	c7 45 98 00 00 00 00 	movl   $0x0,-0x68(%ebp)
 804e6d9:	e9 d2 f2 ff ff       	jmp    804d9b0 <_dtoa_r+0x210>
 804e6de:	0f 85 87 f6 ff ff    	jne    804dd6b <_dtoa_r+0x5cb>
 804e6e4:	dd d8                	fstp   %st(0)
 804e6e6:	dd d8                	fstp   %st(0)
 804e6e8:	dd d8                	fstp   %st(0)
 804e6ea:	89 fb                	mov    %edi,%ebx
 804e6ec:	8b 7d c0             	mov    -0x40(%ebp),%edi
 804e6ef:	e9 fc f8 ff ff       	jmp    804dff0 <_dtoa_r+0x850>
 804e6f4:	89 c2                	mov    %eax,%edx
 804e6f6:	2b 55 b0             	sub    -0x50(%ebp),%edx
 804e6f9:	89 45 b0             	mov    %eax,-0x50(%ebp)
 804e6fc:	01 55 94             	add    %edx,-0x6c(%ebp)
 804e6ff:	31 d2                	xor    %edx,%edx
 804e701:	e9 b8 f9 ff ff       	jmp    804e0be <_dtoa_r+0x91e>
 804e706:	8b 45 a8             	mov    -0x58(%ebp),%eax
 804e709:	85 c0                	test   %eax,%eax
 804e70b:	0f 84 f3 f9 ff ff    	je     804e104 <_dtoa_r+0x964>
 804e711:	8b 45 90             	mov    -0x70(%ebp),%eax
 804e714:	85 c0                	test   %eax,%eax
 804e716:	0f 8e c4 fb ff ff    	jle    804e2e0 <_dtoa_r+0xb40>
 804e71c:	d8 0d 68 4c 05 08    	fmuls  0x8054c68
 804e722:	83 c1 01             	add    $0x1,%ecx
 804e725:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
 804e728:	8b 5d b8             	mov    -0x48(%ebp),%ebx
 804e72b:	89 c1                	mov    %eax,%ecx
 804e72d:	83 eb 01             	sub    $0x1,%ebx
 804e730:	db 45 d4             	fildl  -0x2c(%ebp)
 804e733:	d8 c9                	fmul   %st(1),%st
 804e735:	89 5d b4             	mov    %ebx,-0x4c(%ebp)
 804e738:	d8 05 6c 4c 05 08    	fadds  0x8054c6c
 804e73e:	dd 5d c0             	fstpl  -0x40(%ebp)
 804e741:	81 6d c4 00 00 40 03 	subl   $0x3400000,-0x3c(%ebp)
 804e748:	e9 53 f4 ff ff       	jmp    804dba0 <_dtoa_r+0x400>
 804e74d:	8b 45 b4             	mov    -0x4c(%ebp),%eax
 804e750:	c6 03 30             	movb   $0x30,(%ebx)
 804e753:	83 c0 01             	add    $0x1,%eax
 804e756:	89 45 b8             	mov    %eax,-0x48(%ebp)
 804e759:	b8 31 00 00 00       	mov    $0x31,%eax
 804e75e:	88 02                	mov    %al,(%edx)
 804e760:	e9 8b f8 ff ff       	jmp    804dff0 <_dtoa_r+0x850>
 804e765:	d9 c0                	fld    %st(0)
 804e767:	b9 02 00 00 00       	mov    $0x2,%ecx
 804e76c:	e9 f2 f3 ff ff       	jmp    804db63 <_dtoa_r+0x3c3>
 804e771:	de e2                	fsubp  %st,%st(2)
 804e773:	d9 c9                	fxch   %st(1)
 804e775:	df e9                	fucomip %st(1),%st
 804e777:	dd d8                	fstp   %st(0)
 804e779:	0f 86 69 fb ff ff    	jbe    804e2e8 <_dtoa_r+0xb48>
 804e77f:	dd d8                	fstp   %st(0)
 804e781:	eb 07                	jmp    804e78a <_dtoa_r+0xfea>
 804e783:	90                   	nop
 804e784:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 804e788:	89 c2                	mov    %eax,%edx
 804e78a:	80 7a ff 30          	cmpb   $0x30,-0x1(%edx)
 804e78e:	8d 42 ff             	lea    -0x1(%edx),%eax
 804e791:	74 f5                	je     804e788 <_dtoa_r+0xfe8>
 804e793:	e9 d9 f4 ff ff       	jmp    804dc71 <_dtoa_r+0x4d1>
 804e798:	c6 07 31             	movb   $0x31,(%edi)
 804e79b:	89 fb                	mov    %edi,%ebx
 804e79d:	89 d7                	mov    %edx,%edi
 804e79f:	83 45 b8 01          	addl   $0x1,-0x48(%ebp)
 804e7a3:	e9 1a f8 ff ff       	jmp    804dfc2 <_dtoa_r+0x822>
 804e7a8:	8b 55 8c             	mov    -0x74(%ebp),%edx
 804e7ab:	85 d2                	test   %edx,%edx
 804e7ad:	0f 84 1b 01 00 00    	je     804e8ce <_dtoa_r+0x112e>
 804e7b3:	05 33 04 00 00       	add    $0x433,%eax
 804e7b8:	8b 55 b0             	mov    -0x50(%ebp),%edx
 804e7bb:	8b 5d a0             	mov    -0x60(%ebp),%ebx
 804e7be:	e9 0b f9 ff ff       	jmp    804e0ce <_dtoa_r+0x92e>
 804e7c3:	85 c0                	test   %eax,%eax
 804e7c5:	89 7d a4             	mov    %edi,-0x5c(%ebp)
 804e7c8:	8b 7d 8c             	mov    -0x74(%ebp),%edi
 804e7cb:	7e 45                	jle    804e812 <_dtoa_r+0x1072>
 804e7cd:	8b 45 a4             	mov    -0x5c(%ebp),%eax
 804e7d0:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 804e7d7:	00 
 804e7d8:	89 34 24             	mov    %esi,(%esp)
 804e7db:	89 44 24 04          	mov    %eax,0x4(%esp)
 804e7df:	e8 0c 1e 00 00       	call   80505f0 <__lshift>
 804e7e4:	8b 5d b0             	mov    -0x50(%ebp),%ebx
 804e7e7:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 804e7eb:	89 04 24             	mov    %eax,(%esp)
 804e7ee:	89 45 a4             	mov    %eax,-0x5c(%ebp)
 804e7f1:	e8 1a 1f 00 00       	call   8050710 <__mcmp>
 804e7f6:	83 f8 00             	cmp    $0x0,%eax
 804e7f9:	0f 8e 5b 01 00 00    	jle    804e95a <_dtoa_r+0x11ba>
 804e7ff:	83 7d a0 39          	cmpl   $0x39,-0x60(%ebp)
 804e803:	0f 84 0c 01 00 00    	je     804e915 <_dtoa_r+0x1175>
 804e809:	8b 45 94             	mov    -0x6c(%ebp),%eax
 804e80c:	83 c0 31             	add    $0x31,%eax
 804e80f:	89 45 a0             	mov    %eax,-0x60(%ebp)
 804e812:	8b 4d 98             	mov    -0x68(%ebp),%ecx
 804e815:	0f b6 45 a0          	movzbl -0x60(%ebp),%eax
 804e819:	89 cb                	mov    %ecx,%ebx
 804e81b:	88 03                	mov    %al,(%ebx)
 804e81d:	8b 45 b4             	mov    -0x4c(%ebp),%eax
 804e820:	89 fb                	mov    %edi,%ebx
 804e822:	8d 79 01             	lea    0x1(%ecx),%edi
 804e825:	89 45 c0             	mov    %eax,-0x40(%ebp)
 804e828:	8b 45 ac             	mov    -0x54(%ebp),%eax
 804e82b:	89 45 b4             	mov    %eax,-0x4c(%ebp)
 804e82e:	e9 8f f7 ff ff       	jmp    804dfc2 <_dtoa_r+0x822>
 804e833:	dd d8                	fstp   %st(0)
 804e835:	dd d8                	fstp   %st(0)
 804e837:	dd d8                	fstp   %st(0)
 804e839:	eb 0d                	jmp    804e848 <_dtoa_r+0x10a8>
 804e83b:	90                   	nop
 804e83c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 804e840:	dd d8                	fstp   %st(0)
 804e842:	dd d8                	fstp   %st(0)
 804e844:	dd d8                	fstp   %st(0)
 804e846:	dd d8                	fstp   %st(0)
 804e848:	89 fb                	mov    %edi,%ebx
 804e84a:	89 d7                	mov    %edx,%edi
 804e84c:	e9 8d f5 ff ff       	jmp    804ddde <_dtoa_r+0x63e>
 804e851:	29 cb                	sub    %ecx,%ebx
 804e853:	31 c0                	xor    %eax,%eax
 804e855:	e9 74 f8 ff ff       	jmp    804e0ce <_dtoa_r+0x92e>
 804e85a:	75 0e                	jne    804e86a <_dtoa_r+0x10ca>
 804e85c:	f6 45 a0 01          	testb  $0x1,-0x60(%ebp)
 804e860:	74 08                	je     804e86a <_dtoa_r+0x10ca>
 804e862:	e9 b2 f9 ff ff       	jmp    804e219 <_dtoa_r+0xa79>
 804e867:	90                   	nop
 804e868:	89 c2                	mov    %eax,%edx
 804e86a:	80 7a ff 30          	cmpb   $0x30,-0x1(%edx)
 804e86e:	8d 42 ff             	lea    -0x1(%edx),%eax
 804e871:	74 f5                	je     804e868 <_dtoa_r+0x10c8>
 804e873:	89 fb                	mov    %edi,%ebx
 804e875:	89 d7                	mov    %edx,%edi
 804e877:	e9 46 f7 ff ff       	jmp    804dfc2 <_dtoa_r+0x822>
 804e87c:	8b 40 04             	mov    0x4(%eax),%eax
 804e87f:	89 34 24             	mov    %esi,(%esp)
 804e882:	89 44 24 04          	mov    %eax,0x4(%esp)
 804e886:	e8 c5 16 00 00       	call   804ff50 <_Balloc>
 804e88b:	8b 4d b4             	mov    -0x4c(%ebp),%ecx
 804e88e:	89 c3                	mov    %eax,%ebx
 804e890:	8b 41 10             	mov    0x10(%ecx),%eax
 804e893:	8d 04 85 08 00 00 00 	lea    0x8(,%eax,4),%eax
 804e89a:	89 44 24 08          	mov    %eax,0x8(%esp)
 804e89e:	89 c8                	mov    %ecx,%eax
 804e8a0:	83 c0 0c             	add    $0xc,%eax
 804e8a3:	89 44 24 04          	mov    %eax,0x4(%esp)
 804e8a7:	8d 43 0c             	lea    0xc(%ebx),%eax
 804e8aa:	89 04 24             	mov    %eax,(%esp)
 804e8ad:	e8 36 16 00 00       	call   804fee8 <memcpy>
 804e8b2:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 804e8b9:	00 
 804e8ba:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 804e8be:	89 34 24             	mov    %esi,(%esp)
 804e8c1:	e8 2a 1d 00 00       	call   80505f0 <__lshift>
 804e8c6:	89 45 ac             	mov    %eax,-0x54(%ebp)
 804e8c9:	e9 9d fc ff ff       	jmp    804e56b <_dtoa_r+0xdcb>
 804e8ce:	b8 36 00 00 00       	mov    $0x36,%eax
 804e8d3:	8b 55 b0             	mov    -0x50(%ebp),%edx
 804e8d6:	2b 45 e0             	sub    -0x20(%ebp),%eax
 804e8d9:	8b 5d a0             	mov    -0x60(%ebp),%ebx
 804e8dc:	e9 ed f7 ff ff       	jmp    804e0ce <_dtoa_r+0x92e>
 804e8e1:	83 7d a0 39          	cmpl   $0x39,-0x60(%ebp)
 804e8e5:	89 7d a4             	mov    %edi,-0x5c(%ebp)
 804e8e8:	8b 7d 8c             	mov    -0x74(%ebp),%edi
 804e8eb:	74 28                	je     804e915 <_dtoa_r+0x1175>
 804e8ed:	0f b6 45 a0          	movzbl -0x60(%ebp),%eax
 804e8f1:	8b 4d 98             	mov    -0x68(%ebp),%ecx
 804e8f4:	83 c0 01             	add    $0x1,%eax
 804e8f7:	89 cb                	mov    %ecx,%ebx
 804e8f9:	e9 1d ff ff ff       	jmp    804e81b <_dtoa_r+0x107b>
 804e8fe:	8b 45 b4             	mov    -0x4c(%ebp),%eax
 804e901:	89 7d a4             	mov    %edi,-0x5c(%ebp)
 804e904:	8b 7d 8c             	mov    -0x74(%ebp),%edi
 804e907:	89 45 c0             	mov    %eax,-0x40(%ebp)
 804e90a:	8b 45 ac             	mov    -0x54(%ebp),%eax
 804e90d:	89 45 b4             	mov    %eax,-0x4c(%ebp)
 804e910:	e9 cc f8 ff ff       	jmp    804e1e1 <_dtoa_r+0xa41>
 804e915:	8b 45 98             	mov    -0x68(%ebp),%eax
 804e918:	b9 39 00 00 00       	mov    $0x39,%ecx
 804e91d:	8d 50 01             	lea    0x1(%eax),%edx
 804e920:	c6 00 39             	movb   $0x39,(%eax)
 804e923:	8b 45 b4             	mov    -0x4c(%ebp),%eax
 804e926:	89 45 c0             	mov    %eax,-0x40(%ebp)
 804e929:	8b 45 ac             	mov    -0x54(%ebp),%eax
 804e92c:	89 45 b4             	mov    %eax,-0x4c(%ebp)
 804e92f:	e9 fa f8 ff ff       	jmp    804e22e <_dtoa_r+0xa8e>
 804e934:	8b 5d a0             	mov    -0x60(%ebp),%ebx
 804e937:	89 7d a4             	mov    %edi,-0x5c(%ebp)
 804e93a:	8b 7d 8c             	mov    -0x74(%ebp),%edi
 804e93d:	83 fb 39             	cmp    $0x39,%ebx
 804e940:	74 d3                	je     804e915 <_dtoa_r+0x1175>
 804e942:	8b 4d c0             	mov    -0x40(%ebp),%ecx
 804e945:	8b 45 94             	mov    -0x6c(%ebp),%eax
 804e948:	83 c0 31             	add    $0x31,%eax
 804e94b:	85 c9                	test   %ecx,%ecx
 804e94d:	8b 4d 98             	mov    -0x68(%ebp),%ecx
 804e950:	0f 4e c3             	cmovle %ebx,%eax
 804e953:	89 cb                	mov    %ecx,%ebx
 804e955:	e9 c1 fe ff ff       	jmp    804e81b <_dtoa_r+0x107b>
 804e95a:	0f 85 b2 fe ff ff    	jne    804e812 <_dtoa_r+0x1072>
 804e960:	f6 45 a0 01          	testb  $0x1,-0x60(%ebp)
 804e964:	0f 84 a8 fe ff ff    	je     804e812 <_dtoa_r+0x1072>
 804e96a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 804e970:	e9 8a fe ff ff       	jmp    804e7ff <_dtoa_r+0x105f>
 804e975:	0f 85 c7 f3 ff ff    	jne    804dd42 <_dtoa_r+0x5a2>
 804e97b:	dd d8                	fstp   %st(0)
 804e97d:	dd d8                	fstp   %st(0)
 804e97f:	90                   	nop
 804e980:	e9 65 fd ff ff       	jmp    804e6ea <_dtoa_r+0xf4a>
 804e985:	89 45 a8             	mov    %eax,-0x58(%ebp)
 804e988:	e9 dd f5 ff ff       	jmp    804df6a <_dtoa_r+0x7ca>
 804e98d:	8d 76 00             	lea    0x0(%esi),%esi
 804e990:	0f 84 7a f5 ff ff    	je     804df10 <_dtoa_r+0x770>
 804e996:	b8 3c 00 00 00       	mov    $0x3c,%eax
 804e99b:	29 d0                	sub    %edx,%eax
 804e99d:	e9 ab f8 ff ff       	jmp    804e24d <_dtoa_r+0xaad>
 804e9a2:	b8 01 00 00 00       	mov    $0x1,%eax
 804e9a7:	e9 d9 ef ff ff       	jmp    804d985 <_dtoa_r+0x1e5>
 804e9ac:	31 d2                	xor    %edx,%edx
 804e9ae:	e9 36 f1 ff ff       	jmp    804dae9 <_dtoa_r+0x349>
 804e9b3:	66 90                	xchg   %ax,%ax
 804e9b5:	66 90                	xchg   %ax,%ax
 804e9b7:	66 90                	xchg   %ax,%ax
 804e9b9:	66 90                	xchg   %ax,%ax
 804e9bb:	66 90                	xchg   %ax,%ax
 804e9bd:	66 90                	xchg   %ax,%ax
 804e9bf:	90                   	nop

0804e9c0 <__sflush_r>:
 804e9c0:	55                   	push   %ebp
 804e9c1:	89 e5                	mov    %esp,%ebp
 804e9c3:	57                   	push   %edi
 804e9c4:	56                   	push   %esi
 804e9c5:	53                   	push   %ebx
 804e9c6:	83 ec 1c             	sub    $0x1c,%esp
 804e9c9:	8b 7d 0c             	mov    0xc(%ebp),%edi
 804e9cc:	0f b7 47 0c          	movzwl 0xc(%edi),%eax
 804e9d0:	a8 08                	test   $0x8,%al
 804e9d2:	0f 85 c8 00 00 00    	jne    804eaa0 <__sflush_r+0xe0>
 804e9d8:	8b 77 04             	mov    0x4(%edi),%esi
 804e9db:	89 c1                	mov    %eax,%ecx
 804e9dd:	80 cd 08             	or     $0x8,%ch
 804e9e0:	66 89 4f 0c          	mov    %cx,0xc(%edi)
 804e9e4:	85 f6                	test   %esi,%esi
 804e9e6:	0f 8e 0c 01 00 00    	jle    804eaf8 <__sflush_r+0x138>
 804e9ec:	8b 57 28             	mov    0x28(%edi),%edx
 804e9ef:	85 d2                	test   %edx,%edx
 804e9f1:	0f 84 98 00 00 00    	je     804ea8f <__sflush_r+0xcf>
 804e9f7:	8b 75 08             	mov    0x8(%ebp),%esi
 804e9fa:	f6 c4 10             	test   $0x10,%ah
 804e9fd:	8b 1e                	mov    (%esi),%ebx
 804e9ff:	c7 06 00 00 00 00    	movl   $0x0,(%esi)
 804ea05:	0f 84 fd 00 00 00    	je     804eb08 <__sflush_r+0x148>
 804ea0b:	8b 47 50             	mov    0x50(%edi),%eax
 804ea0e:	83 e1 04             	and    $0x4,%ecx
 804ea11:	74 0d                	je     804ea20 <__sflush_r+0x60>
 804ea13:	8b 4f 30             	mov    0x30(%edi),%ecx
 804ea16:	2b 47 04             	sub    0x4(%edi),%eax
 804ea19:	85 c9                	test   %ecx,%ecx
 804ea1b:	74 03                	je     804ea20 <__sflush_r+0x60>
 804ea1d:	2b 47 3c             	sub    0x3c(%edi),%eax
 804ea20:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
 804ea27:	00 
 804ea28:	89 44 24 08          	mov    %eax,0x8(%esp)
 804ea2c:	8b 47 1c             	mov    0x1c(%edi),%eax
 804ea2f:	89 44 24 04          	mov    %eax,0x4(%esp)
 804ea33:	8b 45 08             	mov    0x8(%ebp),%eax
 804ea36:	89 04 24             	mov    %eax,(%esp)
 804ea39:	ff d2                	call   *%edx
 804ea3b:	83 f8 ff             	cmp    $0xffffffff,%eax
 804ea3e:	0f 84 f4 00 00 00    	je     804eb38 <__sflush_r+0x178>
 804ea44:	0f b7 57 0c          	movzwl 0xc(%edi),%edx
 804ea48:	c7 47 04 00 00 00 00 	movl   $0x0,0x4(%edi)
 804ea4f:	89 d1                	mov    %edx,%ecx
 804ea51:	80 e5 f7             	and    $0xf7,%ch
 804ea54:	80 e6 10             	and    $0x10,%dh
 804ea57:	66 89 4f 0c          	mov    %cx,0xc(%edi)
 804ea5b:	8b 4f 10             	mov    0x10(%edi),%ecx
 804ea5e:	89 0f                	mov    %ecx,(%edi)
 804ea60:	0f 85 25 01 00 00    	jne    804eb8b <__sflush_r+0x1cb>
 804ea66:	8b 45 08             	mov    0x8(%ebp),%eax
 804ea69:	89 18                	mov    %ebx,(%eax)
 804ea6b:	8b 47 30             	mov    0x30(%edi),%eax
 804ea6e:	85 c0                	test   %eax,%eax
 804ea70:	74 1d                	je     804ea8f <__sflush_r+0xcf>
 804ea72:	8d 57 40             	lea    0x40(%edi),%edx
 804ea75:	39 d0                	cmp    %edx,%eax
 804ea77:	74 0f                	je     804ea88 <__sflush_r+0xc8>
 804ea79:	89 44 24 04          	mov    %eax,0x4(%esp)
 804ea7d:	8b 45 08             	mov    0x8(%ebp),%eax
 804ea80:	89 04 24             	mov    %eax,(%esp)
 804ea83:	e8 d8 06 00 00       	call   804f160 <_free_r>
 804ea88:	c7 47 30 00 00 00 00 	movl   $0x0,0x30(%edi)
 804ea8f:	31 c0                	xor    %eax,%eax
 804ea91:	83 c4 1c             	add    $0x1c,%esp
 804ea94:	5b                   	pop    %ebx
 804ea95:	5e                   	pop    %esi
 804ea96:	5f                   	pop    %edi
 804ea97:	5d                   	pop    %ebp
 804ea98:	c3                   	ret    
 804ea99:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 804eaa0:	8b 77 10             	mov    0x10(%edi),%esi
 804eaa3:	85 f6                	test   %esi,%esi
 804eaa5:	74 e8                	je     804ea8f <__sflush_r+0xcf>
 804eaa7:	8b 1f                	mov    (%edi),%ebx
 804eaa9:	31 c9                	xor    %ecx,%ecx
 804eaab:	89 37                	mov    %esi,(%edi)
 804eaad:	29 f3                	sub    %esi,%ebx
 804eaaf:	a8 03                	test   $0x3,%al
 804eab1:	75 03                	jne    804eab6 <__sflush_r+0xf6>
 804eab3:	8b 4f 14             	mov    0x14(%edi),%ecx
 804eab6:	85 db                	test   %ebx,%ebx
 804eab8:	89 4f 08             	mov    %ecx,0x8(%edi)
 804eabb:	7f 0b                	jg     804eac8 <__sflush_r+0x108>
 804eabd:	eb d0                	jmp    804ea8f <__sflush_r+0xcf>
 804eabf:	90                   	nop
 804eac0:	29 c3                	sub    %eax,%ebx
 804eac2:	01 c6                	add    %eax,%esi
 804eac4:	85 db                	test   %ebx,%ebx
 804eac6:	7e c7                	jle    804ea8f <__sflush_r+0xcf>
 804eac8:	89 5c 24 0c          	mov    %ebx,0xc(%esp)
 804eacc:	89 74 24 08          	mov    %esi,0x8(%esp)
 804ead0:	8b 47 1c             	mov    0x1c(%edi),%eax
 804ead3:	89 44 24 04          	mov    %eax,0x4(%esp)
 804ead7:	8b 45 08             	mov    0x8(%ebp),%eax
 804eada:	89 04 24             	mov    %eax,(%esp)
 804eadd:	ff 57 24             	call   *0x24(%edi)
 804eae0:	85 c0                	test   %eax,%eax
 804eae2:	7f dc                	jg     804eac0 <__sflush_r+0x100>
 804eae4:	66 83 4f 0c 40       	orw    $0x40,0xc(%edi)
 804eae9:	83 c4 1c             	add    $0x1c,%esp
 804eaec:	5b                   	pop    %ebx
 804eaed:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804eaf2:	5e                   	pop    %esi
 804eaf3:	5f                   	pop    %edi
 804eaf4:	5d                   	pop    %ebp
 804eaf5:	c3                   	ret    
 804eaf6:	66 90                	xchg   %ax,%ax
 804eaf8:	8b 5f 3c             	mov    0x3c(%edi),%ebx
 804eafb:	85 db                	test   %ebx,%ebx
 804eafd:	0f 8f e9 fe ff ff    	jg     804e9ec <__sflush_r+0x2c>
 804eb03:	eb 8a                	jmp    804ea8f <__sflush_r+0xcf>
 804eb05:	8d 76 00             	lea    0x0(%esi),%esi
 804eb08:	c7 44 24 0c 01 00 00 	movl   $0x1,0xc(%esp)
 804eb0f:	00 
 804eb10:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 804eb17:	00 
 804eb18:	8b 47 1c             	mov    0x1c(%edi),%eax
 804eb1b:	89 44 24 04          	mov    %eax,0x4(%esp)
 804eb1f:	8b 45 08             	mov    0x8(%ebp),%eax
 804eb22:	89 04 24             	mov    %eax,(%esp)
 804eb25:	ff d2                	call   *%edx
 804eb27:	83 f8 ff             	cmp    $0xffffffff,%eax
 804eb2a:	74 3c                	je     804eb68 <__sflush_r+0x1a8>
 804eb2c:	0f b7 4f 0c          	movzwl 0xc(%edi),%ecx
 804eb30:	8b 57 28             	mov    0x28(%edi),%edx
 804eb33:	e9 d6 fe ff ff       	jmp    804ea0e <__sflush_r+0x4e>
 804eb38:	8b 55 08             	mov    0x8(%ebp),%edx
 804eb3b:	8b 12                	mov    (%edx),%edx
 804eb3d:	85 d2                	test   %edx,%edx
 804eb3f:	0f 84 ff fe ff ff    	je     804ea44 <__sflush_r+0x84>
 804eb45:	83 fa 1d             	cmp    $0x1d,%edx
 804eb48:	74 05                	je     804eb4f <__sflush_r+0x18f>
 804eb4a:	83 fa 16             	cmp    $0x16,%edx
 804eb4d:	75 95                	jne    804eae4 <__sflush_r+0x124>
 804eb4f:	8b 47 10             	mov    0x10(%edi),%eax
 804eb52:	66 81 67 0c ff f7    	andw   $0xf7ff,0xc(%edi)
 804eb58:	c7 47 04 00 00 00 00 	movl   $0x0,0x4(%edi)
 804eb5f:	89 07                	mov    %eax,(%edi)
 804eb61:	e9 00 ff ff ff       	jmp    804ea66 <__sflush_r+0xa6>
 804eb66:	66 90                	xchg   %ax,%ax
 804eb68:	8b 55 08             	mov    0x8(%ebp),%edx
 804eb6b:	8b 12                	mov    (%edx),%edx
 804eb6d:	85 d2                	test   %edx,%edx
 804eb6f:	74 bb                	je     804eb2c <__sflush_r+0x16c>
 804eb71:	83 fa 16             	cmp    $0x16,%edx
 804eb74:	74 09                	je     804eb7f <__sflush_r+0x1bf>
 804eb76:	83 fa 1d             	cmp    $0x1d,%edx
 804eb79:	0f 85 65 ff ff ff    	jne    804eae4 <__sflush_r+0x124>
 804eb7f:	8b 45 08             	mov    0x8(%ebp),%eax
 804eb82:	89 18                	mov    %ebx,(%eax)
 804eb84:	31 c0                	xor    %eax,%eax
 804eb86:	e9 06 ff ff ff       	jmp    804ea91 <__sflush_r+0xd1>
 804eb8b:	89 47 50             	mov    %eax,0x50(%edi)
 804eb8e:	e9 d3 fe ff ff       	jmp    804ea66 <__sflush_r+0xa6>
 804eb93:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 804eb99:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

0804eba0 <_fflush_r>:
 804eba0:	55                   	push   %ebp
 804eba1:	89 e5                	mov    %esp,%ebp
 804eba3:	56                   	push   %esi
 804eba4:	53                   	push   %ebx
 804eba5:	83 ec 10             	sub    $0x10,%esp
 804eba8:	8b 5d 08             	mov    0x8(%ebp),%ebx
 804ebab:	8b 75 0c             	mov    0xc(%ebp),%esi
 804ebae:	85 db                	test   %ebx,%ebx
 804ebb0:	74 07                	je     804ebb9 <_fflush_r+0x19>
 804ebb2:	8b 43 38             	mov    0x38(%ebx),%eax
 804ebb5:	85 c0                	test   %eax,%eax
 804ebb7:	74 2f                	je     804ebe8 <_fflush_r+0x48>
 804ebb9:	66 83 7e 0c 00       	cmpw   $0x0,0xc(%esi)
 804ebbe:	75 10                	jne    804ebd0 <_fflush_r+0x30>
 804ebc0:	83 c4 10             	add    $0x10,%esp
 804ebc3:	31 c0                	xor    %eax,%eax
 804ebc5:	5b                   	pop    %ebx
 804ebc6:	5e                   	pop    %esi
 804ebc7:	5d                   	pop    %ebp
 804ebc8:	c3                   	ret    
 804ebc9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 804ebd0:	89 75 0c             	mov    %esi,0xc(%ebp)
 804ebd3:	89 5d 08             	mov    %ebx,0x8(%ebp)
 804ebd6:	83 c4 10             	add    $0x10,%esp
 804ebd9:	5b                   	pop    %ebx
 804ebda:	5e                   	pop    %esi
 804ebdb:	5d                   	pop    %ebp
 804ebdc:	e9 df fd ff ff       	jmp    804e9c0 <__sflush_r>
 804ebe1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 804ebe8:	89 1c 24             	mov    %ebx,(%esp)
 804ebeb:	e8 20 01 00 00       	call   804ed10 <__sinit>
 804ebf0:	eb c7                	jmp    804ebb9 <_fflush_r+0x19>
 804ebf2:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 804ebf9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

0804ec00 <fflush>:
 804ec00:	55                   	push   %ebp
 804ec01:	89 e5                	mov    %esp,%ebp
 804ec03:	53                   	push   %ebx
 804ec04:	83 ec 14             	sub    $0x14,%esp
 804ec07:	8b 5d 08             	mov    0x8(%ebp),%ebx
 804ec0a:	85 db                	test   %ebx,%ebx
 804ec0c:	74 1a                	je     804ec28 <fflush+0x28>
 804ec0e:	e8 9d 08 00 00       	call   804f4b0 <__getreent>
 804ec13:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 804ec17:	89 04 24             	mov    %eax,(%esp)
 804ec1a:	e8 81 ff ff ff       	call   804eba0 <_fflush_r>
 804ec1f:	83 c4 14             	add    $0x14,%esp
 804ec22:	5b                   	pop    %ebx
 804ec23:	5d                   	pop    %ebp
 804ec24:	c3                   	ret    
 804ec25:	8d 76 00             	lea    0x0(%esi),%esi
 804ec28:	a1 90 4c 05 08       	mov    0x8054c90,%eax
 804ec2d:	c7 44 24 04 a0 eb 04 	movl   $0x804eba0,0x4(%esp)
 804ec34:	08 
 804ec35:	89 04 24             	mov    %eax,(%esp)
 804ec38:	e8 f3 07 00 00       	call   804f430 <_fwalk_reent>
 804ec3d:	83 c4 14             	add    $0x14,%esp
 804ec40:	5b                   	pop    %ebx
 804ec41:	5d                   	pop    %ebp
 804ec42:	c3                   	ret    
 804ec43:	66 90                	xchg   %ax,%ax
 804ec45:	66 90                	xchg   %ax,%ax
 804ec47:	66 90                	xchg   %ax,%ax
 804ec49:	66 90                	xchg   %ax,%ax
 804ec4b:	66 90                	xchg   %ax,%ax
 804ec4d:	66 90                	xchg   %ax,%ax
 804ec4f:	90                   	nop

0804ec50 <__fp_lock>:
 804ec50:	55                   	push   %ebp
 804ec51:	31 c0                	xor    %eax,%eax
 804ec53:	89 e5                	mov    %esp,%ebp
 804ec55:	5d                   	pop    %ebp
 804ec56:	c3                   	ret    
 804ec57:	89 f6                	mov    %esi,%esi
 804ec59:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

0804ec60 <__fp_unlock>:
 804ec60:	55                   	push   %ebp
 804ec61:	31 c0                	xor    %eax,%eax
 804ec63:	89 e5                	mov    %esp,%ebp
 804ec65:	5d                   	pop    %ebp
 804ec66:	c3                   	ret    
 804ec67:	89 f6                	mov    %esi,%esi
 804ec69:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

0804ec70 <_cleanup_r>:
 804ec70:	55                   	push   %ebp
 804ec71:	89 e5                	mov    %esp,%ebp
 804ec73:	83 ec 18             	sub    $0x18,%esp
 804ec76:	8b 45 08             	mov    0x8(%ebp),%eax
 804ec79:	c7 44 24 04 a0 33 05 	movl   $0x80533a0,0x4(%esp)
 804ec80:	08 
 804ec81:	89 04 24             	mov    %eax,(%esp)
 804ec84:	e8 37 07 00 00       	call   804f3c0 <_fwalk>
 804ec89:	c9                   	leave  
 804ec8a:	c3                   	ret    
 804ec8b:	90                   	nop
 804ec8c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

0804ec90 <__sfmoreglue>:
 804ec90:	55                   	push   %ebp
 804ec91:	89 e5                	mov    %esp,%ebp
 804ec93:	57                   	push   %edi
 804ec94:	56                   	push   %esi
 804ec95:	53                   	push   %ebx
 804ec96:	83 ec 1c             	sub    $0x1c,%esp
 804ec99:	8b 75 0c             	mov    0xc(%ebp),%esi
 804ec9c:	8d 7e ff             	lea    -0x1(%esi),%edi
 804ec9f:	6b ff 68             	imul   $0x68,%edi,%edi
 804eca2:	8d 47 74             	lea    0x74(%edi),%eax
 804eca5:	89 44 24 04          	mov    %eax,0x4(%esp)
 804eca9:	8b 45 08             	mov    0x8(%ebp),%eax
 804ecac:	89 04 24             	mov    %eax,(%esp)
 804ecaf:	e8 5c 0a 00 00       	call   804f710 <_malloc_r>
 804ecb4:	85 c0                	test   %eax,%eax
 804ecb6:	89 c3                	mov    %eax,%ebx
 804ecb8:	74 26                	je     804ece0 <__sfmoreglue+0x50>
 804ecba:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
 804ecc0:	83 c7 68             	add    $0x68,%edi
 804ecc3:	89 70 04             	mov    %esi,0x4(%eax)
 804ecc6:	8d 40 0c             	lea    0xc(%eax),%eax
 804ecc9:	89 43 08             	mov    %eax,0x8(%ebx)
 804eccc:	89 7c 24 08          	mov    %edi,0x8(%esp)
 804ecd0:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 804ecd7:	00 
 804ecd8:	89 04 24             	mov    %eax,(%esp)
 804ecdb:	e8 21 a5 ff ff       	call   8049201 <memset>
 804ece0:	83 c4 1c             	add    $0x1c,%esp
 804ece3:	89 d8                	mov    %ebx,%eax
 804ece5:	5b                   	pop    %ebx
 804ece6:	5e                   	pop    %esi
 804ece7:	5f                   	pop    %edi
 804ece8:	5d                   	pop    %ebp
 804ece9:	c3                   	ret    
 804ecea:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

0804ecf0 <_cleanup>:
 804ecf0:	55                   	push   %ebp
 804ecf1:	89 e5                	mov    %esp,%ebp
 804ecf3:	83 ec 18             	sub    $0x18,%esp
 804ecf6:	a1 90 4c 05 08       	mov    0x8054c90,%eax
 804ecfb:	c7 44 24 04 a0 33 05 	movl   $0x80533a0,0x4(%esp)
 804ed02:	08 
 804ed03:	89 04 24             	mov    %eax,(%esp)
 804ed06:	e8 b5 06 00 00       	call   804f3c0 <_fwalk>
 804ed0b:	c9                   	leave  
 804ed0c:	c3                   	ret    
 804ed0d:	8d 76 00             	lea    0x0(%esi),%esi

0804ed10 <__sinit>:
 804ed10:	55                   	push   %ebp
 804ed11:	89 e5                	mov    %esp,%ebp
 804ed13:	56                   	push   %esi
 804ed14:	53                   	push   %ebx
 804ed15:	83 ec 10             	sub    $0x10,%esp
 804ed18:	8b 75 08             	mov    0x8(%ebp),%esi
 804ed1b:	8b 46 38             	mov    0x38(%esi),%eax
 804ed1e:	85 c0                	test   %eax,%eax
 804ed20:	0f 85 a8 01 00 00    	jne    804eece <__sinit+0x1be>
 804ed26:	8b 5e 04             	mov    0x4(%esi),%ebx
 804ed29:	8d 86 ec 02 00 00    	lea    0x2ec(%esi),%eax
 804ed2f:	31 d2                	xor    %edx,%edx
 804ed31:	89 86 e8 02 00 00    	mov    %eax,0x2e8(%esi)
 804ed37:	b8 04 00 00 00       	mov    $0x4,%eax
 804ed3c:	c7 46 3c 70 ec 04 08 	movl   $0x804ec70,0x3c(%esi)
 804ed43:	c7 86 e0 02 00 00 00 	movl   $0x0,0x2e0(%esi)
 804ed4a:	00 00 00 
 804ed4d:	c7 86 e4 02 00 00 03 	movl   $0x3,0x2e4(%esi)
 804ed54:	00 00 00 
 804ed57:	66 89 43 0c          	mov    %ax,0xc(%ebx)
 804ed5b:	8d 43 5c             	lea    0x5c(%ebx),%eax
 804ed5e:	66 89 53 0e          	mov    %dx,0xe(%ebx)
 804ed62:	c7 03 00 00 00 00    	movl   $0x0,(%ebx)
 804ed68:	c7 43 04 00 00 00 00 	movl   $0x0,0x4(%ebx)
 804ed6f:	c7 43 08 00 00 00 00 	movl   $0x0,0x8(%ebx)
 804ed76:	c7 43 64 00 00 00 00 	movl   $0x0,0x64(%ebx)
 804ed7d:	c7 43 10 00 00 00 00 	movl   $0x0,0x10(%ebx)
 804ed84:	c7 43 14 00 00 00 00 	movl   $0x0,0x14(%ebx)
 804ed8b:	c7 43 18 00 00 00 00 	movl   $0x0,0x18(%ebx)
 804ed92:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
 804ed99:	00 
 804ed9a:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 804eda1:	00 
 804eda2:	89 04 24             	mov    %eax,(%esp)
 804eda5:	e8 57 a4 ff ff       	call   8049201 <memset>
 804edaa:	b8 01 00 00 00       	mov    $0x1,%eax
 804edaf:	b9 09 00 00 00       	mov    $0x9,%ecx
 804edb4:	89 5b 1c             	mov    %ebx,0x1c(%ebx)
 804edb7:	c7 43 20 e0 0d 05 08 	movl   $0x8050de0,0x20(%ebx)
 804edbe:	c7 43 24 40 0e 05 08 	movl   $0x8050e40,0x24(%ebx)
 804edc5:	c7 43 28 b0 0e 05 08 	movl   $0x8050eb0,0x28(%ebx)
 804edcc:	c7 43 2c 00 0f 05 08 	movl   $0x8050f00,0x2c(%ebx)
 804edd3:	8b 5e 08             	mov    0x8(%esi),%ebx
 804edd6:	66 89 43 0e          	mov    %ax,0xe(%ebx)
 804edda:	8d 43 5c             	lea    0x5c(%ebx),%eax
 804eddd:	66 89 4b 0c          	mov    %cx,0xc(%ebx)
 804ede1:	c7 03 00 00 00 00    	movl   $0x0,(%ebx)
 804ede7:	c7 43 04 00 00 00 00 	movl   $0x0,0x4(%ebx)
 804edee:	c7 43 08 00 00 00 00 	movl   $0x0,0x8(%ebx)
 804edf5:	c7 43 64 00 00 00 00 	movl   $0x0,0x64(%ebx)
 804edfc:	c7 43 10 00 00 00 00 	movl   $0x0,0x10(%ebx)
 804ee03:	c7 43 14 00 00 00 00 	movl   $0x0,0x14(%ebx)
 804ee0a:	c7 43 18 00 00 00 00 	movl   $0x0,0x18(%ebx)
 804ee11:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
 804ee18:	00 
 804ee19:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 804ee20:	00 
 804ee21:	89 04 24             	mov    %eax,(%esp)
 804ee24:	e8 d8 a3 ff ff       	call   8049201 <memset>
 804ee29:	b8 12 00 00 00       	mov    $0x12,%eax
 804ee2e:	89 5b 1c             	mov    %ebx,0x1c(%ebx)
 804ee31:	c7 43 20 e0 0d 05 08 	movl   $0x8050de0,0x20(%ebx)
 804ee38:	c7 43 24 40 0e 05 08 	movl   $0x8050e40,0x24(%ebx)
 804ee3f:	c7 43 28 b0 0e 05 08 	movl   $0x8050eb0,0x28(%ebx)
 804ee46:	c7 43 2c 00 0f 05 08 	movl   $0x8050f00,0x2c(%ebx)
 804ee4d:	8b 5e 0c             	mov    0xc(%esi),%ebx
 804ee50:	66 89 43 0c          	mov    %ax,0xc(%ebx)
 804ee54:	b8 02 00 00 00       	mov    $0x2,%eax
 804ee59:	66 89 43 0e          	mov    %ax,0xe(%ebx)
 804ee5d:	8d 43 5c             	lea    0x5c(%ebx),%eax
 804ee60:	c7 03 00 00 00 00    	movl   $0x0,(%ebx)
 804ee66:	c7 43 04 00 00 00 00 	movl   $0x0,0x4(%ebx)
 804ee6d:	c7 43 08 00 00 00 00 	movl   $0x0,0x8(%ebx)
 804ee74:	c7 43 64 00 00 00 00 	movl   $0x0,0x64(%ebx)
 804ee7b:	c7 43 10 00 00 00 00 	movl   $0x0,0x10(%ebx)
 804ee82:	c7 43 14 00 00 00 00 	movl   $0x0,0x14(%ebx)
 804ee89:	c7 43 18 00 00 00 00 	movl   $0x0,0x18(%ebx)
 804ee90:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
 804ee97:	00 
 804ee98:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 804ee9f:	00 
 804eea0:	89 04 24             	mov    %eax,(%esp)
 804eea3:	e8 59 a3 ff ff       	call   8049201 <memset>
 804eea8:	89 5b 1c             	mov    %ebx,0x1c(%ebx)
 804eeab:	c7 43 20 e0 0d 05 08 	movl   $0x8050de0,0x20(%ebx)
 804eeb2:	c7 43 24 40 0e 05 08 	movl   $0x8050e40,0x24(%ebx)
 804eeb9:	c7 43 28 b0 0e 05 08 	movl   $0x8050eb0,0x28(%ebx)
 804eec0:	c7 43 2c 00 0f 05 08 	movl   $0x8050f00,0x2c(%ebx)
 804eec7:	c7 46 38 01 00 00 00 	movl   $0x1,0x38(%esi)
 804eece:	83 c4 10             	add    $0x10,%esp
 804eed1:	5b                   	pop    %ebx
 804eed2:	5e                   	pop    %esi
 804eed3:	5d                   	pop    %ebp
 804eed4:	c3                   	ret    
 804eed5:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 804eed9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

0804eee0 <__sfp>:
 804eee0:	55                   	push   %ebp
 804eee1:	89 e5                	mov    %esp,%ebp
 804eee3:	56                   	push   %esi
 804eee4:	53                   	push   %ebx
 804eee5:	83 ec 10             	sub    $0x10,%esp
 804eee8:	8b 35 90 4c 05 08    	mov    0x8054c90,%esi
 804eeee:	8b 4e 38             	mov    0x38(%esi),%ecx
 804eef1:	85 c9                	test   %ecx,%ecx
 804eef3:	0f 84 bf 00 00 00    	je     804efb8 <__sfp+0xd8>
 804eef9:	81 c6 e0 02 00 00    	add    $0x2e0,%esi
 804eeff:	8b 46 04             	mov    0x4(%esi),%eax
 804ef02:	8b 5e 08             	mov    0x8(%esi),%ebx
 804ef05:	83 e8 01             	sub    $0x1,%eax
 804ef08:	79 15                	jns    804ef1f <__sfp+0x3f>
 804ef0a:	e9 99 00 00 00       	jmp    804efa8 <__sfp+0xc8>
 804ef0f:	90                   	nop
 804ef10:	83 e8 01             	sub    $0x1,%eax
 804ef13:	83 c3 68             	add    $0x68,%ebx
 804ef16:	83 f8 ff             	cmp    $0xffffffff,%eax
 804ef19:	0f 84 89 00 00 00    	je     804efa8 <__sfp+0xc8>
 804ef1f:	66 83 7b 0c 00       	cmpw   $0x0,0xc(%ebx)
 804ef24:	75 ea                	jne    804ef10 <__sfp+0x30>
 804ef26:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804ef2b:	ba 01 00 00 00       	mov    $0x1,%edx
 804ef30:	66 89 43 0e          	mov    %ax,0xe(%ebx)
 804ef34:	8d 43 5c             	lea    0x5c(%ebx),%eax
 804ef37:	66 89 53 0c          	mov    %dx,0xc(%ebx)
 804ef3b:	c7 43 64 00 00 00 00 	movl   $0x0,0x64(%ebx)
 804ef42:	c7 03 00 00 00 00    	movl   $0x0,(%ebx)
 804ef48:	c7 43 08 00 00 00 00 	movl   $0x0,0x8(%ebx)
 804ef4f:	c7 43 04 00 00 00 00 	movl   $0x0,0x4(%ebx)
 804ef56:	c7 43 10 00 00 00 00 	movl   $0x0,0x10(%ebx)
 804ef5d:	c7 43 14 00 00 00 00 	movl   $0x0,0x14(%ebx)
 804ef64:	c7 43 18 00 00 00 00 	movl   $0x0,0x18(%ebx)
 804ef6b:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
 804ef72:	00 
 804ef73:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 804ef7a:	00 
 804ef7b:	89 04 24             	mov    %eax,(%esp)
 804ef7e:	e8 7e a2 ff ff       	call   8049201 <memset>
 804ef83:	89 d8                	mov    %ebx,%eax
 804ef85:	c7 43 30 00 00 00 00 	movl   $0x0,0x30(%ebx)
 804ef8c:	c7 43 34 00 00 00 00 	movl   $0x0,0x34(%ebx)
 804ef93:	c7 43 44 00 00 00 00 	movl   $0x0,0x44(%ebx)
 804ef9a:	c7 43 48 00 00 00 00 	movl   $0x0,0x48(%ebx)
 804efa1:	83 c4 10             	add    $0x10,%esp
 804efa4:	5b                   	pop    %ebx
 804efa5:	5e                   	pop    %esi
 804efa6:	5d                   	pop    %ebp
 804efa7:	c3                   	ret    
 804efa8:	8b 06                	mov    (%esi),%eax
 804efaa:	85 c0                	test   %eax,%eax
 804efac:	74 17                	je     804efc5 <__sfp+0xe5>
 804efae:	89 c6                	mov    %eax,%esi
 804efb0:	e9 4a ff ff ff       	jmp    804eeff <__sfp+0x1f>
 804efb5:	8d 76 00             	lea    0x0(%esi),%esi
 804efb8:	89 34 24             	mov    %esi,(%esp)
 804efbb:	e8 50 fd ff ff       	call   804ed10 <__sinit>
 804efc0:	e9 34 ff ff ff       	jmp    804eef9 <__sfp+0x19>
 804efc5:	8b 45 08             	mov    0x8(%ebp),%eax
 804efc8:	c7 44 24 04 04 00 00 	movl   $0x4,0x4(%esp)
 804efcf:	00 
 804efd0:	89 04 24             	mov    %eax,(%esp)
 804efd3:	e8 b8 fc ff ff       	call   804ec90 <__sfmoreglue>
 804efd8:	85 c0                	test   %eax,%eax
 804efda:	89 06                	mov    %eax,(%esi)
 804efdc:	75 d0                	jne    804efae <__sfp+0xce>
 804efde:	8b 45 08             	mov    0x8(%ebp),%eax
 804efe1:	c7 00 0c 00 00 00    	movl   $0xc,(%eax)
 804efe7:	31 c0                	xor    %eax,%eax
 804efe9:	eb b6                	jmp    804efa1 <__sfp+0xc1>
 804efeb:	90                   	nop
 804efec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

0804eff0 <__sfp_lock_acquire>:
 804eff0:	55                   	push   %ebp
 804eff1:	89 e5                	mov    %esp,%ebp
 804eff3:	5d                   	pop    %ebp
 804eff4:	c3                   	ret    
 804eff5:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 804eff9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

0804f000 <__sfp_lock_release>:
 804f000:	55                   	push   %ebp
 804f001:	89 e5                	mov    %esp,%ebp
 804f003:	5d                   	pop    %ebp
 804f004:	c3                   	ret    
 804f005:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 804f009:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

0804f010 <__sinit_lock_acquire>:
 804f010:	55                   	push   %ebp
 804f011:	89 e5                	mov    %esp,%ebp
 804f013:	5d                   	pop    %ebp
 804f014:	c3                   	ret    
 804f015:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 804f019:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

0804f020 <__sinit_lock_release>:
 804f020:	55                   	push   %ebp
 804f021:	89 e5                	mov    %esp,%ebp
 804f023:	5d                   	pop    %ebp
 804f024:	c3                   	ret    
 804f025:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 804f029:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

0804f030 <__fp_lock_all>:
 804f030:	55                   	push   %ebp
 804f031:	89 e5                	mov    %esp,%ebp
 804f033:	83 ec 18             	sub    $0x18,%esp
 804f036:	e8 75 04 00 00       	call   804f4b0 <__getreent>
 804f03b:	c7 44 24 04 50 ec 04 	movl   $0x804ec50,0x4(%esp)
 804f042:	08 
 804f043:	89 04 24             	mov    %eax,(%esp)
 804f046:	e8 75 03 00 00       	call   804f3c0 <_fwalk>
 804f04b:	c9                   	leave  
 804f04c:	c3                   	ret    
 804f04d:	8d 76 00             	lea    0x0(%esi),%esi

0804f050 <__fp_unlock_all>:
 804f050:	55                   	push   %ebp
 804f051:	89 e5                	mov    %esp,%ebp
 804f053:	83 ec 18             	sub    $0x18,%esp
 804f056:	e8 55 04 00 00       	call   804f4b0 <__getreent>
 804f05b:	c7 44 24 04 60 ec 04 	movl   $0x804ec60,0x4(%esp)
 804f062:	08 
 804f063:	89 04 24             	mov    %eax,(%esp)
 804f066:	e8 55 03 00 00       	call   804f3c0 <_fwalk>
 804f06b:	c9                   	leave  
 804f06c:	c3                   	ret    
 804f06d:	66 90                	xchg   %ax,%ax
 804f06f:	90                   	nop

0804f070 <_malloc_trim_r>:
 804f070:	55                   	push   %ebp
 804f071:	89 e5                	mov    %esp,%ebp
 804f073:	57                   	push   %edi
 804f074:	56                   	push   %esi
 804f075:	53                   	push   %ebx
 804f076:	83 ec 1c             	sub    $0x1c,%esp
 804f079:	8b 75 08             	mov    0x8(%ebp),%esi
 804f07c:	89 34 24             	mov    %esi,(%esp)
 804f07f:	e8 ac 0e 00 00       	call   804ff30 <__malloc_lock>
 804f084:	a1 28 79 05 08       	mov    0x8057928,%eax
 804f089:	8b 58 04             	mov    0x4(%eax),%ebx
 804f08c:	83 e3 fc             	and    $0xfffffffc,%ebx
 804f08f:	89 d8                	mov    %ebx,%eax
 804f091:	2b 45 0c             	sub    0xc(%ebp),%eax
 804f094:	05 ef 0f 00 00       	add    $0xfef,%eax
 804f099:	25 00 f0 ff ff       	and    $0xfffff000,%eax
 804f09e:	8d b8 00 f0 ff ff    	lea    -0x1000(%eax),%edi
 804f0a4:	81 ff ff 0f 00 00    	cmp    $0xfff,%edi
 804f0aa:	7e 1c                	jle    804f0c8 <_malloc_trim_r+0x58>
 804f0ac:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 804f0b3:	00 
 804f0b4:	89 34 24             	mov    %esi,(%esp)
 804f0b7:	e8 74 1c 00 00       	call   8050d30 <_sbrk_r>
 804f0bc:	8b 15 28 79 05 08    	mov    0x8057928,%edx
 804f0c2:	01 da                	add    %ebx,%edx
 804f0c4:	39 d0                	cmp    %edx,%eax
 804f0c6:	74 18                	je     804f0e0 <_malloc_trim_r+0x70>
 804f0c8:	89 34 24             	mov    %esi,(%esp)
 804f0cb:	e8 70 0e 00 00       	call   804ff40 <__malloc_unlock>
 804f0d0:	83 c4 1c             	add    $0x1c,%esp
 804f0d3:	31 c0                	xor    %eax,%eax
 804f0d5:	5b                   	pop    %ebx
 804f0d6:	5e                   	pop    %esi
 804f0d7:	5f                   	pop    %edi
 804f0d8:	5d                   	pop    %ebp
 804f0d9:	c3                   	ret    
 804f0da:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 804f0e0:	89 f8                	mov    %edi,%eax
 804f0e2:	f7 d8                	neg    %eax
 804f0e4:	89 44 24 04          	mov    %eax,0x4(%esp)
 804f0e8:	89 34 24             	mov    %esi,(%esp)
 804f0eb:	e8 40 1c 00 00       	call   8050d30 <_sbrk_r>
 804f0f0:	83 f8 ff             	cmp    $0xffffffff,%eax
 804f0f3:	74 2b                	je     804f120 <_malloc_trim_r+0xb0>
 804f0f5:	a1 28 79 05 08       	mov    0x8057928,%eax
 804f0fa:	29 fb                	sub    %edi,%ebx
 804f0fc:	83 cb 01             	or     $0x1,%ebx
 804f0ff:	29 3d 40 d6 06 08    	sub    %edi,0x806d640
 804f105:	89 58 04             	mov    %ebx,0x4(%eax)
 804f108:	89 34 24             	mov    %esi,(%esp)
 804f10b:	e8 30 0e 00 00       	call   804ff40 <__malloc_unlock>
 804f110:	83 c4 1c             	add    $0x1c,%esp
 804f113:	b8 01 00 00 00       	mov    $0x1,%eax
 804f118:	5b                   	pop    %ebx
 804f119:	5e                   	pop    %esi
 804f11a:	5f                   	pop    %edi
 804f11b:	5d                   	pop    %ebp
 804f11c:	c3                   	ret    
 804f11d:	8d 76 00             	lea    0x0(%esi),%esi
 804f120:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 804f127:	00 
 804f128:	89 34 24             	mov    %esi,(%esp)
 804f12b:	e8 00 1c 00 00       	call   8050d30 <_sbrk_r>
 804f130:	8b 15 28 79 05 08    	mov    0x8057928,%edx
 804f136:	89 c1                	mov    %eax,%ecx
 804f138:	29 d1                	sub    %edx,%ecx
 804f13a:	83 f9 0f             	cmp    $0xf,%ecx
 804f13d:	7e 89                	jle    804f0c8 <_malloc_trim_r+0x58>
 804f13f:	2b 05 00 79 05 08    	sub    0x8057900,%eax
 804f145:	83 c9 01             	or     $0x1,%ecx
 804f148:	89 4a 04             	mov    %ecx,0x4(%edx)
 804f14b:	a3 40 d6 06 08       	mov    %eax,0x806d640
 804f150:	e9 73 ff ff ff       	jmp    804f0c8 <_malloc_trim_r+0x58>
 804f155:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 804f159:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

0804f160 <_free_r>:
 804f160:	55                   	push   %ebp
 804f161:	89 e5                	mov    %esp,%ebp
 804f163:	57                   	push   %edi
 804f164:	56                   	push   %esi
 804f165:	53                   	push   %ebx
 804f166:	83 ec 1c             	sub    $0x1c,%esp
 804f169:	8b 75 0c             	mov    0xc(%ebp),%esi
 804f16c:	8b 45 08             	mov    0x8(%ebp),%eax
 804f16f:	85 f6                	test   %esi,%esi
 804f171:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 804f174:	0f 84 fe 00 00 00    	je     804f278 <_free_r+0x118>
 804f17a:	89 04 24             	mov    %eax,(%esp)
 804f17d:	e8 ae 0d 00 00       	call   804ff30 <__malloc_lock>
 804f182:	8b 7e fc             	mov    -0x4(%esi),%edi
 804f185:	8d 56 f8             	lea    -0x8(%esi),%edx
 804f188:	89 f8                	mov    %edi,%eax
 804f18a:	83 e0 fe             	and    $0xfffffffe,%eax
 804f18d:	8d 0c 02             	lea    (%edx,%eax,1),%ecx
 804f190:	8b 59 04             	mov    0x4(%ecx),%ebx
 804f193:	83 e3 fc             	and    $0xfffffffc,%ebx
 804f196:	39 0d 28 79 05 08    	cmp    %ecx,0x8057928
 804f19c:	0f 84 0e 01 00 00    	je     804f2b0 <_free_r+0x150>
 804f1a2:	83 e7 01             	and    $0x1,%edi
 804f1a5:	89 59 04             	mov    %ebx,0x4(%ecx)
 804f1a8:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%ebp)
 804f1af:	75 1f                	jne    804f1d0 <_free_r+0x70>
 804f1b1:	8b 76 f8             	mov    -0x8(%esi),%esi
 804f1b4:	29 f2                	sub    %esi,%edx
 804f1b6:	01 f0                	add    %esi,%eax
 804f1b8:	8b 72 08             	mov    0x8(%edx),%esi
 804f1bb:	81 fe 28 79 05 08    	cmp    $0x8057928,%esi
 804f1c1:	0f 84 39 01 00 00    	je     804f300 <_free_r+0x1a0>
 804f1c7:	8b 7a 0c             	mov    0xc(%edx),%edi
 804f1ca:	89 7e 0c             	mov    %edi,0xc(%esi)
 804f1cd:	89 77 08             	mov    %esi,0x8(%edi)
 804f1d0:	f6 44 19 04 01       	testb  $0x1,0x4(%ecx,%ebx,1)
 804f1d5:	75 21                	jne    804f1f8 <_free_r+0x98>
 804f1d7:	8b 75 e0             	mov    -0x20(%ebp),%esi
 804f1da:	01 d8                	add    %ebx,%eax
 804f1dc:	8b 59 08             	mov    0x8(%ecx),%ebx
 804f1df:	85 f6                	test   %esi,%esi
 804f1e1:	75 0c                	jne    804f1ef <_free_r+0x8f>
 804f1e3:	81 fb 28 79 05 08    	cmp    $0x8057928,%ebx
 804f1e9:	0f 84 21 01 00 00    	je     804f310 <_free_r+0x1b0>
 804f1ef:	8b 49 0c             	mov    0xc(%ecx),%ecx
 804f1f2:	89 4b 0c             	mov    %ecx,0xc(%ebx)
 804f1f5:	89 59 08             	mov    %ebx,0x8(%ecx)
 804f1f8:	89 c1                	mov    %eax,%ecx
 804f1fa:	83 c9 01             	or     $0x1,%ecx
 804f1fd:	89 4a 04             	mov    %ecx,0x4(%edx)
 804f200:	8b 4d e0             	mov    -0x20(%ebp),%ecx
 804f203:	89 04 02             	mov    %eax,(%edx,%eax,1)
 804f206:	85 c9                	test   %ecx,%ecx
 804f208:	75 56                	jne    804f260 <_free_r+0x100>
 804f20a:	3d ff 01 00 00       	cmp    $0x1ff,%eax
 804f20f:	76 6f                	jbe    804f280 <_free_r+0x120>
 804f211:	89 c1                	mov    %eax,%ecx
 804f213:	c1 e9 09             	shr    $0x9,%ecx
 804f216:	83 f9 04             	cmp    $0x4,%ecx
 804f219:	0f 87 21 01 00 00    	ja     804f340 <_free_r+0x1e0>
 804f21f:	89 c1                	mov    %eax,%ecx
 804f221:	c1 e9 06             	shr    $0x6,%ecx
 804f224:	83 c1 38             	add    $0x38,%ecx
 804f227:	8d 1c 09             	lea    (%ecx,%ecx,1),%ebx
 804f22a:	8d 34 9d 20 79 05 08 	lea    0x8057920(,%ebx,4),%esi
 804f231:	8b 5e 08             	mov    0x8(%esi),%ebx
 804f234:	39 f3                	cmp    %esi,%ebx
 804f236:	0f 84 14 01 00 00    	je     804f350 <_free_r+0x1f0>
 804f23c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 804f240:	8b 4b 04             	mov    0x4(%ebx),%ecx
 804f243:	83 e1 fc             	and    $0xfffffffc,%ecx
 804f246:	39 c8                	cmp    %ecx,%eax
 804f248:	73 07                	jae    804f251 <_free_r+0xf1>
 804f24a:	8b 5b 08             	mov    0x8(%ebx),%ebx
 804f24d:	39 de                	cmp    %ebx,%esi
 804f24f:	75 ef                	jne    804f240 <_free_r+0xe0>
 804f251:	8b 43 0c             	mov    0xc(%ebx),%eax
 804f254:	89 42 0c             	mov    %eax,0xc(%edx)
 804f257:	89 5a 08             	mov    %ebx,0x8(%edx)
 804f25a:	89 50 08             	mov    %edx,0x8(%eax)
 804f25d:	89 53 0c             	mov    %edx,0xc(%ebx)
 804f260:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 804f263:	89 45 08             	mov    %eax,0x8(%ebp)
 804f266:	83 c4 1c             	add    $0x1c,%esp
 804f269:	5b                   	pop    %ebx
 804f26a:	5e                   	pop    %esi
 804f26b:	5f                   	pop    %edi
 804f26c:	5d                   	pop    %ebp
 804f26d:	e9 ce 0c 00 00       	jmp    804ff40 <__malloc_unlock>
 804f272:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 804f278:	83 c4 1c             	add    $0x1c,%esp
 804f27b:	5b                   	pop    %ebx
 804f27c:	5e                   	pop    %esi
 804f27d:	5f                   	pop    %edi
 804f27e:	5d                   	pop    %ebp
 804f27f:	c3                   	ret    
 804f280:	c1 e8 03             	shr    $0x3,%eax
 804f283:	bb 01 00 00 00       	mov    $0x1,%ebx
 804f288:	89 c1                	mov    %eax,%ecx
 804f28a:	c1 f9 02             	sar    $0x2,%ecx
 804f28d:	8d 04 c5 20 79 05 08 	lea    0x8057920(,%eax,8),%eax
 804f294:	d3 e3                	shl    %cl,%ebx
 804f296:	8b 48 08             	mov    0x8(%eax),%ecx
 804f299:	09 1d 24 79 05 08    	or     %ebx,0x8057924
 804f29f:	89 42 0c             	mov    %eax,0xc(%edx)
 804f2a2:	89 4a 08             	mov    %ecx,0x8(%edx)
 804f2a5:	89 50 08             	mov    %edx,0x8(%eax)
 804f2a8:	89 51 0c             	mov    %edx,0xc(%ecx)
 804f2ab:	eb b3                	jmp    804f260 <_free_r+0x100>
 804f2ad:	8d 76 00             	lea    0x0(%esi),%esi
 804f2b0:	01 d8                	add    %ebx,%eax
 804f2b2:	83 e7 01             	and    $0x1,%edi
 804f2b5:	75 13                	jne    804f2ca <_free_r+0x16a>
 804f2b7:	8b 4e f8             	mov    -0x8(%esi),%ecx
 804f2ba:	29 ca                	sub    %ecx,%edx
 804f2bc:	01 c8                	add    %ecx,%eax
 804f2be:	8b 5a 08             	mov    0x8(%edx),%ebx
 804f2c1:	8b 4a 0c             	mov    0xc(%edx),%ecx
 804f2c4:	89 4b 0c             	mov    %ecx,0xc(%ebx)
 804f2c7:	89 59 08             	mov    %ebx,0x8(%ecx)
 804f2ca:	89 c1                	mov    %eax,%ecx
 804f2cc:	83 c9 01             	or     $0x1,%ecx
 804f2cf:	3b 05 04 79 05 08    	cmp    0x8057904,%eax
 804f2d5:	89 4a 04             	mov    %ecx,0x4(%edx)
 804f2d8:	89 15 28 79 05 08    	mov    %edx,0x8057928
 804f2de:	72 80                	jb     804f260 <_free_r+0x100>
 804f2e0:	a1 70 d6 06 08       	mov    0x806d670,%eax
 804f2e5:	89 44 24 04          	mov    %eax,0x4(%esp)
 804f2e9:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 804f2ec:	89 04 24             	mov    %eax,(%esp)
 804f2ef:	e8 7c fd ff ff       	call   804f070 <_malloc_trim_r>
 804f2f4:	e9 67 ff ff ff       	jmp    804f260 <_free_r+0x100>
 804f2f9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 804f300:	c7 45 e0 01 00 00 00 	movl   $0x1,-0x20(%ebp)
 804f307:	e9 c4 fe ff ff       	jmp    804f1d0 <_free_r+0x70>
 804f30c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 804f310:	89 c1                	mov    %eax,%ecx
 804f312:	83 c9 01             	or     $0x1,%ecx
 804f315:	89 15 34 79 05 08    	mov    %edx,0x8057934
 804f31b:	89 15 30 79 05 08    	mov    %edx,0x8057930
 804f321:	c7 42 0c 28 79 05 08 	movl   $0x8057928,0xc(%edx)
 804f328:	c7 42 08 28 79 05 08 	movl   $0x8057928,0x8(%edx)
 804f32f:	89 4a 04             	mov    %ecx,0x4(%edx)
 804f332:	89 04 02             	mov    %eax,(%edx,%eax,1)
 804f335:	e9 26 ff ff ff       	jmp    804f260 <_free_r+0x100>
 804f33a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 804f340:	83 f9 14             	cmp    $0x14,%ecx
 804f343:	77 23                	ja     804f368 <_free_r+0x208>
 804f345:	83 c1 5b             	add    $0x5b,%ecx
 804f348:	8d 1c 09             	lea    (%ecx,%ecx,1),%ebx
 804f34b:	e9 da fe ff ff       	jmp    804f22a <_free_r+0xca>
 804f350:	c1 f9 02             	sar    $0x2,%ecx
 804f353:	b8 01 00 00 00       	mov    $0x1,%eax
 804f358:	d3 e0                	shl    %cl,%eax
 804f35a:	09 05 24 79 05 08    	or     %eax,0x8057924
 804f360:	89 d8                	mov    %ebx,%eax
 804f362:	e9 ed fe ff ff       	jmp    804f254 <_free_r+0xf4>
 804f367:	90                   	nop
 804f368:	83 f9 54             	cmp    $0x54,%ecx
 804f36b:	77 10                	ja     804f37d <_free_r+0x21d>
 804f36d:	89 c1                	mov    %eax,%ecx
 804f36f:	c1 e9 0c             	shr    $0xc,%ecx
 804f372:	83 c1 6e             	add    $0x6e,%ecx
 804f375:	8d 1c 09             	lea    (%ecx,%ecx,1),%ebx
 804f378:	e9 ad fe ff ff       	jmp    804f22a <_free_r+0xca>
 804f37d:	81 f9 54 01 00 00    	cmp    $0x154,%ecx
 804f383:	77 10                	ja     804f395 <_free_r+0x235>
 804f385:	89 c1                	mov    %eax,%ecx
 804f387:	c1 e9 0f             	shr    $0xf,%ecx
 804f38a:	83 c1 77             	add    $0x77,%ecx
 804f38d:	8d 1c 09             	lea    (%ecx,%ecx,1),%ebx
 804f390:	e9 95 fe ff ff       	jmp    804f22a <_free_r+0xca>
 804f395:	81 f9 54 05 00 00    	cmp    $0x554,%ecx
 804f39b:	77 10                	ja     804f3ad <_free_r+0x24d>
 804f39d:	89 c1                	mov    %eax,%ecx
 804f39f:	c1 e9 12             	shr    $0x12,%ecx
 804f3a2:	83 c1 7c             	add    $0x7c,%ecx
 804f3a5:	8d 1c 09             	lea    (%ecx,%ecx,1),%ebx
 804f3a8:	e9 7d fe ff ff       	jmp    804f22a <_free_r+0xca>
 804f3ad:	bb fc 00 00 00       	mov    $0xfc,%ebx
 804f3b2:	b9 7e 00 00 00       	mov    $0x7e,%ecx
 804f3b7:	e9 6e fe ff ff       	jmp    804f22a <_free_r+0xca>
 804f3bc:	66 90                	xchg   %ax,%ax
 804f3be:	66 90                	xchg   %ax,%ax

0804f3c0 <_fwalk>:
 804f3c0:	55                   	push   %ebp
 804f3c1:	89 e5                	mov    %esp,%ebp
 804f3c3:	57                   	push   %edi
 804f3c4:	56                   	push   %esi
 804f3c5:	53                   	push   %ebx
 804f3c6:	83 ec 1c             	sub    $0x1c,%esp
 804f3c9:	8b 75 08             	mov    0x8(%ebp),%esi
 804f3cc:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
 804f3d3:	81 c6 e0 02 00 00    	add    $0x2e0,%esi
 804f3d9:	74 3d                	je     804f418 <_fwalk+0x58>
 804f3db:	90                   	nop
 804f3dc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 804f3e0:	8b 7e 04             	mov    0x4(%esi),%edi
 804f3e3:	8b 5e 08             	mov    0x8(%esi),%ebx
 804f3e6:	83 ef 01             	sub    $0x1,%edi
 804f3e9:	78 27                	js     804f412 <_fwalk+0x52>
 804f3eb:	90                   	nop
 804f3ec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 804f3f0:	66 83 7b 0c 01       	cmpw   $0x1,0xc(%ebx)
 804f3f5:	76 10                	jbe    804f407 <_fwalk+0x47>
 804f3f7:	66 83 7b 0e ff       	cmpw   $0xffff,0xe(%ebx)
 804f3fc:	74 09                	je     804f407 <_fwalk+0x47>
 804f3fe:	89 1c 24             	mov    %ebx,(%esp)
 804f401:	ff 55 0c             	call   *0xc(%ebp)
 804f404:	09 45 e4             	or     %eax,-0x1c(%ebp)
 804f407:	83 ef 01             	sub    $0x1,%edi
 804f40a:	83 c3 68             	add    $0x68,%ebx
 804f40d:	83 ff ff             	cmp    $0xffffffff,%edi
 804f410:	75 de                	jne    804f3f0 <_fwalk+0x30>
 804f412:	8b 36                	mov    (%esi),%esi
 804f414:	85 f6                	test   %esi,%esi
 804f416:	75 c8                	jne    804f3e0 <_fwalk+0x20>
 804f418:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 804f41b:	83 c4 1c             	add    $0x1c,%esp
 804f41e:	5b                   	pop    %ebx
 804f41f:	5e                   	pop    %esi
 804f420:	5f                   	pop    %edi
 804f421:	5d                   	pop    %ebp
 804f422:	c3                   	ret    
 804f423:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 804f429:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

0804f430 <_fwalk_reent>:
 804f430:	55                   	push   %ebp
 804f431:	89 e5                	mov    %esp,%ebp
 804f433:	57                   	push   %edi
 804f434:	56                   	push   %esi
 804f435:	53                   	push   %ebx
 804f436:	83 ec 1c             	sub    $0x1c,%esp
 804f439:	8b 7d 08             	mov    0x8(%ebp),%edi
 804f43c:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
 804f443:	81 c7 e0 02 00 00    	add    $0x2e0,%edi
 804f449:	74 4c                	je     804f497 <_fwalk_reent+0x67>
 804f44b:	90                   	nop
 804f44c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 804f450:	8b 77 04             	mov    0x4(%edi),%esi
 804f453:	8b 5f 08             	mov    0x8(%edi),%ebx
 804f456:	83 ee 01             	sub    $0x1,%esi
 804f459:	78 36                	js     804f491 <_fwalk_reent+0x61>
 804f45b:	89 d8                	mov    %ebx,%eax
 804f45d:	89 f3                	mov    %esi,%ebx
 804f45f:	89 c6                	mov    %eax,%esi
 804f461:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 804f468:	66 83 7e 0c 01       	cmpw   $0x1,0xc(%esi)
 804f46d:	76 17                	jbe    804f486 <_fwalk_reent+0x56>
 804f46f:	66 83 7e 0e ff       	cmpw   $0xffff,0xe(%esi)
 804f474:	74 10                	je     804f486 <_fwalk_reent+0x56>
 804f476:	8b 45 08             	mov    0x8(%ebp),%eax
 804f479:	89 74 24 04          	mov    %esi,0x4(%esp)
 804f47d:	89 04 24             	mov    %eax,(%esp)
 804f480:	ff 55 0c             	call   *0xc(%ebp)
 804f483:	09 45 e4             	or     %eax,-0x1c(%ebp)
 804f486:	83 eb 01             	sub    $0x1,%ebx
 804f489:	83 c6 68             	add    $0x68,%esi
 804f48c:	83 fb ff             	cmp    $0xffffffff,%ebx
 804f48f:	75 d7                	jne    804f468 <_fwalk_reent+0x38>
 804f491:	8b 3f                	mov    (%edi),%edi
 804f493:	85 ff                	test   %edi,%edi
 804f495:	75 b9                	jne    804f450 <_fwalk_reent+0x20>
 804f497:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 804f49a:	83 c4 1c             	add    $0x1c,%esp
 804f49d:	5b                   	pop    %ebx
 804f49e:	5e                   	pop    %esi
 804f49f:	5f                   	pop    %edi
 804f4a0:	5d                   	pop    %ebp
 804f4a1:	c3                   	ret    
 804f4a2:	66 90                	xchg   %ax,%ax
 804f4a4:	66 90                	xchg   %ax,%ax
 804f4a6:	66 90                	xchg   %ax,%ax
 804f4a8:	66 90                	xchg   %ax,%ax
 804f4aa:	66 90                	xchg   %ax,%ax
 804f4ac:	66 90                	xchg   %ax,%ax
 804f4ae:	66 90                	xchg   %ax,%ax

0804f4b0 <__getreent>:
 804f4b0:	55                   	push   %ebp
 804f4b1:	a1 20 74 05 08       	mov    0x8057420,%eax
 804f4b6:	89 e5                	mov    %esp,%ebp
 804f4b8:	5d                   	pop    %ebp
 804f4b9:	c3                   	ret    
 804f4ba:	66 90                	xchg   %ax,%ax
 804f4bc:	66 90                	xchg   %ax,%ax
 804f4be:	66 90                	xchg   %ax,%ax

0804f4c0 <_setlocale_r>:
 804f4c0:	55                   	push   %ebp
 804f4c1:	89 e5                	mov    %esp,%ebp
 804f4c3:	53                   	push   %ebx
 804f4c4:	83 ec 14             	sub    $0x14,%esp
 804f4c7:	8b 5d 10             	mov    0x10(%ebp),%ebx
 804f4ca:	85 db                	test   %ebx,%ebx
 804f4cc:	74 14                	je     804f4e2 <_setlocale_r+0x22>
 804f4ce:	c7 44 24 04 96 4c 05 	movl   $0x8054c96,0x4(%esp)
 804f4d5:	08 
 804f4d6:	89 1c 24             	mov    %ebx,(%esp)
 804f4d9:	e8 42 1a 00 00       	call   8050f20 <strcmp>
 804f4de:	85 c0                	test   %eax,%eax
 804f4e0:	75 0e                	jne    804f4f0 <_setlocale_r+0x30>
 804f4e2:	83 c4 14             	add    $0x14,%esp
 804f4e5:	b8 94 4c 05 08       	mov    $0x8054c94,%eax
 804f4ea:	5b                   	pop    %ebx
 804f4eb:	5d                   	pop    %ebp
 804f4ec:	c3                   	ret    
 804f4ed:	8d 76 00             	lea    0x0(%esi),%esi
 804f4f0:	c7 44 24 04 94 4c 05 	movl   $0x8054c94,0x4(%esp)
 804f4f7:	08 
 804f4f8:	89 1c 24             	mov    %ebx,(%esp)
 804f4fb:	e8 20 1a 00 00       	call   8050f20 <strcmp>
 804f500:	85 c0                	test   %eax,%eax
 804f502:	74 de                	je     804f4e2 <_setlocale_r+0x22>
 804f504:	89 1c 24             	mov    %ebx,(%esp)
 804f507:	c7 44 24 04 6d 46 05 	movl   $0x805466d,0x4(%esp)
 804f50e:	08 
 804f50f:	e8 0c 1a 00 00       	call   8050f20 <strcmp>
 804f514:	89 c2                	mov    %eax,%edx
 804f516:	31 c0                	xor    %eax,%eax
 804f518:	85 d2                	test   %edx,%edx
 804f51a:	ba 94 4c 05 08       	mov    $0x8054c94,%edx
 804f51f:	0f 44 c2             	cmove  %edx,%eax
 804f522:	83 c4 14             	add    $0x14,%esp
 804f525:	5b                   	pop    %ebx
 804f526:	5d                   	pop    %ebp
 804f527:	c3                   	ret    
 804f528:	90                   	nop
 804f529:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

0804f530 <__locale_charset>:
 804f530:	55                   	push   %ebp
 804f531:	b8 a0 78 05 08       	mov    $0x80578a0,%eax
 804f536:	89 e5                	mov    %esp,%ebp
 804f538:	5d                   	pop    %ebp
 804f539:	c3                   	ret    
 804f53a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

0804f540 <__locale_mb_cur_max>:
 804f540:	55                   	push   %ebp
 804f541:	a1 f8 78 05 08       	mov    0x80578f8,%eax
 804f546:	89 e5                	mov    %esp,%ebp
 804f548:	5d                   	pop    %ebp
 804f549:	c3                   	ret    
 804f54a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

0804f550 <__locale_msgcharset>:
 804f550:	55                   	push   %ebp
 804f551:	b8 80 78 05 08       	mov    $0x8057880,%eax
 804f556:	89 e5                	mov    %esp,%ebp
 804f558:	5d                   	pop    %ebp
 804f559:	c3                   	ret    
 804f55a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

0804f560 <__locale_cjk_lang>:
 804f560:	55                   	push   %ebp
 804f561:	31 c0                	xor    %eax,%eax
 804f563:	89 e5                	mov    %esp,%ebp
 804f565:	5d                   	pop    %ebp
 804f566:	c3                   	ret    
 804f567:	89 f6                	mov    %esi,%esi
 804f569:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

0804f570 <_localeconv_r>:
 804f570:	55                   	push   %ebp
 804f571:	b8 c0 78 05 08       	mov    $0x80578c0,%eax
 804f576:	89 e5                	mov    %esp,%ebp
 804f578:	5d                   	pop    %ebp
 804f579:	c3                   	ret    
 804f57a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

0804f580 <setlocale>:
 804f580:	55                   	push   %ebp
 804f581:	89 e5                	mov    %esp,%ebp
 804f583:	83 ec 18             	sub    $0x18,%esp
 804f586:	e8 25 ff ff ff       	call   804f4b0 <__getreent>
 804f58b:	8b 55 0c             	mov    0xc(%ebp),%edx
 804f58e:	89 54 24 08          	mov    %edx,0x8(%esp)
 804f592:	8b 55 08             	mov    0x8(%ebp),%edx
 804f595:	89 04 24             	mov    %eax,(%esp)
 804f598:	89 54 24 04          	mov    %edx,0x4(%esp)
 804f59c:	e8 1f ff ff ff       	call   804f4c0 <_setlocale_r>
 804f5a1:	c9                   	leave  
 804f5a2:	c3                   	ret    
 804f5a3:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 804f5a9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

0804f5b0 <localeconv>:
 804f5b0:	55                   	push   %ebp
 804f5b1:	89 e5                	mov    %esp,%ebp
 804f5b3:	83 ec 08             	sub    $0x8,%esp
 804f5b6:	e8 f5 fe ff ff       	call   804f4b0 <__getreent>
 804f5bb:	b8 c0 78 05 08       	mov    $0x80578c0,%eax
 804f5c0:	c9                   	leave  
 804f5c1:	c3                   	ret    
 804f5c2:	66 90                	xchg   %ax,%ax
 804f5c4:	66 90                	xchg   %ax,%ax
 804f5c6:	66 90                	xchg   %ax,%ax
 804f5c8:	66 90                	xchg   %ax,%ax
 804f5ca:	66 90                	xchg   %ax,%ax
 804f5cc:	66 90                	xchg   %ax,%ax
 804f5ce:	66 90                	xchg   %ax,%ax

0804f5d0 <__smakebuf_r>:
 804f5d0:	55                   	push   %ebp
 804f5d1:	89 e5                	mov    %esp,%ebp
 804f5d3:	57                   	push   %edi
 804f5d4:	56                   	push   %esi
 804f5d5:	53                   	push   %ebx
 804f5d6:	83 ec 5c             	sub    $0x5c,%esp
 804f5d9:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 804f5dc:	0f b7 43 0c          	movzwl 0xc(%ebx),%eax
 804f5e0:	a8 02                	test   $0x2,%al
 804f5e2:	0f 85 c0 00 00 00    	jne    804f6a8 <__smakebuf_r+0xd8>
 804f5e8:	0f bf 53 0e          	movswl 0xe(%ebx),%edx
 804f5ec:	66 85 d2             	test   %dx,%dx
 804f5ef:	78 4b                	js     804f63c <__smakebuf_r+0x6c>
 804f5f1:	8d 45 ac             	lea    -0x54(%ebp),%eax
 804f5f4:	89 44 24 08          	mov    %eax,0x8(%esp)
 804f5f8:	8b 45 08             	mov    0x8(%ebp),%eax
 804f5fb:	89 54 24 04          	mov    %edx,0x4(%esp)
 804f5ff:	89 04 24             	mov    %eax,(%esp)
 804f602:	e8 39 3f 00 00       	call   8053540 <_fstat_r>
 804f607:	85 c0                	test   %eax,%eax
 804f609:	78 2d                	js     804f638 <__smakebuf_r+0x68>
 804f60b:	8b 45 b0             	mov    -0x50(%ebp),%eax
 804f60e:	31 c9                	xor    %ecx,%ecx
 804f610:	25 00 f0 00 00       	and    $0xf000,%eax
 804f615:	3d 00 20 00 00       	cmp    $0x2000,%eax
 804f61a:	0f 94 c1             	sete   %cl
 804f61d:	3d 00 80 00 00       	cmp    $0x8000,%eax
 804f622:	89 cf                	mov    %ecx,%edi
 804f624:	0f 84 96 00 00 00    	je     804f6c0 <__smakebuf_r+0xf0>
 804f62a:	66 81 4b 0c 00 08    	orw    $0x800,0xc(%ebx)
 804f630:	be 00 04 00 00       	mov    $0x400,%esi
 804f635:	eb 24                	jmp    804f65b <__smakebuf_r+0x8b>
 804f637:	90                   	nop
 804f638:	0f b7 43 0c          	movzwl 0xc(%ebx),%eax
 804f63c:	89 c2                	mov    %eax,%edx
 804f63e:	66 81 e2 80 00       	and    $0x80,%dx
 804f643:	66 83 fa 01          	cmp    $0x1,%dx
 804f647:	19 f6                	sbb    %esi,%esi
 804f649:	80 cc 08             	or     $0x8,%ah
 804f64c:	81 e6 c0 03 00 00    	and    $0x3c0,%esi
 804f652:	31 ff                	xor    %edi,%edi
 804f654:	83 c6 40             	add    $0x40,%esi
 804f657:	66 89 43 0c          	mov    %ax,0xc(%ebx)
 804f65b:	8b 45 08             	mov    0x8(%ebp),%eax
 804f65e:	89 74 24 04          	mov    %esi,0x4(%esp)
 804f662:	89 04 24             	mov    %eax,(%esp)
 804f665:	e8 a6 00 00 00       	call   804f710 <_malloc_r>
 804f66a:	85 c0                	test   %eax,%eax
 804f66c:	74 2a                	je     804f698 <__smakebuf_r+0xc8>
 804f66e:	8b 4d 08             	mov    0x8(%ebp),%ecx
 804f671:	c7 41 3c 70 ec 04 08 	movl   $0x804ec70,0x3c(%ecx)
 804f678:	66 81 4b 0c 80 00    	orw    $0x80,0xc(%ebx)
 804f67e:	85 ff                	test   %edi,%edi
 804f680:	89 03                	mov    %eax,(%ebx)
 804f682:	89 43 10             	mov    %eax,0x10(%ebx)
 804f685:	89 73 14             	mov    %esi,0x14(%ebx)
 804f688:	75 5e                	jne    804f6e8 <__smakebuf_r+0x118>
 804f68a:	83 c4 5c             	add    $0x5c,%esp
 804f68d:	5b                   	pop    %ebx
 804f68e:	5e                   	pop    %esi
 804f68f:	5f                   	pop    %edi
 804f690:	5d                   	pop    %ebp
 804f691:	c3                   	ret    
 804f692:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 804f698:	0f b7 43 0c          	movzwl 0xc(%ebx),%eax
 804f69c:	f6 c4 02             	test   $0x2,%ah
 804f69f:	75 e9                	jne    804f68a <__smakebuf_r+0xba>
 804f6a1:	83 c8 02             	or     $0x2,%eax
 804f6a4:	66 89 43 0c          	mov    %ax,0xc(%ebx)
 804f6a8:	8d 43 43             	lea    0x43(%ebx),%eax
 804f6ab:	89 03                	mov    %eax,(%ebx)
 804f6ad:	89 43 10             	mov    %eax,0x10(%ebx)
 804f6b0:	c7 43 14 01 00 00 00 	movl   $0x1,0x14(%ebx)
 804f6b7:	83 c4 5c             	add    $0x5c,%esp
 804f6ba:	5b                   	pop    %ebx
 804f6bb:	5e                   	pop    %esi
 804f6bc:	5f                   	pop    %edi
 804f6bd:	5d                   	pop    %ebp
 804f6be:	c3                   	ret    
 804f6bf:	90                   	nop
 804f6c0:	81 7b 28 b0 0e 05 08 	cmpl   $0x8050eb0,0x28(%ebx)
 804f6c7:	0f 85 5d ff ff ff    	jne    804f62a <__smakebuf_r+0x5a>
 804f6cd:	66 81 4b 0c 00 04    	orw    $0x400,0xc(%ebx)
 804f6d3:	be 00 04 00 00       	mov    $0x400,%esi
 804f6d8:	c7 43 4c 00 04 00 00 	movl   $0x400,0x4c(%ebx)
 804f6df:	e9 77 ff ff ff       	jmp    804f65b <__smakebuf_r+0x8b>
 804f6e4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 804f6e8:	0f bf 43 0e          	movswl 0xe(%ebx),%eax
 804f6ec:	89 0c 24             	mov    %ecx,(%esp)
 804f6ef:	89 44 24 04          	mov    %eax,0x4(%esp)
 804f6f3:	e8 68 43 00 00       	call   8053a60 <_isatty_r>
 804f6f8:	85 c0                	test   %eax,%eax
 804f6fa:	74 8e                	je     804f68a <__smakebuf_r+0xba>
 804f6fc:	66 83 4b 0c 01       	orw    $0x1,0xc(%ebx)
 804f701:	eb 87                	jmp    804f68a <__smakebuf_r+0xba>
 804f703:	66 90                	xchg   %ax,%ax
 804f705:	66 90                	xchg   %ax,%ax
 804f707:	66 90                	xchg   %ax,%ax
 804f709:	66 90                	xchg   %ax,%ax
 804f70b:	66 90                	xchg   %ax,%ax
 804f70d:	66 90                	xchg   %ax,%ax
 804f70f:	90                   	nop

0804f710 <_malloc_r>:
 804f710:	55                   	push   %ebp
 804f711:	89 e5                	mov    %esp,%ebp
 804f713:	57                   	push   %edi
 804f714:	56                   	push   %esi
 804f715:	53                   	push   %ebx
 804f716:	83 ec 2c             	sub    $0x2c,%esp
 804f719:	8b 45 0c             	mov    0xc(%ebp),%eax
 804f71c:	8d 50 0b             	lea    0xb(%eax),%edx
 804f71f:	83 fa 16             	cmp    $0x16,%edx
 804f722:	76 6c                	jbe    804f790 <_malloc_r+0x80>
 804f724:	89 d7                	mov    %edx,%edi
 804f726:	83 e7 f8             	and    $0xfffffff8,%edi
 804f729:	89 fe                	mov    %edi,%esi
 804f72b:	c1 ee 1f             	shr    $0x1f,%esi
 804f72e:	39 c7                	cmp    %eax,%edi
 804f730:	8b 45 08             	mov    0x8(%ebp),%eax
 804f733:	89 f2                	mov    %esi,%edx
 804f735:	72 67                	jb     804f79e <_malloc_r+0x8e>
 804f737:	84 d2                	test   %dl,%dl
 804f739:	75 63                	jne    804f79e <_malloc_r+0x8e>
 804f73b:	89 04 24             	mov    %eax,(%esp)
 804f73e:	e8 ed 07 00 00       	call   804ff30 <__malloc_lock>
 804f743:	81 ff f7 01 00 00    	cmp    $0x1f7,%edi
 804f749:	77 65                	ja     804f7b0 <_malloc_r+0xa0>
 804f74b:	89 fa                	mov    %edi,%edx
 804f74d:	c1 ea 03             	shr    $0x3,%edx
 804f750:	8d 04 d5 20 79 05 08 	lea    0x8057920(,%edx,8),%eax
 804f757:	8b 58 0c             	mov    0xc(%eax),%ebx
 804f75a:	39 c3                	cmp    %eax,%ebx
 804f75c:	0f 84 3e 05 00 00    	je     804fca0 <_malloc_r+0x590>
 804f762:	8b 43 04             	mov    0x4(%ebx),%eax
 804f765:	83 e0 fc             	and    $0xfffffffc,%eax
 804f768:	8b 53 0c             	mov    0xc(%ebx),%edx
 804f76b:	8b 4b 08             	mov    0x8(%ebx),%ecx
 804f76e:	89 51 0c             	mov    %edx,0xc(%ecx)
 804f771:	89 4a 08             	mov    %ecx,0x8(%edx)
 804f774:	83 4c 03 04 01       	orl    $0x1,0x4(%ebx,%eax,1)
 804f779:	8b 45 08             	mov    0x8(%ebp),%eax
 804f77c:	89 04 24             	mov    %eax,(%esp)
 804f77f:	e8 bc 07 00 00       	call   804ff40 <__malloc_unlock>
 804f784:	8d 43 08             	lea    0x8(%ebx),%eax
 804f787:	83 c4 2c             	add    $0x2c,%esp
 804f78a:	5b                   	pop    %ebx
 804f78b:	5e                   	pop    %esi
 804f78c:	5f                   	pop    %edi
 804f78d:	5d                   	pop    %ebp
 804f78e:	c3                   	ret    
 804f78f:	90                   	nop
 804f790:	bf 10 00 00 00       	mov    $0x10,%edi
 804f795:	31 d2                	xor    %edx,%edx
 804f797:	39 c7                	cmp    %eax,%edi
 804f799:	8b 45 08             	mov    0x8(%ebp),%eax
 804f79c:	73 99                	jae    804f737 <_malloc_r+0x27>
 804f79e:	c7 00 0c 00 00 00    	movl   $0xc,(%eax)
 804f7a4:	83 c4 2c             	add    $0x2c,%esp
 804f7a7:	31 c0                	xor    %eax,%eax
 804f7a9:	5b                   	pop    %ebx
 804f7aa:	5e                   	pop    %esi
 804f7ab:	5f                   	pop    %edi
 804f7ac:	5d                   	pop    %ebp
 804f7ad:	c3                   	ret    
 804f7ae:	66 90                	xchg   %ax,%ax
 804f7b0:	89 fe                	mov    %edi,%esi
 804f7b2:	c1 ee 09             	shr    $0x9,%esi
 804f7b5:	85 f6                	test   %esi,%esi
 804f7b7:	0f 84 ab 01 00 00    	je     804f968 <_malloc_r+0x258>
 804f7bd:	83 fe 04             	cmp    $0x4,%esi
 804f7c0:	0f 87 8a 03 00 00    	ja     804fb50 <_malloc_r+0x440>
 804f7c6:	89 fe                	mov    %edi,%esi
 804f7c8:	c1 ee 06             	shr    $0x6,%esi
 804f7cb:	83 c6 38             	add    $0x38,%esi
 804f7ce:	8d 04 36             	lea    (%esi,%esi,1),%eax
 804f7d1:	8d 0c 85 20 79 05 08 	lea    0x8057920(,%eax,4),%ecx
 804f7d8:	8b 59 0c             	mov    0xc(%ecx),%ebx
 804f7db:	39 d9                	cmp    %ebx,%ecx
 804f7dd:	75 18                	jne    804f7f7 <_malloc_r+0xe7>
 804f7df:	eb 28                	jmp    804f809 <_malloc_r+0xf9>
 804f7e1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 804f7e8:	85 d2                	test   %edx,%edx
 804f7ea:	0f 89 78 ff ff ff    	jns    804f768 <_malloc_r+0x58>
 804f7f0:	8b 5b 0c             	mov    0xc(%ebx),%ebx
 804f7f3:	39 d9                	cmp    %ebx,%ecx
 804f7f5:	74 12                	je     804f809 <_malloc_r+0xf9>
 804f7f7:	8b 43 04             	mov    0x4(%ebx),%eax
 804f7fa:	83 e0 fc             	and    $0xfffffffc,%eax
 804f7fd:	89 c2                	mov    %eax,%edx
 804f7ff:	29 fa                	sub    %edi,%edx
 804f801:	83 fa 0f             	cmp    $0xf,%edx
 804f804:	7e e2                	jle    804f7e8 <_malloc_r+0xd8>
 804f806:	83 ee 01             	sub    $0x1,%esi
 804f809:	8d 46 01             	lea    0x1(%esi),%eax
 804f80c:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 804f80f:	8b 1d 30 79 05 08    	mov    0x8057930,%ebx
 804f815:	a1 24 79 05 08       	mov    0x8057924,%eax
 804f81a:	81 fb 28 79 05 08    	cmp    $0x8057928,%ebx
 804f820:	74 6b                	je     804f88d <_malloc_r+0x17d>
 804f822:	8b 73 04             	mov    0x4(%ebx),%esi
 804f825:	83 e6 fc             	and    $0xfffffffc,%esi
 804f828:	89 f0                	mov    %esi,%eax
 804f82a:	29 f8                	sub    %edi,%eax
 804f82c:	83 f8 0f             	cmp    $0xf,%eax
 804f82f:	0f 8f a3 03 00 00    	jg     804fbd8 <_malloc_r+0x4c8>
 804f835:	85 c0                	test   %eax,%eax
 804f837:	c7 05 34 79 05 08 28 	movl   $0x8057928,0x8057934
 804f83e:	79 05 08 
 804f841:	c7 05 30 79 05 08 28 	movl   $0x8057928,0x8057930
 804f848:	79 05 08 
 804f84b:	0f 89 27 01 00 00    	jns    804f978 <_malloc_r+0x268>
 804f851:	81 fe ff 01 00 00    	cmp    $0x1ff,%esi
 804f857:	0f 87 1b 03 00 00    	ja     804fb78 <_malloc_r+0x468>
 804f85d:	c1 ee 03             	shr    $0x3,%esi
 804f860:	b8 01 00 00 00       	mov    $0x1,%eax
 804f865:	89 f1                	mov    %esi,%ecx
 804f867:	8d 14 f5 20 79 05 08 	lea    0x8057920(,%esi,8),%edx
 804f86e:	c1 f9 02             	sar    $0x2,%ecx
 804f871:	d3 e0                	shl    %cl,%eax
 804f873:	8b 4a 08             	mov    0x8(%edx),%ecx
 804f876:	0b 05 24 79 05 08    	or     0x8057924,%eax
 804f87c:	89 53 0c             	mov    %edx,0xc(%ebx)
 804f87f:	89 4b 08             	mov    %ecx,0x8(%ebx)
 804f882:	a3 24 79 05 08       	mov    %eax,0x8057924
 804f887:	89 5a 08             	mov    %ebx,0x8(%edx)
 804f88a:	89 59 0c             	mov    %ebx,0xc(%ecx)
 804f88d:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
 804f890:	be 01 00 00 00       	mov    $0x1,%esi
 804f895:	c1 f9 02             	sar    $0x2,%ecx
 804f898:	d3 e6                	shl    %cl,%esi
 804f89a:	39 c6                	cmp    %eax,%esi
 804f89c:	0f 87 f6 00 00 00    	ja     804f998 <_malloc_r+0x288>
 804f8a2:	85 f0                	test   %esi,%eax
 804f8a4:	0f 85 76 03 00 00    	jne    804fc20 <_malloc_r+0x510>
 804f8aa:	8b 55 e4             	mov    -0x1c(%ebp),%edx
 804f8ad:	01 f6                	add    %esi,%esi
 804f8af:	83 e2 fc             	and    $0xfffffffc,%edx
 804f8b2:	85 f0                	test   %esi,%eax
 804f8b4:	8d 4a 04             	lea    0x4(%edx),%ecx
 804f8b7:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
 804f8ba:	0f 85 60 03 00 00    	jne    804fc20 <_malloc_r+0x510>
 804f8c0:	89 ca                	mov    %ecx,%edx
 804f8c2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 804f8c8:	01 f6                	add    %esi,%esi
 804f8ca:	83 c2 04             	add    $0x4,%edx
 804f8cd:	85 f0                	test   %esi,%eax
 804f8cf:	74 f7                	je     804f8c8 <_malloc_r+0x1b8>
 804f8d1:	89 55 e4             	mov    %edx,-0x1c(%ebp)
 804f8d4:	89 75 dc             	mov    %esi,-0x24(%ebp)
 804f8d7:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 804f8da:	8d 34 c5 20 79 05 08 	lea    0x8057920(,%eax,8),%esi
 804f8e1:	89 f1                	mov    %esi,%ecx
 804f8e3:	89 45 e0             	mov    %eax,-0x20(%ebp)
 804f8e6:	8b 59 0c             	mov    0xc(%ecx),%ebx
 804f8e9:	39 d9                	cmp    %ebx,%ecx
 804f8eb:	75 1e                	jne    804f90b <_malloc_r+0x1fb>
 804f8ed:	e9 36 03 00 00       	jmp    804fc28 <_malloc_r+0x518>
 804f8f2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 804f8f8:	85 d2                	test   %edx,%edx
 804f8fa:	0f 89 c0 03 00 00    	jns    804fcc0 <_malloc_r+0x5b0>
 804f900:	8b 5b 0c             	mov    0xc(%ebx),%ebx
 804f903:	39 d9                	cmp    %ebx,%ecx
 804f905:	0f 84 1d 03 00 00    	je     804fc28 <_malloc_r+0x518>
 804f90b:	8b 43 04             	mov    0x4(%ebx),%eax
 804f90e:	83 e0 fc             	and    $0xfffffffc,%eax
 804f911:	89 c2                	mov    %eax,%edx
 804f913:	29 fa                	sub    %edi,%edx
 804f915:	83 fa 0f             	cmp    $0xf,%edx
 804f918:	7e de                	jle    804f8f8 <_malloc_r+0x1e8>
 804f91a:	8b 4b 0c             	mov    0xc(%ebx),%ecx
 804f91d:	8d 04 3b             	lea    (%ebx,%edi,1),%eax
 804f920:	83 cf 01             	or     $0x1,%edi
 804f923:	8b 73 08             	mov    0x8(%ebx),%esi
 804f926:	89 7b 04             	mov    %edi,0x4(%ebx)
 804f929:	89 4e 0c             	mov    %ecx,0xc(%esi)
 804f92c:	89 71 08             	mov    %esi,0x8(%ecx)
 804f92f:	89 d1                	mov    %edx,%ecx
 804f931:	83 c9 01             	or     $0x1,%ecx
 804f934:	a3 34 79 05 08       	mov    %eax,0x8057934
 804f939:	a3 30 79 05 08       	mov    %eax,0x8057930
 804f93e:	c7 40 0c 28 79 05 08 	movl   $0x8057928,0xc(%eax)
 804f945:	c7 40 08 28 79 05 08 	movl   $0x8057928,0x8(%eax)
 804f94c:	89 48 04             	mov    %ecx,0x4(%eax)
 804f94f:	89 14 10             	mov    %edx,(%eax,%edx,1)
 804f952:	8b 45 08             	mov    0x8(%ebp),%eax
 804f955:	89 04 24             	mov    %eax,(%esp)
 804f958:	e8 e3 05 00 00       	call   804ff40 <__malloc_unlock>
 804f95d:	8d 43 08             	lea    0x8(%ebx),%eax
 804f960:	e9 22 fe ff ff       	jmp    804f787 <_malloc_r+0x77>
 804f965:	8d 76 00             	lea    0x0(%esi),%esi
 804f968:	b8 7e 00 00 00       	mov    $0x7e,%eax
 804f96d:	be 3f 00 00 00       	mov    $0x3f,%esi
 804f972:	e9 5a fe ff ff       	jmp    804f7d1 <_malloc_r+0xc1>
 804f977:	90                   	nop
 804f978:	8b 45 08             	mov    0x8(%ebp),%eax
 804f97b:	83 4c 33 04 01       	orl    $0x1,0x4(%ebx,%esi,1)
 804f980:	89 04 24             	mov    %eax,(%esp)
 804f983:	e8 b8 05 00 00       	call   804ff40 <__malloc_unlock>
 804f988:	83 c4 2c             	add    $0x2c,%esp
 804f98b:	8d 43 08             	lea    0x8(%ebx),%eax
 804f98e:	5b                   	pop    %ebx
 804f98f:	5e                   	pop    %esi
 804f990:	5f                   	pop    %edi
 804f991:	5d                   	pop    %ebp
 804f992:	c3                   	ret    
 804f993:	90                   	nop
 804f994:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 804f998:	8b 1d 28 79 05 08    	mov    0x8057928,%ebx
 804f99e:	8b 73 04             	mov    0x4(%ebx),%esi
 804f9a1:	83 e6 fc             	and    $0xfffffffc,%esi
 804f9a4:	39 f7                	cmp    %esi,%edi
 804f9a6:	77 0d                	ja     804f9b5 <_malloc_r+0x2a5>
 804f9a8:	89 f0                	mov    %esi,%eax
 804f9aa:	29 f8                	sub    %edi,%eax
 804f9ac:	83 f8 0f             	cmp    $0xf,%eax
 804f9af:	0f 8f 6b 01 00 00    	jg     804fb20 <_malloc_r+0x410>
 804f9b5:	8b 0d 70 d6 06 08    	mov    0x806d670,%ecx
 804f9bb:	8d 04 33             	lea    (%ebx,%esi,1),%eax
 804f9be:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 804f9c1:	01 f9                	add    %edi,%ecx
 804f9c3:	8d 81 0f 10 00 00    	lea    0x100f(%ecx),%eax
 804f9c9:	83 c1 10             	add    $0x10,%ecx
 804f9cc:	25 00 f0 ff ff       	and    $0xfffff000,%eax
 804f9d1:	83 3d 00 79 05 08 ff 	cmpl   $0xffffffff,0x8057900
 804f9d8:	0f 44 c1             	cmove  %ecx,%eax
 804f9db:	89 45 e0             	mov    %eax,-0x20(%ebp)
 804f9de:	89 44 24 04          	mov    %eax,0x4(%esp)
 804f9e2:	8b 45 08             	mov    0x8(%ebp),%eax
 804f9e5:	89 04 24             	mov    %eax,(%esp)
 804f9e8:	e8 43 13 00 00       	call   8050d30 <_sbrk_r>
 804f9ed:	83 f8 ff             	cmp    $0xffffffff,%eax
 804f9f0:	89 c1                	mov    %eax,%ecx
 804f9f2:	0f 84 17 03 00 00    	je     804fd0f <_malloc_r+0x5ff>
 804f9f8:	39 45 e4             	cmp    %eax,-0x1c(%ebp)
 804f9fb:	0f 87 02 03 00 00    	ja     804fd03 <_malloc_r+0x5f3>
 804fa01:	8b 55 e0             	mov    -0x20(%ebp),%edx
 804fa04:	03 15 40 d6 06 08    	add    0x806d640,%edx
 804fa0a:	39 4d e4             	cmp    %ecx,-0x1c(%ebp)
 804fa0d:	89 15 40 d6 06 08    	mov    %edx,0x806d640
 804fa13:	0f 84 a9 03 00 00    	je     804fdc2 <_malloc_r+0x6b2>
 804fa19:	83 3d 00 79 05 08 ff 	cmpl   $0xffffffff,0x8057900
 804fa20:	0f 84 ca 03 00 00    	je     804fdf0 <_malloc_r+0x6e0>
 804fa26:	89 c8                	mov    %ecx,%eax
 804fa28:	2b 45 e4             	sub    -0x1c(%ebp),%eax
 804fa2b:	01 d0                	add    %edx,%eax
 804fa2d:	a3 40 d6 06 08       	mov    %eax,0x806d640
 804fa32:	89 c8                	mov    %ecx,%eax
 804fa34:	ba 00 10 00 00       	mov    $0x1000,%edx
 804fa39:	83 e0 07             	and    $0x7,%eax
 804fa3c:	74 0c                	je     804fa4a <_malloc_r+0x33a>
 804fa3e:	29 c1                	sub    %eax,%ecx
 804fa40:	ba 08 10 00 00       	mov    $0x1008,%edx
 804fa45:	8d 49 08             	lea    0x8(%ecx),%ecx
 804fa48:	29 c2                	sub    %eax,%edx
 804fa4a:	8b 45 e0             	mov    -0x20(%ebp),%eax
 804fa4d:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
 804fa50:	01 c8                	add    %ecx,%eax
 804fa52:	25 ff 0f 00 00       	and    $0xfff,%eax
 804fa57:	29 c2                	sub    %eax,%edx
 804fa59:	8b 45 08             	mov    0x8(%ebp),%eax
 804fa5c:	89 54 24 04          	mov    %edx,0x4(%esp)
 804fa60:	89 55 e0             	mov    %edx,-0x20(%ebp)
 804fa63:	89 04 24             	mov    %eax,(%esp)
 804fa66:	e8 c5 12 00 00       	call   8050d30 <_sbrk_r>
 804fa6b:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
 804fa6e:	83 f8 ff             	cmp    $0xffffffff,%eax
 804fa71:	0f 84 6d 03 00 00    	je     804fde4 <_malloc_r+0x6d4>
 804fa77:	8b 55 e0             	mov    -0x20(%ebp),%edx
 804fa7a:	29 c8                	sub    %ecx,%eax
 804fa7c:	01 d0                	add    %edx,%eax
 804fa7e:	83 c8 01             	or     $0x1,%eax
 804fa81:	03 15 40 d6 06 08    	add    0x806d640,%edx
 804fa87:	81 fb 20 79 05 08    	cmp    $0x8057920,%ebx
 804fa8d:	89 0d 28 79 05 08    	mov    %ecx,0x8057928
 804fa93:	89 41 04             	mov    %eax,0x4(%ecx)
 804fa96:	89 15 40 d6 06 08    	mov    %edx,0x806d640
 804fa9c:	0f 84 f2 02 00 00    	je     804fd94 <_malloc_r+0x684>
 804faa2:	83 fe 0f             	cmp    $0xf,%esi
 804faa5:	0f 86 8d 02 00 00    	jbe    804fd38 <_malloc_r+0x628>
 804faab:	8b 43 04             	mov    0x4(%ebx),%eax
 804faae:	83 ee 0c             	sub    $0xc,%esi
 804fab1:	83 e6 f8             	and    $0xfffffff8,%esi
 804fab4:	83 e0 01             	and    $0x1,%eax
 804fab7:	09 f0                	or     %esi,%eax
 804fab9:	83 fe 0f             	cmp    $0xf,%esi
 804fabc:	89 43 04             	mov    %eax,0x4(%ebx)
 804fabf:	a1 28 79 05 08       	mov    0x8057928,%eax
 804fac4:	c7 44 33 04 05 00 00 	movl   $0x5,0x4(%ebx,%esi,1)
 804facb:	00 
 804facc:	c7 44 33 08 05 00 00 	movl   $0x5,0x8(%ebx,%esi,1)
 804fad3:	00 
 804fad4:	0f 87 a2 02 00 00    	ja     804fd7c <_malloc_r+0x66c>
 804fada:	3b 15 6c d6 06 08    	cmp    0x806d66c,%edx
 804fae0:	76 06                	jbe    804fae8 <_malloc_r+0x3d8>
 804fae2:	89 15 6c d6 06 08    	mov    %edx,0x806d66c
 804fae8:	3b 15 68 d6 06 08    	cmp    0x806d668,%edx
 804faee:	76 06                	jbe    804faf6 <_malloc_r+0x3e6>
 804faf0:	89 15 68 d6 06 08    	mov    %edx,0x806d668
 804faf6:	8b 50 04             	mov    0x4(%eax),%edx
 804faf9:	89 c3                	mov    %eax,%ebx
 804fafb:	83 e2 fc             	and    $0xfffffffc,%edx
 804fafe:	89 d0                	mov    %edx,%eax
 804fb00:	29 f8                	sub    %edi,%eax
 804fb02:	39 d7                	cmp    %edx,%edi
 804fb04:	77 05                	ja     804fb0b <_malloc_r+0x3fb>
 804fb06:	83 f8 0f             	cmp    $0xf,%eax
 804fb09:	7f 15                	jg     804fb20 <_malloc_r+0x410>
 804fb0b:	8b 45 08             	mov    0x8(%ebp),%eax
 804fb0e:	89 04 24             	mov    %eax,(%esp)
 804fb11:	e8 2a 04 00 00       	call   804ff40 <__malloc_unlock>
 804fb16:	31 c0                	xor    %eax,%eax
 804fb18:	e9 6a fc ff ff       	jmp    804f787 <_malloc_r+0x77>
 804fb1d:	8d 76 00             	lea    0x0(%esi),%esi
 804fb20:	89 fa                	mov    %edi,%edx
 804fb22:	83 c8 01             	or     $0x1,%eax
 804fb25:	83 ca 01             	or     $0x1,%edx
 804fb28:	89 53 04             	mov    %edx,0x4(%ebx)
 804fb2b:	8d 14 3b             	lea    (%ebx,%edi,1),%edx
 804fb2e:	89 15 28 79 05 08    	mov    %edx,0x8057928
 804fb34:	89 42 04             	mov    %eax,0x4(%edx)
 804fb37:	8b 45 08             	mov    0x8(%ebp),%eax
 804fb3a:	89 04 24             	mov    %eax,(%esp)
 804fb3d:	e8 fe 03 00 00       	call   804ff40 <__malloc_unlock>
 804fb42:	83 c4 2c             	add    $0x2c,%esp
 804fb45:	8d 43 08             	lea    0x8(%ebx),%eax
 804fb48:	5b                   	pop    %ebx
 804fb49:	5e                   	pop    %esi
 804fb4a:	5f                   	pop    %edi
 804fb4b:	5d                   	pop    %ebp
 804fb4c:	c3                   	ret    
 804fb4d:	8d 76 00             	lea    0x0(%esi),%esi
 804fb50:	83 fe 14             	cmp    $0x14,%esi
 804fb53:	0f 86 8f 01 00 00    	jbe    804fce8 <_malloc_r+0x5d8>
 804fb59:	83 fe 54             	cmp    $0x54,%esi
 804fb5c:	0f 87 be 01 00 00    	ja     804fd20 <_malloc_r+0x610>
 804fb62:	89 fe                	mov    %edi,%esi
 804fb64:	c1 ee 0c             	shr    $0xc,%esi
 804fb67:	83 c6 6e             	add    $0x6e,%esi
 804fb6a:	8d 04 36             	lea    (%esi,%esi,1),%eax
 804fb6d:	e9 5f fc ff ff       	jmp    804f7d1 <_malloc_r+0xc1>
 804fb72:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 804fb78:	89 f1                	mov    %esi,%ecx
 804fb7a:	c1 e9 09             	shr    $0x9,%ecx
 804fb7d:	83 f9 04             	cmp    $0x4,%ecx
 804fb80:	0f 86 6d 01 00 00    	jbe    804fcf3 <_malloc_r+0x5e3>
 804fb86:	83 f9 14             	cmp    $0x14,%ecx
 804fb89:	0f 87 0f 02 00 00    	ja     804fd9e <_malloc_r+0x68e>
 804fb8f:	83 c1 5b             	add    $0x5b,%ecx
 804fb92:	8d 04 09             	lea    (%ecx,%ecx,1),%eax
 804fb95:	8d 04 85 20 79 05 08 	lea    0x8057920(,%eax,4),%eax
 804fb9c:	8b 50 08             	mov    0x8(%eax),%edx
 804fb9f:	39 c2                	cmp    %eax,%edx
 804fba1:	0f 84 a1 01 00 00    	je     804fd48 <_malloc_r+0x638>
 804fba7:	90                   	nop
 804fba8:	8b 4a 04             	mov    0x4(%edx),%ecx
 804fbab:	83 e1 fc             	and    $0xfffffffc,%ecx
 804fbae:	39 ce                	cmp    %ecx,%esi
 804fbb0:	73 07                	jae    804fbb9 <_malloc_r+0x4a9>
 804fbb2:	8b 52 08             	mov    0x8(%edx),%edx
 804fbb5:	39 d0                	cmp    %edx,%eax
 804fbb7:	75 ef                	jne    804fba8 <_malloc_r+0x498>
 804fbb9:	8b 4a 0c             	mov    0xc(%edx),%ecx
 804fbbc:	a1 24 79 05 08       	mov    0x8057924,%eax
 804fbc1:	89 4b 0c             	mov    %ecx,0xc(%ebx)
 804fbc4:	89 53 08             	mov    %edx,0x8(%ebx)
 804fbc7:	89 59 08             	mov    %ebx,0x8(%ecx)
 804fbca:	89 5a 0c             	mov    %ebx,0xc(%edx)
 804fbcd:	e9 bb fc ff ff       	jmp    804f88d <_malloc_r+0x17d>
 804fbd2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 804fbd8:	89 c1                	mov    %eax,%ecx
 804fbda:	8d 14 3b             	lea    (%ebx,%edi,1),%edx
 804fbdd:	83 c9 01             	or     $0x1,%ecx
 804fbe0:	83 cf 01             	or     $0x1,%edi
 804fbe3:	89 7b 04             	mov    %edi,0x4(%ebx)
 804fbe6:	89 15 34 79 05 08    	mov    %edx,0x8057934
 804fbec:	89 15 30 79 05 08    	mov    %edx,0x8057930
 804fbf2:	c7 42 0c 28 79 05 08 	movl   $0x8057928,0xc(%edx)
 804fbf9:	c7 42 08 28 79 05 08 	movl   $0x8057928,0x8(%edx)
 804fc00:	89 4a 04             	mov    %ecx,0x4(%edx)
 804fc03:	89 04 02             	mov    %eax,(%edx,%eax,1)
 804fc06:	8b 45 08             	mov    0x8(%ebp),%eax
 804fc09:	89 04 24             	mov    %eax,(%esp)
 804fc0c:	e8 2f 03 00 00       	call   804ff40 <__malloc_unlock>
 804fc11:	8d 43 08             	lea    0x8(%ebx),%eax
 804fc14:	e9 6e fb ff ff       	jmp    804f787 <_malloc_r+0x77>
 804fc19:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 804fc20:	89 75 dc             	mov    %esi,-0x24(%ebp)
 804fc23:	e9 af fc ff ff       	jmp    804f8d7 <_malloc_r+0x1c7>
 804fc28:	83 45 e0 01          	addl   $0x1,-0x20(%ebp)
 804fc2c:	83 c1 08             	add    $0x8,%ecx
 804fc2f:	f6 45 e0 03          	testb  $0x3,-0x20(%ebp)
 804fc33:	0f 85 ad fc ff ff    	jne    804f8e6 <_malloc_r+0x1d6>
 804fc39:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 804fc3c:	eb 12                	jmp    804fc50 <_malloc_r+0x540>
 804fc3e:	66 90                	xchg   %ax,%ax
 804fc40:	8d 56 f8             	lea    -0x8(%esi),%edx
 804fc43:	8b 36                	mov    (%esi),%esi
 804fc45:	83 e8 01             	sub    $0x1,%eax
 804fc48:	39 d6                	cmp    %edx,%esi
 804fc4a:	0f 85 ea 01 00 00    	jne    804fe3a <_malloc_r+0x72a>
 804fc50:	a8 03                	test   $0x3,%al
 804fc52:	75 ec                	jne    804fc40 <_malloc_r+0x530>
 804fc54:	8b 45 dc             	mov    -0x24(%ebp),%eax
 804fc57:	f7 d0                	not    %eax
 804fc59:	23 05 24 79 05 08    	and    0x8057924,%eax
 804fc5f:	a3 24 79 05 08       	mov    %eax,0x8057924
 804fc64:	d1 65 dc             	shll   -0x24(%ebp)
 804fc67:	8b 55 dc             	mov    -0x24(%ebp),%edx
 804fc6a:	39 c2                	cmp    %eax,%edx
 804fc6c:	0f 87 26 fd ff ff    	ja     804f998 <_malloc_r+0x288>
 804fc72:	85 d2                	test   %edx,%edx
 804fc74:	0f 84 1e fd ff ff    	je     804f998 <_malloc_r+0x288>
 804fc7a:	85 c2                	test   %eax,%edx
 804fc7c:	0f 85 c2 01 00 00    	jne    804fe44 <_malloc_r+0x734>
 804fc82:	8b 75 e0             	mov    -0x20(%ebp),%esi
 804fc85:	89 f1                	mov    %esi,%ecx
 804fc87:	01 d2                	add    %edx,%edx
 804fc89:	83 c1 04             	add    $0x4,%ecx
 804fc8c:	85 d0                	test   %edx,%eax
 804fc8e:	74 f7                	je     804fc87 <_malloc_r+0x577>
 804fc90:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
 804fc93:	89 55 dc             	mov    %edx,-0x24(%ebp)
 804fc96:	e9 3c fc ff ff       	jmp    804f8d7 <_malloc_r+0x1c7>
 804fc9b:	90                   	nop
 804fc9c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 804fca0:	8d 43 08             	lea    0x8(%ebx),%eax
 804fca3:	8b 5b 14             	mov    0x14(%ebx),%ebx
 804fca6:	39 d8                	cmp    %ebx,%eax
 804fca8:	0f 85 b4 fa ff ff    	jne    804f762 <_malloc_r+0x52>
 804fcae:	8d 42 02             	lea    0x2(%edx),%eax
 804fcb1:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 804fcb4:	e9 56 fb ff ff       	jmp    804f80f <_malloc_r+0xff>
 804fcb9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 804fcc0:	83 4c 03 04 01       	orl    $0x1,0x4(%ebx,%eax,1)
 804fcc5:	8b 53 08             	mov    0x8(%ebx),%edx
 804fcc8:	8b 43 0c             	mov    0xc(%ebx),%eax
 804fccb:	89 42 0c             	mov    %eax,0xc(%edx)
 804fcce:	89 50 08             	mov    %edx,0x8(%eax)
 804fcd1:	8b 45 08             	mov    0x8(%ebp),%eax
 804fcd4:	89 04 24             	mov    %eax,(%esp)
 804fcd7:	e8 64 02 00 00       	call   804ff40 <__malloc_unlock>
 804fcdc:	8d 43 08             	lea    0x8(%ebx),%eax
 804fcdf:	e9 a3 fa ff ff       	jmp    804f787 <_malloc_r+0x77>
 804fce4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 804fce8:	83 c6 5b             	add    $0x5b,%esi
 804fceb:	8d 04 36             	lea    (%esi,%esi,1),%eax
 804fcee:	e9 de fa ff ff       	jmp    804f7d1 <_malloc_r+0xc1>
 804fcf3:	89 f1                	mov    %esi,%ecx
 804fcf5:	c1 e9 06             	shr    $0x6,%ecx
 804fcf8:	83 c1 38             	add    $0x38,%ecx
 804fcfb:	8d 04 09             	lea    (%ecx,%ecx,1),%eax
 804fcfe:	e9 92 fe ff ff       	jmp    804fb95 <_malloc_r+0x485>
 804fd03:	81 fb 20 79 05 08    	cmp    $0x8057920,%ebx
 804fd09:	0f 84 f2 fc ff ff    	je     804fa01 <_malloc_r+0x2f1>
 804fd0f:	8b 1d 28 79 05 08    	mov    0x8057928,%ebx
 804fd15:	8b 53 04             	mov    0x4(%ebx),%edx
 804fd18:	83 e2 fc             	and    $0xfffffffc,%edx
 804fd1b:	e9 de fd ff ff       	jmp    804fafe <_malloc_r+0x3ee>
 804fd20:	81 fe 54 01 00 00    	cmp    $0x154,%esi
 804fd26:	77 3c                	ja     804fd64 <_malloc_r+0x654>
 804fd28:	89 fe                	mov    %edi,%esi
 804fd2a:	c1 ee 0f             	shr    $0xf,%esi
 804fd2d:	83 c6 77             	add    $0x77,%esi
 804fd30:	8d 04 36             	lea    (%esi,%esi,1),%eax
 804fd33:	e9 99 fa ff ff       	jmp    804f7d1 <_malloc_r+0xc1>
 804fd38:	c7 41 04 01 00 00 00 	movl   $0x1,0x4(%ecx)
 804fd3f:	89 cb                	mov    %ecx,%ebx
 804fd41:	31 d2                	xor    %edx,%edx
 804fd43:	e9 b6 fd ff ff       	jmp    804fafe <_malloc_r+0x3ee>
 804fd48:	c1 f9 02             	sar    $0x2,%ecx
 804fd4b:	b8 01 00 00 00       	mov    $0x1,%eax
 804fd50:	d3 e0                	shl    %cl,%eax
 804fd52:	89 d1                	mov    %edx,%ecx
 804fd54:	0b 05 24 79 05 08    	or     0x8057924,%eax
 804fd5a:	a3 24 79 05 08       	mov    %eax,0x8057924
 804fd5f:	e9 5d fe ff ff       	jmp    804fbc1 <_malloc_r+0x4b1>
 804fd64:	81 fe 54 05 00 00    	cmp    $0x554,%esi
 804fd6a:	77 47                	ja     804fdb3 <_malloc_r+0x6a3>
 804fd6c:	89 fe                	mov    %edi,%esi
 804fd6e:	c1 ee 12             	shr    $0x12,%esi
 804fd71:	83 c6 7c             	add    $0x7c,%esi
 804fd74:	8d 04 36             	lea    (%esi,%esi,1),%eax
 804fd77:	e9 55 fa ff ff       	jmp    804f7d1 <_malloc_r+0xc1>
 804fd7c:	8b 45 08             	mov    0x8(%ebp),%eax
 804fd7f:	83 c3 08             	add    $0x8,%ebx
 804fd82:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 804fd86:	89 04 24             	mov    %eax,(%esp)
 804fd89:	e8 d2 f3 ff ff       	call   804f160 <_free_r>
 804fd8e:	8b 15 40 d6 06 08    	mov    0x806d640,%edx
 804fd94:	a1 28 79 05 08       	mov    0x8057928,%eax
 804fd99:	e9 3c fd ff ff       	jmp    804fada <_malloc_r+0x3ca>
 804fd9e:	83 f9 54             	cmp    $0x54,%ecx
 804fda1:	77 58                	ja     804fdfb <_malloc_r+0x6eb>
 804fda3:	89 f1                	mov    %esi,%ecx
 804fda5:	c1 e9 0c             	shr    $0xc,%ecx
 804fda8:	83 c1 6e             	add    $0x6e,%ecx
 804fdab:	8d 04 09             	lea    (%ecx,%ecx,1),%eax
 804fdae:	e9 e2 fd ff ff       	jmp    804fb95 <_malloc_r+0x485>
 804fdb3:	b8 fc 00 00 00       	mov    $0xfc,%eax
 804fdb8:	be 7e 00 00 00       	mov    $0x7e,%esi
 804fdbd:	e9 0f fa ff ff       	jmp    804f7d1 <_malloc_r+0xc1>
 804fdc2:	f7 45 e4 ff 0f 00 00 	testl  $0xfff,-0x1c(%ebp)
 804fdc9:	0f 85 4a fc ff ff    	jne    804fa19 <_malloc_r+0x309>
 804fdcf:	8b 4d e0             	mov    -0x20(%ebp),%ecx
 804fdd2:	a1 28 79 05 08       	mov    0x8057928,%eax
 804fdd7:	01 f1                	add    %esi,%ecx
 804fdd9:	83 c9 01             	or     $0x1,%ecx
 804fddc:	89 48 04             	mov    %ecx,0x4(%eax)
 804fddf:	e9 f6 fc ff ff       	jmp    804fada <_malloc_r+0x3ca>
 804fde4:	b8 01 00 00 00       	mov    $0x1,%eax
 804fde9:	31 d2                	xor    %edx,%edx
 804fdeb:	e9 91 fc ff ff       	jmp    804fa81 <_malloc_r+0x371>
 804fdf0:	89 0d 00 79 05 08    	mov    %ecx,0x8057900
 804fdf6:	e9 37 fc ff ff       	jmp    804fa32 <_malloc_r+0x322>
 804fdfb:	81 f9 54 01 00 00    	cmp    $0x154,%ecx
 804fe01:	77 10                	ja     804fe13 <_malloc_r+0x703>
 804fe03:	89 f1                	mov    %esi,%ecx
 804fe05:	c1 e9 0f             	shr    $0xf,%ecx
 804fe08:	83 c1 77             	add    $0x77,%ecx
 804fe0b:	8d 04 09             	lea    (%ecx,%ecx,1),%eax
 804fe0e:	e9 82 fd ff ff       	jmp    804fb95 <_malloc_r+0x485>
 804fe13:	81 f9 54 05 00 00    	cmp    $0x554,%ecx
 804fe19:	77 10                	ja     804fe2b <_malloc_r+0x71b>
 804fe1b:	89 f1                	mov    %esi,%ecx
 804fe1d:	c1 e9 12             	shr    $0x12,%ecx
 804fe20:	83 c1 7c             	add    $0x7c,%ecx
 804fe23:	8d 04 09             	lea    (%ecx,%ecx,1),%eax
 804fe26:	e9 6a fd ff ff       	jmp    804fb95 <_malloc_r+0x485>
 804fe2b:	b8 fc 00 00 00       	mov    $0xfc,%eax
 804fe30:	b9 7e 00 00 00       	mov    $0x7e,%ecx
 804fe35:	e9 5b fd ff ff       	jmp    804fb95 <_malloc_r+0x485>
 804fe3a:	a1 24 79 05 08       	mov    0x8057924,%eax
 804fe3f:	e9 20 fe ff ff       	jmp    804fc64 <_malloc_r+0x554>
 804fe44:	8b 45 e0             	mov    -0x20(%ebp),%eax
 804fe47:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 804fe4a:	e9 88 fa ff ff       	jmp    804f8d7 <_malloc_r+0x1c7>
 804fe4f:	90                   	nop

0804fe50 <memchr>:
 804fe50:	55                   	push   %ebp
 804fe51:	89 e5                	mov    %esp,%ebp
 804fe53:	57                   	push   %edi
 804fe54:	0f b6 45 0c          	movzbl 0xc(%ebp),%eax
 804fe58:	8b 4d 10             	mov    0x10(%ebp),%ecx
 804fe5b:	8b 7d 08             	mov    0x8(%ebp),%edi
 804fe5e:	31 d2                	xor    %edx,%edx
 804fe60:	85 c9                	test   %ecx,%ecx
 804fe62:	74 79                	je     804fedd <L20>
 804fe64:	f7 c7 03 00 00 00    	test   $0x3,%edi
 804fe6a:	74 28                	je     804fe94 <L5>
 804fe6c:	3a 07                	cmp    (%edi),%al
 804fe6e:	74 6a                	je     804feda <L15>
 804fe70:	47                   	inc    %edi
 804fe71:	49                   	dec    %ecx
 804fe72:	74 69                	je     804fedd <L20>
 804fe74:	f7 c7 03 00 00 00    	test   $0x3,%edi
 804fe7a:	74 18                	je     804fe94 <L5>
 804fe7c:	3a 07                	cmp    (%edi),%al
 804fe7e:	74 5a                	je     804feda <L15>
 804fe80:	47                   	inc    %edi
 804fe81:	49                   	dec    %ecx
 804fe82:	74 59                	je     804fedd <L20>
 804fe84:	f7 c7 03 00 00 00    	test   $0x3,%edi
 804fe8a:	74 08                	je     804fe94 <L5>
 804fe8c:	3a 07                	cmp    (%edi),%al
 804fe8e:	74 4a                	je     804feda <L15>
 804fe90:	47                   	inc    %edi
 804fe91:	49                   	dec    %ecx
 804fe92:	74 49                	je     804fedd <L20>

0804fe94 <L5>:
 804fe94:	88 c4                	mov    %al,%ah
 804fe96:	89 c2                	mov    %eax,%edx
 804fe98:	c1 e2 10             	shl    $0x10,%edx
 804fe9b:	09 d0                	or     %edx,%eax
 804fe9d:	53                   	push   %ebx
 804fe9e:	66 90                	xchg   %ax,%ax

0804fea0 <L8>:
 804fea0:	83 e9 04             	sub    $0x4,%ecx
 804fea3:	72 1c                	jb     804fec1 <L9>
 804fea5:	8b 17                	mov    (%edi),%edx
 804fea7:	83 c7 04             	add    $0x4,%edi
 804feaa:	31 c2                	xor    %eax,%edx
 804feac:	8d 9a ff fe fe fe    	lea    -0x1010101(%edx),%ebx
 804feb2:	f7 d2                	not    %edx
 804feb4:	21 d3                	and    %edx,%ebx
 804feb6:	f7 c3 80 80 80 80    	test   $0x80808080,%ebx
 804febc:	74 e2                	je     804fea0 <L8>
 804febe:	83 ef 04             	sub    $0x4,%edi

0804fec1 <L9>:
 804fec1:	5b                   	pop    %ebx
 804fec2:	31 d2                	xor    %edx,%edx
 804fec4:	83 c1 04             	add    $0x4,%ecx
 804fec7:	74 14                	je     804fedd <L20>
 804fec9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

0804fed0 <L10>:
 804fed0:	3a 07                	cmp    (%edi),%al
 804fed2:	74 06                	je     804feda <L15>
 804fed4:	47                   	inc    %edi
 804fed5:	49                   	dec    %ecx
 804fed6:	75 f8                	jne    804fed0 <L10>
 804fed8:	31 ff                	xor    %edi,%edi

0804feda <L15>:
 804feda:	4a                   	dec    %edx
 804fedb:	21 fa                	and    %edi,%edx

0804fedd <L20>:
 804fedd:	89 d0                	mov    %edx,%eax
 804fedf:	8d 65 fc             	lea    -0x4(%ebp),%esp
 804fee2:	5f                   	pop    %edi
 804fee3:	c9                   	leave  
 804fee4:	c3                   	ret    
 804fee5:	66 90                	xchg   %ax,%ax
 804fee7:	90                   	nop

0804fee8 <memcpy>:
 804fee8:	55                   	push   %ebp
 804fee9:	89 e5                	mov    %esp,%ebp
 804feeb:	56                   	push   %esi
 804feec:	57                   	push   %edi
 804feed:	53                   	push   %ebx
 804feee:	8b 7d 08             	mov    0x8(%ebp),%edi
 804fef1:	8b 4d 10             	mov    0x10(%ebp),%ecx
 804fef4:	8b 75 0c             	mov    0xc(%ebp),%esi
 804fef7:	fc                   	cld    
 804fef8:	83 f9 08             	cmp    $0x8,%ecx
 804fefb:	76 26                	jbe    804ff23 <memcpy+0x3b>
 804fefd:	89 fa                	mov    %edi,%edx
 804feff:	89 cb                	mov    %ecx,%ebx
 804ff01:	83 e2 03             	and    $0x3,%edx
 804ff04:	74 10                	je     804ff16 <memcpy+0x2e>
 804ff06:	b9 04 00 00 00       	mov    $0x4,%ecx
 804ff0b:	29 d1                	sub    %edx,%ecx
 804ff0d:	83 e1 03             	and    $0x3,%ecx
 804ff10:	29 cb                	sub    %ecx,%ebx
 804ff12:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
 804ff14:	89 d9                	mov    %ebx,%ecx
 804ff16:	c1 e9 02             	shr    $0x2,%ecx
 804ff19:	8d 76 00             	lea    0x0(%esi),%esi
 804ff1c:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
 804ff1e:	89 d9                	mov    %ebx,%ecx
 804ff20:	83 e1 03             	and    $0x3,%ecx
 804ff23:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
 804ff25:	8b 45 08             	mov    0x8(%ebp),%eax
 804ff28:	8d 65 f4             	lea    -0xc(%ebp),%esp
 804ff2b:	5b                   	pop    %ebx
 804ff2c:	5f                   	pop    %edi
 804ff2d:	5e                   	pop    %esi
 804ff2e:	c9                   	leave  
 804ff2f:	c3                   	ret    

0804ff30 <__malloc_lock>:
 804ff30:	55                   	push   %ebp
 804ff31:	89 e5                	mov    %esp,%ebp
 804ff33:	5d                   	pop    %ebp
 804ff34:	c3                   	ret    
 804ff35:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 804ff39:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

0804ff40 <__malloc_unlock>:
 804ff40:	55                   	push   %ebp
 804ff41:	89 e5                	mov    %esp,%ebp
 804ff43:	5d                   	pop    %ebp
 804ff44:	c3                   	ret    
 804ff45:	66 90                	xchg   %ax,%ax
 804ff47:	66 90                	xchg   %ax,%ax
 804ff49:	66 90                	xchg   %ax,%ax
 804ff4b:	66 90                	xchg   %ax,%ax
 804ff4d:	66 90                	xchg   %ax,%ax
 804ff4f:	90                   	nop

0804ff50 <_Balloc>:
 804ff50:	55                   	push   %ebp
 804ff51:	89 e5                	mov    %esp,%ebp
 804ff53:	57                   	push   %edi
 804ff54:	56                   	push   %esi
 804ff55:	53                   	push   %ebx
 804ff56:	83 ec 1c             	sub    $0x1c,%esp
 804ff59:	8b 75 08             	mov    0x8(%ebp),%esi
 804ff5c:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 804ff5f:	8b 46 4c             	mov    0x4c(%esi),%eax
 804ff62:	85 c0                	test   %eax,%eax
 804ff64:	74 2a                	je     804ff90 <_Balloc+0x40>
 804ff66:	8d 14 98             	lea    (%eax,%ebx,4),%edx
 804ff69:	8b 02                	mov    (%edx),%eax
 804ff6b:	85 c0                	test   %eax,%eax
 804ff6d:	74 49                	je     804ffb8 <_Balloc+0x68>
 804ff6f:	8b 08                	mov    (%eax),%ecx
 804ff71:	89 0a                	mov    %ecx,(%edx)
 804ff73:	c7 40 10 00 00 00 00 	movl   $0x0,0x10(%eax)
 804ff7a:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%eax)
 804ff81:	83 c4 1c             	add    $0x1c,%esp
 804ff84:	5b                   	pop    %ebx
 804ff85:	5e                   	pop    %esi
 804ff86:	5f                   	pop    %edi
 804ff87:	5d                   	pop    %ebp
 804ff88:	c3                   	ret    
 804ff89:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 804ff90:	c7 44 24 08 21 00 00 	movl   $0x21,0x8(%esp)
 804ff97:	00 
 804ff98:	c7 44 24 04 04 00 00 	movl   $0x4,0x4(%esp)
 804ff9f:	00 
 804ffa0:	89 34 24             	mov    %esi,(%esp)
 804ffa3:	e8 08 32 00 00       	call   80531b0 <_calloc_r>
 804ffa8:	85 c0                	test   %eax,%eax
 804ffaa:	89 46 4c             	mov    %eax,0x4c(%esi)
 804ffad:	75 b7                	jne    804ff66 <_Balloc+0x16>
 804ffaf:	31 c0                	xor    %eax,%eax
 804ffb1:	eb ce                	jmp    804ff81 <_Balloc+0x31>
 804ffb3:	90                   	nop
 804ffb4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 804ffb8:	89 d9                	mov    %ebx,%ecx
 804ffba:	bf 01 00 00 00       	mov    $0x1,%edi
 804ffbf:	d3 e7                	shl    %cl,%edi
 804ffc1:	8d 04 bd 14 00 00 00 	lea    0x14(,%edi,4),%eax
 804ffc8:	89 44 24 08          	mov    %eax,0x8(%esp)
 804ffcc:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
 804ffd3:	00 
 804ffd4:	89 34 24             	mov    %esi,(%esp)
 804ffd7:	e8 d4 31 00 00       	call   80531b0 <_calloc_r>
 804ffdc:	85 c0                	test   %eax,%eax
 804ffde:	74 cf                	je     804ffaf <_Balloc+0x5f>
 804ffe0:	89 58 04             	mov    %ebx,0x4(%eax)
 804ffe3:	89 78 08             	mov    %edi,0x8(%eax)
 804ffe6:	eb 8b                	jmp    804ff73 <_Balloc+0x23>
 804ffe8:	90                   	nop
 804ffe9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

0804fff0 <_Bfree>:
 804fff0:	55                   	push   %ebp
 804fff1:	89 e5                	mov    %esp,%ebp
 804fff3:	8b 45 0c             	mov    0xc(%ebp),%eax
 804fff6:	85 c0                	test   %eax,%eax
 804fff8:	74 12                	je     805000c <_Bfree+0x1c>
 804fffa:	8b 55 08             	mov    0x8(%ebp),%edx
 804fffd:	8b 48 04             	mov    0x4(%eax),%ecx
 8050000:	8b 52 4c             	mov    0x4c(%edx),%edx
 8050003:	8d 14 8a             	lea    (%edx,%ecx,4),%edx
 8050006:	8b 0a                	mov    (%edx),%ecx
 8050008:	89 08                	mov    %ecx,(%eax)
 805000a:	89 02                	mov    %eax,(%edx)
 805000c:	5d                   	pop    %ebp
 805000d:	c3                   	ret    
 805000e:	66 90                	xchg   %ax,%ax

08050010 <__multadd>:
 8050010:	55                   	push   %ebp
 8050011:	89 e5                	mov    %esp,%ebp
 8050013:	57                   	push   %edi
 8050014:	56                   	push   %esi
 8050015:	53                   	push   %ebx
 8050016:	83 ec 2c             	sub    $0x2c,%esp
 8050019:	8b 45 0c             	mov    0xc(%ebp),%eax
 805001c:	8b 5d 14             	mov    0x14(%ebp),%ebx
 805001f:	8b 40 10             	mov    0x10(%eax),%eax
 8050022:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 8050025:	8b 45 0c             	mov    0xc(%ebp),%eax
 8050028:	8d 78 14             	lea    0x14(%eax),%edi
 805002b:	31 c0                	xor    %eax,%eax
 805002d:	8d 76 00             	lea    0x0(%esi),%esi
 8050030:	8b 0c 87             	mov    (%edi,%eax,4),%ecx
 8050033:	0f b7 d1             	movzwl %cx,%edx
 8050036:	0f af 55 10          	imul   0x10(%ebp),%edx
 805003a:	c1 e9 10             	shr    $0x10,%ecx
 805003d:	0f af 4d 10          	imul   0x10(%ebp),%ecx
 8050041:	01 da                	add    %ebx,%edx
 8050043:	89 d3                	mov    %edx,%ebx
 8050045:	0f b7 d2             	movzwl %dx,%edx
 8050048:	c1 eb 10             	shr    $0x10,%ebx
 805004b:	01 d9                	add    %ebx,%ecx
 805004d:	89 ce                	mov    %ecx,%esi
 805004f:	c1 e1 10             	shl    $0x10,%ecx
 8050052:	01 d1                	add    %edx,%ecx
 8050054:	c1 ee 10             	shr    $0x10,%esi
 8050057:	89 0c 87             	mov    %ecx,(%edi,%eax,4)
 805005a:	83 c0 01             	add    $0x1,%eax
 805005d:	89 f3                	mov    %esi,%ebx
 805005f:	39 45 e4             	cmp    %eax,-0x1c(%ebp)
 8050062:	7f cc                	jg     8050030 <__multadd+0x20>
 8050064:	85 f6                	test   %esi,%esi
 8050066:	74 1b                	je     8050083 <__multadd+0x73>
 8050068:	8b 45 0c             	mov    0xc(%ebp),%eax
 805006b:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 805006e:	3b 78 08             	cmp    0x8(%eax),%edi
 8050071:	7d 1d                	jge    8050090 <__multadd+0x80>
 8050073:	8b 7d 0c             	mov    0xc(%ebp),%edi
 8050076:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 8050079:	89 74 87 14          	mov    %esi,0x14(%edi,%eax,4)
 805007d:	83 c0 01             	add    $0x1,%eax
 8050080:	89 47 10             	mov    %eax,0x10(%edi)
 8050083:	8b 45 0c             	mov    0xc(%ebp),%eax
 8050086:	83 c4 2c             	add    $0x2c,%esp
 8050089:	5b                   	pop    %ebx
 805008a:	5e                   	pop    %esi
 805008b:	5f                   	pop    %edi
 805008c:	5d                   	pop    %ebp
 805008d:	c3                   	ret    
 805008e:	66 90                	xchg   %ax,%ax
 8050090:	8b 40 04             	mov    0x4(%eax),%eax
 8050093:	89 45 e0             	mov    %eax,-0x20(%ebp)
 8050096:	83 c0 01             	add    $0x1,%eax
 8050099:	89 44 24 04          	mov    %eax,0x4(%esp)
 805009d:	8b 45 08             	mov    0x8(%ebp),%eax
 80500a0:	89 04 24             	mov    %eax,(%esp)
 80500a3:	e8 a8 fe ff ff       	call   804ff50 <_Balloc>
 80500a8:	89 c3                	mov    %eax,%ebx
 80500aa:	8b 45 0c             	mov    0xc(%ebp),%eax
 80500ad:	8b 40 10             	mov    0x10(%eax),%eax
 80500b0:	8d 04 85 08 00 00 00 	lea    0x8(,%eax,4),%eax
 80500b7:	89 44 24 08          	mov    %eax,0x8(%esp)
 80500bb:	8b 45 0c             	mov    0xc(%ebp),%eax
 80500be:	83 c0 0c             	add    $0xc,%eax
 80500c1:	89 44 24 04          	mov    %eax,0x4(%esp)
 80500c5:	8d 43 0c             	lea    0xc(%ebx),%eax
 80500c8:	89 04 24             	mov    %eax,(%esp)
 80500cb:	e8 18 fe ff ff       	call   804fee8 <memcpy>
 80500d0:	8b 45 0c             	mov    0xc(%ebp),%eax
 80500d3:	8b 7d 0c             	mov    0xc(%ebp),%edi
 80500d6:	89 5d 0c             	mov    %ebx,0xc(%ebp)
 80500d9:	8b 50 04             	mov    0x4(%eax),%edx
 80500dc:	8b 45 08             	mov    0x8(%ebp),%eax
 80500df:	8b 40 4c             	mov    0x4c(%eax),%eax
 80500e2:	8d 04 90             	lea    (%eax,%edx,4),%eax
 80500e5:	8b 10                	mov    (%eax),%edx
 80500e7:	89 17                	mov    %edx,(%edi)
 80500e9:	89 38                	mov    %edi,(%eax)
 80500eb:	eb 86                	jmp    8050073 <__multadd+0x63>
 80500ed:	8d 76 00             	lea    0x0(%esi),%esi

080500f0 <__s2b>:
 80500f0:	55                   	push   %ebp
 80500f1:	ba 39 8e e3 38       	mov    $0x38e38e39,%edx
 80500f6:	89 e5                	mov    %esp,%ebp
 80500f8:	57                   	push   %edi
 80500f9:	56                   	push   %esi
 80500fa:	53                   	push   %ebx
 80500fb:	83 ec 2c             	sub    $0x2c,%esp
 80500fe:	8b 45 14             	mov    0x14(%ebp),%eax
 8050101:	8b 5d 08             	mov    0x8(%ebp),%ebx
 8050104:	8b 75 0c             	mov    0xc(%ebp),%esi
 8050107:	8d 48 08             	lea    0x8(%eax),%ecx
 805010a:	89 c8                	mov    %ecx,%eax
 805010c:	f7 ea                	imul   %edx
 805010e:	c1 f9 1f             	sar    $0x1f,%ecx
 8050111:	d1 fa                	sar    %edx
 8050113:	29 ca                	sub    %ecx,%edx
 8050115:	83 fa 01             	cmp    $0x1,%edx
 8050118:	0f 8e be 00 00 00    	jle    80501dc <__s2b+0xec>
 805011e:	b8 01 00 00 00       	mov    $0x1,%eax
 8050123:	31 c9                	xor    %ecx,%ecx
 8050125:	8d 76 00             	lea    0x0(%esi),%esi
 8050128:	01 c0                	add    %eax,%eax
 805012a:	83 c1 01             	add    $0x1,%ecx
 805012d:	39 c2                	cmp    %eax,%edx
 805012f:	7f f7                	jg     8050128 <__s2b+0x38>
 8050131:	89 4c 24 04          	mov    %ecx,0x4(%esp)
 8050135:	89 1c 24             	mov    %ebx,(%esp)
 8050138:	e8 13 fe ff ff       	call   804ff50 <_Balloc>
 805013d:	8b 55 18             	mov    0x18(%ebp),%edx
 8050140:	83 7d 10 09          	cmpl   $0x9,0x10(%ebp)
 8050144:	89 50 14             	mov    %edx,0x14(%eax)
 8050147:	c7 40 10 01 00 00 00 	movl   $0x1,0x10(%eax)
 805014e:	0f 8e 7c 00 00 00    	jle    80501d0 <__s2b+0xe0>
 8050154:	8d 4e 09             	lea    0x9(%esi),%ecx
 8050157:	03 75 10             	add    0x10(%ebp),%esi
 805015a:	89 cf                	mov    %ecx,%edi
 805015c:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
 805015f:	90                   	nop
 8050160:	83 c7 01             	add    $0x1,%edi
 8050163:	0f be 57 ff          	movsbl -0x1(%edi),%edx
 8050167:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
 805016e:	00 
 805016f:	89 44 24 04          	mov    %eax,0x4(%esp)
 8050173:	89 1c 24             	mov    %ebx,(%esp)
 8050176:	83 ea 30             	sub    $0x30,%edx
 8050179:	89 54 24 0c          	mov    %edx,0xc(%esp)
 805017d:	e8 8e fe ff ff       	call   8050010 <__multadd>
 8050182:	39 f7                	cmp    %esi,%edi
 8050184:	75 da                	jne    8050160 <__s2b+0x70>
 8050186:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
 8050189:	8b 7d 10             	mov    0x10(%ebp),%edi
 805018c:	8d 74 39 f8          	lea    -0x8(%ecx,%edi,1),%esi
 8050190:	8b 4d 10             	mov    0x10(%ebp),%ecx
 8050193:	39 4d 14             	cmp    %ecx,0x14(%ebp)
 8050196:	7e 2e                	jle    80501c6 <__s2b+0xd6>
 8050198:	8b 7d 14             	mov    0x14(%ebp),%edi
 805019b:	29 cf                	sub    %ecx,%edi
 805019d:	01 f7                	add    %esi,%edi
 805019f:	90                   	nop
 80501a0:	83 c6 01             	add    $0x1,%esi
 80501a3:	0f be 56 ff          	movsbl -0x1(%esi),%edx
 80501a7:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
 80501ae:	00 
 80501af:	89 44 24 04          	mov    %eax,0x4(%esp)
 80501b3:	89 1c 24             	mov    %ebx,(%esp)
 80501b6:	83 ea 30             	sub    $0x30,%edx
 80501b9:	89 54 24 0c          	mov    %edx,0xc(%esp)
 80501bd:	e8 4e fe ff ff       	call   8050010 <__multadd>
 80501c2:	39 fe                	cmp    %edi,%esi
 80501c4:	75 da                	jne    80501a0 <__s2b+0xb0>
 80501c6:	83 c4 2c             	add    $0x2c,%esp
 80501c9:	5b                   	pop    %ebx
 80501ca:	5e                   	pop    %esi
 80501cb:	5f                   	pop    %edi
 80501cc:	5d                   	pop    %ebp
 80501cd:	c3                   	ret    
 80501ce:	66 90                	xchg   %ax,%ax
 80501d0:	83 c6 0a             	add    $0xa,%esi
 80501d3:	c7 45 10 09 00 00 00 	movl   $0x9,0x10(%ebp)
 80501da:	eb b4                	jmp    8050190 <__s2b+0xa0>
 80501dc:	31 c9                	xor    %ecx,%ecx
 80501de:	e9 4e ff ff ff       	jmp    8050131 <__s2b+0x41>
 80501e3:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 80501e9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

080501f0 <__hi0bits>:
 80501f0:	55                   	push   %ebp
 80501f1:	31 c9                	xor    %ecx,%ecx
 80501f3:	89 e5                	mov    %esp,%ebp
 80501f5:	8b 55 08             	mov    0x8(%ebp),%edx
 80501f8:	f7 c2 00 00 ff ff    	test   $0xffff0000,%edx
 80501fe:	75 05                	jne    8050205 <__hi0bits+0x15>
 8050200:	c1 e2 10             	shl    $0x10,%edx
 8050203:	b1 10                	mov    $0x10,%cl
 8050205:	f7 c2 00 00 00 ff    	test   $0xff000000,%edx
 805020b:	75 06                	jne    8050213 <__hi0bits+0x23>
 805020d:	83 c1 08             	add    $0x8,%ecx
 8050210:	c1 e2 08             	shl    $0x8,%edx
 8050213:	f7 c2 00 00 00 f0    	test   $0xf0000000,%edx
 8050219:	75 06                	jne    8050221 <__hi0bits+0x31>
 805021b:	83 c1 04             	add    $0x4,%ecx
 805021e:	c1 e2 04             	shl    $0x4,%edx
 8050221:	f7 c2 00 00 00 c0    	test   $0xc0000000,%edx
 8050227:	75 06                	jne    805022f <__hi0bits+0x3f>
 8050229:	83 c1 02             	add    $0x2,%ecx
 805022c:	c1 e2 02             	shl    $0x2,%edx
 805022f:	85 d2                	test   %edx,%edx
 8050231:	89 c8                	mov    %ecx,%eax
 8050233:	78 0d                	js     8050242 <__hi0bits+0x52>
 8050235:	81 e2 00 00 00 40    	and    $0x40000000,%edx
 805023b:	b8 20 00 00 00       	mov    $0x20,%eax
 8050240:	75 06                	jne    8050248 <__hi0bits+0x58>
 8050242:	5d                   	pop    %ebp
 8050243:	c3                   	ret    
 8050244:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8050248:	8d 41 01             	lea    0x1(%ecx),%eax
 805024b:	5d                   	pop    %ebp
 805024c:	c3                   	ret    
 805024d:	8d 76 00             	lea    0x0(%esi),%esi

08050250 <__lo0bits>:
 8050250:	55                   	push   %ebp
 8050251:	89 e5                	mov    %esp,%ebp
 8050253:	53                   	push   %ebx
 8050254:	8b 5d 08             	mov    0x8(%ebp),%ebx
 8050257:	8b 13                	mov    (%ebx),%edx
 8050259:	f6 c2 07             	test   $0x7,%dl
 805025c:	74 1a                	je     8050278 <__lo0bits+0x28>
 805025e:	31 c0                	xor    %eax,%eax
 8050260:	f6 c2 01             	test   $0x1,%dl
 8050263:	75 0f                	jne    8050274 <__lo0bits+0x24>
 8050265:	f6 c2 02             	test   $0x2,%dl
 8050268:	75 56                	jne    80502c0 <__lo0bits+0x70>
 805026a:	c1 ea 02             	shr    $0x2,%edx
 805026d:	b8 02 00 00 00       	mov    $0x2,%eax
 8050272:	89 13                	mov    %edx,(%ebx)
 8050274:	5b                   	pop    %ebx
 8050275:	5d                   	pop    %ebp
 8050276:	c3                   	ret    
 8050277:	90                   	nop
 8050278:	31 c9                	xor    %ecx,%ecx
 805027a:	66 85 d2             	test   %dx,%dx
 805027d:	75 05                	jne    8050284 <__lo0bits+0x34>
 805027f:	c1 ea 10             	shr    $0x10,%edx
 8050282:	b1 10                	mov    $0x10,%cl
 8050284:	84 d2                	test   %dl,%dl
 8050286:	75 06                	jne    805028e <__lo0bits+0x3e>
 8050288:	83 c1 08             	add    $0x8,%ecx
 805028b:	c1 ea 08             	shr    $0x8,%edx
 805028e:	f6 c2 0f             	test   $0xf,%dl
 8050291:	75 06                	jne    8050299 <__lo0bits+0x49>
 8050293:	83 c1 04             	add    $0x4,%ecx
 8050296:	c1 ea 04             	shr    $0x4,%edx
 8050299:	f6 c2 03             	test   $0x3,%dl
 805029c:	75 06                	jne    80502a4 <__lo0bits+0x54>
 805029e:	83 c1 02             	add    $0x2,%ecx
 80502a1:	c1 ea 02             	shr    $0x2,%edx
 80502a4:	f6 c2 01             	test   $0x1,%dl
 80502a7:	75 0c                	jne    80502b5 <__lo0bits+0x65>
 80502a9:	d1 ea                	shr    %edx
 80502ab:	b8 20 00 00 00       	mov    $0x20,%eax
 80502b0:	74 c2                	je     8050274 <__lo0bits+0x24>
 80502b2:	83 c1 01             	add    $0x1,%ecx
 80502b5:	89 13                	mov    %edx,(%ebx)
 80502b7:	89 c8                	mov    %ecx,%eax
 80502b9:	5b                   	pop    %ebx
 80502ba:	5d                   	pop    %ebp
 80502bb:	c3                   	ret    
 80502bc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 80502c0:	d1 ea                	shr    %edx
 80502c2:	b0 01                	mov    $0x1,%al
 80502c4:	89 13                	mov    %edx,(%ebx)
 80502c6:	5b                   	pop    %ebx
 80502c7:	5d                   	pop    %ebp
 80502c8:	c3                   	ret    
 80502c9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

080502d0 <__i2b>:
 80502d0:	55                   	push   %ebp
 80502d1:	89 e5                	mov    %esp,%ebp
 80502d3:	83 ec 18             	sub    $0x18,%esp
 80502d6:	8b 45 08             	mov    0x8(%ebp),%eax
 80502d9:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
 80502e0:	00 
 80502e1:	89 04 24             	mov    %eax,(%esp)
 80502e4:	e8 67 fc ff ff       	call   804ff50 <_Balloc>
 80502e9:	8b 55 0c             	mov    0xc(%ebp),%edx
 80502ec:	89 50 14             	mov    %edx,0x14(%eax)
 80502ef:	c7 40 10 01 00 00 00 	movl   $0x1,0x10(%eax)
 80502f6:	c9                   	leave  
 80502f7:	c3                   	ret    
 80502f8:	90                   	nop
 80502f9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

08050300 <__multiply>:
 8050300:	55                   	push   %ebp
 8050301:	89 e5                	mov    %esp,%ebp
 8050303:	57                   	push   %edi
 8050304:	56                   	push   %esi
 8050305:	53                   	push   %ebx
 8050306:	83 ec 3c             	sub    $0x3c,%esp
 8050309:	8b 75 0c             	mov    0xc(%ebp),%esi
 805030c:	8b 45 10             	mov    0x10(%ebp),%eax
 805030f:	8b 7e 10             	mov    0x10(%esi),%edi
 8050312:	8b 58 10             	mov    0x10(%eax),%ebx
 8050315:	39 df                	cmp    %ebx,%edi
 8050317:	7d 0e                	jge    8050327 <__multiply+0x27>
 8050319:	89 f8                	mov    %edi,%eax
 805031b:	89 df                	mov    %ebx,%edi
 805031d:	89 c3                	mov    %eax,%ebx
 805031f:	89 f0                	mov    %esi,%eax
 8050321:	8b 75 10             	mov    0x10(%ebp),%esi
 8050324:	89 45 10             	mov    %eax,0x10(%ebp)
 8050327:	8d 04 1f             	lea    (%edi,%ebx,1),%eax
 805032a:	3b 46 08             	cmp    0x8(%esi),%eax
 805032d:	89 45 c8             	mov    %eax,-0x38(%ebp)
 8050330:	0f 9f c0             	setg   %al
 8050333:	0f b6 c0             	movzbl %al,%eax
 8050336:	03 46 04             	add    0x4(%esi),%eax
 8050339:	89 44 24 04          	mov    %eax,0x4(%esp)
 805033d:	8b 45 08             	mov    0x8(%ebp),%eax
 8050340:	89 04 24             	mov    %eax,(%esp)
 8050343:	e8 08 fc ff ff       	call   804ff50 <_Balloc>
 8050348:	8b 55 c8             	mov    -0x38(%ebp),%edx
 805034b:	89 45 c0             	mov    %eax,-0x40(%ebp)
 805034e:	8d 40 14             	lea    0x14(%eax),%eax
 8050351:	8d 14 90             	lea    (%eax,%edx,4),%edx
 8050354:	89 d1                	mov    %edx,%ecx
 8050356:	39 c8                	cmp    %ecx,%eax
 8050358:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 805035b:	89 55 c4             	mov    %edx,-0x3c(%ebp)
 805035e:	73 15                	jae    8050375 <__multiply+0x75>
 8050360:	8b 55 c4             	mov    -0x3c(%ebp),%edx
 8050363:	90                   	nop
 8050364:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8050368:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
 805036e:	83 c0 04             	add    $0x4,%eax
 8050371:	39 c2                	cmp    %eax,%edx
 8050373:	77 f3                	ja     8050368 <__multiply+0x68>
 8050375:	8d 46 14             	lea    0x14(%esi),%eax
 8050378:	89 45 d0             	mov    %eax,-0x30(%ebp)
 805037b:	8d 04 b8             	lea    (%eax,%edi,4),%eax
 805037e:	89 45 dc             	mov    %eax,-0x24(%ebp)
 8050381:	8b 45 10             	mov    0x10(%ebp),%eax
 8050384:	83 c0 14             	add    $0x14,%eax
 8050387:	8d 3c 98             	lea    (%eax,%ebx,4),%edi
 805038a:	39 f8                	cmp    %edi,%eax
 805038c:	89 45 d8             	mov    %eax,-0x28(%ebp)
 805038f:	89 7d cc             	mov    %edi,-0x34(%ebp)
 8050392:	0f 83 e8 00 00 00    	jae    8050480 <__multiply+0x180>
 8050398:	8b 45 d8             	mov    -0x28(%ebp),%eax
 805039b:	8b 00                	mov    (%eax),%eax
 805039d:	0f b7 f8             	movzwl %ax,%edi
 80503a0:	85 ff                	test   %edi,%edi
 80503a2:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 80503a5:	74 5a                	je     8050401 <__multiply+0x101>
 80503a7:	8b 55 d4             	mov    -0x2c(%ebp),%edx
 80503aa:	31 db                	xor    %ebx,%ebx
 80503ac:	8b 75 d0             	mov    -0x30(%ebp),%esi
 80503af:	eb 09                	jmp    80503ba <__multiply+0xba>
 80503b1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 80503b8:	89 fa                	mov    %edi,%edx
 80503ba:	8b 0e                	mov    (%esi),%ecx
 80503bc:	83 c6 04             	add    $0x4,%esi
 80503bf:	0f b7 3a             	movzwl (%edx),%edi
 80503c2:	0f b7 c1             	movzwl %cx,%eax
 80503c5:	0f af 45 e4          	imul   -0x1c(%ebp),%eax
 80503c9:	c1 e9 10             	shr    $0x10,%ecx
 80503cc:	0f af 4d e4          	imul   -0x1c(%ebp),%ecx
 80503d0:	01 f8                	add    %edi,%eax
 80503d2:	01 d8                	add    %ebx,%eax
 80503d4:	8b 1a                	mov    (%edx),%ebx
 80503d6:	8d 7a 04             	lea    0x4(%edx),%edi
 80503d9:	c1 eb 10             	shr    $0x10,%ebx
 80503dc:	01 d9                	add    %ebx,%ecx
 80503de:	89 c3                	mov    %eax,%ebx
 80503e0:	c1 eb 10             	shr    $0x10,%ebx
 80503e3:	0f b7 c0             	movzwl %ax,%eax
 80503e6:	01 d9                	add    %ebx,%ecx
 80503e8:	89 cb                	mov    %ecx,%ebx
 80503ea:	c1 e1 10             	shl    $0x10,%ecx
 80503ed:	09 c1                	or     %eax,%ecx
 80503ef:	c1 eb 10             	shr    $0x10,%ebx
 80503f2:	39 75 dc             	cmp    %esi,-0x24(%ebp)
 80503f5:	89 0a                	mov    %ecx,(%edx)
 80503f7:	77 bf                	ja     80503b8 <__multiply+0xb8>
 80503f9:	8b 45 d8             	mov    -0x28(%ebp),%eax
 80503fc:	89 5a 04             	mov    %ebx,0x4(%edx)
 80503ff:	8b 00                	mov    (%eax),%eax
 8050401:	c1 e8 10             	shr    $0x10,%eax
 8050404:	85 c0                	test   %eax,%eax
 8050406:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 8050409:	74 61                	je     805046c <__multiply+0x16c>
 805040b:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 805040e:	31 ff                	xor    %edi,%edi
 8050410:	89 fe                	mov    %edi,%esi
 8050412:	8b 10                	mov    (%eax),%edx
 8050414:	89 45 e0             	mov    %eax,-0x20(%ebp)
 8050417:	8b 45 d0             	mov    -0x30(%ebp),%eax
 805041a:	89 d3                	mov    %edx,%ebx
 805041c:	eb 05                	jmp    8050423 <__multiply+0x123>
 805041e:	66 90                	xchg   %ax,%ax
 8050420:	89 4d e0             	mov    %ecx,-0x20(%ebp)
 8050423:	0f b7 08             	movzwl (%eax),%ecx
 8050426:	c1 eb 10             	shr    $0x10,%ebx
 8050429:	0f b7 d2             	movzwl %dx,%edx
 805042c:	0f af 4d e4          	imul   -0x1c(%ebp),%ecx
 8050430:	83 c0 04             	add    $0x4,%eax
 8050433:	8d 3c 19             	lea    (%ecx,%ebx,1),%edi
 8050436:	01 f7                	add    %esi,%edi
 8050438:	8b 75 e0             	mov    -0x20(%ebp),%esi
 805043b:	89 fb                	mov    %edi,%ebx
 805043d:	c1 e3 10             	shl    $0x10,%ebx
 8050440:	09 d3                	or     %edx,%ebx
 8050442:	89 1e                	mov    %ebx,(%esi)
 8050444:	8b 5e 04             	mov    0x4(%esi),%ebx
 8050447:	8d 4e 04             	lea    0x4(%esi),%ecx
 805044a:	0f b7 50 fe          	movzwl -0x2(%eax),%edx
 805044e:	c1 ef 10             	shr    $0x10,%edi
 8050451:	0f af 55 e4          	imul   -0x1c(%ebp),%edx
 8050455:	0f b7 f3             	movzwl %bx,%esi
 8050458:	01 f2                	add    %esi,%edx
 805045a:	01 fa                	add    %edi,%edx
 805045c:	89 d6                	mov    %edx,%esi
 805045e:	c1 ee 10             	shr    $0x10,%esi
 8050461:	39 45 dc             	cmp    %eax,-0x24(%ebp)
 8050464:	77 ba                	ja     8050420 <__multiply+0x120>
 8050466:	8b 45 e0             	mov    -0x20(%ebp),%eax
 8050469:	89 50 04             	mov    %edx,0x4(%eax)
 805046c:	83 45 d8 04          	addl   $0x4,-0x28(%ebp)
 8050470:	8b 45 d8             	mov    -0x28(%ebp),%eax
 8050473:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
 8050477:	39 45 cc             	cmp    %eax,-0x34(%ebp)
 805047a:	0f 87 18 ff ff ff    	ja     8050398 <__multiply+0x98>
 8050480:	8b 75 c8             	mov    -0x38(%ebp),%esi
 8050483:	85 f6                	test   %esi,%esi
 8050485:	7e 29                	jle    80504b0 <__multiply+0x1b0>
 8050487:	8b 7d c4             	mov    -0x3c(%ebp),%edi
 805048a:	8b 5f fc             	mov    -0x4(%edi),%ebx
 805048d:	85 db                	test   %ebx,%ebx
 805048f:	75 1f                	jne    80504b0 <__multiply+0x1b0>
 8050491:	8b 55 c8             	mov    -0x38(%ebp),%edx
 8050494:	89 d0                	mov    %edx,%eax
 8050496:	c1 e0 02             	shl    $0x2,%eax
 8050499:	29 c7                	sub    %eax,%edi
 805049b:	89 f8                	mov    %edi,%eax
 805049d:	eb 09                	jmp    80504a8 <__multiply+0x1a8>
 805049f:	90                   	nop
 80504a0:	8b 4c 90 fc          	mov    -0x4(%eax,%edx,4),%ecx
 80504a4:	85 c9                	test   %ecx,%ecx
 80504a6:	75 05                	jne    80504ad <__multiply+0x1ad>
 80504a8:	83 ea 01             	sub    $0x1,%edx
 80504ab:	75 f3                	jne    80504a0 <__multiply+0x1a0>
 80504ad:	89 55 c8             	mov    %edx,-0x38(%ebp)
 80504b0:	8b 45 c0             	mov    -0x40(%ebp),%eax
 80504b3:	8b 7d c8             	mov    -0x38(%ebp),%edi
 80504b6:	89 78 10             	mov    %edi,0x10(%eax)
 80504b9:	83 c4 3c             	add    $0x3c,%esp
 80504bc:	5b                   	pop    %ebx
 80504bd:	5e                   	pop    %esi
 80504be:	5f                   	pop    %edi
 80504bf:	5d                   	pop    %ebp
 80504c0:	c3                   	ret    
 80504c1:	eb 0d                	jmp    80504d0 <__pow5mult>
 80504c3:	90                   	nop
 80504c4:	90                   	nop
 80504c5:	90                   	nop
 80504c6:	90                   	nop
 80504c7:	90                   	nop
 80504c8:	90                   	nop
 80504c9:	90                   	nop
 80504ca:	90                   	nop
 80504cb:	90                   	nop
 80504cc:	90                   	nop
 80504cd:	90                   	nop
 80504ce:	90                   	nop
 80504cf:	90                   	nop

080504d0 <__pow5mult>:
 80504d0:	55                   	push   %ebp
 80504d1:	89 e5                	mov    %esp,%ebp
 80504d3:	57                   	push   %edi
 80504d4:	56                   	push   %esi
 80504d5:	53                   	push   %ebx
 80504d6:	83 ec 2c             	sub    $0x2c,%esp
 80504d9:	8b 5d 10             	mov    0x10(%ebp),%ebx
 80504dc:	8b 4d 08             	mov    0x8(%ebp),%ecx
 80504df:	8b 7d 0c             	mov    0xc(%ebp),%edi
 80504e2:	89 d8                	mov    %ebx,%eax
 80504e4:	83 e0 03             	and    $0x3,%eax
 80504e7:	0f 85 a3 00 00 00    	jne    8050590 <__pow5mult+0xc0>
 80504ed:	c1 fb 02             	sar    $0x2,%ebx
 80504f0:	85 db                	test   %ebx,%ebx
 80504f2:	74 5c                	je     8050550 <__pow5mult+0x80>
 80504f4:	8b 71 48             	mov    0x48(%ecx),%esi
 80504f7:	85 f6                	test   %esi,%esi
 80504f9:	0f 84 bd 00 00 00    	je     80505bc <__pow5mult+0xec>
 80504ff:	f6 c3 01             	test   $0x1,%bl
 8050502:	75 15                	jne    8050519 <__pow5mult+0x49>
 8050504:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8050508:	d1 fb                	sar    %ebx
 805050a:	74 44                	je     8050550 <__pow5mult+0x80>
 805050c:	8b 06                	mov    (%esi),%eax
 805050e:	85 c0                	test   %eax,%eax
 8050510:	74 4e                	je     8050560 <__pow5mult+0x90>
 8050512:	89 c6                	mov    %eax,%esi
 8050514:	f6 c3 01             	test   $0x1,%bl
 8050517:	74 ef                	je     8050508 <__pow5mult+0x38>
 8050519:	89 0c 24             	mov    %ecx,(%esp)
 805051c:	89 74 24 08          	mov    %esi,0x8(%esp)
 8050520:	89 7c 24 04          	mov    %edi,0x4(%esp)
 8050524:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
 8050527:	e8 d4 fd ff ff       	call   8050300 <__multiply>
 805052c:	85 ff                	test   %edi,%edi
 805052e:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
 8050531:	89 45 e0             	mov    %eax,-0x20(%ebp)
 8050534:	74 52                	je     8050588 <__pow5mult+0xb8>
 8050536:	8b 57 04             	mov    0x4(%edi),%edx
 8050539:	d1 fb                	sar    %ebx
 805053b:	8b 41 4c             	mov    0x4c(%ecx),%eax
 805053e:	8d 04 90             	lea    (%eax,%edx,4),%eax
 8050541:	8b 10                	mov    (%eax),%edx
 8050543:	89 17                	mov    %edx,(%edi)
 8050545:	89 38                	mov    %edi,(%eax)
 8050547:	8b 7d e0             	mov    -0x20(%ebp),%edi
 805054a:	75 c0                	jne    805050c <__pow5mult+0x3c>
 805054c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8050550:	83 c4 2c             	add    $0x2c,%esp
 8050553:	89 f8                	mov    %edi,%eax
 8050555:	5b                   	pop    %ebx
 8050556:	5e                   	pop    %esi
 8050557:	5f                   	pop    %edi
 8050558:	5d                   	pop    %ebp
 8050559:	c3                   	ret    
 805055a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 8050560:	89 74 24 08          	mov    %esi,0x8(%esp)
 8050564:	89 74 24 04          	mov    %esi,0x4(%esp)
 8050568:	89 0c 24             	mov    %ecx,(%esp)
 805056b:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
 805056e:	e8 8d fd ff ff       	call   8050300 <__multiply>
 8050573:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
 8050576:	89 06                	mov    %eax,(%esi)
 8050578:	89 c6                	mov    %eax,%esi
 805057a:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
 8050580:	eb 92                	jmp    8050514 <__pow5mult+0x44>
 8050582:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 8050588:	8b 7d e0             	mov    -0x20(%ebp),%edi
 805058b:	e9 78 ff ff ff       	jmp    8050508 <__pow5mult+0x38>
 8050590:	8b 04 85 9c 4c 05 08 	mov    0x8054c9c(,%eax,4),%eax
 8050597:	89 7c 24 04          	mov    %edi,0x4(%esp)
 805059b:	89 0c 24             	mov    %ecx,(%esp)
 805059e:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
 80505a5:	00 
 80505a6:	89 44 24 08          	mov    %eax,0x8(%esp)
 80505aa:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
 80505ad:	e8 5e fa ff ff       	call   8050010 <__multadd>
 80505b2:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
 80505b5:	89 c7                	mov    %eax,%edi
 80505b7:	e9 31 ff ff ff       	jmp    80504ed <__pow5mult+0x1d>
 80505bc:	89 0c 24             	mov    %ecx,(%esp)
 80505bf:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
 80505c6:	00 
 80505c7:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
 80505ca:	e8 81 f9 ff ff       	call   804ff50 <_Balloc>
 80505cf:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
 80505d2:	c7 40 14 71 02 00 00 	movl   $0x271,0x14(%eax)
 80505d9:	89 c6                	mov    %eax,%esi
 80505db:	c7 40 10 01 00 00 00 	movl   $0x1,0x10(%eax)
 80505e2:	89 41 48             	mov    %eax,0x48(%ecx)
 80505e5:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
 80505eb:	e9 0f ff ff ff       	jmp    80504ff <__pow5mult+0x2f>

080505f0 <__lshift>:
 80505f0:	55                   	push   %ebp
 80505f1:	89 e5                	mov    %esp,%ebp
 80505f3:	57                   	push   %edi
 80505f4:	56                   	push   %esi
 80505f5:	53                   	push   %ebx
 80505f6:	83 ec 2c             	sub    $0x2c,%esp
 80505f9:	8b 45 0c             	mov    0xc(%ebp),%eax
 80505fc:	8b 75 10             	mov    0x10(%ebp),%esi
 80505ff:	89 c7                	mov    %eax,%edi
 8050601:	8b 50 04             	mov    0x4(%eax),%edx
 8050604:	8b 40 10             	mov    0x10(%eax),%eax
 8050607:	89 f3                	mov    %esi,%ebx
 8050609:	c1 fb 05             	sar    $0x5,%ebx
 805060c:	01 d8                	add    %ebx,%eax
 805060e:	89 45 d0             	mov    %eax,-0x30(%ebp)
 8050611:	83 c0 01             	add    $0x1,%eax
 8050614:	89 c1                	mov    %eax,%ecx
 8050616:	89 45 d8             	mov    %eax,-0x28(%ebp)
 8050619:	8b 47 08             	mov    0x8(%edi),%eax
 805061c:	39 c1                	cmp    %eax,%ecx
 805061e:	7e 09                	jle    8050629 <__lshift+0x39>
 8050620:	01 c0                	add    %eax,%eax
 8050622:	83 c2 01             	add    $0x1,%edx
 8050625:	39 c1                	cmp    %eax,%ecx
 8050627:	7f f7                	jg     8050620 <__lshift+0x30>
 8050629:	8b 45 08             	mov    0x8(%ebp),%eax
 805062c:	89 54 24 04          	mov    %edx,0x4(%esp)
 8050630:	89 04 24             	mov    %eax,(%esp)
 8050633:	e8 18 f9 ff ff       	call   804ff50 <_Balloc>
 8050638:	85 db                	test   %ebx,%ebx
 805063a:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 805063d:	8d 50 14             	lea    0x14(%eax),%edx
 8050640:	7e 17                	jle    8050659 <__lshift+0x69>
 8050642:	31 c0                	xor    %eax,%eax
 8050644:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8050648:	c7 04 82 00 00 00 00 	movl   $0x0,(%edx,%eax,4)
 805064f:	83 c0 01             	add    $0x1,%eax
 8050652:	39 d8                	cmp    %ebx,%eax
 8050654:	75 f2                	jne    8050648 <__lshift+0x58>
 8050656:	8d 14 82             	lea    (%edx,%eax,4),%edx
 8050659:	8b 7d 0c             	mov    0xc(%ebp),%edi
 805065c:	8b 45 0c             	mov    0xc(%ebp),%eax
 805065f:	8b 4f 10             	mov    0x10(%edi),%ecx
 8050662:	83 c0 14             	add    $0x14,%eax
 8050665:	83 e6 1f             	and    $0x1f,%esi
 8050668:	89 75 e0             	mov    %esi,-0x20(%ebp)
 805066b:	8d 3c 88             	lea    (%eax,%ecx,4),%edi
 805066e:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 8050671:	74 7d                	je     80506f0 <__lshift+0x100>
 8050673:	c7 45 dc 20 00 00 00 	movl   $0x20,-0x24(%ebp)
 805067a:	29 75 dc             	sub    %esi,-0x24(%ebp)
 805067d:	31 f6                	xor    %esi,%esi
 805067f:	eb 09                	jmp    805068a <__lshift+0x9a>
 8050681:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 8050688:	89 fa                	mov    %edi,%edx
 805068a:	8b 18                	mov    (%eax),%ebx
 805068c:	83 c0 04             	add    $0x4,%eax
 805068f:	0f b6 4d e0          	movzbl -0x20(%ebp),%ecx
 8050693:	8d 7a 04             	lea    0x4(%edx),%edi
 8050696:	d3 e3                	shl    %cl,%ebx
 8050698:	0f b6 4d dc          	movzbl -0x24(%ebp),%ecx
 805069c:	09 f3                	or     %esi,%ebx
 805069e:	89 1a                	mov    %ebx,(%edx)
 80506a0:	8b 70 fc             	mov    -0x4(%eax),%esi
 80506a3:	d3 ee                	shr    %cl,%esi
 80506a5:	39 45 e4             	cmp    %eax,-0x1c(%ebp)
 80506a8:	77 de                	ja     8050688 <__lshift+0x98>
 80506aa:	8b 45 d0             	mov    -0x30(%ebp),%eax
 80506ad:	89 72 04             	mov    %esi,0x4(%edx)
 80506b0:	83 c0 02             	add    $0x2,%eax
 80506b3:	85 f6                	test   %esi,%esi
 80506b5:	0f 44 45 d8          	cmove  -0x28(%ebp),%eax
 80506b9:	89 45 d8             	mov    %eax,-0x28(%ebp)
 80506bc:	8b 45 d8             	mov    -0x28(%ebp),%eax
 80506bf:	8b 7d d4             	mov    -0x2c(%ebp),%edi
 80506c2:	8b 75 0c             	mov    0xc(%ebp),%esi
 80506c5:	83 e8 01             	sub    $0x1,%eax
 80506c8:	89 47 10             	mov    %eax,0x10(%edi)
 80506cb:	8b 45 0c             	mov    0xc(%ebp),%eax
 80506ce:	8b 50 04             	mov    0x4(%eax),%edx
 80506d1:	8b 45 08             	mov    0x8(%ebp),%eax
 80506d4:	8b 40 4c             	mov    0x4c(%eax),%eax
 80506d7:	8d 04 90             	lea    (%eax,%edx,4),%eax
 80506da:	8b 10                	mov    (%eax),%edx
 80506dc:	89 16                	mov    %edx,(%esi)
 80506de:	89 30                	mov    %esi,(%eax)
 80506e0:	83 c4 2c             	add    $0x2c,%esp
 80506e3:	89 f8                	mov    %edi,%eax
 80506e5:	5b                   	pop    %ebx
 80506e6:	5e                   	pop    %esi
 80506e7:	5f                   	pop    %edi
 80506e8:	5d                   	pop    %ebp
 80506e9:	c3                   	ret    
 80506ea:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 80506f0:	8b 5d e4             	mov    -0x1c(%ebp),%ebx
 80506f3:	90                   	nop
 80506f4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 80506f8:	83 c0 04             	add    $0x4,%eax
 80506fb:	8b 48 fc             	mov    -0x4(%eax),%ecx
 80506fe:	83 c2 04             	add    $0x4,%edx
 8050701:	39 c3                	cmp    %eax,%ebx
 8050703:	89 4a fc             	mov    %ecx,-0x4(%edx)
 8050706:	77 f0                	ja     80506f8 <__lshift+0x108>
 8050708:	eb b2                	jmp    80506bc <__lshift+0xcc>
 805070a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

08050710 <__mcmp>:
 8050710:	55                   	push   %ebp
 8050711:	89 e5                	mov    %esp,%ebp
 8050713:	8b 4d 08             	mov    0x8(%ebp),%ecx
 8050716:	8b 55 0c             	mov    0xc(%ebp),%edx
 8050719:	53                   	push   %ebx
 805071a:	8b 41 10             	mov    0x10(%ecx),%eax
 805071d:	8b 5a 10             	mov    0x10(%edx),%ebx
 8050720:	29 d8                	sub    %ebx,%eax
 8050722:	85 c0                	test   %eax,%eax
 8050724:	75 27                	jne    805074d <__mcmp+0x3d>
 8050726:	c1 e3 02             	shl    $0x2,%ebx
 8050729:	83 c1 14             	add    $0x14,%ecx
 805072c:	8d 04 19             	lea    (%ecx,%ebx,1),%eax
 805072f:	8d 54 1a 14          	lea    0x14(%edx,%ebx,1),%edx
 8050733:	eb 07                	jmp    805073c <__mcmp+0x2c>
 8050735:	8d 76 00             	lea    0x0(%esi),%esi
 8050738:	39 c1                	cmp    %eax,%ecx
 805073a:	73 14                	jae    8050750 <__mcmp+0x40>
 805073c:	83 ea 04             	sub    $0x4,%edx
 805073f:	83 e8 04             	sub    $0x4,%eax
 8050742:	8b 1a                	mov    (%edx),%ebx
 8050744:	39 18                	cmp    %ebx,(%eax)
 8050746:	74 f0                	je     8050738 <__mcmp+0x28>
 8050748:	19 c0                	sbb    %eax,%eax
 805074a:	83 c8 01             	or     $0x1,%eax
 805074d:	5b                   	pop    %ebx
 805074e:	5d                   	pop    %ebp
 805074f:	c3                   	ret    
 8050750:	31 c0                	xor    %eax,%eax
 8050752:	5b                   	pop    %ebx
 8050753:	5d                   	pop    %ebp
 8050754:	c3                   	ret    
 8050755:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8050759:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

08050760 <__mdiff>:
 8050760:	55                   	push   %ebp
 8050761:	89 e5                	mov    %esp,%ebp
 8050763:	57                   	push   %edi
 8050764:	56                   	push   %esi
 8050765:	53                   	push   %ebx
 8050766:	83 ec 2c             	sub    $0x2c,%esp
 8050769:	8b 75 0c             	mov    0xc(%ebp),%esi
 805076c:	8b 5d 10             	mov    0x10(%ebp),%ebx
 805076f:	89 34 24             	mov    %esi,(%esp)
 8050772:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 8050776:	e8 95 ff ff ff       	call   8050710 <__mcmp>
 805077b:	85 c0                	test   %eax,%eax
 805077d:	0f 84 25 01 00 00    	je     80508a8 <__mdiff+0x148>
 8050783:	0f 88 0f 01 00 00    	js     8050898 <__mdiff+0x138>
 8050789:	31 ff                	xor    %edi,%edi
 805078b:	8b 46 04             	mov    0x4(%esi),%eax
 805078e:	83 c6 14             	add    $0x14,%esi
 8050791:	89 44 24 04          	mov    %eax,0x4(%esp)
 8050795:	8b 45 08             	mov    0x8(%ebp),%eax
 8050798:	89 04 24             	mov    %eax,(%esp)
 805079b:	e8 b0 f7 ff ff       	call   804ff50 <_Balloc>
 80507a0:	8d 4b 14             	lea    0x14(%ebx),%ecx
 80507a3:	89 c2                	mov    %eax,%edx
 80507a5:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 80507a8:	89 78 0c             	mov    %edi,0xc(%eax)
 80507ab:	8b 46 fc             	mov    -0x4(%esi),%eax
 80507ae:	89 75 e4             	mov    %esi,-0x1c(%ebp)
 80507b1:	89 45 dc             	mov    %eax,-0x24(%ebp)
 80507b4:	8d 04 86             	lea    (%esi,%eax,4),%eax
 80507b7:	89 45 d8             	mov    %eax,-0x28(%ebp)
 80507ba:	8b 43 10             	mov    0x10(%ebx),%eax
 80507bd:	31 db                	xor    %ebx,%ebx
 80507bf:	8d 04 81             	lea    (%ecx,%eax,4),%eax
 80507c2:	89 45 e0             	mov    %eax,-0x20(%ebp)
 80507c5:	89 d0                	mov    %edx,%eax
 80507c7:	83 c0 14             	add    $0x14,%eax
 80507ca:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 80507d0:	8b 75 e4             	mov    -0x1c(%ebp),%esi
 80507d3:	83 c0 04             	add    $0x4,%eax
 80507d6:	83 c1 04             	add    $0x4,%ecx
 80507d9:	83 45 e4 04          	addl   $0x4,-0x1c(%ebp)
 80507dd:	8b 3e                	mov    (%esi),%edi
 80507df:	8b 71 fc             	mov    -0x4(%ecx),%esi
 80507e2:	0f b7 d7             	movzwl %di,%edx
 80507e5:	01 da                	add    %ebx,%edx
 80507e7:	0f b7 de             	movzwl %si,%ebx
 80507ea:	29 da                	sub    %ebx,%edx
 80507ec:	c1 ef 10             	shr    $0x10,%edi
 80507ef:	89 d3                	mov    %edx,%ebx
 80507f1:	c1 ee 10             	shr    $0x10,%esi
 80507f4:	0f b7 d2             	movzwl %dx,%edx
 80507f7:	c1 fb 10             	sar    $0x10,%ebx
 80507fa:	29 f7                	sub    %esi,%edi
 80507fc:	01 df                	add    %ebx,%edi
 80507fe:	89 fb                	mov    %edi,%ebx
 8050800:	c1 e7 10             	shl    $0x10,%edi
 8050803:	09 d7                	or     %edx,%edi
 8050805:	c1 fb 10             	sar    $0x10,%ebx
 8050808:	39 4d e0             	cmp    %ecx,-0x20(%ebp)
 805080b:	89 78 fc             	mov    %edi,-0x4(%eax)
 805080e:	77 c0                	ja     80507d0 <__mdiff+0x70>
 8050810:	8b 75 e4             	mov    -0x1c(%ebp),%esi
 8050813:	8b 4d d8             	mov    -0x28(%ebp),%ecx
 8050816:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 8050819:	89 75 e0             	mov    %esi,-0x20(%ebp)
 805081c:	39 f1                	cmp    %esi,%ecx
 805081e:	76 3f                	jbe    805085f <__mdiff+0xff>
 8050820:	8b 3e                	mov    (%esi),%edi
 8050822:	83 c6 04             	add    $0x4,%esi
 8050825:	83 c0 04             	add    $0x4,%eax
 8050828:	0f b7 d7             	movzwl %di,%edx
 805082b:	01 da                	add    %ebx,%edx
 805082d:	89 d3                	mov    %edx,%ebx
 805082f:	0f b7 d2             	movzwl %dx,%edx
 8050832:	c1 fb 10             	sar    $0x10,%ebx
 8050835:	c1 ef 10             	shr    $0x10,%edi
 8050838:	01 df                	add    %ebx,%edi
 805083a:	89 fb                	mov    %edi,%ebx
 805083c:	c1 e7 10             	shl    $0x10,%edi
 805083f:	09 d7                	or     %edx,%edi
 8050841:	c1 fb 10             	sar    $0x10,%ebx
 8050844:	39 f1                	cmp    %esi,%ecx
 8050846:	89 78 fc             	mov    %edi,-0x4(%eax)
 8050849:	77 d5                	ja     8050820 <__mdiff+0xc0>
 805084b:	8b 45 e0             	mov    -0x20(%ebp),%eax
 805084e:	8b 4d d8             	mov    -0x28(%ebp),%ecx
 8050851:	f7 d0                	not    %eax
 8050853:	01 c8                	add    %ecx,%eax
 8050855:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
 8050858:	c1 e8 02             	shr    $0x2,%eax
 805085b:	8d 44 81 04          	lea    0x4(%ecx,%eax,4),%eax
 805085f:	85 ff                	test   %edi,%edi
 8050861:	75 23                	jne    8050886 <__mdiff+0x126>
 8050863:	8b 4d dc             	mov    -0x24(%ebp),%ecx
 8050866:	8d 14 8d 00 00 00 00 	lea    0x0(,%ecx,4),%edx
 805086d:	29 d0                	sub    %edx,%eax
 805086f:	89 ca                	mov    %ecx,%edx
 8050871:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 8050878:	83 ea 01             	sub    $0x1,%edx
 805087b:	8b 4c 90 fc          	mov    -0x4(%eax,%edx,4),%ecx
 805087f:	85 c9                	test   %ecx,%ecx
 8050881:	74 f5                	je     8050878 <__mdiff+0x118>
 8050883:	89 55 dc             	mov    %edx,-0x24(%ebp)
 8050886:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 8050889:	8b 4d dc             	mov    -0x24(%ebp),%ecx
 805088c:	89 48 10             	mov    %ecx,0x10(%eax)
 805088f:	83 c4 2c             	add    $0x2c,%esp
 8050892:	5b                   	pop    %ebx
 8050893:	5e                   	pop    %esi
 8050894:	5f                   	pop    %edi
 8050895:	5d                   	pop    %ebp
 8050896:	c3                   	ret    
 8050897:	90                   	nop
 8050898:	89 f0                	mov    %esi,%eax
 805089a:	bf 01 00 00 00       	mov    $0x1,%edi
 805089f:	89 de                	mov    %ebx,%esi
 80508a1:	89 c3                	mov    %eax,%ebx
 80508a3:	e9 e3 fe ff ff       	jmp    805078b <__mdiff+0x2b>
 80508a8:	8b 45 08             	mov    0x8(%ebp),%eax
 80508ab:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 80508b2:	00 
 80508b3:	89 04 24             	mov    %eax,(%esp)
 80508b6:	e8 95 f6 ff ff       	call   804ff50 <_Balloc>
 80508bb:	c7 40 10 01 00 00 00 	movl   $0x1,0x10(%eax)
 80508c2:	c7 40 14 00 00 00 00 	movl   $0x0,0x14(%eax)
 80508c9:	83 c4 2c             	add    $0x2c,%esp
 80508cc:	5b                   	pop    %ebx
 80508cd:	5e                   	pop    %esi
 80508ce:	5f                   	pop    %edi
 80508cf:	5d                   	pop    %ebp
 80508d0:	c3                   	ret    
 80508d1:	eb 0d                	jmp    80508e0 <__ulp>
 80508d3:	90                   	nop
 80508d4:	90                   	nop
 80508d5:	90                   	nop
 80508d6:	90                   	nop
 80508d7:	90                   	nop
 80508d8:	90                   	nop
 80508d9:	90                   	nop
 80508da:	90                   	nop
 80508db:	90                   	nop
 80508dc:	90                   	nop
 80508dd:	90                   	nop
 80508de:	90                   	nop
 80508df:	90                   	nop

080508e0 <__ulp>:
 80508e0:	55                   	push   %ebp
 80508e1:	89 e5                	mov    %esp,%ebp
 80508e3:	83 ec 08             	sub    $0x8,%esp
 80508e6:	dd 45 08             	fldl   0x8(%ebp)
 80508e9:	dd 5d f8             	fstpl  -0x8(%ebp)
 80508ec:	8b 4d fc             	mov    -0x4(%ebp),%ecx
 80508ef:	81 e1 00 00 f0 7f    	and    $0x7ff00000,%ecx
 80508f5:	81 e9 00 00 40 03    	sub    $0x3400000,%ecx
 80508fb:	85 c9                	test   %ecx,%ecx
 80508fd:	7e 11                	jle    8050910 <__ulp+0x30>
 80508ff:	89 4d fc             	mov    %ecx,-0x4(%ebp)
 8050902:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
 8050909:	dd 45 f8             	fldl   -0x8(%ebp)
 805090c:	c9                   	leave  
 805090d:	c3                   	ret    
 805090e:	66 90                	xchg   %ax,%ax
 8050910:	f7 d9                	neg    %ecx
 8050912:	c1 f9 14             	sar    $0x14,%ecx
 8050915:	83 f9 13             	cmp    $0x13,%ecx
 8050918:	7e 26                	jle    8050940 <__ulp+0x60>
 805091a:	83 f9 32             	cmp    $0x32,%ecx
 805091d:	b8 01 00 00 00       	mov    $0x1,%eax
 8050922:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
 8050929:	7f 0b                	jg     8050936 <__ulp+0x56>
 805092b:	ba 33 00 00 00       	mov    $0x33,%edx
 8050930:	29 ca                	sub    %ecx,%edx
 8050932:	89 d1                	mov    %edx,%ecx
 8050934:	d3 e0                	shl    %cl,%eax
 8050936:	89 45 f8             	mov    %eax,-0x8(%ebp)
 8050939:	dd 45 f8             	fldl   -0x8(%ebp)
 805093c:	c9                   	leave  
 805093d:	c3                   	ret    
 805093e:	66 90                	xchg   %ax,%ax
 8050940:	b8 00 00 08 00       	mov    $0x80000,%eax
 8050945:	d3 f8                	sar    %cl,%eax
 8050947:	89 45 fc             	mov    %eax,-0x4(%ebp)
 805094a:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
 8050951:	dd 45 f8             	fldl   -0x8(%ebp)
 8050954:	c9                   	leave  
 8050955:	c3                   	ret    
 8050956:	8d 76 00             	lea    0x0(%esi),%esi
 8050959:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

08050960 <__b2d>:
 8050960:	55                   	push   %ebp
 8050961:	89 e5                	mov    %esp,%ebp
 8050963:	57                   	push   %edi
 8050964:	56                   	push   %esi
 8050965:	53                   	push   %ebx
 8050966:	83 ec 18             	sub    $0x18,%esp
 8050969:	8b 45 08             	mov    0x8(%ebp),%eax
 805096c:	8d 78 14             	lea    0x14(%eax),%edi
 805096f:	8b 40 10             	mov    0x10(%eax),%eax
 8050972:	8d 1c 87             	lea    (%edi,%eax,4),%ebx
 8050975:	8b 73 fc             	mov    -0x4(%ebx),%esi
 8050978:	8d 43 fc             	lea    -0x4(%ebx),%eax
 805097b:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 805097e:	89 34 24             	mov    %esi,(%esp)
 8050981:	e8 6a f8 ff ff       	call   80501f0 <__hi0bits>
 8050986:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 8050989:	ba 20 00 00 00       	mov    $0x20,%edx
 805098e:	29 c2                	sub    %eax,%edx
 8050990:	83 f8 0a             	cmp    $0xa,%eax
 8050993:	89 11                	mov    %edx,(%ecx)
 8050995:	7f 41                	jg     80509d8 <__b2d+0x78>
 8050997:	b9 0b 00 00 00       	mov    $0xb,%ecx
 805099c:	89 f2                	mov    %esi,%edx
 805099e:	29 c1                	sub    %eax,%ecx
 80509a0:	d3 ea                	shr    %cl,%edx
 80509a2:	81 ca 00 00 f0 3f    	or     $0x3ff00000,%edx
 80509a8:	89 55 ec             	mov    %edx,-0x14(%ebp)
 80509ab:	31 d2                	xor    %edx,%edx
 80509ad:	3b 7d e4             	cmp    -0x1c(%ebp),%edi
 80509b0:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
 80509b7:	73 05                	jae    80509be <__b2d+0x5e>
 80509b9:	8b 53 f8             	mov    -0x8(%ebx),%edx
 80509bc:	d3 ea                	shr    %cl,%edx
 80509be:	8d 48 15             	lea    0x15(%eax),%ecx
 80509c1:	d3 e6                	shl    %cl,%esi
 80509c3:	09 f2                	or     %esi,%edx
 80509c5:	89 55 e8             	mov    %edx,-0x18(%ebp)
 80509c8:	dd 45 e8             	fldl   -0x18(%ebp)
 80509cb:	83 c4 18             	add    $0x18,%esp
 80509ce:	5b                   	pop    %ebx
 80509cf:	5e                   	pop    %esi
 80509d0:	5f                   	pop    %edi
 80509d1:	5d                   	pop    %ebp
 80509d2:	c3                   	ret    
 80509d3:	90                   	nop
 80509d4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 80509d8:	31 d2                	xor    %edx,%edx
 80509da:	3b 7d e4             	cmp    -0x1c(%ebp),%edi
 80509dd:	73 09                	jae    80509e8 <__b2d+0x88>
 80509df:	8b 53 f8             	mov    -0x8(%ebx),%edx
 80509e2:	8d 4b f8             	lea    -0x8(%ebx),%ecx
 80509e5:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
 80509e8:	89 c3                	mov    %eax,%ebx
 80509ea:	83 eb 0b             	sub    $0xb,%ebx
 80509ed:	89 5d e0             	mov    %ebx,-0x20(%ebp)
 80509f0:	74 4e                	je     8050a40 <__b2d+0xe0>
 80509f2:	0f b6 4d e0          	movzbl -0x20(%ebp),%ecx
 80509f6:	bb 2b 00 00 00       	mov    $0x2b,%ebx
 80509fb:	29 c3                	sub    %eax,%ebx
 80509fd:	89 d0                	mov    %edx,%eax
 80509ff:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
 8050a06:	d3 e6                	shl    %cl,%esi
 8050a08:	89 d9                	mov    %ebx,%ecx
 8050a0a:	d3 e8                	shr    %cl,%eax
 8050a0c:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
 8050a0f:	81 ce 00 00 f0 3f    	or     $0x3ff00000,%esi
 8050a15:	09 c6                	or     %eax,%esi
 8050a17:	31 c0                	xor    %eax,%eax
 8050a19:	89 75 ec             	mov    %esi,-0x14(%ebp)
 8050a1c:	39 f9                	cmp    %edi,%ecx
 8050a1e:	76 07                	jbe    8050a27 <__b2d+0xc7>
 8050a20:	8b 41 fc             	mov    -0x4(%ecx),%eax
 8050a23:	89 d9                	mov    %ebx,%ecx
 8050a25:	d3 e8                	shr    %cl,%eax
 8050a27:	0f b6 4d e0          	movzbl -0x20(%ebp),%ecx
 8050a2b:	d3 e2                	shl    %cl,%edx
 8050a2d:	09 d0                	or     %edx,%eax
 8050a2f:	89 45 e8             	mov    %eax,-0x18(%ebp)
 8050a32:	dd 45 e8             	fldl   -0x18(%ebp)
 8050a35:	83 c4 18             	add    $0x18,%esp
 8050a38:	5b                   	pop    %ebx
 8050a39:	5e                   	pop    %esi
 8050a3a:	5f                   	pop    %edi
 8050a3b:	5d                   	pop    %ebp
 8050a3c:	c3                   	ret    
 8050a3d:	8d 76 00             	lea    0x0(%esi),%esi
 8050a40:	81 ce 00 00 f0 3f    	or     $0x3ff00000,%esi
 8050a46:	89 75 ec             	mov    %esi,-0x14(%ebp)
 8050a49:	89 55 e8             	mov    %edx,-0x18(%ebp)
 8050a4c:	dd 45 e8             	fldl   -0x18(%ebp)
 8050a4f:	83 c4 18             	add    $0x18,%esp
 8050a52:	5b                   	pop    %ebx
 8050a53:	5e                   	pop    %esi
 8050a54:	5f                   	pop    %edi
 8050a55:	5d                   	pop    %ebp
 8050a56:	c3                   	ret    
 8050a57:	89 f6                	mov    %esi,%esi
 8050a59:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

08050a60 <__d2b>:
 8050a60:	55                   	push   %ebp
 8050a61:	89 e5                	mov    %esp,%ebp
 8050a63:	57                   	push   %edi
 8050a64:	56                   	push   %esi
 8050a65:	53                   	push   %ebx
 8050a66:	83 ec 2c             	sub    $0x2c,%esp
 8050a69:	8b 45 08             	mov    0x8(%ebp),%eax
 8050a6c:	dd 45 0c             	fldl   0xc(%ebp)
 8050a6f:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
 8050a76:	00 
 8050a77:	dd 5d d0             	fstpl  -0x30(%ebp)
 8050a7a:	89 04 24             	mov    %eax,(%esp)
 8050a7d:	e8 ce f4 ff ff       	call   804ff50 <_Balloc>
 8050a82:	8b 5d d4             	mov    -0x2c(%ebp),%ebx
 8050a85:	89 c6                	mov    %eax,%esi
 8050a87:	89 d8                	mov    %ebx,%eax
 8050a89:	81 e3 ff ff ff 7f    	and    $0x7fffffff,%ebx
 8050a8f:	25 ff ff 0f 00       	and    $0xfffff,%eax
 8050a94:	c1 eb 14             	shr    $0x14,%ebx
 8050a97:	85 db                	test   %ebx,%ebx
 8050a99:	74 05                	je     8050aa0 <__d2b+0x40>
 8050a9b:	0d 00 00 10 00       	or     $0x100000,%eax
 8050aa0:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 8050aa3:	8b 45 d0             	mov    -0x30(%ebp),%eax
 8050aa6:	85 c0                	test   %eax,%eax
 8050aa8:	74 56                	je     8050b00 <__d2b+0xa0>
 8050aaa:	89 45 e0             	mov    %eax,-0x20(%ebp)
 8050aad:	8d 45 e0             	lea    -0x20(%ebp),%eax
 8050ab0:	89 04 24             	mov    %eax,(%esp)
 8050ab3:	e8 98 f7 ff ff       	call   8050250 <__lo0bits>
 8050ab8:	85 c0                	test   %eax,%eax
 8050aba:	0f 85 90 00 00 00    	jne    8050b50 <__d2b+0xf0>
 8050ac0:	8b 55 e0             	mov    -0x20(%ebp),%edx
 8050ac3:	89 56 14             	mov    %edx,0x14(%esi)
 8050ac6:	8b 55 e4             	mov    -0x1c(%ebp),%edx
 8050ac9:	83 fa 01             	cmp    $0x1,%edx
 8050acc:	19 ff                	sbb    %edi,%edi
 8050ace:	83 c7 02             	add    $0x2,%edi
 8050ad1:	85 db                	test   %ebx,%ebx
 8050ad3:	89 56 18             	mov    %edx,0x18(%esi)
 8050ad6:	89 7e 10             	mov    %edi,0x10(%esi)
 8050ad9:	74 49                	je     8050b24 <__d2b+0xc4>
 8050adb:	8b 4d 14             	mov    0x14(%ebp),%ecx
 8050ade:	8d 94 18 cd fb ff ff 	lea    -0x433(%eax,%ebx,1),%edx
 8050ae5:	89 11                	mov    %edx,(%ecx)
 8050ae7:	ba 35 00 00 00       	mov    $0x35,%edx
 8050aec:	29 c2                	sub    %eax,%edx
 8050aee:	8b 45 18             	mov    0x18(%ebp),%eax
 8050af1:	89 10                	mov    %edx,(%eax)
 8050af3:	83 c4 2c             	add    $0x2c,%esp
 8050af6:	89 f0                	mov    %esi,%eax
 8050af8:	5b                   	pop    %ebx
 8050af9:	5e                   	pop    %esi
 8050afa:	5f                   	pop    %edi
 8050afb:	5d                   	pop    %ebp
 8050afc:	c3                   	ret    
 8050afd:	8d 76 00             	lea    0x0(%esi),%esi
 8050b00:	8d 45 e4             	lea    -0x1c(%ebp),%eax
 8050b03:	bf 01 00 00 00       	mov    $0x1,%edi
 8050b08:	89 04 24             	mov    %eax,(%esp)
 8050b0b:	e8 40 f7 ff ff       	call   8050250 <__lo0bits>
 8050b10:	8b 55 e4             	mov    -0x1c(%ebp),%edx
 8050b13:	c7 46 10 01 00 00 00 	movl   $0x1,0x10(%esi)
 8050b1a:	89 56 14             	mov    %edx,0x14(%esi)
 8050b1d:	83 c0 20             	add    $0x20,%eax
 8050b20:	85 db                	test   %ebx,%ebx
 8050b22:	75 b7                	jne    8050adb <__d2b+0x7b>
 8050b24:	8b 4d 14             	mov    0x14(%ebp),%ecx
 8050b27:	2d 32 04 00 00       	sub    $0x432,%eax
 8050b2c:	89 01                	mov    %eax,(%ecx)
 8050b2e:	8b 44 be 10          	mov    0x10(%esi,%edi,4),%eax
 8050b32:	c1 e7 05             	shl    $0x5,%edi
 8050b35:	89 04 24             	mov    %eax,(%esp)
 8050b38:	e8 b3 f6 ff ff       	call   80501f0 <__hi0bits>
 8050b3d:	29 c7                	sub    %eax,%edi
 8050b3f:	8b 45 18             	mov    0x18(%ebp),%eax
 8050b42:	89 38                	mov    %edi,(%eax)
 8050b44:	83 c4 2c             	add    $0x2c,%esp
 8050b47:	89 f0                	mov    %esi,%eax
 8050b49:	5b                   	pop    %ebx
 8050b4a:	5e                   	pop    %esi
 8050b4b:	5f                   	pop    %edi
 8050b4c:	5d                   	pop    %ebp
 8050b4d:	c3                   	ret    
 8050b4e:	66 90                	xchg   %ax,%ax
 8050b50:	8b 55 e4             	mov    -0x1c(%ebp),%edx
 8050b53:	b9 20 00 00 00       	mov    $0x20,%ecx
 8050b58:	29 c1                	sub    %eax,%ecx
 8050b5a:	89 d7                	mov    %edx,%edi
 8050b5c:	d3 e7                	shl    %cl,%edi
 8050b5e:	8b 4d e0             	mov    -0x20(%ebp),%ecx
 8050b61:	09 f9                	or     %edi,%ecx
 8050b63:	89 4e 14             	mov    %ecx,0x14(%esi)
 8050b66:	89 c1                	mov    %eax,%ecx
 8050b68:	d3 ea                	shr    %cl,%edx
 8050b6a:	89 55 e4             	mov    %edx,-0x1c(%ebp)
 8050b6d:	e9 57 ff ff ff       	jmp    8050ac9 <__d2b+0x69>
 8050b72:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 8050b79:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

08050b80 <__ratio>:
 8050b80:	55                   	push   %ebp
 8050b81:	89 e5                	mov    %esp,%ebp
 8050b83:	56                   	push   %esi
 8050b84:	53                   	push   %ebx
 8050b85:	83 ec 30             	sub    $0x30,%esp
 8050b88:	8b 75 08             	mov    0x8(%ebp),%esi
 8050b8b:	8d 45 f0             	lea    -0x10(%ebp),%eax
 8050b8e:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 8050b91:	89 44 24 04          	mov    %eax,0x4(%esp)
 8050b95:	89 34 24             	mov    %esi,(%esp)
 8050b98:	e8 c3 fd ff ff       	call   8050960 <__b2d>
 8050b9d:	8d 45 f4             	lea    -0xc(%ebp),%eax
 8050ba0:	89 44 24 04          	mov    %eax,0x4(%esp)
 8050ba4:	89 1c 24             	mov    %ebx,(%esp)
 8050ba7:	dd 55 e0             	fstl   -0x20(%ebp)
 8050baa:	dd 5d d8             	fstpl  -0x28(%ebp)
 8050bad:	e8 ae fd ff ff       	call   8050960 <__b2d>
 8050bb2:	8b 46 10             	mov    0x10(%esi),%eax
 8050bb5:	2b 43 10             	sub    0x10(%ebx),%eax
 8050bb8:	8b 55 f0             	mov    -0x10(%ebp),%edx
 8050bbb:	2b 55 f4             	sub    -0xc(%ebp),%edx
 8050bbe:	c1 e0 05             	shl    $0x5,%eax
 8050bc1:	01 d0                	add    %edx,%eax
 8050bc3:	dd 55 d0             	fstl   -0x30(%ebp)
 8050bc6:	85 c0                	test   %eax,%eax
 8050bc8:	dd 45 d8             	fldl   -0x28(%ebp)
 8050bcb:	7e 1b                	jle    8050be8 <__ratio+0x68>
 8050bcd:	dd d8                	fstp   %st(0)
 8050bcf:	c1 e0 14             	shl    $0x14,%eax
 8050bd2:	01 45 e4             	add    %eax,-0x1c(%ebp)
 8050bd5:	dd 45 e0             	fldl   -0x20(%ebp)
 8050bd8:	83 c4 30             	add    $0x30,%esp
 8050bdb:	5b                   	pop    %ebx
 8050bdc:	de f1                	fdivp  %st,%st(1)
 8050bde:	5e                   	pop    %esi
 8050bdf:	5d                   	pop    %ebp
 8050be0:	c3                   	ret    
 8050be1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 8050be8:	dd d9                	fstp   %st(1)
 8050bea:	c1 e0 14             	shl    $0x14,%eax
 8050bed:	29 45 d4             	sub    %eax,-0x2c(%ebp)
 8050bf0:	dd 45 d0             	fldl   -0x30(%ebp)
 8050bf3:	83 c4 30             	add    $0x30,%esp
 8050bf6:	5b                   	pop    %ebx
 8050bf7:	de f9                	fdivrp %st,%st(1)
 8050bf9:	5e                   	pop    %esi
 8050bfa:	5d                   	pop    %ebp
 8050bfb:	c3                   	ret    
 8050bfc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

08050c00 <_mprec_log10>:
 8050c00:	55                   	push   %ebp
 8050c01:	89 e5                	mov    %esp,%ebp
 8050c03:	8b 45 08             	mov    0x8(%ebp),%eax
 8050c06:	83 f8 17             	cmp    $0x17,%eax
 8050c09:	7e 1d                	jle    8050c28 <_mprec_log10+0x28>
 8050c0b:	d9 e8                	fld1   
 8050c0d:	d9 05 68 4c 05 08    	flds   0x8054c68
 8050c13:	90                   	nop
 8050c14:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8050c18:	83 e8 01             	sub    $0x1,%eax
 8050c1b:	dc c9                	fmul   %st,%st(1)
 8050c1d:	75 f9                	jne    8050c18 <_mprec_log10+0x18>
 8050c1f:	dd d8                	fstp   %st(0)
 8050c21:	5d                   	pop    %ebp
 8050c22:	c3                   	ret    
 8050c23:	90                   	nop
 8050c24:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8050c28:	dd 04 c5 40 4d 05 08 	fldl   0x8054d40(,%eax,8)
 8050c2f:	5d                   	pop    %ebp
 8050c30:	c3                   	ret    
 8050c31:	eb 0d                	jmp    8050c40 <__copybits>
 8050c33:	90                   	nop
 8050c34:	90                   	nop
 8050c35:	90                   	nop
 8050c36:	90                   	nop
 8050c37:	90                   	nop
 8050c38:	90                   	nop
 8050c39:	90                   	nop
 8050c3a:	90                   	nop
 8050c3b:	90                   	nop
 8050c3c:	90                   	nop
 8050c3d:	90                   	nop
 8050c3e:	90                   	nop
 8050c3f:	90                   	nop

08050c40 <__copybits>:
 8050c40:	55                   	push   %ebp
 8050c41:	89 e5                	mov    %esp,%ebp
 8050c43:	57                   	push   %edi
 8050c44:	8b 7d 10             	mov    0x10(%ebp),%edi
 8050c47:	56                   	push   %esi
 8050c48:	8b 75 0c             	mov    0xc(%ebp),%esi
 8050c4b:	8b 45 08             	mov    0x8(%ebp),%eax
 8050c4e:	53                   	push   %ebx
 8050c4f:	8b 4f 10             	mov    0x10(%edi),%ecx
 8050c52:	8d 56 ff             	lea    -0x1(%esi),%edx
 8050c55:	c1 fa 05             	sar    $0x5,%edx
 8050c58:	8d 74 90 04          	lea    0x4(%eax,%edx,4),%esi
 8050c5c:	8d 57 14             	lea    0x14(%edi),%edx
 8050c5f:	8d 1c 8a             	lea    (%edx,%ecx,4),%ebx
 8050c62:	39 da                	cmp    %ebx,%edx
 8050c64:	73 34                	jae    8050c9a <__copybits+0x5a>
 8050c66:	89 c1                	mov    %eax,%ecx
 8050c68:	83 c2 04             	add    $0x4,%edx
 8050c6b:	8b 42 fc             	mov    -0x4(%edx),%eax
 8050c6e:	83 c1 04             	add    $0x4,%ecx
 8050c71:	39 d3                	cmp    %edx,%ebx
 8050c73:	89 41 fc             	mov    %eax,-0x4(%ecx)
 8050c76:	77 f0                	ja     8050c68 <__copybits+0x28>
 8050c78:	8b 45 08             	mov    0x8(%ebp),%eax
 8050c7b:	29 fb                	sub    %edi,%ebx
 8050c7d:	8d 53 eb             	lea    -0x15(%ebx),%edx
 8050c80:	c1 ea 02             	shr    $0x2,%edx
 8050c83:	8d 44 90 04          	lea    0x4(%eax,%edx,4),%eax
 8050c87:	39 c6                	cmp    %eax,%esi
 8050c89:	76 13                	jbe    8050c9e <__copybits+0x5e>
 8050c8b:	90                   	nop
 8050c8c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8050c90:	83 c0 04             	add    $0x4,%eax
 8050c93:	c7 40 fc 00 00 00 00 	movl   $0x0,-0x4(%eax)
 8050c9a:	39 c6                	cmp    %eax,%esi
 8050c9c:	77 f2                	ja     8050c90 <__copybits+0x50>
 8050c9e:	5b                   	pop    %ebx
 8050c9f:	5e                   	pop    %esi
 8050ca0:	5f                   	pop    %edi
 8050ca1:	5d                   	pop    %ebp
 8050ca2:	c3                   	ret    
 8050ca3:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 8050ca9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

08050cb0 <__any_on>:
 8050cb0:	55                   	push   %ebp
 8050cb1:	89 e5                	mov    %esp,%ebp
 8050cb3:	8b 45 08             	mov    0x8(%ebp),%eax
 8050cb6:	57                   	push   %edi
 8050cb7:	56                   	push   %esi
 8050cb8:	53                   	push   %ebx
 8050cb9:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 8050cbc:	8d 50 14             	lea    0x14(%eax),%edx
 8050cbf:	8b 40 10             	mov    0x10(%eax),%eax
 8050cc2:	c1 fb 05             	sar    $0x5,%ebx
 8050cc5:	39 d8                	cmp    %ebx,%eax
 8050cc7:	7d 2f                	jge    8050cf8 <__any_on+0x48>
 8050cc9:	8d 1c 82             	lea    (%edx,%eax,4),%ebx
 8050ccc:	39 da                	cmp    %ebx,%edx
 8050cce:	73 1d                	jae    8050ced <__any_on+0x3d>
 8050cd0:	8d 43 fc             	lea    -0x4(%ebx),%eax
 8050cd3:	8b 5b fc             	mov    -0x4(%ebx),%ebx
 8050cd6:	85 db                	test   %ebx,%ebx
 8050cd8:	74 0f                	je     8050ce9 <__any_on+0x39>
 8050cda:	eb 44                	jmp    8050d20 <__any_on+0x70>
 8050cdc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8050ce0:	83 e8 04             	sub    $0x4,%eax
 8050ce3:	8b 08                	mov    (%eax),%ecx
 8050ce5:	85 c9                	test   %ecx,%ecx
 8050ce7:	75 37                	jne    8050d20 <__any_on+0x70>
 8050ce9:	39 c2                	cmp    %eax,%edx
 8050ceb:	72 f3                	jb     8050ce0 <__any_on+0x30>
 8050ced:	31 c0                	xor    %eax,%eax
 8050cef:	5b                   	pop    %ebx
 8050cf0:	5e                   	pop    %esi
 8050cf1:	5f                   	pop    %edi
 8050cf2:	5d                   	pop    %ebp
 8050cf3:	c3                   	ret    
 8050cf4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8050cf8:	7e 1e                	jle    8050d18 <__any_on+0x68>
 8050cfa:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 8050cfd:	8d 1c 9a             	lea    (%edx,%ebx,4),%ebx
 8050d00:	83 e1 1f             	and    $0x1f,%ecx
 8050d03:	74 c7                	je     8050ccc <__any_on+0x1c>
 8050d05:	8b 3b                	mov    (%ebx),%edi
 8050d07:	b8 01 00 00 00       	mov    $0x1,%eax
 8050d0c:	89 fe                	mov    %edi,%esi
 8050d0e:	d3 ee                	shr    %cl,%esi
 8050d10:	d3 e6                	shl    %cl,%esi
 8050d12:	39 fe                	cmp    %edi,%esi
 8050d14:	75 d9                	jne    8050cef <__any_on+0x3f>
 8050d16:	eb b4                	jmp    8050ccc <__any_on+0x1c>
 8050d18:	8d 1c 9a             	lea    (%edx,%ebx,4),%ebx
 8050d1b:	eb af                	jmp    8050ccc <__any_on+0x1c>
 8050d1d:	8d 76 00             	lea    0x0(%esi),%esi
 8050d20:	5b                   	pop    %ebx
 8050d21:	b8 01 00 00 00       	mov    $0x1,%eax
 8050d26:	5e                   	pop    %esi
 8050d27:	5f                   	pop    %edi
 8050d28:	5d                   	pop    %ebp
 8050d29:	c3                   	ret    
 8050d2a:	66 90                	xchg   %ax,%ax
 8050d2c:	66 90                	xchg   %ax,%ax
 8050d2e:	66 90                	xchg   %ax,%ax

08050d30 <_sbrk_r>:
 8050d30:	55                   	push   %ebp
 8050d31:	89 e5                	mov    %esp,%ebp
 8050d33:	83 ec 18             	sub    $0x18,%esp
 8050d36:	8b 45 0c             	mov    0xc(%ebp),%eax
 8050d39:	c7 05 74 d6 06 08 00 	movl   $0x0,0x806d674
 8050d40:	00 00 00 
 8050d43:	89 04 24             	mov    %eax,(%esp)
 8050d46:	e8 b5 74 ff ff       	call   8048200 <sbrk>
 8050d4b:	83 f8 ff             	cmp    $0xffffffff,%eax
 8050d4e:	74 08                	je     8050d58 <_sbrk_r+0x28>
 8050d50:	c9                   	leave  
 8050d51:	c3                   	ret    
 8050d52:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 8050d58:	8b 15 74 d6 06 08    	mov    0x806d674,%edx
 8050d5e:	85 d2                	test   %edx,%edx
 8050d60:	74 ee                	je     8050d50 <_sbrk_r+0x20>
 8050d62:	8b 4d 08             	mov    0x8(%ebp),%ecx
 8050d65:	89 11                	mov    %edx,(%ecx)
 8050d67:	c9                   	leave  
 8050d68:	c3                   	ret    
 8050d69:	66 90                	xchg   %ax,%ax
 8050d6b:	66 90                	xchg   %ax,%ax
 8050d6d:	66 90                	xchg   %ax,%ax
 8050d6f:	90                   	nop

08050d70 <__fpclassifyd>:
 8050d70:	55                   	push   %ebp
 8050d71:	b8 02 00 00 00       	mov    $0x2,%eax
 8050d76:	89 e5                	mov    %esp,%ebp
 8050d78:	53                   	push   %ebx
 8050d79:	83 ec 0c             	sub    $0xc,%esp
 8050d7c:	dd 45 08             	fldl   0x8(%ebp)
 8050d7f:	dd 5d f0             	fstpl  -0x10(%ebp)
 8050d82:	8b 55 f0             	mov    -0x10(%ebp),%edx
 8050d85:	8b 4d f4             	mov    -0xc(%ebp),%ecx
 8050d88:	89 d3                	mov    %edx,%ebx
 8050d8a:	09 cb                	or     %ecx,%ebx
 8050d8c:	75 0a                	jne    8050d98 <__fpclassifyd+0x28>
 8050d8e:	83 c4 0c             	add    $0xc,%esp
 8050d91:	5b                   	pop    %ebx
 8050d92:	5d                   	pop    %ebp
 8050d93:	c3                   	ret    
 8050d94:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8050d98:	85 d2                	test   %edx,%edx
 8050d9a:	0f 94 c2             	sete   %dl
 8050d9d:	75 08                	jne    8050da7 <__fpclassifyd+0x37>
 8050d9f:	81 f9 00 00 00 80    	cmp    $0x80000000,%ecx
 8050da5:	74 e7                	je     8050d8e <__fpclassifyd+0x1e>
 8050da7:	81 e1 ff ff ff 7f    	and    $0x7fffffff,%ecx
 8050dad:	b8 04 00 00 00       	mov    $0x4,%eax
 8050db2:	8d 99 00 00 f0 ff    	lea    -0x100000(%ecx),%ebx
 8050db8:	81 fb ff ff df 7f    	cmp    $0x7fdfffff,%ebx
 8050dbe:	76 ce                	jbe    8050d8e <__fpclassifyd+0x1e>
 8050dc0:	81 f9 ff ff 0f 00    	cmp    $0xfffff,%ecx
 8050dc6:	b0 03                	mov    $0x3,%al
 8050dc8:	76 c4                	jbe    8050d8e <__fpclassifyd+0x1e>
 8050dca:	31 c0                	xor    %eax,%eax
 8050dcc:	81 f9 00 00 f0 7f    	cmp    $0x7ff00000,%ecx
 8050dd2:	0f 94 c0             	sete   %al
 8050dd5:	21 d0                	and    %edx,%eax
 8050dd7:	eb b5                	jmp    8050d8e <__fpclassifyd+0x1e>
 8050dd9:	66 90                	xchg   %ax,%ax
 8050ddb:	66 90                	xchg   %ax,%ax
 8050ddd:	66 90                	xchg   %ax,%ax
 8050ddf:	90                   	nop

08050de0 <__sread>:
 8050de0:	55                   	push   %ebp
 8050de1:	89 e5                	mov    %esp,%ebp
 8050de3:	53                   	push   %ebx
 8050de4:	83 ec 14             	sub    $0x14,%esp
 8050de7:	8b 45 14             	mov    0x14(%ebp),%eax
 8050dea:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 8050ded:	89 44 24 0c          	mov    %eax,0xc(%esp)
 8050df1:	8b 45 10             	mov    0x10(%ebp),%eax
 8050df4:	89 44 24 08          	mov    %eax,0x8(%esp)
 8050df8:	0f bf 43 0e          	movswl 0xe(%ebx),%eax
 8050dfc:	89 44 24 04          	mov    %eax,0x4(%esp)
 8050e00:	8b 45 08             	mov    0x8(%ebp),%eax
 8050e03:	89 04 24             	mov    %eax,(%esp)
 8050e06:	e8 75 2d 00 00       	call   8053b80 <_read_r>
 8050e0b:	85 c0                	test   %eax,%eax
 8050e0d:	78 09                	js     8050e18 <__sread+0x38>
 8050e0f:	01 43 50             	add    %eax,0x50(%ebx)
 8050e12:	83 c4 14             	add    $0x14,%esp
 8050e15:	5b                   	pop    %ebx
 8050e16:	5d                   	pop    %ebp
 8050e17:	c3                   	ret    
 8050e18:	66 81 63 0c ff ef    	andw   $0xefff,0xc(%ebx)
 8050e1e:	83 c4 14             	add    $0x14,%esp
 8050e21:	5b                   	pop    %ebx
 8050e22:	5d                   	pop    %ebp
 8050e23:	c3                   	ret    
 8050e24:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 8050e2a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

08050e30 <__seofread>:
 8050e30:	55                   	push   %ebp
 8050e31:	31 c0                	xor    %eax,%eax
 8050e33:	89 e5                	mov    %esp,%ebp
 8050e35:	5d                   	pop    %ebp
 8050e36:	c3                   	ret    
 8050e37:	89 f6                	mov    %esi,%esi
 8050e39:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

08050e40 <__swrite>:
 8050e40:	55                   	push   %ebp
 8050e41:	89 e5                	mov    %esp,%ebp
 8050e43:	57                   	push   %edi
 8050e44:	56                   	push   %esi
 8050e45:	53                   	push   %ebx
 8050e46:	83 ec 2c             	sub    $0x2c,%esp
 8050e49:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 8050e4c:	8b 75 08             	mov    0x8(%ebp),%esi
 8050e4f:	8b 7d 10             	mov    0x10(%ebp),%edi
 8050e52:	8b 55 14             	mov    0x14(%ebp),%edx
 8050e55:	0f b7 43 0c          	movzwl 0xc(%ebx),%eax
 8050e59:	f6 c4 01             	test   $0x1,%ah
 8050e5c:	74 2a                	je     8050e88 <__swrite+0x48>
 8050e5e:	c7 44 24 0c 02 00 00 	movl   $0x2,0xc(%esp)
 8050e65:	00 
 8050e66:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 8050e6d:	00 
 8050e6e:	0f bf 43 0e          	movswl 0xe(%ebx),%eax
 8050e72:	89 34 24             	mov    %esi,(%esp)
 8050e75:	89 55 e4             	mov    %edx,-0x1c(%ebp)
 8050e78:	89 44 24 04          	mov    %eax,0x4(%esp)
 8050e7c:	e8 1f 2c 00 00       	call   8053aa0 <_lseek_r>
 8050e81:	0f b7 43 0c          	movzwl 0xc(%ebx),%eax
 8050e85:	8b 55 e4             	mov    -0x1c(%ebp),%edx
 8050e88:	80 e4 ef             	and    $0xef,%ah
 8050e8b:	66 89 43 0c          	mov    %ax,0xc(%ebx)
 8050e8f:	89 7d 10             	mov    %edi,0x10(%ebp)
 8050e92:	89 55 14             	mov    %edx,0x14(%ebp)
 8050e95:	0f bf 43 0e          	movswl 0xe(%ebx),%eax
 8050e99:	89 75 08             	mov    %esi,0x8(%ebp)
 8050e9c:	89 45 0c             	mov    %eax,0xc(%ebp)
 8050e9f:	83 c4 2c             	add    $0x2c,%esp
 8050ea2:	5b                   	pop    %ebx
 8050ea3:	5e                   	pop    %esi
 8050ea4:	5f                   	pop    %edi
 8050ea5:	5d                   	pop    %ebp
 8050ea6:	e9 b5 22 00 00       	jmp    8053160 <_write_r>
 8050eab:	90                   	nop
 8050eac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

08050eb0 <__sseek>:
 8050eb0:	55                   	push   %ebp
 8050eb1:	89 e5                	mov    %esp,%ebp
 8050eb3:	53                   	push   %ebx
 8050eb4:	83 ec 14             	sub    $0x14,%esp
 8050eb7:	8b 45 14             	mov    0x14(%ebp),%eax
 8050eba:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 8050ebd:	89 44 24 0c          	mov    %eax,0xc(%esp)
 8050ec1:	8b 45 10             	mov    0x10(%ebp),%eax
 8050ec4:	89 44 24 08          	mov    %eax,0x8(%esp)
 8050ec8:	0f bf 43 0e          	movswl 0xe(%ebx),%eax
 8050ecc:	89 44 24 04          	mov    %eax,0x4(%esp)
 8050ed0:	8b 45 08             	mov    0x8(%ebp),%eax
 8050ed3:	89 04 24             	mov    %eax,(%esp)
 8050ed6:	e8 c5 2b 00 00       	call   8053aa0 <_lseek_r>
 8050edb:	83 f8 ff             	cmp    $0xffffffff,%eax
 8050ede:	74 10                	je     8050ef0 <__sseek+0x40>
 8050ee0:	66 81 4b 0c 00 10    	orw    $0x1000,0xc(%ebx)
 8050ee6:	89 43 50             	mov    %eax,0x50(%ebx)
 8050ee9:	83 c4 14             	add    $0x14,%esp
 8050eec:	5b                   	pop    %ebx
 8050eed:	5d                   	pop    %ebp
 8050eee:	c3                   	ret    
 8050eef:	90                   	nop
 8050ef0:	66 81 63 0c ff ef    	andw   $0xefff,0xc(%ebx)
 8050ef6:	83 c4 14             	add    $0x14,%esp
 8050ef9:	5b                   	pop    %ebx
 8050efa:	5d                   	pop    %ebp
 8050efb:	c3                   	ret    
 8050efc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

08050f00 <__sclose>:
 8050f00:	55                   	push   %ebp
 8050f01:	89 e5                	mov    %esp,%ebp
 8050f03:	8b 45 0c             	mov    0xc(%ebp),%eax
 8050f06:	0f bf 40 0e          	movswl 0xe(%eax),%eax
 8050f0a:	89 45 0c             	mov    %eax,0xc(%ebp)
 8050f0d:	5d                   	pop    %ebp
 8050f0e:	e9 5d 23 00 00       	jmp    8053270 <_close_r>
 8050f13:	66 90                	xchg   %ax,%ax
 8050f15:	66 90                	xchg   %ax,%ax
 8050f17:	66 90                	xchg   %ax,%ax
 8050f19:	66 90                	xchg   %ax,%ax
 8050f1b:	66 90                	xchg   %ax,%ax
 8050f1d:	66 90                	xchg   %ax,%ax
 8050f1f:	90                   	nop

08050f20 <strcmp>:
 8050f20:	55                   	push   %ebp
 8050f21:	89 e5                	mov    %esp,%ebp
 8050f23:	8b 45 08             	mov    0x8(%ebp),%eax
 8050f26:	8b 55 0c             	mov    0xc(%ebp),%edx
 8050f29:	53                   	push   %ebx
 8050f2a:	89 c1                	mov    %eax,%ecx
 8050f2c:	09 d1                	or     %edx,%ecx
 8050f2e:	83 e1 03             	and    $0x3,%ecx
 8050f31:	75 17                	jne    8050f4a <strcmp+0x2a>
 8050f33:	8b 08                	mov    (%eax),%ecx
 8050f35:	3b 0a                	cmp    (%edx),%ecx
 8050f37:	74 33                	je     8050f6c <strcmp+0x4c>
 8050f39:	eb 0f                	jmp    8050f4a <strcmp+0x2a>
 8050f3b:	90                   	nop
 8050f3c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8050f40:	3a 0a                	cmp    (%edx),%cl
 8050f42:	75 0d                	jne    8050f51 <strcmp+0x31>
 8050f44:	83 c0 01             	add    $0x1,%eax
 8050f47:	83 c2 01             	add    $0x1,%edx
 8050f4a:	0f b6 08             	movzbl (%eax),%ecx
 8050f4d:	84 c9                	test   %cl,%cl
 8050f4f:	75 ef                	jne    8050f40 <strcmp+0x20>
 8050f51:	0f b6 00             	movzbl (%eax),%eax
 8050f54:	0f b6 12             	movzbl (%edx),%edx
 8050f57:	5b                   	pop    %ebx
 8050f58:	5d                   	pop    %ebp
 8050f59:	29 d0                	sub    %edx,%eax
 8050f5b:	c3                   	ret    
 8050f5c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8050f60:	83 c0 04             	add    $0x4,%eax
 8050f63:	83 c2 04             	add    $0x4,%edx
 8050f66:	8b 08                	mov    (%eax),%ecx
 8050f68:	3b 0a                	cmp    (%edx),%ecx
 8050f6a:	75 de                	jne    8050f4a <strcmp+0x2a>
 8050f6c:	8d 99 ff fe fe fe    	lea    -0x1010101(%ecx),%ebx
 8050f72:	f7 d1                	not    %ecx
 8050f74:	21 cb                	and    %ecx,%ebx
 8050f76:	81 e3 80 80 80 80    	and    $0x80808080,%ebx
 8050f7c:	74 e2                	je     8050f60 <strcmp+0x40>
 8050f7e:	31 c0                	xor    %eax,%eax
 8050f80:	5b                   	pop    %ebx
 8050f81:	5d                   	pop    %ebp
 8050f82:	c3                   	ret    
 8050f83:	66 90                	xchg   %ax,%ax
 8050f85:	66 90                	xchg   %ax,%ax
 8050f87:	66 90                	xchg   %ax,%ax
 8050f89:	66 90                	xchg   %ax,%ax
 8050f8b:	66 90                	xchg   %ax,%ax
 8050f8d:	66 90                	xchg   %ax,%ax
 8050f8f:	90                   	nop

08050f90 <__ssprint_r>:
 8050f90:	55                   	push   %ebp
 8050f91:	89 e5                	mov    %esp,%ebp
 8050f93:	57                   	push   %edi
 8050f94:	56                   	push   %esi
 8050f95:	53                   	push   %ebx
 8050f96:	83 ec 2c             	sub    $0x2c,%esp
 8050f99:	8b 45 10             	mov    0x10(%ebp),%eax
 8050f9c:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 8050f9f:	8b 00                	mov    (%eax),%eax
 8050fa1:	89 c7                	mov    %eax,%edi
 8050fa3:	8b 45 10             	mov    0x10(%ebp),%eax
 8050fa6:	8b 40 08             	mov    0x8(%eax),%eax
 8050fa9:	85 c0                	test   %eax,%eax
 8050fab:	0f 84 af 01 00 00    	je     8051160 <__ssprint_r+0x1d0>
 8050fb1:	31 c9                	xor    %ecx,%ecx
 8050fb3:	31 d2                	xor    %edx,%edx
 8050fb5:	8b 03                	mov    (%ebx),%eax
 8050fb7:	89 ce                	mov    %ecx,%esi
 8050fb9:	85 f6                	test   %esi,%esi
 8050fbb:	89 55 e4             	mov    %edx,-0x1c(%ebp)
 8050fbe:	0f 84 ec 00 00 00    	je     80510b0 <__ssprint_r+0x120>
 8050fc4:	8b 53 08             	mov    0x8(%ebx),%edx
 8050fc7:	39 d6                	cmp    %edx,%esi
 8050fc9:	0f 82 fc 00 00 00    	jb     80510cb <__ssprint_r+0x13b>
 8050fcf:	0f b7 4b 0c          	movzwl 0xc(%ebx),%ecx
 8050fd3:	66 f7 c1 80 04       	test   $0x480,%cx
 8050fd8:	0f 84 fa 00 00 00    	je     80510d8 <__ssprint_r+0x148>
 8050fde:	8b 53 10             	mov    0x10(%ebx),%edx
 8050fe1:	29 d0                	sub    %edx,%eax
 8050fe3:	89 45 dc             	mov    %eax,-0x24(%ebp)
 8050fe6:	8b 43 14             	mov    0x14(%ebx),%eax
 8050fe9:	89 55 d8             	mov    %edx,-0x28(%ebp)
 8050fec:	8d 04 40             	lea    (%eax,%eax,2),%eax
 8050fef:	89 c2                	mov    %eax,%edx
 8050ff1:	c1 ea 1f             	shr    $0x1f,%edx
 8050ff4:	01 d0                	add    %edx,%eax
 8050ff6:	89 45 e0             	mov    %eax,-0x20(%ebp)
 8050ff9:	8b 45 dc             	mov    -0x24(%ebp),%eax
 8050ffc:	d1 7d e0             	sarl   -0x20(%ebp)
 8050fff:	8d 44 06 01          	lea    0x1(%esi,%eax,1),%eax
 8051003:	39 45 e0             	cmp    %eax,-0x20(%ebp)
 8051006:	0f 83 34 01 00 00    	jae    8051140 <__ssprint_r+0x1b0>
 805100c:	89 45 e0             	mov    %eax,-0x20(%ebp)
 805100f:	80 e5 04             	and    $0x4,%ch
 8051012:	0f 84 c8 00 00 00    	je     80510e0 <__ssprint_r+0x150>
 8051018:	89 44 24 04          	mov    %eax,0x4(%esp)
 805101c:	8b 45 08             	mov    0x8(%ebp),%eax
 805101f:	89 04 24             	mov    %eax,(%esp)
 8051022:	e8 e9 e6 ff ff       	call   804f710 <_malloc_r>
 8051027:	85 c0                	test   %eax,%eax
 8051029:	89 c2                	mov    %eax,%edx
 805102b:	0f 84 e1 00 00 00    	je     8051112 <__ssprint_r+0x182>
 8051031:	8b 45 dc             	mov    -0x24(%ebp),%eax
 8051034:	89 55 d8             	mov    %edx,-0x28(%ebp)
 8051037:	89 44 24 08          	mov    %eax,0x8(%esp)
 805103b:	8b 43 10             	mov    0x10(%ebx),%eax
 805103e:	89 14 24             	mov    %edx,(%esp)
 8051041:	89 44 24 04          	mov    %eax,0x4(%esp)
 8051045:	e8 9e ee ff ff       	call   804fee8 <memcpy>
 805104a:	0f b7 43 0c          	movzwl 0xc(%ebx),%eax
 805104e:	8b 55 d8             	mov    -0x28(%ebp),%edx
 8051051:	66 25 7f fb          	and    $0xfb7f,%ax
 8051055:	0c 80                	or     $0x80,%al
 8051057:	66 89 43 0c          	mov    %ax,0xc(%ebx)
 805105b:	8b 4d e0             	mov    -0x20(%ebp),%ecx
 805105e:	8b 45 dc             	mov    -0x24(%ebp),%eax
 8051061:	89 53 10             	mov    %edx,0x10(%ebx)
 8051064:	89 4b 14             	mov    %ecx,0x14(%ebx)
 8051067:	2b 4d dc             	sub    -0x24(%ebp),%ecx
 805106a:	01 d0                	add    %edx,%eax
 805106c:	89 03                	mov    %eax,(%ebx)
 805106e:	89 f2                	mov    %esi,%edx
 8051070:	89 4b 08             	mov    %ecx,0x8(%ebx)
 8051073:	89 f1                	mov    %esi,%ecx
 8051075:	89 4c 24 08          	mov    %ecx,0x8(%esp)
 8051079:	89 4d e0             	mov    %ecx,-0x20(%ebp)
 805107c:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
 805107f:	89 04 24             	mov    %eax,(%esp)
 8051082:	89 55 dc             	mov    %edx,-0x24(%ebp)
 8051085:	89 4c 24 04          	mov    %ecx,0x4(%esp)
 8051089:	e8 62 2a 00 00       	call   8053af0 <memmove>
 805108e:	8b 03                	mov    (%ebx),%eax
 8051090:	8b 4d e0             	mov    -0x20(%ebp),%ecx
 8051093:	8b 55 dc             	mov    -0x24(%ebp),%edx
 8051096:	29 53 08             	sub    %edx,0x8(%ebx)
 8051099:	01 c8                	add    %ecx,%eax
 805109b:	8b 4d 10             	mov    0x10(%ebp),%ecx
 805109e:	89 03                	mov    %eax,(%ebx)
 80510a0:	8b 51 08             	mov    0x8(%ecx),%edx
 80510a3:	29 f2                	sub    %esi,%edx
 80510a5:	85 d2                	test   %edx,%edx
 80510a7:	89 51 08             	mov    %edx,0x8(%ecx)
 80510aa:	0f 84 98 00 00 00    	je     8051148 <__ssprint_r+0x1b8>
 80510b0:	8b 77 04             	mov    0x4(%edi),%esi
 80510b3:	83 c7 08             	add    $0x8,%edi
 80510b6:	8b 4f f8             	mov    -0x8(%edi),%ecx
 80510b9:	85 f6                	test   %esi,%esi
 80510bb:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
 80510be:	74 f0                	je     80510b0 <__ssprint_r+0x120>
 80510c0:	8b 53 08             	mov    0x8(%ebx),%edx
 80510c3:	39 d6                	cmp    %edx,%esi
 80510c5:	0f 83 04 ff ff ff    	jae    8050fcf <__ssprint_r+0x3f>
 80510cb:	89 f2                	mov    %esi,%edx
 80510cd:	89 f1                	mov    %esi,%ecx
 80510cf:	eb a4                	jmp    8051075 <__ssprint_r+0xe5>
 80510d1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 80510d8:	89 d1                	mov    %edx,%ecx
 80510da:	eb 99                	jmp    8051075 <__ssprint_r+0xe5>
 80510dc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 80510e0:	89 44 24 08          	mov    %eax,0x8(%esp)
 80510e4:	8b 45 d8             	mov    -0x28(%ebp),%eax
 80510e7:	89 44 24 04          	mov    %eax,0x4(%esp)
 80510eb:	8b 45 08             	mov    0x8(%ebp),%eax
 80510ee:	89 04 24             	mov    %eax,(%esp)
 80510f1:	e8 da 2a 00 00       	call   8053bd0 <_realloc_r>
 80510f6:	85 c0                	test   %eax,%eax
 80510f8:	89 c2                	mov    %eax,%edx
 80510fa:	0f 85 5b ff ff ff    	jne    805105b <__ssprint_r+0xcb>
 8051100:	8b 43 10             	mov    0x10(%ebx),%eax
 8051103:	89 44 24 04          	mov    %eax,0x4(%esp)
 8051107:	8b 45 08             	mov    0x8(%ebp),%eax
 805110a:	89 04 24             	mov    %eax,(%esp)
 805110d:	e8 4e e0 ff ff       	call   804f160 <_free_r>
 8051112:	8b 45 08             	mov    0x8(%ebp),%eax
 8051115:	c7 00 0c 00 00 00    	movl   $0xc,(%eax)
 805111b:	8b 45 10             	mov    0x10(%ebp),%eax
 805111e:	66 83 4b 0c 40       	orw    $0x40,0xc(%ebx)
 8051123:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%eax)
 805112a:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
 8051131:	83 c4 2c             	add    $0x2c,%esp
 8051134:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8051139:	5b                   	pop    %ebx
 805113a:	5e                   	pop    %esi
 805113b:	5f                   	pop    %edi
 805113c:	5d                   	pop    %ebp
 805113d:	c3                   	ret    
 805113e:	66 90                	xchg   %ax,%ax
 8051140:	8b 45 e0             	mov    -0x20(%ebp),%eax
 8051143:	e9 c7 fe ff ff       	jmp    805100f <__ssprint_r+0x7f>
 8051148:	c7 41 04 00 00 00 00 	movl   $0x0,0x4(%ecx)
 805114f:	83 c4 2c             	add    $0x2c,%esp
 8051152:	31 c0                	xor    %eax,%eax
 8051154:	5b                   	pop    %ebx
 8051155:	5e                   	pop    %esi
 8051156:	5f                   	pop    %edi
 8051157:	5d                   	pop    %ebp
 8051158:	c3                   	ret    
 8051159:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 8051160:	8b 45 10             	mov    0x10(%ebp),%eax
 8051163:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
 805116a:	83 c4 2c             	add    $0x2c,%esp
 805116d:	31 c0                	xor    %eax,%eax
 805116f:	5b                   	pop    %ebx
 8051170:	5e                   	pop    %esi
 8051171:	5f                   	pop    %edi
 8051172:	5d                   	pop    %ebp
 8051173:	c3                   	ret    
 8051174:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 805117a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

08051180 <_svfiprintf_r>:
 8051180:	55                   	push   %ebp
 8051181:	89 e5                	mov    %esp,%ebp
 8051183:	57                   	push   %edi
 8051184:	56                   	push   %esi
 8051185:	53                   	push   %ebx
 8051186:	81 ec cc 00 00 00    	sub    $0xcc,%esp
 805118c:	8b 45 0c             	mov    0xc(%ebp),%eax
 805118f:	f6 40 0c 80          	testb  $0x80,0xc(%eax)
 8051193:	74 0b                	je     80511a0 <_svfiprintf_r+0x20>
 8051195:	8b 50 10             	mov    0x10(%eax),%edx
 8051198:	85 d2                	test   %edx,%edx
 805119a:	0f 84 1c 0d 00 00    	je     8051ebc <_svfiprintf_r+0xd3c>
 80511a0:	8d 45 a8             	lea    -0x58(%ebp),%eax
 80511a3:	8d 5d a7             	lea    -0x59(%ebp),%ebx
 80511a6:	89 c6                	mov    %eax,%esi
 80511a8:	89 85 74 ff ff ff    	mov    %eax,-0x8c(%ebp)
 80511ae:	29 d8                	sub    %ebx,%eax
 80511b0:	c7 85 7c ff ff ff 00 	movl   $0x0,-0x84(%ebp)
 80511b7:	00 00 00 
 80511ba:	c7 85 78 ff ff ff 00 	movl   $0x0,-0x88(%ebp)
 80511c1:	00 00 00 
 80511c4:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
 80511cb:	00 00 00 
 80511ce:	c7 85 50 ff ff ff 00 	movl   $0x0,-0xb0(%ebp)
 80511d5:	00 00 00 
 80511d8:	89 85 3c ff ff ff    	mov    %eax,-0xc4(%ebp)
 80511de:	8b 45 10             	mov    0x10(%ebp),%eax
 80511e1:	8b 5d 10             	mov    0x10(%ebp),%ebx
 80511e4:	0f b6 00             	movzbl (%eax),%eax
 80511e7:	84 c0                	test   %al,%al
 80511e9:	74 58                	je     8051243 <_svfiprintf_r+0xc3>
 80511eb:	3c 25                	cmp    $0x25,%al
 80511ed:	75 13                	jne    8051202 <_svfiprintf_r+0x82>
 80511ef:	eb 52                	jmp    8051243 <_svfiprintf_r+0xc3>
 80511f1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 80511f8:	84 c0                	test   %al,%al
 80511fa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 8051200:	74 0a                	je     805120c <_svfiprintf_r+0x8c>
 8051202:	83 c3 01             	add    $0x1,%ebx
 8051205:	0f b6 03             	movzbl (%ebx),%eax
 8051208:	3c 25                	cmp    $0x25,%al
 805120a:	75 ec                	jne    80511f8 <_svfiprintf_r+0x78>
 805120c:	89 df                	mov    %ebx,%edi
 805120e:	2b 7d 10             	sub    0x10(%ebp),%edi
 8051211:	74 30                	je     8051243 <_svfiprintf_r+0xc3>
 8051213:	8b 45 10             	mov    0x10(%ebp),%eax
 8051216:	83 c6 08             	add    $0x8,%esi
 8051219:	89 7e fc             	mov    %edi,-0x4(%esi)
 805121c:	01 bd 7c ff ff ff    	add    %edi,-0x84(%ebp)
 8051222:	89 46 f8             	mov    %eax,-0x8(%esi)
 8051225:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 805122b:	83 c0 01             	add    $0x1,%eax
 805122e:	83 f8 07             	cmp    $0x7,%eax
 8051231:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
 8051237:	0f 8f eb 0a 00 00    	jg     8051d28 <_svfiprintf_r+0xba8>
 805123d:	01 bd 50 ff ff ff    	add    %edi,-0xb0(%ebp)
 8051243:	80 3b 00             	cmpb   $0x0,(%ebx)
 8051246:	0f 84 11 09 00 00    	je     8051b5d <_svfiprintf_r+0x9dd>
 805124c:	8d 43 01             	lea    0x1(%ebx),%eax
 805124f:	31 ff                	xor    %edi,%edi
 8051251:	c6 85 71 ff ff ff 00 	movb   $0x0,-0x8f(%ebp)
 8051258:	c7 85 5c ff ff ff ff 	movl   $0xffffffff,-0xa4(%ebp)
 805125f:	ff ff ff 
 8051262:	c7 85 54 ff ff ff 00 	movl   $0x0,-0xac(%ebp)
 8051269:	00 00 00 
 805126c:	c7 85 64 ff ff ff 00 	movl   $0x0,-0x9c(%ebp)
 8051273:	00 00 00 
 8051276:	8d 50 01             	lea    0x1(%eax),%edx
 8051279:	0f be 00             	movsbl (%eax),%eax
 805127c:	8d 48 e0             	lea    -0x20(%eax),%ecx
 805127f:	83 f9 58             	cmp    $0x58,%ecx
 8051282:	0f 87 63 03 00 00    	ja     80515eb <_svfiprintf_r+0x46b>
 8051288:	ff 24 8d 08 4e 05 08 	jmp    *0x8054e08(,%ecx,4)
 805128f:	90                   	nop
 8051290:	83 8d 64 ff ff ff 10 	orl    $0x10,-0x9c(%ebp)
 8051297:	89 d0                	mov    %edx,%eax
 8051299:	eb db                	jmp    8051276 <_svfiprintf_r+0xf6>
 805129b:	8b 45 14             	mov    0x14(%ebp),%eax
 805129e:	8b 5d 14             	mov    0x14(%ebp),%ebx
 80512a1:	8b 00                	mov    (%eax),%eax
 80512a3:	83 c3 04             	add    $0x4,%ebx
 80512a6:	89 5d 14             	mov    %ebx,0x14(%ebp)
 80512a9:	85 c0                	test   %eax,%eax
 80512ab:	89 85 54 ff ff ff    	mov    %eax,-0xac(%ebp)
 80512b1:	79 e4                	jns    8051297 <_svfiprintf_r+0x117>
 80512b3:	f7 9d 54 ff ff ff    	negl   -0xac(%ebp)
 80512b9:	83 8d 64 ff ff ff 04 	orl    $0x4,-0x9c(%ebp)
 80512c0:	89 d0                	mov    %edx,%eax
 80512c2:	eb b2                	jmp    8051276 <_svfiprintf_r+0xf6>
 80512c4:	bf 2b 00 00 00       	mov    $0x2b,%edi
 80512c9:	89 d0                	mov    %edx,%eax
 80512cb:	eb a9                	jmp    8051276 <_svfiprintf_r+0xf6>
 80512cd:	8b 45 14             	mov    0x14(%ebp),%eax
 80512d0:	83 8d 64 ff ff ff 02 	orl    $0x2,-0x9c(%ebp)
 80512d7:	89 55 10             	mov    %edx,0x10(%ebp)
 80512da:	ba 02 00 00 00       	mov    $0x2,%edx
 80512df:	8b 08                	mov    (%eax),%ecx
 80512e1:	83 c0 04             	add    $0x4,%eax
 80512e4:	c6 85 72 ff ff ff 30 	movb   $0x30,-0x8e(%ebp)
 80512eb:	c6 85 73 ff ff ff 78 	movb   $0x78,-0x8d(%ebp)
 80512f2:	89 45 14             	mov    %eax,0x14(%ebp)
 80512f5:	c7 85 44 ff ff ff 2d 	movl   $0x805492d,-0xbc(%ebp)
 80512fc:	49 05 08 
 80512ff:	90                   	nop
 8051300:	c6 85 71 ff ff ff 00 	movb   $0x0,-0x8f(%ebp)
 8051307:	31 ff                	xor    %edi,%edi
 8051309:	8b 9d 64 ff ff ff    	mov    -0x9c(%ebp),%ebx
 805130f:	89 d8                	mov    %ebx,%eax
 8051311:	24 7f                	and    $0x7f,%al
 8051313:	83 bd 5c ff ff ff 00 	cmpl   $0x0,-0xa4(%ebp)
 805131a:	0f 48 c3             	cmovs  %ebx,%eax
 805131d:	89 85 64 ff ff ff    	mov    %eax,-0x9c(%ebp)
 8051323:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
 8051329:	85 c0                	test   %eax,%eax
 805132b:	75 08                	jne    8051335 <_svfiprintf_r+0x1b5>
 805132d:	85 c9                	test   %ecx,%ecx
 805132f:	0f 84 03 08 00 00    	je     8051b38 <_svfiprintf_r+0x9b8>
 8051335:	80 fa 01             	cmp    $0x1,%dl
 8051338:	0f 84 8a 0a 00 00    	je     8051dc8 <_svfiprintf_r+0xc48>
 805133e:	80 fa 02             	cmp    $0x2,%dl
 8051341:	8d 5d a8             	lea    -0x58(%ebp),%ebx
 8051344:	0f 85 86 01 00 00    	jne    80514d0 <_svfiprintf_r+0x350>
 805134a:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
 8051350:	89 c8                	mov    %ecx,%eax
 8051352:	83 eb 01             	sub    $0x1,%ebx
 8051355:	83 e0 0f             	and    $0xf,%eax
 8051358:	0f b6 04 02          	movzbl (%edx,%eax,1),%eax
 805135c:	c1 e9 04             	shr    $0x4,%ecx
 805135f:	85 c9                	test   %ecx,%ecx
 8051361:	88 03                	mov    %al,(%ebx)
 8051363:	75 eb                	jne    8051350 <_svfiprintf_r+0x1d0>
 8051365:	8d 45 a8             	lea    -0x58(%ebp),%eax
 8051368:	29 d8                	sub    %ebx,%eax
 805136a:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
 8051370:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
 8051376:	8b 8d 58 ff ff ff    	mov    -0xa8(%ebp),%ecx
 805137c:	39 c1                	cmp    %eax,%ecx
 805137e:	0f 4d c1             	cmovge %ecx,%eax
 8051381:	89 85 60 ff ff ff    	mov    %eax,-0xa0(%ebp)
 8051387:	89 f8                	mov    %edi,%eax
 8051389:	3c 01                	cmp    $0x1,%al
 805138b:	83 9d 60 ff ff ff ff 	sbbl   $0xffffffff,-0xa0(%ebp)
 8051392:	8b 95 60 ff ff ff    	mov    -0xa0(%ebp),%edx
 8051398:	8b 8d 64 ff ff ff    	mov    -0x9c(%ebp),%ecx
 805139e:	89 d0                	mov    %edx,%eax
 80513a0:	89 cf                	mov    %ecx,%edi
 80513a2:	83 c0 02             	add    $0x2,%eax
 80513a5:	83 e7 02             	and    $0x2,%edi
 80513a8:	89 bd 4c ff ff ff    	mov    %edi,-0xb4(%ebp)
 80513ae:	89 cf                	mov    %ecx,%edi
 80513b0:	0f 44 c2             	cmove  %edx,%eax
 80513b3:	81 e7 84 00 00 00    	and    $0x84,%edi
 80513b9:	89 85 60 ff ff ff    	mov    %eax,-0xa0(%ebp)
 80513bf:	89 bd 48 ff ff ff    	mov    %edi,-0xb8(%ebp)
 80513c5:	0f 85 cd 04 00 00    	jne    8051898 <_svfiprintf_r+0x718>
 80513cb:	8b bd 54 ff ff ff    	mov    -0xac(%ebp),%edi
 80513d1:	2b bd 60 ff ff ff    	sub    -0xa0(%ebp),%edi
 80513d7:	85 ff                	test   %edi,%edi
 80513d9:	0f 8e b9 04 00 00    	jle    8051898 <_svfiprintf_r+0x718>
 80513df:	83 ff 10             	cmp    $0x10,%edi
 80513e2:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
 80513e8:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 80513ee:	7e 7c                	jle    805146c <_svfiprintf_r+0x2ec>
 80513f0:	89 9d 40 ff ff ff    	mov    %ebx,-0xc0(%ebp)
 80513f6:	89 f1                	mov    %esi,%ecx
 80513f8:	8b 5d 08             	mov    0x8(%ebp),%ebx
 80513fb:	8b 75 0c             	mov    0xc(%ebp),%esi
 80513fe:	eb 08                	jmp    8051408 <_svfiprintf_r+0x288>
 8051400:	83 ef 10             	sub    $0x10,%edi
 8051403:	83 ff 10             	cmp    $0x10,%edi
 8051406:	7e 5c                	jle    8051464 <_svfiprintf_r+0x2e4>
 8051408:	83 c0 01             	add    $0x1,%eax
 805140b:	83 c2 10             	add    $0x10,%edx
 805140e:	c7 01 7c 4f 05 08    	movl   $0x8054f7c,(%ecx)
 8051414:	83 c1 08             	add    $0x8,%ecx
 8051417:	c7 41 fc 10 00 00 00 	movl   $0x10,-0x4(%ecx)
 805141e:	83 f8 07             	cmp    $0x7,%eax
 8051421:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
 8051427:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
 805142d:	7e d1                	jle    8051400 <_svfiprintf_r+0x280>
 805142f:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
 8051435:	89 44 24 08          	mov    %eax,0x8(%esp)
 8051439:	89 74 24 04          	mov    %esi,0x4(%esp)
 805143d:	89 1c 24             	mov    %ebx,(%esp)
 8051440:	e8 4b fb ff ff       	call   8050f90 <__ssprint_r>
 8051445:	85 c0                	test   %eax,%eax
 8051447:	0f 85 3b 07 00 00    	jne    8051b88 <_svfiprintf_r+0xa08>
 805144d:	83 ef 10             	sub    $0x10,%edi
 8051450:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
 8051456:	83 ff 10             	cmp    $0x10,%edi
 8051459:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 805145f:	8d 4d a8             	lea    -0x58(%ebp),%ecx
 8051462:	7f a4                	jg     8051408 <_svfiprintf_r+0x288>
 8051464:	8b 9d 40 ff ff ff    	mov    -0xc0(%ebp),%ebx
 805146a:	89 ce                	mov    %ecx,%esi
 805146c:	83 c0 01             	add    $0x1,%eax
 805146f:	01 fa                	add    %edi,%edx
 8051471:	c7 06 7c 4f 05 08    	movl   $0x8054f7c,(%esi)
 8051477:	83 c6 08             	add    $0x8,%esi
 805147a:	89 7e fc             	mov    %edi,-0x4(%esi)
 805147d:	83 f8 07             	cmp    $0x7,%eax
 8051480:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
 8051486:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
 805148c:	0f 8e 12 04 00 00    	jle    80518a4 <_svfiprintf_r+0x724>
 8051492:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
 8051498:	89 44 24 08          	mov    %eax,0x8(%esp)
 805149c:	8b 45 0c             	mov    0xc(%ebp),%eax
 805149f:	89 44 24 04          	mov    %eax,0x4(%esp)
 80514a3:	8b 45 08             	mov    0x8(%ebp),%eax
 80514a6:	89 04 24             	mov    %eax,(%esp)
 80514a9:	e8 e2 fa ff ff       	call   8050f90 <__ssprint_r>
 80514ae:	85 c0                	test   %eax,%eax
 80514b0:	0f 85 d2 06 00 00    	jne    8051b88 <_svfiprintf_r+0xa08>
 80514b6:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
 80514bc:	8d 75 a8             	lea    -0x58(%ebp),%esi
 80514bf:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 80514c5:	e9 da 03 00 00       	jmp    80518a4 <_svfiprintf_r+0x724>
 80514ca:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 80514d0:	89 c8                	mov    %ecx,%eax
 80514d2:	83 eb 01             	sub    $0x1,%ebx
 80514d5:	83 e0 07             	and    $0x7,%eax
 80514d8:	c1 e9 03             	shr    $0x3,%ecx
 80514db:	83 c0 30             	add    $0x30,%eax
 80514de:	85 c9                	test   %ecx,%ecx
 80514e0:	88 03                	mov    %al,(%ebx)
 80514e2:	75 ec                	jne    80514d0 <_svfiprintf_r+0x350>
 80514e4:	f6 85 64 ff ff ff 01 	testb  $0x1,-0x9c(%ebp)
 80514eb:	89 da                	mov    %ebx,%edx
 80514ed:	0f 84 72 fe ff ff    	je     8051365 <_svfiprintf_r+0x1e5>
 80514f3:	3c 30                	cmp    $0x30,%al
 80514f5:	0f 84 6a fe ff ff    	je     8051365 <_svfiprintf_r+0x1e5>
 80514fb:	83 eb 01             	sub    $0x1,%ebx
 80514fe:	8d 45 a8             	lea    -0x58(%ebp),%eax
 8051501:	29 d8                	sub    %ebx,%eax
 8051503:	c6 42 ff 30          	movb   $0x30,-0x1(%edx)
 8051507:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
 805150d:	e9 5e fe ff ff       	jmp    8051370 <_svfiprintf_r+0x1f0>
 8051512:	83 8d 64 ff ff ff 10 	orl    $0x10,-0x9c(%ebp)
 8051519:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
 8051520:	89 55 10             	mov    %edx,0x10(%ebp)
 8051523:	8b 45 14             	mov    0x14(%ebp),%eax
 8051526:	0f 85 48 01 00 00    	jne    8051674 <_svfiprintf_r+0x4f4>
 805152c:	f6 85 64 ff ff ff 40 	testb  $0x40,-0x9c(%ebp)
 8051533:	0f 84 3b 01 00 00    	je     8051674 <_svfiprintf_r+0x4f4>
 8051539:	0f b7 08             	movzwl (%eax),%ecx
 805153c:	83 c0 04             	add    $0x4,%eax
 805153f:	31 d2                	xor    %edx,%edx
 8051541:	89 45 14             	mov    %eax,0x14(%ebp)
 8051544:	e9 b7 fd ff ff       	jmp    8051300 <_svfiprintf_r+0x180>
 8051549:	83 8d 64 ff ff ff 10 	orl    $0x10,-0x9c(%ebp)
 8051550:	89 f8                	mov    %edi,%eax
 8051552:	89 55 10             	mov    %edx,0x10(%ebp)
 8051555:	88 85 71 ff ff ff    	mov    %al,-0x8f(%ebp)
 805155b:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
 8051562:	8b 45 14             	mov    0x14(%ebp),%eax
 8051565:	75 0d                	jne    8051574 <_svfiprintf_r+0x3f4>
 8051567:	f6 85 64 ff ff ff 40 	testb  $0x40,-0x9c(%ebp)
 805156e:	0f 85 f2 08 00 00    	jne    8051e66 <_svfiprintf_r+0xce6>
 8051574:	8b 08                	mov    (%eax),%ecx
 8051576:	83 c0 04             	add    $0x4,%eax
 8051579:	89 45 14             	mov    %eax,0x14(%ebp)
 805157c:	85 c9                	test   %ecx,%ecx
 805157e:	0f 88 f3 08 00 00    	js     8051e77 <_svfiprintf_r+0xcf7>
 8051584:	0f b6 bd 71 ff ff ff 	movzbl -0x8f(%ebp),%edi
 805158b:	ba 01 00 00 00       	mov    $0x1,%edx
 8051590:	e9 74 fd ff ff       	jmp    8051309 <_svfiprintf_r+0x189>
 8051595:	0f be 02             	movsbl (%edx),%eax
 8051598:	8d 5a 01             	lea    0x1(%edx),%ebx
 805159b:	83 f8 2a             	cmp    $0x2a,%eax
 805159e:	0f 84 af 09 00 00    	je     8051f53 <_svfiprintf_r+0xdd3>
 80515a4:	8d 48 d0             	lea    -0x30(%eax),%ecx
 80515a7:	31 d2                	xor    %edx,%edx
 80515a9:	83 f9 09             	cmp    $0x9,%ecx
 80515ac:	0f 87 90 09 00 00    	ja     8051f42 <_svfiprintf_r+0xdc2>
 80515b2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 80515b8:	8d 04 92             	lea    (%edx,%edx,4),%eax
 80515bb:	83 c3 01             	add    $0x1,%ebx
 80515be:	8d 14 41             	lea    (%ecx,%eax,2),%edx
 80515c1:	0f be 43 ff          	movsbl -0x1(%ebx),%eax
 80515c5:	8d 48 d0             	lea    -0x30(%eax),%ecx
 80515c8:	83 f9 09             	cmp    $0x9,%ecx
 80515cb:	76 eb                	jbe    80515b8 <_svfiprintf_r+0x438>
 80515cd:	85 d2                	test   %edx,%edx
 80515cf:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
 80515d4:	0f 48 d1             	cmovs  %ecx,%edx
 80515d7:	8d 48 e0             	lea    -0x20(%eax),%ecx
 80515da:	83 f9 58             	cmp    $0x58,%ecx
 80515dd:	89 95 5c ff ff ff    	mov    %edx,-0xa4(%ebp)
 80515e3:	89 da                	mov    %ebx,%edx
 80515e5:	0f 86 9d fc ff ff    	jbe    8051288 <_svfiprintf_r+0x108>
 80515eb:	89 fb                	mov    %edi,%ebx
 80515ed:	85 c0                	test   %eax,%eax
 80515ef:	89 55 10             	mov    %edx,0x10(%ebp)
 80515f2:	88 9d 71 ff ff ff    	mov    %bl,-0x8f(%ebp)
 80515f8:	0f 84 5f 05 00 00    	je     8051b5d <_svfiprintf_r+0x9dd>
 80515fe:	88 45 80             	mov    %al,-0x80(%ebp)
 8051601:	8d 5d 80             	lea    -0x80(%ebp),%ebx
 8051604:	c6 85 71 ff ff ff 00 	movb   $0x0,-0x8f(%ebp)
 805160b:	c7 85 60 ff ff ff 01 	movl   $0x1,-0xa0(%ebp)
 8051612:	00 00 00 
 8051615:	c7 85 58 ff ff ff 01 	movl   $0x1,-0xa8(%ebp)
 805161c:	00 00 00 
 805161f:	e9 5a 01 00 00       	jmp    805177e <_svfiprintf_r+0x5fe>
 8051624:	31 db                	xor    %ebx,%ebx
 8051626:	8d 48 d0             	lea    -0x30(%eax),%ecx
 8051629:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 8051630:	8d 04 9b             	lea    (%ebx,%ebx,4),%eax
 8051633:	83 c2 01             	add    $0x1,%edx
 8051636:	8d 1c 41             	lea    (%ecx,%eax,2),%ebx
 8051639:	0f be 42 ff          	movsbl -0x1(%edx),%eax
 805163d:	8d 48 d0             	lea    -0x30(%eax),%ecx
 8051640:	83 f9 09             	cmp    $0x9,%ecx
 8051643:	76 eb                	jbe    8051630 <_svfiprintf_r+0x4b0>
 8051645:	89 9d 54 ff ff ff    	mov    %ebx,-0xac(%ebp)
 805164b:	e9 2c fc ff ff       	jmp    805127c <_svfiprintf_r+0xfc>
 8051650:	81 8d 64 ff ff ff 80 	orl    $0x80,-0x9c(%ebp)
 8051657:	00 00 00 
 805165a:	89 d0                	mov    %edx,%eax
 805165c:	e9 15 fc ff ff       	jmp    8051276 <_svfiprintf_r+0xf6>
 8051661:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
 8051668:	89 55 10             	mov    %edx,0x10(%ebp)
 805166b:	8b 45 14             	mov    0x14(%ebp),%eax
 805166e:	0f 84 b8 fe ff ff    	je     805152c <_svfiprintf_r+0x3ac>
 8051674:	8b 08                	mov    (%eax),%ecx
 8051676:	83 c0 04             	add    $0x4,%eax
 8051679:	31 d2                	xor    %edx,%edx
 805167b:	89 45 14             	mov    %eax,0x14(%ebp)
 805167e:	e9 7d fc ff ff       	jmp    8051300 <_svfiprintf_r+0x180>
 8051683:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
 805168a:	89 f8                	mov    %edi,%eax
 805168c:	89 55 10             	mov    %edx,0x10(%ebp)
 805168f:	88 85 71 ff ff ff    	mov    %al,-0x8f(%ebp)
 8051695:	0f 85 a2 07 00 00    	jne    8051e3d <_svfiprintf_r+0xcbd>
 805169b:	f6 85 64 ff ff ff 40 	testb  $0x40,-0x9c(%ebp)
 80516a2:	0f 84 95 07 00 00    	je     8051e3d <_svfiprintf_r+0xcbd>
 80516a8:	8b 45 14             	mov    0x14(%ebp),%eax
 80516ab:	0f b7 9d 50 ff ff ff 	movzwl -0xb0(%ebp),%ebx
 80516b2:	8b 00                	mov    (%eax),%eax
 80516b4:	66 89 18             	mov    %bx,(%eax)
 80516b7:	8b 45 14             	mov    0x14(%ebp),%eax
 80516ba:	83 c0 04             	add    $0x4,%eax
 80516bd:	89 45 14             	mov    %eax,0x14(%ebp)
 80516c0:	e9 19 fb ff ff       	jmp    80511de <_svfiprintf_r+0x5e>
 80516c5:	89 fb                	mov    %edi,%ebx
 80516c7:	89 55 10             	mov    %edx,0x10(%ebp)
 80516ca:	88 9d 71 ff ff ff    	mov    %bl,-0x8f(%ebp)
 80516d0:	c7 85 44 ff ff ff 2d 	movl   $0x805492d,-0xbc(%ebp)
 80516d7:	49 05 08 
 80516da:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
 80516e1:	8b 5d 14             	mov    0x14(%ebp),%ebx
 80516e4:	75 0d                	jne    80516f3 <_svfiprintf_r+0x573>
 80516e6:	f6 85 64 ff ff ff 40 	testb  $0x40,-0x9c(%ebp)
 80516ed:	0f 85 65 07 00 00    	jne    8051e58 <_svfiprintf_r+0xcd8>
 80516f3:	8b 0b                	mov    (%ebx),%ecx
 80516f5:	83 c3 04             	add    $0x4,%ebx
 80516f8:	89 5d 14             	mov    %ebx,0x14(%ebp)
 80516fb:	f6 85 64 ff ff ff 01 	testb  $0x1,-0x9c(%ebp)
 8051702:	ba 02 00 00 00       	mov    $0x2,%edx
 8051707:	0f 84 f3 fb ff ff    	je     8051300 <_svfiprintf_r+0x180>
 805170d:	85 c9                	test   %ecx,%ecx
 805170f:	0f 84 eb fb ff ff    	je     8051300 <_svfiprintf_r+0x180>
 8051715:	c6 85 72 ff ff ff 30 	movb   $0x30,-0x8e(%ebp)
 805171c:	88 85 73 ff ff ff    	mov    %al,-0x8d(%ebp)
 8051722:	83 8d 64 ff ff ff 02 	orl    $0x2,-0x9c(%ebp)
 8051729:	e9 d2 fb ff ff       	jmp    8051300 <_svfiprintf_r+0x180>
 805172e:	83 8d 64 ff ff ff 40 	orl    $0x40,-0x9c(%ebp)
 8051735:	89 d0                	mov    %edx,%eax
 8051737:	e9 3a fb ff ff       	jmp    8051276 <_svfiprintf_r+0xf6>
 805173c:	89 f8                	mov    %edi,%eax
 805173e:	89 55 10             	mov    %edx,0x10(%ebp)
 8051741:	88 85 71 ff ff ff    	mov    %al,-0x8f(%ebp)
 8051747:	e9 0f fe ff ff       	jmp    805155b <_svfiprintf_r+0x3db>
 805174c:	8b 45 14             	mov    0x14(%ebp),%eax
 805174f:	8d 5d 80             	lea    -0x80(%ebp),%ebx
 8051752:	89 55 10             	mov    %edx,0x10(%ebp)
 8051755:	c6 85 71 ff ff ff 00 	movb   $0x0,-0x8f(%ebp)
 805175c:	c7 85 60 ff ff ff 01 	movl   $0x1,-0xa0(%ebp)
 8051763:	00 00 00 
 8051766:	8b 00                	mov    (%eax),%eax
 8051768:	c7 85 58 ff ff ff 01 	movl   $0x1,-0xa8(%ebp)
 805176f:	00 00 00 
 8051772:	88 45 80             	mov    %al,-0x80(%ebp)
 8051775:	8b 45 14             	mov    0x14(%ebp),%eax
 8051778:	83 c0 04             	add    $0x4,%eax
 805177b:	89 45 14             	mov    %eax,0x14(%ebp)
 805177e:	c7 85 5c ff ff ff 00 	movl   $0x0,-0xa4(%ebp)
 8051785:	00 00 00 
 8051788:	e9 05 fc ff ff       	jmp    8051392 <_svfiprintf_r+0x212>
 805178d:	89 fb                	mov    %edi,%ebx
 805178f:	89 55 10             	mov    %edx,0x10(%ebp)
 8051792:	88 9d 71 ff ff ff    	mov    %bl,-0x8f(%ebp)
 8051798:	c7 85 44 ff ff ff 1c 	movl   $0x805491c,-0xbc(%ebp)
 805179f:	49 05 08 
 80517a2:	e9 33 ff ff ff       	jmp    80516da <_svfiprintf_r+0x55a>
 80517a7:	83 8d 64 ff ff ff 10 	orl    $0x10,-0x9c(%ebp)
 80517ae:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
 80517b5:	89 55 10             	mov    %edx,0x10(%ebp)
 80517b8:	8b 45 14             	mov    0x14(%ebp),%eax
 80517bb:	75 39                	jne    80517f6 <_svfiprintf_r+0x676>
 80517bd:	f6 85 64 ff ff ff 40 	testb  $0x40,-0x9c(%ebp)
 80517c4:	74 30                	je     80517f6 <_svfiprintf_r+0x676>
 80517c6:	0f b7 08             	movzwl (%eax),%ecx
 80517c9:	83 c0 04             	add    $0x4,%eax
 80517cc:	ba 01 00 00 00       	mov    $0x1,%edx
 80517d1:	89 45 14             	mov    %eax,0x14(%ebp)
 80517d4:	e9 27 fb ff ff       	jmp    8051300 <_svfiprintf_r+0x180>
 80517d9:	83 8d 64 ff ff ff 01 	orl    $0x1,-0x9c(%ebp)
 80517e0:	89 d0                	mov    %edx,%eax
 80517e2:	e9 8f fa ff ff       	jmp    8051276 <_svfiprintf_r+0xf6>
 80517e7:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
 80517ee:	89 55 10             	mov    %edx,0x10(%ebp)
 80517f1:	8b 45 14             	mov    0x14(%ebp),%eax
 80517f4:	74 c7                	je     80517bd <_svfiprintf_r+0x63d>
 80517f6:	8b 08                	mov    (%eax),%ecx
 80517f8:	83 c0 04             	add    $0x4,%eax
 80517fb:	ba 01 00 00 00       	mov    $0x1,%edx
 8051800:	89 45 14             	mov    %eax,0x14(%ebp)
 8051803:	e9 f8 fa ff ff       	jmp    8051300 <_svfiprintf_r+0x180>
 8051808:	8b 45 14             	mov    0x14(%ebp),%eax
 805180b:	89 55 10             	mov    %edx,0x10(%ebp)
 805180e:	c6 85 71 ff ff ff 00 	movb   $0x0,-0x8f(%ebp)
 8051815:	8b 18                	mov    (%eax),%ebx
 8051817:	8d 50 04             	lea    0x4(%eax),%edx
 805181a:	85 db                	test   %ebx,%ebx
 805181c:	0f 84 cc 06 00 00    	je     8051eee <_svfiprintf_r+0xd6e>
 8051822:	8b bd 5c ff ff ff    	mov    -0xa4(%ebp),%edi
 8051828:	89 95 60 ff ff ff    	mov    %edx,-0xa0(%ebp)
 805182e:	85 ff                	test   %edi,%edi
 8051830:	0f 88 59 06 00 00    	js     8051e8f <_svfiprintf_r+0xd0f>
 8051836:	89 7c 24 08          	mov    %edi,0x8(%esp)
 805183a:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 8051841:	00 
 8051842:	89 1c 24             	mov    %ebx,(%esp)
 8051845:	e8 06 e6 ff ff       	call   804fe50 <memchr>
 805184a:	8b 95 60 ff ff ff    	mov    -0xa0(%ebp),%edx
 8051850:	85 c0                	test   %eax,%eax
 8051852:	0f 84 c5 06 00 00    	je     8051f1d <_svfiprintf_r+0xd9d>
 8051858:	29 d8                	sub    %ebx,%eax
 805185a:	39 f8                	cmp    %edi,%eax
 805185c:	0f 4f c7             	cmovg  %edi,%eax
 805185f:	0f b6 bd 71 ff ff ff 	movzbl -0x8f(%ebp),%edi
 8051866:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
 805186c:	89 55 14             	mov    %edx,0x14(%ebp)
 805186f:	c7 85 5c ff ff ff 00 	movl   $0x0,-0xa4(%ebp)
 8051876:	00 00 00 
 8051879:	e9 f2 fa ff ff       	jmp    8051370 <_svfiprintf_r+0x1f0>
 805187e:	89 f8                	mov    %edi,%eax
 8051880:	84 c0                	test   %al,%al
 8051882:	b8 20 00 00 00       	mov    $0x20,%eax
 8051887:	0f 44 f8             	cmove  %eax,%edi
 805188a:	89 d0                	mov    %edx,%eax
 805188c:	e9 e5 f9 ff ff       	jmp    8051276 <_svfiprintf_r+0xf6>
 8051891:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 8051898:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
 805189e:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 80518a4:	80 bd 71 ff ff ff 00 	cmpb   $0x0,-0x8f(%ebp)
 80518ab:	74 2e                	je     80518db <_svfiprintf_r+0x75b>
 80518ad:	83 c0 01             	add    $0x1,%eax
 80518b0:	83 c2 01             	add    $0x1,%edx
 80518b3:	8d 8d 71 ff ff ff    	lea    -0x8f(%ebp),%ecx
 80518b9:	83 c6 08             	add    $0x8,%esi
 80518bc:	89 4e f8             	mov    %ecx,-0x8(%esi)
 80518bf:	c7 46 fc 01 00 00 00 	movl   $0x1,-0x4(%esi)
 80518c6:	83 f8 07             	cmp    $0x7,%eax
 80518c9:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
 80518cf:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
 80518d5:	0f 8f b5 04 00 00    	jg     8051d90 <_svfiprintf_r+0xc10>
 80518db:	8b 8d 4c ff ff ff    	mov    -0xb4(%ebp),%ecx
 80518e1:	85 c9                	test   %ecx,%ecx
 80518e3:	74 2e                	je     8051913 <_svfiprintf_r+0x793>
 80518e5:	83 c0 01             	add    $0x1,%eax
 80518e8:	83 c2 02             	add    $0x2,%edx
 80518eb:	8d 8d 72 ff ff ff    	lea    -0x8e(%ebp),%ecx
 80518f1:	83 c6 08             	add    $0x8,%esi
 80518f4:	89 4e f8             	mov    %ecx,-0x8(%esi)
 80518f7:	c7 46 fc 02 00 00 00 	movl   $0x2,-0x4(%esi)
 80518fe:	83 f8 07             	cmp    $0x7,%eax
 8051901:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
 8051907:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
 805190d:	0f 8f 45 04 00 00    	jg     8051d58 <_svfiprintf_r+0xbd8>
 8051913:	81 bd 48 ff ff ff 80 	cmpl   $0x80,-0xb8(%ebp)
 805191a:	00 00 00 
 805191d:	0f 84 9d 02 00 00    	je     8051bc0 <_svfiprintf_r+0xa40>
 8051923:	8b bd 5c ff ff ff    	mov    -0xa4(%ebp),%edi
 8051929:	2b bd 58 ff ff ff    	sub    -0xa8(%ebp),%edi
 805192f:	85 ff                	test   %edi,%edi
 8051931:	0f 8e e1 00 00 00    	jle    8051a18 <_svfiprintf_r+0x898>
 8051937:	83 ff 10             	cmp    $0x10,%edi
 805193a:	0f 8e 7c 00 00 00    	jle    80519bc <_svfiprintf_r+0x83c>
 8051940:	89 9d 5c ff ff ff    	mov    %ebx,-0xa4(%ebp)
 8051946:	89 f1                	mov    %esi,%ecx
 8051948:	8b 5d 08             	mov    0x8(%ebp),%ebx
 805194b:	8b 75 0c             	mov    0xc(%ebp),%esi
 805194e:	eb 08                	jmp    8051958 <_svfiprintf_r+0x7d8>
 8051950:	83 ef 10             	sub    $0x10,%edi
 8051953:	83 ff 10             	cmp    $0x10,%edi
 8051956:	7e 5c                	jle    80519b4 <_svfiprintf_r+0x834>
 8051958:	83 c0 01             	add    $0x1,%eax
 805195b:	83 c2 10             	add    $0x10,%edx
 805195e:	c7 01 6c 4f 05 08    	movl   $0x8054f6c,(%ecx)
 8051964:	83 c1 08             	add    $0x8,%ecx
 8051967:	c7 41 fc 10 00 00 00 	movl   $0x10,-0x4(%ecx)
 805196e:	83 f8 07             	cmp    $0x7,%eax
 8051971:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
 8051977:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
 805197d:	7e d1                	jle    8051950 <_svfiprintf_r+0x7d0>
 805197f:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
 8051985:	89 44 24 08          	mov    %eax,0x8(%esp)
 8051989:	89 74 24 04          	mov    %esi,0x4(%esp)
 805198d:	89 1c 24             	mov    %ebx,(%esp)
 8051990:	e8 fb f5 ff ff       	call   8050f90 <__ssprint_r>
 8051995:	85 c0                	test   %eax,%eax
 8051997:	0f 85 eb 01 00 00    	jne    8051b88 <_svfiprintf_r+0xa08>
 805199d:	83 ef 10             	sub    $0x10,%edi
 80519a0:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
 80519a6:	83 ff 10             	cmp    $0x10,%edi
 80519a9:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 80519af:	8d 4d a8             	lea    -0x58(%ebp),%ecx
 80519b2:	7f a4                	jg     8051958 <_svfiprintf_r+0x7d8>
 80519b4:	8b 9d 5c ff ff ff    	mov    -0xa4(%ebp),%ebx
 80519ba:	89 ce                	mov    %ecx,%esi
 80519bc:	83 c0 01             	add    $0x1,%eax
 80519bf:	01 fa                	add    %edi,%edx
 80519c1:	c7 06 6c 4f 05 08    	movl   $0x8054f6c,(%esi)
 80519c7:	83 c6 08             	add    $0x8,%esi
 80519ca:	89 7e fc             	mov    %edi,-0x4(%esi)
 80519cd:	83 f8 07             	cmp    $0x7,%eax
 80519d0:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
 80519d6:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
 80519dc:	7e 3a                	jle    8051a18 <_svfiprintf_r+0x898>
 80519de:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
 80519e4:	89 44 24 08          	mov    %eax,0x8(%esp)
 80519e8:	8b 45 0c             	mov    0xc(%ebp),%eax
 80519eb:	89 44 24 04          	mov    %eax,0x4(%esp)
 80519ef:	8b 45 08             	mov    0x8(%ebp),%eax
 80519f2:	89 04 24             	mov    %eax,(%esp)
 80519f5:	e8 96 f5 ff ff       	call   8050f90 <__ssprint_r>
 80519fa:	85 c0                	test   %eax,%eax
 80519fc:	0f 85 86 01 00 00    	jne    8051b88 <_svfiprintf_r+0xa08>
 8051a02:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
 8051a08:	8d 75 a8             	lea    -0x58(%ebp),%esi
 8051a0b:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 8051a11:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 8051a18:	89 1e                	mov    %ebx,(%esi)
 8051a1a:	8b 9d 58 ff ff ff    	mov    -0xa8(%ebp),%ebx
 8051a20:	83 c0 01             	add    $0x1,%eax
 8051a23:	83 c6 08             	add    $0x8,%esi
 8051a26:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
 8051a2c:	89 5e fc             	mov    %ebx,-0x4(%esi)
 8051a2f:	01 da                	add    %ebx,%edx
 8051a31:	83 f8 07             	cmp    $0x7,%eax
 8051a34:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
 8051a3a:	0f 8f 80 02 00 00    	jg     8051cc0 <_svfiprintf_r+0xb40>
 8051a40:	f6 85 64 ff ff ff 04 	testb  $0x4,-0x9c(%ebp)
 8051a47:	0f 84 b9 00 00 00    	je     8051b06 <_svfiprintf_r+0x986>
 8051a4d:	8b bd 54 ff ff ff    	mov    -0xac(%ebp),%edi
 8051a53:	2b bd 60 ff ff ff    	sub    -0xa0(%ebp),%edi
 8051a59:	85 ff                	test   %edi,%edi
 8051a5b:	0f 8e a5 00 00 00    	jle    8051b06 <_svfiprintf_r+0x986>
 8051a61:	83 ff 10             	cmp    $0x10,%edi
 8051a64:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 8051a6a:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
 8051a70:	7e 71                	jle    8051ae3 <_svfiprintf_r+0x963>
 8051a72:	89 f1                	mov    %esi,%ecx
 8051a74:	8b 75 08             	mov    0x8(%ebp),%esi
 8051a77:	eb 0f                	jmp    8051a88 <_svfiprintf_r+0x908>
 8051a79:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 8051a80:	83 ef 10             	sub    $0x10,%edi
 8051a83:	83 ff 10             	cmp    $0x10,%edi
 8051a86:	7e 59                	jle    8051ae1 <_svfiprintf_r+0x961>
 8051a88:	83 c0 01             	add    $0x1,%eax
 8051a8b:	83 c2 10             	add    $0x10,%edx
 8051a8e:	c7 01 7c 4f 05 08    	movl   $0x8054f7c,(%ecx)
 8051a94:	83 c1 08             	add    $0x8,%ecx
 8051a97:	c7 41 fc 10 00 00 00 	movl   $0x10,-0x4(%ecx)
 8051a9e:	83 f8 07             	cmp    $0x7,%eax
 8051aa1:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
 8051aa7:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
 8051aad:	7e d1                	jle    8051a80 <_svfiprintf_r+0x900>
 8051aaf:	8b 45 0c             	mov    0xc(%ebp),%eax
 8051ab2:	89 5c 24 08          	mov    %ebx,0x8(%esp)
 8051ab6:	89 34 24             	mov    %esi,(%esp)
 8051ab9:	89 44 24 04          	mov    %eax,0x4(%esp)
 8051abd:	e8 ce f4 ff ff       	call   8050f90 <__ssprint_r>
 8051ac2:	85 c0                	test   %eax,%eax
 8051ac4:	0f 85 be 00 00 00    	jne    8051b88 <_svfiprintf_r+0xa08>
 8051aca:	83 ef 10             	sub    $0x10,%edi
 8051acd:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
 8051ad3:	83 ff 10             	cmp    $0x10,%edi
 8051ad6:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 8051adc:	8d 4d a8             	lea    -0x58(%ebp),%ecx
 8051adf:	7f a7                	jg     8051a88 <_svfiprintf_r+0x908>
 8051ae1:	89 ce                	mov    %ecx,%esi
 8051ae3:	83 c0 01             	add    $0x1,%eax
 8051ae6:	01 fa                	add    %edi,%edx
 8051ae8:	83 f8 07             	cmp    $0x7,%eax
 8051aeb:	c7 06 7c 4f 05 08    	movl   $0x8054f7c,(%esi)
 8051af1:	89 7e 04             	mov    %edi,0x4(%esi)
 8051af4:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
 8051afa:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
 8051b00:	0f 8f ee 02 00 00    	jg     8051df4 <_svfiprintf_r+0xc74>
 8051b06:	8b 85 54 ff ff ff    	mov    -0xac(%ebp),%eax
 8051b0c:	8b b5 60 ff ff ff    	mov    -0xa0(%ebp),%esi
 8051b12:	39 c6                	cmp    %eax,%esi
 8051b14:	0f 4d c6             	cmovge %esi,%eax
 8051b17:	01 85 50 ff ff ff    	add    %eax,-0xb0(%ebp)
 8051b1d:	85 d2                	test   %edx,%edx
 8051b1f:	0f 85 d3 01 00 00    	jne    8051cf8 <_svfiprintf_r+0xb78>
 8051b25:	c7 85 78 ff ff ff 00 	movl   $0x0,-0x88(%ebp)
 8051b2c:	00 00 00 
 8051b2f:	8d 75 a8             	lea    -0x58(%ebp),%esi
 8051b32:	e9 a7 f6 ff ff       	jmp    80511de <_svfiprintf_r+0x5e>
 8051b37:	90                   	nop
 8051b38:	84 d2                	test   %dl,%dl
 8051b3a:	75 6c                	jne    8051ba8 <_svfiprintf_r+0xa28>
 8051b3c:	f6 85 64 ff ff ff 01 	testb  $0x1,-0x9c(%ebp)
 8051b43:	74 63                	je     8051ba8 <_svfiprintf_r+0xa28>
 8051b45:	8b 85 3c ff ff ff    	mov    -0xc4(%ebp),%eax
 8051b4b:	8d 5d a7             	lea    -0x59(%ebp),%ebx
 8051b4e:	c6 45 a7 30          	movb   $0x30,-0x59(%ebp)
 8051b52:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
 8051b58:	e9 13 f8 ff ff       	jmp    8051370 <_svfiprintf_r+0x1f0>
 8051b5d:	8b 85 7c ff ff ff    	mov    -0x84(%ebp),%eax
 8051b63:	85 c0                	test   %eax,%eax
 8051b65:	74 21                	je     8051b88 <_svfiprintf_r+0xa08>
 8051b67:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
 8051b6d:	89 44 24 08          	mov    %eax,0x8(%esp)
 8051b71:	8b 45 0c             	mov    0xc(%ebp),%eax
 8051b74:	89 44 24 04          	mov    %eax,0x4(%esp)
 8051b78:	8b 45 08             	mov    0x8(%ebp),%eax
 8051b7b:	89 04 24             	mov    %eax,(%esp)
 8051b7e:	e8 0d f4 ff ff       	call   8050f90 <__ssprint_r>
 8051b83:	90                   	nop
 8051b84:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8051b88:	8b 75 0c             	mov    0xc(%ebp),%esi
 8051b8b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8051b90:	f6 46 0c 40          	testb  $0x40,0xc(%esi)
 8051b94:	0f 44 85 50 ff ff ff 	cmove  -0xb0(%ebp),%eax
 8051b9b:	81 c4 cc 00 00 00    	add    $0xcc,%esp
 8051ba1:	5b                   	pop    %ebx
 8051ba2:	5e                   	pop    %esi
 8051ba3:	5f                   	pop    %edi
 8051ba4:	5d                   	pop    %ebp
 8051ba5:	c3                   	ret    
 8051ba6:	66 90                	xchg   %ax,%ax
 8051ba8:	c7 85 58 ff ff ff 00 	movl   $0x0,-0xa8(%ebp)
 8051baf:	00 00 00 
 8051bb2:	8d 5d a8             	lea    -0x58(%ebp),%ebx
 8051bb5:	e9 b6 f7 ff ff       	jmp    8051370 <_svfiprintf_r+0x1f0>
 8051bba:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 8051bc0:	8b bd 54 ff ff ff    	mov    -0xac(%ebp),%edi
 8051bc6:	2b bd 60 ff ff ff    	sub    -0xa0(%ebp),%edi
 8051bcc:	85 ff                	test   %edi,%edi
 8051bce:	0f 8e 4f fd ff ff    	jle    8051923 <_svfiprintf_r+0x7a3>
 8051bd4:	83 ff 10             	cmp    $0x10,%edi
 8051bd7:	0f 8e 7f 00 00 00    	jle    8051c5c <_svfiprintf_r+0xadc>
 8051bdd:	89 9d 4c ff ff ff    	mov    %ebx,-0xb4(%ebp)
 8051be3:	89 f1                	mov    %esi,%ecx
 8051be5:	8b 5d 08             	mov    0x8(%ebp),%ebx
 8051be8:	8b 75 0c             	mov    0xc(%ebp),%esi
 8051beb:	eb 0b                	jmp    8051bf8 <_svfiprintf_r+0xa78>
 8051bed:	8d 76 00             	lea    0x0(%esi),%esi
 8051bf0:	83 ef 10             	sub    $0x10,%edi
 8051bf3:	83 ff 10             	cmp    $0x10,%edi
 8051bf6:	7e 5c                	jle    8051c54 <_svfiprintf_r+0xad4>
 8051bf8:	83 c0 01             	add    $0x1,%eax
 8051bfb:	83 c2 10             	add    $0x10,%edx
 8051bfe:	c7 01 6c 4f 05 08    	movl   $0x8054f6c,(%ecx)
 8051c04:	83 c1 08             	add    $0x8,%ecx
 8051c07:	c7 41 fc 10 00 00 00 	movl   $0x10,-0x4(%ecx)
 8051c0e:	83 f8 07             	cmp    $0x7,%eax
 8051c11:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
 8051c17:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
 8051c1d:	7e d1                	jle    8051bf0 <_svfiprintf_r+0xa70>
 8051c1f:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
 8051c25:	89 44 24 08          	mov    %eax,0x8(%esp)
 8051c29:	89 74 24 04          	mov    %esi,0x4(%esp)
 8051c2d:	89 1c 24             	mov    %ebx,(%esp)
 8051c30:	e8 5b f3 ff ff       	call   8050f90 <__ssprint_r>
 8051c35:	85 c0                	test   %eax,%eax
 8051c37:	0f 85 4b ff ff ff    	jne    8051b88 <_svfiprintf_r+0xa08>
 8051c3d:	83 ef 10             	sub    $0x10,%edi
 8051c40:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
 8051c46:	83 ff 10             	cmp    $0x10,%edi
 8051c49:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 8051c4f:	8d 4d a8             	lea    -0x58(%ebp),%ecx
 8051c52:	7f a4                	jg     8051bf8 <_svfiprintf_r+0xa78>
 8051c54:	8b 9d 4c ff ff ff    	mov    -0xb4(%ebp),%ebx
 8051c5a:	89 ce                	mov    %ecx,%esi
 8051c5c:	83 c0 01             	add    $0x1,%eax
 8051c5f:	01 fa                	add    %edi,%edx
 8051c61:	c7 06 6c 4f 05 08    	movl   $0x8054f6c,(%esi)
 8051c67:	83 c6 08             	add    $0x8,%esi
 8051c6a:	89 7e fc             	mov    %edi,-0x4(%esi)
 8051c6d:	83 f8 07             	cmp    $0x7,%eax
 8051c70:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
 8051c76:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
 8051c7c:	0f 8e a1 fc ff ff    	jle    8051923 <_svfiprintf_r+0x7a3>
 8051c82:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
 8051c88:	89 44 24 08          	mov    %eax,0x8(%esp)
 8051c8c:	8b 45 0c             	mov    0xc(%ebp),%eax
 8051c8f:	89 44 24 04          	mov    %eax,0x4(%esp)
 8051c93:	8b 45 08             	mov    0x8(%ebp),%eax
 8051c96:	89 04 24             	mov    %eax,(%esp)
 8051c99:	e8 f2 f2 ff ff       	call   8050f90 <__ssprint_r>
 8051c9e:	85 c0                	test   %eax,%eax
 8051ca0:	0f 85 e2 fe ff ff    	jne    8051b88 <_svfiprintf_r+0xa08>
 8051ca6:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
 8051cac:	8d 75 a8             	lea    -0x58(%ebp),%esi
 8051caf:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 8051cb5:	e9 69 fc ff ff       	jmp    8051923 <_svfiprintf_r+0x7a3>
 8051cba:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 8051cc0:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
 8051cc6:	89 44 24 08          	mov    %eax,0x8(%esp)
 8051cca:	8b 45 0c             	mov    0xc(%ebp),%eax
 8051ccd:	89 44 24 04          	mov    %eax,0x4(%esp)
 8051cd1:	8b 45 08             	mov    0x8(%ebp),%eax
 8051cd4:	89 04 24             	mov    %eax,(%esp)
 8051cd7:	e8 b4 f2 ff ff       	call   8050f90 <__ssprint_r>
 8051cdc:	85 c0                	test   %eax,%eax
 8051cde:	0f 85 a4 fe ff ff    	jne    8051b88 <_svfiprintf_r+0xa08>
 8051ce4:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
 8051cea:	8d 75 a8             	lea    -0x58(%ebp),%esi
 8051ced:	e9 4e fd ff ff       	jmp    8051a40 <_svfiprintf_r+0x8c0>
 8051cf2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 8051cf8:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
 8051cfe:	89 44 24 08          	mov    %eax,0x8(%esp)
 8051d02:	8b 45 0c             	mov    0xc(%ebp),%eax
 8051d05:	89 44 24 04          	mov    %eax,0x4(%esp)
 8051d09:	8b 45 08             	mov    0x8(%ebp),%eax
 8051d0c:	89 04 24             	mov    %eax,(%esp)
 8051d0f:	e8 7c f2 ff ff       	call   8050f90 <__ssprint_r>
 8051d14:	85 c0                	test   %eax,%eax
 8051d16:	0f 84 09 fe ff ff    	je     8051b25 <_svfiprintf_r+0x9a5>
 8051d1c:	e9 67 fe ff ff       	jmp    8051b88 <_svfiprintf_r+0xa08>
 8051d21:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 8051d28:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
 8051d2e:	89 44 24 08          	mov    %eax,0x8(%esp)
 8051d32:	8b 45 0c             	mov    0xc(%ebp),%eax
 8051d35:	89 44 24 04          	mov    %eax,0x4(%esp)
 8051d39:	8b 45 08             	mov    0x8(%ebp),%eax
 8051d3c:	89 04 24             	mov    %eax,(%esp)
 8051d3f:	e8 4c f2 ff ff       	call   8050f90 <__ssprint_r>
 8051d44:	85 c0                	test   %eax,%eax
 8051d46:	0f 85 3c fe ff ff    	jne    8051b88 <_svfiprintf_r+0xa08>
 8051d4c:	8d 75 a8             	lea    -0x58(%ebp),%esi
 8051d4f:	e9 e9 f4 ff ff       	jmp    805123d <_svfiprintf_r+0xbd>
 8051d54:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8051d58:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
 8051d5e:	89 44 24 08          	mov    %eax,0x8(%esp)
 8051d62:	8b 45 0c             	mov    0xc(%ebp),%eax
 8051d65:	89 44 24 04          	mov    %eax,0x4(%esp)
 8051d69:	8b 45 08             	mov    0x8(%ebp),%eax
 8051d6c:	89 04 24             	mov    %eax,(%esp)
 8051d6f:	e8 1c f2 ff ff       	call   8050f90 <__ssprint_r>
 8051d74:	85 c0                	test   %eax,%eax
 8051d76:	0f 85 0c fe ff ff    	jne    8051b88 <_svfiprintf_r+0xa08>
 8051d7c:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
 8051d82:	8d 75 a8             	lea    -0x58(%ebp),%esi
 8051d85:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 8051d8b:	e9 83 fb ff ff       	jmp    8051913 <_svfiprintf_r+0x793>
 8051d90:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
 8051d96:	89 44 24 08          	mov    %eax,0x8(%esp)
 8051d9a:	8b 45 0c             	mov    0xc(%ebp),%eax
 8051d9d:	89 44 24 04          	mov    %eax,0x4(%esp)
 8051da1:	8b 45 08             	mov    0x8(%ebp),%eax
 8051da4:	89 04 24             	mov    %eax,(%esp)
 8051da7:	e8 e4 f1 ff ff       	call   8050f90 <__ssprint_r>
 8051dac:	85 c0                	test   %eax,%eax
 8051dae:	0f 85 d4 fd ff ff    	jne    8051b88 <_svfiprintf_r+0xa08>
 8051db4:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
 8051dba:	8d 75 a8             	lea    -0x58(%ebp),%esi
 8051dbd:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 8051dc3:	e9 13 fb ff ff       	jmp    80518db <_svfiprintf_r+0x75b>
 8051dc8:	83 f9 09             	cmp    $0x9,%ecx
 8051dcb:	76 56                	jbe    8051e23 <_svfiprintf_r+0xca3>
 8051dcd:	8d 5d a8             	lea    -0x58(%ebp),%ebx
 8051dd0:	b8 cd cc cc cc       	mov    $0xcccccccd,%eax
 8051dd5:	83 eb 01             	sub    $0x1,%ebx
 8051dd8:	f7 e1                	mul    %ecx
 8051dda:	c1 ea 03             	shr    $0x3,%edx
 8051ddd:	8d 04 92             	lea    (%edx,%edx,4),%eax
 8051de0:	01 c0                	add    %eax,%eax
 8051de2:	29 c1                	sub    %eax,%ecx
 8051de4:	83 c1 30             	add    $0x30,%ecx
 8051de7:	85 d2                	test   %edx,%edx
 8051de9:	88 0b                	mov    %cl,(%ebx)
 8051deb:	89 d1                	mov    %edx,%ecx
 8051ded:	75 e1                	jne    8051dd0 <_svfiprintf_r+0xc50>
 8051def:	e9 71 f5 ff ff       	jmp    8051365 <_svfiprintf_r+0x1e5>
 8051df4:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
 8051dfa:	89 44 24 08          	mov    %eax,0x8(%esp)
 8051dfe:	8b 45 0c             	mov    0xc(%ebp),%eax
 8051e01:	89 44 24 04          	mov    %eax,0x4(%esp)
 8051e05:	8b 45 08             	mov    0x8(%ebp),%eax
 8051e08:	89 04 24             	mov    %eax,(%esp)
 8051e0b:	e8 80 f1 ff ff       	call   8050f90 <__ssprint_r>
 8051e10:	85 c0                	test   %eax,%eax
 8051e12:	0f 85 70 fd ff ff    	jne    8051b88 <_svfiprintf_r+0xa08>
 8051e18:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
 8051e1e:	e9 e3 fc ff ff       	jmp    8051b06 <_svfiprintf_r+0x986>
 8051e23:	8b 85 3c ff ff ff    	mov    -0xc4(%ebp),%eax
 8051e29:	83 c1 30             	add    $0x30,%ecx
 8051e2c:	88 4d a7             	mov    %cl,-0x59(%ebp)
 8051e2f:	8d 5d a7             	lea    -0x59(%ebp),%ebx
 8051e32:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
 8051e38:	e9 33 f5 ff ff       	jmp    8051370 <_svfiprintf_r+0x1f0>
 8051e3d:	8b 45 14             	mov    0x14(%ebp),%eax
 8051e40:	8b 9d 50 ff ff ff    	mov    -0xb0(%ebp),%ebx
 8051e46:	8b 00                	mov    (%eax),%eax
 8051e48:	89 18                	mov    %ebx,(%eax)
 8051e4a:	8b 45 14             	mov    0x14(%ebp),%eax
 8051e4d:	83 c0 04             	add    $0x4,%eax
 8051e50:	89 45 14             	mov    %eax,0x14(%ebp)
 8051e53:	e9 86 f3 ff ff       	jmp    80511de <_svfiprintf_r+0x5e>
 8051e58:	0f b7 0b             	movzwl (%ebx),%ecx
 8051e5b:	83 c3 04             	add    $0x4,%ebx
 8051e5e:	89 5d 14             	mov    %ebx,0x14(%ebp)
 8051e61:	e9 95 f8 ff ff       	jmp    80516fb <_svfiprintf_r+0x57b>
 8051e66:	0f bf 08             	movswl (%eax),%ecx
 8051e69:	83 c0 04             	add    $0x4,%eax
 8051e6c:	89 45 14             	mov    %eax,0x14(%ebp)
 8051e6f:	85 c9                	test   %ecx,%ecx
 8051e71:	0f 89 0d f7 ff ff    	jns    8051584 <_svfiprintf_r+0x404>
 8051e77:	f7 d9                	neg    %ecx
 8051e79:	bf 2d 00 00 00       	mov    $0x2d,%edi
 8051e7e:	c6 85 71 ff ff ff 2d 	movb   $0x2d,-0x8f(%ebp)
 8051e85:	ba 01 00 00 00       	mov    $0x1,%edx
 8051e8a:	e9 7a f4 ff ff       	jmp    8051309 <_svfiprintf_r+0x189>
 8051e8f:	89 1c 24             	mov    %ebx,(%esp)
 8051e92:	e8 09 76 ff ff       	call   80494a0 <strlen>
 8051e97:	8b 95 60 ff ff ff    	mov    -0xa0(%ebp),%edx
 8051e9d:	0f b6 bd 71 ff ff ff 	movzbl -0x8f(%ebp),%edi
 8051ea4:	c7 85 5c ff ff ff 00 	movl   $0x0,-0xa4(%ebp)
 8051eab:	00 00 00 
 8051eae:	89 55 14             	mov    %edx,0x14(%ebp)
 8051eb1:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
 8051eb7:	e9 b4 f4 ff ff       	jmp    8051370 <_svfiprintf_r+0x1f0>
 8051ebc:	8b 45 08             	mov    0x8(%ebp),%eax
 8051ebf:	c7 44 24 04 40 00 00 	movl   $0x40,0x4(%esp)
 8051ec6:	00 
 8051ec7:	89 04 24             	mov    %eax,(%esp)
 8051eca:	e8 41 d8 ff ff       	call   804f710 <_malloc_r>
 8051ecf:	8b 75 0c             	mov    0xc(%ebp),%esi
 8051ed2:	85 c0                	test   %eax,%eax
 8051ed4:	89 06                	mov    %eax,(%esi)
 8051ed6:	89 46 10             	mov    %eax,0x10(%esi)
 8051ed9:	0f 84 a3 00 00 00    	je     8051f82 <_svfiprintf_r+0xe02>
 8051edf:	8b 45 0c             	mov    0xc(%ebp),%eax
 8051ee2:	c7 40 14 40 00 00 00 	movl   $0x40,0x14(%eax)
 8051ee9:	e9 b2 f2 ff ff       	jmp    80511a0 <_svfiprintf_r+0x20>
 8051eee:	8b bd 5c ff ff ff    	mov    -0xa4(%ebp),%edi
 8051ef4:	b8 06 00 00 00       	mov    $0x6,%eax
 8051ef9:	89 55 14             	mov    %edx,0x14(%ebp)
 8051efc:	83 ff 06             	cmp    $0x6,%edi
 8051eff:	0f 46 c7             	cmovbe %edi,%eax
 8051f02:	85 c0                	test   %eax,%eax
 8051f04:	0f 49 d8             	cmovns %eax,%ebx
 8051f07:	89 9d 60 ff ff ff    	mov    %ebx,-0xa0(%ebp)
 8051f0d:	bb 3e 49 05 08       	mov    $0x805493e,%ebx
 8051f12:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
 8051f18:	e9 61 f8 ff ff       	jmp    805177e <_svfiprintf_r+0x5fe>
 8051f1d:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
 8051f23:	0f b6 bd 71 ff ff ff 	movzbl -0x8f(%ebp),%edi
 8051f2a:	89 55 14             	mov    %edx,0x14(%ebp)
 8051f2d:	c7 85 5c ff ff ff 00 	movl   $0x0,-0xa4(%ebp)
 8051f34:	00 00 00 
 8051f37:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
 8051f3d:	e9 2e f4 ff ff       	jmp    8051370 <_svfiprintf_r+0x1f0>
 8051f42:	89 da                	mov    %ebx,%edx
 8051f44:	c7 85 5c ff ff ff 00 	movl   $0x0,-0xa4(%ebp)
 8051f4b:	00 00 00 
 8051f4e:	e9 29 f3 ff ff       	jmp    805127c <_svfiprintf_r+0xfc>
 8051f53:	8b 4d 14             	mov    0x14(%ebp),%ecx
 8051f56:	89 da                	mov    %ebx,%edx
 8051f58:	8b 45 14             	mov    0x14(%ebp),%eax
 8051f5b:	8b 09                	mov    (%ecx),%ecx
 8051f5d:	83 c0 04             	add    $0x4,%eax
 8051f60:	89 45 14             	mov    %eax,0x14(%ebp)
 8051f63:	85 c9                	test   %ecx,%ecx
 8051f65:	89 8d 5c ff ff ff    	mov    %ecx,-0xa4(%ebp)
 8051f6b:	0f 89 26 f3 ff ff    	jns    8051297 <_svfiprintf_r+0x117>
 8051f71:	c7 85 5c ff ff ff ff 	movl   $0xffffffff,-0xa4(%ebp)
 8051f78:	ff ff ff 
 8051f7b:	89 d0                	mov    %edx,%eax
 8051f7d:	e9 f4 f2 ff ff       	jmp    8051276 <_svfiprintf_r+0xf6>
 8051f82:	8b 45 08             	mov    0x8(%ebp),%eax
 8051f85:	c7 00 0c 00 00 00    	movl   $0xc,(%eax)
 8051f8b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8051f90:	e9 06 fc ff ff       	jmp    8051b9b <_svfiprintf_r+0xa1b>
 8051f95:	66 90                	xchg   %ax,%ax
 8051f97:	66 90                	xchg   %ax,%ax
 8051f99:	66 90                	xchg   %ax,%ax
 8051f9b:	66 90                	xchg   %ax,%ax
 8051f9d:	66 90                	xchg   %ax,%ax
 8051f9f:	90                   	nop

08051fa0 <__sprint_r.part.0>:
 8051fa0:	55                   	push   %ebp
 8051fa1:	89 e5                	mov    %esp,%ebp
 8051fa3:	57                   	push   %edi
 8051fa4:	56                   	push   %esi
 8051fa5:	53                   	push   %ebx
 8051fa6:	83 ec 2c             	sub    $0x2c,%esp
 8051fa9:	f6 42 65 20          	testb  $0x20,0x65(%edx)
 8051fad:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 8051fb0:	89 c8                	mov    %ecx,%eax
 8051fb2:	89 4d dc             	mov    %ecx,-0x24(%ebp)
 8051fb5:	0f 84 a5 00 00 00    	je     8052060 <__sprint_r.part.0+0xc0>
 8051fbb:	8b 40 08             	mov    0x8(%eax),%eax
 8051fbe:	8b 09                	mov    (%ecx),%ecx
 8051fc0:	85 c0                	test   %eax,%eax
 8051fc2:	89 4d d8             	mov    %ecx,-0x28(%ebp)
 8051fc5:	0f 84 8a 00 00 00    	je     8052055 <__sprint_r.part.0+0xb5>
 8051fcb:	89 55 d4             	mov    %edx,-0x2c(%ebp)
 8051fce:	8b 45 d8             	mov    -0x28(%ebp),%eax
 8051fd1:	31 ff                	xor    %edi,%edi
 8051fd3:	8b 58 04             	mov    0x4(%eax),%ebx
 8051fd6:	8b 30                	mov    (%eax),%esi
 8051fd8:	c1 eb 02             	shr    $0x2,%ebx
 8051fdb:	85 db                	test   %ebx,%ebx
 8051fdd:	7e 5c                	jle    805203b <__sprint_r.part.0+0x9b>
 8051fdf:	89 5d e0             	mov    %ebx,-0x20(%ebp)
 8051fe2:	89 f3                	mov    %esi,%ebx
 8051fe4:	89 fe                	mov    %edi,%esi
 8051fe6:	8b 7d d4             	mov    -0x2c(%ebp),%edi
 8051fe9:	eb 0d                	jmp    8051ff8 <__sprint_r.part.0+0x58>
 8051feb:	90                   	nop
 8051fec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8051ff0:	83 c6 01             	add    $0x1,%esi
 8051ff3:	39 75 e0             	cmp    %esi,-0x20(%ebp)
 8051ff6:	74 40                	je     8052038 <__sprint_r.part.0+0x98>
 8051ff8:	89 7c 24 08          	mov    %edi,0x8(%esp)
 8051ffc:	8b 04 b3             	mov    (%ebx,%esi,4),%eax
 8051fff:	89 44 24 04          	mov    %eax,0x4(%esp)
 8052003:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 8052006:	89 04 24             	mov    %eax,(%esp)
 8052009:	e8 b2 13 00 00       	call   80533c0 <_fputwc_r>
 805200e:	83 f8 ff             	cmp    $0xffffffff,%eax
 8052011:	75 dd                	jne    8051ff0 <__sprint_r.part.0+0x50>
 8052013:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8052018:	8b 55 dc             	mov    -0x24(%ebp),%edx
 805201b:	c7 42 08 00 00 00 00 	movl   $0x0,0x8(%edx)
 8052022:	c7 42 04 00 00 00 00 	movl   $0x0,0x4(%edx)
 8052029:	83 c4 2c             	add    $0x2c,%esp
 805202c:	5b                   	pop    %ebx
 805202d:	5e                   	pop    %esi
 805202e:	5f                   	pop    %edi
 805202f:	5d                   	pop    %ebp
 8052030:	c3                   	ret    
 8052031:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 8052038:	8b 5d e0             	mov    -0x20(%ebp),%ebx
 805203b:	8b 4d dc             	mov    -0x24(%ebp),%ecx
 805203e:	c1 e3 02             	shl    $0x2,%ebx
 8052041:	83 45 d8 08          	addl   $0x8,-0x28(%ebp)
 8052045:	8b 41 08             	mov    0x8(%ecx),%eax
 8052048:	29 d8                	sub    %ebx,%eax
 805204a:	85 c0                	test   %eax,%eax
 805204c:	89 41 08             	mov    %eax,0x8(%ecx)
 805204f:	0f 85 79 ff ff ff    	jne    8051fce <__sprint_r.part.0+0x2e>
 8052055:	31 c0                	xor    %eax,%eax
 8052057:	eb bf                	jmp    8052018 <__sprint_r.part.0+0x78>
 8052059:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 8052060:	8b 45 dc             	mov    -0x24(%ebp),%eax
 8052063:	89 54 24 04          	mov    %edx,0x4(%esp)
 8052067:	89 44 24 08          	mov    %eax,0x8(%esp)
 805206b:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 805206e:	89 04 24             	mov    %eax,(%esp)
 8052071:	e8 1a 15 00 00       	call   8053590 <__sfvwrite_r>
 8052076:	eb a0                	jmp    8052018 <__sprint_r.part.0+0x78>
 8052078:	90                   	nop
 8052079:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

08052080 <__sprint_r>:
 8052080:	55                   	push   %ebp
 8052081:	89 e5                	mov    %esp,%ebp
 8052083:	8b 4d 10             	mov    0x10(%ebp),%ecx
 8052086:	8b 45 08             	mov    0x8(%ebp),%eax
 8052089:	8b 55 0c             	mov    0xc(%ebp),%edx
 805208c:	83 79 08 00          	cmpl   $0x0,0x8(%ecx)
 8052090:	74 06                	je     8052098 <__sprint_r+0x18>
 8052092:	5d                   	pop    %ebp
 8052093:	e9 08 ff ff ff       	jmp    8051fa0 <__sprint_r.part.0>
 8052098:	c7 41 04 00 00 00 00 	movl   $0x0,0x4(%ecx)
 805209f:	31 c0                	xor    %eax,%eax
 80520a1:	5d                   	pop    %ebp
 80520a2:	c3                   	ret    
 80520a3:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 80520a9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

080520b0 <_vfiprintf_r>:
 80520b0:	55                   	push   %ebp
 80520b1:	89 e5                	mov    %esp,%ebp
 80520b3:	57                   	push   %edi
 80520b4:	56                   	push   %esi
 80520b5:	53                   	push   %ebx
 80520b6:	81 ec cc 00 00 00    	sub    $0xcc,%esp
 80520bc:	8b 5d 08             	mov    0x8(%ebp),%ebx
 80520bf:	85 db                	test   %ebx,%ebx
 80520c1:	74 0e                	je     80520d1 <_vfiprintf_r+0x21>
 80520c3:	8b 45 08             	mov    0x8(%ebp),%eax
 80520c6:	8b 48 38             	mov    0x38(%eax),%ecx
 80520c9:	85 c9                	test   %ecx,%ecx
 80520cb:	0f 84 c7 01 00 00    	je     8052298 <_vfiprintf_r+0x1e8>
 80520d1:	8b 45 0c             	mov    0xc(%ebp),%eax
 80520d4:	0f b7 40 0c          	movzwl 0xc(%eax),%eax
 80520d8:	f6 c4 20             	test   $0x20,%ah
 80520db:	75 11                	jne    80520ee <_vfiprintf_r+0x3e>
 80520dd:	8b 7d 0c             	mov    0xc(%ebp),%edi
 80520e0:	80 cc 20             	or     $0x20,%ah
 80520e3:	81 67 64 ff df ff ff 	andl   $0xffffdfff,0x64(%edi)
 80520ea:	66 89 47 0c          	mov    %ax,0xc(%edi)
 80520ee:	a8 08                	test   $0x8,%al
 80520f0:	0f 84 3a 01 00 00    	je     8052230 <_vfiprintf_r+0x180>
 80520f6:	8b 7d 0c             	mov    0xc(%ebp),%edi
 80520f9:	8b 57 10             	mov    0x10(%edi),%edx
 80520fc:	85 d2                	test   %edx,%edx
 80520fe:	0f 84 2c 01 00 00    	je     8052230 <_vfiprintf_r+0x180>
 8052104:	83 e0 1a             	and    $0x1a,%eax
 8052107:	66 83 f8 0a          	cmp    $0xa,%ax
 805210b:	0f 84 49 01 00 00    	je     805225a <_vfiprintf_r+0x1aa>
 8052111:	8d 45 a8             	lea    -0x58(%ebp),%eax
 8052114:	8d 7d a7             	lea    -0x59(%ebp),%edi
 8052117:	89 c6                	mov    %eax,%esi
 8052119:	89 85 74 ff ff ff    	mov    %eax,-0x8c(%ebp)
 805211f:	29 f8                	sub    %edi,%eax
 8052121:	c7 85 7c ff ff ff 00 	movl   $0x0,-0x84(%ebp)
 8052128:	00 00 00 
 805212b:	c7 85 78 ff ff ff 00 	movl   $0x0,-0x88(%ebp)
 8052132:	00 00 00 
 8052135:	c7 85 40 ff ff ff 00 	movl   $0x0,-0xc0(%ebp)
 805213c:	00 00 00 
 805213f:	c7 85 50 ff ff ff 00 	movl   $0x0,-0xb0(%ebp)
 8052146:	00 00 00 
 8052149:	89 85 3c ff ff ff    	mov    %eax,-0xc4(%ebp)
 805214f:	8b 45 10             	mov    0x10(%ebp),%eax
 8052152:	8b 5d 10             	mov    0x10(%ebp),%ebx
 8052155:	0f b6 00             	movzbl (%eax),%eax
 8052158:	84 c0                	test   %al,%al
 805215a:	74 5b                	je     80521b7 <_vfiprintf_r+0x107>
 805215c:	3c 25                	cmp    $0x25,%al
 805215e:	75 12                	jne    8052172 <_vfiprintf_r+0xc2>
 8052160:	eb 55                	jmp    80521b7 <_vfiprintf_r+0x107>
 8052162:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 8052168:	84 c0                	test   %al,%al
 805216a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 8052170:	74 0a                	je     805217c <_vfiprintf_r+0xcc>
 8052172:	83 c3 01             	add    $0x1,%ebx
 8052175:	0f b6 03             	movzbl (%ebx),%eax
 8052178:	3c 25                	cmp    $0x25,%al
 805217a:	75 ec                	jne    8052168 <_vfiprintf_r+0xb8>
 805217c:	89 df                	mov    %ebx,%edi
 805217e:	2b 7d 10             	sub    0x10(%ebp),%edi
 8052181:	74 34                	je     80521b7 <_vfiprintf_r+0x107>
 8052183:	8b 45 10             	mov    0x10(%ebp),%eax
 8052186:	83 c6 08             	add    $0x8,%esi
 8052189:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
 805218f:	89 7e fc             	mov    %edi,-0x4(%esi)
 8052192:	89 46 f8             	mov    %eax,-0x8(%esi)
 8052195:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 805219b:	01 fa                	add    %edi,%edx
 805219d:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
 80521a3:	83 c0 01             	add    $0x1,%eax
 80521a6:	83 f8 07             	cmp    $0x7,%eax
 80521a9:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
 80521af:	7f 57                	jg     8052208 <_vfiprintf_r+0x158>
 80521b1:	01 bd 50 ff ff ff    	add    %edi,-0xb0(%ebp)
 80521b7:	80 3b 00             	cmpb   $0x0,(%ebx)
 80521ba:	0f 84 f9 07 00 00    	je     80529b9 <_vfiprintf_r+0x909>
 80521c0:	83 c3 01             	add    $0x1,%ebx
 80521c3:	31 ff                	xor    %edi,%edi
 80521c5:	c6 85 71 ff ff ff 00 	movb   $0x0,-0x8f(%ebp)
 80521cc:	c7 85 5c ff ff ff ff 	movl   $0xffffffff,-0xa4(%ebp)
 80521d3:	ff ff ff 
 80521d6:	c7 85 54 ff ff ff 00 	movl   $0x0,-0xac(%ebp)
 80521dd:	00 00 00 
 80521e0:	c7 85 64 ff ff ff 00 	movl   $0x0,-0x9c(%ebp)
 80521e7:	00 00 00 
 80521ea:	0f be 03             	movsbl (%ebx),%eax
 80521ed:	8d 53 01             	lea    0x1(%ebx),%edx
 80521f0:	8d 48 e0             	lea    -0x20(%eax),%ecx
 80521f3:	83 f9 58             	cmp    $0x58,%ecx
 80521f6:	0f 87 15 06 00 00    	ja     8052811 <_vfiprintf_r+0x761>
 80521fc:	ff 24 8d 8c 4f 05 08 	jmp    *0x8054f8c(,%ecx,4)
 8052203:	90                   	nop
 8052204:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8052208:	85 d2                	test   %edx,%edx
 805220a:	0f 85 e8 0b 00 00    	jne    8052df8 <_vfiprintf_r+0xd48>
 8052210:	c7 85 78 ff ff ff 00 	movl   $0x0,-0x88(%ebp)
 8052217:	00 00 00 
 805221a:	8d 75 a8             	lea    -0x58(%ebp),%esi
 805221d:	eb 92                	jmp    80521b1 <_vfiprintf_r+0x101>
 805221f:	90                   	nop
 8052220:	83 8d 64 ff ff ff 10 	orl    $0x10,-0x9c(%ebp)
 8052227:	89 d3                	mov    %edx,%ebx
 8052229:	eb bf                	jmp    80521ea <_vfiprintf_r+0x13a>
 805222b:	90                   	nop
 805222c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8052230:	8b 45 0c             	mov    0xc(%ebp),%eax
 8052233:	89 44 24 04          	mov    %eax,0x4(%esp)
 8052237:	8b 45 08             	mov    0x8(%ebp),%eax
 805223a:	89 04 24             	mov    %eax,(%esp)
 805223d:	e8 5e b2 ff ff       	call   804d4a0 <__swsetup_r>
 8052242:	85 c0                	test   %eax,%eax
 8052244:	75 42                	jne    8052288 <_vfiprintf_r+0x1d8>
 8052246:	8b 45 0c             	mov    0xc(%ebp),%eax
 8052249:	0f b7 40 0c          	movzwl 0xc(%eax),%eax
 805224d:	83 e0 1a             	and    $0x1a,%eax
 8052250:	66 83 f8 0a          	cmp    $0xa,%ax
 8052254:	0f 85 b7 fe ff ff    	jne    8052111 <_vfiprintf_r+0x61>
 805225a:	8b 45 0c             	mov    0xc(%ebp),%eax
 805225d:	66 83 78 0e 00       	cmpw   $0x0,0xe(%eax)
 8052262:	0f 88 a9 fe ff ff    	js     8052111 <_vfiprintf_r+0x61>
 8052268:	8b 45 14             	mov    0x14(%ebp),%eax
 805226b:	8b 4d 10             	mov    0x10(%ebp),%ecx
 805226e:	8b 55 0c             	mov    0xc(%ebp),%edx
 8052271:	89 04 24             	mov    %eax,(%esp)
 8052274:	8b 45 08             	mov    0x8(%ebp),%eax
 8052277:	e8 04 0e 00 00       	call   8053080 <__sbprintf>
 805227c:	81 c4 cc 00 00 00    	add    $0xcc,%esp
 8052282:	5b                   	pop    %ebx
 8052283:	5e                   	pop    %esi
 8052284:	5f                   	pop    %edi
 8052285:	5d                   	pop    %ebp
 8052286:	c3                   	ret    
 8052287:	90                   	nop
 8052288:	81 c4 cc 00 00 00    	add    $0xcc,%esp
 805228e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8052293:	5b                   	pop    %ebx
 8052294:	5e                   	pop    %esi
 8052295:	5f                   	pop    %edi
 8052296:	5d                   	pop    %ebp
 8052297:	c3                   	ret    
 8052298:	89 04 24             	mov    %eax,(%esp)
 805229b:	e8 70 ca ff ff       	call   804ed10 <__sinit>
 80522a0:	e9 2c fe ff ff       	jmp    80520d1 <_vfiprintf_r+0x21>
 80522a5:	8b 45 14             	mov    0x14(%ebp),%eax
 80522a8:	8b 4d 14             	mov    0x14(%ebp),%ecx
 80522ab:	8b 00                	mov    (%eax),%eax
 80522ad:	83 c1 04             	add    $0x4,%ecx
 80522b0:	89 4d 14             	mov    %ecx,0x14(%ebp)
 80522b3:	85 c0                	test   %eax,%eax
 80522b5:	89 85 54 ff ff ff    	mov    %eax,-0xac(%ebp)
 80522bb:	0f 89 66 ff ff ff    	jns    8052227 <_vfiprintf_r+0x177>
 80522c1:	f7 9d 54 ff ff ff    	negl   -0xac(%ebp)
 80522c7:	83 8d 64 ff ff ff 04 	orl    $0x4,-0x9c(%ebp)
 80522ce:	89 d3                	mov    %edx,%ebx
 80522d0:	e9 15 ff ff ff       	jmp    80521ea <_vfiprintf_r+0x13a>
 80522d5:	bf 2b 00 00 00       	mov    $0x2b,%edi
 80522da:	89 d3                	mov    %edx,%ebx
 80522dc:	e9 09 ff ff ff       	jmp    80521ea <_vfiprintf_r+0x13a>
 80522e1:	8b 45 14             	mov    0x14(%ebp),%eax
 80522e4:	83 8d 64 ff ff ff 02 	orl    $0x2,-0x9c(%ebp)
 80522eb:	89 55 10             	mov    %edx,0x10(%ebp)
 80522ee:	ba 02 00 00 00       	mov    $0x2,%edx
 80522f3:	8b 08                	mov    (%eax),%ecx
 80522f5:	83 c0 04             	add    $0x4,%eax
 80522f8:	c6 85 72 ff ff ff 30 	movb   $0x30,-0x8e(%ebp)
 80522ff:	c6 85 73 ff ff ff 78 	movb   $0x78,-0x8d(%ebp)
 8052306:	89 45 14             	mov    %eax,0x14(%ebp)
 8052309:	c7 85 40 ff ff ff 2d 	movl   $0x805492d,-0xc0(%ebp)
 8052310:	49 05 08 
 8052313:	90                   	nop
 8052314:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8052318:	c6 85 71 ff ff ff 00 	movb   $0x0,-0x8f(%ebp)
 805231f:	31 ff                	xor    %edi,%edi
 8052321:	8b 9d 64 ff ff ff    	mov    -0x9c(%ebp),%ebx
 8052327:	89 d8                	mov    %ebx,%eax
 8052329:	24 7f                	and    $0x7f,%al
 805232b:	83 bd 5c ff ff ff 00 	cmpl   $0x0,-0xa4(%ebp)
 8052332:	0f 48 c3             	cmovs  %ebx,%eax
 8052335:	89 85 64 ff ff ff    	mov    %eax,-0x9c(%ebp)
 805233b:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
 8052341:	85 c0                	test   %eax,%eax
 8052343:	75 08                	jne    805234d <_vfiprintf_r+0x29d>
 8052345:	85 c9                	test   %ecx,%ecx
 8052347:	0f 84 8b 08 00 00    	je     8052bd8 <_vfiprintf_r+0xb28>
 805234d:	80 fa 01             	cmp    $0x1,%dl
 8052350:	0f 84 52 0a 00 00    	je     8052da8 <_vfiprintf_r+0xcf8>
 8052356:	80 fa 02             	cmp    $0x2,%dl
 8052359:	8d 45 a8             	lea    -0x58(%ebp),%eax
 805235c:	0f 85 ee 09 00 00    	jne    8052d50 <_vfiprintf_r+0xca0>
 8052362:	8b 9d 40 ff ff ff    	mov    -0xc0(%ebp),%ebx
 8052368:	89 ca                	mov    %ecx,%edx
 805236a:	83 e8 01             	sub    $0x1,%eax
 805236d:	83 e2 0f             	and    $0xf,%edx
 8052370:	0f b6 14 13          	movzbl (%ebx,%edx,1),%edx
 8052374:	c1 e9 04             	shr    $0x4,%ecx
 8052377:	85 c9                	test   %ecx,%ecx
 8052379:	88 10                	mov    %dl,(%eax)
 805237b:	75 eb                	jne    8052368 <_vfiprintf_r+0x2b8>
 805237d:	8d 4d a8             	lea    -0x58(%ebp),%ecx
 8052380:	29 c1                	sub    %eax,%ecx
 8052382:	89 85 44 ff ff ff    	mov    %eax,-0xbc(%ebp)
 8052388:	89 8d 58 ff ff ff    	mov    %ecx,-0xa8(%ebp)
 805238e:	66 90                	xchg   %ax,%ax
 8052390:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
 8052396:	8b 8d 58 ff ff ff    	mov    -0xa8(%ebp),%ecx
 805239c:	39 c1                	cmp    %eax,%ecx
 805239e:	0f 4d c1             	cmovge %ecx,%eax
 80523a1:	89 85 60 ff ff ff    	mov    %eax,-0xa0(%ebp)
 80523a7:	89 f8                	mov    %edi,%eax
 80523a9:	3c 01                	cmp    $0x1,%al
 80523ab:	83 9d 60 ff ff ff ff 	sbbl   $0xffffffff,-0xa0(%ebp)
 80523b2:	8b 9d 60 ff ff ff    	mov    -0xa0(%ebp),%ebx
 80523b8:	8b 8d 64 ff ff ff    	mov    -0x9c(%ebp),%ecx
 80523be:	89 d8                	mov    %ebx,%eax
 80523c0:	89 cf                	mov    %ecx,%edi
 80523c2:	83 c0 02             	add    $0x2,%eax
 80523c5:	83 e7 02             	and    $0x2,%edi
 80523c8:	89 bd 4c ff ff ff    	mov    %edi,-0xb4(%ebp)
 80523ce:	89 cf                	mov    %ecx,%edi
 80523d0:	0f 44 c3             	cmove  %ebx,%eax
 80523d3:	81 e7 84 00 00 00    	and    $0x84,%edi
 80523d9:	89 85 60 ff ff ff    	mov    %eax,-0xa0(%ebp)
 80523df:	89 bd 48 ff ff ff    	mov    %edi,-0xb8(%ebp)
 80523e5:	0f 85 b5 04 00 00    	jne    80528a0 <_vfiprintf_r+0x7f0>
 80523eb:	8b 9d 54 ff ff ff    	mov    -0xac(%ebp),%ebx
 80523f1:	2b 9d 60 ff ff ff    	sub    -0xa0(%ebp),%ebx
 80523f7:	85 db                	test   %ebx,%ebx
 80523f9:	0f 8e a1 04 00 00    	jle    80528a0 <_vfiprintf_r+0x7f0>
 80523ff:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 8052405:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
 805240b:	83 c0 01             	add    $0x1,%eax
 805240e:	83 fb 10             	cmp    $0x10,%ebx
 8052411:	7e 5b                	jle    805246e <_vfiprintf_r+0x3be>
 8052413:	8b bd 78 ff ff ff    	mov    -0x88(%ebp),%edi
 8052419:	eb 15                	jmp    8052430 <_vfiprintf_r+0x380>
 805241b:	90                   	nop
 805241c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8052420:	8d 47 02             	lea    0x2(%edi),%eax
 8052423:	83 c6 08             	add    $0x8,%esi
 8052426:	89 cf                	mov    %ecx,%edi
 8052428:	83 eb 10             	sub    $0x10,%ebx
 805242b:	83 fb 10             	cmp    $0x10,%ebx
 805242e:	7e 3e                	jle    805246e <_vfiprintf_r+0x3be>
 8052430:	8d 4f 01             	lea    0x1(%edi),%ecx
 8052433:	83 c2 10             	add    $0x10,%edx
 8052436:	83 f9 07             	cmp    $0x7,%ecx
 8052439:	c7 06 00 51 05 08    	movl   $0x8055100,(%esi)
 805243f:	c7 46 04 10 00 00 00 	movl   $0x10,0x4(%esi)
 8052446:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
 805244c:	89 8d 78 ff ff ff    	mov    %ecx,-0x88(%ebp)
 8052452:	7e cc                	jle    8052420 <_vfiprintf_r+0x370>
 8052454:	85 d2                	test   %edx,%edx
 8052456:	0f 85 14 04 00 00    	jne    8052870 <_vfiprintf_r+0x7c0>
 805245c:	83 eb 10             	sub    $0x10,%ebx
 805245f:	31 ff                	xor    %edi,%edi
 8052461:	83 fb 10             	cmp    $0x10,%ebx
 8052464:	b8 01 00 00 00       	mov    $0x1,%eax
 8052469:	8d 75 a8             	lea    -0x58(%ebp),%esi
 805246c:	7f c2                	jg     8052430 <_vfiprintf_r+0x380>
 805246e:	01 da                	add    %ebx,%edx
 8052470:	83 f8 07             	cmp    $0x7,%eax
 8052473:	c7 06 00 51 05 08    	movl   $0x8055100,(%esi)
 8052479:	89 5e 04             	mov    %ebx,0x4(%esi)
 805247c:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
 8052482:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
 8052488:	0f 8f 02 09 00 00    	jg     8052d90 <_vfiprintf_r+0xce0>
 805248e:	83 c6 08             	add    $0x8,%esi
 8052491:	8d 48 01             	lea    0x1(%eax),%ecx
 8052494:	e9 16 04 00 00       	jmp    80528af <_vfiprintf_r+0x7ff>
 8052499:	8b 45 14             	mov    0x14(%ebp),%eax
 805249c:	89 55 10             	mov    %edx,0x10(%ebp)
 805249f:	c6 85 71 ff ff ff 00 	movb   $0x0,-0x8f(%ebp)
 80524a6:	8d 58 04             	lea    0x4(%eax),%ebx
 80524a9:	8b 00                	mov    (%eax),%eax
 80524ab:	85 c0                	test   %eax,%eax
 80524ad:	89 85 44 ff ff ff    	mov    %eax,-0xbc(%ebp)
 80524b3:	0f 84 e9 0a 00 00    	je     8052fa2 <_vfiprintf_r+0xef2>
 80524b9:	8b bd 5c ff ff ff    	mov    -0xa4(%ebp),%edi
 80524bf:	85 ff                	test   %edi,%edi
 80524c1:	0f 88 7e 0a 00 00    	js     8052f45 <_vfiprintf_r+0xe95>
 80524c7:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
 80524cd:	89 7c 24 08          	mov    %edi,0x8(%esp)
 80524d1:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 80524d8:	00 
 80524d9:	89 04 24             	mov    %eax,(%esp)
 80524dc:	e8 6f d9 ff ff       	call   804fe50 <memchr>
 80524e1:	85 c0                	test   %eax,%eax
 80524e3:	0f 84 f0 0a 00 00    	je     8052fd9 <_vfiprintf_r+0xf29>
 80524e9:	2b 85 44 ff ff ff    	sub    -0xbc(%ebp),%eax
 80524ef:	89 5d 14             	mov    %ebx,0x14(%ebp)
 80524f2:	c7 85 5c ff ff ff 00 	movl   $0x0,-0xa4(%ebp)
 80524f9:	00 00 00 
 80524fc:	39 f8                	cmp    %edi,%eax
 80524fe:	0f 4f c7             	cmovg  %edi,%eax
 8052501:	0f b6 bd 71 ff ff ff 	movzbl -0x8f(%ebp),%edi
 8052508:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
 805250e:	e9 7d fe ff ff       	jmp    8052390 <_vfiprintf_r+0x2e0>
 8052513:	83 8d 64 ff ff ff 40 	orl    $0x40,-0x9c(%ebp)
 805251a:	89 d3                	mov    %edx,%ebx
 805251c:	e9 c9 fc ff ff       	jmp    80521ea <_vfiprintf_r+0x13a>
 8052521:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
 8052528:	89 f9                	mov    %edi,%ecx
 805252a:	89 55 10             	mov    %edx,0x10(%ebp)
 805252d:	8b 7d 14             	mov    0x14(%ebp),%edi
 8052530:	88 8d 71 ff ff ff    	mov    %cl,-0x8f(%ebp)
 8052536:	c7 85 40 ff ff ff 2d 	movl   $0x805492d,-0xc0(%ebp)
 805253d:	49 05 08 
 8052540:	0f 85 44 01 00 00    	jne    805268a <_vfiprintf_r+0x5da>
 8052546:	f6 85 64 ff ff ff 40 	testb  $0x40,-0x9c(%ebp)
 805254d:	0f 84 37 01 00 00    	je     805268a <_vfiprintf_r+0x5da>
 8052553:	0f b7 0f             	movzwl (%edi),%ecx
 8052556:	83 c7 04             	add    $0x4,%edi
 8052559:	89 7d 14             	mov    %edi,0x14(%ebp)
 805255c:	f6 85 64 ff ff ff 01 	testb  $0x1,-0x9c(%ebp)
 8052563:	ba 02 00 00 00       	mov    $0x2,%edx
 8052568:	0f 84 aa fd ff ff    	je     8052318 <_vfiprintf_r+0x268>
 805256e:	85 c9                	test   %ecx,%ecx
 8052570:	0f 84 a2 fd ff ff    	je     8052318 <_vfiprintf_r+0x268>
 8052576:	c6 85 72 ff ff ff 30 	movb   $0x30,-0x8e(%ebp)
 805257d:	88 85 73 ff ff ff    	mov    %al,-0x8d(%ebp)
 8052583:	83 8d 64 ff ff ff 02 	orl    $0x2,-0x9c(%ebp)
 805258a:	e9 89 fd ff ff       	jmp    8052318 <_vfiprintf_r+0x268>
 805258f:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
 8052596:	89 f8                	mov    %edi,%eax
 8052598:	89 55 10             	mov    %edx,0x10(%ebp)
 805259b:	88 85 71 ff ff ff    	mov    %al,-0x8f(%ebp)
 80525a1:	0f 85 a9 02 00 00    	jne    8052850 <_vfiprintf_r+0x7a0>
 80525a7:	f6 85 64 ff ff ff 40 	testb  $0x40,-0x9c(%ebp)
 80525ae:	0f 84 9c 02 00 00    	je     8052850 <_vfiprintf_r+0x7a0>
 80525b4:	8b 45 14             	mov    0x14(%ebp),%eax
 80525b7:	0f b7 bd 50 ff ff ff 	movzwl -0xb0(%ebp),%edi
 80525be:	8b 00                	mov    (%eax),%eax
 80525c0:	66 89 38             	mov    %di,(%eax)
 80525c3:	8b 45 14             	mov    0x14(%ebp),%eax
 80525c6:	83 c0 04             	add    $0x4,%eax
 80525c9:	89 45 14             	mov    %eax,0x14(%ebp)
 80525cc:	e9 7e fb ff ff       	jmp    805214f <_vfiprintf_r+0x9f>
 80525d1:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
 80525d8:	89 55 10             	mov    %edx,0x10(%ebp)
 80525db:	8b 45 14             	mov    0x14(%ebp),%eax
 80525de:	75 73                	jne    8052653 <_vfiprintf_r+0x5a3>
 80525e0:	f6 85 64 ff ff ff 40 	testb  $0x40,-0x9c(%ebp)
 80525e7:	74 6a                	je     8052653 <_vfiprintf_r+0x5a3>
 80525e9:	0f b7 08             	movzwl (%eax),%ecx
 80525ec:	83 c0 04             	add    $0x4,%eax
 80525ef:	ba 01 00 00 00       	mov    $0x1,%edx
 80525f4:	89 45 14             	mov    %eax,0x14(%ebp)
 80525f7:	e9 1c fd ff ff       	jmp    8052318 <_vfiprintf_r+0x268>
 80525fc:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
 8052603:	89 55 10             	mov    %edx,0x10(%ebp)
 8052606:	8b 45 14             	mov    0x14(%ebp),%eax
 8052609:	0f 85 f3 01 00 00    	jne    8052802 <_vfiprintf_r+0x752>
 805260f:	f6 85 64 ff ff ff 40 	testb  $0x40,-0x9c(%ebp)
 8052616:	0f 84 e6 01 00 00    	je     8052802 <_vfiprintf_r+0x752>
 805261c:	0f b7 08             	movzwl (%eax),%ecx
 805261f:	83 c0 04             	add    $0x4,%eax
 8052622:	31 d2                	xor    %edx,%edx
 8052624:	89 45 14             	mov    %eax,0x14(%ebp)
 8052627:	e9 ec fc ff ff       	jmp    8052318 <_vfiprintf_r+0x268>
 805262c:	81 8d 64 ff ff ff 80 	orl    $0x80,-0x9c(%ebp)
 8052633:	00 00 00 
 8052636:	89 d3                	mov    %edx,%ebx
 8052638:	e9 ad fb ff ff       	jmp    80521ea <_vfiprintf_r+0x13a>
 805263d:	83 8d 64 ff ff ff 10 	orl    $0x10,-0x9c(%ebp)
 8052644:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
 805264b:	89 55 10             	mov    %edx,0x10(%ebp)
 805264e:	8b 45 14             	mov    0x14(%ebp),%eax
 8052651:	74 8d                	je     80525e0 <_vfiprintf_r+0x530>
 8052653:	8b 08                	mov    (%eax),%ecx
 8052655:	83 c0 04             	add    $0x4,%eax
 8052658:	ba 01 00 00 00       	mov    $0x1,%edx
 805265d:	89 45 14             	mov    %eax,0x14(%ebp)
 8052660:	e9 b3 fc ff ff       	jmp    8052318 <_vfiprintf_r+0x268>
 8052665:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
 805266c:	89 f9                	mov    %edi,%ecx
 805266e:	89 55 10             	mov    %edx,0x10(%ebp)
 8052671:	8b 7d 14             	mov    0x14(%ebp),%edi
 8052674:	88 8d 71 ff ff ff    	mov    %cl,-0x8f(%ebp)
 805267a:	c7 85 40 ff ff ff 1c 	movl   $0x805491c,-0xc0(%ebp)
 8052681:	49 05 08 
 8052684:	0f 84 bc fe ff ff    	je     8052546 <_vfiprintf_r+0x496>
 805268a:	8b 0f                	mov    (%edi),%ecx
 805268c:	83 c7 04             	add    $0x4,%edi
 805268f:	89 7d 14             	mov    %edi,0x14(%ebp)
 8052692:	e9 c5 fe ff ff       	jmp    805255c <_vfiprintf_r+0x4ac>
 8052697:	8b 45 14             	mov    0x14(%ebp),%eax
 805269a:	89 55 10             	mov    %edx,0x10(%ebp)
 805269d:	c6 85 71 ff ff ff 00 	movb   $0x0,-0x8f(%ebp)
 80526a4:	c7 85 60 ff ff ff 01 	movl   $0x1,-0xa0(%ebp)
 80526ab:	00 00 00 
 80526ae:	8b 00                	mov    (%eax),%eax
 80526b0:	c7 85 58 ff ff ff 01 	movl   $0x1,-0xa8(%ebp)
 80526b7:	00 00 00 
 80526ba:	88 45 80             	mov    %al,-0x80(%ebp)
 80526bd:	8b 45 14             	mov    0x14(%ebp),%eax
 80526c0:	83 c0 04             	add    $0x4,%eax
 80526c3:	89 45 14             	mov    %eax,0x14(%ebp)
 80526c6:	8d 45 80             	lea    -0x80(%ebp),%eax
 80526c9:	89 85 44 ff ff ff    	mov    %eax,-0xbc(%ebp)
 80526cf:	c7 85 5c ff ff ff 00 	movl   $0x0,-0xa4(%ebp)
 80526d6:	00 00 00 
 80526d9:	e9 d4 fc ff ff       	jmp    80523b2 <_vfiprintf_r+0x302>
 80526de:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
 80526e5:	89 f8                	mov    %edi,%eax
 80526e7:	88 85 71 ff ff ff    	mov    %al,-0x8f(%ebp)
 80526ed:	8b 45 14             	mov    0x14(%ebp),%eax
 80526f0:	89 55 10             	mov    %edx,0x10(%ebp)
 80526f3:	0f 85 bd 00 00 00    	jne    80527b6 <_vfiprintf_r+0x706>
 80526f9:	f6 85 64 ff ff ff 40 	testb  $0x40,-0x9c(%ebp)
 8052700:	0f 84 b0 00 00 00    	je     80527b6 <_vfiprintf_r+0x706>
 8052706:	0f bf 08             	movswl (%eax),%ecx
 8052709:	83 c0 04             	add    $0x4,%eax
 805270c:	89 45 14             	mov    %eax,0x14(%ebp)
 805270f:	85 c9                	test   %ecx,%ecx
 8052711:	0f 88 e6 07 00 00    	js     8052efd <_vfiprintf_r+0xe4d>
 8052717:	0f b6 bd 71 ff ff ff 	movzbl -0x8f(%ebp),%edi
 805271e:	ba 01 00 00 00       	mov    $0x1,%edx
 8052723:	e9 f9 fb ff ff       	jmp    8052321 <_vfiprintf_r+0x271>
 8052728:	89 f8                	mov    %edi,%eax
 805272a:	89 d3                	mov    %edx,%ebx
 805272c:	84 c0                	test   %al,%al
 805272e:	b8 20 00 00 00       	mov    $0x20,%eax
 8052733:	0f 44 f8             	cmove  %eax,%edi
 8052736:	e9 af fa ff ff       	jmp    80521ea <_vfiprintf_r+0x13a>
 805273b:	83 8d 64 ff ff ff 01 	orl    $0x1,-0x9c(%ebp)
 8052742:	89 d3                	mov    %edx,%ebx
 8052744:	e9 a1 fa ff ff       	jmp    80521ea <_vfiprintf_r+0x13a>
 8052749:	0f be 02             	movsbl (%edx),%eax
 805274c:	8d 5a 01             	lea    0x1(%edx),%ebx
 805274f:	83 f8 2a             	cmp    $0x2a,%eax
 8052752:	0f 84 be 08 00 00    	je     8053016 <_vfiprintf_r+0xf66>
 8052758:	8d 48 d0             	lea    -0x30(%eax),%ecx
 805275b:	31 d2                	xor    %edx,%edx
 805275d:	83 f9 09             	cmp    $0x9,%ecx
 8052760:	0f 87 9f 08 00 00    	ja     8053005 <_vfiprintf_r+0xf55>
 8052766:	66 90                	xchg   %ax,%ax
 8052768:	8d 04 92             	lea    (%edx,%edx,4),%eax
 805276b:	83 c3 01             	add    $0x1,%ebx
 805276e:	8d 14 41             	lea    (%ecx,%eax,2),%edx
 8052771:	0f be 43 ff          	movsbl -0x1(%ebx),%eax
 8052775:	8d 48 d0             	lea    -0x30(%eax),%ecx
 8052778:	83 f9 09             	cmp    $0x9,%ecx
 805277b:	76 eb                	jbe    8052768 <_vfiprintf_r+0x6b8>
 805277d:	85 d2                	test   %edx,%edx
 805277f:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
 8052784:	0f 48 d1             	cmovs  %ecx,%edx
 8052787:	89 95 5c ff ff ff    	mov    %edx,-0xa4(%ebp)
 805278d:	89 da                	mov    %ebx,%edx
 805278f:	e9 5c fa ff ff       	jmp    80521f0 <_vfiprintf_r+0x140>
 8052794:	83 8d 64 ff ff ff 10 	orl    $0x10,-0x9c(%ebp)
 805279b:	89 f8                	mov    %edi,%eax
 805279d:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
 80527a4:	88 85 71 ff ff ff    	mov    %al,-0x8f(%ebp)
 80527aa:	8b 45 14             	mov    0x14(%ebp),%eax
 80527ad:	89 55 10             	mov    %edx,0x10(%ebp)
 80527b0:	0f 84 43 ff ff ff    	je     80526f9 <_vfiprintf_r+0x649>
 80527b6:	8b 08                	mov    (%eax),%ecx
 80527b8:	83 c0 04             	add    $0x4,%eax
 80527bb:	89 45 14             	mov    %eax,0x14(%ebp)
 80527be:	e9 4c ff ff ff       	jmp    805270f <_vfiprintf_r+0x65f>
 80527c3:	31 db                	xor    %ebx,%ebx
 80527c5:	8d 48 d0             	lea    -0x30(%eax),%ecx
 80527c8:	8d 04 9b             	lea    (%ebx,%ebx,4),%eax
 80527cb:	83 c2 01             	add    $0x1,%edx
 80527ce:	8d 1c 41             	lea    (%ecx,%eax,2),%ebx
 80527d1:	0f be 42 ff          	movsbl -0x1(%edx),%eax
 80527d5:	8d 48 d0             	lea    -0x30(%eax),%ecx
 80527d8:	83 f9 09             	cmp    $0x9,%ecx
 80527db:	76 eb                	jbe    80527c8 <_vfiprintf_r+0x718>
 80527dd:	89 9d 54 ff ff ff    	mov    %ebx,-0xac(%ebp)
 80527e3:	e9 08 fa ff ff       	jmp    80521f0 <_vfiprintf_r+0x140>
 80527e8:	83 8d 64 ff ff ff 10 	orl    $0x10,-0x9c(%ebp)
 80527ef:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
 80527f6:	89 55 10             	mov    %edx,0x10(%ebp)
 80527f9:	8b 45 14             	mov    0x14(%ebp),%eax
 80527fc:	0f 84 0d fe ff ff    	je     805260f <_vfiprintf_r+0x55f>
 8052802:	8b 08                	mov    (%eax),%ecx
 8052804:	83 c0 04             	add    $0x4,%eax
 8052807:	31 d2                	xor    %edx,%edx
 8052809:	89 45 14             	mov    %eax,0x14(%ebp)
 805280c:	e9 07 fb ff ff       	jmp    8052318 <_vfiprintf_r+0x268>
 8052811:	89 f9                	mov    %edi,%ecx
 8052813:	85 c0                	test   %eax,%eax
 8052815:	89 55 10             	mov    %edx,0x10(%ebp)
 8052818:	88 8d 71 ff ff ff    	mov    %cl,-0x8f(%ebp)
 805281e:	0f 84 95 01 00 00    	je     80529b9 <_vfiprintf_r+0x909>
 8052824:	88 45 80             	mov    %al,-0x80(%ebp)
 8052827:	8d 45 80             	lea    -0x80(%ebp),%eax
 805282a:	c6 85 71 ff ff ff 00 	movb   $0x0,-0x8f(%ebp)
 8052831:	c7 85 60 ff ff ff 01 	movl   $0x1,-0xa0(%ebp)
 8052838:	00 00 00 
 805283b:	c7 85 58 ff ff ff 01 	movl   $0x1,-0xa8(%ebp)
 8052842:	00 00 00 
 8052845:	89 85 44 ff ff ff    	mov    %eax,-0xbc(%ebp)
 805284b:	e9 7f fe ff ff       	jmp    80526cf <_vfiprintf_r+0x61f>
 8052850:	8b 45 14             	mov    0x14(%ebp),%eax
 8052853:	8b bd 50 ff ff ff    	mov    -0xb0(%ebp),%edi
 8052859:	8b 00                	mov    (%eax),%eax
 805285b:	89 38                	mov    %edi,(%eax)
 805285d:	8b 45 14             	mov    0x14(%ebp),%eax
 8052860:	83 c0 04             	add    $0x4,%eax
 8052863:	89 45 14             	mov    %eax,0x14(%ebp)
 8052866:	e9 e4 f8 ff ff       	jmp    805214f <_vfiprintf_r+0x9f>
 805286b:	90                   	nop
 805286c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8052870:	8b 55 0c             	mov    0xc(%ebp),%edx
 8052873:	8d 8d 74 ff ff ff    	lea    -0x8c(%ebp),%ecx
 8052879:	8b 45 08             	mov    0x8(%ebp),%eax
 805287c:	e8 1f f7 ff ff       	call   8051fa0 <__sprint_r.part.0>
 8052881:	85 c0                	test   %eax,%eax
 8052883:	0f 85 4f 01 00 00    	jne    80529d8 <_vfiprintf_r+0x928>
 8052889:	8b bd 78 ff ff ff    	mov    -0x88(%ebp),%edi
 805288f:	8d 75 a8             	lea    -0x58(%ebp),%esi
 8052892:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
 8052898:	8d 47 01             	lea    0x1(%edi),%eax
 805289b:	e9 88 fb ff ff       	jmp    8052428 <_vfiprintf_r+0x378>
 80528a0:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 80528a6:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
 80528ac:	8d 48 01             	lea    0x1(%eax),%ecx
 80528af:	80 bd 71 ff ff ff 00 	cmpb   $0x0,-0x8f(%ebp)
 80528b6:	74 2f                	je     80528e7 <_vfiprintf_r+0x837>
 80528b8:	83 c2 01             	add    $0x1,%edx
 80528bb:	83 f9 07             	cmp    $0x7,%ecx
 80528be:	8d 85 71 ff ff ff    	lea    -0x8f(%ebp),%eax
 80528c4:	89 06                	mov    %eax,(%esi)
 80528c6:	c7 46 04 01 00 00 00 	movl   $0x1,0x4(%esi)
 80528cd:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
 80528d3:	89 8d 78 ff ff ff    	mov    %ecx,-0x88(%ebp)
 80528d9:	0f 8f 41 04 00 00    	jg     8052d20 <_vfiprintf_r+0xc70>
 80528df:	89 c8                	mov    %ecx,%eax
 80528e1:	83 c6 08             	add    $0x8,%esi
 80528e4:	83 c1 01             	add    $0x1,%ecx
 80528e7:	8b 9d 4c ff ff ff    	mov    -0xb4(%ebp),%ebx
 80528ed:	85 db                	test   %ebx,%ebx
 80528ef:	74 2f                	je     8052920 <_vfiprintf_r+0x870>
 80528f1:	83 c2 02             	add    $0x2,%edx
 80528f4:	83 f9 07             	cmp    $0x7,%ecx
 80528f7:	8d 85 72 ff ff ff    	lea    -0x8e(%ebp),%eax
 80528fd:	89 06                	mov    %eax,(%esi)
 80528ff:	c7 46 04 02 00 00 00 	movl   $0x2,0x4(%esi)
 8052906:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
 805290c:	89 8d 78 ff ff ff    	mov    %ecx,-0x88(%ebp)
 8052912:	0f 8f 20 04 00 00    	jg     8052d38 <_vfiprintf_r+0xc88>
 8052918:	89 c8                	mov    %ecx,%eax
 805291a:	83 c6 08             	add    $0x8,%esi
 805291d:	83 c1 01             	add    $0x1,%ecx
 8052920:	81 bd 48 ff ff ff 80 	cmpl   $0x80,-0xb8(%ebp)
 8052927:	00 00 00 
 805292a:	0f 84 28 03 00 00    	je     8052c58 <_vfiprintf_r+0xba8>
 8052930:	8b 9d 5c ff ff ff    	mov    -0xa4(%ebp),%ebx
 8052936:	2b 9d 58 ff ff ff    	sub    -0xa8(%ebp),%ebx
 805293c:	85 db                	test   %ebx,%ebx
 805293e:	7f 13                	jg     8052953 <_vfiprintf_r+0x8a3>
 8052940:	e9 db 00 00 00       	jmp    8052a20 <_vfiprintf_r+0x970>
 8052945:	8d 76 00             	lea    0x0(%esi),%esi
 8052948:	8d 48 02             	lea    0x2(%eax),%ecx
 805294b:	83 c6 08             	add    $0x8,%esi
 805294e:	89 f8                	mov    %edi,%eax
 8052950:	83 eb 10             	sub    $0x10,%ebx
 8052953:	83 fb 10             	cmp    $0x10,%ebx
 8052956:	c7 06 f0 50 05 08    	movl   $0x80550f0,(%esi)
 805295c:	0f 8e 4e 02 00 00    	jle    8052bb0 <_vfiprintf_r+0xb00>
 8052962:	8d 78 01             	lea    0x1(%eax),%edi
 8052965:	83 c2 10             	add    $0x10,%edx
 8052968:	83 ff 07             	cmp    $0x7,%edi
 805296b:	c7 46 04 10 00 00 00 	movl   $0x10,0x4(%esi)
 8052972:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
 8052978:	89 bd 78 ff ff ff    	mov    %edi,-0x88(%ebp)
 805297e:	7e c8                	jle    8052948 <_vfiprintf_r+0x898>
 8052980:	85 d2                	test   %edx,%edx
 8052982:	75 0c                	jne    8052990 <_vfiprintf_r+0x8e0>
 8052984:	b9 01 00 00 00       	mov    $0x1,%ecx
 8052989:	31 c0                	xor    %eax,%eax
 805298b:	8d 75 a8             	lea    -0x58(%ebp),%esi
 805298e:	eb c0                	jmp    8052950 <_vfiprintf_r+0x8a0>
 8052990:	8b 55 0c             	mov    0xc(%ebp),%edx
 8052993:	8d 8d 74 ff ff ff    	lea    -0x8c(%ebp),%ecx
 8052999:	8b 45 08             	mov    0x8(%ebp),%eax
 805299c:	e8 ff f5 ff ff       	call   8051fa0 <__sprint_r.part.0>
 80529a1:	85 c0                	test   %eax,%eax
 80529a3:	75 33                	jne    80529d8 <_vfiprintf_r+0x928>
 80529a5:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 80529ab:	8d 75 a8             	lea    -0x58(%ebp),%esi
 80529ae:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
 80529b4:	8d 48 01             	lea    0x1(%eax),%ecx
 80529b7:	eb 97                	jmp    8052950 <_vfiprintf_r+0x8a0>
 80529b9:	8b 85 7c ff ff ff    	mov    -0x84(%ebp),%eax
 80529bf:	85 c0                	test   %eax,%eax
 80529c1:	74 15                	je     80529d8 <_vfiprintf_r+0x928>
 80529c3:	8b 55 0c             	mov    0xc(%ebp),%edx
 80529c6:	8d 8d 74 ff ff ff    	lea    -0x8c(%ebp),%ecx
 80529cc:	8b 45 08             	mov    0x8(%ebp),%eax
 80529cf:	e8 cc f5 ff ff       	call   8051fa0 <__sprint_r.part.0>
 80529d4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 80529d8:	8b 45 0c             	mov    0xc(%ebp),%eax
 80529db:	f6 40 0c 40          	testb  $0x40,0xc(%eax)
 80529df:	0f 85 a3 f8 ff ff    	jne    8052288 <_vfiprintf_r+0x1d8>
 80529e5:	8b 85 50 ff ff ff    	mov    -0xb0(%ebp),%eax
 80529eb:	81 c4 cc 00 00 00    	add    $0xcc,%esp
 80529f1:	5b                   	pop    %ebx
 80529f2:	5e                   	pop    %esi
 80529f3:	5f                   	pop    %edi
 80529f4:	5d                   	pop    %ebp
 80529f5:	c3                   	ret    
 80529f6:	8b 55 0c             	mov    0xc(%ebp),%edx
 80529f9:	8d 8d 74 ff ff ff    	lea    -0x8c(%ebp),%ecx
 80529ff:	8b 45 08             	mov    0x8(%ebp),%eax
 8052a02:	e8 99 f5 ff ff       	call   8051fa0 <__sprint_r.part.0>
 8052a07:	85 c0                	test   %eax,%eax
 8052a09:	75 cd                	jne    80529d8 <_vfiprintf_r+0x928>
 8052a0b:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 8052a11:	8d 75 a8             	lea    -0x58(%ebp),%esi
 8052a14:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
 8052a1a:	8d 48 01             	lea    0x1(%eax),%ecx
 8052a1d:	8d 76 00             	lea    0x0(%esi),%esi
 8052a20:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
 8052a26:	89 8d 78 ff ff ff    	mov    %ecx,-0x88(%ebp)
 8052a2c:	89 06                	mov    %eax,(%esi)
 8052a2e:	8b 85 58 ff ff ff    	mov    -0xa8(%ebp),%eax
 8052a34:	01 c2                	add    %eax,%edx
 8052a36:	83 f9 07             	cmp    $0x7,%ecx
 8052a39:	89 46 04             	mov    %eax,0x4(%esi)
 8052a3c:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
 8052a42:	0f 8e ef 01 00 00    	jle    8052c37 <_vfiprintf_r+0xb87>
 8052a48:	85 d2                	test   %edx,%edx
 8052a4a:	0f 85 81 03 00 00    	jne    8052dd1 <_vfiprintf_r+0xd21>
 8052a50:	c7 85 78 ff ff ff 00 	movl   $0x0,-0x88(%ebp)
 8052a57:	00 00 00 
 8052a5a:	8d 75 a8             	lea    -0x58(%ebp),%esi
 8052a5d:	f6 85 64 ff ff ff 04 	testb  $0x4,-0x9c(%ebp)
 8052a64:	0f 84 ce 00 00 00    	je     8052b38 <_vfiprintf_r+0xa88>
 8052a6a:	8b 9d 54 ff ff ff    	mov    -0xac(%ebp),%ebx
 8052a70:	2b 9d 60 ff ff ff    	sub    -0xa0(%ebp),%ebx
 8052a76:	85 db                	test   %ebx,%ebx
 8052a78:	0f 8e ba 00 00 00    	jle    8052b38 <_vfiprintf_r+0xa88>
 8052a7e:	8b 8d 78 ff ff ff    	mov    -0x88(%ebp),%ecx
 8052a84:	83 fb 10             	cmp    $0x10,%ebx
 8052a87:	8d 79 01             	lea    0x1(%ecx),%edi
 8052a8a:	7f 14                	jg     8052aa0 <_vfiprintf_r+0x9f0>
 8052a8c:	eb 50                	jmp    8052ade <_vfiprintf_r+0xa2e>
 8052a8e:	66 90                	xchg   %ax,%ax
 8052a90:	8d 79 02             	lea    0x2(%ecx),%edi
 8052a93:	83 c6 08             	add    $0x8,%esi
 8052a96:	89 c1                	mov    %eax,%ecx
 8052a98:	83 eb 10             	sub    $0x10,%ebx
 8052a9b:	83 fb 10             	cmp    $0x10,%ebx
 8052a9e:	7e 3e                	jle    8052ade <_vfiprintf_r+0xa2e>
 8052aa0:	8d 41 01             	lea    0x1(%ecx),%eax
 8052aa3:	83 c2 10             	add    $0x10,%edx
 8052aa6:	83 f8 07             	cmp    $0x7,%eax
 8052aa9:	c7 06 00 51 05 08    	movl   $0x8055100,(%esi)
 8052aaf:	c7 46 04 10 00 00 00 	movl   $0x10,0x4(%esi)
 8052ab6:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
 8052abc:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
 8052ac2:	7e cc                	jle    8052a90 <_vfiprintf_r+0x9e0>
 8052ac4:	85 d2                	test   %edx,%edx
 8052ac6:	0f 85 b4 00 00 00    	jne    8052b80 <_vfiprintf_r+0xad0>
 8052acc:	83 eb 10             	sub    $0x10,%ebx
 8052acf:	31 c9                	xor    %ecx,%ecx
 8052ad1:	83 fb 10             	cmp    $0x10,%ebx
 8052ad4:	bf 01 00 00 00       	mov    $0x1,%edi
 8052ad9:	8d 75 a8             	lea    -0x58(%ebp),%esi
 8052adc:	7f c2                	jg     8052aa0 <_vfiprintf_r+0x9f0>
 8052ade:	01 da                	add    %ebx,%edx
 8052ae0:	83 ff 07             	cmp    $0x7,%edi
 8052ae3:	c7 06 00 51 05 08    	movl   $0x8055100,(%esi)
 8052ae9:	89 5e 04             	mov    %ebx,0x4(%esi)
 8052aec:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
 8052af2:	89 bd 78 ff ff ff    	mov    %edi,-0x88(%ebp)
 8052af8:	7e 3e                	jle    8052b38 <_vfiprintf_r+0xa88>
 8052afa:	85 d2                	test   %edx,%edx
 8052afc:	75 19                	jne    8052b17 <_vfiprintf_r+0xa67>
 8052afe:	8b 85 54 ff ff ff    	mov    -0xac(%ebp),%eax
 8052b04:	8b bd 60 ff ff ff    	mov    -0xa0(%ebp),%edi
 8052b0a:	39 c7                	cmp    %eax,%edi
 8052b0c:	0f 4d c7             	cmovge %edi,%eax
 8052b0f:	01 85 50 ff ff ff    	add    %eax,-0xb0(%ebp)
 8052b15:	eb 55                	jmp    8052b6c <_vfiprintf_r+0xabc>
 8052b17:	8b 55 0c             	mov    0xc(%ebp),%edx
 8052b1a:	8d 8d 74 ff ff ff    	lea    -0x8c(%ebp),%ecx
 8052b20:	8b 45 08             	mov    0x8(%ebp),%eax
 8052b23:	e8 78 f4 ff ff       	call   8051fa0 <__sprint_r.part.0>
 8052b28:	85 c0                	test   %eax,%eax
 8052b2a:	0f 85 a8 fe ff ff    	jne    80529d8 <_vfiprintf_r+0x928>
 8052b30:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
 8052b36:	66 90                	xchg   %ax,%ax
 8052b38:	8b 85 54 ff ff ff    	mov    -0xac(%ebp),%eax
 8052b3e:	8b bd 60 ff ff ff    	mov    -0xa0(%ebp),%edi
 8052b44:	39 c7                	cmp    %eax,%edi
 8052b46:	0f 4d c7             	cmovge %edi,%eax
 8052b49:	01 85 50 ff ff ff    	add    %eax,-0xb0(%ebp)
 8052b4f:	85 d2                	test   %edx,%edx
 8052b51:	74 19                	je     8052b6c <_vfiprintf_r+0xabc>
 8052b53:	8b 55 0c             	mov    0xc(%ebp),%edx
 8052b56:	8d 8d 74 ff ff ff    	lea    -0x8c(%ebp),%ecx
 8052b5c:	8b 45 08             	mov    0x8(%ebp),%eax
 8052b5f:	e8 3c f4 ff ff       	call   8051fa0 <__sprint_r.part.0>
 8052b64:	85 c0                	test   %eax,%eax
 8052b66:	0f 85 6c fe ff ff    	jne    80529d8 <_vfiprintf_r+0x928>
 8052b6c:	c7 85 78 ff ff ff 00 	movl   $0x0,-0x88(%ebp)
 8052b73:	00 00 00 
 8052b76:	8d 75 a8             	lea    -0x58(%ebp),%esi
 8052b79:	e9 d1 f5 ff ff       	jmp    805214f <_vfiprintf_r+0x9f>
 8052b7e:	66 90                	xchg   %ax,%ax
 8052b80:	8b 55 0c             	mov    0xc(%ebp),%edx
 8052b83:	8d 8d 74 ff ff ff    	lea    -0x8c(%ebp),%ecx
 8052b89:	8b 45 08             	mov    0x8(%ebp),%eax
 8052b8c:	e8 0f f4 ff ff       	call   8051fa0 <__sprint_r.part.0>
 8052b91:	85 c0                	test   %eax,%eax
 8052b93:	0f 85 3f fe ff ff    	jne    80529d8 <_vfiprintf_r+0x928>
 8052b99:	8b 8d 78 ff ff ff    	mov    -0x88(%ebp),%ecx
 8052b9f:	8d 75 a8             	lea    -0x58(%ebp),%esi
 8052ba2:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
 8052ba8:	8d 79 01             	lea    0x1(%ecx),%edi
 8052bab:	e9 e8 fe ff ff       	jmp    8052a98 <_vfiprintf_r+0x9e8>
 8052bb0:	01 da                	add    %ebx,%edx
 8052bb2:	83 f9 07             	cmp    $0x7,%ecx
 8052bb5:	89 5e 04             	mov    %ebx,0x4(%esi)
 8052bb8:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
 8052bbe:	89 8d 78 ff ff ff    	mov    %ecx,-0x88(%ebp)
 8052bc4:	7f 42                	jg     8052c08 <_vfiprintf_r+0xb58>
 8052bc6:	83 c6 08             	add    $0x8,%esi
 8052bc9:	83 c1 01             	add    $0x1,%ecx
 8052bcc:	e9 4f fe ff ff       	jmp    8052a20 <_vfiprintf_r+0x970>
 8052bd1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 8052bd8:	84 d2                	test   %dl,%dl
 8052bda:	75 64                	jne    8052c40 <_vfiprintf_r+0xb90>
 8052bdc:	f6 85 64 ff ff ff 01 	testb  $0x1,-0x9c(%ebp)
 8052be3:	74 5b                	je     8052c40 <_vfiprintf_r+0xb90>
 8052be5:	8b 85 3c ff ff ff    	mov    -0xc4(%ebp),%eax
 8052beb:	c6 45 a7 30          	movb   $0x30,-0x59(%ebp)
 8052bef:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
 8052bf5:	8d 45 a7             	lea    -0x59(%ebp),%eax
 8052bf8:	89 85 44 ff ff ff    	mov    %eax,-0xbc(%ebp)
 8052bfe:	e9 8d f7 ff ff       	jmp    8052390 <_vfiprintf_r+0x2e0>
 8052c03:	90                   	nop
 8052c04:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8052c08:	85 d2                	test   %edx,%edx
 8052c0a:	0f 85 e6 fd ff ff    	jne    80529f6 <_vfiprintf_r+0x946>
 8052c10:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
 8052c16:	8d 75 a8             	lea    -0x58(%ebp),%esi
 8052c19:	c7 85 78 ff ff ff 01 	movl   $0x1,-0x88(%ebp)
 8052c20:	00 00 00 
 8052c23:	89 45 a8             	mov    %eax,-0x58(%ebp)
 8052c26:	8b 85 58 ff ff ff    	mov    -0xa8(%ebp),%eax
 8052c2c:	89 45 ac             	mov    %eax,-0x54(%ebp)
 8052c2f:	89 c2                	mov    %eax,%edx
 8052c31:	89 85 7c ff ff ff    	mov    %eax,-0x84(%ebp)
 8052c37:	83 c6 08             	add    $0x8,%esi
 8052c3a:	e9 1e fe ff ff       	jmp    8052a5d <_vfiprintf_r+0x9ad>
 8052c3f:	90                   	nop
 8052c40:	8d 45 a8             	lea    -0x58(%ebp),%eax
 8052c43:	c7 85 58 ff ff ff 00 	movl   $0x0,-0xa8(%ebp)
 8052c4a:	00 00 00 
 8052c4d:	89 85 44 ff ff ff    	mov    %eax,-0xbc(%ebp)
 8052c53:	e9 38 f7 ff ff       	jmp    8052390 <_vfiprintf_r+0x2e0>
 8052c58:	8b bd 54 ff ff ff    	mov    -0xac(%ebp),%edi
 8052c5e:	2b bd 60 ff ff ff    	sub    -0xa0(%ebp),%edi
 8052c64:	85 ff                	test   %edi,%edi
 8052c66:	0f 8e c4 fc ff ff    	jle    8052930 <_vfiprintf_r+0x880>
 8052c6c:	83 ff 10             	cmp    $0x10,%edi
 8052c6f:	7f 17                	jg     8052c88 <_vfiprintf_r+0xbd8>
 8052c71:	e9 88 03 00 00       	jmp    8052ffe <_vfiprintf_r+0xf4e>
 8052c76:	66 90                	xchg   %ax,%ax
 8052c78:	8d 58 02             	lea    0x2(%eax),%ebx
 8052c7b:	83 c6 08             	add    $0x8,%esi
 8052c7e:	89 c8                	mov    %ecx,%eax
 8052c80:	83 ef 10             	sub    $0x10,%edi
 8052c83:	83 ff 10             	cmp    $0x10,%edi
 8052c86:	7e 3a                	jle    8052cc2 <_vfiprintf_r+0xc12>
 8052c88:	8d 48 01             	lea    0x1(%eax),%ecx
 8052c8b:	83 c2 10             	add    $0x10,%edx
 8052c8e:	83 f9 07             	cmp    $0x7,%ecx
 8052c91:	c7 06 f0 50 05 08    	movl   $0x80550f0,(%esi)
 8052c97:	c7 46 04 10 00 00 00 	movl   $0x10,0x4(%esi)
 8052c9e:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
 8052ca4:	89 8d 78 ff ff ff    	mov    %ecx,-0x88(%ebp)
 8052caa:	7e cc                	jle    8052c78 <_vfiprintf_r+0xbc8>
 8052cac:	85 d2                	test   %edx,%edx
 8052cae:	75 40                	jne    8052cf0 <_vfiprintf_r+0xc40>
 8052cb0:	83 ef 10             	sub    $0x10,%edi
 8052cb3:	31 c0                	xor    %eax,%eax
 8052cb5:	83 ff 10             	cmp    $0x10,%edi
 8052cb8:	bb 01 00 00 00       	mov    $0x1,%ebx
 8052cbd:	8d 75 a8             	lea    -0x58(%ebp),%esi
 8052cc0:	7f c6                	jg     8052c88 <_vfiprintf_r+0xbd8>
 8052cc2:	01 fa                	add    %edi,%edx
 8052cc4:	83 fb 07             	cmp    $0x7,%ebx
 8052cc7:	c7 06 f0 50 05 08    	movl   $0x80550f0,(%esi)
 8052ccd:	89 7e 04             	mov    %edi,0x4(%esi)
 8052cd0:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
 8052cd6:	89 9d 78 ff ff ff    	mov    %ebx,-0x88(%ebp)
 8052cdc:	0f 8f 97 01 00 00    	jg     8052e79 <_vfiprintf_r+0xdc9>
 8052ce2:	83 c6 08             	add    $0x8,%esi
 8052ce5:	89 d8                	mov    %ebx,%eax
 8052ce7:	8d 4b 01             	lea    0x1(%ebx),%ecx
 8052cea:	e9 41 fc ff ff       	jmp    8052930 <_vfiprintf_r+0x880>
 8052cef:	90                   	nop
 8052cf0:	8b 55 0c             	mov    0xc(%ebp),%edx
 8052cf3:	8d 8d 74 ff ff ff    	lea    -0x8c(%ebp),%ecx
 8052cf9:	8b 45 08             	mov    0x8(%ebp),%eax
 8052cfc:	e8 9f f2 ff ff       	call   8051fa0 <__sprint_r.part.0>
 8052d01:	85 c0                	test   %eax,%eax
 8052d03:	0f 85 cf fc ff ff    	jne    80529d8 <_vfiprintf_r+0x928>
 8052d09:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 8052d0f:	8d 75 a8             	lea    -0x58(%ebp),%esi
 8052d12:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
 8052d18:	8d 58 01             	lea    0x1(%eax),%ebx
 8052d1b:	e9 60 ff ff ff       	jmp    8052c80 <_vfiprintf_r+0xbd0>
 8052d20:	85 d2                	test   %edx,%edx
 8052d22:	0f 85 f1 00 00 00    	jne    8052e19 <_vfiprintf_r+0xd69>
 8052d28:	b9 01 00 00 00       	mov    $0x1,%ecx
 8052d2d:	31 c0                	xor    %eax,%eax
 8052d2f:	8d 75 a8             	lea    -0x58(%ebp),%esi
 8052d32:	e9 b0 fb ff ff       	jmp    80528e7 <_vfiprintf_r+0x837>
 8052d37:	90                   	nop
 8052d38:	85 d2                	test   %edx,%edx
 8052d3a:	0f 85 09 01 00 00    	jne    8052e49 <_vfiprintf_r+0xd99>
 8052d40:	b9 01 00 00 00       	mov    $0x1,%ecx
 8052d45:	31 c0                	xor    %eax,%eax
 8052d47:	8d 75 a8             	lea    -0x58(%ebp),%esi
 8052d4a:	e9 d1 fb ff ff       	jmp    8052920 <_vfiprintf_r+0x870>
 8052d4f:	90                   	nop
 8052d50:	89 c2                	mov    %eax,%edx
 8052d52:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 8052d58:	89 c8                	mov    %ecx,%eax
 8052d5a:	83 ea 01             	sub    $0x1,%edx
 8052d5d:	83 e0 07             	and    $0x7,%eax
 8052d60:	c1 e9 03             	shr    $0x3,%ecx
 8052d63:	83 c0 30             	add    $0x30,%eax
 8052d66:	85 c9                	test   %ecx,%ecx
 8052d68:	88 02                	mov    %al,(%edx)
 8052d6a:	75 ec                	jne    8052d58 <_vfiprintf_r+0xca8>
 8052d6c:	f6 85 64 ff ff ff 01 	testb  $0x1,-0x9c(%ebp)
 8052d73:	89 95 44 ff ff ff    	mov    %edx,-0xbc(%ebp)
 8052d79:	0f 85 5b 01 00 00    	jne    8052eda <_vfiprintf_r+0xe2a>
 8052d7f:	8d 45 a8             	lea    -0x58(%ebp),%eax
 8052d82:	29 d0                	sub    %edx,%eax
 8052d84:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
 8052d8a:	e9 01 f6 ff ff       	jmp    8052390 <_vfiprintf_r+0x2e0>
 8052d8f:	90                   	nop
 8052d90:	85 d2                	test   %edx,%edx
 8052d92:	0f 85 7d 01 00 00    	jne    8052f15 <_vfiprintf_r+0xe65>
 8052d98:	31 c0                	xor    %eax,%eax
 8052d9a:	b9 01 00 00 00       	mov    $0x1,%ecx
 8052d9f:	8d 75 a8             	lea    -0x58(%ebp),%esi
 8052da2:	e9 08 fb ff ff       	jmp    80528af <_vfiprintf_r+0x7ff>
 8052da7:	90                   	nop
 8052da8:	83 f9 09             	cmp    $0x9,%ecx
 8052dab:	0f 87 df 00 00 00    	ja     8052e90 <_vfiprintf_r+0xde0>
 8052db1:	8b 85 3c ff ff ff    	mov    -0xc4(%ebp),%eax
 8052db7:	83 c1 30             	add    $0x30,%ecx
 8052dba:	88 4d a7             	mov    %cl,-0x59(%ebp)
 8052dbd:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
 8052dc3:	8d 45 a7             	lea    -0x59(%ebp),%eax
 8052dc6:	89 85 44 ff ff ff    	mov    %eax,-0xbc(%ebp)
 8052dcc:	e9 bf f5 ff ff       	jmp    8052390 <_vfiprintf_r+0x2e0>
 8052dd1:	8b 55 0c             	mov    0xc(%ebp),%edx
 8052dd4:	8d 8d 74 ff ff ff    	lea    -0x8c(%ebp),%ecx
 8052dda:	8b 45 08             	mov    0x8(%ebp),%eax
 8052ddd:	e8 be f1 ff ff       	call   8051fa0 <__sprint_r.part.0>
 8052de2:	85 c0                	test   %eax,%eax
 8052de4:	0f 85 ee fb ff ff    	jne    80529d8 <_vfiprintf_r+0x928>
 8052dea:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
 8052df0:	8d 75 a8             	lea    -0x58(%ebp),%esi
 8052df3:	e9 65 fc ff ff       	jmp    8052a5d <_vfiprintf_r+0x9ad>
 8052df8:	8b 55 0c             	mov    0xc(%ebp),%edx
 8052dfb:	8d 8d 74 ff ff ff    	lea    -0x8c(%ebp),%ecx
 8052e01:	8b 45 08             	mov    0x8(%ebp),%eax
 8052e04:	e8 97 f1 ff ff       	call   8051fa0 <__sprint_r.part.0>
 8052e09:	85 c0                	test   %eax,%eax
 8052e0b:	0f 85 c7 fb ff ff    	jne    80529d8 <_vfiprintf_r+0x928>
 8052e11:	8d 75 a8             	lea    -0x58(%ebp),%esi
 8052e14:	e9 98 f3 ff ff       	jmp    80521b1 <_vfiprintf_r+0x101>
 8052e19:	8b 55 0c             	mov    0xc(%ebp),%edx
 8052e1c:	8d 8d 74 ff ff ff    	lea    -0x8c(%ebp),%ecx
 8052e22:	8b 45 08             	mov    0x8(%ebp),%eax
 8052e25:	e8 76 f1 ff ff       	call   8051fa0 <__sprint_r.part.0>
 8052e2a:	85 c0                	test   %eax,%eax
 8052e2c:	0f 85 a6 fb ff ff    	jne    80529d8 <_vfiprintf_r+0x928>
 8052e32:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 8052e38:	8d 75 a8             	lea    -0x58(%ebp),%esi
 8052e3b:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
 8052e41:	8d 48 01             	lea    0x1(%eax),%ecx
 8052e44:	e9 9e fa ff ff       	jmp    80528e7 <_vfiprintf_r+0x837>
 8052e49:	8b 55 0c             	mov    0xc(%ebp),%edx
 8052e4c:	8d 8d 74 ff ff ff    	lea    -0x8c(%ebp),%ecx
 8052e52:	8b 45 08             	mov    0x8(%ebp),%eax
 8052e55:	e8 46 f1 ff ff       	call   8051fa0 <__sprint_r.part.0>
 8052e5a:	85 c0                	test   %eax,%eax
 8052e5c:	0f 85 76 fb ff ff    	jne    80529d8 <_vfiprintf_r+0x928>
 8052e62:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 8052e68:	8d 75 a8             	lea    -0x58(%ebp),%esi
 8052e6b:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
 8052e71:	8d 48 01             	lea    0x1(%eax),%ecx
 8052e74:	e9 a7 fa ff ff       	jmp    8052920 <_vfiprintf_r+0x870>
 8052e79:	85 d2                	test   %edx,%edx
 8052e7b:	0f 85 f1 00 00 00    	jne    8052f72 <_vfiprintf_r+0xec2>
 8052e81:	b9 01 00 00 00       	mov    $0x1,%ecx
 8052e86:	31 c0                	xor    %eax,%eax
 8052e88:	8d 75 a8             	lea    -0x58(%ebp),%esi
 8052e8b:	e9 a0 fa ff ff       	jmp    8052930 <_vfiprintf_r+0x880>
 8052e90:	8d 45 a8             	lea    -0x58(%ebp),%eax
 8052e93:	bb cd cc cc cc       	mov    $0xcccccccd,%ebx
 8052e98:	89 b5 60 ff ff ff    	mov    %esi,-0xa0(%ebp)
 8052e9e:	89 c6                	mov    %eax,%esi
 8052ea0:	89 c8                	mov    %ecx,%eax
 8052ea2:	83 ee 01             	sub    $0x1,%esi
 8052ea5:	f7 e3                	mul    %ebx
 8052ea7:	c1 ea 03             	shr    $0x3,%edx
 8052eaa:	8d 04 92             	lea    (%edx,%edx,4),%eax
 8052ead:	01 c0                	add    %eax,%eax
 8052eaf:	29 c1                	sub    %eax,%ecx
 8052eb1:	83 c1 30             	add    $0x30,%ecx
 8052eb4:	85 d2                	test   %edx,%edx
 8052eb6:	88 0e                	mov    %cl,(%esi)
 8052eb8:	89 d1                	mov    %edx,%ecx
 8052eba:	75 e4                	jne    8052ea0 <_vfiprintf_r+0xdf0>
 8052ebc:	89 f1                	mov    %esi,%ecx
 8052ebe:	8d 45 a8             	lea    -0x58(%ebp),%eax
 8052ec1:	29 c8                	sub    %ecx,%eax
 8052ec3:	89 b5 44 ff ff ff    	mov    %esi,-0xbc(%ebp)
 8052ec9:	8b b5 60 ff ff ff    	mov    -0xa0(%ebp),%esi
 8052ecf:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
 8052ed5:	e9 b6 f4 ff ff       	jmp    8052390 <_vfiprintf_r+0x2e0>
 8052eda:	3c 30                	cmp    $0x30,%al
 8052edc:	74 0b                	je     8052ee9 <_vfiprintf_r+0xe39>
 8052ede:	83 ad 44 ff ff ff 01 	subl   $0x1,-0xbc(%ebp)
 8052ee5:	c6 42 ff 30          	movb   $0x30,-0x1(%edx)
 8052ee9:	8d 45 a8             	lea    -0x58(%ebp),%eax
 8052eec:	2b 85 44 ff ff ff    	sub    -0xbc(%ebp),%eax
 8052ef2:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
 8052ef8:	e9 93 f4 ff ff       	jmp    8052390 <_vfiprintf_r+0x2e0>
 8052efd:	f7 d9                	neg    %ecx
 8052eff:	bf 2d 00 00 00       	mov    $0x2d,%edi
 8052f04:	c6 85 71 ff ff ff 2d 	movb   $0x2d,-0x8f(%ebp)
 8052f0b:	ba 01 00 00 00       	mov    $0x1,%edx
 8052f10:	e9 0c f4 ff ff       	jmp    8052321 <_vfiprintf_r+0x271>
 8052f15:	8b 55 0c             	mov    0xc(%ebp),%edx
 8052f18:	8d 8d 74 ff ff ff    	lea    -0x8c(%ebp),%ecx
 8052f1e:	8b 45 08             	mov    0x8(%ebp),%eax
 8052f21:	e8 7a f0 ff ff       	call   8051fa0 <__sprint_r.part.0>
 8052f26:	85 c0                	test   %eax,%eax
 8052f28:	0f 85 aa fa ff ff    	jne    80529d8 <_vfiprintf_r+0x928>
 8052f2e:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 8052f34:	8d 75 a8             	lea    -0x58(%ebp),%esi
 8052f37:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
 8052f3d:	8d 48 01             	lea    0x1(%eax),%ecx
 8052f40:	e9 6a f9 ff ff       	jmp    80528af <_vfiprintf_r+0x7ff>
 8052f45:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
 8052f4b:	89 04 24             	mov    %eax,(%esp)
 8052f4e:	e8 4d 65 ff ff       	call   80494a0 <strlen>
 8052f53:	0f b6 bd 71 ff ff ff 	movzbl -0x8f(%ebp),%edi
 8052f5a:	89 5d 14             	mov    %ebx,0x14(%ebp)
 8052f5d:	c7 85 5c ff ff ff 00 	movl   $0x0,-0xa4(%ebp)
 8052f64:	00 00 00 
 8052f67:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
 8052f6d:	e9 1e f4 ff ff       	jmp    8052390 <_vfiprintf_r+0x2e0>
 8052f72:	8b 55 0c             	mov    0xc(%ebp),%edx
 8052f75:	8d 8d 74 ff ff ff    	lea    -0x8c(%ebp),%ecx
 8052f7b:	8b 45 08             	mov    0x8(%ebp),%eax
 8052f7e:	e8 1d f0 ff ff       	call   8051fa0 <__sprint_r.part.0>
 8052f83:	85 c0                	test   %eax,%eax
 8052f85:	0f 85 4d fa ff ff    	jne    80529d8 <_vfiprintf_r+0x928>
 8052f8b:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 8052f91:	8d 75 a8             	lea    -0x58(%ebp),%esi
 8052f94:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
 8052f9a:	8d 48 01             	lea    0x1(%eax),%ecx
 8052f9d:	e9 8e f9 ff ff       	jmp    8052930 <_vfiprintf_r+0x880>
 8052fa2:	8b bd 5c ff ff ff    	mov    -0xa4(%ebp),%edi
 8052fa8:	b0 06                	mov    $0x6,%al
 8052faa:	89 5d 14             	mov    %ebx,0x14(%ebp)
 8052fad:	83 ff 06             	cmp    $0x6,%edi
 8052fb0:	0f 46 c7             	cmovbe %edi,%eax
 8052fb3:	8b bd 44 ff ff ff    	mov    -0xbc(%ebp),%edi
 8052fb9:	85 c0                	test   %eax,%eax
 8052fbb:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
 8052fc1:	c7 85 44 ff ff ff 3e 	movl   $0x805493e,-0xbc(%ebp)
 8052fc8:	49 05 08 
 8052fcb:	0f 49 f8             	cmovns %eax,%edi
 8052fce:	89 bd 60 ff ff ff    	mov    %edi,-0xa0(%ebp)
 8052fd4:	e9 f6 f6 ff ff       	jmp    80526cf <_vfiprintf_r+0x61f>
 8052fd9:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
 8052fdf:	0f b6 bd 71 ff ff ff 	movzbl -0x8f(%ebp),%edi
 8052fe6:	89 5d 14             	mov    %ebx,0x14(%ebp)
 8052fe9:	c7 85 5c ff ff ff 00 	movl   $0x0,-0xa4(%ebp)
 8052ff0:	00 00 00 
 8052ff3:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
 8052ff9:	e9 92 f3 ff ff       	jmp    8052390 <_vfiprintf_r+0x2e0>
 8052ffe:	89 cb                	mov    %ecx,%ebx
 8053000:	e9 bd fc ff ff       	jmp    8052cc2 <_vfiprintf_r+0xc12>
 8053005:	89 da                	mov    %ebx,%edx
 8053007:	c7 85 5c ff ff ff 00 	movl   $0x0,-0xa4(%ebp)
 805300e:	00 00 00 
 8053011:	e9 da f1 ff ff       	jmp    80521f0 <_vfiprintf_r+0x140>
 8053016:	8b 4d 14             	mov    0x14(%ebp),%ecx
 8053019:	89 da                	mov    %ebx,%edx
 805301b:	8b 45 14             	mov    0x14(%ebp),%eax
 805301e:	8b 09                	mov    (%ecx),%ecx
 8053020:	83 c0 04             	add    $0x4,%eax
 8053023:	89 45 14             	mov    %eax,0x14(%ebp)
 8053026:	85 c9                	test   %ecx,%ecx
 8053028:	89 8d 5c ff ff ff    	mov    %ecx,-0xa4(%ebp)
 805302e:	0f 89 f3 f1 ff ff    	jns    8052227 <_vfiprintf_r+0x177>
 8053034:	c7 85 5c ff ff ff ff 	movl   $0xffffffff,-0xa4(%ebp)
 805303b:	ff ff ff 
 805303e:	89 d3                	mov    %edx,%ebx
 8053040:	e9 a5 f1 ff ff       	jmp    80521ea <_vfiprintf_r+0x13a>
 8053045:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8053049:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

08053050 <vfiprintf>:
 8053050:	55                   	push   %ebp
 8053051:	89 e5                	mov    %esp,%ebp
 8053053:	83 ec 18             	sub    $0x18,%esp
 8053056:	e8 55 c4 ff ff       	call   804f4b0 <__getreent>
 805305b:	8b 55 10             	mov    0x10(%ebp),%edx
 805305e:	89 54 24 0c          	mov    %edx,0xc(%esp)
 8053062:	8b 55 0c             	mov    0xc(%ebp),%edx
 8053065:	89 04 24             	mov    %eax,(%esp)
 8053068:	89 54 24 08          	mov    %edx,0x8(%esp)
 805306c:	8b 55 08             	mov    0x8(%ebp),%edx
 805306f:	89 54 24 04          	mov    %edx,0x4(%esp)
 8053073:	e8 38 f0 ff ff       	call   80520b0 <_vfiprintf_r>
 8053078:	c9                   	leave  
 8053079:	c3                   	ret    
 805307a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

08053080 <__sbprintf>:
 8053080:	55                   	push   %ebp
 8053081:	89 e5                	mov    %esp,%ebp
 8053083:	57                   	push   %edi
 8053084:	89 c7                	mov    %eax,%edi
 8053086:	56                   	push   %esi
 8053087:	53                   	push   %ebx
 8053088:	89 d3                	mov    %edx,%ebx
 805308a:	81 ec 9c 04 00 00    	sub    $0x49c,%esp
 8053090:	0f b7 42 0c          	movzwl 0xc(%edx),%eax
 8053094:	c7 85 88 fb ff ff 00 	movl   $0x400,-0x478(%ebp)
 805309b:	04 00 00 
 805309e:	c7 85 94 fb ff ff 00 	movl   $0x400,-0x46c(%ebp)
 80530a5:	04 00 00 
 80530a8:	c7 85 98 fb ff ff 00 	movl   $0x0,-0x468(%ebp)
 80530af:	00 00 00 
 80530b2:	83 e0 fd             	and    $0xfffffffd,%eax
 80530b5:	66 89 85 8c fb ff ff 	mov    %ax,-0x474(%ebp)
 80530bc:	8b 42 64             	mov    0x64(%edx),%eax
 80530bf:	89 85 e4 fb ff ff    	mov    %eax,-0x41c(%ebp)
 80530c5:	0f b7 42 0e          	movzwl 0xe(%edx),%eax
 80530c9:	66 89 85 8e fb ff ff 	mov    %ax,-0x472(%ebp)
 80530d0:	8b 42 1c             	mov    0x1c(%edx),%eax
 80530d3:	89 85 9c fb ff ff    	mov    %eax,-0x464(%ebp)
 80530d9:	8b 42 24             	mov    0x24(%edx),%eax
 80530dc:	8d 95 80 fb ff ff    	lea    -0x480(%ebp),%edx
 80530e2:	89 4c 24 08          	mov    %ecx,0x8(%esp)
 80530e6:	89 54 24 04          	mov    %edx,0x4(%esp)
 80530ea:	89 3c 24             	mov    %edi,(%esp)
 80530ed:	89 85 a4 fb ff ff    	mov    %eax,-0x45c(%ebp)
 80530f3:	8d 85 e8 fb ff ff    	lea    -0x418(%ebp),%eax
 80530f9:	89 85 80 fb ff ff    	mov    %eax,-0x480(%ebp)
 80530ff:	89 85 90 fb ff ff    	mov    %eax,-0x470(%ebp)
 8053105:	8b 45 08             	mov    0x8(%ebp),%eax
 8053108:	89 95 74 fb ff ff    	mov    %edx,-0x48c(%ebp)
 805310e:	89 44 24 0c          	mov    %eax,0xc(%esp)
 8053112:	e8 99 ef ff ff       	call   80520b0 <_vfiprintf_r>
 8053117:	85 c0                	test   %eax,%eax
 8053119:	89 c6                	mov    %eax,%esi
 805311b:	78 1c                	js     8053139 <__sbprintf+0xb9>
 805311d:	8b 95 74 fb ff ff    	mov    -0x48c(%ebp),%edx
 8053123:	89 3c 24             	mov    %edi,(%esp)
 8053126:	89 54 24 04          	mov    %edx,0x4(%esp)
 805312a:	e8 71 ba ff ff       	call   804eba0 <_fflush_r>
 805312f:	85 c0                	test   %eax,%eax
 8053131:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8053136:	0f 45 f0             	cmovne %eax,%esi
 8053139:	f6 85 8c fb ff ff 40 	testb  $0x40,-0x474(%ebp)
 8053140:	74 05                	je     8053147 <__sbprintf+0xc7>
 8053142:	66 83 4b 0c 40       	orw    $0x40,0xc(%ebx)
 8053147:	81 c4 9c 04 00 00    	add    $0x49c,%esp
 805314d:	89 f0                	mov    %esi,%eax
 805314f:	5b                   	pop    %ebx
 8053150:	5e                   	pop    %esi
 8053151:	5f                   	pop    %edi
 8053152:	5d                   	pop    %ebp
 8053153:	c3                   	ret    
 8053154:	66 90                	xchg   %ax,%ax
 8053156:	66 90                	xchg   %ax,%ax
 8053158:	66 90                	xchg   %ax,%ax
 805315a:	66 90                	xchg   %ax,%ax
 805315c:	66 90                	xchg   %ax,%ax
 805315e:	66 90                	xchg   %ax,%ax

08053160 <_write_r>:
 8053160:	55                   	push   %ebp
 8053161:	89 e5                	mov    %esp,%ebp
 8053163:	83 ec 18             	sub    $0x18,%esp
 8053166:	8b 45 14             	mov    0x14(%ebp),%eax
 8053169:	c7 05 74 d6 06 08 00 	movl   $0x0,0x806d674
 8053170:	00 00 00 
 8053173:	89 44 24 08          	mov    %eax,0x8(%esp)
 8053177:	8b 45 10             	mov    0x10(%ebp),%eax
 805317a:	89 44 24 04          	mov    %eax,0x4(%esp)
 805317e:	8b 45 0c             	mov    0xc(%ebp),%eax
 8053181:	89 04 24             	mov    %eax,(%esp)
 8053184:	e8 37 50 ff ff       	call   80481c0 <write>
 8053189:	83 f8 ff             	cmp    $0xffffffff,%eax
 805318c:	74 02                	je     8053190 <_write_r+0x30>
 805318e:	c9                   	leave  
 805318f:	c3                   	ret    
 8053190:	8b 15 74 d6 06 08    	mov    0x806d674,%edx
 8053196:	85 d2                	test   %edx,%edx
 8053198:	74 f4                	je     805318e <_write_r+0x2e>
 805319a:	8b 4d 08             	mov    0x8(%ebp),%ecx
 805319d:	89 11                	mov    %edx,(%ecx)
 805319f:	c9                   	leave  
 80531a0:	c3                   	ret    
 80531a1:	66 90                	xchg   %ax,%ax
 80531a3:	66 90                	xchg   %ax,%ax
 80531a5:	66 90                	xchg   %ax,%ax
 80531a7:	66 90                	xchg   %ax,%ax
 80531a9:	66 90                	xchg   %ax,%ax
 80531ab:	66 90                	xchg   %ax,%ax
 80531ad:	66 90                	xchg   %ax,%ax
 80531af:	90                   	nop

080531b0 <_calloc_r>:
 80531b0:	55                   	push   %ebp
 80531b1:	89 e5                	mov    %esp,%ebp
 80531b3:	53                   	push   %ebx
 80531b4:	83 ec 14             	sub    $0x14,%esp
 80531b7:	8b 45 10             	mov    0x10(%ebp),%eax
 80531ba:	0f af 45 0c          	imul   0xc(%ebp),%eax
 80531be:	89 44 24 04          	mov    %eax,0x4(%esp)
 80531c2:	8b 45 08             	mov    0x8(%ebp),%eax
 80531c5:	89 04 24             	mov    %eax,(%esp)
 80531c8:	e8 43 c5 ff ff       	call   804f710 <_malloc_r>
 80531cd:	85 c0                	test   %eax,%eax
 80531cf:	89 c3                	mov    %eax,%ebx
 80531d1:	0f 84 91 00 00 00    	je     8053268 <_calloc_r+0xb8>
 80531d7:	8b 40 fc             	mov    -0x4(%eax),%eax
 80531da:	83 e0 fc             	and    $0xfffffffc,%eax
 80531dd:	83 e8 04             	sub    $0x4,%eax
 80531e0:	83 f8 24             	cmp    $0x24,%eax
 80531e3:	77 63                	ja     8053248 <_calloc_r+0x98>
 80531e5:	83 f8 13             	cmp    $0x13,%eax
 80531e8:	89 da                	mov    %ebx,%edx
 80531ea:	77 1c                	ja     8053208 <_calloc_r+0x58>
 80531ec:	c7 02 00 00 00 00    	movl   $0x0,(%edx)
 80531f2:	89 d8                	mov    %ebx,%eax
 80531f4:	c7 42 04 00 00 00 00 	movl   $0x0,0x4(%edx)
 80531fb:	c7 42 08 00 00 00 00 	movl   $0x0,0x8(%edx)
 8053202:	83 c4 14             	add    $0x14,%esp
 8053205:	5b                   	pop    %ebx
 8053206:	5d                   	pop    %ebp
 8053207:	c3                   	ret    
 8053208:	83 f8 1b             	cmp    $0x1b,%eax
 805320b:	c7 03 00 00 00 00    	movl   $0x0,(%ebx)
 8053211:	8d 53 08             	lea    0x8(%ebx),%edx
 8053214:	c7 43 04 00 00 00 00 	movl   $0x0,0x4(%ebx)
 805321b:	76 cf                	jbe    80531ec <_calloc_r+0x3c>
 805321d:	83 f8 24             	cmp    $0x24,%eax
 8053220:	c7 43 08 00 00 00 00 	movl   $0x0,0x8(%ebx)
 8053227:	8d 53 10             	lea    0x10(%ebx),%edx
 805322a:	c7 43 0c 00 00 00 00 	movl   $0x0,0xc(%ebx)
 8053231:	75 b9                	jne    80531ec <_calloc_r+0x3c>
 8053233:	c7 43 10 00 00 00 00 	movl   $0x0,0x10(%ebx)
 805323a:	8d 53 18             	lea    0x18(%ebx),%edx
 805323d:	c7 43 14 00 00 00 00 	movl   $0x0,0x14(%ebx)
 8053244:	eb a6                	jmp    80531ec <_calloc_r+0x3c>
 8053246:	66 90                	xchg   %ax,%ax
 8053248:	89 1c 24             	mov    %ebx,(%esp)
 805324b:	89 44 24 08          	mov    %eax,0x8(%esp)
 805324f:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 8053256:	00 
 8053257:	e8 a5 5f ff ff       	call   8049201 <memset>
 805325c:	83 c4 14             	add    $0x14,%esp
 805325f:	89 d8                	mov    %ebx,%eax
 8053261:	5b                   	pop    %ebx
 8053262:	5d                   	pop    %ebp
 8053263:	c3                   	ret    
 8053264:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8053268:	31 c0                	xor    %eax,%eax
 805326a:	eb 96                	jmp    8053202 <_calloc_r+0x52>
 805326c:	66 90                	xchg   %ax,%ax
 805326e:	66 90                	xchg   %ax,%ax

08053270 <_close_r>:
 8053270:	55                   	push   %ebp
 8053271:	89 e5                	mov    %esp,%ebp
 8053273:	83 ec 18             	sub    $0x18,%esp
 8053276:	8b 45 0c             	mov    0xc(%ebp),%eax
 8053279:	c7 05 74 d6 06 08 00 	movl   $0x0,0x806d674
 8053280:	00 00 00 
 8053283:	89 04 24             	mov    %eax,(%esp)
 8053286:	e8 c5 4f ff ff       	call   8048250 <close>
 805328b:	83 f8 ff             	cmp    $0xffffffff,%eax
 805328e:	74 08                	je     8053298 <_close_r+0x28>
 8053290:	c9                   	leave  
 8053291:	c3                   	ret    
 8053292:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 8053298:	8b 15 74 d6 06 08    	mov    0x806d674,%edx
 805329e:	85 d2                	test   %edx,%edx
 80532a0:	74 ee                	je     8053290 <_close_r+0x20>
 80532a2:	8b 4d 08             	mov    0x8(%ebp),%ecx
 80532a5:	89 11                	mov    %edx,(%ecx)
 80532a7:	c9                   	leave  
 80532a8:	c3                   	ret    
 80532a9:	66 90                	xchg   %ax,%ax
 80532ab:	66 90                	xchg   %ax,%ax
 80532ad:	66 90                	xchg   %ax,%ax
 80532af:	90                   	nop

080532b0 <_fclose_r>:
 80532b0:	55                   	push   %ebp
 80532b1:	89 e5                	mov    %esp,%ebp
 80532b3:	57                   	push   %edi
 80532b4:	56                   	push   %esi
 80532b5:	53                   	push   %ebx
 80532b6:	83 ec 1c             	sub    $0x1c,%esp
 80532b9:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 80532bc:	8b 75 08             	mov    0x8(%ebp),%esi
 80532bf:	85 db                	test   %ebx,%ebx
 80532c1:	74 16                	je     80532d9 <_fclose_r+0x29>
 80532c3:	85 f6                	test   %esi,%esi
 80532c5:	74 0b                	je     80532d2 <_fclose_r+0x22>
 80532c7:	8b 56 38             	mov    0x38(%esi),%edx
 80532ca:	85 d2                	test   %edx,%edx
 80532cc:	0f 84 9e 00 00 00    	je     8053370 <_fclose_r+0xc0>
 80532d2:	66 83 7b 0c 00       	cmpw   $0x0,0xc(%ebx)
 80532d7:	75 0f                	jne    80532e8 <_fclose_r+0x38>
 80532d9:	83 c4 1c             	add    $0x1c,%esp
 80532dc:	31 c0                	xor    %eax,%eax
 80532de:	5b                   	pop    %ebx
 80532df:	5e                   	pop    %esi
 80532e0:	5f                   	pop    %edi
 80532e1:	5d                   	pop    %ebp
 80532e2:	c3                   	ret    
 80532e3:	90                   	nop
 80532e4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 80532e8:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 80532ec:	89 34 24             	mov    %esi,(%esp)
 80532ef:	e8 ac b8 ff ff       	call   804eba0 <_fflush_r>
 80532f4:	89 c7                	mov    %eax,%edi
 80532f6:	8b 43 2c             	mov    0x2c(%ebx),%eax
 80532f9:	85 c0                	test   %eax,%eax
 80532fb:	74 16                	je     8053313 <_fclose_r+0x63>
 80532fd:	8b 53 1c             	mov    0x1c(%ebx),%edx
 8053300:	89 34 24             	mov    %esi,(%esp)
 8053303:	89 54 24 04          	mov    %edx,0x4(%esp)
 8053307:	ff d0                	call   *%eax
 8053309:	85 c0                	test   %eax,%eax
 805330b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8053310:	0f 48 f8             	cmovs  %eax,%edi
 8053313:	f6 43 0c 80          	testb  $0x80,0xc(%ebx)
 8053317:	75 67                	jne    8053380 <_fclose_r+0xd0>
 8053319:	8b 43 30             	mov    0x30(%ebx),%eax
 805331c:	85 c0                	test   %eax,%eax
 805331e:	74 1a                	je     805333a <_fclose_r+0x8a>
 8053320:	8d 53 40             	lea    0x40(%ebx),%edx
 8053323:	39 d0                	cmp    %edx,%eax
 8053325:	74 0c                	je     8053333 <_fclose_r+0x83>
 8053327:	89 44 24 04          	mov    %eax,0x4(%esp)
 805332b:	89 34 24             	mov    %esi,(%esp)
 805332e:	e8 2d be ff ff       	call   804f160 <_free_r>
 8053333:	c7 43 30 00 00 00 00 	movl   $0x0,0x30(%ebx)
 805333a:	8b 43 44             	mov    0x44(%ebx),%eax
 805333d:	85 c0                	test   %eax,%eax
 805333f:	74 13                	je     8053354 <_fclose_r+0xa4>
 8053341:	89 44 24 04          	mov    %eax,0x4(%esp)
 8053345:	89 34 24             	mov    %esi,(%esp)
 8053348:	e8 13 be ff ff       	call   804f160 <_free_r>
 805334d:	c7 43 44 00 00 00 00 	movl   $0x0,0x44(%ebx)
 8053354:	e8 97 bc ff ff       	call   804eff0 <__sfp_lock_acquire>
 8053359:	31 c0                	xor    %eax,%eax
 805335b:	66 89 43 0c          	mov    %ax,0xc(%ebx)
 805335f:	e8 9c bc ff ff       	call   804f000 <__sfp_lock_release>
 8053364:	83 c4 1c             	add    $0x1c,%esp
 8053367:	89 f8                	mov    %edi,%eax
 8053369:	5b                   	pop    %ebx
 805336a:	5e                   	pop    %esi
 805336b:	5f                   	pop    %edi
 805336c:	5d                   	pop    %ebp
 805336d:	c3                   	ret    
 805336e:	66 90                	xchg   %ax,%ax
 8053370:	89 34 24             	mov    %esi,(%esp)
 8053373:	e8 98 b9 ff ff       	call   804ed10 <__sinit>
 8053378:	e9 55 ff ff ff       	jmp    80532d2 <_fclose_r+0x22>
 805337d:	8d 76 00             	lea    0x0(%esi),%esi
 8053380:	8b 43 10             	mov    0x10(%ebx),%eax
 8053383:	89 34 24             	mov    %esi,(%esp)
 8053386:	89 44 24 04          	mov    %eax,0x4(%esp)
 805338a:	e8 d1 bd ff ff       	call   804f160 <_free_r>
 805338f:	eb 88                	jmp    8053319 <_fclose_r+0x69>
 8053391:	eb 0d                	jmp    80533a0 <fclose>
 8053393:	90                   	nop
 8053394:	90                   	nop
 8053395:	90                   	nop
 8053396:	90                   	nop
 8053397:	90                   	nop
 8053398:	90                   	nop
 8053399:	90                   	nop
 805339a:	90                   	nop
 805339b:	90                   	nop
 805339c:	90                   	nop
 805339d:	90                   	nop
 805339e:	90                   	nop
 805339f:	90                   	nop

080533a0 <fclose>:
 80533a0:	55                   	push   %ebp
 80533a1:	89 e5                	mov    %esp,%ebp
 80533a3:	83 ec 18             	sub    $0x18,%esp
 80533a6:	e8 05 c1 ff ff       	call   804f4b0 <__getreent>
 80533ab:	8b 55 08             	mov    0x8(%ebp),%edx
 80533ae:	89 54 24 04          	mov    %edx,0x4(%esp)
 80533b2:	89 04 24             	mov    %eax,(%esp)
 80533b5:	e8 f6 fe ff ff       	call   80532b0 <_fclose_r>
 80533ba:	c9                   	leave  
 80533bb:	c3                   	ret    
 80533bc:	66 90                	xchg   %ax,%ax
 80533be:	66 90                	xchg   %ax,%ax

080533c0 <_fputwc_r>:
 80533c0:	55                   	push   %ebp
 80533c1:	89 e5                	mov    %esp,%ebp
 80533c3:	57                   	push   %edi
 80533c4:	56                   	push   %esi
 80533c5:	53                   	push   %ebx
 80533c6:	83 ec 2c             	sub    $0x2c,%esp
 80533c9:	8b 5d 10             	mov    0x10(%ebp),%ebx
 80533cc:	0f b7 43 0c          	movzwl 0xc(%ebx),%eax
 80533d0:	f6 c4 20             	test   $0x20,%ah
 80533d3:	75 0e                	jne    80533e3 <_fputwc_r+0x23>
 80533d5:	81 4b 64 00 20 00 00 	orl    $0x2000,0x64(%ebx)
 80533dc:	80 cc 20             	or     $0x20,%ah
 80533df:	66 89 43 0c          	mov    %ax,0xc(%ebx)
 80533e3:	e8 58 c1 ff ff       	call   804f540 <__locale_mb_cur_max>
 80533e8:	83 f8 01             	cmp    $0x1,%eax
 80533eb:	0f 84 cf 00 00 00    	je     80534c0 <_fputwc_r+0x100>
 80533f1:	8d 43 5c             	lea    0x5c(%ebx),%eax
 80533f4:	89 44 24 0c          	mov    %eax,0xc(%esp)
 80533f8:	8b 45 0c             	mov    0xc(%ebp),%eax
 80533fb:	89 44 24 08          	mov    %eax,0x8(%esp)
 80533ff:	8d 45 e7             	lea    -0x19(%ebp),%eax
 8053402:	89 44 24 04          	mov    %eax,0x4(%esp)
 8053406:	8b 45 08             	mov    0x8(%ebp),%eax
 8053409:	89 04 24             	mov    %eax,(%esp)
 805340c:	e8 df 0f 00 00       	call   80543f0 <_wcrtomb_r>
 8053411:	83 f8 ff             	cmp    $0xffffffff,%eax
 8053414:	89 c7                	mov    %eax,%edi
 8053416:	74 60                	je     8053478 <_fputwc_r+0xb8>
 8053418:	85 ff                	test   %edi,%edi
 805341a:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 805341e:	74 48                	je     8053468 <_fputwc_r+0xa8>
 8053420:	31 f6                	xor    %esi,%esi
 8053422:	eb 17                	jmp    805343b <_fputwc_r+0x7b>
 8053424:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8053428:	8b 13                	mov    (%ebx),%edx
 805342a:	88 02                	mov    %al,(%edx)
 805342c:	83 03 01             	addl   $0x1,(%ebx)
 805342f:	83 c6 01             	add    $0x1,%esi
 8053432:	39 fe                	cmp    %edi,%esi
 8053434:	73 32                	jae    8053468 <_fputwc_r+0xa8>
 8053436:	0f b6 44 35 e7       	movzbl -0x19(%ebp,%esi,1),%eax
 805343b:	8b 4b 08             	mov    0x8(%ebx),%ecx
 805343e:	8d 51 ff             	lea    -0x1(%ecx),%edx
 8053441:	85 d2                	test   %edx,%edx
 8053443:	89 53 08             	mov    %edx,0x8(%ebx)
 8053446:	79 e0                	jns    8053428 <_fputwc_r+0x68>
 8053448:	3b 53 18             	cmp    0x18(%ebx),%edx
 805344b:	7c 43                	jl     8053490 <_fputwc_r+0xd0>
 805344d:	8b 13                	mov    (%ebx),%edx
 805344f:	88 02                	mov    %al,(%edx)
 8053451:	8b 03                	mov    (%ebx),%eax
 8053453:	80 38 0a             	cmpb   $0xa,(%eax)
 8053456:	0f 84 8c 00 00 00    	je     80534e8 <_fputwc_r+0x128>
 805345c:	83 c6 01             	add    $0x1,%esi
 805345f:	83 c0 01             	add    $0x1,%eax
 8053462:	39 fe                	cmp    %edi,%esi
 8053464:	89 03                	mov    %eax,(%ebx)
 8053466:	72 ce                	jb     8053436 <_fputwc_r+0x76>
 8053468:	8b 45 0c             	mov    0xc(%ebp),%eax
 805346b:	83 c4 2c             	add    $0x2c,%esp
 805346e:	5b                   	pop    %ebx
 805346f:	5e                   	pop    %esi
 8053470:	5f                   	pop    %edi
 8053471:	5d                   	pop    %ebp
 8053472:	c3                   	ret    
 8053473:	90                   	nop
 8053474:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8053478:	66 83 4b 0c 40       	orw    $0x40,0xc(%ebx)
 805347d:	83 c4 2c             	add    $0x2c,%esp
 8053480:	5b                   	pop    %ebx
 8053481:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8053486:	5e                   	pop    %esi
 8053487:	5f                   	pop    %edi
 8053488:	5d                   	pop    %ebp
 8053489:	c3                   	ret    
 805348a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 8053490:	89 5c 24 08          	mov    %ebx,0x8(%esp)
 8053494:	89 44 24 04          	mov    %eax,0x4(%esp)
 8053498:	8b 45 08             	mov    0x8(%ebp),%eax
 805349b:	89 04 24             	mov    %eax,(%esp)
 805349e:	e8 fd 0d 00 00       	call   80542a0 <__swbuf_r>
 80534a3:	83 f8 ff             	cmp    $0xffffffff,%eax
 80534a6:	0f 94 c0             	sete   %al
 80534a9:	84 c0                	test   %al,%al
 80534ab:	74 82                	je     805342f <_fputwc_r+0x6f>
 80534ad:	83 c4 2c             	add    $0x2c,%esp
 80534b0:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 80534b5:	5b                   	pop    %ebx
 80534b6:	5e                   	pop    %esi
 80534b7:	5f                   	pop    %edi
 80534b8:	5d                   	pop    %ebp
 80534b9:	c3                   	ret    
 80534ba:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 80534c0:	8b 45 0c             	mov    0xc(%ebp),%eax
 80534c3:	83 e8 01             	sub    $0x1,%eax
 80534c6:	3d fe 00 00 00       	cmp    $0xfe,%eax
 80534cb:	0f 87 20 ff ff ff    	ja     80533f1 <_fputwc_r+0x31>
 80534d1:	0f b6 45 0c          	movzbl 0xc(%ebp),%eax
 80534d5:	bf 01 00 00 00       	mov    $0x1,%edi
 80534da:	88 45 e7             	mov    %al,-0x19(%ebp)
 80534dd:	e9 3e ff ff ff       	jmp    8053420 <_fputwc_r+0x60>
 80534e2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 80534e8:	89 5c 24 08          	mov    %ebx,0x8(%esp)
 80534ec:	c7 44 24 04 0a 00 00 	movl   $0xa,0x4(%esp)
 80534f3:	00 
 80534f4:	eb a2                	jmp    8053498 <_fputwc_r+0xd8>
 80534f6:	8d 76 00             	lea    0x0(%esi),%esi
 80534f9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

08053500 <fputwc>:
 8053500:	55                   	push   %ebp
 8053501:	89 e5                	mov    %esp,%ebp
 8053503:	83 ec 18             	sub    $0x18,%esp
 8053506:	e8 a5 bf ff ff       	call   804f4b0 <__getreent>
 805350b:	85 c0                	test   %eax,%eax
 805350d:	74 15                	je     8053524 <fputwc+0x24>
 805350f:	8b 50 38             	mov    0x38(%eax),%edx
 8053512:	85 d2                	test   %edx,%edx
 8053514:	75 0e                	jne    8053524 <fputwc+0x24>
 8053516:	89 04 24             	mov    %eax,(%esp)
 8053519:	89 45 f4             	mov    %eax,-0xc(%ebp)
 805351c:	e8 ef b7 ff ff       	call   804ed10 <__sinit>
 8053521:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8053524:	8b 55 0c             	mov    0xc(%ebp),%edx
 8053527:	89 04 24             	mov    %eax,(%esp)
 805352a:	89 54 24 08          	mov    %edx,0x8(%esp)
 805352e:	8b 55 08             	mov    0x8(%ebp),%edx
 8053531:	89 54 24 04          	mov    %edx,0x4(%esp)
 8053535:	e8 86 fe ff ff       	call   80533c0 <_fputwc_r>
 805353a:	c9                   	leave  
 805353b:	c3                   	ret    
 805353c:	66 90                	xchg   %ax,%ax
 805353e:	66 90                	xchg   %ax,%ax

08053540 <_fstat_r>:
 8053540:	55                   	push   %ebp
 8053541:	89 e5                	mov    %esp,%ebp
 8053543:	83 ec 18             	sub    $0x18,%esp
 8053546:	8b 45 10             	mov    0x10(%ebp),%eax
 8053549:	c7 05 74 d6 06 08 00 	movl   $0x0,0x806d674
 8053550:	00 00 00 
 8053553:	89 44 24 04          	mov    %eax,0x4(%esp)
 8053557:	8b 45 0c             	mov    0xc(%ebp),%eax
 805355a:	89 04 24             	mov    %eax,(%esp)
 805355d:	e8 fe 4c ff ff       	call   8048260 <fstat>
 8053562:	83 f8 ff             	cmp    $0xffffffff,%eax
 8053565:	74 09                	je     8053570 <_fstat_r+0x30>
 8053567:	c9                   	leave  
 8053568:	c3                   	ret    
 8053569:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 8053570:	8b 15 74 d6 06 08    	mov    0x806d674,%edx
 8053576:	85 d2                	test   %edx,%edx
 8053578:	74 ed                	je     8053567 <_fstat_r+0x27>
 805357a:	8b 4d 08             	mov    0x8(%ebp),%ecx
 805357d:	89 11                	mov    %edx,(%ecx)
 805357f:	c9                   	leave  
 8053580:	c3                   	ret    
 8053581:	66 90                	xchg   %ax,%ax
 8053583:	66 90                	xchg   %ax,%ax
 8053585:	66 90                	xchg   %ax,%ax
 8053587:	66 90                	xchg   %ax,%ax
 8053589:	66 90                	xchg   %ax,%ax
 805358b:	66 90                	xchg   %ax,%ax
 805358d:	66 90                	xchg   %ax,%ax
 805358f:	90                   	nop

08053590 <__sfvwrite_r>:
 8053590:	55                   	push   %ebp
 8053591:	89 e5                	mov    %esp,%ebp
 8053593:	57                   	push   %edi
 8053594:	56                   	push   %esi
 8053595:	53                   	push   %ebx
 8053596:	83 ec 3c             	sub    $0x3c,%esp
 8053599:	8b 45 10             	mov    0x10(%ebp),%eax
 805359c:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 805359f:	8b 48 08             	mov    0x8(%eax),%ecx
 80535a2:	85 c9                	test   %ecx,%ecx
 80535a4:	74 7e                	je     8053624 <__sfvwrite_r+0x94>
 80535a6:	0f b7 43 0c          	movzwl 0xc(%ebx),%eax
 80535aa:	a8 08                	test   $0x8,%al
 80535ac:	0f 84 7e 00 00 00    	je     8053630 <__sfvwrite_r+0xa0>
 80535b2:	8b 53 10             	mov    0x10(%ebx),%edx
 80535b5:	85 d2                	test   %edx,%edx
 80535b7:	74 77                	je     8053630 <__sfvwrite_r+0xa0>
 80535b9:	8b 7d 10             	mov    0x10(%ebp),%edi
 80535bc:	a8 02                	test   $0x2,%al
 80535be:	8b 3f                	mov    (%edi),%edi
 80535c0:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 80535c3:	0f 84 92 00 00 00    	je     805365b <__sfvwrite_r+0xcb>
 80535c9:	31 ff                	xor    %edi,%edi
 80535cb:	31 f6                	xor    %esi,%esi
 80535cd:	89 5d 0c             	mov    %ebx,0xc(%ebp)
 80535d0:	89 fb                	mov    %edi,%ebx
 80535d2:	8b 7d 0c             	mov    0xc(%ebp),%edi
 80535d5:	8d 76 00             	lea    0x0(%esi),%esi
 80535d8:	85 f6                	test   %esi,%esi
 80535da:	0f 84 00 01 00 00    	je     80536e0 <__sfvwrite_r+0x150>
 80535e0:	81 fe 00 fc ff 7f    	cmp    $0x7ffffc00,%esi
 80535e6:	b8 00 fc ff 7f       	mov    $0x7ffffc00,%eax
 80535eb:	0f 46 c6             	cmovbe %esi,%eax
 80535ee:	89 44 24 0c          	mov    %eax,0xc(%esp)
 80535f2:	89 5c 24 08          	mov    %ebx,0x8(%esp)
 80535f6:	8b 47 1c             	mov    0x1c(%edi),%eax
 80535f9:	89 44 24 04          	mov    %eax,0x4(%esp)
 80535fd:	8b 45 08             	mov    0x8(%ebp),%eax
 8053600:	89 04 24             	mov    %eax,(%esp)
 8053603:	ff 57 24             	call   *0x24(%edi)
 8053606:	85 c0                	test   %eax,%eax
 8053608:	0f 8e 2a 04 00 00    	jle    8053a38 <__sfvwrite_r+0x4a8>
 805360e:	8b 4d 10             	mov    0x10(%ebp),%ecx
 8053611:	01 c3                	add    %eax,%ebx
 8053613:	29 c6                	sub    %eax,%esi
 8053615:	8b 49 08             	mov    0x8(%ecx),%ecx
 8053618:	29 c1                	sub    %eax,%ecx
 805361a:	8b 45 10             	mov    0x10(%ebp),%eax
 805361d:	85 c9                	test   %ecx,%ecx
 805361f:	89 48 08             	mov    %ecx,0x8(%eax)
 8053622:	75 b4                	jne    80535d8 <__sfvwrite_r+0x48>
 8053624:	31 c0                	xor    %eax,%eax
 8053626:	83 c4 3c             	add    $0x3c,%esp
 8053629:	5b                   	pop    %ebx
 805362a:	5e                   	pop    %esi
 805362b:	5f                   	pop    %edi
 805362c:	5d                   	pop    %ebp
 805362d:	c3                   	ret    
 805362e:	66 90                	xchg   %ax,%ax
 8053630:	8b 45 08             	mov    0x8(%ebp),%eax
 8053633:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 8053637:	89 04 24             	mov    %eax,(%esp)
 805363a:	e8 61 9e ff ff       	call   804d4a0 <__swsetup_r>
 805363f:	85 c0                	test   %eax,%eax
 8053641:	0f 85 f8 03 00 00    	jne    8053a3f <__sfvwrite_r+0x4af>
 8053647:	8b 7d 10             	mov    0x10(%ebp),%edi
 805364a:	0f b7 43 0c          	movzwl 0xc(%ebx),%eax
 805364e:	8b 3f                	mov    (%edi),%edi
 8053650:	a8 02                	test   $0x2,%al
 8053652:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 8053655:	0f 85 6e ff ff ff    	jne    80535c9 <__sfvwrite_r+0x39>
 805365b:	a8 01                	test   $0x1,%al
 805365d:	0f 85 95 00 00 00    	jne    80536f8 <__sfvwrite_r+0x168>
 8053663:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%ebp)
 805366a:	31 ff                	xor    %edi,%edi
 805366c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8053670:	85 ff                	test   %edi,%edi
 8053672:	74 5b                	je     80536cf <__sfvwrite_r+0x13f>
 8053674:	f6 c4 02             	test   $0x2,%ah
 8053677:	8b 73 08             	mov    0x8(%ebx),%esi
 805367a:	0f 84 30 01 00 00    	je     80537b0 <__sfvwrite_r+0x220>
 8053680:	39 f7                	cmp    %esi,%edi
 8053682:	0f 82 d8 01 00 00    	jb     8053860 <__sfvwrite_r+0x2d0>
 8053688:	66 a9 80 04          	test   $0x480,%ax
 805368c:	0f 85 16 02 00 00    	jne    80538a8 <__sfvwrite_r+0x318>
 8053692:	8b 03                	mov    (%ebx),%eax
 8053694:	89 f2                	mov    %esi,%edx
 8053696:	89 54 24 08          	mov    %edx,0x8(%esp)
 805369a:	89 55 dc             	mov    %edx,-0x24(%ebp)
 805369d:	8b 55 e0             	mov    -0x20(%ebp),%edx
 80536a0:	89 04 24             	mov    %eax,(%esp)
 80536a3:	89 54 24 04          	mov    %edx,0x4(%esp)
 80536a7:	e8 44 04 00 00       	call   8053af0 <memmove>
 80536ac:	8b 55 dc             	mov    -0x24(%ebp),%edx
 80536af:	01 13                	add    %edx,(%ebx)
 80536b1:	29 73 08             	sub    %esi,0x8(%ebx)
 80536b4:	89 fe                	mov    %edi,%esi
 80536b6:	8b 45 10             	mov    0x10(%ebp),%eax
 80536b9:	29 f7                	sub    %esi,%edi
 80536bb:	01 75 e0             	add    %esi,-0x20(%ebp)
 80536be:	29 70 08             	sub    %esi,0x8(%eax)
 80536c1:	0f 84 5d ff ff ff    	je     8053624 <__sfvwrite_r+0x94>
 80536c7:	85 ff                	test   %edi,%edi
 80536c9:	0f b7 43 0c          	movzwl 0xc(%ebx),%eax
 80536cd:	75 a5                	jne    8053674 <__sfvwrite_r+0xe4>
 80536cf:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
 80536d2:	83 45 e4 08          	addl   $0x8,-0x1c(%ebp)
 80536d6:	8b 11                	mov    (%ecx),%edx
 80536d8:	8b 79 04             	mov    0x4(%ecx),%edi
 80536db:	89 55 e0             	mov    %edx,-0x20(%ebp)
 80536de:	eb 90                	jmp    8053670 <__sfvwrite_r+0xe0>
 80536e0:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 80536e3:	83 45 e4 08          	addl   $0x8,-0x1c(%ebp)
 80536e7:	8b 18                	mov    (%eax),%ebx
 80536e9:	8b 70 04             	mov    0x4(%eax),%esi
 80536ec:	e9 e7 fe ff ff       	jmp    80535d8 <__sfvwrite_r+0x48>
 80536f1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 80536f8:	c7 45 d8 00 00 00 00 	movl   $0x0,-0x28(%ebp)
 80536ff:	31 ff                	xor    %edi,%edi
 8053701:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%ebp)
 8053708:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%ebp)
 805370f:	90                   	nop
 8053710:	85 ff                	test   %edi,%edi
 8053712:	74 7f                	je     8053793 <__sfvwrite_r+0x203>
 8053714:	8b 45 dc             	mov    -0x24(%ebp),%eax
 8053717:	85 c0                	test   %eax,%eax
 8053719:	0f 84 51 01 00 00    	je     8053870 <__sfvwrite_r+0x2e0>
 805371f:	8b 75 d8             	mov    -0x28(%ebp),%esi
 8053722:	8b 0b                	mov    (%ebx),%ecx
 8053724:	8b 53 08             	mov    0x8(%ebx),%edx
 8053727:	8b 43 14             	mov    0x14(%ebx),%eax
 805372a:	39 fe                	cmp    %edi,%esi
 805372c:	0f 47 f7             	cmova  %edi,%esi
 805372f:	3b 4b 10             	cmp    0x10(%ebx),%ecx
 8053732:	76 0a                	jbe    805373e <__sfvwrite_r+0x1ae>
 8053734:	01 c2                	add    %eax,%edx
 8053736:	39 d6                	cmp    %edx,%esi
 8053738:	0f 8f 4a 02 00 00    	jg     8053988 <__sfvwrite_r+0x3f8>
 805373e:	39 c6                	cmp    %eax,%esi
 8053740:	0f 8c da 00 00 00    	jl     8053820 <__sfvwrite_r+0x290>
 8053746:	89 44 24 0c          	mov    %eax,0xc(%esp)
 805374a:	8b 45 e0             	mov    -0x20(%ebp),%eax
 805374d:	89 44 24 08          	mov    %eax,0x8(%esp)
 8053751:	8b 43 1c             	mov    0x1c(%ebx),%eax
 8053754:	89 44 24 04          	mov    %eax,0x4(%esp)
 8053758:	8b 45 08             	mov    0x8(%ebp),%eax
 805375b:	89 04 24             	mov    %eax,(%esp)
 805375e:	ff 53 24             	call   *0x24(%ebx)
 8053761:	85 c0                	test   %eax,%eax
 8053763:	89 c6                	mov    %eax,%esi
 8053765:	0f 8e 9d 00 00 00    	jle    8053808 <__sfvwrite_r+0x278>
 805376b:	29 75 d8             	sub    %esi,-0x28(%ebp)
 805376e:	0f 84 cd 00 00 00    	je     8053841 <__sfvwrite_r+0x2b1>
 8053774:	8b 45 10             	mov    0x10(%ebp),%eax
 8053777:	29 f7                	sub    %esi,%edi
 8053779:	8b 55 10             	mov    0x10(%ebp),%edx
 805377c:	01 75 e0             	add    %esi,-0x20(%ebp)
 805377f:	8b 40 08             	mov    0x8(%eax),%eax
 8053782:	29 f0                	sub    %esi,%eax
 8053784:	85 c0                	test   %eax,%eax
 8053786:	89 42 08             	mov    %eax,0x8(%edx)
 8053789:	0f 84 95 fe ff ff    	je     8053624 <__sfvwrite_r+0x94>
 805378f:	85 ff                	test   %edi,%edi
 8053791:	75 81                	jne    8053714 <__sfvwrite_r+0x184>
 8053793:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 8053796:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%ebp)
 805379d:	83 45 e4 08          	addl   $0x8,-0x1c(%ebp)
 80537a1:	8b 08                	mov    (%eax),%ecx
 80537a3:	8b 78 04             	mov    0x4(%eax),%edi
 80537a6:	89 4d e0             	mov    %ecx,-0x20(%ebp)
 80537a9:	e9 62 ff ff ff       	jmp    8053710 <__sfvwrite_r+0x180>
 80537ae:	66 90                	xchg   %ax,%ax
 80537b0:	8b 03                	mov    (%ebx),%eax
 80537b2:	3b 43 10             	cmp    0x10(%ebx),%eax
 80537b5:	77 0b                	ja     80537c2 <__sfvwrite_r+0x232>
 80537b7:	8b 4b 14             	mov    0x14(%ebx),%ecx
 80537ba:	39 cf                	cmp    %ecx,%edi
 80537bc:	0f 83 86 01 00 00    	jae    8053948 <__sfvwrite_r+0x3b8>
 80537c2:	8b 55 e0             	mov    -0x20(%ebp),%edx
 80537c5:	39 f7                	cmp    %esi,%edi
 80537c7:	0f 46 f7             	cmovbe %edi,%esi
 80537ca:	89 74 24 08          	mov    %esi,0x8(%esp)
 80537ce:	89 04 24             	mov    %eax,(%esp)
 80537d1:	89 54 24 04          	mov    %edx,0x4(%esp)
 80537d5:	e8 16 03 00 00       	call   8053af0 <memmove>
 80537da:	8b 43 08             	mov    0x8(%ebx),%eax
 80537dd:	01 33                	add    %esi,(%ebx)
 80537df:	29 f0                	sub    %esi,%eax
 80537e1:	85 c0                	test   %eax,%eax
 80537e3:	89 43 08             	mov    %eax,0x8(%ebx)
 80537e6:	0f 85 ca fe ff ff    	jne    80536b6 <__sfvwrite_r+0x126>
 80537ec:	8b 45 08             	mov    0x8(%ebp),%eax
 80537ef:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 80537f3:	89 04 24             	mov    %eax,(%esp)
 80537f6:	e8 a5 b3 ff ff       	call   804eba0 <_fflush_r>
 80537fb:	85 c0                	test   %eax,%eax
 80537fd:	0f 84 b3 fe ff ff    	je     80536b6 <__sfvwrite_r+0x126>
 8053803:	90                   	nop
 8053804:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8053808:	0f b7 43 0c          	movzwl 0xc(%ebx),%eax
 805380c:	83 c8 40             	or     $0x40,%eax
 805380f:	66 89 43 0c          	mov    %ax,0xc(%ebx)
 8053813:	83 c4 3c             	add    $0x3c,%esp
 8053816:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 805381b:	5b                   	pop    %ebx
 805381c:	5e                   	pop    %esi
 805381d:	5f                   	pop    %edi
 805381e:	5d                   	pop    %ebp
 805381f:	c3                   	ret    
 8053820:	8b 45 e0             	mov    -0x20(%ebp),%eax
 8053823:	89 74 24 08          	mov    %esi,0x8(%esp)
 8053827:	89 0c 24             	mov    %ecx,(%esp)
 805382a:	89 44 24 04          	mov    %eax,0x4(%esp)
 805382e:	e8 bd 02 00 00       	call   8053af0 <memmove>
 8053833:	29 73 08             	sub    %esi,0x8(%ebx)
 8053836:	01 33                	add    %esi,(%ebx)
 8053838:	29 75 d8             	sub    %esi,-0x28(%ebp)
 805383b:	0f 85 33 ff ff ff    	jne    8053774 <__sfvwrite_r+0x1e4>
 8053841:	8b 45 08             	mov    0x8(%ebp),%eax
 8053844:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 8053848:	89 04 24             	mov    %eax,(%esp)
 805384b:	e8 50 b3 ff ff       	call   804eba0 <_fflush_r>
 8053850:	85 c0                	test   %eax,%eax
 8053852:	75 b4                	jne    8053808 <__sfvwrite_r+0x278>
 8053854:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%ebp)
 805385b:	e9 14 ff ff ff       	jmp    8053774 <__sfvwrite_r+0x1e4>
 8053860:	89 fe                	mov    %edi,%esi
 8053862:	8b 03                	mov    (%ebx),%eax
 8053864:	89 fa                	mov    %edi,%edx
 8053866:	e9 2b fe ff ff       	jmp    8053696 <__sfvwrite_r+0x106>
 805386b:	90                   	nop
 805386c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8053870:	8b 75 e0             	mov    -0x20(%ebp),%esi
 8053873:	89 7c 24 08          	mov    %edi,0x8(%esp)
 8053877:	c7 44 24 04 0a 00 00 	movl   $0xa,0x4(%esp)
 805387e:	00 
 805387f:	89 34 24             	mov    %esi,(%esp)
 8053882:	e8 c9 c5 ff ff       	call   804fe50 <memchr>
 8053887:	85 c0                	test   %eax,%eax
 8053889:	0f 84 91 01 00 00    	je     8053a20 <__sfvwrite_r+0x490>
 805388f:	83 c0 01             	add    $0x1,%eax
 8053892:	89 45 d8             	mov    %eax,-0x28(%ebp)
 8053895:	c7 45 dc 01 00 00 00 	movl   $0x1,-0x24(%ebp)
 805389c:	29 75 d8             	sub    %esi,-0x28(%ebp)
 805389f:	e9 7b fe ff ff       	jmp    805371f <__sfvwrite_r+0x18f>
 80538a4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 80538a8:	8b 53 14             	mov    0x14(%ebx),%edx
 80538ab:	8b 0b                	mov    (%ebx),%ecx
 80538ad:	8b 73 10             	mov    0x10(%ebx),%esi
 80538b0:	8d 14 52             	lea    (%edx,%edx,2),%edx
 80538b3:	89 4d dc             	mov    %ecx,-0x24(%ebp)
 80538b6:	89 d1                	mov    %edx,%ecx
 80538b8:	c1 e9 1f             	shr    $0x1f,%ecx
 80538bb:	29 75 dc             	sub    %esi,-0x24(%ebp)
 80538be:	01 ca                	add    %ecx,%edx
 80538c0:	8b 4d dc             	mov    -0x24(%ebp),%ecx
 80538c3:	d1 fa                	sar    %edx
 80538c5:	8d 4c 0f 01          	lea    0x1(%edi,%ecx,1),%ecx
 80538c9:	39 ca                	cmp    %ecx,%edx
 80538cb:	0f 83 f7 00 00 00    	jae    80539c8 <__sfvwrite_r+0x438>
 80538d1:	89 ca                	mov    %ecx,%edx
 80538d3:	f6 c4 04             	test   $0x4,%ah
 80538d6:	89 55 d8             	mov    %edx,-0x28(%ebp)
 80538d9:	0f 84 f7 00 00 00    	je     80539d6 <__sfvwrite_r+0x446>
 80538df:	8b 45 08             	mov    0x8(%ebp),%eax
 80538e2:	89 4c 24 04          	mov    %ecx,0x4(%esp)
 80538e6:	89 04 24             	mov    %eax,(%esp)
 80538e9:	e8 22 be ff ff       	call   804f710 <_malloc_r>
 80538ee:	8b 55 d8             	mov    -0x28(%ebp),%edx
 80538f1:	85 c0                	test   %eax,%eax
 80538f3:	89 c6                	mov    %eax,%esi
 80538f5:	0f 84 4e 01 00 00    	je     8053a49 <__sfvwrite_r+0x4b9>
 80538fb:	8b 45 dc             	mov    -0x24(%ebp),%eax
 80538fe:	89 55 d8             	mov    %edx,-0x28(%ebp)
 8053901:	89 44 24 08          	mov    %eax,0x8(%esp)
 8053905:	8b 43 10             	mov    0x10(%ebx),%eax
 8053908:	89 34 24             	mov    %esi,(%esp)
 805390b:	89 44 24 04          	mov    %eax,0x4(%esp)
 805390f:	e8 d4 c5 ff ff       	call   804fee8 <memcpy>
 8053914:	0f b7 43 0c          	movzwl 0xc(%ebx),%eax
 8053918:	8b 55 d8             	mov    -0x28(%ebp),%edx
 805391b:	66 25 7f fb          	and    $0xfb7f,%ax
 805391f:	0c 80                	or     $0x80,%al
 8053921:	66 89 43 0c          	mov    %ax,0xc(%ebx)
 8053925:	8b 4d dc             	mov    -0x24(%ebp),%ecx
 8053928:	89 53 14             	mov    %edx,0x14(%ebx)
 805392b:	89 73 10             	mov    %esi,0x10(%ebx)
 805392e:	89 c8                	mov    %ecx,%eax
 8053930:	29 ca                	sub    %ecx,%edx
 8053932:	01 f0                	add    %esi,%eax
 8053934:	89 fe                	mov    %edi,%esi
 8053936:	89 53 08             	mov    %edx,0x8(%ebx)
 8053939:	89 fa                	mov    %edi,%edx
 805393b:	89 03                	mov    %eax,(%ebx)
 805393d:	e9 54 fd ff ff       	jmp    8053696 <__sfvwrite_r+0x106>
 8053942:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 8053948:	81 ff ff ff ff 7f    	cmp    $0x7fffffff,%edi
 805394e:	b8 ff ff ff 7f       	mov    $0x7fffffff,%eax
 8053953:	0f 46 c7             	cmovbe %edi,%eax
 8053956:	99                   	cltd   
 8053957:	f7 f9                	idiv   %ecx
 8053959:	0f af c1             	imul   %ecx,%eax
 805395c:	89 44 24 0c          	mov    %eax,0xc(%esp)
 8053960:	8b 45 e0             	mov    -0x20(%ebp),%eax
 8053963:	89 44 24 08          	mov    %eax,0x8(%esp)
 8053967:	8b 43 1c             	mov    0x1c(%ebx),%eax
 805396a:	89 44 24 04          	mov    %eax,0x4(%esp)
 805396e:	8b 45 08             	mov    0x8(%ebp),%eax
 8053971:	89 04 24             	mov    %eax,(%esp)
 8053974:	ff 53 24             	call   *0x24(%ebx)
 8053977:	85 c0                	test   %eax,%eax
 8053979:	0f 8e 89 fe ff ff    	jle    8053808 <__sfvwrite_r+0x278>
 805397f:	89 c6                	mov    %eax,%esi
 8053981:	e9 30 fd ff ff       	jmp    80536b6 <__sfvwrite_r+0x126>
 8053986:	66 90                	xchg   %ax,%ax
 8053988:	8b 45 e0             	mov    -0x20(%ebp),%eax
 805398b:	89 54 24 08          	mov    %edx,0x8(%esp)
 805398f:	89 0c 24             	mov    %ecx,(%esp)
 8053992:	89 55 d4             	mov    %edx,-0x2c(%ebp)
 8053995:	89 44 24 04          	mov    %eax,0x4(%esp)
 8053999:	e8 52 01 00 00       	call   8053af0 <memmove>
 805399e:	8b 55 d4             	mov    -0x2c(%ebp),%edx
 80539a1:	8b 45 08             	mov    0x8(%ebp),%eax
 80539a4:	01 13                	add    %edx,(%ebx)
 80539a6:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 80539aa:	89 04 24             	mov    %eax,(%esp)
 80539ad:	e8 ee b1 ff ff       	call   804eba0 <_fflush_r>
 80539b2:	8b 55 d4             	mov    -0x2c(%ebp),%edx
 80539b5:	85 c0                	test   %eax,%eax
 80539b7:	0f 85 4b fe ff ff    	jne    8053808 <__sfvwrite_r+0x278>
 80539bd:	89 d6                	mov    %edx,%esi
 80539bf:	e9 a7 fd ff ff       	jmp    805376b <__sfvwrite_r+0x1db>
 80539c4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 80539c8:	f6 c4 04             	test   $0x4,%ah
 80539cb:	89 d1                	mov    %edx,%ecx
 80539cd:	89 55 d8             	mov    %edx,-0x28(%ebp)
 80539d0:	0f 85 09 ff ff ff    	jne    80538df <__sfvwrite_r+0x34f>
 80539d6:	8b 45 08             	mov    0x8(%ebp),%eax
 80539d9:	89 74 24 04          	mov    %esi,0x4(%esp)
 80539dd:	89 4c 24 08          	mov    %ecx,0x8(%esp)
 80539e1:	89 04 24             	mov    %eax,(%esp)
 80539e4:	e8 e7 01 00 00       	call   8053bd0 <_realloc_r>
 80539e9:	8b 55 d8             	mov    -0x28(%ebp),%edx
 80539ec:	85 c0                	test   %eax,%eax
 80539ee:	89 c6                	mov    %eax,%esi
 80539f0:	0f 85 2f ff ff ff    	jne    8053925 <__sfvwrite_r+0x395>
 80539f6:	8b 43 10             	mov    0x10(%ebx),%eax
 80539f9:	89 44 24 04          	mov    %eax,0x4(%esp)
 80539fd:	8b 45 08             	mov    0x8(%ebp),%eax
 8053a00:	89 04 24             	mov    %eax,(%esp)
 8053a03:	e8 58 b7 ff ff       	call   804f160 <_free_r>
 8053a08:	0f b7 43 0c          	movzwl 0xc(%ebx),%eax
 8053a0c:	8b 7d 08             	mov    0x8(%ebp),%edi
 8053a0f:	24 7f                	and    $0x7f,%al
 8053a11:	c7 07 0c 00 00 00    	movl   $0xc,(%edi)
 8053a17:	e9 f0 fd ff ff       	jmp    805380c <__sfvwrite_r+0x27c>
 8053a1c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8053a20:	8d 47 01             	lea    0x1(%edi),%eax
 8053a23:	89 45 d8             	mov    %eax,-0x28(%ebp)
 8053a26:	c7 45 dc 01 00 00 00 	movl   $0x1,-0x24(%ebp)
 8053a2d:	e9 ed fc ff ff       	jmp    805371f <__sfvwrite_r+0x18f>
 8053a32:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 8053a38:	89 fb                	mov    %edi,%ebx
 8053a3a:	e9 c9 fd ff ff       	jmp    8053808 <__sfvwrite_r+0x278>
 8053a3f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8053a44:	e9 dd fb ff ff       	jmp    8053626 <__sfvwrite_r+0x96>
 8053a49:	8b 45 08             	mov    0x8(%ebp),%eax
 8053a4c:	c7 00 0c 00 00 00    	movl   $0xc,(%eax)
 8053a52:	0f b7 43 0c          	movzwl 0xc(%ebx),%eax
 8053a56:	e9 b1 fd ff ff       	jmp    805380c <__sfvwrite_r+0x27c>
 8053a5b:	66 90                	xchg   %ax,%ax
 8053a5d:	66 90                	xchg   %ax,%ax
 8053a5f:	90                   	nop

08053a60 <_isatty_r>:
 8053a60:	55                   	push   %ebp
 8053a61:	89 e5                	mov    %esp,%ebp
 8053a63:	83 ec 18             	sub    $0x18,%esp
 8053a66:	8b 45 0c             	mov    0xc(%ebp),%eax
 8053a69:	c7 05 74 d6 06 08 00 	movl   $0x0,0x806d674
 8053a70:	00 00 00 
 8053a73:	89 04 24             	mov    %eax,(%esp)
 8053a76:	e8 05 48 ff ff       	call   8048280 <isatty>
 8053a7b:	83 f8 ff             	cmp    $0xffffffff,%eax
 8053a7e:	74 08                	je     8053a88 <_isatty_r+0x28>
 8053a80:	c9                   	leave  
 8053a81:	c3                   	ret    
 8053a82:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 8053a88:	8b 15 74 d6 06 08    	mov    0x806d674,%edx
 8053a8e:	85 d2                	test   %edx,%edx
 8053a90:	74 ee                	je     8053a80 <_isatty_r+0x20>
 8053a92:	8b 4d 08             	mov    0x8(%ebp),%ecx
 8053a95:	89 11                	mov    %edx,(%ecx)
 8053a97:	c9                   	leave  
 8053a98:	c3                   	ret    
 8053a99:	66 90                	xchg   %ax,%ax
 8053a9b:	66 90                	xchg   %ax,%ax
 8053a9d:	66 90                	xchg   %ax,%ax
 8053a9f:	90                   	nop

08053aa0 <_lseek_r>:
 8053aa0:	55                   	push   %ebp
 8053aa1:	89 e5                	mov    %esp,%ebp
 8053aa3:	83 ec 18             	sub    $0x18,%esp
 8053aa6:	8b 45 14             	mov    0x14(%ebp),%eax
 8053aa9:	c7 05 74 d6 06 08 00 	movl   $0x0,0x806d674
 8053ab0:	00 00 00 
 8053ab3:	89 44 24 08          	mov    %eax,0x8(%esp)
 8053ab7:	8b 45 10             	mov    0x10(%ebp),%eax
 8053aba:	89 44 24 04          	mov    %eax,0x4(%esp)
 8053abe:	8b 45 0c             	mov    0xc(%ebp),%eax
 8053ac1:	89 04 24             	mov    %eax,(%esp)
 8053ac4:	e8 17 47 ff ff       	call   80481e0 <lseek>
 8053ac9:	83 f8 ff             	cmp    $0xffffffff,%eax
 8053acc:	74 02                	je     8053ad0 <_lseek_r+0x30>
 8053ace:	c9                   	leave  
 8053acf:	c3                   	ret    
 8053ad0:	8b 15 74 d6 06 08    	mov    0x806d674,%edx
 8053ad6:	85 d2                	test   %edx,%edx
 8053ad8:	74 f4                	je     8053ace <_lseek_r+0x2e>
 8053ada:	8b 4d 08             	mov    0x8(%ebp),%ecx
 8053add:	89 11                	mov    %edx,(%ecx)
 8053adf:	c9                   	leave  
 8053ae0:	c3                   	ret    
 8053ae1:	66 90                	xchg   %ax,%ax
 8053ae3:	66 90                	xchg   %ax,%ax
 8053ae5:	66 90                	xchg   %ax,%ax
 8053ae7:	66 90                	xchg   %ax,%ax
 8053ae9:	66 90                	xchg   %ax,%ax
 8053aeb:	66 90                	xchg   %ax,%ax
 8053aed:	66 90                	xchg   %ax,%ax
 8053aef:	90                   	nop

08053af0 <memmove>:
 8053af0:	55                   	push   %ebp
 8053af1:	89 e5                	mov    %esp,%ebp
 8053af3:	56                   	push   %esi
 8053af4:	57                   	push   %edi
 8053af5:	53                   	push   %ebx
 8053af6:	8b 7d 08             	mov    0x8(%ebp),%edi
 8053af9:	8b 4d 10             	mov    0x10(%ebp),%ecx
 8053afc:	8b 75 0c             	mov    0xc(%ebp),%esi
 8053aff:	fc                   	cld    
 8053b00:	39 fe                	cmp    %edi,%esi
 8053b02:	73 43                	jae    8053b47 <memmove+0x57>
 8053b04:	8d 5c 31 ff          	lea    -0x1(%ecx,%esi,1),%ebx
 8053b08:	39 df                	cmp    %ebx,%edi
 8053b0a:	77 3b                	ja     8053b47 <memmove+0x57>
 8053b0c:	01 ce                	add    %ecx,%esi
 8053b0e:	01 cf                	add    %ecx,%edi
 8053b10:	fd                   	std    
 8053b11:	83 f9 08             	cmp    $0x8,%ecx
 8053b14:	76 2b                	jbe    8053b41 <memmove+0x51>
 8053b16:	89 fa                	mov    %edi,%edx
 8053b18:	89 cb                	mov    %ecx,%ebx
 8053b1a:	83 e2 03             	and    $0x3,%edx
 8053b1d:	74 0c                	je     8053b2b <memmove+0x3b>
 8053b1f:	89 d1                	mov    %edx,%ecx
 8053b21:	4e                   	dec    %esi
 8053b22:	4f                   	dec    %edi
 8053b23:	29 cb                	sub    %ecx,%ebx
 8053b25:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
 8053b27:	89 d9                	mov    %ebx,%ecx
 8053b29:	46                   	inc    %esi
 8053b2a:	47                   	inc    %edi
 8053b2b:	c1 e9 02             	shr    $0x2,%ecx
 8053b2e:	83 ee 04             	sub    $0x4,%esi
 8053b31:	83 ef 04             	sub    $0x4,%edi
 8053b34:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
 8053b36:	83 c6 04             	add    $0x4,%esi
 8053b39:	83 c7 04             	add    $0x4,%edi
 8053b3c:	89 d9                	mov    %ebx,%ecx
 8053b3e:	83 e1 03             	and    $0x3,%ecx
 8053b41:	4e                   	dec    %esi
 8053b42:	4f                   	dec    %edi
 8053b43:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
 8053b45:	eb 2a                	jmp    8053b71 <memmove+0x81>
 8053b47:	83 f9 08             	cmp    $0x8,%ecx
 8053b4a:	76 23                	jbe    8053b6f <memmove+0x7f>
 8053b4c:	89 fa                	mov    %edi,%edx
 8053b4e:	89 cb                	mov    %ecx,%ebx
 8053b50:	83 e2 03             	and    $0x3,%edx
 8053b53:	74 10                	je     8053b65 <memmove+0x75>
 8053b55:	b9 04 00 00 00       	mov    $0x4,%ecx
 8053b5a:	29 d1                	sub    %edx,%ecx
 8053b5c:	83 e1 03             	and    $0x3,%ecx
 8053b5f:	29 cb                	sub    %ecx,%ebx
 8053b61:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
 8053b63:	89 d9                	mov    %ebx,%ecx
 8053b65:	c1 e9 02             	shr    $0x2,%ecx
 8053b68:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
 8053b6a:	89 d9                	mov    %ebx,%ecx
 8053b6c:	83 e1 03             	and    $0x3,%ecx
 8053b6f:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
 8053b71:	8b 45 08             	mov    0x8(%ebp),%eax
 8053b74:	fc                   	cld    
 8053b75:	8d 65 f4             	lea    -0xc(%ebp),%esp
 8053b78:	5b                   	pop    %ebx
 8053b79:	5f                   	pop    %edi
 8053b7a:	5e                   	pop    %esi
 8053b7b:	c9                   	leave  
 8053b7c:	c3                   	ret    
 8053b7d:	66 90                	xchg   %ax,%ax
 8053b7f:	90                   	nop

08053b80 <_read_r>:
 8053b80:	55                   	push   %ebp
 8053b81:	89 e5                	mov    %esp,%ebp
 8053b83:	83 ec 18             	sub    $0x18,%esp
 8053b86:	8b 45 14             	mov    0x14(%ebp),%eax
 8053b89:	c7 05 74 d6 06 08 00 	movl   $0x0,0x806d674
 8053b90:	00 00 00 
 8053b93:	89 44 24 08          	mov    %eax,0x8(%esp)
 8053b97:	8b 45 10             	mov    0x10(%ebp),%eax
 8053b9a:	89 44 24 04          	mov    %eax,0x4(%esp)
 8053b9e:	8b 45 0c             	mov    0xc(%ebp),%eax
 8053ba1:	89 04 24             	mov    %eax,(%esp)
 8053ba4:	e8 f7 45 ff ff       	call   80481a0 <read>
 8053ba9:	83 f8 ff             	cmp    $0xffffffff,%eax
 8053bac:	74 02                	je     8053bb0 <_read_r+0x30>
 8053bae:	c9                   	leave  
 8053baf:	c3                   	ret    
 8053bb0:	8b 15 74 d6 06 08    	mov    0x806d674,%edx
 8053bb6:	85 d2                	test   %edx,%edx
 8053bb8:	74 f4                	je     8053bae <_read_r+0x2e>
 8053bba:	8b 4d 08             	mov    0x8(%ebp),%ecx
 8053bbd:	89 11                	mov    %edx,(%ecx)
 8053bbf:	c9                   	leave  
 8053bc0:	c3                   	ret    
 8053bc1:	66 90                	xchg   %ax,%ax
 8053bc3:	66 90                	xchg   %ax,%ax
 8053bc5:	66 90                	xchg   %ax,%ax
 8053bc7:	66 90                	xchg   %ax,%ax
 8053bc9:	66 90                	xchg   %ax,%ax
 8053bcb:	66 90                	xchg   %ax,%ax
 8053bcd:	66 90                	xchg   %ax,%ax
 8053bcf:	90                   	nop

08053bd0 <_realloc_r>:
 8053bd0:	55                   	push   %ebp
 8053bd1:	89 e5                	mov    %esp,%ebp
 8053bd3:	57                   	push   %edi
 8053bd4:	56                   	push   %esi
 8053bd5:	53                   	push   %ebx
 8053bd6:	83 ec 3c             	sub    $0x3c,%esp
 8053bd9:	8b 45 08             	mov    0x8(%ebp),%eax
 8053bdc:	8b 7d 0c             	mov    0xc(%ebp),%edi
 8053bdf:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 8053be2:	8b 45 10             	mov    0x10(%ebp),%eax
 8053be5:	85 ff                	test   %edi,%edi
 8053be7:	89 45 e0             	mov    %eax,-0x20(%ebp)
 8053bea:	0f 84 50 02 00 00    	je     8053e40 <_realloc_r+0x270>
 8053bf0:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 8053bf3:	8d 77 f8             	lea    -0x8(%edi),%esi
 8053bf6:	89 04 24             	mov    %eax,(%esp)
 8053bf9:	e8 32 c3 ff ff       	call   804ff30 <__malloc_lock>
 8053bfe:	8b 47 fc             	mov    -0x4(%edi),%eax
 8053c01:	8b 4d e0             	mov    -0x20(%ebp),%ecx
 8053c04:	89 c3                	mov    %eax,%ebx
 8053c06:	8d 51 0b             	lea    0xb(%ecx),%edx
 8053c09:	83 e3 fc             	and    $0xfffffffc,%ebx
 8053c0c:	83 fa 16             	cmp    $0x16,%edx
 8053c0f:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 8053c12:	0f 87 00 01 00 00    	ja     8053d18 <_realloc_r+0x148>
 8053c18:	31 d2                	xor    %edx,%edx
 8053c1a:	c7 45 d8 10 00 00 00 	movl   $0x10,-0x28(%ebp)
 8053c21:	c7 45 dc 10 00 00 00 	movl   $0x10,-0x24(%ebp)
 8053c28:	8b 4d e0             	mov    -0x20(%ebp),%ecx
 8053c2b:	39 4d dc             	cmp    %ecx,-0x24(%ebp)
 8053c2e:	0f 82 1c 02 00 00    	jb     8053e50 <_realloc_r+0x280>
 8053c34:	84 d2                	test   %dl,%dl
 8053c36:	0f 85 14 02 00 00    	jne    8053e50 <_realloc_r+0x280>
 8053c3c:	3b 5d d8             	cmp    -0x28(%ebp),%ebx
 8053c3f:	0f 8d eb 00 00 00    	jge    8053d30 <_realloc_r+0x160>
 8053c45:	8b 0d 28 79 05 08    	mov    0x8057928,%ecx
 8053c4b:	8d 14 1e             	lea    (%esi,%ebx,1),%edx
 8053c4e:	39 d1                	cmp    %edx,%ecx
 8053c50:	89 4d cc             	mov    %ecx,-0x34(%ebp)
 8053c53:	0f 84 6f 02 00 00    	je     8053ec8 <_realloc_r+0x2f8>
 8053c59:	8b 4a 04             	mov    0x4(%edx),%ecx
 8053c5c:	89 c8                	mov    %ecx,%eax
 8053c5e:	83 e0 fe             	and    $0xfffffffe,%eax
 8053c61:	f6 44 02 04 01       	testb  $0x1,0x4(%edx,%eax,1)
 8053c66:	0f 84 f4 00 00 00    	je     8053d60 <_realloc_r+0x190>
 8053c6c:	c7 45 d0 00 00 00 00 	movl   $0x0,-0x30(%ebp)
 8053c73:	31 d2                	xor    %edx,%edx
 8053c75:	f6 45 d4 01          	testb  $0x1,-0x2c(%ebp)
 8053c79:	0f 85 39 01 00 00    	jne    8053db8 <_realloc_r+0x1e8>
 8053c7f:	89 f1                	mov    %esi,%ecx
 8053c81:	2b 4f f8             	sub    -0x8(%edi),%ecx
 8053c84:	8b 41 04             	mov    0x4(%ecx),%eax
 8053c87:	83 e0 fc             	and    $0xfffffffc,%eax
 8053c8a:	85 d2                	test   %edx,%edx
 8053c8c:	0f 84 f6 02 00 00    	je     8053f88 <_realloc_r+0x3b8>
 8053c92:	3b 55 cc             	cmp    -0x34(%ebp),%edx
 8053c95:	0f 84 f5 02 00 00    	je     8053f90 <_realloc_r+0x3c0>
 8053c9b:	89 55 d4             	mov    %edx,-0x2c(%ebp)
 8053c9e:	8b 55 d0             	mov    -0x30(%ebp),%edx
 8053ca1:	01 d8                	add    %ebx,%eax
 8053ca3:	01 c2                	add    %eax,%edx
 8053ca5:	3b 55 d8             	cmp    -0x28(%ebp),%edx
 8053ca8:	89 55 d0             	mov    %edx,-0x30(%ebp)
 8053cab:	8b 55 d4             	mov    -0x2c(%ebp),%edx
 8053cae:	0f 8c ac 01 00 00    	jl     8053e60 <_realloc_r+0x290>
 8053cb4:	8b 42 0c             	mov    0xc(%edx),%eax
 8053cb7:	83 eb 04             	sub    $0x4,%ebx
 8053cba:	8b 52 08             	mov    0x8(%edx),%edx
 8053cbd:	83 fb 24             	cmp    $0x24,%ebx
 8053cc0:	8d 71 08             	lea    0x8(%ecx),%esi
 8053cc3:	89 42 0c             	mov    %eax,0xc(%edx)
 8053cc6:	89 50 08             	mov    %edx,0x8(%eax)
 8053cc9:	8b 41 0c             	mov    0xc(%ecx),%eax
 8053ccc:	8b 51 08             	mov    0x8(%ecx),%edx
 8053ccf:	89 42 0c             	mov    %eax,0xc(%edx)
 8053cd2:	89 50 08             	mov    %edx,0x8(%eax)
 8053cd5:	0f 87 85 03 00 00    	ja     8054060 <_realloc_r+0x490>
 8053cdb:	83 fb 13             	cmp    $0x13,%ebx
 8053cde:	89 f0                	mov    %esi,%eax
 8053ce0:	76 1a                	jbe    8053cfc <_realloc_r+0x12c>
 8053ce2:	8b 07                	mov    (%edi),%eax
 8053ce4:	83 fb 1b             	cmp    $0x1b,%ebx
 8053ce7:	89 41 08             	mov    %eax,0x8(%ecx)
 8053cea:	8b 47 04             	mov    0x4(%edi),%eax
 8053ced:	89 41 0c             	mov    %eax,0xc(%ecx)
 8053cf0:	0f 87 8f 03 00 00    	ja     8054085 <_realloc_r+0x4b5>
 8053cf6:	8d 41 10             	lea    0x10(%ecx),%eax
 8053cf9:	83 c7 08             	add    $0x8,%edi
 8053cfc:	8b 17                	mov    (%edi),%edx
 8053cfe:	8b 5d d0             	mov    -0x30(%ebp),%ebx
 8053d01:	89 10                	mov    %edx,(%eax)
 8053d03:	8b 57 04             	mov    0x4(%edi),%edx
 8053d06:	89 50 04             	mov    %edx,0x4(%eax)
 8053d09:	8b 57 08             	mov    0x8(%edi),%edx
 8053d0c:	89 f7                	mov    %esi,%edi
 8053d0e:	89 ce                	mov    %ecx,%esi
 8053d10:	89 50 08             	mov    %edx,0x8(%eax)
 8053d13:	8b 41 04             	mov    0x4(%ecx),%eax
 8053d16:	eb 1b                	jmp    8053d33 <_realloc_r+0x163>
 8053d18:	83 e2 f8             	and    $0xfffffff8,%edx
 8053d1b:	89 55 dc             	mov    %edx,-0x24(%ebp)
 8053d1e:	89 55 d8             	mov    %edx,-0x28(%ebp)
 8053d21:	c1 ea 1f             	shr    $0x1f,%edx
 8053d24:	e9 ff fe ff ff       	jmp    8053c28 <_realloc_r+0x58>
 8053d29:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 8053d30:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 8053d33:	89 da                	mov    %ebx,%edx
 8053d35:	2b 55 dc             	sub    -0x24(%ebp),%edx
 8053d38:	83 fa 0f             	cmp    $0xf,%edx
 8053d3b:	77 4b                	ja     8053d88 <_realloc_r+0x1b8>
 8053d3d:	83 e0 01             	and    $0x1,%eax
 8053d40:	09 d8                	or     %ebx,%eax
 8053d42:	89 46 04             	mov    %eax,0x4(%esi)
 8053d45:	83 4c 1e 04 01       	orl    $0x1,0x4(%esi,%ebx,1)
 8053d4a:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 8053d4d:	89 04 24             	mov    %eax,(%esp)
 8053d50:	e8 eb c1 ff ff       	call   804ff40 <__malloc_unlock>
 8053d55:	89 f8                	mov    %edi,%eax
 8053d57:	83 c4 3c             	add    $0x3c,%esp
 8053d5a:	5b                   	pop    %ebx
 8053d5b:	5e                   	pop    %esi
 8053d5c:	5f                   	pop    %edi
 8053d5d:	5d                   	pop    %ebp
 8053d5e:	c3                   	ret    
 8053d5f:	90                   	nop
 8053d60:	83 e1 fc             	and    $0xfffffffc,%ecx
 8053d63:	89 4d d0             	mov    %ecx,-0x30(%ebp)
 8053d66:	01 d9                	add    %ebx,%ecx
 8053d68:	3b 4d d8             	cmp    -0x28(%ebp),%ecx
 8053d6b:	0f 8c 04 ff ff ff    	jl     8053c75 <_realloc_r+0xa5>
 8053d71:	8b 5a 0c             	mov    0xc(%edx),%ebx
 8053d74:	8b 52 08             	mov    0x8(%edx),%edx
 8053d77:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 8053d7a:	89 5a 0c             	mov    %ebx,0xc(%edx)
 8053d7d:	89 53 08             	mov    %edx,0x8(%ebx)
 8053d80:	89 cb                	mov    %ecx,%ebx
 8053d82:	eb af                	jmp    8053d33 <_realloc_r+0x163>
 8053d84:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8053d88:	8b 5d dc             	mov    -0x24(%ebp),%ebx
 8053d8b:	83 e0 01             	and    $0x1,%eax
 8053d8e:	09 d8                	or     %ebx,%eax
 8053d90:	89 46 04             	mov    %eax,0x4(%esi)
 8053d93:	89 d0                	mov    %edx,%eax
 8053d95:	8d 0c 1e             	lea    (%esi,%ebx,1),%ecx
 8053d98:	83 c8 01             	or     $0x1,%eax
 8053d9b:	89 41 04             	mov    %eax,0x4(%ecx)
 8053d9e:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 8053da1:	83 4c 11 04 01       	orl    $0x1,0x4(%ecx,%edx,1)
 8053da6:	83 c1 08             	add    $0x8,%ecx
 8053da9:	89 4c 24 04          	mov    %ecx,0x4(%esp)
 8053dad:	89 04 24             	mov    %eax,(%esp)
 8053db0:	e8 ab b3 ff ff       	call   804f160 <_free_r>
 8053db5:	eb 93                	jmp    8053d4a <_realloc_r+0x17a>
 8053db7:	90                   	nop
 8053db8:	8b 45 e0             	mov    -0x20(%ebp),%eax
 8053dbb:	89 44 24 04          	mov    %eax,0x4(%esp)
 8053dbf:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 8053dc2:	89 04 24             	mov    %eax,(%esp)
 8053dc5:	e8 46 b9 ff ff       	call   804f710 <_malloc_r>
 8053dca:	85 c0                	test   %eax,%eax
 8053dcc:	89 c1                	mov    %eax,%ecx
 8053dce:	0f 84 65 03 00 00    	je     8054139 <_realloc_r+0x569>
 8053dd4:	8b 47 fc             	mov    -0x4(%edi),%eax
 8053dd7:	8d 51 f8             	lea    -0x8(%ecx),%edx
 8053dda:	89 55 e0             	mov    %edx,-0x20(%ebp)
 8053ddd:	89 c2                	mov    %eax,%edx
 8053ddf:	83 e2 fe             	and    $0xfffffffe,%edx
 8053de2:	01 f2                	add    %esi,%edx
 8053de4:	39 55 e0             	cmp    %edx,-0x20(%ebp)
 8053de7:	0f 84 63 02 00 00    	je     8054050 <_realloc_r+0x480>
 8053ded:	83 eb 04             	sub    $0x4,%ebx
 8053df0:	83 fb 24             	cmp    $0x24,%ebx
 8053df3:	0f 87 6f 01 00 00    	ja     8053f68 <_realloc_r+0x398>
 8053df9:	83 fb 13             	cmp    $0x13,%ebx
 8053dfc:	0f 87 ee 00 00 00    	ja     8053ef0 <_realloc_r+0x320>
 8053e02:	89 c8                	mov    %ecx,%eax
 8053e04:	89 fa                	mov    %edi,%edx
 8053e06:	8b 1a                	mov    (%edx),%ebx
 8053e08:	89 18                	mov    %ebx,(%eax)
 8053e0a:	8b 5a 04             	mov    0x4(%edx),%ebx
 8053e0d:	89 58 04             	mov    %ebx,0x4(%eax)
 8053e10:	8b 52 08             	mov    0x8(%edx),%edx
 8053e13:	89 50 08             	mov    %edx,0x8(%eax)
 8053e16:	8b 75 e4             	mov    -0x1c(%ebp),%esi
 8053e19:	89 7c 24 04          	mov    %edi,0x4(%esp)
 8053e1d:	89 4d e0             	mov    %ecx,-0x20(%ebp)
 8053e20:	89 34 24             	mov    %esi,(%esp)
 8053e23:	e8 38 b3 ff ff       	call   804f160 <_free_r>
 8053e28:	89 34 24             	mov    %esi,(%esp)
 8053e2b:	e8 10 c1 ff ff       	call   804ff40 <__malloc_unlock>
 8053e30:	8b 4d e0             	mov    -0x20(%ebp),%ecx
 8053e33:	83 c4 3c             	add    $0x3c,%esp
 8053e36:	5b                   	pop    %ebx
 8053e37:	5e                   	pop    %esi
 8053e38:	5f                   	pop    %edi
 8053e39:	89 c8                	mov    %ecx,%eax
 8053e3b:	5d                   	pop    %ebp
 8053e3c:	c3                   	ret    
 8053e3d:	8d 76 00             	lea    0x0(%esi),%esi
 8053e40:	89 45 0c             	mov    %eax,0xc(%ebp)
 8053e43:	83 c4 3c             	add    $0x3c,%esp
 8053e46:	5b                   	pop    %ebx
 8053e47:	5e                   	pop    %esi
 8053e48:	5f                   	pop    %edi
 8053e49:	5d                   	pop    %ebp
 8053e4a:	e9 c1 b8 ff ff       	jmp    804f710 <_malloc_r>
 8053e4f:	90                   	nop
 8053e50:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 8053e53:	c7 00 0c 00 00 00    	movl   $0xc,(%eax)
 8053e59:	31 c0                	xor    %eax,%eax
 8053e5b:	e9 f7 fe ff ff       	jmp    8053d57 <_realloc_r+0x187>
 8053e60:	89 c2                	mov    %eax,%edx
 8053e62:	3b 55 d8             	cmp    -0x28(%ebp),%edx
 8053e65:	0f 8c 4d ff ff ff    	jl     8053db8 <_realloc_r+0x1e8>
 8053e6b:	8b 71 08             	mov    0x8(%ecx),%esi
 8053e6e:	83 eb 04             	sub    $0x4,%ebx
 8053e71:	8b 41 0c             	mov    0xc(%ecx),%eax
 8053e74:	83 fb 24             	cmp    $0x24,%ebx
 8053e77:	89 46 0c             	mov    %eax,0xc(%esi)
 8053e7a:	89 70 08             	mov    %esi,0x8(%eax)
 8053e7d:	8d 71 08             	lea    0x8(%ecx),%esi
 8053e80:	0f 87 88 00 00 00    	ja     8053f0e <_realloc_r+0x33e>
 8053e86:	83 fb 13             	cmp    $0x13,%ebx
 8053e89:	89 f0                	mov    %esi,%eax
 8053e8b:	76 1a                	jbe    8053ea7 <_realloc_r+0x2d7>
 8053e8d:	8b 07                	mov    (%edi),%eax
 8053e8f:	83 fb 1b             	cmp    $0x1b,%ebx
 8053e92:	89 41 08             	mov    %eax,0x8(%ecx)
 8053e95:	8b 47 04             	mov    0x4(%edi),%eax
 8053e98:	89 41 0c             	mov    %eax,0xc(%ecx)
 8053e9b:	0f 87 17 02 00 00    	ja     80540b8 <_realloc_r+0x4e8>
 8053ea1:	8d 41 10             	lea    0x10(%ecx),%eax
 8053ea4:	83 c7 08             	add    $0x8,%edi
 8053ea7:	8b 1f                	mov    (%edi),%ebx
 8053ea9:	89 18                	mov    %ebx,(%eax)
 8053eab:	8b 5f 04             	mov    0x4(%edi),%ebx
 8053eae:	89 58 04             	mov    %ebx,0x4(%eax)
 8053eb1:	8b 5f 08             	mov    0x8(%edi),%ebx
 8053eb4:	89 f7                	mov    %esi,%edi
 8053eb6:	89 ce                	mov    %ecx,%esi
 8053eb8:	89 58 08             	mov    %ebx,0x8(%eax)
 8053ebb:	89 d3                	mov    %edx,%ebx
 8053ebd:	8b 41 04             	mov    0x4(%ecx),%eax
 8053ec0:	e9 6e fe ff ff       	jmp    8053d33 <_realloc_r+0x163>
 8053ec5:	8d 76 00             	lea    0x0(%esi),%esi
 8053ec8:	8b 45 cc             	mov    -0x34(%ebp),%eax
 8053ecb:	8b 55 dc             	mov    -0x24(%ebp),%edx
 8053ece:	8b 48 04             	mov    0x4(%eax),%ecx
 8053ed1:	83 c2 10             	add    $0x10,%edx
 8053ed4:	89 4d d0             	mov    %ecx,-0x30(%ebp)
 8053ed7:	83 65 d0 fc          	andl   $0xfffffffc,-0x30(%ebp)
 8053edb:	8b 4d d0             	mov    -0x30(%ebp),%ecx
 8053ede:	01 d9                	add    %ebx,%ecx
 8053ee0:	39 d1                	cmp    %edx,%ecx
 8053ee2:	7d 54                	jge    8053f38 <_realloc_r+0x368>
 8053ee4:	89 c2                	mov    %eax,%edx
 8053ee6:	e9 8a fd ff ff       	jmp    8053c75 <_realloc_r+0xa5>
 8053eeb:	90                   	nop
 8053eec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8053ef0:	8b 07                	mov    (%edi),%eax
 8053ef2:	83 fb 1b             	cmp    $0x1b,%ebx
 8053ef5:	89 01                	mov    %eax,(%ecx)
 8053ef7:	8b 47 04             	mov    0x4(%edi),%eax
 8053efa:	89 41 04             	mov    %eax,0x4(%ecx)
 8053efd:	0f 87 2d 01 00 00    	ja     8054030 <_realloc_r+0x460>
 8053f03:	8d 41 08             	lea    0x8(%ecx),%eax
 8053f06:	8d 57 08             	lea    0x8(%edi),%edx
 8053f09:	e9 f8 fe ff ff       	jmp    8053e06 <_realloc_r+0x236>
 8053f0e:	89 5c 24 08          	mov    %ebx,0x8(%esp)
 8053f12:	89 7c 24 04          	mov    %edi,0x4(%esp)
 8053f16:	89 f7                	mov    %esi,%edi
 8053f18:	89 34 24             	mov    %esi,(%esp)
 8053f1b:	89 55 d8             	mov    %edx,-0x28(%ebp)
 8053f1e:	89 4d e0             	mov    %ecx,-0x20(%ebp)
 8053f21:	e8 ca fb ff ff       	call   8053af0 <memmove>
 8053f26:	8b 4d e0             	mov    -0x20(%ebp),%ecx
 8053f29:	8b 55 d8             	mov    -0x28(%ebp),%edx
 8053f2c:	8b 41 04             	mov    0x4(%ecx),%eax
 8053f2f:	89 ce                	mov    %ecx,%esi
 8053f31:	89 d3                	mov    %edx,%ebx
 8053f33:	e9 fb fd ff ff       	jmp    8053d33 <_realloc_r+0x163>
 8053f38:	8b 5d dc             	mov    -0x24(%ebp),%ebx
 8053f3b:	29 d9                	sub    %ebx,%ecx
 8053f3d:	01 de                	add    %ebx,%esi
 8053f3f:	83 c9 01             	or     $0x1,%ecx
 8053f42:	89 35 28 79 05 08    	mov    %esi,0x8057928
 8053f48:	89 4e 04             	mov    %ecx,0x4(%esi)
 8053f4b:	8b 47 fc             	mov    -0x4(%edi),%eax
 8053f4e:	83 e0 01             	and    $0x1,%eax
 8053f51:	09 d8                	or     %ebx,%eax
 8053f53:	89 47 fc             	mov    %eax,-0x4(%edi)
 8053f56:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 8053f59:	89 04 24             	mov    %eax,(%esp)
 8053f5c:	e8 df bf ff ff       	call   804ff40 <__malloc_unlock>
 8053f61:	89 f8                	mov    %edi,%eax
 8053f63:	e9 ef fd ff ff       	jmp    8053d57 <_realloc_r+0x187>
 8053f68:	89 0c 24             	mov    %ecx,(%esp)
 8053f6b:	89 5c 24 08          	mov    %ebx,0x8(%esp)
 8053f6f:	89 7c 24 04          	mov    %edi,0x4(%esp)
 8053f73:	89 4d e0             	mov    %ecx,-0x20(%ebp)
 8053f76:	e8 75 fb ff ff       	call   8053af0 <memmove>
 8053f7b:	8b 4d e0             	mov    -0x20(%ebp),%ecx
 8053f7e:	e9 93 fe ff ff       	jmp    8053e16 <_realloc_r+0x246>
 8053f83:	90                   	nop
 8053f84:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8053f88:	8d 14 18             	lea    (%eax,%ebx,1),%edx
 8053f8b:	e9 d2 fe ff ff       	jmp    8053e62 <_realloc_r+0x292>
 8053f90:	8d 14 18             	lea    (%eax,%ebx,1),%edx
 8053f93:	8b 45 d0             	mov    -0x30(%ebp),%eax
 8053f96:	01 d0                	add    %edx,%eax
 8053f98:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 8053f9b:	8b 45 dc             	mov    -0x24(%ebp),%eax
 8053f9e:	83 c0 10             	add    $0x10,%eax
 8053fa1:	39 45 d4             	cmp    %eax,-0x2c(%ebp)
 8053fa4:	0f 8c b8 fe ff ff    	jl     8053e62 <_realloc_r+0x292>
 8053faa:	8b 41 0c             	mov    0xc(%ecx),%eax
 8053fad:	83 eb 04             	sub    $0x4,%ebx
 8053fb0:	8b 51 08             	mov    0x8(%ecx),%edx
 8053fb3:	83 fb 24             	cmp    $0x24,%ebx
 8053fb6:	8d 71 08             	lea    0x8(%ecx),%esi
 8053fb9:	89 42 0c             	mov    %eax,0xc(%edx)
 8053fbc:	89 50 08             	mov    %edx,0x8(%eax)
 8053fbf:	0f 87 3d 01 00 00    	ja     8054102 <_realloc_r+0x532>
 8053fc5:	83 fb 13             	cmp    $0x13,%ebx
 8053fc8:	89 f0                	mov    %esi,%eax
 8053fca:	76 1a                	jbe    8053fe6 <_realloc_r+0x416>
 8053fcc:	8b 07                	mov    (%edi),%eax
 8053fce:	83 fb 1b             	cmp    $0x1b,%ebx
 8053fd1:	89 41 08             	mov    %eax,0x8(%ecx)
 8053fd4:	8b 47 04             	mov    0x4(%edi),%eax
 8053fd7:	89 41 0c             	mov    %eax,0xc(%ecx)
 8053fda:	0f 87 3d 01 00 00    	ja     805411d <_realloc_r+0x54d>
 8053fe0:	8d 41 10             	lea    0x10(%ecx),%eax
 8053fe3:	83 c7 08             	add    $0x8,%edi
 8053fe6:	8b 17                	mov    (%edi),%edx
 8053fe8:	89 10                	mov    %edx,(%eax)
 8053fea:	8b 57 04             	mov    0x4(%edi),%edx
 8053fed:	89 50 04             	mov    %edx,0x4(%eax)
 8053ff0:	8b 57 08             	mov    0x8(%edi),%edx
 8053ff3:	89 50 08             	mov    %edx,0x8(%eax)
 8053ff6:	8b 5d dc             	mov    -0x24(%ebp),%ebx
 8053ff9:	8b 7d d4             	mov    -0x2c(%ebp),%edi
 8053ffc:	89 d8                	mov    %ebx,%eax
 8053ffe:	29 df                	sub    %ebx,%edi
 8054000:	01 c8                	add    %ecx,%eax
 8054002:	83 cf 01             	or     $0x1,%edi
 8054005:	a3 28 79 05 08       	mov    %eax,0x8057928
 805400a:	89 78 04             	mov    %edi,0x4(%eax)
 805400d:	8b 41 04             	mov    0x4(%ecx),%eax
 8054010:	83 e0 01             	and    $0x1,%eax
 8054013:	09 d8                	or     %ebx,%eax
 8054015:	89 41 04             	mov    %eax,0x4(%ecx)
 8054018:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 805401b:	89 04 24             	mov    %eax,(%esp)
 805401e:	e8 1d bf ff ff       	call   804ff40 <__malloc_unlock>
 8054023:	89 f0                	mov    %esi,%eax
 8054025:	e9 2d fd ff ff       	jmp    8053d57 <_realloc_r+0x187>
 805402a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 8054030:	8b 47 08             	mov    0x8(%edi),%eax
 8054033:	83 fb 24             	cmp    $0x24,%ebx
 8054036:	89 41 08             	mov    %eax,0x8(%ecx)
 8054039:	8b 47 0c             	mov    0xc(%edi),%eax
 805403c:	89 41 0c             	mov    %eax,0xc(%ecx)
 805403f:	74 60                	je     80540a1 <_realloc_r+0x4d1>
 8054041:	8d 41 10             	lea    0x10(%ecx),%eax
 8054044:	8d 57 10             	lea    0x10(%edi),%edx
 8054047:	e9 ba fd ff ff       	jmp    8053e06 <_realloc_r+0x236>
 805404c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8054050:	8b 51 fc             	mov    -0x4(%ecx),%edx
 8054053:	83 e2 fc             	and    $0xfffffffc,%edx
 8054056:	01 d3                	add    %edx,%ebx
 8054058:	e9 d6 fc ff ff       	jmp    8053d33 <_realloc_r+0x163>
 805405d:	8d 76 00             	lea    0x0(%esi),%esi
 8054060:	89 5c 24 08          	mov    %ebx,0x8(%esp)
 8054064:	89 7c 24 04          	mov    %edi,0x4(%esp)
 8054068:	89 f7                	mov    %esi,%edi
 805406a:	89 34 24             	mov    %esi,(%esp)
 805406d:	89 4d e0             	mov    %ecx,-0x20(%ebp)
 8054070:	e8 7b fa ff ff       	call   8053af0 <memmove>
 8054075:	8b 4d e0             	mov    -0x20(%ebp),%ecx
 8054078:	8b 5d d0             	mov    -0x30(%ebp),%ebx
 805407b:	8b 41 04             	mov    0x4(%ecx),%eax
 805407e:	89 ce                	mov    %ecx,%esi
 8054080:	e9 ae fc ff ff       	jmp    8053d33 <_realloc_r+0x163>
 8054085:	8b 47 08             	mov    0x8(%edi),%eax
 8054088:	83 fb 24             	cmp    $0x24,%ebx
 805408b:	89 41 10             	mov    %eax,0x10(%ecx)
 805408e:	8b 47 0c             	mov    0xc(%edi),%eax
 8054091:	89 41 14             	mov    %eax,0x14(%ecx)
 8054094:	74 3e                	je     80540d4 <_realloc_r+0x504>
 8054096:	8d 41 18             	lea    0x18(%ecx),%eax
 8054099:	83 c7 10             	add    $0x10,%edi
 805409c:	e9 5b fc ff ff       	jmp    8053cfc <_realloc_r+0x12c>
 80540a1:	8b 47 10             	mov    0x10(%edi),%eax
 80540a4:	8d 57 18             	lea    0x18(%edi),%edx
 80540a7:	89 41 10             	mov    %eax,0x10(%ecx)
 80540aa:	8b 5f 14             	mov    0x14(%edi),%ebx
 80540ad:	8d 41 18             	lea    0x18(%ecx),%eax
 80540b0:	89 59 14             	mov    %ebx,0x14(%ecx)
 80540b3:	e9 4e fd ff ff       	jmp    8053e06 <_realloc_r+0x236>
 80540b8:	8b 47 08             	mov    0x8(%edi),%eax
 80540bb:	83 fb 24             	cmp    $0x24,%ebx
 80540be:	89 41 10             	mov    %eax,0x10(%ecx)
 80540c1:	8b 47 0c             	mov    0xc(%edi),%eax
 80540c4:	89 41 14             	mov    %eax,0x14(%ecx)
 80540c7:	74 22                	je     80540eb <_realloc_r+0x51b>
 80540c9:	8d 41 18             	lea    0x18(%ecx),%eax
 80540cc:	83 c7 10             	add    $0x10,%edi
 80540cf:	e9 d3 fd ff ff       	jmp    8053ea7 <_realloc_r+0x2d7>
 80540d4:	8b 47 10             	mov    0x10(%edi),%eax
 80540d7:	83 c7 18             	add    $0x18,%edi
 80540da:	89 41 18             	mov    %eax,0x18(%ecx)
 80540dd:	8b 57 fc             	mov    -0x4(%edi),%edx
 80540e0:	8d 41 20             	lea    0x20(%ecx),%eax
 80540e3:	89 51 1c             	mov    %edx,0x1c(%ecx)
 80540e6:	e9 11 fc ff ff       	jmp    8053cfc <_realloc_r+0x12c>
 80540eb:	8b 47 10             	mov    0x10(%edi),%eax
 80540ee:	83 c7 18             	add    $0x18,%edi
 80540f1:	89 41 18             	mov    %eax,0x18(%ecx)
 80540f4:	8b 5f fc             	mov    -0x4(%edi),%ebx
 80540f7:	8d 41 20             	lea    0x20(%ecx),%eax
 80540fa:	89 59 1c             	mov    %ebx,0x1c(%ecx)
 80540fd:	e9 a5 fd ff ff       	jmp    8053ea7 <_realloc_r+0x2d7>
 8054102:	89 5c 24 08          	mov    %ebx,0x8(%esp)
 8054106:	89 7c 24 04          	mov    %edi,0x4(%esp)
 805410a:	89 34 24             	mov    %esi,(%esp)
 805410d:	89 4d e0             	mov    %ecx,-0x20(%ebp)
 8054110:	e8 db f9 ff ff       	call   8053af0 <memmove>
 8054115:	8b 4d e0             	mov    -0x20(%ebp),%ecx
 8054118:	e9 d9 fe ff ff       	jmp    8053ff6 <_realloc_r+0x426>
 805411d:	8b 47 08             	mov    0x8(%edi),%eax
 8054120:	83 fb 24             	cmp    $0x24,%ebx
 8054123:	89 41 10             	mov    %eax,0x10(%ecx)
 8054126:	8b 47 0c             	mov    0xc(%edi),%eax
 8054129:	89 41 14             	mov    %eax,0x14(%ecx)
 805412c:	74 1d                	je     805414b <_realloc_r+0x57b>
 805412e:	8d 41 18             	lea    0x18(%ecx),%eax
 8054131:	83 c7 10             	add    $0x10,%edi
 8054134:	e9 ad fe ff ff       	jmp    8053fe6 <_realloc_r+0x416>
 8054139:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 805413c:	89 04 24             	mov    %eax,(%esp)
 805413f:	e8 fc bd ff ff       	call   804ff40 <__malloc_unlock>
 8054144:	31 c0                	xor    %eax,%eax
 8054146:	e9 0c fc ff ff       	jmp    8053d57 <_realloc_r+0x187>
 805414b:	8b 47 10             	mov    0x10(%edi),%eax
 805414e:	83 c7 18             	add    $0x18,%edi
 8054151:	89 41 18             	mov    %eax,0x18(%ecx)
 8054154:	8b 57 fc             	mov    -0x4(%edi),%edx
 8054157:	8d 41 20             	lea    0x20(%ecx),%eax
 805415a:	89 51 1c             	mov    %edx,0x1c(%ecx)
 805415d:	e9 84 fe ff ff       	jmp    8053fe6 <_realloc_r+0x416>
 8054162:	66 90                	xchg   %ax,%ax
 8054164:	66 90                	xchg   %ax,%ax
 8054166:	66 90                	xchg   %ax,%ax
 8054168:	66 90                	xchg   %ax,%ax
 805416a:	66 90                	xchg   %ax,%ax
 805416c:	66 90                	xchg   %ax,%ax
 805416e:	66 90                	xchg   %ax,%ax

08054170 <cleanup_glue>:
 8054170:	55                   	push   %ebp
 8054171:	89 e5                	mov    %esp,%ebp
 8054173:	56                   	push   %esi
 8054174:	53                   	push   %ebx
 8054175:	83 ec 10             	sub    $0x10,%esp
 8054178:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 805417b:	8b 75 08             	mov    0x8(%ebp),%esi
 805417e:	8b 03                	mov    (%ebx),%eax
 8054180:	85 c0                	test   %eax,%eax
 8054182:	74 0c                	je     8054190 <cleanup_glue+0x20>
 8054184:	89 44 24 04          	mov    %eax,0x4(%esp)
 8054188:	89 34 24             	mov    %esi,(%esp)
 805418b:	e8 e0 ff ff ff       	call   8054170 <cleanup_glue>
 8054190:	89 5d 0c             	mov    %ebx,0xc(%ebp)
 8054193:	89 75 08             	mov    %esi,0x8(%ebp)
 8054196:	83 c4 10             	add    $0x10,%esp
 8054199:	5b                   	pop    %ebx
 805419a:	5e                   	pop    %esi
 805419b:	5d                   	pop    %ebp
 805419c:	e9 bf af ff ff       	jmp    804f160 <_free_r>
 80541a1:	eb 0d                	jmp    80541b0 <_reclaim_reent>
 80541a3:	90                   	nop
 80541a4:	90                   	nop
 80541a5:	90                   	nop
 80541a6:	90                   	nop
 80541a7:	90                   	nop
 80541a8:	90                   	nop
 80541a9:	90                   	nop
 80541aa:	90                   	nop
 80541ab:	90                   	nop
 80541ac:	90                   	nop
 80541ad:	90                   	nop
 80541ae:	90                   	nop
 80541af:	90                   	nop

080541b0 <_reclaim_reent>:
 80541b0:	55                   	push   %ebp
 80541b1:	89 e5                	mov    %esp,%ebp
 80541b3:	57                   	push   %edi
 80541b4:	56                   	push   %esi
 80541b5:	53                   	push   %ebx
 80541b6:	83 ec 1c             	sub    $0x1c,%esp
 80541b9:	8b 5d 08             	mov    0x8(%ebp),%ebx
 80541bc:	3b 1d 20 74 05 08    	cmp    0x8057420,%ebx
 80541c2:	0f 84 a6 00 00 00    	je     805426e <_reclaim_reent+0xbe>
 80541c8:	8b 53 4c             	mov    0x4c(%ebx),%edx
 80541cb:	85 d2                	test   %edx,%edx
 80541cd:	74 46                	je     8054215 <_reclaim_reent+0x65>
 80541cf:	31 c0                	xor    %eax,%eax
 80541d1:	31 f6                	xor    %esi,%esi
 80541d3:	90                   	nop
 80541d4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 80541d8:	8b 04 82             	mov    (%edx,%eax,4),%eax
 80541db:	85 c0                	test   %eax,%eax
 80541dd:	75 0b                	jne    80541ea <_reclaim_reent+0x3a>
 80541df:	eb 1e                	jmp    80541ff <_reclaim_reent+0x4f>
 80541e1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 80541e8:	89 f8                	mov    %edi,%eax
 80541ea:	8b 38                	mov    (%eax),%edi
 80541ec:	89 44 24 04          	mov    %eax,0x4(%esp)
 80541f0:	89 1c 24             	mov    %ebx,(%esp)
 80541f3:	e8 68 af ff ff       	call   804f160 <_free_r>
 80541f8:	85 ff                	test   %edi,%edi
 80541fa:	75 ec                	jne    80541e8 <_reclaim_reent+0x38>
 80541fc:	8b 53 4c             	mov    0x4c(%ebx),%edx
 80541ff:	83 c6 01             	add    $0x1,%esi
 8054202:	83 fe 20             	cmp    $0x20,%esi
 8054205:	89 f0                	mov    %esi,%eax
 8054207:	75 cf                	jne    80541d8 <_reclaim_reent+0x28>
 8054209:	89 54 24 04          	mov    %edx,0x4(%esp)
 805420d:	89 1c 24             	mov    %ebx,(%esp)
 8054210:	e8 4b af ff ff       	call   804f160 <_free_r>
 8054215:	8b 43 40             	mov    0x40(%ebx),%eax
 8054218:	85 c0                	test   %eax,%eax
 805421a:	74 0c                	je     8054228 <_reclaim_reent+0x78>
 805421c:	89 44 24 04          	mov    %eax,0x4(%esp)
 8054220:	89 1c 24             	mov    %ebx,(%esp)
 8054223:	e8 38 af ff ff       	call   804f160 <_free_r>
 8054228:	8b 83 48 01 00 00    	mov    0x148(%ebx),%eax
 805422e:	85 c0                	test   %eax,%eax
 8054230:	74 22                	je     8054254 <_reclaim_reent+0xa4>
 8054232:	8d b3 4c 01 00 00    	lea    0x14c(%ebx),%esi
 8054238:	39 f0                	cmp    %esi,%eax
 805423a:	75 06                	jne    8054242 <_reclaim_reent+0x92>
 805423c:	eb 16                	jmp    8054254 <_reclaim_reent+0xa4>
 805423e:	66 90                	xchg   %ax,%ax
 8054240:	89 f8                	mov    %edi,%eax
 8054242:	8b 38                	mov    (%eax),%edi
 8054244:	89 44 24 04          	mov    %eax,0x4(%esp)
 8054248:	89 1c 24             	mov    %ebx,(%esp)
 805424b:	e8 10 af ff ff       	call   804f160 <_free_r>
 8054250:	39 fe                	cmp    %edi,%esi
 8054252:	75 ec                	jne    8054240 <_reclaim_reent+0x90>
 8054254:	8b 43 54             	mov    0x54(%ebx),%eax
 8054257:	85 c0                	test   %eax,%eax
 8054259:	74 0c                	je     8054267 <_reclaim_reent+0xb7>
 805425b:	89 44 24 04          	mov    %eax,0x4(%esp)
 805425f:	89 1c 24             	mov    %ebx,(%esp)
 8054262:	e8 f9 ae ff ff       	call   804f160 <_free_r>
 8054267:	8b 43 38             	mov    0x38(%ebx),%eax
 805426a:	85 c0                	test   %eax,%eax
 805426c:	75 08                	jne    8054276 <_reclaim_reent+0xc6>
 805426e:	83 c4 1c             	add    $0x1c,%esp
 8054271:	5b                   	pop    %ebx
 8054272:	5e                   	pop    %esi
 8054273:	5f                   	pop    %edi
 8054274:	5d                   	pop    %ebp
 8054275:	c3                   	ret    
 8054276:	89 1c 24             	mov    %ebx,(%esp)
 8054279:	ff 53 3c             	call   *0x3c(%ebx)
 805427c:	8b 83 e0 02 00 00    	mov    0x2e0(%ebx),%eax
 8054282:	85 c0                	test   %eax,%eax
 8054284:	74 e8                	je     805426e <_reclaim_reent+0xbe>
 8054286:	89 1c 24             	mov    %ebx,(%esp)
 8054289:	89 44 24 04          	mov    %eax,0x4(%esp)
 805428d:	e8 de fe ff ff       	call   8054170 <cleanup_glue>
 8054292:	83 c4 1c             	add    $0x1c,%esp
 8054295:	5b                   	pop    %ebx
 8054296:	5e                   	pop    %esi
 8054297:	5f                   	pop    %edi
 8054298:	5d                   	pop    %ebp
 8054299:	c3                   	ret    
 805429a:	66 90                	xchg   %ax,%ax
 805429c:	66 90                	xchg   %ax,%ax
 805429e:	66 90                	xchg   %ax,%ax

080542a0 <__swbuf_r>:
 80542a0:	55                   	push   %ebp
 80542a1:	89 e5                	mov    %esp,%ebp
 80542a3:	57                   	push   %edi
 80542a4:	56                   	push   %esi
 80542a5:	53                   	push   %ebx
 80542a6:	83 ec 1c             	sub    $0x1c,%esp
 80542a9:	8b 75 08             	mov    0x8(%ebp),%esi
 80542ac:	8b 5d 10             	mov    0x10(%ebp),%ebx
 80542af:	85 f6                	test   %esi,%esi
 80542b1:	74 0b                	je     80542be <__swbuf_r+0x1e>
 80542b3:	8b 46 38             	mov    0x38(%esi),%eax
 80542b6:	85 c0                	test   %eax,%eax
 80542b8:	0f 84 da 00 00 00    	je     8054398 <__swbuf_r+0xf8>
 80542be:	8b 43 18             	mov    0x18(%ebx),%eax
 80542c1:	89 43 08             	mov    %eax,0x8(%ebx)
 80542c4:	0f b7 43 0c          	movzwl 0xc(%ebx),%eax
 80542c8:	a8 08                	test   $0x8,%al
 80542ca:	0f 84 a8 00 00 00    	je     8054378 <__swbuf_r+0xd8>
 80542d0:	8b 53 10             	mov    0x10(%ebx),%edx
 80542d3:	85 d2                	test   %edx,%edx
 80542d5:	0f 84 9d 00 00 00    	je     8054378 <__swbuf_r+0xd8>
 80542db:	f6 c4 20             	test   $0x20,%ah
 80542de:	0f b6 7d 0c          	movzbl 0xc(%ebp),%edi
 80542e2:	74 3c                	je     8054320 <__swbuf_r+0x80>
 80542e4:	8b 03                	mov    (%ebx),%eax
 80542e6:	89 c1                	mov    %eax,%ecx
 80542e8:	29 d1                	sub    %edx,%ecx
 80542ea:	3b 4b 14             	cmp    0x14(%ebx),%ecx
 80542ed:	89 ca                	mov    %ecx,%edx
 80542ef:	7d 4a                	jge    805433b <__swbuf_r+0x9b>
 80542f1:	83 c2 01             	add    $0x1,%edx
 80542f4:	8d 48 01             	lea    0x1(%eax),%ecx
 80542f7:	89 0b                	mov    %ecx,(%ebx)
 80542f9:	89 f9                	mov    %edi,%ecx
 80542fb:	83 6b 08 01          	subl   $0x1,0x8(%ebx)
 80542ff:	88 08                	mov    %cl,(%eax)
 8054301:	39 53 14             	cmp    %edx,0x14(%ebx)
 8054304:	74 52                	je     8054358 <__swbuf_r+0xb8>
 8054306:	f6 43 0c 01          	testb  $0x1,0xc(%ebx)
 805430a:	89 f8                	mov    %edi,%eax
 805430c:	74 05                	je     8054313 <__swbuf_r+0x73>
 805430e:	83 ff 0a             	cmp    $0xa,%edi
 8054311:	74 45                	je     8054358 <__swbuf_r+0xb8>
 8054313:	83 c4 1c             	add    $0x1c,%esp
 8054316:	5b                   	pop    %ebx
 8054317:	5e                   	pop    %esi
 8054318:	5f                   	pop    %edi
 8054319:	5d                   	pop    %ebp
 805431a:	c3                   	ret    
 805431b:	90                   	nop
 805431c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8054320:	80 cc 20             	or     $0x20,%ah
 8054323:	66 89 43 0c          	mov    %ax,0xc(%ebx)
 8054327:	8b 03                	mov    (%ebx),%eax
 8054329:	81 63 64 ff df ff ff 	andl   $0xffffdfff,0x64(%ebx)
 8054330:	89 c1                	mov    %eax,%ecx
 8054332:	29 d1                	sub    %edx,%ecx
 8054334:	3b 4b 14             	cmp    0x14(%ebx),%ecx
 8054337:	89 ca                	mov    %ecx,%edx
 8054339:	7c b6                	jl     80542f1 <__swbuf_r+0x51>
 805433b:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 805433f:	89 34 24             	mov    %esi,(%esp)
 8054342:	e8 59 a8 ff ff       	call   804eba0 <_fflush_r>
 8054347:	85 c0                	test   %eax,%eax
 8054349:	75 5d                	jne    80543a8 <__swbuf_r+0x108>
 805434b:	8b 03                	mov    (%ebx),%eax
 805434d:	ba 01 00 00 00       	mov    $0x1,%edx
 8054352:	eb a0                	jmp    80542f4 <__swbuf_r+0x54>
 8054354:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8054358:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 805435c:	89 34 24             	mov    %esi,(%esp)
 805435f:	e8 3c a8 ff ff       	call   804eba0 <_fflush_r>
 8054364:	85 c0                	test   %eax,%eax
 8054366:	75 40                	jne    80543a8 <__swbuf_r+0x108>
 8054368:	83 c4 1c             	add    $0x1c,%esp
 805436b:	89 f8                	mov    %edi,%eax
 805436d:	5b                   	pop    %ebx
 805436e:	5e                   	pop    %esi
 805436f:	5f                   	pop    %edi
 8054370:	5d                   	pop    %ebp
 8054371:	c3                   	ret    
 8054372:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 8054378:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 805437c:	89 34 24             	mov    %esi,(%esp)
 805437f:	e8 1c 91 ff ff       	call   804d4a0 <__swsetup_r>
 8054384:	85 c0                	test   %eax,%eax
 8054386:	75 20                	jne    80543a8 <__swbuf_r+0x108>
 8054388:	0f b7 43 0c          	movzwl 0xc(%ebx),%eax
 805438c:	8b 53 10             	mov    0x10(%ebx),%edx
 805438f:	e9 47 ff ff ff       	jmp    80542db <__swbuf_r+0x3b>
 8054394:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8054398:	89 34 24             	mov    %esi,(%esp)
 805439b:	e8 70 a9 ff ff       	call   804ed10 <__sinit>
 80543a0:	e9 19 ff ff ff       	jmp    80542be <__swbuf_r+0x1e>
 80543a5:	8d 76 00             	lea    0x0(%esi),%esi
 80543a8:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 80543ad:	e9 61 ff ff ff       	jmp    8054313 <__swbuf_r+0x73>
 80543b2:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 80543b9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

080543c0 <__swbuf>:
 80543c0:	55                   	push   %ebp
 80543c1:	89 e5                	mov    %esp,%ebp
 80543c3:	83 ec 18             	sub    $0x18,%esp
 80543c6:	e8 e5 b0 ff ff       	call   804f4b0 <__getreent>
 80543cb:	8b 55 0c             	mov    0xc(%ebp),%edx
 80543ce:	89 54 24 08          	mov    %edx,0x8(%esp)
 80543d2:	8b 55 08             	mov    0x8(%ebp),%edx
 80543d5:	89 04 24             	mov    %eax,(%esp)
 80543d8:	89 54 24 04          	mov    %edx,0x4(%esp)
 80543dc:	e8 bf fe ff ff       	call   80542a0 <__swbuf_r>
 80543e1:	c9                   	leave  
 80543e2:	c3                   	ret    
 80543e3:	66 90                	xchg   %ax,%ax
 80543e5:	66 90                	xchg   %ax,%ax
 80543e7:	66 90                	xchg   %ax,%ax
 80543e9:	66 90                	xchg   %ax,%ax
 80543eb:	66 90                	xchg   %ax,%ax
 80543ed:	66 90                	xchg   %ax,%ax
 80543ef:	90                   	nop

080543f0 <_wcrtomb_r>:
 80543f0:	55                   	push   %ebp
 80543f1:	89 e5                	mov    %esp,%ebp
 80543f3:	57                   	push   %edi
 80543f4:	56                   	push   %esi
 80543f5:	53                   	push   %ebx
 80543f6:	83 ec 3c             	sub    $0x3c,%esp
 80543f9:	8b 7d 0c             	mov    0xc(%ebp),%edi
 80543fc:	8b 75 14             	mov    0x14(%ebp),%esi
 80543ff:	85 ff                	test   %edi,%edi
 8054401:	74 45                	je     8054448 <_wcrtomb_r+0x58>
 8054403:	8b 1d 28 7d 05 08    	mov    0x8057d28,%ebx
 8054409:	e8 22 b1 ff ff       	call   804f530 <__locale_charset>
 805440e:	89 74 24 10          	mov    %esi,0x10(%esp)
 8054412:	89 7c 24 04          	mov    %edi,0x4(%esp)
 8054416:	89 44 24 0c          	mov    %eax,0xc(%esp)
 805441a:	8b 45 10             	mov    0x10(%ebp),%eax
 805441d:	89 44 24 08          	mov    %eax,0x8(%esp)
 8054421:	8b 45 08             	mov    0x8(%ebp),%eax
 8054424:	89 04 24             	mov    %eax,(%esp)
 8054427:	ff d3                	call   *%ebx
 8054429:	83 f8 ff             	cmp    $0xffffffff,%eax
 805442c:	75 0f                	jne    805443d <_wcrtomb_r+0x4d>
 805442e:	8b 55 08             	mov    0x8(%ebp),%edx
 8054431:	c7 06 00 00 00 00    	movl   $0x0,(%esi)
 8054437:	c7 02 8a 00 00 00    	movl   $0x8a,(%edx)
 805443d:	83 c4 3c             	add    $0x3c,%esp
 8054440:	5b                   	pop    %ebx
 8054441:	5e                   	pop    %esi
 8054442:	5f                   	pop    %edi
 8054443:	5d                   	pop    %ebp
 8054444:	c3                   	ret    
 8054445:	8d 76 00             	lea    0x0(%esi),%esi
 8054448:	8b 3d 28 7d 05 08    	mov    0x8057d28,%edi
 805444e:	e8 dd b0 ff ff       	call   804f530 <__locale_charset>
 8054453:	89 74 24 10          	mov    %esi,0x10(%esp)
 8054457:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 805445e:	00 
 805445f:	89 44 24 0c          	mov    %eax,0xc(%esp)
 8054463:	8d 45 de             	lea    -0x22(%ebp),%eax
 8054466:	89 44 24 04          	mov    %eax,0x4(%esp)
 805446a:	8b 45 08             	mov    0x8(%ebp),%eax
 805446d:	89 04 24             	mov    %eax,(%esp)
 8054470:	ff d7                	call   *%edi
 8054472:	eb b5                	jmp    8054429 <_wcrtomb_r+0x39>
 8054474:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 805447a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

08054480 <wcrtomb>:
 8054480:	55                   	push   %ebp
 8054481:	89 e5                	mov    %esp,%ebp
 8054483:	57                   	push   %edi
 8054484:	56                   	push   %esi
 8054485:	53                   	push   %ebx
 8054486:	83 ec 3c             	sub    $0x3c,%esp
 8054489:	8b 7d 08             	mov    0x8(%ebp),%edi
 805448c:	e8 1f b0 ff ff       	call   804f4b0 <__getreent>
 8054491:	85 ff                	test   %edi,%edi
 8054493:	89 c3                	mov    %eax,%ebx
 8054495:	74 49                	je     80544e0 <wcrtomb+0x60>
 8054497:	8b 35 28 7d 05 08    	mov    0x8057d28,%esi
 805449d:	e8 8e b0 ff ff       	call   804f530 <__locale_charset>
 80544a2:	8b 55 10             	mov    0x10(%ebp),%edx
 80544a5:	89 7c 24 04          	mov    %edi,0x4(%esp)
 80544a9:	89 1c 24             	mov    %ebx,(%esp)
 80544ac:	89 54 24 10          	mov    %edx,0x10(%esp)
 80544b0:	89 44 24 0c          	mov    %eax,0xc(%esp)
 80544b4:	8b 45 0c             	mov    0xc(%ebp),%eax
 80544b7:	89 44 24 08          	mov    %eax,0x8(%esp)
 80544bb:	ff d6                	call   *%esi
 80544bd:	83 f8 ff             	cmp    $0xffffffff,%eax
 80544c0:	75 0f                	jne    80544d1 <wcrtomb+0x51>
 80544c2:	8b 4d 10             	mov    0x10(%ebp),%ecx
 80544c5:	c7 01 00 00 00 00    	movl   $0x0,(%ecx)
 80544cb:	c7 03 8a 00 00 00    	movl   $0x8a,(%ebx)
 80544d1:	83 c4 3c             	add    $0x3c,%esp
 80544d4:	5b                   	pop    %ebx
 80544d5:	5e                   	pop    %esi
 80544d6:	5f                   	pop    %edi
 80544d7:	5d                   	pop    %ebp
 80544d8:	c3                   	ret    
 80544d9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 80544e0:	8b 3d 28 7d 05 08    	mov    0x8057d28,%edi
 80544e6:	e8 45 b0 ff ff       	call   804f530 <__locale_charset>
 80544eb:	8b 4d 10             	mov    0x10(%ebp),%ecx
 80544ee:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 80544f5:	00 
 80544f6:	89 1c 24             	mov    %ebx,(%esp)
 80544f9:	89 4c 24 10          	mov    %ecx,0x10(%esp)
 80544fd:	89 44 24 0c          	mov    %eax,0xc(%esp)
 8054501:	8d 45 de             	lea    -0x22(%ebp),%eax
 8054504:	89 44 24 04          	mov    %eax,0x4(%esp)
 8054508:	ff d7                	call   *%edi
 805450a:	eb b1                	jmp    80544bd <wcrtomb+0x3d>
 805450c:	66 90                	xchg   %ax,%ax
 805450e:	66 90                	xchg   %ax,%ax

08054510 <__ascii_wctomb>:
 8054510:	55                   	push   %ebp
 8054511:	89 e5                	mov    %esp,%ebp
 8054513:	8b 45 0c             	mov    0xc(%ebp),%eax
 8054516:	8b 55 10             	mov    0x10(%ebp),%edx
 8054519:	85 c0                	test   %eax,%eax
 805451b:	74 13                	je     8054530 <__ascii_wctomb+0x20>
 805451d:	81 fa ff 00 00 00    	cmp    $0xff,%edx
 8054523:	77 13                	ja     8054538 <__ascii_wctomb+0x28>
 8054525:	88 10                	mov    %dl,(%eax)
 8054527:	b8 01 00 00 00       	mov    $0x1,%eax
 805452c:	5d                   	pop    %ebp
 805452d:	c3                   	ret    
 805452e:	66 90                	xchg   %ax,%ax
 8054530:	31 c0                	xor    %eax,%eax
 8054532:	5d                   	pop    %ebp
 8054533:	c3                   	ret    
 8054534:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8054538:	8b 45 08             	mov    0x8(%ebp),%eax
 805453b:	c7 00 8a 00 00 00    	movl   $0x8a,(%eax)
 8054541:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8054546:	5d                   	pop    %ebp
 8054547:	c3                   	ret    
 8054548:	90                   	nop
 8054549:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

08054550 <_wctomb_r>:
 8054550:	55                   	push   %ebp
 8054551:	89 e5                	mov    %esp,%ebp
 8054553:	53                   	push   %ebx
 8054554:	83 ec 24             	sub    $0x24,%esp
 8054557:	8b 1d 28 7d 05 08    	mov    0x8057d28,%ebx
 805455d:	e8 ce af ff ff       	call   804f530 <__locale_charset>
 8054562:	8b 55 14             	mov    0x14(%ebp),%edx
 8054565:	89 54 24 10          	mov    %edx,0x10(%esp)
 8054569:	89 44 24 0c          	mov    %eax,0xc(%esp)
 805456d:	8b 45 10             	mov    0x10(%ebp),%eax
 8054570:	89 44 24 08          	mov    %eax,0x8(%esp)
 8054574:	8b 45 0c             	mov    0xc(%ebp),%eax
 8054577:	89 44 24 04          	mov    %eax,0x4(%esp)
 805457b:	8b 45 08             	mov    0x8(%ebp),%eax
 805457e:	89 04 24             	mov    %eax,(%esp)
 8054581:	ff d3                	call   *%ebx
 8054583:	83 c4 24             	add    $0x24,%esp
 8054586:	5b                   	pop    %ebx
 8054587:	5d                   	pop    %ebp
 8054588:	c3                   	ret    
