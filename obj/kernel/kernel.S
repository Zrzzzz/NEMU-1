
kernel:     file format elf32-i386


Disassembly of section .text:

00100000 <start>:
  100000:	bd 00 00 00 00       	mov    $0x0,%ebp
  100005:	bc 00 00 00 08       	mov    $0x8000000,%esp
  10000a:	e9 c1 0c 00 00       	jmp    100cd0 <init>
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
  100097:	a1 ac 2c 10 00       	mov    0x102cac,%eax
  10009c:	3d ff 7f 00 00       	cmp    $0x7fff,%eax
  1000a1:	0f 8f c1 01 00 00    	jg     100268 <mm_malloc+0x258>
  1000a7:	89 c1                	mov    %eax,%ecx
  1000a9:	83 c0 01             	add    $0x1,%eax
  1000ac:	c1 e1 0c             	shl    $0xc,%ecx
  1000af:	83 c9 07             	or     $0x7,%ecx
  1000b2:	89 0e                	mov    %ecx,(%esi)
  1000b4:	a3 ac 2c 10 00       	mov    %eax,0x102cac
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
  10010c:	e8 e7 10 00 00       	call   1011f8 <memset>
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
  100138:	c7 44 24 10 a4 12 10 	movl   $0x1012a4,0x10(%esp)
  10013f:	00 
  100140:	c7 44 24 0c 08 13 10 	movl   $0x101308,0xc(%esp)
  100147:	00 
  100148:	c7 44 24 08 11 00 00 	movl   $0x11,0x8(%esp)
  10014f:	00 
  100150:	c7 44 24 04 93 12 10 	movl   $0x101293,0x4(%esp)
  100157:	00 
  100158:	c7 04 24 b4 12 10 00 	movl   $0x1012b4,(%esp)
  10015f:	e8 dc 0f 00 00       	call   101140 <printk>
  100164:	b8 01 00 00 00       	mov    $0x1,%eax
  100169:	d6                   	(bad)  
  10016a:	8b 55 e0             	mov    -0x20(%ebp),%edx
  10016d:	8d 86 00 00 00 c0    	lea    -0x40000000(%esi),%eax
  100173:	25 00 f0 ff ff       	and    $0xfffff000,%eax
  100178:	c1 ea 0c             	shr    $0xc,%edx
  10017b:	81 e2 ff 03 00 00    	and    $0x3ff,%edx
  100181:	f6 04 90 01          	testb  $0x1,(%eax,%edx,4)
  100185:	75 32                	jne    1001b9 <mm_malloc+0x1a9>
  100187:	c7 44 24 10 ac 12 10 	movl   $0x1012ac,0x10(%esp)
  10018e:	00 
  10018f:	c7 44 24 0c 08 13 10 	movl   $0x101308,0xc(%esp)
  100196:	00 
  100197:	c7 44 24 08 13 00 00 	movl   $0x13,0x8(%esp)
  10019e:	00 
  10019f:	c7 44 24 04 93 12 10 	movl   $0x101293,0x4(%esp)
  1001a6:	00 
  1001a7:	c7 04 24 b4 12 10 00 	movl   $0x1012b4,(%esp)
  1001ae:	e8 8d 0f 00 00       	call   101140 <printk>
  1001b3:	b8 01 00 00 00       	mov    $0x1,%eax
  1001b8:	d6                   	(bad)  
  1001b9:	8b 45 08             	mov    0x8(%ebp),%eax
  1001bc:	c1 e8 16             	shr    $0x16,%eax
  1001bf:	8b 1c 83             	mov    (%ebx,%eax,4),%ebx
  1001c2:	f6 c3 01             	test   $0x1,%bl
  1001c5:	75 32                	jne    1001f9 <mm_malloc+0x1e9>
  1001c7:	c7 44 24 10 a4 12 10 	movl   $0x1012a4,0x10(%esp)
  1001ce:	00 
  1001cf:	c7 44 24 0c 08 13 10 	movl   $0x101308,0xc(%esp)
  1001d6:	00 
  1001d7:	c7 44 24 08 11 00 00 	movl   $0x11,0x8(%esp)
  1001de:	00 
  1001df:	c7 44 24 04 93 12 10 	movl   $0x101293,0x4(%esp)
  1001e6:	00 
  1001e7:	c7 04 24 b4 12 10 00 	movl   $0x1012b4,(%esp)
  1001ee:	e8 4d 0f 00 00       	call   101140 <printk>
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
  100218:	c7 44 24 10 ac 12 10 	movl   $0x1012ac,0x10(%esp)
  10021f:	00 
  100220:	c7 44 24 0c 08 13 10 	movl   $0x101308,0xc(%esp)
  100227:	00 
  100228:	c7 44 24 08 13 00 00 	movl   $0x13,0x8(%esp)
  10022f:	00 
  100230:	c7 44 24 04 93 12 10 	movl   $0x101293,0x4(%esp)
  100237:	00 
  100238:	c7 04 24 b4 12 10 00 	movl   $0x1012b4,(%esp)
  10023f:	e8 fc 0e 00 00       	call   101140 <printk>
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
  100268:	c7 44 24 10 80 12 10 	movl   $0x101280,0x10(%esp)
  10026f:	00 
  100270:	c7 44 24 0c fe 12 10 	movl   $0x1012fe,0xc(%esp)
  100277:	00 
  100278:	c7 44 24 08 31 00 00 	movl   $0x31,0x8(%esp)
  10027f:	00 
  100280:	c7 44 24 04 93 12 10 	movl   $0x101293,0x4(%esp)
  100287:	00 
  100288:	c7 04 24 b4 12 10 00 	movl   $0x1012b4,(%esp)
  10028f:	e8 ac 0e 00 00       	call   101140 <printk>
  100294:	b8 01 00 00 00       	mov    $0x1,%eax
  100299:	d6                   	(bad)  
  10029a:	a1 ac 2c 10 00       	mov    0x102cac,%eax
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
  100393:	e8 60 0e 00 00       	call   1011f8 <memset>
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
  10040f:	e8 e4 0d 00 00       	call   1011f8 <memset>
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
  10051d:	e8 d6 0c 00 00       	call   1011f8 <memset>
  100522:	83 c4 0c             	add    $0xc,%esp
  100525:	68 80 00 00 00       	push   $0x80
  10052a:	53                   	push   %ebx
  10052b:	68 00 70 14 00       	push   $0x147000
  100530:	e8 7b 0c 00 00       	call   1011b0 <memcpy>
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
  100556:	68 95 13 10 00       	push   $0x101395
  10055b:	6a 11                	push   $0x11
  10055d:	68 0e 13 10 00       	push   $0x10130e
  100562:	68 34 13 10 00       	push   $0x101334
  100567:	e8 d4 0b 00 00       	call   101140 <printk>
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
  1005bc:	68 27 13 10 00       	push   $0x101327
  1005c1:	68 7d 13 10 00       	push   $0x10137d
  1005c6:	6a 20                	push   $0x20
  1005c8:	68 0e 13 10 00       	push   $0x10130e
  1005cd:	68 b4 12 10 00       	push   $0x1012b4
  1005d2:	e8 69 0b 00 00       	call   101140 <printk>
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
  100602:	e8 f1 0b 00 00       	call   1011f8 <memset>
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
  10062c:	68 d9 13 10 00       	push   $0x1013d9
  100631:	68 29 15 10 00       	push   $0x101529
  100636:	6a 16                	push   $0x16
  100638:	68 bd 13 10 00       	push   $0x1013bd
  10063d:	68 b4 12 10 00       	push   $0x1012b4
  100642:	e8 f9 0a 00 00       	call   101140 <printk>
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
  100693:	68 aa 13 10 00       	push   $0x1013aa
  100698:	68 29 15 10 00       	push   $0x101529
  10069d:	6a 15                	push   $0x15
  10069f:	68 bd 13 10 00       	push   $0x1013bd
  1006a4:	68 b4 12 10 00       	push   $0x1012b4
  1006a9:	e8 92 0a 00 00       	call   101140 <printk>
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
  1006ca:	68 1e 15 10 00       	push   $0x10151e
  1006cf:	6a 24                	push   $0x24
  1006d1:	68 bd 13 10 00       	push   $0x1013bd
  1006d6:	68 10 14 10 00       	push   $0x101410
  1006db:	e8 60 0a 00 00       	call   101140 <printk>
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
  100733:	68 f7 13 10 00       	push   $0x1013f7
  100738:	68 1e 15 10 00       	push   $0x10151e
  10073d:	6a 30                	push   $0x30
  10073f:	68 bd 13 10 00       	push   $0x1013bd
  100744:	68 b4 12 10 00       	push   $0x1012b4
  100749:	e8 f2 09 00 00       	call   101140 <printk>
  10074e:	b8 01 00 00 00       	mov    $0x1,%eax
  100753:	d6                   	(bad)  
  100754:	83 c4 20             	add    $0x20,%esp
  100757:	eb b8                	jmp    100711 <irq_handle+0x51>
  100759:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  100760:	83 ec 08             	sub    $0x8,%esp
  100763:	ff 73 0c             	pushl  0xc(%ebx)
  100766:	50                   	push   %eax
  100767:	68 1e 15 10 00       	push   $0x10151e
  10076c:	6a 2d                	push   $0x2d
  10076e:	68 bd 13 10 00       	push   $0x1013bd
  100773:	68 c4 14 10 00       	push   $0x1014c4
  100778:	e8 c3 09 00 00       	call   101140 <printk>
  10077d:	b8 01 00 00 00       	mov    $0x1,%eax
  100782:	d6                   	(bad)  
  100783:	83 c4 20             	add    $0x20,%esp
  100786:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  100789:	c9                   	leave  
  10078a:	c3                   	ret    
  10078b:	90                   	nop
  10078c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  100790:	68 1e 15 10 00       	push   $0x10151e
  100795:	6a 29                	push   $0x29
  100797:	68 bd 13 10 00       	push   $0x1013bd
  10079c:	68 78 14 10 00       	push   $0x101478
  1007a1:	e8 9a 09 00 00       	call   101140 <printk>
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
  100c04:	68 ac 15 10 00       	push   $0x1015ac
  100c09:	6a 20                	push   $0x20
  100c0b:	68 38 15 10 00       	push   $0x101538
  100c10:	68 58 15 10 00       	push   $0x101558
  100c15:	e8 26 05 00 00       	call   101140 <printk>
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
  100c43:	81 ec 0c 10 00 00    	sub    $0x100c,%esp
  100c49:	8d 85 f8 ef ff ff    	lea    -0x1008(%ebp),%eax
  100c4f:	68 00 10 00 00       	push   $0x1000
  100c54:	6a 00                	push   $0x0
  100c56:	50                   	push   %eax
  100c57:	e8 84 04 00 00       	call   1010e0 <ramdisk_read>
  100c5c:	83 c4 10             	add    $0x10,%esp
  100c5f:	81 bd f8 ef ff ff 7f 	cmpl   $0x464c457f,-0x1008(%ebp)
  100c66:	45 4c 46 
  100c69:	74 06                	je     100c71 <loader+0x31>
  100c6b:	b8 01 00 00 00       	mov    $0x1,%eax
  100c70:	d6                   	(bad)  
  100c71:	a1 00 00 00 00       	mov    0x0,%eax
  100c76:	0f 0b                	ud2    
  100c78:	66 90                	xchg   %ax,%ax
  100c7a:	66 90                	xchg   %ax,%ax
  100c7c:	66 90                	xchg   %ax,%ax
  100c7e:	66 90                	xchg   %ax,%ax

