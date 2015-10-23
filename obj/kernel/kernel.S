
kernel:     file format elf32-i386


Disassembly of section .text:

00100000 <start>:
  100000:	0f 01 15 48 00 10 00 	lgdtl  0x100048
  100007:	0f 20 c0             	mov    %cr0,%eax
  10000a:	83 c8 01             	or     $0x1,%eax
  10000d:	0f 22 c0             	mov    %eax,%cr0
  100010:	ea 17 00 10 00 08 00 	ljmp   $0x8,$0x100017

00100017 <start_cond>:
  100017:	66 b8 10 00          	mov    $0x10,%ax
  10001b:	8e d8                	mov    %eax,%ds
  10001d:	8e c0                	mov    %eax,%es
  10001f:	8e d0                	mov    %eax,%ss
  100021:	bd 00 00 00 00       	mov    $0x0,%ebp
  100026:	bc 00 00 00 08       	mov    $0x8000000,%esp
  10002b:	e9 70 0d 00 00       	jmp    100da0 <init>

00100030 <gdt>:
	...
  100038:	ff                   	(bad)  
  100039:	ff 00                	incl   (%eax)
  10003b:	00 00                	add    %al,(%eax)
  10003d:	9a cf 00 ff ff 00 00 	lcall  $0x0,$0xffff00cf
  100044:	00 92 cf 00 17 00    	add    %dl,0x1700cf(%edx)

00100048 <gdtdesc>:
  100048:	17                   	pop    %ss
  100049:	00 30                	add    %dh,(%eax)
  10004b:	00 10                	add    %dl,(%eax)
  10004d:	00 66 90             	add    %ah,-0x70(%esi)

00100050 <mm_malloc>:
  100050:	55                   	push   %ebp
  100051:	31 c0                	xor    %eax,%eax
  100053:	89 e5                	mov    %esp,%ebp
  100055:	57                   	push   %edi
  100056:	56                   	push   %esi
  100057:	53                   	push   %ebx
  100058:	83 ec 3c             	sub    $0x3c,%esp
  10005b:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  10005e:	85 db                	test   %ebx,%ebx
  100060:	0f 8e 36 02 00 00    	jle    10029c <mm_malloc+0x24c>
  100066:	e8 85 04 00 00       	call   1004f0 <get_updir>
  10006b:	89 c6                	mov    %eax,%esi
  10006d:	e8 8e 04 00 00       	call   100500 <get_ucr3>
  100072:	8b 55 08             	mov    0x8(%ebp),%edx
  100075:	8d 5c 1a ff          	lea    -0x1(%edx,%ebx,1),%ebx
  100079:	89 5d e0             	mov    %ebx,-0x20(%ebp)
  10007c:	89 45 dc             	mov    %eax,-0x24(%ebp)
  10007f:	b8 00 10 00 00       	mov    $0x1000,%eax
  100084:	29 d0                	sub    %edx,%eax
  100086:	89 da                	mov    %ebx,%edx
  100088:	81 e2 00 f0 ff ff    	and    $0xfffff000,%edx
  10008e:	01 d0                	add    %edx,%eax
  100090:	85 c0                	test   %eax,%eax
  100092:	0f 8e c0 00 00 00    	jle    100158 <mm_malloc+0x108>
  100098:	8b 55 08             	mov    0x8(%ebp),%edx
  10009b:	83 e8 01             	sub    $0x1,%eax
  10009e:	89 f7                	mov    %esi,%edi
  1000a0:	25 00 f0 ff ff       	and    $0xfffff000,%eax
  1000a5:	8d 84 02 00 10 00 00 	lea    0x1000(%edx,%eax,1),%eax
  1000ac:	89 d3                	mov    %edx,%ebx
  1000ae:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  1000b1:	eb 51                	jmp    100104 <mm_malloc+0xb4>
  1000b3:	90                   	nop
  1000b4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  1000b8:	8b 31                	mov    (%ecx),%esi
  1000ba:	81 e6 00 f0 ff ff    	and    $0xfffff000,%esi
  1000c0:	81 ee 00 00 00 40    	sub    $0x40000000,%esi
  1000c6:	89 d8                	mov    %ebx,%eax
  1000c8:	c1 e8 0a             	shr    $0xa,%eax
  1000cb:	25 fc 0f 00 00       	and    $0xffc,%eax
  1000d0:	01 c6                	add    %eax,%esi
  1000d2:	f6 06 01             	testb  $0x1,(%esi)
  1000d5:	75 22                	jne    1000f9 <mm_malloc+0xa9>
  1000d7:	a1 c4 2d 10 00       	mov    0x102dc4,%eax
  1000dc:	3d ff 7f 00 00       	cmp    $0x7fff,%eax
  1000e1:	0f 8f c1 01 00 00    	jg     1002a8 <mm_malloc+0x258>
  1000e7:	89 c1                	mov    %eax,%ecx
  1000e9:	83 c0 01             	add    $0x1,%eax
  1000ec:	c1 e1 0c             	shl    $0xc,%ecx
  1000ef:	83 c9 07             	or     $0x7,%ecx
  1000f2:	89 0e                	mov    %ecx,(%esi)
  1000f4:	a3 c4 2d 10 00       	mov    %eax,0x102dc4
  1000f9:	81 c3 00 10 00 00    	add    $0x1000,%ebx
  1000ff:	3b 5d e4             	cmp    -0x1c(%ebp),%ebx
  100102:	74 54                	je     100158 <mm_malloc+0x108>
  100104:	89 d8                	mov    %ebx,%eax
  100106:	c1 e8 16             	shr    $0x16,%eax
  100109:	8d 0c 87             	lea    (%edi,%eax,4),%ecx
  10010c:	f6 01 01             	testb  $0x1,(%ecx)
  10010f:	75 a7                	jne    1000b8 <mm_malloc+0x68>
  100111:	a1 00 30 10 00       	mov    0x103000,%eax
  100116:	89 c6                	mov    %eax,%esi
  100118:	83 c0 01             	add    $0x1,%eax
  10011b:	c1 e6 0c             	shl    $0xc,%esi
  10011e:	81 c6 00 40 10 00    	add    $0x104000,%esi
  100124:	a3 00 30 10 00       	mov    %eax,0x103000
  100129:	8d 86 00 00 00 40    	lea    0x40000000(%esi),%eax
  10012f:	25 00 f0 ff ff       	and    $0xfffff000,%eax
  100134:	83 c8 07             	or     $0x7,%eax
  100137:	89 01                	mov    %eax,(%ecx)
  100139:	c7 44 24 08 00 10 00 	movl   $0x1000,0x8(%esp)
  100140:	00 
  100141:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
  100148:	00 
  100149:	89 34 24             	mov    %esi,(%esp)
  10014c:	e8 a7 11 00 00       	call   1012f8 <memset>
  100151:	e9 70 ff ff ff       	jmp    1000c6 <mm_malloc+0x76>
  100156:	66 90                	xchg   %ax,%ax
  100158:	8b 5d dc             	mov    -0x24(%ebp),%ebx
  10015b:	8b 45 e0             	mov    -0x20(%ebp),%eax
  10015e:	81 eb 00 00 00 40    	sub    $0x40000000,%ebx
  100164:	81 e3 00 f0 ff ff    	and    $0xfffff000,%ebx
  10016a:	c1 e8 16             	shr    $0x16,%eax
  10016d:	8b 34 83             	mov    (%ebx,%eax,4),%esi
  100170:	f7 c6 01 00 00 00    	test   $0x1,%esi
  100176:	75 32                	jne    1001aa <mm_malloc+0x15a>
  100178:	c7 44 24 10 a4 13 10 	movl   $0x1013a4,0x10(%esp)
  10017f:	00 
  100180:	c7 44 24 0c 08 14 10 	movl   $0x101408,0xc(%esp)
  100187:	00 
  100188:	c7 44 24 08 11 00 00 	movl   $0x11,0x8(%esp)
  10018f:	00 
  100190:	c7 44 24 04 93 13 10 	movl   $0x101393,0x4(%esp)
  100197:	00 
  100198:	c7 04 24 b4 13 10 00 	movl   $0x1013b4,(%esp)
  10019f:	e8 9c 10 00 00       	call   101240 <printk>
  1001a4:	b8 01 00 00 00       	mov    $0x1,%eax
  1001a9:	d6                   	(bad)  
  1001aa:	8b 55 e0             	mov    -0x20(%ebp),%edx
  1001ad:	8d 86 00 00 00 c0    	lea    -0x40000000(%esi),%eax
  1001b3:	25 00 f0 ff ff       	and    $0xfffff000,%eax
  1001b8:	c1 ea 0c             	shr    $0xc,%edx
  1001bb:	81 e2 ff 03 00 00    	and    $0x3ff,%edx
  1001c1:	f6 04 90 01          	testb  $0x1,(%eax,%edx,4)
  1001c5:	75 32                	jne    1001f9 <mm_malloc+0x1a9>
  1001c7:	c7 44 24 10 ac 13 10 	movl   $0x1013ac,0x10(%esp)
  1001ce:	00 
  1001cf:	c7 44 24 0c 08 14 10 	movl   $0x101408,0xc(%esp)
  1001d6:	00 
  1001d7:	c7 44 24 08 13 00 00 	movl   $0x13,0x8(%esp)
  1001de:	00 
  1001df:	c7 44 24 04 93 13 10 	movl   $0x101393,0x4(%esp)
  1001e6:	00 
  1001e7:	c7 04 24 b4 13 10 00 	movl   $0x1013b4,(%esp)
  1001ee:	e8 4d 10 00 00       	call   101240 <printk>
  1001f3:	b8 01 00 00 00       	mov    $0x1,%eax
  1001f8:	d6                   	(bad)  
  1001f9:	8b 45 08             	mov    0x8(%ebp),%eax
  1001fc:	c1 e8 16             	shr    $0x16,%eax
  1001ff:	8b 1c 83             	mov    (%ebx,%eax,4),%ebx
  100202:	f6 c3 01             	test   $0x1,%bl
  100205:	75 32                	jne    100239 <mm_malloc+0x1e9>
  100207:	c7 44 24 10 a4 13 10 	movl   $0x1013a4,0x10(%esp)
  10020e:	00 
  10020f:	c7 44 24 0c 08 14 10 	movl   $0x101408,0xc(%esp)
  100216:	00 
  100217:	c7 44 24 08 11 00 00 	movl   $0x11,0x8(%esp)
  10021e:	00 
  10021f:	c7 44 24 04 93 13 10 	movl   $0x101393,0x4(%esp)
  100226:	00 
  100227:	c7 04 24 b4 13 10 00 	movl   $0x1013b4,(%esp)
  10022e:	e8 0d 10 00 00       	call   101240 <printk>
  100233:	b8 01 00 00 00       	mov    $0x1,%eax
  100238:	d6                   	(bad)  
  100239:	8b 55 08             	mov    0x8(%ebp),%edx
  10023c:	8d 83 00 00 00 c0    	lea    -0x40000000(%ebx),%eax
  100242:	25 00 f0 ff ff       	and    $0xfffff000,%eax
  100247:	c1 ea 0c             	shr    $0xc,%edx
  10024a:	81 e2 ff 03 00 00    	and    $0x3ff,%edx
  100250:	8b 1c 90             	mov    (%eax,%edx,4),%ebx
  100253:	f6 c3 01             	test   $0x1,%bl
  100256:	75 32                	jne    10028a <mm_malloc+0x23a>
  100258:	c7 44 24 10 ac 13 10 	movl   $0x1013ac,0x10(%esp)
  10025f:	00 
  100260:	c7 44 24 0c 08 14 10 	movl   $0x101408,0xc(%esp)
  100267:	00 
  100268:	c7 44 24 08 13 00 00 	movl   $0x13,0x8(%esp)
  10026f:	00 
  100270:	c7 44 24 04 93 13 10 	movl   $0x101393,0x4(%esp)
  100277:	00 
  100278:	c7 04 24 b4 13 10 00 	movl   $0x1013b4,(%esp)
  10027f:	e8 bc 0f 00 00       	call   101240 <printk>
  100284:	b8 01 00 00 00       	mov    $0x1,%eax
  100289:	d6                   	(bad)  
  10028a:	8b 55 08             	mov    0x8(%ebp),%edx
  10028d:	89 d8                	mov    %ebx,%eax
  10028f:	25 00 f0 ff ff       	and    $0xfffff000,%eax
  100294:	81 e2 ff 0f 00 00    	and    $0xfff,%edx
  10029a:	09 d0                	or     %edx,%eax
  10029c:	83 c4 3c             	add    $0x3c,%esp
  10029f:	5b                   	pop    %ebx
  1002a0:	5e                   	pop    %esi
  1002a1:	5f                   	pop    %edi
  1002a2:	5d                   	pop    %ebp
  1002a3:	c3                   	ret    
  1002a4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  1002a8:	c7 44 24 10 80 13 10 	movl   $0x101380,0x10(%esp)
  1002af:	00 
  1002b0:	c7 44 24 0c fe 13 10 	movl   $0x1013fe,0xc(%esp)
  1002b7:	00 
  1002b8:	c7 44 24 08 31 00 00 	movl   $0x31,0x8(%esp)
  1002bf:	00 
  1002c0:	c7 44 24 04 93 13 10 	movl   $0x101393,0x4(%esp)
  1002c7:	00 
  1002c8:	c7 04 24 b4 13 10 00 	movl   $0x1013b4,(%esp)
  1002cf:	e8 6c 0f 00 00       	call   101240 <printk>
  1002d4:	b8 01 00 00 00       	mov    $0x1,%eax
  1002d9:	d6                   	(bad)  
  1002da:	a1 c4 2d 10 00       	mov    0x102dc4,%eax
  1002df:	e9 03 fe ff ff       	jmp    1000e7 <mm_malloc+0x97>

