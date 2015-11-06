
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
c010002b:	e9 30 0e 00 00       	jmp    c0100e60 <init>

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
c010014c:	e8 77 12 00 00       	call   c01013c8 <memset>
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
c0100178:	c7 44 24 10 74 14 10 	movl   $0xc0101474,0x10(%esp)
c010017f:	c0 
c0100180:	c7 44 24 0c d8 14 10 	movl   $0xc01014d8,0xc(%esp)
c0100187:	c0 
c0100188:	c7 44 24 08 11 00 00 	movl   $0x11,0x8(%esp)
c010018f:	00 
c0100190:	c7 44 24 04 63 14 10 	movl   $0xc0101463,0x4(%esp)
c0100197:	c0 
c0100198:	c7 04 24 84 14 10 c0 	movl   $0xc0101484,(%esp)
c010019f:	e8 6c 11 00 00       	call   c0101310 <printk>
c01001a4:	b8 01 00 00 00       	mov    $0x1,%eax
c01001a9:	d6                   	(bad)  
c01001aa:	8b 55 e0             	mov    -0x20(%ebp),%edx
c01001ad:	8d 86 00 00 00 c0    	lea    -0x40000000(%esi),%eax
c01001b3:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c01001b8:	c1 ea 0c             	shr    $0xc,%edx
c01001bb:	81 e2 ff 03 00 00    	and    $0x3ff,%edx
c01001c1:	f6 04 90 01          	testb  $0x1,(%eax,%edx,4)
c01001c5:	75 32                	jne    c01001f9 <mm_malloc+0x1a9>
c01001c7:	c7 44 24 10 7c 14 10 	movl   $0xc010147c,0x10(%esp)
c01001ce:	c0 
c01001cf:	c7 44 24 0c d8 14 10 	movl   $0xc01014d8,0xc(%esp)
c01001d6:	c0 
c01001d7:	c7 44 24 08 13 00 00 	movl   $0x13,0x8(%esp)
c01001de:	00 
c01001df:	c7 44 24 04 63 14 10 	movl   $0xc0101463,0x4(%esp)
c01001e6:	c0 
c01001e7:	c7 04 24 84 14 10 c0 	movl   $0xc0101484,(%esp)
c01001ee:	e8 1d 11 00 00       	call   c0101310 <printk>
c01001f3:	b8 01 00 00 00       	mov    $0x1,%eax
c01001f8:	d6                   	(bad)  
c01001f9:	8b 45 08             	mov    0x8(%ebp),%eax
c01001fc:	c1 e8 16             	shr    $0x16,%eax
c01001ff:	8b 1c 83             	mov    (%ebx,%eax,4),%ebx
c0100202:	f6 c3 01             	test   $0x1,%bl
c0100205:	75 32                	jne    c0100239 <mm_malloc+0x1e9>
c0100207:	c7 44 24 10 74 14 10 	movl   $0xc0101474,0x10(%esp)
c010020e:	c0 
c010020f:	c7 44 24 0c d8 14 10 	movl   $0xc01014d8,0xc(%esp)
c0100216:	c0 
c0100217:	c7 44 24 08 11 00 00 	movl   $0x11,0x8(%esp)
c010021e:	00 
c010021f:	c7 44 24 04 63 14 10 	movl   $0xc0101463,0x4(%esp)
c0100226:	c0 
c0100227:	c7 04 24 84 14 10 c0 	movl   $0xc0101484,(%esp)
c010022e:	e8 dd 10 00 00       	call   c0101310 <printk>
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
c0100258:	c7 44 24 10 7c 14 10 	movl   $0xc010147c,0x10(%esp)
c010025f:	c0 
c0100260:	c7 44 24 0c d8 14 10 	movl   $0xc01014d8,0xc(%esp)
c0100267:	c0 
c0100268:	c7 44 24 08 13 00 00 	movl   $0x13,0x8(%esp)
c010026f:	00 
c0100270:	c7 44 24 04 63 14 10 	movl   $0xc0101463,0x4(%esp)
c0100277:	c0 
c0100278:	c7 04 24 84 14 10 c0 	movl   $0xc0101484,(%esp)
c010027f:	e8 8c 10 00 00       	call   c0101310 <printk>
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
c01002a8:	c7 44 24 10 50 14 10 	movl   $0xc0101450,0x10(%esp)
c01002af:	c0 
c01002b0:	c7 44 24 0c ce 14 10 	movl   $0xc01014ce,0xc(%esp)
c01002b7:	c0 
c01002b8:	c7 44 24 08 31 00 00 	movl   $0x31,0x8(%esp)
c01002bf:	00 
c01002c0:	c7 44 24 04 63 14 10 	movl   $0xc0101463,0x4(%esp)
c01002c7:	c0 
c01002c8:	c7 04 24 84 14 10 c0 	movl   $0xc0101484,(%esp)
c01002cf:	e8 3c 10 00 00       	call   c0101310 <printk>
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
c01003d3:	e8 f0 0f 00 00       	call   c01013c8 <memset>
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
c010044f:	e8 74 0f 00 00       	call   c01013c8 <memset>
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
c0100563:	e8 60 0e 00 00       	call   c01013c8 <memset>
c0100568:	83 c4 0c             	add    $0xc,%esp
c010056b:	68 80 00 00 00       	push   $0x80
c0100570:	53                   	push   %ebx
c0100571:	68 00 7c 14 c0       	push   $0xc0147c00
c0100576:	e8 05 0e 00 00       	call   c0101380 <memcpy>
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
c01005a6:	e8 45 ff ff ff       	call   c01004f0 <get_updir>
c01005ab:	ba 00 80 14 00       	mov    $0x148000,%edx
c01005b0:	81 e2 00 f0 ff ff    	and    $0xfffff000,%edx
c01005b6:	83 ca 07             	or     $0x7,%edx
c01005b9:	89 10                	mov    %edx,(%eax)
c01005bb:	b8 a0 00 00 00       	mov    $0xa0,%eax
c01005c0:	89 c2                	mov    %eax,%edx
c01005c2:	c1 e2 0c             	shl    $0xc,%edx
c01005c5:	83 ca 07             	or     $0x7,%edx
c01005c8:	89 14 85 00 80 14 c0 	mov    %edx,-0x3feb8000(,%eax,4)
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
c010061c:	68 de 14 10 c0       	push   $0xc01014de
c0100621:	68 03 15 10 c0       	push   $0xc0101503
c0100626:	6a 24                	push   $0x24
c0100628:	68 ea 14 10 c0       	push   $0xc01014ea
c010062d:	68 84 14 10 c0       	push   $0xc0101484
c0100632:	e8 d9 0c 00 00       	call   c0101310 <printk>
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
c0100662:	e8 61 0d 00 00       	call   c01013c8 <memset>
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
c010067f:	a1 00 90 14 c0       	mov    0xc0149000,%eax
c0100684:	83 f8 20             	cmp    $0x20,%eax
c0100687:	7e 2c                	jle    c01006b5 <add_irq_handle+0x45>
c0100689:	83 ec 0c             	sub    $0xc,%esp
c010068c:	68 4a 15 10 c0       	push   $0xc010154a
c0100691:	68 31 16 10 c0       	push   $0xc0101631
c0100696:	6a 16                	push   $0x16
c0100698:	68 2e 15 10 c0       	push   $0xc010152e
c010069d:	68 84 14 10 c0       	push   $0xc0101484
c01006a2:	e8 69 0c 00 00       	call   c0101310 <printk>
c01006a7:	b8 01 00 00 00       	mov    $0x1,%eax
c01006ac:	d6                   	(bad)  
c01006ad:	a1 00 90 14 c0       	mov    0xc0149000,%eax
c01006b2:	83 c4 20             	add    $0x20,%esp
c01006b5:	8d 50 01             	lea    0x1(%eax),%edx
c01006b8:	89 15 00 90 14 c0    	mov    %edx,0xc0149000
c01006be:	8b 55 0c             	mov    0xc(%ebp),%edx
c01006c1:	89 14 c5 80 90 14 c0 	mov    %edx,-0x3feb6f80(,%eax,8)
c01006c8:	8b 14 9d 40 90 14 c0 	mov    -0x3feb6fc0(,%ebx,4),%edx
c01006cf:	89 14 c5 84 90 14 c0 	mov    %edx,-0x3feb6f7c(,%eax,8)
c01006d6:	8d 04 c5 80 90 14 c0 	lea    -0x3feb6f80(,%eax,8),%eax
c01006dd:	89 04 9d 40 90 14 c0 	mov    %eax,-0x3feb6fc0(,%ebx,4)
c01006e4:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c01006e7:	c9                   	leave  
c01006e8:	c3                   	ret    
c01006e9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c01006f0:	83 ec 0c             	sub    $0xc,%esp
c01006f3:	68 1b 15 10 c0       	push   $0xc010151b
c01006f8:	68 31 16 10 c0       	push   $0xc0101631
c01006fd:	6a 15                	push   $0x15
c01006ff:	68 2e 15 10 c0       	push   $0xc010152e
c0100704:	68 84 14 10 c0       	push   $0xc0101484
c0100709:	e8 02 0c 00 00       	call   c0101310 <printk>
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
c0100752:	8b 1c 9d 40 90 14 c0 	mov    -0x3feb6fc0(,%ebx,4),%ebx
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
c0100773:	68 68 15 10 c0       	push   $0xc0101568
c0100778:	68 26 16 10 c0       	push   $0xc0101626
c010077d:	6a 2f                	push   $0x2f
c010077f:	68 2e 15 10 c0       	push   $0xc010152e
c0100784:	68 84 14 10 c0       	push   $0xc0101484
c0100789:	e8 82 0b 00 00       	call   c0101310 <printk>
c010078e:	b8 01 00 00 00       	mov    $0x1,%eax
c0100793:	d6                   	(bad)  
c0100794:	83 c4 20             	add    $0x20,%esp
c0100797:	eb b9                	jmp    c0100752 <irq_handle+0x32>
c0100799:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c01007a0:	83 ec 08             	sub    $0x8,%esp
c01007a3:	ff 72 28             	pushl  0x28(%edx)
c01007a6:	50                   	push   %eax
c01007a7:	68 26 16 10 c0       	push   $0xc0101626
c01007ac:	6a 2c                	push   $0x2c
c01007ae:	68 2e 15 10 c0       	push   $0xc010152e
c01007b3:	68 cc 15 10 c0       	push   $0xc01015cc
c01007b8:	e8 53 0b 00 00       	call   c0101310 <printk>
c01007bd:	b8 01 00 00 00       	mov    $0x1,%eax
c01007c2:	d6                   	(bad)  
c01007c3:	83 c4 20             	add    $0x20,%esp
c01007c6:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c01007c9:	c9                   	leave  
c01007ca:	c3                   	ret    
c01007cb:	90                   	nop
c01007cc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c01007d0:	68 26 16 10 c0       	push   $0xc0101626
c01007d5:	6a 28                	push   $0x28
c01007d7:	68 2e 15 10 c0       	push   $0xc010152e
c01007dc:	68 80 15 10 c0       	push   $0xc0101580
c01007e1:	e8 2a 0b 00 00       	call   c0101310 <printk>
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
c0100816:	b8 c0 91 14 c0       	mov    $0xc01491c0,%eax
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
c0100840:	3d c0 99 14 c0       	cmp    $0xc01499c0,%eax
c0100845:	75 e1                	jne    c0100828 <init_idt+0x18>
c0100847:	b8 e4 02 10 c0       	mov    $0xc01002e4,%eax
c010084c:	ba 08 00 00 00       	mov    $0x8,%edx
c0100851:	b9 08 00 00 00       	mov    $0x8,%ecx
c0100856:	66 a3 c0 91 14 c0    	mov    %ax,0xc01491c0
c010085c:	c1 e8 10             	shr    $0x10,%eax
c010085f:	66 89 15 c2 91 14 c0 	mov    %dx,0xc01491c2
c0100866:	66 a3 c6 91 14 c0    	mov    %ax,0xc01491c6
c010086c:	b8 ed 02 10 c0       	mov    $0xc01002ed,%eax
c0100871:	ba 08 00 00 00       	mov    $0x8,%edx
c0100876:	66 a3 c8 91 14 c0    	mov    %ax,0xc01491c8
c010087c:	c1 e8 10             	shr    $0x10,%eax
c010087f:	66 89 0d ca 91 14 c0 	mov    %cx,0xc01491ca
c0100886:	66 a3 ce 91 14 c0    	mov    %ax,0xc01491ce
c010088c:	b8 f6 02 10 c0       	mov    $0xc01002f6,%eax
c0100891:	66 89 15 d2 91 14 c0 	mov    %dx,0xc01491d2
c0100898:	66 a3 d0 91 14 c0    	mov    %ax,0xc01491d0
c010089e:	c1 e8 10             	shr    $0x10,%eax
c01008a1:	b9 08 00 00 00       	mov    $0x8,%ecx
c01008a6:	66 a3 d6 91 14 c0    	mov    %ax,0xc01491d6
c01008ac:	b8 ff 02 10 c0       	mov    $0xc01002ff,%eax
c01008b1:	ba 08 00 00 00       	mov    $0x8,%edx
c01008b6:	66 a3 d8 91 14 c0    	mov    %ax,0xc01491d8
c01008bc:	c1 e8 10             	shr    $0x10,%eax
c01008bf:	66 89 0d da 91 14 c0 	mov    %cx,0xc01491da
c01008c6:	66 a3 de 91 14 c0    	mov    %ax,0xc01491de
c01008cc:	b8 08 03 10 c0       	mov    $0xc0100308,%eax
c01008d1:	66 89 15 e2 91 14 c0 	mov    %dx,0xc01491e2
c01008d8:	66 a3 e0 91 14 c0    	mov    %ax,0xc01491e0
c01008de:	c1 e8 10             	shr    $0x10,%eax
c01008e1:	b9 08 00 00 00       	mov    $0x8,%ecx
c01008e6:	66 a3 e6 91 14 c0    	mov    %ax,0xc01491e6
c01008ec:	b8 11 03 10 c0       	mov    $0xc0100311,%eax
c01008f1:	ba 08 00 00 00       	mov    $0x8,%edx
c01008f6:	66 a3 e8 91 14 c0    	mov    %ax,0xc01491e8
c01008fc:	c1 e8 10             	shr    $0x10,%eax
c01008ff:	66 89 0d ea 91 14 c0 	mov    %cx,0xc01491ea
c0100906:	66 a3 ee 91 14 c0    	mov    %ax,0xc01491ee
c010090c:	b8 1a 03 10 c0       	mov    $0xc010031a,%eax
c0100911:	66 89 15 f2 91 14 c0 	mov    %dx,0xc01491f2
c0100918:	66 a3 f0 91 14 c0    	mov    %ax,0xc01491f0
c010091e:	c1 e8 10             	shr    $0x10,%eax
c0100921:	c6 05 c4 91 14 c0 00 	movb   $0x0,0xc01491c4
c0100928:	c6 05 c5 91 14 c0 8f 	movb   $0x8f,0xc01491c5
c010092f:	c6 05 cc 91 14 c0 00 	movb   $0x0,0xc01491cc
c0100936:	b9 08 00 00 00       	mov    $0x8,%ecx
c010093b:	c6 05 cd 91 14 c0 8f 	movb   $0x8f,0xc01491cd
c0100942:	c6 05 d4 91 14 c0 00 	movb   $0x0,0xc01491d4
c0100949:	ba 08 00 00 00       	mov    $0x8,%edx
c010094e:	c6 05 d5 91 14 c0 8f 	movb   $0x8f,0xc01491d5
c0100955:	c6 05 dc 91 14 c0 00 	movb   $0x0,0xc01491dc
c010095c:	c6 05 dd 91 14 c0 8f 	movb   $0x8f,0xc01491dd
c0100963:	c6 05 e4 91 14 c0 00 	movb   $0x0,0xc01491e4
c010096a:	c6 05 e5 91 14 c0 8f 	movb   $0x8f,0xc01491e5
c0100971:	c6 05 ec 91 14 c0 00 	movb   $0x0,0xc01491ec
c0100978:	c6 05 ed 91 14 c0 8f 	movb   $0x8f,0xc01491ed
c010097f:	c6 05 f4 91 14 c0 00 	movb   $0x0,0xc01491f4
c0100986:	c6 05 f5 91 14 c0 8f 	movb   $0x8f,0xc01491f5
c010098d:	66 a3 f6 91 14 c0    	mov    %ax,0xc01491f6
c0100993:	b8 23 03 10 c0       	mov    $0xc0100323,%eax
c0100998:	66 a3 f8 91 14 c0    	mov    %ax,0xc01491f8
c010099e:	c1 e8 10             	shr    $0x10,%eax
c01009a1:	66 89 0d fa 91 14 c0 	mov    %cx,0xc01491fa
c01009a8:	66 a3 fe 91 14 c0    	mov    %ax,0xc01491fe
c01009ae:	b8 2c 03 10 c0       	mov    $0xc010032c,%eax
c01009b3:	b9 08 00 00 00       	mov    $0x8,%ecx
c01009b8:	66 a3 00 92 14 c0    	mov    %ax,0xc0149200
c01009be:	c1 e8 10             	shr    $0x10,%eax
c01009c1:	66 89 15 02 92 14 c0 	mov    %dx,0xc0149202
c01009c8:	66 a3 06 92 14 c0    	mov    %ax,0xc0149206
c01009ce:	b8 33 03 10 c0       	mov    $0xc0100333,%eax
c01009d3:	66 89 0d 0a 92 14 c0 	mov    %cx,0xc014920a
c01009da:	66 a3 08 92 14 c0    	mov    %ax,0xc0149208
c01009e0:	c1 e8 10             	shr    $0x10,%eax
c01009e3:	ba 08 00 00 00       	mov    $0x8,%edx
c01009e8:	66 a3 0e 92 14 c0    	mov    %ax,0xc014920e
c01009ee:	b8 3c 03 10 c0       	mov    $0xc010033c,%eax
c01009f3:	b9 08 00 00 00       	mov    $0x8,%ecx
c01009f8:	66 a3 10 92 14 c0    	mov    %ax,0xc0149210
c01009fe:	c1 e8 10             	shr    $0x10,%eax
c0100a01:	66 89 15 12 92 14 c0 	mov    %dx,0xc0149212
c0100a08:	66 a3 16 92 14 c0    	mov    %ax,0xc0149216
c0100a0e:	b8 43 03 10 c0       	mov    $0xc0100343,%eax
c0100a13:	66 89 0d 1a 92 14 c0 	mov    %cx,0xc014921a
c0100a1a:	66 a3 18 92 14 c0    	mov    %ax,0xc0149218
c0100a20:	c1 e8 10             	shr    $0x10,%eax
c0100a23:	ba 08 00 00 00       	mov    $0x8,%edx
c0100a28:	66 a3 1e 92 14 c0    	mov    %ax,0xc014921e
c0100a2e:	b8 4a 03 10 c0       	mov    $0xc010034a,%eax
c0100a33:	b9 08 00 00 00       	mov    $0x8,%ecx
c0100a38:	66 a3 20 92 14 c0    	mov    %ax,0xc0149220
c0100a3e:	c1 e8 10             	shr    $0x10,%eax
c0100a41:	66 89 15 22 92 14 c0 	mov    %dx,0xc0149222
c0100a48:	66 a3 26 92 14 c0    	mov    %ax,0xc0149226
c0100a4e:	b8 51 03 10 c0       	mov    $0xc0100351,%eax
c0100a53:	66 89 0d 2a 92 14 c0 	mov    %cx,0xc014922a
c0100a5a:	66 a3 28 92 14 c0    	mov    %ax,0xc0149228
c0100a60:	c1 e8 10             	shr    $0x10,%eax
c0100a63:	c6 05 fc 91 14 c0 00 	movb   $0x0,0xc01491fc
c0100a6a:	c6 05 fd 91 14 c0 8f 	movb   $0x8f,0xc01491fd
c0100a71:	c6 05 04 92 14 c0 00 	movb   $0x0,0xc0149204
c0100a78:	ba 08 00 00 00       	mov    $0x8,%edx
c0100a7d:	c6 05 05 92 14 c0 8f 	movb   $0x8f,0xc0149205
c0100a84:	c6 05 0c 92 14 c0 00 	movb   $0x0,0xc014920c
c0100a8b:	b9 08 00 00 00       	mov    $0x8,%ecx
c0100a90:	c6 05 0d 92 14 c0 8f 	movb   $0x8f,0xc014920d
c0100a97:	c6 05 14 92 14 c0 00 	movb   $0x0,0xc0149214
c0100a9e:	c6 05 15 92 14 c0 8f 	movb   $0x8f,0xc0149215
c0100aa5:	c6 05 1c 92 14 c0 00 	movb   $0x0,0xc014921c
c0100aac:	c6 05 1d 92 14 c0 8f 	movb   $0x8f,0xc014921d
c0100ab3:	c6 05 24 92 14 c0 00 	movb   $0x0,0xc0149224
c0100aba:	c6 05 25 92 14 c0 8f 	movb   $0x8f,0xc0149225
c0100ac1:	c6 05 2c 92 14 c0 00 	movb   $0x0,0xc014922c
c0100ac8:	66 a3 2e 92 14 c0    	mov    %ax,0xc014922e
c0100ace:	b8 58 03 10 c0       	mov    $0xc0100358,%eax
c0100ad3:	66 89 15 32 92 14 c0 	mov    %dx,0xc0149232
c0100ada:	66 a3 30 92 14 c0    	mov    %ax,0xc0149230
c0100ae0:	c1 e8 10             	shr    $0x10,%eax
c0100ae3:	66 89 0d c2 95 14 c0 	mov    %cx,0xc01495c2
c0100aea:	66 a3 36 92 14 c0    	mov    %ax,0xc0149236
c0100af0:	b8 5f 03 10 c0       	mov    $0xc010035f,%eax
c0100af5:	ba 08 00 00 00       	mov    $0x8,%edx
c0100afa:	66 a3 c0 95 14 c0    	mov    %ax,0xc01495c0
c0100b00:	c1 e8 10             	shr    $0x10,%eax
c0100b03:	b9 08 00 00 00       	mov    $0x8,%ecx
c0100b08:	66 a3 c6 95 14 c0    	mov    %ax,0xc01495c6
c0100b0e:	b8 6b 03 10 c0       	mov    $0xc010036b,%eax
c0100b13:	c6 05 2d 92 14 c0 8f 	movb   $0x8f,0xc014922d
c0100b1a:	66 a3 c0 92 14 c0    	mov    %ax,0xc01492c0
c0100b20:	c1 e8 10             	shr    $0x10,%eax
c0100b23:	c6 05 34 92 14 c0 00 	movb   $0x0,0xc0149234
c0100b2a:	66 a3 c6 92 14 c0    	mov    %ax,0xc01492c6
c0100b30:	b8 83 03 10 c0       	mov    $0xc0100383,%eax
c0100b35:	c6 05 35 92 14 c0 8f 	movb   $0x8f,0xc0149235
c0100b3c:	66 a3 30 93 14 c0    	mov    %ax,0xc0149330
c0100b42:	c1 e8 10             	shr    $0x10,%eax
c0100b45:	c6 05 c4 95 14 c0 00 	movb   $0x0,0xc01495c4
c0100b4c:	66 a3 36 93 14 c0    	mov    %ax,0xc0149336
c0100b52:	b8 ff 07 00 00       	mov    $0x7ff,%eax
c0100b57:	c6 05 c5 95 14 c0 ef 	movb   $0xef,0xc01495c5
c0100b5e:	66 a3 80 91 14 c0    	mov    %ax,0xc0149180
c0100b64:	b8 c0 91 14 c0       	mov    $0xc01491c0,%eax
c0100b69:	66 89 15 c2 92 14 c0 	mov    %dx,0xc01492c2
c0100b70:	66 a3 82 91 14 c0    	mov    %ax,0xc0149182
c0100b76:	c1 e8 10             	shr    $0x10,%eax
c0100b79:	c6 05 c4 92 14 c0 00 	movb   $0x0,0xc01492c4
c0100b80:	66 a3 84 91 14 c0    	mov    %ax,0xc0149184
c0100b86:	c6 05 c5 92 14 c0 8e 	movb   $0x8e,0xc01492c5
c0100b8d:	b8 80 91 14 c0       	mov    $0xc0149180,%eax
c0100b92:	66 89 0d 32 93 14 c0 	mov    %cx,0xc0149332
c0100b99:	c6 05 34 93 14 c0 00 	movb   $0x0,0xc0149334
c0100ba0:	c6 05 35 93 14 c0 8e 	movb   $0x8e,0xc0149335
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
c0100c3d:	68 b4 16 10 c0       	push   $0xc01016b4
c0100c42:	6a 29                	push   $0x29
c0100c44:	68 40 16 10 c0       	push   $0xc0101640
c0100c49:	68 60 16 10 c0       	push   $0xc0101660
c0100c4e:	e8 bd 06 00 00       	call   c0101310 <printk>
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
c0100caf:	74 ab                	je     c0100c5c <do_syscall+0x3c>
c0100cb1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0100cb8:	8b 46 18             	mov    0x18(%esi),%eax
c0100cbb:	83 ec 0c             	sub    $0xc,%esp
c0100cbe:	83 c3 01             	add    $0x1,%ebx
c0100cc1:	0f be 44 03 ff       	movsbl -0x1(%ebx,%eax,1),%eax
c0100cc6:	50                   	push   %eax
c0100cc7:	e8 94 06 00 00       	call   c0101360 <serial_printc>
c0100ccc:	83 c4 10             	add    $0x10,%esp
c0100ccf:	3b 5e 14             	cmp    0x14(%esi),%ebx
c0100cd2:	72 e4                	jb     c0100cb8 <do_syscall+0x98>
c0100cd4:	8d 65 f8             	lea    -0x8(%ebp),%esp
c0100cd7:	5b                   	pop    %ebx
c0100cd8:	5e                   	pop    %esi
c0100cd9:	5d                   	pop    %ebp
c0100cda:	c3                   	ret    
c0100cdb:	66 90                	xchg   %ax,%ax
c0100cdd:	66 90                	xchg   %ax,%ax
c0100cdf:	90                   	nop

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
c0100cfa:	e8 81 05 00 00       	call   c0101280 <ramdisk_read>
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
c0100d6f:	e8 0c 05 00 00       	call   c0101280 <ramdisk_read>
c0100d74:	8b 53 10             	mov    0x10(%ebx),%edx
c0100d77:	8b 4b 14             	mov    0x14(%ebx),%ecx
c0100d7a:	83 c4 0c             	add    $0xc,%esp
c0100d7d:	8b 85 d4 ef ff ff    	mov    -0x102c(%ebp),%eax
c0100d83:	29 d1                	sub    %edx,%ecx
c0100d85:	01 c2                	add    %eax,%edx
c0100d87:	51                   	push   %ecx
c0100d88:	6a 00                	push   $0x0
c0100d8a:	52                   	push   %edx
c0100d8b:	e8 38 06 00 00       	call   c01013c8 <memset>
c0100d90:	8b 43 14             	mov    0x14(%ebx),%eax
c0100d93:	03 43 08             	add    0x8(%ebx),%eax
c0100d96:	83 c4 10             	add    $0x10,%esp
c0100d99:	83 e8 01             	sub    $0x1,%eax
c0100d9c:	3b 05 00 60 14 c0    	cmp    0xc0146000,%eax
c0100da2:	76 84                	jbe    c0100d28 <loader+0x48>
c0100da4:	a3 00 60 14 c0       	mov    %eax,0xc0146000
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
c0100dde:	e8 1d f7 ff ff       	call   c0100500 <get_ucr3>
c0100de3:	0f 22 d8             	mov    %eax,%cr3
c0100de6:	8b 85 e4 ef ff ff    	mov    -0x101c(%ebp),%eax
c0100dec:	8d 65 f4             	lea    -0xc(%ebp),%esp
c0100def:	5b                   	pop    %ebx
c0100df0:	5e                   	pop    %esi
c0100df1:	5f                   	pop    %edi
c0100df2:	5d                   	pop    %ebp
c0100df3:	c3                   	ret    
c0100df4:	66 90                	xchg   %ax,%ax
c0100df6:	66 90                	xchg   %ax,%ax
c0100df8:	66 90                	xchg   %ax,%ax
c0100dfa:	66 90                	xchg   %ax,%ax
c0100dfc:	66 90                	xchg   %ax,%ax
c0100dfe:	66 90                	xchg   %ax,%ax