00100c80 <init_cond>:
  100c80:	55                   	push   %ebp
  100c81:	89 e5                	mov    %esp,%ebp
  100c83:	83 ec 08             	sub    $0x8,%esp
  100c86:	68 4c 16 10 00       	push   $0x10164c
  100c8b:	6a 4a                	push   $0x4a
  100c8d:	68 b7 15 10 00       	push   $0x1015b7
  100c92:	68 cc 15 10 00       	push   $0x1015cc
  100c97:	e8 a4 04 00 00       	call   101140 <printk>
  100c9c:	e8 9f ff ff ff       	call   100c40 <loader>
  100ca1:	bd 00 00 00 00       	mov    $0x0,%ebp
  100ca6:	83 ec 10             	sub    $0x10,%esp
  100ca9:	ff d0                	call   *%eax
  100cab:	68 4c 16 10 00       	push   $0x10164c
  100cb0:	6a 6b                	push   $0x6b
  100cb2:	68 b7 15 10 00       	push   $0x1015b7
  100cb7:	68 00 16 10 00       	push   $0x101600
  100cbc:	e8 7f 04 00 00       	call   101140 <printk>
  100cc1:	b8 01 00 00 00       	mov    $0x1,%eax
  100cc6:	d6                   	(bad)  
  100cc7:	83 c4 20             	add    $0x20,%esp
  100cca:	c9                   	leave  
  100ccb:	c3                   	ret    
  100ccc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00100cd0 <init>:
  100cd0:	55                   	push   %ebp
  100cd1:	b8 80 0c 10 00       	mov    $0x100c80,%eax
  100cd6:	89 e5                	mov    %esp,%ebp
  100cd8:	83 ec 08             	sub    $0x8,%esp
  100cdb:	ff e0                	jmp    *%eax
  100cdd:	68 56 16 10 00       	push   $0x101656
  100ce2:	6a 24                	push   $0x24
  100ce4:	68 b7 15 10 00       	push   $0x1015b7
  100ce9:	68 00 16 10 00       	push   $0x101600
  100cee:	e8 4d 04 00 00       	call   101140 <printk>
  100cf3:	b8 01 00 00 00       	mov    $0x1,%eax
  100cf8:	d6                   	(bad)  
  100cf9:	83 c4 10             	add    $0x10,%esp
  100cfc:	c9                   	leave  
  100cfd:	c3                   	ret    
  100cfe:	66 90                	xchg   %ax,%ax