001002e4 <vec0>:
  1002e4:	6a 00                	push   $0x0
  1002e6:	6a 00                	push   $0x0
  1002e8:	e9 ab 00 00 00       	jmp    100398 <asm_do_irq>

001002ed <vec1>:
  1002ed:	6a 00                	push   $0x0
  1002ef:	6a 01                	push   $0x1
  1002f1:	e9 a2 00 00 00       	jmp    100398 <asm_do_irq>

001002f6 <vec2>:
  1002f6:	6a 00                	push   $0x0
  1002f8:	6a 02                	push   $0x2
  1002fa:	e9 99 00 00 00       	jmp    100398 <asm_do_irq>

001002ff <vec3>:
  1002ff:	6a 00                	push   $0x0
  100301:	6a 03                	push   $0x3
  100303:	e9 90 00 00 00       	jmp    100398 <asm_do_irq>

00100308 <vec4>:
  100308:	6a 00                	push   $0x0
  10030a:	6a 04                	push   $0x4
  10030c:	e9 87 00 00 00       	jmp    100398 <asm_do_irq>

00100311 <vec5>:
  100311:	6a 00                	push   $0x0
  100313:	6a 05                	push   $0x5
  100315:	e9 7e 00 00 00       	jmp    100398 <asm_do_irq>

0010031a <vec6>:
  10031a:	6a 00                	push   $0x0
  10031c:	6a 06                	push   $0x6
  10031e:	e9 75 00 00 00       	jmp    100398 <asm_do_irq>

00100323 <vec7>:
  100323:	6a 00                	push   $0x0
  100325:	6a 07                	push   $0x7
  100327:	e9 6c 00 00 00       	jmp    100398 <asm_do_irq>

0010032c <vec8>:
  10032c:	6a 08                	push   $0x8
  10032e:	e9 65 00 00 00       	jmp    100398 <asm_do_irq>

00100333 <vec9>:
  100333:	6a 00                	push   $0x0
  100335:	6a 09                	push   $0x9
  100337:	e9 5c 00 00 00       	jmp    100398 <asm_do_irq>

0010033c <vec10>:
  10033c:	6a 0a                	push   $0xa
  10033e:	e9 55 00 00 00       	jmp    100398 <asm_do_irq>

00100343 <vec11>:
  100343:	6a 0b                	push   $0xb
  100345:	e9 4e 00 00 00       	jmp    100398 <asm_do_irq>

0010034a <vec12>:
  10034a:	6a 0c                	push   $0xc
  10034c:	e9 47 00 00 00       	jmp    100398 <asm_do_irq>

00100351 <vec13>:
  100351:	6a 0d                	push   $0xd
  100353:	e9 40 00 00 00       	jmp    100398 <asm_do_irq>

00100358 <vec14>:
  100358:	6a 0e                	push   $0xe
  10035a:	e9 39 00 00 00       	jmp    100398 <asm_do_irq>

0010035f <vecsys>:
  10035f:	6a 00                	push   $0x0
  100361:	68 80 00 00 00       	push   $0x80
  100366:	e9 2d 00 00 00       	jmp    100398 <asm_do_irq>

0010036b <irq0>:
  10036b:	6a 00                	push   $0x0
  10036d:	68 e8 03 00 00       	push   $0x3e8
  100372:	e9 21 00 00 00       	jmp    100398 <asm_do_irq>

00100377 <irq1>:
  100377:	6a 00                	push   $0x0
  100379:	68 e9 03 00 00       	push   $0x3e9
  10037e:	e9 15 00 00 00       	jmp    100398 <asm_do_irq>

00100383 <irq14>:
  100383:	6a 00                	push   $0x0
  100385:	68 f6 03 00 00       	push   $0x3f6
  10038a:	e9 09 00 00 00       	jmp    100398 <asm_do_irq>

0010038f <irq_empty>:
  10038f:	6a 00                	push   $0x0
  100391:	6a ff                	push   $0xffffffff
  100393:	e9 00 00 00 00       	jmp    100398 <asm_do_irq>

00100398 <asm_do_irq>:
  100398:	60                   	pusha  
  100399:	54                   	push   %esp
  10039a:	e8 61 03 00 00       	call   100700 <irq_handle>
  10039f:	83 c4 04             	add    $0x4,%esp
  1003a2:	61                   	popa   
  1003a3:	83 c4 08             	add    $0x8,%esp
  1003a6:	cf                   	iret   
  1003a7:	66 90                	xchg   %ax,%ax
  1003a9:	66 90                	xchg   %ax,%ax
  1003ab:	66 90                	xchg   %ax,%ax
  1003ad:	66 90                	xchg   %ax,%ax
  1003af:	90                   	nop

001003b0 <get_kpdir>:
  1003b0:	55                   	push   %ebp
  1003b1:	b8 00 50 14 00       	mov    $0x145000,%eax
  1003b6:	89 e5                	mov    %esp,%ebp
  1003b8:	5d                   	pop    %ebp
  1003b9:	c3                   	ret    
  1003ba:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

001003c0 <init_page>:
  1003c0:	55                   	push   %ebp
  1003c1:	89 e5                	mov    %esp,%ebp
  1003c3:	57                   	push   %edi
  1003c4:	83 ec 08             	sub    $0x8,%esp
  1003c7:	68 00 10 00 00       	push   $0x1000
  1003cc:	6a 00                	push   $0x0
  1003ce:	68 00 50 14 00       	push   $0x145000
  1003d3:	e8 20 0f 00 00       	call   1012f8 <memset>
  1003d8:	83 c4 10             	add    $0x10,%esp
  1003db:	b9 00 50 14 00       	mov    $0x145000,%ecx
  1003e0:	b8 00 50 12 00       	mov    $0x125000,%eax
  1003e5:	8d 76 00             	lea    0x0(%esi),%esi
  1003e8:	89 c2                	mov    %eax,%edx
  1003ea:	05 00 10 00 00       	add    $0x1000,%eax
  1003ef:	83 c1 04             	add    $0x4,%ecx
  1003f2:	81 e2 00 f0 ff ff    	and    $0xfffff000,%edx
  1003f8:	83 ca 07             	or     $0x7,%edx
  1003fb:	89 51 fc             	mov    %edx,-0x4(%ecx)
  1003fe:	3d 00 50 14 00       	cmp    $0x145000,%eax
  100403:	75 e3                	jne    1003e8 <init_page+0x28>
  100405:	bf fc 4f 14 00       	mov    $0x144ffc,%edi
  10040a:	b8 07 f0 ff 07       	mov    $0x7fff007,%eax
  10040f:	fd                   	std    
  100410:	ab                   	stos   %eax,%es:(%edi)
  100411:	2d 00 10 00 00       	sub    $0x1000,%eax
  100416:	7d f8                	jge    100410 <init_page+0x50>
  100418:	b8 00 50 14 00       	mov    $0x145000,%eax
  10041d:	25 00 f0 ff ff       	and    $0xfffff000,%eax
  100422:	0f 22 d8             	mov    %eax,%cr3
  100425:	0f 20 c0             	mov    %cr0,%eax
  100428:	0d 00 00 00 80       	or     $0x80000000,%eax
  10042d:	0f 22 c0             	mov    %eax,%cr0
  100430:	8b 7d fc             	mov    -0x4(%ebp),%edi
  100433:	c9                   	leave  
  100434:	c3                   	ret    
  100435:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  100439:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00100440 <init_segment>:
  100440:	55                   	push   %ebp
  100441:	89 e5                	mov    %esp,%ebp
  100443:	83 ec 0c             	sub    $0xc,%esp
  100446:	6a 18                	push   $0x18
  100448:	6a 00                	push   $0x0
  10044a:	68 08 40 12 00       	push   $0x124008
  10044f:	e8 a4 0e 00 00       	call   1012f8 <memset>
  100454:	ba ff ff ff ff       	mov    $0xffffffff,%edx
  100459:	31 c9                	xor    %ecx,%ecx
  10045b:	b8 08 40 12 00       	mov    $0x124008,%eax
  100460:	66 89 15 10 40 12 00 	mov    %dx,0x124010
  100467:	ba ff ff ff ff       	mov    $0xffffffff,%edx
  10046c:	66 89 0d 12 40 12 00 	mov    %cx,0x124012
  100473:	66 89 15 18 40 12 00 	mov    %dx,0x124018
  10047a:	ba 17 00 00 00       	mov    $0x17,%edx
  10047f:	31 c9                	xor    %ecx,%ecx
  100481:	66 89 15 00 40 12 00 	mov    %dx,0x124000
  100488:	66 a3 02 40 12 00    	mov    %ax,0x124002
  10048e:	c1 e8 10             	shr    $0x10,%eax
  100491:	66 a3 04 40 12 00    	mov    %ax,0x124004
  100497:	c6 05 14 40 12 00 00 	movb   $0x0,0x124014
  10049e:	b8 00 40 12 00       	mov    $0x124000,%eax
  1004a3:	c6 05 15 40 12 00 9a 	movb   $0x9a,0x124015
  1004aa:	c6 05 16 40 12 00 cf 	movb   $0xcf,0x124016
  1004b1:	c6 05 17 40 12 00 00 	movb   $0x0,0x124017
  1004b8:	66 89 0d 1a 40 12 00 	mov    %cx,0x12401a
  1004bf:	c6 05 1c 40 12 00 00 	movb   $0x0,0x12401c
  1004c6:	c6 05 1d 40 12 00 92 	movb   $0x92,0x12401d
  1004cd:	c6 05 1e 40 12 00 cf 	movb   $0xcf,0x12401e
  1004d4:	c6 05 1f 40 12 00 00 	movb   $0x0,0x12401f
  1004db:	0f 01 10             	lgdtl  (%eax)
  1004de:	83 c4 10             	add    $0x10,%esp
  1004e1:	c9                   	leave  
  1004e2:	c3                   	ret    
  1004e3:	66 90                	xchg   %ax,%ax
  1004e5:	66 90                	xchg   %ax,%ax
  1004e7:	66 90                	xchg   %ax,%ax
  1004e9:	66 90                	xchg   %ax,%ax
  1004eb:	66 90                	xchg   %ax,%ax
  1004ed:	66 90                	xchg   %ax,%ax
  1004ef:	90                   	nop

