
kernel:     file format elf32-i386


Disassembly of section .text:

c0100000 <start>:
c0100000:	0f 01 15 48 00 10 c0 	lgdtl  0xc0100048
c0100007:	0f 20 c0             	mov    %cr0,%eax
c010000a:	83 c8 01             	or     $0x1,%eax
c010000d:	0f 22 c0             	mov    %eax,%cr0
c0100010:	ea 17 00 10 c0 08 00 	ljmp   $0x8,$0xc0100017

c0100017 <start_cond>:
c0100017:	66 b8 10 00          	mov    $0x10,%ax
c010001b:	8e d8                	mov    %eax,%ds
c010001d:	8e c0                	mov    %eax,%es
c010001f:	8e d0                	mov    %eax,%ss
c0100021:	bd 00 00 00 00       	mov    $0x0,%ebp
c0100026:	bc 00 00 00 08       	mov    $0x8000000,%esp
c010002b:	e9 70 0d 00 00       	jmp    c0100da0 <init>

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
c010004d:	c0 66 90 55          	shlb   $0x55,-0x70(%esi)

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
c01000d7:	a1 c4 2d 10 c0       	mov    0xc0102dc4,%eax
c01000dc:	3d ff 7f 00 00       	cmp    $0x7fff,%eax
c01000e1:	0f 8f c1 01 00 00    	jg     c01002a8 <mm_malloc+0x258>
c01000e7:	89 c1                	mov    %eax,%ecx
c01000e9:	83 c0 01             	add    $0x1,%eax
c01000ec:	c1 e1 0c             	shl    $0xc,%ecx
c01000ef:	83 c9 07             	or     $0x7,%ecx
c01000f2:	89 0e                	mov    %ecx,(%esi)
c01000f4:	a3 c4 2d 10 c0       	mov    %eax,0xc0102dc4
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
c010014c:	e8 a7 11 00 00       	call   c01012f8 <memset>
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
c0100178:	c7 44 24 10 a4 13 10 	movl   $0xc01013a4,0x10(%esp)
c010017f:	c0 
c0100180:	c7 44 24 0c 08 14 10 	movl   $0xc0101408,0xc(%esp)
c0100187:	c0 
c0100188:	c7 44 24 08 11 00 00 	movl   $0x11,0x8(%esp)
c010018f:	00 
c0100190:	c7 44 24 04 93 13 10 	movl   $0xc0101393,0x4(%esp)
c0100197:	c0 
c0100198:	c7 04 24 b4 13 10 c0 	movl   $0xc01013b4,(%esp)
c010019f:	e8 9c 10 00 00       	call   c0101240 <printk>
c01001a4:	b8 01 00 00 00       	mov    $0x1,%eax
c01001a9:	d6                   	(bad)  
c01001aa:	8b 55 e0             	mov    -0x20(%ebp),%edx
c01001ad:	8d 86 00 00 00 c0    	lea    -0x40000000(%esi),%eax
c01001b3:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c01001b8:	c1 ea 0c             	shr    $0xc,%edx
c01001bb:	81 e2 ff 03 00 00    	and    $0x3ff,%edx
c01001c1:	f6 04 90 01          	testb  $0x1,(%eax,%edx,4)
c01001c5:	75 32                	jne    c01001f9 <mm_malloc+0x1a9>
c01001c7:	c7 44 24 10 ac 13 10 	movl   $0xc01013ac,0x10(%esp)
c01001ce:	c0 
c01001cf:	c7 44 24 0c 08 14 10 	movl   $0xc0101408,0xc(%esp)
c01001d6:	c0 
c01001d7:	c7 44 24 08 13 00 00 	movl   $0x13,0x8(%esp)
c01001de:	00 
c01001df:	c7 44 24 04 93 13 10 	movl   $0xc0101393,0x4(%esp)
c01001e6:	c0 
c01001e7:	c7 04 24 b4 13 10 c0 	movl   $0xc01013b4,(%esp)
c01001ee:	e8 4d 10 00 00       	call   c0101240 <printk>
c01001f3:	b8 01 00 00 00       	mov    $0x1,%eax
c01001f8:	d6                   	(bad)  
c01001f9:	8b 45 08             	mov    0x8(%ebp),%eax
c01001fc:	c1 e8 16             	shr    $0x16,%eax
c01001ff:	8b 1c 83             	mov    (%ebx,%eax,4),%ebx
c0100202:	f6 c3 01             	test   $0x1,%bl
c0100205:	75 32                	jne    c0100239 <mm_malloc+0x1e9>
c0100207:	c7 44 24 10 a4 13 10 	movl   $0xc01013a4,0x10(%esp)
c010020e:	c0 
c010020f:	c7 44 24 0c 08 14 10 	movl   $0xc0101408,0xc(%esp)
c0100216:	c0 
c0100217:	c7 44 24 08 11 00 00 	movl   $0x11,0x8(%esp)
c010021e:	00 
c010021f:	c7 44 24 04 93 13 10 	movl   $0xc0101393,0x4(%esp)
c0100226:	c0 
c0100227:	c7 04 24 b4 13 10 c0 	movl   $0xc01013b4,(%esp)
c010022e:	e8 0d 10 00 00       	call   c0101240 <printk>
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
c0100258:	c7 44 24 10 ac 13 10 	movl   $0xc01013ac,0x10(%esp)
c010025f:	c0 
c0100260:	c7 44 24 0c 08 14 10 	movl   $0xc0101408,0xc(%esp)
c0100267:	c0 
c0100268:	c7 44 24 08 13 00 00 	movl   $0x13,0x8(%esp)
c010026f:	00 
c0100270:	c7 44 24 04 93 13 10 	movl   $0xc0101393,0x4(%esp)
c0100277:	c0 
c0100278:	c7 04 24 b4 13 10 c0 	movl   $0xc01013b4,(%esp)
c010027f:	e8 bc 0f 00 00       	call   c0101240 <printk>
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
c01002a8:	c7 44 24 10 80 13 10 	movl   $0xc0101380,0x10(%esp)
c01002af:	c0 
c01002b0:	c7 44 24 0c fe 13 10 	movl   $0xc01013fe,0xc(%esp)
c01002b7:	c0 
c01002b8:	c7 44 24 08 31 00 00 	movl   $0x31,0x8(%esp)
c01002bf:	00 
c01002c0:	c7 44 24 04 93 13 10 	movl   $0xc0101393,0x4(%esp)
c01002c7:	c0 
c01002c8:	c7 04 24 b4 13 10 c0 	movl   $0xc01013b4,(%esp)
c01002cf:	e8 6c 0f 00 00       	call   c0101240 <printk>
c01002d4:	b8 01 00 00 00       	mov    $0x1,%eax
c01002d9:	d6                   	(bad)  
c01002da:	a1 c4 2d 10 c0       	mov    0xc0102dc4,%eax
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
c010039a:	e8 61 03 00 00       	call   c0100700 <irq_handle>
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
c01003ce:	68 00 50 14 c0       	push   $0xc0145000
c01003d3:	e8 20 0f 00 00       	call   c01012f8 <memset>
c01003d8:	83 c4 10             	add    $0x10,%esp
c01003db:	b9 00 50 14 c0       	mov    $0xc0145000,%ecx
c01003e0:	b8 00 50 12 c0       	mov    $0xc0125000,%eax
c01003e5:	8d 76 00             	lea    0x0(%esi),%esi
c01003e8:	89 c2                	mov    %eax,%edx
c01003ea:	05 00 10 00 00       	add    $0x1000,%eax
c01003ef:	83 c1 04             	add    $0x4,%ecx
c01003f2:	81 e2 00 f0 ff ff    	and    $0xfffff000,%edx
c01003f8:	83 ca 07             	or     $0x7,%edx
c01003fb:	89 51 fc             	mov    %edx,-0x4(%ecx)
c01003fe:	3d 00 50 14 c0       	cmp    $0xc0145000,%eax
c0100403:	75 e3                	jne    c01003e8 <init_page+0x28>
c0100405:	bf fc 4f 14 c0       	mov    $0xc0144ffc,%edi
c010040a:	b8 07 f0 ff 07       	mov    $0x7fff007,%eax
c010040f:	fd                   	std    
c0100410:	ab                   	stos   %eax,%es:(%edi)
c0100411:	2d 00 10 00 00       	sub    $0x1000,%eax
c0100416:	7d f8                	jge    c0100410 <init_page+0x50>
c0100418:	b8 00 50 14 c0       	mov    $0xc0145000,%eax
c010041d:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0100422:	0f 22 d8             	mov    %eax,%cr3
c0100425:	0f 20 c0             	mov    %cr0,%eax
c0100428:	0d 00 00 00 80       	or     $0x80000000,%eax
c010042d:	0f 22 c0             	mov    %eax,%cr0
c0100430:	8b 7d fc             	mov    -0x4(%ebp),%edi
c0100433:	c9                   	leave  
c0100434:	c3                   	ret    
c0100435:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0100439:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0100440 <init_segment>:
c0100440:	55                   	push   %ebp
c0100441:	89 e5                	mov    %esp,%ebp
c0100443:	83 ec 0c             	sub    $0xc,%esp
c0100446:	6a 18                	push   $0x18
c0100448:	6a 00                	push   $0x0
c010044a:	68 08 40 12 c0       	push   $0xc0124008
c010044f:	e8 a4 0e 00 00       	call   c01012f8 <memset>
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
c0100558:	68 00 70 14 c0       	push   $0xc0147000
c010055d:	e8 96 0d 00 00       	call   c01012f8 <memset>
c0100562:	83 c4 0c             	add    $0xc,%esp
c0100565:	68 80 00 00 00       	push   $0x80
c010056a:	53                   	push   %ebx
c010056b:	68 00 70 14 c0       	push   $0xc0147000
c0100570:	e8 3b 0d 00 00       	call   c01012b0 <memcpy>
c0100575:	b8 00 70 14 c0       	mov    $0xc0147000,%eax
c010057a:	83 c4 10             	add    $0x10,%esp
c010057d:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0100580:	25 00 fc ff ff       	and    $0xfffffc00,%eax
c0100585:	a3 04 60 14 c0       	mov    %eax,0xc0146004
c010058a:	c9                   	leave  
c010058b:	c3                   	ret    
c010058c:	66 90                	xchg   %ax,%ax
c010058e:	66 90                	xchg   %ax,%ax