00100d00 <buf_fetch>:
  100d00:	55                   	push   %ebp
  100d01:	89 c2                	mov    %eax,%edx
  100d03:	89 e5                	mov    %esp,%ebp
  100d05:	57                   	push   %edi
  100d06:	56                   	push   %esi
  100d07:	53                   	push   %ebx
  100d08:	89 c3                	mov    %eax,%ebx
  100d0a:	83 e3 7f             	and    $0x7f,%ebx
  100d0d:	89 d8                	mov    %ebx,%eax
  100d0f:	83 ec 1c             	sub    $0x1c,%esp
  100d12:	c1 e0 09             	shl    $0x9,%eax
  100d15:	8d 0c d8             	lea    (%eax,%ebx,8),%ecx
  100d18:	8d 81 c0 89 14 00    	lea    0x1489c0(%ecx),%eax
  100d1e:	80 78 04 01          	cmpb   $0x1,0x4(%eax)
  100d22:	74 5c                	je     100d80 <buf_fetch+0x80>
  100d24:	89 d7                	mov    %edx,%edi
  100d26:	89 da                	mov    %ebx,%edx
  100d28:	c1 e2 09             	shl    $0x9,%edx
  100d2b:	8d 0c da             	lea    (%edx,%ebx,8),%ecx
  100d2e:	8d 91 c0 89 14 00    	lea    0x1489c0(%ecx),%edx
  100d34:	66 81 7a 04 01 01    	cmpw   $0x101,0x4(%edx)
  100d3a:	74 54                	je     100d90 <buf_fetch+0x90>
  100d3c:	8d 72 06             	lea    0x6(%edx),%esi
  100d3f:	83 ec 08             	sub    $0x8,%esp
  100d42:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  100d45:	57                   	push   %edi
  100d46:	56                   	push   %esi
  100d47:	e8 e4 01 00 00       	call   100f30 <disk_do_read>
  100d4c:	89 da                	mov    %ebx,%edx
  100d4e:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  100d51:	83 c4 10             	add    $0x10,%esp
  100d54:	c1 e2 09             	shl    $0x9,%edx
  100d57:	8d 0c da             	lea    (%edx,%ebx,8),%ecx
  100d5a:	c6 81 c4 89 14 00 01 	movb   $0x1,0x1489c4(%ecx)
  100d61:	89 b9 c0 89 14 00    	mov    %edi,0x1489c0(%ecx)
  100d67:	c6 81 c5 89 14 00 00 	movb   $0x0,0x1489c5(%ecx)
  100d6e:	8d 65 f4             	lea    -0xc(%ebp),%esp
  100d71:	5b                   	pop    %ebx
  100d72:	5e                   	pop    %esi
  100d73:	5f                   	pop    %edi
  100d74:	5d                   	pop    %ebp
  100d75:	c3                   	ret    
  100d76:	8d 76 00             	lea    0x0(%esi),%esi
  100d79:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
  100d80:	39 91 c0 89 14 00    	cmp    %edx,0x1489c0(%ecx)
  100d86:	75 9c                	jne    100d24 <buf_fetch+0x24>
  100d88:	eb e4                	jmp    100d6e <buf_fetch+0x6e>
  100d8a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  100d90:	8d 72 06             	lea    0x6(%edx),%esi
  100d93:	83 ec 08             	sub    $0x8,%esp
  100d96:	ff b1 c0 89 14 00    	pushl  0x1489c0(%ecx)
  100d9c:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  100d9f:	56                   	push   %esi
  100da0:	e8 cb 01 00 00       	call   100f70 <disk_do_write>
  100da5:	83 c4 10             	add    $0x10,%esp
  100da8:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  100dab:	eb 92                	jmp    100d3f <buf_fetch+0x3f>
  100dad:	8d 76 00             	lea    0x0(%esi),%esi

