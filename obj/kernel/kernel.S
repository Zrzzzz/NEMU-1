
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
c010002b:	e9 d0 0e 00 00       	jmp    c0100f00 <init>

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
c01000d7:	a1 00 a0 10 c0       	mov    0xc010a000,%eax
c01000dc:	3d ff 7f 00 00       	cmp    $0x7fff,%eax
c01000e1:	0f 8f c1 01 00 00    	jg     c01002a8 <mm_malloc+0x258>
c01000e7:	89 c1                	mov    %eax,%ecx
c01000e9:	83 c0 01             	add    $0x1,%eax
c01000ec:	c1 e1 0c             	shl    $0xc,%ecx
c01000ef:	83 c9 07             	or     $0x7,%ecx
c01000f2:	89 0e                	mov    %ecx,(%esi)
c01000f4:	a3 00 a0 10 c0       	mov    %eax,0xc010a000
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
c010014c:	e8 67 16 00 00       	call   c01017b8 <memset>
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
c0100178:	c7 44 24 10 64 80 10 	movl   $0xc0108064,0x10(%esp)
c010017f:	c0 
c0100180:	c7 44 24 0c c8 80 10 	movl   $0xc01080c8,0xc(%esp)
c0100187:	c0 
c0100188:	c7 44 24 08 11 00 00 	movl   $0x11,0x8(%esp)
c010018f:	00 
c0100190:	c7 44 24 04 53 80 10 	movl   $0xc0108053,0x4(%esp)
c0100197:	c0 
c0100198:	c7 04 24 74 80 10 c0 	movl   $0xc0108074,(%esp)
c010019f:	e8 0c 15 00 00       	call   c01016b0 <printk>
c01001a4:	b8 01 00 00 00       	mov    $0x1,%eax
c01001a9:	d6                   	(bad)  
c01001aa:	8b 55 e0             	mov    -0x20(%ebp),%edx
c01001ad:	8d 86 00 00 00 c0    	lea    -0x40000000(%esi),%eax
c01001b3:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c01001b8:	c1 ea 0c             	shr    $0xc,%edx
c01001bb:	81 e2 ff 03 00 00    	and    $0x3ff,%edx
c01001c1:	f6 04 90 01          	testb  $0x1,(%eax,%edx,4)
c01001c5:	75 32                	jne    c01001f9 <mm_malloc+0x1a9>
c01001c7:	c7 44 24 10 6c 80 10 	movl   $0xc010806c,0x10(%esp)
c01001ce:	c0 
c01001cf:	c7 44 24 0c c8 80 10 	movl   $0xc01080c8,0xc(%esp)
c01001d6:	c0 
c01001d7:	c7 44 24 08 13 00 00 	movl   $0x13,0x8(%esp)
c01001de:	00 
c01001df:	c7 44 24 04 53 80 10 	movl   $0xc0108053,0x4(%esp)
c01001e6:	c0 
c01001e7:	c7 04 24 74 80 10 c0 	movl   $0xc0108074,(%esp)
c01001ee:	e8 bd 14 00 00       	call   c01016b0 <printk>
c01001f3:	b8 01 00 00 00       	mov    $0x1,%eax
c01001f8:	d6                   	(bad)  
c01001f9:	8b 45 08             	mov    0x8(%ebp),%eax
c01001fc:	c1 e8 16             	shr    $0x16,%eax
c01001ff:	8b 1c 83             	mov    (%ebx,%eax,4),%ebx
c0100202:	f6 c3 01             	test   $0x1,%bl
c0100205:	75 32                	jne    c0100239 <mm_malloc+0x1e9>
c0100207:	c7 44 24 10 64 80 10 	movl   $0xc0108064,0x10(%esp)
c010020e:	c0 
c010020f:	c7 44 24 0c c8 80 10 	movl   $0xc01080c8,0xc(%esp)
c0100216:	c0 
c0100217:	c7 44 24 08 11 00 00 	movl   $0x11,0x8(%esp)
c010021e:	00 
c010021f:	c7 44 24 04 53 80 10 	movl   $0xc0108053,0x4(%esp)
c0100226:	c0 
c0100227:	c7 04 24 74 80 10 c0 	movl   $0xc0108074,(%esp)
c010022e:	e8 7d 14 00 00       	call   c01016b0 <printk>
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
c0100258:	c7 44 24 10 6c 80 10 	movl   $0xc010806c,0x10(%esp)
c010025f:	c0 
c0100260:	c7 44 24 0c c8 80 10 	movl   $0xc01080c8,0xc(%esp)
c0100267:	c0 
c0100268:	c7 44 24 08 13 00 00 	movl   $0x13,0x8(%esp)
c010026f:	00 
c0100270:	c7 44 24 04 53 80 10 	movl   $0xc0108053,0x4(%esp)
c0100277:	c0 
c0100278:	c7 04 24 74 80 10 c0 	movl   $0xc0108074,(%esp)
c010027f:	e8 2c 14 00 00       	call   c01016b0 <printk>
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
c01002a8:	c7 44 24 10 40 80 10 	movl   $0xc0108040,0x10(%esp)
c01002af:	c0 
c01002b0:	c7 44 24 0c be 80 10 	movl   $0xc01080be,0xc(%esp)
c01002b7:	c0 
c01002b8:	c7 44 24 08 31 00 00 	movl   $0x31,0x8(%esp)
c01002bf:	00 
c01002c0:	c7 44 24 04 53 80 10 	movl   $0xc0108053,0x4(%esp)
c01002c7:	c0 
c01002c8:	c7 04 24 74 80 10 c0 	movl   $0xc0108074,(%esp)
c01002cf:	e8 dc 13 00 00       	call   c01016b0 <printk>
c01002d4:	b8 01 00 00 00       	mov    $0x1,%eax
c01002d9:	d6                   	(bad)  
c01002da:	a1 00 a0 10 c0       	mov    0xc010a000,%eax
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
c01003d3:	e8 e0 13 00 00       	call   c01017b8 <memset>
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
c010044f:	e8 64 13 00 00       	call   c01017b8 <memset>
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
c0100563:	e8 50 12 00 00       	call   c01017b8 <memset>
c0100568:	83 c4 0c             	add    $0xc,%esp
c010056b:	68 80 00 00 00       	push   $0x80
c0100570:	53                   	push   %ebx
c0100571:	68 00 fc 14 c0       	push   $0xc014fc00
c0100576:	e8 f5 11 00 00       	call   c0101770 <memcpy>
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
c010061c:	68 ce 80 10 c0       	push   $0xc01080ce
c0100621:	68 f3 80 10 c0       	push   $0xc01080f3
c0100626:	6a 24                	push   $0x24
c0100628:	68 da 80 10 c0       	push   $0xc01080da
c010062d:	68 74 80 10 c0       	push   $0xc0108074
c0100632:	e8 79 10 00 00       	call   c01016b0 <printk>
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
c0100662:	e8 51 11 00 00       	call   c01017b8 <memset>
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
c010068c:	68 3a 81 10 c0       	push   $0xc010813a
c0100691:	68 21 82 10 c0       	push   $0xc0108221
c0100696:	6a 16                	push   $0x16
c0100698:	68 1e 81 10 c0       	push   $0xc010811e
c010069d:	68 74 80 10 c0       	push   $0xc0108074
c01006a2:	e8 09 10 00 00       	call   c01016b0 <printk>
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
c01006f3:	68 0b 81 10 c0       	push   $0xc010810b
c01006f8:	68 21 82 10 c0       	push   $0xc0108221
c01006fd:	6a 15                	push   $0x15
c01006ff:	68 1e 81 10 c0       	push   $0xc010811e
c0100704:	68 74 80 10 c0       	push   $0xc0108074
c0100709:	e8 a2 0f 00 00       	call   c01016b0 <printk>
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
c0100773:	68 58 81 10 c0       	push   $0xc0108158
c0100778:	68 16 82 10 c0       	push   $0xc0108216
c010077d:	6a 31                	push   $0x31
c010077f:	68 1e 81 10 c0       	push   $0xc010811e
c0100784:	68 74 80 10 c0       	push   $0xc0108074
c0100789:	e8 22 0f 00 00       	call   c01016b0 <printk>
c010078e:	b8 01 00 00 00       	mov    $0x1,%eax
c0100793:	d6                   	(bad)  
c0100794:	83 c4 20             	add    $0x20,%esp
c0100797:	eb b9                	jmp    c0100752 <irq_handle+0x32>
c0100799:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c01007a0:	83 ec 08             	sub    $0x8,%esp
c01007a3:	ff 72 28             	pushl  0x28(%edx)
c01007a6:	50                   	push   %eax
c01007a7:	68 16 82 10 c0       	push   $0xc0108216
c01007ac:	6a 2e                	push   $0x2e
c01007ae:	68 1e 81 10 c0       	push   $0xc010811e
c01007b3:	68 bc 81 10 c0       	push   $0xc01081bc
c01007b8:	e8 f3 0e 00 00       	call   c01016b0 <printk>
c01007bd:	b8 01 00 00 00       	mov    $0x1,%eax
c01007c2:	d6                   	(bad)  
c01007c3:	83 c4 20             	add    $0x20,%esp
c01007c6:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c01007c9:	c9                   	leave  
c01007ca:	c3                   	ret    
c01007cb:	90                   	nop
c01007cc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c01007d0:	68 16 82 10 c0       	push   $0xc0108216
c01007d5:	6a 28                	push   $0x28
c01007d7:	68 1e 81 10 c0       	push   $0xc010811e
c01007dc:	68 70 81 10 c0       	push   $0xc0108170
c01007e1:	e8 ca 0e 00 00       	call   c01016b0 <printk>
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
c0100c23:	53                   	push   %ebx
c0100c24:	83 ec 04             	sub    $0x4,%esp
c0100c27:	8b 5d 08             	mov    0x8(%ebp),%ebx
c0100c2a:	8b 43 1c             	mov    0x1c(%ebx),%eax
c0100c2d:	83 f8 2d             	cmp    $0x2d,%eax
c0100c30:	0f 87 ea 00 00 00    	ja     c0100d20 <do_syscall+0x100>
c0100c36:	ff 24 85 a4 82 10 c0 	jmp    *-0x3fef7d5c(,%eax,4)
c0100c3d:	8d 76 00             	lea    0x0(%esi),%esi
c0100c40:	83 ec 0c             	sub    $0xc,%esp
c0100c43:	ff 73 10             	pushl  0x10(%ebx)
c0100c46:	e8 c5 f8 ff ff       	call   c0100510 <mm_brk>
c0100c4b:	c7 43 1c 00 00 00 00 	movl   $0x0,0x1c(%ebx)
c0100c52:	83 c4 10             	add    $0x10,%esp
c0100c55:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0100c58:	c9                   	leave  
c0100c59:	c3                   	ret    
c0100c5a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0100c60:	fa                   	cli    
c0100c61:	83 ec 08             	sub    $0x8,%esp
c0100c64:	ff 73 18             	pushl  0x18(%ebx)
c0100c67:	ff 73 10             	pushl  0x10(%ebx)
c0100c6a:	e8 01 fa ff ff       	call   c0100670 <add_irq_handle>
c0100c6f:	fb                   	sti    
c0100c70:	83 c4 10             	add    $0x10,%esp
c0100c73:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0100c76:	c9                   	leave  
c0100c77:	c3                   	ret    
c0100c78:	90                   	nop
c0100c79:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0100c80:	83 ec 04             	sub    $0x4,%esp
c0100c83:	ff 73 14             	pushl  0x14(%ebx)
c0100c86:	ff 73 18             	pushl  0x18(%ebx)
c0100c89:	ff 73 10             	pushl  0x10(%ebx)
c0100c8c:	e8 5f 03 00 00       	call   c0100ff0 <fs_read>
c0100c91:	83 c4 10             	add    $0x10,%esp
c0100c94:	89 43 1c             	mov    %eax,0x1c(%ebx)
c0100c97:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0100c9a:	c9                   	leave  
c0100c9b:	c3                   	ret    
c0100c9c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0100ca0:	83 ec 04             	sub    $0x4,%esp
c0100ca3:	ff 73 14             	pushl  0x14(%ebx)
c0100ca6:	ff 73 18             	pushl  0x18(%ebx)
c0100ca9:	ff 73 10             	pushl  0x10(%ebx)
c0100cac:	e8 ef 03 00 00       	call   c01010a0 <fs_write>
c0100cb1:	83 c4 10             	add    $0x10,%esp
c0100cb4:	89 43 1c             	mov    %eax,0x1c(%ebx)
c0100cb7:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0100cba:	c9                   	leave  
c0100cbb:	c3                   	ret    
c0100cbc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0100cc0:	83 ec 08             	sub    $0x8,%esp
c0100cc3:	ff 73 18             	pushl  0x18(%ebx)
c0100cc6:	ff 73 10             	pushl  0x10(%ebx)
c0100cc9:	e8 72 02 00 00       	call   c0100f40 <fs_open>
c0100cce:	83 c4 10             	add    $0x10,%esp
c0100cd1:	89 43 1c             	mov    %eax,0x1c(%ebx)
c0100cd4:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0100cd7:	c9                   	leave  
c0100cd8:	c3                   	ret    
c0100cd9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0100ce0:	83 ec 0c             	sub    $0xc,%esp
c0100ce3:	ff 73 10             	pushl  0x10(%ebx)
c0100ce6:	e8 e5 02 00 00       	call   c0100fd0 <fs_close>
c0100ceb:	83 c4 10             	add    $0x10,%esp
c0100cee:	89 43 1c             	mov    %eax,0x1c(%ebx)
c0100cf1:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0100cf4:	c9                   	leave  
c0100cf5:	c3                   	ret    
c0100cf6:	8d 76 00             	lea    0x0(%esi),%esi
c0100cf9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
c0100d00:	83 ec 04             	sub    $0x4,%esp
c0100d03:	ff 73 14             	pushl  0x14(%ebx)
c0100d06:	ff 73 18             	pushl  0x18(%ebx)
c0100d09:	ff 73 10             	pushl  0x10(%ebx)
c0100d0c:	e8 6f 04 00 00       	call   c0101180 <fs_lseek>
c0100d11:	83 c4 10             	add    $0x10,%esp
c0100d14:	89 43 1c             	mov    %eax,0x1c(%ebx)
c0100d17:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0100d1a:	c9                   	leave  
c0100d1b:	c3                   	ret    
c0100d1c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0100d20:	83 ec 0c             	sub    $0xc,%esp
c0100d23:	50                   	push   %eax
c0100d24:	68 5c 83 10 c0       	push   $0xc010835c
c0100d29:	6a 35                	push   $0x35
c0100d2b:	68 30 82 10 c0       	push   $0xc0108230
c0100d30:	68 50 82 10 c0       	push   $0xc0108250
c0100d35:	e8 76 09 00 00       	call   c01016b0 <printk>
c0100d3a:	b8 01 00 00 00       	mov    $0x1,%eax
c0100d3f:	d6                   	(bad)  
c0100d40:	83 c4 20             	add    $0x20,%esp
c0100d43:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0100d46:	c9                   	leave  
c0100d47:	c3                   	ret    
c0100d48:	66 90                	xchg   %ax,%ax
c0100d4a:	66 90                	xchg   %ax,%ax
c0100d4c:	66 90                	xchg   %ax,%ax
c0100d4e:	66 90                	xchg   %ax,%ax

c0100d50 <loader>:
c0100d50:	55                   	push   %ebp
c0100d51:	89 e5                	mov    %esp,%ebp
c0100d53:	57                   	push   %edi
c0100d54:	56                   	push   %esi
c0100d55:	53                   	push   %ebx
c0100d56:	8d bd e8 ef ff ff    	lea    -0x1018(%ebp),%edi
c0100d5c:	81 ec 30 10 00 00    	sub    $0x1030,%esp
c0100d62:	68 00 10 00 00       	push   $0x1000
c0100d67:	6a 00                	push   $0x0
c0100d69:	57                   	push   %edi
c0100d6a:	e8 c1 07 00 00       	call   c0101530 <ide_read>
c0100d6f:	83 c4 10             	add    $0x10,%esp
c0100d72:	81 bd e8 ef ff ff 7f 	cmpl   $0x464c457f,-0x1018(%ebp)
c0100d79:	45 4c 46 
c0100d7c:	74 06                	je     c0100d84 <loader+0x34>
c0100d7e:	b8 01 00 00 00       	mov    $0x1,%eax
c0100d83:	d6                   	(bad)  
c0100d84:	31 f6                	xor    %esi,%esi
c0100d86:	66 83 bd 14 f0 ff ff 	cmpw   $0x0,-0xfec(%ebp)
c0100d8d:	00 
c0100d8e:	75 1a                	jne    c0100daa <loader+0x5a>
c0100d90:	e9 9b 00 00 00       	jmp    c0100e30 <loader+0xe0>
c0100d95:	8d 76 00             	lea    0x0(%esi),%esi
c0100d98:	0f b7 85 14 f0 ff ff 	movzwl -0xfec(%ebp),%eax
c0100d9f:	83 c6 01             	add    $0x1,%esi
c0100da2:	39 f0                	cmp    %esi,%eax
c0100da4:	0f 8e 86 00 00 00    	jle    c0100e30 <loader+0xe0>
c0100daa:	0f b7 9d 12 f0 ff ff 	movzwl -0xfee(%ebp),%ebx
c0100db1:	0f af de             	imul   %esi,%ebx
c0100db4:	03 9d 04 f0 ff ff    	add    -0xffc(%ebp),%ebx
c0100dba:	01 fb                	add    %edi,%ebx
c0100dbc:	83 3b 01             	cmpl   $0x1,(%ebx)
c0100dbf:	75 d7                	jne    c0100d98 <loader+0x48>
c0100dc1:	83 ec 08             	sub    $0x8,%esp
c0100dc4:	ff 73 14             	pushl  0x14(%ebx)
c0100dc7:	ff 73 08             	pushl  0x8(%ebx)
c0100dca:	e8 81 f2 ff ff       	call   c0100050 <mm_malloc>
c0100dcf:	83 c4 0c             	add    $0xc,%esp
c0100dd2:	ff 73 10             	pushl  0x10(%ebx)
c0100dd5:	ff 73 04             	pushl  0x4(%ebx)
c0100dd8:	50                   	push   %eax
c0100dd9:	89 85 d4 ef ff ff    	mov    %eax,-0x102c(%ebp)
c0100ddf:	e8 4c 07 00 00       	call   c0101530 <ide_read>
c0100de4:	8b 53 10             	mov    0x10(%ebx),%edx
c0100de7:	8b 4b 14             	mov    0x14(%ebx),%ecx
c0100dea:	83 c4 0c             	add    $0xc,%esp
c0100ded:	8b 85 d4 ef ff ff    	mov    -0x102c(%ebp),%eax
c0100df3:	29 d1                	sub    %edx,%ecx
c0100df5:	01 c2                	add    %eax,%edx
c0100df7:	51                   	push   %ecx
c0100df8:	6a 00                	push   $0x0
c0100dfa:	52                   	push   %edx
c0100dfb:	e8 b8 09 00 00       	call   c01017b8 <memset>
c0100e00:	8b 43 14             	mov    0x14(%ebx),%eax
c0100e03:	03 43 08             	add    0x8(%ebx),%eax
c0100e06:	83 c4 10             	add    $0x10,%esp
c0100e09:	83 e8 01             	sub    $0x1,%eax
c0100e0c:	3b 05 00 e0 14 c0    	cmp    0xc014e000,%eax
c0100e12:	76 84                	jbe    c0100d98 <loader+0x48>
c0100e14:	a3 00 e0 14 c0       	mov    %eax,0xc014e000
c0100e19:	0f b7 85 14 f0 ff ff 	movzwl -0xfec(%ebp),%eax
c0100e20:	83 c6 01             	add    $0x1,%esi
c0100e23:	39 f0                	cmp    %esi,%eax
c0100e25:	7f 83                	jg     c0100daa <loader+0x5a>
c0100e27:	89 f6                	mov    %esi,%esi
c0100e29:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
c0100e30:	83 ec 08             	sub    $0x8,%esp
c0100e33:	8b 85 00 f0 ff ff    	mov    -0x1000(%ebp),%eax
c0100e39:	68 00 00 10 00       	push   $0x100000
c0100e3e:	68 00 00 f0 bf       	push   $0xbff00000
c0100e43:	89 85 e4 ef ff ff    	mov    %eax,-0x101c(%ebp)
c0100e49:	e8 02 f2 ff ff       	call   c0100050 <mm_malloc>
c0100e4e:	e8 4d f7 ff ff       	call   c01005a0 <create_video_mapping>
c0100e53:	e8 a8 f6 ff ff       	call   c0100500 <get_ucr3>
c0100e58:	0f 22 d8             	mov    %eax,%cr3
c0100e5b:	8b 85 e4 ef ff ff    	mov    -0x101c(%ebp),%eax
c0100e61:	8d 65 f4             	lea    -0xc(%ebp),%esp
c0100e64:	5b                   	pop    %ebx
c0100e65:	5e                   	pop    %esi
c0100e66:	5f                   	pop    %edi
c0100e67:	5d                   	pop    %ebp
c0100e68:	c3                   	ret    
c0100e69:	66 90                	xchg   %ax,%ax
c0100e6b:	66 90                	xchg   %ax,%ax
c0100e6d:	66 90                	xchg   %ax,%ax
c0100e6f:	90                   	nop

c0100e70 <init_cond>:
c0100e70:	55                   	push   %ebp
c0100e71:	89 e5                	mov    %esp,%ebp
c0100e73:	53                   	push   %ebx
c0100e74:	83 ec 04             	sub    $0x4,%esp
c0100e77:	e8 c4 f5 ff ff       	call   c0100440 <init_segment>
c0100e7c:	e8 8f f9 ff ff       	call   c0100810 <init_idt>
c0100e81:	e8 2a fd ff ff       	call   c0100bb0 <init_i8259>
c0100e86:	e8 85 08 00 00       	call   c0101710 <init_serial>
c0100e8b:	e8 60 07 00 00       	call   c01015f0 <init_ide>
c0100e90:	fb                   	sti    
c0100e91:	e8 aa f6 ff ff       	call   c0100540 <init_mm>
c0100e96:	68 fb 83 10 c0       	push   $0xc01083fb
c0100e9b:	6a 4a                	push   $0x4a
c0100e9d:	68 67 83 10 c0       	push   $0xc0108367
c0100ea2:	68 7c 83 10 c0       	push   $0xc010837c
c0100ea7:	e8 04 08 00 00       	call   c01016b0 <printk>
c0100eac:	e8 2f f7 ff ff       	call   c01005e0 <video_mapping_write_test>
c0100eb1:	e8 9a fe ff ff       	call   c0100d50 <loader>
c0100eb6:	89 c3                	mov    %eax,%ebx
c0100eb8:	e8 43 f7 ff ff       	call   c0100600 <video_mapping_read_test>
c0100ebd:	e8 8e f7 ff ff       	call   c0100650 <video_mapping_clear>
c0100ec2:	bc 00 00 00 c0       	mov    $0xc0000000,%esp
c0100ec7:	bd 00 00 00 00       	mov    $0x0,%ebp
c0100ecc:	83 ec 10             	sub    $0x10,%esp
c0100ecf:	ff d3                	call   *%ebx
c0100ed1:	68 fb 83 10 c0       	push   $0xc01083fb
c0100ed6:	6a 6b                	push   $0x6b
c0100ed8:	68 67 83 10 c0       	push   $0xc0108367
c0100edd:	68 b0 83 10 c0       	push   $0xc01083b0
c0100ee2:	e8 c9 07 00 00       	call   c01016b0 <printk>
c0100ee7:	b8 01 00 00 00       	mov    $0x1,%eax
c0100eec:	d6                   	(bad)  
c0100eed:	83 c4 20             	add    $0x20,%esp
c0100ef0:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0100ef3:	c9                   	leave  
c0100ef4:	c3                   	ret    
c0100ef5:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0100ef9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0100f00 <init>:
c0100f00:	55                   	push   %ebp
c0100f01:	89 e5                	mov    %esp,%ebp
c0100f03:	83 ec 08             	sub    $0x8,%esp
c0100f06:	e8 b5 f4 ff ff       	call   c01003c0 <init_page>
c0100f0b:	81 c4 00 00 00 c0    	add    $0xc0000000,%esp
c0100f11:	b8 70 0e 10 c0       	mov    $0xc0100e70,%eax
c0100f16:	ff e0                	jmp    *%eax
c0100f18:	68 05 84 10 c0       	push   $0xc0108405
c0100f1d:	6a 24                	push   $0x24
c0100f1f:	68 67 83 10 c0       	push   $0xc0108367
c0100f24:	68 b0 83 10 c0       	push   $0xc01083b0
c0100f29:	e8 82 07 00 00       	call   c01016b0 <printk>
c0100f2e:	b8 01 00 00 00       	mov    $0x1,%eax
c0100f33:	d6                   	(bad)  
c0100f34:	83 c4 10             	add    $0x10,%esp
c0100f37:	c9                   	leave  
c0100f38:	c3                   	ret    
c0100f39:	66 90                	xchg   %ax,%ax
c0100f3b:	66 90                	xchg   %ax,%ax
c0100f3d:	66 90                	xchg   %ax,%ax
c0100f3f:	90                   	nop

c0100f40 <fs_open>:
c0100f40:	55                   	push   %ebp
c0100f41:	89 e5                	mov    %esp,%ebp
c0100f43:	57                   	push   %edi
c0100f44:	56                   	push   %esi
c0100f45:	53                   	push   %ebx
c0100f46:	be 40 85 10 c0       	mov    $0xc0108540,%esi
c0100f4b:	31 db                	xor    %ebx,%ebx
c0100f4d:	83 ec 0c             	sub    $0xc,%esp
c0100f50:	8b 7d 08             	mov    0x8(%ebp),%edi
c0100f53:	eb 0e                	jmp    c0100f63 <fs_open+0x23>
c0100f55:	8d 76 00             	lea    0x0(%esi),%esi
c0100f58:	83 c3 01             	add    $0x1,%ebx
c0100f5b:	83 c6 0c             	add    $0xc,%esi
c0100f5e:	83 fb 19             	cmp    $0x19,%ebx
c0100f61:	74 35                	je     c0100f98 <fs_open+0x58>
c0100f63:	83 ec 08             	sub    $0x8,%esp
c0100f66:	57                   	push   %edi
c0100f67:	ff 36                	pushl  (%esi)
c0100f69:	e8 d2 08 00 00       	call   c0101840 <strcmp>
c0100f6e:	83 c4 10             	add    $0x10,%esp
c0100f71:	85 c0                	test   %eax,%eax
c0100f73:	75 e3                	jne    c0100f58 <fs_open+0x18>
c0100f75:	8d 43 03             	lea    0x3(%ebx),%eax
c0100f78:	c6 04 c5 c0 19 15 c0 	movb   $0x1,-0x3feae640(,%eax,8)
c0100f7f:	01 
c0100f80:	c7 04 c5 c4 19 15 c0 	movl   $0x0,-0x3feae63c(,%eax,8)
c0100f87:	00 00 00 00 
c0100f8b:	8d 65 f4             	lea    -0xc(%ebp),%esp
c0100f8e:	5b                   	pop    %ebx
c0100f8f:	5e                   	pop    %esi
c0100f90:	5f                   	pop    %edi
c0100f91:	5d                   	pop    %ebp
c0100f92:	c3                   	ret    
c0100f93:	90                   	nop
c0100f94:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0100f98:	83 ec 0c             	sub    $0xc,%esp
c0100f9b:	68 0a 84 10 c0       	push   $0xc010840a
c0100fa0:	68 1a 85 10 c0       	push   $0xc010851a
c0100fa5:	6a 34                	push   $0x34
c0100fa7:	68 0c 84 10 c0       	push   $0xc010840c
c0100fac:	68 74 80 10 c0       	push   $0xc0108074
c0100fb1:	e8 fa 06 00 00       	call   c01016b0 <printk>
c0100fb6:	b8 01 00 00 00       	mov    $0x1,%eax
c0100fbb:	d6                   	(bad)  
c0100fbc:	83 c4 20             	add    $0x20,%esp
c0100fbf:	8d 65 f4             	lea    -0xc(%ebp),%esp
c0100fc2:	30 c0                	xor    %al,%al
c0100fc4:	5b                   	pop    %ebx
c0100fc5:	5e                   	pop    %esi
c0100fc6:	5f                   	pop    %edi
c0100fc7:	5d                   	pop    %ebp
c0100fc8:	c3                   	ret    
c0100fc9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

c0100fd0 <fs_close>:
c0100fd0:	55                   	push   %ebp
c0100fd1:	89 e5                	mov    %esp,%ebp
c0100fd3:	8b 45 08             	mov    0x8(%ebp),%eax
c0100fd6:	5d                   	pop    %ebp
c0100fd7:	c6 04 c5 c0 19 15 c0 	movb   $0x0,-0x3feae640(,%eax,8)
c0100fde:	00 
c0100fdf:	31 c0                	xor    %eax,%eax
c0100fe1:	c3                   	ret    
c0100fe2:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0100fe9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0100ff0 <fs_read>:
c0100ff0:	55                   	push   %ebp
c0100ff1:	31 c0                	xor    %eax,%eax
c0100ff3:	89 e5                	mov    %esp,%ebp
c0100ff5:	57                   	push   %edi
c0100ff6:	56                   	push   %esi
c0100ff7:	53                   	push   %ebx
c0100ff8:	83 ec 0c             	sub    $0xc,%esp
c0100ffb:	8b 5d 08             	mov    0x8(%ebp),%ebx
c0100ffe:	83 fb 02             	cmp    $0x2,%ebx
c0101001:	7e 4d                	jle    c0101050 <fs_read+0x60>
c0101003:	80 3c dd c0 19 15 c0 	cmpb   $0x0,-0x3feae640(,%ebx,8)
c010100a:	00 
c010100b:	74 63                	je     c0101070 <fs_read+0x80>
c010100d:	8d 53 fd             	lea    -0x3(%ebx),%edx
c0101010:	8b 04 dd c4 19 15 c0 	mov    -0x3feae63c(,%ebx,8),%eax
c0101017:	8b 75 10             	mov    0x10(%ebp),%esi
c010101a:	8d 0c 52             	lea    (%edx,%edx,2),%ecx
c010101d:	89 c7                	mov    %eax,%edi
c010101f:	8b 0c 8d 44 85 10 c0 	mov    -0x3fef7abc(,%ecx,4),%ecx
c0101026:	01 f7                	add    %esi,%edi
c0101028:	39 cf                	cmp    %ecx,%edi
c010102a:	73 34                	jae    c0101060 <fs_read+0x70>
c010102c:	8d 14 52             	lea    (%edx,%edx,2),%edx
c010102f:	83 ec 04             	sub    $0x4,%esp
c0101032:	56                   	push   %esi
c0101033:	03 04 95 48 85 10 c0 	add    -0x3fef7ab8(,%edx,4),%eax
c010103a:	50                   	push   %eax
c010103b:	ff 75 0c             	pushl  0xc(%ebp)
c010103e:	e8 ed 04 00 00       	call   c0101530 <ide_read>
c0101043:	01 34 dd c4 19 15 c0 	add    %esi,-0x3feae63c(,%ebx,8)
c010104a:	8b 45 10             	mov    0x10(%ebp),%eax
c010104d:	83 c4 10             	add    $0x10,%esp
c0101050:	8d 65 f4             	lea    -0xc(%ebp),%esp
c0101053:	5b                   	pop    %ebx
c0101054:	5e                   	pop    %esi
c0101055:	5f                   	pop    %edi
c0101056:	5d                   	pop    %ebp
c0101057:	c3                   	ret    
c0101058:	90                   	nop
c0101059:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0101060:	8d 71 ff             	lea    -0x1(%ecx),%esi
c0101063:	29 c6                	sub    %eax,%esi
c0101065:	89 75 10             	mov    %esi,0x10(%ebp)
c0101068:	eb c2                	jmp    c010102c <fs_read+0x3c>
c010106a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0101070:	83 ec 0c             	sub    $0xc,%esp
c0101073:	68 1f 84 10 c0       	push   $0xc010841f
c0101078:	68 12 85 10 c0       	push   $0xc0108512
c010107d:	6a 3f                	push   $0x3f
c010107f:	68 0c 84 10 c0       	push   $0xc010840c
c0101084:	68 74 80 10 c0       	push   $0xc0108074
c0101089:	e8 22 06 00 00       	call   c01016b0 <printk>
c010108e:	b8 01 00 00 00       	mov    $0x1,%eax
c0101093:	d6                   	(bad)  
c0101094:	83 c4 20             	add    $0x20,%esp
c0101097:	e9 71 ff ff ff       	jmp    c010100d <fs_read+0x1d>
c010109c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

c01010a0 <fs_write>:
c01010a0:	55                   	push   %ebp
c01010a1:	89 e5                	mov    %esp,%ebp
c01010a3:	57                   	push   %edi
c01010a4:	56                   	push   %esi
c01010a5:	53                   	push   %ebx
c01010a6:	83 ec 0c             	sub    $0xc,%esp
c01010a9:	8b 5d 08             	mov    0x8(%ebp),%ebx
c01010ac:	8b 75 10             	mov    0x10(%ebp),%esi
c01010af:	8d 43 ff             	lea    -0x1(%ebx),%eax
c01010b2:	83 f8 01             	cmp    $0x1,%eax
c01010b5:	76 69                	jbe    c0101120 <fs_write+0x80>
c01010b7:	83 fb 02             	cmp    $0x2,%ebx
c01010ba:	0f 8e 86 00 00 00    	jle    c0101146 <fs_write+0xa6>
c01010c0:	80 3c dd c0 19 15 c0 	cmpb   $0x0,-0x3feae640(,%ebx,8)
c01010c7:	00 
c01010c8:	0f 84 82 00 00 00    	je     c0101150 <fs_write+0xb0>
c01010ce:	8d 4b fd             	lea    -0x3(%ebx),%ecx
c01010d1:	8b 14 dd c4 19 15 c0 	mov    -0x3feae63c(,%ebx,8),%edx
c01010d8:	8d 04 49             	lea    (%ecx,%ecx,2),%eax
c01010db:	8d 3c 16             	lea    (%esi,%edx,1),%edi
c01010de:	8b 04 85 44 85 10 c0 	mov    -0x3fef7abc(,%eax,4),%eax
c01010e5:	39 c7                	cmp    %eax,%edi
c01010e7:	72 05                	jb     c01010ee <fs_write+0x4e>
c01010e9:	8d 70 ff             	lea    -0x1(%eax),%esi
c01010ec:	29 d6                	sub    %edx,%esi
c01010ee:	85 f6                	test   %esi,%esi
c01010f0:	7e 54                	jle    c0101146 <fs_write+0xa6>
c01010f2:	8d 04 49             	lea    (%ecx,%ecx,2),%eax
c01010f5:	83 ec 04             	sub    $0x4,%esp
c01010f8:	56                   	push   %esi
c01010f9:	03 14 85 48 85 10 c0 	add    -0x3fef7ab8(,%eax,4),%edx
c0101100:	52                   	push   %edx
c0101101:	ff 75 0c             	pushl  0xc(%ebp)
c0101104:	e8 67 04 00 00       	call   c0101570 <ide_write>
c0101109:	01 34 dd c4 19 15 c0 	add    %esi,-0x3feae63c(,%ebx,8)
c0101110:	83 c4 10             	add    $0x10,%esp
c0101113:	8d 65 f4             	lea    -0xc(%ebp),%esp
c0101116:	89 f0                	mov    %esi,%eax
c0101118:	5b                   	pop    %ebx
c0101119:	5e                   	pop    %esi
c010111a:	5f                   	pop    %edi
c010111b:	5d                   	pop    %ebp
c010111c:	c3                   	ret    
c010111d:	8d 76 00             	lea    0x0(%esi),%esi
c0101120:	8b 5d 0c             	mov    0xc(%ebp),%ebx
c0101123:	85 f6                	test   %esi,%esi
c0101125:	8d 3c 33             	lea    (%ebx,%esi,1),%edi
c0101128:	7e 1c                	jle    c0101146 <fs_write+0xa6>
c010112a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0101130:	0f be 03             	movsbl (%ebx),%eax
c0101133:	83 ec 0c             	sub    $0xc,%esp
c0101136:	83 c3 01             	add    $0x1,%ebx
c0101139:	50                   	push   %eax
c010113a:	e8 11 06 00 00       	call   c0101750 <serial_printc>
c010113f:	83 c4 10             	add    $0x10,%esp
c0101142:	39 fb                	cmp    %edi,%ebx
c0101144:	75 ea                	jne    c0101130 <fs_write+0x90>
c0101146:	8d 65 f4             	lea    -0xc(%ebp),%esp
c0101149:	31 c0                	xor    %eax,%eax
c010114b:	5b                   	pop    %ebx
c010114c:	5e                   	pop    %esi
c010114d:	5f                   	pop    %edi
c010114e:	5d                   	pop    %ebp
c010114f:	c3                   	ret    
c0101150:	83 ec 0c             	sub    $0xc,%esp
c0101153:	68 1f 84 10 c0       	push   $0xc010841f
c0101158:	68 09 85 10 c0       	push   $0xc0108509
c010115d:	6a 4f                	push   $0x4f
c010115f:	68 0c 84 10 c0       	push   $0xc010840c
c0101164:	68 74 80 10 c0       	push   $0xc0108074
c0101169:	e8 42 05 00 00       	call   c01016b0 <printk>
c010116e:	b8 01 00 00 00       	mov    $0x1,%eax
c0101173:	d6                   	(bad)  
c0101174:	83 c4 20             	add    $0x20,%esp
c0101177:	e9 52 ff ff ff       	jmp    c01010ce <fs_write+0x2e>
c010117c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

c0101180 <fs_lseek>:
c0101180:	55                   	push   %ebp
c0101181:	31 c0                	xor    %eax,%eax
c0101183:	89 e5                	mov    %esp,%ebp
c0101185:	56                   	push   %esi
c0101186:	53                   	push   %ebx
c0101187:	8b 5d 08             	mov    0x8(%ebp),%ebx
c010118a:	8b 75 10             	mov    0x10(%ebp),%esi
c010118d:	83 fb 02             	cmp    $0x2,%ebx
c0101190:	7e 1f                	jle    c01011b1 <fs_lseek+0x31>
c0101192:	80 3c dd c0 19 15 c0 	cmpb   $0x0,-0x3feae640(,%ebx,8)
c0101199:	00 
c010119a:	74 24                	je     c01011c0 <fs_lseek+0x40>
c010119c:	83 fe 01             	cmp    $0x1,%esi
c010119f:	74 4b                	je     c01011ec <fs_lseek+0x6c>
c01011a1:	83 fe 02             	cmp    $0x2,%esi
c01011a4:	74 7a                	je     c0101220 <fs_lseek+0xa0>
c01011a6:	85 f6                	test   %esi,%esi
c01011a8:	74 5e                	je     c0101208 <fs_lseek+0x88>
c01011aa:	8b 04 dd c4 19 15 c0 	mov    -0x3feae63c(,%ebx,8),%eax
c01011b1:	8d 65 f8             	lea    -0x8(%ebp),%esp
c01011b4:	5b                   	pop    %ebx
c01011b5:	5e                   	pop    %esi
c01011b6:	5d                   	pop    %ebp
c01011b7:	c3                   	ret    
c01011b8:	90                   	nop
c01011b9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c01011c0:	83 ec 0c             	sub    $0xc,%esp
c01011c3:	68 1f 84 10 c0       	push   $0xc010841f
c01011c8:	68 00 85 10 c0       	push   $0xc0108500
c01011cd:	6a 5a                	push   $0x5a
c01011cf:	68 0c 84 10 c0       	push   $0xc010840c
c01011d4:	68 74 80 10 c0       	push   $0xc0108074
c01011d9:	e8 d2 04 00 00       	call   c01016b0 <printk>
c01011de:	b8 01 00 00 00       	mov    $0x1,%eax
c01011e3:	d6                   	(bad)  
c01011e4:	83 c4 20             	add    $0x20,%esp
c01011e7:	83 fe 01             	cmp    $0x1,%esi
c01011ea:	75 b5                	jne    c01011a1 <fs_lseek+0x21>
c01011ec:	8b 45 0c             	mov    0xc(%ebp),%eax
c01011ef:	03 04 dd c4 19 15 c0 	add    -0x3feae63c(,%ebx,8),%eax
c01011f6:	89 04 dd c4 19 15 c0 	mov    %eax,-0x3feae63c(,%ebx,8)
c01011fd:	8d 65 f8             	lea    -0x8(%ebp),%esp
c0101200:	5b                   	pop    %ebx
c0101201:	5e                   	pop    %esi
c0101202:	5d                   	pop    %ebp
c0101203:	c3                   	ret    
c0101204:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0101208:	8b 45 0c             	mov    0xc(%ebp),%eax
c010120b:	89 04 dd c4 19 15 c0 	mov    %eax,-0x3feae63c(,%ebx,8)
c0101212:	8d 65 f8             	lea    -0x8(%ebp),%esp
c0101215:	5b                   	pop    %ebx
c0101216:	5e                   	pop    %esi
c0101217:	5d                   	pop    %ebp
c0101218:	c3                   	ret    
c0101219:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0101220:	8d 44 5b f7          	lea    -0x9(%ebx,%ebx,2),%eax
c0101224:	8b 55 0c             	mov    0xc(%ebp),%edx
c0101227:	03 14 85 44 85 10 c0 	add    -0x3fef7abc(,%eax,4),%edx
c010122e:	89 14 dd c4 19 15 c0 	mov    %edx,-0x3feae63c(,%ebx,8)
c0101235:	8d 65 f8             	lea    -0x8(%ebp),%esp
c0101238:	89 d0                	mov    %edx,%eax
c010123a:	5b                   	pop    %ebx
c010123b:	5e                   	pop    %esi
c010123c:	5d                   	pop    %ebp
c010123d:	c3                   	ret    
c010123e:	66 90                	xchg   %ax,%ax

c0101240 <buf_fetch>:
c0101240:	55                   	push   %ebp
c0101241:	89 c2                	mov    %eax,%edx
c0101243:	89 e5                	mov    %esp,%ebp
c0101245:	57                   	push   %edi
c0101246:	56                   	push   %esi
c0101247:	53                   	push   %ebx
c0101248:	89 c3                	mov    %eax,%ebx
c010124a:	83 e3 7f             	and    $0x7f,%ebx
c010124d:	89 d8                	mov    %ebx,%eax
c010124f:	83 ec 1c             	sub    $0x1c,%esp
c0101252:	c1 e0 09             	shl    $0x9,%eax
c0101255:	8d 0c d8             	lea    (%eax,%ebx,8),%ecx
c0101258:	8d 81 c0 1a 15 c0    	lea    -0x3feae540(%ecx),%eax
c010125e:	80 78 04 01          	cmpb   $0x1,0x4(%eax)
c0101262:	74 5c                	je     c01012c0 <buf_fetch+0x80>
c0101264:	89 d7                	mov    %edx,%edi
c0101266:	89 da                	mov    %ebx,%edx
c0101268:	c1 e2 09             	shl    $0x9,%edx
c010126b:	8d 0c da             	lea    (%edx,%ebx,8),%ecx
c010126e:	8d 91 c0 1a 15 c0    	lea    -0x3feae540(%ecx),%edx
c0101274:	66 81 7a 04 01 01    	cmpw   $0x101,0x4(%edx)
c010127a:	74 54                	je     c01012d0 <buf_fetch+0x90>
c010127c:	8d 72 06             	lea    0x6(%edx),%esi
c010127f:	83 ec 08             	sub    $0x8,%esp
c0101282:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0101285:	57                   	push   %edi
c0101286:	56                   	push   %esi
c0101287:	e8 e4 01 00 00       	call   c0101470 <disk_do_read>
c010128c:	89 da                	mov    %ebx,%edx
c010128e:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0101291:	83 c4 10             	add    $0x10,%esp
c0101294:	c1 e2 09             	shl    $0x9,%edx
c0101297:	8d 0c da             	lea    (%edx,%ebx,8),%ecx
c010129a:	c6 81 c4 1a 15 c0 01 	movb   $0x1,-0x3feae53c(%ecx)
c01012a1:	89 b9 c0 1a 15 c0    	mov    %edi,-0x3feae540(%ecx)
c01012a7:	c6 81 c5 1a 15 c0 00 	movb   $0x0,-0x3feae53b(%ecx)
c01012ae:	8d 65 f4             	lea    -0xc(%ebp),%esp
c01012b1:	5b                   	pop    %ebx
c01012b2:	5e                   	pop    %esi
c01012b3:	5f                   	pop    %edi
c01012b4:	5d                   	pop    %ebp
c01012b5:	c3                   	ret    
c01012b6:	8d 76 00             	lea    0x0(%esi),%esi
c01012b9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
c01012c0:	39 91 c0 1a 15 c0    	cmp    %edx,-0x3feae540(%ecx)
c01012c6:	75 9c                	jne    c0101264 <buf_fetch+0x24>
c01012c8:	eb e4                	jmp    c01012ae <buf_fetch+0x6e>
c01012ca:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c01012d0:	8d 72 06             	lea    0x6(%edx),%esi
c01012d3:	83 ec 08             	sub    $0x8,%esp
c01012d6:	ff b1 c0 1a 15 c0    	pushl  -0x3feae540(%ecx)
c01012dc:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c01012df:	56                   	push   %esi
c01012e0:	e8 cb 01 00 00       	call   c01014b0 <disk_do_write>
c01012e5:	83 c4 10             	add    $0x10,%esp
c01012e8:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c01012eb:	eb 92                	jmp    c010127f <buf_fetch+0x3f>
c01012ed:	8d 76 00             	lea    0x0(%esi),%esi

c01012f0 <buf_init>:
c01012f0:	55                   	push   %ebp
c01012f1:	b8 c4 1a 15 c0       	mov    $0xc0151ac4,%eax
c01012f6:	89 e5                	mov    %esp,%ebp
c01012f8:	90                   	nop
c01012f9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0101300:	c6 00 00             	movb   $0x0,(%eax)
c0101303:	05 08 02 00 00       	add    $0x208,%eax
c0101308:	3d c4 1e 16 c0       	cmp    $0xc0161ec4,%eax
c010130d:	75 f1                	jne    c0101300 <buf_init+0x10>
c010130f:	5d                   	pop    %ebp
c0101310:	c3                   	ret    
c0101311:	eb 0d                	jmp    c0101320 <buf_writeback>
c0101313:	90                   	nop
c0101314:	90                   	nop
c0101315:	90                   	nop
c0101316:	90                   	nop
c0101317:	90                   	nop
c0101318:	90                   	nop
c0101319:	90                   	nop
c010131a:	90                   	nop
c010131b:	90                   	nop
c010131c:	90                   	nop
c010131d:	90                   	nop
c010131e:	90                   	nop
c010131f:	90                   	nop

c0101320 <buf_writeback>:
c0101320:	55                   	push   %ebp
c0101321:	89 e5                	mov    %esp,%ebp
c0101323:	53                   	push   %ebx
c0101324:	bb c6 1a 15 c0       	mov    $0xc0151ac6,%ebx
c0101329:	83 ec 04             	sub    $0x4,%esp
c010132c:	eb 10                	jmp    c010133e <buf_writeback+0x1e>
c010132e:	66 90                	xchg   %ax,%ax
c0101330:	81 c3 08 02 00 00    	add    $0x208,%ebx
c0101336:	81 fb c6 1e 16 c0    	cmp    $0xc0161ec6,%ebx
c010133c:	74 32                	je     c0101370 <buf_writeback+0x50>
c010133e:	80 7b ff 01          	cmpb   $0x1,-0x1(%ebx)
c0101342:	75 ec                	jne    c0101330 <buf_writeback+0x10>
c0101344:	83 ec 08             	sub    $0x8,%esp
c0101347:	ff 73 fa             	pushl  -0x6(%ebx)
c010134a:	53                   	push   %ebx
c010134b:	81 c3 08 02 00 00    	add    $0x208,%ebx
c0101351:	e8 5a 01 00 00       	call   c01014b0 <disk_do_write>
c0101356:	c6 83 f7 fd ff ff 00 	movb   $0x0,-0x209(%ebx)
c010135d:	83 c4 10             	add    $0x10,%esp
c0101360:	81 fb c6 1e 16 c0    	cmp    $0xc0161ec6,%ebx
c0101366:	75 d6                	jne    c010133e <buf_writeback+0x1e>
c0101368:	90                   	nop
c0101369:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0101370:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0101373:	c9                   	leave  
c0101374:	c3                   	ret    
c0101375:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0101379:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0101380 <read_byte>:
c0101380:	55                   	push   %ebp
c0101381:	89 e5                	mov    %esp,%ebp
c0101383:	53                   	push   %ebx
c0101384:	83 ec 04             	sub    $0x4,%esp
c0101387:	8b 5d 08             	mov    0x8(%ebp),%ebx
c010138a:	89 d8                	mov    %ebx,%eax
c010138c:	81 e3 ff 01 00 00    	and    $0x1ff,%ebx
c0101392:	c1 e8 09             	shr    $0x9,%eax
c0101395:	e8 a6 fe ff ff       	call   c0101240 <buf_fetch>
c010139a:	0f b6 44 18 06       	movzbl 0x6(%eax,%ebx,1),%eax
c010139f:	83 c4 04             	add    $0x4,%esp
c01013a2:	5b                   	pop    %ebx
c01013a3:	5d                   	pop    %ebp
c01013a4:	c3                   	ret    
c01013a5:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c01013a9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c01013b0 <write_byte>:
c01013b0:	55                   	push   %ebp
c01013b1:	89 e5                	mov    %esp,%ebp
c01013b3:	56                   	push   %esi
c01013b4:	53                   	push   %ebx
c01013b5:	8b 5d 08             	mov    0x8(%ebp),%ebx
c01013b8:	8b 75 0c             	mov    0xc(%ebp),%esi
c01013bb:	89 d8                	mov    %ebx,%eax
c01013bd:	81 e3 ff 01 00 00    	and    $0x1ff,%ebx
c01013c3:	c1 e8 09             	shr    $0x9,%eax
c01013c6:	e8 75 fe ff ff       	call   c0101240 <buf_fetch>
c01013cb:	89 f2                	mov    %esi,%edx
c01013cd:	88 54 18 06          	mov    %dl,0x6(%eax,%ebx,1)
c01013d1:	c6 40 05 01          	movb   $0x1,0x5(%eax)
c01013d5:	5b                   	pop    %ebx
c01013d6:	5e                   	pop    %esi
c01013d7:	5d                   	pop    %ebp
c01013d8:	c3                   	ret    
c01013d9:	66 90                	xchg   %ax,%ax
c01013db:	66 90                	xchg   %ax,%ax
c01013dd:	66 90                	xchg   %ax,%ax
c01013df:	90                   	nop

c01013e0 <dma_prepare>:
c01013e0:	55                   	push   %ebp
c01013e1:	89 e5                	mov    %esp,%ebp
c01013e3:	83 ec 08             	sub    $0x8,%esp
c01013e6:	68 d4 86 10 c0       	push   $0xc01086d4
c01013eb:	6a 1d                	push   $0x1d
c01013ed:	68 6c 86 10 c0       	push   $0xc010866c
c01013f2:	68 88 86 10 c0       	push   $0xc0108688
c01013f7:	e8 b4 02 00 00       	call   c01016b0 <printk>
c01013fc:	b8 01 00 00 00       	mov    $0x1,%eax
c0101401:	d6                   	(bad)  
c0101402:	83 c4 10             	add    $0x10,%esp
c0101405:	c9                   	leave  
c0101406:	c3                   	ret    
c0101407:	89 f6                	mov    %esi,%esi
c0101409:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0101410 <dma_issue_read>:
c0101410:	55                   	push   %ebp
c0101411:	ba 40 c0 ff ff       	mov    $0xffffc040,%edx
c0101416:	89 e5                	mov    %esp,%ebp
c0101418:	ec                   	in     (%dx),%al
c0101419:	83 c8 09             	or     $0x9,%eax
c010141c:	ee                   	out    %al,(%dx)
c010141d:	5d                   	pop    %ebp
c010141e:	c3                   	ret    
c010141f:	90                   	nop

c0101420 <ide_prepare>:
c0101420:	55                   	push   %ebp
c0101421:	89 c1                	mov    %eax,%ecx
c0101423:	ba f7 01 00 00       	mov    $0x1f7,%edx
c0101428:	89 e5                	mov    %esp,%ebp
c010142a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0101430:	ec                   	in     (%dx),%al
c0101431:	83 e0 c0             	and    $0xffffffc0,%eax
c0101434:	3c 40                	cmp    $0x40,%al
c0101436:	75 f8                	jne    c0101430 <ide_prepare+0x10>
c0101438:	ba f1 01 00 00       	mov    $0x1f1,%edx
c010143d:	31 c0                	xor    %eax,%eax
c010143f:	ee                   	out    %al,(%dx)
c0101440:	b8 01 00 00 00       	mov    $0x1,%eax
c0101445:	b2 f2                	mov    $0xf2,%dl
c0101447:	ee                   	out    %al,(%dx)
c0101448:	b2 f3                	mov    $0xf3,%dl
c010144a:	89 c8                	mov    %ecx,%eax
c010144c:	ee                   	out    %al,(%dx)
c010144d:	89 c8                	mov    %ecx,%eax
c010144f:	b2 f4                	mov    $0xf4,%dl
c0101451:	c1 e8 08             	shr    $0x8,%eax
c0101454:	ee                   	out    %al,(%dx)
c0101455:	89 c8                	mov    %ecx,%eax
c0101457:	b2 f5                	mov    $0xf5,%dl
c0101459:	c1 e8 10             	shr    $0x10,%eax
c010145c:	ee                   	out    %al,(%dx)
c010145d:	89 c8                	mov    %ecx,%eax
c010145f:	b2 f6                	mov    $0xf6,%dl
c0101461:	c1 e8 18             	shr    $0x18,%eax
c0101464:	83 c8 e0             	or     $0xffffffe0,%eax
c0101467:	ee                   	out    %al,(%dx)
c0101468:	5d                   	pop    %ebp
c0101469:	c3                   	ret    
c010146a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

c0101470 <disk_do_read>:
c0101470:	55                   	push   %ebp
c0101471:	89 e5                	mov    %esp,%ebp
c0101473:	53                   	push   %ebx
c0101474:	8b 45 0c             	mov    0xc(%ebp),%eax
c0101477:	e8 a4 ff ff ff       	call   c0101420 <ide_prepare>
c010147c:	ba f7 01 00 00       	mov    $0x1f7,%edx
c0101481:	b8 20 00 00 00       	mov    $0x20,%eax
c0101486:	ee                   	out    %al,(%dx)
c0101487:	8b 4d 08             	mov    0x8(%ebp),%ecx
c010148a:	b2 f0                	mov    $0xf0,%dl
c010148c:	8d 99 00 02 00 00    	lea    0x200(%ecx),%ebx
c0101492:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0101498:	ed                   	in     (%dx),%eax
c0101499:	89 01                	mov    %eax,(%ecx)
c010149b:	83 c1 04             	add    $0x4,%ecx
c010149e:	39 d9                	cmp    %ebx,%ecx
c01014a0:	75 f6                	jne    c0101498 <disk_do_read+0x28>
c01014a2:	5b                   	pop    %ebx
c01014a3:	5d                   	pop    %ebp
c01014a4:	c3                   	ret    
c01014a5:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c01014a9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c01014b0 <disk_do_write>:
c01014b0:	55                   	push   %ebp
c01014b1:	89 e5                	mov    %esp,%ebp
c01014b3:	53                   	push   %ebx
c01014b4:	8b 45 0c             	mov    0xc(%ebp),%eax
c01014b7:	e8 64 ff ff ff       	call   c0101420 <ide_prepare>
c01014bc:	ba f7 01 00 00       	mov    $0x1f7,%edx
c01014c1:	b8 30 00 00 00       	mov    $0x30,%eax
c01014c6:	ee                   	out    %al,(%dx)
c01014c7:	8b 4d 08             	mov    0x8(%ebp),%ecx
c01014ca:	b2 f0                	mov    $0xf0,%dl
c01014cc:	8d 99 00 02 00 00    	lea    0x200(%ecx),%ebx
c01014d2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c01014d8:	8b 01                	mov    (%ecx),%eax
c01014da:	ef                   	out    %eax,(%dx)
c01014db:	83 c1 04             	add    $0x4,%ecx
c01014de:	39 d9                	cmp    %ebx,%ecx
c01014e0:	75 f6                	jne    c01014d8 <disk_do_write+0x28>
c01014e2:	5b                   	pop    %ebx
c01014e3:	5d                   	pop    %ebp
c01014e4:	c3                   	ret    
c01014e5:	66 90                	xchg   %ax,%ax
c01014e7:	66 90                	xchg   %ax,%ax
c01014e9:	66 90                	xchg   %ax,%ax
c01014eb:	66 90                	xchg   %ax,%ax
c01014ed:	66 90                	xchg   %ax,%ax
c01014ef:	90                   	nop

c01014f0 <ide_intr>:
c01014f0:	55                   	push   %ebp
c01014f1:	c7 05 c4 1e 16 c0 01 	movl   $0x1,0xc0161ec4
c01014f8:	00 00 00 
c01014fb:	89 e5                	mov    %esp,%ebp
c01014fd:	5d                   	pop    %ebp
c01014fe:	c3                   	ret    
c01014ff:	90                   	nop

c0101500 <ide_writeback>:
c0101500:	a1 c0 1e 16 c0       	mov    0xc0161ec0,%eax
c0101505:	83 c0 01             	add    $0x1,%eax
c0101508:	83 f8 64             	cmp    $0x64,%eax
c010150b:	a3 c0 1e 16 c0       	mov    %eax,0xc0161ec0
c0101510:	74 06                	je     c0101518 <ide_writeback+0x18>
c0101512:	c3                   	ret    
c0101513:	90                   	nop
c0101514:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0101518:	55                   	push   %ebp
c0101519:	89 e5                	mov    %esp,%ebp
c010151b:	83 ec 08             	sub    $0x8,%esp
c010151e:	e8 fd fd ff ff       	call   c0101320 <buf_writeback>
c0101523:	c7 05 c0 1e 16 c0 00 	movl   $0x0,0xc0161ec0
c010152a:	00 00 00 
c010152d:	c9                   	leave  
c010152e:	c3                   	ret    
c010152f:	90                   	nop

c0101530 <ide_read>:
c0101530:	55                   	push   %ebp
c0101531:	89 e5                	mov    %esp,%ebp
c0101533:	57                   	push   %edi
c0101534:	56                   	push   %esi
c0101535:	53                   	push   %ebx
c0101536:	83 ec 0c             	sub    $0xc,%esp
c0101539:	8b 5d 0c             	mov    0xc(%ebp),%ebx
c010153c:	8b 45 10             	mov    0x10(%ebp),%eax
c010153f:	8b 7d 08             	mov    0x8(%ebp),%edi
c0101542:	8d 34 18             	lea    (%eax,%ebx,1),%esi
c0101545:	29 df                	sub    %ebx,%edi
c0101547:	85 c0                	test   %eax,%eax
c0101549:	74 1b                	je     c0101566 <ide_read+0x36>
c010154b:	90                   	nop
c010154c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0101550:	83 ec 0c             	sub    $0xc,%esp
c0101553:	53                   	push   %ebx
c0101554:	e8 27 fe ff ff       	call   c0101380 <read_byte>
c0101559:	88 04 1f             	mov    %al,(%edi,%ebx,1)
c010155c:	83 c3 01             	add    $0x1,%ebx
c010155f:	83 c4 10             	add    $0x10,%esp
c0101562:	39 f3                	cmp    %esi,%ebx
c0101564:	75 ea                	jne    c0101550 <ide_read+0x20>
c0101566:	8d 65 f4             	lea    -0xc(%ebp),%esp
c0101569:	5b                   	pop    %ebx
c010156a:	5e                   	pop    %esi
c010156b:	5f                   	pop    %edi
c010156c:	5d                   	pop    %ebp
c010156d:	c3                   	ret    
c010156e:	66 90                	xchg   %ax,%ax

c0101570 <ide_write>:
c0101570:	55                   	push   %ebp
c0101571:	89 e5                	mov    %esp,%ebp
c0101573:	57                   	push   %edi
c0101574:	56                   	push   %esi
c0101575:	53                   	push   %ebx
c0101576:	83 ec 0c             	sub    $0xc,%esp
c0101579:	8b 5d 0c             	mov    0xc(%ebp),%ebx
c010157c:	8b 45 10             	mov    0x10(%ebp),%eax
c010157f:	8b 7d 08             	mov    0x8(%ebp),%edi
c0101582:	8d 34 18             	lea    (%eax,%ebx,1),%esi
c0101585:	29 df                	sub    %ebx,%edi
c0101587:	85 c0                	test   %eax,%eax
c0101589:	74 1d                	je     c01015a8 <ide_write+0x38>
c010158b:	90                   	nop
c010158c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0101590:	0f b6 04 1f          	movzbl (%edi,%ebx,1),%eax
c0101594:	83 ec 08             	sub    $0x8,%esp
c0101597:	50                   	push   %eax
c0101598:	53                   	push   %ebx
c0101599:	83 c3 01             	add    $0x1,%ebx
c010159c:	e8 0f fe ff ff       	call   c01013b0 <write_byte>
c01015a1:	83 c4 10             	add    $0x10,%esp
c01015a4:	39 f3                	cmp    %esi,%ebx
c01015a6:	75 e8                	jne    c0101590 <ide_write+0x20>
c01015a8:	8d 65 f4             	lea    -0xc(%ebp),%esp
c01015ab:	5b                   	pop    %ebx
c01015ac:	5e                   	pop    %esi
c01015ad:	5f                   	pop    %edi
c01015ae:	5d                   	pop    %ebp
c01015af:	c3                   	ret    

c01015b0 <clear_ide_intr>:
c01015b0:	55                   	push   %ebp
c01015b1:	c7 05 c4 1e 16 c0 00 	movl   $0x0,0xc0161ec4
c01015b8:	00 00 00 
c01015bb:	89 e5                	mov    %esp,%ebp
c01015bd:	5d                   	pop    %ebp
c01015be:	c3                   	ret    
c01015bf:	90                   	nop

c01015c0 <wait_ide_intr>:
c01015c0:	a1 c4 1e 16 c0       	mov    0xc0161ec4,%eax
c01015c5:	55                   	push   %ebp
c01015c6:	89 e5                	mov    %esp,%ebp
c01015c8:	85 c0                	test   %eax,%eax
c01015ca:	75 0e                	jne    c01015da <wait_ide_intr+0x1a>
c01015cc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c01015d0:	f4                   	hlt    
c01015d1:	a1 c4 1e 16 c0       	mov    0xc0161ec4,%eax
c01015d6:	85 c0                	test   %eax,%eax
c01015d8:	74 f6                	je     c01015d0 <wait_ide_intr+0x10>
c01015da:	c7 05 c4 1e 16 c0 00 	movl   $0x0,0xc0161ec4
c01015e1:	00 00 00 
c01015e4:	5d                   	pop    %ebp
c01015e5:	c3                   	ret    
c01015e6:	8d 76 00             	lea    0x0(%esi),%esi
c01015e9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c01015f0 <init_ide>:
c01015f0:	55                   	push   %ebp
c01015f1:	89 e5                	mov    %esp,%ebp
c01015f3:	83 ec 08             	sub    $0x8,%esp
c01015f6:	e8 f5 fc ff ff       	call   c01012f0 <buf_init>
c01015fb:	83 ec 08             	sub    $0x8,%esp
c01015fe:	68 00 15 10 c0       	push   $0xc0101500
c0101603:	6a 00                	push   $0x0
c0101605:	e8 66 f0 ff ff       	call   c0100670 <add_irq_handle>
c010160a:	58                   	pop    %eax
c010160b:	5a                   	pop    %edx
c010160c:	68 f0 14 10 c0       	push   $0xc01014f0
c0101611:	6a 0e                	push   $0xe
c0101613:	e8 58 f0 ff ff       	call   c0100670 <add_irq_handle>
c0101618:	83 c4 10             	add    $0x10,%esp
c010161b:	c9                   	leave  
c010161c:	c3                   	ret    
c010161d:	66 90                	xchg   %ax,%ax
c010161f:	90                   	nop

c0101620 <ramdisk_read>:
c0101620:	55                   	push   %ebp
c0101621:	89 e5                	mov    %esp,%ebp
c0101623:	53                   	push   %ebx
c0101624:	8b 55 0c             	mov    0xc(%ebp),%edx
c0101627:	8b 4d 10             	mov    0x10(%ebp),%ecx
c010162a:	8b 5d 08             	mov    0x8(%ebp),%ebx
c010162d:	8d 04 0a             	lea    (%edx,%ecx,1),%eax
c0101630:	3d ff ff 09 00       	cmp    $0x9ffff,%eax
c0101635:	76 06                	jbe    c010163d <ramdisk_read+0x1d>
c0101637:	b8 01 00 00 00       	mov    $0x1,%eax
c010163c:	d6                   	(bad)  
c010163d:	89 5d 08             	mov    %ebx,0x8(%ebp)
c0101640:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0101643:	89 55 0c             	mov    %edx,0xc(%ebp)
c0101646:	5b                   	pop    %ebx
c0101647:	5d                   	pop    %ebp
c0101648:	e9 23 01 00 00       	jmp    c0101770 <memcpy>
c010164d:	8d 76 00             	lea    0x0(%esi),%esi

c0101650 <ramdisk_write>:
c0101650:	55                   	push   %ebp
c0101651:	89 e5                	mov    %esp,%ebp
c0101653:	53                   	push   %ebx
c0101654:	8b 55 0c             	mov    0xc(%ebp),%edx
c0101657:	8b 4d 10             	mov    0x10(%ebp),%ecx
c010165a:	8b 5d 08             	mov    0x8(%ebp),%ebx
c010165d:	8d 04 0a             	lea    (%edx,%ecx,1),%eax
c0101660:	3d ff ff 09 00       	cmp    $0x9ffff,%eax
c0101665:	76 06                	jbe    c010166d <ramdisk_write+0x1d>
c0101667:	b8 01 00 00 00       	mov    $0x1,%eax
c010166c:	d6                   	(bad)  
c010166d:	89 5d 0c             	mov    %ebx,0xc(%ebp)
c0101670:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0101673:	89 55 08             	mov    %edx,0x8(%ebp)
c0101676:	5b                   	pop    %ebx
c0101677:	5d                   	pop    %ebp
c0101678:	e9 f3 00 00 00       	jmp    c0101770 <memcpy>
c010167d:	66 90                	xchg   %ax,%ax
c010167f:	90                   	nop

c0101680 <sbrk>:
c0101680:	55                   	push   %ebp
c0101681:	89 e5                	mov    %esp,%ebp
c0101683:	83 ec 08             	sub    $0x8,%esp
c0101686:	68 f6 86 10 c0       	push   $0xc01086f6
c010168b:	6a 08                	push   $0x8
c010168d:	68 e0 86 10 c0       	push   $0xc01086e0
c0101692:	68 b0 83 10 c0       	push   $0xc01083b0
c0101697:	e8 14 00 00 00       	call   c01016b0 <printk>
c010169c:	b8 01 00 00 00       	mov    $0x1,%eax
c01016a1:	d6                   	(bad)  
c01016a2:	30 c0                	xor    %al,%al
c01016a4:	c9                   	leave  
c01016a5:	c3                   	ret    
c01016a6:	66 90                	xchg   %ax,%ax
c01016a8:	66 90                	xchg   %ax,%ax
c01016aa:	66 90                	xchg   %ax,%ax
c01016ac:	66 90                	xchg   %ax,%ax
c01016ae:	66 90                	xchg   %ax,%ax

c01016b0 <printk>:
c01016b0:	55                   	push   %ebp
c01016b1:	89 e5                	mov    %esp,%ebp
c01016b3:	56                   	push   %esi
c01016b4:	53                   	push   %ebx
c01016b5:	8d 45 0c             	lea    0xc(%ebp),%eax
c01016b8:	50                   	push   %eax
c01016b9:	ff 75 08             	pushl  0x8(%ebp)
c01016bc:	68 00 01 00 00       	push   $0x100
c01016c1:	68 00 1f 16 c0       	push   $0xc0161f00
c01016c6:	e8 75 02 00 00       	call   c0101940 <vsnprintf>
c01016cb:	83 c4 10             	add    $0x10,%esp
c01016ce:	85 c0                	test   %eax,%eax
c01016d0:	89 c6                	mov    %eax,%esi
c01016d2:	7e 26                	jle    c01016fa <printk+0x4a>
c01016d4:	31 db                	xor    %ebx,%ebx
c01016d6:	8d 76 00             	lea    0x0(%esi),%esi
c01016d9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
c01016e0:	0f be 93 00 1f 16 c0 	movsbl -0x3fe9e100(%ebx),%edx
c01016e7:	83 ec 0c             	sub    $0xc,%esp
c01016ea:	83 c3 01             	add    $0x1,%ebx
c01016ed:	52                   	push   %edx
c01016ee:	e8 5d 00 00 00       	call   c0101750 <serial_printc>
c01016f3:	83 c4 10             	add    $0x10,%esp
c01016f6:	39 f3                	cmp    %esi,%ebx
c01016f8:	75 e6                	jne    c01016e0 <printk+0x30>
c01016fa:	8d 65 f8             	lea    -0x8(%ebp),%esp
c01016fd:	5b                   	pop    %ebx
c01016fe:	5e                   	pop    %esi
c01016ff:	5d                   	pop    %ebp
c0101700:	c3                   	ret    
c0101701:	66 90                	xchg   %ax,%ax
c0101703:	66 90                	xchg   %ax,%ax
c0101705:	66 90                	xchg   %ax,%ax
c0101707:	66 90                	xchg   %ax,%ax
c0101709:	66 90                	xchg   %ax,%ax
c010170b:	66 90                	xchg   %ax,%ax
c010170d:	66 90                	xchg   %ax,%ax
c010170f:	90                   	nop

c0101710 <init_serial>:
c0101710:	55                   	push   %ebp
c0101711:	ba f9 03 00 00       	mov    $0x3f9,%edx
c0101716:	31 c0                	xor    %eax,%eax
c0101718:	89 e5                	mov    %esp,%ebp
c010171a:	ee                   	out    %al,(%dx)
c010171b:	b8 80 ff ff ff       	mov    $0xffffff80,%eax
c0101720:	b2 fb                	mov    $0xfb,%dl
c0101722:	ee                   	out    %al,(%dx)
c0101723:	b8 01 00 00 00       	mov    $0x1,%eax
c0101728:	b2 f8                	mov    $0xf8,%dl
c010172a:	ee                   	out    %al,(%dx)
c010172b:	31 c0                	xor    %eax,%eax
c010172d:	b2 f9                	mov    $0xf9,%dl
c010172f:	ee                   	out    %al,(%dx)
c0101730:	b8 03 00 00 00       	mov    $0x3,%eax
c0101735:	b2 fb                	mov    $0xfb,%dl
c0101737:	ee                   	out    %al,(%dx)
c0101738:	b8 c7 ff ff ff       	mov    $0xffffffc7,%eax
c010173d:	b2 fa                	mov    $0xfa,%dl
c010173f:	ee                   	out    %al,(%dx)
c0101740:	b8 0b 00 00 00       	mov    $0xb,%eax
c0101745:	b2 fc                	mov    $0xfc,%dl
c0101747:	ee                   	out    %al,(%dx)
c0101748:	5d                   	pop    %ebp
c0101749:	c3                   	ret    
c010174a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

c0101750 <serial_printc>:
c0101750:	55                   	push   %ebp
c0101751:	ba fd 03 00 00       	mov    $0x3fd,%edx
c0101756:	89 e5                	mov    %esp,%ebp
c0101758:	8b 4d 08             	mov    0x8(%ebp),%ecx
c010175b:	90                   	nop
c010175c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0101760:	ec                   	in     (%dx),%al
c0101761:	a8 20                	test   $0x20,%al
c0101763:	74 fb                	je     c0101760 <serial_printc+0x10>
c0101765:	ba f8 03 00 00       	mov    $0x3f8,%edx
c010176a:	89 c8                	mov    %ecx,%eax
c010176c:	ee                   	out    %al,(%dx)
c010176d:	5d                   	pop    %ebp
c010176e:	c3                   	ret    
c010176f:	90                   	nop

c0101770 <memcpy>:
c0101770:	55                   	push   %ebp
c0101771:	89 e5                	mov    %esp,%ebp
c0101773:	56                   	push   %esi
c0101774:	57                   	push   %edi
c0101775:	53                   	push   %ebx
c0101776:	8b 7d 08             	mov    0x8(%ebp),%edi
c0101779:	8b 4d 10             	mov    0x10(%ebp),%ecx
c010177c:	8b 75 0c             	mov    0xc(%ebp),%esi
c010177f:	fc                   	cld    
c0101780:	83 f9 08             	cmp    $0x8,%ecx
c0101783:	76 26                	jbe    c01017ab <memcpy+0x3b>
c0101785:	89 fa                	mov    %edi,%edx
c0101787:	89 cb                	mov    %ecx,%ebx
c0101789:	83 e2 03             	and    $0x3,%edx
c010178c:	74 10                	je     c010179e <memcpy+0x2e>
c010178e:	b9 04 00 00 00       	mov    $0x4,%ecx
c0101793:	29 d1                	sub    %edx,%ecx
c0101795:	83 e1 03             	and    $0x3,%ecx
c0101798:	29 cb                	sub    %ecx,%ebx
c010179a:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
c010179c:	89 d9                	mov    %ebx,%ecx
c010179e:	c1 e9 02             	shr    $0x2,%ecx
c01017a1:	8d 76 00             	lea    0x0(%esi),%esi
c01017a4:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
c01017a6:	89 d9                	mov    %ebx,%ecx
c01017a8:	83 e1 03             	and    $0x3,%ecx
c01017ab:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
c01017ad:	8b 45 08             	mov    0x8(%ebp),%eax
c01017b0:	8d 65 f4             	lea    -0xc(%ebp),%esp
c01017b3:	5b                   	pop    %ebx
c01017b4:	5f                   	pop    %edi
c01017b5:	5e                   	pop    %esi
c01017b6:	c9                   	leave  
c01017b7:	c3                   	ret    

c01017b8 <memset>:
c01017b8:	55                   	push   %ebp
c01017b9:	89 e5                	mov    %esp,%ebp
c01017bb:	57                   	push   %edi
c01017bc:	8b 7d 08             	mov    0x8(%ebp),%edi
c01017bf:	0f b6 45 0c          	movzbl 0xc(%ebp),%eax
c01017c3:	8b 4d 10             	mov    0x10(%ebp),%ecx
c01017c6:	fc                   	cld    
c01017c7:	83 f9 10             	cmp    $0x10,%ecx
c01017ca:	76 69                	jbe    c0101835 <memset+0x7d>
c01017cc:	f7 c7 07 00 00 00    	test   $0x7,%edi
c01017d2:	74 4c                	je     c0101820 <memset+0x68>
c01017d4:	88 07                	mov    %al,(%edi)
c01017d6:	47                   	inc    %edi
c01017d7:	49                   	dec    %ecx
c01017d8:	f7 c7 07 00 00 00    	test   $0x7,%edi
c01017de:	74 40                	je     c0101820 <memset+0x68>
c01017e0:	88 07                	mov    %al,(%edi)
c01017e2:	47                   	inc    %edi
c01017e3:	49                   	dec    %ecx
c01017e4:	f7 c7 07 00 00 00    	test   $0x7,%edi
c01017ea:	74 34                	je     c0101820 <memset+0x68>
c01017ec:	88 07                	mov    %al,(%edi)
c01017ee:	47                   	inc    %edi
c01017ef:	49                   	dec    %ecx
c01017f0:	f7 c7 07 00 00 00    	test   $0x7,%edi
c01017f6:	74 28                	je     c0101820 <memset+0x68>
c01017f8:	88 07                	mov    %al,(%edi)
c01017fa:	47                   	inc    %edi
c01017fb:	49                   	dec    %ecx
c01017fc:	f7 c7 07 00 00 00    	test   $0x7,%edi
c0101802:	74 1c                	je     c0101820 <memset+0x68>
c0101804:	88 07                	mov    %al,(%edi)
c0101806:	47                   	inc    %edi
c0101807:	49                   	dec    %ecx
c0101808:	f7 c7 07 00 00 00    	test   $0x7,%edi
c010180e:	74 10                	je     c0101820 <memset+0x68>
c0101810:	88 07                	mov    %al,(%edi)
c0101812:	47                   	inc    %edi
c0101813:	49                   	dec    %ecx
c0101814:	f7 c7 07 00 00 00    	test   $0x7,%edi
c010181a:	74 04                	je     c0101820 <memset+0x68>
c010181c:	88 07                	mov    %al,(%edi)
c010181e:	47                   	inc    %edi
c010181f:	49                   	dec    %ecx
c0101820:	88 c4                	mov    %al,%ah
c0101822:	89 c2                	mov    %eax,%edx
c0101824:	c1 e2 10             	shl    $0x10,%edx
c0101827:	09 d0                	or     %edx,%eax
c0101829:	89 ca                	mov    %ecx,%edx
c010182b:	c1 e9 02             	shr    $0x2,%ecx
c010182e:	83 e2 03             	and    $0x3,%edx
c0101831:	f3 ab                	rep stos %eax,%es:(%edi)
c0101833:	89 d1                	mov    %edx,%ecx
c0101835:	f3 aa                	rep stos %al,%es:(%edi)
c0101837:	8b 45 08             	mov    0x8(%ebp),%eax
c010183a:	8d 65 fc             	lea    -0x4(%ebp),%esp
c010183d:	5f                   	pop    %edi
c010183e:	c9                   	leave  
c010183f:	c3                   	ret    

c0101840 <strcmp>:
c0101840:	55                   	push   %ebp
c0101841:	89 e5                	mov    %esp,%ebp
c0101843:	8b 45 08             	mov    0x8(%ebp),%eax
c0101846:	8b 55 0c             	mov    0xc(%ebp),%edx
c0101849:	53                   	push   %ebx
c010184a:	89 c1                	mov    %eax,%ecx
c010184c:	09 d1                	or     %edx,%ecx
c010184e:	83 e1 03             	and    $0x3,%ecx
c0101851:	75 17                	jne    c010186a <strcmp+0x2a>
c0101853:	8b 08                	mov    (%eax),%ecx
c0101855:	3b 0a                	cmp    (%edx),%ecx
c0101857:	74 33                	je     c010188c <strcmp+0x4c>
c0101859:	eb 0f                	jmp    c010186a <strcmp+0x2a>
c010185b:	90                   	nop
c010185c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0101860:	3a 0a                	cmp    (%edx),%cl
c0101862:	75 0d                	jne    c0101871 <strcmp+0x31>
c0101864:	83 c0 01             	add    $0x1,%eax
c0101867:	83 c2 01             	add    $0x1,%edx
c010186a:	0f b6 08             	movzbl (%eax),%ecx
c010186d:	84 c9                	test   %cl,%cl
c010186f:	75 ef                	jne    c0101860 <strcmp+0x20>
c0101871:	0f b6 00             	movzbl (%eax),%eax
c0101874:	0f b6 12             	movzbl (%edx),%edx
c0101877:	5b                   	pop    %ebx
c0101878:	5d                   	pop    %ebp
c0101879:	29 d0                	sub    %edx,%eax
c010187b:	c3                   	ret    
c010187c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0101880:	83 c0 04             	add    $0x4,%eax
c0101883:	83 c2 04             	add    $0x4,%edx
c0101886:	8b 08                	mov    (%eax),%ecx
c0101888:	3b 0a                	cmp    (%edx),%ecx
c010188a:	75 de                	jne    c010186a <strcmp+0x2a>
c010188c:	8d 99 ff fe fe fe    	lea    -0x1010101(%ecx),%ebx
c0101892:	f7 d1                	not    %ecx
c0101894:	21 cb                	and    %ecx,%ebx
c0101896:	81 e3 80 80 80 80    	and    $0x80808080,%ebx
c010189c:	74 e2                	je     c0101880 <strcmp+0x40>
c010189e:	31 c0                	xor    %eax,%eax
c01018a0:	5b                   	pop    %ebx
c01018a1:	5d                   	pop    %ebp
c01018a2:	c3                   	ret    
c01018a3:	66 90                	xchg   %ax,%ax
c01018a5:	66 90                	xchg   %ax,%ax
c01018a7:	66 90                	xchg   %ax,%ax
c01018a9:	66 90                	xchg   %ax,%ax
c01018ab:	66 90                	xchg   %ax,%ax
c01018ad:	66 90                	xchg   %ax,%ax
c01018af:	90                   	nop

c01018b0 <_vsnprintf_r>:
c01018b0:	55                   	push   %ebp
c01018b1:	89 e5                	mov    %esp,%ebp
c01018b3:	56                   	push   %esi
c01018b4:	53                   	push   %ebx
c01018b5:	83 c4 80             	add    $0xffffff80,%esp
c01018b8:	8b 5d 10             	mov    0x10(%ebp),%ebx
c01018bb:	8b 75 08             	mov    0x8(%ebp),%esi
c01018be:	8b 45 0c             	mov    0xc(%ebp),%eax
c01018c1:	85 db                	test   %ebx,%ebx
c01018c3:	78 63                	js     c0101928 <_vsnprintf_r+0x78>
c01018c5:	ba 08 02 00 00       	mov    $0x208,%edx
c01018ca:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
c01018cf:	66 89 55 9c          	mov    %dx,-0x64(%ebp)
c01018d3:	8d 53 ff             	lea    -0x1(%ebx),%edx
c01018d6:	89 45 90             	mov    %eax,-0x70(%ebp)
c01018d9:	89 45 a0             	mov    %eax,-0x60(%ebp)
c01018dc:	31 c0                	xor    %eax,%eax
c01018de:	85 db                	test   %ebx,%ebx
c01018e0:	0f 45 c2             	cmovne %edx,%eax
c01018e3:	89 45 98             	mov    %eax,-0x68(%ebp)
c01018e6:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c01018e9:	8b 45 18             	mov    0x18(%ebp),%eax
c01018ec:	89 34 24             	mov    %esi,(%esp)
c01018ef:	66 89 4d 9e          	mov    %cx,-0x62(%ebp)
c01018f3:	89 44 24 0c          	mov    %eax,0xc(%esp)
c01018f7:	8b 45 14             	mov    0x14(%ebp),%eax
c01018fa:	89 44 24 08          	mov    %eax,0x8(%esp)
c01018fe:	8d 45 90             	lea    -0x70(%ebp),%eax
c0101901:	89 44 24 04          	mov    %eax,0x4(%esp)
c0101905:	e8 86 00 00 00       	call   c0101990 <_svfprintf_r>
c010190a:	83 f8 ff             	cmp    $0xffffffff,%eax
c010190d:	7c 11                	jl     c0101920 <_vsnprintf_r+0x70>
c010190f:	85 db                	test   %ebx,%ebx
c0101911:	74 06                	je     c0101919 <_vsnprintf_r+0x69>
c0101913:	8b 55 90             	mov    -0x70(%ebp),%edx
c0101916:	c6 02 00             	movb   $0x0,(%edx)
c0101919:	83 ec 80             	sub    $0xffffff80,%esp
c010191c:	5b                   	pop    %ebx
c010191d:	5e                   	pop    %esi
c010191e:	5d                   	pop    %ebp
c010191f:	c3                   	ret    
c0101920:	c7 06 8b 00 00 00    	movl   $0x8b,(%esi)
c0101926:	eb e7                	jmp    c010190f <_vsnprintf_r+0x5f>
c0101928:	c7 06 8b 00 00 00    	movl   $0x8b,(%esi)
c010192e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c0101933:	eb e4                	jmp    c0101919 <_vsnprintf_r+0x69>
c0101935:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0101939:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0101940 <vsnprintf>:
c0101940:	55                   	push   %ebp
c0101941:	89 e5                	mov    %esp,%ebp
c0101943:	83 ec 28             	sub    $0x28,%esp
c0101946:	e8 35 00 00 00       	call   c0101980 <__getreent>
c010194b:	8b 55 14             	mov    0x14(%ebp),%edx
c010194e:	89 54 24 10          	mov    %edx,0x10(%esp)
c0101952:	8b 55 10             	mov    0x10(%ebp),%edx
c0101955:	89 04 24             	mov    %eax,(%esp)
c0101958:	89 54 24 0c          	mov    %edx,0xc(%esp)
c010195c:	8b 55 0c             	mov    0xc(%ebp),%edx
c010195f:	89 54 24 08          	mov    %edx,0x8(%esp)
c0101963:	8b 55 08             	mov    0x8(%ebp),%edx
c0101966:	89 54 24 04          	mov    %edx,0x4(%esp)
c010196a:	e8 41 ff ff ff       	call   c01018b0 <_vsnprintf_r>
c010196f:	c9                   	leave  
c0101970:	c3                   	ret    
c0101971:	66 90                	xchg   %ax,%ax
c0101973:	66 90                	xchg   %ax,%ax
c0101975:	66 90                	xchg   %ax,%ax
c0101977:	66 90                	xchg   %ax,%ax
c0101979:	66 90                	xchg   %ax,%ax
c010197b:	66 90                	xchg   %ax,%ax
c010197d:	66 90                	xchg   %ax,%ax
c010197f:	90                   	nop

c0101980 <__getreent>:
c0101980:	55                   	push   %ebp
c0101981:	a1 20 a0 10 c0       	mov    0xc010a020,%eax
c0101986:	89 e5                	mov    %esp,%ebp
c0101988:	5d                   	pop    %ebp
c0101989:	c3                   	ret    
c010198a:	66 90                	xchg   %ax,%ax
c010198c:	66 90                	xchg   %ax,%ax
c010198e:	66 90                	xchg   %ax,%ax

c0101990 <_svfprintf_r>:
c0101990:	55                   	push   %ebp
c0101991:	89 e5                	mov    %esp,%ebp
c0101993:	57                   	push   %edi
c0101994:	56                   	push   %esi
c0101995:	53                   	push   %ebx
c0101996:	81 ec 1c 01 00 00    	sub    $0x11c,%esp
c010199c:	8b 45 08             	mov    0x8(%ebp),%eax
c010199f:	89 04 24             	mov    %eax,(%esp)
c01019a2:	e8 89 33 00 00       	call   c0104d30 <_localeconv_r>
c01019a7:	8b 00                	mov    (%eax),%eax
c01019a9:	89 04 24             	mov    %eax,(%esp)
c01019ac:	89 85 0c ff ff ff    	mov    %eax,-0xf4(%ebp)
c01019b2:	e8 69 4a 00 00       	call   c0106420 <strlen>
c01019b7:	89 85 08 ff ff ff    	mov    %eax,-0xf8(%ebp)
c01019bd:	8b 45 0c             	mov    0xc(%ebp),%eax
c01019c0:	f6 40 0c 80          	testb  $0x80,0xc(%eax)
c01019c4:	74 0b                	je     c01019d1 <_svfprintf_r+0x41>
c01019c6:	8b 40 10             	mov    0x10(%eax),%eax
c01019c9:	85 c0                	test   %eax,%eax
c01019cb:	0f 84 62 18 00 00    	je     c0103233 <_svfprintf_r+0x18a3>
c01019d1:	8d 45 a8             	lea    -0x58(%ebp),%eax
c01019d4:	8d 55 a7             	lea    -0x59(%ebp),%edx
c01019d7:	89 c7                	mov    %eax,%edi
c01019d9:	89 85 74 ff ff ff    	mov    %eax,-0x8c(%ebp)
c01019df:	90                   	nop
c01019e0:	90                   	nop
c01019e1:	29 d0                	sub    %edx,%eax
c01019e3:	c7 85 7c ff ff ff 00 	movl   $0x0,-0x84(%ebp)
c01019ea:	00 00 00 
c01019ed:	90                   	nop
c01019ee:	90                   	nop
c01019ef:	90                   	nop
c01019f0:	90                   	nop
c01019f1:	90                   	nop
c01019f2:	90                   	nop
c01019f3:	c7 85 78 ff ff ff 00 	movl   $0x0,-0x88(%ebp)
c01019fa:	00 00 00 
c01019fd:	c7 85 1c ff ff ff 00 	movl   $0x0,-0xe4(%ebp)
c0101a04:	00 00 00 
c0101a07:	c7 85 18 ff ff ff 00 	movl   $0x0,-0xe8(%ebp)
c0101a0e:	00 00 00 
c0101a11:	c7 85 04 ff ff ff 00 	movl   $0x0,-0xfc(%ebp)
c0101a18:	00 00 00 
c0101a1b:	c7 85 34 ff ff ff 00 	movl   $0x0,-0xcc(%ebp)
c0101a22:	00 00 00 
c0101a25:	89 85 00 ff ff ff    	mov    %eax,-0x100(%ebp)
c0101a2b:	8b 45 10             	mov    0x10(%ebp),%eax
c0101a2e:	8b 5d 10             	mov    0x10(%ebp),%ebx
c0101a31:	0f b6 00             	movzbl (%eax),%eax
c0101a34:	3c 25                	cmp    $0x25,%al
c0101a36:	74 4d                	je     c0101a85 <_svfprintf_r+0xf5>
c0101a38:	84 c0                	test   %al,%al
c0101a3a:	75 08                	jne    c0101a44 <_svfprintf_r+0xb4>
c0101a3c:	eb 47                	jmp    c0101a85 <_svfprintf_r+0xf5>
c0101a3e:	66 90                	xchg   %ax,%ax
c0101a40:	84 c0                	test   %al,%al
c0101a42:	74 0a                	je     c0101a4e <_svfprintf_r+0xbe>
c0101a44:	83 c3 01             	add    $0x1,%ebx
c0101a47:	0f b6 03             	movzbl (%ebx),%eax
c0101a4a:	3c 25                	cmp    $0x25,%al
c0101a4c:	75 f2                	jne    c0101a40 <_svfprintf_r+0xb0>
c0101a4e:	89 de                	mov    %ebx,%esi
c0101a50:	2b 75 10             	sub    0x10(%ebp),%esi
c0101a53:	74 30                	je     c0101a85 <_svfprintf_r+0xf5>
c0101a55:	8b 45 10             	mov    0x10(%ebp),%eax
c0101a58:	83 c7 08             	add    $0x8,%edi
c0101a5b:	89 77 fc             	mov    %esi,-0x4(%edi)
c0101a5e:	01 b5 7c ff ff ff    	add    %esi,-0x84(%ebp)
c0101a64:	89 47 f8             	mov    %eax,-0x8(%edi)
c0101a67:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0101a6d:	83 c0 01             	add    $0x1,%eax
c0101a70:	83 f8 07             	cmp    $0x7,%eax
c0101a73:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0101a79:	0f 8f 91 00 00 00    	jg     c0101b10 <_svfprintf_r+0x180>
c0101a7f:	01 b5 34 ff ff ff    	add    %esi,-0xcc(%ebp)
c0101a85:	80 3b 00             	cmpb   $0x0,(%ebx)
c0101a88:	0f 84 aa 00 00 00    	je     c0101b38 <_svfprintf_r+0x1a8>
c0101a8e:	8d 43 01             	lea    0x1(%ebx),%eax
c0101a91:	be 20 00 00 00       	mov    $0x20,%esi
c0101a96:	c6 85 59 ff ff ff 00 	movb   $0x0,-0xa7(%ebp)
c0101a9d:	31 db                	xor    %ebx,%ebx
c0101a9f:	c7 85 44 ff ff ff ff 	movl   $0xffffffff,-0xbc(%ebp)
c0101aa6:	ff ff ff 
c0101aa9:	c7 85 40 ff ff ff 00 	movl   $0x0,-0xc0(%ebp)
c0101ab0:	00 00 00 
c0101ab3:	c7 85 4c ff ff ff 00 	movl   $0x0,-0xb4(%ebp)
c0101aba:	00 00 00 
c0101abd:	8d 48 01             	lea    0x1(%eax),%ecx
c0101ac0:	0f be 00             	movsbl (%eax),%eax
c0101ac3:	8d 50 e0             	lea    -0x20(%eax),%edx
c0101ac6:	83 fa 58             	cmp    $0x58,%edx
c0101ac9:	0f 87 8f 07 00 00    	ja     c010225e <_svfprintf_r+0x8ce>
c0101acf:	ff 24 95 3c 87 10 c0 	jmp    *-0x3fef78c4(,%edx,4)
c0101ad6:	66 90                	xchg   %ax,%ax
c0101ad8:	83 8d 4c ff ff ff 10 	orl    $0x10,-0xb4(%ebp)
c0101adf:	89 c8                	mov    %ecx,%eax
c0101ae1:	eb da                	jmp    c0101abd <_svfprintf_r+0x12d>
c0101ae3:	8b 45 14             	mov    0x14(%ebp),%eax
c0101ae6:	8b 55 14             	mov    0x14(%ebp),%edx
c0101ae9:	8b 00                	mov    (%eax),%eax
c0101aeb:	83 c2 04             	add    $0x4,%edx
c0101aee:	89 55 14             	mov    %edx,0x14(%ebp)
c0101af1:	85 c0                	test   %eax,%eax
c0101af3:	89 85 40 ff ff ff    	mov    %eax,-0xc0(%ebp)
c0101af9:	79 e4                	jns    c0101adf <_svfprintf_r+0x14f>
c0101afb:	f7 9d 40 ff ff ff    	negl   -0xc0(%ebp)
c0101b01:	83 8d 4c ff ff ff 04 	orl    $0x4,-0xb4(%ebp)
c0101b08:	89 c8                	mov    %ecx,%eax
c0101b0a:	eb b1                	jmp    c0101abd <_svfprintf_r+0x12d>
c0101b0c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0101b10:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0101b16:	89 44 24 08          	mov    %eax,0x8(%esp)
c0101b1a:	8b 45 0c             	mov    0xc(%ebp),%eax
c0101b1d:	89 44 24 04          	mov    %eax,0x4(%esp)
c0101b21:	8b 45 08             	mov    0x8(%ebp),%eax
c0101b24:	89 04 24             	mov    %eax,(%esp)
c0101b27:	e8 74 49 00 00       	call   c01064a0 <__ssprint_r>
c0101b2c:	85 c0                	test   %eax,%eax
c0101b2e:	75 30                	jne    c0101b60 <_svfprintf_r+0x1d0>
c0101b30:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0101b33:	e9 47 ff ff ff       	jmp    c0101a7f <_svfprintf_r+0xef>
c0101b38:	8b 85 7c ff ff ff    	mov    -0x84(%ebp),%eax
c0101b3e:	85 c0                	test   %eax,%eax
c0101b40:	74 1e                	je     c0101b60 <_svfprintf_r+0x1d0>
c0101b42:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0101b48:	89 44 24 08          	mov    %eax,0x8(%esp)
c0101b4c:	8b 45 0c             	mov    0xc(%ebp),%eax
c0101b4f:	89 44 24 04          	mov    %eax,0x4(%esp)
c0101b53:	8b 45 08             	mov    0x8(%ebp),%eax
c0101b56:	89 04 24             	mov    %eax,(%esp)
c0101b59:	e8 42 49 00 00       	call   c01064a0 <__ssprint_r>
c0101b5e:	66 90                	xchg   %ax,%ax
c0101b60:	8b 55 0c             	mov    0xc(%ebp),%edx
c0101b63:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c0101b68:	f6 42 0c 40          	testb  $0x40,0xc(%edx)
c0101b6c:	0f 44 85 34 ff ff ff 	cmove  -0xcc(%ebp),%eax
c0101b73:	81 c4 1c 01 00 00    	add    $0x11c,%esp
c0101b79:	5b                   	pop    %ebx
c0101b7a:	5e                   	pop    %esi
c0101b7b:	5f                   	pop    %edi
c0101b7c:	5d                   	pop    %ebp
c0101b7d:	c3                   	ret    
c0101b7e:	bb 2b 00 00 00       	mov    $0x2b,%ebx
c0101b83:	89 c8                	mov    %ecx,%eax
c0101b85:	e9 33 ff ff ff       	jmp    c0101abd <_svfprintf_r+0x12d>
c0101b8a:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c0101b90:	8b 45 14             	mov    0x14(%ebp),%eax
c0101b93:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0101b96:	c6 85 59 ff ff ff 00 	movb   $0x0,-0xa7(%ebp)
c0101b9d:	8d 70 04             	lea    0x4(%eax),%esi
c0101ba0:	8b 00                	mov    (%eax),%eax
c0101ba2:	85 c0                	test   %eax,%eax
c0101ba4:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c0101baa:	0f 84 7f 18 00 00    	je     c010342f <_svfprintf_r+0x1a9f>
c0101bb0:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
c0101bb6:	85 c0                	test   %eax,%eax
c0101bb8:	0f 88 b6 17 00 00    	js     c0103374 <_svfprintf_r+0x19e4>
c0101bbe:	89 44 24 08          	mov    %eax,0x8(%esp)
c0101bc2:	8b 85 28 ff ff ff    	mov    -0xd8(%ebp),%eax
c0101bc8:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c0101bcf:	00 
c0101bd0:	89 04 24             	mov    %eax,(%esp)
c0101bd3:	e8 f8 38 00 00       	call   c01054d0 <memchr>
c0101bd8:	85 c0                	test   %eax,%eax
c0101bda:	0f 84 a0 19 00 00    	je     c0103580 <_svfprintf_r+0x1bf0>
c0101be0:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
c0101be6:	2b 85 28 ff ff ff    	sub    -0xd8(%ebp),%eax
c0101bec:	39 d0                	cmp    %edx,%eax
c0101bee:	0f 4f c2             	cmovg  %edx,%eax
c0101bf1:	89 c2                	mov    %eax,%edx
c0101bf3:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c0101bfa:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c0101c00:	31 c0                	xor    %eax,%eax
c0101c02:	85 d2                	test   %edx,%edx
c0101c04:	0f 49 c2             	cmovns %edx,%eax
c0101c07:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
c0101c0d:	89 75 14             	mov    %esi,0x14(%ebp)
c0101c10:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c0101c17:	00 00 00 
c0101c1a:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c0101c21:	00 00 00 
c0101c24:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0101c28:	84 db                	test   %bl,%bl
c0101c2a:	74 07                	je     c0101c33 <_svfprintf_r+0x2a3>
c0101c2c:	83 85 48 ff ff ff 01 	addl   $0x1,-0xb8(%ebp)
c0101c33:	8b 8d 48 ff ff ff    	mov    -0xb8(%ebp),%ecx
c0101c39:	8b b5 4c ff ff ff    	mov    -0xb4(%ebp),%esi
c0101c3f:	89 c8                	mov    %ecx,%eax
c0101c41:	89 f2                	mov    %esi,%edx
c0101c43:	83 c0 02             	add    $0x2,%eax
c0101c46:	83 e2 02             	and    $0x2,%edx
c0101c49:	89 95 30 ff ff ff    	mov    %edx,-0xd0(%ebp)
c0101c4f:	89 f2                	mov    %esi,%edx
c0101c51:	0f 44 c1             	cmove  %ecx,%eax
c0101c54:	81 e2 84 00 00 00    	and    $0x84,%edx
c0101c5a:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
c0101c60:	89 95 2c ff ff ff    	mov    %edx,-0xd4(%ebp)
c0101c66:	0f 85 1c 06 00 00    	jne    c0102288 <_svfprintf_r+0x8f8>
c0101c6c:	8b b5 40 ff ff ff    	mov    -0xc0(%ebp),%esi
c0101c72:	2b b5 48 ff ff ff    	sub    -0xb8(%ebp),%esi
c0101c78:	85 f6                	test   %esi,%esi
c0101c7a:	0f 8e 08 06 00 00    	jle    c0102288 <_svfprintf_r+0x8f8>
c0101c80:	83 fe 10             	cmp    $0x10,%esi
c0101c83:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0101c89:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0101c8f:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c0101c95:	7f 11                	jg     c0101ca8 <_svfprintf_r+0x318>
c0101c97:	eb 6b                	jmp    c0101d04 <_svfprintf_r+0x374>
c0101c99:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0101ca0:	83 ee 10             	sub    $0x10,%esi
c0101ca3:	83 fe 10             	cmp    $0x10,%esi
c0101ca6:	7e 5c                	jle    c0101d04 <_svfprintf_r+0x374>
c0101ca8:	83 c0 01             	add    $0x1,%eax
c0101cab:	83 c1 10             	add    $0x10,%ecx
c0101cae:	c7 07 b0 88 10 c0    	movl   $0xc01088b0,(%edi)
c0101cb4:	83 c7 08             	add    $0x8,%edi
c0101cb7:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c0101cbe:	83 f8 07             	cmp    $0x7,%eax
c0101cc1:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0101cc7:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0101ccd:	7e d1                	jle    c0101ca0 <_svfprintf_r+0x310>
c0101ccf:	8b 45 0c             	mov    0xc(%ebp),%eax
c0101cd2:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0101cd6:	89 44 24 04          	mov    %eax,0x4(%esp)
c0101cda:	8b 45 08             	mov    0x8(%ebp),%eax
c0101cdd:	89 04 24             	mov    %eax,(%esp)
c0101ce0:	e8 bb 47 00 00       	call   c01064a0 <__ssprint_r>
c0101ce5:	85 c0                	test   %eax,%eax
c0101ce7:	0f 85 73 fe ff ff    	jne    c0101b60 <_svfprintf_r+0x1d0>
c0101ced:	83 ee 10             	sub    $0x10,%esi
c0101cf0:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0101cf6:	83 fe 10             	cmp    $0x10,%esi
c0101cf9:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0101cff:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0101d02:	7f a4                	jg     c0101ca8 <_svfprintf_r+0x318>
c0101d04:	83 c0 01             	add    $0x1,%eax
c0101d07:	01 f1                	add    %esi,%ecx
c0101d09:	83 f8 07             	cmp    $0x7,%eax
c0101d0c:	c7 07 b0 88 10 c0    	movl   $0xc01088b0,(%edi)
c0101d12:	89 77 04             	mov    %esi,0x4(%edi)
c0101d15:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0101d1b:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0101d21:	0f 8f 16 0e 00 00    	jg     c0102b3d <_svfprintf_r+0x11ad>
c0101d27:	83 c7 08             	add    $0x8,%edi
c0101d2a:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c0101d31:	e9 58 05 00 00       	jmp    c010228e <_svfprintf_r+0x8fe>
c0101d36:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c0101d3d:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c0101d43:	8b 45 14             	mov    0x14(%ebp),%eax
c0101d46:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0101d49:	0f 85 fd 04 00 00    	jne    c010224c <_svfprintf_r+0x8bc>
c0101d4f:	f6 85 4c ff ff ff 40 	testb  $0x40,-0xb4(%ebp)
c0101d56:	0f 84 f0 04 00 00    	je     c010224c <_svfprintf_r+0x8bc>
c0101d5c:	0f b7 08             	movzwl (%eax),%ecx
c0101d5f:	83 c0 04             	add    $0x4,%eax
c0101d62:	89 45 14             	mov    %eax,0x14(%ebp)
c0101d65:	b8 01 00 00 00       	mov    $0x1,%eax
c0101d6a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0101d70:	c6 85 59 ff ff ff 00 	movb   $0x0,-0xa7(%ebp)
c0101d77:	31 db                	xor    %ebx,%ebx
c0101d79:	8b b5 4c ff ff ff    	mov    -0xb4(%ebp),%esi
c0101d7f:	89 f2                	mov    %esi,%edx
c0101d81:	80 e2 7f             	and    $0x7f,%dl
c0101d84:	83 bd 44 ff ff ff 00 	cmpl   $0x0,-0xbc(%ebp)
c0101d8b:	0f 48 d6             	cmovs  %esi,%edx
c0101d8e:	89 95 4c ff ff ff    	mov    %edx,-0xb4(%ebp)
c0101d94:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
c0101d9a:	85 d2                	test   %edx,%edx
c0101d9c:	75 08                	jne    c0101da6 <_svfprintf_r+0x416>
c0101d9e:	85 c9                	test   %ecx,%ecx
c0101da0:	0f 84 ea 08 00 00    	je     c0102690 <_svfprintf_r+0xd00>
c0101da6:	3c 01                	cmp    $0x1,%al
c0101da8:	0f 84 6a 0d 00 00    	je     c0102b18 <_svfprintf_r+0x1188>
c0101dae:	3c 02                	cmp    $0x2,%al
c0101db0:	8d 45 a8             	lea    -0x58(%ebp),%eax
c0101db3:	0f 85 bf 0b 00 00    	jne    c0102978 <_svfprintf_r+0xfe8>
c0101db9:	8b b5 18 ff ff ff    	mov    -0xe8(%ebp),%esi
c0101dbf:	90                   	nop
c0101dc0:	89 ca                	mov    %ecx,%edx
c0101dc2:	83 e8 01             	sub    $0x1,%eax
c0101dc5:	83 e2 0f             	and    $0xf,%edx
c0101dc8:	0f b6 14 16          	movzbl (%esi,%edx,1),%edx
c0101dcc:	c1 e9 04             	shr    $0x4,%ecx
c0101dcf:	85 c9                	test   %ecx,%ecx
c0101dd1:	88 10                	mov    %dl,(%eax)
c0101dd3:	75 eb                	jne    c0101dc0 <_svfprintf_r+0x430>
c0101dd5:	8d 55 a8             	lea    -0x58(%ebp),%edx
c0101dd8:	29 c2                	sub    %eax,%edx
c0101dda:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c0101de0:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
c0101de6:	66 90                	xchg   %ax,%ax
c0101de8:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
c0101dee:	8b 95 38 ff ff ff    	mov    -0xc8(%ebp),%edx
c0101df4:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c0101dfb:	00 00 00 
c0101dfe:	39 c2                	cmp    %eax,%edx
c0101e00:	0f 4d c2             	cmovge %edx,%eax
c0101e03:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
c0101e09:	e9 1a fe ff ff       	jmp    c0101c28 <_svfprintf_r+0x298>
c0101e0e:	84 db                	test   %bl,%bl
c0101e10:	89 c8                	mov    %ecx,%eax
c0101e12:	0f 44 de             	cmove  %esi,%ebx
c0101e15:	e9 a3 fc ff ff       	jmp    c0101abd <_svfprintf_r+0x12d>
c0101e1a:	83 8d 4c ff ff ff 01 	orl    $0x1,-0xb4(%ebp)
c0101e21:	89 c8                	mov    %ecx,%eax
c0101e23:	e9 95 fc ff ff       	jmp    c0101abd <_svfprintf_r+0x12d>
c0101e28:	81 8d 4c ff ff ff 80 	orl    $0x80,-0xb4(%ebp)
c0101e2f:	00 00 00 
c0101e32:	89 c8                	mov    %ecx,%eax
c0101e34:	e9 84 fc ff ff       	jmp    c0101abd <_svfprintf_r+0x12d>
c0101e39:	89 bd 48 ff ff ff    	mov    %edi,-0xb8(%ebp)
c0101e3f:	8d 50 d0             	lea    -0x30(%eax),%edx
c0101e42:	31 ff                	xor    %edi,%edi
c0101e44:	c7 85 40 ff ff ff 00 	movl   $0x0,-0xc0(%ebp)
c0101e4b:	00 00 00 
c0101e4e:	66 90                	xchg   %ax,%ax
c0101e50:	8d 04 bf             	lea    (%edi,%edi,4),%eax
c0101e53:	83 c1 01             	add    $0x1,%ecx
c0101e56:	8d 3c 42             	lea    (%edx,%eax,2),%edi
c0101e59:	0f be 41 ff          	movsbl -0x1(%ecx),%eax
c0101e5d:	8d 50 d0             	lea    -0x30(%eax),%edx
c0101e60:	83 fa 09             	cmp    $0x9,%edx
c0101e63:	76 eb                	jbe    c0101e50 <_svfprintf_r+0x4c0>
c0101e65:	89 bd 40 ff ff ff    	mov    %edi,-0xc0(%ebp)
c0101e6b:	8b bd 48 ff ff ff    	mov    -0xb8(%ebp),%edi
c0101e71:	e9 4d fc ff ff       	jmp    c0101ac3 <_svfprintf_r+0x133>
c0101e76:	83 8d 4c ff ff ff 10 	orl    $0x10,-0xb4(%ebp)
c0101e7d:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c0101e84:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c0101e8a:	8b 45 14             	mov    0x14(%ebp),%eax
c0101e8d:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0101e90:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
c0101e96:	0f 85 61 02 00 00    	jne    c01020fd <_svfprintf_r+0x76d>
c0101e9c:	f6 85 4c ff ff ff 40 	testb  $0x40,-0xb4(%ebp)
c0101ea3:	0f 84 54 02 00 00    	je     c01020fd <_svfprintf_r+0x76d>
c0101ea9:	0f bf 08             	movswl (%eax),%ecx
c0101eac:	83 c0 04             	add    $0x4,%eax
c0101eaf:	89 45 14             	mov    %eax,0x14(%ebp)
c0101eb2:	85 c9                	test   %ecx,%ecx
c0101eb4:	0f 88 53 02 00 00    	js     c010210d <_svfprintf_r+0x77d>
c0101eba:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c0101ec1:	b8 01 00 00 00       	mov    $0x1,%eax
c0101ec6:	e9 ae fe ff ff       	jmp    c0101d79 <_svfprintf_r+0x3e9>
c0101ecb:	f6 85 4c ff ff ff 08 	testb  $0x8,-0xb4(%ebp)
c0101ed2:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c0101ed8:	8b 45 14             	mov    0x14(%ebp),%eax
c0101edb:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0101ede:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
c0101ee4:	0f 84 15 10 00 00    	je     c0102eff <_svfprintf_r+0x156f>
c0101eea:	db 28                	fldt   (%eax)
c0101eec:	83 c0 0c             	add    $0xc,%eax
c0101eef:	89 45 14             	mov    %eax,0x14(%ebp)
c0101ef2:	dd 9d 10 ff ff ff    	fstpl  -0xf0(%ebp)
c0101ef8:	dd 85 10 ff ff ff    	fldl   -0xf0(%ebp)
c0101efe:	dd 1c 24             	fstpl  (%esp)
c0101f01:	e8 aa 44 00 00       	call   c01063b0 <__fpclassifyd>
c0101f06:	83 f8 01             	cmp    $0x1,%eax
c0101f09:	0f 85 82 0f 00 00    	jne    c0102e91 <_svfprintf_r+0x1501>
c0101f0f:	90                   	nop
c0101f10:	90                   	nop
c0101f11:	dd 85 10 ff ff ff    	fldl   -0xf0(%ebp)
c0101f17:	d9 c9                	fxch   %st(1)
c0101f19:	df e9                	fucomip %st(1),%st
c0101f1b:	dd d8                	fstp   %st(0)
c0101f1d:	0f 87 59 15 00 00    	ja     c010347c <_svfprintf_r+0x1aec>
c0101f23:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c0101f2a:	83 bd 24 ff ff ff 47 	cmpl   $0x47,-0xdc(%ebp)
c0101f31:	ba 02 87 10 c0       	mov    $0xc0108702,%edx
c0101f36:	b8 06 87 10 c0       	mov    $0xc0108706,%eax
c0101f3b:	c7 85 48 ff ff ff 03 	movl   $0x3,-0xb8(%ebp)
c0101f42:	00 00 00 
c0101f45:	0f 4e c2             	cmovle %edx,%eax
c0101f48:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c0101f4e:	81 a5 4c ff ff ff 7f 	andl   $0xffffff7f,-0xb4(%ebp)
c0101f55:	ff ff ff 
c0101f58:	c7 85 38 ff ff ff 03 	movl   $0x3,-0xc8(%ebp)
c0101f5f:	00 00 00 
c0101f62:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c0101f69:	00 00 00 
c0101f6c:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c0101f73:	00 00 00 
c0101f76:	e9 ad fc ff ff       	jmp    c0101c28 <_svfprintf_r+0x298>
c0101f7b:	8d 41 01             	lea    0x1(%ecx),%eax
c0101f7e:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
c0101f84:	0f be 01             	movsbl (%ecx),%eax
c0101f87:	83 f8 2a             	cmp    $0x2a,%eax
c0101f8a:	0f 84 84 18 00 00    	je     c0103814 <_svfprintf_r+0x1e84>
c0101f90:	8d 50 d0             	lea    -0x30(%eax),%edx
c0101f93:	31 c9                	xor    %ecx,%ecx
c0101f95:	83 fa 09             	cmp    $0x9,%edx
c0101f98:	0f 87 a8 16 00 00    	ja     c0103646 <_svfprintf_r+0x1cb6>
c0101f9e:	89 bd 44 ff ff ff    	mov    %edi,-0xbc(%ebp)
c0101fa4:	8b bd 48 ff ff ff    	mov    -0xb8(%ebp),%edi
c0101faa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0101fb0:	8d 04 89             	lea    (%ecx,%ecx,4),%eax
c0101fb3:	83 c7 01             	add    $0x1,%edi
c0101fb6:	8d 0c 42             	lea    (%edx,%eax,2),%ecx
c0101fb9:	0f be 47 ff          	movsbl -0x1(%edi),%eax
c0101fbd:	8d 50 d0             	lea    -0x30(%eax),%edx
c0101fc0:	83 fa 09             	cmp    $0x9,%edx
c0101fc3:	76 eb                	jbe    c0101fb0 <_svfprintf_r+0x620>
c0101fc5:	85 c9                	test   %ecx,%ecx
c0101fc7:	89 ca                	mov    %ecx,%edx
c0101fc9:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
c0101fce:	0f 48 d1             	cmovs  %ecx,%edx
c0101fd1:	89 bd 48 ff ff ff    	mov    %edi,-0xb8(%ebp)
c0101fd7:	8b bd 44 ff ff ff    	mov    -0xbc(%ebp),%edi
c0101fdd:	8b 8d 48 ff ff ff    	mov    -0xb8(%ebp),%ecx
c0101fe3:	89 95 44 ff ff ff    	mov    %edx,-0xbc(%ebp)
c0101fe9:	e9 d5 fa ff ff       	jmp    c0101ac3 <_svfprintf_r+0x133>
c0101fee:	8b 45 14             	mov    0x14(%ebp),%eax
c0101ff1:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0101ff4:	83 8d 4c ff ff ff 02 	orl    $0x2,-0xb4(%ebp)
c0101ffb:	8b 08                	mov    (%eax),%ecx
c0101ffd:	83 c0 04             	add    $0x4,%eax
c0102000:	89 45 14             	mov    %eax,0x14(%ebp)
c0102003:	b8 02 00 00 00       	mov    $0x2,%eax
c0102008:	c6 85 5a ff ff ff 30 	movb   $0x30,-0xa6(%ebp)
c010200f:	c6 85 5b ff ff ff 78 	movb   $0x78,-0xa5(%ebp)
c0102016:	c7 85 18 ff ff ff 23 	movl   $0xc0108723,-0xe8(%ebp)
c010201d:	87 10 c0 
c0102020:	c7 85 24 ff ff ff 78 	movl   $0x78,-0xdc(%ebp)
c0102027:	00 00 00 
c010202a:	e9 41 fd ff ff       	jmp    c0101d70 <_svfprintf_r+0x3e0>
c010202f:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c0102036:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c010203c:	8b 45 14             	mov    0x14(%ebp),%eax
c010203f:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0102042:	0f 85 87 00 00 00    	jne    c01020cf <_svfprintf_r+0x73f>
c0102048:	f6 85 4c ff ff ff 40 	testb  $0x40,-0xb4(%ebp)
c010204f:	74 7e                	je     c01020cf <_svfprintf_r+0x73f>
c0102051:	0f b7 08             	movzwl (%eax),%ecx
c0102054:	83 c0 04             	add    $0x4,%eax
c0102057:	89 45 14             	mov    %eax,0x14(%ebp)
c010205a:	31 c0                	xor    %eax,%eax
c010205c:	e9 0f fd ff ff       	jmp    c0101d70 <_svfprintf_r+0x3e0>
c0102061:	83 8d 4c ff ff ff 08 	orl    $0x8,-0xb4(%ebp)
c0102068:	89 c8                	mov    %ecx,%eax
c010206a:	e9 4e fa ff ff       	jmp    c0101abd <_svfprintf_r+0x12d>
c010206f:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c0102076:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0102079:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
c010207f:	0f 85 97 0b 00 00    	jne    c0102c1c <_svfprintf_r+0x128c>
c0102085:	f6 85 4c ff ff ff 40 	testb  $0x40,-0xb4(%ebp)
c010208c:	0f 84 8a 0b 00 00    	je     c0102c1c <_svfprintf_r+0x128c>
c0102092:	8b 45 14             	mov    0x14(%ebp),%eax
c0102095:	0f b7 95 34 ff ff ff 	movzwl -0xcc(%ebp),%edx
c010209c:	8b 00                	mov    (%eax),%eax
c010209e:	66 89 10             	mov    %dx,(%eax)
c01020a1:	8b 45 14             	mov    0x14(%ebp),%eax
c01020a4:	83 c0 04             	add    $0x4,%eax
c01020a7:	89 45 14             	mov    %eax,0x14(%ebp)
c01020aa:	e9 7c f9 ff ff       	jmp    c0101a2b <_svfprintf_r+0x9b>
c01020af:	83 8d 4c ff ff ff 10 	orl    $0x10,-0xb4(%ebp)
c01020b6:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c01020bd:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c01020c3:	8b 45 14             	mov    0x14(%ebp),%eax
c01020c6:	89 4d 10             	mov    %ecx,0x10(%ebp)
c01020c9:	0f 84 79 ff ff ff    	je     c0102048 <_svfprintf_r+0x6b8>
c01020cf:	8b 08                	mov    (%eax),%ecx
c01020d1:	83 c0 04             	add    $0x4,%eax
c01020d4:	89 45 14             	mov    %eax,0x14(%ebp)
c01020d7:	31 c0                	xor    %eax,%eax
c01020d9:	e9 92 fc ff ff       	jmp    c0101d70 <_svfprintf_r+0x3e0>
c01020de:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c01020e5:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c01020eb:	8b 45 14             	mov    0x14(%ebp),%eax
c01020ee:	89 4d 10             	mov    %ecx,0x10(%ebp)
c01020f1:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
c01020f7:	0f 84 9f fd ff ff    	je     c0101e9c <_svfprintf_r+0x50c>
c01020fd:	8b 08                	mov    (%eax),%ecx
c01020ff:	83 c0 04             	add    $0x4,%eax
c0102102:	89 45 14             	mov    %eax,0x14(%ebp)
c0102105:	85 c9                	test   %ecx,%ecx
c0102107:	0f 89 ad fd ff ff    	jns    c0101eba <_svfprintf_r+0x52a>
c010210d:	f7 d9                	neg    %ecx
c010210f:	bb 2d 00 00 00       	mov    $0x2d,%ebx
c0102114:	c6 85 59 ff ff ff 2d 	movb   $0x2d,-0xa7(%ebp)
c010211b:	b8 01 00 00 00       	mov    $0x1,%eax
c0102120:	e9 54 fc ff ff       	jmp    c0101d79 <_svfprintf_r+0x3e9>
c0102125:	83 8d 4c ff ff ff 40 	orl    $0x40,-0xb4(%ebp)
c010212c:	89 c8                	mov    %ecx,%eax
c010212e:	e9 8a f9 ff ff       	jmp    c0101abd <_svfprintf_r+0x12d>
c0102133:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c010213a:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c0102140:	8b 45 14             	mov    0x14(%ebp),%eax
c0102143:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0102146:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
c010214c:	c7 85 18 ff ff ff 23 	movl   $0xc0108723,-0xe8(%ebp)
c0102153:	87 10 c0 
c0102156:	75 71                	jne    c01021c9 <_svfprintf_r+0x839>
c0102158:	f6 85 4c ff ff ff 40 	testb  $0x40,-0xb4(%ebp)
c010215f:	74 68                	je     c01021c9 <_svfprintf_r+0x839>
c0102161:	0f b7 08             	movzwl (%eax),%ecx
c0102164:	83 c0 04             	add    $0x4,%eax
c0102167:	89 45 14             	mov    %eax,0x14(%ebp)
c010216a:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c0102171:	b8 02 00 00 00       	mov    $0x2,%eax
c0102176:	0f 84 f4 fb ff ff    	je     c0101d70 <_svfprintf_r+0x3e0>
c010217c:	85 c9                	test   %ecx,%ecx
c010217e:	0f 84 ec fb ff ff    	je     c0101d70 <_svfprintf_r+0x3e0>
c0102184:	0f b6 95 24 ff ff ff 	movzbl -0xdc(%ebp),%edx
c010218b:	c6 85 5a ff ff ff 30 	movb   $0x30,-0xa6(%ebp)
c0102192:	83 8d 4c ff ff ff 02 	orl    $0x2,-0xb4(%ebp)
c0102199:	88 95 5b ff ff ff    	mov    %dl,-0xa5(%ebp)
c010219f:	e9 cc fb ff ff       	jmp    c0101d70 <_svfprintf_r+0x3e0>
c01021a4:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c01021ab:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c01021b1:	8b 45 14             	mov    0x14(%ebp),%eax
c01021b4:	89 4d 10             	mov    %ecx,0x10(%ebp)
c01021b7:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
c01021bd:	c7 85 18 ff ff ff 12 	movl   $0xc0108712,-0xe8(%ebp)
c01021c4:	87 10 c0 
c01021c7:	74 8f                	je     c0102158 <_svfprintf_r+0x7c8>
c01021c9:	8b 08                	mov    (%eax),%ecx
c01021cb:	83 c0 04             	add    $0x4,%eax
c01021ce:	89 45 14             	mov    %eax,0x14(%ebp)
c01021d1:	eb 97                	jmp    c010216a <_svfprintf_r+0x7da>
c01021d3:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c01021d9:	8b 45 14             	mov    0x14(%ebp),%eax
c01021dc:	89 4d 10             	mov    %ecx,0x10(%ebp)
c01021df:	c6 85 59 ff ff ff 00 	movb   $0x0,-0xa7(%ebp)
c01021e6:	8b 00                	mov    (%eax),%eax
c01021e8:	88 45 80             	mov    %al,-0x80(%ebp)
c01021eb:	8b 45 14             	mov    0x14(%ebp),%eax
c01021ee:	83 c0 04             	add    $0x4,%eax
c01021f1:	89 45 14             	mov    %eax,0x14(%ebp)
c01021f4:	8d 45 80             	lea    -0x80(%ebp),%eax
c01021f7:	31 db                	xor    %ebx,%ebx
c01021f9:	c7 85 48 ff ff ff 01 	movl   $0x1,-0xb8(%ebp)
c0102200:	00 00 00 
c0102203:	c7 85 38 ff ff ff 01 	movl   $0x1,-0xc8(%ebp)
c010220a:	00 00 00 
c010220d:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c0102214:	00 00 00 
c0102217:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c010221e:	00 00 00 
c0102221:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c0102227:	e9 07 fa ff ff       	jmp    c0101c33 <_svfprintf_r+0x2a3>
c010222c:	83 8d 4c ff ff ff 10 	orl    $0x10,-0xb4(%ebp)
c0102233:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c010223a:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c0102240:	8b 45 14             	mov    0x14(%ebp),%eax
c0102243:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0102246:	0f 84 03 fb ff ff    	je     c0101d4f <_svfprintf_r+0x3bf>
c010224c:	8b 08                	mov    (%eax),%ecx
c010224e:	83 c0 04             	add    $0x4,%eax
c0102251:	89 45 14             	mov    %eax,0x14(%ebp)
c0102254:	b8 01 00 00 00       	mov    $0x1,%eax
c0102259:	e9 12 fb ff ff       	jmp    c0101d70 <_svfprintf_r+0x3e0>
c010225e:	85 c0                	test   %eax,%eax
c0102260:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c0102266:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0102269:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
c010226f:	0f 84 c3 f8 ff ff    	je     c0101b38 <_svfprintf_r+0x1a8>
c0102275:	88 45 80             	mov    %al,-0x80(%ebp)
c0102278:	c6 85 59 ff ff ff 00 	movb   $0x0,-0xa7(%ebp)
c010227f:	e9 70 ff ff ff       	jmp    c01021f4 <_svfprintf_r+0x864>
c0102284:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0102288:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c010228e:	84 db                	test   %bl,%bl
c0102290:	74 33                	je     c01022c5 <_svfprintf_r+0x935>
c0102292:	8d 85 59 ff ff ff    	lea    -0xa7(%ebp),%eax
c0102298:	83 c1 01             	add    $0x1,%ecx
c010229b:	89 07                	mov    %eax,(%edi)
c010229d:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c01022a3:	83 c7 08             	add    $0x8,%edi
c01022a6:	c7 47 fc 01 00 00 00 	movl   $0x1,-0x4(%edi)
c01022ad:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c01022b3:	83 c0 01             	add    $0x1,%eax
c01022b6:	83 f8 07             	cmp    $0x7,%eax
c01022b9:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c01022bf:	0f 8f 7b 06 00 00    	jg     c0102940 <_svfprintf_r+0xfb0>
c01022c5:	8b 9d 30 ff ff ff    	mov    -0xd0(%ebp),%ebx
c01022cb:	85 db                	test   %ebx,%ebx
c01022cd:	74 33                	je     c0102302 <_svfprintf_r+0x972>
c01022cf:	8d 85 5a ff ff ff    	lea    -0xa6(%ebp),%eax
c01022d5:	83 c1 02             	add    $0x2,%ecx
c01022d8:	89 07                	mov    %eax,(%edi)
c01022da:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c01022e0:	83 c7 08             	add    $0x8,%edi
c01022e3:	c7 47 fc 02 00 00 00 	movl   $0x2,-0x4(%edi)
c01022ea:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c01022f0:	83 c0 01             	add    $0x1,%eax
c01022f3:	83 f8 07             	cmp    $0x7,%eax
c01022f6:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c01022fc:	0f 8f 06 06 00 00    	jg     c0102908 <_svfprintf_r+0xf78>
c0102302:	81 bd 2c ff ff ff 80 	cmpl   $0x80,-0xd4(%ebp)
c0102309:	00 00 00 
c010230c:	0f 84 c6 03 00 00    	je     c01026d8 <_svfprintf_r+0xd48>
c0102312:	8b b5 44 ff ff ff    	mov    -0xbc(%ebp),%esi
c0102318:	2b b5 38 ff ff ff    	sub    -0xc8(%ebp),%esi
c010231e:	85 f6                	test   %esi,%esi
c0102320:	0f 8e d2 00 00 00    	jle    c01023f8 <_svfprintf_r+0xa68>
c0102326:	83 fe 10             	cmp    $0x10,%esi
c0102329:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c010232f:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c0102335:	7f 11                	jg     c0102348 <_svfprintf_r+0x9b8>
c0102337:	eb 6b                	jmp    c01023a4 <_svfprintf_r+0xa14>
c0102339:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0102340:	83 ee 10             	sub    $0x10,%esi
c0102343:	83 fe 10             	cmp    $0x10,%esi
c0102346:	7e 5c                	jle    c01023a4 <_svfprintf_r+0xa14>
c0102348:	83 c0 01             	add    $0x1,%eax
c010234b:	83 c1 10             	add    $0x10,%ecx
c010234e:	c7 07 a0 88 10 c0    	movl   $0xc01088a0,(%edi)
c0102354:	83 c7 08             	add    $0x8,%edi
c0102357:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c010235e:	83 f8 07             	cmp    $0x7,%eax
c0102361:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0102367:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c010236d:	7e d1                	jle    c0102340 <_svfprintf_r+0x9b0>
c010236f:	8b 45 0c             	mov    0xc(%ebp),%eax
c0102372:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0102376:	89 44 24 04          	mov    %eax,0x4(%esp)
c010237a:	8b 45 08             	mov    0x8(%ebp),%eax
c010237d:	89 04 24             	mov    %eax,(%esp)
c0102380:	e8 1b 41 00 00       	call   c01064a0 <__ssprint_r>
c0102385:	85 c0                	test   %eax,%eax
c0102387:	0f 85 d3 f7 ff ff    	jne    c0101b60 <_svfprintf_r+0x1d0>
c010238d:	83 ee 10             	sub    $0x10,%esi
c0102390:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0102396:	83 fe 10             	cmp    $0x10,%esi
c0102399:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c010239f:	8d 7d a8             	lea    -0x58(%ebp),%edi
c01023a2:	7f a4                	jg     c0102348 <_svfprintf_r+0x9b8>
c01023a4:	83 c0 01             	add    $0x1,%eax
c01023a7:	01 f1                	add    %esi,%ecx
c01023a9:	c7 07 a0 88 10 c0    	movl   $0xc01088a0,(%edi)
c01023af:	83 c7 08             	add    $0x8,%edi
c01023b2:	89 77 fc             	mov    %esi,-0x4(%edi)
c01023b5:	83 f8 07             	cmp    $0x7,%eax
c01023b8:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c01023be:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c01023c4:	7e 32                	jle    c01023f8 <_svfprintf_r+0xa68>
c01023c6:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c01023cc:	89 44 24 08          	mov    %eax,0x8(%esp)
c01023d0:	8b 45 0c             	mov    0xc(%ebp),%eax
c01023d3:	89 44 24 04          	mov    %eax,0x4(%esp)
c01023d7:	8b 45 08             	mov    0x8(%ebp),%eax
c01023da:	89 04 24             	mov    %eax,(%esp)
c01023dd:	e8 be 40 00 00       	call   c01064a0 <__ssprint_r>
c01023e2:	85 c0                	test   %eax,%eax
c01023e4:	0f 85 76 f7 ff ff    	jne    c0101b60 <_svfprintf_r+0x1d0>
c01023ea:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c01023f0:	8d 7d a8             	lea    -0x58(%ebp),%edi
c01023f3:	90                   	nop
c01023f4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c01023f8:	f7 85 4c ff ff ff 00 	testl  $0x100,-0xb4(%ebp)
c01023ff:	01 00 00 
c0102402:	0f 85 50 01 00 00    	jne    c0102558 <_svfprintf_r+0xbc8>
c0102408:	8b 85 28 ff ff ff    	mov    -0xd8(%ebp),%eax
c010240e:	89 07                	mov    %eax,(%edi)
c0102410:	8b 85 38 ff ff ff    	mov    -0xc8(%ebp),%eax
c0102416:	01 c1                	add    %eax,%ecx
c0102418:	89 47 04             	mov    %eax,0x4(%edi)
c010241b:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0102421:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0102427:	83 c0 01             	add    $0x1,%eax
c010242a:	83 f8 07             	cmp    $0x7,%eax
c010242d:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0102433:	0f 8f 6a 04 00 00    	jg     c01028a3 <_svfprintf_r+0xf13>
c0102439:	83 c7 08             	add    $0x8,%edi
c010243c:	f6 85 4c ff ff ff 04 	testb  $0x4,-0xb4(%ebp)
c0102443:	0f 84 d7 00 00 00    	je     c0102520 <_svfprintf_r+0xb90>
c0102449:	8b b5 40 ff ff ff    	mov    -0xc0(%ebp),%esi
c010244f:	2b b5 48 ff ff ff    	sub    -0xb8(%ebp),%esi
c0102455:	85 f6                	test   %esi,%esi
c0102457:	0f 8e c3 00 00 00    	jle    c0102520 <_svfprintf_r+0xb90>
c010245d:	83 fe 10             	cmp    $0x10,%esi
c0102460:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0102466:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c010246c:	7f 0a                	jg     c0102478 <_svfprintf_r+0xae8>
c010246e:	eb 64                	jmp    c01024d4 <_svfprintf_r+0xb44>
c0102470:	83 ee 10             	sub    $0x10,%esi
c0102473:	83 fe 10             	cmp    $0x10,%esi
c0102476:	7e 5c                	jle    c01024d4 <_svfprintf_r+0xb44>
c0102478:	83 c0 01             	add    $0x1,%eax
c010247b:	83 c1 10             	add    $0x10,%ecx
c010247e:	c7 07 b0 88 10 c0    	movl   $0xc01088b0,(%edi)
c0102484:	83 c7 08             	add    $0x8,%edi
c0102487:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c010248e:	83 f8 07             	cmp    $0x7,%eax
c0102491:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0102497:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c010249d:	7e d1                	jle    c0102470 <_svfprintf_r+0xae0>
c010249f:	8b 45 0c             	mov    0xc(%ebp),%eax
c01024a2:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c01024a6:	89 44 24 04          	mov    %eax,0x4(%esp)
c01024aa:	8b 45 08             	mov    0x8(%ebp),%eax
c01024ad:	89 04 24             	mov    %eax,(%esp)
c01024b0:	e8 eb 3f 00 00       	call   c01064a0 <__ssprint_r>
c01024b5:	85 c0                	test   %eax,%eax
c01024b7:	0f 85 a3 f6 ff ff    	jne    c0101b60 <_svfprintf_r+0x1d0>
c01024bd:	83 ee 10             	sub    $0x10,%esi
c01024c0:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c01024c6:	83 fe 10             	cmp    $0x10,%esi
c01024c9:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c01024cf:	8d 7d a8             	lea    -0x58(%ebp),%edi
c01024d2:	7f a4                	jg     c0102478 <_svfprintf_r+0xae8>
c01024d4:	83 c0 01             	add    $0x1,%eax
c01024d7:	01 f1                	add    %esi,%ecx
c01024d9:	83 f8 07             	cmp    $0x7,%eax
c01024dc:	c7 07 b0 88 10 c0    	movl   $0xc01088b0,(%edi)
c01024e2:	89 77 04             	mov    %esi,0x4(%edi)
c01024e5:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c01024eb:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c01024f1:	7e 2d                	jle    c0102520 <_svfprintf_r+0xb90>
c01024f3:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c01024f9:	89 44 24 08          	mov    %eax,0x8(%esp)
c01024fd:	8b 45 0c             	mov    0xc(%ebp),%eax
c0102500:	89 44 24 04          	mov    %eax,0x4(%esp)
c0102504:	8b 45 08             	mov    0x8(%ebp),%eax
c0102507:	89 04 24             	mov    %eax,(%esp)
c010250a:	e8 91 3f 00 00       	call   c01064a0 <__ssprint_r>
c010250f:	85 c0                	test   %eax,%eax
c0102511:	0f 85 49 f6 ff ff    	jne    c0101b60 <_svfprintf_r+0x1d0>
c0102517:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c010251d:	8d 76 00             	lea    0x0(%esi),%esi
c0102520:	8b 85 40 ff ff ff    	mov    -0xc0(%ebp),%eax
c0102526:	8b 95 48 ff ff ff    	mov    -0xb8(%ebp),%edx
c010252c:	39 c2                	cmp    %eax,%edx
c010252e:	0f 4d c2             	cmovge %edx,%eax
c0102531:	01 85 34 ff ff ff    	add    %eax,-0xcc(%ebp)
c0102537:	85 c9                	test   %ecx,%ecx
c0102539:	0f 85 99 03 00 00    	jne    c01028d8 <_svfprintf_r+0xf48>
c010253f:	c7 85 78 ff ff ff 00 	movl   $0x0,-0x88(%ebp)
c0102546:	00 00 00 
c0102549:	8d 7d a8             	lea    -0x58(%ebp),%edi
c010254c:	e9 da f4 ff ff       	jmp    c0101a2b <_svfprintf_r+0x9b>
c0102551:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0102558:	83 bd 24 ff ff ff 65 	cmpl   $0x65,-0xdc(%ebp)
c010255f:	0f 8e 5b 02 00 00    	jle    c01027c0 <_svfprintf_r+0xe30>
c0102565:	90                   	nop
c0102566:	90                   	nop
c0102567:	90                   	nop
c0102568:	90                   	nop
c0102569:	90                   	nop
c010256a:	90                   	nop
c010256b:	90                   	nop
c010256c:	90                   	nop
c010256d:	90                   	nop
c010256e:	90                   	nop
c010256f:	90                   	nop
c0102570:	90                   	nop
c0102571:	0f 8a 59 04 00 00    	jp     c01029d0 <_svfprintf_r+0x1040>
c0102577:	0f 85 53 04 00 00    	jne    c01029d0 <_svfprintf_r+0x1040>
c010257d:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0102583:	83 c1 01             	add    $0x1,%ecx
c0102586:	83 c7 08             	add    $0x8,%edi
c0102589:	c7 47 f8 0a 84 10 c0 	movl   $0xc010840a,-0x8(%edi)
c0102590:	c7 47 fc 01 00 00 00 	movl   $0x1,-0x4(%edi)
c0102597:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c010259d:	83 c0 01             	add    $0x1,%eax
c01025a0:	83 f8 07             	cmp    $0x7,%eax
c01025a3:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c01025a9:	0f 8f 63 09 00 00    	jg     c0102f12 <_svfprintf_r+0x1582>
c01025af:	8b 85 1c ff ff ff    	mov    -0xe4(%ebp),%eax
c01025b5:	39 85 5c ff ff ff    	cmp    %eax,-0xa4(%ebp)
c01025bb:	7c 0d                	jl     c01025ca <_svfprintf_r+0xc3a>
c01025bd:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c01025c4:	0f 84 72 fe ff ff    	je     c010243c <_svfprintf_r+0xaac>
c01025ca:	8b 85 0c ff ff ff    	mov    -0xf4(%ebp),%eax
c01025d0:	83 c7 08             	add    $0x8,%edi
c01025d3:	89 47 f8             	mov    %eax,-0x8(%edi)
c01025d6:	8b 85 08 ff ff ff    	mov    -0xf8(%ebp),%eax
c01025dc:	89 47 fc             	mov    %eax,-0x4(%edi)
c01025df:	01 c1                	add    %eax,%ecx
c01025e1:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c01025e7:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c01025ed:	83 c0 01             	add    $0x1,%eax
c01025f0:	83 f8 07             	cmp    $0x7,%eax
c01025f3:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c01025f9:	0f 8f dc 0b 00 00    	jg     c01031db <_svfprintf_r+0x184b>
c01025ff:	8b 85 1c ff ff ff    	mov    -0xe4(%ebp),%eax
c0102605:	8d 70 ff             	lea    -0x1(%eax),%esi
c0102608:	85 f6                	test   %esi,%esi
c010260a:	0f 8e 2c fe ff ff    	jle    c010243c <_svfprintf_r+0xaac>
c0102610:	83 fe 10             	cmp    $0x10,%esi
c0102613:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0102619:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c010261f:	7f 13                	jg     c0102634 <_svfprintf_r+0xca4>
c0102621:	e9 e6 05 00 00       	jmp    c0102c0c <_svfprintf_r+0x127c>
c0102626:	66 90                	xchg   %ax,%ax
c0102628:	83 ee 10             	sub    $0x10,%esi
c010262b:	83 fe 10             	cmp    $0x10,%esi
c010262e:	0f 8e d8 05 00 00    	jle    c0102c0c <_svfprintf_r+0x127c>
c0102634:	83 c0 01             	add    $0x1,%eax
c0102637:	83 c1 10             	add    $0x10,%ecx
c010263a:	c7 07 a0 88 10 c0    	movl   $0xc01088a0,(%edi)
c0102640:	83 c7 08             	add    $0x8,%edi
c0102643:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c010264a:	83 f8 07             	cmp    $0x7,%eax
c010264d:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0102653:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0102659:	7e cd                	jle    c0102628 <_svfprintf_r+0xc98>
c010265b:	8b 45 0c             	mov    0xc(%ebp),%eax
c010265e:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0102662:	89 44 24 04          	mov    %eax,0x4(%esp)
c0102666:	8b 45 08             	mov    0x8(%ebp),%eax
c0102669:	89 04 24             	mov    %eax,(%esp)
c010266c:	e8 2f 3e 00 00       	call   c01064a0 <__ssprint_r>
c0102671:	85 c0                	test   %eax,%eax
c0102673:	0f 85 e7 f4 ff ff    	jne    c0101b60 <_svfprintf_r+0x1d0>
c0102679:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c010267f:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0102682:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0102688:	eb 9e                	jmp    c0102628 <_svfprintf_r+0xc98>
c010268a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0102690:	84 c0                	test   %al,%al
c0102692:	75 2c                	jne    c01026c0 <_svfprintf_r+0xd30>
c0102694:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c010269b:	74 23                	je     c01026c0 <_svfprintf_r+0xd30>
c010269d:	8b 85 00 ff ff ff    	mov    -0x100(%ebp),%eax
c01026a3:	c6 45 a7 30          	movb   $0x30,-0x59(%ebp)
c01026a7:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c01026ad:	8d 45 a7             	lea    -0x59(%ebp),%eax
c01026b0:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c01026b6:	e9 2d f7 ff ff       	jmp    c0101de8 <_svfprintf_r+0x458>
c01026bb:	90                   	nop
c01026bc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c01026c0:	8d 45 a8             	lea    -0x58(%ebp),%eax
c01026c3:	c7 85 38 ff ff ff 00 	movl   $0x0,-0xc8(%ebp)
c01026ca:	00 00 00 
c01026cd:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c01026d3:	e9 10 f7 ff ff       	jmp    c0101de8 <_svfprintf_r+0x458>
c01026d8:	8b b5 40 ff ff ff    	mov    -0xc0(%ebp),%esi
c01026de:	2b b5 48 ff ff ff    	sub    -0xb8(%ebp),%esi
c01026e4:	85 f6                	test   %esi,%esi
c01026e6:	0f 8e 26 fc ff ff    	jle    c0102312 <_svfprintf_r+0x982>
c01026ec:	83 fe 10             	cmp    $0x10,%esi
c01026ef:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c01026f5:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c01026fb:	7f 0b                	jg     c0102708 <_svfprintf_r+0xd78>
c01026fd:	eb 65                	jmp    c0102764 <_svfprintf_r+0xdd4>
c01026ff:	90                   	nop
c0102700:	83 ee 10             	sub    $0x10,%esi
c0102703:	83 fe 10             	cmp    $0x10,%esi
c0102706:	7e 5c                	jle    c0102764 <_svfprintf_r+0xdd4>
c0102708:	83 c0 01             	add    $0x1,%eax
c010270b:	83 c1 10             	add    $0x10,%ecx
c010270e:	c7 07 a0 88 10 c0    	movl   $0xc01088a0,(%edi)
c0102714:	83 c7 08             	add    $0x8,%edi
c0102717:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c010271e:	83 f8 07             	cmp    $0x7,%eax
c0102721:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0102727:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c010272d:	7e d1                	jle    c0102700 <_svfprintf_r+0xd70>
c010272f:	8b 45 0c             	mov    0xc(%ebp),%eax
c0102732:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0102736:	89 44 24 04          	mov    %eax,0x4(%esp)
c010273a:	8b 45 08             	mov    0x8(%ebp),%eax
c010273d:	89 04 24             	mov    %eax,(%esp)
c0102740:	e8 5b 3d 00 00       	call   c01064a0 <__ssprint_r>
c0102745:	85 c0                	test   %eax,%eax
c0102747:	0f 85 13 f4 ff ff    	jne    c0101b60 <_svfprintf_r+0x1d0>
c010274d:	83 ee 10             	sub    $0x10,%esi
c0102750:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0102756:	83 fe 10             	cmp    $0x10,%esi
c0102759:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c010275f:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0102762:	7f a4                	jg     c0102708 <_svfprintf_r+0xd78>
c0102764:	83 c0 01             	add    $0x1,%eax
c0102767:	01 f1                	add    %esi,%ecx
c0102769:	c7 07 a0 88 10 c0    	movl   $0xc01088a0,(%edi)
c010276f:	83 c7 08             	add    $0x8,%edi
c0102772:	89 77 fc             	mov    %esi,-0x4(%edi)
c0102775:	83 f8 07             	cmp    $0x7,%eax
c0102778:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c010277e:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0102784:	0f 8e 88 fb ff ff    	jle    c0102312 <_svfprintf_r+0x982>
c010278a:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0102790:	89 44 24 08          	mov    %eax,0x8(%esp)
c0102794:	8b 45 0c             	mov    0xc(%ebp),%eax
c0102797:	89 44 24 04          	mov    %eax,0x4(%esp)
c010279b:	8b 45 08             	mov    0x8(%ebp),%eax
c010279e:	89 04 24             	mov    %eax,(%esp)
c01027a1:	e8 fa 3c 00 00       	call   c01064a0 <__ssprint_r>
c01027a6:	85 c0                	test   %eax,%eax
c01027a8:	0f 85 b2 f3 ff ff    	jne    c0101b60 <_svfprintf_r+0x1d0>
c01027ae:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c01027b4:	8d 7d a8             	lea    -0x58(%ebp),%edi
c01027b7:	e9 56 fb ff ff       	jmp    c0102312 <_svfprintf_r+0x982>
c01027bc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c01027c0:	83 bd 1c ff ff ff 01 	cmpl   $0x1,-0xe4(%ebp)
c01027c7:	8b 85 28 ff ff ff    	mov    -0xd8(%ebp),%eax
c01027cd:	0f 8e df 05 00 00    	jle    c0102db2 <_svfprintf_r+0x1422>
c01027d3:	89 07                	mov    %eax,(%edi)
c01027d5:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c01027db:	8d 51 01             	lea    0x1(%ecx),%edx
c01027de:	c7 47 04 01 00 00 00 	movl   $0x1,0x4(%edi)
c01027e5:	83 c7 08             	add    $0x8,%edi
c01027e8:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c01027ee:	83 c0 01             	add    $0x1,%eax
c01027f1:	83 f8 07             	cmp    $0x7,%eax
c01027f4:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c01027fa:	0f 8f 59 06 00 00    	jg     c0102e59 <_svfprintf_r+0x14c9>
c0102800:	8b 9d 0c ff ff ff    	mov    -0xf4(%ebp),%ebx
c0102806:	83 c0 01             	add    $0x1,%eax
c0102809:	83 c7 08             	add    $0x8,%edi
c010280c:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0102812:	89 5f f8             	mov    %ebx,-0x8(%edi)
c0102815:	8b 9d 08 ff ff ff    	mov    -0xf8(%ebp),%ebx
c010281b:	89 5f fc             	mov    %ebx,-0x4(%edi)
c010281e:	01 da                	add    %ebx,%edx
c0102820:	83 f8 07             	cmp    $0x7,%eax
c0102823:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0102829:	0f 8f f2 05 00 00    	jg     c0102e21 <_svfprintf_r+0x1491>
c010282f:	90                   	nop
c0102830:	90                   	nop
c0102831:	dd 85 10 ff ff ff    	fldl   -0xf0(%ebp)
c0102837:	df e9                	fucomip %st(1),%st
c0102839:	dd d8                	fstp   %st(0)
c010283b:	7a 06                	jp     c0102843 <_svfprintf_r+0xeb3>
c010283d:	0f 84 33 03 00 00    	je     c0102b76 <_svfprintf_r+0x11e6>
c0102843:	8b 8d 28 ff ff ff    	mov    -0xd8(%ebp),%ecx
c0102849:	8b 9d 1c ff ff ff    	mov    -0xe4(%ebp),%ebx
c010284f:	83 c1 01             	add    $0x1,%ecx
c0102852:	89 0f                	mov    %ecx,(%edi)
c0102854:	8d 4b ff             	lea    -0x1(%ebx),%ecx
c0102857:	89 4f 04             	mov    %ecx,0x4(%edi)
c010285a:	01 ca                	add    %ecx,%edx
c010285c:	83 c0 01             	add    $0x1,%eax
c010285f:	83 f8 07             	cmp    $0x7,%eax
c0102862:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0102868:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c010286e:	0f 8f 75 05 00 00    	jg     c0102de9 <_svfprintf_r+0x1459>
c0102874:	83 c7 08             	add    $0x8,%edi
c0102877:	8b 9d 04 ff ff ff    	mov    -0xfc(%ebp),%ebx
c010287d:	8d 8d 65 ff ff ff    	lea    -0x9b(%ebp),%ecx
c0102883:	89 0f                	mov    %ecx,(%edi)
c0102885:	89 5f 04             	mov    %ebx,0x4(%edi)
c0102888:	8d 0c 1a             	lea    (%edx,%ebx,1),%ecx
c010288b:	83 c0 01             	add    $0x1,%eax
c010288e:	83 f8 07             	cmp    $0x7,%eax
c0102891:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0102897:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c010289d:	0f 8e 96 fb ff ff    	jle    c0102439 <_svfprintf_r+0xaa9>
c01028a3:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c01028a9:	89 44 24 08          	mov    %eax,0x8(%esp)
c01028ad:	8b 45 0c             	mov    0xc(%ebp),%eax
c01028b0:	89 44 24 04          	mov    %eax,0x4(%esp)
c01028b4:	8b 45 08             	mov    0x8(%ebp),%eax
c01028b7:	89 04 24             	mov    %eax,(%esp)
c01028ba:	e8 e1 3b 00 00       	call   c01064a0 <__ssprint_r>
c01028bf:	85 c0                	test   %eax,%eax
c01028c1:	0f 85 99 f2 ff ff    	jne    c0101b60 <_svfprintf_r+0x1d0>
c01028c7:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c01028cd:	8d 7d a8             	lea    -0x58(%ebp),%edi
c01028d0:	e9 67 fb ff ff       	jmp    c010243c <_svfprintf_r+0xaac>
c01028d5:	8d 76 00             	lea    0x0(%esi),%esi
c01028d8:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c01028de:	89 44 24 08          	mov    %eax,0x8(%esp)
c01028e2:	8b 45 0c             	mov    0xc(%ebp),%eax
c01028e5:	89 44 24 04          	mov    %eax,0x4(%esp)
c01028e9:	8b 45 08             	mov    0x8(%ebp),%eax
c01028ec:	89 04 24             	mov    %eax,(%esp)
c01028ef:	e8 ac 3b 00 00       	call   c01064a0 <__ssprint_r>
c01028f4:	85 c0                	test   %eax,%eax
c01028f6:	0f 84 43 fc ff ff    	je     c010253f <_svfprintf_r+0xbaf>
c01028fc:	e9 5f f2 ff ff       	jmp    c0101b60 <_svfprintf_r+0x1d0>
c0102901:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0102908:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c010290e:	89 44 24 08          	mov    %eax,0x8(%esp)
c0102912:	8b 45 0c             	mov    0xc(%ebp),%eax
c0102915:	89 44 24 04          	mov    %eax,0x4(%esp)
c0102919:	8b 45 08             	mov    0x8(%ebp),%eax
c010291c:	89 04 24             	mov    %eax,(%esp)
c010291f:	e8 7c 3b 00 00       	call   c01064a0 <__ssprint_r>
c0102924:	85 c0                	test   %eax,%eax
c0102926:	0f 85 34 f2 ff ff    	jne    c0101b60 <_svfprintf_r+0x1d0>
c010292c:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0102932:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0102935:	e9 c8 f9 ff ff       	jmp    c0102302 <_svfprintf_r+0x972>
c010293a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0102940:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0102946:	89 44 24 08          	mov    %eax,0x8(%esp)
c010294a:	8b 45 0c             	mov    0xc(%ebp),%eax
c010294d:	89 44 24 04          	mov    %eax,0x4(%esp)
c0102951:	8b 45 08             	mov    0x8(%ebp),%eax
c0102954:	89 04 24             	mov    %eax,(%esp)
c0102957:	e8 44 3b 00 00       	call   c01064a0 <__ssprint_r>
c010295c:	85 c0                	test   %eax,%eax
c010295e:	0f 85 fc f1 ff ff    	jne    c0101b60 <_svfprintf_r+0x1d0>
c0102964:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c010296a:	8d 7d a8             	lea    -0x58(%ebp),%edi
c010296d:	e9 53 f9 ff ff       	jmp    c01022c5 <_svfprintf_r+0x935>
c0102972:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0102978:	89 c2                	mov    %eax,%edx
c010297a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0102980:	89 c8                	mov    %ecx,%eax
c0102982:	83 ea 01             	sub    $0x1,%edx
c0102985:	83 e0 07             	and    $0x7,%eax
c0102988:	c1 e9 03             	shr    $0x3,%ecx
c010298b:	83 c0 30             	add    $0x30,%eax
c010298e:	85 c9                	test   %ecx,%ecx
c0102990:	88 02                	mov    %al,(%edx)
c0102992:	75 ec                	jne    c0102980 <_svfprintf_r+0xff0>
c0102994:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c010299b:	89 95 28 ff ff ff    	mov    %edx,-0xd8(%ebp)
c01029a1:	0f 84 5b 01 00 00    	je     c0102b02 <_svfprintf_r+0x1172>
c01029a7:	3c 30                	cmp    $0x30,%al
c01029a9:	74 0b                	je     c01029b6 <_svfprintf_r+0x1026>
c01029ab:	83 ad 28 ff ff ff 01 	subl   $0x1,-0xd8(%ebp)
c01029b2:	c6 42 ff 30          	movb   $0x30,-0x1(%edx)
c01029b6:	8d 45 a8             	lea    -0x58(%ebp),%eax
c01029b9:	2b 85 28 ff ff ff    	sub    -0xd8(%ebp),%eax
c01029bf:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c01029c5:	e9 1e f4 ff ff       	jmp    c0101de8 <_svfprintf_r+0x458>
c01029ca:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c01029d0:	8b 9d 5c ff ff ff    	mov    -0xa4(%ebp),%ebx
c01029d6:	85 db                	test   %ebx,%ebx
c01029d8:	0f 8e 66 05 00 00    	jle    c0102f44 <_svfprintf_r+0x15b4>
c01029de:	8b 95 28 ff ff ff    	mov    -0xd8(%ebp),%edx
c01029e4:	8b 85 1c ff ff ff    	mov    -0xe4(%ebp),%eax
c01029ea:	01 d0                	add    %edx,%eax
c01029ec:	89 c3                	mov    %eax,%ebx
c01029ee:	29 d3                	sub    %edx,%ebx
c01029f0:	89 85 44 ff ff ff    	mov    %eax,-0xbc(%ebp)
c01029f6:	89 d0                	mov    %edx,%eax
c01029f8:	8b 95 20 ff ff ff    	mov    -0xe0(%ebp),%edx
c01029fe:	39 d3                	cmp    %edx,%ebx
c0102a00:	0f 4f da             	cmovg  %edx,%ebx
c0102a03:	85 db                	test   %ebx,%ebx
c0102a05:	7e 28                	jle    c0102a2f <_svfprintf_r+0x109f>
c0102a07:	89 07                	mov    %eax,(%edi)
c0102a09:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0102a0f:	01 d9                	add    %ebx,%ecx
c0102a11:	89 5f 04             	mov    %ebx,0x4(%edi)
c0102a14:	83 c7 08             	add    $0x8,%edi
c0102a17:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0102a1d:	83 c0 01             	add    $0x1,%eax
c0102a20:	83 f8 07             	cmp    $0x7,%eax
c0102a23:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0102a29:	0f 8f 58 09 00 00    	jg     c0103387 <_svfprintf_r+0x19f7>
c0102a2f:	8b b5 20 ff ff ff    	mov    -0xe0(%ebp),%esi
c0102a35:	31 c0                	xor    %eax,%eax
c0102a37:	85 db                	test   %ebx,%ebx
c0102a39:	0f 49 c3             	cmovns %ebx,%eax
c0102a3c:	29 c6                	sub    %eax,%esi
c0102a3e:	85 f6                	test   %esi,%esi
c0102a40:	0f 8e 40 02 00 00    	jle    c0102c86 <_svfprintf_r+0x12f6>
c0102a46:	83 fe 10             	cmp    $0x10,%esi
c0102a49:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0102a4f:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c0102a55:	7f 15                	jg     c0102a6c <_svfprintf_r+0x10dc>
c0102a57:	e9 db 01 00 00       	jmp    c0102c37 <_svfprintf_r+0x12a7>
c0102a5c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0102a60:	83 ee 10             	sub    $0x10,%esi
c0102a63:	83 fe 10             	cmp    $0x10,%esi
c0102a66:	0f 8e cb 01 00 00    	jle    c0102c37 <_svfprintf_r+0x12a7>
c0102a6c:	83 c0 01             	add    $0x1,%eax
c0102a6f:	83 c1 10             	add    $0x10,%ecx
c0102a72:	c7 07 a0 88 10 c0    	movl   $0xc01088a0,(%edi)
c0102a78:	83 c7 08             	add    $0x8,%edi
c0102a7b:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c0102a82:	83 f8 07             	cmp    $0x7,%eax
c0102a85:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0102a8b:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0102a91:	7e cd                	jle    c0102a60 <_svfprintf_r+0x10d0>
c0102a93:	8b 45 0c             	mov    0xc(%ebp),%eax
c0102a96:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0102a9a:	89 44 24 04          	mov    %eax,0x4(%esp)
c0102a9e:	8b 45 08             	mov    0x8(%ebp),%eax
c0102aa1:	89 04 24             	mov    %eax,(%esp)
c0102aa4:	e8 f7 39 00 00       	call   c01064a0 <__ssprint_r>
c0102aa9:	85 c0                	test   %eax,%eax
c0102aab:	0f 85 af f0 ff ff    	jne    c0101b60 <_svfprintf_r+0x1d0>
c0102ab1:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0102ab7:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0102aba:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0102ac0:	eb 9e                	jmp    c0102a60 <_svfprintf_r+0x10d0>
c0102ac2:	8d 45 a8             	lea    -0x58(%ebp),%eax
c0102ac5:	be cd cc cc cc       	mov    $0xcccccccd,%esi
c0102aca:	89 bd 48 ff ff ff    	mov    %edi,-0xb8(%ebp)
c0102ad0:	89 c7                	mov    %eax,%edi
c0102ad2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0102ad8:	89 c8                	mov    %ecx,%eax
c0102ada:	83 ef 01             	sub    $0x1,%edi
c0102add:	f7 e6                	mul    %esi
c0102adf:	c1 ea 03             	shr    $0x3,%edx
c0102ae2:	8d 04 92             	lea    (%edx,%edx,4),%eax
c0102ae5:	01 c0                	add    %eax,%eax
c0102ae7:	29 c1                	sub    %eax,%ecx
c0102ae9:	83 c1 30             	add    $0x30,%ecx
c0102aec:	85 d2                	test   %edx,%edx
c0102aee:	88 0f                	mov    %cl,(%edi)
c0102af0:	89 d1                	mov    %edx,%ecx
c0102af2:	75 e4                	jne    c0102ad8 <_svfprintf_r+0x1148>
c0102af4:	89 fa                	mov    %edi,%edx
c0102af6:	89 bd 28 ff ff ff    	mov    %edi,-0xd8(%ebp)
c0102afc:	8b bd 48 ff ff ff    	mov    -0xb8(%ebp),%edi
c0102b02:	8d 45 a8             	lea    -0x58(%ebp),%eax
c0102b05:	29 d0                	sub    %edx,%eax
c0102b07:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c0102b0d:	e9 d6 f2 ff ff       	jmp    c0101de8 <_svfprintf_r+0x458>
c0102b12:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0102b18:	83 f9 09             	cmp    $0x9,%ecx
c0102b1b:	77 a5                	ja     c0102ac2 <_svfprintf_r+0x1132>
c0102b1d:	8b 85 00 ff ff ff    	mov    -0x100(%ebp),%eax
c0102b23:	83 c1 30             	add    $0x30,%ecx
c0102b26:	88 4d a7             	mov    %cl,-0x59(%ebp)
c0102b29:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c0102b2f:	8d 45 a7             	lea    -0x59(%ebp),%eax
c0102b32:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c0102b38:	e9 ab f2 ff ff       	jmp    c0101de8 <_svfprintf_r+0x458>
c0102b3d:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0102b43:	89 44 24 08          	mov    %eax,0x8(%esp)
c0102b47:	8b 45 0c             	mov    0xc(%ebp),%eax
c0102b4a:	89 44 24 04          	mov    %eax,0x4(%esp)
c0102b4e:	8b 45 08             	mov    0x8(%ebp),%eax
c0102b51:	89 04 24             	mov    %eax,(%esp)
c0102b54:	e8 47 39 00 00       	call   c01064a0 <__ssprint_r>
c0102b59:	85 c0                	test   %eax,%eax
c0102b5b:	0f 85 ff ef ff ff    	jne    c0101b60 <_svfprintf_r+0x1d0>
c0102b61:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c0102b68:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0102b6b:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0102b71:	e9 18 f7 ff ff       	jmp    c010228e <_svfprintf_r+0x8fe>
c0102b76:	8b 9d 1c ff ff ff    	mov    -0xe4(%ebp),%ebx
c0102b7c:	8d 73 ff             	lea    -0x1(%ebx),%esi
c0102b7f:	85 f6                	test   %esi,%esi
c0102b81:	0f 8e f0 fc ff ff    	jle    c0102877 <_svfprintf_r+0xee7>
c0102b87:	83 fe 10             	cmp    $0x10,%esi
c0102b8a:	7e 70                	jle    c0102bfc <_svfprintf_r+0x126c>
c0102b8c:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c0102b92:	eb 0c                	jmp    c0102ba0 <_svfprintf_r+0x1210>
c0102b94:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0102b98:	83 ee 10             	sub    $0x10,%esi
c0102b9b:	83 fe 10             	cmp    $0x10,%esi
c0102b9e:	7e 5c                	jle    c0102bfc <_svfprintf_r+0x126c>
c0102ba0:	83 c0 01             	add    $0x1,%eax
c0102ba3:	83 c2 10             	add    $0x10,%edx
c0102ba6:	c7 07 a0 88 10 c0    	movl   $0xc01088a0,(%edi)
c0102bac:	83 c7 08             	add    $0x8,%edi
c0102baf:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c0102bb6:	83 f8 07             	cmp    $0x7,%eax
c0102bb9:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0102bbf:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0102bc5:	7e d1                	jle    c0102b98 <_svfprintf_r+0x1208>
c0102bc7:	8b 45 0c             	mov    0xc(%ebp),%eax
c0102bca:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0102bce:	89 44 24 04          	mov    %eax,0x4(%esp)
c0102bd2:	8b 45 08             	mov    0x8(%ebp),%eax
c0102bd5:	89 04 24             	mov    %eax,(%esp)
c0102bd8:	e8 c3 38 00 00       	call   c01064a0 <__ssprint_r>
c0102bdd:	85 c0                	test   %eax,%eax
c0102bdf:	0f 85 7b ef ff ff    	jne    c0101b60 <_svfprintf_r+0x1d0>
c0102be5:	83 ee 10             	sub    $0x10,%esi
c0102be8:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0102bee:	83 fe 10             	cmp    $0x10,%esi
c0102bf1:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0102bf7:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0102bfa:	7f a4                	jg     c0102ba0 <_svfprintf_r+0x1210>
c0102bfc:	c7 07 a0 88 10 c0    	movl   $0xc01088a0,(%edi)
c0102c02:	01 f2                	add    %esi,%edx
c0102c04:	89 77 04             	mov    %esi,0x4(%edi)
c0102c07:	e9 50 fc ff ff       	jmp    c010285c <_svfprintf_r+0xecc>
c0102c0c:	c7 07 a0 88 10 c0    	movl   $0xc01088a0,(%edi)
c0102c12:	01 f1                	add    %esi,%ecx
c0102c14:	89 77 04             	mov    %esi,0x4(%edi)
c0102c17:	e9 6f fc ff ff       	jmp    c010288b <_svfprintf_r+0xefb>
c0102c1c:	8b 45 14             	mov    0x14(%ebp),%eax
c0102c1f:	8b 95 34 ff ff ff    	mov    -0xcc(%ebp),%edx
c0102c25:	8b 00                	mov    (%eax),%eax
c0102c27:	89 10                	mov    %edx,(%eax)
c0102c29:	8b 45 14             	mov    0x14(%ebp),%eax
c0102c2c:	83 c0 04             	add    $0x4,%eax
c0102c2f:	89 45 14             	mov    %eax,0x14(%ebp)
c0102c32:	e9 f4 ed ff ff       	jmp    c0101a2b <_svfprintf_r+0x9b>
c0102c37:	83 c0 01             	add    $0x1,%eax
c0102c3a:	01 f1                	add    %esi,%ecx
c0102c3c:	c7 07 a0 88 10 c0    	movl   $0xc01088a0,(%edi)
c0102c42:	83 c7 08             	add    $0x8,%edi
c0102c45:	89 77 fc             	mov    %esi,-0x4(%edi)
c0102c48:	83 f8 07             	cmp    $0x7,%eax
c0102c4b:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0102c51:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0102c57:	7e 2d                	jle    c0102c86 <_svfprintf_r+0x12f6>
c0102c59:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0102c5f:	89 44 24 08          	mov    %eax,0x8(%esp)
c0102c63:	8b 45 0c             	mov    0xc(%ebp),%eax
c0102c66:	89 44 24 04          	mov    %eax,0x4(%esp)
c0102c6a:	8b 45 08             	mov    0x8(%ebp),%eax
c0102c6d:	89 04 24             	mov    %eax,(%esp)
c0102c70:	e8 2b 38 00 00       	call   c01064a0 <__ssprint_r>
c0102c75:	85 c0                	test   %eax,%eax
c0102c77:	0f 85 e3 ee ff ff    	jne    c0101b60 <_svfprintf_r+0x1d0>
c0102c7d:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0102c83:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0102c86:	8b 85 28 ff ff ff    	mov    -0xd8(%ebp),%eax
c0102c8c:	8b 95 5c ff ff ff    	mov    -0xa4(%ebp),%edx
c0102c92:	03 85 20 ff ff ff    	add    -0xe0(%ebp),%eax
c0102c98:	3b 95 1c ff ff ff    	cmp    -0xe4(%ebp),%edx
c0102c9e:	89 c6                	mov    %eax,%esi
c0102ca0:	7c 0d                	jl     c0102caf <_svfprintf_r+0x131f>
c0102ca2:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c0102ca9:	0f 84 5e 05 00 00    	je     c010320d <_svfprintf_r+0x187d>
c0102caf:	8b 85 0c ff ff ff    	mov    -0xf4(%ebp),%eax
c0102cb5:	89 07                	mov    %eax,(%edi)
c0102cb7:	8b 85 08 ff ff ff    	mov    -0xf8(%ebp),%eax
c0102cbd:	01 c1                	add    %eax,%ecx
c0102cbf:	89 47 04             	mov    %eax,0x4(%edi)
c0102cc2:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0102cc8:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0102cce:	83 c0 01             	add    $0x1,%eax
c0102cd1:	83 f8 07             	cmp    $0x7,%eax
c0102cd4:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0102cda:	0f 8f d9 06 00 00    	jg     c01033b9 <_svfprintf_r+0x1a29>
c0102ce0:	83 c7 08             	add    $0x8,%edi
c0102ce3:	89 d0                	mov    %edx,%eax
c0102ce5:	8b 9d 44 ff ff ff    	mov    -0xbc(%ebp),%ebx
c0102ceb:	89 f2                	mov    %esi,%edx
c0102ced:	29 f3                	sub    %esi,%ebx
c0102cef:	8b b5 1c ff ff ff    	mov    -0xe4(%ebp),%esi
c0102cf5:	29 c6                	sub    %eax,%esi
c0102cf7:	39 de                	cmp    %ebx,%esi
c0102cf9:	0f 4e de             	cmovle %esi,%ebx
c0102cfc:	85 db                	test   %ebx,%ebx
c0102cfe:	7e 29                	jle    c0102d29 <_svfprintf_r+0x1399>
c0102d00:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0102d06:	01 d9                	add    %ebx,%ecx
c0102d08:	83 c7 08             	add    $0x8,%edi
c0102d0b:	89 57 f8             	mov    %edx,-0x8(%edi)
c0102d0e:	89 5f fc             	mov    %ebx,-0x4(%edi)
c0102d11:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0102d17:	83 c0 01             	add    $0x1,%eax
c0102d1a:	83 f8 07             	cmp    $0x7,%eax
c0102d1d:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0102d23:	0f 8f c8 06 00 00    	jg     c01033f1 <_svfprintf_r+0x1a61>
c0102d29:	31 c0                	xor    %eax,%eax
c0102d2b:	85 db                	test   %ebx,%ebx
c0102d2d:	0f 49 c3             	cmovns %ebx,%eax
c0102d30:	29 c6                	sub    %eax,%esi
c0102d32:	85 f6                	test   %esi,%esi
c0102d34:	0f 8e 02 f7 ff ff    	jle    c010243c <_svfprintf_r+0xaac>
c0102d3a:	83 fe 10             	cmp    $0x10,%esi
c0102d3d:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0102d43:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c0102d49:	7f 11                	jg     c0102d5c <_svfprintf_r+0x13cc>
c0102d4b:	e9 bc fe ff ff       	jmp    c0102c0c <_svfprintf_r+0x127c>
c0102d50:	83 ee 10             	sub    $0x10,%esi
c0102d53:	83 fe 10             	cmp    $0x10,%esi
c0102d56:	0f 8e b0 fe ff ff    	jle    c0102c0c <_svfprintf_r+0x127c>
c0102d5c:	83 c0 01             	add    $0x1,%eax
c0102d5f:	83 c1 10             	add    $0x10,%ecx
c0102d62:	c7 07 a0 88 10 c0    	movl   $0xc01088a0,(%edi)
c0102d68:	83 c7 08             	add    $0x8,%edi
c0102d6b:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c0102d72:	83 f8 07             	cmp    $0x7,%eax
c0102d75:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0102d7b:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0102d81:	7e cd                	jle    c0102d50 <_svfprintf_r+0x13c0>
c0102d83:	8b 45 0c             	mov    0xc(%ebp),%eax
c0102d86:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0102d8a:	89 44 24 04          	mov    %eax,0x4(%esp)
c0102d8e:	8b 45 08             	mov    0x8(%ebp),%eax
c0102d91:	89 04 24             	mov    %eax,(%esp)
c0102d94:	e8 07 37 00 00       	call   c01064a0 <__ssprint_r>
c0102d99:	85 c0                	test   %eax,%eax
c0102d9b:	0f 85 bf ed ff ff    	jne    c0101b60 <_svfprintf_r+0x1d0>
c0102da1:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0102da7:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0102daa:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0102db0:	eb 9e                	jmp    c0102d50 <_svfprintf_r+0x13c0>
c0102db2:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c0102db9:	0f 85 14 fa ff ff    	jne    c01027d3 <_svfprintf_r+0xe43>
c0102dbf:	89 07                	mov    %eax,(%edi)
c0102dc1:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0102dc7:	8d 51 01             	lea    0x1(%ecx),%edx
c0102dca:	c7 47 04 01 00 00 00 	movl   $0x1,0x4(%edi)
c0102dd1:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0102dd7:	83 c0 01             	add    $0x1,%eax
c0102dda:	83 f8 07             	cmp    $0x7,%eax
c0102ddd:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0102de3:	0f 8e 8b fa ff ff    	jle    c0102874 <_svfprintf_r+0xee4>
c0102de9:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0102def:	89 44 24 08          	mov    %eax,0x8(%esp)
c0102df3:	8b 45 0c             	mov    0xc(%ebp),%eax
c0102df6:	89 44 24 04          	mov    %eax,0x4(%esp)
c0102dfa:	8b 45 08             	mov    0x8(%ebp),%eax
c0102dfd:	89 04 24             	mov    %eax,(%esp)
c0102e00:	e8 9b 36 00 00       	call   c01064a0 <__ssprint_r>
c0102e05:	85 c0                	test   %eax,%eax
c0102e07:	0f 85 53 ed ff ff    	jne    c0101b60 <_svfprintf_r+0x1d0>
c0102e0d:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0102e13:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0102e16:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0102e1c:	e9 56 fa ff ff       	jmp    c0102877 <_svfprintf_r+0xee7>
c0102e21:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0102e27:	89 44 24 08          	mov    %eax,0x8(%esp)
c0102e2b:	8b 45 0c             	mov    0xc(%ebp),%eax
c0102e2e:	89 44 24 04          	mov    %eax,0x4(%esp)
c0102e32:	8b 45 08             	mov    0x8(%ebp),%eax
c0102e35:	89 04 24             	mov    %eax,(%esp)
c0102e38:	e8 63 36 00 00       	call   c01064a0 <__ssprint_r>
c0102e3d:	85 c0                	test   %eax,%eax
c0102e3f:	0f 85 1b ed ff ff    	jne    c0101b60 <_svfprintf_r+0x1d0>
c0102e45:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0102e4b:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0102e4e:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0102e54:	e9 d6 f9 ff ff       	jmp    c010282f <_svfprintf_r+0xe9f>
c0102e59:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0102e5f:	89 44 24 08          	mov    %eax,0x8(%esp)
c0102e63:	8b 45 0c             	mov    0xc(%ebp),%eax
c0102e66:	89 44 24 04          	mov    %eax,0x4(%esp)
c0102e6a:	8b 45 08             	mov    0x8(%ebp),%eax
c0102e6d:	89 04 24             	mov    %eax,(%esp)
c0102e70:	e8 2b 36 00 00       	call   c01064a0 <__ssprint_r>
c0102e75:	85 c0                	test   %eax,%eax
c0102e77:	0f 85 e3 ec ff ff    	jne    c0101b60 <_svfprintf_r+0x1d0>
c0102e7d:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0102e83:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0102e86:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0102e8c:	e9 6f f9 ff ff       	jmp    c0102800 <_svfprintf_r+0xe70>
c0102e91:	dd 85 10 ff ff ff    	fldl   -0xf0(%ebp)
c0102e97:	dd 1c 24             	fstpl  (%esp)
c0102e9a:	e8 11 35 00 00       	call   c01063b0 <__fpclassifyd>
c0102e9f:	85 c0                	test   %eax,%eax
c0102ea1:	0f 85 a3 01 00 00    	jne    c010304a <_svfprintf_r+0x16ba>
c0102ea7:	83 bd 24 ff ff ff 47 	cmpl   $0x47,-0xdc(%ebp)
c0102eae:	ba 0a 87 10 c0       	mov    $0xc010870a,%edx
c0102eb3:	b8 0e 87 10 c0       	mov    $0xc010870e,%eax
c0102eb8:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c0102ebf:	c7 85 48 ff ff ff 03 	movl   $0x3,-0xb8(%ebp)
c0102ec6:	00 00 00 
c0102ec9:	0f 4e c2             	cmovle %edx,%eax
c0102ecc:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c0102ed2:	81 a5 4c ff ff ff 7f 	andl   $0xffffff7f,-0xb4(%ebp)
c0102ed9:	ff ff ff 
c0102edc:	c7 85 38 ff ff ff 03 	movl   $0x3,-0xc8(%ebp)
c0102ee3:	00 00 00 
c0102ee6:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c0102eed:	00 00 00 
c0102ef0:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c0102ef7:	00 00 00 
c0102efa:	e9 29 ed ff ff       	jmp    c0101c28 <_svfprintf_r+0x298>
c0102eff:	dd 00                	fldl   (%eax)
c0102f01:	83 c0 08             	add    $0x8,%eax
c0102f04:	dd 9d 10 ff ff ff    	fstpl  -0xf0(%ebp)
c0102f0a:	89 45 14             	mov    %eax,0x14(%ebp)
c0102f0d:	e9 e6 ef ff ff       	jmp    c0101ef8 <_svfprintf_r+0x568>
c0102f12:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0102f18:	89 44 24 08          	mov    %eax,0x8(%esp)
c0102f1c:	8b 45 0c             	mov    0xc(%ebp),%eax
c0102f1f:	89 44 24 04          	mov    %eax,0x4(%esp)
c0102f23:	8b 45 08             	mov    0x8(%ebp),%eax
c0102f26:	89 04 24             	mov    %eax,(%esp)
c0102f29:	e8 72 35 00 00       	call   c01064a0 <__ssprint_r>
c0102f2e:	85 c0                	test   %eax,%eax
c0102f30:	0f 85 2a ec ff ff    	jne    c0101b60 <_svfprintf_r+0x1d0>
c0102f36:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0102f3c:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0102f3f:	e9 6b f6 ff ff       	jmp    c01025af <_svfprintf_r+0xc1f>
c0102f44:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0102f4a:	83 c1 01             	add    $0x1,%ecx
c0102f4d:	83 c7 08             	add    $0x8,%edi
c0102f50:	c7 47 f8 0a 84 10 c0 	movl   $0xc010840a,-0x8(%edi)
c0102f57:	c7 47 fc 01 00 00 00 	movl   $0x1,-0x4(%edi)
c0102f5e:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0102f64:	83 c0 01             	add    $0x1,%eax
c0102f67:	83 f8 07             	cmp    $0x7,%eax
c0102f6a:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0102f70:	0f 8f ef 02 00 00    	jg     c0103265 <_svfprintf_r+0x18d5>
c0102f76:	85 db                	test   %ebx,%ebx
c0102f78:	75 17                	jne    c0102f91 <_svfprintf_r+0x1601>
c0102f7a:	8b 95 1c ff ff ff    	mov    -0xe4(%ebp),%edx
c0102f80:	85 d2                	test   %edx,%edx
c0102f82:	75 0d                	jne    c0102f91 <_svfprintf_r+0x1601>
c0102f84:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c0102f8b:	0f 84 ab f4 ff ff    	je     c010243c <_svfprintf_r+0xaac>
c0102f91:	8b 85 0c ff ff ff    	mov    -0xf4(%ebp),%eax
c0102f97:	83 c7 08             	add    $0x8,%edi
c0102f9a:	89 47 f8             	mov    %eax,-0x8(%edi)
c0102f9d:	8b 85 08 ff ff ff    	mov    -0xf8(%ebp),%eax
c0102fa3:	89 47 fc             	mov    %eax,-0x4(%edi)
c0102fa6:	8d 14 01             	lea    (%ecx,%eax,1),%edx
c0102fa9:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0102faf:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0102fb5:	83 c0 01             	add    $0x1,%eax
c0102fb8:	83 f8 07             	cmp    $0x7,%eax
c0102fbb:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0102fc1:	0f 8f 60 03 00 00    	jg     c0103327 <_svfprintf_r+0x1997>
c0102fc7:	f7 db                	neg    %ebx
c0102fc9:	85 db                	test   %ebx,%ebx
c0102fcb:	0f 8e 21 03 00 00    	jle    c01032f2 <_svfprintf_r+0x1962>
c0102fd1:	83 fb 10             	cmp    $0x10,%ebx
c0102fd4:	0f 8e c3 02 00 00    	jle    c010329d <_svfprintf_r+0x190d>
c0102fda:	8d b5 74 ff ff ff    	lea    -0x8c(%ebp),%esi
c0102fe0:	eb 12                	jmp    c0102ff4 <_svfprintf_r+0x1664>
c0102fe2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0102fe8:	83 eb 10             	sub    $0x10,%ebx
c0102feb:	83 fb 10             	cmp    $0x10,%ebx
c0102fee:	0f 8e a9 02 00 00    	jle    c010329d <_svfprintf_r+0x190d>
c0102ff4:	83 c0 01             	add    $0x1,%eax
c0102ff7:	83 c2 10             	add    $0x10,%edx
c0102ffa:	c7 07 a0 88 10 c0    	movl   $0xc01088a0,(%edi)
c0103000:	83 c7 08             	add    $0x8,%edi
c0103003:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c010300a:	83 f8 07             	cmp    $0x7,%eax
c010300d:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0103013:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0103019:	7e cd                	jle    c0102fe8 <_svfprintf_r+0x1658>
c010301b:	8b 45 0c             	mov    0xc(%ebp),%eax
c010301e:	89 74 24 08          	mov    %esi,0x8(%esp)
c0103022:	89 44 24 04          	mov    %eax,0x4(%esp)
c0103026:	8b 45 08             	mov    0x8(%ebp),%eax
c0103029:	89 04 24             	mov    %eax,(%esp)
c010302c:	e8 6f 34 00 00       	call   c01064a0 <__ssprint_r>
c0103031:	85 c0                	test   %eax,%eax
c0103033:	0f 85 27 eb ff ff    	jne    c0101b60 <_svfprintf_r+0x1d0>
c0103039:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c010303f:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0103042:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0103048:	eb 9e                	jmp    c0102fe8 <_svfprintf_r+0x1658>
c010304a:	8b 9d 24 ff ff ff    	mov    -0xdc(%ebp),%ebx
c0103050:	83 e3 df             	and    $0xffffffdf,%ebx
c0103053:	83 bd 44 ff ff ff ff 	cmpl   $0xffffffff,-0xbc(%ebp)
c010305a:	0f 84 05 03 00 00    	je     c0103365 <_svfprintf_r+0x19d5>
c0103060:	83 fb 47             	cmp    $0x47,%ebx
c0103063:	75 16                	jne    c010307b <_svfprintf_r+0x16eb>
c0103065:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
c010306b:	b8 01 00 00 00       	mov    $0x1,%eax
c0103070:	85 d2                	test   %edx,%edx
c0103072:	0f 45 c2             	cmovne %edx,%eax
c0103075:	89 85 44 ff ff ff    	mov    %eax,-0xbc(%ebp)
c010307b:	8b 85 4c ff ff ff    	mov    -0xb4(%ebp),%eax
c0103081:	dd 85 10 ff ff ff    	fldl   -0xf0(%ebp)
c0103087:	dd 95 38 ff ff ff    	fstl   -0xc8(%ebp)
c010308d:	80 cc 01             	or     $0x1,%ah
c0103090:	89 85 30 ff ff ff    	mov    %eax,-0xd0(%ebp)
c0103096:	8b 85 3c ff ff ff    	mov    -0xc4(%ebp),%eax
c010309c:	c6 85 48 ff ff ff 00 	movb   $0x0,-0xb8(%ebp)
c01030a3:	85 c0                	test   %eax,%eax
c01030a5:	0f 88 ba 05 00 00    	js     c0103665 <_svfprintf_r+0x1cd5>
c01030ab:	83 fb 46             	cmp    $0x46,%ebx
c01030ae:	0f 94 c0             	sete   %al
c01030b1:	89 c6                	mov    %eax,%esi
c01030b3:	0f 84 d4 03 00 00    	je     c010348d <_svfprintf_r+0x1afd>
c01030b9:	83 fb 45             	cmp    $0x45,%ebx
c01030bc:	0f 85 99 05 00 00    	jne    c010365b <_svfprintf_r+0x1ccb>
c01030c2:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
c01030c8:	dd 54 24 04          	fstl   0x4(%esp)
c01030cc:	c7 44 24 0c 02 00 00 	movl   $0x2,0xc(%esp)
c01030d3:	00 
c01030d4:	dd 9d 38 ff ff ff    	fstpl  -0xc8(%ebp)
c01030da:	8d 70 01             	lea    0x1(%eax),%esi
c01030dd:	8d 85 6c ff ff ff    	lea    -0x94(%ebp),%eax
c01030e3:	89 44 24 1c          	mov    %eax,0x1c(%esp)
c01030e7:	8d 85 60 ff ff ff    	lea    -0xa0(%ebp),%eax
c01030ed:	89 44 24 18          	mov    %eax,0x18(%esp)
c01030f1:	8d 85 5c ff ff ff    	lea    -0xa4(%ebp),%eax
c01030f7:	89 44 24 14          	mov    %eax,0x14(%esp)
c01030fb:	8b 45 08             	mov    0x8(%ebp),%eax
c01030fe:	89 74 24 10          	mov    %esi,0x10(%esp)
c0103102:	89 04 24             	mov    %eax,(%esp)
c0103105:	e8 56 09 00 00       	call   c0103a60 <_dtoa_r>
c010310a:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c0103110:	8d 0c 30             	lea    (%eax,%esi,1),%ecx
c0103113:	dd 85 38 ff ff ff    	fldl   -0xc8(%ebp)
c0103119:	90                   	nop
c010311a:	90                   	nop
c010311b:	d9 c9                	fxch   %st(1)
c010311d:	df e9                	fucomip %st(1),%st
c010311f:	dd d8                	fstp   %st(0)
c0103121:	0f 8a fd 00 00 00    	jp     c0103224 <_svfprintf_r+0x1894>
c0103127:	89 c8                	mov    %ecx,%eax
c0103129:	0f 85 f5 00 00 00    	jne    c0103224 <_svfprintf_r+0x1894>
c010312f:	2b 85 28 ff ff ff    	sub    -0xd8(%ebp),%eax
c0103135:	83 fb 47             	cmp    $0x47,%ebx
c0103138:	89 85 1c ff ff ff    	mov    %eax,-0xe4(%ebp)
c010313e:	0f 84 1e 04 00 00    	je     c0103562 <_svfprintf_r+0x1bd2>
c0103144:	83 bd 24 ff ff ff 65 	cmpl   $0x65,-0xdc(%ebp)
c010314b:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
c0103151:	0f 8e 65 04 00 00    	jle    c01035bc <_svfprintf_r+0x1c2c>
c0103157:	83 bd 24 ff ff ff 66 	cmpl   $0x66,-0xdc(%ebp)
c010315e:	89 85 20 ff ff ff    	mov    %eax,-0xe0(%ebp)
c0103164:	0f 84 3c 05 00 00    	je     c01036a6 <_svfprintf_r+0x1d16>
c010316a:	8b 85 20 ff ff ff    	mov    -0xe0(%ebp),%eax
c0103170:	39 85 1c ff ff ff    	cmp    %eax,-0xe4(%ebp)
c0103176:	0f 8f f7 04 00 00    	jg     c0103673 <_svfprintf_r+0x1ce3>
c010317c:	8b 85 4c ff ff ff    	mov    -0xb4(%ebp),%eax
c0103182:	83 e0 01             	and    $0x1,%eax
c0103185:	0f 85 e2 05 00 00    	jne    c010376d <_svfprintf_r+0x1ddd>
c010318b:	8b 95 20 ff ff ff    	mov    -0xe0(%ebp),%edx
c0103191:	c7 85 24 ff ff ff 67 	movl   $0x67,-0xdc(%ebp)
c0103198:	00 00 00 
c010319b:	85 d2                	test   %edx,%edx
c010319d:	0f 49 c2             	cmovns %edx,%eax
c01031a0:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
c01031a6:	80 bd 48 ff ff ff 00 	cmpb   $0x0,-0xb8(%ebp)
c01031ad:	0f 85 68 03 00 00    	jne    c010351b <_svfprintf_r+0x1b8b>
c01031b3:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
c01031b9:	8b 85 30 ff ff ff    	mov    -0xd0(%ebp),%eax
c01031bf:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c01031c6:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c01031cd:	00 00 00 
c01031d0:	89 85 4c ff ff ff    	mov    %eax,-0xb4(%ebp)
c01031d6:	e9 4d ea ff ff       	jmp    c0101c28 <_svfprintf_r+0x298>
c01031db:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c01031e1:	89 44 24 08          	mov    %eax,0x8(%esp)
c01031e5:	8b 45 0c             	mov    0xc(%ebp),%eax
c01031e8:	89 44 24 04          	mov    %eax,0x4(%esp)
c01031ec:	8b 45 08             	mov    0x8(%ebp),%eax
c01031ef:	89 04 24             	mov    %eax,(%esp)
c01031f2:	e8 a9 32 00 00       	call   c01064a0 <__ssprint_r>
c01031f7:	85 c0                	test   %eax,%eax
c01031f9:	0f 85 61 e9 ff ff    	jne    c0101b60 <_svfprintf_r+0x1d0>
c01031ff:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0103205:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0103208:	e9 f2 f3 ff ff       	jmp    c01025ff <_svfprintf_r+0xc6f>
c010320d:	89 d0                	mov    %edx,%eax
c010320f:	e9 d1 fa ff ff       	jmp    c0102ce5 <_svfprintf_r+0x1355>
c0103214:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0103218:	8d 50 01             	lea    0x1(%eax),%edx
c010321b:	89 95 6c ff ff ff    	mov    %edx,-0x94(%ebp)
c0103221:	c6 00 30             	movb   $0x30,(%eax)
c0103224:	8b 85 6c ff ff ff    	mov    -0x94(%ebp),%eax
c010322a:	39 c1                	cmp    %eax,%ecx
c010322c:	77 ea                	ja     c0103218 <_svfprintf_r+0x1888>
c010322e:	e9 fc fe ff ff       	jmp    c010312f <_svfprintf_r+0x179f>
c0103233:	8b 45 08             	mov    0x8(%ebp),%eax
c0103236:	c7 44 24 04 40 00 00 	movl   $0x40,0x4(%esp)
c010323d:	00 
c010323e:	89 04 24             	mov    %eax,(%esp)
c0103241:	e8 4a 1b 00 00       	call   c0104d90 <_malloc_r>
c0103246:	8b 55 0c             	mov    0xc(%ebp),%edx
c0103249:	85 c0                	test   %eax,%eax
c010324b:	89 02                	mov    %eax,(%edx)
c010324d:	89 42 10             	mov    %eax,0x10(%edx)
c0103250:	0f 84 15 06 00 00    	je     c010386b <_svfprintf_r+0x1edb>
c0103256:	8b 45 0c             	mov    0xc(%ebp),%eax
c0103259:	c7 40 14 40 00 00 00 	movl   $0x40,0x14(%eax)
c0103260:	e9 6c e7 ff ff       	jmp    c01019d1 <_svfprintf_r+0x41>
c0103265:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c010326b:	89 44 24 08          	mov    %eax,0x8(%esp)
c010326f:	8b 45 0c             	mov    0xc(%ebp),%eax
c0103272:	89 44 24 04          	mov    %eax,0x4(%esp)
c0103276:	8b 45 08             	mov    0x8(%ebp),%eax
c0103279:	89 04 24             	mov    %eax,(%esp)
c010327c:	e8 1f 32 00 00       	call   c01064a0 <__ssprint_r>
c0103281:	85 c0                	test   %eax,%eax
c0103283:	0f 85 d7 e8 ff ff    	jne    c0101b60 <_svfprintf_r+0x1d0>
c0103289:	8b 9d 5c ff ff ff    	mov    -0xa4(%ebp),%ebx
c010328f:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0103292:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0103298:	e9 d9 fc ff ff       	jmp    c0102f76 <_svfprintf_r+0x15e6>
c010329d:	83 c0 01             	add    $0x1,%eax
c01032a0:	01 da                	add    %ebx,%edx
c01032a2:	c7 07 a0 88 10 c0    	movl   $0xc01088a0,(%edi)
c01032a8:	83 c7 08             	add    $0x8,%edi
c01032ab:	89 5f fc             	mov    %ebx,-0x4(%edi)
c01032ae:	83 f8 07             	cmp    $0x7,%eax
c01032b1:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c01032b7:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c01032bd:	7e 33                	jle    c01032f2 <_svfprintf_r+0x1962>
c01032bf:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c01032c5:	89 44 24 08          	mov    %eax,0x8(%esp)
c01032c9:	8b 45 0c             	mov    0xc(%ebp),%eax
c01032cc:	89 44 24 04          	mov    %eax,0x4(%esp)
c01032d0:	8b 45 08             	mov    0x8(%ebp),%eax
c01032d3:	89 04 24             	mov    %eax,(%esp)
c01032d6:	e8 c5 31 00 00       	call   c01064a0 <__ssprint_r>
c01032db:	85 c0                	test   %eax,%eax
c01032dd:	0f 85 7d e8 ff ff    	jne    c0101b60 <_svfprintf_r+0x1d0>
c01032e3:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c01032e9:	8d 7d a8             	lea    -0x58(%ebp),%edi
c01032ec:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c01032f2:	8b 9d 28 ff ff ff    	mov    -0xd8(%ebp),%ebx
c01032f8:	83 c0 01             	add    $0x1,%eax
c01032fb:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0103301:	89 1f                	mov    %ebx,(%edi)
c0103303:	8b 9d 1c ff ff ff    	mov    -0xe4(%ebp),%ebx
c0103309:	01 da                	add    %ebx,%edx
c010330b:	83 f8 07             	cmp    $0x7,%eax
c010330e:	89 5f 04             	mov    %ebx,0x4(%edi)
c0103311:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0103317:	0f 8f 86 f5 ff ff    	jg     c01028a3 <_svfprintf_r+0xf13>
c010331d:	83 c7 08             	add    $0x8,%edi
c0103320:	89 d1                	mov    %edx,%ecx
c0103322:	e9 15 f1 ff ff       	jmp    c010243c <_svfprintf_r+0xaac>
c0103327:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c010332d:	89 44 24 08          	mov    %eax,0x8(%esp)
c0103331:	8b 45 0c             	mov    0xc(%ebp),%eax
c0103334:	89 44 24 04          	mov    %eax,0x4(%esp)
c0103338:	8b 45 08             	mov    0x8(%ebp),%eax
c010333b:	89 04 24             	mov    %eax,(%esp)
c010333e:	e8 5d 31 00 00       	call   c01064a0 <__ssprint_r>
c0103343:	85 c0                	test   %eax,%eax
c0103345:	0f 85 15 e8 ff ff    	jne    c0101b60 <_svfprintf_r+0x1d0>
c010334b:	8b 9d 5c ff ff ff    	mov    -0xa4(%ebp),%ebx
c0103351:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0103354:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c010335a:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0103360:	e9 62 fc ff ff       	jmp    c0102fc7 <_svfprintf_r+0x1637>
c0103365:	c7 85 44 ff ff ff 06 	movl   $0x6,-0xbc(%ebp)
c010336c:	00 00 00 
c010336f:	e9 07 fd ff ff       	jmp    c010307b <_svfprintf_r+0x16eb>
c0103374:	8b 85 28 ff ff ff    	mov    -0xd8(%ebp),%eax
c010337a:	89 04 24             	mov    %eax,(%esp)
c010337d:	e8 9e 30 00 00       	call   c0106420 <strlen>
c0103382:	e9 6a e8 ff ff       	jmp    c0101bf1 <_svfprintf_r+0x261>
c0103387:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c010338d:	89 44 24 08          	mov    %eax,0x8(%esp)
c0103391:	8b 45 0c             	mov    0xc(%ebp),%eax
c0103394:	89 44 24 04          	mov    %eax,0x4(%esp)
c0103398:	8b 45 08             	mov    0x8(%ebp),%eax
c010339b:	89 04 24             	mov    %eax,(%esp)
c010339e:	e8 fd 30 00 00       	call   c01064a0 <__ssprint_r>
c01033a3:	85 c0                	test   %eax,%eax
c01033a5:	0f 85 b5 e7 ff ff    	jne    c0101b60 <_svfprintf_r+0x1d0>
c01033ab:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c01033b1:	8d 7d a8             	lea    -0x58(%ebp),%edi
c01033b4:	e9 76 f6 ff ff       	jmp    c0102a2f <_svfprintf_r+0x109f>
c01033b9:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c01033bf:	89 44 24 08          	mov    %eax,0x8(%esp)
c01033c3:	8b 45 0c             	mov    0xc(%ebp),%eax
c01033c6:	89 44 24 04          	mov    %eax,0x4(%esp)
c01033ca:	8b 45 08             	mov    0x8(%ebp),%eax
c01033cd:	89 04 24             	mov    %eax,(%esp)
c01033d0:	e8 cb 30 00 00       	call   c01064a0 <__ssprint_r>
c01033d5:	85 c0                	test   %eax,%eax
c01033d7:	0f 85 83 e7 ff ff    	jne    c0101b60 <_svfprintf_r+0x1d0>
c01033dd:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
c01033e3:	8d 7d a8             	lea    -0x58(%ebp),%edi
c01033e6:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c01033ec:	e9 f4 f8 ff ff       	jmp    c0102ce5 <_svfprintf_r+0x1355>
c01033f1:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c01033f7:	89 44 24 08          	mov    %eax,0x8(%esp)
c01033fb:	8b 45 0c             	mov    0xc(%ebp),%eax
c01033fe:	89 44 24 04          	mov    %eax,0x4(%esp)
c0103402:	8b 45 08             	mov    0x8(%ebp),%eax
c0103405:	89 04 24             	mov    %eax,(%esp)
c0103408:	e8 93 30 00 00       	call   c01064a0 <__ssprint_r>
c010340d:	85 c0                	test   %eax,%eax
c010340f:	0f 85 4b e7 ff ff    	jne    c0101b60 <_svfprintf_r+0x1d0>
c0103415:	8b b5 1c ff ff ff    	mov    -0xe4(%ebp),%esi
c010341b:	8d 7d a8             	lea    -0x58(%ebp),%edi
c010341e:	2b b5 5c ff ff ff    	sub    -0xa4(%ebp),%esi
c0103424:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c010342a:	e9 fa f8 ff ff       	jmp    c0102d29 <_svfprintf_r+0x1399>
c010342f:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
c0103435:	b0 06                	mov    $0x6,%al
c0103437:	89 75 14             	mov    %esi,0x14(%ebp)
c010343a:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c0103441:	00 00 00 
c0103444:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c010344b:	00 00 00 
c010344e:	83 fa 06             	cmp    $0x6,%edx
c0103451:	0f 46 c2             	cmovbe %edx,%eax
c0103454:	8b 95 28 ff ff ff    	mov    -0xd8(%ebp),%edx
c010345a:	85 c0                	test   %eax,%eax
c010345c:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c0103462:	c7 85 28 ff ff ff 34 	movl   $0xc0108734,-0xd8(%ebp)
c0103469:	87 10 c0 
c010346c:	0f 49 d0             	cmovns %eax,%edx
c010346f:	31 db                	xor    %ebx,%ebx
c0103471:	89 95 48 ff ff ff    	mov    %edx,-0xb8(%ebp)
c0103477:	e9 b7 e7 ff ff       	jmp    c0101c33 <_svfprintf_r+0x2a3>
c010347c:	c6 85 59 ff ff ff 2d 	movb   $0x2d,-0xa7(%ebp)
c0103483:	bb 2d 00 00 00       	mov    $0x2d,%ebx
c0103488:	e9 9d ea ff ff       	jmp    c0101f2a <_svfprintf_r+0x59a>
c010348d:	ba 03 00 00 00       	mov    $0x3,%edx
c0103492:	8d 85 6c ff ff ff    	lea    -0x94(%ebp),%eax
c0103498:	89 44 24 1c          	mov    %eax,0x1c(%esp)
c010349c:	8d 85 60 ff ff ff    	lea    -0xa0(%ebp),%eax
c01034a2:	89 44 24 18          	mov    %eax,0x18(%esp)
c01034a6:	8d 85 5c ff ff ff    	lea    -0xa4(%ebp),%eax
c01034ac:	89 44 24 14          	mov    %eax,0x14(%esp)
c01034b0:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
c01034b6:	dd 54 24 04          	fstl   0x4(%esp)
c01034ba:	89 54 24 0c          	mov    %edx,0xc(%esp)
c01034be:	dd 9d 38 ff ff ff    	fstpl  -0xc8(%ebp)
c01034c4:	89 44 24 10          	mov    %eax,0x10(%esp)
c01034c8:	8b 45 08             	mov    0x8(%ebp),%eax
c01034cb:	89 04 24             	mov    %eax,(%esp)
c01034ce:	e8 8d 05 00 00       	call   c0103a60 <_dtoa_r>
c01034d3:	83 fb 47             	cmp    $0x47,%ebx
c01034d6:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c01034dc:	dd 85 38 ff ff ff    	fldl   -0xc8(%ebp)
c01034e2:	75 09                	jne    c01034ed <_svfprintf_r+0x1b5d>
c01034e4:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c01034eb:	74 5b                	je     c0103548 <_svfprintf_r+0x1bb8>
c01034ed:	8b 95 28 ff ff ff    	mov    -0xd8(%ebp),%edx
c01034f3:	89 f0                	mov    %esi,%eax
c01034f5:	8b 8d 44 ff ff ff    	mov    -0xbc(%ebp),%ecx
c01034fb:	01 d1                	add    %edx,%ecx
c01034fd:	84 c0                	test   %al,%al
c01034ff:	0f 84 14 fc ff ff    	je     c0103119 <_svfprintf_r+0x1789>
c0103505:	80 3a 30             	cmpb   $0x30,(%edx)
c0103508:	0f 84 37 02 00 00    	je     c0103745 <_svfprintf_r+0x1db5>
c010350e:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
c0103514:	01 c1                	add    %eax,%ecx
c0103516:	e9 fe fb ff ff       	jmp    c0103119 <_svfprintf_r+0x1789>
c010351b:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
c0103521:	8b 85 30 ff ff ff    	mov    -0xd0(%ebp),%eax
c0103527:	bb 2d 00 00 00       	mov    $0x2d,%ebx
c010352c:	c6 85 59 ff ff ff 2d 	movb   $0x2d,-0xa7(%ebp)
c0103533:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c010353a:	00 00 00 
c010353d:	89 85 4c ff ff ff    	mov    %eax,-0xb4(%ebp)
c0103543:	e9 e4 e6 ff ff       	jmp    c0101c2c <_svfprintf_r+0x29c>
c0103548:	dd d8                	fstp   %st(0)
c010354a:	8b 85 6c ff ff ff    	mov    -0x94(%ebp),%eax
c0103550:	89 85 1c ff ff ff    	mov    %eax,-0xe4(%ebp)
c0103556:	8b 85 28 ff ff ff    	mov    -0xd8(%ebp),%eax
c010355c:	29 85 1c ff ff ff    	sub    %eax,-0xe4(%ebp)
c0103562:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
c0103568:	83 f8 fd             	cmp    $0xfffffffd,%eax
c010356b:	7c 48                	jl     c01035b5 <_svfprintf_r+0x1c25>
c010356d:	39 85 44 ff ff ff    	cmp    %eax,-0xbc(%ebp)
c0103573:	7c 40                	jl     c01035b5 <_svfprintf_r+0x1c25>
c0103575:	89 85 20 ff ff ff    	mov    %eax,-0xe0(%ebp)
c010357b:	e9 ea fb ff ff       	jmp    c010316a <_svfprintf_r+0x17da>
c0103580:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
c0103586:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c010358d:	89 75 14             	mov    %esi,0x14(%ebp)
c0103590:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c0103597:	00 00 00 
c010359a:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
c01035a0:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c01035a6:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c01035ad:	00 00 00 
c01035b0:	e9 73 e6 ff ff       	jmp    c0101c28 <_svfprintf_r+0x298>
c01035b5:	83 ad 24 ff ff ff 02 	subl   $0x2,-0xdc(%ebp)
c01035bc:	8d 48 ff             	lea    -0x1(%eax),%ecx
c01035bf:	0f b6 85 24 ff ff ff 	movzbl -0xdc(%ebp),%eax
c01035c6:	85 c9                	test   %ecx,%ecx
c01035c8:	89 8d 5c ff ff ff    	mov    %ecx,-0xa4(%ebp)
c01035ce:	88 85 65 ff ff ff    	mov    %al,-0x9b(%ebp)
c01035d4:	0f 88 2c 02 00 00    	js     c0103806 <_svfprintf_r+0x1e76>
c01035da:	c6 85 66 ff ff ff 2b 	movb   $0x2b,-0x9a(%ebp)
c01035e1:	83 f9 09             	cmp    $0x9,%ecx
c01035e4:	0f 8f ea 00 00 00    	jg     c01036d4 <_svfprintf_r+0x1d44>
c01035ea:	83 c1 30             	add    $0x30,%ecx
c01035ed:	c6 85 67 ff ff ff 30 	movb   $0x30,-0x99(%ebp)
c01035f4:	8d 85 69 ff ff ff    	lea    -0x97(%ebp),%eax
c01035fa:	88 8d 68 ff ff ff    	mov    %cl,-0x98(%ebp)
c0103600:	8b 9d 1c ff ff ff    	mov    -0xe4(%ebp),%ebx
c0103606:	8d 95 65 ff ff ff    	lea    -0x9b(%ebp),%edx
c010360c:	29 d0                	sub    %edx,%eax
c010360e:	89 85 04 ff ff ff    	mov    %eax,-0xfc(%ebp)
c0103614:	89 da                	mov    %ebx,%edx
c0103616:	01 c2                	add    %eax,%edx
c0103618:	83 fb 01             	cmp    $0x1,%ebx
c010361b:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
c0103621:	0f 8e 21 02 00 00    	jle    c0103848 <_svfprintf_r+0x1eb8>
c0103627:	31 c0                	xor    %eax,%eax
c0103629:	83 85 38 ff ff ff 01 	addl   $0x1,-0xc8(%ebp)
c0103630:	0f 49 85 38 ff ff ff 	cmovns -0xc8(%ebp),%eax
c0103637:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c010363e:	00 00 00 
c0103641:	e9 60 fb ff ff       	jmp    c01031a6 <_svfprintf_r+0x1816>
c0103646:	8b 8d 48 ff ff ff    	mov    -0xb8(%ebp),%ecx
c010364c:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c0103653:	00 00 00 
c0103656:	e9 68 e4 ff ff       	jmp    c0101ac3 <_svfprintf_r+0x133>
c010365b:	ba 02 00 00 00       	mov    $0x2,%edx
c0103660:	e9 2d fe ff ff       	jmp    c0103492 <_svfprintf_r+0x1b02>
c0103665:	d9 e0                	fchs   
c0103667:	c6 85 48 ff ff ff 2d 	movb   $0x2d,-0xb8(%ebp)
c010366e:	e9 38 fa ff ff       	jmp    c01030ab <_svfprintf_r+0x171b>
c0103673:	8b 8d 20 ff ff ff    	mov    -0xe0(%ebp),%ecx
c0103679:	ba 01 00 00 00       	mov    $0x1,%edx
c010367e:	85 c9                	test   %ecx,%ecx
c0103680:	0f 8e 5a 01 00 00    	jle    c01037e0 <_svfprintf_r+0x1e50>
c0103686:	31 c0                	xor    %eax,%eax
c0103688:	03 95 1c ff ff ff    	add    -0xe4(%ebp),%edx
c010368e:	c7 85 24 ff ff ff 67 	movl   $0x67,-0xdc(%ebp)
c0103695:	00 00 00 
c0103698:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
c010369e:	0f 49 c2             	cmovns %edx,%eax
c01036a1:	e9 00 fb ff ff       	jmp    c01031a6 <_svfprintf_r+0x1816>
c01036a6:	85 c0                	test   %eax,%eax
c01036a8:	0f 8e 06 01 00 00    	jle    c01037b4 <_svfprintf_r+0x1e24>
c01036ae:	8b b5 44 ff ff ff    	mov    -0xbc(%ebp),%esi
c01036b4:	85 f6                	test   %esi,%esi
c01036b6:	0f 85 d4 00 00 00    	jne    c0103790 <_svfprintf_r+0x1e00>
c01036bc:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c01036c3:	0f 85 c7 00 00 00    	jne    c0103790 <_svfprintf_r+0x1e00>
c01036c9:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c01036cf:	e9 d2 fa ff ff       	jmp    c01031a6 <_svfprintf_r+0x1816>
c01036d4:	8d b5 73 ff ff ff    	lea    -0x8d(%ebp),%esi
c01036da:	89 f3                	mov    %esi,%ebx
c01036dc:	b8 67 66 66 66       	mov    $0x66666667,%eax
c01036e1:	83 eb 01             	sub    $0x1,%ebx
c01036e4:	f7 e9                	imul   %ecx
c01036e6:	89 c8                	mov    %ecx,%eax
c01036e8:	c1 f8 1f             	sar    $0x1f,%eax
c01036eb:	c1 fa 02             	sar    $0x2,%edx
c01036ee:	29 c2                	sub    %eax,%edx
c01036f0:	8d 04 92             	lea    (%edx,%edx,4),%eax
c01036f3:	01 c0                	add    %eax,%eax
c01036f5:	29 c1                	sub    %eax,%ecx
c01036f7:	83 fa 09             	cmp    $0x9,%edx
c01036fa:	8d 41 30             	lea    0x30(%ecx),%eax
c01036fd:	89 d1                	mov    %edx,%ecx
c01036ff:	88 03                	mov    %al,(%ebx)
c0103701:	7f d9                	jg     c01036dc <_svfprintf_r+0x1d4c>
c0103703:	8d 43 ff             	lea    -0x1(%ebx),%eax
c0103706:	83 c1 30             	add    $0x30,%ecx
c0103709:	39 f0                	cmp    %esi,%eax
c010370b:	88 4b ff             	mov    %cl,-0x1(%ebx)
c010370e:	0f 83 6a 01 00 00    	jae    c010387e <_svfprintf_r+0x1eee>
c0103714:	8d 95 67 ff ff ff    	lea    -0x99(%ebp),%edx
c010371a:	eb 07                	jmp    c0103723 <_svfprintf_r+0x1d93>
c010371c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0103720:	0f b6 08             	movzbl (%eax),%ecx
c0103723:	83 c0 01             	add    $0x1,%eax
c0103726:	83 c2 01             	add    $0x1,%edx
c0103729:	39 f0                	cmp    %esi,%eax
c010372b:	88 4a ff             	mov    %cl,-0x1(%edx)
c010372e:	75 f0                	jne    c0103720 <_svfprintf_r+0x1d90>
c0103730:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0103736:	29 d8                	sub    %ebx,%eax
c0103738:	8d 95 67 ff ff ff    	lea    -0x99(%ebp),%edx
c010373e:	01 d0                	add    %edx,%eax
c0103740:	e9 bb fe ff ff       	jmp    c0103600 <_svfprintf_r+0x1c70>
c0103745:	d9 ee                	fldz   
c0103747:	d9 c9                	fxch   %st(1)
c0103749:	db e9                	fucomi %st(1),%st
c010374b:	dd d9                	fstp   %st(1)
c010374d:	7a 06                	jp     c0103755 <_svfprintf_r+0x1dc5>
c010374f:	0f 84 b9 fd ff ff    	je     c010350e <_svfprintf_r+0x1b7e>
c0103755:	b8 01 00 00 00       	mov    $0x1,%eax
c010375a:	2b 85 44 ff ff ff    	sub    -0xbc(%ebp),%eax
c0103760:	89 85 5c ff ff ff    	mov    %eax,-0xa4(%ebp)
c0103766:	01 c1                	add    %eax,%ecx
c0103768:	e9 ac f9 ff ff       	jmp    c0103119 <_svfprintf_r+0x1789>
c010376d:	8b 95 20 ff ff ff    	mov    -0xe0(%ebp),%edx
c0103773:	31 c0                	xor    %eax,%eax
c0103775:	c7 85 24 ff ff ff 67 	movl   $0x67,-0xdc(%ebp)
c010377c:	00 00 00 
c010377f:	83 c2 01             	add    $0x1,%edx
c0103782:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
c0103788:	0f 49 c2             	cmovns %edx,%eax
c010378b:	e9 16 fa ff ff       	jmp    c01031a6 <_svfprintf_r+0x1816>
c0103790:	8b 95 20 ff ff ff    	mov    -0xe0(%ebp),%edx
c0103796:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
c010379c:	8d 44 10 01          	lea    0x1(%eax,%edx,1),%eax
c01037a0:	89 c2                	mov    %eax,%edx
c01037a2:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c01037a8:	31 c0                	xor    %eax,%eax
c01037aa:	85 d2                	test   %edx,%edx
c01037ac:	0f 49 c2             	cmovns %edx,%eax
c01037af:	e9 f2 f9 ff ff       	jmp    c01031a6 <_svfprintf_r+0x1816>
c01037b4:	8b 9d 44 ff ff ff    	mov    -0xbc(%ebp),%ebx
c01037ba:	85 db                	test   %ebx,%ebx
c01037bc:	75 2f                	jne    c01037ed <_svfprintf_r+0x1e5d>
c01037be:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c01037c5:	75 26                	jne    c01037ed <_svfprintf_r+0x1e5d>
c01037c7:	b8 01 00 00 00       	mov    $0x1,%eax
c01037cc:	c7 85 38 ff ff ff 01 	movl   $0x1,-0xc8(%ebp)
c01037d3:	00 00 00 
c01037d6:	e9 cb f9 ff ff       	jmp    c01031a6 <_svfprintf_r+0x1816>
c01037db:	90                   	nop
c01037dc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c01037e0:	b2 02                	mov    $0x2,%dl
c01037e2:	2b 95 20 ff ff ff    	sub    -0xe0(%ebp),%edx
c01037e8:	e9 99 fe ff ff       	jmp    c0103686 <_svfprintf_r+0x1cf6>
c01037ed:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
c01037f3:	31 c0                	xor    %eax,%eax
c01037f5:	83 c2 02             	add    $0x2,%edx
c01037f8:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
c01037fe:	0f 49 c2             	cmovns %edx,%eax
c0103801:	e9 a0 f9 ff ff       	jmp    c01031a6 <_svfprintf_r+0x1816>
c0103806:	f7 d9                	neg    %ecx
c0103808:	c6 85 66 ff ff ff 2d 	movb   $0x2d,-0x9a(%ebp)
c010380f:	e9 cd fd ff ff       	jmp    c01035e1 <_svfprintf_r+0x1c51>
c0103814:	8b 55 14             	mov    0x14(%ebp),%edx
c0103817:	8b 45 14             	mov    0x14(%ebp),%eax
c010381a:	8b 8d 48 ff ff ff    	mov    -0xb8(%ebp),%ecx
c0103820:	8b 12                	mov    (%edx),%edx
c0103822:	83 c0 04             	add    $0x4,%eax
c0103825:	89 45 14             	mov    %eax,0x14(%ebp)
c0103828:	85 d2                	test   %edx,%edx
c010382a:	89 95 44 ff ff ff    	mov    %edx,-0xbc(%ebp)
c0103830:	0f 89 a9 e2 ff ff    	jns    c0101adf <_svfprintf_r+0x14f>
c0103836:	c7 85 44 ff ff ff ff 	movl   $0xffffffff,-0xbc(%ebp)
c010383d:	ff ff ff 
c0103840:	89 c8                	mov    %ecx,%eax
c0103842:	e9 76 e2 ff ff       	jmp    c0101abd <_svfprintf_r+0x12d>
c0103847:	90                   	nop
c0103848:	8b 85 4c ff ff ff    	mov    -0xb4(%ebp),%eax
c010384e:	83 e0 01             	and    $0x1,%eax
c0103851:	0f 85 d0 fd ff ff    	jne    c0103627 <_svfprintf_r+0x1c97>
c0103857:	85 d2                	test   %edx,%edx
c0103859:	0f 49 c2             	cmovns %edx,%eax
c010385c:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c0103863:	00 00 00 
c0103866:	e9 3b f9 ff ff       	jmp    c01031a6 <_svfprintf_r+0x1816>
c010386b:	8b 45 08             	mov    0x8(%ebp),%eax
c010386e:	c7 00 0c 00 00 00    	movl   $0xc,(%eax)
c0103874:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c0103879:	e9 f5 e2 ff ff       	jmp    c0101b73 <_svfprintf_r+0x1e3>
c010387e:	8d 85 67 ff ff ff    	lea    -0x99(%ebp),%eax
c0103884:	e9 77 fd ff ff       	jmp    c0103600 <_svfprintf_r+0x1c70>
c0103889:	66 90                	xchg   %ax,%ax
c010388b:	66 90                	xchg   %ax,%ax
c010388d:	66 90                	xchg   %ax,%ax
c010388f:	90                   	nop

c0103890 <quorem>:
c0103890:	55                   	push   %ebp
c0103891:	89 c1                	mov    %eax,%ecx
c0103893:	89 e5                	mov    %esp,%ebp
c0103895:	57                   	push   %edi
c0103896:	89 d7                	mov    %edx,%edi
c0103898:	56                   	push   %esi
c0103899:	53                   	push   %ebx
c010389a:	83 ec 3c             	sub    $0x3c,%esp
c010389d:	89 45 d0             	mov    %eax,-0x30(%ebp)
c01038a0:	8b 42 10             	mov    0x10(%edx),%eax
c01038a3:	3b 41 10             	cmp    0x10(%ecx),%eax
c01038a6:	89 55 c8             	mov    %edx,-0x38(%ebp)
c01038a9:	89 ca                	mov    %ecx,%edx
c01038ab:	0f 8f 9f 01 00 00    	jg     c0103a50 <quorem+0x1c0>
c01038b1:	83 e8 01             	sub    $0x1,%eax
c01038b4:	83 c7 14             	add    $0x14,%edi
c01038b7:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c01038ba:	c1 e0 02             	shl    $0x2,%eax
c01038bd:	83 c2 14             	add    $0x14,%edx
c01038c0:	8d 1c 07             	lea    (%edi,%eax,1),%ebx
c01038c3:	01 d0                	add    %edx,%eax
c01038c5:	89 55 d8             	mov    %edx,-0x28(%ebp)
c01038c8:	8b 13                	mov    (%ebx),%edx
c01038ca:	89 45 c4             	mov    %eax,-0x3c(%ebp)
c01038cd:	8b 00                	mov    (%eax),%eax
c01038cf:	89 5d e4             	mov    %ebx,-0x1c(%ebp)
c01038d2:	8d 4a 01             	lea    0x1(%edx),%ecx
c01038d5:	31 d2                	xor    %edx,%edx
c01038d7:	f7 f1                	div    %ecx
c01038d9:	85 c0                	test   %eax,%eax
c01038db:	89 45 e0             	mov    %eax,-0x20(%ebp)
c01038de:	89 45 cc             	mov    %eax,-0x34(%ebp)
c01038e1:	0f 84 b5 00 00 00    	je     c010399c <quorem+0x10c>
c01038e7:	8b 45 d8             	mov    -0x28(%ebp),%eax
c01038ea:	31 f6                	xor    %esi,%esi
c01038ec:	89 fa                	mov    %edi,%edx
c01038ee:	89 7d c0             	mov    %edi,-0x40(%ebp)
c01038f1:	89 f7                	mov    %esi,%edi
c01038f3:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%ebp)
c01038fa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0103900:	83 c2 04             	add    $0x4,%edx
c0103903:	8b 72 fc             	mov    -0x4(%edx),%esi
c0103906:	83 c0 04             	add    $0x4,%eax
c0103909:	0f b7 ce             	movzwl %si,%ecx
c010390c:	0f af 4d e0          	imul   -0x20(%ebp),%ecx
c0103910:	03 4d dc             	add    -0x24(%ebp),%ecx
c0103913:	c1 ee 10             	shr    $0x10,%esi
c0103916:	0f af 75 e0          	imul   -0x20(%ebp),%esi
c010391a:	89 cb                	mov    %ecx,%ebx
c010391c:	0f b7 c9             	movzwl %cx,%ecx
c010391f:	c1 eb 10             	shr    $0x10,%ebx
c0103922:	29 cf                	sub    %ecx,%edi
c0103924:	01 f3                	add    %esi,%ebx
c0103926:	89 de                	mov    %ebx,%esi
c0103928:	0f b7 db             	movzwl %bx,%ebx
c010392b:	c1 ee 10             	shr    $0x10,%esi
c010392e:	89 75 dc             	mov    %esi,-0x24(%ebp)
c0103931:	8b 70 fc             	mov    -0x4(%eax),%esi
c0103934:	0f b7 ce             	movzwl %si,%ecx
c0103937:	01 f9                	add    %edi,%ecx
c0103939:	c1 ee 10             	shr    $0x10,%esi
c010393c:	29 de                	sub    %ebx,%esi
c010393e:	89 cb                	mov    %ecx,%ebx
c0103940:	c1 fb 10             	sar    $0x10,%ebx
c0103943:	0f b7 c9             	movzwl %cx,%ecx
c0103946:	01 de                	add    %ebx,%esi
c0103948:	89 f7                	mov    %esi,%edi
c010394a:	c1 e6 10             	shl    $0x10,%esi
c010394d:	09 ce                	or     %ecx,%esi
c010394f:	c1 ff 10             	sar    $0x10,%edi
c0103952:	39 55 e4             	cmp    %edx,-0x1c(%ebp)
c0103955:	89 70 fc             	mov    %esi,-0x4(%eax)
c0103958:	73 a6                	jae    c0103900 <quorem+0x70>
c010395a:	8b 45 c4             	mov    -0x3c(%ebp),%eax
c010395d:	8b 7d c0             	mov    -0x40(%ebp),%edi
c0103960:	8b 10                	mov    (%eax),%edx
c0103962:	85 d2                	test   %edx,%edx
c0103964:	75 36                	jne    c010399c <quorem+0x10c>
c0103966:	8b 4d d8             	mov    -0x28(%ebp),%ecx
c0103969:	89 c2                	mov    %eax,%edx
c010396b:	83 e8 04             	sub    $0x4,%eax
c010396e:	39 c1                	cmp    %eax,%ecx
c0103970:	73 21                	jae    c0103993 <quorem+0x103>
c0103972:	8b 72 fc             	mov    -0x4(%edx),%esi
c0103975:	85 f6                	test   %esi,%esi
c0103977:	75 1a                	jne    c0103993 <quorem+0x103>
c0103979:	8b 55 d4             	mov    -0x2c(%ebp),%edx
c010397c:	eb 08                	jmp    c0103986 <quorem+0xf6>
c010397e:	66 90                	xchg   %ax,%ax
c0103980:	8b 18                	mov    (%eax),%ebx
c0103982:	85 db                	test   %ebx,%ebx
c0103984:	75 0a                	jne    c0103990 <quorem+0x100>
c0103986:	83 e8 04             	sub    $0x4,%eax
c0103989:	83 ea 01             	sub    $0x1,%edx
c010398c:	39 c1                	cmp    %eax,%ecx
c010398e:	72 f0                	jb     c0103980 <quorem+0xf0>
c0103990:	89 55 d4             	mov    %edx,-0x2c(%ebp)
c0103993:	8b 45 d0             	mov    -0x30(%ebp),%eax
c0103996:	8b 55 d4             	mov    -0x2c(%ebp),%edx
c0103999:	89 50 10             	mov    %edx,0x10(%eax)
c010399c:	8b 45 c8             	mov    -0x38(%ebp),%eax
c010399f:	89 44 24 04          	mov    %eax,0x4(%esp)
c01039a3:	8b 45 d0             	mov    -0x30(%ebp),%eax
c01039a6:	89 04 24             	mov    %eax,(%esp)
c01039a9:	e8 a2 23 00 00       	call   c0105d50 <__mcmp>
c01039ae:	85 c0                	test   %eax,%eax
c01039b0:	0f 88 8e 00 00 00    	js     c0103a44 <quorem+0x1b4>
c01039b6:	8b 45 e0             	mov    -0x20(%ebp),%eax
c01039b9:	31 f6                	xor    %esi,%esi
c01039bb:	83 c0 01             	add    $0x1,%eax
c01039be:	89 45 cc             	mov    %eax,-0x34(%ebp)
c01039c1:	8b 45 d8             	mov    -0x28(%ebp),%eax
c01039c4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c01039c8:	83 c7 04             	add    $0x4,%edi
c01039cb:	8b 4f fc             	mov    -0x4(%edi),%ecx
c01039ce:	83 c0 04             	add    $0x4,%eax
c01039d1:	8b 58 fc             	mov    -0x4(%eax),%ebx
c01039d4:	0f b7 d1             	movzwl %cx,%edx
c01039d7:	29 d6                	sub    %edx,%esi
c01039d9:	0f b7 d3             	movzwl %bx,%edx
c01039dc:	01 f2                	add    %esi,%edx
c01039de:	c1 e9 10             	shr    $0x10,%ecx
c01039e1:	c1 eb 10             	shr    $0x10,%ebx
c01039e4:	29 cb                	sub    %ecx,%ebx
c01039e6:	89 d1                	mov    %edx,%ecx
c01039e8:	c1 f9 10             	sar    $0x10,%ecx
c01039eb:	0f b7 d2             	movzwl %dx,%edx
c01039ee:	01 cb                	add    %ecx,%ebx
c01039f0:	89 de                	mov    %ebx,%esi
c01039f2:	c1 e3 10             	shl    $0x10,%ebx
c01039f5:	09 d3                	or     %edx,%ebx
c01039f7:	c1 fe 10             	sar    $0x10,%esi
c01039fa:	39 7d e4             	cmp    %edi,-0x1c(%ebp)
c01039fd:	89 58 fc             	mov    %ebx,-0x4(%eax)
c0103a00:	73 c6                	jae    c01039c8 <quorem+0x138>
c0103a02:	8b 45 d8             	mov    -0x28(%ebp),%eax
c0103a05:	8b 7d d4             	mov    -0x2c(%ebp),%edi
c0103a08:	8d 14 b8             	lea    (%eax,%edi,4),%edx
c0103a0b:	8b 02                	mov    (%edx),%eax
c0103a0d:	85 c0                	test   %eax,%eax
c0103a0f:	75 33                	jne    c0103a44 <quorem+0x1b4>
c0103a11:	8b 4d d8             	mov    -0x28(%ebp),%ecx
c0103a14:	8d 42 fc             	lea    -0x4(%edx),%eax
c0103a17:	39 c1                	cmp    %eax,%ecx
c0103a19:	73 20                	jae    c0103a3b <quorem+0x1ab>
c0103a1b:	8b 72 fc             	mov    -0x4(%edx),%esi
c0103a1e:	85 f6                	test   %esi,%esi
c0103a20:	75 19                	jne    c0103a3b <quorem+0x1ab>
c0103a22:	89 fa                	mov    %edi,%edx
c0103a24:	eb 08                	jmp    c0103a2e <quorem+0x19e>
c0103a26:	66 90                	xchg   %ax,%ax
c0103a28:	8b 18                	mov    (%eax),%ebx
c0103a2a:	85 db                	test   %ebx,%ebx
c0103a2c:	75 0a                	jne    c0103a38 <quorem+0x1a8>
c0103a2e:	83 e8 04             	sub    $0x4,%eax
c0103a31:	83 ea 01             	sub    $0x1,%edx
c0103a34:	39 c1                	cmp    %eax,%ecx
c0103a36:	72 f0                	jb     c0103a28 <quorem+0x198>
c0103a38:	89 55 d4             	mov    %edx,-0x2c(%ebp)
c0103a3b:	8b 45 d0             	mov    -0x30(%ebp),%eax
c0103a3e:	8b 7d d4             	mov    -0x2c(%ebp),%edi
c0103a41:	89 78 10             	mov    %edi,0x10(%eax)
c0103a44:	8b 45 cc             	mov    -0x34(%ebp),%eax
c0103a47:	83 c4 3c             	add    $0x3c,%esp
c0103a4a:	5b                   	pop    %ebx
c0103a4b:	5e                   	pop    %esi
c0103a4c:	5f                   	pop    %edi
c0103a4d:	5d                   	pop    %ebp
c0103a4e:	c3                   	ret    
c0103a4f:	90                   	nop
c0103a50:	83 c4 3c             	add    $0x3c,%esp
c0103a53:	31 c0                	xor    %eax,%eax
c0103a55:	5b                   	pop    %ebx
c0103a56:	5e                   	pop    %esi
c0103a57:	5f                   	pop    %edi
c0103a58:	5d                   	pop    %ebp
c0103a59:	c3                   	ret    
c0103a5a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

c0103a60 <_dtoa_r>:
c0103a60:	55                   	push   %ebp
c0103a61:	89 e5                	mov    %esp,%ebp
c0103a63:	57                   	push   %edi
c0103a64:	56                   	push   %esi
c0103a65:	53                   	push   %ebx
c0103a66:	81 ec 8c 00 00 00    	sub    $0x8c,%esp
c0103a6c:	8b 75 08             	mov    0x8(%ebp),%esi
c0103a6f:	dd 45 0c             	fldl   0xc(%ebp)
c0103a72:	8b 5d 20             	mov    0x20(%ebp),%ebx
c0103a75:	dd 5d c0             	fstpl  -0x40(%ebp)
c0103a78:	8b 46 40             	mov    0x40(%esi),%eax
c0103a7b:	85 c0                	test   %eax,%eax
c0103a7d:	74 23                	je     c0103aa2 <_dtoa_r+0x42>
c0103a7f:	8b 4e 44             	mov    0x44(%esi),%ecx
c0103a82:	ba 01 00 00 00       	mov    $0x1,%edx
c0103a87:	d3 e2                	shl    %cl,%edx
c0103a89:	89 48 04             	mov    %ecx,0x4(%eax)
c0103a8c:	89 50 08             	mov    %edx,0x8(%eax)
c0103a8f:	89 44 24 04          	mov    %eax,0x4(%esp)
c0103a93:	89 34 24             	mov    %esi,(%esp)
c0103a96:	e8 95 1b 00 00       	call   c0105630 <_Bfree>
c0103a9b:	c7 46 40 00 00 00 00 	movl   $0x0,0x40(%esi)
c0103aa2:	8b 7d c4             	mov    -0x3c(%ebp),%edi
c0103aa5:	85 ff                	test   %edi,%edi
c0103aa7:	0f 88 3b 02 00 00    	js     c0103ce8 <_dtoa_r+0x288>
c0103aad:	c7 03 00 00 00 00    	movl   $0x0,(%ebx)
c0103ab3:	89 f8                	mov    %edi,%eax
c0103ab5:	25 00 00 f0 7f       	and    $0x7ff00000,%eax
c0103aba:	3d 00 00 f0 7f       	cmp    $0x7ff00000,%eax
c0103abf:	0f 84 e3 01 00 00    	je     c0103ca8 <_dtoa_r+0x248>
c0103ac5:	dd 45 c0             	fldl   -0x40(%ebp)
c0103ac8:	d9 ee                	fldz   
c0103aca:	d9 c9                	fxch   %st(1)
c0103acc:	db e9                	fucomi %st(1),%st
c0103ace:	dd d9                	fstp   %st(1)
c0103ad0:	7a 36                	jp     c0103b08 <_dtoa_r+0xa8>
c0103ad2:	75 34                	jne    c0103b08 <_dtoa_r+0xa8>
c0103ad4:	dd d8                	fstp   %st(0)
c0103ad6:	8b 4d 24             	mov    0x24(%ebp),%ecx
c0103ad9:	8b 45 1c             	mov    0x1c(%ebp),%eax
c0103adc:	85 c9                	test   %ecx,%ecx
c0103ade:	c7 00 01 00 00 00    	movl   $0x1,(%eax)
c0103ae4:	0f 84 4e 02 00 00    	je     c0103d38 <_dtoa_r+0x2d8>
c0103aea:	8b 45 24             	mov    0x24(%ebp),%eax
c0103aed:	c7 00 0b 84 10 c0    	movl   $0xc010840b,(%eax)
c0103af3:	b8 0a 84 10 c0       	mov    $0xc010840a,%eax
c0103af8:	81 c4 8c 00 00 00    	add    $0x8c,%esp
c0103afe:	5b                   	pop    %ebx
c0103aff:	5e                   	pop    %esi
c0103b00:	5f                   	pop    %edi
c0103b01:	5d                   	pop    %ebp
c0103b02:	c3                   	ret    
c0103b03:	90                   	nop
c0103b04:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0103b08:	8d 45 e0             	lea    -0x20(%ebp),%eax
c0103b0b:	89 fb                	mov    %edi,%ebx
c0103b0d:	89 44 24 10          	mov    %eax,0x10(%esp)
c0103b11:	8d 45 e4             	lea    -0x1c(%ebp),%eax
c0103b14:	dd 54 24 04          	fstl   0x4(%esp)
c0103b18:	89 44 24 0c          	mov    %eax,0xc(%esp)
c0103b1c:	dd 5d b8             	fstpl  -0x48(%ebp)
c0103b1f:	89 34 24             	mov    %esi,(%esp)
c0103b22:	c1 eb 14             	shr    $0x14,%ebx
c0103b25:	e8 76 25 00 00       	call   c01060a0 <__d2b>
c0103b2a:	85 db                	test   %ebx,%ebx
c0103b2c:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c0103b2f:	0f 85 db 01 00 00    	jne    c0103d10 <_dtoa_r+0x2b0>
c0103b35:	8b 45 e0             	mov    -0x20(%ebp),%eax
c0103b38:	8b 5d e4             	mov    -0x1c(%ebp),%ebx
c0103b3b:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c0103b3e:	01 c3                	add    %eax,%ebx
c0103b40:	81 fb ef fb ff ff    	cmp    $0xfffffbef,%ebx
c0103b46:	0f 8c ec 07 00 00    	jl     c0104338 <_dtoa_r+0x8d8>
c0103b4c:	8b 55 c0             	mov    -0x40(%ebp),%edx
c0103b4f:	b9 0e fc ff ff       	mov    $0xfffffc0e,%ecx
c0103b54:	89 f8                	mov    %edi,%eax
c0103b56:	29 d9                	sub    %ebx,%ecx
c0103b58:	d3 e0                	shl    %cl,%eax
c0103b5a:	8d 8b 12 04 00 00    	lea    0x412(%ebx),%ecx
c0103b60:	d3 ea                	shr    %cl,%edx
c0103b62:	09 d0                	or     %edx,%eax
c0103b64:	31 d2                	xor    %edx,%edx
c0103b66:	83 eb 01             	sub    $0x1,%ebx
c0103b69:	89 55 cc             	mov    %edx,-0x34(%ebp)
c0103b6c:	8b 55 b4             	mov    -0x4c(%ebp),%edx
c0103b6f:	89 45 c8             	mov    %eax,-0x38(%ebp)
c0103b72:	df 6d c8             	fildll -0x38(%ebp)
c0103b75:	dd 5d b8             	fstpl  -0x48(%ebp)
c0103b78:	81 6d bc 00 00 f0 01 	subl   $0x1f00000,-0x44(%ebp)
c0103b7f:	c7 45 8c 01 00 00 00 	movl   $0x1,-0x74(%ebp)
c0103b86:	dd 45 b8             	fldl   -0x48(%ebp)
c0103b89:	d8 25 d0 88 10 c0    	fsubs  0xc01088d0
c0103b8f:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
c0103b92:	d9 7d d2             	fnstcw -0x2e(%ebp)
c0103b95:	dc 0d e8 88 10 c0    	fmull  0xc01088e8
c0103b9b:	0f b7 45 d2          	movzwl -0x2e(%ebp),%eax
c0103b9f:	b4 0c                	mov    $0xc,%ah
c0103ba1:	dc 05 f0 88 10 c0    	faddl  0xc01088f0
c0103ba7:	66 89 45 d0          	mov    %ax,-0x30(%ebp)
c0103bab:	db 45 d4             	fildl  -0x2c(%ebp)
c0103bae:	dc 0d f8 88 10 c0    	fmull  0xc01088f8
c0103bb4:	de c1                	faddp  %st,%st(1)
c0103bb6:	d9 6d d0             	fldcw  -0x30(%ebp)
c0103bb9:	db 55 b8             	fistl  -0x48(%ebp)
c0103bbc:	d9 6d d2             	fldcw  -0x2e(%ebp)
c0103bbf:	d9 ee                	fldz   
c0103bc1:	df e9                	fucomip %st(1),%st
c0103bc3:	0f 87 27 07 00 00    	ja     c01042f0 <_dtoa_r+0x890>
c0103bc9:	dd d8                	fstp   %st(0)
c0103bcb:	83 7d b8 16          	cmpl   $0x16,-0x48(%ebp)
c0103bcf:	c7 45 9c 01 00 00 00 	movl   $0x1,-0x64(%ebp)
c0103bd6:	77 24                	ja     c0103bfc <_dtoa_r+0x19c>
c0103bd8:	8b 45 b8             	mov    -0x48(%ebp),%eax
c0103bdb:	dd 04 c5 c0 89 10 c0 	fldl   -0x3fef7640(,%eax,8)
c0103be2:	dd 45 c0             	fldl   -0x40(%ebp)
c0103be5:	d9 c9                	fxch   %st(1)
c0103be7:	df e9                	fucomip %st(1),%st
c0103be9:	dd d8                	fstp   %st(0)
c0103beb:	0f 86 5f 07 00 00    	jbe    c0104350 <_dtoa_r+0x8f0>
c0103bf1:	83 6d b8 01          	subl   $0x1,-0x48(%ebp)
c0103bf5:	c7 45 9c 00 00 00 00 	movl   $0x0,-0x64(%ebp)
c0103bfc:	89 d0                	mov    %edx,%eax
c0103bfe:	29 d8                	sub    %ebx,%eax
c0103c00:	83 e8 01             	sub    $0x1,%eax
c0103c03:	c7 45 a0 00 00 00 00 	movl   $0x0,-0x60(%ebp)
c0103c0a:	89 45 ac             	mov    %eax,-0x54(%ebp)
c0103c0d:	0f 88 0d 07 00 00    	js     c0104320 <_dtoa_r+0x8c0>
c0103c13:	8b 45 b8             	mov    -0x48(%ebp),%eax
c0103c16:	85 c0                	test   %eax,%eax
c0103c18:	0f 88 ea 06 00 00    	js     c0104308 <_dtoa_r+0x8a8>
c0103c1e:	01 45 ac             	add    %eax,-0x54(%ebp)
c0103c21:	89 45 94             	mov    %eax,-0x6c(%ebp)
c0103c24:	c7 45 b0 00 00 00 00 	movl   $0x0,-0x50(%ebp)
c0103c2b:	83 7d 14 09          	cmpl   $0x9,0x14(%ebp)
c0103c2f:	0f 87 0b 03 00 00    	ja     c0103f40 <_dtoa_r+0x4e0>
c0103c35:	83 7d 14 05          	cmpl   $0x5,0x14(%ebp)
c0103c39:	0f 8e 23 10 00 00    	jle    c0104c62 <_dtoa_r+0x1202>
c0103c3f:	83 6d 14 04          	subl   $0x4,0x14(%ebp)
c0103c43:	31 c0                	xor    %eax,%eax
c0103c45:	83 7d 14 03          	cmpl   $0x3,0x14(%ebp)
c0103c49:	0f 84 43 0d 00 00    	je     c0104992 <_dtoa_r+0xf32>
c0103c4f:	0f 8e f3 00 00 00    	jle    c0103d48 <_dtoa_r+0x2e8>
c0103c55:	83 7d 14 04          	cmpl   $0x4,0x14(%ebp)
c0103c59:	c7 45 98 01 00 00 00 	movl   $0x1,-0x68(%ebp)
c0103c60:	0f 84 f3 00 00 00    	je     c0103d59 <_dtoa_r+0x2f9>
c0103c66:	83 7d 14 05          	cmpl   $0x5,0x14(%ebp)
c0103c6a:	0f 85 d7 02 00 00    	jne    c0103f47 <_dtoa_r+0x4e7>
c0103c70:	8b 5d b8             	mov    -0x48(%ebp),%ebx
c0103c73:	03 5d 18             	add    0x18(%ebp),%ebx
c0103c76:	89 5d 90             	mov    %ebx,-0x70(%ebp)
c0103c79:	83 c3 01             	add    $0x1,%ebx
c0103c7c:	83 fb 0e             	cmp    $0xe,%ebx
c0103c7f:	0f 96 c2             	setbe  %dl
c0103c82:	85 db                	test   %ebx,%ebx
c0103c84:	89 5d a8             	mov    %ebx,-0x58(%ebp)
c0103c87:	0f 8e a7 08 00 00    	jle    c0104534 <_dtoa_r+0xad4>
c0103c8d:	8b 5d a8             	mov    -0x58(%ebp),%ebx
c0103c90:	83 fb 0e             	cmp    $0xe,%ebx
c0103c93:	89 df                	mov    %ebx,%edi
c0103c95:	0f 96 45 b4          	setbe  -0x4c(%ebp)
c0103c99:	20 45 b4             	and    %al,-0x4c(%ebp)
c0103c9c:	e9 d6 00 00 00       	jmp    c0103d77 <_dtoa_r+0x317>
c0103ca1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0103ca8:	8b 55 c0             	mov    -0x40(%ebp),%edx
c0103cab:	8b 45 1c             	mov    0x1c(%ebp),%eax
c0103cae:	85 d2                	test   %edx,%edx
c0103cb0:	c7 00 0f 27 00 00    	movl   $0x270f,(%eax)
c0103cb6:	b8 c9 88 10 c0       	mov    $0xc01088c9,%eax
c0103cbb:	74 43                	je     c0103d00 <_dtoa_r+0x2a0>
c0103cbd:	8b 5d 24             	mov    0x24(%ebp),%ebx
c0103cc0:	85 db                	test   %ebx,%ebx
c0103cc2:	0f 84 30 fe ff ff    	je     c0103af8 <_dtoa_r+0x98>
c0103cc8:	8b 75 24             	mov    0x24(%ebp),%esi
c0103ccb:	8d 50 08             	lea    0x8(%eax),%edx
c0103cce:	80 78 03 00          	cmpb   $0x0,0x3(%eax)
c0103cd2:	8d 48 03             	lea    0x3(%eax),%ecx
c0103cd5:	0f 44 d1             	cmove  %ecx,%edx
c0103cd8:	89 16                	mov    %edx,(%esi)
c0103cda:	81 c4 8c 00 00 00    	add    $0x8c,%esp
c0103ce0:	5b                   	pop    %ebx
c0103ce1:	5e                   	pop    %esi
c0103ce2:	5f                   	pop    %edi
c0103ce3:	5d                   	pop    %ebp
c0103ce4:	c3                   	ret    
c0103ce5:	8d 76 00             	lea    0x0(%esi),%esi
c0103ce8:	81 e7 ff ff ff 7f    	and    $0x7fffffff,%edi
c0103cee:	c7 03 01 00 00 00    	movl   $0x1,(%ebx)
c0103cf4:	89 7d c4             	mov    %edi,-0x3c(%ebp)
c0103cf7:	e9 b7 fd ff ff       	jmp    c0103ab3 <_dtoa_r+0x53>
c0103cfc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0103d00:	81 e7 ff ff 0f 00    	and    $0xfffff,%edi
c0103d06:	ba c0 88 10 c0       	mov    $0xc01088c0,%edx
c0103d0b:	0f 44 c2             	cmove  %edx,%eax
c0103d0e:	eb ad                	jmp    c0103cbd <_dtoa_r+0x25d>
c0103d10:	8b 45 bc             	mov    -0x44(%ebp),%eax
c0103d13:	81 eb ff 03 00 00    	sub    $0x3ff,%ebx
c0103d19:	8b 55 e0             	mov    -0x20(%ebp),%edx
c0103d1c:	c7 45 8c 00 00 00 00 	movl   $0x0,-0x74(%ebp)
c0103d23:	25 ff ff 0f 00       	and    $0xfffff,%eax
c0103d28:	0d 00 00 f0 3f       	or     $0x3ff00000,%eax
c0103d2d:	89 45 bc             	mov    %eax,-0x44(%ebp)
c0103d30:	e9 51 fe ff ff       	jmp    c0103b86 <_dtoa_r+0x126>
c0103d35:	8d 76 00             	lea    0x0(%esi),%esi
c0103d38:	b8 0a 84 10 c0       	mov    $0xc010840a,%eax
c0103d3d:	e9 b6 fd ff ff       	jmp    c0103af8 <_dtoa_r+0x98>
c0103d42:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0103d48:	83 7d 14 02          	cmpl   $0x2,0x14(%ebp)
c0103d4c:	c7 45 98 00 00 00 00 	movl   $0x0,-0x68(%ebp)
c0103d53:	0f 85 ee 01 00 00    	jne    c0103f47 <_dtoa_r+0x4e7>
c0103d59:	8b 55 18             	mov    0x18(%ebp),%edx
c0103d5c:	85 d2                	test   %edx,%edx
c0103d5e:	0f 8e b6 07 00 00    	jle    c010451a <_dtoa_r+0xaba>
c0103d64:	8b 7d 18             	mov    0x18(%ebp),%edi
c0103d67:	83 ff 0e             	cmp    $0xe,%edi
c0103d6a:	0f 96 45 b4          	setbe  -0x4c(%ebp)
c0103d6e:	20 45 b4             	and    %al,-0x4c(%ebp)
c0103d71:	89 7d 90             	mov    %edi,-0x70(%ebp)
c0103d74:	89 7d a8             	mov    %edi,-0x58(%ebp)
c0103d77:	83 ff 17             	cmp    $0x17,%edi
c0103d7a:	c7 46 44 00 00 00 00 	movl   $0x0,0x44(%esi)
c0103d81:	0f 86 e5 0e 00 00    	jbe    c0104c6c <_dtoa_r+0x120c>
c0103d87:	b9 01 00 00 00       	mov    $0x1,%ecx
c0103d8c:	b8 04 00 00 00       	mov    $0x4,%eax
c0103d91:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0103d98:	01 c0                	add    %eax,%eax
c0103d9a:	89 ca                	mov    %ecx,%edx
c0103d9c:	8d 58 14             	lea    0x14(%eax),%ebx
c0103d9f:	39 fb                	cmp    %edi,%ebx
c0103da1:	8d 49 01             	lea    0x1(%ecx),%ecx
c0103da4:	76 f2                	jbe    c0103d98 <_dtoa_r+0x338>
c0103da6:	89 56 44             	mov    %edx,0x44(%esi)
c0103da9:	89 54 24 04          	mov    %edx,0x4(%esp)
c0103dad:	89 34 24             	mov    %esi,(%esp)
c0103db0:	e8 db 17 00 00       	call   c0105590 <_Balloc>
c0103db5:	80 7d b4 00          	cmpb   $0x0,-0x4c(%ebp)
c0103db9:	89 c7                	mov    %eax,%edi
c0103dbb:	89 46 40             	mov    %eax,0x40(%esi)
c0103dbe:	0f 84 bb 01 00 00    	je     c0103f7f <_dtoa_r+0x51f>
c0103dc4:	8b 5d b8             	mov    -0x48(%ebp),%ebx
c0103dc7:	dd 45 c0             	fldl   -0x40(%ebp)
c0103dca:	85 db                	test   %ebx,%ebx
c0103dcc:	0f 8e de 07 00 00    	jle    c01045b0 <_dtoa_r+0xb50>
c0103dd2:	89 d8                	mov    %ebx,%eax
c0103dd4:	83 e0 0f             	and    $0xf,%eax
c0103dd7:	dd 04 c5 c0 89 10 c0 	fldl   -0x3fef7640(,%eax,8)
c0103dde:	89 d8                	mov    %ebx,%eax
c0103de0:	c1 f8 04             	sar    $0x4,%eax
c0103de3:	a8 10                	test   $0x10,%al
c0103de5:	0f 84 cd 05 00 00    	je     c01043b8 <_dtoa_r+0x958>
c0103deb:	dd 05 a0 89 10 c0    	fldl   0xc01089a0
c0103df1:	83 e0 0f             	and    $0xf,%eax
c0103df4:	b9 03 00 00 00       	mov    $0x3,%ecx
c0103df9:	d8 fa                	fdivr  %st(2),%st
c0103dfb:	85 c0                	test   %eax,%eax
c0103dfd:	74 22                	je     c0103e21 <_dtoa_r+0x3c1>
c0103dff:	31 d2                	xor    %edx,%edx
c0103e01:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0103e08:	a8 01                	test   $0x1,%al
c0103e0a:	74 0e                	je     c0103e1a <_dtoa_r+0x3ba>
c0103e0c:	d9 c9                	fxch   %st(1)
c0103e0e:	dc 0c d5 80 89 10 c0 	fmull  -0x3fef7680(,%edx,8)
c0103e15:	d9 c9                	fxch   %st(1)
c0103e17:	83 c1 01             	add    $0x1,%ecx
c0103e1a:	83 c2 01             	add    $0x1,%edx
c0103e1d:	d1 f8                	sar    %eax
c0103e1f:	75 e7                	jne    c0103e08 <_dtoa_r+0x3a8>
c0103e21:	de f1                	fdivp  %st,%st(1)
c0103e23:	8b 45 9c             	mov    -0x64(%ebp),%eax
c0103e26:	85 c0                	test   %eax,%eax
c0103e28:	74 0a                	je     c0103e34 <_dtoa_r+0x3d4>
c0103e2a:	d9 e8                	fld1   
c0103e2c:	df e9                	fucomip %st(1),%st
c0103e2e:	0f 87 92 0b 00 00    	ja     c01049c6 <_dtoa_r+0xf66>
c0103e34:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
c0103e37:	8b 45 a8             	mov    -0x58(%ebp),%eax
c0103e3a:	db 45 d4             	fildl  -0x2c(%ebp)
c0103e3d:	d8 c9                	fmul   %st(1),%st
c0103e3f:	d8 05 dc 88 10 c0    	fadds  0xc01088dc
c0103e45:	dd 5d c0             	fstpl  -0x40(%ebp)
c0103e48:	81 6d c4 00 00 40 03 	subl   $0x3400000,-0x3c(%ebp)
c0103e4f:	85 c0                	test   %eax,%eax
c0103e51:	0f 84 89 05 00 00    	je     c01043e0 <_dtoa_r+0x980>
c0103e57:	8b 45 b8             	mov    -0x48(%ebp),%eax
c0103e5a:	8b 4d a8             	mov    -0x58(%ebp),%ecx
c0103e5d:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c0103e60:	8b 45 98             	mov    -0x68(%ebp),%eax
c0103e63:	85 c0                	test   %eax,%eax
c0103e65:	0f 84 b5 07 00 00    	je     c0104620 <_dtoa_r+0xbc0>
c0103e6b:	d9 05 e4 88 10 c0    	flds   0xc01088e4
c0103e71:	8d 57 01             	lea    0x1(%edi),%edx
c0103e74:	dc 34 cd b8 89 10 c0 	fdivl  -0x3fef7648(,%ecx,8)
c0103e7b:	d9 7d d2             	fnstcw -0x2e(%ebp)
c0103e7e:	0f b7 45 d2          	movzwl -0x2e(%ebp),%eax
c0103e82:	b4 0c                	mov    $0xc,%ah
c0103e84:	66 89 45 d0          	mov    %ax,-0x30(%ebp)
c0103e88:	dc 65 c0             	fsubl  -0x40(%ebp)
c0103e8b:	d9 c9                	fxch   %st(1)
c0103e8d:	d9 6d d0             	fldcw  -0x30(%ebp)
c0103e90:	db 55 d4             	fistl  -0x2c(%ebp)
c0103e93:	d9 6d d2             	fldcw  -0x2e(%ebp)
c0103e96:	8b 45 d4             	mov    -0x2c(%ebp),%eax
c0103e99:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c0103e9c:	83 c0 30             	add    $0x30,%eax
c0103e9f:	db 45 d4             	fildl  -0x2c(%ebp)
c0103ea2:	de e9                	fsubrp %st,%st(1)
c0103ea4:	d9 c9                	fxch   %st(1)
c0103ea6:	88 07                	mov    %al,(%edi)
c0103ea8:	db e9                	fucomi %st(1),%st
c0103eaa:	77 7f                	ja     c0103f2b <_dtoa_r+0x4cb>
c0103eac:	d9 c1                	fld    %st(1)
c0103eae:	d8 2d d4 88 10 c0    	fsubrs 0xc01088d4
c0103eb4:	d9 c9                	fxch   %st(1)
c0103eb6:	db e9                	fucomi %st(1),%st
c0103eb8:	dd d9                	fstp   %st(1)
c0103eba:	0f 87 33 0c 00 00    	ja     c0104af3 <_dtoa_r+0x1093>
c0103ec0:	83 f9 01             	cmp    $0x1,%ecx
c0103ec3:	0f 8e c4 06 00 00    	jle    c010458d <_dtoa_r+0xb2d>
c0103ec9:	01 f9                	add    %edi,%ecx
c0103ecb:	d9 05 d8 88 10 c0    	flds   0xc01088d8
c0103ed1:	eb 25                	jmp    c0103ef8 <_dtoa_r+0x498>
c0103ed3:	90                   	nop
c0103ed4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0103ed8:	d9 c1                	fld    %st(1)
c0103eda:	d8 2d d4 88 10 c0    	fsubrs 0xc01088d4
c0103ee0:	d9 c9                	fxch   %st(1)
c0103ee2:	db e9                	fucomi %st(1),%st
c0103ee4:	dd d9                	fstp   %st(1)
c0103ee6:	0f 87 14 0c 00 00    	ja     c0104b00 <_dtoa_r+0x10a0>
c0103eec:	39 ca                	cmp    %ecx,%edx
c0103eee:	0f 84 a4 06 00 00    	je     c0104598 <_dtoa_r+0xb38>
c0103ef4:	d9 c9                	fxch   %st(1)
c0103ef6:	d9 ca                	fxch   %st(2)
c0103ef8:	dc c9                	fmul   %st,%st(1)
c0103efa:	83 c2 01             	add    $0x1,%edx
c0103efd:	dc ca                	fmul   %st,%st(2)
c0103eff:	d9 ca                	fxch   %st(2)
c0103f01:	d9 6d d0             	fldcw  -0x30(%ebp)
c0103f04:	db 55 d4             	fistl  -0x2c(%ebp)
c0103f07:	d9 6d d2             	fldcw  -0x2e(%ebp)
c0103f0a:	8b 45 d4             	mov    -0x2c(%ebp),%eax
c0103f0d:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c0103f10:	83 c0 30             	add    $0x30,%eax
c0103f13:	db 45 d4             	fildl  -0x2c(%ebp)
c0103f16:	de e9                	fsubrp %st,%st(1)
c0103f18:	d9 c9                	fxch   %st(1)
c0103f1a:	88 42 ff             	mov    %al,-0x1(%edx)
c0103f1d:	db e9                	fucomi %st(1),%st
c0103f1f:	76 b7                	jbe    c0103ed8 <_dtoa_r+0x478>
c0103f21:	dd d8                	fstp   %st(0)
c0103f23:	dd d8                	fstp   %st(0)
c0103f25:	dd d8                	fstp   %st(0)
c0103f27:	dd d8                	fstp   %st(0)
c0103f29:	eb 06                	jmp    c0103f31 <_dtoa_r+0x4d1>
c0103f2b:	dd d8                	fstp   %st(0)
c0103f2d:	dd d8                	fstp   %st(0)
c0103f2f:	dd d8                	fstp   %st(0)
c0103f31:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0103f34:	89 fb                	mov    %edi,%ebx
c0103f36:	89 d7                	mov    %edx,%edi
c0103f38:	89 45 b8             	mov    %eax,-0x48(%ebp)
c0103f3b:	e9 70 03 00 00       	jmp    c01042b0 <_dtoa_r+0x850>
c0103f40:	c7 45 14 00 00 00 00 	movl   $0x0,0x14(%ebp)
c0103f47:	c7 46 44 00 00 00 00 	movl   $0x0,0x44(%esi)
c0103f4e:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c0103f55:	00 
c0103f56:	89 34 24             	mov    %esi,(%esp)
c0103f59:	e8 32 16 00 00       	call   c0105590 <_Balloc>
c0103f5e:	c7 45 98 01 00 00 00 	movl   $0x1,-0x68(%ebp)
c0103f65:	c7 45 a8 ff ff ff ff 	movl   $0xffffffff,-0x58(%ebp)
c0103f6c:	c7 45 90 ff ff ff ff 	movl   $0xffffffff,-0x70(%ebp)
c0103f73:	c7 45 18 00 00 00 00 	movl   $0x0,0x18(%ebp)
c0103f7a:	89 c7                	mov    %eax,%edi
c0103f7c:	89 46 40             	mov    %eax,0x40(%esi)
c0103f7f:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0103f82:	85 c0                	test   %eax,%eax
c0103f84:	0f 88 2e 01 00 00    	js     c01040b8 <_dtoa_r+0x658>
c0103f8a:	83 7d b8 0e          	cmpl   $0xe,-0x48(%ebp)
c0103f8e:	0f 8f 24 01 00 00    	jg     c01040b8 <_dtoa_r+0x658>
c0103f94:	8b 45 b8             	mov    -0x48(%ebp),%eax
c0103f97:	dd 04 c5 c0 89 10 c0 	fldl   -0x3fef7640(,%eax,8)
c0103f9e:	8b 45 a8             	mov    -0x58(%ebp),%eax
c0103fa1:	85 c0                	test   %eax,%eax
c0103fa3:	7f 0e                	jg     c0103fb3 <_dtoa_r+0x553>
c0103fa5:	8b 45 18             	mov    0x18(%ebp),%eax
c0103fa8:	c1 e8 1f             	shr    $0x1f,%eax
c0103fab:	84 c0                	test   %al,%al
c0103fad:	0f 85 9d 07 00 00    	jne    c0104750 <_dtoa_r+0xcf0>
c0103fb3:	dd 45 c0             	fldl   -0x40(%ebp)
c0103fb6:	d9 c0                	fld    %st(0)
c0103fb8:	d8 f2                	fdiv   %st(2),%st
c0103fba:	d9 7d d2             	fnstcw -0x2e(%ebp)
c0103fbd:	83 7d a8 01          	cmpl   $0x1,-0x58(%ebp)
c0103fc1:	0f b7 45 d2          	movzwl -0x2e(%ebp),%eax
c0103fc5:	b4 0c                	mov    $0xc,%ah
c0103fc7:	66 89 45 d0          	mov    %ax,-0x30(%ebp)
c0103fcb:	8d 47 01             	lea    0x1(%edi),%eax
c0103fce:	89 45 c0             	mov    %eax,-0x40(%ebp)
c0103fd1:	d9 6d d0             	fldcw  -0x30(%ebp)
c0103fd4:	db 5d d4             	fistpl -0x2c(%ebp)
c0103fd7:	d9 6d d2             	fldcw  -0x2e(%ebp)
c0103fda:	8b 55 d4             	mov    -0x2c(%ebp),%edx
c0103fdd:	89 55 d4             	mov    %edx,-0x2c(%ebp)
c0103fe0:	8d 42 30             	lea    0x30(%edx),%eax
c0103fe3:	db 45 d4             	fildl  -0x2c(%ebp)
c0103fe6:	d8 ca                	fmul   %st(2),%st
c0103fe8:	88 07                	mov    %al,(%edi)
c0103fea:	de e9                	fsubrp %st,%st(1)
c0103fec:	74 66                	je     c0104054 <_dtoa_r+0x5f4>
c0103fee:	d8 0d d8 88 10 c0    	fmuls  0xc01088d8
c0103ff4:	d9 ee                	fldz   
c0103ff6:	d9 c9                	fxch   %st(1)
c0103ff8:	db e9                	fucomi %st(1),%st
c0103ffa:	dd d9                	fstp   %st(1)
c0103ffc:	0f 8b 33 0c 00 00    	jnp    c0104c35 <_dtoa_r+0x11d5>
c0104002:	8b 5d a8             	mov    -0x58(%ebp),%ebx
c0104005:	8d 47 02             	lea    0x2(%edi),%eax
c0104008:	d9 05 d8 88 10 c0    	flds   0xc01088d8
c010400e:	01 fb                	add    %edi,%ebx
c0104010:	eb 19                	jmp    c010402b <_dtoa_r+0x5cb>
c0104012:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0104018:	dc c9                	fmul   %st,%st(1)
c010401a:	83 c0 01             	add    $0x1,%eax
c010401d:	d9 ee                	fldz   
c010401f:	d9 ca                	fxch   %st(2)
c0104021:	db ea                	fucomi %st(2),%st
c0104023:	dd da                	fstp   %st(2)
c0104025:	0f 8b 73 09 00 00    	jnp    c010499e <_dtoa_r+0xf3e>
c010402b:	d9 c1                	fld    %st(1)
c010402d:	39 d8                	cmp    %ebx,%eax
c010402f:	d8 f3                	fdiv   %st(3),%st
c0104031:	89 45 c0             	mov    %eax,-0x40(%ebp)
c0104034:	d9 6d d0             	fldcw  -0x30(%ebp)
c0104037:	db 5d d4             	fistpl -0x2c(%ebp)
c010403a:	d9 6d d2             	fldcw  -0x2e(%ebp)
c010403d:	8b 55 d4             	mov    -0x2c(%ebp),%edx
c0104040:	89 55 d4             	mov    %edx,-0x2c(%ebp)
c0104043:	8d 4a 30             	lea    0x30(%edx),%ecx
c0104046:	db 45 d4             	fildl  -0x2c(%ebp)
c0104049:	d8 cb                	fmul   %st(3),%st
c010404b:	88 48 ff             	mov    %cl,-0x1(%eax)
c010404e:	de ea                	fsubrp %st,%st(2)
c0104050:	75 c6                	jne    c0104018 <_dtoa_r+0x5b8>
c0104052:	dd d8                	fstp   %st(0)
c0104054:	d8 c0                	fadd   %st(0),%st
c0104056:	db e9                	fucomi %st(1),%st
c0104058:	77 1e                	ja     c0104078 <_dtoa_r+0x618>
c010405a:	d9 c9                	fxch   %st(1)
c010405c:	df e9                	fucomip %st(1),%st
c010405e:	dd d8                	fstp   %st(0)
c0104060:	0f 8a 44 09 00 00    	jp     c01049aa <_dtoa_r+0xf4a>
c0104066:	0f 85 3e 09 00 00    	jne    c01049aa <_dtoa_r+0xf4a>
c010406c:	83 e2 01             	and    $0x1,%edx
c010406f:	90                   	nop
c0104070:	0f 84 34 09 00 00    	je     c01049aa <_dtoa_r+0xf4a>
c0104076:	eb 04                	jmp    c010407c <_dtoa_r+0x61c>
c0104078:	dd d8                	fstp   %st(0)
c010407a:	dd d8                	fstp   %st(0)
c010407c:	8b 4d c0             	mov    -0x40(%ebp),%ecx
c010407f:	89 fb                	mov    %edi,%ebx
c0104081:	0f b6 41 ff          	movzbl -0x1(%ecx),%eax
c0104085:	89 cf                	mov    %ecx,%edi
c0104087:	8b 4d b8             	mov    -0x48(%ebp),%ecx
c010408a:	89 4d b4             	mov    %ecx,-0x4c(%ebp)
c010408d:	eb 0f                	jmp    c010409e <_dtoa_r+0x63e>
c010408f:	90                   	nop
c0104090:	39 d3                	cmp    %edx,%ebx
c0104092:	0f 84 75 09 00 00    	je     c0104a0d <_dtoa_r+0xfad>
c0104098:	0f b6 42 ff          	movzbl -0x1(%edx),%eax
c010409c:	89 d7                	mov    %edx,%edi
c010409e:	3c 39                	cmp    $0x39,%al
c01040a0:	8d 57 ff             	lea    -0x1(%edi),%edx
c01040a3:	74 eb                	je     c0104090 <_dtoa_r+0x630>
c01040a5:	8b 4d b4             	mov    -0x4c(%ebp),%ecx
c01040a8:	83 c0 01             	add    $0x1,%eax
c01040ab:	88 02                	mov    %al,(%edx)
c01040ad:	89 4d b8             	mov    %ecx,-0x48(%ebp)
c01040b0:	e9 fb 01 00 00       	jmp    c01042b0 <_dtoa_r+0x850>
c01040b5:	8d 76 00             	lea    0x0(%esi),%esi
c01040b8:	8b 4d 98             	mov    -0x68(%ebp),%ecx
c01040bb:	85 c9                	test   %ecx,%ecx
c01040bd:	0f 85 9d 02 00 00    	jne    c0104360 <_dtoa_r+0x900>
c01040c3:	8b 55 b0             	mov    -0x50(%ebp),%edx
c01040c6:	8b 5d a0             	mov    -0x60(%ebp),%ebx
c01040c9:	c7 45 b4 00 00 00 00 	movl   $0x0,-0x4c(%ebp)
c01040d0:	8b 45 ac             	mov    -0x54(%ebp),%eax
c01040d3:	85 c0                	test   %eax,%eax
c01040d5:	7e 14                	jle    c01040eb <_dtoa_r+0x68b>
c01040d7:	85 db                	test   %ebx,%ebx
c01040d9:	7e 10                	jle    c01040eb <_dtoa_r+0x68b>
c01040db:	8b 45 ac             	mov    -0x54(%ebp),%eax
c01040de:	39 d8                	cmp    %ebx,%eax
c01040e0:	0f 4f c3             	cmovg  %ebx,%eax
c01040e3:	29 45 a0             	sub    %eax,-0x60(%ebp)
c01040e6:	29 c3                	sub    %eax,%ebx
c01040e8:	29 45 ac             	sub    %eax,-0x54(%ebp)
c01040eb:	8b 45 b0             	mov    -0x50(%ebp),%eax
c01040ee:	85 c0                	test   %eax,%eax
c01040f0:	7e 61                	jle    c0104153 <_dtoa_r+0x6f3>
c01040f2:	8b 45 98             	mov    -0x68(%ebp),%eax
c01040f5:	85 c0                	test   %eax,%eax
c01040f7:	0f 84 72 04 00 00    	je     c010456f <_dtoa_r+0xb0f>
c01040fd:	85 d2                	test   %edx,%edx
c01040ff:	7e 47                	jle    c0104148 <_dtoa_r+0x6e8>
c0104101:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0104104:	89 54 24 08          	mov    %edx,0x8(%esp)
c0104108:	89 34 24             	mov    %esi,(%esp)
c010410b:	89 55 88             	mov    %edx,-0x78(%ebp)
c010410e:	89 44 24 04          	mov    %eax,0x4(%esp)
c0104112:	e8 f9 19 00 00       	call   c0105b10 <__pow5mult>
c0104117:	8b 4d a4             	mov    -0x5c(%ebp),%ecx
c010411a:	89 34 24             	mov    %esi,(%esp)
c010411d:	89 4c 24 08          	mov    %ecx,0x8(%esp)
c0104121:	89 44 24 04          	mov    %eax,0x4(%esp)
c0104125:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c0104128:	e8 13 18 00 00       	call   c0105940 <__multiply>
c010412d:	8b 4d a4             	mov    -0x5c(%ebp),%ecx
c0104130:	89 34 24             	mov    %esi,(%esp)
c0104133:	89 4c 24 04          	mov    %ecx,0x4(%esp)
c0104137:	89 45 8c             	mov    %eax,-0x74(%ebp)
c010413a:	e8 f1 14 00 00       	call   c0105630 <_Bfree>
c010413f:	8b 45 8c             	mov    -0x74(%ebp),%eax
c0104142:	8b 55 88             	mov    -0x78(%ebp),%edx
c0104145:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c0104148:	8b 45 b0             	mov    -0x50(%ebp),%eax
c010414b:	29 d0                	sub    %edx,%eax
c010414d:	0f 85 1f 04 00 00    	jne    c0104572 <_dtoa_r+0xb12>
c0104153:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c010415a:	00 
c010415b:	89 34 24             	mov    %esi,(%esp)
c010415e:	e8 ad 17 00 00       	call   c0105910 <__i2b>
c0104163:	8b 4d 94             	mov    -0x6c(%ebp),%ecx
c0104166:	85 c9                	test   %ecx,%ecx
c0104168:	89 45 b0             	mov    %eax,-0x50(%ebp)
c010416b:	7e 13                	jle    c0104180 <_dtoa_r+0x720>
c010416d:	89 4c 24 08          	mov    %ecx,0x8(%esp)
c0104171:	89 44 24 04          	mov    %eax,0x4(%esp)
c0104175:	89 34 24             	mov    %esi,(%esp)
c0104178:	e8 93 19 00 00       	call   c0105b10 <__pow5mult>
c010417d:	89 45 b0             	mov    %eax,-0x50(%ebp)
c0104180:	83 7d 14 01          	cmpl   $0x1,0x14(%ebp)
c0104184:	c7 45 8c 00 00 00 00 	movl   $0x0,-0x74(%ebp)
c010418b:	0f 8e f7 05 00 00    	jle    c0104788 <_dtoa_r+0xd28>
c0104191:	8b 45 94             	mov    -0x6c(%ebp),%eax
c0104194:	ba 01 00 00 00       	mov    $0x1,%edx
c0104199:	85 c0                	test   %eax,%eax
c010419b:	0f 85 27 05 00 00    	jne    c01046c8 <_dtoa_r+0xc68>
c01041a1:	8b 45 ac             	mov    -0x54(%ebp),%eax
c01041a4:	01 d0                	add    %edx,%eax
c01041a6:	83 e0 1f             	and    $0x1f,%eax
c01041a9:	89 c2                	mov    %eax,%edx
c01041ab:	0f 84 57 03 00 00    	je     c0104508 <_dtoa_r+0xaa8>
c01041b1:	b8 20 00 00 00       	mov    $0x20,%eax
c01041b6:	29 d0                	sub    %edx,%eax
c01041b8:	83 f8 04             	cmp    $0x4,%eax
c01041bb:	0f 8e 8c 0a 00 00    	jle    c0104c4d <_dtoa_r+0x11ed>
c01041c1:	b8 1c 00 00 00       	mov    $0x1c,%eax
c01041c6:	29 d0                	sub    %edx,%eax
c01041c8:	01 45 a0             	add    %eax,-0x60(%ebp)
c01041cb:	01 c3                	add    %eax,%ebx
c01041cd:	01 45 ac             	add    %eax,-0x54(%ebp)
c01041d0:	8b 45 a0             	mov    -0x60(%ebp),%eax
c01041d3:	85 c0                	test   %eax,%eax
c01041d5:	7e 16                	jle    c01041ed <_dtoa_r+0x78d>
c01041d7:	89 44 24 08          	mov    %eax,0x8(%esp)
c01041db:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c01041de:	89 34 24             	mov    %esi,(%esp)
c01041e1:	89 44 24 04          	mov    %eax,0x4(%esp)
c01041e5:	e8 46 1a 00 00       	call   c0105c30 <__lshift>
c01041ea:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c01041ed:	8b 45 ac             	mov    -0x54(%ebp),%eax
c01041f0:	85 c0                	test   %eax,%eax
c01041f2:	7e 16                	jle    c010420a <_dtoa_r+0x7aa>
c01041f4:	89 44 24 08          	mov    %eax,0x8(%esp)
c01041f8:	8b 45 b0             	mov    -0x50(%ebp),%eax
c01041fb:	89 34 24             	mov    %esi,(%esp)
c01041fe:	89 44 24 04          	mov    %eax,0x4(%esp)
c0104202:	e8 29 1a 00 00       	call   c0105c30 <__lshift>
c0104207:	89 45 b0             	mov    %eax,-0x50(%ebp)
c010420a:	8b 45 9c             	mov    -0x64(%ebp),%eax
c010420d:	85 c0                	test   %eax,%eax
c010420f:	0f 85 d3 04 00 00    	jne    c01046e8 <_dtoa_r+0xc88>
c0104215:	83 7d 14 02          	cmpl   $0x2,0x14(%ebp)
c0104219:	0f 8e 11 02 00 00    	jle    c0104430 <_dtoa_r+0x9d0>
c010421f:	8b 45 a8             	mov    -0x58(%ebp),%eax
c0104222:	85 c0                	test   %eax,%eax
c0104224:	0f 8f 06 02 00 00    	jg     c0104430 <_dtoa_r+0x9d0>
c010422a:	8b 45 a8             	mov    -0x58(%ebp),%eax
c010422d:	85 c0                	test   %eax,%eax
c010422f:	0f 85 e0 01 00 00    	jne    c0104415 <_dtoa_r+0x9b5>
c0104235:	8b 45 b0             	mov    -0x50(%ebp),%eax
c0104238:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c010423f:	00 
c0104240:	c7 44 24 08 05 00 00 	movl   $0x5,0x8(%esp)
c0104247:	00 
c0104248:	89 34 24             	mov    %esi,(%esp)
c010424b:	89 44 24 04          	mov    %eax,0x4(%esp)
c010424f:	e8 fc 13 00 00       	call   c0105650 <__multadd>
c0104254:	89 45 b0             	mov    %eax,-0x50(%ebp)
c0104257:	89 44 24 04          	mov    %eax,0x4(%esp)
c010425b:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c010425e:	89 04 24             	mov    %eax,(%esp)
c0104261:	e8 ea 1a 00 00       	call   c0105d50 <__mcmp>
c0104266:	85 c0                	test   %eax,%eax
c0104268:	0f 8e a7 01 00 00    	jle    c0104415 <_dtoa_r+0x9b5>
c010426e:	83 45 b8 01          	addl   $0x1,-0x48(%ebp)
c0104272:	89 fb                	mov    %edi,%ebx
c0104274:	83 c7 01             	add    $0x1,%edi
c0104277:	c6 47 ff 31          	movb   $0x31,-0x1(%edi)
c010427b:	c7 45 c0 00 00 00 00 	movl   $0x0,-0x40(%ebp)
c0104282:	8b 45 b0             	mov    -0x50(%ebp),%eax
c0104285:	89 34 24             	mov    %esi,(%esp)
c0104288:	89 44 24 04          	mov    %eax,0x4(%esp)
c010428c:	e8 9f 13 00 00       	call   c0105630 <_Bfree>
c0104291:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0104294:	85 c0                	test   %eax,%eax
c0104296:	74 18                	je     c01042b0 <_dtoa_r+0x850>
c0104298:	39 45 c0             	cmp    %eax,-0x40(%ebp)
c010429b:	0f 85 a7 02 00 00    	jne    c0104548 <_dtoa_r+0xae8>
c01042a1:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c01042a4:	89 34 24             	mov    %esi,(%esp)
c01042a7:	89 44 24 04          	mov    %eax,0x4(%esp)
c01042ab:	e8 80 13 00 00       	call   c0105630 <_Bfree>
c01042b0:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c01042b3:	89 34 24             	mov    %esi,(%esp)
c01042b6:	89 44 24 04          	mov    %eax,0x4(%esp)
c01042ba:	e8 71 13 00 00       	call   c0105630 <_Bfree>
c01042bf:	8b 45 b8             	mov    -0x48(%ebp),%eax
c01042c2:	8b 75 1c             	mov    0x1c(%ebp),%esi
c01042c5:	c6 07 00             	movb   $0x0,(%edi)
c01042c8:	83 c0 01             	add    $0x1,%eax
c01042cb:	89 06                	mov    %eax,(%esi)
c01042cd:	8b 45 24             	mov    0x24(%ebp),%eax
c01042d0:	85 c0                	test   %eax,%eax
c01042d2:	0f 84 90 02 00 00    	je     c0104568 <_dtoa_r+0xb08>
c01042d8:	8b 45 24             	mov    0x24(%ebp),%eax
c01042db:	89 38                	mov    %edi,(%eax)
c01042dd:	81 c4 8c 00 00 00    	add    $0x8c,%esp
c01042e3:	89 d8                	mov    %ebx,%eax
c01042e5:	5b                   	pop    %ebx
c01042e6:	5e                   	pop    %esi
c01042e7:	5f                   	pop    %edi
c01042e8:	5d                   	pop    %ebp
c01042e9:	c3                   	ret    
c01042ea:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c01042f0:	db 45 b8             	fildl  -0x48(%ebp)
c01042f3:	df e9                	fucomip %st(1),%st
c01042f5:	dd d8                	fstp   %st(0)
c01042f7:	7a 06                	jp     c01042ff <_dtoa_r+0x89f>
c01042f9:	0f 84 cc f8 ff ff    	je     c0103bcb <_dtoa_r+0x16b>
c01042ff:	83 6d b8 01          	subl   $0x1,-0x48(%ebp)
c0104303:	e9 c3 f8 ff ff       	jmp    c0103bcb <_dtoa_r+0x16b>
c0104308:	8b 45 b8             	mov    -0x48(%ebp),%eax
c010430b:	29 45 a0             	sub    %eax,-0x60(%ebp)
c010430e:	c7 45 94 00 00 00 00 	movl   $0x0,-0x6c(%ebp)
c0104315:	f7 d8                	neg    %eax
c0104317:	89 45 b0             	mov    %eax,-0x50(%ebp)
c010431a:	e9 0c f9 ff ff       	jmp    c0103c2b <_dtoa_r+0x1cb>
c010431f:	90                   	nop
c0104320:	f7 d8                	neg    %eax
c0104322:	89 45 a0             	mov    %eax,-0x60(%ebp)
c0104325:	c7 45 ac 00 00 00 00 	movl   $0x0,-0x54(%ebp)
c010432c:	e9 e2 f8 ff ff       	jmp    c0103c13 <_dtoa_r+0x1b3>
c0104331:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0104338:	8b 45 c0             	mov    -0x40(%ebp),%eax
c010433b:	b9 ee fb ff ff       	mov    $0xfffffbee,%ecx
c0104340:	29 d9                	sub    %ebx,%ecx
c0104342:	d3 e0                	shl    %cl,%eax
c0104344:	e9 1b f8 ff ff       	jmp    c0103b64 <_dtoa_r+0x104>
c0104349:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0104350:	c7 45 9c 00 00 00 00 	movl   $0x0,-0x64(%ebp)
c0104357:	e9 a0 f8 ff ff       	jmp    c0103bfc <_dtoa_r+0x19c>
c010435c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0104360:	83 7d 14 01          	cmpl   $0x1,0x14(%ebp)
c0104364:	0f 8e fe 06 00 00    	jle    c0104a68 <_dtoa_r+0x1008>
c010436a:	8b 45 a8             	mov    -0x58(%ebp),%eax
c010436d:	83 e8 01             	sub    $0x1,%eax
c0104370:	39 45 b0             	cmp    %eax,-0x50(%ebp)
c0104373:	0f 8c 3b 06 00 00    	jl     c01049b4 <_dtoa_r+0xf54>
c0104379:	8b 55 b0             	mov    -0x50(%ebp),%edx
c010437c:	29 c2                	sub    %eax,%edx
c010437e:	8b 4d a8             	mov    -0x58(%ebp),%ecx
c0104381:	8b 5d a0             	mov    -0x60(%ebp),%ebx
c0104384:	85 c9                	test   %ecx,%ecx
c0104386:	89 c8                	mov    %ecx,%eax
c0104388:	0f 88 83 07 00 00    	js     c0104b11 <_dtoa_r+0x10b1>
c010438e:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c0104395:	00 
c0104396:	89 34 24             	mov    %esi,(%esp)
c0104399:	89 55 8c             	mov    %edx,-0x74(%ebp)
c010439c:	01 45 a0             	add    %eax,-0x60(%ebp)
c010439f:	01 45 ac             	add    %eax,-0x54(%ebp)
c01043a2:	e8 69 15 00 00       	call   c0105910 <__i2b>
c01043a7:	8b 55 8c             	mov    -0x74(%ebp),%edx
c01043aa:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c01043ad:	e9 1e fd ff ff       	jmp    c01040d0 <_dtoa_r+0x670>
c01043b2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c01043b8:	d9 c1                	fld    %st(1)
c01043ba:	b9 02 00 00 00       	mov    $0x2,%ecx
c01043bf:	e9 37 fa ff ff       	jmp    c0103dfb <_dtoa_r+0x39b>
c01043c4:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
c01043c7:	db 45 d4             	fildl  -0x2c(%ebp)
c01043ca:	d8 c9                	fmul   %st(1),%st
c01043cc:	d8 05 dc 88 10 c0    	fadds  0xc01088dc
c01043d2:	dd 5d c0             	fstpl  -0x40(%ebp)
c01043d5:	81 6d c4 00 00 40 03 	subl   $0x3400000,-0x3c(%ebp)
c01043dc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c01043e0:	d8 25 e0 88 10 c0    	fsubs  0xc01088e0
c01043e6:	dd 45 c0             	fldl   -0x40(%ebp)
c01043e9:	d9 c9                	fxch   %st(1)
c01043eb:	db e9                	fucomi %st(1),%st
c01043ed:	0f 87 0d 02 00 00    	ja     c0104600 <_dtoa_r+0xba0>
c01043f3:	d9 c9                	fxch   %st(1)
c01043f5:	d9 e0                	fchs   
c01043f7:	df e9                	fucomip %st(1),%st
c01043f9:	dd d8                	fstp   %st(0)
c01043fb:	0f 86 a7 01 00 00    	jbe    c01045a8 <_dtoa_r+0xb48>
c0104401:	dd d8                	fstp   %st(0)
c0104403:	eb 02                	jmp    c0104407 <_dtoa_r+0x9a7>
c0104405:	dd d8                	fstp   %st(0)
c0104407:	c7 45 b0 00 00 00 00 	movl   $0x0,-0x50(%ebp)
c010440e:	c7 45 b4 00 00 00 00 	movl   $0x0,-0x4c(%ebp)
c0104415:	8b 45 18             	mov    0x18(%ebp),%eax
c0104418:	89 fb                	mov    %edi,%ebx
c010441a:	c7 45 c0 00 00 00 00 	movl   $0x0,-0x40(%ebp)
c0104421:	f7 d0                	not    %eax
c0104423:	89 45 b8             	mov    %eax,-0x48(%ebp)
c0104426:	e9 57 fe ff ff       	jmp    c0104282 <_dtoa_r+0x822>
c010442b:	90                   	nop
c010442c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0104430:	8b 45 98             	mov    -0x68(%ebp),%eax
c0104433:	85 c0                	test   %eax,%eax
c0104435:	0f 85 c5 03 00 00    	jne    c0104800 <_dtoa_r+0xda0>
c010443b:	89 75 08             	mov    %esi,0x8(%ebp)
c010443e:	bb 01 00 00 00       	mov    $0x1,%ebx
c0104443:	8b 75 a4             	mov    -0x5c(%ebp),%esi
c0104446:	eb 24                	jmp    c010446c <_dtoa_r+0xa0c>
c0104448:	8b 45 08             	mov    0x8(%ebp),%eax
c010444b:	83 c3 01             	add    $0x1,%ebx
c010444e:	89 74 24 04          	mov    %esi,0x4(%esp)
c0104452:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c0104459:	00 
c010445a:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c0104461:	00 
c0104462:	89 04 24             	mov    %eax,(%esp)
c0104465:	e8 e6 11 00 00       	call   c0105650 <__multadd>
c010446a:	89 c6                	mov    %eax,%esi
c010446c:	8b 55 b0             	mov    -0x50(%ebp),%edx
c010446f:	89 f0                	mov    %esi,%eax
c0104471:	e8 1a f4 ff ff       	call   c0103890 <quorem>
c0104476:	83 c0 30             	add    $0x30,%eax
c0104479:	3b 5d a8             	cmp    -0x58(%ebp),%ebx
c010447c:	88 44 1f ff          	mov    %al,-0x1(%edi,%ebx,1)
c0104480:	7c c6                	jl     c0104448 <_dtoa_r+0x9e8>
c0104482:	89 45 a0             	mov    %eax,-0x60(%ebp)
c0104485:	8b 45 a8             	mov    -0x58(%ebp),%eax
c0104488:	ba 01 00 00 00       	mov    $0x1,%edx
c010448d:	89 75 a4             	mov    %esi,-0x5c(%ebp)
c0104490:	8b 75 08             	mov    0x8(%ebp),%esi
c0104493:	c7 45 c0 00 00 00 00 	movl   $0x0,-0x40(%ebp)
c010449a:	85 c0                	test   %eax,%eax
c010449c:	0f 4f d0             	cmovg  %eax,%edx
c010449f:	01 fa                	add    %edi,%edx
c01044a1:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c01044a4:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
c01044ab:	00 
c01044ac:	89 34 24             	mov    %esi,(%esp)
c01044af:	89 55 ac             	mov    %edx,-0x54(%ebp)
c01044b2:	89 44 24 04          	mov    %eax,0x4(%esp)
c01044b6:	e8 75 17 00 00       	call   c0105c30 <__lshift>
c01044bb:	8b 5d b0             	mov    -0x50(%ebp),%ebx
c01044be:	89 5c 24 04          	mov    %ebx,0x4(%esp)
c01044c2:	89 04 24             	mov    %eax,(%esp)
c01044c5:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c01044c8:	e8 83 18 00 00       	call   c0105d50 <__mcmp>
c01044cd:	8b 55 ac             	mov    -0x54(%ebp),%edx
c01044d0:	83 f8 00             	cmp    $0x0,%eax
c01044d3:	0f 8e 41 06 00 00    	jle    c0104b1a <_dtoa_r+0x10ba>
c01044d9:	0f b6 4a ff          	movzbl -0x1(%edx),%ecx
c01044dd:	eb 0f                	jmp    c01044ee <_dtoa_r+0xa8e>
c01044df:	90                   	nop
c01044e0:	39 c7                	cmp    %eax,%edi
c01044e2:	0f 84 70 05 00 00    	je     c0104a58 <_dtoa_r+0xff8>
c01044e8:	0f b6 48 ff          	movzbl -0x1(%eax),%ecx
c01044ec:	89 c2                	mov    %eax,%edx
c01044ee:	80 f9 39             	cmp    $0x39,%cl
c01044f1:	8d 42 ff             	lea    -0x1(%edx),%eax
c01044f4:	74 ea                	je     c01044e0 <_dtoa_r+0xa80>
c01044f6:	83 c1 01             	add    $0x1,%ecx
c01044f9:	89 fb                	mov    %edi,%ebx
c01044fb:	88 08                	mov    %cl,(%eax)
c01044fd:	89 d7                	mov    %edx,%edi
c01044ff:	e9 7e fd ff ff       	jmp    c0104282 <_dtoa_r+0x822>
c0104504:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0104508:	b8 1c 00 00 00       	mov    $0x1c,%eax
c010450d:	01 45 a0             	add    %eax,-0x60(%ebp)
c0104510:	01 c3                	add    %eax,%ebx
c0104512:	01 45 ac             	add    %eax,-0x54(%ebp)
c0104515:	e9 b6 fc ff ff       	jmp    c01041d0 <_dtoa_r+0x770>
c010451a:	ba 01 00 00 00       	mov    $0x1,%edx
c010451f:	c7 45 90 01 00 00 00 	movl   $0x1,-0x70(%ebp)
c0104526:	c7 45 a8 01 00 00 00 	movl   $0x1,-0x58(%ebp)
c010452d:	c7 45 18 01 00 00 00 	movl   $0x1,0x18(%ebp)
c0104534:	21 c2                	and    %eax,%edx
c0104536:	88 55 b4             	mov    %dl,-0x4c(%ebp)
c0104539:	31 d2                	xor    %edx,%edx
c010453b:	c7 46 44 00 00 00 00 	movl   $0x0,0x44(%esi)
c0104542:	e9 62 f8 ff ff       	jmp    c0103da9 <_dtoa_r+0x349>
c0104547:	90                   	nop
c0104548:	8b 55 c0             	mov    -0x40(%ebp),%edx
c010454b:	85 d2                	test   %edx,%edx
c010454d:	0f 84 4e fd ff ff    	je     c01042a1 <_dtoa_r+0x841>
c0104553:	8b 45 c0             	mov    -0x40(%ebp),%eax
c0104556:	89 34 24             	mov    %esi,(%esp)
c0104559:	89 44 24 04          	mov    %eax,0x4(%esp)
c010455d:	e8 ce 10 00 00       	call   c0105630 <_Bfree>
c0104562:	e9 3a fd ff ff       	jmp    c01042a1 <_dtoa_r+0x841>
c0104567:	90                   	nop
c0104568:	89 d8                	mov    %ebx,%eax
c010456a:	e9 89 f5 ff ff       	jmp    c0103af8 <_dtoa_r+0x98>
c010456f:	8b 45 b0             	mov    -0x50(%ebp),%eax
c0104572:	89 44 24 08          	mov    %eax,0x8(%esp)
c0104576:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c0104579:	89 34 24             	mov    %esi,(%esp)
c010457c:	89 44 24 04          	mov    %eax,0x4(%esp)
c0104580:	e8 8b 15 00 00       	call   c0105b10 <__pow5mult>
c0104585:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c0104588:	e9 c6 fb ff ff       	jmp    c0104153 <_dtoa_r+0x6f3>
c010458d:	dd d8                	fstp   %st(0)
c010458f:	dd d8                	fstp   %st(0)
c0104591:	eb 15                	jmp    c01045a8 <_dtoa_r+0xb48>
c0104593:	90                   	nop
c0104594:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0104598:	dd d8                	fstp   %st(0)
c010459a:	dd d8                	fstp   %st(0)
c010459c:	dd d8                	fstp   %st(0)
c010459e:	eb 08                	jmp    c01045a8 <_dtoa_r+0xb48>
c01045a0:	dd d8                	fstp   %st(0)
c01045a2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c01045a8:	dd 5d c0             	fstpl  -0x40(%ebp)
c01045ab:	e9 cf f9 ff ff       	jmp    c0103f7f <_dtoa_r+0x51f>
c01045b0:	8b 45 b8             	mov    -0x48(%ebp),%eax
c01045b3:	f7 d8                	neg    %eax
c01045b5:	0f 84 6a 04 00 00    	je     c0104a25 <_dtoa_r+0xfc5>
c01045bb:	89 c2                	mov    %eax,%edx
c01045bd:	b9 02 00 00 00       	mov    $0x2,%ecx
c01045c2:	83 e2 0f             	and    $0xf,%edx
c01045c5:	c1 f8 04             	sar    $0x4,%eax
c01045c8:	dd 04 d5 c0 89 10 c0 	fldl   -0x3fef7640(,%edx,8)
c01045cf:	85 c0                	test   %eax,%eax
c01045d1:	d8 c9                	fmul   %st(1),%st
c01045d3:	0f 84 4a f8 ff ff    	je     c0103e23 <_dtoa_r+0x3c3>
c01045d9:	31 d2                	xor    %edx,%edx
c01045db:	90                   	nop
c01045dc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c01045e0:	a8 01                	test   $0x1,%al
c01045e2:	74 0a                	je     c01045ee <_dtoa_r+0xb8e>
c01045e4:	dc 0c d5 80 89 10 c0 	fmull  -0x3fef7680(,%edx,8)
c01045eb:	83 c1 01             	add    $0x1,%ecx
c01045ee:	83 c2 01             	add    $0x1,%edx
c01045f1:	d1 f8                	sar    %eax
c01045f3:	75 eb                	jne    c01045e0 <_dtoa_r+0xb80>
c01045f5:	e9 29 f8 ff ff       	jmp    c0103e23 <_dtoa_r+0x3c3>
c01045fa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0104600:	dd d8                	fstp   %st(0)
c0104602:	dd d8                	fstp   %st(0)
c0104604:	dd d8                	fstp   %st(0)
c0104606:	c7 45 b0 00 00 00 00 	movl   $0x0,-0x50(%ebp)
c010460d:	c7 45 b4 00 00 00 00 	movl   $0x0,-0x4c(%ebp)
c0104614:	e9 55 fc ff ff       	jmp    c010426e <_dtoa_r+0x80e>
c0104619:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0104620:	d9 7d d2             	fnstcw -0x2e(%ebp)
c0104623:	8d 41 ff             	lea    -0x1(%ecx),%eax
c0104626:	dd 45 c0             	fldl   -0x40(%ebp)
c0104629:	dc 0c c5 c0 89 10 c0 	fmull  -0x3fef7640(,%eax,8)
c0104630:	d9 c9                	fxch   %st(1)
c0104632:	89 45 88             	mov    %eax,-0x78(%ebp)
c0104635:	0f b7 45 d2          	movzwl -0x2e(%ebp),%eax
c0104639:	8d 57 01             	lea    0x1(%edi),%edx
c010463c:	8d 1c 0f             	lea    (%edi,%ecx,1),%ebx
c010463f:	b4 0c                	mov    $0xc,%ah
c0104641:	66 89 45 d0          	mov    %ax,-0x30(%ebp)
c0104645:	d9 6d d0             	fldcw  -0x30(%ebp)
c0104648:	db 55 d4             	fistl  -0x2c(%ebp)
c010464b:	d9 6d d2             	fldcw  -0x2e(%ebp)
c010464e:	8b 45 d4             	mov    -0x2c(%ebp),%eax
c0104651:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c0104654:	83 c0 30             	add    $0x30,%eax
c0104657:	83 f9 01             	cmp    $0x1,%ecx
c010465a:	db 45 d4             	fildl  -0x2c(%ebp)
c010465d:	de e9                	fsubrp %st,%st(1)
c010465f:	88 07                	mov    %al,(%edi)
c0104661:	89 d0                	mov    %edx,%eax
c0104663:	74 37                	je     c010469c <_dtoa_r+0xc3c>
c0104665:	d9 05 d8 88 10 c0    	flds   0xc01088d8
c010466b:	eb 05                	jmp    c0104672 <_dtoa_r+0xc12>
c010466d:	8d 76 00             	lea    0x0(%esi),%esi
c0104670:	d9 c9                	fxch   %st(1)
c0104672:	dc c9                	fmul   %st,%st(1)
c0104674:	d9 c9                	fxch   %st(1)
c0104676:	83 c0 01             	add    $0x1,%eax
c0104679:	d9 6d d0             	fldcw  -0x30(%ebp)
c010467c:	db 55 d4             	fistl  -0x2c(%ebp)
c010467f:	d9 6d d2             	fldcw  -0x2e(%ebp)
c0104682:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
c0104685:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
c0104688:	83 c1 30             	add    $0x30,%ecx
c010468b:	39 d8                	cmp    %ebx,%eax
c010468d:	db 45 d4             	fildl  -0x2c(%ebp)
c0104690:	de e9                	fsubrp %st,%st(1)
c0104692:	88 48 ff             	mov    %cl,-0x1(%eax)
c0104695:	75 d9                	jne    c0104670 <_dtoa_r+0xc10>
c0104697:	dd d9                	fstp   %st(1)
c0104699:	03 55 88             	add    -0x78(%ebp),%edx
c010469c:	d9 05 e4 88 10 c0    	flds   0xc01088e4
c01046a2:	d9 c2                	fld    %st(2)
c01046a4:	d8 c1                	fadd   %st(1),%st
c01046a6:	d9 ca                	fxch   %st(2)
c01046a8:	db ea                	fucomi %st(2),%st
c01046aa:	dd da                	fstp   %st(2)
c01046ac:	0f 86 7f 03 00 00    	jbe    c0104a31 <_dtoa_r+0xfd1>
c01046b2:	dd d8                	fstp   %st(0)
c01046b4:	dd d8                	fstp   %st(0)
c01046b6:	dd d8                	fstp   %st(0)
c01046b8:	dd d8                	fstp   %st(0)
c01046ba:	89 fb                	mov    %edi,%ebx
c01046bc:	0f b6 42 ff          	movzbl -0x1(%edx),%eax
c01046c0:	89 d7                	mov    %edx,%edi
c01046c2:	e9 d7 f9 ff ff       	jmp    c010409e <_dtoa_r+0x63e>
c01046c7:	90                   	nop
c01046c8:	8b 4d b0             	mov    -0x50(%ebp),%ecx
c01046cb:	8b 41 10             	mov    0x10(%ecx),%eax
c01046ce:	8b 44 81 10          	mov    0x10(%ecx,%eax,4),%eax
c01046d2:	89 04 24             	mov    %eax,(%esp)
c01046d5:	e8 56 11 00 00       	call   c0105830 <__hi0bits>
c01046da:	ba 20 00 00 00       	mov    $0x20,%edx
c01046df:	29 c2                	sub    %eax,%edx
c01046e1:	e9 bb fa ff ff       	jmp    c01041a1 <_dtoa_r+0x741>
c01046e6:	66 90                	xchg   %ax,%ax
c01046e8:	8b 45 b0             	mov    -0x50(%ebp),%eax
c01046eb:	89 44 24 04          	mov    %eax,0x4(%esp)
c01046ef:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c01046f2:	89 04 24             	mov    %eax,(%esp)
c01046f5:	e8 56 16 00 00       	call   c0105d50 <__mcmp>
c01046fa:	85 c0                	test   %eax,%eax
c01046fc:	0f 89 13 fb ff ff    	jns    c0104215 <_dtoa_r+0x7b5>
c0104702:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c0104705:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c010470c:	00 
c010470d:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c0104714:	00 
c0104715:	89 34 24             	mov    %esi,(%esp)
c0104718:	89 44 24 04          	mov    %eax,0x4(%esp)
c010471c:	83 6d b8 01          	subl   $0x1,-0x48(%ebp)
c0104720:	e8 2b 0f 00 00       	call   c0105650 <__multadd>
c0104725:	8b 4d 98             	mov    -0x68(%ebp),%ecx
c0104728:	85 c9                	test   %ecx,%ecx
c010472a:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c010472d:	0f 85 8d 00 00 00    	jne    c01047c0 <_dtoa_r+0xd60>
c0104733:	83 7d 90 00          	cmpl   $0x0,-0x70(%ebp)
c0104737:	8b 45 90             	mov    -0x70(%ebp),%eax
c010473a:	7f 0a                	jg     c0104746 <_dtoa_r+0xce6>
c010473c:	83 7d 14 02          	cmpl   $0x2,0x14(%ebp)
c0104740:	0f 8f ff 04 00 00    	jg     c0104c45 <_dtoa_r+0x11e5>
c0104746:	89 45 a8             	mov    %eax,-0x58(%ebp)
c0104749:	e9 ed fc ff ff       	jmp    c010443b <_dtoa_r+0x9db>
c010474e:	66 90                	xchg   %ax,%ax
c0104750:	8b 5d a8             	mov    -0x58(%ebp),%ebx
c0104753:	85 db                	test   %ebx,%ebx
c0104755:	0f 85 aa fc ff ff    	jne    c0104405 <_dtoa_r+0x9a5>
c010475b:	d8 0d e0 88 10 c0    	fmuls  0xc01088e0
c0104761:	c7 45 b0 00 00 00 00 	movl   $0x0,-0x50(%ebp)
c0104768:	c7 45 b4 00 00 00 00 	movl   $0x0,-0x4c(%ebp)
c010476f:	dd 45 c0             	fldl   -0x40(%ebp)
c0104772:	d9 c9                	fxch   %st(1)
c0104774:	df e9                	fucomip %st(1),%st
c0104776:	dd d8                	fstp   %st(0)
c0104778:	0f 83 97 fc ff ff    	jae    c0104415 <_dtoa_r+0x9b5>
c010477e:	e9 eb fa ff ff       	jmp    c010426e <_dtoa_r+0x80e>
c0104783:	90                   	nop
c0104784:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0104788:	8b 45 c0             	mov    -0x40(%ebp),%eax
c010478b:	85 c0                	test   %eax,%eax
c010478d:	0f 85 fe f9 ff ff    	jne    c0104191 <_dtoa_r+0x731>
c0104793:	8b 45 c4             	mov    -0x3c(%ebp),%eax
c0104796:	a9 ff ff 0f 00       	test   $0xfffff,%eax
c010479b:	0f 85 f0 f9 ff ff    	jne    c0104191 <_dtoa_r+0x731>
c01047a1:	a9 00 00 f0 7f       	test   $0x7ff00000,%eax
c01047a6:	0f 84 e5 f9 ff ff    	je     c0104191 <_dtoa_r+0x731>
c01047ac:	83 45 a0 01          	addl   $0x1,-0x60(%ebp)
c01047b0:	83 45 ac 01          	addl   $0x1,-0x54(%ebp)
c01047b4:	c7 45 8c 01 00 00 00 	movl   $0x1,-0x74(%ebp)
c01047bb:	e9 d1 f9 ff ff       	jmp    c0104191 <_dtoa_r+0x731>
c01047c0:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c01047c3:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c01047ca:	00 
c01047cb:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c01047d2:	00 
c01047d3:	89 34 24             	mov    %esi,(%esp)
c01047d6:	89 44 24 04          	mov    %eax,0x4(%esp)
c01047da:	e8 71 0e 00 00       	call   c0105650 <__multadd>
c01047df:	8b 55 90             	mov    -0x70(%ebp),%edx
c01047e2:	85 d2                	test   %edx,%edx
c01047e4:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c01047e7:	8b 45 90             	mov    -0x70(%ebp),%eax
c01047ea:	7f 0a                	jg     c01047f6 <_dtoa_r+0xd96>
c01047ec:	83 7d 14 02          	cmpl   $0x2,0x14(%ebp)
c01047f0:	0f 8f 4f 04 00 00    	jg     c0104c45 <_dtoa_r+0x11e5>
c01047f6:	89 45 a8             	mov    %eax,-0x58(%ebp)
c01047f9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0104800:	85 db                	test   %ebx,%ebx
c0104802:	7e 16                	jle    c010481a <_dtoa_r+0xdba>
c0104804:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0104807:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c010480b:	89 34 24             	mov    %esi,(%esp)
c010480e:	89 44 24 04          	mov    %eax,0x4(%esp)
c0104812:	e8 19 14 00 00       	call   c0105c30 <__lshift>
c0104817:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c010481a:	8b 5d 8c             	mov    -0x74(%ebp),%ebx
c010481d:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0104820:	85 db                	test   %ebx,%ebx
c0104822:	89 45 ac             	mov    %eax,-0x54(%ebp)
c0104825:	0f 85 11 03 00 00    	jne    c0104b3c <_dtoa_r+0x10dc>
c010482b:	8b 45 a8             	mov    -0x58(%ebp),%eax
c010482e:	8d 5f 01             	lea    0x1(%edi),%ebx
c0104831:	89 7d 8c             	mov    %edi,-0x74(%ebp)
c0104834:	01 f8                	add    %edi,%eax
c0104836:	8b 7d a4             	mov    -0x5c(%ebp),%edi
c0104839:	89 45 90             	mov    %eax,-0x70(%ebp)
c010483c:	8b 45 c0             	mov    -0x40(%ebp),%eax
c010483f:	83 e0 01             	and    $0x1,%eax
c0104842:	89 45 9c             	mov    %eax,-0x64(%ebp)
c0104845:	eb 2e                	jmp    c0104875 <_dtoa_r+0xe15>
c0104847:	90                   	nop
c0104848:	e8 03 0e 00 00       	call   c0105650 <__multadd>
c010484d:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c0104854:	00 
c0104855:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c010485c:	00 
c010485d:	89 34 24             	mov    %esi,(%esp)
c0104860:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c0104863:	8b 45 ac             	mov    -0x54(%ebp),%eax
c0104866:	89 44 24 04          	mov    %eax,0x4(%esp)
c010486a:	e8 e1 0d 00 00       	call   c0105650 <__multadd>
c010486f:	89 45 ac             	mov    %eax,-0x54(%ebp)
c0104872:	83 c3 01             	add    $0x1,%ebx
c0104875:	8b 55 b0             	mov    -0x50(%ebp),%edx
c0104878:	8d 43 ff             	lea    -0x1(%ebx),%eax
c010487b:	89 45 98             	mov    %eax,-0x68(%ebp)
c010487e:	89 f8                	mov    %edi,%eax
c0104880:	e8 0b f0 ff ff       	call   c0103890 <quorem>
c0104885:	89 3c 24             	mov    %edi,(%esp)
c0104888:	8d 48 30             	lea    0x30(%eax),%ecx
c010488b:	89 4d a0             	mov    %ecx,-0x60(%ebp)
c010488e:	8b 4d b4             	mov    -0x4c(%ebp),%ecx
c0104891:	89 45 94             	mov    %eax,-0x6c(%ebp)
c0104894:	89 4c 24 04          	mov    %ecx,0x4(%esp)
c0104898:	e8 b3 14 00 00       	call   c0105d50 <__mcmp>
c010489d:	8b 4d ac             	mov    -0x54(%ebp),%ecx
c01048a0:	89 34 24             	mov    %esi,(%esp)
c01048a3:	89 4c 24 08          	mov    %ecx,0x8(%esp)
c01048a7:	89 45 c0             	mov    %eax,-0x40(%ebp)
c01048aa:	8b 45 b0             	mov    -0x50(%ebp),%eax
c01048ad:	89 44 24 04          	mov    %eax,0x4(%esp)
c01048b1:	e8 ea 14 00 00       	call   c0105da0 <__mdiff>
c01048b6:	8b 48 0c             	mov    0xc(%eax),%ecx
c01048b9:	89 c2                	mov    %eax,%edx
c01048bb:	85 c9                	test   %ecx,%ecx
c01048bd:	0f 85 c5 00 00 00    	jne    c0104988 <_dtoa_r+0xf28>
c01048c3:	89 44 24 04          	mov    %eax,0x4(%esp)
c01048c7:	89 3c 24             	mov    %edi,(%esp)
c01048ca:	89 45 a8             	mov    %eax,-0x58(%ebp)
c01048cd:	e8 7e 14 00 00       	call   c0105d50 <__mcmp>
c01048d2:	8b 55 a8             	mov    -0x58(%ebp),%edx
c01048d5:	89 54 24 04          	mov    %edx,0x4(%esp)
c01048d9:	89 34 24             	mov    %esi,(%esp)
c01048dc:	89 45 a8             	mov    %eax,-0x58(%ebp)
c01048df:	e8 4c 0d 00 00       	call   c0105630 <_Bfree>
c01048e4:	8b 45 a8             	mov    -0x58(%ebp),%eax
c01048e7:	89 c1                	mov    %eax,%ecx
c01048e9:	0b 4d 14             	or     0x14(%ebp),%ecx
c01048ec:	75 0b                	jne    c01048f9 <_dtoa_r+0xe99>
c01048ee:	8b 55 9c             	mov    -0x64(%ebp),%edx
c01048f1:	85 d2                	test   %edx,%edx
c01048f3:	0f 84 fb 02 00 00    	je     c0104bf4 <_dtoa_r+0x1194>
c01048f9:	8b 55 c0             	mov    -0x40(%ebp),%edx
c01048fc:	85 d2                	test   %edx,%edx
c01048fe:	0f 88 7f 01 00 00    	js     c0104a83 <_dtoa_r+0x1023>
c0104904:	8b 4d c0             	mov    -0x40(%ebp),%ecx
c0104907:	0b 4d 14             	or     0x14(%ebp),%ecx
c010490a:	75 0b                	jne    c0104917 <_dtoa_r+0xeb7>
c010490c:	8b 4d 9c             	mov    -0x64(%ebp),%ecx
c010490f:	85 c9                	test   %ecx,%ecx
c0104911:	0f 84 6c 01 00 00    	je     c0104a83 <_dtoa_r+0x1023>
c0104917:	85 c0                	test   %eax,%eax
c0104919:	0f 8f 82 02 00 00    	jg     c0104ba1 <_dtoa_r+0x1141>
c010491f:	0f b6 45 a0          	movzbl -0x60(%ebp),%eax
c0104923:	89 da                	mov    %ebx,%edx
c0104925:	3b 5d 90             	cmp    -0x70(%ebp),%ebx
c0104928:	88 43 ff             	mov    %al,-0x1(%ebx)
c010492b:	0f 84 8d 02 00 00    	je     c0104bbe <_dtoa_r+0x115e>
c0104931:	89 7c 24 04          	mov    %edi,0x4(%esp)
c0104935:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c010493c:	00 
c010493d:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c0104944:	00 
c0104945:	89 34 24             	mov    %esi,(%esp)
c0104948:	e8 03 0d 00 00       	call   c0105650 <__multadd>
c010494d:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c0104954:	00 
c0104955:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c010495c:	00 
c010495d:	89 34 24             	mov    %esi,(%esp)
c0104960:	89 c7                	mov    %eax,%edi
c0104962:	8b 45 ac             	mov    -0x54(%ebp),%eax
c0104965:	39 45 b4             	cmp    %eax,-0x4c(%ebp)
c0104968:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c010496b:	89 44 24 04          	mov    %eax,0x4(%esp)
c010496f:	0f 85 d3 fe ff ff    	jne    c0104848 <_dtoa_r+0xde8>
c0104975:	e8 d6 0c 00 00       	call   c0105650 <__multadd>
c010497a:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c010497d:	89 45 ac             	mov    %eax,-0x54(%ebp)
c0104980:	e9 ed fe ff ff       	jmp    c0104872 <_dtoa_r+0xe12>
c0104985:	8d 76 00             	lea    0x0(%esi),%esi
c0104988:	b8 01 00 00 00       	mov    $0x1,%eax
c010498d:	e9 43 ff ff ff       	jmp    c01048d5 <_dtoa_r+0xe75>
c0104992:	c7 45 98 00 00 00 00 	movl   $0x0,-0x68(%ebp)
c0104999:	e9 d2 f2 ff ff       	jmp    c0103c70 <_dtoa_r+0x210>
c010499e:	0f 85 87 f6 ff ff    	jne    c010402b <_dtoa_r+0x5cb>
c01049a4:	dd d8                	fstp   %st(0)
c01049a6:	dd d8                	fstp   %st(0)
c01049a8:	dd d8                	fstp   %st(0)
c01049aa:	89 fb                	mov    %edi,%ebx
c01049ac:	8b 7d c0             	mov    -0x40(%ebp),%edi
c01049af:	e9 fc f8 ff ff       	jmp    c01042b0 <_dtoa_r+0x850>
c01049b4:	89 c2                	mov    %eax,%edx
c01049b6:	2b 55 b0             	sub    -0x50(%ebp),%edx
c01049b9:	89 45 b0             	mov    %eax,-0x50(%ebp)
c01049bc:	01 55 94             	add    %edx,-0x6c(%ebp)
c01049bf:	31 d2                	xor    %edx,%edx
c01049c1:	e9 b8 f9 ff ff       	jmp    c010437e <_dtoa_r+0x91e>
c01049c6:	8b 45 a8             	mov    -0x58(%ebp),%eax
c01049c9:	85 c0                	test   %eax,%eax
c01049cb:	0f 84 f3 f9 ff ff    	je     c01043c4 <_dtoa_r+0x964>
c01049d1:	8b 45 90             	mov    -0x70(%ebp),%eax
c01049d4:	85 c0                	test   %eax,%eax
c01049d6:	0f 8e c4 fb ff ff    	jle    c01045a0 <_dtoa_r+0xb40>
c01049dc:	d8 0d d8 88 10 c0    	fmuls  0xc01088d8
c01049e2:	83 c1 01             	add    $0x1,%ecx
c01049e5:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
c01049e8:	8b 5d b8             	mov    -0x48(%ebp),%ebx
c01049eb:	89 c1                	mov    %eax,%ecx
c01049ed:	83 eb 01             	sub    $0x1,%ebx
c01049f0:	db 45 d4             	fildl  -0x2c(%ebp)
c01049f3:	d8 c9                	fmul   %st(1),%st
c01049f5:	89 5d b4             	mov    %ebx,-0x4c(%ebp)
c01049f8:	d8 05 dc 88 10 c0    	fadds  0xc01088dc
c01049fe:	dd 5d c0             	fstpl  -0x40(%ebp)
c0104a01:	81 6d c4 00 00 40 03 	subl   $0x3400000,-0x3c(%ebp)
c0104a08:	e9 53 f4 ff ff       	jmp    c0103e60 <_dtoa_r+0x400>
c0104a0d:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0104a10:	c6 03 30             	movb   $0x30,(%ebx)
c0104a13:	83 c0 01             	add    $0x1,%eax
c0104a16:	89 45 b8             	mov    %eax,-0x48(%ebp)
c0104a19:	b8 31 00 00 00       	mov    $0x31,%eax
c0104a1e:	88 02                	mov    %al,(%edx)
c0104a20:	e9 8b f8 ff ff       	jmp    c01042b0 <_dtoa_r+0x850>
c0104a25:	d9 c0                	fld    %st(0)
c0104a27:	b9 02 00 00 00       	mov    $0x2,%ecx
c0104a2c:	e9 f2 f3 ff ff       	jmp    c0103e23 <_dtoa_r+0x3c3>
c0104a31:	de e2                	fsubp  %st,%st(2)
c0104a33:	d9 c9                	fxch   %st(1)
c0104a35:	df e9                	fucomip %st(1),%st
c0104a37:	dd d8                	fstp   %st(0)
c0104a39:	0f 86 69 fb ff ff    	jbe    c01045a8 <_dtoa_r+0xb48>
c0104a3f:	dd d8                	fstp   %st(0)
c0104a41:	eb 07                	jmp    c0104a4a <_dtoa_r+0xfea>
c0104a43:	90                   	nop
c0104a44:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0104a48:	89 c2                	mov    %eax,%edx
c0104a4a:	80 7a ff 30          	cmpb   $0x30,-0x1(%edx)
c0104a4e:	8d 42 ff             	lea    -0x1(%edx),%eax
c0104a51:	74 f5                	je     c0104a48 <_dtoa_r+0xfe8>
c0104a53:	e9 d9 f4 ff ff       	jmp    c0103f31 <_dtoa_r+0x4d1>
c0104a58:	c6 07 31             	movb   $0x31,(%edi)
c0104a5b:	89 fb                	mov    %edi,%ebx
c0104a5d:	89 d7                	mov    %edx,%edi
c0104a5f:	83 45 b8 01          	addl   $0x1,-0x48(%ebp)
c0104a63:	e9 1a f8 ff ff       	jmp    c0104282 <_dtoa_r+0x822>
c0104a68:	8b 55 8c             	mov    -0x74(%ebp),%edx
c0104a6b:	85 d2                	test   %edx,%edx
c0104a6d:	0f 84 1b 01 00 00    	je     c0104b8e <_dtoa_r+0x112e>
c0104a73:	05 33 04 00 00       	add    $0x433,%eax
c0104a78:	8b 55 b0             	mov    -0x50(%ebp),%edx
c0104a7b:	8b 5d a0             	mov    -0x60(%ebp),%ebx
c0104a7e:	e9 0b f9 ff ff       	jmp    c010438e <_dtoa_r+0x92e>
c0104a83:	85 c0                	test   %eax,%eax
c0104a85:	89 7d a4             	mov    %edi,-0x5c(%ebp)
c0104a88:	8b 7d 8c             	mov    -0x74(%ebp),%edi
c0104a8b:	7e 45                	jle    c0104ad2 <_dtoa_r+0x1072>
c0104a8d:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c0104a90:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
c0104a97:	00 
c0104a98:	89 34 24             	mov    %esi,(%esp)
c0104a9b:	89 44 24 04          	mov    %eax,0x4(%esp)
c0104a9f:	e8 8c 11 00 00       	call   c0105c30 <__lshift>
c0104aa4:	8b 5d b0             	mov    -0x50(%ebp),%ebx
c0104aa7:	89 5c 24 04          	mov    %ebx,0x4(%esp)
c0104aab:	89 04 24             	mov    %eax,(%esp)
c0104aae:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c0104ab1:	e8 9a 12 00 00       	call   c0105d50 <__mcmp>
c0104ab6:	83 f8 00             	cmp    $0x0,%eax
c0104ab9:	0f 8e 5b 01 00 00    	jle    c0104c1a <_dtoa_r+0x11ba>
c0104abf:	83 7d a0 39          	cmpl   $0x39,-0x60(%ebp)
c0104ac3:	0f 84 0c 01 00 00    	je     c0104bd5 <_dtoa_r+0x1175>
c0104ac9:	8b 45 94             	mov    -0x6c(%ebp),%eax
c0104acc:	83 c0 31             	add    $0x31,%eax
c0104acf:	89 45 a0             	mov    %eax,-0x60(%ebp)
c0104ad2:	8b 4d 98             	mov    -0x68(%ebp),%ecx
c0104ad5:	0f b6 45 a0          	movzbl -0x60(%ebp),%eax
c0104ad9:	89 cb                	mov    %ecx,%ebx
c0104adb:	88 03                	mov    %al,(%ebx)
c0104add:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0104ae0:	89 fb                	mov    %edi,%ebx
c0104ae2:	8d 79 01             	lea    0x1(%ecx),%edi
c0104ae5:	89 45 c0             	mov    %eax,-0x40(%ebp)
c0104ae8:	8b 45 ac             	mov    -0x54(%ebp),%eax
c0104aeb:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c0104aee:	e9 8f f7 ff ff       	jmp    c0104282 <_dtoa_r+0x822>
c0104af3:	dd d8                	fstp   %st(0)
c0104af5:	dd d8                	fstp   %st(0)
c0104af7:	dd d8                	fstp   %st(0)
c0104af9:	eb 0d                	jmp    c0104b08 <_dtoa_r+0x10a8>
c0104afb:	90                   	nop
c0104afc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0104b00:	dd d8                	fstp   %st(0)
c0104b02:	dd d8                	fstp   %st(0)
c0104b04:	dd d8                	fstp   %st(0)
c0104b06:	dd d8                	fstp   %st(0)
c0104b08:	89 fb                	mov    %edi,%ebx
c0104b0a:	89 d7                	mov    %edx,%edi
c0104b0c:	e9 8d f5 ff ff       	jmp    c010409e <_dtoa_r+0x63e>
c0104b11:	29 cb                	sub    %ecx,%ebx
c0104b13:	31 c0                	xor    %eax,%eax
c0104b15:	e9 74 f8 ff ff       	jmp    c010438e <_dtoa_r+0x92e>
c0104b1a:	75 0e                	jne    c0104b2a <_dtoa_r+0x10ca>
c0104b1c:	f6 45 a0 01          	testb  $0x1,-0x60(%ebp)
c0104b20:	74 08                	je     c0104b2a <_dtoa_r+0x10ca>
c0104b22:	e9 b2 f9 ff ff       	jmp    c01044d9 <_dtoa_r+0xa79>
c0104b27:	90                   	nop
c0104b28:	89 c2                	mov    %eax,%edx
c0104b2a:	80 7a ff 30          	cmpb   $0x30,-0x1(%edx)
c0104b2e:	8d 42 ff             	lea    -0x1(%edx),%eax
c0104b31:	74 f5                	je     c0104b28 <_dtoa_r+0x10c8>
c0104b33:	89 fb                	mov    %edi,%ebx
c0104b35:	89 d7                	mov    %edx,%edi
c0104b37:	e9 46 f7 ff ff       	jmp    c0104282 <_dtoa_r+0x822>
c0104b3c:	8b 40 04             	mov    0x4(%eax),%eax
c0104b3f:	89 34 24             	mov    %esi,(%esp)
c0104b42:	89 44 24 04          	mov    %eax,0x4(%esp)
c0104b46:	e8 45 0a 00 00       	call   c0105590 <_Balloc>
c0104b4b:	8b 4d b4             	mov    -0x4c(%ebp),%ecx
c0104b4e:	89 c3                	mov    %eax,%ebx
c0104b50:	8b 41 10             	mov    0x10(%ecx),%eax
c0104b53:	8d 04 85 08 00 00 00 	lea    0x8(,%eax,4),%eax
c0104b5a:	89 44 24 08          	mov    %eax,0x8(%esp)
c0104b5e:	89 c8                	mov    %ecx,%eax
c0104b60:	83 c0 0c             	add    $0xc,%eax
c0104b63:	89 44 24 04          	mov    %eax,0x4(%esp)
c0104b67:	8d 43 0c             	lea    0xc(%ebx),%eax
c0104b6a:	89 04 24             	mov    %eax,(%esp)
c0104b6d:	e8 fe cb ff ff       	call   c0101770 <memcpy>
c0104b72:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
c0104b79:	00 
c0104b7a:	89 5c 24 04          	mov    %ebx,0x4(%esp)
c0104b7e:	89 34 24             	mov    %esi,(%esp)
c0104b81:	e8 aa 10 00 00       	call   c0105c30 <__lshift>
c0104b86:	89 45 ac             	mov    %eax,-0x54(%ebp)
c0104b89:	e9 9d fc ff ff       	jmp    c010482b <_dtoa_r+0xdcb>
c0104b8e:	b8 36 00 00 00       	mov    $0x36,%eax
c0104b93:	8b 55 b0             	mov    -0x50(%ebp),%edx
c0104b96:	2b 45 e0             	sub    -0x20(%ebp),%eax
c0104b99:	8b 5d a0             	mov    -0x60(%ebp),%ebx
c0104b9c:	e9 ed f7 ff ff       	jmp    c010438e <_dtoa_r+0x92e>
c0104ba1:	83 7d a0 39          	cmpl   $0x39,-0x60(%ebp)
c0104ba5:	89 7d a4             	mov    %edi,-0x5c(%ebp)
c0104ba8:	8b 7d 8c             	mov    -0x74(%ebp),%edi
c0104bab:	74 28                	je     c0104bd5 <_dtoa_r+0x1175>
c0104bad:	0f b6 45 a0          	movzbl -0x60(%ebp),%eax
c0104bb1:	8b 4d 98             	mov    -0x68(%ebp),%ecx
c0104bb4:	83 c0 01             	add    $0x1,%eax
c0104bb7:	89 cb                	mov    %ecx,%ebx
c0104bb9:	e9 1d ff ff ff       	jmp    c0104adb <_dtoa_r+0x107b>
c0104bbe:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0104bc1:	89 7d a4             	mov    %edi,-0x5c(%ebp)
c0104bc4:	8b 7d 8c             	mov    -0x74(%ebp),%edi
c0104bc7:	89 45 c0             	mov    %eax,-0x40(%ebp)
c0104bca:	8b 45 ac             	mov    -0x54(%ebp),%eax
c0104bcd:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c0104bd0:	e9 cc f8 ff ff       	jmp    c01044a1 <_dtoa_r+0xa41>
c0104bd5:	8b 45 98             	mov    -0x68(%ebp),%eax
c0104bd8:	b9 39 00 00 00       	mov    $0x39,%ecx
c0104bdd:	8d 50 01             	lea    0x1(%eax),%edx
c0104be0:	c6 00 39             	movb   $0x39,(%eax)
c0104be3:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0104be6:	89 45 c0             	mov    %eax,-0x40(%ebp)
c0104be9:	8b 45 ac             	mov    -0x54(%ebp),%eax
c0104bec:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c0104bef:	e9 fa f8 ff ff       	jmp    c01044ee <_dtoa_r+0xa8e>
c0104bf4:	8b 5d a0             	mov    -0x60(%ebp),%ebx
c0104bf7:	89 7d a4             	mov    %edi,-0x5c(%ebp)
c0104bfa:	8b 7d 8c             	mov    -0x74(%ebp),%edi
c0104bfd:	83 fb 39             	cmp    $0x39,%ebx
c0104c00:	74 d3                	je     c0104bd5 <_dtoa_r+0x1175>
c0104c02:	8b 4d c0             	mov    -0x40(%ebp),%ecx
c0104c05:	8b 45 94             	mov    -0x6c(%ebp),%eax
c0104c08:	83 c0 31             	add    $0x31,%eax
c0104c0b:	85 c9                	test   %ecx,%ecx
c0104c0d:	8b 4d 98             	mov    -0x68(%ebp),%ecx
c0104c10:	0f 4e c3             	cmovle %ebx,%eax
c0104c13:	89 cb                	mov    %ecx,%ebx
c0104c15:	e9 c1 fe ff ff       	jmp    c0104adb <_dtoa_r+0x107b>
c0104c1a:	0f 85 b2 fe ff ff    	jne    c0104ad2 <_dtoa_r+0x1072>
c0104c20:	f6 45 a0 01          	testb  $0x1,-0x60(%ebp)
c0104c24:	0f 84 a8 fe ff ff    	je     c0104ad2 <_dtoa_r+0x1072>
c0104c2a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0104c30:	e9 8a fe ff ff       	jmp    c0104abf <_dtoa_r+0x105f>
c0104c35:	0f 85 c7 f3 ff ff    	jne    c0104002 <_dtoa_r+0x5a2>
c0104c3b:	dd d8                	fstp   %st(0)
c0104c3d:	dd d8                	fstp   %st(0)
c0104c3f:	90                   	nop
c0104c40:	e9 65 fd ff ff       	jmp    c01049aa <_dtoa_r+0xf4a>
c0104c45:	89 45 a8             	mov    %eax,-0x58(%ebp)
c0104c48:	e9 dd f5 ff ff       	jmp    c010422a <_dtoa_r+0x7ca>
c0104c4d:	8d 76 00             	lea    0x0(%esi),%esi
c0104c50:	0f 84 7a f5 ff ff    	je     c01041d0 <_dtoa_r+0x770>
c0104c56:	b8 3c 00 00 00       	mov    $0x3c,%eax
c0104c5b:	29 d0                	sub    %edx,%eax
c0104c5d:	e9 ab f8 ff ff       	jmp    c010450d <_dtoa_r+0xaad>
c0104c62:	b8 01 00 00 00       	mov    $0x1,%eax
c0104c67:	e9 d9 ef ff ff       	jmp    c0103c45 <_dtoa_r+0x1e5>
c0104c6c:	31 d2                	xor    %edx,%edx
c0104c6e:	e9 36 f1 ff ff       	jmp    c0103da9 <_dtoa_r+0x349>
c0104c73:	66 90                	xchg   %ax,%ax
c0104c75:	66 90                	xchg   %ax,%ax
c0104c77:	66 90                	xchg   %ax,%ax
c0104c79:	66 90                	xchg   %ax,%ax
c0104c7b:	66 90                	xchg   %ax,%ax
c0104c7d:	66 90                	xchg   %ax,%ax
c0104c7f:	90                   	nop

c0104c80 <_setlocale_r>:
c0104c80:	55                   	push   %ebp
c0104c81:	89 e5                	mov    %esp,%ebp
c0104c83:	53                   	push   %ebx
c0104c84:	83 ec 14             	sub    $0x14,%esp
c0104c87:	8b 5d 10             	mov    0x10(%ebp),%ebx
c0104c8a:	85 db                	test   %ebx,%ebx
c0104c8c:	74 14                	je     c0104ca2 <_setlocale_r+0x22>
c0104c8e:	c7 44 24 04 00 89 10 	movl   $0xc0108900,0x4(%esp)
c0104c95:	c0 
c0104c96:	89 1c 24             	mov    %ebx,(%esp)
c0104c99:	e8 a2 cb ff ff       	call   c0101840 <strcmp>
c0104c9e:	85 c0                	test   %eax,%eax
c0104ca0:	75 0e                	jne    c0104cb0 <_setlocale_r+0x30>
c0104ca2:	83 c4 14             	add    $0x14,%esp
c0104ca5:	b8 00 87 10 c0       	mov    $0xc0108700,%eax
c0104caa:	5b                   	pop    %ebx
c0104cab:	5d                   	pop    %ebp
c0104cac:	c3                   	ret    
c0104cad:	8d 76 00             	lea    0x0(%esi),%esi
c0104cb0:	c7 44 24 04 00 87 10 	movl   $0xc0108700,0x4(%esp)
c0104cb7:	c0 
c0104cb8:	89 1c 24             	mov    %ebx,(%esp)
c0104cbb:	e8 80 cb ff ff       	call   c0101840 <strcmp>
c0104cc0:	85 c0                	test   %eax,%eax
c0104cc2:	74 de                	je     c0104ca2 <_setlocale_r+0x22>
c0104cc4:	89 1c 24             	mov    %ebx,(%esp)
c0104cc7:	c7 44 24 04 3a 87 10 	movl   $0xc010873a,0x4(%esp)
c0104cce:	c0 
c0104ccf:	e8 6c cb ff ff       	call   c0101840 <strcmp>
c0104cd4:	89 c2                	mov    %eax,%edx
c0104cd6:	31 c0                	xor    %eax,%eax
c0104cd8:	85 d2                	test   %edx,%edx
c0104cda:	ba 00 87 10 c0       	mov    $0xc0108700,%edx
c0104cdf:	0f 44 c2             	cmove  %edx,%eax
c0104ce2:	83 c4 14             	add    $0x14,%esp
c0104ce5:	5b                   	pop    %ebx
c0104ce6:	5d                   	pop    %ebp
c0104ce7:	c3                   	ret    
c0104ce8:	90                   	nop
c0104ce9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

c0104cf0 <__locale_charset>:
c0104cf0:	55                   	push   %ebp
c0104cf1:	b8 a0 a4 10 c0       	mov    $0xc010a4a0,%eax
c0104cf6:	89 e5                	mov    %esp,%ebp
c0104cf8:	5d                   	pop    %ebp
c0104cf9:	c3                   	ret    
c0104cfa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

c0104d00 <__locale_mb_cur_max>:
c0104d00:	55                   	push   %ebp
c0104d01:	a1 f8 a4 10 c0       	mov    0xc010a4f8,%eax
c0104d06:	89 e5                	mov    %esp,%ebp
c0104d08:	5d                   	pop    %ebp
c0104d09:	c3                   	ret    
c0104d0a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

c0104d10 <__locale_msgcharset>:
c0104d10:	55                   	push   %ebp
c0104d11:	b8 80 a4 10 c0       	mov    $0xc010a480,%eax
c0104d16:	89 e5                	mov    %esp,%ebp
c0104d18:	5d                   	pop    %ebp
c0104d19:	c3                   	ret    
c0104d1a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

c0104d20 <__locale_cjk_lang>:
c0104d20:	55                   	push   %ebp
c0104d21:	31 c0                	xor    %eax,%eax
c0104d23:	89 e5                	mov    %esp,%ebp
c0104d25:	5d                   	pop    %ebp
c0104d26:	c3                   	ret    
c0104d27:	89 f6                	mov    %esi,%esi
c0104d29:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0104d30 <_localeconv_r>:
c0104d30:	55                   	push   %ebp
c0104d31:	b8 c0 a4 10 c0       	mov    $0xc010a4c0,%eax
c0104d36:	89 e5                	mov    %esp,%ebp
c0104d38:	5d                   	pop    %ebp
c0104d39:	c3                   	ret    
c0104d3a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

c0104d40 <setlocale>:
c0104d40:	55                   	push   %ebp
c0104d41:	89 e5                	mov    %esp,%ebp
c0104d43:	83 ec 18             	sub    $0x18,%esp
c0104d46:	e8 35 cc ff ff       	call   c0101980 <__getreent>
c0104d4b:	8b 55 0c             	mov    0xc(%ebp),%edx
c0104d4e:	89 54 24 08          	mov    %edx,0x8(%esp)
c0104d52:	8b 55 08             	mov    0x8(%ebp),%edx
c0104d55:	89 04 24             	mov    %eax,(%esp)
c0104d58:	89 54 24 04          	mov    %edx,0x4(%esp)
c0104d5c:	e8 1f ff ff ff       	call   c0104c80 <_setlocale_r>
c0104d61:	c9                   	leave  
c0104d62:	c3                   	ret    
c0104d63:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0104d69:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0104d70 <localeconv>:
c0104d70:	55                   	push   %ebp
c0104d71:	89 e5                	mov    %esp,%ebp
c0104d73:	83 ec 08             	sub    $0x8,%esp
c0104d76:	e8 05 cc ff ff       	call   c0101980 <__getreent>
c0104d7b:	b8 c0 a4 10 c0       	mov    $0xc010a4c0,%eax
c0104d80:	c9                   	leave  
c0104d81:	c3                   	ret    
c0104d82:	66 90                	xchg   %ax,%ax
c0104d84:	66 90                	xchg   %ax,%ax
c0104d86:	66 90                	xchg   %ax,%ax
c0104d88:	66 90                	xchg   %ax,%ax
c0104d8a:	66 90                	xchg   %ax,%ax
c0104d8c:	66 90                	xchg   %ax,%ax
c0104d8e:	66 90                	xchg   %ax,%ax

c0104d90 <_malloc_r>:
c0104d90:	55                   	push   %ebp
c0104d91:	89 e5                	mov    %esp,%ebp
c0104d93:	57                   	push   %edi
c0104d94:	56                   	push   %esi
c0104d95:	53                   	push   %ebx
c0104d96:	83 ec 2c             	sub    $0x2c,%esp
c0104d99:	8b 45 0c             	mov    0xc(%ebp),%eax
c0104d9c:	8d 50 0b             	lea    0xb(%eax),%edx
c0104d9f:	83 fa 16             	cmp    $0x16,%edx
c0104da2:	76 6c                	jbe    c0104e10 <_malloc_r+0x80>
c0104da4:	89 d7                	mov    %edx,%edi
c0104da6:	83 e7 f8             	and    $0xfffffff8,%edi
c0104da9:	89 fe                	mov    %edi,%esi
c0104dab:	c1 ee 1f             	shr    $0x1f,%esi
c0104dae:	39 c7                	cmp    %eax,%edi
c0104db0:	8b 45 08             	mov    0x8(%ebp),%eax
c0104db3:	89 f2                	mov    %esi,%edx
c0104db5:	72 67                	jb     c0104e1e <_malloc_r+0x8e>
c0104db7:	84 d2                	test   %dl,%dl
c0104db9:	75 63                	jne    c0104e1e <_malloc_r+0x8e>
c0104dbb:	89 04 24             	mov    %eax,(%esp)
c0104dbe:	e8 ad 07 00 00       	call   c0105570 <__malloc_lock>
c0104dc3:	81 ff f7 01 00 00    	cmp    $0x1f7,%edi
c0104dc9:	77 65                	ja     c0104e30 <_malloc_r+0xa0>
c0104dcb:	89 fa                	mov    %edi,%edx
c0104dcd:	c1 ea 03             	shr    $0x3,%edx
c0104dd0:	8d 04 d5 20 a5 10 c0 	lea    -0x3fef5ae0(,%edx,8),%eax
c0104dd7:	8b 58 0c             	mov    0xc(%eax),%ebx
c0104dda:	39 c3                	cmp    %eax,%ebx
c0104ddc:	0f 84 3e 05 00 00    	je     c0105320 <_malloc_r+0x590>
c0104de2:	8b 43 04             	mov    0x4(%ebx),%eax
c0104de5:	83 e0 fc             	and    $0xfffffffc,%eax
c0104de8:	8b 53 0c             	mov    0xc(%ebx),%edx
c0104deb:	8b 4b 08             	mov    0x8(%ebx),%ecx
c0104dee:	89 51 0c             	mov    %edx,0xc(%ecx)
c0104df1:	89 4a 08             	mov    %ecx,0x8(%edx)
c0104df4:	83 4c 03 04 01       	orl    $0x1,0x4(%ebx,%eax,1)
c0104df9:	8b 45 08             	mov    0x8(%ebp),%eax
c0104dfc:	89 04 24             	mov    %eax,(%esp)
c0104dff:	e8 7c 07 00 00       	call   c0105580 <__malloc_unlock>
c0104e04:	8d 43 08             	lea    0x8(%ebx),%eax
c0104e07:	83 c4 2c             	add    $0x2c,%esp
c0104e0a:	5b                   	pop    %ebx
c0104e0b:	5e                   	pop    %esi
c0104e0c:	5f                   	pop    %edi
c0104e0d:	5d                   	pop    %ebp
c0104e0e:	c3                   	ret    
c0104e0f:	90                   	nop
c0104e10:	bf 10 00 00 00       	mov    $0x10,%edi
c0104e15:	31 d2                	xor    %edx,%edx
c0104e17:	39 c7                	cmp    %eax,%edi
c0104e19:	8b 45 08             	mov    0x8(%ebp),%eax
c0104e1c:	73 99                	jae    c0104db7 <_malloc_r+0x27>
c0104e1e:	c7 00 0c 00 00 00    	movl   $0xc,(%eax)
c0104e24:	83 c4 2c             	add    $0x2c,%esp
c0104e27:	31 c0                	xor    %eax,%eax
c0104e29:	5b                   	pop    %ebx
c0104e2a:	5e                   	pop    %esi
c0104e2b:	5f                   	pop    %edi
c0104e2c:	5d                   	pop    %ebp
c0104e2d:	c3                   	ret    
c0104e2e:	66 90                	xchg   %ax,%ax
c0104e30:	89 fe                	mov    %edi,%esi
c0104e32:	c1 ee 09             	shr    $0x9,%esi
c0104e35:	85 f6                	test   %esi,%esi
c0104e37:	0f 84 ab 01 00 00    	je     c0104fe8 <_malloc_r+0x258>
c0104e3d:	83 fe 04             	cmp    $0x4,%esi
c0104e40:	0f 87 8a 03 00 00    	ja     c01051d0 <_malloc_r+0x440>
c0104e46:	89 fe                	mov    %edi,%esi
c0104e48:	c1 ee 06             	shr    $0x6,%esi
c0104e4b:	83 c6 38             	add    $0x38,%esi
c0104e4e:	8d 04 36             	lea    (%esi,%esi,1),%eax
c0104e51:	8d 0c 85 20 a5 10 c0 	lea    -0x3fef5ae0(,%eax,4),%ecx
c0104e58:	8b 59 0c             	mov    0xc(%ecx),%ebx
c0104e5b:	39 d9                	cmp    %ebx,%ecx
c0104e5d:	75 18                	jne    c0104e77 <_malloc_r+0xe7>
c0104e5f:	eb 28                	jmp    c0104e89 <_malloc_r+0xf9>
c0104e61:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0104e68:	85 d2                	test   %edx,%edx
c0104e6a:	0f 89 78 ff ff ff    	jns    c0104de8 <_malloc_r+0x58>
c0104e70:	8b 5b 0c             	mov    0xc(%ebx),%ebx
c0104e73:	39 d9                	cmp    %ebx,%ecx
c0104e75:	74 12                	je     c0104e89 <_malloc_r+0xf9>
c0104e77:	8b 43 04             	mov    0x4(%ebx),%eax
c0104e7a:	83 e0 fc             	and    $0xfffffffc,%eax
c0104e7d:	89 c2                	mov    %eax,%edx
c0104e7f:	29 fa                	sub    %edi,%edx
c0104e81:	83 fa 0f             	cmp    $0xf,%edx
c0104e84:	7e e2                	jle    c0104e68 <_malloc_r+0xd8>
c0104e86:	83 ee 01             	sub    $0x1,%esi
c0104e89:	8d 46 01             	lea    0x1(%esi),%eax
c0104e8c:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0104e8f:	8b 1d 30 a5 10 c0    	mov    0xc010a530,%ebx
c0104e95:	a1 24 a5 10 c0       	mov    0xc010a524,%eax
c0104e9a:	81 fb 28 a5 10 c0    	cmp    $0xc010a528,%ebx
c0104ea0:	74 6b                	je     c0104f0d <_malloc_r+0x17d>
c0104ea2:	8b 73 04             	mov    0x4(%ebx),%esi
c0104ea5:	83 e6 fc             	and    $0xfffffffc,%esi
c0104ea8:	89 f0                	mov    %esi,%eax
c0104eaa:	29 f8                	sub    %edi,%eax
c0104eac:	83 f8 0f             	cmp    $0xf,%eax
c0104eaf:	0f 8f a3 03 00 00    	jg     c0105258 <_malloc_r+0x4c8>
c0104eb5:	85 c0                	test   %eax,%eax
c0104eb7:	c7 05 34 a5 10 c0 28 	movl   $0xc010a528,0xc010a534
c0104ebe:	a5 10 c0 
c0104ec1:	c7 05 30 a5 10 c0 28 	movl   $0xc010a528,0xc010a530
c0104ec8:	a5 10 c0 
c0104ecb:	0f 89 27 01 00 00    	jns    c0104ff8 <_malloc_r+0x268>
c0104ed1:	81 fe ff 01 00 00    	cmp    $0x1ff,%esi
c0104ed7:	0f 87 1b 03 00 00    	ja     c01051f8 <_malloc_r+0x468>
c0104edd:	c1 ee 03             	shr    $0x3,%esi
c0104ee0:	b8 01 00 00 00       	mov    $0x1,%eax
c0104ee5:	89 f1                	mov    %esi,%ecx
c0104ee7:	8d 14 f5 20 a5 10 c0 	lea    -0x3fef5ae0(,%esi,8),%edx
c0104eee:	c1 f9 02             	sar    $0x2,%ecx
c0104ef1:	d3 e0                	shl    %cl,%eax
c0104ef3:	8b 4a 08             	mov    0x8(%edx),%ecx
c0104ef6:	0b 05 24 a5 10 c0    	or     0xc010a524,%eax
c0104efc:	89 53 0c             	mov    %edx,0xc(%ebx)
c0104eff:	89 4b 08             	mov    %ecx,0x8(%ebx)
c0104f02:	a3 24 a5 10 c0       	mov    %eax,0xc010a524
c0104f07:	89 5a 08             	mov    %ebx,0x8(%edx)
c0104f0a:	89 59 0c             	mov    %ebx,0xc(%ecx)
c0104f0d:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c0104f10:	be 01 00 00 00       	mov    $0x1,%esi
c0104f15:	c1 f9 02             	sar    $0x2,%ecx
c0104f18:	d3 e6                	shl    %cl,%esi
c0104f1a:	39 c6                	cmp    %eax,%esi
c0104f1c:	0f 87 f6 00 00 00    	ja     c0105018 <_malloc_r+0x288>
c0104f22:	85 f0                	test   %esi,%eax
c0104f24:	0f 85 76 03 00 00    	jne    c01052a0 <_malloc_r+0x510>
c0104f2a:	8b 55 e4             	mov    -0x1c(%ebp),%edx
c0104f2d:	01 f6                	add    %esi,%esi
c0104f2f:	83 e2 fc             	and    $0xfffffffc,%edx
c0104f32:	85 f0                	test   %esi,%eax
c0104f34:	8d 4a 04             	lea    0x4(%edx),%ecx
c0104f37:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c0104f3a:	0f 85 60 03 00 00    	jne    c01052a0 <_malloc_r+0x510>
c0104f40:	89 ca                	mov    %ecx,%edx
c0104f42:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0104f48:	01 f6                	add    %esi,%esi
c0104f4a:	83 c2 04             	add    $0x4,%edx
c0104f4d:	85 f0                	test   %esi,%eax
c0104f4f:	74 f7                	je     c0104f48 <_malloc_r+0x1b8>
c0104f51:	89 55 e4             	mov    %edx,-0x1c(%ebp)
c0104f54:	89 75 dc             	mov    %esi,-0x24(%ebp)
c0104f57:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0104f5a:	8d 34 c5 20 a5 10 c0 	lea    -0x3fef5ae0(,%eax,8),%esi
c0104f61:	89 f1                	mov    %esi,%ecx
c0104f63:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0104f66:	8b 59 0c             	mov    0xc(%ecx),%ebx
c0104f69:	39 d9                	cmp    %ebx,%ecx
c0104f6b:	75 1e                	jne    c0104f8b <_malloc_r+0x1fb>
c0104f6d:	e9 36 03 00 00       	jmp    c01052a8 <_malloc_r+0x518>
c0104f72:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0104f78:	85 d2                	test   %edx,%edx
c0104f7a:	0f 89 c0 03 00 00    	jns    c0105340 <_malloc_r+0x5b0>
c0104f80:	8b 5b 0c             	mov    0xc(%ebx),%ebx
c0104f83:	39 d9                	cmp    %ebx,%ecx
c0104f85:	0f 84 1d 03 00 00    	je     c01052a8 <_malloc_r+0x518>
c0104f8b:	8b 43 04             	mov    0x4(%ebx),%eax
c0104f8e:	83 e0 fc             	and    $0xfffffffc,%eax
c0104f91:	89 c2                	mov    %eax,%edx
c0104f93:	29 fa                	sub    %edi,%edx
c0104f95:	83 fa 0f             	cmp    $0xf,%edx
c0104f98:	7e de                	jle    c0104f78 <_malloc_r+0x1e8>
c0104f9a:	8b 4b 0c             	mov    0xc(%ebx),%ecx
c0104f9d:	8d 04 3b             	lea    (%ebx,%edi,1),%eax
c0104fa0:	83 cf 01             	or     $0x1,%edi
c0104fa3:	8b 73 08             	mov    0x8(%ebx),%esi
c0104fa6:	89 7b 04             	mov    %edi,0x4(%ebx)
c0104fa9:	89 4e 0c             	mov    %ecx,0xc(%esi)
c0104fac:	89 71 08             	mov    %esi,0x8(%ecx)
c0104faf:	89 d1                	mov    %edx,%ecx
c0104fb1:	83 c9 01             	or     $0x1,%ecx
c0104fb4:	a3 34 a5 10 c0       	mov    %eax,0xc010a534
c0104fb9:	a3 30 a5 10 c0       	mov    %eax,0xc010a530
c0104fbe:	c7 40 0c 28 a5 10 c0 	movl   $0xc010a528,0xc(%eax)
c0104fc5:	c7 40 08 28 a5 10 c0 	movl   $0xc010a528,0x8(%eax)
c0104fcc:	89 48 04             	mov    %ecx,0x4(%eax)
c0104fcf:	89 14 10             	mov    %edx,(%eax,%edx,1)
c0104fd2:	8b 45 08             	mov    0x8(%ebp),%eax
c0104fd5:	89 04 24             	mov    %eax,(%esp)
c0104fd8:	e8 a3 05 00 00       	call   c0105580 <__malloc_unlock>
c0104fdd:	8d 43 08             	lea    0x8(%ebx),%eax
c0104fe0:	e9 22 fe ff ff       	jmp    c0104e07 <_malloc_r+0x77>
c0104fe5:	8d 76 00             	lea    0x0(%esi),%esi
c0104fe8:	b8 7e 00 00 00       	mov    $0x7e,%eax
c0104fed:	be 3f 00 00 00       	mov    $0x3f,%esi
c0104ff2:	e9 5a fe ff ff       	jmp    c0104e51 <_malloc_r+0xc1>
c0104ff7:	90                   	nop
c0104ff8:	8b 45 08             	mov    0x8(%ebp),%eax
c0104ffb:	83 4c 33 04 01       	orl    $0x1,0x4(%ebx,%esi,1)
c0105000:	89 04 24             	mov    %eax,(%esp)
c0105003:	e8 78 05 00 00       	call   c0105580 <__malloc_unlock>
c0105008:	83 c4 2c             	add    $0x2c,%esp
c010500b:	8d 43 08             	lea    0x8(%ebx),%eax
c010500e:	5b                   	pop    %ebx
c010500f:	5e                   	pop    %esi
c0105010:	5f                   	pop    %edi
c0105011:	5d                   	pop    %ebp
c0105012:	c3                   	ret    
c0105013:	90                   	nop
c0105014:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0105018:	8b 1d 28 a5 10 c0    	mov    0xc010a528,%ebx
c010501e:	8b 73 04             	mov    0x4(%ebx),%esi
c0105021:	83 e6 fc             	and    $0xfffffffc,%esi
c0105024:	39 f7                	cmp    %esi,%edi
c0105026:	77 0d                	ja     c0105035 <_malloc_r+0x2a5>
c0105028:	89 f0                	mov    %esi,%eax
c010502a:	29 f8                	sub    %edi,%eax
c010502c:	83 f8 0f             	cmp    $0xf,%eax
c010502f:	0f 8f 6b 01 00 00    	jg     c01051a0 <_malloc_r+0x410>
c0105035:	8b 0d 50 20 16 c0    	mov    0xc0162050,%ecx
c010503b:	8d 04 33             	lea    (%ebx,%esi,1),%eax
c010503e:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0105041:	01 f9                	add    %edi,%ecx
c0105043:	8d 81 0f 10 00 00    	lea    0x100f(%ecx),%eax
c0105049:	83 c1 10             	add    $0x10,%ecx
c010504c:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0105051:	83 3d 00 a5 10 c0 ff 	cmpl   $0xffffffff,0xc010a500
c0105058:	0f 44 c1             	cmove  %ecx,%eax
c010505b:	89 45 e0             	mov    %eax,-0x20(%ebp)
c010505e:	89 44 24 04          	mov    %eax,0x4(%esp)
c0105062:	8b 45 08             	mov    0x8(%ebp),%eax
c0105065:	89 04 24             	mov    %eax,(%esp)
c0105068:	e8 03 13 00 00       	call   c0106370 <_sbrk_r>
c010506d:	83 f8 ff             	cmp    $0xffffffff,%eax
c0105070:	89 c1                	mov    %eax,%ecx
c0105072:	0f 84 17 03 00 00    	je     c010538f <_malloc_r+0x5ff>
c0105078:	39 45 e4             	cmp    %eax,-0x1c(%ebp)
c010507b:	0f 87 02 03 00 00    	ja     c0105383 <_malloc_r+0x5f3>
c0105081:	8b 55 e0             	mov    -0x20(%ebp),%edx
c0105084:	03 15 20 20 16 c0    	add    0xc0162020,%edx
c010508a:	39 4d e4             	cmp    %ecx,-0x1c(%ebp)
c010508d:	89 15 20 20 16 c0    	mov    %edx,0xc0162020
c0105093:	0f 84 a9 03 00 00    	je     c0105442 <_malloc_r+0x6b2>
c0105099:	83 3d 00 a5 10 c0 ff 	cmpl   $0xffffffff,0xc010a500
c01050a0:	0f 84 ca 03 00 00    	je     c0105470 <_malloc_r+0x6e0>
c01050a6:	89 c8                	mov    %ecx,%eax
c01050a8:	2b 45 e4             	sub    -0x1c(%ebp),%eax
c01050ab:	01 d0                	add    %edx,%eax
c01050ad:	a3 20 20 16 c0       	mov    %eax,0xc0162020
c01050b2:	89 c8                	mov    %ecx,%eax
c01050b4:	ba 00 10 00 00       	mov    $0x1000,%edx
c01050b9:	83 e0 07             	and    $0x7,%eax
c01050bc:	74 0c                	je     c01050ca <_malloc_r+0x33a>
c01050be:	29 c1                	sub    %eax,%ecx
c01050c0:	ba 08 10 00 00       	mov    $0x1008,%edx
c01050c5:	8d 49 08             	lea    0x8(%ecx),%ecx
c01050c8:	29 c2                	sub    %eax,%edx
c01050ca:	8b 45 e0             	mov    -0x20(%ebp),%eax
c01050cd:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c01050d0:	01 c8                	add    %ecx,%eax
c01050d2:	25 ff 0f 00 00       	and    $0xfff,%eax
c01050d7:	29 c2                	sub    %eax,%edx
c01050d9:	8b 45 08             	mov    0x8(%ebp),%eax
c01050dc:	89 54 24 04          	mov    %edx,0x4(%esp)
c01050e0:	89 55 e0             	mov    %edx,-0x20(%ebp)
c01050e3:	89 04 24             	mov    %eax,(%esp)
c01050e6:	e8 85 12 00 00       	call   c0106370 <_sbrk_r>
c01050eb:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c01050ee:	83 f8 ff             	cmp    $0xffffffff,%eax
c01050f1:	0f 84 6d 03 00 00    	je     c0105464 <_malloc_r+0x6d4>
c01050f7:	8b 55 e0             	mov    -0x20(%ebp),%edx
c01050fa:	29 c8                	sub    %ecx,%eax
c01050fc:	01 d0                	add    %edx,%eax
c01050fe:	83 c8 01             	or     $0x1,%eax
c0105101:	03 15 20 20 16 c0    	add    0xc0162020,%edx
c0105107:	81 fb 20 a5 10 c0    	cmp    $0xc010a520,%ebx
c010510d:	89 0d 28 a5 10 c0    	mov    %ecx,0xc010a528
c0105113:	89 41 04             	mov    %eax,0x4(%ecx)
c0105116:	89 15 20 20 16 c0    	mov    %edx,0xc0162020
c010511c:	0f 84 f2 02 00 00    	je     c0105414 <_malloc_r+0x684>
c0105122:	83 fe 0f             	cmp    $0xf,%esi
c0105125:	0f 86 8d 02 00 00    	jbe    c01053b8 <_malloc_r+0x628>
c010512b:	8b 43 04             	mov    0x4(%ebx),%eax
c010512e:	83 ee 0c             	sub    $0xc,%esi
c0105131:	83 e6 f8             	and    $0xfffffff8,%esi
c0105134:	83 e0 01             	and    $0x1,%eax
c0105137:	09 f0                	or     %esi,%eax
c0105139:	83 fe 0f             	cmp    $0xf,%esi
c010513c:	89 43 04             	mov    %eax,0x4(%ebx)
c010513f:	a1 28 a5 10 c0       	mov    0xc010a528,%eax
c0105144:	c7 44 33 04 05 00 00 	movl   $0x5,0x4(%ebx,%esi,1)
c010514b:	00 
c010514c:	c7 44 33 08 05 00 00 	movl   $0x5,0x8(%ebx,%esi,1)
c0105153:	00 
c0105154:	0f 87 a2 02 00 00    	ja     c01053fc <_malloc_r+0x66c>
c010515a:	3b 15 4c 20 16 c0    	cmp    0xc016204c,%edx
c0105160:	76 06                	jbe    c0105168 <_malloc_r+0x3d8>
c0105162:	89 15 4c 20 16 c0    	mov    %edx,0xc016204c
c0105168:	3b 15 48 20 16 c0    	cmp    0xc0162048,%edx
c010516e:	76 06                	jbe    c0105176 <_malloc_r+0x3e6>
c0105170:	89 15 48 20 16 c0    	mov    %edx,0xc0162048
c0105176:	8b 50 04             	mov    0x4(%eax),%edx
c0105179:	89 c3                	mov    %eax,%ebx
c010517b:	83 e2 fc             	and    $0xfffffffc,%edx
c010517e:	89 d0                	mov    %edx,%eax
c0105180:	29 f8                	sub    %edi,%eax
c0105182:	39 d7                	cmp    %edx,%edi
c0105184:	77 05                	ja     c010518b <_malloc_r+0x3fb>
c0105186:	83 f8 0f             	cmp    $0xf,%eax
c0105189:	7f 15                	jg     c01051a0 <_malloc_r+0x410>
c010518b:	8b 45 08             	mov    0x8(%ebp),%eax
c010518e:	89 04 24             	mov    %eax,(%esp)
c0105191:	e8 ea 03 00 00       	call   c0105580 <__malloc_unlock>
c0105196:	31 c0                	xor    %eax,%eax
c0105198:	e9 6a fc ff ff       	jmp    c0104e07 <_malloc_r+0x77>
c010519d:	8d 76 00             	lea    0x0(%esi),%esi
c01051a0:	89 fa                	mov    %edi,%edx
c01051a2:	83 c8 01             	or     $0x1,%eax
c01051a5:	83 ca 01             	or     $0x1,%edx
c01051a8:	89 53 04             	mov    %edx,0x4(%ebx)
c01051ab:	8d 14 3b             	lea    (%ebx,%edi,1),%edx
c01051ae:	89 15 28 a5 10 c0    	mov    %edx,0xc010a528
c01051b4:	89 42 04             	mov    %eax,0x4(%edx)
c01051b7:	8b 45 08             	mov    0x8(%ebp),%eax
c01051ba:	89 04 24             	mov    %eax,(%esp)
c01051bd:	e8 be 03 00 00       	call   c0105580 <__malloc_unlock>
c01051c2:	83 c4 2c             	add    $0x2c,%esp
c01051c5:	8d 43 08             	lea    0x8(%ebx),%eax
c01051c8:	5b                   	pop    %ebx
c01051c9:	5e                   	pop    %esi
c01051ca:	5f                   	pop    %edi
c01051cb:	5d                   	pop    %ebp
c01051cc:	c3                   	ret    
c01051cd:	8d 76 00             	lea    0x0(%esi),%esi
c01051d0:	83 fe 14             	cmp    $0x14,%esi
c01051d3:	0f 86 8f 01 00 00    	jbe    c0105368 <_malloc_r+0x5d8>
c01051d9:	83 fe 54             	cmp    $0x54,%esi
c01051dc:	0f 87 be 01 00 00    	ja     c01053a0 <_malloc_r+0x610>
c01051e2:	89 fe                	mov    %edi,%esi
c01051e4:	c1 ee 0c             	shr    $0xc,%esi
c01051e7:	83 c6 6e             	add    $0x6e,%esi
c01051ea:	8d 04 36             	lea    (%esi,%esi,1),%eax
c01051ed:	e9 5f fc ff ff       	jmp    c0104e51 <_malloc_r+0xc1>
c01051f2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c01051f8:	89 f1                	mov    %esi,%ecx
c01051fa:	c1 e9 09             	shr    $0x9,%ecx
c01051fd:	83 f9 04             	cmp    $0x4,%ecx
c0105200:	0f 86 6d 01 00 00    	jbe    c0105373 <_malloc_r+0x5e3>
c0105206:	83 f9 14             	cmp    $0x14,%ecx
c0105209:	0f 87 0f 02 00 00    	ja     c010541e <_malloc_r+0x68e>
c010520f:	83 c1 5b             	add    $0x5b,%ecx
c0105212:	8d 04 09             	lea    (%ecx,%ecx,1),%eax
c0105215:	8d 04 85 20 a5 10 c0 	lea    -0x3fef5ae0(,%eax,4),%eax
c010521c:	8b 50 08             	mov    0x8(%eax),%edx
c010521f:	39 c2                	cmp    %eax,%edx
c0105221:	0f 84 a1 01 00 00    	je     c01053c8 <_malloc_r+0x638>
c0105227:	90                   	nop
c0105228:	8b 4a 04             	mov    0x4(%edx),%ecx
c010522b:	83 e1 fc             	and    $0xfffffffc,%ecx
c010522e:	39 ce                	cmp    %ecx,%esi
c0105230:	73 07                	jae    c0105239 <_malloc_r+0x4a9>
c0105232:	8b 52 08             	mov    0x8(%edx),%edx
c0105235:	39 d0                	cmp    %edx,%eax
c0105237:	75 ef                	jne    c0105228 <_malloc_r+0x498>
c0105239:	8b 4a 0c             	mov    0xc(%edx),%ecx
c010523c:	a1 24 a5 10 c0       	mov    0xc010a524,%eax
c0105241:	89 4b 0c             	mov    %ecx,0xc(%ebx)
c0105244:	89 53 08             	mov    %edx,0x8(%ebx)
c0105247:	89 59 08             	mov    %ebx,0x8(%ecx)
c010524a:	89 5a 0c             	mov    %ebx,0xc(%edx)
c010524d:	e9 bb fc ff ff       	jmp    c0104f0d <_malloc_r+0x17d>
c0105252:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0105258:	89 c1                	mov    %eax,%ecx
c010525a:	8d 14 3b             	lea    (%ebx,%edi,1),%edx
c010525d:	83 c9 01             	or     $0x1,%ecx
c0105260:	83 cf 01             	or     $0x1,%edi
c0105263:	89 7b 04             	mov    %edi,0x4(%ebx)
c0105266:	89 15 34 a5 10 c0    	mov    %edx,0xc010a534
c010526c:	89 15 30 a5 10 c0    	mov    %edx,0xc010a530
c0105272:	c7 42 0c 28 a5 10 c0 	movl   $0xc010a528,0xc(%edx)
c0105279:	c7 42 08 28 a5 10 c0 	movl   $0xc010a528,0x8(%edx)
c0105280:	89 4a 04             	mov    %ecx,0x4(%edx)
c0105283:	89 04 02             	mov    %eax,(%edx,%eax,1)
c0105286:	8b 45 08             	mov    0x8(%ebp),%eax
c0105289:	89 04 24             	mov    %eax,(%esp)
c010528c:	e8 ef 02 00 00       	call   c0105580 <__malloc_unlock>
c0105291:	8d 43 08             	lea    0x8(%ebx),%eax
c0105294:	e9 6e fb ff ff       	jmp    c0104e07 <_malloc_r+0x77>
c0105299:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c01052a0:	89 75 dc             	mov    %esi,-0x24(%ebp)
c01052a3:	e9 af fc ff ff       	jmp    c0104f57 <_malloc_r+0x1c7>
c01052a8:	83 45 e0 01          	addl   $0x1,-0x20(%ebp)
c01052ac:	83 c1 08             	add    $0x8,%ecx
c01052af:	f6 45 e0 03          	testb  $0x3,-0x20(%ebp)
c01052b3:	0f 85 ad fc ff ff    	jne    c0104f66 <_malloc_r+0x1d6>
c01052b9:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c01052bc:	eb 12                	jmp    c01052d0 <_malloc_r+0x540>
c01052be:	66 90                	xchg   %ax,%ax
c01052c0:	8d 56 f8             	lea    -0x8(%esi),%edx
c01052c3:	8b 36                	mov    (%esi),%esi
c01052c5:	83 e8 01             	sub    $0x1,%eax
c01052c8:	39 d6                	cmp    %edx,%esi
c01052ca:	0f 85 ea 01 00 00    	jne    c01054ba <_malloc_r+0x72a>
c01052d0:	a8 03                	test   $0x3,%al
c01052d2:	75 ec                	jne    c01052c0 <_malloc_r+0x530>
c01052d4:	8b 45 dc             	mov    -0x24(%ebp),%eax
c01052d7:	f7 d0                	not    %eax
c01052d9:	23 05 24 a5 10 c0    	and    0xc010a524,%eax
c01052df:	a3 24 a5 10 c0       	mov    %eax,0xc010a524
c01052e4:	d1 65 dc             	shll   -0x24(%ebp)
c01052e7:	8b 55 dc             	mov    -0x24(%ebp),%edx
c01052ea:	39 c2                	cmp    %eax,%edx
c01052ec:	0f 87 26 fd ff ff    	ja     c0105018 <_malloc_r+0x288>
c01052f2:	85 d2                	test   %edx,%edx
c01052f4:	0f 84 1e fd ff ff    	je     c0105018 <_malloc_r+0x288>
c01052fa:	85 c2                	test   %eax,%edx
c01052fc:	0f 85 c2 01 00 00    	jne    c01054c4 <_malloc_r+0x734>
c0105302:	8b 75 e0             	mov    -0x20(%ebp),%esi
c0105305:	89 f1                	mov    %esi,%ecx
c0105307:	01 d2                	add    %edx,%edx
c0105309:	83 c1 04             	add    $0x4,%ecx
c010530c:	85 d0                	test   %edx,%eax
c010530e:	74 f7                	je     c0105307 <_malloc_r+0x577>
c0105310:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c0105313:	89 55 dc             	mov    %edx,-0x24(%ebp)
c0105316:	e9 3c fc ff ff       	jmp    c0104f57 <_malloc_r+0x1c7>
c010531b:	90                   	nop
c010531c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0105320:	8d 43 08             	lea    0x8(%ebx),%eax
c0105323:	8b 5b 14             	mov    0x14(%ebx),%ebx
c0105326:	39 d8                	cmp    %ebx,%eax
c0105328:	0f 85 b4 fa ff ff    	jne    c0104de2 <_malloc_r+0x52>
c010532e:	8d 42 02             	lea    0x2(%edx),%eax
c0105331:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0105334:	e9 56 fb ff ff       	jmp    c0104e8f <_malloc_r+0xff>
c0105339:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0105340:	83 4c 03 04 01       	orl    $0x1,0x4(%ebx,%eax,1)
c0105345:	8b 53 08             	mov    0x8(%ebx),%edx
c0105348:	8b 43 0c             	mov    0xc(%ebx),%eax
c010534b:	89 42 0c             	mov    %eax,0xc(%edx)
c010534e:	89 50 08             	mov    %edx,0x8(%eax)
c0105351:	8b 45 08             	mov    0x8(%ebp),%eax
c0105354:	89 04 24             	mov    %eax,(%esp)
c0105357:	e8 24 02 00 00       	call   c0105580 <__malloc_unlock>
c010535c:	8d 43 08             	lea    0x8(%ebx),%eax
c010535f:	e9 a3 fa ff ff       	jmp    c0104e07 <_malloc_r+0x77>
c0105364:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0105368:	83 c6 5b             	add    $0x5b,%esi
c010536b:	8d 04 36             	lea    (%esi,%esi,1),%eax
c010536e:	e9 de fa ff ff       	jmp    c0104e51 <_malloc_r+0xc1>
c0105373:	89 f1                	mov    %esi,%ecx
c0105375:	c1 e9 06             	shr    $0x6,%ecx
c0105378:	83 c1 38             	add    $0x38,%ecx
c010537b:	8d 04 09             	lea    (%ecx,%ecx,1),%eax
c010537e:	e9 92 fe ff ff       	jmp    c0105215 <_malloc_r+0x485>
c0105383:	81 fb 20 a5 10 c0    	cmp    $0xc010a520,%ebx
c0105389:	0f 84 f2 fc ff ff    	je     c0105081 <_malloc_r+0x2f1>
c010538f:	8b 1d 28 a5 10 c0    	mov    0xc010a528,%ebx
c0105395:	8b 53 04             	mov    0x4(%ebx),%edx
c0105398:	83 e2 fc             	and    $0xfffffffc,%edx
c010539b:	e9 de fd ff ff       	jmp    c010517e <_malloc_r+0x3ee>
c01053a0:	81 fe 54 01 00 00    	cmp    $0x154,%esi
c01053a6:	77 3c                	ja     c01053e4 <_malloc_r+0x654>
c01053a8:	89 fe                	mov    %edi,%esi
c01053aa:	c1 ee 0f             	shr    $0xf,%esi
c01053ad:	83 c6 77             	add    $0x77,%esi
c01053b0:	8d 04 36             	lea    (%esi,%esi,1),%eax
c01053b3:	e9 99 fa ff ff       	jmp    c0104e51 <_malloc_r+0xc1>
c01053b8:	c7 41 04 01 00 00 00 	movl   $0x1,0x4(%ecx)
c01053bf:	89 cb                	mov    %ecx,%ebx
c01053c1:	31 d2                	xor    %edx,%edx
c01053c3:	e9 b6 fd ff ff       	jmp    c010517e <_malloc_r+0x3ee>
c01053c8:	c1 f9 02             	sar    $0x2,%ecx
c01053cb:	b8 01 00 00 00       	mov    $0x1,%eax
c01053d0:	d3 e0                	shl    %cl,%eax
c01053d2:	89 d1                	mov    %edx,%ecx
c01053d4:	0b 05 24 a5 10 c0    	or     0xc010a524,%eax
c01053da:	a3 24 a5 10 c0       	mov    %eax,0xc010a524
c01053df:	e9 5d fe ff ff       	jmp    c0105241 <_malloc_r+0x4b1>
c01053e4:	81 fe 54 05 00 00    	cmp    $0x554,%esi
c01053ea:	77 47                	ja     c0105433 <_malloc_r+0x6a3>
c01053ec:	89 fe                	mov    %edi,%esi
c01053ee:	c1 ee 12             	shr    $0x12,%esi
c01053f1:	83 c6 7c             	add    $0x7c,%esi
c01053f4:	8d 04 36             	lea    (%esi,%esi,1),%eax
c01053f7:	e9 55 fa ff ff       	jmp    c0104e51 <_malloc_r+0xc1>
c01053fc:	8b 45 08             	mov    0x8(%ebp),%eax
c01053ff:	83 c3 08             	add    $0x8,%ebx
c0105402:	89 5c 24 04          	mov    %ebx,0x4(%esp)
c0105406:	89 04 24             	mov    %eax,(%esp)
c0105409:	e8 52 22 00 00       	call   c0107660 <_free_r>
c010540e:	8b 15 20 20 16 c0    	mov    0xc0162020,%edx
c0105414:	a1 28 a5 10 c0       	mov    0xc010a528,%eax
c0105419:	e9 3c fd ff ff       	jmp    c010515a <_malloc_r+0x3ca>
c010541e:	83 f9 54             	cmp    $0x54,%ecx
c0105421:	77 58                	ja     c010547b <_malloc_r+0x6eb>
c0105423:	89 f1                	mov    %esi,%ecx
c0105425:	c1 e9 0c             	shr    $0xc,%ecx
c0105428:	83 c1 6e             	add    $0x6e,%ecx
c010542b:	8d 04 09             	lea    (%ecx,%ecx,1),%eax
c010542e:	e9 e2 fd ff ff       	jmp    c0105215 <_malloc_r+0x485>
c0105433:	b8 fc 00 00 00       	mov    $0xfc,%eax
c0105438:	be 7e 00 00 00       	mov    $0x7e,%esi
c010543d:	e9 0f fa ff ff       	jmp    c0104e51 <_malloc_r+0xc1>
c0105442:	f7 45 e4 ff 0f 00 00 	testl  $0xfff,-0x1c(%ebp)
c0105449:	0f 85 4a fc ff ff    	jne    c0105099 <_malloc_r+0x309>
c010544f:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0105452:	a1 28 a5 10 c0       	mov    0xc010a528,%eax
c0105457:	01 f1                	add    %esi,%ecx
c0105459:	83 c9 01             	or     $0x1,%ecx
c010545c:	89 48 04             	mov    %ecx,0x4(%eax)
c010545f:	e9 f6 fc ff ff       	jmp    c010515a <_malloc_r+0x3ca>
c0105464:	b8 01 00 00 00       	mov    $0x1,%eax
c0105469:	31 d2                	xor    %edx,%edx
c010546b:	e9 91 fc ff ff       	jmp    c0105101 <_malloc_r+0x371>
c0105470:	89 0d 00 a5 10 c0    	mov    %ecx,0xc010a500
c0105476:	e9 37 fc ff ff       	jmp    c01050b2 <_malloc_r+0x322>
c010547b:	81 f9 54 01 00 00    	cmp    $0x154,%ecx
c0105481:	77 10                	ja     c0105493 <_malloc_r+0x703>
c0105483:	89 f1                	mov    %esi,%ecx
c0105485:	c1 e9 0f             	shr    $0xf,%ecx
c0105488:	83 c1 77             	add    $0x77,%ecx
c010548b:	8d 04 09             	lea    (%ecx,%ecx,1),%eax
c010548e:	e9 82 fd ff ff       	jmp    c0105215 <_malloc_r+0x485>
c0105493:	81 f9 54 05 00 00    	cmp    $0x554,%ecx
c0105499:	77 10                	ja     c01054ab <_malloc_r+0x71b>
c010549b:	89 f1                	mov    %esi,%ecx
c010549d:	c1 e9 12             	shr    $0x12,%ecx
c01054a0:	83 c1 7c             	add    $0x7c,%ecx
c01054a3:	8d 04 09             	lea    (%ecx,%ecx,1),%eax
c01054a6:	e9 6a fd ff ff       	jmp    c0105215 <_malloc_r+0x485>
c01054ab:	b8 fc 00 00 00       	mov    $0xfc,%eax
c01054b0:	b9 7e 00 00 00       	mov    $0x7e,%ecx
c01054b5:	e9 5b fd ff ff       	jmp    c0105215 <_malloc_r+0x485>
c01054ba:	a1 24 a5 10 c0       	mov    0xc010a524,%eax
c01054bf:	e9 20 fe ff ff       	jmp    c01052e4 <_malloc_r+0x554>
c01054c4:	8b 45 e0             	mov    -0x20(%ebp),%eax
c01054c7:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c01054ca:	e9 88 fa ff ff       	jmp    c0104f57 <_malloc_r+0x1c7>
c01054cf:	90                   	nop

c01054d0 <memchr>:
c01054d0:	55                   	push   %ebp
c01054d1:	89 e5                	mov    %esp,%ebp
c01054d3:	57                   	push   %edi
c01054d4:	0f b6 45 0c          	movzbl 0xc(%ebp),%eax
c01054d8:	8b 4d 10             	mov    0x10(%ebp),%ecx
c01054db:	8b 7d 08             	mov    0x8(%ebp),%edi
c01054de:	31 d2                	xor    %edx,%edx
c01054e0:	85 c9                	test   %ecx,%ecx
c01054e2:	74 79                	je     c010555d <L20>
c01054e4:	f7 c7 03 00 00 00    	test   $0x3,%edi
c01054ea:	74 28                	je     c0105514 <L5>
c01054ec:	3a 07                	cmp    (%edi),%al
c01054ee:	74 6a                	je     c010555a <L15>
c01054f0:	47                   	inc    %edi
c01054f1:	49                   	dec    %ecx
c01054f2:	74 69                	je     c010555d <L20>
c01054f4:	f7 c7 03 00 00 00    	test   $0x3,%edi
c01054fa:	74 18                	je     c0105514 <L5>
c01054fc:	3a 07                	cmp    (%edi),%al
c01054fe:	74 5a                	je     c010555a <L15>
c0105500:	47                   	inc    %edi
c0105501:	49                   	dec    %ecx
c0105502:	74 59                	je     c010555d <L20>
c0105504:	f7 c7 03 00 00 00    	test   $0x3,%edi
c010550a:	74 08                	je     c0105514 <L5>
c010550c:	3a 07                	cmp    (%edi),%al
c010550e:	74 4a                	je     c010555a <L15>
c0105510:	47                   	inc    %edi
c0105511:	49                   	dec    %ecx
c0105512:	74 49                	je     c010555d <L20>

c0105514 <L5>:
c0105514:	88 c4                	mov    %al,%ah
c0105516:	89 c2                	mov    %eax,%edx
c0105518:	c1 e2 10             	shl    $0x10,%edx
c010551b:	09 d0                	or     %edx,%eax
c010551d:	53                   	push   %ebx
c010551e:	66 90                	xchg   %ax,%ax

c0105520 <L8>:
c0105520:	83 e9 04             	sub    $0x4,%ecx
c0105523:	72 1c                	jb     c0105541 <L9>
c0105525:	8b 17                	mov    (%edi),%edx
c0105527:	83 c7 04             	add    $0x4,%edi
c010552a:	31 c2                	xor    %eax,%edx
c010552c:	8d 9a ff fe fe fe    	lea    -0x1010101(%edx),%ebx
c0105532:	f7 d2                	not    %edx
c0105534:	21 d3                	and    %edx,%ebx
c0105536:	f7 c3 80 80 80 80    	test   $0x80808080,%ebx
c010553c:	74 e2                	je     c0105520 <L8>
c010553e:	83 ef 04             	sub    $0x4,%edi

c0105541 <L9>:
c0105541:	5b                   	pop    %ebx
c0105542:	31 d2                	xor    %edx,%edx
c0105544:	83 c1 04             	add    $0x4,%ecx
c0105547:	74 14                	je     c010555d <L20>
c0105549:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

c0105550 <L10>:
c0105550:	3a 07                	cmp    (%edi),%al
c0105552:	74 06                	je     c010555a <L15>
c0105554:	47                   	inc    %edi
c0105555:	49                   	dec    %ecx
c0105556:	75 f8                	jne    c0105550 <L10>
c0105558:	31 ff                	xor    %edi,%edi

c010555a <L15>:
c010555a:	4a                   	dec    %edx
c010555b:	21 fa                	and    %edi,%edx

c010555d <L20>:
c010555d:	89 d0                	mov    %edx,%eax
c010555f:	8d 65 fc             	lea    -0x4(%ebp),%esp
c0105562:	5f                   	pop    %edi
c0105563:	c9                   	leave  
c0105564:	c3                   	ret    
c0105565:	66 90                	xchg   %ax,%ax
c0105567:	66 90                	xchg   %ax,%ax
c0105569:	66 90                	xchg   %ax,%ax
c010556b:	66 90                	xchg   %ax,%ax
c010556d:	66 90                	xchg   %ax,%ax
c010556f:	90                   	nop

c0105570 <__malloc_lock>:
c0105570:	55                   	push   %ebp
c0105571:	89 e5                	mov    %esp,%ebp
c0105573:	5d                   	pop    %ebp
c0105574:	c3                   	ret    
c0105575:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0105579:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0105580 <__malloc_unlock>:
c0105580:	55                   	push   %ebp
c0105581:	89 e5                	mov    %esp,%ebp
c0105583:	5d                   	pop    %ebp
c0105584:	c3                   	ret    
c0105585:	66 90                	xchg   %ax,%ax
c0105587:	66 90                	xchg   %ax,%ax
c0105589:	66 90                	xchg   %ax,%ax
c010558b:	66 90                	xchg   %ax,%ax
c010558d:	66 90                	xchg   %ax,%ax
c010558f:	90                   	nop

c0105590 <_Balloc>:
c0105590:	55                   	push   %ebp
c0105591:	89 e5                	mov    %esp,%ebp
c0105593:	57                   	push   %edi
c0105594:	56                   	push   %esi
c0105595:	53                   	push   %ebx
c0105596:	83 ec 1c             	sub    $0x1c,%esp
c0105599:	8b 75 08             	mov    0x8(%ebp),%esi
c010559c:	8b 5d 0c             	mov    0xc(%ebp),%ebx
c010559f:	8b 46 4c             	mov    0x4c(%esi),%eax
c01055a2:	85 c0                	test   %eax,%eax
c01055a4:	74 2a                	je     c01055d0 <_Balloc+0x40>
c01055a6:	8d 14 98             	lea    (%eax,%ebx,4),%edx
c01055a9:	8b 02                	mov    (%edx),%eax
c01055ab:	85 c0                	test   %eax,%eax
c01055ad:	74 49                	je     c01055f8 <_Balloc+0x68>
c01055af:	8b 08                	mov    (%eax),%ecx
c01055b1:	89 0a                	mov    %ecx,(%edx)
c01055b3:	c7 40 10 00 00 00 00 	movl   $0x0,0x10(%eax)
c01055ba:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%eax)
c01055c1:	83 c4 1c             	add    $0x1c,%esp
c01055c4:	5b                   	pop    %ebx
c01055c5:	5e                   	pop    %esi
c01055c6:	5f                   	pop    %edi
c01055c7:	5d                   	pop    %ebp
c01055c8:	c3                   	ret    
c01055c9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c01055d0:	c7 44 24 08 21 00 00 	movl   $0x21,0x8(%esp)
c01055d7:	00 
c01055d8:	c7 44 24 04 04 00 00 	movl   $0x4,0x4(%esp)
c01055df:	00 
c01055e0:	89 34 24             	mov    %esi,(%esp)
c01055e3:	e8 c8 1e 00 00       	call   c01074b0 <_calloc_r>
c01055e8:	85 c0                	test   %eax,%eax
c01055ea:	89 46 4c             	mov    %eax,0x4c(%esi)
c01055ed:	75 b7                	jne    c01055a6 <_Balloc+0x16>
c01055ef:	31 c0                	xor    %eax,%eax
c01055f1:	eb ce                	jmp    c01055c1 <_Balloc+0x31>
c01055f3:	90                   	nop
c01055f4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c01055f8:	89 d9                	mov    %ebx,%ecx
c01055fa:	bf 01 00 00 00       	mov    $0x1,%edi
c01055ff:	d3 e7                	shl    %cl,%edi
c0105601:	8d 04 bd 14 00 00 00 	lea    0x14(,%edi,4),%eax
c0105608:	89 44 24 08          	mov    %eax,0x8(%esp)
c010560c:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c0105613:	00 
c0105614:	89 34 24             	mov    %esi,(%esp)
c0105617:	e8 94 1e 00 00       	call   c01074b0 <_calloc_r>
c010561c:	85 c0                	test   %eax,%eax
c010561e:	74 cf                	je     c01055ef <_Balloc+0x5f>
c0105620:	89 58 04             	mov    %ebx,0x4(%eax)
c0105623:	89 78 08             	mov    %edi,0x8(%eax)
c0105626:	eb 8b                	jmp    c01055b3 <_Balloc+0x23>
c0105628:	90                   	nop
c0105629:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

c0105630 <_Bfree>:
c0105630:	55                   	push   %ebp
c0105631:	89 e5                	mov    %esp,%ebp
c0105633:	8b 45 0c             	mov    0xc(%ebp),%eax
c0105636:	85 c0                	test   %eax,%eax
c0105638:	74 12                	je     c010564c <_Bfree+0x1c>
c010563a:	8b 55 08             	mov    0x8(%ebp),%edx
c010563d:	8b 48 04             	mov    0x4(%eax),%ecx
c0105640:	8b 52 4c             	mov    0x4c(%edx),%edx
c0105643:	8d 14 8a             	lea    (%edx,%ecx,4),%edx
c0105646:	8b 0a                	mov    (%edx),%ecx
c0105648:	89 08                	mov    %ecx,(%eax)
c010564a:	89 02                	mov    %eax,(%edx)
c010564c:	5d                   	pop    %ebp
c010564d:	c3                   	ret    
c010564e:	66 90                	xchg   %ax,%ax

c0105650 <__multadd>:
c0105650:	55                   	push   %ebp
c0105651:	89 e5                	mov    %esp,%ebp
c0105653:	57                   	push   %edi
c0105654:	56                   	push   %esi
c0105655:	53                   	push   %ebx
c0105656:	83 ec 2c             	sub    $0x2c,%esp
c0105659:	8b 45 0c             	mov    0xc(%ebp),%eax
c010565c:	8b 5d 14             	mov    0x14(%ebp),%ebx
c010565f:	8b 40 10             	mov    0x10(%eax),%eax
c0105662:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0105665:	8b 45 0c             	mov    0xc(%ebp),%eax
c0105668:	8d 78 14             	lea    0x14(%eax),%edi
c010566b:	31 c0                	xor    %eax,%eax
c010566d:	8d 76 00             	lea    0x0(%esi),%esi
c0105670:	8b 0c 87             	mov    (%edi,%eax,4),%ecx
c0105673:	0f b7 d1             	movzwl %cx,%edx
c0105676:	0f af 55 10          	imul   0x10(%ebp),%edx
c010567a:	c1 e9 10             	shr    $0x10,%ecx
c010567d:	0f af 4d 10          	imul   0x10(%ebp),%ecx
c0105681:	01 da                	add    %ebx,%edx
c0105683:	89 d3                	mov    %edx,%ebx
c0105685:	0f b7 d2             	movzwl %dx,%edx
c0105688:	c1 eb 10             	shr    $0x10,%ebx
c010568b:	01 d9                	add    %ebx,%ecx
c010568d:	89 ce                	mov    %ecx,%esi
c010568f:	c1 e1 10             	shl    $0x10,%ecx
c0105692:	01 d1                	add    %edx,%ecx
c0105694:	c1 ee 10             	shr    $0x10,%esi
c0105697:	89 0c 87             	mov    %ecx,(%edi,%eax,4)
c010569a:	83 c0 01             	add    $0x1,%eax
c010569d:	89 f3                	mov    %esi,%ebx
c010569f:	39 45 e4             	cmp    %eax,-0x1c(%ebp)
c01056a2:	7f cc                	jg     c0105670 <__multadd+0x20>
c01056a4:	85 f6                	test   %esi,%esi
c01056a6:	74 1b                	je     c01056c3 <__multadd+0x73>
c01056a8:	8b 45 0c             	mov    0xc(%ebp),%eax
c01056ab:	8b 7d e4             	mov    -0x1c(%ebp),%edi
c01056ae:	3b 78 08             	cmp    0x8(%eax),%edi
c01056b1:	7d 1d                	jge    c01056d0 <__multadd+0x80>
c01056b3:	8b 7d 0c             	mov    0xc(%ebp),%edi
c01056b6:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c01056b9:	89 74 87 14          	mov    %esi,0x14(%edi,%eax,4)
c01056bd:	83 c0 01             	add    $0x1,%eax
c01056c0:	89 47 10             	mov    %eax,0x10(%edi)
c01056c3:	8b 45 0c             	mov    0xc(%ebp),%eax
c01056c6:	83 c4 2c             	add    $0x2c,%esp
c01056c9:	5b                   	pop    %ebx
c01056ca:	5e                   	pop    %esi
c01056cb:	5f                   	pop    %edi
c01056cc:	5d                   	pop    %ebp
c01056cd:	c3                   	ret    
c01056ce:	66 90                	xchg   %ax,%ax
c01056d0:	8b 40 04             	mov    0x4(%eax),%eax
c01056d3:	89 45 e0             	mov    %eax,-0x20(%ebp)
c01056d6:	83 c0 01             	add    $0x1,%eax
c01056d9:	89 44 24 04          	mov    %eax,0x4(%esp)
c01056dd:	8b 45 08             	mov    0x8(%ebp),%eax
c01056e0:	89 04 24             	mov    %eax,(%esp)
c01056e3:	e8 a8 fe ff ff       	call   c0105590 <_Balloc>
c01056e8:	89 c3                	mov    %eax,%ebx
c01056ea:	8b 45 0c             	mov    0xc(%ebp),%eax
c01056ed:	8b 40 10             	mov    0x10(%eax),%eax
c01056f0:	8d 04 85 08 00 00 00 	lea    0x8(,%eax,4),%eax
c01056f7:	89 44 24 08          	mov    %eax,0x8(%esp)
c01056fb:	8b 45 0c             	mov    0xc(%ebp),%eax
c01056fe:	83 c0 0c             	add    $0xc,%eax
c0105701:	89 44 24 04          	mov    %eax,0x4(%esp)
c0105705:	8d 43 0c             	lea    0xc(%ebx),%eax
c0105708:	89 04 24             	mov    %eax,(%esp)
c010570b:	e8 60 c0 ff ff       	call   c0101770 <memcpy>
c0105710:	8b 45 0c             	mov    0xc(%ebp),%eax
c0105713:	8b 7d 0c             	mov    0xc(%ebp),%edi
c0105716:	89 5d 0c             	mov    %ebx,0xc(%ebp)
c0105719:	8b 50 04             	mov    0x4(%eax),%edx
c010571c:	8b 45 08             	mov    0x8(%ebp),%eax
c010571f:	8b 40 4c             	mov    0x4c(%eax),%eax
c0105722:	8d 04 90             	lea    (%eax,%edx,4),%eax
c0105725:	8b 10                	mov    (%eax),%edx
c0105727:	89 17                	mov    %edx,(%edi)
c0105729:	89 38                	mov    %edi,(%eax)
c010572b:	eb 86                	jmp    c01056b3 <__multadd+0x63>
c010572d:	8d 76 00             	lea    0x0(%esi),%esi

c0105730 <__s2b>:
c0105730:	55                   	push   %ebp
c0105731:	ba 39 8e e3 38       	mov    $0x38e38e39,%edx
c0105736:	89 e5                	mov    %esp,%ebp
c0105738:	57                   	push   %edi
c0105739:	56                   	push   %esi
c010573a:	53                   	push   %ebx
c010573b:	83 ec 2c             	sub    $0x2c,%esp
c010573e:	8b 45 14             	mov    0x14(%ebp),%eax
c0105741:	8b 5d 08             	mov    0x8(%ebp),%ebx
c0105744:	8b 75 0c             	mov    0xc(%ebp),%esi
c0105747:	8d 48 08             	lea    0x8(%eax),%ecx
c010574a:	89 c8                	mov    %ecx,%eax
c010574c:	f7 ea                	imul   %edx
c010574e:	c1 f9 1f             	sar    $0x1f,%ecx
c0105751:	d1 fa                	sar    %edx
c0105753:	29 ca                	sub    %ecx,%edx
c0105755:	83 fa 01             	cmp    $0x1,%edx
c0105758:	0f 8e be 00 00 00    	jle    c010581c <__s2b+0xec>
c010575e:	b8 01 00 00 00       	mov    $0x1,%eax
c0105763:	31 c9                	xor    %ecx,%ecx
c0105765:	8d 76 00             	lea    0x0(%esi),%esi
c0105768:	01 c0                	add    %eax,%eax
c010576a:	83 c1 01             	add    $0x1,%ecx
c010576d:	39 c2                	cmp    %eax,%edx
c010576f:	7f f7                	jg     c0105768 <__s2b+0x38>
c0105771:	89 4c 24 04          	mov    %ecx,0x4(%esp)
c0105775:	89 1c 24             	mov    %ebx,(%esp)
c0105778:	e8 13 fe ff ff       	call   c0105590 <_Balloc>
c010577d:	8b 55 18             	mov    0x18(%ebp),%edx
c0105780:	83 7d 10 09          	cmpl   $0x9,0x10(%ebp)
c0105784:	89 50 14             	mov    %edx,0x14(%eax)
c0105787:	c7 40 10 01 00 00 00 	movl   $0x1,0x10(%eax)
c010578e:	0f 8e 7c 00 00 00    	jle    c0105810 <__s2b+0xe0>
c0105794:	8d 4e 09             	lea    0x9(%esi),%ecx
c0105797:	03 75 10             	add    0x10(%ebp),%esi
c010579a:	89 cf                	mov    %ecx,%edi
c010579c:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c010579f:	90                   	nop
c01057a0:	83 c7 01             	add    $0x1,%edi
c01057a3:	0f be 57 ff          	movsbl -0x1(%edi),%edx
c01057a7:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c01057ae:	00 
c01057af:	89 44 24 04          	mov    %eax,0x4(%esp)
c01057b3:	89 1c 24             	mov    %ebx,(%esp)
c01057b6:	83 ea 30             	sub    $0x30,%edx
c01057b9:	89 54 24 0c          	mov    %edx,0xc(%esp)
c01057bd:	e8 8e fe ff ff       	call   c0105650 <__multadd>
c01057c2:	39 f7                	cmp    %esi,%edi
c01057c4:	75 da                	jne    c01057a0 <__s2b+0x70>
c01057c6:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c01057c9:	8b 7d 10             	mov    0x10(%ebp),%edi
c01057cc:	8d 74 39 f8          	lea    -0x8(%ecx,%edi,1),%esi
c01057d0:	8b 4d 10             	mov    0x10(%ebp),%ecx
c01057d3:	39 4d 14             	cmp    %ecx,0x14(%ebp)
c01057d6:	7e 2e                	jle    c0105806 <__s2b+0xd6>
c01057d8:	8b 7d 14             	mov    0x14(%ebp),%edi
c01057db:	29 cf                	sub    %ecx,%edi
c01057dd:	01 f7                	add    %esi,%edi
c01057df:	90                   	nop
c01057e0:	83 c6 01             	add    $0x1,%esi
c01057e3:	0f be 56 ff          	movsbl -0x1(%esi),%edx
c01057e7:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c01057ee:	00 
c01057ef:	89 44 24 04          	mov    %eax,0x4(%esp)
c01057f3:	89 1c 24             	mov    %ebx,(%esp)
c01057f6:	83 ea 30             	sub    $0x30,%edx
c01057f9:	89 54 24 0c          	mov    %edx,0xc(%esp)
c01057fd:	e8 4e fe ff ff       	call   c0105650 <__multadd>
c0105802:	39 fe                	cmp    %edi,%esi
c0105804:	75 da                	jne    c01057e0 <__s2b+0xb0>
c0105806:	83 c4 2c             	add    $0x2c,%esp
c0105809:	5b                   	pop    %ebx
c010580a:	5e                   	pop    %esi
c010580b:	5f                   	pop    %edi
c010580c:	5d                   	pop    %ebp
c010580d:	c3                   	ret    
c010580e:	66 90                	xchg   %ax,%ax
c0105810:	83 c6 0a             	add    $0xa,%esi
c0105813:	c7 45 10 09 00 00 00 	movl   $0x9,0x10(%ebp)
c010581a:	eb b4                	jmp    c01057d0 <__s2b+0xa0>
c010581c:	31 c9                	xor    %ecx,%ecx
c010581e:	e9 4e ff ff ff       	jmp    c0105771 <__s2b+0x41>
c0105823:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0105829:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0105830 <__hi0bits>:
c0105830:	55                   	push   %ebp
c0105831:	31 c9                	xor    %ecx,%ecx
c0105833:	89 e5                	mov    %esp,%ebp
c0105835:	8b 55 08             	mov    0x8(%ebp),%edx
c0105838:	f7 c2 00 00 ff ff    	test   $0xffff0000,%edx
c010583e:	75 05                	jne    c0105845 <__hi0bits+0x15>
c0105840:	c1 e2 10             	shl    $0x10,%edx
c0105843:	b1 10                	mov    $0x10,%cl
c0105845:	f7 c2 00 00 00 ff    	test   $0xff000000,%edx
c010584b:	75 06                	jne    c0105853 <__hi0bits+0x23>
c010584d:	83 c1 08             	add    $0x8,%ecx
c0105850:	c1 e2 08             	shl    $0x8,%edx
c0105853:	f7 c2 00 00 00 f0    	test   $0xf0000000,%edx
c0105859:	75 06                	jne    c0105861 <__hi0bits+0x31>
c010585b:	83 c1 04             	add    $0x4,%ecx
c010585e:	c1 e2 04             	shl    $0x4,%edx
c0105861:	f7 c2 00 00 00 c0    	test   $0xc0000000,%edx
c0105867:	75 06                	jne    c010586f <__hi0bits+0x3f>
c0105869:	83 c1 02             	add    $0x2,%ecx
c010586c:	c1 e2 02             	shl    $0x2,%edx
c010586f:	85 d2                	test   %edx,%edx
c0105871:	89 c8                	mov    %ecx,%eax
c0105873:	78 0d                	js     c0105882 <__hi0bits+0x52>
c0105875:	81 e2 00 00 00 40    	and    $0x40000000,%edx
c010587b:	b8 20 00 00 00       	mov    $0x20,%eax
c0105880:	75 06                	jne    c0105888 <__hi0bits+0x58>
c0105882:	5d                   	pop    %ebp
c0105883:	c3                   	ret    
c0105884:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0105888:	8d 41 01             	lea    0x1(%ecx),%eax
c010588b:	5d                   	pop    %ebp
c010588c:	c3                   	ret    
c010588d:	8d 76 00             	lea    0x0(%esi),%esi

c0105890 <__lo0bits>:
c0105890:	55                   	push   %ebp
c0105891:	89 e5                	mov    %esp,%ebp
c0105893:	53                   	push   %ebx
c0105894:	8b 5d 08             	mov    0x8(%ebp),%ebx
c0105897:	8b 13                	mov    (%ebx),%edx
c0105899:	f6 c2 07             	test   $0x7,%dl
c010589c:	74 1a                	je     c01058b8 <__lo0bits+0x28>
c010589e:	31 c0                	xor    %eax,%eax
c01058a0:	f6 c2 01             	test   $0x1,%dl
c01058a3:	75 0f                	jne    c01058b4 <__lo0bits+0x24>
c01058a5:	f6 c2 02             	test   $0x2,%dl
c01058a8:	75 56                	jne    c0105900 <__lo0bits+0x70>
c01058aa:	c1 ea 02             	shr    $0x2,%edx
c01058ad:	b8 02 00 00 00       	mov    $0x2,%eax
c01058b2:	89 13                	mov    %edx,(%ebx)
c01058b4:	5b                   	pop    %ebx
c01058b5:	5d                   	pop    %ebp
c01058b6:	c3                   	ret    
c01058b7:	90                   	nop
c01058b8:	31 c9                	xor    %ecx,%ecx
c01058ba:	66 85 d2             	test   %dx,%dx
c01058bd:	75 05                	jne    c01058c4 <__lo0bits+0x34>
c01058bf:	c1 ea 10             	shr    $0x10,%edx
c01058c2:	b1 10                	mov    $0x10,%cl
c01058c4:	84 d2                	test   %dl,%dl
c01058c6:	75 06                	jne    c01058ce <__lo0bits+0x3e>
c01058c8:	83 c1 08             	add    $0x8,%ecx
c01058cb:	c1 ea 08             	shr    $0x8,%edx
c01058ce:	f6 c2 0f             	test   $0xf,%dl
c01058d1:	75 06                	jne    c01058d9 <__lo0bits+0x49>
c01058d3:	83 c1 04             	add    $0x4,%ecx
c01058d6:	c1 ea 04             	shr    $0x4,%edx
c01058d9:	f6 c2 03             	test   $0x3,%dl
c01058dc:	75 06                	jne    c01058e4 <__lo0bits+0x54>
c01058de:	83 c1 02             	add    $0x2,%ecx
c01058e1:	c1 ea 02             	shr    $0x2,%edx
c01058e4:	f6 c2 01             	test   $0x1,%dl
c01058e7:	75 0c                	jne    c01058f5 <__lo0bits+0x65>
c01058e9:	d1 ea                	shr    %edx
c01058eb:	b8 20 00 00 00       	mov    $0x20,%eax
c01058f0:	74 c2                	je     c01058b4 <__lo0bits+0x24>
c01058f2:	83 c1 01             	add    $0x1,%ecx
c01058f5:	89 13                	mov    %edx,(%ebx)
c01058f7:	89 c8                	mov    %ecx,%eax
c01058f9:	5b                   	pop    %ebx
c01058fa:	5d                   	pop    %ebp
c01058fb:	c3                   	ret    
c01058fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0105900:	d1 ea                	shr    %edx
c0105902:	b0 01                	mov    $0x1,%al
c0105904:	89 13                	mov    %edx,(%ebx)
c0105906:	5b                   	pop    %ebx
c0105907:	5d                   	pop    %ebp
c0105908:	c3                   	ret    
c0105909:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

c0105910 <__i2b>:
c0105910:	55                   	push   %ebp
c0105911:	89 e5                	mov    %esp,%ebp
c0105913:	83 ec 18             	sub    $0x18,%esp
c0105916:	8b 45 08             	mov    0x8(%ebp),%eax
c0105919:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c0105920:	00 
c0105921:	89 04 24             	mov    %eax,(%esp)
c0105924:	e8 67 fc ff ff       	call   c0105590 <_Balloc>
c0105929:	8b 55 0c             	mov    0xc(%ebp),%edx
c010592c:	89 50 14             	mov    %edx,0x14(%eax)
c010592f:	c7 40 10 01 00 00 00 	movl   $0x1,0x10(%eax)
c0105936:	c9                   	leave  
c0105937:	c3                   	ret    
c0105938:	90                   	nop
c0105939:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

c0105940 <__multiply>:
c0105940:	55                   	push   %ebp
c0105941:	89 e5                	mov    %esp,%ebp
c0105943:	57                   	push   %edi
c0105944:	56                   	push   %esi
c0105945:	53                   	push   %ebx
c0105946:	83 ec 3c             	sub    $0x3c,%esp
c0105949:	8b 75 0c             	mov    0xc(%ebp),%esi
c010594c:	8b 45 10             	mov    0x10(%ebp),%eax
c010594f:	8b 7e 10             	mov    0x10(%esi),%edi
c0105952:	8b 58 10             	mov    0x10(%eax),%ebx
c0105955:	39 df                	cmp    %ebx,%edi
c0105957:	7d 0e                	jge    c0105967 <__multiply+0x27>
c0105959:	89 f8                	mov    %edi,%eax
c010595b:	89 df                	mov    %ebx,%edi
c010595d:	89 c3                	mov    %eax,%ebx
c010595f:	89 f0                	mov    %esi,%eax
c0105961:	8b 75 10             	mov    0x10(%ebp),%esi
c0105964:	89 45 10             	mov    %eax,0x10(%ebp)
c0105967:	8d 04 1f             	lea    (%edi,%ebx,1),%eax
c010596a:	3b 46 08             	cmp    0x8(%esi),%eax
c010596d:	89 45 c8             	mov    %eax,-0x38(%ebp)
c0105970:	0f 9f c0             	setg   %al
c0105973:	0f b6 c0             	movzbl %al,%eax
c0105976:	03 46 04             	add    0x4(%esi),%eax
c0105979:	89 44 24 04          	mov    %eax,0x4(%esp)
c010597d:	8b 45 08             	mov    0x8(%ebp),%eax
c0105980:	89 04 24             	mov    %eax,(%esp)
c0105983:	e8 08 fc ff ff       	call   c0105590 <_Balloc>
c0105988:	8b 55 c8             	mov    -0x38(%ebp),%edx
c010598b:	89 45 c0             	mov    %eax,-0x40(%ebp)
c010598e:	8d 40 14             	lea    0x14(%eax),%eax
c0105991:	8d 14 90             	lea    (%eax,%edx,4),%edx
c0105994:	89 d1                	mov    %edx,%ecx
c0105996:	39 c8                	cmp    %ecx,%eax
c0105998:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c010599b:	89 55 c4             	mov    %edx,-0x3c(%ebp)
c010599e:	73 15                	jae    c01059b5 <__multiply+0x75>
c01059a0:	8b 55 c4             	mov    -0x3c(%ebp),%edx
c01059a3:	90                   	nop
c01059a4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c01059a8:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
c01059ae:	83 c0 04             	add    $0x4,%eax
c01059b1:	39 c2                	cmp    %eax,%edx
c01059b3:	77 f3                	ja     c01059a8 <__multiply+0x68>
c01059b5:	8d 46 14             	lea    0x14(%esi),%eax
c01059b8:	89 45 d0             	mov    %eax,-0x30(%ebp)
c01059bb:	8d 04 b8             	lea    (%eax,%edi,4),%eax
c01059be:	89 45 dc             	mov    %eax,-0x24(%ebp)
c01059c1:	8b 45 10             	mov    0x10(%ebp),%eax
c01059c4:	83 c0 14             	add    $0x14,%eax
c01059c7:	8d 3c 98             	lea    (%eax,%ebx,4),%edi
c01059ca:	39 f8                	cmp    %edi,%eax
c01059cc:	89 45 d8             	mov    %eax,-0x28(%ebp)
c01059cf:	89 7d cc             	mov    %edi,-0x34(%ebp)
c01059d2:	0f 83 e8 00 00 00    	jae    c0105ac0 <__multiply+0x180>
c01059d8:	8b 45 d8             	mov    -0x28(%ebp),%eax
c01059db:	8b 00                	mov    (%eax),%eax
c01059dd:	0f b7 f8             	movzwl %ax,%edi
c01059e0:	85 ff                	test   %edi,%edi
c01059e2:	89 7d e4             	mov    %edi,-0x1c(%ebp)
c01059e5:	74 5a                	je     c0105a41 <__multiply+0x101>
c01059e7:	8b 55 d4             	mov    -0x2c(%ebp),%edx
c01059ea:	31 db                	xor    %ebx,%ebx
c01059ec:	8b 75 d0             	mov    -0x30(%ebp),%esi
c01059ef:	eb 09                	jmp    c01059fa <__multiply+0xba>
c01059f1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c01059f8:	89 fa                	mov    %edi,%edx
c01059fa:	8b 0e                	mov    (%esi),%ecx
c01059fc:	83 c6 04             	add    $0x4,%esi
c01059ff:	0f b7 3a             	movzwl (%edx),%edi
c0105a02:	0f b7 c1             	movzwl %cx,%eax
c0105a05:	0f af 45 e4          	imul   -0x1c(%ebp),%eax
c0105a09:	c1 e9 10             	shr    $0x10,%ecx
c0105a0c:	0f af 4d e4          	imul   -0x1c(%ebp),%ecx
c0105a10:	01 f8                	add    %edi,%eax
c0105a12:	01 d8                	add    %ebx,%eax
c0105a14:	8b 1a                	mov    (%edx),%ebx
c0105a16:	8d 7a 04             	lea    0x4(%edx),%edi
c0105a19:	c1 eb 10             	shr    $0x10,%ebx
c0105a1c:	01 d9                	add    %ebx,%ecx
c0105a1e:	89 c3                	mov    %eax,%ebx
c0105a20:	c1 eb 10             	shr    $0x10,%ebx
c0105a23:	0f b7 c0             	movzwl %ax,%eax
c0105a26:	01 d9                	add    %ebx,%ecx
c0105a28:	89 cb                	mov    %ecx,%ebx
c0105a2a:	c1 e1 10             	shl    $0x10,%ecx
c0105a2d:	09 c1                	or     %eax,%ecx
c0105a2f:	c1 eb 10             	shr    $0x10,%ebx
c0105a32:	39 75 dc             	cmp    %esi,-0x24(%ebp)
c0105a35:	89 0a                	mov    %ecx,(%edx)
c0105a37:	77 bf                	ja     c01059f8 <__multiply+0xb8>
c0105a39:	8b 45 d8             	mov    -0x28(%ebp),%eax
c0105a3c:	89 5a 04             	mov    %ebx,0x4(%edx)
c0105a3f:	8b 00                	mov    (%eax),%eax
c0105a41:	c1 e8 10             	shr    $0x10,%eax
c0105a44:	85 c0                	test   %eax,%eax
c0105a46:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0105a49:	74 61                	je     c0105aac <__multiply+0x16c>
c0105a4b:	8b 45 d4             	mov    -0x2c(%ebp),%eax
c0105a4e:	31 ff                	xor    %edi,%edi
c0105a50:	89 fe                	mov    %edi,%esi
c0105a52:	8b 10                	mov    (%eax),%edx
c0105a54:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0105a57:	8b 45 d0             	mov    -0x30(%ebp),%eax
c0105a5a:	89 d3                	mov    %edx,%ebx
c0105a5c:	eb 05                	jmp    c0105a63 <__multiply+0x123>
c0105a5e:	66 90                	xchg   %ax,%ax
c0105a60:	89 4d e0             	mov    %ecx,-0x20(%ebp)
c0105a63:	0f b7 08             	movzwl (%eax),%ecx
c0105a66:	c1 eb 10             	shr    $0x10,%ebx
c0105a69:	0f b7 d2             	movzwl %dx,%edx
c0105a6c:	0f af 4d e4          	imul   -0x1c(%ebp),%ecx
c0105a70:	83 c0 04             	add    $0x4,%eax
c0105a73:	8d 3c 19             	lea    (%ecx,%ebx,1),%edi
c0105a76:	01 f7                	add    %esi,%edi
c0105a78:	8b 75 e0             	mov    -0x20(%ebp),%esi
c0105a7b:	89 fb                	mov    %edi,%ebx
c0105a7d:	c1 e3 10             	shl    $0x10,%ebx
c0105a80:	09 d3                	or     %edx,%ebx
c0105a82:	89 1e                	mov    %ebx,(%esi)
c0105a84:	8b 5e 04             	mov    0x4(%esi),%ebx
c0105a87:	8d 4e 04             	lea    0x4(%esi),%ecx
c0105a8a:	0f b7 50 fe          	movzwl -0x2(%eax),%edx
c0105a8e:	c1 ef 10             	shr    $0x10,%edi
c0105a91:	0f af 55 e4          	imul   -0x1c(%ebp),%edx
c0105a95:	0f b7 f3             	movzwl %bx,%esi
c0105a98:	01 f2                	add    %esi,%edx
c0105a9a:	01 fa                	add    %edi,%edx
c0105a9c:	89 d6                	mov    %edx,%esi
c0105a9e:	c1 ee 10             	shr    $0x10,%esi
c0105aa1:	39 45 dc             	cmp    %eax,-0x24(%ebp)
c0105aa4:	77 ba                	ja     c0105a60 <__multiply+0x120>
c0105aa6:	8b 45 e0             	mov    -0x20(%ebp),%eax
c0105aa9:	89 50 04             	mov    %edx,0x4(%eax)
c0105aac:	83 45 d8 04          	addl   $0x4,-0x28(%ebp)
c0105ab0:	8b 45 d8             	mov    -0x28(%ebp),%eax
c0105ab3:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
c0105ab7:	39 45 cc             	cmp    %eax,-0x34(%ebp)
c0105aba:	0f 87 18 ff ff ff    	ja     c01059d8 <__multiply+0x98>
c0105ac0:	8b 75 c8             	mov    -0x38(%ebp),%esi
c0105ac3:	85 f6                	test   %esi,%esi
c0105ac5:	7e 29                	jle    c0105af0 <__multiply+0x1b0>
c0105ac7:	8b 7d c4             	mov    -0x3c(%ebp),%edi
c0105aca:	8b 5f fc             	mov    -0x4(%edi),%ebx
c0105acd:	85 db                	test   %ebx,%ebx
c0105acf:	75 1f                	jne    c0105af0 <__multiply+0x1b0>
c0105ad1:	8b 55 c8             	mov    -0x38(%ebp),%edx
c0105ad4:	89 d0                	mov    %edx,%eax
c0105ad6:	c1 e0 02             	shl    $0x2,%eax
c0105ad9:	29 c7                	sub    %eax,%edi
c0105adb:	89 f8                	mov    %edi,%eax
c0105add:	eb 09                	jmp    c0105ae8 <__multiply+0x1a8>
c0105adf:	90                   	nop
c0105ae0:	8b 4c 90 fc          	mov    -0x4(%eax,%edx,4),%ecx
c0105ae4:	85 c9                	test   %ecx,%ecx
c0105ae6:	75 05                	jne    c0105aed <__multiply+0x1ad>
c0105ae8:	83 ea 01             	sub    $0x1,%edx
c0105aeb:	75 f3                	jne    c0105ae0 <__multiply+0x1a0>
c0105aed:	89 55 c8             	mov    %edx,-0x38(%ebp)
c0105af0:	8b 45 c0             	mov    -0x40(%ebp),%eax
c0105af3:	8b 7d c8             	mov    -0x38(%ebp),%edi
c0105af6:	89 78 10             	mov    %edi,0x10(%eax)
c0105af9:	83 c4 3c             	add    $0x3c,%esp
c0105afc:	5b                   	pop    %ebx
c0105afd:	5e                   	pop    %esi
c0105afe:	5f                   	pop    %edi
c0105aff:	5d                   	pop    %ebp
c0105b00:	c3                   	ret    
c0105b01:	eb 0d                	jmp    c0105b10 <__pow5mult>
c0105b03:	90                   	nop
c0105b04:	90                   	nop
c0105b05:	90                   	nop
c0105b06:	90                   	nop
c0105b07:	90                   	nop
c0105b08:	90                   	nop
c0105b09:	90                   	nop
c0105b0a:	90                   	nop
c0105b0b:	90                   	nop
c0105b0c:	90                   	nop
c0105b0d:	90                   	nop
c0105b0e:	90                   	nop
c0105b0f:	90                   	nop

c0105b10 <__pow5mult>:
c0105b10:	55                   	push   %ebp
c0105b11:	89 e5                	mov    %esp,%ebp
c0105b13:	57                   	push   %edi
c0105b14:	56                   	push   %esi
c0105b15:	53                   	push   %ebx
c0105b16:	83 ec 2c             	sub    $0x2c,%esp
c0105b19:	8b 5d 10             	mov    0x10(%ebp),%ebx
c0105b1c:	8b 4d 08             	mov    0x8(%ebp),%ecx
c0105b1f:	8b 7d 0c             	mov    0xc(%ebp),%edi
c0105b22:	89 d8                	mov    %ebx,%eax
c0105b24:	83 e0 03             	and    $0x3,%eax
c0105b27:	0f 85 a3 00 00 00    	jne    c0105bd0 <__pow5mult+0xc0>
c0105b2d:	c1 fb 02             	sar    $0x2,%ebx
c0105b30:	85 db                	test   %ebx,%ebx
c0105b32:	74 5c                	je     c0105b90 <__pow5mult+0x80>
c0105b34:	8b 71 48             	mov    0x48(%ecx),%esi
c0105b37:	85 f6                	test   %esi,%esi
c0105b39:	0f 84 bd 00 00 00    	je     c0105bfc <__pow5mult+0xec>
c0105b3f:	f6 c3 01             	test   $0x1,%bl
c0105b42:	75 15                	jne    c0105b59 <__pow5mult+0x49>
c0105b44:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0105b48:	d1 fb                	sar    %ebx
c0105b4a:	74 44                	je     c0105b90 <__pow5mult+0x80>
c0105b4c:	8b 06                	mov    (%esi),%eax
c0105b4e:	85 c0                	test   %eax,%eax
c0105b50:	74 4e                	je     c0105ba0 <__pow5mult+0x90>
c0105b52:	89 c6                	mov    %eax,%esi
c0105b54:	f6 c3 01             	test   $0x1,%bl
c0105b57:	74 ef                	je     c0105b48 <__pow5mult+0x38>
c0105b59:	89 0c 24             	mov    %ecx,(%esp)
c0105b5c:	89 74 24 08          	mov    %esi,0x8(%esp)
c0105b60:	89 7c 24 04          	mov    %edi,0x4(%esp)
c0105b64:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c0105b67:	e8 d4 fd ff ff       	call   c0105940 <__multiply>
c0105b6c:	85 ff                	test   %edi,%edi
c0105b6e:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c0105b71:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0105b74:	74 52                	je     c0105bc8 <__pow5mult+0xb8>
c0105b76:	8b 57 04             	mov    0x4(%edi),%edx
c0105b79:	d1 fb                	sar    %ebx
c0105b7b:	8b 41 4c             	mov    0x4c(%ecx),%eax
c0105b7e:	8d 04 90             	lea    (%eax,%edx,4),%eax
c0105b81:	8b 10                	mov    (%eax),%edx
c0105b83:	89 17                	mov    %edx,(%edi)
c0105b85:	89 38                	mov    %edi,(%eax)
c0105b87:	8b 7d e0             	mov    -0x20(%ebp),%edi
c0105b8a:	75 c0                	jne    c0105b4c <__pow5mult+0x3c>
c0105b8c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0105b90:	83 c4 2c             	add    $0x2c,%esp
c0105b93:	89 f8                	mov    %edi,%eax
c0105b95:	5b                   	pop    %ebx
c0105b96:	5e                   	pop    %esi
c0105b97:	5f                   	pop    %edi
c0105b98:	5d                   	pop    %ebp
c0105b99:	c3                   	ret    
c0105b9a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0105ba0:	89 74 24 08          	mov    %esi,0x8(%esp)
c0105ba4:	89 74 24 04          	mov    %esi,0x4(%esp)
c0105ba8:	89 0c 24             	mov    %ecx,(%esp)
c0105bab:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c0105bae:	e8 8d fd ff ff       	call   c0105940 <__multiply>
c0105bb3:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c0105bb6:	89 06                	mov    %eax,(%esi)
c0105bb8:	89 c6                	mov    %eax,%esi
c0105bba:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
c0105bc0:	eb 92                	jmp    c0105b54 <__pow5mult+0x44>
c0105bc2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0105bc8:	8b 7d e0             	mov    -0x20(%ebp),%edi
c0105bcb:	e9 78 ff ff ff       	jmp    c0105b48 <__pow5mult+0x38>
c0105bd0:	8b 04 85 1c 89 10 c0 	mov    -0x3fef76e4(,%eax,4),%eax
c0105bd7:	89 7c 24 04          	mov    %edi,0x4(%esp)
c0105bdb:	89 0c 24             	mov    %ecx,(%esp)
c0105bde:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c0105be5:	00 
c0105be6:	89 44 24 08          	mov    %eax,0x8(%esp)
c0105bea:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c0105bed:	e8 5e fa ff ff       	call   c0105650 <__multadd>
c0105bf2:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c0105bf5:	89 c7                	mov    %eax,%edi
c0105bf7:	e9 31 ff ff ff       	jmp    c0105b2d <__pow5mult+0x1d>
c0105bfc:	89 0c 24             	mov    %ecx,(%esp)
c0105bff:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c0105c06:	00 
c0105c07:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c0105c0a:	e8 81 f9 ff ff       	call   c0105590 <_Balloc>
c0105c0f:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c0105c12:	c7 40 14 71 02 00 00 	movl   $0x271,0x14(%eax)
c0105c19:	89 c6                	mov    %eax,%esi
c0105c1b:	c7 40 10 01 00 00 00 	movl   $0x1,0x10(%eax)
c0105c22:	89 41 48             	mov    %eax,0x48(%ecx)
c0105c25:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
c0105c2b:	e9 0f ff ff ff       	jmp    c0105b3f <__pow5mult+0x2f>

c0105c30 <__lshift>:
c0105c30:	55                   	push   %ebp
c0105c31:	89 e5                	mov    %esp,%ebp
c0105c33:	57                   	push   %edi
c0105c34:	56                   	push   %esi
c0105c35:	53                   	push   %ebx
c0105c36:	83 ec 2c             	sub    $0x2c,%esp
c0105c39:	8b 45 0c             	mov    0xc(%ebp),%eax
c0105c3c:	8b 75 10             	mov    0x10(%ebp),%esi
c0105c3f:	89 c7                	mov    %eax,%edi
c0105c41:	8b 50 04             	mov    0x4(%eax),%edx
c0105c44:	8b 40 10             	mov    0x10(%eax),%eax
c0105c47:	89 f3                	mov    %esi,%ebx
c0105c49:	c1 fb 05             	sar    $0x5,%ebx
c0105c4c:	01 d8                	add    %ebx,%eax
c0105c4e:	89 45 d0             	mov    %eax,-0x30(%ebp)
c0105c51:	83 c0 01             	add    $0x1,%eax
c0105c54:	89 c1                	mov    %eax,%ecx
c0105c56:	89 45 d8             	mov    %eax,-0x28(%ebp)
c0105c59:	8b 47 08             	mov    0x8(%edi),%eax
c0105c5c:	39 c1                	cmp    %eax,%ecx
c0105c5e:	7e 09                	jle    c0105c69 <__lshift+0x39>
c0105c60:	01 c0                	add    %eax,%eax
c0105c62:	83 c2 01             	add    $0x1,%edx
c0105c65:	39 c1                	cmp    %eax,%ecx
c0105c67:	7f f7                	jg     c0105c60 <__lshift+0x30>
c0105c69:	8b 45 08             	mov    0x8(%ebp),%eax
c0105c6c:	89 54 24 04          	mov    %edx,0x4(%esp)
c0105c70:	89 04 24             	mov    %eax,(%esp)
c0105c73:	e8 18 f9 ff ff       	call   c0105590 <_Balloc>
c0105c78:	85 db                	test   %ebx,%ebx
c0105c7a:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c0105c7d:	8d 50 14             	lea    0x14(%eax),%edx
c0105c80:	7e 17                	jle    c0105c99 <__lshift+0x69>
c0105c82:	31 c0                	xor    %eax,%eax
c0105c84:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0105c88:	c7 04 82 00 00 00 00 	movl   $0x0,(%edx,%eax,4)
c0105c8f:	83 c0 01             	add    $0x1,%eax
c0105c92:	39 d8                	cmp    %ebx,%eax
c0105c94:	75 f2                	jne    c0105c88 <__lshift+0x58>
c0105c96:	8d 14 82             	lea    (%edx,%eax,4),%edx
c0105c99:	8b 7d 0c             	mov    0xc(%ebp),%edi
c0105c9c:	8b 45 0c             	mov    0xc(%ebp),%eax
c0105c9f:	8b 4f 10             	mov    0x10(%edi),%ecx
c0105ca2:	83 c0 14             	add    $0x14,%eax
c0105ca5:	83 e6 1f             	and    $0x1f,%esi
c0105ca8:	89 75 e0             	mov    %esi,-0x20(%ebp)
c0105cab:	8d 3c 88             	lea    (%eax,%ecx,4),%edi
c0105cae:	89 7d e4             	mov    %edi,-0x1c(%ebp)
c0105cb1:	74 7d                	je     c0105d30 <__lshift+0x100>
c0105cb3:	c7 45 dc 20 00 00 00 	movl   $0x20,-0x24(%ebp)
c0105cba:	29 75 dc             	sub    %esi,-0x24(%ebp)
c0105cbd:	31 f6                	xor    %esi,%esi
c0105cbf:	eb 09                	jmp    c0105cca <__lshift+0x9a>
c0105cc1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0105cc8:	89 fa                	mov    %edi,%edx
c0105cca:	8b 18                	mov    (%eax),%ebx
c0105ccc:	83 c0 04             	add    $0x4,%eax
c0105ccf:	0f b6 4d e0          	movzbl -0x20(%ebp),%ecx
c0105cd3:	8d 7a 04             	lea    0x4(%edx),%edi
c0105cd6:	d3 e3                	shl    %cl,%ebx
c0105cd8:	0f b6 4d dc          	movzbl -0x24(%ebp),%ecx
c0105cdc:	09 f3                	or     %esi,%ebx
c0105cde:	89 1a                	mov    %ebx,(%edx)
c0105ce0:	8b 70 fc             	mov    -0x4(%eax),%esi
c0105ce3:	d3 ee                	shr    %cl,%esi
c0105ce5:	39 45 e4             	cmp    %eax,-0x1c(%ebp)
c0105ce8:	77 de                	ja     c0105cc8 <__lshift+0x98>
c0105cea:	8b 45 d0             	mov    -0x30(%ebp),%eax
c0105ced:	89 72 04             	mov    %esi,0x4(%edx)
c0105cf0:	83 c0 02             	add    $0x2,%eax
c0105cf3:	85 f6                	test   %esi,%esi
c0105cf5:	0f 44 45 d8          	cmove  -0x28(%ebp),%eax
c0105cf9:	89 45 d8             	mov    %eax,-0x28(%ebp)
c0105cfc:	8b 45 d8             	mov    -0x28(%ebp),%eax
c0105cff:	8b 7d d4             	mov    -0x2c(%ebp),%edi
c0105d02:	8b 75 0c             	mov    0xc(%ebp),%esi
c0105d05:	83 e8 01             	sub    $0x1,%eax
c0105d08:	89 47 10             	mov    %eax,0x10(%edi)
c0105d0b:	8b 45 0c             	mov    0xc(%ebp),%eax
c0105d0e:	8b 50 04             	mov    0x4(%eax),%edx
c0105d11:	8b 45 08             	mov    0x8(%ebp),%eax
c0105d14:	8b 40 4c             	mov    0x4c(%eax),%eax
c0105d17:	8d 04 90             	lea    (%eax,%edx,4),%eax
c0105d1a:	8b 10                	mov    (%eax),%edx
c0105d1c:	89 16                	mov    %edx,(%esi)
c0105d1e:	89 30                	mov    %esi,(%eax)
c0105d20:	83 c4 2c             	add    $0x2c,%esp
c0105d23:	89 f8                	mov    %edi,%eax
c0105d25:	5b                   	pop    %ebx
c0105d26:	5e                   	pop    %esi
c0105d27:	5f                   	pop    %edi
c0105d28:	5d                   	pop    %ebp
c0105d29:	c3                   	ret    
c0105d2a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0105d30:	8b 5d e4             	mov    -0x1c(%ebp),%ebx
c0105d33:	90                   	nop
c0105d34:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0105d38:	83 c0 04             	add    $0x4,%eax
c0105d3b:	8b 48 fc             	mov    -0x4(%eax),%ecx
c0105d3e:	83 c2 04             	add    $0x4,%edx
c0105d41:	39 c3                	cmp    %eax,%ebx
c0105d43:	89 4a fc             	mov    %ecx,-0x4(%edx)
c0105d46:	77 f0                	ja     c0105d38 <__lshift+0x108>
c0105d48:	eb b2                	jmp    c0105cfc <__lshift+0xcc>
c0105d4a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

c0105d50 <__mcmp>:
c0105d50:	55                   	push   %ebp
c0105d51:	89 e5                	mov    %esp,%ebp
c0105d53:	8b 4d 08             	mov    0x8(%ebp),%ecx
c0105d56:	8b 55 0c             	mov    0xc(%ebp),%edx
c0105d59:	53                   	push   %ebx
c0105d5a:	8b 41 10             	mov    0x10(%ecx),%eax
c0105d5d:	8b 5a 10             	mov    0x10(%edx),%ebx
c0105d60:	29 d8                	sub    %ebx,%eax
c0105d62:	85 c0                	test   %eax,%eax
c0105d64:	75 27                	jne    c0105d8d <__mcmp+0x3d>
c0105d66:	c1 e3 02             	shl    $0x2,%ebx
c0105d69:	83 c1 14             	add    $0x14,%ecx
c0105d6c:	8d 04 19             	lea    (%ecx,%ebx,1),%eax
c0105d6f:	8d 54 1a 14          	lea    0x14(%edx,%ebx,1),%edx
c0105d73:	eb 07                	jmp    c0105d7c <__mcmp+0x2c>
c0105d75:	8d 76 00             	lea    0x0(%esi),%esi
c0105d78:	39 c1                	cmp    %eax,%ecx
c0105d7a:	73 14                	jae    c0105d90 <__mcmp+0x40>
c0105d7c:	83 ea 04             	sub    $0x4,%edx
c0105d7f:	83 e8 04             	sub    $0x4,%eax
c0105d82:	8b 1a                	mov    (%edx),%ebx
c0105d84:	39 18                	cmp    %ebx,(%eax)
c0105d86:	74 f0                	je     c0105d78 <__mcmp+0x28>
c0105d88:	19 c0                	sbb    %eax,%eax
c0105d8a:	83 c8 01             	or     $0x1,%eax
c0105d8d:	5b                   	pop    %ebx
c0105d8e:	5d                   	pop    %ebp
c0105d8f:	c3                   	ret    
c0105d90:	31 c0                	xor    %eax,%eax
c0105d92:	5b                   	pop    %ebx
c0105d93:	5d                   	pop    %ebp
c0105d94:	c3                   	ret    
c0105d95:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0105d99:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0105da0 <__mdiff>:
c0105da0:	55                   	push   %ebp
c0105da1:	89 e5                	mov    %esp,%ebp
c0105da3:	57                   	push   %edi
c0105da4:	56                   	push   %esi
c0105da5:	53                   	push   %ebx
c0105da6:	83 ec 2c             	sub    $0x2c,%esp
c0105da9:	8b 75 0c             	mov    0xc(%ebp),%esi
c0105dac:	8b 5d 10             	mov    0x10(%ebp),%ebx
c0105daf:	89 34 24             	mov    %esi,(%esp)
c0105db2:	89 5c 24 04          	mov    %ebx,0x4(%esp)
c0105db6:	e8 95 ff ff ff       	call   c0105d50 <__mcmp>
c0105dbb:	85 c0                	test   %eax,%eax
c0105dbd:	0f 84 25 01 00 00    	je     c0105ee8 <__mdiff+0x148>
c0105dc3:	0f 88 0f 01 00 00    	js     c0105ed8 <__mdiff+0x138>
c0105dc9:	31 ff                	xor    %edi,%edi
c0105dcb:	8b 46 04             	mov    0x4(%esi),%eax
c0105dce:	83 c6 14             	add    $0x14,%esi
c0105dd1:	89 44 24 04          	mov    %eax,0x4(%esp)
c0105dd5:	8b 45 08             	mov    0x8(%ebp),%eax
c0105dd8:	89 04 24             	mov    %eax,(%esp)
c0105ddb:	e8 b0 f7 ff ff       	call   c0105590 <_Balloc>
c0105de0:	8d 4b 14             	lea    0x14(%ebx),%ecx
c0105de3:	89 c2                	mov    %eax,%edx
c0105de5:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c0105de8:	89 78 0c             	mov    %edi,0xc(%eax)
c0105deb:	8b 46 fc             	mov    -0x4(%esi),%eax
c0105dee:	89 75 e4             	mov    %esi,-0x1c(%ebp)
c0105df1:	89 45 dc             	mov    %eax,-0x24(%ebp)
c0105df4:	8d 04 86             	lea    (%esi,%eax,4),%eax
c0105df7:	89 45 d8             	mov    %eax,-0x28(%ebp)
c0105dfa:	8b 43 10             	mov    0x10(%ebx),%eax
c0105dfd:	31 db                	xor    %ebx,%ebx
c0105dff:	8d 04 81             	lea    (%ecx,%eax,4),%eax
c0105e02:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0105e05:	89 d0                	mov    %edx,%eax
c0105e07:	83 c0 14             	add    $0x14,%eax
c0105e0a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0105e10:	8b 75 e4             	mov    -0x1c(%ebp),%esi
c0105e13:	83 c0 04             	add    $0x4,%eax
c0105e16:	83 c1 04             	add    $0x4,%ecx
c0105e19:	83 45 e4 04          	addl   $0x4,-0x1c(%ebp)
c0105e1d:	8b 3e                	mov    (%esi),%edi
c0105e1f:	8b 71 fc             	mov    -0x4(%ecx),%esi
c0105e22:	0f b7 d7             	movzwl %di,%edx
c0105e25:	01 da                	add    %ebx,%edx
c0105e27:	0f b7 de             	movzwl %si,%ebx
c0105e2a:	29 da                	sub    %ebx,%edx
c0105e2c:	c1 ef 10             	shr    $0x10,%edi
c0105e2f:	89 d3                	mov    %edx,%ebx
c0105e31:	c1 ee 10             	shr    $0x10,%esi
c0105e34:	0f b7 d2             	movzwl %dx,%edx
c0105e37:	c1 fb 10             	sar    $0x10,%ebx
c0105e3a:	29 f7                	sub    %esi,%edi
c0105e3c:	01 df                	add    %ebx,%edi
c0105e3e:	89 fb                	mov    %edi,%ebx
c0105e40:	c1 e7 10             	shl    $0x10,%edi
c0105e43:	09 d7                	or     %edx,%edi
c0105e45:	c1 fb 10             	sar    $0x10,%ebx
c0105e48:	39 4d e0             	cmp    %ecx,-0x20(%ebp)
c0105e4b:	89 78 fc             	mov    %edi,-0x4(%eax)
c0105e4e:	77 c0                	ja     c0105e10 <__mdiff+0x70>
c0105e50:	8b 75 e4             	mov    -0x1c(%ebp),%esi
c0105e53:	8b 4d d8             	mov    -0x28(%ebp),%ecx
c0105e56:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0105e59:	89 75 e0             	mov    %esi,-0x20(%ebp)
c0105e5c:	39 f1                	cmp    %esi,%ecx
c0105e5e:	76 3f                	jbe    c0105e9f <__mdiff+0xff>
c0105e60:	8b 3e                	mov    (%esi),%edi
c0105e62:	83 c6 04             	add    $0x4,%esi
c0105e65:	83 c0 04             	add    $0x4,%eax
c0105e68:	0f b7 d7             	movzwl %di,%edx
c0105e6b:	01 da                	add    %ebx,%edx
c0105e6d:	89 d3                	mov    %edx,%ebx
c0105e6f:	0f b7 d2             	movzwl %dx,%edx
c0105e72:	c1 fb 10             	sar    $0x10,%ebx
c0105e75:	c1 ef 10             	shr    $0x10,%edi
c0105e78:	01 df                	add    %ebx,%edi
c0105e7a:	89 fb                	mov    %edi,%ebx
c0105e7c:	c1 e7 10             	shl    $0x10,%edi
c0105e7f:	09 d7                	or     %edx,%edi
c0105e81:	c1 fb 10             	sar    $0x10,%ebx
c0105e84:	39 f1                	cmp    %esi,%ecx
c0105e86:	89 78 fc             	mov    %edi,-0x4(%eax)
c0105e89:	77 d5                	ja     c0105e60 <__mdiff+0xc0>
c0105e8b:	8b 45 e0             	mov    -0x20(%ebp),%eax
c0105e8e:	8b 4d d8             	mov    -0x28(%ebp),%ecx
c0105e91:	f7 d0                	not    %eax
c0105e93:	01 c8                	add    %ecx,%eax
c0105e95:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c0105e98:	c1 e8 02             	shr    $0x2,%eax
c0105e9b:	8d 44 81 04          	lea    0x4(%ecx,%eax,4),%eax
c0105e9f:	85 ff                	test   %edi,%edi
c0105ea1:	75 23                	jne    c0105ec6 <__mdiff+0x126>
c0105ea3:	8b 4d dc             	mov    -0x24(%ebp),%ecx
c0105ea6:	8d 14 8d 00 00 00 00 	lea    0x0(,%ecx,4),%edx
c0105ead:	29 d0                	sub    %edx,%eax
c0105eaf:	89 ca                	mov    %ecx,%edx
c0105eb1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0105eb8:	83 ea 01             	sub    $0x1,%edx
c0105ebb:	8b 4c 90 fc          	mov    -0x4(%eax,%edx,4),%ecx
c0105ebf:	85 c9                	test   %ecx,%ecx
c0105ec1:	74 f5                	je     c0105eb8 <__mdiff+0x118>
c0105ec3:	89 55 dc             	mov    %edx,-0x24(%ebp)
c0105ec6:	8b 45 d4             	mov    -0x2c(%ebp),%eax
c0105ec9:	8b 4d dc             	mov    -0x24(%ebp),%ecx
c0105ecc:	89 48 10             	mov    %ecx,0x10(%eax)
c0105ecf:	83 c4 2c             	add    $0x2c,%esp
c0105ed2:	5b                   	pop    %ebx
c0105ed3:	5e                   	pop    %esi
c0105ed4:	5f                   	pop    %edi
c0105ed5:	5d                   	pop    %ebp
c0105ed6:	c3                   	ret    
c0105ed7:	90                   	nop
c0105ed8:	89 f0                	mov    %esi,%eax
c0105eda:	bf 01 00 00 00       	mov    $0x1,%edi
c0105edf:	89 de                	mov    %ebx,%esi
c0105ee1:	89 c3                	mov    %eax,%ebx
c0105ee3:	e9 e3 fe ff ff       	jmp    c0105dcb <__mdiff+0x2b>
c0105ee8:	8b 45 08             	mov    0x8(%ebp),%eax
c0105eeb:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c0105ef2:	00 
c0105ef3:	89 04 24             	mov    %eax,(%esp)
c0105ef6:	e8 95 f6 ff ff       	call   c0105590 <_Balloc>
c0105efb:	c7 40 10 01 00 00 00 	movl   $0x1,0x10(%eax)
c0105f02:	c7 40 14 00 00 00 00 	movl   $0x0,0x14(%eax)
c0105f09:	83 c4 2c             	add    $0x2c,%esp
c0105f0c:	5b                   	pop    %ebx
c0105f0d:	5e                   	pop    %esi
c0105f0e:	5f                   	pop    %edi
c0105f0f:	5d                   	pop    %ebp
c0105f10:	c3                   	ret    
c0105f11:	eb 0d                	jmp    c0105f20 <__ulp>
c0105f13:	90                   	nop
c0105f14:	90                   	nop
c0105f15:	90                   	nop
c0105f16:	90                   	nop
c0105f17:	90                   	nop
c0105f18:	90                   	nop
c0105f19:	90                   	nop
c0105f1a:	90                   	nop
c0105f1b:	90                   	nop
c0105f1c:	90                   	nop
c0105f1d:	90                   	nop
c0105f1e:	90                   	nop
c0105f1f:	90                   	nop

c0105f20 <__ulp>:
c0105f20:	55                   	push   %ebp
c0105f21:	89 e5                	mov    %esp,%ebp
c0105f23:	83 ec 08             	sub    $0x8,%esp
c0105f26:	dd 45 08             	fldl   0x8(%ebp)
c0105f29:	dd 5d f8             	fstpl  -0x8(%ebp)
c0105f2c:	8b 4d fc             	mov    -0x4(%ebp),%ecx
c0105f2f:	81 e1 00 00 f0 7f    	and    $0x7ff00000,%ecx
c0105f35:	81 e9 00 00 40 03    	sub    $0x3400000,%ecx
c0105f3b:	85 c9                	test   %ecx,%ecx
c0105f3d:	7e 11                	jle    c0105f50 <__ulp+0x30>
c0105f3f:	89 4d fc             	mov    %ecx,-0x4(%ebp)
c0105f42:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
c0105f49:	dd 45 f8             	fldl   -0x8(%ebp)
c0105f4c:	c9                   	leave  
c0105f4d:	c3                   	ret    
c0105f4e:	66 90                	xchg   %ax,%ax
c0105f50:	f7 d9                	neg    %ecx
c0105f52:	c1 f9 14             	sar    $0x14,%ecx
c0105f55:	83 f9 13             	cmp    $0x13,%ecx
c0105f58:	7e 26                	jle    c0105f80 <__ulp+0x60>
c0105f5a:	83 f9 32             	cmp    $0x32,%ecx
c0105f5d:	b8 01 00 00 00       	mov    $0x1,%eax
c0105f62:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
c0105f69:	7f 0b                	jg     c0105f76 <__ulp+0x56>
c0105f6b:	ba 33 00 00 00       	mov    $0x33,%edx
c0105f70:	29 ca                	sub    %ecx,%edx
c0105f72:	89 d1                	mov    %edx,%ecx
c0105f74:	d3 e0                	shl    %cl,%eax
c0105f76:	89 45 f8             	mov    %eax,-0x8(%ebp)
c0105f79:	dd 45 f8             	fldl   -0x8(%ebp)
c0105f7c:	c9                   	leave  
c0105f7d:	c3                   	ret    
c0105f7e:	66 90                	xchg   %ax,%ax
c0105f80:	b8 00 00 08 00       	mov    $0x80000,%eax
c0105f85:	d3 f8                	sar    %cl,%eax
c0105f87:	89 45 fc             	mov    %eax,-0x4(%ebp)
c0105f8a:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
c0105f91:	dd 45 f8             	fldl   -0x8(%ebp)
c0105f94:	c9                   	leave  
c0105f95:	c3                   	ret    
c0105f96:	8d 76 00             	lea    0x0(%esi),%esi
c0105f99:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0105fa0 <__b2d>:
c0105fa0:	55                   	push   %ebp
c0105fa1:	89 e5                	mov    %esp,%ebp
c0105fa3:	57                   	push   %edi
c0105fa4:	56                   	push   %esi
c0105fa5:	53                   	push   %ebx
c0105fa6:	83 ec 18             	sub    $0x18,%esp
c0105fa9:	8b 45 08             	mov    0x8(%ebp),%eax
c0105fac:	8d 78 14             	lea    0x14(%eax),%edi
c0105faf:	8b 40 10             	mov    0x10(%eax),%eax
c0105fb2:	8d 1c 87             	lea    (%edi,%eax,4),%ebx
c0105fb5:	8b 73 fc             	mov    -0x4(%ebx),%esi
c0105fb8:	8d 43 fc             	lea    -0x4(%ebx),%eax
c0105fbb:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0105fbe:	89 34 24             	mov    %esi,(%esp)
c0105fc1:	e8 6a f8 ff ff       	call   c0105830 <__hi0bits>
c0105fc6:	8b 4d 0c             	mov    0xc(%ebp),%ecx
c0105fc9:	ba 20 00 00 00       	mov    $0x20,%edx
c0105fce:	29 c2                	sub    %eax,%edx
c0105fd0:	83 f8 0a             	cmp    $0xa,%eax
c0105fd3:	89 11                	mov    %edx,(%ecx)
c0105fd5:	7f 41                	jg     c0106018 <__b2d+0x78>
c0105fd7:	b9 0b 00 00 00       	mov    $0xb,%ecx
c0105fdc:	89 f2                	mov    %esi,%edx
c0105fde:	29 c1                	sub    %eax,%ecx
c0105fe0:	d3 ea                	shr    %cl,%edx
c0105fe2:	81 ca 00 00 f0 3f    	or     $0x3ff00000,%edx
c0105fe8:	89 55 ec             	mov    %edx,-0x14(%ebp)
c0105feb:	31 d2                	xor    %edx,%edx
c0105fed:	3b 7d e4             	cmp    -0x1c(%ebp),%edi
c0105ff0:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
c0105ff7:	73 05                	jae    c0105ffe <__b2d+0x5e>
c0105ff9:	8b 53 f8             	mov    -0x8(%ebx),%edx
c0105ffc:	d3 ea                	shr    %cl,%edx
c0105ffe:	8d 48 15             	lea    0x15(%eax),%ecx
c0106001:	d3 e6                	shl    %cl,%esi
c0106003:	09 f2                	or     %esi,%edx
c0106005:	89 55 e8             	mov    %edx,-0x18(%ebp)
c0106008:	dd 45 e8             	fldl   -0x18(%ebp)
c010600b:	83 c4 18             	add    $0x18,%esp
c010600e:	5b                   	pop    %ebx
c010600f:	5e                   	pop    %esi
c0106010:	5f                   	pop    %edi
c0106011:	5d                   	pop    %ebp
c0106012:	c3                   	ret    
c0106013:	90                   	nop
c0106014:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0106018:	31 d2                	xor    %edx,%edx
c010601a:	3b 7d e4             	cmp    -0x1c(%ebp),%edi
c010601d:	73 09                	jae    c0106028 <__b2d+0x88>
c010601f:	8b 53 f8             	mov    -0x8(%ebx),%edx
c0106022:	8d 4b f8             	lea    -0x8(%ebx),%ecx
c0106025:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c0106028:	89 c3                	mov    %eax,%ebx
c010602a:	83 eb 0b             	sub    $0xb,%ebx
c010602d:	89 5d e0             	mov    %ebx,-0x20(%ebp)
c0106030:	74 4e                	je     c0106080 <__b2d+0xe0>
c0106032:	0f b6 4d e0          	movzbl -0x20(%ebp),%ecx
c0106036:	bb 2b 00 00 00       	mov    $0x2b,%ebx
c010603b:	29 c3                	sub    %eax,%ebx
c010603d:	89 d0                	mov    %edx,%eax
c010603f:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
c0106046:	d3 e6                	shl    %cl,%esi
c0106048:	89 d9                	mov    %ebx,%ecx
c010604a:	d3 e8                	shr    %cl,%eax
c010604c:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c010604f:	81 ce 00 00 f0 3f    	or     $0x3ff00000,%esi
c0106055:	09 c6                	or     %eax,%esi
c0106057:	31 c0                	xor    %eax,%eax
c0106059:	89 75 ec             	mov    %esi,-0x14(%ebp)
c010605c:	39 f9                	cmp    %edi,%ecx
c010605e:	76 07                	jbe    c0106067 <__b2d+0xc7>
c0106060:	8b 41 fc             	mov    -0x4(%ecx),%eax
c0106063:	89 d9                	mov    %ebx,%ecx
c0106065:	d3 e8                	shr    %cl,%eax
c0106067:	0f b6 4d e0          	movzbl -0x20(%ebp),%ecx
c010606b:	d3 e2                	shl    %cl,%edx
c010606d:	09 d0                	or     %edx,%eax
c010606f:	89 45 e8             	mov    %eax,-0x18(%ebp)
c0106072:	dd 45 e8             	fldl   -0x18(%ebp)
c0106075:	83 c4 18             	add    $0x18,%esp
c0106078:	5b                   	pop    %ebx
c0106079:	5e                   	pop    %esi
c010607a:	5f                   	pop    %edi
c010607b:	5d                   	pop    %ebp
c010607c:	c3                   	ret    
c010607d:	8d 76 00             	lea    0x0(%esi),%esi
c0106080:	81 ce 00 00 f0 3f    	or     $0x3ff00000,%esi
c0106086:	89 75 ec             	mov    %esi,-0x14(%ebp)
c0106089:	89 55 e8             	mov    %edx,-0x18(%ebp)
c010608c:	dd 45 e8             	fldl   -0x18(%ebp)
c010608f:	83 c4 18             	add    $0x18,%esp
c0106092:	5b                   	pop    %ebx
c0106093:	5e                   	pop    %esi
c0106094:	5f                   	pop    %edi
c0106095:	5d                   	pop    %ebp
c0106096:	c3                   	ret    
c0106097:	89 f6                	mov    %esi,%esi
c0106099:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c01060a0 <__d2b>:
c01060a0:	55                   	push   %ebp
c01060a1:	89 e5                	mov    %esp,%ebp
c01060a3:	57                   	push   %edi
c01060a4:	56                   	push   %esi
c01060a5:	53                   	push   %ebx
c01060a6:	83 ec 2c             	sub    $0x2c,%esp
c01060a9:	8b 45 08             	mov    0x8(%ebp),%eax
c01060ac:	dd 45 0c             	fldl   0xc(%ebp)
c01060af:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c01060b6:	00 
c01060b7:	dd 5d d0             	fstpl  -0x30(%ebp)
c01060ba:	89 04 24             	mov    %eax,(%esp)
c01060bd:	e8 ce f4 ff ff       	call   c0105590 <_Balloc>
c01060c2:	8b 5d d4             	mov    -0x2c(%ebp),%ebx
c01060c5:	89 c6                	mov    %eax,%esi
c01060c7:	89 d8                	mov    %ebx,%eax
c01060c9:	81 e3 ff ff ff 7f    	and    $0x7fffffff,%ebx
c01060cf:	25 ff ff 0f 00       	and    $0xfffff,%eax
c01060d4:	c1 eb 14             	shr    $0x14,%ebx
c01060d7:	85 db                	test   %ebx,%ebx
c01060d9:	74 05                	je     c01060e0 <__d2b+0x40>
c01060db:	0d 00 00 10 00       	or     $0x100000,%eax
c01060e0:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c01060e3:	8b 45 d0             	mov    -0x30(%ebp),%eax
c01060e6:	85 c0                	test   %eax,%eax
c01060e8:	74 56                	je     c0106140 <__d2b+0xa0>
c01060ea:	89 45 e0             	mov    %eax,-0x20(%ebp)
c01060ed:	8d 45 e0             	lea    -0x20(%ebp),%eax
c01060f0:	89 04 24             	mov    %eax,(%esp)
c01060f3:	e8 98 f7 ff ff       	call   c0105890 <__lo0bits>
c01060f8:	85 c0                	test   %eax,%eax
c01060fa:	0f 85 90 00 00 00    	jne    c0106190 <__d2b+0xf0>
c0106100:	8b 55 e0             	mov    -0x20(%ebp),%edx
c0106103:	89 56 14             	mov    %edx,0x14(%esi)
c0106106:	8b 55 e4             	mov    -0x1c(%ebp),%edx
c0106109:	83 fa 01             	cmp    $0x1,%edx
c010610c:	19 ff                	sbb    %edi,%edi
c010610e:	83 c7 02             	add    $0x2,%edi
c0106111:	85 db                	test   %ebx,%ebx
c0106113:	89 56 18             	mov    %edx,0x18(%esi)
c0106116:	89 7e 10             	mov    %edi,0x10(%esi)
c0106119:	74 49                	je     c0106164 <__d2b+0xc4>
c010611b:	8b 4d 14             	mov    0x14(%ebp),%ecx
c010611e:	8d 94 18 cd fb ff ff 	lea    -0x433(%eax,%ebx,1),%edx
c0106125:	89 11                	mov    %edx,(%ecx)
c0106127:	ba 35 00 00 00       	mov    $0x35,%edx
c010612c:	29 c2                	sub    %eax,%edx
c010612e:	8b 45 18             	mov    0x18(%ebp),%eax
c0106131:	89 10                	mov    %edx,(%eax)
c0106133:	83 c4 2c             	add    $0x2c,%esp
c0106136:	89 f0                	mov    %esi,%eax
c0106138:	5b                   	pop    %ebx
c0106139:	5e                   	pop    %esi
c010613a:	5f                   	pop    %edi
c010613b:	5d                   	pop    %ebp
c010613c:	c3                   	ret    
c010613d:	8d 76 00             	lea    0x0(%esi),%esi
c0106140:	8d 45 e4             	lea    -0x1c(%ebp),%eax
c0106143:	bf 01 00 00 00       	mov    $0x1,%edi
c0106148:	89 04 24             	mov    %eax,(%esp)
c010614b:	e8 40 f7 ff ff       	call   c0105890 <__lo0bits>
c0106150:	8b 55 e4             	mov    -0x1c(%ebp),%edx
c0106153:	c7 46 10 01 00 00 00 	movl   $0x1,0x10(%esi)
c010615a:	89 56 14             	mov    %edx,0x14(%esi)
c010615d:	83 c0 20             	add    $0x20,%eax
c0106160:	85 db                	test   %ebx,%ebx
c0106162:	75 b7                	jne    c010611b <__d2b+0x7b>
c0106164:	8b 4d 14             	mov    0x14(%ebp),%ecx
c0106167:	2d 32 04 00 00       	sub    $0x432,%eax
c010616c:	89 01                	mov    %eax,(%ecx)
c010616e:	8b 44 be 10          	mov    0x10(%esi,%edi,4),%eax
c0106172:	c1 e7 05             	shl    $0x5,%edi
c0106175:	89 04 24             	mov    %eax,(%esp)
c0106178:	e8 b3 f6 ff ff       	call   c0105830 <__hi0bits>
c010617d:	29 c7                	sub    %eax,%edi
c010617f:	8b 45 18             	mov    0x18(%ebp),%eax
c0106182:	89 38                	mov    %edi,(%eax)
c0106184:	83 c4 2c             	add    $0x2c,%esp
c0106187:	89 f0                	mov    %esi,%eax
c0106189:	5b                   	pop    %ebx
c010618a:	5e                   	pop    %esi
c010618b:	5f                   	pop    %edi
c010618c:	5d                   	pop    %ebp
c010618d:	c3                   	ret    
c010618e:	66 90                	xchg   %ax,%ax
c0106190:	8b 55 e4             	mov    -0x1c(%ebp),%edx
c0106193:	b9 20 00 00 00       	mov    $0x20,%ecx
c0106198:	29 c1                	sub    %eax,%ecx
c010619a:	89 d7                	mov    %edx,%edi
c010619c:	d3 e7                	shl    %cl,%edi
c010619e:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c01061a1:	09 f9                	or     %edi,%ecx
c01061a3:	89 4e 14             	mov    %ecx,0x14(%esi)
c01061a6:	89 c1                	mov    %eax,%ecx
c01061a8:	d3 ea                	shr    %cl,%edx
c01061aa:	89 55 e4             	mov    %edx,-0x1c(%ebp)
c01061ad:	e9 57 ff ff ff       	jmp    c0106109 <__d2b+0x69>
c01061b2:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c01061b9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c01061c0 <__ratio>:
c01061c0:	55                   	push   %ebp
c01061c1:	89 e5                	mov    %esp,%ebp
c01061c3:	56                   	push   %esi
c01061c4:	53                   	push   %ebx
c01061c5:	83 ec 30             	sub    $0x30,%esp
c01061c8:	8b 75 08             	mov    0x8(%ebp),%esi
c01061cb:	8d 45 f0             	lea    -0x10(%ebp),%eax
c01061ce:	8b 5d 0c             	mov    0xc(%ebp),%ebx
c01061d1:	89 44 24 04          	mov    %eax,0x4(%esp)
c01061d5:	89 34 24             	mov    %esi,(%esp)
c01061d8:	e8 c3 fd ff ff       	call   c0105fa0 <__b2d>
c01061dd:	8d 45 f4             	lea    -0xc(%ebp),%eax
c01061e0:	89 44 24 04          	mov    %eax,0x4(%esp)
c01061e4:	89 1c 24             	mov    %ebx,(%esp)
c01061e7:	dd 55 e0             	fstl   -0x20(%ebp)
c01061ea:	dd 5d d8             	fstpl  -0x28(%ebp)
c01061ed:	e8 ae fd ff ff       	call   c0105fa0 <__b2d>
c01061f2:	8b 46 10             	mov    0x10(%esi),%eax
c01061f5:	2b 43 10             	sub    0x10(%ebx),%eax
c01061f8:	8b 55 f0             	mov    -0x10(%ebp),%edx
c01061fb:	2b 55 f4             	sub    -0xc(%ebp),%edx
c01061fe:	c1 e0 05             	shl    $0x5,%eax
c0106201:	01 d0                	add    %edx,%eax
c0106203:	dd 55 d0             	fstl   -0x30(%ebp)
c0106206:	85 c0                	test   %eax,%eax
c0106208:	dd 45 d8             	fldl   -0x28(%ebp)
c010620b:	7e 1b                	jle    c0106228 <__ratio+0x68>
c010620d:	dd d8                	fstp   %st(0)
c010620f:	c1 e0 14             	shl    $0x14,%eax
c0106212:	01 45 e4             	add    %eax,-0x1c(%ebp)
c0106215:	dd 45 e0             	fldl   -0x20(%ebp)
c0106218:	83 c4 30             	add    $0x30,%esp
c010621b:	5b                   	pop    %ebx
c010621c:	de f1                	fdivp  %st,%st(1)
c010621e:	5e                   	pop    %esi
c010621f:	5d                   	pop    %ebp
c0106220:	c3                   	ret    
c0106221:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0106228:	dd d9                	fstp   %st(1)
c010622a:	c1 e0 14             	shl    $0x14,%eax
c010622d:	29 45 d4             	sub    %eax,-0x2c(%ebp)
c0106230:	dd 45 d0             	fldl   -0x30(%ebp)
c0106233:	83 c4 30             	add    $0x30,%esp
c0106236:	5b                   	pop    %ebx
c0106237:	de f9                	fdivrp %st,%st(1)
c0106239:	5e                   	pop    %esi
c010623a:	5d                   	pop    %ebp
c010623b:	c3                   	ret    
c010623c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

c0106240 <_mprec_log10>:
c0106240:	55                   	push   %ebp
c0106241:	89 e5                	mov    %esp,%ebp
c0106243:	8b 45 08             	mov    0x8(%ebp),%eax
c0106246:	83 f8 17             	cmp    $0x17,%eax
c0106249:	7e 1d                	jle    c0106268 <_mprec_log10+0x28>
c010624b:	d9 e8                	fld1   
c010624d:	d9 05 d8 88 10 c0    	flds   0xc01088d8
c0106253:	90                   	nop
c0106254:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0106258:	83 e8 01             	sub    $0x1,%eax
c010625b:	dc c9                	fmul   %st,%st(1)
c010625d:	75 f9                	jne    c0106258 <_mprec_log10+0x18>
c010625f:	dd d8                	fstp   %st(0)
c0106261:	5d                   	pop    %ebp
c0106262:	c3                   	ret    
c0106263:	90                   	nop
c0106264:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0106268:	dd 04 c5 c0 89 10 c0 	fldl   -0x3fef7640(,%eax,8)
c010626f:	5d                   	pop    %ebp
c0106270:	c3                   	ret    
c0106271:	eb 0d                	jmp    c0106280 <__copybits>
c0106273:	90                   	nop
c0106274:	90                   	nop
c0106275:	90                   	nop
c0106276:	90                   	nop
c0106277:	90                   	nop
c0106278:	90                   	nop
c0106279:	90                   	nop
c010627a:	90                   	nop
c010627b:	90                   	nop
c010627c:	90                   	nop
c010627d:	90                   	nop
c010627e:	90                   	nop
c010627f:	90                   	nop

c0106280 <__copybits>:
c0106280:	55                   	push   %ebp
c0106281:	89 e5                	mov    %esp,%ebp
c0106283:	57                   	push   %edi
c0106284:	8b 7d 10             	mov    0x10(%ebp),%edi
c0106287:	56                   	push   %esi
c0106288:	8b 75 0c             	mov    0xc(%ebp),%esi
c010628b:	8b 45 08             	mov    0x8(%ebp),%eax
c010628e:	53                   	push   %ebx
c010628f:	8b 4f 10             	mov    0x10(%edi),%ecx
c0106292:	8d 56 ff             	lea    -0x1(%esi),%edx
c0106295:	c1 fa 05             	sar    $0x5,%edx
c0106298:	8d 74 90 04          	lea    0x4(%eax,%edx,4),%esi
c010629c:	8d 57 14             	lea    0x14(%edi),%edx
c010629f:	8d 1c 8a             	lea    (%edx,%ecx,4),%ebx
c01062a2:	39 da                	cmp    %ebx,%edx
c01062a4:	73 34                	jae    c01062da <__copybits+0x5a>
c01062a6:	89 c1                	mov    %eax,%ecx
c01062a8:	83 c2 04             	add    $0x4,%edx
c01062ab:	8b 42 fc             	mov    -0x4(%edx),%eax
c01062ae:	83 c1 04             	add    $0x4,%ecx
c01062b1:	39 d3                	cmp    %edx,%ebx
c01062b3:	89 41 fc             	mov    %eax,-0x4(%ecx)
c01062b6:	77 f0                	ja     c01062a8 <__copybits+0x28>
c01062b8:	8b 45 08             	mov    0x8(%ebp),%eax
c01062bb:	29 fb                	sub    %edi,%ebx
c01062bd:	8d 53 eb             	lea    -0x15(%ebx),%edx
c01062c0:	c1 ea 02             	shr    $0x2,%edx
c01062c3:	8d 44 90 04          	lea    0x4(%eax,%edx,4),%eax
c01062c7:	39 c6                	cmp    %eax,%esi
c01062c9:	76 13                	jbe    c01062de <__copybits+0x5e>
c01062cb:	90                   	nop
c01062cc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c01062d0:	83 c0 04             	add    $0x4,%eax
c01062d3:	c7 40 fc 00 00 00 00 	movl   $0x0,-0x4(%eax)
c01062da:	39 c6                	cmp    %eax,%esi
c01062dc:	77 f2                	ja     c01062d0 <__copybits+0x50>
c01062de:	5b                   	pop    %ebx
c01062df:	5e                   	pop    %esi
c01062e0:	5f                   	pop    %edi
c01062e1:	5d                   	pop    %ebp
c01062e2:	c3                   	ret    
c01062e3:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c01062e9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c01062f0 <__any_on>:
c01062f0:	55                   	push   %ebp
c01062f1:	89 e5                	mov    %esp,%ebp
c01062f3:	8b 45 08             	mov    0x8(%ebp),%eax
c01062f6:	57                   	push   %edi
c01062f7:	56                   	push   %esi
c01062f8:	53                   	push   %ebx
c01062f9:	8b 5d 0c             	mov    0xc(%ebp),%ebx
c01062fc:	8d 50 14             	lea    0x14(%eax),%edx
c01062ff:	8b 40 10             	mov    0x10(%eax),%eax
c0106302:	c1 fb 05             	sar    $0x5,%ebx
c0106305:	39 d8                	cmp    %ebx,%eax
c0106307:	7d 2f                	jge    c0106338 <__any_on+0x48>
c0106309:	8d 1c 82             	lea    (%edx,%eax,4),%ebx
c010630c:	39 da                	cmp    %ebx,%edx
c010630e:	73 1d                	jae    c010632d <__any_on+0x3d>
c0106310:	8d 43 fc             	lea    -0x4(%ebx),%eax
c0106313:	8b 5b fc             	mov    -0x4(%ebx),%ebx
c0106316:	85 db                	test   %ebx,%ebx
c0106318:	74 0f                	je     c0106329 <__any_on+0x39>
c010631a:	eb 44                	jmp    c0106360 <__any_on+0x70>
c010631c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0106320:	83 e8 04             	sub    $0x4,%eax
c0106323:	8b 08                	mov    (%eax),%ecx
c0106325:	85 c9                	test   %ecx,%ecx
c0106327:	75 37                	jne    c0106360 <__any_on+0x70>
c0106329:	39 c2                	cmp    %eax,%edx
c010632b:	72 f3                	jb     c0106320 <__any_on+0x30>
c010632d:	31 c0                	xor    %eax,%eax
c010632f:	5b                   	pop    %ebx
c0106330:	5e                   	pop    %esi
c0106331:	5f                   	pop    %edi
c0106332:	5d                   	pop    %ebp
c0106333:	c3                   	ret    
c0106334:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0106338:	7e 1e                	jle    c0106358 <__any_on+0x68>
c010633a:	8b 4d 0c             	mov    0xc(%ebp),%ecx
c010633d:	8d 1c 9a             	lea    (%edx,%ebx,4),%ebx
c0106340:	83 e1 1f             	and    $0x1f,%ecx
c0106343:	74 c7                	je     c010630c <__any_on+0x1c>
c0106345:	8b 3b                	mov    (%ebx),%edi
c0106347:	b8 01 00 00 00       	mov    $0x1,%eax
c010634c:	89 fe                	mov    %edi,%esi
c010634e:	d3 ee                	shr    %cl,%esi
c0106350:	d3 e6                	shl    %cl,%esi
c0106352:	39 fe                	cmp    %edi,%esi
c0106354:	75 d9                	jne    c010632f <__any_on+0x3f>
c0106356:	eb b4                	jmp    c010630c <__any_on+0x1c>
c0106358:	8d 1c 9a             	lea    (%edx,%ebx,4),%ebx
c010635b:	eb af                	jmp    c010630c <__any_on+0x1c>
c010635d:	8d 76 00             	lea    0x0(%esi),%esi
c0106360:	5b                   	pop    %ebx
c0106361:	b8 01 00 00 00       	mov    $0x1,%eax
c0106366:	5e                   	pop    %esi
c0106367:	5f                   	pop    %edi
c0106368:	5d                   	pop    %ebp
c0106369:	c3                   	ret    
c010636a:	66 90                	xchg   %ax,%ax
c010636c:	66 90                	xchg   %ax,%ax
c010636e:	66 90                	xchg   %ax,%ax

c0106370 <_sbrk_r>:
c0106370:	55                   	push   %ebp
c0106371:	89 e5                	mov    %esp,%ebp
c0106373:	83 ec 18             	sub    $0x18,%esp
c0106376:	8b 45 0c             	mov    0xc(%ebp),%eax
c0106379:	c7 05 54 20 16 c0 00 	movl   $0x0,0xc0162054
c0106380:	00 00 00 
c0106383:	89 04 24             	mov    %eax,(%esp)
c0106386:	e8 f5 b2 ff ff       	call   c0101680 <sbrk>
c010638b:	83 f8 ff             	cmp    $0xffffffff,%eax
c010638e:	74 08                	je     c0106398 <_sbrk_r+0x28>
c0106390:	c9                   	leave  
c0106391:	c3                   	ret    
c0106392:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0106398:	8b 15 54 20 16 c0    	mov    0xc0162054,%edx
c010639e:	85 d2                	test   %edx,%edx
c01063a0:	74 ee                	je     c0106390 <_sbrk_r+0x20>
c01063a2:	8b 4d 08             	mov    0x8(%ebp),%ecx
c01063a5:	89 11                	mov    %edx,(%ecx)
c01063a7:	c9                   	leave  
c01063a8:	c3                   	ret    
c01063a9:	66 90                	xchg   %ax,%ax
c01063ab:	66 90                	xchg   %ax,%ax
c01063ad:	66 90                	xchg   %ax,%ax
c01063af:	90                   	nop

c01063b0 <__fpclassifyd>:
c01063b0:	55                   	push   %ebp
c01063b1:	b8 02 00 00 00       	mov    $0x2,%eax
c01063b6:	89 e5                	mov    %esp,%ebp
c01063b8:	53                   	push   %ebx
c01063b9:	83 ec 0c             	sub    $0xc,%esp
c01063bc:	dd 45 08             	fldl   0x8(%ebp)
c01063bf:	dd 5d f0             	fstpl  -0x10(%ebp)
c01063c2:	8b 55 f0             	mov    -0x10(%ebp),%edx
c01063c5:	8b 4d f4             	mov    -0xc(%ebp),%ecx
c01063c8:	89 d3                	mov    %edx,%ebx
c01063ca:	09 cb                	or     %ecx,%ebx
c01063cc:	75 0a                	jne    c01063d8 <__fpclassifyd+0x28>
c01063ce:	83 c4 0c             	add    $0xc,%esp
c01063d1:	5b                   	pop    %ebx
c01063d2:	5d                   	pop    %ebp
c01063d3:	c3                   	ret    
c01063d4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c01063d8:	85 d2                	test   %edx,%edx
c01063da:	0f 94 c2             	sete   %dl
c01063dd:	75 08                	jne    c01063e7 <__fpclassifyd+0x37>
c01063df:	81 f9 00 00 00 80    	cmp    $0x80000000,%ecx
c01063e5:	74 e7                	je     c01063ce <__fpclassifyd+0x1e>
c01063e7:	81 e1 ff ff ff 7f    	and    $0x7fffffff,%ecx
c01063ed:	b8 04 00 00 00       	mov    $0x4,%eax
c01063f2:	8d 99 00 00 f0 ff    	lea    -0x100000(%ecx),%ebx
c01063f8:	81 fb ff ff df 7f    	cmp    $0x7fdfffff,%ebx
c01063fe:	76 ce                	jbe    c01063ce <__fpclassifyd+0x1e>
c0106400:	81 f9 ff ff 0f 00    	cmp    $0xfffff,%ecx
c0106406:	b0 03                	mov    $0x3,%al
c0106408:	76 c4                	jbe    c01063ce <__fpclassifyd+0x1e>
c010640a:	31 c0                	xor    %eax,%eax
c010640c:	81 f9 00 00 f0 7f    	cmp    $0x7ff00000,%ecx
c0106412:	0f 94 c0             	sete   %al
c0106415:	21 d0                	and    %edx,%eax
c0106417:	eb b5                	jmp    c01063ce <__fpclassifyd+0x1e>
c0106419:	66 90                	xchg   %ax,%ax
c010641b:	66 90                	xchg   %ax,%ax
c010641d:	66 90                	xchg   %ax,%ax
c010641f:	90                   	nop

c0106420 <strlen>:
c0106420:	55                   	push   %ebp
c0106421:	89 e5                	mov    %esp,%ebp
c0106423:	57                   	push   %edi
c0106424:	8b 55 08             	mov    0x8(%ebp),%edx
c0106427:	89 d7                	mov    %edx,%edi
c0106429:	f7 c7 03 00 00 00    	test   $0x3,%edi
c010642f:	74 25                	je     c0106456 <L5>
c0106431:	8a 0f                	mov    (%edi),%cl
c0106433:	47                   	inc    %edi
c0106434:	84 c9                	test   %cl,%cl
c0106436:	74 56                	je     c010648e <L15>
c0106438:	f7 c7 03 00 00 00    	test   $0x3,%edi
c010643e:	74 16                	je     c0106456 <L5>
c0106440:	8a 0f                	mov    (%edi),%cl
c0106442:	47                   	inc    %edi
c0106443:	84 c9                	test   %cl,%cl
c0106445:	74 47                	je     c010648e <L15>
c0106447:	f7 c7 03 00 00 00    	test   $0x3,%edi
c010644d:	74 07                	je     c0106456 <L5>
c010644f:	8a 0f                	mov    (%edi),%cl
c0106451:	47                   	inc    %edi
c0106452:	84 c9                	test   %cl,%cl
c0106454:	74 38                	je     c010648e <L15>

c0106456 <L5>:
c0106456:	83 ef 04             	sub    $0x4,%edi
c0106459:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

c0106460 <L10>:
c0106460:	83 c7 04             	add    $0x4,%edi
c0106463:	8b 0f                	mov    (%edi),%ecx
c0106465:	8d 81 ff fe fe fe    	lea    -0x1010101(%ecx),%eax
c010646b:	f7 d1                	not    %ecx
c010646d:	21 c8                	and    %ecx,%eax
c010646f:	a9 80 80 80 80       	test   $0x80808080,%eax
c0106474:	74 ea                	je     c0106460 <L10>
c0106476:	f7 d1                	not    %ecx
c0106478:	47                   	inc    %edi
c0106479:	84 c9                	test   %cl,%cl
c010647b:	74 11                	je     c010648e <L15>
c010647d:	47                   	inc    %edi
c010647e:	c1 e9 08             	shr    $0x8,%ecx
c0106481:	84 c9                	test   %cl,%cl
c0106483:	74 09                	je     c010648e <L15>
c0106485:	47                   	inc    %edi
c0106486:	c1 e9 08             	shr    $0x8,%ecx
c0106489:	84 c9                	test   %cl,%cl
c010648b:	74 01                	je     c010648e <L15>
c010648d:	47                   	inc    %edi

c010648e <L15>:
c010648e:	29 d7                	sub    %edx,%edi
c0106490:	8d 47 ff             	lea    -0x1(%edi),%eax
c0106493:	8d 65 fc             	lea    -0x4(%ebp),%esp
c0106496:	5f                   	pop    %edi
c0106497:	c9                   	leave  
c0106498:	c3                   	ret    
c0106499:	66 90                	xchg   %ax,%ax
c010649b:	66 90                	xchg   %ax,%ax
c010649d:	66 90                	xchg   %ax,%ax
c010649f:	90                   	nop

c01064a0 <__ssprint_r>:
c01064a0:	55                   	push   %ebp
c01064a1:	89 e5                	mov    %esp,%ebp
c01064a3:	57                   	push   %edi
c01064a4:	56                   	push   %esi
c01064a5:	53                   	push   %ebx
c01064a6:	83 ec 2c             	sub    $0x2c,%esp
c01064a9:	8b 45 10             	mov    0x10(%ebp),%eax
c01064ac:	8b 5d 0c             	mov    0xc(%ebp),%ebx
c01064af:	8b 00                	mov    (%eax),%eax
c01064b1:	89 c7                	mov    %eax,%edi
c01064b3:	8b 45 10             	mov    0x10(%ebp),%eax
c01064b6:	8b 40 08             	mov    0x8(%eax),%eax
c01064b9:	85 c0                	test   %eax,%eax
c01064bb:	0f 84 af 01 00 00    	je     c0106670 <__ssprint_r+0x1d0>
c01064c1:	31 c9                	xor    %ecx,%ecx
c01064c3:	31 d2                	xor    %edx,%edx
c01064c5:	8b 03                	mov    (%ebx),%eax
c01064c7:	89 ce                	mov    %ecx,%esi
c01064c9:	85 f6                	test   %esi,%esi
c01064cb:	89 55 e4             	mov    %edx,-0x1c(%ebp)
c01064ce:	0f 84 ec 00 00 00    	je     c01065c0 <__ssprint_r+0x120>
c01064d4:	8b 53 08             	mov    0x8(%ebx),%edx
c01064d7:	39 d6                	cmp    %edx,%esi
c01064d9:	0f 82 fc 00 00 00    	jb     c01065db <__ssprint_r+0x13b>
c01064df:	0f b7 4b 0c          	movzwl 0xc(%ebx),%ecx
c01064e3:	66 f7 c1 80 04       	test   $0x480,%cx
c01064e8:	0f 84 fa 00 00 00    	je     c01065e8 <__ssprint_r+0x148>
c01064ee:	8b 53 10             	mov    0x10(%ebx),%edx
c01064f1:	29 d0                	sub    %edx,%eax
c01064f3:	89 45 dc             	mov    %eax,-0x24(%ebp)
c01064f6:	8b 43 14             	mov    0x14(%ebx),%eax
c01064f9:	89 55 d8             	mov    %edx,-0x28(%ebp)
c01064fc:	8d 04 40             	lea    (%eax,%eax,2),%eax
c01064ff:	89 c2                	mov    %eax,%edx
c0106501:	c1 ea 1f             	shr    $0x1f,%edx
c0106504:	01 d0                	add    %edx,%eax
c0106506:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0106509:	8b 45 dc             	mov    -0x24(%ebp),%eax
c010650c:	d1 7d e0             	sarl   -0x20(%ebp)
c010650f:	8d 44 06 01          	lea    0x1(%esi,%eax,1),%eax
c0106513:	39 45 e0             	cmp    %eax,-0x20(%ebp)
c0106516:	0f 83 34 01 00 00    	jae    c0106650 <__ssprint_r+0x1b0>
c010651c:	89 45 e0             	mov    %eax,-0x20(%ebp)
c010651f:	80 e5 04             	and    $0x4,%ch
c0106522:	0f 84 c8 00 00 00    	je     c01065f0 <__ssprint_r+0x150>
c0106528:	89 44 24 04          	mov    %eax,0x4(%esp)
c010652c:	8b 45 08             	mov    0x8(%ebp),%eax
c010652f:	89 04 24             	mov    %eax,(%esp)
c0106532:	e8 59 e8 ff ff       	call   c0104d90 <_malloc_r>
c0106537:	85 c0                	test   %eax,%eax
c0106539:	89 c2                	mov    %eax,%edx
c010653b:	0f 84 e1 00 00 00    	je     c0106622 <__ssprint_r+0x182>
c0106541:	8b 45 dc             	mov    -0x24(%ebp),%eax
c0106544:	89 55 d8             	mov    %edx,-0x28(%ebp)
c0106547:	89 44 24 08          	mov    %eax,0x8(%esp)
c010654b:	8b 43 10             	mov    0x10(%ebx),%eax
c010654e:	89 14 24             	mov    %edx,(%esp)
c0106551:	89 44 24 04          	mov    %eax,0x4(%esp)
c0106555:	e8 16 b2 ff ff       	call   c0101770 <memcpy>
c010655a:	0f b7 43 0c          	movzwl 0xc(%ebx),%eax
c010655e:	8b 55 d8             	mov    -0x28(%ebp),%edx
c0106561:	66 25 7f fb          	and    $0xfb7f,%ax
c0106565:	0c 80                	or     $0x80,%al
c0106567:	66 89 43 0c          	mov    %ax,0xc(%ebx)
c010656b:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c010656e:	8b 45 dc             	mov    -0x24(%ebp),%eax
c0106571:	89 53 10             	mov    %edx,0x10(%ebx)
c0106574:	89 4b 14             	mov    %ecx,0x14(%ebx)
c0106577:	2b 4d dc             	sub    -0x24(%ebp),%ecx
c010657a:	01 d0                	add    %edx,%eax
c010657c:	89 03                	mov    %eax,(%ebx)
c010657e:	89 f2                	mov    %esi,%edx
c0106580:	89 4b 08             	mov    %ecx,0x8(%ebx)
c0106583:	89 f1                	mov    %esi,%ecx
c0106585:	89 4c 24 08          	mov    %ecx,0x8(%esp)
c0106589:	89 4d e0             	mov    %ecx,-0x20(%ebp)
c010658c:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c010658f:	89 04 24             	mov    %eax,(%esp)
c0106592:	89 55 dc             	mov    %edx,-0x24(%ebp)
c0106595:	89 4c 24 04          	mov    %ecx,0x4(%esp)
c0106599:	e8 22 13 00 00       	call   c01078c0 <memmove>
c010659e:	8b 03                	mov    (%ebx),%eax
c01065a0:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c01065a3:	8b 55 dc             	mov    -0x24(%ebp),%edx
c01065a6:	29 53 08             	sub    %edx,0x8(%ebx)
c01065a9:	01 c8                	add    %ecx,%eax
c01065ab:	8b 4d 10             	mov    0x10(%ebp),%ecx
c01065ae:	89 03                	mov    %eax,(%ebx)
c01065b0:	8b 51 08             	mov    0x8(%ecx),%edx
c01065b3:	29 f2                	sub    %esi,%edx
c01065b5:	85 d2                	test   %edx,%edx
c01065b7:	89 51 08             	mov    %edx,0x8(%ecx)
c01065ba:	0f 84 98 00 00 00    	je     c0106658 <__ssprint_r+0x1b8>
c01065c0:	8b 77 04             	mov    0x4(%edi),%esi
c01065c3:	83 c7 08             	add    $0x8,%edi
c01065c6:	8b 4f f8             	mov    -0x8(%edi),%ecx
c01065c9:	85 f6                	test   %esi,%esi
c01065cb:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c01065ce:	74 f0                	je     c01065c0 <__ssprint_r+0x120>
c01065d0:	8b 53 08             	mov    0x8(%ebx),%edx
c01065d3:	39 d6                	cmp    %edx,%esi
c01065d5:	0f 83 04 ff ff ff    	jae    c01064df <__ssprint_r+0x3f>
c01065db:	89 f2                	mov    %esi,%edx
c01065dd:	89 f1                	mov    %esi,%ecx
c01065df:	eb a4                	jmp    c0106585 <__ssprint_r+0xe5>
c01065e1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c01065e8:	89 d1                	mov    %edx,%ecx
c01065ea:	eb 99                	jmp    c0106585 <__ssprint_r+0xe5>
c01065ec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c01065f0:	89 44 24 08          	mov    %eax,0x8(%esp)
c01065f4:	8b 45 d8             	mov    -0x28(%ebp),%eax
c01065f7:	89 44 24 04          	mov    %eax,0x4(%esp)
c01065fb:	8b 45 08             	mov    0x8(%ebp),%eax
c01065fe:	89 04 24             	mov    %eax,(%esp)
c0106601:	e8 4a 13 00 00       	call   c0107950 <_realloc_r>
c0106606:	85 c0                	test   %eax,%eax
c0106608:	89 c2                	mov    %eax,%edx
c010660a:	0f 85 5b ff ff ff    	jne    c010656b <__ssprint_r+0xcb>
c0106610:	8b 43 10             	mov    0x10(%ebx),%eax
c0106613:	89 44 24 04          	mov    %eax,0x4(%esp)
c0106617:	8b 45 08             	mov    0x8(%ebp),%eax
c010661a:	89 04 24             	mov    %eax,(%esp)
c010661d:	e8 3e 10 00 00       	call   c0107660 <_free_r>
c0106622:	8b 45 08             	mov    0x8(%ebp),%eax
c0106625:	c7 00 0c 00 00 00    	movl   $0xc,(%eax)
c010662b:	8b 45 10             	mov    0x10(%ebp),%eax
c010662e:	66 83 4b 0c 40       	orw    $0x40,0xc(%ebx)
c0106633:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%eax)
c010663a:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
c0106641:	83 c4 2c             	add    $0x2c,%esp
c0106644:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c0106649:	5b                   	pop    %ebx
c010664a:	5e                   	pop    %esi
c010664b:	5f                   	pop    %edi
c010664c:	5d                   	pop    %ebp
c010664d:	c3                   	ret    
c010664e:	66 90                	xchg   %ax,%ax
c0106650:	8b 45 e0             	mov    -0x20(%ebp),%eax
c0106653:	e9 c7 fe ff ff       	jmp    c010651f <__ssprint_r+0x7f>
c0106658:	c7 41 04 00 00 00 00 	movl   $0x0,0x4(%ecx)
c010665f:	83 c4 2c             	add    $0x2c,%esp
c0106662:	31 c0                	xor    %eax,%eax
c0106664:	5b                   	pop    %ebx
c0106665:	5e                   	pop    %esi
c0106666:	5f                   	pop    %edi
c0106667:	5d                   	pop    %ebp
c0106668:	c3                   	ret    
c0106669:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0106670:	8b 45 10             	mov    0x10(%ebp),%eax
c0106673:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
c010667a:	83 c4 2c             	add    $0x2c,%esp
c010667d:	31 c0                	xor    %eax,%eax
c010667f:	5b                   	pop    %ebx
c0106680:	5e                   	pop    %esi
c0106681:	5f                   	pop    %edi
c0106682:	5d                   	pop    %ebp
c0106683:	c3                   	ret    
c0106684:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c010668a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

c0106690 <_svfiprintf_r>:
c0106690:	55                   	push   %ebp
c0106691:	89 e5                	mov    %esp,%ebp
c0106693:	57                   	push   %edi
c0106694:	56                   	push   %esi
c0106695:	53                   	push   %ebx
c0106696:	81 ec cc 00 00 00    	sub    $0xcc,%esp
c010669c:	8b 45 0c             	mov    0xc(%ebp),%eax
c010669f:	f6 40 0c 80          	testb  $0x80,0xc(%eax)
c01066a3:	74 0b                	je     c01066b0 <_svfiprintf_r+0x20>
c01066a5:	8b 50 10             	mov    0x10(%eax),%edx
c01066a8:	85 d2                	test   %edx,%edx
c01066aa:	0f 84 1c 0d 00 00    	je     c01073cc <_svfiprintf_r+0xd3c>
c01066b0:	8d 45 a8             	lea    -0x58(%ebp),%eax
c01066b3:	8d 5d a7             	lea    -0x59(%ebp),%ebx
c01066b6:	89 c6                	mov    %eax,%esi
c01066b8:	89 85 74 ff ff ff    	mov    %eax,-0x8c(%ebp)
c01066be:	29 d8                	sub    %ebx,%eax
c01066c0:	c7 85 7c ff ff ff 00 	movl   $0x0,-0x84(%ebp)
c01066c7:	00 00 00 
c01066ca:	c7 85 78 ff ff ff 00 	movl   $0x0,-0x88(%ebp)
c01066d1:	00 00 00 
c01066d4:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c01066db:	00 00 00 
c01066de:	c7 85 50 ff ff ff 00 	movl   $0x0,-0xb0(%ebp)
c01066e5:	00 00 00 
c01066e8:	89 85 3c ff ff ff    	mov    %eax,-0xc4(%ebp)
c01066ee:	8b 45 10             	mov    0x10(%ebp),%eax
c01066f1:	8b 5d 10             	mov    0x10(%ebp),%ebx
c01066f4:	0f b6 00             	movzbl (%eax),%eax
c01066f7:	84 c0                	test   %al,%al
c01066f9:	74 58                	je     c0106753 <_svfiprintf_r+0xc3>
c01066fb:	3c 25                	cmp    $0x25,%al
c01066fd:	75 13                	jne    c0106712 <_svfiprintf_r+0x82>
c01066ff:	eb 52                	jmp    c0106753 <_svfiprintf_r+0xc3>
c0106701:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0106708:	84 c0                	test   %al,%al
c010670a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0106710:	74 0a                	je     c010671c <_svfiprintf_r+0x8c>
c0106712:	83 c3 01             	add    $0x1,%ebx
c0106715:	0f b6 03             	movzbl (%ebx),%eax
c0106718:	3c 25                	cmp    $0x25,%al
c010671a:	75 ec                	jne    c0106708 <_svfiprintf_r+0x78>
c010671c:	89 df                	mov    %ebx,%edi
c010671e:	2b 7d 10             	sub    0x10(%ebp),%edi
c0106721:	74 30                	je     c0106753 <_svfiprintf_r+0xc3>
c0106723:	8b 45 10             	mov    0x10(%ebp),%eax
c0106726:	83 c6 08             	add    $0x8,%esi
c0106729:	89 7e fc             	mov    %edi,-0x4(%esi)
c010672c:	01 bd 7c ff ff ff    	add    %edi,-0x84(%ebp)
c0106732:	89 46 f8             	mov    %eax,-0x8(%esi)
c0106735:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c010673b:	83 c0 01             	add    $0x1,%eax
c010673e:	83 f8 07             	cmp    $0x7,%eax
c0106741:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0106747:	0f 8f eb 0a 00 00    	jg     c0107238 <_svfiprintf_r+0xba8>
c010674d:	01 bd 50 ff ff ff    	add    %edi,-0xb0(%ebp)
c0106753:	80 3b 00             	cmpb   $0x0,(%ebx)
c0106756:	0f 84 11 09 00 00    	je     c010706d <_svfiprintf_r+0x9dd>
c010675c:	8d 43 01             	lea    0x1(%ebx),%eax
c010675f:	31 ff                	xor    %edi,%edi
c0106761:	c6 85 71 ff ff ff 00 	movb   $0x0,-0x8f(%ebp)
c0106768:	c7 85 5c ff ff ff ff 	movl   $0xffffffff,-0xa4(%ebp)
c010676f:	ff ff ff 
c0106772:	c7 85 54 ff ff ff 00 	movl   $0x0,-0xac(%ebp)
c0106779:	00 00 00 
c010677c:	c7 85 64 ff ff ff 00 	movl   $0x0,-0x9c(%ebp)
c0106783:	00 00 00 
c0106786:	8d 50 01             	lea    0x1(%eax),%edx
c0106789:	0f be 00             	movsbl (%eax),%eax
c010678c:	8d 48 e0             	lea    -0x20(%eax),%ecx
c010678f:	83 f9 58             	cmp    $0x58,%ecx
c0106792:	0f 87 63 03 00 00    	ja     c0106afb <_svfiprintf_r+0x46b>
c0106798:	ff 24 8d 88 8a 10 c0 	jmp    *-0x3fef7578(,%ecx,4)
c010679f:	90                   	nop
c01067a0:	83 8d 64 ff ff ff 10 	orl    $0x10,-0x9c(%ebp)
c01067a7:	89 d0                	mov    %edx,%eax
c01067a9:	eb db                	jmp    c0106786 <_svfiprintf_r+0xf6>
c01067ab:	8b 45 14             	mov    0x14(%ebp),%eax
c01067ae:	8b 5d 14             	mov    0x14(%ebp),%ebx
c01067b1:	8b 00                	mov    (%eax),%eax
c01067b3:	83 c3 04             	add    $0x4,%ebx
c01067b6:	89 5d 14             	mov    %ebx,0x14(%ebp)
c01067b9:	85 c0                	test   %eax,%eax
c01067bb:	89 85 54 ff ff ff    	mov    %eax,-0xac(%ebp)
c01067c1:	79 e4                	jns    c01067a7 <_svfiprintf_r+0x117>
c01067c3:	f7 9d 54 ff ff ff    	negl   -0xac(%ebp)
c01067c9:	83 8d 64 ff ff ff 04 	orl    $0x4,-0x9c(%ebp)
c01067d0:	89 d0                	mov    %edx,%eax
c01067d2:	eb b2                	jmp    c0106786 <_svfiprintf_r+0xf6>
c01067d4:	bf 2b 00 00 00       	mov    $0x2b,%edi
c01067d9:	89 d0                	mov    %edx,%eax
c01067db:	eb a9                	jmp    c0106786 <_svfiprintf_r+0xf6>
c01067dd:	8b 45 14             	mov    0x14(%ebp),%eax
c01067e0:	83 8d 64 ff ff ff 02 	orl    $0x2,-0x9c(%ebp)
c01067e7:	89 55 10             	mov    %edx,0x10(%ebp)
c01067ea:	ba 02 00 00 00       	mov    $0x2,%edx
c01067ef:	8b 08                	mov    (%eax),%ecx
c01067f1:	83 c0 04             	add    $0x4,%eax
c01067f4:	c6 85 72 ff ff ff 30 	movb   $0x30,-0x8e(%ebp)
c01067fb:	c6 85 73 ff ff ff 78 	movb   $0x78,-0x8d(%ebp)
c0106802:	89 45 14             	mov    %eax,0x14(%ebp)
c0106805:	c7 85 44 ff ff ff 23 	movl   $0xc0108723,-0xbc(%ebp)
c010680c:	87 10 c0 
c010680f:	90                   	nop
c0106810:	c6 85 71 ff ff ff 00 	movb   $0x0,-0x8f(%ebp)
c0106817:	31 ff                	xor    %edi,%edi
c0106819:	8b 9d 64 ff ff ff    	mov    -0x9c(%ebp),%ebx
c010681f:	89 d8                	mov    %ebx,%eax
c0106821:	24 7f                	and    $0x7f,%al
c0106823:	83 bd 5c ff ff ff 00 	cmpl   $0x0,-0xa4(%ebp)
c010682a:	0f 48 c3             	cmovs  %ebx,%eax
c010682d:	89 85 64 ff ff ff    	mov    %eax,-0x9c(%ebp)
c0106833:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
c0106839:	85 c0                	test   %eax,%eax
c010683b:	75 08                	jne    c0106845 <_svfiprintf_r+0x1b5>
c010683d:	85 c9                	test   %ecx,%ecx
c010683f:	0f 84 03 08 00 00    	je     c0107048 <_svfiprintf_r+0x9b8>
c0106845:	80 fa 01             	cmp    $0x1,%dl
c0106848:	0f 84 8a 0a 00 00    	je     c01072d8 <_svfiprintf_r+0xc48>
c010684e:	80 fa 02             	cmp    $0x2,%dl
c0106851:	8d 5d a8             	lea    -0x58(%ebp),%ebx
c0106854:	0f 85 86 01 00 00    	jne    c01069e0 <_svfiprintf_r+0x350>
c010685a:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
c0106860:	89 c8                	mov    %ecx,%eax
c0106862:	83 eb 01             	sub    $0x1,%ebx
c0106865:	83 e0 0f             	and    $0xf,%eax
c0106868:	0f b6 04 02          	movzbl (%edx,%eax,1),%eax
c010686c:	c1 e9 04             	shr    $0x4,%ecx
c010686f:	85 c9                	test   %ecx,%ecx
c0106871:	88 03                	mov    %al,(%ebx)
c0106873:	75 eb                	jne    c0106860 <_svfiprintf_r+0x1d0>
c0106875:	8d 45 a8             	lea    -0x58(%ebp),%eax
c0106878:	29 d8                	sub    %ebx,%eax
c010687a:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c0106880:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
c0106886:	8b 8d 58 ff ff ff    	mov    -0xa8(%ebp),%ecx
c010688c:	39 c1                	cmp    %eax,%ecx
c010688e:	0f 4d c1             	cmovge %ecx,%eax
c0106891:	89 85 60 ff ff ff    	mov    %eax,-0xa0(%ebp)
c0106897:	89 f8                	mov    %edi,%eax
c0106899:	3c 01                	cmp    $0x1,%al
c010689b:	83 9d 60 ff ff ff ff 	sbbl   $0xffffffff,-0xa0(%ebp)
c01068a2:	8b 95 60 ff ff ff    	mov    -0xa0(%ebp),%edx
c01068a8:	8b 8d 64 ff ff ff    	mov    -0x9c(%ebp),%ecx
c01068ae:	89 d0                	mov    %edx,%eax
c01068b0:	89 cf                	mov    %ecx,%edi
c01068b2:	83 c0 02             	add    $0x2,%eax
c01068b5:	83 e7 02             	and    $0x2,%edi
c01068b8:	89 bd 4c ff ff ff    	mov    %edi,-0xb4(%ebp)
c01068be:	89 cf                	mov    %ecx,%edi
c01068c0:	0f 44 c2             	cmove  %edx,%eax
c01068c3:	81 e7 84 00 00 00    	and    $0x84,%edi
c01068c9:	89 85 60 ff ff ff    	mov    %eax,-0xa0(%ebp)
c01068cf:	89 bd 48 ff ff ff    	mov    %edi,-0xb8(%ebp)
c01068d5:	0f 85 cd 04 00 00    	jne    c0106da8 <_svfiprintf_r+0x718>
c01068db:	8b bd 54 ff ff ff    	mov    -0xac(%ebp),%edi
c01068e1:	2b bd 60 ff ff ff    	sub    -0xa0(%ebp),%edi
c01068e7:	85 ff                	test   %edi,%edi
c01068e9:	0f 8e b9 04 00 00    	jle    c0106da8 <_svfiprintf_r+0x718>
c01068ef:	83 ff 10             	cmp    $0x10,%edi
c01068f2:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c01068f8:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c01068fe:	7e 7c                	jle    c010697c <_svfiprintf_r+0x2ec>
c0106900:	89 9d 40 ff ff ff    	mov    %ebx,-0xc0(%ebp)
c0106906:	89 f1                	mov    %esi,%ecx
c0106908:	8b 5d 08             	mov    0x8(%ebp),%ebx
c010690b:	8b 75 0c             	mov    0xc(%ebp),%esi
c010690e:	eb 08                	jmp    c0106918 <_svfiprintf_r+0x288>
c0106910:	83 ef 10             	sub    $0x10,%edi
c0106913:	83 ff 10             	cmp    $0x10,%edi
c0106916:	7e 5c                	jle    c0106974 <_svfiprintf_r+0x2e4>
c0106918:	83 c0 01             	add    $0x1,%eax
c010691b:	83 c2 10             	add    $0x10,%edx
c010691e:	c7 01 fc 8b 10 c0    	movl   $0xc0108bfc,(%ecx)
c0106924:	83 c1 08             	add    $0x8,%ecx
c0106927:	c7 41 fc 10 00 00 00 	movl   $0x10,-0x4(%ecx)
c010692e:	83 f8 07             	cmp    $0x7,%eax
c0106931:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0106937:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c010693d:	7e d1                	jle    c0106910 <_svfiprintf_r+0x280>
c010693f:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0106945:	89 44 24 08          	mov    %eax,0x8(%esp)
c0106949:	89 74 24 04          	mov    %esi,0x4(%esp)
c010694d:	89 1c 24             	mov    %ebx,(%esp)
c0106950:	e8 4b fb ff ff       	call   c01064a0 <__ssprint_r>
c0106955:	85 c0                	test   %eax,%eax
c0106957:	0f 85 3b 07 00 00    	jne    c0107098 <_svfiprintf_r+0xa08>
c010695d:	83 ef 10             	sub    $0x10,%edi
c0106960:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0106966:	83 ff 10             	cmp    $0x10,%edi
c0106969:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c010696f:	8d 4d a8             	lea    -0x58(%ebp),%ecx
c0106972:	7f a4                	jg     c0106918 <_svfiprintf_r+0x288>
c0106974:	8b 9d 40 ff ff ff    	mov    -0xc0(%ebp),%ebx
c010697a:	89 ce                	mov    %ecx,%esi
c010697c:	83 c0 01             	add    $0x1,%eax
c010697f:	01 fa                	add    %edi,%edx
c0106981:	c7 06 fc 8b 10 c0    	movl   $0xc0108bfc,(%esi)
c0106987:	83 c6 08             	add    $0x8,%esi
c010698a:	89 7e fc             	mov    %edi,-0x4(%esi)
c010698d:	83 f8 07             	cmp    $0x7,%eax
c0106990:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0106996:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c010699c:	0f 8e 12 04 00 00    	jle    c0106db4 <_svfiprintf_r+0x724>
c01069a2:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c01069a8:	89 44 24 08          	mov    %eax,0x8(%esp)
c01069ac:	8b 45 0c             	mov    0xc(%ebp),%eax
c01069af:	89 44 24 04          	mov    %eax,0x4(%esp)
c01069b3:	8b 45 08             	mov    0x8(%ebp),%eax
c01069b6:	89 04 24             	mov    %eax,(%esp)
c01069b9:	e8 e2 fa ff ff       	call   c01064a0 <__ssprint_r>
c01069be:	85 c0                	test   %eax,%eax
c01069c0:	0f 85 d2 06 00 00    	jne    c0107098 <_svfiprintf_r+0xa08>
c01069c6:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c01069cc:	8d 75 a8             	lea    -0x58(%ebp),%esi
c01069cf:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c01069d5:	e9 da 03 00 00       	jmp    c0106db4 <_svfiprintf_r+0x724>
c01069da:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c01069e0:	89 c8                	mov    %ecx,%eax
c01069e2:	83 eb 01             	sub    $0x1,%ebx
c01069e5:	83 e0 07             	and    $0x7,%eax
c01069e8:	c1 e9 03             	shr    $0x3,%ecx
c01069eb:	83 c0 30             	add    $0x30,%eax
c01069ee:	85 c9                	test   %ecx,%ecx
c01069f0:	88 03                	mov    %al,(%ebx)
c01069f2:	75 ec                	jne    c01069e0 <_svfiprintf_r+0x350>
c01069f4:	f6 85 64 ff ff ff 01 	testb  $0x1,-0x9c(%ebp)
c01069fb:	89 da                	mov    %ebx,%edx
c01069fd:	0f 84 72 fe ff ff    	je     c0106875 <_svfiprintf_r+0x1e5>
c0106a03:	3c 30                	cmp    $0x30,%al
c0106a05:	0f 84 6a fe ff ff    	je     c0106875 <_svfiprintf_r+0x1e5>
c0106a0b:	83 eb 01             	sub    $0x1,%ebx
c0106a0e:	8d 45 a8             	lea    -0x58(%ebp),%eax
c0106a11:	29 d8                	sub    %ebx,%eax
c0106a13:	c6 42 ff 30          	movb   $0x30,-0x1(%edx)
c0106a17:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c0106a1d:	e9 5e fe ff ff       	jmp    c0106880 <_svfiprintf_r+0x1f0>
c0106a22:	83 8d 64 ff ff ff 10 	orl    $0x10,-0x9c(%ebp)
c0106a29:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
c0106a30:	89 55 10             	mov    %edx,0x10(%ebp)
c0106a33:	8b 45 14             	mov    0x14(%ebp),%eax
c0106a36:	0f 85 48 01 00 00    	jne    c0106b84 <_svfiprintf_r+0x4f4>
c0106a3c:	f6 85 64 ff ff ff 40 	testb  $0x40,-0x9c(%ebp)
c0106a43:	0f 84 3b 01 00 00    	je     c0106b84 <_svfiprintf_r+0x4f4>
c0106a49:	0f b7 08             	movzwl (%eax),%ecx
c0106a4c:	83 c0 04             	add    $0x4,%eax
c0106a4f:	31 d2                	xor    %edx,%edx
c0106a51:	89 45 14             	mov    %eax,0x14(%ebp)
c0106a54:	e9 b7 fd ff ff       	jmp    c0106810 <_svfiprintf_r+0x180>
c0106a59:	83 8d 64 ff ff ff 10 	orl    $0x10,-0x9c(%ebp)
c0106a60:	89 f8                	mov    %edi,%eax
c0106a62:	89 55 10             	mov    %edx,0x10(%ebp)
c0106a65:	88 85 71 ff ff ff    	mov    %al,-0x8f(%ebp)
c0106a6b:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
c0106a72:	8b 45 14             	mov    0x14(%ebp),%eax
c0106a75:	75 0d                	jne    c0106a84 <_svfiprintf_r+0x3f4>
c0106a77:	f6 85 64 ff ff ff 40 	testb  $0x40,-0x9c(%ebp)
c0106a7e:	0f 85 f2 08 00 00    	jne    c0107376 <_svfiprintf_r+0xce6>
c0106a84:	8b 08                	mov    (%eax),%ecx
c0106a86:	83 c0 04             	add    $0x4,%eax
c0106a89:	89 45 14             	mov    %eax,0x14(%ebp)
c0106a8c:	85 c9                	test   %ecx,%ecx
c0106a8e:	0f 88 f3 08 00 00    	js     c0107387 <_svfiprintf_r+0xcf7>
c0106a94:	0f b6 bd 71 ff ff ff 	movzbl -0x8f(%ebp),%edi
c0106a9b:	ba 01 00 00 00       	mov    $0x1,%edx
c0106aa0:	e9 74 fd ff ff       	jmp    c0106819 <_svfiprintf_r+0x189>
c0106aa5:	0f be 02             	movsbl (%edx),%eax
c0106aa8:	8d 5a 01             	lea    0x1(%edx),%ebx
c0106aab:	83 f8 2a             	cmp    $0x2a,%eax
c0106aae:	0f 84 af 09 00 00    	je     c0107463 <_svfiprintf_r+0xdd3>
c0106ab4:	8d 48 d0             	lea    -0x30(%eax),%ecx
c0106ab7:	31 d2                	xor    %edx,%edx
c0106ab9:	83 f9 09             	cmp    $0x9,%ecx
c0106abc:	0f 87 90 09 00 00    	ja     c0107452 <_svfiprintf_r+0xdc2>
c0106ac2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0106ac8:	8d 04 92             	lea    (%edx,%edx,4),%eax
c0106acb:	83 c3 01             	add    $0x1,%ebx
c0106ace:	8d 14 41             	lea    (%ecx,%eax,2),%edx
c0106ad1:	0f be 43 ff          	movsbl -0x1(%ebx),%eax
c0106ad5:	8d 48 d0             	lea    -0x30(%eax),%ecx
c0106ad8:	83 f9 09             	cmp    $0x9,%ecx
c0106adb:	76 eb                	jbe    c0106ac8 <_svfiprintf_r+0x438>
c0106add:	85 d2                	test   %edx,%edx
c0106adf:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
c0106ae4:	0f 48 d1             	cmovs  %ecx,%edx
c0106ae7:	8d 48 e0             	lea    -0x20(%eax),%ecx
c0106aea:	83 f9 58             	cmp    $0x58,%ecx
c0106aed:	89 95 5c ff ff ff    	mov    %edx,-0xa4(%ebp)
c0106af3:	89 da                	mov    %ebx,%edx
c0106af5:	0f 86 9d fc ff ff    	jbe    c0106798 <_svfiprintf_r+0x108>
c0106afb:	89 fb                	mov    %edi,%ebx
c0106afd:	85 c0                	test   %eax,%eax
c0106aff:	89 55 10             	mov    %edx,0x10(%ebp)
c0106b02:	88 9d 71 ff ff ff    	mov    %bl,-0x8f(%ebp)
c0106b08:	0f 84 5f 05 00 00    	je     c010706d <_svfiprintf_r+0x9dd>
c0106b0e:	88 45 80             	mov    %al,-0x80(%ebp)
c0106b11:	8d 5d 80             	lea    -0x80(%ebp),%ebx
c0106b14:	c6 85 71 ff ff ff 00 	movb   $0x0,-0x8f(%ebp)
c0106b1b:	c7 85 60 ff ff ff 01 	movl   $0x1,-0xa0(%ebp)
c0106b22:	00 00 00 
c0106b25:	c7 85 58 ff ff ff 01 	movl   $0x1,-0xa8(%ebp)
c0106b2c:	00 00 00 
c0106b2f:	e9 5a 01 00 00       	jmp    c0106c8e <_svfiprintf_r+0x5fe>
c0106b34:	31 db                	xor    %ebx,%ebx
c0106b36:	8d 48 d0             	lea    -0x30(%eax),%ecx
c0106b39:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0106b40:	8d 04 9b             	lea    (%ebx,%ebx,4),%eax
c0106b43:	83 c2 01             	add    $0x1,%edx
c0106b46:	8d 1c 41             	lea    (%ecx,%eax,2),%ebx
c0106b49:	0f be 42 ff          	movsbl -0x1(%edx),%eax
c0106b4d:	8d 48 d0             	lea    -0x30(%eax),%ecx
c0106b50:	83 f9 09             	cmp    $0x9,%ecx
c0106b53:	76 eb                	jbe    c0106b40 <_svfiprintf_r+0x4b0>
c0106b55:	89 9d 54 ff ff ff    	mov    %ebx,-0xac(%ebp)
c0106b5b:	e9 2c fc ff ff       	jmp    c010678c <_svfiprintf_r+0xfc>
c0106b60:	81 8d 64 ff ff ff 80 	orl    $0x80,-0x9c(%ebp)
c0106b67:	00 00 00 
c0106b6a:	89 d0                	mov    %edx,%eax
c0106b6c:	e9 15 fc ff ff       	jmp    c0106786 <_svfiprintf_r+0xf6>
c0106b71:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
c0106b78:	89 55 10             	mov    %edx,0x10(%ebp)
c0106b7b:	8b 45 14             	mov    0x14(%ebp),%eax
c0106b7e:	0f 84 b8 fe ff ff    	je     c0106a3c <_svfiprintf_r+0x3ac>
c0106b84:	8b 08                	mov    (%eax),%ecx
c0106b86:	83 c0 04             	add    $0x4,%eax
c0106b89:	31 d2                	xor    %edx,%edx
c0106b8b:	89 45 14             	mov    %eax,0x14(%ebp)
c0106b8e:	e9 7d fc ff ff       	jmp    c0106810 <_svfiprintf_r+0x180>
c0106b93:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
c0106b9a:	89 f8                	mov    %edi,%eax
c0106b9c:	89 55 10             	mov    %edx,0x10(%ebp)
c0106b9f:	88 85 71 ff ff ff    	mov    %al,-0x8f(%ebp)
c0106ba5:	0f 85 a2 07 00 00    	jne    c010734d <_svfiprintf_r+0xcbd>
c0106bab:	f6 85 64 ff ff ff 40 	testb  $0x40,-0x9c(%ebp)
c0106bb2:	0f 84 95 07 00 00    	je     c010734d <_svfiprintf_r+0xcbd>
c0106bb8:	8b 45 14             	mov    0x14(%ebp),%eax
c0106bbb:	0f b7 9d 50 ff ff ff 	movzwl -0xb0(%ebp),%ebx
c0106bc2:	8b 00                	mov    (%eax),%eax
c0106bc4:	66 89 18             	mov    %bx,(%eax)
c0106bc7:	8b 45 14             	mov    0x14(%ebp),%eax
c0106bca:	83 c0 04             	add    $0x4,%eax
c0106bcd:	89 45 14             	mov    %eax,0x14(%ebp)
c0106bd0:	e9 19 fb ff ff       	jmp    c01066ee <_svfiprintf_r+0x5e>
c0106bd5:	89 fb                	mov    %edi,%ebx
c0106bd7:	89 55 10             	mov    %edx,0x10(%ebp)
c0106bda:	88 9d 71 ff ff ff    	mov    %bl,-0x8f(%ebp)
c0106be0:	c7 85 44 ff ff ff 23 	movl   $0xc0108723,-0xbc(%ebp)
c0106be7:	87 10 c0 
c0106bea:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
c0106bf1:	8b 5d 14             	mov    0x14(%ebp),%ebx
c0106bf4:	75 0d                	jne    c0106c03 <_svfiprintf_r+0x573>
c0106bf6:	f6 85 64 ff ff ff 40 	testb  $0x40,-0x9c(%ebp)
c0106bfd:	0f 85 65 07 00 00    	jne    c0107368 <_svfiprintf_r+0xcd8>
c0106c03:	8b 0b                	mov    (%ebx),%ecx
c0106c05:	83 c3 04             	add    $0x4,%ebx
c0106c08:	89 5d 14             	mov    %ebx,0x14(%ebp)
c0106c0b:	f6 85 64 ff ff ff 01 	testb  $0x1,-0x9c(%ebp)
c0106c12:	ba 02 00 00 00       	mov    $0x2,%edx
c0106c17:	0f 84 f3 fb ff ff    	je     c0106810 <_svfiprintf_r+0x180>
c0106c1d:	85 c9                	test   %ecx,%ecx
c0106c1f:	0f 84 eb fb ff ff    	je     c0106810 <_svfiprintf_r+0x180>
c0106c25:	c6 85 72 ff ff ff 30 	movb   $0x30,-0x8e(%ebp)
c0106c2c:	88 85 73 ff ff ff    	mov    %al,-0x8d(%ebp)
c0106c32:	83 8d 64 ff ff ff 02 	orl    $0x2,-0x9c(%ebp)
c0106c39:	e9 d2 fb ff ff       	jmp    c0106810 <_svfiprintf_r+0x180>
c0106c3e:	83 8d 64 ff ff ff 40 	orl    $0x40,-0x9c(%ebp)
c0106c45:	89 d0                	mov    %edx,%eax
c0106c47:	e9 3a fb ff ff       	jmp    c0106786 <_svfiprintf_r+0xf6>
c0106c4c:	89 f8                	mov    %edi,%eax
c0106c4e:	89 55 10             	mov    %edx,0x10(%ebp)
c0106c51:	88 85 71 ff ff ff    	mov    %al,-0x8f(%ebp)
c0106c57:	e9 0f fe ff ff       	jmp    c0106a6b <_svfiprintf_r+0x3db>
c0106c5c:	8b 45 14             	mov    0x14(%ebp),%eax
c0106c5f:	8d 5d 80             	lea    -0x80(%ebp),%ebx
c0106c62:	89 55 10             	mov    %edx,0x10(%ebp)
c0106c65:	c6 85 71 ff ff ff 00 	movb   $0x0,-0x8f(%ebp)
c0106c6c:	c7 85 60 ff ff ff 01 	movl   $0x1,-0xa0(%ebp)
c0106c73:	00 00 00 
c0106c76:	8b 00                	mov    (%eax),%eax
c0106c78:	c7 85 58 ff ff ff 01 	movl   $0x1,-0xa8(%ebp)
c0106c7f:	00 00 00 
c0106c82:	88 45 80             	mov    %al,-0x80(%ebp)
c0106c85:	8b 45 14             	mov    0x14(%ebp),%eax
c0106c88:	83 c0 04             	add    $0x4,%eax
c0106c8b:	89 45 14             	mov    %eax,0x14(%ebp)
c0106c8e:	c7 85 5c ff ff ff 00 	movl   $0x0,-0xa4(%ebp)
c0106c95:	00 00 00 
c0106c98:	e9 05 fc ff ff       	jmp    c01068a2 <_svfiprintf_r+0x212>
c0106c9d:	89 fb                	mov    %edi,%ebx
c0106c9f:	89 55 10             	mov    %edx,0x10(%ebp)
c0106ca2:	88 9d 71 ff ff ff    	mov    %bl,-0x8f(%ebp)
c0106ca8:	c7 85 44 ff ff ff 12 	movl   $0xc0108712,-0xbc(%ebp)
c0106caf:	87 10 c0 
c0106cb2:	e9 33 ff ff ff       	jmp    c0106bea <_svfiprintf_r+0x55a>
c0106cb7:	83 8d 64 ff ff ff 10 	orl    $0x10,-0x9c(%ebp)
c0106cbe:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
c0106cc5:	89 55 10             	mov    %edx,0x10(%ebp)
c0106cc8:	8b 45 14             	mov    0x14(%ebp),%eax
c0106ccb:	75 39                	jne    c0106d06 <_svfiprintf_r+0x676>
c0106ccd:	f6 85 64 ff ff ff 40 	testb  $0x40,-0x9c(%ebp)
c0106cd4:	74 30                	je     c0106d06 <_svfiprintf_r+0x676>
c0106cd6:	0f b7 08             	movzwl (%eax),%ecx
c0106cd9:	83 c0 04             	add    $0x4,%eax
c0106cdc:	ba 01 00 00 00       	mov    $0x1,%edx
c0106ce1:	89 45 14             	mov    %eax,0x14(%ebp)
c0106ce4:	e9 27 fb ff ff       	jmp    c0106810 <_svfiprintf_r+0x180>
c0106ce9:	83 8d 64 ff ff ff 01 	orl    $0x1,-0x9c(%ebp)
c0106cf0:	89 d0                	mov    %edx,%eax
c0106cf2:	e9 8f fa ff ff       	jmp    c0106786 <_svfiprintf_r+0xf6>
c0106cf7:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
c0106cfe:	89 55 10             	mov    %edx,0x10(%ebp)
c0106d01:	8b 45 14             	mov    0x14(%ebp),%eax
c0106d04:	74 c7                	je     c0106ccd <_svfiprintf_r+0x63d>
c0106d06:	8b 08                	mov    (%eax),%ecx
c0106d08:	83 c0 04             	add    $0x4,%eax
c0106d0b:	ba 01 00 00 00       	mov    $0x1,%edx
c0106d10:	89 45 14             	mov    %eax,0x14(%ebp)
c0106d13:	e9 f8 fa ff ff       	jmp    c0106810 <_svfiprintf_r+0x180>
c0106d18:	8b 45 14             	mov    0x14(%ebp),%eax
c0106d1b:	89 55 10             	mov    %edx,0x10(%ebp)
c0106d1e:	c6 85 71 ff ff ff 00 	movb   $0x0,-0x8f(%ebp)
c0106d25:	8b 18                	mov    (%eax),%ebx
c0106d27:	8d 50 04             	lea    0x4(%eax),%edx
c0106d2a:	85 db                	test   %ebx,%ebx
c0106d2c:	0f 84 cc 06 00 00    	je     c01073fe <_svfiprintf_r+0xd6e>
c0106d32:	8b bd 5c ff ff ff    	mov    -0xa4(%ebp),%edi
c0106d38:	89 95 60 ff ff ff    	mov    %edx,-0xa0(%ebp)
c0106d3e:	85 ff                	test   %edi,%edi
c0106d40:	0f 88 59 06 00 00    	js     c010739f <_svfiprintf_r+0xd0f>
c0106d46:	89 7c 24 08          	mov    %edi,0x8(%esp)
c0106d4a:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c0106d51:	00 
c0106d52:	89 1c 24             	mov    %ebx,(%esp)
c0106d55:	e8 76 e7 ff ff       	call   c01054d0 <memchr>
c0106d5a:	8b 95 60 ff ff ff    	mov    -0xa0(%ebp),%edx
c0106d60:	85 c0                	test   %eax,%eax
c0106d62:	0f 84 c5 06 00 00    	je     c010742d <_svfiprintf_r+0xd9d>
c0106d68:	29 d8                	sub    %ebx,%eax
c0106d6a:	39 f8                	cmp    %edi,%eax
c0106d6c:	0f 4f c7             	cmovg  %edi,%eax
c0106d6f:	0f b6 bd 71 ff ff ff 	movzbl -0x8f(%ebp),%edi
c0106d76:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c0106d7c:	89 55 14             	mov    %edx,0x14(%ebp)
c0106d7f:	c7 85 5c ff ff ff 00 	movl   $0x0,-0xa4(%ebp)
c0106d86:	00 00 00 
c0106d89:	e9 f2 fa ff ff       	jmp    c0106880 <_svfiprintf_r+0x1f0>
c0106d8e:	89 f8                	mov    %edi,%eax
c0106d90:	84 c0                	test   %al,%al
c0106d92:	b8 20 00 00 00       	mov    $0x20,%eax
c0106d97:	0f 44 f8             	cmove  %eax,%edi
c0106d9a:	89 d0                	mov    %edx,%eax
c0106d9c:	e9 e5 f9 ff ff       	jmp    c0106786 <_svfiprintf_r+0xf6>
c0106da1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0106da8:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0106dae:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0106db4:	80 bd 71 ff ff ff 00 	cmpb   $0x0,-0x8f(%ebp)
c0106dbb:	74 2e                	je     c0106deb <_svfiprintf_r+0x75b>
c0106dbd:	83 c0 01             	add    $0x1,%eax
c0106dc0:	83 c2 01             	add    $0x1,%edx
c0106dc3:	8d 8d 71 ff ff ff    	lea    -0x8f(%ebp),%ecx
c0106dc9:	83 c6 08             	add    $0x8,%esi
c0106dcc:	89 4e f8             	mov    %ecx,-0x8(%esi)
c0106dcf:	c7 46 fc 01 00 00 00 	movl   $0x1,-0x4(%esi)
c0106dd6:	83 f8 07             	cmp    $0x7,%eax
c0106dd9:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0106ddf:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0106de5:	0f 8f b5 04 00 00    	jg     c01072a0 <_svfiprintf_r+0xc10>
c0106deb:	8b 8d 4c ff ff ff    	mov    -0xb4(%ebp),%ecx
c0106df1:	85 c9                	test   %ecx,%ecx
c0106df3:	74 2e                	je     c0106e23 <_svfiprintf_r+0x793>
c0106df5:	83 c0 01             	add    $0x1,%eax
c0106df8:	83 c2 02             	add    $0x2,%edx
c0106dfb:	8d 8d 72 ff ff ff    	lea    -0x8e(%ebp),%ecx
c0106e01:	83 c6 08             	add    $0x8,%esi
c0106e04:	89 4e f8             	mov    %ecx,-0x8(%esi)
c0106e07:	c7 46 fc 02 00 00 00 	movl   $0x2,-0x4(%esi)
c0106e0e:	83 f8 07             	cmp    $0x7,%eax
c0106e11:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0106e17:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0106e1d:	0f 8f 45 04 00 00    	jg     c0107268 <_svfiprintf_r+0xbd8>
c0106e23:	81 bd 48 ff ff ff 80 	cmpl   $0x80,-0xb8(%ebp)
c0106e2a:	00 00 00 
c0106e2d:	0f 84 9d 02 00 00    	je     c01070d0 <_svfiprintf_r+0xa40>
c0106e33:	8b bd 5c ff ff ff    	mov    -0xa4(%ebp),%edi
c0106e39:	2b bd 58 ff ff ff    	sub    -0xa8(%ebp),%edi
c0106e3f:	85 ff                	test   %edi,%edi
c0106e41:	0f 8e e1 00 00 00    	jle    c0106f28 <_svfiprintf_r+0x898>
c0106e47:	83 ff 10             	cmp    $0x10,%edi
c0106e4a:	0f 8e 7c 00 00 00    	jle    c0106ecc <_svfiprintf_r+0x83c>
c0106e50:	89 9d 5c ff ff ff    	mov    %ebx,-0xa4(%ebp)
c0106e56:	89 f1                	mov    %esi,%ecx
c0106e58:	8b 5d 08             	mov    0x8(%ebp),%ebx
c0106e5b:	8b 75 0c             	mov    0xc(%ebp),%esi
c0106e5e:	eb 08                	jmp    c0106e68 <_svfiprintf_r+0x7d8>
c0106e60:	83 ef 10             	sub    $0x10,%edi
c0106e63:	83 ff 10             	cmp    $0x10,%edi
c0106e66:	7e 5c                	jle    c0106ec4 <_svfiprintf_r+0x834>
c0106e68:	83 c0 01             	add    $0x1,%eax
c0106e6b:	83 c2 10             	add    $0x10,%edx
c0106e6e:	c7 01 ec 8b 10 c0    	movl   $0xc0108bec,(%ecx)
c0106e74:	83 c1 08             	add    $0x8,%ecx
c0106e77:	c7 41 fc 10 00 00 00 	movl   $0x10,-0x4(%ecx)
c0106e7e:	83 f8 07             	cmp    $0x7,%eax
c0106e81:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0106e87:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0106e8d:	7e d1                	jle    c0106e60 <_svfiprintf_r+0x7d0>
c0106e8f:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0106e95:	89 44 24 08          	mov    %eax,0x8(%esp)
c0106e99:	89 74 24 04          	mov    %esi,0x4(%esp)
c0106e9d:	89 1c 24             	mov    %ebx,(%esp)
c0106ea0:	e8 fb f5 ff ff       	call   c01064a0 <__ssprint_r>
c0106ea5:	85 c0                	test   %eax,%eax
c0106ea7:	0f 85 eb 01 00 00    	jne    c0107098 <_svfiprintf_r+0xa08>
c0106ead:	83 ef 10             	sub    $0x10,%edi
c0106eb0:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0106eb6:	83 ff 10             	cmp    $0x10,%edi
c0106eb9:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0106ebf:	8d 4d a8             	lea    -0x58(%ebp),%ecx
c0106ec2:	7f a4                	jg     c0106e68 <_svfiprintf_r+0x7d8>
c0106ec4:	8b 9d 5c ff ff ff    	mov    -0xa4(%ebp),%ebx
c0106eca:	89 ce                	mov    %ecx,%esi
c0106ecc:	83 c0 01             	add    $0x1,%eax
c0106ecf:	01 fa                	add    %edi,%edx
c0106ed1:	c7 06 ec 8b 10 c0    	movl   $0xc0108bec,(%esi)
c0106ed7:	83 c6 08             	add    $0x8,%esi
c0106eda:	89 7e fc             	mov    %edi,-0x4(%esi)
c0106edd:	83 f8 07             	cmp    $0x7,%eax
c0106ee0:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0106ee6:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0106eec:	7e 3a                	jle    c0106f28 <_svfiprintf_r+0x898>
c0106eee:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0106ef4:	89 44 24 08          	mov    %eax,0x8(%esp)
c0106ef8:	8b 45 0c             	mov    0xc(%ebp),%eax
c0106efb:	89 44 24 04          	mov    %eax,0x4(%esp)
c0106eff:	8b 45 08             	mov    0x8(%ebp),%eax
c0106f02:	89 04 24             	mov    %eax,(%esp)
c0106f05:	e8 96 f5 ff ff       	call   c01064a0 <__ssprint_r>
c0106f0a:	85 c0                	test   %eax,%eax
c0106f0c:	0f 85 86 01 00 00    	jne    c0107098 <_svfiprintf_r+0xa08>
c0106f12:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0106f18:	8d 75 a8             	lea    -0x58(%ebp),%esi
c0106f1b:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0106f21:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0106f28:	89 1e                	mov    %ebx,(%esi)
c0106f2a:	8b 9d 58 ff ff ff    	mov    -0xa8(%ebp),%ebx
c0106f30:	83 c0 01             	add    $0x1,%eax
c0106f33:	83 c6 08             	add    $0x8,%esi
c0106f36:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0106f3c:	89 5e fc             	mov    %ebx,-0x4(%esi)
c0106f3f:	01 da                	add    %ebx,%edx
c0106f41:	83 f8 07             	cmp    $0x7,%eax
c0106f44:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0106f4a:	0f 8f 80 02 00 00    	jg     c01071d0 <_svfiprintf_r+0xb40>
c0106f50:	f6 85 64 ff ff ff 04 	testb  $0x4,-0x9c(%ebp)
c0106f57:	0f 84 b9 00 00 00    	je     c0107016 <_svfiprintf_r+0x986>
c0106f5d:	8b bd 54 ff ff ff    	mov    -0xac(%ebp),%edi
c0106f63:	2b bd 60 ff ff ff    	sub    -0xa0(%ebp),%edi
c0106f69:	85 ff                	test   %edi,%edi
c0106f6b:	0f 8e a5 00 00 00    	jle    c0107016 <_svfiprintf_r+0x986>
c0106f71:	83 ff 10             	cmp    $0x10,%edi
c0106f74:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0106f7a:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c0106f80:	7e 71                	jle    c0106ff3 <_svfiprintf_r+0x963>
c0106f82:	89 f1                	mov    %esi,%ecx
c0106f84:	8b 75 08             	mov    0x8(%ebp),%esi
c0106f87:	eb 0f                	jmp    c0106f98 <_svfiprintf_r+0x908>
c0106f89:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0106f90:	83 ef 10             	sub    $0x10,%edi
c0106f93:	83 ff 10             	cmp    $0x10,%edi
c0106f96:	7e 59                	jle    c0106ff1 <_svfiprintf_r+0x961>
c0106f98:	83 c0 01             	add    $0x1,%eax
c0106f9b:	83 c2 10             	add    $0x10,%edx
c0106f9e:	c7 01 fc 8b 10 c0    	movl   $0xc0108bfc,(%ecx)
c0106fa4:	83 c1 08             	add    $0x8,%ecx
c0106fa7:	c7 41 fc 10 00 00 00 	movl   $0x10,-0x4(%ecx)
c0106fae:	83 f8 07             	cmp    $0x7,%eax
c0106fb1:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0106fb7:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0106fbd:	7e d1                	jle    c0106f90 <_svfiprintf_r+0x900>
c0106fbf:	8b 45 0c             	mov    0xc(%ebp),%eax
c0106fc2:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0106fc6:	89 34 24             	mov    %esi,(%esp)
c0106fc9:	89 44 24 04          	mov    %eax,0x4(%esp)
c0106fcd:	e8 ce f4 ff ff       	call   c01064a0 <__ssprint_r>
c0106fd2:	85 c0                	test   %eax,%eax
c0106fd4:	0f 85 be 00 00 00    	jne    c0107098 <_svfiprintf_r+0xa08>
c0106fda:	83 ef 10             	sub    $0x10,%edi
c0106fdd:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0106fe3:	83 ff 10             	cmp    $0x10,%edi
c0106fe6:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0106fec:	8d 4d a8             	lea    -0x58(%ebp),%ecx
c0106fef:	7f a7                	jg     c0106f98 <_svfiprintf_r+0x908>
c0106ff1:	89 ce                	mov    %ecx,%esi
c0106ff3:	83 c0 01             	add    $0x1,%eax
c0106ff6:	01 fa                	add    %edi,%edx
c0106ff8:	83 f8 07             	cmp    $0x7,%eax
c0106ffb:	c7 06 fc 8b 10 c0    	movl   $0xc0108bfc,(%esi)
c0107001:	89 7e 04             	mov    %edi,0x4(%esi)
c0107004:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c010700a:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0107010:	0f 8f ee 02 00 00    	jg     c0107304 <_svfiprintf_r+0xc74>
c0107016:	8b 85 54 ff ff ff    	mov    -0xac(%ebp),%eax
c010701c:	8b b5 60 ff ff ff    	mov    -0xa0(%ebp),%esi
c0107022:	39 c6                	cmp    %eax,%esi
c0107024:	0f 4d c6             	cmovge %esi,%eax
c0107027:	01 85 50 ff ff ff    	add    %eax,-0xb0(%ebp)
c010702d:	85 d2                	test   %edx,%edx
c010702f:	0f 85 d3 01 00 00    	jne    c0107208 <_svfiprintf_r+0xb78>
c0107035:	c7 85 78 ff ff ff 00 	movl   $0x0,-0x88(%ebp)
c010703c:	00 00 00 
c010703f:	8d 75 a8             	lea    -0x58(%ebp),%esi
c0107042:	e9 a7 f6 ff ff       	jmp    c01066ee <_svfiprintf_r+0x5e>
c0107047:	90                   	nop
c0107048:	84 d2                	test   %dl,%dl
c010704a:	75 6c                	jne    c01070b8 <_svfiprintf_r+0xa28>
c010704c:	f6 85 64 ff ff ff 01 	testb  $0x1,-0x9c(%ebp)
c0107053:	74 63                	je     c01070b8 <_svfiprintf_r+0xa28>
c0107055:	8b 85 3c ff ff ff    	mov    -0xc4(%ebp),%eax
c010705b:	8d 5d a7             	lea    -0x59(%ebp),%ebx
c010705e:	c6 45 a7 30          	movb   $0x30,-0x59(%ebp)
c0107062:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c0107068:	e9 13 f8 ff ff       	jmp    c0106880 <_svfiprintf_r+0x1f0>
c010706d:	8b 85 7c ff ff ff    	mov    -0x84(%ebp),%eax
c0107073:	85 c0                	test   %eax,%eax
c0107075:	74 21                	je     c0107098 <_svfiprintf_r+0xa08>
c0107077:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c010707d:	89 44 24 08          	mov    %eax,0x8(%esp)
c0107081:	8b 45 0c             	mov    0xc(%ebp),%eax
c0107084:	89 44 24 04          	mov    %eax,0x4(%esp)
c0107088:	8b 45 08             	mov    0x8(%ebp),%eax
c010708b:	89 04 24             	mov    %eax,(%esp)
c010708e:	e8 0d f4 ff ff       	call   c01064a0 <__ssprint_r>
c0107093:	90                   	nop
c0107094:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0107098:	8b 75 0c             	mov    0xc(%ebp),%esi
c010709b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c01070a0:	f6 46 0c 40          	testb  $0x40,0xc(%esi)
c01070a4:	0f 44 85 50 ff ff ff 	cmove  -0xb0(%ebp),%eax
c01070ab:	81 c4 cc 00 00 00    	add    $0xcc,%esp
c01070b1:	5b                   	pop    %ebx
c01070b2:	5e                   	pop    %esi
c01070b3:	5f                   	pop    %edi
c01070b4:	5d                   	pop    %ebp
c01070b5:	c3                   	ret    
c01070b6:	66 90                	xchg   %ax,%ax
c01070b8:	c7 85 58 ff ff ff 00 	movl   $0x0,-0xa8(%ebp)
c01070bf:	00 00 00 
c01070c2:	8d 5d a8             	lea    -0x58(%ebp),%ebx
c01070c5:	e9 b6 f7 ff ff       	jmp    c0106880 <_svfiprintf_r+0x1f0>
c01070ca:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c01070d0:	8b bd 54 ff ff ff    	mov    -0xac(%ebp),%edi
c01070d6:	2b bd 60 ff ff ff    	sub    -0xa0(%ebp),%edi
c01070dc:	85 ff                	test   %edi,%edi
c01070de:	0f 8e 4f fd ff ff    	jle    c0106e33 <_svfiprintf_r+0x7a3>
c01070e4:	83 ff 10             	cmp    $0x10,%edi
c01070e7:	0f 8e 7f 00 00 00    	jle    c010716c <_svfiprintf_r+0xadc>
c01070ed:	89 9d 4c ff ff ff    	mov    %ebx,-0xb4(%ebp)
c01070f3:	89 f1                	mov    %esi,%ecx
c01070f5:	8b 5d 08             	mov    0x8(%ebp),%ebx
c01070f8:	8b 75 0c             	mov    0xc(%ebp),%esi
c01070fb:	eb 0b                	jmp    c0107108 <_svfiprintf_r+0xa78>
c01070fd:	8d 76 00             	lea    0x0(%esi),%esi
c0107100:	83 ef 10             	sub    $0x10,%edi
c0107103:	83 ff 10             	cmp    $0x10,%edi
c0107106:	7e 5c                	jle    c0107164 <_svfiprintf_r+0xad4>
c0107108:	83 c0 01             	add    $0x1,%eax
c010710b:	83 c2 10             	add    $0x10,%edx
c010710e:	c7 01 ec 8b 10 c0    	movl   $0xc0108bec,(%ecx)
c0107114:	83 c1 08             	add    $0x8,%ecx
c0107117:	c7 41 fc 10 00 00 00 	movl   $0x10,-0x4(%ecx)
c010711e:	83 f8 07             	cmp    $0x7,%eax
c0107121:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0107127:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c010712d:	7e d1                	jle    c0107100 <_svfiprintf_r+0xa70>
c010712f:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0107135:	89 44 24 08          	mov    %eax,0x8(%esp)
c0107139:	89 74 24 04          	mov    %esi,0x4(%esp)
c010713d:	89 1c 24             	mov    %ebx,(%esp)
c0107140:	e8 5b f3 ff ff       	call   c01064a0 <__ssprint_r>
c0107145:	85 c0                	test   %eax,%eax
c0107147:	0f 85 4b ff ff ff    	jne    c0107098 <_svfiprintf_r+0xa08>
c010714d:	83 ef 10             	sub    $0x10,%edi
c0107150:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0107156:	83 ff 10             	cmp    $0x10,%edi
c0107159:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c010715f:	8d 4d a8             	lea    -0x58(%ebp),%ecx
c0107162:	7f a4                	jg     c0107108 <_svfiprintf_r+0xa78>
c0107164:	8b 9d 4c ff ff ff    	mov    -0xb4(%ebp),%ebx
c010716a:	89 ce                	mov    %ecx,%esi
c010716c:	83 c0 01             	add    $0x1,%eax
c010716f:	01 fa                	add    %edi,%edx
c0107171:	c7 06 ec 8b 10 c0    	movl   $0xc0108bec,(%esi)
c0107177:	83 c6 08             	add    $0x8,%esi
c010717a:	89 7e fc             	mov    %edi,-0x4(%esi)
c010717d:	83 f8 07             	cmp    $0x7,%eax
c0107180:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0107186:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c010718c:	0f 8e a1 fc ff ff    	jle    c0106e33 <_svfiprintf_r+0x7a3>
c0107192:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0107198:	89 44 24 08          	mov    %eax,0x8(%esp)
c010719c:	8b 45 0c             	mov    0xc(%ebp),%eax
c010719f:	89 44 24 04          	mov    %eax,0x4(%esp)
c01071a3:	8b 45 08             	mov    0x8(%ebp),%eax
c01071a6:	89 04 24             	mov    %eax,(%esp)
c01071a9:	e8 f2 f2 ff ff       	call   c01064a0 <__ssprint_r>
c01071ae:	85 c0                	test   %eax,%eax
c01071b0:	0f 85 e2 fe ff ff    	jne    c0107098 <_svfiprintf_r+0xa08>
c01071b6:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c01071bc:	8d 75 a8             	lea    -0x58(%ebp),%esi
c01071bf:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c01071c5:	e9 69 fc ff ff       	jmp    c0106e33 <_svfiprintf_r+0x7a3>
c01071ca:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c01071d0:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c01071d6:	89 44 24 08          	mov    %eax,0x8(%esp)
c01071da:	8b 45 0c             	mov    0xc(%ebp),%eax
c01071dd:	89 44 24 04          	mov    %eax,0x4(%esp)
c01071e1:	8b 45 08             	mov    0x8(%ebp),%eax
c01071e4:	89 04 24             	mov    %eax,(%esp)
c01071e7:	e8 b4 f2 ff ff       	call   c01064a0 <__ssprint_r>
c01071ec:	85 c0                	test   %eax,%eax
c01071ee:	0f 85 a4 fe ff ff    	jne    c0107098 <_svfiprintf_r+0xa08>
c01071f4:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c01071fa:	8d 75 a8             	lea    -0x58(%ebp),%esi
c01071fd:	e9 4e fd ff ff       	jmp    c0106f50 <_svfiprintf_r+0x8c0>
c0107202:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0107208:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c010720e:	89 44 24 08          	mov    %eax,0x8(%esp)
c0107212:	8b 45 0c             	mov    0xc(%ebp),%eax
c0107215:	89 44 24 04          	mov    %eax,0x4(%esp)
c0107219:	8b 45 08             	mov    0x8(%ebp),%eax
c010721c:	89 04 24             	mov    %eax,(%esp)
c010721f:	e8 7c f2 ff ff       	call   c01064a0 <__ssprint_r>
c0107224:	85 c0                	test   %eax,%eax
c0107226:	0f 84 09 fe ff ff    	je     c0107035 <_svfiprintf_r+0x9a5>
c010722c:	e9 67 fe ff ff       	jmp    c0107098 <_svfiprintf_r+0xa08>
c0107231:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0107238:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c010723e:	89 44 24 08          	mov    %eax,0x8(%esp)
c0107242:	8b 45 0c             	mov    0xc(%ebp),%eax
c0107245:	89 44 24 04          	mov    %eax,0x4(%esp)
c0107249:	8b 45 08             	mov    0x8(%ebp),%eax
c010724c:	89 04 24             	mov    %eax,(%esp)
c010724f:	e8 4c f2 ff ff       	call   c01064a0 <__ssprint_r>
c0107254:	85 c0                	test   %eax,%eax
c0107256:	0f 85 3c fe ff ff    	jne    c0107098 <_svfiprintf_r+0xa08>
c010725c:	8d 75 a8             	lea    -0x58(%ebp),%esi
c010725f:	e9 e9 f4 ff ff       	jmp    c010674d <_svfiprintf_r+0xbd>
c0107264:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0107268:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c010726e:	89 44 24 08          	mov    %eax,0x8(%esp)
c0107272:	8b 45 0c             	mov    0xc(%ebp),%eax
c0107275:	89 44 24 04          	mov    %eax,0x4(%esp)
c0107279:	8b 45 08             	mov    0x8(%ebp),%eax
c010727c:	89 04 24             	mov    %eax,(%esp)
c010727f:	e8 1c f2 ff ff       	call   c01064a0 <__ssprint_r>
c0107284:	85 c0                	test   %eax,%eax
c0107286:	0f 85 0c fe ff ff    	jne    c0107098 <_svfiprintf_r+0xa08>
c010728c:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0107292:	8d 75 a8             	lea    -0x58(%ebp),%esi
c0107295:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c010729b:	e9 83 fb ff ff       	jmp    c0106e23 <_svfiprintf_r+0x793>
c01072a0:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c01072a6:	89 44 24 08          	mov    %eax,0x8(%esp)
c01072aa:	8b 45 0c             	mov    0xc(%ebp),%eax
c01072ad:	89 44 24 04          	mov    %eax,0x4(%esp)
c01072b1:	8b 45 08             	mov    0x8(%ebp),%eax
c01072b4:	89 04 24             	mov    %eax,(%esp)
c01072b7:	e8 e4 f1 ff ff       	call   c01064a0 <__ssprint_r>
c01072bc:	85 c0                	test   %eax,%eax
c01072be:	0f 85 d4 fd ff ff    	jne    c0107098 <_svfiprintf_r+0xa08>
c01072c4:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c01072ca:	8d 75 a8             	lea    -0x58(%ebp),%esi
c01072cd:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c01072d3:	e9 13 fb ff ff       	jmp    c0106deb <_svfiprintf_r+0x75b>
c01072d8:	83 f9 09             	cmp    $0x9,%ecx
c01072db:	76 56                	jbe    c0107333 <_svfiprintf_r+0xca3>
c01072dd:	8d 5d a8             	lea    -0x58(%ebp),%ebx
c01072e0:	b8 cd cc cc cc       	mov    $0xcccccccd,%eax
c01072e5:	83 eb 01             	sub    $0x1,%ebx
c01072e8:	f7 e1                	mul    %ecx
c01072ea:	c1 ea 03             	shr    $0x3,%edx
c01072ed:	8d 04 92             	lea    (%edx,%edx,4),%eax
c01072f0:	01 c0                	add    %eax,%eax
c01072f2:	29 c1                	sub    %eax,%ecx
c01072f4:	83 c1 30             	add    $0x30,%ecx
c01072f7:	85 d2                	test   %edx,%edx
c01072f9:	88 0b                	mov    %cl,(%ebx)
c01072fb:	89 d1                	mov    %edx,%ecx
c01072fd:	75 e1                	jne    c01072e0 <_svfiprintf_r+0xc50>
c01072ff:	e9 71 f5 ff ff       	jmp    c0106875 <_svfiprintf_r+0x1e5>
c0107304:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c010730a:	89 44 24 08          	mov    %eax,0x8(%esp)
c010730e:	8b 45 0c             	mov    0xc(%ebp),%eax
c0107311:	89 44 24 04          	mov    %eax,0x4(%esp)
c0107315:	8b 45 08             	mov    0x8(%ebp),%eax
c0107318:	89 04 24             	mov    %eax,(%esp)
c010731b:	e8 80 f1 ff ff       	call   c01064a0 <__ssprint_r>
c0107320:	85 c0                	test   %eax,%eax
c0107322:	0f 85 70 fd ff ff    	jne    c0107098 <_svfiprintf_r+0xa08>
c0107328:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c010732e:	e9 e3 fc ff ff       	jmp    c0107016 <_svfiprintf_r+0x986>
c0107333:	8b 85 3c ff ff ff    	mov    -0xc4(%ebp),%eax
c0107339:	83 c1 30             	add    $0x30,%ecx
c010733c:	88 4d a7             	mov    %cl,-0x59(%ebp)
c010733f:	8d 5d a7             	lea    -0x59(%ebp),%ebx
c0107342:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c0107348:	e9 33 f5 ff ff       	jmp    c0106880 <_svfiprintf_r+0x1f0>
c010734d:	8b 45 14             	mov    0x14(%ebp),%eax
c0107350:	8b 9d 50 ff ff ff    	mov    -0xb0(%ebp),%ebx
c0107356:	8b 00                	mov    (%eax),%eax
c0107358:	89 18                	mov    %ebx,(%eax)
c010735a:	8b 45 14             	mov    0x14(%ebp),%eax
c010735d:	83 c0 04             	add    $0x4,%eax
c0107360:	89 45 14             	mov    %eax,0x14(%ebp)
c0107363:	e9 86 f3 ff ff       	jmp    c01066ee <_svfiprintf_r+0x5e>
c0107368:	0f b7 0b             	movzwl (%ebx),%ecx
c010736b:	83 c3 04             	add    $0x4,%ebx
c010736e:	89 5d 14             	mov    %ebx,0x14(%ebp)
c0107371:	e9 95 f8 ff ff       	jmp    c0106c0b <_svfiprintf_r+0x57b>
c0107376:	0f bf 08             	movswl (%eax),%ecx
c0107379:	83 c0 04             	add    $0x4,%eax
c010737c:	89 45 14             	mov    %eax,0x14(%ebp)
c010737f:	85 c9                	test   %ecx,%ecx
c0107381:	0f 89 0d f7 ff ff    	jns    c0106a94 <_svfiprintf_r+0x404>
c0107387:	f7 d9                	neg    %ecx
c0107389:	bf 2d 00 00 00       	mov    $0x2d,%edi
c010738e:	c6 85 71 ff ff ff 2d 	movb   $0x2d,-0x8f(%ebp)
c0107395:	ba 01 00 00 00       	mov    $0x1,%edx
c010739a:	e9 7a f4 ff ff       	jmp    c0106819 <_svfiprintf_r+0x189>
c010739f:	89 1c 24             	mov    %ebx,(%esp)
c01073a2:	e8 79 f0 ff ff       	call   c0106420 <strlen>
c01073a7:	8b 95 60 ff ff ff    	mov    -0xa0(%ebp),%edx
c01073ad:	0f b6 bd 71 ff ff ff 	movzbl -0x8f(%ebp),%edi
c01073b4:	c7 85 5c ff ff ff 00 	movl   $0x0,-0xa4(%ebp)
c01073bb:	00 00 00 
c01073be:	89 55 14             	mov    %edx,0x14(%ebp)
c01073c1:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c01073c7:	e9 b4 f4 ff ff       	jmp    c0106880 <_svfiprintf_r+0x1f0>
c01073cc:	8b 45 08             	mov    0x8(%ebp),%eax
c01073cf:	c7 44 24 04 40 00 00 	movl   $0x40,0x4(%esp)
c01073d6:	00 
c01073d7:	89 04 24             	mov    %eax,(%esp)
c01073da:	e8 b1 d9 ff ff       	call   c0104d90 <_malloc_r>
c01073df:	8b 75 0c             	mov    0xc(%ebp),%esi
c01073e2:	85 c0                	test   %eax,%eax
c01073e4:	89 06                	mov    %eax,(%esi)
c01073e6:	89 46 10             	mov    %eax,0x10(%esi)
c01073e9:	0f 84 a3 00 00 00    	je     c0107492 <_svfiprintf_r+0xe02>
c01073ef:	8b 45 0c             	mov    0xc(%ebp),%eax
c01073f2:	c7 40 14 40 00 00 00 	movl   $0x40,0x14(%eax)
c01073f9:	e9 b2 f2 ff ff       	jmp    c01066b0 <_svfiprintf_r+0x20>
c01073fe:	8b bd 5c ff ff ff    	mov    -0xa4(%ebp),%edi
c0107404:	b8 06 00 00 00       	mov    $0x6,%eax
c0107409:	89 55 14             	mov    %edx,0x14(%ebp)
c010740c:	83 ff 06             	cmp    $0x6,%edi
c010740f:	0f 46 c7             	cmovbe %edi,%eax
c0107412:	85 c0                	test   %eax,%eax
c0107414:	0f 49 d8             	cmovns %eax,%ebx
c0107417:	89 9d 60 ff ff ff    	mov    %ebx,-0xa0(%ebp)
c010741d:	bb 34 87 10 c0       	mov    $0xc0108734,%ebx
c0107422:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c0107428:	e9 61 f8 ff ff       	jmp    c0106c8e <_svfiprintf_r+0x5fe>
c010742d:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
c0107433:	0f b6 bd 71 ff ff ff 	movzbl -0x8f(%ebp),%edi
c010743a:	89 55 14             	mov    %edx,0x14(%ebp)
c010743d:	c7 85 5c ff ff ff 00 	movl   $0x0,-0xa4(%ebp)
c0107444:	00 00 00 
c0107447:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c010744d:	e9 2e f4 ff ff       	jmp    c0106880 <_svfiprintf_r+0x1f0>
c0107452:	89 da                	mov    %ebx,%edx
c0107454:	c7 85 5c ff ff ff 00 	movl   $0x0,-0xa4(%ebp)
c010745b:	00 00 00 
c010745e:	e9 29 f3 ff ff       	jmp    c010678c <_svfiprintf_r+0xfc>
c0107463:	8b 4d 14             	mov    0x14(%ebp),%ecx
c0107466:	89 da                	mov    %ebx,%edx
c0107468:	8b 45 14             	mov    0x14(%ebp),%eax
c010746b:	8b 09                	mov    (%ecx),%ecx
c010746d:	83 c0 04             	add    $0x4,%eax
c0107470:	89 45 14             	mov    %eax,0x14(%ebp)
c0107473:	85 c9                	test   %ecx,%ecx
c0107475:	89 8d 5c ff ff ff    	mov    %ecx,-0xa4(%ebp)
c010747b:	0f 89 26 f3 ff ff    	jns    c01067a7 <_svfiprintf_r+0x117>
c0107481:	c7 85 5c ff ff ff ff 	movl   $0xffffffff,-0xa4(%ebp)
c0107488:	ff ff ff 
c010748b:	89 d0                	mov    %edx,%eax
c010748d:	e9 f4 f2 ff ff       	jmp    c0106786 <_svfiprintf_r+0xf6>
c0107492:	8b 45 08             	mov    0x8(%ebp),%eax
c0107495:	c7 00 0c 00 00 00    	movl   $0xc,(%eax)
c010749b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c01074a0:	e9 06 fc ff ff       	jmp    c01070ab <_svfiprintf_r+0xa1b>
c01074a5:	66 90                	xchg   %ax,%ax
c01074a7:	66 90                	xchg   %ax,%ax
c01074a9:	66 90                	xchg   %ax,%ax
c01074ab:	66 90                	xchg   %ax,%ax
c01074ad:	66 90                	xchg   %ax,%ax
c01074af:	90                   	nop

c01074b0 <_calloc_r>:
c01074b0:	55                   	push   %ebp
c01074b1:	89 e5                	mov    %esp,%ebp
c01074b3:	53                   	push   %ebx
c01074b4:	83 ec 14             	sub    $0x14,%esp
c01074b7:	8b 45 10             	mov    0x10(%ebp),%eax
c01074ba:	0f af 45 0c          	imul   0xc(%ebp),%eax
c01074be:	89 44 24 04          	mov    %eax,0x4(%esp)
c01074c2:	8b 45 08             	mov    0x8(%ebp),%eax
c01074c5:	89 04 24             	mov    %eax,(%esp)
c01074c8:	e8 c3 d8 ff ff       	call   c0104d90 <_malloc_r>
c01074cd:	85 c0                	test   %eax,%eax
c01074cf:	89 c3                	mov    %eax,%ebx
c01074d1:	0f 84 91 00 00 00    	je     c0107568 <_calloc_r+0xb8>
c01074d7:	8b 40 fc             	mov    -0x4(%eax),%eax
c01074da:	83 e0 fc             	and    $0xfffffffc,%eax
c01074dd:	83 e8 04             	sub    $0x4,%eax
c01074e0:	83 f8 24             	cmp    $0x24,%eax
c01074e3:	77 63                	ja     c0107548 <_calloc_r+0x98>
c01074e5:	83 f8 13             	cmp    $0x13,%eax
c01074e8:	89 da                	mov    %ebx,%edx
c01074ea:	77 1c                	ja     c0107508 <_calloc_r+0x58>
c01074ec:	c7 02 00 00 00 00    	movl   $0x0,(%edx)
c01074f2:	89 d8                	mov    %ebx,%eax
c01074f4:	c7 42 04 00 00 00 00 	movl   $0x0,0x4(%edx)
c01074fb:	c7 42 08 00 00 00 00 	movl   $0x0,0x8(%edx)
c0107502:	83 c4 14             	add    $0x14,%esp
c0107505:	5b                   	pop    %ebx
c0107506:	5d                   	pop    %ebp
c0107507:	c3                   	ret    
c0107508:	83 f8 1b             	cmp    $0x1b,%eax
c010750b:	c7 03 00 00 00 00    	movl   $0x0,(%ebx)
c0107511:	8d 53 08             	lea    0x8(%ebx),%edx
c0107514:	c7 43 04 00 00 00 00 	movl   $0x0,0x4(%ebx)
c010751b:	76 cf                	jbe    c01074ec <_calloc_r+0x3c>
c010751d:	83 f8 24             	cmp    $0x24,%eax
c0107520:	c7 43 08 00 00 00 00 	movl   $0x0,0x8(%ebx)
c0107527:	8d 53 10             	lea    0x10(%ebx),%edx
c010752a:	c7 43 0c 00 00 00 00 	movl   $0x0,0xc(%ebx)
c0107531:	75 b9                	jne    c01074ec <_calloc_r+0x3c>
c0107533:	c7 43 10 00 00 00 00 	movl   $0x0,0x10(%ebx)
c010753a:	8d 53 18             	lea    0x18(%ebx),%edx
c010753d:	c7 43 14 00 00 00 00 	movl   $0x0,0x14(%ebx)
c0107544:	eb a6                	jmp    c01074ec <_calloc_r+0x3c>
c0107546:	66 90                	xchg   %ax,%ax
c0107548:	89 1c 24             	mov    %ebx,(%esp)
c010754b:	89 44 24 08          	mov    %eax,0x8(%esp)
c010754f:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c0107556:	00 
c0107557:	e8 5c a2 ff ff       	call   c01017b8 <memset>
c010755c:	83 c4 14             	add    $0x14,%esp
c010755f:	89 d8                	mov    %ebx,%eax
c0107561:	5b                   	pop    %ebx
c0107562:	5d                   	pop    %ebp
c0107563:	c3                   	ret    
c0107564:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0107568:	31 c0                	xor    %eax,%eax
c010756a:	eb 96                	jmp    c0107502 <_calloc_r+0x52>
c010756c:	66 90                	xchg   %ax,%ax
c010756e:	66 90                	xchg   %ax,%ax

c0107570 <_malloc_trim_r>:
c0107570:	55                   	push   %ebp
c0107571:	89 e5                	mov    %esp,%ebp
c0107573:	57                   	push   %edi
c0107574:	56                   	push   %esi
c0107575:	53                   	push   %ebx
c0107576:	83 ec 1c             	sub    $0x1c,%esp
c0107579:	8b 75 08             	mov    0x8(%ebp),%esi
c010757c:	89 34 24             	mov    %esi,(%esp)
c010757f:	e8 ec df ff ff       	call   c0105570 <__malloc_lock>
c0107584:	a1 28 a5 10 c0       	mov    0xc010a528,%eax
c0107589:	8b 58 04             	mov    0x4(%eax),%ebx
c010758c:	83 e3 fc             	and    $0xfffffffc,%ebx
c010758f:	89 d8                	mov    %ebx,%eax
c0107591:	2b 45 0c             	sub    0xc(%ebp),%eax
c0107594:	05 ef 0f 00 00       	add    $0xfef,%eax
c0107599:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c010759e:	8d b8 00 f0 ff ff    	lea    -0x1000(%eax),%edi
c01075a4:	81 ff ff 0f 00 00    	cmp    $0xfff,%edi
c01075aa:	7e 1c                	jle    c01075c8 <_malloc_trim_r+0x58>
c01075ac:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c01075b3:	00 
c01075b4:	89 34 24             	mov    %esi,(%esp)
c01075b7:	e8 b4 ed ff ff       	call   c0106370 <_sbrk_r>
c01075bc:	8b 15 28 a5 10 c0    	mov    0xc010a528,%edx
c01075c2:	01 da                	add    %ebx,%edx
c01075c4:	39 d0                	cmp    %edx,%eax
c01075c6:	74 18                	je     c01075e0 <_malloc_trim_r+0x70>
c01075c8:	89 34 24             	mov    %esi,(%esp)
c01075cb:	e8 b0 df ff ff       	call   c0105580 <__malloc_unlock>
c01075d0:	83 c4 1c             	add    $0x1c,%esp
c01075d3:	31 c0                	xor    %eax,%eax
c01075d5:	5b                   	pop    %ebx
c01075d6:	5e                   	pop    %esi
c01075d7:	5f                   	pop    %edi
c01075d8:	5d                   	pop    %ebp
c01075d9:	c3                   	ret    
c01075da:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c01075e0:	89 f8                	mov    %edi,%eax
c01075e2:	f7 d8                	neg    %eax
c01075e4:	89 44 24 04          	mov    %eax,0x4(%esp)
c01075e8:	89 34 24             	mov    %esi,(%esp)
c01075eb:	e8 80 ed ff ff       	call   c0106370 <_sbrk_r>
c01075f0:	83 f8 ff             	cmp    $0xffffffff,%eax
c01075f3:	74 2b                	je     c0107620 <_malloc_trim_r+0xb0>
c01075f5:	a1 28 a5 10 c0       	mov    0xc010a528,%eax
c01075fa:	29 fb                	sub    %edi,%ebx
c01075fc:	83 cb 01             	or     $0x1,%ebx
c01075ff:	29 3d 20 20 16 c0    	sub    %edi,0xc0162020
c0107605:	89 58 04             	mov    %ebx,0x4(%eax)
c0107608:	89 34 24             	mov    %esi,(%esp)
c010760b:	e8 70 df ff ff       	call   c0105580 <__malloc_unlock>
c0107610:	83 c4 1c             	add    $0x1c,%esp
c0107613:	b8 01 00 00 00       	mov    $0x1,%eax
c0107618:	5b                   	pop    %ebx
c0107619:	5e                   	pop    %esi
c010761a:	5f                   	pop    %edi
c010761b:	5d                   	pop    %ebp
c010761c:	c3                   	ret    
c010761d:	8d 76 00             	lea    0x0(%esi),%esi
c0107620:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c0107627:	00 
c0107628:	89 34 24             	mov    %esi,(%esp)
c010762b:	e8 40 ed ff ff       	call   c0106370 <_sbrk_r>
c0107630:	8b 15 28 a5 10 c0    	mov    0xc010a528,%edx
c0107636:	89 c1                	mov    %eax,%ecx
c0107638:	29 d1                	sub    %edx,%ecx
c010763a:	83 f9 0f             	cmp    $0xf,%ecx
c010763d:	7e 89                	jle    c01075c8 <_malloc_trim_r+0x58>
c010763f:	2b 05 00 a5 10 c0    	sub    0xc010a500,%eax
c0107645:	83 c9 01             	or     $0x1,%ecx
c0107648:	89 4a 04             	mov    %ecx,0x4(%edx)
c010764b:	a3 20 20 16 c0       	mov    %eax,0xc0162020
c0107650:	e9 73 ff ff ff       	jmp    c01075c8 <_malloc_trim_r+0x58>
c0107655:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0107659:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0107660 <_free_r>:
c0107660:	55                   	push   %ebp
c0107661:	89 e5                	mov    %esp,%ebp
c0107663:	57                   	push   %edi
c0107664:	56                   	push   %esi
c0107665:	53                   	push   %ebx
c0107666:	83 ec 1c             	sub    $0x1c,%esp
c0107669:	8b 75 0c             	mov    0xc(%ebp),%esi
c010766c:	8b 45 08             	mov    0x8(%ebp),%eax
c010766f:	85 f6                	test   %esi,%esi
c0107671:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0107674:	0f 84 fe 00 00 00    	je     c0107778 <_free_r+0x118>
c010767a:	89 04 24             	mov    %eax,(%esp)
c010767d:	e8 ee de ff ff       	call   c0105570 <__malloc_lock>
c0107682:	8b 7e fc             	mov    -0x4(%esi),%edi
c0107685:	8d 56 f8             	lea    -0x8(%esi),%edx
c0107688:	89 f8                	mov    %edi,%eax
c010768a:	83 e0 fe             	and    $0xfffffffe,%eax
c010768d:	8d 0c 02             	lea    (%edx,%eax,1),%ecx
c0107690:	8b 59 04             	mov    0x4(%ecx),%ebx
c0107693:	83 e3 fc             	and    $0xfffffffc,%ebx
c0107696:	39 0d 28 a5 10 c0    	cmp    %ecx,0xc010a528
c010769c:	0f 84 0e 01 00 00    	je     c01077b0 <_free_r+0x150>
c01076a2:	83 e7 01             	and    $0x1,%edi
c01076a5:	89 59 04             	mov    %ebx,0x4(%ecx)
c01076a8:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%ebp)
c01076af:	75 1f                	jne    c01076d0 <_free_r+0x70>
c01076b1:	8b 76 f8             	mov    -0x8(%esi),%esi
c01076b4:	29 f2                	sub    %esi,%edx
c01076b6:	01 f0                	add    %esi,%eax
c01076b8:	8b 72 08             	mov    0x8(%edx),%esi
c01076bb:	81 fe 28 a5 10 c0    	cmp    $0xc010a528,%esi
c01076c1:	0f 84 39 01 00 00    	je     c0107800 <_free_r+0x1a0>
c01076c7:	8b 7a 0c             	mov    0xc(%edx),%edi
c01076ca:	89 7e 0c             	mov    %edi,0xc(%esi)
c01076cd:	89 77 08             	mov    %esi,0x8(%edi)
c01076d0:	f6 44 19 04 01       	testb  $0x1,0x4(%ecx,%ebx,1)
c01076d5:	75 21                	jne    c01076f8 <_free_r+0x98>
c01076d7:	8b 75 e0             	mov    -0x20(%ebp),%esi
c01076da:	01 d8                	add    %ebx,%eax
c01076dc:	8b 59 08             	mov    0x8(%ecx),%ebx
c01076df:	85 f6                	test   %esi,%esi
c01076e1:	75 0c                	jne    c01076ef <_free_r+0x8f>
c01076e3:	81 fb 28 a5 10 c0    	cmp    $0xc010a528,%ebx
c01076e9:	0f 84 21 01 00 00    	je     c0107810 <_free_r+0x1b0>
c01076ef:	8b 49 0c             	mov    0xc(%ecx),%ecx
c01076f2:	89 4b 0c             	mov    %ecx,0xc(%ebx)
c01076f5:	89 59 08             	mov    %ebx,0x8(%ecx)
c01076f8:	89 c1                	mov    %eax,%ecx
c01076fa:	83 c9 01             	or     $0x1,%ecx
c01076fd:	89 4a 04             	mov    %ecx,0x4(%edx)
c0107700:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0107703:	89 04 02             	mov    %eax,(%edx,%eax,1)
c0107706:	85 c9                	test   %ecx,%ecx
c0107708:	75 56                	jne    c0107760 <_free_r+0x100>
c010770a:	3d ff 01 00 00       	cmp    $0x1ff,%eax
c010770f:	76 6f                	jbe    c0107780 <_free_r+0x120>
c0107711:	89 c1                	mov    %eax,%ecx
c0107713:	c1 e9 09             	shr    $0x9,%ecx
c0107716:	83 f9 04             	cmp    $0x4,%ecx
c0107719:	0f 87 21 01 00 00    	ja     c0107840 <_free_r+0x1e0>
c010771f:	89 c1                	mov    %eax,%ecx
c0107721:	c1 e9 06             	shr    $0x6,%ecx
c0107724:	83 c1 38             	add    $0x38,%ecx
c0107727:	8d 1c 09             	lea    (%ecx,%ecx,1),%ebx
c010772a:	8d 34 9d 20 a5 10 c0 	lea    -0x3fef5ae0(,%ebx,4),%esi
c0107731:	8b 5e 08             	mov    0x8(%esi),%ebx
c0107734:	39 f3                	cmp    %esi,%ebx
c0107736:	0f 84 14 01 00 00    	je     c0107850 <_free_r+0x1f0>
c010773c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0107740:	8b 4b 04             	mov    0x4(%ebx),%ecx
c0107743:	83 e1 fc             	and    $0xfffffffc,%ecx
c0107746:	39 c8                	cmp    %ecx,%eax
c0107748:	73 07                	jae    c0107751 <_free_r+0xf1>
c010774a:	8b 5b 08             	mov    0x8(%ebx),%ebx
c010774d:	39 de                	cmp    %ebx,%esi
c010774f:	75 ef                	jne    c0107740 <_free_r+0xe0>
c0107751:	8b 43 0c             	mov    0xc(%ebx),%eax
c0107754:	89 42 0c             	mov    %eax,0xc(%edx)
c0107757:	89 5a 08             	mov    %ebx,0x8(%edx)
c010775a:	89 50 08             	mov    %edx,0x8(%eax)
c010775d:	89 53 0c             	mov    %edx,0xc(%ebx)
c0107760:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0107763:	89 45 08             	mov    %eax,0x8(%ebp)
c0107766:	83 c4 1c             	add    $0x1c,%esp
c0107769:	5b                   	pop    %ebx
c010776a:	5e                   	pop    %esi
c010776b:	5f                   	pop    %edi
c010776c:	5d                   	pop    %ebp
c010776d:	e9 0e de ff ff       	jmp    c0105580 <__malloc_unlock>
c0107772:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0107778:	83 c4 1c             	add    $0x1c,%esp
c010777b:	5b                   	pop    %ebx
c010777c:	5e                   	pop    %esi
c010777d:	5f                   	pop    %edi
c010777e:	5d                   	pop    %ebp
c010777f:	c3                   	ret    
c0107780:	c1 e8 03             	shr    $0x3,%eax
c0107783:	bb 01 00 00 00       	mov    $0x1,%ebx
c0107788:	89 c1                	mov    %eax,%ecx
c010778a:	c1 f9 02             	sar    $0x2,%ecx
c010778d:	8d 04 c5 20 a5 10 c0 	lea    -0x3fef5ae0(,%eax,8),%eax
c0107794:	d3 e3                	shl    %cl,%ebx
c0107796:	8b 48 08             	mov    0x8(%eax),%ecx
c0107799:	09 1d 24 a5 10 c0    	or     %ebx,0xc010a524
c010779f:	89 42 0c             	mov    %eax,0xc(%edx)
c01077a2:	89 4a 08             	mov    %ecx,0x8(%edx)
c01077a5:	89 50 08             	mov    %edx,0x8(%eax)
c01077a8:	89 51 0c             	mov    %edx,0xc(%ecx)
c01077ab:	eb b3                	jmp    c0107760 <_free_r+0x100>
c01077ad:	8d 76 00             	lea    0x0(%esi),%esi
c01077b0:	01 d8                	add    %ebx,%eax
c01077b2:	83 e7 01             	and    $0x1,%edi
c01077b5:	75 13                	jne    c01077ca <_free_r+0x16a>
c01077b7:	8b 4e f8             	mov    -0x8(%esi),%ecx
c01077ba:	29 ca                	sub    %ecx,%edx
c01077bc:	01 c8                	add    %ecx,%eax
c01077be:	8b 5a 08             	mov    0x8(%edx),%ebx
c01077c1:	8b 4a 0c             	mov    0xc(%edx),%ecx
c01077c4:	89 4b 0c             	mov    %ecx,0xc(%ebx)
c01077c7:	89 59 08             	mov    %ebx,0x8(%ecx)
c01077ca:	89 c1                	mov    %eax,%ecx
c01077cc:	83 c9 01             	or     $0x1,%ecx
c01077cf:	3b 05 04 a5 10 c0    	cmp    0xc010a504,%eax
c01077d5:	89 4a 04             	mov    %ecx,0x4(%edx)
c01077d8:	89 15 28 a5 10 c0    	mov    %edx,0xc010a528
c01077de:	72 80                	jb     c0107760 <_free_r+0x100>
c01077e0:	a1 50 20 16 c0       	mov    0xc0162050,%eax
c01077e5:	89 44 24 04          	mov    %eax,0x4(%esp)
c01077e9:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c01077ec:	89 04 24             	mov    %eax,(%esp)
c01077ef:	e8 7c fd ff ff       	call   c0107570 <_malloc_trim_r>
c01077f4:	e9 67 ff ff ff       	jmp    c0107760 <_free_r+0x100>
c01077f9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0107800:	c7 45 e0 01 00 00 00 	movl   $0x1,-0x20(%ebp)
c0107807:	e9 c4 fe ff ff       	jmp    c01076d0 <_free_r+0x70>
c010780c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0107810:	89 c1                	mov    %eax,%ecx
c0107812:	83 c9 01             	or     $0x1,%ecx
c0107815:	89 15 34 a5 10 c0    	mov    %edx,0xc010a534
c010781b:	89 15 30 a5 10 c0    	mov    %edx,0xc010a530
c0107821:	c7 42 0c 28 a5 10 c0 	movl   $0xc010a528,0xc(%edx)
c0107828:	c7 42 08 28 a5 10 c0 	movl   $0xc010a528,0x8(%edx)
c010782f:	89 4a 04             	mov    %ecx,0x4(%edx)
c0107832:	89 04 02             	mov    %eax,(%edx,%eax,1)
c0107835:	e9 26 ff ff ff       	jmp    c0107760 <_free_r+0x100>
c010783a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0107840:	83 f9 14             	cmp    $0x14,%ecx
c0107843:	77 23                	ja     c0107868 <_free_r+0x208>
c0107845:	83 c1 5b             	add    $0x5b,%ecx
c0107848:	8d 1c 09             	lea    (%ecx,%ecx,1),%ebx
c010784b:	e9 da fe ff ff       	jmp    c010772a <_free_r+0xca>
c0107850:	c1 f9 02             	sar    $0x2,%ecx
c0107853:	b8 01 00 00 00       	mov    $0x1,%eax
c0107858:	d3 e0                	shl    %cl,%eax
c010785a:	09 05 24 a5 10 c0    	or     %eax,0xc010a524
c0107860:	89 d8                	mov    %ebx,%eax
c0107862:	e9 ed fe ff ff       	jmp    c0107754 <_free_r+0xf4>
c0107867:	90                   	nop
c0107868:	83 f9 54             	cmp    $0x54,%ecx
c010786b:	77 10                	ja     c010787d <_free_r+0x21d>
c010786d:	89 c1                	mov    %eax,%ecx
c010786f:	c1 e9 0c             	shr    $0xc,%ecx
c0107872:	83 c1 6e             	add    $0x6e,%ecx
c0107875:	8d 1c 09             	lea    (%ecx,%ecx,1),%ebx
c0107878:	e9 ad fe ff ff       	jmp    c010772a <_free_r+0xca>
c010787d:	81 f9 54 01 00 00    	cmp    $0x154,%ecx
c0107883:	77 10                	ja     c0107895 <_free_r+0x235>
c0107885:	89 c1                	mov    %eax,%ecx
c0107887:	c1 e9 0f             	shr    $0xf,%ecx
c010788a:	83 c1 77             	add    $0x77,%ecx
c010788d:	8d 1c 09             	lea    (%ecx,%ecx,1),%ebx
c0107890:	e9 95 fe ff ff       	jmp    c010772a <_free_r+0xca>
c0107895:	81 f9 54 05 00 00    	cmp    $0x554,%ecx
c010789b:	77 10                	ja     c01078ad <_free_r+0x24d>
c010789d:	89 c1                	mov    %eax,%ecx
c010789f:	c1 e9 12             	shr    $0x12,%ecx
c01078a2:	83 c1 7c             	add    $0x7c,%ecx
c01078a5:	8d 1c 09             	lea    (%ecx,%ecx,1),%ebx
c01078a8:	e9 7d fe ff ff       	jmp    c010772a <_free_r+0xca>
c01078ad:	bb fc 00 00 00       	mov    $0xfc,%ebx
c01078b2:	b9 7e 00 00 00       	mov    $0x7e,%ecx
c01078b7:	e9 6e fe ff ff       	jmp    c010772a <_free_r+0xca>
c01078bc:	66 90                	xchg   %ax,%ax
c01078be:	66 90                	xchg   %ax,%ax

c01078c0 <memmove>:
c01078c0:	55                   	push   %ebp
c01078c1:	89 e5                	mov    %esp,%ebp
c01078c3:	56                   	push   %esi
c01078c4:	57                   	push   %edi
c01078c5:	53                   	push   %ebx
c01078c6:	8b 7d 08             	mov    0x8(%ebp),%edi
c01078c9:	8b 4d 10             	mov    0x10(%ebp),%ecx
c01078cc:	8b 75 0c             	mov    0xc(%ebp),%esi
c01078cf:	fc                   	cld    
c01078d0:	39 fe                	cmp    %edi,%esi
c01078d2:	73 43                	jae    c0107917 <memmove+0x57>
c01078d4:	8d 5c 31 ff          	lea    -0x1(%ecx,%esi,1),%ebx
c01078d8:	39 df                	cmp    %ebx,%edi
c01078da:	77 3b                	ja     c0107917 <memmove+0x57>
c01078dc:	01 ce                	add    %ecx,%esi
c01078de:	01 cf                	add    %ecx,%edi
c01078e0:	fd                   	std    
c01078e1:	83 f9 08             	cmp    $0x8,%ecx
c01078e4:	76 2b                	jbe    c0107911 <memmove+0x51>
c01078e6:	89 fa                	mov    %edi,%edx
c01078e8:	89 cb                	mov    %ecx,%ebx
c01078ea:	83 e2 03             	and    $0x3,%edx
c01078ed:	74 0c                	je     c01078fb <memmove+0x3b>
c01078ef:	89 d1                	mov    %edx,%ecx
c01078f1:	4e                   	dec    %esi
c01078f2:	4f                   	dec    %edi
c01078f3:	29 cb                	sub    %ecx,%ebx
c01078f5:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
c01078f7:	89 d9                	mov    %ebx,%ecx
c01078f9:	46                   	inc    %esi
c01078fa:	47                   	inc    %edi
c01078fb:	c1 e9 02             	shr    $0x2,%ecx
c01078fe:	83 ee 04             	sub    $0x4,%esi
c0107901:	83 ef 04             	sub    $0x4,%edi
c0107904:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
c0107906:	83 c6 04             	add    $0x4,%esi
c0107909:	83 c7 04             	add    $0x4,%edi
c010790c:	89 d9                	mov    %ebx,%ecx
c010790e:	83 e1 03             	and    $0x3,%ecx
c0107911:	4e                   	dec    %esi
c0107912:	4f                   	dec    %edi
c0107913:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
c0107915:	eb 2a                	jmp    c0107941 <memmove+0x81>
c0107917:	83 f9 08             	cmp    $0x8,%ecx
c010791a:	76 23                	jbe    c010793f <memmove+0x7f>
c010791c:	89 fa                	mov    %edi,%edx
c010791e:	89 cb                	mov    %ecx,%ebx
c0107920:	83 e2 03             	and    $0x3,%edx
c0107923:	74 10                	je     c0107935 <memmove+0x75>
c0107925:	b9 04 00 00 00       	mov    $0x4,%ecx
c010792a:	29 d1                	sub    %edx,%ecx
c010792c:	83 e1 03             	and    $0x3,%ecx
c010792f:	29 cb                	sub    %ecx,%ebx
c0107931:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
c0107933:	89 d9                	mov    %ebx,%ecx
c0107935:	c1 e9 02             	shr    $0x2,%ecx
c0107938:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
c010793a:	89 d9                	mov    %ebx,%ecx
c010793c:	83 e1 03             	and    $0x3,%ecx
c010793f:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
c0107941:	8b 45 08             	mov    0x8(%ebp),%eax
c0107944:	fc                   	cld    
c0107945:	8d 65 f4             	lea    -0xc(%ebp),%esp
c0107948:	5b                   	pop    %ebx
c0107949:	5f                   	pop    %edi
c010794a:	5e                   	pop    %esi
c010794b:	c9                   	leave  
c010794c:	c3                   	ret    
c010794d:	66 90                	xchg   %ax,%ax
c010794f:	90                   	nop

c0107950 <_realloc_r>:
c0107950:	55                   	push   %ebp
c0107951:	89 e5                	mov    %esp,%ebp
c0107953:	57                   	push   %edi
c0107954:	56                   	push   %esi
c0107955:	53                   	push   %ebx
c0107956:	83 ec 3c             	sub    $0x3c,%esp
c0107959:	8b 45 08             	mov    0x8(%ebp),%eax
c010795c:	8b 7d 0c             	mov    0xc(%ebp),%edi
c010795f:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0107962:	8b 45 10             	mov    0x10(%ebp),%eax
c0107965:	85 ff                	test   %edi,%edi
c0107967:	89 45 e0             	mov    %eax,-0x20(%ebp)
c010796a:	0f 84 50 02 00 00    	je     c0107bc0 <_realloc_r+0x270>
c0107970:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0107973:	8d 77 f8             	lea    -0x8(%edi),%esi
c0107976:	89 04 24             	mov    %eax,(%esp)
c0107979:	e8 f2 db ff ff       	call   c0105570 <__malloc_lock>
c010797e:	8b 47 fc             	mov    -0x4(%edi),%eax
c0107981:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0107984:	89 c3                	mov    %eax,%ebx
c0107986:	8d 51 0b             	lea    0xb(%ecx),%edx
c0107989:	83 e3 fc             	and    $0xfffffffc,%ebx
c010798c:	83 fa 16             	cmp    $0x16,%edx
c010798f:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c0107992:	0f 87 00 01 00 00    	ja     c0107a98 <_realloc_r+0x148>
c0107998:	31 d2                	xor    %edx,%edx
c010799a:	c7 45 d8 10 00 00 00 	movl   $0x10,-0x28(%ebp)
c01079a1:	c7 45 dc 10 00 00 00 	movl   $0x10,-0x24(%ebp)
c01079a8:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c01079ab:	39 4d dc             	cmp    %ecx,-0x24(%ebp)
c01079ae:	0f 82 1c 02 00 00    	jb     c0107bd0 <_realloc_r+0x280>
c01079b4:	84 d2                	test   %dl,%dl
c01079b6:	0f 85 14 02 00 00    	jne    c0107bd0 <_realloc_r+0x280>
c01079bc:	3b 5d d8             	cmp    -0x28(%ebp),%ebx
c01079bf:	0f 8d eb 00 00 00    	jge    c0107ab0 <_realloc_r+0x160>
c01079c5:	8b 0d 28 a5 10 c0    	mov    0xc010a528,%ecx
c01079cb:	8d 14 1e             	lea    (%esi,%ebx,1),%edx
c01079ce:	39 d1                	cmp    %edx,%ecx
c01079d0:	89 4d cc             	mov    %ecx,-0x34(%ebp)
c01079d3:	0f 84 6f 02 00 00    	je     c0107c48 <_realloc_r+0x2f8>
c01079d9:	8b 4a 04             	mov    0x4(%edx),%ecx
c01079dc:	89 c8                	mov    %ecx,%eax
c01079de:	83 e0 fe             	and    $0xfffffffe,%eax
c01079e1:	f6 44 02 04 01       	testb  $0x1,0x4(%edx,%eax,1)
c01079e6:	0f 84 f4 00 00 00    	je     c0107ae0 <_realloc_r+0x190>
c01079ec:	c7 45 d0 00 00 00 00 	movl   $0x0,-0x30(%ebp)
c01079f3:	31 d2                	xor    %edx,%edx
c01079f5:	f6 45 d4 01          	testb  $0x1,-0x2c(%ebp)
c01079f9:	0f 85 39 01 00 00    	jne    c0107b38 <_realloc_r+0x1e8>
c01079ff:	89 f1                	mov    %esi,%ecx
c0107a01:	2b 4f f8             	sub    -0x8(%edi),%ecx
c0107a04:	8b 41 04             	mov    0x4(%ecx),%eax
c0107a07:	83 e0 fc             	and    $0xfffffffc,%eax
c0107a0a:	85 d2                	test   %edx,%edx
c0107a0c:	0f 84 f6 02 00 00    	je     c0107d08 <_realloc_r+0x3b8>
c0107a12:	3b 55 cc             	cmp    -0x34(%ebp),%edx
c0107a15:	0f 84 f5 02 00 00    	je     c0107d10 <_realloc_r+0x3c0>
c0107a1b:	89 55 d4             	mov    %edx,-0x2c(%ebp)
c0107a1e:	8b 55 d0             	mov    -0x30(%ebp),%edx
c0107a21:	01 d8                	add    %ebx,%eax
c0107a23:	01 c2                	add    %eax,%edx
c0107a25:	3b 55 d8             	cmp    -0x28(%ebp),%edx
c0107a28:	89 55 d0             	mov    %edx,-0x30(%ebp)
c0107a2b:	8b 55 d4             	mov    -0x2c(%ebp),%edx
c0107a2e:	0f 8c ac 01 00 00    	jl     c0107be0 <_realloc_r+0x290>
c0107a34:	8b 42 0c             	mov    0xc(%edx),%eax
c0107a37:	83 eb 04             	sub    $0x4,%ebx
c0107a3a:	8b 52 08             	mov    0x8(%edx),%edx
c0107a3d:	83 fb 24             	cmp    $0x24,%ebx
c0107a40:	8d 71 08             	lea    0x8(%ecx),%esi
c0107a43:	89 42 0c             	mov    %eax,0xc(%edx)
c0107a46:	89 50 08             	mov    %edx,0x8(%eax)
c0107a49:	8b 41 0c             	mov    0xc(%ecx),%eax
c0107a4c:	8b 51 08             	mov    0x8(%ecx),%edx
c0107a4f:	89 42 0c             	mov    %eax,0xc(%edx)
c0107a52:	89 50 08             	mov    %edx,0x8(%eax)
c0107a55:	0f 87 85 03 00 00    	ja     c0107de0 <_realloc_r+0x490>
c0107a5b:	83 fb 13             	cmp    $0x13,%ebx
c0107a5e:	89 f0                	mov    %esi,%eax
c0107a60:	76 1a                	jbe    c0107a7c <_realloc_r+0x12c>
c0107a62:	8b 07                	mov    (%edi),%eax
c0107a64:	83 fb 1b             	cmp    $0x1b,%ebx
c0107a67:	89 41 08             	mov    %eax,0x8(%ecx)
c0107a6a:	8b 47 04             	mov    0x4(%edi),%eax
c0107a6d:	89 41 0c             	mov    %eax,0xc(%ecx)
c0107a70:	0f 87 8f 03 00 00    	ja     c0107e05 <_realloc_r+0x4b5>
c0107a76:	8d 41 10             	lea    0x10(%ecx),%eax
c0107a79:	83 c7 08             	add    $0x8,%edi
c0107a7c:	8b 17                	mov    (%edi),%edx
c0107a7e:	8b 5d d0             	mov    -0x30(%ebp),%ebx
c0107a81:	89 10                	mov    %edx,(%eax)
c0107a83:	8b 57 04             	mov    0x4(%edi),%edx
c0107a86:	89 50 04             	mov    %edx,0x4(%eax)
c0107a89:	8b 57 08             	mov    0x8(%edi),%edx
c0107a8c:	89 f7                	mov    %esi,%edi
c0107a8e:	89 ce                	mov    %ecx,%esi
c0107a90:	89 50 08             	mov    %edx,0x8(%eax)
c0107a93:	8b 41 04             	mov    0x4(%ecx),%eax
c0107a96:	eb 1b                	jmp    c0107ab3 <_realloc_r+0x163>
c0107a98:	83 e2 f8             	and    $0xfffffff8,%edx
c0107a9b:	89 55 dc             	mov    %edx,-0x24(%ebp)
c0107a9e:	89 55 d8             	mov    %edx,-0x28(%ebp)
c0107aa1:	c1 ea 1f             	shr    $0x1f,%edx
c0107aa4:	e9 ff fe ff ff       	jmp    c01079a8 <_realloc_r+0x58>
c0107aa9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0107ab0:	8b 45 d4             	mov    -0x2c(%ebp),%eax
c0107ab3:	89 da                	mov    %ebx,%edx
c0107ab5:	2b 55 dc             	sub    -0x24(%ebp),%edx
c0107ab8:	83 fa 0f             	cmp    $0xf,%edx
c0107abb:	77 4b                	ja     c0107b08 <_realloc_r+0x1b8>
c0107abd:	83 e0 01             	and    $0x1,%eax
c0107ac0:	09 d8                	or     %ebx,%eax
c0107ac2:	89 46 04             	mov    %eax,0x4(%esi)
c0107ac5:	83 4c 1e 04 01       	orl    $0x1,0x4(%esi,%ebx,1)
c0107aca:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0107acd:	89 04 24             	mov    %eax,(%esp)
c0107ad0:	e8 ab da ff ff       	call   c0105580 <__malloc_unlock>
c0107ad5:	89 f8                	mov    %edi,%eax
c0107ad7:	83 c4 3c             	add    $0x3c,%esp
c0107ada:	5b                   	pop    %ebx
c0107adb:	5e                   	pop    %esi
c0107adc:	5f                   	pop    %edi
c0107add:	5d                   	pop    %ebp
c0107ade:	c3                   	ret    
c0107adf:	90                   	nop
c0107ae0:	83 e1 fc             	and    $0xfffffffc,%ecx
c0107ae3:	89 4d d0             	mov    %ecx,-0x30(%ebp)
c0107ae6:	01 d9                	add    %ebx,%ecx
c0107ae8:	3b 4d d8             	cmp    -0x28(%ebp),%ecx
c0107aeb:	0f 8c 04 ff ff ff    	jl     c01079f5 <_realloc_r+0xa5>
c0107af1:	8b 5a 0c             	mov    0xc(%edx),%ebx
c0107af4:	8b 52 08             	mov    0x8(%edx),%edx
c0107af7:	8b 45 d4             	mov    -0x2c(%ebp),%eax
c0107afa:	89 5a 0c             	mov    %ebx,0xc(%edx)
c0107afd:	89 53 08             	mov    %edx,0x8(%ebx)
c0107b00:	89 cb                	mov    %ecx,%ebx
c0107b02:	eb af                	jmp    c0107ab3 <_realloc_r+0x163>
c0107b04:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0107b08:	8b 5d dc             	mov    -0x24(%ebp),%ebx
c0107b0b:	83 e0 01             	and    $0x1,%eax
c0107b0e:	09 d8                	or     %ebx,%eax
c0107b10:	89 46 04             	mov    %eax,0x4(%esi)
c0107b13:	89 d0                	mov    %edx,%eax
c0107b15:	8d 0c 1e             	lea    (%esi,%ebx,1),%ecx
c0107b18:	83 c8 01             	or     $0x1,%eax
c0107b1b:	89 41 04             	mov    %eax,0x4(%ecx)
c0107b1e:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0107b21:	83 4c 11 04 01       	orl    $0x1,0x4(%ecx,%edx,1)
c0107b26:	83 c1 08             	add    $0x8,%ecx
c0107b29:	89 4c 24 04          	mov    %ecx,0x4(%esp)
c0107b2d:	89 04 24             	mov    %eax,(%esp)
c0107b30:	e8 2b fb ff ff       	call   c0107660 <_free_r>
c0107b35:	eb 93                	jmp    c0107aca <_realloc_r+0x17a>
c0107b37:	90                   	nop
c0107b38:	8b 45 e0             	mov    -0x20(%ebp),%eax
c0107b3b:	89 44 24 04          	mov    %eax,0x4(%esp)
c0107b3f:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0107b42:	89 04 24             	mov    %eax,(%esp)
c0107b45:	e8 46 d2 ff ff       	call   c0104d90 <_malloc_r>
c0107b4a:	85 c0                	test   %eax,%eax
c0107b4c:	89 c1                	mov    %eax,%ecx
c0107b4e:	0f 84 65 03 00 00    	je     c0107eb9 <_realloc_r+0x569>
c0107b54:	8b 47 fc             	mov    -0x4(%edi),%eax
c0107b57:	8d 51 f8             	lea    -0x8(%ecx),%edx
c0107b5a:	89 55 e0             	mov    %edx,-0x20(%ebp)
c0107b5d:	89 c2                	mov    %eax,%edx
c0107b5f:	83 e2 fe             	and    $0xfffffffe,%edx
c0107b62:	01 f2                	add    %esi,%edx
c0107b64:	39 55 e0             	cmp    %edx,-0x20(%ebp)
c0107b67:	0f 84 63 02 00 00    	je     c0107dd0 <_realloc_r+0x480>
c0107b6d:	83 eb 04             	sub    $0x4,%ebx
c0107b70:	83 fb 24             	cmp    $0x24,%ebx
c0107b73:	0f 87 6f 01 00 00    	ja     c0107ce8 <_realloc_r+0x398>
c0107b79:	83 fb 13             	cmp    $0x13,%ebx
c0107b7c:	0f 87 ee 00 00 00    	ja     c0107c70 <_realloc_r+0x320>
c0107b82:	89 c8                	mov    %ecx,%eax
c0107b84:	89 fa                	mov    %edi,%edx
c0107b86:	8b 1a                	mov    (%edx),%ebx
c0107b88:	89 18                	mov    %ebx,(%eax)
c0107b8a:	8b 5a 04             	mov    0x4(%edx),%ebx
c0107b8d:	89 58 04             	mov    %ebx,0x4(%eax)
c0107b90:	8b 52 08             	mov    0x8(%edx),%edx
c0107b93:	89 50 08             	mov    %edx,0x8(%eax)
c0107b96:	8b 75 e4             	mov    -0x1c(%ebp),%esi
c0107b99:	89 7c 24 04          	mov    %edi,0x4(%esp)
c0107b9d:	89 4d e0             	mov    %ecx,-0x20(%ebp)
c0107ba0:	89 34 24             	mov    %esi,(%esp)
c0107ba3:	e8 b8 fa ff ff       	call   c0107660 <_free_r>
c0107ba8:	89 34 24             	mov    %esi,(%esp)
c0107bab:	e8 d0 d9 ff ff       	call   c0105580 <__malloc_unlock>
c0107bb0:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0107bb3:	83 c4 3c             	add    $0x3c,%esp
c0107bb6:	5b                   	pop    %ebx
c0107bb7:	5e                   	pop    %esi
c0107bb8:	5f                   	pop    %edi
c0107bb9:	89 c8                	mov    %ecx,%eax
c0107bbb:	5d                   	pop    %ebp
c0107bbc:	c3                   	ret    
c0107bbd:	8d 76 00             	lea    0x0(%esi),%esi
c0107bc0:	89 45 0c             	mov    %eax,0xc(%ebp)
c0107bc3:	83 c4 3c             	add    $0x3c,%esp
c0107bc6:	5b                   	pop    %ebx
c0107bc7:	5e                   	pop    %esi
c0107bc8:	5f                   	pop    %edi
c0107bc9:	5d                   	pop    %ebp
c0107bca:	e9 c1 d1 ff ff       	jmp    c0104d90 <_malloc_r>
c0107bcf:	90                   	nop
c0107bd0:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0107bd3:	c7 00 0c 00 00 00    	movl   $0xc,(%eax)
c0107bd9:	31 c0                	xor    %eax,%eax
c0107bdb:	e9 f7 fe ff ff       	jmp    c0107ad7 <_realloc_r+0x187>
c0107be0:	89 c2                	mov    %eax,%edx
c0107be2:	3b 55 d8             	cmp    -0x28(%ebp),%edx
c0107be5:	0f 8c 4d ff ff ff    	jl     c0107b38 <_realloc_r+0x1e8>
c0107beb:	8b 71 08             	mov    0x8(%ecx),%esi
c0107bee:	83 eb 04             	sub    $0x4,%ebx
c0107bf1:	8b 41 0c             	mov    0xc(%ecx),%eax
c0107bf4:	83 fb 24             	cmp    $0x24,%ebx
c0107bf7:	89 46 0c             	mov    %eax,0xc(%esi)
c0107bfa:	89 70 08             	mov    %esi,0x8(%eax)
c0107bfd:	8d 71 08             	lea    0x8(%ecx),%esi
c0107c00:	0f 87 88 00 00 00    	ja     c0107c8e <_realloc_r+0x33e>
c0107c06:	83 fb 13             	cmp    $0x13,%ebx
c0107c09:	89 f0                	mov    %esi,%eax
c0107c0b:	76 1a                	jbe    c0107c27 <_realloc_r+0x2d7>
c0107c0d:	8b 07                	mov    (%edi),%eax
c0107c0f:	83 fb 1b             	cmp    $0x1b,%ebx
c0107c12:	89 41 08             	mov    %eax,0x8(%ecx)
c0107c15:	8b 47 04             	mov    0x4(%edi),%eax
c0107c18:	89 41 0c             	mov    %eax,0xc(%ecx)
c0107c1b:	0f 87 17 02 00 00    	ja     c0107e38 <_realloc_r+0x4e8>
c0107c21:	8d 41 10             	lea    0x10(%ecx),%eax
c0107c24:	83 c7 08             	add    $0x8,%edi
c0107c27:	8b 1f                	mov    (%edi),%ebx
c0107c29:	89 18                	mov    %ebx,(%eax)
c0107c2b:	8b 5f 04             	mov    0x4(%edi),%ebx
c0107c2e:	89 58 04             	mov    %ebx,0x4(%eax)
c0107c31:	8b 5f 08             	mov    0x8(%edi),%ebx
c0107c34:	89 f7                	mov    %esi,%edi
c0107c36:	89 ce                	mov    %ecx,%esi
c0107c38:	89 58 08             	mov    %ebx,0x8(%eax)
c0107c3b:	89 d3                	mov    %edx,%ebx
c0107c3d:	8b 41 04             	mov    0x4(%ecx),%eax
c0107c40:	e9 6e fe ff ff       	jmp    c0107ab3 <_realloc_r+0x163>
c0107c45:	8d 76 00             	lea    0x0(%esi),%esi
c0107c48:	8b 45 cc             	mov    -0x34(%ebp),%eax
c0107c4b:	8b 55 dc             	mov    -0x24(%ebp),%edx
c0107c4e:	8b 48 04             	mov    0x4(%eax),%ecx
c0107c51:	83 c2 10             	add    $0x10,%edx
c0107c54:	89 4d d0             	mov    %ecx,-0x30(%ebp)
c0107c57:	83 65 d0 fc          	andl   $0xfffffffc,-0x30(%ebp)
c0107c5b:	8b 4d d0             	mov    -0x30(%ebp),%ecx
c0107c5e:	01 d9                	add    %ebx,%ecx
c0107c60:	39 d1                	cmp    %edx,%ecx
c0107c62:	7d 54                	jge    c0107cb8 <_realloc_r+0x368>
c0107c64:	89 c2                	mov    %eax,%edx
c0107c66:	e9 8a fd ff ff       	jmp    c01079f5 <_realloc_r+0xa5>
c0107c6b:	90                   	nop
c0107c6c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0107c70:	8b 07                	mov    (%edi),%eax
c0107c72:	83 fb 1b             	cmp    $0x1b,%ebx
c0107c75:	89 01                	mov    %eax,(%ecx)
c0107c77:	8b 47 04             	mov    0x4(%edi),%eax
c0107c7a:	89 41 04             	mov    %eax,0x4(%ecx)
c0107c7d:	0f 87 2d 01 00 00    	ja     c0107db0 <_realloc_r+0x460>
c0107c83:	8d 41 08             	lea    0x8(%ecx),%eax
c0107c86:	8d 57 08             	lea    0x8(%edi),%edx
c0107c89:	e9 f8 fe ff ff       	jmp    c0107b86 <_realloc_r+0x236>
c0107c8e:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0107c92:	89 7c 24 04          	mov    %edi,0x4(%esp)
c0107c96:	89 f7                	mov    %esi,%edi
c0107c98:	89 34 24             	mov    %esi,(%esp)
c0107c9b:	89 55 d8             	mov    %edx,-0x28(%ebp)
c0107c9e:	89 4d e0             	mov    %ecx,-0x20(%ebp)
c0107ca1:	e8 1a fc ff ff       	call   c01078c0 <memmove>
c0107ca6:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0107ca9:	8b 55 d8             	mov    -0x28(%ebp),%edx
c0107cac:	8b 41 04             	mov    0x4(%ecx),%eax
c0107caf:	89 ce                	mov    %ecx,%esi
c0107cb1:	89 d3                	mov    %edx,%ebx
c0107cb3:	e9 fb fd ff ff       	jmp    c0107ab3 <_realloc_r+0x163>
c0107cb8:	8b 5d dc             	mov    -0x24(%ebp),%ebx
c0107cbb:	29 d9                	sub    %ebx,%ecx
c0107cbd:	01 de                	add    %ebx,%esi
c0107cbf:	83 c9 01             	or     $0x1,%ecx
c0107cc2:	89 35 28 a5 10 c0    	mov    %esi,0xc010a528
c0107cc8:	89 4e 04             	mov    %ecx,0x4(%esi)
c0107ccb:	8b 47 fc             	mov    -0x4(%edi),%eax
c0107cce:	83 e0 01             	and    $0x1,%eax
c0107cd1:	09 d8                	or     %ebx,%eax
c0107cd3:	89 47 fc             	mov    %eax,-0x4(%edi)
c0107cd6:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0107cd9:	89 04 24             	mov    %eax,(%esp)
c0107cdc:	e8 9f d8 ff ff       	call   c0105580 <__malloc_unlock>
c0107ce1:	89 f8                	mov    %edi,%eax
c0107ce3:	e9 ef fd ff ff       	jmp    c0107ad7 <_realloc_r+0x187>
c0107ce8:	89 0c 24             	mov    %ecx,(%esp)
c0107ceb:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0107cef:	89 7c 24 04          	mov    %edi,0x4(%esp)
c0107cf3:	89 4d e0             	mov    %ecx,-0x20(%ebp)
c0107cf6:	e8 c5 fb ff ff       	call   c01078c0 <memmove>
c0107cfb:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0107cfe:	e9 93 fe ff ff       	jmp    c0107b96 <_realloc_r+0x246>
c0107d03:	90                   	nop
c0107d04:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0107d08:	8d 14 18             	lea    (%eax,%ebx,1),%edx
c0107d0b:	e9 d2 fe ff ff       	jmp    c0107be2 <_realloc_r+0x292>
c0107d10:	8d 14 18             	lea    (%eax,%ebx,1),%edx
c0107d13:	8b 45 d0             	mov    -0x30(%ebp),%eax
c0107d16:	01 d0                	add    %edx,%eax
c0107d18:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c0107d1b:	8b 45 dc             	mov    -0x24(%ebp),%eax
c0107d1e:	83 c0 10             	add    $0x10,%eax
c0107d21:	39 45 d4             	cmp    %eax,-0x2c(%ebp)
c0107d24:	0f 8c b8 fe ff ff    	jl     c0107be2 <_realloc_r+0x292>
c0107d2a:	8b 41 0c             	mov    0xc(%ecx),%eax
c0107d2d:	83 eb 04             	sub    $0x4,%ebx
c0107d30:	8b 51 08             	mov    0x8(%ecx),%edx
c0107d33:	83 fb 24             	cmp    $0x24,%ebx
c0107d36:	8d 71 08             	lea    0x8(%ecx),%esi
c0107d39:	89 42 0c             	mov    %eax,0xc(%edx)
c0107d3c:	89 50 08             	mov    %edx,0x8(%eax)
c0107d3f:	0f 87 3d 01 00 00    	ja     c0107e82 <_realloc_r+0x532>
c0107d45:	83 fb 13             	cmp    $0x13,%ebx
c0107d48:	89 f0                	mov    %esi,%eax
c0107d4a:	76 1a                	jbe    c0107d66 <_realloc_r+0x416>
c0107d4c:	8b 07                	mov    (%edi),%eax
c0107d4e:	83 fb 1b             	cmp    $0x1b,%ebx
c0107d51:	89 41 08             	mov    %eax,0x8(%ecx)
c0107d54:	8b 47 04             	mov    0x4(%edi),%eax
c0107d57:	89 41 0c             	mov    %eax,0xc(%ecx)
c0107d5a:	0f 87 3d 01 00 00    	ja     c0107e9d <_realloc_r+0x54d>
c0107d60:	8d 41 10             	lea    0x10(%ecx),%eax
c0107d63:	83 c7 08             	add    $0x8,%edi
c0107d66:	8b 17                	mov    (%edi),%edx
c0107d68:	89 10                	mov    %edx,(%eax)
c0107d6a:	8b 57 04             	mov    0x4(%edi),%edx
c0107d6d:	89 50 04             	mov    %edx,0x4(%eax)
c0107d70:	8b 57 08             	mov    0x8(%edi),%edx
c0107d73:	89 50 08             	mov    %edx,0x8(%eax)
c0107d76:	8b 5d dc             	mov    -0x24(%ebp),%ebx
c0107d79:	8b 7d d4             	mov    -0x2c(%ebp),%edi
c0107d7c:	89 d8                	mov    %ebx,%eax
c0107d7e:	29 df                	sub    %ebx,%edi
c0107d80:	01 c8                	add    %ecx,%eax
c0107d82:	83 cf 01             	or     $0x1,%edi
c0107d85:	a3 28 a5 10 c0       	mov    %eax,0xc010a528
c0107d8a:	89 78 04             	mov    %edi,0x4(%eax)
c0107d8d:	8b 41 04             	mov    0x4(%ecx),%eax
c0107d90:	83 e0 01             	and    $0x1,%eax
c0107d93:	09 d8                	or     %ebx,%eax
c0107d95:	89 41 04             	mov    %eax,0x4(%ecx)
c0107d98:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0107d9b:	89 04 24             	mov    %eax,(%esp)
c0107d9e:	e8 dd d7 ff ff       	call   c0105580 <__malloc_unlock>
c0107da3:	89 f0                	mov    %esi,%eax
c0107da5:	e9 2d fd ff ff       	jmp    c0107ad7 <_realloc_r+0x187>
c0107daa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0107db0:	8b 47 08             	mov    0x8(%edi),%eax
c0107db3:	83 fb 24             	cmp    $0x24,%ebx
c0107db6:	89 41 08             	mov    %eax,0x8(%ecx)
c0107db9:	8b 47 0c             	mov    0xc(%edi),%eax
c0107dbc:	89 41 0c             	mov    %eax,0xc(%ecx)
c0107dbf:	74 60                	je     c0107e21 <_realloc_r+0x4d1>
c0107dc1:	8d 41 10             	lea    0x10(%ecx),%eax
c0107dc4:	8d 57 10             	lea    0x10(%edi),%edx
c0107dc7:	e9 ba fd ff ff       	jmp    c0107b86 <_realloc_r+0x236>
c0107dcc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0107dd0:	8b 51 fc             	mov    -0x4(%ecx),%edx
c0107dd3:	83 e2 fc             	and    $0xfffffffc,%edx
c0107dd6:	01 d3                	add    %edx,%ebx
c0107dd8:	e9 d6 fc ff ff       	jmp    c0107ab3 <_realloc_r+0x163>
c0107ddd:	8d 76 00             	lea    0x0(%esi),%esi
c0107de0:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0107de4:	89 7c 24 04          	mov    %edi,0x4(%esp)
c0107de8:	89 f7                	mov    %esi,%edi
c0107dea:	89 34 24             	mov    %esi,(%esp)
c0107ded:	89 4d e0             	mov    %ecx,-0x20(%ebp)
c0107df0:	e8 cb fa ff ff       	call   c01078c0 <memmove>
c0107df5:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0107df8:	8b 5d d0             	mov    -0x30(%ebp),%ebx
c0107dfb:	8b 41 04             	mov    0x4(%ecx),%eax
c0107dfe:	89 ce                	mov    %ecx,%esi
c0107e00:	e9 ae fc ff ff       	jmp    c0107ab3 <_realloc_r+0x163>
c0107e05:	8b 47 08             	mov    0x8(%edi),%eax
c0107e08:	83 fb 24             	cmp    $0x24,%ebx
c0107e0b:	89 41 10             	mov    %eax,0x10(%ecx)
c0107e0e:	8b 47 0c             	mov    0xc(%edi),%eax
c0107e11:	89 41 14             	mov    %eax,0x14(%ecx)
c0107e14:	74 3e                	je     c0107e54 <_realloc_r+0x504>
c0107e16:	8d 41 18             	lea    0x18(%ecx),%eax
c0107e19:	83 c7 10             	add    $0x10,%edi
c0107e1c:	e9 5b fc ff ff       	jmp    c0107a7c <_realloc_r+0x12c>
c0107e21:	8b 47 10             	mov    0x10(%edi),%eax
c0107e24:	8d 57 18             	lea    0x18(%edi),%edx
c0107e27:	89 41 10             	mov    %eax,0x10(%ecx)
c0107e2a:	8b 5f 14             	mov    0x14(%edi),%ebx
c0107e2d:	8d 41 18             	lea    0x18(%ecx),%eax
c0107e30:	89 59 14             	mov    %ebx,0x14(%ecx)
c0107e33:	e9 4e fd ff ff       	jmp    c0107b86 <_realloc_r+0x236>
c0107e38:	8b 47 08             	mov    0x8(%edi),%eax
c0107e3b:	83 fb 24             	cmp    $0x24,%ebx
c0107e3e:	89 41 10             	mov    %eax,0x10(%ecx)
c0107e41:	8b 47 0c             	mov    0xc(%edi),%eax
c0107e44:	89 41 14             	mov    %eax,0x14(%ecx)
c0107e47:	74 22                	je     c0107e6b <_realloc_r+0x51b>
c0107e49:	8d 41 18             	lea    0x18(%ecx),%eax
c0107e4c:	83 c7 10             	add    $0x10,%edi
c0107e4f:	e9 d3 fd ff ff       	jmp    c0107c27 <_realloc_r+0x2d7>
c0107e54:	8b 47 10             	mov    0x10(%edi),%eax
c0107e57:	83 c7 18             	add    $0x18,%edi
c0107e5a:	89 41 18             	mov    %eax,0x18(%ecx)
c0107e5d:	8b 57 fc             	mov    -0x4(%edi),%edx
c0107e60:	8d 41 20             	lea    0x20(%ecx),%eax
c0107e63:	89 51 1c             	mov    %edx,0x1c(%ecx)
c0107e66:	e9 11 fc ff ff       	jmp    c0107a7c <_realloc_r+0x12c>
c0107e6b:	8b 47 10             	mov    0x10(%edi),%eax
c0107e6e:	83 c7 18             	add    $0x18,%edi
c0107e71:	89 41 18             	mov    %eax,0x18(%ecx)
c0107e74:	8b 5f fc             	mov    -0x4(%edi),%ebx
c0107e77:	8d 41 20             	lea    0x20(%ecx),%eax
c0107e7a:	89 59 1c             	mov    %ebx,0x1c(%ecx)
c0107e7d:	e9 a5 fd ff ff       	jmp    c0107c27 <_realloc_r+0x2d7>
c0107e82:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0107e86:	89 7c 24 04          	mov    %edi,0x4(%esp)
c0107e8a:	89 34 24             	mov    %esi,(%esp)
c0107e8d:	89 4d e0             	mov    %ecx,-0x20(%ebp)
c0107e90:	e8 2b fa ff ff       	call   c01078c0 <memmove>
c0107e95:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0107e98:	e9 d9 fe ff ff       	jmp    c0107d76 <_realloc_r+0x426>
c0107e9d:	8b 47 08             	mov    0x8(%edi),%eax
c0107ea0:	83 fb 24             	cmp    $0x24,%ebx
c0107ea3:	89 41 10             	mov    %eax,0x10(%ecx)
c0107ea6:	8b 47 0c             	mov    0xc(%edi),%eax
c0107ea9:	89 41 14             	mov    %eax,0x14(%ecx)
c0107eac:	74 1d                	je     c0107ecb <_realloc_r+0x57b>
c0107eae:	8d 41 18             	lea    0x18(%ecx),%eax
c0107eb1:	83 c7 10             	add    $0x10,%edi
c0107eb4:	e9 ad fe ff ff       	jmp    c0107d66 <_realloc_r+0x416>
c0107eb9:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0107ebc:	89 04 24             	mov    %eax,(%esp)
c0107ebf:	e8 bc d6 ff ff       	call   c0105580 <__malloc_unlock>
c0107ec4:	31 c0                	xor    %eax,%eax
c0107ec6:	e9 0c fc ff ff       	jmp    c0107ad7 <_realloc_r+0x187>
c0107ecb:	8b 47 10             	mov    0x10(%edi),%eax
c0107ece:	83 c7 18             	add    $0x18,%edi
c0107ed1:	89 41 18             	mov    %eax,0x18(%ecx)
c0107ed4:	8b 57 fc             	mov    -0x4(%edi),%edx
c0107ed7:	8d 41 20             	lea    0x20(%ecx),%eax
c0107eda:	89 51 1c             	mov    %edx,0x1c(%ecx)
c0107edd:	e9 84 fe ff ff       	jmp    c0107d66 <_realloc_r+0x416>
c0107ee2:	66 90                	xchg   %ax,%ax
c0107ee4:	66 90                	xchg   %ax,%ax
c0107ee6:	66 90                	xchg   %ax,%ax
c0107ee8:	66 90                	xchg   %ax,%ax
c0107eea:	66 90                	xchg   %ax,%ax
c0107eec:	66 90                	xchg   %ax,%ax
c0107eee:	66 90                	xchg   %ax,%ax

c0107ef0 <cleanup_glue>:
c0107ef0:	55                   	push   %ebp
c0107ef1:	89 e5                	mov    %esp,%ebp
c0107ef3:	56                   	push   %esi
c0107ef4:	53                   	push   %ebx
c0107ef5:	83 ec 10             	sub    $0x10,%esp
c0107ef8:	8b 5d 0c             	mov    0xc(%ebp),%ebx
c0107efb:	8b 75 08             	mov    0x8(%ebp),%esi
c0107efe:	8b 03                	mov    (%ebx),%eax
c0107f00:	85 c0                	test   %eax,%eax
c0107f02:	74 0c                	je     c0107f10 <cleanup_glue+0x20>
c0107f04:	89 44 24 04          	mov    %eax,0x4(%esp)
c0107f08:	89 34 24             	mov    %esi,(%esp)
c0107f0b:	e8 e0 ff ff ff       	call   c0107ef0 <cleanup_glue>
c0107f10:	89 5d 0c             	mov    %ebx,0xc(%ebp)
c0107f13:	89 75 08             	mov    %esi,0x8(%ebp)
c0107f16:	83 c4 10             	add    $0x10,%esp
c0107f19:	5b                   	pop    %ebx
c0107f1a:	5e                   	pop    %esi
c0107f1b:	5d                   	pop    %ebp
c0107f1c:	e9 3f f7 ff ff       	jmp    c0107660 <_free_r>
c0107f21:	eb 0d                	jmp    c0107f30 <_reclaim_reent>
c0107f23:	90                   	nop
c0107f24:	90                   	nop
c0107f25:	90                   	nop
c0107f26:	90                   	nop
c0107f27:	90                   	nop
c0107f28:	90                   	nop
c0107f29:	90                   	nop
c0107f2a:	90                   	nop
c0107f2b:	90                   	nop
c0107f2c:	90                   	nop
c0107f2d:	90                   	nop
c0107f2e:	90                   	nop
c0107f2f:	90                   	nop

c0107f30 <_reclaim_reent>:
c0107f30:	55                   	push   %ebp
c0107f31:	89 e5                	mov    %esp,%ebp
c0107f33:	57                   	push   %edi
c0107f34:	56                   	push   %esi
c0107f35:	53                   	push   %ebx
c0107f36:	83 ec 1c             	sub    $0x1c,%esp
c0107f39:	8b 5d 08             	mov    0x8(%ebp),%ebx
c0107f3c:	3b 1d 20 a0 10 c0    	cmp    0xc010a020,%ebx
c0107f42:	0f 84 a6 00 00 00    	je     c0107fee <_reclaim_reent+0xbe>
c0107f48:	8b 53 4c             	mov    0x4c(%ebx),%edx
c0107f4b:	85 d2                	test   %edx,%edx
c0107f4d:	74 46                	je     c0107f95 <_reclaim_reent+0x65>
c0107f4f:	31 c0                	xor    %eax,%eax
c0107f51:	31 f6                	xor    %esi,%esi
c0107f53:	90                   	nop
c0107f54:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0107f58:	8b 04 82             	mov    (%edx,%eax,4),%eax
c0107f5b:	85 c0                	test   %eax,%eax
c0107f5d:	75 0b                	jne    c0107f6a <_reclaim_reent+0x3a>
c0107f5f:	eb 1e                	jmp    c0107f7f <_reclaim_reent+0x4f>
c0107f61:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0107f68:	89 f8                	mov    %edi,%eax
c0107f6a:	8b 38                	mov    (%eax),%edi
c0107f6c:	89 44 24 04          	mov    %eax,0x4(%esp)
c0107f70:	89 1c 24             	mov    %ebx,(%esp)
c0107f73:	e8 e8 f6 ff ff       	call   c0107660 <_free_r>
c0107f78:	85 ff                	test   %edi,%edi
c0107f7a:	75 ec                	jne    c0107f68 <_reclaim_reent+0x38>
c0107f7c:	8b 53 4c             	mov    0x4c(%ebx),%edx
c0107f7f:	83 c6 01             	add    $0x1,%esi
c0107f82:	83 fe 20             	cmp    $0x20,%esi
c0107f85:	89 f0                	mov    %esi,%eax
c0107f87:	75 cf                	jne    c0107f58 <_reclaim_reent+0x28>
c0107f89:	89 54 24 04          	mov    %edx,0x4(%esp)
c0107f8d:	89 1c 24             	mov    %ebx,(%esp)
c0107f90:	e8 cb f6 ff ff       	call   c0107660 <_free_r>
c0107f95:	8b 43 40             	mov    0x40(%ebx),%eax
c0107f98:	85 c0                	test   %eax,%eax
c0107f9a:	74 0c                	je     c0107fa8 <_reclaim_reent+0x78>
c0107f9c:	89 44 24 04          	mov    %eax,0x4(%esp)
c0107fa0:	89 1c 24             	mov    %ebx,(%esp)
c0107fa3:	e8 b8 f6 ff ff       	call   c0107660 <_free_r>
c0107fa8:	8b 83 48 01 00 00    	mov    0x148(%ebx),%eax
c0107fae:	85 c0                	test   %eax,%eax
c0107fb0:	74 22                	je     c0107fd4 <_reclaim_reent+0xa4>
c0107fb2:	8d b3 4c 01 00 00    	lea    0x14c(%ebx),%esi
c0107fb8:	39 f0                	cmp    %esi,%eax
c0107fba:	75 06                	jne    c0107fc2 <_reclaim_reent+0x92>
c0107fbc:	eb 16                	jmp    c0107fd4 <_reclaim_reent+0xa4>
c0107fbe:	66 90                	xchg   %ax,%ax
c0107fc0:	89 f8                	mov    %edi,%eax
c0107fc2:	8b 38                	mov    (%eax),%edi
c0107fc4:	89 44 24 04          	mov    %eax,0x4(%esp)
c0107fc8:	89 1c 24             	mov    %ebx,(%esp)
c0107fcb:	e8 90 f6 ff ff       	call   c0107660 <_free_r>
c0107fd0:	39 fe                	cmp    %edi,%esi
c0107fd2:	75 ec                	jne    c0107fc0 <_reclaim_reent+0x90>
c0107fd4:	8b 43 54             	mov    0x54(%ebx),%eax
c0107fd7:	85 c0                	test   %eax,%eax
c0107fd9:	74 0c                	je     c0107fe7 <_reclaim_reent+0xb7>
c0107fdb:	89 44 24 04          	mov    %eax,0x4(%esp)
c0107fdf:	89 1c 24             	mov    %ebx,(%esp)
c0107fe2:	e8 79 f6 ff ff       	call   c0107660 <_free_r>
c0107fe7:	8b 43 38             	mov    0x38(%ebx),%eax
c0107fea:	85 c0                	test   %eax,%eax
c0107fec:	75 08                	jne    c0107ff6 <_reclaim_reent+0xc6>
c0107fee:	83 c4 1c             	add    $0x1c,%esp
c0107ff1:	5b                   	pop    %ebx
c0107ff2:	5e                   	pop    %esi
c0107ff3:	5f                   	pop    %edi
c0107ff4:	5d                   	pop    %ebp
c0107ff5:	c3                   	ret    
c0107ff6:	89 1c 24             	mov    %ebx,(%esp)
c0107ff9:	ff 53 3c             	call   *0x3c(%ebx)
c0107ffc:	8b 83 e0 02 00 00    	mov    0x2e0(%ebx),%eax
c0108002:	85 c0                	test   %eax,%eax
c0108004:	74 e8                	je     c0107fee <_reclaim_reent+0xbe>
c0108006:	89 1c 24             	mov    %ebx,(%esp)
c0108009:	89 44 24 04          	mov    %eax,0x4(%esp)
c010800d:	e8 de fe ff ff       	call   c0107ef0 <cleanup_glue>
c0108012:	83 c4 1c             	add    $0x1c,%esp
c0108015:	5b                   	pop    %ebx
c0108016:	5e                   	pop    %esi
c0108017:	5f                   	pop    %edi
c0108018:	5d                   	pop    %ebp
c0108019:	c3                   	ret    