c0100590 <create_video_mapping>:
c0100590:	55                   	push   %ebp
c0100591:	89 e5                	mov    %esp,%ebp
c0100593:	83 ec 08             	sub    $0x8,%esp
c0100596:	68 95 14 10 c0       	push   $0xc0101495
c010059b:	6a 11                	push   $0x11
c010059d:	68 0e 14 10 c0       	push   $0xc010140e
c01005a2:	68 34 14 10 c0       	push   $0xc0101434
c01005a7:	e8 94 0c 00 00       	call   c0101240 <printk>
c01005ac:	b8 01 00 00 00       	mov    $0x1,%eax
c01005b1:	d6                   	(bad)  
c01005b2:	83 c4 10             	add    $0x10,%esp
c01005b5:	c9                   	leave  
c01005b6:	c3                   	ret    
c01005b7:	89 f6                	mov    %esi,%esi
c01005b9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c01005c0 <video_mapping_write_test>:
c01005c0:	55                   	push   %ebp
c01005c1:	31 c0                	xor    %eax,%eax
c01005c3:	89 e5                	mov    %esp,%ebp
c01005c5:	8d 76 00             	lea    0x0(%esi),%esi
c01005c8:	89 04 85 00 00 0a 00 	mov    %eax,0xa0000(,%eax,4)
c01005cf:	83 c0 01             	add    $0x1,%eax
c01005d2:	3d 80 3e 00 00       	cmp    $0x3e80,%eax
c01005d7:	75 ef                	jne    c01005c8 <video_mapping_write_test+0x8>
c01005d9:	5d                   	pop    %ebp
c01005da:	c3                   	ret    
c01005db:	90                   	nop
c01005dc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

c01005e0 <video_mapping_read_test>:
c01005e0:	55                   	push   %ebp
c01005e1:	89 e5                	mov    %esp,%ebp
c01005e3:	56                   	push   %esi
c01005e4:	be 01 00 00 00       	mov    $0x1,%esi
c01005e9:	53                   	push   %ebx
c01005ea:	31 db                	xor    %ebx,%ebx
c01005ec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c01005f0:	3b 1c 9d 00 00 0a 00 	cmp    0xa0000(,%ebx,4),%ebx
c01005f7:	74 24                	je     c010061d <video_mapping_read_test+0x3d>
c01005f9:	83 ec 0c             	sub    $0xc,%esp
c01005fc:	68 27 14 10 c0       	push   $0xc0101427
c0100601:	68 7d 14 10 c0       	push   $0xc010147d
c0100606:	6a 20                	push   $0x20
c0100608:	68 0e 14 10 c0       	push   $0xc010140e
c010060d:	68 b4 13 10 c0       	push   $0xc01013b4
c0100612:	e8 29 0c 00 00       	call   c0101240 <printk>
c0100617:	89 f0                	mov    %esi,%eax
c0100619:	d6                   	(bad)  
c010061a:	83 c4 20             	add    $0x20,%esp
c010061d:	83 c3 01             	add    $0x1,%ebx
c0100620:	81 fb 80 3e 00 00    	cmp    $0x3e80,%ebx
c0100626:	75 c8                	jne    c01005f0 <video_mapping_read_test+0x10>
c0100628:	8d 65 f8             	lea    -0x8(%ebp),%esp
c010062b:	5b                   	pop    %ebx
c010062c:	5e                   	pop    %esi
c010062d:	5d                   	pop    %ebp
c010062e:	c3                   	ret    
c010062f:	90                   	nop

c0100630 <video_mapping_clear>:
c0100630:	55                   	push   %ebp
c0100631:	89 e5                	mov    %esp,%ebp
c0100633:	83 ec 0c             	sub    $0xc,%esp
c0100636:	68 00 fa 00 00       	push   $0xfa00
c010063b:	6a 00                	push   $0x0
c010063d:	68 00 00 0a 00       	push   $0xa0000
c0100642:	e8 b1 0c 00 00       	call   c01012f8 <memset>
c0100647:	83 c4 10             	add    $0x10,%esp
c010064a:	c9                   	leave  
c010064b:	c3                   	ret    
c010064c:	66 90                	xchg   %ax,%ax
c010064e:	66 90                	xchg   %ax,%ax

c0100650 <add_irq_handle>:
c0100650:	55                   	push   %ebp
c0100651:	89 e5                	mov    %esp,%ebp
c0100653:	53                   	push   %ebx
c0100654:	83 ec 04             	sub    $0x4,%esp
c0100657:	8b 5d 08             	mov    0x8(%ebp),%ebx
c010065a:	83 fb 0f             	cmp    $0xf,%ebx
c010065d:	7f 71                	jg     c01006d0 <add_irq_handle+0x80>
c010065f:	a1 00 80 14 c0       	mov    0xc0148000,%eax
c0100664:	83 f8 20             	cmp    $0x20,%eax
c0100667:	7e 2c                	jle    c0100695 <add_irq_handle+0x45>
c0100669:	83 ec 0c             	sub    $0xc,%esp
c010066c:	68 d9 14 10 c0       	push   $0xc01014d9
c0100671:	68 29 16 10 c0       	push   $0xc0101629
c0100676:	6a 16                	push   $0x16
c0100678:	68 bd 14 10 c0       	push   $0xc01014bd
c010067d:	68 b4 13 10 c0       	push   $0xc01013b4
c0100682:	e8 b9 0b 00 00       	call   c0101240 <printk>
c0100687:	b8 01 00 00 00       	mov    $0x1,%eax
c010068c:	d6                   	(bad)  
c010068d:	a1 00 80 14 c0       	mov    0xc0148000,%eax
c0100692:	83 c4 20             	add    $0x20,%esp
c0100695:	8d 50 01             	lea    0x1(%eax),%edx
c0100698:	89 15 00 80 14 c0    	mov    %edx,0xc0148000
c010069e:	8b 55 0c             	mov    0xc(%ebp),%edx
c01006a1:	89 14 c5 80 80 14 c0 	mov    %edx,-0x3feb7f80(,%eax,8)
c01006a8:	8b 14 9d 40 80 14 c0 	mov    -0x3feb7fc0(,%ebx,4),%edx
c01006af:	89 14 c5 84 80 14 c0 	mov    %edx,-0x3feb7f7c(,%eax,8)
c01006b6:	8d 04 c5 80 80 14 c0 	lea    -0x3feb7f80(,%eax,8),%eax
c01006bd:	89 04 9d 40 80 14 c0 	mov    %eax,-0x3feb7fc0(,%ebx,4)
c01006c4:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c01006c7:	c9                   	leave  
c01006c8:	c3                   	ret    
c01006c9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c01006d0:	83 ec 0c             	sub    $0xc,%esp
c01006d3:	68 aa 14 10 c0       	push   $0xc01014aa
c01006d8:	68 29 16 10 c0       	push   $0xc0101629
c01006dd:	6a 15                	push   $0x15
c01006df:	68 bd 14 10 c0       	push   $0xc01014bd
c01006e4:	68 b4 13 10 c0       	push   $0xc01013b4
c01006e9:	e8 52 0b 00 00       	call   c0101240 <printk>
c01006ee:	b8 01 00 00 00       	mov    $0x1,%eax
c01006f3:	d6                   	(bad)  
c01006f4:	83 c4 20             	add    $0x20,%esp
c01006f7:	e9 63 ff ff ff       	jmp    c010065f <add_irq_handle+0xf>
c01006fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