00100db0 <buf_init>:
  100db0:	55                   	push   %ebp
  100db1:	b8 c4 89 14 00       	mov    $0x1489c4,%eax
  100db6:	89 e5                	mov    %esp,%ebp
  100db8:	90                   	nop
  100db9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  100dc0:	c6 00 00             	movb   $0x0,(%eax)
  100dc3:	05 08 02 00 00       	add    $0x208,%eax
  100dc8:	3d c4 8d 15 00       	cmp    $0x158dc4,%eax
  100dcd:	75 f1                	jne    100dc0 <buf_init+0x10>
  100dcf:	5d                   	pop    %ebp
  100dd0:	c3                   	ret    
  100dd1:	eb 0d                	jmp    100de0 <buf_writeback>
  100dd3:	90                   	nop
  100dd4:	90                   	nop
  100dd5:	90                   	nop
  100dd6:	90                   	nop
  100dd7:	90                   	nop
  100dd8:	90                   	nop
  100dd9:	90                   	nop
  100dda:	90                   	nop
  100ddb:	90                   	nop
  100ddc:	90                   	nop
  100ddd:	90                   	nop
  100dde:	90                   	nop
  100ddf:	90                   	nop

00100de0 <buf_writeback>:
  100de0:	55                   	push   %ebp
  100de1:	89 e5                	mov    %esp,%ebp
  100de3:	53                   	push   %ebx
  100de4:	bb c6 89 14 00       	mov    $0x1489c6,%ebx
  100de9:	83 ec 04             	sub    $0x4,%esp
  100dec:	eb 10                	jmp    100dfe <buf_writeback+0x1e>
  100dee:	66 90                	xchg   %ax,%ax
  100df0:	81 c3 08 02 00 00    	add    $0x208,%ebx
  100df6:	81 fb c6 8d 15 00    	cmp    $0x158dc6,%ebx
  100dfc:	74 32                	je     100e30 <buf_writeback+0x50>
  100dfe:	80 7b ff 01          	cmpb   $0x1,-0x1(%ebx)
  100e02:	75 ec                	jne    100df0 <buf_writeback+0x10>
  100e04:	83 ec 08             	sub    $0x8,%esp
  100e07:	ff 73 fa             	pushl  -0x6(%ebx)
  100e0a:	53                   	push   %ebx
  100e0b:	81 c3 08 02 00 00    	add    $0x208,%ebx
  100e11:	e8 5a 01 00 00       	call   100f70 <disk_do_write>
  100e16:	c6 83 f7 fd ff ff 00 	movb   $0x0,-0x209(%ebx)
  100e1d:	83 c4 10             	add    $0x10,%esp
  100e20:	81 fb c6 8d 15 00    	cmp    $0x158dc6,%ebx
  100e26:	75 d6                	jne    100dfe <buf_writeback+0x1e>
  100e28:	90                   	nop
  100e29:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  100e30:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  100e33:	c9                   	leave  
  100e34:	c3                   	ret    
  100e35:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  100e39:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00100e40 <read_byte>:
  100e40:	55                   	push   %ebp
  100e41:	89 e5                	mov    %esp,%ebp
  100e43:	53                   	push   %ebx
  100e44:	83 ec 04             	sub    $0x4,%esp
  100e47:	8b 5d 08             	mov    0x8(%ebp),%ebx
  100e4a:	89 d8                	mov    %ebx,%eax
  100e4c:	81 e3 ff 01 00 00    	and    $0x1ff,%ebx
  100e52:	c1 e8 09             	shr    $0x9,%eax
  100e55:	e8 a6 fe ff ff       	call   100d00 <buf_fetch>
  100e5a:	0f b6 44 18 06       	movzbl 0x6(%eax,%ebx,1),%eax
  100e5f:	83 c4 04             	add    $0x4,%esp
  100e62:	5b                   	pop    %ebx
  100e63:	5d                   	pop    %ebp
  100e64:	c3                   	ret    
  100e65:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  100e69:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00100e70 <write_byte>:
  100e70:	55                   	push   %ebp
  100e71:	89 e5                	mov    %esp,%ebp
  100e73:	56                   	push   %esi
  100e74:	53                   	push   %ebx
  100e75:	8b 5d 08             	mov    0x8(%ebp),%ebx
  100e78:	8b 75 0c             	mov    0xc(%ebp),%esi
  100e7b:	89 d8                	mov    %ebx,%eax
  100e7d:	81 e3 ff 01 00 00    	and    $0x1ff,%ebx
  100e83:	c1 e8 09             	shr    $0x9,%eax
  100e86:	e8 75 fe ff ff       	call   100d00 <buf_fetch>
  100e8b:	89 f2                	mov    %esi,%edx
  100e8d:	88 54 18 06          	mov    %dl,0x6(%eax,%ebx,1)
  100e91:	c6 40 05 01          	movb   $0x1,0x5(%eax)
  100e95:	5b                   	pop    %ebx
  100e96:	5e                   	pop    %esi
  100e97:	5d                   	pop    %ebp
  100e98:	c3                   	ret    
  100e99:	66 90                	xchg   %ax,%ax
  100e9b:	66 90                	xchg   %ax,%ax
  100e9d:	66 90                	xchg   %ax,%ax
  100e9f:	90                   	nop

