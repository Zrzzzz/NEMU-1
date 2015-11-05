
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
c010002b:	e9 e0 0d 00 00       	jmp    c0100e10 <init>

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
c01000d7:	a1 00 20 10 c0       	mov    0xc0102000,%eax
c01000dc:	3d ff 7f 00 00       	cmp    $0x7fff,%eax
c01000e1:	0f 8f c1 01 00 00    	jg     c01002a8 <mm_malloc+0x258>
c01000e7:	89 c1                	mov    %eax,%ecx
c01000e9:	83 c0 01             	add    $0x1,%eax
c01000ec:	c1 e1 0c             	shl    $0xc,%ecx
c01000ef:	83 c9 07             	or     $0x7,%ecx
c01000f2:	89 0e                	mov    %ecx,(%esi)
c01000f4:	a3 00 20 10 c0       	mov    %eax,0xc0102000
c01000f9:	81 c3 00 10 00 00    	add    $0x1000,%ebx
c01000ff:	3b 5d e4             	cmp    -0x1c(%ebp),%ebx
c0100102:	74 54                	je     c0100158 <mm_malloc+0x108>
c0100104:	89 d8                	mov    %ebx,%eax
c0100106:	c1 e8 16             	shr    $0x16,%eax
c0100109:	8d 0c 87             	lea    (%edi,%eax,4),%ecx
c010010c:	f6 01 01             	testb  $0x1,(%ecx)
c010010f:	75 a7                	jne    c01000b8 <mm_malloc+0x68>
c0100111:	a1 00 30 10 c0       	mov    0xc0103000,%eax
c0100116:	89 c6                	mov    %eax,%esi
c0100118:	83 c0 01             	add    $0x1,%eax
c010011b:	c1 e6 0c             	shl    $0xc,%esi
c010011e:	81 c6 00 40 10 c0    	add    $0xc0104000,%esi
c0100124:	a3 00 30 10 c0       	mov    %eax,0xc0103000
c0100129:	8d 86 00 00 00 40    	lea    0x40000000(%esi),%eax
c010012f:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0100134:	83 c8 07             	or     $0x7,%eax
c0100137:	89 01                	mov    %eax,(%ecx)
c0100139:	c7 44 24 08 00 10 00 	movl   $0x1000,0x8(%esp)
c0100140:	00 
c0100141:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c0100148:	00 
c0100149:	89 34 24             	mov    %esi,(%esp)
c010014c:	e8 27 12 00 00       	call   c0101378 <memset>
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
c0100178:	c7 44 24 10 24 14 10 	movl   $0xc0101424,0x10(%esp)
c010017f:	c0 
c0100180:	c7 44 24 0c 88 14 10 	movl   $0xc0101488,0xc(%esp)
c0100187:	c0 
c0100188:	c7 44 24 08 11 00 00 	movl   $0x11,0x8(%esp)
c010018f:	00 
c0100190:	c7 44 24 04 13 14 10 	movl   $0xc0101413,0x4(%esp)
c0100197:	c0 
c0100198:	c7 04 24 34 14 10 c0 	movl   $0xc0101434,(%esp)
c010019f:	e8 1c 11 00 00       	call   c01012c0 <printk>
c01001a4:	b8 01 00 00 00       	mov    $0x1,%eax
c01001a9:	d6                   	(bad)  
c01001aa:	8b 55 e0             	mov    -0x20(%ebp),%edx
c01001ad:	8d 86 00 00 00 c0    	lea    -0x40000000(%esi),%eax
c01001b3:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c01001b8:	c1 ea 0c             	shr    $0xc,%edx
c01001bb:	81 e2 ff 03 00 00    	and    $0x3ff,%edx
c01001c1:	f6 04 90 01          	testb  $0x1,(%eax,%edx,4)
c01001c5:	75 32                	jne    c01001f9 <mm_malloc+0x1a9>
c01001c7:	c7 44 24 10 2c 14 10 	movl   $0xc010142c,0x10(%esp)
c01001ce:	c0 
c01001cf:	c7 44 24 0c 88 14 10 	movl   $0xc0101488,0xc(%esp)
c01001d6:	c0 
c01001d7:	c7 44 24 08 13 00 00 	movl   $0x13,0x8(%esp)
c01001de:	00 
c01001df:	c7 44 24 04 13 14 10 	movl   $0xc0101413,0x4(%esp)
c01001e6:	c0 
c01001e7:	c7 04 24 34 14 10 c0 	movl   $0xc0101434,(%esp)
c01001ee:	e8 cd 10 00 00       	call   c01012c0 <printk>
c01001f3:	b8 01 00 00 00       	mov    $0x1,%eax
c01001f8:	d6                   	(bad)  
c01001f9:	8b 45 08             	mov    0x8(%ebp),%eax
c01001fc:	c1 e8 16             	shr    $0x16,%eax
c01001ff:	8b 1c 83             	mov    (%ebx,%eax,4),%ebx
c0100202:	f6 c3 01             	test   $0x1,%bl
c0100205:	75 32                	jne    c0100239 <mm_malloc+0x1e9>
c0100207:	c7 44 24 10 24 14 10 	movl   $0xc0101424,0x10(%esp)
c010020e:	c0 
c010020f:	c7 44 24 0c 88 14 10 	movl   $0xc0101488,0xc(%esp)
c0100216:	c0 
c0100217:	c7 44 24 08 11 00 00 	movl   $0x11,0x8(%esp)
c010021e:	00 
c010021f:	c7 44 24 04 13 14 10 	movl   $0xc0101413,0x4(%esp)
c0100226:	c0 
c0100227:	c7 04 24 34 14 10 c0 	movl   $0xc0101434,(%esp)
c010022e:	e8 8d 10 00 00       	call   c01012c0 <printk>
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
c0100258:	c7 44 24 10 2c 14 10 	movl   $0xc010142c,0x10(%esp)
c010025f:	c0 
c0100260:	c7 44 24 0c 88 14 10 	movl   $0xc0101488,0xc(%esp)
c0100267:	c0 
c0100268:	c7 44 24 08 13 00 00 	movl   $0x13,0x8(%esp)
c010026f:	00 
c0100270:	c7 44 24 04 13 14 10 	movl   $0xc0101413,0x4(%esp)
c0100277:	c0 
c0100278:	c7 04 24 34 14 10 c0 	movl   $0xc0101434,(%esp)
c010027f:	e8 3c 10 00 00       	call   c01012c0 <printk>
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
c01002a8:	c7 44 24 10 00 14 10 	movl   $0xc0101400,0x10(%esp)
c01002af:	c0 
c01002b0:	c7 44 24 0c 7e 14 10 	movl   $0xc010147e,0xc(%esp)
c01002b7:	c0 
c01002b8:	c7 44 24 08 31 00 00 	movl   $0x31,0x8(%esp)
c01002bf:	00 
c01002c0:	c7 44 24 04 13 14 10 	movl   $0xc0101413,0x4(%esp)
c01002c7:	c0 
c01002c8:	c7 04 24 34 14 10 c0 	movl   $0xc0101434,(%esp)
c01002cf:	e8 ec 0f 00 00       	call   c01012c0 <printk>
c01002d4:	b8 01 00 00 00       	mov    $0x1,%eax
c01002d9:	d6                   	(bad)  
c01002da:	a1 00 20 10 c0       	mov    0xc0102000,%eax
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
c010039a:	e8 71 03 00 00       	call   c0100710 <irq_handle>
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
c01003b1:	b8 00 50 14 c0       	mov    $0xc0145000,%eax
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
c01003ce:	68 00 50 14 00       	push   $0x145000
c01003d3:	e8 a0 0f 00 00       	call   c0101378 <memset>
c01003d8:	b9 00 50 14 00       	mov    $0x145000,%ecx
c01003dd:	83 c4 10             	add    $0x10,%esp
c01003e0:	ba 00 50 12 00       	mov    $0x125000,%edx
c01003e5:	8d 76 00             	lea    0x0(%esi),%esi
c01003e8:	89 d0                	mov    %edx,%eax
c01003ea:	81 c2 00 10 00 00    	add    $0x1000,%edx
c01003f0:	83 c1 04             	add    $0x4,%ecx
c01003f3:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c01003f8:	83 c8 07             	or     $0x7,%eax
c01003fb:	89 41 fc             	mov    %eax,-0x4(%ecx)
c01003fe:	89 81 fc 0b 00 00    	mov    %eax,0xbfc(%ecx)
c0100404:	81 fa 00 50 14 00    	cmp    $0x145000,%edx
c010040a:	75 dc                	jne    c01003e8 <init_page+0x28>
c010040c:	bf fc 4f 14 00       	mov    $0x144ffc,%edi
c0100411:	b8 07 f0 ff 07       	mov    $0x7fff007,%eax
c0100416:	fd                   	std    
c0100417:	ab                   	stos   %eax,%es:(%edi)
c0100418:	2d 00 10 00 00       	sub    $0x1000,%eax
c010041d:	7d f8                	jge    c0100417 <init_page+0x57>
c010041f:	b8 00 50 14 00       	mov    $0x145000,%eax
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
c010044a:	68 08 40 12 c0       	push   $0xc0124008
c010044f:	e8 24 0f 00 00       	call   c0101378 <memset>
c0100454:	ba ff ff ff ff       	mov    $0xffffffff,%edx
c0100459:	31 c9                	xor    %ecx,%ecx
c010045b:	b8 08 40 12 c0       	mov    $0xc0124008,%eax
c0100460:	66 89 15 10 40 12 c0 	mov    %dx,0xc0124010
c0100467:	ba ff ff ff ff       	mov    $0xffffffff,%edx
c010046c:	66 89 0d 12 40 12 c0 	mov    %cx,0xc0124012
c0100473:	66 89 15 18 40 12 c0 	mov    %dx,0xc0124018
c010047a:	ba 17 00 00 00       	mov    $0x17,%edx
c010047f:	31 c9                	xor    %ecx,%ecx
c0100481:	66 89 15 00 40 12 c0 	mov    %dx,0xc0124000
c0100488:	66 a3 02 40 12 c0    	mov    %ax,0xc0124002
c010048e:	c1 e8 10             	shr    $0x10,%eax
c0100491:	66 a3 04 40 12 c0    	mov    %ax,0xc0124004
c0100497:	c6 05 14 40 12 c0 00 	movb   $0x0,0xc0124014
c010049e:	b8 00 40 12 c0       	mov    $0xc0124000,%eax
c01004a3:	c6 05 15 40 12 c0 9a 	movb   $0x9a,0xc0124015
c01004aa:	c6 05 16 40 12 c0 cf 	movb   $0xcf,0xc0124016
c01004b1:	c6 05 17 40 12 c0 00 	movb   $0x0,0xc0124017
c01004b8:	66 89 0d 1a 40 12 c0 	mov    %cx,0xc012401a
c01004bf:	c6 05 1c 40 12 c0 00 	movb   $0x0,0xc012401c
c01004c6:	c6 05 1d 40 12 c0 92 	movb   $0x92,0xc012401d
c01004cd:	c6 05 1e 40 12 c0 cf 	movb   $0xcf,0xc012401e
c01004d4:	c6 05 1f 40 12 c0 00 	movb   $0x0,0xc012401f
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
c01004f1:	b8 00 70 14 c0       	mov    $0xc0147000,%eax
c01004f6:	89 e5                	mov    %esp,%ebp
c01004f8:	5d                   	pop    %ebp
c01004f9:	c3                   	ret    
c01004fa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

