
build/timers_pwm.elf:     file format elf32-littlearm

Sections:
Idx Name              Size      VMA       LMA       File off  Algn  Flags
  0 .isr_vector       000000c0  08000000  08000000  00010000  2**0  CONTENTS, ALLOC, LOAD, READONLY, DATA
  1 .text             000021f8  080000c0  080000c0  000100c0  2**2  CONTENTS, ALLOC, LOAD, READONLY, CODE
  2 .rodata           00000608  080022b8  080022b8  000122b8  2**2  CONTENTS, ALLOC, LOAD, READONLY, DATA
  3 .init_array       00000004  080028c0  080028c0  000128c0  2**2  CONTENTS, ALLOC, LOAD, DATA
  4 .fini_array       00000004  080028c4  080028c4  000128c4  2**2  CONTENTS, ALLOC, LOAD, DATA
  5 .data             00000018  20000000  080028c8  00020000  2**2  CONTENTS, ALLOC, LOAD, DATA
  6 .bss              00000448  20000018  080028e0  00020018  2**2  ALLOC
  7 ._user_heap_stack 00000600  20000460  080028e0  00020460  2**0  ALLOC
  8 .ARM.attributes   00000028  00000000  00000000  00020018  2**0  CONTENTS, READONLY
  9 .debug_info       00003e0d  00000000  00000000  00020040  2**0  CONTENTS, READONLY, DEBUGGING
 10 .debug_abbrev     00000ad0  00000000  00000000  00023e4d  2**0  CONTENTS, READONLY, DEBUGGING
 11 .debug_loc        0000170a  00000000  00000000  0002491d  2**0  CONTENTS, READONLY, DEBUGGING
 12 .debug_aranges    00000408  00000000  00000000  00026027  2**0  CONTENTS, READONLY, DEBUGGING
 13 .debug_ranges     000003a8  00000000  00000000  0002642f  2**0  CONTENTS, READONLY, DEBUGGING
 14 .debug_line       00001591  00000000  00000000  000267d7  2**0  CONTENTS, READONLY, DEBUGGING
 15 .debug_str        00001450  00000000  00000000  00027d68  2**0  CONTENTS, READONLY, DEBUGGING
 16 .comment          0000007f  00000000  00000000  000291b8  2**0  CONTENTS, READONLY
 17 .debug_frame      00000e4c  00000000  00000000  00029238  2**2  CONTENTS, READONLY, DEBUGGING

Disassembly of section .text:

080000c0 <__do_global_dtors_aux>:
 80000c0:	b510      	push	{r4, lr}
 80000c2:	4c06      	ldr	r4, [pc, #24]	; (80000dc <__do_global_dtors_aux+0x1c>)
 80000c4:	7823      	ldrb	r3, [r4, #0]
 80000c6:	2b00      	cmp	r3, #0
 80000c8:	d107      	bne.n	80000da <__do_global_dtors_aux+0x1a>
 80000ca:	4b05      	ldr	r3, [pc, #20]	; (80000e0 <__do_global_dtors_aux+0x20>)
 80000cc:	2b00      	cmp	r3, #0
 80000ce:	d002      	beq.n	80000d6 <__do_global_dtors_aux+0x16>
 80000d0:	4804      	ldr	r0, [pc, #16]	; (80000e4 <__do_global_dtors_aux+0x24>)
 80000d2:	e000      	b.n	80000d6 <__do_global_dtors_aux+0x16>
 80000d4:	bf00      	nop
 80000d6:	2301      	movs	r3, #1
 80000d8:	7023      	strb	r3, [r4, #0]
 80000da:	bd10      	pop	{r4, pc}
 80000dc:	20000018 	.word	0x20000018
 80000e0:	00000000 	.word	0x00000000
 80000e4:	080022a0 	.word	0x080022a0

080000e8 <frame_dummy>:
 80000e8:	4b04      	ldr	r3, [pc, #16]	; (80000fc <frame_dummy+0x14>)
 80000ea:	b510      	push	{r4, lr}
 80000ec:	2b00      	cmp	r3, #0
 80000ee:	d003      	beq.n	80000f8 <frame_dummy+0x10>
 80000f0:	4903      	ldr	r1, [pc, #12]	; (8000100 <frame_dummy+0x18>)
 80000f2:	4804      	ldr	r0, [pc, #16]	; (8000104 <frame_dummy+0x1c>)
 80000f4:	e000      	b.n	80000f8 <frame_dummy+0x10>
 80000f6:	bf00      	nop
 80000f8:	bd10      	pop	{r4, pc}
 80000fa:	46c0      	nop			; (mov r8, r8)
 80000fc:	00000000 	.word	0x00000000
 8000100:	2000001c 	.word	0x2000001c
 8000104:	080022a0 	.word	0x080022a0

08000108 <__udivsi3>:
 8000108:	2200      	movs	r2, #0
 800010a:	0843      	lsrs	r3, r0, #1
 800010c:	428b      	cmp	r3, r1
 800010e:	d374      	bcc.n	80001fa <__udivsi3+0xf2>
 8000110:	0903      	lsrs	r3, r0, #4
 8000112:	428b      	cmp	r3, r1
 8000114:	d35f      	bcc.n	80001d6 <__udivsi3+0xce>
 8000116:	0a03      	lsrs	r3, r0, #8
 8000118:	428b      	cmp	r3, r1
 800011a:	d344      	bcc.n	80001a6 <__udivsi3+0x9e>
 800011c:	0b03      	lsrs	r3, r0, #12
 800011e:	428b      	cmp	r3, r1
 8000120:	d328      	bcc.n	8000174 <__udivsi3+0x6c>
 8000122:	0c03      	lsrs	r3, r0, #16
 8000124:	428b      	cmp	r3, r1
 8000126:	d30d      	bcc.n	8000144 <__udivsi3+0x3c>
 8000128:	22ff      	movs	r2, #255	; 0xff
 800012a:	0209      	lsls	r1, r1, #8
 800012c:	ba12      	rev	r2, r2
 800012e:	0c03      	lsrs	r3, r0, #16
 8000130:	428b      	cmp	r3, r1
 8000132:	d302      	bcc.n	800013a <__udivsi3+0x32>
 8000134:	1212      	asrs	r2, r2, #8
 8000136:	0209      	lsls	r1, r1, #8
 8000138:	d065      	beq.n	8000206 <__udivsi3+0xfe>
 800013a:	0b03      	lsrs	r3, r0, #12
 800013c:	428b      	cmp	r3, r1
 800013e:	d319      	bcc.n	8000174 <__udivsi3+0x6c>
 8000140:	e000      	b.n	8000144 <__udivsi3+0x3c>
 8000142:	0a09      	lsrs	r1, r1, #8
 8000144:	0bc3      	lsrs	r3, r0, #15
 8000146:	428b      	cmp	r3, r1
 8000148:	d301      	bcc.n	800014e <__udivsi3+0x46>
 800014a:	03cb      	lsls	r3, r1, #15
 800014c:	1ac0      	subs	r0, r0, r3
 800014e:	4152      	adcs	r2, r2
 8000150:	0b83      	lsrs	r3, r0, #14
 8000152:	428b      	cmp	r3, r1
 8000154:	d301      	bcc.n	800015a <__udivsi3+0x52>
 8000156:	038b      	lsls	r3, r1, #14
 8000158:	1ac0      	subs	r0, r0, r3
 800015a:	4152      	adcs	r2, r2
 800015c:	0b43      	lsrs	r3, r0, #13
 800015e:	428b      	cmp	r3, r1
 8000160:	d301      	bcc.n	8000166 <__udivsi3+0x5e>
 8000162:	034b      	lsls	r3, r1, #13
 8000164:	1ac0      	subs	r0, r0, r3
 8000166:	4152      	adcs	r2, r2
 8000168:	0b03      	lsrs	r3, r0, #12
 800016a:	428b      	cmp	r3, r1
 800016c:	d301      	bcc.n	8000172 <__udivsi3+0x6a>
 800016e:	030b      	lsls	r3, r1, #12
 8000170:	1ac0      	subs	r0, r0, r3
 8000172:	4152      	adcs	r2, r2
 8000174:	0ac3      	lsrs	r3, r0, #11
 8000176:	428b      	cmp	r3, r1
 8000178:	d301      	bcc.n	800017e <__udivsi3+0x76>
 800017a:	02cb      	lsls	r3, r1, #11
 800017c:	1ac0      	subs	r0, r0, r3
 800017e:	4152      	adcs	r2, r2
 8000180:	0a83      	lsrs	r3, r0, #10
 8000182:	428b      	cmp	r3, r1
 8000184:	d301      	bcc.n	800018a <__udivsi3+0x82>
 8000186:	028b      	lsls	r3, r1, #10
 8000188:	1ac0      	subs	r0, r0, r3
 800018a:	4152      	adcs	r2, r2
 800018c:	0a43      	lsrs	r3, r0, #9
 800018e:	428b      	cmp	r3, r1
 8000190:	d301      	bcc.n	8000196 <__udivsi3+0x8e>
 8000192:	024b      	lsls	r3, r1, #9
 8000194:	1ac0      	subs	r0, r0, r3
 8000196:	4152      	adcs	r2, r2
 8000198:	0a03      	lsrs	r3, r0, #8
 800019a:	428b      	cmp	r3, r1
 800019c:	d301      	bcc.n	80001a2 <__udivsi3+0x9a>
 800019e:	020b      	lsls	r3, r1, #8
 80001a0:	1ac0      	subs	r0, r0, r3
 80001a2:	4152      	adcs	r2, r2
 80001a4:	d2cd      	bcs.n	8000142 <__udivsi3+0x3a>
 80001a6:	09c3      	lsrs	r3, r0, #7
 80001a8:	428b      	cmp	r3, r1
 80001aa:	d301      	bcc.n	80001b0 <__udivsi3+0xa8>
 80001ac:	01cb      	lsls	r3, r1, #7
 80001ae:	1ac0      	subs	r0, r0, r3
 80001b0:	4152      	adcs	r2, r2
 80001b2:	0983      	lsrs	r3, r0, #6
 80001b4:	428b      	cmp	r3, r1
 80001b6:	d301      	bcc.n	80001bc <__udivsi3+0xb4>
 80001b8:	018b      	lsls	r3, r1, #6
 80001ba:	1ac0      	subs	r0, r0, r3
 80001bc:	4152      	adcs	r2, r2
 80001be:	0943      	lsrs	r3, r0, #5
 80001c0:	428b      	cmp	r3, r1
 80001c2:	d301      	bcc.n	80001c8 <__udivsi3+0xc0>
 80001c4:	014b      	lsls	r3, r1, #5
 80001c6:	1ac0      	subs	r0, r0, r3
 80001c8:	4152      	adcs	r2, r2
 80001ca:	0903      	lsrs	r3, r0, #4
 80001cc:	428b      	cmp	r3, r1
 80001ce:	d301      	bcc.n	80001d4 <__udivsi3+0xcc>
 80001d0:	010b      	lsls	r3, r1, #4
 80001d2:	1ac0      	subs	r0, r0, r3
 80001d4:	4152      	adcs	r2, r2
 80001d6:	08c3      	lsrs	r3, r0, #3
 80001d8:	428b      	cmp	r3, r1
 80001da:	d301      	bcc.n	80001e0 <__udivsi3+0xd8>
 80001dc:	00cb      	lsls	r3, r1, #3
 80001de:	1ac0      	subs	r0, r0, r3
 80001e0:	4152      	adcs	r2, r2
 80001e2:	0883      	lsrs	r3, r0, #2
 80001e4:	428b      	cmp	r3, r1
 80001e6:	d301      	bcc.n	80001ec <__udivsi3+0xe4>
 80001e8:	008b      	lsls	r3, r1, #2
 80001ea:	1ac0      	subs	r0, r0, r3
 80001ec:	4152      	adcs	r2, r2
 80001ee:	0843      	lsrs	r3, r0, #1
 80001f0:	428b      	cmp	r3, r1
 80001f2:	d301      	bcc.n	80001f8 <__udivsi3+0xf0>
 80001f4:	004b      	lsls	r3, r1, #1
 80001f6:	1ac0      	subs	r0, r0, r3
 80001f8:	4152      	adcs	r2, r2
 80001fa:	1a41      	subs	r1, r0, r1
 80001fc:	d200      	bcs.n	8000200 <__udivsi3+0xf8>
 80001fe:	4601      	mov	r1, r0
 8000200:	4152      	adcs	r2, r2
 8000202:	4610      	mov	r0, r2
 8000204:	4770      	bx	lr
 8000206:	e7ff      	b.n	8000208 <__udivsi3+0x100>
 8000208:	b501      	push	{r0, lr}
 800020a:	2000      	movs	r0, #0
 800020c:	f000 f806 	bl	800021c <__aeabi_idiv0>
 8000210:	bd02      	pop	{r1, pc}
 8000212:	46c0      	nop			; (mov r8, r8)

08000214 <__aeabi_uidivmod>:
 8000214:	2900      	cmp	r1, #0
 8000216:	d0f7      	beq.n	8000208 <__udivsi3+0x100>
 8000218:	e776      	b.n	8000108 <__udivsi3>
 800021a:	4770      	bx	lr

0800021c <__aeabi_idiv0>:
 800021c:	4770      	bx	lr
 800021e:	46c0      	nop			; (mov r8, r8)

08000220 <Reset_Handler>:
 8000220:	480d      	ldr	r0, [pc, #52]	; (8000258 <LoopForever+0x2>)
 8000222:	4685      	mov	sp, r0
 8000224:	480d      	ldr	r0, [pc, #52]	; (800025c <LoopForever+0x6>)
 8000226:	490e      	ldr	r1, [pc, #56]	; (8000260 <LoopForever+0xa>)
 8000228:	4a0e      	ldr	r2, [pc, #56]	; (8000264 <LoopForever+0xe>)
 800022a:	2300      	movs	r3, #0
 800022c:	e002      	b.n	8000234 <LoopCopyDataInit>

0800022e <CopyDataInit>:
 800022e:	58d4      	ldr	r4, [r2, r3]
 8000230:	50c4      	str	r4, [r0, r3]
 8000232:	3304      	adds	r3, #4

08000234 <LoopCopyDataInit>:
 8000234:	18c4      	adds	r4, r0, r3
 8000236:	428c      	cmp	r4, r1
 8000238:	d3f9      	bcc.n	800022e <CopyDataInit>
 800023a:	4a0b      	ldr	r2, [pc, #44]	; (8000268 <LoopForever+0x12>)
 800023c:	4c0b      	ldr	r4, [pc, #44]	; (800026c <LoopForever+0x16>)
 800023e:	2300      	movs	r3, #0
 8000240:	e001      	b.n	8000246 <LoopFillZerobss>

08000242 <FillZerobss>:
 8000242:	6013      	str	r3, [r2, #0]
 8000244:	3204      	adds	r2, #4

08000246 <LoopFillZerobss>:
 8000246:	42a2      	cmp	r2, r4
 8000248:	d3fb      	bcc.n	8000242 <FillZerobss>
 800024a:	f001 f98b 	bl	8001564 <SystemInit>
 800024e:	f001 fffb 	bl	8002248 <__libc_init_array>
 8000252:	f001 f947 	bl	80014e4 <main>

08000256 <LoopForever>:
 8000256:	e7fe      	b.n	8000256 <LoopForever>
 8000258:	20002000 	.word	0x20002000
 800025c:	20000000 	.word	0x20000000
 8000260:	20000018 	.word	0x20000018
 8000264:	080028c8 	.word	0x080028c8
 8000268:	20000018 	.word	0x20000018
 800026c:	20000460 	.word	0x20000460

08000270 <ADC1_COMP_IRQHandler>:
 8000270:	e7fe      	b.n	8000270 <ADC1_COMP_IRQHandler>
	...

08000274 <NVIC_EnableIRQ>:
 8000274:	b580      	push	{r7, lr}
 8000276:	b082      	sub	sp, #8
 8000278:	af00      	add	r7, sp, #0
 800027a:	0002      	movs	r2, r0
 800027c:	1dfb      	adds	r3, r7, #7
 800027e:	701a      	strb	r2, [r3, #0]
 8000280:	1dfb      	adds	r3, r7, #7
 8000282:	781b      	ldrb	r3, [r3, #0]
 8000284:	001a      	movs	r2, r3
 8000286:	231f      	movs	r3, #31
 8000288:	401a      	ands	r2, r3
 800028a:	4b04      	ldr	r3, [pc, #16]	; (800029c <NVIC_EnableIRQ+0x28>)
 800028c:	2101      	movs	r1, #1
 800028e:	4091      	lsls	r1, r2
 8000290:	000a      	movs	r2, r1
 8000292:	601a      	str	r2, [r3, #0]
 8000294:	46c0      	nop			; (mov r8, r8)
 8000296:	46bd      	mov	sp, r7
 8000298:	b002      	add	sp, #8
 800029a:	bd80      	pop	{r7, pc}
 800029c:	e000e100 	.word	0xe000e100

080002a0 <NVIC_SetPriority>:
 80002a0:	b590      	push	{r4, r7, lr}
 80002a2:	b083      	sub	sp, #12
 80002a4:	af00      	add	r7, sp, #0
 80002a6:	0002      	movs	r2, r0
 80002a8:	6039      	str	r1, [r7, #0]
 80002aa:	1dfb      	adds	r3, r7, #7
 80002ac:	701a      	strb	r2, [r3, #0]
 80002ae:	1dfb      	adds	r3, r7, #7
 80002b0:	781b      	ldrb	r3, [r3, #0]
 80002b2:	2b7f      	cmp	r3, #127	; 0x7f
 80002b4:	d932      	bls.n	800031c <NVIC_SetPriority+0x7c>
 80002b6:	4a2f      	ldr	r2, [pc, #188]	; (8000374 <NVIC_SetPriority+0xd4>)
 80002b8:	1dfb      	adds	r3, r7, #7
 80002ba:	781b      	ldrb	r3, [r3, #0]
 80002bc:	0019      	movs	r1, r3
 80002be:	230f      	movs	r3, #15
 80002c0:	400b      	ands	r3, r1
 80002c2:	3b08      	subs	r3, #8
 80002c4:	089b      	lsrs	r3, r3, #2
 80002c6:	3306      	adds	r3, #6
 80002c8:	009b      	lsls	r3, r3, #2
 80002ca:	18d3      	adds	r3, r2, r3
 80002cc:	3304      	adds	r3, #4
 80002ce:	681b      	ldr	r3, [r3, #0]
 80002d0:	1dfa      	adds	r2, r7, #7
 80002d2:	7812      	ldrb	r2, [r2, #0]
 80002d4:	0011      	movs	r1, r2
 80002d6:	2203      	movs	r2, #3
 80002d8:	400a      	ands	r2, r1
 80002da:	00d2      	lsls	r2, r2, #3
 80002dc:	21ff      	movs	r1, #255	; 0xff
 80002de:	4091      	lsls	r1, r2
 80002e0:	000a      	movs	r2, r1
 80002e2:	43d2      	mvns	r2, r2
 80002e4:	401a      	ands	r2, r3
 80002e6:	0011      	movs	r1, r2
 80002e8:	683b      	ldr	r3, [r7, #0]
 80002ea:	019b      	lsls	r3, r3, #6
 80002ec:	22ff      	movs	r2, #255	; 0xff
 80002ee:	401a      	ands	r2, r3
 80002f0:	1dfb      	adds	r3, r7, #7
 80002f2:	781b      	ldrb	r3, [r3, #0]
 80002f4:	0018      	movs	r0, r3
 80002f6:	2303      	movs	r3, #3
 80002f8:	4003      	ands	r3, r0
 80002fa:	00db      	lsls	r3, r3, #3
 80002fc:	409a      	lsls	r2, r3
 80002fe:	481d      	ldr	r0, [pc, #116]	; (8000374 <NVIC_SetPriority+0xd4>)
 8000300:	1dfb      	adds	r3, r7, #7
 8000302:	781b      	ldrb	r3, [r3, #0]
 8000304:	001c      	movs	r4, r3
 8000306:	230f      	movs	r3, #15
 8000308:	4023      	ands	r3, r4
 800030a:	3b08      	subs	r3, #8
 800030c:	089b      	lsrs	r3, r3, #2
 800030e:	430a      	orrs	r2, r1
 8000310:	3306      	adds	r3, #6
 8000312:	009b      	lsls	r3, r3, #2
 8000314:	18c3      	adds	r3, r0, r3
 8000316:	3304      	adds	r3, #4
 8000318:	601a      	str	r2, [r3, #0]
 800031a:	e027      	b.n	800036c <NVIC_SetPriority+0xcc>
 800031c:	4a16      	ldr	r2, [pc, #88]	; (8000378 <NVIC_SetPriority+0xd8>)
 800031e:	1dfb      	adds	r3, r7, #7
 8000320:	781b      	ldrb	r3, [r3, #0]
 8000322:	b25b      	sxtb	r3, r3
 8000324:	089b      	lsrs	r3, r3, #2
 8000326:	33c0      	adds	r3, #192	; 0xc0
 8000328:	009b      	lsls	r3, r3, #2
 800032a:	589b      	ldr	r3, [r3, r2]
 800032c:	1dfa      	adds	r2, r7, #7
 800032e:	7812      	ldrb	r2, [r2, #0]
 8000330:	0011      	movs	r1, r2
 8000332:	2203      	movs	r2, #3
 8000334:	400a      	ands	r2, r1
 8000336:	00d2      	lsls	r2, r2, #3
 8000338:	21ff      	movs	r1, #255	; 0xff
 800033a:	4091      	lsls	r1, r2
 800033c:	000a      	movs	r2, r1
 800033e:	43d2      	mvns	r2, r2
 8000340:	401a      	ands	r2, r3
 8000342:	0011      	movs	r1, r2
 8000344:	683b      	ldr	r3, [r7, #0]
 8000346:	019b      	lsls	r3, r3, #6
 8000348:	22ff      	movs	r2, #255	; 0xff
 800034a:	401a      	ands	r2, r3
 800034c:	1dfb      	adds	r3, r7, #7
 800034e:	781b      	ldrb	r3, [r3, #0]
 8000350:	0018      	movs	r0, r3
 8000352:	2303      	movs	r3, #3
 8000354:	4003      	ands	r3, r0
 8000356:	00db      	lsls	r3, r3, #3
 8000358:	409a      	lsls	r2, r3
 800035a:	4807      	ldr	r0, [pc, #28]	; (8000378 <NVIC_SetPriority+0xd8>)
 800035c:	1dfb      	adds	r3, r7, #7
 800035e:	781b      	ldrb	r3, [r3, #0]
 8000360:	b25b      	sxtb	r3, r3
 8000362:	089b      	lsrs	r3, r3, #2
 8000364:	430a      	orrs	r2, r1
 8000366:	33c0      	adds	r3, #192	; 0xc0
 8000368:	009b      	lsls	r3, r3, #2
 800036a:	501a      	str	r2, [r3, r0]
 800036c:	46c0      	nop			; (mov r8, r8)
 800036e:	46bd      	mov	sp, r7
 8000370:	b003      	add	sp, #12
 8000372:	bd90      	pop	{r4, r7, pc}
 8000374:	e000ed00 	.word	0xe000ed00
 8000378:	e000e100 	.word	0xe000e100

0800037c <LL_RCC_HSI_Enable>:
 800037c:	b580      	push	{r7, lr}
 800037e:	af00      	add	r7, sp, #0
 8000380:	4b04      	ldr	r3, [pc, #16]	; (8000394 <LL_RCC_HSI_Enable+0x18>)
 8000382:	681a      	ldr	r2, [r3, #0]
 8000384:	4b03      	ldr	r3, [pc, #12]	; (8000394 <LL_RCC_HSI_Enable+0x18>)
 8000386:	2101      	movs	r1, #1
 8000388:	430a      	orrs	r2, r1
 800038a:	601a      	str	r2, [r3, #0]
 800038c:	46c0      	nop			; (mov r8, r8)
 800038e:	46bd      	mov	sp, r7
 8000390:	bd80      	pop	{r7, pc}
 8000392:	46c0      	nop			; (mov r8, r8)
 8000394:	40021000 	.word	0x40021000

08000398 <LL_RCC_HSI_IsReady>:
 8000398:	b580      	push	{r7, lr}
 800039a:	af00      	add	r7, sp, #0
 800039c:	4b05      	ldr	r3, [pc, #20]	; (80003b4 <LL_RCC_HSI_IsReady+0x1c>)
 800039e:	681b      	ldr	r3, [r3, #0]
 80003a0:	2202      	movs	r2, #2
 80003a2:	4013      	ands	r3, r2
 80003a4:	3b02      	subs	r3, #2
 80003a6:	425a      	negs	r2, r3
 80003a8:	4153      	adcs	r3, r2
 80003aa:	b2db      	uxtb	r3, r3
 80003ac:	0018      	movs	r0, r3
 80003ae:	46bd      	mov	sp, r7
 80003b0:	bd80      	pop	{r7, pc}
 80003b2:	46c0      	nop			; (mov r8, r8)
 80003b4:	40021000 	.word	0x40021000

080003b8 <LL_RCC_SetSysClkSource>:
 80003b8:	b580      	push	{r7, lr}
 80003ba:	b082      	sub	sp, #8
 80003bc:	af00      	add	r7, sp, #0
 80003be:	6078      	str	r0, [r7, #4]
 80003c0:	4b06      	ldr	r3, [pc, #24]	; (80003dc <LL_RCC_SetSysClkSource+0x24>)
 80003c2:	685b      	ldr	r3, [r3, #4]
 80003c4:	2203      	movs	r2, #3
 80003c6:	4393      	bics	r3, r2
 80003c8:	0019      	movs	r1, r3
 80003ca:	4b04      	ldr	r3, [pc, #16]	; (80003dc <LL_RCC_SetSysClkSource+0x24>)
 80003cc:	687a      	ldr	r2, [r7, #4]
 80003ce:	430a      	orrs	r2, r1
 80003d0:	605a      	str	r2, [r3, #4]
 80003d2:	46c0      	nop			; (mov r8, r8)
 80003d4:	46bd      	mov	sp, r7
 80003d6:	b002      	add	sp, #8
 80003d8:	bd80      	pop	{r7, pc}
 80003da:	46c0      	nop			; (mov r8, r8)
 80003dc:	40021000 	.word	0x40021000

080003e0 <LL_RCC_GetSysClkSource>:
 80003e0:	b580      	push	{r7, lr}
 80003e2:	af00      	add	r7, sp, #0
 80003e4:	4b03      	ldr	r3, [pc, #12]	; (80003f4 <LL_RCC_GetSysClkSource+0x14>)
 80003e6:	685b      	ldr	r3, [r3, #4]
 80003e8:	220c      	movs	r2, #12
 80003ea:	4013      	ands	r3, r2
 80003ec:	0018      	movs	r0, r3
 80003ee:	46bd      	mov	sp, r7
 80003f0:	bd80      	pop	{r7, pc}
 80003f2:	46c0      	nop			; (mov r8, r8)
 80003f4:	40021000 	.word	0x40021000

080003f8 <LL_RCC_SetAHBPrescaler>:
 80003f8:	b580      	push	{r7, lr}
 80003fa:	b082      	sub	sp, #8
 80003fc:	af00      	add	r7, sp, #0
 80003fe:	6078      	str	r0, [r7, #4]
 8000400:	4b06      	ldr	r3, [pc, #24]	; (800041c <LL_RCC_SetAHBPrescaler+0x24>)
 8000402:	685b      	ldr	r3, [r3, #4]
 8000404:	22f0      	movs	r2, #240	; 0xf0
 8000406:	4393      	bics	r3, r2
 8000408:	0019      	movs	r1, r3
 800040a:	4b04      	ldr	r3, [pc, #16]	; (800041c <LL_RCC_SetAHBPrescaler+0x24>)
 800040c:	687a      	ldr	r2, [r7, #4]
 800040e:	430a      	orrs	r2, r1
 8000410:	605a      	str	r2, [r3, #4]
 8000412:	46c0      	nop			; (mov r8, r8)
 8000414:	46bd      	mov	sp, r7
 8000416:	b002      	add	sp, #8
 8000418:	bd80      	pop	{r7, pc}
 800041a:	46c0      	nop			; (mov r8, r8)
 800041c:	40021000 	.word	0x40021000

08000420 <LL_RCC_SetAPB1Prescaler>:
 8000420:	b580      	push	{r7, lr}
 8000422:	b082      	sub	sp, #8
 8000424:	af00      	add	r7, sp, #0
 8000426:	6078      	str	r0, [r7, #4]
 8000428:	4b06      	ldr	r3, [pc, #24]	; (8000444 <LL_RCC_SetAPB1Prescaler+0x24>)
 800042a:	685b      	ldr	r3, [r3, #4]
 800042c:	4a06      	ldr	r2, [pc, #24]	; (8000448 <LL_RCC_SetAPB1Prescaler+0x28>)
 800042e:	4013      	ands	r3, r2
 8000430:	0019      	movs	r1, r3
 8000432:	4b04      	ldr	r3, [pc, #16]	; (8000444 <LL_RCC_SetAPB1Prescaler+0x24>)
 8000434:	687a      	ldr	r2, [r7, #4]
 8000436:	430a      	orrs	r2, r1
 8000438:	605a      	str	r2, [r3, #4]
 800043a:	46c0      	nop			; (mov r8, r8)
 800043c:	46bd      	mov	sp, r7
 800043e:	b002      	add	sp, #8
 8000440:	bd80      	pop	{r7, pc}
 8000442:	46c0      	nop			; (mov r8, r8)
 8000444:	40021000 	.word	0x40021000
 8000448:	fffff8ff 	.word	0xfffff8ff

0800044c <LL_RCC_PLL_Enable>:
 800044c:	b580      	push	{r7, lr}
 800044e:	af00      	add	r7, sp, #0
 8000450:	4b04      	ldr	r3, [pc, #16]	; (8000464 <LL_RCC_PLL_Enable+0x18>)
 8000452:	681a      	ldr	r2, [r3, #0]
 8000454:	4b03      	ldr	r3, [pc, #12]	; (8000464 <LL_RCC_PLL_Enable+0x18>)
 8000456:	2180      	movs	r1, #128	; 0x80
 8000458:	0449      	lsls	r1, r1, #17
 800045a:	430a      	orrs	r2, r1
 800045c:	601a      	str	r2, [r3, #0]
 800045e:	46c0      	nop			; (mov r8, r8)
 8000460:	46bd      	mov	sp, r7
 8000462:	bd80      	pop	{r7, pc}
 8000464:	40021000 	.word	0x40021000

08000468 <LL_RCC_PLL_IsReady>:
 8000468:	b580      	push	{r7, lr}
 800046a:	af00      	add	r7, sp, #0
 800046c:	4b07      	ldr	r3, [pc, #28]	; (800048c <LL_RCC_PLL_IsReady+0x24>)
 800046e:	681a      	ldr	r2, [r3, #0]
 8000470:	2380      	movs	r3, #128	; 0x80
 8000472:	049b      	lsls	r3, r3, #18
 8000474:	4013      	ands	r3, r2
 8000476:	22fe      	movs	r2, #254	; 0xfe
 8000478:	0612      	lsls	r2, r2, #24
 800047a:	4694      	mov	ip, r2
 800047c:	4463      	add	r3, ip
 800047e:	425a      	negs	r2, r3
 8000480:	4153      	adcs	r3, r2
 8000482:	b2db      	uxtb	r3, r3
 8000484:	0018      	movs	r0, r3
 8000486:	46bd      	mov	sp, r7
 8000488:	bd80      	pop	{r7, pc}
 800048a:	46c0      	nop			; (mov r8, r8)
 800048c:	40021000 	.word	0x40021000

08000490 <LL_RCC_PLL_ConfigDomain_SYS>:
 8000490:	b580      	push	{r7, lr}
 8000492:	b082      	sub	sp, #8
 8000494:	af00      	add	r7, sp, #0
 8000496:	6078      	str	r0, [r7, #4]
 8000498:	6039      	str	r1, [r7, #0]
 800049a:	4b0e      	ldr	r3, [pc, #56]	; (80004d4 <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 800049c:	685b      	ldr	r3, [r3, #4]
 800049e:	4a0e      	ldr	r2, [pc, #56]	; (80004d8 <LL_RCC_PLL_ConfigDomain_SYS+0x48>)
 80004a0:	4013      	ands	r3, r2
 80004a2:	0019      	movs	r1, r3
 80004a4:	687a      	ldr	r2, [r7, #4]
 80004a6:	2380      	movs	r3, #128	; 0x80
 80004a8:	025b      	lsls	r3, r3, #9
 80004aa:	401a      	ands	r2, r3
 80004ac:	683b      	ldr	r3, [r7, #0]
 80004ae:	431a      	orrs	r2, r3
 80004b0:	4b08      	ldr	r3, [pc, #32]	; (80004d4 <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 80004b2:	430a      	orrs	r2, r1
 80004b4:	605a      	str	r2, [r3, #4]
 80004b6:	4b07      	ldr	r3, [pc, #28]	; (80004d4 <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 80004b8:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 80004ba:	220f      	movs	r2, #15
 80004bc:	4393      	bics	r3, r2
 80004be:	0019      	movs	r1, r3
 80004c0:	687b      	ldr	r3, [r7, #4]
 80004c2:	220f      	movs	r2, #15
 80004c4:	401a      	ands	r2, r3
 80004c6:	4b03      	ldr	r3, [pc, #12]	; (80004d4 <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 80004c8:	430a      	orrs	r2, r1
 80004ca:	62da      	str	r2, [r3, #44]	; 0x2c
 80004cc:	46c0      	nop			; (mov r8, r8)
 80004ce:	46bd      	mov	sp, r7
 80004d0:	b002      	add	sp, #8
 80004d2:	bd80      	pop	{r7, pc}
 80004d4:	40021000 	.word	0x40021000
 80004d8:	ffc2ffff 	.word	0xffc2ffff

080004dc <LL_SYSCFG_SetEXTISource>:
 80004dc:	b590      	push	{r4, r7, lr}
 80004de:	b083      	sub	sp, #12
 80004e0:	af00      	add	r7, sp, #0
 80004e2:	6078      	str	r0, [r7, #4]
 80004e4:	6039      	str	r1, [r7, #0]
 80004e6:	4a0f      	ldr	r2, [pc, #60]	; (8000524 <LL_SYSCFG_SetEXTISource+0x48>)
 80004e8:	683b      	ldr	r3, [r7, #0]
 80004ea:	21ff      	movs	r1, #255	; 0xff
 80004ec:	400b      	ands	r3, r1
 80004ee:	3302      	adds	r3, #2
 80004f0:	009b      	lsls	r3, r3, #2
 80004f2:	589b      	ldr	r3, [r3, r2]
 80004f4:	683a      	ldr	r2, [r7, #0]
 80004f6:	0c12      	lsrs	r2, r2, #16
 80004f8:	210f      	movs	r1, #15
 80004fa:	4091      	lsls	r1, r2
 80004fc:	000a      	movs	r2, r1
 80004fe:	43d2      	mvns	r2, r2
 8000500:	401a      	ands	r2, r3
 8000502:	0011      	movs	r1, r2
 8000504:	683b      	ldr	r3, [r7, #0]
 8000506:	0c1b      	lsrs	r3, r3, #16
 8000508:	687a      	ldr	r2, [r7, #4]
 800050a:	409a      	lsls	r2, r3
 800050c:	4805      	ldr	r0, [pc, #20]	; (8000524 <LL_SYSCFG_SetEXTISource+0x48>)
 800050e:	683b      	ldr	r3, [r7, #0]
 8000510:	24ff      	movs	r4, #255	; 0xff
 8000512:	4023      	ands	r3, r4
 8000514:	430a      	orrs	r2, r1
 8000516:	3302      	adds	r3, #2
 8000518:	009b      	lsls	r3, r3, #2
 800051a:	501a      	str	r2, [r3, r0]
 800051c:	46c0      	nop			; (mov r8, r8)
 800051e:	46bd      	mov	sp, r7
 8000520:	b003      	add	sp, #12
 8000522:	bd90      	pop	{r4, r7, pc}
 8000524:	40010000 	.word	0x40010000

08000528 <LL_FLASH_SetLatency>:
 8000528:	b580      	push	{r7, lr}
 800052a:	b082      	sub	sp, #8
 800052c:	af00      	add	r7, sp, #0
 800052e:	6078      	str	r0, [r7, #4]
 8000530:	4b06      	ldr	r3, [pc, #24]	; (800054c <LL_FLASH_SetLatency+0x24>)
 8000532:	681b      	ldr	r3, [r3, #0]
 8000534:	2201      	movs	r2, #1
 8000536:	4393      	bics	r3, r2
 8000538:	0019      	movs	r1, r3
 800053a:	4b04      	ldr	r3, [pc, #16]	; (800054c <LL_FLASH_SetLatency+0x24>)
 800053c:	687a      	ldr	r2, [r7, #4]
 800053e:	430a      	orrs	r2, r1
 8000540:	601a      	str	r2, [r3, #0]
 8000542:	46c0      	nop			; (mov r8, r8)
 8000544:	46bd      	mov	sp, r7
 8000546:	b002      	add	sp, #8
 8000548:	bd80      	pop	{r7, pc}
 800054a:	46c0      	nop			; (mov r8, r8)
 800054c:	40022000 	.word	0x40022000

08000550 <LL_AHB1_GRP1_EnableClock>:
 8000550:	b580      	push	{r7, lr}
 8000552:	b084      	sub	sp, #16
 8000554:	af00      	add	r7, sp, #0
 8000556:	6078      	str	r0, [r7, #4]
 8000558:	4b07      	ldr	r3, [pc, #28]	; (8000578 <LL_AHB1_GRP1_EnableClock+0x28>)
 800055a:	6959      	ldr	r1, [r3, #20]
 800055c:	4b06      	ldr	r3, [pc, #24]	; (8000578 <LL_AHB1_GRP1_EnableClock+0x28>)
 800055e:	687a      	ldr	r2, [r7, #4]
 8000560:	430a      	orrs	r2, r1
 8000562:	615a      	str	r2, [r3, #20]
 8000564:	4b04      	ldr	r3, [pc, #16]	; (8000578 <LL_AHB1_GRP1_EnableClock+0x28>)
 8000566:	695b      	ldr	r3, [r3, #20]
 8000568:	687a      	ldr	r2, [r7, #4]
 800056a:	4013      	ands	r3, r2
 800056c:	60fb      	str	r3, [r7, #12]
 800056e:	68fb      	ldr	r3, [r7, #12]
 8000570:	46c0      	nop			; (mov r8, r8)
 8000572:	46bd      	mov	sp, r7
 8000574:	b004      	add	sp, #16
 8000576:	bd80      	pop	{r7, pc}
 8000578:	40021000 	.word	0x40021000

0800057c <LL_APB1_GRP1_EnableClock>:
 800057c:	b580      	push	{r7, lr}
 800057e:	b084      	sub	sp, #16
 8000580:	af00      	add	r7, sp, #0
 8000582:	6078      	str	r0, [r7, #4]
 8000584:	4b07      	ldr	r3, [pc, #28]	; (80005a4 <LL_APB1_GRP1_EnableClock+0x28>)
 8000586:	69d9      	ldr	r1, [r3, #28]
 8000588:	4b06      	ldr	r3, [pc, #24]	; (80005a4 <LL_APB1_GRP1_EnableClock+0x28>)
 800058a:	687a      	ldr	r2, [r7, #4]
 800058c:	430a      	orrs	r2, r1
 800058e:	61da      	str	r2, [r3, #28]
 8000590:	4b04      	ldr	r3, [pc, #16]	; (80005a4 <LL_APB1_GRP1_EnableClock+0x28>)
 8000592:	69db      	ldr	r3, [r3, #28]
 8000594:	687a      	ldr	r2, [r7, #4]
 8000596:	4013      	ands	r3, r2
 8000598:	60fb      	str	r3, [r7, #12]
 800059a:	68fb      	ldr	r3, [r7, #12]
 800059c:	46c0      	nop			; (mov r8, r8)
 800059e:	46bd      	mov	sp, r7
 80005a0:	b004      	add	sp, #16
 80005a2:	bd80      	pop	{r7, pc}
 80005a4:	40021000 	.word	0x40021000

080005a8 <LL_APB1_GRP2_EnableClock>:
 80005a8:	b580      	push	{r7, lr}
 80005aa:	b084      	sub	sp, #16
 80005ac:	af00      	add	r7, sp, #0
 80005ae:	6078      	str	r0, [r7, #4]
 80005b0:	4b07      	ldr	r3, [pc, #28]	; (80005d0 <LL_APB1_GRP2_EnableClock+0x28>)
 80005b2:	6999      	ldr	r1, [r3, #24]
 80005b4:	4b06      	ldr	r3, [pc, #24]	; (80005d0 <LL_APB1_GRP2_EnableClock+0x28>)
 80005b6:	687a      	ldr	r2, [r7, #4]
 80005b8:	430a      	orrs	r2, r1
 80005ba:	619a      	str	r2, [r3, #24]
 80005bc:	4b04      	ldr	r3, [pc, #16]	; (80005d0 <LL_APB1_GRP2_EnableClock+0x28>)
 80005be:	699b      	ldr	r3, [r3, #24]
 80005c0:	687a      	ldr	r2, [r7, #4]
 80005c2:	4013      	ands	r3, r2
 80005c4:	60fb      	str	r3, [r7, #12]
 80005c6:	68fb      	ldr	r3, [r7, #12]
 80005c8:	46c0      	nop			; (mov r8, r8)
 80005ca:	46bd      	mov	sp, r7
 80005cc:	b004      	add	sp, #16
 80005ce:	bd80      	pop	{r7, pc}
 80005d0:	40021000 	.word	0x40021000

080005d4 <LL_GPIO_SetPinMode>:
 80005d4:	b580      	push	{r7, lr}
 80005d6:	b084      	sub	sp, #16
 80005d8:	af00      	add	r7, sp, #0
 80005da:	60f8      	str	r0, [r7, #12]
 80005dc:	60b9      	str	r1, [r7, #8]
 80005de:	607a      	str	r2, [r7, #4]
 80005e0:	68fb      	ldr	r3, [r7, #12]
 80005e2:	6819      	ldr	r1, [r3, #0]
 80005e4:	68bb      	ldr	r3, [r7, #8]
 80005e6:	68ba      	ldr	r2, [r7, #8]
 80005e8:	435a      	muls	r2, r3
 80005ea:	0013      	movs	r3, r2
 80005ec:	005b      	lsls	r3, r3, #1
 80005ee:	189b      	adds	r3, r3, r2
 80005f0:	43db      	mvns	r3, r3
 80005f2:	400b      	ands	r3, r1
 80005f4:	001a      	movs	r2, r3
 80005f6:	68bb      	ldr	r3, [r7, #8]
 80005f8:	68b9      	ldr	r1, [r7, #8]
 80005fa:	434b      	muls	r3, r1
 80005fc:	6879      	ldr	r1, [r7, #4]
 80005fe:	434b      	muls	r3, r1
 8000600:	431a      	orrs	r2, r3
 8000602:	68fb      	ldr	r3, [r7, #12]
 8000604:	601a      	str	r2, [r3, #0]
 8000606:	46c0      	nop			; (mov r8, r8)
 8000608:	46bd      	mov	sp, r7
 800060a:	b004      	add	sp, #16
 800060c:	bd80      	pop	{r7, pc}

0800060e <LL_GPIO_SetPinPull>:
 800060e:	b580      	push	{r7, lr}
 8000610:	b084      	sub	sp, #16
 8000612:	af00      	add	r7, sp, #0
 8000614:	60f8      	str	r0, [r7, #12]
 8000616:	60b9      	str	r1, [r7, #8]
 8000618:	607a      	str	r2, [r7, #4]
 800061a:	68fb      	ldr	r3, [r7, #12]
 800061c:	68d9      	ldr	r1, [r3, #12]
 800061e:	68bb      	ldr	r3, [r7, #8]
 8000620:	68ba      	ldr	r2, [r7, #8]
 8000622:	435a      	muls	r2, r3
 8000624:	0013      	movs	r3, r2
 8000626:	005b      	lsls	r3, r3, #1
 8000628:	189b      	adds	r3, r3, r2
 800062a:	43db      	mvns	r3, r3
 800062c:	400b      	ands	r3, r1
 800062e:	001a      	movs	r2, r3
 8000630:	68bb      	ldr	r3, [r7, #8]
 8000632:	68b9      	ldr	r1, [r7, #8]
 8000634:	434b      	muls	r3, r1
 8000636:	6879      	ldr	r1, [r7, #4]
 8000638:	434b      	muls	r3, r1
 800063a:	431a      	orrs	r2, r3
 800063c:	68fb      	ldr	r3, [r7, #12]
 800063e:	60da      	str	r2, [r3, #12]
 8000640:	46c0      	nop			; (mov r8, r8)
 8000642:	46bd      	mov	sp, r7
 8000644:	b004      	add	sp, #16
 8000646:	bd80      	pop	{r7, pc}

08000648 <LL_GPIO_SetAFPin_0_7>:
 8000648:	b580      	push	{r7, lr}
 800064a:	b084      	sub	sp, #16
 800064c:	af00      	add	r7, sp, #0
 800064e:	60f8      	str	r0, [r7, #12]
 8000650:	60b9      	str	r1, [r7, #8]
 8000652:	607a      	str	r2, [r7, #4]
 8000654:	68fb      	ldr	r3, [r7, #12]
 8000656:	6a19      	ldr	r1, [r3, #32]
 8000658:	68bb      	ldr	r3, [r7, #8]
 800065a:	68ba      	ldr	r2, [r7, #8]
 800065c:	4353      	muls	r3, r2
 800065e:	68ba      	ldr	r2, [r7, #8]
 8000660:	4353      	muls	r3, r2
 8000662:	68ba      	ldr	r2, [r7, #8]
 8000664:	435a      	muls	r2, r3
 8000666:	0013      	movs	r3, r2
 8000668:	011b      	lsls	r3, r3, #4
 800066a:	1a9b      	subs	r3, r3, r2
 800066c:	43db      	mvns	r3, r3
 800066e:	400b      	ands	r3, r1
 8000670:	001a      	movs	r2, r3
 8000672:	68bb      	ldr	r3, [r7, #8]
 8000674:	68b9      	ldr	r1, [r7, #8]
 8000676:	434b      	muls	r3, r1
 8000678:	68b9      	ldr	r1, [r7, #8]
 800067a:	434b      	muls	r3, r1
 800067c:	68b9      	ldr	r1, [r7, #8]
 800067e:	434b      	muls	r3, r1
 8000680:	6879      	ldr	r1, [r7, #4]
 8000682:	434b      	muls	r3, r1
 8000684:	431a      	orrs	r2, r3
 8000686:	68fb      	ldr	r3, [r7, #12]
 8000688:	621a      	str	r2, [r3, #32]
 800068a:	46c0      	nop			; (mov r8, r8)
 800068c:	46bd      	mov	sp, r7
 800068e:	b004      	add	sp, #16
 8000690:	bd80      	pop	{r7, pc}

08000692 <LL_GPIO_IsInputPinSet>:
 8000692:	b580      	push	{r7, lr}
 8000694:	b082      	sub	sp, #8
 8000696:	af00      	add	r7, sp, #0
 8000698:	6078      	str	r0, [r7, #4]
 800069a:	6039      	str	r1, [r7, #0]
 800069c:	687b      	ldr	r3, [r7, #4]
 800069e:	691b      	ldr	r3, [r3, #16]
 80006a0:	683a      	ldr	r2, [r7, #0]
 80006a2:	4013      	ands	r3, r2
 80006a4:	683a      	ldr	r2, [r7, #0]
 80006a6:	1ad3      	subs	r3, r2, r3
 80006a8:	425a      	negs	r2, r3
 80006aa:	4153      	adcs	r3, r2
 80006ac:	b2db      	uxtb	r3, r3
 80006ae:	0018      	movs	r0, r3
 80006b0:	46bd      	mov	sp, r7
 80006b2:	b002      	add	sp, #8
 80006b4:	bd80      	pop	{r7, pc}

080006b6 <LL_GPIO_TogglePin>:
 80006b6:	b580      	push	{r7, lr}
 80006b8:	b082      	sub	sp, #8
 80006ba:	af00      	add	r7, sp, #0
 80006bc:	6078      	str	r0, [r7, #4]
 80006be:	6039      	str	r1, [r7, #0]
 80006c0:	687b      	ldr	r3, [r7, #4]
 80006c2:	695a      	ldr	r2, [r3, #20]
 80006c4:	683b      	ldr	r3, [r7, #0]
 80006c6:	405a      	eors	r2, r3
 80006c8:	687b      	ldr	r3, [r7, #4]
 80006ca:	615a      	str	r2, [r3, #20]
 80006cc:	46c0      	nop			; (mov r8, r8)
 80006ce:	46bd      	mov	sp, r7
 80006d0:	b002      	add	sp, #8
 80006d2:	bd80      	pop	{r7, pc}

080006d4 <LL_TIM_EnableCounter>:
 80006d4:	b580      	push	{r7, lr}
 80006d6:	b082      	sub	sp, #8
 80006d8:	af00      	add	r7, sp, #0
 80006da:	6078      	str	r0, [r7, #4]
 80006dc:	687b      	ldr	r3, [r7, #4]
 80006de:	681b      	ldr	r3, [r3, #0]
 80006e0:	2201      	movs	r2, #1
 80006e2:	431a      	orrs	r2, r3
 80006e4:	687b      	ldr	r3, [r7, #4]
 80006e6:	601a      	str	r2, [r3, #0]
 80006e8:	46c0      	nop			; (mov r8, r8)
 80006ea:	46bd      	mov	sp, r7
 80006ec:	b002      	add	sp, #8
 80006ee:	bd80      	pop	{r7, pc}

080006f0 <LL_TIM_SetCounterMode>:
 80006f0:	b580      	push	{r7, lr}
 80006f2:	b082      	sub	sp, #8
 80006f4:	af00      	add	r7, sp, #0
 80006f6:	6078      	str	r0, [r7, #4]
 80006f8:	6039      	str	r1, [r7, #0]
 80006fa:	687b      	ldr	r3, [r7, #4]
 80006fc:	681b      	ldr	r3, [r3, #0]
 80006fe:	2270      	movs	r2, #112	; 0x70
 8000700:	4393      	bics	r3, r2
 8000702:	001a      	movs	r2, r3
 8000704:	683b      	ldr	r3, [r7, #0]
 8000706:	431a      	orrs	r2, r3
 8000708:	687b      	ldr	r3, [r7, #4]
 800070a:	601a      	str	r2, [r3, #0]
 800070c:	46c0      	nop			; (mov r8, r8)
 800070e:	46bd      	mov	sp, r7
 8000710:	b002      	add	sp, #8
 8000712:	bd80      	pop	{r7, pc}

08000714 <LL_TIM_SetPrescaler>:
 8000714:	b580      	push	{r7, lr}
 8000716:	b082      	sub	sp, #8
 8000718:	af00      	add	r7, sp, #0
 800071a:	6078      	str	r0, [r7, #4]
 800071c:	6039      	str	r1, [r7, #0]
 800071e:	687b      	ldr	r3, [r7, #4]
 8000720:	683a      	ldr	r2, [r7, #0]
 8000722:	629a      	str	r2, [r3, #40]	; 0x28
 8000724:	46c0      	nop			; (mov r8, r8)
 8000726:	46bd      	mov	sp, r7
 8000728:	b002      	add	sp, #8
 800072a:	bd80      	pop	{r7, pc}

0800072c <LL_TIM_SetAutoReload>:
 800072c:	b580      	push	{r7, lr}
 800072e:	b082      	sub	sp, #8
 8000730:	af00      	add	r7, sp, #0
 8000732:	6078      	str	r0, [r7, #4]
 8000734:	6039      	str	r1, [r7, #0]
 8000736:	687b      	ldr	r3, [r7, #4]
 8000738:	683a      	ldr	r2, [r7, #0]
 800073a:	62da      	str	r2, [r3, #44]	; 0x2c
 800073c:	46c0      	nop			; (mov r8, r8)
 800073e:	46bd      	mov	sp, r7
 8000740:	b002      	add	sp, #8
 8000742:	bd80      	pop	{r7, pc}

08000744 <LL_TIM_CC_EnableChannel>:
 8000744:	b580      	push	{r7, lr}
 8000746:	b082      	sub	sp, #8
 8000748:	af00      	add	r7, sp, #0
 800074a:	6078      	str	r0, [r7, #4]
 800074c:	6039      	str	r1, [r7, #0]
 800074e:	687b      	ldr	r3, [r7, #4]
 8000750:	6a1a      	ldr	r2, [r3, #32]
 8000752:	683b      	ldr	r3, [r7, #0]
 8000754:	431a      	orrs	r2, r3
 8000756:	687b      	ldr	r3, [r7, #4]
 8000758:	621a      	str	r2, [r3, #32]
 800075a:	46c0      	nop			; (mov r8, r8)
 800075c:	46bd      	mov	sp, r7
 800075e:	b002      	add	sp, #8
 8000760:	bd80      	pop	{r7, pc}
	...

08000764 <LL_TIM_OC_SetMode>:
 8000764:	b5b0      	push	{r4, r5, r7, lr}
 8000766:	b084      	sub	sp, #16
 8000768:	af00      	add	r7, sp, #0
 800076a:	60f8      	str	r0, [r7, #12]
 800076c:	60b9      	str	r1, [r7, #8]
 800076e:	607a      	str	r2, [r7, #4]
 8000770:	68bb      	ldr	r3, [r7, #8]
 8000772:	2b01      	cmp	r3, #1
 8000774:	d01e      	beq.n	80007b4 <LL_TIM_OC_SetMode+0x50>
 8000776:	68bb      	ldr	r3, [r7, #8]
 8000778:	2b04      	cmp	r3, #4
 800077a:	d019      	beq.n	80007b0 <LL_TIM_OC_SetMode+0x4c>
 800077c:	68bb      	ldr	r3, [r7, #8]
 800077e:	2b10      	cmp	r3, #16
 8000780:	d014      	beq.n	80007ac <LL_TIM_OC_SetMode+0x48>
 8000782:	68bb      	ldr	r3, [r7, #8]
 8000784:	2b40      	cmp	r3, #64	; 0x40
 8000786:	d00f      	beq.n	80007a8 <LL_TIM_OC_SetMode+0x44>
 8000788:	68ba      	ldr	r2, [r7, #8]
 800078a:	2380      	movs	r3, #128	; 0x80
 800078c:	005b      	lsls	r3, r3, #1
 800078e:	429a      	cmp	r2, r3
 8000790:	d008      	beq.n	80007a4 <LL_TIM_OC_SetMode+0x40>
 8000792:	68ba      	ldr	r2, [r7, #8]
 8000794:	2380      	movs	r3, #128	; 0x80
 8000796:	00db      	lsls	r3, r3, #3
 8000798:	429a      	cmp	r2, r3
 800079a:	d101      	bne.n	80007a0 <LL_TIM_OC_SetMode+0x3c>
 800079c:	2305      	movs	r3, #5
 800079e:	e00a      	b.n	80007b6 <LL_TIM_OC_SetMode+0x52>
 80007a0:	2306      	movs	r3, #6
 80007a2:	e008      	b.n	80007b6 <LL_TIM_OC_SetMode+0x52>
 80007a4:	2304      	movs	r3, #4
 80007a6:	e006      	b.n	80007b6 <LL_TIM_OC_SetMode+0x52>
 80007a8:	2303      	movs	r3, #3
 80007aa:	e004      	b.n	80007b6 <LL_TIM_OC_SetMode+0x52>
 80007ac:	2302      	movs	r3, #2
 80007ae:	e002      	b.n	80007b6 <LL_TIM_OC_SetMode+0x52>
 80007b0:	2301      	movs	r3, #1
 80007b2:	e000      	b.n	80007b6 <LL_TIM_OC_SetMode+0x52>
 80007b4:	2300      	movs	r3, #0
 80007b6:	001d      	movs	r5, r3
 80007b8:	68fb      	ldr	r3, [r7, #12]
 80007ba:	3318      	adds	r3, #24
 80007bc:	001a      	movs	r2, r3
 80007be:	0029      	movs	r1, r5
 80007c0:	4b0c      	ldr	r3, [pc, #48]	; (80007f4 <LL_TIM_OC_SetMode+0x90>)
 80007c2:	5c5b      	ldrb	r3, [r3, r1]
 80007c4:	18d3      	adds	r3, r2, r3
 80007c6:	001c      	movs	r4, r3
 80007c8:	6823      	ldr	r3, [r4, #0]
 80007ca:	0029      	movs	r1, r5
 80007cc:	4a0a      	ldr	r2, [pc, #40]	; (80007f8 <LL_TIM_OC_SetMode+0x94>)
 80007ce:	5c52      	ldrb	r2, [r2, r1]
 80007d0:	0011      	movs	r1, r2
 80007d2:	2273      	movs	r2, #115	; 0x73
 80007d4:	408a      	lsls	r2, r1
 80007d6:	43d2      	mvns	r2, r2
 80007d8:	401a      	ands	r2, r3
 80007da:	0029      	movs	r1, r5
 80007dc:	4b06      	ldr	r3, [pc, #24]	; (80007f8 <LL_TIM_OC_SetMode+0x94>)
 80007de:	5c5b      	ldrb	r3, [r3, r1]
 80007e0:	0019      	movs	r1, r3
 80007e2:	687b      	ldr	r3, [r7, #4]
 80007e4:	408b      	lsls	r3, r1
 80007e6:	4313      	orrs	r3, r2
 80007e8:	6023      	str	r3, [r4, #0]
 80007ea:	46c0      	nop			; (mov r8, r8)
 80007ec:	46bd      	mov	sp, r7
 80007ee:	b004      	add	sp, #16
 80007f0:	bdb0      	pop	{r4, r5, r7, pc}
 80007f2:	46c0      	nop			; (mov r8, r8)
 80007f4:	08002330 	.word	0x08002330
 80007f8:	08002338 	.word	0x08002338

080007fc <LL_TIM_OC_SetPolarity>:
 80007fc:	b590      	push	{r4, r7, lr}
 80007fe:	b085      	sub	sp, #20
 8000800:	af00      	add	r7, sp, #0
 8000802:	60f8      	str	r0, [r7, #12]
 8000804:	60b9      	str	r1, [r7, #8]
 8000806:	607a      	str	r2, [r7, #4]
 8000808:	68bb      	ldr	r3, [r7, #8]
 800080a:	2b01      	cmp	r3, #1
 800080c:	d01e      	beq.n	800084c <LL_TIM_OC_SetPolarity+0x50>
 800080e:	68bb      	ldr	r3, [r7, #8]
 8000810:	2b04      	cmp	r3, #4
 8000812:	d019      	beq.n	8000848 <LL_TIM_OC_SetPolarity+0x4c>
 8000814:	68bb      	ldr	r3, [r7, #8]
 8000816:	2b10      	cmp	r3, #16
 8000818:	d014      	beq.n	8000844 <LL_TIM_OC_SetPolarity+0x48>
 800081a:	68bb      	ldr	r3, [r7, #8]
 800081c:	2b40      	cmp	r3, #64	; 0x40
 800081e:	d00f      	beq.n	8000840 <LL_TIM_OC_SetPolarity+0x44>
 8000820:	68ba      	ldr	r2, [r7, #8]
 8000822:	2380      	movs	r3, #128	; 0x80
 8000824:	005b      	lsls	r3, r3, #1
 8000826:	429a      	cmp	r2, r3
 8000828:	d008      	beq.n	800083c <LL_TIM_OC_SetPolarity+0x40>
 800082a:	68ba      	ldr	r2, [r7, #8]
 800082c:	2380      	movs	r3, #128	; 0x80
 800082e:	00db      	lsls	r3, r3, #3
 8000830:	429a      	cmp	r2, r3
 8000832:	d101      	bne.n	8000838 <LL_TIM_OC_SetPolarity+0x3c>
 8000834:	2305      	movs	r3, #5
 8000836:	e00a      	b.n	800084e <LL_TIM_OC_SetPolarity+0x52>
 8000838:	2306      	movs	r3, #6
 800083a:	e008      	b.n	800084e <LL_TIM_OC_SetPolarity+0x52>
 800083c:	2304      	movs	r3, #4
 800083e:	e006      	b.n	800084e <LL_TIM_OC_SetPolarity+0x52>
 8000840:	2303      	movs	r3, #3
 8000842:	e004      	b.n	800084e <LL_TIM_OC_SetPolarity+0x52>
 8000844:	2302      	movs	r3, #2
 8000846:	e002      	b.n	800084e <LL_TIM_OC_SetPolarity+0x52>
 8000848:	2301      	movs	r3, #1
 800084a:	e000      	b.n	800084e <LL_TIM_OC_SetPolarity+0x52>
 800084c:	2300      	movs	r3, #0
 800084e:	001c      	movs	r4, r3
 8000850:	68fb      	ldr	r3, [r7, #12]
 8000852:	6a1b      	ldr	r3, [r3, #32]
 8000854:	0021      	movs	r1, r4
 8000856:	4a0a      	ldr	r2, [pc, #40]	; (8000880 <LL_TIM_OC_SetPolarity+0x84>)
 8000858:	5c52      	ldrb	r2, [r2, r1]
 800085a:	0011      	movs	r1, r2
 800085c:	2202      	movs	r2, #2
 800085e:	408a      	lsls	r2, r1
 8000860:	43d2      	mvns	r2, r2
 8000862:	401a      	ands	r2, r3
 8000864:	0021      	movs	r1, r4
 8000866:	4b06      	ldr	r3, [pc, #24]	; (8000880 <LL_TIM_OC_SetPolarity+0x84>)
 8000868:	5c5b      	ldrb	r3, [r3, r1]
 800086a:	0019      	movs	r1, r3
 800086c:	687b      	ldr	r3, [r7, #4]
 800086e:	408b      	lsls	r3, r1
 8000870:	431a      	orrs	r2, r3
 8000872:	68fb      	ldr	r3, [r7, #12]
 8000874:	621a      	str	r2, [r3, #32]
 8000876:	46c0      	nop			; (mov r8, r8)
 8000878:	46bd      	mov	sp, r7
 800087a:	b005      	add	sp, #20
 800087c:	bd90      	pop	{r4, r7, pc}
 800087e:	46c0      	nop			; (mov r8, r8)
 8000880:	08002340 	.word	0x08002340

08000884 <LL_TIM_OC_SetCompareCH1>:
 8000884:	b580      	push	{r7, lr}
 8000886:	b082      	sub	sp, #8
 8000888:	af00      	add	r7, sp, #0
 800088a:	6078      	str	r0, [r7, #4]
 800088c:	6039      	str	r1, [r7, #0]
 800088e:	687b      	ldr	r3, [r7, #4]
 8000890:	683a      	ldr	r2, [r7, #0]
 8000892:	635a      	str	r2, [r3, #52]	; 0x34
 8000894:	46c0      	nop			; (mov r8, r8)
 8000896:	46bd      	mov	sp, r7
 8000898:	b002      	add	sp, #8
 800089a:	bd80      	pop	{r7, pc}

0800089c <LL_TIM_IC_SetPolarity>:
 800089c:	b590      	push	{r4, r7, lr}
 800089e:	b085      	sub	sp, #20
 80008a0:	af00      	add	r7, sp, #0
 80008a2:	60f8      	str	r0, [r7, #12]
 80008a4:	60b9      	str	r1, [r7, #8]
 80008a6:	607a      	str	r2, [r7, #4]
 80008a8:	68bb      	ldr	r3, [r7, #8]
 80008aa:	2b01      	cmp	r3, #1
 80008ac:	d01e      	beq.n	80008ec <LL_TIM_IC_SetPolarity+0x50>
 80008ae:	68bb      	ldr	r3, [r7, #8]
 80008b0:	2b04      	cmp	r3, #4
 80008b2:	d019      	beq.n	80008e8 <LL_TIM_IC_SetPolarity+0x4c>
 80008b4:	68bb      	ldr	r3, [r7, #8]
 80008b6:	2b10      	cmp	r3, #16
 80008b8:	d014      	beq.n	80008e4 <LL_TIM_IC_SetPolarity+0x48>
 80008ba:	68bb      	ldr	r3, [r7, #8]
 80008bc:	2b40      	cmp	r3, #64	; 0x40
 80008be:	d00f      	beq.n	80008e0 <LL_TIM_IC_SetPolarity+0x44>
 80008c0:	68ba      	ldr	r2, [r7, #8]
 80008c2:	2380      	movs	r3, #128	; 0x80
 80008c4:	005b      	lsls	r3, r3, #1
 80008c6:	429a      	cmp	r2, r3
 80008c8:	d008      	beq.n	80008dc <LL_TIM_IC_SetPolarity+0x40>
 80008ca:	68ba      	ldr	r2, [r7, #8]
 80008cc:	2380      	movs	r3, #128	; 0x80
 80008ce:	00db      	lsls	r3, r3, #3
 80008d0:	429a      	cmp	r2, r3
 80008d2:	d101      	bne.n	80008d8 <LL_TIM_IC_SetPolarity+0x3c>
 80008d4:	2305      	movs	r3, #5
 80008d6:	e00a      	b.n	80008ee <LL_TIM_IC_SetPolarity+0x52>
 80008d8:	2306      	movs	r3, #6
 80008da:	e008      	b.n	80008ee <LL_TIM_IC_SetPolarity+0x52>
 80008dc:	2304      	movs	r3, #4
 80008de:	e006      	b.n	80008ee <LL_TIM_IC_SetPolarity+0x52>
 80008e0:	2303      	movs	r3, #3
 80008e2:	e004      	b.n	80008ee <LL_TIM_IC_SetPolarity+0x52>
 80008e4:	2302      	movs	r3, #2
 80008e6:	e002      	b.n	80008ee <LL_TIM_IC_SetPolarity+0x52>
 80008e8:	2301      	movs	r3, #1
 80008ea:	e000      	b.n	80008ee <LL_TIM_IC_SetPolarity+0x52>
 80008ec:	2300      	movs	r3, #0
 80008ee:	001c      	movs	r4, r3
 80008f0:	68fb      	ldr	r3, [r7, #12]
 80008f2:	6a1b      	ldr	r3, [r3, #32]
 80008f4:	0021      	movs	r1, r4
 80008f6:	4a0a      	ldr	r2, [pc, #40]	; (8000920 <LL_TIM_IC_SetPolarity+0x84>)
 80008f8:	5c52      	ldrb	r2, [r2, r1]
 80008fa:	0011      	movs	r1, r2
 80008fc:	220a      	movs	r2, #10
 80008fe:	408a      	lsls	r2, r1
 8000900:	43d2      	mvns	r2, r2
 8000902:	401a      	ands	r2, r3
 8000904:	0021      	movs	r1, r4
 8000906:	4b06      	ldr	r3, [pc, #24]	; (8000920 <LL_TIM_IC_SetPolarity+0x84>)
 8000908:	5c5b      	ldrb	r3, [r3, r1]
 800090a:	0019      	movs	r1, r3
 800090c:	687b      	ldr	r3, [r7, #4]
 800090e:	408b      	lsls	r3, r1
 8000910:	431a      	orrs	r2, r3
 8000912:	68fb      	ldr	r3, [r7, #12]
 8000914:	621a      	str	r2, [r3, #32]
 8000916:	46c0      	nop			; (mov r8, r8)
 8000918:	46bd      	mov	sp, r7
 800091a:	b005      	add	sp, #20
 800091c:	bd90      	pop	{r4, r7, pc}
 800091e:	46c0      	nop			; (mov r8, r8)
 8000920:	08002340 	.word	0x08002340

08000924 <LL_TIM_SetEncoderMode>:
 8000924:	b580      	push	{r7, lr}
 8000926:	b082      	sub	sp, #8
 8000928:	af00      	add	r7, sp, #0
 800092a:	6078      	str	r0, [r7, #4]
 800092c:	6039      	str	r1, [r7, #0]
 800092e:	687b      	ldr	r3, [r7, #4]
 8000930:	689b      	ldr	r3, [r3, #8]
 8000932:	2207      	movs	r2, #7
 8000934:	4393      	bics	r3, r2
 8000936:	001a      	movs	r2, r3
 8000938:	683b      	ldr	r3, [r7, #0]
 800093a:	431a      	orrs	r2, r3
 800093c:	687b      	ldr	r3, [r7, #4]
 800093e:	609a      	str	r2, [r3, #8]
 8000940:	46c0      	nop			; (mov r8, r8)
 8000942:	46bd      	mov	sp, r7
 8000944:	b002      	add	sp, #8
 8000946:	bd80      	pop	{r7, pc}

08000948 <LL_TIM_EnableIT_CC1>:
 8000948:	b580      	push	{r7, lr}
 800094a:	b082      	sub	sp, #8
 800094c:	af00      	add	r7, sp, #0
 800094e:	6078      	str	r0, [r7, #4]
 8000950:	687b      	ldr	r3, [r7, #4]
 8000952:	68db      	ldr	r3, [r3, #12]
 8000954:	2202      	movs	r2, #2
 8000956:	431a      	orrs	r2, r3
 8000958:	687b      	ldr	r3, [r7, #4]
 800095a:	60da      	str	r2, [r3, #12]
 800095c:	46c0      	nop			; (mov r8, r8)
 800095e:	46bd      	mov	sp, r7
 8000960:	b002      	add	sp, #8
 8000962:	bd80      	pop	{r7, pc}

08000964 <LL_InitTick>:
 8000964:	b580      	push	{r7, lr}
 8000966:	b082      	sub	sp, #8
 8000968:	af00      	add	r7, sp, #0
 800096a:	6078      	str	r0, [r7, #4]
 800096c:	6039      	str	r1, [r7, #0]
 800096e:	6839      	ldr	r1, [r7, #0]
 8000970:	6878      	ldr	r0, [r7, #4]
 8000972:	f7ff fbc9 	bl	8000108 <__udivsi3>
 8000976:	0003      	movs	r3, r0
 8000978:	001a      	movs	r2, r3
 800097a:	4b06      	ldr	r3, [pc, #24]	; (8000994 <LL_InitTick+0x30>)
 800097c:	3a01      	subs	r2, #1
 800097e:	605a      	str	r2, [r3, #4]
 8000980:	4b04      	ldr	r3, [pc, #16]	; (8000994 <LL_InitTick+0x30>)
 8000982:	2200      	movs	r2, #0
 8000984:	609a      	str	r2, [r3, #8]
 8000986:	4b03      	ldr	r3, [pc, #12]	; (8000994 <LL_InitTick+0x30>)
 8000988:	2205      	movs	r2, #5
 800098a:	601a      	str	r2, [r3, #0]
 800098c:	46c0      	nop			; (mov r8, r8)
 800098e:	46bd      	mov	sp, r7
 8000990:	b002      	add	sp, #8
 8000992:	bd80      	pop	{r7, pc}
 8000994:	e000e010 	.word	0xe000e010

08000998 <LL_SYSTICK_EnableIT>:
 8000998:	b580      	push	{r7, lr}
 800099a:	af00      	add	r7, sp, #0
 800099c:	4b04      	ldr	r3, [pc, #16]	; (80009b0 <LL_SYSTICK_EnableIT+0x18>)
 800099e:	681a      	ldr	r2, [r3, #0]
 80009a0:	4b03      	ldr	r3, [pc, #12]	; (80009b0 <LL_SYSTICK_EnableIT+0x18>)
 80009a2:	2102      	movs	r1, #2
 80009a4:	430a      	orrs	r2, r1
 80009a6:	601a      	str	r2, [r3, #0]
 80009a8:	46c0      	nop			; (mov r8, r8)
 80009aa:	46bd      	mov	sp, r7
 80009ac:	bd80      	pop	{r7, pc}
 80009ae:	46c0      	nop			; (mov r8, r8)
 80009b0:	e000e010 	.word	0xe000e010

080009b4 <LL_EXTI_EnableIT_0_31>:
 80009b4:	b580      	push	{r7, lr}
 80009b6:	b082      	sub	sp, #8
 80009b8:	af00      	add	r7, sp, #0
 80009ba:	6078      	str	r0, [r7, #4]
 80009bc:	4b04      	ldr	r3, [pc, #16]	; (80009d0 <LL_EXTI_EnableIT_0_31+0x1c>)
 80009be:	6819      	ldr	r1, [r3, #0]
 80009c0:	4b03      	ldr	r3, [pc, #12]	; (80009d0 <LL_EXTI_EnableIT_0_31+0x1c>)
 80009c2:	687a      	ldr	r2, [r7, #4]
 80009c4:	430a      	orrs	r2, r1
 80009c6:	601a      	str	r2, [r3, #0]
 80009c8:	46c0      	nop			; (mov r8, r8)
 80009ca:	46bd      	mov	sp, r7
 80009cc:	b002      	add	sp, #8
 80009ce:	bd80      	pop	{r7, pc}
 80009d0:	40010400 	.word	0x40010400

080009d4 <LL_EXTI_EnableRisingTrig_0_31>:
 80009d4:	b580      	push	{r7, lr}
 80009d6:	b082      	sub	sp, #8
 80009d8:	af00      	add	r7, sp, #0
 80009da:	6078      	str	r0, [r7, #4]
 80009dc:	4b04      	ldr	r3, [pc, #16]	; (80009f0 <LL_EXTI_EnableRisingTrig_0_31+0x1c>)
 80009de:	6899      	ldr	r1, [r3, #8]
 80009e0:	4b03      	ldr	r3, [pc, #12]	; (80009f0 <LL_EXTI_EnableRisingTrig_0_31+0x1c>)
 80009e2:	687a      	ldr	r2, [r7, #4]
 80009e4:	430a      	orrs	r2, r1
 80009e6:	609a      	str	r2, [r3, #8]
 80009e8:	46c0      	nop			; (mov r8, r8)
 80009ea:	46bd      	mov	sp, r7
 80009ec:	b002      	add	sp, #8
 80009ee:	bd80      	pop	{r7, pc}
 80009f0:	40010400 	.word	0x40010400

080009f4 <LL_EXTI_ClearFlag_0_31>:
 80009f4:	b580      	push	{r7, lr}
 80009f6:	b082      	sub	sp, #8
 80009f8:	af00      	add	r7, sp, #0
 80009fa:	6078      	str	r0, [r7, #4]
 80009fc:	4b03      	ldr	r3, [pc, #12]	; (8000a0c <LL_EXTI_ClearFlag_0_31+0x18>)
 80009fe:	687a      	ldr	r2, [r7, #4]
 8000a00:	615a      	str	r2, [r3, #20]
 8000a02:	46c0      	nop			; (mov r8, r8)
 8000a04:	46bd      	mov	sp, r7
 8000a06:	b002      	add	sp, #8
 8000a08:	bd80      	pop	{r7, pc}
 8000a0a:	46c0      	nop			; (mov r8, r8)
 8000a0c:	40010400 	.word	0x40010400

08000a10 <rcc_config>:
 8000a10:	b580      	push	{r7, lr}
 8000a12:	af00      	add	r7, sp, #0
 8000a14:	2001      	movs	r0, #1
 8000a16:	f7ff fd87 	bl	8000528 <LL_FLASH_SetLatency>
 8000a1a:	f7ff fcaf 	bl	800037c <LL_RCC_HSI_Enable>
 8000a1e:	46c0      	nop			; (mov r8, r8)
 8000a20:	f7ff fcba 	bl	8000398 <LL_RCC_HSI_IsReady>
 8000a24:	0003      	movs	r3, r0
 8000a26:	2b01      	cmp	r3, #1
 8000a28:	d1fa      	bne.n	8000a20 <rcc_config+0x10>
 8000a2a:	23a0      	movs	r3, #160	; 0xa0
 8000a2c:	039b      	lsls	r3, r3, #14
 8000a2e:	0019      	movs	r1, r3
 8000a30:	2000      	movs	r0, #0
 8000a32:	f7ff fd2d 	bl	8000490 <LL_RCC_PLL_ConfigDomain_SYS>
 8000a36:	f7ff fd09 	bl	800044c <LL_RCC_PLL_Enable>
 8000a3a:	46c0      	nop			; (mov r8, r8)
 8000a3c:	f7ff fd14 	bl	8000468 <LL_RCC_PLL_IsReady>
 8000a40:	0003      	movs	r3, r0
 8000a42:	2b01      	cmp	r3, #1
 8000a44:	d1fa      	bne.n	8000a3c <rcc_config+0x2c>
 8000a46:	2000      	movs	r0, #0
 8000a48:	f7ff fcd6 	bl	80003f8 <LL_RCC_SetAHBPrescaler>
 8000a4c:	2002      	movs	r0, #2
 8000a4e:	f7ff fcb3 	bl	80003b8 <LL_RCC_SetSysClkSource>
 8000a52:	46c0      	nop			; (mov r8, r8)
 8000a54:	f7ff fcc4 	bl	80003e0 <LL_RCC_GetSysClkSource>
 8000a58:	0003      	movs	r3, r0
 8000a5a:	2b08      	cmp	r3, #8
 8000a5c:	d1fa      	bne.n	8000a54 <rcc_config+0x44>
 8000a5e:	2000      	movs	r0, #0
 8000a60:	f7ff fcde 	bl	8000420 <LL_RCC_SetAPB1Prescaler>
 8000a64:	4b02      	ldr	r3, [pc, #8]	; (8000a70 <rcc_config+0x60>)
 8000a66:	4a03      	ldr	r2, [pc, #12]	; (8000a74 <rcc_config+0x64>)
 8000a68:	601a      	str	r2, [r3, #0]
 8000a6a:	46c0      	nop			; (mov r8, r8)
 8000a6c:	46bd      	mov	sp, r7
 8000a6e:	bd80      	pop	{r7, pc}
 8000a70:	20000008 	.word	0x20000008
 8000a74:	02dc6c00 	.word	0x02dc6c00

08000a78 <gpio_config>:
 8000a78:	b580      	push	{r7, lr}
 8000a7a:	af00      	add	r7, sp, #0
 8000a7c:	2380      	movs	r3, #128	; 0x80
 8000a7e:	031b      	lsls	r3, r3, #12
 8000a80:	0018      	movs	r0, r3
 8000a82:	f7ff fd65 	bl	8000550 <LL_AHB1_GRP1_EnableClock>
 8000a86:	2380      	movs	r3, #128	; 0x80
 8000a88:	005b      	lsls	r3, r3, #1
 8000a8a:	4822      	ldr	r0, [pc, #136]	; (8000b14 <gpio_config+0x9c>)
 8000a8c:	2201      	movs	r2, #1
 8000a8e:	0019      	movs	r1, r3
 8000a90:	f7ff fda0 	bl	80005d4 <LL_GPIO_SetPinMode>
 8000a94:	2380      	movs	r3, #128	; 0x80
 8000a96:	009b      	lsls	r3, r3, #2
 8000a98:	481e      	ldr	r0, [pc, #120]	; (8000b14 <gpio_config+0x9c>)
 8000a9a:	2201      	movs	r2, #1
 8000a9c:	0019      	movs	r1, r3
 8000a9e:	f7ff fd99 	bl	80005d4 <LL_GPIO_SetPinMode>
 8000aa2:	2380      	movs	r3, #128	; 0x80
 8000aa4:	029b      	lsls	r3, r3, #10
 8000aa6:	0018      	movs	r0, r3
 8000aa8:	f7ff fd52 	bl	8000550 <LL_AHB1_GRP1_EnableClock>
 8000aac:	2390      	movs	r3, #144	; 0x90
 8000aae:	05db      	lsls	r3, r3, #23
 8000ab0:	2202      	movs	r2, #2
 8000ab2:	2101      	movs	r1, #1
 8000ab4:	0018      	movs	r0, r3
 8000ab6:	f7ff fdaa 	bl	800060e <LL_GPIO_SetPinPull>
 8000aba:	2390      	movs	r3, #144	; 0x90
 8000abc:	05db      	lsls	r3, r3, #23
 8000abe:	2202      	movs	r2, #2
 8000ac0:	2102      	movs	r1, #2
 8000ac2:	0018      	movs	r0, r3
 8000ac4:	f7ff fda3 	bl	800060e <LL_GPIO_SetPinPull>
 8000ac8:	2390      	movs	r3, #144	; 0x90
 8000aca:	05db      	lsls	r3, r3, #23
 8000acc:	2202      	movs	r2, #2
 8000ace:	2104      	movs	r1, #4
 8000ad0:	0018      	movs	r0, r3
 8000ad2:	f7ff fd9c 	bl	800060e <LL_GPIO_SetPinPull>
 8000ad6:	2390      	movs	r3, #144	; 0x90
 8000ad8:	05db      	lsls	r3, r3, #23
 8000ada:	2202      	movs	r2, #2
 8000adc:	2108      	movs	r1, #8
 8000ade:	0018      	movs	r0, r3
 8000ae0:	f7ff fd95 	bl	800060e <LL_GPIO_SetPinPull>
 8000ae4:	2390      	movs	r3, #144	; 0x90
 8000ae6:	05db      	lsls	r3, r3, #23
 8000ae8:	2202      	movs	r2, #2
 8000aea:	2110      	movs	r1, #16
 8000aec:	0018      	movs	r0, r3
 8000aee:	f7ff fd8e 	bl	800060e <LL_GPIO_SetPinPull>
 8000af2:	2390      	movs	r3, #144	; 0x90
 8000af4:	05db      	lsls	r3, r3, #23
 8000af6:	2202      	movs	r2, #2
 8000af8:	2140      	movs	r1, #64	; 0x40
 8000afa:	0018      	movs	r0, r3
 8000afc:	f7ff fd87 	bl	800060e <LL_GPIO_SetPinPull>
 8000b00:	2390      	movs	r3, #144	; 0x90
 8000b02:	05db      	lsls	r3, r3, #23
 8000b04:	2202      	movs	r2, #2
 8000b06:	2180      	movs	r1, #128	; 0x80
 8000b08:	0018      	movs	r0, r3
 8000b0a:	f7ff fd80 	bl	800060e <LL_GPIO_SetPinPull>
 8000b0e:	46c0      	nop			; (mov r8, r8)
 8000b10:	46bd      	mov	sp, r7
 8000b12:	bd80      	pop	{r7, pc}
 8000b14:	48000800 	.word	0x48000800

08000b18 <printf_config>:
 8000b18:	b580      	push	{r7, lr}
 8000b1a:	af00      	add	r7, sp, #0
 8000b1c:	4b02      	ldr	r3, [pc, #8]	; (8000b28 <printf_config+0x10>)
 8000b1e:	4a03      	ldr	r2, [pc, #12]	; (8000b2c <printf_config+0x14>)
 8000b20:	601a      	str	r2, [r3, #0]
 8000b22:	46c0      	nop			; (mov r8, r8)
 8000b24:	46bd      	mov	sp, r7
 8000b26:	bd80      	pop	{r7, pc}
 8000b28:	2000045c 	.word	0x2000045c
 8000b2c:	080020d9 	.word	0x080020d9

08000b30 <rect>:
 8000b30:	b5b0      	push	{r4, r5, r7, lr}
 8000b32:	b086      	sub	sp, #24
 8000b34:	af00      	add	r7, sp, #0
 8000b36:	60f8      	str	r0, [r7, #12]
 8000b38:	60b9      	str	r1, [r7, #8]
 8000b3a:	607a      	str	r2, [r7, #4]
 8000b3c:	603b      	str	r3, [r7, #0]
 8000b3e:	68fb      	ldr	r3, [r7, #12]
 8000b40:	617b      	str	r3, [r7, #20]
 8000b42:	68bb      	ldr	r3, [r7, #8]
 8000b44:	613b      	str	r3, [r7, #16]
 8000b46:	68fb      	ldr	r3, [r7, #12]
 8000b48:	617b      	str	r3, [r7, #20]
 8000b4a:	e02a      	b.n	8000ba2 <rect+0x72>
 8000b4c:	68bb      	ldr	r3, [r7, #8]
 8000b4e:	613b      	str	r3, [r7, #16]
 8000b50:	e020      	b.n	8000b94 <rect+0x64>
 8000b52:	697b      	ldr	r3, [r7, #20]
 8000b54:	b2d8      	uxtb	r0, r3
 8000b56:	693b      	ldr	r3, [r7, #16]
 8000b58:	b2d9      	uxtb	r1, r3
 8000b5a:	2424      	movs	r4, #36	; 0x24
 8000b5c:	2508      	movs	r5, #8
 8000b5e:	197b      	adds	r3, r7, r5
 8000b60:	191b      	adds	r3, r3, r4
 8000b62:	781b      	ldrb	r3, [r3, #0]
 8000b64:	001a      	movs	r2, r3
 8000b66:	f001 fa39 	bl	8001fdc <oled_set_pix>
 8000b6a:	68fb      	ldr	r3, [r7, #12]
 8000b6c:	b2da      	uxtb	r2, r3
 8000b6e:	687b      	ldr	r3, [r7, #4]
 8000b70:	b2db      	uxtb	r3, r3
 8000b72:	18d3      	adds	r3, r2, r3
 8000b74:	b2da      	uxtb	r2, r3
 8000b76:	697b      	ldr	r3, [r7, #20]
 8000b78:	b2db      	uxtb	r3, r3
 8000b7a:	1ad3      	subs	r3, r2, r3
 8000b7c:	b2d8      	uxtb	r0, r3
 8000b7e:	693b      	ldr	r3, [r7, #16]
 8000b80:	b2d9      	uxtb	r1, r3
 8000b82:	197b      	adds	r3, r7, r5
 8000b84:	191b      	adds	r3, r3, r4
 8000b86:	781b      	ldrb	r3, [r3, #0]
 8000b88:	001a      	movs	r2, r3
 8000b8a:	f001 fa27 	bl	8001fdc <oled_set_pix>
 8000b8e:	693b      	ldr	r3, [r7, #16]
 8000b90:	3301      	adds	r3, #1
 8000b92:	613b      	str	r3, [r7, #16]
 8000b94:	693a      	ldr	r2, [r7, #16]
 8000b96:	683b      	ldr	r3, [r7, #0]
 8000b98:	429a      	cmp	r2, r3
 8000b9a:	ddda      	ble.n	8000b52 <rect+0x22>
 8000b9c:	697b      	ldr	r3, [r7, #20]
 8000b9e:	3301      	adds	r3, #1
 8000ba0:	617b      	str	r3, [r7, #20]
 8000ba2:	68fa      	ldr	r2, [r7, #12]
 8000ba4:	6abb      	ldr	r3, [r7, #40]	; 0x28
 8000ba6:	18d3      	adds	r3, r2, r3
 8000ba8:	697a      	ldr	r2, [r7, #20]
 8000baa:	429a      	cmp	r2, r3
 8000bac:	ddce      	ble.n	8000b4c <rect+0x1c>
 8000bae:	68bb      	ldr	r3, [r7, #8]
 8000bb0:	613b      	str	r3, [r7, #16]
 8000bb2:	e02a      	b.n	8000c0a <rect+0xda>
 8000bb4:	68fb      	ldr	r3, [r7, #12]
 8000bb6:	617b      	str	r3, [r7, #20]
 8000bb8:	e020      	b.n	8000bfc <rect+0xcc>
 8000bba:	697b      	ldr	r3, [r7, #20]
 8000bbc:	b2d8      	uxtb	r0, r3
 8000bbe:	693b      	ldr	r3, [r7, #16]
 8000bc0:	b2d9      	uxtb	r1, r3
 8000bc2:	2424      	movs	r4, #36	; 0x24
 8000bc4:	2508      	movs	r5, #8
 8000bc6:	197b      	adds	r3, r7, r5
 8000bc8:	191b      	adds	r3, r3, r4
 8000bca:	781b      	ldrb	r3, [r3, #0]
 8000bcc:	001a      	movs	r2, r3
 8000bce:	f001 fa05 	bl	8001fdc <oled_set_pix>
 8000bd2:	697b      	ldr	r3, [r7, #20]
 8000bd4:	b2d8      	uxtb	r0, r3
 8000bd6:	68bb      	ldr	r3, [r7, #8]
 8000bd8:	b2da      	uxtb	r2, r3
 8000bda:	683b      	ldr	r3, [r7, #0]
 8000bdc:	b2db      	uxtb	r3, r3
 8000bde:	18d3      	adds	r3, r2, r3
 8000be0:	b2da      	uxtb	r2, r3
 8000be2:	693b      	ldr	r3, [r7, #16]
 8000be4:	b2db      	uxtb	r3, r3
 8000be6:	1ad3      	subs	r3, r2, r3
 8000be8:	b2d9      	uxtb	r1, r3
 8000bea:	197b      	adds	r3, r7, r5
 8000bec:	191b      	adds	r3, r3, r4
 8000bee:	781b      	ldrb	r3, [r3, #0]
 8000bf0:	001a      	movs	r2, r3
 8000bf2:	f001 f9f3 	bl	8001fdc <oled_set_pix>
 8000bf6:	697b      	ldr	r3, [r7, #20]
 8000bf8:	3301      	adds	r3, #1
 8000bfa:	617b      	str	r3, [r7, #20]
 8000bfc:	697a      	ldr	r2, [r7, #20]
 8000bfe:	687b      	ldr	r3, [r7, #4]
 8000c00:	429a      	cmp	r2, r3
 8000c02:	ddda      	ble.n	8000bba <rect+0x8a>
 8000c04:	693b      	ldr	r3, [r7, #16]
 8000c06:	3301      	adds	r3, #1
 8000c08:	613b      	str	r3, [r7, #16]
 8000c0a:	68ba      	ldr	r2, [r7, #8]
 8000c0c:	6abb      	ldr	r3, [r7, #40]	; 0x28
 8000c0e:	18d3      	adds	r3, r2, r3
 8000c10:	693a      	ldr	r2, [r7, #16]
 8000c12:	429a      	cmp	r2, r3
 8000c14:	ddce      	ble.n	8000bb4 <rect+0x84>
 8000c16:	68fa      	ldr	r2, [r7, #12]
 8000c18:	6abb      	ldr	r3, [r7, #40]	; 0x28
 8000c1a:	18d3      	adds	r3, r2, r3
 8000c1c:	617b      	str	r3, [r7, #20]
 8000c1e:	e01d      	b.n	8000c5c <rect+0x12c>
 8000c20:	68ba      	ldr	r2, [r7, #8]
 8000c22:	6abb      	ldr	r3, [r7, #40]	; 0x28
 8000c24:	18d3      	adds	r3, r2, r3
 8000c26:	613b      	str	r3, [r7, #16]
 8000c28:	e00f      	b.n	8000c4a <rect+0x11a>
 8000c2a:	697b      	ldr	r3, [r7, #20]
 8000c2c:	b2d8      	uxtb	r0, r3
 8000c2e:	693b      	ldr	r3, [r7, #16]
 8000c30:	b2d9      	uxtb	r1, r3
 8000c32:	2328      	movs	r3, #40	; 0x28
 8000c34:	2208      	movs	r2, #8
 8000c36:	4694      	mov	ip, r2
 8000c38:	44bc      	add	ip, r7
 8000c3a:	4463      	add	r3, ip
 8000c3c:	781b      	ldrb	r3, [r3, #0]
 8000c3e:	001a      	movs	r2, r3
 8000c40:	f001 f9cc 	bl	8001fdc <oled_set_pix>
 8000c44:	693b      	ldr	r3, [r7, #16]
 8000c46:	3301      	adds	r3, #1
 8000c48:	613b      	str	r3, [r7, #16]
 8000c4a:	683a      	ldr	r2, [r7, #0]
 8000c4c:	6abb      	ldr	r3, [r7, #40]	; 0x28
 8000c4e:	1ad3      	subs	r3, r2, r3
 8000c50:	693a      	ldr	r2, [r7, #16]
 8000c52:	429a      	cmp	r2, r3
 8000c54:	dde9      	ble.n	8000c2a <rect+0xfa>
 8000c56:	697b      	ldr	r3, [r7, #20]
 8000c58:	3301      	adds	r3, #1
 8000c5a:	617b      	str	r3, [r7, #20]
 8000c5c:	687a      	ldr	r2, [r7, #4]
 8000c5e:	6abb      	ldr	r3, [r7, #40]	; 0x28
 8000c60:	1ad3      	subs	r3, r2, r3
 8000c62:	697a      	ldr	r2, [r7, #20]
 8000c64:	429a      	cmp	r2, r3
 8000c66:	dddb      	ble.n	8000c20 <rect+0xf0>
 8000c68:	46c0      	nop			; (mov r8, r8)
 8000c6a:	46bd      	mov	sp, r7
 8000c6c:	b006      	add	sp, #24
 8000c6e:	bdb0      	pop	{r4, r5, r7, pc}

08000c70 <exti_config>:
 8000c70:	b580      	push	{r7, lr}
 8000c72:	af00      	add	r7, sp, #0
 8000c74:	2001      	movs	r0, #1
 8000c76:	f7ff fc97 	bl	80005a8 <LL_APB1_GRP2_EnableClock>
 8000c7a:	2100      	movs	r1, #0
 8000c7c:	2000      	movs	r0, #0
 8000c7e:	f7ff fc2d 	bl	80004dc <LL_SYSCFG_SetEXTISource>
 8000c82:	2001      	movs	r0, #1
 8000c84:	f7ff fe96 	bl	80009b4 <LL_EXTI_EnableIT_0_31>
 8000c88:	2380      	movs	r3, #128	; 0x80
 8000c8a:	02db      	lsls	r3, r3, #11
 8000c8c:	0019      	movs	r1, r3
 8000c8e:	2000      	movs	r0, #0
 8000c90:	f7ff fc24 	bl	80004dc <LL_SYSCFG_SetEXTISource>
 8000c94:	2002      	movs	r0, #2
 8000c96:	f7ff fe8d 	bl	80009b4 <LL_EXTI_EnableIT_0_31>
 8000c9a:	2380      	movs	r3, #128	; 0x80
 8000c9c:	031b      	lsls	r3, r3, #12
 8000c9e:	0019      	movs	r1, r3
 8000ca0:	2000      	movs	r0, #0
 8000ca2:	f7ff fc1b 	bl	80004dc <LL_SYSCFG_SetEXTISource>
 8000ca6:	2004      	movs	r0, #4
 8000ca8:	f7ff fe84 	bl	80009b4 <LL_EXTI_EnableIT_0_31>
 8000cac:	23c0      	movs	r3, #192	; 0xc0
 8000cae:	031b      	lsls	r3, r3, #12
 8000cb0:	0019      	movs	r1, r3
 8000cb2:	2000      	movs	r0, #0
 8000cb4:	f7ff fc12 	bl	80004dc <LL_SYSCFG_SetEXTISource>
 8000cb8:	2008      	movs	r0, #8
 8000cba:	f7ff fe7b 	bl	80009b4 <LL_EXTI_EnableIT_0_31>
 8000cbe:	2101      	movs	r1, #1
 8000cc0:	2000      	movs	r0, #0
 8000cc2:	f7ff fc0b 	bl	80004dc <LL_SYSCFG_SetEXTISource>
 8000cc6:	2010      	movs	r0, #16
 8000cc8:	f7ff fe74 	bl	80009b4 <LL_EXTI_EnableIT_0_31>
 8000ccc:	4b1e      	ldr	r3, [pc, #120]	; (8000d48 <exti_config+0xd8>)
 8000cce:	0019      	movs	r1, r3
 8000cd0:	2000      	movs	r0, #0
 8000cd2:	f7ff fc03 	bl	80004dc <LL_SYSCFG_SetEXTISource>
 8000cd6:	2040      	movs	r0, #64	; 0x40
 8000cd8:	f7ff fe6c 	bl	80009b4 <LL_EXTI_EnableIT_0_31>
 8000cdc:	4b1b      	ldr	r3, [pc, #108]	; (8000d4c <exti_config+0xdc>)
 8000cde:	0019      	movs	r1, r3
 8000ce0:	2000      	movs	r0, #0
 8000ce2:	f7ff fbfb 	bl	80004dc <LL_SYSCFG_SetEXTISource>
 8000ce6:	2080      	movs	r0, #128	; 0x80
 8000ce8:	f7ff fe64 	bl	80009b4 <LL_EXTI_EnableIT_0_31>
 8000cec:	2001      	movs	r0, #1
 8000cee:	f7ff fe71 	bl	80009d4 <LL_EXTI_EnableRisingTrig_0_31>
 8000cf2:	2002      	movs	r0, #2
 8000cf4:	f7ff fe6e 	bl	80009d4 <LL_EXTI_EnableRisingTrig_0_31>
 8000cf8:	2004      	movs	r0, #4
 8000cfa:	f7ff fe6b 	bl	80009d4 <LL_EXTI_EnableRisingTrig_0_31>
 8000cfe:	2008      	movs	r0, #8
 8000d00:	f7ff fe68 	bl	80009d4 <LL_EXTI_EnableRisingTrig_0_31>
 8000d04:	2010      	movs	r0, #16
 8000d06:	f7ff fe65 	bl	80009d4 <LL_EXTI_EnableRisingTrig_0_31>
 8000d0a:	2040      	movs	r0, #64	; 0x40
 8000d0c:	f7ff fe62 	bl	80009d4 <LL_EXTI_EnableRisingTrig_0_31>
 8000d10:	2080      	movs	r0, #128	; 0x80
 8000d12:	f7ff fe5f 	bl	80009d4 <LL_EXTI_EnableRisingTrig_0_31>
 8000d16:	2005      	movs	r0, #5
 8000d18:	f7ff faac 	bl	8000274 <NVIC_EnableIRQ>
 8000d1c:	2006      	movs	r0, #6
 8000d1e:	f7ff faa9 	bl	8000274 <NVIC_EnableIRQ>
 8000d22:	2007      	movs	r0, #7
 8000d24:	f7ff faa6 	bl	8000274 <NVIC_EnableIRQ>
 8000d28:	2100      	movs	r1, #0
 8000d2a:	2005      	movs	r0, #5
 8000d2c:	f7ff fab8 	bl	80002a0 <NVIC_SetPriority>
 8000d30:	2100      	movs	r1, #0
 8000d32:	2006      	movs	r0, #6
 8000d34:	f7ff fab4 	bl	80002a0 <NVIC_SetPriority>
 8000d38:	2100      	movs	r1, #0
 8000d3a:	2007      	movs	r0, #7
 8000d3c:	f7ff fab0 	bl	80002a0 <NVIC_SetPriority>
 8000d40:	46c0      	nop			; (mov r8, r8)
 8000d42:	46bd      	mov	sp, r7
 8000d44:	bd80      	pop	{r7, pc}
 8000d46:	46c0      	nop			; (mov r8, r8)
 8000d48:	00080001 	.word	0x00080001
 8000d4c:	000c0001 	.word	0x000c0001

08000d50 <tim3_config>:
 8000d50:	b580      	push	{r7, lr}
 8000d52:	af00      	add	r7, sp, #0
 8000d54:	2380      	movs	r3, #128	; 0x80
 8000d56:	02db      	lsls	r3, r3, #11
 8000d58:	0018      	movs	r0, r3
 8000d5a:	f7ff fbf9 	bl	8000550 <LL_AHB1_GRP1_EnableClock>
 8000d5e:	4b22      	ldr	r3, [pc, #136]	; (8000de8 <tim3_config+0x98>)
 8000d60:	2202      	movs	r2, #2
 8000d62:	2110      	movs	r1, #16
 8000d64:	0018      	movs	r0, r3
 8000d66:	f7ff fc35 	bl	80005d4 <LL_GPIO_SetPinMode>
 8000d6a:	4b1f      	ldr	r3, [pc, #124]	; (8000de8 <tim3_config+0x98>)
 8000d6c:	2202      	movs	r2, #2
 8000d6e:	2120      	movs	r1, #32
 8000d70:	0018      	movs	r0, r3
 8000d72:	f7ff fc2f 	bl	80005d4 <LL_GPIO_SetPinMode>
 8000d76:	4b1c      	ldr	r3, [pc, #112]	; (8000de8 <tim3_config+0x98>)
 8000d78:	2201      	movs	r2, #1
 8000d7a:	2110      	movs	r1, #16
 8000d7c:	0018      	movs	r0, r3
 8000d7e:	f7ff fc63 	bl	8000648 <LL_GPIO_SetAFPin_0_7>
 8000d82:	4b19      	ldr	r3, [pc, #100]	; (8000de8 <tim3_config+0x98>)
 8000d84:	2201      	movs	r2, #1
 8000d86:	2120      	movs	r1, #32
 8000d88:	0018      	movs	r0, r3
 8000d8a:	f7ff fc5d 	bl	8000648 <LL_GPIO_SetAFPin_0_7>
 8000d8e:	4b16      	ldr	r3, [pc, #88]	; (8000de8 <tim3_config+0x98>)
 8000d90:	2201      	movs	r2, #1
 8000d92:	2110      	movs	r1, #16
 8000d94:	0018      	movs	r0, r3
 8000d96:	f7ff fc3a 	bl	800060e <LL_GPIO_SetPinPull>
 8000d9a:	4b13      	ldr	r3, [pc, #76]	; (8000de8 <tim3_config+0x98>)
 8000d9c:	2201      	movs	r2, #1
 8000d9e:	2120      	movs	r1, #32
 8000da0:	0018      	movs	r0, r3
 8000da2:	f7ff fc34 	bl	800060e <LL_GPIO_SetPinPull>
 8000da6:	2002      	movs	r0, #2
 8000da8:	f7ff fbe8 	bl	800057c <LL_APB1_GRP1_EnableClock>
 8000dac:	4b0f      	ldr	r3, [pc, #60]	; (8000dec <tim3_config+0x9c>)
 8000dae:	2103      	movs	r1, #3
 8000db0:	0018      	movs	r0, r3
 8000db2:	f7ff fdb7 	bl	8000924 <LL_TIM_SetEncoderMode>
 8000db6:	4b0d      	ldr	r3, [pc, #52]	; (8000dec <tim3_config+0x9c>)
 8000db8:	2202      	movs	r2, #2
 8000dba:	2101      	movs	r1, #1
 8000dbc:	0018      	movs	r0, r3
 8000dbe:	f7ff fd6d 	bl	800089c <LL_TIM_IC_SetPolarity>
 8000dc2:	4b0a      	ldr	r3, [pc, #40]	; (8000dec <tim3_config+0x9c>)
 8000dc4:	2202      	movs	r2, #2
 8000dc6:	2110      	movs	r1, #16
 8000dc8:	0018      	movs	r0, r3
 8000dca:	f7ff fd67 	bl	800089c <LL_TIM_IC_SetPolarity>
 8000dce:	4a08      	ldr	r2, [pc, #32]	; (8000df0 <tim3_config+0xa0>)
 8000dd0:	4b06      	ldr	r3, [pc, #24]	; (8000dec <tim3_config+0x9c>)
 8000dd2:	0011      	movs	r1, r2
 8000dd4:	0018      	movs	r0, r3
 8000dd6:	f7ff fca9 	bl	800072c <LL_TIM_SetAutoReload>
 8000dda:	4b04      	ldr	r3, [pc, #16]	; (8000dec <tim3_config+0x9c>)
 8000ddc:	0018      	movs	r0, r3
 8000dde:	f7ff fc79 	bl	80006d4 <LL_TIM_EnableCounter>
 8000de2:	46c0      	nop			; (mov r8, r8)
 8000de4:	46bd      	mov	sp, r7
 8000de6:	bd80      	pop	{r7, pc}
 8000de8:	48000400 	.word	0x48000400
 8000dec:	40000400 	.word	0x40000400
 8000df0:	000003e7 	.word	0x000003e7

08000df4 <tim2_config>:
 8000df4:	b580      	push	{r7, lr}
 8000df6:	af00      	add	r7, sp, #0
 8000df8:	2380      	movs	r3, #128	; 0x80
 8000dfa:	029b      	lsls	r3, r3, #10
 8000dfc:	0018      	movs	r0, r3
 8000dfe:	f7ff fba7 	bl	8000550 <LL_AHB1_GRP1_EnableClock>
 8000e02:	2390      	movs	r3, #144	; 0x90
 8000e04:	05db      	lsls	r3, r3, #23
 8000e06:	2202      	movs	r2, #2
 8000e08:	2120      	movs	r1, #32
 8000e0a:	0018      	movs	r0, r3
 8000e0c:	f7ff fbe2 	bl	80005d4 <LL_GPIO_SetPinMode>
 8000e10:	2390      	movs	r3, #144	; 0x90
 8000e12:	05db      	lsls	r3, r3, #23
 8000e14:	2202      	movs	r2, #2
 8000e16:	2120      	movs	r1, #32
 8000e18:	0018      	movs	r0, r3
 8000e1a:	f7ff fc15 	bl	8000648 <LL_GPIO_SetAFPin_0_7>
 8000e1e:	2001      	movs	r0, #1
 8000e20:	f7ff fbac 	bl	800057c <LL_APB1_GRP1_EnableClock>
 8000e24:	4b1f      	ldr	r3, [pc, #124]	; (8000ea4 <tim2_config+0xb0>)
 8000e26:	681b      	ldr	r3, [r3, #0]
 8000e28:	001a      	movs	r2, r3
 8000e2a:	2380      	movs	r3, #128	; 0x80
 8000e2c:	05db      	lsls	r3, r3, #23
 8000e2e:	0011      	movs	r1, r2
 8000e30:	0018      	movs	r0, r3
 8000e32:	f7ff fc6f 	bl	8000714 <LL_TIM_SetPrescaler>
 8000e36:	4a1c      	ldr	r2, [pc, #112]	; (8000ea8 <tim2_config+0xb4>)
 8000e38:	2380      	movs	r3, #128	; 0x80
 8000e3a:	05db      	lsls	r3, r3, #23
 8000e3c:	0011      	movs	r1, r2
 8000e3e:	0018      	movs	r0, r3
 8000e40:	f7ff fc74 	bl	800072c <LL_TIM_SetAutoReload>
 8000e44:	4b19      	ldr	r3, [pc, #100]	; (8000eac <tim2_config+0xb8>)
 8000e46:	681b      	ldr	r3, [r3, #0]
 8000e48:	001a      	movs	r2, r3
 8000e4a:	2380      	movs	r3, #128	; 0x80
 8000e4c:	05db      	lsls	r3, r3, #23
 8000e4e:	0011      	movs	r1, r2
 8000e50:	0018      	movs	r0, r3
 8000e52:	f7ff fd17 	bl	8000884 <LL_TIM_OC_SetCompareCH1>
 8000e56:	2380      	movs	r3, #128	; 0x80
 8000e58:	05db      	lsls	r3, r3, #23
 8000e5a:	2101      	movs	r1, #1
 8000e5c:	0018      	movs	r0, r3
 8000e5e:	f7ff fc71 	bl	8000744 <LL_TIM_CC_EnableChannel>
 8000e62:	2380      	movs	r3, #128	; 0x80
 8000e64:	05db      	lsls	r3, r3, #23
 8000e66:	2200      	movs	r2, #0
 8000e68:	2101      	movs	r1, #1
 8000e6a:	0018      	movs	r0, r3
 8000e6c:	f7ff fcc6 	bl	80007fc <LL_TIM_OC_SetPolarity>
 8000e70:	2380      	movs	r3, #128	; 0x80
 8000e72:	05db      	lsls	r3, r3, #23
 8000e74:	2260      	movs	r2, #96	; 0x60
 8000e76:	2101      	movs	r1, #1
 8000e78:	0018      	movs	r0, r3
 8000e7a:	f7ff fc73 	bl	8000764 <LL_TIM_OC_SetMode>
 8000e7e:	2380      	movs	r3, #128	; 0x80
 8000e80:	05db      	lsls	r3, r3, #23
 8000e82:	2100      	movs	r1, #0
 8000e84:	0018      	movs	r0, r3
 8000e86:	f7ff fc33 	bl	80006f0 <LL_TIM_SetCounterMode>
 8000e8a:	2380      	movs	r3, #128	; 0x80
 8000e8c:	05db      	lsls	r3, r3, #23
 8000e8e:	0018      	movs	r0, r3
 8000e90:	f7ff fd5a 	bl	8000948 <LL_TIM_EnableIT_CC1>
 8000e94:	2380      	movs	r3, #128	; 0x80
 8000e96:	05db      	lsls	r3, r3, #23
 8000e98:	0018      	movs	r0, r3
 8000e9a:	f7ff fc1b 	bl	80006d4 <LL_TIM_EnableCounter>
 8000e9e:	46c0      	nop			; (mov r8, r8)
 8000ea0:	46bd      	mov	sp, r7
 8000ea2:	bd80      	pop	{r7, pc}
 8000ea4:	20000004 	.word	0x20000004
 8000ea8:	000003e7 	.word	0x000003e7
 8000eac:	20000000 	.word	0x20000000

08000eb0 <play_note>:
 8000eb0:	b580      	push	{r7, lr}
 8000eb2:	b084      	sub	sp, #16
 8000eb4:	af00      	add	r7, sp, #0
 8000eb6:	6078      	str	r0, [r7, #4]
 8000eb8:	2300      	movs	r3, #0
 8000eba:	60fb      	str	r3, [r7, #12]
 8000ebc:	687b      	ldr	r3, [r7, #4]
 8000ebe:	2b07      	cmp	r3, #7
 8000ec0:	d81d      	bhi.n	8000efe <play_note+0x4e>
 8000ec2:	687b      	ldr	r3, [r7, #4]
 8000ec4:	009a      	lsls	r2, r3, #2
 8000ec6:	4b13      	ldr	r3, [pc, #76]	; (8000f14 <play_note+0x64>)
 8000ec8:	18d3      	adds	r3, r2, r3
 8000eca:	681b      	ldr	r3, [r3, #0]
 8000ecc:	469f      	mov	pc, r3
 8000ece:	2300      	movs	r3, #0
 8000ed0:	60fb      	str	r3, [r7, #12]
 8000ed2:	e014      	b.n	8000efe <play_note+0x4e>
 8000ed4:	23b7      	movs	r3, #183	; 0xb7
 8000ed6:	60fb      	str	r3, [r7, #12]
 8000ed8:	e011      	b.n	8000efe <play_note+0x4e>
 8000eda:	23a3      	movs	r3, #163	; 0xa3
 8000edc:	60fb      	str	r3, [r7, #12]
 8000ede:	e00e      	b.n	8000efe <play_note+0x4e>
 8000ee0:	2391      	movs	r3, #145	; 0x91
 8000ee2:	60fb      	str	r3, [r7, #12]
 8000ee4:	e00b      	b.n	8000efe <play_note+0x4e>
 8000ee6:	238a      	movs	r3, #138	; 0x8a
 8000ee8:	60fb      	str	r3, [r7, #12]
 8000eea:	e008      	b.n	8000efe <play_note+0x4e>
 8000eec:	237a      	movs	r3, #122	; 0x7a
 8000eee:	60fb      	str	r3, [r7, #12]
 8000ef0:	e005      	b.n	8000efe <play_note+0x4e>
 8000ef2:	236d      	movs	r3, #109	; 0x6d
 8000ef4:	60fb      	str	r3, [r7, #12]
 8000ef6:	e002      	b.n	8000efe <play_note+0x4e>
 8000ef8:	2361      	movs	r3, #97	; 0x61
 8000efa:	60fb      	str	r3, [r7, #12]
 8000efc:	46c0      	nop			; (mov r8, r8)
 8000efe:	68fa      	ldr	r2, [r7, #12]
 8000f00:	2380      	movs	r3, #128	; 0x80
 8000f02:	05db      	lsls	r3, r3, #23
 8000f04:	0011      	movs	r1, r2
 8000f06:	0018      	movs	r0, r3
 8000f08:	f7ff fc04 	bl	8000714 <LL_TIM_SetPrescaler>
 8000f0c:	46c0      	nop			; (mov r8, r8)
 8000f0e:	46bd      	mov	sp, r7
 8000f10:	b004      	add	sp, #16
 8000f12:	bd80      	pop	{r7, pc}
 8000f14:	08002348 	.word	0x08002348

08000f18 <systick_config>:
 8000f18:	b580      	push	{r7, lr}
 8000f1a:	af00      	add	r7, sp, #0
 8000f1c:	4b07      	ldr	r3, [pc, #28]	; (8000f3c <systick_config+0x24>)
 8000f1e:	2164      	movs	r1, #100	; 0x64
 8000f20:	0018      	movs	r0, r3
 8000f22:	f7ff fd1f 	bl	8000964 <LL_InitTick>
 8000f26:	f7ff fd37 	bl	8000998 <LL_SYSTICK_EnableIT>
 8000f2a:	2301      	movs	r3, #1
 8000f2c:	425b      	negs	r3, r3
 8000f2e:	2100      	movs	r1, #0
 8000f30:	0018      	movs	r0, r3
 8000f32:	f7ff f9b5 	bl	80002a0 <NVIC_SetPriority>
 8000f36:	46c0      	nop			; (mov r8, r8)
 8000f38:	46bd      	mov	sp, r7
 8000f3a:	bd80      	pop	{r7, pc}
 8000f3c:	02dc6c00 	.word	0x02dc6c00

08000f40 <EXTI0_1_IRQHandler>:
 8000f40:	b580      	push	{r7, lr}
 8000f42:	af00      	add	r7, sp, #0
 8000f44:	2380      	movs	r3, #128	; 0x80
 8000f46:	005b      	lsls	r3, r3, #1
 8000f48:	4a27      	ldr	r2, [pc, #156]	; (8000fe8 <EXTI0_1_IRQHandler+0xa8>)
 8000f4a:	0019      	movs	r1, r3
 8000f4c:	0010      	movs	r0, r2
 8000f4e:	f7ff fbb2 	bl	80006b6 <LL_GPIO_TogglePin>
 8000f52:	2390      	movs	r3, #144	; 0x90
 8000f54:	05db      	lsls	r3, r3, #23
 8000f56:	2101      	movs	r1, #1
 8000f58:	0018      	movs	r0, r3
 8000f5a:	f7ff fb9a 	bl	8000692 <LL_GPIO_IsInputPinSet>
 8000f5e:	1e03      	subs	r3, r0, #0
 8000f60:	d01b      	beq.n	8000f9a <EXTI0_1_IRQHandler+0x5a>
 8000f62:	2001      	movs	r0, #1
 8000f64:	f7ff ffa4 	bl	8000eb0 <play_note>
 8000f68:	4b20      	ldr	r3, [pc, #128]	; (8000fec <EXTI0_1_IRQHandler+0xac>)
 8000f6a:	681b      	ldr	r3, [r3, #0]
 8000f6c:	2b01      	cmp	r3, #1
 8000f6e:	d103      	bne.n	8000f78 <EXTI0_1_IRQHandler+0x38>
 8000f70:	4b1e      	ldr	r3, [pc, #120]	; (8000fec <EXTI0_1_IRQHandler+0xac>)
 8000f72:	2200      	movs	r2, #0
 8000f74:	601a      	str	r2, [r3, #0]
 8000f76:	e02b      	b.n	8000fd0 <EXTI0_1_IRQHandler+0x90>
 8000f78:	4b1d      	ldr	r3, [pc, #116]	; (8000ff0 <EXTI0_1_IRQHandler+0xb0>)
 8000f7a:	681b      	ldr	r3, [r3, #0]
 8000f7c:	2b01      	cmp	r3, #1
 8000f7e:	d127      	bne.n	8000fd0 <EXTI0_1_IRQHandler+0x90>
 8000f80:	4b1c      	ldr	r3, [pc, #112]	; (8000ff4 <EXTI0_1_IRQHandler+0xb4>)
 8000f82:	681b      	ldr	r3, [r3, #0]
 8000f84:	2b01      	cmp	r3, #1
 8000f86:	d123      	bne.n	8000fd0 <EXTI0_1_IRQHandler+0x90>
 8000f88:	4b1b      	ldr	r3, [pc, #108]	; (8000ff8 <EXTI0_1_IRQHandler+0xb8>)
 8000f8a:	681b      	ldr	r3, [r3, #0]
 8000f8c:	1c5a      	adds	r2, r3, #1
 8000f8e:	4b1a      	ldr	r3, [pc, #104]	; (8000ff8 <EXTI0_1_IRQHandler+0xb8>)
 8000f90:	601a      	str	r2, [r3, #0]
 8000f92:	4b18      	ldr	r3, [pc, #96]	; (8000ff4 <EXTI0_1_IRQHandler+0xb4>)
 8000f94:	2200      	movs	r2, #0
 8000f96:	601a      	str	r2, [r3, #0]
 8000f98:	e01a      	b.n	8000fd0 <EXTI0_1_IRQHandler+0x90>
 8000f9a:	2390      	movs	r3, #144	; 0x90
 8000f9c:	05db      	lsls	r3, r3, #23
 8000f9e:	2102      	movs	r1, #2
 8000fa0:	0018      	movs	r0, r3
 8000fa2:	f7ff fb76 	bl	8000692 <LL_GPIO_IsInputPinSet>
 8000fa6:	1e03      	subs	r3, r0, #0
 8000fa8:	d012      	beq.n	8000fd0 <EXTI0_1_IRQHandler+0x90>
 8000faa:	2002      	movs	r0, #2
 8000fac:	f7ff ff80 	bl	8000eb0 <play_note>
 8000fb0:	4b0f      	ldr	r3, [pc, #60]	; (8000ff0 <EXTI0_1_IRQHandler+0xb0>)
 8000fb2:	681b      	ldr	r3, [r3, #0]
 8000fb4:	2b02      	cmp	r3, #2
 8000fb6:	d10b      	bne.n	8000fd0 <EXTI0_1_IRQHandler+0x90>
 8000fb8:	4b0e      	ldr	r3, [pc, #56]	; (8000ff4 <EXTI0_1_IRQHandler+0xb4>)
 8000fba:	681b      	ldr	r3, [r3, #0]
 8000fbc:	2b01      	cmp	r3, #1
 8000fbe:	d107      	bne.n	8000fd0 <EXTI0_1_IRQHandler+0x90>
 8000fc0:	4b0d      	ldr	r3, [pc, #52]	; (8000ff8 <EXTI0_1_IRQHandler+0xb8>)
 8000fc2:	681b      	ldr	r3, [r3, #0]
 8000fc4:	1c5a      	adds	r2, r3, #1
 8000fc6:	4b0c      	ldr	r3, [pc, #48]	; (8000ff8 <EXTI0_1_IRQHandler+0xb8>)
 8000fc8:	601a      	str	r2, [r3, #0]
 8000fca:	4b0a      	ldr	r3, [pc, #40]	; (8000ff4 <EXTI0_1_IRQHandler+0xb4>)
 8000fcc:	2200      	movs	r2, #0
 8000fce:	601a      	str	r2, [r3, #0]
 8000fd0:	2001      	movs	r0, #1
 8000fd2:	f7ff fd0f 	bl	80009f4 <LL_EXTI_ClearFlag_0_31>
 8000fd6:	2002      	movs	r0, #2
 8000fd8:	f7ff fd0c 	bl	80009f4 <LL_EXTI_ClearFlag_0_31>
 8000fdc:	4b07      	ldr	r3, [pc, #28]	; (8000ffc <EXTI0_1_IRQHandler+0xbc>)
 8000fde:	2200      	movs	r2, #0
 8000fe0:	601a      	str	r2, [r3, #0]
 8000fe2:	46c0      	nop			; (mov r8, r8)
 8000fe4:	46bd      	mov	sp, r7
 8000fe6:	bd80      	pop	{r7, pc}
 8000fe8:	48000800 	.word	0x48000800
 8000fec:	20000048 	.word	0x20000048
 8000ff0:	20000038 	.word	0x20000038
 8000ff4:	2000003c 	.word	0x2000003c
 8000ff8:	20000034 	.word	0x20000034
 8000ffc:	2000004c 	.word	0x2000004c

08001000 <EXTI2_3_IRQHandler>:
 8001000:	b580      	push	{r7, lr}
 8001002:	af00      	add	r7, sp, #0
 8001004:	2390      	movs	r3, #144	; 0x90
 8001006:	05db      	lsls	r3, r3, #23
 8001008:	2104      	movs	r1, #4
 800100a:	0018      	movs	r0, r3
 800100c:	f7ff fb41 	bl	8000692 <LL_GPIO_IsInputPinSet>
 8001010:	1e03      	subs	r3, r0, #0
 8001012:	d013      	beq.n	800103c <EXTI2_3_IRQHandler+0x3c>
 8001014:	2003      	movs	r0, #3
 8001016:	f7ff ff4b 	bl	8000eb0 <play_note>
 800101a:	4b1c      	ldr	r3, [pc, #112]	; (800108c <EXTI2_3_IRQHandler+0x8c>)
 800101c:	681b      	ldr	r3, [r3, #0]
 800101e:	2b03      	cmp	r3, #3
 8001020:	d127      	bne.n	8001072 <EXTI2_3_IRQHandler+0x72>
 8001022:	4b1b      	ldr	r3, [pc, #108]	; (8001090 <EXTI2_3_IRQHandler+0x90>)
 8001024:	681b      	ldr	r3, [r3, #0]
 8001026:	2b01      	cmp	r3, #1
 8001028:	d123      	bne.n	8001072 <EXTI2_3_IRQHandler+0x72>
 800102a:	4b1a      	ldr	r3, [pc, #104]	; (8001094 <EXTI2_3_IRQHandler+0x94>)
 800102c:	681b      	ldr	r3, [r3, #0]
 800102e:	1c5a      	adds	r2, r3, #1
 8001030:	4b18      	ldr	r3, [pc, #96]	; (8001094 <EXTI2_3_IRQHandler+0x94>)
 8001032:	601a      	str	r2, [r3, #0]
 8001034:	4b16      	ldr	r3, [pc, #88]	; (8001090 <EXTI2_3_IRQHandler+0x90>)
 8001036:	2200      	movs	r2, #0
 8001038:	601a      	str	r2, [r3, #0]
 800103a:	e01a      	b.n	8001072 <EXTI2_3_IRQHandler+0x72>
 800103c:	2390      	movs	r3, #144	; 0x90
 800103e:	05db      	lsls	r3, r3, #23
 8001040:	2108      	movs	r1, #8
 8001042:	0018      	movs	r0, r3
 8001044:	f7ff fb25 	bl	8000692 <LL_GPIO_IsInputPinSet>
 8001048:	1e03      	subs	r3, r0, #0
 800104a:	d012      	beq.n	8001072 <EXTI2_3_IRQHandler+0x72>
 800104c:	2004      	movs	r0, #4
 800104e:	f7ff ff2f 	bl	8000eb0 <play_note>
 8001052:	4b0e      	ldr	r3, [pc, #56]	; (800108c <EXTI2_3_IRQHandler+0x8c>)
 8001054:	681b      	ldr	r3, [r3, #0]
 8001056:	2b04      	cmp	r3, #4
 8001058:	d10b      	bne.n	8001072 <EXTI2_3_IRQHandler+0x72>
 800105a:	4b0d      	ldr	r3, [pc, #52]	; (8001090 <EXTI2_3_IRQHandler+0x90>)
 800105c:	681b      	ldr	r3, [r3, #0]
 800105e:	2b01      	cmp	r3, #1
 8001060:	d107      	bne.n	8001072 <EXTI2_3_IRQHandler+0x72>
 8001062:	4b0c      	ldr	r3, [pc, #48]	; (8001094 <EXTI2_3_IRQHandler+0x94>)
 8001064:	681b      	ldr	r3, [r3, #0]
 8001066:	1c5a      	adds	r2, r3, #1
 8001068:	4b0a      	ldr	r3, [pc, #40]	; (8001094 <EXTI2_3_IRQHandler+0x94>)
 800106a:	601a      	str	r2, [r3, #0]
 800106c:	4b08      	ldr	r3, [pc, #32]	; (8001090 <EXTI2_3_IRQHandler+0x90>)
 800106e:	2200      	movs	r2, #0
 8001070:	601a      	str	r2, [r3, #0]
 8001072:	2004      	movs	r0, #4
 8001074:	f7ff fcbe 	bl	80009f4 <LL_EXTI_ClearFlag_0_31>
 8001078:	2008      	movs	r0, #8
 800107a:	f7ff fcbb 	bl	80009f4 <LL_EXTI_ClearFlag_0_31>
 800107e:	4b06      	ldr	r3, [pc, #24]	; (8001098 <EXTI2_3_IRQHandler+0x98>)
 8001080:	2200      	movs	r2, #0
 8001082:	601a      	str	r2, [r3, #0]
 8001084:	46c0      	nop			; (mov r8, r8)
 8001086:	46bd      	mov	sp, r7
 8001088:	bd80      	pop	{r7, pc}
 800108a:	46c0      	nop			; (mov r8, r8)
 800108c:	20000038 	.word	0x20000038
 8001090:	2000003c 	.word	0x2000003c
 8001094:	20000034 	.word	0x20000034
 8001098:	2000004c 	.word	0x2000004c

0800109c <EXTI4_15_IRQHandler>:
 800109c:	b580      	push	{r7, lr}
 800109e:	af00      	add	r7, sp, #0
 80010a0:	4b33      	ldr	r3, [pc, #204]	; (8001170 <EXTI4_15_IRQHandler+0xd4>)
 80010a2:	2200      	movs	r2, #0
 80010a4:	601a      	str	r2, [r3, #0]
 80010a6:	2390      	movs	r3, #144	; 0x90
 80010a8:	05db      	lsls	r3, r3, #23
 80010aa:	2110      	movs	r1, #16
 80010ac:	0018      	movs	r0, r3
 80010ae:	f7ff faf0 	bl	8000692 <LL_GPIO_IsInputPinSet>
 80010b2:	1e03      	subs	r3, r0, #0
 80010b4:	d016      	beq.n	80010e4 <EXTI4_15_IRQHandler+0x48>
 80010b6:	2005      	movs	r0, #5
 80010b8:	f7ff fefa 	bl	8000eb0 <play_note>
 80010bc:	4b2d      	ldr	r3, [pc, #180]	; (8001174 <EXTI4_15_IRQHandler+0xd8>)
 80010be:	681b      	ldr	r3, [r3, #0]
 80010c0:	2b05      	cmp	r3, #5
 80010c2:	d146      	bne.n	8001152 <EXTI4_15_IRQHandler+0xb6>
 80010c4:	4b2c      	ldr	r3, [pc, #176]	; (8001178 <EXTI4_15_IRQHandler+0xdc>)
 80010c6:	681b      	ldr	r3, [r3, #0]
 80010c8:	2b01      	cmp	r3, #1
 80010ca:	d142      	bne.n	8001152 <EXTI4_15_IRQHandler+0xb6>
 80010cc:	4b2b      	ldr	r3, [pc, #172]	; (800117c <EXTI4_15_IRQHandler+0xe0>)
 80010ce:	681b      	ldr	r3, [r3, #0]
 80010d0:	1c5a      	adds	r2, r3, #1
 80010d2:	4b2a      	ldr	r3, [pc, #168]	; (800117c <EXTI4_15_IRQHandler+0xe0>)
 80010d4:	601a      	str	r2, [r3, #0]
 80010d6:	4b28      	ldr	r3, [pc, #160]	; (8001178 <EXTI4_15_IRQHandler+0xdc>)
 80010d8:	2200      	movs	r2, #0
 80010da:	601a      	str	r2, [r3, #0]
 80010dc:	4b24      	ldr	r3, [pc, #144]	; (8001170 <EXTI4_15_IRQHandler+0xd4>)
 80010de:	2201      	movs	r2, #1
 80010e0:	601a      	str	r2, [r3, #0]
 80010e2:	e036      	b.n	8001152 <EXTI4_15_IRQHandler+0xb6>
 80010e4:	2390      	movs	r3, #144	; 0x90
 80010e6:	05db      	lsls	r3, r3, #23
 80010e8:	2140      	movs	r1, #64	; 0x40
 80010ea:	0018      	movs	r0, r3
 80010ec:	f7ff fad1 	bl	8000692 <LL_GPIO_IsInputPinSet>
 80010f0:	1e03      	subs	r3, r0, #0
 80010f2:	d013      	beq.n	800111c <EXTI4_15_IRQHandler+0x80>
 80010f4:	2006      	movs	r0, #6
 80010f6:	f7ff fedb 	bl	8000eb0 <play_note>
 80010fa:	4b1e      	ldr	r3, [pc, #120]	; (8001174 <EXTI4_15_IRQHandler+0xd8>)
 80010fc:	681b      	ldr	r3, [r3, #0]
 80010fe:	2b06      	cmp	r3, #6
 8001100:	d127      	bne.n	8001152 <EXTI4_15_IRQHandler+0xb6>
 8001102:	4b1d      	ldr	r3, [pc, #116]	; (8001178 <EXTI4_15_IRQHandler+0xdc>)
 8001104:	681b      	ldr	r3, [r3, #0]
 8001106:	2b01      	cmp	r3, #1
 8001108:	d123      	bne.n	8001152 <EXTI4_15_IRQHandler+0xb6>
 800110a:	4b1c      	ldr	r3, [pc, #112]	; (800117c <EXTI4_15_IRQHandler+0xe0>)
 800110c:	681b      	ldr	r3, [r3, #0]
 800110e:	1c5a      	adds	r2, r3, #1
 8001110:	4b1a      	ldr	r3, [pc, #104]	; (800117c <EXTI4_15_IRQHandler+0xe0>)
 8001112:	601a      	str	r2, [r3, #0]
 8001114:	4b18      	ldr	r3, [pc, #96]	; (8001178 <EXTI4_15_IRQHandler+0xdc>)
 8001116:	2200      	movs	r2, #0
 8001118:	601a      	str	r2, [r3, #0]
 800111a:	e01a      	b.n	8001152 <EXTI4_15_IRQHandler+0xb6>
 800111c:	2390      	movs	r3, #144	; 0x90
 800111e:	05db      	lsls	r3, r3, #23
 8001120:	2180      	movs	r1, #128	; 0x80
 8001122:	0018      	movs	r0, r3
 8001124:	f7ff fab5 	bl	8000692 <LL_GPIO_IsInputPinSet>
 8001128:	1e03      	subs	r3, r0, #0
 800112a:	d012      	beq.n	8001152 <EXTI4_15_IRQHandler+0xb6>
 800112c:	2007      	movs	r0, #7
 800112e:	f7ff febf 	bl	8000eb0 <play_note>
 8001132:	4b10      	ldr	r3, [pc, #64]	; (8001174 <EXTI4_15_IRQHandler+0xd8>)
 8001134:	681b      	ldr	r3, [r3, #0]
 8001136:	2b07      	cmp	r3, #7
 8001138:	d10b      	bne.n	8001152 <EXTI4_15_IRQHandler+0xb6>
 800113a:	4b0f      	ldr	r3, [pc, #60]	; (8001178 <EXTI4_15_IRQHandler+0xdc>)
 800113c:	681b      	ldr	r3, [r3, #0]
 800113e:	2b01      	cmp	r3, #1
 8001140:	d107      	bne.n	8001152 <EXTI4_15_IRQHandler+0xb6>
 8001142:	4b0e      	ldr	r3, [pc, #56]	; (800117c <EXTI4_15_IRQHandler+0xe0>)
 8001144:	681b      	ldr	r3, [r3, #0]
 8001146:	1c5a      	adds	r2, r3, #1
 8001148:	4b0c      	ldr	r3, [pc, #48]	; (800117c <EXTI4_15_IRQHandler+0xe0>)
 800114a:	601a      	str	r2, [r3, #0]
 800114c:	4b0a      	ldr	r3, [pc, #40]	; (8001178 <EXTI4_15_IRQHandler+0xdc>)
 800114e:	2200      	movs	r2, #0
 8001150:	601a      	str	r2, [r3, #0]
 8001152:	2010      	movs	r0, #16
 8001154:	f7ff fc4e 	bl	80009f4 <LL_EXTI_ClearFlag_0_31>
 8001158:	2080      	movs	r0, #128	; 0x80
 800115a:	f7ff fc4b 	bl	80009f4 <LL_EXTI_ClearFlag_0_31>
 800115e:	2040      	movs	r0, #64	; 0x40
 8001160:	f7ff fc48 	bl	80009f4 <LL_EXTI_ClearFlag_0_31>
 8001164:	4b06      	ldr	r3, [pc, #24]	; (8001180 <EXTI4_15_IRQHandler+0xe4>)
 8001166:	2200      	movs	r2, #0
 8001168:	601a      	str	r2, [r3, #0]
 800116a:	46c0      	nop			; (mov r8, r8)
 800116c:	46bd      	mov	sp, r7
 800116e:	bd80      	pop	{r7, pc}
 8001170:	20000044 	.word	0x20000044
 8001174:	20000038 	.word	0x20000038
 8001178:	2000003c 	.word	0x2000003c
 800117c:	20000034 	.word	0x20000034
 8001180:	2000004c 	.word	0x2000004c

08001184 <draw_piano>:
 8001184:	b580      	push	{r7, lr}
 8001186:	b086      	sub	sp, #24
 8001188:	af04      	add	r7, sp, #16
 800118a:	2301      	movs	r3, #1
 800118c:	607b      	str	r3, [r7, #4]
 800118e:	2300      	movs	r3, #0
 8001190:	607b      	str	r3, [r7, #4]
 8001192:	e019      	b.n	80011c8 <draw_piano+0x44>
 8001194:	687a      	ldr	r2, [r7, #4]
 8001196:	0013      	movs	r3, r2
 8001198:	00db      	lsls	r3, r3, #3
 800119a:	189b      	adds	r3, r3, r2
 800119c:	005b      	lsls	r3, r3, #1
 800119e:	0018      	movs	r0, r3
 80011a0:	687b      	ldr	r3, [r7, #4]
 80011a2:	1c5a      	adds	r2, r3, #1
 80011a4:	0013      	movs	r3, r2
 80011a6:	00db      	lsls	r3, r3, #3
 80011a8:	189b      	adds	r3, r3, r2
 80011aa:	005b      	lsls	r3, r3, #1
 80011ac:	001a      	movs	r2, r3
 80011ae:	23ff      	movs	r3, #255	; 0xff
 80011b0:	9302      	str	r3, [sp, #8]
 80011b2:	2300      	movs	r3, #0
 80011b4:	9301      	str	r3, [sp, #4]
 80011b6:	2301      	movs	r3, #1
 80011b8:	9300      	str	r3, [sp, #0]
 80011ba:	233c      	movs	r3, #60	; 0x3c
 80011bc:	2100      	movs	r1, #0
 80011be:	f7ff fcb7 	bl	8000b30 <rect>
 80011c2:	687b      	ldr	r3, [r7, #4]
 80011c4:	3301      	adds	r3, #1
 80011c6:	607b      	str	r3, [r7, #4]
 80011c8:	687b      	ldr	r3, [r7, #4]
 80011ca:	2b06      	cmp	r3, #6
 80011cc:	dde2      	ble.n	8001194 <draw_piano+0x10>
 80011ce:	2300      	movs	r3, #0
 80011d0:	9302      	str	r3, [sp, #8]
 80011d2:	2300      	movs	r3, #0
 80011d4:	9301      	str	r3, [sp, #4]
 80011d6:	2300      	movs	r3, #0
 80011d8:	9300      	str	r3, [sp, #0]
 80011da:	2328      	movs	r3, #40	; 0x28
 80011dc:	2218      	movs	r2, #24
 80011de:	2100      	movs	r1, #0
 80011e0:	200c      	movs	r0, #12
 80011e2:	f7ff fca5 	bl	8000b30 <rect>
 80011e6:	2300      	movs	r3, #0
 80011e8:	9302      	str	r3, [sp, #8]
 80011ea:	2300      	movs	r3, #0
 80011ec:	9301      	str	r3, [sp, #4]
 80011ee:	2300      	movs	r3, #0
 80011f0:	9300      	str	r3, [sp, #0]
 80011f2:	2328      	movs	r3, #40	; 0x28
 80011f4:	222a      	movs	r2, #42	; 0x2a
 80011f6:	2100      	movs	r1, #0
 80011f8:	201e      	movs	r0, #30
 80011fa:	f7ff fc99 	bl	8000b30 <rect>
 80011fe:	2300      	movs	r3, #0
 8001200:	9302      	str	r3, [sp, #8]
 8001202:	2300      	movs	r3, #0
 8001204:	9301      	str	r3, [sp, #4]
 8001206:	2300      	movs	r3, #0
 8001208:	9300      	str	r3, [sp, #0]
 800120a:	2328      	movs	r3, #40	; 0x28
 800120c:	224e      	movs	r2, #78	; 0x4e
 800120e:	2100      	movs	r1, #0
 8001210:	2042      	movs	r0, #66	; 0x42
 8001212:	f7ff fc8d 	bl	8000b30 <rect>
 8001216:	2300      	movs	r3, #0
 8001218:	9302      	str	r3, [sp, #8]
 800121a:	2300      	movs	r3, #0
 800121c:	9301      	str	r3, [sp, #4]
 800121e:	2300      	movs	r3, #0
 8001220:	9300      	str	r3, [sp, #0]
 8001222:	2328      	movs	r3, #40	; 0x28
 8001224:	2260      	movs	r2, #96	; 0x60
 8001226:	2100      	movs	r1, #0
 8001228:	2054      	movs	r0, #84	; 0x54
 800122a:	f7ff fc81 	bl	8000b30 <rect>
 800122e:	2300      	movs	r3, #0
 8001230:	9302      	str	r3, [sp, #8]
 8001232:	2300      	movs	r3, #0
 8001234:	9301      	str	r3, [sp, #4]
 8001236:	2300      	movs	r3, #0
 8001238:	9300      	str	r3, [sp, #0]
 800123a:	2328      	movs	r3, #40	; 0x28
 800123c:	2272      	movs	r2, #114	; 0x72
 800123e:	2100      	movs	r1, #0
 8001240:	2066      	movs	r0, #102	; 0x66
 8001242:	f7ff fc75 	bl	8000b30 <rect>
 8001246:	f000 fe45 	bl	8001ed4 <oled_update>
 800124a:	46c0      	nop			; (mov r8, r8)
 800124c:	46bd      	mov	sp, r7
 800124e:	b002      	add	sp, #8
 8001250:	bd80      	pop	{r7, pc}
	...

08001254 <SysTick_Handler>:
 8001254:	b580      	push	{r7, lr}
 8001256:	af00      	add	r7, sp, #0
 8001258:	2390      	movs	r3, #144	; 0x90
 800125a:	05db      	lsls	r3, r3, #23
 800125c:	2101      	movs	r1, #1
 800125e:	0018      	movs	r0, r3
 8001260:	f7ff fa17 	bl	8000692 <LL_GPIO_IsInputPinSet>
 8001264:	1e03      	subs	r3, r0, #0
 8001266:	d132      	bne.n	80012ce <SysTick_Handler+0x7a>
 8001268:	2390      	movs	r3, #144	; 0x90
 800126a:	05db      	lsls	r3, r3, #23
 800126c:	2102      	movs	r1, #2
 800126e:	0018      	movs	r0, r3
 8001270:	f7ff fa0f 	bl	8000692 <LL_GPIO_IsInputPinSet>
 8001274:	1e03      	subs	r3, r0, #0
 8001276:	d12a      	bne.n	80012ce <SysTick_Handler+0x7a>
 8001278:	2390      	movs	r3, #144	; 0x90
 800127a:	05db      	lsls	r3, r3, #23
 800127c:	2104      	movs	r1, #4
 800127e:	0018      	movs	r0, r3
 8001280:	f7ff fa07 	bl	8000692 <LL_GPIO_IsInputPinSet>
 8001284:	1e03      	subs	r3, r0, #0
 8001286:	d122      	bne.n	80012ce <SysTick_Handler+0x7a>
 8001288:	2390      	movs	r3, #144	; 0x90
 800128a:	05db      	lsls	r3, r3, #23
 800128c:	2108      	movs	r1, #8
 800128e:	0018      	movs	r0, r3
 8001290:	f7ff f9ff 	bl	8000692 <LL_GPIO_IsInputPinSet>
 8001294:	1e03      	subs	r3, r0, #0
 8001296:	d11a      	bne.n	80012ce <SysTick_Handler+0x7a>
 8001298:	2390      	movs	r3, #144	; 0x90
 800129a:	05db      	lsls	r3, r3, #23
 800129c:	2110      	movs	r1, #16
 800129e:	0018      	movs	r0, r3
 80012a0:	f7ff f9f7 	bl	8000692 <LL_GPIO_IsInputPinSet>
 80012a4:	1e03      	subs	r3, r0, #0
 80012a6:	d112      	bne.n	80012ce <SysTick_Handler+0x7a>
 80012a8:	2390      	movs	r3, #144	; 0x90
 80012aa:	05db      	lsls	r3, r3, #23
 80012ac:	2140      	movs	r1, #64	; 0x40
 80012ae:	0018      	movs	r0, r3
 80012b0:	f7ff f9ef 	bl	8000692 <LL_GPIO_IsInputPinSet>
 80012b4:	1e03      	subs	r3, r0, #0
 80012b6:	d10a      	bne.n	80012ce <SysTick_Handler+0x7a>
 80012b8:	2390      	movs	r3, #144	; 0x90
 80012ba:	05db      	lsls	r3, r3, #23
 80012bc:	2180      	movs	r1, #128	; 0x80
 80012be:	0018      	movs	r0, r3
 80012c0:	f7ff f9e7 	bl	8000692 <LL_GPIO_IsInputPinSet>
 80012c4:	1e03      	subs	r3, r0, #0
 80012c6:	d102      	bne.n	80012ce <SysTick_Handler+0x7a>
 80012c8:	2000      	movs	r0, #0
 80012ca:	f7ff fdf1 	bl	8000eb0 <play_note>
 80012ce:	4b34      	ldr	r3, [pc, #208]	; (80013a0 <SysTick_Handler+0x14c>)
 80012d0:	681b      	ldr	r3, [r3, #0]
 80012d2:	2b00      	cmp	r3, #0
 80012d4:	dd04      	ble.n	80012e0 <SysTick_Handler+0x8c>
 80012d6:	4b32      	ldr	r3, [pc, #200]	; (80013a0 <SysTick_Handler+0x14c>)
 80012d8:	681b      	ldr	r3, [r3, #0]
 80012da:	1e5a      	subs	r2, r3, #1
 80012dc:	4b30      	ldr	r3, [pc, #192]	; (80013a0 <SysTick_Handler+0x14c>)
 80012de:	601a      	str	r2, [r3, #0]
 80012e0:	2390      	movs	r3, #144	; 0x90
 80012e2:	05db      	lsls	r3, r3, #23
 80012e4:	2101      	movs	r1, #1
 80012e6:	0018      	movs	r0, r3
 80012e8:	f7ff f9d3 	bl	8000692 <LL_GPIO_IsInputPinSet>
 80012ec:	1e03      	subs	r3, r0, #0
 80012ee:	d003      	beq.n	80012f8 <SysTick_Handler+0xa4>
 80012f0:	4b2c      	ldr	r3, [pc, #176]	; (80013a4 <SysTick_Handler+0x150>)
 80012f2:	681b      	ldr	r3, [r3, #0]
 80012f4:	2b01      	cmp	r3, #1
 80012f6:	d047      	beq.n	8001388 <SysTick_Handler+0x134>
 80012f8:	2390      	movs	r3, #144	; 0x90
 80012fa:	05db      	lsls	r3, r3, #23
 80012fc:	2102      	movs	r1, #2
 80012fe:	0018      	movs	r0, r3
 8001300:	f7ff f9c7 	bl	8000692 <LL_GPIO_IsInputPinSet>
 8001304:	1e03      	subs	r3, r0, #0
 8001306:	d003      	beq.n	8001310 <SysTick_Handler+0xbc>
 8001308:	4b26      	ldr	r3, [pc, #152]	; (80013a4 <SysTick_Handler+0x150>)
 800130a:	681b      	ldr	r3, [r3, #0]
 800130c:	2b02      	cmp	r3, #2
 800130e:	d03b      	beq.n	8001388 <SysTick_Handler+0x134>
 8001310:	2390      	movs	r3, #144	; 0x90
 8001312:	05db      	lsls	r3, r3, #23
 8001314:	2104      	movs	r1, #4
 8001316:	0018      	movs	r0, r3
 8001318:	f7ff f9bb 	bl	8000692 <LL_GPIO_IsInputPinSet>
 800131c:	1e03      	subs	r3, r0, #0
 800131e:	d003      	beq.n	8001328 <SysTick_Handler+0xd4>
 8001320:	4b20      	ldr	r3, [pc, #128]	; (80013a4 <SysTick_Handler+0x150>)
 8001322:	681b      	ldr	r3, [r3, #0]
 8001324:	2b03      	cmp	r3, #3
 8001326:	d02f      	beq.n	8001388 <SysTick_Handler+0x134>
 8001328:	2390      	movs	r3, #144	; 0x90
 800132a:	05db      	lsls	r3, r3, #23
 800132c:	2108      	movs	r1, #8
 800132e:	0018      	movs	r0, r3
 8001330:	f7ff f9af 	bl	8000692 <LL_GPIO_IsInputPinSet>
 8001334:	1e03      	subs	r3, r0, #0
 8001336:	d003      	beq.n	8001340 <SysTick_Handler+0xec>
 8001338:	4b1a      	ldr	r3, [pc, #104]	; (80013a4 <SysTick_Handler+0x150>)
 800133a:	681b      	ldr	r3, [r3, #0]
 800133c:	2b04      	cmp	r3, #4
 800133e:	d023      	beq.n	8001388 <SysTick_Handler+0x134>
 8001340:	2390      	movs	r3, #144	; 0x90
 8001342:	05db      	lsls	r3, r3, #23
 8001344:	2110      	movs	r1, #16
 8001346:	0018      	movs	r0, r3
 8001348:	f7ff f9a3 	bl	8000692 <LL_GPIO_IsInputPinSet>
 800134c:	1e03      	subs	r3, r0, #0
 800134e:	d003      	beq.n	8001358 <SysTick_Handler+0x104>
 8001350:	4b14      	ldr	r3, [pc, #80]	; (80013a4 <SysTick_Handler+0x150>)
 8001352:	681b      	ldr	r3, [r3, #0]
 8001354:	2b05      	cmp	r3, #5
 8001356:	d017      	beq.n	8001388 <SysTick_Handler+0x134>
 8001358:	2390      	movs	r3, #144	; 0x90
 800135a:	05db      	lsls	r3, r3, #23
 800135c:	2140      	movs	r1, #64	; 0x40
 800135e:	0018      	movs	r0, r3
 8001360:	f7ff f997 	bl	8000692 <LL_GPIO_IsInputPinSet>
 8001364:	1e03      	subs	r3, r0, #0
 8001366:	d003      	beq.n	8001370 <SysTick_Handler+0x11c>
 8001368:	4b0e      	ldr	r3, [pc, #56]	; (80013a4 <SysTick_Handler+0x150>)
 800136a:	681b      	ldr	r3, [r3, #0]
 800136c:	2b06      	cmp	r3, #6
 800136e:	d00b      	beq.n	8001388 <SysTick_Handler+0x134>
 8001370:	2390      	movs	r3, #144	; 0x90
 8001372:	05db      	lsls	r3, r3, #23
 8001374:	2180      	movs	r1, #128	; 0x80
 8001376:	0018      	movs	r0, r3
 8001378:	f7ff f98b 	bl	8000692 <LL_GPIO_IsInputPinSet>
 800137c:	1e03      	subs	r3, r0, #0
 800137e:	d008      	beq.n	8001392 <SysTick_Handler+0x13e>
 8001380:	4b08      	ldr	r3, [pc, #32]	; (80013a4 <SysTick_Handler+0x150>)
 8001382:	681b      	ldr	r3, [r3, #0]
 8001384:	2b07      	cmp	r3, #7
 8001386:	d104      	bne.n	8001392 <SysTick_Handler+0x13e>
 8001388:	4b07      	ldr	r3, [pc, #28]	; (80013a8 <SysTick_Handler+0x154>)
 800138a:	681b      	ldr	r3, [r3, #0]
 800138c:	1c5a      	adds	r2, r3, #1
 800138e:	4b06      	ldr	r3, [pc, #24]	; (80013a8 <SysTick_Handler+0x154>)
 8001390:	601a      	str	r2, [r3, #0]
 8001392:	4b06      	ldr	r3, [pc, #24]	; (80013ac <SysTick_Handler+0x158>)
 8001394:	2201      	movs	r2, #1
 8001396:	601a      	str	r2, [r3, #0]
 8001398:	46c0      	nop			; (mov r8, r8)
 800139a:	46bd      	mov	sp, r7
 800139c:	bd80      	pop	{r7, pc}
 800139e:	46c0      	nop			; (mov r8, r8)
 80013a0:	20000040 	.word	0x20000040
 80013a4:	20000038 	.word	0x20000038
 80013a8:	20000034 	.word	0x20000034
 80013ac:	2000003c 	.word	0x2000003c

080013b0 <set_note>:
 80013b0:	b590      	push	{r4, r7, lr}
 80013b2:	b089      	sub	sp, #36	; 0x24
 80013b4:	af04      	add	r7, sp, #16
 80013b6:	6078      	str	r0, [r7, #4]
 80013b8:	6039      	str	r1, [r7, #0]
 80013ba:	f7ff fee3 	bl	8001184 <draw_piano>
 80013be:	687b      	ldr	r3, [r7, #4]
 80013c0:	1e5a      	subs	r2, r3, #1
 80013c2:	0013      	movs	r3, r2
 80013c4:	00db      	lsls	r3, r3, #3
 80013c6:	189b      	adds	r3, r3, r2
 80013c8:	005b      	lsls	r3, r3, #1
 80013ca:	3307      	adds	r3, #7
 80013cc:	60fb      	str	r3, [r7, #12]
 80013ce:	2332      	movs	r3, #50	; 0x32
 80013d0:	60bb      	str	r3, [r7, #8]
 80013d2:	68fb      	ldr	r3, [r7, #12]
 80013d4:	1d1a      	adds	r2, r3, #4
 80013d6:	68bb      	ldr	r3, [r7, #8]
 80013d8:	1d1c      	adds	r4, r3, #4
 80013da:	68b9      	ldr	r1, [r7, #8]
 80013dc:	68f8      	ldr	r0, [r7, #12]
 80013de:	2300      	movs	r3, #0
 80013e0:	9302      	str	r3, [sp, #8]
 80013e2:	2300      	movs	r3, #0
 80013e4:	9301      	str	r3, [sp, #4]
 80013e6:	2300      	movs	r3, #0
 80013e8:	9300      	str	r3, [sp, #0]
 80013ea:	0023      	movs	r3, r4
 80013ec:	f7ff fba0 	bl	8000b30 <rect>
 80013f0:	f000 fd70 	bl	8001ed4 <oled_update>
 80013f4:	4b04      	ldr	r3, [pc, #16]	; (8001408 <set_note+0x58>)
 80013f6:	687a      	ldr	r2, [r7, #4]
 80013f8:	601a      	str	r2, [r3, #0]
 80013fa:	4b04      	ldr	r3, [pc, #16]	; (800140c <set_note+0x5c>)
 80013fc:	683a      	ldr	r2, [r7, #0]
 80013fe:	601a      	str	r2, [r3, #0]
 8001400:	46c0      	nop			; (mov r8, r8)
 8001402:	46bd      	mov	sp, r7
 8001404:	b005      	add	sp, #20
 8001406:	bd90      	pop	{r4, r7, pc}
 8001408:	20000038 	.word	0x20000038
 800140c:	20000040 	.word	0x20000040

08001410 <clear_oled>:
 8001410:	b580      	push	{r7, lr}
 8001412:	b084      	sub	sp, #16
 8001414:	af04      	add	r7, sp, #16
 8001416:	2300      	movs	r3, #0
 8001418:	9302      	str	r3, [sp, #8]
 800141a:	2300      	movs	r3, #0
 800141c:	9301      	str	r3, [sp, #4]
 800141e:	2300      	movs	r3, #0
 8001420:	9300      	str	r3, [sp, #0]
 8001422:	2340      	movs	r3, #64	; 0x40
 8001424:	2280      	movs	r2, #128	; 0x80
 8001426:	2100      	movs	r1, #0
 8001428:	2000      	movs	r0, #0
 800142a:	f7ff fb81 	bl	8000b30 <rect>
 800142e:	46c0      	nop			; (mov r8, r8)
 8001430:	46bd      	mov	sp, r7
 8001432:	bd80      	pop	{r7, pc}

08001434 <keep_note>:
 8001434:	b580      	push	{r7, lr}
 8001436:	b082      	sub	sp, #8
 8001438:	af00      	add	r7, sp, #0
 800143a:	6078      	str	r0, [r7, #4]
 800143c:	6039      	str	r1, [r7, #0]
 800143e:	683a      	ldr	r2, [r7, #0]
 8001440:	687b      	ldr	r3, [r7, #4]
 8001442:	0011      	movs	r1, r2
 8001444:	0018      	movs	r0, r3
 8001446:	f7ff ffb3 	bl	80013b0 <set_note>
 800144a:	46c0      	nop			; (mov r8, r8)
 800144c:	4b03      	ldr	r3, [pc, #12]	; (800145c <keep_note+0x28>)
 800144e:	681b      	ldr	r3, [r3, #0]
 8001450:	2b00      	cmp	r3, #0
 8001452:	d1fb      	bne.n	800144c <keep_note+0x18>
 8001454:	46c0      	nop			; (mov r8, r8)
 8001456:	46bd      	mov	sp, r7
 8001458:	b002      	add	sp, #8
 800145a:	bd80      	pop	{r7, pc}
 800145c:	20000040 	.word	0x20000040

08001460 <melody1>:
 8001460:	b580      	push	{r7, lr}
 8001462:	af00      	add	r7, sp, #0
 8001464:	2128      	movs	r1, #40	; 0x28
 8001466:	2003      	movs	r0, #3
 8001468:	f7ff ffe4 	bl	8001434 <keep_note>
 800146c:	2128      	movs	r1, #40	; 0x28
 800146e:	2005      	movs	r0, #5
 8001470:	f7ff ffe0 	bl	8001434 <keep_note>
 8001474:	2128      	movs	r1, #40	; 0x28
 8001476:	2003      	movs	r0, #3
 8001478:	f7ff ffdc 	bl	8001434 <keep_note>
 800147c:	2128      	movs	r1, #40	; 0x28
 800147e:	2006      	movs	r0, #6
 8001480:	f7ff ffd8 	bl	8001434 <keep_note>
 8001484:	2128      	movs	r1, #40	; 0x28
 8001486:	2003      	movs	r0, #3
 8001488:	f7ff ffd4 	bl	8001434 <keep_note>
 800148c:	2128      	movs	r1, #40	; 0x28
 800148e:	2005      	movs	r0, #5
 8001490:	f7ff ffd0 	bl	8001434 <keep_note>
 8001494:	2128      	movs	r1, #40	; 0x28
 8001496:	2003      	movs	r0, #3
 8001498:	f7ff ffcc 	bl	8001434 <keep_note>
 800149c:	2128      	movs	r1, #40	; 0x28
 800149e:	2000      	movs	r0, #0
 80014a0:	f7ff ffc8 	bl	8001434 <keep_note>
 80014a4:	2128      	movs	r1, #40	; 0x28
 80014a6:	2003      	movs	r0, #3
 80014a8:	f7ff ffc4 	bl	8001434 <keep_note>
 80014ac:	2128      	movs	r1, #40	; 0x28
 80014ae:	2005      	movs	r0, #5
 80014b0:	f7ff ffc0 	bl	8001434 <keep_note>
 80014b4:	2128      	movs	r1, #40	; 0x28
 80014b6:	2003      	movs	r0, #3
 80014b8:	f7ff ffbc 	bl	8001434 <keep_note>
 80014bc:	2128      	movs	r1, #40	; 0x28
 80014be:	2006      	movs	r0, #6
 80014c0:	f7ff ffb8 	bl	8001434 <keep_note>
 80014c4:	210a      	movs	r1, #10
 80014c6:	2000      	movs	r0, #0
 80014c8:	f7ff ffb4 	bl	8001434 <keep_note>
 80014cc:	2128      	movs	r1, #40	; 0x28
 80014ce:	2006      	movs	r0, #6
 80014d0:	f7ff ffb0 	bl	8001434 <keep_note>
 80014d4:	2128      	movs	r1, #40	; 0x28
 80014d6:	2003      	movs	r0, #3
 80014d8:	f7ff ffac 	bl	8001434 <keep_note>
 80014dc:	46c0      	nop			; (mov r8, r8)
 80014de:	46bd      	mov	sp, r7
 80014e0:	bd80      	pop	{r7, pc}
	...

080014e4 <main>:
 80014e4:	b580      	push	{r7, lr}
 80014e6:	af00      	add	r7, sp, #0
 80014e8:	f7ff fa92 	bl	8000a10 <rcc_config>
 80014ec:	f7ff fac4 	bl	8000a78 <gpio_config>
 80014f0:	f000 fd1c 	bl	8001f2c <oled_config>
 80014f4:	f7ff fb10 	bl	8000b18 <printf_config>
 80014f8:	f7ff fbba 	bl	8000c70 <exti_config>
 80014fc:	f7ff fc28 	bl	8000d50 <tim3_config>
 8001500:	f7ff fc78 	bl	8000df4 <tim2_config>
 8001504:	f7ff fd08 	bl	8000f18 <systick_config>
 8001508:	4b12      	ldr	r3, [pc, #72]	; (8001554 <main+0x70>)
 800150a:	2201      	movs	r2, #1
 800150c:	601a      	str	r2, [r3, #0]
 800150e:	4b12      	ldr	r3, [pc, #72]	; (8001558 <main+0x74>)
 8001510:	0018      	movs	r0, r3
 8001512:	f000 fa35 	bl	8001980 <xprintf>
 8001516:	f000 fcdd 	bl	8001ed4 <oled_update>
 800151a:	4b0e      	ldr	r3, [pc, #56]	; (8001554 <main+0x70>)
 800151c:	681b      	ldr	r3, [r3, #0]
 800151e:	2b00      	cmp	r3, #0
 8001520:	d1fb      	bne.n	800151a <main+0x36>
 8001522:	f7ff ff75 	bl	8001410 <clear_oled>
 8001526:	f7ff fe2d 	bl	8001184 <draw_piano>
 800152a:	f7ff ff99 	bl	8001460 <melody1>
 800152e:	f7ff ff6f 	bl	8001410 <clear_oled>
 8001532:	2100      	movs	r1, #0
 8001534:	2000      	movs	r0, #0
 8001536:	f000 fdb5 	bl	80020a4 <oled_set_cursor>
 800153a:	4b08      	ldr	r3, [pc, #32]	; (800155c <main+0x78>)
 800153c:	681a      	ldr	r2, [r3, #0]
 800153e:	4b08      	ldr	r3, [pc, #32]	; (8001560 <main+0x7c>)
 8001540:	0011      	movs	r1, r2
 8001542:	0018      	movs	r0, r3
 8001544:	f000 fa1c 	bl	8001980 <xprintf>
 8001548:	f000 fcc4 	bl	8001ed4 <oled_update>
 800154c:	4b01      	ldr	r3, [pc, #4]	; (8001554 <main+0x70>)
 800154e:	2201      	movs	r2, #1
 8001550:	601a      	str	r2, [r3, #0]
 8001552:	e7e2      	b.n	800151a <main+0x36>
 8001554:	20000048 	.word	0x20000048
 8001558:	080022b8 	.word	0x080022b8
 800155c:	20000034 	.word	0x20000034
 8001560:	080022f8 	.word	0x080022f8

08001564 <SystemInit>:
 8001564:	b580      	push	{r7, lr}
 8001566:	af00      	add	r7, sp, #0
 8001568:	4b1a      	ldr	r3, [pc, #104]	; (80015d4 <SystemInit+0x70>)
 800156a:	681a      	ldr	r2, [r3, #0]
 800156c:	4b19      	ldr	r3, [pc, #100]	; (80015d4 <SystemInit+0x70>)
 800156e:	2101      	movs	r1, #1
 8001570:	430a      	orrs	r2, r1
 8001572:	601a      	str	r2, [r3, #0]
 8001574:	4b17      	ldr	r3, [pc, #92]	; (80015d4 <SystemInit+0x70>)
 8001576:	685a      	ldr	r2, [r3, #4]
 8001578:	4b16      	ldr	r3, [pc, #88]	; (80015d4 <SystemInit+0x70>)
 800157a:	4917      	ldr	r1, [pc, #92]	; (80015d8 <SystemInit+0x74>)
 800157c:	400a      	ands	r2, r1
 800157e:	605a      	str	r2, [r3, #4]
 8001580:	4b14      	ldr	r3, [pc, #80]	; (80015d4 <SystemInit+0x70>)
 8001582:	681a      	ldr	r2, [r3, #0]
 8001584:	4b13      	ldr	r3, [pc, #76]	; (80015d4 <SystemInit+0x70>)
 8001586:	4915      	ldr	r1, [pc, #84]	; (80015dc <SystemInit+0x78>)
 8001588:	400a      	ands	r2, r1
 800158a:	601a      	str	r2, [r3, #0]
 800158c:	4b11      	ldr	r3, [pc, #68]	; (80015d4 <SystemInit+0x70>)
 800158e:	681a      	ldr	r2, [r3, #0]
 8001590:	4b10      	ldr	r3, [pc, #64]	; (80015d4 <SystemInit+0x70>)
 8001592:	4913      	ldr	r1, [pc, #76]	; (80015e0 <SystemInit+0x7c>)
 8001594:	400a      	ands	r2, r1
 8001596:	601a      	str	r2, [r3, #0]
 8001598:	4b0e      	ldr	r3, [pc, #56]	; (80015d4 <SystemInit+0x70>)
 800159a:	685a      	ldr	r2, [r3, #4]
 800159c:	4b0d      	ldr	r3, [pc, #52]	; (80015d4 <SystemInit+0x70>)
 800159e:	4911      	ldr	r1, [pc, #68]	; (80015e4 <SystemInit+0x80>)
 80015a0:	400a      	ands	r2, r1
 80015a2:	605a      	str	r2, [r3, #4]
 80015a4:	4b0b      	ldr	r3, [pc, #44]	; (80015d4 <SystemInit+0x70>)
 80015a6:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 80015a8:	4b0a      	ldr	r3, [pc, #40]	; (80015d4 <SystemInit+0x70>)
 80015aa:	210f      	movs	r1, #15
 80015ac:	438a      	bics	r2, r1
 80015ae:	62da      	str	r2, [r3, #44]	; 0x2c
 80015b0:	4b08      	ldr	r3, [pc, #32]	; (80015d4 <SystemInit+0x70>)
 80015b2:	6b1a      	ldr	r2, [r3, #48]	; 0x30
 80015b4:	4b07      	ldr	r3, [pc, #28]	; (80015d4 <SystemInit+0x70>)
 80015b6:	490c      	ldr	r1, [pc, #48]	; (80015e8 <SystemInit+0x84>)
 80015b8:	400a      	ands	r2, r1
 80015ba:	631a      	str	r2, [r3, #48]	; 0x30
 80015bc:	4b05      	ldr	r3, [pc, #20]	; (80015d4 <SystemInit+0x70>)
 80015be:	6b5a      	ldr	r2, [r3, #52]	; 0x34
 80015c0:	4b04      	ldr	r3, [pc, #16]	; (80015d4 <SystemInit+0x70>)
 80015c2:	2101      	movs	r1, #1
 80015c4:	438a      	bics	r2, r1
 80015c6:	635a      	str	r2, [r3, #52]	; 0x34
 80015c8:	4b02      	ldr	r3, [pc, #8]	; (80015d4 <SystemInit+0x70>)
 80015ca:	2200      	movs	r2, #0
 80015cc:	609a      	str	r2, [r3, #8]
 80015ce:	46c0      	nop			; (mov r8, r8)
 80015d0:	46bd      	mov	sp, r7
 80015d2:	bd80      	pop	{r7, pc}
 80015d4:	40021000 	.word	0x40021000
 80015d8:	f8ffb80c 	.word	0xf8ffb80c
 80015dc:	fef6ffff 	.word	0xfef6ffff
 80015e0:	fffbffff 	.word	0xfffbffff
 80015e4:	ffc0ffff 	.word	0xffc0ffff
 80015e8:	fffffeac 	.word	0xfffffeac

080015ec <xputc>:
 80015ec:	b580      	push	{r7, lr}
 80015ee:	b082      	sub	sp, #8
 80015f0:	af00      	add	r7, sp, #0
 80015f2:	0002      	movs	r2, r0
 80015f4:	1dfb      	adds	r3, r7, #7
 80015f6:	701a      	strb	r2, [r3, #0]
 80015f8:	1dfb      	adds	r3, r7, #7
 80015fa:	781b      	ldrb	r3, [r3, #0]
 80015fc:	2b0a      	cmp	r3, #10
 80015fe:	d102      	bne.n	8001606 <xputc+0x1a>
 8001600:	200d      	movs	r0, #13
 8001602:	f7ff fff3 	bl	80015ec <xputc>
 8001606:	4b0d      	ldr	r3, [pc, #52]	; (800163c <xputc+0x50>)
 8001608:	681b      	ldr	r3, [r3, #0]
 800160a:	2b00      	cmp	r3, #0
 800160c:	d008      	beq.n	8001620 <xputc+0x34>
 800160e:	4b0b      	ldr	r3, [pc, #44]	; (800163c <xputc+0x50>)
 8001610:	681b      	ldr	r3, [r3, #0]
 8001612:	1c59      	adds	r1, r3, #1
 8001614:	4a09      	ldr	r2, [pc, #36]	; (800163c <xputc+0x50>)
 8001616:	6011      	str	r1, [r2, #0]
 8001618:	1dfa      	adds	r2, r7, #7
 800161a:	7812      	ldrb	r2, [r2, #0]
 800161c:	701a      	strb	r2, [r3, #0]
 800161e:	e009      	b.n	8001634 <xputc+0x48>
 8001620:	4b07      	ldr	r3, [pc, #28]	; (8001640 <xputc+0x54>)
 8001622:	681b      	ldr	r3, [r3, #0]
 8001624:	2b00      	cmp	r3, #0
 8001626:	d005      	beq.n	8001634 <xputc+0x48>
 8001628:	4b05      	ldr	r3, [pc, #20]	; (8001640 <xputc+0x54>)
 800162a:	681b      	ldr	r3, [r3, #0]
 800162c:	1dfa      	adds	r2, r7, #7
 800162e:	7812      	ldrb	r2, [r2, #0]
 8001630:	0010      	movs	r0, r2
 8001632:	4798      	blx	r3
 8001634:	46bd      	mov	sp, r7
 8001636:	b002      	add	sp, #8
 8001638:	bd80      	pop	{r7, pc}
 800163a:	46c0      	nop			; (mov r8, r8)
 800163c:	20000050 	.word	0x20000050
 8001640:	2000045c 	.word	0x2000045c

08001644 <xputs>:
 8001644:	b580      	push	{r7, lr}
 8001646:	b082      	sub	sp, #8
 8001648:	af00      	add	r7, sp, #0
 800164a:	6078      	str	r0, [r7, #4]
 800164c:	e006      	b.n	800165c <xputs+0x18>
 800164e:	687b      	ldr	r3, [r7, #4]
 8001650:	1c5a      	adds	r2, r3, #1
 8001652:	607a      	str	r2, [r7, #4]
 8001654:	781b      	ldrb	r3, [r3, #0]
 8001656:	0018      	movs	r0, r3
 8001658:	f7ff ffc8 	bl	80015ec <xputc>
 800165c:	687b      	ldr	r3, [r7, #4]
 800165e:	781b      	ldrb	r3, [r3, #0]
 8001660:	2b00      	cmp	r3, #0
 8001662:	d1f4      	bne.n	800164e <xputs+0xa>
 8001664:	46c0      	nop			; (mov r8, r8)
 8001666:	46bd      	mov	sp, r7
 8001668:	b002      	add	sp, #8
 800166a:	bd80      	pop	{r7, pc}

0800166c <xvprintf>:
 800166c:	b590      	push	{r4, r7, lr}
 800166e:	b093      	sub	sp, #76	; 0x4c
 8001670:	af00      	add	r7, sp, #0
 8001672:	6078      	str	r0, [r7, #4]
 8001674:	6039      	str	r1, [r7, #0]
 8001676:	687b      	ldr	r3, [r7, #4]
 8001678:	1c5a      	adds	r2, r3, #1
 800167a:	607a      	str	r2, [r7, #4]
 800167c:	2133      	movs	r1, #51	; 0x33
 800167e:	187a      	adds	r2, r7, r1
 8001680:	781b      	ldrb	r3, [r3, #0]
 8001682:	7013      	strb	r3, [r2, #0]
 8001684:	187b      	adds	r3, r7, r1
 8001686:	781b      	ldrb	r3, [r3, #0]
 8001688:	2b00      	cmp	r3, #0
 800168a:	d100      	bne.n	800168e <xvprintf+0x22>
 800168c:	e16f      	b.n	800196e <xvprintf+0x302>
 800168e:	2333      	movs	r3, #51	; 0x33
 8001690:	18fb      	adds	r3, r7, r3
 8001692:	781b      	ldrb	r3, [r3, #0]
 8001694:	2b25      	cmp	r3, #37	; 0x25
 8001696:	d006      	beq.n	80016a6 <xvprintf+0x3a>
 8001698:	2333      	movs	r3, #51	; 0x33
 800169a:	18fb      	adds	r3, r7, r3
 800169c:	781b      	ldrb	r3, [r3, #0]
 800169e:	0018      	movs	r0, r3
 80016a0:	f7ff ffa4 	bl	80015ec <xputc>
 80016a4:	e162      	b.n	800196c <xvprintf+0x300>
 80016a6:	2300      	movs	r3, #0
 80016a8:	637b      	str	r3, [r7, #52]	; 0x34
 80016aa:	687b      	ldr	r3, [r7, #4]
 80016ac:	1c5a      	adds	r2, r3, #1
 80016ae:	607a      	str	r2, [r7, #4]
 80016b0:	2133      	movs	r1, #51	; 0x33
 80016b2:	187a      	adds	r2, r7, r1
 80016b4:	781b      	ldrb	r3, [r3, #0]
 80016b6:	7013      	strb	r3, [r2, #0]
 80016b8:	187b      	adds	r3, r7, r1
 80016ba:	781b      	ldrb	r3, [r3, #0]
 80016bc:	2b30      	cmp	r3, #48	; 0x30
 80016be:	d109      	bne.n	80016d4 <xvprintf+0x68>
 80016c0:	2301      	movs	r3, #1
 80016c2:	637b      	str	r3, [r7, #52]	; 0x34
 80016c4:	687b      	ldr	r3, [r7, #4]
 80016c6:	1c5a      	adds	r2, r3, #1
 80016c8:	607a      	str	r2, [r7, #4]
 80016ca:	2233      	movs	r2, #51	; 0x33
 80016cc:	18ba      	adds	r2, r7, r2
 80016ce:	781b      	ldrb	r3, [r3, #0]
 80016d0:	7013      	strb	r3, [r2, #0]
 80016d2:	e00d      	b.n	80016f0 <xvprintf+0x84>
 80016d4:	2333      	movs	r3, #51	; 0x33
 80016d6:	18fb      	adds	r3, r7, r3
 80016d8:	781b      	ldrb	r3, [r3, #0]
 80016da:	2b2d      	cmp	r3, #45	; 0x2d
 80016dc:	d108      	bne.n	80016f0 <xvprintf+0x84>
 80016de:	2302      	movs	r3, #2
 80016e0:	637b      	str	r3, [r7, #52]	; 0x34
 80016e2:	687b      	ldr	r3, [r7, #4]
 80016e4:	1c5a      	adds	r2, r3, #1
 80016e6:	607a      	str	r2, [r7, #4]
 80016e8:	2233      	movs	r2, #51	; 0x33
 80016ea:	18ba      	adds	r2, r7, r2
 80016ec:	781b      	ldrb	r3, [r3, #0]
 80016ee:	7013      	strb	r3, [r2, #0]
 80016f0:	2300      	movs	r3, #0
 80016f2:	63bb      	str	r3, [r7, #56]	; 0x38
 80016f4:	e011      	b.n	800171a <xvprintf+0xae>
 80016f6:	6bba      	ldr	r2, [r7, #56]	; 0x38
 80016f8:	0013      	movs	r3, r2
 80016fa:	009b      	lsls	r3, r3, #2
 80016fc:	189b      	adds	r3, r3, r2
 80016fe:	005b      	lsls	r3, r3, #1
 8001700:	001a      	movs	r2, r3
 8001702:	2133      	movs	r1, #51	; 0x33
 8001704:	187b      	adds	r3, r7, r1
 8001706:	781b      	ldrb	r3, [r3, #0]
 8001708:	18d3      	adds	r3, r2, r3
 800170a:	3b30      	subs	r3, #48	; 0x30
 800170c:	63bb      	str	r3, [r7, #56]	; 0x38
 800170e:	687b      	ldr	r3, [r7, #4]
 8001710:	1c5a      	adds	r2, r3, #1
 8001712:	607a      	str	r2, [r7, #4]
 8001714:	187a      	adds	r2, r7, r1
 8001716:	781b      	ldrb	r3, [r3, #0]
 8001718:	7013      	strb	r3, [r2, #0]
 800171a:	2333      	movs	r3, #51	; 0x33
 800171c:	18fb      	adds	r3, r7, r3
 800171e:	781b      	ldrb	r3, [r3, #0]
 8001720:	2b2f      	cmp	r3, #47	; 0x2f
 8001722:	d904      	bls.n	800172e <xvprintf+0xc2>
 8001724:	2333      	movs	r3, #51	; 0x33
 8001726:	18fb      	adds	r3, r7, r3
 8001728:	781b      	ldrb	r3, [r3, #0]
 800172a:	2b39      	cmp	r3, #57	; 0x39
 800172c:	d9e3      	bls.n	80016f6 <xvprintf+0x8a>
 800172e:	2333      	movs	r3, #51	; 0x33
 8001730:	18fb      	adds	r3, r7, r3
 8001732:	781b      	ldrb	r3, [r3, #0]
 8001734:	2b6c      	cmp	r3, #108	; 0x6c
 8001736:	d004      	beq.n	8001742 <xvprintf+0xd6>
 8001738:	2333      	movs	r3, #51	; 0x33
 800173a:	18fb      	adds	r3, r7, r3
 800173c:	781b      	ldrb	r3, [r3, #0]
 800173e:	2b4c      	cmp	r3, #76	; 0x4c
 8001740:	d10a      	bne.n	8001758 <xvprintf+0xec>
 8001742:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 8001744:	2204      	movs	r2, #4
 8001746:	4313      	orrs	r3, r2
 8001748:	637b      	str	r3, [r7, #52]	; 0x34
 800174a:	687b      	ldr	r3, [r7, #4]
 800174c:	1c5a      	adds	r2, r3, #1
 800174e:	607a      	str	r2, [r7, #4]
 8001750:	2233      	movs	r2, #51	; 0x33
 8001752:	18ba      	adds	r2, r7, r2
 8001754:	781b      	ldrb	r3, [r3, #0]
 8001756:	7013      	strb	r3, [r2, #0]
 8001758:	2333      	movs	r3, #51	; 0x33
 800175a:	18fb      	adds	r3, r7, r3
 800175c:	781b      	ldrb	r3, [r3, #0]
 800175e:	2b00      	cmp	r3, #0
 8001760:	d100      	bne.n	8001764 <xvprintf+0xf8>
 8001762:	e106      	b.n	8001972 <xvprintf+0x306>
 8001764:	2132      	movs	r1, #50	; 0x32
 8001766:	187b      	adds	r3, r7, r1
 8001768:	2233      	movs	r2, #51	; 0x33
 800176a:	18ba      	adds	r2, r7, r2
 800176c:	7812      	ldrb	r2, [r2, #0]
 800176e:	701a      	strb	r2, [r3, #0]
 8001770:	187b      	adds	r3, r7, r1
 8001772:	781b      	ldrb	r3, [r3, #0]
 8001774:	2b60      	cmp	r3, #96	; 0x60
 8001776:	d905      	bls.n	8001784 <xvprintf+0x118>
 8001778:	2232      	movs	r2, #50	; 0x32
 800177a:	18bb      	adds	r3, r7, r2
 800177c:	18ba      	adds	r2, r7, r2
 800177e:	7812      	ldrb	r2, [r2, #0]
 8001780:	3a20      	subs	r2, #32
 8001782:	701a      	strb	r2, [r3, #0]
 8001784:	2332      	movs	r3, #50	; 0x32
 8001786:	18fb      	adds	r3, r7, r3
 8001788:	781b      	ldrb	r3, [r3, #0]
 800178a:	3b42      	subs	r3, #66	; 0x42
 800178c:	2b16      	cmp	r3, #22
 800178e:	d847      	bhi.n	8001820 <xvprintf+0x1b4>
 8001790:	009a      	lsls	r2, r3, #2
 8001792:	4b7a      	ldr	r3, [pc, #488]	; (800197c <xvprintf+0x310>)
 8001794:	18d3      	adds	r3, r2, r3
 8001796:	681b      	ldr	r3, [r3, #0]
 8001798:	469f      	mov	pc, r3
 800179a:	683b      	ldr	r3, [r7, #0]
 800179c:	1d1a      	adds	r2, r3, #4
 800179e:	603a      	str	r2, [r7, #0]
 80017a0:	681b      	ldr	r3, [r3, #0]
 80017a2:	627b      	str	r3, [r7, #36]	; 0x24
 80017a4:	2300      	movs	r3, #0
 80017a6:	63fb      	str	r3, [r7, #60]	; 0x3c
 80017a8:	e002      	b.n	80017b0 <xvprintf+0x144>
 80017aa:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
 80017ac:	3301      	adds	r3, #1
 80017ae:	63fb      	str	r3, [r7, #60]	; 0x3c
 80017b0:	6a7a      	ldr	r2, [r7, #36]	; 0x24
 80017b2:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
 80017b4:	18d3      	adds	r3, r2, r3
 80017b6:	781b      	ldrb	r3, [r3, #0]
 80017b8:	2b00      	cmp	r3, #0
 80017ba:	d1f6      	bne.n	80017aa <xvprintf+0x13e>
 80017bc:	e002      	b.n	80017c4 <xvprintf+0x158>
 80017be:	2020      	movs	r0, #32
 80017c0:	f7ff ff14 	bl	80015ec <xputc>
 80017c4:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 80017c6:	2202      	movs	r2, #2
 80017c8:	4013      	ands	r3, r2
 80017ca:	d105      	bne.n	80017d8 <xvprintf+0x16c>
 80017cc:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
 80017ce:	1c5a      	adds	r2, r3, #1
 80017d0:	63fa      	str	r2, [r7, #60]	; 0x3c
 80017d2:	6bba      	ldr	r2, [r7, #56]	; 0x38
 80017d4:	429a      	cmp	r2, r3
 80017d6:	d8f2      	bhi.n	80017be <xvprintf+0x152>
 80017d8:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 80017da:	0018      	movs	r0, r3
 80017dc:	f7ff ff32 	bl	8001644 <xputs>
 80017e0:	e002      	b.n	80017e8 <xvprintf+0x17c>
 80017e2:	2020      	movs	r0, #32
 80017e4:	f7ff ff02 	bl	80015ec <xputc>
 80017e8:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
 80017ea:	1c5a      	adds	r2, r3, #1
 80017ec:	63fa      	str	r2, [r7, #60]	; 0x3c
 80017ee:	6bba      	ldr	r2, [r7, #56]	; 0x38
 80017f0:	429a      	cmp	r2, r3
 80017f2:	d8f6      	bhi.n	80017e2 <xvprintf+0x176>
 80017f4:	e0ba      	b.n	800196c <xvprintf+0x300>
 80017f6:	683b      	ldr	r3, [r7, #0]
 80017f8:	1d1a      	adds	r2, r3, #4
 80017fa:	603a      	str	r2, [r7, #0]
 80017fc:	681b      	ldr	r3, [r3, #0]
 80017fe:	b2db      	uxtb	r3, r3
 8001800:	0018      	movs	r0, r3
 8001802:	f7ff fef3 	bl	80015ec <xputc>
 8001806:	e0b1      	b.n	800196c <xvprintf+0x300>
 8001808:	2302      	movs	r3, #2
 800180a:	647b      	str	r3, [r7, #68]	; 0x44
 800180c:	e00f      	b.n	800182e <xvprintf+0x1c2>
 800180e:	2308      	movs	r3, #8
 8001810:	647b      	str	r3, [r7, #68]	; 0x44
 8001812:	e00c      	b.n	800182e <xvprintf+0x1c2>
 8001814:	230a      	movs	r3, #10
 8001816:	647b      	str	r3, [r7, #68]	; 0x44
 8001818:	e009      	b.n	800182e <xvprintf+0x1c2>
 800181a:	2310      	movs	r3, #16
 800181c:	647b      	str	r3, [r7, #68]	; 0x44
 800181e:	e006      	b.n	800182e <xvprintf+0x1c2>
 8001820:	2333      	movs	r3, #51	; 0x33
 8001822:	18fb      	adds	r3, r7, r3
 8001824:	781b      	ldrb	r3, [r3, #0]
 8001826:	0018      	movs	r0, r3
 8001828:	f7ff fee0 	bl	80015ec <xputc>
 800182c:	e09e      	b.n	800196c <xvprintf+0x300>
 800182e:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 8001830:	2204      	movs	r2, #4
 8001832:	4013      	ands	r3, r2
 8001834:	d005      	beq.n	8001842 <xvprintf+0x1d6>
 8001836:	683b      	ldr	r3, [r7, #0]
 8001838:	1d1a      	adds	r2, r3, #4
 800183a:	603a      	str	r2, [r7, #0]
 800183c:	681b      	ldr	r3, [r3, #0]
 800183e:	62fb      	str	r3, [r7, #44]	; 0x2c
 8001840:	e00e      	b.n	8001860 <xvprintf+0x1f4>
 8001842:	2332      	movs	r3, #50	; 0x32
 8001844:	18fb      	adds	r3, r7, r3
 8001846:	781b      	ldrb	r3, [r3, #0]
 8001848:	2b44      	cmp	r3, #68	; 0x44
 800184a:	d104      	bne.n	8001856 <xvprintf+0x1ea>
 800184c:	683b      	ldr	r3, [r7, #0]
 800184e:	1d1a      	adds	r2, r3, #4
 8001850:	603a      	str	r2, [r7, #0]
 8001852:	681b      	ldr	r3, [r3, #0]
 8001854:	e003      	b.n	800185e <xvprintf+0x1f2>
 8001856:	683b      	ldr	r3, [r7, #0]
 8001858:	1d1a      	adds	r2, r3, #4
 800185a:	603a      	str	r2, [r7, #0]
 800185c:	681b      	ldr	r3, [r3, #0]
 800185e:	62fb      	str	r3, [r7, #44]	; 0x2c
 8001860:	2332      	movs	r3, #50	; 0x32
 8001862:	18fb      	adds	r3, r7, r3
 8001864:	781b      	ldrb	r3, [r3, #0]
 8001866:	2b44      	cmp	r3, #68	; 0x44
 8001868:	d109      	bne.n	800187e <xvprintf+0x212>
 800186a:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 800186c:	2b00      	cmp	r3, #0
 800186e:	da06      	bge.n	800187e <xvprintf+0x212>
 8001870:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 8001872:	425b      	negs	r3, r3
 8001874:	62fb      	str	r3, [r7, #44]	; 0x2c
 8001876:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 8001878:	2210      	movs	r2, #16
 800187a:	4313      	orrs	r3, r2
 800187c:	637b      	str	r3, [r7, #52]	; 0x34
 800187e:	2300      	movs	r3, #0
 8001880:	643b      	str	r3, [r7, #64]	; 0x40
 8001882:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 8001884:	62bb      	str	r3, [r7, #40]	; 0x28
 8001886:	6abb      	ldr	r3, [r7, #40]	; 0x28
 8001888:	6c79      	ldr	r1, [r7, #68]	; 0x44
 800188a:	0018      	movs	r0, r3
 800188c:	f7fe fcc2 	bl	8000214 <__aeabi_uidivmod>
 8001890:	000b      	movs	r3, r1
 8001892:	001a      	movs	r2, r3
 8001894:	2432      	movs	r4, #50	; 0x32
 8001896:	193b      	adds	r3, r7, r4
 8001898:	701a      	strb	r2, [r3, #0]
 800189a:	6c79      	ldr	r1, [r7, #68]	; 0x44
 800189c:	6ab8      	ldr	r0, [r7, #40]	; 0x28
 800189e:	f7fe fc33 	bl	8000108 <__udivsi3>
 80018a2:	0003      	movs	r3, r0
 80018a4:	62bb      	str	r3, [r7, #40]	; 0x28
 80018a6:	193b      	adds	r3, r7, r4
 80018a8:	781b      	ldrb	r3, [r3, #0]
 80018aa:	2b09      	cmp	r3, #9
 80018ac:	d90d      	bls.n	80018ca <xvprintf+0x25e>
 80018ae:	2333      	movs	r3, #51	; 0x33
 80018b0:	18fb      	adds	r3, r7, r3
 80018b2:	781b      	ldrb	r3, [r3, #0]
 80018b4:	2b78      	cmp	r3, #120	; 0x78
 80018b6:	d101      	bne.n	80018bc <xvprintf+0x250>
 80018b8:	2327      	movs	r3, #39	; 0x27
 80018ba:	e000      	b.n	80018be <xvprintf+0x252>
 80018bc:	2307      	movs	r3, #7
 80018be:	2132      	movs	r1, #50	; 0x32
 80018c0:	187a      	adds	r2, r7, r1
 80018c2:	1879      	adds	r1, r7, r1
 80018c4:	7809      	ldrb	r1, [r1, #0]
 80018c6:	185b      	adds	r3, r3, r1
 80018c8:	7013      	strb	r3, [r2, #0]
 80018ca:	6c3b      	ldr	r3, [r7, #64]	; 0x40
 80018cc:	1c5a      	adds	r2, r3, #1
 80018ce:	643a      	str	r2, [r7, #64]	; 0x40
 80018d0:	2232      	movs	r2, #50	; 0x32
 80018d2:	18ba      	adds	r2, r7, r2
 80018d4:	7812      	ldrb	r2, [r2, #0]
 80018d6:	3230      	adds	r2, #48	; 0x30
 80018d8:	b2d1      	uxtb	r1, r2
 80018da:	220c      	movs	r2, #12
 80018dc:	18ba      	adds	r2, r7, r2
 80018de:	54d1      	strb	r1, [r2, r3]
 80018e0:	6abb      	ldr	r3, [r7, #40]	; 0x28
 80018e2:	2b00      	cmp	r3, #0
 80018e4:	d002      	beq.n	80018ec <xvprintf+0x280>
 80018e6:	6c3b      	ldr	r3, [r7, #64]	; 0x40
 80018e8:	2b17      	cmp	r3, #23
 80018ea:	d9cc      	bls.n	8001886 <xvprintf+0x21a>
 80018ec:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 80018ee:	2210      	movs	r2, #16
 80018f0:	4013      	ands	r3, r2
 80018f2:	d006      	beq.n	8001902 <xvprintf+0x296>
 80018f4:	6c3b      	ldr	r3, [r7, #64]	; 0x40
 80018f6:	1c5a      	adds	r2, r3, #1
 80018f8:	643a      	str	r2, [r7, #64]	; 0x40
 80018fa:	220c      	movs	r2, #12
 80018fc:	18ba      	adds	r2, r7, r2
 80018fe:	212d      	movs	r1, #45	; 0x2d
 8001900:	54d1      	strb	r1, [r2, r3]
 8001902:	6c3b      	ldr	r3, [r7, #64]	; 0x40
 8001904:	63fb      	str	r3, [r7, #60]	; 0x3c
 8001906:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 8001908:	2201      	movs	r2, #1
 800190a:	4013      	ands	r3, r2
 800190c:	d001      	beq.n	8001912 <xvprintf+0x2a6>
 800190e:	2230      	movs	r2, #48	; 0x30
 8001910:	e000      	b.n	8001914 <xvprintf+0x2a8>
 8001912:	2220      	movs	r2, #32
 8001914:	2332      	movs	r3, #50	; 0x32
 8001916:	18fb      	adds	r3, r7, r3
 8001918:	701a      	strb	r2, [r3, #0]
 800191a:	e005      	b.n	8001928 <xvprintf+0x2bc>
 800191c:	2332      	movs	r3, #50	; 0x32
 800191e:	18fb      	adds	r3, r7, r3
 8001920:	781b      	ldrb	r3, [r3, #0]
 8001922:	0018      	movs	r0, r3
 8001924:	f7ff fe62 	bl	80015ec <xputc>
 8001928:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 800192a:	2202      	movs	r2, #2
 800192c:	4013      	ands	r3, r2
 800192e:	d105      	bne.n	800193c <xvprintf+0x2d0>
 8001930:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
 8001932:	1c5a      	adds	r2, r3, #1
 8001934:	63fa      	str	r2, [r7, #60]	; 0x3c
 8001936:	6bba      	ldr	r2, [r7, #56]	; 0x38
 8001938:	429a      	cmp	r2, r3
 800193a:	d8ef      	bhi.n	800191c <xvprintf+0x2b0>
 800193c:	6c3b      	ldr	r3, [r7, #64]	; 0x40
 800193e:	3b01      	subs	r3, #1
 8001940:	643b      	str	r3, [r7, #64]	; 0x40
 8001942:	230c      	movs	r3, #12
 8001944:	18fa      	adds	r2, r7, r3
 8001946:	6c3b      	ldr	r3, [r7, #64]	; 0x40
 8001948:	18d3      	adds	r3, r2, r3
 800194a:	781b      	ldrb	r3, [r3, #0]
 800194c:	0018      	movs	r0, r3
 800194e:	f7ff fe4d 	bl	80015ec <xputc>
 8001952:	6c3b      	ldr	r3, [r7, #64]	; 0x40
 8001954:	2b00      	cmp	r3, #0
 8001956:	d1f1      	bne.n	800193c <xvprintf+0x2d0>
 8001958:	e002      	b.n	8001960 <xvprintf+0x2f4>
 800195a:	2020      	movs	r0, #32
 800195c:	f7ff fe46 	bl	80015ec <xputc>
 8001960:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
 8001962:	1c5a      	adds	r2, r3, #1
 8001964:	63fa      	str	r2, [r7, #60]	; 0x3c
 8001966:	6bba      	ldr	r2, [r7, #56]	; 0x38
 8001968:	429a      	cmp	r2, r3
 800196a:	d8f6      	bhi.n	800195a <xvprintf+0x2ee>
 800196c:	e683      	b.n	8001676 <xvprintf+0xa>
 800196e:	46c0      	nop			; (mov r8, r8)
 8001970:	e000      	b.n	8001974 <xvprintf+0x308>
 8001972:	46c0      	nop			; (mov r8, r8)
 8001974:	46c0      	nop			; (mov r8, r8)
 8001976:	46bd      	mov	sp, r7
 8001978:	b013      	add	sp, #76	; 0x4c
 800197a:	bd90      	pop	{r4, r7, pc}
 800197c:	08002368 	.word	0x08002368

08001980 <xprintf>:
 8001980:	b40f      	push	{r0, r1, r2, r3}
 8001982:	b580      	push	{r7, lr}
 8001984:	b082      	sub	sp, #8
 8001986:	af00      	add	r7, sp, #0
 8001988:	2314      	movs	r3, #20
 800198a:	18fb      	adds	r3, r7, r3
 800198c:	607b      	str	r3, [r7, #4]
 800198e:	687a      	ldr	r2, [r7, #4]
 8001990:	693b      	ldr	r3, [r7, #16]
 8001992:	0011      	movs	r1, r2
 8001994:	0018      	movs	r0, r3
 8001996:	f7ff fe69 	bl	800166c <xvprintf>
 800199a:	46c0      	nop			; (mov r8, r8)
 800199c:	46bd      	mov	sp, r7
 800199e:	b002      	add	sp, #8
 80019a0:	bc80      	pop	{r7}
 80019a2:	bc08      	pop	{r3}
 80019a4:	b004      	add	sp, #16
 80019a6:	4718      	bx	r3

080019a8 <LL_AHB1_GRP1_EnableClock>:
 80019a8:	b580      	push	{r7, lr}
 80019aa:	b084      	sub	sp, #16
 80019ac:	af00      	add	r7, sp, #0
 80019ae:	6078      	str	r0, [r7, #4]
 80019b0:	4b07      	ldr	r3, [pc, #28]	; (80019d0 <LL_AHB1_GRP1_EnableClock+0x28>)
 80019b2:	6959      	ldr	r1, [r3, #20]
 80019b4:	4b06      	ldr	r3, [pc, #24]	; (80019d0 <LL_AHB1_GRP1_EnableClock+0x28>)
 80019b6:	687a      	ldr	r2, [r7, #4]
 80019b8:	430a      	orrs	r2, r1
 80019ba:	615a      	str	r2, [r3, #20]
 80019bc:	4b04      	ldr	r3, [pc, #16]	; (80019d0 <LL_AHB1_GRP1_EnableClock+0x28>)
 80019be:	695b      	ldr	r3, [r3, #20]
 80019c0:	687a      	ldr	r2, [r7, #4]
 80019c2:	4013      	ands	r3, r2
 80019c4:	60fb      	str	r3, [r7, #12]
 80019c6:	68fb      	ldr	r3, [r7, #12]
 80019c8:	46c0      	nop			; (mov r8, r8)
 80019ca:	46bd      	mov	sp, r7
 80019cc:	b004      	add	sp, #16
 80019ce:	bd80      	pop	{r7, pc}
 80019d0:	40021000 	.word	0x40021000

080019d4 <LL_APB1_GRP1_EnableClock>:
 80019d4:	b580      	push	{r7, lr}
 80019d6:	b084      	sub	sp, #16
 80019d8:	af00      	add	r7, sp, #0
 80019da:	6078      	str	r0, [r7, #4]
 80019dc:	4b07      	ldr	r3, [pc, #28]	; (80019fc <LL_APB1_GRP1_EnableClock+0x28>)
 80019de:	69d9      	ldr	r1, [r3, #28]
 80019e0:	4b06      	ldr	r3, [pc, #24]	; (80019fc <LL_APB1_GRP1_EnableClock+0x28>)
 80019e2:	687a      	ldr	r2, [r7, #4]
 80019e4:	430a      	orrs	r2, r1
 80019e6:	61da      	str	r2, [r3, #28]
 80019e8:	4b04      	ldr	r3, [pc, #16]	; (80019fc <LL_APB1_GRP1_EnableClock+0x28>)
 80019ea:	69db      	ldr	r3, [r3, #28]
 80019ec:	687a      	ldr	r2, [r7, #4]
 80019ee:	4013      	ands	r3, r2
 80019f0:	60fb      	str	r3, [r7, #12]
 80019f2:	68fb      	ldr	r3, [r7, #12]
 80019f4:	46c0      	nop			; (mov r8, r8)
 80019f6:	46bd      	mov	sp, r7
 80019f8:	b004      	add	sp, #16
 80019fa:	bd80      	pop	{r7, pc}
 80019fc:	40021000 	.word	0x40021000

08001a00 <LL_GPIO_SetPinMode>:
 8001a00:	b580      	push	{r7, lr}
 8001a02:	b084      	sub	sp, #16
 8001a04:	af00      	add	r7, sp, #0
 8001a06:	60f8      	str	r0, [r7, #12]
 8001a08:	60b9      	str	r1, [r7, #8]
 8001a0a:	607a      	str	r2, [r7, #4]
 8001a0c:	68fb      	ldr	r3, [r7, #12]
 8001a0e:	6819      	ldr	r1, [r3, #0]
 8001a10:	68bb      	ldr	r3, [r7, #8]
 8001a12:	68ba      	ldr	r2, [r7, #8]
 8001a14:	435a      	muls	r2, r3
 8001a16:	0013      	movs	r3, r2
 8001a18:	005b      	lsls	r3, r3, #1
 8001a1a:	189b      	adds	r3, r3, r2
 8001a1c:	43db      	mvns	r3, r3
 8001a1e:	400b      	ands	r3, r1
 8001a20:	001a      	movs	r2, r3
 8001a22:	68bb      	ldr	r3, [r7, #8]
 8001a24:	68b9      	ldr	r1, [r7, #8]
 8001a26:	434b      	muls	r3, r1
 8001a28:	6879      	ldr	r1, [r7, #4]
 8001a2a:	434b      	muls	r3, r1
 8001a2c:	431a      	orrs	r2, r3
 8001a2e:	68fb      	ldr	r3, [r7, #12]
 8001a30:	601a      	str	r2, [r3, #0]
 8001a32:	46c0      	nop			; (mov r8, r8)
 8001a34:	46bd      	mov	sp, r7
 8001a36:	b004      	add	sp, #16
 8001a38:	bd80      	pop	{r7, pc}

08001a3a <LL_GPIO_SetPinOutputType>:
 8001a3a:	b580      	push	{r7, lr}
 8001a3c:	b084      	sub	sp, #16
 8001a3e:	af00      	add	r7, sp, #0
 8001a40:	60f8      	str	r0, [r7, #12]
 8001a42:	60b9      	str	r1, [r7, #8]
 8001a44:	607a      	str	r2, [r7, #4]
 8001a46:	68fb      	ldr	r3, [r7, #12]
 8001a48:	685b      	ldr	r3, [r3, #4]
 8001a4a:	68ba      	ldr	r2, [r7, #8]
 8001a4c:	43d2      	mvns	r2, r2
 8001a4e:	401a      	ands	r2, r3
 8001a50:	68bb      	ldr	r3, [r7, #8]
 8001a52:	6879      	ldr	r1, [r7, #4]
 8001a54:	434b      	muls	r3, r1
 8001a56:	431a      	orrs	r2, r3
 8001a58:	68fb      	ldr	r3, [r7, #12]
 8001a5a:	605a      	str	r2, [r3, #4]
 8001a5c:	46c0      	nop			; (mov r8, r8)
 8001a5e:	46bd      	mov	sp, r7
 8001a60:	b004      	add	sp, #16
 8001a62:	bd80      	pop	{r7, pc}

08001a64 <LL_GPIO_SetPinSpeed>:
 8001a64:	b580      	push	{r7, lr}
 8001a66:	b084      	sub	sp, #16
 8001a68:	af00      	add	r7, sp, #0
 8001a6a:	60f8      	str	r0, [r7, #12]
 8001a6c:	60b9      	str	r1, [r7, #8]
 8001a6e:	607a      	str	r2, [r7, #4]
 8001a70:	68fb      	ldr	r3, [r7, #12]
 8001a72:	6899      	ldr	r1, [r3, #8]
 8001a74:	68bb      	ldr	r3, [r7, #8]
 8001a76:	68ba      	ldr	r2, [r7, #8]
 8001a78:	435a      	muls	r2, r3
 8001a7a:	0013      	movs	r3, r2
 8001a7c:	005b      	lsls	r3, r3, #1
 8001a7e:	189b      	adds	r3, r3, r2
 8001a80:	43db      	mvns	r3, r3
 8001a82:	400b      	ands	r3, r1
 8001a84:	001a      	movs	r2, r3
 8001a86:	68bb      	ldr	r3, [r7, #8]
 8001a88:	68b9      	ldr	r1, [r7, #8]
 8001a8a:	434b      	muls	r3, r1
 8001a8c:	6879      	ldr	r1, [r7, #4]
 8001a8e:	434b      	muls	r3, r1
 8001a90:	431a      	orrs	r2, r3
 8001a92:	68fb      	ldr	r3, [r7, #12]
 8001a94:	609a      	str	r2, [r3, #8]
 8001a96:	46c0      	nop			; (mov r8, r8)
 8001a98:	46bd      	mov	sp, r7
 8001a9a:	b004      	add	sp, #16
 8001a9c:	bd80      	pop	{r7, pc}

08001a9e <LL_GPIO_SetAFPin_0_7>:
 8001a9e:	b580      	push	{r7, lr}
 8001aa0:	b084      	sub	sp, #16
 8001aa2:	af00      	add	r7, sp, #0
 8001aa4:	60f8      	str	r0, [r7, #12]
 8001aa6:	60b9      	str	r1, [r7, #8]
 8001aa8:	607a      	str	r2, [r7, #4]
 8001aaa:	68fb      	ldr	r3, [r7, #12]
 8001aac:	6a19      	ldr	r1, [r3, #32]
 8001aae:	68bb      	ldr	r3, [r7, #8]
 8001ab0:	68ba      	ldr	r2, [r7, #8]
 8001ab2:	4353      	muls	r3, r2
 8001ab4:	68ba      	ldr	r2, [r7, #8]
 8001ab6:	4353      	muls	r3, r2
 8001ab8:	68ba      	ldr	r2, [r7, #8]
 8001aba:	435a      	muls	r2, r3
 8001abc:	0013      	movs	r3, r2
 8001abe:	011b      	lsls	r3, r3, #4
 8001ac0:	1a9b      	subs	r3, r3, r2
 8001ac2:	43db      	mvns	r3, r3
 8001ac4:	400b      	ands	r3, r1
 8001ac6:	001a      	movs	r2, r3
 8001ac8:	68bb      	ldr	r3, [r7, #8]
 8001aca:	68b9      	ldr	r1, [r7, #8]
 8001acc:	434b      	muls	r3, r1
 8001ace:	68b9      	ldr	r1, [r7, #8]
 8001ad0:	434b      	muls	r3, r1
 8001ad2:	68b9      	ldr	r1, [r7, #8]
 8001ad4:	434b      	muls	r3, r1
 8001ad6:	6879      	ldr	r1, [r7, #4]
 8001ad8:	434b      	muls	r3, r1
 8001ada:	431a      	orrs	r2, r3
 8001adc:	68fb      	ldr	r3, [r7, #12]
 8001ade:	621a      	str	r2, [r3, #32]
 8001ae0:	46c0      	nop			; (mov r8, r8)
 8001ae2:	46bd      	mov	sp, r7
 8001ae4:	b004      	add	sp, #16
 8001ae6:	bd80      	pop	{r7, pc}

08001ae8 <LL_RCC_SetI2CClockSource>:
 8001ae8:	b580      	push	{r7, lr}
 8001aea:	b082      	sub	sp, #8
 8001aec:	af00      	add	r7, sp, #0
 8001aee:	6078      	str	r0, [r7, #4]
 8001af0:	4b06      	ldr	r3, [pc, #24]	; (8001b0c <LL_RCC_SetI2CClockSource+0x24>)
 8001af2:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8001af4:	2210      	movs	r2, #16
 8001af6:	4393      	bics	r3, r2
 8001af8:	0019      	movs	r1, r3
 8001afa:	4b04      	ldr	r3, [pc, #16]	; (8001b0c <LL_RCC_SetI2CClockSource+0x24>)
 8001afc:	687a      	ldr	r2, [r7, #4]
 8001afe:	430a      	orrs	r2, r1
 8001b00:	631a      	str	r2, [r3, #48]	; 0x30
 8001b02:	46c0      	nop			; (mov r8, r8)
 8001b04:	46bd      	mov	sp, r7
 8001b06:	b002      	add	sp, #8
 8001b08:	bd80      	pop	{r7, pc}
 8001b0a:	46c0      	nop			; (mov r8, r8)
 8001b0c:	40021000 	.word	0x40021000

08001b10 <LL_I2C_Enable>:
 8001b10:	b580      	push	{r7, lr}
 8001b12:	b082      	sub	sp, #8
 8001b14:	af00      	add	r7, sp, #0
 8001b16:	6078      	str	r0, [r7, #4]
 8001b18:	687b      	ldr	r3, [r7, #4]
 8001b1a:	681b      	ldr	r3, [r3, #0]
 8001b1c:	2201      	movs	r2, #1
 8001b1e:	431a      	orrs	r2, r3
 8001b20:	687b      	ldr	r3, [r7, #4]
 8001b22:	601a      	str	r2, [r3, #0]
 8001b24:	46c0      	nop			; (mov r8, r8)
 8001b26:	46bd      	mov	sp, r7
 8001b28:	b002      	add	sp, #8
 8001b2a:	bd80      	pop	{r7, pc}

08001b2c <LL_I2C_Disable>:
 8001b2c:	b580      	push	{r7, lr}
 8001b2e:	b082      	sub	sp, #8
 8001b30:	af00      	add	r7, sp, #0
 8001b32:	6078      	str	r0, [r7, #4]
 8001b34:	687b      	ldr	r3, [r7, #4]
 8001b36:	681b      	ldr	r3, [r3, #0]
 8001b38:	2201      	movs	r2, #1
 8001b3a:	4393      	bics	r3, r2
 8001b3c:	001a      	movs	r2, r3
 8001b3e:	687b      	ldr	r3, [r7, #4]
 8001b40:	601a      	str	r2, [r3, #0]
 8001b42:	46c0      	nop			; (mov r8, r8)
 8001b44:	46bd      	mov	sp, r7
 8001b46:	b002      	add	sp, #8
 8001b48:	bd80      	pop	{r7, pc}
	...

08001b4c <LL_I2C_SetDigitalFilter>:
 8001b4c:	b580      	push	{r7, lr}
 8001b4e:	b082      	sub	sp, #8
 8001b50:	af00      	add	r7, sp, #0
 8001b52:	6078      	str	r0, [r7, #4]
 8001b54:	6039      	str	r1, [r7, #0]
 8001b56:	687b      	ldr	r3, [r7, #4]
 8001b58:	681b      	ldr	r3, [r3, #0]
 8001b5a:	4a05      	ldr	r2, [pc, #20]	; (8001b70 <LL_I2C_SetDigitalFilter+0x24>)
 8001b5c:	401a      	ands	r2, r3
 8001b5e:	683b      	ldr	r3, [r7, #0]
 8001b60:	021b      	lsls	r3, r3, #8
 8001b62:	431a      	orrs	r2, r3
 8001b64:	687b      	ldr	r3, [r7, #4]
 8001b66:	601a      	str	r2, [r3, #0]
 8001b68:	46c0      	nop			; (mov r8, r8)
 8001b6a:	46bd      	mov	sp, r7
 8001b6c:	b002      	add	sp, #8
 8001b6e:	bd80      	pop	{r7, pc}
 8001b70:	fffff0ff 	.word	0xfffff0ff

08001b74 <LL_I2C_DisableAnalogFilter>:
 8001b74:	b580      	push	{r7, lr}
 8001b76:	b082      	sub	sp, #8
 8001b78:	af00      	add	r7, sp, #0
 8001b7a:	6078      	str	r0, [r7, #4]
 8001b7c:	687b      	ldr	r3, [r7, #4]
 8001b7e:	681b      	ldr	r3, [r3, #0]
 8001b80:	2280      	movs	r2, #128	; 0x80
 8001b82:	0152      	lsls	r2, r2, #5
 8001b84:	431a      	orrs	r2, r3
 8001b86:	687b      	ldr	r3, [r7, #4]
 8001b88:	601a      	str	r2, [r3, #0]
 8001b8a:	46c0      	nop			; (mov r8, r8)
 8001b8c:	46bd      	mov	sp, r7
 8001b8e:	b002      	add	sp, #8
 8001b90:	bd80      	pop	{r7, pc}

08001b92 <LL_I2C_DisableClockStretching>:
 8001b92:	b580      	push	{r7, lr}
 8001b94:	b082      	sub	sp, #8
 8001b96:	af00      	add	r7, sp, #0
 8001b98:	6078      	str	r0, [r7, #4]
 8001b9a:	687b      	ldr	r3, [r7, #4]
 8001b9c:	681b      	ldr	r3, [r3, #0]
 8001b9e:	2280      	movs	r2, #128	; 0x80
 8001ba0:	0292      	lsls	r2, r2, #10
 8001ba2:	431a      	orrs	r2, r3
 8001ba4:	687b      	ldr	r3, [r7, #4]
 8001ba6:	601a      	str	r2, [r3, #0]
 8001ba8:	46c0      	nop			; (mov r8, r8)
 8001baa:	46bd      	mov	sp, r7
 8001bac:	b002      	add	sp, #8
 8001bae:	bd80      	pop	{r7, pc}

08001bb0 <LL_I2C_SetMasterAddressingMode>:
 8001bb0:	b580      	push	{r7, lr}
 8001bb2:	b082      	sub	sp, #8
 8001bb4:	af00      	add	r7, sp, #0
 8001bb6:	6078      	str	r0, [r7, #4]
 8001bb8:	6039      	str	r1, [r7, #0]
 8001bba:	687b      	ldr	r3, [r7, #4]
 8001bbc:	685b      	ldr	r3, [r3, #4]
 8001bbe:	4a05      	ldr	r2, [pc, #20]	; (8001bd4 <LL_I2C_SetMasterAddressingMode+0x24>)
 8001bc0:	401a      	ands	r2, r3
 8001bc2:	683b      	ldr	r3, [r7, #0]
 8001bc4:	431a      	orrs	r2, r3
 8001bc6:	687b      	ldr	r3, [r7, #4]
 8001bc8:	605a      	str	r2, [r3, #4]
 8001bca:	46c0      	nop			; (mov r8, r8)
 8001bcc:	46bd      	mov	sp, r7
 8001bce:	b002      	add	sp, #8
 8001bd0:	bd80      	pop	{r7, pc}
 8001bd2:	46c0      	nop			; (mov r8, r8)
 8001bd4:	fffff7ff 	.word	0xfffff7ff

08001bd8 <LL_I2C_SetTiming>:
 8001bd8:	b580      	push	{r7, lr}
 8001bda:	b082      	sub	sp, #8
 8001bdc:	af00      	add	r7, sp, #0
 8001bde:	6078      	str	r0, [r7, #4]
 8001be0:	6039      	str	r1, [r7, #0]
 8001be2:	687b      	ldr	r3, [r7, #4]
 8001be4:	683a      	ldr	r2, [r7, #0]
 8001be6:	611a      	str	r2, [r3, #16]
 8001be8:	46c0      	nop			; (mov r8, r8)
 8001bea:	46bd      	mov	sp, r7
 8001bec:	b002      	add	sp, #8
 8001bee:	bd80      	pop	{r7, pc}

08001bf0 <LL_I2C_SetMode>:
 8001bf0:	b580      	push	{r7, lr}
 8001bf2:	b082      	sub	sp, #8
 8001bf4:	af00      	add	r7, sp, #0
 8001bf6:	6078      	str	r0, [r7, #4]
 8001bf8:	6039      	str	r1, [r7, #0]
 8001bfa:	687b      	ldr	r3, [r7, #4]
 8001bfc:	681b      	ldr	r3, [r3, #0]
 8001bfe:	4a05      	ldr	r2, [pc, #20]	; (8001c14 <LL_I2C_SetMode+0x24>)
 8001c00:	401a      	ands	r2, r3
 8001c02:	683b      	ldr	r3, [r7, #0]
 8001c04:	431a      	orrs	r2, r3
 8001c06:	687b      	ldr	r3, [r7, #4]
 8001c08:	601a      	str	r2, [r3, #0]
 8001c0a:	46c0      	nop			; (mov r8, r8)
 8001c0c:	46bd      	mov	sp, r7
 8001c0e:	b002      	add	sp, #8
 8001c10:	bd80      	pop	{r7, pc}
 8001c12:	46c0      	nop			; (mov r8, r8)
 8001c14:	ffcfffff 	.word	0xffcfffff

08001c18 <LL_I2C_IsActiveFlag_TXIS>:
 8001c18:	b580      	push	{r7, lr}
 8001c1a:	b082      	sub	sp, #8
 8001c1c:	af00      	add	r7, sp, #0
 8001c1e:	6078      	str	r0, [r7, #4]
 8001c20:	687b      	ldr	r3, [r7, #4]
 8001c22:	699b      	ldr	r3, [r3, #24]
 8001c24:	2202      	movs	r2, #2
 8001c26:	4013      	ands	r3, r2
 8001c28:	3b02      	subs	r3, #2
 8001c2a:	425a      	negs	r2, r3
 8001c2c:	4153      	adcs	r3, r2
 8001c2e:	b2db      	uxtb	r3, r3
 8001c30:	0018      	movs	r0, r3
 8001c32:	46bd      	mov	sp, r7
 8001c34:	b002      	add	sp, #8
 8001c36:	bd80      	pop	{r7, pc}

08001c38 <LL_I2C_IsActiveFlag_TC>:
 8001c38:	b580      	push	{r7, lr}
 8001c3a:	b082      	sub	sp, #8
 8001c3c:	af00      	add	r7, sp, #0
 8001c3e:	6078      	str	r0, [r7, #4]
 8001c40:	687b      	ldr	r3, [r7, #4]
 8001c42:	699b      	ldr	r3, [r3, #24]
 8001c44:	2240      	movs	r2, #64	; 0x40
 8001c46:	4013      	ands	r3, r2
 8001c48:	3b40      	subs	r3, #64	; 0x40
 8001c4a:	425a      	negs	r2, r3
 8001c4c:	4153      	adcs	r3, r2
 8001c4e:	b2db      	uxtb	r3, r3
 8001c50:	0018      	movs	r0, r3
 8001c52:	46bd      	mov	sp, r7
 8001c54:	b002      	add	sp, #8
 8001c56:	bd80      	pop	{r7, pc}

08001c58 <LL_I2C_HandleTransfer>:
 8001c58:	b580      	push	{r7, lr}
 8001c5a:	b084      	sub	sp, #16
 8001c5c:	af00      	add	r7, sp, #0
 8001c5e:	60f8      	str	r0, [r7, #12]
 8001c60:	60b9      	str	r1, [r7, #8]
 8001c62:	607a      	str	r2, [r7, #4]
 8001c64:	603b      	str	r3, [r7, #0]
 8001c66:	68fb      	ldr	r3, [r7, #12]
 8001c68:	685b      	ldr	r3, [r3, #4]
 8001c6a:	4a09      	ldr	r2, [pc, #36]	; (8001c90 <LL_I2C_HandleTransfer+0x38>)
 8001c6c:	401a      	ands	r2, r3
 8001c6e:	68b9      	ldr	r1, [r7, #8]
 8001c70:	687b      	ldr	r3, [r7, #4]
 8001c72:	4319      	orrs	r1, r3
 8001c74:	683b      	ldr	r3, [r7, #0]
 8001c76:	041b      	lsls	r3, r3, #16
 8001c78:	4319      	orrs	r1, r3
 8001c7a:	69bb      	ldr	r3, [r7, #24]
 8001c7c:	4319      	orrs	r1, r3
 8001c7e:	69fb      	ldr	r3, [r7, #28]
 8001c80:	430b      	orrs	r3, r1
 8001c82:	431a      	orrs	r2, r3
 8001c84:	68fb      	ldr	r3, [r7, #12]
 8001c86:	605a      	str	r2, [r3, #4]
 8001c88:	46c0      	nop			; (mov r8, r8)
 8001c8a:	46bd      	mov	sp, r7
 8001c8c:	b004      	add	sp, #16
 8001c8e:	bd80      	pop	{r7, pc}
 8001c90:	fc008000 	.word	0xfc008000

08001c94 <LL_I2C_TransmitData8>:
 8001c94:	b580      	push	{r7, lr}
 8001c96:	b082      	sub	sp, #8
 8001c98:	af00      	add	r7, sp, #0
 8001c9a:	6078      	str	r0, [r7, #4]
 8001c9c:	000a      	movs	r2, r1
 8001c9e:	1cfb      	adds	r3, r7, #3
 8001ca0:	701a      	strb	r2, [r3, #0]
 8001ca2:	1cfb      	adds	r3, r7, #3
 8001ca4:	781a      	ldrb	r2, [r3, #0]
 8001ca6:	687b      	ldr	r3, [r7, #4]
 8001ca8:	629a      	str	r2, [r3, #40]	; 0x28
 8001caa:	46c0      	nop			; (mov r8, r8)
 8001cac:	46bd      	mov	sp, r7
 8001cae:	b002      	add	sp, #8
 8001cb0:	bd80      	pop	{r7, pc}
	...

08001cb4 <oled_hw_config>:
 8001cb4:	b580      	push	{r7, lr}
 8001cb6:	af00      	add	r7, sp, #0
 8001cb8:	2380      	movs	r3, #128	; 0x80
 8001cba:	02db      	lsls	r3, r3, #11
 8001cbc:	0018      	movs	r0, r3
 8001cbe:	f7ff fe73 	bl	80019a8 <LL_AHB1_GRP1_EnableClock>
 8001cc2:	4b30      	ldr	r3, [pc, #192]	; (8001d84 <oled_hw_config+0xd0>)
 8001cc4:	2202      	movs	r2, #2
 8001cc6:	2140      	movs	r1, #64	; 0x40
 8001cc8:	0018      	movs	r0, r3
 8001cca:	f7ff fe99 	bl	8001a00 <LL_GPIO_SetPinMode>
 8001cce:	4b2d      	ldr	r3, [pc, #180]	; (8001d84 <oled_hw_config+0xd0>)
 8001cd0:	2201      	movs	r2, #1
 8001cd2:	2140      	movs	r1, #64	; 0x40
 8001cd4:	0018      	movs	r0, r3
 8001cd6:	f7ff feb0 	bl	8001a3a <LL_GPIO_SetPinOutputType>
 8001cda:	4b2a      	ldr	r3, [pc, #168]	; (8001d84 <oled_hw_config+0xd0>)
 8001cdc:	2201      	movs	r2, #1
 8001cde:	2140      	movs	r1, #64	; 0x40
 8001ce0:	0018      	movs	r0, r3
 8001ce2:	f7ff fedc 	bl	8001a9e <LL_GPIO_SetAFPin_0_7>
 8001ce6:	4b27      	ldr	r3, [pc, #156]	; (8001d84 <oled_hw_config+0xd0>)
 8001ce8:	2203      	movs	r2, #3
 8001cea:	2140      	movs	r1, #64	; 0x40
 8001cec:	0018      	movs	r0, r3
 8001cee:	f7ff feb9 	bl	8001a64 <LL_GPIO_SetPinSpeed>
 8001cf2:	4b24      	ldr	r3, [pc, #144]	; (8001d84 <oled_hw_config+0xd0>)
 8001cf4:	2202      	movs	r2, #2
 8001cf6:	2180      	movs	r1, #128	; 0x80
 8001cf8:	0018      	movs	r0, r3
 8001cfa:	f7ff fe81 	bl	8001a00 <LL_GPIO_SetPinMode>
 8001cfe:	4b21      	ldr	r3, [pc, #132]	; (8001d84 <oled_hw_config+0xd0>)
 8001d00:	2201      	movs	r2, #1
 8001d02:	2180      	movs	r1, #128	; 0x80
 8001d04:	0018      	movs	r0, r3
 8001d06:	f7ff fe98 	bl	8001a3a <LL_GPIO_SetPinOutputType>
 8001d0a:	4b1e      	ldr	r3, [pc, #120]	; (8001d84 <oled_hw_config+0xd0>)
 8001d0c:	2201      	movs	r2, #1
 8001d0e:	2180      	movs	r1, #128	; 0x80
 8001d10:	0018      	movs	r0, r3
 8001d12:	f7ff fec4 	bl	8001a9e <LL_GPIO_SetAFPin_0_7>
 8001d16:	4b1b      	ldr	r3, [pc, #108]	; (8001d84 <oled_hw_config+0xd0>)
 8001d18:	2203      	movs	r2, #3
 8001d1a:	2180      	movs	r1, #128	; 0x80
 8001d1c:	0018      	movs	r0, r3
 8001d1e:	f7ff fea1 	bl	8001a64 <LL_GPIO_SetPinSpeed>
 8001d22:	2010      	movs	r0, #16
 8001d24:	f7ff fee0 	bl	8001ae8 <LL_RCC_SetI2CClockSource>
 8001d28:	4b17      	ldr	r3, [pc, #92]	; (8001d88 <oled_hw_config+0xd4>)
 8001d2a:	0018      	movs	r0, r3
 8001d2c:	f7ff fefe 	bl	8001b2c <LL_I2C_Disable>
 8001d30:	2380      	movs	r3, #128	; 0x80
 8001d32:	039b      	lsls	r3, r3, #14
 8001d34:	0018      	movs	r0, r3
 8001d36:	f7ff fe4d 	bl	80019d4 <LL_APB1_GRP1_EnableClock>
 8001d3a:	4b13      	ldr	r3, [pc, #76]	; (8001d88 <oled_hw_config+0xd4>)
 8001d3c:	0018      	movs	r0, r3
 8001d3e:	f7ff ff19 	bl	8001b74 <LL_I2C_DisableAnalogFilter>
 8001d42:	4b11      	ldr	r3, [pc, #68]	; (8001d88 <oled_hw_config+0xd4>)
 8001d44:	2101      	movs	r1, #1
 8001d46:	0018      	movs	r0, r3
 8001d48:	f7ff ff00 	bl	8001b4c <LL_I2C_SetDigitalFilter>
 8001d4c:	4a0f      	ldr	r2, [pc, #60]	; (8001d8c <oled_hw_config+0xd8>)
 8001d4e:	4b0e      	ldr	r3, [pc, #56]	; (8001d88 <oled_hw_config+0xd4>)
 8001d50:	0011      	movs	r1, r2
 8001d52:	0018      	movs	r0, r3
 8001d54:	f7ff ff40 	bl	8001bd8 <LL_I2C_SetTiming>
 8001d58:	4b0b      	ldr	r3, [pc, #44]	; (8001d88 <oled_hw_config+0xd4>)
 8001d5a:	0018      	movs	r0, r3
 8001d5c:	f7ff ff19 	bl	8001b92 <LL_I2C_DisableClockStretching>
 8001d60:	4b09      	ldr	r3, [pc, #36]	; (8001d88 <oled_hw_config+0xd4>)
 8001d62:	2100      	movs	r1, #0
 8001d64:	0018      	movs	r0, r3
 8001d66:	f7ff ff23 	bl	8001bb0 <LL_I2C_SetMasterAddressingMode>
 8001d6a:	4b07      	ldr	r3, [pc, #28]	; (8001d88 <oled_hw_config+0xd4>)
 8001d6c:	2100      	movs	r1, #0
 8001d6e:	0018      	movs	r0, r3
 8001d70:	f7ff ff3e 	bl	8001bf0 <LL_I2C_SetMode>
 8001d74:	4b04      	ldr	r3, [pc, #16]	; (8001d88 <oled_hw_config+0xd4>)
 8001d76:	0018      	movs	r0, r3
 8001d78:	f7ff feca 	bl	8001b10 <LL_I2C_Enable>
 8001d7c:	46c0      	nop			; (mov r8, r8)
 8001d7e:	46bd      	mov	sp, r7
 8001d80:	bd80      	pop	{r7, pc}
 8001d82:	46c0      	nop			; (mov r8, r8)
 8001d84:	48000400 	.word	0x48000400
 8001d88:	40005400 	.word	0x40005400
 8001d8c:	50330309 	.word	0x50330309

08001d90 <oled_cmd_send>:
 8001d90:	b580      	push	{r7, lr}
 8001d92:	b084      	sub	sp, #16
 8001d94:	af02      	add	r7, sp, #8
 8001d96:	0002      	movs	r2, r0
 8001d98:	1dfb      	adds	r3, r7, #7
 8001d9a:	701a      	strb	r2, [r3, #0]
 8001d9c:	4818      	ldr	r0, [pc, #96]	; (8001e00 <oled_cmd_send+0x70>)
 8001d9e:	2380      	movs	r3, #128	; 0x80
 8001da0:	019b      	lsls	r3, r3, #6
 8001da2:	9301      	str	r3, [sp, #4]
 8001da4:	2380      	movs	r3, #128	; 0x80
 8001da6:	049b      	lsls	r3, r3, #18
 8001da8:	9300      	str	r3, [sp, #0]
 8001daa:	2302      	movs	r3, #2
 8001dac:	2200      	movs	r2, #0
 8001dae:	2178      	movs	r1, #120	; 0x78
 8001db0:	f7ff ff52 	bl	8001c58 <LL_I2C_HandleTransfer>
 8001db4:	46c0      	nop			; (mov r8, r8)
 8001db6:	4b12      	ldr	r3, [pc, #72]	; (8001e00 <oled_cmd_send+0x70>)
 8001db8:	0018      	movs	r0, r3
 8001dba:	f7ff ff2d 	bl	8001c18 <LL_I2C_IsActiveFlag_TXIS>
 8001dbe:	1e03      	subs	r3, r0, #0
 8001dc0:	d0f9      	beq.n	8001db6 <oled_cmd_send+0x26>
 8001dc2:	4b0f      	ldr	r3, [pc, #60]	; (8001e00 <oled_cmd_send+0x70>)
 8001dc4:	2100      	movs	r1, #0
 8001dc6:	0018      	movs	r0, r3
 8001dc8:	f7ff ff64 	bl	8001c94 <LL_I2C_TransmitData8>
 8001dcc:	46c0      	nop			; (mov r8, r8)
 8001dce:	4b0c      	ldr	r3, [pc, #48]	; (8001e00 <oled_cmd_send+0x70>)
 8001dd0:	0018      	movs	r0, r3
 8001dd2:	f7ff ff21 	bl	8001c18 <LL_I2C_IsActiveFlag_TXIS>
 8001dd6:	1e03      	subs	r3, r0, #0
 8001dd8:	d0f9      	beq.n	8001dce <oled_cmd_send+0x3e>
 8001dda:	1dfb      	adds	r3, r7, #7
 8001ddc:	781b      	ldrb	r3, [r3, #0]
 8001dde:	4a08      	ldr	r2, [pc, #32]	; (8001e00 <oled_cmd_send+0x70>)
 8001de0:	0019      	movs	r1, r3
 8001de2:	0010      	movs	r0, r2
 8001de4:	f7ff ff56 	bl	8001c94 <LL_I2C_TransmitData8>
 8001de8:	46c0      	nop			; (mov r8, r8)
 8001dea:	4b05      	ldr	r3, [pc, #20]	; (8001e00 <oled_cmd_send+0x70>)
 8001dec:	0018      	movs	r0, r3
 8001dee:	f7ff ff23 	bl	8001c38 <LL_I2C_IsActiveFlag_TC>
 8001df2:	1e03      	subs	r3, r0, #0
 8001df4:	d1f9      	bne.n	8001dea <oled_cmd_send+0x5a>
 8001df6:	2300      	movs	r3, #0
 8001df8:	0018      	movs	r0, r3
 8001dfa:	46bd      	mov	sp, r7
 8001dfc:	b002      	add	sp, #8
 8001dfe:	bd80      	pop	{r7, pc}
 8001e00:	40005400 	.word	0x40005400

08001e04 <oled_data_send>:
 8001e04:	b590      	push	{r4, r7, lr}
 8001e06:	b087      	sub	sp, #28
 8001e08:	af02      	add	r7, sp, #8
 8001e0a:	6078      	str	r0, [r7, #4]
 8001e0c:	000a      	movs	r2, r1
 8001e0e:	1cfb      	adds	r3, r7, #3
 8001e10:	701a      	strb	r2, [r3, #0]
 8001e12:	1cfb      	adds	r3, r7, #3
 8001e14:	781b      	ldrb	r3, [r3, #0]
 8001e16:	3301      	adds	r3, #1
 8001e18:	001a      	movs	r2, r3
 8001e1a:	4823      	ldr	r0, [pc, #140]	; (8001ea8 <oled_data_send+0xa4>)
 8001e1c:	2380      	movs	r3, #128	; 0x80
 8001e1e:	019b      	lsls	r3, r3, #6
 8001e20:	9301      	str	r3, [sp, #4]
 8001e22:	2380      	movs	r3, #128	; 0x80
 8001e24:	049b      	lsls	r3, r3, #18
 8001e26:	9300      	str	r3, [sp, #0]
 8001e28:	0013      	movs	r3, r2
 8001e2a:	2200      	movs	r2, #0
 8001e2c:	2178      	movs	r1, #120	; 0x78
 8001e2e:	f7ff ff13 	bl	8001c58 <LL_I2C_HandleTransfer>
 8001e32:	46c0      	nop			; (mov r8, r8)
 8001e34:	4b1c      	ldr	r3, [pc, #112]	; (8001ea8 <oled_data_send+0xa4>)
 8001e36:	0018      	movs	r0, r3
 8001e38:	f7ff feee 	bl	8001c18 <LL_I2C_IsActiveFlag_TXIS>
 8001e3c:	1e03      	subs	r3, r0, #0
 8001e3e:	d0f9      	beq.n	8001e34 <oled_data_send+0x30>
 8001e40:	4b19      	ldr	r3, [pc, #100]	; (8001ea8 <oled_data_send+0xa4>)
 8001e42:	2140      	movs	r1, #64	; 0x40
 8001e44:	0018      	movs	r0, r3
 8001e46:	f7ff ff25 	bl	8001c94 <LL_I2C_TransmitData8>
 8001e4a:	230f      	movs	r3, #15
 8001e4c:	18fb      	adds	r3, r7, r3
 8001e4e:	2200      	movs	r2, #0
 8001e50:	701a      	strb	r2, [r3, #0]
 8001e52:	e016      	b.n	8001e82 <oled_data_send+0x7e>
 8001e54:	46c0      	nop			; (mov r8, r8)
 8001e56:	4b14      	ldr	r3, [pc, #80]	; (8001ea8 <oled_data_send+0xa4>)
 8001e58:	0018      	movs	r0, r3
 8001e5a:	f7ff fedd 	bl	8001c18 <LL_I2C_IsActiveFlag_TXIS>
 8001e5e:	1e03      	subs	r3, r0, #0
 8001e60:	d0f9      	beq.n	8001e56 <oled_data_send+0x52>
 8001e62:	240f      	movs	r4, #15
 8001e64:	193b      	adds	r3, r7, r4
 8001e66:	781b      	ldrb	r3, [r3, #0]
 8001e68:	687a      	ldr	r2, [r7, #4]
 8001e6a:	18d3      	adds	r3, r2, r3
 8001e6c:	781b      	ldrb	r3, [r3, #0]
 8001e6e:	4a0e      	ldr	r2, [pc, #56]	; (8001ea8 <oled_data_send+0xa4>)
 8001e70:	0019      	movs	r1, r3
 8001e72:	0010      	movs	r0, r2
 8001e74:	f7ff ff0e 	bl	8001c94 <LL_I2C_TransmitData8>
 8001e78:	193b      	adds	r3, r7, r4
 8001e7a:	781a      	ldrb	r2, [r3, #0]
 8001e7c:	193b      	adds	r3, r7, r4
 8001e7e:	3201      	adds	r2, #1
 8001e80:	701a      	strb	r2, [r3, #0]
 8001e82:	230f      	movs	r3, #15
 8001e84:	18fa      	adds	r2, r7, r3
 8001e86:	1cfb      	adds	r3, r7, #3
 8001e88:	7812      	ldrb	r2, [r2, #0]
 8001e8a:	781b      	ldrb	r3, [r3, #0]
 8001e8c:	429a      	cmp	r2, r3
 8001e8e:	d3e1      	bcc.n	8001e54 <oled_data_send+0x50>
 8001e90:	46c0      	nop			; (mov r8, r8)
 8001e92:	4b05      	ldr	r3, [pc, #20]	; (8001ea8 <oled_data_send+0xa4>)
 8001e94:	0018      	movs	r0, r3
 8001e96:	f7ff fecf 	bl	8001c38 <LL_I2C_IsActiveFlag_TC>
 8001e9a:	1e03      	subs	r3, r0, #0
 8001e9c:	d1f9      	bne.n	8001e92 <oled_data_send+0x8e>
 8001e9e:	2300      	movs	r3, #0
 8001ea0:	0018      	movs	r0, r3
 8001ea2:	46bd      	mov	sp, r7
 8001ea4:	b005      	add	sp, #20
 8001ea6:	bd90      	pop	{r4, r7, pc}
 8001ea8:	40005400 	.word	0x40005400

08001eac <oled_clr>:
 8001eac:	b580      	push	{r7, lr}
 8001eae:	b082      	sub	sp, #8
 8001eb0:	af00      	add	r7, sp, #0
 8001eb2:	0002      	movs	r2, r0
 8001eb4:	1dfb      	adds	r3, r7, #7
 8001eb6:	701a      	strb	r2, [r3, #0]
 8001eb8:	1dfb      	adds	r3, r7, #7
 8001eba:	7819      	ldrb	r1, [r3, #0]
 8001ebc:	2380      	movs	r3, #128	; 0x80
 8001ebe:	00da      	lsls	r2, r3, #3
 8001ec0:	4b03      	ldr	r3, [pc, #12]	; (8001ed0 <oled_clr+0x24>)
 8001ec2:	0018      	movs	r0, r3
 8001ec4:	f000 f9e4 	bl	8002290 <memset>
 8001ec8:	46c0      	nop			; (mov r8, r8)
 8001eca:	46bd      	mov	sp, r7
 8001ecc:	b002      	add	sp, #8
 8001ece:	bd80      	pop	{r7, pc}
 8001ed0:	20000054 	.word	0x20000054

08001ed4 <oled_update>:
 8001ed4:	b580      	push	{r7, lr}
 8001ed6:	b082      	sub	sp, #8
 8001ed8:	af00      	add	r7, sp, #0
 8001eda:	1dfb      	adds	r3, r7, #7
 8001edc:	2200      	movs	r2, #0
 8001ede:	701a      	strb	r2, [r3, #0]
 8001ee0:	e01a      	b.n	8001f18 <oled_update+0x44>
 8001ee2:	1dfb      	adds	r3, r7, #7
 8001ee4:	781b      	ldrb	r3, [r3, #0]
 8001ee6:	3b50      	subs	r3, #80	; 0x50
 8001ee8:	b2db      	uxtb	r3, r3
 8001eea:	0018      	movs	r0, r3
 8001eec:	f7ff ff50 	bl	8001d90 <oled_cmd_send>
 8001ef0:	2000      	movs	r0, #0
 8001ef2:	f7ff ff4d 	bl	8001d90 <oled_cmd_send>
 8001ef6:	2010      	movs	r0, #16
 8001ef8:	f7ff ff4a 	bl	8001d90 <oled_cmd_send>
 8001efc:	1dfb      	adds	r3, r7, #7
 8001efe:	781b      	ldrb	r3, [r3, #0]
 8001f00:	01da      	lsls	r2, r3, #7
 8001f02:	4b09      	ldr	r3, [pc, #36]	; (8001f28 <oled_update+0x54>)
 8001f04:	18d3      	adds	r3, r2, r3
 8001f06:	2180      	movs	r1, #128	; 0x80
 8001f08:	0018      	movs	r0, r3
 8001f0a:	f7ff ff7b 	bl	8001e04 <oled_data_send>
 8001f0e:	1dfb      	adds	r3, r7, #7
 8001f10:	781a      	ldrb	r2, [r3, #0]
 8001f12:	1dfb      	adds	r3, r7, #7
 8001f14:	3201      	adds	r2, #1
 8001f16:	701a      	strb	r2, [r3, #0]
 8001f18:	1dfb      	adds	r3, r7, #7
 8001f1a:	781b      	ldrb	r3, [r3, #0]
 8001f1c:	2b07      	cmp	r3, #7
 8001f1e:	d9e0      	bls.n	8001ee2 <oled_update+0xe>
 8001f20:	46c0      	nop			; (mov r8, r8)
 8001f22:	46bd      	mov	sp, r7
 8001f24:	b002      	add	sp, #8
 8001f26:	bd80      	pop	{r7, pc}
 8001f28:	20000054 	.word	0x20000054

08001f2c <oled_config>:
 8001f2c:	b580      	push	{r7, lr}
 8001f2e:	b082      	sub	sp, #8
 8001f30:	af00      	add	r7, sp, #0
 8001f32:	4b29      	ldr	r3, [pc, #164]	; (8001fd8 <oled_config+0xac>)
 8001f34:	607b      	str	r3, [r7, #4]
 8001f36:	f7ff febd 	bl	8001cb4 <oled_hw_config>
 8001f3a:	46c0      	nop			; (mov r8, r8)
 8001f3c:	687b      	ldr	r3, [r7, #4]
 8001f3e:	1e5a      	subs	r2, r3, #1
 8001f40:	607a      	str	r2, [r7, #4]
 8001f42:	2b00      	cmp	r3, #0
 8001f44:	d1fa      	bne.n	8001f3c <oled_config+0x10>
 8001f46:	20ae      	movs	r0, #174	; 0xae
 8001f48:	f7ff ff22 	bl	8001d90 <oled_cmd_send>
 8001f4c:	2020      	movs	r0, #32
 8001f4e:	f7ff ff1f 	bl	8001d90 <oled_cmd_send>
 8001f52:	2010      	movs	r0, #16
 8001f54:	f7ff ff1c 	bl	8001d90 <oled_cmd_send>
 8001f58:	20c8      	movs	r0, #200	; 0xc8
 8001f5a:	f7ff ff19 	bl	8001d90 <oled_cmd_send>
 8001f5e:	2040      	movs	r0, #64	; 0x40
 8001f60:	f7ff ff16 	bl	8001d90 <oled_cmd_send>
 8001f64:	2081      	movs	r0, #129	; 0x81
 8001f66:	f7ff ff13 	bl	8001d90 <oled_cmd_send>
 8001f6a:	20ff      	movs	r0, #255	; 0xff
 8001f6c:	f7ff ff10 	bl	8001d90 <oled_cmd_send>
 8001f70:	20a1      	movs	r0, #161	; 0xa1
 8001f72:	f7ff ff0d 	bl	8001d90 <oled_cmd_send>
 8001f76:	20a6      	movs	r0, #166	; 0xa6
 8001f78:	f7ff ff0a 	bl	8001d90 <oled_cmd_send>
 8001f7c:	20a8      	movs	r0, #168	; 0xa8
 8001f7e:	f7ff ff07 	bl	8001d90 <oled_cmd_send>
 8001f82:	203f      	movs	r0, #63	; 0x3f
 8001f84:	f7ff ff04 	bl	8001d90 <oled_cmd_send>
 8001f88:	20a4      	movs	r0, #164	; 0xa4
 8001f8a:	f7ff ff01 	bl	8001d90 <oled_cmd_send>
 8001f8e:	20d3      	movs	r0, #211	; 0xd3
 8001f90:	f7ff fefe 	bl	8001d90 <oled_cmd_send>
 8001f94:	2000      	movs	r0, #0
 8001f96:	f7ff fefb 	bl	8001d90 <oled_cmd_send>
 8001f9a:	20d5      	movs	r0, #213	; 0xd5
 8001f9c:	f7ff fef8 	bl	8001d90 <oled_cmd_send>
 8001fa0:	20f0      	movs	r0, #240	; 0xf0
 8001fa2:	f7ff fef5 	bl	8001d90 <oled_cmd_send>
 8001fa6:	20da      	movs	r0, #218	; 0xda
 8001fa8:	f7ff fef2 	bl	8001d90 <oled_cmd_send>
 8001fac:	2012      	movs	r0, #18
 8001fae:	f7ff feef 	bl	8001d90 <oled_cmd_send>
 8001fb2:	208d      	movs	r0, #141	; 0x8d
 8001fb4:	f7ff feec 	bl	8001d90 <oled_cmd_send>
 8001fb8:	2014      	movs	r0, #20
 8001fba:	f7ff fee9 	bl	8001d90 <oled_cmd_send>
 8001fbe:	20af      	movs	r0, #175	; 0xaf
 8001fc0:	f7ff fee6 	bl	8001d90 <oled_cmd_send>
 8001fc4:	2000      	movs	r0, #0
 8001fc6:	f7ff ff71 	bl	8001eac <oled_clr>
 8001fca:	f7ff ff83 	bl	8001ed4 <oled_update>
 8001fce:	46c0      	nop			; (mov r8, r8)
 8001fd0:	46bd      	mov	sp, r7
 8001fd2:	b002      	add	sp, #8
 8001fd4:	bd80      	pop	{r7, pc}
 8001fd6:	46c0      	nop			; (mov r8, r8)
 8001fd8:	001e8480 	.word	0x001e8480

08001fdc <oled_set_pix>:
 8001fdc:	b590      	push	{r4, r7, lr}
 8001fde:	b083      	sub	sp, #12
 8001fe0:	af00      	add	r7, sp, #0
 8001fe2:	0004      	movs	r4, r0
 8001fe4:	0008      	movs	r0, r1
 8001fe6:	0011      	movs	r1, r2
 8001fe8:	1dfb      	adds	r3, r7, #7
 8001fea:	1c22      	adds	r2, r4, #0
 8001fec:	701a      	strb	r2, [r3, #0]
 8001fee:	1dbb      	adds	r3, r7, #6
 8001ff0:	1c02      	adds	r2, r0, #0
 8001ff2:	701a      	strb	r2, [r3, #0]
 8001ff4:	1d7b      	adds	r3, r7, #5
 8001ff6:	1c0a      	adds	r2, r1, #0
 8001ff8:	701a      	strb	r2, [r3, #0]
 8001ffa:	1dfb      	adds	r3, r7, #7
 8001ffc:	781b      	ldrb	r3, [r3, #0]
 8001ffe:	b25b      	sxtb	r3, r3
 8002000:	2b00      	cmp	r3, #0
 8002002:	db48      	blt.n	8002096 <oled_set_pix+0xba>
 8002004:	1dbb      	adds	r3, r7, #6
 8002006:	781b      	ldrb	r3, [r3, #0]
 8002008:	2b3f      	cmp	r3, #63	; 0x3f
 800200a:	d844      	bhi.n	8002096 <oled_set_pix+0xba>
 800200c:	1d7b      	adds	r3, r7, #5
 800200e:	781b      	ldrb	r3, [r3, #0]
 8002010:	2b00      	cmp	r3, #0
 8002012:	d01e      	beq.n	8002052 <oled_set_pix+0x76>
 8002014:	1dbb      	adds	r3, r7, #6
 8002016:	781b      	ldrb	r3, [r3, #0]
 8002018:	08db      	lsrs	r3, r3, #3
 800201a:	b2d8      	uxtb	r0, r3
 800201c:	0003      	movs	r3, r0
 800201e:	01da      	lsls	r2, r3, #7
 8002020:	1dfb      	adds	r3, r7, #7
 8002022:	781b      	ldrb	r3, [r3, #0]
 8002024:	18d3      	adds	r3, r2, r3
 8002026:	4a1e      	ldr	r2, [pc, #120]	; (80020a0 <oled_set_pix+0xc4>)
 8002028:	5cd3      	ldrb	r3, [r2, r3]
 800202a:	b25a      	sxtb	r2, r3
 800202c:	1dbb      	adds	r3, r7, #6
 800202e:	781b      	ldrb	r3, [r3, #0]
 8002030:	2107      	movs	r1, #7
 8002032:	400b      	ands	r3, r1
 8002034:	2101      	movs	r1, #1
 8002036:	4099      	lsls	r1, r3
 8002038:	000b      	movs	r3, r1
 800203a:	b25b      	sxtb	r3, r3
 800203c:	4313      	orrs	r3, r2
 800203e:	b259      	sxtb	r1, r3
 8002040:	0003      	movs	r3, r0
 8002042:	01da      	lsls	r2, r3, #7
 8002044:	1dfb      	adds	r3, r7, #7
 8002046:	781b      	ldrb	r3, [r3, #0]
 8002048:	18d3      	adds	r3, r2, r3
 800204a:	b2c9      	uxtb	r1, r1
 800204c:	4a14      	ldr	r2, [pc, #80]	; (80020a0 <oled_set_pix+0xc4>)
 800204e:	54d1      	strb	r1, [r2, r3]
 8002050:	e022      	b.n	8002098 <oled_set_pix+0xbc>
 8002052:	1dbb      	adds	r3, r7, #6
 8002054:	781b      	ldrb	r3, [r3, #0]
 8002056:	08db      	lsrs	r3, r3, #3
 8002058:	b2d8      	uxtb	r0, r3
 800205a:	0003      	movs	r3, r0
 800205c:	01da      	lsls	r2, r3, #7
 800205e:	1dfb      	adds	r3, r7, #7
 8002060:	781b      	ldrb	r3, [r3, #0]
 8002062:	18d3      	adds	r3, r2, r3
 8002064:	4a0e      	ldr	r2, [pc, #56]	; (80020a0 <oled_set_pix+0xc4>)
 8002066:	5cd3      	ldrb	r3, [r2, r3]
 8002068:	b25b      	sxtb	r3, r3
 800206a:	1dba      	adds	r2, r7, #6
 800206c:	7812      	ldrb	r2, [r2, #0]
 800206e:	2107      	movs	r1, #7
 8002070:	400a      	ands	r2, r1
 8002072:	2101      	movs	r1, #1
 8002074:	4091      	lsls	r1, r2
 8002076:	000a      	movs	r2, r1
 8002078:	b252      	sxtb	r2, r2
 800207a:	43d2      	mvns	r2, r2
 800207c:	b252      	sxtb	r2, r2
 800207e:	4013      	ands	r3, r2
 8002080:	b259      	sxtb	r1, r3
 8002082:	0003      	movs	r3, r0
 8002084:	01da      	lsls	r2, r3, #7
 8002086:	1dfb      	adds	r3, r7, #7
 8002088:	781b      	ldrb	r3, [r3, #0]
 800208a:	18d3      	adds	r3, r2, r3
 800208c:	b2c9      	uxtb	r1, r1
 800208e:	4a04      	ldr	r2, [pc, #16]	; (80020a0 <oled_set_pix+0xc4>)
 8002090:	54d1      	strb	r1, [r2, r3]
 8002092:	46c0      	nop			; (mov r8, r8)
 8002094:	e000      	b.n	8002098 <oled_set_pix+0xbc>
 8002096:	46c0      	nop			; (mov r8, r8)
 8002098:	46bd      	mov	sp, r7
 800209a:	b003      	add	sp, #12
 800209c:	bd90      	pop	{r4, r7, pc}
 800209e:	46c0      	nop			; (mov r8, r8)
 80020a0:	20000054 	.word	0x20000054

080020a4 <oled_set_cursor>:
 80020a4:	b580      	push	{r7, lr}
 80020a6:	b082      	sub	sp, #8
 80020a8:	af00      	add	r7, sp, #0
 80020aa:	0002      	movs	r2, r0
 80020ac:	1dfb      	adds	r3, r7, #7
 80020ae:	701a      	strb	r2, [r3, #0]
 80020b0:	1dbb      	adds	r3, r7, #6
 80020b2:	1c0a      	adds	r2, r1, #0
 80020b4:	701a      	strb	r2, [r3, #0]
 80020b6:	4b06      	ldr	r3, [pc, #24]	; (80020d0 <oled_set_cursor+0x2c>)
 80020b8:	1dfa      	adds	r2, r7, #7
 80020ba:	7812      	ldrb	r2, [r2, #0]
 80020bc:	701a      	strb	r2, [r3, #0]
 80020be:	4b05      	ldr	r3, [pc, #20]	; (80020d4 <oled_set_cursor+0x30>)
 80020c0:	1dba      	adds	r2, r7, #6
 80020c2:	7812      	ldrb	r2, [r2, #0]
 80020c4:	701a      	strb	r2, [r3, #0]
 80020c6:	46c0      	nop			; (mov r8, r8)
 80020c8:	46bd      	mov	sp, r7
 80020ca:	b002      	add	sp, #8
 80020cc:	bd80      	pop	{r7, pc}
 80020ce:	46c0      	nop			; (mov r8, r8)
 80020d0:	20000454 	.word	0x20000454
 80020d4:	20000455 	.word	0x20000455

080020d8 <oled_putc>:
 80020d8:	b5f0      	push	{r4, r5, r6, r7, lr}
 80020da:	b085      	sub	sp, #20
 80020dc:	af00      	add	r7, sp, #0
 80020de:	0002      	movs	r2, r0
 80020e0:	1dfb      	adds	r3, r7, #7
 80020e2:	701a      	strb	r2, [r3, #0]
 80020e4:	1dfb      	adds	r3, r7, #7
 80020e6:	781b      	ldrb	r3, [r3, #0]
 80020e8:	2b0a      	cmp	r3, #10
 80020ea:	d106      	bne.n	80020fa <oled_putc+0x22>
 80020ec:	4b35      	ldr	r3, [pc, #212]	; (80021c4 <oled_putc+0xec>)
 80020ee:	781b      	ldrb	r3, [r3, #0]
 80020f0:	3301      	adds	r3, #1
 80020f2:	b2da      	uxtb	r2, r3
 80020f4:	4b33      	ldr	r3, [pc, #204]	; (80021c4 <oled_putc+0xec>)
 80020f6:	701a      	strb	r2, [r3, #0]
 80020f8:	e061      	b.n	80021be <oled_putc+0xe6>
 80020fa:	1dfb      	adds	r3, r7, #7
 80020fc:	781b      	ldrb	r3, [r3, #0]
 80020fe:	2b0d      	cmp	r3, #13
 8002100:	d103      	bne.n	800210a <oled_putc+0x32>
 8002102:	4b31      	ldr	r3, [pc, #196]	; (80021c8 <oled_putc+0xf0>)
 8002104:	2200      	movs	r2, #0
 8002106:	701a      	strb	r2, [r3, #0]
 8002108:	e059      	b.n	80021be <oled_putc+0xe6>
 800210a:	230e      	movs	r3, #14
 800210c:	18fb      	adds	r3, r7, r3
 800210e:	2200      	movs	r2, #0
 8002110:	701a      	strb	r2, [r3, #0]
 8002112:	e046      	b.n	80021a2 <oled_putc+0xca>
 8002114:	230f      	movs	r3, #15
 8002116:	18fb      	adds	r3, r7, r3
 8002118:	2200      	movs	r2, #0
 800211a:	701a      	strb	r2, [r3, #0]
 800211c:	e034      	b.n	8002188 <oled_putc+0xb0>
 800211e:	4b2b      	ldr	r3, [pc, #172]	; (80021cc <oled_putc+0xf4>)
 8002120:	689b      	ldr	r3, [r3, #8]
 8002122:	220d      	movs	r2, #13
 8002124:	18bc      	adds	r4, r7, r2
 8002126:	210e      	movs	r1, #14
 8002128:	187a      	adds	r2, r7, r1
 800212a:	7815      	ldrb	r5, [r2, #0]
 800212c:	260f      	movs	r6, #15
 800212e:	19ba      	adds	r2, r7, r6
 8002130:	7811      	ldrb	r1, [r2, #0]
 8002132:	1dfa      	adds	r2, r7, #7
 8002134:	7810      	ldrb	r0, [r2, #0]
 8002136:	002a      	movs	r2, r5
 8002138:	4798      	blx	r3
 800213a:	0003      	movs	r3, r0
 800213c:	7023      	strb	r3, [r4, #0]
 800213e:	4b23      	ldr	r3, [pc, #140]	; (80021cc <oled_putc+0xf4>)
 8002140:	791b      	ldrb	r3, [r3, #4]
 8002142:	3301      	adds	r3, #1
 8002144:	b2db      	uxtb	r3, r3
 8002146:	4a20      	ldr	r2, [pc, #128]	; (80021c8 <oled_putc+0xf0>)
 8002148:	7812      	ldrb	r2, [r2, #0]
 800214a:	4353      	muls	r3, r2
 800214c:	b2da      	uxtb	r2, r3
 800214e:	0034      	movs	r4, r6
 8002150:	193b      	adds	r3, r7, r4
 8002152:	781b      	ldrb	r3, [r3, #0]
 8002154:	18d3      	adds	r3, r2, r3
 8002156:	b2d8      	uxtb	r0, r3
 8002158:	4b1c      	ldr	r3, [pc, #112]	; (80021cc <oled_putc+0xf4>)
 800215a:	795b      	ldrb	r3, [r3, #5]
 800215c:	3302      	adds	r3, #2
 800215e:	b2db      	uxtb	r3, r3
 8002160:	4a18      	ldr	r2, [pc, #96]	; (80021c4 <oled_putc+0xec>)
 8002162:	7812      	ldrb	r2, [r2, #0]
 8002164:	4353      	muls	r3, r2
 8002166:	b2da      	uxtb	r2, r3
 8002168:	210e      	movs	r1, #14
 800216a:	187b      	adds	r3, r7, r1
 800216c:	781b      	ldrb	r3, [r3, #0]
 800216e:	18d3      	adds	r3, r2, r3
 8002170:	b2d9      	uxtb	r1, r3
 8002172:	220d      	movs	r2, #13
 8002174:	18bb      	adds	r3, r7, r2
 8002176:	781b      	ldrb	r3, [r3, #0]
 8002178:	001a      	movs	r2, r3
 800217a:	f7ff ff2f 	bl	8001fdc <oled_set_pix>
 800217e:	193b      	adds	r3, r7, r4
 8002180:	781a      	ldrb	r2, [r3, #0]
 8002182:	193b      	adds	r3, r7, r4
 8002184:	3201      	adds	r2, #1
 8002186:	701a      	strb	r2, [r3, #0]
 8002188:	4b10      	ldr	r3, [pc, #64]	; (80021cc <oled_putc+0xf4>)
 800218a:	791b      	ldrb	r3, [r3, #4]
 800218c:	220f      	movs	r2, #15
 800218e:	18ba      	adds	r2, r7, r2
 8002190:	7812      	ldrb	r2, [r2, #0]
 8002192:	429a      	cmp	r2, r3
 8002194:	d3c3      	bcc.n	800211e <oled_putc+0x46>
 8002196:	210e      	movs	r1, #14
 8002198:	187b      	adds	r3, r7, r1
 800219a:	781a      	ldrb	r2, [r3, #0]
 800219c:	187b      	adds	r3, r7, r1
 800219e:	3201      	adds	r2, #1
 80021a0:	701a      	strb	r2, [r3, #0]
 80021a2:	4b0a      	ldr	r3, [pc, #40]	; (80021cc <oled_putc+0xf4>)
 80021a4:	795b      	ldrb	r3, [r3, #5]
 80021a6:	220e      	movs	r2, #14
 80021a8:	18ba      	adds	r2, r7, r2
 80021aa:	7812      	ldrb	r2, [r2, #0]
 80021ac:	429a      	cmp	r2, r3
 80021ae:	d3b1      	bcc.n	8002114 <oled_putc+0x3c>
 80021b0:	4b05      	ldr	r3, [pc, #20]	; (80021c8 <oled_putc+0xf0>)
 80021b2:	781b      	ldrb	r3, [r3, #0]
 80021b4:	3301      	adds	r3, #1
 80021b6:	b2da      	uxtb	r2, r3
 80021b8:	4b03      	ldr	r3, [pc, #12]	; (80021c8 <oled_putc+0xf0>)
 80021ba:	701a      	strb	r2, [r3, #0]
 80021bc:	46c0      	nop			; (mov r8, r8)
 80021be:	46bd      	mov	sp, r7
 80021c0:	b005      	add	sp, #20
 80021c2:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80021c4:	20000455 	.word	0x20000455
 80021c8:	20000454 	.word	0x20000454
 80021cc:	2000000c 	.word	0x2000000c

080021d0 <get_pix>:
 80021d0:	b590      	push	{r4, r7, lr}
 80021d2:	b083      	sub	sp, #12
 80021d4:	af00      	add	r7, sp, #0
 80021d6:	0004      	movs	r4, r0
 80021d8:	0008      	movs	r0, r1
 80021da:	0011      	movs	r1, r2
 80021dc:	1dfb      	adds	r3, r7, #7
 80021de:	1c22      	adds	r2, r4, #0
 80021e0:	701a      	strb	r2, [r3, #0]
 80021e2:	1dbb      	adds	r3, r7, #6
 80021e4:	1c02      	adds	r2, r0, #0
 80021e6:	701a      	strb	r2, [r3, #0]
 80021e8:	1d7b      	adds	r3, r7, #5
 80021ea:	1c0a      	adds	r2, r1, #0
 80021ec:	701a      	strb	r2, [r3, #0]
 80021ee:	1dfb      	adds	r3, r7, #7
 80021f0:	781a      	ldrb	r2, [r3, #0]
 80021f2:	0013      	movs	r3, r2
 80021f4:	009b      	lsls	r3, r3, #2
 80021f6:	189a      	adds	r2, r3, r2
 80021f8:	1dbb      	adds	r3, r7, #6
 80021fa:	781b      	ldrb	r3, [r3, #0]
 80021fc:	18d3      	adds	r3, r2, r3
 80021fe:	4a08      	ldr	r2, [pc, #32]	; (8002220 <get_pix+0x50>)
 8002200:	5cd3      	ldrb	r3, [r2, r3]
 8002202:	001a      	movs	r2, r3
 8002204:	1d7b      	adds	r3, r7, #5
 8002206:	781b      	ldrb	r3, [r3, #0]
 8002208:	411a      	asrs	r2, r3
 800220a:	0013      	movs	r3, r2
 800220c:	2201      	movs	r2, #1
 800220e:	4013      	ands	r3, r2
 8002210:	1e5a      	subs	r2, r3, #1
 8002212:	4193      	sbcs	r3, r2
 8002214:	b2db      	uxtb	r3, r3
 8002216:	0018      	movs	r0, r3
 8002218:	46bd      	mov	sp, r7
 800221a:	b003      	add	sp, #12
 800221c:	bd90      	pop	{r4, r7, pc}
 800221e:	46c0      	nop			; (mov r8, r8)
 8002220:	080023c4 	.word	0x080023c4

08002224 <NMI_Handler>:
 8002224:	b580      	push	{r7, lr}
 8002226:	af00      	add	r7, sp, #0
 8002228:	46c0      	nop			; (mov r8, r8)
 800222a:	46bd      	mov	sp, r7
 800222c:	bd80      	pop	{r7, pc}

0800222e <HardFault_Handler>:
 800222e:	b580      	push	{r7, lr}
 8002230:	af00      	add	r7, sp, #0
 8002232:	e7fe      	b.n	8002232 <HardFault_Handler+0x4>

08002234 <SVC_Handler>:
 8002234:	b580      	push	{r7, lr}
 8002236:	af00      	add	r7, sp, #0
 8002238:	46c0      	nop			; (mov r8, r8)
 800223a:	46bd      	mov	sp, r7
 800223c:	bd80      	pop	{r7, pc}

0800223e <PendSV_Handler>:
 800223e:	b580      	push	{r7, lr}
 8002240:	af00      	add	r7, sp, #0
 8002242:	46c0      	nop			; (mov r8, r8)
 8002244:	46bd      	mov	sp, r7
 8002246:	bd80      	pop	{r7, pc}

08002248 <__libc_init_array>:
 8002248:	b570      	push	{r4, r5, r6, lr}
 800224a:	2600      	movs	r6, #0
 800224c:	4d0c      	ldr	r5, [pc, #48]	; (8002280 <__libc_init_array+0x38>)
 800224e:	4c0d      	ldr	r4, [pc, #52]	; (8002284 <__libc_init_array+0x3c>)
 8002250:	1b64      	subs	r4, r4, r5
 8002252:	10a4      	asrs	r4, r4, #2
 8002254:	42a6      	cmp	r6, r4
 8002256:	d109      	bne.n	800226c <__libc_init_array+0x24>
 8002258:	2600      	movs	r6, #0
 800225a:	f000 f821 	bl	80022a0 <_init>
 800225e:	4d0a      	ldr	r5, [pc, #40]	; (8002288 <__libc_init_array+0x40>)
 8002260:	4c0a      	ldr	r4, [pc, #40]	; (800228c <__libc_init_array+0x44>)
 8002262:	1b64      	subs	r4, r4, r5
 8002264:	10a4      	asrs	r4, r4, #2
 8002266:	42a6      	cmp	r6, r4
 8002268:	d105      	bne.n	8002276 <__libc_init_array+0x2e>
 800226a:	bd70      	pop	{r4, r5, r6, pc}
 800226c:	00b3      	lsls	r3, r6, #2
 800226e:	58eb      	ldr	r3, [r5, r3]
 8002270:	4798      	blx	r3
 8002272:	3601      	adds	r6, #1
 8002274:	e7ee      	b.n	8002254 <__libc_init_array+0xc>
 8002276:	00b3      	lsls	r3, r6, #2
 8002278:	58eb      	ldr	r3, [r5, r3]
 800227a:	4798      	blx	r3
 800227c:	3601      	adds	r6, #1
 800227e:	e7f2      	b.n	8002266 <__libc_init_array+0x1e>
 8002280:	080028c0 	.word	0x080028c0
 8002284:	080028c0 	.word	0x080028c0
 8002288:	080028c0 	.word	0x080028c0
 800228c:	080028c4 	.word	0x080028c4

08002290 <memset>:
 8002290:	0003      	movs	r3, r0
 8002292:	1812      	adds	r2, r2, r0
 8002294:	4293      	cmp	r3, r2
 8002296:	d100      	bne.n	800229a <memset+0xa>
 8002298:	4770      	bx	lr
 800229a:	7019      	strb	r1, [r3, #0]
 800229c:	3301      	adds	r3, #1
 800229e:	e7f9      	b.n	8002294 <memset+0x4>

080022a0 <_init>:
 80022a0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80022a2:	46c0      	nop			; (mov r8, r8)
 80022a4:	bcf8      	pop	{r3, r4, r5, r6, r7}
 80022a6:	bc08      	pop	{r3}
 80022a8:	469e      	mov	lr, r3
 80022aa:	4770      	bx	lr

080022ac <_fini>:
 80022ac:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80022ae:	46c0      	nop			; (mov r8, r8)
 80022b0:	bcf8      	pop	{r3, r4, r5, r6, r7}
 80022b2:	bc08      	pop	{r3}
 80022b4:	469e      	mov	lr, r3
 80022b6:	4770      	bx	lr