001004f0 <get_updir>:
  1004f0:	55                   	push   %ebp
  1004f1:	b8 00 70 14 00       	mov    $0x147000,%eax
  1004f6:	89 e5                	mov    %esp,%ebp
  1004f8:	5d                   	pop    %ebp
  1004f9:	c3                   	ret    
  1004fa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00100500 <get_ucr3>:
  100500:	55                   	push   %ebp
  100501:	a1 04 60 14 00       	mov    0x146004,%eax
  100506:	89 e5                	mov    %esp,%ebp
  100508:	5d                   	pop    %ebp
  100509:	c3                   	ret    
  10050a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00100510 <mm_brk>:
  100510:	55                   	push   %ebp
  100511:	89 e5                	mov    %esp,%ebp
  100513:	53                   	push   %ebx
  100514:	83 ec 04             	sub    $0x4,%esp
  100517:	8b 5d 08             	mov    0x8(%ebp),%ebx
  10051a:	a1 00 60 14 00       	mov    0x146000,%eax
  10051f:	39 d8                	cmp    %ebx,%eax
  100521:	73 11                	jae    100534 <mm_brk+0x24>
  100523:	89 da                	mov    %ebx,%edx
  100525:	83 ec 08             	sub    $0x8,%esp
  100528:	29 c2                	sub    %eax,%edx
  10052a:	52                   	push   %edx
  10052b:	50                   	push   %eax
  10052c:	e8 1f fb ff ff       	call   100050 <mm_malloc>
  100531:	83 c4 10             	add    $0x10,%esp
  100534:	89 1d 00 60 14 00    	mov    %ebx,0x146000
  10053a:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  10053d:	c9                   	leave  
  10053e:	c3                   	ret    
  10053f:	90                   	nop

00100540 <init_mm>:
  100540:	55                   	push   %ebp
  100541:	89 e5                	mov    %esp,%ebp
  100543:	53                   	push   %ebx
  100544:	83 ec 04             	sub    $0x4,%esp
  100547:	e8 64 fe ff ff       	call   1003b0 <get_kpdir>
  10054c:	83 ec 04             	sub    $0x4,%esp
  10054f:	89 c3                	mov    %eax,%ebx
  100551:	68 00 10 00 00       	push   $0x1000
  100556:	6a 00                	push   $0x0
  100558:	68 00 70 14 00       	push   $0x147000
  10055d:	e8 96 0d 00 00       	call   1012f8 <memset>
  100562:	83 c4 0c             	add    $0xc,%esp
  100565:	68 80 00 00 00       	push   $0x80
  10056a:	53                   	push   %ebx
  10056b:	68 00 70 14 00       	push   $0x147000
  100570:	e8 3b 0d 00 00       	call   1012b0 <memcpy>
  100575:	b8 00 70 14 00       	mov    $0x147000,%eax
  10057a:	83 c4 10             	add    $0x10,%esp
  10057d:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  100580:	25 00 fc ff ff       	and    $0xfffffc00,%eax
  100585:	a3 04 60 14 00       	mov    %eax,0x146004
  10058a:	c9                   	leave  
  10058b:	c3                   	ret    
  10058c:	66 90                	xchg   %ax,%ax
  10058e:	66 90                	xchg   %ax,%ax

00100590 <create_video_mapping>:
  100590:	55                   	push   %ebp
  100591:	89 e5                	mov    %esp,%ebp
  100593:	83 ec 08             	sub    $0x8,%esp
  100596:	68 95 14 10 00       	push   $0x101495
  10059b:	6a 11                	push   $0x11
  10059d:	68 0e 14 10 00       	push   $0x10140e
  1005a2:	68 34 14 10 00       	push   $0x101434
  1005a7:	e8 94 0c 00 00       	call   101240 <printk>
  1005ac:	b8 01 00 00 00       	mov    $0x1,%eax
  1005b1:	d6                   	(bad)  
  1005b2:	83 c4 10             	add    $0x10,%esp
  1005b5:	c9                   	leave  
  1005b6:	c3                   	ret    
  1005b7:	89 f6                	mov    %esi,%esi
  1005b9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

001005c0 <video_mapping_write_test>:
  1005c0:	55                   	push   %ebp
  1005c1:	31 c0                	xor    %eax,%eax
  1005c3:	89 e5                	mov    %esp,%ebp
  1005c5:	8d 76 00             	lea    0x0(%esi),%esi
  1005c8:	89 04 85 00 00 0a 00 	mov    %eax,0xa0000(,%eax,4)
  1005cf:	83 c0 01             	add    $0x1,%eax
  1005d2:	3d 80 3e 00 00       	cmp    $0x3e80,%eax
  1005d7:	75 ef                	jne    1005c8 <video_mapping_write_test+0x8>
  1005d9:	5d                   	pop    %ebp
  1005da:	c3                   	ret    
  1005db:	90                   	nop
  1005dc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

001005e0 <video_mapping_read_test>:
  1005e0:	55                   	push   %ebp
  1005e1:	89 e5                	mov    %esp,%ebp
  1005e3:	56                   	push   %esi
  1005e4:	be 01 00 00 00       	mov    $0x1,%esi
  1005e9:	53                   	push   %ebx
  1005ea:	31 db                	xor    %ebx,%ebx
  1005ec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  1005f0:	3b 1c 9d 00 00 0a 00 	cmp    0xa0000(,%ebx,4),%ebx
  1005f7:	74 24                	je     10061d <video_mapping_read_test+0x3d>
  1005f9:	83 ec 0c             	sub    $0xc,%esp
  1005fc:	68 27 14 10 00       	push   $0x101427
  100601:	68 7d 14 10 00       	push   $0x10147d
  100606:	6a 20                	push   $0x20
  100608:	68 0e 14 10 00       	push   $0x10140e
  10060d:	68 b4 13 10 00       	push   $0x1013b4
  100612:	e8 29 0c 00 00       	call   101240 <printk>
  100617:	89 f0                	mov    %esi,%eax
  100619:	d6                   	(bad)  
  10061a:	83 c4 20             	add    $0x20,%esp
  10061d:	83 c3 01             	add    $0x1,%ebx
  100620:	81 fb 80 3e 00 00    	cmp    $0x3e80,%ebx
  100626:	75 c8                	jne    1005f0 <video_mapping_read_test+0x10>
  100628:	8d 65 f8             	lea    -0x8(%ebp),%esp
  10062b:	5b                   	pop    %ebx
  10062c:	5e                   	pop    %esi
  10062d:	5d                   	pop    %ebp
  10062e:	c3                   	ret    
  10062f:	90                   	nop

00100630 <video_mapping_clear>:
  100630:	55                   	push   %ebp
  100631:	89 e5                	mov    %esp,%ebp
  100633:	83 ec 0c             	sub    $0xc,%esp
  100636:	68 00 fa 00 00       	push   $0xfa00
  10063b:	6a 00                	push   $0x0
  10063d:	68 00 00 0a 00       	push   $0xa0000
  100642:	e8 b1 0c 00 00       	call   1012f8 <memset>
  100647:	83 c4 10             	add    $0x10,%esp
  10064a:	c9                   	leave  
  10064b:	c3                   	ret    
  10064c:	66 90                	xchg   %ax,%ax
  10064e:	66 90                	xchg   %ax,%ax

00100650 <add_irq_handle>:
  100650:	55                   	push   %ebp
  100651:	89 e5                	mov    %esp,%ebp
  100653:	53                   	push   %ebx
  100654:	83 ec 04             	sub    $0x4,%esp
  100657:	8b 5d 08             	mov    0x8(%ebp),%ebx
  10065a:	83 fb 0f             	cmp    $0xf,%ebx
  10065d:	7f 71                	jg     1006d0 <add_irq_handle+0x80>
  10065f:	a1 00 80 14 00       	mov    0x148000,%eax
  100664:	83 f8 20             	cmp    $0x20,%eax
  100667:	7e 2c                	jle    100695 <add_irq_handle+0x45>
  100669:	83 ec 0c             	sub    $0xc,%esp
  10066c:	68 d9 14 10 00       	push   $0x1014d9
  100671:	68 29 16 10 00       	push   $0x101629
  100676:	6a 16                	push   $0x16
  100678:	68 bd 14 10 00       	push   $0x1014bd
  10067d:	68 b4 13 10 00       	push   $0x1013b4
  100682:	e8 b9 0b 00 00       	call   101240 <printk>
  100687:	b8 01 00 00 00       	mov    $0x1,%eax
  10068c:	d6                   	(bad)  
  10068d:	a1 00 80 14 00       	mov    0x148000,%eax
  100692:	83 c4 20             	add    $0x20,%esp
  100695:	8d 50 01             	lea    0x1(%eax),%edx
  100698:	89 15 00 80 14 00    	mov    %edx,0x148000
  10069e:	8b 55 0c             	mov    0xc(%ebp),%edx
  1006a1:	89 14 c5 80 80 14 00 	mov    %edx,0x148080(,%eax,8)
  1006a8:	8b 14 9d 40 80 14 00 	mov    0x148040(,%ebx,4),%edx
  1006af:	89 14 c5 84 80 14 00 	mov    %edx,0x148084(,%eax,8)
  1006b6:	8d 04 c5 80 80 14 00 	lea    0x148080(,%eax,8),%eax
  1006bd:	89 04 9d 40 80 14 00 	mov    %eax,0x148040(,%ebx,4)
  1006c4:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  1006c7:	c9                   	leave  
  1006c8:	c3                   	ret    
  1006c9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  1006d0:	83 ec 0c             	sub    $0xc,%esp
  1006d3:	68 aa 14 10 00       	push   $0x1014aa
  1006d8:	68 29 16 10 00       	push   $0x101629
  1006dd:	6a 15                	push   $0x15
  1006df:	68 bd 14 10 00       	push   $0x1014bd
  1006e4:	68 b4 13 10 00       	push   $0x1013b4
  1006e9:	e8 52 0b 00 00       	call   101240 <printk>
  1006ee:	b8 01 00 00 00       	mov    $0x1,%eax
  1006f3:	d6                   	(bad)  
  1006f4:	83 c4 20             	add    $0x20,%esp
  1006f7:	e9 63 ff ff ff       	jmp    10065f <add_irq_handle+0xf>
  1006fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00100700 <irq_handle>:
  100700:	55                   	push   %ebp
  100701:	89 e5                	mov    %esp,%ebp
  100703:	53                   	push   %ebx
  100704:	83 ec 04             	sub    $0x4,%esp
  100707:	8b 5d 08             	mov    0x8(%ebp),%ebx
  10070a:	68 1e 16 10 00       	push   $0x10161e
  10070f:	6a 24                	push   $0x24
  100711:	68 bd 14 10 00       	push   $0x1014bd
  100716:	68 10 15 10 00       	push   $0x101510
  10071b:	e8 20 0b 00 00       	call   101240 <printk>
  100720:	b8 01 00 00 00       	mov    $0x1,%eax
  100725:	d6                   	(bad)  
  100726:	8b 43 30             	mov    0x30(%ebx),%eax
  100729:	83 c4 10             	add    $0x10,%esp
  10072c:	85 c0                	test   %eax,%eax
  10072e:	0f 88 9c 00 00 00    	js     1007d0 <irq_handle+0xd0>
  100734:	3d 80 00 00 00       	cmp    $0x80,%eax
  100739:	0f 84 b9 00 00 00    	je     1007f8 <irq_handle+0xf8>
  10073f:	3d e7 03 00 00       	cmp    $0x3e7,%eax
  100744:	7e 5a                	jle    1007a0 <irq_handle+0xa0>
  100746:	8d 98 18 fc ff ff    	lea    -0x3e8(%eax),%ebx
  10074c:	83 fb 0f             	cmp    $0xf,%ebx
  10074f:	7f 1f                	jg     100770 <irq_handle+0x70>
  100751:	8b 1c 9d 40 80 14 00 	mov    0x148040(,%ebx,4),%ebx
  100758:	85 db                	test   %ebx,%ebx
  10075a:	74 0d                	je     100769 <irq_handle+0x69>
  10075c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  100760:	ff 13                	call   *(%ebx)
  100762:	8b 5b 04             	mov    0x4(%ebx),%ebx
  100765:	85 db                	test   %ebx,%ebx
  100767:	75 f7                	jne    100760 <irq_handle+0x60>
  100769:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  10076c:	c9                   	leave  
  10076d:	c3                   	ret    
  10076e:	66 90                	xchg   %ax,%ax
  100770:	83 ec 0c             	sub    $0xc,%esp
  100773:	68 f7 14 10 00       	push   $0x1014f7
  100778:	68 1e 16 10 00       	push   $0x10161e
  10077d:	6a 30                	push   $0x30
  10077f:	68 bd 14 10 00       	push   $0x1014bd
  100784:	68 b4 13 10 00       	push   $0x1013b4
  100789:	e8 b2 0a 00 00       	call   101240 <printk>
  10078e:	b8 01 00 00 00       	mov    $0x1,%eax
  100793:	d6                   	(bad)  
  100794:	83 c4 20             	add    $0x20,%esp
  100797:	eb b8                	jmp    100751 <irq_handle+0x51>
  100799:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  1007a0:	83 ec 08             	sub    $0x8,%esp
  1007a3:	ff 73 0c             	pushl  0xc(%ebx)
  1007a6:	50                   	push   %eax
  1007a7:	68 1e 16 10 00       	push   $0x10161e
  1007ac:	6a 2d                	push   $0x2d
  1007ae:	68 bd 14 10 00       	push   $0x1014bd
  1007b3:	68 c4 15 10 00       	push   $0x1015c4
  1007b8:	e8 83 0a 00 00       	call   101240 <printk>
  1007bd:	b8 01 00 00 00       	mov    $0x1,%eax
  1007c2:	d6                   	(bad)  
  1007c3:	83 c4 20             	add    $0x20,%esp
  1007c6:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  1007c9:	c9                   	leave  
  1007ca:	c3                   	ret    
  1007cb:	90                   	nop
  1007cc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  1007d0:	68 1e 16 10 00       	push   $0x10161e
  1007d5:	6a 29                	push   $0x29
  1007d7:	68 bd 14 10 00       	push   $0x1014bd
  1007dc:	68 78 15 10 00       	push   $0x101578
  1007e1:	e8 5a 0a 00 00       	call   101240 <printk>
  1007e6:	b8 01 00 00 00       	mov    $0x1,%eax
  1007eb:	d6                   	(bad)  
  1007ec:	83 c4 10             	add    $0x10,%esp
  1007ef:	e9 75 ff ff ff       	jmp    100769 <irq_handle+0x69>
  1007f4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  1007f8:	89 5d 08             	mov    %ebx,0x8(%ebp)
  1007fb:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  1007fe:	c9                   	leave  
  1007ff:	e9 1c 04 00 00       	jmp    100c20 <do_syscall>
  100804:	66 90                	xchg   %ax,%ax
  100806:	66 90                	xchg   %ax,%ax
  100808:	66 90                	xchg   %ax,%ax
  10080a:	66 90                	xchg   %ax,%ax
  10080c:	66 90                	xchg   %ax,%ax
  10080e:	66 90                	xchg   %ax,%ax