c0100e00 <init_cond>:
c0100e00:	55                   	push   %ebp
c0100e01:	89 e5                	mov    %esp,%ebp
c0100e03:	83 ec 08             	sub    $0x8,%esp
c0100e06:	e8 35 f6 ff ff       	call   c0100440 <init_segment>
c0100e0b:	e8 00 fa ff ff       	call   c0100810 <init_idt>
c0100e10:	e8 2b f7 ff ff       	call   c0100540 <init_mm>
c0100e15:	68 53 17 10 c0       	push   $0xc0101753
c0100e1a:	6a 4a                	push   $0x4a
c0100e1c:	68 bf 16 10 c0       	push   $0xc01016bf
c0100e21:	68 d4 16 10 c0       	push   $0xc01016d4
c0100e26:	e8 e5 04 00 00       	call   c0101310 <printk>
c0100e2b:	e8 b0 fe ff ff       	call   c0100ce0 <loader>
c0100e30:	bc 00 00 00 c0       	mov    $0xc0000000,%esp
c0100e35:	bd 00 00 00 00       	mov    $0x0,%ebp
c0100e3a:	83 ec 10             	sub    $0x10,%esp
c0100e3d:	ff d0                	call   *%eax
c0100e3f:	68 53 17 10 c0       	push   $0xc0101753
c0100e44:	6a 6b                	push   $0x6b
c0100e46:	68 bf 16 10 c0       	push   $0xc01016bf
c0100e4b:	68 08 17 10 c0       	push   $0xc0101708
c0100e50:	e8 bb 04 00 00       	call   c0101310 <printk>
c0100e55:	b8 01 00 00 00       	mov    $0x1,%eax
c0100e5a:	d6                   	(bad)  
c0100e5b:	83 c4 20             	add    $0x20,%esp
c0100e5e:	c9                   	leave  
c0100e5f:	c3                   	ret    