c0100500 <get_ucr3>:
c0100500:	55                   	push   %ebp
c0100501:	a1 04 60 14 c0       	mov    0xc0146004,%eax
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
c010051a:	a1 00 60 14 c0       	mov    0xc0146000,%eax
c010051f:	39 d8                	cmp    %ebx,%eax
c0100521:	73 11                	jae    c0100534 <mm_brk+0x24>
c0100523:	89 da                	mov    %ebx,%edx
c0100525:	83 ec 08             	sub    $0x8,%esp
c0100528:	29 c2                	sub    %eax,%edx
c010052a:	52                   	push   %edx
c010052b:	50                   	push   %eax
c010052c:	e8 1f fb ff ff       	call   c0100050 <mm_malloc>
c0100531:	83 c4 10             	add    $0x10,%esp
c0100534:	89 1d 00 60 14 c0    	mov    %ebx,0xc0146000
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
c010055e:	68 00 70 14 c0       	push   $0xc0147000
c0100563:	e8 10 0e 00 00       	call   c0101378 <memset>
c0100568:	83 c4 0c             	add    $0xc,%esp
c010056b:	68 80 00 00 00       	push   $0x80
c0100570:	53                   	push   %ebx
c0100571:	68 00 7c 14 c0       	push   $0xc0147c00
c0100576:	e8 b5 0d 00 00       	call   c0101330 <memcpy>
c010057b:	b8 00 70 14 00       	mov    $0x147000,%eax
c0100580:	83 c4 10             	add    $0x10,%esp
c0100583:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0100586:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c010058b:	a3 04 60 14 c0       	mov    %eax,0xc0146004
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
c01005a6:	68 15 15 10 c0       	push   $0xc0101515
c01005ab:	6a 11                	push   $0x11
c01005ad:	68 8e 14 10 c0       	push   $0xc010148e
c01005b2:	68 b4 14 10 c0       	push   $0xc01014b4
c01005b7:	e8 04 0d 00 00       	call   c01012c0 <printk>
c01005bc:	b8 01 00 00 00       	mov    $0x1,%eax
c01005c1:	d6                   	(bad)  
c01005c2:	83 c4 10             	add    $0x10,%esp
c01005c5:	c9                   	leave  
c01005c6:	c3                   	ret    
c01005c7:	89 f6                	mov    %esi,%esi
c01005c9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c01005d0 <video_mapping_write_test>:
c01005d0:	55                   	push   %ebp
c01005d1:	31 c0                	xor    %eax,%eax
c01005d3:	89 e5                	mov    %esp,%ebp
c01005d5:	8d 76 00             	lea    0x0(%esi),%esi
c01005d8:	89 04 85 00 00 0a 00 	mov    %eax,0xa0000(,%eax,4)
c01005df:	83 c0 01             	add    $0x1,%eax
c01005e2:	3d 80 3e 00 00       	cmp    $0x3e80,%eax
c01005e7:	75 ef                	jne    c01005d8 <video_mapping_write_test+0x8>
c01005e9:	5d                   	pop    %ebp
c01005ea:	c3                   	ret    
c01005eb:	90                   	nop
c01005ec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

c01005f0 <video_mapping_read_test>:
c01005f0:	55                   	push   %ebp
c01005f1:	89 e5                	mov    %esp,%ebp
c01005f3:	56                   	push   %esi
c01005f4:	be 01 00 00 00       	mov    $0x1,%esi
c01005f9:	53                   	push   %ebx
c01005fa:	31 db                	xor    %ebx,%ebx
c01005fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0100600:	3b 1c 9d 00 00 0a 00 	cmp    0xa0000(,%ebx,4),%ebx
c0100607:	74 24                	je     c010062d <video_mapping_read_test+0x3d>
c0100609:	83 ec 0c             	sub    $0xc,%esp
c010060c:	68 a7 14 10 c0       	push   $0xc01014a7
c0100611:	68 fd 14 10 c0       	push   $0xc01014fd
c0100616:	6a 20                	push   $0x20
c0100618:	68 8e 14 10 c0       	push   $0xc010148e
c010061d:	68 34 14 10 c0       	push   $0xc0101434
c0100622:	e8 99 0c 00 00       	call   c01012c0 <printk>
c0100627:	89 f0                	mov    %esi,%eax
c0100629:	d6                   	(bad)  
c010062a:	83 c4 20             	add    $0x20,%esp
c010062d:	83 c3 01             	add    $0x1,%ebx
c0100630:	81 fb 80 3e 00 00    	cmp    $0x3e80,%ebx
c0100636:	75 c8                	jne    c0100600 <video_mapping_read_test+0x10>
c0100638:	8d 65 f8             	lea    -0x8(%ebp),%esp
c010063b:	5b                   	pop    %ebx
c010063c:	5e                   	pop    %esi
c010063d:	5d                   	pop    %ebp
c010063e:	c3                   	ret    
c010063f:	90                   	nop

c0100640 <video_mapping_clear>:
c0100640:	55                   	push   %ebp
c0100641:	89 e5                	mov    %esp,%ebp
c0100643:	83 ec 0c             	sub    $0xc,%esp
c0100646:	68 00 fa 00 00       	push   $0xfa00
c010064b:	6a 00                	push   $0x0
c010064d:	68 00 00 0a 00       	push   $0xa0000
c0100652:	e8 21 0d 00 00       	call   c0101378 <memset>
c0100657:	83 c4 10             	add    $0x10,%esp
c010065a:	c9                   	leave  
c010065b:	c3                   	ret    
c010065c:	66 90                	xchg   %ax,%ax
c010065e:	66 90                	xchg   %ax,%ax

c0100660 <add_irq_handle>:
c0100660:	55                   	push   %ebp
c0100661:	89 e5                	mov    %esp,%ebp
c0100663:	53                   	push   %ebx
c0100664:	83 ec 04             	sub    $0x4,%esp
c0100667:	8b 5d 08             	mov    0x8(%ebp),%ebx
c010066a:	83 fb 0f             	cmp    $0xf,%ebx
c010066d:	7f 71                	jg     c01006e0 <add_irq_handle+0x80>
c010066f:	a1 00 80 14 c0       	mov    0xc0148000,%eax
c0100674:	83 f8 20             	cmp    $0x20,%eax
c0100677:	7e 2c                	jle    c01006a5 <add_irq_handle+0x45>
c0100679:	83 ec 0c             	sub    $0xc,%esp
c010067c:	68 59 15 10 c0       	push   $0xc0101559
c0100681:	68 41 16 10 c0       	push   $0xc0101641
c0100686:	6a 16                	push   $0x16
c0100688:	68 3d 15 10 c0       	push   $0xc010153d
c010068d:	68 34 14 10 c0       	push   $0xc0101434
c0100692:	e8 29 0c 00 00       	call   c01012c0 <printk>
c0100697:	b8 01 00 00 00       	mov    $0x1,%eax
c010069c:	d6                   	(bad)  
c010069d:	a1 00 80 14 c0       	mov    0xc0148000,%eax
c01006a2:	83 c4 20             	add    $0x20,%esp
c01006a5:	8d 50 01             	lea    0x1(%eax),%edx
c01006a8:	89 15 00 80 14 c0    	mov    %edx,0xc0148000
c01006ae:	8b 55 0c             	mov    0xc(%ebp),%edx
c01006b1:	89 14 c5 80 80 14 c0 	mov    %edx,-0x3feb7f80(,%eax,8)
c01006b8:	8b 14 9d 40 80 14 c0 	mov    -0x3feb7fc0(,%ebx,4),%edx
c01006bf:	89 14 c5 84 80 14 c0 	mov    %edx,-0x3feb7f7c(,%eax,8)
c01006c6:	8d 04 c5 80 80 14 c0 	lea    -0x3feb7f80(,%eax,8),%eax
c01006cd:	89 04 9d 40 80 14 c0 	mov    %eax,-0x3feb7fc0(,%ebx,4)
c01006d4:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c01006d7:	c9                   	leave  
c01006d8:	c3                   	ret    
c01006d9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c01006e0:	83 ec 0c             	sub    $0xc,%esp
c01006e3:	68 2a 15 10 c0       	push   $0xc010152a
c01006e8:	68 41 16 10 c0       	push   $0xc0101641
c01006ed:	6a 15                	push   $0x15
c01006ef:	68 3d 15 10 c0       	push   $0xc010153d
c01006f4:	68 34 14 10 c0       	push   $0xc0101434
c01006f9:	e8 c2 0b 00 00       	call   c01012c0 <printk>
c01006fe:	b8 01 00 00 00       	mov    $0x1,%eax
c0100703:	d6                   	(bad)  
c0100704:	83 c4 20             	add    $0x20,%esp
c0100707:	e9 63 ff ff ff       	jmp    c010066f <add_irq_handle+0xf>
c010070c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

