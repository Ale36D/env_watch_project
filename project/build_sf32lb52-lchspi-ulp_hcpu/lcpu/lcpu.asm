
build_sf32lb52-lchspi-ulp_hcpu\lcpu\lcpu.elf:     file format elf32-littlearm


Disassembly of section .text:

00400000 <__Vectors>:
  400000:	20401a30 	.word	0x20401a30
  400004:	0040027d 	.word	0x0040027d
  400008:	0040035d 	.word	0x0040035d
  40000c:	000008a9 	.word	0x000008a9
  400010:	000008e5 	.word	0x000008e5
  400014:	004002c7 	.word	0x004002c7
  400018:	004002c7 	.word	0x004002c7
  40001c:	004002c7 	.word	0x004002c7
	...
  40002c:	004002c7 	.word	0x004002c7
  400030:	004002c7 	.word	0x004002c7
  400034:	00000000 	.word	0x00000000
  400038:	0000080d 	.word	0x0000080d
  40003c:	00400e9d 	.word	0x00400e9d
  400040:	00400dc9 	.word	0x00400dc9
  400044:	00004fa1 	.word	0x00004fa1
  400048:	004002c7 	.word	0x004002c7
  40004c:	004002c7 	.word	0x004002c7
  400050:	004002c7 	.word	0x004002c7
  400054:	004002c7 	.word	0x004002c7
  400058:	004002c7 	.word	0x004002c7
  40005c:	004002c7 	.word	0x004002c7
  400060:	004002c7 	.word	0x004002c7
  400064:	004002c7 	.word	0x004002c7
  400068:	004002c7 	.word	0x004002c7
  40006c:	00007361 	.word	0x00007361
  400070:	004002c7 	.word	0x004002c7
  400074:	004002c7 	.word	0x004002c7
  400078:	004002c7 	.word	0x004002c7
  40007c:	00005901 	.word	0x00005901
  400080:	004002c7 	.word	0x004002c7
  400084:	004002c7 	.word	0x004002c7
  400088:	00400a69 	.word	0x00400a69
  40008c:	004002c7 	.word	0x004002c7
  400090:	004002c7 	.word	0x004002c7
  400094:	004002c7 	.word	0x004002c7
  400098:	004002c7 	.word	0x004002c7
  40009c:	00400b61 	.word	0x00400b61
  4000a0:	004002c7 	.word	0x004002c7
  4000a4:	004002c7 	.word	0x004002c7
  4000a8:	004002c7 	.word	0x004002c7
  4000ac:	004002c7 	.word	0x004002c7
  4000b0:	004002c7 	.word	0x004002c7
  4000b4:	004002c7 	.word	0x004002c7
  4000b8:	004002c7 	.word	0x004002c7
  4000bc:	004002c7 	.word	0x004002c7
	...