c0100e60 <init>:
c0100e60:	55                   	push   %ebp
c0100e61:	89 e5                	mov    %esp,%ebp
c0100e63:	83 ec 08             	sub    $0x8,%esp
c0100e66:	e8 55 f5 ff ff       	call   c01003c0 <init_page>
c0100e6b:	81 c4 00 00 00 c0    	add    $0xc0000000,%esp
c0100e71:	b8 00 0e 10 c0       	mov    $0xc0100e00,%eax
c0100e76:	ff e0                	jmp    *%eax
c0100e78:	68 5d 17 10 c0       	push   $0xc010175d
c0100e7d:	6a 24                	push   $0x24
c0100e7f:	68 bf 16 10 c0       	push   $0xc01016bf
c0100e84:	68 08 17 10 c0       	push   $0xc0101708
c0100e89:	e8 82 04 00 00       	call   c0101310 <printk>
c0100e8e:	b8 01 00 00 00       	mov    $0x1,%eax
c0100e93:	d6                   	(bad)  
c0100e94:	83 c4 10             	add    $0x10,%esp
c0100e97:	c9                   	leave  
c0100e98:	c3                   	ret    
c0100e99:	66 90                	xchg   %ax,%ax
c0100e9b:	66 90                	xchg   %ax,%ax
c0100e9d:	66 90                	xchg   %ax,%ax
c0100e9f:	90                   	nop