c0100710 <irq_handle>:
c0100710:	55                   	push   %ebp
c0100711:	89 e5                	mov    %esp,%ebp
c0100713:	53                   	push   %ebx
c0100714:	83 ec 04             	sub    $0x4,%esp
c0100717:	8b 55 08             	mov    0x8(%ebp),%edx
c010071a:	8b 42 20             	mov    0x20(%edx),%eax
c010071d:	85 c0                	test   %eax,%eax
c010071f:	0f 88 9b 00 00 00    	js     c01007c0 <irq_handle+0xb0>
c0100725:	3d 80 00 00 00       	cmp    $0x80,%eax
c010072a:	0f 84 b8 00 00 00    	je     c01007e8 <irq_handle+0xd8>
c0100730:	3d e7 03 00 00       	cmp    $0x3e7,%eax
c0100735:	7e 59                	jle    c0100790 <irq_handle+0x80>
c0100737:	8d 98 18 fc ff ff    	lea    -0x3e8(%eax),%ebx
c010073d:	83 fb 0f             	cmp    $0xf,%ebx
c0100740:	7f 1e                	jg     c0100760 <irq_handle+0x50>
c0100742:	8b 1c 9d 40 80 14 c0 	mov    -0x3feb7fc0(,%ebx,4),%ebx
c0100749:	85 db                	test   %ebx,%ebx
c010074b:	74 0c                	je     c0100759 <irq_handle+0x49>
c010074d:	8d 76 00             	lea    0x0(%esi),%esi
c0100750:	ff 13                	call   *(%ebx)
c0100752:	8b 5b 04             	mov    0x4(%ebx),%ebx
c0100755:	85 db                	test   %ebx,%ebx
c0100757:	75 f7                	jne    c0100750 <irq_handle+0x40>
c0100759:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c010075c:	c9                   	leave  
c010075d:	c3                   	ret    
c010075e:	66 90                	xchg   %ax,%ax
c0100760:	83 ec 0c             	sub    $0xc,%esp
c0100763:	68 77 15 10 c0       	push   $0xc0101577
c0100768:	68 36 16 10 c0       	push   $0xc0101636
c010076d:	6a 2f                	push   $0x2f
c010076f:	68 3d 15 10 c0       	push   $0xc010153d
c0100774:	68 34 14 10 c0       	push   $0xc0101434
c0100779:	e8 42 0b 00 00       	call   c01012c0 <printk>
c010077e:	b8 01 00 00 00       	mov    $0x1,%eax
c0100783:	d6                   	(bad)  
c0100784:	83 c4 20             	add    $0x20,%esp
c0100787:	eb b9                	jmp    c0100742 <irq_handle+0x32>
c0100789:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0100790:	83 ec 08             	sub    $0x8,%esp
c0100793:	ff 72 28             	pushl  0x28(%edx)
c0100796:	50                   	push   %eax
c0100797:	68 36 16 10 c0       	push   $0xc0101636
c010079c:	6a 2c                	push   $0x2c
c010079e:	68 3d 15 10 c0       	push   $0xc010153d
c01007a3:	68 dc 15 10 c0       	push   $0xc01015dc
c01007a8:	e8 13 0b 00 00       	call   c01012c0 <printk>
c01007ad:	b8 01 00 00 00       	mov    $0x1,%eax
c01007b2:	d6                   	(bad)  
c01007b3:	83 c4 20             	add    $0x20,%esp
c01007b6:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c01007b9:	c9                   	leave  
c01007ba:	c3                   	ret    
c01007bb:	90                   	nop
c01007bc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c01007c0:	68 36 16 10 c0       	push   $0xc0101636
c01007c5:	6a 28                	push   $0x28
c01007c7:	68 3d 15 10 c0       	push   $0xc010153d
c01007cc:	68 90 15 10 c0       	push   $0xc0101590
c01007d1:	e8 ea 0a 00 00       	call   c01012c0 <printk>
c01007d6:	b8 01 00 00 00       	mov    $0x1,%eax
c01007db:	d6                   	(bad)  
c01007dc:	83 c4 10             	add    $0x10,%esp
c01007df:	e9 75 ff ff ff       	jmp    c0100759 <irq_handle+0x49>
c01007e4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c01007e8:	89 55 08             	mov    %edx,0x8(%ebp)
c01007eb:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c01007ee:	c9                   	leave  
c01007ef:	e9 1c 04 00 00       	jmp    c0100c10 <do_syscall>
c01007f4:	66 90                	xchg   %ax,%ax
c01007f6:	66 90                	xchg   %ax,%ax
c01007f8:	66 90                	xchg   %ax,%ax
c01007fa:	66 90                	xchg   %ax,%ax
c01007fc:	66 90                	xchg   %ax,%ax
c01007fe:	66 90                	xchg   %ax,%ax

c0100800 <init_idt>:
c0100800:	55                   	push   %ebp
c0100801:	ba 8f 03 10 c0       	mov    $0xc010038f,%edx
c0100806:	b8 c0 81 14 c0       	mov    $0xc01481c0,%eax
c010080b:	89 d1                	mov    %edx,%ecx
c010080d:	c1 ea 10             	shr    $0x10,%edx
c0100810:	89 e5                	mov    %esp,%ebp
c0100812:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0100818:	66 89 08             	mov    %cx,(%eax)
c010081b:	66 c7 40 02 08 00    	movw   $0x8,0x2(%eax)
c0100821:	83 c0 08             	add    $0x8,%eax
c0100824:	c6 40 fc 00          	movb   $0x0,-0x4(%eax)
c0100828:	c6 40 fd 8f          	movb   $0x8f,-0x3(%eax)
c010082c:	66 89 50 fe          	mov    %dx,-0x2(%eax)
c0100830:	3d c0 89 14 c0       	cmp    $0xc01489c0,%eax
c0100835:	75 e1                	jne    c0100818 <init_idt+0x18>
c0100837:	b8 e4 02 10 c0       	mov    $0xc01002e4,%eax
c010083c:	ba 08 00 00 00       	mov    $0x8,%edx
c0100841:	b9 08 00 00 00       	mov    $0x8,%ecx
c0100846:	66 a3 c0 81 14 c0    	mov    %ax,0xc01481c0
c010084c:	c1 e8 10             	shr    $0x10,%eax
c010084f:	66 89 15 c2 81 14 c0 	mov    %dx,0xc01481c2
c0100856:	66 a3 c6 81 14 c0    	mov    %ax,0xc01481c6
c010085c:	b8 ed 02 10 c0       	mov    $0xc01002ed,%eax
c0100861:	ba 08 00 00 00       	mov    $0x8,%edx
c0100866:	66 a3 c8 81 14 c0    	mov    %ax,0xc01481c8
c010086c:	c1 e8 10             	shr    $0x10,%eax
c010086f:	66 89 0d ca 81 14 c0 	mov    %cx,0xc01481ca
c0100876:	66 a3 ce 81 14 c0    	mov    %ax,0xc01481ce
c010087c:	b8 f6 02 10 c0       	mov    $0xc01002f6,%eax
c0100881:	66 89 15 d2 81 14 c0 	mov    %dx,0xc01481d2
c0100888:	66 a3 d0 81 14 c0    	mov    %ax,0xc01481d0
c010088e:	c1 e8 10             	shr    $0x10,%eax
c0100891:	b9 08 00 00 00       	mov    $0x8,%ecx
c0100896:	66 a3 d6 81 14 c0    	mov    %ax,0xc01481d6
c010089c:	b8 ff 02 10 c0       	mov    $0xc01002ff,%eax
c01008a1:	ba 08 00 00 00       	mov    $0x8,%edx
c01008a6:	66 a3 d8 81 14 c0    	mov    %ax,0xc01481d8
c01008ac:	c1 e8 10             	shr    $0x10,%eax
c01008af:	66 89 0d da 81 14 c0 	mov    %cx,0xc01481da
c01008b6:	66 a3 de 81 14 c0    	mov    %ax,0xc01481de
c01008bc:	b8 08 03 10 c0       	mov    $0xc0100308,%eax
c01008c1:	66 89 15 e2 81 14 c0 	mov    %dx,0xc01481e2
c01008c8:	66 a3 e0 81 14 c0    	mov    %ax,0xc01481e0
c01008ce:	c1 e8 10             	shr    $0x10,%eax
c01008d1:	b9 08 00 00 00       	mov    $0x8,%ecx
c01008d6:	66 a3 e6 81 14 c0    	mov    %ax,0xc01481e6
c01008dc:	b8 11 03 10 c0       	mov    $0xc0100311,%eax
c01008e1:	ba 08 00 00 00       	mov    $0x8,%edx
c01008e6:	66 a3 e8 81 14 c0    	mov    %ax,0xc01481e8
c01008ec:	c1 e8 10             	shr    $0x10,%eax
c01008ef:	66 89 0d ea 81 14 c0 	mov    %cx,0xc01481ea
c01008f6:	66 a3 ee 81 14 c0    	mov    %ax,0xc01481ee
c01008fc:	b8 1a 03 10 c0       	mov    $0xc010031a,%eax
c0100901:	66 89 15 f2 81 14 c0 	mov    %dx,0xc01481f2
c0100908:	66 a3 f0 81 14 c0    	mov    %ax,0xc01481f0
c010090e:	c1 e8 10             	shr    $0x10,%eax
c0100911:	c6 05 c4 81 14 c0 00 	movb   $0x0,0xc01481c4
c0100918:	c6 05 c5 81 14 c0 8f 	movb   $0x8f,0xc01481c5
c010091f:	c6 05 cc 81 14 c0 00 	movb   $0x0,0xc01481cc
c0100926:	b9 08 00 00 00       	mov    $0x8,%ecx
c010092b:	c6 05 cd 81 14 c0 8f 	movb   $0x8f,0xc01481cd
c0100932:	c6 05 d4 81 14 c0 00 	movb   $0x0,0xc01481d4
c0100939:	ba 08 00 00 00       	mov    $0x8,%edx
c010093e:	c6 05 d5 81 14 c0 8f 	movb   $0x8f,0xc01481d5
c0100945:	c6 05 dc 81 14 c0 00 	movb   $0x0,0xc01481dc
c010094c:	c6 05 dd 81 14 c0 8f 	movb   $0x8f,0xc01481dd
c0100953:	c6 05 e4 81 14 c0 00 	movb   $0x0,0xc01481e4
c010095a:	c6 05 e5 81 14 c0 8f 	movb   $0x8f,0xc01481e5
c0100961:	c6 05 ec 81 14 c0 00 	movb   $0x0,0xc01481ec
c0100968:	c6 05 ed 81 14 c0 8f 	movb   $0x8f,0xc01481ed
c010096f:	c6 05 f4 81 14 c0 00 	movb   $0x0,0xc01481f4
c0100976:	c6 05 f5 81 14 c0 8f 	movb   $0x8f,0xc01481f5
c010097d:	66 a3 f6 81 14 c0    	mov    %ax,0xc01481f6
c0100983:	b8 23 03 10 c0       	mov    $0xc0100323,%eax
c0100988:	66 a3 f8 81 14 c0    	mov    %ax,0xc01481f8
c010098e:	c1 e8 10             	shr    $0x10,%eax
c0100991:	66 89 0d fa 81 14 c0 	mov    %cx,0xc01481fa
c0100998:	66 a3 fe 81 14 c0    	mov    %ax,0xc01481fe
c010099e:	b8 2c 03 10 c0       	mov    $0xc010032c,%eax
c01009a3:	b9 08 00 00 00       	mov    $0x8,%ecx
c01009a8:	66 a3 00 82 14 c0    	mov    %ax,0xc0148200
c01009ae:	c1 e8 10             	shr    $0x10,%eax
c01009b1:	66 89 15 02 82 14 c0 	mov    %dx,0xc0148202
c01009b8:	66 a3 06 82 14 c0    	mov    %ax,0xc0148206
c01009be:	b8 33 03 10 c0       	mov    $0xc0100333,%eax
c01009c3:	66 89 0d 0a 82 14 c0 	mov    %cx,0xc014820a
c01009ca:	66 a3 08 82 14 c0    	mov    %ax,0xc0148208
c01009d0:	c1 e8 10             	shr    $0x10,%eax
c01009d3:	ba 08 00 00 00       	mov    $0x8,%edx
c01009d8:	66 a3 0e 82 14 c0    	mov    %ax,0xc014820e
c01009de:	b8 3c 03 10 c0       	mov    $0xc010033c,%eax
c01009e3:	b9 08 00 00 00       	mov    $0x8,%ecx
c01009e8:	66 a3 10 82 14 c0    	mov    %ax,0xc0148210
c01009ee:	c1 e8 10             	shr    $0x10,%eax
c01009f1:	66 89 15 12 82 14 c0 	mov    %dx,0xc0148212
c01009f8:	66 a3 16 82 14 c0    	mov    %ax,0xc0148216
c01009fe:	b8 43 03 10 c0       	mov    $0xc0100343,%eax
c0100a03:	66 89 0d 1a 82 14 c0 	mov    %cx,0xc014821a
c0100a0a:	66 a3 18 82 14 c0    	mov    %ax,0xc0148218
c0100a10:	c1 e8 10             	shr    $0x10,%eax
c0100a13:	ba 08 00 00 00       	mov    $0x8,%edx
c0100a18:	66 a3 1e 82 14 c0    	mov    %ax,0xc014821e
c0100a1e:	b8 4a 03 10 c0       	mov    $0xc010034a,%eax
c0100a23:	b9 08 00 00 00       	mov    $0x8,%ecx
c0100a28:	66 a3 20 82 14 c0    	mov    %ax,0xc0148220
c0100a2e:	c1 e8 10             	shr    $0x10,%eax
c0100a31:	66 89 15 22 82 14 c0 	mov    %dx,0xc0148222
c0100a38:	66 a3 26 82 14 c0    	mov    %ax,0xc0148226
c0100a3e:	b8 51 03 10 c0       	mov    $0xc0100351,%eax
c0100a43:	66 89 0d 2a 82 14 c0 	mov    %cx,0xc014822a
c0100a4a:	66 a3 28 82 14 c0    	mov    %ax,0xc0148228
c0100a50:	c1 e8 10             	shr    $0x10,%eax
c0100a53:	c6 05 fc 81 14 c0 00 	movb   $0x0,0xc01481fc
c0100a5a:	c6 05 fd 81 14 c0 8f 	movb   $0x8f,0xc01481fd
c0100a61:	c6 05 04 82 14 c0 00 	movb   $0x0,0xc0148204
c0100a68:	ba 08 00 00 00       	mov    $0x8,%edx
c0100a6d:	c6 05 05 82 14 c0 8f 	movb   $0x8f,0xc0148205
c0100a74:	c6 05 0c 82 14 c0 00 	movb   $0x0,0xc014820c
c0100a7b:	b9 08 00 00 00       	mov    $0x8,%ecx
c0100a80:	c6 05 0d 82 14 c0 8f 	movb   $0x8f,0xc014820d
c0100a87:	c6 05 14 82 14 c0 00 	movb   $0x0,0xc0148214
c0100a8e:	c6 05 15 82 14 c0 8f 	movb   $0x8f,0xc0148215
c0100a95:	c6 05 1c 82 14 c0 00 	movb   $0x0,0xc014821c
c0100a9c:	c6 05 1d 82 14 c0 8f 	movb   $0x8f,0xc014821d
c0100aa3:	c6 05 24 82 14 c0 00 	movb   $0x0,0xc0148224
c0100aaa:	c6 05 25 82 14 c0 8f 	movb   $0x8f,0xc0148225
c0100ab1:	c6 05 2c 82 14 c0 00 	movb   $0x0,0xc014822c
c0100ab8:	66 a3 2e 82 14 c0    	mov    %ax,0xc014822e
c0100abe:	b8 58 03 10 c0       	mov    $0xc0100358,%eax
c0100ac3:	66 89 15 32 82 14 c0 	mov    %dx,0xc0148232
c0100aca:	66 a3 30 82 14 c0    	mov    %ax,0xc0148230
c0100ad0:	c1 e8 10             	shr    $0x10,%eax
c0100ad3:	66 89 0d c2 85 14 c0 	mov    %cx,0xc01485c2
c0100ada:	66 a3 36 82 14 c0    	mov    %ax,0xc0148236
c0100ae0:	b8 5f 03 10 c0       	mov    $0xc010035f,%eax
c0100ae5:	ba 08 00 00 00       	mov    $0x8,%edx
c0100aea:	66 a3 c0 85 14 c0    	mov    %ax,0xc01485c0
c0100af0:	c1 e8 10             	shr    $0x10,%eax
c0100af3:	b9 08 00 00 00       	mov    $0x8,%ecx
c0100af8:	66 a3 c6 85 14 c0    	mov    %ax,0xc01485c6
c0100afe:	b8 6b 03 10 c0       	mov    $0xc010036b,%eax
c0100b03:	c6 05 2d 82 14 c0 8f 	movb   $0x8f,0xc014822d
c0100b0a:	66 a3 c0 82 14 c0    	mov    %ax,0xc01482c0
c0100b10:	c1 e8 10             	shr    $0x10,%eax
c0100b13:	c6 05 34 82 14 c0 00 	movb   $0x0,0xc0148234
c0100b1a:	66 a3 c6 82 14 c0    	mov    %ax,0xc01482c6
c0100b20:	b8 83 03 10 c0       	mov    $0xc0100383,%eax
c0100b25:	c6 05 35 82 14 c0 8f 	movb   $0x8f,0xc0148235
c0100b2c:	66 a3 30 83 14 c0    	mov    %ax,0xc0148330
c0100b32:	c1 e8 10             	shr    $0x10,%eax
c0100b35:	c6 05 c4 85 14 c0 00 	movb   $0x0,0xc01485c4
c0100b3c:	66 a3 36 83 14 c0    	mov    %ax,0xc0148336
c0100b42:	b8 ff 07 00 00       	mov    $0x7ff,%eax
c0100b47:	c6 05 c5 85 14 c0 ef 	movb   $0xef,0xc01485c5
c0100b4e:	66 a3 80 81 14 c0    	mov    %ax,0xc0148180
c0100b54:	b8 c0 81 14 c0       	mov    $0xc01481c0,%eax
c0100b59:	66 89 15 c2 82 14 c0 	mov    %dx,0xc01482c2
c0100b60:	66 a3 82 81 14 c0    	mov    %ax,0xc0148182
c0100b66:	c1 e8 10             	shr    $0x10,%eax
c0100b69:	c6 05 c4 82 14 c0 00 	movb   $0x0,0xc01482c4
c0100b70:	66 a3 84 81 14 c0    	mov    %ax,0xc0148184
c0100b76:	c6 05 c5 82 14 c0 8e 	movb   $0x8e,0xc01482c5
c0100b7d:	b8 80 81 14 c0       	mov    $0xc0148180,%eax
c0100b82:	66 89 0d 32 83 14 c0 	mov    %cx,0xc0148332
c0100b89:	c6 05 34 83 14 c0 00 	movb   $0x0,0xc0148334
c0100b90:	c6 05 35 83 14 c0 8e 	movb   $0x8e,0xc0148335
c0100b97:	0f 01 18             	lidtl  (%eax)
c0100b9a:	5d                   	pop    %ebp
c0100b9b:	c3                   	ret    
c0100b9c:	66 90                	xchg   %ax,%ax
c0100b9e:	66 90                	xchg   %ax,%ax