c0100700 <irq_handle>:
c0100700:	55                   	push   %ebp
c0100701:	89 e5                	mov    %esp,%ebp
c0100703:	53                   	push   %ebx
c0100704:	83 ec 04             	sub    $0x4,%esp
c0100707:	8b 5d 08             	mov    0x8(%ebp),%ebx
c010070a:	68 1e 16 10 c0       	push   $0xc010161e
c010070f:	6a 24                	push   $0x24
c0100711:	68 bd 14 10 c0       	push   $0xc01014bd
c0100716:	68 10 15 10 c0       	push   $0xc0101510
c010071b:	e8 20 0b 00 00       	call   c0101240 <printk>
c0100720:	b8 01 00 00 00       	mov    $0x1,%eax
c0100725:	d6                   	(bad)  
c0100726:	8b 43 30             	mov    0x30(%ebx),%eax
c0100729:	83 c4 10             	add    $0x10,%esp
c010072c:	85 c0                	test   %eax,%eax
c010072e:	0f 88 9c 00 00 00    	js     c01007d0 <irq_handle+0xd0>
c0100734:	3d 80 00 00 00       	cmp    $0x80,%eax
c0100739:	0f 84 b9 00 00 00    	je     c01007f8 <irq_handle+0xf8>
c010073f:	3d e7 03 00 00       	cmp    $0x3e7,%eax
c0100744:	7e 5a                	jle    c01007a0 <irq_handle+0xa0>
c0100746:	8d 98 18 fc ff ff    	lea    -0x3e8(%eax),%ebx
c010074c:	83 fb 0f             	cmp    $0xf,%ebx
c010074f:	7f 1f                	jg     c0100770 <irq_handle+0x70>
c0100751:	8b 1c 9d 40 80 14 c0 	mov    -0x3feb7fc0(,%ebx,4),%ebx
c0100758:	85 db                	test   %ebx,%ebx
c010075a:	74 0d                	je     c0100769 <irq_handle+0x69>
c010075c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0100760:	ff 13                	call   *(%ebx)
c0100762:	8b 5b 04             	mov    0x4(%ebx),%ebx
c0100765:	85 db                	test   %ebx,%ebx
c0100767:	75 f7                	jne    c0100760 <irq_handle+0x60>
c0100769:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c010076c:	c9                   	leave  
c010076d:	c3                   	ret    
c010076e:	66 90                	xchg   %ax,%ax
c0100770:	83 ec 0c             	sub    $0xc,%esp
c0100773:	68 f7 14 10 c0       	push   $0xc01014f7
c0100778:	68 1e 16 10 c0       	push   $0xc010161e
c010077d:	6a 30                	push   $0x30
c010077f:	68 bd 14 10 c0       	push   $0xc01014bd
c0100784:	68 b4 13 10 c0       	push   $0xc01013b4
c0100789:	e8 b2 0a 00 00       	call   c0101240 <printk>
c010078e:	b8 01 00 00 00       	mov    $0x1,%eax
c0100793:	d6                   	(bad)  
c0100794:	83 c4 20             	add    $0x20,%esp
c0100797:	eb b8                	jmp    c0100751 <irq_handle+0x51>
c0100799:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c01007a0:	83 ec 08             	sub    $0x8,%esp
c01007a3:	ff 73 0c             	pushl  0xc(%ebx)
c01007a6:	50                   	push   %eax
c01007a7:	68 1e 16 10 c0       	push   $0xc010161e
c01007ac:	6a 2d                	push   $0x2d
c01007ae:	68 bd 14 10 c0       	push   $0xc01014bd
c01007b3:	68 c4 15 10 c0       	push   $0xc01015c4
c01007b8:	e8 83 0a 00 00       	call   c0101240 <printk>
c01007bd:	b8 01 00 00 00       	mov    $0x1,%eax
c01007c2:	d6                   	(bad)  
c01007c3:	83 c4 20             	add    $0x20,%esp
c01007c6:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c01007c9:	c9                   	leave  
c01007ca:	c3                   	ret    
c01007cb:	90                   	nop
c01007cc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c01007d0:	68 1e 16 10 c0       	push   $0xc010161e
c01007d5:	6a 29                	push   $0x29
c01007d7:	68 bd 14 10 c0       	push   $0xc01014bd
c01007dc:	68 78 15 10 c0       	push   $0xc0101578
c01007e1:	e8 5a 0a 00 00       	call   c0101240 <printk>
c01007e6:	b8 01 00 00 00       	mov    $0x1,%eax
c01007eb:	d6                   	(bad)  
c01007ec:	83 c4 10             	add    $0x10,%esp
c01007ef:	e9 75 ff ff ff       	jmp    c0100769 <irq_handle+0x69>
c01007f4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c01007f8:	89 5d 08             	mov    %ebx,0x8(%ebp)
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
c0100816:	b8 c0 81 14 c0       	mov    $0xc01481c0,%eax
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
c0100840:	3d c0 89 14 c0       	cmp    $0xc01489c0,%eax
c0100845:	75 e1                	jne    c0100828 <init_idt+0x18>
c0100847:	b8 e4 02 10 c0       	mov    $0xc01002e4,%eax
c010084c:	ba 08 00 00 00       	mov    $0x8,%edx
c0100851:	b9 08 00 00 00       	mov    $0x8,%ecx
c0100856:	66 a3 c0 81 14 c0    	mov    %ax,0xc01481c0
c010085c:	c1 e8 10             	shr    $0x10,%eax
c010085f:	66 89 15 c2 81 14 c0 	mov    %dx,0xc01481c2
c0100866:	66 a3 c6 81 14 c0    	mov    %ax,0xc01481c6
c010086c:	b8 ed 02 10 c0       	mov    $0xc01002ed,%eax
c0100871:	ba 08 00 00 00       	mov    $0x8,%edx
c0100876:	66 a3 c8 81 14 c0    	mov    %ax,0xc01481c8
c010087c:	c1 e8 10             	shr    $0x10,%eax
c010087f:	66 89 0d ca 81 14 c0 	mov    %cx,0xc01481ca
c0100886:	66 a3 ce 81 14 c0    	mov    %ax,0xc01481ce
c010088c:	b8 f6 02 10 c0       	mov    $0xc01002f6,%eax
c0100891:	66 89 15 d2 81 14 c0 	mov    %dx,0xc01481d2
c0100898:	66 a3 d0 81 14 c0    	mov    %ax,0xc01481d0
c010089e:	c1 e8 10             	shr    $0x10,%eax
c01008a1:	b9 08 00 00 00       	mov    $0x8,%ecx
c01008a6:	66 a3 d6 81 14 c0    	mov    %ax,0xc01481d6
c01008ac:	b8 ff 02 10 c0       	mov    $0xc01002ff,%eax
c01008b1:	ba 08 00 00 00       	mov    $0x8,%edx
c01008b6:	66 a3 d8 81 14 c0    	mov    %ax,0xc01481d8
c01008bc:	c1 e8 10             	shr    $0x10,%eax
c01008bf:	66 89 0d da 81 14 c0 	mov    %cx,0xc01481da
c01008c6:	66 a3 de 81 14 c0    	mov    %ax,0xc01481de
c01008cc:	b8 08 03 10 c0       	mov    $0xc0100308,%eax
c01008d1:	66 89 15 e2 81 14 c0 	mov    %dx,0xc01481e2
c01008d8:	66 a3 e0 81 14 c0    	mov    %ax,0xc01481e0
c01008de:	c1 e8 10             	shr    $0x10,%eax
c01008e1:	b9 08 00 00 00       	mov    $0x8,%ecx
c01008e6:	66 a3 e6 81 14 c0    	mov    %ax,0xc01481e6
c01008ec:	b8 11 03 10 c0       	mov    $0xc0100311,%eax
c01008f1:	ba 08 00 00 00       	mov    $0x8,%edx
c01008f6:	66 a3 e8 81 14 c0    	mov    %ax,0xc01481e8
c01008fc:	c1 e8 10             	shr    $0x10,%eax
c01008ff:	66 89 0d ea 81 14 c0 	mov    %cx,0xc01481ea
c0100906:	66 a3 ee 81 14 c0    	mov    %ax,0xc01481ee
c010090c:	b8 1a 03 10 c0       	mov    $0xc010031a,%eax
c0100911:	66 89 15 f2 81 14 c0 	mov    %dx,0xc01481f2
c0100918:	66 a3 f0 81 14 c0    	mov    %ax,0xc01481f0
c010091e:	c1 e8 10             	shr    $0x10,%eax
c0100921:	c6 05 c4 81 14 c0 00 	movb   $0x0,0xc01481c4
c0100928:	c6 05 c5 81 14 c0 8f 	movb   $0x8f,0xc01481c5
c010092f:	c6 05 cc 81 14 c0 00 	movb   $0x0,0xc01481cc
c0100936:	b9 08 00 00 00       	mov    $0x8,%ecx
c010093b:	c6 05 cd 81 14 c0 8f 	movb   $0x8f,0xc01481cd
c0100942:	c6 05 d4 81 14 c0 00 	movb   $0x0,0xc01481d4
c0100949:	ba 08 00 00 00       	mov    $0x8,%edx
c010094e:	c6 05 d5 81 14 c0 8f 	movb   $0x8f,0xc01481d5
c0100955:	c6 05 dc 81 14 c0 00 	movb   $0x0,0xc01481dc
c010095c:	c6 05 dd 81 14 c0 8f 	movb   $0x8f,0xc01481dd
c0100963:	c6 05 e4 81 14 c0 00 	movb   $0x0,0xc01481e4
c010096a:	c6 05 e5 81 14 c0 8f 	movb   $0x8f,0xc01481e5
c0100971:	c6 05 ec 81 14 c0 00 	movb   $0x0,0xc01481ec
c0100978:	c6 05 ed 81 14 c0 8f 	movb   $0x8f,0xc01481ed
c010097f:	c6 05 f4 81 14 c0 00 	movb   $0x0,0xc01481f4
c0100986:	c6 05 f5 81 14 c0 8f 	movb   $0x8f,0xc01481f5
c010098d:	66 a3 f6 81 14 c0    	mov    %ax,0xc01481f6
c0100993:	b8 23 03 10 c0       	mov    $0xc0100323,%eax
c0100998:	66 a3 f8 81 14 c0    	mov    %ax,0xc01481f8
c010099e:	c1 e8 10             	shr    $0x10,%eax
c01009a1:	66 89 0d fa 81 14 c0 	mov    %cx,0xc01481fa
c01009a8:	66 a3 fe 81 14 c0    	mov    %ax,0xc01481fe
c01009ae:	b8 2c 03 10 c0       	mov    $0xc010032c,%eax
c01009b3:	b9 08 00 00 00       	mov    $0x8,%ecx
c01009b8:	66 a3 00 82 14 c0    	mov    %ax,0xc0148200
c01009be:	c1 e8 10             	shr    $0x10,%eax
c01009c1:	66 89 15 02 82 14 c0 	mov    %dx,0xc0148202
c01009c8:	66 a3 06 82 14 c0    	mov    %ax,0xc0148206
c01009ce:	b8 33 03 10 c0       	mov    $0xc0100333,%eax
c01009d3:	66 89 0d 0a 82 14 c0 	mov    %cx,0xc014820a
c01009da:	66 a3 08 82 14 c0    	mov    %ax,0xc0148208
c01009e0:	c1 e8 10             	shr    $0x10,%eax
c01009e3:	ba 08 00 00 00       	mov    $0x8,%edx
c01009e8:	66 a3 0e 82 14 c0    	mov    %ax,0xc014820e
c01009ee:	b8 3c 03 10 c0       	mov    $0xc010033c,%eax
c01009f3:	b9 08 00 00 00       	mov    $0x8,%ecx
c01009f8:	66 a3 10 82 14 c0    	mov    %ax,0xc0148210
c01009fe:	c1 e8 10             	shr    $0x10,%eax
c0100a01:	66 89 15 12 82 14 c0 	mov    %dx,0xc0148212
c0100a08:	66 a3 16 82 14 c0    	mov    %ax,0xc0148216
c0100a0e:	b8 43 03 10 c0       	mov    $0xc0100343,%eax
c0100a13:	66 89 0d 1a 82 14 c0 	mov    %cx,0xc014821a
c0100a1a:	66 a3 18 82 14 c0    	mov    %ax,0xc0148218
c0100a20:	c1 e8 10             	shr    $0x10,%eax
c0100a23:	ba 08 00 00 00       	mov    $0x8,%edx
c0100a28:	66 a3 1e 82 14 c0    	mov    %ax,0xc014821e
c0100a2e:	b8 4a 03 10 c0       	mov    $0xc010034a,%eax
c0100a33:	b9 08 00 00 00       	mov    $0x8,%ecx
c0100a38:	66 a3 20 82 14 c0    	mov    %ax,0xc0148220
c0100a3e:	c1 e8 10             	shr    $0x10,%eax
c0100a41:	66 89 15 22 82 14 c0 	mov    %dx,0xc0148222
c0100a48:	66 a3 26 82 14 c0    	mov    %ax,0xc0148226
c0100a4e:	b8 51 03 10 c0       	mov    $0xc0100351,%eax
c0100a53:	66 89 0d 2a 82 14 c0 	mov    %cx,0xc014822a
c0100a5a:	66 a3 28 82 14 c0    	mov    %ax,0xc0148228
c0100a60:	c1 e8 10             	shr    $0x10,%eax
c0100a63:	c6 05 fc 81 14 c0 00 	movb   $0x0,0xc01481fc
c0100a6a:	c6 05 fd 81 14 c0 8f 	movb   $0x8f,0xc01481fd
c0100a71:	c6 05 04 82 14 c0 00 	movb   $0x0,0xc0148204
c0100a78:	ba 08 00 00 00       	mov    $0x8,%edx
c0100a7d:	c6 05 05 82 14 c0 8f 	movb   $0x8f,0xc0148205
c0100a84:	c6 05 0c 82 14 c0 00 	movb   $0x0,0xc014820c
c0100a8b:	b9 08 00 00 00       	mov    $0x8,%ecx
c0100a90:	c6 05 0d 82 14 c0 8f 	movb   $0x8f,0xc014820d
c0100a97:	c6 05 14 82 14 c0 00 	movb   $0x0,0xc0148214
c0100a9e:	c6 05 15 82 14 c0 8f 	movb   $0x8f,0xc0148215
c0100aa5:	c6 05 1c 82 14 c0 00 	movb   $0x0,0xc014821c
c0100aac:	c6 05 1d 82 14 c0 8f 	movb   $0x8f,0xc014821d
c0100ab3:	c6 05 24 82 14 c0 00 	movb   $0x0,0xc0148224
c0100aba:	c6 05 25 82 14 c0 8f 	movb   $0x8f,0xc0148225
c0100ac1:	c6 05 2c 82 14 c0 00 	movb   $0x0,0xc014822c
c0100ac8:	66 a3 2e 82 14 c0    	mov    %ax,0xc014822e
c0100ace:	b8 58 03 10 c0       	mov    $0xc0100358,%eax
c0100ad3:	66 89 15 32 82 14 c0 	mov    %dx,0xc0148232
c0100ada:	66 a3 30 82 14 c0    	mov    %ax,0xc0148230
c0100ae0:	c1 e8 10             	shr    $0x10,%eax
c0100ae3:	66 89 0d c2 85 14 c0 	mov    %cx,0xc01485c2
c0100aea:	66 a3 36 82 14 c0    	mov    %ax,0xc0148236
c0100af0:	b8 5f 03 10 c0       	mov    $0xc010035f,%eax
c0100af5:	ba 08 00 00 00       	mov    $0x8,%edx
c0100afa:	66 a3 c0 85 14 c0    	mov    %ax,0xc01485c0
c0100b00:	c1 e8 10             	shr    $0x10,%eax
c0100b03:	b9 08 00 00 00       	mov    $0x8,%ecx
c0100b08:	66 a3 c6 85 14 c0    	mov    %ax,0xc01485c6
c0100b0e:	b8 6b 03 10 c0       	mov    $0xc010036b,%eax
c0100b13:	c6 05 2d 82 14 c0 8f 	movb   $0x8f,0xc014822d
c0100b1a:	66 a3 c0 82 14 c0    	mov    %ax,0xc01482c0
c0100b20:	c1 e8 10             	shr    $0x10,%eax
c0100b23:	c6 05 34 82 14 c0 00 	movb   $0x0,0xc0148234
c0100b2a:	66 a3 c6 82 14 c0    	mov    %ax,0xc01482c6
c0100b30:	b8 83 03 10 c0       	mov    $0xc0100383,%eax
c0100b35:	c6 05 35 82 14 c0 8f 	movb   $0x8f,0xc0148235
c0100b3c:	66 a3 30 83 14 c0    	mov    %ax,0xc0148330
c0100b42:	c1 e8 10             	shr    $0x10,%eax
c0100b45:	c6 05 c4 85 14 c0 00 	movb   $0x0,0xc01485c4
c0100b4c:	66 a3 36 83 14 c0    	mov    %ax,0xc0148336
c0100b52:	b8 ff 07 00 00       	mov    $0x7ff,%eax
c0100b57:	c6 05 c5 85 14 c0 ef 	movb   $0xef,0xc01485c5
c0100b5e:	66 a3 80 81 14 c0    	mov    %ax,0xc0148180
c0100b64:	b8 c0 81 14 c0       	mov    $0xc01481c0,%eax
c0100b69:	66 89 15 c2 82 14 c0 	mov    %dx,0xc01482c2
c0100b70:	66 a3 82 81 14 c0    	mov    %ax,0xc0148182
c0100b76:	c1 e8 10             	shr    $0x10,%eax
c0100b79:	c6 05 c4 82 14 c0 00 	movb   $0x0,0xc01482c4
c0100b80:	66 a3 84 81 14 c0    	mov    %ax,0xc0148184
c0100b86:	c6 05 c5 82 14 c0 8e 	movb   $0x8e,0xc01482c5
c0100b8d:	b8 80 81 14 c0       	mov    $0xc0148180,%eax
c0100b92:	66 89 0d 32 83 14 c0 	mov    %cx,0xc0148332
c0100b99:	c6 05 34 83 14 c0 00 	movb   $0x0,0xc0148334
c0100ba0:	c6 05 35 83 14 c0 8e 	movb   $0x8e,0xc0148335
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
c0100c23:	83 ec 08             	sub    $0x8,%esp
c0100c26:	8b 55 08             	mov    0x8(%ebp),%edx
c0100c29:	8b 42 08             	mov    0x8(%edx),%eax
c0100c2c:	85 c0                	test   %eax,%eax
c0100c2e:	74 38                	je     c0100c68 <do_syscall+0x48>
c0100c30:	83 f8 2d             	cmp    $0x2d,%eax
c0100c33:	75 0b                	jne    c0100c40 <do_syscall+0x20>
c0100c35:	c7 42 08 00 00 00 00 	movl   $0x0,0x8(%edx)
c0100c3c:	c9                   	leave  
c0100c3d:	c3                   	ret    
c0100c3e:	66 90                	xchg   %ax,%ax
c0100c40:	83 ec 0c             	sub    $0xc,%esp
c0100c43:	50                   	push   %eax
c0100c44:	68 ac 16 10 c0       	push   $0xc01016ac
c0100c49:	6a 20                	push   $0x20
c0100c4b:	68 38 16 10 c0       	push   $0xc0101638
c0100c50:	68 58 16 10 c0       	push   $0xc0101658
c0100c55:	e8 e6 05 00 00       	call   c0101240 <printk>
c0100c5a:	b8 01 00 00 00       	mov    $0x1,%eax
c0100c5f:	d6                   	(bad)  
c0100c60:	83 c4 20             	add    $0x20,%esp
c0100c63:	c9                   	leave  
c0100c64:	c3                   	ret    
c0100c65:	8d 76 00             	lea    0x0(%esi),%esi
c0100c68:	fa                   	cli    
c0100c69:	83 ec 08             	sub    $0x8,%esp
c0100c6c:	ff 72 1c             	pushl  0x1c(%edx)
c0100c6f:	ff 72 04             	pushl  0x4(%edx)
c0100c72:	e8 d9 f9 ff ff       	call   c0100650 <add_irq_handle>
c0100c77:	fb                   	sti    
c0100c78:	83 c4 10             	add    $0x10,%esp
c0100c7b:	c9                   	leave  
c0100c7c:	c3                   	ret    
c0100c7d:	66 90                	xchg   %ax,%ax
c0100c7f:	90                   	nop