c0100ea0 <buf_fetch>:
c0100ea0:	55                   	push   %ebp
c0100ea1:	89 c2                	mov    %eax,%edx
c0100ea3:	89 e5                	mov    %esp,%ebp
c0100ea5:	57                   	push   %edi
c0100ea6:	56                   	push   %esi
c0100ea7:	53                   	push   %ebx
c0100ea8:	89 c3                	mov    %eax,%ebx
c0100eaa:	83 e3 7f             	and    $0x7f,%ebx
c0100ead:	89 d8                	mov    %ebx,%eax
c0100eaf:	83 ec 1c             	sub    $0x1c,%esp
c0100eb2:	c1 e0 09             	shl    $0x9,%eax
c0100eb5:	8d 0c d8             	lea    (%eax,%ebx,8),%ecx
c0100eb8:	8d 81 c0 99 14 c0    	lea    -0x3feb6640(%ecx),%eax
c0100ebe:	80 78 04 01          	cmpb   $0x1,0x4(%eax)
c0100ec2:	74 5c                	je     c0100f20 <buf_fetch+0x80>
c0100ec4:	89 d7                	mov    %edx,%edi
c0100ec6:	89 da                	mov    %ebx,%edx
c0100ec8:	c1 e2 09             	shl    $0x9,%edx
c0100ecb:	8d 0c da             	lea    (%edx,%ebx,8),%ecx
c0100ece:	8d 91 c0 99 14 c0    	lea    -0x3feb6640(%ecx),%edx
c0100ed4:	66 81 7a 04 01 01    	cmpw   $0x101,0x4(%edx)
c0100eda:	74 54                	je     c0100f30 <buf_fetch+0x90>
c0100edc:	8d 72 06             	lea    0x6(%edx),%esi
c0100edf:	83 ec 08             	sub    $0x8,%esp
c0100ee2:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0100ee5:	57                   	push   %edi
c0100ee6:	56                   	push   %esi
c0100ee7:	e8 e4 01 00 00       	call   c01010d0 <disk_do_read>
c0100eec:	89 da                	mov    %ebx,%edx
c0100eee:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0100ef1:	83 c4 10             	add    $0x10,%esp
c0100ef4:	c1 e2 09             	shl    $0x9,%edx
c0100ef7:	8d 0c da             	lea    (%edx,%ebx,8),%ecx
c0100efa:	c6 81 c4 99 14 c0 01 	movb   $0x1,-0x3feb663c(%ecx)
c0100f01:	89 b9 c0 99 14 c0    	mov    %edi,-0x3feb6640(%ecx)
c0100f07:	c6 81 c5 99 14 c0 00 	movb   $0x0,-0x3feb663b(%ecx)
c0100f0e:	8d 65 f4             	lea    -0xc(%ebp),%esp
c0100f11:	5b                   	pop    %ebx
c0100f12:	5e                   	pop    %esi
c0100f13:	5f                   	pop    %edi
c0100f14:	5d                   	pop    %ebp
c0100f15:	c3                   	ret    
c0100f16:	8d 76 00             	lea    0x0(%esi),%esi
c0100f19:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
c0100f20:	39 91 c0 99 14 c0    	cmp    %edx,-0x3feb6640(%ecx)
c0100f26:	75 9c                	jne    c0100ec4 <buf_fetch+0x24>
c0100f28:	eb e4                	jmp    c0100f0e <buf_fetch+0x6e>
c0100f2a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0100f30:	8d 72 06             	lea    0x6(%edx),%esi
c0100f33:	83 ec 08             	sub    $0x8,%esp
c0100f36:	ff b1 c0 99 14 c0    	pushl  -0x3feb6640(%ecx)
c0100f3c:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0100f3f:	56                   	push   %esi
c0100f40:	e8 cb 01 00 00       	call   c0101110 <disk_do_write>
c0100f45:	83 c4 10             	add    $0x10,%esp
c0100f48:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0100f4b:	eb 92                	jmp    c0100edf <buf_fetch+0x3f>
c0100f4d:	8d 76 00             	lea    0x0(%esi),%esi

