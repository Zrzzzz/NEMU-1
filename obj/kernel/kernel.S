
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
c010002b:	e9 00 0f 00 00       	jmp    c0100f30 <init>

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
c010014c:	e8 97 16 00 00       	call   c01017e8 <memset>
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
c0100178:	c7 44 24 10 a4 80 10 	movl   $0xc01080a4,0x10(%esp)
c010017f:	c0 
c0100180:	c7 44 24 0c 08 81 10 	movl   $0xc0108108,0xc(%esp)
c0100187:	c0 
c0100188:	c7 44 24 08 11 00 00 	movl   $0x11,0x8(%esp)
c010018f:	00 
c0100190:	c7 44 24 04 93 80 10 	movl   $0xc0108093,0x4(%esp)
c0100197:	c0 
c0100198:	c7 04 24 b4 80 10 c0 	movl   $0xc01080b4,(%esp)
c010019f:	e8 3c 15 00 00       	call   c01016e0 <printk>
c01001a4:	b8 01 00 00 00       	mov    $0x1,%eax
c01001a9:	d6                   	(bad)  
c01001aa:	8b 55 e0             	mov    -0x20(%ebp),%edx
c01001ad:	8d 86 00 00 00 c0    	lea    -0x40000000(%esi),%eax
c01001b3:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c01001b8:	c1 ea 0c             	shr    $0xc,%edx
c01001bb:	81 e2 ff 03 00 00    	and    $0x3ff,%edx
c01001c1:	f6 04 90 01          	testb  $0x1,(%eax,%edx,4)
c01001c5:	75 32                	jne    c01001f9 <mm_malloc+0x1a9>
c01001c7:	c7 44 24 10 ac 80 10 	movl   $0xc01080ac,0x10(%esp)
c01001ce:	c0 
c01001cf:	c7 44 24 0c 08 81 10 	movl   $0xc0108108,0xc(%esp)
c01001d6:	c0 
c01001d7:	c7 44 24 08 13 00 00 	movl   $0x13,0x8(%esp)
c01001de:	00 
c01001df:	c7 44 24 04 93 80 10 	movl   $0xc0108093,0x4(%esp)
c01001e6:	c0 
c01001e7:	c7 04 24 b4 80 10 c0 	movl   $0xc01080b4,(%esp)
c01001ee:	e8 ed 14 00 00       	call   c01016e0 <printk>
c01001f3:	b8 01 00 00 00       	mov    $0x1,%eax
c01001f8:	d6                   	(bad)  
c01001f9:	8b 45 08             	mov    0x8(%ebp),%eax
c01001fc:	c1 e8 16             	shr    $0x16,%eax
c01001ff:	8b 1c 83             	mov    (%ebx,%eax,4),%ebx
c0100202:	f6 c3 01             	test   $0x1,%bl
c0100205:	75 32                	jne    c0100239 <mm_malloc+0x1e9>
c0100207:	c7 44 24 10 a4 80 10 	movl   $0xc01080a4,0x10(%esp)
c010020e:	c0 
c010020f:	c7 44 24 0c 08 81 10 	movl   $0xc0108108,0xc(%esp)
c0100216:	c0 
c0100217:	c7 44 24 08 11 00 00 	movl   $0x11,0x8(%esp)
c010021e:	00 
c010021f:	c7 44 24 04 93 80 10 	movl   $0xc0108093,0x4(%esp)
c0100226:	c0 
c0100227:	c7 04 24 b4 80 10 c0 	movl   $0xc01080b4,(%esp)
c010022e:	e8 ad 14 00 00       	call   c01016e0 <printk>
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
c0100258:	c7 44 24 10 ac 80 10 	movl   $0xc01080ac,0x10(%esp)
c010025f:	c0 
c0100260:	c7 44 24 0c 08 81 10 	movl   $0xc0108108,0xc(%esp)
c0100267:	c0 
c0100268:	c7 44 24 08 13 00 00 	movl   $0x13,0x8(%esp)
c010026f:	00 
c0100270:	c7 44 24 04 93 80 10 	movl   $0xc0108093,0x4(%esp)
c0100277:	c0 
c0100278:	c7 04 24 b4 80 10 c0 	movl   $0xc01080b4,(%esp)
c010027f:	e8 5c 14 00 00       	call   c01016e0 <printk>
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
c01002a8:	c7 44 24 10 80 80 10 	movl   $0xc0108080,0x10(%esp)
c01002af:	c0 
c01002b0:	c7 44 24 0c fe 80 10 	movl   $0xc01080fe,0xc(%esp)
c01002b7:	c0 
c01002b8:	c7 44 24 08 31 00 00 	movl   $0x31,0x8(%esp)
c01002bf:	00 
c01002c0:	c7 44 24 04 93 80 10 	movl   $0xc0108093,0x4(%esp)
c01002c7:	c0 
c01002c8:	c7 04 24 b4 80 10 c0 	movl   $0xc01080b4,(%esp)
c01002cf:	e8 0c 14 00 00       	call   c01016e0 <printk>
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
c01003d3:	e8 10 14 00 00       	call   c01017e8 <memset>
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
c010044f:	e8 94 13 00 00       	call   c01017e8 <memset>
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
c0100563:	e8 80 12 00 00       	call   c01017e8 <memset>
c0100568:	83 c4 0c             	add    $0xc,%esp
c010056b:	68 80 00 00 00       	push   $0x80
c0100570:	53                   	push   %ebx
c0100571:	68 00 fc 14 c0       	push   $0xc014fc00
c0100576:	e8 25 12 00 00       	call   c01017a0 <memcpy>
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
c010061c:	68 0e 81 10 c0       	push   $0xc010810e
c0100621:	68 33 81 10 c0       	push   $0xc0108133
c0100626:	6a 24                	push   $0x24
c0100628:	68 1a 81 10 c0       	push   $0xc010811a
c010062d:	68 b4 80 10 c0       	push   $0xc01080b4
c0100632:	e8 a9 10 00 00       	call   c01016e0 <printk>
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
c0100662:	e8 81 11 00 00       	call   c01017e8 <memset>
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
c010068c:	68 7a 81 10 c0       	push   $0xc010817a
c0100691:	68 61 82 10 c0       	push   $0xc0108261
c0100696:	6a 16                	push   $0x16
c0100698:	68 5e 81 10 c0       	push   $0xc010815e
c010069d:	68 b4 80 10 c0       	push   $0xc01080b4
c01006a2:	e8 39 10 00 00       	call   c01016e0 <printk>
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
c01006f3:	68 4b 81 10 c0       	push   $0xc010814b
c01006f8:	68 61 82 10 c0       	push   $0xc0108261
c01006fd:	6a 15                	push   $0x15
c01006ff:	68 5e 81 10 c0       	push   $0xc010815e
c0100704:	68 b4 80 10 c0       	push   $0xc01080b4
c0100709:	e8 d2 0f 00 00       	call   c01016e0 <printk>
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
c0100773:	68 98 81 10 c0       	push   $0xc0108198
c0100778:	68 56 82 10 c0       	push   $0xc0108256
c010077d:	6a 2f                	push   $0x2f
c010077f:	68 5e 81 10 c0       	push   $0xc010815e
c0100784:	68 b4 80 10 c0       	push   $0xc01080b4
c0100789:	e8 52 0f 00 00       	call   c01016e0 <printk>
c010078e:	b8 01 00 00 00       	mov    $0x1,%eax
c0100793:	d6                   	(bad)  
c0100794:	83 c4 20             	add    $0x20,%esp
c0100797:	eb b9                	jmp    c0100752 <irq_handle+0x32>
c0100799:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c01007a0:	83 ec 08             	sub    $0x8,%esp
c01007a3:	ff 72 28             	pushl  0x28(%edx)
c01007a6:	50                   	push   %eax
c01007a7:	68 56 82 10 c0       	push   $0xc0108256
c01007ac:	6a 2c                	push   $0x2c
c01007ae:	68 5e 81 10 c0       	push   $0xc010815e
c01007b3:	68 fc 81 10 c0       	push   $0xc01081fc
c01007b8:	e8 23 0f 00 00       	call   c01016e0 <printk>
c01007bd:	b8 01 00 00 00       	mov    $0x1,%eax
c01007c2:	d6                   	(bad)  
c01007c3:	83 c4 20             	add    $0x20,%esp
c01007c6:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c01007c9:	c9                   	leave  
c01007ca:	c3                   	ret    
c01007cb:	90                   	nop
c01007cc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c01007d0:	68 56 82 10 c0       	push   $0xc0108256
c01007d5:	6a 28                	push   $0x28
c01007d7:	68 5e 81 10 c0       	push   $0xc010815e
c01007dc:	68 b0 81 10 c0       	push   $0xc01081b0
c01007e1:	e8 fa 0e 00 00       	call   c01016e0 <printk>
c01007e6:	b8 01 00 00 00       	mov    $0x1,%eax
c01007eb:	d6                   	(bad)  
c01007ec:	83 c4 10             	add    $0x10,%esp
c01007ef:	e9 75 ff ff ff       	jmp    c0100769 <irq_handle+0x49>
c01007f4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c01007f8:	89 55 08             	mov    %edx,0x8(%ebp)
c01007fb:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c01007fe:	c9                   	leave  
c01007ff:	e9 4c 04 00 00       	jmp    c0100c50 <do_syscall>
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
c0100a78:	b9 08 00 00 00       	mov    $0x8,%ecx
c0100a7d:	c6 05 05 12 15 c0 8f 	movb   $0x8f,0xc0151205
c0100a84:	c6 05 0c 12 15 c0 00 	movb   $0x0,0xc015120c
c0100a8b:	ba 08 00 00 00       	mov    $0x8,%edx
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
c0100ad3:	66 89 0d c2 15 15 c0 	mov    %cx,0xc01515c2
c0100ada:	66 a3 30 12 15 c0    	mov    %ax,0xc0151230
c0100ae0:	c1 e8 10             	shr    $0x10,%eax
c0100ae3:	b9 08 00 00 00       	mov    $0x8,%ecx
c0100ae8:	66 a3 36 12 15 c0    	mov    %ax,0xc0151236
c0100aee:	b8 5f 03 10 c0       	mov    $0xc010035f,%eax
c0100af3:	66 89 15 32 12 15 c0 	mov    %dx,0xc0151232
c0100afa:	66 a3 c0 15 15 c0    	mov    %ax,0xc01515c0
c0100b00:	c1 e8 10             	shr    $0x10,%eax
c0100b03:	ba 08 00 00 00       	mov    $0x8,%edx
c0100b08:	66 a3 c6 15 15 c0    	mov    %ax,0xc01515c6
c0100b0e:	b8 6b 03 10 c0       	mov    $0xc010036b,%eax
c0100b13:	66 89 0d 32 13 15 c0 	mov    %cx,0xc0151332
c0100b1a:	66 a3 c0 12 15 c0    	mov    %ax,0xc01512c0
c0100b20:	c1 e8 10             	shr    $0x10,%eax
c0100b23:	b9 ff 07 00 00       	mov    $0x7ff,%ecx
c0100b28:	66 a3 c6 12 15 c0    	mov    %ax,0xc01512c6
c0100b2e:	b8 83 03 10 c0       	mov    $0xc0100383,%eax
c0100b33:	66 89 0d 80 11 15 c0 	mov    %cx,0xc0151180
c0100b3a:	66 a3 30 13 15 c0    	mov    %ax,0xc0151330
c0100b40:	c1 e8 10             	shr    $0x10,%eax
c0100b43:	66 89 15 c2 12 15 c0 	mov    %dx,0xc01512c2
c0100b4a:	66 a3 36 13 15 c0    	mov    %ax,0xc0151336
c0100b50:	b8 77 03 10 c0       	mov    $0xc0100377,%eax
c0100b55:	ba 08 00 00 00       	mov    $0x8,%edx
c0100b5a:	66 a3 c8 12 15 c0    	mov    %ax,0xc01512c8
c0100b60:	c1 e8 10             	shr    $0x10,%eax
c0100b63:	c6 05 2d 12 15 c0 8f 	movb   $0x8f,0xc015122d
c0100b6a:	66 a3 ce 12 15 c0    	mov    %ax,0xc01512ce
c0100b70:	b8 c0 11 15 c0       	mov    $0xc01511c0,%eax
c0100b75:	c6 05 34 12 15 c0 00 	movb   $0x0,0xc0151234
c0100b7c:	66 a3 82 11 15 c0    	mov    %ax,0xc0151182
c0100b82:	c1 e8 10             	shr    $0x10,%eax
c0100b85:	c6 05 35 12 15 c0 8f 	movb   $0x8f,0xc0151235
c0100b8c:	66 a3 84 11 15 c0    	mov    %ax,0xc0151184
c0100b92:	c6 05 c4 15 15 c0 00 	movb   $0x0,0xc01515c4
c0100b99:	b8 80 11 15 c0       	mov    $0xc0151180,%eax
c0100b9e:	c6 05 c5 15 15 c0 ef 	movb   $0xef,0xc01515c5
c0100ba5:	c6 05 c4 12 15 c0 00 	movb   $0x0,0xc01512c4
c0100bac:	c6 05 c5 12 15 c0 8e 	movb   $0x8e,0xc01512c5
c0100bb3:	c6 05 34 13 15 c0 00 	movb   $0x0,0xc0151334
c0100bba:	c6 05 35 13 15 c0 8e 	movb   $0x8e,0xc0151335
c0100bc1:	66 89 15 ca 12 15 c0 	mov    %dx,0xc01512ca
c0100bc8:	c6 05 cc 12 15 c0 00 	movb   $0x0,0xc01512cc
c0100bcf:	c6 05 cd 12 15 c0 8e 	movb   $0x8e,0xc01512cd
c0100bd6:	0f 01 18             	lidtl  (%eax)
c0100bd9:	5d                   	pop    %ebp
c0100bda:	c3                   	ret    
c0100bdb:	66 90                	xchg   %ax,%ax
c0100bdd:	66 90                	xchg   %ax,%ax
c0100bdf:	90                   	nop

c0100be0 <init_i8259>:
c0100be0:	55                   	push   %ebp
c0100be1:	ba 21 00 00 00       	mov    $0x21,%edx
c0100be6:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c0100beb:	89 e5                	mov    %esp,%ebp
c0100bed:	ee                   	out    %al,(%dx)
c0100bee:	b2 a1                	mov    $0xa1,%dl
c0100bf0:	ee                   	out    %al,(%dx)
c0100bf1:	b8 11 00 00 00       	mov    $0x11,%eax
c0100bf6:	b2 20                	mov    $0x20,%dl
c0100bf8:	ee                   	out    %al,(%dx)
c0100bf9:	b8 20 00 00 00       	mov    $0x20,%eax
c0100bfe:	b2 21                	mov    $0x21,%dl
c0100c00:	ee                   	out    %al,(%dx)
c0100c01:	b8 04 00 00 00       	mov    $0x4,%eax
c0100c06:	ee                   	out    %al,(%dx)
c0100c07:	b8 03 00 00 00       	mov    $0x3,%eax
c0100c0c:	ee                   	out    %al,(%dx)
c0100c0d:	b8 11 00 00 00       	mov    $0x11,%eax
c0100c12:	b2 a0                	mov    $0xa0,%dl
c0100c14:	ee                   	out    %al,(%dx)
c0100c15:	b8 28 00 00 00       	mov    $0x28,%eax
c0100c1a:	b2 a1                	mov    $0xa1,%dl
c0100c1c:	ee                   	out    %al,(%dx)
c0100c1d:	b8 02 00 00 00       	mov    $0x2,%eax
c0100c22:	ee                   	out    %al,(%dx)
c0100c23:	b8 03 00 00 00       	mov    $0x3,%eax
c0100c28:	ee                   	out    %al,(%dx)
c0100c29:	b8 68 00 00 00       	mov    $0x68,%eax
c0100c2e:	b2 20                	mov    $0x20,%dl
c0100c30:	ee                   	out    %al,(%dx)
c0100c31:	b8 0a 00 00 00       	mov    $0xa,%eax
c0100c36:	ee                   	out    %al,(%dx)
c0100c37:	b8 68 00 00 00       	mov    $0x68,%eax
c0100c3c:	b2 a0                	mov    $0xa0,%dl
c0100c3e:	ee                   	out    %al,(%dx)
c0100c3f:	b8 0a 00 00 00       	mov    $0xa,%eax
c0100c44:	ee                   	out    %al,(%dx)
c0100c45:	5d                   	pop    %ebp
c0100c46:	c3                   	ret    
c0100c47:	66 90                	xchg   %ax,%ax
c0100c49:	66 90                	xchg   %ax,%ax
c0100c4b:	66 90                	xchg   %ax,%ax
c0100c4d:	66 90                	xchg   %ax,%ax
c0100c4f:	90                   	nop

c0100c50 <do_syscall>:
c0100c50:	55                   	push   %ebp
c0100c51:	89 e5                	mov    %esp,%ebp
c0100c53:	53                   	push   %ebx
c0100c54:	83 ec 04             	sub    $0x4,%esp
c0100c57:	8b 5d 08             	mov    0x8(%ebp),%ebx
c0100c5a:	8b 43 1c             	mov    0x1c(%ebx),%eax
c0100c5d:	83 f8 2d             	cmp    $0x2d,%eax
c0100c60:	0f 87 ea 00 00 00    	ja     c0100d50 <do_syscall+0x100>
c0100c66:	ff 24 85 e4 82 10 c0 	jmp    *-0x3fef7d1c(,%eax,4)
c0100c6d:	8d 76 00             	lea    0x0(%esi),%esi
c0100c70:	83 ec 0c             	sub    $0xc,%esp
c0100c73:	ff 73 10             	pushl  0x10(%ebx)
c0100c76:	e8 95 f8 ff ff       	call   c0100510 <mm_brk>
c0100c7b:	c7 43 1c 00 00 00 00 	movl   $0x0,0x1c(%ebx)
c0100c82:	83 c4 10             	add    $0x10,%esp
c0100c85:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0100c88:	c9                   	leave  
c0100c89:	c3                   	ret    
c0100c8a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0100c90:	fa                   	cli    
c0100c91:	83 ec 08             	sub    $0x8,%esp
c0100c94:	ff 73 18             	pushl  0x18(%ebx)
c0100c97:	ff 73 10             	pushl  0x10(%ebx)
c0100c9a:	e8 d1 f9 ff ff       	call   c0100670 <add_irq_handle>
c0100c9f:	fb                   	sti    
c0100ca0:	83 c4 10             	add    $0x10,%esp
c0100ca3:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0100ca6:	c9                   	leave  
c0100ca7:	c3                   	ret    
c0100ca8:	90                   	nop
c0100ca9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0100cb0:	83 ec 04             	sub    $0x4,%esp
c0100cb3:	ff 73 14             	pushl  0x14(%ebx)
c0100cb6:	ff 73 18             	pushl  0x18(%ebx)
c0100cb9:	ff 73 10             	pushl  0x10(%ebx)
c0100cbc:	e8 5f 03 00 00       	call   c0101020 <fs_read>
c0100cc1:	83 c4 10             	add    $0x10,%esp
c0100cc4:	89 43 1c             	mov    %eax,0x1c(%ebx)
c0100cc7:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0100cca:	c9                   	leave  
c0100ccb:	c3                   	ret    
c0100ccc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0100cd0:	83 ec 04             	sub    $0x4,%esp
c0100cd3:	ff 73 14             	pushl  0x14(%ebx)
c0100cd6:	ff 73 18             	pushl  0x18(%ebx)
c0100cd9:	ff 73 10             	pushl  0x10(%ebx)
c0100cdc:	e8 ef 03 00 00       	call   c01010d0 <fs_write>
c0100ce1:	83 c4 10             	add    $0x10,%esp
c0100ce4:	89 43 1c             	mov    %eax,0x1c(%ebx)
c0100ce7:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0100cea:	c9                   	leave  
c0100ceb:	c3                   	ret    
c0100cec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0100cf0:	83 ec 08             	sub    $0x8,%esp
c0100cf3:	ff 73 18             	pushl  0x18(%ebx)
c0100cf6:	ff 73 10             	pushl  0x10(%ebx)
c0100cf9:	e8 72 02 00 00       	call   c0100f70 <fs_open>
c0100cfe:	83 c4 10             	add    $0x10,%esp
c0100d01:	89 43 1c             	mov    %eax,0x1c(%ebx)
c0100d04:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0100d07:	c9                   	leave  
c0100d08:	c3                   	ret    
c0100d09:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0100d10:	83 ec 0c             	sub    $0xc,%esp
c0100d13:	ff 73 10             	pushl  0x10(%ebx)
c0100d16:	e8 e5 02 00 00       	call   c0101000 <fs_close>
c0100d1b:	83 c4 10             	add    $0x10,%esp
c0100d1e:	89 43 1c             	mov    %eax,0x1c(%ebx)
c0100d21:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0100d24:	c9                   	leave  
c0100d25:	c3                   	ret    
c0100d26:	8d 76 00             	lea    0x0(%esi),%esi
c0100d29:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
c0100d30:	83 ec 04             	sub    $0x4,%esp
c0100d33:	ff 73 14             	pushl  0x14(%ebx)
c0100d36:	ff 73 18             	pushl  0x18(%ebx)
c0100d39:	ff 73 10             	pushl  0x10(%ebx)
c0100d3c:	e8 6f 04 00 00       	call   c01011b0 <fs_lseek>
c0100d41:	83 c4 10             	add    $0x10,%esp
c0100d44:	89 43 1c             	mov    %eax,0x1c(%ebx)
c0100d47:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0100d4a:	c9                   	leave  
c0100d4b:	c3                   	ret    
c0100d4c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0100d50:	83 ec 0c             	sub    $0xc,%esp
c0100d53:	50                   	push   %eax
c0100d54:	68 9c 83 10 c0       	push   $0xc010839c
c0100d59:	6a 35                	push   $0x35
c0100d5b:	68 70 82 10 c0       	push   $0xc0108270
c0100d60:	68 90 82 10 c0       	push   $0xc0108290
c0100d65:	e8 76 09 00 00       	call   c01016e0 <printk>
c0100d6a:	b8 01 00 00 00       	mov    $0x1,%eax
c0100d6f:	d6                   	(bad)  
c0100d70:	83 c4 20             	add    $0x20,%esp
c0100d73:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0100d76:	c9                   	leave  
c0100d77:	c3                   	ret    
c0100d78:	66 90                	xchg   %ax,%ax
c0100d7a:	66 90                	xchg   %ax,%ax
c0100d7c:	66 90                	xchg   %ax,%ax
c0100d7e:	66 90                	xchg   %ax,%ax

c0100d80 <loader>:
c0100d80:	55                   	push   %ebp
c0100d81:	89 e5                	mov    %esp,%ebp
c0100d83:	57                   	push   %edi
c0100d84:	56                   	push   %esi
c0100d85:	53                   	push   %ebx
c0100d86:	8d bd e8 ef ff ff    	lea    -0x1018(%ebp),%edi
c0100d8c:	81 ec 30 10 00 00    	sub    $0x1030,%esp
c0100d92:	68 00 10 00 00       	push   $0x1000
c0100d97:	6a 00                	push   $0x0
c0100d99:	57                   	push   %edi
c0100d9a:	e8 c1 07 00 00       	call   c0101560 <ide_read>
c0100d9f:	83 c4 10             	add    $0x10,%esp
c0100da2:	81 bd e8 ef ff ff 7f 	cmpl   $0x464c457f,-0x1018(%ebp)
c0100da9:	45 4c 46 
c0100dac:	74 06                	je     c0100db4 <loader+0x34>
c0100dae:	b8 01 00 00 00       	mov    $0x1,%eax
c0100db3:	d6                   	(bad)  
c0100db4:	31 f6                	xor    %esi,%esi
c0100db6:	66 83 bd 14 f0 ff ff 	cmpw   $0x0,-0xfec(%ebp)
c0100dbd:	00 
c0100dbe:	75 1a                	jne    c0100dda <loader+0x5a>
c0100dc0:	e9 9b 00 00 00       	jmp    c0100e60 <loader+0xe0>
c0100dc5:	8d 76 00             	lea    0x0(%esi),%esi
c0100dc8:	0f b7 85 14 f0 ff ff 	movzwl -0xfec(%ebp),%eax
c0100dcf:	83 c6 01             	add    $0x1,%esi
c0100dd2:	39 f0                	cmp    %esi,%eax
c0100dd4:	0f 8e 86 00 00 00    	jle    c0100e60 <loader+0xe0>
c0100dda:	0f b7 9d 12 f0 ff ff 	movzwl -0xfee(%ebp),%ebx
c0100de1:	0f af de             	imul   %esi,%ebx
c0100de4:	03 9d 04 f0 ff ff    	add    -0xffc(%ebp),%ebx
c0100dea:	01 fb                	add    %edi,%ebx
c0100dec:	83 3b 01             	cmpl   $0x1,(%ebx)
c0100def:	75 d7                	jne    c0100dc8 <loader+0x48>
c0100df1:	83 ec 08             	sub    $0x8,%esp
c0100df4:	ff 73 14             	pushl  0x14(%ebx)
c0100df7:	ff 73 08             	pushl  0x8(%ebx)
c0100dfa:	e8 51 f2 ff ff       	call   c0100050 <mm_malloc>
c0100dff:	83 c4 0c             	add    $0xc,%esp
c0100e02:	ff 73 10             	pushl  0x10(%ebx)
c0100e05:	ff 73 04             	pushl  0x4(%ebx)
c0100e08:	50                   	push   %eax
c0100e09:	89 85 d4 ef ff ff    	mov    %eax,-0x102c(%ebp)
c0100e0f:	e8 4c 07 00 00       	call   c0101560 <ide_read>
c0100e14:	8b 53 10             	mov    0x10(%ebx),%edx
c0100e17:	8b 4b 14             	mov    0x14(%ebx),%ecx
c0100e1a:	83 c4 0c             	add    $0xc,%esp
c0100e1d:	8b 85 d4 ef ff ff    	mov    -0x102c(%ebp),%eax
c0100e23:	29 d1                	sub    %edx,%ecx
c0100e25:	01 c2                	add    %eax,%edx
c0100e27:	51                   	push   %ecx
c0100e28:	6a 00                	push   $0x0
c0100e2a:	52                   	push   %edx
c0100e2b:	e8 b8 09 00 00       	call   c01017e8 <memset>
c0100e30:	8b 43 14             	mov    0x14(%ebx),%eax
c0100e33:	03 43 08             	add    0x8(%ebx),%eax
c0100e36:	83 c4 10             	add    $0x10,%esp
c0100e39:	83 e8 01             	sub    $0x1,%eax
c0100e3c:	3b 05 00 e0 14 c0    	cmp    0xc014e000,%eax
c0100e42:	76 84                	jbe    c0100dc8 <loader+0x48>
c0100e44:	a3 00 e0 14 c0       	mov    %eax,0xc014e000
c0100e49:	0f b7 85 14 f0 ff ff 	movzwl -0xfec(%ebp),%eax
c0100e50:	83 c6 01             	add    $0x1,%esi
c0100e53:	39 f0                	cmp    %esi,%eax
c0100e55:	7f 83                	jg     c0100dda <loader+0x5a>
c0100e57:	89 f6                	mov    %esi,%esi
c0100e59:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
c0100e60:	83 ec 08             	sub    $0x8,%esp
c0100e63:	8b 85 00 f0 ff ff    	mov    -0x1000(%ebp),%eax
c0100e69:	68 00 00 10 00       	push   $0x100000
c0100e6e:	68 00 00 f0 bf       	push   $0xbff00000
c0100e73:	89 85 e4 ef ff ff    	mov    %eax,-0x101c(%ebp)
c0100e79:	e8 d2 f1 ff ff       	call   c0100050 <mm_malloc>
c0100e7e:	e8 1d f7 ff ff       	call   c01005a0 <create_video_mapping>
c0100e83:	e8 78 f6 ff ff       	call   c0100500 <get_ucr3>
c0100e88:	0f 22 d8             	mov    %eax,%cr3
c0100e8b:	8b 85 e4 ef ff ff    	mov    -0x101c(%ebp),%eax
c0100e91:	8d 65 f4             	lea    -0xc(%ebp),%esp
c0100e94:	5b                   	pop    %ebx
c0100e95:	5e                   	pop    %esi
c0100e96:	5f                   	pop    %edi
c0100e97:	5d                   	pop    %ebp
c0100e98:	c3                   	ret    
c0100e99:	66 90                	xchg   %ax,%ax
c0100e9b:	66 90                	xchg   %ax,%ax
c0100e9d:	66 90                	xchg   %ax,%ax
c0100e9f:	90                   	nop

c0100ea0 <init_cond>:
c0100ea0:	55                   	push   %ebp
c0100ea1:	89 e5                	mov    %esp,%ebp
c0100ea3:	53                   	push   %ebx
c0100ea4:	83 ec 04             	sub    $0x4,%esp
c0100ea7:	e8 94 f5 ff ff       	call   c0100440 <init_segment>
c0100eac:	e8 5f f9 ff ff       	call   c0100810 <init_idt>
c0100eb1:	e8 2a fd ff ff       	call   c0100be0 <init_i8259>
c0100eb6:	e8 85 08 00 00       	call   c0101740 <init_serial>
c0100ebb:	e8 60 07 00 00       	call   c0101620 <init_ide>
c0100ec0:	fb                   	sti    
c0100ec1:	e8 7a f6 ff ff       	call   c0100540 <init_mm>
c0100ec6:	68 3b 84 10 c0       	push   $0xc010843b
c0100ecb:	6a 4a                	push   $0x4a
c0100ecd:	68 a7 83 10 c0       	push   $0xc01083a7
c0100ed2:	68 bc 83 10 c0       	push   $0xc01083bc
c0100ed7:	e8 04 08 00 00       	call   c01016e0 <printk>
c0100edc:	e8 ff f6 ff ff       	call   c01005e0 <video_mapping_write_test>
c0100ee1:	e8 9a fe ff ff       	call   c0100d80 <loader>
c0100ee6:	89 c3                	mov    %eax,%ebx
c0100ee8:	e8 13 f7 ff ff       	call   c0100600 <video_mapping_read_test>
c0100eed:	e8 5e f7 ff ff       	call   c0100650 <video_mapping_clear>
c0100ef2:	bc 00 00 00 c0       	mov    $0xc0000000,%esp
c0100ef7:	bd 00 00 00 00       	mov    $0x0,%ebp
c0100efc:	83 ec 10             	sub    $0x10,%esp
c0100eff:	ff d3                	call   *%ebx
c0100f01:	68 3b 84 10 c0       	push   $0xc010843b
c0100f06:	6a 6b                	push   $0x6b
c0100f08:	68 a7 83 10 c0       	push   $0xc01083a7
c0100f0d:	68 f0 83 10 c0       	push   $0xc01083f0
c0100f12:	e8 c9 07 00 00       	call   c01016e0 <printk>
c0100f17:	b8 01 00 00 00       	mov    $0x1,%eax
c0100f1c:	d6                   	(bad)  
c0100f1d:	83 c4 20             	add    $0x20,%esp
c0100f20:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0100f23:	c9                   	leave  
c0100f24:	c3                   	ret    
c0100f25:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0100f29:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0100f30 <init>:
c0100f30:	55                   	push   %ebp
c0100f31:	89 e5                	mov    %esp,%ebp
c0100f33:	83 ec 08             	sub    $0x8,%esp
c0100f36:	e8 85 f4 ff ff       	call   c01003c0 <init_page>
c0100f3b:	81 c4 00 00 00 c0    	add    $0xc0000000,%esp
c0100f41:	b8 a0 0e 10 c0       	mov    $0xc0100ea0,%eax
c0100f46:	ff e0                	jmp    *%eax
c0100f48:	68 45 84 10 c0       	push   $0xc0108445
c0100f4d:	6a 24                	push   $0x24
c0100f4f:	68 a7 83 10 c0       	push   $0xc01083a7
c0100f54:	68 f0 83 10 c0       	push   $0xc01083f0
c0100f59:	e8 82 07 00 00       	call   c01016e0 <printk>
c0100f5e:	b8 01 00 00 00       	mov    $0x1,%eax
c0100f63:	d6                   	(bad)  
c0100f64:	83 c4 10             	add    $0x10,%esp
c0100f67:	c9                   	leave  
c0100f68:	c3                   	ret    
c0100f69:	66 90                	xchg   %ax,%ax
c0100f6b:	66 90                	xchg   %ax,%ax
c0100f6d:	66 90                	xchg   %ax,%ax
c0100f6f:	90                   	nop

c0100f70 <fs_open>:
c0100f70:	55                   	push   %ebp
c0100f71:	89 e5                	mov    %esp,%ebp
c0100f73:	57                   	push   %edi
c0100f74:	56                   	push   %esi
c0100f75:	53                   	push   %ebx
c0100f76:	be 80 85 10 c0       	mov    $0xc0108580,%esi
c0100f7b:	31 db                	xor    %ebx,%ebx
c0100f7d:	83 ec 0c             	sub    $0xc,%esp
c0100f80:	8b 7d 08             	mov    0x8(%ebp),%edi
c0100f83:	eb 0e                	jmp    c0100f93 <fs_open+0x23>
c0100f85:	8d 76 00             	lea    0x0(%esi),%esi
c0100f88:	83 c3 01             	add    $0x1,%ebx
c0100f8b:	83 c6 0c             	add    $0xc,%esi
c0100f8e:	83 fb 19             	cmp    $0x19,%ebx
c0100f91:	74 35                	je     c0100fc8 <fs_open+0x58>
c0100f93:	83 ec 08             	sub    $0x8,%esp
c0100f96:	57                   	push   %edi
c0100f97:	ff 36                	pushl  (%esi)
c0100f99:	e8 d2 08 00 00       	call   c0101870 <strcmp>
c0100f9e:	83 c4 10             	add    $0x10,%esp
c0100fa1:	85 c0                	test   %eax,%eax
c0100fa3:	75 e3                	jne    c0100f88 <fs_open+0x18>
c0100fa5:	8d 43 03             	lea    0x3(%ebx),%eax
c0100fa8:	c6 04 c5 c0 19 15 c0 	movb   $0x1,-0x3feae640(,%eax,8)
c0100faf:	01 
c0100fb0:	c7 04 c5 c4 19 15 c0 	movl   $0x0,-0x3feae63c(,%eax,8)
c0100fb7:	00 00 00 00 
c0100fbb:	8d 65 f4             	lea    -0xc(%ebp),%esp
c0100fbe:	5b                   	pop    %ebx
c0100fbf:	5e                   	pop    %esi
c0100fc0:	5f                   	pop    %edi
c0100fc1:	5d                   	pop    %ebp
c0100fc2:	c3                   	ret    
c0100fc3:	90                   	nop
c0100fc4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0100fc8:	83 ec 0c             	sub    $0xc,%esp
c0100fcb:	68 4a 84 10 c0       	push   $0xc010844a
c0100fd0:	68 5a 85 10 c0       	push   $0xc010855a
c0100fd5:	6a 34                	push   $0x34
c0100fd7:	68 4c 84 10 c0       	push   $0xc010844c
c0100fdc:	68 b4 80 10 c0       	push   $0xc01080b4
c0100fe1:	e8 fa 06 00 00       	call   c01016e0 <printk>
c0100fe6:	b8 01 00 00 00       	mov    $0x1,%eax
c0100feb:	d6                   	(bad)  
c0100fec:	83 c4 20             	add    $0x20,%esp
c0100fef:	8d 65 f4             	lea    -0xc(%ebp),%esp
c0100ff2:	30 c0                	xor    %al,%al
c0100ff4:	5b                   	pop    %ebx
c0100ff5:	5e                   	pop    %esi
c0100ff6:	5f                   	pop    %edi
c0100ff7:	5d                   	pop    %ebp
c0100ff8:	c3                   	ret    
c0100ff9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

c0101000 <fs_close>:
c0101000:	55                   	push   %ebp
c0101001:	89 e5                	mov    %esp,%ebp
c0101003:	8b 45 08             	mov    0x8(%ebp),%eax
c0101006:	5d                   	pop    %ebp
c0101007:	c6 04 c5 c0 19 15 c0 	movb   $0x0,-0x3feae640(,%eax,8)
c010100e:	00 
c010100f:	31 c0                	xor    %eax,%eax
c0101011:	c3                   	ret    
c0101012:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0101019:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0101020 <fs_read>:
c0101020:	55                   	push   %ebp
c0101021:	31 c0                	xor    %eax,%eax
c0101023:	89 e5                	mov    %esp,%ebp
c0101025:	57                   	push   %edi
c0101026:	56                   	push   %esi
c0101027:	53                   	push   %ebx
c0101028:	83 ec 0c             	sub    $0xc,%esp
c010102b:	8b 5d 08             	mov    0x8(%ebp),%ebx
c010102e:	83 fb 02             	cmp    $0x2,%ebx
c0101031:	7e 4d                	jle    c0101080 <fs_read+0x60>
c0101033:	80 3c dd c0 19 15 c0 	cmpb   $0x0,-0x3feae640(,%ebx,8)
c010103a:	00 
c010103b:	74 63                	je     c01010a0 <fs_read+0x80>
c010103d:	8d 53 fd             	lea    -0x3(%ebx),%edx
c0101040:	8b 04 dd c4 19 15 c0 	mov    -0x3feae63c(,%ebx,8),%eax
c0101047:	8b 75 10             	mov    0x10(%ebp),%esi
c010104a:	8d 0c 52             	lea    (%edx,%edx,2),%ecx
c010104d:	89 c7                	mov    %eax,%edi
c010104f:	8b 0c 8d 84 85 10 c0 	mov    -0x3fef7a7c(,%ecx,4),%ecx
c0101056:	01 f7                	add    %esi,%edi
c0101058:	39 cf                	cmp    %ecx,%edi
c010105a:	73 34                	jae    c0101090 <fs_read+0x70>
c010105c:	8d 14 52             	lea    (%edx,%edx,2),%edx
c010105f:	83 ec 04             	sub    $0x4,%esp
c0101062:	56                   	push   %esi
c0101063:	03 04 95 88 85 10 c0 	add    -0x3fef7a78(,%edx,4),%eax
c010106a:	50                   	push   %eax
c010106b:	ff 75 0c             	pushl  0xc(%ebp)
c010106e:	e8 ed 04 00 00       	call   c0101560 <ide_read>
c0101073:	01 34 dd c4 19 15 c0 	add    %esi,-0x3feae63c(,%ebx,8)
c010107a:	8b 45 10             	mov    0x10(%ebp),%eax
c010107d:	83 c4 10             	add    $0x10,%esp
c0101080:	8d 65 f4             	lea    -0xc(%ebp),%esp
c0101083:	5b                   	pop    %ebx
c0101084:	5e                   	pop    %esi
c0101085:	5f                   	pop    %edi
c0101086:	5d                   	pop    %ebp
c0101087:	c3                   	ret    
c0101088:	90                   	nop
c0101089:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0101090:	8d 71 ff             	lea    -0x1(%ecx),%esi
c0101093:	29 c6                	sub    %eax,%esi
c0101095:	89 75 10             	mov    %esi,0x10(%ebp)
c0101098:	eb c2                	jmp    c010105c <fs_read+0x3c>
c010109a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c01010a0:	83 ec 0c             	sub    $0xc,%esp
c01010a3:	68 5f 84 10 c0       	push   $0xc010845f
c01010a8:	68 52 85 10 c0       	push   $0xc0108552
c01010ad:	6a 3f                	push   $0x3f
c01010af:	68 4c 84 10 c0       	push   $0xc010844c
c01010b4:	68 b4 80 10 c0       	push   $0xc01080b4
c01010b9:	e8 22 06 00 00       	call   c01016e0 <printk>
c01010be:	b8 01 00 00 00       	mov    $0x1,%eax
c01010c3:	d6                   	(bad)  
c01010c4:	83 c4 20             	add    $0x20,%esp
c01010c7:	e9 71 ff ff ff       	jmp    c010103d <fs_read+0x1d>
c01010cc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

c01010d0 <fs_write>:
c01010d0:	55                   	push   %ebp
c01010d1:	89 e5                	mov    %esp,%ebp
c01010d3:	57                   	push   %edi
c01010d4:	56                   	push   %esi
c01010d5:	53                   	push   %ebx
c01010d6:	83 ec 0c             	sub    $0xc,%esp
c01010d9:	8b 5d 08             	mov    0x8(%ebp),%ebx
c01010dc:	8b 75 10             	mov    0x10(%ebp),%esi
c01010df:	8d 43 ff             	lea    -0x1(%ebx),%eax
c01010e2:	83 f8 01             	cmp    $0x1,%eax
c01010e5:	76 69                	jbe    c0101150 <fs_write+0x80>
c01010e7:	83 fb 02             	cmp    $0x2,%ebx
c01010ea:	0f 8e 86 00 00 00    	jle    c0101176 <fs_write+0xa6>
c01010f0:	80 3c dd c0 19 15 c0 	cmpb   $0x0,-0x3feae640(,%ebx,8)
c01010f7:	00 
c01010f8:	0f 84 82 00 00 00    	je     c0101180 <fs_write+0xb0>
c01010fe:	8d 4b fd             	lea    -0x3(%ebx),%ecx
c0101101:	8b 14 dd c4 19 15 c0 	mov    -0x3feae63c(,%ebx,8),%edx
c0101108:	8d 04 49             	lea    (%ecx,%ecx,2),%eax
c010110b:	8d 3c 16             	lea    (%esi,%edx,1),%edi
c010110e:	8b 04 85 84 85 10 c0 	mov    -0x3fef7a7c(,%eax,4),%eax
c0101115:	39 c7                	cmp    %eax,%edi
c0101117:	72 05                	jb     c010111e <fs_write+0x4e>
c0101119:	8d 70 ff             	lea    -0x1(%eax),%esi
c010111c:	29 d6                	sub    %edx,%esi
c010111e:	85 f6                	test   %esi,%esi
c0101120:	7e 54                	jle    c0101176 <fs_write+0xa6>
c0101122:	8d 04 49             	lea    (%ecx,%ecx,2),%eax
c0101125:	83 ec 04             	sub    $0x4,%esp
c0101128:	56                   	push   %esi
c0101129:	03 14 85 88 85 10 c0 	add    -0x3fef7a78(,%eax,4),%edx
c0101130:	52                   	push   %edx
c0101131:	ff 75 0c             	pushl  0xc(%ebp)
c0101134:	e8 67 04 00 00       	call   c01015a0 <ide_write>
c0101139:	01 34 dd c4 19 15 c0 	add    %esi,-0x3feae63c(,%ebx,8)
c0101140:	83 c4 10             	add    $0x10,%esp
c0101143:	8d 65 f4             	lea    -0xc(%ebp),%esp
c0101146:	89 f0                	mov    %esi,%eax
c0101148:	5b                   	pop    %ebx
c0101149:	5e                   	pop    %esi
c010114a:	5f                   	pop    %edi
c010114b:	5d                   	pop    %ebp
c010114c:	c3                   	ret    
c010114d:	8d 76 00             	lea    0x0(%esi),%esi
c0101150:	8b 5d 0c             	mov    0xc(%ebp),%ebx
c0101153:	85 f6                	test   %esi,%esi
c0101155:	8d 3c 33             	lea    (%ebx,%esi,1),%edi
c0101158:	7e 1c                	jle    c0101176 <fs_write+0xa6>
c010115a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0101160:	0f be 03             	movsbl (%ebx),%eax
c0101163:	83 ec 0c             	sub    $0xc,%esp
c0101166:	83 c3 01             	add    $0x1,%ebx
c0101169:	50                   	push   %eax
c010116a:	e8 11 06 00 00       	call   c0101780 <serial_printc>
c010116f:	83 c4 10             	add    $0x10,%esp
c0101172:	39 fb                	cmp    %edi,%ebx
c0101174:	75 ea                	jne    c0101160 <fs_write+0x90>
c0101176:	8d 65 f4             	lea    -0xc(%ebp),%esp
c0101179:	31 c0                	xor    %eax,%eax
c010117b:	5b                   	pop    %ebx
c010117c:	5e                   	pop    %esi
c010117d:	5f                   	pop    %edi
c010117e:	5d                   	pop    %ebp
c010117f:	c3                   	ret    
c0101180:	83 ec 0c             	sub    $0xc,%esp
c0101183:	68 5f 84 10 c0       	push   $0xc010845f
c0101188:	68 49 85 10 c0       	push   $0xc0108549
c010118d:	6a 4f                	push   $0x4f
c010118f:	68 4c 84 10 c0       	push   $0xc010844c
c0101194:	68 b4 80 10 c0       	push   $0xc01080b4
c0101199:	e8 42 05 00 00       	call   c01016e0 <printk>
c010119e:	b8 01 00 00 00       	mov    $0x1,%eax
c01011a3:	d6                   	(bad)  
c01011a4:	83 c4 20             	add    $0x20,%esp
c01011a7:	e9 52 ff ff ff       	jmp    c01010fe <fs_write+0x2e>
c01011ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

c01011b0 <fs_lseek>:
c01011b0:	55                   	push   %ebp
c01011b1:	31 c0                	xor    %eax,%eax
c01011b3:	89 e5                	mov    %esp,%ebp
c01011b5:	56                   	push   %esi
c01011b6:	53                   	push   %ebx
c01011b7:	8b 5d 08             	mov    0x8(%ebp),%ebx
c01011ba:	8b 75 10             	mov    0x10(%ebp),%esi
c01011bd:	83 fb 02             	cmp    $0x2,%ebx
c01011c0:	7e 1f                	jle    c01011e1 <fs_lseek+0x31>
c01011c2:	80 3c dd c0 19 15 c0 	cmpb   $0x0,-0x3feae640(,%ebx,8)
c01011c9:	00 
c01011ca:	74 24                	je     c01011f0 <fs_lseek+0x40>
c01011cc:	83 fe 01             	cmp    $0x1,%esi
c01011cf:	74 4b                	je     c010121c <fs_lseek+0x6c>
c01011d1:	83 fe 02             	cmp    $0x2,%esi
c01011d4:	74 7a                	je     c0101250 <fs_lseek+0xa0>
c01011d6:	85 f6                	test   %esi,%esi
c01011d8:	74 5e                	je     c0101238 <fs_lseek+0x88>
c01011da:	8b 04 dd c4 19 15 c0 	mov    -0x3feae63c(,%ebx,8),%eax
c01011e1:	8d 65 f8             	lea    -0x8(%ebp),%esp
c01011e4:	5b                   	pop    %ebx
c01011e5:	5e                   	pop    %esi
c01011e6:	5d                   	pop    %ebp
c01011e7:	c3                   	ret    
c01011e8:	90                   	nop
c01011e9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c01011f0:	83 ec 0c             	sub    $0xc,%esp
c01011f3:	68 5f 84 10 c0       	push   $0xc010845f
c01011f8:	68 40 85 10 c0       	push   $0xc0108540
c01011fd:	6a 5a                	push   $0x5a
c01011ff:	68 4c 84 10 c0       	push   $0xc010844c
c0101204:	68 b4 80 10 c0       	push   $0xc01080b4
c0101209:	e8 d2 04 00 00       	call   c01016e0 <printk>
c010120e:	b8 01 00 00 00       	mov    $0x1,%eax
c0101213:	d6                   	(bad)  
c0101214:	83 c4 20             	add    $0x20,%esp
c0101217:	83 fe 01             	cmp    $0x1,%esi
c010121a:	75 b5                	jne    c01011d1 <fs_lseek+0x21>
c010121c:	8b 45 0c             	mov    0xc(%ebp),%eax
c010121f:	03 04 dd c4 19 15 c0 	add    -0x3feae63c(,%ebx,8),%eax
c0101226:	89 04 dd c4 19 15 c0 	mov    %eax,-0x3feae63c(,%ebx,8)
c010122d:	8d 65 f8             	lea    -0x8(%ebp),%esp
c0101230:	5b                   	pop    %ebx
c0101231:	5e                   	pop    %esi
c0101232:	5d                   	pop    %ebp
c0101233:	c3                   	ret    
c0101234:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0101238:	8b 45 0c             	mov    0xc(%ebp),%eax
c010123b:	89 04 dd c4 19 15 c0 	mov    %eax,-0x3feae63c(,%ebx,8)
c0101242:	8d 65 f8             	lea    -0x8(%ebp),%esp
c0101245:	5b                   	pop    %ebx
c0101246:	5e                   	pop    %esi
c0101247:	5d                   	pop    %ebp
c0101248:	c3                   	ret    
c0101249:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0101250:	8d 44 5b f7          	lea    -0x9(%ebx,%ebx,2),%eax
c0101254:	8b 55 0c             	mov    0xc(%ebp),%edx
c0101257:	03 14 85 84 85 10 c0 	add    -0x3fef7a7c(,%eax,4),%edx
c010125e:	89 14 dd c4 19 15 c0 	mov    %edx,-0x3feae63c(,%ebx,8)
c0101265:	8d 65 f8             	lea    -0x8(%ebp),%esp
c0101268:	89 d0                	mov    %edx,%eax
c010126a:	5b                   	pop    %ebx
c010126b:	5e                   	pop    %esi
c010126c:	5d                   	pop    %ebp
c010126d:	c3                   	ret    
c010126e:	66 90                	xchg   %ax,%ax

c0101270 <buf_fetch>:
c0101270:	55                   	push   %ebp
c0101271:	89 c2                	mov    %eax,%edx
c0101273:	89 e5                	mov    %esp,%ebp
c0101275:	57                   	push   %edi
c0101276:	56                   	push   %esi
c0101277:	53                   	push   %ebx
c0101278:	89 c3                	mov    %eax,%ebx
c010127a:	83 e3 7f             	and    $0x7f,%ebx
c010127d:	89 d8                	mov    %ebx,%eax
c010127f:	83 ec 1c             	sub    $0x1c,%esp
c0101282:	c1 e0 09             	shl    $0x9,%eax
c0101285:	8d 0c d8             	lea    (%eax,%ebx,8),%ecx
c0101288:	8d 81 c0 1a 15 c0    	lea    -0x3feae540(%ecx),%eax
c010128e:	80 78 04 01          	cmpb   $0x1,0x4(%eax)
c0101292:	74 5c                	je     c01012f0 <buf_fetch+0x80>
c0101294:	89 d7                	mov    %edx,%edi
c0101296:	89 da                	mov    %ebx,%edx
c0101298:	c1 e2 09             	shl    $0x9,%edx
c010129b:	8d 0c da             	lea    (%edx,%ebx,8),%ecx
c010129e:	8d 91 c0 1a 15 c0    	lea    -0x3feae540(%ecx),%edx
c01012a4:	66 81 7a 04 01 01    	cmpw   $0x101,0x4(%edx)
c01012aa:	74 54                	je     c0101300 <buf_fetch+0x90>
c01012ac:	8d 72 06             	lea    0x6(%edx),%esi
c01012af:	83 ec 08             	sub    $0x8,%esp
c01012b2:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c01012b5:	57                   	push   %edi
c01012b6:	56                   	push   %esi
c01012b7:	e8 e4 01 00 00       	call   c01014a0 <disk_do_read>
c01012bc:	89 da                	mov    %ebx,%edx
c01012be:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c01012c1:	83 c4 10             	add    $0x10,%esp
c01012c4:	c1 e2 09             	shl    $0x9,%edx
c01012c7:	8d 0c da             	lea    (%edx,%ebx,8),%ecx
c01012ca:	c6 81 c4 1a 15 c0 01 	movb   $0x1,-0x3feae53c(%ecx)
c01012d1:	89 b9 c0 1a 15 c0    	mov    %edi,-0x3feae540(%ecx)
c01012d7:	c6 81 c5 1a 15 c0 00 	movb   $0x0,-0x3feae53b(%ecx)
c01012de:	8d 65 f4             	lea    -0xc(%ebp),%esp
c01012e1:	5b                   	pop    %ebx
c01012e2:	5e                   	pop    %esi
c01012e3:	5f                   	pop    %edi
c01012e4:	5d                   	pop    %ebp
c01012e5:	c3                   	ret    
c01012e6:	8d 76 00             	lea    0x0(%esi),%esi
c01012e9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
c01012f0:	39 91 c0 1a 15 c0    	cmp    %edx,-0x3feae540(%ecx)
c01012f6:	75 9c                	jne    c0101294 <buf_fetch+0x24>
c01012f8:	eb e4                	jmp    c01012de <buf_fetch+0x6e>
c01012fa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0101300:	8d 72 06             	lea    0x6(%edx),%esi
c0101303:	83 ec 08             	sub    $0x8,%esp
c0101306:	ff b1 c0 1a 15 c0    	pushl  -0x3feae540(%ecx)
c010130c:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c010130f:	56                   	push   %esi
c0101310:	e8 cb 01 00 00       	call   c01014e0 <disk_do_write>
c0101315:	83 c4 10             	add    $0x10,%esp
c0101318:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c010131b:	eb 92                	jmp    c01012af <buf_fetch+0x3f>
c010131d:	8d 76 00             	lea    0x0(%esi),%esi

c0101320 <buf_init>:
c0101320:	55                   	push   %ebp
c0101321:	b8 c4 1a 15 c0       	mov    $0xc0151ac4,%eax
c0101326:	89 e5                	mov    %esp,%ebp
c0101328:	90                   	nop
c0101329:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0101330:	c6 00 00             	movb   $0x0,(%eax)
c0101333:	05 08 02 00 00       	add    $0x208,%eax
c0101338:	3d c4 1e 16 c0       	cmp    $0xc0161ec4,%eax
c010133d:	75 f1                	jne    c0101330 <buf_init+0x10>
c010133f:	5d                   	pop    %ebp
c0101340:	c3                   	ret    
c0101341:	eb 0d                	jmp    c0101350 <buf_writeback>
c0101343:	90                   	nop
c0101344:	90                   	nop
c0101345:	90                   	nop
c0101346:	90                   	nop
c0101347:	90                   	nop
c0101348:	90                   	nop
c0101349:	90                   	nop
c010134a:	90                   	nop
c010134b:	90                   	nop
c010134c:	90                   	nop
c010134d:	90                   	nop
c010134e:	90                   	nop
c010134f:	90                   	nop

c0101350 <buf_writeback>:
c0101350:	55                   	push   %ebp
c0101351:	89 e5                	mov    %esp,%ebp
c0101353:	53                   	push   %ebx
c0101354:	bb c6 1a 15 c0       	mov    $0xc0151ac6,%ebx
c0101359:	83 ec 04             	sub    $0x4,%esp
c010135c:	eb 10                	jmp    c010136e <buf_writeback+0x1e>
c010135e:	66 90                	xchg   %ax,%ax
c0101360:	81 c3 08 02 00 00    	add    $0x208,%ebx
c0101366:	81 fb c6 1e 16 c0    	cmp    $0xc0161ec6,%ebx
c010136c:	74 32                	je     c01013a0 <buf_writeback+0x50>
c010136e:	80 7b ff 01          	cmpb   $0x1,-0x1(%ebx)
c0101372:	75 ec                	jne    c0101360 <buf_writeback+0x10>
c0101374:	83 ec 08             	sub    $0x8,%esp
c0101377:	ff 73 fa             	pushl  -0x6(%ebx)
c010137a:	53                   	push   %ebx
c010137b:	81 c3 08 02 00 00    	add    $0x208,%ebx
c0101381:	e8 5a 01 00 00       	call   c01014e0 <disk_do_write>
c0101386:	c6 83 f7 fd ff ff 00 	movb   $0x0,-0x209(%ebx)
c010138d:	83 c4 10             	add    $0x10,%esp
c0101390:	81 fb c6 1e 16 c0    	cmp    $0xc0161ec6,%ebx
c0101396:	75 d6                	jne    c010136e <buf_writeback+0x1e>
c0101398:	90                   	nop
c0101399:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c01013a0:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c01013a3:	c9                   	leave  
c01013a4:	c3                   	ret    
c01013a5:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c01013a9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c01013b0 <read_byte>:
c01013b0:	55                   	push   %ebp
c01013b1:	89 e5                	mov    %esp,%ebp
c01013b3:	53                   	push   %ebx
c01013b4:	83 ec 04             	sub    $0x4,%esp
c01013b7:	8b 5d 08             	mov    0x8(%ebp),%ebx
c01013ba:	89 d8                	mov    %ebx,%eax
c01013bc:	81 e3 ff 01 00 00    	and    $0x1ff,%ebx
c01013c2:	c1 e8 09             	shr    $0x9,%eax
c01013c5:	e8 a6 fe ff ff       	call   c0101270 <buf_fetch>
c01013ca:	0f b6 44 18 06       	movzbl 0x6(%eax,%ebx,1),%eax
c01013cf:	83 c4 04             	add    $0x4,%esp
c01013d2:	5b                   	pop    %ebx
c01013d3:	5d                   	pop    %ebp
c01013d4:	c3                   	ret    
c01013d5:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c01013d9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c01013e0 <write_byte>:
c01013e0:	55                   	push   %ebp
c01013e1:	89 e5                	mov    %esp,%ebp
c01013e3:	56                   	push   %esi
c01013e4:	53                   	push   %ebx
c01013e5:	8b 5d 08             	mov    0x8(%ebp),%ebx
c01013e8:	8b 75 0c             	mov    0xc(%ebp),%esi
c01013eb:	89 d8                	mov    %ebx,%eax
c01013ed:	81 e3 ff 01 00 00    	and    $0x1ff,%ebx
c01013f3:	c1 e8 09             	shr    $0x9,%eax
c01013f6:	e8 75 fe ff ff       	call   c0101270 <buf_fetch>
c01013fb:	89 f2                	mov    %esi,%edx
c01013fd:	88 54 18 06          	mov    %dl,0x6(%eax,%ebx,1)
c0101401:	c6 40 05 01          	movb   $0x1,0x5(%eax)
c0101405:	5b                   	pop    %ebx
c0101406:	5e                   	pop    %esi
c0101407:	5d                   	pop    %ebp
c0101408:	c3                   	ret    
c0101409:	66 90                	xchg   %ax,%ax
c010140b:	66 90                	xchg   %ax,%ax
c010140d:	66 90                	xchg   %ax,%ax
c010140f:	90                   	nop

c0101410 <dma_prepare>:
c0101410:	55                   	push   %ebp
c0101411:	89 e5                	mov    %esp,%ebp
c0101413:	83 ec 08             	sub    $0x8,%esp
c0101416:	68 14 87 10 c0       	push   $0xc0108714
c010141b:	6a 1d                	push   $0x1d
c010141d:	68 ac 86 10 c0       	push   $0xc01086ac
c0101422:	68 c8 86 10 c0       	push   $0xc01086c8
c0101427:	e8 b4 02 00 00       	call   c01016e0 <printk>
c010142c:	b8 01 00 00 00       	mov    $0x1,%eax
c0101431:	d6                   	(bad)  
c0101432:	83 c4 10             	add    $0x10,%esp
c0101435:	c9                   	leave  
c0101436:	c3                   	ret    
c0101437:	89 f6                	mov    %esi,%esi
c0101439:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0101440 <dma_issue_read>:
c0101440:	55                   	push   %ebp
c0101441:	ba 40 c0 ff ff       	mov    $0xffffc040,%edx
c0101446:	89 e5                	mov    %esp,%ebp
c0101448:	ec                   	in     (%dx),%al
c0101449:	83 c8 09             	or     $0x9,%eax
c010144c:	ee                   	out    %al,(%dx)
c010144d:	5d                   	pop    %ebp
c010144e:	c3                   	ret    
c010144f:	90                   	nop

c0101450 <ide_prepare>:
c0101450:	55                   	push   %ebp
c0101451:	89 c1                	mov    %eax,%ecx
c0101453:	ba f7 01 00 00       	mov    $0x1f7,%edx
c0101458:	89 e5                	mov    %esp,%ebp
c010145a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0101460:	ec                   	in     (%dx),%al
c0101461:	83 e0 c0             	and    $0xffffffc0,%eax
c0101464:	3c 40                	cmp    $0x40,%al
c0101466:	75 f8                	jne    c0101460 <ide_prepare+0x10>
c0101468:	ba f1 01 00 00       	mov    $0x1f1,%edx
c010146d:	31 c0                	xor    %eax,%eax
c010146f:	ee                   	out    %al,(%dx)
c0101470:	b8 01 00 00 00       	mov    $0x1,%eax
c0101475:	b2 f2                	mov    $0xf2,%dl
c0101477:	ee                   	out    %al,(%dx)
c0101478:	b2 f3                	mov    $0xf3,%dl
c010147a:	89 c8                	mov    %ecx,%eax
c010147c:	ee                   	out    %al,(%dx)
c010147d:	89 c8                	mov    %ecx,%eax
c010147f:	b2 f4                	mov    $0xf4,%dl
c0101481:	c1 e8 08             	shr    $0x8,%eax
c0101484:	ee                   	out    %al,(%dx)
c0101485:	89 c8                	mov    %ecx,%eax
c0101487:	b2 f5                	mov    $0xf5,%dl
c0101489:	c1 e8 10             	shr    $0x10,%eax
c010148c:	ee                   	out    %al,(%dx)
c010148d:	89 c8                	mov    %ecx,%eax
c010148f:	b2 f6                	mov    $0xf6,%dl
c0101491:	c1 e8 18             	shr    $0x18,%eax
c0101494:	83 c8 e0             	or     $0xffffffe0,%eax
c0101497:	ee                   	out    %al,(%dx)
c0101498:	5d                   	pop    %ebp
c0101499:	c3                   	ret    
c010149a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

c01014a0 <disk_do_read>:
c01014a0:	55                   	push   %ebp
c01014a1:	89 e5                	mov    %esp,%ebp
c01014a3:	53                   	push   %ebx
c01014a4:	8b 45 0c             	mov    0xc(%ebp),%eax
c01014a7:	e8 a4 ff ff ff       	call   c0101450 <ide_prepare>
c01014ac:	ba f7 01 00 00       	mov    $0x1f7,%edx
c01014b1:	b8 20 00 00 00       	mov    $0x20,%eax
c01014b6:	ee                   	out    %al,(%dx)
c01014b7:	8b 4d 08             	mov    0x8(%ebp),%ecx
c01014ba:	b2 f0                	mov    $0xf0,%dl
c01014bc:	8d 99 00 02 00 00    	lea    0x200(%ecx),%ebx
c01014c2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c01014c8:	ed                   	in     (%dx),%eax
c01014c9:	89 01                	mov    %eax,(%ecx)
c01014cb:	83 c1 04             	add    $0x4,%ecx
c01014ce:	39 d9                	cmp    %ebx,%ecx
c01014d0:	75 f6                	jne    c01014c8 <disk_do_read+0x28>
c01014d2:	5b                   	pop    %ebx
c01014d3:	5d                   	pop    %ebp
c01014d4:	c3                   	ret    
c01014d5:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c01014d9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c01014e0 <disk_do_write>:
c01014e0:	55                   	push   %ebp
c01014e1:	89 e5                	mov    %esp,%ebp
c01014e3:	53                   	push   %ebx
c01014e4:	8b 45 0c             	mov    0xc(%ebp),%eax
c01014e7:	e8 64 ff ff ff       	call   c0101450 <ide_prepare>
c01014ec:	ba f7 01 00 00       	mov    $0x1f7,%edx
c01014f1:	b8 30 00 00 00       	mov    $0x30,%eax
c01014f6:	ee                   	out    %al,(%dx)
c01014f7:	8b 4d 08             	mov    0x8(%ebp),%ecx
c01014fa:	b2 f0                	mov    $0xf0,%dl
c01014fc:	8d 99 00 02 00 00    	lea    0x200(%ecx),%ebx
c0101502:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0101508:	8b 01                	mov    (%ecx),%eax
c010150a:	ef                   	out    %eax,(%dx)
c010150b:	83 c1 04             	add    $0x4,%ecx
c010150e:	39 d9                	cmp    %ebx,%ecx
c0101510:	75 f6                	jne    c0101508 <disk_do_write+0x28>
c0101512:	5b                   	pop    %ebx
c0101513:	5d                   	pop    %ebp
c0101514:	c3                   	ret    
c0101515:	66 90                	xchg   %ax,%ax
c0101517:	66 90                	xchg   %ax,%ax
c0101519:	66 90                	xchg   %ax,%ax
c010151b:	66 90                	xchg   %ax,%ax
c010151d:	66 90                	xchg   %ax,%ax
c010151f:	90                   	nop

c0101520 <ide_intr>:
c0101520:	55                   	push   %ebp
c0101521:	c7 05 c4 1e 16 c0 01 	movl   $0x1,0xc0161ec4
c0101528:	00 00 00 
c010152b:	89 e5                	mov    %esp,%ebp
c010152d:	5d                   	pop    %ebp
c010152e:	c3                   	ret    
c010152f:	90                   	nop

c0101530 <ide_writeback>:
c0101530:	a1 c0 1e 16 c0       	mov    0xc0161ec0,%eax
c0101535:	83 c0 01             	add    $0x1,%eax
c0101538:	83 f8 64             	cmp    $0x64,%eax
c010153b:	a3 c0 1e 16 c0       	mov    %eax,0xc0161ec0
c0101540:	74 06                	je     c0101548 <ide_writeback+0x18>
c0101542:	c3                   	ret    
c0101543:	90                   	nop
c0101544:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0101548:	55                   	push   %ebp
c0101549:	89 e5                	mov    %esp,%ebp
c010154b:	83 ec 08             	sub    $0x8,%esp
c010154e:	e8 fd fd ff ff       	call   c0101350 <buf_writeback>
c0101553:	c7 05 c0 1e 16 c0 00 	movl   $0x0,0xc0161ec0
c010155a:	00 00 00 
c010155d:	c9                   	leave  
c010155e:	c3                   	ret    
c010155f:	90                   	nop

c0101560 <ide_read>:
c0101560:	55                   	push   %ebp
c0101561:	89 e5                	mov    %esp,%ebp
c0101563:	57                   	push   %edi
c0101564:	56                   	push   %esi
c0101565:	53                   	push   %ebx
c0101566:	83 ec 0c             	sub    $0xc,%esp
c0101569:	8b 5d 0c             	mov    0xc(%ebp),%ebx
c010156c:	8b 45 10             	mov    0x10(%ebp),%eax
c010156f:	8b 7d 08             	mov    0x8(%ebp),%edi
c0101572:	8d 34 18             	lea    (%eax,%ebx,1),%esi
c0101575:	29 df                	sub    %ebx,%edi
c0101577:	85 c0                	test   %eax,%eax
c0101579:	74 1b                	je     c0101596 <ide_read+0x36>
c010157b:	90                   	nop
c010157c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0101580:	83 ec 0c             	sub    $0xc,%esp
c0101583:	53                   	push   %ebx
c0101584:	e8 27 fe ff ff       	call   c01013b0 <read_byte>
c0101589:	88 04 1f             	mov    %al,(%edi,%ebx,1)
c010158c:	83 c3 01             	add    $0x1,%ebx
c010158f:	83 c4 10             	add    $0x10,%esp
c0101592:	39 f3                	cmp    %esi,%ebx
c0101594:	75 ea                	jne    c0101580 <ide_read+0x20>
c0101596:	8d 65 f4             	lea    -0xc(%ebp),%esp
c0101599:	5b                   	pop    %ebx
c010159a:	5e                   	pop    %esi
c010159b:	5f                   	pop    %edi
c010159c:	5d                   	pop    %ebp
c010159d:	c3                   	ret    
c010159e:	66 90                	xchg   %ax,%ax

c01015a0 <ide_write>:
c01015a0:	55                   	push   %ebp
c01015a1:	89 e5                	mov    %esp,%ebp
c01015a3:	57                   	push   %edi
c01015a4:	56                   	push   %esi
c01015a5:	53                   	push   %ebx
c01015a6:	83 ec 0c             	sub    $0xc,%esp
c01015a9:	8b 5d 0c             	mov    0xc(%ebp),%ebx
c01015ac:	8b 45 10             	mov    0x10(%ebp),%eax
c01015af:	8b 7d 08             	mov    0x8(%ebp),%edi
c01015b2:	8d 34 18             	lea    (%eax,%ebx,1),%esi
c01015b5:	29 df                	sub    %ebx,%edi
c01015b7:	85 c0                	test   %eax,%eax
c01015b9:	74 1d                	je     c01015d8 <ide_write+0x38>
c01015bb:	90                   	nop
c01015bc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c01015c0:	0f b6 04 1f          	movzbl (%edi,%ebx,1),%eax
c01015c4:	83 ec 08             	sub    $0x8,%esp
c01015c7:	50                   	push   %eax
c01015c8:	53                   	push   %ebx
c01015c9:	83 c3 01             	add    $0x1,%ebx
c01015cc:	e8 0f fe ff ff       	call   c01013e0 <write_byte>
c01015d1:	83 c4 10             	add    $0x10,%esp
c01015d4:	39 f3                	cmp    %esi,%ebx
c01015d6:	75 e8                	jne    c01015c0 <ide_write+0x20>
c01015d8:	8d 65 f4             	lea    -0xc(%ebp),%esp
c01015db:	5b                   	pop    %ebx
c01015dc:	5e                   	pop    %esi
c01015dd:	5f                   	pop    %edi
c01015de:	5d                   	pop    %ebp
c01015df:	c3                   	ret    

c01015e0 <clear_ide_intr>:
c01015e0:	55                   	push   %ebp
c01015e1:	c7 05 c4 1e 16 c0 00 	movl   $0x0,0xc0161ec4
c01015e8:	00 00 00 
c01015eb:	89 e5                	mov    %esp,%ebp
c01015ed:	5d                   	pop    %ebp
c01015ee:	c3                   	ret    
c01015ef:	90                   	nop

c01015f0 <wait_ide_intr>:
c01015f0:	a1 c4 1e 16 c0       	mov    0xc0161ec4,%eax
c01015f5:	55                   	push   %ebp
c01015f6:	89 e5                	mov    %esp,%ebp
c01015f8:	85 c0                	test   %eax,%eax
c01015fa:	75 0e                	jne    c010160a <wait_ide_intr+0x1a>
c01015fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0101600:	f4                   	hlt    
c0101601:	a1 c4 1e 16 c0       	mov    0xc0161ec4,%eax
c0101606:	85 c0                	test   %eax,%eax
c0101608:	74 f6                	je     c0101600 <wait_ide_intr+0x10>
c010160a:	c7 05 c4 1e 16 c0 00 	movl   $0x0,0xc0161ec4
c0101611:	00 00 00 
c0101614:	5d                   	pop    %ebp
c0101615:	c3                   	ret    
c0101616:	8d 76 00             	lea    0x0(%esi),%esi
c0101619:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0101620 <init_ide>:
c0101620:	55                   	push   %ebp
c0101621:	89 e5                	mov    %esp,%ebp
c0101623:	83 ec 08             	sub    $0x8,%esp
c0101626:	e8 f5 fc ff ff       	call   c0101320 <buf_init>
c010162b:	83 ec 08             	sub    $0x8,%esp
c010162e:	68 30 15 10 c0       	push   $0xc0101530
c0101633:	6a 00                	push   $0x0
c0101635:	e8 36 f0 ff ff       	call   c0100670 <add_irq_handle>
c010163a:	58                   	pop    %eax
c010163b:	5a                   	pop    %edx
c010163c:	68 20 15 10 c0       	push   $0xc0101520
c0101641:	6a 0e                	push   $0xe
c0101643:	e8 28 f0 ff ff       	call   c0100670 <add_irq_handle>
c0101648:	83 c4 10             	add    $0x10,%esp
c010164b:	c9                   	leave  
c010164c:	c3                   	ret    
c010164d:	66 90                	xchg   %ax,%ax
c010164f:	90                   	nop

c0101650 <ramdisk_read>:
c0101650:	55                   	push   %ebp
c0101651:	89 e5                	mov    %esp,%ebp
c0101653:	53                   	push   %ebx
c0101654:	8b 55 0c             	mov    0xc(%ebp),%edx
c0101657:	8b 4d 10             	mov    0x10(%ebp),%ecx
c010165a:	8b 5d 08             	mov    0x8(%ebp),%ebx
c010165d:	8d 04 0a             	lea    (%edx,%ecx,1),%eax
c0101660:	3d ff ff 09 00       	cmp    $0x9ffff,%eax
c0101665:	76 06                	jbe    c010166d <ramdisk_read+0x1d>
c0101667:	b8 01 00 00 00       	mov    $0x1,%eax
c010166c:	d6                   	(bad)  
c010166d:	89 5d 08             	mov    %ebx,0x8(%ebp)
c0101670:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0101673:	89 55 0c             	mov    %edx,0xc(%ebp)
c0101676:	5b                   	pop    %ebx
c0101677:	5d                   	pop    %ebp
c0101678:	e9 23 01 00 00       	jmp    c01017a0 <memcpy>
c010167d:	8d 76 00             	lea    0x0(%esi),%esi

c0101680 <ramdisk_write>:
c0101680:	55                   	push   %ebp
c0101681:	89 e5                	mov    %esp,%ebp
c0101683:	53                   	push   %ebx
c0101684:	8b 55 0c             	mov    0xc(%ebp),%edx
c0101687:	8b 4d 10             	mov    0x10(%ebp),%ecx
c010168a:	8b 5d 08             	mov    0x8(%ebp),%ebx
c010168d:	8d 04 0a             	lea    (%edx,%ecx,1),%eax
c0101690:	3d ff ff 09 00       	cmp    $0x9ffff,%eax
c0101695:	76 06                	jbe    c010169d <ramdisk_write+0x1d>
c0101697:	b8 01 00 00 00       	mov    $0x1,%eax
c010169c:	d6                   	(bad)  
c010169d:	89 5d 0c             	mov    %ebx,0xc(%ebp)
c01016a0:	89 4d 10             	mov    %ecx,0x10(%ebp)
c01016a3:	89 55 08             	mov    %edx,0x8(%ebp)
c01016a6:	5b                   	pop    %ebx
c01016a7:	5d                   	pop    %ebp
c01016a8:	e9 f3 00 00 00       	jmp    c01017a0 <memcpy>
c01016ad:	66 90                	xchg   %ax,%ax
c01016af:	90                   	nop

c01016b0 <sbrk>:
c01016b0:	55                   	push   %ebp
c01016b1:	89 e5                	mov    %esp,%ebp
c01016b3:	83 ec 08             	sub    $0x8,%esp
c01016b6:	68 36 87 10 c0       	push   $0xc0108736
c01016bb:	6a 08                	push   $0x8
c01016bd:	68 20 87 10 c0       	push   $0xc0108720
c01016c2:	68 f0 83 10 c0       	push   $0xc01083f0
c01016c7:	e8 14 00 00 00       	call   c01016e0 <printk>
c01016cc:	b8 01 00 00 00       	mov    $0x1,%eax
c01016d1:	d6                   	(bad)  
c01016d2:	30 c0                	xor    %al,%al
c01016d4:	c9                   	leave  
c01016d5:	c3                   	ret    
c01016d6:	66 90                	xchg   %ax,%ax
c01016d8:	66 90                	xchg   %ax,%ax
c01016da:	66 90                	xchg   %ax,%ax
c01016dc:	66 90                	xchg   %ax,%ax
c01016de:	66 90                	xchg   %ax,%ax

c01016e0 <printk>:
c01016e0:	55                   	push   %ebp
c01016e1:	89 e5                	mov    %esp,%ebp
c01016e3:	56                   	push   %esi
c01016e4:	53                   	push   %ebx
c01016e5:	8d 45 0c             	lea    0xc(%ebp),%eax
c01016e8:	50                   	push   %eax
c01016e9:	ff 75 08             	pushl  0x8(%ebp)
c01016ec:	68 00 01 00 00       	push   $0x100
c01016f1:	68 00 1f 16 c0       	push   $0xc0161f00
c01016f6:	e8 75 02 00 00       	call   c0101970 <vsnprintf>
c01016fb:	83 c4 10             	add    $0x10,%esp
c01016fe:	85 c0                	test   %eax,%eax
c0101700:	89 c6                	mov    %eax,%esi
c0101702:	7e 26                	jle    c010172a <printk+0x4a>
c0101704:	31 db                	xor    %ebx,%ebx
c0101706:	8d 76 00             	lea    0x0(%esi),%esi
c0101709:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
c0101710:	0f be 93 00 1f 16 c0 	movsbl -0x3fe9e100(%ebx),%edx
c0101717:	83 ec 0c             	sub    $0xc,%esp
c010171a:	83 c3 01             	add    $0x1,%ebx
c010171d:	52                   	push   %edx
c010171e:	e8 5d 00 00 00       	call   c0101780 <serial_printc>
c0101723:	83 c4 10             	add    $0x10,%esp
c0101726:	39 f3                	cmp    %esi,%ebx
c0101728:	75 e6                	jne    c0101710 <printk+0x30>
c010172a:	8d 65 f8             	lea    -0x8(%ebp),%esp
c010172d:	5b                   	pop    %ebx
c010172e:	5e                   	pop    %esi
c010172f:	5d                   	pop    %ebp
c0101730:	c3                   	ret    
c0101731:	66 90                	xchg   %ax,%ax
c0101733:	66 90                	xchg   %ax,%ax
c0101735:	66 90                	xchg   %ax,%ax
c0101737:	66 90                	xchg   %ax,%ax
c0101739:	66 90                	xchg   %ax,%ax
c010173b:	66 90                	xchg   %ax,%ax
c010173d:	66 90                	xchg   %ax,%ax
c010173f:	90                   	nop

c0101740 <init_serial>:
c0101740:	55                   	push   %ebp
c0101741:	ba f9 03 00 00       	mov    $0x3f9,%edx
c0101746:	31 c0                	xor    %eax,%eax
c0101748:	89 e5                	mov    %esp,%ebp
c010174a:	ee                   	out    %al,(%dx)
c010174b:	b8 80 ff ff ff       	mov    $0xffffff80,%eax
c0101750:	b2 fb                	mov    $0xfb,%dl
c0101752:	ee                   	out    %al,(%dx)
c0101753:	b8 01 00 00 00       	mov    $0x1,%eax
c0101758:	b2 f8                	mov    $0xf8,%dl
c010175a:	ee                   	out    %al,(%dx)
c010175b:	31 c0                	xor    %eax,%eax
c010175d:	b2 f9                	mov    $0xf9,%dl
c010175f:	ee                   	out    %al,(%dx)
c0101760:	b8 03 00 00 00       	mov    $0x3,%eax
c0101765:	b2 fb                	mov    $0xfb,%dl
c0101767:	ee                   	out    %al,(%dx)
c0101768:	b8 c7 ff ff ff       	mov    $0xffffffc7,%eax
c010176d:	b2 fa                	mov    $0xfa,%dl
c010176f:	ee                   	out    %al,(%dx)
c0101770:	b8 0b 00 00 00       	mov    $0xb,%eax
c0101775:	b2 fc                	mov    $0xfc,%dl
c0101777:	ee                   	out    %al,(%dx)
c0101778:	5d                   	pop    %ebp
c0101779:	c3                   	ret    
c010177a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

c0101780 <serial_printc>:
c0101780:	55                   	push   %ebp
c0101781:	ba fd 03 00 00       	mov    $0x3fd,%edx
c0101786:	89 e5                	mov    %esp,%ebp
c0101788:	8b 4d 08             	mov    0x8(%ebp),%ecx
c010178b:	90                   	nop
c010178c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0101790:	ec                   	in     (%dx),%al
c0101791:	a8 20                	test   $0x20,%al
c0101793:	74 fb                	je     c0101790 <serial_printc+0x10>
c0101795:	ba f8 03 00 00       	mov    $0x3f8,%edx
c010179a:	89 c8                	mov    %ecx,%eax
c010179c:	ee                   	out    %al,(%dx)
c010179d:	5d                   	pop    %ebp
c010179e:	c3                   	ret    
c010179f:	90                   	nop

c01017a0 <memcpy>:
c01017a0:	55                   	push   %ebp
c01017a1:	89 e5                	mov    %esp,%ebp
c01017a3:	56                   	push   %esi
c01017a4:	57                   	push   %edi
c01017a5:	53                   	push   %ebx
c01017a6:	8b 7d 08             	mov    0x8(%ebp),%edi
c01017a9:	8b 4d 10             	mov    0x10(%ebp),%ecx
c01017ac:	8b 75 0c             	mov    0xc(%ebp),%esi
c01017af:	fc                   	cld    
c01017b0:	83 f9 08             	cmp    $0x8,%ecx
c01017b3:	76 26                	jbe    c01017db <memcpy+0x3b>
c01017b5:	89 fa                	mov    %edi,%edx
c01017b7:	89 cb                	mov    %ecx,%ebx
c01017b9:	83 e2 03             	and    $0x3,%edx
c01017bc:	74 10                	je     c01017ce <memcpy+0x2e>
c01017be:	b9 04 00 00 00       	mov    $0x4,%ecx
c01017c3:	29 d1                	sub    %edx,%ecx
c01017c5:	83 e1 03             	and    $0x3,%ecx
c01017c8:	29 cb                	sub    %ecx,%ebx
c01017ca:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
c01017cc:	89 d9                	mov    %ebx,%ecx
c01017ce:	c1 e9 02             	shr    $0x2,%ecx
c01017d1:	8d 76 00             	lea    0x0(%esi),%esi
c01017d4:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
c01017d6:	89 d9                	mov    %ebx,%ecx
c01017d8:	83 e1 03             	and    $0x3,%ecx
c01017db:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
c01017dd:	8b 45 08             	mov    0x8(%ebp),%eax
c01017e0:	8d 65 f4             	lea    -0xc(%ebp),%esp
c01017e3:	5b                   	pop    %ebx
c01017e4:	5f                   	pop    %edi
c01017e5:	5e                   	pop    %esi
c01017e6:	c9                   	leave  
c01017e7:	c3                   	ret    

c01017e8 <memset>:
c01017e8:	55                   	push   %ebp
c01017e9:	89 e5                	mov    %esp,%ebp
c01017eb:	57                   	push   %edi
c01017ec:	8b 7d 08             	mov    0x8(%ebp),%edi
c01017ef:	0f b6 45 0c          	movzbl 0xc(%ebp),%eax
c01017f3:	8b 4d 10             	mov    0x10(%ebp),%ecx
c01017f6:	fc                   	cld    
c01017f7:	83 f9 10             	cmp    $0x10,%ecx
c01017fa:	76 69                	jbe    c0101865 <memset+0x7d>
c01017fc:	f7 c7 07 00 00 00    	test   $0x7,%edi
c0101802:	74 4c                	je     c0101850 <memset+0x68>
c0101804:	88 07                	mov    %al,(%edi)
c0101806:	47                   	inc    %edi
c0101807:	49                   	dec    %ecx
c0101808:	f7 c7 07 00 00 00    	test   $0x7,%edi
c010180e:	74 40                	je     c0101850 <memset+0x68>
c0101810:	88 07                	mov    %al,(%edi)
c0101812:	47                   	inc    %edi
c0101813:	49                   	dec    %ecx
c0101814:	f7 c7 07 00 00 00    	test   $0x7,%edi
c010181a:	74 34                	je     c0101850 <memset+0x68>
c010181c:	88 07                	mov    %al,(%edi)
c010181e:	47                   	inc    %edi
c010181f:	49                   	dec    %ecx
c0101820:	f7 c7 07 00 00 00    	test   $0x7,%edi
c0101826:	74 28                	je     c0101850 <memset+0x68>
c0101828:	88 07                	mov    %al,(%edi)
c010182a:	47                   	inc    %edi
c010182b:	49                   	dec    %ecx
c010182c:	f7 c7 07 00 00 00    	test   $0x7,%edi
c0101832:	74 1c                	je     c0101850 <memset+0x68>
c0101834:	88 07                	mov    %al,(%edi)
c0101836:	47                   	inc    %edi
c0101837:	49                   	dec    %ecx
c0101838:	f7 c7 07 00 00 00    	test   $0x7,%edi
c010183e:	74 10                	je     c0101850 <memset+0x68>
c0101840:	88 07                	mov    %al,(%edi)
c0101842:	47                   	inc    %edi
c0101843:	49                   	dec    %ecx
c0101844:	f7 c7 07 00 00 00    	test   $0x7,%edi
c010184a:	74 04                	je     c0101850 <memset+0x68>
c010184c:	88 07                	mov    %al,(%edi)
c010184e:	47                   	inc    %edi
c010184f:	49                   	dec    %ecx
c0101850:	88 c4                	mov    %al,%ah
c0101852:	89 c2                	mov    %eax,%edx
c0101854:	c1 e2 10             	shl    $0x10,%edx
c0101857:	09 d0                	or     %edx,%eax
c0101859:	89 ca                	mov    %ecx,%edx
c010185b:	c1 e9 02             	shr    $0x2,%ecx
c010185e:	83 e2 03             	and    $0x3,%edx
c0101861:	f3 ab                	rep stos %eax,%es:(%edi)
c0101863:	89 d1                	mov    %edx,%ecx
c0101865:	f3 aa                	rep stos %al,%es:(%edi)
c0101867:	8b 45 08             	mov    0x8(%ebp),%eax
c010186a:	8d 65 fc             	lea    -0x4(%ebp),%esp
c010186d:	5f                   	pop    %edi
c010186e:	c9                   	leave  
c010186f:	c3                   	ret    

c0101870 <strcmp>:
c0101870:	55                   	push   %ebp
c0101871:	89 e5                	mov    %esp,%ebp
c0101873:	8b 45 08             	mov    0x8(%ebp),%eax
c0101876:	8b 55 0c             	mov    0xc(%ebp),%edx
c0101879:	53                   	push   %ebx
c010187a:	89 c1                	mov    %eax,%ecx
c010187c:	09 d1                	or     %edx,%ecx
c010187e:	83 e1 03             	and    $0x3,%ecx
c0101881:	75 17                	jne    c010189a <strcmp+0x2a>
c0101883:	8b 08                	mov    (%eax),%ecx
c0101885:	3b 0a                	cmp    (%edx),%ecx
c0101887:	74 33                	je     c01018bc <strcmp+0x4c>
c0101889:	eb 0f                	jmp    c010189a <strcmp+0x2a>
c010188b:	90                   	nop
c010188c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0101890:	3a 0a                	cmp    (%edx),%cl
c0101892:	75 0d                	jne    c01018a1 <strcmp+0x31>
c0101894:	83 c0 01             	add    $0x1,%eax
c0101897:	83 c2 01             	add    $0x1,%edx
c010189a:	0f b6 08             	movzbl (%eax),%ecx
c010189d:	84 c9                	test   %cl,%cl
c010189f:	75 ef                	jne    c0101890 <strcmp+0x20>
c01018a1:	0f b6 00             	movzbl (%eax),%eax
c01018a4:	0f b6 12             	movzbl (%edx),%edx
c01018a7:	5b                   	pop    %ebx
c01018a8:	5d                   	pop    %ebp
c01018a9:	29 d0                	sub    %edx,%eax
c01018ab:	c3                   	ret    
c01018ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c01018b0:	83 c0 04             	add    $0x4,%eax
c01018b3:	83 c2 04             	add    $0x4,%edx
c01018b6:	8b 08                	mov    (%eax),%ecx
c01018b8:	3b 0a                	cmp    (%edx),%ecx
c01018ba:	75 de                	jne    c010189a <strcmp+0x2a>
c01018bc:	8d 99 ff fe fe fe    	lea    -0x1010101(%ecx),%ebx
c01018c2:	f7 d1                	not    %ecx
c01018c4:	21 cb                	and    %ecx,%ebx
c01018c6:	81 e3 80 80 80 80    	and    $0x80808080,%ebx
c01018cc:	74 e2                	je     c01018b0 <strcmp+0x40>
c01018ce:	31 c0                	xor    %eax,%eax
c01018d0:	5b                   	pop    %ebx
c01018d1:	5d                   	pop    %ebp
c01018d2:	c3                   	ret    
c01018d3:	66 90                	xchg   %ax,%ax
c01018d5:	66 90                	xchg   %ax,%ax
c01018d7:	66 90                	xchg   %ax,%ax
c01018d9:	66 90                	xchg   %ax,%ax
c01018db:	66 90                	xchg   %ax,%ax
c01018dd:	66 90                	xchg   %ax,%ax
c01018df:	90                   	nop

c01018e0 <_vsnprintf_r>:
c01018e0:	55                   	push   %ebp
c01018e1:	89 e5                	mov    %esp,%ebp
c01018e3:	56                   	push   %esi
c01018e4:	53                   	push   %ebx
c01018e5:	83 c4 80             	add    $0xffffff80,%esp
c01018e8:	8b 5d 10             	mov    0x10(%ebp),%ebx
c01018eb:	8b 75 08             	mov    0x8(%ebp),%esi
c01018ee:	8b 45 0c             	mov    0xc(%ebp),%eax
c01018f1:	85 db                	test   %ebx,%ebx
c01018f3:	78 63                	js     c0101958 <_vsnprintf_r+0x78>
c01018f5:	ba 08 02 00 00       	mov    $0x208,%edx
c01018fa:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
c01018ff:	66 89 55 9c          	mov    %dx,-0x64(%ebp)
c0101903:	8d 53 ff             	lea    -0x1(%ebx),%edx
c0101906:	89 45 90             	mov    %eax,-0x70(%ebp)
c0101909:	89 45 a0             	mov    %eax,-0x60(%ebp)
c010190c:	31 c0                	xor    %eax,%eax
c010190e:	85 db                	test   %ebx,%ebx
c0101910:	0f 45 c2             	cmovne %edx,%eax
c0101913:	89 45 98             	mov    %eax,-0x68(%ebp)
c0101916:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c0101919:	8b 45 18             	mov    0x18(%ebp),%eax
c010191c:	89 34 24             	mov    %esi,(%esp)
c010191f:	66 89 4d 9e          	mov    %cx,-0x62(%ebp)
c0101923:	89 44 24 0c          	mov    %eax,0xc(%esp)
c0101927:	8b 45 14             	mov    0x14(%ebp),%eax
c010192a:	89 44 24 08          	mov    %eax,0x8(%esp)
c010192e:	8d 45 90             	lea    -0x70(%ebp),%eax
c0101931:	89 44 24 04          	mov    %eax,0x4(%esp)
c0101935:	e8 86 00 00 00       	call   c01019c0 <_svfprintf_r>
c010193a:	83 f8 ff             	cmp    $0xffffffff,%eax
c010193d:	7c 11                	jl     c0101950 <_vsnprintf_r+0x70>
c010193f:	85 db                	test   %ebx,%ebx
c0101941:	74 06                	je     c0101949 <_vsnprintf_r+0x69>
c0101943:	8b 55 90             	mov    -0x70(%ebp),%edx
c0101946:	c6 02 00             	movb   $0x0,(%edx)
c0101949:	83 ec 80             	sub    $0xffffff80,%esp
c010194c:	5b                   	pop    %ebx
c010194d:	5e                   	pop    %esi
c010194e:	5d                   	pop    %ebp
c010194f:	c3                   	ret    
c0101950:	c7 06 8b 00 00 00    	movl   $0x8b,(%esi)
c0101956:	eb e7                	jmp    c010193f <_vsnprintf_r+0x5f>
c0101958:	c7 06 8b 00 00 00    	movl   $0x8b,(%esi)
c010195e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c0101963:	eb e4                	jmp    c0101949 <_vsnprintf_r+0x69>
c0101965:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0101969:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0101970 <vsnprintf>:
c0101970:	55                   	push   %ebp
c0101971:	89 e5                	mov    %esp,%ebp
c0101973:	83 ec 28             	sub    $0x28,%esp
c0101976:	e8 35 00 00 00       	call   c01019b0 <__getreent>
c010197b:	8b 55 14             	mov    0x14(%ebp),%edx
c010197e:	89 54 24 10          	mov    %edx,0x10(%esp)
c0101982:	8b 55 10             	mov    0x10(%ebp),%edx
c0101985:	89 04 24             	mov    %eax,(%esp)
c0101988:	89 54 24 0c          	mov    %edx,0xc(%esp)
c010198c:	8b 55 0c             	mov    0xc(%ebp),%edx
c010198f:	89 54 24 08          	mov    %edx,0x8(%esp)
c0101993:	8b 55 08             	mov    0x8(%ebp),%edx
c0101996:	89 54 24 04          	mov    %edx,0x4(%esp)
c010199a:	e8 41 ff ff ff       	call   c01018e0 <_vsnprintf_r>
c010199f:	c9                   	leave  
c01019a0:	c3                   	ret    
c01019a1:	66 90                	xchg   %ax,%ax
c01019a3:	66 90                	xchg   %ax,%ax
c01019a5:	66 90                	xchg   %ax,%ax
c01019a7:	66 90                	xchg   %ax,%ax
c01019a9:	66 90                	xchg   %ax,%ax
c01019ab:	66 90                	xchg   %ax,%ax
c01019ad:	66 90                	xchg   %ax,%ax
c01019af:	90                   	nop

c01019b0 <__getreent>:
c01019b0:	55                   	push   %ebp
c01019b1:	a1 20 a0 10 c0       	mov    0xc010a020,%eax
c01019b6:	89 e5                	mov    %esp,%ebp
c01019b8:	5d                   	pop    %ebp
c01019b9:	c3                   	ret    
c01019ba:	66 90                	xchg   %ax,%ax
c01019bc:	66 90                	xchg   %ax,%ax
c01019be:	66 90                	xchg   %ax,%ax

c01019c0 <_svfprintf_r>:
c01019c0:	55                   	push   %ebp
c01019c1:	89 e5                	mov    %esp,%ebp
c01019c3:	57                   	push   %edi
c01019c4:	56                   	push   %esi
c01019c5:	53                   	push   %ebx
c01019c6:	81 ec 1c 01 00 00    	sub    $0x11c,%esp
c01019cc:	8b 45 08             	mov    0x8(%ebp),%eax
c01019cf:	89 04 24             	mov    %eax,(%esp)
c01019d2:	e8 89 33 00 00       	call   c0104d60 <_localeconv_r>
c01019d7:	8b 00                	mov    (%eax),%eax
c01019d9:	89 04 24             	mov    %eax,(%esp)
c01019dc:	89 85 0c ff ff ff    	mov    %eax,-0xf4(%ebp)
c01019e2:	e8 69 4a 00 00       	call   c0106450 <strlen>
c01019e7:	89 85 08 ff ff ff    	mov    %eax,-0xf8(%ebp)
c01019ed:	8b 45 0c             	mov    0xc(%ebp),%eax
c01019f0:	f6 40 0c 80          	testb  $0x80,0xc(%eax)
c01019f4:	74 0b                	je     c0101a01 <_svfprintf_r+0x41>
c01019f6:	8b 40 10             	mov    0x10(%eax),%eax
c01019f9:	85 c0                	test   %eax,%eax
c01019fb:	0f 84 62 18 00 00    	je     c0103263 <_svfprintf_r+0x18a3>
c0101a01:	8d 45 a8             	lea    -0x58(%ebp),%eax
c0101a04:	8d 55 a7             	lea    -0x59(%ebp),%edx
c0101a07:	89 c7                	mov    %eax,%edi
c0101a09:	89 85 74 ff ff ff    	mov    %eax,-0x8c(%ebp)
c0101a0f:	90                   	nop
c0101a10:	90                   	nop
c0101a11:	29 d0                	sub    %edx,%eax
c0101a13:	c7 85 7c ff ff ff 00 	movl   $0x0,-0x84(%ebp)
c0101a1a:	00 00 00 
c0101a1d:	90                   	nop
c0101a1e:	90                   	nop
c0101a1f:	90                   	nop
c0101a20:	90                   	nop
c0101a21:	90                   	nop
c0101a22:	90                   	nop
c0101a23:	c7 85 78 ff ff ff 00 	movl   $0x0,-0x88(%ebp)
c0101a2a:	00 00 00 
c0101a2d:	c7 85 1c ff ff ff 00 	movl   $0x0,-0xe4(%ebp)
c0101a34:	00 00 00 
c0101a37:	c7 85 18 ff ff ff 00 	movl   $0x0,-0xe8(%ebp)
c0101a3e:	00 00 00 
c0101a41:	c7 85 04 ff ff ff 00 	movl   $0x0,-0xfc(%ebp)
c0101a48:	00 00 00 
c0101a4b:	c7 85 34 ff ff ff 00 	movl   $0x0,-0xcc(%ebp)
c0101a52:	00 00 00 
c0101a55:	89 85 00 ff ff ff    	mov    %eax,-0x100(%ebp)
c0101a5b:	8b 45 10             	mov    0x10(%ebp),%eax
c0101a5e:	8b 5d 10             	mov    0x10(%ebp),%ebx
c0101a61:	0f b6 00             	movzbl (%eax),%eax
c0101a64:	3c 25                	cmp    $0x25,%al
c0101a66:	74 4d                	je     c0101ab5 <_svfprintf_r+0xf5>
c0101a68:	84 c0                	test   %al,%al
c0101a6a:	75 08                	jne    c0101a74 <_svfprintf_r+0xb4>
c0101a6c:	eb 47                	jmp    c0101ab5 <_svfprintf_r+0xf5>
c0101a6e:	66 90                	xchg   %ax,%ax
c0101a70:	84 c0                	test   %al,%al
c0101a72:	74 0a                	je     c0101a7e <_svfprintf_r+0xbe>
c0101a74:	83 c3 01             	add    $0x1,%ebx
c0101a77:	0f b6 03             	movzbl (%ebx),%eax
c0101a7a:	3c 25                	cmp    $0x25,%al
c0101a7c:	75 f2                	jne    c0101a70 <_svfprintf_r+0xb0>
c0101a7e:	89 de                	mov    %ebx,%esi
c0101a80:	2b 75 10             	sub    0x10(%ebp),%esi
c0101a83:	74 30                	je     c0101ab5 <_svfprintf_r+0xf5>
c0101a85:	8b 45 10             	mov    0x10(%ebp),%eax
c0101a88:	83 c7 08             	add    $0x8,%edi
c0101a8b:	89 77 fc             	mov    %esi,-0x4(%edi)
c0101a8e:	01 b5 7c ff ff ff    	add    %esi,-0x84(%ebp)
c0101a94:	89 47 f8             	mov    %eax,-0x8(%edi)
c0101a97:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0101a9d:	83 c0 01             	add    $0x1,%eax
c0101aa0:	83 f8 07             	cmp    $0x7,%eax
c0101aa3:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0101aa9:	0f 8f 91 00 00 00    	jg     c0101b40 <_svfprintf_r+0x180>
c0101aaf:	01 b5 34 ff ff ff    	add    %esi,-0xcc(%ebp)
c0101ab5:	80 3b 00             	cmpb   $0x0,(%ebx)
c0101ab8:	0f 84 aa 00 00 00    	je     c0101b68 <_svfprintf_r+0x1a8>
c0101abe:	8d 43 01             	lea    0x1(%ebx),%eax
c0101ac1:	be 20 00 00 00       	mov    $0x20,%esi
c0101ac6:	c6 85 59 ff ff ff 00 	movb   $0x0,-0xa7(%ebp)
c0101acd:	31 db                	xor    %ebx,%ebx
c0101acf:	c7 85 44 ff ff ff ff 	movl   $0xffffffff,-0xbc(%ebp)
c0101ad6:	ff ff ff 
c0101ad9:	c7 85 40 ff ff ff 00 	movl   $0x0,-0xc0(%ebp)
c0101ae0:	00 00 00 
c0101ae3:	c7 85 4c ff ff ff 00 	movl   $0x0,-0xb4(%ebp)
c0101aea:	00 00 00 
c0101aed:	8d 48 01             	lea    0x1(%eax),%ecx
c0101af0:	0f be 00             	movsbl (%eax),%eax
c0101af3:	8d 50 e0             	lea    -0x20(%eax),%edx
c0101af6:	83 fa 58             	cmp    $0x58,%edx
c0101af9:	0f 87 8f 07 00 00    	ja     c010228e <_svfprintf_r+0x8ce>
c0101aff:	ff 24 95 7c 87 10 c0 	jmp    *-0x3fef7884(,%edx,4)
c0101b06:	66 90                	xchg   %ax,%ax
c0101b08:	83 8d 4c ff ff ff 10 	orl    $0x10,-0xb4(%ebp)
c0101b0f:	89 c8                	mov    %ecx,%eax
c0101b11:	eb da                	jmp    c0101aed <_svfprintf_r+0x12d>
c0101b13:	8b 45 14             	mov    0x14(%ebp),%eax
c0101b16:	8b 55 14             	mov    0x14(%ebp),%edx
c0101b19:	8b 00                	mov    (%eax),%eax
c0101b1b:	83 c2 04             	add    $0x4,%edx
c0101b1e:	89 55 14             	mov    %edx,0x14(%ebp)
c0101b21:	85 c0                	test   %eax,%eax
c0101b23:	89 85 40 ff ff ff    	mov    %eax,-0xc0(%ebp)
c0101b29:	79 e4                	jns    c0101b0f <_svfprintf_r+0x14f>
c0101b2b:	f7 9d 40 ff ff ff    	negl   -0xc0(%ebp)
c0101b31:	83 8d 4c ff ff ff 04 	orl    $0x4,-0xb4(%ebp)
c0101b38:	89 c8                	mov    %ecx,%eax
c0101b3a:	eb b1                	jmp    c0101aed <_svfprintf_r+0x12d>
c0101b3c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0101b40:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0101b46:	89 44 24 08          	mov    %eax,0x8(%esp)
c0101b4a:	8b 45 0c             	mov    0xc(%ebp),%eax
c0101b4d:	89 44 24 04          	mov    %eax,0x4(%esp)
c0101b51:	8b 45 08             	mov    0x8(%ebp),%eax
c0101b54:	89 04 24             	mov    %eax,(%esp)
c0101b57:	e8 74 49 00 00       	call   c01064d0 <__ssprint_r>
c0101b5c:	85 c0                	test   %eax,%eax
c0101b5e:	75 30                	jne    c0101b90 <_svfprintf_r+0x1d0>
c0101b60:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0101b63:	e9 47 ff ff ff       	jmp    c0101aaf <_svfprintf_r+0xef>
c0101b68:	8b 85 7c ff ff ff    	mov    -0x84(%ebp),%eax
c0101b6e:	85 c0                	test   %eax,%eax
c0101b70:	74 1e                	je     c0101b90 <_svfprintf_r+0x1d0>
c0101b72:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0101b78:	89 44 24 08          	mov    %eax,0x8(%esp)
c0101b7c:	8b 45 0c             	mov    0xc(%ebp),%eax
c0101b7f:	89 44 24 04          	mov    %eax,0x4(%esp)
c0101b83:	8b 45 08             	mov    0x8(%ebp),%eax
c0101b86:	89 04 24             	mov    %eax,(%esp)
c0101b89:	e8 42 49 00 00       	call   c01064d0 <__ssprint_r>
c0101b8e:	66 90                	xchg   %ax,%ax
c0101b90:	8b 55 0c             	mov    0xc(%ebp),%edx
c0101b93:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c0101b98:	f6 42 0c 40          	testb  $0x40,0xc(%edx)
c0101b9c:	0f 44 85 34 ff ff ff 	cmove  -0xcc(%ebp),%eax
c0101ba3:	81 c4 1c 01 00 00    	add    $0x11c,%esp
c0101ba9:	5b                   	pop    %ebx
c0101baa:	5e                   	pop    %esi
c0101bab:	5f                   	pop    %edi
c0101bac:	5d                   	pop    %ebp
c0101bad:	c3                   	ret    
c0101bae:	bb 2b 00 00 00       	mov    $0x2b,%ebx
c0101bb3:	89 c8                	mov    %ecx,%eax
c0101bb5:	e9 33 ff ff ff       	jmp    c0101aed <_svfprintf_r+0x12d>
c0101bba:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c0101bc0:	8b 45 14             	mov    0x14(%ebp),%eax
c0101bc3:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0101bc6:	c6 85 59 ff ff ff 00 	movb   $0x0,-0xa7(%ebp)
c0101bcd:	8d 70 04             	lea    0x4(%eax),%esi
c0101bd0:	8b 00                	mov    (%eax),%eax
c0101bd2:	85 c0                	test   %eax,%eax
c0101bd4:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c0101bda:	0f 84 7f 18 00 00    	je     c010345f <_svfprintf_r+0x1a9f>
c0101be0:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
c0101be6:	85 c0                	test   %eax,%eax
c0101be8:	0f 88 b6 17 00 00    	js     c01033a4 <_svfprintf_r+0x19e4>
c0101bee:	89 44 24 08          	mov    %eax,0x8(%esp)
c0101bf2:	8b 85 28 ff ff ff    	mov    -0xd8(%ebp),%eax
c0101bf8:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c0101bff:	00 
c0101c00:	89 04 24             	mov    %eax,(%esp)
c0101c03:	e8 f8 38 00 00       	call   c0105500 <memchr>
c0101c08:	85 c0                	test   %eax,%eax
c0101c0a:	0f 84 a0 19 00 00    	je     c01035b0 <_svfprintf_r+0x1bf0>
c0101c10:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
c0101c16:	2b 85 28 ff ff ff    	sub    -0xd8(%ebp),%eax
c0101c1c:	39 d0                	cmp    %edx,%eax
c0101c1e:	0f 4f c2             	cmovg  %edx,%eax
c0101c21:	89 c2                	mov    %eax,%edx
c0101c23:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c0101c2a:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c0101c30:	31 c0                	xor    %eax,%eax
c0101c32:	85 d2                	test   %edx,%edx
c0101c34:	0f 49 c2             	cmovns %edx,%eax
c0101c37:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
c0101c3d:	89 75 14             	mov    %esi,0x14(%ebp)
c0101c40:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c0101c47:	00 00 00 
c0101c4a:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c0101c51:	00 00 00 
c0101c54:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0101c58:	84 db                	test   %bl,%bl
c0101c5a:	74 07                	je     c0101c63 <_svfprintf_r+0x2a3>
c0101c5c:	83 85 48 ff ff ff 01 	addl   $0x1,-0xb8(%ebp)
c0101c63:	8b 8d 48 ff ff ff    	mov    -0xb8(%ebp),%ecx
c0101c69:	8b b5 4c ff ff ff    	mov    -0xb4(%ebp),%esi
c0101c6f:	89 c8                	mov    %ecx,%eax
c0101c71:	89 f2                	mov    %esi,%edx
c0101c73:	83 c0 02             	add    $0x2,%eax
c0101c76:	83 e2 02             	and    $0x2,%edx
c0101c79:	89 95 30 ff ff ff    	mov    %edx,-0xd0(%ebp)
c0101c7f:	89 f2                	mov    %esi,%edx
c0101c81:	0f 44 c1             	cmove  %ecx,%eax
c0101c84:	81 e2 84 00 00 00    	and    $0x84,%edx
c0101c8a:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
c0101c90:	89 95 2c ff ff ff    	mov    %edx,-0xd4(%ebp)
c0101c96:	0f 85 1c 06 00 00    	jne    c01022b8 <_svfprintf_r+0x8f8>
c0101c9c:	8b b5 40 ff ff ff    	mov    -0xc0(%ebp),%esi
c0101ca2:	2b b5 48 ff ff ff    	sub    -0xb8(%ebp),%esi
c0101ca8:	85 f6                	test   %esi,%esi
c0101caa:	0f 8e 08 06 00 00    	jle    c01022b8 <_svfprintf_r+0x8f8>
c0101cb0:	83 fe 10             	cmp    $0x10,%esi
c0101cb3:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0101cb9:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0101cbf:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c0101cc5:	7f 11                	jg     c0101cd8 <_svfprintf_r+0x318>
c0101cc7:	eb 6b                	jmp    c0101d34 <_svfprintf_r+0x374>
c0101cc9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0101cd0:	83 ee 10             	sub    $0x10,%esi
c0101cd3:	83 fe 10             	cmp    $0x10,%esi
c0101cd6:	7e 5c                	jle    c0101d34 <_svfprintf_r+0x374>
c0101cd8:	83 c0 01             	add    $0x1,%eax
c0101cdb:	83 c1 10             	add    $0x10,%ecx
c0101cde:	c7 07 f0 88 10 c0    	movl   $0xc01088f0,(%edi)
c0101ce4:	83 c7 08             	add    $0x8,%edi
c0101ce7:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c0101cee:	83 f8 07             	cmp    $0x7,%eax
c0101cf1:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0101cf7:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0101cfd:	7e d1                	jle    c0101cd0 <_svfprintf_r+0x310>
c0101cff:	8b 45 0c             	mov    0xc(%ebp),%eax
c0101d02:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0101d06:	89 44 24 04          	mov    %eax,0x4(%esp)
c0101d0a:	8b 45 08             	mov    0x8(%ebp),%eax
c0101d0d:	89 04 24             	mov    %eax,(%esp)
c0101d10:	e8 bb 47 00 00       	call   c01064d0 <__ssprint_r>
c0101d15:	85 c0                	test   %eax,%eax
c0101d17:	0f 85 73 fe ff ff    	jne    c0101b90 <_svfprintf_r+0x1d0>
c0101d1d:	83 ee 10             	sub    $0x10,%esi
c0101d20:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0101d26:	83 fe 10             	cmp    $0x10,%esi
c0101d29:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0101d2f:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0101d32:	7f a4                	jg     c0101cd8 <_svfprintf_r+0x318>
c0101d34:	83 c0 01             	add    $0x1,%eax
c0101d37:	01 f1                	add    %esi,%ecx
c0101d39:	83 f8 07             	cmp    $0x7,%eax
c0101d3c:	c7 07 f0 88 10 c0    	movl   $0xc01088f0,(%edi)
c0101d42:	89 77 04             	mov    %esi,0x4(%edi)
c0101d45:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0101d4b:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0101d51:	0f 8f 16 0e 00 00    	jg     c0102b6d <_svfprintf_r+0x11ad>
c0101d57:	83 c7 08             	add    $0x8,%edi
c0101d5a:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c0101d61:	e9 58 05 00 00       	jmp    c01022be <_svfprintf_r+0x8fe>
c0101d66:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c0101d6d:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c0101d73:	8b 45 14             	mov    0x14(%ebp),%eax
c0101d76:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0101d79:	0f 85 fd 04 00 00    	jne    c010227c <_svfprintf_r+0x8bc>
c0101d7f:	f6 85 4c ff ff ff 40 	testb  $0x40,-0xb4(%ebp)
c0101d86:	0f 84 f0 04 00 00    	je     c010227c <_svfprintf_r+0x8bc>
c0101d8c:	0f b7 08             	movzwl (%eax),%ecx
c0101d8f:	83 c0 04             	add    $0x4,%eax
c0101d92:	89 45 14             	mov    %eax,0x14(%ebp)
c0101d95:	b8 01 00 00 00       	mov    $0x1,%eax
c0101d9a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0101da0:	c6 85 59 ff ff ff 00 	movb   $0x0,-0xa7(%ebp)
c0101da7:	31 db                	xor    %ebx,%ebx
c0101da9:	8b b5 4c ff ff ff    	mov    -0xb4(%ebp),%esi
c0101daf:	89 f2                	mov    %esi,%edx
c0101db1:	80 e2 7f             	and    $0x7f,%dl
c0101db4:	83 bd 44 ff ff ff 00 	cmpl   $0x0,-0xbc(%ebp)
c0101dbb:	0f 48 d6             	cmovs  %esi,%edx
c0101dbe:	89 95 4c ff ff ff    	mov    %edx,-0xb4(%ebp)
c0101dc4:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
c0101dca:	85 d2                	test   %edx,%edx
c0101dcc:	75 08                	jne    c0101dd6 <_svfprintf_r+0x416>
c0101dce:	85 c9                	test   %ecx,%ecx
c0101dd0:	0f 84 ea 08 00 00    	je     c01026c0 <_svfprintf_r+0xd00>
c0101dd6:	3c 01                	cmp    $0x1,%al
c0101dd8:	0f 84 6a 0d 00 00    	je     c0102b48 <_svfprintf_r+0x1188>
c0101dde:	3c 02                	cmp    $0x2,%al
c0101de0:	8d 45 a8             	lea    -0x58(%ebp),%eax
c0101de3:	0f 85 bf 0b 00 00    	jne    c01029a8 <_svfprintf_r+0xfe8>
c0101de9:	8b b5 18 ff ff ff    	mov    -0xe8(%ebp),%esi
c0101def:	90                   	nop
c0101df0:	89 ca                	mov    %ecx,%edx
c0101df2:	83 e8 01             	sub    $0x1,%eax
c0101df5:	83 e2 0f             	and    $0xf,%edx
c0101df8:	0f b6 14 16          	movzbl (%esi,%edx,1),%edx
c0101dfc:	c1 e9 04             	shr    $0x4,%ecx
c0101dff:	85 c9                	test   %ecx,%ecx
c0101e01:	88 10                	mov    %dl,(%eax)
c0101e03:	75 eb                	jne    c0101df0 <_svfprintf_r+0x430>
c0101e05:	8d 55 a8             	lea    -0x58(%ebp),%edx
c0101e08:	29 c2                	sub    %eax,%edx
c0101e0a:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c0101e10:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
c0101e16:	66 90                	xchg   %ax,%ax
c0101e18:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
c0101e1e:	8b 95 38 ff ff ff    	mov    -0xc8(%ebp),%edx
c0101e24:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c0101e2b:	00 00 00 
c0101e2e:	39 c2                	cmp    %eax,%edx
c0101e30:	0f 4d c2             	cmovge %edx,%eax
c0101e33:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
c0101e39:	e9 1a fe ff ff       	jmp    c0101c58 <_svfprintf_r+0x298>
c0101e3e:	84 db                	test   %bl,%bl
c0101e40:	89 c8                	mov    %ecx,%eax
c0101e42:	0f 44 de             	cmove  %esi,%ebx
c0101e45:	e9 a3 fc ff ff       	jmp    c0101aed <_svfprintf_r+0x12d>
c0101e4a:	83 8d 4c ff ff ff 01 	orl    $0x1,-0xb4(%ebp)
c0101e51:	89 c8                	mov    %ecx,%eax
c0101e53:	e9 95 fc ff ff       	jmp    c0101aed <_svfprintf_r+0x12d>
c0101e58:	81 8d 4c ff ff ff 80 	orl    $0x80,-0xb4(%ebp)
c0101e5f:	00 00 00 
c0101e62:	89 c8                	mov    %ecx,%eax
c0101e64:	e9 84 fc ff ff       	jmp    c0101aed <_svfprintf_r+0x12d>
c0101e69:	89 bd 48 ff ff ff    	mov    %edi,-0xb8(%ebp)
c0101e6f:	8d 50 d0             	lea    -0x30(%eax),%edx
c0101e72:	31 ff                	xor    %edi,%edi
c0101e74:	c7 85 40 ff ff ff 00 	movl   $0x0,-0xc0(%ebp)
c0101e7b:	00 00 00 
c0101e7e:	66 90                	xchg   %ax,%ax
c0101e80:	8d 04 bf             	lea    (%edi,%edi,4),%eax
c0101e83:	83 c1 01             	add    $0x1,%ecx
c0101e86:	8d 3c 42             	lea    (%edx,%eax,2),%edi
c0101e89:	0f be 41 ff          	movsbl -0x1(%ecx),%eax
c0101e8d:	8d 50 d0             	lea    -0x30(%eax),%edx
c0101e90:	83 fa 09             	cmp    $0x9,%edx
c0101e93:	76 eb                	jbe    c0101e80 <_svfprintf_r+0x4c0>
c0101e95:	89 bd 40 ff ff ff    	mov    %edi,-0xc0(%ebp)
c0101e9b:	8b bd 48 ff ff ff    	mov    -0xb8(%ebp),%edi
c0101ea1:	e9 4d fc ff ff       	jmp    c0101af3 <_svfprintf_r+0x133>
c0101ea6:	83 8d 4c ff ff ff 10 	orl    $0x10,-0xb4(%ebp)
c0101ead:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c0101eb4:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c0101eba:	8b 45 14             	mov    0x14(%ebp),%eax
c0101ebd:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0101ec0:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
c0101ec6:	0f 85 61 02 00 00    	jne    c010212d <_svfprintf_r+0x76d>
c0101ecc:	f6 85 4c ff ff ff 40 	testb  $0x40,-0xb4(%ebp)
c0101ed3:	0f 84 54 02 00 00    	je     c010212d <_svfprintf_r+0x76d>
c0101ed9:	0f bf 08             	movswl (%eax),%ecx
c0101edc:	83 c0 04             	add    $0x4,%eax
c0101edf:	89 45 14             	mov    %eax,0x14(%ebp)
c0101ee2:	85 c9                	test   %ecx,%ecx
c0101ee4:	0f 88 53 02 00 00    	js     c010213d <_svfprintf_r+0x77d>
c0101eea:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c0101ef1:	b8 01 00 00 00       	mov    $0x1,%eax
c0101ef6:	e9 ae fe ff ff       	jmp    c0101da9 <_svfprintf_r+0x3e9>
c0101efb:	f6 85 4c ff ff ff 08 	testb  $0x8,-0xb4(%ebp)
c0101f02:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c0101f08:	8b 45 14             	mov    0x14(%ebp),%eax
c0101f0b:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0101f0e:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
c0101f14:	0f 84 15 10 00 00    	je     c0102f2f <_svfprintf_r+0x156f>
c0101f1a:	db 28                	fldt   (%eax)
c0101f1c:	83 c0 0c             	add    $0xc,%eax
c0101f1f:	89 45 14             	mov    %eax,0x14(%ebp)
c0101f22:	dd 9d 10 ff ff ff    	fstpl  -0xf0(%ebp)
c0101f28:	dd 85 10 ff ff ff    	fldl   -0xf0(%ebp)
c0101f2e:	dd 1c 24             	fstpl  (%esp)
c0101f31:	e8 aa 44 00 00       	call   c01063e0 <__fpclassifyd>
c0101f36:	83 f8 01             	cmp    $0x1,%eax
c0101f39:	0f 85 82 0f 00 00    	jne    c0102ec1 <_svfprintf_r+0x1501>
c0101f3f:	90                   	nop
c0101f40:	90                   	nop
c0101f41:	dd 85 10 ff ff ff    	fldl   -0xf0(%ebp)
c0101f47:	d9 c9                	fxch   %st(1)
c0101f49:	df e9                	fucomip %st(1),%st
c0101f4b:	dd d8                	fstp   %st(0)
c0101f4d:	0f 87 59 15 00 00    	ja     c01034ac <_svfprintf_r+0x1aec>
c0101f53:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c0101f5a:	83 bd 24 ff ff ff 47 	cmpl   $0x47,-0xdc(%ebp)
c0101f61:	ba 42 87 10 c0       	mov    $0xc0108742,%edx
c0101f66:	b8 46 87 10 c0       	mov    $0xc0108746,%eax
c0101f6b:	c7 85 48 ff ff ff 03 	movl   $0x3,-0xb8(%ebp)
c0101f72:	00 00 00 
c0101f75:	0f 4e c2             	cmovle %edx,%eax
c0101f78:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c0101f7e:	81 a5 4c ff ff ff 7f 	andl   $0xffffff7f,-0xb4(%ebp)
c0101f85:	ff ff ff 
c0101f88:	c7 85 38 ff ff ff 03 	movl   $0x3,-0xc8(%ebp)
c0101f8f:	00 00 00 
c0101f92:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c0101f99:	00 00 00 
c0101f9c:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c0101fa3:	00 00 00 
c0101fa6:	e9 ad fc ff ff       	jmp    c0101c58 <_svfprintf_r+0x298>
c0101fab:	8d 41 01             	lea    0x1(%ecx),%eax
c0101fae:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
c0101fb4:	0f be 01             	movsbl (%ecx),%eax
c0101fb7:	83 f8 2a             	cmp    $0x2a,%eax
c0101fba:	0f 84 84 18 00 00    	je     c0103844 <_svfprintf_r+0x1e84>
c0101fc0:	8d 50 d0             	lea    -0x30(%eax),%edx
c0101fc3:	31 c9                	xor    %ecx,%ecx
c0101fc5:	83 fa 09             	cmp    $0x9,%edx
c0101fc8:	0f 87 a8 16 00 00    	ja     c0103676 <_svfprintf_r+0x1cb6>
c0101fce:	89 bd 44 ff ff ff    	mov    %edi,-0xbc(%ebp)
c0101fd4:	8b bd 48 ff ff ff    	mov    -0xb8(%ebp),%edi
c0101fda:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0101fe0:	8d 04 89             	lea    (%ecx,%ecx,4),%eax
c0101fe3:	83 c7 01             	add    $0x1,%edi
c0101fe6:	8d 0c 42             	lea    (%edx,%eax,2),%ecx
c0101fe9:	0f be 47 ff          	movsbl -0x1(%edi),%eax
c0101fed:	8d 50 d0             	lea    -0x30(%eax),%edx
c0101ff0:	83 fa 09             	cmp    $0x9,%edx
c0101ff3:	76 eb                	jbe    c0101fe0 <_svfprintf_r+0x620>
c0101ff5:	85 c9                	test   %ecx,%ecx
c0101ff7:	89 ca                	mov    %ecx,%edx
c0101ff9:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
c0101ffe:	0f 48 d1             	cmovs  %ecx,%edx
c0102001:	89 bd 48 ff ff ff    	mov    %edi,-0xb8(%ebp)
c0102007:	8b bd 44 ff ff ff    	mov    -0xbc(%ebp),%edi
c010200d:	8b 8d 48 ff ff ff    	mov    -0xb8(%ebp),%ecx
c0102013:	89 95 44 ff ff ff    	mov    %edx,-0xbc(%ebp)
c0102019:	e9 d5 fa ff ff       	jmp    c0101af3 <_svfprintf_r+0x133>
c010201e:	8b 45 14             	mov    0x14(%ebp),%eax
c0102021:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0102024:	83 8d 4c ff ff ff 02 	orl    $0x2,-0xb4(%ebp)
c010202b:	8b 08                	mov    (%eax),%ecx
c010202d:	83 c0 04             	add    $0x4,%eax
c0102030:	89 45 14             	mov    %eax,0x14(%ebp)
c0102033:	b8 02 00 00 00       	mov    $0x2,%eax
c0102038:	c6 85 5a ff ff ff 30 	movb   $0x30,-0xa6(%ebp)
c010203f:	c6 85 5b ff ff ff 78 	movb   $0x78,-0xa5(%ebp)
c0102046:	c7 85 18 ff ff ff 63 	movl   $0xc0108763,-0xe8(%ebp)
c010204d:	87 10 c0 
c0102050:	c7 85 24 ff ff ff 78 	movl   $0x78,-0xdc(%ebp)
c0102057:	00 00 00 
c010205a:	e9 41 fd ff ff       	jmp    c0101da0 <_svfprintf_r+0x3e0>
c010205f:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c0102066:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c010206c:	8b 45 14             	mov    0x14(%ebp),%eax
c010206f:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0102072:	0f 85 87 00 00 00    	jne    c01020ff <_svfprintf_r+0x73f>
c0102078:	f6 85 4c ff ff ff 40 	testb  $0x40,-0xb4(%ebp)
c010207f:	74 7e                	je     c01020ff <_svfprintf_r+0x73f>
c0102081:	0f b7 08             	movzwl (%eax),%ecx
c0102084:	83 c0 04             	add    $0x4,%eax
c0102087:	89 45 14             	mov    %eax,0x14(%ebp)
c010208a:	31 c0                	xor    %eax,%eax
c010208c:	e9 0f fd ff ff       	jmp    c0101da0 <_svfprintf_r+0x3e0>
c0102091:	83 8d 4c ff ff ff 08 	orl    $0x8,-0xb4(%ebp)
c0102098:	89 c8                	mov    %ecx,%eax
c010209a:	e9 4e fa ff ff       	jmp    c0101aed <_svfprintf_r+0x12d>
c010209f:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c01020a6:	89 4d 10             	mov    %ecx,0x10(%ebp)
c01020a9:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
c01020af:	0f 85 97 0b 00 00    	jne    c0102c4c <_svfprintf_r+0x128c>
c01020b5:	f6 85 4c ff ff ff 40 	testb  $0x40,-0xb4(%ebp)
c01020bc:	0f 84 8a 0b 00 00    	je     c0102c4c <_svfprintf_r+0x128c>
c01020c2:	8b 45 14             	mov    0x14(%ebp),%eax
c01020c5:	0f b7 95 34 ff ff ff 	movzwl -0xcc(%ebp),%edx
c01020cc:	8b 00                	mov    (%eax),%eax
c01020ce:	66 89 10             	mov    %dx,(%eax)
c01020d1:	8b 45 14             	mov    0x14(%ebp),%eax
c01020d4:	83 c0 04             	add    $0x4,%eax
c01020d7:	89 45 14             	mov    %eax,0x14(%ebp)
c01020da:	e9 7c f9 ff ff       	jmp    c0101a5b <_svfprintf_r+0x9b>
c01020df:	83 8d 4c ff ff ff 10 	orl    $0x10,-0xb4(%ebp)
c01020e6:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c01020ed:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c01020f3:	8b 45 14             	mov    0x14(%ebp),%eax
c01020f6:	89 4d 10             	mov    %ecx,0x10(%ebp)
c01020f9:	0f 84 79 ff ff ff    	je     c0102078 <_svfprintf_r+0x6b8>
c01020ff:	8b 08                	mov    (%eax),%ecx
c0102101:	83 c0 04             	add    $0x4,%eax
c0102104:	89 45 14             	mov    %eax,0x14(%ebp)
c0102107:	31 c0                	xor    %eax,%eax
c0102109:	e9 92 fc ff ff       	jmp    c0101da0 <_svfprintf_r+0x3e0>
c010210e:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c0102115:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c010211b:	8b 45 14             	mov    0x14(%ebp),%eax
c010211e:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0102121:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
c0102127:	0f 84 9f fd ff ff    	je     c0101ecc <_svfprintf_r+0x50c>
c010212d:	8b 08                	mov    (%eax),%ecx
c010212f:	83 c0 04             	add    $0x4,%eax
c0102132:	89 45 14             	mov    %eax,0x14(%ebp)
c0102135:	85 c9                	test   %ecx,%ecx
c0102137:	0f 89 ad fd ff ff    	jns    c0101eea <_svfprintf_r+0x52a>
c010213d:	f7 d9                	neg    %ecx
c010213f:	bb 2d 00 00 00       	mov    $0x2d,%ebx
c0102144:	c6 85 59 ff ff ff 2d 	movb   $0x2d,-0xa7(%ebp)
c010214b:	b8 01 00 00 00       	mov    $0x1,%eax
c0102150:	e9 54 fc ff ff       	jmp    c0101da9 <_svfprintf_r+0x3e9>
c0102155:	83 8d 4c ff ff ff 40 	orl    $0x40,-0xb4(%ebp)
c010215c:	89 c8                	mov    %ecx,%eax
c010215e:	e9 8a f9 ff ff       	jmp    c0101aed <_svfprintf_r+0x12d>
c0102163:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c010216a:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c0102170:	8b 45 14             	mov    0x14(%ebp),%eax
c0102173:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0102176:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
c010217c:	c7 85 18 ff ff ff 63 	movl   $0xc0108763,-0xe8(%ebp)
c0102183:	87 10 c0 
c0102186:	75 71                	jne    c01021f9 <_svfprintf_r+0x839>
c0102188:	f6 85 4c ff ff ff 40 	testb  $0x40,-0xb4(%ebp)
c010218f:	74 68                	je     c01021f9 <_svfprintf_r+0x839>
c0102191:	0f b7 08             	movzwl (%eax),%ecx
c0102194:	83 c0 04             	add    $0x4,%eax
c0102197:	89 45 14             	mov    %eax,0x14(%ebp)
c010219a:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c01021a1:	b8 02 00 00 00       	mov    $0x2,%eax
c01021a6:	0f 84 f4 fb ff ff    	je     c0101da0 <_svfprintf_r+0x3e0>
c01021ac:	85 c9                	test   %ecx,%ecx
c01021ae:	0f 84 ec fb ff ff    	je     c0101da0 <_svfprintf_r+0x3e0>
c01021b4:	0f b6 95 24 ff ff ff 	movzbl -0xdc(%ebp),%edx
c01021bb:	c6 85 5a ff ff ff 30 	movb   $0x30,-0xa6(%ebp)
c01021c2:	83 8d 4c ff ff ff 02 	orl    $0x2,-0xb4(%ebp)
c01021c9:	88 95 5b ff ff ff    	mov    %dl,-0xa5(%ebp)
c01021cf:	e9 cc fb ff ff       	jmp    c0101da0 <_svfprintf_r+0x3e0>
c01021d4:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c01021db:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c01021e1:	8b 45 14             	mov    0x14(%ebp),%eax
c01021e4:	89 4d 10             	mov    %ecx,0x10(%ebp)
c01021e7:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
c01021ed:	c7 85 18 ff ff ff 52 	movl   $0xc0108752,-0xe8(%ebp)
c01021f4:	87 10 c0 
c01021f7:	74 8f                	je     c0102188 <_svfprintf_r+0x7c8>
c01021f9:	8b 08                	mov    (%eax),%ecx
c01021fb:	83 c0 04             	add    $0x4,%eax
c01021fe:	89 45 14             	mov    %eax,0x14(%ebp)
c0102201:	eb 97                	jmp    c010219a <_svfprintf_r+0x7da>
c0102203:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c0102209:	8b 45 14             	mov    0x14(%ebp),%eax
c010220c:	89 4d 10             	mov    %ecx,0x10(%ebp)
c010220f:	c6 85 59 ff ff ff 00 	movb   $0x0,-0xa7(%ebp)
c0102216:	8b 00                	mov    (%eax),%eax
c0102218:	88 45 80             	mov    %al,-0x80(%ebp)
c010221b:	8b 45 14             	mov    0x14(%ebp),%eax
c010221e:	83 c0 04             	add    $0x4,%eax
c0102221:	89 45 14             	mov    %eax,0x14(%ebp)
c0102224:	8d 45 80             	lea    -0x80(%ebp),%eax
c0102227:	31 db                	xor    %ebx,%ebx
c0102229:	c7 85 48 ff ff ff 01 	movl   $0x1,-0xb8(%ebp)
c0102230:	00 00 00 
c0102233:	c7 85 38 ff ff ff 01 	movl   $0x1,-0xc8(%ebp)
c010223a:	00 00 00 
c010223d:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c0102244:	00 00 00 
c0102247:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c010224e:	00 00 00 
c0102251:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c0102257:	e9 07 fa ff ff       	jmp    c0101c63 <_svfprintf_r+0x2a3>
c010225c:	83 8d 4c ff ff ff 10 	orl    $0x10,-0xb4(%ebp)
c0102263:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c010226a:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c0102270:	8b 45 14             	mov    0x14(%ebp),%eax
c0102273:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0102276:	0f 84 03 fb ff ff    	je     c0101d7f <_svfprintf_r+0x3bf>
c010227c:	8b 08                	mov    (%eax),%ecx
c010227e:	83 c0 04             	add    $0x4,%eax
c0102281:	89 45 14             	mov    %eax,0x14(%ebp)
c0102284:	b8 01 00 00 00       	mov    $0x1,%eax
c0102289:	e9 12 fb ff ff       	jmp    c0101da0 <_svfprintf_r+0x3e0>
c010228e:	85 c0                	test   %eax,%eax
c0102290:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c0102296:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0102299:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
c010229f:	0f 84 c3 f8 ff ff    	je     c0101b68 <_svfprintf_r+0x1a8>
c01022a5:	88 45 80             	mov    %al,-0x80(%ebp)
c01022a8:	c6 85 59 ff ff ff 00 	movb   $0x0,-0xa7(%ebp)
c01022af:	e9 70 ff ff ff       	jmp    c0102224 <_svfprintf_r+0x864>
c01022b4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c01022b8:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c01022be:	84 db                	test   %bl,%bl
c01022c0:	74 33                	je     c01022f5 <_svfprintf_r+0x935>
c01022c2:	8d 85 59 ff ff ff    	lea    -0xa7(%ebp),%eax
c01022c8:	83 c1 01             	add    $0x1,%ecx
c01022cb:	89 07                	mov    %eax,(%edi)
c01022cd:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c01022d3:	83 c7 08             	add    $0x8,%edi
c01022d6:	c7 47 fc 01 00 00 00 	movl   $0x1,-0x4(%edi)
c01022dd:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c01022e3:	83 c0 01             	add    $0x1,%eax
c01022e6:	83 f8 07             	cmp    $0x7,%eax
c01022e9:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c01022ef:	0f 8f 7b 06 00 00    	jg     c0102970 <_svfprintf_r+0xfb0>
c01022f5:	8b 9d 30 ff ff ff    	mov    -0xd0(%ebp),%ebx
c01022fb:	85 db                	test   %ebx,%ebx
c01022fd:	74 33                	je     c0102332 <_svfprintf_r+0x972>
c01022ff:	8d 85 5a ff ff ff    	lea    -0xa6(%ebp),%eax
c0102305:	83 c1 02             	add    $0x2,%ecx
c0102308:	89 07                	mov    %eax,(%edi)
c010230a:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0102310:	83 c7 08             	add    $0x8,%edi
c0102313:	c7 47 fc 02 00 00 00 	movl   $0x2,-0x4(%edi)
c010231a:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0102320:	83 c0 01             	add    $0x1,%eax
c0102323:	83 f8 07             	cmp    $0x7,%eax
c0102326:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c010232c:	0f 8f 06 06 00 00    	jg     c0102938 <_svfprintf_r+0xf78>
c0102332:	81 bd 2c ff ff ff 80 	cmpl   $0x80,-0xd4(%ebp)
c0102339:	00 00 00 
c010233c:	0f 84 c6 03 00 00    	je     c0102708 <_svfprintf_r+0xd48>
c0102342:	8b b5 44 ff ff ff    	mov    -0xbc(%ebp),%esi
c0102348:	2b b5 38 ff ff ff    	sub    -0xc8(%ebp),%esi
c010234e:	85 f6                	test   %esi,%esi
c0102350:	0f 8e d2 00 00 00    	jle    c0102428 <_svfprintf_r+0xa68>
c0102356:	83 fe 10             	cmp    $0x10,%esi
c0102359:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c010235f:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c0102365:	7f 11                	jg     c0102378 <_svfprintf_r+0x9b8>
c0102367:	eb 6b                	jmp    c01023d4 <_svfprintf_r+0xa14>
c0102369:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0102370:	83 ee 10             	sub    $0x10,%esi
c0102373:	83 fe 10             	cmp    $0x10,%esi
c0102376:	7e 5c                	jle    c01023d4 <_svfprintf_r+0xa14>
c0102378:	83 c0 01             	add    $0x1,%eax
c010237b:	83 c1 10             	add    $0x10,%ecx
c010237e:	c7 07 e0 88 10 c0    	movl   $0xc01088e0,(%edi)
c0102384:	83 c7 08             	add    $0x8,%edi
c0102387:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c010238e:	83 f8 07             	cmp    $0x7,%eax
c0102391:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0102397:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c010239d:	7e d1                	jle    c0102370 <_svfprintf_r+0x9b0>
c010239f:	8b 45 0c             	mov    0xc(%ebp),%eax
c01023a2:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c01023a6:	89 44 24 04          	mov    %eax,0x4(%esp)
c01023aa:	8b 45 08             	mov    0x8(%ebp),%eax
c01023ad:	89 04 24             	mov    %eax,(%esp)
c01023b0:	e8 1b 41 00 00       	call   c01064d0 <__ssprint_r>
c01023b5:	85 c0                	test   %eax,%eax
c01023b7:	0f 85 d3 f7 ff ff    	jne    c0101b90 <_svfprintf_r+0x1d0>
c01023bd:	83 ee 10             	sub    $0x10,%esi
c01023c0:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c01023c6:	83 fe 10             	cmp    $0x10,%esi
c01023c9:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c01023cf:	8d 7d a8             	lea    -0x58(%ebp),%edi
c01023d2:	7f a4                	jg     c0102378 <_svfprintf_r+0x9b8>
c01023d4:	83 c0 01             	add    $0x1,%eax
c01023d7:	01 f1                	add    %esi,%ecx
c01023d9:	c7 07 e0 88 10 c0    	movl   $0xc01088e0,(%edi)
c01023df:	83 c7 08             	add    $0x8,%edi
c01023e2:	89 77 fc             	mov    %esi,-0x4(%edi)
c01023e5:	83 f8 07             	cmp    $0x7,%eax
c01023e8:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c01023ee:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c01023f4:	7e 32                	jle    c0102428 <_svfprintf_r+0xa68>
c01023f6:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c01023fc:	89 44 24 08          	mov    %eax,0x8(%esp)
c0102400:	8b 45 0c             	mov    0xc(%ebp),%eax
c0102403:	89 44 24 04          	mov    %eax,0x4(%esp)
c0102407:	8b 45 08             	mov    0x8(%ebp),%eax
c010240a:	89 04 24             	mov    %eax,(%esp)
c010240d:	e8 be 40 00 00       	call   c01064d0 <__ssprint_r>
c0102412:	85 c0                	test   %eax,%eax
c0102414:	0f 85 76 f7 ff ff    	jne    c0101b90 <_svfprintf_r+0x1d0>
c010241a:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0102420:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0102423:	90                   	nop
c0102424:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0102428:	f7 85 4c ff ff ff 00 	testl  $0x100,-0xb4(%ebp)
c010242f:	01 00 00 
c0102432:	0f 85 50 01 00 00    	jne    c0102588 <_svfprintf_r+0xbc8>
c0102438:	8b 85 28 ff ff ff    	mov    -0xd8(%ebp),%eax
c010243e:	89 07                	mov    %eax,(%edi)
c0102440:	8b 85 38 ff ff ff    	mov    -0xc8(%ebp),%eax
c0102446:	01 c1                	add    %eax,%ecx
c0102448:	89 47 04             	mov    %eax,0x4(%edi)
c010244b:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0102451:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0102457:	83 c0 01             	add    $0x1,%eax
c010245a:	83 f8 07             	cmp    $0x7,%eax
c010245d:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0102463:	0f 8f 6a 04 00 00    	jg     c01028d3 <_svfprintf_r+0xf13>
c0102469:	83 c7 08             	add    $0x8,%edi
c010246c:	f6 85 4c ff ff ff 04 	testb  $0x4,-0xb4(%ebp)
c0102473:	0f 84 d7 00 00 00    	je     c0102550 <_svfprintf_r+0xb90>
c0102479:	8b b5 40 ff ff ff    	mov    -0xc0(%ebp),%esi
c010247f:	2b b5 48 ff ff ff    	sub    -0xb8(%ebp),%esi
c0102485:	85 f6                	test   %esi,%esi
c0102487:	0f 8e c3 00 00 00    	jle    c0102550 <_svfprintf_r+0xb90>
c010248d:	83 fe 10             	cmp    $0x10,%esi
c0102490:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0102496:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c010249c:	7f 0a                	jg     c01024a8 <_svfprintf_r+0xae8>
c010249e:	eb 64                	jmp    c0102504 <_svfprintf_r+0xb44>
c01024a0:	83 ee 10             	sub    $0x10,%esi
c01024a3:	83 fe 10             	cmp    $0x10,%esi
c01024a6:	7e 5c                	jle    c0102504 <_svfprintf_r+0xb44>
c01024a8:	83 c0 01             	add    $0x1,%eax
c01024ab:	83 c1 10             	add    $0x10,%ecx
c01024ae:	c7 07 f0 88 10 c0    	movl   $0xc01088f0,(%edi)
c01024b4:	83 c7 08             	add    $0x8,%edi
c01024b7:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c01024be:	83 f8 07             	cmp    $0x7,%eax
c01024c1:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c01024c7:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c01024cd:	7e d1                	jle    c01024a0 <_svfprintf_r+0xae0>
c01024cf:	8b 45 0c             	mov    0xc(%ebp),%eax
c01024d2:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c01024d6:	89 44 24 04          	mov    %eax,0x4(%esp)
c01024da:	8b 45 08             	mov    0x8(%ebp),%eax
c01024dd:	89 04 24             	mov    %eax,(%esp)
c01024e0:	e8 eb 3f 00 00       	call   c01064d0 <__ssprint_r>
c01024e5:	85 c0                	test   %eax,%eax
c01024e7:	0f 85 a3 f6 ff ff    	jne    c0101b90 <_svfprintf_r+0x1d0>
c01024ed:	83 ee 10             	sub    $0x10,%esi
c01024f0:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c01024f6:	83 fe 10             	cmp    $0x10,%esi
c01024f9:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c01024ff:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0102502:	7f a4                	jg     c01024a8 <_svfprintf_r+0xae8>
c0102504:	83 c0 01             	add    $0x1,%eax
c0102507:	01 f1                	add    %esi,%ecx
c0102509:	83 f8 07             	cmp    $0x7,%eax
c010250c:	c7 07 f0 88 10 c0    	movl   $0xc01088f0,(%edi)
c0102512:	89 77 04             	mov    %esi,0x4(%edi)
c0102515:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c010251b:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0102521:	7e 2d                	jle    c0102550 <_svfprintf_r+0xb90>
c0102523:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0102529:	89 44 24 08          	mov    %eax,0x8(%esp)
c010252d:	8b 45 0c             	mov    0xc(%ebp),%eax
c0102530:	89 44 24 04          	mov    %eax,0x4(%esp)
c0102534:	8b 45 08             	mov    0x8(%ebp),%eax
c0102537:	89 04 24             	mov    %eax,(%esp)
c010253a:	e8 91 3f 00 00       	call   c01064d0 <__ssprint_r>
c010253f:	85 c0                	test   %eax,%eax
c0102541:	0f 85 49 f6 ff ff    	jne    c0101b90 <_svfprintf_r+0x1d0>
c0102547:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c010254d:	8d 76 00             	lea    0x0(%esi),%esi
c0102550:	8b 85 40 ff ff ff    	mov    -0xc0(%ebp),%eax
c0102556:	8b 95 48 ff ff ff    	mov    -0xb8(%ebp),%edx
c010255c:	39 c2                	cmp    %eax,%edx
c010255e:	0f 4d c2             	cmovge %edx,%eax
c0102561:	01 85 34 ff ff ff    	add    %eax,-0xcc(%ebp)
c0102567:	85 c9                	test   %ecx,%ecx
c0102569:	0f 85 99 03 00 00    	jne    c0102908 <_svfprintf_r+0xf48>
c010256f:	c7 85 78 ff ff ff 00 	movl   $0x0,-0x88(%ebp)
c0102576:	00 00 00 
c0102579:	8d 7d a8             	lea    -0x58(%ebp),%edi
c010257c:	e9 da f4 ff ff       	jmp    c0101a5b <_svfprintf_r+0x9b>
c0102581:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0102588:	83 bd 24 ff ff ff 65 	cmpl   $0x65,-0xdc(%ebp)
c010258f:	0f 8e 5b 02 00 00    	jle    c01027f0 <_svfprintf_r+0xe30>
c0102595:	90                   	nop
c0102596:	90                   	nop
c0102597:	90                   	nop
c0102598:	90                   	nop
c0102599:	90                   	nop
c010259a:	90                   	nop
c010259b:	90                   	nop
c010259c:	90                   	nop
c010259d:	90                   	nop
c010259e:	90                   	nop
c010259f:	90                   	nop
c01025a0:	90                   	nop
c01025a1:	0f 8a 59 04 00 00    	jp     c0102a00 <_svfprintf_r+0x1040>
c01025a7:	0f 85 53 04 00 00    	jne    c0102a00 <_svfprintf_r+0x1040>
c01025ad:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c01025b3:	83 c1 01             	add    $0x1,%ecx
c01025b6:	83 c7 08             	add    $0x8,%edi
c01025b9:	c7 47 f8 4a 84 10 c0 	movl   $0xc010844a,-0x8(%edi)
c01025c0:	c7 47 fc 01 00 00 00 	movl   $0x1,-0x4(%edi)
c01025c7:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c01025cd:	83 c0 01             	add    $0x1,%eax
c01025d0:	83 f8 07             	cmp    $0x7,%eax
c01025d3:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c01025d9:	0f 8f 63 09 00 00    	jg     c0102f42 <_svfprintf_r+0x1582>
c01025df:	8b 85 1c ff ff ff    	mov    -0xe4(%ebp),%eax
c01025e5:	39 85 5c ff ff ff    	cmp    %eax,-0xa4(%ebp)
c01025eb:	7c 0d                	jl     c01025fa <_svfprintf_r+0xc3a>
c01025ed:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c01025f4:	0f 84 72 fe ff ff    	je     c010246c <_svfprintf_r+0xaac>
c01025fa:	8b 85 0c ff ff ff    	mov    -0xf4(%ebp),%eax
c0102600:	83 c7 08             	add    $0x8,%edi
c0102603:	89 47 f8             	mov    %eax,-0x8(%edi)
c0102606:	8b 85 08 ff ff ff    	mov    -0xf8(%ebp),%eax
c010260c:	89 47 fc             	mov    %eax,-0x4(%edi)
c010260f:	01 c1                	add    %eax,%ecx
c0102611:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0102617:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c010261d:	83 c0 01             	add    $0x1,%eax
c0102620:	83 f8 07             	cmp    $0x7,%eax
c0102623:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0102629:	0f 8f dc 0b 00 00    	jg     c010320b <_svfprintf_r+0x184b>
c010262f:	8b 85 1c ff ff ff    	mov    -0xe4(%ebp),%eax
c0102635:	8d 70 ff             	lea    -0x1(%eax),%esi
c0102638:	85 f6                	test   %esi,%esi
c010263a:	0f 8e 2c fe ff ff    	jle    c010246c <_svfprintf_r+0xaac>
c0102640:	83 fe 10             	cmp    $0x10,%esi
c0102643:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0102649:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c010264f:	7f 13                	jg     c0102664 <_svfprintf_r+0xca4>
c0102651:	e9 e6 05 00 00       	jmp    c0102c3c <_svfprintf_r+0x127c>
c0102656:	66 90                	xchg   %ax,%ax
c0102658:	83 ee 10             	sub    $0x10,%esi
c010265b:	83 fe 10             	cmp    $0x10,%esi
c010265e:	0f 8e d8 05 00 00    	jle    c0102c3c <_svfprintf_r+0x127c>
c0102664:	83 c0 01             	add    $0x1,%eax
c0102667:	83 c1 10             	add    $0x10,%ecx
c010266a:	c7 07 e0 88 10 c0    	movl   $0xc01088e0,(%edi)
c0102670:	83 c7 08             	add    $0x8,%edi
c0102673:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c010267a:	83 f8 07             	cmp    $0x7,%eax
c010267d:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0102683:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0102689:	7e cd                	jle    c0102658 <_svfprintf_r+0xc98>
c010268b:	8b 45 0c             	mov    0xc(%ebp),%eax
c010268e:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0102692:	89 44 24 04          	mov    %eax,0x4(%esp)
c0102696:	8b 45 08             	mov    0x8(%ebp),%eax
c0102699:	89 04 24             	mov    %eax,(%esp)
c010269c:	e8 2f 3e 00 00       	call   c01064d0 <__ssprint_r>
c01026a1:	85 c0                	test   %eax,%eax
c01026a3:	0f 85 e7 f4 ff ff    	jne    c0101b90 <_svfprintf_r+0x1d0>
c01026a9:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c01026af:	8d 7d a8             	lea    -0x58(%ebp),%edi
c01026b2:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c01026b8:	eb 9e                	jmp    c0102658 <_svfprintf_r+0xc98>
c01026ba:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c01026c0:	84 c0                	test   %al,%al
c01026c2:	75 2c                	jne    c01026f0 <_svfprintf_r+0xd30>
c01026c4:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c01026cb:	74 23                	je     c01026f0 <_svfprintf_r+0xd30>
c01026cd:	8b 85 00 ff ff ff    	mov    -0x100(%ebp),%eax
c01026d3:	c6 45 a7 30          	movb   $0x30,-0x59(%ebp)
c01026d7:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c01026dd:	8d 45 a7             	lea    -0x59(%ebp),%eax
c01026e0:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c01026e6:	e9 2d f7 ff ff       	jmp    c0101e18 <_svfprintf_r+0x458>
c01026eb:	90                   	nop
c01026ec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c01026f0:	8d 45 a8             	lea    -0x58(%ebp),%eax
c01026f3:	c7 85 38 ff ff ff 00 	movl   $0x0,-0xc8(%ebp)
c01026fa:	00 00 00 
c01026fd:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c0102703:	e9 10 f7 ff ff       	jmp    c0101e18 <_svfprintf_r+0x458>
c0102708:	8b b5 40 ff ff ff    	mov    -0xc0(%ebp),%esi
c010270e:	2b b5 48 ff ff ff    	sub    -0xb8(%ebp),%esi
c0102714:	85 f6                	test   %esi,%esi
c0102716:	0f 8e 26 fc ff ff    	jle    c0102342 <_svfprintf_r+0x982>
c010271c:	83 fe 10             	cmp    $0x10,%esi
c010271f:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0102725:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c010272b:	7f 0b                	jg     c0102738 <_svfprintf_r+0xd78>
c010272d:	eb 65                	jmp    c0102794 <_svfprintf_r+0xdd4>
c010272f:	90                   	nop
c0102730:	83 ee 10             	sub    $0x10,%esi
c0102733:	83 fe 10             	cmp    $0x10,%esi
c0102736:	7e 5c                	jle    c0102794 <_svfprintf_r+0xdd4>
c0102738:	83 c0 01             	add    $0x1,%eax
c010273b:	83 c1 10             	add    $0x10,%ecx
c010273e:	c7 07 e0 88 10 c0    	movl   $0xc01088e0,(%edi)
c0102744:	83 c7 08             	add    $0x8,%edi
c0102747:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c010274e:	83 f8 07             	cmp    $0x7,%eax
c0102751:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0102757:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c010275d:	7e d1                	jle    c0102730 <_svfprintf_r+0xd70>
c010275f:	8b 45 0c             	mov    0xc(%ebp),%eax
c0102762:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0102766:	89 44 24 04          	mov    %eax,0x4(%esp)
c010276a:	8b 45 08             	mov    0x8(%ebp),%eax
c010276d:	89 04 24             	mov    %eax,(%esp)
c0102770:	e8 5b 3d 00 00       	call   c01064d0 <__ssprint_r>
c0102775:	85 c0                	test   %eax,%eax
c0102777:	0f 85 13 f4 ff ff    	jne    c0101b90 <_svfprintf_r+0x1d0>
c010277d:	83 ee 10             	sub    $0x10,%esi
c0102780:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0102786:	83 fe 10             	cmp    $0x10,%esi
c0102789:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c010278f:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0102792:	7f a4                	jg     c0102738 <_svfprintf_r+0xd78>
c0102794:	83 c0 01             	add    $0x1,%eax
c0102797:	01 f1                	add    %esi,%ecx
c0102799:	c7 07 e0 88 10 c0    	movl   $0xc01088e0,(%edi)
c010279f:	83 c7 08             	add    $0x8,%edi
c01027a2:	89 77 fc             	mov    %esi,-0x4(%edi)
c01027a5:	83 f8 07             	cmp    $0x7,%eax
c01027a8:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c01027ae:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c01027b4:	0f 8e 88 fb ff ff    	jle    c0102342 <_svfprintf_r+0x982>
c01027ba:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c01027c0:	89 44 24 08          	mov    %eax,0x8(%esp)
c01027c4:	8b 45 0c             	mov    0xc(%ebp),%eax
c01027c7:	89 44 24 04          	mov    %eax,0x4(%esp)
c01027cb:	8b 45 08             	mov    0x8(%ebp),%eax
c01027ce:	89 04 24             	mov    %eax,(%esp)
c01027d1:	e8 fa 3c 00 00       	call   c01064d0 <__ssprint_r>
c01027d6:	85 c0                	test   %eax,%eax
c01027d8:	0f 85 b2 f3 ff ff    	jne    c0101b90 <_svfprintf_r+0x1d0>
c01027de:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c01027e4:	8d 7d a8             	lea    -0x58(%ebp),%edi
c01027e7:	e9 56 fb ff ff       	jmp    c0102342 <_svfprintf_r+0x982>
c01027ec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c01027f0:	83 bd 1c ff ff ff 01 	cmpl   $0x1,-0xe4(%ebp)
c01027f7:	8b 85 28 ff ff ff    	mov    -0xd8(%ebp),%eax
c01027fd:	0f 8e df 05 00 00    	jle    c0102de2 <_svfprintf_r+0x1422>
c0102803:	89 07                	mov    %eax,(%edi)
c0102805:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c010280b:	8d 51 01             	lea    0x1(%ecx),%edx
c010280e:	c7 47 04 01 00 00 00 	movl   $0x1,0x4(%edi)
c0102815:	83 c7 08             	add    $0x8,%edi
c0102818:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c010281e:	83 c0 01             	add    $0x1,%eax
c0102821:	83 f8 07             	cmp    $0x7,%eax
c0102824:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c010282a:	0f 8f 59 06 00 00    	jg     c0102e89 <_svfprintf_r+0x14c9>
c0102830:	8b 9d 0c ff ff ff    	mov    -0xf4(%ebp),%ebx
c0102836:	83 c0 01             	add    $0x1,%eax
c0102839:	83 c7 08             	add    $0x8,%edi
c010283c:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0102842:	89 5f f8             	mov    %ebx,-0x8(%edi)
c0102845:	8b 9d 08 ff ff ff    	mov    -0xf8(%ebp),%ebx
c010284b:	89 5f fc             	mov    %ebx,-0x4(%edi)
c010284e:	01 da                	add    %ebx,%edx
c0102850:	83 f8 07             	cmp    $0x7,%eax
c0102853:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0102859:	0f 8f f2 05 00 00    	jg     c0102e51 <_svfprintf_r+0x1491>
c010285f:	90                   	nop
c0102860:	90                   	nop
c0102861:	dd 85 10 ff ff ff    	fldl   -0xf0(%ebp)
c0102867:	df e9                	fucomip %st(1),%st
c0102869:	dd d8                	fstp   %st(0)
c010286b:	7a 06                	jp     c0102873 <_svfprintf_r+0xeb3>
c010286d:	0f 84 33 03 00 00    	je     c0102ba6 <_svfprintf_r+0x11e6>
c0102873:	8b 8d 28 ff ff ff    	mov    -0xd8(%ebp),%ecx
c0102879:	8b 9d 1c ff ff ff    	mov    -0xe4(%ebp),%ebx
c010287f:	83 c1 01             	add    $0x1,%ecx
c0102882:	89 0f                	mov    %ecx,(%edi)
c0102884:	8d 4b ff             	lea    -0x1(%ebx),%ecx
c0102887:	89 4f 04             	mov    %ecx,0x4(%edi)
c010288a:	01 ca                	add    %ecx,%edx
c010288c:	83 c0 01             	add    $0x1,%eax
c010288f:	83 f8 07             	cmp    $0x7,%eax
c0102892:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0102898:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c010289e:	0f 8f 75 05 00 00    	jg     c0102e19 <_svfprintf_r+0x1459>
c01028a4:	83 c7 08             	add    $0x8,%edi
c01028a7:	8b 9d 04 ff ff ff    	mov    -0xfc(%ebp),%ebx
c01028ad:	8d 8d 65 ff ff ff    	lea    -0x9b(%ebp),%ecx
c01028b3:	89 0f                	mov    %ecx,(%edi)
c01028b5:	89 5f 04             	mov    %ebx,0x4(%edi)
c01028b8:	8d 0c 1a             	lea    (%edx,%ebx,1),%ecx
c01028bb:	83 c0 01             	add    $0x1,%eax
c01028be:	83 f8 07             	cmp    $0x7,%eax
c01028c1:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c01028c7:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c01028cd:	0f 8e 96 fb ff ff    	jle    c0102469 <_svfprintf_r+0xaa9>
c01028d3:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c01028d9:	89 44 24 08          	mov    %eax,0x8(%esp)
c01028dd:	8b 45 0c             	mov    0xc(%ebp),%eax
c01028e0:	89 44 24 04          	mov    %eax,0x4(%esp)
c01028e4:	8b 45 08             	mov    0x8(%ebp),%eax
c01028e7:	89 04 24             	mov    %eax,(%esp)
c01028ea:	e8 e1 3b 00 00       	call   c01064d0 <__ssprint_r>
c01028ef:	85 c0                	test   %eax,%eax
c01028f1:	0f 85 99 f2 ff ff    	jne    c0101b90 <_svfprintf_r+0x1d0>
c01028f7:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c01028fd:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0102900:	e9 67 fb ff ff       	jmp    c010246c <_svfprintf_r+0xaac>
c0102905:	8d 76 00             	lea    0x0(%esi),%esi
c0102908:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c010290e:	89 44 24 08          	mov    %eax,0x8(%esp)
c0102912:	8b 45 0c             	mov    0xc(%ebp),%eax
c0102915:	89 44 24 04          	mov    %eax,0x4(%esp)
c0102919:	8b 45 08             	mov    0x8(%ebp),%eax
c010291c:	89 04 24             	mov    %eax,(%esp)
c010291f:	e8 ac 3b 00 00       	call   c01064d0 <__ssprint_r>
c0102924:	85 c0                	test   %eax,%eax
c0102926:	0f 84 43 fc ff ff    	je     c010256f <_svfprintf_r+0xbaf>
c010292c:	e9 5f f2 ff ff       	jmp    c0101b90 <_svfprintf_r+0x1d0>
c0102931:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0102938:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c010293e:	89 44 24 08          	mov    %eax,0x8(%esp)
c0102942:	8b 45 0c             	mov    0xc(%ebp),%eax
c0102945:	89 44 24 04          	mov    %eax,0x4(%esp)
c0102949:	8b 45 08             	mov    0x8(%ebp),%eax
c010294c:	89 04 24             	mov    %eax,(%esp)
c010294f:	e8 7c 3b 00 00       	call   c01064d0 <__ssprint_r>
c0102954:	85 c0                	test   %eax,%eax
c0102956:	0f 85 34 f2 ff ff    	jne    c0101b90 <_svfprintf_r+0x1d0>
c010295c:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0102962:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0102965:	e9 c8 f9 ff ff       	jmp    c0102332 <_svfprintf_r+0x972>
c010296a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0102970:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0102976:	89 44 24 08          	mov    %eax,0x8(%esp)
c010297a:	8b 45 0c             	mov    0xc(%ebp),%eax
c010297d:	89 44 24 04          	mov    %eax,0x4(%esp)
c0102981:	8b 45 08             	mov    0x8(%ebp),%eax
c0102984:	89 04 24             	mov    %eax,(%esp)
c0102987:	e8 44 3b 00 00       	call   c01064d0 <__ssprint_r>
c010298c:	85 c0                	test   %eax,%eax
c010298e:	0f 85 fc f1 ff ff    	jne    c0101b90 <_svfprintf_r+0x1d0>
c0102994:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c010299a:	8d 7d a8             	lea    -0x58(%ebp),%edi
c010299d:	e9 53 f9 ff ff       	jmp    c01022f5 <_svfprintf_r+0x935>
c01029a2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c01029a8:	89 c2                	mov    %eax,%edx
c01029aa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c01029b0:	89 c8                	mov    %ecx,%eax
c01029b2:	83 ea 01             	sub    $0x1,%edx
c01029b5:	83 e0 07             	and    $0x7,%eax
c01029b8:	c1 e9 03             	shr    $0x3,%ecx
c01029bb:	83 c0 30             	add    $0x30,%eax
c01029be:	85 c9                	test   %ecx,%ecx
c01029c0:	88 02                	mov    %al,(%edx)
c01029c2:	75 ec                	jne    c01029b0 <_svfprintf_r+0xff0>
c01029c4:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c01029cb:	89 95 28 ff ff ff    	mov    %edx,-0xd8(%ebp)
c01029d1:	0f 84 5b 01 00 00    	je     c0102b32 <_svfprintf_r+0x1172>
c01029d7:	3c 30                	cmp    $0x30,%al
c01029d9:	74 0b                	je     c01029e6 <_svfprintf_r+0x1026>
c01029db:	83 ad 28 ff ff ff 01 	subl   $0x1,-0xd8(%ebp)
c01029e2:	c6 42 ff 30          	movb   $0x30,-0x1(%edx)
c01029e6:	8d 45 a8             	lea    -0x58(%ebp),%eax
c01029e9:	2b 85 28 ff ff ff    	sub    -0xd8(%ebp),%eax
c01029ef:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c01029f5:	e9 1e f4 ff ff       	jmp    c0101e18 <_svfprintf_r+0x458>
c01029fa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0102a00:	8b 9d 5c ff ff ff    	mov    -0xa4(%ebp),%ebx
c0102a06:	85 db                	test   %ebx,%ebx
c0102a08:	0f 8e 66 05 00 00    	jle    c0102f74 <_svfprintf_r+0x15b4>
c0102a0e:	8b 95 28 ff ff ff    	mov    -0xd8(%ebp),%edx
c0102a14:	8b 85 1c ff ff ff    	mov    -0xe4(%ebp),%eax
c0102a1a:	01 d0                	add    %edx,%eax
c0102a1c:	89 c3                	mov    %eax,%ebx
c0102a1e:	29 d3                	sub    %edx,%ebx
c0102a20:	89 85 44 ff ff ff    	mov    %eax,-0xbc(%ebp)
c0102a26:	89 d0                	mov    %edx,%eax
c0102a28:	8b 95 20 ff ff ff    	mov    -0xe0(%ebp),%edx
c0102a2e:	39 d3                	cmp    %edx,%ebx
c0102a30:	0f 4f da             	cmovg  %edx,%ebx
c0102a33:	85 db                	test   %ebx,%ebx
c0102a35:	7e 28                	jle    c0102a5f <_svfprintf_r+0x109f>
c0102a37:	89 07                	mov    %eax,(%edi)
c0102a39:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0102a3f:	01 d9                	add    %ebx,%ecx
c0102a41:	89 5f 04             	mov    %ebx,0x4(%edi)
c0102a44:	83 c7 08             	add    $0x8,%edi
c0102a47:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0102a4d:	83 c0 01             	add    $0x1,%eax
c0102a50:	83 f8 07             	cmp    $0x7,%eax
c0102a53:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0102a59:	0f 8f 58 09 00 00    	jg     c01033b7 <_svfprintf_r+0x19f7>
c0102a5f:	8b b5 20 ff ff ff    	mov    -0xe0(%ebp),%esi
c0102a65:	31 c0                	xor    %eax,%eax
c0102a67:	85 db                	test   %ebx,%ebx
c0102a69:	0f 49 c3             	cmovns %ebx,%eax
c0102a6c:	29 c6                	sub    %eax,%esi
c0102a6e:	85 f6                	test   %esi,%esi
c0102a70:	0f 8e 40 02 00 00    	jle    c0102cb6 <_svfprintf_r+0x12f6>
c0102a76:	83 fe 10             	cmp    $0x10,%esi
c0102a79:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0102a7f:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c0102a85:	7f 15                	jg     c0102a9c <_svfprintf_r+0x10dc>
c0102a87:	e9 db 01 00 00       	jmp    c0102c67 <_svfprintf_r+0x12a7>
c0102a8c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0102a90:	83 ee 10             	sub    $0x10,%esi
c0102a93:	83 fe 10             	cmp    $0x10,%esi
c0102a96:	0f 8e cb 01 00 00    	jle    c0102c67 <_svfprintf_r+0x12a7>
c0102a9c:	83 c0 01             	add    $0x1,%eax
c0102a9f:	83 c1 10             	add    $0x10,%ecx
c0102aa2:	c7 07 e0 88 10 c0    	movl   $0xc01088e0,(%edi)
c0102aa8:	83 c7 08             	add    $0x8,%edi
c0102aab:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c0102ab2:	83 f8 07             	cmp    $0x7,%eax
c0102ab5:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0102abb:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0102ac1:	7e cd                	jle    c0102a90 <_svfprintf_r+0x10d0>
c0102ac3:	8b 45 0c             	mov    0xc(%ebp),%eax
c0102ac6:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0102aca:	89 44 24 04          	mov    %eax,0x4(%esp)
c0102ace:	8b 45 08             	mov    0x8(%ebp),%eax
c0102ad1:	89 04 24             	mov    %eax,(%esp)
c0102ad4:	e8 f7 39 00 00       	call   c01064d0 <__ssprint_r>
c0102ad9:	85 c0                	test   %eax,%eax
c0102adb:	0f 85 af f0 ff ff    	jne    c0101b90 <_svfprintf_r+0x1d0>
c0102ae1:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0102ae7:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0102aea:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0102af0:	eb 9e                	jmp    c0102a90 <_svfprintf_r+0x10d0>
c0102af2:	8d 45 a8             	lea    -0x58(%ebp),%eax
c0102af5:	be cd cc cc cc       	mov    $0xcccccccd,%esi
c0102afa:	89 bd 48 ff ff ff    	mov    %edi,-0xb8(%ebp)
c0102b00:	89 c7                	mov    %eax,%edi
c0102b02:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0102b08:	89 c8                	mov    %ecx,%eax
c0102b0a:	83 ef 01             	sub    $0x1,%edi
c0102b0d:	f7 e6                	mul    %esi
c0102b0f:	c1 ea 03             	shr    $0x3,%edx
c0102b12:	8d 04 92             	lea    (%edx,%edx,4),%eax
c0102b15:	01 c0                	add    %eax,%eax
c0102b17:	29 c1                	sub    %eax,%ecx
c0102b19:	83 c1 30             	add    $0x30,%ecx
c0102b1c:	85 d2                	test   %edx,%edx
c0102b1e:	88 0f                	mov    %cl,(%edi)
c0102b20:	89 d1                	mov    %edx,%ecx
c0102b22:	75 e4                	jne    c0102b08 <_svfprintf_r+0x1148>
c0102b24:	89 fa                	mov    %edi,%edx
c0102b26:	89 bd 28 ff ff ff    	mov    %edi,-0xd8(%ebp)
c0102b2c:	8b bd 48 ff ff ff    	mov    -0xb8(%ebp),%edi
c0102b32:	8d 45 a8             	lea    -0x58(%ebp),%eax
c0102b35:	29 d0                	sub    %edx,%eax
c0102b37:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c0102b3d:	e9 d6 f2 ff ff       	jmp    c0101e18 <_svfprintf_r+0x458>
c0102b42:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0102b48:	83 f9 09             	cmp    $0x9,%ecx
c0102b4b:	77 a5                	ja     c0102af2 <_svfprintf_r+0x1132>
c0102b4d:	8b 85 00 ff ff ff    	mov    -0x100(%ebp),%eax
c0102b53:	83 c1 30             	add    $0x30,%ecx
c0102b56:	88 4d a7             	mov    %cl,-0x59(%ebp)
c0102b59:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c0102b5f:	8d 45 a7             	lea    -0x59(%ebp),%eax
c0102b62:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c0102b68:	e9 ab f2 ff ff       	jmp    c0101e18 <_svfprintf_r+0x458>
c0102b6d:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0102b73:	89 44 24 08          	mov    %eax,0x8(%esp)
c0102b77:	8b 45 0c             	mov    0xc(%ebp),%eax
c0102b7a:	89 44 24 04          	mov    %eax,0x4(%esp)
c0102b7e:	8b 45 08             	mov    0x8(%ebp),%eax
c0102b81:	89 04 24             	mov    %eax,(%esp)
c0102b84:	e8 47 39 00 00       	call   c01064d0 <__ssprint_r>
c0102b89:	85 c0                	test   %eax,%eax
c0102b8b:	0f 85 ff ef ff ff    	jne    c0101b90 <_svfprintf_r+0x1d0>
c0102b91:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c0102b98:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0102b9b:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0102ba1:	e9 18 f7 ff ff       	jmp    c01022be <_svfprintf_r+0x8fe>
c0102ba6:	8b 9d 1c ff ff ff    	mov    -0xe4(%ebp),%ebx
c0102bac:	8d 73 ff             	lea    -0x1(%ebx),%esi
c0102baf:	85 f6                	test   %esi,%esi
c0102bb1:	0f 8e f0 fc ff ff    	jle    c01028a7 <_svfprintf_r+0xee7>
c0102bb7:	83 fe 10             	cmp    $0x10,%esi
c0102bba:	7e 70                	jle    c0102c2c <_svfprintf_r+0x126c>
c0102bbc:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c0102bc2:	eb 0c                	jmp    c0102bd0 <_svfprintf_r+0x1210>
c0102bc4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0102bc8:	83 ee 10             	sub    $0x10,%esi
c0102bcb:	83 fe 10             	cmp    $0x10,%esi
c0102bce:	7e 5c                	jle    c0102c2c <_svfprintf_r+0x126c>
c0102bd0:	83 c0 01             	add    $0x1,%eax
c0102bd3:	83 c2 10             	add    $0x10,%edx
c0102bd6:	c7 07 e0 88 10 c0    	movl   $0xc01088e0,(%edi)
c0102bdc:	83 c7 08             	add    $0x8,%edi
c0102bdf:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c0102be6:	83 f8 07             	cmp    $0x7,%eax
c0102be9:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0102bef:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0102bf5:	7e d1                	jle    c0102bc8 <_svfprintf_r+0x1208>
c0102bf7:	8b 45 0c             	mov    0xc(%ebp),%eax
c0102bfa:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0102bfe:	89 44 24 04          	mov    %eax,0x4(%esp)
c0102c02:	8b 45 08             	mov    0x8(%ebp),%eax
c0102c05:	89 04 24             	mov    %eax,(%esp)
c0102c08:	e8 c3 38 00 00       	call   c01064d0 <__ssprint_r>
c0102c0d:	85 c0                	test   %eax,%eax
c0102c0f:	0f 85 7b ef ff ff    	jne    c0101b90 <_svfprintf_r+0x1d0>
c0102c15:	83 ee 10             	sub    $0x10,%esi
c0102c18:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0102c1e:	83 fe 10             	cmp    $0x10,%esi
c0102c21:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0102c27:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0102c2a:	7f a4                	jg     c0102bd0 <_svfprintf_r+0x1210>
c0102c2c:	c7 07 e0 88 10 c0    	movl   $0xc01088e0,(%edi)
c0102c32:	01 f2                	add    %esi,%edx
c0102c34:	89 77 04             	mov    %esi,0x4(%edi)
c0102c37:	e9 50 fc ff ff       	jmp    c010288c <_svfprintf_r+0xecc>
c0102c3c:	c7 07 e0 88 10 c0    	movl   $0xc01088e0,(%edi)
c0102c42:	01 f1                	add    %esi,%ecx
c0102c44:	89 77 04             	mov    %esi,0x4(%edi)
c0102c47:	e9 6f fc ff ff       	jmp    c01028bb <_svfprintf_r+0xefb>
c0102c4c:	8b 45 14             	mov    0x14(%ebp),%eax
c0102c4f:	8b 95 34 ff ff ff    	mov    -0xcc(%ebp),%edx
c0102c55:	8b 00                	mov    (%eax),%eax
c0102c57:	89 10                	mov    %edx,(%eax)
c0102c59:	8b 45 14             	mov    0x14(%ebp),%eax
c0102c5c:	83 c0 04             	add    $0x4,%eax
c0102c5f:	89 45 14             	mov    %eax,0x14(%ebp)
c0102c62:	e9 f4 ed ff ff       	jmp    c0101a5b <_svfprintf_r+0x9b>
c0102c67:	83 c0 01             	add    $0x1,%eax
c0102c6a:	01 f1                	add    %esi,%ecx
c0102c6c:	c7 07 e0 88 10 c0    	movl   $0xc01088e0,(%edi)
c0102c72:	83 c7 08             	add    $0x8,%edi
c0102c75:	89 77 fc             	mov    %esi,-0x4(%edi)
c0102c78:	83 f8 07             	cmp    $0x7,%eax
c0102c7b:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0102c81:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0102c87:	7e 2d                	jle    c0102cb6 <_svfprintf_r+0x12f6>
c0102c89:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0102c8f:	89 44 24 08          	mov    %eax,0x8(%esp)
c0102c93:	8b 45 0c             	mov    0xc(%ebp),%eax
c0102c96:	89 44 24 04          	mov    %eax,0x4(%esp)
c0102c9a:	8b 45 08             	mov    0x8(%ebp),%eax
c0102c9d:	89 04 24             	mov    %eax,(%esp)
c0102ca0:	e8 2b 38 00 00       	call   c01064d0 <__ssprint_r>
c0102ca5:	85 c0                	test   %eax,%eax
c0102ca7:	0f 85 e3 ee ff ff    	jne    c0101b90 <_svfprintf_r+0x1d0>
c0102cad:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0102cb3:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0102cb6:	8b 85 28 ff ff ff    	mov    -0xd8(%ebp),%eax
c0102cbc:	8b 95 5c ff ff ff    	mov    -0xa4(%ebp),%edx
c0102cc2:	03 85 20 ff ff ff    	add    -0xe0(%ebp),%eax
c0102cc8:	3b 95 1c ff ff ff    	cmp    -0xe4(%ebp),%edx
c0102cce:	89 c6                	mov    %eax,%esi
c0102cd0:	7c 0d                	jl     c0102cdf <_svfprintf_r+0x131f>
c0102cd2:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c0102cd9:	0f 84 5e 05 00 00    	je     c010323d <_svfprintf_r+0x187d>
c0102cdf:	8b 85 0c ff ff ff    	mov    -0xf4(%ebp),%eax
c0102ce5:	89 07                	mov    %eax,(%edi)
c0102ce7:	8b 85 08 ff ff ff    	mov    -0xf8(%ebp),%eax
c0102ced:	01 c1                	add    %eax,%ecx
c0102cef:	89 47 04             	mov    %eax,0x4(%edi)
c0102cf2:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0102cf8:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0102cfe:	83 c0 01             	add    $0x1,%eax
c0102d01:	83 f8 07             	cmp    $0x7,%eax
c0102d04:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0102d0a:	0f 8f d9 06 00 00    	jg     c01033e9 <_svfprintf_r+0x1a29>
c0102d10:	83 c7 08             	add    $0x8,%edi
c0102d13:	89 d0                	mov    %edx,%eax
c0102d15:	8b 9d 44 ff ff ff    	mov    -0xbc(%ebp),%ebx
c0102d1b:	89 f2                	mov    %esi,%edx
c0102d1d:	29 f3                	sub    %esi,%ebx
c0102d1f:	8b b5 1c ff ff ff    	mov    -0xe4(%ebp),%esi
c0102d25:	29 c6                	sub    %eax,%esi
c0102d27:	39 de                	cmp    %ebx,%esi
c0102d29:	0f 4e de             	cmovle %esi,%ebx
c0102d2c:	85 db                	test   %ebx,%ebx
c0102d2e:	7e 29                	jle    c0102d59 <_svfprintf_r+0x1399>
c0102d30:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0102d36:	01 d9                	add    %ebx,%ecx
c0102d38:	83 c7 08             	add    $0x8,%edi
c0102d3b:	89 57 f8             	mov    %edx,-0x8(%edi)
c0102d3e:	89 5f fc             	mov    %ebx,-0x4(%edi)
c0102d41:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0102d47:	83 c0 01             	add    $0x1,%eax
c0102d4a:	83 f8 07             	cmp    $0x7,%eax
c0102d4d:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0102d53:	0f 8f c8 06 00 00    	jg     c0103421 <_svfprintf_r+0x1a61>
c0102d59:	31 c0                	xor    %eax,%eax
c0102d5b:	85 db                	test   %ebx,%ebx
c0102d5d:	0f 49 c3             	cmovns %ebx,%eax
c0102d60:	29 c6                	sub    %eax,%esi
c0102d62:	85 f6                	test   %esi,%esi
c0102d64:	0f 8e 02 f7 ff ff    	jle    c010246c <_svfprintf_r+0xaac>
c0102d6a:	83 fe 10             	cmp    $0x10,%esi
c0102d6d:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0102d73:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c0102d79:	7f 11                	jg     c0102d8c <_svfprintf_r+0x13cc>
c0102d7b:	e9 bc fe ff ff       	jmp    c0102c3c <_svfprintf_r+0x127c>
c0102d80:	83 ee 10             	sub    $0x10,%esi
c0102d83:	83 fe 10             	cmp    $0x10,%esi
c0102d86:	0f 8e b0 fe ff ff    	jle    c0102c3c <_svfprintf_r+0x127c>
c0102d8c:	83 c0 01             	add    $0x1,%eax
c0102d8f:	83 c1 10             	add    $0x10,%ecx
c0102d92:	c7 07 e0 88 10 c0    	movl   $0xc01088e0,(%edi)
c0102d98:	83 c7 08             	add    $0x8,%edi
c0102d9b:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c0102da2:	83 f8 07             	cmp    $0x7,%eax
c0102da5:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0102dab:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0102db1:	7e cd                	jle    c0102d80 <_svfprintf_r+0x13c0>
c0102db3:	8b 45 0c             	mov    0xc(%ebp),%eax
c0102db6:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0102dba:	89 44 24 04          	mov    %eax,0x4(%esp)
c0102dbe:	8b 45 08             	mov    0x8(%ebp),%eax
c0102dc1:	89 04 24             	mov    %eax,(%esp)
c0102dc4:	e8 07 37 00 00       	call   c01064d0 <__ssprint_r>
c0102dc9:	85 c0                	test   %eax,%eax
c0102dcb:	0f 85 bf ed ff ff    	jne    c0101b90 <_svfprintf_r+0x1d0>
c0102dd1:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0102dd7:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0102dda:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0102de0:	eb 9e                	jmp    c0102d80 <_svfprintf_r+0x13c0>
c0102de2:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c0102de9:	0f 85 14 fa ff ff    	jne    c0102803 <_svfprintf_r+0xe43>
c0102def:	89 07                	mov    %eax,(%edi)
c0102df1:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0102df7:	8d 51 01             	lea    0x1(%ecx),%edx
c0102dfa:	c7 47 04 01 00 00 00 	movl   $0x1,0x4(%edi)
c0102e01:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0102e07:	83 c0 01             	add    $0x1,%eax
c0102e0a:	83 f8 07             	cmp    $0x7,%eax
c0102e0d:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0102e13:	0f 8e 8b fa ff ff    	jle    c01028a4 <_svfprintf_r+0xee4>
c0102e19:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0102e1f:	89 44 24 08          	mov    %eax,0x8(%esp)
c0102e23:	8b 45 0c             	mov    0xc(%ebp),%eax
c0102e26:	89 44 24 04          	mov    %eax,0x4(%esp)
c0102e2a:	8b 45 08             	mov    0x8(%ebp),%eax
c0102e2d:	89 04 24             	mov    %eax,(%esp)
c0102e30:	e8 9b 36 00 00       	call   c01064d0 <__ssprint_r>
c0102e35:	85 c0                	test   %eax,%eax
c0102e37:	0f 85 53 ed ff ff    	jne    c0101b90 <_svfprintf_r+0x1d0>
c0102e3d:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0102e43:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0102e46:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0102e4c:	e9 56 fa ff ff       	jmp    c01028a7 <_svfprintf_r+0xee7>
c0102e51:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0102e57:	89 44 24 08          	mov    %eax,0x8(%esp)
c0102e5b:	8b 45 0c             	mov    0xc(%ebp),%eax
c0102e5e:	89 44 24 04          	mov    %eax,0x4(%esp)
c0102e62:	8b 45 08             	mov    0x8(%ebp),%eax
c0102e65:	89 04 24             	mov    %eax,(%esp)
c0102e68:	e8 63 36 00 00       	call   c01064d0 <__ssprint_r>
c0102e6d:	85 c0                	test   %eax,%eax
c0102e6f:	0f 85 1b ed ff ff    	jne    c0101b90 <_svfprintf_r+0x1d0>
c0102e75:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0102e7b:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0102e7e:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0102e84:	e9 d6 f9 ff ff       	jmp    c010285f <_svfprintf_r+0xe9f>
c0102e89:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0102e8f:	89 44 24 08          	mov    %eax,0x8(%esp)
c0102e93:	8b 45 0c             	mov    0xc(%ebp),%eax
c0102e96:	89 44 24 04          	mov    %eax,0x4(%esp)
c0102e9a:	8b 45 08             	mov    0x8(%ebp),%eax
c0102e9d:	89 04 24             	mov    %eax,(%esp)
c0102ea0:	e8 2b 36 00 00       	call   c01064d0 <__ssprint_r>
c0102ea5:	85 c0                	test   %eax,%eax
c0102ea7:	0f 85 e3 ec ff ff    	jne    c0101b90 <_svfprintf_r+0x1d0>
c0102ead:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0102eb3:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0102eb6:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0102ebc:	e9 6f f9 ff ff       	jmp    c0102830 <_svfprintf_r+0xe70>
c0102ec1:	dd 85 10 ff ff ff    	fldl   -0xf0(%ebp)
c0102ec7:	dd 1c 24             	fstpl  (%esp)
c0102eca:	e8 11 35 00 00       	call   c01063e0 <__fpclassifyd>
c0102ecf:	85 c0                	test   %eax,%eax
c0102ed1:	0f 85 a3 01 00 00    	jne    c010307a <_svfprintf_r+0x16ba>
c0102ed7:	83 bd 24 ff ff ff 47 	cmpl   $0x47,-0xdc(%ebp)
c0102ede:	ba 4a 87 10 c0       	mov    $0xc010874a,%edx
c0102ee3:	b8 4e 87 10 c0       	mov    $0xc010874e,%eax
c0102ee8:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c0102eef:	c7 85 48 ff ff ff 03 	movl   $0x3,-0xb8(%ebp)
c0102ef6:	00 00 00 
c0102ef9:	0f 4e c2             	cmovle %edx,%eax
c0102efc:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c0102f02:	81 a5 4c ff ff ff 7f 	andl   $0xffffff7f,-0xb4(%ebp)
c0102f09:	ff ff ff 
c0102f0c:	c7 85 38 ff ff ff 03 	movl   $0x3,-0xc8(%ebp)
c0102f13:	00 00 00 
c0102f16:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c0102f1d:	00 00 00 
c0102f20:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c0102f27:	00 00 00 
c0102f2a:	e9 29 ed ff ff       	jmp    c0101c58 <_svfprintf_r+0x298>
c0102f2f:	dd 00                	fldl   (%eax)
c0102f31:	83 c0 08             	add    $0x8,%eax
c0102f34:	dd 9d 10 ff ff ff    	fstpl  -0xf0(%ebp)
c0102f3a:	89 45 14             	mov    %eax,0x14(%ebp)
c0102f3d:	e9 e6 ef ff ff       	jmp    c0101f28 <_svfprintf_r+0x568>
c0102f42:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0102f48:	89 44 24 08          	mov    %eax,0x8(%esp)
c0102f4c:	8b 45 0c             	mov    0xc(%ebp),%eax
c0102f4f:	89 44 24 04          	mov    %eax,0x4(%esp)
c0102f53:	8b 45 08             	mov    0x8(%ebp),%eax
c0102f56:	89 04 24             	mov    %eax,(%esp)
c0102f59:	e8 72 35 00 00       	call   c01064d0 <__ssprint_r>
c0102f5e:	85 c0                	test   %eax,%eax
c0102f60:	0f 85 2a ec ff ff    	jne    c0101b90 <_svfprintf_r+0x1d0>
c0102f66:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0102f6c:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0102f6f:	e9 6b f6 ff ff       	jmp    c01025df <_svfprintf_r+0xc1f>
c0102f74:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0102f7a:	83 c1 01             	add    $0x1,%ecx
c0102f7d:	83 c7 08             	add    $0x8,%edi
c0102f80:	c7 47 f8 4a 84 10 c0 	movl   $0xc010844a,-0x8(%edi)
c0102f87:	c7 47 fc 01 00 00 00 	movl   $0x1,-0x4(%edi)
c0102f8e:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0102f94:	83 c0 01             	add    $0x1,%eax
c0102f97:	83 f8 07             	cmp    $0x7,%eax
c0102f9a:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0102fa0:	0f 8f ef 02 00 00    	jg     c0103295 <_svfprintf_r+0x18d5>
c0102fa6:	85 db                	test   %ebx,%ebx
c0102fa8:	75 17                	jne    c0102fc1 <_svfprintf_r+0x1601>
c0102faa:	8b 95 1c ff ff ff    	mov    -0xe4(%ebp),%edx
c0102fb0:	85 d2                	test   %edx,%edx
c0102fb2:	75 0d                	jne    c0102fc1 <_svfprintf_r+0x1601>
c0102fb4:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c0102fbb:	0f 84 ab f4 ff ff    	je     c010246c <_svfprintf_r+0xaac>
c0102fc1:	8b 85 0c ff ff ff    	mov    -0xf4(%ebp),%eax
c0102fc7:	83 c7 08             	add    $0x8,%edi
c0102fca:	89 47 f8             	mov    %eax,-0x8(%edi)
c0102fcd:	8b 85 08 ff ff ff    	mov    -0xf8(%ebp),%eax
c0102fd3:	89 47 fc             	mov    %eax,-0x4(%edi)
c0102fd6:	8d 14 01             	lea    (%ecx,%eax,1),%edx
c0102fd9:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0102fdf:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0102fe5:	83 c0 01             	add    $0x1,%eax
c0102fe8:	83 f8 07             	cmp    $0x7,%eax
c0102feb:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0102ff1:	0f 8f 60 03 00 00    	jg     c0103357 <_svfprintf_r+0x1997>
c0102ff7:	f7 db                	neg    %ebx
c0102ff9:	85 db                	test   %ebx,%ebx
c0102ffb:	0f 8e 21 03 00 00    	jle    c0103322 <_svfprintf_r+0x1962>
c0103001:	83 fb 10             	cmp    $0x10,%ebx
c0103004:	0f 8e c3 02 00 00    	jle    c01032cd <_svfprintf_r+0x190d>
c010300a:	8d b5 74 ff ff ff    	lea    -0x8c(%ebp),%esi
c0103010:	eb 12                	jmp    c0103024 <_svfprintf_r+0x1664>
c0103012:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0103018:	83 eb 10             	sub    $0x10,%ebx
c010301b:	83 fb 10             	cmp    $0x10,%ebx
c010301e:	0f 8e a9 02 00 00    	jle    c01032cd <_svfprintf_r+0x190d>
c0103024:	83 c0 01             	add    $0x1,%eax
c0103027:	83 c2 10             	add    $0x10,%edx
c010302a:	c7 07 e0 88 10 c0    	movl   $0xc01088e0,(%edi)
c0103030:	83 c7 08             	add    $0x8,%edi
c0103033:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c010303a:	83 f8 07             	cmp    $0x7,%eax
c010303d:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0103043:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0103049:	7e cd                	jle    c0103018 <_svfprintf_r+0x1658>
c010304b:	8b 45 0c             	mov    0xc(%ebp),%eax
c010304e:	89 74 24 08          	mov    %esi,0x8(%esp)
c0103052:	89 44 24 04          	mov    %eax,0x4(%esp)
c0103056:	8b 45 08             	mov    0x8(%ebp),%eax
c0103059:	89 04 24             	mov    %eax,(%esp)
c010305c:	e8 6f 34 00 00       	call   c01064d0 <__ssprint_r>
c0103061:	85 c0                	test   %eax,%eax
c0103063:	0f 85 27 eb ff ff    	jne    c0101b90 <_svfprintf_r+0x1d0>
c0103069:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c010306f:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0103072:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0103078:	eb 9e                	jmp    c0103018 <_svfprintf_r+0x1658>
c010307a:	8b 9d 24 ff ff ff    	mov    -0xdc(%ebp),%ebx
c0103080:	83 e3 df             	and    $0xffffffdf,%ebx
c0103083:	83 bd 44 ff ff ff ff 	cmpl   $0xffffffff,-0xbc(%ebp)
c010308a:	0f 84 05 03 00 00    	je     c0103395 <_svfprintf_r+0x19d5>
c0103090:	83 fb 47             	cmp    $0x47,%ebx
c0103093:	75 16                	jne    c01030ab <_svfprintf_r+0x16eb>
c0103095:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
c010309b:	b8 01 00 00 00       	mov    $0x1,%eax
c01030a0:	85 d2                	test   %edx,%edx
c01030a2:	0f 45 c2             	cmovne %edx,%eax
c01030a5:	89 85 44 ff ff ff    	mov    %eax,-0xbc(%ebp)
c01030ab:	8b 85 4c ff ff ff    	mov    -0xb4(%ebp),%eax
c01030b1:	dd 85 10 ff ff ff    	fldl   -0xf0(%ebp)
c01030b7:	dd 95 38 ff ff ff    	fstl   -0xc8(%ebp)
c01030bd:	80 cc 01             	or     $0x1,%ah
c01030c0:	89 85 30 ff ff ff    	mov    %eax,-0xd0(%ebp)
c01030c6:	8b 85 3c ff ff ff    	mov    -0xc4(%ebp),%eax
c01030cc:	c6 85 48 ff ff ff 00 	movb   $0x0,-0xb8(%ebp)
c01030d3:	85 c0                	test   %eax,%eax
c01030d5:	0f 88 ba 05 00 00    	js     c0103695 <_svfprintf_r+0x1cd5>
c01030db:	83 fb 46             	cmp    $0x46,%ebx
c01030de:	0f 94 c0             	sete   %al
c01030e1:	89 c6                	mov    %eax,%esi
c01030e3:	0f 84 d4 03 00 00    	je     c01034bd <_svfprintf_r+0x1afd>
c01030e9:	83 fb 45             	cmp    $0x45,%ebx
c01030ec:	0f 85 99 05 00 00    	jne    c010368b <_svfprintf_r+0x1ccb>
c01030f2:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
c01030f8:	dd 54 24 04          	fstl   0x4(%esp)
c01030fc:	c7 44 24 0c 02 00 00 	movl   $0x2,0xc(%esp)
c0103103:	00 
c0103104:	dd 9d 38 ff ff ff    	fstpl  -0xc8(%ebp)
c010310a:	8d 70 01             	lea    0x1(%eax),%esi
c010310d:	8d 85 6c ff ff ff    	lea    -0x94(%ebp),%eax
c0103113:	89 44 24 1c          	mov    %eax,0x1c(%esp)
c0103117:	8d 85 60 ff ff ff    	lea    -0xa0(%ebp),%eax
c010311d:	89 44 24 18          	mov    %eax,0x18(%esp)
c0103121:	8d 85 5c ff ff ff    	lea    -0xa4(%ebp),%eax
c0103127:	89 44 24 14          	mov    %eax,0x14(%esp)
c010312b:	8b 45 08             	mov    0x8(%ebp),%eax
c010312e:	89 74 24 10          	mov    %esi,0x10(%esp)
c0103132:	89 04 24             	mov    %eax,(%esp)
c0103135:	e8 56 09 00 00       	call   c0103a90 <_dtoa_r>
c010313a:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c0103140:	8d 0c 30             	lea    (%eax,%esi,1),%ecx
c0103143:	dd 85 38 ff ff ff    	fldl   -0xc8(%ebp)
c0103149:	90                   	nop
c010314a:	90                   	nop
c010314b:	d9 c9                	fxch   %st(1)
c010314d:	df e9                	fucomip %st(1),%st
c010314f:	dd d8                	fstp   %st(0)
c0103151:	0f 8a fd 00 00 00    	jp     c0103254 <_svfprintf_r+0x1894>
c0103157:	89 c8                	mov    %ecx,%eax
c0103159:	0f 85 f5 00 00 00    	jne    c0103254 <_svfprintf_r+0x1894>
c010315f:	2b 85 28 ff ff ff    	sub    -0xd8(%ebp),%eax
c0103165:	83 fb 47             	cmp    $0x47,%ebx
c0103168:	89 85 1c ff ff ff    	mov    %eax,-0xe4(%ebp)
c010316e:	0f 84 1e 04 00 00    	je     c0103592 <_svfprintf_r+0x1bd2>
c0103174:	83 bd 24 ff ff ff 65 	cmpl   $0x65,-0xdc(%ebp)
c010317b:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
c0103181:	0f 8e 65 04 00 00    	jle    c01035ec <_svfprintf_r+0x1c2c>
c0103187:	83 bd 24 ff ff ff 66 	cmpl   $0x66,-0xdc(%ebp)
c010318e:	89 85 20 ff ff ff    	mov    %eax,-0xe0(%ebp)
c0103194:	0f 84 3c 05 00 00    	je     c01036d6 <_svfprintf_r+0x1d16>
c010319a:	8b 85 20 ff ff ff    	mov    -0xe0(%ebp),%eax
c01031a0:	39 85 1c ff ff ff    	cmp    %eax,-0xe4(%ebp)
c01031a6:	0f 8f f7 04 00 00    	jg     c01036a3 <_svfprintf_r+0x1ce3>
c01031ac:	8b 85 4c ff ff ff    	mov    -0xb4(%ebp),%eax
c01031b2:	83 e0 01             	and    $0x1,%eax
c01031b5:	0f 85 e2 05 00 00    	jne    c010379d <_svfprintf_r+0x1ddd>
c01031bb:	8b 95 20 ff ff ff    	mov    -0xe0(%ebp),%edx
c01031c1:	c7 85 24 ff ff ff 67 	movl   $0x67,-0xdc(%ebp)
c01031c8:	00 00 00 
c01031cb:	85 d2                	test   %edx,%edx
c01031cd:	0f 49 c2             	cmovns %edx,%eax
c01031d0:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
c01031d6:	80 bd 48 ff ff ff 00 	cmpb   $0x0,-0xb8(%ebp)
c01031dd:	0f 85 68 03 00 00    	jne    c010354b <_svfprintf_r+0x1b8b>
c01031e3:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
c01031e9:	8b 85 30 ff ff ff    	mov    -0xd0(%ebp),%eax
c01031ef:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c01031f6:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c01031fd:	00 00 00 
c0103200:	89 85 4c ff ff ff    	mov    %eax,-0xb4(%ebp)
c0103206:	e9 4d ea ff ff       	jmp    c0101c58 <_svfprintf_r+0x298>
c010320b:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0103211:	89 44 24 08          	mov    %eax,0x8(%esp)
c0103215:	8b 45 0c             	mov    0xc(%ebp),%eax
c0103218:	89 44 24 04          	mov    %eax,0x4(%esp)
c010321c:	8b 45 08             	mov    0x8(%ebp),%eax
c010321f:	89 04 24             	mov    %eax,(%esp)
c0103222:	e8 a9 32 00 00       	call   c01064d0 <__ssprint_r>
c0103227:	85 c0                	test   %eax,%eax
c0103229:	0f 85 61 e9 ff ff    	jne    c0101b90 <_svfprintf_r+0x1d0>
c010322f:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0103235:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0103238:	e9 f2 f3 ff ff       	jmp    c010262f <_svfprintf_r+0xc6f>
c010323d:	89 d0                	mov    %edx,%eax
c010323f:	e9 d1 fa ff ff       	jmp    c0102d15 <_svfprintf_r+0x1355>
c0103244:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0103248:	8d 50 01             	lea    0x1(%eax),%edx
c010324b:	89 95 6c ff ff ff    	mov    %edx,-0x94(%ebp)
c0103251:	c6 00 30             	movb   $0x30,(%eax)
c0103254:	8b 85 6c ff ff ff    	mov    -0x94(%ebp),%eax
c010325a:	39 c1                	cmp    %eax,%ecx
c010325c:	77 ea                	ja     c0103248 <_svfprintf_r+0x1888>
c010325e:	e9 fc fe ff ff       	jmp    c010315f <_svfprintf_r+0x179f>
c0103263:	8b 45 08             	mov    0x8(%ebp),%eax
c0103266:	c7 44 24 04 40 00 00 	movl   $0x40,0x4(%esp)
c010326d:	00 
c010326e:	89 04 24             	mov    %eax,(%esp)
c0103271:	e8 4a 1b 00 00       	call   c0104dc0 <_malloc_r>
c0103276:	8b 55 0c             	mov    0xc(%ebp),%edx
c0103279:	85 c0                	test   %eax,%eax
c010327b:	89 02                	mov    %eax,(%edx)
c010327d:	89 42 10             	mov    %eax,0x10(%edx)
c0103280:	0f 84 15 06 00 00    	je     c010389b <_svfprintf_r+0x1edb>
c0103286:	8b 45 0c             	mov    0xc(%ebp),%eax
c0103289:	c7 40 14 40 00 00 00 	movl   $0x40,0x14(%eax)
c0103290:	e9 6c e7 ff ff       	jmp    c0101a01 <_svfprintf_r+0x41>
c0103295:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c010329b:	89 44 24 08          	mov    %eax,0x8(%esp)
c010329f:	8b 45 0c             	mov    0xc(%ebp),%eax
c01032a2:	89 44 24 04          	mov    %eax,0x4(%esp)
c01032a6:	8b 45 08             	mov    0x8(%ebp),%eax
c01032a9:	89 04 24             	mov    %eax,(%esp)
c01032ac:	e8 1f 32 00 00       	call   c01064d0 <__ssprint_r>
c01032b1:	85 c0                	test   %eax,%eax
c01032b3:	0f 85 d7 e8 ff ff    	jne    c0101b90 <_svfprintf_r+0x1d0>
c01032b9:	8b 9d 5c ff ff ff    	mov    -0xa4(%ebp),%ebx
c01032bf:	8d 7d a8             	lea    -0x58(%ebp),%edi
c01032c2:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c01032c8:	e9 d9 fc ff ff       	jmp    c0102fa6 <_svfprintf_r+0x15e6>
c01032cd:	83 c0 01             	add    $0x1,%eax
c01032d0:	01 da                	add    %ebx,%edx
c01032d2:	c7 07 e0 88 10 c0    	movl   $0xc01088e0,(%edi)
c01032d8:	83 c7 08             	add    $0x8,%edi
c01032db:	89 5f fc             	mov    %ebx,-0x4(%edi)
c01032de:	83 f8 07             	cmp    $0x7,%eax
c01032e1:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c01032e7:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c01032ed:	7e 33                	jle    c0103322 <_svfprintf_r+0x1962>
c01032ef:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c01032f5:	89 44 24 08          	mov    %eax,0x8(%esp)
c01032f9:	8b 45 0c             	mov    0xc(%ebp),%eax
c01032fc:	89 44 24 04          	mov    %eax,0x4(%esp)
c0103300:	8b 45 08             	mov    0x8(%ebp),%eax
c0103303:	89 04 24             	mov    %eax,(%esp)
c0103306:	e8 c5 31 00 00       	call   c01064d0 <__ssprint_r>
c010330b:	85 c0                	test   %eax,%eax
c010330d:	0f 85 7d e8 ff ff    	jne    c0101b90 <_svfprintf_r+0x1d0>
c0103313:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0103319:	8d 7d a8             	lea    -0x58(%ebp),%edi
c010331c:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0103322:	8b 9d 28 ff ff ff    	mov    -0xd8(%ebp),%ebx
c0103328:	83 c0 01             	add    $0x1,%eax
c010332b:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0103331:	89 1f                	mov    %ebx,(%edi)
c0103333:	8b 9d 1c ff ff ff    	mov    -0xe4(%ebp),%ebx
c0103339:	01 da                	add    %ebx,%edx
c010333b:	83 f8 07             	cmp    $0x7,%eax
c010333e:	89 5f 04             	mov    %ebx,0x4(%edi)
c0103341:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0103347:	0f 8f 86 f5 ff ff    	jg     c01028d3 <_svfprintf_r+0xf13>
c010334d:	83 c7 08             	add    $0x8,%edi
c0103350:	89 d1                	mov    %edx,%ecx
c0103352:	e9 15 f1 ff ff       	jmp    c010246c <_svfprintf_r+0xaac>
c0103357:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c010335d:	89 44 24 08          	mov    %eax,0x8(%esp)
c0103361:	8b 45 0c             	mov    0xc(%ebp),%eax
c0103364:	89 44 24 04          	mov    %eax,0x4(%esp)
c0103368:	8b 45 08             	mov    0x8(%ebp),%eax
c010336b:	89 04 24             	mov    %eax,(%esp)
c010336e:	e8 5d 31 00 00       	call   c01064d0 <__ssprint_r>
c0103373:	85 c0                	test   %eax,%eax
c0103375:	0f 85 15 e8 ff ff    	jne    c0101b90 <_svfprintf_r+0x1d0>
c010337b:	8b 9d 5c ff ff ff    	mov    -0xa4(%ebp),%ebx
c0103381:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0103384:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c010338a:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0103390:	e9 62 fc ff ff       	jmp    c0102ff7 <_svfprintf_r+0x1637>
c0103395:	c7 85 44 ff ff ff 06 	movl   $0x6,-0xbc(%ebp)
c010339c:	00 00 00 
c010339f:	e9 07 fd ff ff       	jmp    c01030ab <_svfprintf_r+0x16eb>
c01033a4:	8b 85 28 ff ff ff    	mov    -0xd8(%ebp),%eax
c01033aa:	89 04 24             	mov    %eax,(%esp)
c01033ad:	e8 9e 30 00 00       	call   c0106450 <strlen>
c01033b2:	e9 6a e8 ff ff       	jmp    c0101c21 <_svfprintf_r+0x261>
c01033b7:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c01033bd:	89 44 24 08          	mov    %eax,0x8(%esp)
c01033c1:	8b 45 0c             	mov    0xc(%ebp),%eax
c01033c4:	89 44 24 04          	mov    %eax,0x4(%esp)
c01033c8:	8b 45 08             	mov    0x8(%ebp),%eax
c01033cb:	89 04 24             	mov    %eax,(%esp)
c01033ce:	e8 fd 30 00 00       	call   c01064d0 <__ssprint_r>
c01033d3:	85 c0                	test   %eax,%eax
c01033d5:	0f 85 b5 e7 ff ff    	jne    c0101b90 <_svfprintf_r+0x1d0>
c01033db:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c01033e1:	8d 7d a8             	lea    -0x58(%ebp),%edi
c01033e4:	e9 76 f6 ff ff       	jmp    c0102a5f <_svfprintf_r+0x109f>
c01033e9:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c01033ef:	89 44 24 08          	mov    %eax,0x8(%esp)
c01033f3:	8b 45 0c             	mov    0xc(%ebp),%eax
c01033f6:	89 44 24 04          	mov    %eax,0x4(%esp)
c01033fa:	8b 45 08             	mov    0x8(%ebp),%eax
c01033fd:	89 04 24             	mov    %eax,(%esp)
c0103400:	e8 cb 30 00 00       	call   c01064d0 <__ssprint_r>
c0103405:	85 c0                	test   %eax,%eax
c0103407:	0f 85 83 e7 ff ff    	jne    c0101b90 <_svfprintf_r+0x1d0>
c010340d:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
c0103413:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0103416:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c010341c:	e9 f4 f8 ff ff       	jmp    c0102d15 <_svfprintf_r+0x1355>
c0103421:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0103427:	89 44 24 08          	mov    %eax,0x8(%esp)
c010342b:	8b 45 0c             	mov    0xc(%ebp),%eax
c010342e:	89 44 24 04          	mov    %eax,0x4(%esp)
c0103432:	8b 45 08             	mov    0x8(%ebp),%eax
c0103435:	89 04 24             	mov    %eax,(%esp)
c0103438:	e8 93 30 00 00       	call   c01064d0 <__ssprint_r>
c010343d:	85 c0                	test   %eax,%eax
c010343f:	0f 85 4b e7 ff ff    	jne    c0101b90 <_svfprintf_r+0x1d0>
c0103445:	8b b5 1c ff ff ff    	mov    -0xe4(%ebp),%esi
c010344b:	8d 7d a8             	lea    -0x58(%ebp),%edi
c010344e:	2b b5 5c ff ff ff    	sub    -0xa4(%ebp),%esi
c0103454:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c010345a:	e9 fa f8 ff ff       	jmp    c0102d59 <_svfprintf_r+0x1399>
c010345f:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
c0103465:	b0 06                	mov    $0x6,%al
c0103467:	89 75 14             	mov    %esi,0x14(%ebp)
c010346a:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c0103471:	00 00 00 
c0103474:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c010347b:	00 00 00 
c010347e:	83 fa 06             	cmp    $0x6,%edx
c0103481:	0f 46 c2             	cmovbe %edx,%eax
c0103484:	8b 95 28 ff ff ff    	mov    -0xd8(%ebp),%edx
c010348a:	85 c0                	test   %eax,%eax
c010348c:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c0103492:	c7 85 28 ff ff ff 74 	movl   $0xc0108774,-0xd8(%ebp)
c0103499:	87 10 c0 
c010349c:	0f 49 d0             	cmovns %eax,%edx
c010349f:	31 db                	xor    %ebx,%ebx
c01034a1:	89 95 48 ff ff ff    	mov    %edx,-0xb8(%ebp)
c01034a7:	e9 b7 e7 ff ff       	jmp    c0101c63 <_svfprintf_r+0x2a3>
c01034ac:	c6 85 59 ff ff ff 2d 	movb   $0x2d,-0xa7(%ebp)
c01034b3:	bb 2d 00 00 00       	mov    $0x2d,%ebx
c01034b8:	e9 9d ea ff ff       	jmp    c0101f5a <_svfprintf_r+0x59a>
c01034bd:	ba 03 00 00 00       	mov    $0x3,%edx
c01034c2:	8d 85 6c ff ff ff    	lea    -0x94(%ebp),%eax
c01034c8:	89 44 24 1c          	mov    %eax,0x1c(%esp)
c01034cc:	8d 85 60 ff ff ff    	lea    -0xa0(%ebp),%eax
c01034d2:	89 44 24 18          	mov    %eax,0x18(%esp)
c01034d6:	8d 85 5c ff ff ff    	lea    -0xa4(%ebp),%eax
c01034dc:	89 44 24 14          	mov    %eax,0x14(%esp)
c01034e0:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
c01034e6:	dd 54 24 04          	fstl   0x4(%esp)
c01034ea:	89 54 24 0c          	mov    %edx,0xc(%esp)
c01034ee:	dd 9d 38 ff ff ff    	fstpl  -0xc8(%ebp)
c01034f4:	89 44 24 10          	mov    %eax,0x10(%esp)
c01034f8:	8b 45 08             	mov    0x8(%ebp),%eax
c01034fb:	89 04 24             	mov    %eax,(%esp)
c01034fe:	e8 8d 05 00 00       	call   c0103a90 <_dtoa_r>
c0103503:	83 fb 47             	cmp    $0x47,%ebx
c0103506:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c010350c:	dd 85 38 ff ff ff    	fldl   -0xc8(%ebp)
c0103512:	75 09                	jne    c010351d <_svfprintf_r+0x1b5d>
c0103514:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c010351b:	74 5b                	je     c0103578 <_svfprintf_r+0x1bb8>
c010351d:	8b 95 28 ff ff ff    	mov    -0xd8(%ebp),%edx
c0103523:	89 f0                	mov    %esi,%eax
c0103525:	8b 8d 44 ff ff ff    	mov    -0xbc(%ebp),%ecx
c010352b:	01 d1                	add    %edx,%ecx
c010352d:	84 c0                	test   %al,%al
c010352f:	0f 84 14 fc ff ff    	je     c0103149 <_svfprintf_r+0x1789>
c0103535:	80 3a 30             	cmpb   $0x30,(%edx)
c0103538:	0f 84 37 02 00 00    	je     c0103775 <_svfprintf_r+0x1db5>
c010353e:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
c0103544:	01 c1                	add    %eax,%ecx
c0103546:	e9 fe fb ff ff       	jmp    c0103149 <_svfprintf_r+0x1789>
c010354b:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
c0103551:	8b 85 30 ff ff ff    	mov    -0xd0(%ebp),%eax
c0103557:	bb 2d 00 00 00       	mov    $0x2d,%ebx
c010355c:	c6 85 59 ff ff ff 2d 	movb   $0x2d,-0xa7(%ebp)
c0103563:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c010356a:	00 00 00 
c010356d:	89 85 4c ff ff ff    	mov    %eax,-0xb4(%ebp)
c0103573:	e9 e4 e6 ff ff       	jmp    c0101c5c <_svfprintf_r+0x29c>
c0103578:	dd d8                	fstp   %st(0)
c010357a:	8b 85 6c ff ff ff    	mov    -0x94(%ebp),%eax
c0103580:	89 85 1c ff ff ff    	mov    %eax,-0xe4(%ebp)
c0103586:	8b 85 28 ff ff ff    	mov    -0xd8(%ebp),%eax
c010358c:	29 85 1c ff ff ff    	sub    %eax,-0xe4(%ebp)
c0103592:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
c0103598:	83 f8 fd             	cmp    $0xfffffffd,%eax
c010359b:	7c 48                	jl     c01035e5 <_svfprintf_r+0x1c25>
c010359d:	39 85 44 ff ff ff    	cmp    %eax,-0xbc(%ebp)
c01035a3:	7c 40                	jl     c01035e5 <_svfprintf_r+0x1c25>
c01035a5:	89 85 20 ff ff ff    	mov    %eax,-0xe0(%ebp)
c01035ab:	e9 ea fb ff ff       	jmp    c010319a <_svfprintf_r+0x17da>
c01035b0:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
c01035b6:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c01035bd:	89 75 14             	mov    %esi,0x14(%ebp)
c01035c0:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c01035c7:	00 00 00 
c01035ca:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
c01035d0:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c01035d6:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c01035dd:	00 00 00 
c01035e0:	e9 73 e6 ff ff       	jmp    c0101c58 <_svfprintf_r+0x298>
c01035e5:	83 ad 24 ff ff ff 02 	subl   $0x2,-0xdc(%ebp)
c01035ec:	8d 48 ff             	lea    -0x1(%eax),%ecx
c01035ef:	0f b6 85 24 ff ff ff 	movzbl -0xdc(%ebp),%eax
c01035f6:	85 c9                	test   %ecx,%ecx
c01035f8:	89 8d 5c ff ff ff    	mov    %ecx,-0xa4(%ebp)
c01035fe:	88 85 65 ff ff ff    	mov    %al,-0x9b(%ebp)
c0103604:	0f 88 2c 02 00 00    	js     c0103836 <_svfprintf_r+0x1e76>
c010360a:	c6 85 66 ff ff ff 2b 	movb   $0x2b,-0x9a(%ebp)
c0103611:	83 f9 09             	cmp    $0x9,%ecx
c0103614:	0f 8f ea 00 00 00    	jg     c0103704 <_svfprintf_r+0x1d44>
c010361a:	83 c1 30             	add    $0x30,%ecx
c010361d:	c6 85 67 ff ff ff 30 	movb   $0x30,-0x99(%ebp)
c0103624:	8d 85 69 ff ff ff    	lea    -0x97(%ebp),%eax
c010362a:	88 8d 68 ff ff ff    	mov    %cl,-0x98(%ebp)
c0103630:	8b 9d 1c ff ff ff    	mov    -0xe4(%ebp),%ebx
c0103636:	8d 95 65 ff ff ff    	lea    -0x9b(%ebp),%edx
c010363c:	29 d0                	sub    %edx,%eax
c010363e:	89 85 04 ff ff ff    	mov    %eax,-0xfc(%ebp)
c0103644:	89 da                	mov    %ebx,%edx
c0103646:	01 c2                	add    %eax,%edx
c0103648:	83 fb 01             	cmp    $0x1,%ebx
c010364b:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
c0103651:	0f 8e 21 02 00 00    	jle    c0103878 <_svfprintf_r+0x1eb8>
c0103657:	31 c0                	xor    %eax,%eax
c0103659:	83 85 38 ff ff ff 01 	addl   $0x1,-0xc8(%ebp)
c0103660:	0f 49 85 38 ff ff ff 	cmovns -0xc8(%ebp),%eax
c0103667:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c010366e:	00 00 00 
c0103671:	e9 60 fb ff ff       	jmp    c01031d6 <_svfprintf_r+0x1816>
c0103676:	8b 8d 48 ff ff ff    	mov    -0xb8(%ebp),%ecx
c010367c:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c0103683:	00 00 00 
c0103686:	e9 68 e4 ff ff       	jmp    c0101af3 <_svfprintf_r+0x133>
c010368b:	ba 02 00 00 00       	mov    $0x2,%edx
c0103690:	e9 2d fe ff ff       	jmp    c01034c2 <_svfprintf_r+0x1b02>
c0103695:	d9 e0                	fchs   
c0103697:	c6 85 48 ff ff ff 2d 	movb   $0x2d,-0xb8(%ebp)
c010369e:	e9 38 fa ff ff       	jmp    c01030db <_svfprintf_r+0x171b>
c01036a3:	8b 8d 20 ff ff ff    	mov    -0xe0(%ebp),%ecx
c01036a9:	ba 01 00 00 00       	mov    $0x1,%edx
c01036ae:	85 c9                	test   %ecx,%ecx
c01036b0:	0f 8e 5a 01 00 00    	jle    c0103810 <_svfprintf_r+0x1e50>
c01036b6:	31 c0                	xor    %eax,%eax
c01036b8:	03 95 1c ff ff ff    	add    -0xe4(%ebp),%edx
c01036be:	c7 85 24 ff ff ff 67 	movl   $0x67,-0xdc(%ebp)
c01036c5:	00 00 00 
c01036c8:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
c01036ce:	0f 49 c2             	cmovns %edx,%eax
c01036d1:	e9 00 fb ff ff       	jmp    c01031d6 <_svfprintf_r+0x1816>
c01036d6:	85 c0                	test   %eax,%eax
c01036d8:	0f 8e 06 01 00 00    	jle    c01037e4 <_svfprintf_r+0x1e24>
c01036de:	8b b5 44 ff ff ff    	mov    -0xbc(%ebp),%esi
c01036e4:	85 f6                	test   %esi,%esi
c01036e6:	0f 85 d4 00 00 00    	jne    c01037c0 <_svfprintf_r+0x1e00>
c01036ec:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c01036f3:	0f 85 c7 00 00 00    	jne    c01037c0 <_svfprintf_r+0x1e00>
c01036f9:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c01036ff:	e9 d2 fa ff ff       	jmp    c01031d6 <_svfprintf_r+0x1816>
c0103704:	8d b5 73 ff ff ff    	lea    -0x8d(%ebp),%esi
c010370a:	89 f3                	mov    %esi,%ebx
c010370c:	b8 67 66 66 66       	mov    $0x66666667,%eax
c0103711:	83 eb 01             	sub    $0x1,%ebx
c0103714:	f7 e9                	imul   %ecx
c0103716:	89 c8                	mov    %ecx,%eax
c0103718:	c1 f8 1f             	sar    $0x1f,%eax
c010371b:	c1 fa 02             	sar    $0x2,%edx
c010371e:	29 c2                	sub    %eax,%edx
c0103720:	8d 04 92             	lea    (%edx,%edx,4),%eax
c0103723:	01 c0                	add    %eax,%eax
c0103725:	29 c1                	sub    %eax,%ecx
c0103727:	83 fa 09             	cmp    $0x9,%edx
c010372a:	8d 41 30             	lea    0x30(%ecx),%eax
c010372d:	89 d1                	mov    %edx,%ecx
c010372f:	88 03                	mov    %al,(%ebx)
c0103731:	7f d9                	jg     c010370c <_svfprintf_r+0x1d4c>
c0103733:	8d 43 ff             	lea    -0x1(%ebx),%eax
c0103736:	83 c1 30             	add    $0x30,%ecx
c0103739:	39 f0                	cmp    %esi,%eax
c010373b:	88 4b ff             	mov    %cl,-0x1(%ebx)
c010373e:	0f 83 6a 01 00 00    	jae    c01038ae <_svfprintf_r+0x1eee>
c0103744:	8d 95 67 ff ff ff    	lea    -0x99(%ebp),%edx
c010374a:	eb 07                	jmp    c0103753 <_svfprintf_r+0x1d93>
c010374c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0103750:	0f b6 08             	movzbl (%eax),%ecx
c0103753:	83 c0 01             	add    $0x1,%eax
c0103756:	83 c2 01             	add    $0x1,%edx
c0103759:	39 f0                	cmp    %esi,%eax
c010375b:	88 4a ff             	mov    %cl,-0x1(%edx)
c010375e:	75 f0                	jne    c0103750 <_svfprintf_r+0x1d90>
c0103760:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0103766:	29 d8                	sub    %ebx,%eax
c0103768:	8d 95 67 ff ff ff    	lea    -0x99(%ebp),%edx
c010376e:	01 d0                	add    %edx,%eax
c0103770:	e9 bb fe ff ff       	jmp    c0103630 <_svfprintf_r+0x1c70>
c0103775:	d9 ee                	fldz   
c0103777:	d9 c9                	fxch   %st(1)
c0103779:	db e9                	fucomi %st(1),%st
c010377b:	dd d9                	fstp   %st(1)
c010377d:	7a 06                	jp     c0103785 <_svfprintf_r+0x1dc5>
c010377f:	0f 84 b9 fd ff ff    	je     c010353e <_svfprintf_r+0x1b7e>
c0103785:	b8 01 00 00 00       	mov    $0x1,%eax
c010378a:	2b 85 44 ff ff ff    	sub    -0xbc(%ebp),%eax
c0103790:	89 85 5c ff ff ff    	mov    %eax,-0xa4(%ebp)
c0103796:	01 c1                	add    %eax,%ecx
c0103798:	e9 ac f9 ff ff       	jmp    c0103149 <_svfprintf_r+0x1789>
c010379d:	8b 95 20 ff ff ff    	mov    -0xe0(%ebp),%edx
c01037a3:	31 c0                	xor    %eax,%eax
c01037a5:	c7 85 24 ff ff ff 67 	movl   $0x67,-0xdc(%ebp)
c01037ac:	00 00 00 
c01037af:	83 c2 01             	add    $0x1,%edx
c01037b2:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
c01037b8:	0f 49 c2             	cmovns %edx,%eax
c01037bb:	e9 16 fa ff ff       	jmp    c01031d6 <_svfprintf_r+0x1816>
c01037c0:	8b 95 20 ff ff ff    	mov    -0xe0(%ebp),%edx
c01037c6:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
c01037cc:	8d 44 10 01          	lea    0x1(%eax,%edx,1),%eax
c01037d0:	89 c2                	mov    %eax,%edx
c01037d2:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c01037d8:	31 c0                	xor    %eax,%eax
c01037da:	85 d2                	test   %edx,%edx
c01037dc:	0f 49 c2             	cmovns %edx,%eax
c01037df:	e9 f2 f9 ff ff       	jmp    c01031d6 <_svfprintf_r+0x1816>
c01037e4:	8b 9d 44 ff ff ff    	mov    -0xbc(%ebp),%ebx
c01037ea:	85 db                	test   %ebx,%ebx
c01037ec:	75 2f                	jne    c010381d <_svfprintf_r+0x1e5d>
c01037ee:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c01037f5:	75 26                	jne    c010381d <_svfprintf_r+0x1e5d>
c01037f7:	b8 01 00 00 00       	mov    $0x1,%eax
c01037fc:	c7 85 38 ff ff ff 01 	movl   $0x1,-0xc8(%ebp)
c0103803:	00 00 00 
c0103806:	e9 cb f9 ff ff       	jmp    c01031d6 <_svfprintf_r+0x1816>
c010380b:	90                   	nop
c010380c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0103810:	b2 02                	mov    $0x2,%dl
c0103812:	2b 95 20 ff ff ff    	sub    -0xe0(%ebp),%edx
c0103818:	e9 99 fe ff ff       	jmp    c01036b6 <_svfprintf_r+0x1cf6>
c010381d:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
c0103823:	31 c0                	xor    %eax,%eax
c0103825:	83 c2 02             	add    $0x2,%edx
c0103828:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
c010382e:	0f 49 c2             	cmovns %edx,%eax
c0103831:	e9 a0 f9 ff ff       	jmp    c01031d6 <_svfprintf_r+0x1816>
c0103836:	f7 d9                	neg    %ecx
c0103838:	c6 85 66 ff ff ff 2d 	movb   $0x2d,-0x9a(%ebp)
c010383f:	e9 cd fd ff ff       	jmp    c0103611 <_svfprintf_r+0x1c51>
c0103844:	8b 55 14             	mov    0x14(%ebp),%edx
c0103847:	8b 45 14             	mov    0x14(%ebp),%eax
c010384a:	8b 8d 48 ff ff ff    	mov    -0xb8(%ebp),%ecx
c0103850:	8b 12                	mov    (%edx),%edx
c0103852:	83 c0 04             	add    $0x4,%eax
c0103855:	89 45 14             	mov    %eax,0x14(%ebp)
c0103858:	85 d2                	test   %edx,%edx
c010385a:	89 95 44 ff ff ff    	mov    %edx,-0xbc(%ebp)
c0103860:	0f 89 a9 e2 ff ff    	jns    c0101b0f <_svfprintf_r+0x14f>
c0103866:	c7 85 44 ff ff ff ff 	movl   $0xffffffff,-0xbc(%ebp)
c010386d:	ff ff ff 
c0103870:	89 c8                	mov    %ecx,%eax
c0103872:	e9 76 e2 ff ff       	jmp    c0101aed <_svfprintf_r+0x12d>
c0103877:	90                   	nop
c0103878:	8b 85 4c ff ff ff    	mov    -0xb4(%ebp),%eax
c010387e:	83 e0 01             	and    $0x1,%eax
c0103881:	0f 85 d0 fd ff ff    	jne    c0103657 <_svfprintf_r+0x1c97>
c0103887:	85 d2                	test   %edx,%edx
c0103889:	0f 49 c2             	cmovns %edx,%eax
c010388c:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c0103893:	00 00 00 
c0103896:	e9 3b f9 ff ff       	jmp    c01031d6 <_svfprintf_r+0x1816>
c010389b:	8b 45 08             	mov    0x8(%ebp),%eax
c010389e:	c7 00 0c 00 00 00    	movl   $0xc,(%eax)
c01038a4:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c01038a9:	e9 f5 e2 ff ff       	jmp    c0101ba3 <_svfprintf_r+0x1e3>
c01038ae:	8d 85 67 ff ff ff    	lea    -0x99(%ebp),%eax
c01038b4:	e9 77 fd ff ff       	jmp    c0103630 <_svfprintf_r+0x1c70>
c01038b9:	66 90                	xchg   %ax,%ax
c01038bb:	66 90                	xchg   %ax,%ax
c01038bd:	66 90                	xchg   %ax,%ax
c01038bf:	90                   	nop

c01038c0 <quorem>:
c01038c0:	55                   	push   %ebp
c01038c1:	89 c1                	mov    %eax,%ecx
c01038c3:	89 e5                	mov    %esp,%ebp
c01038c5:	57                   	push   %edi
c01038c6:	89 d7                	mov    %edx,%edi
c01038c8:	56                   	push   %esi
c01038c9:	53                   	push   %ebx
c01038ca:	83 ec 3c             	sub    $0x3c,%esp
c01038cd:	89 45 d0             	mov    %eax,-0x30(%ebp)
c01038d0:	8b 42 10             	mov    0x10(%edx),%eax
c01038d3:	3b 41 10             	cmp    0x10(%ecx),%eax
c01038d6:	89 55 c8             	mov    %edx,-0x38(%ebp)
c01038d9:	89 ca                	mov    %ecx,%edx
c01038db:	0f 8f 9f 01 00 00    	jg     c0103a80 <quorem+0x1c0>
c01038e1:	83 e8 01             	sub    $0x1,%eax
c01038e4:	83 c7 14             	add    $0x14,%edi
c01038e7:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c01038ea:	c1 e0 02             	shl    $0x2,%eax
c01038ed:	83 c2 14             	add    $0x14,%edx
c01038f0:	8d 1c 07             	lea    (%edi,%eax,1),%ebx
c01038f3:	01 d0                	add    %edx,%eax
c01038f5:	89 55 d8             	mov    %edx,-0x28(%ebp)
c01038f8:	8b 13                	mov    (%ebx),%edx
c01038fa:	89 45 c4             	mov    %eax,-0x3c(%ebp)
c01038fd:	8b 00                	mov    (%eax),%eax
c01038ff:	89 5d e4             	mov    %ebx,-0x1c(%ebp)
c0103902:	8d 4a 01             	lea    0x1(%edx),%ecx
c0103905:	31 d2                	xor    %edx,%edx
c0103907:	f7 f1                	div    %ecx
c0103909:	85 c0                	test   %eax,%eax
c010390b:	89 45 e0             	mov    %eax,-0x20(%ebp)
c010390e:	89 45 cc             	mov    %eax,-0x34(%ebp)
c0103911:	0f 84 b5 00 00 00    	je     c01039cc <quorem+0x10c>
c0103917:	8b 45 d8             	mov    -0x28(%ebp),%eax
c010391a:	31 f6                	xor    %esi,%esi
c010391c:	89 fa                	mov    %edi,%edx
c010391e:	89 7d c0             	mov    %edi,-0x40(%ebp)
c0103921:	89 f7                	mov    %esi,%edi
c0103923:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%ebp)
c010392a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0103930:	83 c2 04             	add    $0x4,%edx
c0103933:	8b 72 fc             	mov    -0x4(%edx),%esi
c0103936:	83 c0 04             	add    $0x4,%eax
c0103939:	0f b7 ce             	movzwl %si,%ecx
c010393c:	0f af 4d e0          	imul   -0x20(%ebp),%ecx
c0103940:	03 4d dc             	add    -0x24(%ebp),%ecx
c0103943:	c1 ee 10             	shr    $0x10,%esi
c0103946:	0f af 75 e0          	imul   -0x20(%ebp),%esi
c010394a:	89 cb                	mov    %ecx,%ebx
c010394c:	0f b7 c9             	movzwl %cx,%ecx
c010394f:	c1 eb 10             	shr    $0x10,%ebx
c0103952:	29 cf                	sub    %ecx,%edi
c0103954:	01 f3                	add    %esi,%ebx
c0103956:	89 de                	mov    %ebx,%esi
c0103958:	0f b7 db             	movzwl %bx,%ebx
c010395b:	c1 ee 10             	shr    $0x10,%esi
c010395e:	89 75 dc             	mov    %esi,-0x24(%ebp)
c0103961:	8b 70 fc             	mov    -0x4(%eax),%esi
c0103964:	0f b7 ce             	movzwl %si,%ecx
c0103967:	01 f9                	add    %edi,%ecx
c0103969:	c1 ee 10             	shr    $0x10,%esi
c010396c:	29 de                	sub    %ebx,%esi
c010396e:	89 cb                	mov    %ecx,%ebx
c0103970:	c1 fb 10             	sar    $0x10,%ebx
c0103973:	0f b7 c9             	movzwl %cx,%ecx
c0103976:	01 de                	add    %ebx,%esi
c0103978:	89 f7                	mov    %esi,%edi
c010397a:	c1 e6 10             	shl    $0x10,%esi
c010397d:	09 ce                	or     %ecx,%esi
c010397f:	c1 ff 10             	sar    $0x10,%edi
c0103982:	39 55 e4             	cmp    %edx,-0x1c(%ebp)
c0103985:	89 70 fc             	mov    %esi,-0x4(%eax)
c0103988:	73 a6                	jae    c0103930 <quorem+0x70>
c010398a:	8b 45 c4             	mov    -0x3c(%ebp),%eax
c010398d:	8b 7d c0             	mov    -0x40(%ebp),%edi
c0103990:	8b 10                	mov    (%eax),%edx
c0103992:	85 d2                	test   %edx,%edx
c0103994:	75 36                	jne    c01039cc <quorem+0x10c>
c0103996:	8b 4d d8             	mov    -0x28(%ebp),%ecx
c0103999:	89 c2                	mov    %eax,%edx
c010399b:	83 e8 04             	sub    $0x4,%eax
c010399e:	39 c1                	cmp    %eax,%ecx
c01039a0:	73 21                	jae    c01039c3 <quorem+0x103>
c01039a2:	8b 72 fc             	mov    -0x4(%edx),%esi
c01039a5:	85 f6                	test   %esi,%esi
c01039a7:	75 1a                	jne    c01039c3 <quorem+0x103>
c01039a9:	8b 55 d4             	mov    -0x2c(%ebp),%edx
c01039ac:	eb 08                	jmp    c01039b6 <quorem+0xf6>
c01039ae:	66 90                	xchg   %ax,%ax
c01039b0:	8b 18                	mov    (%eax),%ebx
c01039b2:	85 db                	test   %ebx,%ebx
c01039b4:	75 0a                	jne    c01039c0 <quorem+0x100>
c01039b6:	83 e8 04             	sub    $0x4,%eax
c01039b9:	83 ea 01             	sub    $0x1,%edx
c01039bc:	39 c1                	cmp    %eax,%ecx
c01039be:	72 f0                	jb     c01039b0 <quorem+0xf0>
c01039c0:	89 55 d4             	mov    %edx,-0x2c(%ebp)
c01039c3:	8b 45 d0             	mov    -0x30(%ebp),%eax
c01039c6:	8b 55 d4             	mov    -0x2c(%ebp),%edx
c01039c9:	89 50 10             	mov    %edx,0x10(%eax)
c01039cc:	8b 45 c8             	mov    -0x38(%ebp),%eax
c01039cf:	89 44 24 04          	mov    %eax,0x4(%esp)
c01039d3:	8b 45 d0             	mov    -0x30(%ebp),%eax
c01039d6:	89 04 24             	mov    %eax,(%esp)
c01039d9:	e8 a2 23 00 00       	call   c0105d80 <__mcmp>
c01039de:	85 c0                	test   %eax,%eax
c01039e0:	0f 88 8e 00 00 00    	js     c0103a74 <quorem+0x1b4>
c01039e6:	8b 45 e0             	mov    -0x20(%ebp),%eax
c01039e9:	31 f6                	xor    %esi,%esi
c01039eb:	83 c0 01             	add    $0x1,%eax
c01039ee:	89 45 cc             	mov    %eax,-0x34(%ebp)
c01039f1:	8b 45 d8             	mov    -0x28(%ebp),%eax
c01039f4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c01039f8:	83 c7 04             	add    $0x4,%edi
c01039fb:	8b 4f fc             	mov    -0x4(%edi),%ecx
c01039fe:	83 c0 04             	add    $0x4,%eax
c0103a01:	8b 58 fc             	mov    -0x4(%eax),%ebx
c0103a04:	0f b7 d1             	movzwl %cx,%edx
c0103a07:	29 d6                	sub    %edx,%esi
c0103a09:	0f b7 d3             	movzwl %bx,%edx
c0103a0c:	01 f2                	add    %esi,%edx
c0103a0e:	c1 e9 10             	shr    $0x10,%ecx
c0103a11:	c1 eb 10             	shr    $0x10,%ebx
c0103a14:	29 cb                	sub    %ecx,%ebx
c0103a16:	89 d1                	mov    %edx,%ecx
c0103a18:	c1 f9 10             	sar    $0x10,%ecx
c0103a1b:	0f b7 d2             	movzwl %dx,%edx
c0103a1e:	01 cb                	add    %ecx,%ebx
c0103a20:	89 de                	mov    %ebx,%esi
c0103a22:	c1 e3 10             	shl    $0x10,%ebx
c0103a25:	09 d3                	or     %edx,%ebx
c0103a27:	c1 fe 10             	sar    $0x10,%esi
c0103a2a:	39 7d e4             	cmp    %edi,-0x1c(%ebp)
c0103a2d:	89 58 fc             	mov    %ebx,-0x4(%eax)
c0103a30:	73 c6                	jae    c01039f8 <quorem+0x138>
c0103a32:	8b 45 d8             	mov    -0x28(%ebp),%eax
c0103a35:	8b 7d d4             	mov    -0x2c(%ebp),%edi
c0103a38:	8d 14 b8             	lea    (%eax,%edi,4),%edx
c0103a3b:	8b 02                	mov    (%edx),%eax
c0103a3d:	85 c0                	test   %eax,%eax
c0103a3f:	75 33                	jne    c0103a74 <quorem+0x1b4>
c0103a41:	8b 4d d8             	mov    -0x28(%ebp),%ecx
c0103a44:	8d 42 fc             	lea    -0x4(%edx),%eax
c0103a47:	39 c1                	cmp    %eax,%ecx
c0103a49:	73 20                	jae    c0103a6b <quorem+0x1ab>
c0103a4b:	8b 72 fc             	mov    -0x4(%edx),%esi
c0103a4e:	85 f6                	test   %esi,%esi
c0103a50:	75 19                	jne    c0103a6b <quorem+0x1ab>
c0103a52:	89 fa                	mov    %edi,%edx
c0103a54:	eb 08                	jmp    c0103a5e <quorem+0x19e>
c0103a56:	66 90                	xchg   %ax,%ax
c0103a58:	8b 18                	mov    (%eax),%ebx
c0103a5a:	85 db                	test   %ebx,%ebx
c0103a5c:	75 0a                	jne    c0103a68 <quorem+0x1a8>
c0103a5e:	83 e8 04             	sub    $0x4,%eax
c0103a61:	83 ea 01             	sub    $0x1,%edx
c0103a64:	39 c1                	cmp    %eax,%ecx
c0103a66:	72 f0                	jb     c0103a58 <quorem+0x198>
c0103a68:	89 55 d4             	mov    %edx,-0x2c(%ebp)
c0103a6b:	8b 45 d0             	mov    -0x30(%ebp),%eax
c0103a6e:	8b 7d d4             	mov    -0x2c(%ebp),%edi
c0103a71:	89 78 10             	mov    %edi,0x10(%eax)
c0103a74:	8b 45 cc             	mov    -0x34(%ebp),%eax
c0103a77:	83 c4 3c             	add    $0x3c,%esp
c0103a7a:	5b                   	pop    %ebx
c0103a7b:	5e                   	pop    %esi
c0103a7c:	5f                   	pop    %edi
c0103a7d:	5d                   	pop    %ebp
c0103a7e:	c3                   	ret    
c0103a7f:	90                   	nop
c0103a80:	83 c4 3c             	add    $0x3c,%esp
c0103a83:	31 c0                	xor    %eax,%eax
c0103a85:	5b                   	pop    %ebx
c0103a86:	5e                   	pop    %esi
c0103a87:	5f                   	pop    %edi
c0103a88:	5d                   	pop    %ebp
c0103a89:	c3                   	ret    
c0103a8a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

c0103a90 <_dtoa_r>:
c0103a90:	55                   	push   %ebp
c0103a91:	89 e5                	mov    %esp,%ebp
c0103a93:	57                   	push   %edi
c0103a94:	56                   	push   %esi
c0103a95:	53                   	push   %ebx
c0103a96:	81 ec 8c 00 00 00    	sub    $0x8c,%esp
c0103a9c:	8b 75 08             	mov    0x8(%ebp),%esi
c0103a9f:	dd 45 0c             	fldl   0xc(%ebp)
c0103aa2:	8b 5d 20             	mov    0x20(%ebp),%ebx
c0103aa5:	dd 5d c0             	fstpl  -0x40(%ebp)
c0103aa8:	8b 46 40             	mov    0x40(%esi),%eax
c0103aab:	85 c0                	test   %eax,%eax
c0103aad:	74 23                	je     c0103ad2 <_dtoa_r+0x42>
c0103aaf:	8b 4e 44             	mov    0x44(%esi),%ecx
c0103ab2:	ba 01 00 00 00       	mov    $0x1,%edx
c0103ab7:	d3 e2                	shl    %cl,%edx
c0103ab9:	89 48 04             	mov    %ecx,0x4(%eax)
c0103abc:	89 50 08             	mov    %edx,0x8(%eax)
c0103abf:	89 44 24 04          	mov    %eax,0x4(%esp)
c0103ac3:	89 34 24             	mov    %esi,(%esp)
c0103ac6:	e8 95 1b 00 00       	call   c0105660 <_Bfree>
c0103acb:	c7 46 40 00 00 00 00 	movl   $0x0,0x40(%esi)
c0103ad2:	8b 7d c4             	mov    -0x3c(%ebp),%edi
c0103ad5:	85 ff                	test   %edi,%edi
c0103ad7:	0f 88 3b 02 00 00    	js     c0103d18 <_dtoa_r+0x288>
c0103add:	c7 03 00 00 00 00    	movl   $0x0,(%ebx)
c0103ae3:	89 f8                	mov    %edi,%eax
c0103ae5:	25 00 00 f0 7f       	and    $0x7ff00000,%eax
c0103aea:	3d 00 00 f0 7f       	cmp    $0x7ff00000,%eax
c0103aef:	0f 84 e3 01 00 00    	je     c0103cd8 <_dtoa_r+0x248>
c0103af5:	dd 45 c0             	fldl   -0x40(%ebp)
c0103af8:	d9 ee                	fldz   
c0103afa:	d9 c9                	fxch   %st(1)
c0103afc:	db e9                	fucomi %st(1),%st
c0103afe:	dd d9                	fstp   %st(1)
c0103b00:	7a 36                	jp     c0103b38 <_dtoa_r+0xa8>
c0103b02:	75 34                	jne    c0103b38 <_dtoa_r+0xa8>
c0103b04:	dd d8                	fstp   %st(0)
c0103b06:	8b 4d 24             	mov    0x24(%ebp),%ecx
c0103b09:	8b 45 1c             	mov    0x1c(%ebp),%eax
c0103b0c:	85 c9                	test   %ecx,%ecx
c0103b0e:	c7 00 01 00 00 00    	movl   $0x1,(%eax)
c0103b14:	0f 84 4e 02 00 00    	je     c0103d68 <_dtoa_r+0x2d8>
c0103b1a:	8b 45 24             	mov    0x24(%ebp),%eax
c0103b1d:	c7 00 4b 84 10 c0    	movl   $0xc010844b,(%eax)
c0103b23:	b8 4a 84 10 c0       	mov    $0xc010844a,%eax
c0103b28:	81 c4 8c 00 00 00    	add    $0x8c,%esp
c0103b2e:	5b                   	pop    %ebx
c0103b2f:	5e                   	pop    %esi
c0103b30:	5f                   	pop    %edi
c0103b31:	5d                   	pop    %ebp
c0103b32:	c3                   	ret    
c0103b33:	90                   	nop
c0103b34:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0103b38:	8d 45 e0             	lea    -0x20(%ebp),%eax
c0103b3b:	89 fb                	mov    %edi,%ebx
c0103b3d:	89 44 24 10          	mov    %eax,0x10(%esp)
c0103b41:	8d 45 e4             	lea    -0x1c(%ebp),%eax
c0103b44:	dd 54 24 04          	fstl   0x4(%esp)
c0103b48:	89 44 24 0c          	mov    %eax,0xc(%esp)
c0103b4c:	dd 5d b8             	fstpl  -0x48(%ebp)
c0103b4f:	89 34 24             	mov    %esi,(%esp)
c0103b52:	c1 eb 14             	shr    $0x14,%ebx
c0103b55:	e8 76 25 00 00       	call   c01060d0 <__d2b>
c0103b5a:	85 db                	test   %ebx,%ebx
c0103b5c:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c0103b5f:	0f 85 db 01 00 00    	jne    c0103d40 <_dtoa_r+0x2b0>
c0103b65:	8b 45 e0             	mov    -0x20(%ebp),%eax
c0103b68:	8b 5d e4             	mov    -0x1c(%ebp),%ebx
c0103b6b:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c0103b6e:	01 c3                	add    %eax,%ebx
c0103b70:	81 fb ef fb ff ff    	cmp    $0xfffffbef,%ebx
c0103b76:	0f 8c ec 07 00 00    	jl     c0104368 <_dtoa_r+0x8d8>
c0103b7c:	8b 55 c0             	mov    -0x40(%ebp),%edx
c0103b7f:	b9 0e fc ff ff       	mov    $0xfffffc0e,%ecx
c0103b84:	89 f8                	mov    %edi,%eax
c0103b86:	29 d9                	sub    %ebx,%ecx
c0103b88:	d3 e0                	shl    %cl,%eax
c0103b8a:	8d 8b 12 04 00 00    	lea    0x412(%ebx),%ecx
c0103b90:	d3 ea                	shr    %cl,%edx
c0103b92:	09 d0                	or     %edx,%eax
c0103b94:	31 d2                	xor    %edx,%edx
c0103b96:	83 eb 01             	sub    $0x1,%ebx
c0103b99:	89 55 cc             	mov    %edx,-0x34(%ebp)
c0103b9c:	8b 55 b4             	mov    -0x4c(%ebp),%edx
c0103b9f:	89 45 c8             	mov    %eax,-0x38(%ebp)
c0103ba2:	df 6d c8             	fildll -0x38(%ebp)
c0103ba5:	dd 5d b8             	fstpl  -0x48(%ebp)
c0103ba8:	81 6d bc 00 00 f0 01 	subl   $0x1f00000,-0x44(%ebp)
c0103baf:	c7 45 8c 01 00 00 00 	movl   $0x1,-0x74(%ebp)
c0103bb6:	dd 45 b8             	fldl   -0x48(%ebp)
c0103bb9:	d8 25 10 89 10 c0    	fsubs  0xc0108910
c0103bbf:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
c0103bc2:	d9 7d d2             	fnstcw -0x2e(%ebp)
c0103bc5:	dc 0d 28 89 10 c0    	fmull  0xc0108928
c0103bcb:	0f b7 45 d2          	movzwl -0x2e(%ebp),%eax
c0103bcf:	b4 0c                	mov    $0xc,%ah
c0103bd1:	dc 05 30 89 10 c0    	faddl  0xc0108930
c0103bd7:	66 89 45 d0          	mov    %ax,-0x30(%ebp)
c0103bdb:	db 45 d4             	fildl  -0x2c(%ebp)
c0103bde:	dc 0d 38 89 10 c0    	fmull  0xc0108938
c0103be4:	de c1                	faddp  %st,%st(1)
c0103be6:	d9 6d d0             	fldcw  -0x30(%ebp)
c0103be9:	db 55 b8             	fistl  -0x48(%ebp)
c0103bec:	d9 6d d2             	fldcw  -0x2e(%ebp)
c0103bef:	d9 ee                	fldz   
c0103bf1:	df e9                	fucomip %st(1),%st
c0103bf3:	0f 87 27 07 00 00    	ja     c0104320 <_dtoa_r+0x890>
c0103bf9:	dd d8                	fstp   %st(0)
c0103bfb:	83 7d b8 16          	cmpl   $0x16,-0x48(%ebp)
c0103bff:	c7 45 9c 01 00 00 00 	movl   $0x1,-0x64(%ebp)
c0103c06:	77 24                	ja     c0103c2c <_dtoa_r+0x19c>
c0103c08:	8b 45 b8             	mov    -0x48(%ebp),%eax
c0103c0b:	dd 04 c5 00 8a 10 c0 	fldl   -0x3fef7600(,%eax,8)
c0103c12:	dd 45 c0             	fldl   -0x40(%ebp)
c0103c15:	d9 c9                	fxch   %st(1)
c0103c17:	df e9                	fucomip %st(1),%st
c0103c19:	dd d8                	fstp   %st(0)
c0103c1b:	0f 86 5f 07 00 00    	jbe    c0104380 <_dtoa_r+0x8f0>
c0103c21:	83 6d b8 01          	subl   $0x1,-0x48(%ebp)
c0103c25:	c7 45 9c 00 00 00 00 	movl   $0x0,-0x64(%ebp)
c0103c2c:	89 d0                	mov    %edx,%eax
c0103c2e:	29 d8                	sub    %ebx,%eax
c0103c30:	83 e8 01             	sub    $0x1,%eax
c0103c33:	c7 45 a0 00 00 00 00 	movl   $0x0,-0x60(%ebp)
c0103c3a:	89 45 ac             	mov    %eax,-0x54(%ebp)
c0103c3d:	0f 88 0d 07 00 00    	js     c0104350 <_dtoa_r+0x8c0>
c0103c43:	8b 45 b8             	mov    -0x48(%ebp),%eax
c0103c46:	85 c0                	test   %eax,%eax
c0103c48:	0f 88 ea 06 00 00    	js     c0104338 <_dtoa_r+0x8a8>
c0103c4e:	01 45 ac             	add    %eax,-0x54(%ebp)
c0103c51:	89 45 94             	mov    %eax,-0x6c(%ebp)
c0103c54:	c7 45 b0 00 00 00 00 	movl   $0x0,-0x50(%ebp)
c0103c5b:	83 7d 14 09          	cmpl   $0x9,0x14(%ebp)
c0103c5f:	0f 87 0b 03 00 00    	ja     c0103f70 <_dtoa_r+0x4e0>
c0103c65:	83 7d 14 05          	cmpl   $0x5,0x14(%ebp)
c0103c69:	0f 8e 23 10 00 00    	jle    c0104c92 <_dtoa_r+0x1202>
c0103c6f:	83 6d 14 04          	subl   $0x4,0x14(%ebp)
c0103c73:	31 c0                	xor    %eax,%eax
c0103c75:	83 7d 14 03          	cmpl   $0x3,0x14(%ebp)
c0103c79:	0f 84 43 0d 00 00    	je     c01049c2 <_dtoa_r+0xf32>
c0103c7f:	0f 8e f3 00 00 00    	jle    c0103d78 <_dtoa_r+0x2e8>
c0103c85:	83 7d 14 04          	cmpl   $0x4,0x14(%ebp)
c0103c89:	c7 45 98 01 00 00 00 	movl   $0x1,-0x68(%ebp)
c0103c90:	0f 84 f3 00 00 00    	je     c0103d89 <_dtoa_r+0x2f9>
c0103c96:	83 7d 14 05          	cmpl   $0x5,0x14(%ebp)
c0103c9a:	0f 85 d7 02 00 00    	jne    c0103f77 <_dtoa_r+0x4e7>
c0103ca0:	8b 5d b8             	mov    -0x48(%ebp),%ebx
c0103ca3:	03 5d 18             	add    0x18(%ebp),%ebx
c0103ca6:	89 5d 90             	mov    %ebx,-0x70(%ebp)
c0103ca9:	83 c3 01             	add    $0x1,%ebx
c0103cac:	83 fb 0e             	cmp    $0xe,%ebx
c0103caf:	0f 96 c2             	setbe  %dl
c0103cb2:	85 db                	test   %ebx,%ebx
c0103cb4:	89 5d a8             	mov    %ebx,-0x58(%ebp)
c0103cb7:	0f 8e a7 08 00 00    	jle    c0104564 <_dtoa_r+0xad4>
c0103cbd:	8b 5d a8             	mov    -0x58(%ebp),%ebx
c0103cc0:	83 fb 0e             	cmp    $0xe,%ebx
c0103cc3:	89 df                	mov    %ebx,%edi
c0103cc5:	0f 96 45 b4          	setbe  -0x4c(%ebp)
c0103cc9:	20 45 b4             	and    %al,-0x4c(%ebp)
c0103ccc:	e9 d6 00 00 00       	jmp    c0103da7 <_dtoa_r+0x317>
c0103cd1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0103cd8:	8b 55 c0             	mov    -0x40(%ebp),%edx
c0103cdb:	8b 45 1c             	mov    0x1c(%ebp),%eax
c0103cde:	85 d2                	test   %edx,%edx
c0103ce0:	c7 00 0f 27 00 00    	movl   $0x270f,(%eax)
c0103ce6:	b8 09 89 10 c0       	mov    $0xc0108909,%eax
c0103ceb:	74 43                	je     c0103d30 <_dtoa_r+0x2a0>
c0103ced:	8b 5d 24             	mov    0x24(%ebp),%ebx
c0103cf0:	85 db                	test   %ebx,%ebx
c0103cf2:	0f 84 30 fe ff ff    	je     c0103b28 <_dtoa_r+0x98>
c0103cf8:	8b 75 24             	mov    0x24(%ebp),%esi
c0103cfb:	8d 50 08             	lea    0x8(%eax),%edx
c0103cfe:	80 78 03 00          	cmpb   $0x0,0x3(%eax)
c0103d02:	8d 48 03             	lea    0x3(%eax),%ecx
c0103d05:	0f 44 d1             	cmove  %ecx,%edx
c0103d08:	89 16                	mov    %edx,(%esi)
c0103d0a:	81 c4 8c 00 00 00    	add    $0x8c,%esp
c0103d10:	5b                   	pop    %ebx
c0103d11:	5e                   	pop    %esi
c0103d12:	5f                   	pop    %edi
c0103d13:	5d                   	pop    %ebp
c0103d14:	c3                   	ret    
c0103d15:	8d 76 00             	lea    0x0(%esi),%esi
c0103d18:	81 e7 ff ff ff 7f    	and    $0x7fffffff,%edi
c0103d1e:	c7 03 01 00 00 00    	movl   $0x1,(%ebx)
c0103d24:	89 7d c4             	mov    %edi,-0x3c(%ebp)
c0103d27:	e9 b7 fd ff ff       	jmp    c0103ae3 <_dtoa_r+0x53>
c0103d2c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0103d30:	81 e7 ff ff 0f 00    	and    $0xfffff,%edi
c0103d36:	ba 00 89 10 c0       	mov    $0xc0108900,%edx
c0103d3b:	0f 44 c2             	cmove  %edx,%eax
c0103d3e:	eb ad                	jmp    c0103ced <_dtoa_r+0x25d>
c0103d40:	8b 45 bc             	mov    -0x44(%ebp),%eax
c0103d43:	81 eb ff 03 00 00    	sub    $0x3ff,%ebx
c0103d49:	8b 55 e0             	mov    -0x20(%ebp),%edx
c0103d4c:	c7 45 8c 00 00 00 00 	movl   $0x0,-0x74(%ebp)
c0103d53:	25 ff ff 0f 00       	and    $0xfffff,%eax
c0103d58:	0d 00 00 f0 3f       	or     $0x3ff00000,%eax
c0103d5d:	89 45 bc             	mov    %eax,-0x44(%ebp)
c0103d60:	e9 51 fe ff ff       	jmp    c0103bb6 <_dtoa_r+0x126>
c0103d65:	8d 76 00             	lea    0x0(%esi),%esi
c0103d68:	b8 4a 84 10 c0       	mov    $0xc010844a,%eax
c0103d6d:	e9 b6 fd ff ff       	jmp    c0103b28 <_dtoa_r+0x98>
c0103d72:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0103d78:	83 7d 14 02          	cmpl   $0x2,0x14(%ebp)
c0103d7c:	c7 45 98 00 00 00 00 	movl   $0x0,-0x68(%ebp)
c0103d83:	0f 85 ee 01 00 00    	jne    c0103f77 <_dtoa_r+0x4e7>
c0103d89:	8b 55 18             	mov    0x18(%ebp),%edx
c0103d8c:	85 d2                	test   %edx,%edx
c0103d8e:	0f 8e b6 07 00 00    	jle    c010454a <_dtoa_r+0xaba>
c0103d94:	8b 7d 18             	mov    0x18(%ebp),%edi
c0103d97:	83 ff 0e             	cmp    $0xe,%edi
c0103d9a:	0f 96 45 b4          	setbe  -0x4c(%ebp)
c0103d9e:	20 45 b4             	and    %al,-0x4c(%ebp)
c0103da1:	89 7d 90             	mov    %edi,-0x70(%ebp)
c0103da4:	89 7d a8             	mov    %edi,-0x58(%ebp)
c0103da7:	83 ff 17             	cmp    $0x17,%edi
c0103daa:	c7 46 44 00 00 00 00 	movl   $0x0,0x44(%esi)
c0103db1:	0f 86 e5 0e 00 00    	jbe    c0104c9c <_dtoa_r+0x120c>
c0103db7:	b9 01 00 00 00       	mov    $0x1,%ecx
c0103dbc:	b8 04 00 00 00       	mov    $0x4,%eax
c0103dc1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0103dc8:	01 c0                	add    %eax,%eax
c0103dca:	89 ca                	mov    %ecx,%edx
c0103dcc:	8d 58 14             	lea    0x14(%eax),%ebx
c0103dcf:	39 fb                	cmp    %edi,%ebx
c0103dd1:	8d 49 01             	lea    0x1(%ecx),%ecx
c0103dd4:	76 f2                	jbe    c0103dc8 <_dtoa_r+0x338>
c0103dd6:	89 56 44             	mov    %edx,0x44(%esi)
c0103dd9:	89 54 24 04          	mov    %edx,0x4(%esp)
c0103ddd:	89 34 24             	mov    %esi,(%esp)
c0103de0:	e8 db 17 00 00       	call   c01055c0 <_Balloc>
c0103de5:	80 7d b4 00          	cmpb   $0x0,-0x4c(%ebp)
c0103de9:	89 c7                	mov    %eax,%edi
c0103deb:	89 46 40             	mov    %eax,0x40(%esi)
c0103dee:	0f 84 bb 01 00 00    	je     c0103faf <_dtoa_r+0x51f>
c0103df4:	8b 5d b8             	mov    -0x48(%ebp),%ebx
c0103df7:	dd 45 c0             	fldl   -0x40(%ebp)
c0103dfa:	85 db                	test   %ebx,%ebx
c0103dfc:	0f 8e de 07 00 00    	jle    c01045e0 <_dtoa_r+0xb50>
c0103e02:	89 d8                	mov    %ebx,%eax
c0103e04:	83 e0 0f             	and    $0xf,%eax
c0103e07:	dd 04 c5 00 8a 10 c0 	fldl   -0x3fef7600(,%eax,8)
c0103e0e:	89 d8                	mov    %ebx,%eax
c0103e10:	c1 f8 04             	sar    $0x4,%eax
c0103e13:	a8 10                	test   $0x10,%al
c0103e15:	0f 84 cd 05 00 00    	je     c01043e8 <_dtoa_r+0x958>
c0103e1b:	dd 05 e0 89 10 c0    	fldl   0xc01089e0
c0103e21:	83 e0 0f             	and    $0xf,%eax
c0103e24:	b9 03 00 00 00       	mov    $0x3,%ecx
c0103e29:	d8 fa                	fdivr  %st(2),%st
c0103e2b:	85 c0                	test   %eax,%eax
c0103e2d:	74 22                	je     c0103e51 <_dtoa_r+0x3c1>
c0103e2f:	31 d2                	xor    %edx,%edx
c0103e31:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0103e38:	a8 01                	test   $0x1,%al
c0103e3a:	74 0e                	je     c0103e4a <_dtoa_r+0x3ba>
c0103e3c:	d9 c9                	fxch   %st(1)
c0103e3e:	dc 0c d5 c0 89 10 c0 	fmull  -0x3fef7640(,%edx,8)
c0103e45:	d9 c9                	fxch   %st(1)
c0103e47:	83 c1 01             	add    $0x1,%ecx
c0103e4a:	83 c2 01             	add    $0x1,%edx
c0103e4d:	d1 f8                	sar    %eax
c0103e4f:	75 e7                	jne    c0103e38 <_dtoa_r+0x3a8>
c0103e51:	de f1                	fdivp  %st,%st(1)
c0103e53:	8b 45 9c             	mov    -0x64(%ebp),%eax
c0103e56:	85 c0                	test   %eax,%eax
c0103e58:	74 0a                	je     c0103e64 <_dtoa_r+0x3d4>
c0103e5a:	d9 e8                	fld1   
c0103e5c:	df e9                	fucomip %st(1),%st
c0103e5e:	0f 87 92 0b 00 00    	ja     c01049f6 <_dtoa_r+0xf66>
c0103e64:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
c0103e67:	8b 45 a8             	mov    -0x58(%ebp),%eax
c0103e6a:	db 45 d4             	fildl  -0x2c(%ebp)
c0103e6d:	d8 c9                	fmul   %st(1),%st
c0103e6f:	d8 05 1c 89 10 c0    	fadds  0xc010891c
c0103e75:	dd 5d c0             	fstpl  -0x40(%ebp)
c0103e78:	81 6d c4 00 00 40 03 	subl   $0x3400000,-0x3c(%ebp)
c0103e7f:	85 c0                	test   %eax,%eax
c0103e81:	0f 84 89 05 00 00    	je     c0104410 <_dtoa_r+0x980>
c0103e87:	8b 45 b8             	mov    -0x48(%ebp),%eax
c0103e8a:	8b 4d a8             	mov    -0x58(%ebp),%ecx
c0103e8d:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c0103e90:	8b 45 98             	mov    -0x68(%ebp),%eax
c0103e93:	85 c0                	test   %eax,%eax
c0103e95:	0f 84 b5 07 00 00    	je     c0104650 <_dtoa_r+0xbc0>
c0103e9b:	d9 05 24 89 10 c0    	flds   0xc0108924
c0103ea1:	8d 57 01             	lea    0x1(%edi),%edx
c0103ea4:	dc 34 cd f8 89 10 c0 	fdivl  -0x3fef7608(,%ecx,8)
c0103eab:	d9 7d d2             	fnstcw -0x2e(%ebp)
c0103eae:	0f b7 45 d2          	movzwl -0x2e(%ebp),%eax
c0103eb2:	b4 0c                	mov    $0xc,%ah
c0103eb4:	66 89 45 d0          	mov    %ax,-0x30(%ebp)
c0103eb8:	dc 65 c0             	fsubl  -0x40(%ebp)
c0103ebb:	d9 c9                	fxch   %st(1)
c0103ebd:	d9 6d d0             	fldcw  -0x30(%ebp)
c0103ec0:	db 55 d4             	fistl  -0x2c(%ebp)
c0103ec3:	d9 6d d2             	fldcw  -0x2e(%ebp)
c0103ec6:	8b 45 d4             	mov    -0x2c(%ebp),%eax
c0103ec9:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c0103ecc:	83 c0 30             	add    $0x30,%eax
c0103ecf:	db 45 d4             	fildl  -0x2c(%ebp)
c0103ed2:	de e9                	fsubrp %st,%st(1)
c0103ed4:	d9 c9                	fxch   %st(1)
c0103ed6:	88 07                	mov    %al,(%edi)
c0103ed8:	db e9                	fucomi %st(1),%st
c0103eda:	77 7f                	ja     c0103f5b <_dtoa_r+0x4cb>
c0103edc:	d9 c1                	fld    %st(1)
c0103ede:	d8 2d 14 89 10 c0    	fsubrs 0xc0108914
c0103ee4:	d9 c9                	fxch   %st(1)
c0103ee6:	db e9                	fucomi %st(1),%st
c0103ee8:	dd d9                	fstp   %st(1)
c0103eea:	0f 87 33 0c 00 00    	ja     c0104b23 <_dtoa_r+0x1093>
c0103ef0:	83 f9 01             	cmp    $0x1,%ecx
c0103ef3:	0f 8e c4 06 00 00    	jle    c01045bd <_dtoa_r+0xb2d>
c0103ef9:	01 f9                	add    %edi,%ecx
c0103efb:	d9 05 18 89 10 c0    	flds   0xc0108918
c0103f01:	eb 25                	jmp    c0103f28 <_dtoa_r+0x498>
c0103f03:	90                   	nop
c0103f04:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0103f08:	d9 c1                	fld    %st(1)
c0103f0a:	d8 2d 14 89 10 c0    	fsubrs 0xc0108914
c0103f10:	d9 c9                	fxch   %st(1)
c0103f12:	db e9                	fucomi %st(1),%st
c0103f14:	dd d9                	fstp   %st(1)
c0103f16:	0f 87 14 0c 00 00    	ja     c0104b30 <_dtoa_r+0x10a0>
c0103f1c:	39 ca                	cmp    %ecx,%edx
c0103f1e:	0f 84 a4 06 00 00    	je     c01045c8 <_dtoa_r+0xb38>
c0103f24:	d9 c9                	fxch   %st(1)
c0103f26:	d9 ca                	fxch   %st(2)
c0103f28:	dc c9                	fmul   %st,%st(1)
c0103f2a:	83 c2 01             	add    $0x1,%edx
c0103f2d:	dc ca                	fmul   %st,%st(2)
c0103f2f:	d9 ca                	fxch   %st(2)
c0103f31:	d9 6d d0             	fldcw  -0x30(%ebp)
c0103f34:	db 55 d4             	fistl  -0x2c(%ebp)
c0103f37:	d9 6d d2             	fldcw  -0x2e(%ebp)
c0103f3a:	8b 45 d4             	mov    -0x2c(%ebp),%eax
c0103f3d:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c0103f40:	83 c0 30             	add    $0x30,%eax
c0103f43:	db 45 d4             	fildl  -0x2c(%ebp)
c0103f46:	de e9                	fsubrp %st,%st(1)
c0103f48:	d9 c9                	fxch   %st(1)
c0103f4a:	88 42 ff             	mov    %al,-0x1(%edx)
c0103f4d:	db e9                	fucomi %st(1),%st
c0103f4f:	76 b7                	jbe    c0103f08 <_dtoa_r+0x478>
c0103f51:	dd d8                	fstp   %st(0)
c0103f53:	dd d8                	fstp   %st(0)
c0103f55:	dd d8                	fstp   %st(0)
c0103f57:	dd d8                	fstp   %st(0)
c0103f59:	eb 06                	jmp    c0103f61 <_dtoa_r+0x4d1>
c0103f5b:	dd d8                	fstp   %st(0)
c0103f5d:	dd d8                	fstp   %st(0)
c0103f5f:	dd d8                	fstp   %st(0)
c0103f61:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0103f64:	89 fb                	mov    %edi,%ebx
c0103f66:	89 d7                	mov    %edx,%edi
c0103f68:	89 45 b8             	mov    %eax,-0x48(%ebp)
c0103f6b:	e9 70 03 00 00       	jmp    c01042e0 <_dtoa_r+0x850>
c0103f70:	c7 45 14 00 00 00 00 	movl   $0x0,0x14(%ebp)
c0103f77:	c7 46 44 00 00 00 00 	movl   $0x0,0x44(%esi)
c0103f7e:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c0103f85:	00 
c0103f86:	89 34 24             	mov    %esi,(%esp)
c0103f89:	e8 32 16 00 00       	call   c01055c0 <_Balloc>
c0103f8e:	c7 45 98 01 00 00 00 	movl   $0x1,-0x68(%ebp)
c0103f95:	c7 45 a8 ff ff ff ff 	movl   $0xffffffff,-0x58(%ebp)
c0103f9c:	c7 45 90 ff ff ff ff 	movl   $0xffffffff,-0x70(%ebp)
c0103fa3:	c7 45 18 00 00 00 00 	movl   $0x0,0x18(%ebp)
c0103faa:	89 c7                	mov    %eax,%edi
c0103fac:	89 46 40             	mov    %eax,0x40(%esi)
c0103faf:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0103fb2:	85 c0                	test   %eax,%eax
c0103fb4:	0f 88 2e 01 00 00    	js     c01040e8 <_dtoa_r+0x658>
c0103fba:	83 7d b8 0e          	cmpl   $0xe,-0x48(%ebp)
c0103fbe:	0f 8f 24 01 00 00    	jg     c01040e8 <_dtoa_r+0x658>
c0103fc4:	8b 45 b8             	mov    -0x48(%ebp),%eax
c0103fc7:	dd 04 c5 00 8a 10 c0 	fldl   -0x3fef7600(,%eax,8)
c0103fce:	8b 45 a8             	mov    -0x58(%ebp),%eax
c0103fd1:	85 c0                	test   %eax,%eax
c0103fd3:	7f 0e                	jg     c0103fe3 <_dtoa_r+0x553>
c0103fd5:	8b 45 18             	mov    0x18(%ebp),%eax
c0103fd8:	c1 e8 1f             	shr    $0x1f,%eax
c0103fdb:	84 c0                	test   %al,%al
c0103fdd:	0f 85 9d 07 00 00    	jne    c0104780 <_dtoa_r+0xcf0>
c0103fe3:	dd 45 c0             	fldl   -0x40(%ebp)
c0103fe6:	d9 c0                	fld    %st(0)
c0103fe8:	d8 f2                	fdiv   %st(2),%st
c0103fea:	d9 7d d2             	fnstcw -0x2e(%ebp)
c0103fed:	83 7d a8 01          	cmpl   $0x1,-0x58(%ebp)
c0103ff1:	0f b7 45 d2          	movzwl -0x2e(%ebp),%eax
c0103ff5:	b4 0c                	mov    $0xc,%ah
c0103ff7:	66 89 45 d0          	mov    %ax,-0x30(%ebp)
c0103ffb:	8d 47 01             	lea    0x1(%edi),%eax
c0103ffe:	89 45 c0             	mov    %eax,-0x40(%ebp)
c0104001:	d9 6d d0             	fldcw  -0x30(%ebp)
c0104004:	db 5d d4             	fistpl -0x2c(%ebp)
c0104007:	d9 6d d2             	fldcw  -0x2e(%ebp)
c010400a:	8b 55 d4             	mov    -0x2c(%ebp),%edx
c010400d:	89 55 d4             	mov    %edx,-0x2c(%ebp)
c0104010:	8d 42 30             	lea    0x30(%edx),%eax
c0104013:	db 45 d4             	fildl  -0x2c(%ebp)
c0104016:	d8 ca                	fmul   %st(2),%st
c0104018:	88 07                	mov    %al,(%edi)
c010401a:	de e9                	fsubrp %st,%st(1)
c010401c:	74 66                	je     c0104084 <_dtoa_r+0x5f4>
c010401e:	d8 0d 18 89 10 c0    	fmuls  0xc0108918
c0104024:	d9 ee                	fldz   
c0104026:	d9 c9                	fxch   %st(1)
c0104028:	db e9                	fucomi %st(1),%st
c010402a:	dd d9                	fstp   %st(1)
c010402c:	0f 8b 33 0c 00 00    	jnp    c0104c65 <_dtoa_r+0x11d5>
c0104032:	8b 5d a8             	mov    -0x58(%ebp),%ebx
c0104035:	8d 47 02             	lea    0x2(%edi),%eax
c0104038:	d9 05 18 89 10 c0    	flds   0xc0108918
c010403e:	01 fb                	add    %edi,%ebx
c0104040:	eb 19                	jmp    c010405b <_dtoa_r+0x5cb>
c0104042:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0104048:	dc c9                	fmul   %st,%st(1)
c010404a:	83 c0 01             	add    $0x1,%eax
c010404d:	d9 ee                	fldz   
c010404f:	d9 ca                	fxch   %st(2)
c0104051:	db ea                	fucomi %st(2),%st
c0104053:	dd da                	fstp   %st(2)
c0104055:	0f 8b 73 09 00 00    	jnp    c01049ce <_dtoa_r+0xf3e>
c010405b:	d9 c1                	fld    %st(1)
c010405d:	39 d8                	cmp    %ebx,%eax
c010405f:	d8 f3                	fdiv   %st(3),%st
c0104061:	89 45 c0             	mov    %eax,-0x40(%ebp)
c0104064:	d9 6d d0             	fldcw  -0x30(%ebp)
c0104067:	db 5d d4             	fistpl -0x2c(%ebp)
c010406a:	d9 6d d2             	fldcw  -0x2e(%ebp)
c010406d:	8b 55 d4             	mov    -0x2c(%ebp),%edx
c0104070:	89 55 d4             	mov    %edx,-0x2c(%ebp)
c0104073:	8d 4a 30             	lea    0x30(%edx),%ecx
c0104076:	db 45 d4             	fildl  -0x2c(%ebp)
c0104079:	d8 cb                	fmul   %st(3),%st
c010407b:	88 48 ff             	mov    %cl,-0x1(%eax)
c010407e:	de ea                	fsubrp %st,%st(2)
c0104080:	75 c6                	jne    c0104048 <_dtoa_r+0x5b8>
c0104082:	dd d8                	fstp   %st(0)
c0104084:	d8 c0                	fadd   %st(0),%st
c0104086:	db e9                	fucomi %st(1),%st
c0104088:	77 1e                	ja     c01040a8 <_dtoa_r+0x618>
c010408a:	d9 c9                	fxch   %st(1)
c010408c:	df e9                	fucomip %st(1),%st
c010408e:	dd d8                	fstp   %st(0)
c0104090:	0f 8a 44 09 00 00    	jp     c01049da <_dtoa_r+0xf4a>
c0104096:	0f 85 3e 09 00 00    	jne    c01049da <_dtoa_r+0xf4a>
c010409c:	83 e2 01             	and    $0x1,%edx
c010409f:	90                   	nop
c01040a0:	0f 84 34 09 00 00    	je     c01049da <_dtoa_r+0xf4a>
c01040a6:	eb 04                	jmp    c01040ac <_dtoa_r+0x61c>
c01040a8:	dd d8                	fstp   %st(0)
c01040aa:	dd d8                	fstp   %st(0)
c01040ac:	8b 4d c0             	mov    -0x40(%ebp),%ecx
c01040af:	89 fb                	mov    %edi,%ebx
c01040b1:	0f b6 41 ff          	movzbl -0x1(%ecx),%eax
c01040b5:	89 cf                	mov    %ecx,%edi
c01040b7:	8b 4d b8             	mov    -0x48(%ebp),%ecx
c01040ba:	89 4d b4             	mov    %ecx,-0x4c(%ebp)
c01040bd:	eb 0f                	jmp    c01040ce <_dtoa_r+0x63e>
c01040bf:	90                   	nop
c01040c0:	39 d3                	cmp    %edx,%ebx
c01040c2:	0f 84 75 09 00 00    	je     c0104a3d <_dtoa_r+0xfad>
c01040c8:	0f b6 42 ff          	movzbl -0x1(%edx),%eax
c01040cc:	89 d7                	mov    %edx,%edi
c01040ce:	3c 39                	cmp    $0x39,%al
c01040d0:	8d 57 ff             	lea    -0x1(%edi),%edx
c01040d3:	74 eb                	je     c01040c0 <_dtoa_r+0x630>
c01040d5:	8b 4d b4             	mov    -0x4c(%ebp),%ecx
c01040d8:	83 c0 01             	add    $0x1,%eax
c01040db:	88 02                	mov    %al,(%edx)
c01040dd:	89 4d b8             	mov    %ecx,-0x48(%ebp)
c01040e0:	e9 fb 01 00 00       	jmp    c01042e0 <_dtoa_r+0x850>
c01040e5:	8d 76 00             	lea    0x0(%esi),%esi
c01040e8:	8b 4d 98             	mov    -0x68(%ebp),%ecx
c01040eb:	85 c9                	test   %ecx,%ecx
c01040ed:	0f 85 9d 02 00 00    	jne    c0104390 <_dtoa_r+0x900>
c01040f3:	8b 55 b0             	mov    -0x50(%ebp),%edx
c01040f6:	8b 5d a0             	mov    -0x60(%ebp),%ebx
c01040f9:	c7 45 b4 00 00 00 00 	movl   $0x0,-0x4c(%ebp)
c0104100:	8b 45 ac             	mov    -0x54(%ebp),%eax
c0104103:	85 c0                	test   %eax,%eax
c0104105:	7e 14                	jle    c010411b <_dtoa_r+0x68b>
c0104107:	85 db                	test   %ebx,%ebx
c0104109:	7e 10                	jle    c010411b <_dtoa_r+0x68b>
c010410b:	8b 45 ac             	mov    -0x54(%ebp),%eax
c010410e:	39 d8                	cmp    %ebx,%eax
c0104110:	0f 4f c3             	cmovg  %ebx,%eax
c0104113:	29 45 a0             	sub    %eax,-0x60(%ebp)
c0104116:	29 c3                	sub    %eax,%ebx
c0104118:	29 45 ac             	sub    %eax,-0x54(%ebp)
c010411b:	8b 45 b0             	mov    -0x50(%ebp),%eax
c010411e:	85 c0                	test   %eax,%eax
c0104120:	7e 61                	jle    c0104183 <_dtoa_r+0x6f3>
c0104122:	8b 45 98             	mov    -0x68(%ebp),%eax
c0104125:	85 c0                	test   %eax,%eax
c0104127:	0f 84 72 04 00 00    	je     c010459f <_dtoa_r+0xb0f>
c010412d:	85 d2                	test   %edx,%edx
c010412f:	7e 47                	jle    c0104178 <_dtoa_r+0x6e8>
c0104131:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0104134:	89 54 24 08          	mov    %edx,0x8(%esp)
c0104138:	89 34 24             	mov    %esi,(%esp)
c010413b:	89 55 88             	mov    %edx,-0x78(%ebp)
c010413e:	89 44 24 04          	mov    %eax,0x4(%esp)
c0104142:	e8 f9 19 00 00       	call   c0105b40 <__pow5mult>
c0104147:	8b 4d a4             	mov    -0x5c(%ebp),%ecx
c010414a:	89 34 24             	mov    %esi,(%esp)
c010414d:	89 4c 24 08          	mov    %ecx,0x8(%esp)
c0104151:	89 44 24 04          	mov    %eax,0x4(%esp)
c0104155:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c0104158:	e8 13 18 00 00       	call   c0105970 <__multiply>
c010415d:	8b 4d a4             	mov    -0x5c(%ebp),%ecx
c0104160:	89 34 24             	mov    %esi,(%esp)
c0104163:	89 4c 24 04          	mov    %ecx,0x4(%esp)
c0104167:	89 45 8c             	mov    %eax,-0x74(%ebp)
c010416a:	e8 f1 14 00 00       	call   c0105660 <_Bfree>
c010416f:	8b 45 8c             	mov    -0x74(%ebp),%eax
c0104172:	8b 55 88             	mov    -0x78(%ebp),%edx
c0104175:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c0104178:	8b 45 b0             	mov    -0x50(%ebp),%eax
c010417b:	29 d0                	sub    %edx,%eax
c010417d:	0f 85 1f 04 00 00    	jne    c01045a2 <_dtoa_r+0xb12>
c0104183:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c010418a:	00 
c010418b:	89 34 24             	mov    %esi,(%esp)
c010418e:	e8 ad 17 00 00       	call   c0105940 <__i2b>
c0104193:	8b 4d 94             	mov    -0x6c(%ebp),%ecx
c0104196:	85 c9                	test   %ecx,%ecx
c0104198:	89 45 b0             	mov    %eax,-0x50(%ebp)
c010419b:	7e 13                	jle    c01041b0 <_dtoa_r+0x720>
c010419d:	89 4c 24 08          	mov    %ecx,0x8(%esp)
c01041a1:	89 44 24 04          	mov    %eax,0x4(%esp)
c01041a5:	89 34 24             	mov    %esi,(%esp)
c01041a8:	e8 93 19 00 00       	call   c0105b40 <__pow5mult>
c01041ad:	89 45 b0             	mov    %eax,-0x50(%ebp)
c01041b0:	83 7d 14 01          	cmpl   $0x1,0x14(%ebp)
c01041b4:	c7 45 8c 00 00 00 00 	movl   $0x0,-0x74(%ebp)
c01041bb:	0f 8e f7 05 00 00    	jle    c01047b8 <_dtoa_r+0xd28>
c01041c1:	8b 45 94             	mov    -0x6c(%ebp),%eax
c01041c4:	ba 01 00 00 00       	mov    $0x1,%edx
c01041c9:	85 c0                	test   %eax,%eax
c01041cb:	0f 85 27 05 00 00    	jne    c01046f8 <_dtoa_r+0xc68>
c01041d1:	8b 45 ac             	mov    -0x54(%ebp),%eax
c01041d4:	01 d0                	add    %edx,%eax
c01041d6:	83 e0 1f             	and    $0x1f,%eax
c01041d9:	89 c2                	mov    %eax,%edx
c01041db:	0f 84 57 03 00 00    	je     c0104538 <_dtoa_r+0xaa8>
c01041e1:	b8 20 00 00 00       	mov    $0x20,%eax
c01041e6:	29 d0                	sub    %edx,%eax
c01041e8:	83 f8 04             	cmp    $0x4,%eax
c01041eb:	0f 8e 8c 0a 00 00    	jle    c0104c7d <_dtoa_r+0x11ed>
c01041f1:	b8 1c 00 00 00       	mov    $0x1c,%eax
c01041f6:	29 d0                	sub    %edx,%eax
c01041f8:	01 45 a0             	add    %eax,-0x60(%ebp)
c01041fb:	01 c3                	add    %eax,%ebx
c01041fd:	01 45 ac             	add    %eax,-0x54(%ebp)
c0104200:	8b 45 a0             	mov    -0x60(%ebp),%eax
c0104203:	85 c0                	test   %eax,%eax
c0104205:	7e 16                	jle    c010421d <_dtoa_r+0x78d>
c0104207:	89 44 24 08          	mov    %eax,0x8(%esp)
c010420b:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c010420e:	89 34 24             	mov    %esi,(%esp)
c0104211:	89 44 24 04          	mov    %eax,0x4(%esp)
c0104215:	e8 46 1a 00 00       	call   c0105c60 <__lshift>
c010421a:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c010421d:	8b 45 ac             	mov    -0x54(%ebp),%eax
c0104220:	85 c0                	test   %eax,%eax
c0104222:	7e 16                	jle    c010423a <_dtoa_r+0x7aa>
c0104224:	89 44 24 08          	mov    %eax,0x8(%esp)
c0104228:	8b 45 b0             	mov    -0x50(%ebp),%eax
c010422b:	89 34 24             	mov    %esi,(%esp)
c010422e:	89 44 24 04          	mov    %eax,0x4(%esp)
c0104232:	e8 29 1a 00 00       	call   c0105c60 <__lshift>
c0104237:	89 45 b0             	mov    %eax,-0x50(%ebp)
c010423a:	8b 45 9c             	mov    -0x64(%ebp),%eax
c010423d:	85 c0                	test   %eax,%eax
c010423f:	0f 85 d3 04 00 00    	jne    c0104718 <_dtoa_r+0xc88>
c0104245:	83 7d 14 02          	cmpl   $0x2,0x14(%ebp)
c0104249:	0f 8e 11 02 00 00    	jle    c0104460 <_dtoa_r+0x9d0>
c010424f:	8b 45 a8             	mov    -0x58(%ebp),%eax
c0104252:	85 c0                	test   %eax,%eax
c0104254:	0f 8f 06 02 00 00    	jg     c0104460 <_dtoa_r+0x9d0>
c010425a:	8b 45 a8             	mov    -0x58(%ebp),%eax
c010425d:	85 c0                	test   %eax,%eax
c010425f:	0f 85 e0 01 00 00    	jne    c0104445 <_dtoa_r+0x9b5>
c0104265:	8b 45 b0             	mov    -0x50(%ebp),%eax
c0104268:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c010426f:	00 
c0104270:	c7 44 24 08 05 00 00 	movl   $0x5,0x8(%esp)
c0104277:	00 
c0104278:	89 34 24             	mov    %esi,(%esp)
c010427b:	89 44 24 04          	mov    %eax,0x4(%esp)
c010427f:	e8 fc 13 00 00       	call   c0105680 <__multadd>
c0104284:	89 45 b0             	mov    %eax,-0x50(%ebp)
c0104287:	89 44 24 04          	mov    %eax,0x4(%esp)
c010428b:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c010428e:	89 04 24             	mov    %eax,(%esp)
c0104291:	e8 ea 1a 00 00       	call   c0105d80 <__mcmp>
c0104296:	85 c0                	test   %eax,%eax
c0104298:	0f 8e a7 01 00 00    	jle    c0104445 <_dtoa_r+0x9b5>
c010429e:	83 45 b8 01          	addl   $0x1,-0x48(%ebp)
c01042a2:	89 fb                	mov    %edi,%ebx
c01042a4:	83 c7 01             	add    $0x1,%edi
c01042a7:	c6 47 ff 31          	movb   $0x31,-0x1(%edi)
c01042ab:	c7 45 c0 00 00 00 00 	movl   $0x0,-0x40(%ebp)
c01042b2:	8b 45 b0             	mov    -0x50(%ebp),%eax
c01042b5:	89 34 24             	mov    %esi,(%esp)
c01042b8:	89 44 24 04          	mov    %eax,0x4(%esp)
c01042bc:	e8 9f 13 00 00       	call   c0105660 <_Bfree>
c01042c1:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c01042c4:	85 c0                	test   %eax,%eax
c01042c6:	74 18                	je     c01042e0 <_dtoa_r+0x850>
c01042c8:	39 45 c0             	cmp    %eax,-0x40(%ebp)
c01042cb:	0f 85 a7 02 00 00    	jne    c0104578 <_dtoa_r+0xae8>
c01042d1:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c01042d4:	89 34 24             	mov    %esi,(%esp)
c01042d7:	89 44 24 04          	mov    %eax,0x4(%esp)
c01042db:	e8 80 13 00 00       	call   c0105660 <_Bfree>
c01042e0:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c01042e3:	89 34 24             	mov    %esi,(%esp)
c01042e6:	89 44 24 04          	mov    %eax,0x4(%esp)
c01042ea:	e8 71 13 00 00       	call   c0105660 <_Bfree>
c01042ef:	8b 45 b8             	mov    -0x48(%ebp),%eax
c01042f2:	8b 75 1c             	mov    0x1c(%ebp),%esi
c01042f5:	c6 07 00             	movb   $0x0,(%edi)
c01042f8:	83 c0 01             	add    $0x1,%eax
c01042fb:	89 06                	mov    %eax,(%esi)
c01042fd:	8b 45 24             	mov    0x24(%ebp),%eax
c0104300:	85 c0                	test   %eax,%eax
c0104302:	0f 84 90 02 00 00    	je     c0104598 <_dtoa_r+0xb08>
c0104308:	8b 45 24             	mov    0x24(%ebp),%eax
c010430b:	89 38                	mov    %edi,(%eax)
c010430d:	81 c4 8c 00 00 00    	add    $0x8c,%esp
c0104313:	89 d8                	mov    %ebx,%eax
c0104315:	5b                   	pop    %ebx
c0104316:	5e                   	pop    %esi
c0104317:	5f                   	pop    %edi
c0104318:	5d                   	pop    %ebp
c0104319:	c3                   	ret    
c010431a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0104320:	db 45 b8             	fildl  -0x48(%ebp)
c0104323:	df e9                	fucomip %st(1),%st
c0104325:	dd d8                	fstp   %st(0)
c0104327:	7a 06                	jp     c010432f <_dtoa_r+0x89f>
c0104329:	0f 84 cc f8 ff ff    	je     c0103bfb <_dtoa_r+0x16b>
c010432f:	83 6d b8 01          	subl   $0x1,-0x48(%ebp)
c0104333:	e9 c3 f8 ff ff       	jmp    c0103bfb <_dtoa_r+0x16b>
c0104338:	8b 45 b8             	mov    -0x48(%ebp),%eax
c010433b:	29 45 a0             	sub    %eax,-0x60(%ebp)
c010433e:	c7 45 94 00 00 00 00 	movl   $0x0,-0x6c(%ebp)
c0104345:	f7 d8                	neg    %eax
c0104347:	89 45 b0             	mov    %eax,-0x50(%ebp)
c010434a:	e9 0c f9 ff ff       	jmp    c0103c5b <_dtoa_r+0x1cb>
c010434f:	90                   	nop
c0104350:	f7 d8                	neg    %eax
c0104352:	89 45 a0             	mov    %eax,-0x60(%ebp)
c0104355:	c7 45 ac 00 00 00 00 	movl   $0x0,-0x54(%ebp)
c010435c:	e9 e2 f8 ff ff       	jmp    c0103c43 <_dtoa_r+0x1b3>
c0104361:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0104368:	8b 45 c0             	mov    -0x40(%ebp),%eax
c010436b:	b9 ee fb ff ff       	mov    $0xfffffbee,%ecx
c0104370:	29 d9                	sub    %ebx,%ecx
c0104372:	d3 e0                	shl    %cl,%eax
c0104374:	e9 1b f8 ff ff       	jmp    c0103b94 <_dtoa_r+0x104>
c0104379:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0104380:	c7 45 9c 00 00 00 00 	movl   $0x0,-0x64(%ebp)
c0104387:	e9 a0 f8 ff ff       	jmp    c0103c2c <_dtoa_r+0x19c>
c010438c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0104390:	83 7d 14 01          	cmpl   $0x1,0x14(%ebp)
c0104394:	0f 8e fe 06 00 00    	jle    c0104a98 <_dtoa_r+0x1008>
c010439a:	8b 45 a8             	mov    -0x58(%ebp),%eax
c010439d:	83 e8 01             	sub    $0x1,%eax
c01043a0:	39 45 b0             	cmp    %eax,-0x50(%ebp)
c01043a3:	0f 8c 3b 06 00 00    	jl     c01049e4 <_dtoa_r+0xf54>
c01043a9:	8b 55 b0             	mov    -0x50(%ebp),%edx
c01043ac:	29 c2                	sub    %eax,%edx
c01043ae:	8b 4d a8             	mov    -0x58(%ebp),%ecx
c01043b1:	8b 5d a0             	mov    -0x60(%ebp),%ebx
c01043b4:	85 c9                	test   %ecx,%ecx
c01043b6:	89 c8                	mov    %ecx,%eax
c01043b8:	0f 88 83 07 00 00    	js     c0104b41 <_dtoa_r+0x10b1>
c01043be:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c01043c5:	00 
c01043c6:	89 34 24             	mov    %esi,(%esp)
c01043c9:	89 55 8c             	mov    %edx,-0x74(%ebp)
c01043cc:	01 45 a0             	add    %eax,-0x60(%ebp)
c01043cf:	01 45 ac             	add    %eax,-0x54(%ebp)
c01043d2:	e8 69 15 00 00       	call   c0105940 <__i2b>
c01043d7:	8b 55 8c             	mov    -0x74(%ebp),%edx
c01043da:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c01043dd:	e9 1e fd ff ff       	jmp    c0104100 <_dtoa_r+0x670>
c01043e2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c01043e8:	d9 c1                	fld    %st(1)
c01043ea:	b9 02 00 00 00       	mov    $0x2,%ecx
c01043ef:	e9 37 fa ff ff       	jmp    c0103e2b <_dtoa_r+0x39b>
c01043f4:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
c01043f7:	db 45 d4             	fildl  -0x2c(%ebp)
c01043fa:	d8 c9                	fmul   %st(1),%st
c01043fc:	d8 05 1c 89 10 c0    	fadds  0xc010891c
c0104402:	dd 5d c0             	fstpl  -0x40(%ebp)
c0104405:	81 6d c4 00 00 40 03 	subl   $0x3400000,-0x3c(%ebp)
c010440c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0104410:	d8 25 20 89 10 c0    	fsubs  0xc0108920
c0104416:	dd 45 c0             	fldl   -0x40(%ebp)
c0104419:	d9 c9                	fxch   %st(1)
c010441b:	db e9                	fucomi %st(1),%st
c010441d:	0f 87 0d 02 00 00    	ja     c0104630 <_dtoa_r+0xba0>
c0104423:	d9 c9                	fxch   %st(1)
c0104425:	d9 e0                	fchs   
c0104427:	df e9                	fucomip %st(1),%st
c0104429:	dd d8                	fstp   %st(0)
c010442b:	0f 86 a7 01 00 00    	jbe    c01045d8 <_dtoa_r+0xb48>
c0104431:	dd d8                	fstp   %st(0)
c0104433:	eb 02                	jmp    c0104437 <_dtoa_r+0x9a7>
c0104435:	dd d8                	fstp   %st(0)
c0104437:	c7 45 b0 00 00 00 00 	movl   $0x0,-0x50(%ebp)
c010443e:	c7 45 b4 00 00 00 00 	movl   $0x0,-0x4c(%ebp)
c0104445:	8b 45 18             	mov    0x18(%ebp),%eax
c0104448:	89 fb                	mov    %edi,%ebx
c010444a:	c7 45 c0 00 00 00 00 	movl   $0x0,-0x40(%ebp)
c0104451:	f7 d0                	not    %eax
c0104453:	89 45 b8             	mov    %eax,-0x48(%ebp)
c0104456:	e9 57 fe ff ff       	jmp    c01042b2 <_dtoa_r+0x822>
c010445b:	90                   	nop
c010445c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0104460:	8b 45 98             	mov    -0x68(%ebp),%eax
c0104463:	85 c0                	test   %eax,%eax
c0104465:	0f 85 c5 03 00 00    	jne    c0104830 <_dtoa_r+0xda0>
c010446b:	89 75 08             	mov    %esi,0x8(%ebp)
c010446e:	bb 01 00 00 00       	mov    $0x1,%ebx
c0104473:	8b 75 a4             	mov    -0x5c(%ebp),%esi
c0104476:	eb 24                	jmp    c010449c <_dtoa_r+0xa0c>
c0104478:	8b 45 08             	mov    0x8(%ebp),%eax
c010447b:	83 c3 01             	add    $0x1,%ebx
c010447e:	89 74 24 04          	mov    %esi,0x4(%esp)
c0104482:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c0104489:	00 
c010448a:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c0104491:	00 
c0104492:	89 04 24             	mov    %eax,(%esp)
c0104495:	e8 e6 11 00 00       	call   c0105680 <__multadd>
c010449a:	89 c6                	mov    %eax,%esi
c010449c:	8b 55 b0             	mov    -0x50(%ebp),%edx
c010449f:	89 f0                	mov    %esi,%eax
c01044a1:	e8 1a f4 ff ff       	call   c01038c0 <quorem>
c01044a6:	83 c0 30             	add    $0x30,%eax
c01044a9:	3b 5d a8             	cmp    -0x58(%ebp),%ebx
c01044ac:	88 44 1f ff          	mov    %al,-0x1(%edi,%ebx,1)
c01044b0:	7c c6                	jl     c0104478 <_dtoa_r+0x9e8>
c01044b2:	89 45 a0             	mov    %eax,-0x60(%ebp)
c01044b5:	8b 45 a8             	mov    -0x58(%ebp),%eax
c01044b8:	ba 01 00 00 00       	mov    $0x1,%edx
c01044bd:	89 75 a4             	mov    %esi,-0x5c(%ebp)
c01044c0:	8b 75 08             	mov    0x8(%ebp),%esi
c01044c3:	c7 45 c0 00 00 00 00 	movl   $0x0,-0x40(%ebp)
c01044ca:	85 c0                	test   %eax,%eax
c01044cc:	0f 4f d0             	cmovg  %eax,%edx
c01044cf:	01 fa                	add    %edi,%edx
c01044d1:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c01044d4:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
c01044db:	00 
c01044dc:	89 34 24             	mov    %esi,(%esp)
c01044df:	89 55 ac             	mov    %edx,-0x54(%ebp)
c01044e2:	89 44 24 04          	mov    %eax,0x4(%esp)
c01044e6:	e8 75 17 00 00       	call   c0105c60 <__lshift>
c01044eb:	8b 5d b0             	mov    -0x50(%ebp),%ebx
c01044ee:	89 5c 24 04          	mov    %ebx,0x4(%esp)
c01044f2:	89 04 24             	mov    %eax,(%esp)
c01044f5:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c01044f8:	e8 83 18 00 00       	call   c0105d80 <__mcmp>
c01044fd:	8b 55 ac             	mov    -0x54(%ebp),%edx
c0104500:	83 f8 00             	cmp    $0x0,%eax
c0104503:	0f 8e 41 06 00 00    	jle    c0104b4a <_dtoa_r+0x10ba>
c0104509:	0f b6 4a ff          	movzbl -0x1(%edx),%ecx
c010450d:	eb 0f                	jmp    c010451e <_dtoa_r+0xa8e>
c010450f:	90                   	nop
c0104510:	39 c7                	cmp    %eax,%edi
c0104512:	0f 84 70 05 00 00    	je     c0104a88 <_dtoa_r+0xff8>
c0104518:	0f b6 48 ff          	movzbl -0x1(%eax),%ecx
c010451c:	89 c2                	mov    %eax,%edx
c010451e:	80 f9 39             	cmp    $0x39,%cl
c0104521:	8d 42 ff             	lea    -0x1(%edx),%eax
c0104524:	74 ea                	je     c0104510 <_dtoa_r+0xa80>
c0104526:	83 c1 01             	add    $0x1,%ecx
c0104529:	89 fb                	mov    %edi,%ebx
c010452b:	88 08                	mov    %cl,(%eax)
c010452d:	89 d7                	mov    %edx,%edi
c010452f:	e9 7e fd ff ff       	jmp    c01042b2 <_dtoa_r+0x822>
c0104534:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0104538:	b8 1c 00 00 00       	mov    $0x1c,%eax
c010453d:	01 45 a0             	add    %eax,-0x60(%ebp)
c0104540:	01 c3                	add    %eax,%ebx
c0104542:	01 45 ac             	add    %eax,-0x54(%ebp)
c0104545:	e9 b6 fc ff ff       	jmp    c0104200 <_dtoa_r+0x770>
c010454a:	ba 01 00 00 00       	mov    $0x1,%edx
c010454f:	c7 45 90 01 00 00 00 	movl   $0x1,-0x70(%ebp)
c0104556:	c7 45 a8 01 00 00 00 	movl   $0x1,-0x58(%ebp)
c010455d:	c7 45 18 01 00 00 00 	movl   $0x1,0x18(%ebp)
c0104564:	21 c2                	and    %eax,%edx
c0104566:	88 55 b4             	mov    %dl,-0x4c(%ebp)
c0104569:	31 d2                	xor    %edx,%edx
c010456b:	c7 46 44 00 00 00 00 	movl   $0x0,0x44(%esi)
c0104572:	e9 62 f8 ff ff       	jmp    c0103dd9 <_dtoa_r+0x349>
c0104577:	90                   	nop
c0104578:	8b 55 c0             	mov    -0x40(%ebp),%edx
c010457b:	85 d2                	test   %edx,%edx
c010457d:	0f 84 4e fd ff ff    	je     c01042d1 <_dtoa_r+0x841>
c0104583:	8b 45 c0             	mov    -0x40(%ebp),%eax
c0104586:	89 34 24             	mov    %esi,(%esp)
c0104589:	89 44 24 04          	mov    %eax,0x4(%esp)
c010458d:	e8 ce 10 00 00       	call   c0105660 <_Bfree>
c0104592:	e9 3a fd ff ff       	jmp    c01042d1 <_dtoa_r+0x841>
c0104597:	90                   	nop
c0104598:	89 d8                	mov    %ebx,%eax
c010459a:	e9 89 f5 ff ff       	jmp    c0103b28 <_dtoa_r+0x98>
c010459f:	8b 45 b0             	mov    -0x50(%ebp),%eax
c01045a2:	89 44 24 08          	mov    %eax,0x8(%esp)
c01045a6:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c01045a9:	89 34 24             	mov    %esi,(%esp)
c01045ac:	89 44 24 04          	mov    %eax,0x4(%esp)
c01045b0:	e8 8b 15 00 00       	call   c0105b40 <__pow5mult>
c01045b5:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c01045b8:	e9 c6 fb ff ff       	jmp    c0104183 <_dtoa_r+0x6f3>
c01045bd:	dd d8                	fstp   %st(0)
c01045bf:	dd d8                	fstp   %st(0)
c01045c1:	eb 15                	jmp    c01045d8 <_dtoa_r+0xb48>
c01045c3:	90                   	nop
c01045c4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c01045c8:	dd d8                	fstp   %st(0)
c01045ca:	dd d8                	fstp   %st(0)
c01045cc:	dd d8                	fstp   %st(0)
c01045ce:	eb 08                	jmp    c01045d8 <_dtoa_r+0xb48>
c01045d0:	dd d8                	fstp   %st(0)
c01045d2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c01045d8:	dd 5d c0             	fstpl  -0x40(%ebp)
c01045db:	e9 cf f9 ff ff       	jmp    c0103faf <_dtoa_r+0x51f>
c01045e0:	8b 45 b8             	mov    -0x48(%ebp),%eax
c01045e3:	f7 d8                	neg    %eax
c01045e5:	0f 84 6a 04 00 00    	je     c0104a55 <_dtoa_r+0xfc5>
c01045eb:	89 c2                	mov    %eax,%edx
c01045ed:	b9 02 00 00 00       	mov    $0x2,%ecx
c01045f2:	83 e2 0f             	and    $0xf,%edx
c01045f5:	c1 f8 04             	sar    $0x4,%eax
c01045f8:	dd 04 d5 00 8a 10 c0 	fldl   -0x3fef7600(,%edx,8)
c01045ff:	85 c0                	test   %eax,%eax
c0104601:	d8 c9                	fmul   %st(1),%st
c0104603:	0f 84 4a f8 ff ff    	je     c0103e53 <_dtoa_r+0x3c3>
c0104609:	31 d2                	xor    %edx,%edx
c010460b:	90                   	nop
c010460c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0104610:	a8 01                	test   $0x1,%al
c0104612:	74 0a                	je     c010461e <_dtoa_r+0xb8e>
c0104614:	dc 0c d5 c0 89 10 c0 	fmull  -0x3fef7640(,%edx,8)
c010461b:	83 c1 01             	add    $0x1,%ecx
c010461e:	83 c2 01             	add    $0x1,%edx
c0104621:	d1 f8                	sar    %eax
c0104623:	75 eb                	jne    c0104610 <_dtoa_r+0xb80>
c0104625:	e9 29 f8 ff ff       	jmp    c0103e53 <_dtoa_r+0x3c3>
c010462a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0104630:	dd d8                	fstp   %st(0)
c0104632:	dd d8                	fstp   %st(0)
c0104634:	dd d8                	fstp   %st(0)
c0104636:	c7 45 b0 00 00 00 00 	movl   $0x0,-0x50(%ebp)
c010463d:	c7 45 b4 00 00 00 00 	movl   $0x0,-0x4c(%ebp)
c0104644:	e9 55 fc ff ff       	jmp    c010429e <_dtoa_r+0x80e>
c0104649:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0104650:	d9 7d d2             	fnstcw -0x2e(%ebp)
c0104653:	8d 41 ff             	lea    -0x1(%ecx),%eax
c0104656:	dd 45 c0             	fldl   -0x40(%ebp)
c0104659:	dc 0c c5 00 8a 10 c0 	fmull  -0x3fef7600(,%eax,8)
c0104660:	d9 c9                	fxch   %st(1)
c0104662:	89 45 88             	mov    %eax,-0x78(%ebp)
c0104665:	0f b7 45 d2          	movzwl -0x2e(%ebp),%eax
c0104669:	8d 57 01             	lea    0x1(%edi),%edx
c010466c:	8d 1c 0f             	lea    (%edi,%ecx,1),%ebx
c010466f:	b4 0c                	mov    $0xc,%ah
c0104671:	66 89 45 d0          	mov    %ax,-0x30(%ebp)
c0104675:	d9 6d d0             	fldcw  -0x30(%ebp)
c0104678:	db 55 d4             	fistl  -0x2c(%ebp)
c010467b:	d9 6d d2             	fldcw  -0x2e(%ebp)
c010467e:	8b 45 d4             	mov    -0x2c(%ebp),%eax
c0104681:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c0104684:	83 c0 30             	add    $0x30,%eax
c0104687:	83 f9 01             	cmp    $0x1,%ecx
c010468a:	db 45 d4             	fildl  -0x2c(%ebp)
c010468d:	de e9                	fsubrp %st,%st(1)
c010468f:	88 07                	mov    %al,(%edi)
c0104691:	89 d0                	mov    %edx,%eax
c0104693:	74 37                	je     c01046cc <_dtoa_r+0xc3c>
c0104695:	d9 05 18 89 10 c0    	flds   0xc0108918
c010469b:	eb 05                	jmp    c01046a2 <_dtoa_r+0xc12>
c010469d:	8d 76 00             	lea    0x0(%esi),%esi
c01046a0:	d9 c9                	fxch   %st(1)
c01046a2:	dc c9                	fmul   %st,%st(1)
c01046a4:	d9 c9                	fxch   %st(1)
c01046a6:	83 c0 01             	add    $0x1,%eax
c01046a9:	d9 6d d0             	fldcw  -0x30(%ebp)
c01046ac:	db 55 d4             	fistl  -0x2c(%ebp)
c01046af:	d9 6d d2             	fldcw  -0x2e(%ebp)
c01046b2:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
c01046b5:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
c01046b8:	83 c1 30             	add    $0x30,%ecx
c01046bb:	39 d8                	cmp    %ebx,%eax
c01046bd:	db 45 d4             	fildl  -0x2c(%ebp)
c01046c0:	de e9                	fsubrp %st,%st(1)
c01046c2:	88 48 ff             	mov    %cl,-0x1(%eax)
c01046c5:	75 d9                	jne    c01046a0 <_dtoa_r+0xc10>
c01046c7:	dd d9                	fstp   %st(1)
c01046c9:	03 55 88             	add    -0x78(%ebp),%edx
c01046cc:	d9 05 24 89 10 c0    	flds   0xc0108924
c01046d2:	d9 c2                	fld    %st(2)
c01046d4:	d8 c1                	fadd   %st(1),%st
c01046d6:	d9 ca                	fxch   %st(2)
c01046d8:	db ea                	fucomi %st(2),%st
c01046da:	dd da                	fstp   %st(2)
c01046dc:	0f 86 7f 03 00 00    	jbe    c0104a61 <_dtoa_r+0xfd1>
c01046e2:	dd d8                	fstp   %st(0)
c01046e4:	dd d8                	fstp   %st(0)
c01046e6:	dd d8                	fstp   %st(0)
c01046e8:	dd d8                	fstp   %st(0)
c01046ea:	89 fb                	mov    %edi,%ebx
c01046ec:	0f b6 42 ff          	movzbl -0x1(%edx),%eax
c01046f0:	89 d7                	mov    %edx,%edi
c01046f2:	e9 d7 f9 ff ff       	jmp    c01040ce <_dtoa_r+0x63e>
c01046f7:	90                   	nop
c01046f8:	8b 4d b0             	mov    -0x50(%ebp),%ecx
c01046fb:	8b 41 10             	mov    0x10(%ecx),%eax
c01046fe:	8b 44 81 10          	mov    0x10(%ecx,%eax,4),%eax
c0104702:	89 04 24             	mov    %eax,(%esp)
c0104705:	e8 56 11 00 00       	call   c0105860 <__hi0bits>
c010470a:	ba 20 00 00 00       	mov    $0x20,%edx
c010470f:	29 c2                	sub    %eax,%edx
c0104711:	e9 bb fa ff ff       	jmp    c01041d1 <_dtoa_r+0x741>
c0104716:	66 90                	xchg   %ax,%ax
c0104718:	8b 45 b0             	mov    -0x50(%ebp),%eax
c010471b:	89 44 24 04          	mov    %eax,0x4(%esp)
c010471f:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c0104722:	89 04 24             	mov    %eax,(%esp)
c0104725:	e8 56 16 00 00       	call   c0105d80 <__mcmp>
c010472a:	85 c0                	test   %eax,%eax
c010472c:	0f 89 13 fb ff ff    	jns    c0104245 <_dtoa_r+0x7b5>
c0104732:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c0104735:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c010473c:	00 
c010473d:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c0104744:	00 
c0104745:	89 34 24             	mov    %esi,(%esp)
c0104748:	89 44 24 04          	mov    %eax,0x4(%esp)
c010474c:	83 6d b8 01          	subl   $0x1,-0x48(%ebp)
c0104750:	e8 2b 0f 00 00       	call   c0105680 <__multadd>
c0104755:	8b 4d 98             	mov    -0x68(%ebp),%ecx
c0104758:	85 c9                	test   %ecx,%ecx
c010475a:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c010475d:	0f 85 8d 00 00 00    	jne    c01047f0 <_dtoa_r+0xd60>
c0104763:	83 7d 90 00          	cmpl   $0x0,-0x70(%ebp)
c0104767:	8b 45 90             	mov    -0x70(%ebp),%eax
c010476a:	7f 0a                	jg     c0104776 <_dtoa_r+0xce6>
c010476c:	83 7d 14 02          	cmpl   $0x2,0x14(%ebp)
c0104770:	0f 8f ff 04 00 00    	jg     c0104c75 <_dtoa_r+0x11e5>
c0104776:	89 45 a8             	mov    %eax,-0x58(%ebp)
c0104779:	e9 ed fc ff ff       	jmp    c010446b <_dtoa_r+0x9db>
c010477e:	66 90                	xchg   %ax,%ax
c0104780:	8b 5d a8             	mov    -0x58(%ebp),%ebx
c0104783:	85 db                	test   %ebx,%ebx
c0104785:	0f 85 aa fc ff ff    	jne    c0104435 <_dtoa_r+0x9a5>
c010478b:	d8 0d 20 89 10 c0    	fmuls  0xc0108920
c0104791:	c7 45 b0 00 00 00 00 	movl   $0x0,-0x50(%ebp)
c0104798:	c7 45 b4 00 00 00 00 	movl   $0x0,-0x4c(%ebp)
c010479f:	dd 45 c0             	fldl   -0x40(%ebp)
c01047a2:	d9 c9                	fxch   %st(1)
c01047a4:	df e9                	fucomip %st(1),%st
c01047a6:	dd d8                	fstp   %st(0)
c01047a8:	0f 83 97 fc ff ff    	jae    c0104445 <_dtoa_r+0x9b5>
c01047ae:	e9 eb fa ff ff       	jmp    c010429e <_dtoa_r+0x80e>
c01047b3:	90                   	nop
c01047b4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c01047b8:	8b 45 c0             	mov    -0x40(%ebp),%eax
c01047bb:	85 c0                	test   %eax,%eax
c01047bd:	0f 85 fe f9 ff ff    	jne    c01041c1 <_dtoa_r+0x731>
c01047c3:	8b 45 c4             	mov    -0x3c(%ebp),%eax
c01047c6:	a9 ff ff 0f 00       	test   $0xfffff,%eax
c01047cb:	0f 85 f0 f9 ff ff    	jne    c01041c1 <_dtoa_r+0x731>
c01047d1:	a9 00 00 f0 7f       	test   $0x7ff00000,%eax
c01047d6:	0f 84 e5 f9 ff ff    	je     c01041c1 <_dtoa_r+0x731>
c01047dc:	83 45 a0 01          	addl   $0x1,-0x60(%ebp)
c01047e0:	83 45 ac 01          	addl   $0x1,-0x54(%ebp)
c01047e4:	c7 45 8c 01 00 00 00 	movl   $0x1,-0x74(%ebp)
c01047eb:	e9 d1 f9 ff ff       	jmp    c01041c1 <_dtoa_r+0x731>
c01047f0:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c01047f3:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c01047fa:	00 
c01047fb:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c0104802:	00 
c0104803:	89 34 24             	mov    %esi,(%esp)
c0104806:	89 44 24 04          	mov    %eax,0x4(%esp)
c010480a:	e8 71 0e 00 00       	call   c0105680 <__multadd>
c010480f:	8b 55 90             	mov    -0x70(%ebp),%edx
c0104812:	85 d2                	test   %edx,%edx
c0104814:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c0104817:	8b 45 90             	mov    -0x70(%ebp),%eax
c010481a:	7f 0a                	jg     c0104826 <_dtoa_r+0xd96>
c010481c:	83 7d 14 02          	cmpl   $0x2,0x14(%ebp)
c0104820:	0f 8f 4f 04 00 00    	jg     c0104c75 <_dtoa_r+0x11e5>
c0104826:	89 45 a8             	mov    %eax,-0x58(%ebp)
c0104829:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0104830:	85 db                	test   %ebx,%ebx
c0104832:	7e 16                	jle    c010484a <_dtoa_r+0xdba>
c0104834:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0104837:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c010483b:	89 34 24             	mov    %esi,(%esp)
c010483e:	89 44 24 04          	mov    %eax,0x4(%esp)
c0104842:	e8 19 14 00 00       	call   c0105c60 <__lshift>
c0104847:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c010484a:	8b 5d 8c             	mov    -0x74(%ebp),%ebx
c010484d:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0104850:	85 db                	test   %ebx,%ebx
c0104852:	89 45 ac             	mov    %eax,-0x54(%ebp)
c0104855:	0f 85 11 03 00 00    	jne    c0104b6c <_dtoa_r+0x10dc>
c010485b:	8b 45 a8             	mov    -0x58(%ebp),%eax
c010485e:	8d 5f 01             	lea    0x1(%edi),%ebx
c0104861:	89 7d 8c             	mov    %edi,-0x74(%ebp)
c0104864:	01 f8                	add    %edi,%eax
c0104866:	8b 7d a4             	mov    -0x5c(%ebp),%edi
c0104869:	89 45 90             	mov    %eax,-0x70(%ebp)
c010486c:	8b 45 c0             	mov    -0x40(%ebp),%eax
c010486f:	83 e0 01             	and    $0x1,%eax
c0104872:	89 45 9c             	mov    %eax,-0x64(%ebp)
c0104875:	eb 2e                	jmp    c01048a5 <_dtoa_r+0xe15>
c0104877:	90                   	nop
c0104878:	e8 03 0e 00 00       	call   c0105680 <__multadd>
c010487d:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c0104884:	00 
c0104885:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c010488c:	00 
c010488d:	89 34 24             	mov    %esi,(%esp)
c0104890:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c0104893:	8b 45 ac             	mov    -0x54(%ebp),%eax
c0104896:	89 44 24 04          	mov    %eax,0x4(%esp)
c010489a:	e8 e1 0d 00 00       	call   c0105680 <__multadd>
c010489f:	89 45 ac             	mov    %eax,-0x54(%ebp)
c01048a2:	83 c3 01             	add    $0x1,%ebx
c01048a5:	8b 55 b0             	mov    -0x50(%ebp),%edx
c01048a8:	8d 43 ff             	lea    -0x1(%ebx),%eax
c01048ab:	89 45 98             	mov    %eax,-0x68(%ebp)
c01048ae:	89 f8                	mov    %edi,%eax
c01048b0:	e8 0b f0 ff ff       	call   c01038c0 <quorem>
c01048b5:	89 3c 24             	mov    %edi,(%esp)
c01048b8:	8d 48 30             	lea    0x30(%eax),%ecx
c01048bb:	89 4d a0             	mov    %ecx,-0x60(%ebp)
c01048be:	8b 4d b4             	mov    -0x4c(%ebp),%ecx
c01048c1:	89 45 94             	mov    %eax,-0x6c(%ebp)
c01048c4:	89 4c 24 04          	mov    %ecx,0x4(%esp)
c01048c8:	e8 b3 14 00 00       	call   c0105d80 <__mcmp>
c01048cd:	8b 4d ac             	mov    -0x54(%ebp),%ecx
c01048d0:	89 34 24             	mov    %esi,(%esp)
c01048d3:	89 4c 24 08          	mov    %ecx,0x8(%esp)
c01048d7:	89 45 c0             	mov    %eax,-0x40(%ebp)
c01048da:	8b 45 b0             	mov    -0x50(%ebp),%eax
c01048dd:	89 44 24 04          	mov    %eax,0x4(%esp)
c01048e1:	e8 ea 14 00 00       	call   c0105dd0 <__mdiff>
c01048e6:	8b 48 0c             	mov    0xc(%eax),%ecx
c01048e9:	89 c2                	mov    %eax,%edx
c01048eb:	85 c9                	test   %ecx,%ecx
c01048ed:	0f 85 c5 00 00 00    	jne    c01049b8 <_dtoa_r+0xf28>
c01048f3:	89 44 24 04          	mov    %eax,0x4(%esp)
c01048f7:	89 3c 24             	mov    %edi,(%esp)
c01048fa:	89 45 a8             	mov    %eax,-0x58(%ebp)
c01048fd:	e8 7e 14 00 00       	call   c0105d80 <__mcmp>
c0104902:	8b 55 a8             	mov    -0x58(%ebp),%edx
c0104905:	89 54 24 04          	mov    %edx,0x4(%esp)
c0104909:	89 34 24             	mov    %esi,(%esp)
c010490c:	89 45 a8             	mov    %eax,-0x58(%ebp)
c010490f:	e8 4c 0d 00 00       	call   c0105660 <_Bfree>
c0104914:	8b 45 a8             	mov    -0x58(%ebp),%eax
c0104917:	89 c1                	mov    %eax,%ecx
c0104919:	0b 4d 14             	or     0x14(%ebp),%ecx
c010491c:	75 0b                	jne    c0104929 <_dtoa_r+0xe99>
c010491e:	8b 55 9c             	mov    -0x64(%ebp),%edx
c0104921:	85 d2                	test   %edx,%edx
c0104923:	0f 84 fb 02 00 00    	je     c0104c24 <_dtoa_r+0x1194>
c0104929:	8b 55 c0             	mov    -0x40(%ebp),%edx
c010492c:	85 d2                	test   %edx,%edx
c010492e:	0f 88 7f 01 00 00    	js     c0104ab3 <_dtoa_r+0x1023>
c0104934:	8b 4d c0             	mov    -0x40(%ebp),%ecx
c0104937:	0b 4d 14             	or     0x14(%ebp),%ecx
c010493a:	75 0b                	jne    c0104947 <_dtoa_r+0xeb7>
c010493c:	8b 4d 9c             	mov    -0x64(%ebp),%ecx
c010493f:	85 c9                	test   %ecx,%ecx
c0104941:	0f 84 6c 01 00 00    	je     c0104ab3 <_dtoa_r+0x1023>
c0104947:	85 c0                	test   %eax,%eax
c0104949:	0f 8f 82 02 00 00    	jg     c0104bd1 <_dtoa_r+0x1141>
c010494f:	0f b6 45 a0          	movzbl -0x60(%ebp),%eax
c0104953:	89 da                	mov    %ebx,%edx
c0104955:	3b 5d 90             	cmp    -0x70(%ebp),%ebx
c0104958:	88 43 ff             	mov    %al,-0x1(%ebx)
c010495b:	0f 84 8d 02 00 00    	je     c0104bee <_dtoa_r+0x115e>
c0104961:	89 7c 24 04          	mov    %edi,0x4(%esp)
c0104965:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c010496c:	00 
c010496d:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c0104974:	00 
c0104975:	89 34 24             	mov    %esi,(%esp)
c0104978:	e8 03 0d 00 00       	call   c0105680 <__multadd>
c010497d:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c0104984:	00 
c0104985:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c010498c:	00 
c010498d:	89 34 24             	mov    %esi,(%esp)
c0104990:	89 c7                	mov    %eax,%edi
c0104992:	8b 45 ac             	mov    -0x54(%ebp),%eax
c0104995:	39 45 b4             	cmp    %eax,-0x4c(%ebp)
c0104998:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c010499b:	89 44 24 04          	mov    %eax,0x4(%esp)
c010499f:	0f 85 d3 fe ff ff    	jne    c0104878 <_dtoa_r+0xde8>
c01049a5:	e8 d6 0c 00 00       	call   c0105680 <__multadd>
c01049aa:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c01049ad:	89 45 ac             	mov    %eax,-0x54(%ebp)
c01049b0:	e9 ed fe ff ff       	jmp    c01048a2 <_dtoa_r+0xe12>
c01049b5:	8d 76 00             	lea    0x0(%esi),%esi
c01049b8:	b8 01 00 00 00       	mov    $0x1,%eax
c01049bd:	e9 43 ff ff ff       	jmp    c0104905 <_dtoa_r+0xe75>
c01049c2:	c7 45 98 00 00 00 00 	movl   $0x0,-0x68(%ebp)
c01049c9:	e9 d2 f2 ff ff       	jmp    c0103ca0 <_dtoa_r+0x210>
c01049ce:	0f 85 87 f6 ff ff    	jne    c010405b <_dtoa_r+0x5cb>
c01049d4:	dd d8                	fstp   %st(0)
c01049d6:	dd d8                	fstp   %st(0)
c01049d8:	dd d8                	fstp   %st(0)
c01049da:	89 fb                	mov    %edi,%ebx
c01049dc:	8b 7d c0             	mov    -0x40(%ebp),%edi
c01049df:	e9 fc f8 ff ff       	jmp    c01042e0 <_dtoa_r+0x850>
c01049e4:	89 c2                	mov    %eax,%edx
c01049e6:	2b 55 b0             	sub    -0x50(%ebp),%edx
c01049e9:	89 45 b0             	mov    %eax,-0x50(%ebp)
c01049ec:	01 55 94             	add    %edx,-0x6c(%ebp)
c01049ef:	31 d2                	xor    %edx,%edx
c01049f1:	e9 b8 f9 ff ff       	jmp    c01043ae <_dtoa_r+0x91e>
c01049f6:	8b 45 a8             	mov    -0x58(%ebp),%eax
c01049f9:	85 c0                	test   %eax,%eax
c01049fb:	0f 84 f3 f9 ff ff    	je     c01043f4 <_dtoa_r+0x964>
c0104a01:	8b 45 90             	mov    -0x70(%ebp),%eax
c0104a04:	85 c0                	test   %eax,%eax
c0104a06:	0f 8e c4 fb ff ff    	jle    c01045d0 <_dtoa_r+0xb40>
c0104a0c:	d8 0d 18 89 10 c0    	fmuls  0xc0108918
c0104a12:	83 c1 01             	add    $0x1,%ecx
c0104a15:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
c0104a18:	8b 5d b8             	mov    -0x48(%ebp),%ebx
c0104a1b:	89 c1                	mov    %eax,%ecx
c0104a1d:	83 eb 01             	sub    $0x1,%ebx
c0104a20:	db 45 d4             	fildl  -0x2c(%ebp)
c0104a23:	d8 c9                	fmul   %st(1),%st
c0104a25:	89 5d b4             	mov    %ebx,-0x4c(%ebp)
c0104a28:	d8 05 1c 89 10 c0    	fadds  0xc010891c
c0104a2e:	dd 5d c0             	fstpl  -0x40(%ebp)
c0104a31:	81 6d c4 00 00 40 03 	subl   $0x3400000,-0x3c(%ebp)
c0104a38:	e9 53 f4 ff ff       	jmp    c0103e90 <_dtoa_r+0x400>
c0104a3d:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0104a40:	c6 03 30             	movb   $0x30,(%ebx)
c0104a43:	83 c0 01             	add    $0x1,%eax
c0104a46:	89 45 b8             	mov    %eax,-0x48(%ebp)
c0104a49:	b8 31 00 00 00       	mov    $0x31,%eax
c0104a4e:	88 02                	mov    %al,(%edx)
c0104a50:	e9 8b f8 ff ff       	jmp    c01042e0 <_dtoa_r+0x850>
c0104a55:	d9 c0                	fld    %st(0)
c0104a57:	b9 02 00 00 00       	mov    $0x2,%ecx
c0104a5c:	e9 f2 f3 ff ff       	jmp    c0103e53 <_dtoa_r+0x3c3>
c0104a61:	de e2                	fsubp  %st,%st(2)
c0104a63:	d9 c9                	fxch   %st(1)
c0104a65:	df e9                	fucomip %st(1),%st
c0104a67:	dd d8                	fstp   %st(0)
c0104a69:	0f 86 69 fb ff ff    	jbe    c01045d8 <_dtoa_r+0xb48>
c0104a6f:	dd d8                	fstp   %st(0)
c0104a71:	eb 07                	jmp    c0104a7a <_dtoa_r+0xfea>
c0104a73:	90                   	nop
c0104a74:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0104a78:	89 c2                	mov    %eax,%edx
c0104a7a:	80 7a ff 30          	cmpb   $0x30,-0x1(%edx)
c0104a7e:	8d 42 ff             	lea    -0x1(%edx),%eax
c0104a81:	74 f5                	je     c0104a78 <_dtoa_r+0xfe8>
c0104a83:	e9 d9 f4 ff ff       	jmp    c0103f61 <_dtoa_r+0x4d1>
c0104a88:	c6 07 31             	movb   $0x31,(%edi)
c0104a8b:	89 fb                	mov    %edi,%ebx
c0104a8d:	89 d7                	mov    %edx,%edi
c0104a8f:	83 45 b8 01          	addl   $0x1,-0x48(%ebp)
c0104a93:	e9 1a f8 ff ff       	jmp    c01042b2 <_dtoa_r+0x822>
c0104a98:	8b 55 8c             	mov    -0x74(%ebp),%edx
c0104a9b:	85 d2                	test   %edx,%edx
c0104a9d:	0f 84 1b 01 00 00    	je     c0104bbe <_dtoa_r+0x112e>
c0104aa3:	05 33 04 00 00       	add    $0x433,%eax
c0104aa8:	8b 55 b0             	mov    -0x50(%ebp),%edx
c0104aab:	8b 5d a0             	mov    -0x60(%ebp),%ebx
c0104aae:	e9 0b f9 ff ff       	jmp    c01043be <_dtoa_r+0x92e>
c0104ab3:	85 c0                	test   %eax,%eax
c0104ab5:	89 7d a4             	mov    %edi,-0x5c(%ebp)
c0104ab8:	8b 7d 8c             	mov    -0x74(%ebp),%edi
c0104abb:	7e 45                	jle    c0104b02 <_dtoa_r+0x1072>
c0104abd:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c0104ac0:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
c0104ac7:	00 
c0104ac8:	89 34 24             	mov    %esi,(%esp)
c0104acb:	89 44 24 04          	mov    %eax,0x4(%esp)
c0104acf:	e8 8c 11 00 00       	call   c0105c60 <__lshift>
c0104ad4:	8b 5d b0             	mov    -0x50(%ebp),%ebx
c0104ad7:	89 5c 24 04          	mov    %ebx,0x4(%esp)
c0104adb:	89 04 24             	mov    %eax,(%esp)
c0104ade:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c0104ae1:	e8 9a 12 00 00       	call   c0105d80 <__mcmp>
c0104ae6:	83 f8 00             	cmp    $0x0,%eax
c0104ae9:	0f 8e 5b 01 00 00    	jle    c0104c4a <_dtoa_r+0x11ba>
c0104aef:	83 7d a0 39          	cmpl   $0x39,-0x60(%ebp)
c0104af3:	0f 84 0c 01 00 00    	je     c0104c05 <_dtoa_r+0x1175>
c0104af9:	8b 45 94             	mov    -0x6c(%ebp),%eax
c0104afc:	83 c0 31             	add    $0x31,%eax
c0104aff:	89 45 a0             	mov    %eax,-0x60(%ebp)
c0104b02:	8b 4d 98             	mov    -0x68(%ebp),%ecx
c0104b05:	0f b6 45 a0          	movzbl -0x60(%ebp),%eax
c0104b09:	89 cb                	mov    %ecx,%ebx
c0104b0b:	88 03                	mov    %al,(%ebx)
c0104b0d:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0104b10:	89 fb                	mov    %edi,%ebx
c0104b12:	8d 79 01             	lea    0x1(%ecx),%edi
c0104b15:	89 45 c0             	mov    %eax,-0x40(%ebp)
c0104b18:	8b 45 ac             	mov    -0x54(%ebp),%eax
c0104b1b:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c0104b1e:	e9 8f f7 ff ff       	jmp    c01042b2 <_dtoa_r+0x822>
c0104b23:	dd d8                	fstp   %st(0)
c0104b25:	dd d8                	fstp   %st(0)
c0104b27:	dd d8                	fstp   %st(0)
c0104b29:	eb 0d                	jmp    c0104b38 <_dtoa_r+0x10a8>
c0104b2b:	90                   	nop
c0104b2c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0104b30:	dd d8                	fstp   %st(0)
c0104b32:	dd d8                	fstp   %st(0)
c0104b34:	dd d8                	fstp   %st(0)
c0104b36:	dd d8                	fstp   %st(0)
c0104b38:	89 fb                	mov    %edi,%ebx
c0104b3a:	89 d7                	mov    %edx,%edi
c0104b3c:	e9 8d f5 ff ff       	jmp    c01040ce <_dtoa_r+0x63e>
c0104b41:	29 cb                	sub    %ecx,%ebx
c0104b43:	31 c0                	xor    %eax,%eax
c0104b45:	e9 74 f8 ff ff       	jmp    c01043be <_dtoa_r+0x92e>
c0104b4a:	75 0e                	jne    c0104b5a <_dtoa_r+0x10ca>
c0104b4c:	f6 45 a0 01          	testb  $0x1,-0x60(%ebp)
c0104b50:	74 08                	je     c0104b5a <_dtoa_r+0x10ca>
c0104b52:	e9 b2 f9 ff ff       	jmp    c0104509 <_dtoa_r+0xa79>
c0104b57:	90                   	nop
c0104b58:	89 c2                	mov    %eax,%edx
c0104b5a:	80 7a ff 30          	cmpb   $0x30,-0x1(%edx)
c0104b5e:	8d 42 ff             	lea    -0x1(%edx),%eax
c0104b61:	74 f5                	je     c0104b58 <_dtoa_r+0x10c8>
c0104b63:	89 fb                	mov    %edi,%ebx
c0104b65:	89 d7                	mov    %edx,%edi
c0104b67:	e9 46 f7 ff ff       	jmp    c01042b2 <_dtoa_r+0x822>
c0104b6c:	8b 40 04             	mov    0x4(%eax),%eax
c0104b6f:	89 34 24             	mov    %esi,(%esp)
c0104b72:	89 44 24 04          	mov    %eax,0x4(%esp)
c0104b76:	e8 45 0a 00 00       	call   c01055c0 <_Balloc>
c0104b7b:	8b 4d b4             	mov    -0x4c(%ebp),%ecx
c0104b7e:	89 c3                	mov    %eax,%ebx
c0104b80:	8b 41 10             	mov    0x10(%ecx),%eax
c0104b83:	8d 04 85 08 00 00 00 	lea    0x8(,%eax,4),%eax
c0104b8a:	89 44 24 08          	mov    %eax,0x8(%esp)
c0104b8e:	89 c8                	mov    %ecx,%eax
c0104b90:	83 c0 0c             	add    $0xc,%eax
c0104b93:	89 44 24 04          	mov    %eax,0x4(%esp)
c0104b97:	8d 43 0c             	lea    0xc(%ebx),%eax
c0104b9a:	89 04 24             	mov    %eax,(%esp)
c0104b9d:	e8 fe cb ff ff       	call   c01017a0 <memcpy>
c0104ba2:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
c0104ba9:	00 
c0104baa:	89 5c 24 04          	mov    %ebx,0x4(%esp)
c0104bae:	89 34 24             	mov    %esi,(%esp)
c0104bb1:	e8 aa 10 00 00       	call   c0105c60 <__lshift>
c0104bb6:	89 45 ac             	mov    %eax,-0x54(%ebp)
c0104bb9:	e9 9d fc ff ff       	jmp    c010485b <_dtoa_r+0xdcb>
c0104bbe:	b8 36 00 00 00       	mov    $0x36,%eax
c0104bc3:	8b 55 b0             	mov    -0x50(%ebp),%edx
c0104bc6:	2b 45 e0             	sub    -0x20(%ebp),%eax
c0104bc9:	8b 5d a0             	mov    -0x60(%ebp),%ebx
c0104bcc:	e9 ed f7 ff ff       	jmp    c01043be <_dtoa_r+0x92e>
c0104bd1:	83 7d a0 39          	cmpl   $0x39,-0x60(%ebp)
c0104bd5:	89 7d a4             	mov    %edi,-0x5c(%ebp)
c0104bd8:	8b 7d 8c             	mov    -0x74(%ebp),%edi
c0104bdb:	74 28                	je     c0104c05 <_dtoa_r+0x1175>
c0104bdd:	0f b6 45 a0          	movzbl -0x60(%ebp),%eax
c0104be1:	8b 4d 98             	mov    -0x68(%ebp),%ecx
c0104be4:	83 c0 01             	add    $0x1,%eax
c0104be7:	89 cb                	mov    %ecx,%ebx
c0104be9:	e9 1d ff ff ff       	jmp    c0104b0b <_dtoa_r+0x107b>
c0104bee:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0104bf1:	89 7d a4             	mov    %edi,-0x5c(%ebp)
c0104bf4:	8b 7d 8c             	mov    -0x74(%ebp),%edi
c0104bf7:	89 45 c0             	mov    %eax,-0x40(%ebp)
c0104bfa:	8b 45 ac             	mov    -0x54(%ebp),%eax
c0104bfd:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c0104c00:	e9 cc f8 ff ff       	jmp    c01044d1 <_dtoa_r+0xa41>
c0104c05:	8b 45 98             	mov    -0x68(%ebp),%eax
c0104c08:	b9 39 00 00 00       	mov    $0x39,%ecx
c0104c0d:	8d 50 01             	lea    0x1(%eax),%edx
c0104c10:	c6 00 39             	movb   $0x39,(%eax)
c0104c13:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0104c16:	89 45 c0             	mov    %eax,-0x40(%ebp)
c0104c19:	8b 45 ac             	mov    -0x54(%ebp),%eax
c0104c1c:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c0104c1f:	e9 fa f8 ff ff       	jmp    c010451e <_dtoa_r+0xa8e>
c0104c24:	8b 5d a0             	mov    -0x60(%ebp),%ebx
c0104c27:	89 7d a4             	mov    %edi,-0x5c(%ebp)
c0104c2a:	8b 7d 8c             	mov    -0x74(%ebp),%edi
c0104c2d:	83 fb 39             	cmp    $0x39,%ebx
c0104c30:	74 d3                	je     c0104c05 <_dtoa_r+0x1175>
c0104c32:	8b 4d c0             	mov    -0x40(%ebp),%ecx
c0104c35:	8b 45 94             	mov    -0x6c(%ebp),%eax
c0104c38:	83 c0 31             	add    $0x31,%eax
c0104c3b:	85 c9                	test   %ecx,%ecx
c0104c3d:	8b 4d 98             	mov    -0x68(%ebp),%ecx
c0104c40:	0f 4e c3             	cmovle %ebx,%eax
c0104c43:	89 cb                	mov    %ecx,%ebx
c0104c45:	e9 c1 fe ff ff       	jmp    c0104b0b <_dtoa_r+0x107b>
c0104c4a:	0f 85 b2 fe ff ff    	jne    c0104b02 <_dtoa_r+0x1072>
c0104c50:	f6 45 a0 01          	testb  $0x1,-0x60(%ebp)
c0104c54:	0f 84 a8 fe ff ff    	je     c0104b02 <_dtoa_r+0x1072>
c0104c5a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0104c60:	e9 8a fe ff ff       	jmp    c0104aef <_dtoa_r+0x105f>
c0104c65:	0f 85 c7 f3 ff ff    	jne    c0104032 <_dtoa_r+0x5a2>
c0104c6b:	dd d8                	fstp   %st(0)
c0104c6d:	dd d8                	fstp   %st(0)
c0104c6f:	90                   	nop
c0104c70:	e9 65 fd ff ff       	jmp    c01049da <_dtoa_r+0xf4a>
c0104c75:	89 45 a8             	mov    %eax,-0x58(%ebp)
c0104c78:	e9 dd f5 ff ff       	jmp    c010425a <_dtoa_r+0x7ca>
c0104c7d:	8d 76 00             	lea    0x0(%esi),%esi
c0104c80:	0f 84 7a f5 ff ff    	je     c0104200 <_dtoa_r+0x770>
c0104c86:	b8 3c 00 00 00       	mov    $0x3c,%eax
c0104c8b:	29 d0                	sub    %edx,%eax
c0104c8d:	e9 ab f8 ff ff       	jmp    c010453d <_dtoa_r+0xaad>
c0104c92:	b8 01 00 00 00       	mov    $0x1,%eax
c0104c97:	e9 d9 ef ff ff       	jmp    c0103c75 <_dtoa_r+0x1e5>
c0104c9c:	31 d2                	xor    %edx,%edx
c0104c9e:	e9 36 f1 ff ff       	jmp    c0103dd9 <_dtoa_r+0x349>
c0104ca3:	66 90                	xchg   %ax,%ax
c0104ca5:	66 90                	xchg   %ax,%ax
c0104ca7:	66 90                	xchg   %ax,%ax
c0104ca9:	66 90                	xchg   %ax,%ax
c0104cab:	66 90                	xchg   %ax,%ax
c0104cad:	66 90                	xchg   %ax,%ax
c0104caf:	90                   	nop

c0104cb0 <_setlocale_r>:
c0104cb0:	55                   	push   %ebp
c0104cb1:	89 e5                	mov    %esp,%ebp
c0104cb3:	53                   	push   %ebx
c0104cb4:	83 ec 14             	sub    $0x14,%esp
c0104cb7:	8b 5d 10             	mov    0x10(%ebp),%ebx
c0104cba:	85 db                	test   %ebx,%ebx
c0104cbc:	74 14                	je     c0104cd2 <_setlocale_r+0x22>
c0104cbe:	c7 44 24 04 40 89 10 	movl   $0xc0108940,0x4(%esp)
c0104cc5:	c0 
c0104cc6:	89 1c 24             	mov    %ebx,(%esp)
c0104cc9:	e8 a2 cb ff ff       	call   c0101870 <strcmp>
c0104cce:	85 c0                	test   %eax,%eax
c0104cd0:	75 0e                	jne    c0104ce0 <_setlocale_r+0x30>
c0104cd2:	83 c4 14             	add    $0x14,%esp
c0104cd5:	b8 40 87 10 c0       	mov    $0xc0108740,%eax
c0104cda:	5b                   	pop    %ebx
c0104cdb:	5d                   	pop    %ebp
c0104cdc:	c3                   	ret    
c0104cdd:	8d 76 00             	lea    0x0(%esi),%esi
c0104ce0:	c7 44 24 04 40 87 10 	movl   $0xc0108740,0x4(%esp)
c0104ce7:	c0 
c0104ce8:	89 1c 24             	mov    %ebx,(%esp)
c0104ceb:	e8 80 cb ff ff       	call   c0101870 <strcmp>
c0104cf0:	85 c0                	test   %eax,%eax
c0104cf2:	74 de                	je     c0104cd2 <_setlocale_r+0x22>
c0104cf4:	89 1c 24             	mov    %ebx,(%esp)
c0104cf7:	c7 44 24 04 7a 87 10 	movl   $0xc010877a,0x4(%esp)
c0104cfe:	c0 
c0104cff:	e8 6c cb ff ff       	call   c0101870 <strcmp>
c0104d04:	89 c2                	mov    %eax,%edx
c0104d06:	31 c0                	xor    %eax,%eax
c0104d08:	85 d2                	test   %edx,%edx
c0104d0a:	ba 40 87 10 c0       	mov    $0xc0108740,%edx
c0104d0f:	0f 44 c2             	cmove  %edx,%eax
c0104d12:	83 c4 14             	add    $0x14,%esp
c0104d15:	5b                   	pop    %ebx
c0104d16:	5d                   	pop    %ebp
c0104d17:	c3                   	ret    
c0104d18:	90                   	nop
c0104d19:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

c0104d20 <__locale_charset>:
c0104d20:	55                   	push   %ebp
c0104d21:	b8 a0 a4 10 c0       	mov    $0xc010a4a0,%eax
c0104d26:	89 e5                	mov    %esp,%ebp
c0104d28:	5d                   	pop    %ebp
c0104d29:	c3                   	ret    
c0104d2a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

c0104d30 <__locale_mb_cur_max>:
c0104d30:	55                   	push   %ebp
c0104d31:	a1 f8 a4 10 c0       	mov    0xc010a4f8,%eax
c0104d36:	89 e5                	mov    %esp,%ebp
c0104d38:	5d                   	pop    %ebp
c0104d39:	c3                   	ret    
c0104d3a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

c0104d40 <__locale_msgcharset>:
c0104d40:	55                   	push   %ebp
c0104d41:	b8 80 a4 10 c0       	mov    $0xc010a480,%eax
c0104d46:	89 e5                	mov    %esp,%ebp
c0104d48:	5d                   	pop    %ebp
c0104d49:	c3                   	ret    
c0104d4a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

c0104d50 <__locale_cjk_lang>:
c0104d50:	55                   	push   %ebp
c0104d51:	31 c0                	xor    %eax,%eax
c0104d53:	89 e5                	mov    %esp,%ebp
c0104d55:	5d                   	pop    %ebp
c0104d56:	c3                   	ret    
c0104d57:	89 f6                	mov    %esi,%esi
c0104d59:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0104d60 <_localeconv_r>:
c0104d60:	55                   	push   %ebp
c0104d61:	b8 c0 a4 10 c0       	mov    $0xc010a4c0,%eax
c0104d66:	89 e5                	mov    %esp,%ebp
c0104d68:	5d                   	pop    %ebp
c0104d69:	c3                   	ret    
c0104d6a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

c0104d70 <setlocale>:
c0104d70:	55                   	push   %ebp
c0104d71:	89 e5                	mov    %esp,%ebp
c0104d73:	83 ec 18             	sub    $0x18,%esp
c0104d76:	e8 35 cc ff ff       	call   c01019b0 <__getreent>
c0104d7b:	8b 55 0c             	mov    0xc(%ebp),%edx
c0104d7e:	89 54 24 08          	mov    %edx,0x8(%esp)
c0104d82:	8b 55 08             	mov    0x8(%ebp),%edx
c0104d85:	89 04 24             	mov    %eax,(%esp)
c0104d88:	89 54 24 04          	mov    %edx,0x4(%esp)
c0104d8c:	e8 1f ff ff ff       	call   c0104cb0 <_setlocale_r>
c0104d91:	c9                   	leave  
c0104d92:	c3                   	ret    
c0104d93:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0104d99:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0104da0 <localeconv>:
c0104da0:	55                   	push   %ebp
c0104da1:	89 e5                	mov    %esp,%ebp
c0104da3:	83 ec 08             	sub    $0x8,%esp
c0104da6:	e8 05 cc ff ff       	call   c01019b0 <__getreent>
c0104dab:	b8 c0 a4 10 c0       	mov    $0xc010a4c0,%eax
c0104db0:	c9                   	leave  
c0104db1:	c3                   	ret    
c0104db2:	66 90                	xchg   %ax,%ax
c0104db4:	66 90                	xchg   %ax,%ax
c0104db6:	66 90                	xchg   %ax,%ax
c0104db8:	66 90                	xchg   %ax,%ax
c0104dba:	66 90                	xchg   %ax,%ax
c0104dbc:	66 90                	xchg   %ax,%ax
c0104dbe:	66 90                	xchg   %ax,%ax

c0104dc0 <_malloc_r>:
c0104dc0:	55                   	push   %ebp
c0104dc1:	89 e5                	mov    %esp,%ebp
c0104dc3:	57                   	push   %edi
c0104dc4:	56                   	push   %esi
c0104dc5:	53                   	push   %ebx
c0104dc6:	83 ec 2c             	sub    $0x2c,%esp
c0104dc9:	8b 45 0c             	mov    0xc(%ebp),%eax
c0104dcc:	8d 50 0b             	lea    0xb(%eax),%edx
c0104dcf:	83 fa 16             	cmp    $0x16,%edx
c0104dd2:	76 6c                	jbe    c0104e40 <_malloc_r+0x80>
c0104dd4:	89 d7                	mov    %edx,%edi
c0104dd6:	83 e7 f8             	and    $0xfffffff8,%edi
c0104dd9:	89 fe                	mov    %edi,%esi
c0104ddb:	c1 ee 1f             	shr    $0x1f,%esi
c0104dde:	39 c7                	cmp    %eax,%edi
c0104de0:	8b 45 08             	mov    0x8(%ebp),%eax
c0104de3:	89 f2                	mov    %esi,%edx
c0104de5:	72 67                	jb     c0104e4e <_malloc_r+0x8e>
c0104de7:	84 d2                	test   %dl,%dl
c0104de9:	75 63                	jne    c0104e4e <_malloc_r+0x8e>
c0104deb:	89 04 24             	mov    %eax,(%esp)
c0104dee:	e8 ad 07 00 00       	call   c01055a0 <__malloc_lock>
c0104df3:	81 ff f7 01 00 00    	cmp    $0x1f7,%edi
c0104df9:	77 65                	ja     c0104e60 <_malloc_r+0xa0>
c0104dfb:	89 fa                	mov    %edi,%edx
c0104dfd:	c1 ea 03             	shr    $0x3,%edx
c0104e00:	8d 04 d5 20 a5 10 c0 	lea    -0x3fef5ae0(,%edx,8),%eax
c0104e07:	8b 58 0c             	mov    0xc(%eax),%ebx
c0104e0a:	39 c3                	cmp    %eax,%ebx
c0104e0c:	0f 84 3e 05 00 00    	je     c0105350 <_malloc_r+0x590>
c0104e12:	8b 43 04             	mov    0x4(%ebx),%eax
c0104e15:	83 e0 fc             	and    $0xfffffffc,%eax
c0104e18:	8b 53 0c             	mov    0xc(%ebx),%edx
c0104e1b:	8b 4b 08             	mov    0x8(%ebx),%ecx
c0104e1e:	89 51 0c             	mov    %edx,0xc(%ecx)
c0104e21:	89 4a 08             	mov    %ecx,0x8(%edx)
c0104e24:	83 4c 03 04 01       	orl    $0x1,0x4(%ebx,%eax,1)
c0104e29:	8b 45 08             	mov    0x8(%ebp),%eax
c0104e2c:	89 04 24             	mov    %eax,(%esp)
c0104e2f:	e8 7c 07 00 00       	call   c01055b0 <__malloc_unlock>
c0104e34:	8d 43 08             	lea    0x8(%ebx),%eax
c0104e37:	83 c4 2c             	add    $0x2c,%esp
c0104e3a:	5b                   	pop    %ebx
c0104e3b:	5e                   	pop    %esi
c0104e3c:	5f                   	pop    %edi
c0104e3d:	5d                   	pop    %ebp
c0104e3e:	c3                   	ret    
c0104e3f:	90                   	nop
c0104e40:	bf 10 00 00 00       	mov    $0x10,%edi
c0104e45:	31 d2                	xor    %edx,%edx
c0104e47:	39 c7                	cmp    %eax,%edi
c0104e49:	8b 45 08             	mov    0x8(%ebp),%eax
c0104e4c:	73 99                	jae    c0104de7 <_malloc_r+0x27>
c0104e4e:	c7 00 0c 00 00 00    	movl   $0xc,(%eax)
c0104e54:	83 c4 2c             	add    $0x2c,%esp
c0104e57:	31 c0                	xor    %eax,%eax
c0104e59:	5b                   	pop    %ebx
c0104e5a:	5e                   	pop    %esi
c0104e5b:	5f                   	pop    %edi
c0104e5c:	5d                   	pop    %ebp
c0104e5d:	c3                   	ret    
c0104e5e:	66 90                	xchg   %ax,%ax
c0104e60:	89 fe                	mov    %edi,%esi
c0104e62:	c1 ee 09             	shr    $0x9,%esi
c0104e65:	85 f6                	test   %esi,%esi
c0104e67:	0f 84 ab 01 00 00    	je     c0105018 <_malloc_r+0x258>
c0104e6d:	83 fe 04             	cmp    $0x4,%esi
c0104e70:	0f 87 8a 03 00 00    	ja     c0105200 <_malloc_r+0x440>
c0104e76:	89 fe                	mov    %edi,%esi
c0104e78:	c1 ee 06             	shr    $0x6,%esi
c0104e7b:	83 c6 38             	add    $0x38,%esi
c0104e7e:	8d 04 36             	lea    (%esi,%esi,1),%eax
c0104e81:	8d 0c 85 20 a5 10 c0 	lea    -0x3fef5ae0(,%eax,4),%ecx
c0104e88:	8b 59 0c             	mov    0xc(%ecx),%ebx
c0104e8b:	39 d9                	cmp    %ebx,%ecx
c0104e8d:	75 18                	jne    c0104ea7 <_malloc_r+0xe7>
c0104e8f:	eb 28                	jmp    c0104eb9 <_malloc_r+0xf9>
c0104e91:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0104e98:	85 d2                	test   %edx,%edx
c0104e9a:	0f 89 78 ff ff ff    	jns    c0104e18 <_malloc_r+0x58>
c0104ea0:	8b 5b 0c             	mov    0xc(%ebx),%ebx
c0104ea3:	39 d9                	cmp    %ebx,%ecx
c0104ea5:	74 12                	je     c0104eb9 <_malloc_r+0xf9>
c0104ea7:	8b 43 04             	mov    0x4(%ebx),%eax
c0104eaa:	83 e0 fc             	and    $0xfffffffc,%eax
c0104ead:	89 c2                	mov    %eax,%edx
c0104eaf:	29 fa                	sub    %edi,%edx
c0104eb1:	83 fa 0f             	cmp    $0xf,%edx
c0104eb4:	7e e2                	jle    c0104e98 <_malloc_r+0xd8>
c0104eb6:	83 ee 01             	sub    $0x1,%esi
c0104eb9:	8d 46 01             	lea    0x1(%esi),%eax
c0104ebc:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0104ebf:	8b 1d 30 a5 10 c0    	mov    0xc010a530,%ebx
c0104ec5:	a1 24 a5 10 c0       	mov    0xc010a524,%eax
c0104eca:	81 fb 28 a5 10 c0    	cmp    $0xc010a528,%ebx
c0104ed0:	74 6b                	je     c0104f3d <_malloc_r+0x17d>
c0104ed2:	8b 73 04             	mov    0x4(%ebx),%esi
c0104ed5:	83 e6 fc             	and    $0xfffffffc,%esi
c0104ed8:	89 f0                	mov    %esi,%eax
c0104eda:	29 f8                	sub    %edi,%eax
c0104edc:	83 f8 0f             	cmp    $0xf,%eax
c0104edf:	0f 8f a3 03 00 00    	jg     c0105288 <_malloc_r+0x4c8>
c0104ee5:	85 c0                	test   %eax,%eax
c0104ee7:	c7 05 34 a5 10 c0 28 	movl   $0xc010a528,0xc010a534
c0104eee:	a5 10 c0 
c0104ef1:	c7 05 30 a5 10 c0 28 	movl   $0xc010a528,0xc010a530
c0104ef8:	a5 10 c0 
c0104efb:	0f 89 27 01 00 00    	jns    c0105028 <_malloc_r+0x268>
c0104f01:	81 fe ff 01 00 00    	cmp    $0x1ff,%esi
c0104f07:	0f 87 1b 03 00 00    	ja     c0105228 <_malloc_r+0x468>
c0104f0d:	c1 ee 03             	shr    $0x3,%esi
c0104f10:	b8 01 00 00 00       	mov    $0x1,%eax
c0104f15:	89 f1                	mov    %esi,%ecx
c0104f17:	8d 14 f5 20 a5 10 c0 	lea    -0x3fef5ae0(,%esi,8),%edx
c0104f1e:	c1 f9 02             	sar    $0x2,%ecx
c0104f21:	d3 e0                	shl    %cl,%eax
c0104f23:	8b 4a 08             	mov    0x8(%edx),%ecx
c0104f26:	0b 05 24 a5 10 c0    	or     0xc010a524,%eax
c0104f2c:	89 53 0c             	mov    %edx,0xc(%ebx)
c0104f2f:	89 4b 08             	mov    %ecx,0x8(%ebx)
c0104f32:	a3 24 a5 10 c0       	mov    %eax,0xc010a524
c0104f37:	89 5a 08             	mov    %ebx,0x8(%edx)
c0104f3a:	89 59 0c             	mov    %ebx,0xc(%ecx)
c0104f3d:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c0104f40:	be 01 00 00 00       	mov    $0x1,%esi
c0104f45:	c1 f9 02             	sar    $0x2,%ecx
c0104f48:	d3 e6                	shl    %cl,%esi
c0104f4a:	39 c6                	cmp    %eax,%esi
c0104f4c:	0f 87 f6 00 00 00    	ja     c0105048 <_malloc_r+0x288>
c0104f52:	85 f0                	test   %esi,%eax
c0104f54:	0f 85 76 03 00 00    	jne    c01052d0 <_malloc_r+0x510>
c0104f5a:	8b 55 e4             	mov    -0x1c(%ebp),%edx
c0104f5d:	01 f6                	add    %esi,%esi
c0104f5f:	83 e2 fc             	and    $0xfffffffc,%edx
c0104f62:	85 f0                	test   %esi,%eax
c0104f64:	8d 4a 04             	lea    0x4(%edx),%ecx
c0104f67:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c0104f6a:	0f 85 60 03 00 00    	jne    c01052d0 <_malloc_r+0x510>
c0104f70:	89 ca                	mov    %ecx,%edx
c0104f72:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0104f78:	01 f6                	add    %esi,%esi
c0104f7a:	83 c2 04             	add    $0x4,%edx
c0104f7d:	85 f0                	test   %esi,%eax
c0104f7f:	74 f7                	je     c0104f78 <_malloc_r+0x1b8>
c0104f81:	89 55 e4             	mov    %edx,-0x1c(%ebp)
c0104f84:	89 75 dc             	mov    %esi,-0x24(%ebp)
c0104f87:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0104f8a:	8d 34 c5 20 a5 10 c0 	lea    -0x3fef5ae0(,%eax,8),%esi
c0104f91:	89 f1                	mov    %esi,%ecx
c0104f93:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0104f96:	8b 59 0c             	mov    0xc(%ecx),%ebx
c0104f99:	39 d9                	cmp    %ebx,%ecx
c0104f9b:	75 1e                	jne    c0104fbb <_malloc_r+0x1fb>
c0104f9d:	e9 36 03 00 00       	jmp    c01052d8 <_malloc_r+0x518>
c0104fa2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0104fa8:	85 d2                	test   %edx,%edx
c0104faa:	0f 89 c0 03 00 00    	jns    c0105370 <_malloc_r+0x5b0>
c0104fb0:	8b 5b 0c             	mov    0xc(%ebx),%ebx
c0104fb3:	39 d9                	cmp    %ebx,%ecx
c0104fb5:	0f 84 1d 03 00 00    	je     c01052d8 <_malloc_r+0x518>
c0104fbb:	8b 43 04             	mov    0x4(%ebx),%eax
c0104fbe:	83 e0 fc             	and    $0xfffffffc,%eax
c0104fc1:	89 c2                	mov    %eax,%edx
c0104fc3:	29 fa                	sub    %edi,%edx
c0104fc5:	83 fa 0f             	cmp    $0xf,%edx
c0104fc8:	7e de                	jle    c0104fa8 <_malloc_r+0x1e8>
c0104fca:	8b 4b 0c             	mov    0xc(%ebx),%ecx
c0104fcd:	8d 04 3b             	lea    (%ebx,%edi,1),%eax
c0104fd0:	83 cf 01             	or     $0x1,%edi
c0104fd3:	8b 73 08             	mov    0x8(%ebx),%esi
c0104fd6:	89 7b 04             	mov    %edi,0x4(%ebx)
c0104fd9:	89 4e 0c             	mov    %ecx,0xc(%esi)
c0104fdc:	89 71 08             	mov    %esi,0x8(%ecx)
c0104fdf:	89 d1                	mov    %edx,%ecx
c0104fe1:	83 c9 01             	or     $0x1,%ecx
c0104fe4:	a3 34 a5 10 c0       	mov    %eax,0xc010a534
c0104fe9:	a3 30 a5 10 c0       	mov    %eax,0xc010a530
c0104fee:	c7 40 0c 28 a5 10 c0 	movl   $0xc010a528,0xc(%eax)
c0104ff5:	c7 40 08 28 a5 10 c0 	movl   $0xc010a528,0x8(%eax)
c0104ffc:	89 48 04             	mov    %ecx,0x4(%eax)
c0104fff:	89 14 10             	mov    %edx,(%eax,%edx,1)
c0105002:	8b 45 08             	mov    0x8(%ebp),%eax
c0105005:	89 04 24             	mov    %eax,(%esp)
c0105008:	e8 a3 05 00 00       	call   c01055b0 <__malloc_unlock>
c010500d:	8d 43 08             	lea    0x8(%ebx),%eax
c0105010:	e9 22 fe ff ff       	jmp    c0104e37 <_malloc_r+0x77>
c0105015:	8d 76 00             	lea    0x0(%esi),%esi
c0105018:	b8 7e 00 00 00       	mov    $0x7e,%eax
c010501d:	be 3f 00 00 00       	mov    $0x3f,%esi
c0105022:	e9 5a fe ff ff       	jmp    c0104e81 <_malloc_r+0xc1>
c0105027:	90                   	nop
c0105028:	8b 45 08             	mov    0x8(%ebp),%eax
c010502b:	83 4c 33 04 01       	orl    $0x1,0x4(%ebx,%esi,1)
c0105030:	89 04 24             	mov    %eax,(%esp)
c0105033:	e8 78 05 00 00       	call   c01055b0 <__malloc_unlock>
c0105038:	83 c4 2c             	add    $0x2c,%esp
c010503b:	8d 43 08             	lea    0x8(%ebx),%eax
c010503e:	5b                   	pop    %ebx
c010503f:	5e                   	pop    %esi
c0105040:	5f                   	pop    %edi
c0105041:	5d                   	pop    %ebp
c0105042:	c3                   	ret    
c0105043:	90                   	nop
c0105044:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0105048:	8b 1d 28 a5 10 c0    	mov    0xc010a528,%ebx
c010504e:	8b 73 04             	mov    0x4(%ebx),%esi
c0105051:	83 e6 fc             	and    $0xfffffffc,%esi
c0105054:	39 f7                	cmp    %esi,%edi
c0105056:	77 0d                	ja     c0105065 <_malloc_r+0x2a5>
c0105058:	89 f0                	mov    %esi,%eax
c010505a:	29 f8                	sub    %edi,%eax
c010505c:	83 f8 0f             	cmp    $0xf,%eax
c010505f:	0f 8f 6b 01 00 00    	jg     c01051d0 <_malloc_r+0x410>
c0105065:	8b 0d 50 20 16 c0    	mov    0xc0162050,%ecx
c010506b:	8d 04 33             	lea    (%ebx,%esi,1),%eax
c010506e:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0105071:	01 f9                	add    %edi,%ecx
c0105073:	8d 81 0f 10 00 00    	lea    0x100f(%ecx),%eax
c0105079:	83 c1 10             	add    $0x10,%ecx
c010507c:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0105081:	83 3d 00 a5 10 c0 ff 	cmpl   $0xffffffff,0xc010a500
c0105088:	0f 44 c1             	cmove  %ecx,%eax
c010508b:	89 45 e0             	mov    %eax,-0x20(%ebp)
c010508e:	89 44 24 04          	mov    %eax,0x4(%esp)
c0105092:	8b 45 08             	mov    0x8(%ebp),%eax
c0105095:	89 04 24             	mov    %eax,(%esp)
c0105098:	e8 03 13 00 00       	call   c01063a0 <_sbrk_r>
c010509d:	83 f8 ff             	cmp    $0xffffffff,%eax
c01050a0:	89 c1                	mov    %eax,%ecx
c01050a2:	0f 84 17 03 00 00    	je     c01053bf <_malloc_r+0x5ff>
c01050a8:	39 45 e4             	cmp    %eax,-0x1c(%ebp)
c01050ab:	0f 87 02 03 00 00    	ja     c01053b3 <_malloc_r+0x5f3>
c01050b1:	8b 55 e0             	mov    -0x20(%ebp),%edx
c01050b4:	03 15 20 20 16 c0    	add    0xc0162020,%edx
c01050ba:	39 4d e4             	cmp    %ecx,-0x1c(%ebp)
c01050bd:	89 15 20 20 16 c0    	mov    %edx,0xc0162020
c01050c3:	0f 84 a9 03 00 00    	je     c0105472 <_malloc_r+0x6b2>
c01050c9:	83 3d 00 a5 10 c0 ff 	cmpl   $0xffffffff,0xc010a500
c01050d0:	0f 84 ca 03 00 00    	je     c01054a0 <_malloc_r+0x6e0>
c01050d6:	89 c8                	mov    %ecx,%eax
c01050d8:	2b 45 e4             	sub    -0x1c(%ebp),%eax
c01050db:	01 d0                	add    %edx,%eax
c01050dd:	a3 20 20 16 c0       	mov    %eax,0xc0162020
c01050e2:	89 c8                	mov    %ecx,%eax
c01050e4:	ba 00 10 00 00       	mov    $0x1000,%edx
c01050e9:	83 e0 07             	and    $0x7,%eax
c01050ec:	74 0c                	je     c01050fa <_malloc_r+0x33a>
c01050ee:	29 c1                	sub    %eax,%ecx
c01050f0:	ba 08 10 00 00       	mov    $0x1008,%edx
c01050f5:	8d 49 08             	lea    0x8(%ecx),%ecx
c01050f8:	29 c2                	sub    %eax,%edx
c01050fa:	8b 45 e0             	mov    -0x20(%ebp),%eax
c01050fd:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c0105100:	01 c8                	add    %ecx,%eax
c0105102:	25 ff 0f 00 00       	and    $0xfff,%eax
c0105107:	29 c2                	sub    %eax,%edx
c0105109:	8b 45 08             	mov    0x8(%ebp),%eax
c010510c:	89 54 24 04          	mov    %edx,0x4(%esp)
c0105110:	89 55 e0             	mov    %edx,-0x20(%ebp)
c0105113:	89 04 24             	mov    %eax,(%esp)
c0105116:	e8 85 12 00 00       	call   c01063a0 <_sbrk_r>
c010511b:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c010511e:	83 f8 ff             	cmp    $0xffffffff,%eax
c0105121:	0f 84 6d 03 00 00    	je     c0105494 <_malloc_r+0x6d4>
c0105127:	8b 55 e0             	mov    -0x20(%ebp),%edx
c010512a:	29 c8                	sub    %ecx,%eax
c010512c:	01 d0                	add    %edx,%eax
c010512e:	83 c8 01             	or     $0x1,%eax
c0105131:	03 15 20 20 16 c0    	add    0xc0162020,%edx
c0105137:	81 fb 20 a5 10 c0    	cmp    $0xc010a520,%ebx
c010513d:	89 0d 28 a5 10 c0    	mov    %ecx,0xc010a528
c0105143:	89 41 04             	mov    %eax,0x4(%ecx)
c0105146:	89 15 20 20 16 c0    	mov    %edx,0xc0162020
c010514c:	0f 84 f2 02 00 00    	je     c0105444 <_malloc_r+0x684>
c0105152:	83 fe 0f             	cmp    $0xf,%esi
c0105155:	0f 86 8d 02 00 00    	jbe    c01053e8 <_malloc_r+0x628>
c010515b:	8b 43 04             	mov    0x4(%ebx),%eax
c010515e:	83 ee 0c             	sub    $0xc,%esi
c0105161:	83 e6 f8             	and    $0xfffffff8,%esi
c0105164:	83 e0 01             	and    $0x1,%eax
c0105167:	09 f0                	or     %esi,%eax
c0105169:	83 fe 0f             	cmp    $0xf,%esi
c010516c:	89 43 04             	mov    %eax,0x4(%ebx)
c010516f:	a1 28 a5 10 c0       	mov    0xc010a528,%eax
c0105174:	c7 44 33 04 05 00 00 	movl   $0x5,0x4(%ebx,%esi,1)
c010517b:	00 
c010517c:	c7 44 33 08 05 00 00 	movl   $0x5,0x8(%ebx,%esi,1)
c0105183:	00 
c0105184:	0f 87 a2 02 00 00    	ja     c010542c <_malloc_r+0x66c>
c010518a:	3b 15 4c 20 16 c0    	cmp    0xc016204c,%edx
c0105190:	76 06                	jbe    c0105198 <_malloc_r+0x3d8>
c0105192:	89 15 4c 20 16 c0    	mov    %edx,0xc016204c
c0105198:	3b 15 48 20 16 c0    	cmp    0xc0162048,%edx
c010519e:	76 06                	jbe    c01051a6 <_malloc_r+0x3e6>
c01051a0:	89 15 48 20 16 c0    	mov    %edx,0xc0162048
c01051a6:	8b 50 04             	mov    0x4(%eax),%edx
c01051a9:	89 c3                	mov    %eax,%ebx
c01051ab:	83 e2 fc             	and    $0xfffffffc,%edx
c01051ae:	89 d0                	mov    %edx,%eax
c01051b0:	29 f8                	sub    %edi,%eax
c01051b2:	39 d7                	cmp    %edx,%edi
c01051b4:	77 05                	ja     c01051bb <_malloc_r+0x3fb>
c01051b6:	83 f8 0f             	cmp    $0xf,%eax
c01051b9:	7f 15                	jg     c01051d0 <_malloc_r+0x410>
c01051bb:	8b 45 08             	mov    0x8(%ebp),%eax
c01051be:	89 04 24             	mov    %eax,(%esp)
c01051c1:	e8 ea 03 00 00       	call   c01055b0 <__malloc_unlock>
c01051c6:	31 c0                	xor    %eax,%eax
c01051c8:	e9 6a fc ff ff       	jmp    c0104e37 <_malloc_r+0x77>
c01051cd:	8d 76 00             	lea    0x0(%esi),%esi
c01051d0:	89 fa                	mov    %edi,%edx
c01051d2:	83 c8 01             	or     $0x1,%eax
c01051d5:	83 ca 01             	or     $0x1,%edx
c01051d8:	89 53 04             	mov    %edx,0x4(%ebx)
c01051db:	8d 14 3b             	lea    (%ebx,%edi,1),%edx
c01051de:	89 15 28 a5 10 c0    	mov    %edx,0xc010a528
c01051e4:	89 42 04             	mov    %eax,0x4(%edx)
c01051e7:	8b 45 08             	mov    0x8(%ebp),%eax
c01051ea:	89 04 24             	mov    %eax,(%esp)
c01051ed:	e8 be 03 00 00       	call   c01055b0 <__malloc_unlock>
c01051f2:	83 c4 2c             	add    $0x2c,%esp
c01051f5:	8d 43 08             	lea    0x8(%ebx),%eax
c01051f8:	5b                   	pop    %ebx
c01051f9:	5e                   	pop    %esi
c01051fa:	5f                   	pop    %edi
c01051fb:	5d                   	pop    %ebp
c01051fc:	c3                   	ret    
c01051fd:	8d 76 00             	lea    0x0(%esi),%esi
c0105200:	83 fe 14             	cmp    $0x14,%esi
c0105203:	0f 86 8f 01 00 00    	jbe    c0105398 <_malloc_r+0x5d8>
c0105209:	83 fe 54             	cmp    $0x54,%esi
c010520c:	0f 87 be 01 00 00    	ja     c01053d0 <_malloc_r+0x610>
c0105212:	89 fe                	mov    %edi,%esi
c0105214:	c1 ee 0c             	shr    $0xc,%esi
c0105217:	83 c6 6e             	add    $0x6e,%esi
c010521a:	8d 04 36             	lea    (%esi,%esi,1),%eax
c010521d:	e9 5f fc ff ff       	jmp    c0104e81 <_malloc_r+0xc1>
c0105222:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0105228:	89 f1                	mov    %esi,%ecx
c010522a:	c1 e9 09             	shr    $0x9,%ecx
c010522d:	83 f9 04             	cmp    $0x4,%ecx
c0105230:	0f 86 6d 01 00 00    	jbe    c01053a3 <_malloc_r+0x5e3>
c0105236:	83 f9 14             	cmp    $0x14,%ecx
c0105239:	0f 87 0f 02 00 00    	ja     c010544e <_malloc_r+0x68e>
c010523f:	83 c1 5b             	add    $0x5b,%ecx
c0105242:	8d 04 09             	lea    (%ecx,%ecx,1),%eax
c0105245:	8d 04 85 20 a5 10 c0 	lea    -0x3fef5ae0(,%eax,4),%eax
c010524c:	8b 50 08             	mov    0x8(%eax),%edx
c010524f:	39 c2                	cmp    %eax,%edx
c0105251:	0f 84 a1 01 00 00    	je     c01053f8 <_malloc_r+0x638>
c0105257:	90                   	nop
c0105258:	8b 4a 04             	mov    0x4(%edx),%ecx
c010525b:	83 e1 fc             	and    $0xfffffffc,%ecx
c010525e:	39 ce                	cmp    %ecx,%esi
c0105260:	73 07                	jae    c0105269 <_malloc_r+0x4a9>
c0105262:	8b 52 08             	mov    0x8(%edx),%edx
c0105265:	39 d0                	cmp    %edx,%eax
c0105267:	75 ef                	jne    c0105258 <_malloc_r+0x498>
c0105269:	8b 4a 0c             	mov    0xc(%edx),%ecx
c010526c:	a1 24 a5 10 c0       	mov    0xc010a524,%eax
c0105271:	89 4b 0c             	mov    %ecx,0xc(%ebx)
c0105274:	89 53 08             	mov    %edx,0x8(%ebx)
c0105277:	89 59 08             	mov    %ebx,0x8(%ecx)
c010527a:	89 5a 0c             	mov    %ebx,0xc(%edx)
c010527d:	e9 bb fc ff ff       	jmp    c0104f3d <_malloc_r+0x17d>
c0105282:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0105288:	89 c1                	mov    %eax,%ecx
c010528a:	8d 14 3b             	lea    (%ebx,%edi,1),%edx
c010528d:	83 c9 01             	or     $0x1,%ecx
c0105290:	83 cf 01             	or     $0x1,%edi
c0105293:	89 7b 04             	mov    %edi,0x4(%ebx)
c0105296:	89 15 34 a5 10 c0    	mov    %edx,0xc010a534
c010529c:	89 15 30 a5 10 c0    	mov    %edx,0xc010a530
c01052a2:	c7 42 0c 28 a5 10 c0 	movl   $0xc010a528,0xc(%edx)
c01052a9:	c7 42 08 28 a5 10 c0 	movl   $0xc010a528,0x8(%edx)
c01052b0:	89 4a 04             	mov    %ecx,0x4(%edx)
c01052b3:	89 04 02             	mov    %eax,(%edx,%eax,1)
c01052b6:	8b 45 08             	mov    0x8(%ebp),%eax
c01052b9:	89 04 24             	mov    %eax,(%esp)
c01052bc:	e8 ef 02 00 00       	call   c01055b0 <__malloc_unlock>
c01052c1:	8d 43 08             	lea    0x8(%ebx),%eax
c01052c4:	e9 6e fb ff ff       	jmp    c0104e37 <_malloc_r+0x77>
c01052c9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c01052d0:	89 75 dc             	mov    %esi,-0x24(%ebp)
c01052d3:	e9 af fc ff ff       	jmp    c0104f87 <_malloc_r+0x1c7>
c01052d8:	83 45 e0 01          	addl   $0x1,-0x20(%ebp)
c01052dc:	83 c1 08             	add    $0x8,%ecx
c01052df:	f6 45 e0 03          	testb  $0x3,-0x20(%ebp)
c01052e3:	0f 85 ad fc ff ff    	jne    c0104f96 <_malloc_r+0x1d6>
c01052e9:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c01052ec:	eb 12                	jmp    c0105300 <_malloc_r+0x540>
c01052ee:	66 90                	xchg   %ax,%ax
c01052f0:	8d 56 f8             	lea    -0x8(%esi),%edx
c01052f3:	8b 36                	mov    (%esi),%esi
c01052f5:	83 e8 01             	sub    $0x1,%eax
c01052f8:	39 d6                	cmp    %edx,%esi
c01052fa:	0f 85 ea 01 00 00    	jne    c01054ea <_malloc_r+0x72a>
c0105300:	a8 03                	test   $0x3,%al
c0105302:	75 ec                	jne    c01052f0 <_malloc_r+0x530>
c0105304:	8b 45 dc             	mov    -0x24(%ebp),%eax
c0105307:	f7 d0                	not    %eax
c0105309:	23 05 24 a5 10 c0    	and    0xc010a524,%eax
c010530f:	a3 24 a5 10 c0       	mov    %eax,0xc010a524
c0105314:	d1 65 dc             	shll   -0x24(%ebp)
c0105317:	8b 55 dc             	mov    -0x24(%ebp),%edx
c010531a:	39 c2                	cmp    %eax,%edx
c010531c:	0f 87 26 fd ff ff    	ja     c0105048 <_malloc_r+0x288>
c0105322:	85 d2                	test   %edx,%edx
c0105324:	0f 84 1e fd ff ff    	je     c0105048 <_malloc_r+0x288>
c010532a:	85 c2                	test   %eax,%edx
c010532c:	0f 85 c2 01 00 00    	jne    c01054f4 <_malloc_r+0x734>
c0105332:	8b 75 e0             	mov    -0x20(%ebp),%esi
c0105335:	89 f1                	mov    %esi,%ecx
c0105337:	01 d2                	add    %edx,%edx
c0105339:	83 c1 04             	add    $0x4,%ecx
c010533c:	85 d0                	test   %edx,%eax
c010533e:	74 f7                	je     c0105337 <_malloc_r+0x577>
c0105340:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c0105343:	89 55 dc             	mov    %edx,-0x24(%ebp)
c0105346:	e9 3c fc ff ff       	jmp    c0104f87 <_malloc_r+0x1c7>
c010534b:	90                   	nop
c010534c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0105350:	8d 43 08             	lea    0x8(%ebx),%eax
c0105353:	8b 5b 14             	mov    0x14(%ebx),%ebx
c0105356:	39 d8                	cmp    %ebx,%eax
c0105358:	0f 85 b4 fa ff ff    	jne    c0104e12 <_malloc_r+0x52>
c010535e:	8d 42 02             	lea    0x2(%edx),%eax
c0105361:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0105364:	e9 56 fb ff ff       	jmp    c0104ebf <_malloc_r+0xff>
c0105369:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0105370:	83 4c 03 04 01       	orl    $0x1,0x4(%ebx,%eax,1)
c0105375:	8b 53 08             	mov    0x8(%ebx),%edx
c0105378:	8b 43 0c             	mov    0xc(%ebx),%eax
c010537b:	89 42 0c             	mov    %eax,0xc(%edx)
c010537e:	89 50 08             	mov    %edx,0x8(%eax)
c0105381:	8b 45 08             	mov    0x8(%ebp),%eax
c0105384:	89 04 24             	mov    %eax,(%esp)
c0105387:	e8 24 02 00 00       	call   c01055b0 <__malloc_unlock>
c010538c:	8d 43 08             	lea    0x8(%ebx),%eax
c010538f:	e9 a3 fa ff ff       	jmp    c0104e37 <_malloc_r+0x77>
c0105394:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0105398:	83 c6 5b             	add    $0x5b,%esi
c010539b:	8d 04 36             	lea    (%esi,%esi,1),%eax
c010539e:	e9 de fa ff ff       	jmp    c0104e81 <_malloc_r+0xc1>
c01053a3:	89 f1                	mov    %esi,%ecx
c01053a5:	c1 e9 06             	shr    $0x6,%ecx
c01053a8:	83 c1 38             	add    $0x38,%ecx
c01053ab:	8d 04 09             	lea    (%ecx,%ecx,1),%eax
c01053ae:	e9 92 fe ff ff       	jmp    c0105245 <_malloc_r+0x485>
c01053b3:	81 fb 20 a5 10 c0    	cmp    $0xc010a520,%ebx
c01053b9:	0f 84 f2 fc ff ff    	je     c01050b1 <_malloc_r+0x2f1>
c01053bf:	8b 1d 28 a5 10 c0    	mov    0xc010a528,%ebx
c01053c5:	8b 53 04             	mov    0x4(%ebx),%edx
c01053c8:	83 e2 fc             	and    $0xfffffffc,%edx
c01053cb:	e9 de fd ff ff       	jmp    c01051ae <_malloc_r+0x3ee>
c01053d0:	81 fe 54 01 00 00    	cmp    $0x154,%esi
c01053d6:	77 3c                	ja     c0105414 <_malloc_r+0x654>
c01053d8:	89 fe                	mov    %edi,%esi
c01053da:	c1 ee 0f             	shr    $0xf,%esi
c01053dd:	83 c6 77             	add    $0x77,%esi
c01053e0:	8d 04 36             	lea    (%esi,%esi,1),%eax
c01053e3:	e9 99 fa ff ff       	jmp    c0104e81 <_malloc_r+0xc1>
c01053e8:	c7 41 04 01 00 00 00 	movl   $0x1,0x4(%ecx)
c01053ef:	89 cb                	mov    %ecx,%ebx
c01053f1:	31 d2                	xor    %edx,%edx
c01053f3:	e9 b6 fd ff ff       	jmp    c01051ae <_malloc_r+0x3ee>
c01053f8:	c1 f9 02             	sar    $0x2,%ecx
c01053fb:	b8 01 00 00 00       	mov    $0x1,%eax
c0105400:	d3 e0                	shl    %cl,%eax
c0105402:	89 d1                	mov    %edx,%ecx
c0105404:	0b 05 24 a5 10 c0    	or     0xc010a524,%eax
c010540a:	a3 24 a5 10 c0       	mov    %eax,0xc010a524
c010540f:	e9 5d fe ff ff       	jmp    c0105271 <_malloc_r+0x4b1>
c0105414:	81 fe 54 05 00 00    	cmp    $0x554,%esi
c010541a:	77 47                	ja     c0105463 <_malloc_r+0x6a3>
c010541c:	89 fe                	mov    %edi,%esi
c010541e:	c1 ee 12             	shr    $0x12,%esi
c0105421:	83 c6 7c             	add    $0x7c,%esi
c0105424:	8d 04 36             	lea    (%esi,%esi,1),%eax
c0105427:	e9 55 fa ff ff       	jmp    c0104e81 <_malloc_r+0xc1>
c010542c:	8b 45 08             	mov    0x8(%ebp),%eax
c010542f:	83 c3 08             	add    $0x8,%ebx
c0105432:	89 5c 24 04          	mov    %ebx,0x4(%esp)
c0105436:	89 04 24             	mov    %eax,(%esp)
c0105439:	e8 52 22 00 00       	call   c0107690 <_free_r>
c010543e:	8b 15 20 20 16 c0    	mov    0xc0162020,%edx
c0105444:	a1 28 a5 10 c0       	mov    0xc010a528,%eax
c0105449:	e9 3c fd ff ff       	jmp    c010518a <_malloc_r+0x3ca>
c010544e:	83 f9 54             	cmp    $0x54,%ecx
c0105451:	77 58                	ja     c01054ab <_malloc_r+0x6eb>
c0105453:	89 f1                	mov    %esi,%ecx
c0105455:	c1 e9 0c             	shr    $0xc,%ecx
c0105458:	83 c1 6e             	add    $0x6e,%ecx
c010545b:	8d 04 09             	lea    (%ecx,%ecx,1),%eax
c010545e:	e9 e2 fd ff ff       	jmp    c0105245 <_malloc_r+0x485>
c0105463:	b8 fc 00 00 00       	mov    $0xfc,%eax
c0105468:	be 7e 00 00 00       	mov    $0x7e,%esi
c010546d:	e9 0f fa ff ff       	jmp    c0104e81 <_malloc_r+0xc1>
c0105472:	f7 45 e4 ff 0f 00 00 	testl  $0xfff,-0x1c(%ebp)
c0105479:	0f 85 4a fc ff ff    	jne    c01050c9 <_malloc_r+0x309>
c010547f:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0105482:	a1 28 a5 10 c0       	mov    0xc010a528,%eax
c0105487:	01 f1                	add    %esi,%ecx
c0105489:	83 c9 01             	or     $0x1,%ecx
c010548c:	89 48 04             	mov    %ecx,0x4(%eax)
c010548f:	e9 f6 fc ff ff       	jmp    c010518a <_malloc_r+0x3ca>
c0105494:	b8 01 00 00 00       	mov    $0x1,%eax
c0105499:	31 d2                	xor    %edx,%edx
c010549b:	e9 91 fc ff ff       	jmp    c0105131 <_malloc_r+0x371>
c01054a0:	89 0d 00 a5 10 c0    	mov    %ecx,0xc010a500
c01054a6:	e9 37 fc ff ff       	jmp    c01050e2 <_malloc_r+0x322>
c01054ab:	81 f9 54 01 00 00    	cmp    $0x154,%ecx
c01054b1:	77 10                	ja     c01054c3 <_malloc_r+0x703>
c01054b3:	89 f1                	mov    %esi,%ecx
c01054b5:	c1 e9 0f             	shr    $0xf,%ecx
c01054b8:	83 c1 77             	add    $0x77,%ecx
c01054bb:	8d 04 09             	lea    (%ecx,%ecx,1),%eax
c01054be:	e9 82 fd ff ff       	jmp    c0105245 <_malloc_r+0x485>
c01054c3:	81 f9 54 05 00 00    	cmp    $0x554,%ecx
c01054c9:	77 10                	ja     c01054db <_malloc_r+0x71b>
c01054cb:	89 f1                	mov    %esi,%ecx
c01054cd:	c1 e9 12             	shr    $0x12,%ecx
c01054d0:	83 c1 7c             	add    $0x7c,%ecx
c01054d3:	8d 04 09             	lea    (%ecx,%ecx,1),%eax
c01054d6:	e9 6a fd ff ff       	jmp    c0105245 <_malloc_r+0x485>
c01054db:	b8 fc 00 00 00       	mov    $0xfc,%eax
c01054e0:	b9 7e 00 00 00       	mov    $0x7e,%ecx
c01054e5:	e9 5b fd ff ff       	jmp    c0105245 <_malloc_r+0x485>
c01054ea:	a1 24 a5 10 c0       	mov    0xc010a524,%eax
c01054ef:	e9 20 fe ff ff       	jmp    c0105314 <_malloc_r+0x554>
c01054f4:	8b 45 e0             	mov    -0x20(%ebp),%eax
c01054f7:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c01054fa:	e9 88 fa ff ff       	jmp    c0104f87 <_malloc_r+0x1c7>
c01054ff:	90                   	nop

c0105500 <memchr>:
c0105500:	55                   	push   %ebp
c0105501:	89 e5                	mov    %esp,%ebp
c0105503:	57                   	push   %edi
c0105504:	0f b6 45 0c          	movzbl 0xc(%ebp),%eax
c0105508:	8b 4d 10             	mov    0x10(%ebp),%ecx
c010550b:	8b 7d 08             	mov    0x8(%ebp),%edi
c010550e:	31 d2                	xor    %edx,%edx
c0105510:	85 c9                	test   %ecx,%ecx
c0105512:	74 79                	je     c010558d <L20>
c0105514:	f7 c7 03 00 00 00    	test   $0x3,%edi
c010551a:	74 28                	je     c0105544 <L5>
c010551c:	3a 07                	cmp    (%edi),%al
c010551e:	74 6a                	je     c010558a <L15>
c0105520:	47                   	inc    %edi
c0105521:	49                   	dec    %ecx
c0105522:	74 69                	je     c010558d <L20>
c0105524:	f7 c7 03 00 00 00    	test   $0x3,%edi
c010552a:	74 18                	je     c0105544 <L5>
c010552c:	3a 07                	cmp    (%edi),%al
c010552e:	74 5a                	je     c010558a <L15>
c0105530:	47                   	inc    %edi
c0105531:	49                   	dec    %ecx
c0105532:	74 59                	je     c010558d <L20>
c0105534:	f7 c7 03 00 00 00    	test   $0x3,%edi
c010553a:	74 08                	je     c0105544 <L5>
c010553c:	3a 07                	cmp    (%edi),%al
c010553e:	74 4a                	je     c010558a <L15>
c0105540:	47                   	inc    %edi
c0105541:	49                   	dec    %ecx
c0105542:	74 49                	je     c010558d <L20>

c0105544 <L5>:
c0105544:	88 c4                	mov    %al,%ah
c0105546:	89 c2                	mov    %eax,%edx
c0105548:	c1 e2 10             	shl    $0x10,%edx
c010554b:	09 d0                	or     %edx,%eax
c010554d:	53                   	push   %ebx
c010554e:	66 90                	xchg   %ax,%ax

c0105550 <L8>:
c0105550:	83 e9 04             	sub    $0x4,%ecx
c0105553:	72 1c                	jb     c0105571 <L9>
c0105555:	8b 17                	mov    (%edi),%edx
c0105557:	83 c7 04             	add    $0x4,%edi
c010555a:	31 c2                	xor    %eax,%edx
c010555c:	8d 9a ff fe fe fe    	lea    -0x1010101(%edx),%ebx
c0105562:	f7 d2                	not    %edx
c0105564:	21 d3                	and    %edx,%ebx
c0105566:	f7 c3 80 80 80 80    	test   $0x80808080,%ebx
c010556c:	74 e2                	je     c0105550 <L8>
c010556e:	83 ef 04             	sub    $0x4,%edi

c0105571 <L9>:
c0105571:	5b                   	pop    %ebx
c0105572:	31 d2                	xor    %edx,%edx
c0105574:	83 c1 04             	add    $0x4,%ecx
c0105577:	74 14                	je     c010558d <L20>
c0105579:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

c0105580 <L10>:
c0105580:	3a 07                	cmp    (%edi),%al
c0105582:	74 06                	je     c010558a <L15>
c0105584:	47                   	inc    %edi
c0105585:	49                   	dec    %ecx
c0105586:	75 f8                	jne    c0105580 <L10>
c0105588:	31 ff                	xor    %edi,%edi

c010558a <L15>:
c010558a:	4a                   	dec    %edx
c010558b:	21 fa                	and    %edi,%edx

c010558d <L20>:
c010558d:	89 d0                	mov    %edx,%eax
c010558f:	8d 65 fc             	lea    -0x4(%ebp),%esp
c0105592:	5f                   	pop    %edi
c0105593:	c9                   	leave  
c0105594:	c3                   	ret    
c0105595:	66 90                	xchg   %ax,%ax
c0105597:	66 90                	xchg   %ax,%ax
c0105599:	66 90                	xchg   %ax,%ax
c010559b:	66 90                	xchg   %ax,%ax
c010559d:	66 90                	xchg   %ax,%ax
c010559f:	90                   	nop

c01055a0 <__malloc_lock>:
c01055a0:	55                   	push   %ebp
c01055a1:	89 e5                	mov    %esp,%ebp
c01055a3:	5d                   	pop    %ebp
c01055a4:	c3                   	ret    
c01055a5:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c01055a9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c01055b0 <__malloc_unlock>:
c01055b0:	55                   	push   %ebp
c01055b1:	89 e5                	mov    %esp,%ebp
c01055b3:	5d                   	pop    %ebp
c01055b4:	c3                   	ret    
c01055b5:	66 90                	xchg   %ax,%ax
c01055b7:	66 90                	xchg   %ax,%ax
c01055b9:	66 90                	xchg   %ax,%ax
c01055bb:	66 90                	xchg   %ax,%ax
c01055bd:	66 90                	xchg   %ax,%ax
c01055bf:	90                   	nop

c01055c0 <_Balloc>:
c01055c0:	55                   	push   %ebp
c01055c1:	89 e5                	mov    %esp,%ebp
c01055c3:	57                   	push   %edi
c01055c4:	56                   	push   %esi
c01055c5:	53                   	push   %ebx
c01055c6:	83 ec 1c             	sub    $0x1c,%esp
c01055c9:	8b 75 08             	mov    0x8(%ebp),%esi
c01055cc:	8b 5d 0c             	mov    0xc(%ebp),%ebx
c01055cf:	8b 46 4c             	mov    0x4c(%esi),%eax
c01055d2:	85 c0                	test   %eax,%eax
c01055d4:	74 2a                	je     c0105600 <_Balloc+0x40>
c01055d6:	8d 14 98             	lea    (%eax,%ebx,4),%edx
c01055d9:	8b 02                	mov    (%edx),%eax
c01055db:	85 c0                	test   %eax,%eax
c01055dd:	74 49                	je     c0105628 <_Balloc+0x68>
c01055df:	8b 08                	mov    (%eax),%ecx
c01055e1:	89 0a                	mov    %ecx,(%edx)
c01055e3:	c7 40 10 00 00 00 00 	movl   $0x0,0x10(%eax)
c01055ea:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%eax)
c01055f1:	83 c4 1c             	add    $0x1c,%esp
c01055f4:	5b                   	pop    %ebx
c01055f5:	5e                   	pop    %esi
c01055f6:	5f                   	pop    %edi
c01055f7:	5d                   	pop    %ebp
c01055f8:	c3                   	ret    
c01055f9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0105600:	c7 44 24 08 21 00 00 	movl   $0x21,0x8(%esp)
c0105607:	00 
c0105608:	c7 44 24 04 04 00 00 	movl   $0x4,0x4(%esp)
c010560f:	00 
c0105610:	89 34 24             	mov    %esi,(%esp)
c0105613:	e8 c8 1e 00 00       	call   c01074e0 <_calloc_r>
c0105618:	85 c0                	test   %eax,%eax
c010561a:	89 46 4c             	mov    %eax,0x4c(%esi)
c010561d:	75 b7                	jne    c01055d6 <_Balloc+0x16>
c010561f:	31 c0                	xor    %eax,%eax
c0105621:	eb ce                	jmp    c01055f1 <_Balloc+0x31>
c0105623:	90                   	nop
c0105624:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0105628:	89 d9                	mov    %ebx,%ecx
c010562a:	bf 01 00 00 00       	mov    $0x1,%edi
c010562f:	d3 e7                	shl    %cl,%edi
c0105631:	8d 04 bd 14 00 00 00 	lea    0x14(,%edi,4),%eax
c0105638:	89 44 24 08          	mov    %eax,0x8(%esp)
c010563c:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c0105643:	00 
c0105644:	89 34 24             	mov    %esi,(%esp)
c0105647:	e8 94 1e 00 00       	call   c01074e0 <_calloc_r>
c010564c:	85 c0                	test   %eax,%eax
c010564e:	74 cf                	je     c010561f <_Balloc+0x5f>
c0105650:	89 58 04             	mov    %ebx,0x4(%eax)
c0105653:	89 78 08             	mov    %edi,0x8(%eax)
c0105656:	eb 8b                	jmp    c01055e3 <_Balloc+0x23>
c0105658:	90                   	nop
c0105659:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

c0105660 <_Bfree>:
c0105660:	55                   	push   %ebp
c0105661:	89 e5                	mov    %esp,%ebp
c0105663:	8b 45 0c             	mov    0xc(%ebp),%eax
c0105666:	85 c0                	test   %eax,%eax
c0105668:	74 12                	je     c010567c <_Bfree+0x1c>
c010566a:	8b 55 08             	mov    0x8(%ebp),%edx
c010566d:	8b 48 04             	mov    0x4(%eax),%ecx
c0105670:	8b 52 4c             	mov    0x4c(%edx),%edx
c0105673:	8d 14 8a             	lea    (%edx,%ecx,4),%edx
c0105676:	8b 0a                	mov    (%edx),%ecx
c0105678:	89 08                	mov    %ecx,(%eax)
c010567a:	89 02                	mov    %eax,(%edx)
c010567c:	5d                   	pop    %ebp
c010567d:	c3                   	ret    
c010567e:	66 90                	xchg   %ax,%ax

c0105680 <__multadd>:
c0105680:	55                   	push   %ebp
c0105681:	89 e5                	mov    %esp,%ebp
c0105683:	57                   	push   %edi
c0105684:	56                   	push   %esi
c0105685:	53                   	push   %ebx
c0105686:	83 ec 2c             	sub    $0x2c,%esp
c0105689:	8b 45 0c             	mov    0xc(%ebp),%eax
c010568c:	8b 5d 14             	mov    0x14(%ebp),%ebx
c010568f:	8b 40 10             	mov    0x10(%eax),%eax
c0105692:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0105695:	8b 45 0c             	mov    0xc(%ebp),%eax
c0105698:	8d 78 14             	lea    0x14(%eax),%edi
c010569b:	31 c0                	xor    %eax,%eax
c010569d:	8d 76 00             	lea    0x0(%esi),%esi
c01056a0:	8b 0c 87             	mov    (%edi,%eax,4),%ecx
c01056a3:	0f b7 d1             	movzwl %cx,%edx
c01056a6:	0f af 55 10          	imul   0x10(%ebp),%edx
c01056aa:	c1 e9 10             	shr    $0x10,%ecx
c01056ad:	0f af 4d 10          	imul   0x10(%ebp),%ecx
c01056b1:	01 da                	add    %ebx,%edx
c01056b3:	89 d3                	mov    %edx,%ebx
c01056b5:	0f b7 d2             	movzwl %dx,%edx
c01056b8:	c1 eb 10             	shr    $0x10,%ebx
c01056bb:	01 d9                	add    %ebx,%ecx
c01056bd:	89 ce                	mov    %ecx,%esi
c01056bf:	c1 e1 10             	shl    $0x10,%ecx
c01056c2:	01 d1                	add    %edx,%ecx
c01056c4:	c1 ee 10             	shr    $0x10,%esi
c01056c7:	89 0c 87             	mov    %ecx,(%edi,%eax,4)
c01056ca:	83 c0 01             	add    $0x1,%eax
c01056cd:	89 f3                	mov    %esi,%ebx
c01056cf:	39 45 e4             	cmp    %eax,-0x1c(%ebp)
c01056d2:	7f cc                	jg     c01056a0 <__multadd+0x20>
c01056d4:	85 f6                	test   %esi,%esi
c01056d6:	74 1b                	je     c01056f3 <__multadd+0x73>
c01056d8:	8b 45 0c             	mov    0xc(%ebp),%eax
c01056db:	8b 7d e4             	mov    -0x1c(%ebp),%edi
c01056de:	3b 78 08             	cmp    0x8(%eax),%edi
c01056e1:	7d 1d                	jge    c0105700 <__multadd+0x80>
c01056e3:	8b 7d 0c             	mov    0xc(%ebp),%edi
c01056e6:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c01056e9:	89 74 87 14          	mov    %esi,0x14(%edi,%eax,4)
c01056ed:	83 c0 01             	add    $0x1,%eax
c01056f0:	89 47 10             	mov    %eax,0x10(%edi)
c01056f3:	8b 45 0c             	mov    0xc(%ebp),%eax
c01056f6:	83 c4 2c             	add    $0x2c,%esp
c01056f9:	5b                   	pop    %ebx
c01056fa:	5e                   	pop    %esi
c01056fb:	5f                   	pop    %edi
c01056fc:	5d                   	pop    %ebp
c01056fd:	c3                   	ret    
c01056fe:	66 90                	xchg   %ax,%ax
c0105700:	8b 40 04             	mov    0x4(%eax),%eax
c0105703:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0105706:	83 c0 01             	add    $0x1,%eax
c0105709:	89 44 24 04          	mov    %eax,0x4(%esp)
c010570d:	8b 45 08             	mov    0x8(%ebp),%eax
c0105710:	89 04 24             	mov    %eax,(%esp)
c0105713:	e8 a8 fe ff ff       	call   c01055c0 <_Balloc>
c0105718:	89 c3                	mov    %eax,%ebx
c010571a:	8b 45 0c             	mov    0xc(%ebp),%eax
c010571d:	8b 40 10             	mov    0x10(%eax),%eax
c0105720:	8d 04 85 08 00 00 00 	lea    0x8(,%eax,4),%eax
c0105727:	89 44 24 08          	mov    %eax,0x8(%esp)
c010572b:	8b 45 0c             	mov    0xc(%ebp),%eax
c010572e:	83 c0 0c             	add    $0xc,%eax
c0105731:	89 44 24 04          	mov    %eax,0x4(%esp)
c0105735:	8d 43 0c             	lea    0xc(%ebx),%eax
c0105738:	89 04 24             	mov    %eax,(%esp)
c010573b:	e8 60 c0 ff ff       	call   c01017a0 <memcpy>
c0105740:	8b 45 0c             	mov    0xc(%ebp),%eax
c0105743:	8b 7d 0c             	mov    0xc(%ebp),%edi
c0105746:	89 5d 0c             	mov    %ebx,0xc(%ebp)
c0105749:	8b 50 04             	mov    0x4(%eax),%edx
c010574c:	8b 45 08             	mov    0x8(%ebp),%eax
c010574f:	8b 40 4c             	mov    0x4c(%eax),%eax
c0105752:	8d 04 90             	lea    (%eax,%edx,4),%eax
c0105755:	8b 10                	mov    (%eax),%edx
c0105757:	89 17                	mov    %edx,(%edi)
c0105759:	89 38                	mov    %edi,(%eax)
c010575b:	eb 86                	jmp    c01056e3 <__multadd+0x63>
c010575d:	8d 76 00             	lea    0x0(%esi),%esi

c0105760 <__s2b>:
c0105760:	55                   	push   %ebp
c0105761:	ba 39 8e e3 38       	mov    $0x38e38e39,%edx
c0105766:	89 e5                	mov    %esp,%ebp
c0105768:	57                   	push   %edi
c0105769:	56                   	push   %esi
c010576a:	53                   	push   %ebx
c010576b:	83 ec 2c             	sub    $0x2c,%esp
c010576e:	8b 45 14             	mov    0x14(%ebp),%eax
c0105771:	8b 5d 08             	mov    0x8(%ebp),%ebx
c0105774:	8b 75 0c             	mov    0xc(%ebp),%esi
c0105777:	8d 48 08             	lea    0x8(%eax),%ecx
c010577a:	89 c8                	mov    %ecx,%eax
c010577c:	f7 ea                	imul   %edx
c010577e:	c1 f9 1f             	sar    $0x1f,%ecx
c0105781:	d1 fa                	sar    %edx
c0105783:	29 ca                	sub    %ecx,%edx
c0105785:	83 fa 01             	cmp    $0x1,%edx
c0105788:	0f 8e be 00 00 00    	jle    c010584c <__s2b+0xec>
c010578e:	b8 01 00 00 00       	mov    $0x1,%eax
c0105793:	31 c9                	xor    %ecx,%ecx
c0105795:	8d 76 00             	lea    0x0(%esi),%esi
c0105798:	01 c0                	add    %eax,%eax
c010579a:	83 c1 01             	add    $0x1,%ecx
c010579d:	39 c2                	cmp    %eax,%edx
c010579f:	7f f7                	jg     c0105798 <__s2b+0x38>
c01057a1:	89 4c 24 04          	mov    %ecx,0x4(%esp)
c01057a5:	89 1c 24             	mov    %ebx,(%esp)
c01057a8:	e8 13 fe ff ff       	call   c01055c0 <_Balloc>
c01057ad:	8b 55 18             	mov    0x18(%ebp),%edx
c01057b0:	83 7d 10 09          	cmpl   $0x9,0x10(%ebp)
c01057b4:	89 50 14             	mov    %edx,0x14(%eax)
c01057b7:	c7 40 10 01 00 00 00 	movl   $0x1,0x10(%eax)
c01057be:	0f 8e 7c 00 00 00    	jle    c0105840 <__s2b+0xe0>
c01057c4:	8d 4e 09             	lea    0x9(%esi),%ecx
c01057c7:	03 75 10             	add    0x10(%ebp),%esi
c01057ca:	89 cf                	mov    %ecx,%edi
c01057cc:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c01057cf:	90                   	nop
c01057d0:	83 c7 01             	add    $0x1,%edi
c01057d3:	0f be 57 ff          	movsbl -0x1(%edi),%edx
c01057d7:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c01057de:	00 
c01057df:	89 44 24 04          	mov    %eax,0x4(%esp)
c01057e3:	89 1c 24             	mov    %ebx,(%esp)
c01057e6:	83 ea 30             	sub    $0x30,%edx
c01057e9:	89 54 24 0c          	mov    %edx,0xc(%esp)
c01057ed:	e8 8e fe ff ff       	call   c0105680 <__multadd>
c01057f2:	39 f7                	cmp    %esi,%edi
c01057f4:	75 da                	jne    c01057d0 <__s2b+0x70>
c01057f6:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c01057f9:	8b 7d 10             	mov    0x10(%ebp),%edi
c01057fc:	8d 74 39 f8          	lea    -0x8(%ecx,%edi,1),%esi
c0105800:	8b 4d 10             	mov    0x10(%ebp),%ecx
c0105803:	39 4d 14             	cmp    %ecx,0x14(%ebp)
c0105806:	7e 2e                	jle    c0105836 <__s2b+0xd6>
c0105808:	8b 7d 14             	mov    0x14(%ebp),%edi
c010580b:	29 cf                	sub    %ecx,%edi
c010580d:	01 f7                	add    %esi,%edi
c010580f:	90                   	nop
c0105810:	83 c6 01             	add    $0x1,%esi
c0105813:	0f be 56 ff          	movsbl -0x1(%esi),%edx
c0105817:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c010581e:	00 
c010581f:	89 44 24 04          	mov    %eax,0x4(%esp)
c0105823:	89 1c 24             	mov    %ebx,(%esp)
c0105826:	83 ea 30             	sub    $0x30,%edx
c0105829:	89 54 24 0c          	mov    %edx,0xc(%esp)
c010582d:	e8 4e fe ff ff       	call   c0105680 <__multadd>
c0105832:	39 fe                	cmp    %edi,%esi
c0105834:	75 da                	jne    c0105810 <__s2b+0xb0>
c0105836:	83 c4 2c             	add    $0x2c,%esp
c0105839:	5b                   	pop    %ebx
c010583a:	5e                   	pop    %esi
c010583b:	5f                   	pop    %edi
c010583c:	5d                   	pop    %ebp
c010583d:	c3                   	ret    
c010583e:	66 90                	xchg   %ax,%ax
c0105840:	83 c6 0a             	add    $0xa,%esi
c0105843:	c7 45 10 09 00 00 00 	movl   $0x9,0x10(%ebp)
c010584a:	eb b4                	jmp    c0105800 <__s2b+0xa0>
c010584c:	31 c9                	xor    %ecx,%ecx
c010584e:	e9 4e ff ff ff       	jmp    c01057a1 <__s2b+0x41>
c0105853:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0105859:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0105860 <__hi0bits>:
c0105860:	55                   	push   %ebp
c0105861:	31 c9                	xor    %ecx,%ecx
c0105863:	89 e5                	mov    %esp,%ebp
c0105865:	8b 55 08             	mov    0x8(%ebp),%edx
c0105868:	f7 c2 00 00 ff ff    	test   $0xffff0000,%edx
c010586e:	75 05                	jne    c0105875 <__hi0bits+0x15>
c0105870:	c1 e2 10             	shl    $0x10,%edx
c0105873:	b1 10                	mov    $0x10,%cl
c0105875:	f7 c2 00 00 00 ff    	test   $0xff000000,%edx
c010587b:	75 06                	jne    c0105883 <__hi0bits+0x23>
c010587d:	83 c1 08             	add    $0x8,%ecx
c0105880:	c1 e2 08             	shl    $0x8,%edx
c0105883:	f7 c2 00 00 00 f0    	test   $0xf0000000,%edx
c0105889:	75 06                	jne    c0105891 <__hi0bits+0x31>
c010588b:	83 c1 04             	add    $0x4,%ecx
c010588e:	c1 e2 04             	shl    $0x4,%edx
c0105891:	f7 c2 00 00 00 c0    	test   $0xc0000000,%edx
c0105897:	75 06                	jne    c010589f <__hi0bits+0x3f>
c0105899:	83 c1 02             	add    $0x2,%ecx
c010589c:	c1 e2 02             	shl    $0x2,%edx
c010589f:	85 d2                	test   %edx,%edx
c01058a1:	89 c8                	mov    %ecx,%eax
c01058a3:	78 0d                	js     c01058b2 <__hi0bits+0x52>
c01058a5:	81 e2 00 00 00 40    	and    $0x40000000,%edx
c01058ab:	b8 20 00 00 00       	mov    $0x20,%eax
c01058b0:	75 06                	jne    c01058b8 <__hi0bits+0x58>
c01058b2:	5d                   	pop    %ebp
c01058b3:	c3                   	ret    
c01058b4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c01058b8:	8d 41 01             	lea    0x1(%ecx),%eax
c01058bb:	5d                   	pop    %ebp
c01058bc:	c3                   	ret    
c01058bd:	8d 76 00             	lea    0x0(%esi),%esi

c01058c0 <__lo0bits>:
c01058c0:	55                   	push   %ebp
c01058c1:	89 e5                	mov    %esp,%ebp
c01058c3:	53                   	push   %ebx
c01058c4:	8b 5d 08             	mov    0x8(%ebp),%ebx
c01058c7:	8b 13                	mov    (%ebx),%edx
c01058c9:	f6 c2 07             	test   $0x7,%dl
c01058cc:	74 1a                	je     c01058e8 <__lo0bits+0x28>
c01058ce:	31 c0                	xor    %eax,%eax
c01058d0:	f6 c2 01             	test   $0x1,%dl
c01058d3:	75 0f                	jne    c01058e4 <__lo0bits+0x24>
c01058d5:	f6 c2 02             	test   $0x2,%dl
c01058d8:	75 56                	jne    c0105930 <__lo0bits+0x70>
c01058da:	c1 ea 02             	shr    $0x2,%edx
c01058dd:	b8 02 00 00 00       	mov    $0x2,%eax
c01058e2:	89 13                	mov    %edx,(%ebx)
c01058e4:	5b                   	pop    %ebx
c01058e5:	5d                   	pop    %ebp
c01058e6:	c3                   	ret    
c01058e7:	90                   	nop
c01058e8:	31 c9                	xor    %ecx,%ecx
c01058ea:	66 85 d2             	test   %dx,%dx
c01058ed:	75 05                	jne    c01058f4 <__lo0bits+0x34>
c01058ef:	c1 ea 10             	shr    $0x10,%edx
c01058f2:	b1 10                	mov    $0x10,%cl
c01058f4:	84 d2                	test   %dl,%dl
c01058f6:	75 06                	jne    c01058fe <__lo0bits+0x3e>
c01058f8:	83 c1 08             	add    $0x8,%ecx
c01058fb:	c1 ea 08             	shr    $0x8,%edx
c01058fe:	f6 c2 0f             	test   $0xf,%dl
c0105901:	75 06                	jne    c0105909 <__lo0bits+0x49>
c0105903:	83 c1 04             	add    $0x4,%ecx
c0105906:	c1 ea 04             	shr    $0x4,%edx
c0105909:	f6 c2 03             	test   $0x3,%dl
c010590c:	75 06                	jne    c0105914 <__lo0bits+0x54>
c010590e:	83 c1 02             	add    $0x2,%ecx
c0105911:	c1 ea 02             	shr    $0x2,%edx
c0105914:	f6 c2 01             	test   $0x1,%dl
c0105917:	75 0c                	jne    c0105925 <__lo0bits+0x65>
c0105919:	d1 ea                	shr    %edx
c010591b:	b8 20 00 00 00       	mov    $0x20,%eax
c0105920:	74 c2                	je     c01058e4 <__lo0bits+0x24>
c0105922:	83 c1 01             	add    $0x1,%ecx
c0105925:	89 13                	mov    %edx,(%ebx)
c0105927:	89 c8                	mov    %ecx,%eax
c0105929:	5b                   	pop    %ebx
c010592a:	5d                   	pop    %ebp
c010592b:	c3                   	ret    
c010592c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0105930:	d1 ea                	shr    %edx
c0105932:	b0 01                	mov    $0x1,%al
c0105934:	89 13                	mov    %edx,(%ebx)
c0105936:	5b                   	pop    %ebx
c0105937:	5d                   	pop    %ebp
c0105938:	c3                   	ret    
c0105939:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

c0105940 <__i2b>:
c0105940:	55                   	push   %ebp
c0105941:	89 e5                	mov    %esp,%ebp
c0105943:	83 ec 18             	sub    $0x18,%esp
c0105946:	8b 45 08             	mov    0x8(%ebp),%eax
c0105949:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c0105950:	00 
c0105951:	89 04 24             	mov    %eax,(%esp)
c0105954:	e8 67 fc ff ff       	call   c01055c0 <_Balloc>
c0105959:	8b 55 0c             	mov    0xc(%ebp),%edx
c010595c:	89 50 14             	mov    %edx,0x14(%eax)
c010595f:	c7 40 10 01 00 00 00 	movl   $0x1,0x10(%eax)
c0105966:	c9                   	leave  
c0105967:	c3                   	ret    
c0105968:	90                   	nop
c0105969:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

c0105970 <__multiply>:
c0105970:	55                   	push   %ebp
c0105971:	89 e5                	mov    %esp,%ebp
c0105973:	57                   	push   %edi
c0105974:	56                   	push   %esi
c0105975:	53                   	push   %ebx
c0105976:	83 ec 3c             	sub    $0x3c,%esp
c0105979:	8b 75 0c             	mov    0xc(%ebp),%esi
c010597c:	8b 45 10             	mov    0x10(%ebp),%eax
c010597f:	8b 7e 10             	mov    0x10(%esi),%edi
c0105982:	8b 58 10             	mov    0x10(%eax),%ebx
c0105985:	39 df                	cmp    %ebx,%edi
c0105987:	7d 0e                	jge    c0105997 <__multiply+0x27>
c0105989:	89 f8                	mov    %edi,%eax
c010598b:	89 df                	mov    %ebx,%edi
c010598d:	89 c3                	mov    %eax,%ebx
c010598f:	89 f0                	mov    %esi,%eax
c0105991:	8b 75 10             	mov    0x10(%ebp),%esi
c0105994:	89 45 10             	mov    %eax,0x10(%ebp)
c0105997:	8d 04 1f             	lea    (%edi,%ebx,1),%eax
c010599a:	3b 46 08             	cmp    0x8(%esi),%eax
c010599d:	89 45 c8             	mov    %eax,-0x38(%ebp)
c01059a0:	0f 9f c0             	setg   %al
c01059a3:	0f b6 c0             	movzbl %al,%eax
c01059a6:	03 46 04             	add    0x4(%esi),%eax
c01059a9:	89 44 24 04          	mov    %eax,0x4(%esp)
c01059ad:	8b 45 08             	mov    0x8(%ebp),%eax
c01059b0:	89 04 24             	mov    %eax,(%esp)
c01059b3:	e8 08 fc ff ff       	call   c01055c0 <_Balloc>
c01059b8:	8b 55 c8             	mov    -0x38(%ebp),%edx
c01059bb:	89 45 c0             	mov    %eax,-0x40(%ebp)
c01059be:	8d 40 14             	lea    0x14(%eax),%eax
c01059c1:	8d 14 90             	lea    (%eax,%edx,4),%edx
c01059c4:	89 d1                	mov    %edx,%ecx
c01059c6:	39 c8                	cmp    %ecx,%eax
c01059c8:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c01059cb:	89 55 c4             	mov    %edx,-0x3c(%ebp)
c01059ce:	73 15                	jae    c01059e5 <__multiply+0x75>
c01059d0:	8b 55 c4             	mov    -0x3c(%ebp),%edx
c01059d3:	90                   	nop
c01059d4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c01059d8:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
c01059de:	83 c0 04             	add    $0x4,%eax
c01059e1:	39 c2                	cmp    %eax,%edx
c01059e3:	77 f3                	ja     c01059d8 <__multiply+0x68>
c01059e5:	8d 46 14             	lea    0x14(%esi),%eax
c01059e8:	89 45 d0             	mov    %eax,-0x30(%ebp)
c01059eb:	8d 04 b8             	lea    (%eax,%edi,4),%eax
c01059ee:	89 45 dc             	mov    %eax,-0x24(%ebp)
c01059f1:	8b 45 10             	mov    0x10(%ebp),%eax
c01059f4:	83 c0 14             	add    $0x14,%eax
c01059f7:	8d 3c 98             	lea    (%eax,%ebx,4),%edi
c01059fa:	39 f8                	cmp    %edi,%eax
c01059fc:	89 45 d8             	mov    %eax,-0x28(%ebp)
c01059ff:	89 7d cc             	mov    %edi,-0x34(%ebp)
c0105a02:	0f 83 e8 00 00 00    	jae    c0105af0 <__multiply+0x180>
c0105a08:	8b 45 d8             	mov    -0x28(%ebp),%eax
c0105a0b:	8b 00                	mov    (%eax),%eax
c0105a0d:	0f b7 f8             	movzwl %ax,%edi
c0105a10:	85 ff                	test   %edi,%edi
c0105a12:	89 7d e4             	mov    %edi,-0x1c(%ebp)
c0105a15:	74 5a                	je     c0105a71 <__multiply+0x101>
c0105a17:	8b 55 d4             	mov    -0x2c(%ebp),%edx
c0105a1a:	31 db                	xor    %ebx,%ebx
c0105a1c:	8b 75 d0             	mov    -0x30(%ebp),%esi
c0105a1f:	eb 09                	jmp    c0105a2a <__multiply+0xba>
c0105a21:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0105a28:	89 fa                	mov    %edi,%edx
c0105a2a:	8b 0e                	mov    (%esi),%ecx
c0105a2c:	83 c6 04             	add    $0x4,%esi
c0105a2f:	0f b7 3a             	movzwl (%edx),%edi
c0105a32:	0f b7 c1             	movzwl %cx,%eax
c0105a35:	0f af 45 e4          	imul   -0x1c(%ebp),%eax
c0105a39:	c1 e9 10             	shr    $0x10,%ecx
c0105a3c:	0f af 4d e4          	imul   -0x1c(%ebp),%ecx
c0105a40:	01 f8                	add    %edi,%eax
c0105a42:	01 d8                	add    %ebx,%eax
c0105a44:	8b 1a                	mov    (%edx),%ebx
c0105a46:	8d 7a 04             	lea    0x4(%edx),%edi
c0105a49:	c1 eb 10             	shr    $0x10,%ebx
c0105a4c:	01 d9                	add    %ebx,%ecx
c0105a4e:	89 c3                	mov    %eax,%ebx
c0105a50:	c1 eb 10             	shr    $0x10,%ebx
c0105a53:	0f b7 c0             	movzwl %ax,%eax
c0105a56:	01 d9                	add    %ebx,%ecx
c0105a58:	89 cb                	mov    %ecx,%ebx
c0105a5a:	c1 e1 10             	shl    $0x10,%ecx
c0105a5d:	09 c1                	or     %eax,%ecx
c0105a5f:	c1 eb 10             	shr    $0x10,%ebx
c0105a62:	39 75 dc             	cmp    %esi,-0x24(%ebp)
c0105a65:	89 0a                	mov    %ecx,(%edx)
c0105a67:	77 bf                	ja     c0105a28 <__multiply+0xb8>
c0105a69:	8b 45 d8             	mov    -0x28(%ebp),%eax
c0105a6c:	89 5a 04             	mov    %ebx,0x4(%edx)
c0105a6f:	8b 00                	mov    (%eax),%eax
c0105a71:	c1 e8 10             	shr    $0x10,%eax
c0105a74:	85 c0                	test   %eax,%eax
c0105a76:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0105a79:	74 61                	je     c0105adc <__multiply+0x16c>
c0105a7b:	8b 45 d4             	mov    -0x2c(%ebp),%eax
c0105a7e:	31 ff                	xor    %edi,%edi
c0105a80:	89 fe                	mov    %edi,%esi
c0105a82:	8b 10                	mov    (%eax),%edx
c0105a84:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0105a87:	8b 45 d0             	mov    -0x30(%ebp),%eax
c0105a8a:	89 d3                	mov    %edx,%ebx
c0105a8c:	eb 05                	jmp    c0105a93 <__multiply+0x123>
c0105a8e:	66 90                	xchg   %ax,%ax
c0105a90:	89 4d e0             	mov    %ecx,-0x20(%ebp)
c0105a93:	0f b7 08             	movzwl (%eax),%ecx
c0105a96:	c1 eb 10             	shr    $0x10,%ebx
c0105a99:	0f b7 d2             	movzwl %dx,%edx
c0105a9c:	0f af 4d e4          	imul   -0x1c(%ebp),%ecx
c0105aa0:	83 c0 04             	add    $0x4,%eax
c0105aa3:	8d 3c 19             	lea    (%ecx,%ebx,1),%edi
c0105aa6:	01 f7                	add    %esi,%edi
c0105aa8:	8b 75 e0             	mov    -0x20(%ebp),%esi
c0105aab:	89 fb                	mov    %edi,%ebx
c0105aad:	c1 e3 10             	shl    $0x10,%ebx
c0105ab0:	09 d3                	or     %edx,%ebx
c0105ab2:	89 1e                	mov    %ebx,(%esi)
c0105ab4:	8b 5e 04             	mov    0x4(%esi),%ebx
c0105ab7:	8d 4e 04             	lea    0x4(%esi),%ecx
c0105aba:	0f b7 50 fe          	movzwl -0x2(%eax),%edx
c0105abe:	c1 ef 10             	shr    $0x10,%edi
c0105ac1:	0f af 55 e4          	imul   -0x1c(%ebp),%edx
c0105ac5:	0f b7 f3             	movzwl %bx,%esi
c0105ac8:	01 f2                	add    %esi,%edx
c0105aca:	01 fa                	add    %edi,%edx
c0105acc:	89 d6                	mov    %edx,%esi
c0105ace:	c1 ee 10             	shr    $0x10,%esi
c0105ad1:	39 45 dc             	cmp    %eax,-0x24(%ebp)
c0105ad4:	77 ba                	ja     c0105a90 <__multiply+0x120>
c0105ad6:	8b 45 e0             	mov    -0x20(%ebp),%eax
c0105ad9:	89 50 04             	mov    %edx,0x4(%eax)
c0105adc:	83 45 d8 04          	addl   $0x4,-0x28(%ebp)
c0105ae0:	8b 45 d8             	mov    -0x28(%ebp),%eax
c0105ae3:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
c0105ae7:	39 45 cc             	cmp    %eax,-0x34(%ebp)
c0105aea:	0f 87 18 ff ff ff    	ja     c0105a08 <__multiply+0x98>
c0105af0:	8b 75 c8             	mov    -0x38(%ebp),%esi
c0105af3:	85 f6                	test   %esi,%esi
c0105af5:	7e 29                	jle    c0105b20 <__multiply+0x1b0>
c0105af7:	8b 7d c4             	mov    -0x3c(%ebp),%edi
c0105afa:	8b 5f fc             	mov    -0x4(%edi),%ebx
c0105afd:	85 db                	test   %ebx,%ebx
c0105aff:	75 1f                	jne    c0105b20 <__multiply+0x1b0>
c0105b01:	8b 55 c8             	mov    -0x38(%ebp),%edx
c0105b04:	89 d0                	mov    %edx,%eax
c0105b06:	c1 e0 02             	shl    $0x2,%eax
c0105b09:	29 c7                	sub    %eax,%edi
c0105b0b:	89 f8                	mov    %edi,%eax
c0105b0d:	eb 09                	jmp    c0105b18 <__multiply+0x1a8>
c0105b0f:	90                   	nop
c0105b10:	8b 4c 90 fc          	mov    -0x4(%eax,%edx,4),%ecx
c0105b14:	85 c9                	test   %ecx,%ecx
c0105b16:	75 05                	jne    c0105b1d <__multiply+0x1ad>
c0105b18:	83 ea 01             	sub    $0x1,%edx
c0105b1b:	75 f3                	jne    c0105b10 <__multiply+0x1a0>
c0105b1d:	89 55 c8             	mov    %edx,-0x38(%ebp)
c0105b20:	8b 45 c0             	mov    -0x40(%ebp),%eax
c0105b23:	8b 7d c8             	mov    -0x38(%ebp),%edi
c0105b26:	89 78 10             	mov    %edi,0x10(%eax)
c0105b29:	83 c4 3c             	add    $0x3c,%esp
c0105b2c:	5b                   	pop    %ebx
c0105b2d:	5e                   	pop    %esi
c0105b2e:	5f                   	pop    %edi
c0105b2f:	5d                   	pop    %ebp
c0105b30:	c3                   	ret    
c0105b31:	eb 0d                	jmp    c0105b40 <__pow5mult>
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

c0105b40 <__pow5mult>:
c0105b40:	55                   	push   %ebp
c0105b41:	89 e5                	mov    %esp,%ebp
c0105b43:	57                   	push   %edi
c0105b44:	56                   	push   %esi
c0105b45:	53                   	push   %ebx
c0105b46:	83 ec 2c             	sub    $0x2c,%esp
c0105b49:	8b 5d 10             	mov    0x10(%ebp),%ebx
c0105b4c:	8b 4d 08             	mov    0x8(%ebp),%ecx
c0105b4f:	8b 7d 0c             	mov    0xc(%ebp),%edi
c0105b52:	89 d8                	mov    %ebx,%eax
c0105b54:	83 e0 03             	and    $0x3,%eax
c0105b57:	0f 85 a3 00 00 00    	jne    c0105c00 <__pow5mult+0xc0>
c0105b5d:	c1 fb 02             	sar    $0x2,%ebx
c0105b60:	85 db                	test   %ebx,%ebx
c0105b62:	74 5c                	je     c0105bc0 <__pow5mult+0x80>
c0105b64:	8b 71 48             	mov    0x48(%ecx),%esi
c0105b67:	85 f6                	test   %esi,%esi
c0105b69:	0f 84 bd 00 00 00    	je     c0105c2c <__pow5mult+0xec>
c0105b6f:	f6 c3 01             	test   $0x1,%bl
c0105b72:	75 15                	jne    c0105b89 <__pow5mult+0x49>
c0105b74:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0105b78:	d1 fb                	sar    %ebx
c0105b7a:	74 44                	je     c0105bc0 <__pow5mult+0x80>
c0105b7c:	8b 06                	mov    (%esi),%eax
c0105b7e:	85 c0                	test   %eax,%eax
c0105b80:	74 4e                	je     c0105bd0 <__pow5mult+0x90>
c0105b82:	89 c6                	mov    %eax,%esi
c0105b84:	f6 c3 01             	test   $0x1,%bl
c0105b87:	74 ef                	je     c0105b78 <__pow5mult+0x38>
c0105b89:	89 0c 24             	mov    %ecx,(%esp)
c0105b8c:	89 74 24 08          	mov    %esi,0x8(%esp)
c0105b90:	89 7c 24 04          	mov    %edi,0x4(%esp)
c0105b94:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c0105b97:	e8 d4 fd ff ff       	call   c0105970 <__multiply>
c0105b9c:	85 ff                	test   %edi,%edi
c0105b9e:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c0105ba1:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0105ba4:	74 52                	je     c0105bf8 <__pow5mult+0xb8>
c0105ba6:	8b 57 04             	mov    0x4(%edi),%edx
c0105ba9:	d1 fb                	sar    %ebx
c0105bab:	8b 41 4c             	mov    0x4c(%ecx),%eax
c0105bae:	8d 04 90             	lea    (%eax,%edx,4),%eax
c0105bb1:	8b 10                	mov    (%eax),%edx
c0105bb3:	89 17                	mov    %edx,(%edi)
c0105bb5:	89 38                	mov    %edi,(%eax)
c0105bb7:	8b 7d e0             	mov    -0x20(%ebp),%edi
c0105bba:	75 c0                	jne    c0105b7c <__pow5mult+0x3c>
c0105bbc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0105bc0:	83 c4 2c             	add    $0x2c,%esp
c0105bc3:	89 f8                	mov    %edi,%eax
c0105bc5:	5b                   	pop    %ebx
c0105bc6:	5e                   	pop    %esi
c0105bc7:	5f                   	pop    %edi
c0105bc8:	5d                   	pop    %ebp
c0105bc9:	c3                   	ret    
c0105bca:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0105bd0:	89 74 24 08          	mov    %esi,0x8(%esp)
c0105bd4:	89 74 24 04          	mov    %esi,0x4(%esp)
c0105bd8:	89 0c 24             	mov    %ecx,(%esp)
c0105bdb:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c0105bde:	e8 8d fd ff ff       	call   c0105970 <__multiply>
c0105be3:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c0105be6:	89 06                	mov    %eax,(%esi)
c0105be8:	89 c6                	mov    %eax,%esi
c0105bea:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
c0105bf0:	eb 92                	jmp    c0105b84 <__pow5mult+0x44>
c0105bf2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0105bf8:	8b 7d e0             	mov    -0x20(%ebp),%edi
c0105bfb:	e9 78 ff ff ff       	jmp    c0105b78 <__pow5mult+0x38>
c0105c00:	8b 04 85 5c 89 10 c0 	mov    -0x3fef76a4(,%eax,4),%eax
c0105c07:	89 7c 24 04          	mov    %edi,0x4(%esp)
c0105c0b:	89 0c 24             	mov    %ecx,(%esp)
c0105c0e:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c0105c15:	00 
c0105c16:	89 44 24 08          	mov    %eax,0x8(%esp)
c0105c1a:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c0105c1d:	e8 5e fa ff ff       	call   c0105680 <__multadd>
c0105c22:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c0105c25:	89 c7                	mov    %eax,%edi
c0105c27:	e9 31 ff ff ff       	jmp    c0105b5d <__pow5mult+0x1d>
c0105c2c:	89 0c 24             	mov    %ecx,(%esp)
c0105c2f:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c0105c36:	00 
c0105c37:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c0105c3a:	e8 81 f9 ff ff       	call   c01055c0 <_Balloc>
c0105c3f:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c0105c42:	c7 40 14 71 02 00 00 	movl   $0x271,0x14(%eax)
c0105c49:	89 c6                	mov    %eax,%esi
c0105c4b:	c7 40 10 01 00 00 00 	movl   $0x1,0x10(%eax)
c0105c52:	89 41 48             	mov    %eax,0x48(%ecx)
c0105c55:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
c0105c5b:	e9 0f ff ff ff       	jmp    c0105b6f <__pow5mult+0x2f>

c0105c60 <__lshift>:
c0105c60:	55                   	push   %ebp
c0105c61:	89 e5                	mov    %esp,%ebp
c0105c63:	57                   	push   %edi
c0105c64:	56                   	push   %esi
c0105c65:	53                   	push   %ebx
c0105c66:	83 ec 2c             	sub    $0x2c,%esp
c0105c69:	8b 45 0c             	mov    0xc(%ebp),%eax
c0105c6c:	8b 75 10             	mov    0x10(%ebp),%esi
c0105c6f:	89 c7                	mov    %eax,%edi
c0105c71:	8b 50 04             	mov    0x4(%eax),%edx
c0105c74:	8b 40 10             	mov    0x10(%eax),%eax
c0105c77:	89 f3                	mov    %esi,%ebx
c0105c79:	c1 fb 05             	sar    $0x5,%ebx
c0105c7c:	01 d8                	add    %ebx,%eax
c0105c7e:	89 45 d0             	mov    %eax,-0x30(%ebp)
c0105c81:	83 c0 01             	add    $0x1,%eax
c0105c84:	89 c1                	mov    %eax,%ecx
c0105c86:	89 45 d8             	mov    %eax,-0x28(%ebp)
c0105c89:	8b 47 08             	mov    0x8(%edi),%eax
c0105c8c:	39 c1                	cmp    %eax,%ecx
c0105c8e:	7e 09                	jle    c0105c99 <__lshift+0x39>
c0105c90:	01 c0                	add    %eax,%eax
c0105c92:	83 c2 01             	add    $0x1,%edx
c0105c95:	39 c1                	cmp    %eax,%ecx
c0105c97:	7f f7                	jg     c0105c90 <__lshift+0x30>
c0105c99:	8b 45 08             	mov    0x8(%ebp),%eax
c0105c9c:	89 54 24 04          	mov    %edx,0x4(%esp)
c0105ca0:	89 04 24             	mov    %eax,(%esp)
c0105ca3:	e8 18 f9 ff ff       	call   c01055c0 <_Balloc>
c0105ca8:	85 db                	test   %ebx,%ebx
c0105caa:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c0105cad:	8d 50 14             	lea    0x14(%eax),%edx
c0105cb0:	7e 17                	jle    c0105cc9 <__lshift+0x69>
c0105cb2:	31 c0                	xor    %eax,%eax
c0105cb4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0105cb8:	c7 04 82 00 00 00 00 	movl   $0x0,(%edx,%eax,4)
c0105cbf:	83 c0 01             	add    $0x1,%eax
c0105cc2:	39 d8                	cmp    %ebx,%eax
c0105cc4:	75 f2                	jne    c0105cb8 <__lshift+0x58>
c0105cc6:	8d 14 82             	lea    (%edx,%eax,4),%edx
c0105cc9:	8b 7d 0c             	mov    0xc(%ebp),%edi
c0105ccc:	8b 45 0c             	mov    0xc(%ebp),%eax
c0105ccf:	8b 4f 10             	mov    0x10(%edi),%ecx
c0105cd2:	83 c0 14             	add    $0x14,%eax
c0105cd5:	83 e6 1f             	and    $0x1f,%esi
c0105cd8:	89 75 e0             	mov    %esi,-0x20(%ebp)
c0105cdb:	8d 3c 88             	lea    (%eax,%ecx,4),%edi
c0105cde:	89 7d e4             	mov    %edi,-0x1c(%ebp)
c0105ce1:	74 7d                	je     c0105d60 <__lshift+0x100>
c0105ce3:	c7 45 dc 20 00 00 00 	movl   $0x20,-0x24(%ebp)
c0105cea:	29 75 dc             	sub    %esi,-0x24(%ebp)
c0105ced:	31 f6                	xor    %esi,%esi
c0105cef:	eb 09                	jmp    c0105cfa <__lshift+0x9a>
c0105cf1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0105cf8:	89 fa                	mov    %edi,%edx
c0105cfa:	8b 18                	mov    (%eax),%ebx
c0105cfc:	83 c0 04             	add    $0x4,%eax
c0105cff:	0f b6 4d e0          	movzbl -0x20(%ebp),%ecx
c0105d03:	8d 7a 04             	lea    0x4(%edx),%edi
c0105d06:	d3 e3                	shl    %cl,%ebx
c0105d08:	0f b6 4d dc          	movzbl -0x24(%ebp),%ecx
c0105d0c:	09 f3                	or     %esi,%ebx
c0105d0e:	89 1a                	mov    %ebx,(%edx)
c0105d10:	8b 70 fc             	mov    -0x4(%eax),%esi
c0105d13:	d3 ee                	shr    %cl,%esi
c0105d15:	39 45 e4             	cmp    %eax,-0x1c(%ebp)
c0105d18:	77 de                	ja     c0105cf8 <__lshift+0x98>
c0105d1a:	8b 45 d0             	mov    -0x30(%ebp),%eax
c0105d1d:	89 72 04             	mov    %esi,0x4(%edx)
c0105d20:	83 c0 02             	add    $0x2,%eax
c0105d23:	85 f6                	test   %esi,%esi
c0105d25:	0f 44 45 d8          	cmove  -0x28(%ebp),%eax
c0105d29:	89 45 d8             	mov    %eax,-0x28(%ebp)
c0105d2c:	8b 45 d8             	mov    -0x28(%ebp),%eax
c0105d2f:	8b 7d d4             	mov    -0x2c(%ebp),%edi
c0105d32:	8b 75 0c             	mov    0xc(%ebp),%esi
c0105d35:	83 e8 01             	sub    $0x1,%eax
c0105d38:	89 47 10             	mov    %eax,0x10(%edi)
c0105d3b:	8b 45 0c             	mov    0xc(%ebp),%eax
c0105d3e:	8b 50 04             	mov    0x4(%eax),%edx
c0105d41:	8b 45 08             	mov    0x8(%ebp),%eax
c0105d44:	8b 40 4c             	mov    0x4c(%eax),%eax
c0105d47:	8d 04 90             	lea    (%eax,%edx,4),%eax
c0105d4a:	8b 10                	mov    (%eax),%edx
c0105d4c:	89 16                	mov    %edx,(%esi)
c0105d4e:	89 30                	mov    %esi,(%eax)
c0105d50:	83 c4 2c             	add    $0x2c,%esp
c0105d53:	89 f8                	mov    %edi,%eax
c0105d55:	5b                   	pop    %ebx
c0105d56:	5e                   	pop    %esi
c0105d57:	5f                   	pop    %edi
c0105d58:	5d                   	pop    %ebp
c0105d59:	c3                   	ret    
c0105d5a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0105d60:	8b 5d e4             	mov    -0x1c(%ebp),%ebx
c0105d63:	90                   	nop
c0105d64:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0105d68:	83 c0 04             	add    $0x4,%eax
c0105d6b:	8b 48 fc             	mov    -0x4(%eax),%ecx
c0105d6e:	83 c2 04             	add    $0x4,%edx
c0105d71:	39 c3                	cmp    %eax,%ebx
c0105d73:	89 4a fc             	mov    %ecx,-0x4(%edx)
c0105d76:	77 f0                	ja     c0105d68 <__lshift+0x108>
c0105d78:	eb b2                	jmp    c0105d2c <__lshift+0xcc>
c0105d7a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

c0105d80 <__mcmp>:
c0105d80:	55                   	push   %ebp
c0105d81:	89 e5                	mov    %esp,%ebp
c0105d83:	8b 4d 08             	mov    0x8(%ebp),%ecx
c0105d86:	8b 55 0c             	mov    0xc(%ebp),%edx
c0105d89:	53                   	push   %ebx
c0105d8a:	8b 41 10             	mov    0x10(%ecx),%eax
c0105d8d:	8b 5a 10             	mov    0x10(%edx),%ebx
c0105d90:	29 d8                	sub    %ebx,%eax
c0105d92:	85 c0                	test   %eax,%eax
c0105d94:	75 27                	jne    c0105dbd <__mcmp+0x3d>
c0105d96:	c1 e3 02             	shl    $0x2,%ebx
c0105d99:	83 c1 14             	add    $0x14,%ecx
c0105d9c:	8d 04 19             	lea    (%ecx,%ebx,1),%eax
c0105d9f:	8d 54 1a 14          	lea    0x14(%edx,%ebx,1),%edx
c0105da3:	eb 07                	jmp    c0105dac <__mcmp+0x2c>
c0105da5:	8d 76 00             	lea    0x0(%esi),%esi
c0105da8:	39 c1                	cmp    %eax,%ecx
c0105daa:	73 14                	jae    c0105dc0 <__mcmp+0x40>
c0105dac:	83 ea 04             	sub    $0x4,%edx
c0105daf:	83 e8 04             	sub    $0x4,%eax
c0105db2:	8b 1a                	mov    (%edx),%ebx
c0105db4:	39 18                	cmp    %ebx,(%eax)
c0105db6:	74 f0                	je     c0105da8 <__mcmp+0x28>
c0105db8:	19 c0                	sbb    %eax,%eax
c0105dba:	83 c8 01             	or     $0x1,%eax
c0105dbd:	5b                   	pop    %ebx
c0105dbe:	5d                   	pop    %ebp
c0105dbf:	c3                   	ret    
c0105dc0:	31 c0                	xor    %eax,%eax
c0105dc2:	5b                   	pop    %ebx
c0105dc3:	5d                   	pop    %ebp
c0105dc4:	c3                   	ret    
c0105dc5:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0105dc9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0105dd0 <__mdiff>:
c0105dd0:	55                   	push   %ebp
c0105dd1:	89 e5                	mov    %esp,%ebp
c0105dd3:	57                   	push   %edi
c0105dd4:	56                   	push   %esi
c0105dd5:	53                   	push   %ebx
c0105dd6:	83 ec 2c             	sub    $0x2c,%esp
c0105dd9:	8b 75 0c             	mov    0xc(%ebp),%esi
c0105ddc:	8b 5d 10             	mov    0x10(%ebp),%ebx
c0105ddf:	89 34 24             	mov    %esi,(%esp)
c0105de2:	89 5c 24 04          	mov    %ebx,0x4(%esp)
c0105de6:	e8 95 ff ff ff       	call   c0105d80 <__mcmp>
c0105deb:	85 c0                	test   %eax,%eax
c0105ded:	0f 84 25 01 00 00    	je     c0105f18 <__mdiff+0x148>
c0105df3:	0f 88 0f 01 00 00    	js     c0105f08 <__mdiff+0x138>
c0105df9:	31 ff                	xor    %edi,%edi
c0105dfb:	8b 46 04             	mov    0x4(%esi),%eax
c0105dfe:	83 c6 14             	add    $0x14,%esi
c0105e01:	89 44 24 04          	mov    %eax,0x4(%esp)
c0105e05:	8b 45 08             	mov    0x8(%ebp),%eax
c0105e08:	89 04 24             	mov    %eax,(%esp)
c0105e0b:	e8 b0 f7 ff ff       	call   c01055c0 <_Balloc>
c0105e10:	8d 4b 14             	lea    0x14(%ebx),%ecx
c0105e13:	89 c2                	mov    %eax,%edx
c0105e15:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c0105e18:	89 78 0c             	mov    %edi,0xc(%eax)
c0105e1b:	8b 46 fc             	mov    -0x4(%esi),%eax
c0105e1e:	89 75 e4             	mov    %esi,-0x1c(%ebp)
c0105e21:	89 45 dc             	mov    %eax,-0x24(%ebp)
c0105e24:	8d 04 86             	lea    (%esi,%eax,4),%eax
c0105e27:	89 45 d8             	mov    %eax,-0x28(%ebp)
c0105e2a:	8b 43 10             	mov    0x10(%ebx),%eax
c0105e2d:	31 db                	xor    %ebx,%ebx
c0105e2f:	8d 04 81             	lea    (%ecx,%eax,4),%eax
c0105e32:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0105e35:	89 d0                	mov    %edx,%eax
c0105e37:	83 c0 14             	add    $0x14,%eax
c0105e3a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0105e40:	8b 75 e4             	mov    -0x1c(%ebp),%esi
c0105e43:	83 c0 04             	add    $0x4,%eax
c0105e46:	83 c1 04             	add    $0x4,%ecx
c0105e49:	83 45 e4 04          	addl   $0x4,-0x1c(%ebp)
c0105e4d:	8b 3e                	mov    (%esi),%edi
c0105e4f:	8b 71 fc             	mov    -0x4(%ecx),%esi
c0105e52:	0f b7 d7             	movzwl %di,%edx
c0105e55:	01 da                	add    %ebx,%edx
c0105e57:	0f b7 de             	movzwl %si,%ebx
c0105e5a:	29 da                	sub    %ebx,%edx
c0105e5c:	c1 ef 10             	shr    $0x10,%edi
c0105e5f:	89 d3                	mov    %edx,%ebx
c0105e61:	c1 ee 10             	shr    $0x10,%esi
c0105e64:	0f b7 d2             	movzwl %dx,%edx
c0105e67:	c1 fb 10             	sar    $0x10,%ebx
c0105e6a:	29 f7                	sub    %esi,%edi
c0105e6c:	01 df                	add    %ebx,%edi
c0105e6e:	89 fb                	mov    %edi,%ebx
c0105e70:	c1 e7 10             	shl    $0x10,%edi
c0105e73:	09 d7                	or     %edx,%edi
c0105e75:	c1 fb 10             	sar    $0x10,%ebx
c0105e78:	39 4d e0             	cmp    %ecx,-0x20(%ebp)
c0105e7b:	89 78 fc             	mov    %edi,-0x4(%eax)
c0105e7e:	77 c0                	ja     c0105e40 <__mdiff+0x70>
c0105e80:	8b 75 e4             	mov    -0x1c(%ebp),%esi
c0105e83:	8b 4d d8             	mov    -0x28(%ebp),%ecx
c0105e86:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0105e89:	89 75 e0             	mov    %esi,-0x20(%ebp)
c0105e8c:	39 f1                	cmp    %esi,%ecx
c0105e8e:	76 3f                	jbe    c0105ecf <__mdiff+0xff>
c0105e90:	8b 3e                	mov    (%esi),%edi
c0105e92:	83 c6 04             	add    $0x4,%esi
c0105e95:	83 c0 04             	add    $0x4,%eax
c0105e98:	0f b7 d7             	movzwl %di,%edx
c0105e9b:	01 da                	add    %ebx,%edx
c0105e9d:	89 d3                	mov    %edx,%ebx
c0105e9f:	0f b7 d2             	movzwl %dx,%edx
c0105ea2:	c1 fb 10             	sar    $0x10,%ebx
c0105ea5:	c1 ef 10             	shr    $0x10,%edi
c0105ea8:	01 df                	add    %ebx,%edi
c0105eaa:	89 fb                	mov    %edi,%ebx
c0105eac:	c1 e7 10             	shl    $0x10,%edi
c0105eaf:	09 d7                	or     %edx,%edi
c0105eb1:	c1 fb 10             	sar    $0x10,%ebx
c0105eb4:	39 f1                	cmp    %esi,%ecx
c0105eb6:	89 78 fc             	mov    %edi,-0x4(%eax)
c0105eb9:	77 d5                	ja     c0105e90 <__mdiff+0xc0>
c0105ebb:	8b 45 e0             	mov    -0x20(%ebp),%eax
c0105ebe:	8b 4d d8             	mov    -0x28(%ebp),%ecx
c0105ec1:	f7 d0                	not    %eax
c0105ec3:	01 c8                	add    %ecx,%eax
c0105ec5:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c0105ec8:	c1 e8 02             	shr    $0x2,%eax
c0105ecb:	8d 44 81 04          	lea    0x4(%ecx,%eax,4),%eax
c0105ecf:	85 ff                	test   %edi,%edi
c0105ed1:	75 23                	jne    c0105ef6 <__mdiff+0x126>
c0105ed3:	8b 4d dc             	mov    -0x24(%ebp),%ecx
c0105ed6:	8d 14 8d 00 00 00 00 	lea    0x0(,%ecx,4),%edx
c0105edd:	29 d0                	sub    %edx,%eax
c0105edf:	89 ca                	mov    %ecx,%edx
c0105ee1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0105ee8:	83 ea 01             	sub    $0x1,%edx
c0105eeb:	8b 4c 90 fc          	mov    -0x4(%eax,%edx,4),%ecx
c0105eef:	85 c9                	test   %ecx,%ecx
c0105ef1:	74 f5                	je     c0105ee8 <__mdiff+0x118>
c0105ef3:	89 55 dc             	mov    %edx,-0x24(%ebp)
c0105ef6:	8b 45 d4             	mov    -0x2c(%ebp),%eax
c0105ef9:	8b 4d dc             	mov    -0x24(%ebp),%ecx
c0105efc:	89 48 10             	mov    %ecx,0x10(%eax)
c0105eff:	83 c4 2c             	add    $0x2c,%esp
c0105f02:	5b                   	pop    %ebx
c0105f03:	5e                   	pop    %esi
c0105f04:	5f                   	pop    %edi
c0105f05:	5d                   	pop    %ebp
c0105f06:	c3                   	ret    
c0105f07:	90                   	nop
c0105f08:	89 f0                	mov    %esi,%eax
c0105f0a:	bf 01 00 00 00       	mov    $0x1,%edi
c0105f0f:	89 de                	mov    %ebx,%esi
c0105f11:	89 c3                	mov    %eax,%ebx
c0105f13:	e9 e3 fe ff ff       	jmp    c0105dfb <__mdiff+0x2b>
c0105f18:	8b 45 08             	mov    0x8(%ebp),%eax
c0105f1b:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c0105f22:	00 
c0105f23:	89 04 24             	mov    %eax,(%esp)
c0105f26:	e8 95 f6 ff ff       	call   c01055c0 <_Balloc>
c0105f2b:	c7 40 10 01 00 00 00 	movl   $0x1,0x10(%eax)
c0105f32:	c7 40 14 00 00 00 00 	movl   $0x0,0x14(%eax)
c0105f39:	83 c4 2c             	add    $0x2c,%esp
c0105f3c:	5b                   	pop    %ebx
c0105f3d:	5e                   	pop    %esi
c0105f3e:	5f                   	pop    %edi
c0105f3f:	5d                   	pop    %ebp
c0105f40:	c3                   	ret    
c0105f41:	eb 0d                	jmp    c0105f50 <__ulp>
c0105f43:	90                   	nop
c0105f44:	90                   	nop
c0105f45:	90                   	nop
c0105f46:	90                   	nop
c0105f47:	90                   	nop
c0105f48:	90                   	nop
c0105f49:	90                   	nop
c0105f4a:	90                   	nop
c0105f4b:	90                   	nop
c0105f4c:	90                   	nop
c0105f4d:	90                   	nop
c0105f4e:	90                   	nop
c0105f4f:	90                   	nop

c0105f50 <__ulp>:
c0105f50:	55                   	push   %ebp
c0105f51:	89 e5                	mov    %esp,%ebp
c0105f53:	83 ec 08             	sub    $0x8,%esp
c0105f56:	dd 45 08             	fldl   0x8(%ebp)
c0105f59:	dd 5d f8             	fstpl  -0x8(%ebp)
c0105f5c:	8b 4d fc             	mov    -0x4(%ebp),%ecx
c0105f5f:	81 e1 00 00 f0 7f    	and    $0x7ff00000,%ecx
c0105f65:	81 e9 00 00 40 03    	sub    $0x3400000,%ecx
c0105f6b:	85 c9                	test   %ecx,%ecx
c0105f6d:	7e 11                	jle    c0105f80 <__ulp+0x30>
c0105f6f:	89 4d fc             	mov    %ecx,-0x4(%ebp)
c0105f72:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
c0105f79:	dd 45 f8             	fldl   -0x8(%ebp)
c0105f7c:	c9                   	leave  
c0105f7d:	c3                   	ret    
c0105f7e:	66 90                	xchg   %ax,%ax
c0105f80:	f7 d9                	neg    %ecx
c0105f82:	c1 f9 14             	sar    $0x14,%ecx
c0105f85:	83 f9 13             	cmp    $0x13,%ecx
c0105f88:	7e 26                	jle    c0105fb0 <__ulp+0x60>
c0105f8a:	83 f9 32             	cmp    $0x32,%ecx
c0105f8d:	b8 01 00 00 00       	mov    $0x1,%eax
c0105f92:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
c0105f99:	7f 0b                	jg     c0105fa6 <__ulp+0x56>
c0105f9b:	ba 33 00 00 00       	mov    $0x33,%edx
c0105fa0:	29 ca                	sub    %ecx,%edx
c0105fa2:	89 d1                	mov    %edx,%ecx
c0105fa4:	d3 e0                	shl    %cl,%eax
c0105fa6:	89 45 f8             	mov    %eax,-0x8(%ebp)
c0105fa9:	dd 45 f8             	fldl   -0x8(%ebp)
c0105fac:	c9                   	leave  
c0105fad:	c3                   	ret    
c0105fae:	66 90                	xchg   %ax,%ax
c0105fb0:	b8 00 00 08 00       	mov    $0x80000,%eax
c0105fb5:	d3 f8                	sar    %cl,%eax
c0105fb7:	89 45 fc             	mov    %eax,-0x4(%ebp)
c0105fba:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
c0105fc1:	dd 45 f8             	fldl   -0x8(%ebp)
c0105fc4:	c9                   	leave  
c0105fc5:	c3                   	ret    
c0105fc6:	8d 76 00             	lea    0x0(%esi),%esi
c0105fc9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0105fd0 <__b2d>:
c0105fd0:	55                   	push   %ebp
c0105fd1:	89 e5                	mov    %esp,%ebp
c0105fd3:	57                   	push   %edi
c0105fd4:	56                   	push   %esi
c0105fd5:	53                   	push   %ebx
c0105fd6:	83 ec 18             	sub    $0x18,%esp
c0105fd9:	8b 45 08             	mov    0x8(%ebp),%eax
c0105fdc:	8d 78 14             	lea    0x14(%eax),%edi
c0105fdf:	8b 40 10             	mov    0x10(%eax),%eax
c0105fe2:	8d 1c 87             	lea    (%edi,%eax,4),%ebx
c0105fe5:	8b 73 fc             	mov    -0x4(%ebx),%esi
c0105fe8:	8d 43 fc             	lea    -0x4(%ebx),%eax
c0105feb:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0105fee:	89 34 24             	mov    %esi,(%esp)
c0105ff1:	e8 6a f8 ff ff       	call   c0105860 <__hi0bits>
c0105ff6:	8b 4d 0c             	mov    0xc(%ebp),%ecx
c0105ff9:	ba 20 00 00 00       	mov    $0x20,%edx
c0105ffe:	29 c2                	sub    %eax,%edx
c0106000:	83 f8 0a             	cmp    $0xa,%eax
c0106003:	89 11                	mov    %edx,(%ecx)
c0106005:	7f 41                	jg     c0106048 <__b2d+0x78>
c0106007:	b9 0b 00 00 00       	mov    $0xb,%ecx
c010600c:	89 f2                	mov    %esi,%edx
c010600e:	29 c1                	sub    %eax,%ecx
c0106010:	d3 ea                	shr    %cl,%edx
c0106012:	81 ca 00 00 f0 3f    	or     $0x3ff00000,%edx
c0106018:	89 55 ec             	mov    %edx,-0x14(%ebp)
c010601b:	31 d2                	xor    %edx,%edx
c010601d:	3b 7d e4             	cmp    -0x1c(%ebp),%edi
c0106020:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
c0106027:	73 05                	jae    c010602e <__b2d+0x5e>
c0106029:	8b 53 f8             	mov    -0x8(%ebx),%edx
c010602c:	d3 ea                	shr    %cl,%edx
c010602e:	8d 48 15             	lea    0x15(%eax),%ecx
c0106031:	d3 e6                	shl    %cl,%esi
c0106033:	09 f2                	or     %esi,%edx
c0106035:	89 55 e8             	mov    %edx,-0x18(%ebp)
c0106038:	dd 45 e8             	fldl   -0x18(%ebp)
c010603b:	83 c4 18             	add    $0x18,%esp
c010603e:	5b                   	pop    %ebx
c010603f:	5e                   	pop    %esi
c0106040:	5f                   	pop    %edi
c0106041:	5d                   	pop    %ebp
c0106042:	c3                   	ret    
c0106043:	90                   	nop
c0106044:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0106048:	31 d2                	xor    %edx,%edx
c010604a:	3b 7d e4             	cmp    -0x1c(%ebp),%edi
c010604d:	73 09                	jae    c0106058 <__b2d+0x88>
c010604f:	8b 53 f8             	mov    -0x8(%ebx),%edx
c0106052:	8d 4b f8             	lea    -0x8(%ebx),%ecx
c0106055:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c0106058:	89 c3                	mov    %eax,%ebx
c010605a:	83 eb 0b             	sub    $0xb,%ebx
c010605d:	89 5d e0             	mov    %ebx,-0x20(%ebp)
c0106060:	74 4e                	je     c01060b0 <__b2d+0xe0>
c0106062:	0f b6 4d e0          	movzbl -0x20(%ebp),%ecx
c0106066:	bb 2b 00 00 00       	mov    $0x2b,%ebx
c010606b:	29 c3                	sub    %eax,%ebx
c010606d:	89 d0                	mov    %edx,%eax
c010606f:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
c0106076:	d3 e6                	shl    %cl,%esi
c0106078:	89 d9                	mov    %ebx,%ecx
c010607a:	d3 e8                	shr    %cl,%eax
c010607c:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c010607f:	81 ce 00 00 f0 3f    	or     $0x3ff00000,%esi
c0106085:	09 c6                	or     %eax,%esi
c0106087:	31 c0                	xor    %eax,%eax
c0106089:	89 75 ec             	mov    %esi,-0x14(%ebp)
c010608c:	39 f9                	cmp    %edi,%ecx
c010608e:	76 07                	jbe    c0106097 <__b2d+0xc7>
c0106090:	8b 41 fc             	mov    -0x4(%ecx),%eax
c0106093:	89 d9                	mov    %ebx,%ecx
c0106095:	d3 e8                	shr    %cl,%eax
c0106097:	0f b6 4d e0          	movzbl -0x20(%ebp),%ecx
c010609b:	d3 e2                	shl    %cl,%edx
c010609d:	09 d0                	or     %edx,%eax
c010609f:	89 45 e8             	mov    %eax,-0x18(%ebp)
c01060a2:	dd 45 e8             	fldl   -0x18(%ebp)
c01060a5:	83 c4 18             	add    $0x18,%esp
c01060a8:	5b                   	pop    %ebx
c01060a9:	5e                   	pop    %esi
c01060aa:	5f                   	pop    %edi
c01060ab:	5d                   	pop    %ebp
c01060ac:	c3                   	ret    
c01060ad:	8d 76 00             	lea    0x0(%esi),%esi
c01060b0:	81 ce 00 00 f0 3f    	or     $0x3ff00000,%esi
c01060b6:	89 75 ec             	mov    %esi,-0x14(%ebp)
c01060b9:	89 55 e8             	mov    %edx,-0x18(%ebp)
c01060bc:	dd 45 e8             	fldl   -0x18(%ebp)
c01060bf:	83 c4 18             	add    $0x18,%esp
c01060c2:	5b                   	pop    %ebx
c01060c3:	5e                   	pop    %esi
c01060c4:	5f                   	pop    %edi
c01060c5:	5d                   	pop    %ebp
c01060c6:	c3                   	ret    
c01060c7:	89 f6                	mov    %esi,%esi
c01060c9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c01060d0 <__d2b>:
c01060d0:	55                   	push   %ebp
c01060d1:	89 e5                	mov    %esp,%ebp
c01060d3:	57                   	push   %edi
c01060d4:	56                   	push   %esi
c01060d5:	53                   	push   %ebx
c01060d6:	83 ec 2c             	sub    $0x2c,%esp
c01060d9:	8b 45 08             	mov    0x8(%ebp),%eax
c01060dc:	dd 45 0c             	fldl   0xc(%ebp)
c01060df:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c01060e6:	00 
c01060e7:	dd 5d d0             	fstpl  -0x30(%ebp)
c01060ea:	89 04 24             	mov    %eax,(%esp)
c01060ed:	e8 ce f4 ff ff       	call   c01055c0 <_Balloc>
c01060f2:	8b 5d d4             	mov    -0x2c(%ebp),%ebx
c01060f5:	89 c6                	mov    %eax,%esi
c01060f7:	89 d8                	mov    %ebx,%eax
c01060f9:	81 e3 ff ff ff 7f    	and    $0x7fffffff,%ebx
c01060ff:	25 ff ff 0f 00       	and    $0xfffff,%eax
c0106104:	c1 eb 14             	shr    $0x14,%ebx
c0106107:	85 db                	test   %ebx,%ebx
c0106109:	74 05                	je     c0106110 <__d2b+0x40>
c010610b:	0d 00 00 10 00       	or     $0x100000,%eax
c0106110:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0106113:	8b 45 d0             	mov    -0x30(%ebp),%eax
c0106116:	85 c0                	test   %eax,%eax
c0106118:	74 56                	je     c0106170 <__d2b+0xa0>
c010611a:	89 45 e0             	mov    %eax,-0x20(%ebp)
c010611d:	8d 45 e0             	lea    -0x20(%ebp),%eax
c0106120:	89 04 24             	mov    %eax,(%esp)
c0106123:	e8 98 f7 ff ff       	call   c01058c0 <__lo0bits>
c0106128:	85 c0                	test   %eax,%eax
c010612a:	0f 85 90 00 00 00    	jne    c01061c0 <__d2b+0xf0>
c0106130:	8b 55 e0             	mov    -0x20(%ebp),%edx
c0106133:	89 56 14             	mov    %edx,0x14(%esi)
c0106136:	8b 55 e4             	mov    -0x1c(%ebp),%edx
c0106139:	83 fa 01             	cmp    $0x1,%edx
c010613c:	19 ff                	sbb    %edi,%edi
c010613e:	83 c7 02             	add    $0x2,%edi
c0106141:	85 db                	test   %ebx,%ebx
c0106143:	89 56 18             	mov    %edx,0x18(%esi)
c0106146:	89 7e 10             	mov    %edi,0x10(%esi)
c0106149:	74 49                	je     c0106194 <__d2b+0xc4>
c010614b:	8b 4d 14             	mov    0x14(%ebp),%ecx
c010614e:	8d 94 18 cd fb ff ff 	lea    -0x433(%eax,%ebx,1),%edx
c0106155:	89 11                	mov    %edx,(%ecx)
c0106157:	ba 35 00 00 00       	mov    $0x35,%edx
c010615c:	29 c2                	sub    %eax,%edx
c010615e:	8b 45 18             	mov    0x18(%ebp),%eax
c0106161:	89 10                	mov    %edx,(%eax)
c0106163:	83 c4 2c             	add    $0x2c,%esp
c0106166:	89 f0                	mov    %esi,%eax
c0106168:	5b                   	pop    %ebx
c0106169:	5e                   	pop    %esi
c010616a:	5f                   	pop    %edi
c010616b:	5d                   	pop    %ebp
c010616c:	c3                   	ret    
c010616d:	8d 76 00             	lea    0x0(%esi),%esi
c0106170:	8d 45 e4             	lea    -0x1c(%ebp),%eax
c0106173:	bf 01 00 00 00       	mov    $0x1,%edi
c0106178:	89 04 24             	mov    %eax,(%esp)
c010617b:	e8 40 f7 ff ff       	call   c01058c0 <__lo0bits>
c0106180:	8b 55 e4             	mov    -0x1c(%ebp),%edx
c0106183:	c7 46 10 01 00 00 00 	movl   $0x1,0x10(%esi)
c010618a:	89 56 14             	mov    %edx,0x14(%esi)
c010618d:	83 c0 20             	add    $0x20,%eax
c0106190:	85 db                	test   %ebx,%ebx
c0106192:	75 b7                	jne    c010614b <__d2b+0x7b>
c0106194:	8b 4d 14             	mov    0x14(%ebp),%ecx
c0106197:	2d 32 04 00 00       	sub    $0x432,%eax
c010619c:	89 01                	mov    %eax,(%ecx)
c010619e:	8b 44 be 10          	mov    0x10(%esi,%edi,4),%eax
c01061a2:	c1 e7 05             	shl    $0x5,%edi
c01061a5:	89 04 24             	mov    %eax,(%esp)
c01061a8:	e8 b3 f6 ff ff       	call   c0105860 <__hi0bits>
c01061ad:	29 c7                	sub    %eax,%edi
c01061af:	8b 45 18             	mov    0x18(%ebp),%eax
c01061b2:	89 38                	mov    %edi,(%eax)
c01061b4:	83 c4 2c             	add    $0x2c,%esp
c01061b7:	89 f0                	mov    %esi,%eax
c01061b9:	5b                   	pop    %ebx
c01061ba:	5e                   	pop    %esi
c01061bb:	5f                   	pop    %edi
c01061bc:	5d                   	pop    %ebp
c01061bd:	c3                   	ret    
c01061be:	66 90                	xchg   %ax,%ax
c01061c0:	8b 55 e4             	mov    -0x1c(%ebp),%edx
c01061c3:	b9 20 00 00 00       	mov    $0x20,%ecx
c01061c8:	29 c1                	sub    %eax,%ecx
c01061ca:	89 d7                	mov    %edx,%edi
c01061cc:	d3 e7                	shl    %cl,%edi
c01061ce:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c01061d1:	09 f9                	or     %edi,%ecx
c01061d3:	89 4e 14             	mov    %ecx,0x14(%esi)
c01061d6:	89 c1                	mov    %eax,%ecx
c01061d8:	d3 ea                	shr    %cl,%edx
c01061da:	89 55 e4             	mov    %edx,-0x1c(%ebp)
c01061dd:	e9 57 ff ff ff       	jmp    c0106139 <__d2b+0x69>
c01061e2:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c01061e9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c01061f0 <__ratio>:
c01061f0:	55                   	push   %ebp
c01061f1:	89 e5                	mov    %esp,%ebp
c01061f3:	56                   	push   %esi
c01061f4:	53                   	push   %ebx
c01061f5:	83 ec 30             	sub    $0x30,%esp
c01061f8:	8b 75 08             	mov    0x8(%ebp),%esi
c01061fb:	8d 45 f0             	lea    -0x10(%ebp),%eax
c01061fe:	8b 5d 0c             	mov    0xc(%ebp),%ebx
c0106201:	89 44 24 04          	mov    %eax,0x4(%esp)
c0106205:	89 34 24             	mov    %esi,(%esp)
c0106208:	e8 c3 fd ff ff       	call   c0105fd0 <__b2d>
c010620d:	8d 45 f4             	lea    -0xc(%ebp),%eax
c0106210:	89 44 24 04          	mov    %eax,0x4(%esp)
c0106214:	89 1c 24             	mov    %ebx,(%esp)
c0106217:	dd 55 e0             	fstl   -0x20(%ebp)
c010621a:	dd 5d d8             	fstpl  -0x28(%ebp)
c010621d:	e8 ae fd ff ff       	call   c0105fd0 <__b2d>
c0106222:	8b 46 10             	mov    0x10(%esi),%eax
c0106225:	2b 43 10             	sub    0x10(%ebx),%eax
c0106228:	8b 55 f0             	mov    -0x10(%ebp),%edx
c010622b:	2b 55 f4             	sub    -0xc(%ebp),%edx
c010622e:	c1 e0 05             	shl    $0x5,%eax
c0106231:	01 d0                	add    %edx,%eax
c0106233:	dd 55 d0             	fstl   -0x30(%ebp)
c0106236:	85 c0                	test   %eax,%eax
c0106238:	dd 45 d8             	fldl   -0x28(%ebp)
c010623b:	7e 1b                	jle    c0106258 <__ratio+0x68>
c010623d:	dd d8                	fstp   %st(0)
c010623f:	c1 e0 14             	shl    $0x14,%eax
c0106242:	01 45 e4             	add    %eax,-0x1c(%ebp)
c0106245:	dd 45 e0             	fldl   -0x20(%ebp)
c0106248:	83 c4 30             	add    $0x30,%esp
c010624b:	5b                   	pop    %ebx
c010624c:	de f1                	fdivp  %st,%st(1)
c010624e:	5e                   	pop    %esi
c010624f:	5d                   	pop    %ebp
c0106250:	c3                   	ret    
c0106251:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0106258:	dd d9                	fstp   %st(1)
c010625a:	c1 e0 14             	shl    $0x14,%eax
c010625d:	29 45 d4             	sub    %eax,-0x2c(%ebp)
c0106260:	dd 45 d0             	fldl   -0x30(%ebp)
c0106263:	83 c4 30             	add    $0x30,%esp
c0106266:	5b                   	pop    %ebx
c0106267:	de f9                	fdivrp %st,%st(1)
c0106269:	5e                   	pop    %esi
c010626a:	5d                   	pop    %ebp
c010626b:	c3                   	ret    
c010626c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

c0106270 <_mprec_log10>:
c0106270:	55                   	push   %ebp
c0106271:	89 e5                	mov    %esp,%ebp
c0106273:	8b 45 08             	mov    0x8(%ebp),%eax
c0106276:	83 f8 17             	cmp    $0x17,%eax
c0106279:	7e 1d                	jle    c0106298 <_mprec_log10+0x28>
c010627b:	d9 e8                	fld1   
c010627d:	d9 05 18 89 10 c0    	flds   0xc0108918
c0106283:	90                   	nop
c0106284:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0106288:	83 e8 01             	sub    $0x1,%eax
c010628b:	dc c9                	fmul   %st,%st(1)
c010628d:	75 f9                	jne    c0106288 <_mprec_log10+0x18>
c010628f:	dd d8                	fstp   %st(0)
c0106291:	5d                   	pop    %ebp
c0106292:	c3                   	ret    
c0106293:	90                   	nop
c0106294:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0106298:	dd 04 c5 00 8a 10 c0 	fldl   -0x3fef7600(,%eax,8)
c010629f:	5d                   	pop    %ebp
c01062a0:	c3                   	ret    
c01062a1:	eb 0d                	jmp    c01062b0 <__copybits>
c01062a3:	90                   	nop
c01062a4:	90                   	nop
c01062a5:	90                   	nop
c01062a6:	90                   	nop
c01062a7:	90                   	nop
c01062a8:	90                   	nop
c01062a9:	90                   	nop
c01062aa:	90                   	nop
c01062ab:	90                   	nop
c01062ac:	90                   	nop
c01062ad:	90                   	nop
c01062ae:	90                   	nop
c01062af:	90                   	nop

c01062b0 <__copybits>:
c01062b0:	55                   	push   %ebp
c01062b1:	89 e5                	mov    %esp,%ebp
c01062b3:	57                   	push   %edi
c01062b4:	8b 7d 10             	mov    0x10(%ebp),%edi
c01062b7:	56                   	push   %esi
c01062b8:	8b 75 0c             	mov    0xc(%ebp),%esi
c01062bb:	8b 45 08             	mov    0x8(%ebp),%eax
c01062be:	53                   	push   %ebx
c01062bf:	8b 4f 10             	mov    0x10(%edi),%ecx
c01062c2:	8d 56 ff             	lea    -0x1(%esi),%edx
c01062c5:	c1 fa 05             	sar    $0x5,%edx
c01062c8:	8d 74 90 04          	lea    0x4(%eax,%edx,4),%esi
c01062cc:	8d 57 14             	lea    0x14(%edi),%edx
c01062cf:	8d 1c 8a             	lea    (%edx,%ecx,4),%ebx
c01062d2:	39 da                	cmp    %ebx,%edx
c01062d4:	73 34                	jae    c010630a <__copybits+0x5a>
c01062d6:	89 c1                	mov    %eax,%ecx
c01062d8:	83 c2 04             	add    $0x4,%edx
c01062db:	8b 42 fc             	mov    -0x4(%edx),%eax
c01062de:	83 c1 04             	add    $0x4,%ecx
c01062e1:	39 d3                	cmp    %edx,%ebx
c01062e3:	89 41 fc             	mov    %eax,-0x4(%ecx)
c01062e6:	77 f0                	ja     c01062d8 <__copybits+0x28>
c01062e8:	8b 45 08             	mov    0x8(%ebp),%eax
c01062eb:	29 fb                	sub    %edi,%ebx
c01062ed:	8d 53 eb             	lea    -0x15(%ebx),%edx
c01062f0:	c1 ea 02             	shr    $0x2,%edx
c01062f3:	8d 44 90 04          	lea    0x4(%eax,%edx,4),%eax
c01062f7:	39 c6                	cmp    %eax,%esi
c01062f9:	76 13                	jbe    c010630e <__copybits+0x5e>
c01062fb:	90                   	nop
c01062fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0106300:	83 c0 04             	add    $0x4,%eax
c0106303:	c7 40 fc 00 00 00 00 	movl   $0x0,-0x4(%eax)
c010630a:	39 c6                	cmp    %eax,%esi
c010630c:	77 f2                	ja     c0106300 <__copybits+0x50>
c010630e:	5b                   	pop    %ebx
c010630f:	5e                   	pop    %esi
c0106310:	5f                   	pop    %edi
c0106311:	5d                   	pop    %ebp
c0106312:	c3                   	ret    
c0106313:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0106319:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0106320 <__any_on>:
c0106320:	55                   	push   %ebp
c0106321:	89 e5                	mov    %esp,%ebp
c0106323:	8b 45 08             	mov    0x8(%ebp),%eax
c0106326:	57                   	push   %edi
c0106327:	56                   	push   %esi
c0106328:	53                   	push   %ebx
c0106329:	8b 5d 0c             	mov    0xc(%ebp),%ebx
c010632c:	8d 50 14             	lea    0x14(%eax),%edx
c010632f:	8b 40 10             	mov    0x10(%eax),%eax
c0106332:	c1 fb 05             	sar    $0x5,%ebx
c0106335:	39 d8                	cmp    %ebx,%eax
c0106337:	7d 2f                	jge    c0106368 <__any_on+0x48>
c0106339:	8d 1c 82             	lea    (%edx,%eax,4),%ebx
c010633c:	39 da                	cmp    %ebx,%edx
c010633e:	73 1d                	jae    c010635d <__any_on+0x3d>
c0106340:	8d 43 fc             	lea    -0x4(%ebx),%eax
c0106343:	8b 5b fc             	mov    -0x4(%ebx),%ebx
c0106346:	85 db                	test   %ebx,%ebx
c0106348:	74 0f                	je     c0106359 <__any_on+0x39>
c010634a:	eb 44                	jmp    c0106390 <__any_on+0x70>
c010634c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0106350:	83 e8 04             	sub    $0x4,%eax
c0106353:	8b 08                	mov    (%eax),%ecx
c0106355:	85 c9                	test   %ecx,%ecx
c0106357:	75 37                	jne    c0106390 <__any_on+0x70>
c0106359:	39 c2                	cmp    %eax,%edx
c010635b:	72 f3                	jb     c0106350 <__any_on+0x30>
c010635d:	31 c0                	xor    %eax,%eax
c010635f:	5b                   	pop    %ebx
c0106360:	5e                   	pop    %esi
c0106361:	5f                   	pop    %edi
c0106362:	5d                   	pop    %ebp
c0106363:	c3                   	ret    
c0106364:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0106368:	7e 1e                	jle    c0106388 <__any_on+0x68>
c010636a:	8b 4d 0c             	mov    0xc(%ebp),%ecx
c010636d:	8d 1c 9a             	lea    (%edx,%ebx,4),%ebx
c0106370:	83 e1 1f             	and    $0x1f,%ecx
c0106373:	74 c7                	je     c010633c <__any_on+0x1c>
c0106375:	8b 3b                	mov    (%ebx),%edi
c0106377:	b8 01 00 00 00       	mov    $0x1,%eax
c010637c:	89 fe                	mov    %edi,%esi
c010637e:	d3 ee                	shr    %cl,%esi
c0106380:	d3 e6                	shl    %cl,%esi
c0106382:	39 fe                	cmp    %edi,%esi
c0106384:	75 d9                	jne    c010635f <__any_on+0x3f>
c0106386:	eb b4                	jmp    c010633c <__any_on+0x1c>
c0106388:	8d 1c 9a             	lea    (%edx,%ebx,4),%ebx
c010638b:	eb af                	jmp    c010633c <__any_on+0x1c>
c010638d:	8d 76 00             	lea    0x0(%esi),%esi
c0106390:	5b                   	pop    %ebx
c0106391:	b8 01 00 00 00       	mov    $0x1,%eax
c0106396:	5e                   	pop    %esi
c0106397:	5f                   	pop    %edi
c0106398:	5d                   	pop    %ebp
c0106399:	c3                   	ret    
c010639a:	66 90                	xchg   %ax,%ax
c010639c:	66 90                	xchg   %ax,%ax
c010639e:	66 90                	xchg   %ax,%ax

c01063a0 <_sbrk_r>:
c01063a0:	55                   	push   %ebp
c01063a1:	89 e5                	mov    %esp,%ebp
c01063a3:	83 ec 18             	sub    $0x18,%esp
c01063a6:	8b 45 0c             	mov    0xc(%ebp),%eax
c01063a9:	c7 05 54 20 16 c0 00 	movl   $0x0,0xc0162054
c01063b0:	00 00 00 
c01063b3:	89 04 24             	mov    %eax,(%esp)
c01063b6:	e8 f5 b2 ff ff       	call   c01016b0 <sbrk>
c01063bb:	83 f8 ff             	cmp    $0xffffffff,%eax
c01063be:	74 08                	je     c01063c8 <_sbrk_r+0x28>
c01063c0:	c9                   	leave  
c01063c1:	c3                   	ret    
c01063c2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c01063c8:	8b 15 54 20 16 c0    	mov    0xc0162054,%edx
c01063ce:	85 d2                	test   %edx,%edx
c01063d0:	74 ee                	je     c01063c0 <_sbrk_r+0x20>
c01063d2:	8b 4d 08             	mov    0x8(%ebp),%ecx
c01063d5:	89 11                	mov    %edx,(%ecx)
c01063d7:	c9                   	leave  
c01063d8:	c3                   	ret    
c01063d9:	66 90                	xchg   %ax,%ax
c01063db:	66 90                	xchg   %ax,%ax
c01063dd:	66 90                	xchg   %ax,%ax
c01063df:	90                   	nop

c01063e0 <__fpclassifyd>:
c01063e0:	55                   	push   %ebp
c01063e1:	b8 02 00 00 00       	mov    $0x2,%eax
c01063e6:	89 e5                	mov    %esp,%ebp
c01063e8:	53                   	push   %ebx
c01063e9:	83 ec 0c             	sub    $0xc,%esp
c01063ec:	dd 45 08             	fldl   0x8(%ebp)
c01063ef:	dd 5d f0             	fstpl  -0x10(%ebp)
c01063f2:	8b 55 f0             	mov    -0x10(%ebp),%edx
c01063f5:	8b 4d f4             	mov    -0xc(%ebp),%ecx
c01063f8:	89 d3                	mov    %edx,%ebx
c01063fa:	09 cb                	or     %ecx,%ebx
c01063fc:	75 0a                	jne    c0106408 <__fpclassifyd+0x28>
c01063fe:	83 c4 0c             	add    $0xc,%esp
c0106401:	5b                   	pop    %ebx
c0106402:	5d                   	pop    %ebp
c0106403:	c3                   	ret    
c0106404:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0106408:	85 d2                	test   %edx,%edx
c010640a:	0f 94 c2             	sete   %dl
c010640d:	75 08                	jne    c0106417 <__fpclassifyd+0x37>
c010640f:	81 f9 00 00 00 80    	cmp    $0x80000000,%ecx
c0106415:	74 e7                	je     c01063fe <__fpclassifyd+0x1e>
c0106417:	81 e1 ff ff ff 7f    	and    $0x7fffffff,%ecx
c010641d:	b8 04 00 00 00       	mov    $0x4,%eax
c0106422:	8d 99 00 00 f0 ff    	lea    -0x100000(%ecx),%ebx
c0106428:	81 fb ff ff df 7f    	cmp    $0x7fdfffff,%ebx
c010642e:	76 ce                	jbe    c01063fe <__fpclassifyd+0x1e>
c0106430:	81 f9 ff ff 0f 00    	cmp    $0xfffff,%ecx
c0106436:	b0 03                	mov    $0x3,%al
c0106438:	76 c4                	jbe    c01063fe <__fpclassifyd+0x1e>
c010643a:	31 c0                	xor    %eax,%eax
c010643c:	81 f9 00 00 f0 7f    	cmp    $0x7ff00000,%ecx
c0106442:	0f 94 c0             	sete   %al
c0106445:	21 d0                	and    %edx,%eax
c0106447:	eb b5                	jmp    c01063fe <__fpclassifyd+0x1e>
c0106449:	66 90                	xchg   %ax,%ax
c010644b:	66 90                	xchg   %ax,%ax
c010644d:	66 90                	xchg   %ax,%ax
c010644f:	90                   	nop

c0106450 <strlen>:
c0106450:	55                   	push   %ebp
c0106451:	89 e5                	mov    %esp,%ebp
c0106453:	57                   	push   %edi
c0106454:	8b 55 08             	mov    0x8(%ebp),%edx
c0106457:	89 d7                	mov    %edx,%edi
c0106459:	f7 c7 03 00 00 00    	test   $0x3,%edi
c010645f:	74 25                	je     c0106486 <L5>
c0106461:	8a 0f                	mov    (%edi),%cl
c0106463:	47                   	inc    %edi
c0106464:	84 c9                	test   %cl,%cl
c0106466:	74 56                	je     c01064be <L15>
c0106468:	f7 c7 03 00 00 00    	test   $0x3,%edi
c010646e:	74 16                	je     c0106486 <L5>
c0106470:	8a 0f                	mov    (%edi),%cl
c0106472:	47                   	inc    %edi
c0106473:	84 c9                	test   %cl,%cl
c0106475:	74 47                	je     c01064be <L15>
c0106477:	f7 c7 03 00 00 00    	test   $0x3,%edi
c010647d:	74 07                	je     c0106486 <L5>
c010647f:	8a 0f                	mov    (%edi),%cl
c0106481:	47                   	inc    %edi
c0106482:	84 c9                	test   %cl,%cl
c0106484:	74 38                	je     c01064be <L15>

c0106486 <L5>:
c0106486:	83 ef 04             	sub    $0x4,%edi
c0106489:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

c0106490 <L10>:
c0106490:	83 c7 04             	add    $0x4,%edi
c0106493:	8b 0f                	mov    (%edi),%ecx
c0106495:	8d 81 ff fe fe fe    	lea    -0x1010101(%ecx),%eax
c010649b:	f7 d1                	not    %ecx
c010649d:	21 c8                	and    %ecx,%eax
c010649f:	a9 80 80 80 80       	test   $0x80808080,%eax
c01064a4:	74 ea                	je     c0106490 <L10>
c01064a6:	f7 d1                	not    %ecx
c01064a8:	47                   	inc    %edi
c01064a9:	84 c9                	test   %cl,%cl
c01064ab:	74 11                	je     c01064be <L15>
c01064ad:	47                   	inc    %edi
c01064ae:	c1 e9 08             	shr    $0x8,%ecx
c01064b1:	84 c9                	test   %cl,%cl
c01064b3:	74 09                	je     c01064be <L15>
c01064b5:	47                   	inc    %edi
c01064b6:	c1 e9 08             	shr    $0x8,%ecx
c01064b9:	84 c9                	test   %cl,%cl
c01064bb:	74 01                	je     c01064be <L15>
c01064bd:	47                   	inc    %edi

c01064be <L15>:
c01064be:	29 d7                	sub    %edx,%edi
c01064c0:	8d 47 ff             	lea    -0x1(%edi),%eax
c01064c3:	8d 65 fc             	lea    -0x4(%ebp),%esp
c01064c6:	5f                   	pop    %edi
c01064c7:	c9                   	leave  
c01064c8:	c3                   	ret    
c01064c9:	66 90                	xchg   %ax,%ax
c01064cb:	66 90                	xchg   %ax,%ax
c01064cd:	66 90                	xchg   %ax,%ax
c01064cf:	90                   	nop

c01064d0 <__ssprint_r>:
c01064d0:	55                   	push   %ebp
c01064d1:	89 e5                	mov    %esp,%ebp
c01064d3:	57                   	push   %edi
c01064d4:	56                   	push   %esi
c01064d5:	53                   	push   %ebx
c01064d6:	83 ec 2c             	sub    $0x2c,%esp
c01064d9:	8b 45 10             	mov    0x10(%ebp),%eax
c01064dc:	8b 5d 0c             	mov    0xc(%ebp),%ebx
c01064df:	8b 00                	mov    (%eax),%eax
c01064e1:	89 c7                	mov    %eax,%edi
c01064e3:	8b 45 10             	mov    0x10(%ebp),%eax
c01064e6:	8b 40 08             	mov    0x8(%eax),%eax
c01064e9:	85 c0                	test   %eax,%eax
c01064eb:	0f 84 af 01 00 00    	je     c01066a0 <__ssprint_r+0x1d0>
c01064f1:	31 c9                	xor    %ecx,%ecx
c01064f3:	31 d2                	xor    %edx,%edx
c01064f5:	8b 03                	mov    (%ebx),%eax
c01064f7:	89 ce                	mov    %ecx,%esi
c01064f9:	85 f6                	test   %esi,%esi
c01064fb:	89 55 e4             	mov    %edx,-0x1c(%ebp)
c01064fe:	0f 84 ec 00 00 00    	je     c01065f0 <__ssprint_r+0x120>
c0106504:	8b 53 08             	mov    0x8(%ebx),%edx
c0106507:	39 d6                	cmp    %edx,%esi
c0106509:	0f 82 fc 00 00 00    	jb     c010660b <__ssprint_r+0x13b>
c010650f:	0f b7 4b 0c          	movzwl 0xc(%ebx),%ecx
c0106513:	66 f7 c1 80 04       	test   $0x480,%cx
c0106518:	0f 84 fa 00 00 00    	je     c0106618 <__ssprint_r+0x148>
c010651e:	8b 53 10             	mov    0x10(%ebx),%edx
c0106521:	29 d0                	sub    %edx,%eax
c0106523:	89 45 dc             	mov    %eax,-0x24(%ebp)
c0106526:	8b 43 14             	mov    0x14(%ebx),%eax
c0106529:	89 55 d8             	mov    %edx,-0x28(%ebp)
c010652c:	8d 04 40             	lea    (%eax,%eax,2),%eax
c010652f:	89 c2                	mov    %eax,%edx
c0106531:	c1 ea 1f             	shr    $0x1f,%edx
c0106534:	01 d0                	add    %edx,%eax
c0106536:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0106539:	8b 45 dc             	mov    -0x24(%ebp),%eax
c010653c:	d1 7d e0             	sarl   -0x20(%ebp)
c010653f:	8d 44 06 01          	lea    0x1(%esi,%eax,1),%eax
c0106543:	39 45 e0             	cmp    %eax,-0x20(%ebp)
c0106546:	0f 83 34 01 00 00    	jae    c0106680 <__ssprint_r+0x1b0>
c010654c:	89 45 e0             	mov    %eax,-0x20(%ebp)
c010654f:	80 e5 04             	and    $0x4,%ch
c0106552:	0f 84 c8 00 00 00    	je     c0106620 <__ssprint_r+0x150>
c0106558:	89 44 24 04          	mov    %eax,0x4(%esp)
c010655c:	8b 45 08             	mov    0x8(%ebp),%eax
c010655f:	89 04 24             	mov    %eax,(%esp)
c0106562:	e8 59 e8 ff ff       	call   c0104dc0 <_malloc_r>
c0106567:	85 c0                	test   %eax,%eax
c0106569:	89 c2                	mov    %eax,%edx
c010656b:	0f 84 e1 00 00 00    	je     c0106652 <__ssprint_r+0x182>
c0106571:	8b 45 dc             	mov    -0x24(%ebp),%eax
c0106574:	89 55 d8             	mov    %edx,-0x28(%ebp)
c0106577:	89 44 24 08          	mov    %eax,0x8(%esp)
c010657b:	8b 43 10             	mov    0x10(%ebx),%eax
c010657e:	89 14 24             	mov    %edx,(%esp)
c0106581:	89 44 24 04          	mov    %eax,0x4(%esp)
c0106585:	e8 16 b2 ff ff       	call   c01017a0 <memcpy>
c010658a:	0f b7 43 0c          	movzwl 0xc(%ebx),%eax
c010658e:	8b 55 d8             	mov    -0x28(%ebp),%edx
c0106591:	66 25 7f fb          	and    $0xfb7f,%ax
c0106595:	0c 80                	or     $0x80,%al
c0106597:	66 89 43 0c          	mov    %ax,0xc(%ebx)
c010659b:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c010659e:	8b 45 dc             	mov    -0x24(%ebp),%eax
c01065a1:	89 53 10             	mov    %edx,0x10(%ebx)
c01065a4:	89 4b 14             	mov    %ecx,0x14(%ebx)
c01065a7:	2b 4d dc             	sub    -0x24(%ebp),%ecx
c01065aa:	01 d0                	add    %edx,%eax
c01065ac:	89 03                	mov    %eax,(%ebx)
c01065ae:	89 f2                	mov    %esi,%edx
c01065b0:	89 4b 08             	mov    %ecx,0x8(%ebx)
c01065b3:	89 f1                	mov    %esi,%ecx
c01065b5:	89 4c 24 08          	mov    %ecx,0x8(%esp)
c01065b9:	89 4d e0             	mov    %ecx,-0x20(%ebp)
c01065bc:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c01065bf:	89 04 24             	mov    %eax,(%esp)
c01065c2:	89 55 dc             	mov    %edx,-0x24(%ebp)
c01065c5:	89 4c 24 04          	mov    %ecx,0x4(%esp)
c01065c9:	e8 22 13 00 00       	call   c01078f0 <memmove>
c01065ce:	8b 03                	mov    (%ebx),%eax
c01065d0:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c01065d3:	8b 55 dc             	mov    -0x24(%ebp),%edx
c01065d6:	29 53 08             	sub    %edx,0x8(%ebx)
c01065d9:	01 c8                	add    %ecx,%eax
c01065db:	8b 4d 10             	mov    0x10(%ebp),%ecx
c01065de:	89 03                	mov    %eax,(%ebx)
c01065e0:	8b 51 08             	mov    0x8(%ecx),%edx
c01065e3:	29 f2                	sub    %esi,%edx
c01065e5:	85 d2                	test   %edx,%edx
c01065e7:	89 51 08             	mov    %edx,0x8(%ecx)
c01065ea:	0f 84 98 00 00 00    	je     c0106688 <__ssprint_r+0x1b8>
c01065f0:	8b 77 04             	mov    0x4(%edi),%esi
c01065f3:	83 c7 08             	add    $0x8,%edi
c01065f6:	8b 4f f8             	mov    -0x8(%edi),%ecx
c01065f9:	85 f6                	test   %esi,%esi
c01065fb:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c01065fe:	74 f0                	je     c01065f0 <__ssprint_r+0x120>
c0106600:	8b 53 08             	mov    0x8(%ebx),%edx
c0106603:	39 d6                	cmp    %edx,%esi
c0106605:	0f 83 04 ff ff ff    	jae    c010650f <__ssprint_r+0x3f>
c010660b:	89 f2                	mov    %esi,%edx
c010660d:	89 f1                	mov    %esi,%ecx
c010660f:	eb a4                	jmp    c01065b5 <__ssprint_r+0xe5>
c0106611:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0106618:	89 d1                	mov    %edx,%ecx
c010661a:	eb 99                	jmp    c01065b5 <__ssprint_r+0xe5>
c010661c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0106620:	89 44 24 08          	mov    %eax,0x8(%esp)
c0106624:	8b 45 d8             	mov    -0x28(%ebp),%eax
c0106627:	89 44 24 04          	mov    %eax,0x4(%esp)
c010662b:	8b 45 08             	mov    0x8(%ebp),%eax
c010662e:	89 04 24             	mov    %eax,(%esp)
c0106631:	e8 4a 13 00 00       	call   c0107980 <_realloc_r>
c0106636:	85 c0                	test   %eax,%eax
c0106638:	89 c2                	mov    %eax,%edx
c010663a:	0f 85 5b ff ff ff    	jne    c010659b <__ssprint_r+0xcb>
c0106640:	8b 43 10             	mov    0x10(%ebx),%eax
c0106643:	89 44 24 04          	mov    %eax,0x4(%esp)
c0106647:	8b 45 08             	mov    0x8(%ebp),%eax
c010664a:	89 04 24             	mov    %eax,(%esp)
c010664d:	e8 3e 10 00 00       	call   c0107690 <_free_r>
c0106652:	8b 45 08             	mov    0x8(%ebp),%eax
c0106655:	c7 00 0c 00 00 00    	movl   $0xc,(%eax)
c010665b:	8b 45 10             	mov    0x10(%ebp),%eax
c010665e:	66 83 4b 0c 40       	orw    $0x40,0xc(%ebx)
c0106663:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%eax)
c010666a:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
c0106671:	83 c4 2c             	add    $0x2c,%esp
c0106674:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c0106679:	5b                   	pop    %ebx
c010667a:	5e                   	pop    %esi
c010667b:	5f                   	pop    %edi
c010667c:	5d                   	pop    %ebp
c010667d:	c3                   	ret    
c010667e:	66 90                	xchg   %ax,%ax
c0106680:	8b 45 e0             	mov    -0x20(%ebp),%eax
c0106683:	e9 c7 fe ff ff       	jmp    c010654f <__ssprint_r+0x7f>
c0106688:	c7 41 04 00 00 00 00 	movl   $0x0,0x4(%ecx)
c010668f:	83 c4 2c             	add    $0x2c,%esp
c0106692:	31 c0                	xor    %eax,%eax
c0106694:	5b                   	pop    %ebx
c0106695:	5e                   	pop    %esi
c0106696:	5f                   	pop    %edi
c0106697:	5d                   	pop    %ebp
c0106698:	c3                   	ret    
c0106699:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c01066a0:	8b 45 10             	mov    0x10(%ebp),%eax
c01066a3:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
c01066aa:	83 c4 2c             	add    $0x2c,%esp
c01066ad:	31 c0                	xor    %eax,%eax
c01066af:	5b                   	pop    %ebx
c01066b0:	5e                   	pop    %esi
c01066b1:	5f                   	pop    %edi
c01066b2:	5d                   	pop    %ebp
c01066b3:	c3                   	ret    
c01066b4:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c01066ba:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

c01066c0 <_svfiprintf_r>:
c01066c0:	55                   	push   %ebp
c01066c1:	89 e5                	mov    %esp,%ebp
c01066c3:	57                   	push   %edi
c01066c4:	56                   	push   %esi
c01066c5:	53                   	push   %ebx
c01066c6:	81 ec cc 00 00 00    	sub    $0xcc,%esp
c01066cc:	8b 45 0c             	mov    0xc(%ebp),%eax
c01066cf:	f6 40 0c 80          	testb  $0x80,0xc(%eax)
c01066d3:	74 0b                	je     c01066e0 <_svfiprintf_r+0x20>
c01066d5:	8b 50 10             	mov    0x10(%eax),%edx
c01066d8:	85 d2                	test   %edx,%edx
c01066da:	0f 84 1c 0d 00 00    	je     c01073fc <_svfiprintf_r+0xd3c>
c01066e0:	8d 45 a8             	lea    -0x58(%ebp),%eax
c01066e3:	8d 5d a7             	lea    -0x59(%ebp),%ebx
c01066e6:	89 c6                	mov    %eax,%esi
c01066e8:	89 85 74 ff ff ff    	mov    %eax,-0x8c(%ebp)
c01066ee:	29 d8                	sub    %ebx,%eax
c01066f0:	c7 85 7c ff ff ff 00 	movl   $0x0,-0x84(%ebp)
c01066f7:	00 00 00 
c01066fa:	c7 85 78 ff ff ff 00 	movl   $0x0,-0x88(%ebp)
c0106701:	00 00 00 
c0106704:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c010670b:	00 00 00 
c010670e:	c7 85 50 ff ff ff 00 	movl   $0x0,-0xb0(%ebp)
c0106715:	00 00 00 
c0106718:	89 85 3c ff ff ff    	mov    %eax,-0xc4(%ebp)
c010671e:	8b 45 10             	mov    0x10(%ebp),%eax
c0106721:	8b 5d 10             	mov    0x10(%ebp),%ebx
c0106724:	0f b6 00             	movzbl (%eax),%eax
c0106727:	84 c0                	test   %al,%al
c0106729:	74 58                	je     c0106783 <_svfiprintf_r+0xc3>
c010672b:	3c 25                	cmp    $0x25,%al
c010672d:	75 13                	jne    c0106742 <_svfiprintf_r+0x82>
c010672f:	eb 52                	jmp    c0106783 <_svfiprintf_r+0xc3>
c0106731:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0106738:	84 c0                	test   %al,%al
c010673a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0106740:	74 0a                	je     c010674c <_svfiprintf_r+0x8c>
c0106742:	83 c3 01             	add    $0x1,%ebx
c0106745:	0f b6 03             	movzbl (%ebx),%eax
c0106748:	3c 25                	cmp    $0x25,%al
c010674a:	75 ec                	jne    c0106738 <_svfiprintf_r+0x78>
c010674c:	89 df                	mov    %ebx,%edi
c010674e:	2b 7d 10             	sub    0x10(%ebp),%edi
c0106751:	74 30                	je     c0106783 <_svfiprintf_r+0xc3>
c0106753:	8b 45 10             	mov    0x10(%ebp),%eax
c0106756:	83 c6 08             	add    $0x8,%esi
c0106759:	89 7e fc             	mov    %edi,-0x4(%esi)
c010675c:	01 bd 7c ff ff ff    	add    %edi,-0x84(%ebp)
c0106762:	89 46 f8             	mov    %eax,-0x8(%esi)
c0106765:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c010676b:	83 c0 01             	add    $0x1,%eax
c010676e:	83 f8 07             	cmp    $0x7,%eax
c0106771:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0106777:	0f 8f eb 0a 00 00    	jg     c0107268 <_svfiprintf_r+0xba8>
c010677d:	01 bd 50 ff ff ff    	add    %edi,-0xb0(%ebp)
c0106783:	80 3b 00             	cmpb   $0x0,(%ebx)
c0106786:	0f 84 11 09 00 00    	je     c010709d <_svfiprintf_r+0x9dd>
c010678c:	8d 43 01             	lea    0x1(%ebx),%eax
c010678f:	31 ff                	xor    %edi,%edi
c0106791:	c6 85 71 ff ff ff 00 	movb   $0x0,-0x8f(%ebp)
c0106798:	c7 85 5c ff ff ff ff 	movl   $0xffffffff,-0xa4(%ebp)
c010679f:	ff ff ff 
c01067a2:	c7 85 54 ff ff ff 00 	movl   $0x0,-0xac(%ebp)
c01067a9:	00 00 00 
c01067ac:	c7 85 64 ff ff ff 00 	movl   $0x0,-0x9c(%ebp)
c01067b3:	00 00 00 
c01067b6:	8d 50 01             	lea    0x1(%eax),%edx
c01067b9:	0f be 00             	movsbl (%eax),%eax
c01067bc:	8d 48 e0             	lea    -0x20(%eax),%ecx
c01067bf:	83 f9 58             	cmp    $0x58,%ecx
c01067c2:	0f 87 63 03 00 00    	ja     c0106b2b <_svfiprintf_r+0x46b>
c01067c8:	ff 24 8d c8 8a 10 c0 	jmp    *-0x3fef7538(,%ecx,4)
c01067cf:	90                   	nop
c01067d0:	83 8d 64 ff ff ff 10 	orl    $0x10,-0x9c(%ebp)
c01067d7:	89 d0                	mov    %edx,%eax
c01067d9:	eb db                	jmp    c01067b6 <_svfiprintf_r+0xf6>
c01067db:	8b 45 14             	mov    0x14(%ebp),%eax
c01067de:	8b 5d 14             	mov    0x14(%ebp),%ebx
c01067e1:	8b 00                	mov    (%eax),%eax
c01067e3:	83 c3 04             	add    $0x4,%ebx
c01067e6:	89 5d 14             	mov    %ebx,0x14(%ebp)
c01067e9:	85 c0                	test   %eax,%eax
c01067eb:	89 85 54 ff ff ff    	mov    %eax,-0xac(%ebp)
c01067f1:	79 e4                	jns    c01067d7 <_svfiprintf_r+0x117>
c01067f3:	f7 9d 54 ff ff ff    	negl   -0xac(%ebp)
c01067f9:	83 8d 64 ff ff ff 04 	orl    $0x4,-0x9c(%ebp)
c0106800:	89 d0                	mov    %edx,%eax
c0106802:	eb b2                	jmp    c01067b6 <_svfiprintf_r+0xf6>
c0106804:	bf 2b 00 00 00       	mov    $0x2b,%edi
c0106809:	89 d0                	mov    %edx,%eax
c010680b:	eb a9                	jmp    c01067b6 <_svfiprintf_r+0xf6>
c010680d:	8b 45 14             	mov    0x14(%ebp),%eax
c0106810:	83 8d 64 ff ff ff 02 	orl    $0x2,-0x9c(%ebp)
c0106817:	89 55 10             	mov    %edx,0x10(%ebp)
c010681a:	ba 02 00 00 00       	mov    $0x2,%edx
c010681f:	8b 08                	mov    (%eax),%ecx
c0106821:	83 c0 04             	add    $0x4,%eax
c0106824:	c6 85 72 ff ff ff 30 	movb   $0x30,-0x8e(%ebp)
c010682b:	c6 85 73 ff ff ff 78 	movb   $0x78,-0x8d(%ebp)
c0106832:	89 45 14             	mov    %eax,0x14(%ebp)
c0106835:	c7 85 44 ff ff ff 63 	movl   $0xc0108763,-0xbc(%ebp)
c010683c:	87 10 c0 
c010683f:	90                   	nop
c0106840:	c6 85 71 ff ff ff 00 	movb   $0x0,-0x8f(%ebp)
c0106847:	31 ff                	xor    %edi,%edi
c0106849:	8b 9d 64 ff ff ff    	mov    -0x9c(%ebp),%ebx
c010684f:	89 d8                	mov    %ebx,%eax
c0106851:	24 7f                	and    $0x7f,%al
c0106853:	83 bd 5c ff ff ff 00 	cmpl   $0x0,-0xa4(%ebp)
c010685a:	0f 48 c3             	cmovs  %ebx,%eax
c010685d:	89 85 64 ff ff ff    	mov    %eax,-0x9c(%ebp)
c0106863:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
c0106869:	85 c0                	test   %eax,%eax
c010686b:	75 08                	jne    c0106875 <_svfiprintf_r+0x1b5>
c010686d:	85 c9                	test   %ecx,%ecx
c010686f:	0f 84 03 08 00 00    	je     c0107078 <_svfiprintf_r+0x9b8>
c0106875:	80 fa 01             	cmp    $0x1,%dl
c0106878:	0f 84 8a 0a 00 00    	je     c0107308 <_svfiprintf_r+0xc48>
c010687e:	80 fa 02             	cmp    $0x2,%dl
c0106881:	8d 5d a8             	lea    -0x58(%ebp),%ebx
c0106884:	0f 85 86 01 00 00    	jne    c0106a10 <_svfiprintf_r+0x350>
c010688a:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
c0106890:	89 c8                	mov    %ecx,%eax
c0106892:	83 eb 01             	sub    $0x1,%ebx
c0106895:	83 e0 0f             	and    $0xf,%eax
c0106898:	0f b6 04 02          	movzbl (%edx,%eax,1),%eax
c010689c:	c1 e9 04             	shr    $0x4,%ecx
c010689f:	85 c9                	test   %ecx,%ecx
c01068a1:	88 03                	mov    %al,(%ebx)
c01068a3:	75 eb                	jne    c0106890 <_svfiprintf_r+0x1d0>
c01068a5:	8d 45 a8             	lea    -0x58(%ebp),%eax
c01068a8:	29 d8                	sub    %ebx,%eax
c01068aa:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c01068b0:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
c01068b6:	8b 8d 58 ff ff ff    	mov    -0xa8(%ebp),%ecx
c01068bc:	39 c1                	cmp    %eax,%ecx
c01068be:	0f 4d c1             	cmovge %ecx,%eax
c01068c1:	89 85 60 ff ff ff    	mov    %eax,-0xa0(%ebp)
c01068c7:	89 f8                	mov    %edi,%eax
c01068c9:	3c 01                	cmp    $0x1,%al
c01068cb:	83 9d 60 ff ff ff ff 	sbbl   $0xffffffff,-0xa0(%ebp)
c01068d2:	8b 95 60 ff ff ff    	mov    -0xa0(%ebp),%edx
c01068d8:	8b 8d 64 ff ff ff    	mov    -0x9c(%ebp),%ecx
c01068de:	89 d0                	mov    %edx,%eax
c01068e0:	89 cf                	mov    %ecx,%edi
c01068e2:	83 c0 02             	add    $0x2,%eax
c01068e5:	83 e7 02             	and    $0x2,%edi
c01068e8:	89 bd 4c ff ff ff    	mov    %edi,-0xb4(%ebp)
c01068ee:	89 cf                	mov    %ecx,%edi
c01068f0:	0f 44 c2             	cmove  %edx,%eax
c01068f3:	81 e7 84 00 00 00    	and    $0x84,%edi
c01068f9:	89 85 60 ff ff ff    	mov    %eax,-0xa0(%ebp)
c01068ff:	89 bd 48 ff ff ff    	mov    %edi,-0xb8(%ebp)
c0106905:	0f 85 cd 04 00 00    	jne    c0106dd8 <_svfiprintf_r+0x718>
c010690b:	8b bd 54 ff ff ff    	mov    -0xac(%ebp),%edi
c0106911:	2b bd 60 ff ff ff    	sub    -0xa0(%ebp),%edi
c0106917:	85 ff                	test   %edi,%edi
c0106919:	0f 8e b9 04 00 00    	jle    c0106dd8 <_svfiprintf_r+0x718>
c010691f:	83 ff 10             	cmp    $0x10,%edi
c0106922:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0106928:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c010692e:	7e 7c                	jle    c01069ac <_svfiprintf_r+0x2ec>
c0106930:	89 9d 40 ff ff ff    	mov    %ebx,-0xc0(%ebp)
c0106936:	89 f1                	mov    %esi,%ecx
c0106938:	8b 5d 08             	mov    0x8(%ebp),%ebx
c010693b:	8b 75 0c             	mov    0xc(%ebp),%esi
c010693e:	eb 08                	jmp    c0106948 <_svfiprintf_r+0x288>
c0106940:	83 ef 10             	sub    $0x10,%edi
c0106943:	83 ff 10             	cmp    $0x10,%edi
c0106946:	7e 5c                	jle    c01069a4 <_svfiprintf_r+0x2e4>
c0106948:	83 c0 01             	add    $0x1,%eax
c010694b:	83 c2 10             	add    $0x10,%edx
c010694e:	c7 01 3c 8c 10 c0    	movl   $0xc0108c3c,(%ecx)
c0106954:	83 c1 08             	add    $0x8,%ecx
c0106957:	c7 41 fc 10 00 00 00 	movl   $0x10,-0x4(%ecx)
c010695e:	83 f8 07             	cmp    $0x7,%eax
c0106961:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0106967:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c010696d:	7e d1                	jle    c0106940 <_svfiprintf_r+0x280>
c010696f:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0106975:	89 44 24 08          	mov    %eax,0x8(%esp)
c0106979:	89 74 24 04          	mov    %esi,0x4(%esp)
c010697d:	89 1c 24             	mov    %ebx,(%esp)
c0106980:	e8 4b fb ff ff       	call   c01064d0 <__ssprint_r>
c0106985:	85 c0                	test   %eax,%eax
c0106987:	0f 85 3b 07 00 00    	jne    c01070c8 <_svfiprintf_r+0xa08>
c010698d:	83 ef 10             	sub    $0x10,%edi
c0106990:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0106996:	83 ff 10             	cmp    $0x10,%edi
c0106999:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c010699f:	8d 4d a8             	lea    -0x58(%ebp),%ecx
c01069a2:	7f a4                	jg     c0106948 <_svfiprintf_r+0x288>
c01069a4:	8b 9d 40 ff ff ff    	mov    -0xc0(%ebp),%ebx
c01069aa:	89 ce                	mov    %ecx,%esi
c01069ac:	83 c0 01             	add    $0x1,%eax
c01069af:	01 fa                	add    %edi,%edx
c01069b1:	c7 06 3c 8c 10 c0    	movl   $0xc0108c3c,(%esi)
c01069b7:	83 c6 08             	add    $0x8,%esi
c01069ba:	89 7e fc             	mov    %edi,-0x4(%esi)
c01069bd:	83 f8 07             	cmp    $0x7,%eax
c01069c0:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c01069c6:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c01069cc:	0f 8e 12 04 00 00    	jle    c0106de4 <_svfiprintf_r+0x724>
c01069d2:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c01069d8:	89 44 24 08          	mov    %eax,0x8(%esp)
c01069dc:	8b 45 0c             	mov    0xc(%ebp),%eax
c01069df:	89 44 24 04          	mov    %eax,0x4(%esp)
c01069e3:	8b 45 08             	mov    0x8(%ebp),%eax
c01069e6:	89 04 24             	mov    %eax,(%esp)
c01069e9:	e8 e2 fa ff ff       	call   c01064d0 <__ssprint_r>
c01069ee:	85 c0                	test   %eax,%eax
c01069f0:	0f 85 d2 06 00 00    	jne    c01070c8 <_svfiprintf_r+0xa08>
c01069f6:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c01069fc:	8d 75 a8             	lea    -0x58(%ebp),%esi
c01069ff:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0106a05:	e9 da 03 00 00       	jmp    c0106de4 <_svfiprintf_r+0x724>
c0106a0a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0106a10:	89 c8                	mov    %ecx,%eax
c0106a12:	83 eb 01             	sub    $0x1,%ebx
c0106a15:	83 e0 07             	and    $0x7,%eax
c0106a18:	c1 e9 03             	shr    $0x3,%ecx
c0106a1b:	83 c0 30             	add    $0x30,%eax
c0106a1e:	85 c9                	test   %ecx,%ecx
c0106a20:	88 03                	mov    %al,(%ebx)
c0106a22:	75 ec                	jne    c0106a10 <_svfiprintf_r+0x350>
c0106a24:	f6 85 64 ff ff ff 01 	testb  $0x1,-0x9c(%ebp)
c0106a2b:	89 da                	mov    %ebx,%edx
c0106a2d:	0f 84 72 fe ff ff    	je     c01068a5 <_svfiprintf_r+0x1e5>
c0106a33:	3c 30                	cmp    $0x30,%al
c0106a35:	0f 84 6a fe ff ff    	je     c01068a5 <_svfiprintf_r+0x1e5>
c0106a3b:	83 eb 01             	sub    $0x1,%ebx
c0106a3e:	8d 45 a8             	lea    -0x58(%ebp),%eax
c0106a41:	29 d8                	sub    %ebx,%eax
c0106a43:	c6 42 ff 30          	movb   $0x30,-0x1(%edx)
c0106a47:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c0106a4d:	e9 5e fe ff ff       	jmp    c01068b0 <_svfiprintf_r+0x1f0>
c0106a52:	83 8d 64 ff ff ff 10 	orl    $0x10,-0x9c(%ebp)
c0106a59:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
c0106a60:	89 55 10             	mov    %edx,0x10(%ebp)
c0106a63:	8b 45 14             	mov    0x14(%ebp),%eax
c0106a66:	0f 85 48 01 00 00    	jne    c0106bb4 <_svfiprintf_r+0x4f4>
c0106a6c:	f6 85 64 ff ff ff 40 	testb  $0x40,-0x9c(%ebp)
c0106a73:	0f 84 3b 01 00 00    	je     c0106bb4 <_svfiprintf_r+0x4f4>
c0106a79:	0f b7 08             	movzwl (%eax),%ecx
c0106a7c:	83 c0 04             	add    $0x4,%eax
c0106a7f:	31 d2                	xor    %edx,%edx
c0106a81:	89 45 14             	mov    %eax,0x14(%ebp)
c0106a84:	e9 b7 fd ff ff       	jmp    c0106840 <_svfiprintf_r+0x180>
c0106a89:	83 8d 64 ff ff ff 10 	orl    $0x10,-0x9c(%ebp)
c0106a90:	89 f8                	mov    %edi,%eax
c0106a92:	89 55 10             	mov    %edx,0x10(%ebp)
c0106a95:	88 85 71 ff ff ff    	mov    %al,-0x8f(%ebp)
c0106a9b:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
c0106aa2:	8b 45 14             	mov    0x14(%ebp),%eax
c0106aa5:	75 0d                	jne    c0106ab4 <_svfiprintf_r+0x3f4>
c0106aa7:	f6 85 64 ff ff ff 40 	testb  $0x40,-0x9c(%ebp)
c0106aae:	0f 85 f2 08 00 00    	jne    c01073a6 <_svfiprintf_r+0xce6>
c0106ab4:	8b 08                	mov    (%eax),%ecx
c0106ab6:	83 c0 04             	add    $0x4,%eax
c0106ab9:	89 45 14             	mov    %eax,0x14(%ebp)
c0106abc:	85 c9                	test   %ecx,%ecx
c0106abe:	0f 88 f3 08 00 00    	js     c01073b7 <_svfiprintf_r+0xcf7>
c0106ac4:	0f b6 bd 71 ff ff ff 	movzbl -0x8f(%ebp),%edi
c0106acb:	ba 01 00 00 00       	mov    $0x1,%edx
c0106ad0:	e9 74 fd ff ff       	jmp    c0106849 <_svfiprintf_r+0x189>
c0106ad5:	0f be 02             	movsbl (%edx),%eax
c0106ad8:	8d 5a 01             	lea    0x1(%edx),%ebx
c0106adb:	83 f8 2a             	cmp    $0x2a,%eax
c0106ade:	0f 84 af 09 00 00    	je     c0107493 <_svfiprintf_r+0xdd3>
c0106ae4:	8d 48 d0             	lea    -0x30(%eax),%ecx
c0106ae7:	31 d2                	xor    %edx,%edx
c0106ae9:	83 f9 09             	cmp    $0x9,%ecx
c0106aec:	0f 87 90 09 00 00    	ja     c0107482 <_svfiprintf_r+0xdc2>
c0106af2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0106af8:	8d 04 92             	lea    (%edx,%edx,4),%eax
c0106afb:	83 c3 01             	add    $0x1,%ebx
c0106afe:	8d 14 41             	lea    (%ecx,%eax,2),%edx
c0106b01:	0f be 43 ff          	movsbl -0x1(%ebx),%eax
c0106b05:	8d 48 d0             	lea    -0x30(%eax),%ecx
c0106b08:	83 f9 09             	cmp    $0x9,%ecx
c0106b0b:	76 eb                	jbe    c0106af8 <_svfiprintf_r+0x438>
c0106b0d:	85 d2                	test   %edx,%edx
c0106b0f:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
c0106b14:	0f 48 d1             	cmovs  %ecx,%edx
c0106b17:	8d 48 e0             	lea    -0x20(%eax),%ecx
c0106b1a:	83 f9 58             	cmp    $0x58,%ecx
c0106b1d:	89 95 5c ff ff ff    	mov    %edx,-0xa4(%ebp)
c0106b23:	89 da                	mov    %ebx,%edx
c0106b25:	0f 86 9d fc ff ff    	jbe    c01067c8 <_svfiprintf_r+0x108>
c0106b2b:	89 fb                	mov    %edi,%ebx
c0106b2d:	85 c0                	test   %eax,%eax
c0106b2f:	89 55 10             	mov    %edx,0x10(%ebp)
c0106b32:	88 9d 71 ff ff ff    	mov    %bl,-0x8f(%ebp)
c0106b38:	0f 84 5f 05 00 00    	je     c010709d <_svfiprintf_r+0x9dd>
c0106b3e:	88 45 80             	mov    %al,-0x80(%ebp)
c0106b41:	8d 5d 80             	lea    -0x80(%ebp),%ebx
c0106b44:	c6 85 71 ff ff ff 00 	movb   $0x0,-0x8f(%ebp)
c0106b4b:	c7 85 60 ff ff ff 01 	movl   $0x1,-0xa0(%ebp)
c0106b52:	00 00 00 
c0106b55:	c7 85 58 ff ff ff 01 	movl   $0x1,-0xa8(%ebp)
c0106b5c:	00 00 00 
c0106b5f:	e9 5a 01 00 00       	jmp    c0106cbe <_svfiprintf_r+0x5fe>
c0106b64:	31 db                	xor    %ebx,%ebx
c0106b66:	8d 48 d0             	lea    -0x30(%eax),%ecx
c0106b69:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0106b70:	8d 04 9b             	lea    (%ebx,%ebx,4),%eax
c0106b73:	83 c2 01             	add    $0x1,%edx
c0106b76:	8d 1c 41             	lea    (%ecx,%eax,2),%ebx
c0106b79:	0f be 42 ff          	movsbl -0x1(%edx),%eax
c0106b7d:	8d 48 d0             	lea    -0x30(%eax),%ecx
c0106b80:	83 f9 09             	cmp    $0x9,%ecx
c0106b83:	76 eb                	jbe    c0106b70 <_svfiprintf_r+0x4b0>
c0106b85:	89 9d 54 ff ff ff    	mov    %ebx,-0xac(%ebp)
c0106b8b:	e9 2c fc ff ff       	jmp    c01067bc <_svfiprintf_r+0xfc>
c0106b90:	81 8d 64 ff ff ff 80 	orl    $0x80,-0x9c(%ebp)
c0106b97:	00 00 00 
c0106b9a:	89 d0                	mov    %edx,%eax
c0106b9c:	e9 15 fc ff ff       	jmp    c01067b6 <_svfiprintf_r+0xf6>
c0106ba1:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
c0106ba8:	89 55 10             	mov    %edx,0x10(%ebp)
c0106bab:	8b 45 14             	mov    0x14(%ebp),%eax
c0106bae:	0f 84 b8 fe ff ff    	je     c0106a6c <_svfiprintf_r+0x3ac>
c0106bb4:	8b 08                	mov    (%eax),%ecx
c0106bb6:	83 c0 04             	add    $0x4,%eax
c0106bb9:	31 d2                	xor    %edx,%edx
c0106bbb:	89 45 14             	mov    %eax,0x14(%ebp)
c0106bbe:	e9 7d fc ff ff       	jmp    c0106840 <_svfiprintf_r+0x180>
c0106bc3:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
c0106bca:	89 f8                	mov    %edi,%eax
c0106bcc:	89 55 10             	mov    %edx,0x10(%ebp)
c0106bcf:	88 85 71 ff ff ff    	mov    %al,-0x8f(%ebp)
c0106bd5:	0f 85 a2 07 00 00    	jne    c010737d <_svfiprintf_r+0xcbd>
c0106bdb:	f6 85 64 ff ff ff 40 	testb  $0x40,-0x9c(%ebp)
c0106be2:	0f 84 95 07 00 00    	je     c010737d <_svfiprintf_r+0xcbd>
c0106be8:	8b 45 14             	mov    0x14(%ebp),%eax
c0106beb:	0f b7 9d 50 ff ff ff 	movzwl -0xb0(%ebp),%ebx
c0106bf2:	8b 00                	mov    (%eax),%eax
c0106bf4:	66 89 18             	mov    %bx,(%eax)
c0106bf7:	8b 45 14             	mov    0x14(%ebp),%eax
c0106bfa:	83 c0 04             	add    $0x4,%eax
c0106bfd:	89 45 14             	mov    %eax,0x14(%ebp)
c0106c00:	e9 19 fb ff ff       	jmp    c010671e <_svfiprintf_r+0x5e>
c0106c05:	89 fb                	mov    %edi,%ebx
c0106c07:	89 55 10             	mov    %edx,0x10(%ebp)
c0106c0a:	88 9d 71 ff ff ff    	mov    %bl,-0x8f(%ebp)
c0106c10:	c7 85 44 ff ff ff 63 	movl   $0xc0108763,-0xbc(%ebp)
c0106c17:	87 10 c0 
c0106c1a:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
c0106c21:	8b 5d 14             	mov    0x14(%ebp),%ebx
c0106c24:	75 0d                	jne    c0106c33 <_svfiprintf_r+0x573>
c0106c26:	f6 85 64 ff ff ff 40 	testb  $0x40,-0x9c(%ebp)
c0106c2d:	0f 85 65 07 00 00    	jne    c0107398 <_svfiprintf_r+0xcd8>
c0106c33:	8b 0b                	mov    (%ebx),%ecx
c0106c35:	83 c3 04             	add    $0x4,%ebx
c0106c38:	89 5d 14             	mov    %ebx,0x14(%ebp)
c0106c3b:	f6 85 64 ff ff ff 01 	testb  $0x1,-0x9c(%ebp)
c0106c42:	ba 02 00 00 00       	mov    $0x2,%edx
c0106c47:	0f 84 f3 fb ff ff    	je     c0106840 <_svfiprintf_r+0x180>
c0106c4d:	85 c9                	test   %ecx,%ecx
c0106c4f:	0f 84 eb fb ff ff    	je     c0106840 <_svfiprintf_r+0x180>
c0106c55:	c6 85 72 ff ff ff 30 	movb   $0x30,-0x8e(%ebp)
c0106c5c:	88 85 73 ff ff ff    	mov    %al,-0x8d(%ebp)
c0106c62:	83 8d 64 ff ff ff 02 	orl    $0x2,-0x9c(%ebp)
c0106c69:	e9 d2 fb ff ff       	jmp    c0106840 <_svfiprintf_r+0x180>
c0106c6e:	83 8d 64 ff ff ff 40 	orl    $0x40,-0x9c(%ebp)
c0106c75:	89 d0                	mov    %edx,%eax
c0106c77:	e9 3a fb ff ff       	jmp    c01067b6 <_svfiprintf_r+0xf6>
c0106c7c:	89 f8                	mov    %edi,%eax
c0106c7e:	89 55 10             	mov    %edx,0x10(%ebp)
c0106c81:	88 85 71 ff ff ff    	mov    %al,-0x8f(%ebp)
c0106c87:	e9 0f fe ff ff       	jmp    c0106a9b <_svfiprintf_r+0x3db>
c0106c8c:	8b 45 14             	mov    0x14(%ebp),%eax
c0106c8f:	8d 5d 80             	lea    -0x80(%ebp),%ebx
c0106c92:	89 55 10             	mov    %edx,0x10(%ebp)
c0106c95:	c6 85 71 ff ff ff 00 	movb   $0x0,-0x8f(%ebp)
c0106c9c:	c7 85 60 ff ff ff 01 	movl   $0x1,-0xa0(%ebp)
c0106ca3:	00 00 00 
c0106ca6:	8b 00                	mov    (%eax),%eax
c0106ca8:	c7 85 58 ff ff ff 01 	movl   $0x1,-0xa8(%ebp)
c0106caf:	00 00 00 
c0106cb2:	88 45 80             	mov    %al,-0x80(%ebp)
c0106cb5:	8b 45 14             	mov    0x14(%ebp),%eax
c0106cb8:	83 c0 04             	add    $0x4,%eax
c0106cbb:	89 45 14             	mov    %eax,0x14(%ebp)
c0106cbe:	c7 85 5c ff ff ff 00 	movl   $0x0,-0xa4(%ebp)
c0106cc5:	00 00 00 
c0106cc8:	e9 05 fc ff ff       	jmp    c01068d2 <_svfiprintf_r+0x212>
c0106ccd:	89 fb                	mov    %edi,%ebx
c0106ccf:	89 55 10             	mov    %edx,0x10(%ebp)
c0106cd2:	88 9d 71 ff ff ff    	mov    %bl,-0x8f(%ebp)
c0106cd8:	c7 85 44 ff ff ff 52 	movl   $0xc0108752,-0xbc(%ebp)
c0106cdf:	87 10 c0 
c0106ce2:	e9 33 ff ff ff       	jmp    c0106c1a <_svfiprintf_r+0x55a>
c0106ce7:	83 8d 64 ff ff ff 10 	orl    $0x10,-0x9c(%ebp)
c0106cee:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
c0106cf5:	89 55 10             	mov    %edx,0x10(%ebp)
c0106cf8:	8b 45 14             	mov    0x14(%ebp),%eax
c0106cfb:	75 39                	jne    c0106d36 <_svfiprintf_r+0x676>
c0106cfd:	f6 85 64 ff ff ff 40 	testb  $0x40,-0x9c(%ebp)
c0106d04:	74 30                	je     c0106d36 <_svfiprintf_r+0x676>
c0106d06:	0f b7 08             	movzwl (%eax),%ecx
c0106d09:	83 c0 04             	add    $0x4,%eax
c0106d0c:	ba 01 00 00 00       	mov    $0x1,%edx
c0106d11:	89 45 14             	mov    %eax,0x14(%ebp)
c0106d14:	e9 27 fb ff ff       	jmp    c0106840 <_svfiprintf_r+0x180>
c0106d19:	83 8d 64 ff ff ff 01 	orl    $0x1,-0x9c(%ebp)
c0106d20:	89 d0                	mov    %edx,%eax
c0106d22:	e9 8f fa ff ff       	jmp    c01067b6 <_svfiprintf_r+0xf6>
c0106d27:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
c0106d2e:	89 55 10             	mov    %edx,0x10(%ebp)
c0106d31:	8b 45 14             	mov    0x14(%ebp),%eax
c0106d34:	74 c7                	je     c0106cfd <_svfiprintf_r+0x63d>
c0106d36:	8b 08                	mov    (%eax),%ecx
c0106d38:	83 c0 04             	add    $0x4,%eax
c0106d3b:	ba 01 00 00 00       	mov    $0x1,%edx
c0106d40:	89 45 14             	mov    %eax,0x14(%ebp)
c0106d43:	e9 f8 fa ff ff       	jmp    c0106840 <_svfiprintf_r+0x180>
c0106d48:	8b 45 14             	mov    0x14(%ebp),%eax
c0106d4b:	89 55 10             	mov    %edx,0x10(%ebp)
c0106d4e:	c6 85 71 ff ff ff 00 	movb   $0x0,-0x8f(%ebp)
c0106d55:	8b 18                	mov    (%eax),%ebx
c0106d57:	8d 50 04             	lea    0x4(%eax),%edx
c0106d5a:	85 db                	test   %ebx,%ebx
c0106d5c:	0f 84 cc 06 00 00    	je     c010742e <_svfiprintf_r+0xd6e>
c0106d62:	8b bd 5c ff ff ff    	mov    -0xa4(%ebp),%edi
c0106d68:	89 95 60 ff ff ff    	mov    %edx,-0xa0(%ebp)
c0106d6e:	85 ff                	test   %edi,%edi
c0106d70:	0f 88 59 06 00 00    	js     c01073cf <_svfiprintf_r+0xd0f>
c0106d76:	89 7c 24 08          	mov    %edi,0x8(%esp)
c0106d7a:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c0106d81:	00 
c0106d82:	89 1c 24             	mov    %ebx,(%esp)
c0106d85:	e8 76 e7 ff ff       	call   c0105500 <memchr>
c0106d8a:	8b 95 60 ff ff ff    	mov    -0xa0(%ebp),%edx
c0106d90:	85 c0                	test   %eax,%eax
c0106d92:	0f 84 c5 06 00 00    	je     c010745d <_svfiprintf_r+0xd9d>
c0106d98:	29 d8                	sub    %ebx,%eax
c0106d9a:	39 f8                	cmp    %edi,%eax
c0106d9c:	0f 4f c7             	cmovg  %edi,%eax
c0106d9f:	0f b6 bd 71 ff ff ff 	movzbl -0x8f(%ebp),%edi
c0106da6:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c0106dac:	89 55 14             	mov    %edx,0x14(%ebp)
c0106daf:	c7 85 5c ff ff ff 00 	movl   $0x0,-0xa4(%ebp)
c0106db6:	00 00 00 
c0106db9:	e9 f2 fa ff ff       	jmp    c01068b0 <_svfiprintf_r+0x1f0>
c0106dbe:	89 f8                	mov    %edi,%eax
c0106dc0:	84 c0                	test   %al,%al
c0106dc2:	b8 20 00 00 00       	mov    $0x20,%eax
c0106dc7:	0f 44 f8             	cmove  %eax,%edi
c0106dca:	89 d0                	mov    %edx,%eax
c0106dcc:	e9 e5 f9 ff ff       	jmp    c01067b6 <_svfiprintf_r+0xf6>
c0106dd1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0106dd8:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0106dde:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0106de4:	80 bd 71 ff ff ff 00 	cmpb   $0x0,-0x8f(%ebp)
c0106deb:	74 2e                	je     c0106e1b <_svfiprintf_r+0x75b>
c0106ded:	83 c0 01             	add    $0x1,%eax
c0106df0:	83 c2 01             	add    $0x1,%edx
c0106df3:	8d 8d 71 ff ff ff    	lea    -0x8f(%ebp),%ecx
c0106df9:	83 c6 08             	add    $0x8,%esi
c0106dfc:	89 4e f8             	mov    %ecx,-0x8(%esi)
c0106dff:	c7 46 fc 01 00 00 00 	movl   $0x1,-0x4(%esi)
c0106e06:	83 f8 07             	cmp    $0x7,%eax
c0106e09:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0106e0f:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0106e15:	0f 8f b5 04 00 00    	jg     c01072d0 <_svfiprintf_r+0xc10>
c0106e1b:	8b 8d 4c ff ff ff    	mov    -0xb4(%ebp),%ecx
c0106e21:	85 c9                	test   %ecx,%ecx
c0106e23:	74 2e                	je     c0106e53 <_svfiprintf_r+0x793>
c0106e25:	83 c0 01             	add    $0x1,%eax
c0106e28:	83 c2 02             	add    $0x2,%edx
c0106e2b:	8d 8d 72 ff ff ff    	lea    -0x8e(%ebp),%ecx
c0106e31:	83 c6 08             	add    $0x8,%esi
c0106e34:	89 4e f8             	mov    %ecx,-0x8(%esi)
c0106e37:	c7 46 fc 02 00 00 00 	movl   $0x2,-0x4(%esi)
c0106e3e:	83 f8 07             	cmp    $0x7,%eax
c0106e41:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0106e47:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0106e4d:	0f 8f 45 04 00 00    	jg     c0107298 <_svfiprintf_r+0xbd8>
c0106e53:	81 bd 48 ff ff ff 80 	cmpl   $0x80,-0xb8(%ebp)
c0106e5a:	00 00 00 
c0106e5d:	0f 84 9d 02 00 00    	je     c0107100 <_svfiprintf_r+0xa40>
c0106e63:	8b bd 5c ff ff ff    	mov    -0xa4(%ebp),%edi
c0106e69:	2b bd 58 ff ff ff    	sub    -0xa8(%ebp),%edi
c0106e6f:	85 ff                	test   %edi,%edi
c0106e71:	0f 8e e1 00 00 00    	jle    c0106f58 <_svfiprintf_r+0x898>
c0106e77:	83 ff 10             	cmp    $0x10,%edi
c0106e7a:	0f 8e 7c 00 00 00    	jle    c0106efc <_svfiprintf_r+0x83c>
c0106e80:	89 9d 5c ff ff ff    	mov    %ebx,-0xa4(%ebp)
c0106e86:	89 f1                	mov    %esi,%ecx
c0106e88:	8b 5d 08             	mov    0x8(%ebp),%ebx
c0106e8b:	8b 75 0c             	mov    0xc(%ebp),%esi
c0106e8e:	eb 08                	jmp    c0106e98 <_svfiprintf_r+0x7d8>
c0106e90:	83 ef 10             	sub    $0x10,%edi
c0106e93:	83 ff 10             	cmp    $0x10,%edi
c0106e96:	7e 5c                	jle    c0106ef4 <_svfiprintf_r+0x834>
c0106e98:	83 c0 01             	add    $0x1,%eax
c0106e9b:	83 c2 10             	add    $0x10,%edx
c0106e9e:	c7 01 2c 8c 10 c0    	movl   $0xc0108c2c,(%ecx)
c0106ea4:	83 c1 08             	add    $0x8,%ecx
c0106ea7:	c7 41 fc 10 00 00 00 	movl   $0x10,-0x4(%ecx)
c0106eae:	83 f8 07             	cmp    $0x7,%eax
c0106eb1:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0106eb7:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0106ebd:	7e d1                	jle    c0106e90 <_svfiprintf_r+0x7d0>
c0106ebf:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0106ec5:	89 44 24 08          	mov    %eax,0x8(%esp)
c0106ec9:	89 74 24 04          	mov    %esi,0x4(%esp)
c0106ecd:	89 1c 24             	mov    %ebx,(%esp)
c0106ed0:	e8 fb f5 ff ff       	call   c01064d0 <__ssprint_r>
c0106ed5:	85 c0                	test   %eax,%eax
c0106ed7:	0f 85 eb 01 00 00    	jne    c01070c8 <_svfiprintf_r+0xa08>
c0106edd:	83 ef 10             	sub    $0x10,%edi
c0106ee0:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0106ee6:	83 ff 10             	cmp    $0x10,%edi
c0106ee9:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0106eef:	8d 4d a8             	lea    -0x58(%ebp),%ecx
c0106ef2:	7f a4                	jg     c0106e98 <_svfiprintf_r+0x7d8>
c0106ef4:	8b 9d 5c ff ff ff    	mov    -0xa4(%ebp),%ebx
c0106efa:	89 ce                	mov    %ecx,%esi
c0106efc:	83 c0 01             	add    $0x1,%eax
c0106eff:	01 fa                	add    %edi,%edx
c0106f01:	c7 06 2c 8c 10 c0    	movl   $0xc0108c2c,(%esi)
c0106f07:	83 c6 08             	add    $0x8,%esi
c0106f0a:	89 7e fc             	mov    %edi,-0x4(%esi)
c0106f0d:	83 f8 07             	cmp    $0x7,%eax
c0106f10:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0106f16:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0106f1c:	7e 3a                	jle    c0106f58 <_svfiprintf_r+0x898>
c0106f1e:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0106f24:	89 44 24 08          	mov    %eax,0x8(%esp)
c0106f28:	8b 45 0c             	mov    0xc(%ebp),%eax
c0106f2b:	89 44 24 04          	mov    %eax,0x4(%esp)
c0106f2f:	8b 45 08             	mov    0x8(%ebp),%eax
c0106f32:	89 04 24             	mov    %eax,(%esp)
c0106f35:	e8 96 f5 ff ff       	call   c01064d0 <__ssprint_r>
c0106f3a:	85 c0                	test   %eax,%eax
c0106f3c:	0f 85 86 01 00 00    	jne    c01070c8 <_svfiprintf_r+0xa08>
c0106f42:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0106f48:	8d 75 a8             	lea    -0x58(%ebp),%esi
c0106f4b:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0106f51:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0106f58:	89 1e                	mov    %ebx,(%esi)
c0106f5a:	8b 9d 58 ff ff ff    	mov    -0xa8(%ebp),%ebx
c0106f60:	83 c0 01             	add    $0x1,%eax
c0106f63:	83 c6 08             	add    $0x8,%esi
c0106f66:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0106f6c:	89 5e fc             	mov    %ebx,-0x4(%esi)
c0106f6f:	01 da                	add    %ebx,%edx
c0106f71:	83 f8 07             	cmp    $0x7,%eax
c0106f74:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0106f7a:	0f 8f 80 02 00 00    	jg     c0107200 <_svfiprintf_r+0xb40>
c0106f80:	f6 85 64 ff ff ff 04 	testb  $0x4,-0x9c(%ebp)
c0106f87:	0f 84 b9 00 00 00    	je     c0107046 <_svfiprintf_r+0x986>
c0106f8d:	8b bd 54 ff ff ff    	mov    -0xac(%ebp),%edi
c0106f93:	2b bd 60 ff ff ff    	sub    -0xa0(%ebp),%edi
c0106f99:	85 ff                	test   %edi,%edi
c0106f9b:	0f 8e a5 00 00 00    	jle    c0107046 <_svfiprintf_r+0x986>
c0106fa1:	83 ff 10             	cmp    $0x10,%edi
c0106fa4:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0106faa:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c0106fb0:	7e 71                	jle    c0107023 <_svfiprintf_r+0x963>
c0106fb2:	89 f1                	mov    %esi,%ecx
c0106fb4:	8b 75 08             	mov    0x8(%ebp),%esi
c0106fb7:	eb 0f                	jmp    c0106fc8 <_svfiprintf_r+0x908>
c0106fb9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0106fc0:	83 ef 10             	sub    $0x10,%edi
c0106fc3:	83 ff 10             	cmp    $0x10,%edi
c0106fc6:	7e 59                	jle    c0107021 <_svfiprintf_r+0x961>
c0106fc8:	83 c0 01             	add    $0x1,%eax
c0106fcb:	83 c2 10             	add    $0x10,%edx
c0106fce:	c7 01 3c 8c 10 c0    	movl   $0xc0108c3c,(%ecx)
c0106fd4:	83 c1 08             	add    $0x8,%ecx
c0106fd7:	c7 41 fc 10 00 00 00 	movl   $0x10,-0x4(%ecx)
c0106fde:	83 f8 07             	cmp    $0x7,%eax
c0106fe1:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0106fe7:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0106fed:	7e d1                	jle    c0106fc0 <_svfiprintf_r+0x900>
c0106fef:	8b 45 0c             	mov    0xc(%ebp),%eax
c0106ff2:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0106ff6:	89 34 24             	mov    %esi,(%esp)
c0106ff9:	89 44 24 04          	mov    %eax,0x4(%esp)
c0106ffd:	e8 ce f4 ff ff       	call   c01064d0 <__ssprint_r>
c0107002:	85 c0                	test   %eax,%eax
c0107004:	0f 85 be 00 00 00    	jne    c01070c8 <_svfiprintf_r+0xa08>
c010700a:	83 ef 10             	sub    $0x10,%edi
c010700d:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0107013:	83 ff 10             	cmp    $0x10,%edi
c0107016:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c010701c:	8d 4d a8             	lea    -0x58(%ebp),%ecx
c010701f:	7f a7                	jg     c0106fc8 <_svfiprintf_r+0x908>
c0107021:	89 ce                	mov    %ecx,%esi
c0107023:	83 c0 01             	add    $0x1,%eax
c0107026:	01 fa                	add    %edi,%edx
c0107028:	83 f8 07             	cmp    $0x7,%eax
c010702b:	c7 06 3c 8c 10 c0    	movl   $0xc0108c3c,(%esi)
c0107031:	89 7e 04             	mov    %edi,0x4(%esi)
c0107034:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c010703a:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0107040:	0f 8f ee 02 00 00    	jg     c0107334 <_svfiprintf_r+0xc74>
c0107046:	8b 85 54 ff ff ff    	mov    -0xac(%ebp),%eax
c010704c:	8b b5 60 ff ff ff    	mov    -0xa0(%ebp),%esi
c0107052:	39 c6                	cmp    %eax,%esi
c0107054:	0f 4d c6             	cmovge %esi,%eax
c0107057:	01 85 50 ff ff ff    	add    %eax,-0xb0(%ebp)
c010705d:	85 d2                	test   %edx,%edx
c010705f:	0f 85 d3 01 00 00    	jne    c0107238 <_svfiprintf_r+0xb78>
c0107065:	c7 85 78 ff ff ff 00 	movl   $0x0,-0x88(%ebp)
c010706c:	00 00 00 
c010706f:	8d 75 a8             	lea    -0x58(%ebp),%esi
c0107072:	e9 a7 f6 ff ff       	jmp    c010671e <_svfiprintf_r+0x5e>
c0107077:	90                   	nop
c0107078:	84 d2                	test   %dl,%dl
c010707a:	75 6c                	jne    c01070e8 <_svfiprintf_r+0xa28>
c010707c:	f6 85 64 ff ff ff 01 	testb  $0x1,-0x9c(%ebp)
c0107083:	74 63                	je     c01070e8 <_svfiprintf_r+0xa28>
c0107085:	8b 85 3c ff ff ff    	mov    -0xc4(%ebp),%eax
c010708b:	8d 5d a7             	lea    -0x59(%ebp),%ebx
c010708e:	c6 45 a7 30          	movb   $0x30,-0x59(%ebp)
c0107092:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c0107098:	e9 13 f8 ff ff       	jmp    c01068b0 <_svfiprintf_r+0x1f0>
c010709d:	8b 85 7c ff ff ff    	mov    -0x84(%ebp),%eax
c01070a3:	85 c0                	test   %eax,%eax
c01070a5:	74 21                	je     c01070c8 <_svfiprintf_r+0xa08>
c01070a7:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c01070ad:	89 44 24 08          	mov    %eax,0x8(%esp)
c01070b1:	8b 45 0c             	mov    0xc(%ebp),%eax
c01070b4:	89 44 24 04          	mov    %eax,0x4(%esp)
c01070b8:	8b 45 08             	mov    0x8(%ebp),%eax
c01070bb:	89 04 24             	mov    %eax,(%esp)
c01070be:	e8 0d f4 ff ff       	call   c01064d0 <__ssprint_r>
c01070c3:	90                   	nop
c01070c4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c01070c8:	8b 75 0c             	mov    0xc(%ebp),%esi
c01070cb:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c01070d0:	f6 46 0c 40          	testb  $0x40,0xc(%esi)
c01070d4:	0f 44 85 50 ff ff ff 	cmove  -0xb0(%ebp),%eax
c01070db:	81 c4 cc 00 00 00    	add    $0xcc,%esp
c01070e1:	5b                   	pop    %ebx
c01070e2:	5e                   	pop    %esi
c01070e3:	5f                   	pop    %edi
c01070e4:	5d                   	pop    %ebp
c01070e5:	c3                   	ret    
c01070e6:	66 90                	xchg   %ax,%ax
c01070e8:	c7 85 58 ff ff ff 00 	movl   $0x0,-0xa8(%ebp)
c01070ef:	00 00 00 
c01070f2:	8d 5d a8             	lea    -0x58(%ebp),%ebx
c01070f5:	e9 b6 f7 ff ff       	jmp    c01068b0 <_svfiprintf_r+0x1f0>
c01070fa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0107100:	8b bd 54 ff ff ff    	mov    -0xac(%ebp),%edi
c0107106:	2b bd 60 ff ff ff    	sub    -0xa0(%ebp),%edi
c010710c:	85 ff                	test   %edi,%edi
c010710e:	0f 8e 4f fd ff ff    	jle    c0106e63 <_svfiprintf_r+0x7a3>
c0107114:	83 ff 10             	cmp    $0x10,%edi
c0107117:	0f 8e 7f 00 00 00    	jle    c010719c <_svfiprintf_r+0xadc>
c010711d:	89 9d 4c ff ff ff    	mov    %ebx,-0xb4(%ebp)
c0107123:	89 f1                	mov    %esi,%ecx
c0107125:	8b 5d 08             	mov    0x8(%ebp),%ebx
c0107128:	8b 75 0c             	mov    0xc(%ebp),%esi
c010712b:	eb 0b                	jmp    c0107138 <_svfiprintf_r+0xa78>
c010712d:	8d 76 00             	lea    0x0(%esi),%esi
c0107130:	83 ef 10             	sub    $0x10,%edi
c0107133:	83 ff 10             	cmp    $0x10,%edi
c0107136:	7e 5c                	jle    c0107194 <_svfiprintf_r+0xad4>
c0107138:	83 c0 01             	add    $0x1,%eax
c010713b:	83 c2 10             	add    $0x10,%edx
c010713e:	c7 01 2c 8c 10 c0    	movl   $0xc0108c2c,(%ecx)
c0107144:	83 c1 08             	add    $0x8,%ecx
c0107147:	c7 41 fc 10 00 00 00 	movl   $0x10,-0x4(%ecx)
c010714e:	83 f8 07             	cmp    $0x7,%eax
c0107151:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0107157:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c010715d:	7e d1                	jle    c0107130 <_svfiprintf_r+0xa70>
c010715f:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0107165:	89 44 24 08          	mov    %eax,0x8(%esp)
c0107169:	89 74 24 04          	mov    %esi,0x4(%esp)
c010716d:	89 1c 24             	mov    %ebx,(%esp)
c0107170:	e8 5b f3 ff ff       	call   c01064d0 <__ssprint_r>
c0107175:	85 c0                	test   %eax,%eax
c0107177:	0f 85 4b ff ff ff    	jne    c01070c8 <_svfiprintf_r+0xa08>
c010717d:	83 ef 10             	sub    $0x10,%edi
c0107180:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0107186:	83 ff 10             	cmp    $0x10,%edi
c0107189:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c010718f:	8d 4d a8             	lea    -0x58(%ebp),%ecx
c0107192:	7f a4                	jg     c0107138 <_svfiprintf_r+0xa78>
c0107194:	8b 9d 4c ff ff ff    	mov    -0xb4(%ebp),%ebx
c010719a:	89 ce                	mov    %ecx,%esi
c010719c:	83 c0 01             	add    $0x1,%eax
c010719f:	01 fa                	add    %edi,%edx
c01071a1:	c7 06 2c 8c 10 c0    	movl   $0xc0108c2c,(%esi)
c01071a7:	83 c6 08             	add    $0x8,%esi
c01071aa:	89 7e fc             	mov    %edi,-0x4(%esi)
c01071ad:	83 f8 07             	cmp    $0x7,%eax
c01071b0:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c01071b6:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c01071bc:	0f 8e a1 fc ff ff    	jle    c0106e63 <_svfiprintf_r+0x7a3>
c01071c2:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c01071c8:	89 44 24 08          	mov    %eax,0x8(%esp)
c01071cc:	8b 45 0c             	mov    0xc(%ebp),%eax
c01071cf:	89 44 24 04          	mov    %eax,0x4(%esp)
c01071d3:	8b 45 08             	mov    0x8(%ebp),%eax
c01071d6:	89 04 24             	mov    %eax,(%esp)
c01071d9:	e8 f2 f2 ff ff       	call   c01064d0 <__ssprint_r>
c01071de:	85 c0                	test   %eax,%eax
c01071e0:	0f 85 e2 fe ff ff    	jne    c01070c8 <_svfiprintf_r+0xa08>
c01071e6:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c01071ec:	8d 75 a8             	lea    -0x58(%ebp),%esi
c01071ef:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c01071f5:	e9 69 fc ff ff       	jmp    c0106e63 <_svfiprintf_r+0x7a3>
c01071fa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0107200:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0107206:	89 44 24 08          	mov    %eax,0x8(%esp)
c010720a:	8b 45 0c             	mov    0xc(%ebp),%eax
c010720d:	89 44 24 04          	mov    %eax,0x4(%esp)
c0107211:	8b 45 08             	mov    0x8(%ebp),%eax
c0107214:	89 04 24             	mov    %eax,(%esp)
c0107217:	e8 b4 f2 ff ff       	call   c01064d0 <__ssprint_r>
c010721c:	85 c0                	test   %eax,%eax
c010721e:	0f 85 a4 fe ff ff    	jne    c01070c8 <_svfiprintf_r+0xa08>
c0107224:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c010722a:	8d 75 a8             	lea    -0x58(%ebp),%esi
c010722d:	e9 4e fd ff ff       	jmp    c0106f80 <_svfiprintf_r+0x8c0>
c0107232:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0107238:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c010723e:	89 44 24 08          	mov    %eax,0x8(%esp)
c0107242:	8b 45 0c             	mov    0xc(%ebp),%eax
c0107245:	89 44 24 04          	mov    %eax,0x4(%esp)
c0107249:	8b 45 08             	mov    0x8(%ebp),%eax
c010724c:	89 04 24             	mov    %eax,(%esp)
c010724f:	e8 7c f2 ff ff       	call   c01064d0 <__ssprint_r>
c0107254:	85 c0                	test   %eax,%eax
c0107256:	0f 84 09 fe ff ff    	je     c0107065 <_svfiprintf_r+0x9a5>
c010725c:	e9 67 fe ff ff       	jmp    c01070c8 <_svfiprintf_r+0xa08>
c0107261:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0107268:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c010726e:	89 44 24 08          	mov    %eax,0x8(%esp)
c0107272:	8b 45 0c             	mov    0xc(%ebp),%eax
c0107275:	89 44 24 04          	mov    %eax,0x4(%esp)
c0107279:	8b 45 08             	mov    0x8(%ebp),%eax
c010727c:	89 04 24             	mov    %eax,(%esp)
c010727f:	e8 4c f2 ff ff       	call   c01064d0 <__ssprint_r>
c0107284:	85 c0                	test   %eax,%eax
c0107286:	0f 85 3c fe ff ff    	jne    c01070c8 <_svfiprintf_r+0xa08>
c010728c:	8d 75 a8             	lea    -0x58(%ebp),%esi
c010728f:	e9 e9 f4 ff ff       	jmp    c010677d <_svfiprintf_r+0xbd>
c0107294:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0107298:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c010729e:	89 44 24 08          	mov    %eax,0x8(%esp)
c01072a2:	8b 45 0c             	mov    0xc(%ebp),%eax
c01072a5:	89 44 24 04          	mov    %eax,0x4(%esp)
c01072a9:	8b 45 08             	mov    0x8(%ebp),%eax
c01072ac:	89 04 24             	mov    %eax,(%esp)
c01072af:	e8 1c f2 ff ff       	call   c01064d0 <__ssprint_r>
c01072b4:	85 c0                	test   %eax,%eax
c01072b6:	0f 85 0c fe ff ff    	jne    c01070c8 <_svfiprintf_r+0xa08>
c01072bc:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c01072c2:	8d 75 a8             	lea    -0x58(%ebp),%esi
c01072c5:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c01072cb:	e9 83 fb ff ff       	jmp    c0106e53 <_svfiprintf_r+0x793>
c01072d0:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c01072d6:	89 44 24 08          	mov    %eax,0x8(%esp)
c01072da:	8b 45 0c             	mov    0xc(%ebp),%eax
c01072dd:	89 44 24 04          	mov    %eax,0x4(%esp)
c01072e1:	8b 45 08             	mov    0x8(%ebp),%eax
c01072e4:	89 04 24             	mov    %eax,(%esp)
c01072e7:	e8 e4 f1 ff ff       	call   c01064d0 <__ssprint_r>
c01072ec:	85 c0                	test   %eax,%eax
c01072ee:	0f 85 d4 fd ff ff    	jne    c01070c8 <_svfiprintf_r+0xa08>
c01072f4:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c01072fa:	8d 75 a8             	lea    -0x58(%ebp),%esi
c01072fd:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0107303:	e9 13 fb ff ff       	jmp    c0106e1b <_svfiprintf_r+0x75b>
c0107308:	83 f9 09             	cmp    $0x9,%ecx
c010730b:	76 56                	jbe    c0107363 <_svfiprintf_r+0xca3>
c010730d:	8d 5d a8             	lea    -0x58(%ebp),%ebx
c0107310:	b8 cd cc cc cc       	mov    $0xcccccccd,%eax
c0107315:	83 eb 01             	sub    $0x1,%ebx
c0107318:	f7 e1                	mul    %ecx
c010731a:	c1 ea 03             	shr    $0x3,%edx
c010731d:	8d 04 92             	lea    (%edx,%edx,4),%eax
c0107320:	01 c0                	add    %eax,%eax
c0107322:	29 c1                	sub    %eax,%ecx
c0107324:	83 c1 30             	add    $0x30,%ecx
c0107327:	85 d2                	test   %edx,%edx
c0107329:	88 0b                	mov    %cl,(%ebx)
c010732b:	89 d1                	mov    %edx,%ecx
c010732d:	75 e1                	jne    c0107310 <_svfiprintf_r+0xc50>
c010732f:	e9 71 f5 ff ff       	jmp    c01068a5 <_svfiprintf_r+0x1e5>
c0107334:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c010733a:	89 44 24 08          	mov    %eax,0x8(%esp)
c010733e:	8b 45 0c             	mov    0xc(%ebp),%eax
c0107341:	89 44 24 04          	mov    %eax,0x4(%esp)
c0107345:	8b 45 08             	mov    0x8(%ebp),%eax
c0107348:	89 04 24             	mov    %eax,(%esp)
c010734b:	e8 80 f1 ff ff       	call   c01064d0 <__ssprint_r>
c0107350:	85 c0                	test   %eax,%eax
c0107352:	0f 85 70 fd ff ff    	jne    c01070c8 <_svfiprintf_r+0xa08>
c0107358:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c010735e:	e9 e3 fc ff ff       	jmp    c0107046 <_svfiprintf_r+0x986>
c0107363:	8b 85 3c ff ff ff    	mov    -0xc4(%ebp),%eax
c0107369:	83 c1 30             	add    $0x30,%ecx
c010736c:	88 4d a7             	mov    %cl,-0x59(%ebp)
c010736f:	8d 5d a7             	lea    -0x59(%ebp),%ebx
c0107372:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c0107378:	e9 33 f5 ff ff       	jmp    c01068b0 <_svfiprintf_r+0x1f0>
c010737d:	8b 45 14             	mov    0x14(%ebp),%eax
c0107380:	8b 9d 50 ff ff ff    	mov    -0xb0(%ebp),%ebx
c0107386:	8b 00                	mov    (%eax),%eax
c0107388:	89 18                	mov    %ebx,(%eax)
c010738a:	8b 45 14             	mov    0x14(%ebp),%eax
c010738d:	83 c0 04             	add    $0x4,%eax
c0107390:	89 45 14             	mov    %eax,0x14(%ebp)
c0107393:	e9 86 f3 ff ff       	jmp    c010671e <_svfiprintf_r+0x5e>
c0107398:	0f b7 0b             	movzwl (%ebx),%ecx
c010739b:	83 c3 04             	add    $0x4,%ebx
c010739e:	89 5d 14             	mov    %ebx,0x14(%ebp)
c01073a1:	e9 95 f8 ff ff       	jmp    c0106c3b <_svfiprintf_r+0x57b>
c01073a6:	0f bf 08             	movswl (%eax),%ecx
c01073a9:	83 c0 04             	add    $0x4,%eax
c01073ac:	89 45 14             	mov    %eax,0x14(%ebp)
c01073af:	85 c9                	test   %ecx,%ecx
c01073b1:	0f 89 0d f7 ff ff    	jns    c0106ac4 <_svfiprintf_r+0x404>
c01073b7:	f7 d9                	neg    %ecx
c01073b9:	bf 2d 00 00 00       	mov    $0x2d,%edi
c01073be:	c6 85 71 ff ff ff 2d 	movb   $0x2d,-0x8f(%ebp)
c01073c5:	ba 01 00 00 00       	mov    $0x1,%edx
c01073ca:	e9 7a f4 ff ff       	jmp    c0106849 <_svfiprintf_r+0x189>
c01073cf:	89 1c 24             	mov    %ebx,(%esp)
c01073d2:	e8 79 f0 ff ff       	call   c0106450 <strlen>
c01073d7:	8b 95 60 ff ff ff    	mov    -0xa0(%ebp),%edx
c01073dd:	0f b6 bd 71 ff ff ff 	movzbl -0x8f(%ebp),%edi
c01073e4:	c7 85 5c ff ff ff 00 	movl   $0x0,-0xa4(%ebp)
c01073eb:	00 00 00 
c01073ee:	89 55 14             	mov    %edx,0x14(%ebp)
c01073f1:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c01073f7:	e9 b4 f4 ff ff       	jmp    c01068b0 <_svfiprintf_r+0x1f0>
c01073fc:	8b 45 08             	mov    0x8(%ebp),%eax
c01073ff:	c7 44 24 04 40 00 00 	movl   $0x40,0x4(%esp)
c0107406:	00 
c0107407:	89 04 24             	mov    %eax,(%esp)
c010740a:	e8 b1 d9 ff ff       	call   c0104dc0 <_malloc_r>
c010740f:	8b 75 0c             	mov    0xc(%ebp),%esi
c0107412:	85 c0                	test   %eax,%eax
c0107414:	89 06                	mov    %eax,(%esi)
c0107416:	89 46 10             	mov    %eax,0x10(%esi)
c0107419:	0f 84 a3 00 00 00    	je     c01074c2 <_svfiprintf_r+0xe02>
c010741f:	8b 45 0c             	mov    0xc(%ebp),%eax
c0107422:	c7 40 14 40 00 00 00 	movl   $0x40,0x14(%eax)
c0107429:	e9 b2 f2 ff ff       	jmp    c01066e0 <_svfiprintf_r+0x20>
c010742e:	8b bd 5c ff ff ff    	mov    -0xa4(%ebp),%edi
c0107434:	b8 06 00 00 00       	mov    $0x6,%eax
c0107439:	89 55 14             	mov    %edx,0x14(%ebp)
c010743c:	83 ff 06             	cmp    $0x6,%edi
c010743f:	0f 46 c7             	cmovbe %edi,%eax
c0107442:	85 c0                	test   %eax,%eax
c0107444:	0f 49 d8             	cmovns %eax,%ebx
c0107447:	89 9d 60 ff ff ff    	mov    %ebx,-0xa0(%ebp)
c010744d:	bb 74 87 10 c0       	mov    $0xc0108774,%ebx
c0107452:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c0107458:	e9 61 f8 ff ff       	jmp    c0106cbe <_svfiprintf_r+0x5fe>
c010745d:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
c0107463:	0f b6 bd 71 ff ff ff 	movzbl -0x8f(%ebp),%edi
c010746a:	89 55 14             	mov    %edx,0x14(%ebp)
c010746d:	c7 85 5c ff ff ff 00 	movl   $0x0,-0xa4(%ebp)
c0107474:	00 00 00 
c0107477:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c010747d:	e9 2e f4 ff ff       	jmp    c01068b0 <_svfiprintf_r+0x1f0>
c0107482:	89 da                	mov    %ebx,%edx
c0107484:	c7 85 5c ff ff ff 00 	movl   $0x0,-0xa4(%ebp)
c010748b:	00 00 00 
c010748e:	e9 29 f3 ff ff       	jmp    c01067bc <_svfiprintf_r+0xfc>
c0107493:	8b 4d 14             	mov    0x14(%ebp),%ecx
c0107496:	89 da                	mov    %ebx,%edx
c0107498:	8b 45 14             	mov    0x14(%ebp),%eax
c010749b:	8b 09                	mov    (%ecx),%ecx
c010749d:	83 c0 04             	add    $0x4,%eax
c01074a0:	89 45 14             	mov    %eax,0x14(%ebp)
c01074a3:	85 c9                	test   %ecx,%ecx
c01074a5:	89 8d 5c ff ff ff    	mov    %ecx,-0xa4(%ebp)
c01074ab:	0f 89 26 f3 ff ff    	jns    c01067d7 <_svfiprintf_r+0x117>
c01074b1:	c7 85 5c ff ff ff ff 	movl   $0xffffffff,-0xa4(%ebp)
c01074b8:	ff ff ff 
c01074bb:	89 d0                	mov    %edx,%eax
c01074bd:	e9 f4 f2 ff ff       	jmp    c01067b6 <_svfiprintf_r+0xf6>
c01074c2:	8b 45 08             	mov    0x8(%ebp),%eax
c01074c5:	c7 00 0c 00 00 00    	movl   $0xc,(%eax)
c01074cb:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c01074d0:	e9 06 fc ff ff       	jmp    c01070db <_svfiprintf_r+0xa1b>
c01074d5:	66 90                	xchg   %ax,%ax
c01074d7:	66 90                	xchg   %ax,%ax
c01074d9:	66 90                	xchg   %ax,%ax
c01074db:	66 90                	xchg   %ax,%ax
c01074dd:	66 90                	xchg   %ax,%ax
c01074df:	90                   	nop

c01074e0 <_calloc_r>:
c01074e0:	55                   	push   %ebp
c01074e1:	89 e5                	mov    %esp,%ebp
c01074e3:	53                   	push   %ebx
c01074e4:	83 ec 14             	sub    $0x14,%esp
c01074e7:	8b 45 10             	mov    0x10(%ebp),%eax
c01074ea:	0f af 45 0c          	imul   0xc(%ebp),%eax
c01074ee:	89 44 24 04          	mov    %eax,0x4(%esp)
c01074f2:	8b 45 08             	mov    0x8(%ebp),%eax
c01074f5:	89 04 24             	mov    %eax,(%esp)
c01074f8:	e8 c3 d8 ff ff       	call   c0104dc0 <_malloc_r>
c01074fd:	85 c0                	test   %eax,%eax
c01074ff:	89 c3                	mov    %eax,%ebx
c0107501:	0f 84 91 00 00 00    	je     c0107598 <_calloc_r+0xb8>
c0107507:	8b 40 fc             	mov    -0x4(%eax),%eax
c010750a:	83 e0 fc             	and    $0xfffffffc,%eax
c010750d:	83 e8 04             	sub    $0x4,%eax
c0107510:	83 f8 24             	cmp    $0x24,%eax
c0107513:	77 63                	ja     c0107578 <_calloc_r+0x98>
c0107515:	83 f8 13             	cmp    $0x13,%eax
c0107518:	89 da                	mov    %ebx,%edx
c010751a:	77 1c                	ja     c0107538 <_calloc_r+0x58>
c010751c:	c7 02 00 00 00 00    	movl   $0x0,(%edx)
c0107522:	89 d8                	mov    %ebx,%eax
c0107524:	c7 42 04 00 00 00 00 	movl   $0x0,0x4(%edx)
c010752b:	c7 42 08 00 00 00 00 	movl   $0x0,0x8(%edx)
c0107532:	83 c4 14             	add    $0x14,%esp
c0107535:	5b                   	pop    %ebx
c0107536:	5d                   	pop    %ebp
c0107537:	c3                   	ret    
c0107538:	83 f8 1b             	cmp    $0x1b,%eax
c010753b:	c7 03 00 00 00 00    	movl   $0x0,(%ebx)
c0107541:	8d 53 08             	lea    0x8(%ebx),%edx
c0107544:	c7 43 04 00 00 00 00 	movl   $0x0,0x4(%ebx)
c010754b:	76 cf                	jbe    c010751c <_calloc_r+0x3c>
c010754d:	83 f8 24             	cmp    $0x24,%eax
c0107550:	c7 43 08 00 00 00 00 	movl   $0x0,0x8(%ebx)
c0107557:	8d 53 10             	lea    0x10(%ebx),%edx
c010755a:	c7 43 0c 00 00 00 00 	movl   $0x0,0xc(%ebx)
c0107561:	75 b9                	jne    c010751c <_calloc_r+0x3c>
c0107563:	c7 43 10 00 00 00 00 	movl   $0x0,0x10(%ebx)
c010756a:	8d 53 18             	lea    0x18(%ebx),%edx
c010756d:	c7 43 14 00 00 00 00 	movl   $0x0,0x14(%ebx)
c0107574:	eb a6                	jmp    c010751c <_calloc_r+0x3c>
c0107576:	66 90                	xchg   %ax,%ax
c0107578:	89 1c 24             	mov    %ebx,(%esp)
c010757b:	89 44 24 08          	mov    %eax,0x8(%esp)
c010757f:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c0107586:	00 
c0107587:	e8 5c a2 ff ff       	call   c01017e8 <memset>
c010758c:	83 c4 14             	add    $0x14,%esp
c010758f:	89 d8                	mov    %ebx,%eax
c0107591:	5b                   	pop    %ebx
c0107592:	5d                   	pop    %ebp
c0107593:	c3                   	ret    
c0107594:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0107598:	31 c0                	xor    %eax,%eax
c010759a:	eb 96                	jmp    c0107532 <_calloc_r+0x52>
c010759c:	66 90                	xchg   %ax,%ax
c010759e:	66 90                	xchg   %ax,%ax

c01075a0 <_malloc_trim_r>:
c01075a0:	55                   	push   %ebp
c01075a1:	89 e5                	mov    %esp,%ebp
c01075a3:	57                   	push   %edi
c01075a4:	56                   	push   %esi
c01075a5:	53                   	push   %ebx
c01075a6:	83 ec 1c             	sub    $0x1c,%esp
c01075a9:	8b 75 08             	mov    0x8(%ebp),%esi
c01075ac:	89 34 24             	mov    %esi,(%esp)
c01075af:	e8 ec df ff ff       	call   c01055a0 <__malloc_lock>
c01075b4:	a1 28 a5 10 c0       	mov    0xc010a528,%eax
c01075b9:	8b 58 04             	mov    0x4(%eax),%ebx
c01075bc:	83 e3 fc             	and    $0xfffffffc,%ebx
c01075bf:	89 d8                	mov    %ebx,%eax
c01075c1:	2b 45 0c             	sub    0xc(%ebp),%eax
c01075c4:	05 ef 0f 00 00       	add    $0xfef,%eax
c01075c9:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c01075ce:	8d b8 00 f0 ff ff    	lea    -0x1000(%eax),%edi
c01075d4:	81 ff ff 0f 00 00    	cmp    $0xfff,%edi
c01075da:	7e 1c                	jle    c01075f8 <_malloc_trim_r+0x58>
c01075dc:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c01075e3:	00 
c01075e4:	89 34 24             	mov    %esi,(%esp)
c01075e7:	e8 b4 ed ff ff       	call   c01063a0 <_sbrk_r>
c01075ec:	8b 15 28 a5 10 c0    	mov    0xc010a528,%edx
c01075f2:	01 da                	add    %ebx,%edx
c01075f4:	39 d0                	cmp    %edx,%eax
c01075f6:	74 18                	je     c0107610 <_malloc_trim_r+0x70>
c01075f8:	89 34 24             	mov    %esi,(%esp)
c01075fb:	e8 b0 df ff ff       	call   c01055b0 <__malloc_unlock>
c0107600:	83 c4 1c             	add    $0x1c,%esp
c0107603:	31 c0                	xor    %eax,%eax
c0107605:	5b                   	pop    %ebx
c0107606:	5e                   	pop    %esi
c0107607:	5f                   	pop    %edi
c0107608:	5d                   	pop    %ebp
c0107609:	c3                   	ret    
c010760a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0107610:	89 f8                	mov    %edi,%eax
c0107612:	f7 d8                	neg    %eax
c0107614:	89 44 24 04          	mov    %eax,0x4(%esp)
c0107618:	89 34 24             	mov    %esi,(%esp)
c010761b:	e8 80 ed ff ff       	call   c01063a0 <_sbrk_r>
c0107620:	83 f8 ff             	cmp    $0xffffffff,%eax
c0107623:	74 2b                	je     c0107650 <_malloc_trim_r+0xb0>
c0107625:	a1 28 a5 10 c0       	mov    0xc010a528,%eax
c010762a:	29 fb                	sub    %edi,%ebx
c010762c:	83 cb 01             	or     $0x1,%ebx
c010762f:	29 3d 20 20 16 c0    	sub    %edi,0xc0162020
c0107635:	89 58 04             	mov    %ebx,0x4(%eax)
c0107638:	89 34 24             	mov    %esi,(%esp)
c010763b:	e8 70 df ff ff       	call   c01055b0 <__malloc_unlock>
c0107640:	83 c4 1c             	add    $0x1c,%esp
c0107643:	b8 01 00 00 00       	mov    $0x1,%eax
c0107648:	5b                   	pop    %ebx
c0107649:	5e                   	pop    %esi
c010764a:	5f                   	pop    %edi
c010764b:	5d                   	pop    %ebp
c010764c:	c3                   	ret    
c010764d:	8d 76 00             	lea    0x0(%esi),%esi
c0107650:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c0107657:	00 
c0107658:	89 34 24             	mov    %esi,(%esp)
c010765b:	e8 40 ed ff ff       	call   c01063a0 <_sbrk_r>
c0107660:	8b 15 28 a5 10 c0    	mov    0xc010a528,%edx
c0107666:	89 c1                	mov    %eax,%ecx
c0107668:	29 d1                	sub    %edx,%ecx
c010766a:	83 f9 0f             	cmp    $0xf,%ecx
c010766d:	7e 89                	jle    c01075f8 <_malloc_trim_r+0x58>
c010766f:	2b 05 00 a5 10 c0    	sub    0xc010a500,%eax
c0107675:	83 c9 01             	or     $0x1,%ecx
c0107678:	89 4a 04             	mov    %ecx,0x4(%edx)
c010767b:	a3 20 20 16 c0       	mov    %eax,0xc0162020
c0107680:	e9 73 ff ff ff       	jmp    c01075f8 <_malloc_trim_r+0x58>
c0107685:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0107689:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0107690 <_free_r>:
c0107690:	55                   	push   %ebp
c0107691:	89 e5                	mov    %esp,%ebp
c0107693:	57                   	push   %edi
c0107694:	56                   	push   %esi
c0107695:	53                   	push   %ebx
c0107696:	83 ec 1c             	sub    $0x1c,%esp
c0107699:	8b 75 0c             	mov    0xc(%ebp),%esi
c010769c:	8b 45 08             	mov    0x8(%ebp),%eax
c010769f:	85 f6                	test   %esi,%esi
c01076a1:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c01076a4:	0f 84 fe 00 00 00    	je     c01077a8 <_free_r+0x118>
c01076aa:	89 04 24             	mov    %eax,(%esp)
c01076ad:	e8 ee de ff ff       	call   c01055a0 <__malloc_lock>
c01076b2:	8b 7e fc             	mov    -0x4(%esi),%edi
c01076b5:	8d 56 f8             	lea    -0x8(%esi),%edx
c01076b8:	89 f8                	mov    %edi,%eax
c01076ba:	83 e0 fe             	and    $0xfffffffe,%eax
c01076bd:	8d 0c 02             	lea    (%edx,%eax,1),%ecx
c01076c0:	8b 59 04             	mov    0x4(%ecx),%ebx
c01076c3:	83 e3 fc             	and    $0xfffffffc,%ebx
c01076c6:	39 0d 28 a5 10 c0    	cmp    %ecx,0xc010a528
c01076cc:	0f 84 0e 01 00 00    	je     c01077e0 <_free_r+0x150>
c01076d2:	83 e7 01             	and    $0x1,%edi
c01076d5:	89 59 04             	mov    %ebx,0x4(%ecx)
c01076d8:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%ebp)
c01076df:	75 1f                	jne    c0107700 <_free_r+0x70>
c01076e1:	8b 76 f8             	mov    -0x8(%esi),%esi
c01076e4:	29 f2                	sub    %esi,%edx
c01076e6:	01 f0                	add    %esi,%eax
c01076e8:	8b 72 08             	mov    0x8(%edx),%esi
c01076eb:	81 fe 28 a5 10 c0    	cmp    $0xc010a528,%esi
c01076f1:	0f 84 39 01 00 00    	je     c0107830 <_free_r+0x1a0>
c01076f7:	8b 7a 0c             	mov    0xc(%edx),%edi
c01076fa:	89 7e 0c             	mov    %edi,0xc(%esi)
c01076fd:	89 77 08             	mov    %esi,0x8(%edi)
c0107700:	f6 44 19 04 01       	testb  $0x1,0x4(%ecx,%ebx,1)
c0107705:	75 21                	jne    c0107728 <_free_r+0x98>
c0107707:	8b 75 e0             	mov    -0x20(%ebp),%esi
c010770a:	01 d8                	add    %ebx,%eax
c010770c:	8b 59 08             	mov    0x8(%ecx),%ebx
c010770f:	85 f6                	test   %esi,%esi
c0107711:	75 0c                	jne    c010771f <_free_r+0x8f>
c0107713:	81 fb 28 a5 10 c0    	cmp    $0xc010a528,%ebx
c0107719:	0f 84 21 01 00 00    	je     c0107840 <_free_r+0x1b0>
c010771f:	8b 49 0c             	mov    0xc(%ecx),%ecx
c0107722:	89 4b 0c             	mov    %ecx,0xc(%ebx)
c0107725:	89 59 08             	mov    %ebx,0x8(%ecx)
c0107728:	89 c1                	mov    %eax,%ecx
c010772a:	83 c9 01             	or     $0x1,%ecx
c010772d:	89 4a 04             	mov    %ecx,0x4(%edx)
c0107730:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0107733:	89 04 02             	mov    %eax,(%edx,%eax,1)
c0107736:	85 c9                	test   %ecx,%ecx
c0107738:	75 56                	jne    c0107790 <_free_r+0x100>
c010773a:	3d ff 01 00 00       	cmp    $0x1ff,%eax
c010773f:	76 6f                	jbe    c01077b0 <_free_r+0x120>
c0107741:	89 c1                	mov    %eax,%ecx
c0107743:	c1 e9 09             	shr    $0x9,%ecx
c0107746:	83 f9 04             	cmp    $0x4,%ecx
c0107749:	0f 87 21 01 00 00    	ja     c0107870 <_free_r+0x1e0>
c010774f:	89 c1                	mov    %eax,%ecx
c0107751:	c1 e9 06             	shr    $0x6,%ecx
c0107754:	83 c1 38             	add    $0x38,%ecx
c0107757:	8d 1c 09             	lea    (%ecx,%ecx,1),%ebx
c010775a:	8d 34 9d 20 a5 10 c0 	lea    -0x3fef5ae0(,%ebx,4),%esi
c0107761:	8b 5e 08             	mov    0x8(%esi),%ebx
c0107764:	39 f3                	cmp    %esi,%ebx
c0107766:	0f 84 14 01 00 00    	je     c0107880 <_free_r+0x1f0>
c010776c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0107770:	8b 4b 04             	mov    0x4(%ebx),%ecx
c0107773:	83 e1 fc             	and    $0xfffffffc,%ecx
c0107776:	39 c8                	cmp    %ecx,%eax
c0107778:	73 07                	jae    c0107781 <_free_r+0xf1>
c010777a:	8b 5b 08             	mov    0x8(%ebx),%ebx
c010777d:	39 de                	cmp    %ebx,%esi
c010777f:	75 ef                	jne    c0107770 <_free_r+0xe0>
c0107781:	8b 43 0c             	mov    0xc(%ebx),%eax
c0107784:	89 42 0c             	mov    %eax,0xc(%edx)
c0107787:	89 5a 08             	mov    %ebx,0x8(%edx)
c010778a:	89 50 08             	mov    %edx,0x8(%eax)
c010778d:	89 53 0c             	mov    %edx,0xc(%ebx)
c0107790:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0107793:	89 45 08             	mov    %eax,0x8(%ebp)
c0107796:	83 c4 1c             	add    $0x1c,%esp
c0107799:	5b                   	pop    %ebx
c010779a:	5e                   	pop    %esi
c010779b:	5f                   	pop    %edi
c010779c:	5d                   	pop    %ebp
c010779d:	e9 0e de ff ff       	jmp    c01055b0 <__malloc_unlock>
c01077a2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c01077a8:	83 c4 1c             	add    $0x1c,%esp
c01077ab:	5b                   	pop    %ebx
c01077ac:	5e                   	pop    %esi
c01077ad:	5f                   	pop    %edi
c01077ae:	5d                   	pop    %ebp
c01077af:	c3                   	ret    
c01077b0:	c1 e8 03             	shr    $0x3,%eax
c01077b3:	bb 01 00 00 00       	mov    $0x1,%ebx
c01077b8:	89 c1                	mov    %eax,%ecx
c01077ba:	c1 f9 02             	sar    $0x2,%ecx
c01077bd:	8d 04 c5 20 a5 10 c0 	lea    -0x3fef5ae0(,%eax,8),%eax
c01077c4:	d3 e3                	shl    %cl,%ebx
c01077c6:	8b 48 08             	mov    0x8(%eax),%ecx
c01077c9:	09 1d 24 a5 10 c0    	or     %ebx,0xc010a524
c01077cf:	89 42 0c             	mov    %eax,0xc(%edx)
c01077d2:	89 4a 08             	mov    %ecx,0x8(%edx)
c01077d5:	89 50 08             	mov    %edx,0x8(%eax)
c01077d8:	89 51 0c             	mov    %edx,0xc(%ecx)
c01077db:	eb b3                	jmp    c0107790 <_free_r+0x100>
c01077dd:	8d 76 00             	lea    0x0(%esi),%esi
c01077e0:	01 d8                	add    %ebx,%eax
c01077e2:	83 e7 01             	and    $0x1,%edi
c01077e5:	75 13                	jne    c01077fa <_free_r+0x16a>
c01077e7:	8b 4e f8             	mov    -0x8(%esi),%ecx
c01077ea:	29 ca                	sub    %ecx,%edx
c01077ec:	01 c8                	add    %ecx,%eax
c01077ee:	8b 5a 08             	mov    0x8(%edx),%ebx
c01077f1:	8b 4a 0c             	mov    0xc(%edx),%ecx
c01077f4:	89 4b 0c             	mov    %ecx,0xc(%ebx)
c01077f7:	89 59 08             	mov    %ebx,0x8(%ecx)
c01077fa:	89 c1                	mov    %eax,%ecx
c01077fc:	83 c9 01             	or     $0x1,%ecx
c01077ff:	3b 05 04 a5 10 c0    	cmp    0xc010a504,%eax
c0107805:	89 4a 04             	mov    %ecx,0x4(%edx)
c0107808:	89 15 28 a5 10 c0    	mov    %edx,0xc010a528
c010780e:	72 80                	jb     c0107790 <_free_r+0x100>
c0107810:	a1 50 20 16 c0       	mov    0xc0162050,%eax
c0107815:	89 44 24 04          	mov    %eax,0x4(%esp)
c0107819:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c010781c:	89 04 24             	mov    %eax,(%esp)
c010781f:	e8 7c fd ff ff       	call   c01075a0 <_malloc_trim_r>
c0107824:	e9 67 ff ff ff       	jmp    c0107790 <_free_r+0x100>
c0107829:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0107830:	c7 45 e0 01 00 00 00 	movl   $0x1,-0x20(%ebp)
c0107837:	e9 c4 fe ff ff       	jmp    c0107700 <_free_r+0x70>
c010783c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0107840:	89 c1                	mov    %eax,%ecx
c0107842:	83 c9 01             	or     $0x1,%ecx
c0107845:	89 15 34 a5 10 c0    	mov    %edx,0xc010a534
c010784b:	89 15 30 a5 10 c0    	mov    %edx,0xc010a530
c0107851:	c7 42 0c 28 a5 10 c0 	movl   $0xc010a528,0xc(%edx)
c0107858:	c7 42 08 28 a5 10 c0 	movl   $0xc010a528,0x8(%edx)
c010785f:	89 4a 04             	mov    %ecx,0x4(%edx)
c0107862:	89 04 02             	mov    %eax,(%edx,%eax,1)
c0107865:	e9 26 ff ff ff       	jmp    c0107790 <_free_r+0x100>
c010786a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0107870:	83 f9 14             	cmp    $0x14,%ecx
c0107873:	77 23                	ja     c0107898 <_free_r+0x208>
c0107875:	83 c1 5b             	add    $0x5b,%ecx
c0107878:	8d 1c 09             	lea    (%ecx,%ecx,1),%ebx
c010787b:	e9 da fe ff ff       	jmp    c010775a <_free_r+0xca>
c0107880:	c1 f9 02             	sar    $0x2,%ecx
c0107883:	b8 01 00 00 00       	mov    $0x1,%eax
c0107888:	d3 e0                	shl    %cl,%eax
c010788a:	09 05 24 a5 10 c0    	or     %eax,0xc010a524
c0107890:	89 d8                	mov    %ebx,%eax
c0107892:	e9 ed fe ff ff       	jmp    c0107784 <_free_r+0xf4>
c0107897:	90                   	nop
c0107898:	83 f9 54             	cmp    $0x54,%ecx
c010789b:	77 10                	ja     c01078ad <_free_r+0x21d>
c010789d:	89 c1                	mov    %eax,%ecx
c010789f:	c1 e9 0c             	shr    $0xc,%ecx
c01078a2:	83 c1 6e             	add    $0x6e,%ecx
c01078a5:	8d 1c 09             	lea    (%ecx,%ecx,1),%ebx
c01078a8:	e9 ad fe ff ff       	jmp    c010775a <_free_r+0xca>
c01078ad:	81 f9 54 01 00 00    	cmp    $0x154,%ecx
c01078b3:	77 10                	ja     c01078c5 <_free_r+0x235>
c01078b5:	89 c1                	mov    %eax,%ecx
c01078b7:	c1 e9 0f             	shr    $0xf,%ecx
c01078ba:	83 c1 77             	add    $0x77,%ecx
c01078bd:	8d 1c 09             	lea    (%ecx,%ecx,1),%ebx
c01078c0:	e9 95 fe ff ff       	jmp    c010775a <_free_r+0xca>
c01078c5:	81 f9 54 05 00 00    	cmp    $0x554,%ecx
c01078cb:	77 10                	ja     c01078dd <_free_r+0x24d>
c01078cd:	89 c1                	mov    %eax,%ecx
c01078cf:	c1 e9 12             	shr    $0x12,%ecx
c01078d2:	83 c1 7c             	add    $0x7c,%ecx
c01078d5:	8d 1c 09             	lea    (%ecx,%ecx,1),%ebx
c01078d8:	e9 7d fe ff ff       	jmp    c010775a <_free_r+0xca>
c01078dd:	bb fc 00 00 00       	mov    $0xfc,%ebx
c01078e2:	b9 7e 00 00 00       	mov    $0x7e,%ecx
c01078e7:	e9 6e fe ff ff       	jmp    c010775a <_free_r+0xca>
c01078ec:	66 90                	xchg   %ax,%ax
c01078ee:	66 90                	xchg   %ax,%ax

c01078f0 <memmove>:
c01078f0:	55                   	push   %ebp
c01078f1:	89 e5                	mov    %esp,%ebp
c01078f3:	56                   	push   %esi
c01078f4:	57                   	push   %edi
c01078f5:	53                   	push   %ebx
c01078f6:	8b 7d 08             	mov    0x8(%ebp),%edi
c01078f9:	8b 4d 10             	mov    0x10(%ebp),%ecx
c01078fc:	8b 75 0c             	mov    0xc(%ebp),%esi
c01078ff:	fc                   	cld    
c0107900:	39 fe                	cmp    %edi,%esi
c0107902:	73 43                	jae    c0107947 <memmove+0x57>
c0107904:	8d 5c 31 ff          	lea    -0x1(%ecx,%esi,1),%ebx
c0107908:	39 df                	cmp    %ebx,%edi
c010790a:	77 3b                	ja     c0107947 <memmove+0x57>
c010790c:	01 ce                	add    %ecx,%esi
c010790e:	01 cf                	add    %ecx,%edi
c0107910:	fd                   	std    
c0107911:	83 f9 08             	cmp    $0x8,%ecx
c0107914:	76 2b                	jbe    c0107941 <memmove+0x51>
c0107916:	89 fa                	mov    %edi,%edx
c0107918:	89 cb                	mov    %ecx,%ebx
c010791a:	83 e2 03             	and    $0x3,%edx
c010791d:	74 0c                	je     c010792b <memmove+0x3b>
c010791f:	89 d1                	mov    %edx,%ecx
c0107921:	4e                   	dec    %esi
c0107922:	4f                   	dec    %edi
c0107923:	29 cb                	sub    %ecx,%ebx
c0107925:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
c0107927:	89 d9                	mov    %ebx,%ecx
c0107929:	46                   	inc    %esi
c010792a:	47                   	inc    %edi
c010792b:	c1 e9 02             	shr    $0x2,%ecx
c010792e:	83 ee 04             	sub    $0x4,%esi
c0107931:	83 ef 04             	sub    $0x4,%edi
c0107934:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
c0107936:	83 c6 04             	add    $0x4,%esi
c0107939:	83 c7 04             	add    $0x4,%edi
c010793c:	89 d9                	mov    %ebx,%ecx
c010793e:	83 e1 03             	and    $0x3,%ecx
c0107941:	4e                   	dec    %esi
c0107942:	4f                   	dec    %edi
c0107943:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
c0107945:	eb 2a                	jmp    c0107971 <memmove+0x81>
c0107947:	83 f9 08             	cmp    $0x8,%ecx
c010794a:	76 23                	jbe    c010796f <memmove+0x7f>
c010794c:	89 fa                	mov    %edi,%edx
c010794e:	89 cb                	mov    %ecx,%ebx
c0107950:	83 e2 03             	and    $0x3,%edx
c0107953:	74 10                	je     c0107965 <memmove+0x75>
c0107955:	b9 04 00 00 00       	mov    $0x4,%ecx
c010795a:	29 d1                	sub    %edx,%ecx
c010795c:	83 e1 03             	and    $0x3,%ecx
c010795f:	29 cb                	sub    %ecx,%ebx
c0107961:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
c0107963:	89 d9                	mov    %ebx,%ecx
c0107965:	c1 e9 02             	shr    $0x2,%ecx
c0107968:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
c010796a:	89 d9                	mov    %ebx,%ecx
c010796c:	83 e1 03             	and    $0x3,%ecx
c010796f:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
c0107971:	8b 45 08             	mov    0x8(%ebp),%eax
c0107974:	fc                   	cld    
c0107975:	8d 65 f4             	lea    -0xc(%ebp),%esp
c0107978:	5b                   	pop    %ebx
c0107979:	5f                   	pop    %edi
c010797a:	5e                   	pop    %esi
c010797b:	c9                   	leave  
c010797c:	c3                   	ret    
c010797d:	66 90                	xchg   %ax,%ax
c010797f:	90                   	nop

c0107980 <_realloc_r>:
c0107980:	55                   	push   %ebp
c0107981:	89 e5                	mov    %esp,%ebp
c0107983:	57                   	push   %edi
c0107984:	56                   	push   %esi
c0107985:	53                   	push   %ebx
c0107986:	83 ec 3c             	sub    $0x3c,%esp
c0107989:	8b 45 08             	mov    0x8(%ebp),%eax
c010798c:	8b 7d 0c             	mov    0xc(%ebp),%edi
c010798f:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0107992:	8b 45 10             	mov    0x10(%ebp),%eax
c0107995:	85 ff                	test   %edi,%edi
c0107997:	89 45 e0             	mov    %eax,-0x20(%ebp)
c010799a:	0f 84 50 02 00 00    	je     c0107bf0 <_realloc_r+0x270>
c01079a0:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c01079a3:	8d 77 f8             	lea    -0x8(%edi),%esi
c01079a6:	89 04 24             	mov    %eax,(%esp)
c01079a9:	e8 f2 db ff ff       	call   c01055a0 <__malloc_lock>
c01079ae:	8b 47 fc             	mov    -0x4(%edi),%eax
c01079b1:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c01079b4:	89 c3                	mov    %eax,%ebx
c01079b6:	8d 51 0b             	lea    0xb(%ecx),%edx
c01079b9:	83 e3 fc             	and    $0xfffffffc,%ebx
c01079bc:	83 fa 16             	cmp    $0x16,%edx
c01079bf:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c01079c2:	0f 87 00 01 00 00    	ja     c0107ac8 <_realloc_r+0x148>
c01079c8:	31 d2                	xor    %edx,%edx
c01079ca:	c7 45 d8 10 00 00 00 	movl   $0x10,-0x28(%ebp)
c01079d1:	c7 45 dc 10 00 00 00 	movl   $0x10,-0x24(%ebp)
c01079d8:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c01079db:	39 4d dc             	cmp    %ecx,-0x24(%ebp)
c01079de:	0f 82 1c 02 00 00    	jb     c0107c00 <_realloc_r+0x280>
c01079e4:	84 d2                	test   %dl,%dl
c01079e6:	0f 85 14 02 00 00    	jne    c0107c00 <_realloc_r+0x280>
c01079ec:	3b 5d d8             	cmp    -0x28(%ebp),%ebx
c01079ef:	0f 8d eb 00 00 00    	jge    c0107ae0 <_realloc_r+0x160>
c01079f5:	8b 0d 28 a5 10 c0    	mov    0xc010a528,%ecx
c01079fb:	8d 14 1e             	lea    (%esi,%ebx,1),%edx
c01079fe:	39 d1                	cmp    %edx,%ecx
c0107a00:	89 4d cc             	mov    %ecx,-0x34(%ebp)
c0107a03:	0f 84 6f 02 00 00    	je     c0107c78 <_realloc_r+0x2f8>
c0107a09:	8b 4a 04             	mov    0x4(%edx),%ecx
c0107a0c:	89 c8                	mov    %ecx,%eax
c0107a0e:	83 e0 fe             	and    $0xfffffffe,%eax
c0107a11:	f6 44 02 04 01       	testb  $0x1,0x4(%edx,%eax,1)
c0107a16:	0f 84 f4 00 00 00    	je     c0107b10 <_realloc_r+0x190>
c0107a1c:	c7 45 d0 00 00 00 00 	movl   $0x0,-0x30(%ebp)
c0107a23:	31 d2                	xor    %edx,%edx
c0107a25:	f6 45 d4 01          	testb  $0x1,-0x2c(%ebp)
c0107a29:	0f 85 39 01 00 00    	jne    c0107b68 <_realloc_r+0x1e8>
c0107a2f:	89 f1                	mov    %esi,%ecx
c0107a31:	2b 4f f8             	sub    -0x8(%edi),%ecx
c0107a34:	8b 41 04             	mov    0x4(%ecx),%eax
c0107a37:	83 e0 fc             	and    $0xfffffffc,%eax
c0107a3a:	85 d2                	test   %edx,%edx
c0107a3c:	0f 84 f6 02 00 00    	je     c0107d38 <_realloc_r+0x3b8>
c0107a42:	3b 55 cc             	cmp    -0x34(%ebp),%edx
c0107a45:	0f 84 f5 02 00 00    	je     c0107d40 <_realloc_r+0x3c0>
c0107a4b:	89 55 d4             	mov    %edx,-0x2c(%ebp)
c0107a4e:	8b 55 d0             	mov    -0x30(%ebp),%edx
c0107a51:	01 d8                	add    %ebx,%eax
c0107a53:	01 c2                	add    %eax,%edx
c0107a55:	3b 55 d8             	cmp    -0x28(%ebp),%edx
c0107a58:	89 55 d0             	mov    %edx,-0x30(%ebp)
c0107a5b:	8b 55 d4             	mov    -0x2c(%ebp),%edx
c0107a5e:	0f 8c ac 01 00 00    	jl     c0107c10 <_realloc_r+0x290>
c0107a64:	8b 42 0c             	mov    0xc(%edx),%eax
c0107a67:	83 eb 04             	sub    $0x4,%ebx
c0107a6a:	8b 52 08             	mov    0x8(%edx),%edx
c0107a6d:	83 fb 24             	cmp    $0x24,%ebx
c0107a70:	8d 71 08             	lea    0x8(%ecx),%esi
c0107a73:	89 42 0c             	mov    %eax,0xc(%edx)
c0107a76:	89 50 08             	mov    %edx,0x8(%eax)
c0107a79:	8b 41 0c             	mov    0xc(%ecx),%eax
c0107a7c:	8b 51 08             	mov    0x8(%ecx),%edx
c0107a7f:	89 42 0c             	mov    %eax,0xc(%edx)
c0107a82:	89 50 08             	mov    %edx,0x8(%eax)
c0107a85:	0f 87 85 03 00 00    	ja     c0107e10 <_realloc_r+0x490>
c0107a8b:	83 fb 13             	cmp    $0x13,%ebx
c0107a8e:	89 f0                	mov    %esi,%eax
c0107a90:	76 1a                	jbe    c0107aac <_realloc_r+0x12c>
c0107a92:	8b 07                	mov    (%edi),%eax
c0107a94:	83 fb 1b             	cmp    $0x1b,%ebx
c0107a97:	89 41 08             	mov    %eax,0x8(%ecx)
c0107a9a:	8b 47 04             	mov    0x4(%edi),%eax
c0107a9d:	89 41 0c             	mov    %eax,0xc(%ecx)
c0107aa0:	0f 87 8f 03 00 00    	ja     c0107e35 <_realloc_r+0x4b5>
c0107aa6:	8d 41 10             	lea    0x10(%ecx),%eax
c0107aa9:	83 c7 08             	add    $0x8,%edi
c0107aac:	8b 17                	mov    (%edi),%edx
c0107aae:	8b 5d d0             	mov    -0x30(%ebp),%ebx
c0107ab1:	89 10                	mov    %edx,(%eax)
c0107ab3:	8b 57 04             	mov    0x4(%edi),%edx
c0107ab6:	89 50 04             	mov    %edx,0x4(%eax)
c0107ab9:	8b 57 08             	mov    0x8(%edi),%edx
c0107abc:	89 f7                	mov    %esi,%edi
c0107abe:	89 ce                	mov    %ecx,%esi
c0107ac0:	89 50 08             	mov    %edx,0x8(%eax)
c0107ac3:	8b 41 04             	mov    0x4(%ecx),%eax
c0107ac6:	eb 1b                	jmp    c0107ae3 <_realloc_r+0x163>
c0107ac8:	83 e2 f8             	and    $0xfffffff8,%edx
c0107acb:	89 55 dc             	mov    %edx,-0x24(%ebp)
c0107ace:	89 55 d8             	mov    %edx,-0x28(%ebp)
c0107ad1:	c1 ea 1f             	shr    $0x1f,%edx
c0107ad4:	e9 ff fe ff ff       	jmp    c01079d8 <_realloc_r+0x58>
c0107ad9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0107ae0:	8b 45 d4             	mov    -0x2c(%ebp),%eax
c0107ae3:	89 da                	mov    %ebx,%edx
c0107ae5:	2b 55 dc             	sub    -0x24(%ebp),%edx
c0107ae8:	83 fa 0f             	cmp    $0xf,%edx
c0107aeb:	77 4b                	ja     c0107b38 <_realloc_r+0x1b8>
c0107aed:	83 e0 01             	and    $0x1,%eax
c0107af0:	09 d8                	or     %ebx,%eax
c0107af2:	89 46 04             	mov    %eax,0x4(%esi)
c0107af5:	83 4c 1e 04 01       	orl    $0x1,0x4(%esi,%ebx,1)
c0107afa:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0107afd:	89 04 24             	mov    %eax,(%esp)
c0107b00:	e8 ab da ff ff       	call   c01055b0 <__malloc_unlock>
c0107b05:	89 f8                	mov    %edi,%eax
c0107b07:	83 c4 3c             	add    $0x3c,%esp
c0107b0a:	5b                   	pop    %ebx
c0107b0b:	5e                   	pop    %esi
c0107b0c:	5f                   	pop    %edi
c0107b0d:	5d                   	pop    %ebp
c0107b0e:	c3                   	ret    
c0107b0f:	90                   	nop
c0107b10:	83 e1 fc             	and    $0xfffffffc,%ecx
c0107b13:	89 4d d0             	mov    %ecx,-0x30(%ebp)
c0107b16:	01 d9                	add    %ebx,%ecx
c0107b18:	3b 4d d8             	cmp    -0x28(%ebp),%ecx
c0107b1b:	0f 8c 04 ff ff ff    	jl     c0107a25 <_realloc_r+0xa5>
c0107b21:	8b 5a 0c             	mov    0xc(%edx),%ebx
c0107b24:	8b 52 08             	mov    0x8(%edx),%edx
c0107b27:	8b 45 d4             	mov    -0x2c(%ebp),%eax
c0107b2a:	89 5a 0c             	mov    %ebx,0xc(%edx)
c0107b2d:	89 53 08             	mov    %edx,0x8(%ebx)
c0107b30:	89 cb                	mov    %ecx,%ebx
c0107b32:	eb af                	jmp    c0107ae3 <_realloc_r+0x163>
c0107b34:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0107b38:	8b 5d dc             	mov    -0x24(%ebp),%ebx
c0107b3b:	83 e0 01             	and    $0x1,%eax
c0107b3e:	09 d8                	or     %ebx,%eax
c0107b40:	89 46 04             	mov    %eax,0x4(%esi)
c0107b43:	89 d0                	mov    %edx,%eax
c0107b45:	8d 0c 1e             	lea    (%esi,%ebx,1),%ecx
c0107b48:	83 c8 01             	or     $0x1,%eax
c0107b4b:	89 41 04             	mov    %eax,0x4(%ecx)
c0107b4e:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0107b51:	83 4c 11 04 01       	orl    $0x1,0x4(%ecx,%edx,1)
c0107b56:	83 c1 08             	add    $0x8,%ecx
c0107b59:	89 4c 24 04          	mov    %ecx,0x4(%esp)
c0107b5d:	89 04 24             	mov    %eax,(%esp)
c0107b60:	e8 2b fb ff ff       	call   c0107690 <_free_r>
c0107b65:	eb 93                	jmp    c0107afa <_realloc_r+0x17a>
c0107b67:	90                   	nop
c0107b68:	8b 45 e0             	mov    -0x20(%ebp),%eax
c0107b6b:	89 44 24 04          	mov    %eax,0x4(%esp)
c0107b6f:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0107b72:	89 04 24             	mov    %eax,(%esp)
c0107b75:	e8 46 d2 ff ff       	call   c0104dc0 <_malloc_r>
c0107b7a:	85 c0                	test   %eax,%eax
c0107b7c:	89 c1                	mov    %eax,%ecx
c0107b7e:	0f 84 65 03 00 00    	je     c0107ee9 <_realloc_r+0x569>
c0107b84:	8b 47 fc             	mov    -0x4(%edi),%eax
c0107b87:	8d 51 f8             	lea    -0x8(%ecx),%edx
c0107b8a:	89 55 e0             	mov    %edx,-0x20(%ebp)
c0107b8d:	89 c2                	mov    %eax,%edx
c0107b8f:	83 e2 fe             	and    $0xfffffffe,%edx
c0107b92:	01 f2                	add    %esi,%edx
c0107b94:	39 55 e0             	cmp    %edx,-0x20(%ebp)
c0107b97:	0f 84 63 02 00 00    	je     c0107e00 <_realloc_r+0x480>
c0107b9d:	83 eb 04             	sub    $0x4,%ebx
c0107ba0:	83 fb 24             	cmp    $0x24,%ebx
c0107ba3:	0f 87 6f 01 00 00    	ja     c0107d18 <_realloc_r+0x398>
c0107ba9:	83 fb 13             	cmp    $0x13,%ebx
c0107bac:	0f 87 ee 00 00 00    	ja     c0107ca0 <_realloc_r+0x320>
c0107bb2:	89 c8                	mov    %ecx,%eax
c0107bb4:	89 fa                	mov    %edi,%edx
c0107bb6:	8b 1a                	mov    (%edx),%ebx
c0107bb8:	89 18                	mov    %ebx,(%eax)
c0107bba:	8b 5a 04             	mov    0x4(%edx),%ebx
c0107bbd:	89 58 04             	mov    %ebx,0x4(%eax)
c0107bc0:	8b 52 08             	mov    0x8(%edx),%edx
c0107bc3:	89 50 08             	mov    %edx,0x8(%eax)
c0107bc6:	8b 75 e4             	mov    -0x1c(%ebp),%esi
c0107bc9:	89 7c 24 04          	mov    %edi,0x4(%esp)
c0107bcd:	89 4d e0             	mov    %ecx,-0x20(%ebp)
c0107bd0:	89 34 24             	mov    %esi,(%esp)
c0107bd3:	e8 b8 fa ff ff       	call   c0107690 <_free_r>
c0107bd8:	89 34 24             	mov    %esi,(%esp)
c0107bdb:	e8 d0 d9 ff ff       	call   c01055b0 <__malloc_unlock>
c0107be0:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0107be3:	83 c4 3c             	add    $0x3c,%esp
c0107be6:	5b                   	pop    %ebx
c0107be7:	5e                   	pop    %esi
c0107be8:	5f                   	pop    %edi
c0107be9:	89 c8                	mov    %ecx,%eax
c0107beb:	5d                   	pop    %ebp
c0107bec:	c3                   	ret    
c0107bed:	8d 76 00             	lea    0x0(%esi),%esi
c0107bf0:	89 45 0c             	mov    %eax,0xc(%ebp)
c0107bf3:	83 c4 3c             	add    $0x3c,%esp
c0107bf6:	5b                   	pop    %ebx
c0107bf7:	5e                   	pop    %esi
c0107bf8:	5f                   	pop    %edi
c0107bf9:	5d                   	pop    %ebp
c0107bfa:	e9 c1 d1 ff ff       	jmp    c0104dc0 <_malloc_r>
c0107bff:	90                   	nop
c0107c00:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0107c03:	c7 00 0c 00 00 00    	movl   $0xc,(%eax)
c0107c09:	31 c0                	xor    %eax,%eax
c0107c0b:	e9 f7 fe ff ff       	jmp    c0107b07 <_realloc_r+0x187>
c0107c10:	89 c2                	mov    %eax,%edx
c0107c12:	3b 55 d8             	cmp    -0x28(%ebp),%edx
c0107c15:	0f 8c 4d ff ff ff    	jl     c0107b68 <_realloc_r+0x1e8>
c0107c1b:	8b 71 08             	mov    0x8(%ecx),%esi
c0107c1e:	83 eb 04             	sub    $0x4,%ebx
c0107c21:	8b 41 0c             	mov    0xc(%ecx),%eax
c0107c24:	83 fb 24             	cmp    $0x24,%ebx
c0107c27:	89 46 0c             	mov    %eax,0xc(%esi)
c0107c2a:	89 70 08             	mov    %esi,0x8(%eax)
c0107c2d:	8d 71 08             	lea    0x8(%ecx),%esi
c0107c30:	0f 87 88 00 00 00    	ja     c0107cbe <_realloc_r+0x33e>
c0107c36:	83 fb 13             	cmp    $0x13,%ebx
c0107c39:	89 f0                	mov    %esi,%eax
c0107c3b:	76 1a                	jbe    c0107c57 <_realloc_r+0x2d7>
c0107c3d:	8b 07                	mov    (%edi),%eax
c0107c3f:	83 fb 1b             	cmp    $0x1b,%ebx
c0107c42:	89 41 08             	mov    %eax,0x8(%ecx)
c0107c45:	8b 47 04             	mov    0x4(%edi),%eax
c0107c48:	89 41 0c             	mov    %eax,0xc(%ecx)
c0107c4b:	0f 87 17 02 00 00    	ja     c0107e68 <_realloc_r+0x4e8>
c0107c51:	8d 41 10             	lea    0x10(%ecx),%eax
c0107c54:	83 c7 08             	add    $0x8,%edi
c0107c57:	8b 1f                	mov    (%edi),%ebx
c0107c59:	89 18                	mov    %ebx,(%eax)
c0107c5b:	8b 5f 04             	mov    0x4(%edi),%ebx
c0107c5e:	89 58 04             	mov    %ebx,0x4(%eax)
c0107c61:	8b 5f 08             	mov    0x8(%edi),%ebx
c0107c64:	89 f7                	mov    %esi,%edi
c0107c66:	89 ce                	mov    %ecx,%esi
c0107c68:	89 58 08             	mov    %ebx,0x8(%eax)
c0107c6b:	89 d3                	mov    %edx,%ebx
c0107c6d:	8b 41 04             	mov    0x4(%ecx),%eax
c0107c70:	e9 6e fe ff ff       	jmp    c0107ae3 <_realloc_r+0x163>
c0107c75:	8d 76 00             	lea    0x0(%esi),%esi
c0107c78:	8b 45 cc             	mov    -0x34(%ebp),%eax
c0107c7b:	8b 55 dc             	mov    -0x24(%ebp),%edx
c0107c7e:	8b 48 04             	mov    0x4(%eax),%ecx
c0107c81:	83 c2 10             	add    $0x10,%edx
c0107c84:	89 4d d0             	mov    %ecx,-0x30(%ebp)
c0107c87:	83 65 d0 fc          	andl   $0xfffffffc,-0x30(%ebp)
c0107c8b:	8b 4d d0             	mov    -0x30(%ebp),%ecx
c0107c8e:	01 d9                	add    %ebx,%ecx
c0107c90:	39 d1                	cmp    %edx,%ecx
c0107c92:	7d 54                	jge    c0107ce8 <_realloc_r+0x368>
c0107c94:	89 c2                	mov    %eax,%edx
c0107c96:	e9 8a fd ff ff       	jmp    c0107a25 <_realloc_r+0xa5>
c0107c9b:	90                   	nop
c0107c9c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0107ca0:	8b 07                	mov    (%edi),%eax
c0107ca2:	83 fb 1b             	cmp    $0x1b,%ebx
c0107ca5:	89 01                	mov    %eax,(%ecx)
c0107ca7:	8b 47 04             	mov    0x4(%edi),%eax
c0107caa:	89 41 04             	mov    %eax,0x4(%ecx)
c0107cad:	0f 87 2d 01 00 00    	ja     c0107de0 <_realloc_r+0x460>
c0107cb3:	8d 41 08             	lea    0x8(%ecx),%eax
c0107cb6:	8d 57 08             	lea    0x8(%edi),%edx
c0107cb9:	e9 f8 fe ff ff       	jmp    c0107bb6 <_realloc_r+0x236>
c0107cbe:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0107cc2:	89 7c 24 04          	mov    %edi,0x4(%esp)
c0107cc6:	89 f7                	mov    %esi,%edi
c0107cc8:	89 34 24             	mov    %esi,(%esp)
c0107ccb:	89 55 d8             	mov    %edx,-0x28(%ebp)
c0107cce:	89 4d e0             	mov    %ecx,-0x20(%ebp)
c0107cd1:	e8 1a fc ff ff       	call   c01078f0 <memmove>
c0107cd6:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0107cd9:	8b 55 d8             	mov    -0x28(%ebp),%edx
c0107cdc:	8b 41 04             	mov    0x4(%ecx),%eax
c0107cdf:	89 ce                	mov    %ecx,%esi
c0107ce1:	89 d3                	mov    %edx,%ebx
c0107ce3:	e9 fb fd ff ff       	jmp    c0107ae3 <_realloc_r+0x163>
c0107ce8:	8b 5d dc             	mov    -0x24(%ebp),%ebx
c0107ceb:	29 d9                	sub    %ebx,%ecx
c0107ced:	01 de                	add    %ebx,%esi
c0107cef:	83 c9 01             	or     $0x1,%ecx
c0107cf2:	89 35 28 a5 10 c0    	mov    %esi,0xc010a528
c0107cf8:	89 4e 04             	mov    %ecx,0x4(%esi)
c0107cfb:	8b 47 fc             	mov    -0x4(%edi),%eax
c0107cfe:	83 e0 01             	and    $0x1,%eax
c0107d01:	09 d8                	or     %ebx,%eax
c0107d03:	89 47 fc             	mov    %eax,-0x4(%edi)
c0107d06:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0107d09:	89 04 24             	mov    %eax,(%esp)
c0107d0c:	e8 9f d8 ff ff       	call   c01055b0 <__malloc_unlock>
c0107d11:	89 f8                	mov    %edi,%eax
c0107d13:	e9 ef fd ff ff       	jmp    c0107b07 <_realloc_r+0x187>
c0107d18:	89 0c 24             	mov    %ecx,(%esp)
c0107d1b:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0107d1f:	89 7c 24 04          	mov    %edi,0x4(%esp)
c0107d23:	89 4d e0             	mov    %ecx,-0x20(%ebp)
c0107d26:	e8 c5 fb ff ff       	call   c01078f0 <memmove>
c0107d2b:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0107d2e:	e9 93 fe ff ff       	jmp    c0107bc6 <_realloc_r+0x246>
c0107d33:	90                   	nop
c0107d34:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0107d38:	8d 14 18             	lea    (%eax,%ebx,1),%edx
c0107d3b:	e9 d2 fe ff ff       	jmp    c0107c12 <_realloc_r+0x292>
c0107d40:	8d 14 18             	lea    (%eax,%ebx,1),%edx
c0107d43:	8b 45 d0             	mov    -0x30(%ebp),%eax
c0107d46:	01 d0                	add    %edx,%eax
c0107d48:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c0107d4b:	8b 45 dc             	mov    -0x24(%ebp),%eax
c0107d4e:	83 c0 10             	add    $0x10,%eax
c0107d51:	39 45 d4             	cmp    %eax,-0x2c(%ebp)
c0107d54:	0f 8c b8 fe ff ff    	jl     c0107c12 <_realloc_r+0x292>
c0107d5a:	8b 41 0c             	mov    0xc(%ecx),%eax
c0107d5d:	83 eb 04             	sub    $0x4,%ebx
c0107d60:	8b 51 08             	mov    0x8(%ecx),%edx
c0107d63:	83 fb 24             	cmp    $0x24,%ebx
c0107d66:	8d 71 08             	lea    0x8(%ecx),%esi
c0107d69:	89 42 0c             	mov    %eax,0xc(%edx)
c0107d6c:	89 50 08             	mov    %edx,0x8(%eax)
c0107d6f:	0f 87 3d 01 00 00    	ja     c0107eb2 <_realloc_r+0x532>
c0107d75:	83 fb 13             	cmp    $0x13,%ebx
c0107d78:	89 f0                	mov    %esi,%eax
c0107d7a:	76 1a                	jbe    c0107d96 <_realloc_r+0x416>
c0107d7c:	8b 07                	mov    (%edi),%eax
c0107d7e:	83 fb 1b             	cmp    $0x1b,%ebx
c0107d81:	89 41 08             	mov    %eax,0x8(%ecx)
c0107d84:	8b 47 04             	mov    0x4(%edi),%eax
c0107d87:	89 41 0c             	mov    %eax,0xc(%ecx)
c0107d8a:	0f 87 3d 01 00 00    	ja     c0107ecd <_realloc_r+0x54d>
c0107d90:	8d 41 10             	lea    0x10(%ecx),%eax
c0107d93:	83 c7 08             	add    $0x8,%edi
c0107d96:	8b 17                	mov    (%edi),%edx
c0107d98:	89 10                	mov    %edx,(%eax)
c0107d9a:	8b 57 04             	mov    0x4(%edi),%edx
c0107d9d:	89 50 04             	mov    %edx,0x4(%eax)
c0107da0:	8b 57 08             	mov    0x8(%edi),%edx
c0107da3:	89 50 08             	mov    %edx,0x8(%eax)
c0107da6:	8b 5d dc             	mov    -0x24(%ebp),%ebx
c0107da9:	8b 7d d4             	mov    -0x2c(%ebp),%edi
c0107dac:	89 d8                	mov    %ebx,%eax
c0107dae:	29 df                	sub    %ebx,%edi
c0107db0:	01 c8                	add    %ecx,%eax
c0107db2:	83 cf 01             	or     $0x1,%edi
c0107db5:	a3 28 a5 10 c0       	mov    %eax,0xc010a528
c0107dba:	89 78 04             	mov    %edi,0x4(%eax)
c0107dbd:	8b 41 04             	mov    0x4(%ecx),%eax
c0107dc0:	83 e0 01             	and    $0x1,%eax
c0107dc3:	09 d8                	or     %ebx,%eax
c0107dc5:	89 41 04             	mov    %eax,0x4(%ecx)
c0107dc8:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0107dcb:	89 04 24             	mov    %eax,(%esp)
c0107dce:	e8 dd d7 ff ff       	call   c01055b0 <__malloc_unlock>
c0107dd3:	89 f0                	mov    %esi,%eax
c0107dd5:	e9 2d fd ff ff       	jmp    c0107b07 <_realloc_r+0x187>
c0107dda:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0107de0:	8b 47 08             	mov    0x8(%edi),%eax
c0107de3:	83 fb 24             	cmp    $0x24,%ebx
c0107de6:	89 41 08             	mov    %eax,0x8(%ecx)
c0107de9:	8b 47 0c             	mov    0xc(%edi),%eax
c0107dec:	89 41 0c             	mov    %eax,0xc(%ecx)
c0107def:	74 60                	je     c0107e51 <_realloc_r+0x4d1>
c0107df1:	8d 41 10             	lea    0x10(%ecx),%eax
c0107df4:	8d 57 10             	lea    0x10(%edi),%edx
c0107df7:	e9 ba fd ff ff       	jmp    c0107bb6 <_realloc_r+0x236>
c0107dfc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0107e00:	8b 51 fc             	mov    -0x4(%ecx),%edx
c0107e03:	83 e2 fc             	and    $0xfffffffc,%edx
c0107e06:	01 d3                	add    %edx,%ebx
c0107e08:	e9 d6 fc ff ff       	jmp    c0107ae3 <_realloc_r+0x163>
c0107e0d:	8d 76 00             	lea    0x0(%esi),%esi
c0107e10:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0107e14:	89 7c 24 04          	mov    %edi,0x4(%esp)
c0107e18:	89 f7                	mov    %esi,%edi
c0107e1a:	89 34 24             	mov    %esi,(%esp)
c0107e1d:	89 4d e0             	mov    %ecx,-0x20(%ebp)
c0107e20:	e8 cb fa ff ff       	call   c01078f0 <memmove>
c0107e25:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0107e28:	8b 5d d0             	mov    -0x30(%ebp),%ebx
c0107e2b:	8b 41 04             	mov    0x4(%ecx),%eax
c0107e2e:	89 ce                	mov    %ecx,%esi
c0107e30:	e9 ae fc ff ff       	jmp    c0107ae3 <_realloc_r+0x163>
c0107e35:	8b 47 08             	mov    0x8(%edi),%eax
c0107e38:	83 fb 24             	cmp    $0x24,%ebx
c0107e3b:	89 41 10             	mov    %eax,0x10(%ecx)
c0107e3e:	8b 47 0c             	mov    0xc(%edi),%eax
c0107e41:	89 41 14             	mov    %eax,0x14(%ecx)
c0107e44:	74 3e                	je     c0107e84 <_realloc_r+0x504>
c0107e46:	8d 41 18             	lea    0x18(%ecx),%eax
c0107e49:	83 c7 10             	add    $0x10,%edi
c0107e4c:	e9 5b fc ff ff       	jmp    c0107aac <_realloc_r+0x12c>
c0107e51:	8b 47 10             	mov    0x10(%edi),%eax
c0107e54:	8d 57 18             	lea    0x18(%edi),%edx
c0107e57:	89 41 10             	mov    %eax,0x10(%ecx)
c0107e5a:	8b 5f 14             	mov    0x14(%edi),%ebx
c0107e5d:	8d 41 18             	lea    0x18(%ecx),%eax
c0107e60:	89 59 14             	mov    %ebx,0x14(%ecx)
c0107e63:	e9 4e fd ff ff       	jmp    c0107bb6 <_realloc_r+0x236>
c0107e68:	8b 47 08             	mov    0x8(%edi),%eax
c0107e6b:	83 fb 24             	cmp    $0x24,%ebx
c0107e6e:	89 41 10             	mov    %eax,0x10(%ecx)
c0107e71:	8b 47 0c             	mov    0xc(%edi),%eax
c0107e74:	89 41 14             	mov    %eax,0x14(%ecx)
c0107e77:	74 22                	je     c0107e9b <_realloc_r+0x51b>
c0107e79:	8d 41 18             	lea    0x18(%ecx),%eax
c0107e7c:	83 c7 10             	add    $0x10,%edi
c0107e7f:	e9 d3 fd ff ff       	jmp    c0107c57 <_realloc_r+0x2d7>
c0107e84:	8b 47 10             	mov    0x10(%edi),%eax
c0107e87:	83 c7 18             	add    $0x18,%edi
c0107e8a:	89 41 18             	mov    %eax,0x18(%ecx)
c0107e8d:	8b 57 fc             	mov    -0x4(%edi),%edx
c0107e90:	8d 41 20             	lea    0x20(%ecx),%eax
c0107e93:	89 51 1c             	mov    %edx,0x1c(%ecx)
c0107e96:	e9 11 fc ff ff       	jmp    c0107aac <_realloc_r+0x12c>
c0107e9b:	8b 47 10             	mov    0x10(%edi),%eax
c0107e9e:	83 c7 18             	add    $0x18,%edi
c0107ea1:	89 41 18             	mov    %eax,0x18(%ecx)
c0107ea4:	8b 5f fc             	mov    -0x4(%edi),%ebx
c0107ea7:	8d 41 20             	lea    0x20(%ecx),%eax
c0107eaa:	89 59 1c             	mov    %ebx,0x1c(%ecx)
c0107ead:	e9 a5 fd ff ff       	jmp    c0107c57 <_realloc_r+0x2d7>
c0107eb2:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0107eb6:	89 7c 24 04          	mov    %edi,0x4(%esp)
c0107eba:	89 34 24             	mov    %esi,(%esp)
c0107ebd:	89 4d e0             	mov    %ecx,-0x20(%ebp)
c0107ec0:	e8 2b fa ff ff       	call   c01078f0 <memmove>
c0107ec5:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0107ec8:	e9 d9 fe ff ff       	jmp    c0107da6 <_realloc_r+0x426>
c0107ecd:	8b 47 08             	mov    0x8(%edi),%eax
c0107ed0:	83 fb 24             	cmp    $0x24,%ebx
c0107ed3:	89 41 10             	mov    %eax,0x10(%ecx)
c0107ed6:	8b 47 0c             	mov    0xc(%edi),%eax
c0107ed9:	89 41 14             	mov    %eax,0x14(%ecx)
c0107edc:	74 1d                	je     c0107efb <_realloc_r+0x57b>
c0107ede:	8d 41 18             	lea    0x18(%ecx),%eax
c0107ee1:	83 c7 10             	add    $0x10,%edi
c0107ee4:	e9 ad fe ff ff       	jmp    c0107d96 <_realloc_r+0x416>
c0107ee9:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0107eec:	89 04 24             	mov    %eax,(%esp)
c0107eef:	e8 bc d6 ff ff       	call   c01055b0 <__malloc_unlock>
c0107ef4:	31 c0                	xor    %eax,%eax
c0107ef6:	e9 0c fc ff ff       	jmp    c0107b07 <_realloc_r+0x187>
c0107efb:	8b 47 10             	mov    0x10(%edi),%eax
c0107efe:	83 c7 18             	add    $0x18,%edi
c0107f01:	89 41 18             	mov    %eax,0x18(%ecx)
c0107f04:	8b 57 fc             	mov    -0x4(%edi),%edx
c0107f07:	8d 41 20             	lea    0x20(%ecx),%eax
c0107f0a:	89 51 1c             	mov    %edx,0x1c(%ecx)
c0107f0d:	e9 84 fe ff ff       	jmp    c0107d96 <_realloc_r+0x416>
c0107f12:	66 90                	xchg   %ax,%ax
c0107f14:	66 90                	xchg   %ax,%ax
c0107f16:	66 90                	xchg   %ax,%ax
c0107f18:	66 90                	xchg   %ax,%ax
c0107f1a:	66 90                	xchg   %ax,%ax
c0107f1c:	66 90                	xchg   %ax,%ax
c0107f1e:	66 90                	xchg   %ax,%ax

c0107f20 <cleanup_glue>:
c0107f20:	55                   	push   %ebp
c0107f21:	89 e5                	mov    %esp,%ebp
c0107f23:	56                   	push   %esi
c0107f24:	53                   	push   %ebx
c0107f25:	83 ec 10             	sub    $0x10,%esp
c0107f28:	8b 5d 0c             	mov    0xc(%ebp),%ebx
c0107f2b:	8b 75 08             	mov    0x8(%ebp),%esi
c0107f2e:	8b 03                	mov    (%ebx),%eax
c0107f30:	85 c0                	test   %eax,%eax
c0107f32:	74 0c                	je     c0107f40 <cleanup_glue+0x20>
c0107f34:	89 44 24 04          	mov    %eax,0x4(%esp)
c0107f38:	89 34 24             	mov    %esi,(%esp)
c0107f3b:	e8 e0 ff ff ff       	call   c0107f20 <cleanup_glue>
c0107f40:	89 5d 0c             	mov    %ebx,0xc(%ebp)
c0107f43:	89 75 08             	mov    %esi,0x8(%ebp)
c0107f46:	83 c4 10             	add    $0x10,%esp
c0107f49:	5b                   	pop    %ebx
c0107f4a:	5e                   	pop    %esi
c0107f4b:	5d                   	pop    %ebp
c0107f4c:	e9 3f f7 ff ff       	jmp    c0107690 <_free_r>
c0107f51:	eb 0d                	jmp    c0107f60 <_reclaim_reent>
c0107f53:	90                   	nop
c0107f54:	90                   	nop
c0107f55:	90                   	nop
c0107f56:	90                   	nop
c0107f57:	90                   	nop
c0107f58:	90                   	nop
c0107f59:	90                   	nop
c0107f5a:	90                   	nop
c0107f5b:	90                   	nop
c0107f5c:	90                   	nop
c0107f5d:	90                   	nop
c0107f5e:	90                   	nop
c0107f5f:	90                   	nop

c0107f60 <_reclaim_reent>:
c0107f60:	55                   	push   %ebp
c0107f61:	89 e5                	mov    %esp,%ebp
c0107f63:	57                   	push   %edi
c0107f64:	56                   	push   %esi
c0107f65:	53                   	push   %ebx
c0107f66:	83 ec 1c             	sub    $0x1c,%esp
c0107f69:	8b 5d 08             	mov    0x8(%ebp),%ebx
c0107f6c:	3b 1d 20 a0 10 c0    	cmp    0xc010a020,%ebx
c0107f72:	0f 84 a6 00 00 00    	je     c010801e <_reclaim_reent+0xbe>
c0107f78:	8b 53 4c             	mov    0x4c(%ebx),%edx
c0107f7b:	85 d2                	test   %edx,%edx
c0107f7d:	74 46                	je     c0107fc5 <_reclaim_reent+0x65>
c0107f7f:	31 c0                	xor    %eax,%eax
c0107f81:	31 f6                	xor    %esi,%esi
c0107f83:	90                   	nop
c0107f84:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0107f88:	8b 04 82             	mov    (%edx,%eax,4),%eax
c0107f8b:	85 c0                	test   %eax,%eax
c0107f8d:	75 0b                	jne    c0107f9a <_reclaim_reent+0x3a>
c0107f8f:	eb 1e                	jmp    c0107faf <_reclaim_reent+0x4f>
c0107f91:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0107f98:	89 f8                	mov    %edi,%eax
c0107f9a:	8b 38                	mov    (%eax),%edi
c0107f9c:	89 44 24 04          	mov    %eax,0x4(%esp)
c0107fa0:	89 1c 24             	mov    %ebx,(%esp)
c0107fa3:	e8 e8 f6 ff ff       	call   c0107690 <_free_r>
c0107fa8:	85 ff                	test   %edi,%edi
c0107faa:	75 ec                	jne    c0107f98 <_reclaim_reent+0x38>
c0107fac:	8b 53 4c             	mov    0x4c(%ebx),%edx
c0107faf:	83 c6 01             	add    $0x1,%esi
c0107fb2:	83 fe 20             	cmp    $0x20,%esi
c0107fb5:	89 f0                	mov    %esi,%eax
c0107fb7:	75 cf                	jne    c0107f88 <_reclaim_reent+0x28>
c0107fb9:	89 54 24 04          	mov    %edx,0x4(%esp)
c0107fbd:	89 1c 24             	mov    %ebx,(%esp)
c0107fc0:	e8 cb f6 ff ff       	call   c0107690 <_free_r>
c0107fc5:	8b 43 40             	mov    0x40(%ebx),%eax
c0107fc8:	85 c0                	test   %eax,%eax
c0107fca:	74 0c                	je     c0107fd8 <_reclaim_reent+0x78>
c0107fcc:	89 44 24 04          	mov    %eax,0x4(%esp)
c0107fd0:	89 1c 24             	mov    %ebx,(%esp)
c0107fd3:	e8 b8 f6 ff ff       	call   c0107690 <_free_r>
c0107fd8:	8b 83 48 01 00 00    	mov    0x148(%ebx),%eax
c0107fde:	85 c0                	test   %eax,%eax
c0107fe0:	74 22                	je     c0108004 <_reclaim_reent+0xa4>
c0107fe2:	8d b3 4c 01 00 00    	lea    0x14c(%ebx),%esi
c0107fe8:	39 f0                	cmp    %esi,%eax
c0107fea:	75 06                	jne    c0107ff2 <_reclaim_reent+0x92>
c0107fec:	eb 16                	jmp    c0108004 <_reclaim_reent+0xa4>
c0107fee:	66 90                	xchg   %ax,%ax
c0107ff0:	89 f8                	mov    %edi,%eax
c0107ff2:	8b 38                	mov    (%eax),%edi
c0107ff4:	89 44 24 04          	mov    %eax,0x4(%esp)
c0107ff8:	89 1c 24             	mov    %ebx,(%esp)
c0107ffb:	e8 90 f6 ff ff       	call   c0107690 <_free_r>
c0108000:	39 fe                	cmp    %edi,%esi
c0108002:	75 ec                	jne    c0107ff0 <_reclaim_reent+0x90>
c0108004:	8b 43 54             	mov    0x54(%ebx),%eax
c0108007:	85 c0                	test   %eax,%eax
c0108009:	74 0c                	je     c0108017 <_reclaim_reent+0xb7>
c010800b:	89 44 24 04          	mov    %eax,0x4(%esp)
c010800f:	89 1c 24             	mov    %ebx,(%esp)
c0108012:	e8 79 f6 ff ff       	call   c0107690 <_free_r>
c0108017:	8b 43 38             	mov    0x38(%ebx),%eax
c010801a:	85 c0                	test   %eax,%eax
c010801c:	75 08                	jne    c0108026 <_reclaim_reent+0xc6>
c010801e:	83 c4 1c             	add    $0x1c,%esp
c0108021:	5b                   	pop    %ebx
c0108022:	5e                   	pop    %esi
c0108023:	5f                   	pop    %edi
c0108024:	5d                   	pop    %ebp
c0108025:	c3                   	ret    
c0108026:	89 1c 24             	mov    %ebx,(%esp)
c0108029:	ff 53 3c             	call   *0x3c(%ebx)
c010802c:	8b 83 e0 02 00 00    	mov    0x2e0(%ebx),%eax
c0108032:	85 c0                	test   %eax,%eax
c0108034:	74 e8                	je     c010801e <_reclaim_reent+0xbe>
c0108036:	89 1c 24             	mov    %ebx,(%esp)
c0108039:	89 44 24 04          	mov    %eax,0x4(%esp)
c010803d:	e8 de fe ff ff       	call   c0107f20 <cleanup_glue>
c0108042:	83 c4 1c             	add    $0x1c,%esp
c0108045:	5b                   	pop    %ebx
c0108046:	5e                   	pop    %esi
c0108047:	5f                   	pop    %edi
c0108048:	5d                   	pop    %ebp
c0108049:	c3                   	ret    