c0100c80 <loader>:
c0100c80:	55                   	push   %ebp
c0100c81:	89 e5                	mov    %esp,%ebp
c0100c83:	57                   	push   %edi
c0100c84:	56                   	push   %esi
c0100c85:	53                   	push   %ebx
c0100c86:	8d bd e8 ef ff ff    	lea    -0x1018(%ebp),%edi
c0100c8c:	81 ec 20 10 00 00    	sub    $0x1020,%esp
c0100c92:	68 00 10 00 00       	push   $0x1000
c0100c97:	6a 00                	push   $0x0
c0100c99:	57                   	push   %edi
c0100c9a:	e8 11 05 00 00       	call   c01011b0 <ramdisk_read>
c0100c9f:	83 c4 10             	add    $0x10,%esp
c0100ca2:	81 bd e8 ef ff ff 7f 	cmpl   $0x464c457f,-0x1018(%ebp)
c0100ca9:	45 4c 46 
c0100cac:	74 06                	je     c0100cb4 <loader+0x34>
c0100cae:	b8 01 00 00 00       	mov    $0x1,%eax
c0100cb3:	d6                   	(bad)  
c0100cb4:	31 f6                	xor    %esi,%esi
c0100cb6:	66 83 bd 14 f0 ff ff 	cmpw   $0x0,-0xfec(%ebp)
c0100cbd:	00 
c0100cbe:	75 16                	jne    c0100cd6 <loader+0x56>
c0100cc0:	eb 6e                	jmp    c0100d30 <loader+0xb0>
c0100cc2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0100cc8:	0f b7 85 14 f0 ff ff 	movzwl -0xfec(%ebp),%eax
c0100ccf:	83 c6 01             	add    $0x1,%esi
c0100cd2:	39 f0                	cmp    %esi,%eax
c0100cd4:	7e 5a                	jle    c0100d30 <loader+0xb0>
c0100cd6:	0f b7 9d 12 f0 ff ff 	movzwl -0xfee(%ebp),%ebx
c0100cdd:	0f af de             	imul   %esi,%ebx
c0100ce0:	03 9d 04 f0 ff ff    	add    -0xffc(%ebp),%ebx
c0100ce6:	01 fb                	add    %edi,%ebx
c0100ce8:	83 3b 01             	cmpl   $0x1,(%ebx)
c0100ceb:	75 db                	jne    c0100cc8 <loader+0x48>
c0100ced:	83 ec 04             	sub    $0x4,%esp
c0100cf0:	ff 73 10             	pushl  0x10(%ebx)
c0100cf3:	ff 73 04             	pushl  0x4(%ebx)
c0100cf6:	ff 73 08             	pushl  0x8(%ebx)
c0100cf9:	83 c6 01             	add    $0x1,%esi
c0100cfc:	e8 af 04 00 00       	call   c01011b0 <ramdisk_read>
c0100d01:	8b 43 10             	mov    0x10(%ebx),%eax
c0100d04:	8b 53 14             	mov    0x14(%ebx),%edx
c0100d07:	83 c4 0c             	add    $0xc,%esp
c0100d0a:	29 c2                	sub    %eax,%edx
c0100d0c:	52                   	push   %edx
c0100d0d:	6a 00                	push   $0x0
c0100d0f:	03 43 08             	add    0x8(%ebx),%eax
c0100d12:	50                   	push   %eax
c0100d13:	e8 e0 05 00 00       	call   c01012f8 <memset>
c0100d18:	0f b7 85 14 f0 ff ff 	movzwl -0xfec(%ebp),%eax
c0100d1f:	83 c4 10             	add    $0x10,%esp
c0100d22:	39 f0                	cmp    %esi,%eax
c0100d24:	7f b0                	jg     c0100cd6 <loader+0x56>
c0100d26:	8d 76 00             	lea    0x0(%esi),%esi
c0100d29:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
c0100d30:	8b 85 00 f0 ff ff    	mov    -0x1000(%ebp),%eax
c0100d36:	89 85 e4 ef ff ff    	mov    %eax,-0x101c(%ebp)
c0100d3c:	8b 85 e4 ef ff ff    	mov    -0x101c(%ebp),%eax
c0100d42:	8d 65 f4             	lea    -0xc(%ebp),%esp
c0100d45:	5b                   	pop    %ebx
c0100d46:	5e                   	pop    %esi
c0100d47:	5f                   	pop    %edi
c0100d48:	5d                   	pop    %ebp
c0100d49:	c3                   	ret    
c0100d4a:	66 90                	xchg   %ax,%ax
c0100d4c:	66 90                	xchg   %ax,%ax
c0100d4e:	66 90                	xchg   %ax,%ax