00100810 <init_idt>:
  100810:	55                   	push   %ebp
  100811:	ba 8f 03 10 00       	mov    $0x10038f,%edx
  100816:	b8 c0 81 14 00       	mov    $0x1481c0,%eax
  10081b:	89 d1                	mov    %edx,%ecx
  10081d:	c1 ea 10             	shr    $0x10,%edx
  100820:	89 e5                	mov    %esp,%ebp
  100822:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  100828:	66 89 08             	mov    %cx,(%eax)
  10082b:	66 c7 40 02 08 00    	movw   $0x8,0x2(%eax)
  100831:	83 c0 08             	add    $0x8,%eax
  100834:	c6 40 fc 00          	movb   $0x0,-0x4(%eax)
  100838:	c6 40 fd 8f          	movb   $0x8f,-0x3(%eax)
  10083c:	66 89 50 fe          	mov    %dx,-0x2(%eax)
  100840:	3d c0 89 14 00       	cmp    $0x1489c0,%eax
  100845:	75 e1                	jne    100828 <init_idt+0x18>
  100847:	b8 e4 02 10 00       	mov    $0x1002e4,%eax
  10084c:	ba 08 00 00 00       	mov    $0x8,%edx
  100851:	b9 08 00 00 00       	mov    $0x8,%ecx
  100856:	66 a3 c0 81 14 00    	mov    %ax,0x1481c0
  10085c:	c1 e8 10             	shr    $0x10,%eax
  10085f:	66 89 15 c2 81 14 00 	mov    %dx,0x1481c2
  100866:	66 a3 c6 81 14 00    	mov    %ax,0x1481c6
  10086c:	b8 ed 02 10 00       	mov    $0x1002ed,%eax
  100871:	ba 08 00 00 00       	mov    $0x8,%edx
  100876:	66 a3 c8 81 14 00    	mov    %ax,0x1481c8
  10087c:	c1 e8 10             	shr    $0x10,%eax
  10087f:	66 89 0d ca 81 14 00 	mov    %cx,0x1481ca
  100886:	66 a3 ce 81 14 00    	mov    %ax,0x1481ce
  10088c:	b8 f6 02 10 00       	mov    $0x1002f6,%eax
  100891:	66 89 15 d2 81 14 00 	mov    %dx,0x1481d2
  100898:	66 a3 d0 81 14 00    	mov    %ax,0x1481d0
  10089e:	c1 e8 10             	shr    $0x10,%eax
  1008a1:	b9 08 00 00 00       	mov    $0x8,%ecx
  1008a6:	66 a3 d6 81 14 00    	mov    %ax,0x1481d6
  1008ac:	b8 ff 02 10 00       	mov    $0x1002ff,%eax
  1008b1:	ba 08 00 00 00       	mov    $0x8,%edx
  1008b6:	66 a3 d8 81 14 00    	mov    %ax,0x1481d8
  1008bc:	c1 e8 10             	shr    $0x10,%eax
  1008bf:	66 89 0d da 81 14 00 	mov    %cx,0x1481da
  1008c6:	66 a3 de 81 14 00    	mov    %ax,0x1481de
  1008cc:	b8 08 03 10 00       	mov    $0x100308,%eax
  1008d1:	66 89 15 e2 81 14 00 	mov    %dx,0x1481e2
  1008d8:	66 a3 e0 81 14 00    	mov    %ax,0x1481e0
  1008de:	c1 e8 10             	shr    $0x10,%eax
  1008e1:	b9 08 00 00 00       	mov    $0x8,%ecx
  1008e6:	66 a3 e6 81 14 00    	mov    %ax,0x1481e6
  1008ec:	b8 11 03 10 00       	mov    $0x100311,%eax
  1008f1:	ba 08 00 00 00       	mov    $0x8,%edx
  1008f6:	66 a3 e8 81 14 00    	mov    %ax,0x1481e8
  1008fc:	c1 e8 10             	shr    $0x10,%eax
  1008ff:	66 89 0d ea 81 14 00 	mov    %cx,0x1481ea
  100906:	66 a3 ee 81 14 00    	mov    %ax,0x1481ee
  10090c:	b8 1a 03 10 00       	mov    $0x10031a,%eax
  100911:	66 89 15 f2 81 14 00 	mov    %dx,0x1481f2
  100918:	66 a3 f0 81 14 00    	mov    %ax,0x1481f0
  10091e:	c1 e8 10             	shr    $0x10,%eax
  100921:	c6 05 c4 81 14 00 00 	movb   $0x0,0x1481c4
  100928:	c6 05 c5 81 14 00 8f 	movb   $0x8f,0x1481c5
  10092f:	c6 05 cc 81 14 00 00 	movb   $0x0,0x1481cc
  100936:	b9 08 00 00 00       	mov    $0x8,%ecx
  10093b:	c6 05 cd 81 14 00 8f 	movb   $0x8f,0x1481cd
  100942:	c6 05 d4 81 14 00 00 	movb   $0x0,0x1481d4
  100949:	ba 08 00 00 00       	mov    $0x8,%edx
  10094e:	c6 05 d5 81 14 00 8f 	movb   $0x8f,0x1481d5
  100955:	c6 05 dc 81 14 00 00 	movb   $0x0,0x1481dc
  10095c:	c6 05 dd 81 14 00 8f 	movb   $0x8f,0x1481dd
  100963:	c6 05 e4 81 14 00 00 	movb   $0x0,0x1481e4
  10096a:	c6 05 e5 81 14 00 8f 	movb   $0x8f,0x1481e5
  100971:	c6 05 ec 81 14 00 00 	movb   $0x0,0x1481ec
  100978:	c6 05 ed 81 14 00 8f 	movb   $0x8f,0x1481ed
  10097f:	c6 05 f4 81 14 00 00 	movb   $0x0,0x1481f4
  100986:	c6 05 f5 81 14 00 8f 	movb   $0x8f,0x1481f5
  10098d:	66 a3 f6 81 14 00    	mov    %ax,0x1481f6
  100993:	b8 23 03 10 00       	mov    $0x100323,%eax
  100998:	66 a3 f8 81 14 00    	mov    %ax,0x1481f8
  10099e:	c1 e8 10             	shr    $0x10,%eax
  1009a1:	66 89 0d fa 81 14 00 	mov    %cx,0x1481fa
  1009a8:	66 a3 fe 81 14 00    	mov    %ax,0x1481fe
  1009ae:	b8 2c 03 10 00       	mov    $0x10032c,%eax
  1009b3:	b9 08 00 00 00       	mov    $0x8,%ecx
  1009b8:	66 a3 00 82 14 00    	mov    %ax,0x148200
  1009be:	c1 e8 10             	shr    $0x10,%eax
  1009c1:	66 89 15 02 82 14 00 	mov    %dx,0x148202
  1009c8:	66 a3 06 82 14 00    	mov    %ax,0x148206
  1009ce:	b8 33 03 10 00       	mov    $0x100333,%eax
  1009d3:	66 89 0d 0a 82 14 00 	mov    %cx,0x14820a
  1009da:	66 a3 08 82 14 00    	mov    %ax,0x148208
  1009e0:	c1 e8 10             	shr    $0x10,%eax
  1009e3:	ba 08 00 00 00       	mov    $0x8,%edx
  1009e8:	66 a3 0e 82 14 00    	mov    %ax,0x14820e
  1009ee:	b8 3c 03 10 00       	mov    $0x10033c,%eax
  1009f3:	b9 08 00 00 00       	mov    $0x8,%ecx
  1009f8:	66 a3 10 82 14 00    	mov    %ax,0x148210
  1009fe:	c1 e8 10             	shr    $0x10,%eax
  100a01:	66 89 15 12 82 14 00 	mov    %dx,0x148212
  100a08:	66 a3 16 82 14 00    	mov    %ax,0x148216
  100a0e:	b8 43 03 10 00       	mov    $0x100343,%eax
  100a13:	66 89 0d 1a 82 14 00 	mov    %cx,0x14821a
  100a1a:	66 a3 18 82 14 00    	mov    %ax,0x148218
  100a20:	c1 e8 10             	shr    $0x10,%eax
  100a23:	ba 08 00 00 00       	mov    $0x8,%edx
  100a28:	66 a3 1e 82 14 00    	mov    %ax,0x14821e
  100a2e:	b8 4a 03 10 00       	mov    $0x10034a,%eax
  100a33:	b9 08 00 00 00       	mov    $0x8,%ecx
  100a38:	66 a3 20 82 14 00    	mov    %ax,0x148220
  100a3e:	c1 e8 10             	shr    $0x10,%eax
  100a41:	66 89 15 22 82 14 00 	mov    %dx,0x148222
  100a48:	66 a3 26 82 14 00    	mov    %ax,0x148226
  100a4e:	b8 51 03 10 00       	mov    $0x100351,%eax
  100a53:	66 89 0d 2a 82 14 00 	mov    %cx,0x14822a
  100a5a:	66 a3 28 82 14 00    	mov    %ax,0x148228
  100a60:	c1 e8 10             	shr    $0x10,%eax
  100a63:	c6 05 fc 81 14 00 00 	movb   $0x0,0x1481fc
  100a6a:	c6 05 fd 81 14 00 8f 	movb   $0x8f,0x1481fd
  100a71:	c6 05 04 82 14 00 00 	movb   $0x0,0x148204
  100a78:	ba 08 00 00 00       	mov    $0x8,%edx
  100a7d:	c6 05 05 82 14 00 8f 	movb   $0x8f,0x148205
  100a84:	c6 05 0c 82 14 00 00 	movb   $0x0,0x14820c
  100a8b:	b9 08 00 00 00       	mov    $0x8,%ecx
  100a90:	c6 05 0d 82 14 00 8f 	movb   $0x8f,0x14820d
  100a97:	c6 05 14 82 14 00 00 	movb   $0x0,0x148214
  100a9e:	c6 05 15 82 14 00 8f 	movb   $0x8f,0x148215
  100aa5:	c6 05 1c 82 14 00 00 	movb   $0x0,0x14821c
  100aac:	c6 05 1d 82 14 00 8f 	movb   $0x8f,0x14821d
  100ab3:	c6 05 24 82 14 00 00 	movb   $0x0,0x148224
  100aba:	c6 05 25 82 14 00 8f 	movb   $0x8f,0x148225
  100ac1:	c6 05 2c 82 14 00 00 	movb   $0x0,0x14822c
  100ac8:	66 a3 2e 82 14 00    	mov    %ax,0x14822e
  100ace:	b8 58 03 10 00       	mov    $0x100358,%eax
  100ad3:	66 89 15 32 82 14 00 	mov    %dx,0x148232
  100ada:	66 a3 30 82 14 00    	mov    %ax,0x148230
  100ae0:	c1 e8 10             	shr    $0x10,%eax
  100ae3:	66 89 0d c2 85 14 00 	mov    %cx,0x1485c2
  100aea:	66 a3 36 82 14 00    	mov    %ax,0x148236
  100af0:	b8 5f 03 10 00       	mov    $0x10035f,%eax
  100af5:	ba 08 00 00 00       	mov    $0x8,%edx
  100afa:	66 a3 c0 85 14 00    	mov    %ax,0x1485c0
  100b00:	c1 e8 10             	shr    $0x10,%eax
  100b03:	b9 08 00 00 00       	mov    $0x8,%ecx
  100b08:	66 a3 c6 85 14 00    	mov    %ax,0x1485c6
  100b0e:	b8 6b 03 10 00       	mov    $0x10036b,%eax
  100b13:	c6 05 2d 82 14 00 8f 	movb   $0x8f,0x14822d
  100b1a:	66 a3 c0 82 14 00    	mov    %ax,0x1482c0
  100b20:	c1 e8 10             	shr    $0x10,%eax
  100b23:	c6 05 34 82 14 00 00 	movb   $0x0,0x148234
  100b2a:	66 a3 c6 82 14 00    	mov    %ax,0x1482c6
  100b30:	b8 83 03 10 00       	mov    $0x100383,%eax
  100b35:	c6 05 35 82 14 00 8f 	movb   $0x8f,0x148235
  100b3c:	66 a3 30 83 14 00    	mov    %ax,0x148330
  100b42:	c1 e8 10             	shr    $0x10,%eax
  100b45:	c6 05 c4 85 14 00 00 	movb   $0x0,0x1485c4
  100b4c:	66 a3 36 83 14 00    	mov    %ax,0x148336
  100b52:	b8 ff 07 00 00       	mov    $0x7ff,%eax
  100b57:	c6 05 c5 85 14 00 ef 	movb   $0xef,0x1485c5
  100b5e:	66 a3 80 81 14 00    	mov    %ax,0x148180
  100b64:	b8 c0 81 14 00       	mov    $0x1481c0,%eax
  100b69:	66 89 15 c2 82 14 00 	mov    %dx,0x1482c2
  100b70:	66 a3 82 81 14 00    	mov    %ax,0x148182
  100b76:	c1 e8 10             	shr    $0x10,%eax
  100b79:	c6 05 c4 82 14 00 00 	movb   $0x0,0x1482c4
  100b80:	66 a3 84 81 14 00    	mov    %ax,0x148184
  100b86:	c6 05 c5 82 14 00 8e 	movb   $0x8e,0x1482c5
  100b8d:	b8 80 81 14 00       	mov    $0x148180,%eax
  100b92:	66 89 0d 32 83 14 00 	mov    %cx,0x148332
  100b99:	c6 05 34 83 14 00 00 	movb   $0x0,0x148334
  100ba0:	c6 05 35 83 14 00 8e 	movb   $0x8e,0x148335
  100ba7:	0f 01 18             	lidtl  (%eax)
  100baa:	5d                   	pop    %ebp
  100bab:	c3                   	ret    
  100bac:	66 90                	xchg   %ax,%ax
  100bae:	66 90                	xchg   %ax,%ax

