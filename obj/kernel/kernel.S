
kernel:     file format elf32-i386


Disassembly of section .text:

00100000 <start>:
  100000:	bd 00 00 00 00       	mov    $0x0,%ebp
  100005:	bc 00 00 00 08       	mov    $0x8000000,%esp
  10000a:	e9 51 0d 00 00       	jmp    100d60 <init>
  10000f:	90                   	nop

00100010 <mm_malloc>:
  100010:	55                   	push   %ebp
  100011:	31 c0                	xor    %eax,%eax
  100013:	89 e5                	mov    %esp,%ebp
  100015:	57                   	push   %edi
  100016:	56                   	push   %esi
  100017:	53                   	push   %ebx
  100018:	83 ec 3c             	sub    $0x3c,%esp
  10001b:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  10001e:	85 db                	test   %ebx,%ebx
  100020:	0f 8e 36 02 00 00    	jle    10025c <mm_malloc+0x24c>
  100026:	e8 85 04 00 00       	call   1004b0 <get_updir>
  10002b:	89 c6                	mov    %eax,%esi
  10002d:	e8 8e 04 00 00       	call   1004c0 <get_ucr3>
  100032:	8b 55 08             	mov    0x8(%ebp),%edx
  100035:	8d 5c 1a ff          	lea    -0x1(%edx,%ebx,1),%ebx
  100039:	89 5d e0             	mov    %ebx,-0x20(%ebp)
  10003c:	89 45 dc             	mov    %eax,-0x24(%ebp)
  10003f:	b8 00 10 00 00       	mov    $0x1000,%eax
  100044:	29 d0                	sub    %edx,%eax
  100046:	89 da                	mov    %ebx,%edx
  100048:	81 e2 00 f0 ff ff    	and    $0xfffff000,%edx
  10004e:	01 d0                	add    %edx,%eax
  100050:	85 c0                	test   %eax,%eax
  100052:	0f 8e c0 00 00 00    	jle    100118 <mm_malloc+0x108>
  100058:	8b 55 08             	mov    0x8(%ebp),%edx
  10005b:	83 e8 01             	sub    $0x1,%eax
  10005e:	89 f7                	mov    %esi,%edi
  100060:	25 00 f0 ff ff       	and    $0xfffff000,%eax
  100065:	8d 84 02 00 10 00 00 	lea    0x1000(%edx,%eax,1),%eax
  10006c:	89 d3                	mov    %edx,%ebx
  10006e:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  100071:	eb 51                	jmp    1000c4 <mm_malloc+0xb4>
  100073:	90                   	nop
  100074:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  100078:	8b 31                	mov    (%ecx),%esi
  10007a:	81 e6 00 f0 ff ff    	and    $0xfffff000,%esi
  100080:	81 ee 00 00 00 40    	sub    $0x40000000,%esi
  100086:	89 d8                	mov    %ebx,%eax
  100088:	c1 e8 0a             	shr    $0xa,%eax
  10008b:	25 fc 0f 00 00       	and    $0xffc,%eax
  100090:	01 c6                	add    %eax,%esi
  100092:	f6 06 01             	testb  $0x1,(%esi)
  100095:	75 22                	jne    1000b9 <mm_malloc+0xa9>
  100097:	a1 4c 2d 10 00       	mov    0x102d4c,%eax
  10009c:	3d ff 7f 00 00       	cmp    $0x7fff,%eax
  1000a1:	0f 8f c1 01 00 00    	jg     100268 <mm_malloc+0x258>
  1000a7:	89 c1                	mov    %eax,%ecx
  1000a9:	83 c0 01             	add    $0x1,%eax
  1000ac:	c1 e1 0c             	shl    $0xc,%ecx
  1000af:	83 c9 07             	or     $0x7,%ecx
  1000b2:	89 0e                	mov    %ecx,(%esi)
  1000b4:	a3 4c 2d 10 00       	mov    %eax,0x102d4c
  1000b9:	81 c3 00 10 00 00    	add    $0x1000,%ebx
  1000bf:	3b 5d e4             	cmp    -0x1c(%ebp),%ebx
  1000c2:	74 54                	je     100118 <mm_malloc+0x108>
  1000c4:	89 d8                	mov    %ebx,%eax
  1000c6:	c1 e8 16             	shr    $0x16,%eax
  1000c9:	8d 0c 87             	lea    (%edi,%eax,4),%ecx
  1000cc:	f6 01 01             	testb  $0x1,(%ecx)
  1000cf:	75 a7                	jne    100078 <mm_malloc+0x68>
  1000d1:	a1 00 30 10 00       	mov    0x103000,%eax
  1000d6:	89 c6                	mov    %eax,%esi
  1000d8:	83 c0 01             	add    $0x1,%eax
  1000db:	c1 e6 0c             	shl    $0xc,%esi
  1000de:	81 c6 00 40 10 00    	add    $0x104000,%esi
  1000e4:	a3 00 30 10 00       	mov    %eax,0x103000
  1000e9:	8d 86 00 00 00 40    	lea    0x40000000(%esi),%eax
  1000ef:	25 00 f0 ff ff       	and    $0xfffff000,%eax
  1000f4:	83 c8 07             	or     $0x7,%eax
  1000f7:	89 01                	mov    %eax,(%ecx)
  1000f9:	c7 44 24 08 00 10 00 	movl   $0x1000,0x8(%esp)
  100100:	00 
  100101:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
  100108:	00 
  100109:	89 34 24             	mov    %esi,(%esp)
  10010c:	e8 77 11 00 00       	call   101288 <memset>
  100111:	e9 70 ff ff ff       	jmp    100086 <mm_malloc+0x76>
  100116:	66 90                	xchg   %ax,%ax
  100118:	8b 5d dc             	mov    -0x24(%ebp),%ebx
  10011b:	8b 45 e0             	mov    -0x20(%ebp),%eax
  10011e:	81 eb 00 00 00 40    	sub    $0x40000000,%ebx
  100124:	81 e3 00 f0 ff ff    	and    $0xfffff000,%ebx
  10012a:	c1 e8 16             	shr    $0x16,%eax
  10012d:	8b 34 83             	mov    (%ebx,%eax,4),%esi
  100130:	f7 c6 01 00 00 00    	test   $0x1,%esi
  100136:	75 32                	jne    10016a <mm_malloc+0x15a>
  100138:	c7 44 24 10 34 13 10 	movl   $0x101334,0x10(%esp)
  10013f:	00 
  100140:	c7 44 24 0c 98 13 10 	movl   $0x101398,0xc(%esp)
  100147:	00 
  100148:	c7 44 24 08 11 00 00 	movl   $0x11,0x8(%esp)
  10014f:	00 
  100150:	c7 44 24 04 23 13 10 	movl   $0x101323,0x4(%esp)
  100157:	00 
  100158:	c7 04 24 44 13 10 00 	movl   $0x101344,(%esp)
  10015f:	e8 6c 10 00 00       	call   1011d0 <printk>
  100164:	b8 01 00 00 00       	mov    $0x1,%eax
  100169:	d6                   	(bad)  
  10016a:	8b 55 e0             	mov    -0x20(%ebp),%edx
  10016d:	8d 86 00 00 00 c0    	lea    -0x40000000(%esi),%eax
  100173:	25 00 f0 ff ff       	and    $0xfffff000,%eax
  100178:	c1 ea 0c             	shr    $0xc,%edx
  10017b:	81 e2 ff 03 00 00    	and    $0x3ff,%edx
  100181:	f6 04 90 01          	testb  $0x1,(%eax,%edx,4)
  100185:	75 32                	jne    1001b9 <mm_malloc+0x1a9>
  100187:	c7 44 24 10 3c 13 10 	movl   $0x10133c,0x10(%esp)
  10018e:	00 
  10018f:	c7 44 24 0c 98 13 10 	movl   $0x101398,0xc(%esp)
  100196:	00 
  100197:	c7 44 24 08 13 00 00 	movl   $0x13,0x8(%esp)
  10019e:	00 
  10019f:	c7 44 24 04 23 13 10 	movl   $0x101323,0x4(%esp)
  1001a6:	00 
  1001a7:	c7 04 24 44 13 10 00 	movl   $0x101344,(%esp)
  1001ae:	e8 1d 10 00 00       	call   1011d0 <printk>
  1001b3:	b8 01 00 00 00       	mov    $0x1,%eax
  1001b8:	d6                   	(bad)  
  1001b9:	8b 45 08             	mov    0x8(%ebp),%eax
  1001bc:	c1 e8 16             	shr    $0x16,%eax
  1001bf:	8b 1c 83             	mov    (%ebx,%eax,4),%ebx
  1001c2:	f6 c3 01             	test   $0x1,%bl
  1001c5:	75 32                	jne    1001f9 <mm_malloc+0x1e9>
  1001c7:	c7 44 24 10 34 13 10 	movl   $0x101334,0x10(%esp)
  1001ce:	00 
  1001cf:	c7 44 24 0c 98 13 10 	movl   $0x101398,0xc(%esp)
  1001d6:	00 
  1001d7:	c7 44 24 08 11 00 00 	movl   $0x11,0x8(%esp)
  1001de:	00 
  1001df:	c7 44 24 04 23 13 10 	movl   $0x101323,0x4(%esp)
  1001e6:	00 
  1001e7:	c7 04 24 44 13 10 00 	movl   $0x101344,(%esp)
  1001ee:	e8 dd 0f 00 00       	call   1011d0 <printk>
  1001f3:	b8 01 00 00 00       	mov    $0x1,%eax
  1001f8:	d6                   	(bad)  
  1001f9:	8b 55 08             	mov    0x8(%ebp),%edx
  1001fc:	8d 83 00 00 00 c0    	lea    -0x40000000(%ebx),%eax
  100202:	25 00 f0 ff ff       	and    $0xfffff000,%eax
  100207:	c1 ea 0c             	shr    $0xc,%edx
  10020a:	81 e2 ff 03 00 00    	and    $0x3ff,%edx
  100210:	8b 1c 90             	mov    (%eax,%edx,4),%ebx
  100213:	f6 c3 01             	test   $0x1,%bl
  100216:	75 32                	jne    10024a <mm_malloc+0x23a>
  100218:	c7 44 24 10 3c 13 10 	movl   $0x10133c,0x10(%esp)
  10021f:	00 
  100220:	c7 44 24 0c 98 13 10 	movl   $0x101398,0xc(%esp)
  100227:	00 
  100228:	c7 44 24 08 13 00 00 	movl   $0x13,0x8(%esp)
  10022f:	00 
  100230:	c7 44 24 04 23 13 10 	movl   $0x101323,0x4(%esp)
  100237:	00 
  100238:	c7 04 24 44 13 10 00 	movl   $0x101344,(%esp)
  10023f:	e8 8c 0f 00 00       	call   1011d0 <printk>
  100244:	b8 01 00 00 00       	mov    $0x1,%eax
  100249:	d6                   	(bad)  
  10024a:	8b 55 08             	mov    0x8(%ebp),%edx
  10024d:	89 d8                	mov    %ebx,%eax
  10024f:	25 00 f0 ff ff       	and    $0xfffff000,%eax
  100254:	81 e2 ff 0f 00 00    	and    $0xfff,%edx
  10025a:	09 d0                	or     %edx,%eax
  10025c:	83 c4 3c             	add    $0x3c,%esp
  10025f:	5b                   	pop    %ebx
  100260:	5e                   	pop    %esi
  100261:	5f                   	pop    %edi
  100262:	5d                   	pop    %ebp
  100263:	c3                   	ret    
  100264:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  100268:	c7 44 24 10 10 13 10 	movl   $0x101310,0x10(%esp)
  10026f:	00 
  100270:	c7 44 24 0c 8e 13 10 	movl   $0x10138e,0xc(%esp)
  100277:	00 
  100278:	c7 44 24 08 31 00 00 	movl   $0x31,0x8(%esp)
  10027f:	00 
  100280:	c7 44 24 04 23 13 10 	movl   $0x101323,0x4(%esp)
  100287:	00 
  100288:	c7 04 24 44 13 10 00 	movl   $0x101344,(%esp)
  10028f:	e8 3c 0f 00 00       	call   1011d0 <printk>
  100294:	b8 01 00 00 00       	mov    $0x1,%eax
  100299:	d6                   	(bad)  
  10029a:	a1 4c 2d 10 00       	mov    0x102d4c,%eax
  10029f:	e9 03 fe ff ff       	jmp    1000a7 <mm_malloc+0x97>