c0100ba0 <init_i8259>:
c0100ba0:	55                   	push   %ebp
c0100ba1:	ba 21 00 00 00       	mov    $0x21,%edx
c0100ba6:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c0100bab:	89 e5                	mov    %esp,%ebp
c0100bad:	ee                   	out    %al,(%dx)
c0100bae:	b2 a1                	mov    $0xa1,%dl
c0100bb0:	ee                   	out    %al,(%dx)
c0100bb1:	b8 11 00 00 00       	mov    $0x11,%eax
c0100bb6:	b2 20                	mov    $0x20,%dl
c0100bb8:	ee                   	out    %al,(%dx)
c0100bb9:	b8 20 00 00 00       	mov    $0x20,%eax
c0100bbe:	b2 21                	mov    $0x21,%dl
c0100bc0:	ee                   	out    %al,(%dx)
c0100bc1:	b8 04 00 00 00       	mov    $0x4,%eax
c0100bc6:	ee                   	out    %al,(%dx)
c0100bc7:	b8 03 00 00 00       	mov    $0x3,%eax
c0100bcc:	ee                   	out    %al,(%dx)
c0100bcd:	b8 11 00 00 00       	mov    $0x11,%eax
c0100bd2:	b2 a0                	mov    $0xa0,%dl
c0100bd4:	ee                   	out    %al,(%dx)
c0100bd5:	b8 28 00 00 00       	mov    $0x28,%eax
c0100bda:	b2 a1                	mov    $0xa1,%dl
c0100bdc:	ee                   	out    %al,(%dx)
c0100bdd:	b8 02 00 00 00       	mov    $0x2,%eax
c0100be2:	ee                   	out    %al,(%dx)
c0100be3:	b8 03 00 00 00       	mov    $0x3,%eax
c0100be8:	ee                   	out    %al,(%dx)
c0100be9:	b8 68 00 00 00       	mov    $0x68,%eax
c0100bee:	b2 20                	mov    $0x20,%dl
c0100bf0:	ee                   	out    %al,(%dx)
c0100bf1:	b8 0a 00 00 00       	mov    $0xa,%eax
c0100bf6:	ee                   	out    %al,(%dx)
c0100bf7:	b8 68 00 00 00       	mov    $0x68,%eax
c0100bfc:	b2 a0                	mov    $0xa0,%dl
c0100bfe:	ee                   	out    %al,(%dx)
c0100bff:	b8 0a 00 00 00       	mov    $0xa,%eax
c0100c04:	ee                   	out    %al,(%dx)
c0100c05:	5d                   	pop    %ebp
c0100c06:	c3                   	ret    
c0100c07:	66 90                	xchg   %ax,%ax
c0100c09:	66 90                	xchg   %ax,%ax
c0100c0b:	66 90                	xchg   %ax,%ax
c0100c0d:	66 90                	xchg   %ax,%ax
c0100c0f:	90                   	nop

c0100c10 <do_syscall>:
c0100c10:	55                   	push   %ebp
c0100c11:	89 e5                	mov    %esp,%ebp
c0100c13:	53                   	push   %ebx
c0100c14:	83 ec 04             	sub    $0x4,%esp
c0100c17:	8b 5d 08             	mov    0x8(%ebp),%ebx
c0100c1a:	8b 43 1c             	mov    0x1c(%ebx),%eax
c0100c1d:	85 c0                	test   %eax,%eax
c0100c1f:	74 4f                	je     c0100c70 <do_syscall+0x60>
c0100c21:	83 f8 2d             	cmp    $0x2d,%eax
c0100c24:	74 2a                	je     c0100c50 <do_syscall+0x40>
c0100c26:	83 ec 0c             	sub    $0xc,%esp
c0100c29:	50                   	push   %eax
c0100c2a:	68 c4 16 10 c0       	push   $0xc01016c4
c0100c2f:	6a 20                	push   $0x20
c0100c31:	68 50 16 10 c0       	push   $0xc0101650
c0100c36:	68 70 16 10 c0       	push   $0xc0101670
c0100c3b:	e8 80 06 00 00       	call   c01012c0 <printk>
c0100c40:	b8 01 00 00 00       	mov    $0x1,%eax
c0100c45:	d6                   	(bad)  
c0100c46:	83 c4 20             	add    $0x20,%esp
c0100c49:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0100c4c:	c9                   	leave  
c0100c4d:	c3                   	ret    
c0100c4e:	66 90                	xchg   %ax,%ax
c0100c50:	83 ec 0c             	sub    $0xc,%esp
c0100c53:	ff 73 10             	pushl  0x10(%ebx)
c0100c56:	e8 b5 f8 ff ff       	call   c0100510 <mm_brk>
c0100c5b:	c7 43 1c 00 00 00 00 	movl   $0x0,0x1c(%ebx)
c0100c62:	83 c4 10             	add    $0x10,%esp
c0100c65:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0100c68:	c9                   	leave  
c0100c69:	c3                   	ret    
c0100c6a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0100c70:	fa                   	cli    
c0100c71:	83 ec 08             	sub    $0x8,%esp
c0100c74:	ff 73 18             	pushl  0x18(%ebx)
c0100c77:	ff 73 10             	pushl  0x10(%ebx)
c0100c7a:	e8 e1 f9 ff ff       	call   c0100660 <add_irq_handle>
c0100c7f:	fb                   	sti    
c0100c80:	83 c4 10             	add    $0x10,%esp
c0100c83:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0100c86:	c9                   	leave  
c0100c87:	c3                   	ret    
c0100c88:	66 90                	xchg   %ax,%ax
c0100c8a:	66 90                	xchg   %ax,%ax
c0100c8c:	66 90                	xchg   %ax,%ax
c0100c8e:	66 90                	xchg   %ax,%ax