00100bb0 <init_i8259>:
  100bb0:	55                   	push   %ebp
  100bb1:	ba 21 00 00 00       	mov    $0x21,%edx
  100bb6:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  100bbb:	89 e5                	mov    %esp,%ebp
  100bbd:	ee                   	out    %al,(%dx)
  100bbe:	b2 a1                	mov    $0xa1,%dl
  100bc0:	ee                   	out    %al,(%dx)
  100bc1:	b8 11 00 00 00       	mov    $0x11,%eax
  100bc6:	b2 20                	mov    $0x20,%dl
  100bc8:	ee                   	out    %al,(%dx)
  100bc9:	b8 20 00 00 00       	mov    $0x20,%eax
  100bce:	b2 21                	mov    $0x21,%dl
  100bd0:	ee                   	out    %al,(%dx)
  100bd1:	b8 04 00 00 00       	mov    $0x4,%eax
  100bd6:	ee                   	out    %al,(%dx)
  100bd7:	b8 03 00 00 00       	mov    $0x3,%eax
  100bdc:	ee                   	out    %al,(%dx)
  100bdd:	b8 11 00 00 00       	mov    $0x11,%eax
  100be2:	b2 a0                	mov    $0xa0,%dl
  100be4:	ee                   	out    %al,(%dx)
  100be5:	b8 28 00 00 00       	mov    $0x28,%eax
  100bea:	b2 a1                	mov    $0xa1,%dl
  100bec:	ee                   	out    %al,(%dx)
  100bed:	b8 02 00 00 00       	mov    $0x2,%eax
  100bf2:	ee                   	out    %al,(%dx)
  100bf3:	b8 03 00 00 00       	mov    $0x3,%eax
  100bf8:	ee                   	out    %al,(%dx)
  100bf9:	b8 68 00 00 00       	mov    $0x68,%eax
  100bfe:	b2 20                	mov    $0x20,%dl
  100c00:	ee                   	out    %al,(%dx)
  100c01:	b8 0a 00 00 00       	mov    $0xa,%eax
  100c06:	ee                   	out    %al,(%dx)
  100c07:	b8 68 00 00 00       	mov    $0x68,%eax
  100c0c:	b2 a0                	mov    $0xa0,%dl
  100c0e:	ee                   	out    %al,(%dx)
  100c0f:	b8 0a 00 00 00       	mov    $0xa,%eax
  100c14:	ee                   	out    %al,(%dx)
  100c15:	5d                   	pop    %ebp
  100c16:	c3                   	ret    
  100c17:	66 90                	xchg   %ax,%ax
  100c19:	66 90                	xchg   %ax,%ax
  100c1b:	66 90                	xchg   %ax,%ax
  100c1d:	66 90                	xchg   %ax,%ax
  100c1f:	90                   	nop

00100c20 <do_syscall>:
  100c20:	55                   	push   %ebp
  100c21:	89 e5                	mov    %esp,%ebp
  100c23:	83 ec 08             	sub    $0x8,%esp
  100c26:	8b 55 08             	mov    0x8(%ebp),%edx
  100c29:	8b 42 08             	mov    0x8(%edx),%eax
  100c2c:	85 c0                	test   %eax,%eax
  100c2e:	74 38                	je     100c68 <do_syscall+0x48>
  100c30:	83 f8 2d             	cmp    $0x2d,%eax
  100c33:	75 0b                	jne    100c40 <do_syscall+0x20>
  100c35:	c7 42 08 00 00 00 00 	movl   $0x0,0x8(%edx)
  100c3c:	c9                   	leave  
  100c3d:	c3                   	ret    
  100c3e:	66 90                	xchg   %ax,%ax
  100c40:	83 ec 0c             	sub    $0xc,%esp
  100c43:	50                   	push   %eax
  100c44:	68 ac 16 10 00       	push   $0x1016ac
  100c49:	6a 20                	push   $0x20
  100c4b:	68 38 16 10 00       	push   $0x101638
  100c50:	68 58 16 10 00       	push   $0x101658
  100c55:	e8 e6 05 00 00       	call   101240 <printk>
  100c5a:	b8 01 00 00 00       	mov    $0x1,%eax
  100c5f:	d6                   	(bad)  
  100c60:	83 c4 20             	add    $0x20,%esp
  100c63:	c9                   	leave  
  100c64:	c3                   	ret    
  100c65:	8d 76 00             	lea    0x0(%esi),%esi
  100c68:	fa                   	cli    
  100c69:	83 ec 08             	sub    $0x8,%esp
  100c6c:	ff 72 1c             	pushl  0x1c(%edx)
  100c6f:	ff 72 04             	pushl  0x4(%edx)
  100c72:	e8 d9 f9 ff ff       	call   100650 <add_irq_handle>
  100c77:	fb                   	sti    
  100c78:	83 c4 10             	add    $0x10,%esp
  100c7b:	c9                   	leave  
  100c7c:	c3                   	ret    
  100c7d:	66 90                	xchg   %ax,%ax
  100c7f:	90                   	nop

00100c80 <loader>:
  100c80:	55                   	push   %ebp
  100c81:	89 e5                	mov    %esp,%ebp
  100c83:	57                   	push   %edi
  100c84:	56                   	push   %esi
  100c85:	53                   	push   %ebx
  100c86:	8d bd e8 ef ff ff    	lea    -0x1018(%ebp),%edi
  100c8c:	81 ec 20 10 00 00    	sub    $0x1020,%esp
  100c92:	68 00 10 00 00       	push   $0x1000
  100c97:	6a 00                	push   $0x0
  100c99:	57                   	push   %edi
  100c9a:	e8 11 05 00 00       	call   1011b0 <ramdisk_read>
  100c9f:	83 c4 10             	add    $0x10,%esp
  100ca2:	81 bd e8 ef ff ff 7f 	cmpl   $0x464c457f,-0x1018(%ebp)
  100ca9:	45 4c 46 
  100cac:	74 06                	je     100cb4 <loader+0x34>
  100cae:	b8 01 00 00 00       	mov    $0x1,%eax
  100cb3:	d6                   	(bad)  
  100cb4:	31 f6                	xor    %esi,%esi
  100cb6:	66 83 bd 14 f0 ff ff 	cmpw   $0x0,-0xfec(%ebp)
  100cbd:	00 
  100cbe:	75 16                	jne    100cd6 <loader+0x56>
  100cc0:	eb 6e                	jmp    100d30 <loader+0xb0>
  100cc2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  100cc8:	0f b7 85 14 f0 ff ff 	movzwl -0xfec(%ebp),%eax
  100ccf:	83 c6 01             	add    $0x1,%esi
  100cd2:	39 f0                	cmp    %esi,%eax
  100cd4:	7e 5a                	jle    100d30 <loader+0xb0>
  100cd6:	0f b7 9d 12 f0 ff ff 	movzwl -0xfee(%ebp),%ebx
  100cdd:	0f af de             	imul   %esi,%ebx
  100ce0:	03 9d 04 f0 ff ff    	add    -0xffc(%ebp),%ebx
  100ce6:	01 fb                	add    %edi,%ebx
  100ce8:	83 3b 01             	cmpl   $0x1,(%ebx)
  100ceb:	75 db                	jne    100cc8 <loader+0x48>
  100ced:	83 ec 04             	sub    $0x4,%esp
  100cf0:	ff 73 10             	pushl  0x10(%ebx)
  100cf3:	ff 73 04             	pushl  0x4(%ebx)
  100cf6:	ff 73 08             	pushl  0x8(%ebx)
  100cf9:	83 c6 01             	add    $0x1,%esi
  100cfc:	e8 af 04 00 00       	call   1011b0 <ramdisk_read>
  100d01:	8b 43 10             	mov    0x10(%ebx),%eax
  100d04:	8b 53 14             	mov    0x14(%ebx),%edx
  100d07:	83 c4 0c             	add    $0xc,%esp
  100d0a:	29 c2                	sub    %eax,%edx
  100d0c:	52                   	push   %edx
  100d0d:	6a 00                	push   $0x0
  100d0f:	03 43 08             	add    0x8(%ebx),%eax
  100d12:	50                   	push   %eax
  100d13:	e8 e0 05 00 00       	call   1012f8 <memset>
  100d18:	0f b7 85 14 f0 ff ff 	movzwl -0xfec(%ebp),%eax
  100d1f:	83 c4 10             	add    $0x10,%esp
  100d22:	39 f0                	cmp    %esi,%eax
  100d24:	7f b0                	jg     100cd6 <loader+0x56>
  100d26:	8d 76 00             	lea    0x0(%esi),%esi
  100d29:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
  100d30:	8b 85 00 f0 ff ff    	mov    -0x1000(%ebp),%eax
  100d36:	89 85 e4 ef ff ff    	mov    %eax,-0x101c(%ebp)
  100d3c:	8b 85 e4 ef ff ff    	mov    -0x101c(%ebp),%eax
  100d42:	8d 65 f4             	lea    -0xc(%ebp),%esp
  100d45:	5b                   	pop    %ebx
  100d46:	5e                   	pop    %esi
  100d47:	5f                   	pop    %edi
  100d48:	5d                   	pop    %ebp
  100d49:	c3                   	ret    
  100d4a:	66 90                	xchg   %ax,%ax
  100d4c:	66 90                	xchg   %ax,%ax
  100d4e:	66 90                	xchg   %ax,%ax