c0100d50 <init_cond>:
c0100d50:	55                   	push   %ebp
c0100d51:	89 e5                	mov    %esp,%ebp
c0100d53:	83 ec 08             	sub    $0x8,%esp
c0100d56:	68 4c 17 10 c0       	push   $0xc010174c
c0100d5b:	6a 4a                	push   $0x4a
c0100d5d:	68 b7 16 10 c0       	push   $0xc01016b7
c0100d62:	68 cc 16 10 c0       	push   $0xc01016cc
c0100d67:	e8 d4 04 00 00       	call   c0101240 <printk>
c0100d6c:	e8 0f ff ff ff       	call   c0100c80 <loader>
c0100d71:	bd 00 00 00 00       	mov    $0x0,%ebp
c0100d76:	83 ec 10             	sub    $0x10,%esp
c0100d79:	ff d0                	call   *%eax
c0100d7b:	68 4c 17 10 c0       	push   $0xc010174c
c0100d80:	6a 6b                	push   $0x6b
c0100d82:	68 b7 16 10 c0       	push   $0xc01016b7
c0100d87:	68 00 17 10 c0       	push   $0xc0101700
c0100d8c:	e8 af 04 00 00       	call   c0101240 <printk>
c0100d91:	b8 01 00 00 00       	mov    $0x1,%eax
c0100d96:	d6                   	(bad)  
c0100d97:	83 c4 20             	add    $0x20,%esp
c0100d9a:	c9                   	leave  
c0100d9b:	c3                   	ret    
c0100d9c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

c0100da0 <init>:
c0100da0:	55                   	push   %ebp
c0100da1:	b8 50 0d 10 c0       	mov    $0xc0100d50,%eax
c0100da6:	89 e5                	mov    %esp,%ebp
c0100da8:	83 ec 08             	sub    $0x8,%esp
c0100dab:	ff e0                	jmp    *%eax
c0100dad:	68 56 17 10 c0       	push   $0xc0101756
c0100db2:	6a 24                	push   $0x24
c0100db4:	68 b7 16 10 c0       	push   $0xc01016b7
c0100db9:	68 00 17 10 c0       	push   $0xc0101700
c0100dbe:	e8 7d 04 00 00       	call   c0101240 <printk>
c0100dc3:	b8 01 00 00 00       	mov    $0x1,%eax
c0100dc8:	d6                   	(bad)  
c0100dc9:	83 c4 10             	add    $0x10,%esp
c0100dcc:	c9                   	leave  
c0100dcd:	c3                   	ret    
c0100dce:	66 90                	xchg   %ax,%ax

c0100dd0 <buf_fetch>:
c0100dd0:	55                   	push   %ebp
c0100dd1:	89 c2                	mov    %eax,%edx
c0100dd3:	89 e5                	mov    %esp,%ebp
c0100dd5:	57                   	push   %edi
c0100dd6:	56                   	push   %esi
c0100dd7:	53                   	push   %ebx
c0100dd8:	89 c3                	mov    %eax,%ebx
c0100dda:	83 e3 7f             	and    $0x7f,%ebx
c0100ddd:	89 d8                	mov    %ebx,%eax
c0100ddf:	83 ec 1c             	sub    $0x1c,%esp
c0100de2:	c1 e0 09             	shl    $0x9,%eax
c0100de5:	8d 0c d8             	lea    (%eax,%ebx,8),%ecx
c0100de8:	8d 81 c0 89 14 c0    	lea    -0x3feb7640(%ecx),%eax
c0100dee:	80 78 04 01          	cmpb   $0x1,0x4(%eax)
c0100df2:	74 5c                	je     c0100e50 <buf_fetch+0x80>
c0100df4:	89 d7                	mov    %edx,%edi
c0100df6:	89 da                	mov    %ebx,%edx
c0100df8:	c1 e2 09             	shl    $0x9,%edx
c0100dfb:	8d 0c da             	lea    (%edx,%ebx,8),%ecx
c0100dfe:	8d 91 c0 89 14 c0    	lea    -0x3feb7640(%ecx),%edx
c0100e04:	66 81 7a 04 01 01    	cmpw   $0x101,0x4(%edx)
c0100e0a:	74 54                	je     c0100e60 <buf_fetch+0x90>
c0100e0c:	8d 72 06             	lea    0x6(%edx),%esi
c0100e0f:	83 ec 08             	sub    $0x8,%esp
c0100e12:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0100e15:	57                   	push   %edi
c0100e16:	56                   	push   %esi
c0100e17:	e8 e4 01 00 00       	call   c0101000 <disk_do_read>
c0100e1c:	89 da                	mov    %ebx,%edx
c0100e1e:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0100e21:	83 c4 10             	add    $0x10,%esp
c0100e24:	c1 e2 09             	shl    $0x9,%edx
c0100e27:	8d 0c da             	lea    (%edx,%ebx,8),%ecx
c0100e2a:	c6 81 c4 89 14 c0 01 	movb   $0x1,-0x3feb763c(%ecx)
c0100e31:	89 b9 c0 89 14 c0    	mov    %edi,-0x3feb7640(%ecx)
c0100e37:	c6 81 c5 89 14 c0 00 	movb   $0x0,-0x3feb763b(%ecx)
c0100e3e:	8d 65 f4             	lea    -0xc(%ebp),%esp
c0100e41:	5b                   	pop    %ebx
c0100e42:	5e                   	pop    %esi
c0100e43:	5f                   	pop    %edi
c0100e44:	5d                   	pop    %ebp
c0100e45:	c3                   	ret    
c0100e46:	8d 76 00             	lea    0x0(%esi),%esi
c0100e49:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
c0100e50:	39 91 c0 89 14 c0    	cmp    %edx,-0x3feb7640(%ecx)
c0100e56:	75 9c                	jne    c0100df4 <buf_fetch+0x24>
c0100e58:	eb e4                	jmp    c0100e3e <buf_fetch+0x6e>
c0100e5a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0100e60:	8d 72 06             	lea    0x6(%edx),%esi
c0100e63:	83 ec 08             	sub    $0x8,%esp
c0100e66:	ff b1 c0 89 14 c0    	pushl  -0x3feb7640(%ecx)
c0100e6c:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0100e6f:	56                   	push   %esi
c0100e70:	e8 cb 01 00 00       	call   c0101040 <disk_do_write>
c0100e75:	83 c4 10             	add    $0x10,%esp
c0100e78:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0100e7b:	eb 92                	jmp    c0100e0f <buf_fetch+0x3f>
c0100e7d:	8d 76 00             	lea    0x0(%esi),%esi

c0100e80 <buf_init>:
c0100e80:	55                   	push   %ebp
c0100e81:	b8 c4 89 14 c0       	mov    $0xc01489c4,%eax
c0100e86:	89 e5                	mov    %esp,%ebp
c0100e88:	90                   	nop
c0100e89:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0100e90:	c6 00 00             	movb   $0x0,(%eax)
c0100e93:	05 08 02 00 00       	add    $0x208,%eax
c0100e98:	3d c4 8d 15 c0       	cmp    $0xc0158dc4,%eax
c0100e9d:	75 f1                	jne    c0100e90 <buf_init+0x10>
c0100e9f:	5d                   	pop    %ebp
c0100ea0:	c3                   	ret    
c0100ea1:	eb 0d                	jmp    c0100eb0 <buf_writeback>
c0100ea3:	90                   	nop
c0100ea4:	90                   	nop
c0100ea5:	90                   	nop
c0100ea6:	90                   	nop
c0100ea7:	90                   	nop
c0100ea8:	90                   	nop
c0100ea9:	90                   	nop
c0100eaa:	90                   	nop
c0100eab:	90                   	nop
c0100eac:	90                   	nop
c0100ead:	90                   	nop
c0100eae:	90                   	nop
c0100eaf:	90                   	nop