00100ea0 <dma_prepare>:
  100ea0:	55                   	push   %ebp
  100ea1:	89 e5                	mov    %esp,%ebp
  100ea3:	83 ec 08             	sub    $0x8,%esp
  100ea6:	68 77 16 10 00       	push   $0x101677
  100eab:	6a 1d                	push   $0x1d
  100ead:	68 5b 16 10 00       	push   $0x10165b
  100eb2:	68 34 13 10 00       	push   $0x101334
  100eb7:	e8 84 02 00 00       	call   101140 <printk>
  100ebc:	b8 01 00 00 00       	mov    $0x1,%eax
  100ec1:	d6                   	(bad)  
  100ec2:	83 c4 10             	add    $0x10,%esp
  100ec5:	c9                   	leave  
  100ec6:	c3                   	ret    
  100ec7:	89 f6                	mov    %esi,%esi
  100ec9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00100ed0 <dma_issue_read>:
  100ed0:	55                   	push   %ebp
  100ed1:	ba 40 c0 ff ff       	mov    $0xffffc040,%edx
  100ed6:	89 e5                	mov    %esp,%ebp
  100ed8:	ec                   	in     (%dx),%al
  100ed9:	83 c8 09             	or     $0x9,%eax
  100edc:	ee                   	out    %al,(%dx)
  100edd:	5d                   	pop    %ebp
  100ede:	c3                   	ret    
  100edf:	90                   	nop

00100ee0 <ide_prepare>:
  100ee0:	55                   	push   %ebp
  100ee1:	89 c1                	mov    %eax,%ecx
  100ee3:	ba f7 01 00 00       	mov    $0x1f7,%edx
  100ee8:	89 e5                	mov    %esp,%ebp
  100eea:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  100ef0:	ec                   	in     (%dx),%al
  100ef1:	83 e0 c0             	and    $0xffffffc0,%eax
  100ef4:	3c 40                	cmp    $0x40,%al
  100ef6:	75 f8                	jne    100ef0 <ide_prepare+0x10>
  100ef8:	ba f1 01 00 00       	mov    $0x1f1,%edx
  100efd:	31 c0                	xor    %eax,%eax
  100eff:	ee                   	out    %al,(%dx)
  100f00:	b8 01 00 00 00       	mov    $0x1,%eax
  100f05:	b2 f2                	mov    $0xf2,%dl
  100f07:	ee                   	out    %al,(%dx)
  100f08:	b2 f3                	mov    $0xf3,%dl
  100f0a:	89 c8                	mov    %ecx,%eax
  100f0c:	ee                   	out    %al,(%dx)
  100f0d:	89 c8                	mov    %ecx,%eax
  100f0f:	b2 f4                	mov    $0xf4,%dl
  100f11:	c1 e8 08             	shr    $0x8,%eax
  100f14:	ee                   	out    %al,(%dx)
  100f15:	89 c8                	mov    %ecx,%eax
  100f17:	b2 f5                	mov    $0xf5,%dl
  100f19:	c1 e8 10             	shr    $0x10,%eax
  100f1c:	ee                   	out    %al,(%dx)
  100f1d:	89 c8                	mov    %ecx,%eax
  100f1f:	b2 f6                	mov    $0xf6,%dl
  100f21:	c1 e8 18             	shr    $0x18,%eax
  100f24:	83 c8 e0             	or     $0xffffffe0,%eax
  100f27:	ee                   	out    %al,(%dx)
  100f28:	5d                   	pop    %ebp
  100f29:	c3                   	ret    
  100f2a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00100f30 <disk_do_read>:
  100f30:	55                   	push   %ebp
  100f31:	89 e5                	mov    %esp,%ebp
  100f33:	53                   	push   %ebx
  100f34:	8b 45 0c             	mov    0xc(%ebp),%eax
  100f37:	e8 a4 ff ff ff       	call   100ee0 <ide_prepare>
  100f3c:	ba f7 01 00 00       	mov    $0x1f7,%edx
  100f41:	b8 20 00 00 00       	mov    $0x20,%eax
  100f46:	ee                   	out    %al,(%dx)
  100f47:	8b 4d 08             	mov    0x8(%ebp),%ecx
  100f4a:	b2 f0                	mov    $0xf0,%dl
  100f4c:	8d 99 00 02 00 00    	lea    0x200(%ecx),%ebx
  100f52:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  100f58:	ed                   	in     (%dx),%eax
  100f59:	89 01                	mov    %eax,(%ecx)
  100f5b:	83 c1 04             	add    $0x4,%ecx
  100f5e:	39 d9                	cmp    %ebx,%ecx
  100f60:	75 f6                	jne    100f58 <disk_do_read+0x28>
  100f62:	5b                   	pop    %ebx
  100f63:	5d                   	pop    %ebp
  100f64:	c3                   	ret    
  100f65:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  100f69:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00100f70 <disk_do_write>:
  100f70:	55                   	push   %ebp
  100f71:	89 e5                	mov    %esp,%ebp
  100f73:	53                   	push   %ebx
  100f74:	8b 45 0c             	mov    0xc(%ebp),%eax
  100f77:	e8 64 ff ff ff       	call   100ee0 <ide_prepare>
  100f7c:	ba f7 01 00 00       	mov    $0x1f7,%edx
  100f81:	b8 30 00 00 00       	mov    $0x30,%eax
  100f86:	ee                   	out    %al,(%dx)
  100f87:	8b 4d 08             	mov    0x8(%ebp),%ecx
  100f8a:	b2 f0                	mov    $0xf0,%dl
  100f8c:	8d 99 00 02 00 00    	lea    0x200(%ecx),%ebx
  100f92:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  100f98:	8b 01                	mov    (%ecx),%eax
  100f9a:	ef                   	out    %eax,(%dx)
  100f9b:	83 c1 04             	add    $0x4,%ecx
  100f9e:	39 d9                	cmp    %ebx,%ecx
  100fa0:	75 f6                	jne    100f98 <disk_do_write+0x28>
  100fa2:	5b                   	pop    %ebx
  100fa3:	5d                   	pop    %ebp
  100fa4:	c3                   	ret    
  100fa5:	66 90                	xchg   %ax,%ax
  100fa7:	66 90                	xchg   %ax,%ax
  100fa9:	66 90                	xchg   %ax,%ax
  100fab:	66 90                	xchg   %ax,%ax
  100fad:	66 90                	xchg   %ax,%ax
  100faf:	90                   	nop