00100d50 <init_cond>:
  100d50:	55                   	push   %ebp
  100d51:	89 e5                	mov    %esp,%ebp
  100d53:	83 ec 08             	sub    $0x8,%esp
  100d56:	68 4c 17 10 00       	push   $0x10174c
  100d5b:	6a 4a                	push   $0x4a
  100d5d:	68 b7 16 10 00       	push   $0x1016b7
  100d62:	68 cc 16 10 00       	push   $0x1016cc
  100d67:	e8 d4 04 00 00       	call   101240 <printk>
  100d6c:	e8 0f ff ff ff       	call   100c80 <loader>
  100d71:	bd 00 00 00 00       	mov    $0x0,%ebp
  100d76:	83 ec 10             	sub    $0x10,%esp
  100d79:	ff d0                	call   *%eax
  100d7b:	68 4c 17 10 00       	push   $0x10174c
  100d80:	6a 6b                	push   $0x6b
  100d82:	68 b7 16 10 00       	push   $0x1016b7
  100d87:	68 00 17 10 00       	push   $0x101700
  100d8c:	e8 af 04 00 00       	call   101240 <printk>
  100d91:	b8 01 00 00 00       	mov    $0x1,%eax
  100d96:	d6                   	(bad)  
  100d97:	83 c4 20             	add    $0x20,%esp
  100d9a:	c9                   	leave  
  100d9b:	c3                   	ret    
  100d9c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00100da0 <init>:
  100da0:	55                   	push   %ebp
  100da1:	b8 50 0d 10 00       	mov    $0x100d50,%eax
  100da6:	89 e5                	mov    %esp,%ebp
  100da8:	83 ec 08             	sub    $0x8,%esp
  100dab:	ff e0                	jmp    *%eax
  100dad:	68 56 17 10 00       	push   $0x101756
  100db2:	6a 24                	push   $0x24
  100db4:	68 b7 16 10 00       	push   $0x1016b7
  100db9:	68 00 17 10 00       	push   $0x101700
  100dbe:	e8 7d 04 00 00       	call   101240 <printk>
  100dc3:	b8 01 00 00 00       	mov    $0x1,%eax
  100dc8:	d6                   	(bad)  
  100dc9:	83 c4 10             	add    $0x10,%esp
  100dcc:	c9                   	leave  
  100dcd:	c3                   	ret    
  100dce:	66 90                	xchg   %ax,%ax

00100dd0 <buf_fetch>:
  100dd0:	55                   	push   %ebp
  100dd1:	89 c2                	mov    %eax,%edx
  100dd3:	89 e5                	mov    %esp,%ebp
  100dd5:	57                   	push   %edi
  100dd6:	56                   	push   %esi
  100dd7:	53                   	push   %ebx
  100dd8:	89 c3                	mov    %eax,%ebx
  100dda:	83 e3 7f             	and    $0x7f,%ebx
  100ddd:	89 d8                	mov    %ebx,%eax
  100ddf:	83 ec 1c             	sub    $0x1c,%esp
  100de2:	c1 e0 09             	shl    $0x9,%eax
  100de5:	8d 0c d8             	lea    (%eax,%ebx,8),%ecx
  100de8:	8d 81 c0 89 14 00    	lea    0x1489c0(%ecx),%eax
  100dee:	80 78 04 01          	cmpb   $0x1,0x4(%eax)
  100df2:	74 5c                	je     100e50 <buf_fetch+0x80>
  100df4:	89 d7                	mov    %edx,%edi
  100df6:	89 da                	mov    %ebx,%edx
  100df8:	c1 e2 09             	shl    $0x9,%edx
  100dfb:	8d 0c da             	lea    (%edx,%ebx,8),%ecx
  100dfe:	8d 91 c0 89 14 00    	lea    0x1489c0(%ecx),%edx
  100e04:	66 81 7a 04 01 01    	cmpw   $0x101,0x4(%edx)
  100e0a:	74 54                	je     100e60 <buf_fetch+0x90>
  100e0c:	8d 72 06             	lea    0x6(%edx),%esi
  100e0f:	83 ec 08             	sub    $0x8,%esp
  100e12:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  100e15:	57                   	push   %edi
  100e16:	56                   	push   %esi
  100e17:	e8 e4 01 00 00       	call   101000 <disk_do_read>
  100e1c:	89 da                	mov    %ebx,%edx
  100e1e:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  100e21:	83 c4 10             	add    $0x10,%esp
  100e24:	c1 e2 09             	shl    $0x9,%edx
  100e27:	8d 0c da             	lea    (%edx,%ebx,8),%ecx
  100e2a:	c6 81 c4 89 14 00 01 	movb   $0x1,0x1489c4(%ecx)
  100e31:	89 b9 c0 89 14 00    	mov    %edi,0x1489c0(%ecx)
  100e37:	c6 81 c5 89 14 00 00 	movb   $0x0,0x1489c5(%ecx)
  100e3e:	8d 65 f4             	lea    -0xc(%ebp),%esp
  100e41:	5b                   	pop    %ebx
  100e42:	5e                   	pop    %esi
  100e43:	5f                   	pop    %edi
  100e44:	5d                   	pop    %ebp
  100e45:	c3                   	ret    
  100e46:	8d 76 00             	lea    0x0(%esi),%esi
  100e49:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
  100e50:	39 91 c0 89 14 00    	cmp    %edx,0x1489c0(%ecx)
  100e56:	75 9c                	jne    100df4 <buf_fetch+0x24>
  100e58:	eb e4                	jmp    100e3e <buf_fetch+0x6e>
  100e5a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  100e60:	8d 72 06             	lea    0x6(%edx),%esi
  100e63:	83 ec 08             	sub    $0x8,%esp
  100e66:	ff b1 c0 89 14 00    	pushl  0x1489c0(%ecx)
  100e6c:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  100e6f:	56                   	push   %esi
  100e70:	e8 cb 01 00 00       	call   101040 <disk_do_write>
  100e75:	83 c4 10             	add    $0x10,%esp
  100e78:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  100e7b:	eb 92                	jmp    100e0f <buf_fetch+0x3f>
  100e7d:	8d 76 00             	lea    0x0(%esi),%esi

00100e80 <buf_init>:
  100e80:	55                   	push   %ebp
  100e81:	b8 c4 89 14 00       	mov    $0x1489c4,%eax
  100e86:	89 e5                	mov    %esp,%ebp
  100e88:	90                   	nop
  100e89:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  100e90:	c6 00 00             	movb   $0x0,(%eax)
  100e93:	05 08 02 00 00       	add    $0x208,%eax
  100e98:	3d c4 8d 15 00       	cmp    $0x158dc4,%eax
  100e9d:	75 f1                	jne    100e90 <buf_init+0x10>
  100e9f:	5d                   	pop    %ebp
  100ea0:	c3                   	ret    
  100ea1:	eb 0d                	jmp    100eb0 <buf_writeback>
  100ea3:	90                   	nop
  100ea4:	90                   	nop
  100ea5:	90                   	nop
  100ea6:	90                   	nop
  100ea7:	90                   	nop
  100ea8:	90                   	nop
  100ea9:	90                   	nop
  100eaa:	90                   	nop
  100eab:	90                   	nop
  100eac:	90                   	nop
  100ead:	90                   	nop
  100eae:	90                   	nop
  100eaf:	90                   	nop

00100eb0 <buf_writeback>:
  100eb0:	55                   	push   %ebp
  100eb1:	89 e5                	mov    %esp,%ebp
  100eb3:	53                   	push   %ebx
  100eb4:	bb c6 89 14 00       	mov    $0x1489c6,%ebx
  100eb9:	83 ec 04             	sub    $0x4,%esp
  100ebc:	eb 10                	jmp    100ece <buf_writeback+0x1e>
  100ebe:	66 90                	xchg   %ax,%ax
  100ec0:	81 c3 08 02 00 00    	add    $0x208,%ebx
  100ec6:	81 fb c6 8d 15 00    	cmp    $0x158dc6,%ebx
  100ecc:	74 32                	je     100f00 <buf_writeback+0x50>
  100ece:	80 7b ff 01          	cmpb   $0x1,-0x1(%ebx)
  100ed2:	75 ec                	jne    100ec0 <buf_writeback+0x10>
  100ed4:	83 ec 08             	sub    $0x8,%esp
  100ed7:	ff 73 fa             	pushl  -0x6(%ebx)
  100eda:	53                   	push   %ebx
  100edb:	81 c3 08 02 00 00    	add    $0x208,%ebx
  100ee1:	e8 5a 01 00 00       	call   101040 <disk_do_write>
  100ee6:	c6 83 f7 fd ff ff 00 	movb   $0x0,-0x209(%ebx)
  100eed:	83 c4 10             	add    $0x10,%esp
  100ef0:	81 fb c6 8d 15 00    	cmp    $0x158dc6,%ebx
  100ef6:	75 d6                	jne    100ece <buf_writeback+0x1e>
  100ef8:	90                   	nop
  100ef9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  100f00:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  100f03:	c9                   	leave  
  100f04:	c3                   	ret    
  100f05:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  100f09:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00100f10 <read_byte>:
  100f10:	55                   	push   %ebp
  100f11:	89 e5                	mov    %esp,%ebp
  100f13:	53                   	push   %ebx
  100f14:	83 ec 04             	sub    $0x4,%esp
  100f17:	8b 5d 08             	mov    0x8(%ebp),%ebx
  100f1a:	89 d8                	mov    %ebx,%eax
  100f1c:	81 e3 ff 01 00 00    	and    $0x1ff,%ebx
  100f22:	c1 e8 09             	shr    $0x9,%eax
  100f25:	e8 a6 fe ff ff       	call   100dd0 <buf_fetch>
  100f2a:	0f b6 44 18 06       	movzbl 0x6(%eax,%ebx,1),%eax
  100f2f:	83 c4 04             	add    $0x4,%esp
  100f32:	5b                   	pop    %ebx
  100f33:	5d                   	pop    %ebp
  100f34:	c3                   	ret    
  100f35:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  100f39:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00100f40 <write_byte>:
  100f40:	55                   	push   %ebp
  100f41:	89 e5                	mov    %esp,%ebp
  100f43:	56                   	push   %esi
  100f44:	53                   	push   %ebx
  100f45:	8b 5d 08             	mov    0x8(%ebp),%ebx
  100f48:	8b 75 0c             	mov    0xc(%ebp),%esi
  100f4b:	89 d8                	mov    %ebx,%eax
  100f4d:	81 e3 ff 01 00 00    	and    $0x1ff,%ebx
  100f53:	c1 e8 09             	shr    $0x9,%eax
  100f56:	e8 75 fe ff ff       	call   100dd0 <buf_fetch>
  100f5b:	89 f2                	mov    %esi,%edx
  100f5d:	88 54 18 06          	mov    %dl,0x6(%eax,%ebx,1)
  100f61:	c6 40 05 01          	movb   $0x1,0x5(%eax)
  100f65:	5b                   	pop    %ebx
  100f66:	5e                   	pop    %esi
  100f67:	5d                   	pop    %ebp
  100f68:	c3                   	ret    
  100f69:	66 90                	xchg   %ax,%ax
  100f6b:	66 90                	xchg   %ax,%ax
  100f6d:	66 90                	xchg   %ax,%ax
  100f6f:	90                   	nop