001002a4 <vec0>:
  1002a4:	6a 00                	push   $0x0
  1002a6:	6a 00                	push   $0x0
  1002a8:	e9 ab 00 00 00       	jmp    100358 <asm_do_irq>

001002ad <vec1>:
  1002ad:	6a 00                	push   $0x0
  1002af:	6a 01                	push   $0x1
  1002b1:	e9 a2 00 00 00       	jmp    100358 <asm_do_irq>

001002b6 <vec2>:
  1002b6:	6a 00                	push   $0x0
  1002b8:	6a 02                	push   $0x2
  1002ba:	e9 99 00 00 00       	jmp    100358 <asm_do_irq>

001002bf <vec3>:
  1002bf:	6a 00                	push   $0x0
  1002c1:	6a 03                	push   $0x3
  1002c3:	e9 90 00 00 00       	jmp    100358 <asm_do_irq>

001002c8 <vec4>:
  1002c8:	6a 00                	push   $0x0
  1002ca:	6a 04                	push   $0x4
  1002cc:	e9 87 00 00 00       	jmp    100358 <asm_do_irq>

001002d1 <vec5>:
  1002d1:	6a 00                	push   $0x0
  1002d3:	6a 05                	push   $0x5
  1002d5:	e9 7e 00 00 00       	jmp    100358 <asm_do_irq>

001002da <vec6>:
  1002da:	6a 00                	push   $0x0
  1002dc:	6a 06                	push   $0x6
  1002de:	e9 75 00 00 00       	jmp    100358 <asm_do_irq>

001002e3 <vec7>:
  1002e3:	6a 00                	push   $0x0
  1002e5:	6a 07                	push   $0x7
  1002e7:	e9 6c 00 00 00       	jmp    100358 <asm_do_irq>

001002ec <vec8>:
  1002ec:	6a 08                	push   $0x8
  1002ee:	e9 65 00 00 00       	jmp    100358 <asm_do_irq>

001002f3 <vec9>:
  1002f3:	6a 00                	push   $0x0
  1002f5:	6a 09                	push   $0x9
  1002f7:	e9 5c 00 00 00       	jmp    100358 <asm_do_irq>

001002fc <vec10>:
  1002fc:	6a 0a                	push   $0xa
  1002fe:	e9 55 00 00 00       	jmp    100358 <asm_do_irq>

00100303 <vec11>:
  100303:	6a 0b                	push   $0xb
  100305:	e9 4e 00 00 00       	jmp    100358 <asm_do_irq>

0010030a <vec12>:
  10030a:	6a 0c                	push   $0xc
  10030c:	e9 47 00 00 00       	jmp    100358 <asm_do_irq>

00100311 <vec13>:
  100311:	6a 0d                	push   $0xd
  100313:	e9 40 00 00 00       	jmp    100358 <asm_do_irq>

00100318 <vec14>:
  100318:	6a 0e                	push   $0xe
  10031a:	e9 39 00 00 00       	jmp    100358 <asm_do_irq>

0010031f <vecsys>:
  10031f:	6a 00                	push   $0x0
  100321:	68 80 00 00 00       	push   $0x80
  100326:	e9 2d 00 00 00       	jmp    100358 <asm_do_irq>

0010032b <irq0>:
  10032b:	6a 00                	push   $0x0
  10032d:	68 e8 03 00 00       	push   $0x3e8
  100332:	e9 21 00 00 00       	jmp    100358 <asm_do_irq>

00100337 <irq1>:
  100337:	6a 00                	push   $0x0
  100339:	68 e9 03 00 00       	push   $0x3e9
  10033e:	e9 15 00 00 00       	jmp    100358 <asm_do_irq>

00100343 <irq14>:
  100343:	6a 00                	push   $0x0
  100345:	68 f6 03 00 00       	push   $0x3f6
  10034a:	e9 09 00 00 00       	jmp    100358 <asm_do_irq>

0010034f <irq_empty>:
  10034f:	6a 00                	push   $0x0
  100351:	6a ff                	push   $0xffffffff
  100353:	e9 00 00 00 00       	jmp    100358 <asm_do_irq>

00100358 <asm_do_irq>:
  100358:	60                   	pusha  
  100359:	54                   	push   %esp
  10035a:	e8 61 03 00 00       	call   1006c0 <irq_handle>
  10035f:	83 c4 04             	add    $0x4,%esp
  100362:	61                   	popa   
  100363:	83 c4 08             	add    $0x8,%esp
  100366:	cf                   	iret   
  100367:	66 90                	xchg   %ax,%ax
  100369:	66 90                	xchg   %ax,%ax
  10036b:	66 90                	xchg   %ax,%ax
  10036d:	66 90                	xchg   %ax,%ax
  10036f:	90                   	nop

00100370 <get_kpdir>:
  100370:	55                   	push   %ebp
  100371:	b8 00 50 14 00       	mov    $0x145000,%eax
  100376:	89 e5                	mov    %esp,%ebp
  100378:	5d                   	pop    %ebp
  100379:	c3                   	ret    
  10037a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00100380 <init_page>:
  100380:	55                   	push   %ebp
  100381:	89 e5                	mov    %esp,%ebp
  100383:	57                   	push   %edi
  100384:	83 ec 08             	sub    $0x8,%esp
  100387:	68 00 10 00 00       	push   $0x1000
  10038c:	6a 00                	push   $0x0
  10038e:	68 00 50 14 00       	push   $0x145000
  100393:	e8 f0 0e 00 00       	call   101288 <memset>
  100398:	83 c4 10             	add    $0x10,%esp
  10039b:	b9 00 50 14 00       	mov    $0x145000,%ecx
  1003a0:	b8 00 50 12 00       	mov    $0x125000,%eax
  1003a5:	8d 76 00             	lea    0x0(%esi),%esi
  1003a8:	89 c2                	mov    %eax,%edx
  1003aa:	05 00 10 00 00       	add    $0x1000,%eax
  1003af:	83 c1 04             	add    $0x4,%ecx
  1003b2:	81 e2 00 f0 ff ff    	and    $0xfffff000,%edx
  1003b8:	83 ca 07             	or     $0x7,%edx
  1003bb:	89 51 fc             	mov    %edx,-0x4(%ecx)
  1003be:	3d 00 50 14 00       	cmp    $0x145000,%eax
  1003c3:	75 e3                	jne    1003a8 <init_page+0x28>
  1003c5:	bf fc 4f 14 00       	mov    $0x144ffc,%edi
  1003ca:	b8 07 f0 ff 07       	mov    $0x7fff007,%eax
  1003cf:	fd                   	std    
  1003d0:	ab                   	stos   %eax,%es:(%edi)
  1003d1:	2d 00 10 00 00       	sub    $0x1000,%eax
  1003d6:	7d f8                	jge    1003d0 <init_page+0x50>
  1003d8:	b8 00 50 14 00       	mov    $0x145000,%eax
  1003dd:	25 00 f0 ff ff       	and    $0xfffff000,%eax
  1003e2:	0f 22 d8             	mov    %eax,%cr3
  1003e5:	0f 20 c0             	mov    %cr0,%eax
  1003e8:	0d 00 00 00 80       	or     $0x80000000,%eax
  1003ed:	0f 22 c0             	mov    %eax,%cr0
  1003f0:	8b 7d fc             	mov    -0x4(%ebp),%edi
  1003f3:	c9                   	leave  
  1003f4:	c3                   	ret    
  1003f5:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  1003f9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00100400 <init_segment>:
  100400:	55                   	push   %ebp
  100401:	89 e5                	mov    %esp,%ebp
  100403:	83 ec 0c             	sub    $0xc,%esp
  100406:	6a 18                	push   $0x18
  100408:	6a 00                	push   $0x0
  10040a:	68 08 40 12 00       	push   $0x124008
  10040f:	e8 74 0e 00 00       	call   101288 <memset>
  100414:	ba ff ff ff ff       	mov    $0xffffffff,%edx
  100419:	31 c9                	xor    %ecx,%ecx
  10041b:	b8 08 40 12 00       	mov    $0x124008,%eax
  100420:	66 89 15 10 40 12 00 	mov    %dx,0x124010
  100427:	ba ff ff ff ff       	mov    $0xffffffff,%edx
  10042c:	66 89 0d 12 40 12 00 	mov    %cx,0x124012
  100433:	66 89 15 18 40 12 00 	mov    %dx,0x124018
  10043a:	ba 17 00 00 00       	mov    $0x17,%edx
  10043f:	31 c9                	xor    %ecx,%ecx
  100441:	66 89 15 00 40 12 00 	mov    %dx,0x124000
  100448:	66 a3 02 40 12 00    	mov    %ax,0x124002
  10044e:	c1 e8 10             	shr    $0x10,%eax
  100451:	66 a3 04 40 12 00    	mov    %ax,0x124004
  100457:	c6 05 14 40 12 00 00 	movb   $0x0,0x124014
  10045e:	b8 00 40 12 00       	mov    $0x124000,%eax
  100463:	c6 05 15 40 12 00 9a 	movb   $0x9a,0x124015
  10046a:	c6 05 16 40 12 00 cf 	movb   $0xcf,0x124016
  100471:	c6 05 17 40 12 00 00 	movb   $0x0,0x124017
  100478:	66 89 0d 1a 40 12 00 	mov    %cx,0x12401a
  10047f:	c6 05 1c 40 12 00 00 	movb   $0x0,0x12401c
  100486:	c6 05 1d 40 12 00 92 	movb   $0x92,0x12401d
  10048d:	c6 05 1e 40 12 00 cf 	movb   $0xcf,0x12401e
  100494:	c6 05 1f 40 12 00 00 	movb   $0x0,0x12401f
  10049b:	0f 01 10             	lgdtl  (%eax)
  10049e:	83 c4 10             	add    $0x10,%esp
  1004a1:	c9                   	leave  
  1004a2:	c3                   	ret    
  1004a3:	66 90                	xchg   %ax,%ax
  1004a5:	66 90                	xchg   %ax,%ax
  1004a7:	66 90                	xchg   %ax,%ax
  1004a9:	66 90                	xchg   %ax,%ax
  1004ab:	66 90                	xchg   %ax,%ax
  1004ad:	66 90                	xchg   %ax,%ax
  1004af:	90                   	nop

001004b0 <get_updir>:
  1004b0:	55                   	push   %ebp
  1004b1:	b8 00 70 14 00       	mov    $0x147000,%eax
  1004b6:	89 e5                	mov    %esp,%ebp
  1004b8:	5d                   	pop    %ebp
  1004b9:	c3                   	ret    
  1004ba:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

001004c0 <get_ucr3>:
  1004c0:	55                   	push   %ebp
  1004c1:	a1 04 60 14 00       	mov    0x146004,%eax
  1004c6:	89 e5                	mov    %esp,%ebp
  1004c8:	5d                   	pop    %ebp
  1004c9:	c3                   	ret    
  1004ca:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