00100fb0 <ide_intr>:
  100fb0:	55                   	push   %ebp
  100fb1:	c7 05 c4 8d 15 00 01 	movl   $0x1,0x158dc4
  100fb8:	00 00 00 
  100fbb:	89 e5                	mov    %esp,%ebp
  100fbd:	5d                   	pop    %ebp
  100fbe:	c3                   	ret    
  100fbf:	90                   	nop

00100fc0 <ide_writeback>:
  100fc0:	a1 c0 8d 15 00       	mov    0x158dc0,%eax
  100fc5:	83 c0 01             	add    $0x1,%eax
  100fc8:	83 f8 64             	cmp    $0x64,%eax
  100fcb:	a3 c0 8d 15 00       	mov    %eax,0x158dc0
  100fd0:	74 06                	je     100fd8 <ide_writeback+0x18>
  100fd2:	c3                   	ret    
  100fd3:	90                   	nop
  100fd4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  100fd8:	55                   	push   %ebp
  100fd9:	89 e5                	mov    %esp,%ebp
  100fdb:	83 ec 08             	sub    $0x8,%esp
  100fde:	e8 fd fd ff ff       	call   100de0 <buf_writeback>
  100fe3:	c7 05 c0 8d 15 00 00 	movl   $0x0,0x158dc0
  100fea:	00 00 00 
  100fed:	c9                   	leave  
  100fee:	c3                   	ret    
  100fef:	90                   	nop

00100ff0 <ide_read>:
  100ff0:	55                   	push   %ebp
  100ff1:	89 e5                	mov    %esp,%ebp
  100ff3:	57                   	push   %edi
  100ff4:	56                   	push   %esi
  100ff5:	53                   	push   %ebx
  100ff6:	83 ec 0c             	sub    $0xc,%esp
  100ff9:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  100ffc:	8b 45 10             	mov    0x10(%ebp),%eax
  100fff:	8b 7d 08             	mov    0x8(%ebp),%edi
  101002:	8d 34 18             	lea    (%eax,%ebx,1),%esi
  101005:	29 df                	sub    %ebx,%edi
  101007:	85 c0                	test   %eax,%eax
  101009:	74 1b                	je     101026 <ide_read+0x36>
  10100b:	90                   	nop
  10100c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  101010:	83 ec 0c             	sub    $0xc,%esp
  101013:	53                   	push   %ebx
  101014:	e8 27 fe ff ff       	call   100e40 <read_byte>
  101019:	88 04 1f             	mov    %al,(%edi,%ebx,1)
  10101c:	83 c3 01             	add    $0x1,%ebx
  10101f:	83 c4 10             	add    $0x10,%esp
  101022:	39 f3                	cmp    %esi,%ebx
  101024:	75 ea                	jne    101010 <ide_read+0x20>
  101026:	8d 65 f4             	lea    -0xc(%ebp),%esp
  101029:	5b                   	pop    %ebx
  10102a:	5e                   	pop    %esi
  10102b:	5f                   	pop    %edi
  10102c:	5d                   	pop    %ebp
  10102d:	c3                   	ret    
  10102e:	66 90                	xchg   %ax,%ax

00101030 <ide_write>:
  101030:	55                   	push   %ebp
  101031:	89 e5                	mov    %esp,%ebp
  101033:	57                   	push   %edi
  101034:	56                   	push   %esi
  101035:	53                   	push   %ebx
  101036:	83 ec 0c             	sub    $0xc,%esp
  101039:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  10103c:	8b 45 10             	mov    0x10(%ebp),%eax
  10103f:	8b 7d 08             	mov    0x8(%ebp),%edi
  101042:	8d 34 18             	lea    (%eax,%ebx,1),%esi
  101045:	29 df                	sub    %ebx,%edi
  101047:	85 c0                	test   %eax,%eax
  101049:	74 1d                	je     101068 <ide_write+0x38>
  10104b:	90                   	nop
  10104c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  101050:	0f b6 04 1f          	movzbl (%edi,%ebx,1),%eax
  101054:	83 ec 08             	sub    $0x8,%esp
  101057:	50                   	push   %eax
  101058:	53                   	push   %ebx
  101059:	83 c3 01             	add    $0x1,%ebx
  10105c:	e8 0f fe ff ff       	call   100e70 <write_byte>
  101061:	83 c4 10             	add    $0x10,%esp
  101064:	39 f3                	cmp    %esi,%ebx
  101066:	75 e8                	jne    101050 <ide_write+0x20>
  101068:	8d 65 f4             	lea    -0xc(%ebp),%esp
  10106b:	5b                   	pop    %ebx
  10106c:	5e                   	pop    %esi
  10106d:	5f                   	pop    %edi
  10106e:	5d                   	pop    %ebp
  10106f:	c3                   	ret    

00101070 <clear_ide_intr>:
  101070:	55                   	push   %ebp
  101071:	c7 05 c4 8d 15 00 00 	movl   $0x0,0x158dc4
  101078:	00 00 00 
  10107b:	89 e5                	mov    %esp,%ebp
  10107d:	5d                   	pop    %ebp
  10107e:	c3                   	ret    
  10107f:	90                   	nop

00101080 <wait_ide_intr>:
  101080:	a1 c4 8d 15 00       	mov    0x158dc4,%eax
  101085:	55                   	push   %ebp
  101086:	89 e5                	mov    %esp,%ebp
  101088:	85 c0                	test   %eax,%eax
  10108a:	75 0e                	jne    10109a <wait_ide_intr+0x1a>
  10108c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  101090:	f4                   	hlt    
  101091:	a1 c4 8d 15 00       	mov    0x158dc4,%eax
  101096:	85 c0                	test   %eax,%eax
  101098:	74 f6                	je     101090 <wait_ide_intr+0x10>
  10109a:	c7 05 c4 8d 15 00 00 	movl   $0x0,0x158dc4
  1010a1:	00 00 00 
  1010a4:	5d                   	pop    %ebp
  1010a5:	c3                   	ret    
  1010a6:	8d 76 00             	lea    0x0(%esi),%esi
  1010a9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