00100f70 <dma_prepare>:
  100f70:	55                   	push   %ebp
  100f71:	89 e5                	mov    %esp,%ebp
  100f73:	83 ec 08             	sub    $0x8,%esp
  100f76:	68 77 17 10 00       	push   $0x101777
  100f7b:	6a 1d                	push   $0x1d
  100f7d:	68 5b 17 10 00       	push   $0x10175b
  100f82:	68 34 14 10 00       	push   $0x101434
  100f87:	e8 b4 02 00 00       	call   101240 <printk>
  100f8c:	b8 01 00 00 00       	mov    $0x1,%eax
  100f91:	d6                   	(bad)  
  100f92:	83 c4 10             	add    $0x10,%esp
  100f95:	c9                   	leave  
  100f96:	c3                   	ret    
  100f97:	89 f6                	mov    %esi,%esi
  100f99:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00100fa0 <dma_issue_read>:
  100fa0:	55                   	push   %ebp
  100fa1:	ba 40 c0 ff ff       	mov    $0xffffc040,%edx
  100fa6:	89 e5                	mov    %esp,%ebp
  100fa8:	ec                   	in     (%dx),%al
  100fa9:	83 c8 09             	or     $0x9,%eax
  100fac:	ee                   	out    %al,(%dx)
  100fad:	5d                   	pop    %ebp
  100fae:	c3                   	ret    
  100faf:	90                   	nop

00100fb0 <ide_prepare>:
  100fb0:	55                   	push   %ebp
  100fb1:	89 c1                	mov    %eax,%ecx
  100fb3:	ba f7 01 00 00       	mov    $0x1f7,%edx
  100fb8:	89 e5                	mov    %esp,%ebp
  100fba:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  100fc0:	ec                   	in     (%dx),%al
  100fc1:	83 e0 c0             	and    $0xffffffc0,%eax
  100fc4:	3c 40                	cmp    $0x40,%al
  100fc6:	75 f8                	jne    100fc0 <ide_prepare+0x10>
  100fc8:	ba f1 01 00 00       	mov    $0x1f1,%edx
  100fcd:	31 c0                	xor    %eax,%eax
  100fcf:	ee                   	out    %al,(%dx)
  100fd0:	b8 01 00 00 00       	mov    $0x1,%eax
  100fd5:	b2 f2                	mov    $0xf2,%dl
  100fd7:	ee                   	out    %al,(%dx)
  100fd8:	b2 f3                	mov    $0xf3,%dl
  100fda:	89 c8                	mov    %ecx,%eax
  100fdc:	ee                   	out    %al,(%dx)
  100fdd:	89 c8                	mov    %ecx,%eax
  100fdf:	b2 f4                	mov    $0xf4,%dl
  100fe1:	c1 e8 08             	shr    $0x8,%eax
  100fe4:	ee                   	out    %al,(%dx)
  100fe5:	89 c8                	mov    %ecx,%eax
  100fe7:	b2 f5                	mov    $0xf5,%dl
  100fe9:	c1 e8 10             	shr    $0x10,%eax
  100fec:	ee                   	out    %al,(%dx)
  100fed:	89 c8                	mov    %ecx,%eax
  100fef:	b2 f6                	mov    $0xf6,%dl
  100ff1:	c1 e8 18             	shr    $0x18,%eax
  100ff4:	83 c8 e0             	or     $0xffffffe0,%eax
  100ff7:	ee                   	out    %al,(%dx)
  100ff8:	5d                   	pop    %ebp
  100ff9:	c3                   	ret    
  100ffa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00101000 <disk_do_read>:
  101000:	55                   	push   %ebp
  101001:	89 e5                	mov    %esp,%ebp
  101003:	53                   	push   %ebx
  101004:	8b 45 0c             	mov    0xc(%ebp),%eax
  101007:	e8 a4 ff ff ff       	call   100fb0 <ide_prepare>
  10100c:	ba f7 01 00 00       	mov    $0x1f7,%edx
  101011:	b8 20 00 00 00       	mov    $0x20,%eax
  101016:	ee                   	out    %al,(%dx)
  101017:	8b 4d 08             	mov    0x8(%ebp),%ecx
  10101a:	b2 f0                	mov    $0xf0,%dl
  10101c:	8d 99 00 02 00 00    	lea    0x200(%ecx),%ebx
  101022:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  101028:	ed                   	in     (%dx),%eax
  101029:	89 01                	mov    %eax,(%ecx)
  10102b:	83 c1 04             	add    $0x4,%ecx
  10102e:	39 d9                	cmp    %ebx,%ecx
  101030:	75 f6                	jne    101028 <disk_do_read+0x28>
  101032:	5b                   	pop    %ebx
  101033:	5d                   	pop    %ebp
  101034:	c3                   	ret    
  101035:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  101039:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00101040 <disk_do_write>:
  101040:	55                   	push   %ebp
  101041:	89 e5                	mov    %esp,%ebp
  101043:	53                   	push   %ebx
  101044:	8b 45 0c             	mov    0xc(%ebp),%eax
  101047:	e8 64 ff ff ff       	call   100fb0 <ide_prepare>
  10104c:	ba f7 01 00 00       	mov    $0x1f7,%edx
  101051:	b8 30 00 00 00       	mov    $0x30,%eax
  101056:	ee                   	out    %al,(%dx)
  101057:	8b 4d 08             	mov    0x8(%ebp),%ecx
  10105a:	b2 f0                	mov    $0xf0,%dl
  10105c:	8d 99 00 02 00 00    	lea    0x200(%ecx),%ebx
  101062:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  101068:	8b 01                	mov    (%ecx),%eax
  10106a:	ef                   	out    %eax,(%dx)
  10106b:	83 c1 04             	add    $0x4,%ecx
  10106e:	39 d9                	cmp    %ebx,%ecx
  101070:	75 f6                	jne    101068 <disk_do_write+0x28>
  101072:	5b                   	pop    %ebx
  101073:	5d                   	pop    %ebp
  101074:	c3                   	ret    
  101075:	66 90                	xchg   %ax,%ax
  101077:	66 90                	xchg   %ax,%ax
  101079:	66 90                	xchg   %ax,%ax
  10107b:	66 90                	xchg   %ax,%ax
  10107d:	66 90                	xchg   %ax,%ax
  10107f:	90                   	nop

00101080 <ide_intr>:
  101080:	55                   	push   %ebp
  101081:	c7 05 c4 8d 15 00 01 	movl   $0x1,0x158dc4
  101088:	00 00 00 
  10108b:	89 e5                	mov    %esp,%ebp
  10108d:	5d                   	pop    %ebp
  10108e:	c3                   	ret    
  10108f:	90                   	nop

00101090 <ide_writeback>:
  101090:	a1 c0 8d 15 00       	mov    0x158dc0,%eax
  101095:	83 c0 01             	add    $0x1,%eax
  101098:	83 f8 64             	cmp    $0x64,%eax
  10109b:	a3 c0 8d 15 00       	mov    %eax,0x158dc0
  1010a0:	74 06                	je     1010a8 <ide_writeback+0x18>
  1010a2:	c3                   	ret    
  1010a3:	90                   	nop
  1010a4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  1010a8:	55                   	push   %ebp
  1010a9:	89 e5                	mov    %esp,%ebp
  1010ab:	83 ec 08             	sub    $0x8,%esp
  1010ae:	e8 fd fd ff ff       	call   100eb0 <buf_writeback>
  1010b3:	c7 05 c0 8d 15 00 00 	movl   $0x0,0x158dc0
  1010ba:	00 00 00 
  1010bd:	c9                   	leave  
  1010be:	c3                   	ret    
  1010bf:	90                   	nop

001010c0 <ide_read>:
  1010c0:	55                   	push   %ebp
  1010c1:	89 e5                	mov    %esp,%ebp
  1010c3:	57                   	push   %edi
  1010c4:	56                   	push   %esi
  1010c5:	53                   	push   %ebx
  1010c6:	83 ec 0c             	sub    $0xc,%esp
  1010c9:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  1010cc:	8b 45 10             	mov    0x10(%ebp),%eax
  1010cf:	8b 7d 08             	mov    0x8(%ebp),%edi
  1010d2:	8d 34 18             	lea    (%eax,%ebx,1),%esi
  1010d5:	29 df                	sub    %ebx,%edi
  1010d7:	85 c0                	test   %eax,%eax
  1010d9:	74 1b                	je     1010f6 <ide_read+0x36>
  1010db:	90                   	nop
  1010dc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  1010e0:	83 ec 0c             	sub    $0xc,%esp
  1010e3:	53                   	push   %ebx
  1010e4:	e8 27 fe ff ff       	call   100f10 <read_byte>
  1010e9:	88 04 1f             	mov    %al,(%edi,%ebx,1)
  1010ec:	83 c3 01             	add    $0x1,%ebx
  1010ef:	83 c4 10             	add    $0x10,%esp
  1010f2:	39 f3                	cmp    %esi,%ebx
  1010f4:	75 ea                	jne    1010e0 <ide_read+0x20>
  1010f6:	8d 65 f4             	lea    -0xc(%ebp),%esp
  1010f9:	5b                   	pop    %ebx
  1010fa:	5e                   	pop    %esi
  1010fb:	5f                   	pop    %edi
  1010fc:	5d                   	pop    %ebp
  1010fd:	c3                   	ret    
  1010fe:	66 90                	xchg   %ax,%ax

00101100 <ide_write>:
  101100:	55                   	push   %ebp
  101101:	89 e5                	mov    %esp,%ebp
  101103:	57                   	push   %edi
  101104:	56                   	push   %esi
  101105:	53                   	push   %ebx
  101106:	83 ec 0c             	sub    $0xc,%esp
  101109:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  10110c:	8b 45 10             	mov    0x10(%ebp),%eax
  10110f:	8b 7d 08             	mov    0x8(%ebp),%edi
  101112:	8d 34 18             	lea    (%eax,%ebx,1),%esi
  101115:	29 df                	sub    %ebx,%edi
  101117:	85 c0                	test   %eax,%eax
  101119:	74 1d                	je     101138 <ide_write+0x38>
  10111b:	90                   	nop
  10111c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  101120:	0f b6 04 1f          	movzbl (%edi,%ebx,1),%eax
  101124:	83 ec 08             	sub    $0x8,%esp
  101127:	50                   	push   %eax
  101128:	53                   	push   %ebx
  101129:	83 c3 01             	add    $0x1,%ebx
  10112c:	e8 0f fe ff ff       	call   100f40 <write_byte>
  101131:	83 c4 10             	add    $0x10,%esp
  101134:	39 f3                	cmp    %esi,%ebx
  101136:	75 e8                	jne    101120 <ide_write+0x20>
  101138:	8d 65 f4             	lea    -0xc(%ebp),%esp
  10113b:	5b                   	pop    %ebx
  10113c:	5e                   	pop    %esi
  10113d:	5f                   	pop    %edi
  10113e:	5d                   	pop    %ebp
  10113f:	c3                   	ret    

00101140 <clear_ide_intr>:
  101140:	55                   	push   %ebp
  101141:	c7 05 c4 8d 15 00 00 	movl   $0x0,0x158dc4
  101148:	00 00 00 
  10114b:	89 e5                	mov    %esp,%ebp
  10114d:	5d                   	pop    %ebp
  10114e:	c3                   	ret    
  10114f:	90                   	nop

00101150 <wait_ide_intr>:
  101150:	a1 c4 8d 15 00       	mov    0x158dc4,%eax
  101155:	55                   	push   %ebp
  101156:	89 e5                	mov    %esp,%ebp
  101158:	85 c0                	test   %eax,%eax
  10115a:	75 0e                	jne    10116a <wait_ide_intr+0x1a>
  10115c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  101160:	f4                   	hlt    
  101161:	a1 c4 8d 15 00       	mov    0x158dc4,%eax
  101166:	85 c0                	test   %eax,%eax
  101168:	74 f6                	je     101160 <wait_ide_intr+0x10>
  10116a:	c7 05 c4 8d 15 00 00 	movl   $0x0,0x158dc4
  101171:	00 00 00 
  101174:	5d                   	pop    %ebp
  101175:	c3                   	ret    
  101176:	8d 76 00             	lea    0x0(%esi),%esi
  101179:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00101180 <init_ide>:
  101180:	55                   	push   %ebp
  101181:	89 e5                	mov    %esp,%ebp
  101183:	83 ec 08             	sub    $0x8,%esp
  101186:	e8 f5 fc ff ff       	call   100e80 <buf_init>
  10118b:	83 ec 08             	sub    $0x8,%esp
  10118e:	68 90 10 10 00       	push   $0x101090
  101193:	6a 00                	push   $0x0
  101195:	e8 b6 f4 ff ff       	call   100650 <add_irq_handle>
  10119a:	58                   	pop    %eax
  10119b:	5a                   	pop    %edx
  10119c:	68 80 10 10 00       	push   $0x101080
  1011a1:	6a 0e                	push   $0xe
  1011a3:	e8 a8 f4 ff ff       	call   100650 <add_irq_handle>
  1011a8:	83 c4 10             	add    $0x10,%esp
  1011ab:	c9                   	leave  
  1011ac:	c3                   	ret    
  1011ad:	66 90                	xchg   %ax,%ax
  1011af:	90                   	nop

