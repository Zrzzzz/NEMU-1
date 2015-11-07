
kernel:     file format elf32-i386


Disassembly of section .text:

c0100000 <start>:
c0100000:	0f 01 15 48 00 10 00 	lgdtl  0x100048
c0100007:	0f 20 c0             	mov    %cr0,%eax
c010000a:	83 c8 01             	or     $0x1,%eax
c010000d:	0f 22 c0             	mov    %eax,%cr0
c0100010:	ea 17 00 10 00 08 00 	ljmp   $0x8,$0x100017

c0100017 <start_cond>:
c0100017:	66 b8 10 00          	mov    $0x10,%ax
c010001b:	8e d8                	mov    %eax,%ds
c010001d:	8e c0                	mov    %eax,%es
c010001f:	8e d0                	mov    %eax,%ss
c0100021:	bd 00 00 00 00       	mov    $0x0,%ebp
c0100026:	bc 00 00 00 08       	mov    $0x8000000,%esp
c010002b:	e9 60 0e 00 00       	jmp    c0100e90 <init>

c0100030 <gdt>:
	...
c0100038:	ff                   	(bad)  
c0100039:	ff 00                	incl   (%eax)
c010003b:	00 00                	add    %al,(%eax)
c010003d:	9a cf 00 ff ff 00 00 	lcall  $0x0,$0xffff00cf
c0100044:	00 92 cf 00 17 00    	add    %dl,0x1700cf(%edx)

c0100048 <gdtdesc>:
c0100048:	17                   	pop    %ss
c0100049:	00 30                	add    %dh,(%eax)
c010004b:	00 10                	add    %dl,(%eax)
c010004d:	00 66 90             	add    %ah,-0x70(%esi)

c0100050 <mm_malloc>:
c0100050:	55                   	push   %ebp
c0100051:	31 c0                	xor    %eax,%eax
c0100053:	89 e5                	mov    %esp,%ebp
c0100055:	57                   	push   %edi
c0100056:	56                   	push   %esi
c0100057:	53                   	push   %ebx
c0100058:	83 ec 3c             	sub    $0x3c,%esp
c010005b:	8b 5d 0c             	mov    0xc(%ebp),%ebx
c010005e:	85 db                	test   %ebx,%ebx
c0100060:	0f 8e 36 02 00 00    	jle    c010029c <mm_malloc+0x24c>
c0100066:	e8 85 04 00 00       	call   c01004f0 <get_updir>
c010006b:	89 c6                	mov    %eax,%esi
c010006d:	e8 8e 04 00 00       	call   c0100500 <get_ucr3>
c0100072:	8b 55 08             	mov    0x8(%ebp),%edx
c0100075:	8d 5c 1a ff          	lea    -0x1(%edx,%ebx,1),%ebx
c0100079:	89 5d e0             	mov    %ebx,-0x20(%ebp)
c010007c:	89 45 dc             	mov    %eax,-0x24(%ebp)
c010007f:	b8 00 10 00 00       	mov    $0x1000,%eax
c0100084:	29 d0                	sub    %edx,%eax
c0100086:	89 da                	mov    %ebx,%edx
c0100088:	81 e2 00 f0 ff ff    	and    $0xfffff000,%edx
c010008e:	01 d0                	add    %edx,%eax
c0100090:	85 c0                	test   %eax,%eax
c0100092:	0f 8e c0 00 00 00    	jle    c0100158 <mm_malloc+0x108>
c0100098:	8b 55 08             	mov    0x8(%ebp),%edx
c010009b:	83 e8 01             	sub    $0x1,%eax
c010009e:	89 f7                	mov    %esi,%edi
c01000a0:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c01000a5:	8d 84 02 00 10 00 00 	lea    0x1000(%edx,%eax,1),%eax
c01000ac:	89 d3                	mov    %edx,%ebx
c01000ae:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c01000b1:	eb 51                	jmp    c0100104 <mm_malloc+0xb4>
c01000b3:	90                   	nop
c01000b4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c01000b8:	8b 31                	mov    (%ecx),%esi
c01000ba:	81 e6 00 f0 ff ff    	and    $0xfffff000,%esi
c01000c0:	81 ee 00 00 00 40    	sub    $0x40000000,%esi
c01000c6:	89 d8                	mov    %ebx,%eax
c01000c8:	c1 e8 0a             	shr    $0xa,%eax
c01000cb:	25 fc 0f 00 00       	and    $0xffc,%eax
c01000d0:	01 c6                	add    %eax,%esi
c01000d2:	f6 06 01             	testb  $0x1,(%esi)
c01000d5:	75 22                	jne    c01000f9 <mm_malloc+0xa9>
c01000d7:	a1 c0 a4 10 c0       	mov    0xc010a4c0,%eax
c01000dc:	3d ff 7f 00 00       	cmp    $0x7fff,%eax
c01000e1:	0f 8f c1 01 00 00    	jg     c01002a8 <mm_malloc+0x258>
c01000e7:	89 c1                	mov    %eax,%ecx
c01000e9:	83 c0 01             	add    $0x1,%eax
c01000ec:	c1 e1 0c             	shl    $0xc,%ecx
c01000ef:	83 c9 07             	or     $0x7,%ecx
c01000f2:	89 0e                	mov    %ecx,(%esi)
c01000f4:	a3 c0 a4 10 c0       	mov    %eax,0xc010a4c0
c01000f9:	81 c3 00 10 00 00    	add    $0x1000,%ebx
c01000ff:	3b 5d e4             	cmp    -0x1c(%ebp),%ebx
c0100102:	74 54                	je     c0100158 <mm_malloc+0x108>
c0100104:	89 d8                	mov    %ebx,%eax
c0100106:	c1 e8 16             	shr    $0x16,%eax
c0100109:	8d 0c 87             	lea    (%edi,%eax,4),%ecx
c010010c:	f6 01 01             	testb  $0x1,(%ecx)
c010010f:	75 a7                	jne    c01000b8 <mm_malloc+0x68>
c0100111:	a1 00 b0 10 c0       	mov    0xc010b000,%eax
c0100116:	89 c6                	mov    %eax,%esi
c0100118:	83 c0 01             	add    $0x1,%eax
c010011b:	c1 e6 0c             	shl    $0xc,%esi
c010011e:	81 c6 00 c0 10 c0    	add    $0xc010c000,%esi
c0100124:	a3 00 b0 10 c0       	mov    %eax,0xc010b000
c0100129:	8d 86 00 00 00 40    	lea    0x40000000(%esi),%eax
c010012f:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0100134:	83 c8 07             	or     $0x7,%eax
c0100137:	89 01                	mov    %eax,(%ecx)
c0100139:	c7 44 24 08 00 10 00 	movl   $0x1000,0x8(%esp)
c0100140:	00 
c0100141:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c0100148:	00 
c0100149:	89 34 24             	mov    %esi,(%esp)
c010014c:	e8 f7 12 00 00       	call   c0101448 <memset>
c0100151:	e9 70 ff ff ff       	jmp    c01000c6 <mm_malloc+0x76>
c0100156:	66 90                	xchg   %ax,%ax
c0100158:	8b 5d dc             	mov    -0x24(%ebp),%ebx
c010015b:	8b 45 e0             	mov    -0x20(%ebp),%eax
c010015e:	81 eb 00 00 00 40    	sub    $0x40000000,%ebx
c0100164:	81 e3 00 f0 ff ff    	and    $0xfffff000,%ebx
c010016a:	c1 e8 16             	shr    $0x16,%eax
c010016d:	8b 34 83             	mov    (%ebx,%eax,4),%esi
c0100170:	f7 c6 01 00 00 00    	test   $0x1,%esi
c0100176:	75 32                	jne    c01001aa <mm_malloc+0x15a>
c0100178:	c7 44 24 10 e4 7c 10 	movl   $0xc0107ce4,0x10(%esp)
c010017f:	c0 
c0100180:	c7 44 24 0c 48 7d 10 	movl   $0xc0107d48,0xc(%esp)
c0100187:	c0 
c0100188:	c7 44 24 08 11 00 00 	movl   $0x11,0x8(%esp)
c010018f:	00 
c0100190:	c7 44 24 04 d3 7c 10 	movl   $0xc0107cd3,0x4(%esp)
c0100197:	c0 
c0100198:	c7 04 24 f4 7c 10 c0 	movl   $0xc0107cf4,(%esp)
c010019f:	e8 9c 11 00 00       	call   c0101340 <printk>
c01001a4:	b8 01 00 00 00       	mov    $0x1,%eax
c01001a9:	d6                   	(bad)  
c01001aa:	8b 55 e0             	mov    -0x20(%ebp),%edx
c01001ad:	8d 86 00 00 00 c0    	lea    -0x40000000(%esi),%eax
c01001b3:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c01001b8:	c1 ea 0c             	shr    $0xc,%edx
c01001bb:	81 e2 ff 03 00 00    	and    $0x3ff,%edx
c01001c1:	f6 04 90 01          	testb  $0x1,(%eax,%edx,4)
c01001c5:	75 32                	jne    c01001f9 <mm_malloc+0x1a9>
c01001c7:	c7 44 24 10 ec 7c 10 	movl   $0xc0107cec,0x10(%esp)
c01001ce:	c0 
c01001cf:	c7 44 24 0c 48 7d 10 	movl   $0xc0107d48,0xc(%esp)
c01001d6:	c0 
c01001d7:	c7 44 24 08 13 00 00 	movl   $0x13,0x8(%esp)
c01001de:	00 
c01001df:	c7 44 24 04 d3 7c 10 	movl   $0xc0107cd3,0x4(%esp)
c01001e6:	c0 
c01001e7:	c7 04 24 f4 7c 10 c0 	movl   $0xc0107cf4,(%esp)
c01001ee:	e8 4d 11 00 00       	call   c0101340 <printk>
c01001f3:	b8 01 00 00 00       	mov    $0x1,%eax
c01001f8:	d6                   	(bad)  
c01001f9:	8b 45 08             	mov    0x8(%ebp),%eax
c01001fc:	c1 e8 16             	shr    $0x16,%eax
c01001ff:	8b 1c 83             	mov    (%ebx,%eax,4),%ebx
c0100202:	f6 c3 01             	test   $0x1,%bl
c0100205:	75 32                	jne    c0100239 <mm_malloc+0x1e9>
c0100207:	c7 44 24 10 e4 7c 10 	movl   $0xc0107ce4,0x10(%esp)
c010020e:	c0 
c010020f:	c7 44 24 0c 48 7d 10 	movl   $0xc0107d48,0xc(%esp)
c0100216:	c0 
c0100217:	c7 44 24 08 11 00 00 	movl   $0x11,0x8(%esp)
c010021e:	00 
c010021f:	c7 44 24 04 d3 7c 10 	movl   $0xc0107cd3,0x4(%esp)
c0100226:	c0 
c0100227:	c7 04 24 f4 7c 10 c0 	movl   $0xc0107cf4,(%esp)
c010022e:	e8 0d 11 00 00       	call   c0101340 <printk>
c0100233:	b8 01 00 00 00       	mov    $0x1,%eax
c0100238:	d6                   	(bad)  
c0100239:	8b 55 08             	mov    0x8(%ebp),%edx
c010023c:	8d 83 00 00 00 c0    	lea    -0x40000000(%ebx),%eax
c0100242:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0100247:	c1 ea 0c             	shr    $0xc,%edx
c010024a:	81 e2 ff 03 00 00    	and    $0x3ff,%edx
c0100250:	8b 1c 90             	mov    (%eax,%edx,4),%ebx
c0100253:	f6 c3 01             	test   $0x1,%bl
c0100256:	75 32                	jne    c010028a <mm_malloc+0x23a>
c0100258:	c7 44 24 10 ec 7c 10 	movl   $0xc0107cec,0x10(%esp)
c010025f:	c0 
c0100260:	c7 44 24 0c 48 7d 10 	movl   $0xc0107d48,0xc(%esp)
c0100267:	c0 
c0100268:	c7 44 24 08 13 00 00 	movl   $0x13,0x8(%esp)
c010026f:	00 
c0100270:	c7 44 24 04 d3 7c 10 	movl   $0xc0107cd3,0x4(%esp)
c0100277:	c0 
c0100278:	c7 04 24 f4 7c 10 c0 	movl   $0xc0107cf4,(%esp)
c010027f:	e8 bc 10 00 00       	call   c0101340 <printk>
c0100284:	b8 01 00 00 00       	mov    $0x1,%eax
c0100289:	d6                   	(bad)  
c010028a:	8b 55 08             	mov    0x8(%ebp),%edx
c010028d:	89 d8                	mov    %ebx,%eax
c010028f:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0100294:	81 e2 ff 0f 00 00    	and    $0xfff,%edx
c010029a:	09 d0                	or     %edx,%eax
c010029c:	83 c4 3c             	add    $0x3c,%esp
c010029f:	5b                   	pop    %ebx
c01002a0:	5e                   	pop    %esi
c01002a1:	5f                   	pop    %edi
c01002a2:	5d                   	pop    %ebp
c01002a3:	c3                   	ret    
c01002a4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c01002a8:	c7 44 24 10 c0 7c 10 	movl   $0xc0107cc0,0x10(%esp)
c01002af:	c0 
c01002b0:	c7 44 24 0c 3e 7d 10 	movl   $0xc0107d3e,0xc(%esp)
c01002b7:	c0 
c01002b8:	c7 44 24 08 31 00 00 	movl   $0x31,0x8(%esp)
c01002bf:	00 
c01002c0:	c7 44 24 04 d3 7c 10 	movl   $0xc0107cd3,0x4(%esp)
c01002c7:	c0 
c01002c8:	c7 04 24 f4 7c 10 c0 	movl   $0xc0107cf4,(%esp)
c01002cf:	e8 6c 10 00 00       	call   c0101340 <printk>
c01002d4:	b8 01 00 00 00       	mov    $0x1,%eax
c01002d9:	d6                   	(bad)  
c01002da:	a1 c0 a4 10 c0       	mov    0xc010a4c0,%eax
c01002df:	e9 03 fe ff ff       	jmp    c01000e7 <mm_malloc+0x97>

c01002e4 <vec0>:
c01002e4:	6a 00                	push   $0x0
c01002e6:	6a 00                	push   $0x0
c01002e8:	e9 ab 00 00 00       	jmp    c0100398 <asm_do_irq>

c01002ed <vec1>:
c01002ed:	6a 00                	push   $0x0
c01002ef:	6a 01                	push   $0x1
c01002f1:	e9 a2 00 00 00       	jmp    c0100398 <asm_do_irq>

c01002f6 <vec2>:
c01002f6:	6a 00                	push   $0x0
c01002f8:	6a 02                	push   $0x2
c01002fa:	e9 99 00 00 00       	jmp    c0100398 <asm_do_irq>

c01002ff <vec3>:
c01002ff:	6a 00                	push   $0x0
c0100301:	6a 03                	push   $0x3
c0100303:	e9 90 00 00 00       	jmp    c0100398 <asm_do_irq>

c0100308 <vec4>:
c0100308:	6a 00                	push   $0x0
c010030a:	6a 04                	push   $0x4
c010030c:	e9 87 00 00 00       	jmp    c0100398 <asm_do_irq>

c0100311 <vec5>:
c0100311:	6a 00                	push   $0x0
c0100313:	6a 05                	push   $0x5
c0100315:	e9 7e 00 00 00       	jmp    c0100398 <asm_do_irq>

c010031a <vec6>:
c010031a:	6a 00                	push   $0x0
c010031c:	6a 06                	push   $0x6
c010031e:	e9 75 00 00 00       	jmp    c0100398 <asm_do_irq>

c0100323 <vec7>:
c0100323:	6a 00                	push   $0x0
c0100325:	6a 07                	push   $0x7
c0100327:	e9 6c 00 00 00       	jmp    c0100398 <asm_do_irq>

c010032c <vec8>:
c010032c:	6a 08                	push   $0x8
c010032e:	e9 65 00 00 00       	jmp    c0100398 <asm_do_irq>

c0100333 <vec9>:
c0100333:	6a 00                	push   $0x0
c0100335:	6a 09                	push   $0x9
c0100337:	e9 5c 00 00 00       	jmp    c0100398 <asm_do_irq>

c010033c <vec10>:
c010033c:	6a 0a                	push   $0xa
c010033e:	e9 55 00 00 00       	jmp    c0100398 <asm_do_irq>

c0100343 <vec11>:
c0100343:	6a 0b                	push   $0xb
c0100345:	e9 4e 00 00 00       	jmp    c0100398 <asm_do_irq>

c010034a <vec12>:
c010034a:	6a 0c                	push   $0xc
c010034c:	e9 47 00 00 00       	jmp    c0100398 <asm_do_irq>

c0100351 <vec13>:
c0100351:	6a 0d                	push   $0xd
c0100353:	e9 40 00 00 00       	jmp    c0100398 <asm_do_irq>

c0100358 <vec14>:
c0100358:	6a 0e                	push   $0xe
c010035a:	e9 39 00 00 00       	jmp    c0100398 <asm_do_irq>

c010035f <vecsys>:
c010035f:	6a 00                	push   $0x0
c0100361:	68 80 00 00 00       	push   $0x80
c0100366:	e9 2d 00 00 00       	jmp    c0100398 <asm_do_irq>

c010036b <irq0>:
c010036b:	6a 00                	push   $0x0
c010036d:	68 e8 03 00 00       	push   $0x3e8
c0100372:	e9 21 00 00 00       	jmp    c0100398 <asm_do_irq>

c0100377 <irq1>:
c0100377:	6a 00                	push   $0x0
c0100379:	68 e9 03 00 00       	push   $0x3e9
c010037e:	e9 15 00 00 00       	jmp    c0100398 <asm_do_irq>

c0100383 <irq14>:
c0100383:	6a 00                	push   $0x0
c0100385:	68 f6 03 00 00       	push   $0x3f6
c010038a:	e9 09 00 00 00       	jmp    c0100398 <asm_do_irq>

c010038f <irq_empty>:
c010038f:	6a 00                	push   $0x0
c0100391:	6a ff                	push   $0xffffffff
c0100393:	e9 00 00 00 00       	jmp    c0100398 <asm_do_irq>

c0100398 <asm_do_irq>:
c0100398:	60                   	pusha  
c0100399:	54                   	push   %esp
c010039a:	e8 81 03 00 00       	call   c0100720 <irq_handle>
c010039f:	83 c4 04             	add    $0x4,%esp
c01003a2:	61                   	popa   
c01003a3:	83 c4 08             	add    $0x8,%esp
c01003a6:	cf                   	iret   
c01003a7:	66 90                	xchg   %ax,%ax
c01003a9:	66 90                	xchg   %ax,%ax
c01003ab:	66 90                	xchg   %ax,%ax
c01003ad:	66 90                	xchg   %ax,%ax
c01003af:	90                   	nop

c01003b0 <get_kpdir>:
c01003b0:	55                   	push   %ebp
c01003b1:	b8 00 d0 14 c0       	mov    $0xc014d000,%eax
c01003b6:	89 e5                	mov    %esp,%ebp
c01003b8:	5d                   	pop    %ebp
c01003b9:	c3                   	ret    
c01003ba:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

c01003c0 <init_page>:
c01003c0:	55                   	push   %ebp
c01003c1:	89 e5                	mov    %esp,%ebp
c01003c3:	57                   	push   %edi
c01003c4:	83 ec 08             	sub    $0x8,%esp
c01003c7:	68 00 10 00 00       	push   $0x1000
c01003cc:	6a 00                	push   $0x0
c01003ce:	68 00 d0 14 00       	push   $0x14d000
c01003d3:	e8 70 10 00 00       	call   c0101448 <memset>
c01003d8:	b9 00 d0 14 00       	mov    $0x14d000,%ecx
c01003dd:	83 c4 10             	add    $0x10,%esp
c01003e0:	ba 00 d0 12 00       	mov    $0x12d000,%edx
c01003e5:	8d 76 00             	lea    0x0(%esi),%esi
c01003e8:	89 d0                	mov    %edx,%eax
c01003ea:	81 c2 00 10 00 00    	add    $0x1000,%edx
c01003f0:	83 c1 04             	add    $0x4,%ecx
c01003f3:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c01003f8:	83 c8 07             	or     $0x7,%eax
c01003fb:	89 41 fc             	mov    %eax,-0x4(%ecx)
c01003fe:	89 81 fc 0b 00 00    	mov    %eax,0xbfc(%ecx)
c0100404:	81 fa 00 d0 14 00    	cmp    $0x14d000,%edx
c010040a:	75 dc                	jne    c01003e8 <init_page+0x28>
c010040c:	bf fc cf 14 00       	mov    $0x14cffc,%edi
c0100411:	b8 07 f0 ff 07       	mov    $0x7fff007,%eax
c0100416:	fd                   	std    
c0100417:	ab                   	stos   %eax,%es:(%edi)
c0100418:	2d 00 10 00 00       	sub    $0x1000,%eax
c010041d:	7d f8                	jge    c0100417 <init_page+0x57>
c010041f:	b8 00 d0 14 00       	mov    $0x14d000,%eax
c0100424:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0100429:	0f 22 d8             	mov    %eax,%cr3
c010042c:	0f 20 c0             	mov    %cr0,%eax
c010042f:	0d 00 00 00 80       	or     $0x80000000,%eax
c0100434:	0f 22 c0             	mov    %eax,%cr0
c0100437:	8b 7d fc             	mov    -0x4(%ebp),%edi
c010043a:	c9                   	leave  
c010043b:	c3                   	ret    
c010043c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

c0100440 <init_segment>:
c0100440:	55                   	push   %ebp
c0100441:	89 e5                	mov    %esp,%ebp
c0100443:	83 ec 0c             	sub    $0xc,%esp
c0100446:	6a 18                	push   $0x18
c0100448:	6a 00                	push   $0x0
c010044a:	68 08 c0 12 c0       	push   $0xc012c008
c010044f:	e8 f4 0f 00 00       	call   c0101448 <memset>
c0100454:	ba ff ff ff ff       	mov    $0xffffffff,%edx
c0100459:	31 c9                	xor    %ecx,%ecx
c010045b:	b8 08 c0 12 c0       	mov    $0xc012c008,%eax
c0100460:	66 89 15 10 c0 12 c0 	mov    %dx,0xc012c010
c0100467:	ba ff ff ff ff       	mov    $0xffffffff,%edx
c010046c:	66 89 0d 12 c0 12 c0 	mov    %cx,0xc012c012
c0100473:	66 89 15 18 c0 12 c0 	mov    %dx,0xc012c018
c010047a:	ba 17 00 00 00       	mov    $0x17,%edx
c010047f:	31 c9                	xor    %ecx,%ecx
c0100481:	66 89 15 00 c0 12 c0 	mov    %dx,0xc012c000
c0100488:	66 a3 02 c0 12 c0    	mov    %ax,0xc012c002
c010048e:	c1 e8 10             	shr    $0x10,%eax
c0100491:	66 a3 04 c0 12 c0    	mov    %ax,0xc012c004
c0100497:	c6 05 14 c0 12 c0 00 	movb   $0x0,0xc012c014
c010049e:	b8 00 c0 12 c0       	mov    $0xc012c000,%eax
c01004a3:	c6 05 15 c0 12 c0 9a 	movb   $0x9a,0xc012c015
c01004aa:	c6 05 16 c0 12 c0 cf 	movb   $0xcf,0xc012c016
c01004b1:	c6 05 17 c0 12 c0 00 	movb   $0x0,0xc012c017
c01004b8:	66 89 0d 1a c0 12 c0 	mov    %cx,0xc012c01a
c01004bf:	c6 05 1c c0 12 c0 00 	movb   $0x0,0xc012c01c
c01004c6:	c6 05 1d c0 12 c0 92 	movb   $0x92,0xc012c01d
c01004cd:	c6 05 1e c0 12 c0 cf 	movb   $0xcf,0xc012c01e
c01004d4:	c6 05 1f c0 12 c0 00 	movb   $0x0,0xc012c01f
c01004db:	0f 01 10             	lgdtl  (%eax)
c01004de:	83 c4 10             	add    $0x10,%esp
c01004e1:	c9                   	leave  
c01004e2:	c3                   	ret    
c01004e3:	66 90                	xchg   %ax,%ax
c01004e5:	66 90                	xchg   %ax,%ax
c01004e7:	66 90                	xchg   %ax,%ax
c01004e9:	66 90                	xchg   %ax,%ax
c01004eb:	66 90                	xchg   %ax,%ax
c01004ed:	66 90                	xchg   %ax,%ax
c01004ef:	90                   	nop

c01004f0 <get_updir>:
c01004f0:	55                   	push   %ebp
c01004f1:	b8 00 f0 14 c0       	mov    $0xc014f000,%eax
c01004f6:	89 e5                	mov    %esp,%ebp
c01004f8:	5d                   	pop    %ebp
c01004f9:	c3                   	ret    
c01004fa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

c0100500 <get_ucr3>:
c0100500:	55                   	push   %ebp
c0100501:	a1 04 e0 14 c0       	mov    0xc014e004,%eax
c0100506:	89 e5                	mov    %esp,%ebp
c0100508:	5d                   	pop    %ebp
c0100509:	c3                   	ret    
c010050a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

c0100510 <mm_brk>:
c0100510:	55                   	push   %ebp
c0100511:	89 e5                	mov    %esp,%ebp
c0100513:	53                   	push   %ebx
c0100514:	83 ec 04             	sub    $0x4,%esp
c0100517:	8b 5d 08             	mov    0x8(%ebp),%ebx
c010051a:	a1 00 e0 14 c0       	mov    0xc014e000,%eax
c010051f:	39 d8                	cmp    %ebx,%eax
c0100521:	73 11                	jae    c0100534 <mm_brk+0x24>
c0100523:	89 da                	mov    %ebx,%edx
c0100525:	83 ec 08             	sub    $0x8,%esp
c0100528:	29 c2                	sub    %eax,%edx
c010052a:	52                   	push   %edx
c010052b:	50                   	push   %eax
c010052c:	e8 1f fb ff ff       	call   c0100050 <mm_malloc>
c0100531:	83 c4 10             	add    $0x10,%esp
c0100534:	89 1d 00 e0 14 c0    	mov    %ebx,0xc014e000
c010053a:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c010053d:	c9                   	leave  
c010053e:	c3                   	ret    
c010053f:	90                   	nop

c0100540 <init_mm>:
c0100540:	55                   	push   %ebp
c0100541:	89 e5                	mov    %esp,%ebp
c0100543:	53                   	push   %ebx
c0100544:	83 ec 04             	sub    $0x4,%esp
c0100547:	e8 64 fe ff ff       	call   c01003b0 <get_kpdir>
c010054c:	83 ec 04             	sub    $0x4,%esp
c010054f:	89 c3                	mov    %eax,%ebx
c0100551:	68 00 10 00 00       	push   $0x1000
c0100556:	6a 00                	push   $0x0
c0100558:	81 c3 00 0c 00 00    	add    $0xc00,%ebx
c010055e:	68 00 f0 14 c0       	push   $0xc014f000
c0100563:	e8 e0 0e 00 00       	call   c0101448 <memset>
c0100568:	83 c4 0c             	add    $0xc,%esp
c010056b:	68 80 00 00 00       	push   $0x80
c0100570:	53                   	push   %ebx
c0100571:	68 00 fc 14 c0       	push   $0xc014fc00
c0100576:	e8 85 0e 00 00       	call   c0101400 <memcpy>
c010057b:	b8 00 f0 14 00       	mov    $0x14f000,%eax
c0100580:	83 c4 10             	add    $0x10,%esp
c0100583:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0100586:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c010058b:	a3 04 e0 14 c0       	mov    %eax,0xc014e004
c0100590:	c9                   	leave  
c0100591:	c3                   	ret    
c0100592:	66 90                	xchg   %ax,%ax
c0100594:	66 90                	xchg   %ax,%ax
c0100596:	66 90                	xchg   %ax,%ax
c0100598:	66 90                	xchg   %ax,%ax
c010059a:	66 90                	xchg   %ax,%ax
c010059c:	66 90                	xchg   %ax,%ax
c010059e:	66 90                	xchg   %ax,%ax

c01005a0 <create_video_mapping>:
c01005a0:	55                   	push   %ebp
c01005a1:	89 e5                	mov    %esp,%ebp
c01005a3:	83 ec 08             	sub    $0x8,%esp
c01005a6:	e8 45 ff ff ff       	call   c01004f0 <get_updir>
c01005ab:	ba 00 00 15 00       	mov    $0x150000,%edx
c01005b0:	81 e2 00 f0 ff ff    	and    $0xfffff000,%edx
c01005b6:	83 ca 07             	or     $0x7,%edx
c01005b9:	89 10                	mov    %edx,(%eax)
c01005bb:	b8 a0 00 00 00       	mov    $0xa0,%eax
c01005c0:	89 c2                	mov    %eax,%edx
c01005c2:	c1 e2 0c             	shl    $0xc,%edx
c01005c5:	83 ca 07             	or     $0x7,%edx
c01005c8:	89 14 85 00 00 15 c0 	mov    %edx,-0x3feb0000(,%eax,4)
c01005cf:	83 c0 01             	add    $0x1,%eax
c01005d2:	3d b0 00 00 00       	cmp    $0xb0,%eax
c01005d7:	75 e7                	jne    c01005c0 <create_video_mapping+0x20>
c01005d9:	c9                   	leave  
c01005da:	c3                   	ret    
c01005db:	90                   	nop
c01005dc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

c01005e0 <video_mapping_write_test>:
c01005e0:	55                   	push   %ebp
c01005e1:	31 c0                	xor    %eax,%eax
c01005e3:	89 e5                	mov    %esp,%ebp
c01005e5:	8d 76 00             	lea    0x0(%esi),%esi
c01005e8:	89 04 85 00 00 0a 00 	mov    %eax,0xa0000(,%eax,4)
c01005ef:	83 c0 01             	add    $0x1,%eax
c01005f2:	3d 80 3e 00 00       	cmp    $0x3e80,%eax
c01005f7:	75 ef                	jne    c01005e8 <video_mapping_write_test+0x8>
c01005f9:	5d                   	pop    %ebp
c01005fa:	c3                   	ret    
c01005fb:	90                   	nop
c01005fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

c0100600 <video_mapping_read_test>:
c0100600:	55                   	push   %ebp
c0100601:	89 e5                	mov    %esp,%ebp
c0100603:	56                   	push   %esi
c0100604:	be 01 00 00 00       	mov    $0x1,%esi
c0100609:	53                   	push   %ebx
c010060a:	31 db                	xor    %ebx,%ebx
c010060c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0100610:	3b 1c 9d 00 00 0a 00 	cmp    0xa0000(,%ebx,4),%ebx
c0100617:	74 24                	je     c010063d <video_mapping_read_test+0x3d>
c0100619:	83 ec 0c             	sub    $0xc,%esp
c010061c:	68 4e 7d 10 c0       	push   $0xc0107d4e
c0100621:	68 73 7d 10 c0       	push   $0xc0107d73
c0100626:	6a 24                	push   $0x24
c0100628:	68 5a 7d 10 c0       	push   $0xc0107d5a
c010062d:	68 f4 7c 10 c0       	push   $0xc0107cf4
c0100632:	e8 09 0d 00 00       	call   c0101340 <printk>
c0100637:	89 f0                	mov    %esi,%eax
c0100639:	d6                   	(bad)  
c010063a:	83 c4 20             	add    $0x20,%esp
c010063d:	83 c3 01             	add    $0x1,%ebx
c0100640:	81 fb 80 3e 00 00    	cmp    $0x3e80,%ebx
c0100646:	75 c8                	jne    c0100610 <video_mapping_read_test+0x10>
c0100648:	8d 65 f8             	lea    -0x8(%ebp),%esp
c010064b:	5b                   	pop    %ebx
c010064c:	5e                   	pop    %esi
c010064d:	5d                   	pop    %ebp
c010064e:	c3                   	ret    
c010064f:	90                   	nop

c0100650 <video_mapping_clear>:
c0100650:	55                   	push   %ebp
c0100651:	89 e5                	mov    %esp,%ebp
c0100653:	83 ec 0c             	sub    $0xc,%esp
c0100656:	68 00 fa 00 00       	push   $0xfa00
c010065b:	6a 00                	push   $0x0
c010065d:	68 00 00 0a 00       	push   $0xa0000
c0100662:	e8 e1 0d 00 00       	call   c0101448 <memset>
c0100667:	83 c4 10             	add    $0x10,%esp
c010066a:	c9                   	leave  
c010066b:	c3                   	ret    
c010066c:	66 90                	xchg   %ax,%ax
c010066e:	66 90                	xchg   %ax,%ax

c0100670 <add_irq_handle>:
c0100670:	55                   	push   %ebp
c0100671:	89 e5                	mov    %esp,%ebp
c0100673:	53                   	push   %ebx
c0100674:	83 ec 04             	sub    $0x4,%esp
c0100677:	8b 5d 08             	mov    0x8(%ebp),%ebx
c010067a:	83 fb 0f             	cmp    $0xf,%ebx
c010067d:	7f 71                	jg     c01006f0 <add_irq_handle+0x80>
c010067f:	a1 00 10 15 c0       	mov    0xc0151000,%eax
c0100684:	83 f8 20             	cmp    $0x20,%eax
c0100687:	7e 2c                	jle    c01006b5 <add_irq_handle+0x45>
c0100689:	83 ec 0c             	sub    $0xc,%esp
c010068c:	68 ba 7d 10 c0       	push   $0xc0107dba
c0100691:	68 a1 7e 10 c0       	push   $0xc0107ea1
c0100696:	6a 16                	push   $0x16
c0100698:	68 9e 7d 10 c0       	push   $0xc0107d9e
c010069d:	68 f4 7c 10 c0       	push   $0xc0107cf4
c01006a2:	e8 99 0c 00 00       	call   c0101340 <printk>
c01006a7:	b8 01 00 00 00       	mov    $0x1,%eax
c01006ac:	d6                   	(bad)  
c01006ad:	a1 00 10 15 c0       	mov    0xc0151000,%eax
c01006b2:	83 c4 20             	add    $0x20,%esp
c01006b5:	8d 50 01             	lea    0x1(%eax),%edx
c01006b8:	89 15 00 10 15 c0    	mov    %edx,0xc0151000
c01006be:	8b 55 0c             	mov    0xc(%ebp),%edx
c01006c1:	89 14 c5 80 10 15 c0 	mov    %edx,-0x3feaef80(,%eax,8)
c01006c8:	8b 14 9d 40 10 15 c0 	mov    -0x3feaefc0(,%ebx,4),%edx
c01006cf:	89 14 c5 84 10 15 c0 	mov    %edx,-0x3feaef7c(,%eax,8)
c01006d6:	8d 04 c5 80 10 15 c0 	lea    -0x3feaef80(,%eax,8),%eax
c01006dd:	89 04 9d 40 10 15 c0 	mov    %eax,-0x3feaefc0(,%ebx,4)
c01006e4:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c01006e7:	c9                   	leave  
c01006e8:	c3                   	ret    
c01006e9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c01006f0:	83 ec 0c             	sub    $0xc,%esp
c01006f3:	68 8b 7d 10 c0       	push   $0xc0107d8b
c01006f8:	68 a1 7e 10 c0       	push   $0xc0107ea1
c01006fd:	6a 15                	push   $0x15
c01006ff:	68 9e 7d 10 c0       	push   $0xc0107d9e
c0100704:	68 f4 7c 10 c0       	push   $0xc0107cf4
c0100709:	e8 32 0c 00 00       	call   c0101340 <printk>
c010070e:	b8 01 00 00 00       	mov    $0x1,%eax
c0100713:	d6                   	(bad)  
c0100714:	83 c4 20             	add    $0x20,%esp
c0100717:	e9 63 ff ff ff       	jmp    c010067f <add_irq_handle+0xf>
c010071c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

c0100720 <irq_handle>:
c0100720:	55                   	push   %ebp
c0100721:	89 e5                	mov    %esp,%ebp
c0100723:	53                   	push   %ebx
c0100724:	83 ec 04             	sub    $0x4,%esp
c0100727:	8b 55 08             	mov    0x8(%ebp),%edx
c010072a:	8b 42 20             	mov    0x20(%edx),%eax
c010072d:	85 c0                	test   %eax,%eax
c010072f:	0f 88 9b 00 00 00    	js     c01007d0 <irq_handle+0xb0>
c0100735:	3d 80 00 00 00       	cmp    $0x80,%eax
c010073a:	0f 84 b8 00 00 00    	je     c01007f8 <irq_handle+0xd8>
c0100740:	3d e7 03 00 00       	cmp    $0x3e7,%eax
c0100745:	7e 59                	jle    c01007a0 <irq_handle+0x80>
c0100747:	8d 98 18 fc ff ff    	lea    -0x3e8(%eax),%ebx
c010074d:	83 fb 0f             	cmp    $0xf,%ebx
c0100750:	7f 1e                	jg     c0100770 <irq_handle+0x50>
c0100752:	8b 1c 9d 40 10 15 c0 	mov    -0x3feaefc0(,%ebx,4),%ebx
c0100759:	85 db                	test   %ebx,%ebx
c010075b:	74 0c                	je     c0100769 <irq_handle+0x49>
c010075d:	8d 76 00             	lea    0x0(%esi),%esi
c0100760:	ff 13                	call   *(%ebx)
c0100762:	8b 5b 04             	mov    0x4(%ebx),%ebx
c0100765:	85 db                	test   %ebx,%ebx
c0100767:	75 f7                	jne    c0100760 <irq_handle+0x40>
c0100769:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c010076c:	c9                   	leave  
c010076d:	c3                   	ret    
c010076e:	66 90                	xchg   %ax,%ax
c0100770:	83 ec 0c             	sub    $0xc,%esp
c0100773:	68 d8 7d 10 c0       	push   $0xc0107dd8
c0100778:	68 96 7e 10 c0       	push   $0xc0107e96
c010077d:	6a 2f                	push   $0x2f
c010077f:	68 9e 7d 10 c0       	push   $0xc0107d9e
c0100784:	68 f4 7c 10 c0       	push   $0xc0107cf4
c0100789:	e8 b2 0b 00 00       	call   c0101340 <printk>
c010078e:	b8 01 00 00 00       	mov    $0x1,%eax
c0100793:	d6                   	(bad)  
c0100794:	83 c4 20             	add    $0x20,%esp
c0100797:	eb b9                	jmp    c0100752 <irq_handle+0x32>
c0100799:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c01007a0:	83 ec 08             	sub    $0x8,%esp
c01007a3:	ff 72 28             	pushl  0x28(%edx)
c01007a6:	50                   	push   %eax
c01007a7:	68 96 7e 10 c0       	push   $0xc0107e96
c01007ac:	6a 2c                	push   $0x2c
c01007ae:	68 9e 7d 10 c0       	push   $0xc0107d9e
c01007b3:	68 3c 7e 10 c0       	push   $0xc0107e3c
c01007b8:	e8 83 0b 00 00       	call   c0101340 <printk>
c01007bd:	b8 01 00 00 00       	mov    $0x1,%eax
c01007c2:	d6                   	(bad)  
c01007c3:	83 c4 20             	add    $0x20,%esp
c01007c6:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c01007c9:	c9                   	leave  
c01007ca:	c3                   	ret    
c01007cb:	90                   	nop
c01007cc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c01007d0:	68 96 7e 10 c0       	push   $0xc0107e96
c01007d5:	6a 28                	push   $0x28
c01007d7:	68 9e 7d 10 c0       	push   $0xc0107d9e
c01007dc:	68 f0 7d 10 c0       	push   $0xc0107df0
c01007e1:	e8 5a 0b 00 00       	call   c0101340 <printk>
c01007e6:	b8 01 00 00 00       	mov    $0x1,%eax
c01007eb:	d6                   	(bad)  
c01007ec:	83 c4 10             	add    $0x10,%esp
c01007ef:	e9 75 ff ff ff       	jmp    c0100769 <irq_handle+0x49>
c01007f4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c01007f8:	89 55 08             	mov    %edx,0x8(%ebp)
c01007fb:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c01007fe:	c9                   	leave  
c01007ff:	e9 1c 04 00 00       	jmp    c0100c20 <do_syscall>
c0100804:	66 90                	xchg   %ax,%ax
c0100806:	66 90                	xchg   %ax,%ax
c0100808:	66 90                	xchg   %ax,%ax
c010080a:	66 90                	xchg   %ax,%ax
c010080c:	66 90                	xchg   %ax,%ax
c010080e:	66 90                	xchg   %ax,%ax

c0100810 <init_idt>:
c0100810:	55                   	push   %ebp
c0100811:	ba 8f 03 10 c0       	mov    $0xc010038f,%edx
c0100816:	b8 c0 11 15 c0       	mov    $0xc01511c0,%eax
c010081b:	89 d1                	mov    %edx,%ecx
c010081d:	c1 ea 10             	shr    $0x10,%edx
c0100820:	89 e5                	mov    %esp,%ebp
c0100822:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0100828:	66 89 08             	mov    %cx,(%eax)
c010082b:	66 c7 40 02 08 00    	movw   $0x8,0x2(%eax)
c0100831:	83 c0 08             	add    $0x8,%eax
c0100834:	c6 40 fc 00          	movb   $0x0,-0x4(%eax)
c0100838:	c6 40 fd 8f          	movb   $0x8f,-0x3(%eax)
c010083c:	66 89 50 fe          	mov    %dx,-0x2(%eax)
c0100840:	3d c0 19 15 c0       	cmp    $0xc01519c0,%eax
c0100845:	75 e1                	jne    c0100828 <init_idt+0x18>
c0100847:	b8 e4 02 10 c0       	mov    $0xc01002e4,%eax
c010084c:	ba 08 00 00 00       	mov    $0x8,%edx
c0100851:	b9 08 00 00 00       	mov    $0x8,%ecx
c0100856:	66 a3 c0 11 15 c0    	mov    %ax,0xc01511c0
c010085c:	c1 e8 10             	shr    $0x10,%eax
c010085f:	66 89 15 c2 11 15 c0 	mov    %dx,0xc01511c2
c0100866:	66 a3 c6 11 15 c0    	mov    %ax,0xc01511c6
c010086c:	b8 ed 02 10 c0       	mov    $0xc01002ed,%eax
c0100871:	ba 08 00 00 00       	mov    $0x8,%edx
c0100876:	66 a3 c8 11 15 c0    	mov    %ax,0xc01511c8
c010087c:	c1 e8 10             	shr    $0x10,%eax
c010087f:	66 89 0d ca 11 15 c0 	mov    %cx,0xc01511ca
c0100886:	66 a3 ce 11 15 c0    	mov    %ax,0xc01511ce
c010088c:	b8 f6 02 10 c0       	mov    $0xc01002f6,%eax
c0100891:	66 89 15 d2 11 15 c0 	mov    %dx,0xc01511d2
c0100898:	66 a3 d0 11 15 c0    	mov    %ax,0xc01511d0
c010089e:	c1 e8 10             	shr    $0x10,%eax
c01008a1:	b9 08 00 00 00       	mov    $0x8,%ecx
c01008a6:	66 a3 d6 11 15 c0    	mov    %ax,0xc01511d6
c01008ac:	b8 ff 02 10 c0       	mov    $0xc01002ff,%eax
c01008b1:	ba 08 00 00 00       	mov    $0x8,%edx
c01008b6:	66 a3 d8 11 15 c0    	mov    %ax,0xc01511d8
c01008bc:	c1 e8 10             	shr    $0x10,%eax
c01008bf:	66 89 0d da 11 15 c0 	mov    %cx,0xc01511da
c01008c6:	66 a3 de 11 15 c0    	mov    %ax,0xc01511de
c01008cc:	b8 08 03 10 c0       	mov    $0xc0100308,%eax
c01008d1:	66 89 15 e2 11 15 c0 	mov    %dx,0xc01511e2
c01008d8:	66 a3 e0 11 15 c0    	mov    %ax,0xc01511e0
c01008de:	c1 e8 10             	shr    $0x10,%eax
c01008e1:	b9 08 00 00 00       	mov    $0x8,%ecx
c01008e6:	66 a3 e6 11 15 c0    	mov    %ax,0xc01511e6
c01008ec:	b8 11 03 10 c0       	mov    $0xc0100311,%eax
c01008f1:	ba 08 00 00 00       	mov    $0x8,%edx
c01008f6:	66 a3 e8 11 15 c0    	mov    %ax,0xc01511e8
c01008fc:	c1 e8 10             	shr    $0x10,%eax
c01008ff:	66 89 0d ea 11 15 c0 	mov    %cx,0xc01511ea
c0100906:	66 a3 ee 11 15 c0    	mov    %ax,0xc01511ee
c010090c:	b8 1a 03 10 c0       	mov    $0xc010031a,%eax
c0100911:	66 89 15 f2 11 15 c0 	mov    %dx,0xc01511f2
c0100918:	66 a3 f0 11 15 c0    	mov    %ax,0xc01511f0
c010091e:	c1 e8 10             	shr    $0x10,%eax
c0100921:	c6 05 c4 11 15 c0 00 	movb   $0x0,0xc01511c4
c0100928:	c6 05 c5 11 15 c0 8f 	movb   $0x8f,0xc01511c5
c010092f:	c6 05 cc 11 15 c0 00 	movb   $0x0,0xc01511cc
c0100936:	b9 08 00 00 00       	mov    $0x8,%ecx
c010093b:	c6 05 cd 11 15 c0 8f 	movb   $0x8f,0xc01511cd
c0100942:	c6 05 d4 11 15 c0 00 	movb   $0x0,0xc01511d4
c0100949:	ba 08 00 00 00       	mov    $0x8,%edx
c010094e:	c6 05 d5 11 15 c0 8f 	movb   $0x8f,0xc01511d5
c0100955:	c6 05 dc 11 15 c0 00 	movb   $0x0,0xc01511dc
c010095c:	c6 05 dd 11 15 c0 8f 	movb   $0x8f,0xc01511dd
c0100963:	c6 05 e4 11 15 c0 00 	movb   $0x0,0xc01511e4
c010096a:	c6 05 e5 11 15 c0 8f 	movb   $0x8f,0xc01511e5
c0100971:	c6 05 ec 11 15 c0 00 	movb   $0x0,0xc01511ec
c0100978:	c6 05 ed 11 15 c0 8f 	movb   $0x8f,0xc01511ed
c010097f:	c6 05 f4 11 15 c0 00 	movb   $0x0,0xc01511f4
c0100986:	c6 05 f5 11 15 c0 8f 	movb   $0x8f,0xc01511f5
c010098d:	66 a3 f6 11 15 c0    	mov    %ax,0xc01511f6
c0100993:	b8 23 03 10 c0       	mov    $0xc0100323,%eax
c0100998:	66 a3 f8 11 15 c0    	mov    %ax,0xc01511f8
c010099e:	c1 e8 10             	shr    $0x10,%eax
c01009a1:	66 89 0d fa 11 15 c0 	mov    %cx,0xc01511fa
c01009a8:	66 a3 fe 11 15 c0    	mov    %ax,0xc01511fe
c01009ae:	b8 2c 03 10 c0       	mov    $0xc010032c,%eax
c01009b3:	b9 08 00 00 00       	mov    $0x8,%ecx
c01009b8:	66 a3 00 12 15 c0    	mov    %ax,0xc0151200
c01009be:	c1 e8 10             	shr    $0x10,%eax
c01009c1:	66 89 15 02 12 15 c0 	mov    %dx,0xc0151202
c01009c8:	66 a3 06 12 15 c0    	mov    %ax,0xc0151206
c01009ce:	b8 33 03 10 c0       	mov    $0xc0100333,%eax
c01009d3:	66 89 0d 0a 12 15 c0 	mov    %cx,0xc015120a
c01009da:	66 a3 08 12 15 c0    	mov    %ax,0xc0151208
c01009e0:	c1 e8 10             	shr    $0x10,%eax
c01009e3:	ba 08 00 00 00       	mov    $0x8,%edx
c01009e8:	66 a3 0e 12 15 c0    	mov    %ax,0xc015120e
c01009ee:	b8 3c 03 10 c0       	mov    $0xc010033c,%eax
c01009f3:	b9 08 00 00 00       	mov    $0x8,%ecx
c01009f8:	66 a3 10 12 15 c0    	mov    %ax,0xc0151210
c01009fe:	c1 e8 10             	shr    $0x10,%eax
c0100a01:	66 89 15 12 12 15 c0 	mov    %dx,0xc0151212
c0100a08:	66 a3 16 12 15 c0    	mov    %ax,0xc0151216
c0100a0e:	b8 43 03 10 c0       	mov    $0xc0100343,%eax
c0100a13:	66 89 0d 1a 12 15 c0 	mov    %cx,0xc015121a
c0100a1a:	66 a3 18 12 15 c0    	mov    %ax,0xc0151218
c0100a20:	c1 e8 10             	shr    $0x10,%eax
c0100a23:	ba 08 00 00 00       	mov    $0x8,%edx
c0100a28:	66 a3 1e 12 15 c0    	mov    %ax,0xc015121e
c0100a2e:	b8 4a 03 10 c0       	mov    $0xc010034a,%eax
c0100a33:	b9 08 00 00 00       	mov    $0x8,%ecx
c0100a38:	66 a3 20 12 15 c0    	mov    %ax,0xc0151220
c0100a3e:	c1 e8 10             	shr    $0x10,%eax
c0100a41:	66 89 15 22 12 15 c0 	mov    %dx,0xc0151222
c0100a48:	66 a3 26 12 15 c0    	mov    %ax,0xc0151226
c0100a4e:	b8 51 03 10 c0       	mov    $0xc0100351,%eax
c0100a53:	66 89 0d 2a 12 15 c0 	mov    %cx,0xc015122a
c0100a5a:	66 a3 28 12 15 c0    	mov    %ax,0xc0151228
c0100a60:	c1 e8 10             	shr    $0x10,%eax
c0100a63:	c6 05 fc 11 15 c0 00 	movb   $0x0,0xc01511fc
c0100a6a:	c6 05 fd 11 15 c0 8f 	movb   $0x8f,0xc01511fd
c0100a71:	c6 05 04 12 15 c0 00 	movb   $0x0,0xc0151204
c0100a78:	ba 08 00 00 00       	mov    $0x8,%edx
c0100a7d:	c6 05 05 12 15 c0 8f 	movb   $0x8f,0xc0151205
c0100a84:	c6 05 0c 12 15 c0 00 	movb   $0x0,0xc015120c
c0100a8b:	b9 08 00 00 00       	mov    $0x8,%ecx
c0100a90:	c6 05 0d 12 15 c0 8f 	movb   $0x8f,0xc015120d
c0100a97:	c6 05 14 12 15 c0 00 	movb   $0x0,0xc0151214
c0100a9e:	c6 05 15 12 15 c0 8f 	movb   $0x8f,0xc0151215
c0100aa5:	c6 05 1c 12 15 c0 00 	movb   $0x0,0xc015121c
c0100aac:	c6 05 1d 12 15 c0 8f 	movb   $0x8f,0xc015121d
c0100ab3:	c6 05 24 12 15 c0 00 	movb   $0x0,0xc0151224
c0100aba:	c6 05 25 12 15 c0 8f 	movb   $0x8f,0xc0151225
c0100ac1:	c6 05 2c 12 15 c0 00 	movb   $0x0,0xc015122c
c0100ac8:	66 a3 2e 12 15 c0    	mov    %ax,0xc015122e
c0100ace:	b8 58 03 10 c0       	mov    $0xc0100358,%eax
c0100ad3:	66 89 15 32 12 15 c0 	mov    %dx,0xc0151232
c0100ada:	66 a3 30 12 15 c0    	mov    %ax,0xc0151230
c0100ae0:	c1 e8 10             	shr    $0x10,%eax
c0100ae3:	66 89 0d c2 15 15 c0 	mov    %cx,0xc01515c2
c0100aea:	66 a3 36 12 15 c0    	mov    %ax,0xc0151236
c0100af0:	b8 5f 03 10 c0       	mov    $0xc010035f,%eax
c0100af5:	ba 08 00 00 00       	mov    $0x8,%edx
c0100afa:	66 a3 c0 15 15 c0    	mov    %ax,0xc01515c0
c0100b00:	c1 e8 10             	shr    $0x10,%eax
c0100b03:	b9 08 00 00 00       	mov    $0x8,%ecx
c0100b08:	66 a3 c6 15 15 c0    	mov    %ax,0xc01515c6
c0100b0e:	b8 6b 03 10 c0       	mov    $0xc010036b,%eax
c0100b13:	c6 05 2d 12 15 c0 8f 	movb   $0x8f,0xc015122d
c0100b1a:	66 a3 c0 12 15 c0    	mov    %ax,0xc01512c0
c0100b20:	c1 e8 10             	shr    $0x10,%eax
c0100b23:	c6 05 34 12 15 c0 00 	movb   $0x0,0xc0151234
c0100b2a:	66 a3 c6 12 15 c0    	mov    %ax,0xc01512c6
c0100b30:	b8 83 03 10 c0       	mov    $0xc0100383,%eax
c0100b35:	c6 05 35 12 15 c0 8f 	movb   $0x8f,0xc0151235
c0100b3c:	66 a3 30 13 15 c0    	mov    %ax,0xc0151330
c0100b42:	c1 e8 10             	shr    $0x10,%eax
c0100b45:	c6 05 c4 15 15 c0 00 	movb   $0x0,0xc01515c4
c0100b4c:	66 a3 36 13 15 c0    	mov    %ax,0xc0151336
c0100b52:	b8 ff 07 00 00       	mov    $0x7ff,%eax
c0100b57:	c6 05 c5 15 15 c0 ef 	movb   $0xef,0xc01515c5
c0100b5e:	66 a3 80 11 15 c0    	mov    %ax,0xc0151180
c0100b64:	b8 c0 11 15 c0       	mov    $0xc01511c0,%eax
c0100b69:	66 89 15 c2 12 15 c0 	mov    %dx,0xc01512c2
c0100b70:	66 a3 82 11 15 c0    	mov    %ax,0xc0151182
c0100b76:	c1 e8 10             	shr    $0x10,%eax
c0100b79:	c6 05 c4 12 15 c0 00 	movb   $0x0,0xc01512c4
c0100b80:	66 a3 84 11 15 c0    	mov    %ax,0xc0151184
c0100b86:	c6 05 c5 12 15 c0 8e 	movb   $0x8e,0xc01512c5
c0100b8d:	b8 80 11 15 c0       	mov    $0xc0151180,%eax
c0100b92:	66 89 0d 32 13 15 c0 	mov    %cx,0xc0151332
c0100b99:	c6 05 34 13 15 c0 00 	movb   $0x0,0xc0151334
c0100ba0:	c6 05 35 13 15 c0 8e 	movb   $0x8e,0xc0151335
c0100ba7:	0f 01 18             	lidtl  (%eax)
c0100baa:	5d                   	pop    %ebp
c0100bab:	c3                   	ret    
c0100bac:	66 90                	xchg   %ax,%ax
c0100bae:	66 90                	xchg   %ax,%ax

c0100bb0 <init_i8259>:
c0100bb0:	55                   	push   %ebp
c0100bb1:	ba 21 00 00 00       	mov    $0x21,%edx
c0100bb6:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c0100bbb:	89 e5                	mov    %esp,%ebp
c0100bbd:	ee                   	out    %al,(%dx)
c0100bbe:	b2 a1                	mov    $0xa1,%dl
c0100bc0:	ee                   	out    %al,(%dx)
c0100bc1:	b8 11 00 00 00       	mov    $0x11,%eax
c0100bc6:	b2 20                	mov    $0x20,%dl
c0100bc8:	ee                   	out    %al,(%dx)
c0100bc9:	b8 20 00 00 00       	mov    $0x20,%eax
c0100bce:	b2 21                	mov    $0x21,%dl
c0100bd0:	ee                   	out    %al,(%dx)
c0100bd1:	b8 04 00 00 00       	mov    $0x4,%eax
c0100bd6:	ee                   	out    %al,(%dx)
c0100bd7:	b8 03 00 00 00       	mov    $0x3,%eax
c0100bdc:	ee                   	out    %al,(%dx)
c0100bdd:	b8 11 00 00 00       	mov    $0x11,%eax
c0100be2:	b2 a0                	mov    $0xa0,%dl
c0100be4:	ee                   	out    %al,(%dx)
c0100be5:	b8 28 00 00 00       	mov    $0x28,%eax
c0100bea:	b2 a1                	mov    $0xa1,%dl
c0100bec:	ee                   	out    %al,(%dx)
c0100bed:	b8 02 00 00 00       	mov    $0x2,%eax
c0100bf2:	ee                   	out    %al,(%dx)
c0100bf3:	b8 03 00 00 00       	mov    $0x3,%eax
c0100bf8:	ee                   	out    %al,(%dx)
c0100bf9:	b8 68 00 00 00       	mov    $0x68,%eax
c0100bfe:	b2 20                	mov    $0x20,%dl
c0100c00:	ee                   	out    %al,(%dx)
c0100c01:	b8 0a 00 00 00       	mov    $0xa,%eax
c0100c06:	ee                   	out    %al,(%dx)
c0100c07:	b8 68 00 00 00       	mov    $0x68,%eax
c0100c0c:	b2 a0                	mov    $0xa0,%dl
c0100c0e:	ee                   	out    %al,(%dx)
c0100c0f:	b8 0a 00 00 00       	mov    $0xa,%eax
c0100c14:	ee                   	out    %al,(%dx)
c0100c15:	5d                   	pop    %ebp
c0100c16:	c3                   	ret    
c0100c17:	66 90                	xchg   %ax,%ax
c0100c19:	66 90                	xchg   %ax,%ax
c0100c1b:	66 90                	xchg   %ax,%ax
c0100c1d:	66 90                	xchg   %ax,%ax
c0100c1f:	90                   	nop

c0100c20 <do_syscall>:
c0100c20:	55                   	push   %ebp
c0100c21:	89 e5                	mov    %esp,%ebp
c0100c23:	56                   	push   %esi
c0100c24:	53                   	push   %ebx
c0100c25:	8b 75 08             	mov    0x8(%ebp),%esi
c0100c28:	8b 46 1c             	mov    0x1c(%esi),%eax
c0100c2b:	83 f8 04             	cmp    $0x4,%eax
c0100c2e:	74 78                	je     c0100ca8 <do_syscall+0x88>
c0100c30:	83 f8 2d             	cmp    $0x2d,%eax
c0100c33:	74 53                	je     c0100c88 <do_syscall+0x68>
c0100c35:	85 c0                	test   %eax,%eax
c0100c37:	74 2f                	je     c0100c68 <do_syscall+0x48>
c0100c39:	83 ec 0c             	sub    $0xc,%esp
c0100c3c:	50                   	push   %eax
c0100c3d:	68 24 7f 10 c0       	push   $0xc0107f24
c0100c42:	6a 2a                	push   $0x2a
c0100c44:	68 b0 7e 10 c0       	push   $0xc0107eb0
c0100c49:	68 d0 7e 10 c0       	push   $0xc0107ed0
c0100c4e:	e8 ed 06 00 00       	call   c0101340 <printk>
c0100c53:	b8 01 00 00 00       	mov    $0x1,%eax
c0100c58:	d6                   	(bad)  
c0100c59:	83 c4 20             	add    $0x20,%esp
c0100c5c:	8d 65 f8             	lea    -0x8(%ebp),%esp
c0100c5f:	5b                   	pop    %ebx
c0100c60:	5e                   	pop    %esi
c0100c61:	5d                   	pop    %ebp
c0100c62:	c3                   	ret    
c0100c63:	90                   	nop
c0100c64:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0100c68:	fa                   	cli    
c0100c69:	83 ec 08             	sub    $0x8,%esp
c0100c6c:	ff 76 18             	pushl  0x18(%esi)
c0100c6f:	ff 76 10             	pushl  0x10(%esi)
c0100c72:	e8 f9 f9 ff ff       	call   c0100670 <add_irq_handle>
c0100c77:	fb                   	sti    
c0100c78:	83 c4 10             	add    $0x10,%esp
c0100c7b:	8d 65 f8             	lea    -0x8(%ebp),%esp
c0100c7e:	5b                   	pop    %ebx
c0100c7f:	5e                   	pop    %esi
c0100c80:	5d                   	pop    %ebp
c0100c81:	c3                   	ret    
c0100c82:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0100c88:	83 ec 0c             	sub    $0xc,%esp
c0100c8b:	ff 76 10             	pushl  0x10(%esi)
c0100c8e:	e8 7d f8 ff ff       	call   c0100510 <mm_brk>
c0100c93:	c7 46 1c 00 00 00 00 	movl   $0x0,0x1c(%esi)
c0100c9a:	83 c4 10             	add    $0x10,%esp
c0100c9d:	8d 65 f8             	lea    -0x8(%ebp),%esp
c0100ca0:	5b                   	pop    %ebx
c0100ca1:	5e                   	pop    %esi
c0100ca2:	5d                   	pop    %ebp
c0100ca3:	c3                   	ret    
c0100ca4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0100ca8:	8b 46 14             	mov    0x14(%esi),%eax
c0100cab:	31 db                	xor    %ebx,%ebx
c0100cad:	85 c0                	test   %eax,%eax
c0100caf:	74 25                	je     c0100cd6 <do_syscall+0xb6>
c0100cb1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0100cb8:	8b 46 18             	mov    0x18(%esi),%eax
c0100cbb:	83 ec 0c             	sub    $0xc,%esp
c0100cbe:	83 c3 01             	add    $0x1,%ebx
c0100cc1:	0f be 44 03 ff       	movsbl -0x1(%ebx,%eax,1),%eax
c0100cc6:	50                   	push   %eax
c0100cc7:	e8 14 07 00 00       	call   c01013e0 <serial_printc>
c0100ccc:	8b 46 14             	mov    0x14(%esi),%eax
c0100ccf:	83 c4 10             	add    $0x10,%esp
c0100cd2:	39 c3                	cmp    %eax,%ebx
c0100cd4:	72 e2                	jb     c0100cb8 <do_syscall+0x98>
c0100cd6:	89 46 1c             	mov    %eax,0x1c(%esi)
c0100cd9:	8d 65 f8             	lea    -0x8(%ebp),%esp
c0100cdc:	5b                   	pop    %ebx
c0100cdd:	5e                   	pop    %esi
c0100cde:	5d                   	pop    %ebp
c0100cdf:	c3                   	ret    

c0100ce0 <loader>:
c0100ce0:	55                   	push   %ebp
c0100ce1:	89 e5                	mov    %esp,%ebp
c0100ce3:	57                   	push   %edi
c0100ce4:	56                   	push   %esi
c0100ce5:	53                   	push   %ebx
c0100ce6:	8d bd e8 ef ff ff    	lea    -0x1018(%ebp),%edi
c0100cec:	81 ec 30 10 00 00    	sub    $0x1030,%esp
c0100cf2:	68 00 10 00 00       	push   $0x1000
c0100cf7:	6a 00                	push   $0x0
c0100cf9:	57                   	push   %edi
c0100cfa:	e8 c1 04 00 00       	call   c01011c0 <ide_read>
c0100cff:	83 c4 10             	add    $0x10,%esp
c0100d02:	81 bd e8 ef ff ff 7f 	cmpl   $0x464c457f,-0x1018(%ebp)
c0100d09:	45 4c 46 
c0100d0c:	74 06                	je     c0100d14 <loader+0x34>
c0100d0e:	b8 01 00 00 00       	mov    $0x1,%eax
c0100d13:	d6                   	(bad)  
c0100d14:	31 f6                	xor    %esi,%esi
c0100d16:	66 83 bd 14 f0 ff ff 	cmpw   $0x0,-0xfec(%ebp)
c0100d1d:	00 
c0100d1e:	75 1a                	jne    c0100d3a <loader+0x5a>
c0100d20:	e9 9b 00 00 00       	jmp    c0100dc0 <loader+0xe0>
c0100d25:	8d 76 00             	lea    0x0(%esi),%esi
c0100d28:	0f b7 85 14 f0 ff ff 	movzwl -0xfec(%ebp),%eax
c0100d2f:	83 c6 01             	add    $0x1,%esi
c0100d32:	39 f0                	cmp    %esi,%eax
c0100d34:	0f 8e 86 00 00 00    	jle    c0100dc0 <loader+0xe0>
c0100d3a:	0f b7 9d 12 f0 ff ff 	movzwl -0xfee(%ebp),%ebx
c0100d41:	0f af de             	imul   %esi,%ebx
c0100d44:	03 9d 04 f0 ff ff    	add    -0xffc(%ebp),%ebx
c0100d4a:	01 fb                	add    %edi,%ebx
c0100d4c:	83 3b 01             	cmpl   $0x1,(%ebx)
c0100d4f:	75 d7                	jne    c0100d28 <loader+0x48>
c0100d51:	83 ec 08             	sub    $0x8,%esp
c0100d54:	ff 73 14             	pushl  0x14(%ebx)
c0100d57:	ff 73 08             	pushl  0x8(%ebx)
c0100d5a:	e8 f1 f2 ff ff       	call   c0100050 <mm_malloc>
c0100d5f:	83 c4 0c             	add    $0xc,%esp
c0100d62:	ff 73 10             	pushl  0x10(%ebx)
c0100d65:	ff 73 04             	pushl  0x4(%ebx)
c0100d68:	50                   	push   %eax
c0100d69:	89 85 d4 ef ff ff    	mov    %eax,-0x102c(%ebp)
c0100d6f:	e8 4c 04 00 00       	call   c01011c0 <ide_read>
c0100d74:	8b 53 10             	mov    0x10(%ebx),%edx
c0100d77:	8b 4b 14             	mov    0x14(%ebx),%ecx
c0100d7a:	83 c4 0c             	add    $0xc,%esp
c0100d7d:	8b 85 d4 ef ff ff    	mov    -0x102c(%ebp),%eax
c0100d83:	29 d1                	sub    %edx,%ecx
c0100d85:	01 c2                	add    %eax,%edx
c0100d87:	51                   	push   %ecx
c0100d88:	6a 00                	push   $0x0
c0100d8a:	52                   	push   %edx
c0100d8b:	e8 b8 06 00 00       	call   c0101448 <memset>
c0100d90:	8b 43 14             	mov    0x14(%ebx),%eax
c0100d93:	03 43 08             	add    0x8(%ebx),%eax
c0100d96:	83 c4 10             	add    $0x10,%esp
c0100d99:	83 e8 01             	sub    $0x1,%eax
c0100d9c:	3b 05 00 e0 14 c0    	cmp    0xc014e000,%eax
c0100da2:	76 84                	jbe    c0100d28 <loader+0x48>
c0100da4:	a3 00 e0 14 c0       	mov    %eax,0xc014e000
c0100da9:	0f b7 85 14 f0 ff ff 	movzwl -0xfec(%ebp),%eax
c0100db0:	83 c6 01             	add    $0x1,%esi
c0100db3:	39 f0                	cmp    %esi,%eax
c0100db5:	7f 83                	jg     c0100d3a <loader+0x5a>
c0100db7:	89 f6                	mov    %esi,%esi
c0100db9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
c0100dc0:	83 ec 08             	sub    $0x8,%esp
c0100dc3:	8b 85 00 f0 ff ff    	mov    -0x1000(%ebp),%eax
c0100dc9:	68 00 00 10 00       	push   $0x100000
c0100dce:	68 00 00 f0 bf       	push   $0xbff00000
c0100dd3:	89 85 e4 ef ff ff    	mov    %eax,-0x101c(%ebp)
c0100dd9:	e8 72 f2 ff ff       	call   c0100050 <mm_malloc>
c0100dde:	e8 bd f7 ff ff       	call   c01005a0 <create_video_mapping>
c0100de3:	e8 18 f7 ff ff       	call   c0100500 <get_ucr3>
c0100de8:	0f 22 d8             	mov    %eax,%cr3
c0100deb:	8b 85 e4 ef ff ff    	mov    -0x101c(%ebp),%eax
c0100df1:	8d 65 f4             	lea    -0xc(%ebp),%esp
c0100df4:	5b                   	pop    %ebx
c0100df5:	5e                   	pop    %esi
c0100df6:	5f                   	pop    %edi
c0100df7:	5d                   	pop    %ebp
c0100df8:	c3                   	ret    
c0100df9:	66 90                	xchg   %ax,%ax
c0100dfb:	66 90                	xchg   %ax,%ax
c0100dfd:	66 90                	xchg   %ax,%ax
c0100dff:	90                   	nop

c0100e00 <init_cond>:
c0100e00:	55                   	push   %ebp
c0100e01:	89 e5                	mov    %esp,%ebp
c0100e03:	53                   	push   %ebx
c0100e04:	83 ec 04             	sub    $0x4,%esp
c0100e07:	e8 34 f6 ff ff       	call   c0100440 <init_segment>
c0100e0c:	e8 ff f9 ff ff       	call   c0100810 <init_idt>
c0100e11:	e8 9a fd ff ff       	call   c0100bb0 <init_i8259>
c0100e16:	e8 85 05 00 00       	call   c01013a0 <init_serial>
c0100e1b:	e8 60 04 00 00       	call   c0101280 <init_ide>
c0100e20:	fb                   	sti    
c0100e21:	e8 1a f7 ff ff       	call   c0100540 <init_mm>
c0100e26:	68 c3 7f 10 c0       	push   $0xc0107fc3
c0100e2b:	6a 4a                	push   $0x4a
c0100e2d:	68 2f 7f 10 c0       	push   $0xc0107f2f
c0100e32:	68 44 7f 10 c0       	push   $0xc0107f44
c0100e37:	e8 04 05 00 00       	call   c0101340 <printk>
c0100e3c:	e8 9f f7 ff ff       	call   c01005e0 <video_mapping_write_test>
c0100e41:	e8 9a fe ff ff       	call   c0100ce0 <loader>
c0100e46:	89 c3                	mov    %eax,%ebx
c0100e48:	e8 b3 f7 ff ff       	call   c0100600 <video_mapping_read_test>
c0100e4d:	e8 fe f7 ff ff       	call   c0100650 <video_mapping_clear>
c0100e52:	bc 00 00 00 c0       	mov    $0xc0000000,%esp
c0100e57:	bd 00 00 00 00       	mov    $0x0,%ebp
c0100e5c:	83 ec 10             	sub    $0x10,%esp
c0100e5f:	ff d3                	call   *%ebx
c0100e61:	68 c3 7f 10 c0       	push   $0xc0107fc3
c0100e66:	6a 6b                	push   $0x6b
c0100e68:	68 2f 7f 10 c0       	push   $0xc0107f2f
c0100e6d:	68 78 7f 10 c0       	push   $0xc0107f78
c0100e72:	e8 c9 04 00 00       	call   c0101340 <printk>
c0100e77:	b8 01 00 00 00       	mov    $0x1,%eax
c0100e7c:	d6                   	(bad)  
c0100e7d:	83 c4 20             	add    $0x20,%esp
c0100e80:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0100e83:	c9                   	leave  
c0100e84:	c3                   	ret    
c0100e85:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0100e89:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0100e90 <init>:
c0100e90:	55                   	push   %ebp
c0100e91:	89 e5                	mov    %esp,%ebp
c0100e93:	83 ec 08             	sub    $0x8,%esp
c0100e96:	e8 25 f5 ff ff       	call   c01003c0 <init_page>
c0100e9b:	81 c4 00 00 00 c0    	add    $0xc0000000,%esp
c0100ea1:	b8 00 0e 10 c0       	mov    $0xc0100e00,%eax
c0100ea6:	ff e0                	jmp    *%eax
c0100ea8:	68 cd 7f 10 c0       	push   $0xc0107fcd
c0100ead:	6a 24                	push   $0x24
c0100eaf:	68 2f 7f 10 c0       	push   $0xc0107f2f
c0100eb4:	68 78 7f 10 c0       	push   $0xc0107f78
c0100eb9:	e8 82 04 00 00       	call   c0101340 <printk>
c0100ebe:	b8 01 00 00 00       	mov    $0x1,%eax
c0100ec3:	d6                   	(bad)  
c0100ec4:	83 c4 10             	add    $0x10,%esp
c0100ec7:	c9                   	leave  
c0100ec8:	c3                   	ret    
c0100ec9:	66 90                	xchg   %ax,%ax
c0100ecb:	66 90                	xchg   %ax,%ax
c0100ecd:	66 90                	xchg   %ax,%ax
c0100ecf:	90                   	nop

c0100ed0 <buf_fetch>:
c0100ed0:	55                   	push   %ebp
c0100ed1:	89 c2                	mov    %eax,%edx
c0100ed3:	89 e5                	mov    %esp,%ebp
c0100ed5:	57                   	push   %edi
c0100ed6:	56                   	push   %esi
c0100ed7:	53                   	push   %ebx
c0100ed8:	89 c3                	mov    %eax,%ebx
c0100eda:	83 e3 7f             	and    $0x7f,%ebx
c0100edd:	89 d8                	mov    %ebx,%eax
c0100edf:	83 ec 1c             	sub    $0x1c,%esp
c0100ee2:	c1 e0 09             	shl    $0x9,%eax
c0100ee5:	8d 0c d8             	lea    (%eax,%ebx,8),%ecx
c0100ee8:	8d 81 c0 19 15 c0    	lea    -0x3feae640(%ecx),%eax
c0100eee:	80 78 04 01          	cmpb   $0x1,0x4(%eax)
c0100ef2:	74 5c                	je     c0100f50 <buf_fetch+0x80>
c0100ef4:	89 d7                	mov    %edx,%edi
c0100ef6:	89 da                	mov    %ebx,%edx
c0100ef8:	c1 e2 09             	shl    $0x9,%edx
c0100efb:	8d 0c da             	lea    (%edx,%ebx,8),%ecx
c0100efe:	8d 91 c0 19 15 c0    	lea    -0x3feae640(%ecx),%edx
c0100f04:	66 81 7a 04 01 01    	cmpw   $0x101,0x4(%edx)
c0100f0a:	74 54                	je     c0100f60 <buf_fetch+0x90>
c0100f0c:	8d 72 06             	lea    0x6(%edx),%esi
c0100f0f:	83 ec 08             	sub    $0x8,%esp
c0100f12:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0100f15:	57                   	push   %edi
c0100f16:	56                   	push   %esi
c0100f17:	e8 e4 01 00 00       	call   c0101100 <disk_do_read>
c0100f1c:	89 da                	mov    %ebx,%edx
c0100f1e:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0100f21:	83 c4 10             	add    $0x10,%esp
c0100f24:	c1 e2 09             	shl    $0x9,%edx
c0100f27:	8d 0c da             	lea    (%edx,%ebx,8),%ecx
c0100f2a:	c6 81 c4 19 15 c0 01 	movb   $0x1,-0x3feae63c(%ecx)
c0100f31:	89 b9 c0 19 15 c0    	mov    %edi,-0x3feae640(%ecx)
c0100f37:	c6 81 c5 19 15 c0 00 	movb   $0x0,-0x3feae63b(%ecx)
c0100f3e:	8d 65 f4             	lea    -0xc(%ebp),%esp
c0100f41:	5b                   	pop    %ebx
c0100f42:	5e                   	pop    %esi
c0100f43:	5f                   	pop    %edi
c0100f44:	5d                   	pop    %ebp
c0100f45:	c3                   	ret    
c0100f46:	8d 76 00             	lea    0x0(%esi),%esi
c0100f49:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
c0100f50:	39 91 c0 19 15 c0    	cmp    %edx,-0x3feae640(%ecx)
c0100f56:	75 9c                	jne    c0100ef4 <buf_fetch+0x24>
c0100f58:	eb e4                	jmp    c0100f3e <buf_fetch+0x6e>
c0100f5a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0100f60:	8d 72 06             	lea    0x6(%edx),%esi
c0100f63:	83 ec 08             	sub    $0x8,%esp
c0100f66:	ff b1 c0 19 15 c0    	pushl  -0x3feae640(%ecx)
c0100f6c:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0100f6f:	56                   	push   %esi
c0100f70:	e8 cb 01 00 00       	call   c0101140 <disk_do_write>
c0100f75:	83 c4 10             	add    $0x10,%esp
c0100f78:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0100f7b:	eb 92                	jmp    c0100f0f <buf_fetch+0x3f>
c0100f7d:	8d 76 00             	lea    0x0(%esi),%esi

c0100f80 <buf_init>:
c0100f80:	55                   	push   %ebp
c0100f81:	b8 c4 19 15 c0       	mov    $0xc01519c4,%eax
c0100f86:	89 e5                	mov    %esp,%ebp
c0100f88:	90                   	nop
c0100f89:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0100f90:	c6 00 00             	movb   $0x0,(%eax)
c0100f93:	05 08 02 00 00       	add    $0x208,%eax
c0100f98:	3d c4 1d 16 c0       	cmp    $0xc0161dc4,%eax
c0100f9d:	75 f1                	jne    c0100f90 <buf_init+0x10>
c0100f9f:	5d                   	pop    %ebp
c0100fa0:	c3                   	ret    
c0100fa1:	eb 0d                	jmp    c0100fb0 <buf_writeback>
c0100fa3:	90                   	nop
c0100fa4:	90                   	nop
c0100fa5:	90                   	nop
c0100fa6:	90                   	nop
c0100fa7:	90                   	nop
c0100fa8:	90                   	nop
c0100fa9:	90                   	nop
c0100faa:	90                   	nop
c0100fab:	90                   	nop
c0100fac:	90                   	nop
c0100fad:	90                   	nop
c0100fae:	90                   	nop
c0100faf:	90                   	nop

c0100fb0 <buf_writeback>:
c0100fb0:	55                   	push   %ebp
c0100fb1:	89 e5                	mov    %esp,%ebp
c0100fb3:	53                   	push   %ebx
c0100fb4:	bb c6 19 15 c0       	mov    $0xc01519c6,%ebx
c0100fb9:	83 ec 04             	sub    $0x4,%esp
c0100fbc:	eb 10                	jmp    c0100fce <buf_writeback+0x1e>
c0100fbe:	66 90                	xchg   %ax,%ax
c0100fc0:	81 c3 08 02 00 00    	add    $0x208,%ebx
c0100fc6:	81 fb c6 1d 16 c0    	cmp    $0xc0161dc6,%ebx
c0100fcc:	74 32                	je     c0101000 <buf_writeback+0x50>
c0100fce:	80 7b ff 01          	cmpb   $0x1,-0x1(%ebx)
c0100fd2:	75 ec                	jne    c0100fc0 <buf_writeback+0x10>
c0100fd4:	83 ec 08             	sub    $0x8,%esp
c0100fd7:	ff 73 fa             	pushl  -0x6(%ebx)
c0100fda:	53                   	push   %ebx
c0100fdb:	81 c3 08 02 00 00    	add    $0x208,%ebx
c0100fe1:	e8 5a 01 00 00       	call   c0101140 <disk_do_write>
c0100fe6:	c6 83 f7 fd ff ff 00 	movb   $0x0,-0x209(%ebx)
c0100fed:	83 c4 10             	add    $0x10,%esp
c0100ff0:	81 fb c6 1d 16 c0    	cmp    $0xc0161dc6,%ebx
c0100ff6:	75 d6                	jne    c0100fce <buf_writeback+0x1e>
c0100ff8:	90                   	nop
c0100ff9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0101000:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0101003:	c9                   	leave  
c0101004:	c3                   	ret    
c0101005:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0101009:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0101010 <read_byte>:
c0101010:	55                   	push   %ebp
c0101011:	89 e5                	mov    %esp,%ebp
c0101013:	53                   	push   %ebx
c0101014:	83 ec 04             	sub    $0x4,%esp
c0101017:	8b 5d 08             	mov    0x8(%ebp),%ebx
c010101a:	89 d8                	mov    %ebx,%eax
c010101c:	81 e3 ff 01 00 00    	and    $0x1ff,%ebx
c0101022:	c1 e8 09             	shr    $0x9,%eax
c0101025:	e8 a6 fe ff ff       	call   c0100ed0 <buf_fetch>
c010102a:	0f b6 44 18 06       	movzbl 0x6(%eax,%ebx,1),%eax
c010102f:	83 c4 04             	add    $0x4,%esp
c0101032:	5b                   	pop    %ebx
c0101033:	5d                   	pop    %ebp
c0101034:	c3                   	ret    
c0101035:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0101039:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0101040 <write_byte>:
c0101040:	55                   	push   %ebp
c0101041:	89 e5                	mov    %esp,%ebp
c0101043:	56                   	push   %esi
c0101044:	53                   	push   %ebx
c0101045:	8b 5d 08             	mov    0x8(%ebp),%ebx
c0101048:	8b 75 0c             	mov    0xc(%ebp),%esi
c010104b:	89 d8                	mov    %ebx,%eax
c010104d:	81 e3 ff 01 00 00    	and    $0x1ff,%ebx
c0101053:	c1 e8 09             	shr    $0x9,%eax
c0101056:	e8 75 fe ff ff       	call   c0100ed0 <buf_fetch>
c010105b:	89 f2                	mov    %esi,%edx
c010105d:	88 54 18 06          	mov    %dl,0x6(%eax,%ebx,1)
c0101061:	c6 40 05 01          	movb   $0x1,0x5(%eax)
c0101065:	5b                   	pop    %ebx
c0101066:	5e                   	pop    %esi
c0101067:	5d                   	pop    %ebp
c0101068:	c3                   	ret    
c0101069:	66 90                	xchg   %ax,%ax
c010106b:	66 90                	xchg   %ax,%ax
c010106d:	66 90                	xchg   %ax,%ax
c010106f:	90                   	nop

c0101070 <dma_prepare>:
c0101070:	55                   	push   %ebp
c0101071:	89 e5                	mov    %esp,%ebp
c0101073:	83 ec 08             	sub    $0x8,%esp
c0101076:	68 3c 80 10 c0       	push   $0xc010803c
c010107b:	6a 1d                	push   $0x1d
c010107d:	68 d2 7f 10 c0       	push   $0xc0107fd2
c0101082:	68 f0 7f 10 c0       	push   $0xc0107ff0
c0101087:	e8 b4 02 00 00       	call   c0101340 <printk>
c010108c:	b8 01 00 00 00       	mov    $0x1,%eax
c0101091:	d6                   	(bad)  
c0101092:	83 c4 10             	add    $0x10,%esp
c0101095:	c9                   	leave  
c0101096:	c3                   	ret    
c0101097:	89 f6                	mov    %esi,%esi
c0101099:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c01010a0 <dma_issue_read>:
c01010a0:	55                   	push   %ebp
c01010a1:	ba 40 c0 ff ff       	mov    $0xffffc040,%edx
c01010a6:	89 e5                	mov    %esp,%ebp
c01010a8:	ec                   	in     (%dx),%al
c01010a9:	83 c8 09             	or     $0x9,%eax
c01010ac:	ee                   	out    %al,(%dx)
c01010ad:	5d                   	pop    %ebp
c01010ae:	c3                   	ret    
c01010af:	90                   	nop

c01010b0 <ide_prepare>:
c01010b0:	55                   	push   %ebp
c01010b1:	89 c1                	mov    %eax,%ecx
c01010b3:	ba f7 01 00 00       	mov    $0x1f7,%edx
c01010b8:	89 e5                	mov    %esp,%ebp
c01010ba:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c01010c0:	ec                   	in     (%dx),%al
c01010c1:	83 e0 c0             	and    $0xffffffc0,%eax
c01010c4:	3c 40                	cmp    $0x40,%al
c01010c6:	75 f8                	jne    c01010c0 <ide_prepare+0x10>
c01010c8:	ba f1 01 00 00       	mov    $0x1f1,%edx
c01010cd:	31 c0                	xor    %eax,%eax
c01010cf:	ee                   	out    %al,(%dx)
c01010d0:	b8 01 00 00 00       	mov    $0x1,%eax
c01010d5:	b2 f2                	mov    $0xf2,%dl
c01010d7:	ee                   	out    %al,(%dx)
c01010d8:	b2 f3                	mov    $0xf3,%dl
c01010da:	89 c8                	mov    %ecx,%eax
c01010dc:	ee                   	out    %al,(%dx)
c01010dd:	89 c8                	mov    %ecx,%eax
c01010df:	b2 f4                	mov    $0xf4,%dl
c01010e1:	c1 e8 08             	shr    $0x8,%eax
c01010e4:	ee                   	out    %al,(%dx)
c01010e5:	89 c8                	mov    %ecx,%eax
c01010e7:	b2 f5                	mov    $0xf5,%dl
c01010e9:	c1 e8 10             	shr    $0x10,%eax
c01010ec:	ee                   	out    %al,(%dx)
c01010ed:	89 c8                	mov    %ecx,%eax
c01010ef:	b2 f6                	mov    $0xf6,%dl
c01010f1:	c1 e8 18             	shr    $0x18,%eax
c01010f4:	83 c8 e0             	or     $0xffffffe0,%eax
c01010f7:	ee                   	out    %al,(%dx)
c01010f8:	5d                   	pop    %ebp
c01010f9:	c3                   	ret    
c01010fa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

c0101100 <disk_do_read>:
c0101100:	55                   	push   %ebp
c0101101:	89 e5                	mov    %esp,%ebp
c0101103:	53                   	push   %ebx
c0101104:	8b 45 0c             	mov    0xc(%ebp),%eax
c0101107:	e8 a4 ff ff ff       	call   c01010b0 <ide_prepare>
c010110c:	ba f7 01 00 00       	mov    $0x1f7,%edx
c0101111:	b8 20 00 00 00       	mov    $0x20,%eax
c0101116:	ee                   	out    %al,(%dx)
c0101117:	8b 4d 08             	mov    0x8(%ebp),%ecx
c010111a:	b2 f0                	mov    $0xf0,%dl
c010111c:	8d 99 00 02 00 00    	lea    0x200(%ecx),%ebx
c0101122:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0101128:	ed                   	in     (%dx),%eax
c0101129:	89 01                	mov    %eax,(%ecx)
c010112b:	83 c1 04             	add    $0x4,%ecx
c010112e:	39 d9                	cmp    %ebx,%ecx
c0101130:	75 f6                	jne    c0101128 <disk_do_read+0x28>
c0101132:	5b                   	pop    %ebx
c0101133:	5d                   	pop    %ebp
c0101134:	c3                   	ret    
c0101135:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0101139:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0101140 <disk_do_write>:
c0101140:	55                   	push   %ebp
c0101141:	89 e5                	mov    %esp,%ebp
c0101143:	53                   	push   %ebx
c0101144:	8b 45 0c             	mov    0xc(%ebp),%eax
c0101147:	e8 64 ff ff ff       	call   c01010b0 <ide_prepare>
c010114c:	ba f7 01 00 00       	mov    $0x1f7,%edx
c0101151:	b8 30 00 00 00       	mov    $0x30,%eax
c0101156:	ee                   	out    %al,(%dx)
c0101157:	8b 4d 08             	mov    0x8(%ebp),%ecx
c010115a:	b2 f0                	mov    $0xf0,%dl
c010115c:	8d 99 00 02 00 00    	lea    0x200(%ecx),%ebx
c0101162:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0101168:	8b 01                	mov    (%ecx),%eax
c010116a:	ef                   	out    %eax,(%dx)
c010116b:	83 c1 04             	add    $0x4,%ecx
c010116e:	39 d9                	cmp    %ebx,%ecx
c0101170:	75 f6                	jne    c0101168 <disk_do_write+0x28>
c0101172:	5b                   	pop    %ebx
c0101173:	5d                   	pop    %ebp
c0101174:	c3                   	ret    
c0101175:	66 90                	xchg   %ax,%ax
c0101177:	66 90                	xchg   %ax,%ax
c0101179:	66 90                	xchg   %ax,%ax
c010117b:	66 90                	xchg   %ax,%ax
c010117d:	66 90                	xchg   %ax,%ax
c010117f:	90                   	nop

c0101180 <ide_intr>:
c0101180:	55                   	push   %ebp
c0101181:	c7 05 c4 1d 16 c0 01 	movl   $0x1,0xc0161dc4
c0101188:	00 00 00 
c010118b:	89 e5                	mov    %esp,%ebp
c010118d:	5d                   	pop    %ebp
c010118e:	c3                   	ret    
c010118f:	90                   	nop

c0101190 <ide_writeback>:
c0101190:	a1 c0 1d 16 c0       	mov    0xc0161dc0,%eax
c0101195:	83 c0 01             	add    $0x1,%eax
c0101198:	83 f8 64             	cmp    $0x64,%eax
c010119b:	a3 c0 1d 16 c0       	mov    %eax,0xc0161dc0
c01011a0:	74 06                	je     c01011a8 <ide_writeback+0x18>
c01011a2:	c3                   	ret    
c01011a3:	90                   	nop
c01011a4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c01011a8:	55                   	push   %ebp
c01011a9:	89 e5                	mov    %esp,%ebp
c01011ab:	83 ec 08             	sub    $0x8,%esp
c01011ae:	e8 fd fd ff ff       	call   c0100fb0 <buf_writeback>
c01011b3:	c7 05 c0 1d 16 c0 00 	movl   $0x0,0xc0161dc0
c01011ba:	00 00 00 
c01011bd:	c9                   	leave  
c01011be:	c3                   	ret    
c01011bf:	90                   	nop

c01011c0 <ide_read>:
c01011c0:	55                   	push   %ebp
c01011c1:	89 e5                	mov    %esp,%ebp
c01011c3:	57                   	push   %edi
c01011c4:	56                   	push   %esi
c01011c5:	53                   	push   %ebx
c01011c6:	83 ec 0c             	sub    $0xc,%esp
c01011c9:	8b 5d 0c             	mov    0xc(%ebp),%ebx
c01011cc:	8b 45 10             	mov    0x10(%ebp),%eax
c01011cf:	8b 7d 08             	mov    0x8(%ebp),%edi
c01011d2:	8d 34 18             	lea    (%eax,%ebx,1),%esi
c01011d5:	29 df                	sub    %ebx,%edi
c01011d7:	85 c0                	test   %eax,%eax
c01011d9:	74 1b                	je     c01011f6 <ide_read+0x36>
c01011db:	90                   	nop
c01011dc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c01011e0:	83 ec 0c             	sub    $0xc,%esp
c01011e3:	53                   	push   %ebx
c01011e4:	e8 27 fe ff ff       	call   c0101010 <read_byte>
c01011e9:	88 04 1f             	mov    %al,(%edi,%ebx,1)
c01011ec:	83 c3 01             	add    $0x1,%ebx
c01011ef:	83 c4 10             	add    $0x10,%esp
c01011f2:	39 f3                	cmp    %esi,%ebx
c01011f4:	75 ea                	jne    c01011e0 <ide_read+0x20>
c01011f6:	8d 65 f4             	lea    -0xc(%ebp),%esp
c01011f9:	5b                   	pop    %ebx
c01011fa:	5e                   	pop    %esi
c01011fb:	5f                   	pop    %edi
c01011fc:	5d                   	pop    %ebp
c01011fd:	c3                   	ret    
c01011fe:	66 90                	xchg   %ax,%ax

c0101200 <ide_write>:
c0101200:	55                   	push   %ebp
c0101201:	89 e5                	mov    %esp,%ebp
c0101203:	57                   	push   %edi
c0101204:	56                   	push   %esi
c0101205:	53                   	push   %ebx
c0101206:	83 ec 0c             	sub    $0xc,%esp
c0101209:	8b 5d 0c             	mov    0xc(%ebp),%ebx
c010120c:	8b 45 10             	mov    0x10(%ebp),%eax
c010120f:	8b 7d 08             	mov    0x8(%ebp),%edi
c0101212:	8d 34 18             	lea    (%eax,%ebx,1),%esi
c0101215:	29 df                	sub    %ebx,%edi
c0101217:	85 c0                	test   %eax,%eax
c0101219:	74 1d                	je     c0101238 <ide_write+0x38>
c010121b:	90                   	nop
c010121c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0101220:	0f b6 04 1f          	movzbl (%edi,%ebx,1),%eax
c0101224:	83 ec 08             	sub    $0x8,%esp
c0101227:	50                   	push   %eax
c0101228:	53                   	push   %ebx
c0101229:	83 c3 01             	add    $0x1,%ebx
c010122c:	e8 0f fe ff ff       	call   c0101040 <write_byte>
c0101231:	83 c4 10             	add    $0x10,%esp
c0101234:	39 f3                	cmp    %esi,%ebx
c0101236:	75 e8                	jne    c0101220 <ide_write+0x20>
c0101238:	8d 65 f4             	lea    -0xc(%ebp),%esp
c010123b:	5b                   	pop    %ebx
c010123c:	5e                   	pop    %esi
c010123d:	5f                   	pop    %edi
c010123e:	5d                   	pop    %ebp
c010123f:	c3                   	ret    

c0101240 <clear_ide_intr>:
c0101240:	55                   	push   %ebp
c0101241:	c7 05 c4 1d 16 c0 00 	movl   $0x0,0xc0161dc4
c0101248:	00 00 00 
c010124b:	89 e5                	mov    %esp,%ebp
c010124d:	5d                   	pop    %ebp
c010124e:	c3                   	ret    
c010124f:	90                   	nop

c0101250 <wait_ide_intr>:
c0101250:	a1 c4 1d 16 c0       	mov    0xc0161dc4,%eax
c0101255:	55                   	push   %ebp
c0101256:	89 e5                	mov    %esp,%ebp
c0101258:	85 c0                	test   %eax,%eax
c010125a:	75 0e                	jne    c010126a <wait_ide_intr+0x1a>
c010125c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0101260:	f4                   	hlt    
c0101261:	a1 c4 1d 16 c0       	mov    0xc0161dc4,%eax
c0101266:	85 c0                	test   %eax,%eax
c0101268:	74 f6                	je     c0101260 <wait_ide_intr+0x10>
c010126a:	c7 05 c4 1d 16 c0 00 	movl   $0x0,0xc0161dc4
c0101271:	00 00 00 
c0101274:	5d                   	pop    %ebp
c0101275:	c3                   	ret    
c0101276:	8d 76 00             	lea    0x0(%esi),%esi
c0101279:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0101280 <init_ide>:
c0101280:	55                   	push   %ebp
c0101281:	89 e5                	mov    %esp,%ebp
c0101283:	83 ec 08             	sub    $0x8,%esp
c0101286:	e8 f5 fc ff ff       	call   c0100f80 <buf_init>
c010128b:	83 ec 08             	sub    $0x8,%esp
c010128e:	68 90 11 10 c0       	push   $0xc0101190
c0101293:	6a 00                	push   $0x0
c0101295:	e8 d6 f3 ff ff       	call   c0100670 <add_irq_handle>
c010129a:	58                   	pop    %eax
c010129b:	5a                   	pop    %edx
c010129c:	68 80 11 10 c0       	push   $0xc0101180
c01012a1:	6a 0e                	push   $0xe
c01012a3:	e8 c8 f3 ff ff       	call   c0100670 <add_irq_handle>
c01012a8:	83 c4 10             	add    $0x10,%esp
c01012ab:	c9                   	leave  
c01012ac:	c3                   	ret    
c01012ad:	66 90                	xchg   %ax,%ax
c01012af:	90                   	nop

c01012b0 <ramdisk_read>:
c01012b0:	55                   	push   %ebp
c01012b1:	89 e5                	mov    %esp,%ebp
c01012b3:	53                   	push   %ebx
c01012b4:	8b 55 0c             	mov    0xc(%ebp),%edx
c01012b7:	8b 4d 10             	mov    0x10(%ebp),%ecx
c01012ba:	8b 5d 08             	mov    0x8(%ebp),%ebx
c01012bd:	8d 04 0a             	lea    (%edx,%ecx,1),%eax
c01012c0:	3d ff ff 09 00       	cmp    $0x9ffff,%eax
c01012c5:	76 06                	jbe    c01012cd <ramdisk_read+0x1d>
c01012c7:	b8 01 00 00 00       	mov    $0x1,%eax
c01012cc:	d6                   	(bad)  
c01012cd:	89 5d 08             	mov    %ebx,0x8(%ebp)
c01012d0:	89 4d 10             	mov    %ecx,0x10(%ebp)
c01012d3:	89 55 0c             	mov    %edx,0xc(%ebp)
c01012d6:	5b                   	pop    %ebx
c01012d7:	5d                   	pop    %ebp
c01012d8:	e9 23 01 00 00       	jmp    c0101400 <memcpy>
c01012dd:	8d 76 00             	lea    0x0(%esi),%esi

c01012e0 <ramdisk_write>:
c01012e0:	55                   	push   %ebp
c01012e1:	89 e5                	mov    %esp,%ebp
c01012e3:	53                   	push   %ebx
c01012e4:	8b 55 0c             	mov    0xc(%ebp),%edx
c01012e7:	8b 4d 10             	mov    0x10(%ebp),%ecx
c01012ea:	8b 5d 08             	mov    0x8(%ebp),%ebx
c01012ed:	8d 04 0a             	lea    (%edx,%ecx,1),%eax
c01012f0:	3d ff ff 09 00       	cmp    $0x9ffff,%eax
c01012f5:	76 06                	jbe    c01012fd <ramdisk_write+0x1d>
c01012f7:	b8 01 00 00 00       	mov    $0x1,%eax
c01012fc:	d6                   	(bad)  
c01012fd:	89 5d 0c             	mov    %ebx,0xc(%ebp)
c0101300:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0101303:	89 55 08             	mov    %edx,0x8(%ebp)
c0101306:	5b                   	pop    %ebx
c0101307:	5d                   	pop    %ebp
c0101308:	e9 f3 00 00 00       	jmp    c0101400 <memcpy>
c010130d:	66 90                	xchg   %ax,%ax
c010130f:	90                   	nop

c0101310 <sbrk>:
c0101310:	55                   	push   %ebp
c0101311:	89 e5                	mov    %esp,%ebp
c0101313:	83 ec 08             	sub    $0x8,%esp
c0101316:	68 5e 80 10 c0       	push   $0xc010805e
c010131b:	6a 08                	push   $0x8
c010131d:	68 48 80 10 c0       	push   $0xc0108048
c0101322:	68 78 7f 10 c0       	push   $0xc0107f78
c0101327:	e8 14 00 00 00       	call   c0101340 <printk>
c010132c:	b8 01 00 00 00       	mov    $0x1,%eax
c0101331:	d6                   	(bad)  
c0101332:	30 c0                	xor    %al,%al
c0101334:	c9                   	leave  
c0101335:	c3                   	ret    
c0101336:	66 90                	xchg   %ax,%ax
c0101338:	66 90                	xchg   %ax,%ax
c010133a:	66 90                	xchg   %ax,%ax
c010133c:	66 90                	xchg   %ax,%ax
c010133e:	66 90                	xchg   %ax,%ax

c0101340 <printk>:
c0101340:	55                   	push   %ebp
c0101341:	89 e5                	mov    %esp,%ebp
c0101343:	56                   	push   %esi
c0101344:	53                   	push   %ebx
c0101345:	8d 45 0c             	lea    0xc(%ebp),%eax
c0101348:	50                   	push   %eax
c0101349:	ff 75 08             	pushl  0x8(%ebp)
c010134c:	68 00 01 00 00       	push   $0x100
c0101351:	68 00 1e 16 c0       	push   $0xc0161e00
c0101356:	e8 05 02 00 00       	call   c0101560 <vsnprintf>
c010135b:	83 c4 10             	add    $0x10,%esp
c010135e:	85 c0                	test   %eax,%eax
c0101360:	89 c6                	mov    %eax,%esi
c0101362:	7e 26                	jle    c010138a <printk+0x4a>
c0101364:	31 db                	xor    %ebx,%ebx
c0101366:	8d 76 00             	lea    0x0(%esi),%esi
c0101369:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
c0101370:	0f be 93 00 1e 16 c0 	movsbl -0x3fe9e200(%ebx),%edx
c0101377:	83 ec 0c             	sub    $0xc,%esp
c010137a:	83 c3 01             	add    $0x1,%ebx
c010137d:	52                   	push   %edx
c010137e:	e8 5d 00 00 00       	call   c01013e0 <serial_printc>
c0101383:	83 c4 10             	add    $0x10,%esp
c0101386:	39 f3                	cmp    %esi,%ebx
c0101388:	75 e6                	jne    c0101370 <printk+0x30>
c010138a:	8d 65 f8             	lea    -0x8(%ebp),%esp
c010138d:	5b                   	pop    %ebx
c010138e:	5e                   	pop    %esi
c010138f:	5d                   	pop    %ebp
c0101390:	c3                   	ret    
c0101391:	66 90                	xchg   %ax,%ax
c0101393:	66 90                	xchg   %ax,%ax
c0101395:	66 90                	xchg   %ax,%ax
c0101397:	66 90                	xchg   %ax,%ax
c0101399:	66 90                	xchg   %ax,%ax
c010139b:	66 90                	xchg   %ax,%ax
c010139d:	66 90                	xchg   %ax,%ax
c010139f:	90                   	nop

c01013a0 <init_serial>:
c01013a0:	55                   	push   %ebp
c01013a1:	ba f9 03 00 00       	mov    $0x3f9,%edx
c01013a6:	31 c0                	xor    %eax,%eax
c01013a8:	89 e5                	mov    %esp,%ebp
c01013aa:	ee                   	out    %al,(%dx)
c01013ab:	b8 80 ff ff ff       	mov    $0xffffff80,%eax
c01013b0:	b2 fb                	mov    $0xfb,%dl
c01013b2:	ee                   	out    %al,(%dx)
c01013b3:	b8 01 00 00 00       	mov    $0x1,%eax
c01013b8:	b2 f8                	mov    $0xf8,%dl
c01013ba:	ee                   	out    %al,(%dx)
c01013bb:	31 c0                	xor    %eax,%eax
c01013bd:	b2 f9                	mov    $0xf9,%dl
c01013bf:	ee                   	out    %al,(%dx)
c01013c0:	b8 03 00 00 00       	mov    $0x3,%eax
c01013c5:	b2 fb                	mov    $0xfb,%dl
c01013c7:	ee                   	out    %al,(%dx)
c01013c8:	b8 c7 ff ff ff       	mov    $0xffffffc7,%eax
c01013cd:	b2 fa                	mov    $0xfa,%dl
c01013cf:	ee                   	out    %al,(%dx)
c01013d0:	b8 0b 00 00 00       	mov    $0xb,%eax
c01013d5:	b2 fc                	mov    $0xfc,%dl
c01013d7:	ee                   	out    %al,(%dx)
c01013d8:	5d                   	pop    %ebp
c01013d9:	c3                   	ret    
c01013da:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

c01013e0 <serial_printc>:
c01013e0:	55                   	push   %ebp
c01013e1:	ba fd 03 00 00       	mov    $0x3fd,%edx
c01013e6:	89 e5                	mov    %esp,%ebp
c01013e8:	8b 4d 08             	mov    0x8(%ebp),%ecx
c01013eb:	90                   	nop
c01013ec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c01013f0:	ec                   	in     (%dx),%al
c01013f1:	a8 20                	test   $0x20,%al
c01013f3:	74 fb                	je     c01013f0 <serial_printc+0x10>
c01013f5:	ba f8 03 00 00       	mov    $0x3f8,%edx
c01013fa:	89 c8                	mov    %ecx,%eax
c01013fc:	ee                   	out    %al,(%dx)
c01013fd:	5d                   	pop    %ebp
c01013fe:	c3                   	ret    
c01013ff:	90                   	nop

c0101400 <memcpy>:
c0101400:	55                   	push   %ebp
c0101401:	89 e5                	mov    %esp,%ebp
c0101403:	56                   	push   %esi
c0101404:	57                   	push   %edi
c0101405:	53                   	push   %ebx
c0101406:	8b 7d 08             	mov    0x8(%ebp),%edi
c0101409:	8b 4d 10             	mov    0x10(%ebp),%ecx
c010140c:	8b 75 0c             	mov    0xc(%ebp),%esi
c010140f:	fc                   	cld    
c0101410:	83 f9 08             	cmp    $0x8,%ecx
c0101413:	76 26                	jbe    c010143b <memcpy+0x3b>
c0101415:	89 fa                	mov    %edi,%edx
c0101417:	89 cb                	mov    %ecx,%ebx
c0101419:	83 e2 03             	and    $0x3,%edx
c010141c:	74 10                	je     c010142e <memcpy+0x2e>
c010141e:	b9 04 00 00 00       	mov    $0x4,%ecx
c0101423:	29 d1                	sub    %edx,%ecx
c0101425:	83 e1 03             	and    $0x3,%ecx
c0101428:	29 cb                	sub    %ecx,%ebx
c010142a:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
c010142c:	89 d9                	mov    %ebx,%ecx
c010142e:	c1 e9 02             	shr    $0x2,%ecx
c0101431:	8d 76 00             	lea    0x0(%esi),%esi
c0101434:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
c0101436:	89 d9                	mov    %ebx,%ecx
c0101438:	83 e1 03             	and    $0x3,%ecx
c010143b:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
c010143d:	8b 45 08             	mov    0x8(%ebp),%eax
c0101440:	8d 65 f4             	lea    -0xc(%ebp),%esp
c0101443:	5b                   	pop    %ebx
c0101444:	5f                   	pop    %edi
c0101445:	5e                   	pop    %esi
c0101446:	c9                   	leave  
c0101447:	c3                   	ret    

c0101448 <memset>:
c0101448:	55                   	push   %ebp
c0101449:	89 e5                	mov    %esp,%ebp
c010144b:	57                   	push   %edi
c010144c:	8b 7d 08             	mov    0x8(%ebp),%edi
c010144f:	0f b6 45 0c          	movzbl 0xc(%ebp),%eax
c0101453:	8b 4d 10             	mov    0x10(%ebp),%ecx
c0101456:	fc                   	cld    
c0101457:	83 f9 10             	cmp    $0x10,%ecx
c010145a:	76 69                	jbe    c01014c5 <memset+0x7d>
c010145c:	f7 c7 07 00 00 00    	test   $0x7,%edi
c0101462:	74 4c                	je     c01014b0 <memset+0x68>
c0101464:	88 07                	mov    %al,(%edi)
c0101466:	47                   	inc    %edi
c0101467:	49                   	dec    %ecx
c0101468:	f7 c7 07 00 00 00    	test   $0x7,%edi
c010146e:	74 40                	je     c01014b0 <memset+0x68>
c0101470:	88 07                	mov    %al,(%edi)
c0101472:	47                   	inc    %edi
c0101473:	49                   	dec    %ecx
c0101474:	f7 c7 07 00 00 00    	test   $0x7,%edi
c010147a:	74 34                	je     c01014b0 <memset+0x68>
c010147c:	88 07                	mov    %al,(%edi)
c010147e:	47                   	inc    %edi
c010147f:	49                   	dec    %ecx
c0101480:	f7 c7 07 00 00 00    	test   $0x7,%edi
c0101486:	74 28                	je     c01014b0 <memset+0x68>
c0101488:	88 07                	mov    %al,(%edi)
c010148a:	47                   	inc    %edi
c010148b:	49                   	dec    %ecx
c010148c:	f7 c7 07 00 00 00    	test   $0x7,%edi
c0101492:	74 1c                	je     c01014b0 <memset+0x68>
c0101494:	88 07                	mov    %al,(%edi)
c0101496:	47                   	inc    %edi
c0101497:	49                   	dec    %ecx
c0101498:	f7 c7 07 00 00 00    	test   $0x7,%edi
c010149e:	74 10                	je     c01014b0 <memset+0x68>
c01014a0:	88 07                	mov    %al,(%edi)
c01014a2:	47                   	inc    %edi
c01014a3:	49                   	dec    %ecx
c01014a4:	f7 c7 07 00 00 00    	test   $0x7,%edi
c01014aa:	74 04                	je     c01014b0 <memset+0x68>
c01014ac:	88 07                	mov    %al,(%edi)
c01014ae:	47                   	inc    %edi
c01014af:	49                   	dec    %ecx
c01014b0:	88 c4                	mov    %al,%ah
c01014b2:	89 c2                	mov    %eax,%edx
c01014b4:	c1 e2 10             	shl    $0x10,%edx
c01014b7:	09 d0                	or     %edx,%eax
c01014b9:	89 ca                	mov    %ecx,%edx
c01014bb:	c1 e9 02             	shr    $0x2,%ecx
c01014be:	83 e2 03             	and    $0x3,%edx
c01014c1:	f3 ab                	rep stos %eax,%es:(%edi)
c01014c3:	89 d1                	mov    %edx,%ecx
c01014c5:	f3 aa                	rep stos %al,%es:(%edi)
c01014c7:	8b 45 08             	mov    0x8(%ebp),%eax
c01014ca:	8d 65 fc             	lea    -0x4(%ebp),%esp
c01014cd:	5f                   	pop    %edi
c01014ce:	c9                   	leave  
c01014cf:	c3                   	ret    

c01014d0 <_vsnprintf_r>:
c01014d0:	55                   	push   %ebp
c01014d1:	89 e5                	mov    %esp,%ebp
c01014d3:	56                   	push   %esi
c01014d4:	53                   	push   %ebx
c01014d5:	83 c4 80             	add    $0xffffff80,%esp
c01014d8:	8b 5d 10             	mov    0x10(%ebp),%ebx
c01014db:	8b 75 08             	mov    0x8(%ebp),%esi
c01014de:	8b 45 0c             	mov    0xc(%ebp),%eax
c01014e1:	85 db                	test   %ebx,%ebx
c01014e3:	78 63                	js     c0101548 <_vsnprintf_r+0x78>
c01014e5:	ba 08 02 00 00       	mov    $0x208,%edx
c01014ea:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
c01014ef:	66 89 55 9c          	mov    %dx,-0x64(%ebp)
c01014f3:	8d 53 ff             	lea    -0x1(%ebx),%edx
c01014f6:	89 45 90             	mov    %eax,-0x70(%ebp)
c01014f9:	89 45 a0             	mov    %eax,-0x60(%ebp)
c01014fc:	31 c0                	xor    %eax,%eax
c01014fe:	85 db                	test   %ebx,%ebx
c0101500:	0f 45 c2             	cmovne %edx,%eax
c0101503:	89 45 98             	mov    %eax,-0x68(%ebp)
c0101506:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c0101509:	8b 45 18             	mov    0x18(%ebp),%eax
c010150c:	89 34 24             	mov    %esi,(%esp)
c010150f:	66 89 4d 9e          	mov    %cx,-0x62(%ebp)
c0101513:	89 44 24 0c          	mov    %eax,0xc(%esp)
c0101517:	8b 45 14             	mov    0x14(%ebp),%eax
c010151a:	89 44 24 08          	mov    %eax,0x8(%esp)
c010151e:	8d 45 90             	lea    -0x70(%ebp),%eax
c0101521:	89 44 24 04          	mov    %eax,0x4(%esp)
c0101525:	e8 86 00 00 00       	call   c01015b0 <_svfprintf_r>
c010152a:	83 f8 ff             	cmp    $0xffffffff,%eax
c010152d:	7c 11                	jl     c0101540 <_vsnprintf_r+0x70>
c010152f:	85 db                	test   %ebx,%ebx
c0101531:	74 06                	je     c0101539 <_vsnprintf_r+0x69>
c0101533:	8b 55 90             	mov    -0x70(%ebp),%edx
c0101536:	c6 02 00             	movb   $0x0,(%edx)
c0101539:	83 ec 80             	sub    $0xffffff80,%esp
c010153c:	5b                   	pop    %ebx
c010153d:	5e                   	pop    %esi
c010153e:	5d                   	pop    %ebp
c010153f:	c3                   	ret    
c0101540:	c7 06 8b 00 00 00    	movl   $0x8b,(%esi)
c0101546:	eb e7                	jmp    c010152f <_vsnprintf_r+0x5f>
c0101548:	c7 06 8b 00 00 00    	movl   $0x8b,(%esi)
c010154e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c0101553:	eb e4                	jmp    c0101539 <_vsnprintf_r+0x69>
c0101555:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0101559:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0101560 <vsnprintf>:
c0101560:	55                   	push   %ebp
c0101561:	89 e5                	mov    %esp,%ebp
c0101563:	83 ec 28             	sub    $0x28,%esp
c0101566:	e8 35 00 00 00       	call   c01015a0 <__getreent>
c010156b:	8b 55 14             	mov    0x14(%ebp),%edx
c010156e:	89 54 24 10          	mov    %edx,0x10(%esp)
c0101572:	8b 55 10             	mov    0x10(%ebp),%edx
c0101575:	89 04 24             	mov    %eax,(%esp)
c0101578:	89 54 24 0c          	mov    %edx,0xc(%esp)
c010157c:	8b 55 0c             	mov    0xc(%ebp),%edx
c010157f:	89 54 24 08          	mov    %edx,0x8(%esp)
c0101583:	8b 55 08             	mov    0x8(%ebp),%edx
c0101586:	89 54 24 04          	mov    %edx,0x4(%esp)
c010158a:	e8 41 ff ff ff       	call   c01014d0 <_vsnprintf_r>
c010158f:	c9                   	leave  
c0101590:	c3                   	ret    
c0101591:	66 90                	xchg   %ax,%ax
c0101593:	66 90                	xchg   %ax,%ax
c0101595:	66 90                	xchg   %ax,%ax
c0101597:	66 90                	xchg   %ax,%ax
c0101599:	66 90                	xchg   %ax,%ax
c010159b:	66 90                	xchg   %ax,%ax
c010159d:	66 90                	xchg   %ax,%ax
c010159f:	90                   	nop

c01015a0 <__getreent>:
c01015a0:	55                   	push   %ebp
c01015a1:	a1 e0 a4 10 c0       	mov    0xc010a4e0,%eax
c01015a6:	89 e5                	mov    %esp,%ebp
c01015a8:	5d                   	pop    %ebp
c01015a9:	c3                   	ret    
c01015aa:	66 90                	xchg   %ax,%ax
c01015ac:	66 90                	xchg   %ax,%ax
c01015ae:	66 90                	xchg   %ax,%ax

c01015b0 <_svfprintf_r>:
c01015b0:	55                   	push   %ebp
c01015b1:	89 e5                	mov    %esp,%ebp
c01015b3:	57                   	push   %edi
c01015b4:	56                   	push   %esi
c01015b5:	53                   	push   %ebx
c01015b6:	81 ec 1c 01 00 00    	sub    $0x11c,%esp
c01015bc:	8b 45 08             	mov    0x8(%ebp),%eax
c01015bf:	89 04 24             	mov    %eax,(%esp)
c01015c2:	e8 89 33 00 00       	call   c0104950 <_localeconv_r>
c01015c7:	8b 00                	mov    (%eax),%eax
c01015c9:	89 04 24             	mov    %eax,(%esp)
c01015cc:	89 85 0c ff ff ff    	mov    %eax,-0xf4(%ebp)
c01015d2:	e8 d9 4a 00 00       	call   c01060b0 <strlen>
c01015d7:	89 85 08 ff ff ff    	mov    %eax,-0xf8(%ebp)
c01015dd:	8b 45 0c             	mov    0xc(%ebp),%eax
c01015e0:	f6 40 0c 80          	testb  $0x80,0xc(%eax)
c01015e4:	74 0b                	je     c01015f1 <_svfprintf_r+0x41>
c01015e6:	8b 40 10             	mov    0x10(%eax),%eax
c01015e9:	85 c0                	test   %eax,%eax
c01015eb:	0f 84 62 18 00 00    	je     c0102e53 <_svfprintf_r+0x18a3>
c01015f1:	8d 45 a8             	lea    -0x58(%ebp),%eax
c01015f4:	8d 55 a7             	lea    -0x59(%ebp),%edx
c01015f7:	89 c7                	mov    %eax,%edi
c01015f9:	89 85 74 ff ff ff    	mov    %eax,-0x8c(%ebp)
c01015ff:	90                   	nop
c0101600:	90                   	nop
c0101601:	29 d0                	sub    %edx,%eax
c0101603:	c7 85 7c ff ff ff 00 	movl   $0x0,-0x84(%ebp)
c010160a:	00 00 00 
c010160d:	90                   	nop
c010160e:	90                   	nop
c010160f:	90                   	nop
c0101610:	90                   	nop
c0101611:	90                   	nop
c0101612:	90                   	nop
c0101613:	c7 85 78 ff ff ff 00 	movl   $0x0,-0x88(%ebp)
c010161a:	00 00 00 
c010161d:	c7 85 1c ff ff ff 00 	movl   $0x0,-0xe4(%ebp)
c0101624:	00 00 00 
c0101627:	c7 85 18 ff ff ff 00 	movl   $0x0,-0xe8(%ebp)
c010162e:	00 00 00 
c0101631:	c7 85 04 ff ff ff 00 	movl   $0x0,-0xfc(%ebp)
c0101638:	00 00 00 
c010163b:	c7 85 34 ff ff ff 00 	movl   $0x0,-0xcc(%ebp)
c0101642:	00 00 00 
c0101645:	89 85 00 ff ff ff    	mov    %eax,-0x100(%ebp)
c010164b:	8b 45 10             	mov    0x10(%ebp),%eax
c010164e:	8b 5d 10             	mov    0x10(%ebp),%ebx
c0101651:	0f b6 00             	movzbl (%eax),%eax
c0101654:	3c 25                	cmp    $0x25,%al
c0101656:	74 4d                	je     c01016a5 <_svfprintf_r+0xf5>
c0101658:	84 c0                	test   %al,%al
c010165a:	75 08                	jne    c0101664 <_svfprintf_r+0xb4>
c010165c:	eb 47                	jmp    c01016a5 <_svfprintf_r+0xf5>
c010165e:	66 90                	xchg   %ax,%ax
c0101660:	84 c0                	test   %al,%al
c0101662:	74 0a                	je     c010166e <_svfprintf_r+0xbe>
c0101664:	83 c3 01             	add    $0x1,%ebx
c0101667:	0f b6 03             	movzbl (%ebx),%eax
c010166a:	3c 25                	cmp    $0x25,%al
c010166c:	75 f2                	jne    c0101660 <_svfprintf_r+0xb0>
c010166e:	89 de                	mov    %ebx,%esi
c0101670:	2b 75 10             	sub    0x10(%ebp),%esi
c0101673:	74 30                	je     c01016a5 <_svfprintf_r+0xf5>
c0101675:	8b 45 10             	mov    0x10(%ebp),%eax
c0101678:	83 c7 08             	add    $0x8,%edi
c010167b:	89 77 fc             	mov    %esi,-0x4(%edi)
c010167e:	01 b5 7c ff ff ff    	add    %esi,-0x84(%ebp)
c0101684:	89 47 f8             	mov    %eax,-0x8(%edi)
c0101687:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c010168d:	83 c0 01             	add    $0x1,%eax
c0101690:	83 f8 07             	cmp    $0x7,%eax
c0101693:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0101699:	0f 8f 91 00 00 00    	jg     c0101730 <_svfprintf_r+0x180>
c010169f:	01 b5 34 ff ff ff    	add    %esi,-0xcc(%ebp)
c01016a5:	80 3b 00             	cmpb   $0x0,(%ebx)
c01016a8:	0f 84 aa 00 00 00    	je     c0101758 <_svfprintf_r+0x1a8>
c01016ae:	8d 43 01             	lea    0x1(%ebx),%eax
c01016b1:	be 20 00 00 00       	mov    $0x20,%esi
c01016b6:	c6 85 59 ff ff ff 00 	movb   $0x0,-0xa7(%ebp)
c01016bd:	31 db                	xor    %ebx,%ebx
c01016bf:	c7 85 44 ff ff ff ff 	movl   $0xffffffff,-0xbc(%ebp)
c01016c6:	ff ff ff 
c01016c9:	c7 85 40 ff ff ff 00 	movl   $0x0,-0xc0(%ebp)
c01016d0:	00 00 00 
c01016d3:	c7 85 4c ff ff ff 00 	movl   $0x0,-0xb4(%ebp)
c01016da:	00 00 00 
c01016dd:	8d 48 01             	lea    0x1(%eax),%ecx
c01016e0:	0f be 00             	movsbl (%eax),%eax
c01016e3:	8d 50 e0             	lea    -0x20(%eax),%edx
c01016e6:	83 fa 58             	cmp    $0x58,%edx
c01016e9:	0f 87 8f 07 00 00    	ja     c0101e7e <_svfprintf_r+0x8ce>
c01016ef:	ff 24 95 a8 80 10 c0 	jmp    *-0x3fef7f58(,%edx,4)
c01016f6:	66 90                	xchg   %ax,%ax
c01016f8:	83 8d 4c ff ff ff 10 	orl    $0x10,-0xb4(%ebp)
c01016ff:	89 c8                	mov    %ecx,%eax
c0101701:	eb da                	jmp    c01016dd <_svfprintf_r+0x12d>
c0101703:	8b 45 14             	mov    0x14(%ebp),%eax
c0101706:	8b 55 14             	mov    0x14(%ebp),%edx
c0101709:	8b 00                	mov    (%eax),%eax
c010170b:	83 c2 04             	add    $0x4,%edx
c010170e:	89 55 14             	mov    %edx,0x14(%ebp)
c0101711:	85 c0                	test   %eax,%eax
c0101713:	89 85 40 ff ff ff    	mov    %eax,-0xc0(%ebp)
c0101719:	79 e4                	jns    c01016ff <_svfprintf_r+0x14f>
c010171b:	f7 9d 40 ff ff ff    	negl   -0xc0(%ebp)
c0101721:	83 8d 4c ff ff ff 04 	orl    $0x4,-0xb4(%ebp)
c0101728:	89 c8                	mov    %ecx,%eax
c010172a:	eb b1                	jmp    c01016dd <_svfprintf_r+0x12d>
c010172c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0101730:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0101736:	89 44 24 08          	mov    %eax,0x8(%esp)
c010173a:	8b 45 0c             	mov    0xc(%ebp),%eax
c010173d:	89 44 24 04          	mov    %eax,0x4(%esp)
c0101741:	8b 45 08             	mov    0x8(%ebp),%eax
c0101744:	89 04 24             	mov    %eax,(%esp)
c0101747:	e8 e4 49 00 00       	call   c0106130 <__ssprint_r>
c010174c:	85 c0                	test   %eax,%eax
c010174e:	75 30                	jne    c0101780 <_svfprintf_r+0x1d0>
c0101750:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0101753:	e9 47 ff ff ff       	jmp    c010169f <_svfprintf_r+0xef>
c0101758:	8b 85 7c ff ff ff    	mov    -0x84(%ebp),%eax
c010175e:	85 c0                	test   %eax,%eax
c0101760:	74 1e                	je     c0101780 <_svfprintf_r+0x1d0>
c0101762:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0101768:	89 44 24 08          	mov    %eax,0x8(%esp)
c010176c:	8b 45 0c             	mov    0xc(%ebp),%eax
c010176f:	89 44 24 04          	mov    %eax,0x4(%esp)
c0101773:	8b 45 08             	mov    0x8(%ebp),%eax
c0101776:	89 04 24             	mov    %eax,(%esp)
c0101779:	e8 b2 49 00 00       	call   c0106130 <__ssprint_r>
c010177e:	66 90                	xchg   %ax,%ax
c0101780:	8b 55 0c             	mov    0xc(%ebp),%edx
c0101783:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c0101788:	f6 42 0c 40          	testb  $0x40,0xc(%edx)
c010178c:	0f 44 85 34 ff ff ff 	cmove  -0xcc(%ebp),%eax
c0101793:	81 c4 1c 01 00 00    	add    $0x11c,%esp
c0101799:	5b                   	pop    %ebx
c010179a:	5e                   	pop    %esi
c010179b:	5f                   	pop    %edi
c010179c:	5d                   	pop    %ebp
c010179d:	c3                   	ret    
c010179e:	bb 2b 00 00 00       	mov    $0x2b,%ebx
c01017a3:	89 c8                	mov    %ecx,%eax
c01017a5:	e9 33 ff ff ff       	jmp    c01016dd <_svfprintf_r+0x12d>
c01017aa:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c01017b0:	8b 45 14             	mov    0x14(%ebp),%eax
c01017b3:	89 4d 10             	mov    %ecx,0x10(%ebp)
c01017b6:	c6 85 59 ff ff ff 00 	movb   $0x0,-0xa7(%ebp)
c01017bd:	8d 70 04             	lea    0x4(%eax),%esi
c01017c0:	8b 00                	mov    (%eax),%eax
c01017c2:	85 c0                	test   %eax,%eax
c01017c4:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c01017ca:	0f 84 7f 18 00 00    	je     c010304f <_svfprintf_r+0x1a9f>
c01017d0:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
c01017d6:	85 c0                	test   %eax,%eax
c01017d8:	0f 88 b6 17 00 00    	js     c0102f94 <_svfprintf_r+0x19e4>
c01017de:	89 44 24 08          	mov    %eax,0x8(%esp)
c01017e2:	8b 85 28 ff ff ff    	mov    -0xd8(%ebp),%eax
c01017e8:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c01017ef:	00 
c01017f0:	89 04 24             	mov    %eax,(%esp)
c01017f3:	e8 f8 38 00 00       	call   c01050f0 <memchr>
c01017f8:	85 c0                	test   %eax,%eax
c01017fa:	0f 84 a0 19 00 00    	je     c01031a0 <_svfprintf_r+0x1bf0>
c0101800:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
c0101806:	2b 85 28 ff ff ff    	sub    -0xd8(%ebp),%eax
c010180c:	39 d0                	cmp    %edx,%eax
c010180e:	0f 4f c2             	cmovg  %edx,%eax
c0101811:	89 c2                	mov    %eax,%edx
c0101813:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c010181a:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c0101820:	31 c0                	xor    %eax,%eax
c0101822:	85 d2                	test   %edx,%edx
c0101824:	0f 49 c2             	cmovns %edx,%eax
c0101827:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
c010182d:	89 75 14             	mov    %esi,0x14(%ebp)
c0101830:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c0101837:	00 00 00 
c010183a:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c0101841:	00 00 00 
c0101844:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0101848:	84 db                	test   %bl,%bl
c010184a:	74 07                	je     c0101853 <_svfprintf_r+0x2a3>
c010184c:	83 85 48 ff ff ff 01 	addl   $0x1,-0xb8(%ebp)
c0101853:	8b 8d 48 ff ff ff    	mov    -0xb8(%ebp),%ecx
c0101859:	8b b5 4c ff ff ff    	mov    -0xb4(%ebp),%esi
c010185f:	89 c8                	mov    %ecx,%eax
c0101861:	89 f2                	mov    %esi,%edx
c0101863:	83 c0 02             	add    $0x2,%eax
c0101866:	83 e2 02             	and    $0x2,%edx
c0101869:	89 95 30 ff ff ff    	mov    %edx,-0xd0(%ebp)
c010186f:	89 f2                	mov    %esi,%edx
c0101871:	0f 44 c1             	cmove  %ecx,%eax
c0101874:	81 e2 84 00 00 00    	and    $0x84,%edx
c010187a:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
c0101880:	89 95 2c ff ff ff    	mov    %edx,-0xd4(%ebp)
c0101886:	0f 85 1c 06 00 00    	jne    c0101ea8 <_svfprintf_r+0x8f8>
c010188c:	8b b5 40 ff ff ff    	mov    -0xc0(%ebp),%esi
c0101892:	2b b5 48 ff ff ff    	sub    -0xb8(%ebp),%esi
c0101898:	85 f6                	test   %esi,%esi
c010189a:	0f 8e 08 06 00 00    	jle    c0101ea8 <_svfprintf_r+0x8f8>
c01018a0:	83 fe 10             	cmp    $0x10,%esi
c01018a3:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c01018a9:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c01018af:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c01018b5:	7f 11                	jg     c01018c8 <_svfprintf_r+0x318>
c01018b7:	eb 6b                	jmp    c0101924 <_svfprintf_r+0x374>
c01018b9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c01018c0:	83 ee 10             	sub    $0x10,%esi
c01018c3:	83 fe 10             	cmp    $0x10,%esi
c01018c6:	7e 5c                	jle    c0101924 <_svfprintf_r+0x374>
c01018c8:	83 c0 01             	add    $0x1,%eax
c01018cb:	83 c1 10             	add    $0x10,%ecx
c01018ce:	c7 07 1c 82 10 c0    	movl   $0xc010821c,(%edi)
c01018d4:	83 c7 08             	add    $0x8,%edi
c01018d7:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c01018de:	83 f8 07             	cmp    $0x7,%eax
c01018e1:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c01018e7:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c01018ed:	7e d1                	jle    c01018c0 <_svfprintf_r+0x310>
c01018ef:	8b 45 0c             	mov    0xc(%ebp),%eax
c01018f2:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c01018f6:	89 44 24 04          	mov    %eax,0x4(%esp)
c01018fa:	8b 45 08             	mov    0x8(%ebp),%eax
c01018fd:	89 04 24             	mov    %eax,(%esp)
c0101900:	e8 2b 48 00 00       	call   c0106130 <__ssprint_r>
c0101905:	85 c0                	test   %eax,%eax
c0101907:	0f 85 73 fe ff ff    	jne    c0101780 <_svfprintf_r+0x1d0>
c010190d:	83 ee 10             	sub    $0x10,%esi
c0101910:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0101916:	83 fe 10             	cmp    $0x10,%esi
c0101919:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c010191f:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0101922:	7f a4                	jg     c01018c8 <_svfprintf_r+0x318>
c0101924:	83 c0 01             	add    $0x1,%eax
c0101927:	01 f1                	add    %esi,%ecx
c0101929:	83 f8 07             	cmp    $0x7,%eax
c010192c:	c7 07 1c 82 10 c0    	movl   $0xc010821c,(%edi)
c0101932:	89 77 04             	mov    %esi,0x4(%edi)
c0101935:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c010193b:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0101941:	0f 8f 16 0e 00 00    	jg     c010275d <_svfprintf_r+0x11ad>
c0101947:	83 c7 08             	add    $0x8,%edi
c010194a:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c0101951:	e9 58 05 00 00       	jmp    c0101eae <_svfprintf_r+0x8fe>
c0101956:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c010195d:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c0101963:	8b 45 14             	mov    0x14(%ebp),%eax
c0101966:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0101969:	0f 85 fd 04 00 00    	jne    c0101e6c <_svfprintf_r+0x8bc>
c010196f:	f6 85 4c ff ff ff 40 	testb  $0x40,-0xb4(%ebp)
c0101976:	0f 84 f0 04 00 00    	je     c0101e6c <_svfprintf_r+0x8bc>
c010197c:	0f b7 08             	movzwl (%eax),%ecx
c010197f:	83 c0 04             	add    $0x4,%eax
c0101982:	89 45 14             	mov    %eax,0x14(%ebp)
c0101985:	b8 01 00 00 00       	mov    $0x1,%eax
c010198a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0101990:	c6 85 59 ff ff ff 00 	movb   $0x0,-0xa7(%ebp)
c0101997:	31 db                	xor    %ebx,%ebx
c0101999:	8b b5 4c ff ff ff    	mov    -0xb4(%ebp),%esi
c010199f:	89 f2                	mov    %esi,%edx
c01019a1:	80 e2 7f             	and    $0x7f,%dl
c01019a4:	83 bd 44 ff ff ff 00 	cmpl   $0x0,-0xbc(%ebp)
c01019ab:	0f 48 d6             	cmovs  %esi,%edx
c01019ae:	89 95 4c ff ff ff    	mov    %edx,-0xb4(%ebp)
c01019b4:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
c01019ba:	85 d2                	test   %edx,%edx
c01019bc:	75 08                	jne    c01019c6 <_svfprintf_r+0x416>
c01019be:	85 c9                	test   %ecx,%ecx
c01019c0:	0f 84 ea 08 00 00    	je     c01022b0 <_svfprintf_r+0xd00>
c01019c6:	3c 01                	cmp    $0x1,%al
c01019c8:	0f 84 6a 0d 00 00    	je     c0102738 <_svfprintf_r+0x1188>
c01019ce:	3c 02                	cmp    $0x2,%al
c01019d0:	8d 45 a8             	lea    -0x58(%ebp),%eax
c01019d3:	0f 85 bf 0b 00 00    	jne    c0102598 <_svfprintf_r+0xfe8>
c01019d9:	8b b5 18 ff ff ff    	mov    -0xe8(%ebp),%esi
c01019df:	90                   	nop
c01019e0:	89 ca                	mov    %ecx,%edx
c01019e2:	83 e8 01             	sub    $0x1,%eax
c01019e5:	83 e2 0f             	and    $0xf,%edx
c01019e8:	0f b6 14 16          	movzbl (%esi,%edx,1),%edx
c01019ec:	c1 e9 04             	shr    $0x4,%ecx
c01019ef:	85 c9                	test   %ecx,%ecx
c01019f1:	88 10                	mov    %dl,(%eax)
c01019f3:	75 eb                	jne    c01019e0 <_svfprintf_r+0x430>
c01019f5:	8d 55 a8             	lea    -0x58(%ebp),%edx
c01019f8:	29 c2                	sub    %eax,%edx
c01019fa:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c0101a00:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
c0101a06:	66 90                	xchg   %ax,%ax
c0101a08:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
c0101a0e:	8b 95 38 ff ff ff    	mov    -0xc8(%ebp),%edx
c0101a14:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c0101a1b:	00 00 00 
c0101a1e:	39 c2                	cmp    %eax,%edx
c0101a20:	0f 4d c2             	cmovge %edx,%eax
c0101a23:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
c0101a29:	e9 1a fe ff ff       	jmp    c0101848 <_svfprintf_r+0x298>
c0101a2e:	84 db                	test   %bl,%bl
c0101a30:	89 c8                	mov    %ecx,%eax
c0101a32:	0f 44 de             	cmove  %esi,%ebx
c0101a35:	e9 a3 fc ff ff       	jmp    c01016dd <_svfprintf_r+0x12d>
c0101a3a:	83 8d 4c ff ff ff 01 	orl    $0x1,-0xb4(%ebp)
c0101a41:	89 c8                	mov    %ecx,%eax
c0101a43:	e9 95 fc ff ff       	jmp    c01016dd <_svfprintf_r+0x12d>
c0101a48:	81 8d 4c ff ff ff 80 	orl    $0x80,-0xb4(%ebp)
c0101a4f:	00 00 00 
c0101a52:	89 c8                	mov    %ecx,%eax
c0101a54:	e9 84 fc ff ff       	jmp    c01016dd <_svfprintf_r+0x12d>
c0101a59:	89 bd 48 ff ff ff    	mov    %edi,-0xb8(%ebp)
c0101a5f:	8d 50 d0             	lea    -0x30(%eax),%edx
c0101a62:	31 ff                	xor    %edi,%edi
c0101a64:	c7 85 40 ff ff ff 00 	movl   $0x0,-0xc0(%ebp)
c0101a6b:	00 00 00 
c0101a6e:	66 90                	xchg   %ax,%ax
c0101a70:	8d 04 bf             	lea    (%edi,%edi,4),%eax
c0101a73:	83 c1 01             	add    $0x1,%ecx
c0101a76:	8d 3c 42             	lea    (%edx,%eax,2),%edi
c0101a79:	0f be 41 ff          	movsbl -0x1(%ecx),%eax
c0101a7d:	8d 50 d0             	lea    -0x30(%eax),%edx
c0101a80:	83 fa 09             	cmp    $0x9,%edx
c0101a83:	76 eb                	jbe    c0101a70 <_svfprintf_r+0x4c0>
c0101a85:	89 bd 40 ff ff ff    	mov    %edi,-0xc0(%ebp)
c0101a8b:	8b bd 48 ff ff ff    	mov    -0xb8(%ebp),%edi
c0101a91:	e9 4d fc ff ff       	jmp    c01016e3 <_svfprintf_r+0x133>
c0101a96:	83 8d 4c ff ff ff 10 	orl    $0x10,-0xb4(%ebp)
c0101a9d:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c0101aa4:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c0101aaa:	8b 45 14             	mov    0x14(%ebp),%eax
c0101aad:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0101ab0:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
c0101ab6:	0f 85 61 02 00 00    	jne    c0101d1d <_svfprintf_r+0x76d>
c0101abc:	f6 85 4c ff ff ff 40 	testb  $0x40,-0xb4(%ebp)
c0101ac3:	0f 84 54 02 00 00    	je     c0101d1d <_svfprintf_r+0x76d>
c0101ac9:	0f bf 08             	movswl (%eax),%ecx
c0101acc:	83 c0 04             	add    $0x4,%eax
c0101acf:	89 45 14             	mov    %eax,0x14(%ebp)
c0101ad2:	85 c9                	test   %ecx,%ecx
c0101ad4:	0f 88 53 02 00 00    	js     c0101d2d <_svfprintf_r+0x77d>
c0101ada:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c0101ae1:	b8 01 00 00 00       	mov    $0x1,%eax
c0101ae6:	e9 ae fe ff ff       	jmp    c0101999 <_svfprintf_r+0x3e9>
c0101aeb:	f6 85 4c ff ff ff 08 	testb  $0x8,-0xb4(%ebp)
c0101af2:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c0101af8:	8b 45 14             	mov    0x14(%ebp),%eax
c0101afb:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0101afe:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
c0101b04:	0f 84 15 10 00 00    	je     c0102b1f <_svfprintf_r+0x156f>
c0101b0a:	db 28                	fldt   (%eax)
c0101b0c:	83 c0 0c             	add    $0xc,%eax
c0101b0f:	89 45 14             	mov    %eax,0x14(%ebp)
c0101b12:	dd 9d 10 ff ff ff    	fstpl  -0xf0(%ebp)
c0101b18:	dd 85 10 ff ff ff    	fldl   -0xf0(%ebp)
c0101b1e:	dd 1c 24             	fstpl  (%esp)
c0101b21:	e8 aa 44 00 00       	call   c0105fd0 <__fpclassifyd>
c0101b26:	83 f8 01             	cmp    $0x1,%eax
c0101b29:	0f 85 82 0f 00 00    	jne    c0102ab1 <_svfprintf_r+0x1501>
c0101b2f:	90                   	nop
c0101b30:	90                   	nop
c0101b31:	dd 85 10 ff ff ff    	fldl   -0xf0(%ebp)
c0101b37:	d9 c9                	fxch   %st(1)
c0101b39:	df e9                	fucomip %st(1),%st
c0101b3b:	dd d8                	fstp   %st(0)
c0101b3d:	0f 87 59 15 00 00    	ja     c010309c <_svfprintf_r+0x1aec>
c0101b43:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c0101b4a:	83 bd 24 ff ff ff 47 	cmpl   $0x47,-0xdc(%ebp)
c0101b51:	ba 6a 80 10 c0       	mov    $0xc010806a,%edx
c0101b56:	b8 6e 80 10 c0       	mov    $0xc010806e,%eax
c0101b5b:	c7 85 48 ff ff ff 03 	movl   $0x3,-0xb8(%ebp)
c0101b62:	00 00 00 
c0101b65:	0f 4e c2             	cmovle %edx,%eax
c0101b68:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c0101b6e:	81 a5 4c ff ff ff 7f 	andl   $0xffffff7f,-0xb4(%ebp)
c0101b75:	ff ff ff 
c0101b78:	c7 85 38 ff ff ff 03 	movl   $0x3,-0xc8(%ebp)
c0101b7f:	00 00 00 
c0101b82:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c0101b89:	00 00 00 
c0101b8c:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c0101b93:	00 00 00 
c0101b96:	e9 ad fc ff ff       	jmp    c0101848 <_svfprintf_r+0x298>
c0101b9b:	8d 41 01             	lea    0x1(%ecx),%eax
c0101b9e:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
c0101ba4:	0f be 01             	movsbl (%ecx),%eax
c0101ba7:	83 f8 2a             	cmp    $0x2a,%eax
c0101baa:	0f 84 84 18 00 00    	je     c0103434 <_svfprintf_r+0x1e84>
c0101bb0:	8d 50 d0             	lea    -0x30(%eax),%edx
c0101bb3:	31 c9                	xor    %ecx,%ecx
c0101bb5:	83 fa 09             	cmp    $0x9,%edx
c0101bb8:	0f 87 a8 16 00 00    	ja     c0103266 <_svfprintf_r+0x1cb6>
c0101bbe:	89 bd 44 ff ff ff    	mov    %edi,-0xbc(%ebp)
c0101bc4:	8b bd 48 ff ff ff    	mov    -0xb8(%ebp),%edi
c0101bca:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0101bd0:	8d 04 89             	lea    (%ecx,%ecx,4),%eax
c0101bd3:	83 c7 01             	add    $0x1,%edi
c0101bd6:	8d 0c 42             	lea    (%edx,%eax,2),%ecx
c0101bd9:	0f be 47 ff          	movsbl -0x1(%edi),%eax
c0101bdd:	8d 50 d0             	lea    -0x30(%eax),%edx
c0101be0:	83 fa 09             	cmp    $0x9,%edx
c0101be3:	76 eb                	jbe    c0101bd0 <_svfprintf_r+0x620>
c0101be5:	85 c9                	test   %ecx,%ecx
c0101be7:	89 ca                	mov    %ecx,%edx
c0101be9:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
c0101bee:	0f 48 d1             	cmovs  %ecx,%edx
c0101bf1:	89 bd 48 ff ff ff    	mov    %edi,-0xb8(%ebp)
c0101bf7:	8b bd 44 ff ff ff    	mov    -0xbc(%ebp),%edi
c0101bfd:	8b 8d 48 ff ff ff    	mov    -0xb8(%ebp),%ecx
c0101c03:	89 95 44 ff ff ff    	mov    %edx,-0xbc(%ebp)
c0101c09:	e9 d5 fa ff ff       	jmp    c01016e3 <_svfprintf_r+0x133>
c0101c0e:	8b 45 14             	mov    0x14(%ebp),%eax
c0101c11:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0101c14:	83 8d 4c ff ff ff 02 	orl    $0x2,-0xb4(%ebp)
c0101c1b:	8b 08                	mov    (%eax),%ecx
c0101c1d:	83 c0 04             	add    $0x4,%eax
c0101c20:	89 45 14             	mov    %eax,0x14(%ebp)
c0101c23:	b8 02 00 00 00       	mov    $0x2,%eax
c0101c28:	c6 85 5a ff ff ff 30 	movb   $0x30,-0xa6(%ebp)
c0101c2f:	c6 85 5b ff ff ff 78 	movb   $0x78,-0xa5(%ebp)
c0101c36:	c7 85 18 ff ff ff 8b 	movl   $0xc010808b,-0xe8(%ebp)
c0101c3d:	80 10 c0 
c0101c40:	c7 85 24 ff ff ff 78 	movl   $0x78,-0xdc(%ebp)
c0101c47:	00 00 00 
c0101c4a:	e9 41 fd ff ff       	jmp    c0101990 <_svfprintf_r+0x3e0>
c0101c4f:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c0101c56:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c0101c5c:	8b 45 14             	mov    0x14(%ebp),%eax
c0101c5f:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0101c62:	0f 85 87 00 00 00    	jne    c0101cef <_svfprintf_r+0x73f>
c0101c68:	f6 85 4c ff ff ff 40 	testb  $0x40,-0xb4(%ebp)
c0101c6f:	74 7e                	je     c0101cef <_svfprintf_r+0x73f>
c0101c71:	0f b7 08             	movzwl (%eax),%ecx
c0101c74:	83 c0 04             	add    $0x4,%eax
c0101c77:	89 45 14             	mov    %eax,0x14(%ebp)
c0101c7a:	31 c0                	xor    %eax,%eax
c0101c7c:	e9 0f fd ff ff       	jmp    c0101990 <_svfprintf_r+0x3e0>
c0101c81:	83 8d 4c ff ff ff 08 	orl    $0x8,-0xb4(%ebp)
c0101c88:	89 c8                	mov    %ecx,%eax
c0101c8a:	e9 4e fa ff ff       	jmp    c01016dd <_svfprintf_r+0x12d>
c0101c8f:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c0101c96:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0101c99:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
c0101c9f:	0f 85 97 0b 00 00    	jne    c010283c <_svfprintf_r+0x128c>
c0101ca5:	f6 85 4c ff ff ff 40 	testb  $0x40,-0xb4(%ebp)
c0101cac:	0f 84 8a 0b 00 00    	je     c010283c <_svfprintf_r+0x128c>
c0101cb2:	8b 45 14             	mov    0x14(%ebp),%eax
c0101cb5:	0f b7 95 34 ff ff ff 	movzwl -0xcc(%ebp),%edx
c0101cbc:	8b 00                	mov    (%eax),%eax
c0101cbe:	66 89 10             	mov    %dx,(%eax)
c0101cc1:	8b 45 14             	mov    0x14(%ebp),%eax
c0101cc4:	83 c0 04             	add    $0x4,%eax
c0101cc7:	89 45 14             	mov    %eax,0x14(%ebp)
c0101cca:	e9 7c f9 ff ff       	jmp    c010164b <_svfprintf_r+0x9b>
c0101ccf:	83 8d 4c ff ff ff 10 	orl    $0x10,-0xb4(%ebp)
c0101cd6:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c0101cdd:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c0101ce3:	8b 45 14             	mov    0x14(%ebp),%eax
c0101ce6:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0101ce9:	0f 84 79 ff ff ff    	je     c0101c68 <_svfprintf_r+0x6b8>
c0101cef:	8b 08                	mov    (%eax),%ecx
c0101cf1:	83 c0 04             	add    $0x4,%eax
c0101cf4:	89 45 14             	mov    %eax,0x14(%ebp)
c0101cf7:	31 c0                	xor    %eax,%eax
c0101cf9:	e9 92 fc ff ff       	jmp    c0101990 <_svfprintf_r+0x3e0>
c0101cfe:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c0101d05:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c0101d0b:	8b 45 14             	mov    0x14(%ebp),%eax
c0101d0e:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0101d11:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
c0101d17:	0f 84 9f fd ff ff    	je     c0101abc <_svfprintf_r+0x50c>
c0101d1d:	8b 08                	mov    (%eax),%ecx
c0101d1f:	83 c0 04             	add    $0x4,%eax
c0101d22:	89 45 14             	mov    %eax,0x14(%ebp)
c0101d25:	85 c9                	test   %ecx,%ecx
c0101d27:	0f 89 ad fd ff ff    	jns    c0101ada <_svfprintf_r+0x52a>
c0101d2d:	f7 d9                	neg    %ecx
c0101d2f:	bb 2d 00 00 00       	mov    $0x2d,%ebx
c0101d34:	c6 85 59 ff ff ff 2d 	movb   $0x2d,-0xa7(%ebp)
c0101d3b:	b8 01 00 00 00       	mov    $0x1,%eax
c0101d40:	e9 54 fc ff ff       	jmp    c0101999 <_svfprintf_r+0x3e9>
c0101d45:	83 8d 4c ff ff ff 40 	orl    $0x40,-0xb4(%ebp)
c0101d4c:	89 c8                	mov    %ecx,%eax
c0101d4e:	e9 8a f9 ff ff       	jmp    c01016dd <_svfprintf_r+0x12d>
c0101d53:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c0101d5a:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c0101d60:	8b 45 14             	mov    0x14(%ebp),%eax
c0101d63:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0101d66:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
c0101d6c:	c7 85 18 ff ff ff 8b 	movl   $0xc010808b,-0xe8(%ebp)
c0101d73:	80 10 c0 
c0101d76:	75 71                	jne    c0101de9 <_svfprintf_r+0x839>
c0101d78:	f6 85 4c ff ff ff 40 	testb  $0x40,-0xb4(%ebp)
c0101d7f:	74 68                	je     c0101de9 <_svfprintf_r+0x839>
c0101d81:	0f b7 08             	movzwl (%eax),%ecx
c0101d84:	83 c0 04             	add    $0x4,%eax
c0101d87:	89 45 14             	mov    %eax,0x14(%ebp)
c0101d8a:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c0101d91:	b8 02 00 00 00       	mov    $0x2,%eax
c0101d96:	0f 84 f4 fb ff ff    	je     c0101990 <_svfprintf_r+0x3e0>
c0101d9c:	85 c9                	test   %ecx,%ecx
c0101d9e:	0f 84 ec fb ff ff    	je     c0101990 <_svfprintf_r+0x3e0>
c0101da4:	0f b6 95 24 ff ff ff 	movzbl -0xdc(%ebp),%edx
c0101dab:	c6 85 5a ff ff ff 30 	movb   $0x30,-0xa6(%ebp)
c0101db2:	83 8d 4c ff ff ff 02 	orl    $0x2,-0xb4(%ebp)
c0101db9:	88 95 5b ff ff ff    	mov    %dl,-0xa5(%ebp)
c0101dbf:	e9 cc fb ff ff       	jmp    c0101990 <_svfprintf_r+0x3e0>
c0101dc4:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c0101dcb:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c0101dd1:	8b 45 14             	mov    0x14(%ebp),%eax
c0101dd4:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0101dd7:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
c0101ddd:	c7 85 18 ff ff ff 7a 	movl   $0xc010807a,-0xe8(%ebp)
c0101de4:	80 10 c0 
c0101de7:	74 8f                	je     c0101d78 <_svfprintf_r+0x7c8>
c0101de9:	8b 08                	mov    (%eax),%ecx
c0101deb:	83 c0 04             	add    $0x4,%eax
c0101dee:	89 45 14             	mov    %eax,0x14(%ebp)
c0101df1:	eb 97                	jmp    c0101d8a <_svfprintf_r+0x7da>
c0101df3:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c0101df9:	8b 45 14             	mov    0x14(%ebp),%eax
c0101dfc:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0101dff:	c6 85 59 ff ff ff 00 	movb   $0x0,-0xa7(%ebp)
c0101e06:	8b 00                	mov    (%eax),%eax
c0101e08:	88 45 80             	mov    %al,-0x80(%ebp)
c0101e0b:	8b 45 14             	mov    0x14(%ebp),%eax
c0101e0e:	83 c0 04             	add    $0x4,%eax
c0101e11:	89 45 14             	mov    %eax,0x14(%ebp)
c0101e14:	8d 45 80             	lea    -0x80(%ebp),%eax
c0101e17:	31 db                	xor    %ebx,%ebx
c0101e19:	c7 85 48 ff ff ff 01 	movl   $0x1,-0xb8(%ebp)
c0101e20:	00 00 00 
c0101e23:	c7 85 38 ff ff ff 01 	movl   $0x1,-0xc8(%ebp)
c0101e2a:	00 00 00 
c0101e2d:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c0101e34:	00 00 00 
c0101e37:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c0101e3e:	00 00 00 
c0101e41:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c0101e47:	e9 07 fa ff ff       	jmp    c0101853 <_svfprintf_r+0x2a3>
c0101e4c:	83 8d 4c ff ff ff 10 	orl    $0x10,-0xb4(%ebp)
c0101e53:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c0101e5a:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c0101e60:	8b 45 14             	mov    0x14(%ebp),%eax
c0101e63:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0101e66:	0f 84 03 fb ff ff    	je     c010196f <_svfprintf_r+0x3bf>
c0101e6c:	8b 08                	mov    (%eax),%ecx
c0101e6e:	83 c0 04             	add    $0x4,%eax
c0101e71:	89 45 14             	mov    %eax,0x14(%ebp)
c0101e74:	b8 01 00 00 00       	mov    $0x1,%eax
c0101e79:	e9 12 fb ff ff       	jmp    c0101990 <_svfprintf_r+0x3e0>
c0101e7e:	85 c0                	test   %eax,%eax
c0101e80:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c0101e86:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0101e89:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
c0101e8f:	0f 84 c3 f8 ff ff    	je     c0101758 <_svfprintf_r+0x1a8>
c0101e95:	88 45 80             	mov    %al,-0x80(%ebp)
c0101e98:	c6 85 59 ff ff ff 00 	movb   $0x0,-0xa7(%ebp)
c0101e9f:	e9 70 ff ff ff       	jmp    c0101e14 <_svfprintf_r+0x864>
c0101ea4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0101ea8:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0101eae:	84 db                	test   %bl,%bl
c0101eb0:	74 33                	je     c0101ee5 <_svfprintf_r+0x935>
c0101eb2:	8d 85 59 ff ff ff    	lea    -0xa7(%ebp),%eax
c0101eb8:	83 c1 01             	add    $0x1,%ecx
c0101ebb:	89 07                	mov    %eax,(%edi)
c0101ebd:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0101ec3:	83 c7 08             	add    $0x8,%edi
c0101ec6:	c7 47 fc 01 00 00 00 	movl   $0x1,-0x4(%edi)
c0101ecd:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0101ed3:	83 c0 01             	add    $0x1,%eax
c0101ed6:	83 f8 07             	cmp    $0x7,%eax
c0101ed9:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0101edf:	0f 8f 7b 06 00 00    	jg     c0102560 <_svfprintf_r+0xfb0>
c0101ee5:	8b 9d 30 ff ff ff    	mov    -0xd0(%ebp),%ebx
c0101eeb:	85 db                	test   %ebx,%ebx
c0101eed:	74 33                	je     c0101f22 <_svfprintf_r+0x972>
c0101eef:	8d 85 5a ff ff ff    	lea    -0xa6(%ebp),%eax
c0101ef5:	83 c1 02             	add    $0x2,%ecx
c0101ef8:	89 07                	mov    %eax,(%edi)
c0101efa:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0101f00:	83 c7 08             	add    $0x8,%edi
c0101f03:	c7 47 fc 02 00 00 00 	movl   $0x2,-0x4(%edi)
c0101f0a:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0101f10:	83 c0 01             	add    $0x1,%eax
c0101f13:	83 f8 07             	cmp    $0x7,%eax
c0101f16:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0101f1c:	0f 8f 06 06 00 00    	jg     c0102528 <_svfprintf_r+0xf78>
c0101f22:	81 bd 2c ff ff ff 80 	cmpl   $0x80,-0xd4(%ebp)
c0101f29:	00 00 00 
c0101f2c:	0f 84 c6 03 00 00    	je     c01022f8 <_svfprintf_r+0xd48>
c0101f32:	8b b5 44 ff ff ff    	mov    -0xbc(%ebp),%esi
c0101f38:	2b b5 38 ff ff ff    	sub    -0xc8(%ebp),%esi
c0101f3e:	85 f6                	test   %esi,%esi
c0101f40:	0f 8e d2 00 00 00    	jle    c0102018 <_svfprintf_r+0xa68>
c0101f46:	83 fe 10             	cmp    $0x10,%esi
c0101f49:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0101f4f:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c0101f55:	7f 11                	jg     c0101f68 <_svfprintf_r+0x9b8>
c0101f57:	eb 6b                	jmp    c0101fc4 <_svfprintf_r+0xa14>
c0101f59:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0101f60:	83 ee 10             	sub    $0x10,%esi
c0101f63:	83 fe 10             	cmp    $0x10,%esi
c0101f66:	7e 5c                	jle    c0101fc4 <_svfprintf_r+0xa14>
c0101f68:	83 c0 01             	add    $0x1,%eax
c0101f6b:	83 c1 10             	add    $0x10,%ecx
c0101f6e:	c7 07 0c 82 10 c0    	movl   $0xc010820c,(%edi)
c0101f74:	83 c7 08             	add    $0x8,%edi
c0101f77:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c0101f7e:	83 f8 07             	cmp    $0x7,%eax
c0101f81:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0101f87:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0101f8d:	7e d1                	jle    c0101f60 <_svfprintf_r+0x9b0>
c0101f8f:	8b 45 0c             	mov    0xc(%ebp),%eax
c0101f92:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0101f96:	89 44 24 04          	mov    %eax,0x4(%esp)
c0101f9a:	8b 45 08             	mov    0x8(%ebp),%eax
c0101f9d:	89 04 24             	mov    %eax,(%esp)
c0101fa0:	e8 8b 41 00 00       	call   c0106130 <__ssprint_r>
c0101fa5:	85 c0                	test   %eax,%eax
c0101fa7:	0f 85 d3 f7 ff ff    	jne    c0101780 <_svfprintf_r+0x1d0>
c0101fad:	83 ee 10             	sub    $0x10,%esi
c0101fb0:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0101fb6:	83 fe 10             	cmp    $0x10,%esi
c0101fb9:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0101fbf:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0101fc2:	7f a4                	jg     c0101f68 <_svfprintf_r+0x9b8>
c0101fc4:	83 c0 01             	add    $0x1,%eax
c0101fc7:	01 f1                	add    %esi,%ecx
c0101fc9:	c7 07 0c 82 10 c0    	movl   $0xc010820c,(%edi)
c0101fcf:	83 c7 08             	add    $0x8,%edi
c0101fd2:	89 77 fc             	mov    %esi,-0x4(%edi)
c0101fd5:	83 f8 07             	cmp    $0x7,%eax
c0101fd8:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0101fde:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0101fe4:	7e 32                	jle    c0102018 <_svfprintf_r+0xa68>
c0101fe6:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0101fec:	89 44 24 08          	mov    %eax,0x8(%esp)
c0101ff0:	8b 45 0c             	mov    0xc(%ebp),%eax
c0101ff3:	89 44 24 04          	mov    %eax,0x4(%esp)
c0101ff7:	8b 45 08             	mov    0x8(%ebp),%eax
c0101ffa:	89 04 24             	mov    %eax,(%esp)
c0101ffd:	e8 2e 41 00 00       	call   c0106130 <__ssprint_r>
c0102002:	85 c0                	test   %eax,%eax
c0102004:	0f 85 76 f7 ff ff    	jne    c0101780 <_svfprintf_r+0x1d0>
c010200a:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0102010:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0102013:	90                   	nop
c0102014:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0102018:	f7 85 4c ff ff ff 00 	testl  $0x100,-0xb4(%ebp)
c010201f:	01 00 00 
c0102022:	0f 85 50 01 00 00    	jne    c0102178 <_svfprintf_r+0xbc8>
c0102028:	8b 85 28 ff ff ff    	mov    -0xd8(%ebp),%eax
c010202e:	89 07                	mov    %eax,(%edi)
c0102030:	8b 85 38 ff ff ff    	mov    -0xc8(%ebp),%eax
c0102036:	01 c1                	add    %eax,%ecx
c0102038:	89 47 04             	mov    %eax,0x4(%edi)
c010203b:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0102041:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0102047:	83 c0 01             	add    $0x1,%eax
c010204a:	83 f8 07             	cmp    $0x7,%eax
c010204d:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0102053:	0f 8f 6a 04 00 00    	jg     c01024c3 <_svfprintf_r+0xf13>
c0102059:	83 c7 08             	add    $0x8,%edi
c010205c:	f6 85 4c ff ff ff 04 	testb  $0x4,-0xb4(%ebp)
c0102063:	0f 84 d7 00 00 00    	je     c0102140 <_svfprintf_r+0xb90>
c0102069:	8b b5 40 ff ff ff    	mov    -0xc0(%ebp),%esi
c010206f:	2b b5 48 ff ff ff    	sub    -0xb8(%ebp),%esi
c0102075:	85 f6                	test   %esi,%esi
c0102077:	0f 8e c3 00 00 00    	jle    c0102140 <_svfprintf_r+0xb90>
c010207d:	83 fe 10             	cmp    $0x10,%esi
c0102080:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0102086:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c010208c:	7f 0a                	jg     c0102098 <_svfprintf_r+0xae8>
c010208e:	eb 64                	jmp    c01020f4 <_svfprintf_r+0xb44>
c0102090:	83 ee 10             	sub    $0x10,%esi
c0102093:	83 fe 10             	cmp    $0x10,%esi
c0102096:	7e 5c                	jle    c01020f4 <_svfprintf_r+0xb44>
c0102098:	83 c0 01             	add    $0x1,%eax
c010209b:	83 c1 10             	add    $0x10,%ecx
c010209e:	c7 07 1c 82 10 c0    	movl   $0xc010821c,(%edi)
c01020a4:	83 c7 08             	add    $0x8,%edi
c01020a7:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c01020ae:	83 f8 07             	cmp    $0x7,%eax
c01020b1:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c01020b7:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c01020bd:	7e d1                	jle    c0102090 <_svfprintf_r+0xae0>
c01020bf:	8b 45 0c             	mov    0xc(%ebp),%eax
c01020c2:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c01020c6:	89 44 24 04          	mov    %eax,0x4(%esp)
c01020ca:	8b 45 08             	mov    0x8(%ebp),%eax
c01020cd:	89 04 24             	mov    %eax,(%esp)
c01020d0:	e8 5b 40 00 00       	call   c0106130 <__ssprint_r>
c01020d5:	85 c0                	test   %eax,%eax
c01020d7:	0f 85 a3 f6 ff ff    	jne    c0101780 <_svfprintf_r+0x1d0>
c01020dd:	83 ee 10             	sub    $0x10,%esi
c01020e0:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c01020e6:	83 fe 10             	cmp    $0x10,%esi
c01020e9:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c01020ef:	8d 7d a8             	lea    -0x58(%ebp),%edi
c01020f2:	7f a4                	jg     c0102098 <_svfprintf_r+0xae8>
c01020f4:	83 c0 01             	add    $0x1,%eax
c01020f7:	01 f1                	add    %esi,%ecx
c01020f9:	83 f8 07             	cmp    $0x7,%eax
c01020fc:	c7 07 1c 82 10 c0    	movl   $0xc010821c,(%edi)
c0102102:	89 77 04             	mov    %esi,0x4(%edi)
c0102105:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c010210b:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0102111:	7e 2d                	jle    c0102140 <_svfprintf_r+0xb90>
c0102113:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0102119:	89 44 24 08          	mov    %eax,0x8(%esp)
c010211d:	8b 45 0c             	mov    0xc(%ebp),%eax
c0102120:	89 44 24 04          	mov    %eax,0x4(%esp)
c0102124:	8b 45 08             	mov    0x8(%ebp),%eax
c0102127:	89 04 24             	mov    %eax,(%esp)
c010212a:	e8 01 40 00 00       	call   c0106130 <__ssprint_r>
c010212f:	85 c0                	test   %eax,%eax
c0102131:	0f 85 49 f6 ff ff    	jne    c0101780 <_svfprintf_r+0x1d0>
c0102137:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c010213d:	8d 76 00             	lea    0x0(%esi),%esi
c0102140:	8b 85 40 ff ff ff    	mov    -0xc0(%ebp),%eax
c0102146:	8b 95 48 ff ff ff    	mov    -0xb8(%ebp),%edx
c010214c:	39 c2                	cmp    %eax,%edx
c010214e:	0f 4d c2             	cmovge %edx,%eax
c0102151:	01 85 34 ff ff ff    	add    %eax,-0xcc(%ebp)
c0102157:	85 c9                	test   %ecx,%ecx
c0102159:	0f 85 99 03 00 00    	jne    c01024f8 <_svfprintf_r+0xf48>
c010215f:	c7 85 78 ff ff ff 00 	movl   $0x0,-0x88(%ebp)
c0102166:	00 00 00 
c0102169:	8d 7d a8             	lea    -0x58(%ebp),%edi
c010216c:	e9 da f4 ff ff       	jmp    c010164b <_svfprintf_r+0x9b>
c0102171:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0102178:	83 bd 24 ff ff ff 65 	cmpl   $0x65,-0xdc(%ebp)
c010217f:	0f 8e 5b 02 00 00    	jle    c01023e0 <_svfprintf_r+0xe30>
c0102185:	90                   	nop
c0102186:	90                   	nop
c0102187:	90                   	nop
c0102188:	90                   	nop
c0102189:	90                   	nop
c010218a:	90                   	nop
c010218b:	90                   	nop
c010218c:	90                   	nop
c010218d:	90                   	nop
c010218e:	90                   	nop
c010218f:	90                   	nop
c0102190:	90                   	nop
c0102191:	0f 8a 59 04 00 00    	jp     c01025f0 <_svfprintf_r+0x1040>
c0102197:	0f 85 53 04 00 00    	jne    c01025f0 <_svfprintf_r+0x1040>
c010219d:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c01021a3:	83 c1 01             	add    $0x1,%ecx
c01021a6:	83 c7 08             	add    $0x8,%edi
c01021a9:	c7 47 f8 a3 80 10 c0 	movl   $0xc01080a3,-0x8(%edi)
c01021b0:	c7 47 fc 01 00 00 00 	movl   $0x1,-0x4(%edi)
c01021b7:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c01021bd:	83 c0 01             	add    $0x1,%eax
c01021c0:	83 f8 07             	cmp    $0x7,%eax
c01021c3:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c01021c9:	0f 8f 63 09 00 00    	jg     c0102b32 <_svfprintf_r+0x1582>
c01021cf:	8b 85 1c ff ff ff    	mov    -0xe4(%ebp),%eax
c01021d5:	39 85 5c ff ff ff    	cmp    %eax,-0xa4(%ebp)
c01021db:	7c 0d                	jl     c01021ea <_svfprintf_r+0xc3a>
c01021dd:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c01021e4:	0f 84 72 fe ff ff    	je     c010205c <_svfprintf_r+0xaac>
c01021ea:	8b 85 0c ff ff ff    	mov    -0xf4(%ebp),%eax
c01021f0:	83 c7 08             	add    $0x8,%edi
c01021f3:	89 47 f8             	mov    %eax,-0x8(%edi)
c01021f6:	8b 85 08 ff ff ff    	mov    -0xf8(%ebp),%eax
c01021fc:	89 47 fc             	mov    %eax,-0x4(%edi)
c01021ff:	01 c1                	add    %eax,%ecx
c0102201:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0102207:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c010220d:	83 c0 01             	add    $0x1,%eax
c0102210:	83 f8 07             	cmp    $0x7,%eax
c0102213:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0102219:	0f 8f dc 0b 00 00    	jg     c0102dfb <_svfprintf_r+0x184b>
c010221f:	8b 85 1c ff ff ff    	mov    -0xe4(%ebp),%eax
c0102225:	8d 70 ff             	lea    -0x1(%eax),%esi
c0102228:	85 f6                	test   %esi,%esi
c010222a:	0f 8e 2c fe ff ff    	jle    c010205c <_svfprintf_r+0xaac>
c0102230:	83 fe 10             	cmp    $0x10,%esi
c0102233:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0102239:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c010223f:	7f 13                	jg     c0102254 <_svfprintf_r+0xca4>
c0102241:	e9 e6 05 00 00       	jmp    c010282c <_svfprintf_r+0x127c>
c0102246:	66 90                	xchg   %ax,%ax
c0102248:	83 ee 10             	sub    $0x10,%esi
c010224b:	83 fe 10             	cmp    $0x10,%esi
c010224e:	0f 8e d8 05 00 00    	jle    c010282c <_svfprintf_r+0x127c>
c0102254:	83 c0 01             	add    $0x1,%eax
c0102257:	83 c1 10             	add    $0x10,%ecx
c010225a:	c7 07 0c 82 10 c0    	movl   $0xc010820c,(%edi)
c0102260:	83 c7 08             	add    $0x8,%edi
c0102263:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c010226a:	83 f8 07             	cmp    $0x7,%eax
c010226d:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0102273:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0102279:	7e cd                	jle    c0102248 <_svfprintf_r+0xc98>
c010227b:	8b 45 0c             	mov    0xc(%ebp),%eax
c010227e:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0102282:	89 44 24 04          	mov    %eax,0x4(%esp)
c0102286:	8b 45 08             	mov    0x8(%ebp),%eax
c0102289:	89 04 24             	mov    %eax,(%esp)
c010228c:	e8 9f 3e 00 00       	call   c0106130 <__ssprint_r>
c0102291:	85 c0                	test   %eax,%eax
c0102293:	0f 85 e7 f4 ff ff    	jne    c0101780 <_svfprintf_r+0x1d0>
c0102299:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c010229f:	8d 7d a8             	lea    -0x58(%ebp),%edi
c01022a2:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c01022a8:	eb 9e                	jmp    c0102248 <_svfprintf_r+0xc98>
c01022aa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c01022b0:	84 c0                	test   %al,%al
c01022b2:	75 2c                	jne    c01022e0 <_svfprintf_r+0xd30>
c01022b4:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c01022bb:	74 23                	je     c01022e0 <_svfprintf_r+0xd30>
c01022bd:	8b 85 00 ff ff ff    	mov    -0x100(%ebp),%eax
c01022c3:	c6 45 a7 30          	movb   $0x30,-0x59(%ebp)
c01022c7:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c01022cd:	8d 45 a7             	lea    -0x59(%ebp),%eax
c01022d0:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c01022d6:	e9 2d f7 ff ff       	jmp    c0101a08 <_svfprintf_r+0x458>
c01022db:	90                   	nop
c01022dc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c01022e0:	8d 45 a8             	lea    -0x58(%ebp),%eax
c01022e3:	c7 85 38 ff ff ff 00 	movl   $0x0,-0xc8(%ebp)
c01022ea:	00 00 00 
c01022ed:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c01022f3:	e9 10 f7 ff ff       	jmp    c0101a08 <_svfprintf_r+0x458>
c01022f8:	8b b5 40 ff ff ff    	mov    -0xc0(%ebp),%esi
c01022fe:	2b b5 48 ff ff ff    	sub    -0xb8(%ebp),%esi
c0102304:	85 f6                	test   %esi,%esi
c0102306:	0f 8e 26 fc ff ff    	jle    c0101f32 <_svfprintf_r+0x982>
c010230c:	83 fe 10             	cmp    $0x10,%esi
c010230f:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0102315:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c010231b:	7f 0b                	jg     c0102328 <_svfprintf_r+0xd78>
c010231d:	eb 65                	jmp    c0102384 <_svfprintf_r+0xdd4>
c010231f:	90                   	nop
c0102320:	83 ee 10             	sub    $0x10,%esi
c0102323:	83 fe 10             	cmp    $0x10,%esi
c0102326:	7e 5c                	jle    c0102384 <_svfprintf_r+0xdd4>
c0102328:	83 c0 01             	add    $0x1,%eax
c010232b:	83 c1 10             	add    $0x10,%ecx
c010232e:	c7 07 0c 82 10 c0    	movl   $0xc010820c,(%edi)
c0102334:	83 c7 08             	add    $0x8,%edi
c0102337:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c010233e:	83 f8 07             	cmp    $0x7,%eax
c0102341:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0102347:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c010234d:	7e d1                	jle    c0102320 <_svfprintf_r+0xd70>
c010234f:	8b 45 0c             	mov    0xc(%ebp),%eax
c0102352:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0102356:	89 44 24 04          	mov    %eax,0x4(%esp)
c010235a:	8b 45 08             	mov    0x8(%ebp),%eax
c010235d:	89 04 24             	mov    %eax,(%esp)
c0102360:	e8 cb 3d 00 00       	call   c0106130 <__ssprint_r>
c0102365:	85 c0                	test   %eax,%eax
c0102367:	0f 85 13 f4 ff ff    	jne    c0101780 <_svfprintf_r+0x1d0>
c010236d:	83 ee 10             	sub    $0x10,%esi
c0102370:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0102376:	83 fe 10             	cmp    $0x10,%esi
c0102379:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c010237f:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0102382:	7f a4                	jg     c0102328 <_svfprintf_r+0xd78>
c0102384:	83 c0 01             	add    $0x1,%eax
c0102387:	01 f1                	add    %esi,%ecx
c0102389:	c7 07 0c 82 10 c0    	movl   $0xc010820c,(%edi)
c010238f:	83 c7 08             	add    $0x8,%edi
c0102392:	89 77 fc             	mov    %esi,-0x4(%edi)
c0102395:	83 f8 07             	cmp    $0x7,%eax
c0102398:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c010239e:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c01023a4:	0f 8e 88 fb ff ff    	jle    c0101f32 <_svfprintf_r+0x982>
c01023aa:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c01023b0:	89 44 24 08          	mov    %eax,0x8(%esp)
c01023b4:	8b 45 0c             	mov    0xc(%ebp),%eax
c01023b7:	89 44 24 04          	mov    %eax,0x4(%esp)
c01023bb:	8b 45 08             	mov    0x8(%ebp),%eax
c01023be:	89 04 24             	mov    %eax,(%esp)
c01023c1:	e8 6a 3d 00 00       	call   c0106130 <__ssprint_r>
c01023c6:	85 c0                	test   %eax,%eax
c01023c8:	0f 85 b2 f3 ff ff    	jne    c0101780 <_svfprintf_r+0x1d0>
c01023ce:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c01023d4:	8d 7d a8             	lea    -0x58(%ebp),%edi
c01023d7:	e9 56 fb ff ff       	jmp    c0101f32 <_svfprintf_r+0x982>
c01023dc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c01023e0:	83 bd 1c ff ff ff 01 	cmpl   $0x1,-0xe4(%ebp)
c01023e7:	8b 85 28 ff ff ff    	mov    -0xd8(%ebp),%eax
c01023ed:	0f 8e df 05 00 00    	jle    c01029d2 <_svfprintf_r+0x1422>
c01023f3:	89 07                	mov    %eax,(%edi)
c01023f5:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c01023fb:	8d 51 01             	lea    0x1(%ecx),%edx
c01023fe:	c7 47 04 01 00 00 00 	movl   $0x1,0x4(%edi)
c0102405:	83 c7 08             	add    $0x8,%edi
c0102408:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c010240e:	83 c0 01             	add    $0x1,%eax
c0102411:	83 f8 07             	cmp    $0x7,%eax
c0102414:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c010241a:	0f 8f 59 06 00 00    	jg     c0102a79 <_svfprintf_r+0x14c9>
c0102420:	8b 9d 0c ff ff ff    	mov    -0xf4(%ebp),%ebx
c0102426:	83 c0 01             	add    $0x1,%eax
c0102429:	83 c7 08             	add    $0x8,%edi
c010242c:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0102432:	89 5f f8             	mov    %ebx,-0x8(%edi)
c0102435:	8b 9d 08 ff ff ff    	mov    -0xf8(%ebp),%ebx
c010243b:	89 5f fc             	mov    %ebx,-0x4(%edi)
c010243e:	01 da                	add    %ebx,%edx
c0102440:	83 f8 07             	cmp    $0x7,%eax
c0102443:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0102449:	0f 8f f2 05 00 00    	jg     c0102a41 <_svfprintf_r+0x1491>
c010244f:	90                   	nop
c0102450:	90                   	nop
c0102451:	dd 85 10 ff ff ff    	fldl   -0xf0(%ebp)
c0102457:	df e9                	fucomip %st(1),%st
c0102459:	dd d8                	fstp   %st(0)
c010245b:	7a 06                	jp     c0102463 <_svfprintf_r+0xeb3>
c010245d:	0f 84 33 03 00 00    	je     c0102796 <_svfprintf_r+0x11e6>
c0102463:	8b 8d 28 ff ff ff    	mov    -0xd8(%ebp),%ecx
c0102469:	8b 9d 1c ff ff ff    	mov    -0xe4(%ebp),%ebx
c010246f:	83 c1 01             	add    $0x1,%ecx
c0102472:	89 0f                	mov    %ecx,(%edi)
c0102474:	8d 4b ff             	lea    -0x1(%ebx),%ecx
c0102477:	89 4f 04             	mov    %ecx,0x4(%edi)
c010247a:	01 ca                	add    %ecx,%edx
c010247c:	83 c0 01             	add    $0x1,%eax
c010247f:	83 f8 07             	cmp    $0x7,%eax
c0102482:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0102488:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c010248e:	0f 8f 75 05 00 00    	jg     c0102a09 <_svfprintf_r+0x1459>
c0102494:	83 c7 08             	add    $0x8,%edi
c0102497:	8b 9d 04 ff ff ff    	mov    -0xfc(%ebp),%ebx
c010249d:	8d 8d 65 ff ff ff    	lea    -0x9b(%ebp),%ecx
c01024a3:	89 0f                	mov    %ecx,(%edi)
c01024a5:	89 5f 04             	mov    %ebx,0x4(%edi)
c01024a8:	8d 0c 1a             	lea    (%edx,%ebx,1),%ecx
c01024ab:	83 c0 01             	add    $0x1,%eax
c01024ae:	83 f8 07             	cmp    $0x7,%eax
c01024b1:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c01024b7:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c01024bd:	0f 8e 96 fb ff ff    	jle    c0102059 <_svfprintf_r+0xaa9>
c01024c3:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c01024c9:	89 44 24 08          	mov    %eax,0x8(%esp)
c01024cd:	8b 45 0c             	mov    0xc(%ebp),%eax
c01024d0:	89 44 24 04          	mov    %eax,0x4(%esp)
c01024d4:	8b 45 08             	mov    0x8(%ebp),%eax
c01024d7:	89 04 24             	mov    %eax,(%esp)
c01024da:	e8 51 3c 00 00       	call   c0106130 <__ssprint_r>
c01024df:	85 c0                	test   %eax,%eax
c01024e1:	0f 85 99 f2 ff ff    	jne    c0101780 <_svfprintf_r+0x1d0>
c01024e7:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c01024ed:	8d 7d a8             	lea    -0x58(%ebp),%edi
c01024f0:	e9 67 fb ff ff       	jmp    c010205c <_svfprintf_r+0xaac>
c01024f5:	8d 76 00             	lea    0x0(%esi),%esi
c01024f8:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c01024fe:	89 44 24 08          	mov    %eax,0x8(%esp)
c0102502:	8b 45 0c             	mov    0xc(%ebp),%eax
c0102505:	89 44 24 04          	mov    %eax,0x4(%esp)
c0102509:	8b 45 08             	mov    0x8(%ebp),%eax
c010250c:	89 04 24             	mov    %eax,(%esp)
c010250f:	e8 1c 3c 00 00       	call   c0106130 <__ssprint_r>
c0102514:	85 c0                	test   %eax,%eax
c0102516:	0f 84 43 fc ff ff    	je     c010215f <_svfprintf_r+0xbaf>
c010251c:	e9 5f f2 ff ff       	jmp    c0101780 <_svfprintf_r+0x1d0>
c0102521:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0102528:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c010252e:	89 44 24 08          	mov    %eax,0x8(%esp)
c0102532:	8b 45 0c             	mov    0xc(%ebp),%eax
c0102535:	89 44 24 04          	mov    %eax,0x4(%esp)
c0102539:	8b 45 08             	mov    0x8(%ebp),%eax
c010253c:	89 04 24             	mov    %eax,(%esp)
c010253f:	e8 ec 3b 00 00       	call   c0106130 <__ssprint_r>
c0102544:	85 c0                	test   %eax,%eax
c0102546:	0f 85 34 f2 ff ff    	jne    c0101780 <_svfprintf_r+0x1d0>
c010254c:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0102552:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0102555:	e9 c8 f9 ff ff       	jmp    c0101f22 <_svfprintf_r+0x972>
c010255a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0102560:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0102566:	89 44 24 08          	mov    %eax,0x8(%esp)
c010256a:	8b 45 0c             	mov    0xc(%ebp),%eax
c010256d:	89 44 24 04          	mov    %eax,0x4(%esp)
c0102571:	8b 45 08             	mov    0x8(%ebp),%eax
c0102574:	89 04 24             	mov    %eax,(%esp)
c0102577:	e8 b4 3b 00 00       	call   c0106130 <__ssprint_r>
c010257c:	85 c0                	test   %eax,%eax
c010257e:	0f 85 fc f1 ff ff    	jne    c0101780 <_svfprintf_r+0x1d0>
c0102584:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c010258a:	8d 7d a8             	lea    -0x58(%ebp),%edi
c010258d:	e9 53 f9 ff ff       	jmp    c0101ee5 <_svfprintf_r+0x935>
c0102592:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0102598:	89 c2                	mov    %eax,%edx
c010259a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c01025a0:	89 c8                	mov    %ecx,%eax
c01025a2:	83 ea 01             	sub    $0x1,%edx
c01025a5:	83 e0 07             	and    $0x7,%eax
c01025a8:	c1 e9 03             	shr    $0x3,%ecx
c01025ab:	83 c0 30             	add    $0x30,%eax
c01025ae:	85 c9                	test   %ecx,%ecx
c01025b0:	88 02                	mov    %al,(%edx)
c01025b2:	75 ec                	jne    c01025a0 <_svfprintf_r+0xff0>
c01025b4:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c01025bb:	89 95 28 ff ff ff    	mov    %edx,-0xd8(%ebp)
c01025c1:	0f 84 5b 01 00 00    	je     c0102722 <_svfprintf_r+0x1172>
c01025c7:	3c 30                	cmp    $0x30,%al
c01025c9:	74 0b                	je     c01025d6 <_svfprintf_r+0x1026>
c01025cb:	83 ad 28 ff ff ff 01 	subl   $0x1,-0xd8(%ebp)
c01025d2:	c6 42 ff 30          	movb   $0x30,-0x1(%edx)
c01025d6:	8d 45 a8             	lea    -0x58(%ebp),%eax
c01025d9:	2b 85 28 ff ff ff    	sub    -0xd8(%ebp),%eax
c01025df:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c01025e5:	e9 1e f4 ff ff       	jmp    c0101a08 <_svfprintf_r+0x458>
c01025ea:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c01025f0:	8b 9d 5c ff ff ff    	mov    -0xa4(%ebp),%ebx
c01025f6:	85 db                	test   %ebx,%ebx
c01025f8:	0f 8e 66 05 00 00    	jle    c0102b64 <_svfprintf_r+0x15b4>
c01025fe:	8b 95 28 ff ff ff    	mov    -0xd8(%ebp),%edx
c0102604:	8b 85 1c ff ff ff    	mov    -0xe4(%ebp),%eax
c010260a:	01 d0                	add    %edx,%eax
c010260c:	89 c3                	mov    %eax,%ebx
c010260e:	29 d3                	sub    %edx,%ebx
c0102610:	89 85 44 ff ff ff    	mov    %eax,-0xbc(%ebp)
c0102616:	89 d0                	mov    %edx,%eax
c0102618:	8b 95 20 ff ff ff    	mov    -0xe0(%ebp),%edx
c010261e:	39 d3                	cmp    %edx,%ebx
c0102620:	0f 4f da             	cmovg  %edx,%ebx
c0102623:	85 db                	test   %ebx,%ebx
c0102625:	7e 28                	jle    c010264f <_svfprintf_r+0x109f>
c0102627:	89 07                	mov    %eax,(%edi)
c0102629:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c010262f:	01 d9                	add    %ebx,%ecx
c0102631:	89 5f 04             	mov    %ebx,0x4(%edi)
c0102634:	83 c7 08             	add    $0x8,%edi
c0102637:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c010263d:	83 c0 01             	add    $0x1,%eax
c0102640:	83 f8 07             	cmp    $0x7,%eax
c0102643:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0102649:	0f 8f 58 09 00 00    	jg     c0102fa7 <_svfprintf_r+0x19f7>
c010264f:	8b b5 20 ff ff ff    	mov    -0xe0(%ebp),%esi
c0102655:	31 c0                	xor    %eax,%eax
c0102657:	85 db                	test   %ebx,%ebx
c0102659:	0f 49 c3             	cmovns %ebx,%eax
c010265c:	29 c6                	sub    %eax,%esi
c010265e:	85 f6                	test   %esi,%esi
c0102660:	0f 8e 40 02 00 00    	jle    c01028a6 <_svfprintf_r+0x12f6>
c0102666:	83 fe 10             	cmp    $0x10,%esi
c0102669:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c010266f:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c0102675:	7f 15                	jg     c010268c <_svfprintf_r+0x10dc>
c0102677:	e9 db 01 00 00       	jmp    c0102857 <_svfprintf_r+0x12a7>
c010267c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0102680:	83 ee 10             	sub    $0x10,%esi
c0102683:	83 fe 10             	cmp    $0x10,%esi
c0102686:	0f 8e cb 01 00 00    	jle    c0102857 <_svfprintf_r+0x12a7>
c010268c:	83 c0 01             	add    $0x1,%eax
c010268f:	83 c1 10             	add    $0x10,%ecx
c0102692:	c7 07 0c 82 10 c0    	movl   $0xc010820c,(%edi)
c0102698:	83 c7 08             	add    $0x8,%edi
c010269b:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c01026a2:	83 f8 07             	cmp    $0x7,%eax
c01026a5:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c01026ab:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c01026b1:	7e cd                	jle    c0102680 <_svfprintf_r+0x10d0>
c01026b3:	8b 45 0c             	mov    0xc(%ebp),%eax
c01026b6:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c01026ba:	89 44 24 04          	mov    %eax,0x4(%esp)
c01026be:	8b 45 08             	mov    0x8(%ebp),%eax
c01026c1:	89 04 24             	mov    %eax,(%esp)
c01026c4:	e8 67 3a 00 00       	call   c0106130 <__ssprint_r>
c01026c9:	85 c0                	test   %eax,%eax
c01026cb:	0f 85 af f0 ff ff    	jne    c0101780 <_svfprintf_r+0x1d0>
c01026d1:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c01026d7:	8d 7d a8             	lea    -0x58(%ebp),%edi
c01026da:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c01026e0:	eb 9e                	jmp    c0102680 <_svfprintf_r+0x10d0>
c01026e2:	8d 45 a8             	lea    -0x58(%ebp),%eax
c01026e5:	be cd cc cc cc       	mov    $0xcccccccd,%esi
c01026ea:	89 bd 48 ff ff ff    	mov    %edi,-0xb8(%ebp)
c01026f0:	89 c7                	mov    %eax,%edi
c01026f2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c01026f8:	89 c8                	mov    %ecx,%eax
c01026fa:	83 ef 01             	sub    $0x1,%edi
c01026fd:	f7 e6                	mul    %esi
c01026ff:	c1 ea 03             	shr    $0x3,%edx
c0102702:	8d 04 92             	lea    (%edx,%edx,4),%eax
c0102705:	01 c0                	add    %eax,%eax
c0102707:	29 c1                	sub    %eax,%ecx
c0102709:	83 c1 30             	add    $0x30,%ecx
c010270c:	85 d2                	test   %edx,%edx
c010270e:	88 0f                	mov    %cl,(%edi)
c0102710:	89 d1                	mov    %edx,%ecx
c0102712:	75 e4                	jne    c01026f8 <_svfprintf_r+0x1148>
c0102714:	89 fa                	mov    %edi,%edx
c0102716:	89 bd 28 ff ff ff    	mov    %edi,-0xd8(%ebp)
c010271c:	8b bd 48 ff ff ff    	mov    -0xb8(%ebp),%edi
c0102722:	8d 45 a8             	lea    -0x58(%ebp),%eax
c0102725:	29 d0                	sub    %edx,%eax
c0102727:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c010272d:	e9 d6 f2 ff ff       	jmp    c0101a08 <_svfprintf_r+0x458>
c0102732:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0102738:	83 f9 09             	cmp    $0x9,%ecx
c010273b:	77 a5                	ja     c01026e2 <_svfprintf_r+0x1132>
c010273d:	8b 85 00 ff ff ff    	mov    -0x100(%ebp),%eax
c0102743:	83 c1 30             	add    $0x30,%ecx
c0102746:	88 4d a7             	mov    %cl,-0x59(%ebp)
c0102749:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c010274f:	8d 45 a7             	lea    -0x59(%ebp),%eax
c0102752:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c0102758:	e9 ab f2 ff ff       	jmp    c0101a08 <_svfprintf_r+0x458>
c010275d:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0102763:	89 44 24 08          	mov    %eax,0x8(%esp)
c0102767:	8b 45 0c             	mov    0xc(%ebp),%eax
c010276a:	89 44 24 04          	mov    %eax,0x4(%esp)
c010276e:	8b 45 08             	mov    0x8(%ebp),%eax
c0102771:	89 04 24             	mov    %eax,(%esp)
c0102774:	e8 b7 39 00 00       	call   c0106130 <__ssprint_r>
c0102779:	85 c0                	test   %eax,%eax
c010277b:	0f 85 ff ef ff ff    	jne    c0101780 <_svfprintf_r+0x1d0>
c0102781:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c0102788:	8d 7d a8             	lea    -0x58(%ebp),%edi
c010278b:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0102791:	e9 18 f7 ff ff       	jmp    c0101eae <_svfprintf_r+0x8fe>
c0102796:	8b 9d 1c ff ff ff    	mov    -0xe4(%ebp),%ebx
c010279c:	8d 73 ff             	lea    -0x1(%ebx),%esi
c010279f:	85 f6                	test   %esi,%esi
c01027a1:	0f 8e f0 fc ff ff    	jle    c0102497 <_svfprintf_r+0xee7>
c01027a7:	83 fe 10             	cmp    $0x10,%esi
c01027aa:	7e 70                	jle    c010281c <_svfprintf_r+0x126c>
c01027ac:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c01027b2:	eb 0c                	jmp    c01027c0 <_svfprintf_r+0x1210>
c01027b4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c01027b8:	83 ee 10             	sub    $0x10,%esi
c01027bb:	83 fe 10             	cmp    $0x10,%esi
c01027be:	7e 5c                	jle    c010281c <_svfprintf_r+0x126c>
c01027c0:	83 c0 01             	add    $0x1,%eax
c01027c3:	83 c2 10             	add    $0x10,%edx
c01027c6:	c7 07 0c 82 10 c0    	movl   $0xc010820c,(%edi)
c01027cc:	83 c7 08             	add    $0x8,%edi
c01027cf:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c01027d6:	83 f8 07             	cmp    $0x7,%eax
c01027d9:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c01027df:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c01027e5:	7e d1                	jle    c01027b8 <_svfprintf_r+0x1208>
c01027e7:	8b 45 0c             	mov    0xc(%ebp),%eax
c01027ea:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c01027ee:	89 44 24 04          	mov    %eax,0x4(%esp)
c01027f2:	8b 45 08             	mov    0x8(%ebp),%eax
c01027f5:	89 04 24             	mov    %eax,(%esp)
c01027f8:	e8 33 39 00 00       	call   c0106130 <__ssprint_r>
c01027fd:	85 c0                	test   %eax,%eax
c01027ff:	0f 85 7b ef ff ff    	jne    c0101780 <_svfprintf_r+0x1d0>
c0102805:	83 ee 10             	sub    $0x10,%esi
c0102808:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c010280e:	83 fe 10             	cmp    $0x10,%esi
c0102811:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0102817:	8d 7d a8             	lea    -0x58(%ebp),%edi
c010281a:	7f a4                	jg     c01027c0 <_svfprintf_r+0x1210>
c010281c:	c7 07 0c 82 10 c0    	movl   $0xc010820c,(%edi)
c0102822:	01 f2                	add    %esi,%edx
c0102824:	89 77 04             	mov    %esi,0x4(%edi)
c0102827:	e9 50 fc ff ff       	jmp    c010247c <_svfprintf_r+0xecc>
c010282c:	c7 07 0c 82 10 c0    	movl   $0xc010820c,(%edi)
c0102832:	01 f1                	add    %esi,%ecx
c0102834:	89 77 04             	mov    %esi,0x4(%edi)
c0102837:	e9 6f fc ff ff       	jmp    c01024ab <_svfprintf_r+0xefb>
c010283c:	8b 45 14             	mov    0x14(%ebp),%eax
c010283f:	8b 95 34 ff ff ff    	mov    -0xcc(%ebp),%edx
c0102845:	8b 00                	mov    (%eax),%eax
c0102847:	89 10                	mov    %edx,(%eax)
c0102849:	8b 45 14             	mov    0x14(%ebp),%eax
c010284c:	83 c0 04             	add    $0x4,%eax
c010284f:	89 45 14             	mov    %eax,0x14(%ebp)
c0102852:	e9 f4 ed ff ff       	jmp    c010164b <_svfprintf_r+0x9b>
c0102857:	83 c0 01             	add    $0x1,%eax
c010285a:	01 f1                	add    %esi,%ecx
c010285c:	c7 07 0c 82 10 c0    	movl   $0xc010820c,(%edi)
c0102862:	83 c7 08             	add    $0x8,%edi
c0102865:	89 77 fc             	mov    %esi,-0x4(%edi)
c0102868:	83 f8 07             	cmp    $0x7,%eax
c010286b:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0102871:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0102877:	7e 2d                	jle    c01028a6 <_svfprintf_r+0x12f6>
c0102879:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c010287f:	89 44 24 08          	mov    %eax,0x8(%esp)
c0102883:	8b 45 0c             	mov    0xc(%ebp),%eax
c0102886:	89 44 24 04          	mov    %eax,0x4(%esp)
c010288a:	8b 45 08             	mov    0x8(%ebp),%eax
c010288d:	89 04 24             	mov    %eax,(%esp)
c0102890:	e8 9b 38 00 00       	call   c0106130 <__ssprint_r>
c0102895:	85 c0                	test   %eax,%eax
c0102897:	0f 85 e3 ee ff ff    	jne    c0101780 <_svfprintf_r+0x1d0>
c010289d:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c01028a3:	8d 7d a8             	lea    -0x58(%ebp),%edi
c01028a6:	8b 85 28 ff ff ff    	mov    -0xd8(%ebp),%eax
c01028ac:	8b 95 5c ff ff ff    	mov    -0xa4(%ebp),%edx
c01028b2:	03 85 20 ff ff ff    	add    -0xe0(%ebp),%eax
c01028b8:	3b 95 1c ff ff ff    	cmp    -0xe4(%ebp),%edx
c01028be:	89 c6                	mov    %eax,%esi
c01028c0:	7c 0d                	jl     c01028cf <_svfprintf_r+0x131f>
c01028c2:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c01028c9:	0f 84 5e 05 00 00    	je     c0102e2d <_svfprintf_r+0x187d>
c01028cf:	8b 85 0c ff ff ff    	mov    -0xf4(%ebp),%eax
c01028d5:	89 07                	mov    %eax,(%edi)
c01028d7:	8b 85 08 ff ff ff    	mov    -0xf8(%ebp),%eax
c01028dd:	01 c1                	add    %eax,%ecx
c01028df:	89 47 04             	mov    %eax,0x4(%edi)
c01028e2:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c01028e8:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c01028ee:	83 c0 01             	add    $0x1,%eax
c01028f1:	83 f8 07             	cmp    $0x7,%eax
c01028f4:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c01028fa:	0f 8f d9 06 00 00    	jg     c0102fd9 <_svfprintf_r+0x1a29>
c0102900:	83 c7 08             	add    $0x8,%edi
c0102903:	89 d0                	mov    %edx,%eax
c0102905:	8b 9d 44 ff ff ff    	mov    -0xbc(%ebp),%ebx
c010290b:	89 f2                	mov    %esi,%edx
c010290d:	29 f3                	sub    %esi,%ebx
c010290f:	8b b5 1c ff ff ff    	mov    -0xe4(%ebp),%esi
c0102915:	29 c6                	sub    %eax,%esi
c0102917:	39 de                	cmp    %ebx,%esi
c0102919:	0f 4e de             	cmovle %esi,%ebx
c010291c:	85 db                	test   %ebx,%ebx
c010291e:	7e 29                	jle    c0102949 <_svfprintf_r+0x1399>
c0102920:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0102926:	01 d9                	add    %ebx,%ecx
c0102928:	83 c7 08             	add    $0x8,%edi
c010292b:	89 57 f8             	mov    %edx,-0x8(%edi)
c010292e:	89 5f fc             	mov    %ebx,-0x4(%edi)
c0102931:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0102937:	83 c0 01             	add    $0x1,%eax
c010293a:	83 f8 07             	cmp    $0x7,%eax
c010293d:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0102943:	0f 8f c8 06 00 00    	jg     c0103011 <_svfprintf_r+0x1a61>
c0102949:	31 c0                	xor    %eax,%eax
c010294b:	85 db                	test   %ebx,%ebx
c010294d:	0f 49 c3             	cmovns %ebx,%eax
c0102950:	29 c6                	sub    %eax,%esi
c0102952:	85 f6                	test   %esi,%esi
c0102954:	0f 8e 02 f7 ff ff    	jle    c010205c <_svfprintf_r+0xaac>
c010295a:	83 fe 10             	cmp    $0x10,%esi
c010295d:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0102963:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c0102969:	7f 11                	jg     c010297c <_svfprintf_r+0x13cc>
c010296b:	e9 bc fe ff ff       	jmp    c010282c <_svfprintf_r+0x127c>
c0102970:	83 ee 10             	sub    $0x10,%esi
c0102973:	83 fe 10             	cmp    $0x10,%esi
c0102976:	0f 8e b0 fe ff ff    	jle    c010282c <_svfprintf_r+0x127c>
c010297c:	83 c0 01             	add    $0x1,%eax
c010297f:	83 c1 10             	add    $0x10,%ecx
c0102982:	c7 07 0c 82 10 c0    	movl   $0xc010820c,(%edi)
c0102988:	83 c7 08             	add    $0x8,%edi
c010298b:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c0102992:	83 f8 07             	cmp    $0x7,%eax
c0102995:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c010299b:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c01029a1:	7e cd                	jle    c0102970 <_svfprintf_r+0x13c0>
c01029a3:	8b 45 0c             	mov    0xc(%ebp),%eax
c01029a6:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c01029aa:	89 44 24 04          	mov    %eax,0x4(%esp)
c01029ae:	8b 45 08             	mov    0x8(%ebp),%eax
c01029b1:	89 04 24             	mov    %eax,(%esp)
c01029b4:	e8 77 37 00 00       	call   c0106130 <__ssprint_r>
c01029b9:	85 c0                	test   %eax,%eax
c01029bb:	0f 85 bf ed ff ff    	jne    c0101780 <_svfprintf_r+0x1d0>
c01029c1:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c01029c7:	8d 7d a8             	lea    -0x58(%ebp),%edi
c01029ca:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c01029d0:	eb 9e                	jmp    c0102970 <_svfprintf_r+0x13c0>
c01029d2:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c01029d9:	0f 85 14 fa ff ff    	jne    c01023f3 <_svfprintf_r+0xe43>
c01029df:	89 07                	mov    %eax,(%edi)
c01029e1:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c01029e7:	8d 51 01             	lea    0x1(%ecx),%edx
c01029ea:	c7 47 04 01 00 00 00 	movl   $0x1,0x4(%edi)
c01029f1:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c01029f7:	83 c0 01             	add    $0x1,%eax
c01029fa:	83 f8 07             	cmp    $0x7,%eax
c01029fd:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0102a03:	0f 8e 8b fa ff ff    	jle    c0102494 <_svfprintf_r+0xee4>
c0102a09:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0102a0f:	89 44 24 08          	mov    %eax,0x8(%esp)
c0102a13:	8b 45 0c             	mov    0xc(%ebp),%eax
c0102a16:	89 44 24 04          	mov    %eax,0x4(%esp)
c0102a1a:	8b 45 08             	mov    0x8(%ebp),%eax
c0102a1d:	89 04 24             	mov    %eax,(%esp)
c0102a20:	e8 0b 37 00 00       	call   c0106130 <__ssprint_r>
c0102a25:	85 c0                	test   %eax,%eax
c0102a27:	0f 85 53 ed ff ff    	jne    c0101780 <_svfprintf_r+0x1d0>
c0102a2d:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0102a33:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0102a36:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0102a3c:	e9 56 fa ff ff       	jmp    c0102497 <_svfprintf_r+0xee7>
c0102a41:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0102a47:	89 44 24 08          	mov    %eax,0x8(%esp)
c0102a4b:	8b 45 0c             	mov    0xc(%ebp),%eax
c0102a4e:	89 44 24 04          	mov    %eax,0x4(%esp)
c0102a52:	8b 45 08             	mov    0x8(%ebp),%eax
c0102a55:	89 04 24             	mov    %eax,(%esp)
c0102a58:	e8 d3 36 00 00       	call   c0106130 <__ssprint_r>
c0102a5d:	85 c0                	test   %eax,%eax
c0102a5f:	0f 85 1b ed ff ff    	jne    c0101780 <_svfprintf_r+0x1d0>
c0102a65:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0102a6b:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0102a6e:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0102a74:	e9 d6 f9 ff ff       	jmp    c010244f <_svfprintf_r+0xe9f>
c0102a79:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0102a7f:	89 44 24 08          	mov    %eax,0x8(%esp)
c0102a83:	8b 45 0c             	mov    0xc(%ebp),%eax
c0102a86:	89 44 24 04          	mov    %eax,0x4(%esp)
c0102a8a:	8b 45 08             	mov    0x8(%ebp),%eax
c0102a8d:	89 04 24             	mov    %eax,(%esp)
c0102a90:	e8 9b 36 00 00       	call   c0106130 <__ssprint_r>
c0102a95:	85 c0                	test   %eax,%eax
c0102a97:	0f 85 e3 ec ff ff    	jne    c0101780 <_svfprintf_r+0x1d0>
c0102a9d:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0102aa3:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0102aa6:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0102aac:	e9 6f f9 ff ff       	jmp    c0102420 <_svfprintf_r+0xe70>
c0102ab1:	dd 85 10 ff ff ff    	fldl   -0xf0(%ebp)
c0102ab7:	dd 1c 24             	fstpl  (%esp)
c0102aba:	e8 11 35 00 00       	call   c0105fd0 <__fpclassifyd>
c0102abf:	85 c0                	test   %eax,%eax
c0102ac1:	0f 85 a3 01 00 00    	jne    c0102c6a <_svfprintf_r+0x16ba>
c0102ac7:	83 bd 24 ff ff ff 47 	cmpl   $0x47,-0xdc(%ebp)
c0102ace:	ba 72 80 10 c0       	mov    $0xc0108072,%edx
c0102ad3:	b8 76 80 10 c0       	mov    $0xc0108076,%eax
c0102ad8:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c0102adf:	c7 85 48 ff ff ff 03 	movl   $0x3,-0xb8(%ebp)
c0102ae6:	00 00 00 
c0102ae9:	0f 4e c2             	cmovle %edx,%eax
c0102aec:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c0102af2:	81 a5 4c ff ff ff 7f 	andl   $0xffffff7f,-0xb4(%ebp)
c0102af9:	ff ff ff 
c0102afc:	c7 85 38 ff ff ff 03 	movl   $0x3,-0xc8(%ebp)
c0102b03:	00 00 00 
c0102b06:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c0102b0d:	00 00 00 
c0102b10:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c0102b17:	00 00 00 
c0102b1a:	e9 29 ed ff ff       	jmp    c0101848 <_svfprintf_r+0x298>
c0102b1f:	dd 00                	fldl   (%eax)
c0102b21:	83 c0 08             	add    $0x8,%eax
c0102b24:	dd 9d 10 ff ff ff    	fstpl  -0xf0(%ebp)
c0102b2a:	89 45 14             	mov    %eax,0x14(%ebp)
c0102b2d:	e9 e6 ef ff ff       	jmp    c0101b18 <_svfprintf_r+0x568>
c0102b32:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0102b38:	89 44 24 08          	mov    %eax,0x8(%esp)
c0102b3c:	8b 45 0c             	mov    0xc(%ebp),%eax
c0102b3f:	89 44 24 04          	mov    %eax,0x4(%esp)
c0102b43:	8b 45 08             	mov    0x8(%ebp),%eax
c0102b46:	89 04 24             	mov    %eax,(%esp)
c0102b49:	e8 e2 35 00 00       	call   c0106130 <__ssprint_r>
c0102b4e:	85 c0                	test   %eax,%eax
c0102b50:	0f 85 2a ec ff ff    	jne    c0101780 <_svfprintf_r+0x1d0>
c0102b56:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0102b5c:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0102b5f:	e9 6b f6 ff ff       	jmp    c01021cf <_svfprintf_r+0xc1f>
c0102b64:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0102b6a:	83 c1 01             	add    $0x1,%ecx
c0102b6d:	83 c7 08             	add    $0x8,%edi
c0102b70:	c7 47 f8 a3 80 10 c0 	movl   $0xc01080a3,-0x8(%edi)
c0102b77:	c7 47 fc 01 00 00 00 	movl   $0x1,-0x4(%edi)
c0102b7e:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0102b84:	83 c0 01             	add    $0x1,%eax
c0102b87:	83 f8 07             	cmp    $0x7,%eax
c0102b8a:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0102b90:	0f 8f ef 02 00 00    	jg     c0102e85 <_svfprintf_r+0x18d5>
c0102b96:	85 db                	test   %ebx,%ebx
c0102b98:	75 17                	jne    c0102bb1 <_svfprintf_r+0x1601>
c0102b9a:	8b 95 1c ff ff ff    	mov    -0xe4(%ebp),%edx
c0102ba0:	85 d2                	test   %edx,%edx
c0102ba2:	75 0d                	jne    c0102bb1 <_svfprintf_r+0x1601>
c0102ba4:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c0102bab:	0f 84 ab f4 ff ff    	je     c010205c <_svfprintf_r+0xaac>
c0102bb1:	8b 85 0c ff ff ff    	mov    -0xf4(%ebp),%eax
c0102bb7:	83 c7 08             	add    $0x8,%edi
c0102bba:	89 47 f8             	mov    %eax,-0x8(%edi)
c0102bbd:	8b 85 08 ff ff ff    	mov    -0xf8(%ebp),%eax
c0102bc3:	89 47 fc             	mov    %eax,-0x4(%edi)
c0102bc6:	8d 14 01             	lea    (%ecx,%eax,1),%edx
c0102bc9:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0102bcf:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0102bd5:	83 c0 01             	add    $0x1,%eax
c0102bd8:	83 f8 07             	cmp    $0x7,%eax
c0102bdb:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0102be1:	0f 8f 60 03 00 00    	jg     c0102f47 <_svfprintf_r+0x1997>
c0102be7:	f7 db                	neg    %ebx
c0102be9:	85 db                	test   %ebx,%ebx
c0102beb:	0f 8e 21 03 00 00    	jle    c0102f12 <_svfprintf_r+0x1962>
c0102bf1:	83 fb 10             	cmp    $0x10,%ebx
c0102bf4:	0f 8e c3 02 00 00    	jle    c0102ebd <_svfprintf_r+0x190d>
c0102bfa:	8d b5 74 ff ff ff    	lea    -0x8c(%ebp),%esi
c0102c00:	eb 12                	jmp    c0102c14 <_svfprintf_r+0x1664>
c0102c02:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0102c08:	83 eb 10             	sub    $0x10,%ebx
c0102c0b:	83 fb 10             	cmp    $0x10,%ebx
c0102c0e:	0f 8e a9 02 00 00    	jle    c0102ebd <_svfprintf_r+0x190d>
c0102c14:	83 c0 01             	add    $0x1,%eax
c0102c17:	83 c2 10             	add    $0x10,%edx
c0102c1a:	c7 07 0c 82 10 c0    	movl   $0xc010820c,(%edi)
c0102c20:	83 c7 08             	add    $0x8,%edi
c0102c23:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c0102c2a:	83 f8 07             	cmp    $0x7,%eax
c0102c2d:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0102c33:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0102c39:	7e cd                	jle    c0102c08 <_svfprintf_r+0x1658>
c0102c3b:	8b 45 0c             	mov    0xc(%ebp),%eax
c0102c3e:	89 74 24 08          	mov    %esi,0x8(%esp)
c0102c42:	89 44 24 04          	mov    %eax,0x4(%esp)
c0102c46:	8b 45 08             	mov    0x8(%ebp),%eax
c0102c49:	89 04 24             	mov    %eax,(%esp)
c0102c4c:	e8 df 34 00 00       	call   c0106130 <__ssprint_r>
c0102c51:	85 c0                	test   %eax,%eax
c0102c53:	0f 85 27 eb ff ff    	jne    c0101780 <_svfprintf_r+0x1d0>
c0102c59:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0102c5f:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0102c62:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0102c68:	eb 9e                	jmp    c0102c08 <_svfprintf_r+0x1658>
c0102c6a:	8b 9d 24 ff ff ff    	mov    -0xdc(%ebp),%ebx
c0102c70:	83 e3 df             	and    $0xffffffdf,%ebx
c0102c73:	83 bd 44 ff ff ff ff 	cmpl   $0xffffffff,-0xbc(%ebp)
c0102c7a:	0f 84 05 03 00 00    	je     c0102f85 <_svfprintf_r+0x19d5>
c0102c80:	83 fb 47             	cmp    $0x47,%ebx
c0102c83:	75 16                	jne    c0102c9b <_svfprintf_r+0x16eb>
c0102c85:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
c0102c8b:	b8 01 00 00 00       	mov    $0x1,%eax
c0102c90:	85 d2                	test   %edx,%edx
c0102c92:	0f 45 c2             	cmovne %edx,%eax
c0102c95:	89 85 44 ff ff ff    	mov    %eax,-0xbc(%ebp)
c0102c9b:	8b 85 4c ff ff ff    	mov    -0xb4(%ebp),%eax
c0102ca1:	dd 85 10 ff ff ff    	fldl   -0xf0(%ebp)
c0102ca7:	dd 95 38 ff ff ff    	fstl   -0xc8(%ebp)
c0102cad:	80 cc 01             	or     $0x1,%ah
c0102cb0:	89 85 30 ff ff ff    	mov    %eax,-0xd0(%ebp)
c0102cb6:	8b 85 3c ff ff ff    	mov    -0xc4(%ebp),%eax
c0102cbc:	c6 85 48 ff ff ff 00 	movb   $0x0,-0xb8(%ebp)
c0102cc3:	85 c0                	test   %eax,%eax
c0102cc5:	0f 88 ba 05 00 00    	js     c0103285 <_svfprintf_r+0x1cd5>
c0102ccb:	83 fb 46             	cmp    $0x46,%ebx
c0102cce:	0f 94 c0             	sete   %al
c0102cd1:	89 c6                	mov    %eax,%esi
c0102cd3:	0f 84 d4 03 00 00    	je     c01030ad <_svfprintf_r+0x1afd>
c0102cd9:	83 fb 45             	cmp    $0x45,%ebx
c0102cdc:	0f 85 99 05 00 00    	jne    c010327b <_svfprintf_r+0x1ccb>
c0102ce2:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
c0102ce8:	dd 54 24 04          	fstl   0x4(%esp)
c0102cec:	c7 44 24 0c 02 00 00 	movl   $0x2,0xc(%esp)
c0102cf3:	00 
c0102cf4:	dd 9d 38 ff ff ff    	fstpl  -0xc8(%ebp)
c0102cfa:	8d 70 01             	lea    0x1(%eax),%esi
c0102cfd:	8d 85 6c ff ff ff    	lea    -0x94(%ebp),%eax
c0102d03:	89 44 24 1c          	mov    %eax,0x1c(%esp)
c0102d07:	8d 85 60 ff ff ff    	lea    -0xa0(%ebp),%eax
c0102d0d:	89 44 24 18          	mov    %eax,0x18(%esp)
c0102d11:	8d 85 5c ff ff ff    	lea    -0xa4(%ebp),%eax
c0102d17:	89 44 24 14          	mov    %eax,0x14(%esp)
c0102d1b:	8b 45 08             	mov    0x8(%ebp),%eax
c0102d1e:	89 74 24 10          	mov    %esi,0x10(%esp)
c0102d22:	89 04 24             	mov    %eax,(%esp)
c0102d25:	e8 56 09 00 00       	call   c0103680 <_dtoa_r>
c0102d2a:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c0102d30:	8d 0c 30             	lea    (%eax,%esi,1),%ecx
c0102d33:	dd 85 38 ff ff ff    	fldl   -0xc8(%ebp)
c0102d39:	90                   	nop
c0102d3a:	90                   	nop
c0102d3b:	d9 c9                	fxch   %st(1)
c0102d3d:	df e9                	fucomip %st(1),%st
c0102d3f:	dd d8                	fstp   %st(0)
c0102d41:	0f 8a fd 00 00 00    	jp     c0102e44 <_svfprintf_r+0x1894>
c0102d47:	89 c8                	mov    %ecx,%eax
c0102d49:	0f 85 f5 00 00 00    	jne    c0102e44 <_svfprintf_r+0x1894>
c0102d4f:	2b 85 28 ff ff ff    	sub    -0xd8(%ebp),%eax
c0102d55:	83 fb 47             	cmp    $0x47,%ebx
c0102d58:	89 85 1c ff ff ff    	mov    %eax,-0xe4(%ebp)
c0102d5e:	0f 84 1e 04 00 00    	je     c0103182 <_svfprintf_r+0x1bd2>
c0102d64:	83 bd 24 ff ff ff 65 	cmpl   $0x65,-0xdc(%ebp)
c0102d6b:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
c0102d71:	0f 8e 65 04 00 00    	jle    c01031dc <_svfprintf_r+0x1c2c>
c0102d77:	83 bd 24 ff ff ff 66 	cmpl   $0x66,-0xdc(%ebp)
c0102d7e:	89 85 20 ff ff ff    	mov    %eax,-0xe0(%ebp)
c0102d84:	0f 84 3c 05 00 00    	je     c01032c6 <_svfprintf_r+0x1d16>
c0102d8a:	8b 85 20 ff ff ff    	mov    -0xe0(%ebp),%eax
c0102d90:	39 85 1c ff ff ff    	cmp    %eax,-0xe4(%ebp)
c0102d96:	0f 8f f7 04 00 00    	jg     c0103293 <_svfprintf_r+0x1ce3>
c0102d9c:	8b 85 4c ff ff ff    	mov    -0xb4(%ebp),%eax
c0102da2:	83 e0 01             	and    $0x1,%eax
c0102da5:	0f 85 e2 05 00 00    	jne    c010338d <_svfprintf_r+0x1ddd>
c0102dab:	8b 95 20 ff ff ff    	mov    -0xe0(%ebp),%edx
c0102db1:	c7 85 24 ff ff ff 67 	movl   $0x67,-0xdc(%ebp)
c0102db8:	00 00 00 
c0102dbb:	85 d2                	test   %edx,%edx
c0102dbd:	0f 49 c2             	cmovns %edx,%eax
c0102dc0:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
c0102dc6:	80 bd 48 ff ff ff 00 	cmpb   $0x0,-0xb8(%ebp)
c0102dcd:	0f 85 68 03 00 00    	jne    c010313b <_svfprintf_r+0x1b8b>
c0102dd3:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
c0102dd9:	8b 85 30 ff ff ff    	mov    -0xd0(%ebp),%eax
c0102ddf:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c0102de6:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c0102ded:	00 00 00 
c0102df0:	89 85 4c ff ff ff    	mov    %eax,-0xb4(%ebp)
c0102df6:	e9 4d ea ff ff       	jmp    c0101848 <_svfprintf_r+0x298>
c0102dfb:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0102e01:	89 44 24 08          	mov    %eax,0x8(%esp)
c0102e05:	8b 45 0c             	mov    0xc(%ebp),%eax
c0102e08:	89 44 24 04          	mov    %eax,0x4(%esp)
c0102e0c:	8b 45 08             	mov    0x8(%ebp),%eax
c0102e0f:	89 04 24             	mov    %eax,(%esp)
c0102e12:	e8 19 33 00 00       	call   c0106130 <__ssprint_r>
c0102e17:	85 c0                	test   %eax,%eax
c0102e19:	0f 85 61 e9 ff ff    	jne    c0101780 <_svfprintf_r+0x1d0>
c0102e1f:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0102e25:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0102e28:	e9 f2 f3 ff ff       	jmp    c010221f <_svfprintf_r+0xc6f>
c0102e2d:	89 d0                	mov    %edx,%eax
c0102e2f:	e9 d1 fa ff ff       	jmp    c0102905 <_svfprintf_r+0x1355>
c0102e34:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0102e38:	8d 50 01             	lea    0x1(%eax),%edx
c0102e3b:	89 95 6c ff ff ff    	mov    %edx,-0x94(%ebp)
c0102e41:	c6 00 30             	movb   $0x30,(%eax)
c0102e44:	8b 85 6c ff ff ff    	mov    -0x94(%ebp),%eax
c0102e4a:	39 c1                	cmp    %eax,%ecx
c0102e4c:	77 ea                	ja     c0102e38 <_svfprintf_r+0x1888>
c0102e4e:	e9 fc fe ff ff       	jmp    c0102d4f <_svfprintf_r+0x179f>
c0102e53:	8b 45 08             	mov    0x8(%ebp),%eax
c0102e56:	c7 44 24 04 40 00 00 	movl   $0x40,0x4(%esp)
c0102e5d:	00 
c0102e5e:	89 04 24             	mov    %eax,(%esp)
c0102e61:	e8 4a 1b 00 00       	call   c01049b0 <_malloc_r>
c0102e66:	8b 55 0c             	mov    0xc(%ebp),%edx
c0102e69:	85 c0                	test   %eax,%eax
c0102e6b:	89 02                	mov    %eax,(%edx)
c0102e6d:	89 42 10             	mov    %eax,0x10(%edx)
c0102e70:	0f 84 15 06 00 00    	je     c010348b <_svfprintf_r+0x1edb>
c0102e76:	8b 45 0c             	mov    0xc(%ebp),%eax
c0102e79:	c7 40 14 40 00 00 00 	movl   $0x40,0x14(%eax)
c0102e80:	e9 6c e7 ff ff       	jmp    c01015f1 <_svfprintf_r+0x41>
c0102e85:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0102e8b:	89 44 24 08          	mov    %eax,0x8(%esp)
c0102e8f:	8b 45 0c             	mov    0xc(%ebp),%eax
c0102e92:	89 44 24 04          	mov    %eax,0x4(%esp)
c0102e96:	8b 45 08             	mov    0x8(%ebp),%eax
c0102e99:	89 04 24             	mov    %eax,(%esp)
c0102e9c:	e8 8f 32 00 00       	call   c0106130 <__ssprint_r>
c0102ea1:	85 c0                	test   %eax,%eax
c0102ea3:	0f 85 d7 e8 ff ff    	jne    c0101780 <_svfprintf_r+0x1d0>
c0102ea9:	8b 9d 5c ff ff ff    	mov    -0xa4(%ebp),%ebx
c0102eaf:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0102eb2:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0102eb8:	e9 d9 fc ff ff       	jmp    c0102b96 <_svfprintf_r+0x15e6>
c0102ebd:	83 c0 01             	add    $0x1,%eax
c0102ec0:	01 da                	add    %ebx,%edx
c0102ec2:	c7 07 0c 82 10 c0    	movl   $0xc010820c,(%edi)
c0102ec8:	83 c7 08             	add    $0x8,%edi
c0102ecb:	89 5f fc             	mov    %ebx,-0x4(%edi)
c0102ece:	83 f8 07             	cmp    $0x7,%eax
c0102ed1:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0102ed7:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0102edd:	7e 33                	jle    c0102f12 <_svfprintf_r+0x1962>
c0102edf:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0102ee5:	89 44 24 08          	mov    %eax,0x8(%esp)
c0102ee9:	8b 45 0c             	mov    0xc(%ebp),%eax
c0102eec:	89 44 24 04          	mov    %eax,0x4(%esp)
c0102ef0:	8b 45 08             	mov    0x8(%ebp),%eax
c0102ef3:	89 04 24             	mov    %eax,(%esp)
c0102ef6:	e8 35 32 00 00       	call   c0106130 <__ssprint_r>
c0102efb:	85 c0                	test   %eax,%eax
c0102efd:	0f 85 7d e8 ff ff    	jne    c0101780 <_svfprintf_r+0x1d0>
c0102f03:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0102f09:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0102f0c:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0102f12:	8b 9d 28 ff ff ff    	mov    -0xd8(%ebp),%ebx
c0102f18:	83 c0 01             	add    $0x1,%eax
c0102f1b:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0102f21:	89 1f                	mov    %ebx,(%edi)
c0102f23:	8b 9d 1c ff ff ff    	mov    -0xe4(%ebp),%ebx
c0102f29:	01 da                	add    %ebx,%edx
c0102f2b:	83 f8 07             	cmp    $0x7,%eax
c0102f2e:	89 5f 04             	mov    %ebx,0x4(%edi)
c0102f31:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0102f37:	0f 8f 86 f5 ff ff    	jg     c01024c3 <_svfprintf_r+0xf13>
c0102f3d:	83 c7 08             	add    $0x8,%edi
c0102f40:	89 d1                	mov    %edx,%ecx
c0102f42:	e9 15 f1 ff ff       	jmp    c010205c <_svfprintf_r+0xaac>
c0102f47:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0102f4d:	89 44 24 08          	mov    %eax,0x8(%esp)
c0102f51:	8b 45 0c             	mov    0xc(%ebp),%eax
c0102f54:	89 44 24 04          	mov    %eax,0x4(%esp)
c0102f58:	8b 45 08             	mov    0x8(%ebp),%eax
c0102f5b:	89 04 24             	mov    %eax,(%esp)
c0102f5e:	e8 cd 31 00 00       	call   c0106130 <__ssprint_r>
c0102f63:	85 c0                	test   %eax,%eax
c0102f65:	0f 85 15 e8 ff ff    	jne    c0101780 <_svfprintf_r+0x1d0>
c0102f6b:	8b 9d 5c ff ff ff    	mov    -0xa4(%ebp),%ebx
c0102f71:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0102f74:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0102f7a:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0102f80:	e9 62 fc ff ff       	jmp    c0102be7 <_svfprintf_r+0x1637>
c0102f85:	c7 85 44 ff ff ff 06 	movl   $0x6,-0xbc(%ebp)
c0102f8c:	00 00 00 
c0102f8f:	e9 07 fd ff ff       	jmp    c0102c9b <_svfprintf_r+0x16eb>
c0102f94:	8b 85 28 ff ff ff    	mov    -0xd8(%ebp),%eax
c0102f9a:	89 04 24             	mov    %eax,(%esp)
c0102f9d:	e8 0e 31 00 00       	call   c01060b0 <strlen>
c0102fa2:	e9 6a e8 ff ff       	jmp    c0101811 <_svfprintf_r+0x261>
c0102fa7:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0102fad:	89 44 24 08          	mov    %eax,0x8(%esp)
c0102fb1:	8b 45 0c             	mov    0xc(%ebp),%eax
c0102fb4:	89 44 24 04          	mov    %eax,0x4(%esp)
c0102fb8:	8b 45 08             	mov    0x8(%ebp),%eax
c0102fbb:	89 04 24             	mov    %eax,(%esp)
c0102fbe:	e8 6d 31 00 00       	call   c0106130 <__ssprint_r>
c0102fc3:	85 c0                	test   %eax,%eax
c0102fc5:	0f 85 b5 e7 ff ff    	jne    c0101780 <_svfprintf_r+0x1d0>
c0102fcb:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0102fd1:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0102fd4:	e9 76 f6 ff ff       	jmp    c010264f <_svfprintf_r+0x109f>
c0102fd9:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0102fdf:	89 44 24 08          	mov    %eax,0x8(%esp)
c0102fe3:	8b 45 0c             	mov    0xc(%ebp),%eax
c0102fe6:	89 44 24 04          	mov    %eax,0x4(%esp)
c0102fea:	8b 45 08             	mov    0x8(%ebp),%eax
c0102fed:	89 04 24             	mov    %eax,(%esp)
c0102ff0:	e8 3b 31 00 00       	call   c0106130 <__ssprint_r>
c0102ff5:	85 c0                	test   %eax,%eax
c0102ff7:	0f 85 83 e7 ff ff    	jne    c0101780 <_svfprintf_r+0x1d0>
c0102ffd:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
c0103003:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0103006:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c010300c:	e9 f4 f8 ff ff       	jmp    c0102905 <_svfprintf_r+0x1355>
c0103011:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0103017:	89 44 24 08          	mov    %eax,0x8(%esp)
c010301b:	8b 45 0c             	mov    0xc(%ebp),%eax
c010301e:	89 44 24 04          	mov    %eax,0x4(%esp)
c0103022:	8b 45 08             	mov    0x8(%ebp),%eax
c0103025:	89 04 24             	mov    %eax,(%esp)
c0103028:	e8 03 31 00 00       	call   c0106130 <__ssprint_r>
c010302d:	85 c0                	test   %eax,%eax
c010302f:	0f 85 4b e7 ff ff    	jne    c0101780 <_svfprintf_r+0x1d0>
c0103035:	8b b5 1c ff ff ff    	mov    -0xe4(%ebp),%esi
c010303b:	8d 7d a8             	lea    -0x58(%ebp),%edi
c010303e:	2b b5 5c ff ff ff    	sub    -0xa4(%ebp),%esi
c0103044:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c010304a:	e9 fa f8 ff ff       	jmp    c0102949 <_svfprintf_r+0x1399>
c010304f:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
c0103055:	b0 06                	mov    $0x6,%al
c0103057:	89 75 14             	mov    %esi,0x14(%ebp)
c010305a:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c0103061:	00 00 00 
c0103064:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c010306b:	00 00 00 
c010306e:	83 fa 06             	cmp    $0x6,%edx
c0103071:	0f 46 c2             	cmovbe %edx,%eax
c0103074:	8b 95 28 ff ff ff    	mov    -0xd8(%ebp),%edx
c010307a:	85 c0                	test   %eax,%eax
c010307c:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c0103082:	c7 85 28 ff ff ff 9c 	movl   $0xc010809c,-0xd8(%ebp)
c0103089:	80 10 c0 
c010308c:	0f 49 d0             	cmovns %eax,%edx
c010308f:	31 db                	xor    %ebx,%ebx
c0103091:	89 95 48 ff ff ff    	mov    %edx,-0xb8(%ebp)
c0103097:	e9 b7 e7 ff ff       	jmp    c0101853 <_svfprintf_r+0x2a3>
c010309c:	c6 85 59 ff ff ff 2d 	movb   $0x2d,-0xa7(%ebp)
c01030a3:	bb 2d 00 00 00       	mov    $0x2d,%ebx
c01030a8:	e9 9d ea ff ff       	jmp    c0101b4a <_svfprintf_r+0x59a>
c01030ad:	ba 03 00 00 00       	mov    $0x3,%edx
c01030b2:	8d 85 6c ff ff ff    	lea    -0x94(%ebp),%eax
c01030b8:	89 44 24 1c          	mov    %eax,0x1c(%esp)
c01030bc:	8d 85 60 ff ff ff    	lea    -0xa0(%ebp),%eax
c01030c2:	89 44 24 18          	mov    %eax,0x18(%esp)
c01030c6:	8d 85 5c ff ff ff    	lea    -0xa4(%ebp),%eax
c01030cc:	89 44 24 14          	mov    %eax,0x14(%esp)
c01030d0:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
c01030d6:	dd 54 24 04          	fstl   0x4(%esp)
c01030da:	89 54 24 0c          	mov    %edx,0xc(%esp)
c01030de:	dd 9d 38 ff ff ff    	fstpl  -0xc8(%ebp)
c01030e4:	89 44 24 10          	mov    %eax,0x10(%esp)
c01030e8:	8b 45 08             	mov    0x8(%ebp),%eax
c01030eb:	89 04 24             	mov    %eax,(%esp)
c01030ee:	e8 8d 05 00 00       	call   c0103680 <_dtoa_r>
c01030f3:	83 fb 47             	cmp    $0x47,%ebx
c01030f6:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c01030fc:	dd 85 38 ff ff ff    	fldl   -0xc8(%ebp)
c0103102:	75 09                	jne    c010310d <_svfprintf_r+0x1b5d>
c0103104:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c010310b:	74 5b                	je     c0103168 <_svfprintf_r+0x1bb8>
c010310d:	8b 95 28 ff ff ff    	mov    -0xd8(%ebp),%edx
c0103113:	89 f0                	mov    %esi,%eax
c0103115:	8b 8d 44 ff ff ff    	mov    -0xbc(%ebp),%ecx
c010311b:	01 d1                	add    %edx,%ecx
c010311d:	84 c0                	test   %al,%al
c010311f:	0f 84 14 fc ff ff    	je     c0102d39 <_svfprintf_r+0x1789>
c0103125:	80 3a 30             	cmpb   $0x30,(%edx)
c0103128:	0f 84 37 02 00 00    	je     c0103365 <_svfprintf_r+0x1db5>
c010312e:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
c0103134:	01 c1                	add    %eax,%ecx
c0103136:	e9 fe fb ff ff       	jmp    c0102d39 <_svfprintf_r+0x1789>
c010313b:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
c0103141:	8b 85 30 ff ff ff    	mov    -0xd0(%ebp),%eax
c0103147:	bb 2d 00 00 00       	mov    $0x2d,%ebx
c010314c:	c6 85 59 ff ff ff 2d 	movb   $0x2d,-0xa7(%ebp)
c0103153:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c010315a:	00 00 00 
c010315d:	89 85 4c ff ff ff    	mov    %eax,-0xb4(%ebp)
c0103163:	e9 e4 e6 ff ff       	jmp    c010184c <_svfprintf_r+0x29c>
c0103168:	dd d8                	fstp   %st(0)
c010316a:	8b 85 6c ff ff ff    	mov    -0x94(%ebp),%eax
c0103170:	89 85 1c ff ff ff    	mov    %eax,-0xe4(%ebp)
c0103176:	8b 85 28 ff ff ff    	mov    -0xd8(%ebp),%eax
c010317c:	29 85 1c ff ff ff    	sub    %eax,-0xe4(%ebp)
c0103182:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
c0103188:	83 f8 fd             	cmp    $0xfffffffd,%eax
c010318b:	7c 48                	jl     c01031d5 <_svfprintf_r+0x1c25>
c010318d:	39 85 44 ff ff ff    	cmp    %eax,-0xbc(%ebp)
c0103193:	7c 40                	jl     c01031d5 <_svfprintf_r+0x1c25>
c0103195:	89 85 20 ff ff ff    	mov    %eax,-0xe0(%ebp)
c010319b:	e9 ea fb ff ff       	jmp    c0102d8a <_svfprintf_r+0x17da>
c01031a0:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
c01031a6:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c01031ad:	89 75 14             	mov    %esi,0x14(%ebp)
c01031b0:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c01031b7:	00 00 00 
c01031ba:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
c01031c0:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c01031c6:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c01031cd:	00 00 00 
c01031d0:	e9 73 e6 ff ff       	jmp    c0101848 <_svfprintf_r+0x298>
c01031d5:	83 ad 24 ff ff ff 02 	subl   $0x2,-0xdc(%ebp)
c01031dc:	8d 48 ff             	lea    -0x1(%eax),%ecx
c01031df:	0f b6 85 24 ff ff ff 	movzbl -0xdc(%ebp),%eax
c01031e6:	85 c9                	test   %ecx,%ecx
c01031e8:	89 8d 5c ff ff ff    	mov    %ecx,-0xa4(%ebp)
c01031ee:	88 85 65 ff ff ff    	mov    %al,-0x9b(%ebp)
c01031f4:	0f 88 2c 02 00 00    	js     c0103426 <_svfprintf_r+0x1e76>
c01031fa:	c6 85 66 ff ff ff 2b 	movb   $0x2b,-0x9a(%ebp)
c0103201:	83 f9 09             	cmp    $0x9,%ecx
c0103204:	0f 8f ea 00 00 00    	jg     c01032f4 <_svfprintf_r+0x1d44>
c010320a:	83 c1 30             	add    $0x30,%ecx
c010320d:	c6 85 67 ff ff ff 30 	movb   $0x30,-0x99(%ebp)
c0103214:	8d 85 69 ff ff ff    	lea    -0x97(%ebp),%eax
c010321a:	88 8d 68 ff ff ff    	mov    %cl,-0x98(%ebp)
c0103220:	8b 9d 1c ff ff ff    	mov    -0xe4(%ebp),%ebx
c0103226:	8d 95 65 ff ff ff    	lea    -0x9b(%ebp),%edx
c010322c:	29 d0                	sub    %edx,%eax
c010322e:	89 85 04 ff ff ff    	mov    %eax,-0xfc(%ebp)
c0103234:	89 da                	mov    %ebx,%edx
c0103236:	01 c2                	add    %eax,%edx
c0103238:	83 fb 01             	cmp    $0x1,%ebx
c010323b:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
c0103241:	0f 8e 21 02 00 00    	jle    c0103468 <_svfprintf_r+0x1eb8>
c0103247:	31 c0                	xor    %eax,%eax
c0103249:	83 85 38 ff ff ff 01 	addl   $0x1,-0xc8(%ebp)
c0103250:	0f 49 85 38 ff ff ff 	cmovns -0xc8(%ebp),%eax
c0103257:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c010325e:	00 00 00 
c0103261:	e9 60 fb ff ff       	jmp    c0102dc6 <_svfprintf_r+0x1816>
c0103266:	8b 8d 48 ff ff ff    	mov    -0xb8(%ebp),%ecx
c010326c:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c0103273:	00 00 00 
c0103276:	e9 68 e4 ff ff       	jmp    c01016e3 <_svfprintf_r+0x133>
c010327b:	ba 02 00 00 00       	mov    $0x2,%edx
c0103280:	e9 2d fe ff ff       	jmp    c01030b2 <_svfprintf_r+0x1b02>
c0103285:	d9 e0                	fchs   
c0103287:	c6 85 48 ff ff ff 2d 	movb   $0x2d,-0xb8(%ebp)
c010328e:	e9 38 fa ff ff       	jmp    c0102ccb <_svfprintf_r+0x171b>
c0103293:	8b 8d 20 ff ff ff    	mov    -0xe0(%ebp),%ecx
c0103299:	ba 01 00 00 00       	mov    $0x1,%edx
c010329e:	85 c9                	test   %ecx,%ecx
c01032a0:	0f 8e 5a 01 00 00    	jle    c0103400 <_svfprintf_r+0x1e50>
c01032a6:	31 c0                	xor    %eax,%eax
c01032a8:	03 95 1c ff ff ff    	add    -0xe4(%ebp),%edx
c01032ae:	c7 85 24 ff ff ff 67 	movl   $0x67,-0xdc(%ebp)
c01032b5:	00 00 00 
c01032b8:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
c01032be:	0f 49 c2             	cmovns %edx,%eax
c01032c1:	e9 00 fb ff ff       	jmp    c0102dc6 <_svfprintf_r+0x1816>
c01032c6:	85 c0                	test   %eax,%eax
c01032c8:	0f 8e 06 01 00 00    	jle    c01033d4 <_svfprintf_r+0x1e24>
c01032ce:	8b b5 44 ff ff ff    	mov    -0xbc(%ebp),%esi
c01032d4:	85 f6                	test   %esi,%esi
c01032d6:	0f 85 d4 00 00 00    	jne    c01033b0 <_svfprintf_r+0x1e00>
c01032dc:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c01032e3:	0f 85 c7 00 00 00    	jne    c01033b0 <_svfprintf_r+0x1e00>
c01032e9:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c01032ef:	e9 d2 fa ff ff       	jmp    c0102dc6 <_svfprintf_r+0x1816>
c01032f4:	8d b5 73 ff ff ff    	lea    -0x8d(%ebp),%esi
c01032fa:	89 f3                	mov    %esi,%ebx
c01032fc:	b8 67 66 66 66       	mov    $0x66666667,%eax
c0103301:	83 eb 01             	sub    $0x1,%ebx
c0103304:	f7 e9                	imul   %ecx
c0103306:	89 c8                	mov    %ecx,%eax
c0103308:	c1 f8 1f             	sar    $0x1f,%eax
c010330b:	c1 fa 02             	sar    $0x2,%edx
c010330e:	29 c2                	sub    %eax,%edx
c0103310:	8d 04 92             	lea    (%edx,%edx,4),%eax
c0103313:	01 c0                	add    %eax,%eax
c0103315:	29 c1                	sub    %eax,%ecx
c0103317:	83 fa 09             	cmp    $0x9,%edx
c010331a:	8d 41 30             	lea    0x30(%ecx),%eax
c010331d:	89 d1                	mov    %edx,%ecx
c010331f:	88 03                	mov    %al,(%ebx)
c0103321:	7f d9                	jg     c01032fc <_svfprintf_r+0x1d4c>
c0103323:	8d 43 ff             	lea    -0x1(%ebx),%eax
c0103326:	83 c1 30             	add    $0x30,%ecx
c0103329:	39 f0                	cmp    %esi,%eax
c010332b:	88 4b ff             	mov    %cl,-0x1(%ebx)
c010332e:	0f 83 6a 01 00 00    	jae    c010349e <_svfprintf_r+0x1eee>
c0103334:	8d 95 67 ff ff ff    	lea    -0x99(%ebp),%edx
c010333a:	eb 07                	jmp    c0103343 <_svfprintf_r+0x1d93>
c010333c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0103340:	0f b6 08             	movzbl (%eax),%ecx
c0103343:	83 c0 01             	add    $0x1,%eax
c0103346:	83 c2 01             	add    $0x1,%edx
c0103349:	39 f0                	cmp    %esi,%eax
c010334b:	88 4a ff             	mov    %cl,-0x1(%edx)
c010334e:	75 f0                	jne    c0103340 <_svfprintf_r+0x1d90>
c0103350:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0103356:	29 d8                	sub    %ebx,%eax
c0103358:	8d 95 67 ff ff ff    	lea    -0x99(%ebp),%edx
c010335e:	01 d0                	add    %edx,%eax
c0103360:	e9 bb fe ff ff       	jmp    c0103220 <_svfprintf_r+0x1c70>
c0103365:	d9 ee                	fldz   
c0103367:	d9 c9                	fxch   %st(1)
c0103369:	db e9                	fucomi %st(1),%st
c010336b:	dd d9                	fstp   %st(1)
c010336d:	7a 06                	jp     c0103375 <_svfprintf_r+0x1dc5>
c010336f:	0f 84 b9 fd ff ff    	je     c010312e <_svfprintf_r+0x1b7e>
c0103375:	b8 01 00 00 00       	mov    $0x1,%eax
c010337a:	2b 85 44 ff ff ff    	sub    -0xbc(%ebp),%eax
c0103380:	89 85 5c ff ff ff    	mov    %eax,-0xa4(%ebp)
c0103386:	01 c1                	add    %eax,%ecx
c0103388:	e9 ac f9 ff ff       	jmp    c0102d39 <_svfprintf_r+0x1789>
c010338d:	8b 95 20 ff ff ff    	mov    -0xe0(%ebp),%edx
c0103393:	31 c0                	xor    %eax,%eax
c0103395:	c7 85 24 ff ff ff 67 	movl   $0x67,-0xdc(%ebp)
c010339c:	00 00 00 
c010339f:	83 c2 01             	add    $0x1,%edx
c01033a2:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
c01033a8:	0f 49 c2             	cmovns %edx,%eax
c01033ab:	e9 16 fa ff ff       	jmp    c0102dc6 <_svfprintf_r+0x1816>
c01033b0:	8b 95 20 ff ff ff    	mov    -0xe0(%ebp),%edx
c01033b6:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
c01033bc:	8d 44 10 01          	lea    0x1(%eax,%edx,1),%eax
c01033c0:	89 c2                	mov    %eax,%edx
c01033c2:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c01033c8:	31 c0                	xor    %eax,%eax
c01033ca:	85 d2                	test   %edx,%edx
c01033cc:	0f 49 c2             	cmovns %edx,%eax
c01033cf:	e9 f2 f9 ff ff       	jmp    c0102dc6 <_svfprintf_r+0x1816>
c01033d4:	8b 9d 44 ff ff ff    	mov    -0xbc(%ebp),%ebx
c01033da:	85 db                	test   %ebx,%ebx
c01033dc:	75 2f                	jne    c010340d <_svfprintf_r+0x1e5d>
c01033de:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c01033e5:	75 26                	jne    c010340d <_svfprintf_r+0x1e5d>
c01033e7:	b8 01 00 00 00       	mov    $0x1,%eax
c01033ec:	c7 85 38 ff ff ff 01 	movl   $0x1,-0xc8(%ebp)
c01033f3:	00 00 00 
c01033f6:	e9 cb f9 ff ff       	jmp    c0102dc6 <_svfprintf_r+0x1816>
c01033fb:	90                   	nop
c01033fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0103400:	b2 02                	mov    $0x2,%dl
c0103402:	2b 95 20 ff ff ff    	sub    -0xe0(%ebp),%edx
c0103408:	e9 99 fe ff ff       	jmp    c01032a6 <_svfprintf_r+0x1cf6>
c010340d:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
c0103413:	31 c0                	xor    %eax,%eax
c0103415:	83 c2 02             	add    $0x2,%edx
c0103418:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
c010341e:	0f 49 c2             	cmovns %edx,%eax
c0103421:	e9 a0 f9 ff ff       	jmp    c0102dc6 <_svfprintf_r+0x1816>
c0103426:	f7 d9                	neg    %ecx
c0103428:	c6 85 66 ff ff ff 2d 	movb   $0x2d,-0x9a(%ebp)
c010342f:	e9 cd fd ff ff       	jmp    c0103201 <_svfprintf_r+0x1c51>
c0103434:	8b 55 14             	mov    0x14(%ebp),%edx
c0103437:	8b 45 14             	mov    0x14(%ebp),%eax
c010343a:	8b 8d 48 ff ff ff    	mov    -0xb8(%ebp),%ecx
c0103440:	8b 12                	mov    (%edx),%edx
c0103442:	83 c0 04             	add    $0x4,%eax
c0103445:	89 45 14             	mov    %eax,0x14(%ebp)
c0103448:	85 d2                	test   %edx,%edx
c010344a:	89 95 44 ff ff ff    	mov    %edx,-0xbc(%ebp)
c0103450:	0f 89 a9 e2 ff ff    	jns    c01016ff <_svfprintf_r+0x14f>
c0103456:	c7 85 44 ff ff ff ff 	movl   $0xffffffff,-0xbc(%ebp)
c010345d:	ff ff ff 
c0103460:	89 c8                	mov    %ecx,%eax
c0103462:	e9 76 e2 ff ff       	jmp    c01016dd <_svfprintf_r+0x12d>
c0103467:	90                   	nop
c0103468:	8b 85 4c ff ff ff    	mov    -0xb4(%ebp),%eax
c010346e:	83 e0 01             	and    $0x1,%eax
c0103471:	0f 85 d0 fd ff ff    	jne    c0103247 <_svfprintf_r+0x1c97>
c0103477:	85 d2                	test   %edx,%edx
c0103479:	0f 49 c2             	cmovns %edx,%eax
c010347c:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c0103483:	00 00 00 
c0103486:	e9 3b f9 ff ff       	jmp    c0102dc6 <_svfprintf_r+0x1816>
c010348b:	8b 45 08             	mov    0x8(%ebp),%eax
c010348e:	c7 00 0c 00 00 00    	movl   $0xc,(%eax)
c0103494:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c0103499:	e9 f5 e2 ff ff       	jmp    c0101793 <_svfprintf_r+0x1e3>
c010349e:	8d 85 67 ff ff ff    	lea    -0x99(%ebp),%eax
c01034a4:	e9 77 fd ff ff       	jmp    c0103220 <_svfprintf_r+0x1c70>
c01034a9:	66 90                	xchg   %ax,%ax
c01034ab:	66 90                	xchg   %ax,%ax
c01034ad:	66 90                	xchg   %ax,%ax
c01034af:	90                   	nop

c01034b0 <quorem>:
c01034b0:	55                   	push   %ebp
c01034b1:	89 c1                	mov    %eax,%ecx
c01034b3:	89 e5                	mov    %esp,%ebp
c01034b5:	57                   	push   %edi
c01034b6:	89 d7                	mov    %edx,%edi
c01034b8:	56                   	push   %esi
c01034b9:	53                   	push   %ebx
c01034ba:	83 ec 3c             	sub    $0x3c,%esp
c01034bd:	89 45 d0             	mov    %eax,-0x30(%ebp)
c01034c0:	8b 42 10             	mov    0x10(%edx),%eax
c01034c3:	3b 41 10             	cmp    0x10(%ecx),%eax
c01034c6:	89 55 c8             	mov    %edx,-0x38(%ebp)
c01034c9:	89 ca                	mov    %ecx,%edx
c01034cb:	0f 8f 9f 01 00 00    	jg     c0103670 <quorem+0x1c0>
c01034d1:	83 e8 01             	sub    $0x1,%eax
c01034d4:	83 c7 14             	add    $0x14,%edi
c01034d7:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c01034da:	c1 e0 02             	shl    $0x2,%eax
c01034dd:	83 c2 14             	add    $0x14,%edx
c01034e0:	8d 1c 07             	lea    (%edi,%eax,1),%ebx
c01034e3:	01 d0                	add    %edx,%eax
c01034e5:	89 55 d8             	mov    %edx,-0x28(%ebp)
c01034e8:	8b 13                	mov    (%ebx),%edx
c01034ea:	89 45 c4             	mov    %eax,-0x3c(%ebp)
c01034ed:	8b 00                	mov    (%eax),%eax
c01034ef:	89 5d e4             	mov    %ebx,-0x1c(%ebp)
c01034f2:	8d 4a 01             	lea    0x1(%edx),%ecx
c01034f5:	31 d2                	xor    %edx,%edx
c01034f7:	f7 f1                	div    %ecx
c01034f9:	85 c0                	test   %eax,%eax
c01034fb:	89 45 e0             	mov    %eax,-0x20(%ebp)
c01034fe:	89 45 cc             	mov    %eax,-0x34(%ebp)
c0103501:	0f 84 b5 00 00 00    	je     c01035bc <quorem+0x10c>
c0103507:	8b 45 d8             	mov    -0x28(%ebp),%eax
c010350a:	31 f6                	xor    %esi,%esi
c010350c:	89 fa                	mov    %edi,%edx
c010350e:	89 7d c0             	mov    %edi,-0x40(%ebp)
c0103511:	89 f7                	mov    %esi,%edi
c0103513:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%ebp)
c010351a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0103520:	83 c2 04             	add    $0x4,%edx
c0103523:	8b 72 fc             	mov    -0x4(%edx),%esi
c0103526:	83 c0 04             	add    $0x4,%eax
c0103529:	0f b7 ce             	movzwl %si,%ecx
c010352c:	0f af 4d e0          	imul   -0x20(%ebp),%ecx
c0103530:	03 4d dc             	add    -0x24(%ebp),%ecx
c0103533:	c1 ee 10             	shr    $0x10,%esi
c0103536:	0f af 75 e0          	imul   -0x20(%ebp),%esi
c010353a:	89 cb                	mov    %ecx,%ebx
c010353c:	0f b7 c9             	movzwl %cx,%ecx
c010353f:	c1 eb 10             	shr    $0x10,%ebx
c0103542:	29 cf                	sub    %ecx,%edi
c0103544:	01 f3                	add    %esi,%ebx
c0103546:	89 de                	mov    %ebx,%esi
c0103548:	0f b7 db             	movzwl %bx,%ebx
c010354b:	c1 ee 10             	shr    $0x10,%esi
c010354e:	89 75 dc             	mov    %esi,-0x24(%ebp)
c0103551:	8b 70 fc             	mov    -0x4(%eax),%esi
c0103554:	0f b7 ce             	movzwl %si,%ecx
c0103557:	01 f9                	add    %edi,%ecx
c0103559:	c1 ee 10             	shr    $0x10,%esi
c010355c:	29 de                	sub    %ebx,%esi
c010355e:	89 cb                	mov    %ecx,%ebx
c0103560:	c1 fb 10             	sar    $0x10,%ebx
c0103563:	0f b7 c9             	movzwl %cx,%ecx
c0103566:	01 de                	add    %ebx,%esi
c0103568:	89 f7                	mov    %esi,%edi
c010356a:	c1 e6 10             	shl    $0x10,%esi
c010356d:	09 ce                	or     %ecx,%esi
c010356f:	c1 ff 10             	sar    $0x10,%edi
c0103572:	39 55 e4             	cmp    %edx,-0x1c(%ebp)
c0103575:	89 70 fc             	mov    %esi,-0x4(%eax)
c0103578:	73 a6                	jae    c0103520 <quorem+0x70>
c010357a:	8b 45 c4             	mov    -0x3c(%ebp),%eax
c010357d:	8b 7d c0             	mov    -0x40(%ebp),%edi
c0103580:	8b 10                	mov    (%eax),%edx
c0103582:	85 d2                	test   %edx,%edx
c0103584:	75 36                	jne    c01035bc <quorem+0x10c>
c0103586:	8b 4d d8             	mov    -0x28(%ebp),%ecx
c0103589:	89 c2                	mov    %eax,%edx
c010358b:	83 e8 04             	sub    $0x4,%eax
c010358e:	39 c1                	cmp    %eax,%ecx
c0103590:	73 21                	jae    c01035b3 <quorem+0x103>
c0103592:	8b 72 fc             	mov    -0x4(%edx),%esi
c0103595:	85 f6                	test   %esi,%esi
c0103597:	75 1a                	jne    c01035b3 <quorem+0x103>
c0103599:	8b 55 d4             	mov    -0x2c(%ebp),%edx
c010359c:	eb 08                	jmp    c01035a6 <quorem+0xf6>
c010359e:	66 90                	xchg   %ax,%ax
c01035a0:	8b 18                	mov    (%eax),%ebx
c01035a2:	85 db                	test   %ebx,%ebx
c01035a4:	75 0a                	jne    c01035b0 <quorem+0x100>
c01035a6:	83 e8 04             	sub    $0x4,%eax
c01035a9:	83 ea 01             	sub    $0x1,%edx
c01035ac:	39 c1                	cmp    %eax,%ecx
c01035ae:	72 f0                	jb     c01035a0 <quorem+0xf0>
c01035b0:	89 55 d4             	mov    %edx,-0x2c(%ebp)
c01035b3:	8b 45 d0             	mov    -0x30(%ebp),%eax
c01035b6:	8b 55 d4             	mov    -0x2c(%ebp),%edx
c01035b9:	89 50 10             	mov    %edx,0x10(%eax)
c01035bc:	8b 45 c8             	mov    -0x38(%ebp),%eax
c01035bf:	89 44 24 04          	mov    %eax,0x4(%esp)
c01035c3:	8b 45 d0             	mov    -0x30(%ebp),%eax
c01035c6:	89 04 24             	mov    %eax,(%esp)
c01035c9:	e8 a2 23 00 00       	call   c0105970 <__mcmp>
c01035ce:	85 c0                	test   %eax,%eax
c01035d0:	0f 88 8e 00 00 00    	js     c0103664 <quorem+0x1b4>
c01035d6:	8b 45 e0             	mov    -0x20(%ebp),%eax
c01035d9:	31 f6                	xor    %esi,%esi
c01035db:	83 c0 01             	add    $0x1,%eax
c01035de:	89 45 cc             	mov    %eax,-0x34(%ebp)
c01035e1:	8b 45 d8             	mov    -0x28(%ebp),%eax
c01035e4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c01035e8:	83 c7 04             	add    $0x4,%edi
c01035eb:	8b 4f fc             	mov    -0x4(%edi),%ecx
c01035ee:	83 c0 04             	add    $0x4,%eax
c01035f1:	8b 58 fc             	mov    -0x4(%eax),%ebx
c01035f4:	0f b7 d1             	movzwl %cx,%edx
c01035f7:	29 d6                	sub    %edx,%esi
c01035f9:	0f b7 d3             	movzwl %bx,%edx
c01035fc:	01 f2                	add    %esi,%edx
c01035fe:	c1 e9 10             	shr    $0x10,%ecx
c0103601:	c1 eb 10             	shr    $0x10,%ebx
c0103604:	29 cb                	sub    %ecx,%ebx
c0103606:	89 d1                	mov    %edx,%ecx
c0103608:	c1 f9 10             	sar    $0x10,%ecx
c010360b:	0f b7 d2             	movzwl %dx,%edx
c010360e:	01 cb                	add    %ecx,%ebx
c0103610:	89 de                	mov    %ebx,%esi
c0103612:	c1 e3 10             	shl    $0x10,%ebx
c0103615:	09 d3                	or     %edx,%ebx
c0103617:	c1 fe 10             	sar    $0x10,%esi
c010361a:	39 7d e4             	cmp    %edi,-0x1c(%ebp)
c010361d:	89 58 fc             	mov    %ebx,-0x4(%eax)
c0103620:	73 c6                	jae    c01035e8 <quorem+0x138>
c0103622:	8b 45 d8             	mov    -0x28(%ebp),%eax
c0103625:	8b 7d d4             	mov    -0x2c(%ebp),%edi
c0103628:	8d 14 b8             	lea    (%eax,%edi,4),%edx
c010362b:	8b 02                	mov    (%edx),%eax
c010362d:	85 c0                	test   %eax,%eax
c010362f:	75 33                	jne    c0103664 <quorem+0x1b4>
c0103631:	8b 4d d8             	mov    -0x28(%ebp),%ecx
c0103634:	8d 42 fc             	lea    -0x4(%edx),%eax
c0103637:	39 c1                	cmp    %eax,%ecx
c0103639:	73 20                	jae    c010365b <quorem+0x1ab>
c010363b:	8b 72 fc             	mov    -0x4(%edx),%esi
c010363e:	85 f6                	test   %esi,%esi
c0103640:	75 19                	jne    c010365b <quorem+0x1ab>
c0103642:	89 fa                	mov    %edi,%edx
c0103644:	eb 08                	jmp    c010364e <quorem+0x19e>
c0103646:	66 90                	xchg   %ax,%ax
c0103648:	8b 18                	mov    (%eax),%ebx
c010364a:	85 db                	test   %ebx,%ebx
c010364c:	75 0a                	jne    c0103658 <quorem+0x1a8>
c010364e:	83 e8 04             	sub    $0x4,%eax
c0103651:	83 ea 01             	sub    $0x1,%edx
c0103654:	39 c1                	cmp    %eax,%ecx
c0103656:	72 f0                	jb     c0103648 <quorem+0x198>
c0103658:	89 55 d4             	mov    %edx,-0x2c(%ebp)
c010365b:	8b 45 d0             	mov    -0x30(%ebp),%eax
c010365e:	8b 7d d4             	mov    -0x2c(%ebp),%edi
c0103661:	89 78 10             	mov    %edi,0x10(%eax)
c0103664:	8b 45 cc             	mov    -0x34(%ebp),%eax
c0103667:	83 c4 3c             	add    $0x3c,%esp
c010366a:	5b                   	pop    %ebx
c010366b:	5e                   	pop    %esi
c010366c:	5f                   	pop    %edi
c010366d:	5d                   	pop    %ebp
c010366e:	c3                   	ret    
c010366f:	90                   	nop
c0103670:	83 c4 3c             	add    $0x3c,%esp
c0103673:	31 c0                	xor    %eax,%eax
c0103675:	5b                   	pop    %ebx
c0103676:	5e                   	pop    %esi
c0103677:	5f                   	pop    %edi
c0103678:	5d                   	pop    %ebp
c0103679:	c3                   	ret    
c010367a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

c0103680 <_dtoa_r>:
c0103680:	55                   	push   %ebp
c0103681:	89 e5                	mov    %esp,%ebp
c0103683:	57                   	push   %edi
c0103684:	56                   	push   %esi
c0103685:	53                   	push   %ebx
c0103686:	81 ec 8c 00 00 00    	sub    $0x8c,%esp
c010368c:	8b 75 08             	mov    0x8(%ebp),%esi
c010368f:	dd 45 0c             	fldl   0xc(%ebp)
c0103692:	8b 5d 20             	mov    0x20(%ebp),%ebx
c0103695:	dd 5d c0             	fstpl  -0x40(%ebp)
c0103698:	8b 46 40             	mov    0x40(%esi),%eax
c010369b:	85 c0                	test   %eax,%eax
c010369d:	74 23                	je     c01036c2 <_dtoa_r+0x42>
c010369f:	8b 4e 44             	mov    0x44(%esi),%ecx
c01036a2:	ba 01 00 00 00       	mov    $0x1,%edx
c01036a7:	d3 e2                	shl    %cl,%edx
c01036a9:	89 48 04             	mov    %ecx,0x4(%eax)
c01036ac:	89 50 08             	mov    %edx,0x8(%eax)
c01036af:	89 44 24 04          	mov    %eax,0x4(%esp)
c01036b3:	89 34 24             	mov    %esi,(%esp)
c01036b6:	e8 95 1b 00 00       	call   c0105250 <_Bfree>
c01036bb:	c7 46 40 00 00 00 00 	movl   $0x0,0x40(%esi)
c01036c2:	8b 7d c4             	mov    -0x3c(%ebp),%edi
c01036c5:	85 ff                	test   %edi,%edi
c01036c7:	0f 88 3b 02 00 00    	js     c0103908 <_dtoa_r+0x288>
c01036cd:	c7 03 00 00 00 00    	movl   $0x0,(%ebx)
c01036d3:	89 f8                	mov    %edi,%eax
c01036d5:	25 00 00 f0 7f       	and    $0x7ff00000,%eax
c01036da:	3d 00 00 f0 7f       	cmp    $0x7ff00000,%eax
c01036df:	0f 84 e3 01 00 00    	je     c01038c8 <_dtoa_r+0x248>
c01036e5:	dd 45 c0             	fldl   -0x40(%ebp)
c01036e8:	d9 ee                	fldz   
c01036ea:	d9 c9                	fxch   %st(1)
c01036ec:	db e9                	fucomi %st(1),%st
c01036ee:	dd d9                	fstp   %st(1)
c01036f0:	7a 36                	jp     c0103728 <_dtoa_r+0xa8>
c01036f2:	75 34                	jne    c0103728 <_dtoa_r+0xa8>
c01036f4:	dd d8                	fstp   %st(0)
c01036f6:	8b 4d 24             	mov    0x24(%ebp),%ecx
c01036f9:	8b 45 1c             	mov    0x1c(%ebp),%eax
c01036fc:	85 c9                	test   %ecx,%ecx
c01036fe:	c7 00 01 00 00 00    	movl   $0x1,(%eax)
c0103704:	0f 84 4e 02 00 00    	je     c0103958 <_dtoa_r+0x2d8>
c010370a:	8b 45 24             	mov    0x24(%ebp),%eax
c010370d:	c7 00 a4 80 10 c0    	movl   $0xc01080a4,(%eax)
c0103713:	b8 a3 80 10 c0       	mov    $0xc01080a3,%eax
c0103718:	81 c4 8c 00 00 00    	add    $0x8c,%esp
c010371e:	5b                   	pop    %ebx
c010371f:	5e                   	pop    %esi
c0103720:	5f                   	pop    %edi
c0103721:	5d                   	pop    %ebp
c0103722:	c3                   	ret    
c0103723:	90                   	nop
c0103724:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0103728:	8d 45 e0             	lea    -0x20(%ebp),%eax
c010372b:	89 fb                	mov    %edi,%ebx
c010372d:	89 44 24 10          	mov    %eax,0x10(%esp)
c0103731:	8d 45 e4             	lea    -0x1c(%ebp),%eax
c0103734:	dd 54 24 04          	fstl   0x4(%esp)
c0103738:	89 44 24 0c          	mov    %eax,0xc(%esp)
c010373c:	dd 5d b8             	fstpl  -0x48(%ebp)
c010373f:	89 34 24             	mov    %esi,(%esp)
c0103742:	c1 eb 14             	shr    $0x14,%ebx
c0103745:	e8 76 25 00 00       	call   c0105cc0 <__d2b>
c010374a:	85 db                	test   %ebx,%ebx
c010374c:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c010374f:	0f 85 db 01 00 00    	jne    c0103930 <_dtoa_r+0x2b0>
c0103755:	8b 45 e0             	mov    -0x20(%ebp),%eax
c0103758:	8b 5d e4             	mov    -0x1c(%ebp),%ebx
c010375b:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c010375e:	01 c3                	add    %eax,%ebx
c0103760:	81 fb ef fb ff ff    	cmp    $0xfffffbef,%ebx
c0103766:	0f 8c ec 07 00 00    	jl     c0103f58 <_dtoa_r+0x8d8>
c010376c:	8b 55 c0             	mov    -0x40(%ebp),%edx
c010376f:	b9 0e fc ff ff       	mov    $0xfffffc0e,%ecx
c0103774:	89 f8                	mov    %edi,%eax
c0103776:	29 d9                	sub    %ebx,%ecx
c0103778:	d3 e0                	shl    %cl,%eax
c010377a:	8d 8b 12 04 00 00    	lea    0x412(%ebx),%ecx
c0103780:	d3 ea                	shr    %cl,%edx
c0103782:	09 d0                	or     %edx,%eax
c0103784:	31 d2                	xor    %edx,%edx
c0103786:	83 eb 01             	sub    $0x1,%ebx
c0103789:	89 55 cc             	mov    %edx,-0x34(%ebp)
c010378c:	8b 55 b4             	mov    -0x4c(%ebp),%edx
c010378f:	89 45 c8             	mov    %eax,-0x38(%ebp)
c0103792:	df 6d c8             	fildll -0x38(%ebp)
c0103795:	dd 5d b8             	fstpl  -0x48(%ebp)
c0103798:	81 6d bc 00 00 f0 01 	subl   $0x1f00000,-0x44(%ebp)
c010379f:	c7 45 8c 01 00 00 00 	movl   $0x1,-0x74(%ebp)
c01037a6:	dd 45 b8             	fldl   -0x48(%ebp)
c01037a9:	d8 25 3c 82 10 c0    	fsubs  0xc010823c
c01037af:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
c01037b2:	d9 7d d2             	fnstcw -0x2e(%ebp)
c01037b5:	dc 0d 58 82 10 c0    	fmull  0xc0108258
c01037bb:	0f b7 45 d2          	movzwl -0x2e(%ebp),%eax
c01037bf:	b4 0c                	mov    $0xc,%ah
c01037c1:	dc 05 60 82 10 c0    	faddl  0xc0108260
c01037c7:	66 89 45 d0          	mov    %ax,-0x30(%ebp)
c01037cb:	db 45 d4             	fildl  -0x2c(%ebp)
c01037ce:	dc 0d 68 82 10 c0    	fmull  0xc0108268
c01037d4:	de c1                	faddp  %st,%st(1)
c01037d6:	d9 6d d0             	fldcw  -0x30(%ebp)
c01037d9:	db 55 b8             	fistl  -0x48(%ebp)
c01037dc:	d9 6d d2             	fldcw  -0x2e(%ebp)
c01037df:	d9 ee                	fldz   
c01037e1:	df e9                	fucomip %st(1),%st
c01037e3:	0f 87 27 07 00 00    	ja     c0103f10 <_dtoa_r+0x890>
c01037e9:	dd d8                	fstp   %st(0)
c01037eb:	83 7d b8 16          	cmpl   $0x16,-0x48(%ebp)
c01037ef:	c7 45 9c 01 00 00 00 	movl   $0x1,-0x64(%ebp)
c01037f6:	77 24                	ja     c010381c <_dtoa_r+0x19c>
c01037f8:	8b 45 b8             	mov    -0x48(%ebp),%eax
c01037fb:	dd 04 c5 20 83 10 c0 	fldl   -0x3fef7ce0(,%eax,8)
c0103802:	dd 45 c0             	fldl   -0x40(%ebp)
c0103805:	d9 c9                	fxch   %st(1)
c0103807:	df e9                	fucomip %st(1),%st
c0103809:	dd d8                	fstp   %st(0)
c010380b:	0f 86 5f 07 00 00    	jbe    c0103f70 <_dtoa_r+0x8f0>
c0103811:	83 6d b8 01          	subl   $0x1,-0x48(%ebp)
c0103815:	c7 45 9c 00 00 00 00 	movl   $0x0,-0x64(%ebp)
c010381c:	89 d0                	mov    %edx,%eax
c010381e:	29 d8                	sub    %ebx,%eax
c0103820:	83 e8 01             	sub    $0x1,%eax
c0103823:	c7 45 a0 00 00 00 00 	movl   $0x0,-0x60(%ebp)
c010382a:	89 45 ac             	mov    %eax,-0x54(%ebp)
c010382d:	0f 88 0d 07 00 00    	js     c0103f40 <_dtoa_r+0x8c0>
c0103833:	8b 45 b8             	mov    -0x48(%ebp),%eax
c0103836:	85 c0                	test   %eax,%eax
c0103838:	0f 88 ea 06 00 00    	js     c0103f28 <_dtoa_r+0x8a8>
c010383e:	01 45 ac             	add    %eax,-0x54(%ebp)
c0103841:	89 45 94             	mov    %eax,-0x6c(%ebp)
c0103844:	c7 45 b0 00 00 00 00 	movl   $0x0,-0x50(%ebp)
c010384b:	83 7d 14 09          	cmpl   $0x9,0x14(%ebp)
c010384f:	0f 87 0b 03 00 00    	ja     c0103b60 <_dtoa_r+0x4e0>
c0103855:	83 7d 14 05          	cmpl   $0x5,0x14(%ebp)
c0103859:	0f 8e 23 10 00 00    	jle    c0104882 <_dtoa_r+0x1202>
c010385f:	83 6d 14 04          	subl   $0x4,0x14(%ebp)
c0103863:	31 c0                	xor    %eax,%eax
c0103865:	83 7d 14 03          	cmpl   $0x3,0x14(%ebp)
c0103869:	0f 84 43 0d 00 00    	je     c01045b2 <_dtoa_r+0xf32>
c010386f:	0f 8e f3 00 00 00    	jle    c0103968 <_dtoa_r+0x2e8>
c0103875:	83 7d 14 04          	cmpl   $0x4,0x14(%ebp)
c0103879:	c7 45 98 01 00 00 00 	movl   $0x1,-0x68(%ebp)
c0103880:	0f 84 f3 00 00 00    	je     c0103979 <_dtoa_r+0x2f9>
c0103886:	83 7d 14 05          	cmpl   $0x5,0x14(%ebp)
c010388a:	0f 85 d7 02 00 00    	jne    c0103b67 <_dtoa_r+0x4e7>
c0103890:	8b 5d b8             	mov    -0x48(%ebp),%ebx
c0103893:	03 5d 18             	add    0x18(%ebp),%ebx
c0103896:	89 5d 90             	mov    %ebx,-0x70(%ebp)
c0103899:	83 c3 01             	add    $0x1,%ebx
c010389c:	83 fb 0e             	cmp    $0xe,%ebx
c010389f:	0f 96 c2             	setbe  %dl
c01038a2:	85 db                	test   %ebx,%ebx
c01038a4:	89 5d a8             	mov    %ebx,-0x58(%ebp)
c01038a7:	0f 8e a7 08 00 00    	jle    c0104154 <_dtoa_r+0xad4>
c01038ad:	8b 5d a8             	mov    -0x58(%ebp),%ebx
c01038b0:	83 fb 0e             	cmp    $0xe,%ebx
c01038b3:	89 df                	mov    %ebx,%edi
c01038b5:	0f 96 45 b4          	setbe  -0x4c(%ebp)
c01038b9:	20 45 b4             	and    %al,-0x4c(%ebp)
c01038bc:	e9 d6 00 00 00       	jmp    c0103997 <_dtoa_r+0x317>
c01038c1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c01038c8:	8b 55 c0             	mov    -0x40(%ebp),%edx
c01038cb:	8b 45 1c             	mov    0x1c(%ebp),%eax
c01038ce:	85 d2                	test   %edx,%edx
c01038d0:	c7 00 0f 27 00 00    	movl   $0x270f,(%eax)
c01038d6:	b8 35 82 10 c0       	mov    $0xc0108235,%eax
c01038db:	74 43                	je     c0103920 <_dtoa_r+0x2a0>
c01038dd:	8b 5d 24             	mov    0x24(%ebp),%ebx
c01038e0:	85 db                	test   %ebx,%ebx
c01038e2:	0f 84 30 fe ff ff    	je     c0103718 <_dtoa_r+0x98>
c01038e8:	8b 75 24             	mov    0x24(%ebp),%esi
c01038eb:	8d 50 08             	lea    0x8(%eax),%edx
c01038ee:	80 78 03 00          	cmpb   $0x0,0x3(%eax)
c01038f2:	8d 48 03             	lea    0x3(%eax),%ecx
c01038f5:	0f 44 d1             	cmove  %ecx,%edx
c01038f8:	89 16                	mov    %edx,(%esi)
c01038fa:	81 c4 8c 00 00 00    	add    $0x8c,%esp
c0103900:	5b                   	pop    %ebx
c0103901:	5e                   	pop    %esi
c0103902:	5f                   	pop    %edi
c0103903:	5d                   	pop    %ebp
c0103904:	c3                   	ret    
c0103905:	8d 76 00             	lea    0x0(%esi),%esi
c0103908:	81 e7 ff ff ff 7f    	and    $0x7fffffff,%edi
c010390e:	c7 03 01 00 00 00    	movl   $0x1,(%ebx)
c0103914:	89 7d c4             	mov    %edi,-0x3c(%ebp)
c0103917:	e9 b7 fd ff ff       	jmp    c01036d3 <_dtoa_r+0x53>
c010391c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0103920:	81 e7 ff ff 0f 00    	and    $0xfffff,%edi
c0103926:	ba 2c 82 10 c0       	mov    $0xc010822c,%edx
c010392b:	0f 44 c2             	cmove  %edx,%eax
c010392e:	eb ad                	jmp    c01038dd <_dtoa_r+0x25d>
c0103930:	8b 45 bc             	mov    -0x44(%ebp),%eax
c0103933:	81 eb ff 03 00 00    	sub    $0x3ff,%ebx
c0103939:	8b 55 e0             	mov    -0x20(%ebp),%edx
c010393c:	c7 45 8c 00 00 00 00 	movl   $0x0,-0x74(%ebp)
c0103943:	25 ff ff 0f 00       	and    $0xfffff,%eax
c0103948:	0d 00 00 f0 3f       	or     $0x3ff00000,%eax
c010394d:	89 45 bc             	mov    %eax,-0x44(%ebp)
c0103950:	e9 51 fe ff ff       	jmp    c01037a6 <_dtoa_r+0x126>
c0103955:	8d 76 00             	lea    0x0(%esi),%esi
c0103958:	b8 a3 80 10 c0       	mov    $0xc01080a3,%eax
c010395d:	e9 b6 fd ff ff       	jmp    c0103718 <_dtoa_r+0x98>
c0103962:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0103968:	83 7d 14 02          	cmpl   $0x2,0x14(%ebp)
c010396c:	c7 45 98 00 00 00 00 	movl   $0x0,-0x68(%ebp)
c0103973:	0f 85 ee 01 00 00    	jne    c0103b67 <_dtoa_r+0x4e7>
c0103979:	8b 55 18             	mov    0x18(%ebp),%edx
c010397c:	85 d2                	test   %edx,%edx
c010397e:	0f 8e b6 07 00 00    	jle    c010413a <_dtoa_r+0xaba>
c0103984:	8b 7d 18             	mov    0x18(%ebp),%edi
c0103987:	83 ff 0e             	cmp    $0xe,%edi
c010398a:	0f 96 45 b4          	setbe  -0x4c(%ebp)
c010398e:	20 45 b4             	and    %al,-0x4c(%ebp)
c0103991:	89 7d 90             	mov    %edi,-0x70(%ebp)
c0103994:	89 7d a8             	mov    %edi,-0x58(%ebp)
c0103997:	83 ff 17             	cmp    $0x17,%edi
c010399a:	c7 46 44 00 00 00 00 	movl   $0x0,0x44(%esi)
c01039a1:	0f 86 e5 0e 00 00    	jbe    c010488c <_dtoa_r+0x120c>
c01039a7:	b9 01 00 00 00       	mov    $0x1,%ecx
c01039ac:	b8 04 00 00 00       	mov    $0x4,%eax
c01039b1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c01039b8:	01 c0                	add    %eax,%eax
c01039ba:	89 ca                	mov    %ecx,%edx
c01039bc:	8d 58 14             	lea    0x14(%eax),%ebx
c01039bf:	39 fb                	cmp    %edi,%ebx
c01039c1:	8d 49 01             	lea    0x1(%ecx),%ecx
c01039c4:	76 f2                	jbe    c01039b8 <_dtoa_r+0x338>
c01039c6:	89 56 44             	mov    %edx,0x44(%esi)
c01039c9:	89 54 24 04          	mov    %edx,0x4(%esp)
c01039cd:	89 34 24             	mov    %esi,(%esp)
c01039d0:	e8 db 17 00 00       	call   c01051b0 <_Balloc>
c01039d5:	80 7d b4 00          	cmpb   $0x0,-0x4c(%ebp)
c01039d9:	89 c7                	mov    %eax,%edi
c01039db:	89 46 40             	mov    %eax,0x40(%esi)
c01039de:	0f 84 bb 01 00 00    	je     c0103b9f <_dtoa_r+0x51f>
c01039e4:	8b 5d b8             	mov    -0x48(%ebp),%ebx
c01039e7:	dd 45 c0             	fldl   -0x40(%ebp)
c01039ea:	85 db                	test   %ebx,%ebx
c01039ec:	0f 8e de 07 00 00    	jle    c01041d0 <_dtoa_r+0xb50>
c01039f2:	89 d8                	mov    %ebx,%eax
c01039f4:	83 e0 0f             	and    $0xf,%eax
c01039f7:	dd 04 c5 20 83 10 c0 	fldl   -0x3fef7ce0(,%eax,8)
c01039fe:	89 d8                	mov    %ebx,%eax
c0103a00:	c1 f8 04             	sar    $0x4,%eax
c0103a03:	a8 10                	test   $0x10,%al
c0103a05:	0f 84 cd 05 00 00    	je     c0103fd8 <_dtoa_r+0x958>
c0103a0b:	dd 05 00 83 10 c0    	fldl   0xc0108300
c0103a11:	83 e0 0f             	and    $0xf,%eax
c0103a14:	b9 03 00 00 00       	mov    $0x3,%ecx
c0103a19:	d8 fa                	fdivr  %st(2),%st
c0103a1b:	85 c0                	test   %eax,%eax
c0103a1d:	74 22                	je     c0103a41 <_dtoa_r+0x3c1>
c0103a1f:	31 d2                	xor    %edx,%edx
c0103a21:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0103a28:	a8 01                	test   $0x1,%al
c0103a2a:	74 0e                	je     c0103a3a <_dtoa_r+0x3ba>
c0103a2c:	d9 c9                	fxch   %st(1)
c0103a2e:	dc 0c d5 e0 82 10 c0 	fmull  -0x3fef7d20(,%edx,8)
c0103a35:	d9 c9                	fxch   %st(1)
c0103a37:	83 c1 01             	add    $0x1,%ecx
c0103a3a:	83 c2 01             	add    $0x1,%edx
c0103a3d:	d1 f8                	sar    %eax
c0103a3f:	75 e7                	jne    c0103a28 <_dtoa_r+0x3a8>
c0103a41:	de f1                	fdivp  %st,%st(1)
c0103a43:	8b 45 9c             	mov    -0x64(%ebp),%eax
c0103a46:	85 c0                	test   %eax,%eax
c0103a48:	74 0a                	je     c0103a54 <_dtoa_r+0x3d4>
c0103a4a:	d9 e8                	fld1   
c0103a4c:	df e9                	fucomip %st(1),%st
c0103a4e:	0f 87 92 0b 00 00    	ja     c01045e6 <_dtoa_r+0xf66>
c0103a54:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
c0103a57:	8b 45 a8             	mov    -0x58(%ebp),%eax
c0103a5a:	db 45 d4             	fildl  -0x2c(%ebp)
c0103a5d:	d8 c9                	fmul   %st(1),%st
c0103a5f:	d8 05 48 82 10 c0    	fadds  0xc0108248
c0103a65:	dd 5d c0             	fstpl  -0x40(%ebp)
c0103a68:	81 6d c4 00 00 40 03 	subl   $0x3400000,-0x3c(%ebp)
c0103a6f:	85 c0                	test   %eax,%eax
c0103a71:	0f 84 89 05 00 00    	je     c0104000 <_dtoa_r+0x980>
c0103a77:	8b 45 b8             	mov    -0x48(%ebp),%eax
c0103a7a:	8b 4d a8             	mov    -0x58(%ebp),%ecx
c0103a7d:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c0103a80:	8b 45 98             	mov    -0x68(%ebp),%eax
c0103a83:	85 c0                	test   %eax,%eax
c0103a85:	0f 84 b5 07 00 00    	je     c0104240 <_dtoa_r+0xbc0>
c0103a8b:	d9 05 50 82 10 c0    	flds   0xc0108250
c0103a91:	8d 57 01             	lea    0x1(%edi),%edx
c0103a94:	dc 34 cd 18 83 10 c0 	fdivl  -0x3fef7ce8(,%ecx,8)
c0103a9b:	d9 7d d2             	fnstcw -0x2e(%ebp)
c0103a9e:	0f b7 45 d2          	movzwl -0x2e(%ebp),%eax
c0103aa2:	b4 0c                	mov    $0xc,%ah
c0103aa4:	66 89 45 d0          	mov    %ax,-0x30(%ebp)
c0103aa8:	dc 65 c0             	fsubl  -0x40(%ebp)
c0103aab:	d9 c9                	fxch   %st(1)
c0103aad:	d9 6d d0             	fldcw  -0x30(%ebp)
c0103ab0:	db 55 d4             	fistl  -0x2c(%ebp)
c0103ab3:	d9 6d d2             	fldcw  -0x2e(%ebp)
c0103ab6:	8b 45 d4             	mov    -0x2c(%ebp),%eax
c0103ab9:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c0103abc:	83 c0 30             	add    $0x30,%eax
c0103abf:	db 45 d4             	fildl  -0x2c(%ebp)
c0103ac2:	de e9                	fsubrp %st,%st(1)
c0103ac4:	d9 c9                	fxch   %st(1)
c0103ac6:	88 07                	mov    %al,(%edi)
c0103ac8:	db e9                	fucomi %st(1),%st
c0103aca:	77 7f                	ja     c0103b4b <_dtoa_r+0x4cb>
c0103acc:	d9 c1                	fld    %st(1)
c0103ace:	d8 2d 40 82 10 c0    	fsubrs 0xc0108240
c0103ad4:	d9 c9                	fxch   %st(1)
c0103ad6:	db e9                	fucomi %st(1),%st
c0103ad8:	dd d9                	fstp   %st(1)
c0103ada:	0f 87 33 0c 00 00    	ja     c0104713 <_dtoa_r+0x1093>
c0103ae0:	83 f9 01             	cmp    $0x1,%ecx
c0103ae3:	0f 8e c4 06 00 00    	jle    c01041ad <_dtoa_r+0xb2d>
c0103ae9:	01 f9                	add    %edi,%ecx
c0103aeb:	d9 05 44 82 10 c0    	flds   0xc0108244
c0103af1:	eb 25                	jmp    c0103b18 <_dtoa_r+0x498>
c0103af3:	90                   	nop
c0103af4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0103af8:	d9 c1                	fld    %st(1)
c0103afa:	d8 2d 40 82 10 c0    	fsubrs 0xc0108240
c0103b00:	d9 c9                	fxch   %st(1)
c0103b02:	db e9                	fucomi %st(1),%st
c0103b04:	dd d9                	fstp   %st(1)
c0103b06:	0f 87 14 0c 00 00    	ja     c0104720 <_dtoa_r+0x10a0>
c0103b0c:	39 ca                	cmp    %ecx,%edx
c0103b0e:	0f 84 a4 06 00 00    	je     c01041b8 <_dtoa_r+0xb38>
c0103b14:	d9 c9                	fxch   %st(1)
c0103b16:	d9 ca                	fxch   %st(2)
c0103b18:	dc c9                	fmul   %st,%st(1)
c0103b1a:	83 c2 01             	add    $0x1,%edx
c0103b1d:	dc ca                	fmul   %st,%st(2)
c0103b1f:	d9 ca                	fxch   %st(2)
c0103b21:	d9 6d d0             	fldcw  -0x30(%ebp)
c0103b24:	db 55 d4             	fistl  -0x2c(%ebp)
c0103b27:	d9 6d d2             	fldcw  -0x2e(%ebp)
c0103b2a:	8b 45 d4             	mov    -0x2c(%ebp),%eax
c0103b2d:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c0103b30:	83 c0 30             	add    $0x30,%eax
c0103b33:	db 45 d4             	fildl  -0x2c(%ebp)
c0103b36:	de e9                	fsubrp %st,%st(1)
c0103b38:	d9 c9                	fxch   %st(1)
c0103b3a:	88 42 ff             	mov    %al,-0x1(%edx)
c0103b3d:	db e9                	fucomi %st(1),%st
c0103b3f:	76 b7                	jbe    c0103af8 <_dtoa_r+0x478>
c0103b41:	dd d8                	fstp   %st(0)
c0103b43:	dd d8                	fstp   %st(0)
c0103b45:	dd d8                	fstp   %st(0)
c0103b47:	dd d8                	fstp   %st(0)
c0103b49:	eb 06                	jmp    c0103b51 <_dtoa_r+0x4d1>
c0103b4b:	dd d8                	fstp   %st(0)
c0103b4d:	dd d8                	fstp   %st(0)
c0103b4f:	dd d8                	fstp   %st(0)
c0103b51:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0103b54:	89 fb                	mov    %edi,%ebx
c0103b56:	89 d7                	mov    %edx,%edi
c0103b58:	89 45 b8             	mov    %eax,-0x48(%ebp)
c0103b5b:	e9 70 03 00 00       	jmp    c0103ed0 <_dtoa_r+0x850>
c0103b60:	c7 45 14 00 00 00 00 	movl   $0x0,0x14(%ebp)
c0103b67:	c7 46 44 00 00 00 00 	movl   $0x0,0x44(%esi)
c0103b6e:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c0103b75:	00 
c0103b76:	89 34 24             	mov    %esi,(%esp)
c0103b79:	e8 32 16 00 00       	call   c01051b0 <_Balloc>
c0103b7e:	c7 45 98 01 00 00 00 	movl   $0x1,-0x68(%ebp)
c0103b85:	c7 45 a8 ff ff ff ff 	movl   $0xffffffff,-0x58(%ebp)
c0103b8c:	c7 45 90 ff ff ff ff 	movl   $0xffffffff,-0x70(%ebp)
c0103b93:	c7 45 18 00 00 00 00 	movl   $0x0,0x18(%ebp)
c0103b9a:	89 c7                	mov    %eax,%edi
c0103b9c:	89 46 40             	mov    %eax,0x40(%esi)
c0103b9f:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0103ba2:	85 c0                	test   %eax,%eax
c0103ba4:	0f 88 2e 01 00 00    	js     c0103cd8 <_dtoa_r+0x658>
c0103baa:	83 7d b8 0e          	cmpl   $0xe,-0x48(%ebp)
c0103bae:	0f 8f 24 01 00 00    	jg     c0103cd8 <_dtoa_r+0x658>
c0103bb4:	8b 45 b8             	mov    -0x48(%ebp),%eax
c0103bb7:	dd 04 c5 20 83 10 c0 	fldl   -0x3fef7ce0(,%eax,8)
c0103bbe:	8b 45 a8             	mov    -0x58(%ebp),%eax
c0103bc1:	85 c0                	test   %eax,%eax
c0103bc3:	7f 0e                	jg     c0103bd3 <_dtoa_r+0x553>
c0103bc5:	8b 45 18             	mov    0x18(%ebp),%eax
c0103bc8:	c1 e8 1f             	shr    $0x1f,%eax
c0103bcb:	84 c0                	test   %al,%al
c0103bcd:	0f 85 9d 07 00 00    	jne    c0104370 <_dtoa_r+0xcf0>
c0103bd3:	dd 45 c0             	fldl   -0x40(%ebp)
c0103bd6:	d9 c0                	fld    %st(0)
c0103bd8:	d8 f2                	fdiv   %st(2),%st
c0103bda:	d9 7d d2             	fnstcw -0x2e(%ebp)
c0103bdd:	83 7d a8 01          	cmpl   $0x1,-0x58(%ebp)
c0103be1:	0f b7 45 d2          	movzwl -0x2e(%ebp),%eax
c0103be5:	b4 0c                	mov    $0xc,%ah
c0103be7:	66 89 45 d0          	mov    %ax,-0x30(%ebp)
c0103beb:	8d 47 01             	lea    0x1(%edi),%eax
c0103bee:	89 45 c0             	mov    %eax,-0x40(%ebp)
c0103bf1:	d9 6d d0             	fldcw  -0x30(%ebp)
c0103bf4:	db 5d d4             	fistpl -0x2c(%ebp)
c0103bf7:	d9 6d d2             	fldcw  -0x2e(%ebp)
c0103bfa:	8b 55 d4             	mov    -0x2c(%ebp),%edx
c0103bfd:	89 55 d4             	mov    %edx,-0x2c(%ebp)
c0103c00:	8d 42 30             	lea    0x30(%edx),%eax
c0103c03:	db 45 d4             	fildl  -0x2c(%ebp)
c0103c06:	d8 ca                	fmul   %st(2),%st
c0103c08:	88 07                	mov    %al,(%edi)
c0103c0a:	de e9                	fsubrp %st,%st(1)
c0103c0c:	74 66                	je     c0103c74 <_dtoa_r+0x5f4>
c0103c0e:	d8 0d 44 82 10 c0    	fmuls  0xc0108244
c0103c14:	d9 ee                	fldz   
c0103c16:	d9 c9                	fxch   %st(1)
c0103c18:	db e9                	fucomi %st(1),%st
c0103c1a:	dd d9                	fstp   %st(1)
c0103c1c:	0f 8b 33 0c 00 00    	jnp    c0104855 <_dtoa_r+0x11d5>
c0103c22:	8b 5d a8             	mov    -0x58(%ebp),%ebx
c0103c25:	8d 47 02             	lea    0x2(%edi),%eax
c0103c28:	d9 05 44 82 10 c0    	flds   0xc0108244
c0103c2e:	01 fb                	add    %edi,%ebx
c0103c30:	eb 19                	jmp    c0103c4b <_dtoa_r+0x5cb>
c0103c32:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0103c38:	dc c9                	fmul   %st,%st(1)
c0103c3a:	83 c0 01             	add    $0x1,%eax
c0103c3d:	d9 ee                	fldz   
c0103c3f:	d9 ca                	fxch   %st(2)
c0103c41:	db ea                	fucomi %st(2),%st
c0103c43:	dd da                	fstp   %st(2)
c0103c45:	0f 8b 73 09 00 00    	jnp    c01045be <_dtoa_r+0xf3e>
c0103c4b:	d9 c1                	fld    %st(1)
c0103c4d:	39 d8                	cmp    %ebx,%eax
c0103c4f:	d8 f3                	fdiv   %st(3),%st
c0103c51:	89 45 c0             	mov    %eax,-0x40(%ebp)
c0103c54:	d9 6d d0             	fldcw  -0x30(%ebp)
c0103c57:	db 5d d4             	fistpl -0x2c(%ebp)
c0103c5a:	d9 6d d2             	fldcw  -0x2e(%ebp)
c0103c5d:	8b 55 d4             	mov    -0x2c(%ebp),%edx
c0103c60:	89 55 d4             	mov    %edx,-0x2c(%ebp)
c0103c63:	8d 4a 30             	lea    0x30(%edx),%ecx
c0103c66:	db 45 d4             	fildl  -0x2c(%ebp)
c0103c69:	d8 cb                	fmul   %st(3),%st
c0103c6b:	88 48 ff             	mov    %cl,-0x1(%eax)
c0103c6e:	de ea                	fsubrp %st,%st(2)
c0103c70:	75 c6                	jne    c0103c38 <_dtoa_r+0x5b8>
c0103c72:	dd d8                	fstp   %st(0)
c0103c74:	d8 c0                	fadd   %st(0),%st
c0103c76:	db e9                	fucomi %st(1),%st
c0103c78:	77 1e                	ja     c0103c98 <_dtoa_r+0x618>
c0103c7a:	d9 c9                	fxch   %st(1)
c0103c7c:	df e9                	fucomip %st(1),%st
c0103c7e:	dd d8                	fstp   %st(0)
c0103c80:	0f 8a 44 09 00 00    	jp     c01045ca <_dtoa_r+0xf4a>
c0103c86:	0f 85 3e 09 00 00    	jne    c01045ca <_dtoa_r+0xf4a>
c0103c8c:	83 e2 01             	and    $0x1,%edx
c0103c8f:	90                   	nop
c0103c90:	0f 84 34 09 00 00    	je     c01045ca <_dtoa_r+0xf4a>
c0103c96:	eb 04                	jmp    c0103c9c <_dtoa_r+0x61c>
c0103c98:	dd d8                	fstp   %st(0)
c0103c9a:	dd d8                	fstp   %st(0)
c0103c9c:	8b 4d c0             	mov    -0x40(%ebp),%ecx
c0103c9f:	89 fb                	mov    %edi,%ebx
c0103ca1:	0f b6 41 ff          	movzbl -0x1(%ecx),%eax
c0103ca5:	89 cf                	mov    %ecx,%edi
c0103ca7:	8b 4d b8             	mov    -0x48(%ebp),%ecx
c0103caa:	89 4d b4             	mov    %ecx,-0x4c(%ebp)
c0103cad:	eb 0f                	jmp    c0103cbe <_dtoa_r+0x63e>
c0103caf:	90                   	nop
c0103cb0:	39 d3                	cmp    %edx,%ebx
c0103cb2:	0f 84 75 09 00 00    	je     c010462d <_dtoa_r+0xfad>
c0103cb8:	0f b6 42 ff          	movzbl -0x1(%edx),%eax
c0103cbc:	89 d7                	mov    %edx,%edi
c0103cbe:	3c 39                	cmp    $0x39,%al
c0103cc0:	8d 57 ff             	lea    -0x1(%edi),%edx
c0103cc3:	74 eb                	je     c0103cb0 <_dtoa_r+0x630>
c0103cc5:	8b 4d b4             	mov    -0x4c(%ebp),%ecx
c0103cc8:	83 c0 01             	add    $0x1,%eax
c0103ccb:	88 02                	mov    %al,(%edx)
c0103ccd:	89 4d b8             	mov    %ecx,-0x48(%ebp)
c0103cd0:	e9 fb 01 00 00       	jmp    c0103ed0 <_dtoa_r+0x850>
c0103cd5:	8d 76 00             	lea    0x0(%esi),%esi
c0103cd8:	8b 4d 98             	mov    -0x68(%ebp),%ecx
c0103cdb:	85 c9                	test   %ecx,%ecx
c0103cdd:	0f 85 9d 02 00 00    	jne    c0103f80 <_dtoa_r+0x900>
c0103ce3:	8b 55 b0             	mov    -0x50(%ebp),%edx
c0103ce6:	8b 5d a0             	mov    -0x60(%ebp),%ebx
c0103ce9:	c7 45 b4 00 00 00 00 	movl   $0x0,-0x4c(%ebp)
c0103cf0:	8b 45 ac             	mov    -0x54(%ebp),%eax
c0103cf3:	85 c0                	test   %eax,%eax
c0103cf5:	7e 14                	jle    c0103d0b <_dtoa_r+0x68b>
c0103cf7:	85 db                	test   %ebx,%ebx
c0103cf9:	7e 10                	jle    c0103d0b <_dtoa_r+0x68b>
c0103cfb:	8b 45 ac             	mov    -0x54(%ebp),%eax
c0103cfe:	39 d8                	cmp    %ebx,%eax
c0103d00:	0f 4f c3             	cmovg  %ebx,%eax
c0103d03:	29 45 a0             	sub    %eax,-0x60(%ebp)
c0103d06:	29 c3                	sub    %eax,%ebx
c0103d08:	29 45 ac             	sub    %eax,-0x54(%ebp)
c0103d0b:	8b 45 b0             	mov    -0x50(%ebp),%eax
c0103d0e:	85 c0                	test   %eax,%eax
c0103d10:	7e 61                	jle    c0103d73 <_dtoa_r+0x6f3>
c0103d12:	8b 45 98             	mov    -0x68(%ebp),%eax
c0103d15:	85 c0                	test   %eax,%eax
c0103d17:	0f 84 72 04 00 00    	je     c010418f <_dtoa_r+0xb0f>
c0103d1d:	85 d2                	test   %edx,%edx
c0103d1f:	7e 47                	jle    c0103d68 <_dtoa_r+0x6e8>
c0103d21:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0103d24:	89 54 24 08          	mov    %edx,0x8(%esp)
c0103d28:	89 34 24             	mov    %esi,(%esp)
c0103d2b:	89 55 88             	mov    %edx,-0x78(%ebp)
c0103d2e:	89 44 24 04          	mov    %eax,0x4(%esp)
c0103d32:	e8 f9 19 00 00       	call   c0105730 <__pow5mult>
c0103d37:	8b 4d a4             	mov    -0x5c(%ebp),%ecx
c0103d3a:	89 34 24             	mov    %esi,(%esp)
c0103d3d:	89 4c 24 08          	mov    %ecx,0x8(%esp)
c0103d41:	89 44 24 04          	mov    %eax,0x4(%esp)
c0103d45:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c0103d48:	e8 13 18 00 00       	call   c0105560 <__multiply>
c0103d4d:	8b 4d a4             	mov    -0x5c(%ebp),%ecx
c0103d50:	89 34 24             	mov    %esi,(%esp)
c0103d53:	89 4c 24 04          	mov    %ecx,0x4(%esp)
c0103d57:	89 45 8c             	mov    %eax,-0x74(%ebp)
c0103d5a:	e8 f1 14 00 00       	call   c0105250 <_Bfree>
c0103d5f:	8b 45 8c             	mov    -0x74(%ebp),%eax
c0103d62:	8b 55 88             	mov    -0x78(%ebp),%edx
c0103d65:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c0103d68:	8b 45 b0             	mov    -0x50(%ebp),%eax
c0103d6b:	29 d0                	sub    %edx,%eax
c0103d6d:	0f 85 1f 04 00 00    	jne    c0104192 <_dtoa_r+0xb12>
c0103d73:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c0103d7a:	00 
c0103d7b:	89 34 24             	mov    %esi,(%esp)
c0103d7e:	e8 ad 17 00 00       	call   c0105530 <__i2b>
c0103d83:	8b 4d 94             	mov    -0x6c(%ebp),%ecx
c0103d86:	85 c9                	test   %ecx,%ecx
c0103d88:	89 45 b0             	mov    %eax,-0x50(%ebp)
c0103d8b:	7e 13                	jle    c0103da0 <_dtoa_r+0x720>
c0103d8d:	89 4c 24 08          	mov    %ecx,0x8(%esp)
c0103d91:	89 44 24 04          	mov    %eax,0x4(%esp)
c0103d95:	89 34 24             	mov    %esi,(%esp)
c0103d98:	e8 93 19 00 00       	call   c0105730 <__pow5mult>
c0103d9d:	89 45 b0             	mov    %eax,-0x50(%ebp)
c0103da0:	83 7d 14 01          	cmpl   $0x1,0x14(%ebp)
c0103da4:	c7 45 8c 00 00 00 00 	movl   $0x0,-0x74(%ebp)
c0103dab:	0f 8e f7 05 00 00    	jle    c01043a8 <_dtoa_r+0xd28>
c0103db1:	8b 45 94             	mov    -0x6c(%ebp),%eax
c0103db4:	ba 01 00 00 00       	mov    $0x1,%edx
c0103db9:	85 c0                	test   %eax,%eax
c0103dbb:	0f 85 27 05 00 00    	jne    c01042e8 <_dtoa_r+0xc68>
c0103dc1:	8b 45 ac             	mov    -0x54(%ebp),%eax
c0103dc4:	01 d0                	add    %edx,%eax
c0103dc6:	83 e0 1f             	and    $0x1f,%eax
c0103dc9:	89 c2                	mov    %eax,%edx
c0103dcb:	0f 84 57 03 00 00    	je     c0104128 <_dtoa_r+0xaa8>
c0103dd1:	b8 20 00 00 00       	mov    $0x20,%eax
c0103dd6:	29 d0                	sub    %edx,%eax
c0103dd8:	83 f8 04             	cmp    $0x4,%eax
c0103ddb:	0f 8e 8c 0a 00 00    	jle    c010486d <_dtoa_r+0x11ed>
c0103de1:	b8 1c 00 00 00       	mov    $0x1c,%eax
c0103de6:	29 d0                	sub    %edx,%eax
c0103de8:	01 45 a0             	add    %eax,-0x60(%ebp)
c0103deb:	01 c3                	add    %eax,%ebx
c0103ded:	01 45 ac             	add    %eax,-0x54(%ebp)
c0103df0:	8b 45 a0             	mov    -0x60(%ebp),%eax
c0103df3:	85 c0                	test   %eax,%eax
c0103df5:	7e 16                	jle    c0103e0d <_dtoa_r+0x78d>
c0103df7:	89 44 24 08          	mov    %eax,0x8(%esp)
c0103dfb:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c0103dfe:	89 34 24             	mov    %esi,(%esp)
c0103e01:	89 44 24 04          	mov    %eax,0x4(%esp)
c0103e05:	e8 46 1a 00 00       	call   c0105850 <__lshift>
c0103e0a:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c0103e0d:	8b 45 ac             	mov    -0x54(%ebp),%eax
c0103e10:	85 c0                	test   %eax,%eax
c0103e12:	7e 16                	jle    c0103e2a <_dtoa_r+0x7aa>
c0103e14:	89 44 24 08          	mov    %eax,0x8(%esp)
c0103e18:	8b 45 b0             	mov    -0x50(%ebp),%eax
c0103e1b:	89 34 24             	mov    %esi,(%esp)
c0103e1e:	89 44 24 04          	mov    %eax,0x4(%esp)
c0103e22:	e8 29 1a 00 00       	call   c0105850 <__lshift>
c0103e27:	89 45 b0             	mov    %eax,-0x50(%ebp)
c0103e2a:	8b 45 9c             	mov    -0x64(%ebp),%eax
c0103e2d:	85 c0                	test   %eax,%eax
c0103e2f:	0f 85 d3 04 00 00    	jne    c0104308 <_dtoa_r+0xc88>
c0103e35:	83 7d 14 02          	cmpl   $0x2,0x14(%ebp)
c0103e39:	0f 8e 11 02 00 00    	jle    c0104050 <_dtoa_r+0x9d0>
c0103e3f:	8b 45 a8             	mov    -0x58(%ebp),%eax
c0103e42:	85 c0                	test   %eax,%eax
c0103e44:	0f 8f 06 02 00 00    	jg     c0104050 <_dtoa_r+0x9d0>
c0103e4a:	8b 45 a8             	mov    -0x58(%ebp),%eax
c0103e4d:	85 c0                	test   %eax,%eax
c0103e4f:	0f 85 e0 01 00 00    	jne    c0104035 <_dtoa_r+0x9b5>
c0103e55:	8b 45 b0             	mov    -0x50(%ebp),%eax
c0103e58:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c0103e5f:	00 
c0103e60:	c7 44 24 08 05 00 00 	movl   $0x5,0x8(%esp)
c0103e67:	00 
c0103e68:	89 34 24             	mov    %esi,(%esp)
c0103e6b:	89 44 24 04          	mov    %eax,0x4(%esp)
c0103e6f:	e8 fc 13 00 00       	call   c0105270 <__multadd>
c0103e74:	89 45 b0             	mov    %eax,-0x50(%ebp)
c0103e77:	89 44 24 04          	mov    %eax,0x4(%esp)
c0103e7b:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c0103e7e:	89 04 24             	mov    %eax,(%esp)
c0103e81:	e8 ea 1a 00 00       	call   c0105970 <__mcmp>
c0103e86:	85 c0                	test   %eax,%eax
c0103e88:	0f 8e a7 01 00 00    	jle    c0104035 <_dtoa_r+0x9b5>
c0103e8e:	83 45 b8 01          	addl   $0x1,-0x48(%ebp)
c0103e92:	89 fb                	mov    %edi,%ebx
c0103e94:	83 c7 01             	add    $0x1,%edi
c0103e97:	c6 47 ff 31          	movb   $0x31,-0x1(%edi)
c0103e9b:	c7 45 c0 00 00 00 00 	movl   $0x0,-0x40(%ebp)
c0103ea2:	8b 45 b0             	mov    -0x50(%ebp),%eax
c0103ea5:	89 34 24             	mov    %esi,(%esp)
c0103ea8:	89 44 24 04          	mov    %eax,0x4(%esp)
c0103eac:	e8 9f 13 00 00       	call   c0105250 <_Bfree>
c0103eb1:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0103eb4:	85 c0                	test   %eax,%eax
c0103eb6:	74 18                	je     c0103ed0 <_dtoa_r+0x850>
c0103eb8:	39 45 c0             	cmp    %eax,-0x40(%ebp)
c0103ebb:	0f 85 a7 02 00 00    	jne    c0104168 <_dtoa_r+0xae8>
c0103ec1:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0103ec4:	89 34 24             	mov    %esi,(%esp)
c0103ec7:	89 44 24 04          	mov    %eax,0x4(%esp)
c0103ecb:	e8 80 13 00 00       	call   c0105250 <_Bfree>
c0103ed0:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c0103ed3:	89 34 24             	mov    %esi,(%esp)
c0103ed6:	89 44 24 04          	mov    %eax,0x4(%esp)
c0103eda:	e8 71 13 00 00       	call   c0105250 <_Bfree>
c0103edf:	8b 45 b8             	mov    -0x48(%ebp),%eax
c0103ee2:	8b 75 1c             	mov    0x1c(%ebp),%esi
c0103ee5:	c6 07 00             	movb   $0x0,(%edi)
c0103ee8:	83 c0 01             	add    $0x1,%eax
c0103eeb:	89 06                	mov    %eax,(%esi)
c0103eed:	8b 45 24             	mov    0x24(%ebp),%eax
c0103ef0:	85 c0                	test   %eax,%eax
c0103ef2:	0f 84 90 02 00 00    	je     c0104188 <_dtoa_r+0xb08>
c0103ef8:	8b 45 24             	mov    0x24(%ebp),%eax
c0103efb:	89 38                	mov    %edi,(%eax)
c0103efd:	81 c4 8c 00 00 00    	add    $0x8c,%esp
c0103f03:	89 d8                	mov    %ebx,%eax
c0103f05:	5b                   	pop    %ebx
c0103f06:	5e                   	pop    %esi
c0103f07:	5f                   	pop    %edi
c0103f08:	5d                   	pop    %ebp
c0103f09:	c3                   	ret    
c0103f0a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0103f10:	db 45 b8             	fildl  -0x48(%ebp)
c0103f13:	df e9                	fucomip %st(1),%st
c0103f15:	dd d8                	fstp   %st(0)
c0103f17:	7a 06                	jp     c0103f1f <_dtoa_r+0x89f>
c0103f19:	0f 84 cc f8 ff ff    	je     c01037eb <_dtoa_r+0x16b>
c0103f1f:	83 6d b8 01          	subl   $0x1,-0x48(%ebp)
c0103f23:	e9 c3 f8 ff ff       	jmp    c01037eb <_dtoa_r+0x16b>
c0103f28:	8b 45 b8             	mov    -0x48(%ebp),%eax
c0103f2b:	29 45 a0             	sub    %eax,-0x60(%ebp)
c0103f2e:	c7 45 94 00 00 00 00 	movl   $0x0,-0x6c(%ebp)
c0103f35:	f7 d8                	neg    %eax
c0103f37:	89 45 b0             	mov    %eax,-0x50(%ebp)
c0103f3a:	e9 0c f9 ff ff       	jmp    c010384b <_dtoa_r+0x1cb>
c0103f3f:	90                   	nop
c0103f40:	f7 d8                	neg    %eax
c0103f42:	89 45 a0             	mov    %eax,-0x60(%ebp)
c0103f45:	c7 45 ac 00 00 00 00 	movl   $0x0,-0x54(%ebp)
c0103f4c:	e9 e2 f8 ff ff       	jmp    c0103833 <_dtoa_r+0x1b3>
c0103f51:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0103f58:	8b 45 c0             	mov    -0x40(%ebp),%eax
c0103f5b:	b9 ee fb ff ff       	mov    $0xfffffbee,%ecx
c0103f60:	29 d9                	sub    %ebx,%ecx
c0103f62:	d3 e0                	shl    %cl,%eax
c0103f64:	e9 1b f8 ff ff       	jmp    c0103784 <_dtoa_r+0x104>
c0103f69:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0103f70:	c7 45 9c 00 00 00 00 	movl   $0x0,-0x64(%ebp)
c0103f77:	e9 a0 f8 ff ff       	jmp    c010381c <_dtoa_r+0x19c>
c0103f7c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0103f80:	83 7d 14 01          	cmpl   $0x1,0x14(%ebp)
c0103f84:	0f 8e fe 06 00 00    	jle    c0104688 <_dtoa_r+0x1008>
c0103f8a:	8b 45 a8             	mov    -0x58(%ebp),%eax
c0103f8d:	83 e8 01             	sub    $0x1,%eax
c0103f90:	39 45 b0             	cmp    %eax,-0x50(%ebp)
c0103f93:	0f 8c 3b 06 00 00    	jl     c01045d4 <_dtoa_r+0xf54>
c0103f99:	8b 55 b0             	mov    -0x50(%ebp),%edx
c0103f9c:	29 c2                	sub    %eax,%edx
c0103f9e:	8b 4d a8             	mov    -0x58(%ebp),%ecx
c0103fa1:	8b 5d a0             	mov    -0x60(%ebp),%ebx
c0103fa4:	85 c9                	test   %ecx,%ecx
c0103fa6:	89 c8                	mov    %ecx,%eax
c0103fa8:	0f 88 83 07 00 00    	js     c0104731 <_dtoa_r+0x10b1>
c0103fae:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c0103fb5:	00 
c0103fb6:	89 34 24             	mov    %esi,(%esp)
c0103fb9:	89 55 8c             	mov    %edx,-0x74(%ebp)
c0103fbc:	01 45 a0             	add    %eax,-0x60(%ebp)
c0103fbf:	01 45 ac             	add    %eax,-0x54(%ebp)
c0103fc2:	e8 69 15 00 00       	call   c0105530 <__i2b>
c0103fc7:	8b 55 8c             	mov    -0x74(%ebp),%edx
c0103fca:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c0103fcd:	e9 1e fd ff ff       	jmp    c0103cf0 <_dtoa_r+0x670>
c0103fd2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0103fd8:	d9 c1                	fld    %st(1)
c0103fda:	b9 02 00 00 00       	mov    $0x2,%ecx
c0103fdf:	e9 37 fa ff ff       	jmp    c0103a1b <_dtoa_r+0x39b>
c0103fe4:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
c0103fe7:	db 45 d4             	fildl  -0x2c(%ebp)
c0103fea:	d8 c9                	fmul   %st(1),%st
c0103fec:	d8 05 48 82 10 c0    	fadds  0xc0108248
c0103ff2:	dd 5d c0             	fstpl  -0x40(%ebp)
c0103ff5:	81 6d c4 00 00 40 03 	subl   $0x3400000,-0x3c(%ebp)
c0103ffc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0104000:	d8 25 4c 82 10 c0    	fsubs  0xc010824c
c0104006:	dd 45 c0             	fldl   -0x40(%ebp)
c0104009:	d9 c9                	fxch   %st(1)
c010400b:	db e9                	fucomi %st(1),%st
c010400d:	0f 87 0d 02 00 00    	ja     c0104220 <_dtoa_r+0xba0>
c0104013:	d9 c9                	fxch   %st(1)
c0104015:	d9 e0                	fchs   
c0104017:	df e9                	fucomip %st(1),%st
c0104019:	dd d8                	fstp   %st(0)
c010401b:	0f 86 a7 01 00 00    	jbe    c01041c8 <_dtoa_r+0xb48>
c0104021:	dd d8                	fstp   %st(0)
c0104023:	eb 02                	jmp    c0104027 <_dtoa_r+0x9a7>
c0104025:	dd d8                	fstp   %st(0)
c0104027:	c7 45 b0 00 00 00 00 	movl   $0x0,-0x50(%ebp)
c010402e:	c7 45 b4 00 00 00 00 	movl   $0x0,-0x4c(%ebp)
c0104035:	8b 45 18             	mov    0x18(%ebp),%eax
c0104038:	89 fb                	mov    %edi,%ebx
c010403a:	c7 45 c0 00 00 00 00 	movl   $0x0,-0x40(%ebp)
c0104041:	f7 d0                	not    %eax
c0104043:	89 45 b8             	mov    %eax,-0x48(%ebp)
c0104046:	e9 57 fe ff ff       	jmp    c0103ea2 <_dtoa_r+0x822>
c010404b:	90                   	nop
c010404c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0104050:	8b 45 98             	mov    -0x68(%ebp),%eax
c0104053:	85 c0                	test   %eax,%eax
c0104055:	0f 85 c5 03 00 00    	jne    c0104420 <_dtoa_r+0xda0>
c010405b:	89 75 08             	mov    %esi,0x8(%ebp)
c010405e:	bb 01 00 00 00       	mov    $0x1,%ebx
c0104063:	8b 75 a4             	mov    -0x5c(%ebp),%esi
c0104066:	eb 24                	jmp    c010408c <_dtoa_r+0xa0c>
c0104068:	8b 45 08             	mov    0x8(%ebp),%eax
c010406b:	83 c3 01             	add    $0x1,%ebx
c010406e:	89 74 24 04          	mov    %esi,0x4(%esp)
c0104072:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c0104079:	00 
c010407a:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c0104081:	00 
c0104082:	89 04 24             	mov    %eax,(%esp)
c0104085:	e8 e6 11 00 00       	call   c0105270 <__multadd>
c010408a:	89 c6                	mov    %eax,%esi
c010408c:	8b 55 b0             	mov    -0x50(%ebp),%edx
c010408f:	89 f0                	mov    %esi,%eax
c0104091:	e8 1a f4 ff ff       	call   c01034b0 <quorem>
c0104096:	83 c0 30             	add    $0x30,%eax
c0104099:	3b 5d a8             	cmp    -0x58(%ebp),%ebx
c010409c:	88 44 1f ff          	mov    %al,-0x1(%edi,%ebx,1)
c01040a0:	7c c6                	jl     c0104068 <_dtoa_r+0x9e8>
c01040a2:	89 45 a0             	mov    %eax,-0x60(%ebp)
c01040a5:	8b 45 a8             	mov    -0x58(%ebp),%eax
c01040a8:	ba 01 00 00 00       	mov    $0x1,%edx
c01040ad:	89 75 a4             	mov    %esi,-0x5c(%ebp)
c01040b0:	8b 75 08             	mov    0x8(%ebp),%esi
c01040b3:	c7 45 c0 00 00 00 00 	movl   $0x0,-0x40(%ebp)
c01040ba:	85 c0                	test   %eax,%eax
c01040bc:	0f 4f d0             	cmovg  %eax,%edx
c01040bf:	01 fa                	add    %edi,%edx
c01040c1:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c01040c4:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
c01040cb:	00 
c01040cc:	89 34 24             	mov    %esi,(%esp)
c01040cf:	89 55 ac             	mov    %edx,-0x54(%ebp)
c01040d2:	89 44 24 04          	mov    %eax,0x4(%esp)
c01040d6:	e8 75 17 00 00       	call   c0105850 <__lshift>
c01040db:	8b 5d b0             	mov    -0x50(%ebp),%ebx
c01040de:	89 5c 24 04          	mov    %ebx,0x4(%esp)
c01040e2:	89 04 24             	mov    %eax,(%esp)
c01040e5:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c01040e8:	e8 83 18 00 00       	call   c0105970 <__mcmp>
c01040ed:	8b 55 ac             	mov    -0x54(%ebp),%edx
c01040f0:	83 f8 00             	cmp    $0x0,%eax
c01040f3:	0f 8e 41 06 00 00    	jle    c010473a <_dtoa_r+0x10ba>
c01040f9:	0f b6 4a ff          	movzbl -0x1(%edx),%ecx
c01040fd:	eb 0f                	jmp    c010410e <_dtoa_r+0xa8e>
c01040ff:	90                   	nop
c0104100:	39 c7                	cmp    %eax,%edi
c0104102:	0f 84 70 05 00 00    	je     c0104678 <_dtoa_r+0xff8>
c0104108:	0f b6 48 ff          	movzbl -0x1(%eax),%ecx
c010410c:	89 c2                	mov    %eax,%edx
c010410e:	80 f9 39             	cmp    $0x39,%cl
c0104111:	8d 42 ff             	lea    -0x1(%edx),%eax
c0104114:	74 ea                	je     c0104100 <_dtoa_r+0xa80>
c0104116:	83 c1 01             	add    $0x1,%ecx
c0104119:	89 fb                	mov    %edi,%ebx
c010411b:	88 08                	mov    %cl,(%eax)
c010411d:	89 d7                	mov    %edx,%edi
c010411f:	e9 7e fd ff ff       	jmp    c0103ea2 <_dtoa_r+0x822>
c0104124:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0104128:	b8 1c 00 00 00       	mov    $0x1c,%eax
c010412d:	01 45 a0             	add    %eax,-0x60(%ebp)
c0104130:	01 c3                	add    %eax,%ebx
c0104132:	01 45 ac             	add    %eax,-0x54(%ebp)
c0104135:	e9 b6 fc ff ff       	jmp    c0103df0 <_dtoa_r+0x770>
c010413a:	ba 01 00 00 00       	mov    $0x1,%edx
c010413f:	c7 45 90 01 00 00 00 	movl   $0x1,-0x70(%ebp)
c0104146:	c7 45 a8 01 00 00 00 	movl   $0x1,-0x58(%ebp)
c010414d:	c7 45 18 01 00 00 00 	movl   $0x1,0x18(%ebp)
c0104154:	21 c2                	and    %eax,%edx
c0104156:	88 55 b4             	mov    %dl,-0x4c(%ebp)
c0104159:	31 d2                	xor    %edx,%edx
c010415b:	c7 46 44 00 00 00 00 	movl   $0x0,0x44(%esi)
c0104162:	e9 62 f8 ff ff       	jmp    c01039c9 <_dtoa_r+0x349>
c0104167:	90                   	nop
c0104168:	8b 55 c0             	mov    -0x40(%ebp),%edx
c010416b:	85 d2                	test   %edx,%edx
c010416d:	0f 84 4e fd ff ff    	je     c0103ec1 <_dtoa_r+0x841>
c0104173:	8b 45 c0             	mov    -0x40(%ebp),%eax
c0104176:	89 34 24             	mov    %esi,(%esp)
c0104179:	89 44 24 04          	mov    %eax,0x4(%esp)
c010417d:	e8 ce 10 00 00       	call   c0105250 <_Bfree>
c0104182:	e9 3a fd ff ff       	jmp    c0103ec1 <_dtoa_r+0x841>
c0104187:	90                   	nop
c0104188:	89 d8                	mov    %ebx,%eax
c010418a:	e9 89 f5 ff ff       	jmp    c0103718 <_dtoa_r+0x98>
c010418f:	8b 45 b0             	mov    -0x50(%ebp),%eax
c0104192:	89 44 24 08          	mov    %eax,0x8(%esp)
c0104196:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c0104199:	89 34 24             	mov    %esi,(%esp)
c010419c:	89 44 24 04          	mov    %eax,0x4(%esp)
c01041a0:	e8 8b 15 00 00       	call   c0105730 <__pow5mult>
c01041a5:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c01041a8:	e9 c6 fb ff ff       	jmp    c0103d73 <_dtoa_r+0x6f3>
c01041ad:	dd d8                	fstp   %st(0)
c01041af:	dd d8                	fstp   %st(0)
c01041b1:	eb 15                	jmp    c01041c8 <_dtoa_r+0xb48>
c01041b3:	90                   	nop
c01041b4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c01041b8:	dd d8                	fstp   %st(0)
c01041ba:	dd d8                	fstp   %st(0)
c01041bc:	dd d8                	fstp   %st(0)
c01041be:	eb 08                	jmp    c01041c8 <_dtoa_r+0xb48>
c01041c0:	dd d8                	fstp   %st(0)
c01041c2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c01041c8:	dd 5d c0             	fstpl  -0x40(%ebp)
c01041cb:	e9 cf f9 ff ff       	jmp    c0103b9f <_dtoa_r+0x51f>
c01041d0:	8b 45 b8             	mov    -0x48(%ebp),%eax
c01041d3:	f7 d8                	neg    %eax
c01041d5:	0f 84 6a 04 00 00    	je     c0104645 <_dtoa_r+0xfc5>
c01041db:	89 c2                	mov    %eax,%edx
c01041dd:	b9 02 00 00 00       	mov    $0x2,%ecx
c01041e2:	83 e2 0f             	and    $0xf,%edx
c01041e5:	c1 f8 04             	sar    $0x4,%eax
c01041e8:	dd 04 d5 20 83 10 c0 	fldl   -0x3fef7ce0(,%edx,8)
c01041ef:	85 c0                	test   %eax,%eax
c01041f1:	d8 c9                	fmul   %st(1),%st
c01041f3:	0f 84 4a f8 ff ff    	je     c0103a43 <_dtoa_r+0x3c3>
c01041f9:	31 d2                	xor    %edx,%edx
c01041fb:	90                   	nop
c01041fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0104200:	a8 01                	test   $0x1,%al
c0104202:	74 0a                	je     c010420e <_dtoa_r+0xb8e>
c0104204:	dc 0c d5 e0 82 10 c0 	fmull  -0x3fef7d20(,%edx,8)
c010420b:	83 c1 01             	add    $0x1,%ecx
c010420e:	83 c2 01             	add    $0x1,%edx
c0104211:	d1 f8                	sar    %eax
c0104213:	75 eb                	jne    c0104200 <_dtoa_r+0xb80>
c0104215:	e9 29 f8 ff ff       	jmp    c0103a43 <_dtoa_r+0x3c3>
c010421a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0104220:	dd d8                	fstp   %st(0)
c0104222:	dd d8                	fstp   %st(0)
c0104224:	dd d8                	fstp   %st(0)
c0104226:	c7 45 b0 00 00 00 00 	movl   $0x0,-0x50(%ebp)
c010422d:	c7 45 b4 00 00 00 00 	movl   $0x0,-0x4c(%ebp)
c0104234:	e9 55 fc ff ff       	jmp    c0103e8e <_dtoa_r+0x80e>
c0104239:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0104240:	d9 7d d2             	fnstcw -0x2e(%ebp)
c0104243:	8d 41 ff             	lea    -0x1(%ecx),%eax
c0104246:	dd 45 c0             	fldl   -0x40(%ebp)
c0104249:	dc 0c c5 20 83 10 c0 	fmull  -0x3fef7ce0(,%eax,8)
c0104250:	d9 c9                	fxch   %st(1)
c0104252:	89 45 88             	mov    %eax,-0x78(%ebp)
c0104255:	0f b7 45 d2          	movzwl -0x2e(%ebp),%eax
c0104259:	8d 57 01             	lea    0x1(%edi),%edx
c010425c:	8d 1c 0f             	lea    (%edi,%ecx,1),%ebx
c010425f:	b4 0c                	mov    $0xc,%ah
c0104261:	66 89 45 d0          	mov    %ax,-0x30(%ebp)
c0104265:	d9 6d d0             	fldcw  -0x30(%ebp)
c0104268:	db 55 d4             	fistl  -0x2c(%ebp)
c010426b:	d9 6d d2             	fldcw  -0x2e(%ebp)
c010426e:	8b 45 d4             	mov    -0x2c(%ebp),%eax
c0104271:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c0104274:	83 c0 30             	add    $0x30,%eax
c0104277:	83 f9 01             	cmp    $0x1,%ecx
c010427a:	db 45 d4             	fildl  -0x2c(%ebp)
c010427d:	de e9                	fsubrp %st,%st(1)
c010427f:	88 07                	mov    %al,(%edi)
c0104281:	89 d0                	mov    %edx,%eax
c0104283:	74 37                	je     c01042bc <_dtoa_r+0xc3c>
c0104285:	d9 05 44 82 10 c0    	flds   0xc0108244
c010428b:	eb 05                	jmp    c0104292 <_dtoa_r+0xc12>
c010428d:	8d 76 00             	lea    0x0(%esi),%esi
c0104290:	d9 c9                	fxch   %st(1)
c0104292:	dc c9                	fmul   %st,%st(1)
c0104294:	d9 c9                	fxch   %st(1)
c0104296:	83 c0 01             	add    $0x1,%eax
c0104299:	d9 6d d0             	fldcw  -0x30(%ebp)
c010429c:	db 55 d4             	fistl  -0x2c(%ebp)
c010429f:	d9 6d d2             	fldcw  -0x2e(%ebp)
c01042a2:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
c01042a5:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
c01042a8:	83 c1 30             	add    $0x30,%ecx
c01042ab:	39 d8                	cmp    %ebx,%eax
c01042ad:	db 45 d4             	fildl  -0x2c(%ebp)
c01042b0:	de e9                	fsubrp %st,%st(1)
c01042b2:	88 48 ff             	mov    %cl,-0x1(%eax)
c01042b5:	75 d9                	jne    c0104290 <_dtoa_r+0xc10>
c01042b7:	dd d9                	fstp   %st(1)
c01042b9:	03 55 88             	add    -0x78(%ebp),%edx
c01042bc:	d9 05 50 82 10 c0    	flds   0xc0108250
c01042c2:	d9 c2                	fld    %st(2)
c01042c4:	d8 c1                	fadd   %st(1),%st
c01042c6:	d9 ca                	fxch   %st(2)
c01042c8:	db ea                	fucomi %st(2),%st
c01042ca:	dd da                	fstp   %st(2)
c01042cc:	0f 86 7f 03 00 00    	jbe    c0104651 <_dtoa_r+0xfd1>
c01042d2:	dd d8                	fstp   %st(0)
c01042d4:	dd d8                	fstp   %st(0)
c01042d6:	dd d8                	fstp   %st(0)
c01042d8:	dd d8                	fstp   %st(0)
c01042da:	89 fb                	mov    %edi,%ebx
c01042dc:	0f b6 42 ff          	movzbl -0x1(%edx),%eax
c01042e0:	89 d7                	mov    %edx,%edi
c01042e2:	e9 d7 f9 ff ff       	jmp    c0103cbe <_dtoa_r+0x63e>
c01042e7:	90                   	nop
c01042e8:	8b 4d b0             	mov    -0x50(%ebp),%ecx
c01042eb:	8b 41 10             	mov    0x10(%ecx),%eax
c01042ee:	8b 44 81 10          	mov    0x10(%ecx,%eax,4),%eax
c01042f2:	89 04 24             	mov    %eax,(%esp)
c01042f5:	e8 56 11 00 00       	call   c0105450 <__hi0bits>
c01042fa:	ba 20 00 00 00       	mov    $0x20,%edx
c01042ff:	29 c2                	sub    %eax,%edx
c0104301:	e9 bb fa ff ff       	jmp    c0103dc1 <_dtoa_r+0x741>
c0104306:	66 90                	xchg   %ax,%ax
c0104308:	8b 45 b0             	mov    -0x50(%ebp),%eax
c010430b:	89 44 24 04          	mov    %eax,0x4(%esp)
c010430f:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c0104312:	89 04 24             	mov    %eax,(%esp)
c0104315:	e8 56 16 00 00       	call   c0105970 <__mcmp>
c010431a:	85 c0                	test   %eax,%eax
c010431c:	0f 89 13 fb ff ff    	jns    c0103e35 <_dtoa_r+0x7b5>
c0104322:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c0104325:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c010432c:	00 
c010432d:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c0104334:	00 
c0104335:	89 34 24             	mov    %esi,(%esp)
c0104338:	89 44 24 04          	mov    %eax,0x4(%esp)
c010433c:	83 6d b8 01          	subl   $0x1,-0x48(%ebp)
c0104340:	e8 2b 0f 00 00       	call   c0105270 <__multadd>
c0104345:	8b 4d 98             	mov    -0x68(%ebp),%ecx
c0104348:	85 c9                	test   %ecx,%ecx
c010434a:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c010434d:	0f 85 8d 00 00 00    	jne    c01043e0 <_dtoa_r+0xd60>
c0104353:	83 7d 90 00          	cmpl   $0x0,-0x70(%ebp)
c0104357:	8b 45 90             	mov    -0x70(%ebp),%eax
c010435a:	7f 0a                	jg     c0104366 <_dtoa_r+0xce6>
c010435c:	83 7d 14 02          	cmpl   $0x2,0x14(%ebp)
c0104360:	0f 8f ff 04 00 00    	jg     c0104865 <_dtoa_r+0x11e5>
c0104366:	89 45 a8             	mov    %eax,-0x58(%ebp)
c0104369:	e9 ed fc ff ff       	jmp    c010405b <_dtoa_r+0x9db>
c010436e:	66 90                	xchg   %ax,%ax
c0104370:	8b 5d a8             	mov    -0x58(%ebp),%ebx
c0104373:	85 db                	test   %ebx,%ebx
c0104375:	0f 85 aa fc ff ff    	jne    c0104025 <_dtoa_r+0x9a5>
c010437b:	d8 0d 4c 82 10 c0    	fmuls  0xc010824c
c0104381:	c7 45 b0 00 00 00 00 	movl   $0x0,-0x50(%ebp)
c0104388:	c7 45 b4 00 00 00 00 	movl   $0x0,-0x4c(%ebp)
c010438f:	dd 45 c0             	fldl   -0x40(%ebp)
c0104392:	d9 c9                	fxch   %st(1)
c0104394:	df e9                	fucomip %st(1),%st
c0104396:	dd d8                	fstp   %st(0)
c0104398:	0f 83 97 fc ff ff    	jae    c0104035 <_dtoa_r+0x9b5>
c010439e:	e9 eb fa ff ff       	jmp    c0103e8e <_dtoa_r+0x80e>
c01043a3:	90                   	nop
c01043a4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c01043a8:	8b 45 c0             	mov    -0x40(%ebp),%eax
c01043ab:	85 c0                	test   %eax,%eax
c01043ad:	0f 85 fe f9 ff ff    	jne    c0103db1 <_dtoa_r+0x731>
c01043b3:	8b 45 c4             	mov    -0x3c(%ebp),%eax
c01043b6:	a9 ff ff 0f 00       	test   $0xfffff,%eax
c01043bb:	0f 85 f0 f9 ff ff    	jne    c0103db1 <_dtoa_r+0x731>
c01043c1:	a9 00 00 f0 7f       	test   $0x7ff00000,%eax
c01043c6:	0f 84 e5 f9 ff ff    	je     c0103db1 <_dtoa_r+0x731>
c01043cc:	83 45 a0 01          	addl   $0x1,-0x60(%ebp)
c01043d0:	83 45 ac 01          	addl   $0x1,-0x54(%ebp)
c01043d4:	c7 45 8c 01 00 00 00 	movl   $0x1,-0x74(%ebp)
c01043db:	e9 d1 f9 ff ff       	jmp    c0103db1 <_dtoa_r+0x731>
c01043e0:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c01043e3:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c01043ea:	00 
c01043eb:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c01043f2:	00 
c01043f3:	89 34 24             	mov    %esi,(%esp)
c01043f6:	89 44 24 04          	mov    %eax,0x4(%esp)
c01043fa:	e8 71 0e 00 00       	call   c0105270 <__multadd>
c01043ff:	8b 55 90             	mov    -0x70(%ebp),%edx
c0104402:	85 d2                	test   %edx,%edx
c0104404:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c0104407:	8b 45 90             	mov    -0x70(%ebp),%eax
c010440a:	7f 0a                	jg     c0104416 <_dtoa_r+0xd96>
c010440c:	83 7d 14 02          	cmpl   $0x2,0x14(%ebp)
c0104410:	0f 8f 4f 04 00 00    	jg     c0104865 <_dtoa_r+0x11e5>
c0104416:	89 45 a8             	mov    %eax,-0x58(%ebp)
c0104419:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0104420:	85 db                	test   %ebx,%ebx
c0104422:	7e 16                	jle    c010443a <_dtoa_r+0xdba>
c0104424:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0104427:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c010442b:	89 34 24             	mov    %esi,(%esp)
c010442e:	89 44 24 04          	mov    %eax,0x4(%esp)
c0104432:	e8 19 14 00 00       	call   c0105850 <__lshift>
c0104437:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c010443a:	8b 5d 8c             	mov    -0x74(%ebp),%ebx
c010443d:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0104440:	85 db                	test   %ebx,%ebx
c0104442:	89 45 ac             	mov    %eax,-0x54(%ebp)
c0104445:	0f 85 11 03 00 00    	jne    c010475c <_dtoa_r+0x10dc>
c010444b:	8b 45 a8             	mov    -0x58(%ebp),%eax
c010444e:	8d 5f 01             	lea    0x1(%edi),%ebx
c0104451:	89 7d 8c             	mov    %edi,-0x74(%ebp)
c0104454:	01 f8                	add    %edi,%eax
c0104456:	8b 7d a4             	mov    -0x5c(%ebp),%edi
c0104459:	89 45 90             	mov    %eax,-0x70(%ebp)
c010445c:	8b 45 c0             	mov    -0x40(%ebp),%eax
c010445f:	83 e0 01             	and    $0x1,%eax
c0104462:	89 45 9c             	mov    %eax,-0x64(%ebp)
c0104465:	eb 2e                	jmp    c0104495 <_dtoa_r+0xe15>
c0104467:	90                   	nop
c0104468:	e8 03 0e 00 00       	call   c0105270 <__multadd>
c010446d:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c0104474:	00 
c0104475:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c010447c:	00 
c010447d:	89 34 24             	mov    %esi,(%esp)
c0104480:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c0104483:	8b 45 ac             	mov    -0x54(%ebp),%eax
c0104486:	89 44 24 04          	mov    %eax,0x4(%esp)
c010448a:	e8 e1 0d 00 00       	call   c0105270 <__multadd>
c010448f:	89 45 ac             	mov    %eax,-0x54(%ebp)
c0104492:	83 c3 01             	add    $0x1,%ebx
c0104495:	8b 55 b0             	mov    -0x50(%ebp),%edx
c0104498:	8d 43 ff             	lea    -0x1(%ebx),%eax
c010449b:	89 45 98             	mov    %eax,-0x68(%ebp)
c010449e:	89 f8                	mov    %edi,%eax
c01044a0:	e8 0b f0 ff ff       	call   c01034b0 <quorem>
c01044a5:	89 3c 24             	mov    %edi,(%esp)
c01044a8:	8d 48 30             	lea    0x30(%eax),%ecx
c01044ab:	89 4d a0             	mov    %ecx,-0x60(%ebp)
c01044ae:	8b 4d b4             	mov    -0x4c(%ebp),%ecx
c01044b1:	89 45 94             	mov    %eax,-0x6c(%ebp)
c01044b4:	89 4c 24 04          	mov    %ecx,0x4(%esp)
c01044b8:	e8 b3 14 00 00       	call   c0105970 <__mcmp>
c01044bd:	8b 4d ac             	mov    -0x54(%ebp),%ecx
c01044c0:	89 34 24             	mov    %esi,(%esp)
c01044c3:	89 4c 24 08          	mov    %ecx,0x8(%esp)
c01044c7:	89 45 c0             	mov    %eax,-0x40(%ebp)
c01044ca:	8b 45 b0             	mov    -0x50(%ebp),%eax
c01044cd:	89 44 24 04          	mov    %eax,0x4(%esp)
c01044d1:	e8 ea 14 00 00       	call   c01059c0 <__mdiff>
c01044d6:	8b 48 0c             	mov    0xc(%eax),%ecx
c01044d9:	89 c2                	mov    %eax,%edx
c01044db:	85 c9                	test   %ecx,%ecx
c01044dd:	0f 85 c5 00 00 00    	jne    c01045a8 <_dtoa_r+0xf28>
c01044e3:	89 44 24 04          	mov    %eax,0x4(%esp)
c01044e7:	89 3c 24             	mov    %edi,(%esp)
c01044ea:	89 45 a8             	mov    %eax,-0x58(%ebp)
c01044ed:	e8 7e 14 00 00       	call   c0105970 <__mcmp>
c01044f2:	8b 55 a8             	mov    -0x58(%ebp),%edx
c01044f5:	89 54 24 04          	mov    %edx,0x4(%esp)
c01044f9:	89 34 24             	mov    %esi,(%esp)
c01044fc:	89 45 a8             	mov    %eax,-0x58(%ebp)
c01044ff:	e8 4c 0d 00 00       	call   c0105250 <_Bfree>
c0104504:	8b 45 a8             	mov    -0x58(%ebp),%eax
c0104507:	89 c1                	mov    %eax,%ecx
c0104509:	0b 4d 14             	or     0x14(%ebp),%ecx
c010450c:	75 0b                	jne    c0104519 <_dtoa_r+0xe99>
c010450e:	8b 55 9c             	mov    -0x64(%ebp),%edx
c0104511:	85 d2                	test   %edx,%edx
c0104513:	0f 84 fb 02 00 00    	je     c0104814 <_dtoa_r+0x1194>
c0104519:	8b 55 c0             	mov    -0x40(%ebp),%edx
c010451c:	85 d2                	test   %edx,%edx
c010451e:	0f 88 7f 01 00 00    	js     c01046a3 <_dtoa_r+0x1023>
c0104524:	8b 4d c0             	mov    -0x40(%ebp),%ecx
c0104527:	0b 4d 14             	or     0x14(%ebp),%ecx
c010452a:	75 0b                	jne    c0104537 <_dtoa_r+0xeb7>
c010452c:	8b 4d 9c             	mov    -0x64(%ebp),%ecx
c010452f:	85 c9                	test   %ecx,%ecx
c0104531:	0f 84 6c 01 00 00    	je     c01046a3 <_dtoa_r+0x1023>
c0104537:	85 c0                	test   %eax,%eax
c0104539:	0f 8f 82 02 00 00    	jg     c01047c1 <_dtoa_r+0x1141>
c010453f:	0f b6 45 a0          	movzbl -0x60(%ebp),%eax
c0104543:	89 da                	mov    %ebx,%edx
c0104545:	3b 5d 90             	cmp    -0x70(%ebp),%ebx
c0104548:	88 43 ff             	mov    %al,-0x1(%ebx)
c010454b:	0f 84 8d 02 00 00    	je     c01047de <_dtoa_r+0x115e>
c0104551:	89 7c 24 04          	mov    %edi,0x4(%esp)
c0104555:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c010455c:	00 
c010455d:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c0104564:	00 
c0104565:	89 34 24             	mov    %esi,(%esp)
c0104568:	e8 03 0d 00 00       	call   c0105270 <__multadd>
c010456d:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c0104574:	00 
c0104575:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c010457c:	00 
c010457d:	89 34 24             	mov    %esi,(%esp)
c0104580:	89 c7                	mov    %eax,%edi
c0104582:	8b 45 ac             	mov    -0x54(%ebp),%eax
c0104585:	39 45 b4             	cmp    %eax,-0x4c(%ebp)
c0104588:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c010458b:	89 44 24 04          	mov    %eax,0x4(%esp)
c010458f:	0f 85 d3 fe ff ff    	jne    c0104468 <_dtoa_r+0xde8>
c0104595:	e8 d6 0c 00 00       	call   c0105270 <__multadd>
c010459a:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c010459d:	89 45 ac             	mov    %eax,-0x54(%ebp)
c01045a0:	e9 ed fe ff ff       	jmp    c0104492 <_dtoa_r+0xe12>
c01045a5:	8d 76 00             	lea    0x0(%esi),%esi
c01045a8:	b8 01 00 00 00       	mov    $0x1,%eax
c01045ad:	e9 43 ff ff ff       	jmp    c01044f5 <_dtoa_r+0xe75>
c01045b2:	c7 45 98 00 00 00 00 	movl   $0x0,-0x68(%ebp)
c01045b9:	e9 d2 f2 ff ff       	jmp    c0103890 <_dtoa_r+0x210>
c01045be:	0f 85 87 f6 ff ff    	jne    c0103c4b <_dtoa_r+0x5cb>
c01045c4:	dd d8                	fstp   %st(0)
c01045c6:	dd d8                	fstp   %st(0)
c01045c8:	dd d8                	fstp   %st(0)
c01045ca:	89 fb                	mov    %edi,%ebx
c01045cc:	8b 7d c0             	mov    -0x40(%ebp),%edi
c01045cf:	e9 fc f8 ff ff       	jmp    c0103ed0 <_dtoa_r+0x850>
c01045d4:	89 c2                	mov    %eax,%edx
c01045d6:	2b 55 b0             	sub    -0x50(%ebp),%edx
c01045d9:	89 45 b0             	mov    %eax,-0x50(%ebp)
c01045dc:	01 55 94             	add    %edx,-0x6c(%ebp)
c01045df:	31 d2                	xor    %edx,%edx
c01045e1:	e9 b8 f9 ff ff       	jmp    c0103f9e <_dtoa_r+0x91e>
c01045e6:	8b 45 a8             	mov    -0x58(%ebp),%eax
c01045e9:	85 c0                	test   %eax,%eax
c01045eb:	0f 84 f3 f9 ff ff    	je     c0103fe4 <_dtoa_r+0x964>
c01045f1:	8b 45 90             	mov    -0x70(%ebp),%eax
c01045f4:	85 c0                	test   %eax,%eax
c01045f6:	0f 8e c4 fb ff ff    	jle    c01041c0 <_dtoa_r+0xb40>
c01045fc:	d8 0d 44 82 10 c0    	fmuls  0xc0108244
c0104602:	83 c1 01             	add    $0x1,%ecx
c0104605:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
c0104608:	8b 5d b8             	mov    -0x48(%ebp),%ebx
c010460b:	89 c1                	mov    %eax,%ecx
c010460d:	83 eb 01             	sub    $0x1,%ebx
c0104610:	db 45 d4             	fildl  -0x2c(%ebp)
c0104613:	d8 c9                	fmul   %st(1),%st
c0104615:	89 5d b4             	mov    %ebx,-0x4c(%ebp)
c0104618:	d8 05 48 82 10 c0    	fadds  0xc0108248
c010461e:	dd 5d c0             	fstpl  -0x40(%ebp)
c0104621:	81 6d c4 00 00 40 03 	subl   $0x3400000,-0x3c(%ebp)
c0104628:	e9 53 f4 ff ff       	jmp    c0103a80 <_dtoa_r+0x400>
c010462d:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0104630:	c6 03 30             	movb   $0x30,(%ebx)
c0104633:	83 c0 01             	add    $0x1,%eax
c0104636:	89 45 b8             	mov    %eax,-0x48(%ebp)
c0104639:	b8 31 00 00 00       	mov    $0x31,%eax
c010463e:	88 02                	mov    %al,(%edx)
c0104640:	e9 8b f8 ff ff       	jmp    c0103ed0 <_dtoa_r+0x850>
c0104645:	d9 c0                	fld    %st(0)
c0104647:	b9 02 00 00 00       	mov    $0x2,%ecx
c010464c:	e9 f2 f3 ff ff       	jmp    c0103a43 <_dtoa_r+0x3c3>
c0104651:	de e2                	fsubp  %st,%st(2)
c0104653:	d9 c9                	fxch   %st(1)
c0104655:	df e9                	fucomip %st(1),%st
c0104657:	dd d8                	fstp   %st(0)
c0104659:	0f 86 69 fb ff ff    	jbe    c01041c8 <_dtoa_r+0xb48>
c010465f:	dd d8                	fstp   %st(0)
c0104661:	eb 07                	jmp    c010466a <_dtoa_r+0xfea>
c0104663:	90                   	nop
c0104664:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0104668:	89 c2                	mov    %eax,%edx
c010466a:	80 7a ff 30          	cmpb   $0x30,-0x1(%edx)
c010466e:	8d 42 ff             	lea    -0x1(%edx),%eax
c0104671:	74 f5                	je     c0104668 <_dtoa_r+0xfe8>
c0104673:	e9 d9 f4 ff ff       	jmp    c0103b51 <_dtoa_r+0x4d1>
c0104678:	c6 07 31             	movb   $0x31,(%edi)
c010467b:	89 fb                	mov    %edi,%ebx
c010467d:	89 d7                	mov    %edx,%edi
c010467f:	83 45 b8 01          	addl   $0x1,-0x48(%ebp)
c0104683:	e9 1a f8 ff ff       	jmp    c0103ea2 <_dtoa_r+0x822>
c0104688:	8b 55 8c             	mov    -0x74(%ebp),%edx
c010468b:	85 d2                	test   %edx,%edx
c010468d:	0f 84 1b 01 00 00    	je     c01047ae <_dtoa_r+0x112e>
c0104693:	05 33 04 00 00       	add    $0x433,%eax
c0104698:	8b 55 b0             	mov    -0x50(%ebp),%edx
c010469b:	8b 5d a0             	mov    -0x60(%ebp),%ebx
c010469e:	e9 0b f9 ff ff       	jmp    c0103fae <_dtoa_r+0x92e>
c01046a3:	85 c0                	test   %eax,%eax
c01046a5:	89 7d a4             	mov    %edi,-0x5c(%ebp)
c01046a8:	8b 7d 8c             	mov    -0x74(%ebp),%edi
c01046ab:	7e 45                	jle    c01046f2 <_dtoa_r+0x1072>
c01046ad:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c01046b0:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
c01046b7:	00 
c01046b8:	89 34 24             	mov    %esi,(%esp)
c01046bb:	89 44 24 04          	mov    %eax,0x4(%esp)
c01046bf:	e8 8c 11 00 00       	call   c0105850 <__lshift>
c01046c4:	8b 5d b0             	mov    -0x50(%ebp),%ebx
c01046c7:	89 5c 24 04          	mov    %ebx,0x4(%esp)
c01046cb:	89 04 24             	mov    %eax,(%esp)
c01046ce:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c01046d1:	e8 9a 12 00 00       	call   c0105970 <__mcmp>
c01046d6:	83 f8 00             	cmp    $0x0,%eax
c01046d9:	0f 8e 5b 01 00 00    	jle    c010483a <_dtoa_r+0x11ba>
c01046df:	83 7d a0 39          	cmpl   $0x39,-0x60(%ebp)
c01046e3:	0f 84 0c 01 00 00    	je     c01047f5 <_dtoa_r+0x1175>
c01046e9:	8b 45 94             	mov    -0x6c(%ebp),%eax
c01046ec:	83 c0 31             	add    $0x31,%eax
c01046ef:	89 45 a0             	mov    %eax,-0x60(%ebp)
c01046f2:	8b 4d 98             	mov    -0x68(%ebp),%ecx
c01046f5:	0f b6 45 a0          	movzbl -0x60(%ebp),%eax
c01046f9:	89 cb                	mov    %ecx,%ebx
c01046fb:	88 03                	mov    %al,(%ebx)
c01046fd:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0104700:	89 fb                	mov    %edi,%ebx
c0104702:	8d 79 01             	lea    0x1(%ecx),%edi
c0104705:	89 45 c0             	mov    %eax,-0x40(%ebp)
c0104708:	8b 45 ac             	mov    -0x54(%ebp),%eax
c010470b:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c010470e:	e9 8f f7 ff ff       	jmp    c0103ea2 <_dtoa_r+0x822>
c0104713:	dd d8                	fstp   %st(0)
c0104715:	dd d8                	fstp   %st(0)
c0104717:	dd d8                	fstp   %st(0)
c0104719:	eb 0d                	jmp    c0104728 <_dtoa_r+0x10a8>
c010471b:	90                   	nop
c010471c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0104720:	dd d8                	fstp   %st(0)
c0104722:	dd d8                	fstp   %st(0)
c0104724:	dd d8                	fstp   %st(0)
c0104726:	dd d8                	fstp   %st(0)
c0104728:	89 fb                	mov    %edi,%ebx
c010472a:	89 d7                	mov    %edx,%edi
c010472c:	e9 8d f5 ff ff       	jmp    c0103cbe <_dtoa_r+0x63e>
c0104731:	29 cb                	sub    %ecx,%ebx
c0104733:	31 c0                	xor    %eax,%eax
c0104735:	e9 74 f8 ff ff       	jmp    c0103fae <_dtoa_r+0x92e>
c010473a:	75 0e                	jne    c010474a <_dtoa_r+0x10ca>
c010473c:	f6 45 a0 01          	testb  $0x1,-0x60(%ebp)
c0104740:	74 08                	je     c010474a <_dtoa_r+0x10ca>
c0104742:	e9 b2 f9 ff ff       	jmp    c01040f9 <_dtoa_r+0xa79>
c0104747:	90                   	nop
c0104748:	89 c2                	mov    %eax,%edx
c010474a:	80 7a ff 30          	cmpb   $0x30,-0x1(%edx)
c010474e:	8d 42 ff             	lea    -0x1(%edx),%eax
c0104751:	74 f5                	je     c0104748 <_dtoa_r+0x10c8>
c0104753:	89 fb                	mov    %edi,%ebx
c0104755:	89 d7                	mov    %edx,%edi
c0104757:	e9 46 f7 ff ff       	jmp    c0103ea2 <_dtoa_r+0x822>
c010475c:	8b 40 04             	mov    0x4(%eax),%eax
c010475f:	89 34 24             	mov    %esi,(%esp)
c0104762:	89 44 24 04          	mov    %eax,0x4(%esp)
c0104766:	e8 45 0a 00 00       	call   c01051b0 <_Balloc>
c010476b:	8b 4d b4             	mov    -0x4c(%ebp),%ecx
c010476e:	89 c3                	mov    %eax,%ebx
c0104770:	8b 41 10             	mov    0x10(%ecx),%eax
c0104773:	8d 04 85 08 00 00 00 	lea    0x8(,%eax,4),%eax
c010477a:	89 44 24 08          	mov    %eax,0x8(%esp)
c010477e:	89 c8                	mov    %ecx,%eax
c0104780:	83 c0 0c             	add    $0xc,%eax
c0104783:	89 44 24 04          	mov    %eax,0x4(%esp)
c0104787:	8d 43 0c             	lea    0xc(%ebx),%eax
c010478a:	89 04 24             	mov    %eax,(%esp)
c010478d:	e8 6e cc ff ff       	call   c0101400 <memcpy>
c0104792:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
c0104799:	00 
c010479a:	89 5c 24 04          	mov    %ebx,0x4(%esp)
c010479e:	89 34 24             	mov    %esi,(%esp)
c01047a1:	e8 aa 10 00 00       	call   c0105850 <__lshift>
c01047a6:	89 45 ac             	mov    %eax,-0x54(%ebp)
c01047a9:	e9 9d fc ff ff       	jmp    c010444b <_dtoa_r+0xdcb>
c01047ae:	b8 36 00 00 00       	mov    $0x36,%eax
c01047b3:	8b 55 b0             	mov    -0x50(%ebp),%edx
c01047b6:	2b 45 e0             	sub    -0x20(%ebp),%eax
c01047b9:	8b 5d a0             	mov    -0x60(%ebp),%ebx
c01047bc:	e9 ed f7 ff ff       	jmp    c0103fae <_dtoa_r+0x92e>
c01047c1:	83 7d a0 39          	cmpl   $0x39,-0x60(%ebp)
c01047c5:	89 7d a4             	mov    %edi,-0x5c(%ebp)
c01047c8:	8b 7d 8c             	mov    -0x74(%ebp),%edi
c01047cb:	74 28                	je     c01047f5 <_dtoa_r+0x1175>
c01047cd:	0f b6 45 a0          	movzbl -0x60(%ebp),%eax
c01047d1:	8b 4d 98             	mov    -0x68(%ebp),%ecx
c01047d4:	83 c0 01             	add    $0x1,%eax
c01047d7:	89 cb                	mov    %ecx,%ebx
c01047d9:	e9 1d ff ff ff       	jmp    c01046fb <_dtoa_r+0x107b>
c01047de:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c01047e1:	89 7d a4             	mov    %edi,-0x5c(%ebp)
c01047e4:	8b 7d 8c             	mov    -0x74(%ebp),%edi
c01047e7:	89 45 c0             	mov    %eax,-0x40(%ebp)
c01047ea:	8b 45 ac             	mov    -0x54(%ebp),%eax
c01047ed:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c01047f0:	e9 cc f8 ff ff       	jmp    c01040c1 <_dtoa_r+0xa41>
c01047f5:	8b 45 98             	mov    -0x68(%ebp),%eax
c01047f8:	b9 39 00 00 00       	mov    $0x39,%ecx
c01047fd:	8d 50 01             	lea    0x1(%eax),%edx
c0104800:	c6 00 39             	movb   $0x39,(%eax)
c0104803:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0104806:	89 45 c0             	mov    %eax,-0x40(%ebp)
c0104809:	8b 45 ac             	mov    -0x54(%ebp),%eax
c010480c:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c010480f:	e9 fa f8 ff ff       	jmp    c010410e <_dtoa_r+0xa8e>
c0104814:	8b 5d a0             	mov    -0x60(%ebp),%ebx
c0104817:	89 7d a4             	mov    %edi,-0x5c(%ebp)
c010481a:	8b 7d 8c             	mov    -0x74(%ebp),%edi
c010481d:	83 fb 39             	cmp    $0x39,%ebx
c0104820:	74 d3                	je     c01047f5 <_dtoa_r+0x1175>
c0104822:	8b 4d c0             	mov    -0x40(%ebp),%ecx
c0104825:	8b 45 94             	mov    -0x6c(%ebp),%eax
c0104828:	83 c0 31             	add    $0x31,%eax
c010482b:	85 c9                	test   %ecx,%ecx
c010482d:	8b 4d 98             	mov    -0x68(%ebp),%ecx
c0104830:	0f 4e c3             	cmovle %ebx,%eax
c0104833:	89 cb                	mov    %ecx,%ebx
c0104835:	e9 c1 fe ff ff       	jmp    c01046fb <_dtoa_r+0x107b>
c010483a:	0f 85 b2 fe ff ff    	jne    c01046f2 <_dtoa_r+0x1072>
c0104840:	f6 45 a0 01          	testb  $0x1,-0x60(%ebp)
c0104844:	0f 84 a8 fe ff ff    	je     c01046f2 <_dtoa_r+0x1072>
c010484a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0104850:	e9 8a fe ff ff       	jmp    c01046df <_dtoa_r+0x105f>
c0104855:	0f 85 c7 f3 ff ff    	jne    c0103c22 <_dtoa_r+0x5a2>
c010485b:	dd d8                	fstp   %st(0)
c010485d:	dd d8                	fstp   %st(0)
c010485f:	90                   	nop
c0104860:	e9 65 fd ff ff       	jmp    c01045ca <_dtoa_r+0xf4a>
c0104865:	89 45 a8             	mov    %eax,-0x58(%ebp)
c0104868:	e9 dd f5 ff ff       	jmp    c0103e4a <_dtoa_r+0x7ca>
c010486d:	8d 76 00             	lea    0x0(%esi),%esi
c0104870:	0f 84 7a f5 ff ff    	je     c0103df0 <_dtoa_r+0x770>
c0104876:	b8 3c 00 00 00       	mov    $0x3c,%eax
c010487b:	29 d0                	sub    %edx,%eax
c010487d:	e9 ab f8 ff ff       	jmp    c010412d <_dtoa_r+0xaad>
c0104882:	b8 01 00 00 00       	mov    $0x1,%eax
c0104887:	e9 d9 ef ff ff       	jmp    c0103865 <_dtoa_r+0x1e5>
c010488c:	31 d2                	xor    %edx,%edx
c010488e:	e9 36 f1 ff ff       	jmp    c01039c9 <_dtoa_r+0x349>
c0104893:	66 90                	xchg   %ax,%ax
c0104895:	66 90                	xchg   %ax,%ax
c0104897:	66 90                	xchg   %ax,%ax
c0104899:	66 90                	xchg   %ax,%ax
c010489b:	66 90                	xchg   %ax,%ax
c010489d:	66 90                	xchg   %ax,%ax
c010489f:	90                   	nop

c01048a0 <_setlocale_r>:
c01048a0:	55                   	push   %ebp
c01048a1:	89 e5                	mov    %esp,%ebp
c01048a3:	53                   	push   %ebx
c01048a4:	83 ec 14             	sub    $0x14,%esp
c01048a7:	8b 5d 10             	mov    0x10(%ebp),%ebx
c01048aa:	85 db                	test   %ebx,%ebx
c01048ac:	74 14                	je     c01048c2 <_setlocale_r+0x22>
c01048ae:	c7 44 24 04 70 82 10 	movl   $0xc0108270,0x4(%esp)
c01048b5:	c0 
c01048b6:	89 1c 24             	mov    %ebx,(%esp)
c01048b9:	e8 82 17 00 00       	call   c0106040 <strcmp>
c01048be:	85 c0                	test   %eax,%eax
c01048c0:	75 0e                	jne    c01048d0 <_setlocale_r+0x30>
c01048c2:	83 c4 14             	add    $0x14,%esp
c01048c5:	b8 68 80 10 c0       	mov    $0xc0108068,%eax
c01048ca:	5b                   	pop    %ebx
c01048cb:	5d                   	pop    %ebp
c01048cc:	c3                   	ret    
c01048cd:	8d 76 00             	lea    0x0(%esi),%esi
c01048d0:	c7 44 24 04 68 80 10 	movl   $0xc0108068,0x4(%esp)
c01048d7:	c0 
c01048d8:	89 1c 24             	mov    %ebx,(%esp)
c01048db:	e8 60 17 00 00       	call   c0106040 <strcmp>
c01048e0:	85 c0                	test   %eax,%eax
c01048e2:	74 de                	je     c01048c2 <_setlocale_r+0x22>
c01048e4:	89 1c 24             	mov    %ebx,(%esp)
c01048e7:	c7 44 24 04 a2 80 10 	movl   $0xc01080a2,0x4(%esp)
c01048ee:	c0 
c01048ef:	e8 4c 17 00 00       	call   c0106040 <strcmp>
c01048f4:	89 c2                	mov    %eax,%edx
c01048f6:	31 c0                	xor    %eax,%eax
c01048f8:	85 d2                	test   %edx,%edx
c01048fa:	ba 68 80 10 c0       	mov    $0xc0108068,%edx
c01048ff:	0f 44 c2             	cmove  %edx,%eax
c0104902:	83 c4 14             	add    $0x14,%esp
c0104905:	5b                   	pop    %ebx
c0104906:	5d                   	pop    %ebp
c0104907:	c3                   	ret    
c0104908:	90                   	nop
c0104909:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

c0104910 <__locale_charset>:
c0104910:	55                   	push   %ebp
c0104911:	b8 60 a9 10 c0       	mov    $0xc010a960,%eax
c0104916:	89 e5                	mov    %esp,%ebp
c0104918:	5d                   	pop    %ebp
c0104919:	c3                   	ret    
c010491a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

c0104920 <__locale_mb_cur_max>:
c0104920:	55                   	push   %ebp
c0104921:	a1 b8 a9 10 c0       	mov    0xc010a9b8,%eax
c0104926:	89 e5                	mov    %esp,%ebp
c0104928:	5d                   	pop    %ebp
c0104929:	c3                   	ret    
c010492a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

c0104930 <__locale_msgcharset>:
c0104930:	55                   	push   %ebp
c0104931:	b8 40 a9 10 c0       	mov    $0xc010a940,%eax
c0104936:	89 e5                	mov    %esp,%ebp
c0104938:	5d                   	pop    %ebp
c0104939:	c3                   	ret    
c010493a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

c0104940 <__locale_cjk_lang>:
c0104940:	55                   	push   %ebp
c0104941:	31 c0                	xor    %eax,%eax
c0104943:	89 e5                	mov    %esp,%ebp
c0104945:	5d                   	pop    %ebp
c0104946:	c3                   	ret    
c0104947:	89 f6                	mov    %esi,%esi
c0104949:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0104950 <_localeconv_r>:
c0104950:	55                   	push   %ebp
c0104951:	b8 80 a9 10 c0       	mov    $0xc010a980,%eax
c0104956:	89 e5                	mov    %esp,%ebp
c0104958:	5d                   	pop    %ebp
c0104959:	c3                   	ret    
c010495a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

c0104960 <setlocale>:
c0104960:	55                   	push   %ebp
c0104961:	89 e5                	mov    %esp,%ebp
c0104963:	83 ec 18             	sub    $0x18,%esp
c0104966:	e8 35 cc ff ff       	call   c01015a0 <__getreent>
c010496b:	8b 55 0c             	mov    0xc(%ebp),%edx
c010496e:	89 54 24 08          	mov    %edx,0x8(%esp)
c0104972:	8b 55 08             	mov    0x8(%ebp),%edx
c0104975:	89 04 24             	mov    %eax,(%esp)
c0104978:	89 54 24 04          	mov    %edx,0x4(%esp)
c010497c:	e8 1f ff ff ff       	call   c01048a0 <_setlocale_r>
c0104981:	c9                   	leave  
c0104982:	c3                   	ret    
c0104983:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0104989:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0104990 <localeconv>:
c0104990:	55                   	push   %ebp
c0104991:	89 e5                	mov    %esp,%ebp
c0104993:	83 ec 08             	sub    $0x8,%esp
c0104996:	e8 05 cc ff ff       	call   c01015a0 <__getreent>
c010499b:	b8 80 a9 10 c0       	mov    $0xc010a980,%eax
c01049a0:	c9                   	leave  
c01049a1:	c3                   	ret    
c01049a2:	66 90                	xchg   %ax,%ax
c01049a4:	66 90                	xchg   %ax,%ax
c01049a6:	66 90                	xchg   %ax,%ax
c01049a8:	66 90                	xchg   %ax,%ax
c01049aa:	66 90                	xchg   %ax,%ax
c01049ac:	66 90                	xchg   %ax,%ax
c01049ae:	66 90                	xchg   %ax,%ax

c01049b0 <_malloc_r>:
c01049b0:	55                   	push   %ebp
c01049b1:	89 e5                	mov    %esp,%ebp
c01049b3:	57                   	push   %edi
c01049b4:	56                   	push   %esi
c01049b5:	53                   	push   %ebx
c01049b6:	83 ec 2c             	sub    $0x2c,%esp
c01049b9:	8b 45 0c             	mov    0xc(%ebp),%eax
c01049bc:	8d 50 0b             	lea    0xb(%eax),%edx
c01049bf:	83 fa 16             	cmp    $0x16,%edx
c01049c2:	76 6c                	jbe    c0104a30 <_malloc_r+0x80>
c01049c4:	89 d7                	mov    %edx,%edi
c01049c6:	83 e7 f8             	and    $0xfffffff8,%edi
c01049c9:	89 fe                	mov    %edi,%esi
c01049cb:	c1 ee 1f             	shr    $0x1f,%esi
c01049ce:	39 c7                	cmp    %eax,%edi
c01049d0:	8b 45 08             	mov    0x8(%ebp),%eax
c01049d3:	89 f2                	mov    %esi,%edx
c01049d5:	72 67                	jb     c0104a3e <_malloc_r+0x8e>
c01049d7:	84 d2                	test   %dl,%dl
c01049d9:	75 63                	jne    c0104a3e <_malloc_r+0x8e>
c01049db:	89 04 24             	mov    %eax,(%esp)
c01049de:	e8 ad 07 00 00       	call   c0105190 <__malloc_lock>
c01049e3:	81 ff f7 01 00 00    	cmp    $0x1f7,%edi
c01049e9:	77 65                	ja     c0104a50 <_malloc_r+0xa0>
c01049eb:	89 fa                	mov    %edi,%edx
c01049ed:	c1 ea 03             	shr    $0x3,%edx
c01049f0:	8d 04 d5 e0 a9 10 c0 	lea    -0x3fef5620(,%edx,8),%eax
c01049f7:	8b 58 0c             	mov    0xc(%eax),%ebx
c01049fa:	39 c3                	cmp    %eax,%ebx
c01049fc:	0f 84 3e 05 00 00    	je     c0104f40 <_malloc_r+0x590>
c0104a02:	8b 43 04             	mov    0x4(%ebx),%eax
c0104a05:	83 e0 fc             	and    $0xfffffffc,%eax
c0104a08:	8b 53 0c             	mov    0xc(%ebx),%edx
c0104a0b:	8b 4b 08             	mov    0x8(%ebx),%ecx
c0104a0e:	89 51 0c             	mov    %edx,0xc(%ecx)
c0104a11:	89 4a 08             	mov    %ecx,0x8(%edx)
c0104a14:	83 4c 03 04 01       	orl    $0x1,0x4(%ebx,%eax,1)
c0104a19:	8b 45 08             	mov    0x8(%ebp),%eax
c0104a1c:	89 04 24             	mov    %eax,(%esp)
c0104a1f:	e8 7c 07 00 00       	call   c01051a0 <__malloc_unlock>
c0104a24:	8d 43 08             	lea    0x8(%ebx),%eax
c0104a27:	83 c4 2c             	add    $0x2c,%esp
c0104a2a:	5b                   	pop    %ebx
c0104a2b:	5e                   	pop    %esi
c0104a2c:	5f                   	pop    %edi
c0104a2d:	5d                   	pop    %ebp
c0104a2e:	c3                   	ret    
c0104a2f:	90                   	nop
c0104a30:	bf 10 00 00 00       	mov    $0x10,%edi
c0104a35:	31 d2                	xor    %edx,%edx
c0104a37:	39 c7                	cmp    %eax,%edi
c0104a39:	8b 45 08             	mov    0x8(%ebp),%eax
c0104a3c:	73 99                	jae    c01049d7 <_malloc_r+0x27>
c0104a3e:	c7 00 0c 00 00 00    	movl   $0xc,(%eax)
c0104a44:	83 c4 2c             	add    $0x2c,%esp
c0104a47:	31 c0                	xor    %eax,%eax
c0104a49:	5b                   	pop    %ebx
c0104a4a:	5e                   	pop    %esi
c0104a4b:	5f                   	pop    %edi
c0104a4c:	5d                   	pop    %ebp
c0104a4d:	c3                   	ret    
c0104a4e:	66 90                	xchg   %ax,%ax
c0104a50:	89 fe                	mov    %edi,%esi
c0104a52:	c1 ee 09             	shr    $0x9,%esi
c0104a55:	85 f6                	test   %esi,%esi
c0104a57:	0f 84 ab 01 00 00    	je     c0104c08 <_malloc_r+0x258>
c0104a5d:	83 fe 04             	cmp    $0x4,%esi
c0104a60:	0f 87 8a 03 00 00    	ja     c0104df0 <_malloc_r+0x440>
c0104a66:	89 fe                	mov    %edi,%esi
c0104a68:	c1 ee 06             	shr    $0x6,%esi
c0104a6b:	83 c6 38             	add    $0x38,%esi
c0104a6e:	8d 04 36             	lea    (%esi,%esi,1),%eax
c0104a71:	8d 0c 85 e0 a9 10 c0 	lea    -0x3fef5620(,%eax,4),%ecx
c0104a78:	8b 59 0c             	mov    0xc(%ecx),%ebx
c0104a7b:	39 d9                	cmp    %ebx,%ecx
c0104a7d:	75 18                	jne    c0104a97 <_malloc_r+0xe7>
c0104a7f:	eb 28                	jmp    c0104aa9 <_malloc_r+0xf9>
c0104a81:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0104a88:	85 d2                	test   %edx,%edx
c0104a8a:	0f 89 78 ff ff ff    	jns    c0104a08 <_malloc_r+0x58>
c0104a90:	8b 5b 0c             	mov    0xc(%ebx),%ebx
c0104a93:	39 d9                	cmp    %ebx,%ecx
c0104a95:	74 12                	je     c0104aa9 <_malloc_r+0xf9>
c0104a97:	8b 43 04             	mov    0x4(%ebx),%eax
c0104a9a:	83 e0 fc             	and    $0xfffffffc,%eax
c0104a9d:	89 c2                	mov    %eax,%edx
c0104a9f:	29 fa                	sub    %edi,%edx
c0104aa1:	83 fa 0f             	cmp    $0xf,%edx
c0104aa4:	7e e2                	jle    c0104a88 <_malloc_r+0xd8>
c0104aa6:	83 ee 01             	sub    $0x1,%esi
c0104aa9:	8d 46 01             	lea    0x1(%esi),%eax
c0104aac:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0104aaf:	8b 1d f0 a9 10 c0    	mov    0xc010a9f0,%ebx
c0104ab5:	a1 e4 a9 10 c0       	mov    0xc010a9e4,%eax
c0104aba:	81 fb e8 a9 10 c0    	cmp    $0xc010a9e8,%ebx
c0104ac0:	74 6b                	je     c0104b2d <_malloc_r+0x17d>
c0104ac2:	8b 73 04             	mov    0x4(%ebx),%esi
c0104ac5:	83 e6 fc             	and    $0xfffffffc,%esi
c0104ac8:	89 f0                	mov    %esi,%eax
c0104aca:	29 f8                	sub    %edi,%eax
c0104acc:	83 f8 0f             	cmp    $0xf,%eax
c0104acf:	0f 8f a3 03 00 00    	jg     c0104e78 <_malloc_r+0x4c8>
c0104ad5:	85 c0                	test   %eax,%eax
c0104ad7:	c7 05 f4 a9 10 c0 e8 	movl   $0xc010a9e8,0xc010a9f4
c0104ade:	a9 10 c0 
c0104ae1:	c7 05 f0 a9 10 c0 e8 	movl   $0xc010a9e8,0xc010a9f0
c0104ae8:	a9 10 c0 
c0104aeb:	0f 89 27 01 00 00    	jns    c0104c18 <_malloc_r+0x268>
c0104af1:	81 fe ff 01 00 00    	cmp    $0x1ff,%esi
c0104af7:	0f 87 1b 03 00 00    	ja     c0104e18 <_malloc_r+0x468>
c0104afd:	c1 ee 03             	shr    $0x3,%esi
c0104b00:	b8 01 00 00 00       	mov    $0x1,%eax
c0104b05:	89 f1                	mov    %esi,%ecx
c0104b07:	8d 14 f5 e0 a9 10 c0 	lea    -0x3fef5620(,%esi,8),%edx
c0104b0e:	c1 f9 02             	sar    $0x2,%ecx
c0104b11:	d3 e0                	shl    %cl,%eax
c0104b13:	8b 4a 08             	mov    0x8(%edx),%ecx
c0104b16:	0b 05 e4 a9 10 c0    	or     0xc010a9e4,%eax
c0104b1c:	89 53 0c             	mov    %edx,0xc(%ebx)
c0104b1f:	89 4b 08             	mov    %ecx,0x8(%ebx)
c0104b22:	a3 e4 a9 10 c0       	mov    %eax,0xc010a9e4
c0104b27:	89 5a 08             	mov    %ebx,0x8(%edx)
c0104b2a:	89 59 0c             	mov    %ebx,0xc(%ecx)
c0104b2d:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c0104b30:	be 01 00 00 00       	mov    $0x1,%esi
c0104b35:	c1 f9 02             	sar    $0x2,%ecx
c0104b38:	d3 e6                	shl    %cl,%esi
c0104b3a:	39 c6                	cmp    %eax,%esi
c0104b3c:	0f 87 f6 00 00 00    	ja     c0104c38 <_malloc_r+0x288>
c0104b42:	85 f0                	test   %esi,%eax
c0104b44:	0f 85 76 03 00 00    	jne    c0104ec0 <_malloc_r+0x510>
c0104b4a:	8b 55 e4             	mov    -0x1c(%ebp),%edx
c0104b4d:	01 f6                	add    %esi,%esi
c0104b4f:	83 e2 fc             	and    $0xfffffffc,%edx
c0104b52:	85 f0                	test   %esi,%eax
c0104b54:	8d 4a 04             	lea    0x4(%edx),%ecx
c0104b57:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c0104b5a:	0f 85 60 03 00 00    	jne    c0104ec0 <_malloc_r+0x510>
c0104b60:	89 ca                	mov    %ecx,%edx
c0104b62:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0104b68:	01 f6                	add    %esi,%esi
c0104b6a:	83 c2 04             	add    $0x4,%edx
c0104b6d:	85 f0                	test   %esi,%eax
c0104b6f:	74 f7                	je     c0104b68 <_malloc_r+0x1b8>
c0104b71:	89 55 e4             	mov    %edx,-0x1c(%ebp)
c0104b74:	89 75 dc             	mov    %esi,-0x24(%ebp)
c0104b77:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0104b7a:	8d 34 c5 e0 a9 10 c0 	lea    -0x3fef5620(,%eax,8),%esi
c0104b81:	89 f1                	mov    %esi,%ecx
c0104b83:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0104b86:	8b 59 0c             	mov    0xc(%ecx),%ebx
c0104b89:	39 d9                	cmp    %ebx,%ecx
c0104b8b:	75 1e                	jne    c0104bab <_malloc_r+0x1fb>
c0104b8d:	e9 36 03 00 00       	jmp    c0104ec8 <_malloc_r+0x518>
c0104b92:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0104b98:	85 d2                	test   %edx,%edx
c0104b9a:	0f 89 c0 03 00 00    	jns    c0104f60 <_malloc_r+0x5b0>
c0104ba0:	8b 5b 0c             	mov    0xc(%ebx),%ebx
c0104ba3:	39 d9                	cmp    %ebx,%ecx
c0104ba5:	0f 84 1d 03 00 00    	je     c0104ec8 <_malloc_r+0x518>
c0104bab:	8b 43 04             	mov    0x4(%ebx),%eax
c0104bae:	83 e0 fc             	and    $0xfffffffc,%eax
c0104bb1:	89 c2                	mov    %eax,%edx
c0104bb3:	29 fa                	sub    %edi,%edx
c0104bb5:	83 fa 0f             	cmp    $0xf,%edx
c0104bb8:	7e de                	jle    c0104b98 <_malloc_r+0x1e8>
c0104bba:	8b 4b 0c             	mov    0xc(%ebx),%ecx
c0104bbd:	8d 04 3b             	lea    (%ebx,%edi,1),%eax
c0104bc0:	83 cf 01             	or     $0x1,%edi
c0104bc3:	8b 73 08             	mov    0x8(%ebx),%esi
c0104bc6:	89 7b 04             	mov    %edi,0x4(%ebx)
c0104bc9:	89 4e 0c             	mov    %ecx,0xc(%esi)
c0104bcc:	89 71 08             	mov    %esi,0x8(%ecx)
c0104bcf:	89 d1                	mov    %edx,%ecx
c0104bd1:	83 c9 01             	or     $0x1,%ecx
c0104bd4:	a3 f4 a9 10 c0       	mov    %eax,0xc010a9f4
c0104bd9:	a3 f0 a9 10 c0       	mov    %eax,0xc010a9f0
c0104bde:	c7 40 0c e8 a9 10 c0 	movl   $0xc010a9e8,0xc(%eax)
c0104be5:	c7 40 08 e8 a9 10 c0 	movl   $0xc010a9e8,0x8(%eax)
c0104bec:	89 48 04             	mov    %ecx,0x4(%eax)
c0104bef:	89 14 10             	mov    %edx,(%eax,%edx,1)
c0104bf2:	8b 45 08             	mov    0x8(%ebp),%eax
c0104bf5:	89 04 24             	mov    %eax,(%esp)
c0104bf8:	e8 a3 05 00 00       	call   c01051a0 <__malloc_unlock>
c0104bfd:	8d 43 08             	lea    0x8(%ebx),%eax
c0104c00:	e9 22 fe ff ff       	jmp    c0104a27 <_malloc_r+0x77>
c0104c05:	8d 76 00             	lea    0x0(%esi),%esi
c0104c08:	b8 7e 00 00 00       	mov    $0x7e,%eax
c0104c0d:	be 3f 00 00 00       	mov    $0x3f,%esi
c0104c12:	e9 5a fe ff ff       	jmp    c0104a71 <_malloc_r+0xc1>
c0104c17:	90                   	nop
c0104c18:	8b 45 08             	mov    0x8(%ebp),%eax
c0104c1b:	83 4c 33 04 01       	orl    $0x1,0x4(%ebx,%esi,1)
c0104c20:	89 04 24             	mov    %eax,(%esp)
c0104c23:	e8 78 05 00 00       	call   c01051a0 <__malloc_unlock>
c0104c28:	83 c4 2c             	add    $0x2c,%esp
c0104c2b:	8d 43 08             	lea    0x8(%ebx),%eax
c0104c2e:	5b                   	pop    %ebx
c0104c2f:	5e                   	pop    %esi
c0104c30:	5f                   	pop    %edi
c0104c31:	5d                   	pop    %ebp
c0104c32:	c3                   	ret    
c0104c33:	90                   	nop
c0104c34:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0104c38:	8b 1d e8 a9 10 c0    	mov    0xc010a9e8,%ebx
c0104c3e:	8b 73 04             	mov    0x4(%ebx),%esi
c0104c41:	83 e6 fc             	and    $0xfffffffc,%esi
c0104c44:	39 f7                	cmp    %esi,%edi
c0104c46:	77 0d                	ja     c0104c55 <_malloc_r+0x2a5>
c0104c48:	89 f0                	mov    %esi,%eax
c0104c4a:	29 f8                	sub    %edi,%eax
c0104c4c:	83 f8 0f             	cmp    $0xf,%eax
c0104c4f:	0f 8f 6b 01 00 00    	jg     c0104dc0 <_malloc_r+0x410>
c0104c55:	8b 0d 50 1f 16 c0    	mov    0xc0161f50,%ecx
c0104c5b:	8d 04 33             	lea    (%ebx,%esi,1),%eax
c0104c5e:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0104c61:	01 f9                	add    %edi,%ecx
c0104c63:	8d 81 0f 10 00 00    	lea    0x100f(%ecx),%eax
c0104c69:	83 c1 10             	add    $0x10,%ecx
c0104c6c:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0104c71:	83 3d c0 a9 10 c0 ff 	cmpl   $0xffffffff,0xc010a9c0
c0104c78:	0f 44 c1             	cmove  %ecx,%eax
c0104c7b:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0104c7e:	89 44 24 04          	mov    %eax,0x4(%esp)
c0104c82:	8b 45 08             	mov    0x8(%ebp),%eax
c0104c85:	89 04 24             	mov    %eax,(%esp)
c0104c88:	e8 03 13 00 00       	call   c0105f90 <_sbrk_r>
c0104c8d:	83 f8 ff             	cmp    $0xffffffff,%eax
c0104c90:	89 c1                	mov    %eax,%ecx
c0104c92:	0f 84 17 03 00 00    	je     c0104faf <_malloc_r+0x5ff>
c0104c98:	39 45 e4             	cmp    %eax,-0x1c(%ebp)
c0104c9b:	0f 87 02 03 00 00    	ja     c0104fa3 <_malloc_r+0x5f3>
c0104ca1:	8b 55 e0             	mov    -0x20(%ebp),%edx
c0104ca4:	03 15 20 1f 16 c0    	add    0xc0161f20,%edx
c0104caa:	39 4d e4             	cmp    %ecx,-0x1c(%ebp)
c0104cad:	89 15 20 1f 16 c0    	mov    %edx,0xc0161f20
c0104cb3:	0f 84 a9 03 00 00    	je     c0105062 <_malloc_r+0x6b2>
c0104cb9:	83 3d c0 a9 10 c0 ff 	cmpl   $0xffffffff,0xc010a9c0
c0104cc0:	0f 84 ca 03 00 00    	je     c0105090 <_malloc_r+0x6e0>
c0104cc6:	89 c8                	mov    %ecx,%eax
c0104cc8:	2b 45 e4             	sub    -0x1c(%ebp),%eax
c0104ccb:	01 d0                	add    %edx,%eax
c0104ccd:	a3 20 1f 16 c0       	mov    %eax,0xc0161f20
c0104cd2:	89 c8                	mov    %ecx,%eax
c0104cd4:	ba 00 10 00 00       	mov    $0x1000,%edx
c0104cd9:	83 e0 07             	and    $0x7,%eax
c0104cdc:	74 0c                	je     c0104cea <_malloc_r+0x33a>
c0104cde:	29 c1                	sub    %eax,%ecx
c0104ce0:	ba 08 10 00 00       	mov    $0x1008,%edx
c0104ce5:	8d 49 08             	lea    0x8(%ecx),%ecx
c0104ce8:	29 c2                	sub    %eax,%edx
c0104cea:	8b 45 e0             	mov    -0x20(%ebp),%eax
c0104ced:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c0104cf0:	01 c8                	add    %ecx,%eax
c0104cf2:	25 ff 0f 00 00       	and    $0xfff,%eax
c0104cf7:	29 c2                	sub    %eax,%edx
c0104cf9:	8b 45 08             	mov    0x8(%ebp),%eax
c0104cfc:	89 54 24 04          	mov    %edx,0x4(%esp)
c0104d00:	89 55 e0             	mov    %edx,-0x20(%ebp)
c0104d03:	89 04 24             	mov    %eax,(%esp)
c0104d06:	e8 85 12 00 00       	call   c0105f90 <_sbrk_r>
c0104d0b:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c0104d0e:	83 f8 ff             	cmp    $0xffffffff,%eax
c0104d11:	0f 84 6d 03 00 00    	je     c0105084 <_malloc_r+0x6d4>
c0104d17:	8b 55 e0             	mov    -0x20(%ebp),%edx
c0104d1a:	29 c8                	sub    %ecx,%eax
c0104d1c:	01 d0                	add    %edx,%eax
c0104d1e:	83 c8 01             	or     $0x1,%eax
c0104d21:	03 15 20 1f 16 c0    	add    0xc0161f20,%edx
c0104d27:	81 fb e0 a9 10 c0    	cmp    $0xc010a9e0,%ebx
c0104d2d:	89 0d e8 a9 10 c0    	mov    %ecx,0xc010a9e8
c0104d33:	89 41 04             	mov    %eax,0x4(%ecx)
c0104d36:	89 15 20 1f 16 c0    	mov    %edx,0xc0161f20
c0104d3c:	0f 84 f2 02 00 00    	je     c0105034 <_malloc_r+0x684>
c0104d42:	83 fe 0f             	cmp    $0xf,%esi
c0104d45:	0f 86 8d 02 00 00    	jbe    c0104fd8 <_malloc_r+0x628>
c0104d4b:	8b 43 04             	mov    0x4(%ebx),%eax
c0104d4e:	83 ee 0c             	sub    $0xc,%esi
c0104d51:	83 e6 f8             	and    $0xfffffff8,%esi
c0104d54:	83 e0 01             	and    $0x1,%eax
c0104d57:	09 f0                	or     %esi,%eax
c0104d59:	83 fe 0f             	cmp    $0xf,%esi
c0104d5c:	89 43 04             	mov    %eax,0x4(%ebx)
c0104d5f:	a1 e8 a9 10 c0       	mov    0xc010a9e8,%eax
c0104d64:	c7 44 33 04 05 00 00 	movl   $0x5,0x4(%ebx,%esi,1)
c0104d6b:	00 
c0104d6c:	c7 44 33 08 05 00 00 	movl   $0x5,0x8(%ebx,%esi,1)
c0104d73:	00 
c0104d74:	0f 87 a2 02 00 00    	ja     c010501c <_malloc_r+0x66c>
c0104d7a:	3b 15 4c 1f 16 c0    	cmp    0xc0161f4c,%edx
c0104d80:	76 06                	jbe    c0104d88 <_malloc_r+0x3d8>
c0104d82:	89 15 4c 1f 16 c0    	mov    %edx,0xc0161f4c
c0104d88:	3b 15 48 1f 16 c0    	cmp    0xc0161f48,%edx
c0104d8e:	76 06                	jbe    c0104d96 <_malloc_r+0x3e6>
c0104d90:	89 15 48 1f 16 c0    	mov    %edx,0xc0161f48
c0104d96:	8b 50 04             	mov    0x4(%eax),%edx
c0104d99:	89 c3                	mov    %eax,%ebx
c0104d9b:	83 e2 fc             	and    $0xfffffffc,%edx
c0104d9e:	89 d0                	mov    %edx,%eax
c0104da0:	29 f8                	sub    %edi,%eax
c0104da2:	39 d7                	cmp    %edx,%edi
c0104da4:	77 05                	ja     c0104dab <_malloc_r+0x3fb>
c0104da6:	83 f8 0f             	cmp    $0xf,%eax
c0104da9:	7f 15                	jg     c0104dc0 <_malloc_r+0x410>
c0104dab:	8b 45 08             	mov    0x8(%ebp),%eax
c0104dae:	89 04 24             	mov    %eax,(%esp)
c0104db1:	e8 ea 03 00 00       	call   c01051a0 <__malloc_unlock>
c0104db6:	31 c0                	xor    %eax,%eax
c0104db8:	e9 6a fc ff ff       	jmp    c0104a27 <_malloc_r+0x77>
c0104dbd:	8d 76 00             	lea    0x0(%esi),%esi
c0104dc0:	89 fa                	mov    %edi,%edx
c0104dc2:	83 c8 01             	or     $0x1,%eax
c0104dc5:	83 ca 01             	or     $0x1,%edx
c0104dc8:	89 53 04             	mov    %edx,0x4(%ebx)
c0104dcb:	8d 14 3b             	lea    (%ebx,%edi,1),%edx
c0104dce:	89 15 e8 a9 10 c0    	mov    %edx,0xc010a9e8
c0104dd4:	89 42 04             	mov    %eax,0x4(%edx)
c0104dd7:	8b 45 08             	mov    0x8(%ebp),%eax
c0104dda:	89 04 24             	mov    %eax,(%esp)
c0104ddd:	e8 be 03 00 00       	call   c01051a0 <__malloc_unlock>
c0104de2:	83 c4 2c             	add    $0x2c,%esp
c0104de5:	8d 43 08             	lea    0x8(%ebx),%eax
c0104de8:	5b                   	pop    %ebx
c0104de9:	5e                   	pop    %esi
c0104dea:	5f                   	pop    %edi
c0104deb:	5d                   	pop    %ebp
c0104dec:	c3                   	ret    
c0104ded:	8d 76 00             	lea    0x0(%esi),%esi
c0104df0:	83 fe 14             	cmp    $0x14,%esi
c0104df3:	0f 86 8f 01 00 00    	jbe    c0104f88 <_malloc_r+0x5d8>
c0104df9:	83 fe 54             	cmp    $0x54,%esi
c0104dfc:	0f 87 be 01 00 00    	ja     c0104fc0 <_malloc_r+0x610>
c0104e02:	89 fe                	mov    %edi,%esi
c0104e04:	c1 ee 0c             	shr    $0xc,%esi
c0104e07:	83 c6 6e             	add    $0x6e,%esi
c0104e0a:	8d 04 36             	lea    (%esi,%esi,1),%eax
c0104e0d:	e9 5f fc ff ff       	jmp    c0104a71 <_malloc_r+0xc1>
c0104e12:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0104e18:	89 f1                	mov    %esi,%ecx
c0104e1a:	c1 e9 09             	shr    $0x9,%ecx
c0104e1d:	83 f9 04             	cmp    $0x4,%ecx
c0104e20:	0f 86 6d 01 00 00    	jbe    c0104f93 <_malloc_r+0x5e3>
c0104e26:	83 f9 14             	cmp    $0x14,%ecx
c0104e29:	0f 87 0f 02 00 00    	ja     c010503e <_malloc_r+0x68e>
c0104e2f:	83 c1 5b             	add    $0x5b,%ecx
c0104e32:	8d 04 09             	lea    (%ecx,%ecx,1),%eax
c0104e35:	8d 04 85 e0 a9 10 c0 	lea    -0x3fef5620(,%eax,4),%eax
c0104e3c:	8b 50 08             	mov    0x8(%eax),%edx
c0104e3f:	39 c2                	cmp    %eax,%edx
c0104e41:	0f 84 a1 01 00 00    	je     c0104fe8 <_malloc_r+0x638>
c0104e47:	90                   	nop
c0104e48:	8b 4a 04             	mov    0x4(%edx),%ecx
c0104e4b:	83 e1 fc             	and    $0xfffffffc,%ecx
c0104e4e:	39 ce                	cmp    %ecx,%esi
c0104e50:	73 07                	jae    c0104e59 <_malloc_r+0x4a9>
c0104e52:	8b 52 08             	mov    0x8(%edx),%edx
c0104e55:	39 d0                	cmp    %edx,%eax
c0104e57:	75 ef                	jne    c0104e48 <_malloc_r+0x498>
c0104e59:	8b 4a 0c             	mov    0xc(%edx),%ecx
c0104e5c:	a1 e4 a9 10 c0       	mov    0xc010a9e4,%eax
c0104e61:	89 4b 0c             	mov    %ecx,0xc(%ebx)
c0104e64:	89 53 08             	mov    %edx,0x8(%ebx)
c0104e67:	89 59 08             	mov    %ebx,0x8(%ecx)
c0104e6a:	89 5a 0c             	mov    %ebx,0xc(%edx)
c0104e6d:	e9 bb fc ff ff       	jmp    c0104b2d <_malloc_r+0x17d>
c0104e72:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0104e78:	89 c1                	mov    %eax,%ecx
c0104e7a:	8d 14 3b             	lea    (%ebx,%edi,1),%edx
c0104e7d:	83 c9 01             	or     $0x1,%ecx
c0104e80:	83 cf 01             	or     $0x1,%edi
c0104e83:	89 7b 04             	mov    %edi,0x4(%ebx)
c0104e86:	89 15 f4 a9 10 c0    	mov    %edx,0xc010a9f4
c0104e8c:	89 15 f0 a9 10 c0    	mov    %edx,0xc010a9f0
c0104e92:	c7 42 0c e8 a9 10 c0 	movl   $0xc010a9e8,0xc(%edx)
c0104e99:	c7 42 08 e8 a9 10 c0 	movl   $0xc010a9e8,0x8(%edx)
c0104ea0:	89 4a 04             	mov    %ecx,0x4(%edx)
c0104ea3:	89 04 02             	mov    %eax,(%edx,%eax,1)
c0104ea6:	8b 45 08             	mov    0x8(%ebp),%eax
c0104ea9:	89 04 24             	mov    %eax,(%esp)
c0104eac:	e8 ef 02 00 00       	call   c01051a0 <__malloc_unlock>
c0104eb1:	8d 43 08             	lea    0x8(%ebx),%eax
c0104eb4:	e9 6e fb ff ff       	jmp    c0104a27 <_malloc_r+0x77>
c0104eb9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0104ec0:	89 75 dc             	mov    %esi,-0x24(%ebp)
c0104ec3:	e9 af fc ff ff       	jmp    c0104b77 <_malloc_r+0x1c7>
c0104ec8:	83 45 e0 01          	addl   $0x1,-0x20(%ebp)
c0104ecc:	83 c1 08             	add    $0x8,%ecx
c0104ecf:	f6 45 e0 03          	testb  $0x3,-0x20(%ebp)
c0104ed3:	0f 85 ad fc ff ff    	jne    c0104b86 <_malloc_r+0x1d6>
c0104ed9:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0104edc:	eb 12                	jmp    c0104ef0 <_malloc_r+0x540>
c0104ede:	66 90                	xchg   %ax,%ax
c0104ee0:	8d 56 f8             	lea    -0x8(%esi),%edx
c0104ee3:	8b 36                	mov    (%esi),%esi
c0104ee5:	83 e8 01             	sub    $0x1,%eax
c0104ee8:	39 d6                	cmp    %edx,%esi
c0104eea:	0f 85 ea 01 00 00    	jne    c01050da <_malloc_r+0x72a>
c0104ef0:	a8 03                	test   $0x3,%al
c0104ef2:	75 ec                	jne    c0104ee0 <_malloc_r+0x530>
c0104ef4:	8b 45 dc             	mov    -0x24(%ebp),%eax
c0104ef7:	f7 d0                	not    %eax
c0104ef9:	23 05 e4 a9 10 c0    	and    0xc010a9e4,%eax
c0104eff:	a3 e4 a9 10 c0       	mov    %eax,0xc010a9e4
c0104f04:	d1 65 dc             	shll   -0x24(%ebp)
c0104f07:	8b 55 dc             	mov    -0x24(%ebp),%edx
c0104f0a:	39 c2                	cmp    %eax,%edx
c0104f0c:	0f 87 26 fd ff ff    	ja     c0104c38 <_malloc_r+0x288>
c0104f12:	85 d2                	test   %edx,%edx
c0104f14:	0f 84 1e fd ff ff    	je     c0104c38 <_malloc_r+0x288>
c0104f1a:	85 c2                	test   %eax,%edx
c0104f1c:	0f 85 c2 01 00 00    	jne    c01050e4 <_malloc_r+0x734>
c0104f22:	8b 75 e0             	mov    -0x20(%ebp),%esi
c0104f25:	89 f1                	mov    %esi,%ecx
c0104f27:	01 d2                	add    %edx,%edx
c0104f29:	83 c1 04             	add    $0x4,%ecx
c0104f2c:	85 d0                	test   %edx,%eax
c0104f2e:	74 f7                	je     c0104f27 <_malloc_r+0x577>
c0104f30:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c0104f33:	89 55 dc             	mov    %edx,-0x24(%ebp)
c0104f36:	e9 3c fc ff ff       	jmp    c0104b77 <_malloc_r+0x1c7>
c0104f3b:	90                   	nop
c0104f3c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0104f40:	8d 43 08             	lea    0x8(%ebx),%eax
c0104f43:	8b 5b 14             	mov    0x14(%ebx),%ebx
c0104f46:	39 d8                	cmp    %ebx,%eax
c0104f48:	0f 85 b4 fa ff ff    	jne    c0104a02 <_malloc_r+0x52>
c0104f4e:	8d 42 02             	lea    0x2(%edx),%eax
c0104f51:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0104f54:	e9 56 fb ff ff       	jmp    c0104aaf <_malloc_r+0xff>
c0104f59:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0104f60:	83 4c 03 04 01       	orl    $0x1,0x4(%ebx,%eax,1)
c0104f65:	8b 53 08             	mov    0x8(%ebx),%edx
c0104f68:	8b 43 0c             	mov    0xc(%ebx),%eax
c0104f6b:	89 42 0c             	mov    %eax,0xc(%edx)
c0104f6e:	89 50 08             	mov    %edx,0x8(%eax)
c0104f71:	8b 45 08             	mov    0x8(%ebp),%eax
c0104f74:	89 04 24             	mov    %eax,(%esp)
c0104f77:	e8 24 02 00 00       	call   c01051a0 <__malloc_unlock>
c0104f7c:	8d 43 08             	lea    0x8(%ebx),%eax
c0104f7f:	e9 a3 fa ff ff       	jmp    c0104a27 <_malloc_r+0x77>
c0104f84:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0104f88:	83 c6 5b             	add    $0x5b,%esi
c0104f8b:	8d 04 36             	lea    (%esi,%esi,1),%eax
c0104f8e:	e9 de fa ff ff       	jmp    c0104a71 <_malloc_r+0xc1>
c0104f93:	89 f1                	mov    %esi,%ecx
c0104f95:	c1 e9 06             	shr    $0x6,%ecx
c0104f98:	83 c1 38             	add    $0x38,%ecx
c0104f9b:	8d 04 09             	lea    (%ecx,%ecx,1),%eax
c0104f9e:	e9 92 fe ff ff       	jmp    c0104e35 <_malloc_r+0x485>
c0104fa3:	81 fb e0 a9 10 c0    	cmp    $0xc010a9e0,%ebx
c0104fa9:	0f 84 f2 fc ff ff    	je     c0104ca1 <_malloc_r+0x2f1>
c0104faf:	8b 1d e8 a9 10 c0    	mov    0xc010a9e8,%ebx
c0104fb5:	8b 53 04             	mov    0x4(%ebx),%edx
c0104fb8:	83 e2 fc             	and    $0xfffffffc,%edx
c0104fbb:	e9 de fd ff ff       	jmp    c0104d9e <_malloc_r+0x3ee>
c0104fc0:	81 fe 54 01 00 00    	cmp    $0x154,%esi
c0104fc6:	77 3c                	ja     c0105004 <_malloc_r+0x654>
c0104fc8:	89 fe                	mov    %edi,%esi
c0104fca:	c1 ee 0f             	shr    $0xf,%esi
c0104fcd:	83 c6 77             	add    $0x77,%esi
c0104fd0:	8d 04 36             	lea    (%esi,%esi,1),%eax
c0104fd3:	e9 99 fa ff ff       	jmp    c0104a71 <_malloc_r+0xc1>
c0104fd8:	c7 41 04 01 00 00 00 	movl   $0x1,0x4(%ecx)
c0104fdf:	89 cb                	mov    %ecx,%ebx
c0104fe1:	31 d2                	xor    %edx,%edx
c0104fe3:	e9 b6 fd ff ff       	jmp    c0104d9e <_malloc_r+0x3ee>
c0104fe8:	c1 f9 02             	sar    $0x2,%ecx
c0104feb:	b8 01 00 00 00       	mov    $0x1,%eax
c0104ff0:	d3 e0                	shl    %cl,%eax
c0104ff2:	89 d1                	mov    %edx,%ecx
c0104ff4:	0b 05 e4 a9 10 c0    	or     0xc010a9e4,%eax
c0104ffa:	a3 e4 a9 10 c0       	mov    %eax,0xc010a9e4
c0104fff:	e9 5d fe ff ff       	jmp    c0104e61 <_malloc_r+0x4b1>
c0105004:	81 fe 54 05 00 00    	cmp    $0x554,%esi
c010500a:	77 47                	ja     c0105053 <_malloc_r+0x6a3>
c010500c:	89 fe                	mov    %edi,%esi
c010500e:	c1 ee 12             	shr    $0x12,%esi
c0105011:	83 c6 7c             	add    $0x7c,%esi
c0105014:	8d 04 36             	lea    (%esi,%esi,1),%eax
c0105017:	e9 55 fa ff ff       	jmp    c0104a71 <_malloc_r+0xc1>
c010501c:	8b 45 08             	mov    0x8(%ebp),%eax
c010501f:	83 c3 08             	add    $0x8,%ebx
c0105022:	89 5c 24 04          	mov    %ebx,0x4(%esp)
c0105026:	89 04 24             	mov    %eax,(%esp)
c0105029:	e8 c2 22 00 00       	call   c01072f0 <_free_r>
c010502e:	8b 15 20 1f 16 c0    	mov    0xc0161f20,%edx
c0105034:	a1 e8 a9 10 c0       	mov    0xc010a9e8,%eax
c0105039:	e9 3c fd ff ff       	jmp    c0104d7a <_malloc_r+0x3ca>
c010503e:	83 f9 54             	cmp    $0x54,%ecx
c0105041:	77 58                	ja     c010509b <_malloc_r+0x6eb>
c0105043:	89 f1                	mov    %esi,%ecx
c0105045:	c1 e9 0c             	shr    $0xc,%ecx
c0105048:	83 c1 6e             	add    $0x6e,%ecx
c010504b:	8d 04 09             	lea    (%ecx,%ecx,1),%eax
c010504e:	e9 e2 fd ff ff       	jmp    c0104e35 <_malloc_r+0x485>
c0105053:	b8 fc 00 00 00       	mov    $0xfc,%eax
c0105058:	be 7e 00 00 00       	mov    $0x7e,%esi
c010505d:	e9 0f fa ff ff       	jmp    c0104a71 <_malloc_r+0xc1>
c0105062:	f7 45 e4 ff 0f 00 00 	testl  $0xfff,-0x1c(%ebp)
c0105069:	0f 85 4a fc ff ff    	jne    c0104cb9 <_malloc_r+0x309>
c010506f:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0105072:	a1 e8 a9 10 c0       	mov    0xc010a9e8,%eax
c0105077:	01 f1                	add    %esi,%ecx
c0105079:	83 c9 01             	or     $0x1,%ecx
c010507c:	89 48 04             	mov    %ecx,0x4(%eax)
c010507f:	e9 f6 fc ff ff       	jmp    c0104d7a <_malloc_r+0x3ca>
c0105084:	b8 01 00 00 00       	mov    $0x1,%eax
c0105089:	31 d2                	xor    %edx,%edx
c010508b:	e9 91 fc ff ff       	jmp    c0104d21 <_malloc_r+0x371>
c0105090:	89 0d c0 a9 10 c0    	mov    %ecx,0xc010a9c0
c0105096:	e9 37 fc ff ff       	jmp    c0104cd2 <_malloc_r+0x322>
c010509b:	81 f9 54 01 00 00    	cmp    $0x154,%ecx
c01050a1:	77 10                	ja     c01050b3 <_malloc_r+0x703>
c01050a3:	89 f1                	mov    %esi,%ecx
c01050a5:	c1 e9 0f             	shr    $0xf,%ecx
c01050a8:	83 c1 77             	add    $0x77,%ecx
c01050ab:	8d 04 09             	lea    (%ecx,%ecx,1),%eax
c01050ae:	e9 82 fd ff ff       	jmp    c0104e35 <_malloc_r+0x485>
c01050b3:	81 f9 54 05 00 00    	cmp    $0x554,%ecx
c01050b9:	77 10                	ja     c01050cb <_malloc_r+0x71b>
c01050bb:	89 f1                	mov    %esi,%ecx
c01050bd:	c1 e9 12             	shr    $0x12,%ecx
c01050c0:	83 c1 7c             	add    $0x7c,%ecx
c01050c3:	8d 04 09             	lea    (%ecx,%ecx,1),%eax
c01050c6:	e9 6a fd ff ff       	jmp    c0104e35 <_malloc_r+0x485>
c01050cb:	b8 fc 00 00 00       	mov    $0xfc,%eax
c01050d0:	b9 7e 00 00 00       	mov    $0x7e,%ecx
c01050d5:	e9 5b fd ff ff       	jmp    c0104e35 <_malloc_r+0x485>
c01050da:	a1 e4 a9 10 c0       	mov    0xc010a9e4,%eax
c01050df:	e9 20 fe ff ff       	jmp    c0104f04 <_malloc_r+0x554>
c01050e4:	8b 45 e0             	mov    -0x20(%ebp),%eax
c01050e7:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c01050ea:	e9 88 fa ff ff       	jmp    c0104b77 <_malloc_r+0x1c7>
c01050ef:	90                   	nop

c01050f0 <memchr>:
c01050f0:	55                   	push   %ebp
c01050f1:	89 e5                	mov    %esp,%ebp
c01050f3:	57                   	push   %edi
c01050f4:	0f b6 45 0c          	movzbl 0xc(%ebp),%eax
c01050f8:	8b 4d 10             	mov    0x10(%ebp),%ecx
c01050fb:	8b 7d 08             	mov    0x8(%ebp),%edi
c01050fe:	31 d2                	xor    %edx,%edx
c0105100:	85 c9                	test   %ecx,%ecx
c0105102:	74 79                	je     c010517d <L20>
c0105104:	f7 c7 03 00 00 00    	test   $0x3,%edi
c010510a:	74 28                	je     c0105134 <L5>
c010510c:	3a 07                	cmp    (%edi),%al
c010510e:	74 6a                	je     c010517a <L15>
c0105110:	47                   	inc    %edi
c0105111:	49                   	dec    %ecx
c0105112:	74 69                	je     c010517d <L20>
c0105114:	f7 c7 03 00 00 00    	test   $0x3,%edi
c010511a:	74 18                	je     c0105134 <L5>
c010511c:	3a 07                	cmp    (%edi),%al
c010511e:	74 5a                	je     c010517a <L15>
c0105120:	47                   	inc    %edi
c0105121:	49                   	dec    %ecx
c0105122:	74 59                	je     c010517d <L20>
c0105124:	f7 c7 03 00 00 00    	test   $0x3,%edi
c010512a:	74 08                	je     c0105134 <L5>
c010512c:	3a 07                	cmp    (%edi),%al
c010512e:	74 4a                	je     c010517a <L15>
c0105130:	47                   	inc    %edi
c0105131:	49                   	dec    %ecx
c0105132:	74 49                	je     c010517d <L20>

c0105134 <L5>:
c0105134:	88 c4                	mov    %al,%ah
c0105136:	89 c2                	mov    %eax,%edx
c0105138:	c1 e2 10             	shl    $0x10,%edx
c010513b:	09 d0                	or     %edx,%eax
c010513d:	53                   	push   %ebx
c010513e:	66 90                	xchg   %ax,%ax

c0105140 <L8>:
c0105140:	83 e9 04             	sub    $0x4,%ecx
c0105143:	72 1c                	jb     c0105161 <L9>
c0105145:	8b 17                	mov    (%edi),%edx
c0105147:	83 c7 04             	add    $0x4,%edi
c010514a:	31 c2                	xor    %eax,%edx
c010514c:	8d 9a ff fe fe fe    	lea    -0x1010101(%edx),%ebx
c0105152:	f7 d2                	not    %edx
c0105154:	21 d3                	and    %edx,%ebx
c0105156:	f7 c3 80 80 80 80    	test   $0x80808080,%ebx
c010515c:	74 e2                	je     c0105140 <L8>
c010515e:	83 ef 04             	sub    $0x4,%edi

c0105161 <L9>:
c0105161:	5b                   	pop    %ebx
c0105162:	31 d2                	xor    %edx,%edx
c0105164:	83 c1 04             	add    $0x4,%ecx
c0105167:	74 14                	je     c010517d <L20>
c0105169:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

c0105170 <L10>:
c0105170:	3a 07                	cmp    (%edi),%al
c0105172:	74 06                	je     c010517a <L15>
c0105174:	47                   	inc    %edi
c0105175:	49                   	dec    %ecx
c0105176:	75 f8                	jne    c0105170 <L10>
c0105178:	31 ff                	xor    %edi,%edi

c010517a <L15>:
c010517a:	4a                   	dec    %edx
c010517b:	21 fa                	and    %edi,%edx

c010517d <L20>:
c010517d:	89 d0                	mov    %edx,%eax
c010517f:	8d 65 fc             	lea    -0x4(%ebp),%esp
c0105182:	5f                   	pop    %edi
c0105183:	c9                   	leave  
c0105184:	c3                   	ret    
c0105185:	66 90                	xchg   %ax,%ax
c0105187:	66 90                	xchg   %ax,%ax
c0105189:	66 90                	xchg   %ax,%ax
c010518b:	66 90                	xchg   %ax,%ax
c010518d:	66 90                	xchg   %ax,%ax
c010518f:	90                   	nop

c0105190 <__malloc_lock>:
c0105190:	55                   	push   %ebp
c0105191:	89 e5                	mov    %esp,%ebp
c0105193:	5d                   	pop    %ebp
c0105194:	c3                   	ret    
c0105195:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0105199:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c01051a0 <__malloc_unlock>:
c01051a0:	55                   	push   %ebp
c01051a1:	89 e5                	mov    %esp,%ebp
c01051a3:	5d                   	pop    %ebp
c01051a4:	c3                   	ret    
c01051a5:	66 90                	xchg   %ax,%ax
c01051a7:	66 90                	xchg   %ax,%ax
c01051a9:	66 90                	xchg   %ax,%ax
c01051ab:	66 90                	xchg   %ax,%ax
c01051ad:	66 90                	xchg   %ax,%ax
c01051af:	90                   	nop

c01051b0 <_Balloc>:
c01051b0:	55                   	push   %ebp
c01051b1:	89 e5                	mov    %esp,%ebp
c01051b3:	57                   	push   %edi
c01051b4:	56                   	push   %esi
c01051b5:	53                   	push   %ebx
c01051b6:	83 ec 1c             	sub    $0x1c,%esp
c01051b9:	8b 75 08             	mov    0x8(%ebp),%esi
c01051bc:	8b 5d 0c             	mov    0xc(%ebp),%ebx
c01051bf:	8b 46 4c             	mov    0x4c(%esi),%eax
c01051c2:	85 c0                	test   %eax,%eax
c01051c4:	74 2a                	je     c01051f0 <_Balloc+0x40>
c01051c6:	8d 14 98             	lea    (%eax,%ebx,4),%edx
c01051c9:	8b 02                	mov    (%edx),%eax
c01051cb:	85 c0                	test   %eax,%eax
c01051cd:	74 49                	je     c0105218 <_Balloc+0x68>
c01051cf:	8b 08                	mov    (%eax),%ecx
c01051d1:	89 0a                	mov    %ecx,(%edx)
c01051d3:	c7 40 10 00 00 00 00 	movl   $0x0,0x10(%eax)
c01051da:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%eax)
c01051e1:	83 c4 1c             	add    $0x1c,%esp
c01051e4:	5b                   	pop    %ebx
c01051e5:	5e                   	pop    %esi
c01051e6:	5f                   	pop    %edi
c01051e7:	5d                   	pop    %ebp
c01051e8:	c3                   	ret    
c01051e9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c01051f0:	c7 44 24 08 21 00 00 	movl   $0x21,0x8(%esp)
c01051f7:	00 
c01051f8:	c7 44 24 04 04 00 00 	movl   $0x4,0x4(%esp)
c01051ff:	00 
c0105200:	89 34 24             	mov    %esi,(%esp)
c0105203:	e8 38 1f 00 00       	call   c0107140 <_calloc_r>
c0105208:	85 c0                	test   %eax,%eax
c010520a:	89 46 4c             	mov    %eax,0x4c(%esi)
c010520d:	75 b7                	jne    c01051c6 <_Balloc+0x16>
c010520f:	31 c0                	xor    %eax,%eax
c0105211:	eb ce                	jmp    c01051e1 <_Balloc+0x31>
c0105213:	90                   	nop
c0105214:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0105218:	89 d9                	mov    %ebx,%ecx
c010521a:	bf 01 00 00 00       	mov    $0x1,%edi
c010521f:	d3 e7                	shl    %cl,%edi
c0105221:	8d 04 bd 14 00 00 00 	lea    0x14(,%edi,4),%eax
c0105228:	89 44 24 08          	mov    %eax,0x8(%esp)
c010522c:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c0105233:	00 
c0105234:	89 34 24             	mov    %esi,(%esp)
c0105237:	e8 04 1f 00 00       	call   c0107140 <_calloc_r>
c010523c:	85 c0                	test   %eax,%eax
c010523e:	74 cf                	je     c010520f <_Balloc+0x5f>
c0105240:	89 58 04             	mov    %ebx,0x4(%eax)
c0105243:	89 78 08             	mov    %edi,0x8(%eax)
c0105246:	eb 8b                	jmp    c01051d3 <_Balloc+0x23>
c0105248:	90                   	nop
c0105249:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

c0105250 <_Bfree>:
c0105250:	55                   	push   %ebp
c0105251:	89 e5                	mov    %esp,%ebp
c0105253:	8b 45 0c             	mov    0xc(%ebp),%eax
c0105256:	85 c0                	test   %eax,%eax
c0105258:	74 12                	je     c010526c <_Bfree+0x1c>
c010525a:	8b 55 08             	mov    0x8(%ebp),%edx
c010525d:	8b 48 04             	mov    0x4(%eax),%ecx
c0105260:	8b 52 4c             	mov    0x4c(%edx),%edx
c0105263:	8d 14 8a             	lea    (%edx,%ecx,4),%edx
c0105266:	8b 0a                	mov    (%edx),%ecx
c0105268:	89 08                	mov    %ecx,(%eax)
c010526a:	89 02                	mov    %eax,(%edx)
c010526c:	5d                   	pop    %ebp
c010526d:	c3                   	ret    
c010526e:	66 90                	xchg   %ax,%ax

c0105270 <__multadd>:
c0105270:	55                   	push   %ebp
c0105271:	89 e5                	mov    %esp,%ebp
c0105273:	57                   	push   %edi
c0105274:	56                   	push   %esi
c0105275:	53                   	push   %ebx
c0105276:	83 ec 2c             	sub    $0x2c,%esp
c0105279:	8b 45 0c             	mov    0xc(%ebp),%eax
c010527c:	8b 5d 14             	mov    0x14(%ebp),%ebx
c010527f:	8b 40 10             	mov    0x10(%eax),%eax
c0105282:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0105285:	8b 45 0c             	mov    0xc(%ebp),%eax
c0105288:	8d 78 14             	lea    0x14(%eax),%edi
c010528b:	31 c0                	xor    %eax,%eax
c010528d:	8d 76 00             	lea    0x0(%esi),%esi
c0105290:	8b 0c 87             	mov    (%edi,%eax,4),%ecx
c0105293:	0f b7 d1             	movzwl %cx,%edx
c0105296:	0f af 55 10          	imul   0x10(%ebp),%edx
c010529a:	c1 e9 10             	shr    $0x10,%ecx
c010529d:	0f af 4d 10          	imul   0x10(%ebp),%ecx
c01052a1:	01 da                	add    %ebx,%edx
c01052a3:	89 d3                	mov    %edx,%ebx
c01052a5:	0f b7 d2             	movzwl %dx,%edx
c01052a8:	c1 eb 10             	shr    $0x10,%ebx
c01052ab:	01 d9                	add    %ebx,%ecx
c01052ad:	89 ce                	mov    %ecx,%esi
c01052af:	c1 e1 10             	shl    $0x10,%ecx
c01052b2:	01 d1                	add    %edx,%ecx
c01052b4:	c1 ee 10             	shr    $0x10,%esi
c01052b7:	89 0c 87             	mov    %ecx,(%edi,%eax,4)
c01052ba:	83 c0 01             	add    $0x1,%eax
c01052bd:	89 f3                	mov    %esi,%ebx
c01052bf:	39 45 e4             	cmp    %eax,-0x1c(%ebp)
c01052c2:	7f cc                	jg     c0105290 <__multadd+0x20>
c01052c4:	85 f6                	test   %esi,%esi
c01052c6:	74 1b                	je     c01052e3 <__multadd+0x73>
c01052c8:	8b 45 0c             	mov    0xc(%ebp),%eax
c01052cb:	8b 7d e4             	mov    -0x1c(%ebp),%edi
c01052ce:	3b 78 08             	cmp    0x8(%eax),%edi
c01052d1:	7d 1d                	jge    c01052f0 <__multadd+0x80>
c01052d3:	8b 7d 0c             	mov    0xc(%ebp),%edi
c01052d6:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c01052d9:	89 74 87 14          	mov    %esi,0x14(%edi,%eax,4)
c01052dd:	83 c0 01             	add    $0x1,%eax
c01052e0:	89 47 10             	mov    %eax,0x10(%edi)
c01052e3:	8b 45 0c             	mov    0xc(%ebp),%eax
c01052e6:	83 c4 2c             	add    $0x2c,%esp
c01052e9:	5b                   	pop    %ebx
c01052ea:	5e                   	pop    %esi
c01052eb:	5f                   	pop    %edi
c01052ec:	5d                   	pop    %ebp
c01052ed:	c3                   	ret    
c01052ee:	66 90                	xchg   %ax,%ax
c01052f0:	8b 40 04             	mov    0x4(%eax),%eax
c01052f3:	89 45 e0             	mov    %eax,-0x20(%ebp)
c01052f6:	83 c0 01             	add    $0x1,%eax
c01052f9:	89 44 24 04          	mov    %eax,0x4(%esp)
c01052fd:	8b 45 08             	mov    0x8(%ebp),%eax
c0105300:	89 04 24             	mov    %eax,(%esp)
c0105303:	e8 a8 fe ff ff       	call   c01051b0 <_Balloc>
c0105308:	89 c3                	mov    %eax,%ebx
c010530a:	8b 45 0c             	mov    0xc(%ebp),%eax
c010530d:	8b 40 10             	mov    0x10(%eax),%eax
c0105310:	8d 04 85 08 00 00 00 	lea    0x8(,%eax,4),%eax
c0105317:	89 44 24 08          	mov    %eax,0x8(%esp)
c010531b:	8b 45 0c             	mov    0xc(%ebp),%eax
c010531e:	83 c0 0c             	add    $0xc,%eax
c0105321:	89 44 24 04          	mov    %eax,0x4(%esp)
c0105325:	8d 43 0c             	lea    0xc(%ebx),%eax
c0105328:	89 04 24             	mov    %eax,(%esp)
c010532b:	e8 d0 c0 ff ff       	call   c0101400 <memcpy>
c0105330:	8b 45 0c             	mov    0xc(%ebp),%eax
c0105333:	8b 7d 0c             	mov    0xc(%ebp),%edi
c0105336:	89 5d 0c             	mov    %ebx,0xc(%ebp)
c0105339:	8b 50 04             	mov    0x4(%eax),%edx
c010533c:	8b 45 08             	mov    0x8(%ebp),%eax
c010533f:	8b 40 4c             	mov    0x4c(%eax),%eax
c0105342:	8d 04 90             	lea    (%eax,%edx,4),%eax
c0105345:	8b 10                	mov    (%eax),%edx
c0105347:	89 17                	mov    %edx,(%edi)
c0105349:	89 38                	mov    %edi,(%eax)
c010534b:	eb 86                	jmp    c01052d3 <__multadd+0x63>
c010534d:	8d 76 00             	lea    0x0(%esi),%esi

c0105350 <__s2b>:
c0105350:	55                   	push   %ebp
c0105351:	ba 39 8e e3 38       	mov    $0x38e38e39,%edx
c0105356:	89 e5                	mov    %esp,%ebp
c0105358:	57                   	push   %edi
c0105359:	56                   	push   %esi
c010535a:	53                   	push   %ebx
c010535b:	83 ec 2c             	sub    $0x2c,%esp
c010535e:	8b 45 14             	mov    0x14(%ebp),%eax
c0105361:	8b 5d 08             	mov    0x8(%ebp),%ebx
c0105364:	8b 75 0c             	mov    0xc(%ebp),%esi
c0105367:	8d 48 08             	lea    0x8(%eax),%ecx
c010536a:	89 c8                	mov    %ecx,%eax
c010536c:	f7 ea                	imul   %edx
c010536e:	c1 f9 1f             	sar    $0x1f,%ecx
c0105371:	d1 fa                	sar    %edx
c0105373:	29 ca                	sub    %ecx,%edx
c0105375:	83 fa 01             	cmp    $0x1,%edx
c0105378:	0f 8e be 00 00 00    	jle    c010543c <__s2b+0xec>
c010537e:	b8 01 00 00 00       	mov    $0x1,%eax
c0105383:	31 c9                	xor    %ecx,%ecx
c0105385:	8d 76 00             	lea    0x0(%esi),%esi
c0105388:	01 c0                	add    %eax,%eax
c010538a:	83 c1 01             	add    $0x1,%ecx
c010538d:	39 c2                	cmp    %eax,%edx
c010538f:	7f f7                	jg     c0105388 <__s2b+0x38>
c0105391:	89 4c 24 04          	mov    %ecx,0x4(%esp)
c0105395:	89 1c 24             	mov    %ebx,(%esp)
c0105398:	e8 13 fe ff ff       	call   c01051b0 <_Balloc>
c010539d:	8b 55 18             	mov    0x18(%ebp),%edx
c01053a0:	83 7d 10 09          	cmpl   $0x9,0x10(%ebp)
c01053a4:	89 50 14             	mov    %edx,0x14(%eax)
c01053a7:	c7 40 10 01 00 00 00 	movl   $0x1,0x10(%eax)
c01053ae:	0f 8e 7c 00 00 00    	jle    c0105430 <__s2b+0xe0>
c01053b4:	8d 4e 09             	lea    0x9(%esi),%ecx
c01053b7:	03 75 10             	add    0x10(%ebp),%esi
c01053ba:	89 cf                	mov    %ecx,%edi
c01053bc:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c01053bf:	90                   	nop
c01053c0:	83 c7 01             	add    $0x1,%edi
c01053c3:	0f be 57 ff          	movsbl -0x1(%edi),%edx
c01053c7:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c01053ce:	00 
c01053cf:	89 44 24 04          	mov    %eax,0x4(%esp)
c01053d3:	89 1c 24             	mov    %ebx,(%esp)
c01053d6:	83 ea 30             	sub    $0x30,%edx
c01053d9:	89 54 24 0c          	mov    %edx,0xc(%esp)
c01053dd:	e8 8e fe ff ff       	call   c0105270 <__multadd>
c01053e2:	39 f7                	cmp    %esi,%edi
c01053e4:	75 da                	jne    c01053c0 <__s2b+0x70>
c01053e6:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c01053e9:	8b 7d 10             	mov    0x10(%ebp),%edi
c01053ec:	8d 74 39 f8          	lea    -0x8(%ecx,%edi,1),%esi
c01053f0:	8b 4d 10             	mov    0x10(%ebp),%ecx
c01053f3:	39 4d 14             	cmp    %ecx,0x14(%ebp)
c01053f6:	7e 2e                	jle    c0105426 <__s2b+0xd6>
c01053f8:	8b 7d 14             	mov    0x14(%ebp),%edi
c01053fb:	29 cf                	sub    %ecx,%edi
c01053fd:	01 f7                	add    %esi,%edi
c01053ff:	90                   	nop
c0105400:	83 c6 01             	add    $0x1,%esi
c0105403:	0f be 56 ff          	movsbl -0x1(%esi),%edx
c0105407:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c010540e:	00 
c010540f:	89 44 24 04          	mov    %eax,0x4(%esp)
c0105413:	89 1c 24             	mov    %ebx,(%esp)
c0105416:	83 ea 30             	sub    $0x30,%edx
c0105419:	89 54 24 0c          	mov    %edx,0xc(%esp)
c010541d:	e8 4e fe ff ff       	call   c0105270 <__multadd>
c0105422:	39 fe                	cmp    %edi,%esi
c0105424:	75 da                	jne    c0105400 <__s2b+0xb0>
c0105426:	83 c4 2c             	add    $0x2c,%esp
c0105429:	5b                   	pop    %ebx
c010542a:	5e                   	pop    %esi
c010542b:	5f                   	pop    %edi
c010542c:	5d                   	pop    %ebp
c010542d:	c3                   	ret    
c010542e:	66 90                	xchg   %ax,%ax
c0105430:	83 c6 0a             	add    $0xa,%esi
c0105433:	c7 45 10 09 00 00 00 	movl   $0x9,0x10(%ebp)
c010543a:	eb b4                	jmp    c01053f0 <__s2b+0xa0>
c010543c:	31 c9                	xor    %ecx,%ecx
c010543e:	e9 4e ff ff ff       	jmp    c0105391 <__s2b+0x41>
c0105443:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0105449:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0105450 <__hi0bits>:
c0105450:	55                   	push   %ebp
c0105451:	31 c9                	xor    %ecx,%ecx
c0105453:	89 e5                	mov    %esp,%ebp
c0105455:	8b 55 08             	mov    0x8(%ebp),%edx
c0105458:	f7 c2 00 00 ff ff    	test   $0xffff0000,%edx
c010545e:	75 05                	jne    c0105465 <__hi0bits+0x15>
c0105460:	c1 e2 10             	shl    $0x10,%edx
c0105463:	b1 10                	mov    $0x10,%cl
c0105465:	f7 c2 00 00 00 ff    	test   $0xff000000,%edx
c010546b:	75 06                	jne    c0105473 <__hi0bits+0x23>
c010546d:	83 c1 08             	add    $0x8,%ecx
c0105470:	c1 e2 08             	shl    $0x8,%edx
c0105473:	f7 c2 00 00 00 f0    	test   $0xf0000000,%edx
c0105479:	75 06                	jne    c0105481 <__hi0bits+0x31>
c010547b:	83 c1 04             	add    $0x4,%ecx
c010547e:	c1 e2 04             	shl    $0x4,%edx
c0105481:	f7 c2 00 00 00 c0    	test   $0xc0000000,%edx
c0105487:	75 06                	jne    c010548f <__hi0bits+0x3f>
c0105489:	83 c1 02             	add    $0x2,%ecx
c010548c:	c1 e2 02             	shl    $0x2,%edx
c010548f:	85 d2                	test   %edx,%edx
c0105491:	89 c8                	mov    %ecx,%eax
c0105493:	78 0d                	js     c01054a2 <__hi0bits+0x52>
c0105495:	81 e2 00 00 00 40    	and    $0x40000000,%edx
c010549b:	b8 20 00 00 00       	mov    $0x20,%eax
c01054a0:	75 06                	jne    c01054a8 <__hi0bits+0x58>
c01054a2:	5d                   	pop    %ebp
c01054a3:	c3                   	ret    
c01054a4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c01054a8:	8d 41 01             	lea    0x1(%ecx),%eax
c01054ab:	5d                   	pop    %ebp
c01054ac:	c3                   	ret    
c01054ad:	8d 76 00             	lea    0x0(%esi),%esi

c01054b0 <__lo0bits>:
c01054b0:	55                   	push   %ebp
c01054b1:	89 e5                	mov    %esp,%ebp
c01054b3:	53                   	push   %ebx
c01054b4:	8b 5d 08             	mov    0x8(%ebp),%ebx
c01054b7:	8b 13                	mov    (%ebx),%edx
c01054b9:	f6 c2 07             	test   $0x7,%dl
c01054bc:	74 1a                	je     c01054d8 <__lo0bits+0x28>
c01054be:	31 c0                	xor    %eax,%eax
c01054c0:	f6 c2 01             	test   $0x1,%dl
c01054c3:	75 0f                	jne    c01054d4 <__lo0bits+0x24>
c01054c5:	f6 c2 02             	test   $0x2,%dl
c01054c8:	75 56                	jne    c0105520 <__lo0bits+0x70>
c01054ca:	c1 ea 02             	shr    $0x2,%edx
c01054cd:	b8 02 00 00 00       	mov    $0x2,%eax
c01054d2:	89 13                	mov    %edx,(%ebx)
c01054d4:	5b                   	pop    %ebx
c01054d5:	5d                   	pop    %ebp
c01054d6:	c3                   	ret    
c01054d7:	90                   	nop
c01054d8:	31 c9                	xor    %ecx,%ecx
c01054da:	66 85 d2             	test   %dx,%dx
c01054dd:	75 05                	jne    c01054e4 <__lo0bits+0x34>
c01054df:	c1 ea 10             	shr    $0x10,%edx
c01054e2:	b1 10                	mov    $0x10,%cl
c01054e4:	84 d2                	test   %dl,%dl
c01054e6:	75 06                	jne    c01054ee <__lo0bits+0x3e>
c01054e8:	83 c1 08             	add    $0x8,%ecx
c01054eb:	c1 ea 08             	shr    $0x8,%edx
c01054ee:	f6 c2 0f             	test   $0xf,%dl
c01054f1:	75 06                	jne    c01054f9 <__lo0bits+0x49>
c01054f3:	83 c1 04             	add    $0x4,%ecx
c01054f6:	c1 ea 04             	shr    $0x4,%edx
c01054f9:	f6 c2 03             	test   $0x3,%dl
c01054fc:	75 06                	jne    c0105504 <__lo0bits+0x54>
c01054fe:	83 c1 02             	add    $0x2,%ecx
c0105501:	c1 ea 02             	shr    $0x2,%edx
c0105504:	f6 c2 01             	test   $0x1,%dl
c0105507:	75 0c                	jne    c0105515 <__lo0bits+0x65>
c0105509:	d1 ea                	shr    %edx
c010550b:	b8 20 00 00 00       	mov    $0x20,%eax
c0105510:	74 c2                	je     c01054d4 <__lo0bits+0x24>
c0105512:	83 c1 01             	add    $0x1,%ecx
c0105515:	89 13                	mov    %edx,(%ebx)
c0105517:	89 c8                	mov    %ecx,%eax
c0105519:	5b                   	pop    %ebx
c010551a:	5d                   	pop    %ebp
c010551b:	c3                   	ret    
c010551c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0105520:	d1 ea                	shr    %edx
c0105522:	b0 01                	mov    $0x1,%al
c0105524:	89 13                	mov    %edx,(%ebx)
c0105526:	5b                   	pop    %ebx
c0105527:	5d                   	pop    %ebp
c0105528:	c3                   	ret    
c0105529:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

c0105530 <__i2b>:
c0105530:	55                   	push   %ebp
c0105531:	89 e5                	mov    %esp,%ebp
c0105533:	83 ec 18             	sub    $0x18,%esp
c0105536:	8b 45 08             	mov    0x8(%ebp),%eax
c0105539:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c0105540:	00 
c0105541:	89 04 24             	mov    %eax,(%esp)
c0105544:	e8 67 fc ff ff       	call   c01051b0 <_Balloc>
c0105549:	8b 55 0c             	mov    0xc(%ebp),%edx
c010554c:	89 50 14             	mov    %edx,0x14(%eax)
c010554f:	c7 40 10 01 00 00 00 	movl   $0x1,0x10(%eax)
c0105556:	c9                   	leave  
c0105557:	c3                   	ret    
c0105558:	90                   	nop
c0105559:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

c0105560 <__multiply>:
c0105560:	55                   	push   %ebp
c0105561:	89 e5                	mov    %esp,%ebp
c0105563:	57                   	push   %edi
c0105564:	56                   	push   %esi
c0105565:	53                   	push   %ebx
c0105566:	83 ec 3c             	sub    $0x3c,%esp
c0105569:	8b 75 0c             	mov    0xc(%ebp),%esi
c010556c:	8b 45 10             	mov    0x10(%ebp),%eax
c010556f:	8b 7e 10             	mov    0x10(%esi),%edi
c0105572:	8b 58 10             	mov    0x10(%eax),%ebx
c0105575:	39 df                	cmp    %ebx,%edi
c0105577:	7d 0e                	jge    c0105587 <__multiply+0x27>
c0105579:	89 f8                	mov    %edi,%eax
c010557b:	89 df                	mov    %ebx,%edi
c010557d:	89 c3                	mov    %eax,%ebx
c010557f:	89 f0                	mov    %esi,%eax
c0105581:	8b 75 10             	mov    0x10(%ebp),%esi
c0105584:	89 45 10             	mov    %eax,0x10(%ebp)
c0105587:	8d 04 1f             	lea    (%edi,%ebx,1),%eax
c010558a:	3b 46 08             	cmp    0x8(%esi),%eax
c010558d:	89 45 c8             	mov    %eax,-0x38(%ebp)
c0105590:	0f 9f c0             	setg   %al
c0105593:	0f b6 c0             	movzbl %al,%eax
c0105596:	03 46 04             	add    0x4(%esi),%eax
c0105599:	89 44 24 04          	mov    %eax,0x4(%esp)
c010559d:	8b 45 08             	mov    0x8(%ebp),%eax
c01055a0:	89 04 24             	mov    %eax,(%esp)
c01055a3:	e8 08 fc ff ff       	call   c01051b0 <_Balloc>
c01055a8:	8b 55 c8             	mov    -0x38(%ebp),%edx
c01055ab:	89 45 c0             	mov    %eax,-0x40(%ebp)
c01055ae:	8d 40 14             	lea    0x14(%eax),%eax
c01055b1:	8d 14 90             	lea    (%eax,%edx,4),%edx
c01055b4:	89 d1                	mov    %edx,%ecx
c01055b6:	39 c8                	cmp    %ecx,%eax
c01055b8:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c01055bb:	89 55 c4             	mov    %edx,-0x3c(%ebp)
c01055be:	73 15                	jae    c01055d5 <__multiply+0x75>
c01055c0:	8b 55 c4             	mov    -0x3c(%ebp),%edx
c01055c3:	90                   	nop
c01055c4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c01055c8:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
c01055ce:	83 c0 04             	add    $0x4,%eax
c01055d1:	39 c2                	cmp    %eax,%edx
c01055d3:	77 f3                	ja     c01055c8 <__multiply+0x68>
c01055d5:	8d 46 14             	lea    0x14(%esi),%eax
c01055d8:	89 45 d0             	mov    %eax,-0x30(%ebp)
c01055db:	8d 04 b8             	lea    (%eax,%edi,4),%eax
c01055de:	89 45 dc             	mov    %eax,-0x24(%ebp)
c01055e1:	8b 45 10             	mov    0x10(%ebp),%eax
c01055e4:	83 c0 14             	add    $0x14,%eax
c01055e7:	8d 3c 98             	lea    (%eax,%ebx,4),%edi
c01055ea:	39 f8                	cmp    %edi,%eax
c01055ec:	89 45 d8             	mov    %eax,-0x28(%ebp)
c01055ef:	89 7d cc             	mov    %edi,-0x34(%ebp)
c01055f2:	0f 83 e8 00 00 00    	jae    c01056e0 <__multiply+0x180>
c01055f8:	8b 45 d8             	mov    -0x28(%ebp),%eax
c01055fb:	8b 00                	mov    (%eax),%eax
c01055fd:	0f b7 f8             	movzwl %ax,%edi
c0105600:	85 ff                	test   %edi,%edi
c0105602:	89 7d e4             	mov    %edi,-0x1c(%ebp)
c0105605:	74 5a                	je     c0105661 <__multiply+0x101>
c0105607:	8b 55 d4             	mov    -0x2c(%ebp),%edx
c010560a:	31 db                	xor    %ebx,%ebx
c010560c:	8b 75 d0             	mov    -0x30(%ebp),%esi
c010560f:	eb 09                	jmp    c010561a <__multiply+0xba>
c0105611:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0105618:	89 fa                	mov    %edi,%edx
c010561a:	8b 0e                	mov    (%esi),%ecx
c010561c:	83 c6 04             	add    $0x4,%esi
c010561f:	0f b7 3a             	movzwl (%edx),%edi
c0105622:	0f b7 c1             	movzwl %cx,%eax
c0105625:	0f af 45 e4          	imul   -0x1c(%ebp),%eax
c0105629:	c1 e9 10             	shr    $0x10,%ecx
c010562c:	0f af 4d e4          	imul   -0x1c(%ebp),%ecx
c0105630:	01 f8                	add    %edi,%eax
c0105632:	01 d8                	add    %ebx,%eax
c0105634:	8b 1a                	mov    (%edx),%ebx
c0105636:	8d 7a 04             	lea    0x4(%edx),%edi
c0105639:	c1 eb 10             	shr    $0x10,%ebx
c010563c:	01 d9                	add    %ebx,%ecx
c010563e:	89 c3                	mov    %eax,%ebx
c0105640:	c1 eb 10             	shr    $0x10,%ebx
c0105643:	0f b7 c0             	movzwl %ax,%eax
c0105646:	01 d9                	add    %ebx,%ecx
c0105648:	89 cb                	mov    %ecx,%ebx
c010564a:	c1 e1 10             	shl    $0x10,%ecx
c010564d:	09 c1                	or     %eax,%ecx
c010564f:	c1 eb 10             	shr    $0x10,%ebx
c0105652:	39 75 dc             	cmp    %esi,-0x24(%ebp)
c0105655:	89 0a                	mov    %ecx,(%edx)
c0105657:	77 bf                	ja     c0105618 <__multiply+0xb8>
c0105659:	8b 45 d8             	mov    -0x28(%ebp),%eax
c010565c:	89 5a 04             	mov    %ebx,0x4(%edx)
c010565f:	8b 00                	mov    (%eax),%eax
c0105661:	c1 e8 10             	shr    $0x10,%eax
c0105664:	85 c0                	test   %eax,%eax
c0105666:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0105669:	74 61                	je     c01056cc <__multiply+0x16c>
c010566b:	8b 45 d4             	mov    -0x2c(%ebp),%eax
c010566e:	31 ff                	xor    %edi,%edi
c0105670:	89 fe                	mov    %edi,%esi
c0105672:	8b 10                	mov    (%eax),%edx
c0105674:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0105677:	8b 45 d0             	mov    -0x30(%ebp),%eax
c010567a:	89 d3                	mov    %edx,%ebx
c010567c:	eb 05                	jmp    c0105683 <__multiply+0x123>
c010567e:	66 90                	xchg   %ax,%ax
c0105680:	89 4d e0             	mov    %ecx,-0x20(%ebp)
c0105683:	0f b7 08             	movzwl (%eax),%ecx
c0105686:	c1 eb 10             	shr    $0x10,%ebx
c0105689:	0f b7 d2             	movzwl %dx,%edx
c010568c:	0f af 4d e4          	imul   -0x1c(%ebp),%ecx
c0105690:	83 c0 04             	add    $0x4,%eax
c0105693:	8d 3c 19             	lea    (%ecx,%ebx,1),%edi
c0105696:	01 f7                	add    %esi,%edi
c0105698:	8b 75 e0             	mov    -0x20(%ebp),%esi
c010569b:	89 fb                	mov    %edi,%ebx
c010569d:	c1 e3 10             	shl    $0x10,%ebx
c01056a0:	09 d3                	or     %edx,%ebx
c01056a2:	89 1e                	mov    %ebx,(%esi)
c01056a4:	8b 5e 04             	mov    0x4(%esi),%ebx
c01056a7:	8d 4e 04             	lea    0x4(%esi),%ecx
c01056aa:	0f b7 50 fe          	movzwl -0x2(%eax),%edx
c01056ae:	c1 ef 10             	shr    $0x10,%edi
c01056b1:	0f af 55 e4          	imul   -0x1c(%ebp),%edx
c01056b5:	0f b7 f3             	movzwl %bx,%esi
c01056b8:	01 f2                	add    %esi,%edx
c01056ba:	01 fa                	add    %edi,%edx
c01056bc:	89 d6                	mov    %edx,%esi
c01056be:	c1 ee 10             	shr    $0x10,%esi
c01056c1:	39 45 dc             	cmp    %eax,-0x24(%ebp)
c01056c4:	77 ba                	ja     c0105680 <__multiply+0x120>
c01056c6:	8b 45 e0             	mov    -0x20(%ebp),%eax
c01056c9:	89 50 04             	mov    %edx,0x4(%eax)
c01056cc:	83 45 d8 04          	addl   $0x4,-0x28(%ebp)
c01056d0:	8b 45 d8             	mov    -0x28(%ebp),%eax
c01056d3:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
c01056d7:	39 45 cc             	cmp    %eax,-0x34(%ebp)
c01056da:	0f 87 18 ff ff ff    	ja     c01055f8 <__multiply+0x98>
c01056e0:	8b 75 c8             	mov    -0x38(%ebp),%esi
c01056e3:	85 f6                	test   %esi,%esi
c01056e5:	7e 29                	jle    c0105710 <__multiply+0x1b0>
c01056e7:	8b 7d c4             	mov    -0x3c(%ebp),%edi
c01056ea:	8b 5f fc             	mov    -0x4(%edi),%ebx
c01056ed:	85 db                	test   %ebx,%ebx
c01056ef:	75 1f                	jne    c0105710 <__multiply+0x1b0>
c01056f1:	8b 55 c8             	mov    -0x38(%ebp),%edx
c01056f4:	89 d0                	mov    %edx,%eax
c01056f6:	c1 e0 02             	shl    $0x2,%eax
c01056f9:	29 c7                	sub    %eax,%edi
c01056fb:	89 f8                	mov    %edi,%eax
c01056fd:	eb 09                	jmp    c0105708 <__multiply+0x1a8>
c01056ff:	90                   	nop
c0105700:	8b 4c 90 fc          	mov    -0x4(%eax,%edx,4),%ecx
c0105704:	85 c9                	test   %ecx,%ecx
c0105706:	75 05                	jne    c010570d <__multiply+0x1ad>
c0105708:	83 ea 01             	sub    $0x1,%edx
c010570b:	75 f3                	jne    c0105700 <__multiply+0x1a0>
c010570d:	89 55 c8             	mov    %edx,-0x38(%ebp)
c0105710:	8b 45 c0             	mov    -0x40(%ebp),%eax
c0105713:	8b 7d c8             	mov    -0x38(%ebp),%edi
c0105716:	89 78 10             	mov    %edi,0x10(%eax)
c0105719:	83 c4 3c             	add    $0x3c,%esp
c010571c:	5b                   	pop    %ebx
c010571d:	5e                   	pop    %esi
c010571e:	5f                   	pop    %edi
c010571f:	5d                   	pop    %ebp
c0105720:	c3                   	ret    
c0105721:	eb 0d                	jmp    c0105730 <__pow5mult>
c0105723:	90                   	nop
c0105724:	90                   	nop
c0105725:	90                   	nop
c0105726:	90                   	nop
c0105727:	90                   	nop
c0105728:	90                   	nop
c0105729:	90                   	nop
c010572a:	90                   	nop
c010572b:	90                   	nop
c010572c:	90                   	nop
c010572d:	90                   	nop
c010572e:	90                   	nop
c010572f:	90                   	nop

c0105730 <__pow5mult>:
c0105730:	55                   	push   %ebp
c0105731:	89 e5                	mov    %esp,%ebp
c0105733:	57                   	push   %edi
c0105734:	56                   	push   %esi
c0105735:	53                   	push   %ebx
c0105736:	83 ec 2c             	sub    $0x2c,%esp
c0105739:	8b 5d 10             	mov    0x10(%ebp),%ebx
c010573c:	8b 4d 08             	mov    0x8(%ebp),%ecx
c010573f:	8b 7d 0c             	mov    0xc(%ebp),%edi
c0105742:	89 d8                	mov    %ebx,%eax
c0105744:	83 e0 03             	and    $0x3,%eax
c0105747:	0f 85 a3 00 00 00    	jne    c01057f0 <__pow5mult+0xc0>
c010574d:	c1 fb 02             	sar    $0x2,%ebx
c0105750:	85 db                	test   %ebx,%ebx
c0105752:	74 5c                	je     c01057b0 <__pow5mult+0x80>
c0105754:	8b 71 48             	mov    0x48(%ecx),%esi
c0105757:	85 f6                	test   %esi,%esi
c0105759:	0f 84 bd 00 00 00    	je     c010581c <__pow5mult+0xec>
c010575f:	f6 c3 01             	test   $0x1,%bl
c0105762:	75 15                	jne    c0105779 <__pow5mult+0x49>
c0105764:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0105768:	d1 fb                	sar    %ebx
c010576a:	74 44                	je     c01057b0 <__pow5mult+0x80>
c010576c:	8b 06                	mov    (%esi),%eax
c010576e:	85 c0                	test   %eax,%eax
c0105770:	74 4e                	je     c01057c0 <__pow5mult+0x90>
c0105772:	89 c6                	mov    %eax,%esi
c0105774:	f6 c3 01             	test   $0x1,%bl
c0105777:	74 ef                	je     c0105768 <__pow5mult+0x38>
c0105779:	89 0c 24             	mov    %ecx,(%esp)
c010577c:	89 74 24 08          	mov    %esi,0x8(%esp)
c0105780:	89 7c 24 04          	mov    %edi,0x4(%esp)
c0105784:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c0105787:	e8 d4 fd ff ff       	call   c0105560 <__multiply>
c010578c:	85 ff                	test   %edi,%edi
c010578e:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c0105791:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0105794:	74 52                	je     c01057e8 <__pow5mult+0xb8>
c0105796:	8b 57 04             	mov    0x4(%edi),%edx
c0105799:	d1 fb                	sar    %ebx
c010579b:	8b 41 4c             	mov    0x4c(%ecx),%eax
c010579e:	8d 04 90             	lea    (%eax,%edx,4),%eax
c01057a1:	8b 10                	mov    (%eax),%edx
c01057a3:	89 17                	mov    %edx,(%edi)
c01057a5:	89 38                	mov    %edi,(%eax)
c01057a7:	8b 7d e0             	mov    -0x20(%ebp),%edi
c01057aa:	75 c0                	jne    c010576c <__pow5mult+0x3c>
c01057ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c01057b0:	83 c4 2c             	add    $0x2c,%esp
c01057b3:	89 f8                	mov    %edi,%eax
c01057b5:	5b                   	pop    %ebx
c01057b6:	5e                   	pop    %esi
c01057b7:	5f                   	pop    %edi
c01057b8:	5d                   	pop    %ebp
c01057b9:	c3                   	ret    
c01057ba:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c01057c0:	89 74 24 08          	mov    %esi,0x8(%esp)
c01057c4:	89 74 24 04          	mov    %esi,0x4(%esp)
c01057c8:	89 0c 24             	mov    %ecx,(%esp)
c01057cb:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c01057ce:	e8 8d fd ff ff       	call   c0105560 <__multiply>
c01057d3:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c01057d6:	89 06                	mov    %eax,(%esi)
c01057d8:	89 c6                	mov    %eax,%esi
c01057da:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
c01057e0:	eb 92                	jmp    c0105774 <__pow5mult+0x44>
c01057e2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c01057e8:	8b 7d e0             	mov    -0x20(%ebp),%edi
c01057eb:	e9 78 ff ff ff       	jmp    c0105768 <__pow5mult+0x38>
c01057f0:	8b 04 85 7c 82 10 c0 	mov    -0x3fef7d84(,%eax,4),%eax
c01057f7:	89 7c 24 04          	mov    %edi,0x4(%esp)
c01057fb:	89 0c 24             	mov    %ecx,(%esp)
c01057fe:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c0105805:	00 
c0105806:	89 44 24 08          	mov    %eax,0x8(%esp)
c010580a:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c010580d:	e8 5e fa ff ff       	call   c0105270 <__multadd>
c0105812:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c0105815:	89 c7                	mov    %eax,%edi
c0105817:	e9 31 ff ff ff       	jmp    c010574d <__pow5mult+0x1d>
c010581c:	89 0c 24             	mov    %ecx,(%esp)
c010581f:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c0105826:	00 
c0105827:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c010582a:	e8 81 f9 ff ff       	call   c01051b0 <_Balloc>
c010582f:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c0105832:	c7 40 14 71 02 00 00 	movl   $0x271,0x14(%eax)
c0105839:	89 c6                	mov    %eax,%esi
c010583b:	c7 40 10 01 00 00 00 	movl   $0x1,0x10(%eax)
c0105842:	89 41 48             	mov    %eax,0x48(%ecx)
c0105845:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
c010584b:	e9 0f ff ff ff       	jmp    c010575f <__pow5mult+0x2f>

c0105850 <__lshift>:
c0105850:	55                   	push   %ebp
c0105851:	89 e5                	mov    %esp,%ebp
c0105853:	57                   	push   %edi
c0105854:	56                   	push   %esi
c0105855:	53                   	push   %ebx
c0105856:	83 ec 2c             	sub    $0x2c,%esp
c0105859:	8b 45 0c             	mov    0xc(%ebp),%eax
c010585c:	8b 75 10             	mov    0x10(%ebp),%esi
c010585f:	89 c7                	mov    %eax,%edi
c0105861:	8b 50 04             	mov    0x4(%eax),%edx
c0105864:	8b 40 10             	mov    0x10(%eax),%eax
c0105867:	89 f3                	mov    %esi,%ebx
c0105869:	c1 fb 05             	sar    $0x5,%ebx
c010586c:	01 d8                	add    %ebx,%eax
c010586e:	89 45 d0             	mov    %eax,-0x30(%ebp)
c0105871:	83 c0 01             	add    $0x1,%eax
c0105874:	89 c1                	mov    %eax,%ecx
c0105876:	89 45 d8             	mov    %eax,-0x28(%ebp)
c0105879:	8b 47 08             	mov    0x8(%edi),%eax
c010587c:	39 c1                	cmp    %eax,%ecx
c010587e:	7e 09                	jle    c0105889 <__lshift+0x39>
c0105880:	01 c0                	add    %eax,%eax
c0105882:	83 c2 01             	add    $0x1,%edx
c0105885:	39 c1                	cmp    %eax,%ecx
c0105887:	7f f7                	jg     c0105880 <__lshift+0x30>
c0105889:	8b 45 08             	mov    0x8(%ebp),%eax
c010588c:	89 54 24 04          	mov    %edx,0x4(%esp)
c0105890:	89 04 24             	mov    %eax,(%esp)
c0105893:	e8 18 f9 ff ff       	call   c01051b0 <_Balloc>
c0105898:	85 db                	test   %ebx,%ebx
c010589a:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c010589d:	8d 50 14             	lea    0x14(%eax),%edx
c01058a0:	7e 17                	jle    c01058b9 <__lshift+0x69>
c01058a2:	31 c0                	xor    %eax,%eax
c01058a4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c01058a8:	c7 04 82 00 00 00 00 	movl   $0x0,(%edx,%eax,4)
c01058af:	83 c0 01             	add    $0x1,%eax
c01058b2:	39 d8                	cmp    %ebx,%eax
c01058b4:	75 f2                	jne    c01058a8 <__lshift+0x58>
c01058b6:	8d 14 82             	lea    (%edx,%eax,4),%edx
c01058b9:	8b 7d 0c             	mov    0xc(%ebp),%edi
c01058bc:	8b 45 0c             	mov    0xc(%ebp),%eax
c01058bf:	8b 4f 10             	mov    0x10(%edi),%ecx
c01058c2:	83 c0 14             	add    $0x14,%eax
c01058c5:	83 e6 1f             	and    $0x1f,%esi
c01058c8:	89 75 e0             	mov    %esi,-0x20(%ebp)
c01058cb:	8d 3c 88             	lea    (%eax,%ecx,4),%edi
c01058ce:	89 7d e4             	mov    %edi,-0x1c(%ebp)
c01058d1:	74 7d                	je     c0105950 <__lshift+0x100>
c01058d3:	c7 45 dc 20 00 00 00 	movl   $0x20,-0x24(%ebp)
c01058da:	29 75 dc             	sub    %esi,-0x24(%ebp)
c01058dd:	31 f6                	xor    %esi,%esi
c01058df:	eb 09                	jmp    c01058ea <__lshift+0x9a>
c01058e1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c01058e8:	89 fa                	mov    %edi,%edx
c01058ea:	8b 18                	mov    (%eax),%ebx
c01058ec:	83 c0 04             	add    $0x4,%eax
c01058ef:	0f b6 4d e0          	movzbl -0x20(%ebp),%ecx
c01058f3:	8d 7a 04             	lea    0x4(%edx),%edi
c01058f6:	d3 e3                	shl    %cl,%ebx
c01058f8:	0f b6 4d dc          	movzbl -0x24(%ebp),%ecx
c01058fc:	09 f3                	or     %esi,%ebx
c01058fe:	89 1a                	mov    %ebx,(%edx)
c0105900:	8b 70 fc             	mov    -0x4(%eax),%esi
c0105903:	d3 ee                	shr    %cl,%esi
c0105905:	39 45 e4             	cmp    %eax,-0x1c(%ebp)
c0105908:	77 de                	ja     c01058e8 <__lshift+0x98>
c010590a:	8b 45 d0             	mov    -0x30(%ebp),%eax
c010590d:	89 72 04             	mov    %esi,0x4(%edx)
c0105910:	83 c0 02             	add    $0x2,%eax
c0105913:	85 f6                	test   %esi,%esi
c0105915:	0f 44 45 d8          	cmove  -0x28(%ebp),%eax
c0105919:	89 45 d8             	mov    %eax,-0x28(%ebp)
c010591c:	8b 45 d8             	mov    -0x28(%ebp),%eax
c010591f:	8b 7d d4             	mov    -0x2c(%ebp),%edi
c0105922:	8b 75 0c             	mov    0xc(%ebp),%esi
c0105925:	83 e8 01             	sub    $0x1,%eax
c0105928:	89 47 10             	mov    %eax,0x10(%edi)
c010592b:	8b 45 0c             	mov    0xc(%ebp),%eax
c010592e:	8b 50 04             	mov    0x4(%eax),%edx
c0105931:	8b 45 08             	mov    0x8(%ebp),%eax
c0105934:	8b 40 4c             	mov    0x4c(%eax),%eax
c0105937:	8d 04 90             	lea    (%eax,%edx,4),%eax
c010593a:	8b 10                	mov    (%eax),%edx
c010593c:	89 16                	mov    %edx,(%esi)
c010593e:	89 30                	mov    %esi,(%eax)
c0105940:	83 c4 2c             	add    $0x2c,%esp
c0105943:	89 f8                	mov    %edi,%eax
c0105945:	5b                   	pop    %ebx
c0105946:	5e                   	pop    %esi
c0105947:	5f                   	pop    %edi
c0105948:	5d                   	pop    %ebp
c0105949:	c3                   	ret    
c010594a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0105950:	8b 5d e4             	mov    -0x1c(%ebp),%ebx
c0105953:	90                   	nop
c0105954:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0105958:	83 c0 04             	add    $0x4,%eax
c010595b:	8b 48 fc             	mov    -0x4(%eax),%ecx
c010595e:	83 c2 04             	add    $0x4,%edx
c0105961:	39 c3                	cmp    %eax,%ebx
c0105963:	89 4a fc             	mov    %ecx,-0x4(%edx)
c0105966:	77 f0                	ja     c0105958 <__lshift+0x108>
c0105968:	eb b2                	jmp    c010591c <__lshift+0xcc>
c010596a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

c0105970 <__mcmp>:
c0105970:	55                   	push   %ebp
c0105971:	89 e5                	mov    %esp,%ebp
c0105973:	8b 4d 08             	mov    0x8(%ebp),%ecx
c0105976:	8b 55 0c             	mov    0xc(%ebp),%edx
c0105979:	53                   	push   %ebx
c010597a:	8b 41 10             	mov    0x10(%ecx),%eax
c010597d:	8b 5a 10             	mov    0x10(%edx),%ebx
c0105980:	29 d8                	sub    %ebx,%eax
c0105982:	85 c0                	test   %eax,%eax
c0105984:	75 27                	jne    c01059ad <__mcmp+0x3d>
c0105986:	c1 e3 02             	shl    $0x2,%ebx
c0105989:	83 c1 14             	add    $0x14,%ecx
c010598c:	8d 04 19             	lea    (%ecx,%ebx,1),%eax
c010598f:	8d 54 1a 14          	lea    0x14(%edx,%ebx,1),%edx
c0105993:	eb 07                	jmp    c010599c <__mcmp+0x2c>
c0105995:	8d 76 00             	lea    0x0(%esi),%esi
c0105998:	39 c1                	cmp    %eax,%ecx
c010599a:	73 14                	jae    c01059b0 <__mcmp+0x40>
c010599c:	83 ea 04             	sub    $0x4,%edx
c010599f:	83 e8 04             	sub    $0x4,%eax
c01059a2:	8b 1a                	mov    (%edx),%ebx
c01059a4:	39 18                	cmp    %ebx,(%eax)
c01059a6:	74 f0                	je     c0105998 <__mcmp+0x28>
c01059a8:	19 c0                	sbb    %eax,%eax
c01059aa:	83 c8 01             	or     $0x1,%eax
c01059ad:	5b                   	pop    %ebx
c01059ae:	5d                   	pop    %ebp
c01059af:	c3                   	ret    
c01059b0:	31 c0                	xor    %eax,%eax
c01059b2:	5b                   	pop    %ebx
c01059b3:	5d                   	pop    %ebp
c01059b4:	c3                   	ret    
c01059b5:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c01059b9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c01059c0 <__mdiff>:
c01059c0:	55                   	push   %ebp
c01059c1:	89 e5                	mov    %esp,%ebp
c01059c3:	57                   	push   %edi
c01059c4:	56                   	push   %esi
c01059c5:	53                   	push   %ebx
c01059c6:	83 ec 2c             	sub    $0x2c,%esp
c01059c9:	8b 75 0c             	mov    0xc(%ebp),%esi
c01059cc:	8b 5d 10             	mov    0x10(%ebp),%ebx
c01059cf:	89 34 24             	mov    %esi,(%esp)
c01059d2:	89 5c 24 04          	mov    %ebx,0x4(%esp)
c01059d6:	e8 95 ff ff ff       	call   c0105970 <__mcmp>
c01059db:	85 c0                	test   %eax,%eax
c01059dd:	0f 84 25 01 00 00    	je     c0105b08 <__mdiff+0x148>
c01059e3:	0f 88 0f 01 00 00    	js     c0105af8 <__mdiff+0x138>
c01059e9:	31 ff                	xor    %edi,%edi
c01059eb:	8b 46 04             	mov    0x4(%esi),%eax
c01059ee:	83 c6 14             	add    $0x14,%esi
c01059f1:	89 44 24 04          	mov    %eax,0x4(%esp)
c01059f5:	8b 45 08             	mov    0x8(%ebp),%eax
c01059f8:	89 04 24             	mov    %eax,(%esp)
c01059fb:	e8 b0 f7 ff ff       	call   c01051b0 <_Balloc>
c0105a00:	8d 4b 14             	lea    0x14(%ebx),%ecx
c0105a03:	89 c2                	mov    %eax,%edx
c0105a05:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c0105a08:	89 78 0c             	mov    %edi,0xc(%eax)
c0105a0b:	8b 46 fc             	mov    -0x4(%esi),%eax
c0105a0e:	89 75 e4             	mov    %esi,-0x1c(%ebp)
c0105a11:	89 45 dc             	mov    %eax,-0x24(%ebp)
c0105a14:	8d 04 86             	lea    (%esi,%eax,4),%eax
c0105a17:	89 45 d8             	mov    %eax,-0x28(%ebp)
c0105a1a:	8b 43 10             	mov    0x10(%ebx),%eax
c0105a1d:	31 db                	xor    %ebx,%ebx
c0105a1f:	8d 04 81             	lea    (%ecx,%eax,4),%eax
c0105a22:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0105a25:	89 d0                	mov    %edx,%eax
c0105a27:	83 c0 14             	add    $0x14,%eax
c0105a2a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0105a30:	8b 75 e4             	mov    -0x1c(%ebp),%esi
c0105a33:	83 c0 04             	add    $0x4,%eax
c0105a36:	83 c1 04             	add    $0x4,%ecx
c0105a39:	83 45 e4 04          	addl   $0x4,-0x1c(%ebp)
c0105a3d:	8b 3e                	mov    (%esi),%edi
c0105a3f:	8b 71 fc             	mov    -0x4(%ecx),%esi
c0105a42:	0f b7 d7             	movzwl %di,%edx
c0105a45:	01 da                	add    %ebx,%edx
c0105a47:	0f b7 de             	movzwl %si,%ebx
c0105a4a:	29 da                	sub    %ebx,%edx
c0105a4c:	c1 ef 10             	shr    $0x10,%edi
c0105a4f:	89 d3                	mov    %edx,%ebx
c0105a51:	c1 ee 10             	shr    $0x10,%esi
c0105a54:	0f b7 d2             	movzwl %dx,%edx
c0105a57:	c1 fb 10             	sar    $0x10,%ebx
c0105a5a:	29 f7                	sub    %esi,%edi
c0105a5c:	01 df                	add    %ebx,%edi
c0105a5e:	89 fb                	mov    %edi,%ebx
c0105a60:	c1 e7 10             	shl    $0x10,%edi
c0105a63:	09 d7                	or     %edx,%edi
c0105a65:	c1 fb 10             	sar    $0x10,%ebx
c0105a68:	39 4d e0             	cmp    %ecx,-0x20(%ebp)
c0105a6b:	89 78 fc             	mov    %edi,-0x4(%eax)
c0105a6e:	77 c0                	ja     c0105a30 <__mdiff+0x70>
c0105a70:	8b 75 e4             	mov    -0x1c(%ebp),%esi
c0105a73:	8b 4d d8             	mov    -0x28(%ebp),%ecx
c0105a76:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0105a79:	89 75 e0             	mov    %esi,-0x20(%ebp)
c0105a7c:	39 f1                	cmp    %esi,%ecx
c0105a7e:	76 3f                	jbe    c0105abf <__mdiff+0xff>
c0105a80:	8b 3e                	mov    (%esi),%edi
c0105a82:	83 c6 04             	add    $0x4,%esi
c0105a85:	83 c0 04             	add    $0x4,%eax
c0105a88:	0f b7 d7             	movzwl %di,%edx
c0105a8b:	01 da                	add    %ebx,%edx
c0105a8d:	89 d3                	mov    %edx,%ebx
c0105a8f:	0f b7 d2             	movzwl %dx,%edx
c0105a92:	c1 fb 10             	sar    $0x10,%ebx
c0105a95:	c1 ef 10             	shr    $0x10,%edi
c0105a98:	01 df                	add    %ebx,%edi
c0105a9a:	89 fb                	mov    %edi,%ebx
c0105a9c:	c1 e7 10             	shl    $0x10,%edi
c0105a9f:	09 d7                	or     %edx,%edi
c0105aa1:	c1 fb 10             	sar    $0x10,%ebx
c0105aa4:	39 f1                	cmp    %esi,%ecx
c0105aa6:	89 78 fc             	mov    %edi,-0x4(%eax)
c0105aa9:	77 d5                	ja     c0105a80 <__mdiff+0xc0>
c0105aab:	8b 45 e0             	mov    -0x20(%ebp),%eax
c0105aae:	8b 4d d8             	mov    -0x28(%ebp),%ecx
c0105ab1:	f7 d0                	not    %eax
c0105ab3:	01 c8                	add    %ecx,%eax
c0105ab5:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c0105ab8:	c1 e8 02             	shr    $0x2,%eax
c0105abb:	8d 44 81 04          	lea    0x4(%ecx,%eax,4),%eax
c0105abf:	85 ff                	test   %edi,%edi
c0105ac1:	75 23                	jne    c0105ae6 <__mdiff+0x126>
c0105ac3:	8b 4d dc             	mov    -0x24(%ebp),%ecx
c0105ac6:	8d 14 8d 00 00 00 00 	lea    0x0(,%ecx,4),%edx
c0105acd:	29 d0                	sub    %edx,%eax
c0105acf:	89 ca                	mov    %ecx,%edx
c0105ad1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0105ad8:	83 ea 01             	sub    $0x1,%edx
c0105adb:	8b 4c 90 fc          	mov    -0x4(%eax,%edx,4),%ecx
c0105adf:	85 c9                	test   %ecx,%ecx
c0105ae1:	74 f5                	je     c0105ad8 <__mdiff+0x118>
c0105ae3:	89 55 dc             	mov    %edx,-0x24(%ebp)
c0105ae6:	8b 45 d4             	mov    -0x2c(%ebp),%eax
c0105ae9:	8b 4d dc             	mov    -0x24(%ebp),%ecx
c0105aec:	89 48 10             	mov    %ecx,0x10(%eax)
c0105aef:	83 c4 2c             	add    $0x2c,%esp
c0105af2:	5b                   	pop    %ebx
c0105af3:	5e                   	pop    %esi
c0105af4:	5f                   	pop    %edi
c0105af5:	5d                   	pop    %ebp
c0105af6:	c3                   	ret    
c0105af7:	90                   	nop
c0105af8:	89 f0                	mov    %esi,%eax
c0105afa:	bf 01 00 00 00       	mov    $0x1,%edi
c0105aff:	89 de                	mov    %ebx,%esi
c0105b01:	89 c3                	mov    %eax,%ebx
c0105b03:	e9 e3 fe ff ff       	jmp    c01059eb <__mdiff+0x2b>
c0105b08:	8b 45 08             	mov    0x8(%ebp),%eax
c0105b0b:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c0105b12:	00 
c0105b13:	89 04 24             	mov    %eax,(%esp)
c0105b16:	e8 95 f6 ff ff       	call   c01051b0 <_Balloc>
c0105b1b:	c7 40 10 01 00 00 00 	movl   $0x1,0x10(%eax)
c0105b22:	c7 40 14 00 00 00 00 	movl   $0x0,0x14(%eax)
c0105b29:	83 c4 2c             	add    $0x2c,%esp
c0105b2c:	5b                   	pop    %ebx
c0105b2d:	5e                   	pop    %esi
c0105b2e:	5f                   	pop    %edi
c0105b2f:	5d                   	pop    %ebp
c0105b30:	c3                   	ret    
c0105b31:	eb 0d                	jmp    c0105b40 <__ulp>
c0105b33:	90                   	nop
c0105b34:	90                   	nop
c0105b35:	90                   	nop
c0105b36:	90                   	nop
c0105b37:	90                   	nop
c0105b38:	90                   	nop
c0105b39:	90                   	nop
c0105b3a:	90                   	nop
c0105b3b:	90                   	nop
c0105b3c:	90                   	nop
c0105b3d:	90                   	nop
c0105b3e:	90                   	nop
c0105b3f:	90                   	nop

c0105b40 <__ulp>:
c0105b40:	55                   	push   %ebp
c0105b41:	89 e5                	mov    %esp,%ebp
c0105b43:	83 ec 08             	sub    $0x8,%esp
c0105b46:	dd 45 08             	fldl   0x8(%ebp)
c0105b49:	dd 5d f8             	fstpl  -0x8(%ebp)
c0105b4c:	8b 4d fc             	mov    -0x4(%ebp),%ecx
c0105b4f:	81 e1 00 00 f0 7f    	and    $0x7ff00000,%ecx
c0105b55:	81 e9 00 00 40 03    	sub    $0x3400000,%ecx
c0105b5b:	85 c9                	test   %ecx,%ecx
c0105b5d:	7e 11                	jle    c0105b70 <__ulp+0x30>
c0105b5f:	89 4d fc             	mov    %ecx,-0x4(%ebp)
c0105b62:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
c0105b69:	dd 45 f8             	fldl   -0x8(%ebp)
c0105b6c:	c9                   	leave  
c0105b6d:	c3                   	ret    
c0105b6e:	66 90                	xchg   %ax,%ax
c0105b70:	f7 d9                	neg    %ecx
c0105b72:	c1 f9 14             	sar    $0x14,%ecx
c0105b75:	83 f9 13             	cmp    $0x13,%ecx
c0105b78:	7e 26                	jle    c0105ba0 <__ulp+0x60>
c0105b7a:	83 f9 32             	cmp    $0x32,%ecx
c0105b7d:	b8 01 00 00 00       	mov    $0x1,%eax
c0105b82:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
c0105b89:	7f 0b                	jg     c0105b96 <__ulp+0x56>
c0105b8b:	ba 33 00 00 00       	mov    $0x33,%edx
c0105b90:	29 ca                	sub    %ecx,%edx
c0105b92:	89 d1                	mov    %edx,%ecx
c0105b94:	d3 e0                	shl    %cl,%eax
c0105b96:	89 45 f8             	mov    %eax,-0x8(%ebp)
c0105b99:	dd 45 f8             	fldl   -0x8(%ebp)
c0105b9c:	c9                   	leave  
c0105b9d:	c3                   	ret    
c0105b9e:	66 90                	xchg   %ax,%ax
c0105ba0:	b8 00 00 08 00       	mov    $0x80000,%eax
c0105ba5:	d3 f8                	sar    %cl,%eax
c0105ba7:	89 45 fc             	mov    %eax,-0x4(%ebp)
c0105baa:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
c0105bb1:	dd 45 f8             	fldl   -0x8(%ebp)
c0105bb4:	c9                   	leave  
c0105bb5:	c3                   	ret    
c0105bb6:	8d 76 00             	lea    0x0(%esi),%esi
c0105bb9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0105bc0 <__b2d>:
c0105bc0:	55                   	push   %ebp
c0105bc1:	89 e5                	mov    %esp,%ebp
c0105bc3:	57                   	push   %edi
c0105bc4:	56                   	push   %esi
c0105bc5:	53                   	push   %ebx
c0105bc6:	83 ec 18             	sub    $0x18,%esp
c0105bc9:	8b 45 08             	mov    0x8(%ebp),%eax
c0105bcc:	8d 78 14             	lea    0x14(%eax),%edi
c0105bcf:	8b 40 10             	mov    0x10(%eax),%eax
c0105bd2:	8d 1c 87             	lea    (%edi,%eax,4),%ebx
c0105bd5:	8b 73 fc             	mov    -0x4(%ebx),%esi
c0105bd8:	8d 43 fc             	lea    -0x4(%ebx),%eax
c0105bdb:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0105bde:	89 34 24             	mov    %esi,(%esp)
c0105be1:	e8 6a f8 ff ff       	call   c0105450 <__hi0bits>
c0105be6:	8b 4d 0c             	mov    0xc(%ebp),%ecx
c0105be9:	ba 20 00 00 00       	mov    $0x20,%edx
c0105bee:	29 c2                	sub    %eax,%edx
c0105bf0:	83 f8 0a             	cmp    $0xa,%eax
c0105bf3:	89 11                	mov    %edx,(%ecx)
c0105bf5:	7f 41                	jg     c0105c38 <__b2d+0x78>
c0105bf7:	b9 0b 00 00 00       	mov    $0xb,%ecx
c0105bfc:	89 f2                	mov    %esi,%edx
c0105bfe:	29 c1                	sub    %eax,%ecx
c0105c00:	d3 ea                	shr    %cl,%edx
c0105c02:	81 ca 00 00 f0 3f    	or     $0x3ff00000,%edx
c0105c08:	89 55 ec             	mov    %edx,-0x14(%ebp)
c0105c0b:	31 d2                	xor    %edx,%edx
c0105c0d:	3b 7d e4             	cmp    -0x1c(%ebp),%edi
c0105c10:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
c0105c17:	73 05                	jae    c0105c1e <__b2d+0x5e>
c0105c19:	8b 53 f8             	mov    -0x8(%ebx),%edx
c0105c1c:	d3 ea                	shr    %cl,%edx
c0105c1e:	8d 48 15             	lea    0x15(%eax),%ecx
c0105c21:	d3 e6                	shl    %cl,%esi
c0105c23:	09 f2                	or     %esi,%edx
c0105c25:	89 55 e8             	mov    %edx,-0x18(%ebp)
c0105c28:	dd 45 e8             	fldl   -0x18(%ebp)
c0105c2b:	83 c4 18             	add    $0x18,%esp
c0105c2e:	5b                   	pop    %ebx
c0105c2f:	5e                   	pop    %esi
c0105c30:	5f                   	pop    %edi
c0105c31:	5d                   	pop    %ebp
c0105c32:	c3                   	ret    
c0105c33:	90                   	nop
c0105c34:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0105c38:	31 d2                	xor    %edx,%edx
c0105c3a:	3b 7d e4             	cmp    -0x1c(%ebp),%edi
c0105c3d:	73 09                	jae    c0105c48 <__b2d+0x88>
c0105c3f:	8b 53 f8             	mov    -0x8(%ebx),%edx
c0105c42:	8d 4b f8             	lea    -0x8(%ebx),%ecx
c0105c45:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c0105c48:	89 c3                	mov    %eax,%ebx
c0105c4a:	83 eb 0b             	sub    $0xb,%ebx
c0105c4d:	89 5d e0             	mov    %ebx,-0x20(%ebp)
c0105c50:	74 4e                	je     c0105ca0 <__b2d+0xe0>
c0105c52:	0f b6 4d e0          	movzbl -0x20(%ebp),%ecx
c0105c56:	bb 2b 00 00 00       	mov    $0x2b,%ebx
c0105c5b:	29 c3                	sub    %eax,%ebx
c0105c5d:	89 d0                	mov    %edx,%eax
c0105c5f:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
c0105c66:	d3 e6                	shl    %cl,%esi
c0105c68:	89 d9                	mov    %ebx,%ecx
c0105c6a:	d3 e8                	shr    %cl,%eax
c0105c6c:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c0105c6f:	81 ce 00 00 f0 3f    	or     $0x3ff00000,%esi
c0105c75:	09 c6                	or     %eax,%esi
c0105c77:	31 c0                	xor    %eax,%eax
c0105c79:	89 75 ec             	mov    %esi,-0x14(%ebp)
c0105c7c:	39 f9                	cmp    %edi,%ecx
c0105c7e:	76 07                	jbe    c0105c87 <__b2d+0xc7>
c0105c80:	8b 41 fc             	mov    -0x4(%ecx),%eax
c0105c83:	89 d9                	mov    %ebx,%ecx
c0105c85:	d3 e8                	shr    %cl,%eax
c0105c87:	0f b6 4d e0          	movzbl -0x20(%ebp),%ecx
c0105c8b:	d3 e2                	shl    %cl,%edx
c0105c8d:	09 d0                	or     %edx,%eax
c0105c8f:	89 45 e8             	mov    %eax,-0x18(%ebp)
c0105c92:	dd 45 e8             	fldl   -0x18(%ebp)
c0105c95:	83 c4 18             	add    $0x18,%esp
c0105c98:	5b                   	pop    %ebx
c0105c99:	5e                   	pop    %esi
c0105c9a:	5f                   	pop    %edi
c0105c9b:	5d                   	pop    %ebp
c0105c9c:	c3                   	ret    
c0105c9d:	8d 76 00             	lea    0x0(%esi),%esi
c0105ca0:	81 ce 00 00 f0 3f    	or     $0x3ff00000,%esi
c0105ca6:	89 75 ec             	mov    %esi,-0x14(%ebp)
c0105ca9:	89 55 e8             	mov    %edx,-0x18(%ebp)
c0105cac:	dd 45 e8             	fldl   -0x18(%ebp)
c0105caf:	83 c4 18             	add    $0x18,%esp
c0105cb2:	5b                   	pop    %ebx
c0105cb3:	5e                   	pop    %esi
c0105cb4:	5f                   	pop    %edi
c0105cb5:	5d                   	pop    %ebp
c0105cb6:	c3                   	ret    
c0105cb7:	89 f6                	mov    %esi,%esi
c0105cb9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0105cc0 <__d2b>:
c0105cc0:	55                   	push   %ebp
c0105cc1:	89 e5                	mov    %esp,%ebp
c0105cc3:	57                   	push   %edi
c0105cc4:	56                   	push   %esi
c0105cc5:	53                   	push   %ebx
c0105cc6:	83 ec 2c             	sub    $0x2c,%esp
c0105cc9:	8b 45 08             	mov    0x8(%ebp),%eax
c0105ccc:	dd 45 0c             	fldl   0xc(%ebp)
c0105ccf:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c0105cd6:	00 
c0105cd7:	dd 5d d0             	fstpl  -0x30(%ebp)
c0105cda:	89 04 24             	mov    %eax,(%esp)
c0105cdd:	e8 ce f4 ff ff       	call   c01051b0 <_Balloc>
c0105ce2:	8b 5d d4             	mov    -0x2c(%ebp),%ebx
c0105ce5:	89 c6                	mov    %eax,%esi
c0105ce7:	89 d8                	mov    %ebx,%eax
c0105ce9:	81 e3 ff ff ff 7f    	and    $0x7fffffff,%ebx
c0105cef:	25 ff ff 0f 00       	and    $0xfffff,%eax
c0105cf4:	c1 eb 14             	shr    $0x14,%ebx
c0105cf7:	85 db                	test   %ebx,%ebx
c0105cf9:	74 05                	je     c0105d00 <__d2b+0x40>
c0105cfb:	0d 00 00 10 00       	or     $0x100000,%eax
c0105d00:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0105d03:	8b 45 d0             	mov    -0x30(%ebp),%eax
c0105d06:	85 c0                	test   %eax,%eax
c0105d08:	74 56                	je     c0105d60 <__d2b+0xa0>
c0105d0a:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0105d0d:	8d 45 e0             	lea    -0x20(%ebp),%eax
c0105d10:	89 04 24             	mov    %eax,(%esp)
c0105d13:	e8 98 f7 ff ff       	call   c01054b0 <__lo0bits>
c0105d18:	85 c0                	test   %eax,%eax
c0105d1a:	0f 85 90 00 00 00    	jne    c0105db0 <__d2b+0xf0>
c0105d20:	8b 55 e0             	mov    -0x20(%ebp),%edx
c0105d23:	89 56 14             	mov    %edx,0x14(%esi)
c0105d26:	8b 55 e4             	mov    -0x1c(%ebp),%edx
c0105d29:	83 fa 01             	cmp    $0x1,%edx
c0105d2c:	19 ff                	sbb    %edi,%edi
c0105d2e:	83 c7 02             	add    $0x2,%edi
c0105d31:	85 db                	test   %ebx,%ebx
c0105d33:	89 56 18             	mov    %edx,0x18(%esi)
c0105d36:	89 7e 10             	mov    %edi,0x10(%esi)
c0105d39:	74 49                	je     c0105d84 <__d2b+0xc4>
c0105d3b:	8b 4d 14             	mov    0x14(%ebp),%ecx
c0105d3e:	8d 94 18 cd fb ff ff 	lea    -0x433(%eax,%ebx,1),%edx
c0105d45:	89 11                	mov    %edx,(%ecx)
c0105d47:	ba 35 00 00 00       	mov    $0x35,%edx
c0105d4c:	29 c2                	sub    %eax,%edx
c0105d4e:	8b 45 18             	mov    0x18(%ebp),%eax
c0105d51:	89 10                	mov    %edx,(%eax)
c0105d53:	83 c4 2c             	add    $0x2c,%esp
c0105d56:	89 f0                	mov    %esi,%eax
c0105d58:	5b                   	pop    %ebx
c0105d59:	5e                   	pop    %esi
c0105d5a:	5f                   	pop    %edi
c0105d5b:	5d                   	pop    %ebp
c0105d5c:	c3                   	ret    
c0105d5d:	8d 76 00             	lea    0x0(%esi),%esi
c0105d60:	8d 45 e4             	lea    -0x1c(%ebp),%eax
c0105d63:	bf 01 00 00 00       	mov    $0x1,%edi
c0105d68:	89 04 24             	mov    %eax,(%esp)
c0105d6b:	e8 40 f7 ff ff       	call   c01054b0 <__lo0bits>
c0105d70:	8b 55 e4             	mov    -0x1c(%ebp),%edx
c0105d73:	c7 46 10 01 00 00 00 	movl   $0x1,0x10(%esi)
c0105d7a:	89 56 14             	mov    %edx,0x14(%esi)
c0105d7d:	83 c0 20             	add    $0x20,%eax
c0105d80:	85 db                	test   %ebx,%ebx
c0105d82:	75 b7                	jne    c0105d3b <__d2b+0x7b>
c0105d84:	8b 4d 14             	mov    0x14(%ebp),%ecx
c0105d87:	2d 32 04 00 00       	sub    $0x432,%eax
c0105d8c:	89 01                	mov    %eax,(%ecx)
c0105d8e:	8b 44 be 10          	mov    0x10(%esi,%edi,4),%eax
c0105d92:	c1 e7 05             	shl    $0x5,%edi
c0105d95:	89 04 24             	mov    %eax,(%esp)
c0105d98:	e8 b3 f6 ff ff       	call   c0105450 <__hi0bits>
c0105d9d:	29 c7                	sub    %eax,%edi
c0105d9f:	8b 45 18             	mov    0x18(%ebp),%eax
c0105da2:	89 38                	mov    %edi,(%eax)
c0105da4:	83 c4 2c             	add    $0x2c,%esp
c0105da7:	89 f0                	mov    %esi,%eax
c0105da9:	5b                   	pop    %ebx
c0105daa:	5e                   	pop    %esi
c0105dab:	5f                   	pop    %edi
c0105dac:	5d                   	pop    %ebp
c0105dad:	c3                   	ret    
c0105dae:	66 90                	xchg   %ax,%ax
c0105db0:	8b 55 e4             	mov    -0x1c(%ebp),%edx
c0105db3:	b9 20 00 00 00       	mov    $0x20,%ecx
c0105db8:	29 c1                	sub    %eax,%ecx
c0105dba:	89 d7                	mov    %edx,%edi
c0105dbc:	d3 e7                	shl    %cl,%edi
c0105dbe:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0105dc1:	09 f9                	or     %edi,%ecx
c0105dc3:	89 4e 14             	mov    %ecx,0x14(%esi)
c0105dc6:	89 c1                	mov    %eax,%ecx
c0105dc8:	d3 ea                	shr    %cl,%edx
c0105dca:	89 55 e4             	mov    %edx,-0x1c(%ebp)
c0105dcd:	e9 57 ff ff ff       	jmp    c0105d29 <__d2b+0x69>
c0105dd2:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0105dd9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0105de0 <__ratio>:
c0105de0:	55                   	push   %ebp
c0105de1:	89 e5                	mov    %esp,%ebp
c0105de3:	56                   	push   %esi
c0105de4:	53                   	push   %ebx
c0105de5:	83 ec 30             	sub    $0x30,%esp
c0105de8:	8b 75 08             	mov    0x8(%ebp),%esi
c0105deb:	8d 45 f0             	lea    -0x10(%ebp),%eax
c0105dee:	8b 5d 0c             	mov    0xc(%ebp),%ebx
c0105df1:	89 44 24 04          	mov    %eax,0x4(%esp)
c0105df5:	89 34 24             	mov    %esi,(%esp)
c0105df8:	e8 c3 fd ff ff       	call   c0105bc0 <__b2d>
c0105dfd:	8d 45 f4             	lea    -0xc(%ebp),%eax
c0105e00:	89 44 24 04          	mov    %eax,0x4(%esp)
c0105e04:	89 1c 24             	mov    %ebx,(%esp)
c0105e07:	dd 55 e0             	fstl   -0x20(%ebp)
c0105e0a:	dd 5d d8             	fstpl  -0x28(%ebp)
c0105e0d:	e8 ae fd ff ff       	call   c0105bc0 <__b2d>
c0105e12:	8b 46 10             	mov    0x10(%esi),%eax
c0105e15:	2b 43 10             	sub    0x10(%ebx),%eax
c0105e18:	8b 55 f0             	mov    -0x10(%ebp),%edx
c0105e1b:	2b 55 f4             	sub    -0xc(%ebp),%edx
c0105e1e:	c1 e0 05             	shl    $0x5,%eax
c0105e21:	01 d0                	add    %edx,%eax
c0105e23:	dd 55 d0             	fstl   -0x30(%ebp)
c0105e26:	85 c0                	test   %eax,%eax
c0105e28:	dd 45 d8             	fldl   -0x28(%ebp)
c0105e2b:	7e 1b                	jle    c0105e48 <__ratio+0x68>
c0105e2d:	dd d8                	fstp   %st(0)
c0105e2f:	c1 e0 14             	shl    $0x14,%eax
c0105e32:	01 45 e4             	add    %eax,-0x1c(%ebp)
c0105e35:	dd 45 e0             	fldl   -0x20(%ebp)
c0105e38:	83 c4 30             	add    $0x30,%esp
c0105e3b:	5b                   	pop    %ebx
c0105e3c:	de f1                	fdivp  %st,%st(1)
c0105e3e:	5e                   	pop    %esi
c0105e3f:	5d                   	pop    %ebp
c0105e40:	c3                   	ret    
c0105e41:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0105e48:	dd d9                	fstp   %st(1)
c0105e4a:	c1 e0 14             	shl    $0x14,%eax
c0105e4d:	29 45 d4             	sub    %eax,-0x2c(%ebp)
c0105e50:	dd 45 d0             	fldl   -0x30(%ebp)
c0105e53:	83 c4 30             	add    $0x30,%esp
c0105e56:	5b                   	pop    %ebx
c0105e57:	de f9                	fdivrp %st,%st(1)
c0105e59:	5e                   	pop    %esi
c0105e5a:	5d                   	pop    %ebp
c0105e5b:	c3                   	ret    
c0105e5c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

c0105e60 <_mprec_log10>:
c0105e60:	55                   	push   %ebp
c0105e61:	89 e5                	mov    %esp,%ebp
c0105e63:	8b 45 08             	mov    0x8(%ebp),%eax
c0105e66:	83 f8 17             	cmp    $0x17,%eax
c0105e69:	7e 1d                	jle    c0105e88 <_mprec_log10+0x28>
c0105e6b:	d9 e8                	fld1   
c0105e6d:	d9 05 44 82 10 c0    	flds   0xc0108244
c0105e73:	90                   	nop
c0105e74:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0105e78:	83 e8 01             	sub    $0x1,%eax
c0105e7b:	dc c9                	fmul   %st,%st(1)
c0105e7d:	75 f9                	jne    c0105e78 <_mprec_log10+0x18>
c0105e7f:	dd d8                	fstp   %st(0)
c0105e81:	5d                   	pop    %ebp
c0105e82:	c3                   	ret    
c0105e83:	90                   	nop
c0105e84:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0105e88:	dd 04 c5 20 83 10 c0 	fldl   -0x3fef7ce0(,%eax,8)
c0105e8f:	5d                   	pop    %ebp
c0105e90:	c3                   	ret    
c0105e91:	eb 0d                	jmp    c0105ea0 <__copybits>
c0105e93:	90                   	nop
c0105e94:	90                   	nop
c0105e95:	90                   	nop
c0105e96:	90                   	nop
c0105e97:	90                   	nop
c0105e98:	90                   	nop
c0105e99:	90                   	nop
c0105e9a:	90                   	nop
c0105e9b:	90                   	nop
c0105e9c:	90                   	nop
c0105e9d:	90                   	nop
c0105e9e:	90                   	nop
c0105e9f:	90                   	nop

c0105ea0 <__copybits>:
c0105ea0:	55                   	push   %ebp
c0105ea1:	89 e5                	mov    %esp,%ebp
c0105ea3:	57                   	push   %edi
c0105ea4:	8b 7d 10             	mov    0x10(%ebp),%edi
c0105ea7:	56                   	push   %esi
c0105ea8:	8b 75 0c             	mov    0xc(%ebp),%esi
c0105eab:	8b 45 08             	mov    0x8(%ebp),%eax
c0105eae:	53                   	push   %ebx
c0105eaf:	8b 4f 10             	mov    0x10(%edi),%ecx
c0105eb2:	8d 56 ff             	lea    -0x1(%esi),%edx
c0105eb5:	c1 fa 05             	sar    $0x5,%edx
c0105eb8:	8d 74 90 04          	lea    0x4(%eax,%edx,4),%esi
c0105ebc:	8d 57 14             	lea    0x14(%edi),%edx
c0105ebf:	8d 1c 8a             	lea    (%edx,%ecx,4),%ebx
c0105ec2:	39 da                	cmp    %ebx,%edx
c0105ec4:	73 34                	jae    c0105efa <__copybits+0x5a>
c0105ec6:	89 c1                	mov    %eax,%ecx
c0105ec8:	83 c2 04             	add    $0x4,%edx
c0105ecb:	8b 42 fc             	mov    -0x4(%edx),%eax
c0105ece:	83 c1 04             	add    $0x4,%ecx
c0105ed1:	39 d3                	cmp    %edx,%ebx
c0105ed3:	89 41 fc             	mov    %eax,-0x4(%ecx)
c0105ed6:	77 f0                	ja     c0105ec8 <__copybits+0x28>
c0105ed8:	8b 45 08             	mov    0x8(%ebp),%eax
c0105edb:	29 fb                	sub    %edi,%ebx
c0105edd:	8d 53 eb             	lea    -0x15(%ebx),%edx
c0105ee0:	c1 ea 02             	shr    $0x2,%edx
c0105ee3:	8d 44 90 04          	lea    0x4(%eax,%edx,4),%eax
c0105ee7:	39 c6                	cmp    %eax,%esi
c0105ee9:	76 13                	jbe    c0105efe <__copybits+0x5e>
c0105eeb:	90                   	nop
c0105eec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0105ef0:	83 c0 04             	add    $0x4,%eax
c0105ef3:	c7 40 fc 00 00 00 00 	movl   $0x0,-0x4(%eax)
c0105efa:	39 c6                	cmp    %eax,%esi
c0105efc:	77 f2                	ja     c0105ef0 <__copybits+0x50>
c0105efe:	5b                   	pop    %ebx
c0105eff:	5e                   	pop    %esi
c0105f00:	5f                   	pop    %edi
c0105f01:	5d                   	pop    %ebp
c0105f02:	c3                   	ret    
c0105f03:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0105f09:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0105f10 <__any_on>:
c0105f10:	55                   	push   %ebp
c0105f11:	89 e5                	mov    %esp,%ebp
c0105f13:	8b 45 08             	mov    0x8(%ebp),%eax
c0105f16:	57                   	push   %edi
c0105f17:	56                   	push   %esi
c0105f18:	53                   	push   %ebx
c0105f19:	8b 5d 0c             	mov    0xc(%ebp),%ebx
c0105f1c:	8d 50 14             	lea    0x14(%eax),%edx
c0105f1f:	8b 40 10             	mov    0x10(%eax),%eax
c0105f22:	c1 fb 05             	sar    $0x5,%ebx
c0105f25:	39 d8                	cmp    %ebx,%eax
c0105f27:	7d 2f                	jge    c0105f58 <__any_on+0x48>
c0105f29:	8d 1c 82             	lea    (%edx,%eax,4),%ebx
c0105f2c:	39 da                	cmp    %ebx,%edx
c0105f2e:	73 1d                	jae    c0105f4d <__any_on+0x3d>
c0105f30:	8d 43 fc             	lea    -0x4(%ebx),%eax
c0105f33:	8b 5b fc             	mov    -0x4(%ebx),%ebx
c0105f36:	85 db                	test   %ebx,%ebx
c0105f38:	74 0f                	je     c0105f49 <__any_on+0x39>
c0105f3a:	eb 44                	jmp    c0105f80 <__any_on+0x70>
c0105f3c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0105f40:	83 e8 04             	sub    $0x4,%eax
c0105f43:	8b 08                	mov    (%eax),%ecx
c0105f45:	85 c9                	test   %ecx,%ecx
c0105f47:	75 37                	jne    c0105f80 <__any_on+0x70>
c0105f49:	39 c2                	cmp    %eax,%edx
c0105f4b:	72 f3                	jb     c0105f40 <__any_on+0x30>
c0105f4d:	31 c0                	xor    %eax,%eax
c0105f4f:	5b                   	pop    %ebx
c0105f50:	5e                   	pop    %esi
c0105f51:	5f                   	pop    %edi
c0105f52:	5d                   	pop    %ebp
c0105f53:	c3                   	ret    
c0105f54:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0105f58:	7e 1e                	jle    c0105f78 <__any_on+0x68>
c0105f5a:	8b 4d 0c             	mov    0xc(%ebp),%ecx
c0105f5d:	8d 1c 9a             	lea    (%edx,%ebx,4),%ebx
c0105f60:	83 e1 1f             	and    $0x1f,%ecx
c0105f63:	74 c7                	je     c0105f2c <__any_on+0x1c>
c0105f65:	8b 3b                	mov    (%ebx),%edi
c0105f67:	b8 01 00 00 00       	mov    $0x1,%eax
c0105f6c:	89 fe                	mov    %edi,%esi
c0105f6e:	d3 ee                	shr    %cl,%esi
c0105f70:	d3 e6                	shl    %cl,%esi
c0105f72:	39 fe                	cmp    %edi,%esi
c0105f74:	75 d9                	jne    c0105f4f <__any_on+0x3f>
c0105f76:	eb b4                	jmp    c0105f2c <__any_on+0x1c>
c0105f78:	8d 1c 9a             	lea    (%edx,%ebx,4),%ebx
c0105f7b:	eb af                	jmp    c0105f2c <__any_on+0x1c>
c0105f7d:	8d 76 00             	lea    0x0(%esi),%esi
c0105f80:	5b                   	pop    %ebx
c0105f81:	b8 01 00 00 00       	mov    $0x1,%eax
c0105f86:	5e                   	pop    %esi
c0105f87:	5f                   	pop    %edi
c0105f88:	5d                   	pop    %ebp
c0105f89:	c3                   	ret    
c0105f8a:	66 90                	xchg   %ax,%ax
c0105f8c:	66 90                	xchg   %ax,%ax
c0105f8e:	66 90                	xchg   %ax,%ax

c0105f90 <_sbrk_r>:
c0105f90:	55                   	push   %ebp
c0105f91:	89 e5                	mov    %esp,%ebp
c0105f93:	83 ec 18             	sub    $0x18,%esp
c0105f96:	8b 45 0c             	mov    0xc(%ebp),%eax
c0105f99:	c7 05 54 1f 16 c0 00 	movl   $0x0,0xc0161f54
c0105fa0:	00 00 00 
c0105fa3:	89 04 24             	mov    %eax,(%esp)
c0105fa6:	e8 65 b3 ff ff       	call   c0101310 <sbrk>
c0105fab:	83 f8 ff             	cmp    $0xffffffff,%eax
c0105fae:	74 08                	je     c0105fb8 <_sbrk_r+0x28>
c0105fb0:	c9                   	leave  
c0105fb1:	c3                   	ret    
c0105fb2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0105fb8:	8b 15 54 1f 16 c0    	mov    0xc0161f54,%edx
c0105fbe:	85 d2                	test   %edx,%edx
c0105fc0:	74 ee                	je     c0105fb0 <_sbrk_r+0x20>
c0105fc2:	8b 4d 08             	mov    0x8(%ebp),%ecx
c0105fc5:	89 11                	mov    %edx,(%ecx)
c0105fc7:	c9                   	leave  
c0105fc8:	c3                   	ret    
c0105fc9:	66 90                	xchg   %ax,%ax
c0105fcb:	66 90                	xchg   %ax,%ax
c0105fcd:	66 90                	xchg   %ax,%ax
c0105fcf:	90                   	nop

c0105fd0 <__fpclassifyd>:
c0105fd0:	55                   	push   %ebp
c0105fd1:	b8 02 00 00 00       	mov    $0x2,%eax
c0105fd6:	89 e5                	mov    %esp,%ebp
c0105fd8:	53                   	push   %ebx
c0105fd9:	83 ec 0c             	sub    $0xc,%esp
c0105fdc:	dd 45 08             	fldl   0x8(%ebp)
c0105fdf:	dd 5d f0             	fstpl  -0x10(%ebp)
c0105fe2:	8b 55 f0             	mov    -0x10(%ebp),%edx
c0105fe5:	8b 4d f4             	mov    -0xc(%ebp),%ecx
c0105fe8:	89 d3                	mov    %edx,%ebx
c0105fea:	09 cb                	or     %ecx,%ebx
c0105fec:	75 0a                	jne    c0105ff8 <__fpclassifyd+0x28>
c0105fee:	83 c4 0c             	add    $0xc,%esp
c0105ff1:	5b                   	pop    %ebx
c0105ff2:	5d                   	pop    %ebp
c0105ff3:	c3                   	ret    
c0105ff4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0105ff8:	85 d2                	test   %edx,%edx
c0105ffa:	0f 94 c2             	sete   %dl
c0105ffd:	75 08                	jne    c0106007 <__fpclassifyd+0x37>
c0105fff:	81 f9 00 00 00 80    	cmp    $0x80000000,%ecx
c0106005:	74 e7                	je     c0105fee <__fpclassifyd+0x1e>
c0106007:	81 e1 ff ff ff 7f    	and    $0x7fffffff,%ecx
c010600d:	b8 04 00 00 00       	mov    $0x4,%eax
c0106012:	8d 99 00 00 f0 ff    	lea    -0x100000(%ecx),%ebx
c0106018:	81 fb ff ff df 7f    	cmp    $0x7fdfffff,%ebx
c010601e:	76 ce                	jbe    c0105fee <__fpclassifyd+0x1e>
c0106020:	81 f9 ff ff 0f 00    	cmp    $0xfffff,%ecx
c0106026:	b0 03                	mov    $0x3,%al
c0106028:	76 c4                	jbe    c0105fee <__fpclassifyd+0x1e>
c010602a:	31 c0                	xor    %eax,%eax
c010602c:	81 f9 00 00 f0 7f    	cmp    $0x7ff00000,%ecx
c0106032:	0f 94 c0             	sete   %al
c0106035:	21 d0                	and    %edx,%eax
c0106037:	eb b5                	jmp    c0105fee <__fpclassifyd+0x1e>
c0106039:	66 90                	xchg   %ax,%ax
c010603b:	66 90                	xchg   %ax,%ax
c010603d:	66 90                	xchg   %ax,%ax
c010603f:	90                   	nop

c0106040 <strcmp>:
c0106040:	55                   	push   %ebp
c0106041:	89 e5                	mov    %esp,%ebp
c0106043:	8b 45 08             	mov    0x8(%ebp),%eax
c0106046:	8b 55 0c             	mov    0xc(%ebp),%edx
c0106049:	53                   	push   %ebx
c010604a:	89 c1                	mov    %eax,%ecx
c010604c:	09 d1                	or     %edx,%ecx
c010604e:	83 e1 03             	and    $0x3,%ecx
c0106051:	75 17                	jne    c010606a <strcmp+0x2a>
c0106053:	8b 08                	mov    (%eax),%ecx
c0106055:	3b 0a                	cmp    (%edx),%ecx
c0106057:	74 33                	je     c010608c <strcmp+0x4c>
c0106059:	eb 0f                	jmp    c010606a <strcmp+0x2a>
c010605b:	90                   	nop
c010605c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0106060:	3a 0a                	cmp    (%edx),%cl
c0106062:	75 0d                	jne    c0106071 <strcmp+0x31>
c0106064:	83 c0 01             	add    $0x1,%eax
c0106067:	83 c2 01             	add    $0x1,%edx
c010606a:	0f b6 08             	movzbl (%eax),%ecx
c010606d:	84 c9                	test   %cl,%cl
c010606f:	75 ef                	jne    c0106060 <strcmp+0x20>
c0106071:	0f b6 00             	movzbl (%eax),%eax
c0106074:	0f b6 12             	movzbl (%edx),%edx
c0106077:	5b                   	pop    %ebx
c0106078:	5d                   	pop    %ebp
c0106079:	29 d0                	sub    %edx,%eax
c010607b:	c3                   	ret    
c010607c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0106080:	83 c0 04             	add    $0x4,%eax
c0106083:	83 c2 04             	add    $0x4,%edx
c0106086:	8b 08                	mov    (%eax),%ecx
c0106088:	3b 0a                	cmp    (%edx),%ecx
c010608a:	75 de                	jne    c010606a <strcmp+0x2a>
c010608c:	8d 99 ff fe fe fe    	lea    -0x1010101(%ecx),%ebx
c0106092:	f7 d1                	not    %ecx
c0106094:	21 cb                	and    %ecx,%ebx
c0106096:	81 e3 80 80 80 80    	and    $0x80808080,%ebx
c010609c:	74 e2                	je     c0106080 <strcmp+0x40>
c010609e:	31 c0                	xor    %eax,%eax
c01060a0:	5b                   	pop    %ebx
c01060a1:	5d                   	pop    %ebp
c01060a2:	c3                   	ret    
c01060a3:	66 90                	xchg   %ax,%ax
c01060a5:	66 90                	xchg   %ax,%ax
c01060a7:	66 90                	xchg   %ax,%ax
c01060a9:	66 90                	xchg   %ax,%ax
c01060ab:	66 90                	xchg   %ax,%ax
c01060ad:	66 90                	xchg   %ax,%ax
c01060af:	90                   	nop

c01060b0 <strlen>:
c01060b0:	55                   	push   %ebp
c01060b1:	89 e5                	mov    %esp,%ebp
c01060b3:	57                   	push   %edi
c01060b4:	8b 55 08             	mov    0x8(%ebp),%edx
c01060b7:	89 d7                	mov    %edx,%edi
c01060b9:	f7 c7 03 00 00 00    	test   $0x3,%edi
c01060bf:	74 25                	je     c01060e6 <L5>
c01060c1:	8a 0f                	mov    (%edi),%cl
c01060c3:	47                   	inc    %edi
c01060c4:	84 c9                	test   %cl,%cl
c01060c6:	74 56                	je     c010611e <L15>
c01060c8:	f7 c7 03 00 00 00    	test   $0x3,%edi
c01060ce:	74 16                	je     c01060e6 <L5>
c01060d0:	8a 0f                	mov    (%edi),%cl
c01060d2:	47                   	inc    %edi
c01060d3:	84 c9                	test   %cl,%cl
c01060d5:	74 47                	je     c010611e <L15>
c01060d7:	f7 c7 03 00 00 00    	test   $0x3,%edi
c01060dd:	74 07                	je     c01060e6 <L5>
c01060df:	8a 0f                	mov    (%edi),%cl
c01060e1:	47                   	inc    %edi
c01060e2:	84 c9                	test   %cl,%cl
c01060e4:	74 38                	je     c010611e <L15>

c01060e6 <L5>:
c01060e6:	83 ef 04             	sub    $0x4,%edi
c01060e9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

c01060f0 <L10>:
c01060f0:	83 c7 04             	add    $0x4,%edi
c01060f3:	8b 0f                	mov    (%edi),%ecx
c01060f5:	8d 81 ff fe fe fe    	lea    -0x1010101(%ecx),%eax
c01060fb:	f7 d1                	not    %ecx
c01060fd:	21 c8                	and    %ecx,%eax
c01060ff:	a9 80 80 80 80       	test   $0x80808080,%eax
c0106104:	74 ea                	je     c01060f0 <L10>
c0106106:	f7 d1                	not    %ecx
c0106108:	47                   	inc    %edi
c0106109:	84 c9                	test   %cl,%cl
c010610b:	74 11                	je     c010611e <L15>
c010610d:	47                   	inc    %edi
c010610e:	c1 e9 08             	shr    $0x8,%ecx
c0106111:	84 c9                	test   %cl,%cl
c0106113:	74 09                	je     c010611e <L15>
c0106115:	47                   	inc    %edi
c0106116:	c1 e9 08             	shr    $0x8,%ecx
c0106119:	84 c9                	test   %cl,%cl
c010611b:	74 01                	je     c010611e <L15>
c010611d:	47                   	inc    %edi

c010611e <L15>:
c010611e:	29 d7                	sub    %edx,%edi
c0106120:	8d 47 ff             	lea    -0x1(%edi),%eax
c0106123:	8d 65 fc             	lea    -0x4(%ebp),%esp
c0106126:	5f                   	pop    %edi
c0106127:	c9                   	leave  
c0106128:	c3                   	ret    
c0106129:	66 90                	xchg   %ax,%ax
c010612b:	66 90                	xchg   %ax,%ax
c010612d:	66 90                	xchg   %ax,%ax
c010612f:	90                   	nop

c0106130 <__ssprint_r>:
c0106130:	55                   	push   %ebp
c0106131:	89 e5                	mov    %esp,%ebp
c0106133:	57                   	push   %edi
c0106134:	56                   	push   %esi
c0106135:	53                   	push   %ebx
c0106136:	83 ec 2c             	sub    $0x2c,%esp
c0106139:	8b 45 10             	mov    0x10(%ebp),%eax
c010613c:	8b 5d 0c             	mov    0xc(%ebp),%ebx
c010613f:	8b 00                	mov    (%eax),%eax
c0106141:	89 c7                	mov    %eax,%edi
c0106143:	8b 45 10             	mov    0x10(%ebp),%eax
c0106146:	8b 40 08             	mov    0x8(%eax),%eax
c0106149:	85 c0                	test   %eax,%eax
c010614b:	0f 84 af 01 00 00    	je     c0106300 <__ssprint_r+0x1d0>
c0106151:	31 c9                	xor    %ecx,%ecx
c0106153:	31 d2                	xor    %edx,%edx
c0106155:	8b 03                	mov    (%ebx),%eax
c0106157:	89 ce                	mov    %ecx,%esi
c0106159:	85 f6                	test   %esi,%esi
c010615b:	89 55 e4             	mov    %edx,-0x1c(%ebp)
c010615e:	0f 84 ec 00 00 00    	je     c0106250 <__ssprint_r+0x120>
c0106164:	8b 53 08             	mov    0x8(%ebx),%edx
c0106167:	39 d6                	cmp    %edx,%esi
c0106169:	0f 82 fc 00 00 00    	jb     c010626b <__ssprint_r+0x13b>
c010616f:	0f b7 4b 0c          	movzwl 0xc(%ebx),%ecx
c0106173:	66 f7 c1 80 04       	test   $0x480,%cx
c0106178:	0f 84 fa 00 00 00    	je     c0106278 <__ssprint_r+0x148>
c010617e:	8b 53 10             	mov    0x10(%ebx),%edx
c0106181:	29 d0                	sub    %edx,%eax
c0106183:	89 45 dc             	mov    %eax,-0x24(%ebp)
c0106186:	8b 43 14             	mov    0x14(%ebx),%eax
c0106189:	89 55 d8             	mov    %edx,-0x28(%ebp)
c010618c:	8d 04 40             	lea    (%eax,%eax,2),%eax
c010618f:	89 c2                	mov    %eax,%edx
c0106191:	c1 ea 1f             	shr    $0x1f,%edx
c0106194:	01 d0                	add    %edx,%eax
c0106196:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0106199:	8b 45 dc             	mov    -0x24(%ebp),%eax
c010619c:	d1 7d e0             	sarl   -0x20(%ebp)
c010619f:	8d 44 06 01          	lea    0x1(%esi,%eax,1),%eax
c01061a3:	39 45 e0             	cmp    %eax,-0x20(%ebp)
c01061a6:	0f 83 34 01 00 00    	jae    c01062e0 <__ssprint_r+0x1b0>
c01061ac:	89 45 e0             	mov    %eax,-0x20(%ebp)
c01061af:	80 e5 04             	and    $0x4,%ch
c01061b2:	0f 84 c8 00 00 00    	je     c0106280 <__ssprint_r+0x150>
c01061b8:	89 44 24 04          	mov    %eax,0x4(%esp)
c01061bc:	8b 45 08             	mov    0x8(%ebp),%eax
c01061bf:	89 04 24             	mov    %eax,(%esp)
c01061c2:	e8 e9 e7 ff ff       	call   c01049b0 <_malloc_r>
c01061c7:	85 c0                	test   %eax,%eax
c01061c9:	89 c2                	mov    %eax,%edx
c01061cb:	0f 84 e1 00 00 00    	je     c01062b2 <__ssprint_r+0x182>
c01061d1:	8b 45 dc             	mov    -0x24(%ebp),%eax
c01061d4:	89 55 d8             	mov    %edx,-0x28(%ebp)
c01061d7:	89 44 24 08          	mov    %eax,0x8(%esp)
c01061db:	8b 43 10             	mov    0x10(%ebx),%eax
c01061de:	89 14 24             	mov    %edx,(%esp)
c01061e1:	89 44 24 04          	mov    %eax,0x4(%esp)
c01061e5:	e8 16 b2 ff ff       	call   c0101400 <memcpy>
c01061ea:	0f b7 43 0c          	movzwl 0xc(%ebx),%eax
c01061ee:	8b 55 d8             	mov    -0x28(%ebp),%edx
c01061f1:	66 25 7f fb          	and    $0xfb7f,%ax
c01061f5:	0c 80                	or     $0x80,%al
c01061f7:	66 89 43 0c          	mov    %ax,0xc(%ebx)
c01061fb:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c01061fe:	8b 45 dc             	mov    -0x24(%ebp),%eax
c0106201:	89 53 10             	mov    %edx,0x10(%ebx)
c0106204:	89 4b 14             	mov    %ecx,0x14(%ebx)
c0106207:	2b 4d dc             	sub    -0x24(%ebp),%ecx
c010620a:	01 d0                	add    %edx,%eax
c010620c:	89 03                	mov    %eax,(%ebx)
c010620e:	89 f2                	mov    %esi,%edx
c0106210:	89 4b 08             	mov    %ecx,0x8(%ebx)
c0106213:	89 f1                	mov    %esi,%ecx
c0106215:	89 4c 24 08          	mov    %ecx,0x8(%esp)
c0106219:	89 4d e0             	mov    %ecx,-0x20(%ebp)
c010621c:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c010621f:	89 04 24             	mov    %eax,(%esp)
c0106222:	89 55 dc             	mov    %edx,-0x24(%ebp)
c0106225:	89 4c 24 04          	mov    %ecx,0x4(%esp)
c0106229:	e8 22 13 00 00       	call   c0107550 <memmove>
c010622e:	8b 03                	mov    (%ebx),%eax
c0106230:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0106233:	8b 55 dc             	mov    -0x24(%ebp),%edx
c0106236:	29 53 08             	sub    %edx,0x8(%ebx)
c0106239:	01 c8                	add    %ecx,%eax
c010623b:	8b 4d 10             	mov    0x10(%ebp),%ecx
c010623e:	89 03                	mov    %eax,(%ebx)
c0106240:	8b 51 08             	mov    0x8(%ecx),%edx
c0106243:	29 f2                	sub    %esi,%edx
c0106245:	85 d2                	test   %edx,%edx
c0106247:	89 51 08             	mov    %edx,0x8(%ecx)
c010624a:	0f 84 98 00 00 00    	je     c01062e8 <__ssprint_r+0x1b8>
c0106250:	8b 77 04             	mov    0x4(%edi),%esi
c0106253:	83 c7 08             	add    $0x8,%edi
c0106256:	8b 4f f8             	mov    -0x8(%edi),%ecx
c0106259:	85 f6                	test   %esi,%esi
c010625b:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c010625e:	74 f0                	je     c0106250 <__ssprint_r+0x120>
c0106260:	8b 53 08             	mov    0x8(%ebx),%edx
c0106263:	39 d6                	cmp    %edx,%esi
c0106265:	0f 83 04 ff ff ff    	jae    c010616f <__ssprint_r+0x3f>
c010626b:	89 f2                	mov    %esi,%edx
c010626d:	89 f1                	mov    %esi,%ecx
c010626f:	eb a4                	jmp    c0106215 <__ssprint_r+0xe5>
c0106271:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0106278:	89 d1                	mov    %edx,%ecx
c010627a:	eb 99                	jmp    c0106215 <__ssprint_r+0xe5>
c010627c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0106280:	89 44 24 08          	mov    %eax,0x8(%esp)
c0106284:	8b 45 d8             	mov    -0x28(%ebp),%eax
c0106287:	89 44 24 04          	mov    %eax,0x4(%esp)
c010628b:	8b 45 08             	mov    0x8(%ebp),%eax
c010628e:	89 04 24             	mov    %eax,(%esp)
c0106291:	e8 4a 13 00 00       	call   c01075e0 <_realloc_r>
c0106296:	85 c0                	test   %eax,%eax
c0106298:	89 c2                	mov    %eax,%edx
c010629a:	0f 85 5b ff ff ff    	jne    c01061fb <__ssprint_r+0xcb>
c01062a0:	8b 43 10             	mov    0x10(%ebx),%eax
c01062a3:	89 44 24 04          	mov    %eax,0x4(%esp)
c01062a7:	8b 45 08             	mov    0x8(%ebp),%eax
c01062aa:	89 04 24             	mov    %eax,(%esp)
c01062ad:	e8 3e 10 00 00       	call   c01072f0 <_free_r>
c01062b2:	8b 45 08             	mov    0x8(%ebp),%eax
c01062b5:	c7 00 0c 00 00 00    	movl   $0xc,(%eax)
c01062bb:	8b 45 10             	mov    0x10(%ebp),%eax
c01062be:	66 83 4b 0c 40       	orw    $0x40,0xc(%ebx)
c01062c3:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%eax)
c01062ca:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
c01062d1:	83 c4 2c             	add    $0x2c,%esp
c01062d4:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c01062d9:	5b                   	pop    %ebx
c01062da:	5e                   	pop    %esi
c01062db:	5f                   	pop    %edi
c01062dc:	5d                   	pop    %ebp
c01062dd:	c3                   	ret    
c01062de:	66 90                	xchg   %ax,%ax
c01062e0:	8b 45 e0             	mov    -0x20(%ebp),%eax
c01062e3:	e9 c7 fe ff ff       	jmp    c01061af <__ssprint_r+0x7f>
c01062e8:	c7 41 04 00 00 00 00 	movl   $0x0,0x4(%ecx)
c01062ef:	83 c4 2c             	add    $0x2c,%esp
c01062f2:	31 c0                	xor    %eax,%eax
c01062f4:	5b                   	pop    %ebx
c01062f5:	5e                   	pop    %esi
c01062f6:	5f                   	pop    %edi
c01062f7:	5d                   	pop    %ebp
c01062f8:	c3                   	ret    
c01062f9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0106300:	8b 45 10             	mov    0x10(%ebp),%eax
c0106303:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
c010630a:	83 c4 2c             	add    $0x2c,%esp
c010630d:	31 c0                	xor    %eax,%eax
c010630f:	5b                   	pop    %ebx
c0106310:	5e                   	pop    %esi
c0106311:	5f                   	pop    %edi
c0106312:	5d                   	pop    %ebp
c0106313:	c3                   	ret    
c0106314:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c010631a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

c0106320 <_svfiprintf_r>:
c0106320:	55                   	push   %ebp
c0106321:	89 e5                	mov    %esp,%ebp
c0106323:	57                   	push   %edi
c0106324:	56                   	push   %esi
c0106325:	53                   	push   %ebx
c0106326:	81 ec cc 00 00 00    	sub    $0xcc,%esp
c010632c:	8b 45 0c             	mov    0xc(%ebp),%eax
c010632f:	f6 40 0c 80          	testb  $0x80,0xc(%eax)
c0106333:	74 0b                	je     c0106340 <_svfiprintf_r+0x20>
c0106335:	8b 50 10             	mov    0x10(%eax),%edx
c0106338:	85 d2                	test   %edx,%edx
c010633a:	0f 84 1c 0d 00 00    	je     c010705c <_svfiprintf_r+0xd3c>
c0106340:	8d 45 a8             	lea    -0x58(%ebp),%eax
c0106343:	8d 5d a7             	lea    -0x59(%ebp),%ebx
c0106346:	89 c6                	mov    %eax,%esi
c0106348:	89 85 74 ff ff ff    	mov    %eax,-0x8c(%ebp)
c010634e:	29 d8                	sub    %ebx,%eax
c0106350:	c7 85 7c ff ff ff 00 	movl   $0x0,-0x84(%ebp)
c0106357:	00 00 00 
c010635a:	c7 85 78 ff ff ff 00 	movl   $0x0,-0x88(%ebp)
c0106361:	00 00 00 
c0106364:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c010636b:	00 00 00 
c010636e:	c7 85 50 ff ff ff 00 	movl   $0x0,-0xb0(%ebp)
c0106375:	00 00 00 
c0106378:	89 85 3c ff ff ff    	mov    %eax,-0xc4(%ebp)
c010637e:	8b 45 10             	mov    0x10(%ebp),%eax
c0106381:	8b 5d 10             	mov    0x10(%ebp),%ebx
c0106384:	0f b6 00             	movzbl (%eax),%eax
c0106387:	84 c0                	test   %al,%al
c0106389:	74 58                	je     c01063e3 <_svfiprintf_r+0xc3>
c010638b:	3c 25                	cmp    $0x25,%al
c010638d:	75 13                	jne    c01063a2 <_svfiprintf_r+0x82>
c010638f:	eb 52                	jmp    c01063e3 <_svfiprintf_r+0xc3>
c0106391:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0106398:	84 c0                	test   %al,%al
c010639a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c01063a0:	74 0a                	je     c01063ac <_svfiprintf_r+0x8c>
c01063a2:	83 c3 01             	add    $0x1,%ebx
c01063a5:	0f b6 03             	movzbl (%ebx),%eax
c01063a8:	3c 25                	cmp    $0x25,%al
c01063aa:	75 ec                	jne    c0106398 <_svfiprintf_r+0x78>
c01063ac:	89 df                	mov    %ebx,%edi
c01063ae:	2b 7d 10             	sub    0x10(%ebp),%edi
c01063b1:	74 30                	je     c01063e3 <_svfiprintf_r+0xc3>
c01063b3:	8b 45 10             	mov    0x10(%ebp),%eax
c01063b6:	83 c6 08             	add    $0x8,%esi
c01063b9:	89 7e fc             	mov    %edi,-0x4(%esi)
c01063bc:	01 bd 7c ff ff ff    	add    %edi,-0x84(%ebp)
c01063c2:	89 46 f8             	mov    %eax,-0x8(%esi)
c01063c5:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c01063cb:	83 c0 01             	add    $0x1,%eax
c01063ce:	83 f8 07             	cmp    $0x7,%eax
c01063d1:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c01063d7:	0f 8f eb 0a 00 00    	jg     c0106ec8 <_svfiprintf_r+0xba8>
c01063dd:	01 bd 50 ff ff ff    	add    %edi,-0xb0(%ebp)
c01063e3:	80 3b 00             	cmpb   $0x0,(%ebx)
c01063e6:	0f 84 11 09 00 00    	je     c0106cfd <_svfiprintf_r+0x9dd>
c01063ec:	8d 43 01             	lea    0x1(%ebx),%eax
c01063ef:	31 ff                	xor    %edi,%edi
c01063f1:	c6 85 71 ff ff ff 00 	movb   $0x0,-0x8f(%ebp)
c01063f8:	c7 85 5c ff ff ff ff 	movl   $0xffffffff,-0xa4(%ebp)
c01063ff:	ff ff ff 
c0106402:	c7 85 54 ff ff ff 00 	movl   $0x0,-0xac(%ebp)
c0106409:	00 00 00 
c010640c:	c7 85 64 ff ff ff 00 	movl   $0x0,-0x9c(%ebp)
c0106413:	00 00 00 
c0106416:	8d 50 01             	lea    0x1(%eax),%edx
c0106419:	0f be 00             	movsbl (%eax),%eax
c010641c:	8d 48 e0             	lea    -0x20(%eax),%ecx
c010641f:	83 f9 58             	cmp    $0x58,%ecx
c0106422:	0f 87 63 03 00 00    	ja     c010678b <_svfiprintf_r+0x46b>
c0106428:	ff 24 8d e8 83 10 c0 	jmp    *-0x3fef7c18(,%ecx,4)
c010642f:	90                   	nop
c0106430:	83 8d 64 ff ff ff 10 	orl    $0x10,-0x9c(%ebp)
c0106437:	89 d0                	mov    %edx,%eax
c0106439:	eb db                	jmp    c0106416 <_svfiprintf_r+0xf6>
c010643b:	8b 45 14             	mov    0x14(%ebp),%eax
c010643e:	8b 5d 14             	mov    0x14(%ebp),%ebx
c0106441:	8b 00                	mov    (%eax),%eax
c0106443:	83 c3 04             	add    $0x4,%ebx
c0106446:	89 5d 14             	mov    %ebx,0x14(%ebp)
c0106449:	85 c0                	test   %eax,%eax
c010644b:	89 85 54 ff ff ff    	mov    %eax,-0xac(%ebp)
c0106451:	79 e4                	jns    c0106437 <_svfiprintf_r+0x117>
c0106453:	f7 9d 54 ff ff ff    	negl   -0xac(%ebp)
c0106459:	83 8d 64 ff ff ff 04 	orl    $0x4,-0x9c(%ebp)
c0106460:	89 d0                	mov    %edx,%eax
c0106462:	eb b2                	jmp    c0106416 <_svfiprintf_r+0xf6>
c0106464:	bf 2b 00 00 00       	mov    $0x2b,%edi
c0106469:	89 d0                	mov    %edx,%eax
c010646b:	eb a9                	jmp    c0106416 <_svfiprintf_r+0xf6>
c010646d:	8b 45 14             	mov    0x14(%ebp),%eax
c0106470:	83 8d 64 ff ff ff 02 	orl    $0x2,-0x9c(%ebp)
c0106477:	89 55 10             	mov    %edx,0x10(%ebp)
c010647a:	ba 02 00 00 00       	mov    $0x2,%edx
c010647f:	8b 08                	mov    (%eax),%ecx
c0106481:	83 c0 04             	add    $0x4,%eax
c0106484:	c6 85 72 ff ff ff 30 	movb   $0x30,-0x8e(%ebp)
c010648b:	c6 85 73 ff ff ff 78 	movb   $0x78,-0x8d(%ebp)
c0106492:	89 45 14             	mov    %eax,0x14(%ebp)
c0106495:	c7 85 44 ff ff ff 8b 	movl   $0xc010808b,-0xbc(%ebp)
c010649c:	80 10 c0 
c010649f:	90                   	nop
c01064a0:	c6 85 71 ff ff ff 00 	movb   $0x0,-0x8f(%ebp)
c01064a7:	31 ff                	xor    %edi,%edi
c01064a9:	8b 9d 64 ff ff ff    	mov    -0x9c(%ebp),%ebx
c01064af:	89 d8                	mov    %ebx,%eax
c01064b1:	24 7f                	and    $0x7f,%al
c01064b3:	83 bd 5c ff ff ff 00 	cmpl   $0x0,-0xa4(%ebp)
c01064ba:	0f 48 c3             	cmovs  %ebx,%eax
c01064bd:	89 85 64 ff ff ff    	mov    %eax,-0x9c(%ebp)
c01064c3:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
c01064c9:	85 c0                	test   %eax,%eax
c01064cb:	75 08                	jne    c01064d5 <_svfiprintf_r+0x1b5>
c01064cd:	85 c9                	test   %ecx,%ecx
c01064cf:	0f 84 03 08 00 00    	je     c0106cd8 <_svfiprintf_r+0x9b8>
c01064d5:	80 fa 01             	cmp    $0x1,%dl
c01064d8:	0f 84 8a 0a 00 00    	je     c0106f68 <_svfiprintf_r+0xc48>
c01064de:	80 fa 02             	cmp    $0x2,%dl
c01064e1:	8d 5d a8             	lea    -0x58(%ebp),%ebx
c01064e4:	0f 85 86 01 00 00    	jne    c0106670 <_svfiprintf_r+0x350>
c01064ea:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
c01064f0:	89 c8                	mov    %ecx,%eax
c01064f2:	83 eb 01             	sub    $0x1,%ebx
c01064f5:	83 e0 0f             	and    $0xf,%eax
c01064f8:	0f b6 04 02          	movzbl (%edx,%eax,1),%eax
c01064fc:	c1 e9 04             	shr    $0x4,%ecx
c01064ff:	85 c9                	test   %ecx,%ecx
c0106501:	88 03                	mov    %al,(%ebx)
c0106503:	75 eb                	jne    c01064f0 <_svfiprintf_r+0x1d0>
c0106505:	8d 45 a8             	lea    -0x58(%ebp),%eax
c0106508:	29 d8                	sub    %ebx,%eax
c010650a:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c0106510:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
c0106516:	8b 8d 58 ff ff ff    	mov    -0xa8(%ebp),%ecx
c010651c:	39 c1                	cmp    %eax,%ecx
c010651e:	0f 4d c1             	cmovge %ecx,%eax
c0106521:	89 85 60 ff ff ff    	mov    %eax,-0xa0(%ebp)
c0106527:	89 f8                	mov    %edi,%eax
c0106529:	3c 01                	cmp    $0x1,%al
c010652b:	83 9d 60 ff ff ff ff 	sbbl   $0xffffffff,-0xa0(%ebp)
c0106532:	8b 95 60 ff ff ff    	mov    -0xa0(%ebp),%edx
c0106538:	8b 8d 64 ff ff ff    	mov    -0x9c(%ebp),%ecx
c010653e:	89 d0                	mov    %edx,%eax
c0106540:	89 cf                	mov    %ecx,%edi
c0106542:	83 c0 02             	add    $0x2,%eax
c0106545:	83 e7 02             	and    $0x2,%edi
c0106548:	89 bd 4c ff ff ff    	mov    %edi,-0xb4(%ebp)
c010654e:	89 cf                	mov    %ecx,%edi
c0106550:	0f 44 c2             	cmove  %edx,%eax
c0106553:	81 e7 84 00 00 00    	and    $0x84,%edi
c0106559:	89 85 60 ff ff ff    	mov    %eax,-0xa0(%ebp)
c010655f:	89 bd 48 ff ff ff    	mov    %edi,-0xb8(%ebp)
c0106565:	0f 85 cd 04 00 00    	jne    c0106a38 <_svfiprintf_r+0x718>
c010656b:	8b bd 54 ff ff ff    	mov    -0xac(%ebp),%edi
c0106571:	2b bd 60 ff ff ff    	sub    -0xa0(%ebp),%edi
c0106577:	85 ff                	test   %edi,%edi
c0106579:	0f 8e b9 04 00 00    	jle    c0106a38 <_svfiprintf_r+0x718>
c010657f:	83 ff 10             	cmp    $0x10,%edi
c0106582:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0106588:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c010658e:	7e 7c                	jle    c010660c <_svfiprintf_r+0x2ec>
c0106590:	89 9d 40 ff ff ff    	mov    %ebx,-0xc0(%ebp)
c0106596:	89 f1                	mov    %esi,%ecx
c0106598:	8b 5d 08             	mov    0x8(%ebp),%ebx
c010659b:	8b 75 0c             	mov    0xc(%ebp),%esi
c010659e:	eb 08                	jmp    c01065a8 <_svfiprintf_r+0x288>
c01065a0:	83 ef 10             	sub    $0x10,%edi
c01065a3:	83 ff 10             	cmp    $0x10,%edi
c01065a6:	7e 5c                	jle    c0106604 <_svfiprintf_r+0x2e4>
c01065a8:	83 c0 01             	add    $0x1,%eax
c01065ab:	83 c2 10             	add    $0x10,%edx
c01065ae:	c7 01 5c 85 10 c0    	movl   $0xc010855c,(%ecx)
c01065b4:	83 c1 08             	add    $0x8,%ecx
c01065b7:	c7 41 fc 10 00 00 00 	movl   $0x10,-0x4(%ecx)
c01065be:	83 f8 07             	cmp    $0x7,%eax
c01065c1:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c01065c7:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c01065cd:	7e d1                	jle    c01065a0 <_svfiprintf_r+0x280>
c01065cf:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c01065d5:	89 44 24 08          	mov    %eax,0x8(%esp)
c01065d9:	89 74 24 04          	mov    %esi,0x4(%esp)
c01065dd:	89 1c 24             	mov    %ebx,(%esp)
c01065e0:	e8 4b fb ff ff       	call   c0106130 <__ssprint_r>
c01065e5:	85 c0                	test   %eax,%eax
c01065e7:	0f 85 3b 07 00 00    	jne    c0106d28 <_svfiprintf_r+0xa08>
c01065ed:	83 ef 10             	sub    $0x10,%edi
c01065f0:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c01065f6:	83 ff 10             	cmp    $0x10,%edi
c01065f9:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c01065ff:	8d 4d a8             	lea    -0x58(%ebp),%ecx
c0106602:	7f a4                	jg     c01065a8 <_svfiprintf_r+0x288>
c0106604:	8b 9d 40 ff ff ff    	mov    -0xc0(%ebp),%ebx
c010660a:	89 ce                	mov    %ecx,%esi
c010660c:	83 c0 01             	add    $0x1,%eax
c010660f:	01 fa                	add    %edi,%edx
c0106611:	c7 06 5c 85 10 c0    	movl   $0xc010855c,(%esi)
c0106617:	83 c6 08             	add    $0x8,%esi
c010661a:	89 7e fc             	mov    %edi,-0x4(%esi)
c010661d:	83 f8 07             	cmp    $0x7,%eax
c0106620:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0106626:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c010662c:	0f 8e 12 04 00 00    	jle    c0106a44 <_svfiprintf_r+0x724>
c0106632:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0106638:	89 44 24 08          	mov    %eax,0x8(%esp)
c010663c:	8b 45 0c             	mov    0xc(%ebp),%eax
c010663f:	89 44 24 04          	mov    %eax,0x4(%esp)
c0106643:	8b 45 08             	mov    0x8(%ebp),%eax
c0106646:	89 04 24             	mov    %eax,(%esp)
c0106649:	e8 e2 fa ff ff       	call   c0106130 <__ssprint_r>
c010664e:	85 c0                	test   %eax,%eax
c0106650:	0f 85 d2 06 00 00    	jne    c0106d28 <_svfiprintf_r+0xa08>
c0106656:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c010665c:	8d 75 a8             	lea    -0x58(%ebp),%esi
c010665f:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0106665:	e9 da 03 00 00       	jmp    c0106a44 <_svfiprintf_r+0x724>
c010666a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0106670:	89 c8                	mov    %ecx,%eax
c0106672:	83 eb 01             	sub    $0x1,%ebx
c0106675:	83 e0 07             	and    $0x7,%eax
c0106678:	c1 e9 03             	shr    $0x3,%ecx
c010667b:	83 c0 30             	add    $0x30,%eax
c010667e:	85 c9                	test   %ecx,%ecx
c0106680:	88 03                	mov    %al,(%ebx)
c0106682:	75 ec                	jne    c0106670 <_svfiprintf_r+0x350>
c0106684:	f6 85 64 ff ff ff 01 	testb  $0x1,-0x9c(%ebp)
c010668b:	89 da                	mov    %ebx,%edx
c010668d:	0f 84 72 fe ff ff    	je     c0106505 <_svfiprintf_r+0x1e5>
c0106693:	3c 30                	cmp    $0x30,%al
c0106695:	0f 84 6a fe ff ff    	je     c0106505 <_svfiprintf_r+0x1e5>
c010669b:	83 eb 01             	sub    $0x1,%ebx
c010669e:	8d 45 a8             	lea    -0x58(%ebp),%eax
c01066a1:	29 d8                	sub    %ebx,%eax
c01066a3:	c6 42 ff 30          	movb   $0x30,-0x1(%edx)
c01066a7:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c01066ad:	e9 5e fe ff ff       	jmp    c0106510 <_svfiprintf_r+0x1f0>
c01066b2:	83 8d 64 ff ff ff 10 	orl    $0x10,-0x9c(%ebp)
c01066b9:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
c01066c0:	89 55 10             	mov    %edx,0x10(%ebp)
c01066c3:	8b 45 14             	mov    0x14(%ebp),%eax
c01066c6:	0f 85 48 01 00 00    	jne    c0106814 <_svfiprintf_r+0x4f4>
c01066cc:	f6 85 64 ff ff ff 40 	testb  $0x40,-0x9c(%ebp)
c01066d3:	0f 84 3b 01 00 00    	je     c0106814 <_svfiprintf_r+0x4f4>
c01066d9:	0f b7 08             	movzwl (%eax),%ecx
c01066dc:	83 c0 04             	add    $0x4,%eax
c01066df:	31 d2                	xor    %edx,%edx
c01066e1:	89 45 14             	mov    %eax,0x14(%ebp)
c01066e4:	e9 b7 fd ff ff       	jmp    c01064a0 <_svfiprintf_r+0x180>
c01066e9:	83 8d 64 ff ff ff 10 	orl    $0x10,-0x9c(%ebp)
c01066f0:	89 f8                	mov    %edi,%eax
c01066f2:	89 55 10             	mov    %edx,0x10(%ebp)
c01066f5:	88 85 71 ff ff ff    	mov    %al,-0x8f(%ebp)
c01066fb:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
c0106702:	8b 45 14             	mov    0x14(%ebp),%eax
c0106705:	75 0d                	jne    c0106714 <_svfiprintf_r+0x3f4>
c0106707:	f6 85 64 ff ff ff 40 	testb  $0x40,-0x9c(%ebp)
c010670e:	0f 85 f2 08 00 00    	jne    c0107006 <_svfiprintf_r+0xce6>
c0106714:	8b 08                	mov    (%eax),%ecx
c0106716:	83 c0 04             	add    $0x4,%eax
c0106719:	89 45 14             	mov    %eax,0x14(%ebp)
c010671c:	85 c9                	test   %ecx,%ecx
c010671e:	0f 88 f3 08 00 00    	js     c0107017 <_svfiprintf_r+0xcf7>
c0106724:	0f b6 bd 71 ff ff ff 	movzbl -0x8f(%ebp),%edi
c010672b:	ba 01 00 00 00       	mov    $0x1,%edx
c0106730:	e9 74 fd ff ff       	jmp    c01064a9 <_svfiprintf_r+0x189>
c0106735:	0f be 02             	movsbl (%edx),%eax
c0106738:	8d 5a 01             	lea    0x1(%edx),%ebx
c010673b:	83 f8 2a             	cmp    $0x2a,%eax
c010673e:	0f 84 af 09 00 00    	je     c01070f3 <_svfiprintf_r+0xdd3>
c0106744:	8d 48 d0             	lea    -0x30(%eax),%ecx
c0106747:	31 d2                	xor    %edx,%edx
c0106749:	83 f9 09             	cmp    $0x9,%ecx
c010674c:	0f 87 90 09 00 00    	ja     c01070e2 <_svfiprintf_r+0xdc2>
c0106752:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0106758:	8d 04 92             	lea    (%edx,%edx,4),%eax
c010675b:	83 c3 01             	add    $0x1,%ebx
c010675e:	8d 14 41             	lea    (%ecx,%eax,2),%edx
c0106761:	0f be 43 ff          	movsbl -0x1(%ebx),%eax
c0106765:	8d 48 d0             	lea    -0x30(%eax),%ecx
c0106768:	83 f9 09             	cmp    $0x9,%ecx
c010676b:	76 eb                	jbe    c0106758 <_svfiprintf_r+0x438>
c010676d:	85 d2                	test   %edx,%edx
c010676f:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
c0106774:	0f 48 d1             	cmovs  %ecx,%edx
c0106777:	8d 48 e0             	lea    -0x20(%eax),%ecx
c010677a:	83 f9 58             	cmp    $0x58,%ecx
c010677d:	89 95 5c ff ff ff    	mov    %edx,-0xa4(%ebp)
c0106783:	89 da                	mov    %ebx,%edx
c0106785:	0f 86 9d fc ff ff    	jbe    c0106428 <_svfiprintf_r+0x108>
c010678b:	89 fb                	mov    %edi,%ebx
c010678d:	85 c0                	test   %eax,%eax
c010678f:	89 55 10             	mov    %edx,0x10(%ebp)
c0106792:	88 9d 71 ff ff ff    	mov    %bl,-0x8f(%ebp)
c0106798:	0f 84 5f 05 00 00    	je     c0106cfd <_svfiprintf_r+0x9dd>
c010679e:	88 45 80             	mov    %al,-0x80(%ebp)
c01067a1:	8d 5d 80             	lea    -0x80(%ebp),%ebx
c01067a4:	c6 85 71 ff ff ff 00 	movb   $0x0,-0x8f(%ebp)
c01067ab:	c7 85 60 ff ff ff 01 	movl   $0x1,-0xa0(%ebp)
c01067b2:	00 00 00 
c01067b5:	c7 85 58 ff ff ff 01 	movl   $0x1,-0xa8(%ebp)
c01067bc:	00 00 00 
c01067bf:	e9 5a 01 00 00       	jmp    c010691e <_svfiprintf_r+0x5fe>
c01067c4:	31 db                	xor    %ebx,%ebx
c01067c6:	8d 48 d0             	lea    -0x30(%eax),%ecx
c01067c9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c01067d0:	8d 04 9b             	lea    (%ebx,%ebx,4),%eax
c01067d3:	83 c2 01             	add    $0x1,%edx
c01067d6:	8d 1c 41             	lea    (%ecx,%eax,2),%ebx
c01067d9:	0f be 42 ff          	movsbl -0x1(%edx),%eax
c01067dd:	8d 48 d0             	lea    -0x30(%eax),%ecx
c01067e0:	83 f9 09             	cmp    $0x9,%ecx
c01067e3:	76 eb                	jbe    c01067d0 <_svfiprintf_r+0x4b0>
c01067e5:	89 9d 54 ff ff ff    	mov    %ebx,-0xac(%ebp)
c01067eb:	e9 2c fc ff ff       	jmp    c010641c <_svfiprintf_r+0xfc>
c01067f0:	81 8d 64 ff ff ff 80 	orl    $0x80,-0x9c(%ebp)
c01067f7:	00 00 00 
c01067fa:	89 d0                	mov    %edx,%eax
c01067fc:	e9 15 fc ff ff       	jmp    c0106416 <_svfiprintf_r+0xf6>
c0106801:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
c0106808:	89 55 10             	mov    %edx,0x10(%ebp)
c010680b:	8b 45 14             	mov    0x14(%ebp),%eax
c010680e:	0f 84 b8 fe ff ff    	je     c01066cc <_svfiprintf_r+0x3ac>
c0106814:	8b 08                	mov    (%eax),%ecx
c0106816:	83 c0 04             	add    $0x4,%eax
c0106819:	31 d2                	xor    %edx,%edx
c010681b:	89 45 14             	mov    %eax,0x14(%ebp)
c010681e:	e9 7d fc ff ff       	jmp    c01064a0 <_svfiprintf_r+0x180>
c0106823:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
c010682a:	89 f8                	mov    %edi,%eax
c010682c:	89 55 10             	mov    %edx,0x10(%ebp)
c010682f:	88 85 71 ff ff ff    	mov    %al,-0x8f(%ebp)
c0106835:	0f 85 a2 07 00 00    	jne    c0106fdd <_svfiprintf_r+0xcbd>
c010683b:	f6 85 64 ff ff ff 40 	testb  $0x40,-0x9c(%ebp)
c0106842:	0f 84 95 07 00 00    	je     c0106fdd <_svfiprintf_r+0xcbd>
c0106848:	8b 45 14             	mov    0x14(%ebp),%eax
c010684b:	0f b7 9d 50 ff ff ff 	movzwl -0xb0(%ebp),%ebx
c0106852:	8b 00                	mov    (%eax),%eax
c0106854:	66 89 18             	mov    %bx,(%eax)
c0106857:	8b 45 14             	mov    0x14(%ebp),%eax
c010685a:	83 c0 04             	add    $0x4,%eax
c010685d:	89 45 14             	mov    %eax,0x14(%ebp)
c0106860:	e9 19 fb ff ff       	jmp    c010637e <_svfiprintf_r+0x5e>
c0106865:	89 fb                	mov    %edi,%ebx
c0106867:	89 55 10             	mov    %edx,0x10(%ebp)
c010686a:	88 9d 71 ff ff ff    	mov    %bl,-0x8f(%ebp)
c0106870:	c7 85 44 ff ff ff 8b 	movl   $0xc010808b,-0xbc(%ebp)
c0106877:	80 10 c0 
c010687a:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
c0106881:	8b 5d 14             	mov    0x14(%ebp),%ebx
c0106884:	75 0d                	jne    c0106893 <_svfiprintf_r+0x573>
c0106886:	f6 85 64 ff ff ff 40 	testb  $0x40,-0x9c(%ebp)
c010688d:	0f 85 65 07 00 00    	jne    c0106ff8 <_svfiprintf_r+0xcd8>
c0106893:	8b 0b                	mov    (%ebx),%ecx
c0106895:	83 c3 04             	add    $0x4,%ebx
c0106898:	89 5d 14             	mov    %ebx,0x14(%ebp)
c010689b:	f6 85 64 ff ff ff 01 	testb  $0x1,-0x9c(%ebp)
c01068a2:	ba 02 00 00 00       	mov    $0x2,%edx
c01068a7:	0f 84 f3 fb ff ff    	je     c01064a0 <_svfiprintf_r+0x180>
c01068ad:	85 c9                	test   %ecx,%ecx
c01068af:	0f 84 eb fb ff ff    	je     c01064a0 <_svfiprintf_r+0x180>
c01068b5:	c6 85 72 ff ff ff 30 	movb   $0x30,-0x8e(%ebp)
c01068bc:	88 85 73 ff ff ff    	mov    %al,-0x8d(%ebp)
c01068c2:	83 8d 64 ff ff ff 02 	orl    $0x2,-0x9c(%ebp)
c01068c9:	e9 d2 fb ff ff       	jmp    c01064a0 <_svfiprintf_r+0x180>
c01068ce:	83 8d 64 ff ff ff 40 	orl    $0x40,-0x9c(%ebp)
c01068d5:	89 d0                	mov    %edx,%eax
c01068d7:	e9 3a fb ff ff       	jmp    c0106416 <_svfiprintf_r+0xf6>
c01068dc:	89 f8                	mov    %edi,%eax
c01068de:	89 55 10             	mov    %edx,0x10(%ebp)
c01068e1:	88 85 71 ff ff ff    	mov    %al,-0x8f(%ebp)
c01068e7:	e9 0f fe ff ff       	jmp    c01066fb <_svfiprintf_r+0x3db>
c01068ec:	8b 45 14             	mov    0x14(%ebp),%eax
c01068ef:	8d 5d 80             	lea    -0x80(%ebp),%ebx
c01068f2:	89 55 10             	mov    %edx,0x10(%ebp)
c01068f5:	c6 85 71 ff ff ff 00 	movb   $0x0,-0x8f(%ebp)
c01068fc:	c7 85 60 ff ff ff 01 	movl   $0x1,-0xa0(%ebp)
c0106903:	00 00 00 
c0106906:	8b 00                	mov    (%eax),%eax
c0106908:	c7 85 58 ff ff ff 01 	movl   $0x1,-0xa8(%ebp)
c010690f:	00 00 00 
c0106912:	88 45 80             	mov    %al,-0x80(%ebp)
c0106915:	8b 45 14             	mov    0x14(%ebp),%eax
c0106918:	83 c0 04             	add    $0x4,%eax
c010691b:	89 45 14             	mov    %eax,0x14(%ebp)
c010691e:	c7 85 5c ff ff ff 00 	movl   $0x0,-0xa4(%ebp)
c0106925:	00 00 00 
c0106928:	e9 05 fc ff ff       	jmp    c0106532 <_svfiprintf_r+0x212>
c010692d:	89 fb                	mov    %edi,%ebx
c010692f:	89 55 10             	mov    %edx,0x10(%ebp)
c0106932:	88 9d 71 ff ff ff    	mov    %bl,-0x8f(%ebp)
c0106938:	c7 85 44 ff ff ff 7a 	movl   $0xc010807a,-0xbc(%ebp)
c010693f:	80 10 c0 
c0106942:	e9 33 ff ff ff       	jmp    c010687a <_svfiprintf_r+0x55a>
c0106947:	83 8d 64 ff ff ff 10 	orl    $0x10,-0x9c(%ebp)
c010694e:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
c0106955:	89 55 10             	mov    %edx,0x10(%ebp)
c0106958:	8b 45 14             	mov    0x14(%ebp),%eax
c010695b:	75 39                	jne    c0106996 <_svfiprintf_r+0x676>
c010695d:	f6 85 64 ff ff ff 40 	testb  $0x40,-0x9c(%ebp)
c0106964:	74 30                	je     c0106996 <_svfiprintf_r+0x676>
c0106966:	0f b7 08             	movzwl (%eax),%ecx
c0106969:	83 c0 04             	add    $0x4,%eax
c010696c:	ba 01 00 00 00       	mov    $0x1,%edx
c0106971:	89 45 14             	mov    %eax,0x14(%ebp)
c0106974:	e9 27 fb ff ff       	jmp    c01064a0 <_svfiprintf_r+0x180>
c0106979:	83 8d 64 ff ff ff 01 	orl    $0x1,-0x9c(%ebp)
c0106980:	89 d0                	mov    %edx,%eax
c0106982:	e9 8f fa ff ff       	jmp    c0106416 <_svfiprintf_r+0xf6>
c0106987:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
c010698e:	89 55 10             	mov    %edx,0x10(%ebp)
c0106991:	8b 45 14             	mov    0x14(%ebp),%eax
c0106994:	74 c7                	je     c010695d <_svfiprintf_r+0x63d>
c0106996:	8b 08                	mov    (%eax),%ecx
c0106998:	83 c0 04             	add    $0x4,%eax
c010699b:	ba 01 00 00 00       	mov    $0x1,%edx
c01069a0:	89 45 14             	mov    %eax,0x14(%ebp)
c01069a3:	e9 f8 fa ff ff       	jmp    c01064a0 <_svfiprintf_r+0x180>
c01069a8:	8b 45 14             	mov    0x14(%ebp),%eax
c01069ab:	89 55 10             	mov    %edx,0x10(%ebp)
c01069ae:	c6 85 71 ff ff ff 00 	movb   $0x0,-0x8f(%ebp)
c01069b5:	8b 18                	mov    (%eax),%ebx
c01069b7:	8d 50 04             	lea    0x4(%eax),%edx
c01069ba:	85 db                	test   %ebx,%ebx
c01069bc:	0f 84 cc 06 00 00    	je     c010708e <_svfiprintf_r+0xd6e>
c01069c2:	8b bd 5c ff ff ff    	mov    -0xa4(%ebp),%edi
c01069c8:	89 95 60 ff ff ff    	mov    %edx,-0xa0(%ebp)
c01069ce:	85 ff                	test   %edi,%edi
c01069d0:	0f 88 59 06 00 00    	js     c010702f <_svfiprintf_r+0xd0f>
c01069d6:	89 7c 24 08          	mov    %edi,0x8(%esp)
c01069da:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c01069e1:	00 
c01069e2:	89 1c 24             	mov    %ebx,(%esp)
c01069e5:	e8 06 e7 ff ff       	call   c01050f0 <memchr>
c01069ea:	8b 95 60 ff ff ff    	mov    -0xa0(%ebp),%edx
c01069f0:	85 c0                	test   %eax,%eax
c01069f2:	0f 84 c5 06 00 00    	je     c01070bd <_svfiprintf_r+0xd9d>
c01069f8:	29 d8                	sub    %ebx,%eax
c01069fa:	39 f8                	cmp    %edi,%eax
c01069fc:	0f 4f c7             	cmovg  %edi,%eax
c01069ff:	0f b6 bd 71 ff ff ff 	movzbl -0x8f(%ebp),%edi
c0106a06:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c0106a0c:	89 55 14             	mov    %edx,0x14(%ebp)
c0106a0f:	c7 85 5c ff ff ff 00 	movl   $0x0,-0xa4(%ebp)
c0106a16:	00 00 00 
c0106a19:	e9 f2 fa ff ff       	jmp    c0106510 <_svfiprintf_r+0x1f0>
c0106a1e:	89 f8                	mov    %edi,%eax
c0106a20:	84 c0                	test   %al,%al
c0106a22:	b8 20 00 00 00       	mov    $0x20,%eax
c0106a27:	0f 44 f8             	cmove  %eax,%edi
c0106a2a:	89 d0                	mov    %edx,%eax
c0106a2c:	e9 e5 f9 ff ff       	jmp    c0106416 <_svfiprintf_r+0xf6>
c0106a31:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0106a38:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0106a3e:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0106a44:	80 bd 71 ff ff ff 00 	cmpb   $0x0,-0x8f(%ebp)
c0106a4b:	74 2e                	je     c0106a7b <_svfiprintf_r+0x75b>
c0106a4d:	83 c0 01             	add    $0x1,%eax
c0106a50:	83 c2 01             	add    $0x1,%edx
c0106a53:	8d 8d 71 ff ff ff    	lea    -0x8f(%ebp),%ecx
c0106a59:	83 c6 08             	add    $0x8,%esi
c0106a5c:	89 4e f8             	mov    %ecx,-0x8(%esi)
c0106a5f:	c7 46 fc 01 00 00 00 	movl   $0x1,-0x4(%esi)
c0106a66:	83 f8 07             	cmp    $0x7,%eax
c0106a69:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0106a6f:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0106a75:	0f 8f b5 04 00 00    	jg     c0106f30 <_svfiprintf_r+0xc10>
c0106a7b:	8b 8d 4c ff ff ff    	mov    -0xb4(%ebp),%ecx
c0106a81:	85 c9                	test   %ecx,%ecx
c0106a83:	74 2e                	je     c0106ab3 <_svfiprintf_r+0x793>
c0106a85:	83 c0 01             	add    $0x1,%eax
c0106a88:	83 c2 02             	add    $0x2,%edx
c0106a8b:	8d 8d 72 ff ff ff    	lea    -0x8e(%ebp),%ecx
c0106a91:	83 c6 08             	add    $0x8,%esi
c0106a94:	89 4e f8             	mov    %ecx,-0x8(%esi)
c0106a97:	c7 46 fc 02 00 00 00 	movl   $0x2,-0x4(%esi)
c0106a9e:	83 f8 07             	cmp    $0x7,%eax
c0106aa1:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0106aa7:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0106aad:	0f 8f 45 04 00 00    	jg     c0106ef8 <_svfiprintf_r+0xbd8>
c0106ab3:	81 bd 48 ff ff ff 80 	cmpl   $0x80,-0xb8(%ebp)
c0106aba:	00 00 00 
c0106abd:	0f 84 9d 02 00 00    	je     c0106d60 <_svfiprintf_r+0xa40>
c0106ac3:	8b bd 5c ff ff ff    	mov    -0xa4(%ebp),%edi
c0106ac9:	2b bd 58 ff ff ff    	sub    -0xa8(%ebp),%edi
c0106acf:	85 ff                	test   %edi,%edi
c0106ad1:	0f 8e e1 00 00 00    	jle    c0106bb8 <_svfiprintf_r+0x898>
c0106ad7:	83 ff 10             	cmp    $0x10,%edi
c0106ada:	0f 8e 7c 00 00 00    	jle    c0106b5c <_svfiprintf_r+0x83c>
c0106ae0:	89 9d 5c ff ff ff    	mov    %ebx,-0xa4(%ebp)
c0106ae6:	89 f1                	mov    %esi,%ecx
c0106ae8:	8b 5d 08             	mov    0x8(%ebp),%ebx
c0106aeb:	8b 75 0c             	mov    0xc(%ebp),%esi
c0106aee:	eb 08                	jmp    c0106af8 <_svfiprintf_r+0x7d8>
c0106af0:	83 ef 10             	sub    $0x10,%edi
c0106af3:	83 ff 10             	cmp    $0x10,%edi
c0106af6:	7e 5c                	jle    c0106b54 <_svfiprintf_r+0x834>
c0106af8:	83 c0 01             	add    $0x1,%eax
c0106afb:	83 c2 10             	add    $0x10,%edx
c0106afe:	c7 01 4c 85 10 c0    	movl   $0xc010854c,(%ecx)
c0106b04:	83 c1 08             	add    $0x8,%ecx
c0106b07:	c7 41 fc 10 00 00 00 	movl   $0x10,-0x4(%ecx)
c0106b0e:	83 f8 07             	cmp    $0x7,%eax
c0106b11:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0106b17:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0106b1d:	7e d1                	jle    c0106af0 <_svfiprintf_r+0x7d0>
c0106b1f:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0106b25:	89 44 24 08          	mov    %eax,0x8(%esp)
c0106b29:	89 74 24 04          	mov    %esi,0x4(%esp)
c0106b2d:	89 1c 24             	mov    %ebx,(%esp)
c0106b30:	e8 fb f5 ff ff       	call   c0106130 <__ssprint_r>
c0106b35:	85 c0                	test   %eax,%eax
c0106b37:	0f 85 eb 01 00 00    	jne    c0106d28 <_svfiprintf_r+0xa08>
c0106b3d:	83 ef 10             	sub    $0x10,%edi
c0106b40:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0106b46:	83 ff 10             	cmp    $0x10,%edi
c0106b49:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0106b4f:	8d 4d a8             	lea    -0x58(%ebp),%ecx
c0106b52:	7f a4                	jg     c0106af8 <_svfiprintf_r+0x7d8>
c0106b54:	8b 9d 5c ff ff ff    	mov    -0xa4(%ebp),%ebx
c0106b5a:	89 ce                	mov    %ecx,%esi
c0106b5c:	83 c0 01             	add    $0x1,%eax
c0106b5f:	01 fa                	add    %edi,%edx
c0106b61:	c7 06 4c 85 10 c0    	movl   $0xc010854c,(%esi)
c0106b67:	83 c6 08             	add    $0x8,%esi
c0106b6a:	89 7e fc             	mov    %edi,-0x4(%esi)
c0106b6d:	83 f8 07             	cmp    $0x7,%eax
c0106b70:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0106b76:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0106b7c:	7e 3a                	jle    c0106bb8 <_svfiprintf_r+0x898>
c0106b7e:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0106b84:	89 44 24 08          	mov    %eax,0x8(%esp)
c0106b88:	8b 45 0c             	mov    0xc(%ebp),%eax
c0106b8b:	89 44 24 04          	mov    %eax,0x4(%esp)
c0106b8f:	8b 45 08             	mov    0x8(%ebp),%eax
c0106b92:	89 04 24             	mov    %eax,(%esp)
c0106b95:	e8 96 f5 ff ff       	call   c0106130 <__ssprint_r>
c0106b9a:	85 c0                	test   %eax,%eax
c0106b9c:	0f 85 86 01 00 00    	jne    c0106d28 <_svfiprintf_r+0xa08>
c0106ba2:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0106ba8:	8d 75 a8             	lea    -0x58(%ebp),%esi
c0106bab:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0106bb1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0106bb8:	89 1e                	mov    %ebx,(%esi)
c0106bba:	8b 9d 58 ff ff ff    	mov    -0xa8(%ebp),%ebx
c0106bc0:	83 c0 01             	add    $0x1,%eax
c0106bc3:	83 c6 08             	add    $0x8,%esi
c0106bc6:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0106bcc:	89 5e fc             	mov    %ebx,-0x4(%esi)
c0106bcf:	01 da                	add    %ebx,%edx
c0106bd1:	83 f8 07             	cmp    $0x7,%eax
c0106bd4:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0106bda:	0f 8f 80 02 00 00    	jg     c0106e60 <_svfiprintf_r+0xb40>
c0106be0:	f6 85 64 ff ff ff 04 	testb  $0x4,-0x9c(%ebp)
c0106be7:	0f 84 b9 00 00 00    	je     c0106ca6 <_svfiprintf_r+0x986>
c0106bed:	8b bd 54 ff ff ff    	mov    -0xac(%ebp),%edi
c0106bf3:	2b bd 60 ff ff ff    	sub    -0xa0(%ebp),%edi
c0106bf9:	85 ff                	test   %edi,%edi
c0106bfb:	0f 8e a5 00 00 00    	jle    c0106ca6 <_svfiprintf_r+0x986>
c0106c01:	83 ff 10             	cmp    $0x10,%edi
c0106c04:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0106c0a:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c0106c10:	7e 71                	jle    c0106c83 <_svfiprintf_r+0x963>
c0106c12:	89 f1                	mov    %esi,%ecx
c0106c14:	8b 75 08             	mov    0x8(%ebp),%esi
c0106c17:	eb 0f                	jmp    c0106c28 <_svfiprintf_r+0x908>
c0106c19:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0106c20:	83 ef 10             	sub    $0x10,%edi
c0106c23:	83 ff 10             	cmp    $0x10,%edi
c0106c26:	7e 59                	jle    c0106c81 <_svfiprintf_r+0x961>
c0106c28:	83 c0 01             	add    $0x1,%eax
c0106c2b:	83 c2 10             	add    $0x10,%edx
c0106c2e:	c7 01 5c 85 10 c0    	movl   $0xc010855c,(%ecx)
c0106c34:	83 c1 08             	add    $0x8,%ecx
c0106c37:	c7 41 fc 10 00 00 00 	movl   $0x10,-0x4(%ecx)
c0106c3e:	83 f8 07             	cmp    $0x7,%eax
c0106c41:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0106c47:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0106c4d:	7e d1                	jle    c0106c20 <_svfiprintf_r+0x900>
c0106c4f:	8b 45 0c             	mov    0xc(%ebp),%eax
c0106c52:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0106c56:	89 34 24             	mov    %esi,(%esp)
c0106c59:	89 44 24 04          	mov    %eax,0x4(%esp)
c0106c5d:	e8 ce f4 ff ff       	call   c0106130 <__ssprint_r>
c0106c62:	85 c0                	test   %eax,%eax
c0106c64:	0f 85 be 00 00 00    	jne    c0106d28 <_svfiprintf_r+0xa08>
c0106c6a:	83 ef 10             	sub    $0x10,%edi
c0106c6d:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0106c73:	83 ff 10             	cmp    $0x10,%edi
c0106c76:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0106c7c:	8d 4d a8             	lea    -0x58(%ebp),%ecx
c0106c7f:	7f a7                	jg     c0106c28 <_svfiprintf_r+0x908>
c0106c81:	89 ce                	mov    %ecx,%esi
c0106c83:	83 c0 01             	add    $0x1,%eax
c0106c86:	01 fa                	add    %edi,%edx
c0106c88:	83 f8 07             	cmp    $0x7,%eax
c0106c8b:	c7 06 5c 85 10 c0    	movl   $0xc010855c,(%esi)
c0106c91:	89 7e 04             	mov    %edi,0x4(%esi)
c0106c94:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0106c9a:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0106ca0:	0f 8f ee 02 00 00    	jg     c0106f94 <_svfiprintf_r+0xc74>
c0106ca6:	8b 85 54 ff ff ff    	mov    -0xac(%ebp),%eax
c0106cac:	8b b5 60 ff ff ff    	mov    -0xa0(%ebp),%esi
c0106cb2:	39 c6                	cmp    %eax,%esi
c0106cb4:	0f 4d c6             	cmovge %esi,%eax
c0106cb7:	01 85 50 ff ff ff    	add    %eax,-0xb0(%ebp)
c0106cbd:	85 d2                	test   %edx,%edx
c0106cbf:	0f 85 d3 01 00 00    	jne    c0106e98 <_svfiprintf_r+0xb78>
c0106cc5:	c7 85 78 ff ff ff 00 	movl   $0x0,-0x88(%ebp)
c0106ccc:	00 00 00 
c0106ccf:	8d 75 a8             	lea    -0x58(%ebp),%esi
c0106cd2:	e9 a7 f6 ff ff       	jmp    c010637e <_svfiprintf_r+0x5e>
c0106cd7:	90                   	nop
c0106cd8:	84 d2                	test   %dl,%dl
c0106cda:	75 6c                	jne    c0106d48 <_svfiprintf_r+0xa28>
c0106cdc:	f6 85 64 ff ff ff 01 	testb  $0x1,-0x9c(%ebp)
c0106ce3:	74 63                	je     c0106d48 <_svfiprintf_r+0xa28>
c0106ce5:	8b 85 3c ff ff ff    	mov    -0xc4(%ebp),%eax
c0106ceb:	8d 5d a7             	lea    -0x59(%ebp),%ebx
c0106cee:	c6 45 a7 30          	movb   $0x30,-0x59(%ebp)
c0106cf2:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c0106cf8:	e9 13 f8 ff ff       	jmp    c0106510 <_svfiprintf_r+0x1f0>
c0106cfd:	8b 85 7c ff ff ff    	mov    -0x84(%ebp),%eax
c0106d03:	85 c0                	test   %eax,%eax
c0106d05:	74 21                	je     c0106d28 <_svfiprintf_r+0xa08>
c0106d07:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0106d0d:	89 44 24 08          	mov    %eax,0x8(%esp)
c0106d11:	8b 45 0c             	mov    0xc(%ebp),%eax
c0106d14:	89 44 24 04          	mov    %eax,0x4(%esp)
c0106d18:	8b 45 08             	mov    0x8(%ebp),%eax
c0106d1b:	89 04 24             	mov    %eax,(%esp)
c0106d1e:	e8 0d f4 ff ff       	call   c0106130 <__ssprint_r>
c0106d23:	90                   	nop
c0106d24:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0106d28:	8b 75 0c             	mov    0xc(%ebp),%esi
c0106d2b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c0106d30:	f6 46 0c 40          	testb  $0x40,0xc(%esi)
c0106d34:	0f 44 85 50 ff ff ff 	cmove  -0xb0(%ebp),%eax
c0106d3b:	81 c4 cc 00 00 00    	add    $0xcc,%esp
c0106d41:	5b                   	pop    %ebx
c0106d42:	5e                   	pop    %esi
c0106d43:	5f                   	pop    %edi
c0106d44:	5d                   	pop    %ebp
c0106d45:	c3                   	ret    
c0106d46:	66 90                	xchg   %ax,%ax
c0106d48:	c7 85 58 ff ff ff 00 	movl   $0x0,-0xa8(%ebp)
c0106d4f:	00 00 00 
c0106d52:	8d 5d a8             	lea    -0x58(%ebp),%ebx
c0106d55:	e9 b6 f7 ff ff       	jmp    c0106510 <_svfiprintf_r+0x1f0>
c0106d5a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0106d60:	8b bd 54 ff ff ff    	mov    -0xac(%ebp),%edi
c0106d66:	2b bd 60 ff ff ff    	sub    -0xa0(%ebp),%edi
c0106d6c:	85 ff                	test   %edi,%edi
c0106d6e:	0f 8e 4f fd ff ff    	jle    c0106ac3 <_svfiprintf_r+0x7a3>
c0106d74:	83 ff 10             	cmp    $0x10,%edi
c0106d77:	0f 8e 7f 00 00 00    	jle    c0106dfc <_svfiprintf_r+0xadc>
c0106d7d:	89 9d 4c ff ff ff    	mov    %ebx,-0xb4(%ebp)
c0106d83:	89 f1                	mov    %esi,%ecx
c0106d85:	8b 5d 08             	mov    0x8(%ebp),%ebx
c0106d88:	8b 75 0c             	mov    0xc(%ebp),%esi
c0106d8b:	eb 0b                	jmp    c0106d98 <_svfiprintf_r+0xa78>
c0106d8d:	8d 76 00             	lea    0x0(%esi),%esi
c0106d90:	83 ef 10             	sub    $0x10,%edi
c0106d93:	83 ff 10             	cmp    $0x10,%edi
c0106d96:	7e 5c                	jle    c0106df4 <_svfiprintf_r+0xad4>
c0106d98:	83 c0 01             	add    $0x1,%eax
c0106d9b:	83 c2 10             	add    $0x10,%edx
c0106d9e:	c7 01 4c 85 10 c0    	movl   $0xc010854c,(%ecx)
c0106da4:	83 c1 08             	add    $0x8,%ecx
c0106da7:	c7 41 fc 10 00 00 00 	movl   $0x10,-0x4(%ecx)
c0106dae:	83 f8 07             	cmp    $0x7,%eax
c0106db1:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0106db7:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0106dbd:	7e d1                	jle    c0106d90 <_svfiprintf_r+0xa70>
c0106dbf:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0106dc5:	89 44 24 08          	mov    %eax,0x8(%esp)
c0106dc9:	89 74 24 04          	mov    %esi,0x4(%esp)
c0106dcd:	89 1c 24             	mov    %ebx,(%esp)
c0106dd0:	e8 5b f3 ff ff       	call   c0106130 <__ssprint_r>
c0106dd5:	85 c0                	test   %eax,%eax
c0106dd7:	0f 85 4b ff ff ff    	jne    c0106d28 <_svfiprintf_r+0xa08>
c0106ddd:	83 ef 10             	sub    $0x10,%edi
c0106de0:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0106de6:	83 ff 10             	cmp    $0x10,%edi
c0106de9:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0106def:	8d 4d a8             	lea    -0x58(%ebp),%ecx
c0106df2:	7f a4                	jg     c0106d98 <_svfiprintf_r+0xa78>
c0106df4:	8b 9d 4c ff ff ff    	mov    -0xb4(%ebp),%ebx
c0106dfa:	89 ce                	mov    %ecx,%esi
c0106dfc:	83 c0 01             	add    $0x1,%eax
c0106dff:	01 fa                	add    %edi,%edx
c0106e01:	c7 06 4c 85 10 c0    	movl   $0xc010854c,(%esi)
c0106e07:	83 c6 08             	add    $0x8,%esi
c0106e0a:	89 7e fc             	mov    %edi,-0x4(%esi)
c0106e0d:	83 f8 07             	cmp    $0x7,%eax
c0106e10:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0106e16:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0106e1c:	0f 8e a1 fc ff ff    	jle    c0106ac3 <_svfiprintf_r+0x7a3>
c0106e22:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0106e28:	89 44 24 08          	mov    %eax,0x8(%esp)
c0106e2c:	8b 45 0c             	mov    0xc(%ebp),%eax
c0106e2f:	89 44 24 04          	mov    %eax,0x4(%esp)
c0106e33:	8b 45 08             	mov    0x8(%ebp),%eax
c0106e36:	89 04 24             	mov    %eax,(%esp)
c0106e39:	e8 f2 f2 ff ff       	call   c0106130 <__ssprint_r>
c0106e3e:	85 c0                	test   %eax,%eax
c0106e40:	0f 85 e2 fe ff ff    	jne    c0106d28 <_svfiprintf_r+0xa08>
c0106e46:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0106e4c:	8d 75 a8             	lea    -0x58(%ebp),%esi
c0106e4f:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0106e55:	e9 69 fc ff ff       	jmp    c0106ac3 <_svfiprintf_r+0x7a3>
c0106e5a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0106e60:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0106e66:	89 44 24 08          	mov    %eax,0x8(%esp)
c0106e6a:	8b 45 0c             	mov    0xc(%ebp),%eax
c0106e6d:	89 44 24 04          	mov    %eax,0x4(%esp)
c0106e71:	8b 45 08             	mov    0x8(%ebp),%eax
c0106e74:	89 04 24             	mov    %eax,(%esp)
c0106e77:	e8 b4 f2 ff ff       	call   c0106130 <__ssprint_r>
c0106e7c:	85 c0                	test   %eax,%eax
c0106e7e:	0f 85 a4 fe ff ff    	jne    c0106d28 <_svfiprintf_r+0xa08>
c0106e84:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0106e8a:	8d 75 a8             	lea    -0x58(%ebp),%esi
c0106e8d:	e9 4e fd ff ff       	jmp    c0106be0 <_svfiprintf_r+0x8c0>
c0106e92:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0106e98:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0106e9e:	89 44 24 08          	mov    %eax,0x8(%esp)
c0106ea2:	8b 45 0c             	mov    0xc(%ebp),%eax
c0106ea5:	89 44 24 04          	mov    %eax,0x4(%esp)
c0106ea9:	8b 45 08             	mov    0x8(%ebp),%eax
c0106eac:	89 04 24             	mov    %eax,(%esp)
c0106eaf:	e8 7c f2 ff ff       	call   c0106130 <__ssprint_r>
c0106eb4:	85 c0                	test   %eax,%eax
c0106eb6:	0f 84 09 fe ff ff    	je     c0106cc5 <_svfiprintf_r+0x9a5>
c0106ebc:	e9 67 fe ff ff       	jmp    c0106d28 <_svfiprintf_r+0xa08>
c0106ec1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0106ec8:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0106ece:	89 44 24 08          	mov    %eax,0x8(%esp)
c0106ed2:	8b 45 0c             	mov    0xc(%ebp),%eax
c0106ed5:	89 44 24 04          	mov    %eax,0x4(%esp)
c0106ed9:	8b 45 08             	mov    0x8(%ebp),%eax
c0106edc:	89 04 24             	mov    %eax,(%esp)
c0106edf:	e8 4c f2 ff ff       	call   c0106130 <__ssprint_r>
c0106ee4:	85 c0                	test   %eax,%eax
c0106ee6:	0f 85 3c fe ff ff    	jne    c0106d28 <_svfiprintf_r+0xa08>
c0106eec:	8d 75 a8             	lea    -0x58(%ebp),%esi
c0106eef:	e9 e9 f4 ff ff       	jmp    c01063dd <_svfiprintf_r+0xbd>
c0106ef4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0106ef8:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0106efe:	89 44 24 08          	mov    %eax,0x8(%esp)
c0106f02:	8b 45 0c             	mov    0xc(%ebp),%eax
c0106f05:	89 44 24 04          	mov    %eax,0x4(%esp)
c0106f09:	8b 45 08             	mov    0x8(%ebp),%eax
c0106f0c:	89 04 24             	mov    %eax,(%esp)
c0106f0f:	e8 1c f2 ff ff       	call   c0106130 <__ssprint_r>
c0106f14:	85 c0                	test   %eax,%eax
c0106f16:	0f 85 0c fe ff ff    	jne    c0106d28 <_svfiprintf_r+0xa08>
c0106f1c:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0106f22:	8d 75 a8             	lea    -0x58(%ebp),%esi
c0106f25:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0106f2b:	e9 83 fb ff ff       	jmp    c0106ab3 <_svfiprintf_r+0x793>
c0106f30:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0106f36:	89 44 24 08          	mov    %eax,0x8(%esp)
c0106f3a:	8b 45 0c             	mov    0xc(%ebp),%eax
c0106f3d:	89 44 24 04          	mov    %eax,0x4(%esp)
c0106f41:	8b 45 08             	mov    0x8(%ebp),%eax
c0106f44:	89 04 24             	mov    %eax,(%esp)
c0106f47:	e8 e4 f1 ff ff       	call   c0106130 <__ssprint_r>
c0106f4c:	85 c0                	test   %eax,%eax
c0106f4e:	0f 85 d4 fd ff ff    	jne    c0106d28 <_svfiprintf_r+0xa08>
c0106f54:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0106f5a:	8d 75 a8             	lea    -0x58(%ebp),%esi
c0106f5d:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0106f63:	e9 13 fb ff ff       	jmp    c0106a7b <_svfiprintf_r+0x75b>
c0106f68:	83 f9 09             	cmp    $0x9,%ecx
c0106f6b:	76 56                	jbe    c0106fc3 <_svfiprintf_r+0xca3>
c0106f6d:	8d 5d a8             	lea    -0x58(%ebp),%ebx
c0106f70:	b8 cd cc cc cc       	mov    $0xcccccccd,%eax
c0106f75:	83 eb 01             	sub    $0x1,%ebx
c0106f78:	f7 e1                	mul    %ecx
c0106f7a:	c1 ea 03             	shr    $0x3,%edx
c0106f7d:	8d 04 92             	lea    (%edx,%edx,4),%eax
c0106f80:	01 c0                	add    %eax,%eax
c0106f82:	29 c1                	sub    %eax,%ecx
c0106f84:	83 c1 30             	add    $0x30,%ecx
c0106f87:	85 d2                	test   %edx,%edx
c0106f89:	88 0b                	mov    %cl,(%ebx)
c0106f8b:	89 d1                	mov    %edx,%ecx
c0106f8d:	75 e1                	jne    c0106f70 <_svfiprintf_r+0xc50>
c0106f8f:	e9 71 f5 ff ff       	jmp    c0106505 <_svfiprintf_r+0x1e5>
c0106f94:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0106f9a:	89 44 24 08          	mov    %eax,0x8(%esp)
c0106f9e:	8b 45 0c             	mov    0xc(%ebp),%eax
c0106fa1:	89 44 24 04          	mov    %eax,0x4(%esp)
c0106fa5:	8b 45 08             	mov    0x8(%ebp),%eax
c0106fa8:	89 04 24             	mov    %eax,(%esp)
c0106fab:	e8 80 f1 ff ff       	call   c0106130 <__ssprint_r>
c0106fb0:	85 c0                	test   %eax,%eax
c0106fb2:	0f 85 70 fd ff ff    	jne    c0106d28 <_svfiprintf_r+0xa08>
c0106fb8:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0106fbe:	e9 e3 fc ff ff       	jmp    c0106ca6 <_svfiprintf_r+0x986>
c0106fc3:	8b 85 3c ff ff ff    	mov    -0xc4(%ebp),%eax
c0106fc9:	83 c1 30             	add    $0x30,%ecx
c0106fcc:	88 4d a7             	mov    %cl,-0x59(%ebp)
c0106fcf:	8d 5d a7             	lea    -0x59(%ebp),%ebx
c0106fd2:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c0106fd8:	e9 33 f5 ff ff       	jmp    c0106510 <_svfiprintf_r+0x1f0>
c0106fdd:	8b 45 14             	mov    0x14(%ebp),%eax
c0106fe0:	8b 9d 50 ff ff ff    	mov    -0xb0(%ebp),%ebx
c0106fe6:	8b 00                	mov    (%eax),%eax
c0106fe8:	89 18                	mov    %ebx,(%eax)
c0106fea:	8b 45 14             	mov    0x14(%ebp),%eax
c0106fed:	83 c0 04             	add    $0x4,%eax
c0106ff0:	89 45 14             	mov    %eax,0x14(%ebp)
c0106ff3:	e9 86 f3 ff ff       	jmp    c010637e <_svfiprintf_r+0x5e>
c0106ff8:	0f b7 0b             	movzwl (%ebx),%ecx
c0106ffb:	83 c3 04             	add    $0x4,%ebx
c0106ffe:	89 5d 14             	mov    %ebx,0x14(%ebp)
c0107001:	e9 95 f8 ff ff       	jmp    c010689b <_svfiprintf_r+0x57b>
c0107006:	0f bf 08             	movswl (%eax),%ecx
c0107009:	83 c0 04             	add    $0x4,%eax
c010700c:	89 45 14             	mov    %eax,0x14(%ebp)
c010700f:	85 c9                	test   %ecx,%ecx
c0107011:	0f 89 0d f7 ff ff    	jns    c0106724 <_svfiprintf_r+0x404>
c0107017:	f7 d9                	neg    %ecx
c0107019:	bf 2d 00 00 00       	mov    $0x2d,%edi
c010701e:	c6 85 71 ff ff ff 2d 	movb   $0x2d,-0x8f(%ebp)
c0107025:	ba 01 00 00 00       	mov    $0x1,%edx
c010702a:	e9 7a f4 ff ff       	jmp    c01064a9 <_svfiprintf_r+0x189>
c010702f:	89 1c 24             	mov    %ebx,(%esp)
c0107032:	e8 79 f0 ff ff       	call   c01060b0 <strlen>
c0107037:	8b 95 60 ff ff ff    	mov    -0xa0(%ebp),%edx
c010703d:	0f b6 bd 71 ff ff ff 	movzbl -0x8f(%ebp),%edi
c0107044:	c7 85 5c ff ff ff 00 	movl   $0x0,-0xa4(%ebp)
c010704b:	00 00 00 
c010704e:	89 55 14             	mov    %edx,0x14(%ebp)
c0107051:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c0107057:	e9 b4 f4 ff ff       	jmp    c0106510 <_svfiprintf_r+0x1f0>
c010705c:	8b 45 08             	mov    0x8(%ebp),%eax
c010705f:	c7 44 24 04 40 00 00 	movl   $0x40,0x4(%esp)
c0107066:	00 
c0107067:	89 04 24             	mov    %eax,(%esp)
c010706a:	e8 41 d9 ff ff       	call   c01049b0 <_malloc_r>
c010706f:	8b 75 0c             	mov    0xc(%ebp),%esi
c0107072:	85 c0                	test   %eax,%eax
c0107074:	89 06                	mov    %eax,(%esi)
c0107076:	89 46 10             	mov    %eax,0x10(%esi)
c0107079:	0f 84 a3 00 00 00    	je     c0107122 <_svfiprintf_r+0xe02>
c010707f:	8b 45 0c             	mov    0xc(%ebp),%eax
c0107082:	c7 40 14 40 00 00 00 	movl   $0x40,0x14(%eax)
c0107089:	e9 b2 f2 ff ff       	jmp    c0106340 <_svfiprintf_r+0x20>
c010708e:	8b bd 5c ff ff ff    	mov    -0xa4(%ebp),%edi
c0107094:	b8 06 00 00 00       	mov    $0x6,%eax
c0107099:	89 55 14             	mov    %edx,0x14(%ebp)
c010709c:	83 ff 06             	cmp    $0x6,%edi
c010709f:	0f 46 c7             	cmovbe %edi,%eax
c01070a2:	85 c0                	test   %eax,%eax
c01070a4:	0f 49 d8             	cmovns %eax,%ebx
c01070a7:	89 9d 60 ff ff ff    	mov    %ebx,-0xa0(%ebp)
c01070ad:	bb 9c 80 10 c0       	mov    $0xc010809c,%ebx
c01070b2:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c01070b8:	e9 61 f8 ff ff       	jmp    c010691e <_svfiprintf_r+0x5fe>
c01070bd:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
c01070c3:	0f b6 bd 71 ff ff ff 	movzbl -0x8f(%ebp),%edi
c01070ca:	89 55 14             	mov    %edx,0x14(%ebp)
c01070cd:	c7 85 5c ff ff ff 00 	movl   $0x0,-0xa4(%ebp)
c01070d4:	00 00 00 
c01070d7:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c01070dd:	e9 2e f4 ff ff       	jmp    c0106510 <_svfiprintf_r+0x1f0>
c01070e2:	89 da                	mov    %ebx,%edx
c01070e4:	c7 85 5c ff ff ff 00 	movl   $0x0,-0xa4(%ebp)
c01070eb:	00 00 00 
c01070ee:	e9 29 f3 ff ff       	jmp    c010641c <_svfiprintf_r+0xfc>
c01070f3:	8b 4d 14             	mov    0x14(%ebp),%ecx
c01070f6:	89 da                	mov    %ebx,%edx
c01070f8:	8b 45 14             	mov    0x14(%ebp),%eax
c01070fb:	8b 09                	mov    (%ecx),%ecx
c01070fd:	83 c0 04             	add    $0x4,%eax
c0107100:	89 45 14             	mov    %eax,0x14(%ebp)
c0107103:	85 c9                	test   %ecx,%ecx
c0107105:	89 8d 5c ff ff ff    	mov    %ecx,-0xa4(%ebp)
c010710b:	0f 89 26 f3 ff ff    	jns    c0106437 <_svfiprintf_r+0x117>
c0107111:	c7 85 5c ff ff ff ff 	movl   $0xffffffff,-0xa4(%ebp)
c0107118:	ff ff ff 
c010711b:	89 d0                	mov    %edx,%eax
c010711d:	e9 f4 f2 ff ff       	jmp    c0106416 <_svfiprintf_r+0xf6>
c0107122:	8b 45 08             	mov    0x8(%ebp),%eax
c0107125:	c7 00 0c 00 00 00    	movl   $0xc,(%eax)
c010712b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c0107130:	e9 06 fc ff ff       	jmp    c0106d3b <_svfiprintf_r+0xa1b>
c0107135:	66 90                	xchg   %ax,%ax
c0107137:	66 90                	xchg   %ax,%ax
c0107139:	66 90                	xchg   %ax,%ax
c010713b:	66 90                	xchg   %ax,%ax
c010713d:	66 90                	xchg   %ax,%ax
c010713f:	90                   	nop

c0107140 <_calloc_r>:
c0107140:	55                   	push   %ebp
c0107141:	89 e5                	mov    %esp,%ebp
c0107143:	53                   	push   %ebx
c0107144:	83 ec 14             	sub    $0x14,%esp
c0107147:	8b 45 10             	mov    0x10(%ebp),%eax
c010714a:	0f af 45 0c          	imul   0xc(%ebp),%eax
c010714e:	89 44 24 04          	mov    %eax,0x4(%esp)
c0107152:	8b 45 08             	mov    0x8(%ebp),%eax
c0107155:	89 04 24             	mov    %eax,(%esp)
c0107158:	e8 53 d8 ff ff       	call   c01049b0 <_malloc_r>
c010715d:	85 c0                	test   %eax,%eax
c010715f:	89 c3                	mov    %eax,%ebx
c0107161:	0f 84 91 00 00 00    	je     c01071f8 <_calloc_r+0xb8>
c0107167:	8b 40 fc             	mov    -0x4(%eax),%eax
c010716a:	83 e0 fc             	and    $0xfffffffc,%eax
c010716d:	83 e8 04             	sub    $0x4,%eax
c0107170:	83 f8 24             	cmp    $0x24,%eax
c0107173:	77 63                	ja     c01071d8 <_calloc_r+0x98>
c0107175:	83 f8 13             	cmp    $0x13,%eax
c0107178:	89 da                	mov    %ebx,%edx
c010717a:	77 1c                	ja     c0107198 <_calloc_r+0x58>
c010717c:	c7 02 00 00 00 00    	movl   $0x0,(%edx)
c0107182:	89 d8                	mov    %ebx,%eax
c0107184:	c7 42 04 00 00 00 00 	movl   $0x0,0x4(%edx)
c010718b:	c7 42 08 00 00 00 00 	movl   $0x0,0x8(%edx)
c0107192:	83 c4 14             	add    $0x14,%esp
c0107195:	5b                   	pop    %ebx
c0107196:	5d                   	pop    %ebp
c0107197:	c3                   	ret    
c0107198:	83 f8 1b             	cmp    $0x1b,%eax
c010719b:	c7 03 00 00 00 00    	movl   $0x0,(%ebx)
c01071a1:	8d 53 08             	lea    0x8(%ebx),%edx
c01071a4:	c7 43 04 00 00 00 00 	movl   $0x0,0x4(%ebx)
c01071ab:	76 cf                	jbe    c010717c <_calloc_r+0x3c>
c01071ad:	83 f8 24             	cmp    $0x24,%eax
c01071b0:	c7 43 08 00 00 00 00 	movl   $0x0,0x8(%ebx)
c01071b7:	8d 53 10             	lea    0x10(%ebx),%edx
c01071ba:	c7 43 0c 00 00 00 00 	movl   $0x0,0xc(%ebx)
c01071c1:	75 b9                	jne    c010717c <_calloc_r+0x3c>
c01071c3:	c7 43 10 00 00 00 00 	movl   $0x0,0x10(%ebx)
c01071ca:	8d 53 18             	lea    0x18(%ebx),%edx
c01071cd:	c7 43 14 00 00 00 00 	movl   $0x0,0x14(%ebx)
c01071d4:	eb a6                	jmp    c010717c <_calloc_r+0x3c>
c01071d6:	66 90                	xchg   %ax,%ax
c01071d8:	89 1c 24             	mov    %ebx,(%esp)
c01071db:	89 44 24 08          	mov    %eax,0x8(%esp)
c01071df:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c01071e6:	00 
c01071e7:	e8 5c a2 ff ff       	call   c0101448 <memset>
c01071ec:	83 c4 14             	add    $0x14,%esp
c01071ef:	89 d8                	mov    %ebx,%eax
c01071f1:	5b                   	pop    %ebx
c01071f2:	5d                   	pop    %ebp
c01071f3:	c3                   	ret    
c01071f4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c01071f8:	31 c0                	xor    %eax,%eax
c01071fa:	eb 96                	jmp    c0107192 <_calloc_r+0x52>
c01071fc:	66 90                	xchg   %ax,%ax
c01071fe:	66 90                	xchg   %ax,%ax

c0107200 <_malloc_trim_r>:
c0107200:	55                   	push   %ebp
c0107201:	89 e5                	mov    %esp,%ebp
c0107203:	57                   	push   %edi
c0107204:	56                   	push   %esi
c0107205:	53                   	push   %ebx
c0107206:	83 ec 1c             	sub    $0x1c,%esp
c0107209:	8b 75 08             	mov    0x8(%ebp),%esi
c010720c:	89 34 24             	mov    %esi,(%esp)
c010720f:	e8 7c df ff ff       	call   c0105190 <__malloc_lock>
c0107214:	a1 e8 a9 10 c0       	mov    0xc010a9e8,%eax
c0107219:	8b 58 04             	mov    0x4(%eax),%ebx
c010721c:	83 e3 fc             	and    $0xfffffffc,%ebx
c010721f:	89 d8                	mov    %ebx,%eax
c0107221:	2b 45 0c             	sub    0xc(%ebp),%eax
c0107224:	05 ef 0f 00 00       	add    $0xfef,%eax
c0107229:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c010722e:	8d b8 00 f0 ff ff    	lea    -0x1000(%eax),%edi
c0107234:	81 ff ff 0f 00 00    	cmp    $0xfff,%edi
c010723a:	7e 1c                	jle    c0107258 <_malloc_trim_r+0x58>
c010723c:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c0107243:	00 
c0107244:	89 34 24             	mov    %esi,(%esp)
c0107247:	e8 44 ed ff ff       	call   c0105f90 <_sbrk_r>
c010724c:	8b 15 e8 a9 10 c0    	mov    0xc010a9e8,%edx
c0107252:	01 da                	add    %ebx,%edx
c0107254:	39 d0                	cmp    %edx,%eax
c0107256:	74 18                	je     c0107270 <_malloc_trim_r+0x70>
c0107258:	89 34 24             	mov    %esi,(%esp)
c010725b:	e8 40 df ff ff       	call   c01051a0 <__malloc_unlock>
c0107260:	83 c4 1c             	add    $0x1c,%esp
c0107263:	31 c0                	xor    %eax,%eax
c0107265:	5b                   	pop    %ebx
c0107266:	5e                   	pop    %esi
c0107267:	5f                   	pop    %edi
c0107268:	5d                   	pop    %ebp
c0107269:	c3                   	ret    
c010726a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0107270:	89 f8                	mov    %edi,%eax
c0107272:	f7 d8                	neg    %eax
c0107274:	89 44 24 04          	mov    %eax,0x4(%esp)
c0107278:	89 34 24             	mov    %esi,(%esp)
c010727b:	e8 10 ed ff ff       	call   c0105f90 <_sbrk_r>
c0107280:	83 f8 ff             	cmp    $0xffffffff,%eax
c0107283:	74 2b                	je     c01072b0 <_malloc_trim_r+0xb0>
c0107285:	a1 e8 a9 10 c0       	mov    0xc010a9e8,%eax
c010728a:	29 fb                	sub    %edi,%ebx
c010728c:	83 cb 01             	or     $0x1,%ebx
c010728f:	29 3d 20 1f 16 c0    	sub    %edi,0xc0161f20
c0107295:	89 58 04             	mov    %ebx,0x4(%eax)
c0107298:	89 34 24             	mov    %esi,(%esp)
c010729b:	e8 00 df ff ff       	call   c01051a0 <__malloc_unlock>
c01072a0:	83 c4 1c             	add    $0x1c,%esp
c01072a3:	b8 01 00 00 00       	mov    $0x1,%eax
c01072a8:	5b                   	pop    %ebx
c01072a9:	5e                   	pop    %esi
c01072aa:	5f                   	pop    %edi
c01072ab:	5d                   	pop    %ebp
c01072ac:	c3                   	ret    
c01072ad:	8d 76 00             	lea    0x0(%esi),%esi
c01072b0:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c01072b7:	00 
c01072b8:	89 34 24             	mov    %esi,(%esp)
c01072bb:	e8 d0 ec ff ff       	call   c0105f90 <_sbrk_r>
c01072c0:	8b 15 e8 a9 10 c0    	mov    0xc010a9e8,%edx
c01072c6:	89 c1                	mov    %eax,%ecx
c01072c8:	29 d1                	sub    %edx,%ecx
c01072ca:	83 f9 0f             	cmp    $0xf,%ecx
c01072cd:	7e 89                	jle    c0107258 <_malloc_trim_r+0x58>
c01072cf:	2b 05 c0 a9 10 c0    	sub    0xc010a9c0,%eax
c01072d5:	83 c9 01             	or     $0x1,%ecx
c01072d8:	89 4a 04             	mov    %ecx,0x4(%edx)
c01072db:	a3 20 1f 16 c0       	mov    %eax,0xc0161f20
c01072e0:	e9 73 ff ff ff       	jmp    c0107258 <_malloc_trim_r+0x58>
c01072e5:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c01072e9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c01072f0 <_free_r>:
c01072f0:	55                   	push   %ebp
c01072f1:	89 e5                	mov    %esp,%ebp
c01072f3:	57                   	push   %edi
c01072f4:	56                   	push   %esi
c01072f5:	53                   	push   %ebx
c01072f6:	83 ec 1c             	sub    $0x1c,%esp
c01072f9:	8b 75 0c             	mov    0xc(%ebp),%esi
c01072fc:	8b 45 08             	mov    0x8(%ebp),%eax
c01072ff:	85 f6                	test   %esi,%esi
c0107301:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0107304:	0f 84 fe 00 00 00    	je     c0107408 <_free_r+0x118>
c010730a:	89 04 24             	mov    %eax,(%esp)
c010730d:	e8 7e de ff ff       	call   c0105190 <__malloc_lock>
c0107312:	8b 7e fc             	mov    -0x4(%esi),%edi
c0107315:	8d 56 f8             	lea    -0x8(%esi),%edx
c0107318:	89 f8                	mov    %edi,%eax
c010731a:	83 e0 fe             	and    $0xfffffffe,%eax
c010731d:	8d 0c 02             	lea    (%edx,%eax,1),%ecx
c0107320:	8b 59 04             	mov    0x4(%ecx),%ebx
c0107323:	83 e3 fc             	and    $0xfffffffc,%ebx
c0107326:	39 0d e8 a9 10 c0    	cmp    %ecx,0xc010a9e8
c010732c:	0f 84 0e 01 00 00    	je     c0107440 <_free_r+0x150>
c0107332:	83 e7 01             	and    $0x1,%edi
c0107335:	89 59 04             	mov    %ebx,0x4(%ecx)
c0107338:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%ebp)
c010733f:	75 1f                	jne    c0107360 <_free_r+0x70>
c0107341:	8b 76 f8             	mov    -0x8(%esi),%esi
c0107344:	29 f2                	sub    %esi,%edx
c0107346:	01 f0                	add    %esi,%eax
c0107348:	8b 72 08             	mov    0x8(%edx),%esi
c010734b:	81 fe e8 a9 10 c0    	cmp    $0xc010a9e8,%esi
c0107351:	0f 84 39 01 00 00    	je     c0107490 <_free_r+0x1a0>
c0107357:	8b 7a 0c             	mov    0xc(%edx),%edi
c010735a:	89 7e 0c             	mov    %edi,0xc(%esi)
c010735d:	89 77 08             	mov    %esi,0x8(%edi)
c0107360:	f6 44 19 04 01       	testb  $0x1,0x4(%ecx,%ebx,1)
c0107365:	75 21                	jne    c0107388 <_free_r+0x98>
c0107367:	8b 75 e0             	mov    -0x20(%ebp),%esi
c010736a:	01 d8                	add    %ebx,%eax
c010736c:	8b 59 08             	mov    0x8(%ecx),%ebx
c010736f:	85 f6                	test   %esi,%esi
c0107371:	75 0c                	jne    c010737f <_free_r+0x8f>
c0107373:	81 fb e8 a9 10 c0    	cmp    $0xc010a9e8,%ebx
c0107379:	0f 84 21 01 00 00    	je     c01074a0 <_free_r+0x1b0>
c010737f:	8b 49 0c             	mov    0xc(%ecx),%ecx
c0107382:	89 4b 0c             	mov    %ecx,0xc(%ebx)
c0107385:	89 59 08             	mov    %ebx,0x8(%ecx)
c0107388:	89 c1                	mov    %eax,%ecx
c010738a:	83 c9 01             	or     $0x1,%ecx
c010738d:	89 4a 04             	mov    %ecx,0x4(%edx)
c0107390:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0107393:	89 04 02             	mov    %eax,(%edx,%eax,1)
c0107396:	85 c9                	test   %ecx,%ecx
c0107398:	75 56                	jne    c01073f0 <_free_r+0x100>
c010739a:	3d ff 01 00 00       	cmp    $0x1ff,%eax
c010739f:	76 6f                	jbe    c0107410 <_free_r+0x120>
c01073a1:	89 c1                	mov    %eax,%ecx
c01073a3:	c1 e9 09             	shr    $0x9,%ecx
c01073a6:	83 f9 04             	cmp    $0x4,%ecx
c01073a9:	0f 87 21 01 00 00    	ja     c01074d0 <_free_r+0x1e0>
c01073af:	89 c1                	mov    %eax,%ecx
c01073b1:	c1 e9 06             	shr    $0x6,%ecx
c01073b4:	83 c1 38             	add    $0x38,%ecx
c01073b7:	8d 1c 09             	lea    (%ecx,%ecx,1),%ebx
c01073ba:	8d 34 9d e0 a9 10 c0 	lea    -0x3fef5620(,%ebx,4),%esi
c01073c1:	8b 5e 08             	mov    0x8(%esi),%ebx
c01073c4:	39 f3                	cmp    %esi,%ebx
c01073c6:	0f 84 14 01 00 00    	je     c01074e0 <_free_r+0x1f0>
c01073cc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c01073d0:	8b 4b 04             	mov    0x4(%ebx),%ecx
c01073d3:	83 e1 fc             	and    $0xfffffffc,%ecx
c01073d6:	39 c8                	cmp    %ecx,%eax
c01073d8:	73 07                	jae    c01073e1 <_free_r+0xf1>
c01073da:	8b 5b 08             	mov    0x8(%ebx),%ebx
c01073dd:	39 de                	cmp    %ebx,%esi
c01073df:	75 ef                	jne    c01073d0 <_free_r+0xe0>
c01073e1:	8b 43 0c             	mov    0xc(%ebx),%eax
c01073e4:	89 42 0c             	mov    %eax,0xc(%edx)
c01073e7:	89 5a 08             	mov    %ebx,0x8(%edx)
c01073ea:	89 50 08             	mov    %edx,0x8(%eax)
c01073ed:	89 53 0c             	mov    %edx,0xc(%ebx)
c01073f0:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c01073f3:	89 45 08             	mov    %eax,0x8(%ebp)
c01073f6:	83 c4 1c             	add    $0x1c,%esp
c01073f9:	5b                   	pop    %ebx
c01073fa:	5e                   	pop    %esi
c01073fb:	5f                   	pop    %edi
c01073fc:	5d                   	pop    %ebp
c01073fd:	e9 9e dd ff ff       	jmp    c01051a0 <__malloc_unlock>
c0107402:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0107408:	83 c4 1c             	add    $0x1c,%esp
c010740b:	5b                   	pop    %ebx
c010740c:	5e                   	pop    %esi
c010740d:	5f                   	pop    %edi
c010740e:	5d                   	pop    %ebp
c010740f:	c3                   	ret    
c0107410:	c1 e8 03             	shr    $0x3,%eax
c0107413:	bb 01 00 00 00       	mov    $0x1,%ebx
c0107418:	89 c1                	mov    %eax,%ecx
c010741a:	c1 f9 02             	sar    $0x2,%ecx
c010741d:	8d 04 c5 e0 a9 10 c0 	lea    -0x3fef5620(,%eax,8),%eax
c0107424:	d3 e3                	shl    %cl,%ebx
c0107426:	8b 48 08             	mov    0x8(%eax),%ecx
c0107429:	09 1d e4 a9 10 c0    	or     %ebx,0xc010a9e4
c010742f:	89 42 0c             	mov    %eax,0xc(%edx)
c0107432:	89 4a 08             	mov    %ecx,0x8(%edx)
c0107435:	89 50 08             	mov    %edx,0x8(%eax)
c0107438:	89 51 0c             	mov    %edx,0xc(%ecx)
c010743b:	eb b3                	jmp    c01073f0 <_free_r+0x100>
c010743d:	8d 76 00             	lea    0x0(%esi),%esi
c0107440:	01 d8                	add    %ebx,%eax
c0107442:	83 e7 01             	and    $0x1,%edi
c0107445:	75 13                	jne    c010745a <_free_r+0x16a>
c0107447:	8b 4e f8             	mov    -0x8(%esi),%ecx
c010744a:	29 ca                	sub    %ecx,%edx
c010744c:	01 c8                	add    %ecx,%eax
c010744e:	8b 5a 08             	mov    0x8(%edx),%ebx
c0107451:	8b 4a 0c             	mov    0xc(%edx),%ecx
c0107454:	89 4b 0c             	mov    %ecx,0xc(%ebx)
c0107457:	89 59 08             	mov    %ebx,0x8(%ecx)
c010745a:	89 c1                	mov    %eax,%ecx
c010745c:	83 c9 01             	or     $0x1,%ecx
c010745f:	3b 05 c4 a9 10 c0    	cmp    0xc010a9c4,%eax
c0107465:	89 4a 04             	mov    %ecx,0x4(%edx)
c0107468:	89 15 e8 a9 10 c0    	mov    %edx,0xc010a9e8
c010746e:	72 80                	jb     c01073f0 <_free_r+0x100>
c0107470:	a1 50 1f 16 c0       	mov    0xc0161f50,%eax
c0107475:	89 44 24 04          	mov    %eax,0x4(%esp)
c0107479:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c010747c:	89 04 24             	mov    %eax,(%esp)
c010747f:	e8 7c fd ff ff       	call   c0107200 <_malloc_trim_r>
c0107484:	e9 67 ff ff ff       	jmp    c01073f0 <_free_r+0x100>
c0107489:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0107490:	c7 45 e0 01 00 00 00 	movl   $0x1,-0x20(%ebp)
c0107497:	e9 c4 fe ff ff       	jmp    c0107360 <_free_r+0x70>
c010749c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c01074a0:	89 c1                	mov    %eax,%ecx
c01074a2:	83 c9 01             	or     $0x1,%ecx
c01074a5:	89 15 f4 a9 10 c0    	mov    %edx,0xc010a9f4
c01074ab:	89 15 f0 a9 10 c0    	mov    %edx,0xc010a9f0
c01074b1:	c7 42 0c e8 a9 10 c0 	movl   $0xc010a9e8,0xc(%edx)
c01074b8:	c7 42 08 e8 a9 10 c0 	movl   $0xc010a9e8,0x8(%edx)
c01074bf:	89 4a 04             	mov    %ecx,0x4(%edx)
c01074c2:	89 04 02             	mov    %eax,(%edx,%eax,1)
c01074c5:	e9 26 ff ff ff       	jmp    c01073f0 <_free_r+0x100>
c01074ca:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c01074d0:	83 f9 14             	cmp    $0x14,%ecx
c01074d3:	77 23                	ja     c01074f8 <_free_r+0x208>
c01074d5:	83 c1 5b             	add    $0x5b,%ecx
c01074d8:	8d 1c 09             	lea    (%ecx,%ecx,1),%ebx
c01074db:	e9 da fe ff ff       	jmp    c01073ba <_free_r+0xca>
c01074e0:	c1 f9 02             	sar    $0x2,%ecx
c01074e3:	b8 01 00 00 00       	mov    $0x1,%eax
c01074e8:	d3 e0                	shl    %cl,%eax
c01074ea:	09 05 e4 a9 10 c0    	or     %eax,0xc010a9e4
c01074f0:	89 d8                	mov    %ebx,%eax
c01074f2:	e9 ed fe ff ff       	jmp    c01073e4 <_free_r+0xf4>
c01074f7:	90                   	nop
c01074f8:	83 f9 54             	cmp    $0x54,%ecx
c01074fb:	77 10                	ja     c010750d <_free_r+0x21d>
c01074fd:	89 c1                	mov    %eax,%ecx
c01074ff:	c1 e9 0c             	shr    $0xc,%ecx
c0107502:	83 c1 6e             	add    $0x6e,%ecx
c0107505:	8d 1c 09             	lea    (%ecx,%ecx,1),%ebx
c0107508:	e9 ad fe ff ff       	jmp    c01073ba <_free_r+0xca>
c010750d:	81 f9 54 01 00 00    	cmp    $0x154,%ecx
c0107513:	77 10                	ja     c0107525 <_free_r+0x235>
c0107515:	89 c1                	mov    %eax,%ecx
c0107517:	c1 e9 0f             	shr    $0xf,%ecx
c010751a:	83 c1 77             	add    $0x77,%ecx
c010751d:	8d 1c 09             	lea    (%ecx,%ecx,1),%ebx
c0107520:	e9 95 fe ff ff       	jmp    c01073ba <_free_r+0xca>
c0107525:	81 f9 54 05 00 00    	cmp    $0x554,%ecx
c010752b:	77 10                	ja     c010753d <_free_r+0x24d>
c010752d:	89 c1                	mov    %eax,%ecx
c010752f:	c1 e9 12             	shr    $0x12,%ecx
c0107532:	83 c1 7c             	add    $0x7c,%ecx
c0107535:	8d 1c 09             	lea    (%ecx,%ecx,1),%ebx
c0107538:	e9 7d fe ff ff       	jmp    c01073ba <_free_r+0xca>
c010753d:	bb fc 00 00 00       	mov    $0xfc,%ebx
c0107542:	b9 7e 00 00 00       	mov    $0x7e,%ecx
c0107547:	e9 6e fe ff ff       	jmp    c01073ba <_free_r+0xca>
c010754c:	66 90                	xchg   %ax,%ax
c010754e:	66 90                	xchg   %ax,%ax

c0107550 <memmove>:
c0107550:	55                   	push   %ebp
c0107551:	89 e5                	mov    %esp,%ebp
c0107553:	56                   	push   %esi
c0107554:	57                   	push   %edi
c0107555:	53                   	push   %ebx
c0107556:	8b 7d 08             	mov    0x8(%ebp),%edi
c0107559:	8b 4d 10             	mov    0x10(%ebp),%ecx
c010755c:	8b 75 0c             	mov    0xc(%ebp),%esi
c010755f:	fc                   	cld    
c0107560:	39 fe                	cmp    %edi,%esi
c0107562:	73 43                	jae    c01075a7 <memmove+0x57>
c0107564:	8d 5c 31 ff          	lea    -0x1(%ecx,%esi,1),%ebx
c0107568:	39 df                	cmp    %ebx,%edi
c010756a:	77 3b                	ja     c01075a7 <memmove+0x57>
c010756c:	01 ce                	add    %ecx,%esi
c010756e:	01 cf                	add    %ecx,%edi
c0107570:	fd                   	std    
c0107571:	83 f9 08             	cmp    $0x8,%ecx
c0107574:	76 2b                	jbe    c01075a1 <memmove+0x51>
c0107576:	89 fa                	mov    %edi,%edx
c0107578:	89 cb                	mov    %ecx,%ebx
c010757a:	83 e2 03             	and    $0x3,%edx
c010757d:	74 0c                	je     c010758b <memmove+0x3b>
c010757f:	89 d1                	mov    %edx,%ecx
c0107581:	4e                   	dec    %esi
c0107582:	4f                   	dec    %edi
c0107583:	29 cb                	sub    %ecx,%ebx
c0107585:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
c0107587:	89 d9                	mov    %ebx,%ecx
c0107589:	46                   	inc    %esi
c010758a:	47                   	inc    %edi
c010758b:	c1 e9 02             	shr    $0x2,%ecx
c010758e:	83 ee 04             	sub    $0x4,%esi
c0107591:	83 ef 04             	sub    $0x4,%edi
c0107594:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
c0107596:	83 c6 04             	add    $0x4,%esi
c0107599:	83 c7 04             	add    $0x4,%edi
c010759c:	89 d9                	mov    %ebx,%ecx
c010759e:	83 e1 03             	and    $0x3,%ecx
c01075a1:	4e                   	dec    %esi
c01075a2:	4f                   	dec    %edi
c01075a3:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
c01075a5:	eb 2a                	jmp    c01075d1 <memmove+0x81>
c01075a7:	83 f9 08             	cmp    $0x8,%ecx
c01075aa:	76 23                	jbe    c01075cf <memmove+0x7f>
c01075ac:	89 fa                	mov    %edi,%edx
c01075ae:	89 cb                	mov    %ecx,%ebx
c01075b0:	83 e2 03             	and    $0x3,%edx
c01075b3:	74 10                	je     c01075c5 <memmove+0x75>
c01075b5:	b9 04 00 00 00       	mov    $0x4,%ecx
c01075ba:	29 d1                	sub    %edx,%ecx
c01075bc:	83 e1 03             	and    $0x3,%ecx
c01075bf:	29 cb                	sub    %ecx,%ebx
c01075c1:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
c01075c3:	89 d9                	mov    %ebx,%ecx
c01075c5:	c1 e9 02             	shr    $0x2,%ecx
c01075c8:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
c01075ca:	89 d9                	mov    %ebx,%ecx
c01075cc:	83 e1 03             	and    $0x3,%ecx
c01075cf:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
c01075d1:	8b 45 08             	mov    0x8(%ebp),%eax
c01075d4:	fc                   	cld    
c01075d5:	8d 65 f4             	lea    -0xc(%ebp),%esp
c01075d8:	5b                   	pop    %ebx
c01075d9:	5f                   	pop    %edi
c01075da:	5e                   	pop    %esi
c01075db:	c9                   	leave  
c01075dc:	c3                   	ret    
c01075dd:	66 90                	xchg   %ax,%ax
c01075df:	90                   	nop

c01075e0 <_realloc_r>:
c01075e0:	55                   	push   %ebp
c01075e1:	89 e5                	mov    %esp,%ebp
c01075e3:	57                   	push   %edi
c01075e4:	56                   	push   %esi
c01075e5:	53                   	push   %ebx
c01075e6:	83 ec 3c             	sub    $0x3c,%esp
c01075e9:	8b 45 08             	mov    0x8(%ebp),%eax
c01075ec:	8b 7d 0c             	mov    0xc(%ebp),%edi
c01075ef:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c01075f2:	8b 45 10             	mov    0x10(%ebp),%eax
c01075f5:	85 ff                	test   %edi,%edi
c01075f7:	89 45 e0             	mov    %eax,-0x20(%ebp)
c01075fa:	0f 84 50 02 00 00    	je     c0107850 <_realloc_r+0x270>
c0107600:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0107603:	8d 77 f8             	lea    -0x8(%edi),%esi
c0107606:	89 04 24             	mov    %eax,(%esp)
c0107609:	e8 82 db ff ff       	call   c0105190 <__malloc_lock>
c010760e:	8b 47 fc             	mov    -0x4(%edi),%eax
c0107611:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0107614:	89 c3                	mov    %eax,%ebx
c0107616:	8d 51 0b             	lea    0xb(%ecx),%edx
c0107619:	83 e3 fc             	and    $0xfffffffc,%ebx
c010761c:	83 fa 16             	cmp    $0x16,%edx
c010761f:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c0107622:	0f 87 00 01 00 00    	ja     c0107728 <_realloc_r+0x148>
c0107628:	31 d2                	xor    %edx,%edx
c010762a:	c7 45 d8 10 00 00 00 	movl   $0x10,-0x28(%ebp)
c0107631:	c7 45 dc 10 00 00 00 	movl   $0x10,-0x24(%ebp)
c0107638:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c010763b:	39 4d dc             	cmp    %ecx,-0x24(%ebp)
c010763e:	0f 82 1c 02 00 00    	jb     c0107860 <_realloc_r+0x280>
c0107644:	84 d2                	test   %dl,%dl
c0107646:	0f 85 14 02 00 00    	jne    c0107860 <_realloc_r+0x280>
c010764c:	3b 5d d8             	cmp    -0x28(%ebp),%ebx
c010764f:	0f 8d eb 00 00 00    	jge    c0107740 <_realloc_r+0x160>
c0107655:	8b 0d e8 a9 10 c0    	mov    0xc010a9e8,%ecx
c010765b:	8d 14 1e             	lea    (%esi,%ebx,1),%edx
c010765e:	39 d1                	cmp    %edx,%ecx
c0107660:	89 4d cc             	mov    %ecx,-0x34(%ebp)
c0107663:	0f 84 6f 02 00 00    	je     c01078d8 <_realloc_r+0x2f8>
c0107669:	8b 4a 04             	mov    0x4(%edx),%ecx
c010766c:	89 c8                	mov    %ecx,%eax
c010766e:	83 e0 fe             	and    $0xfffffffe,%eax
c0107671:	f6 44 02 04 01       	testb  $0x1,0x4(%edx,%eax,1)
c0107676:	0f 84 f4 00 00 00    	je     c0107770 <_realloc_r+0x190>
c010767c:	c7 45 d0 00 00 00 00 	movl   $0x0,-0x30(%ebp)
c0107683:	31 d2                	xor    %edx,%edx
c0107685:	f6 45 d4 01          	testb  $0x1,-0x2c(%ebp)
c0107689:	0f 85 39 01 00 00    	jne    c01077c8 <_realloc_r+0x1e8>
c010768f:	89 f1                	mov    %esi,%ecx
c0107691:	2b 4f f8             	sub    -0x8(%edi),%ecx
c0107694:	8b 41 04             	mov    0x4(%ecx),%eax
c0107697:	83 e0 fc             	and    $0xfffffffc,%eax
c010769a:	85 d2                	test   %edx,%edx
c010769c:	0f 84 f6 02 00 00    	je     c0107998 <_realloc_r+0x3b8>
c01076a2:	3b 55 cc             	cmp    -0x34(%ebp),%edx
c01076a5:	0f 84 f5 02 00 00    	je     c01079a0 <_realloc_r+0x3c0>
c01076ab:	89 55 d4             	mov    %edx,-0x2c(%ebp)
c01076ae:	8b 55 d0             	mov    -0x30(%ebp),%edx
c01076b1:	01 d8                	add    %ebx,%eax
c01076b3:	01 c2                	add    %eax,%edx
c01076b5:	3b 55 d8             	cmp    -0x28(%ebp),%edx
c01076b8:	89 55 d0             	mov    %edx,-0x30(%ebp)
c01076bb:	8b 55 d4             	mov    -0x2c(%ebp),%edx
c01076be:	0f 8c ac 01 00 00    	jl     c0107870 <_realloc_r+0x290>
c01076c4:	8b 42 0c             	mov    0xc(%edx),%eax
c01076c7:	83 eb 04             	sub    $0x4,%ebx
c01076ca:	8b 52 08             	mov    0x8(%edx),%edx
c01076cd:	83 fb 24             	cmp    $0x24,%ebx
c01076d0:	8d 71 08             	lea    0x8(%ecx),%esi
c01076d3:	89 42 0c             	mov    %eax,0xc(%edx)
c01076d6:	89 50 08             	mov    %edx,0x8(%eax)
c01076d9:	8b 41 0c             	mov    0xc(%ecx),%eax
c01076dc:	8b 51 08             	mov    0x8(%ecx),%edx
c01076df:	89 42 0c             	mov    %eax,0xc(%edx)
c01076e2:	89 50 08             	mov    %edx,0x8(%eax)
c01076e5:	0f 87 85 03 00 00    	ja     c0107a70 <_realloc_r+0x490>
c01076eb:	83 fb 13             	cmp    $0x13,%ebx
c01076ee:	89 f0                	mov    %esi,%eax
c01076f0:	76 1a                	jbe    c010770c <_realloc_r+0x12c>
c01076f2:	8b 07                	mov    (%edi),%eax
c01076f4:	83 fb 1b             	cmp    $0x1b,%ebx
c01076f7:	89 41 08             	mov    %eax,0x8(%ecx)
c01076fa:	8b 47 04             	mov    0x4(%edi),%eax
c01076fd:	89 41 0c             	mov    %eax,0xc(%ecx)
c0107700:	0f 87 8f 03 00 00    	ja     c0107a95 <_realloc_r+0x4b5>
c0107706:	8d 41 10             	lea    0x10(%ecx),%eax
c0107709:	83 c7 08             	add    $0x8,%edi
c010770c:	8b 17                	mov    (%edi),%edx
c010770e:	8b 5d d0             	mov    -0x30(%ebp),%ebx
c0107711:	89 10                	mov    %edx,(%eax)
c0107713:	8b 57 04             	mov    0x4(%edi),%edx
c0107716:	89 50 04             	mov    %edx,0x4(%eax)
c0107719:	8b 57 08             	mov    0x8(%edi),%edx
c010771c:	89 f7                	mov    %esi,%edi
c010771e:	89 ce                	mov    %ecx,%esi
c0107720:	89 50 08             	mov    %edx,0x8(%eax)
c0107723:	8b 41 04             	mov    0x4(%ecx),%eax
c0107726:	eb 1b                	jmp    c0107743 <_realloc_r+0x163>
c0107728:	83 e2 f8             	and    $0xfffffff8,%edx
c010772b:	89 55 dc             	mov    %edx,-0x24(%ebp)
c010772e:	89 55 d8             	mov    %edx,-0x28(%ebp)
c0107731:	c1 ea 1f             	shr    $0x1f,%edx
c0107734:	e9 ff fe ff ff       	jmp    c0107638 <_realloc_r+0x58>
c0107739:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0107740:	8b 45 d4             	mov    -0x2c(%ebp),%eax
c0107743:	89 da                	mov    %ebx,%edx
c0107745:	2b 55 dc             	sub    -0x24(%ebp),%edx
c0107748:	83 fa 0f             	cmp    $0xf,%edx
c010774b:	77 4b                	ja     c0107798 <_realloc_r+0x1b8>
c010774d:	83 e0 01             	and    $0x1,%eax
c0107750:	09 d8                	or     %ebx,%eax
c0107752:	89 46 04             	mov    %eax,0x4(%esi)
c0107755:	83 4c 1e 04 01       	orl    $0x1,0x4(%esi,%ebx,1)
c010775a:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c010775d:	89 04 24             	mov    %eax,(%esp)
c0107760:	e8 3b da ff ff       	call   c01051a0 <__malloc_unlock>
c0107765:	89 f8                	mov    %edi,%eax
c0107767:	83 c4 3c             	add    $0x3c,%esp
c010776a:	5b                   	pop    %ebx
c010776b:	5e                   	pop    %esi
c010776c:	5f                   	pop    %edi
c010776d:	5d                   	pop    %ebp
c010776e:	c3                   	ret    
c010776f:	90                   	nop
c0107770:	83 e1 fc             	and    $0xfffffffc,%ecx
c0107773:	89 4d d0             	mov    %ecx,-0x30(%ebp)
c0107776:	01 d9                	add    %ebx,%ecx
c0107778:	3b 4d d8             	cmp    -0x28(%ebp),%ecx
c010777b:	0f 8c 04 ff ff ff    	jl     c0107685 <_realloc_r+0xa5>
c0107781:	8b 5a 0c             	mov    0xc(%edx),%ebx
c0107784:	8b 52 08             	mov    0x8(%edx),%edx
c0107787:	8b 45 d4             	mov    -0x2c(%ebp),%eax
c010778a:	89 5a 0c             	mov    %ebx,0xc(%edx)
c010778d:	89 53 08             	mov    %edx,0x8(%ebx)
c0107790:	89 cb                	mov    %ecx,%ebx
c0107792:	eb af                	jmp    c0107743 <_realloc_r+0x163>
c0107794:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0107798:	8b 5d dc             	mov    -0x24(%ebp),%ebx
c010779b:	83 e0 01             	and    $0x1,%eax
c010779e:	09 d8                	or     %ebx,%eax
c01077a0:	89 46 04             	mov    %eax,0x4(%esi)
c01077a3:	89 d0                	mov    %edx,%eax
c01077a5:	8d 0c 1e             	lea    (%esi,%ebx,1),%ecx
c01077a8:	83 c8 01             	or     $0x1,%eax
c01077ab:	89 41 04             	mov    %eax,0x4(%ecx)
c01077ae:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c01077b1:	83 4c 11 04 01       	orl    $0x1,0x4(%ecx,%edx,1)
c01077b6:	83 c1 08             	add    $0x8,%ecx
c01077b9:	89 4c 24 04          	mov    %ecx,0x4(%esp)
c01077bd:	89 04 24             	mov    %eax,(%esp)
c01077c0:	e8 2b fb ff ff       	call   c01072f0 <_free_r>
c01077c5:	eb 93                	jmp    c010775a <_realloc_r+0x17a>
c01077c7:	90                   	nop
c01077c8:	8b 45 e0             	mov    -0x20(%ebp),%eax
c01077cb:	89 44 24 04          	mov    %eax,0x4(%esp)
c01077cf:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c01077d2:	89 04 24             	mov    %eax,(%esp)
c01077d5:	e8 d6 d1 ff ff       	call   c01049b0 <_malloc_r>
c01077da:	85 c0                	test   %eax,%eax
c01077dc:	89 c1                	mov    %eax,%ecx
c01077de:	0f 84 65 03 00 00    	je     c0107b49 <_realloc_r+0x569>
c01077e4:	8b 47 fc             	mov    -0x4(%edi),%eax
c01077e7:	8d 51 f8             	lea    -0x8(%ecx),%edx
c01077ea:	89 55 e0             	mov    %edx,-0x20(%ebp)
c01077ed:	89 c2                	mov    %eax,%edx
c01077ef:	83 e2 fe             	and    $0xfffffffe,%edx
c01077f2:	01 f2                	add    %esi,%edx
c01077f4:	39 55 e0             	cmp    %edx,-0x20(%ebp)
c01077f7:	0f 84 63 02 00 00    	je     c0107a60 <_realloc_r+0x480>
c01077fd:	83 eb 04             	sub    $0x4,%ebx
c0107800:	83 fb 24             	cmp    $0x24,%ebx
c0107803:	0f 87 6f 01 00 00    	ja     c0107978 <_realloc_r+0x398>
c0107809:	83 fb 13             	cmp    $0x13,%ebx
c010780c:	0f 87 ee 00 00 00    	ja     c0107900 <_realloc_r+0x320>
c0107812:	89 c8                	mov    %ecx,%eax
c0107814:	89 fa                	mov    %edi,%edx
c0107816:	8b 1a                	mov    (%edx),%ebx
c0107818:	89 18                	mov    %ebx,(%eax)
c010781a:	8b 5a 04             	mov    0x4(%edx),%ebx
c010781d:	89 58 04             	mov    %ebx,0x4(%eax)
c0107820:	8b 52 08             	mov    0x8(%edx),%edx
c0107823:	89 50 08             	mov    %edx,0x8(%eax)
c0107826:	8b 75 e4             	mov    -0x1c(%ebp),%esi
c0107829:	89 7c 24 04          	mov    %edi,0x4(%esp)
c010782d:	89 4d e0             	mov    %ecx,-0x20(%ebp)
c0107830:	89 34 24             	mov    %esi,(%esp)
c0107833:	e8 b8 fa ff ff       	call   c01072f0 <_free_r>
c0107838:	89 34 24             	mov    %esi,(%esp)
c010783b:	e8 60 d9 ff ff       	call   c01051a0 <__malloc_unlock>
c0107840:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0107843:	83 c4 3c             	add    $0x3c,%esp
c0107846:	5b                   	pop    %ebx
c0107847:	5e                   	pop    %esi
c0107848:	5f                   	pop    %edi
c0107849:	89 c8                	mov    %ecx,%eax
c010784b:	5d                   	pop    %ebp
c010784c:	c3                   	ret    
c010784d:	8d 76 00             	lea    0x0(%esi),%esi
c0107850:	89 45 0c             	mov    %eax,0xc(%ebp)
c0107853:	83 c4 3c             	add    $0x3c,%esp
c0107856:	5b                   	pop    %ebx
c0107857:	5e                   	pop    %esi
c0107858:	5f                   	pop    %edi
c0107859:	5d                   	pop    %ebp
c010785a:	e9 51 d1 ff ff       	jmp    c01049b0 <_malloc_r>
c010785f:	90                   	nop
c0107860:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0107863:	c7 00 0c 00 00 00    	movl   $0xc,(%eax)
c0107869:	31 c0                	xor    %eax,%eax
c010786b:	e9 f7 fe ff ff       	jmp    c0107767 <_realloc_r+0x187>
c0107870:	89 c2                	mov    %eax,%edx
c0107872:	3b 55 d8             	cmp    -0x28(%ebp),%edx
c0107875:	0f 8c 4d ff ff ff    	jl     c01077c8 <_realloc_r+0x1e8>
c010787b:	8b 71 08             	mov    0x8(%ecx),%esi
c010787e:	83 eb 04             	sub    $0x4,%ebx
c0107881:	8b 41 0c             	mov    0xc(%ecx),%eax
c0107884:	83 fb 24             	cmp    $0x24,%ebx
c0107887:	89 46 0c             	mov    %eax,0xc(%esi)
c010788a:	89 70 08             	mov    %esi,0x8(%eax)
c010788d:	8d 71 08             	lea    0x8(%ecx),%esi
c0107890:	0f 87 88 00 00 00    	ja     c010791e <_realloc_r+0x33e>
c0107896:	83 fb 13             	cmp    $0x13,%ebx
c0107899:	89 f0                	mov    %esi,%eax
c010789b:	76 1a                	jbe    c01078b7 <_realloc_r+0x2d7>
c010789d:	8b 07                	mov    (%edi),%eax
c010789f:	83 fb 1b             	cmp    $0x1b,%ebx
c01078a2:	89 41 08             	mov    %eax,0x8(%ecx)
c01078a5:	8b 47 04             	mov    0x4(%edi),%eax
c01078a8:	89 41 0c             	mov    %eax,0xc(%ecx)
c01078ab:	0f 87 17 02 00 00    	ja     c0107ac8 <_realloc_r+0x4e8>
c01078b1:	8d 41 10             	lea    0x10(%ecx),%eax
c01078b4:	83 c7 08             	add    $0x8,%edi
c01078b7:	8b 1f                	mov    (%edi),%ebx
c01078b9:	89 18                	mov    %ebx,(%eax)
c01078bb:	8b 5f 04             	mov    0x4(%edi),%ebx
c01078be:	89 58 04             	mov    %ebx,0x4(%eax)
c01078c1:	8b 5f 08             	mov    0x8(%edi),%ebx
c01078c4:	89 f7                	mov    %esi,%edi
c01078c6:	89 ce                	mov    %ecx,%esi
c01078c8:	89 58 08             	mov    %ebx,0x8(%eax)
c01078cb:	89 d3                	mov    %edx,%ebx
c01078cd:	8b 41 04             	mov    0x4(%ecx),%eax
c01078d0:	e9 6e fe ff ff       	jmp    c0107743 <_realloc_r+0x163>
c01078d5:	8d 76 00             	lea    0x0(%esi),%esi
c01078d8:	8b 45 cc             	mov    -0x34(%ebp),%eax
c01078db:	8b 55 dc             	mov    -0x24(%ebp),%edx
c01078de:	8b 48 04             	mov    0x4(%eax),%ecx
c01078e1:	83 c2 10             	add    $0x10,%edx
c01078e4:	89 4d d0             	mov    %ecx,-0x30(%ebp)
c01078e7:	83 65 d0 fc          	andl   $0xfffffffc,-0x30(%ebp)
c01078eb:	8b 4d d0             	mov    -0x30(%ebp),%ecx
c01078ee:	01 d9                	add    %ebx,%ecx
c01078f0:	39 d1                	cmp    %edx,%ecx
c01078f2:	7d 54                	jge    c0107948 <_realloc_r+0x368>
c01078f4:	89 c2                	mov    %eax,%edx
c01078f6:	e9 8a fd ff ff       	jmp    c0107685 <_realloc_r+0xa5>
c01078fb:	90                   	nop
c01078fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0107900:	8b 07                	mov    (%edi),%eax
c0107902:	83 fb 1b             	cmp    $0x1b,%ebx
c0107905:	89 01                	mov    %eax,(%ecx)
c0107907:	8b 47 04             	mov    0x4(%edi),%eax
c010790a:	89 41 04             	mov    %eax,0x4(%ecx)
c010790d:	0f 87 2d 01 00 00    	ja     c0107a40 <_realloc_r+0x460>
c0107913:	8d 41 08             	lea    0x8(%ecx),%eax
c0107916:	8d 57 08             	lea    0x8(%edi),%edx
c0107919:	e9 f8 fe ff ff       	jmp    c0107816 <_realloc_r+0x236>
c010791e:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0107922:	89 7c 24 04          	mov    %edi,0x4(%esp)
c0107926:	89 f7                	mov    %esi,%edi
c0107928:	89 34 24             	mov    %esi,(%esp)
c010792b:	89 55 d8             	mov    %edx,-0x28(%ebp)
c010792e:	89 4d e0             	mov    %ecx,-0x20(%ebp)
c0107931:	e8 1a fc ff ff       	call   c0107550 <memmove>
c0107936:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0107939:	8b 55 d8             	mov    -0x28(%ebp),%edx
c010793c:	8b 41 04             	mov    0x4(%ecx),%eax
c010793f:	89 ce                	mov    %ecx,%esi
c0107941:	89 d3                	mov    %edx,%ebx
c0107943:	e9 fb fd ff ff       	jmp    c0107743 <_realloc_r+0x163>
c0107948:	8b 5d dc             	mov    -0x24(%ebp),%ebx
c010794b:	29 d9                	sub    %ebx,%ecx
c010794d:	01 de                	add    %ebx,%esi
c010794f:	83 c9 01             	or     $0x1,%ecx
c0107952:	89 35 e8 a9 10 c0    	mov    %esi,0xc010a9e8
c0107958:	89 4e 04             	mov    %ecx,0x4(%esi)
c010795b:	8b 47 fc             	mov    -0x4(%edi),%eax
c010795e:	83 e0 01             	and    $0x1,%eax
c0107961:	09 d8                	or     %ebx,%eax
c0107963:	89 47 fc             	mov    %eax,-0x4(%edi)
c0107966:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0107969:	89 04 24             	mov    %eax,(%esp)
c010796c:	e8 2f d8 ff ff       	call   c01051a0 <__malloc_unlock>
c0107971:	89 f8                	mov    %edi,%eax
c0107973:	e9 ef fd ff ff       	jmp    c0107767 <_realloc_r+0x187>
c0107978:	89 0c 24             	mov    %ecx,(%esp)
c010797b:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c010797f:	89 7c 24 04          	mov    %edi,0x4(%esp)
c0107983:	89 4d e0             	mov    %ecx,-0x20(%ebp)
c0107986:	e8 c5 fb ff ff       	call   c0107550 <memmove>
c010798b:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c010798e:	e9 93 fe ff ff       	jmp    c0107826 <_realloc_r+0x246>
c0107993:	90                   	nop
c0107994:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0107998:	8d 14 18             	lea    (%eax,%ebx,1),%edx
c010799b:	e9 d2 fe ff ff       	jmp    c0107872 <_realloc_r+0x292>
c01079a0:	8d 14 18             	lea    (%eax,%ebx,1),%edx
c01079a3:	8b 45 d0             	mov    -0x30(%ebp),%eax
c01079a6:	01 d0                	add    %edx,%eax
c01079a8:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c01079ab:	8b 45 dc             	mov    -0x24(%ebp),%eax
c01079ae:	83 c0 10             	add    $0x10,%eax
c01079b1:	39 45 d4             	cmp    %eax,-0x2c(%ebp)
c01079b4:	0f 8c b8 fe ff ff    	jl     c0107872 <_realloc_r+0x292>
c01079ba:	8b 41 0c             	mov    0xc(%ecx),%eax
c01079bd:	83 eb 04             	sub    $0x4,%ebx
c01079c0:	8b 51 08             	mov    0x8(%ecx),%edx
c01079c3:	83 fb 24             	cmp    $0x24,%ebx
c01079c6:	8d 71 08             	lea    0x8(%ecx),%esi
c01079c9:	89 42 0c             	mov    %eax,0xc(%edx)
c01079cc:	89 50 08             	mov    %edx,0x8(%eax)
c01079cf:	0f 87 3d 01 00 00    	ja     c0107b12 <_realloc_r+0x532>
c01079d5:	83 fb 13             	cmp    $0x13,%ebx
c01079d8:	89 f0                	mov    %esi,%eax
c01079da:	76 1a                	jbe    c01079f6 <_realloc_r+0x416>
c01079dc:	8b 07                	mov    (%edi),%eax
c01079de:	83 fb 1b             	cmp    $0x1b,%ebx
c01079e1:	89 41 08             	mov    %eax,0x8(%ecx)
c01079e4:	8b 47 04             	mov    0x4(%edi),%eax
c01079e7:	89 41 0c             	mov    %eax,0xc(%ecx)
c01079ea:	0f 87 3d 01 00 00    	ja     c0107b2d <_realloc_r+0x54d>
c01079f0:	8d 41 10             	lea    0x10(%ecx),%eax
c01079f3:	83 c7 08             	add    $0x8,%edi
c01079f6:	8b 17                	mov    (%edi),%edx
c01079f8:	89 10                	mov    %edx,(%eax)
c01079fa:	8b 57 04             	mov    0x4(%edi),%edx
c01079fd:	89 50 04             	mov    %edx,0x4(%eax)
c0107a00:	8b 57 08             	mov    0x8(%edi),%edx
c0107a03:	89 50 08             	mov    %edx,0x8(%eax)
c0107a06:	8b 5d dc             	mov    -0x24(%ebp),%ebx
c0107a09:	8b 7d d4             	mov    -0x2c(%ebp),%edi
c0107a0c:	89 d8                	mov    %ebx,%eax
c0107a0e:	29 df                	sub    %ebx,%edi
c0107a10:	01 c8                	add    %ecx,%eax
c0107a12:	83 cf 01             	or     $0x1,%edi
c0107a15:	a3 e8 a9 10 c0       	mov    %eax,0xc010a9e8
c0107a1a:	89 78 04             	mov    %edi,0x4(%eax)
c0107a1d:	8b 41 04             	mov    0x4(%ecx),%eax
c0107a20:	83 e0 01             	and    $0x1,%eax
c0107a23:	09 d8                	or     %ebx,%eax
c0107a25:	89 41 04             	mov    %eax,0x4(%ecx)
c0107a28:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0107a2b:	89 04 24             	mov    %eax,(%esp)
c0107a2e:	e8 6d d7 ff ff       	call   c01051a0 <__malloc_unlock>
c0107a33:	89 f0                	mov    %esi,%eax
c0107a35:	e9 2d fd ff ff       	jmp    c0107767 <_realloc_r+0x187>
c0107a3a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0107a40:	8b 47 08             	mov    0x8(%edi),%eax
c0107a43:	83 fb 24             	cmp    $0x24,%ebx
c0107a46:	89 41 08             	mov    %eax,0x8(%ecx)
c0107a49:	8b 47 0c             	mov    0xc(%edi),%eax
c0107a4c:	89 41 0c             	mov    %eax,0xc(%ecx)
c0107a4f:	74 60                	je     c0107ab1 <_realloc_r+0x4d1>
c0107a51:	8d 41 10             	lea    0x10(%ecx),%eax
c0107a54:	8d 57 10             	lea    0x10(%edi),%edx
c0107a57:	e9 ba fd ff ff       	jmp    c0107816 <_realloc_r+0x236>
c0107a5c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0107a60:	8b 51 fc             	mov    -0x4(%ecx),%edx
c0107a63:	83 e2 fc             	and    $0xfffffffc,%edx
c0107a66:	01 d3                	add    %edx,%ebx
c0107a68:	e9 d6 fc ff ff       	jmp    c0107743 <_realloc_r+0x163>
c0107a6d:	8d 76 00             	lea    0x0(%esi),%esi
c0107a70:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0107a74:	89 7c 24 04          	mov    %edi,0x4(%esp)
c0107a78:	89 f7                	mov    %esi,%edi
c0107a7a:	89 34 24             	mov    %esi,(%esp)
c0107a7d:	89 4d e0             	mov    %ecx,-0x20(%ebp)
c0107a80:	e8 cb fa ff ff       	call   c0107550 <memmove>
c0107a85:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0107a88:	8b 5d d0             	mov    -0x30(%ebp),%ebx
c0107a8b:	8b 41 04             	mov    0x4(%ecx),%eax
c0107a8e:	89 ce                	mov    %ecx,%esi
c0107a90:	e9 ae fc ff ff       	jmp    c0107743 <_realloc_r+0x163>
c0107a95:	8b 47 08             	mov    0x8(%edi),%eax
c0107a98:	83 fb 24             	cmp    $0x24,%ebx
c0107a9b:	89 41 10             	mov    %eax,0x10(%ecx)
c0107a9e:	8b 47 0c             	mov    0xc(%edi),%eax
c0107aa1:	89 41 14             	mov    %eax,0x14(%ecx)
c0107aa4:	74 3e                	je     c0107ae4 <_realloc_r+0x504>
c0107aa6:	8d 41 18             	lea    0x18(%ecx),%eax
c0107aa9:	83 c7 10             	add    $0x10,%edi
c0107aac:	e9 5b fc ff ff       	jmp    c010770c <_realloc_r+0x12c>
c0107ab1:	8b 47 10             	mov    0x10(%edi),%eax
c0107ab4:	8d 57 18             	lea    0x18(%edi),%edx
c0107ab7:	89 41 10             	mov    %eax,0x10(%ecx)
c0107aba:	8b 5f 14             	mov    0x14(%edi),%ebx
c0107abd:	8d 41 18             	lea    0x18(%ecx),%eax
c0107ac0:	89 59 14             	mov    %ebx,0x14(%ecx)
c0107ac3:	e9 4e fd ff ff       	jmp    c0107816 <_realloc_r+0x236>
c0107ac8:	8b 47 08             	mov    0x8(%edi),%eax
c0107acb:	83 fb 24             	cmp    $0x24,%ebx
c0107ace:	89 41 10             	mov    %eax,0x10(%ecx)
c0107ad1:	8b 47 0c             	mov    0xc(%edi),%eax
c0107ad4:	89 41 14             	mov    %eax,0x14(%ecx)
c0107ad7:	74 22                	je     c0107afb <_realloc_r+0x51b>
c0107ad9:	8d 41 18             	lea    0x18(%ecx),%eax
c0107adc:	83 c7 10             	add    $0x10,%edi
c0107adf:	e9 d3 fd ff ff       	jmp    c01078b7 <_realloc_r+0x2d7>
c0107ae4:	8b 47 10             	mov    0x10(%edi),%eax
c0107ae7:	83 c7 18             	add    $0x18,%edi
c0107aea:	89 41 18             	mov    %eax,0x18(%ecx)
c0107aed:	8b 57 fc             	mov    -0x4(%edi),%edx
c0107af0:	8d 41 20             	lea    0x20(%ecx),%eax
c0107af3:	89 51 1c             	mov    %edx,0x1c(%ecx)
c0107af6:	e9 11 fc ff ff       	jmp    c010770c <_realloc_r+0x12c>
c0107afb:	8b 47 10             	mov    0x10(%edi),%eax
c0107afe:	83 c7 18             	add    $0x18,%edi
c0107b01:	89 41 18             	mov    %eax,0x18(%ecx)
c0107b04:	8b 5f fc             	mov    -0x4(%edi),%ebx
c0107b07:	8d 41 20             	lea    0x20(%ecx),%eax
c0107b0a:	89 59 1c             	mov    %ebx,0x1c(%ecx)
c0107b0d:	e9 a5 fd ff ff       	jmp    c01078b7 <_realloc_r+0x2d7>
c0107b12:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0107b16:	89 7c 24 04          	mov    %edi,0x4(%esp)
c0107b1a:	89 34 24             	mov    %esi,(%esp)
c0107b1d:	89 4d e0             	mov    %ecx,-0x20(%ebp)
c0107b20:	e8 2b fa ff ff       	call   c0107550 <memmove>
c0107b25:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0107b28:	e9 d9 fe ff ff       	jmp    c0107a06 <_realloc_r+0x426>
c0107b2d:	8b 47 08             	mov    0x8(%edi),%eax
c0107b30:	83 fb 24             	cmp    $0x24,%ebx
c0107b33:	89 41 10             	mov    %eax,0x10(%ecx)
c0107b36:	8b 47 0c             	mov    0xc(%edi),%eax
c0107b39:	89 41 14             	mov    %eax,0x14(%ecx)
c0107b3c:	74 1d                	je     c0107b5b <_realloc_r+0x57b>
c0107b3e:	8d 41 18             	lea    0x18(%ecx),%eax
c0107b41:	83 c7 10             	add    $0x10,%edi
c0107b44:	e9 ad fe ff ff       	jmp    c01079f6 <_realloc_r+0x416>
c0107b49:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0107b4c:	89 04 24             	mov    %eax,(%esp)
c0107b4f:	e8 4c d6 ff ff       	call   c01051a0 <__malloc_unlock>
c0107b54:	31 c0                	xor    %eax,%eax
c0107b56:	e9 0c fc ff ff       	jmp    c0107767 <_realloc_r+0x187>
c0107b5b:	8b 47 10             	mov    0x10(%edi),%eax
c0107b5e:	83 c7 18             	add    $0x18,%edi
c0107b61:	89 41 18             	mov    %eax,0x18(%ecx)
c0107b64:	8b 57 fc             	mov    -0x4(%edi),%edx
c0107b67:	8d 41 20             	lea    0x20(%ecx),%eax
c0107b6a:	89 51 1c             	mov    %edx,0x1c(%ecx)
c0107b6d:	e9 84 fe ff ff       	jmp    c01079f6 <_realloc_r+0x416>
c0107b72:	66 90                	xchg   %ax,%ax
c0107b74:	66 90                	xchg   %ax,%ax
c0107b76:	66 90                	xchg   %ax,%ax
c0107b78:	66 90                	xchg   %ax,%ax
c0107b7a:	66 90                	xchg   %ax,%ax
c0107b7c:	66 90                	xchg   %ax,%ax
c0107b7e:	66 90                	xchg   %ax,%ax

c0107b80 <cleanup_glue>:
c0107b80:	55                   	push   %ebp
c0107b81:	89 e5                	mov    %esp,%ebp
c0107b83:	56                   	push   %esi
c0107b84:	53                   	push   %ebx
c0107b85:	83 ec 10             	sub    $0x10,%esp
c0107b88:	8b 5d 0c             	mov    0xc(%ebp),%ebx
c0107b8b:	8b 75 08             	mov    0x8(%ebp),%esi
c0107b8e:	8b 03                	mov    (%ebx),%eax
c0107b90:	85 c0                	test   %eax,%eax
c0107b92:	74 0c                	je     c0107ba0 <cleanup_glue+0x20>
c0107b94:	89 44 24 04          	mov    %eax,0x4(%esp)
c0107b98:	89 34 24             	mov    %esi,(%esp)
c0107b9b:	e8 e0 ff ff ff       	call   c0107b80 <cleanup_glue>
c0107ba0:	89 5d 0c             	mov    %ebx,0xc(%ebp)
c0107ba3:	89 75 08             	mov    %esi,0x8(%ebp)
c0107ba6:	83 c4 10             	add    $0x10,%esp
c0107ba9:	5b                   	pop    %ebx
c0107baa:	5e                   	pop    %esi
c0107bab:	5d                   	pop    %ebp
c0107bac:	e9 3f f7 ff ff       	jmp    c01072f0 <_free_r>
c0107bb1:	eb 0d                	jmp    c0107bc0 <_reclaim_reent>
c0107bb3:	90                   	nop
c0107bb4:	90                   	nop
c0107bb5:	90                   	nop
c0107bb6:	90                   	nop
c0107bb7:	90                   	nop
c0107bb8:	90                   	nop
c0107bb9:	90                   	nop
c0107bba:	90                   	nop
c0107bbb:	90                   	nop
c0107bbc:	90                   	nop
c0107bbd:	90                   	nop
c0107bbe:	90                   	nop
c0107bbf:	90                   	nop

c0107bc0 <_reclaim_reent>:
c0107bc0:	55                   	push   %ebp
c0107bc1:	89 e5                	mov    %esp,%ebp
c0107bc3:	57                   	push   %edi
c0107bc4:	56                   	push   %esi
c0107bc5:	53                   	push   %ebx
c0107bc6:	83 ec 1c             	sub    $0x1c,%esp
c0107bc9:	8b 5d 08             	mov    0x8(%ebp),%ebx
c0107bcc:	3b 1d e0 a4 10 c0    	cmp    0xc010a4e0,%ebx
c0107bd2:	0f 84 a6 00 00 00    	je     c0107c7e <_reclaim_reent+0xbe>
c0107bd8:	8b 53 4c             	mov    0x4c(%ebx),%edx
c0107bdb:	85 d2                	test   %edx,%edx
c0107bdd:	74 46                	je     c0107c25 <_reclaim_reent+0x65>
c0107bdf:	31 c0                	xor    %eax,%eax
c0107be1:	31 f6                	xor    %esi,%esi
c0107be3:	90                   	nop
c0107be4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0107be8:	8b 04 82             	mov    (%edx,%eax,4),%eax
c0107beb:	85 c0                	test   %eax,%eax
c0107bed:	75 0b                	jne    c0107bfa <_reclaim_reent+0x3a>
c0107bef:	eb 1e                	jmp    c0107c0f <_reclaim_reent+0x4f>
c0107bf1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0107bf8:	89 f8                	mov    %edi,%eax
c0107bfa:	8b 38                	mov    (%eax),%edi
c0107bfc:	89 44 24 04          	mov    %eax,0x4(%esp)
c0107c00:	89 1c 24             	mov    %ebx,(%esp)
c0107c03:	e8 e8 f6 ff ff       	call   c01072f0 <_free_r>
c0107c08:	85 ff                	test   %edi,%edi
c0107c0a:	75 ec                	jne    c0107bf8 <_reclaim_reent+0x38>
c0107c0c:	8b 53 4c             	mov    0x4c(%ebx),%edx
c0107c0f:	83 c6 01             	add    $0x1,%esi
c0107c12:	83 fe 20             	cmp    $0x20,%esi
c0107c15:	89 f0                	mov    %esi,%eax
c0107c17:	75 cf                	jne    c0107be8 <_reclaim_reent+0x28>
c0107c19:	89 54 24 04          	mov    %edx,0x4(%esp)
c0107c1d:	89 1c 24             	mov    %ebx,(%esp)
c0107c20:	e8 cb f6 ff ff       	call   c01072f0 <_free_r>
c0107c25:	8b 43 40             	mov    0x40(%ebx),%eax
c0107c28:	85 c0                	test   %eax,%eax
c0107c2a:	74 0c                	je     c0107c38 <_reclaim_reent+0x78>
c0107c2c:	89 44 24 04          	mov    %eax,0x4(%esp)
c0107c30:	89 1c 24             	mov    %ebx,(%esp)
c0107c33:	e8 b8 f6 ff ff       	call   c01072f0 <_free_r>
c0107c38:	8b 83 48 01 00 00    	mov    0x148(%ebx),%eax
c0107c3e:	85 c0                	test   %eax,%eax
c0107c40:	74 22                	je     c0107c64 <_reclaim_reent+0xa4>
c0107c42:	8d b3 4c 01 00 00    	lea    0x14c(%ebx),%esi
c0107c48:	39 f0                	cmp    %esi,%eax
c0107c4a:	75 06                	jne    c0107c52 <_reclaim_reent+0x92>
c0107c4c:	eb 16                	jmp    c0107c64 <_reclaim_reent+0xa4>
c0107c4e:	66 90                	xchg   %ax,%ax
c0107c50:	89 f8                	mov    %edi,%eax
c0107c52:	8b 38                	mov    (%eax),%edi
c0107c54:	89 44 24 04          	mov    %eax,0x4(%esp)
c0107c58:	89 1c 24             	mov    %ebx,(%esp)
c0107c5b:	e8 90 f6 ff ff       	call   c01072f0 <_free_r>
c0107c60:	39 fe                	cmp    %edi,%esi
c0107c62:	75 ec                	jne    c0107c50 <_reclaim_reent+0x90>
c0107c64:	8b 43 54             	mov    0x54(%ebx),%eax
c0107c67:	85 c0                	test   %eax,%eax
c0107c69:	74 0c                	je     c0107c77 <_reclaim_reent+0xb7>
c0107c6b:	89 44 24 04          	mov    %eax,0x4(%esp)
c0107c6f:	89 1c 24             	mov    %ebx,(%esp)
c0107c72:	e8 79 f6 ff ff       	call   c01072f0 <_free_r>
c0107c77:	8b 43 38             	mov    0x38(%ebx),%eax
c0107c7a:	85 c0                	test   %eax,%eax
c0107c7c:	75 08                	jne    c0107c86 <_reclaim_reent+0xc6>
c0107c7e:	83 c4 1c             	add    $0x1c,%esp
c0107c81:	5b                   	pop    %ebx
c0107c82:	5e                   	pop    %esi
c0107c83:	5f                   	pop    %edi
c0107c84:	5d                   	pop    %ebp
c0107c85:	c3                   	ret    
c0107c86:	89 1c 24             	mov    %ebx,(%esp)
c0107c89:	ff 53 3c             	call   *0x3c(%ebx)
c0107c8c:	8b 83 e0 02 00 00    	mov    0x2e0(%ebx),%eax
c0107c92:	85 c0                	test   %eax,%eax
c0107c94:	74 e8                	je     c0107c7e <_reclaim_reent+0xbe>
c0107c96:	89 1c 24             	mov    %ebx,(%esp)
c0107c99:	89 44 24 04          	mov    %eax,0x4(%esp)
c0107c9d:	e8 de fe ff ff       	call   c0107b80 <cleanup_glue>
c0107ca2:	83 c4 1c             	add    $0x1c,%esp
c0107ca5:	5b                   	pop    %ebx
c0107ca6:	5e                   	pop    %esi
c0107ca7:	5f                   	pop    %edi
c0107ca8:	5d                   	pop    %ebp
c0107ca9:	c3                   	ret    