c0100eb0 <buf_writeback>:
c0100eb0:	55                   	push   %ebp
c0100eb1:	89 e5                	mov    %esp,%ebp
c0100eb3:	53                   	push   %ebx
c0100eb4:	bb c6 89 14 c0       	mov    $0xc01489c6,%ebx
c0100eb9:	83 ec 04             	sub    $0x4,%esp
c0100ebc:	eb 10                	jmp    c0100ece <buf_writeback+0x1e>
c0100ebe:	66 90                	xchg   %ax,%ax
c0100ec0:	81 c3 08 02 00 00    	add    $0x208,%ebx
c0100ec6:	81 fb c6 8d 15 c0    	cmp    $0xc0158dc6,%ebx
c0100ecc:	74 32                	je     c0100f00 <buf_writeback+0x50>
c0100ece:	80 7b ff 01          	cmpb   $0x1,-0x1(%ebx)
c0100ed2:	75 ec                	jne    c0100ec0 <buf_writeback+0x10>
c0100ed4:	83 ec 08             	sub    $0x8,%esp
c0100ed7:	ff 73 fa             	pushl  -0x6(%ebx)
c0100eda:	53                   	push   %ebx
c0100edb:	81 c3 08 02 00 00    	add    $0x208,%ebx
c0100ee1:	e8 5a 01 00 00       	call   c0101040 <disk_do_write>
c0100ee6:	c6 83 f7 fd ff ff 00 	movb   $0x0,-0x209(%ebx)
c0100eed:	83 c4 10             	add    $0x10,%esp
c0100ef0:	81 fb c6 8d 15 c0    	cmp    $0xc0158dc6,%ebx
c0100ef6:	75 d6                	jne    c0100ece <buf_writeback+0x1e>
c0100ef8:	90                   	nop
c0100ef9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0100f00:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0100f03:	c9                   	leave  
c0100f04:	c3                   	ret    
c0100f05:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0100f09:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0100f10 <read_byte>:
c0100f10:	55                   	push   %ebp
c0100f11:	89 e5                	mov    %esp,%ebp
c0100f13:	53                   	push   %ebx
c0100f14:	83 ec 04             	sub    $0x4,%esp
c0100f17:	8b 5d 08             	mov    0x8(%ebp),%ebx
c0100f1a:	89 d8                	mov    %ebx,%eax
c0100f1c:	81 e3 ff 01 00 00    	and    $0x1ff,%ebx
c0100f22:	c1 e8 09             	shr    $0x9,%eax
c0100f25:	e8 a6 fe ff ff       	call   c0100dd0 <buf_fetch>
c0100f2a:	0f b6 44 18 06       	movzbl 0x6(%eax,%ebx,1),%eax
c0100f2f:	83 c4 04             	add    $0x4,%esp
c0100f32:	5b                   	pop    %ebx
c0100f33:	5d                   	pop    %ebp
c0100f34:	c3                   	ret    
c0100f35:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0100f39:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0100f40 <write_byte>:
c0100f40:	55                   	push   %ebp
c0100f41:	89 e5                	mov    %esp,%ebp
c0100f43:	56                   	push   %esi
c0100f44:	53                   	push   %ebx
c0100f45:	8b 5d 08             	mov    0x8(%ebp),%ebx
c0100f48:	8b 75 0c             	mov    0xc(%ebp),%esi
c0100f4b:	89 d8                	mov    %ebx,%eax
c0100f4d:	81 e3 ff 01 00 00    	and    $0x1ff,%ebx
c0100f53:	c1 e8 09             	shr    $0x9,%eax
c0100f56:	e8 75 fe ff ff       	call   c0100dd0 <buf_fetch>
c0100f5b:	89 f2                	mov    %esi,%edx
c0100f5d:	88 54 18 06          	mov    %dl,0x6(%eax,%ebx,1)
c0100f61:	c6 40 05 01          	movb   $0x1,0x5(%eax)
c0100f65:	5b                   	pop    %ebx
c0100f66:	5e                   	pop    %esi
c0100f67:	5d                   	pop    %ebp
c0100f68:	c3                   	ret    
c0100f69:	66 90                	xchg   %ax,%ax
c0100f6b:	66 90                	xchg   %ax,%ax
c0100f6d:	66 90                	xchg   %ax,%ax
c0100f6f:	90                   	nop

c0100f70 <dma_prepare>:
c0100f70:	55                   	push   %ebp
c0100f71:	89 e5                	mov    %esp,%ebp
c0100f73:	83 ec 08             	sub    $0x8,%esp
c0100f76:	68 77 17 10 c0       	push   $0xc0101777
c0100f7b:	6a 1d                	push   $0x1d
c0100f7d:	68 5b 17 10 c0       	push   $0xc010175b
c0100f82:	68 34 14 10 c0       	push   $0xc0101434
c0100f87:	e8 b4 02 00 00       	call   c0101240 <printk>
c0100f8c:	b8 01 00 00 00       	mov    $0x1,%eax
c0100f91:	d6                   	(bad)  
c0100f92:	83 c4 10             	add    $0x10,%esp
c0100f95:	c9                   	leave  
c0100f96:	c3                   	ret    
c0100f97:	89 f6                	mov    %esi,%esi
c0100f99:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0100fa0 <dma_issue_read>:
c0100fa0:	55                   	push   %ebp
c0100fa1:	ba 40 c0 ff ff       	mov    $0xffffc040,%edx
c0100fa6:	89 e5                	mov    %esp,%ebp
c0100fa8:	ec                   	in     (%dx),%al
c0100fa9:	83 c8 09             	or     $0x9,%eax
c0100fac:	ee                   	out    %al,(%dx)
c0100fad:	5d                   	pop    %ebp
c0100fae:	c3                   	ret    
c0100faf:	90                   	nop

c0100fb0 <ide_prepare>:
c0100fb0:	55                   	push   %ebp
c0100fb1:	89 c1                	mov    %eax,%ecx
c0100fb3:	ba f7 01 00 00       	mov    $0x1f7,%edx
c0100fb8:	89 e5                	mov    %esp,%ebp
c0100fba:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0100fc0:	ec                   	in     (%dx),%al
c0100fc1:	83 e0 c0             	and    $0xffffffc0,%eax
c0100fc4:	3c 40                	cmp    $0x40,%al
c0100fc6:	75 f8                	jne    c0100fc0 <ide_prepare+0x10>
c0100fc8:	ba f1 01 00 00       	mov    $0x1f1,%edx
c0100fcd:	31 c0                	xor    %eax,%eax
c0100fcf:	ee                   	out    %al,(%dx)
c0100fd0:	b8 01 00 00 00       	mov    $0x1,%eax
c0100fd5:	b2 f2                	mov    $0xf2,%dl
c0100fd7:	ee                   	out    %al,(%dx)
c0100fd8:	b2 f3                	mov    $0xf3,%dl
c0100fda:	89 c8                	mov    %ecx,%eax
c0100fdc:	ee                   	out    %al,(%dx)
c0100fdd:	89 c8                	mov    %ecx,%eax
c0100fdf:	b2 f4                	mov    $0xf4,%dl
c0100fe1:	c1 e8 08             	shr    $0x8,%eax
c0100fe4:	ee                   	out    %al,(%dx)
c0100fe5:	89 c8                	mov    %ecx,%eax
c0100fe7:	b2 f5                	mov    $0xf5,%dl
c0100fe9:	c1 e8 10             	shr    $0x10,%eax
c0100fec:	ee                   	out    %al,(%dx)
c0100fed:	89 c8                	mov    %ecx,%eax
c0100fef:	b2 f6                	mov    $0xf6,%dl
c0100ff1:	c1 e8 18             	shr    $0x18,%eax
c0100ff4:	83 c8 e0             	or     $0xffffffe0,%eax
c0100ff7:	ee                   	out    %al,(%dx)
c0100ff8:	5d                   	pop    %ebp
c0100ff9:	c3                   	ret    
c0100ffa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

c0101000 <disk_do_read>:
c0101000:	55                   	push   %ebp
c0101001:	89 e5                	mov    %esp,%ebp
c0101003:	53                   	push   %ebx
c0101004:	8b 45 0c             	mov    0xc(%ebp),%eax
c0101007:	e8 a4 ff ff ff       	call   c0100fb0 <ide_prepare>
c010100c:	ba f7 01 00 00       	mov    $0x1f7,%edx
c0101011:	b8 20 00 00 00       	mov    $0x20,%eax
c0101016:	ee                   	out    %al,(%dx)
c0101017:	8b 4d 08             	mov    0x8(%ebp),%ecx
c010101a:	b2 f0                	mov    $0xf0,%dl
c010101c:	8d 99 00 02 00 00    	lea    0x200(%ecx),%ebx
c0101022:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0101028:	ed                   	in     (%dx),%eax
c0101029:	89 01                	mov    %eax,(%ecx)
c010102b:	83 c1 04             	add    $0x4,%ecx
c010102e:	39 d9                	cmp    %ebx,%ecx
c0101030:	75 f6                	jne    c0101028 <disk_do_read+0x28>
c0101032:	5b                   	pop    %ebx
c0101033:	5d                   	pop    %ebp
c0101034:	c3                   	ret    
c0101035:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0101039:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0101040 <disk_do_write>:
c0101040:	55                   	push   %ebp
c0101041:	89 e5                	mov    %esp,%ebp
c0101043:	53                   	push   %ebx
c0101044:	8b 45 0c             	mov    0xc(%ebp),%eax
c0101047:	e8 64 ff ff ff       	call   c0100fb0 <ide_prepare>
c010104c:	ba f7 01 00 00       	mov    $0x1f7,%edx
c0101051:	b8 30 00 00 00       	mov    $0x30,%eax
c0101056:	ee                   	out    %al,(%dx)
c0101057:	8b 4d 08             	mov    0x8(%ebp),%ecx
c010105a:	b2 f0                	mov    $0xf0,%dl
c010105c:	8d 99 00 02 00 00    	lea    0x200(%ecx),%ebx
c0101062:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0101068:	8b 01                	mov    (%ecx),%eax
c010106a:	ef                   	out    %eax,(%dx)
c010106b:	83 c1 04             	add    $0x4,%ecx
c010106e:	39 d9                	cmp    %ebx,%ecx
c0101070:	75 f6                	jne    c0101068 <disk_do_write+0x28>
c0101072:	5b                   	pop    %ebx
c0101073:	5d                   	pop    %ebp
c0101074:	c3                   	ret    
c0101075:	66 90                	xchg   %ax,%ax
c0101077:	66 90                	xchg   %ax,%ax
c0101079:	66 90                	xchg   %ax,%ax
c010107b:	66 90                	xchg   %ax,%ax
c010107d:	66 90                	xchg   %ax,%ax
c010107f:	90                   	nop