001004d0 <mm_brk>:
  1004d0:	55                   	push   %ebp
  1004d1:	89 e5                	mov    %esp,%ebp
  1004d3:	53                   	push   %ebx
  1004d4:	83 ec 04             	sub    $0x4,%esp
  1004d7:	8b 5d 08             	mov    0x8(%ebp),%ebx
  1004da:	a1 00 60 14 00       	mov    0x146000,%eax
  1004df:	39 d8                	cmp    %ebx,%eax
  1004e1:	73 11                	jae    1004f4 <mm_brk+0x24>
  1004e3:	89 da                	mov    %ebx,%edx
  1004e5:	83 ec 08             	sub    $0x8,%esp
  1004e8:	29 c2                	sub    %eax,%edx
  1004ea:	52                   	push   %edx
  1004eb:	50                   	push   %eax
  1004ec:	e8 1f fb ff ff       	call   100010 <mm_malloc>
  1004f1:	83 c4 10             	add    $0x10,%esp
  1004f4:	89 1d 00 60 14 00    	mov    %ebx,0x146000
  1004fa:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  1004fd:	c9                   	leave  
  1004fe:	c3                   	ret    
  1004ff:	90                   	nop

00100500 <init_mm>:
  100500:	55                   	push   %ebp
  100501:	89 e5                	mov    %esp,%ebp
  100503:	53                   	push   %ebx
  100504:	83 ec 04             	sub    $0x4,%esp
  100507:	e8 64 fe ff ff       	call   100370 <get_kpdir>
  10050c:	83 ec 04             	sub    $0x4,%esp
  10050f:	89 c3                	mov    %eax,%ebx
  100511:	68 00 10 00 00       	push   $0x1000
  100516:	6a 00                	push   $0x0
  100518:	68 00 70 14 00       	push   $0x147000
  10051d:	e8 66 0d 00 00       	call   101288 <memset>
  100522:	83 c4 0c             	add    $0xc,%esp
  100525:	68 80 00 00 00       	push   $0x80
  10052a:	53                   	push   %ebx
  10052b:	68 00 70 14 00       	push   $0x147000
  100530:	e8 0b 0d 00 00       	call   101240 <memcpy>
  100535:	b8 00 70 14 00       	mov    $0x147000,%eax
  10053a:	83 c4 10             	add    $0x10,%esp
  10053d:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  100540:	25 00 fc ff ff       	and    $0xfffffc00,%eax
  100545:	a3 04 60 14 00       	mov    %eax,0x146004
  10054a:	c9                   	leave  
  10054b:	c3                   	ret    
  10054c:	66 90                	xchg   %ax,%ax
  10054e:	66 90                	xchg   %ax,%ax

00100550 <create_video_mapping>:
  100550:	55                   	push   %ebp
  100551:	89 e5                	mov    %esp,%ebp
  100553:	83 ec 08             	sub    $0x8,%esp
  100556:	68 25 14 10 00       	push   $0x101425
  10055b:	6a 11                	push   $0x11
  10055d:	68 9e 13 10 00       	push   $0x10139e
  100562:	68 c4 13 10 00       	push   $0x1013c4
  100567:	e8 64 0c 00 00       	call   1011d0 <printk>
  10056c:	b8 01 00 00 00       	mov    $0x1,%eax
  100571:	d6                   	(bad)  
  100572:	83 c4 10             	add    $0x10,%esp
  100575:	c9                   	leave  
  100576:	c3                   	ret    
  100577:	89 f6                	mov    %esi,%esi
  100579:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00100580 <video_mapping_write_test>:
  100580:	55                   	push   %ebp
  100581:	31 c0                	xor    %eax,%eax
  100583:	89 e5                	mov    %esp,%ebp
  100585:	8d 76 00             	lea    0x0(%esi),%esi
  100588:	89 04 85 00 00 0a 00 	mov    %eax,0xa0000(,%eax,4)
  10058f:	83 c0 01             	add    $0x1,%eax
  100592:	3d 80 3e 00 00       	cmp    $0x3e80,%eax
  100597:	75 ef                	jne    100588 <video_mapping_write_test+0x8>
  100599:	5d                   	pop    %ebp
  10059a:	c3                   	ret    
  10059b:	90                   	nop
  10059c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

001005a0 <video_mapping_read_test>:
  1005a0:	55                   	push   %ebp
  1005a1:	89 e5                	mov    %esp,%ebp
  1005a3:	56                   	push   %esi
  1005a4:	be 01 00 00 00       	mov    $0x1,%esi
  1005a9:	53                   	push   %ebx
  1005aa:	31 db                	xor    %ebx,%ebx
  1005ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  1005b0:	3b 1c 9d 00 00 0a 00 	cmp    0xa0000(,%ebx,4),%ebx
  1005b7:	74 24                	je     1005dd <video_mapping_read_test+0x3d>
  1005b9:	83 ec 0c             	sub    $0xc,%esp
  1005bc:	68 b7 13 10 00       	push   $0x1013b7
  1005c1:	68 0d 14 10 00       	push   $0x10140d
  1005c6:	6a 20                	push   $0x20
  1005c8:	68 9e 13 10 00       	push   $0x10139e
  1005cd:	68 44 13 10 00       	push   $0x101344
  1005d2:	e8 f9 0b 00 00       	call   1011d0 <printk>
  1005d7:	89 f0                	mov    %esi,%eax
  1005d9:	d6                   	(bad)  
  1005da:	83 c4 20             	add    $0x20,%esp
  1005dd:	83 c3 01             	add    $0x1,%ebx
  1005e0:	81 fb 80 3e 00 00    	cmp    $0x3e80,%ebx
  1005e6:	75 c8                	jne    1005b0 <video_mapping_read_test+0x10>
  1005e8:	8d 65 f8             	lea    -0x8(%ebp),%esp
  1005eb:	5b                   	pop    %ebx
  1005ec:	5e                   	pop    %esi
  1005ed:	5d                   	pop    %ebp
  1005ee:	c3                   	ret    
  1005ef:	90                   	nop

001005f0 <video_mapping_clear>:
  1005f0:	55                   	push   %ebp
  1005f1:	89 e5                	mov    %esp,%ebp
  1005f3:	83 ec 0c             	sub    $0xc,%esp
  1005f6:	68 00 fa 00 00       	push   $0xfa00
  1005fb:	6a 00                	push   $0x0
  1005fd:	68 00 00 0a 00       	push   $0xa0000
  100602:	e8 81 0c 00 00       	call   101288 <memset>
  100607:	83 c4 10             	add    $0x10,%esp
  10060a:	c9                   	leave  
  10060b:	c3                   	ret    
  10060c:	66 90                	xchg   %ax,%ax
  10060e:	66 90                	xchg   %ax,%ax

00100610 <add_irq_handle>:
  100610:	55                   	push   %ebp
  100611:	89 e5                	mov    %esp,%ebp
  100613:	53                   	push   %ebx
  100614:	83 ec 04             	sub    $0x4,%esp
  100617:	8b 5d 08             	mov    0x8(%ebp),%ebx
  10061a:	83 fb 0f             	cmp    $0xf,%ebx
  10061d:	7f 71                	jg     100690 <add_irq_handle+0x80>
  10061f:	a1 00 80 14 00       	mov    0x148000,%eax
  100624:	83 f8 20             	cmp    $0x20,%eax
  100627:	7e 2c                	jle    100655 <add_irq_handle+0x45>
  100629:	83 ec 0c             	sub    $0xc,%esp
  10062c:	68 69 14 10 00       	push   $0x101469
  100631:	68 b9 15 10 00       	push   $0x1015b9
  100636:	6a 16                	push   $0x16
  100638:	68 4d 14 10 00       	push   $0x10144d
  10063d:	68 44 13 10 00       	push   $0x101344
  100642:	e8 89 0b 00 00       	call   1011d0 <printk>
  100647:	b8 01 00 00 00       	mov    $0x1,%eax
  10064c:	d6                   	(bad)  
  10064d:	a1 00 80 14 00       	mov    0x148000,%eax
  100652:	83 c4 20             	add    $0x20,%esp
  100655:	8d 50 01             	lea    0x1(%eax),%edx
  100658:	89 15 00 80 14 00    	mov    %edx,0x148000
  10065e:	8b 55 0c             	mov    0xc(%ebp),%edx
  100661:	89 14 c5 80 80 14 00 	mov    %edx,0x148080(,%eax,8)
  100668:	8b 14 9d 40 80 14 00 	mov    0x148040(,%ebx,4),%edx
  10066f:	89 14 c5 84 80 14 00 	mov    %edx,0x148084(,%eax,8)
  100676:	8d 04 c5 80 80 14 00 	lea    0x148080(,%eax,8),%eax
  10067d:	89 04 9d 40 80 14 00 	mov    %eax,0x148040(,%ebx,4)
  100684:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  100687:	c9                   	leave  
  100688:	c3                   	ret    
  100689:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  100690:	83 ec 0c             	sub    $0xc,%esp
  100693:	68 3a 14 10 00       	push   $0x10143a
  100698:	68 b9 15 10 00       	push   $0x1015b9
  10069d:	6a 15                	push   $0x15
  10069f:	68 4d 14 10 00       	push   $0x10144d
  1006a4:	68 44 13 10 00       	push   $0x101344
  1006a9:	e8 22 0b 00 00       	call   1011d0 <printk>
  1006ae:	b8 01 00 00 00       	mov    $0x1,%eax
  1006b3:	d6                   	(bad)  
  1006b4:	83 c4 20             	add    $0x20,%esp
  1006b7:	e9 63 ff ff ff       	jmp    10061f <add_irq_handle+0xf>
  1006bc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

001006c0 <irq_handle>:
  1006c0:	55                   	push   %ebp
  1006c1:	89 e5                	mov    %esp,%ebp
  1006c3:	53                   	push   %ebx
  1006c4:	83 ec 04             	sub    $0x4,%esp
  1006c7:	8b 5d 08             	mov    0x8(%ebp),%ebx
  1006ca:	68 ae 15 10 00       	push   $0x1015ae
  1006cf:	6a 24                	push   $0x24
  1006d1:	68 4d 14 10 00       	push   $0x10144d
  1006d6:	68 a0 14 10 00       	push   $0x1014a0
  1006db:	e8 f0 0a 00 00       	call   1011d0 <printk>
  1006e0:	b8 01 00 00 00       	mov    $0x1,%eax
  1006e5:	d6                   	(bad)  
  1006e6:	8b 43 30             	mov    0x30(%ebx),%eax
  1006e9:	83 c4 10             	add    $0x10,%esp
  1006ec:	85 c0                	test   %eax,%eax
  1006ee:	0f 88 9c 00 00 00    	js     100790 <irq_handle+0xd0>
  1006f4:	3d 80 00 00 00       	cmp    $0x80,%eax
  1006f9:	0f 84 b9 00 00 00    	je     1007b8 <irq_handle+0xf8>
  1006ff:	3d e7 03 00 00       	cmp    $0x3e7,%eax
  100704:	7e 5a                	jle    100760 <irq_handle+0xa0>
  100706:	8d 98 18 fc ff ff    	lea    -0x3e8(%eax),%ebx
  10070c:	83 fb 0f             	cmp    $0xf,%ebx
  10070f:	7f 1f                	jg     100730 <irq_handle+0x70>
  100711:	8b 1c 9d 40 80 14 00 	mov    0x148040(,%ebx,4),%ebx
  100718:	85 db                	test   %ebx,%ebx
  10071a:	74 0d                	je     100729 <irq_handle+0x69>
  10071c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  100720:	ff 13                	call   *(%ebx)
  100722:	8b 5b 04             	mov    0x4(%ebx),%ebx
  100725:	85 db                	test   %ebx,%ebx
  100727:	75 f7                	jne    100720 <irq_handle+0x60>
  100729:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  10072c:	c9                   	leave  
  10072d:	c3                   	ret    
  10072e:	66 90                	xchg   %ax,%ax
  100730:	83 ec 0c             	sub    $0xc,%esp
  100733:	68 87 14 10 00       	push   $0x101487
  100738:	68 ae 15 10 00       	push   $0x1015ae
  10073d:	6a 30                	push   $0x30
  10073f:	68 4d 14 10 00       	push   $0x10144d
  100744:	68 44 13 10 00       	push   $0x101344
  100749:	e8 82 0a 00 00       	call   1011d0 <printk>
  10074e:	b8 01 00 00 00       	mov    $0x1,%eax
  100753:	d6                   	(bad)  
  100754:	83 c4 20             	add    $0x20,%esp
  100757:	eb b8                	jmp    100711 <irq_handle+0x51>
  100759:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  100760:	83 ec 08             	sub    $0x8,%esp
  100763:	ff 73 0c             	pushl  0xc(%ebx)
  100766:	50                   	push   %eax
  100767:	68 ae 15 10 00       	push   $0x1015ae
  10076c:	6a 2d                	push   $0x2d
  10076e:	68 4d 14 10 00       	push   $0x10144d
  100773:	68 54 15 10 00       	push   $0x101554
  100778:	e8 53 0a 00 00       	call   1011d0 <printk>
  10077d:	b8 01 00 00 00       	mov    $0x1,%eax
  100782:	d6                   	(bad)  
  100783:	83 c4 20             	add    $0x20,%esp
  100786:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  100789:	c9                   	leave  
  10078a:	c3                   	ret    
  10078b:	90                   	nop
  10078c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  100790:	68 ae 15 10 00       	push   $0x1015ae
  100795:	6a 29                	push   $0x29
  100797:	68 4d 14 10 00       	push   $0x10144d
  10079c:	68 08 15 10 00       	push   $0x101508
  1007a1:	e8 2a 0a 00 00       	call   1011d0 <printk>
  1007a6:	b8 01 00 00 00       	mov    $0x1,%eax
  1007ab:	d6                   	(bad)  
  1007ac:	83 c4 10             	add    $0x10,%esp
  1007af:	e9 75 ff ff ff       	jmp    100729 <irq_handle+0x69>
  1007b4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  1007b8:	89 5d 08             	mov    %ebx,0x8(%ebp)
  1007bb:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  1007be:	c9                   	leave  
  1007bf:	e9 1c 04 00 00       	jmp    100be0 <do_syscall>
  1007c4:	66 90                	xchg   %ax,%ax
  1007c6:	66 90                	xchg   %ax,%ax
  1007c8:	66 90                	xchg   %ax,%ax
  1007ca:	66 90                	xchg   %ax,%ax
  1007cc:	66 90                	xchg   %ax,%ax
  1007ce:	66 90                	xchg   %ax,%ax