c0100c90 <loader>:
c0100c90:	55                   	push   %ebp
c0100c91:	89 e5                	mov    %esp,%ebp
c0100c93:	57                   	push   %edi
c0100c94:	56                   	push   %esi
c0100c95:	53                   	push   %ebx
c0100c96:	8d bd e8 ef ff ff    	lea    -0x1018(%ebp),%edi
c0100c9c:	81 ec 30 10 00 00    	sub    $0x1030,%esp
c0100ca2:	68 00 10 00 00       	push   $0x1000
c0100ca7:	6a 00                	push   $0x0
c0100ca9:	57                   	push   %edi
c0100caa:	e8 81 05 00 00       	call   c0101230 <ramdisk_read>
c0100caf:	83 c4 10             	add    $0x10,%esp
c0100cb2:	81 bd e8 ef ff ff 7f 	cmpl   $0x464c457f,-0x1018(%ebp)
c0100cb9:	45 4c 46 
c0100cbc:	74 06                	je     c0100cc4 <loader+0x34>
c0100cbe:	b8 01 00 00 00       	mov    $0x1,%eax
c0100cc3:	d6                   	(bad)  
c0100cc4:	31 f6                	xor    %esi,%esi
c0100cc6:	66 83 bd 14 f0 ff ff 	cmpw   $0x0,-0xfec(%ebp)
c0100ccd:	00 
c0100cce:	75 1a                	jne    c0100cea <loader+0x5a>
c0100cd0:	e9 9b 00 00 00       	jmp    c0100d70 <loader+0xe0>
c0100cd5:	8d 76 00             	lea    0x0(%esi),%esi
c0100cd8:	0f b7 85 14 f0 ff ff 	movzwl -0xfec(%ebp),%eax
c0100cdf:	83 c6 01             	add    $0x1,%esi
c0100ce2:	39 f0                	cmp    %esi,%eax
c0100ce4:	0f 8e 86 00 00 00    	jle    c0100d70 <loader+0xe0>
c0100cea:	0f b7 9d 12 f0 ff ff 	movzwl -0xfee(%ebp),%ebx
c0100cf1:	0f af de             	imul   %esi,%ebx
c0100cf4:	03 9d 04 f0 ff ff    	add    -0xffc(%ebp),%ebx
c0100cfa:	01 fb                	add    %edi,%ebx
c0100cfc:	83 3b 01             	cmpl   $0x1,(%ebx)
c0100cff:	75 d7                	jne    c0100cd8 <loader+0x48>
c0100d01:	83 ec 08             	sub    $0x8,%esp
c0100d04:	ff 73 14             	pushl  0x14(%ebx)
c0100d07:	ff 73 08             	pushl  0x8(%ebx)
c0100d0a:	e8 41 f3 ff ff       	call   c0100050 <mm_malloc>
c0100d0f:	83 c4 0c             	add    $0xc,%esp
c0100d12:	ff 73 10             	pushl  0x10(%ebx)
c0100d15:	ff 73 04             	pushl  0x4(%ebx)
c0100d18:	50                   	push   %eax
c0100d19:	89 85 d4 ef ff ff    	mov    %eax,-0x102c(%ebp)
c0100d1f:	e8 0c 05 00 00       	call   c0101230 <ramdisk_read>
c0100d24:	8b 53 10             	mov    0x10(%ebx),%edx
c0100d27:	8b 4b 14             	mov    0x14(%ebx),%ecx
c0100d2a:	83 c4 0c             	add    $0xc,%esp
c0100d2d:	8b 85 d4 ef ff ff    	mov    -0x102c(%ebp),%eax
c0100d33:	29 d1                	sub    %edx,%ecx
c0100d35:	01 c2                	add    %eax,%edx
c0100d37:	51                   	push   %ecx
c0100d38:	6a 00                	push   $0x0
c0100d3a:	52                   	push   %edx
c0100d3b:	e8 38 06 00 00       	call   c0101378 <memset>
c0100d40:	8b 43 14             	mov    0x14(%ebx),%eax
c0100d43:	03 43 08             	add    0x8(%ebx),%eax
c0100d46:	83 c4 10             	add    $0x10,%esp
c0100d49:	83 e8 01             	sub    $0x1,%eax
c0100d4c:	3b 05 00 60 14 c0    	cmp    0xc0146000,%eax
c0100d52:	76 84                	jbe    c0100cd8 <loader+0x48>
c0100d54:	a3 00 60 14 c0       	mov    %eax,0xc0146000
c0100d59:	0f b7 85 14 f0 ff ff 	movzwl -0xfec(%ebp),%eax
c0100d60:	83 c6 01             	add    $0x1,%esi
c0100d63:	39 f0                	cmp    %esi,%eax
c0100d65:	7f 83                	jg     c0100cea <loader+0x5a>
c0100d67:	89 f6                	mov    %esi,%esi
c0100d69:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
c0100d70:	83 ec 08             	sub    $0x8,%esp
c0100d73:	8b 85 00 f0 ff ff    	mov    -0x1000(%ebp),%eax
c0100d79:	68 00 00 10 00       	push   $0x100000
c0100d7e:	68 00 00 f0 bf       	push   $0xbff00000
c0100d83:	89 85 e4 ef ff ff    	mov    %eax,-0x101c(%ebp)
c0100d89:	e8 c2 f2 ff ff       	call   c0100050 <mm_malloc>
c0100d8e:	e8 6d f7 ff ff       	call   c0100500 <get_ucr3>
c0100d93:	0f 22 d8             	mov    %eax,%cr3
c0100d96:	8b 85 e4 ef ff ff    	mov    -0x101c(%ebp),%eax
c0100d9c:	8d 65 f4             	lea    -0xc(%ebp),%esp
c0100d9f:	5b                   	pop    %ebx
c0100da0:	5e                   	pop    %esi
c0100da1:	5f                   	pop    %edi
c0100da2:	5d                   	pop    %ebp
c0100da3:	c3                   	ret    
c0100da4:	66 90                	xchg   %ax,%ax
c0100da6:	66 90                	xchg   %ax,%ax
c0100da8:	66 90                	xchg   %ax,%ax
c0100daa:	66 90                	xchg   %ax,%ax
c0100dac:	66 90                	xchg   %ax,%ax
c0100dae:	66 90                	xchg   %ax,%ax

c0100db0 <init_cond>:
c0100db0:	55                   	push   %ebp
c0100db1:	89 e5                	mov    %esp,%ebp
c0100db3:	83 ec 08             	sub    $0x8,%esp
c0100db6:	e8 85 f6 ff ff       	call   c0100440 <init_segment>
c0100dbb:	e8 40 fa ff ff       	call   c0100800 <init_idt>
c0100dc0:	e8 7b f7 ff ff       	call   c0100540 <init_mm>
c0100dc5:	68 64 17 10 c0       	push   $0xc0101764
c0100dca:	6a 4a                	push   $0x4a
c0100dcc:	68 cf 16 10 c0       	push   $0xc01016cf
c0100dd1:	68 e4 16 10 c0       	push   $0xc01016e4
c0100dd6:	e8 e5 04 00 00       	call   c01012c0 <printk>
c0100ddb:	e8 b0 fe ff ff       	call   c0100c90 <loader>
c0100de0:	bc 00 00 00 c0       	mov    $0xc0000000,%esp
c0100de5:	bd 00 00 00 00       	mov    $0x0,%ebp
c0100dea:	83 ec 10             	sub    $0x10,%esp
c0100ded:	ff d0                	call   *%eax
c0100def:	68 64 17 10 c0       	push   $0xc0101764
c0100df4:	6a 6b                	push   $0x6b
c0100df6:	68 cf 16 10 c0       	push   $0xc01016cf
c0100dfb:	68 18 17 10 c0       	push   $0xc0101718
c0100e00:	e8 bb 04 00 00       	call   c01012c0 <printk>
c0100e05:	b8 01 00 00 00       	mov    $0x1,%eax
c0100e0a:	d6                   	(bad)  
c0100e0b:	83 c4 20             	add    $0x20,%esp
c0100e0e:	c9                   	leave  
c0100e0f:	c3                   	ret    

c0100e10 <init>:
c0100e10:	55                   	push   %ebp
c0100e11:	89 e5                	mov    %esp,%ebp
c0100e13:	83 ec 08             	sub    $0x8,%esp
c0100e16:	e8 a5 f5 ff ff       	call   c01003c0 <init_page>
c0100e1b:	81 c4 00 00 00 c0    	add    $0xc0000000,%esp
c0100e21:	b8 b0 0d 10 c0       	mov    $0xc0100db0,%eax
c0100e26:	ff e0                	jmp    *%eax
c0100e28:	68 6e 17 10 c0       	push   $0xc010176e
c0100e2d:	6a 24                	push   $0x24
c0100e2f:	68 cf 16 10 c0       	push   $0xc01016cf
c0100e34:	68 18 17 10 c0       	push   $0xc0101718
c0100e39:	e8 82 04 00 00       	call   c01012c0 <printk>
c0100e3e:	b8 01 00 00 00       	mov    $0x1,%eax
c0100e43:	d6                   	(bad)  
c0100e44:	83 c4 10             	add    $0x10,%esp
c0100e47:	c9                   	leave  
c0100e48:	c3                   	ret    
c0100e49:	66 90                	xchg   %ax,%ax
c0100e4b:	66 90                	xchg   %ax,%ax
c0100e4d:	66 90                	xchg   %ax,%ax
c0100e4f:	90                   	nop