c0100f50 <buf_init>:
c0100f50:	55                   	push   %ebp
c0100f51:	b8 c4 99 14 c0       	mov    $0xc01499c4,%eax
c0100f56:	89 e5                	mov    %esp,%ebp
c0100f58:	90                   	nop
c0100f59:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0100f60:	c6 00 00             	movb   $0x0,(%eax)
c0100f63:	05 08 02 00 00       	add    $0x208,%eax
c0100f68:	3d c4 9d 15 c0       	cmp    $0xc0159dc4,%eax
c0100f6d:	75 f1                	jne    c0100f60 <buf_init+0x10>
c0100f6f:	5d                   	pop    %ebp
c0100f70:	c3                   	ret    
c0100f71:	eb 0d                	jmp    c0100f80 <buf_writeback>
c0100f73:	90                   	nop
c0100f74:	90                   	nop
c0100f75:	90                   	nop
c0100f76:	90                   	nop
c0100f77:	90                   	nop
c0100f78:	90                   	nop
c0100f79:	90                   	nop
c0100f7a:	90                   	nop
c0100f7b:	90                   	nop
c0100f7c:	90                   	nop
c0100f7d:	90                   	nop
c0100f7e:	90                   	nop
c0100f7f:	90                   	nop

c0100f80 <buf_writeback>:
c0100f80:	55                   	push   %ebp
c0100f81:	89 e5                	mov    %esp,%ebp
c0100f83:	53                   	push   %ebx
c0100f84:	bb c6 99 14 c0       	mov    $0xc01499c6,%ebx
c0100f89:	83 ec 04             	sub    $0x4,%esp
c0100f8c:	eb 10                	jmp    c0100f9e <buf_writeback+0x1e>
c0100f8e:	66 90                	xchg   %ax,%ax
c0100f90:	81 c3 08 02 00 00    	add    $0x208,%ebx
c0100f96:	81 fb c6 9d 15 c0    	cmp    $0xc0159dc6,%ebx
c0100f9c:	74 32                	je     c0100fd0 <buf_writeback+0x50>
c0100f9e:	80 7b ff 01          	cmpb   $0x1,-0x1(%ebx)
c0100fa2:	75 ec                	jne    c0100f90 <buf_writeback+0x10>
c0100fa4:	83 ec 08             	sub    $0x8,%esp
c0100fa7:	ff 73 fa             	pushl  -0x6(%ebx)
c0100faa:	53                   	push   %ebx
c0100fab:	81 c3 08 02 00 00    	add    $0x208,%ebx
c0100fb1:	e8 5a 01 00 00       	call   c0101110 <disk_do_write>
c0100fb6:	c6 83 f7 fd ff ff 00 	movb   $0x0,-0x209(%ebx)
c0100fbd:	83 c4 10             	add    $0x10,%esp
c0100fc0:	81 fb c6 9d 15 c0    	cmp    $0xc0159dc6,%ebx
c0100fc6:	75 d6                	jne    c0100f9e <buf_writeback+0x1e>
c0100fc8:	90                   	nop
c0100fc9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0100fd0:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0100fd3:	c9                   	leave  
c0100fd4:	c3                   	ret    
c0100fd5:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0100fd9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0100fe0 <read_byte>:
c0100fe0:	55                   	push   %ebp
c0100fe1:	89 e5                	mov    %esp,%ebp
c0100fe3:	53                   	push   %ebx
c0100fe4:	83 ec 04             	sub    $0x4,%esp
c0100fe7:	8b 5d 08             	mov    0x8(%ebp),%ebx
c0100fea:	89 d8                	mov    %ebx,%eax
c0100fec:	81 e3 ff 01 00 00    	and    $0x1ff,%ebx
c0100ff2:	c1 e8 09             	shr    $0x9,%eax
c0100ff5:	e8 a6 fe ff ff       	call   c0100ea0 <buf_fetch>
c0100ffa:	0f b6 44 18 06       	movzbl 0x6(%eax,%ebx,1),%eax
c0100fff:	83 c4 04             	add    $0x4,%esp
c0101002:	5b                   	pop    %ebx
c0101003:	5d                   	pop    %ebp
c0101004:	c3                   	ret    
c0101005:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0101009:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0101010 <write_byte>:
c0101010:	55                   	push   %ebp
c0101011:	89 e5                	mov    %esp,%ebp
c0101013:	56                   	push   %esi
c0101014:	53                   	push   %ebx
c0101015:	8b 5d 08             	mov    0x8(%ebp),%ebx
c0101018:	8b 75 0c             	mov    0xc(%ebp),%esi
c010101b:	89 d8                	mov    %ebx,%eax
c010101d:	81 e3 ff 01 00 00    	and    $0x1ff,%ebx
c0101023:	c1 e8 09             	shr    $0x9,%eax
c0101026:	e8 75 fe ff ff       	call   c0100ea0 <buf_fetch>
c010102b:	89 f2                	mov    %esi,%edx
c010102d:	88 54 18 06          	mov    %dl,0x6(%eax,%ebx,1)
c0101031:	c6 40 05 01          	movb   $0x1,0x5(%eax)
c0101035:	5b                   	pop    %ebx
c0101036:	5e                   	pop    %esi
c0101037:	5d                   	pop    %ebp
c0101038:	c3                   	ret    
c0101039:	66 90                	xchg   %ax,%ax
c010103b:	66 90                	xchg   %ax,%ax
c010103d:	66 90                	xchg   %ax,%ax
c010103f:	90                   	nop

c0101040 <dma_prepare>:
c0101040:	55                   	push   %ebp
c0101041:	89 e5                	mov    %esp,%ebp
c0101043:	83 ec 08             	sub    $0x8,%esp
c0101046:	68 cc 17 10 c0       	push   $0xc01017cc
c010104b:	6a 1d                	push   $0x1d
c010104d:	68 62 17 10 c0       	push   $0xc0101762
c0101052:	68 80 17 10 c0       	push   $0xc0101780
c0101057:	e8 b4 02 00 00       	call   c0101310 <printk>
c010105c:	b8 01 00 00 00       	mov    $0x1,%eax
c0101061:	d6                   	(bad)  
c0101062:	83 c4 10             	add    $0x10,%esp
c0101065:	c9                   	leave  
c0101066:	c3                   	ret    
c0101067:	89 f6                	mov    %esi,%esi
c0101069:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0101070 <dma_issue_read>:
c0101070:	55                   	push   %ebp
c0101071:	ba 40 c0 ff ff       	mov    $0xffffc040,%edx
c0101076:	89 e5                	mov    %esp,%ebp
c0101078:	ec                   	in     (%dx),%al
c0101079:	83 c8 09             	or     $0x9,%eax
c010107c:	ee                   	out    %al,(%dx)
c010107d:	5d                   	pop    %ebp
c010107e:	c3                   	ret    
c010107f:	90                   	nop