001007d0 <init_idt>:
  1007d0:	55                   	push   %ebp
  1007d1:	ba 4f 03 10 00       	mov    $0x10034f,%edx
  1007d6:	b8 c0 81 14 00       	mov    $0x1481c0,%eax
  1007db:	89 d1                	mov    %edx,%ecx
  1007dd:	c1 ea 10             	shr    $0x10,%edx
  1007e0:	89 e5                	mov    %esp,%ebp
  1007e2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  1007e8:	66 89 08             	mov    %cx,(%eax)
  1007eb:	66 c7 40 02 08 00    	movw   $0x8,0x2(%eax)
  1007f1:	83 c0 08             	add    $0x8,%eax
  1007f4:	c6 40 fc 00          	movb   $0x0,-0x4(%eax)
  1007f8:	c6 40 fd 8f          	movb   $0x8f,-0x3(%eax)
  1007fc:	66 89 50 fe          	mov    %dx,-0x2(%eax)
  100800:	3d c0 89 14 00       	cmp    $0x1489c0,%eax
  100805:	75 e1                	jne    1007e8 <init_idt+0x18>
  100807:	b8 a4 02 10 00       	mov    $0x1002a4,%eax
  10080c:	ba 08 00 00 00       	mov    $0x8,%edx
  100811:	b9 08 00 00 00       	mov    $0x8,%ecx
  100816:	66 a3 c0 81 14 00    	mov    %ax,0x1481c0
  10081c:	c1 e8 10             	shr    $0x10,%eax
  10081f:	66 89 15 c2 81 14 00 	mov    %dx,0x1481c2
  100826:	66 a3 c6 81 14 00    	mov    %ax,0x1481c6
  10082c:	b8 ad 02 10 00       	mov    $0x1002ad,%eax
  100831:	ba 08 00 00 00       	mov    $0x8,%edx
  100836:	66 a3 c8 81 14 00    	mov    %ax,0x1481c8
  10083c:	c1 e8 10             	shr    $0x10,%eax
  10083f:	66 89 0d ca 81 14 00 	mov    %cx,0x1481ca
  100846:	66 a3 ce 81 14 00    	mov    %ax,0x1481ce
  10084c:	b8 b6 02 10 00       	mov    $0x1002b6,%eax
  100851:	66 89 15 d2 81 14 00 	mov    %dx,0x1481d2
  100858:	66 a3 d0 81 14 00    	mov    %ax,0x1481d0
  10085e:	c1 e8 10             	shr    $0x10,%eax
  100861:	b9 08 00 00 00       	mov    $0x8,%ecx
  100866:	66 a3 d6 81 14 00    	mov    %ax,0x1481d6
  10086c:	b8 bf 02 10 00       	mov    $0x1002bf,%eax
  100871:	ba 08 00 00 00       	mov    $0x8,%edx
  100876:	66 a3 d8 81 14 00    	mov    %ax,0x1481d8
  10087c:	c1 e8 10             	shr    $0x10,%eax
  10087f:	66 89 0d da 81 14 00 	mov    %cx,0x1481da
  100886:	66 a3 de 81 14 00    	mov    %ax,0x1481de
  10088c:	b8 c8 02 10 00       	mov    $0x1002c8,%eax
  100891:	66 89 15 e2 81 14 00 	mov    %dx,0x1481e2
  100898:	66 a3 e0 81 14 00    	mov    %ax,0x1481e0
  10089e:	c1 e8 10             	shr    $0x10,%eax
  1008a1:	b9 08 00 00 00       	mov    $0x8,%ecx
  1008a6:	66 a3 e6 81 14 00    	mov    %ax,0x1481e6
  1008ac:	b8 d1 02 10 00       	mov    $0x1002d1,%eax
  1008b1:	ba 08 00 00 00       	mov    $0x8,%edx
  1008b6:	66 a3 e8 81 14 00    	mov    %ax,0x1481e8
  1008bc:	c1 e8 10             	shr    $0x10,%eax
  1008bf:	66 89 0d ea 81 14 00 	mov    %cx,0x1481ea
  1008c6:	66 a3 ee 81 14 00    	mov    %ax,0x1481ee
  1008cc:	b8 da 02 10 00       	mov    $0x1002da,%eax
  1008d1:	66 89 15 f2 81 14 00 	mov    %dx,0x1481f2
  1008d8:	66 a3 f0 81 14 00    	mov    %ax,0x1481f0
  1008de:	c1 e8 10             	shr    $0x10,%eax
  1008e1:	c6 05 c4 81 14 00 00 	movb   $0x0,0x1481c4
  1008e8:	c6 05 c5 81 14 00 8f 	movb   $0x8f,0x1481c5
  1008ef:	c6 05 cc 81 14 00 00 	movb   $0x0,0x1481cc
  1008f6:	b9 08 00 00 00       	mov    $0x8,%ecx
  1008fb:	c6 05 cd 81 14 00 8f 	movb   $0x8f,0x1481cd
  100902:	c6 05 d4 81 14 00 00 	movb   $0x0,0x1481d4
  100909:	ba 08 00 00 00       	mov    $0x8,%edx
  10090e:	c6 05 d5 81 14 00 8f 	movb   $0x8f,0x1481d5
  100915:	c6 05 dc 81 14 00 00 	movb   $0x0,0x1481dc
  10091c:	c6 05 dd 81 14 00 8f 	movb   $0x8f,0x1481dd
  100923:	c6 05 e4 81 14 00 00 	movb   $0x0,0x1481e4
  10092a:	c6 05 e5 81 14 00 8f 	movb   $0x8f,0x1481e5
  100931:	c6 05 ec 81 14 00 00 	movb   $0x0,0x1481ec
  100938:	c6 05 ed 81 14 00 8f 	movb   $0x8f,0x1481ed
  10093f:	c6 05 f4 81 14 00 00 	movb   $0x0,0x1481f4
  100946:	c6 05 f5 81 14 00 8f 	movb   $0x8f,0x1481f5
  10094d:	66 a3 f6 81 14 00    	mov    %ax,0x1481f6
  100953:	b8 e3 02 10 00       	mov    $0x1002e3,%eax
  100958:	66 a3 f8 81 14 00    	mov    %ax,0x1481f8
  10095e:	c1 e8 10             	shr    $0x10,%eax
  100961:	66 89 0d fa 81 14 00 	mov    %cx,0x1481fa
  100968:	66 a3 fe 81 14 00    	mov    %ax,0x1481fe
  10096e:	b8 ec 02 10 00       	mov    $0x1002ec,%eax
  100973:	b9 08 00 00 00       	mov    $0x8,%ecx
  100978:	66 a3 00 82 14 00    	mov    %ax,0x148200
  10097e:	c1 e8 10             	shr    $0x10,%eax
  100981:	66 89 15 02 82 14 00 	mov    %dx,0x148202
  100988:	66 a3 06 82 14 00    	mov    %ax,0x148206
  10098e:	b8 f3 02 10 00       	mov    $0x1002f3,%eax
  100993:	66 89 0d 0a 82 14 00 	mov    %cx,0x14820a
  10099a:	66 a3 08 82 14 00    	mov    %ax,0x148208
  1009a0:	c1 e8 10             	shr    $0x10,%eax
  1009a3:	ba 08 00 00 00       	mov    $0x8,%edx
  1009a8:	66 a3 0e 82 14 00    	mov    %ax,0x14820e
  1009ae:	b8 fc 02 10 00       	mov    $0x1002fc,%eax
  1009b3:	b9 08 00 00 00       	mov    $0x8,%ecx
  1009b8:	66 a3 10 82 14 00    	mov    %ax,0x148210
  1009be:	c1 e8 10             	shr    $0x10,%eax
  1009c1:	66 89 15 12 82 14 00 	mov    %dx,0x148212
  1009c8:	66 a3 16 82 14 00    	mov    %ax,0x148216
  1009ce:	b8 03 03 10 00       	mov    $0x100303,%eax
  1009d3:	66 89 0d 1a 82 14 00 	mov    %cx,0x14821a
  1009da:	66 a3 18 82 14 00    	mov    %ax,0x148218
  1009e0:	c1 e8 10             	shr    $0x10,%eax
  1009e3:	ba 08 00 00 00       	mov    $0x8,%edx
  1009e8:	66 a3 1e 82 14 00    	mov    %ax,0x14821e
  1009ee:	b8 0a 03 10 00       	mov    $0x10030a,%eax
  1009f3:	b9 08 00 00 00       	mov    $0x8,%ecx
  1009f8:	66 a3 20 82 14 00    	mov    %ax,0x148220
  1009fe:	c1 e8 10             	shr    $0x10,%eax
  100a01:	66 89 15 22 82 14 00 	mov    %dx,0x148222
  100a08:	66 a3 26 82 14 00    	mov    %ax,0x148226
  100a0e:	b8 11 03 10 00       	mov    $0x100311,%eax
  100a13:	66 89 0d 2a 82 14 00 	mov    %cx,0x14822a
  100a1a:	66 a3 28 82 14 00    	mov    %ax,0x148228
  100a20:	c1 e8 10             	shr    $0x10,%eax
  100a23:	c6 05 fc 81 14 00 00 	movb   $0x0,0x1481fc
  100a2a:	c6 05 fd 81 14 00 8f 	movb   $0x8f,0x1481fd
  100a31:	c6 05 04 82 14 00 00 	movb   $0x0,0x148204
  100a38:	ba 08 00 00 00       	mov    $0x8,%edx
  100a3d:	c6 05 05 82 14 00 8f 	movb   $0x8f,0x148205
  100a44:	c6 05 0c 82 14 00 00 	movb   $0x0,0x14820c
  100a4b:	b9 08 00 00 00       	mov    $0x8,%ecx
  100a50:	c6 05 0d 82 14 00 8f 	movb   $0x8f,0x14820d
  100a57:	c6 05 14 82 14 00 00 	movb   $0x0,0x148214
  100a5e:	c6 05 15 82 14 00 8f 	movb   $0x8f,0x148215
  100a65:	c6 05 1c 82 14 00 00 	movb   $0x0,0x14821c
  100a6c:	c6 05 1d 82 14 00 8f 	movb   $0x8f,0x14821d
  100a73:	c6 05 24 82 14 00 00 	movb   $0x0,0x148224
  100a7a:	c6 05 25 82 14 00 8f 	movb   $0x8f,0x148225
  100a81:	c6 05 2c 82 14 00 00 	movb   $0x0,0x14822c
  100a88:	66 a3 2e 82 14 00    	mov    %ax,0x14822e
  100a8e:	b8 18 03 10 00       	mov    $0x100318,%eax
  100a93:	66 89 15 32 82 14 00 	mov    %dx,0x148232
  100a9a:	66 a3 30 82 14 00    	mov    %ax,0x148230
  100aa0:	c1 e8 10             	shr    $0x10,%eax
  100aa3:	66 89 0d c2 85 14 00 	mov    %cx,0x1485c2
  100aaa:	66 a3 36 82 14 00    	mov    %ax,0x148236
  100ab0:	b8 1f 03 10 00       	mov    $0x10031f,%eax
  100ab5:	ba 08 00 00 00       	mov    $0x8,%edx
  100aba:	66 a3 c0 85 14 00    	mov    %ax,0x1485c0
  100ac0:	c1 e8 10             	shr    $0x10,%eax
  100ac3:	b9 08 00 00 00       	mov    $0x8,%ecx
  100ac8:	66 a3 c6 85 14 00    	mov    %ax,0x1485c6
  100ace:	b8 2b 03 10 00       	mov    $0x10032b,%eax
  100ad3:	c6 05 2d 82 14 00 8f 	movb   $0x8f,0x14822d
  100ada:	66 a3 c0 82 14 00    	mov    %ax,0x1482c0
  100ae0:	c1 e8 10             	shr    $0x10,%eax
  100ae3:	c6 05 34 82 14 00 00 	movb   $0x0,0x148234
  100aea:	66 a3 c6 82 14 00    	mov    %ax,0x1482c6
  100af0:	b8 43 03 10 00       	mov    $0x100343,%eax
  100af5:	c6 05 35 82 14 00 8f 	movb   $0x8f,0x148235
  100afc:	66 a3 30 83 14 00    	mov    %ax,0x148330
  100b02:	c1 e8 10             	shr    $0x10,%eax
  100b05:	c6 05 c4 85 14 00 00 	movb   $0x0,0x1485c4
  100b0c:	66 a3 36 83 14 00    	mov    %ax,0x148336
  100b12:	b8 ff 07 00 00       	mov    $0x7ff,%eax
  100b17:	c6 05 c5 85 14 00 ef 	movb   $0xef,0x1485c5
  100b1e:	66 a3 80 81 14 00    	mov    %ax,0x148180
  100b24:	b8 c0 81 14 00       	mov    $0x1481c0,%eax
  100b29:	66 89 15 c2 82 14 00 	mov    %dx,0x1482c2
  100b30:	66 a3 82 81 14 00    	mov    %ax,0x148182
  100b36:	c1 e8 10             	shr    $0x10,%eax
  100b39:	c6 05 c4 82 14 00 00 	movb   $0x0,0x1482c4
  100b40:	66 a3 84 81 14 00    	mov    %ax,0x148184
  100b46:	c6 05 c5 82 14 00 8e 	movb   $0x8e,0x1482c5
  100b4d:	b8 80 81 14 00       	mov    $0x148180,%eax
  100b52:	66 89 0d 32 83 14 00 	mov    %cx,0x148332
  100b59:	c6 05 34 83 14 00 00 	movb   $0x0,0x148334
  100b60:	c6 05 35 83 14 00 8e 	movb   $0x8e,0x148335
  100b67:	0f 01 18             	lidtl  (%eax)
  100b6a:	5d                   	pop    %ebp
  100b6b:	c3                   	ret    
  100b6c:	66 90                	xchg   %ax,%ax
  100b6e:	66 90                	xchg   %ax,%ax