c0100e50 <buf_fetch>:
c0100e50:	55                   	push   %ebp
c0100e51:	89 c2                	mov    %eax,%edx
c0100e53:	89 e5                	mov    %esp,%ebp
c0100e55:	57                   	push   %edi
c0100e56:	56                   	push   %esi
c0100e57:	53                   	push   %ebx
c0100e58:	89 c3                	mov    %eax,%ebx
c0100e5a:	83 e3 7f             	and    $0x7f,%ebx
c0100e5d:	89 d8                	mov    %ebx,%eax
c0100e5f:	83 ec 1c             	sub    $0x1c,%esp
c0100e62:	c1 e0 09             	shl    $0x9,%eax
c0100e65:	8d 0c d8             	lea    (%eax,%ebx,8),%ecx
c0100e68:	8d 81 c0 89 14 c0    	lea    -0x3feb7640(%ecx),%eax
c0100e6e:	80 78 04 01          	cmpb   $0x1,0x4(%eax)
c0100e72:	74 5c                	je     c0100ed0 <buf_fetch+0x80>
c0100e74:	89 d7                	mov    %edx,%edi
c0100e76:	89 da                	mov    %ebx,%edx
c0100e78:	c1 e2 09             	shl    $0x9,%edx
c0100e7b:	8d 0c da             	lea    (%edx,%ebx,8),%ecx
c0100e7e:	8d 91 c0 89 14 c0    	lea    -0x3feb7640(%ecx),%edx
c0100e84:	66 81 7a 04 01 01    	cmpw   $0x101,0x4(%edx)
c0100e8a:	74 54                	je     c0100ee0 <buf_fetch+0x90>
c0100e8c:	8d 72 06             	lea    0x6(%edx),%esi
c0100e8f:	83 ec 08             	sub    $0x8,%esp
c0100e92:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0100e95:	57                   	push   %edi
c0100e96:	56                   	push   %esi
c0100e97:	e8 e4 01 00 00       	call   c0101080 <disk_do_read>
c0100e9c:	89 da                	mov    %ebx,%edx
c0100e9e:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0100ea1:	83 c4 10             	add    $0x10,%esp
c0100ea4:	c1 e2 09             	shl    $0x9,%edx
c0100ea7:	8d 0c da             	lea    (%edx,%ebx,8),%ecx
c0100eaa:	c6 81 c4 89 14 c0 01 	movb   $0x1,-0x3feb763c(%ecx)
c0100eb1:	89 b9 c0 89 14 c0    	mov    %edi,-0x3feb7640(%ecx)
c0100eb7:	c6 81 c5 89 14 c0 00 	movb   $0x0,-0x3feb763b(%ecx)
c0100ebe:	8d 65 f4             	lea    -0xc(%ebp),%esp
c0100ec1:	5b                   	pop    %ebx
c0100ec2:	5e                   	pop    %esi
c0100ec3:	5f                   	pop    %edi
c0100ec4:	5d                   	pop    %ebp
c0100ec5:	c3                   	ret    
c0100ec6:	8d 76 00             	lea    0x0(%esi),%esi
c0100ec9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
c0100ed0:	39 91 c0 89 14 c0    	cmp    %edx,-0x3feb7640(%ecx)
c0100ed6:	75 9c                	jne    c0100e74 <buf_fetch+0x24>
c0100ed8:	eb e4                	jmp    c0100ebe <buf_fetch+0x6e>
c0100eda:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0100ee0:	8d 72 06             	lea    0x6(%edx),%esi
c0100ee3:	83 ec 08             	sub    $0x8,%esp
c0100ee6:	ff b1 c0 89 14 c0    	pushl  -0x3feb7640(%ecx)
c0100eec:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0100eef:	56                   	push   %esi
c0100ef0:	e8 cb 01 00 00       	call   c01010c0 <disk_do_write>
c0100ef5:	83 c4 10             	add    $0x10,%esp
c0100ef8:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0100efb:	eb 92                	jmp    c0100e8f <buf_fetch+0x3f>
c0100efd:	8d 76 00             	lea    0x0(%esi),%esi

c0100f00 <buf_init>:
c0100f00:	55                   	push   %ebp
c0100f01:	b8 c4 89 14 c0       	mov    $0xc01489c4,%eax
c0100f06:	89 e5                	mov    %esp,%ebp
c0100f08:	90                   	nop
c0100f09:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0100f10:	c6 00 00             	movb   $0x0,(%eax)
c0100f13:	05 08 02 00 00       	add    $0x208,%eax
c0100f18:	3d c4 8d 15 c0       	cmp    $0xc0158dc4,%eax
c0100f1d:	75 f1                	jne    c0100f10 <buf_init+0x10>
c0100f1f:	5d                   	pop    %ebp
c0100f20:	c3                   	ret    
c0100f21:	eb 0d                	jmp    c0100f30 <buf_writeback>
c0100f23:	90                   	nop
c0100f24:	90                   	nop
c0100f25:	90                   	nop
c0100f26:	90                   	nop
c0100f27:	90                   	nop
c0100f28:	90                   	nop
c0100f29:	90                   	nop
c0100f2a:	90                   	nop
c0100f2b:	90                   	nop
c0100f2c:	90                   	nop
c0100f2d:	90                   	nop
c0100f2e:	90                   	nop
c0100f2f:	90                   	nop

c0100f30 <buf_writeback>:
c0100f30:	55                   	push   %ebp
c0100f31:	89 e5                	mov    %esp,%ebp
c0100f33:	53                   	push   %ebx
c0100f34:	bb c6 89 14 c0       	mov    $0xc01489c6,%ebx
c0100f39:	83 ec 04             	sub    $0x4,%esp
c0100f3c:	eb 10                	jmp    c0100f4e <buf_writeback+0x1e>
c0100f3e:	66 90                	xchg   %ax,%ax
c0100f40:	81 c3 08 02 00 00    	add    $0x208,%ebx
c0100f46:	81 fb c6 8d 15 c0    	cmp    $0xc0158dc6,%ebx
c0100f4c:	74 32                	je     c0100f80 <buf_writeback+0x50>
c0100f4e:	80 7b ff 01          	cmpb   $0x1,-0x1(%ebx)
c0100f52:	75 ec                	jne    c0100f40 <buf_writeback+0x10>
c0100f54:	83 ec 08             	sub    $0x8,%esp
c0100f57:	ff 73 fa             	pushl  -0x6(%ebx)
c0100f5a:	53                   	push   %ebx
c0100f5b:	81 c3 08 02 00 00    	add    $0x208,%ebx
c0100f61:	e8 5a 01 00 00       	call   c01010c0 <disk_do_write>
c0100f66:	c6 83 f7 fd ff ff 00 	movb   $0x0,-0x209(%ebx)
c0100f6d:	83 c4 10             	add    $0x10,%esp
c0100f70:	81 fb c6 8d 15 c0    	cmp    $0xc0158dc6,%ebx
c0100f76:	75 d6                	jne    c0100f4e <buf_writeback+0x1e>
c0100f78:	90                   	nop
c0100f79:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0100f80:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0100f83:	c9                   	leave  
c0100f84:	c3                   	ret    
c0100f85:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0100f89:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0100f90 <read_byte>:
c0100f90:	55                   	push   %ebp
c0100f91:	89 e5                	mov    %esp,%ebp
c0100f93:	53                   	push   %ebx
c0100f94:	83 ec 04             	sub    $0x4,%esp
c0100f97:	8b 5d 08             	mov    0x8(%ebp),%ebx
c0100f9a:	89 d8                	mov    %ebx,%eax
c0100f9c:	81 e3 ff 01 00 00    	and    $0x1ff,%ebx
c0100fa2:	c1 e8 09             	shr    $0x9,%eax
c0100fa5:	e8 a6 fe ff ff       	call   c0100e50 <buf_fetch>
c0100faa:	0f b6 44 18 06       	movzbl 0x6(%eax,%ebx,1),%eax
c0100faf:	83 c4 04             	add    $0x4,%esp
c0100fb2:	5b                   	pop    %ebx
c0100fb3:	5d                   	pop    %ebp
c0100fb4:	c3                   	ret    
c0100fb5:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0100fb9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0100fc0 <write_byte>:
c0100fc0:	55                   	push   %ebp
c0100fc1:	89 e5                	mov    %esp,%ebp
c0100fc3:	56                   	push   %esi
c0100fc4:	53                   	push   %ebx
c0100fc5:	8b 5d 08             	mov    0x8(%ebp),%ebx
c0100fc8:	8b 75 0c             	mov    0xc(%ebp),%esi
c0100fcb:	89 d8                	mov    %ebx,%eax
c0100fcd:	81 e3 ff 01 00 00    	and    $0x1ff,%ebx
c0100fd3:	c1 e8 09             	shr    $0x9,%eax
c0100fd6:	e8 75 fe ff ff       	call   c0100e50 <buf_fetch>
c0100fdb:	89 f2                	mov    %esi,%edx
c0100fdd:	88 54 18 06          	mov    %dl,0x6(%eax,%ebx,1)
c0100fe1:	c6 40 05 01          	movb   $0x1,0x5(%eax)
c0100fe5:	5b                   	pop    %ebx
c0100fe6:	5e                   	pop    %esi
c0100fe7:	5d                   	pop    %ebp
c0100fe8:	c3                   	ret    
c0100fe9:	66 90                	xchg   %ax,%ax
c0100feb:	66 90                	xchg   %ax,%ax
c0100fed:	66 90                	xchg   %ax,%ax
c0100fef:	90                   	nop

c0100ff0 <dma_prepare>:
c0100ff0:	55                   	push   %ebp
c0100ff1:	89 e5                	mov    %esp,%ebp
c0100ff3:	83 ec 08             	sub    $0x8,%esp
c0100ff6:	68 8f 17 10 c0       	push   $0xc010178f
c0100ffb:	6a 1d                	push   $0x1d
c0100ffd:	68 73 17 10 c0       	push   $0xc0101773
c0101002:	68 b4 14 10 c0       	push   $0xc01014b4
c0101007:	e8 b4 02 00 00       	call   c01012c0 <printk>
c010100c:	b8 01 00 00 00       	mov    $0x1,%eax
c0101011:	d6                   	(bad)  
c0101012:	83 c4 10             	add    $0x10,%esp
c0101015:	c9                   	leave  
c0101016:	c3                   	ret    
c0101017:	89 f6                	mov    %esi,%esi
c0101019:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0101020 <dma_issue_read>:
c0101020:	55                   	push   %ebp
c0101021:	ba 40 c0 ff ff       	mov    $0xffffc040,%edx
c0101026:	89 e5                	mov    %esp,%ebp
c0101028:	ec                   	in     (%dx),%al
c0101029:	83 c8 09             	or     $0x9,%eax
c010102c:	ee                   	out    %al,(%dx)
c010102d:	5d                   	pop    %ebp
c010102e:	c3                   	ret    
c010102f:	90                   	nop

c0101030 <ide_prepare>:
c0101030:	55                   	push   %ebp
c0101031:	89 c1                	mov    %eax,%ecx
c0101033:	ba f7 01 00 00       	mov    $0x1f7,%edx
c0101038:	89 e5                	mov    %esp,%ebp
c010103a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0101040:	ec                   	in     (%dx),%al
c0101041:	83 e0 c0             	and    $0xffffffc0,%eax
c0101044:	3c 40                	cmp    $0x40,%al
c0101046:	75 f8                	jne    c0101040 <ide_prepare+0x10>
c0101048:	ba f1 01 00 00       	mov    $0x1f1,%edx
c010104d:	31 c0                	xor    %eax,%eax
c010104f:	ee                   	out    %al,(%dx)
c0101050:	b8 01 00 00 00       	mov    $0x1,%eax
c0101055:	b2 f2                	mov    $0xf2,%dl
c0101057:	ee                   	out    %al,(%dx)
c0101058:	b2 f3                	mov    $0xf3,%dl
c010105a:	89 c8                	mov    %ecx,%eax
c010105c:	ee                   	out    %al,(%dx)
c010105d:	89 c8                	mov    %ecx,%eax
c010105f:	b2 f4                	mov    $0xf4,%dl
c0101061:	c1 e8 08             	shr    $0x8,%eax
c0101064:	ee                   	out    %al,(%dx)
c0101065:	89 c8                	mov    %ecx,%eax
c0101067:	b2 f5                	mov    $0xf5,%dl
c0101069:	c1 e8 10             	shr    $0x10,%eax
c010106c:	ee                   	out    %al,(%dx)
c010106d:	89 c8                	mov    %ecx,%eax
c010106f:	b2 f6                	mov    $0xf6,%dl
c0101071:	c1 e8 18             	shr    $0x18,%eax
c0101074:	83 c8 e0             	or     $0xffffffe0,%eax
c0101077:	ee                   	out    %al,(%dx)
c0101078:	5d                   	pop    %ebp
c0101079:	c3                   	ret    
c010107a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