001010b0 <init_ide>:
  1010b0:	55                   	push   %ebp
  1010b1:	89 e5                	mov    %esp,%ebp
  1010b3:	83 ec 08             	sub    $0x8,%esp
  1010b6:	e8 f5 fc ff ff       	call   100db0 <buf_init>
  1010bb:	83 ec 08             	sub    $0x8,%esp
  1010be:	68 c0 0f 10 00       	push   $0x100fc0
  1010c3:	6a 00                	push   $0x0
  1010c5:	e8 46 f5 ff ff       	call   100610 <add_irq_handle>
  1010ca:	58                   	pop    %eax
  1010cb:	5a                   	pop    %edx
  1010cc:	68 b0 0f 10 00       	push   $0x100fb0
  1010d1:	6a 0e                	push   $0xe
  1010d3:	e8 38 f5 ff ff       	call   100610 <add_irq_handle>
  1010d8:	83 c4 10             	add    $0x10,%esp
  1010db:	c9                   	leave  
  1010dc:	c3                   	ret    
  1010dd:	66 90                	xchg   %ax,%ax
  1010df:	90                   	nop

001010e0 <ramdisk_read>:
  1010e0:	55                   	push   %ebp
  1010e1:	89 e5                	mov    %esp,%ebp
  1010e3:	5d                   	pop    %ebp
  1010e4:	e9 c7 00 00 00       	jmp    1011b0 <memcpy>
  1010e9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

001010f0 <ramdisk_write>:
  1010f0:	55                   	push   %ebp
  1010f1:	89 e5                	mov    %esp,%ebp
  1010f3:	8b 45 0c             	mov    0xc(%ebp),%eax
  1010f6:	8b 55 08             	mov    0x8(%ebp),%edx
  1010f9:	89 45 08             	mov    %eax,0x8(%ebp)
  1010fc:	89 55 0c             	mov    %edx,0xc(%ebp)
  1010ff:	5d                   	pop    %ebp
  101100:	e9 ab 00 00 00       	jmp    1011b0 <memcpy>
  101105:	66 90                	xchg   %ax,%ax
  101107:	66 90                	xchg   %ax,%ax
  101109:	66 90                	xchg   %ax,%ax
  10110b:	66 90                	xchg   %ax,%ax
  10110d:	66 90                	xchg   %ax,%ax
  10110f:	90                   	nop

00101110 <sbrk>:
  101110:	55                   	push   %ebp
  101111:	89 e5                	mov    %esp,%ebp
  101113:	83 ec 08             	sub    $0x8,%esp
  101116:	68 99 16 10 00       	push   $0x101699
  10111b:	6a 08                	push   $0x8
  10111d:	68 83 16 10 00       	push   $0x101683
  101122:	68 00 16 10 00       	push   $0x101600
  101127:	e8 14 00 00 00       	call   101140 <printk>
  10112c:	b8 01 00 00 00       	mov    $0x1,%eax
  101131:	d6                   	(bad)  
  101132:	30 c0                	xor    %al,%al
  101134:	c9                   	leave  
  101135:	c3                   	ret    
  101136:	66 90                	xchg   %ax,%ax
  101138:	66 90                	xchg   %ax,%ax
  10113a:	66 90                	xchg   %ax,%ax
  10113c:	66 90                	xchg   %ax,%ax
  10113e:	66 90                	xchg   %ax,%ax

00101140 <printk>:
  101140:	55                   	push   %ebp
  101141:	89 e5                	mov    %esp,%ebp
  101143:	5d                   	pop    %ebp
  101144:	c3                   	ret    
  101145:	66 90                	xchg   %ax,%ax
  101147:	66 90                	xchg   %ax,%ax
  101149:	66 90                	xchg   %ax,%ax
  10114b:	66 90                	xchg   %ax,%ax
  10114d:	66 90                	xchg   %ax,%ax
  10114f:	90                   	nop

00101150 <init_serial>:
  101150:	55                   	push   %ebp
  101151:	ba f9 03 00 00       	mov    $0x3f9,%edx
  101156:	31 c0                	xor    %eax,%eax
  101158:	89 e5                	mov    %esp,%ebp
  10115a:	ee                   	out    %al,(%dx)
  10115b:	b8 80 ff ff ff       	mov    $0xffffff80,%eax
  101160:	b2 fb                	mov    $0xfb,%dl
  101162:	ee                   	out    %al,(%dx)
  101163:	b8 01 00 00 00       	mov    $0x1,%eax
  101168:	b2 f8                	mov    $0xf8,%dl
  10116a:	ee                   	out    %al,(%dx)
  10116b:	31 c0                	xor    %eax,%eax
  10116d:	b2 f9                	mov    $0xf9,%dl
  10116f:	ee                   	out    %al,(%dx)
  101170:	b8 03 00 00 00       	mov    $0x3,%eax
  101175:	b2 fb                	mov    $0xfb,%dl
  101177:	ee                   	out    %al,(%dx)
  101178:	b8 c7 ff ff ff       	mov    $0xffffffc7,%eax
  10117d:	b2 fa                	mov    $0xfa,%dl
  10117f:	ee                   	out    %al,(%dx)
  101180:	b8 0b 00 00 00       	mov    $0xb,%eax
  101185:	b2 fc                	mov    $0xfc,%dl
  101187:	ee                   	out    %al,(%dx)
  101188:	5d                   	pop    %ebp
  101189:	c3                   	ret    
  10118a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00101190 <serial_printc>:
  101190:	55                   	push   %ebp
  101191:	ba fd 03 00 00       	mov    $0x3fd,%edx
  101196:	89 e5                	mov    %esp,%ebp
  101198:	8b 4d 08             	mov    0x8(%ebp),%ecx
  10119b:	90                   	nop
  10119c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  1011a0:	ec                   	in     (%dx),%al
  1011a1:	a8 20                	test   $0x20,%al
  1011a3:	74 fb                	je     1011a0 <serial_printc+0x10>
  1011a5:	ba f8 03 00 00       	mov    $0x3f8,%edx
  1011aa:	89 c8                	mov    %ecx,%eax
  1011ac:	ee                   	out    %al,(%dx)
  1011ad:	5d                   	pop    %ebp
  1011ae:	c3                   	ret    
  1011af:	90                   	nop