00100b70 <init_i8259>:
  100b70:	55                   	push   %ebp
  100b71:	ba 21 00 00 00       	mov    $0x21,%edx
  100b76:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  100b7b:	89 e5                	mov    %esp,%ebp
  100b7d:	ee                   	out    %al,(%dx)
  100b7e:	b2 a1                	mov    $0xa1,%dl
  100b80:	ee                   	out    %al,(%dx)
  100b81:	b8 11 00 00 00       	mov    $0x11,%eax
  100b86:	b2 20                	mov    $0x20,%dl
  100b88:	ee                   	out    %al,(%dx)
  100b89:	b8 20 00 00 00       	mov    $0x20,%eax
  100b8e:	b2 21                	mov    $0x21,%dl
  100b90:	ee                   	out    %al,(%dx)
  100b91:	b8 04 00 00 00       	mov    $0x4,%eax
  100b96:	ee                   	out    %al,(%dx)
  100b97:	b8 03 00 00 00       	mov    $0x3,%eax
  100b9c:	ee                   	out    %al,(%dx)
  100b9d:	b8 11 00 00 00       	mov    $0x11,%eax
  100ba2:	b2 a0                	mov    $0xa0,%dl
  100ba4:	ee                   	out    %al,(%dx)
  100ba5:	b8 28 00 00 00       	mov    $0x28,%eax
  100baa:	b2 a1                	mov    $0xa1,%dl
  100bac:	ee                   	out    %al,(%dx)
  100bad:	b8 02 00 00 00       	mov    $0x2,%eax
  100bb2:	ee                   	out    %al,(%dx)
  100bb3:	b8 03 00 00 00       	mov    $0x3,%eax
  100bb8:	ee                   	out    %al,(%dx)
  100bb9:	b8 68 00 00 00       	mov    $0x68,%eax
  100bbe:	b2 20                	mov    $0x20,%dl
  100bc0:	ee                   	out    %al,(%dx)
  100bc1:	b8 0a 00 00 00       	mov    $0xa,%eax
  100bc6:	ee                   	out    %al,(%dx)
  100bc7:	b8 68 00 00 00       	mov    $0x68,%eax
  100bcc:	b2 a0                	mov    $0xa0,%dl
  100bce:	ee                   	out    %al,(%dx)
  100bcf:	b8 0a 00 00 00       	mov    $0xa,%eax
  100bd4:	ee                   	out    %al,(%dx)
  100bd5:	5d                   	pop    %ebp
  100bd6:	c3                   	ret    
  100bd7:	66 90                	xchg   %ax,%ax
  100bd9:	66 90                	xchg   %ax,%ax
  100bdb:	66 90                	xchg   %ax,%ax
  100bdd:	66 90                	xchg   %ax,%ax
  100bdf:	90                   	nop

00100be0 <do_syscall>:
  100be0:	55                   	push   %ebp
  100be1:	89 e5                	mov    %esp,%ebp
  100be3:	83 ec 08             	sub    $0x8,%esp
  100be6:	8b 55 08             	mov    0x8(%ebp),%edx
  100be9:	8b 42 08             	mov    0x8(%edx),%eax
  100bec:	85 c0                	test   %eax,%eax
  100bee:	74 38                	je     100c28 <do_syscall+0x48>
  100bf0:	83 f8 2d             	cmp    $0x2d,%eax
  100bf3:	75 0b                	jne    100c00 <do_syscall+0x20>
  100bf5:	c7 42 08 00 00 00 00 	movl   $0x0,0x8(%edx)
  100bfc:	c9                   	leave  
  100bfd:	c3                   	ret    
  100bfe:	66 90                	xchg   %ax,%ax
  100c00:	83 ec 0c             	sub    $0xc,%esp
  100c03:	50                   	push   %eax
  100c04:	68 3c 16 10 00       	push   $0x10163c
  100c09:	6a 20                	push   $0x20
  100c0b:	68 c8 15 10 00       	push   $0x1015c8
  100c10:	68 e8 15 10 00       	push   $0x1015e8
  100c15:	e8 b6 05 00 00       	call   1011d0 <printk>
  100c1a:	b8 01 00 00 00       	mov    $0x1,%eax
  100c1f:	d6                   	(bad)  
  100c20:	83 c4 20             	add    $0x20,%esp
  100c23:	c9                   	leave  
  100c24:	c3                   	ret    
  100c25:	8d 76 00             	lea    0x0(%esi),%esi
  100c28:	fa                   	cli    
  100c29:	83 ec 08             	sub    $0x8,%esp
  100c2c:	ff 72 1c             	pushl  0x1c(%edx)
  100c2f:	ff 72 04             	pushl  0x4(%edx)
  100c32:	e8 d9 f9 ff ff       	call   100610 <add_irq_handle>
  100c37:	fb                   	sti    
  100c38:	83 c4 10             	add    $0x10,%esp
  100c3b:	c9                   	leave  
  100c3c:	c3                   	ret    
  100c3d:	66 90                	xchg   %ax,%ax
  100c3f:	90                   	nop

00100c40 <loader>:
  100c40:	55                   	push   %ebp
  100c41:	89 e5                	mov    %esp,%ebp
  100c43:	57                   	push   %edi
  100c44:	56                   	push   %esi
  100c45:	53                   	push   %ebx
  100c46:	8d bd e8 ef ff ff    	lea    -0x1018(%ebp),%edi
  100c4c:	81 ec 20 10 00 00    	sub    $0x1020,%esp
  100c52:	68 00 10 00 00       	push   $0x1000
  100c57:	6a 00                	push   $0x0
  100c59:	57                   	push   %edi
  100c5a:	e8 11 05 00 00       	call   101170 <ramdisk_read>
  100c5f:	83 c4 10             	add    $0x10,%esp
  100c62:	81 bd e8 ef ff ff 7f 	cmpl   $0x464c457f,-0x1018(%ebp)
  100c69:	45 4c 46 
  100c6c:	74 06                	je     100c74 <loader+0x34>
  100c6e:	b8 01 00 00 00       	mov    $0x1,%eax
  100c73:	d6                   	(bad)  
  100c74:	31 f6                	xor    %esi,%esi
  100c76:	66 83 bd 14 f0 ff ff 	cmpw   $0x0,-0xfec(%ebp)
  100c7d:	00 
  100c7e:	75 16                	jne    100c96 <loader+0x56>
  100c80:	eb 6e                	jmp    100cf0 <loader+0xb0>
  100c82:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  100c88:	0f b7 85 14 f0 ff ff 	movzwl -0xfec(%ebp),%eax
  100c8f:	83 c6 01             	add    $0x1,%esi
  100c92:	39 f0                	cmp    %esi,%eax
  100c94:	7e 5a                	jle    100cf0 <loader+0xb0>
  100c96:	0f b7 9d 12 f0 ff ff 	movzwl -0xfee(%ebp),%ebx
  100c9d:	0f af de             	imul   %esi,%ebx
  100ca0:	03 9d 04 f0 ff ff    	add    -0xffc(%ebp),%ebx
  100ca6:	01 fb                	add    %edi,%ebx
  100ca8:	83 3b 01             	cmpl   $0x1,(%ebx)
  100cab:	75 db                	jne    100c88 <loader+0x48>
  100cad:	83 ec 04             	sub    $0x4,%esp
  100cb0:	ff 73 10             	pushl  0x10(%ebx)
  100cb3:	ff 73 04             	pushl  0x4(%ebx)
  100cb6:	ff 73 08             	pushl  0x8(%ebx)
  100cb9:	83 c6 01             	add    $0x1,%esi
  100cbc:	e8 af 04 00 00       	call   101170 <ramdisk_read>
  100cc1:	8b 43 10             	mov    0x10(%ebx),%eax
  100cc4:	8b 53 14             	mov    0x14(%ebx),%edx
  100cc7:	83 c4 0c             	add    $0xc,%esp
  100cca:	29 c2                	sub    %eax,%edx
  100ccc:	52                   	push   %edx
  100ccd:	6a 00                	push   $0x0
  100ccf:	03 43 08             	add    0x8(%ebx),%eax
  100cd2:	50                   	push   %eax
  100cd3:	e8 b0 05 00 00       	call   101288 <memset>
  100cd8:	0f b7 85 14 f0 ff ff 	movzwl -0xfec(%ebp),%eax
  100cdf:	83 c4 10             	add    $0x10,%esp
  100ce2:	39 f0                	cmp    %esi,%eax
  100ce4:	7f b0                	jg     100c96 <loader+0x56>
  100ce6:	8d 76 00             	lea    0x0(%esi),%esi
  100ce9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
  100cf0:	8b 85 00 f0 ff ff    	mov    -0x1000(%ebp),%eax
  100cf6:	89 85 e4 ef ff ff    	mov    %eax,-0x101c(%ebp)
  100cfc:	8b 85 e4 ef ff ff    	mov    -0x101c(%ebp),%eax
  100d02:	8d 65 f4             	lea    -0xc(%ebp),%esp
  100d05:	5b                   	pop    %ebx
  100d06:	5e                   	pop    %esi
  100d07:	5f                   	pop    %edi
  100d08:	5d                   	pop    %ebp
  100d09:	c3                   	ret    
  100d0a:	66 90                	xchg   %ax,%ax
  100d0c:	66 90                	xchg   %ax,%ax
  100d0e:	66 90                	xchg   %ax,%ax