c0101080 <disk_do_read>:
c0101080:	55                   	push   %ebp
c0101081:	89 e5                	mov    %esp,%ebp
c0101083:	53                   	push   %ebx
c0101084:	8b 45 0c             	mov    0xc(%ebp),%eax
c0101087:	e8 a4 ff ff ff       	call   c0101030 <ide_prepare>
c010108c:	ba f7 01 00 00       	mov    $0x1f7,%edx
c0101091:	b8 20 00 00 00       	mov    $0x20,%eax
c0101096:	ee                   	out    %al,(%dx)
c0101097:	8b 4d 08             	mov    0x8(%ebp),%ecx
c010109a:	b2 f0                	mov    $0xf0,%dl
c010109c:	8d 99 00 02 00 00    	lea    0x200(%ecx),%ebx
c01010a2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c01010a8:	ed                   	in     (%dx),%eax
c01010a9:	89 01                	mov    %eax,(%ecx)
c01010ab:	83 c1 04             	add    $0x4,%ecx
c01010ae:	39 d9                	cmp    %ebx,%ecx
c01010b0:	75 f6                	jne    c01010a8 <disk_do_read+0x28>
c01010b2:	5b                   	pop    %ebx
c01010b3:	5d                   	pop    %ebp
c01010b4:	c3                   	ret    
c01010b5:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c01010b9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c01010c0 <disk_do_write>:
c01010c0:	55                   	push   %ebp
c01010c1:	89 e5                	mov    %esp,%ebp
c01010c3:	53                   	push   %ebx
c01010c4:	8b 45 0c             	mov    0xc(%ebp),%eax
c01010c7:	e8 64 ff ff ff       	call   c0101030 <ide_prepare>
c01010cc:	ba f7 01 00 00       	mov    $0x1f7,%edx
c01010d1:	b8 30 00 00 00       	mov    $0x30,%eax
c01010d6:	ee                   	out    %al,(%dx)
c01010d7:	8b 4d 08             	mov    0x8(%ebp),%ecx
c01010da:	b2 f0                	mov    $0xf0,%dl
c01010dc:	8d 99 00 02 00 00    	lea    0x200(%ecx),%ebx
c01010e2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c01010e8:	8b 01                	mov    (%ecx),%eax
c01010ea:	ef                   	out    %eax,(%dx)
c01010eb:	83 c1 04             	add    $0x4,%ecx
c01010ee:	39 d9                	cmp    %ebx,%ecx
c01010f0:	75 f6                	jne    c01010e8 <disk_do_write+0x28>
c01010f2:	5b                   	pop    %ebx
c01010f3:	5d                   	pop    %ebp
c01010f4:	c3                   	ret    
c01010f5:	66 90                	xchg   %ax,%ax
c01010f7:	66 90                	xchg   %ax,%ax
c01010f9:	66 90                	xchg   %ax,%ax
c01010fb:	66 90                	xchg   %ax,%ax
c01010fd:	66 90                	xchg   %ax,%ax
c01010ff:	90                   	nop

c0101100 <ide_intr>:
c0101100:	55                   	push   %ebp
c0101101:	c7 05 c4 8d 15 c0 01 	movl   $0x1,0xc0158dc4
c0101108:	00 00 00 
c010110b:	89 e5                	mov    %esp,%ebp
c010110d:	5d                   	pop    %ebp
c010110e:	c3                   	ret    
c010110f:	90                   	nop

c0101110 <ide_writeback>:
c0101110:	a1 c0 8d 15 c0       	mov    0xc0158dc0,%eax
c0101115:	83 c0 01             	add    $0x1,%eax
c0101118:	83 f8 64             	cmp    $0x64,%eax
c010111b:	a3 c0 8d 15 c0       	mov    %eax,0xc0158dc0
c0101120:	74 06                	je     c0101128 <ide_writeback+0x18>
c0101122:	c3                   	ret    
c0101123:	90                   	nop
c0101124:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0101128:	55                   	push   %ebp
c0101129:	89 e5                	mov    %esp,%ebp
c010112b:	83 ec 08             	sub    $0x8,%esp
c010112e:	e8 fd fd ff ff       	call   c0100f30 <buf_writeback>
c0101133:	c7 05 c0 8d 15 c0 00 	movl   $0x0,0xc0158dc0
c010113a:	00 00 00 
c010113d:	c9                   	leave  
c010113e:	c3                   	ret    
c010113f:	90                   	nop

c0101140 <ide_read>:
c0101140:	55                   	push   %ebp
c0101141:	89 e5                	mov    %esp,%ebp
c0101143:	57                   	push   %edi
c0101144:	56                   	push   %esi
c0101145:	53                   	push   %ebx
c0101146:	83 ec 0c             	sub    $0xc,%esp
c0101149:	8b 5d 0c             	mov    0xc(%ebp),%ebx
c010114c:	8b 45 10             	mov    0x10(%ebp),%eax
c010114f:	8b 7d 08             	mov    0x8(%ebp),%edi
c0101152:	8d 34 18             	lea    (%eax,%ebx,1),%esi
c0101155:	29 df                	sub    %ebx,%edi
c0101157:	85 c0                	test   %eax,%eax
c0101159:	74 1b                	je     c0101176 <ide_read+0x36>
c010115b:	90                   	nop
c010115c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0101160:	83 ec 0c             	sub    $0xc,%esp
c0101163:	53                   	push   %ebx
c0101164:	e8 27 fe ff ff       	call   c0100f90 <read_byte>
c0101169:	88 04 1f             	mov    %al,(%edi,%ebx,1)
c010116c:	83 c3 01             	add    $0x1,%ebx
c010116f:	83 c4 10             	add    $0x10,%esp
c0101172:	39 f3                	cmp    %esi,%ebx
c0101174:	75 ea                	jne    c0101160 <ide_read+0x20>
c0101176:	8d 65 f4             	lea    -0xc(%ebp),%esp
c0101179:	5b                   	pop    %ebx
c010117a:	5e                   	pop    %esi
c010117b:	5f                   	pop    %edi
c010117c:	5d                   	pop    %ebp
c010117d:	c3                   	ret    
c010117e:	66 90                	xchg   %ax,%ax

c0101180 <ide_write>:
c0101180:	55                   	push   %ebp
c0101181:	89 e5                	mov    %esp,%ebp
c0101183:	57                   	push   %edi
c0101184:	56                   	push   %esi
c0101185:	53                   	push   %ebx
c0101186:	83 ec 0c             	sub    $0xc,%esp
c0101189:	8b 5d 0c             	mov    0xc(%ebp),%ebx
c010118c:	8b 45 10             	mov    0x10(%ebp),%eax
c010118f:	8b 7d 08             	mov    0x8(%ebp),%edi
c0101192:	8d 34 18             	lea    (%eax,%ebx,1),%esi
c0101195:	29 df                	sub    %ebx,%edi
c0101197:	85 c0                	test   %eax,%eax
c0101199:	74 1d                	je     c01011b8 <ide_write+0x38>
c010119b:	90                   	nop
c010119c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c01011a0:	0f b6 04 1f          	movzbl (%edi,%ebx,1),%eax
c01011a4:	83 ec 08             	sub    $0x8,%esp
c01011a7:	50                   	push   %eax
c01011a8:	53                   	push   %ebx
c01011a9:	83 c3 01             	add    $0x1,%ebx
c01011ac:	e8 0f fe ff ff       	call   c0100fc0 <write_byte>
c01011b1:	83 c4 10             	add    $0x10,%esp
c01011b4:	39 f3                	cmp    %esi,%ebx
c01011b6:	75 e8                	jne    c01011a0 <ide_write+0x20>
c01011b8:	8d 65 f4             	lea    -0xc(%ebp),%esp
c01011bb:	5b                   	pop    %ebx
c01011bc:	5e                   	pop    %esi
c01011bd:	5f                   	pop    %edi
c01011be:	5d                   	pop    %ebp
c01011bf:	c3                   	ret    

c01011c0 <clear_ide_intr>:
c01011c0:	55                   	push   %ebp
c01011c1:	c7 05 c4 8d 15 c0 00 	movl   $0x0,0xc0158dc4
c01011c8:	00 00 00 
c01011cb:	89 e5                	mov    %esp,%ebp
c01011cd:	5d                   	pop    %ebp
c01011ce:	c3                   	ret    
c01011cf:	90                   	nop

c01011d0 <wait_ide_intr>:
c01011d0:	a1 c4 8d 15 c0       	mov    0xc0158dc4,%eax
c01011d5:	55                   	push   %ebp
c01011d6:	89 e5                	mov    %esp,%ebp
c01011d8:	85 c0                	test   %eax,%eax
c01011da:	75 0e                	jne    c01011ea <wait_ide_intr+0x1a>
c01011dc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c01011e0:	f4                   	hlt    
c01011e1:	a1 c4 8d 15 c0       	mov    0xc0158dc4,%eax
c01011e6:	85 c0                	test   %eax,%eax
c01011e8:	74 f6                	je     c01011e0 <wait_ide_intr+0x10>
c01011ea:	c7 05 c4 8d 15 c0 00 	movl   $0x0,0xc0158dc4
c01011f1:	00 00 00 
c01011f4:	5d                   	pop    %ebp
c01011f5:	c3                   	ret    
c01011f6:	8d 76 00             	lea    0x0(%esi),%esi
c01011f9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0101200 <init_ide>:
c0101200:	55                   	push   %ebp
c0101201:	89 e5                	mov    %esp,%ebp
c0101203:	83 ec 08             	sub    $0x8,%esp
c0101206:	e8 f5 fc ff ff       	call   c0100f00 <buf_init>
c010120b:	83 ec 08             	sub    $0x8,%esp
c010120e:	68 10 11 10 c0       	push   $0xc0101110
c0101213:	6a 00                	push   $0x0
c0101215:	e8 46 f4 ff ff       	call   c0100660 <add_irq_handle>
c010121a:	58                   	pop    %eax
c010121b:	5a                   	pop    %edx
c010121c:	68 00 11 10 c0       	push   $0xc0101100
c0101221:	6a 0e                	push   $0xe
c0101223:	e8 38 f4 ff ff       	call   c0100660 <add_irq_handle>
c0101228:	83 c4 10             	add    $0x10,%esp
c010122b:	c9                   	leave  
c010122c:	c3                   	ret    
c010122d:	66 90                	xchg   %ax,%ax
c010122f:	90                   	nop

c0101230 <ramdisk_read>:
c0101230:	55                   	push   %ebp
c0101231:	89 e5                	mov    %esp,%ebp
c0101233:	53                   	push   %ebx
c0101234:	8b 55 0c             	mov    0xc(%ebp),%edx
c0101237:	8b 4d 10             	mov    0x10(%ebp),%ecx
c010123a:	8b 5d 08             	mov    0x8(%ebp),%ebx
c010123d:	8d 04 0a             	lea    (%edx,%ecx,1),%eax
c0101240:	3d ff ff 09 00       	cmp    $0x9ffff,%eax
c0101245:	76 06                	jbe    c010124d <ramdisk_read+0x1d>
c0101247:	b8 01 00 00 00       	mov    $0x1,%eax
c010124c:	d6                   	(bad)  
c010124d:	89 5d 08             	mov    %ebx,0x8(%ebp)
c0101250:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0101253:	89 55 0c             	mov    %edx,0xc(%ebp)
c0101256:	5b                   	pop    %ebx
c0101257:	5d                   	pop    %ebp
c0101258:	e9 d3 00 00 00       	jmp    c0101330 <memcpy>
c010125d:	8d 76 00             	lea    0x0(%esi),%esi