c0101080 <ide_prepare>:
c0101080:	55                   	push   %ebp
c0101081:	89 c1                	mov    %eax,%ecx
c0101083:	ba f7 01 00 00       	mov    $0x1f7,%edx
c0101088:	89 e5                	mov    %esp,%ebp
c010108a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0101090:	ec                   	in     (%dx),%al
c0101091:	83 e0 c0             	and    $0xffffffc0,%eax
c0101094:	3c 40                	cmp    $0x40,%al
c0101096:	75 f8                	jne    c0101090 <ide_prepare+0x10>
c0101098:	ba f1 01 00 00       	mov    $0x1f1,%edx
c010109d:	31 c0                	xor    %eax,%eax
c010109f:	ee                   	out    %al,(%dx)
c01010a0:	b8 01 00 00 00       	mov    $0x1,%eax
c01010a5:	b2 f2                	mov    $0xf2,%dl
c01010a7:	ee                   	out    %al,(%dx)
c01010a8:	b2 f3                	mov    $0xf3,%dl
c01010aa:	89 c8                	mov    %ecx,%eax
c01010ac:	ee                   	out    %al,(%dx)
c01010ad:	89 c8                	mov    %ecx,%eax
c01010af:	b2 f4                	mov    $0xf4,%dl
c01010b1:	c1 e8 08             	shr    $0x8,%eax
c01010b4:	ee                   	out    %al,(%dx)
c01010b5:	89 c8                	mov    %ecx,%eax
c01010b7:	b2 f5                	mov    $0xf5,%dl
c01010b9:	c1 e8 10             	shr    $0x10,%eax
c01010bc:	ee                   	out    %al,(%dx)
c01010bd:	89 c8                	mov    %ecx,%eax
c01010bf:	b2 f6                	mov    $0xf6,%dl
c01010c1:	c1 e8 18             	shr    $0x18,%eax
c01010c4:	83 c8 e0             	or     $0xffffffe0,%eax
c01010c7:	ee                   	out    %al,(%dx)
c01010c8:	5d                   	pop    %ebp
c01010c9:	c3                   	ret    
c01010ca:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

c01010d0 <disk_do_read>:
c01010d0:	55                   	push   %ebp
c01010d1:	89 e5                	mov    %esp,%ebp
c01010d3:	53                   	push   %ebx
c01010d4:	8b 45 0c             	mov    0xc(%ebp),%eax
c01010d7:	e8 a4 ff ff ff       	call   c0101080 <ide_prepare>
c01010dc:	ba f7 01 00 00       	mov    $0x1f7,%edx
c01010e1:	b8 20 00 00 00       	mov    $0x20,%eax
c01010e6:	ee                   	out    %al,(%dx)
c01010e7:	8b 4d 08             	mov    0x8(%ebp),%ecx
c01010ea:	b2 f0                	mov    $0xf0,%dl
c01010ec:	8d 99 00 02 00 00    	lea    0x200(%ecx),%ebx
c01010f2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c01010f8:	ed                   	in     (%dx),%eax
c01010f9:	89 01                	mov    %eax,(%ecx)
c01010fb:	83 c1 04             	add    $0x4,%ecx
c01010fe:	39 d9                	cmp    %ebx,%ecx
c0101100:	75 f6                	jne    c01010f8 <disk_do_read+0x28>
c0101102:	5b                   	pop    %ebx
c0101103:	5d                   	pop    %ebp
c0101104:	c3                   	ret    
c0101105:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0101109:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0101110 <disk_do_write>:
c0101110:	55                   	push   %ebp
c0101111:	89 e5                	mov    %esp,%ebp
c0101113:	53                   	push   %ebx
c0101114:	8b 45 0c             	mov    0xc(%ebp),%eax
c0101117:	e8 64 ff ff ff       	call   c0101080 <ide_prepare>
c010111c:	ba f7 01 00 00       	mov    $0x1f7,%edx
c0101121:	b8 30 00 00 00       	mov    $0x30,%eax
c0101126:	ee                   	out    %al,(%dx)
c0101127:	8b 4d 08             	mov    0x8(%ebp),%ecx
c010112a:	b2 f0                	mov    $0xf0,%dl
c010112c:	8d 99 00 02 00 00    	lea    0x200(%ecx),%ebx
c0101132:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0101138:	8b 01                	mov    (%ecx),%eax
c010113a:	ef                   	out    %eax,(%dx)
c010113b:	83 c1 04             	add    $0x4,%ecx
c010113e:	39 d9                	cmp    %ebx,%ecx
c0101140:	75 f6                	jne    c0101138 <disk_do_write+0x28>
c0101142:	5b                   	pop    %ebx
c0101143:	5d                   	pop    %ebp
c0101144:	c3                   	ret    
c0101145:	66 90                	xchg   %ax,%ax
c0101147:	66 90                	xchg   %ax,%ax
c0101149:	66 90                	xchg   %ax,%ax
c010114b:	66 90                	xchg   %ax,%ax
c010114d:	66 90                	xchg   %ax,%ax
c010114f:	90                   	nop

c0101150 <ide_intr>:
c0101150:	55                   	push   %ebp
c0101151:	c7 05 c4 9d 15 c0 01 	movl   $0x1,0xc0159dc4
c0101158:	00 00 00 
c010115b:	89 e5                	mov    %esp,%ebp
c010115d:	5d                   	pop    %ebp
c010115e:	c3                   	ret    
c010115f:	90                   	nop

c0101160 <ide_writeback>:
c0101160:	a1 c0 9d 15 c0       	mov    0xc0159dc0,%eax
c0101165:	83 c0 01             	add    $0x1,%eax
c0101168:	83 f8 64             	cmp    $0x64,%eax
c010116b:	a3 c0 9d 15 c0       	mov    %eax,0xc0159dc0
c0101170:	74 06                	je     c0101178 <ide_writeback+0x18>
c0101172:	c3                   	ret    
c0101173:	90                   	nop
c0101174:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0101178:	55                   	push   %ebp
c0101179:	89 e5                	mov    %esp,%ebp
c010117b:	83 ec 08             	sub    $0x8,%esp
c010117e:	e8 fd fd ff ff       	call   c0100f80 <buf_writeback>
c0101183:	c7 05 c0 9d 15 c0 00 	movl   $0x0,0xc0159dc0
c010118a:	00 00 00 
c010118d:	c9                   	leave  
c010118e:	c3                   	ret    
c010118f:	90                   	nop

c0101190 <ide_read>:
c0101190:	55                   	push   %ebp
c0101191:	89 e5                	mov    %esp,%ebp
c0101193:	57                   	push   %edi
c0101194:	56                   	push   %esi
c0101195:	53                   	push   %ebx
c0101196:	83 ec 0c             	sub    $0xc,%esp
c0101199:	8b 5d 0c             	mov    0xc(%ebp),%ebx
c010119c:	8b 45 10             	mov    0x10(%ebp),%eax
c010119f:	8b 7d 08             	mov    0x8(%ebp),%edi
c01011a2:	8d 34 18             	lea    (%eax,%ebx,1),%esi
c01011a5:	29 df                	sub    %ebx,%edi
c01011a7:	85 c0                	test   %eax,%eax
c01011a9:	74 1b                	je     c01011c6 <ide_read+0x36>
c01011ab:	90                   	nop
c01011ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c01011b0:	83 ec 0c             	sub    $0xc,%esp
c01011b3:	53                   	push   %ebx
c01011b4:	e8 27 fe ff ff       	call   c0100fe0 <read_byte>
c01011b9:	88 04 1f             	mov    %al,(%edi,%ebx,1)
c01011bc:	83 c3 01             	add    $0x1,%ebx
c01011bf:	83 c4 10             	add    $0x10,%esp
c01011c2:	39 f3                	cmp    %esi,%ebx
c01011c4:	75 ea                	jne    c01011b0 <ide_read+0x20>
c01011c6:	8d 65 f4             	lea    -0xc(%ebp),%esp
c01011c9:	5b                   	pop    %ebx
c01011ca:	5e                   	pop    %esi
c01011cb:	5f                   	pop    %edi
c01011cc:	5d                   	pop    %ebp
c01011cd:	c3                   	ret    
c01011ce:	66 90                	xchg   %ax,%ax