00100d10 <init_cond>:
  100d10:	55                   	push   %ebp
  100d11:	89 e5                	mov    %esp,%ebp
  100d13:	83 ec 08             	sub    $0x8,%esp
  100d16:	68 dc 16 10 00       	push   $0x1016dc
  100d1b:	6a 4a                	push   $0x4a
  100d1d:	68 47 16 10 00       	push   $0x101647
  100d22:	68 5c 16 10 00       	push   $0x10165c
  100d27:	e8 a4 04 00 00       	call   1011d0 <printk>
  100d2c:	e8 0f ff ff ff       	call   100c40 <loader>
  100d31:	bd 00 00 00 00       	mov    $0x0,%ebp
  100d36:	83 ec 10             	sub    $0x10,%esp
  100d39:	ff d0                	call   *%eax
  100d3b:	68 dc 16 10 00       	push   $0x1016dc
  100d40:	6a 6b                	push   $0x6b
  100d42:	68 47 16 10 00       	push   $0x101647
  100d47:	68 90 16 10 00       	push   $0x101690
  100d4c:	e8 7f 04 00 00       	call   1011d0 <printk>
  100d51:	b8 01 00 00 00       	mov    $0x1,%eax
  100d56:	d6                   	(bad)  
  100d57:	83 c4 20             	add    $0x20,%esp
  100d5a:	c9                   	leave  
  100d5b:	c3                   	ret    
  100d5c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00100d60 <init>:
  100d60:	55                   	push   %ebp
  100d61:	b8 10 0d 10 00       	mov    $0x100d10,%eax
  100d66:	89 e5                	mov    %esp,%ebp
  100d68:	83 ec 08             	sub    $0x8,%esp
  100d6b:	ff e0                	jmp    *%eax
  100d6d:	68 e6 16 10 00       	push   $0x1016e6
  100d72:	6a 24                	push   $0x24
  100d74:	68 47 16 10 00       	push   $0x101647
  100d79:	68 90 16 10 00       	push   $0x101690
  100d7e:	e8 4d 04 00 00       	call   1011d0 <printk>
  100d83:	b8 01 00 00 00       	mov    $0x1,%eax
  100d88:	d6                   	(bad)  
  100d89:	83 c4 10             	add    $0x10,%esp
  100d8c:	c9                   	leave  
  100d8d:	c3                   	ret    
  100d8e:	66 90                	xchg   %ax,%ax

00100d90 <buf_fetch>:
  100d90:	55                   	push   %ebp
  100d91:	89 c2                	mov    %eax,%edx
  100d93:	89 e5                	mov    %esp,%ebp
  100d95:	57                   	push   %edi
  100d96:	56                   	push   %esi
  100d97:	53                   	push   %ebx
  100d98:	89 c3                	mov    %eax,%ebx
  100d9a:	83 e3 7f             	and    $0x7f,%ebx
  100d9d:	89 d8                	mov    %ebx,%eax
  100d9f:	83 ec 1c             	sub    $0x1c,%esp
  100da2:	c1 e0 09             	shl    $0x9,%eax
  100da5:	8d 0c d8             	lea    (%eax,%ebx,8),%ecx
  100da8:	8d 81 c0 89 14 00    	lea    0x1489c0(%ecx),%eax
  100dae:	80 78 04 01          	cmpb   $0x1,0x4(%eax)
  100db2:	74 5c                	je     100e10 <buf_fetch+0x80>
  100db4:	89 d7                	mov    %edx,%edi
  100db6:	89 da                	mov    %ebx,%edx
  100db8:	c1 e2 09             	shl    $0x9,%edx
  100dbb:	8d 0c da             	lea    (%edx,%ebx,8),%ecx
  100dbe:	8d 91 c0 89 14 00    	lea    0x1489c0(%ecx),%edx
  100dc4:	66 81 7a 04 01 01    	cmpw   $0x101,0x4(%edx)
  100dca:	74 54                	je     100e20 <buf_fetch+0x90>
  100dcc:	8d 72 06             	lea    0x6(%edx),%esi
  100dcf:	83 ec 08             	sub    $0x8,%esp
  100dd2:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  100dd5:	57                   	push   %edi
  100dd6:	56                   	push   %esi
  100dd7:	e8 e4 01 00 00       	call   100fc0 <disk_do_read>
  100ddc:	89 da                	mov    %ebx,%edx
  100dde:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  100de1:	83 c4 10             	add    $0x10,%esp
  100de4:	c1 e2 09             	shl    $0x9,%edx
  100de7:	8d 0c da             	lea    (%edx,%ebx,8),%ecx
  100dea:	c6 81 c4 89 14 00 01 	movb   $0x1,0x1489c4(%ecx)
  100df1:	89 b9 c0 89 14 00    	mov    %edi,0x1489c0(%ecx)
  100df7:	c6 81 c5 89 14 00 00 	movb   $0x0,0x1489c5(%ecx)
  100dfe:	8d 65 f4             	lea    -0xc(%ebp),%esp
  100e01:	5b                   	pop    %ebx
  100e02:	5e                   	pop    %esi
  100e03:	5f                   	pop    %edi
  100e04:	5d                   	pop    %ebp
  100e05:	c3                   	ret    
  100e06:	8d 76 00             	lea    0x0(%esi),%esi
  100e09:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
  100e10:	39 91 c0 89 14 00    	cmp    %edx,0x1489c0(%ecx)
  100e16:	75 9c                	jne    100db4 <buf_fetch+0x24>
  100e18:	eb e4                	jmp    100dfe <buf_fetch+0x6e>
  100e1a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  100e20:	8d 72 06             	lea    0x6(%edx),%esi
  100e23:	83 ec 08             	sub    $0x8,%esp
  100e26:	ff b1 c0 89 14 00    	pushl  0x1489c0(%ecx)
  100e2c:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  100e2f:	56                   	push   %esi
  100e30:	e8 cb 01 00 00       	call   101000 <disk_do_write>
  100e35:	83 c4 10             	add    $0x10,%esp
  100e38:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  100e3b:	eb 92                	jmp    100dcf <buf_fetch+0x3f>
  100e3d:	8d 76 00             	lea    0x0(%esi),%esi

00100e40 <buf_init>:
  100e40:	55                   	push   %ebp
  100e41:	b8 c4 89 14 00       	mov    $0x1489c4,%eax
  100e46:	89 e5                	mov    %esp,%ebp
  100e48:	90                   	nop
  100e49:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  100e50:	c6 00 00             	movb   $0x0,(%eax)
  100e53:	05 08 02 00 00       	add    $0x208,%eax
  100e58:	3d c4 8d 15 00       	cmp    $0x158dc4,%eax
  100e5d:	75 f1                	jne    100e50 <buf_init+0x10>
  100e5f:	5d                   	pop    %ebp
  100e60:	c3                   	ret    
  100e61:	eb 0d                	jmp    100e70 <buf_writeback>
  100e63:	90                   	nop
  100e64:	90                   	nop
  100e65:	90                   	nop
  100e66:	90                   	nop
  100e67:	90                   	nop
  100e68:	90                   	nop
  100e69:	90                   	nop
  100e6a:	90                   	nop
  100e6b:	90                   	nop
  100e6c:	90                   	nop
  100e6d:	90                   	nop
  100e6e:	90                   	nop
  100e6f:	90                   	nop

00100e70 <buf_writeback>:
  100e70:	55                   	push   %ebp
  100e71:	89 e5                	mov    %esp,%ebp
  100e73:	53                   	push   %ebx
  100e74:	bb c6 89 14 00       	mov    $0x1489c6,%ebx
  100e79:	83 ec 04             	sub    $0x4,%esp
  100e7c:	eb 10                	jmp    100e8e <buf_writeback+0x1e>
  100e7e:	66 90                	xchg   %ax,%ax
  100e80:	81 c3 08 02 00 00    	add    $0x208,%ebx
  100e86:	81 fb c6 8d 15 00    	cmp    $0x158dc6,%ebx
  100e8c:	74 32                	je     100ec0 <buf_writeback+0x50>
  100e8e:	80 7b ff 01          	cmpb   $0x1,-0x1(%ebx)
  100e92:	75 ec                	jne    100e80 <buf_writeback+0x10>
  100e94:	83 ec 08             	sub    $0x8,%esp
  100e97:	ff 73 fa             	pushl  -0x6(%ebx)
  100e9a:	53                   	push   %ebx
  100e9b:	81 c3 08 02 00 00    	add    $0x208,%ebx
  100ea1:	e8 5a 01 00 00       	call   101000 <disk_do_write>
  100ea6:	c6 83 f7 fd ff ff 00 	movb   $0x0,-0x209(%ebx)
  100ead:	83 c4 10             	add    $0x10,%esp
  100eb0:	81 fb c6 8d 15 00    	cmp    $0x158dc6,%ebx
  100eb6:	75 d6                	jne    100e8e <buf_writeback+0x1e>
  100eb8:	90                   	nop
  100eb9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  100ec0:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  100ec3:	c9                   	leave  
  100ec4:	c3                   	ret    
  100ec5:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  100ec9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00100ed0 <read_byte>:
  100ed0:	55                   	push   %ebp
  100ed1:	89 e5                	mov    %esp,%ebp
  100ed3:	53                   	push   %ebx
  100ed4:	83 ec 04             	sub    $0x4,%esp
  100ed7:	8b 5d 08             	mov    0x8(%ebp),%ebx
  100eda:	89 d8                	mov    %ebx,%eax
  100edc:	81 e3 ff 01 00 00    	and    $0x1ff,%ebx
  100ee2:	c1 e8 09             	shr    $0x9,%eax
  100ee5:	e8 a6 fe ff ff       	call   100d90 <buf_fetch>
  100eea:	0f b6 44 18 06       	movzbl 0x6(%eax,%ebx,1),%eax
  100eef:	83 c4 04             	add    $0x4,%esp
  100ef2:	5b                   	pop    %ebx
  100ef3:	5d                   	pop    %ebp
  100ef4:	c3                   	ret    
  100ef5:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  100ef9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00100f00 <write_byte>:
  100f00:	55                   	push   %ebp
  100f01:	89 e5                	mov    %esp,%ebp
  100f03:	56                   	push   %esi
  100f04:	53                   	push   %ebx
  100f05:	8b 5d 08             	mov    0x8(%ebp),%ebx
  100f08:	8b 75 0c             	mov    0xc(%ebp),%esi
  100f0b:	89 d8                	mov    %ebx,%eax
  100f0d:	81 e3 ff 01 00 00    	and    $0x1ff,%ebx
  100f13:	c1 e8 09             	shr    $0x9,%eax
  100f16:	e8 75 fe ff ff       	call   100d90 <buf_fetch>
  100f1b:	89 f2                	mov    %esi,%edx
  100f1d:	88 54 18 06          	mov    %dl,0x6(%eax,%ebx,1)
  100f21:	c6 40 05 01          	movb   $0x1,0x5(%eax)
  100f25:	5b                   	pop    %ebx
  100f26:	5e                   	pop    %esi
  100f27:	5d                   	pop    %ebp
  100f28:	c3                   	ret    
  100f29:	66 90                	xchg   %ax,%ax
  100f2b:	66 90                	xchg   %ax,%ax
  100f2d:	66 90                	xchg   %ax,%ax
  100f2f:	90                   	nop