00400100 <deregister_tm_clones>:
  400100:	4803      	ldr	r0, [pc, #12]	@ (400110 <deregister_tm_clones+0x10>)
  400102:	4b04      	ldr	r3, [pc, #16]	@ (400114 <deregister_tm_clones+0x14>)
  400104:	4283      	cmp	r3, r0
  400106:	d002      	beq.n	40010e <deregister_tm_clones+0xe>
  400108:	4b03      	ldr	r3, [pc, #12]	@ (400118 <deregister_tm_clones+0x18>)
  40010a:	b103      	cbz	r3, 40010e <deregister_tm_clones+0xe>
  40010c:	4718      	bx	r3
  40010e:	4770      	bx	lr
  400110:	2040162c 	.word	0x2040162c
  400114:	2040162c 	.word	0x2040162c
  400118:	00000000 	.word	0x00000000

0040011c <register_tm_clones>:
  40011c:	4b06      	ldr	r3, [pc, #24]	@ (400138 <register_tm_clones+0x1c>)
  40011e:	4907      	ldr	r1, [pc, #28]	@ (40013c <register_tm_clones+0x20>)
  400120:	1ac9      	subs	r1, r1, r3
  400122:	1089      	asrs	r1, r1, #2
  400124:	bf48      	it	mi
  400126:	3101      	addmi	r1, #1
  400128:	1049      	asrs	r1, r1, #1
  40012a:	d003      	beq.n	400134 <register_tm_clones+0x18>
  40012c:	4b04      	ldr	r3, [pc, #16]	@ (400140 <register_tm_clones+0x24>)
  40012e:	b10b      	cbz	r3, 400134 <register_tm_clones+0x18>
  400130:	4801      	ldr	r0, [pc, #4]	@ (400138 <register_tm_clones+0x1c>)
  400132:	4718      	bx	r3
  400134:	4770      	bx	lr
  400136:	bf00      	nop
  400138:	2040162c 	.word	0x2040162c
  40013c:	2040162c 	.word	0x2040162c
  400140:	00000000 	.word	0x00000000

00400144 <__do_global_dtors_aux>:
  400144:	b510      	push	{r4, lr}
  400146:	4c06      	ldr	r4, [pc, #24]	@ (400160 <__do_global_dtors_aux+0x1c>)
  400148:	7823      	ldrb	r3, [r4, #0]
  40014a:	b943      	cbnz	r3, 40015e <__do_global_dtors_aux+0x1a>
  40014c:	f7ff ffd8 	bl	400100 <deregister_tm_clones>
  400150:	4b04      	ldr	r3, [pc, #16]	@ (400164 <__do_global_dtors_aux+0x20>)
  400152:	b113      	cbz	r3, 40015a <__do_global_dtors_aux+0x16>
  400154:	4804      	ldr	r0, [pc, #16]	@ (400168 <__do_global_dtors_aux+0x24>)
  400156:	f3af 8000 	nop.w
  40015a:	2301      	movs	r3, #1
  40015c:	7023      	strb	r3, [r4, #0]
  40015e:	bd10      	pop	{r4, pc}
  400160:	20401a30 	.word	0x20401a30
  400164:	00000000 	.word	0x00000000
  400168:	004015d4 	.word	0x004015d4

0040016c <frame_dummy>:
  40016c:	b508      	push	{r3, lr}
  40016e:	4b05      	ldr	r3, [pc, #20]	@ (400184 <frame_dummy+0x18>)
  400170:	b11b      	cbz	r3, 40017a <frame_dummy+0xe>
  400172:	4905      	ldr	r1, [pc, #20]	@ (400188 <frame_dummy+0x1c>)
  400174:	4805      	ldr	r0, [pc, #20]	@ (40018c <frame_dummy+0x20>)
  400176:	f3af 8000 	nop.w
  40017a:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
  40017e:	f7ff bfcd 	b.w	40011c <register_tm_clones>
  400182:	bf00      	nop
  400184:	00000000 	.word	0x00000000
  400188:	20401a34 	.word	0x20401a34
  40018c:	004015d4 	.word	0x004015d4

00400190 <HAL_MspInit>:
  400190:	4770      	bx	lr

00400192 <SystemClock_Config>:
  400192:	4770      	bx	lr

00400194 <rc10k_cal_hook_func>:
  400194:	b537      	push	{r0, r1, r2, r4, r5, lr}
  400196:	f640 32b8 	movw	r2, #3000	@ 0xbb8
  40019a:	4b08      	ldr	r3, [pc, #32]	@ (4001bc <rc10k_cal_hook_func+0x28>)
  40019c:	4c08      	ldr	r4, [pc, #32]	@ (4001c0 <rc10k_cal_hook_func+0x2c>)
  40019e:	6c9d      	ldr	r5, [r3, #72]	@ 0x48
  4001a0:	6823      	ldr	r3, [r4, #0]
  4001a2:	1aeb      	subs	r3, r5, r3
  4001a4:	4293      	cmp	r3, r2
  4001a6:	d906      	bls.n	4001b6 <rc10k_cal_hook_func+0x22>
  4001a8:	f000 f92c 	bl	400404 <HAL_RC_CAL_GetLPCycle_ex>
  4001ac:	a901      	add	r1, sp, #4
  4001ae:	f000 f939 	bl	400424 <HAL_RC_CALget_curr_cycle_on_48M>
  4001b2:	b900      	cbnz	r0, 4001b6 <rc10k_cal_hook_func+0x22>
  4001b4:	6025      	str	r5, [r4, #0]
  4001b6:	b003      	add	sp, #12
  4001b8:	bd30      	pop	{r4, r5, pc}
  4001ba:	bf00      	nop
  4001bc:	40040000 	.word	0x40040000
  4001c0:	20401a4c 	.word	0x20401a4c

004001c4 <rc10k_cal_init>:
  4001c4:	b507      	push	{r0, r1, r2, lr}
  4001c6:	4b0b      	ldr	r3, [pc, #44]	@ (4001f4 <rc10k_cal_init+0x30>)
  4001c8:	f893 30db 	ldrb.w	r3, [r3, #219]	@ 0xdb
  4001cc:	b173      	cbz	r3, 4001ec <rc10k_cal_init+0x28>
  4001ce:	4b0a      	ldr	r3, [pc, #40]	@ (4001f8 <rc10k_cal_init+0x34>)
  4001d0:	480a      	ldr	r0, [pc, #40]	@ (4001fc <rc10k_cal_init+0x38>)
  4001d2:	6c9a      	ldr	r2, [r3, #72]	@ 0x48
  4001d4:	4b0a      	ldr	r3, [pc, #40]	@ (400200 <rc10k_cal_init+0x3c>)
  4001d6:	601a      	str	r2, [r3, #0]
  4001d8:	f455 fd92 	bl	55d00 <rt_thread_idle_sethook>
  4001dc:	2014      	movs	r0, #20
  4001de:	f000 f917 	bl	400410 <HAL_RC_CAL_SetLPCycle_ex>
  4001e2:	f000 f90f 	bl	400404 <HAL_RC_CAL_GetLPCycle_ex>
  4001e6:	a901      	add	r1, sp, #4
  4001e8:	f000 f91c 	bl	400424 <HAL_RC_CALget_curr_cycle_on_48M>
  4001ec:	2000      	movs	r0, #0
  4001ee:	b003      	add	sp, #12
  4001f0:	f85d fb04 	ldr.w	pc, [sp], #4
  4001f4:	2040fd00 	.word	0x2040fd00
  4001f8:	40040000 	.word	0x40040000
  4001fc:	00400195 	.word	0x00400195
  400200:	20401a4c 	.word	0x20401a4c

00400204 <main>:
  400204:	2000      	movs	r0, #0
  400206:	4770      	bx	lr

00400208 <HAL_PreInit>:
  400208:	b508      	push	{r3, lr}
  40020a:	f401 fed1 	bl	1fb0 <HAL_LPAON_EnableXT48>
  40020e:	f04f 4280 	mov.w	r2, #1073741824	@ 0x40000000
  400212:	6913      	ldr	r3, [r2, #16]
  400214:	2101      	movs	r1, #1
  400216:	f023 0303 	bic.w	r3, r3, #3
  40021a:	f043 0301 	orr.w	r3, r3, #1
  40021e:	6113      	str	r3, [r2, #16]
  400220:	6913      	ldr	r3, [r2, #16]
  400222:	2002      	movs	r0, #2
  400224:	f043 0310 	orr.w	r3, r3, #16
  400228:	6113      	str	r3, [r2, #16]
  40022a:	2203      	movs	r2, #3
  40022c:	f402 f88c 	bl	2348 <HAL_RCC_LCPU_SetDiv>
  400230:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
  400234:	f7ff bfac 	b.w	400190 <HAL_MspInit>

00400238 <hw_preinit0>:
  400238:	4770      	bx	lr
	...

0040023c <SystemInit>:
  40023c:	b508      	push	{r3, lr}
  40023e:	4a0b      	ldr	r2, [pc, #44]	@ (40026c <SystemInit+0x30>)
  400240:	4b0b      	ldr	r3, [pc, #44]	@ (400270 <SystemInit+0x34>)
  400242:	609a      	str	r2, [r3, #8]
  400244:	f8d3 2088 	ldr.w	r2, [r3, #136]	@ 0x88
  400248:	f042 023f 	orr.w	r2, r2, #63	@ 0x3f
  40024c:	f8c3 2088 	str.w	r2, [r3, #136]	@ 0x88
  400250:	f7ff fff2 	bl	400238 <hw_preinit0>
  400254:	f450 f9ba 	bl	505cc <mpu_config>
  400258:	f405 fe76 	bl	5f48 <cache_enable>
  40025c:	f000 fcef 	bl	400c3e <SystemPowerOnModeInit>
  400260:	f451 f836 	bl	512d0 <rom_scatterload>
  400264:	4b03      	ldr	r3, [pc, #12]	@ (400274 <SystemInit+0x38>)
  400266:	4a04      	ldr	r2, [pc, #16]	@ (400278 <SystemInit+0x3c>)
  400268:	601a      	str	r2, [r3, #0]
  40026a:	bd08      	pop	{r3, pc}
  40026c:	00400000 	.word	0x00400000
  400270:	e000ed00 	.word	0xe000ed00
  400274:	204015f0 	.word	0x204015f0
  400278:	017d7840 	.word	0x017d7840

0040027c <Reset_Handler>:
  40027c:	f8df d048 	ldr.w	sp, [pc, #72]	@ 4002c8 <BTIM3_IRQHandler+0x2>
  400280:	4812      	ldr	r0, [pc, #72]	@ (4002cc <BTIM3_IRQHandler+0x6>)
  400282:	f380 880a 	msr	MSPLIM, r0
  400286:	f7ff ffd9 	bl	40023c <SystemInit>
  40028a:	4c11      	ldr	r4, [pc, #68]	@ (4002d0 <BTIM3_IRQHandler+0xa>)
  40028c:	4d11      	ldr	r5, [pc, #68]	@ (4002d4 <BTIM3_IRQHandler+0xe>)
  40028e:	42ac      	cmp	r4, r5
  400290:	da09      	bge.n	4002a6 <Reset_Handler+0x2a>
  400292:	6821      	ldr	r1, [r4, #0]
  400294:	6862      	ldr	r2, [r4, #4]
  400296:	68a3      	ldr	r3, [r4, #8]
  400298:	3b04      	subs	r3, #4
  40029a:	bfa2      	ittt	ge
  40029c:	58c8      	ldrge	r0, [r1, r3]
  40029e:	50d0      	strge	r0, [r2, r3]
  4002a0:	e7fa      	bge.n	400298 <Reset_Handler+0x1c>
  4002a2:	340c      	adds	r4, #12
  4002a4:	e7f3      	b.n	40028e <Reset_Handler+0x12>
  4002a6:	4b0c      	ldr	r3, [pc, #48]	@ (4002d8 <BTIM3_IRQHandler+0x12>)
  4002a8:	4c0c      	ldr	r4, [pc, #48]	@ (4002dc <BTIM3_IRQHandler+0x16>)
  4002aa:	42a3      	cmp	r3, r4
  4002ac:	da08      	bge.n	4002c0 <Reset_Handler+0x44>
  4002ae:	6819      	ldr	r1, [r3, #0]
  4002b0:	685a      	ldr	r2, [r3, #4]
  4002b2:	2000      	movs	r0, #0
  4002b4:	3a04      	subs	r2, #4
  4002b6:	bfa4      	itt	ge
  4002b8:	5088      	strge	r0, [r1, r2]
  4002ba:	e7fb      	bge.n	4002b4 <Reset_Handler+0x38>
  4002bc:	3308      	adds	r3, #8
  4002be:	e7f4      	b.n	4002aa <Reset_Handler+0x2e>
  4002c0:	f000 fecc 	bl	40105c <entry>
  4002c4:	e7fe      	b.n	4002c4 <Reset_Handler+0x48>

004002c6 <BTIM3_IRQHandler>:
  4002c6:	e7fe      	b.n	4002c6 <BTIM3_IRQHandler>
  4002c8:	20401a30 	.word	0x20401a30
  4002cc:	20401630 	.word	0x20401630
  4002d0:	004015e8 	.word	0x004015e8
  4002d4:	004015e8 	.word	0x004015e8
  4002d8:	004015e8 	.word	0x004015e8
  4002dc:	004015f0 	.word	0x004015f0

004002e0 <__aeabi_unwind_cpp_pr0>:
  4002e0:	2000      	movs	r0, #0
  4002e2:	4770      	bx	lr

004002e4 <HAL_PostMspInit>:
  4002e4:	4770      	bx	lr

004002e6 <HAL_Init>:
  4002e6:	b508      	push	{r3, lr}
  4002e8:	f7ff ff8e 	bl	400208 <HAL_PreInit>
  4002ec:	f7ff fffa 	bl	4002e4 <HAL_PostMspInit>
  4002f0:	f000 fa69 	bl	4007c6 <HAL_RCC_Init>
  4002f4:	2003      	movs	r0, #3
  4002f6:	f401 fefb 	bl	20f0 <HAL_NVIC_SetPriorityGrouping>
  4002fa:	2000      	movs	r0, #0
  4002fc:	f000 fdcb 	bl	400e96 <HAL_InitTick>
  400300:	3800      	subs	r0, #0
  400302:	bf18      	it	ne
  400304:	2001      	movne	r0, #1
  400306:	bd08      	pop	{r3, pc}

00400308 <HAL_IncTick>:
  400308:	4a02      	ldr	r2, [pc, #8]	@ (400314 <HAL_IncTick+0xc>)
  40030a:	6813      	ldr	r3, [r2, #0]
  40030c:	3301      	adds	r3, #1
  40030e:	6013      	str	r3, [r2, #0]
  400310:	4770      	bx	lr
  400312:	bf00      	nop
  400314:	20401a50 	.word	0x20401a50

00400318 <HAL_Delay_us>:
  400318:	4603      	mov	r3, r0
  40031a:	b570      	push	{r4, r5, r6, lr}
  40031c:	b1b8      	cbz	r0, 40034e <HAL_Delay_us+0x36>
  40031e:	f242 7510 	movw	r5, #10000	@ 0x2710
  400322:	f04f 26e0 	mov.w	r6, #3758153728	@ 0xe000e000
  400326:	42ab      	cmp	r3, r5
  400328:	bf84      	itt	hi
  40032a:	f5a3 541c 	subhi.w	r4, r3, #9984	@ 0x2700
  40032e:	f242 7310 	movwhi	r3, #10000	@ 0x2710
  400332:	6932      	ldr	r2, [r6, #16]
  400334:	bf98      	it	ls
  400336:	2400      	movls	r4, #0
  400338:	4618      	mov	r0, r3
  40033a:	bf88      	it	hi
  40033c:	3c10      	subhi	r4, #16
  40033e:	07d3      	lsls	r3, r2, #31
  400340:	d408      	bmi.n	400354 <HAL_Delay_us+0x3c>
  400342:	f401 fcc3 	bl	1ccc <HAL_Delay_us_>
  400346:	4623      	mov	r3, r4
  400348:	2c00      	cmp	r4, #0
  40034a:	d1ec      	bne.n	400326 <HAL_Delay_us+0xe>
  40034c:	e001      	b.n	400352 <HAL_Delay_us+0x3a>
  40034e:	f401 fcbd 	bl	1ccc <HAL_Delay_us_>
  400352:	bd70      	pop	{r4, r5, r6, pc}
  400354:	f401 fc9c 	bl	1c90 <HAL_Delay_us2_>
  400358:	e7f5      	b.n	400346 <HAL_Delay_us+0x2e>
	...

0040035c <NMI_Handler>:
  40035c:	b508      	push	{r3, lr}
  40035e:	4b05      	ldr	r3, [pc, #20]	@ (400374 <NMI_Handler+0x18>)
  400360:	691b      	ldr	r3, [r3, #16]
  400362:	005b      	lsls	r3, r3, #1
  400364:	d502      	bpl.n	40036c <NMI_Handler+0x10>
  400366:	f000 fc3f 	bl	400be8 <DBG_Trigger_IRQHandler>
  40036a:	bd08      	pop	{r3, pc}
  40036c:	f000 fd36 	bl	400ddc <WDT_IRQHandler>
  400370:	e7fb      	b.n	40036a <NMI_Handler+0xe>
  400372:	bf00      	nop
  400374:	4000f000 	.word	0x4000f000

00400378 <HAL_GPIO_Restore>:
  400378:	4b11      	ldr	r3, [pc, #68]	@ (4003c0 <HAL_GPIO_Restore+0x48>)
  40037a:	b5f0      	push	{r4, r5, r6, r7, lr}
  40037c:	4298      	cmp	r0, r3
  40037e:	d11b      	bne.n	4003b8 <HAL_GPIO_Restore+0x40>
  400380:	2a03      	cmp	r2, #3
  400382:	d11b      	bne.n	4003bc <HAL_GPIO_Restore+0x44>
  400384:	2400      	movs	r4, #0
  400386:	271c      	movs	r7, #28
  400388:	fb07 f604 	mul.w	r6, r7, r4
  40038c:	198d      	adds	r5, r1, r6
  40038e:	598e      	ldr	r6, [r1, r6]
  400390:	eb00 13c4 	add.w	r3, r0, r4, lsl #7
  400394:	605e      	str	r6, [r3, #4]
  400396:	686e      	ldr	r6, [r5, #4]
  400398:	3401      	adds	r4, #1
  40039a:	611e      	str	r6, [r3, #16]
  40039c:	68ee      	ldr	r6, [r5, #12]
  40039e:	42a2      	cmp	r2, r4
  4003a0:	629e      	str	r6, [r3, #40]	@ 0x28
  4003a2:	692e      	ldr	r6, [r5, #16]
  4003a4:	639e      	str	r6, [r3, #56]	@ 0x38
  4003a6:	696e      	ldr	r6, [r5, #20]
  4003a8:	645e      	str	r6, [r3, #68]	@ 0x44
  4003aa:	69ae      	ldr	r6, [r5, #24]
  4003ac:	651e      	str	r6, [r3, #80]	@ 0x50
  4003ae:	68ad      	ldr	r5, [r5, #8]
  4003b0:	61dd      	str	r5, [r3, #28]
  4003b2:	d8e9      	bhi.n	400388 <HAL_GPIO_Restore+0x10>
  4003b4:	2000      	movs	r0, #0
  4003b6:	bdf0      	pop	{r4, r5, r6, r7, pc}
  4003b8:	2a02      	cmp	r2, #2
  4003ba:	e7e2      	b.n	400382 <HAL_GPIO_Restore+0xa>
  4003bc:	2001      	movs	r0, #1
  4003be:	e7fa      	b.n	4003b6 <HAL_GPIO_Restore+0x3e>
  4003c0:	500a0000 	.word	0x500a0000

004003c4 <HAL_RC_locked>:
  4003c4:	b507      	push	{r0, r1, r2, lr}
  4003c6:	2100      	movs	r1, #0
  4003c8:	2002      	movs	r0, #2
  4003ca:	f000 f8ad 	bl	400528 <HAL_MAILBOX_GetMutex>
  4003ce:	2100      	movs	r1, #0
  4003d0:	9001      	str	r0, [sp, #4]
  4003d2:	a801      	add	r0, sp, #4
  4003d4:	f000 f8c4 	bl	400560 <HAL_MAILBOX_Lock>
  4003d8:	3800      	subs	r0, #0
  4003da:	bf18      	it	ne
  4003dc:	2001      	movne	r0, #1
  4003de:	4240      	negs	r0, r0
  4003e0:	b003      	add	sp, #12
  4003e2:	f85d fb04 	ldr.w	pc, [sp], #4

004003e6 <HAL_RC_unlocked>:
  4003e6:	b507      	push	{r0, r1, r2, lr}
  4003e8:	2100      	movs	r1, #0
  4003ea:	2002      	movs	r0, #2
  4003ec:	f000 f89c 	bl	400528 <HAL_MAILBOX_GetMutex>
  4003f0:	2100      	movs	r1, #0
  4003f2:	9001      	str	r0, [sp, #4]
  4003f4:	a801      	add	r0, sp, #4
  4003f6:	f000 f8c5 	bl	400584 <HAL_MAILBOX_UnLock>
  4003fa:	b003      	add	sp, #12
  4003fc:	f85d fb04 	ldr.w	pc, [sp], #4

00400400 <HAL_LRC_Delay>:
  400400:	f000 bd3a 	b.w	400e78 <HAL_Delay>

00400404 <HAL_RC_CAL_GetLPCycle_ex>:
  400404:	4b01      	ldr	r3, [pc, #4]	@ (40040c <HAL_RC_CAL_GetLPCycle_ex+0x8>)
  400406:	7818      	ldrb	r0, [r3, #0]
  400408:	4770      	bx	lr
  40040a:	bf00      	nop
  40040c:	204015f4 	.word	0x204015f4

00400410 <HAL_RC_CAL_SetLPCycle_ex>:
  400410:	b118      	cbz	r0, 40041a <HAL_RC_CAL_SetLPCycle_ex+0xa>
  400412:	4b03      	ldr	r3, [pc, #12]	@ (400420 <HAL_RC_CAL_SetLPCycle_ex+0x10>)
  400414:	7018      	strb	r0, [r3, #0]
  400416:	2000      	movs	r0, #0
  400418:	4770      	bx	lr
  40041a:	f04f 30ff 	mov.w	r0, #4294967295
  40041e:	4770      	bx	lr
  400420:	204015f4 	.word	0x204015f4

00400424 <HAL_RC_CALget_curr_cycle_on_48M>:
  400424:	b573      	push	{r0, r1, r4, r5, r6, lr}
  400426:	4606      	mov	r6, r0
  400428:	460d      	mov	r5, r1
  40042a:	f401 fc8e 	bl	1d4a <HAL_GetLXTEnabled>
  40042e:	2800      	cmp	r0, #0
  400430:	d16d      	bne.n	40050e <HAL_RC_CALget_curr_cycle_on_48M+0xea>
  400432:	f7ff ffc7 	bl	4003c4 <HAL_RC_locked>
  400436:	2800      	cmp	r0, #0
  400438:	d16c      	bne.n	400514 <HAL_RC_CALget_curr_cycle_on_48M+0xf0>
  40043a:	4c38      	ldr	r4, [pc, #224]	@ (40051c <HAL_RC_CALget_curr_cycle_on_48M+0xf8>)
  40043c:	2001      	movs	r0, #1
  40043e:	f8d4 3114 	ldr.w	r3, [r4, #276]	@ 0x114
  400442:	f36f 43dc 	bfc	r3, #19, #10
  400446:	f443 2300 	orr.w	r3, r3, #524288	@ 0x80000
  40044a:	f8c4 3114 	str.w	r3, [r4, #276]	@ 0x114
  40044e:	f8d4 3114 	ldr.w	r3, [r4, #276]	@ 0x114
  400452:	f043 5300 	orr.w	r3, r3, #536870912	@ 0x20000000
  400456:	f8c4 3114 	str.w	r3, [r4, #276]	@ 0x114
  40045a:	f8d4 3114 	ldr.w	r3, [r4, #276]	@ 0x114
  40045e:	f423 3380 	bic.w	r3, r3, #65536	@ 0x10000
  400462:	f8c4 3114 	str.w	r3, [r4, #276]	@ 0x114
  400466:	f8d4 3114 	ldr.w	r3, [r4, #276]	@ 0x114
  40046a:	f8c4 3114 	str.w	r3, [r4, #276]	@ 0x114
  40046e:	f8d4 3114 	ldr.w	r3, [r4, #276]	@ 0x114
  400472:	f36f 030f 	bfc	r3, #0, #16
  400476:	f8c4 3114 	str.w	r3, [r4, #276]	@ 0x114
  40047a:	f8d4 3114 	ldr.w	r3, [r4, #276]	@ 0x114
  40047e:	431e      	orrs	r6, r3
  400480:	f8c4 6114 	str.w	r6, [r4, #276]	@ 0x114
  400484:	f8d4 3114 	ldr.w	r3, [r4, #276]	@ 0x114
  400488:	f443 3300 	orr.w	r3, r3, #131072	@ 0x20000
  40048c:	f8c4 3114 	str.w	r3, [r4, #276]	@ 0x114
  400490:	f7ff ffb6 	bl	400400 <HAL_LRC_Delay>
  400494:	f8d4 3118 	ldr.w	r3, [r4, #280]	@ 0x118
  400498:	2b00      	cmp	r3, #0
  40049a:	dafb      	bge.n	400494 <HAL_RC_CALget_curr_cycle_on_48M+0x70>
  40049c:	4820      	ldr	r0, [pc, #128]	@ (400520 <HAL_RC_CALget_curr_cycle_on_48M+0xfc>)
  40049e:	f8d4 2118 	ldr.w	r2, [r4, #280]	@ 0x118
  4004a2:	6801      	ldr	r1, [r0, #0]
  4004a4:	4e1f      	ldr	r6, [pc, #124]	@ (400524 <HAL_RC_CALget_curr_cycle_on_48M+0x100>)
  4004a6:	f022 4200 	bic.w	r2, r2, #2147483648	@ 0x80000000
  4004aa:	b371      	cbz	r1, 40050a <HAL_RC_CALget_curr_cycle_on_48M+0xe6>
  4004ac:	6833      	ldr	r3, [r6, #0]
  4004ae:	4293      	cmp	r3, r2
  4004b0:	d21d      	bcs.n	4004ee <HAL_RC_CALget_curr_cycle_on_48M+0xca>
  4004b2:	1ad4      	subs	r4, r2, r3
  4004b4:	2cfa      	cmp	r4, #250	@ 0xfa
  4004b6:	d923      	bls.n	400500 <HAL_RC_CALget_curr_cycle_on_48M+0xdc>
  4004b8:	4299      	cmp	r1, r3
  4004ba:	d921      	bls.n	400500 <HAL_RC_CALget_curr_cycle_on_48M+0xdc>
  4004bc:	1ac9      	subs	r1, r1, r3
  4004be:	29fa      	cmp	r1, #250	@ 0xfa
  4004c0:	d91e      	bls.n	400500 <HAL_RC_CALget_curr_cycle_on_48M+0xdc>
  4004c2:	eb03 0443 	add.w	r4, r3, r3, lsl #1
  4004c6:	230d      	movs	r3, #13
  4004c8:	3408      	adds	r4, #8
  4004ca:	fb03 4402 	mla	r4, r3, r2, r4
  4004ce:	0924      	lsrs	r4, r4, #4
  4004d0:	6002      	str	r2, [r0, #0]
  4004d2:	2204      	movs	r2, #4
  4004d4:	2002      	movs	r0, #2
  4004d6:	eb0d 0102 	add.w	r1, sp, r2
  4004da:	6034      	str	r4, [r6, #0]
  4004dc:	9401      	str	r4, [sp, #4]
  4004de:	f401 fce1 	bl	1ea4 <HAL_LCPU_CONFIG_set>
  4004e2:	602c      	str	r4, [r5, #0]
  4004e4:	f7ff ff7f 	bl	4003e6 <HAL_RC_unlocked>
  4004e8:	2000      	movs	r0, #0
  4004ea:	b002      	add	sp, #8
  4004ec:	bd70      	pop	{r4, r5, r6, pc}
  4004ee:	d907      	bls.n	400500 <HAL_RC_CALget_curr_cycle_on_48M+0xdc>
  4004f0:	1a9c      	subs	r4, r3, r2
  4004f2:	2cc8      	cmp	r4, #200	@ 0xc8
  4004f4:	d904      	bls.n	400500 <HAL_RC_CALget_curr_cycle_on_48M+0xdc>
  4004f6:	4299      	cmp	r1, r3
  4004f8:	d202      	bcs.n	400500 <HAL_RC_CALget_curr_cycle_on_48M+0xdc>
  4004fa:	1a59      	subs	r1, r3, r1
  4004fc:	29c8      	cmp	r1, #200	@ 0xc8
  4004fe:	e7df      	b.n	4004c0 <HAL_RC_CALget_curr_cycle_on_48M+0x9c>
  400500:	ebc3 1403 	rsb	r4, r3, r3, lsl #4
  400504:	4414      	add	r4, r2
  400506:	3408      	adds	r4, #8
  400508:	e7e1      	b.n	4004ce <HAL_RC_CALget_curr_cycle_on_48M+0xaa>
  40050a:	4614      	mov	r4, r2
  40050c:	e7e0      	b.n	4004d0 <HAL_RC_CALget_curr_cycle_on_48M+0xac>
  40050e:	f04f 30ff 	mov.w	r0, #4294967295
  400512:	e7ea      	b.n	4004ea <HAL_RC_CALget_curr_cycle_on_48M+0xc6>
  400514:	f06f 0002 	mvn.w	r0, #2
  400518:	e7e7      	b.n	4004ea <HAL_RC_CALget_curr_cycle_on_48M+0xc6>
  40051a:	bf00      	nop
  40051c:	40090000 	.word	0x40090000
  400520:	20401a58 	.word	0x20401a58
  400524:	20401a54 	.word	0x20401a54

00400528 <HAL_MAILBOX_GetMutex>:
  400528:	2801      	cmp	r0, #1
  40052a:	b508      	push	{r3, lr}
  40052c:	d108      	bne.n	400540 <HAL_MAILBOX_GetMutex+0x18>
  40052e:	2903      	cmp	r1, #3
  400530:	d80e      	bhi.n	400550 <HAL_MAILBOX_GetMutex+0x28>
  400532:	4808      	ldr	r0, [pc, #32]	@ (400554 <HAL_MAILBOX_GetMutex+0x2c>)
  400534:	e000      	b.n	400538 <HAL_MAILBOX_GetMutex+0x10>
  400536:	4808      	ldr	r0, [pc, #32]	@ (400558 <HAL_MAILBOX_GetMutex+0x30>)
  400538:	2318      	movs	r3, #24
  40053a:	fb03 0001 	mla	r0, r3, r1, r0
  40053e:	e008      	b.n	400552 <HAL_MAILBOX_GetMutex+0x2a>
  400540:	2901      	cmp	r1, #1
  400542:	d805      	bhi.n	400550 <HAL_MAILBOX_GetMutex+0x28>
  400544:	2802      	cmp	r0, #2
  400546:	d0f6      	beq.n	400536 <HAL_MAILBOX_GetMutex+0xe>
  400548:	21b0      	movs	r1, #176	@ 0xb0
  40054a:	4804      	ldr	r0, [pc, #16]	@ (40055c <HAL_MAILBOX_GetMutex+0x34>)
  40054c:	f000 fcd2 	bl	400ef4 <HAL_AssertFailed>
  400550:	2000      	movs	r0, #0
  400552:	bd08      	pop	{r3, pc}
  400554:	50082000 	.word	0x50082000
  400558:	40002000 	.word	0x40002000
  40055c:	00401288 	.word	0x00401288

00400560 <HAL_MAILBOX_Lock>:
  400560:	b508      	push	{r3, lr}
  400562:	b138      	cbz	r0, 400574 <HAL_MAILBOX_Lock+0x14>
  400564:	6800      	ldr	r0, [r0, #0]
  400566:	b148      	cbz	r0, 40057c <HAL_MAILBOX_Lock+0x1c>
  400568:	6940      	ldr	r0, [r0, #20]
  40056a:	2800      	cmp	r0, #0
  40056c:	db08      	blt.n	400580 <HAL_MAILBOX_Lock+0x20>
  40056e:	f000 000f 	and.w	r0, r0, #15
  400572:	bd08      	pop	{r3, pc}
  400574:	2002      	movs	r0, #2
  400576:	f7ff ffd7 	bl	400528 <HAL_MAILBOX_GetMutex>
  40057a:	e7f4      	b.n	400566 <HAL_MAILBOX_Lock+0x6>
  40057c:	2004      	movs	r0, #4
  40057e:	e7f8      	b.n	400572 <HAL_MAILBOX_Lock+0x12>
  400580:	2000      	movs	r0, #0
  400582:	e7f6      	b.n	400572 <HAL_MAILBOX_Lock+0x12>

00400584 <HAL_MAILBOX_UnLock>:
  400584:	b508      	push	{r3, lr}
  400586:	b130      	cbz	r0, 400596 <HAL_MAILBOX_UnLock+0x12>
  400588:	6800      	ldr	r0, [r0, #0]
  40058a:	b118      	cbz	r0, 400594 <HAL_MAILBOX_UnLock+0x10>
  40058c:	6943      	ldr	r3, [r0, #20]
  40058e:	f043 4300 	orr.w	r3, r3, #2147483648	@ 0x80000000
  400592:	6143      	str	r3, [r0, #20]
  400594:	bd08      	pop	{r3, pc}
  400596:	2002      	movs	r0, #2
  400598:	f7ff ffc6 	bl	400528 <HAL_MAILBOX_GetMutex>
  40059c:	e7f5      	b.n	40058a <HAL_MAILBOX_UnLock+0x6>

0040059e <HAL_MAILBOX_IRQHandler>:
  40059e:	b570      	push	{r4, r5, r6, lr}
  4005a0:	4605      	mov	r5, r0
  4005a2:	2600      	movs	r6, #0
  4005a4:	6803      	ldr	r3, [r0, #0]
  4005a6:	691c      	ldr	r4, [r3, #16]
  4005a8:	609c      	str	r4, [r3, #8]
  4005aa:	b904      	cbnz	r4, 4005ae <HAL_MAILBOX_IRQHandler+0x10>
  4005ac:	bd70      	pop	{r4, r5, r6, pc}
  4005ae:	07e3      	lsls	r3, r4, #31
  4005b0:	d504      	bpl.n	4005bc <HAL_MAILBOX_IRQHandler+0x1e>
  4005b2:	68ab      	ldr	r3, [r5, #8]
  4005b4:	b113      	cbz	r3, 4005bc <HAL_MAILBOX_IRQHandler+0x1e>
  4005b6:	4628      	mov	r0, r5
  4005b8:	b2f1      	uxtb	r1, r6
  4005ba:	4798      	blx	r3
  4005bc:	0864      	lsrs	r4, r4, #1
  4005be:	3601      	adds	r6, #1
  4005c0:	e7f3      	b.n	4005aa <HAL_MAILBOX_IRQHandler+0xc>
	...

004005c4 <HAL_PTC_Init>:
  4005c4:	b510      	push	{r4, lr}
  4005c6:	4604      	mov	r4, r0
  4005c8:	b918      	cbnz	r0, 4005d2 <HAL_PTC_Init+0xe>
  4005ca:	2115      	movs	r1, #21
  4005cc:	480c      	ldr	r0, [pc, #48]	@ (400600 <HAL_PTC_Init+0x3c>)
  4005ce:	f000 fc91 	bl	400ef4 <HAL_AssertFailed>
  4005d2:	7d23      	ldrb	r3, [r4, #20]
  4005d4:	2b07      	cmp	r3, #7
  4005d6:	d903      	bls.n	4005e0 <HAL_PTC_Init+0x1c>
  4005d8:	2116      	movs	r1, #22
  4005da:	4809      	ldr	r0, [pc, #36]	@ (400600 <HAL_PTC_Init+0x3c>)
  4005dc:	f000 fc8a 	bl	400ef4 <HAL_AssertFailed>
  4005e0:	6823      	ldr	r3, [r4, #0]
  4005e2:	7d22      	ldrb	r2, [r4, #20]
  4005e4:	3310      	adds	r3, #16
  4005e6:	eb03 1302 	add.w	r3, r3, r2, lsl #4
  4005ea:	68a2      	ldr	r2, [r4, #8]
  4005ec:	6063      	str	r3, [r4, #4]
  4005ee:	605a      	str	r2, [r3, #4]
  4005f0:	6863      	ldr	r3, [r4, #4]
  4005f2:	68e2      	ldr	r2, [r4, #12]
  4005f4:	2000      	movs	r0, #0
  4005f6:	609a      	str	r2, [r3, #8]
  4005f8:	2301      	movs	r3, #1
  4005fa:	7623      	strb	r3, [r4, #24]
  4005fc:	bd10      	pop	{r4, pc}
  4005fe:	bf00      	nop
  400600:	00401309 	.word	0x00401309

00400604 <HAL_PTC_Enable>:
  400604:	2201      	movs	r2, #1
  400606:	b510      	push	{r4, lr}
  400608:	7d03      	ldrb	r3, [r0, #20]
  40060a:	6804      	ldr	r4, [r0, #0]
  40060c:	fa02 f303 	lsl.w	r3, r2, r3
  400610:	b1b1      	cbz	r1, 400640 <HAL_PTC_Enable+0x3c>
  400612:	6861      	ldr	r1, [r4, #4]
  400614:	430b      	orrs	r3, r1
  400616:	f443 3380 	orr.w	r3, r3, #65536	@ 0x10000
  40061a:	6063      	str	r3, [r4, #4]
  40061c:	6804      	ldr	r4, [r0, #0]
  40061e:	7d01      	ldrb	r1, [r0, #20]
  400620:	68a3      	ldr	r3, [r4, #8]
  400622:	408a      	lsls	r2, r1
  400624:	4313      	orrs	r3, r2
  400626:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
  40062a:	60a3      	str	r3, [r4, #8]
  40062c:	7cc2      	ldrb	r2, [r0, #19]
  40062e:	7d83      	ldrb	r3, [r0, #22]
  400630:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
  400634:	6842      	ldr	r2, [r0, #4]
  400636:	6013      	str	r3, [r2, #0]
  400638:	2202      	movs	r2, #2
  40063a:	7602      	strb	r2, [r0, #24]
  40063c:	2000      	movs	r0, #0
  40063e:	bd10      	pop	{r4, pc}
  400640:	68a1      	ldr	r1, [r4, #8]
  400642:	ea43 4303 	orr.w	r3, r3, r3, lsl #16
  400646:	ea21 0303 	bic.w	r3, r1, r3
  40064a:	60a3      	str	r3, [r4, #8]
  40064c:	e7f5      	b.n	40063a <HAL_PTC_Enable+0x36>

0040064e <HAL_PTC_IRQHandler>:
  40064e:	2301      	movs	r3, #1
  400650:	6802      	ldr	r2, [r0, #0]
  400652:	7d00      	ldrb	r0, [r0, #20]
  400654:	6851      	ldr	r1, [r2, #4]
  400656:	4083      	lsls	r3, r0
  400658:	430b      	orrs	r3, r1
  40065a:	6053      	str	r3, [r2, #4]
  40065c:	4770      	bx	lr
	...

00400660 <RCC_GetModuleMask>:
  400660:	b510      	push	{r4, lr}
  400662:	b15a      	cbz	r2, 40067c <RCC_GetModuleMask+0x1c>
  400664:	b151      	cbz	r1, 40067c <RCC_GetModuleMask+0x1c>
  400666:	2823      	cmp	r0, #35	@ 0x23
  400668:	d05d      	beq.n	400726 <RCC_GetModuleMask+0xc6>
  40066a:	d847      	bhi.n	4006fc <RCC_GetModuleMask+0x9c>
  40066c:	280b      	cmp	r0, #11
  40066e:	d83b      	bhi.n	4006e8 <RCC_GetModuleMask+0x88>
  400670:	b9e0      	cbnz	r0, 4006ac <RCC_GetModuleMask+0x4c>
  400672:	f240 3122 	movw	r1, #802	@ 0x322
  400676:	4841      	ldr	r0, [pc, #260]	@ (40077c <RCC_GetModuleMask+0x11c>)
  400678:	f000 fc3c 	bl	400ef4 <HAL_AssertFailed>
  40067c:	2000      	movs	r0, #0
  40067e:	e051      	b.n	400724 <RCC_GetModuleMask+0xc4>
  400680:	3859      	subs	r0, #89	@ 0x59
  400682:	2807      	cmp	r0, #7
  400684:	d8f5      	bhi.n	400672 <RCC_GetModuleMask+0x12>
  400686:	a401      	add	r4, pc, #4	@ (adr r4, 40068c <RCC_GetModuleMask+0x2c>)
  400688:	f854 f020 	ldr.w	pc, [r4, r0, lsl #2]
  40068c:	00400745 	.word	0x00400745
  400690:	0040075d 	.word	0x0040075d
  400694:	00400765 	.word	0x00400765
  400698:	0040076d 	.word	0x0040076d
  40069c:	00400673 	.word	0x00400673
  4006a0:	00400673 	.word	0x00400673
  4006a4:	00400673 	.word	0x00400673
  4006a8:	00400775 	.word	0x00400775
  4006ac:	3801      	subs	r0, #1
  4006ae:	2300      	movs	r3, #0
  4006b0:	280a      	cmp	r0, #10
  4006b2:	d8de      	bhi.n	400672 <RCC_GetModuleMask+0x12>
  4006b4:	a401      	add	r4, pc, #4	@ (adr r4, 4006bc <RCC_GetModuleMask+0x5c>)
  4006b6:	f854 f020 	ldr.w	pc, [r4, r0, lsl #2]
  4006ba:	bf00      	nop
  4006bc:	00400757 	.word	0x00400757
  4006c0:	00400673 	.word	0x00400673
  4006c4:	00400673 	.word	0x00400673
  4006c8:	00400751 	.word	0x00400751
  4006cc:	00400673 	.word	0x00400673
  4006d0:	0040074b 	.word	0x0040074b
  4006d4:	00400673 	.word	0x00400673
  4006d8:	00400673 	.word	0x00400673
  4006dc:	00400673 	.word	0x00400673
  4006e0:	0040073f 	.word	0x0040073f
  4006e4:	00400739 	.word	0x00400739
  4006e8:	2816      	cmp	r0, #22
  4006ea:	f04f 0300 	mov.w	r3, #0
  4006ee:	d01f      	beq.n	400730 <RCC_GetModuleMask+0xd0>
  4006f0:	2822      	cmp	r0, #34	@ 0x22
  4006f2:	d1be      	bne.n	400672 <RCC_GetModuleMask+0x12>
  4006f4:	600b      	str	r3, [r1, #0]
  4006f6:	f44f 7300 	mov.w	r3, #512	@ 0x200
  4006fa:	e010      	b.n	40071e <RCC_GetModuleMask+0xbe>
  4006fc:	2860      	cmp	r0, #96	@ 0x60
  4006fe:	d8b8      	bhi.n	400672 <RCC_GetModuleMask+0x12>
  400700:	2858      	cmp	r0, #88	@ 0x58
  400702:	f04f 0300 	mov.w	r3, #0
  400706:	d8bb      	bhi.n	400680 <RCC_GetModuleMask+0x20>
  400708:	2838      	cmp	r0, #56	@ 0x38
  40070a:	d005      	beq.n	400718 <RCC_GetModuleMask+0xb8>
  40070c:	283a      	cmp	r0, #58	@ 0x3a
  40070e:	d1b0      	bne.n	400672 <RCC_GetModuleMask+0x12>
  400710:	600b      	str	r3, [r1, #0]
  400712:	f44f 3380 	mov.w	r3, #65536	@ 0x10000
  400716:	e002      	b.n	40071e <RCC_GetModuleMask+0xbe>
  400718:	600b      	str	r3, [r1, #0]
  40071a:	f44f 7380 	mov.w	r3, #256	@ 0x100
  40071e:	f04f 4080 	mov.w	r0, #1073741824	@ 0x40000000
  400722:	6013      	str	r3, [r2, #0]
  400724:	bd10      	pop	{r4, pc}
  400726:	2300      	movs	r3, #0
  400728:	600b      	str	r3, [r1, #0]
  40072a:	f44f 6380 	mov.w	r3, #1024	@ 0x400
  40072e:	e7f6      	b.n	40071e <RCC_GetModuleMask+0xbe>
  400730:	600b      	str	r3, [r1, #0]
  400732:	f44f 4300 	mov.w	r3, #32768	@ 0x8000
  400736:	e7f2      	b.n	40071e <RCC_GetModuleMask+0xbe>
  400738:	600b      	str	r3, [r1, #0]
  40073a:	2340      	movs	r3, #64	@ 0x40
  40073c:	e7ef      	b.n	40071e <RCC_GetModuleMask+0xbe>
  40073e:	600b      	str	r3, [r1, #0]
  400740:	2320      	movs	r3, #32
  400742:	e7ec      	b.n	40071e <RCC_GetModuleMask+0xbe>
  400744:	600b      	str	r3, [r1, #0]
  400746:	2310      	movs	r3, #16
  400748:	e7e9      	b.n	40071e <RCC_GetModuleMask+0xbe>
  40074a:	600b      	str	r3, [r1, #0]
  40074c:	2308      	movs	r3, #8
  40074e:	e7e6      	b.n	40071e <RCC_GetModuleMask+0xbe>
  400750:	600b      	str	r3, [r1, #0]
  400752:	2304      	movs	r3, #4
  400754:	e7e3      	b.n	40071e <RCC_GetModuleMask+0xbe>
  400756:	600b      	str	r3, [r1, #0]
  400758:	2302      	movs	r3, #2
  40075a:	e7e0      	b.n	40071e <RCC_GetModuleMask+0xbe>
  40075c:	600b      	str	r3, [r1, #0]
  40075e:	f44f 1380 	mov.w	r3, #1048576	@ 0x100000
  400762:	e7dc      	b.n	40071e <RCC_GetModuleMask+0xbe>
  400764:	600b      	str	r3, [r1, #0]
  400766:	f44f 2300 	mov.w	r3, #524288	@ 0x80000
  40076a:	e7d8      	b.n	40071e <RCC_GetModuleMask+0xbe>
  40076c:	600b      	str	r3, [r1, #0]
  40076e:	f44f 2380 	mov.w	r3, #262144	@ 0x40000
  400772:	e7d4      	b.n	40071e <RCC_GetModuleMask+0xbe>
  400774:	600b      	str	r3, [r1, #0]
  400776:	2380      	movs	r3, #128	@ 0x80
  400778:	e7d1      	b.n	40071e <RCC_GetModuleMask+0xbe>
  40077a:	bf00      	nop
  40077c:	00401346 	.word	0x00401346

00400780 <HAL_RCC_EnableModule>:
  400780:	b507      	push	{r0, r1, r2, lr}
  400782:	466a      	mov	r2, sp
  400784:	a901      	add	r1, sp, #4
  400786:	f7ff ff6b 	bl	400660 <RCC_GetModuleMask>
  40078a:	f1b0 4f80 	cmp.w	r0, #1073741824	@ 0x40000000
  40078e:	d101      	bne.n	400794 <HAL_RCC_EnableModule+0x14>
  400790:	9b01      	ldr	r3, [sp, #4]
  400792:	b13b      	cbz	r3, 4007a4 <HAL_RCC_EnableModule+0x24>
  400794:	f640 0122 	movw	r1, #2082	@ 0x822
  400798:	4809      	ldr	r0, [pc, #36]	@ (4007c0 <HAL_RCC_EnableModule+0x40>)
  40079a:	b003      	add	sp, #12
  40079c:	f85d eb04 	ldr.w	lr, [sp], #4
  4007a0:	f000 bba8 	b.w	400ef4 <HAL_AssertFailed>
  4007a4:	f3ef 8210 	mrs	r2, PRIMASK
  4007a8:	2301      	movs	r3, #1
  4007aa:	f383 8810 	msr	PRIMASK, r3
  4007ae:	6843      	ldr	r3, [r0, #4]
  4007b0:	9900      	ldr	r1, [sp, #0]
  4007b2:	430b      	orrs	r3, r1
  4007b4:	6043      	str	r3, [r0, #4]
  4007b6:	f382 8810 	msr	PRIMASK, r2
  4007ba:	b003      	add	sp, #12
  4007bc:	f85d fb04 	ldr.w	pc, [sp], #4
  4007c0:	00401346 	.word	0x00401346

004007c4 <HAL_RCC_MspInit>:
  4007c4:	4770      	bx	lr

004007c6 <HAL_RCC_Init>:
  4007c6:	b508      	push	{r3, lr}
  4007c8:	f7ff fffc 	bl	4007c4 <HAL_RCC_MspInit>
  4007cc:	bd08      	pop	{r3, pc}
	...

004007d0 <bt_audiopath_init>:
  4007d0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
  4007d2:	4e12      	ldr	r6, [pc, #72]	@ (40081c <bt_audiopath_init+0x4c>)
  4007d4:	4b12      	ldr	r3, [pc, #72]	@ (400820 <bt_audiopath_init+0x50>)
  4007d6:	4c13      	ldr	r4, [pc, #76]	@ (400824 <bt_audiopath_init+0x54>)
  4007d8:	6033      	str	r3, [r6, #0]
  4007da:	3320      	adds	r3, #32
  4007dc:	6023      	str	r3, [r4, #0]
  4007de:	4a12      	ldr	r2, [pc, #72]	@ (400828 <bt_audiopath_init+0x58>)
  4007e0:	4b12      	ldr	r3, [pc, #72]	@ (40082c <bt_audiopath_init+0x5c>)
  4007e2:	4f13      	ldr	r7, [pc, #76]	@ (400830 <bt_audiopath_init+0x60>)
  4007e4:	601a      	str	r2, [r3, #0]
  4007e6:	4b13      	ldr	r3, [pc, #76]	@ (400834 <bt_audiopath_init+0x64>)
  4007e8:	4d13      	ldr	r5, [pc, #76]	@ (400838 <bt_audiopath_init+0x68>)
  4007ea:	603b      	str	r3, [r7, #0]
  4007ec:	f503 73e6 	add.w	r3, r3, #460	@ 0x1cc
  4007f0:	602b      	str	r3, [r5, #0]
  4007f2:	4b12      	ldr	r3, [pc, #72]	@ (40083c <bt_audiopath_init+0x6c>)
  4007f4:	f502 726b 	add.w	r2, r2, #940	@ 0x3ac
  4007f8:	4811      	ldr	r0, [pc, #68]	@ (400840 <bt_audiopath_init+0x70>)
  4007fa:	601a      	str	r2, [r3, #0]
  4007fc:	f405 f926 	bl	5a4c <bt_sco_data_handle_callback+0xd0>
  400800:	6839      	ldr	r1, [r7, #0]
  400802:	6830      	ldr	r0, [r6, #0]
  400804:	f44f 72e6 	mov.w	r2, #460	@ 0x1cc
  400808:	f454 f9f4 	bl	54bf4 <rt_ringbuffer_getchar+0x63>
  40080c:	6820      	ldr	r0, [r4, #0]
  40080e:	f44f 72e6 	mov.w	r2, #460	@ 0x1cc
  400812:	6829      	ldr	r1, [r5, #0]
  400814:	f454 f9ee 	bl	54bf4 <rt_ringbuffer_getchar+0x63>
  400818:	2000      	movs	r0, #0
  40081a:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
  40081c:	2040e6e8 	.word	0x2040e6e8
  400820:	2040e000 	.word	0x2040e000
  400824:	2040e6ec 	.word	0x2040e6ec
  400828:	2040e040 	.word	0x2040e040
  40082c:	2040e6f0 	.word	0x2040e6f0
  400830:	2040e6f4 	.word	0x2040e6f4
  400834:	2040e050 	.word	0x2040e050
  400838:	2040e6f8 	.word	0x2040e6f8
  40083c:	2040e6fc 	.word	0x2040e6fc
  400840:	0000597d 	.word	0x0000597d

00400844 <patch_install>:
  400844:	4a04      	ldr	r2, [pc, #16]	@ (400858 <patch_install+0x14>)
  400846:	4b05      	ldr	r3, [pc, #20]	@ (40085c <patch_install+0x18>)
  400848:	601a      	str	r2, [r3, #0]
  40084a:	3a01      	subs	r2, #1
  40084c:	6812      	ldr	r2, [r2, #0]
  40084e:	b10a      	cbz	r2, 400854 <patch_install+0x10>
  400850:	681b      	ldr	r3, [r3, #0]
  400852:	4718      	bx	r3
  400854:	4770      	bx	lr
  400856:	bf00      	nop
  400858:	00406001 	.word	0x00406001
  40085c:	20401a5c 	.word	0x20401a5c

00400860 <bluetooth_init>:
  400860:	b510      	push	{r4, lr}
  400862:	2001      	movs	r0, #1
  400864:	f000 f946 	bl	400af4 <rf_ptc_config>
  400868:	f451 fe46 	bl	524f8 <rt_hw_ble_int_init>
  40086c:	f401 fa6d 	bl	1d4a <HAL_GetLXTEnabled>
  400870:	b928      	cbnz	r0, 40087e <bluetooth_init+0x1e>
  400872:	f450 fcf3 	bl	5125c <rom_config_set_default_sleep_mode+0x7>
  400876:	f7ff fdc5 	bl	400404 <HAL_RC_CAL_GetLPCycle_ex>
  40087a:	f450 fce3 	bl	51244 <rom_config_set_default_link_config+0xb>
  40087e:	2003      	movs	r0, #3
  400880:	f450 fcf0 	bl	51264 <rom_config_set_default_xtal_enabled+0x7>
  400884:	2400      	movs	r4, #0
  400886:	230e      	movs	r3, #14
  400888:	4a0c      	ldr	r2, [pc, #48]	@ (4008bc <bluetooth_init+0x5c>)
  40088a:	490d      	ldr	r1, [pc, #52]	@ (4008c0 <bluetooth_init+0x60>)
  40088c:	4610      	mov	r0, r2
  40088e:	e9c2 4407 	strd	r4, r4, [r2, #28]
  400892:	7513      	strb	r3, [r2, #20]
  400894:	f453 fbbc 	bl	54010 <rt_pm_device_register>
  400898:	480a      	ldr	r0, [pc, #40]	@ (4008c4 <bluetooth_init+0x64>)
  40089a:	f455 fa31 	bl	55d00 <rt_thread_idle_sethook>
  40089e:	480a      	ldr	r0, [pc, #40]	@ (4008c8 <bluetooth_init+0x68>)
  4008a0:	f453 fc94 	bl	541cc <rt_pm_override_mode_select>
  4008a4:	f7ff ffce 	bl	400844 <patch_install>
  4008a8:	f000 f8c2 	bl	400a30 <bluetooth_config>
  4008ac:	f401 fd78 	bl	23a0 <HAL_RCC_SetMacFreq>
  4008b0:	4620      	mov	r0, r4
  4008b2:	f404 fb33 	bl	4f1c <ble_aon_irq_handler+0x2b>
  4008b6:	4620      	mov	r0, r4
  4008b8:	bd10      	pop	{r4, pc}
  4008ba:	bf00      	nop
  4008bc:	20401a60 	.word	0x20401a60
  4008c0:	004013e8 	.word	0x004013e8
  4008c4:	00017955 	.word	0x00017955
  4008c8:	004008cd 	.word	0x004008cd

004008cc <bluetooth_select_pm_mode>:
  4008cc:	3001      	adds	r0, #1
  4008ce:	b508      	push	{r3, lr}
  4008d0:	d001      	beq.n	4008d6 <bluetooth_select_pm_mode+0xa>
  4008d2:	2001      	movs	r0, #1
  4008d4:	bd08      	pop	{r3, pc}
  4008d6:	f417 fa33 	bl	17d40 <bluetooth_stack_suspend>
  4008da:	2800      	cmp	r0, #0
  4008dc:	d1f9      	bne.n	4008d2 <bluetooth_select_pm_mode+0x6>
  4008de:	2003      	movs	r0, #3
  4008e0:	e7f8      	b.n	4008d4 <bluetooth_select_pm_mode+0x8>
	...

004008e4 <bluetooth_pm_suspend>:
  4008e4:	b508      	push	{r3, lr}
  4008e6:	4b09      	ldr	r3, [pc, #36]	@ (40090c <bluetooth_pm_suspend+0x28>)
  4008e8:	4602      	mov	r2, r0
  4008ea:	6a18      	ldr	r0, [r3, #32]
  4008ec:	f010 0020 	ands.w	r0, r0, #32
  4008f0:	d006      	beq.n	400900 <bluetooth_pm_suspend+0x1c>
  4008f2:	4b07      	ldr	r3, [pc, #28]	@ (400910 <bluetooth_pm_suspend+0x2c>)
  4008f4:	429a      	cmp	r2, r3
  4008f6:	d104      	bne.n	400902 <bluetooth_pm_suspend+0x1e>
  4008f8:	2901      	cmp	r1, #1
  4008fa:	d904      	bls.n	400906 <bluetooth_pm_suspend+0x22>
  4008fc:	f417 fa20 	bl	17d40 <bluetooth_stack_suspend>
  400900:	bd08      	pop	{r3, pc}
  400902:	2000      	movs	r0, #0
  400904:	e7fc      	b.n	400900 <bluetooth_pm_suspend+0x1c>
  400906:	f04f 30ff 	mov.w	r0, #4294967295
  40090a:	e7f9      	b.n	400900 <bluetooth_pm_suspend+0x1c>
  40090c:	40040000 	.word	0x40040000
  400910:	20401a60 	.word	0x20401a60

00400914 <ble_standby_sleep_pre_handler>:
  400914:	f404 bba4 	b.w	5060 <ble_standby_sleep_after_handler_rom+0x4f>

00400918 <ble_standby_sleep_after_handler>:
  400918:	b508      	push	{r3, lr}
  40091a:	f401 fd41 	bl	23a0 <HAL_RCC_SetMacFreq>
  40091e:	f404 fb77 	bl	5010 <ble_memory_config+0x18>
  400922:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
  400926:	2000      	movs	r0, #0
  400928:	f000 b8e4 	b.w	400af4 <rf_ptc_config>

0040092c <rom_port_get>:
  40092c:	b510      	push	{r4, lr}
  40092e:	b148      	cbz	r0, 400944 <rom_port_get+0x18>
  400930:	2801      	cmp	r0, #1
  400932:	d009      	beq.n	400948 <rom_port_get+0x1c>
  400934:	f640 02d6 	movw	r2, #2262	@ 0x8d6
  400938:	4904      	ldr	r1, [pc, #16]	@ (40094c <rom_port_get+0x20>)
  40093a:	4805      	ldr	r0, [pc, #20]	@ (400950 <rom_port_get+0x24>)
  40093c:	f450 fd0e 	bl	5135c <rt_assert_handler>
  400940:	4620      	mov	r0, r4
  400942:	bd10      	pop	{r4, pc}
  400944:	2402      	movs	r4, #2
  400946:	e7fb      	b.n	400940 <rom_port_get+0x14>
  400948:	2406      	movs	r4, #6
  40094a:	e7f9      	b.n	400940 <rom_port_get+0x14>
  40094c:	00401400 	.word	0x00401400
  400950:	00401394 	.word	0x00401394

00400954 <act_config>:
  400954:	2206      	movs	r2, #6
  400956:	b538      	push	{r3, r4, r5, lr}
  400958:	4c0d      	ldr	r4, [pc, #52]	@ (400990 <act_config+0x3c>)
  40095a:	2302      	movs	r3, #2
  40095c:	2501      	movs	r5, #1
  40095e:	70a2      	strb	r2, [r4, #2]
  400960:	2203      	movs	r2, #3
  400962:	2004      	movs	r0, #4
  400964:	7023      	strb	r3, [r4, #0]
  400966:	70e2      	strb	r2, [r4, #3]
  400968:	7123      	strb	r3, [r4, #4]
  40096a:	7065      	strb	r5, [r4, #1]
  40096c:	f450 fc34 	bl	511d8 <rom_config_em_memory+0x33>
  400970:	8843      	ldrh	r3, [r0, #2]
  400972:	2014      	movs	r0, #20
  400974:	3b02      	subs	r3, #2
  400976:	71e3      	strb	r3, [r4, #7]
  400978:	f450 fc2e 	bl	511d8 <rom_config_em_memory+0x33>
  40097c:	8843      	ldrh	r3, [r0, #2]
  40097e:	7165      	strb	r5, [r4, #5]
  400980:	3b02      	subs	r3, #2
  400982:	7223      	strb	r3, [r4, #8]
  400984:	71a5      	strb	r5, [r4, #6]
  400986:	4620      	mov	r0, r4
  400988:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
  40098c:	f450 bc54 	b.w	51238 <rom_config_set_controller_enabled+0x7>
  400990:	2040ead4 	.word	0x2040ead4

00400994 <mem_config>:
  400994:	b500      	push	{lr}
  400996:	4a16      	ldr	r2, [pc, #88]	@ (4009f0 <mem_config+0x5c>)
  400998:	b091      	sub	sp, #68	@ 0x44
  40099a:	7953      	ldrb	r3, [r2, #5]
  40099c:	7990      	ldrb	r0, [r2, #6]
  40099e:	005b      	lsls	r3, r3, #1
  4009a0:	f003 0302 	and.w	r3, r3, #2
  4009a4:	f000 0001 	and.w	r0, r0, #1
  4009a8:	4318      	orrs	r0, r3
  4009aa:	f450 fc41 	bl	51230 <rom_config_get_default_attribute_4_em+0x57>
  4009ae:	2228      	movs	r2, #40	@ 0x28
  4009b0:	2100      	movs	r1, #0
  4009b2:	a806      	add	r0, sp, #24
  4009b4:	f000 fc60 	bl	401278 <memset>
  4009b8:	f44f 7200 	mov.w	r2, #512	@ 0x200
  4009bc:	4b0d      	ldr	r3, [pc, #52]	@ (4009f4 <mem_config+0x60>)
  4009be:	2106      	movs	r1, #6
  4009c0:	e9cd 3203 	strd	r3, r2, [sp, #12]
  4009c4:	2300      	movs	r3, #0
  4009c6:	e9cd 3101 	strd	r3, r1, [sp, #4]
  4009ca:	f44f 7327 	mov.w	r3, #668	@ 0x29c
  4009ce:	2201      	movs	r2, #1
  4009d0:	f44f 5180 	mov.w	r1, #4096	@ 0x1000
  4009d4:	9300      	str	r3, [sp, #0]
  4009d6:	a806      	add	r0, sp, #24
  4009d8:	f44f 5300 	mov.w	r3, #8192	@ 0x2000
  4009dc:	f44f fd78 	bl	504d0 <mem_env_config>
  4009e0:	a806      	add	r0, sp, #24
  4009e2:	f404 fb09 	bl	4ff8 <ble_memory_config>
  4009e6:	f409 fa0d 	bl	9e04 <em_config_customized>
  4009ea:	b011      	add	sp, #68	@ 0x44
  4009ec:	f85d fb04 	ldr.w	pc, [sp], #4
  4009f0:	2040ead4 	.word	0x2040ead4
  4009f4:	2040fe00 	.word	0x2040fe00

004009f8 <port_config>:
  4009f8:	b510      	push	{r4, lr}
  4009fa:	2000      	movs	r0, #0
  4009fc:	f7ff ff96 	bl	40092c <rom_port_get>
  400a00:	4b08      	ldr	r3, [pc, #32]	@ (400a24 <port_config+0x2c>)
  400a02:	f853 3020 	ldr.w	r3, [r3, r0, lsl #2]
  400a06:	4798      	blx	r3
  400a08:	4604      	mov	r4, r0
  400a0a:	b928      	cbnz	r0, 400a18 <port_config+0x20>
  400a0c:	f640 2249 	movw	r2, #2633	@ 0xa49
  400a10:	4905      	ldr	r1, [pc, #20]	@ (400a28 <port_config+0x30>)
  400a12:	4806      	ldr	r0, [pc, #24]	@ (400a2c <port_config+0x34>)
  400a14:	f450 fca2 	bl	5135c <rt_assert_handler>
  400a18:	4620      	mov	r0, r4
  400a1a:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
  400a1e:	2100      	movs	r1, #0
  400a20:	f450 bc32 	b.w	51288 <rom_config_set_swprofiling+0xb>
  400a24:	0005fdcc 	.word	0x0005fdcc
  400a28:	004013f4 	.word	0x004013f4
  400a2c:	00401396 	.word	0x00401396

00400a30 <bluetooth_config>:
  400a30:	b508      	push	{r3, lr}
  400a32:	f7ff ff8f 	bl	400954 <act_config>
  400a36:	f7ff ffad 	bl	400994 <mem_config>
  400a3a:	f7ff ffdd 	bl	4009f8 <port_config>
  400a3e:	bd08      	pop	{r3, pc}

00400a40 <ptc_save_phase>:
  400a40:	4b07      	ldr	r3, [pc, #28]	@ (400a60 <ptc_save_phase+0x20>)
  400a42:	f8d3 2098 	ldr.w	r2, [r3, #152]	@ 0x98
  400a46:	f3c2 030b 	ubfx	r3, r2, #0, #12
  400a4a:	0512      	lsls	r2, r2, #20
  400a4c:	bf44      	itt	mi
  400a4e:	f483 637f 	eormi.w	r3, r3, #4080	@ 0xff0
  400a52:	f083 030f 	eormi.w	r3, r3, #15
  400a56:	b113      	cbz	r3, 400a5e <ptc_save_phase+0x1e>
  400a58:	4a02      	ldr	r2, [pc, #8]	@ (400a64 <ptc_save_phase+0x24>)
  400a5a:	6812      	ldr	r2, [r2, #0]
  400a5c:	6013      	str	r3, [r2, #0]
  400a5e:	4770      	bx	lr
  400a60:	40084000 	.word	0x40084000
  400a64:	204015f8 	.word	0x204015f8

00400a68 <PTC2_IRQHandler>:
  400a68:	b510      	push	{r4, lr}
  400a6a:	4b07      	ldr	r3, [pc, #28]	@ (400a88 <PTC2_IRQHandler+0x20>)
  400a6c:	681c      	ldr	r4, [r3, #0]
  400a6e:	f451 fff3 	bl	52a58 <rt_interrupt_enter>
  400a72:	07a3      	lsls	r3, r4, #30
  400a74:	d504      	bpl.n	400a80 <PTC2_IRQHandler+0x18>
  400a76:	4805      	ldr	r0, [pc, #20]	@ (400a8c <PTC2_IRQHandler+0x24>)
  400a78:	f7ff fde9 	bl	40064e <HAL_PTC_IRQHandler>
  400a7c:	f7ff ffe0 	bl	400a40 <ptc_save_phase>
  400a80:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
  400a84:	f452 b800 	b.w	52a88 <rt_interrupt_leave>
  400a88:	4000c000 	.word	0x4000c000
  400a8c:	20401aa0 	.word	0x20401aa0

00400a90 <ptc_config>:
  400a90:	b570      	push	{r4, r5, r6, lr}
  400a92:	4616      	mov	r6, r2
  400a94:	221c      	movs	r2, #28
  400a96:	4350      	muls	r0, r2
  400a98:	4d11      	ldr	r5, [pc, #68]	@ (400ae0 <ptc_config+0x50>)
  400a9a:	4a12      	ldr	r2, [pc, #72]	@ (400ae4 <ptc_config+0x54>)
  400a9c:	182c      	adds	r4, r5, r0
  400a9e:	502a      	str	r2, [r5, r0]
  400aa0:	2201      	movs	r2, #1
  400aa2:	7522      	strb	r2, [r4, #20]
  400aa4:	4a10      	ldr	r2, [pc, #64]	@ (400ae8 <ptc_config+0x58>)
  400aa6:	2005      	movs	r0, #5
  400aa8:	6812      	ldr	r2, [r2, #0]
  400aaa:	74e0      	strb	r0, [r4, #19]
  400aac:	60a2      	str	r2, [r4, #8]
  400aae:	2200      	movs	r2, #0
  400ab0:	2012      	movs	r0, #18
  400ab2:	75a1      	strb	r1, [r4, #22]
  400ab4:	4611      	mov	r1, r2
  400ab6:	60e2      	str	r2, [r4, #12]
  400ab8:	74a6      	strb	r6, [r4, #18]
  400aba:	8223      	strh	r3, [r4, #16]
  400abc:	f401 faf6 	bl	20ac <HAL_NVIC_SetPriority>
  400ac0:	4620      	mov	r0, r4
  400ac2:	f7ff fd7f 	bl	4005c4 <HAL_PTC_Init>
  400ac6:	b128      	cbz	r0, 400ad4 <ptc_config+0x44>
  400ac8:	f240 125f 	movw	r2, #351	@ 0x15f
  400acc:	4907      	ldr	r1, [pc, #28]	@ (400aec <ptc_config+0x5c>)
  400ace:	4808      	ldr	r0, [pc, #32]	@ (400af0 <ptc_config+0x60>)
  400ad0:	f450 fc44 	bl	5135c <rt_assert_handler>
  400ad4:	4620      	mov	r0, r4
  400ad6:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
  400ada:	2101      	movs	r1, #1
  400adc:	f7ff bd92 	b.w	400604 <HAL_PTC_Enable>
  400ae0:	20401aa0 	.word	0x20401aa0
  400ae4:	4000c000 	.word	0x4000c000
  400ae8:	204015f8 	.word	0x204015f8
  400aec:	0040140d 	.word	0x0040140d
  400af0:	00401399 	.word	0x00401399

00400af4 <rf_ptc_config>:
  400af4:	b510      	push	{r4, lr}
  400af6:	b128      	cbz	r0, 400b04 <rf_ptc_config+0x10>
  400af8:	2200      	movs	r2, #0
  400afa:	4b08      	ldr	r3, [pc, #32]	@ (400b1c <rf_ptc_config+0x28>)
  400afc:	681b      	ldr	r3, [r3, #0]
  400afe:	601a      	str	r2, [r3, #0]
  400b00:	605a      	str	r2, [r3, #4]
  400b02:	811a      	strh	r2, [r3, #8]
  400b04:	2038      	movs	r0, #56	@ 0x38
  400b06:	f7ff fe3b 	bl	400780 <HAL_RCC_EnableModule>
  400b0a:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
  400b0e:	2300      	movs	r3, #0
  400b10:	2169      	movs	r1, #105	@ 0x69
  400b12:	461a      	mov	r2, r3
  400b14:	4618      	mov	r0, r3
  400b16:	f7ff bfbb 	b.w	400a90 <ptc_config>
  400b1a:	bf00      	nop
  400b1c:	204015f8 	.word	0x204015f8

00400b20 <hcpu2lcpu_notification_callback>:
  400b20:	2907      	cmp	r1, #7
  400b22:	b510      	push	{r4, lr}
  400b24:	460c      	mov	r4, r1
  400b26:	d904      	bls.n	400b32 <hcpu2lcpu_notification_callback+0x12>
  400b28:	2234      	movs	r2, #52	@ 0x34
  400b2a:	490a      	ldr	r1, [pc, #40]	@ (400b54 <hcpu2lcpu_notification_callback+0x34>)
  400b2c:	480a      	ldr	r0, [pc, #40]	@ (400b58 <hcpu2lcpu_notification_callback+0x38>)
  400b2e:	f450 fc15 	bl	5135c <rt_assert_handler>
  400b32:	4b0a      	ldr	r3, [pc, #40]	@ (400b5c <hcpu2lcpu_notification_callback+0x3c>)
  400b34:	6a5a      	ldr	r2, [r3, #36]	@ 0x24
  400b36:	40e2      	lsrs	r2, r4
  400b38:	07d2      	lsls	r2, r2, #31
  400b3a:	d503      	bpl.n	400b44 <hcpu2lcpu_notification_callback+0x24>
  400b3c:	b91c      	cbnz	r4, 400b46 <hcpu2lcpu_notification_callback+0x26>
  400b3e:	6a98      	ldr	r0, [r3, #40]	@ 0x28
  400b40:	f415 fdfe 	bl	16740 <ipc_queue_data_ind_rom>
  400b44:	bd10      	pop	{r4, pc}
  400b46:	eb03 0384 	add.w	r3, r3, r4, lsl #2
  400b4a:	6a98      	ldr	r0, [r3, #40]	@ 0x28
  400b4c:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
  400b50:	f415 bdda 	b.w	16708 <ipc_queue_data_ind>
  400b54:	00401418 	.word	0x00401418
  400b58:	004013a2 	.word	0x004013a2
  400b5c:	2040e498 	.word	0x2040e498

00400b60 <HCPU2LCPU_IRQHandler>:
  400b60:	b508      	push	{r3, lr}
  400b62:	f451 ff79 	bl	52a58 <rt_interrupt_enter>
  400b66:	4803      	ldr	r0, [pc, #12]	@ (400b74 <HCPU2LCPU_IRQHandler+0x14>)
  400b68:	f7ff fd19 	bl	40059e <HAL_MAILBOX_IRQHandler>
  400b6c:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
  400b70:	f451 bf8a 	b.w	52a88 <rt_interrupt_leave>
  400b74:	204015fc 	.word	0x204015fc

00400b78 <sys_init_debug_trigger>:
  400b78:	b508      	push	{r3, lr}
  400b7a:	4a06      	ldr	r2, [pc, #24]	@ (400b94 <sys_init_debug_trigger+0x1c>)
  400b7c:	4806      	ldr	r0, [pc, #24]	@ (400b98 <sys_init_debug_trigger+0x20>)
  400b7e:	6913      	ldr	r3, [r2, #16]
  400b80:	f043 5300 	orr.w	r3, r3, #536870912	@ 0x20000000
  400b84:	6113      	str	r3, [r2, #16]
  400b86:	f450 fc07 	bl	51398 <rt_assert_set_hook>
  400b8a:	4804      	ldr	r0, [pc, #16]	@ (400b9c <sys_init_debug_trigger+0x24>)
  400b8c:	f451 fd40 	bl	52610 <rt_hw_exception_install>
  400b90:	2000      	movs	r0, #0
  400b92:	bd08      	pop	{r3, pc}
  400b94:	4000f000 	.word	0x4000f000
  400b98:	00400bc1 	.word	0x00400bc1
  400b9c:	00400ba1 	.word	0x00400ba1

00400ba0 <exception_handler>:
  400ba0:	b510      	push	{r4, lr}
  400ba2:	4c06      	ldr	r4, [pc, #24]	@ (400bbc <exception_handler+0x1c>)
  400ba4:	6923      	ldr	r3, [r4, #16]
  400ba6:	005b      	lsls	r3, r3, #1
  400ba8:	d406      	bmi.n	400bb8 <exception_handler+0x18>
  400baa:	2001      	movs	r0, #1
  400bac:	f401 fa22 	bl	1ff4 <HAL_LPAON_WakeCore>
  400bb0:	6923      	ldr	r3, [r4, #16]
  400bb2:	f043 5380 	orr.w	r3, r3, #268435456	@ 0x10000000
  400bb6:	6123      	str	r3, [r4, #16]
  400bb8:	2001      	movs	r0, #1
  400bba:	bd10      	pop	{r4, pc}
  400bbc:	4000f000 	.word	0x4000f000

00400bc0 <assert_hook>:
  400bc0:	b510      	push	{r4, lr}
  400bc2:	4c08      	ldr	r4, [pc, #32]	@ (400be4 <assert_hook+0x24>)
  400bc4:	6923      	ldr	r3, [r4, #16]
  400bc6:	005b      	lsls	r3, r3, #1
  400bc8:	d40a      	bmi.n	400be0 <assert_hook+0x20>
  400bca:	2001      	movs	r0, #1
  400bcc:	f401 fa12 	bl	1ff4 <HAL_LPAON_WakeCore>
  400bd0:	6923      	ldr	r3, [r4, #16]
  400bd2:	f043 5380 	orr.w	r3, r3, #268435456	@ 0x10000000
  400bd6:	6123      	str	r3, [r4, #16]
  400bd8:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
  400bdc:	f000 bb1e 	b.w	40121c <rt_hw_fatal_error>
  400be0:	bd10      	pop	{r4, pc}
  400be2:	bf00      	nop
  400be4:	4000f000 	.word	0x4000f000

00400be8 <DBG_Trigger_IRQHandler>:
  400be8:	b508      	push	{r3, lr}
  400bea:	f451 ff35 	bl	52a58 <rt_interrupt_enter>
  400bee:	f240 123f 	movw	r2, #319	@ 0x13f
  400bf2:	4904      	ldr	r1, [pc, #16]	@ (400c04 <DBG_Trigger_IRQHandler+0x1c>)
  400bf4:	4804      	ldr	r0, [pc, #16]	@ (400c08 <DBG_Trigger_IRQHandler+0x20>)
  400bf6:	f450 fbb1 	bl	5135c <rt_assert_handler>
  400bfa:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
  400bfe:	f451 bf43 	b.w	52a88 <rt_interrupt_leave>
  400c02:	bf00      	nop
  400c04:	00401438 	.word	0x00401438
  400c08:	00401394 	.word	0x00401394

00400c0c <sifli_exit_idle>:
  400c0c:	4770      	bx	lr

00400c0e <sifli_resume>:
  400c0e:	4770      	bx	lr

00400c10 <sifli_suspend>:
  400c10:	2901      	cmp	r1, #1
  400c12:	b508      	push	{r3, lr}
  400c14:	d801      	bhi.n	400c1a <sifli_suspend+0xa>
  400c16:	2000      	movs	r0, #0
  400c18:	bd08      	pop	{r3, pc}
  400c1a:	f415 fd2f 	bl	1667c <ipc_queue_check_idle>
  400c1e:	b908      	cbnz	r0, 400c24 <sifli_suspend+0x14>
  400c20:	2007      	movs	r0, #7
  400c22:	e7f9      	b.n	400c18 <sifli_suspend+0x8>
  400c24:	f415 fd48 	bl	166b8 <ipc_queue_check_idle_rom>
  400c28:	2800      	cmp	r0, #0
  400c2a:	d0f9      	beq.n	400c20 <sifli_suspend+0x10>
  400c2c:	4b02      	ldr	r3, [pc, #8]	@ (400c38 <sifli_suspend+0x28>)
  400c2e:	6a5a      	ldr	r2, [r3, #36]	@ 0x24
  400c30:	6a1b      	ldr	r3, [r3, #32]
  400c32:	421a      	tst	r2, r3
  400c34:	d0ef      	beq.n	400c16 <sifli_suspend+0x6>
  400c36:	e7f3      	b.n	400c20 <sifli_suspend+0x10>
  400c38:	40040000 	.word	0x40040000

00400c3c <rt_application_init_power_on_mode>:
  400c3c:	4770      	bx	lr

00400c3e <SystemPowerOnModeInit>:
  400c3e:	b508      	push	{r3, lr}
  400c40:	f000 fc70 	bl	401524 <SystemPowerOnInitLCPU>
  400c44:	bd08      	pop	{r3, pc}
	...

00400c48 <SystemPowerOnModeGet>:
  400c48:	4b01      	ldr	r3, [pc, #4]	@ (400c50 <SystemPowerOnModeGet+0x8>)
  400c4a:	7818      	ldrb	r0, [r3, #0]
  400c4c:	4770      	bx	lr
  400c4e:	bf00      	nop
  400c50:	2040fd54 	.word	0x2040fd54

00400c54 <sifli_standby_handler>:
  400c54:	b510      	push	{r4, lr}
  400c56:	4c0f      	ldr	r4, [pc, #60]	@ (400c94 <sifli_standby_handler+0x40>)
  400c58:	6a23      	ldr	r3, [r4, #32]
  400c5a:	069a      	lsls	r2, r3, #26
  400c5c:	d406      	bmi.n	400c6c <sifli_standby_handler+0x18>
  400c5e:	f459 fdcd 	bl	5a7fc <sifli_standby_handler_core>
  400c62:	6a23      	ldr	r3, [r4, #32]
  400c64:	069b      	lsls	r3, r3, #26
  400c66:	d40b      	bmi.n	400c80 <sifli_standby_handler+0x2c>
  400c68:	2000      	movs	r0, #0
  400c6a:	bd10      	pop	{r4, pc}
  400c6c:	4b0a      	ldr	r3, [pc, #40]	@ (400c98 <sifli_standby_handler+0x44>)
  400c6e:	2b00      	cmp	r3, #0
  400c70:	d0f5      	beq.n	400c5e <sifli_standby_handler+0xa>
  400c72:	f7ff fe4f 	bl	400914 <ble_standby_sleep_pre_handler>
  400c76:	2800      	cmp	r0, #0
  400c78:	d0f1      	beq.n	400c5e <sifli_standby_handler+0xa>
  400c7a:	f04f 30ff 	mov.w	r0, #4294967295
  400c7e:	e7f4      	b.n	400c6a <sifli_standby_handler+0x16>
  400c80:	4c06      	ldr	r4, [pc, #24]	@ (400c9c <sifli_standby_handler+0x48>)
  400c82:	6823      	ldr	r3, [r4, #0]
  400c84:	2b00      	cmp	r3, #0
  400c86:	d0ef      	beq.n	400c68 <sifli_standby_handler+0x14>
  400c88:	f7ff fe46 	bl	400918 <ble_standby_sleep_after_handler>
  400c8c:	2300      	movs	r3, #0
  400c8e:	6023      	str	r3, [r4, #0]
  400c90:	e7ea      	b.n	400c68 <sifli_standby_handler+0x14>
  400c92:	bf00      	nop
  400c94:	40040000 	.word	0x40040000
  400c98:	00400915 	.word	0x00400915
  400c9c:	20401b2c 	.word	0x20401b2c

00400ca0 <low_power_init>:
  400ca0:	b510      	push	{r4, lr}
  400ca2:	2200      	movs	r2, #0
  400ca4:	21fc      	movs	r1, #252	@ 0xfc
  400ca6:	480c      	ldr	r0, [pc, #48]	@ (400cd8 <low_power_init+0x38>)
  400ca8:	f454 fcac 	bl	55604 <rt_system_pm_init>
  400cac:	2001      	movs	r0, #1
  400cae:	490b      	ldr	r1, [pc, #44]	@ (400cdc <low_power_init+0x3c>)
  400cb0:	f453 fa90 	bl	541d4 <rt_pm_policy_register>
  400cb4:	490a      	ldr	r1, [pc, #40]	@ (400ce0 <low_power_init+0x40>)
  400cb6:	2000      	movs	r0, #0
  400cb8:	f453 f9aa 	bl	54010 <rt_pm_device_register>
  400cbc:	f415 fbda 	bl	16474 <init_default_wakeup_src>
  400cc0:	4b08      	ldr	r3, [pc, #32]	@ (400ce4 <low_power_init+0x44>)
  400cc2:	4c09      	ldr	r4, [pc, #36]	@ (400ce8 <low_power_init+0x48>)
  400cc4:	6c9b      	ldr	r3, [r3, #72]	@ 0x48
  400cc6:	60a3      	str	r3, [r4, #8]
  400cc8:	f455 fa8a 	bl	561e0 <rt_tick_get>
  400ccc:	2301      	movs	r3, #1
  400cce:	60e0      	str	r0, [r4, #12]
  400cd0:	7023      	strb	r3, [r4, #0]
  400cd2:	2000      	movs	r0, #0
  400cd4:	bd10      	pop	{r4, pc}
  400cd6:	bf00      	nop
  400cd8:	20401608 	.word	0x20401608
  400cdc:	0040146c 	.word	0x0040146c
  400ce0:	00401460 	.word	0x00401460
  400ce4:	40040000 	.word	0x40040000
  400ce8:	20401b0c 	.word	0x20401b0c

00400cec <sifli_shutdown_handler>:
  400cec:	4770      	bx	lr
	...

00400cf0 <sifli_sleep>:
  400cf0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
  400cf2:	4b2c      	ldr	r3, [pc, #176]	@ (400da4 <sifli_sleep+0xb4>)
  400cf4:	6019      	str	r1, [r3, #0]
  400cf6:	3902      	subs	r1, #2
  400cf8:	2903      	cmp	r1, #3
  400cfa:	d805      	bhi.n	400d08 <sifli_sleep+0x18>
  400cfc:	e8df f001 	tbb	[pc, r1]
  400d00:	0209414a 	.word	0x0209414a
  400d04:	f7ff fff2 	bl	400cec <sifli_shutdown_handler>
  400d08:	4b27      	ldr	r3, [pc, #156]	@ (400da8 <sifli_sleep+0xb8>)
  400d0a:	6a5a      	ldr	r2, [r3, #36]	@ 0x24
  400d0c:	4b27      	ldr	r3, [pc, #156]	@ (400dac <sifli_sleep+0xbc>)
  400d0e:	601a      	str	r2, [r3, #0]
  400d10:	e03f      	b.n	400d92 <sifli_sleep+0xa2>
  400d12:	2009      	movs	r0, #9
  400d14:	f452 ffc0 	bl	53c98 <rt_object_get_information>
  400d18:	4604      	mov	r4, r0
  400d1a:	6845      	ldr	r5, [r0, #4]
  400d1c:	1d07      	adds	r7, r0, #4
  400d1e:	42bd      	cmp	r5, r7
  400d20:	d11d      	bne.n	400d5e <sifli_sleep+0x6e>
  400d22:	4e21      	ldr	r6, [pc, #132]	@ (400da8 <sifli_sleep+0xb8>)
  400d24:	f7ff ff96 	bl	400c54 <sifli_standby_handler>
  400d28:	6cb2      	ldr	r2, [r6, #72]	@ 0x48
  400d2a:	4b21      	ldr	r3, [pc, #132]	@ (400db0 <sifli_sleep+0xc0>)
  400d2c:	4821      	ldr	r0, [pc, #132]	@ (400db4 <sifli_sleep+0xc4>)
  400d2e:	619a      	str	r2, [r3, #24]
  400d30:	f450 ffb0 	bl	51c94 <rt_device_find>
  400d34:	4605      	mov	r5, r0
  400d36:	b118      	cbz	r0, 400d40 <sifli_sleep+0x50>
  400d38:	2204      	movs	r2, #4
  400d3a:	2101      	movs	r1, #1
  400d3c:	f450 ff30 	bl	51ba0 <rt_device_control>
  400d40:	6c73      	ldr	r3, [r6, #68]	@ 0x44
  400d42:	481d      	ldr	r0, [pc, #116]	@ (400db8 <sifli_sleep+0xc8>)
  400d44:	f023 0301 	bic.w	r3, r3, #1
  400d48:	6473      	str	r3, [r6, #68]	@ 0x44
  400d4a:	f400 ffe7 	bl	1d1c <HAL_GPIO_ClearInterrupt>
  400d4e:	6864      	ldr	r4, [r4, #4]
  400d50:	42bc      	cmp	r4, r7
  400d52:	d10c      	bne.n	400d6e <sifli_sleep+0x7e>
  400d54:	f415 fe32 	bl	169bc <ipc_queue_restore_all>
  400d58:	f415 fe64 	bl	16a24 <ipc_queue_restore_all_rom>
  400d5c:	e7d4      	b.n	400d08 <sifli_sleep+0x18>
  400d5e:	f1a5 000c 	sub.w	r0, r5, #12
  400d62:	2204      	movs	r2, #4
  400d64:	2102      	movs	r1, #2
  400d66:	f450 ff1b 	bl	51ba0 <rt_device_control>
  400d6a:	682d      	ldr	r5, [r5, #0]
  400d6c:	e7d7      	b.n	400d1e <sifli_sleep+0x2e>
  400d6e:	f1a4 000c 	sub.w	r0, r4, #12
  400d72:	4285      	cmp	r5, r0
  400d74:	d003      	beq.n	400d7e <sifli_sleep+0x8e>
  400d76:	2204      	movs	r2, #4
  400d78:	2101      	movs	r1, #1
  400d7a:	f450 ff11 	bl	51ba0 <rt_device_control>
  400d7e:	6824      	ldr	r4, [r4, #0]
  400d80:	e7e6      	b.n	400d50 <sifli_sleep+0x60>
  400d82:	f459 fbd9 	bl	5a538 <sifli_deep_handler>
  400d86:	4b08      	ldr	r3, [pc, #32]	@ (400da8 <sifli_sleep+0xb8>)
  400d88:	2800      	cmp	r0, #0
  400d8a:	6c9a      	ldr	r2, [r3, #72]	@ 0x48
  400d8c:	4b08      	ldr	r3, [pc, #32]	@ (400db0 <sifli_sleep+0xc0>)
  400d8e:	619a      	str	r2, [r3, #24]
  400d90:	dbba      	blt.n	400d08 <sifli_sleep+0x18>
  400d92:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
  400d94:	f459 fc1c 	bl	5a5d0 <sifli_light_handler>
  400d98:	4b03      	ldr	r3, [pc, #12]	@ (400da8 <sifli_sleep+0xb8>)
  400d9a:	6c9a      	ldr	r2, [r3, #72]	@ 0x48
  400d9c:	4b04      	ldr	r3, [pc, #16]	@ (400db0 <sifli_sleep+0xc0>)
  400d9e:	619a      	str	r2, [r3, #24]
  400da0:	e7b2      	b.n	400d08 <sifli_sleep+0x18>
  400da2:	bf00      	nop
  400da4:	2040e8c0 	.word	0x2040e8c0
  400da8:	40040000 	.word	0x40040000
  400dac:	2040fd58 	.word	0x2040fd58
  400db0:	20401b0c 	.word	0x20401b0c
  400db4:	004013c9 	.word	0x004013c9
  400db8:	40080000 	.word	0x40080000

00400dbc <pm_set_last_latch_tick>:
  400dbc:	4b01      	ldr	r3, [pc, #4]	@ (400dc4 <pm_set_last_latch_tick+0x8>)
  400dbe:	60d8      	str	r0, [r3, #12]
  400dc0:	4770      	bx	lr
  400dc2:	bf00      	nop
  400dc4:	20401b0c 	.word	0x20401b0c

00400dc8 <AON_IRQHandler>:
  400dc8:	b508      	push	{r3, lr}
  400dca:	f451 fe45 	bl	52a58 <rt_interrupt_enter>
  400dce:	f400 fb09 	bl	13e4 <AON_LCPU_IRQHandler>
  400dd2:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
  400dd6:	f451 be57 	b.w	52a88 <rt_interrupt_leave>

00400dda <wdt_store_exception_information>:
  400dda:	4770      	bx	lr

00400ddc <WDT_IRQHandler>:
  400ddc:	b538      	push	{r3, r4, r5, lr}
  400dde:	4b18      	ldr	r3, [pc, #96]	@ (400e40 <WDT_IRQHandler+0x64>)
  400de0:	681a      	ldr	r2, [r3, #0]
  400de2:	bb2a      	cbnz	r2, 400e30 <WDT_IRQHandler+0x54>
  400de4:	2401      	movs	r4, #1
  400de6:	4d17      	ldr	r5, [pc, #92]	@ (400e44 <WDT_IRQHandler+0x68>)
  400de8:	601c      	str	r4, [r3, #0]
  400dea:	692b      	ldr	r3, [r5, #16]
  400dec:	005a      	lsls	r2, r3, #1
  400dee:	d41f      	bmi.n	400e30 <WDT_IRQHandler+0x54>
  400df0:	f7ff fff3 	bl	400dda <wdt_store_exception_information>
  400df4:	4620      	mov	r0, r4
  400df6:	f401 f8fd 	bl	1ff4 <HAL_LPAON_WakeCore>
  400dfa:	692b      	ldr	r3, [r5, #16]
  400dfc:	4620      	mov	r0, r4
  400dfe:	f043 5380 	orr.w	r3, r3, #268435456	@ 0x10000000
  400e02:	612b      	str	r3, [r5, #16]
  400e04:	4b10      	ldr	r3, [pc, #64]	@ (400e48 <WDT_IRQHandler+0x6c>)
  400e06:	4d11      	ldr	r5, [pc, #68]	@ (400e4c <WDT_IRQHandler+0x70>)
  400e08:	f64b 3481 	movw	r4, #48001	@ 0xbb81
  400e0c:	602b      	str	r3, [r5, #0]
  400e0e:	f000 f833 	bl	400e78 <HAL_Delay>
  400e12:	2234      	movs	r2, #52	@ 0x34
  400e14:	682b      	ldr	r3, [r5, #0]
  400e16:	60da      	str	r2, [r3, #12]
  400e18:	682b      	ldr	r3, [r5, #0]
  400e1a:	695b      	ldr	r3, [r3, #20]
  400e1c:	079b      	lsls	r3, r3, #30
  400e1e:	d408      	bmi.n	400e32 <WDT_IRQHandler+0x56>
  400e20:	2001      	movs	r0, #1
  400e22:	f000 f829 	bl	400e78 <HAL_Delay>
  400e26:	4a07      	ldr	r2, [pc, #28]	@ (400e44 <WDT_IRQHandler+0x68>)
  400e28:	6813      	ldr	r3, [r2, #0]
  400e2a:	f043 0301 	orr.w	r3, r3, #1
  400e2e:	6013      	str	r3, [r2, #0]
  400e30:	bd38      	pop	{r3, r4, r5, pc}
  400e32:	3c01      	subs	r4, #1
  400e34:	d0f4      	beq.n	400e20 <WDT_IRQHandler+0x44>
  400e36:	2001      	movs	r0, #1
  400e38:	f400 ff48 	bl	1ccc <HAL_Delay_us_>
  400e3c:	e7ec      	b.n	400e18 <WDT_IRQHandler+0x3c>
  400e3e:	bf00      	nop
  400e40:	20401b30 	.word	0x20401b30
  400e44:	4000f000 	.word	0x4000f000
  400e48:	4000b000 	.word	0x4000b000
  400e4c:	20401b34 	.word	0x20401b34

00400e50 <lcpu_thread_init_hook>:
  400e50:	b510      	push	{r4, lr}
  400e52:	6ac2      	ldr	r2, [r0, #44]	@ 0x2c
  400e54:	6a81      	ldr	r1, [r0, #40]	@ 0x28
  400e56:	3a04      	subs	r2, #4
  400e58:	4604      	mov	r4, r0
  400e5a:	440a      	add	r2, r1
  400e5c:	4b05      	ldr	r3, [pc, #20]	@ (400e74 <lcpu_thread_init_hook+0x24>)
  400e5e:	e9d0 0108 	ldrd	r0, r1, [r0, #32]
  400e62:	f451 fbfb 	bl	5265c <rt_hw_stack_init>
  400e66:	61e0      	str	r0, [r4, #28]
  400e68:	6aa1      	ldr	r1, [r4, #40]	@ 0x28
  400e6a:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
  400e6e:	f000 b92d 	b.w	4010cc <rt_hw_set_stack_limit>
  400e72:	bf00      	nop
  400e74:	00055ad1 	.word	0x00055ad1

00400e78 <HAL_Delay>:
  400e78:	b507      	push	{r0, r1, r2, lr}
  400e7a:	9001      	str	r0, [sp, #4]
  400e7c:	9b01      	ldr	r3, [sp, #4]
  400e7e:	b913      	cbnz	r3, 400e86 <HAL_Delay+0xe>
  400e80:	b003      	add	sp, #12
  400e82:	f85d fb04 	ldr.w	pc, [sp], #4
  400e86:	f44f 707a 	mov.w	r0, #1000	@ 0x3e8
  400e8a:	f7ff fa45 	bl	400318 <HAL_Delay_us>
  400e8e:	9b01      	ldr	r3, [sp, #4]
  400e90:	3b01      	subs	r3, #1
  400e92:	9301      	str	r3, [sp, #4]
  400e94:	e7f2      	b.n	400e7c <HAL_Delay+0x4>

00400e96 <HAL_InitTick>:
  400e96:	2000      	movs	r0, #0
  400e98:	4770      	bx	lr
	...

00400e9c <SysTick_Handler>:
  400e9c:	b570      	push	{r4, r5, r6, lr}
  400e9e:	4d14      	ldr	r5, [pc, #80]	@ (400ef0 <SysTick_Handler+0x54>)
  400ea0:	f451 fdda 	bl	52a58 <rt_interrupt_enter>
  400ea4:	6a6b      	ldr	r3, [r5, #36]	@ 0x24
  400ea6:	f7ff fa2f 	bl	400308 <HAL_IncTick>
  400eaa:	f455 f999 	bl	561e0 <rt_tick_get>
  400eae:	6aeb      	ldr	r3, [r5, #44]	@ 0x2c
  400eb0:	4604      	mov	r4, r0
  400eb2:	069b      	lsls	r3, r3, #26
  400eb4:	d405      	bmi.n	400ec2 <SysTick_Handler+0x26>
  400eb6:	f455 f99b 	bl	561f0 <rt_tick_increase>
  400eba:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
  400ebe:	f451 bde3 	b.w	52a88 <rt_interrupt_leave>
  400ec2:	6cad      	ldr	r5, [r5, #72]	@ 0x48
  400ec4:	1c46      	adds	r6, r0, #1
  400ec6:	f401 f8a5 	bl	2014 <HAL_LPTIM_GetFreq>
  400eca:	2301      	movs	r3, #1
  400ecc:	4602      	mov	r2, r0
  400ece:	4629      	mov	r1, r5
  400ed0:	4630      	mov	r0, r6
  400ed2:	f44f fd01 	bl	508d8 <pm_latch_tick>
  400ed6:	4284      	cmp	r4, r0
  400ed8:	d0ef      	beq.n	400eba <SysTick_Handler+0x1e>
  400eda:	4286      	cmp	r6, r0
  400edc:	d0eb      	beq.n	400eb6 <SysTick_Handler+0x1a>
  400ede:	f455 f987 	bl	561f0 <rt_tick_increase>
  400ee2:	f455 f985 	bl	561f0 <rt_tick_increase>
  400ee6:	1ca0      	adds	r0, r4, #2
  400ee8:	f7ff ff68 	bl	400dbc <pm_set_last_latch_tick>
  400eec:	e7e5      	b.n	400eba <SysTick_Handler+0x1e>
  400eee:	bf00      	nop
  400ef0:	40040000 	.word	0x40040000

00400ef4 <HAL_AssertFailed>:
  400ef4:	2300      	movs	r3, #0
  400ef6:	b507      	push	{r0, r1, r2, lr}
  400ef8:	f240 222e 	movw	r2, #558	@ 0x22e
  400efc:	4905      	ldr	r1, [pc, #20]	@ (400f14 <HAL_AssertFailed+0x20>)
  400efe:	4806      	ldr	r0, [pc, #24]	@ (400f18 <HAL_AssertFailed+0x24>)
  400f00:	9301      	str	r3, [sp, #4]
  400f02:	f450 fa2b 	bl	5135c <rt_assert_handler>
  400f06:	9b01      	ldr	r3, [sp, #4]
  400f08:	2b00      	cmp	r3, #0
  400f0a:	d0fc      	beq.n	400f06 <HAL_AssertFailed+0x12>
  400f0c:	b003      	add	sp, #12
  400f0e:	f85d fb04 	ldr.w	pc, [sp], #4
  400f12:	bf00      	nop
  400f14:	00401474 	.word	0x00401474
  400f18:	00401394 	.word	0x00401394

00400f1c <rt_hw_preboard_init>:
  400f1c:	4770      	bx	lr
	...

00400f20 <rt_hw_board_init>:
  400f20:	b508      	push	{r3, lr}
  400f22:	f7ff fffb 	bl	400f1c <rt_hw_preboard_init>
  400f26:	f7ff f9de 	bl	4002e6 <HAL_Init>
  400f2a:	4808      	ldr	r0, [pc, #32]	@ (400f4c <rt_hw_board_init+0x2c>)
  400f2c:	f454 ff3e 	bl	55dac <rt_thread_inited_sethook>
  400f30:	f7ff f92f 	bl	400192 <SystemClock_Config>
  400f34:	f451 fbb0 	bl	52698 <rt_hw_systick_init>
  400f38:	f451 fbf8 	bl	5272c <rt_hw_watchdog_init>
  400f3c:	4904      	ldr	r1, [pc, #16]	@ (400f50 <rt_hw_board_init+0x30>)
  400f3e:	4805      	ldr	r0, [pc, #20]	@ (400f54 <rt_hw_board_init+0x34>)
  400f40:	f454 fb12 	bl	55568 <rt_system_heap_init>
  400f44:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
  400f48:	f000 b80e 	b.w	400f68 <rt_components_board_init>
  400f4c:	00400e51 	.word	0x00400e51
  400f50:	20405c00 	.word	0x20405c00
  400f54:	20401d40 	.word	0x20401d40

00400f58 <rti_start>:
  400f58:	2000      	movs	r0, #0
  400f5a:	4770      	bx	lr

00400f5c <rti_board_start>:
  400f5c:	2000      	movs	r0, #0
  400f5e:	4770      	bx	lr

00400f60 <rti_board_end>:
  400f60:	2000      	movs	r0, #0
  400f62:	4770      	bx	lr

00400f64 <rti_end>:
  400f64:	2000      	movs	r0, #0
  400f66:	4770      	bx	lr

00400f68 <rt_components_board_init>:
  400f68:	b538      	push	{r3, r4, r5, lr}
  400f6a:	4c04      	ldr	r4, [pc, #16]	@ (400f7c <rt_components_board_init+0x14>)
  400f6c:	4d04      	ldr	r5, [pc, #16]	@ (400f80 <rt_components_board_init+0x18>)
  400f6e:	42ac      	cmp	r4, r5
  400f70:	d300      	bcc.n	400f74 <rt_components_board_init+0xc>
  400f72:	bd38      	pop	{r3, r4, r5, pc}
  400f74:	f854 3b04 	ldr.w	r3, [r4], #4
  400f78:	4798      	blx	r3
  400f7a:	e7f8      	b.n	400f6e <rt_components_board_init+0x6>
  400f7c:	004015ac 	.word	0x004015ac
  400f80:	004015b0 	.word	0x004015b0

00400f84 <rt_components_init>:
  400f84:	b538      	push	{r3, r4, r5, lr}
  400f86:	4c05      	ldr	r4, [pc, #20]	@ (400f9c <rt_components_init+0x18>)
  400f88:	4d05      	ldr	r5, [pc, #20]	@ (400fa0 <rt_components_init+0x1c>)
  400f8a:	42ac      	cmp	r4, r5
  400f8c:	d300      	bcc.n	400f90 <rt_components_init+0xc>
  400f8e:	bd38      	pop	{r3, r4, r5, pc}
  400f90:	f854 3b04 	ldr.w	r3, [r4], #4
  400f94:	2b00      	cmp	r3, #0
  400f96:	d0f8      	beq.n	400f8a <rt_components_init+0x6>
  400f98:	4798      	blx	r3
  400f9a:	e7f6      	b.n	400f8a <rt_components_init+0x6>
  400f9c:	004015b0 	.word	0x004015b0
  400fa0:	004015d0 	.word	0x004015d0

00400fa4 <main_thread_entry>:
  400fa4:	b513      	push	{r0, r1, r4, lr}
  400fa6:	2402      	movs	r4, #2
  400fa8:	f88d 4006 	strb.w	r4, [sp, #6]
  400fac:	f454 ff4e 	bl	55e4c <rt_thread_self>
  400fb0:	f890 3035 	ldrb.w	r3, [r0, #53]	@ 0x35
  400fb4:	f88d 3007 	strb.w	r3, [sp, #7]
  400fb8:	f454 ff48 	bl	55e4c <rt_thread_self>
  400fbc:	4621      	mov	r1, r4
  400fbe:	f10d 0206 	add.w	r2, sp, #6
  400fc2:	f454 fc57 	bl	55874 <rt_thread_control>
  400fc6:	f7ff ffdd 	bl	400f84 <rt_components_init>
  400fca:	f454 ff3f 	bl	55e4c <rt_thread_self>
  400fce:	4621      	mov	r1, r4
  400fd0:	f10d 0207 	add.w	r2, sp, #7
  400fd4:	f454 fc4e 	bl	55874 <rt_thread_control>
  400fd8:	f7ff f914 	bl	400204 <main>
  400fdc:	b002      	add	sp, #8
  400fde:	bd10      	pop	{r4, pc}

00400fe0 <pre_main>:
  400fe0:	4770      	bx	lr
	...

00400fe4 <rt_application_init>:
  400fe4:	2302      	movs	r3, #2
  400fe6:	2214      	movs	r2, #20
  400fe8:	b513      	push	{r0, r1, r4, lr}
  400fea:	490b      	ldr	r1, [pc, #44]	@ (401018 <rt_application_init+0x34>)
  400fec:	e9cd 3200 	strd	r3, r2, [sp]
  400ff0:	480a      	ldr	r0, [pc, #40]	@ (40101c <rt_application_init+0x38>)
  400ff2:	f44f 6380 	mov.w	r3, #1024	@ 0x400
  400ff6:	2200      	movs	r2, #0
  400ff8:	f454 fc84 	bl	55904 <rt_thread_create>
  400ffc:	4604      	mov	r4, r0
  400ffe:	b928      	cbnz	r0, 40100c <rt_application_init+0x28>
  401000:	f44f 72b3 	mov.w	r2, #358	@ 0x166
  401004:	4906      	ldr	r1, [pc, #24]	@ (401020 <rt_application_init+0x3c>)
  401006:	4807      	ldr	r0, [pc, #28]	@ (401024 <rt_application_init+0x40>)
  401008:	f450 f9a8 	bl	5135c <rt_assert_handler>
  40100c:	4620      	mov	r0, r4
  40100e:	b002      	add	sp, #8
  401010:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
  401014:	f454 bfb8 	b.w	55f88 <rt_thread_startup>
  401018:	00400fa5 	.word	0x00400fa5
  40101c:	004013cd 	.word	0x004013cd
  401020:	00401485 	.word	0x00401485
  401024:	004013d2 	.word	0x004013d2

00401028 <rtthread_startup>:
  401028:	b508      	push	{r3, lr}
  40102a:	f7ff f3d7 	bl	7dc <rt_hw_interrupt_disable>
  40102e:	f7ff fe05 	bl	400c3c <rt_application_init_power_on_mode>
  401032:	f7ff ff75 	bl	400f20 <rt_hw_board_init>
  401036:	f7ff fe07 	bl	400c48 <SystemPowerOnModeGet>
  40103a:	b908      	cbnz	r0, 401040 <rtthread_startup+0x18>
  40103c:	f454 f9f9 	bl	55432 <rt_show_version>
  401040:	f454 fc0e 	bl	55860 <rt_system_timer_init>
  401044:	f454 fbe2 	bl	5580c <rt_system_scheduler_init>
  401048:	f7ff ffcc 	bl	400fe4 <rt_application_init>
  40104c:	f454 fc10 	bl	55870 <rt_system_timer_thread_init>
  401050:	f000 f81e 	bl	401090 <rt_thread_idle_init>
  401054:	f454 fbf0 	bl	55838 <rt_system_scheduler_start>
  401058:	2000      	movs	r0, #0
  40105a:	bd08      	pop	{r3, pc}

0040105c <entry>:
  40105c:	b508      	push	{r3, lr}
  40105e:	f7ff ffbf 	bl	400fe0 <pre_main>
  401062:	f7ff ffe1 	bl	401028 <rtthread_startup>
  401066:	2000      	movs	r0, #0
  401068:	bd08      	pop	{r3, pc}
	...

0040106c <rt_thread_idle_entry>:
  40106c:	b538      	push	{r3, r4, r5, lr}
  40106e:	2400      	movs	r4, #0
  401070:	4d06      	ldr	r5, [pc, #24]	@ (40108c <rt_thread_idle_entry+0x20>)
  401072:	f855 3b04 	ldr.w	r3, [r5], #4
  401076:	b103      	cbz	r3, 40107a <rt_thread_idle_entry+0xe>
  401078:	4798      	blx	r3
  40107a:	3401      	adds	r4, #1
  40107c:	2c04      	cmp	r4, #4
  40107e:	d1f8      	bne.n	401072 <rt_thread_idle_entry+0x6>
  401080:	f454 fdc0 	bl	55c04 <rt_thread_idle_excute>
  401084:	f454 fafe 	bl	55684 <rt_system_power_manager>
  401088:	e7f1      	b.n	40106e <rt_thread_idle_entry+0x2>
  40108a:	bf00      	nop
  40108c:	2040efec 	.word	0x2040efec

00401090 <rt_thread_idle_init>:
  401090:	b51f      	push	{r0, r1, r2, r3, r4, lr}
  401092:	2307      	movs	r3, #7
  401094:	2220      	movs	r2, #32
  401096:	e9cd 3202 	strd	r3, r2, [sp, #8]
  40109a:	f44f 7300 	mov.w	r3, #512	@ 0x200
  40109e:	9301      	str	r3, [sp, #4]
  4010a0:	4b06      	ldr	r3, [pc, #24]	@ (4010bc <rt_thread_idle_init+0x2c>)
  4010a2:	4a07      	ldr	r2, [pc, #28]	@ (4010c0 <rt_thread_idle_init+0x30>)
  4010a4:	9300      	str	r3, [sp, #0]
  4010a6:	4907      	ldr	r1, [pc, #28]	@ (4010c4 <rt_thread_idle_init+0x34>)
  4010a8:	2300      	movs	r3, #0
  4010aa:	4807      	ldr	r0, [pc, #28]	@ (4010c8 <rt_thread_idle_init+0x38>)
  4010ac:	f454 fe42 	bl	55d34 <rt_thread_init>
  4010b0:	4805      	ldr	r0, [pc, #20]	@ (4010c8 <rt_thread_idle_init+0x38>)
  4010b2:	b005      	add	sp, #20
  4010b4:	f85d eb04 	ldr.w	lr, [sp], #4
  4010b8:	f454 bf66 	b.w	55f88 <rt_thread_startup>
  4010bc:	20401b40 	.word	0x20401b40
  4010c0:	0040106d 	.word	0x0040106d
  4010c4:	004013e1 	.word	0x004013e1
  4010c8:	2040ef70 	.word	0x2040ef70

004010cc <rt_hw_set_stack_limit>:
  4010cc:	4770      	bx	lr
  4010ce:	0000      	movs	r0, r0
  4010d0:	f3ef 8010 	mrs	r0, PRIMASK
  4010d4:	b672      	cpsid	i
  4010d6:	4770      	bx	lr
  4010d8:	f380 8810 	msr	PRIMASK, r0
  4010dc:	4770      	bx	lr
  4010de:	bf40      	sev
  4010e0:	4a5f      	ldr	r2, [pc, #380]	@ (401260 <rt_hw_fatal_error+0x44>)
  4010e2:	6813      	ldr	r3, [r2, #0]
  4010e4:	2b01      	cmp	r3, #1
  4010e6:	d004      	beq.n	4010f2 <_reswitch>
  4010e8:	f04f 0301 	mov.w	r3, #1
  4010ec:	6013      	str	r3, [r2, #0]
  4010ee:	4a5d      	ldr	r2, [pc, #372]	@ (401264 <rt_hw_fatal_error+0x48>)
  4010f0:	6010      	str	r0, [r2, #0]

004010f2 <_reswitch>:
  4010f2:	4a5d      	ldr	r2, [pc, #372]	@ (401268 <rt_hw_fatal_error+0x4c>)
  4010f4:	6011      	str	r1, [r2, #0]
  4010f6:	485d      	ldr	r0, [pc, #372]	@ (40126c <rt_hw_fatal_error+0x50>)
  4010f8:	f04f 5180 	mov.w	r1, #268435456	@ 0x10000000
  4010fc:	6001      	str	r1, [r0, #0]
  4010fe:	4770      	bx	lr
  401100:	f3ef 8210 	mrs	r2, PRIMASK
  401104:	b672      	cpsid	i
  401106:	4856      	ldr	r0, [pc, #344]	@ (401260 <rt_hw_fatal_error+0x44>)
  401108:	6801      	ldr	r1, [r0, #0]
  40110a:	b1c9      	cbz	r1, 401140 <pendsv_exit>
  40110c:	f04f 0100 	mov.w	r1, #0
  401110:	6001      	str	r1, [r0, #0]
  401112:	4854      	ldr	r0, [pc, #336]	@ (401264 <rt_hw_fatal_error+0x48>)
  401114:	6801      	ldr	r1, [r0, #0]
  401116:	b149      	cbz	r1, 40112c <switch_to_thread>
  401118:	f3ef 8109 	mrs	r1, PSP
  40111c:	e921 0ff0 	stmdb	r1!, {r4, r5, r6, r7, r8, r9, sl, fp}
  401120:	f3ef 840b 	mrs	r4, PSPLIM
  401124:	f841 4d04 	str.w	r4, [r1, #-4]!
  401128:	6800      	ldr	r0, [r0, #0]
  40112a:	6001      	str	r1, [r0, #0]

0040112c <switch_to_thread>:
  40112c:	494e      	ldr	r1, [pc, #312]	@ (401268 <rt_hw_fatal_error+0x4c>)
  40112e:	6809      	ldr	r1, [r1, #0]
  401130:	6809      	ldr	r1, [r1, #0]
  401132:	c910      	ldmia	r1!, {r4}
  401134:	f384 880b 	msr	PSPLIM, r4
  401138:	e8b1 0ff0 	ldmia.w	r1!, {r4, r5, r6, r7, r8, r9, sl, fp}
  40113c:	f381 8809 	msr	PSP, r1

00401140 <pendsv_exit>:
  401140:	f382 8810 	msr	PRIMASK, r2
  401144:	f04e 0e04 	orr.w	lr, lr, #4
  401148:	4770      	bx	lr
  40114a:	4849      	ldr	r0, [pc, #292]	@ (401270 <rt_hw_fatal_error+0x54>)
  40114c:	f44f 017f 	mov.w	r1, #16711680	@ 0xff0000
  401150:	f8d0 2000 	ldr.w	r2, [r0]
  401154:	ea41 0102 	orr.w	r1, r1, r2
  401158:	6001      	str	r1, [r0, #0]
  40115a:	4770      	bx	lr
  40115c:	4942      	ldr	r1, [pc, #264]	@ (401268 <rt_hw_fatal_error+0x4c>)
  40115e:	6008      	str	r0, [r1, #0]
  401160:	4940      	ldr	r1, [pc, #256]	@ (401264 <rt_hw_fatal_error+0x48>)
  401162:	f04f 0000 	mov.w	r0, #0
  401166:	6008      	str	r0, [r1, #0]
  401168:	493d      	ldr	r1, [pc, #244]	@ (401260 <rt_hw_fatal_error+0x44>)
  40116a:	f04f 0001 	mov.w	r0, #1
  40116e:	6008      	str	r0, [r1, #0]
  401170:	483f      	ldr	r0, [pc, #252]	@ (401270 <rt_hw_fatal_error+0x54>)
  401172:	f44f 017f 	mov.w	r1, #16711680	@ 0xff0000
  401176:	f8d0 2000 	ldr.w	r2, [r0]
  40117a:	ea41 0102 	orr.w	r1, r1, r2
  40117e:	6001      	str	r1, [r0, #0]
  401180:	483a      	ldr	r0, [pc, #232]	@ (40126c <rt_hw_fatal_error+0x50>)
  401182:	f04f 5180 	mov.w	r1, #268435456	@ 0x10000000
  401186:	6001      	str	r1, [r0, #0]
  401188:	483a      	ldr	r0, [pc, #232]	@ (401274 <rt_hw_fatal_error+0x58>)
  40118a:	6800      	ldr	r0, [r0, #0]
  40118c:	6800      	ldr	r0, [r0, #0]
  40118e:	bf00      	nop
  401190:	f380 8808 	msr	MSP, r0
  401194:	b661      	cpsie	f
  401196:	b662      	cpsie	i
  401198:	4770      	bx	lr
  40119a:	bf00      	nop
  40119c:	bf20      	wfe
  40119e:	4770      	bx	lr
  4011a0:	f3ef 8008 	mrs	r0, MSP
  4011a4:	f01e 0f04 	tst.w	lr, #4
  4011a8:	d001      	beq.n	4011ae <_get_sp_done>
  4011aa:	f3ef 8009 	mrs	r0, PSP

004011ae <_get_sp_done>:
  4011ae:	e920 0ff0 	stmdb	r0!, {r4, r5, r6, r7, r8, r9, sl, fp}
  4011b2:	f3ef 840b 	mrs	r4, PSPLIM
  4011b6:	f840 4d04 	str.w	r4, [r0, #-4]!
  4011ba:	f840 ed04 	str.w	lr, [r0, #-4]!
  4011be:	f01e 0f04 	tst.w	lr, #4
  4011c2:	d002      	beq.n	4011ca <_update_msp>
  4011c4:	f380 8809 	msr	PSP, r0
  4011c8:	e001      	b.n	4011ce <_update_done>

004011ca <_update_msp>:
  4011ca:	f380 8808 	msr	MSP, r0

004011ce <_update_done>:
  4011ce:	b500      	push	{lr}
  4011d0:	f451 fa25 	bl	5261e <rt_hw_hard_fault_exception>
  4011d4:	f85d eb04 	ldr.w	lr, [sp], #4
  4011d8:	f04e 0e04 	orr.w	lr, lr, #4
  4011dc:	4770      	bx	lr
  4011de:	f3ef 8008 	mrs	r0, MSP
  4011e2:	f01e 0f04 	tst.w	lr, #4
  4011e6:	d001      	beq.n	4011ec <_mm_get_sp_done>
  4011e8:	f3ef 8009 	mrs	r0, PSP

004011ec <_mm_get_sp_done>:
  4011ec:	e920 0ff0 	stmdb	r0!, {r4, r5, r6, r7, r8, r9, sl, fp}
  4011f0:	f3ef 840b 	mrs	r4, PSPLIM
  4011f4:	f840 4d04 	str.w	r4, [r0, #-4]!
  4011f8:	f840 ed04 	str.w	lr, [r0, #-4]!
  4011fc:	f01e 0f04 	tst.w	lr, #4
  401200:	d002      	beq.n	401208 <_mm_update_msp>
  401202:	f380 8809 	msr	PSP, r0
  401206:	e001      	b.n	40120c <_mm_update_done>

00401208 <_mm_update_msp>:
  401208:	f380 8808 	msr	MSP, r0

0040120c <_mm_update_done>:
  40120c:	b500      	push	{lr}
  40120e:	f451 fa09 	bl	52624 <rt_hw_mem_manage_exception>
  401212:	f85d eb04 	ldr.w	lr, [sp], #4
  401216:	f04e 0e04 	orr.w	lr, lr, #4
  40121a:	4770      	bx	lr

0040121c <rt_hw_fatal_error>:
  40121c:	b410      	push	{r4}
  40121e:	f3ef 8403 	mrs	r4, PSR
  401222:	b410      	push	{r4}
  401224:	467c      	mov	r4, pc
  401226:	b500      	push	{lr}
  401228:	b500      	push	{lr}
  40122a:	f84d cd04 	str.w	ip, [sp, #-4]!
  40122e:	b40f      	push	{r0, r1, r2, r3}
  401230:	9c08      	ldr	r4, [sp, #32]
  401232:	e92d 0ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
  401236:	f3ef 840b 	mrs	r4, PSPLIM
  40123a:	b410      	push	{r4}
  40123c:	4668      	mov	r0, sp
  40123e:	f451 f9ad 	bl	5259c <rt_hw_do_fatal_error>
  401242:	bc10      	pop	{r4}
  401244:	f384 880b 	msr	PSPLIM, r4
  401248:	e8bd 0ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
  40124c:	bc0f      	pop	{r0, r1, r2, r3}
  40124e:	f85d cb04 	ldr.w	ip, [sp], #4
  401252:	f85d eb04 	ldr.w	lr, [sp], #4
  401256:	bc10      	pop	{r4}
  401258:	bc10      	pop	{r4}
  40125a:	bc10      	pop	{r4}
  40125c:	4770      	bx	lr
  40125e:	0000      	.short	0x0000
  401260:	2040f8a4 	.word	0x2040f8a4
  401264:	2040f874 	.word	0x2040f874
  401268:	2040f878 	.word	0x2040f878
  40126c:	e000ed04 	.word	0xe000ed04
  401270:	e000ed20 	.word	0xe000ed20
  401274:	e000ed08 	.word	0xe000ed08

00401278 <memset>:
  401278:	4402      	add	r2, r0
  40127a:	4603      	mov	r3, r0
  40127c:	4293      	cmp	r3, r2
  40127e:	d100      	bne.n	401282 <memset+0xa>
  401280:	4770      	bx	lr
  401282:	f803 1b01 	strb.w	r1, [r3], #1
  401286:	e7f9      	b.n	40127c <memset+0x4>
  401288:	695c3a48 	.word	0x695c3a48
  40128c:	7669646e 	.word	0x7669646e
  401290:	61756469 	.word	0x61756469
  401294:	6f435c6c 	.word	0x6f435c6c
  401298:	535c6564 	.word	0x535c6564
  40129c:	696c4669 	.word	0x696c4669
  4012a0:	4669535c 	.word	0x4669535c
  4012a4:	532d696c 	.word	0x532d696c
  4012a8:	645c4b44 	.word	0x645c4b44
  4012ac:	65766972 	.word	0x65766972
  4012b0:	685c7372 	.word	0x685c7372
  4012b4:	625c6c61 	.word	0x625c6c61
  4012b8:	685f3066 	.word	0x685f3066
  4012bc:	6d5f6c61 	.word	0x6d5f6c61
  4012c0:	626c6961 	.word	0x626c6961
  4012c4:	632e786f 	.word	0x632e786f
  4012c8:	5c3a4800 	.word	0x5c3a4800
  4012cc:	69646e69 	.word	0x69646e69
  4012d0:	75646976 	.word	0x75646976
  4012d4:	435c6c61 	.word	0x435c6c61
  4012d8:	5c65646f 	.word	0x5c65646f
  4012dc:	6c466953 	.word	0x6c466953
  4012e0:	69535c69 	.word	0x69535c69
  4012e4:	2d696c46 	.word	0x2d696c46
  4012e8:	5c4b4453 	.word	0x5c4b4453
  4012ec:	76697264 	.word	0x76697264
  4012f0:	5c737265 	.word	0x5c737265
  4012f4:	5c6c6168 	.word	0x5c6c6168
  4012f8:	5f306662 	.word	0x5f306662
  4012fc:	5f6c6168 	.word	0x5f6c6168
  401300:	6d6e6970 	.word	0x6d6e6970
  401304:	632e7875 	.word	0x632e7875
  401308:	5c3a4800 	.word	0x5c3a4800
  40130c:	69646e69 	.word	0x69646e69
  401310:	75646976 	.word	0x75646976
  401314:	435c6c61 	.word	0x435c6c61
  401318:	5c65646f 	.word	0x5c65646f
  40131c:	6c466953 	.word	0x6c466953
  401320:	69535c69 	.word	0x69535c69
  401324:	2d696c46 	.word	0x2d696c46
  401328:	5c4b4453 	.word	0x5c4b4453
  40132c:	76697264 	.word	0x76697264
  401330:	5c737265 	.word	0x5c737265
  401334:	5c6c6168 	.word	0x5c6c6168
  401338:	5f306662 	.word	0x5f306662
  40133c:	5f6c6168 	.word	0x5f6c6168
  401340:	2e637470 	.word	0x2e637470
  401344:	3a480063 	.word	0x3a480063
  401348:	646e695c 	.word	0x646e695c
  40134c:	64697669 	.word	0x64697669
  401350:	5c6c6175 	.word	0x5c6c6175
  401354:	65646f43 	.word	0x65646f43
  401358:	4669535c 	.word	0x4669535c
  40135c:	535c696c 	.word	0x535c696c
  401360:	696c4669 	.word	0x696c4669
  401364:	4b44532d 	.word	0x4b44532d
  401368:	6972645c 	.word	0x6972645c
  40136c:	73726576 	.word	0x73726576
  401370:	6c61685c 	.word	0x6c61685c
  401374:	3066625c 	.word	0x3066625c
  401378:	6c61685f 	.word	0x6c61685f
  40137c:	6363725f 	.word	0x6363725f
  401380:	6300632e 	.word	0x6300632e
  401384:	626c6c61 	.word	0x626c6c61
  401388:	206b6361 	.word	0x206b6361
  40138c:	4e203d21 	.word	0x4e203d21
  401390:	004c4c55 	.word	0x004c4c55
  401394:	6c740030 	.word	0x6c740030
  401398:	5f545200 	.word	0x5f545200
  40139c:	534c4146 	.word	0x534c4146
  4013a0:	5f710045 	.word	0x5f710045
  4013a4:	20786469 	.word	0x20786469
  4013a8:	5049203c 	.word	0x5049203c
  4013ac:	57485f43 	.word	0x57485f43
  4013b0:	4555515f 	.word	0x4555515f
  4013b4:	4e5f4555 	.word	0x4e5f4555
  4013b8:	48004d55 	.word	0x48004d55
  4013bc:	4f5f4c41 	.word	0x4f5f4c41
  4013c0:	3d3d204b 	.word	0x3d3d204b
  4013c4:	72726520 	.word	0x72726520
  4013c8:	6e697000 	.word	0x6e697000
  4013cc:	69616d00 	.word	0x69616d00
  4013d0:	6974006e 	.word	0x6974006e
  4013d4:	3d212064 	.word	0x3d212064
  4013d8:	5f545220 	.word	0x5f545220
  4013dc:	4c4c554e 	.word	0x4c4c554e
  4013e0:	64697400 	.word	0x64697400
  4013e4:	0000656c 	.word	0x0000656c

004013e8 <g_ble_mac_pm_ops>:
  4013e8:	004008e5 00000000 00000000              ..@.........

004013f4 <__FUNCTION__.0>:
  4013f4:	74726f70 6e6f635f 00676966              port_config.

00401400 <__FUNCTION__.3>:
  401400:	5f6d6f72 74726f70 7465675f               rom_port_get.

0040140d <__FUNCTION__.0>:
  40140d:	5f637470 666e6f63                        ptc_config.

00401418 <__FUNCTION__.0>:
  401418:	75706368 70636c32 6f6e5f75 69666974     hcpu2lcpu_notifi
  401428:	69746163 635f6e6f 626c6c61 006b6361     cation_callback.

00401438 <__FUNCTION__.1>:
  401438:	5f474244 67697254 5f726567 48515249     DBG_Trigger_IRQH
  401448:	6c646e61                                 andler.

0040144f <__FUNCTION__.2>:
  40144f:	705f6d70 725f6e69 6f747365 00006572     pm_pin_restore..
	...

00401460 <sifli_pm_op>:
  401460:	00400c11 00400c0f 00000000              ..@...@.....

0040146c <pm_policy>:
  40146c:	0000000a 00000003                       ........

00401474 <__FUNCTION__.0>:
  401474:	5f4c4148 65737341 61467472 64656c69     HAL_AssertFailed
	...

00401485 <__FUNCTION__.0>:
  401485:	615f7472 696c7070 69746163 695f6e6f     rt_application_i
  401495:	0074696e                                 nit....

0040149c <HAL_PIN_Restore>:
  40149c:	b510      	push	{r4, lr}
  40149e:	4604      	mov	r4, r0
  4014a0:	b920      	cbnz	r0, 4014ac <HAL_PIN_Restore+0x10>
  4014a2:	f640 01b5 	movw	r1, #2229	@ 0x8b5
  4014a6:	480a      	ldr	r0, [pc, #40]	@ (4014d0 <HAL_PIN_Restore+0x34>)
  4014a8:	f7ff fd24 	bl	400ef4 <HAL_AssertFailed>
  4014ac:	6822      	ldr	r2, [r4, #0]
  4014ae:	4b09      	ldr	r3, [pc, #36]	@ (4014d4 <HAL_PIN_Restore+0x38>)
  4014b0:	2000      	movs	r0, #0
  4014b2:	601a      	str	r2, [r3, #0]
  4014b4:	6862      	ldr	r2, [r4, #4]
  4014b6:	605a      	str	r2, [r3, #4]
  4014b8:	68a2      	ldr	r2, [r4, #8]
  4014ba:	609a      	str	r2, [r3, #8]
  4014bc:	68e2      	ldr	r2, [r4, #12]
  4014be:	60da      	str	r2, [r3, #12]
  4014c0:	6922      	ldr	r2, [r4, #16]
  4014c2:	f503 4340 	add.w	r3, r3, #49152	@ 0xc000
  4014c6:	639a      	str	r2, [r3, #56]	@ 0x38
  4014c8:	6962      	ldr	r2, [r4, #20]
  4014ca:	63da      	str	r2, [r3, #60]	@ 0x3c
  4014cc:	bd10      	pop	{r4, pc}
  4014ce:	bf00      	nop
  4014d0:	004012c9 	.word	0x004012c9
  4014d4:	40003000 	.word	0x40003000

004014d8 <sifli_pm_run>:
  4014d8:	4770      	bx	lr

004014da <sifli_enter_idle>:
  4014da:	4770      	bx	lr

004014dc <pm_pin_restore>:
  4014dc:	b508      	push	{r3, lr}
  4014de:	480c      	ldr	r0, [pc, #48]	@ (401510 <pm_pin_restore+0x34>)
  4014e0:	f7ff ffdc 	bl	40149c <HAL_PIN_Restore>
  4014e4:	b128      	cbz	r0, 4014f2 <pm_pin_restore+0x16>
  4014e6:	f44f 72bc 	mov.w	r2, #376	@ 0x178
  4014ea:	490a      	ldr	r1, [pc, #40]	@ (401514 <pm_pin_restore+0x38>)
  4014ec:	480a      	ldr	r0, [pc, #40]	@ (401518 <pm_pin_restore+0x3c>)
  4014ee:	f44f ff35 	bl	5135c <rt_assert_handler>
  4014f2:	2202      	movs	r2, #2
  4014f4:	4909      	ldr	r1, [pc, #36]	@ (40151c <pm_pin_restore+0x40>)
  4014f6:	480a      	ldr	r0, [pc, #40]	@ (401520 <pm_pin_restore+0x44>)
  4014f8:	f7fe ff3e 	bl	400378 <HAL_GPIO_Restore>
  4014fc:	b138      	cbz	r0, 40150e <pm_pin_restore+0x32>
  4014fe:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
  401502:	f44f 72be 	mov.w	r2, #380	@ 0x17c
  401506:	4903      	ldr	r1, [pc, #12]	@ (401514 <pm_pin_restore+0x38>)
  401508:	4803      	ldr	r0, [pc, #12]	@ (401518 <pm_pin_restore+0x3c>)
  40150a:	f44f bf27 	b.w	5135c <rt_assert_handler>
  40150e:	bd08      	pop	{r3, pc}
  401510:	20401abc 	.word	0x20401abc
  401514:	0040144f 	.word	0x0040144f
  401518:	004013bb 	.word	0x004013bb
  40151c:	20401ad4 	.word	0x20401ad4
  401520:	40080000 	.word	0x40080000

00401524 <SystemPowerOnInitLCPU>:
  401524:	b538      	push	{r3, r4, r5, lr}
  401526:	4c16      	ldr	r4, [pc, #88]	@ (401580 <SystemPowerOnInitLCPU+0x5c>)
  401528:	6823      	ldr	r3, [r4, #0]
  40152a:	f003 0303 	and.w	r3, r3, #3
  40152e:	2b03      	cmp	r3, #3
  401530:	4b14      	ldr	r3, [pc, #80]	@ (401584 <SystemPowerOnInitLCPU+0x60>)
  401532:	d002      	beq.n	40153a <SystemPowerOnInitLCPU+0x16>
  401534:	2200      	movs	r2, #0
  401536:	701a      	strb	r2, [r3, #0]
  401538:	bd38      	pop	{r3, r4, r5, pc}
  40153a:	2501      	movs	r5, #1
  40153c:	701d      	strb	r5, [r3, #0]
  40153e:	f455 fbe1 	bl	56d04 <rt_wdt_restore>
  401542:	4a11      	ldr	r2, [pc, #68]	@ (401588 <SystemPowerOnInitLCPU+0x64>)
  401544:	6913      	ldr	r3, [r2, #16]
  401546:	f043 5300 	orr.w	r3, r3, #536870912	@ 0x20000000
  40154a:	6113      	str	r3, [r2, #16]
  40154c:	6c63      	ldr	r3, [r4, #68]	@ 0x44
  40154e:	f023 0302 	bic.w	r3, r3, #2
  401552:	6463      	str	r3, [r4, #68]	@ 0x44
  401554:	f7ff ffc2 	bl	4014dc <pm_pin_restore>
  401558:	6c63      	ldr	r3, [r4, #68]	@ 0x44
  40155a:	f023 0301 	bic.w	r3, r3, #1
  40155e:	6463      	str	r3, [r4, #68]	@ 0x44
  401560:	f7fe fec1 	bl	4002e6 <HAL_Init>
  401564:	f7ff f13a 	bl	7dc <rt_hw_interrupt_disable>
  401568:	4b08      	ldr	r3, [pc, #32]	@ (40158c <SystemPowerOnInitLCPU+0x68>)
  40156a:	601d      	str	r5, [r3, #0]
  40156c:	f7fe fe11 	bl	400192 <SystemClock_Config>
  401570:	f451 f892 	bl	52698 <rt_hw_systick_init>
  401574:	f7ff f16f 	bl	856 <rt_hw_cfg_pendsv_pri>
  401578:	f44f fb80 	bl	50c7c <restore_context>
  40157c:	e7dc      	b.n	401538 <SystemPowerOnInitLCPU+0x14>
  40157e:	bf00      	nop
  401580:	40040000 	.word	0x40040000
  401584:	2040fd54 	.word	0x2040fd54
  401588:	4000f000 	.word	0x4000f000
  40158c:	20401b2c 	.word	0x20401b2c

00401590 <_init>:
  401590:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
  401592:	bf00      	nop
  401594:	bcf8      	pop	{r3, r4, r5, r6, r7}
  401596:	bc08      	pop	{r3}
  401598:	469e      	mov	lr, r3
  40159a:	4770      	bx	lr

0040159c <_fini>:
  40159c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
  40159e:	bf00      	nop
  4015a0:	bcf8      	pop	{r3, r4, r5, r6, r7}
  4015a2:	bc08      	pop	{r3}
  4015a4:	469e      	mov	lr, r3
  4015a6:	4770      	bx	lr

004015a8 <__rt_init_rti_start>:
  4015a8:	0f59 0040                                   Y.@.

004015ac <__rt_init_rti_board_start>:
  4015ac:	0f5d 0040                                   ].@.

004015b0 <__rt_init_rti_board_end>:
  4015b0:	0f61 0040                                   a.@.

004015b4 <__rt_init_low_power_init>:
  4015b4:	0ca1 0040                                   ..@.

004015b8 <__rt_init_libc_system_init>:
  4015b8:	a6e1 0002                                   ....

004015bc <__rt_init_rc10k_cal_init>:
  4015bc:	01c5 0040                                   ..@.

004015c0 <__rt_init_sys_init_lh_bt_audio_queue>:
  4015c0:	aced 0005                                   ....

004015c4 <__rt_init_bt_audiopath_init>:
  4015c4:	07d1 0040                                   ..@.

004015c8 <__rt_init_bluetooth_init>:
  4015c8:	0861 0040                                   a.@.

004015cc <__rt_init_sys_init_debug_trigger>:
  4015cc:	0b79 0040                                   y.@.

004015d0 <__rt_init_rti_end>:
  4015d0:	0f65 0040                                   e.@.

004015d4 <__EH_FRAME_BEGIN__>:
  4015d4:	0000 0000                                   ....