c0101080 <ide_intr>:
c0101080:	55                   	push   %ebp
c0101081:	c7 05 c4 8d 15 c0 01 	movl   $0x1,0xc0158dc4
c0101088:	00 00 00 
c010108b:	89 e5                	mov    %esp,%ebp
c010108d:	5d                   	pop    %ebp
c010108e:	c3                   	ret    
c010108f:	90                   	nop

c0101090 <ide_writeback>:
c0101090:	a1 c0 8d 15 c0       	mov    0xc0158dc0,%eax
c0101095:	83 c0 01             	add    $0x1,%eax
c0101098:	83 f8 64             	cmp    $0x64,%eax
c010109b:	a3 c0 8d 15 c0       	mov    %eax,0xc0158dc0
c01010a0:	74 06                	je     c01010a8 <ide_writeback+0x18>
c01010a2:	c3                   	ret    
c01010a3:	90                   	nop
c01010a4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c01010a8:	55                   	push   %ebp
c01010a9:	89 e5                	mov    %esp,%ebp
c01010ab:	83 ec 08             	sub    $0x8,%esp
c01010ae:	e8 fd fd ff ff       	call   c0100eb0 <buf_writeback>
c01010b3:	c7 05 c0 8d 15 c0 00 	movl   $0x0,0xc0158dc0
c01010ba:	00 00 00 
c01010bd:	c9                   	leave  
c01010be:	c3                   	ret    
c01010bf:	90                   	nop

c01010c0 <ide_read>:
c01010c0:	55                   	push   %ebp
c01010c1:	89 e5                	mov    %esp,%ebp
c01010c3:	57                   	push   %edi
c01010c4:	56                   	push   %esi
c01010c5:	53                   	push   %ebx
c01010c6:	83 ec 0c             	sub    $0xc,%esp
c01010c9:	8b 5d 0c             	mov    0xc(%ebp),%ebx
c01010cc:	8b 45 10             	mov    0x10(%ebp),%eax
c01010cf:	8b 7d 08             	mov    0x8(%ebp),%edi
c01010d2:	8d 34 18             	lea    (%eax,%ebx,1),%esi
c01010d5:	29 df                	sub    %ebx,%edi
c01010d7:	85 c0                	test   %eax,%eax
c01010d9:	74 1b                	je     c01010f6 <ide_read+0x36>
c01010db:	90                   	nop
c01010dc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c01010e0:	83 ec 0c             	sub    $0xc,%esp
c01010e3:	53                   	push   %ebx
c01010e4:	e8 27 fe ff ff       	call   c0100f10 <read_byte>
c01010e9:	88 04 1f             	mov    %al,(%edi,%ebx,1)
c01010ec:	83 c3 01             	add    $0x1,%ebx
c01010ef:	83 c4 10             	add    $0x10,%esp
c01010f2:	39 f3                	cmp    %esi,%ebx
c01010f4:	75 ea                	jne    c01010e0 <ide_read+0x20>
c01010f6:	8d 65 f4             	lea    -0xc(%ebp),%esp
c01010f9:	5b                   	pop    %ebx
c01010fa:	5e                   	pop    %esi
c01010fb:	5f                   	pop    %edi
c01010fc:	5d                   	pop    %ebp
c01010fd:	c3                   	ret    
c01010fe:	66 90                	xchg   %ax,%ax

c0101100 <ide_write>:
c0101100:	55                   	push   %ebp
c0101101:	89 e5                	mov    %esp,%ebp
c0101103:	57                   	push   %edi
c0101104:	56                   	push   %esi
c0101105:	53                   	push   %ebx
c0101106:	83 ec 0c             	sub    $0xc,%esp
c0101109:	8b 5d 0c             	mov    0xc(%ebp),%ebx
c010110c:	8b 45 10             	mov    0x10(%ebp),%eax
c010110f:	8b 7d 08             	mov    0x8(%ebp),%edi
c0101112:	8d 34 18             	lea    (%eax,%ebx,1),%esi
c0101115:	29 df                	sub    %ebx,%edi
c0101117:	85 c0                	test   %eax,%eax
c0101119:	74 1d                	je     c0101138 <ide_write+0x38>
c010111b:	90                   	nop
c010111c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0101120:	0f b6 04 1f          	movzbl (%edi,%ebx,1),%eax
c0101124:	83 ec 08             	sub    $0x8,%esp
c0101127:	50                   	push   %eax
c0101128:	53                   	push   %ebx
c0101129:	83 c3 01             	add    $0x1,%ebx
c010112c:	e8 0f fe ff ff       	call   c0100f40 <write_byte>
c0101131:	83 c4 10             	add    $0x10,%esp
c0101134:	39 f3                	cmp    %esi,%ebx
c0101136:	75 e8                	jne    c0101120 <ide_write+0x20>
c0101138:	8d 65 f4             	lea    -0xc(%ebp),%esp
c010113b:	5b                   	pop    %ebx
c010113c:	5e                   	pop    %esi
c010113d:	5f                   	pop    %edi
c010113e:	5d                   	pop    %ebp
c010113f:	c3                   	ret    

c0101140 <clear_ide_intr>:
c0101140:	55                   	push   %ebp
c0101141:	c7 05 c4 8d 15 c0 00 	movl   $0x0,0xc0158dc4
c0101148:	00 00 00 
c010114b:	89 e5                	mov    %esp,%ebp
c010114d:	5d                   	pop    %ebp
c010114e:	c3                   	ret    
c010114f:	90                   	nop

c0101150 <wait_ide_intr>:
c0101150:	a1 c4 8d 15 c0       	mov    0xc0158dc4,%eax
c0101155:	55                   	push   %ebp
c0101156:	89 e5                	mov    %esp,%ebp
c0101158:	85 c0                	test   %eax,%eax
c010115a:	75 0e                	jne    c010116a <wait_ide_intr+0x1a>
c010115c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0101160:	f4                   	hlt    
c0101161:	a1 c4 8d 15 c0       	mov    0xc0158dc4,%eax
c0101166:	85 c0                	test   %eax,%eax
c0101168:	74 f6                	je     c0101160 <wait_ide_intr+0x10>
c010116a:	c7 05 c4 8d 15 c0 00 	movl   $0x0,0xc0158dc4
c0101171:	00 00 00 
c0101174:	5d                   	pop    %ebp
c0101175:	c3                   	ret    
c0101176:	8d 76 00             	lea    0x0(%esi),%esi
c0101179:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0101180 <init_ide>:
c0101180:	55                   	push   %ebp
c0101181:	89 e5                	mov    %esp,%ebp
c0101183:	83 ec 08             	sub    $0x8,%esp
c0101186:	e8 f5 fc ff ff       	call   c0100e80 <buf_init>
c010118b:	83 ec 08             	sub    $0x8,%esp
c010118e:	68 90 10 10 c0       	push   $0xc0101090
c0101193:	6a 00                	push   $0x0
c0101195:	e8 b6 f4 ff ff       	call   c0100650 <add_irq_handle>
c010119a:	58                   	pop    %eax
c010119b:	5a                   	pop    %edx
c010119c:	68 80 10 10 c0       	push   $0xc0101080
c01011a1:	6a 0e                	push   $0xe
c01011a3:	e8 a8 f4 ff ff       	call   c0100650 <add_irq_handle>
c01011a8:	83 c4 10             	add    $0x10,%esp
c01011ab:	c9                   	leave  
c01011ac:	c3                   	ret    
c01011ad:	66 90                	xchg   %ax,%ax
c01011af:	90                   	nop

c01011b0 <ramdisk_read>:
c01011b0:	55                   	push   %ebp
c01011b1:	89 e5                	mov    %esp,%ebp
c01011b3:	53                   	push   %ebx
c01011b4:	8b 55 0c             	mov    0xc(%ebp),%edx
c01011b7:	8b 4d 10             	mov    0x10(%ebp),%ecx
c01011ba:	8b 5d 08             	mov    0x8(%ebp),%ebx
c01011bd:	8d 04 0a             	lea    (%edx,%ecx,1),%eax
c01011c0:	3d ff ff 09 00       	cmp    $0x9ffff,%eax
c01011c5:	76 06                	jbe    c01011cd <ramdisk_read+0x1d>
c01011c7:	b8 01 00 00 00       	mov    $0x1,%eax
c01011cc:	d6                   	(bad)  
c01011cd:	89 5d 08             	mov    %ebx,0x8(%ebp)
c01011d0:	89 4d 10             	mov    %ecx,0x10(%ebp)
c01011d3:	89 55 0c             	mov    %edx,0xc(%ebp)
c01011d6:	5b                   	pop    %ebx
c01011d7:	5d                   	pop    %ebp
c01011d8:	e9 d3 00 00 00       	jmp    c01012b0 <memcpy>
c01011dd:	8d 76 00             	lea    0x0(%esi),%esi

c01011e0 <ramdisk_write>:
c01011e0:	55                   	push   %ebp
c01011e1:	89 e5                	mov    %esp,%ebp
c01011e3:	53                   	push   %ebx
c01011e4:	8b 55 0c             	mov    0xc(%ebp),%edx
c01011e7:	8b 4d 10             	mov    0x10(%ebp),%ecx
c01011ea:	8b 5d 08             	mov    0x8(%ebp),%ebx
c01011ed:	8d 04 0a             	lea    (%edx,%ecx,1),%eax
c01011f0:	3d ff ff 09 00       	cmp    $0x9ffff,%eax
c01011f5:	76 06                	jbe    c01011fd <ramdisk_write+0x1d>
c01011f7:	b8 01 00 00 00       	mov    $0x1,%eax
c01011fc:	d6                   	(bad)  
c01011fd:	89 5d 0c             	mov    %ebx,0xc(%ebp)
c0101200:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0101203:	89 55 08             	mov    %edx,0x8(%ebp)
c0101206:	5b                   	pop    %ebx
c0101207:	5d                   	pop    %ebp
c0101208:	e9 a3 00 00 00       	jmp    c01012b0 <memcpy>
c010120d:	66 90                	xchg   %ax,%ax
c010120f:	90                   	nop