c0101260 <ramdisk_write>:
c0101260:	55                   	push   %ebp
c0101261:	89 e5                	mov    %esp,%ebp
c0101263:	53                   	push   %ebx
c0101264:	8b 55 0c             	mov    0xc(%ebp),%edx
c0101267:	8b 4d 10             	mov    0x10(%ebp),%ecx
c010126a:	8b 5d 08             	mov    0x8(%ebp),%ebx
c010126d:	8d 04 0a             	lea    (%edx,%ecx,1),%eax
c0101270:	3d ff ff 09 00       	cmp    $0x9ffff,%eax
c0101275:	76 06                	jbe    c010127d <ramdisk_write+0x1d>
c0101277:	b8 01 00 00 00       	mov    $0x1,%eax
c010127c:	d6                   	(bad)  
c010127d:	89 5d 0c             	mov    %ebx,0xc(%ebp)
c0101280:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0101283:	89 55 08             	mov    %edx,0x8(%ebp)
c0101286:	5b                   	pop    %ebx
c0101287:	5d                   	pop    %ebp
c0101288:	e9 a3 00 00 00       	jmp    c0101330 <memcpy>
c010128d:	66 90                	xchg   %ax,%ax
c010128f:	90                   	nop

c0101290 <sbrk>:
c0101290:	55                   	push   %ebp
c0101291:	89 e5                	mov    %esp,%ebp
c0101293:	83 ec 08             	sub    $0x8,%esp
c0101296:	68 b1 17 10 c0       	push   $0xc01017b1
c010129b:	6a 08                	push   $0x8
c010129d:	68 9b 17 10 c0       	push   $0xc010179b
c01012a2:	68 18 17 10 c0       	push   $0xc0101718
c01012a7:	e8 14 00 00 00       	call   c01012c0 <printk>
c01012ac:	b8 01 00 00 00       	mov    $0x1,%eax
c01012b1:	d6                   	(bad)  
c01012b2:	30 c0                	xor    %al,%al
c01012b4:	c9                   	leave  
c01012b5:	c3                   	ret    
c01012b6:	66 90                	xchg   %ax,%ax
c01012b8:	66 90                	xchg   %ax,%ax
c01012ba:	66 90                	xchg   %ax,%ax
c01012bc:	66 90                	xchg   %ax,%ax
c01012be:	66 90                	xchg   %ax,%ax

c01012c0 <printk>:
c01012c0:	55                   	push   %ebp
c01012c1:	89 e5                	mov    %esp,%ebp
c01012c3:	5d                   	pop    %ebp
c01012c4:	c3                   	ret    
c01012c5:	66 90                	xchg   %ax,%ax
c01012c7:	66 90                	xchg   %ax,%ax
c01012c9:	66 90                	xchg   %ax,%ax
c01012cb:	66 90                	xchg   %ax,%ax
c01012cd:	66 90                	xchg   %ax,%ax
c01012cf:	90                   	nop

c01012d0 <init_serial>:
c01012d0:	55                   	push   %ebp
c01012d1:	ba f9 03 00 00       	mov    $0x3f9,%edx
c01012d6:	31 c0                	xor    %eax,%eax
c01012d8:	89 e5                	mov    %esp,%ebp
c01012da:	ee                   	out    %al,(%dx)
c01012db:	b8 80 ff ff ff       	mov    $0xffffff80,%eax
c01012e0:	b2 fb                	mov    $0xfb,%dl
c01012e2:	ee                   	out    %al,(%dx)
c01012e3:	b8 01 00 00 00       	mov    $0x1,%eax
c01012e8:	b2 f8                	mov    $0xf8,%dl
c01012ea:	ee                   	out    %al,(%dx)
c01012eb:	31 c0                	xor    %eax,%eax
c01012ed:	b2 f9                	mov    $0xf9,%dl
c01012ef:	ee                   	out    %al,(%dx)
c01012f0:	b8 03 00 00 00       	mov    $0x3,%eax
c01012f5:	b2 fb                	mov    $0xfb,%dl
c01012f7:	ee                   	out    %al,(%dx)
c01012f8:	b8 c7 ff ff ff       	mov    $0xffffffc7,%eax
c01012fd:	b2 fa                	mov    $0xfa,%dl
c01012ff:	ee                   	out    %al,(%dx)
c0101300:	b8 0b 00 00 00       	mov    $0xb,%eax
c0101305:	b2 fc                	mov    $0xfc,%dl
c0101307:	ee                   	out    %al,(%dx)
c0101308:	5d                   	pop    %ebp
c0101309:	c3                   	ret    
c010130a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

c0101310 <serial_printc>:
c0101310:	55                   	push   %ebp
c0101311:	ba fd 03 00 00       	mov    $0x3fd,%edx
c0101316:	89 e5                	mov    %esp,%ebp
c0101318:	8b 4d 08             	mov    0x8(%ebp),%ecx
c010131b:	90                   	nop
c010131c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0101320:	ec                   	in     (%dx),%al
c0101321:	a8 20                	test   $0x20,%al
c0101323:	74 fb                	je     c0101320 <serial_printc+0x10>
c0101325:	ba f8 03 00 00       	mov    $0x3f8,%edx
c010132a:	89 c8                	mov    %ecx,%eax
c010132c:	ee                   	out    %al,(%dx)
c010132d:	5d                   	pop    %ebp
c010132e:	c3                   	ret    
c010132f:	90                   	nop

c0101330 <memcpy>:
c0101330:	55                   	push   %ebp
c0101331:	89 e5                	mov    %esp,%ebp
c0101333:	56                   	push   %esi
c0101334:	57                   	push   %edi
c0101335:	53                   	push   %ebx
c0101336:	8b 7d 08             	mov    0x8(%ebp),%edi
c0101339:	8b 4d 10             	mov    0x10(%ebp),%ecx
c010133c:	8b 75 0c             	mov    0xc(%ebp),%esi
c010133f:	fc                   	cld    
c0101340:	83 f9 08             	cmp    $0x8,%ecx
c0101343:	76 26                	jbe    c010136b <memcpy+0x3b>
c0101345:	89 fa                	mov    %edi,%edx
c0101347:	89 cb                	mov    %ecx,%ebx
c0101349:	83 e2 03             	and    $0x3,%edx
c010134c:	74 10                	je     c010135e <memcpy+0x2e>
c010134e:	b9 04 00 00 00       	mov    $0x4,%ecx
c0101353:	29 d1                	sub    %edx,%ecx
c0101355:	83 e1 03             	and    $0x3,%ecx
c0101358:	29 cb                	sub    %ecx,%ebx
c010135a:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
c010135c:	89 d9                	mov    %ebx,%ecx
c010135e:	c1 e9 02             	shr    $0x2,%ecx
c0101361:	8d 76 00             	lea    0x0(%esi),%esi
c0101364:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
c0101366:	89 d9                	mov    %ebx,%ecx
c0101368:	83 e1 03             	and    $0x3,%ecx
c010136b:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
c010136d:	8b 45 08             	mov    0x8(%ebp),%eax
c0101370:	8d 65 f4             	lea    -0xc(%ebp),%esp
c0101373:	5b                   	pop    %ebx
c0101374:	5f                   	pop    %edi
c0101375:	5e                   	pop    %esi
c0101376:	c9                   	leave  
c0101377:	c3                   	ret    

c0101378 <memset>:
c0101378:	55                   	push   %ebp
c0101379:	89 e5                	mov    %esp,%ebp
c010137b:	57                   	push   %edi
c010137c:	8b 7d 08             	mov    0x8(%ebp),%edi
c010137f:	0f b6 45 0c          	movzbl 0xc(%ebp),%eax
c0101383:	8b 4d 10             	mov    0x10(%ebp),%ecx
c0101386:	fc                   	cld    
c0101387:	83 f9 10             	cmp    $0x10,%ecx
c010138a:	76 69                	jbe    c01013f5 <memset+0x7d>
c010138c:	f7 c7 07 00 00 00    	test   $0x7,%edi
c0101392:	74 4c                	je     c01013e0 <memset+0x68>
c0101394:	88 07                	mov    %al,(%edi)
c0101396:	47                   	inc    %edi
c0101397:	49                   	dec    %ecx
c0101398:	f7 c7 07 00 00 00    	test   $0x7,%edi
c010139e:	74 40                	je     c01013e0 <memset+0x68>
c01013a0:	88 07                	mov    %al,(%edi)
c01013a2:	47                   	inc    %edi
c01013a3:	49                   	dec    %ecx
c01013a4:	f7 c7 07 00 00 00    	test   $0x7,%edi
c01013aa:	74 34                	je     c01013e0 <memset+0x68>
c01013ac:	88 07                	mov    %al,(%edi)
c01013ae:	47                   	inc    %edi
c01013af:	49                   	dec    %ecx
c01013b0:	f7 c7 07 00 00 00    	test   $0x7,%edi
c01013b6:	74 28                	je     c01013e0 <memset+0x68>
c01013b8:	88 07                	mov    %al,(%edi)
c01013ba:	47                   	inc    %edi
c01013bb:	49                   	dec    %ecx
c01013bc:	f7 c7 07 00 00 00    	test   $0x7,%edi
c01013c2:	74 1c                	je     c01013e0 <memset+0x68>
c01013c4:	88 07                	mov    %al,(%edi)
c01013c6:	47                   	inc    %edi
c01013c7:	49                   	dec    %ecx
c01013c8:	f7 c7 07 00 00 00    	test   $0x7,%edi
c01013ce:	74 10                	je     c01013e0 <memset+0x68>
c01013d0:	88 07                	mov    %al,(%edi)
c01013d2:	47                   	inc    %edi
c01013d3:	49                   	dec    %ecx
c01013d4:	f7 c7 07 00 00 00    	test   $0x7,%edi
c01013da:	74 04                	je     c01013e0 <memset+0x68>
c01013dc:	88 07                	mov    %al,(%edi)
c01013de:	47                   	inc    %edi
c01013df:	49                   	dec    %ecx
c01013e0:	88 c4                	mov    %al,%ah
c01013e2:	89 c2                	mov    %eax,%edx
c01013e4:	c1 e2 10             	shl    $0x10,%edx
c01013e7:	09 d0                	or     %edx,%eax
c01013e9:	89 ca                	mov    %ecx,%edx
c01013eb:	c1 e9 02             	shr    $0x2,%ecx
c01013ee:	83 e2 03             	and    $0x3,%edx
c01013f1:	f3 ab                	rep stos %eax,%es:(%edi)
c01013f3:	89 d1                	mov    %edx,%ecx
c01013f5:	f3 aa                	rep stos %al,%es:(%edi)
c01013f7:	8b 45 08             	mov    0x8(%ebp),%eax
c01013fa:	8d 65 fc             	lea    -0x4(%ebp),%esp
c01013fd:	5f                   	pop    %edi
c01013fe:	c9                   	leave  
c01013ff:	c3                   	ret    