c01011d0 <ide_write>:
c01011d0:	55                   	push   %ebp
c01011d1:	89 e5                	mov    %esp,%ebp
c01011d3:	57                   	push   %edi
c01011d4:	56                   	push   %esi
c01011d5:	53                   	push   %ebx
c01011d6:	83 ec 0c             	sub    $0xc,%esp
c01011d9:	8b 5d 0c             	mov    0xc(%ebp),%ebx
c01011dc:	8b 45 10             	mov    0x10(%ebp),%eax
c01011df:	8b 7d 08             	mov    0x8(%ebp),%edi
c01011e2:	8d 34 18             	lea    (%eax,%ebx,1),%esi
c01011e5:	29 df                	sub    %ebx,%edi
c01011e7:	85 c0                	test   %eax,%eax
c01011e9:	74 1d                	je     c0101208 <ide_write+0x38>
c01011eb:	90                   	nop
c01011ec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c01011f0:	0f b6 04 1f          	movzbl (%edi,%ebx,1),%eax
c01011f4:	83 ec 08             	sub    $0x8,%esp
c01011f7:	50                   	push   %eax
c01011f8:	53                   	push   %ebx
c01011f9:	83 c3 01             	add    $0x1,%ebx
c01011fc:	e8 0f fe ff ff       	call   c0101010 <write_byte>
c0101201:	83 c4 10             	add    $0x10,%esp
c0101204:	39 f3                	cmp    %esi,%ebx
c0101206:	75 e8                	jne    c01011f0 <ide_write+0x20>
c0101208:	8d 65 f4             	lea    -0xc(%ebp),%esp
c010120b:	5b                   	pop    %ebx
c010120c:	5e                   	pop    %esi
c010120d:	5f                   	pop    %edi
c010120e:	5d                   	pop    %ebp
c010120f:	c3                   	ret    

c0101210 <clear_ide_intr>:
c0101210:	55                   	push   %ebp
c0101211:	c7 05 c4 9d 15 c0 00 	movl   $0x0,0xc0159dc4
c0101218:	00 00 00 
c010121b:	89 e5                	mov    %esp,%ebp
c010121d:	5d                   	pop    %ebp
c010121e:	c3                   	ret    
c010121f:	90                   	nop

c0101220 <wait_ide_intr>:
c0101220:	a1 c4 9d 15 c0       	mov    0xc0159dc4,%eax
c0101225:	55                   	push   %ebp
c0101226:	89 e5                	mov    %esp,%ebp
c0101228:	85 c0                	test   %eax,%eax
c010122a:	75 0e                	jne    c010123a <wait_ide_intr+0x1a>
c010122c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0101230:	f4                   	hlt    
c0101231:	a1 c4 9d 15 c0       	mov    0xc0159dc4,%eax
c0101236:	85 c0                	test   %eax,%eax
c0101238:	74 f6                	je     c0101230 <wait_ide_intr+0x10>
c010123a:	c7 05 c4 9d 15 c0 00 	movl   $0x0,0xc0159dc4
c0101241:	00 00 00 
c0101244:	5d                   	pop    %ebp
c0101245:	c3                   	ret    
c0101246:	8d 76 00             	lea    0x0(%esi),%esi
c0101249:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0101250 <init_ide>:
c0101250:	55                   	push   %ebp
c0101251:	89 e5                	mov    %esp,%ebp
c0101253:	83 ec 08             	sub    $0x8,%esp
c0101256:	e8 f5 fc ff ff       	call   c0100f50 <buf_init>
c010125b:	83 ec 08             	sub    $0x8,%esp
c010125e:	68 60 11 10 c0       	push   $0xc0101160
c0101263:	6a 00                	push   $0x0
c0101265:	e8 06 f4 ff ff       	call   c0100670 <add_irq_handle>
c010126a:	58                   	pop    %eax
c010126b:	5a                   	pop    %edx
c010126c:	68 50 11 10 c0       	push   $0xc0101150
c0101271:	6a 0e                	push   $0xe
c0101273:	e8 f8 f3 ff ff       	call   c0100670 <add_irq_handle>
c0101278:	83 c4 10             	add    $0x10,%esp
c010127b:	c9                   	leave  
c010127c:	c3                   	ret    
c010127d:	66 90                	xchg   %ax,%ax
c010127f:	90                   	nop

c0101280 <ramdisk_read>:
c0101280:	55                   	push   %ebp
c0101281:	89 e5                	mov    %esp,%ebp
c0101283:	53                   	push   %ebx
c0101284:	8b 55 0c             	mov    0xc(%ebp),%edx
c0101287:	8b 4d 10             	mov    0x10(%ebp),%ecx
c010128a:	8b 5d 08             	mov    0x8(%ebp),%ebx
c010128d:	8d 04 0a             	lea    (%edx,%ecx,1),%eax
c0101290:	3d ff ff 09 00       	cmp    $0x9ffff,%eax
c0101295:	76 06                	jbe    c010129d <ramdisk_read+0x1d>
c0101297:	b8 01 00 00 00       	mov    $0x1,%eax
c010129c:	d6                   	(bad)  
c010129d:	89 5d 08             	mov    %ebx,0x8(%ebp)
c01012a0:	89 4d 10             	mov    %ecx,0x10(%ebp)
c01012a3:	89 55 0c             	mov    %edx,0xc(%ebp)
c01012a6:	5b                   	pop    %ebx
c01012a7:	5d                   	pop    %ebp
c01012a8:	e9 d3 00 00 00       	jmp    c0101380 <memcpy>
c01012ad:	8d 76 00             	lea    0x0(%esi),%esi

c01012b0 <ramdisk_write>:
c01012b0:	55                   	push   %ebp
c01012b1:	89 e5                	mov    %esp,%ebp
c01012b3:	53                   	push   %ebx
c01012b4:	8b 55 0c             	mov    0xc(%ebp),%edx
c01012b7:	8b 4d 10             	mov    0x10(%ebp),%ecx
c01012ba:	8b 5d 08             	mov    0x8(%ebp),%ebx
c01012bd:	8d 04 0a             	lea    (%edx,%ecx,1),%eax
c01012c0:	3d ff ff 09 00       	cmp    $0x9ffff,%eax
c01012c5:	76 06                	jbe    c01012cd <ramdisk_write+0x1d>
c01012c7:	b8 01 00 00 00       	mov    $0x1,%eax
c01012cc:	d6                   	(bad)  
c01012cd:	89 5d 0c             	mov    %ebx,0xc(%ebp)
c01012d0:	89 4d 10             	mov    %ecx,0x10(%ebp)
c01012d3:	89 55 08             	mov    %edx,0x8(%ebp)
c01012d6:	5b                   	pop    %ebx
c01012d7:	5d                   	pop    %ebp
c01012d8:	e9 a3 00 00 00       	jmp    c0101380 <memcpy>
c01012dd:	66 90                	xchg   %ax,%ax
c01012df:	90                   	nop

c01012e0 <sbrk>:
c01012e0:	55                   	push   %ebp
c01012e1:	89 e5                	mov    %esp,%ebp
c01012e3:	83 ec 08             	sub    $0x8,%esp
c01012e6:	68 ee 17 10 c0       	push   $0xc01017ee
c01012eb:	6a 08                	push   $0x8
c01012ed:	68 d8 17 10 c0       	push   $0xc01017d8
c01012f2:	68 08 17 10 c0       	push   $0xc0101708
c01012f7:	e8 14 00 00 00       	call   c0101310 <printk>
c01012fc:	b8 01 00 00 00       	mov    $0x1,%eax
c0101301:	d6                   	(bad)  
c0101302:	30 c0                	xor    %al,%al
c0101304:	c9                   	leave  
c0101305:	c3                   	ret    
c0101306:	66 90                	xchg   %ax,%ax
c0101308:	66 90                	xchg   %ax,%ax
c010130a:	66 90                	xchg   %ax,%ax
c010130c:	66 90                	xchg   %ax,%ax
c010130e:	66 90                	xchg   %ax,%ax