001011b0 <ramdisk_read>:
  1011b0:	55                   	push   %ebp
  1011b1:	89 e5                	mov    %esp,%ebp
  1011b3:	53                   	push   %ebx
  1011b4:	8b 55 0c             	mov    0xc(%ebp),%edx
  1011b7:	8b 4d 10             	mov    0x10(%ebp),%ecx
  1011ba:	8b 5d 08             	mov    0x8(%ebp),%ebx
  1011bd:	8d 04 0a             	lea    (%edx,%ecx,1),%eax
  1011c0:	3d ff ff 09 00       	cmp    $0x9ffff,%eax
  1011c5:	76 06                	jbe    1011cd <ramdisk_read+0x1d>
  1011c7:	b8 01 00 00 00       	mov    $0x1,%eax
  1011cc:	d6                   	(bad)  
  1011cd:	89 5d 08             	mov    %ebx,0x8(%ebp)
  1011d0:	89 4d 10             	mov    %ecx,0x10(%ebp)
  1011d3:	89 55 0c             	mov    %edx,0xc(%ebp)
  1011d6:	5b                   	pop    %ebx
  1011d7:	5d                   	pop    %ebp
  1011d8:	e9 d3 00 00 00       	jmp    1012b0 <memcpy>
  1011dd:	8d 76 00             	lea    0x0(%esi),%esi

001011e0 <ramdisk_write>:
  1011e0:	55                   	push   %ebp
  1011e1:	89 e5                	mov    %esp,%ebp
  1011e3:	53                   	push   %ebx
  1011e4:	8b 55 0c             	mov    0xc(%ebp),%edx
  1011e7:	8b 4d 10             	mov    0x10(%ebp),%ecx
  1011ea:	8b 5d 08             	mov    0x8(%ebp),%ebx
  1011ed:	8d 04 0a             	lea    (%edx,%ecx,1),%eax
  1011f0:	3d ff ff 09 00       	cmp    $0x9ffff,%eax
  1011f5:	76 06                	jbe    1011fd <ramdisk_write+0x1d>
  1011f7:	b8 01 00 00 00       	mov    $0x1,%eax
  1011fc:	d6                   	(bad)  
  1011fd:	89 5d 0c             	mov    %ebx,0xc(%ebp)
  101200:	89 4d 10             	mov    %ecx,0x10(%ebp)
  101203:	89 55 08             	mov    %edx,0x8(%ebp)
  101206:	5b                   	pop    %ebx
  101207:	5d                   	pop    %ebp
  101208:	e9 a3 00 00 00       	jmp    1012b0 <memcpy>
  10120d:	66 90                	xchg   %ax,%ax
  10120f:	90                   	nop

00101210 <sbrk>:
  101210:	55                   	push   %ebp
  101211:	89 e5                	mov    %esp,%ebp
  101213:	83 ec 08             	sub    $0x8,%esp
  101216:	68 99 17 10 00       	push   $0x101799
  10121b:	6a 08                	push   $0x8
  10121d:	68 83 17 10 00       	push   $0x101783
  101222:	68 00 17 10 00       	push   $0x101700
  101227:	e8 14 00 00 00       	call   101240 <printk>
  10122c:	b8 01 00 00 00       	mov    $0x1,%eax
  101231:	d6                   	(bad)  
  101232:	30 c0                	xor    %al,%al
  101234:	c9                   	leave  
  101235:	c3                   	ret    
  101236:	66 90                	xchg   %ax,%ax
  101238:	66 90                	xchg   %ax,%ax
  10123a:	66 90                	xchg   %ax,%ax
  10123c:	66 90                	xchg   %ax,%ax
  10123e:	66 90                	xchg   %ax,%ax

00101240 <printk>:
  101240:	55                   	push   %ebp
  101241:	89 e5                	mov    %esp,%ebp
  101243:	5d                   	pop    %ebp
  101244:	c3                   	ret    
  101245:	66 90                	xchg   %ax,%ax
  101247:	66 90                	xchg   %ax,%ax
  101249:	66 90                	xchg   %ax,%ax
  10124b:	66 90                	xchg   %ax,%ax
  10124d:	66 90                	xchg   %ax,%ax
  10124f:	90                   	nop

00101250 <init_serial>:
  101250:	55                   	push   %ebp
  101251:	ba f9 03 00 00       	mov    $0x3f9,%edx
  101256:	31 c0                	xor    %eax,%eax
  101258:	89 e5                	mov    %esp,%ebp
  10125a:	ee                   	out    %al,(%dx)
  10125b:	b8 80 ff ff ff       	mov    $0xffffff80,%eax
  101260:	b2 fb                	mov    $0xfb,%dl
  101262:	ee                   	out    %al,(%dx)
  101263:	b8 01 00 00 00       	mov    $0x1,%eax
  101268:	b2 f8                	mov    $0xf8,%dl
  10126a:	ee                   	out    %al,(%dx)
  10126b:	31 c0                	xor    %eax,%eax
  10126d:	b2 f9                	mov    $0xf9,%dl
  10126f:	ee                   	out    %al,(%dx)
  101270:	b8 03 00 00 00       	mov    $0x3,%eax
  101275:	b2 fb                	mov    $0xfb,%dl
  101277:	ee                   	out    %al,(%dx)
  101278:	b8 c7 ff ff ff       	mov    $0xffffffc7,%eax
  10127d:	b2 fa                	mov    $0xfa,%dl
  10127f:	ee                   	out    %al,(%dx)
  101280:	b8 0b 00 00 00       	mov    $0xb,%eax
  101285:	b2 fc                	mov    $0xfc,%dl
  101287:	ee                   	out    %al,(%dx)
  101288:	5d                   	pop    %ebp
  101289:	c3                   	ret    
  10128a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00101290 <serial_printc>:
  101290:	55                   	push   %ebp
  101291:	ba fd 03 00 00       	mov    $0x3fd,%edx
  101296:	89 e5                	mov    %esp,%ebp
  101298:	8b 4d 08             	mov    0x8(%ebp),%ecx
  10129b:	90                   	nop
  10129c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  1012a0:	ec                   	in     (%dx),%al
  1012a1:	a8 20                	test   $0x20,%al
  1012a3:	74 fb                	je     1012a0 <serial_printc+0x10>
  1012a5:	ba f8 03 00 00       	mov    $0x3f8,%edx
  1012aa:	89 c8                	mov    %ecx,%eax
  1012ac:	ee                   	out    %al,(%dx)
  1012ad:	5d                   	pop    %ebp
  1012ae:	c3                   	ret    
  1012af:	90                   	nop

001012b0 <memcpy>:
  1012b0:	55                   	push   %ebp
  1012b1:	89 e5                	mov    %esp,%ebp
  1012b3:	56                   	push   %esi
  1012b4:	57                   	push   %edi
  1012b5:	53                   	push   %ebx
  1012b6:	8b 7d 08             	mov    0x8(%ebp),%edi
  1012b9:	8b 4d 10             	mov    0x10(%ebp),%ecx
  1012bc:	8b 75 0c             	mov    0xc(%ebp),%esi
  1012bf:	fc                   	cld    
  1012c0:	83 f9 08             	cmp    $0x8,%ecx
  1012c3:	76 26                	jbe    1012eb <memcpy+0x3b>
  1012c5:	89 fa                	mov    %edi,%edx
  1012c7:	89 cb                	mov    %ecx,%ebx
  1012c9:	83 e2 03             	and    $0x3,%edx
  1012cc:	74 10                	je     1012de <memcpy+0x2e>
  1012ce:	b9 04 00 00 00       	mov    $0x4,%ecx
  1012d3:	29 d1                	sub    %edx,%ecx
  1012d5:	83 e1 03             	and    $0x3,%ecx
  1012d8:	29 cb                	sub    %ecx,%ebx
  1012da:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
  1012dc:	89 d9                	mov    %ebx,%ecx
  1012de:	c1 e9 02             	shr    $0x2,%ecx
  1012e1:	8d 76 00             	lea    0x0(%esi),%esi
  1012e4:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
  1012e6:	89 d9                	mov    %ebx,%ecx
  1012e8:	83 e1 03             	and    $0x3,%ecx
  1012eb:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
  1012ed:	8b 45 08             	mov    0x8(%ebp),%eax
  1012f0:	8d 65 f4             	lea    -0xc(%ebp),%esp
  1012f3:	5b                   	pop    %ebx
  1012f4:	5f                   	pop    %edi
  1012f5:	5e                   	pop    %esi
  1012f6:	c9                   	leave  
  1012f7:	c3                   	ret    

001012f8 <memset>:
  1012f8:	55                   	push   %ebp
  1012f9:	89 e5                	mov    %esp,%ebp
  1012fb:	57                   	push   %edi
  1012fc:	8b 7d 08             	mov    0x8(%ebp),%edi
  1012ff:	0f b6 45 0c          	movzbl 0xc(%ebp),%eax
  101303:	8b 4d 10             	mov    0x10(%ebp),%ecx
  101306:	fc                   	cld    
  101307:	83 f9 10             	cmp    $0x10,%ecx
  10130a:	76 69                	jbe    101375 <memset+0x7d>
  10130c:	f7 c7 07 00 00 00    	test   $0x7,%edi
  101312:	74 4c                	je     101360 <memset+0x68>
  101314:	88 07                	mov    %al,(%edi)
  101316:	47                   	inc    %edi
  101317:	49                   	dec    %ecx
  101318:	f7 c7 07 00 00 00    	test   $0x7,%edi
  10131e:	74 40                	je     101360 <memset+0x68>
  101320:	88 07                	mov    %al,(%edi)
  101322:	47                   	inc    %edi
  101323:	49                   	dec    %ecx
  101324:	f7 c7 07 00 00 00    	test   $0x7,%edi
  10132a:	74 34                	je     101360 <memset+0x68>
  10132c:	88 07                	mov    %al,(%edi)
  10132e:	47                   	inc    %edi
  10132f:	49                   	dec    %ecx
  101330:	f7 c7 07 00 00 00    	test   $0x7,%edi
  101336:	74 28                	je     101360 <memset+0x68>
  101338:	88 07                	mov    %al,(%edi)
  10133a:	47                   	inc    %edi
  10133b:	49                   	dec    %ecx
  10133c:	f7 c7 07 00 00 00    	test   $0x7,%edi
  101342:	74 1c                	je     101360 <memset+0x68>
  101344:	88 07                	mov    %al,(%edi)
  101346:	47                   	inc    %edi
  101347:	49                   	dec    %ecx
  101348:	f7 c7 07 00 00 00    	test   $0x7,%edi
  10134e:	74 10                	je     101360 <memset+0x68>
  101350:	88 07                	mov    %al,(%edi)
  101352:	47                   	inc    %edi
  101353:	49                   	dec    %ecx
  101354:	f7 c7 07 00 00 00    	test   $0x7,%edi
  10135a:	74 04                	je     101360 <memset+0x68>
  10135c:	88 07                	mov    %al,(%edi)
  10135e:	47                   	inc    %edi
  10135f:	49                   	dec    %ecx
  101360:	88 c4                	mov    %al,%ah
  101362:	89 c2                	mov    %eax,%edx
  101364:	c1 e2 10             	shl    $0x10,%edx
  101367:	09 d0                	or     %edx,%eax
  101369:	89 ca                	mov    %ecx,%edx
  10136b:	c1 e9 02             	shr    $0x2,%ecx
  10136e:	83 e2 03             	and    $0x3,%edx
  101371:	f3 ab                	rep stos %eax,%es:(%edi)
  101373:	89 d1                	mov    %edx,%ecx
  101375:	f3 aa                	rep stos %al,%es:(%edi)
  101377:	8b 45 08             	mov    0x8(%ebp),%eax
  10137a:	8d 65 fc             	lea    -0x4(%ebp),%esp
  10137d:	5f                   	pop    %edi
  10137e:	c9                   	leave  
  10137f:	c3                   	ret    