00100f30 <dma_prepare>:
  100f30:	55                   	push   %ebp
  100f31:	89 e5                	mov    %esp,%ebp
  100f33:	83 ec 08             	sub    $0x8,%esp
  100f36:	68 07 17 10 00       	push   $0x101707
  100f3b:	6a 1d                	push   $0x1d
  100f3d:	68 eb 16 10 00       	push   $0x1016eb
  100f42:	68 c4 13 10 00       	push   $0x1013c4
  100f47:	e8 84 02 00 00       	call   1011d0 <printk>
  100f4c:	b8 01 00 00 00       	mov    $0x1,%eax
  100f51:	d6                   	(bad)  
  100f52:	83 c4 10             	add    $0x10,%esp
  100f55:	c9                   	leave  
  100f56:	c3                   	ret    
  100f57:	89 f6                	mov    %esi,%esi
  100f59:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00100f60 <dma_issue_read>:
  100f60:	55                   	push   %ebp
  100f61:	ba 40 c0 ff ff       	mov    $0xffffc040,%edx
  100f66:	89 e5                	mov    %esp,%ebp
  100f68:	ec                   	in     (%dx),%al
  100f69:	83 c8 09             	or     $0x9,%eax
  100f6c:	ee                   	out    %al,(%dx)
  100f6d:	5d                   	pop    %ebp
  100f6e:	c3                   	ret    
  100f6f:	90                   	nop

00100f70 <ide_prepare>:
  100f70:	55                   	push   %ebp
  100f71:	89 c1                	mov    %eax,%ecx
  100f73:	ba f7 01 00 00       	mov    $0x1f7,%edx
  100f78:	89 e5                	mov    %esp,%ebp
  100f7a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  100f80:	ec                   	in     (%dx),%al
  100f81:	83 e0 c0             	and    $0xffffffc0,%eax
  100f84:	3c 40                	cmp    $0x40,%al
  100f86:	75 f8                	jne    100f80 <ide_prepare+0x10>
  100f88:	ba f1 01 00 00       	mov    $0x1f1,%edx
  100f8d:	31 c0                	xor    %eax,%eax
  100f8f:	ee                   	out    %al,(%dx)
  100f90:	b8 01 00 00 00       	mov    $0x1,%eax
  100f95:	b2 f2                	mov    $0xf2,%dl
  100f97:	ee                   	out    %al,(%dx)
  100f98:	b2 f3                	mov    $0xf3,%dl
  100f9a:	89 c8                	mov    %ecx,%eax
  100f9c:	ee                   	out    %al,(%dx)
  100f9d:	89 c8                	mov    %ecx,%eax
  100f9f:	b2 f4                	mov    $0xf4,%dl
  100fa1:	c1 e8 08             	shr    $0x8,%eax
  100fa4:	ee                   	out    %al,(%dx)
  100fa5:	89 c8                	mov    %ecx,%eax
  100fa7:	b2 f5                	mov    $0xf5,%dl
  100fa9:	c1 e8 10             	shr    $0x10,%eax
  100fac:	ee                   	out    %al,(%dx)
  100fad:	89 c8                	mov    %ecx,%eax
  100faf:	b2 f6                	mov    $0xf6,%dl
  100fb1:	c1 e8 18             	shr    $0x18,%eax
  100fb4:	83 c8 e0             	or     $0xffffffe0,%eax
  100fb7:	ee                   	out    %al,(%dx)
  100fb8:	5d                   	pop    %ebp
  100fb9:	c3                   	ret    
  100fba:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00100fc0 <disk_do_read>:
  100fc0:	55                   	push   %ebp
  100fc1:	89 e5                	mov    %esp,%ebp
  100fc3:	53                   	push   %ebx
  100fc4:	8b 45 0c             	mov    0xc(%ebp),%eax
  100fc7:	e8 a4 ff ff ff       	call   100f70 <ide_prepare>
  100fcc:	ba f7 01 00 00       	mov    $0x1f7,%edx
  100fd1:	b8 20 00 00 00       	mov    $0x20,%eax
  100fd6:	ee                   	out    %al,(%dx)
  100fd7:	8b 4d 08             	mov    0x8(%ebp),%ecx
  100fda:	b2 f0                	mov    $0xf0,%dl
  100fdc:	8d 99 00 02 00 00    	lea    0x200(%ecx),%ebx
  100fe2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  100fe8:	ed                   	in     (%dx),%eax
  100fe9:	89 01                	mov    %eax,(%ecx)
  100feb:	83 c1 04             	add    $0x4,%ecx
  100fee:	39 d9                	cmp    %ebx,%ecx
  100ff0:	75 f6                	jne    100fe8 <disk_do_read+0x28>
  100ff2:	5b                   	pop    %ebx
  100ff3:	5d                   	pop    %ebp
  100ff4:	c3                   	ret    
  100ff5:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  100ff9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00101000 <disk_do_write>:
  101000:	55                   	push   %ebp
  101001:	89 e5                	mov    %esp,%ebp
  101003:	53                   	push   %ebx
  101004:	8b 45 0c             	mov    0xc(%ebp),%eax
  101007:	e8 64 ff ff ff       	call   100f70 <ide_prepare>
  10100c:	ba f7 01 00 00       	mov    $0x1f7,%edx
  101011:	b8 30 00 00 00       	mov    $0x30,%eax
  101016:	ee                   	out    %al,(%dx)
  101017:	8b 4d 08             	mov    0x8(%ebp),%ecx
  10101a:	b2 f0                	mov    $0xf0,%dl
  10101c:	8d 99 00 02 00 00    	lea    0x200(%ecx),%ebx
  101022:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  101028:	8b 01                	mov    (%ecx),%eax
  10102a:	ef                   	out    %eax,(%dx)
  10102b:	83 c1 04             	add    $0x4,%ecx
  10102e:	39 d9                	cmp    %ebx,%ecx
  101030:	75 f6                	jne    101028 <disk_do_write+0x28>
  101032:	5b                   	pop    %ebx
  101033:	5d                   	pop    %ebp
  101034:	c3                   	ret    
  101035:	66 90                	xchg   %ax,%ax
  101037:	66 90                	xchg   %ax,%ax
  101039:	66 90                	xchg   %ax,%ax
  10103b:	66 90                	xchg   %ax,%ax
  10103d:	66 90                	xchg   %ax,%ax
  10103f:	90                   	nop

00101040 <ide_intr>:
  101040:	55                   	push   %ebp
  101041:	c7 05 c4 8d 15 00 01 	movl   $0x1,0x158dc4
  101048:	00 00 00 
  10104b:	89 e5                	mov    %esp,%ebp
  10104d:	5d                   	pop    %ebp
  10104e:	c3                   	ret    
  10104f:	90                   	nop

00101050 <ide_writeback>:
  101050:	a1 c0 8d 15 00       	mov    0x158dc0,%eax
  101055:	83 c0 01             	add    $0x1,%eax
  101058:	83 f8 64             	cmp    $0x64,%eax
  10105b:	a3 c0 8d 15 00       	mov    %eax,0x158dc0
  101060:	74 06                	je     101068 <ide_writeback+0x18>
  101062:	c3                   	ret    
  101063:	90                   	nop
  101064:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  101068:	55                   	push   %ebp
  101069:	89 e5                	mov    %esp,%ebp
  10106b:	83 ec 08             	sub    $0x8,%esp
  10106e:	e8 fd fd ff ff       	call   100e70 <buf_writeback>
  101073:	c7 05 c0 8d 15 00 00 	movl   $0x0,0x158dc0
  10107a:	00 00 00 
  10107d:	c9                   	leave  
  10107e:	c3                   	ret    
  10107f:	90                   	nop

00101080 <ide_read>:
  101080:	55                   	push   %ebp
  101081:	89 e5                	mov    %esp,%ebp
  101083:	57                   	push   %edi
  101084:	56                   	push   %esi
  101085:	53                   	push   %ebx
  101086:	83 ec 0c             	sub    $0xc,%esp
  101089:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  10108c:	8b 45 10             	mov    0x10(%ebp),%eax
  10108f:	8b 7d 08             	mov    0x8(%ebp),%edi
  101092:	8d 34 18             	lea    (%eax,%ebx,1),%esi
  101095:	29 df                	sub    %ebx,%edi
  101097:	85 c0                	test   %eax,%eax
  101099:	74 1b                	je     1010b6 <ide_read+0x36>
  10109b:	90                   	nop
  10109c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  1010a0:	83 ec 0c             	sub    $0xc,%esp
  1010a3:	53                   	push   %ebx
  1010a4:	e8 27 fe ff ff       	call   100ed0 <read_byte>
  1010a9:	88 04 1f             	mov    %al,(%edi,%ebx,1)
  1010ac:	83 c3 01             	add    $0x1,%ebx
  1010af:	83 c4 10             	add    $0x10,%esp
  1010b2:	39 f3                	cmp    %esi,%ebx
  1010b4:	75 ea                	jne    1010a0 <ide_read+0x20>
  1010b6:	8d 65 f4             	lea    -0xc(%ebp),%esp
  1010b9:	5b                   	pop    %ebx
  1010ba:	5e                   	pop    %esi
  1010bb:	5f                   	pop    %edi
  1010bc:	5d                   	pop    %ebp
  1010bd:	c3                   	ret    
  1010be:	66 90                	xchg   %ax,%ax

001010c0 <ide_write>:
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
  1010d9:	74 1d                	je     1010f8 <ide_write+0x38>
  1010db:	90                   	nop
  1010dc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  1010e0:	0f b6 04 1f          	movzbl (%edi,%ebx,1),%eax
  1010e4:	83 ec 08             	sub    $0x8,%esp
  1010e7:	50                   	push   %eax
  1010e8:	53                   	push   %ebx
  1010e9:	83 c3 01             	add    $0x1,%ebx
  1010ec:	e8 0f fe ff ff       	call   100f00 <write_byte>
  1010f1:	83 c4 10             	add    $0x10,%esp
  1010f4:	39 f3                	cmp    %esi,%ebx
  1010f6:	75 e8                	jne    1010e0 <ide_write+0x20>
  1010f8:	8d 65 f4             	lea    -0xc(%ebp),%esp
  1010fb:	5b                   	pop    %ebx
  1010fc:	5e                   	pop    %esi
  1010fd:	5f                   	pop    %edi
  1010fe:	5d                   	pop    %ebp
  1010ff:	c3                   	ret    

00101100 <clear_ide_intr>:
  101100:	55                   	push   %ebp
  101101:	c7 05 c4 8d 15 00 00 	movl   $0x0,0x158dc4
  101108:	00 00 00 
  10110b:	89 e5                	mov    %esp,%ebp
  10110d:	5d                   	pop    %ebp
  10110e:	c3                   	ret    
  10110f:	90                   	nop