001011b0 <memcpy>:
  1011b0:	55                   	push   %ebp
  1011b1:	89 e5                	mov    %esp,%ebp
  1011b3:	56                   	push   %esi
  1011b4:	57                   	push   %edi
  1011b5:	53                   	push   %ebx
  1011b6:	8b 7d 08             	mov    0x8(%ebp),%edi
  1011b9:	8b 4d 10             	mov    0x10(%ebp),%ecx
  1011bc:	8b 75 0c             	mov    0xc(%ebp),%esi
  1011bf:	fc                   	cld    
  1011c0:	83 f9 08             	cmp    $0x8,%ecx
  1011c3:	76 26                	jbe    1011eb <memcpy+0x3b>
  1011c5:	89 fa                	mov    %edi,%edx
  1011c7:	89 cb                	mov    %ecx,%ebx
  1011c9:	83 e2 03             	and    $0x3,%edx
  1011cc:	74 10                	je     1011de <memcpy+0x2e>
  1011ce:	b9 04 00 00 00       	mov    $0x4,%ecx
  1011d3:	29 d1                	sub    %edx,%ecx
  1011d5:	83 e1 03             	and    $0x3,%ecx
  1011d8:	29 cb                	sub    %ecx,%ebx
  1011da:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
  1011dc:	89 d9                	mov    %ebx,%ecx
  1011de:	c1 e9 02             	shr    $0x2,%ecx
  1011e1:	8d 76 00             	lea    0x0(%esi),%esi
  1011e4:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
  1011e6:	89 d9                	mov    %ebx,%ecx
  1011e8:	83 e1 03             	and    $0x3,%ecx
  1011eb:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
  1011ed:	8b 45 08             	mov    0x8(%ebp),%eax
  1011f0:	8d 65 f4             	lea    -0xc(%ebp),%esp
  1011f3:	5b                   	pop    %ebx
  1011f4:	5f                   	pop    %edi
  1011f5:	5e                   	pop    %esi
  1011f6:	c9                   	leave  
  1011f7:	c3                   	ret    

001011f8 <memset>:
  1011f8:	55                   	push   %ebp
  1011f9:	89 e5                	mov    %esp,%ebp
  1011fb:	57                   	push   %edi
  1011fc:	8b 7d 08             	mov    0x8(%ebp),%edi
  1011ff:	0f b6 45 0c          	movzbl 0xc(%ebp),%eax
  101203:	8b 4d 10             	mov    0x10(%ebp),%ecx
  101206:	fc                   	cld    
  101207:	83 f9 10             	cmp    $0x10,%ecx
  10120a:	76 69                	jbe    101275 <memset+0x7d>
  10120c:	f7 c7 07 00 00 00    	test   $0x7,%edi
  101212:	74 4c                	je     101260 <memset+0x68>
  101214:	88 07                	mov    %al,(%edi)
  101216:	47                   	inc    %edi
  101217:	49                   	dec    %ecx
  101218:	f7 c7 07 00 00 00    	test   $0x7,%edi
  10121e:	74 40                	je     101260 <memset+0x68>
  101220:	88 07                	mov    %al,(%edi)
  101222:	47                   	inc    %edi
  101223:	49                   	dec    %ecx
  101224:	f7 c7 07 00 00 00    	test   $0x7,%edi
  10122a:	74 34                	je     101260 <memset+0x68>
  10122c:	88 07                	mov    %al,(%edi)
  10122e:	47                   	inc    %edi
  10122f:	49                   	dec    %ecx
  101230:	f7 c7 07 00 00 00    	test   $0x7,%edi
  101236:	74 28                	je     101260 <memset+0x68>
  101238:	88 07                	mov    %al,(%edi)
  10123a:	47                   	inc    %edi
  10123b:	49                   	dec    %ecx
  10123c:	f7 c7 07 00 00 00    	test   $0x7,%edi
  101242:	74 1c                	je     101260 <memset+0x68>
  101244:	88 07                	mov    %al,(%edi)
  101246:	47                   	inc    %edi
  101247:	49                   	dec    %ecx
  101248:	f7 c7 07 00 00 00    	test   $0x7,%edi
  10124e:	74 10                	je     101260 <memset+0x68>
  101250:	88 07                	mov    %al,(%edi)
  101252:	47                   	inc    %edi
  101253:	49                   	dec    %ecx
  101254:	f7 c7 07 00 00 00    	test   $0x7,%edi
  10125a:	74 04                	je     101260 <memset+0x68>
  10125c:	88 07                	mov    %al,(%edi)
  10125e:	47                   	inc    %edi
  10125f:	49                   	dec    %ecx
  101260:	88 c4                	mov    %al,%ah
  101262:	89 c2                	mov    %eax,%edx
  101264:	c1 e2 10             	shl    $0x10,%edx
  101267:	09 d0                	or     %edx,%eax
  101269:	89 ca                	mov    %ecx,%edx
  10126b:	c1 e9 02             	shr    $0x2,%ecx
  10126e:	83 e2 03             	and    $0x3,%edx
  101271:	f3 ab                	rep stos %eax,%es:(%edi)
  101273:	89 d1                	mov    %edx,%ecx
  101275:	f3 aa                	rep stos %al,%es:(%edi)
  101277:	8b 45 08             	mov    0x8(%ebp),%eax
  10127a:	8d 65 fc             	lea    -0x4(%ebp),%esp
  10127d:	5f                   	pop    %edi
  10127e:	c9                   	leave  
  10127f:	c3                   	ret    