c0101210 <sbrk>:
c0101210:	55                   	push   %ebp
c0101211:	89 e5                	mov    %esp,%ebp
c0101213:	83 ec 08             	sub    $0x8,%esp
c0101216:	68 99 17 10 c0       	push   $0xc0101799
c010121b:	6a 08                	push   $0x8
c010121d:	68 83 17 10 c0       	push   $0xc0101783
c0101222:	68 00 17 10 c0       	push   $0xc0101700
c0101227:	e8 14 00 00 00       	call   c0101240 <printk>
c010122c:	b8 01 00 00 00       	mov    $0x1,%eax
c0101231:	d6                   	(bad)  
c0101232:	30 c0                	xor    %al,%al
c0101234:	c9                   	leave  
c0101235:	c3                   	ret    
c0101236:	66 90                	xchg   %ax,%ax
c0101238:	66 90                	xchg   %ax,%ax
c010123a:	66 90                	xchg   %ax,%ax
c010123c:	66 90                	xchg   %ax,%ax
c010123e:	66 90                	xchg   %ax,%ax

c0101240 <printk>:
c0101240:	55                   	push   %ebp
c0101241:	89 e5                	mov    %esp,%ebp
c0101243:	5d                   	pop    %ebp
c0101244:	c3                   	ret    
c0101245:	66 90                	xchg   %ax,%ax
c0101247:	66 90                	xchg   %ax,%ax
c0101249:	66 90                	xchg   %ax,%ax
c010124b:	66 90                	xchg   %ax,%ax
c010124d:	66 90                	xchg   %ax,%ax
c010124f:	90                   	nop

c0101250 <init_serial>:
c0101250:	55                   	push   %ebp
c0101251:	ba f9 03 00 00       	mov    $0x3f9,%edx
c0101256:	31 c0                	xor    %eax,%eax
c0101258:	89 e5                	mov    %esp,%ebp
c010125a:	ee                   	out    %al,(%dx)
c010125b:	b8 80 ff ff ff       	mov    $0xffffff80,%eax
c0101260:	b2 fb                	mov    $0xfb,%dl
c0101262:	ee                   	out    %al,(%dx)
c0101263:	b8 01 00 00 00       	mov    $0x1,%eax
c0101268:	b2 f8                	mov    $0xf8,%dl
c010126a:	ee                   	out    %al,(%dx)
c010126b:	31 c0                	xor    %eax,%eax
c010126d:	b2 f9                	mov    $0xf9,%dl
c010126f:	ee                   	out    %al,(%dx)
c0101270:	b8 03 00 00 00       	mov    $0x3,%eax
c0101275:	b2 fb                	mov    $0xfb,%dl
c0101277:	ee                   	out    %al,(%dx)
c0101278:	b8 c7 ff ff ff       	mov    $0xffffffc7,%eax
c010127d:	b2 fa                	mov    $0xfa,%dl
c010127f:	ee                   	out    %al,(%dx)
c0101280:	b8 0b 00 00 00       	mov    $0xb,%eax
c0101285:	b2 fc                	mov    $0xfc,%dl
c0101287:	ee                   	out    %al,(%dx)
c0101288:	5d                   	pop    %ebp
c0101289:	c3                   	ret    
c010128a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

c0101290 <serial_printc>:
c0101290:	55                   	push   %ebp
c0101291:	ba fd 03 00 00       	mov    $0x3fd,%edx
c0101296:	89 e5                	mov    %esp,%ebp
c0101298:	8b 4d 08             	mov    0x8(%ebp),%ecx
c010129b:	90                   	nop
c010129c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c01012a0:	ec                   	in     (%dx),%al
c01012a1:	a8 20                	test   $0x20,%al
c01012a3:	74 fb                	je     c01012a0 <serial_printc+0x10>
c01012a5:	ba f8 03 00 00       	mov    $0x3f8,%edx
c01012aa:	89 c8                	mov    %ecx,%eax
c01012ac:	ee                   	out    %al,(%dx)
c01012ad:	5d                   	pop    %ebp
c01012ae:	c3                   	ret    
c01012af:	90                   	nop

c01012b0 <memcpy>:
c01012b0:	55                   	push   %ebp
c01012b1:	89 e5                	mov    %esp,%ebp
c01012b3:	56                   	push   %esi
c01012b4:	57                   	push   %edi
c01012b5:	53                   	push   %ebx
c01012b6:	8b 7d 08             	mov    0x8(%ebp),%edi
c01012b9:	8b 4d 10             	mov    0x10(%ebp),%ecx
c01012bc:	8b 75 0c             	mov    0xc(%ebp),%esi
c01012bf:	fc                   	cld    
c01012c0:	83 f9 08             	cmp    $0x8,%ecx
c01012c3:	76 26                	jbe    c01012eb <memcpy+0x3b>
c01012c5:	89 fa                	mov    %edi,%edx
c01012c7:	89 cb                	mov    %ecx,%ebx
c01012c9:	83 e2 03             	and    $0x3,%edx
c01012cc:	74 10                	je     c01012de <memcpy+0x2e>
c01012ce:	b9 04 00 00 00       	mov    $0x4,%ecx
c01012d3:	29 d1                	sub    %edx,%ecx
c01012d5:	83 e1 03             	and    $0x3,%ecx
c01012d8:	29 cb                	sub    %ecx,%ebx
c01012da:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
c01012dc:	89 d9                	mov    %ebx,%ecx
c01012de:	c1 e9 02             	shr    $0x2,%ecx
c01012e1:	8d 76 00             	lea    0x0(%esi),%esi
c01012e4:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
c01012e6:	89 d9                	mov    %ebx,%ecx
c01012e8:	83 e1 03             	and    $0x3,%ecx
c01012eb:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
c01012ed:	8b 45 08             	mov    0x8(%ebp),%eax
c01012f0:	8d 65 f4             	lea    -0xc(%ebp),%esp
c01012f3:	5b                   	pop    %ebx
c01012f4:	5f                   	pop    %edi
c01012f5:	5e                   	pop    %esi
c01012f6:	c9                   	leave  
c01012f7:	c3                   	ret    

c01012f8 <memset>:
c01012f8:	55                   	push   %ebp
c01012f9:	89 e5                	mov    %esp,%ebp
c01012fb:	57                   	push   %edi
c01012fc:	8b 7d 08             	mov    0x8(%ebp),%edi
c01012ff:	0f b6 45 0c          	movzbl 0xc(%ebp),%eax
c0101303:	8b 4d 10             	mov    0x10(%ebp),%ecx
c0101306:	fc                   	cld    
c0101307:	83 f9 10             	cmp    $0x10,%ecx
c010130a:	76 69                	jbe    c0101375 <memset+0x7d>
c010130c:	f7 c7 07 00 00 00    	test   $0x7,%edi
c0101312:	74 4c                	je     c0101360 <memset+0x68>
c0101314:	88 07                	mov    %al,(%edi)
c0101316:	47                   	inc    %edi
c0101317:	49                   	dec    %ecx
c0101318:	f7 c7 07 00 00 00    	test   $0x7,%edi
c010131e:	74 40                	je     c0101360 <memset+0x68>
c0101320:	88 07                	mov    %al,(%edi)
c0101322:	47                   	inc    %edi
c0101323:	49                   	dec    %ecx
c0101324:	f7 c7 07 00 00 00    	test   $0x7,%edi
c010132a:	74 34                	je     c0101360 <memset+0x68>
c010132c:	88 07                	mov    %al,(%edi)
c010132e:	47                   	inc    %edi
c010132f:	49                   	dec    %ecx
c0101330:	f7 c7 07 00 00 00    	test   $0x7,%edi
c0101336:	74 28                	je     c0101360 <memset+0x68>
c0101338:	88 07                	mov    %al,(%edi)
c010133a:	47                   	inc    %edi
c010133b:	49                   	dec    %ecx
c010133c:	f7 c7 07 00 00 00    	test   $0x7,%edi
c0101342:	74 1c                	je     c0101360 <memset+0x68>
c0101344:	88 07                	mov    %al,(%edi)
c0101346:	47                   	inc    %edi
c0101347:	49                   	dec    %ecx
c0101348:	f7 c7 07 00 00 00    	test   $0x7,%edi
c010134e:	74 10                	je     c0101360 <memset+0x68>
c0101350:	88 07                	mov    %al,(%edi)
c0101352:	47                   	inc    %edi
c0101353:	49                   	dec    %ecx
c0101354:	f7 c7 07 00 00 00    	test   $0x7,%edi
c010135a:	74 04                	je     c0101360 <memset+0x68>
c010135c:	88 07                	mov    %al,(%edi)
c010135e:	47                   	inc    %edi
c010135f:	49                   	dec    %ecx
c0101360:	88 c4                	mov    %al,%ah
c0101362:	89 c2                	mov    %eax,%edx
c0101364:	c1 e2 10             	shl    $0x10,%edx
c0101367:	09 d0                	or     %edx,%eax
c0101369:	89 ca                	mov    %ecx,%edx
c010136b:	c1 e9 02             	shr    $0x2,%ecx
c010136e:	83 e2 03             	and    $0x3,%edx
c0101371:	f3 ab                	rep stos %eax,%es:(%edi)
c0101373:	89 d1                	mov    %edx,%ecx
c0101375:	f3 aa                	rep stos %al,%es:(%edi)
c0101377:	8b 45 08             	mov    0x8(%ebp),%eax
c010137a:	8d 65 fc             	lea    -0x4(%ebp),%esp
c010137d:	5f                   	pop    %edi
c010137e:	c9                   	leave  
c010137f:	c3                   	ret    