c0101310 <printk>:
c0101310:	55                   	push   %ebp
c0101311:	89 e5                	mov    %esp,%ebp
c0101313:	5d                   	pop    %ebp
c0101314:	c3                   	ret    
c0101315:	66 90                	xchg   %ax,%ax
c0101317:	66 90                	xchg   %ax,%ax
c0101319:	66 90                	xchg   %ax,%ax
c010131b:	66 90                	xchg   %ax,%ax
c010131d:	66 90                	xchg   %ax,%ax
c010131f:	90                   	nop

c0101320 <init_serial>:
c0101320:	55                   	push   %ebp
c0101321:	ba f9 03 00 00       	mov    $0x3f9,%edx
c0101326:	31 c0                	xor    %eax,%eax
c0101328:	89 e5                	mov    %esp,%ebp
c010132a:	ee                   	out    %al,(%dx)
c010132b:	b8 80 ff ff ff       	mov    $0xffffff80,%eax
c0101330:	b2 fb                	mov    $0xfb,%dl
c0101332:	ee                   	out    %al,(%dx)
c0101333:	b8 01 00 00 00       	mov    $0x1,%eax
c0101338:	b2 f8                	mov    $0xf8,%dl
c010133a:	ee                   	out    %al,(%dx)
c010133b:	31 c0                	xor    %eax,%eax
c010133d:	b2 f9                	mov    $0xf9,%dl
c010133f:	ee                   	out    %al,(%dx)
c0101340:	b8 03 00 00 00       	mov    $0x3,%eax
c0101345:	b2 fb                	mov    $0xfb,%dl
c0101347:	ee                   	out    %al,(%dx)
c0101348:	b8 c7 ff ff ff       	mov    $0xffffffc7,%eax
c010134d:	b2 fa                	mov    $0xfa,%dl
c010134f:	ee                   	out    %al,(%dx)
c0101350:	b8 0b 00 00 00       	mov    $0xb,%eax
c0101355:	b2 fc                	mov    $0xfc,%dl
c0101357:	ee                   	out    %al,(%dx)
c0101358:	5d                   	pop    %ebp
c0101359:	c3                   	ret    
c010135a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

c0101360 <serial_printc>:
c0101360:	55                   	push   %ebp
c0101361:	ba fd 03 00 00       	mov    $0x3fd,%edx
c0101366:	89 e5                	mov    %esp,%ebp
c0101368:	8b 4d 08             	mov    0x8(%ebp),%ecx
c010136b:	90                   	nop
c010136c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0101370:	ec                   	in     (%dx),%al
c0101371:	a8 20                	test   $0x20,%al
c0101373:	74 fb                	je     c0101370 <serial_printc+0x10>
c0101375:	ba f8 03 00 00       	mov    $0x3f8,%edx
c010137a:	89 c8                	mov    %ecx,%eax
c010137c:	ee                   	out    %al,(%dx)
c010137d:	5d                   	pop    %ebp
c010137e:	c3                   	ret    
c010137f:	90                   	nop

c0101380 <memcpy>:
c0101380:	55                   	push   %ebp
c0101381:	89 e5                	mov    %esp,%ebp
c0101383:	56                   	push   %esi
c0101384:	57                   	push   %edi
c0101385:	53                   	push   %ebx
c0101386:	8b 7d 08             	mov    0x8(%ebp),%edi
c0101389:	8b 4d 10             	mov    0x10(%ebp),%ecx
c010138c:	8b 75 0c             	mov    0xc(%ebp),%esi
c010138f:	fc                   	cld    
c0101390:	83 f9 08             	cmp    $0x8,%ecx
c0101393:	76 26                	jbe    c01013bb <memcpy+0x3b>
c0101395:	89 fa                	mov    %edi,%edx
c0101397:	89 cb                	mov    %ecx,%ebx
c0101399:	83 e2 03             	and    $0x3,%edx
c010139c:	74 10                	je     c01013ae <memcpy+0x2e>
c010139e:	b9 04 00 00 00       	mov    $0x4,%ecx
c01013a3:	29 d1                	sub    %edx,%ecx
c01013a5:	83 e1 03             	and    $0x3,%ecx
c01013a8:	29 cb                	sub    %ecx,%ebx
c01013aa:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
c01013ac:	89 d9                	mov    %ebx,%ecx
c01013ae:	c1 e9 02             	shr    $0x2,%ecx
c01013b1:	8d 76 00             	lea    0x0(%esi),%esi
c01013b4:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
c01013b6:	89 d9                	mov    %ebx,%ecx
c01013b8:	83 e1 03             	and    $0x3,%ecx
c01013bb:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
c01013bd:	8b 45 08             	mov    0x8(%ebp),%eax
c01013c0:	8d 65 f4             	lea    -0xc(%ebp),%esp
c01013c3:	5b                   	pop    %ebx
c01013c4:	5f                   	pop    %edi
c01013c5:	5e                   	pop    %esi
c01013c6:	c9                   	leave  
c01013c7:	c3                   	ret    

c01013c8 <memset>:
c01013c8:	55                   	push   %ebp
c01013c9:	89 e5                	mov    %esp,%ebp
c01013cb:	57                   	push   %edi
c01013cc:	8b 7d 08             	mov    0x8(%ebp),%edi
c01013cf:	0f b6 45 0c          	movzbl 0xc(%ebp),%eax
c01013d3:	8b 4d 10             	mov    0x10(%ebp),%ecx
c01013d6:	fc                   	cld    
c01013d7:	83 f9 10             	cmp    $0x10,%ecx
c01013da:	76 69                	jbe    c0101445 <memset+0x7d>
c01013dc:	f7 c7 07 00 00 00    	test   $0x7,%edi
c01013e2:	74 4c                	je     c0101430 <memset+0x68>
c01013e4:	88 07                	mov    %al,(%edi)
c01013e6:	47                   	inc    %edi
c01013e7:	49                   	dec    %ecx
c01013e8:	f7 c7 07 00 00 00    	test   $0x7,%edi
c01013ee:	74 40                	je     c0101430 <memset+0x68>
c01013f0:	88 07                	mov    %al,(%edi)
c01013f2:	47                   	inc    %edi
c01013f3:	49                   	dec    %ecx
c01013f4:	f7 c7 07 00 00 00    	test   $0x7,%edi
c01013fa:	74 34                	je     c0101430 <memset+0x68>
c01013fc:	88 07                	mov    %al,(%edi)
c01013fe:	47                   	inc    %edi
c01013ff:	49                   	dec    %ecx
c0101400:	f7 c7 07 00 00 00    	test   $0x7,%edi
c0101406:	74 28                	je     c0101430 <memset+0x68>
c0101408:	88 07                	mov    %al,(%edi)
c010140a:	47                   	inc    %edi
c010140b:	49                   	dec    %ecx
c010140c:	f7 c7 07 00 00 00    	test   $0x7,%edi
c0101412:	74 1c                	je     c0101430 <memset+0x68>
c0101414:	88 07                	mov    %al,(%edi)
c0101416:	47                   	inc    %edi
c0101417:	49                   	dec    %ecx
c0101418:	f7 c7 07 00 00 00    	test   $0x7,%edi
c010141e:	74 10                	je     c0101430 <memset+0x68>
c0101420:	88 07                	mov    %al,(%edi)
c0101422:	47                   	inc    %edi
c0101423:	49                   	dec    %ecx
c0101424:	f7 c7 07 00 00 00    	test   $0x7,%edi
c010142a:	74 04                	je     c0101430 <memset+0x68>
c010142c:	88 07                	mov    %al,(%edi)
c010142e:	47                   	inc    %edi
c010142f:	49                   	dec    %ecx
c0101430:	88 c4                	mov    %al,%ah
c0101432:	89 c2                	mov    %eax,%edx
c0101434:	c1 e2 10             	shl    $0x10,%edx
c0101437:	09 d0                	or     %edx,%eax
c0101439:	89 ca                	mov    %ecx,%edx
c010143b:	c1 e9 02             	shr    $0x2,%ecx
c010143e:	83 e2 03             	and    $0x3,%edx
c0101441:	f3 ab                	rep stos %eax,%es:(%edi)
c0101443:	89 d1                	mov    %edx,%ecx
c0101445:	f3 aa                	rep stos %al,%es:(%edi)
c0101447:	8b 45 08             	mov    0x8(%ebp),%eax
c010144a:	8d 65 fc             	lea    -0x4(%ebp),%esp
c010144d:	5f                   	pop    %edi
c010144e:	c9                   	leave  
c010144f:	c3                   	ret    