00101110 <wait_ide_intr>:
  101110:	a1 c4 8d 15 00       	mov    0x158dc4,%eax
  101115:	55                   	push   %ebp
  101116:	89 e5                	mov    %esp,%ebp
  101118:	85 c0                	test   %eax,%eax
  10111a:	75 0e                	jne    10112a <wait_ide_intr+0x1a>
  10111c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  101120:	f4                   	hlt    
  101121:	a1 c4 8d 15 00       	mov    0x158dc4,%eax
  101126:	85 c0                	test   %eax,%eax
  101128:	74 f6                	je     101120 <wait_ide_intr+0x10>
  10112a:	c7 05 c4 8d 15 00 00 	movl   $0x0,0x158dc4
  101131:	00 00 00 
  101134:	5d                   	pop    %ebp
  101135:	c3                   	ret    
  101136:	8d 76 00             	lea    0x0(%esi),%esi
  101139:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00101140 <init_ide>:
  101140:	55                   	push   %ebp
  101141:	89 e5                	mov    %esp,%ebp
  101143:	83 ec 08             	sub    $0x8,%esp
  101146:	e8 f5 fc ff ff       	call   100e40 <buf_init>
  10114b:	83 ec 08             	sub    $0x8,%esp
  10114e:	68 50 10 10 00       	push   $0x101050
  101153:	6a 00                	push   $0x0
  101155:	e8 b6 f4 ff ff       	call   100610 <add_irq_handle>
  10115a:	58                   	pop    %eax
  10115b:	5a                   	pop    %edx
  10115c:	68 40 10 10 00       	push   $0x101040
  101161:	6a 0e                	push   $0xe
  101163:	e8 a8 f4 ff ff       	call   100610 <add_irq_handle>
  101168:	83 c4 10             	add    $0x10,%esp
  10116b:	c9                   	leave  
  10116c:	c3                   	ret    
  10116d:	66 90                	xchg   %ax,%ax
  10116f:	90                   	nop

00101170 <ramdisk_read>:
  101170:	55                   	push   %ebp
  101171:	89 e5                	mov    %esp,%ebp
  101173:	5d                   	pop    %ebp
  101174:	e9 c7 00 00 00       	jmp    101240 <memcpy>
  101179:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00101180 <ramdisk_write>:
  101180:	55                   	push   %ebp
  101181:	89 e5                	mov    %esp,%ebp
  101183:	8b 45 0c             	mov    0xc(%ebp),%eax
  101186:	8b 55 08             	mov    0x8(%ebp),%edx
  101189:	89 45 08             	mov    %eax,0x8(%ebp)
  10118c:	89 55 0c             	mov    %edx,0xc(%ebp)
  10118f:	5d                   	pop    %ebp
  101190:	e9 ab 00 00 00       	jmp    101240 <memcpy>
  101195:	66 90                	xchg   %ax,%ax
  101197:	66 90                	xchg   %ax,%ax
  101199:	66 90                	xchg   %ax,%ax
  10119b:	66 90                	xchg   %ax,%ax
  10119d:	66 90                	xchg   %ax,%ax
  10119f:	90                   	nop

001011a0 <sbrk>:
  1011a0:	55                   	push   %ebp
  1011a1:	89 e5                	mov    %esp,%ebp
  1011a3:	83 ec 08             	sub    $0x8,%esp
  1011a6:	68 29 17 10 00       	push   $0x101729
  1011ab:	6a 08                	push   $0x8
  1011ad:	68 13 17 10 00       	push   $0x101713
  1011b2:	68 90 16 10 00       	push   $0x101690
  1011b7:	e8 14 00 00 00       	call   1011d0 <printk>
  1011bc:	b8 01 00 00 00       	mov    $0x1,%eax
  1011c1:	d6                   	(bad)  
  1011c2:	30 c0                	xor    %al,%al
  1011c4:	c9                   	leave  
  1011c5:	c3                   	ret    
  1011c6:	66 90                	xchg   %ax,%ax
  1011c8:	66 90                	xchg   %ax,%ax
  1011ca:	66 90                	xchg   %ax,%ax
  1011cc:	66 90                	xchg   %ax,%ax
  1011ce:	66 90                	xchg   %ax,%ax

001011d0 <printk>:
  1011d0:	55                   	push   %ebp
  1011d1:	89 e5                	mov    %esp,%ebp
  1011d3:	5d                   	pop    %ebp
  1011d4:	c3                   	ret    
  1011d5:	66 90                	xchg   %ax,%ax
  1011d7:	66 90                	xchg   %ax,%ax
  1011d9:	66 90                	xchg   %ax,%ax
  1011db:	66 90                	xchg   %ax,%ax
  1011dd:	66 90                	xchg   %ax,%ax
  1011df:	90                   	nop

001011e0 <init_serial>:
  1011e0:	55                   	push   %ebp
  1011e1:	ba f9 03 00 00       	mov    $0x3f9,%edx
  1011e6:	31 c0                	xor    %eax,%eax
  1011e8:	89 e5                	mov    %esp,%ebp
  1011ea:	ee                   	out    %al,(%dx)
  1011eb:	b8 80 ff ff ff       	mov    $0xffffff80,%eax
  1011f0:	b2 fb                	mov    $0xfb,%dl
  1011f2:	ee                   	out    %al,(%dx)
  1011f3:	b8 01 00 00 00       	mov    $0x1,%eax
  1011f8:	b2 f8                	mov    $0xf8,%dl
  1011fa:	ee                   	out    %al,(%dx)
  1011fb:	31 c0                	xor    %eax,%eax
  1011fd:	b2 f9                	mov    $0xf9,%dl
  1011ff:	ee                   	out    %al,(%dx)
  101200:	b8 03 00 00 00       	mov    $0x3,%eax
  101205:	b2 fb                	mov    $0xfb,%dl
  101207:	ee                   	out    %al,(%dx)
  101208:	b8 c7 ff ff ff       	mov    $0xffffffc7,%eax
  10120d:	b2 fa                	mov    $0xfa,%dl
  10120f:	ee                   	out    %al,(%dx)
  101210:	b8 0b 00 00 00       	mov    $0xb,%eax
  101215:	b2 fc                	mov    $0xfc,%dl
  101217:	ee                   	out    %al,(%dx)
  101218:	5d                   	pop    %ebp
  101219:	c3                   	ret    
  10121a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00101220 <serial_printc>:
  101220:	55                   	push   %ebp
  101221:	ba fd 03 00 00       	mov    $0x3fd,%edx
  101226:	89 e5                	mov    %esp,%ebp
  101228:	8b 4d 08             	mov    0x8(%ebp),%ecx
  10122b:	90                   	nop
  10122c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  101230:	ec                   	in     (%dx),%al
  101231:	a8 20                	test   $0x20,%al
  101233:	74 fb                	je     101230 <serial_printc+0x10>
  101235:	ba f8 03 00 00       	mov    $0x3f8,%edx
  10123a:	89 c8                	mov    %ecx,%eax
  10123c:	ee                   	out    %al,(%dx)
  10123d:	5d                   	pop    %ebp
  10123e:	c3                   	ret    
  10123f:	90                   	nop

00101240 <memcpy>:
  101240:	55                   	push   %ebp
  101241:	89 e5                	mov    %esp,%ebp
  101243:	56                   	push   %esi
  101244:	57                   	push   %edi
  101245:	53                   	push   %ebx
  101246:	8b 7d 08             	mov    0x8(%ebp),%edi
  101249:	8b 4d 10             	mov    0x10(%ebp),%ecx
  10124c:	8b 75 0c             	mov    0xc(%ebp),%esi
  10124f:	fc                   	cld    
  101250:	83 f9 08             	cmp    $0x8,%ecx
  101253:	76 26                	jbe    10127b <memcpy+0x3b>
  101255:	89 fa                	mov    %edi,%edx
  101257:	89 cb                	mov    %ecx,%ebx
  101259:	83 e2 03             	and    $0x3,%edx
  10125c:	74 10                	je     10126e <memcpy+0x2e>
  10125e:	b9 04 00 00 00       	mov    $0x4,%ecx
  101263:	29 d1                	sub    %edx,%ecx
  101265:	83 e1 03             	and    $0x3,%ecx
  101268:	29 cb                	sub    %ecx,%ebx
  10126a:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
  10126c:	89 d9                	mov    %ebx,%ecx
  10126e:	c1 e9 02             	shr    $0x2,%ecx
  101271:	8d 76 00             	lea    0x0(%esi),%esi
  101274:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
  101276:	89 d9                	mov    %ebx,%ecx
  101278:	83 e1 03             	and    $0x3,%ecx
  10127b:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
  10127d:	8b 45 08             	mov    0x8(%ebp),%eax
  101280:	8d 65 f4             	lea    -0xc(%ebp),%esp
  101283:	5b                   	pop    %ebx
  101284:	5f                   	pop    %edi
  101285:	5e                   	pop    %esi
  101286:	c9                   	leave  
  101287:	c3                   	ret    

00101288 <memset>:
  101288:	55                   	push   %ebp
  101289:	89 e5                	mov    %esp,%ebp
  10128b:	57                   	push   %edi
  10128c:	8b 7d 08             	mov    0x8(%ebp),%edi
  10128f:	0f b6 45 0c          	movzbl 0xc(%ebp),%eax
  101293:	8b 4d 10             	mov    0x10(%ebp),%ecx
  101296:	fc                   	cld    
  101297:	83 f9 10             	cmp    $0x10,%ecx
  10129a:	76 69                	jbe    101305 <memset+0x7d>
  10129c:	f7 c7 07 00 00 00    	test   $0x7,%edi
  1012a2:	74 4c                	je     1012f0 <memset+0x68>
  1012a4:	88 07                	mov    %al,(%edi)
  1012a6:	47                   	inc    %edi
  1012a7:	49                   	dec    %ecx
  1012a8:	f7 c7 07 00 00 00    	test   $0x7,%edi
  1012ae:	74 40                	je     1012f0 <memset+0x68>
  1012b0:	88 07                	mov    %al,(%edi)
  1012b2:	47                   	inc    %edi
  1012b3:	49                   	dec    %ecx
  1012b4:	f7 c7 07 00 00 00    	test   $0x7,%edi
  1012ba:	74 34                	je     1012f0 <memset+0x68>
  1012bc:	88 07                	mov    %al,(%edi)
  1012be:	47                   	inc    %edi
  1012bf:	49                   	dec    %ecx
  1012c0:	f7 c7 07 00 00 00    	test   $0x7,%edi
  1012c6:	74 28                	je     1012f0 <memset+0x68>
  1012c8:	88 07                	mov    %al,(%edi)
  1012ca:	47                   	inc    %edi
  1012cb:	49                   	dec    %ecx
  1012cc:	f7 c7 07 00 00 00    	test   $0x7,%edi
  1012d2:	74 1c                	je     1012f0 <memset+0x68>
  1012d4:	88 07                	mov    %al,(%edi)
  1012d6:	47                   	inc    %edi
  1012d7:	49                   	dec    %ecx
  1012d8:	f7 c7 07 00 00 00    	test   $0x7,%edi
  1012de:	74 10                	je     1012f0 <memset+0x68>
  1012e0:	88 07                	mov    %al,(%edi)
  1012e2:	47                   	inc    %edi
  1012e3:	49                   	dec    %ecx
  1012e4:	f7 c7 07 00 00 00    	test   $0x7,%edi
  1012ea:	74 04                	je     1012f0 <memset+0x68>
  1012ec:	88 07                	mov    %al,(%edi)
  1012ee:	47                   	inc    %edi
  1012ef:	49                   	dec    %ecx
  1012f0:	88 c4                	mov    %al,%ah
  1012f2:	89 c2                	mov    %eax,%edx
  1012f4:	c1 e2 10             	shl    $0x10,%edx
  1012f7:	09 d0                	or     %edx,%eax
  1012f9:	89 ca                	mov    %ecx,%edx
  1012fb:	c1 e9 02             	shr    $0x2,%ecx
  1012fe:	83 e2 03             	and    $0x3,%edx
  101301:	f3 ab                	rep stos %eax,%es:(%edi)
  101303:	89 d1                	mov    %edx,%ecx
  101305:	f3 aa                	rep stos %al,%es:(%edi)
  101307:	8b 45 08             	mov    0x8(%ebp),%eax
  10130a:	8d 65 fc             	lea    -0x4(%ebp),%esp
  10130d:	5f                   	pop    %edi
  10130e:	c9                   	leave  
  10130f:	c3                   	ret    
