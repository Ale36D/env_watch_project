
build_sf32lb52-lchspi-ulp_hcpu\bootloader\bootloader.elf:     file format elf32-littlearm


Disassembly of section .text:

20020208 <deregister_tm_clones>:
20020208:	4803      	ldr	r0, [pc, #12]	@ (20020218 <deregister_tm_clones+0x10>)
2002020a:	4b04      	ldr	r3, [pc, #16]	@ (2002021c <deregister_tm_clones+0x14>)
2002020c:	4283      	cmp	r3, r0
2002020e:	d002      	beq.n	20020216 <deregister_tm_clones+0xe>
20020210:	4b03      	ldr	r3, [pc, #12]	@ (20020220 <deregister_tm_clones+0x18>)
20020212:	b103      	cbz	r3, 20020216 <deregister_tm_clones+0xe>
20020214:	4718      	bx	r3
20020216:	4770      	bx	lr
20020218:	200449b8 	.word	0x200449b8
2002021c:	200449b8 	.word	0x200449b8
20020220:	00000000 	.word	0x00000000

20020224 <register_tm_clones>:
20020224:	4b06      	ldr	r3, [pc, #24]	@ (20020240 <register_tm_clones+0x1c>)
20020226:	4907      	ldr	r1, [pc, #28]	@ (20020244 <register_tm_clones+0x20>)
20020228:	1ac9      	subs	r1, r1, r3
2002022a:	1089      	asrs	r1, r1, #2
2002022c:	bf48      	it	mi
2002022e:	3101      	addmi	r1, #1
20020230:	1049      	asrs	r1, r1, #1
20020232:	d003      	beq.n	2002023c <register_tm_clones+0x18>
20020234:	4b04      	ldr	r3, [pc, #16]	@ (20020248 <register_tm_clones+0x24>)
20020236:	b10b      	cbz	r3, 2002023c <register_tm_clones+0x18>
20020238:	4801      	ldr	r0, [pc, #4]	@ (20020240 <register_tm_clones+0x1c>)
2002023a:	4718      	bx	r3
2002023c:	4770      	bx	lr
2002023e:	bf00      	nop
20020240:	200449b8 	.word	0x200449b8
20020244:	200449b8 	.word	0x200449b8
20020248:	00000000 	.word	0x00000000

2002024c <__do_global_dtors_aux>:
2002024c:	b510      	push	{r4, lr}
2002024e:	4c06      	ldr	r4, [pc, #24]	@ (20020268 <__do_global_dtors_aux+0x1c>)
20020250:	7823      	ldrb	r3, [r4, #0]
20020252:	b943      	cbnz	r3, 20020266 <__do_global_dtors_aux+0x1a>
20020254:	f7ff ffd8 	bl	20020208 <deregister_tm_clones>
20020258:	4b04      	ldr	r3, [pc, #16]	@ (2002026c <__do_global_dtors_aux+0x20>)
2002025a:	b113      	cbz	r3, 20020262 <__do_global_dtors_aux+0x16>
2002025c:	4804      	ldr	r0, [pc, #16]	@ (20020270 <__do_global_dtors_aux+0x24>)
2002025e:	f3af 8000 	nop.w
20020262:	2301      	movs	r3, #1
20020264:	7023      	strb	r3, [r4, #0]
20020266:	bd10      	pop	{r4, pc}
20020268:	200449b8 	.word	0x200449b8
2002026c:	00000000 	.word	0x00000000
20020270:	2002c4b4 	.word	0x2002c4b4

20020274 <frame_dummy>:
20020274:	b508      	push	{r3, lr}
20020276:	4b05      	ldr	r3, [pc, #20]	@ (2002028c <frame_dummy+0x18>)
20020278:	b11b      	cbz	r3, 20020282 <frame_dummy+0xe>
2002027a:	4905      	ldr	r1, [pc, #20]	@ (20020290 <frame_dummy+0x1c>)
2002027c:	4805      	ldr	r0, [pc, #20]	@ (20020294 <frame_dummy+0x20>)
2002027e:	f3af 8000 	nop.w
20020282:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
20020286:	f7ff bfcd 	b.w	20020224 <register_tm_clones>
2002028a:	bf00      	nop
2002028c:	00000000 	.word	0x00000000
20020290:	200449bc 	.word	0x200449bc
20020294:	2002c4b4 	.word	0x2002c4b4

20020298 <boot_uart_tx>:
20020298:	2300      	movs	r3, #0
2002029a:	b510      	push	{r4, lr}
2002029c:	4293      	cmp	r3, r2
2002029e:	db00      	blt.n	200202a2 <boot_uart_tx+0xa>
200202a0:	bd10      	pop	{r4, pc}
200202a2:	69c4      	ldr	r4, [r0, #28]
200202a4:	0624      	lsls	r4, r4, #24
200202a6:	d5fc      	bpl.n	200202a2 <boot_uart_tx+0xa>
200202a8:	5ccc      	ldrb	r4, [r1, r3]
200202aa:	3301      	adds	r3, #1
200202ac:	6284      	str	r4, [r0, #40]	@ 0x28
200202ae:	e7f5      	b.n	2002029c <boot_uart_tx+0x4>

200202b0 <boot_error>:
200202b0:	b507      	push	{r0, r1, r2, lr}
200202b2:	2201      	movs	r2, #1
200202b4:	f88d 0007 	strb.w	r0, [sp, #7]
200202b8:	f10d 0107 	add.w	r1, sp, #7
200202bc:	480e      	ldr	r0, [pc, #56]	@ (200202f8 <boot_error+0x48>)
200202be:	f7ff ffeb 	bl	20020298 <boot_uart_tx>
200202c2:	4b0e      	ldr	r3, [pc, #56]	@ (200202fc <boot_error+0x4c>)
200202c4:	f8d3 2088 	ldr.w	r2, [r3, #136]	@ 0x88
200202c8:	f002 0203 	and.w	r2, r2, #3
200202cc:	2a03      	cmp	r2, #3
200202ce:	f102 0101 	add.w	r1, r2, #1
200202d2:	d00f      	beq.n	200202f4 <boot_error+0x44>
200202d4:	f8d3 2088 	ldr.w	r2, [r3, #136]	@ 0x88
200202d8:	f022 0203 	bic.w	r2, r2, #3
200202dc:	f8c3 2088 	str.w	r2, [r3, #136]	@ 0x88
200202e0:	f8d3 2088 	ldr.w	r2, [r3, #136]	@ 0x88
200202e4:	430a      	orrs	r2, r1
200202e6:	f8c3 2088 	str.w	r2, [r3, #136]	@ 0x88
200202ea:	f00c f92b 	bl	2002c544 <HAL_PMU_Reboot>
200202ee:	b003      	add	sp, #12
200202f0:	f85d fb04 	ldr.w	pc, [sp], #4
200202f4:	e7fe      	b.n	200202f4 <boot_error+0x44>
200202f6:	bf00      	nop
200202f8:	50084000 	.word	0x50084000
200202fc:	500ca000 	.word	0x500ca000

20020300 <HAL_MspInit>:
20020300:	2234      	movs	r2, #52	@ 0x34
20020302:	4b01      	ldr	r3, [pc, #4]	@ (20020308 <HAL_MspInit+0x8>)
20020304:	60da      	str	r2, [r3, #12]
20020306:	4770      	bx	lr
20020308:	50094000 	.word	0x50094000

2002030c <mpu_config>:
2002030c:	4770      	bx	lr

2002030e <cache_enable>:
2002030e:	4770      	bx	lr

20020310 <board_pinmux_mpi1_puya_base>:
20020310:	b510      	push	{r4, lr}
20020312:	2301      	movs	r3, #1
20020314:	2200      	movs	r2, #0
20020316:	2103      	movs	r1, #3
20020318:	2002      	movs	r0, #2
2002031a:	f004 fc7f 	bl	20024c1c <HAL_PIN_Set>
2002031e:	2301      	movs	r3, #1
20020320:	2200      	movs	r2, #0
20020322:	4619      	mov	r1, r3
20020324:	200a      	movs	r0, #10
20020326:	f004 fc79 	bl	20024c1c <HAL_PIN_Set>
2002032a:	2301      	movs	r3, #1
2002032c:	2210      	movs	r2, #16
2002032e:	2109      	movs	r1, #9
20020330:	2008      	movs	r0, #8
20020332:	f004 fc73 	bl	20024c1c <HAL_PIN_Set>
20020336:	2301      	movs	r3, #1
20020338:	2210      	movs	r2, #16
2002033a:	210a      	movs	r1, #10
2002033c:	2003      	movs	r0, #3
2002033e:	f004 fc6d 	bl	20024c1c <HAL_PIN_Set>
20020342:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
20020346:	2301      	movs	r3, #1
20020348:	2200      	movs	r2, #0
2002034a:	210c      	movs	r1, #12
2002034c:	200b      	movs	r0, #11
2002034e:	f004 bc65 	b.w	20024c1c <HAL_PIN_Set>

20020352 <board_pinmux_mpi1_puya_ext>:
20020352:	b510      	push	{r4, lr}
20020354:	4604      	mov	r4, r0
20020356:	2101      	movs	r1, #1
20020358:	2005      	movs	r0, #5
2002035a:	f004 fe07 	bl	20024f6c <HAL_PIN_Set_Analog>
2002035e:	2101      	movs	r1, #1
20020360:	2006      	movs	r0, #6
20020362:	f004 fe03 	bl	20024f6c <HAL_PIN_Set_Analog>
20020366:	2101      	movs	r1, #1
20020368:	2007      	movs	r0, #7
2002036a:	f004 fdff 	bl	20024f6c <HAL_PIN_Set_Analog>
2002036e:	2101      	movs	r1, #1
20020370:	2009      	movs	r0, #9
20020372:	f004 fdfb 	bl	20024f6c <HAL_PIN_Set_Analog>
20020376:	2101      	movs	r1, #1
20020378:	200c      	movs	r0, #12
2002037a:	f004 fdf7 	bl	20024f6c <HAL_PIN_Set_Analog>
2002037e:	2101      	movs	r1, #1
20020380:	200d      	movs	r0, #13
20020382:	f004 fdf3 	bl	20024f6c <HAL_PIN_Set_Analog>
20020386:	2101      	movs	r1, #1
20020388:	b154      	cbz	r4, 200203a0 <board_pinmux_mpi1_puya_ext+0x4e>
2002038a:	4608      	mov	r0, r1
2002038c:	f004 fdee 	bl	20024f6c <HAL_PIN_Set_Analog>
20020390:	2301      	movs	r3, #1
20020392:	2230      	movs	r2, #48	@ 0x30
20020394:	210b      	movs	r1, #11
20020396:	2004      	movs	r0, #4
20020398:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
2002039c:	f004 bc3e 	b.w	20024c1c <HAL_PIN_Set>
200203a0:	2004      	movs	r0, #4
200203a2:	f004 fde3 	bl	20024f6c <HAL_PIN_Set_Analog>
200203a6:	2301      	movs	r3, #1
200203a8:	2230      	movs	r2, #48	@ 0x30
200203aa:	210b      	movs	r1, #11
200203ac:	4618      	mov	r0, r3
200203ae:	e7f3      	b.n	20020398 <board_pinmux_mpi1_puya_ext+0x46>

200203b0 <board_pinmux_mpi1_gd>:
200203b0:	b508      	push	{r3, lr}
200203b2:	2200      	movs	r2, #0
200203b4:	2301      	movs	r3, #1
200203b6:	2103      	movs	r1, #3
200203b8:	2005      	movs	r0, #5
200203ba:	f004 fc2f 	bl	20024c1c <HAL_PIN_Set>
200203be:	2301      	movs	r3, #1
200203c0:	2200      	movs	r2, #0
200203c2:	4619      	mov	r1, r3
200203c4:	200a      	movs	r0, #10
200203c6:	f004 fc29 	bl	20024c1c <HAL_PIN_Set>
200203ca:	2301      	movs	r3, #1
200203cc:	2210      	movs	r2, #16
200203ce:	2109      	movs	r1, #9
200203d0:	200c      	movs	r0, #12
200203d2:	f004 fc23 	bl	20024c1c <HAL_PIN_Set>
200203d6:	2301      	movs	r3, #1
200203d8:	2210      	movs	r2, #16
200203da:	210a      	movs	r1, #10
200203dc:	2003      	movs	r0, #3
200203de:	f004 fc1d 	bl	20024c1c <HAL_PIN_Set>
200203e2:	2301      	movs	r3, #1
200203e4:	2230      	movs	r2, #48	@ 0x30
200203e6:	210b      	movs	r1, #11
200203e8:	4618      	mov	r0, r3
200203ea:	f004 fc17 	bl	20024c1c <HAL_PIN_Set>
200203ee:	2301      	movs	r3, #1
200203f0:	2230      	movs	r2, #48	@ 0x30
200203f2:	210c      	movs	r1, #12
200203f4:	2009      	movs	r0, #9
200203f6:	f004 fc11 	bl	20024c1c <HAL_PIN_Set>
200203fa:	2101      	movs	r1, #1
200203fc:	2002      	movs	r0, #2
200203fe:	f004 fdb5 	bl	20024f6c <HAL_PIN_Set_Analog>
20020402:	2101      	movs	r1, #1
20020404:	2004      	movs	r0, #4
20020406:	f004 fdb1 	bl	20024f6c <HAL_PIN_Set_Analog>
2002040a:	2101      	movs	r1, #1
2002040c:	2006      	movs	r0, #6
2002040e:	f004 fdad 	bl	20024f6c <HAL_PIN_Set_Analog>
20020412:	2101      	movs	r1, #1
20020414:	2007      	movs	r0, #7
20020416:	f004 fda9 	bl	20024f6c <HAL_PIN_Set_Analog>
2002041a:	2101      	movs	r1, #1
2002041c:	2008      	movs	r0, #8
2002041e:	f004 fda5 	bl	20024f6c <HAL_PIN_Set_Analog>
20020422:	2101      	movs	r1, #1
20020424:	200b      	movs	r0, #11
20020426:	f004 fda1 	bl	20024f6c <HAL_PIN_Set_Analog>
2002042a:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
2002042e:	2101      	movs	r1, #1
20020430:	200d      	movs	r0, #13
20020432:	f004 bd9b 	b.w	20024f6c <HAL_PIN_Set_Analog>

20020436 <board_pinmux_mpi2>:
20020436:	b510      	push	{r4, lr}
20020438:	2301      	movs	r3, #1
2002043a:	2200      	movs	r2, #0
2002043c:	2119      	movs	r1, #25
2002043e:	201e      	movs	r0, #30
20020440:	f004 fbec 	bl	20024c1c <HAL_PIN_Set>
20020444:	2301      	movs	r3, #1
20020446:	2200      	movs	r2, #0
20020448:	211b      	movs	r1, #27
2002044a:	201a      	movs	r0, #26
2002044c:	f004 fbe6 	bl	20024c1c <HAL_PIN_Set>
20020450:	2301      	movs	r3, #1
20020452:	2210      	movs	r2, #16
20020454:	2121      	movs	r1, #33	@ 0x21
20020456:	201d      	movs	r0, #29
20020458:	f004 fbe0 	bl	20024c1c <HAL_PIN_Set>
2002045c:	2301      	movs	r3, #1
2002045e:	2210      	movs	r2, #16
20020460:	2122      	movs	r1, #34	@ 0x22
20020462:	201b      	movs	r0, #27
20020464:	f004 fbda 	bl	20024c1c <HAL_PIN_Set>
20020468:	2301      	movs	r3, #1
2002046a:	2230      	movs	r2, #48	@ 0x30
2002046c:	2123      	movs	r1, #35	@ 0x23
2002046e:	201c      	movs	r0, #28
20020470:	f004 fbd4 	bl	20024c1c <HAL_PIN_Set>
20020474:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
20020478:	2301      	movs	r3, #1
2002047a:	2230      	movs	r2, #48	@ 0x30
2002047c:	2124      	movs	r1, #36	@ 0x24
2002047e:	201f      	movs	r0, #31
20020480:	f004 bbcc 	b.w	20024c1c <HAL_PIN_Set>

20020484 <board_pinmux_sd>:
20020484:	b510      	push	{r4, lr}
20020486:	2301      	movs	r3, #1
20020488:	2230      	movs	r2, #48	@ 0x30
2002048a:	f44f 71da 	mov.w	r1, #436	@ 0x1b4
2002048e:	201d      	movs	r0, #29
20020490:	f004 fbc4 	bl	20024c1c <HAL_PIN_Set>
20020494:	2014      	movs	r0, #20
20020496:	f001 fe86 	bl	200221a6 <HAL_Delay_us>
2002049a:	2301      	movs	r3, #1
2002049c:	2200      	movs	r2, #0
2002049e:	f44f 71d9 	mov.w	r1, #434	@ 0x1b2
200204a2:	201c      	movs	r0, #28
200204a4:	f004 fbba 	bl	20024c1c <HAL_PIN_Set>
200204a8:	2301      	movs	r3, #1
200204aa:	2230      	movs	r2, #48	@ 0x30
200204ac:	f240 11b5 	movw	r1, #437	@ 0x1b5
200204b0:	201e      	movs	r0, #30
200204b2:	f004 fbb3 	bl	20024c1c <HAL_PIN_Set>
200204b6:	2301      	movs	r3, #1
200204b8:	2230      	movs	r2, #48	@ 0x30
200204ba:	f44f 71db 	mov.w	r1, #438	@ 0x1b6
200204be:	201f      	movs	r0, #31
200204c0:	f004 fbac 	bl	20024c1c <HAL_PIN_Set>
200204c4:	2301      	movs	r3, #1
200204c6:	2230      	movs	r2, #48	@ 0x30
200204c8:	f240 11b7 	movw	r1, #439	@ 0x1b7
200204cc:	201a      	movs	r0, #26
200204ce:	f004 fba5 	bl	20024c1c <HAL_PIN_Set>
200204d2:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
200204d6:	2301      	movs	r3, #1
200204d8:	2230      	movs	r2, #48	@ 0x30
200204da:	f44f 71dc 	mov.w	r1, #440	@ 0x1b8
200204de:	201b      	movs	r0, #27
200204e0:	f004 bb9c 	b.w	20024c1c <HAL_PIN_Set>

200204e4 <board_boot_from>:
200204e4:	b510      	push	{r4, lr}
200204e6:	4b0f      	ldr	r3, [pc, #60]	@ (20020524 <board_boot_from+0x40>)
200204e8:	490f      	ldr	r1, [pc, #60]	@ (20020528 <board_boot_from+0x44>)
200204ea:	685b      	ldr	r3, [r3, #4]
200204ec:	680a      	ldr	r2, [r1, #0]
200204ee:	f3c3 2302 	ubfx	r3, r3, #8, #3
200204f2:	f022 0208 	bic.w	r2, r2, #8
200204f6:	2b07      	cmp	r3, #7
200204f8:	600a      	str	r2, [r1, #0]
200204fa:	d10c      	bne.n	20020516 <board_boot_from+0x32>
200204fc:	2400      	movs	r4, #0
200204fe:	3401      	adds	r4, #1
20020500:	2101      	movs	r1, #1
20020502:	4620      	mov	r0, r4
20020504:	f004 fd32 	bl	20024f6c <HAL_PIN_Set_Analog>
20020508:	2c0d      	cmp	r4, #13
2002050a:	d1f8      	bne.n	200204fe <board_boot_from+0x1a>
2002050c:	2000      	movs	r0, #0
2002050e:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
20020512:	f00b bfd7 	b.w	2002c4c4 <HAL_Get_backup>
20020516:	b11b      	cbz	r3, 20020520 <board_boot_from+0x3c>
20020518:	2b01      	cmp	r3, #1
2002051a:	d1f7      	bne.n	2002050c <board_boot_from+0x28>
2002051c:	2002      	movs	r0, #2
2002051e:	bd10      	pop	{r4, pc}
20020520:	2001      	movs	r0, #1
20020522:	e7fc      	b.n	2002051e <board_boot_from+0x3a>
20020524:	5000b000 	.word	0x5000b000
20020528:	500ca000 	.word	0x500ca000

2002052c <board_flash_power_on>:
2002052c:	4770      	bx	lr

2002052e <board_pinmux_psram_func0>:
2002052e:	b508      	push	{r3, lr}
20020530:	2210      	movs	r2, #16
20020532:	2301      	movs	r3, #1
20020534:	2109      	movs	r1, #9
20020536:	2002      	movs	r0, #2
20020538:	f004 fb70 	bl	20024c1c <HAL_PIN_Set>
2002053c:	2301      	movs	r3, #1
2002053e:	2210      	movs	r2, #16
20020540:	210a      	movs	r1, #10
20020542:	2003      	movs	r0, #3
20020544:	f004 fb6a 	bl	20024c1c <HAL_PIN_Set>
20020548:	2301      	movs	r3, #1
2002054a:	2210      	movs	r2, #16
2002054c:	210b      	movs	r1, #11
2002054e:	2004      	movs	r0, #4
20020550:	f004 fb64 	bl	20024c1c <HAL_PIN_Set>
20020554:	2301      	movs	r3, #1
20020556:	2210      	movs	r2, #16
20020558:	210c      	movs	r1, #12
2002055a:	2005      	movs	r0, #5
2002055c:	f004 fb5e 	bl	20024c1c <HAL_PIN_Set>
20020560:	2301      	movs	r3, #1
20020562:	2210      	movs	r2, #16
20020564:	210d      	movs	r1, #13
20020566:	2006      	movs	r0, #6
20020568:	f004 fb58 	bl	20024c1c <HAL_PIN_Set>
2002056c:	2301      	movs	r3, #1
2002056e:	2210      	movs	r2, #16
20020570:	210e      	movs	r1, #14
20020572:	2007      	movs	r0, #7
20020574:	f004 fb52 	bl	20024c1c <HAL_PIN_Set>
20020578:	2301      	movs	r3, #1
2002057a:	2210      	movs	r2, #16
2002057c:	210f      	movs	r1, #15
2002057e:	2008      	movs	r0, #8
20020580:	f004 fb4c 	bl	20024c1c <HAL_PIN_Set>
20020584:	2210      	movs	r2, #16
20020586:	2301      	movs	r3, #1
20020588:	4611      	mov	r1, r2
2002058a:	2009      	movs	r0, #9
2002058c:	f004 fb46 	bl	20024c1c <HAL_PIN_Set>
20020590:	2301      	movs	r3, #1
20020592:	2210      	movs	r2, #16
20020594:	2106      	movs	r1, #6
20020596:	200a      	movs	r0, #10
20020598:	f004 fb40 	bl	20024c1c <HAL_PIN_Set>
2002059c:	2301      	movs	r3, #1
2002059e:	2200      	movs	r2, #0
200205a0:	4619      	mov	r1, r3
200205a2:	200b      	movs	r0, #11
200205a4:	f004 fb3a 	bl	20024c1c <HAL_PIN_Set>
200205a8:	2301      	movs	r3, #1
200205aa:	2200      	movs	r2, #0
200205ac:	2103      	movs	r1, #3
200205ae:	200c      	movs	r0, #12
200205b0:	f004 fb34 	bl	20024c1c <HAL_PIN_Set>
200205b4:	2101      	movs	r1, #1
200205b6:	4608      	mov	r0, r1
200205b8:	f004 fcd8 	bl	20024f6c <HAL_PIN_Set_Analog>
200205bc:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
200205c0:	2101      	movs	r1, #1
200205c2:	200d      	movs	r0, #13
200205c4:	f004 bcd2 	b.w	20024f6c <HAL_PIN_Set_Analog>

200205c8 <board_pinmux_psram_func1_2_4>:
200205c8:	b510      	push	{r4, lr}
200205ca:	2301      	movs	r3, #1
200205cc:	4604      	mov	r4, r0
200205ce:	2210      	movs	r2, #16
200205d0:	2109      	movs	r1, #9
200205d2:	2002      	movs	r0, #2
200205d4:	f004 fb22 	bl	20024c1c <HAL_PIN_Set>
200205d8:	2301      	movs	r3, #1
200205da:	2210      	movs	r2, #16
200205dc:	210a      	movs	r1, #10
200205de:	2003      	movs	r0, #3
200205e0:	f004 fb1c 	bl	20024c1c <HAL_PIN_Set>
200205e4:	2301      	movs	r3, #1
200205e6:	2210      	movs	r2, #16
200205e8:	210b      	movs	r1, #11
200205ea:	2004      	movs	r0, #4
200205ec:	f004 fb16 	bl	20024c1c <HAL_PIN_Set>
200205f0:	2301      	movs	r3, #1
200205f2:	2210      	movs	r2, #16
200205f4:	210c      	movs	r1, #12
200205f6:	2005      	movs	r0, #5
200205f8:	f004 fb10 	bl	20024c1c <HAL_PIN_Set>
200205fc:	2301      	movs	r3, #1
200205fe:	2210      	movs	r2, #16
20020600:	210d      	movs	r1, #13
20020602:	2009      	movs	r0, #9
20020604:	f004 fb0a 	bl	20024c1c <HAL_PIN_Set>
20020608:	2301      	movs	r3, #1
2002060a:	2210      	movs	r2, #16
2002060c:	210e      	movs	r1, #14
2002060e:	200a      	movs	r0, #10
20020610:	f004 fb04 	bl	20024c1c <HAL_PIN_Set>
20020614:	2301      	movs	r3, #1
20020616:	2210      	movs	r2, #16
20020618:	210f      	movs	r1, #15
2002061a:	200b      	movs	r0, #11
2002061c:	f004 fafe 	bl	20024c1c <HAL_PIN_Set>
20020620:	2210      	movs	r2, #16
20020622:	2301      	movs	r3, #1
20020624:	4611      	mov	r1, r2
20020626:	200c      	movs	r0, #12
20020628:	f004 faf8 	bl	20024c1c <HAL_PIN_Set>
2002062c:	2301      	movs	r3, #1
2002062e:	2200      	movs	r2, #0
20020630:	4619      	mov	r1, r3
20020632:	2008      	movs	r0, #8
20020634:	f004 faf2 	bl	20024c1c <HAL_PIN_Set>
20020638:	2301      	movs	r3, #1
2002063a:	2200      	movs	r2, #0
2002063c:	2103      	movs	r1, #3
2002063e:	2006      	movs	r0, #6
20020640:	f004 faec 	bl	20024c1c <HAL_PIN_Set>
20020644:	2c02      	cmp	r4, #2
20020646:	d013      	beq.n	20020670 <board_pinmux_psram_func1_2_4+0xa8>
20020648:	2c04      	cmp	r4, #4
2002064a:	d025      	beq.n	20020698 <board_pinmux_psram_func1_2_4+0xd0>
2002064c:	2c01      	cmp	r4, #1
2002064e:	d12c      	bne.n	200206aa <board_pinmux_psram_func1_2_4+0xe2>
20020650:	2106      	movs	r1, #6
20020652:	4623      	mov	r3, r4
20020654:	2210      	movs	r2, #16
20020656:	200d      	movs	r0, #13
20020658:	f004 fae0 	bl	20024c1c <HAL_PIN_Set>
2002065c:	4621      	mov	r1, r4
2002065e:	4620      	mov	r0, r4
20020660:	f004 fc84 	bl	20024f6c <HAL_PIN_Set_Analog>
20020664:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
20020668:	2101      	movs	r1, #1
2002066a:	2007      	movs	r0, #7
2002066c:	f004 bc7e 	b.w	20024f6c <HAL_PIN_Set_Analog>
20020670:	2301      	movs	r3, #1
20020672:	2210      	movs	r2, #16
20020674:	2104      	movs	r1, #4
20020676:	4618      	mov	r0, r3
20020678:	f004 fad0 	bl	20024c1c <HAL_PIN_Set>
2002067c:	2301      	movs	r3, #1
2002067e:	2210      	movs	r2, #16
20020680:	2105      	movs	r1, #5
20020682:	200d      	movs	r0, #13
20020684:	f004 faca 	bl	20024c1c <HAL_PIN_Set>
20020688:	4621      	mov	r1, r4
2002068a:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
2002068e:	2301      	movs	r3, #1
20020690:	2200      	movs	r2, #0
20020692:	2007      	movs	r0, #7
20020694:	f004 bac2 	b.w	20024c1c <HAL_PIN_Set>
20020698:	2106      	movs	r1, #6
2002069a:	2301      	movs	r3, #1
2002069c:	2200      	movs	r2, #0
2002069e:	200d      	movs	r0, #13
200206a0:	f004 fabc 	bl	20024c1c <HAL_PIN_Set>
200206a4:	2101      	movs	r1, #1
200206a6:	4608      	mov	r0, r1
200206a8:	e7da      	b.n	20020660 <board_pinmux_psram_func1_2_4+0x98>
200206aa:	bd10      	pop	{r4, pc}

200206ac <board_pinmux_psram_func3>:
200206ac:	b508      	push	{r3, lr}
200206ae:	2301      	movs	r3, #1
200206b0:	2200      	movs	r2, #0
200206b2:	4619      	mov	r1, r3
200206b4:	200a      	movs	r0, #10
200206b6:	f004 fab1 	bl	20024c1c <HAL_PIN_Set>
200206ba:	2301      	movs	r3, #1
200206bc:	2200      	movs	r2, #0
200206be:	2103      	movs	r1, #3
200206c0:	2009      	movs	r0, #9
200206c2:	f004 faab 	bl	20024c1c <HAL_PIN_Set>
200206c6:	2301      	movs	r3, #1
200206c8:	2210      	movs	r2, #16
200206ca:	2109      	movs	r1, #9
200206cc:	2006      	movs	r0, #6
200206ce:	f004 faa5 	bl	20024c1c <HAL_PIN_Set>
200206d2:	2301      	movs	r3, #1
200206d4:	2210      	movs	r2, #16
200206d6:	210a      	movs	r1, #10
200206d8:	2008      	movs	r0, #8
200206da:	f004 fa9f 	bl	20024c1c <HAL_PIN_Set>
200206de:	2301      	movs	r3, #1
200206e0:	2230      	movs	r2, #48	@ 0x30
200206e2:	210b      	movs	r1, #11
200206e4:	2007      	movs	r0, #7
200206e6:	f004 fa99 	bl	20024c1c <HAL_PIN_Set>
200206ea:	2301      	movs	r3, #1
200206ec:	2230      	movs	r2, #48	@ 0x30
200206ee:	210c      	movs	r1, #12
200206f0:	200b      	movs	r0, #11
200206f2:	f004 fa93 	bl	20024c1c <HAL_PIN_Set>
200206f6:	2101      	movs	r1, #1
200206f8:	4608      	mov	r0, r1
200206fa:	f004 fc37 	bl	20024f6c <HAL_PIN_Set_Analog>
200206fe:	2101      	movs	r1, #1
20020700:	2002      	movs	r0, #2
20020702:	f004 fc33 	bl	20024f6c <HAL_PIN_Set_Analog>
20020706:	2101      	movs	r1, #1
20020708:	2003      	movs	r0, #3
2002070a:	f004 fc2f 	bl	20024f6c <HAL_PIN_Set_Analog>
2002070e:	2101      	movs	r1, #1
20020710:	2004      	movs	r0, #4
20020712:	f004 fc2b 	bl	20024f6c <HAL_PIN_Set_Analog>
20020716:	2101      	movs	r1, #1
20020718:	2005      	movs	r0, #5
2002071a:	f004 fc27 	bl	20024f6c <HAL_PIN_Set_Analog>
2002071e:	2101      	movs	r1, #1
20020720:	200c      	movs	r0, #12
20020722:	f004 fc23 	bl	20024f6c <HAL_PIN_Set_Analog>
20020726:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
2002072a:	2101      	movs	r1, #1
2002072c:	200d      	movs	r0, #13
2002072e:	f004 bc1d 	b.w	20024f6c <HAL_PIN_Set_Analog>

20020732 <bootloader_switch_clock>:
20020732:	2102      	movs	r1, #2
20020734:	2004      	movs	r0, #4
20020736:	f004 bd4b 	b.w	200251d0 <HAL_RCC_HCPU_ClockSelect>
	...

2002073c <boot_psram_init>:
2002073c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
20020740:	2400      	movs	r4, #0
20020742:	b08a      	sub	sp, #40	@ 0x28
20020744:	4605      	mov	r5, r0
20020746:	2240      	movs	r2, #64	@ 0x40
20020748:	4621      	mov	r1, r4
2002074a:	4863      	ldr	r0, [pc, #396]	@ (200208d8 <boot_psram_init+0x19c>)
2002074c:	f00a f96e 	bl	2002aa2c <memset>
20020750:	4b62      	ldr	r3, [pc, #392]	@ (200208dc <boot_psram_init+0x1a0>)
20020752:	1ea8      	subs	r0, r5, #2
20020754:	9305      	str	r3, [sp, #20]
20020756:	f04f 5380 	mov.w	r3, #268435456	@ 0x10000000
2002075a:	9307      	str	r3, [sp, #28]
2002075c:	2303      	movs	r3, #3
2002075e:	9406      	str	r4, [sp, #24]
20020760:	9309      	str	r3, [sp, #36]	@ 0x24
20020762:	2804      	cmp	r0, #4
20020764:	d804      	bhi.n	20020770 <boot_psram_init+0x34>
20020766:	e8df f000 	tbb	[pc, r0]
2002076a:	6264      	.short	0x6264
2002076c:	5d04      	.short	0x5d04
2002076e:	60          	.byte	0x60
2002076f:	00          	.byte	0x00
20020770:	e7fe      	b.n	20020770 <boot_psram_init+0x34>
20020772:	2305      	movs	r3, #5
20020774:	9309      	str	r3, [sp, #36]	@ 0x24
20020776:	2304      	movs	r3, #4
20020778:	9d09      	ldr	r5, [sp, #36]	@ 0x24
2002077a:	9308      	str	r3, [sp, #32]
2002077c:	2d03      	cmp	r5, #3
2002077e:	d162      	bne.n	20020846 <boot_psram_init+0x10a>
20020780:	f001 fc32 	bl	20021fe8 <BSP_GetFlash1DIV>
20020784:	a905      	add	r1, sp, #20
20020786:	4602      	mov	r2, r0
20020788:	4853      	ldr	r0, [pc, #332]	@ (200208d8 <boot_psram_init+0x19c>)
2002078a:	f003 ffe3 	bl	20024754 <HAL_OPI_PSRAM_Init>
2002078e:	462a      	mov	r2, r5
20020790:	2108      	movs	r1, #8
20020792:	4851      	ldr	r0, [pc, #324]	@ (200208d8 <boot_psram_init+0x19c>)
20020794:	f003 fed0 	bl	20024538 <HAL_MPI_MR_WRITE>
20020798:	484f      	ldr	r0, [pc, #316]	@ (200208d8 <boot_psram_init+0x19c>)
2002079a:	f003 fbc3 	bl	20023f24 <HAL_QSPI_GET_CLK>
2002079e:	4b50      	ldr	r3, [pc, #320]	@ (200208e0 <boot_psram_init+0x1a4>)
200207a0:	4298      	cmp	r0, r3
200207a2:	d948      	bls.n	20020836 <boot_psram_init+0xfa>
200207a4:	f103 63a4 	add.w	r3, r3, #85983232	@ 0x5200000
200207a8:	f503 4383 	add.w	r3, r3, #16768	@ 0x4180
200207ac:	4298      	cmp	r0, r3
200207ae:	d944      	bls.n	2002083a <boot_psram_init+0xfe>
200207b0:	f103 7337 	add.w	r3, r3, #47972352	@ 0x2dc0000
200207b4:	f503 43d8 	add.w	r3, r3, #27648	@ 0x6c00
200207b8:	4298      	cmp	r0, r3
200207ba:	d940      	bls.n	2002083e <boot_psram_init+0x102>
200207bc:	4b49      	ldr	r3, [pc, #292]	@ (200208e4 <boot_psram_init+0x1a8>)
200207be:	4298      	cmp	r0, r3
200207c0:	d93f      	bls.n	20020842 <boot_psram_init+0x106>
200207c2:	4b49      	ldr	r3, [pc, #292]	@ (200208e8 <boot_psram_init+0x1ac>)
200207c4:	4298      	cmp	r0, r3
200207c6:	bf98      	it	ls
200207c8:	2407      	movls	r4, #7
200207ca:	2600      	movs	r6, #0
200207cc:	2507      	movs	r5, #7
200207ce:	f04f 0803 	mov.w	r8, #3
200207d2:	0067      	lsls	r7, r4, #1
200207d4:	b2ff      	uxtb	r7, r7
200207d6:	1e7a      	subs	r2, r7, #1
200207d8:	4633      	mov	r3, r6
200207da:	b252      	sxtb	r2, r2
200207dc:	4629      	mov	r1, r5
200207de:	483e      	ldr	r0, [pc, #248]	@ (200208d8 <boot_psram_init+0x19c>)
200207e0:	e9cd 5502 	strd	r5, r5, [sp, #8]
200207e4:	e9cd 6800 	strd	r6, r8, [sp]
200207e8:	f002 fa58 	bl	20022c9c <HAL_FLASH_CFG_AHB_RCMD>
200207ec:	4631      	mov	r1, r6
200207ee:	483a      	ldr	r0, [pc, #232]	@ (200208d8 <boot_psram_init+0x19c>)
200207f0:	f002 fa49 	bl	20022c86 <HAL_FLASH_SET_AHB_RCMD>
200207f4:	1e62      	subs	r2, r4, #1
200207f6:	4633      	mov	r3, r6
200207f8:	b252      	sxtb	r2, r2
200207fa:	4629      	mov	r1, r5
200207fc:	4836      	ldr	r0, [pc, #216]	@ (200208d8 <boot_psram_init+0x19c>)
200207fe:	e9cd 5502 	strd	r5, r5, [sp, #8]
20020802:	e9cd 6800 	strd	r6, r8, [sp]
20020806:	f002 fa72 	bl	20022cee <HAL_FLASH_CFG_AHB_WCMD>
2002080a:	2180      	movs	r1, #128	@ 0x80
2002080c:	4832      	ldr	r0, [pc, #200]	@ (200208d8 <boot_psram_init+0x19c>)
2002080e:	f002 fa62 	bl	20022cd6 <HAL_FLASH_SET_AHB_WCMD>
20020812:	4623      	mov	r3, r4
20020814:	463a      	mov	r2, r7
20020816:	2101      	movs	r1, #1
20020818:	482f      	ldr	r0, [pc, #188]	@ (200208d8 <boot_psram_init+0x19c>)
2002081a:	f003 feb1 	bl	20024580 <HAL_MPI_SET_FIXLAT>
2002081e:	b00a      	add	sp, #40	@ 0x28
20020820:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
20020824:	2302      	movs	r3, #2
20020826:	9309      	str	r3, [sp, #36]	@ 0x24
20020828:	e7a6      	b.n	20020778 <boot_psram_init+0x3c>
2002082a:	2306      	movs	r3, #6
2002082c:	9309      	str	r3, [sp, #36]	@ 0x24
2002082e:	2308      	movs	r3, #8
20020830:	e7a2      	b.n	20020778 <boot_psram_init+0x3c>
20020832:	2310      	movs	r3, #16
20020834:	e7a0      	b.n	20020778 <boot_psram_init+0x3c>
20020836:	462c      	mov	r4, r5
20020838:	e7c7      	b.n	200207ca <boot_psram_init+0x8e>
2002083a:	2404      	movs	r4, #4
2002083c:	e7c5      	b.n	200207ca <boot_psram_init+0x8e>
2002083e:	2405      	movs	r4, #5
20020840:	e7c3      	b.n	200207ca <boot_psram_init+0x8e>
20020842:	2406      	movs	r4, #6
20020844:	e7c1      	b.n	200207ca <boot_psram_init+0x8e>
20020846:	2d05      	cmp	r5, #5
20020848:	d10d      	bne.n	20020866 <boot_psram_init+0x12a>
2002084a:	f001 fbcd 	bl	20021fe8 <BSP_GetFlash1DIV>
2002084e:	a905      	add	r1, sp, #20
20020850:	4602      	mov	r2, r0
20020852:	4821      	ldr	r0, [pc, #132]	@ (200208d8 <boot_psram_init+0x19c>)
20020854:	f003 fffa 	bl	2002484c <HAL_LEGACY_PSRAM_Init>
20020858:	481f      	ldr	r0, [pc, #124]	@ (200208d8 <boot_psram_init+0x19c>)
2002085a:	f003 ff03 	bl	20024664 <HAL_LEGACY_CFG_READ>
2002085e:	481e      	ldr	r0, [pc, #120]	@ (200208d8 <boot_psram_init+0x19c>)
20020860:	f003 ff1b 	bl	2002469a <HAL_LEGACY_CFG_WRITE>
20020864:	e7db      	b.n	2002081e <boot_psram_init+0xe2>
20020866:	2d06      	cmp	r5, #6
20020868:	d10d      	bne.n	20020886 <boot_psram_init+0x14a>
2002086a:	f001 fbbd 	bl	20021fe8 <BSP_GetFlash1DIV>
2002086e:	a905      	add	r1, sp, #20
20020870:	4602      	mov	r2, r0
20020872:	4819      	ldr	r0, [pc, #100]	@ (200208d8 <boot_psram_init+0x19c>)
20020874:	f004 f8b6 	bl	200249e4 <HAL_HYPER_PSRAM_Init>
20020878:	4817      	ldr	r0, [pc, #92]	@ (200208d8 <boot_psram_init+0x19c>)
2002087a:	f004 f8ed 	bl	20024a58 <HAL_HYPER_CFG_READ>
2002087e:	4816      	ldr	r0, [pc, #88]	@ (200208d8 <boot_psram_init+0x19c>)
20020880:	f004 f8fc 	bl	20024a7c <HAL_HYPER_CFG_WRITE>
20020884:	e7cb      	b.n	2002081e <boot_psram_init+0xe2>
20020886:	f001 fbaf 	bl	20021fe8 <BSP_GetFlash1DIV>
2002088a:	2500      	movs	r5, #0
2002088c:	2403      	movs	r4, #3
2002088e:	2701      	movs	r7, #1
20020890:	2602      	movs	r6, #2
20020892:	4602      	mov	r2, r0
20020894:	a905      	add	r1, sp, #20
20020896:	4810      	ldr	r0, [pc, #64]	@ (200208d8 <boot_psram_init+0x19c>)
20020898:	f003 fdf8 	bl	2002448c <HAL_SPI_PSRAM_Init>
2002089c:	462b      	mov	r3, r5
2002089e:	2206      	movs	r2, #6
200208a0:	4621      	mov	r1, r4
200208a2:	e9cd 4702 	strd	r4, r7, [sp, #8]
200208a6:	e9cd 5600 	strd	r5, r6, [sp]
200208aa:	480b      	ldr	r0, [pc, #44]	@ (200208d8 <boot_psram_init+0x19c>)
200208ac:	f002 f9f6 	bl	20022c9c <HAL_FLASH_CFG_AHB_RCMD>
200208b0:	21eb      	movs	r1, #235	@ 0xeb
200208b2:	4809      	ldr	r0, [pc, #36]	@ (200208d8 <boot_psram_init+0x19c>)
200208b4:	f002 f9e7 	bl	20022c86 <HAL_FLASH_SET_AHB_RCMD>
200208b8:	4621      	mov	r1, r4
200208ba:	462b      	mov	r3, r5
200208bc:	462a      	mov	r2, r5
200208be:	e9cd 4702 	strd	r4, r7, [sp, #8]
200208c2:	e9cd 5600 	strd	r5, r6, [sp]
200208c6:	4804      	ldr	r0, [pc, #16]	@ (200208d8 <boot_psram_init+0x19c>)
200208c8:	f002 fa11 	bl	20022cee <HAL_FLASH_CFG_AHB_WCMD>
200208cc:	2138      	movs	r1, #56	@ 0x38
200208ce:	4802      	ldr	r0, [pc, #8]	@ (200208d8 <boot_psram_init+0x19c>)
200208d0:	f002 fa01 	bl	20022cd6 <HAL_FLASH_SET_AHB_WCMD>
200208d4:	e7a3      	b.n	2002081e <boot_psram_init+0xe2>
200208d6:	bf00      	nop
200208d8:	200449d4 	.word	0x200449d4
200208dc:	50041000 	.word	0x50041000
200208e0:	07de2901 	.word	0x07de2901
200208e4:	13c9eb01 	.word	0x13c9eb01
200208e8:	17d78401 	.word	0x17d78401

200208ec <board_init_psram>:
200208ec:	b510      	push	{r4, lr}
200208ee:	4b15      	ldr	r3, [pc, #84]	@ (20020944 <board_init_psram+0x58>)
200208f0:	685c      	ldr	r4, [r3, #4]
200208f2:	f3c4 2402 	ubfx	r4, r4, #8, #3
200208f6:	1ea3      	subs	r3, r4, #2
200208f8:	2b04      	cmp	r3, #4
200208fa:	d821      	bhi.n	20020940 <board_init_psram+0x54>
200208fc:	e8df f003 	tbb	[pc, r3]
20020900:	03151b1d 	.word	0x03151b1d
20020904:	19          	.byte	0x19
20020905:	00          	.byte	0x00
20020906:	f7ff fed1 	bl	200206ac <board_pinmux_psram_func3>
2002090a:	2201      	movs	r2, #1
2002090c:	2000      	movs	r0, #0
2002090e:	4611      	mov	r1, r2
20020910:	f00b fdde 	bl	2002c4d0 <HAL_PMU_ConfigPeriLdo>
20020914:	2001      	movs	r0, #1
20020916:	f7ff ff0c 	bl	20020732 <bootloader_switch_clock>
2002091a:	2002      	movs	r0, #2
2002091c:	f001 fb70 	bl	20022000 <BSP_SetFlash1DIV>
20020920:	4620      	mov	r0, r4
20020922:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
20020926:	f7ff bf09 	b.w	2002073c <boot_psram_init>
2002092a:	2002      	movs	r0, #2
2002092c:	f7ff fe4c 	bl	200205c8 <board_pinmux_psram_func1_2_4>
20020930:	e7eb      	b.n	2002090a <board_init_psram+0x1e>
20020932:	2004      	movs	r0, #4
20020934:	e7fa      	b.n	2002092c <board_init_psram+0x40>
20020936:	2001      	movs	r0, #1
20020938:	e7f8      	b.n	2002092c <board_init_psram+0x40>
2002093a:	f7ff fdf8 	bl	2002052e <board_pinmux_psram_func0>
2002093e:	e7e4      	b.n	2002090a <board_init_psram+0x1e>
20020940:	bd10      	pop	{r4, pc}
20020942:	bf00      	nop
20020944:	5000b000 	.word	0x5000b000

20020948 <erase_nor>:
20020948:	4b15      	ldr	r3, [pc, #84]	@ (200209a0 <erase_nor+0x58>)
2002094a:	b570      	push	{r4, r5, r6, lr}
2002094c:	f103 0654 	add.w	r6, r3, #84	@ 0x54
20020950:	f1b0 5f90 	cmp.w	r0, #301989888	@ 0x12000000
20020954:	bf38      	it	cc
20020956:	461e      	movcc	r6, r3
20020958:	6933      	ldr	r3, [r6, #16]
2002095a:	460c      	mov	r4, r1
2002095c:	4283      	cmp	r3, r0
2002095e:	d901      	bls.n	20020964 <erase_nor+0x1c>
20020960:	2001      	movs	r0, #1
20020962:	bd70      	pop	{r4, r5, r6, pc}
20020964:	6972      	ldr	r2, [r6, #20]
20020966:	441a      	add	r2, r3
20020968:	4282      	cmp	r2, r0
2002096a:	d3f9      	bcc.n	20020960 <erase_nor+0x18>
2002096c:	1ac0      	subs	r0, r0, r3
2002096e:	f3c0 030b 	ubfx	r3, r0, #0, #12
20020972:	b97b      	cbnz	r3, 20020994 <erase_nor+0x4c>
20020974:	f3c1 030b 	ubfx	r3, r1, #0, #12
20020978:	b97b      	cbnz	r3, 2002099a <erase_nor+0x52>
2002097a:	1845      	adds	r5, r0, r1
2002097c:	1b29      	subs	r1, r5, r4
2002097e:	b90c      	cbnz	r4, 20020984 <erase_nor+0x3c>
20020980:	4620      	mov	r0, r4
20020982:	e7ee      	b.n	20020962 <erase_nor+0x1a>
20020984:	4630      	mov	r0, r6
20020986:	f003 fa81 	bl	20023e8c <HAL_QSPIEX_SECT_ERASE>
2002098a:	2800      	cmp	r0, #0
2002098c:	d1e8      	bne.n	20020960 <erase_nor+0x18>
2002098e:	f5a4 5480 	sub.w	r4, r4, #4096	@ 0x1000
20020992:	e7f3      	b.n	2002097c <erase_nor+0x34>
20020994:	f04f 30ff 	mov.w	r0, #4294967295
20020998:	e7e3      	b.n	20020962 <erase_nor+0x1a>
2002099a:	f06f 0001 	mvn.w	r0, #1
2002099e:	e7e0      	b.n	20020962 <erase_nor+0x1a>
200209a0:	20046f34 	.word	0x20046f34

200209a4 <write_nor>:
200209a4:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
200209a8:	4b20      	ldr	r3, [pc, #128]	@ (20020a2c <write_nor+0x88>)
200209aa:	460f      	mov	r7, r1
200209ac:	f103 0854 	add.w	r8, r3, #84	@ 0x54
200209b0:	f1b0 5f90 	cmp.w	r0, #301989888	@ 0x12000000
200209b4:	bf38      	it	cc
200209b6:	4698      	movcc	r8, r3
200209b8:	f8d8 5010 	ldr.w	r5, [r8, #16]
200209bc:	4616      	mov	r6, r2
200209be:	4285      	cmp	r5, r0
200209c0:	d902      	bls.n	200209c8 <write_nor+0x24>
200209c2:	2000      	movs	r0, #0
200209c4:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
200209c8:	f8d8 2014 	ldr.w	r2, [r8, #20]
200209cc:	442a      	add	r2, r5
200209ce:	4282      	cmp	r2, r0
200209d0:	d3f7      	bcc.n	200209c2 <write_nor+0x1e>
200209d2:	1b45      	subs	r5, r0, r5
200209d4:	f015 04ff 	ands.w	r4, r5, #255	@ 0xff
200209d8:	d012      	beq.n	20020a00 <write_nor+0x5c>
200209da:	f5c4 7480 	rsb	r4, r4, #256	@ 0x100
200209de:	42b4      	cmp	r4, r6
200209e0:	bf28      	it	cs
200209e2:	4634      	movcs	r4, r6
200209e4:	460a      	mov	r2, r1
200209e6:	4623      	mov	r3, r4
200209e8:	4629      	mov	r1, r5
200209ea:	4640      	mov	r0, r8
200209ec:	f003 f969 	bl	20023cc2 <HAL_QSPIEX_WRITE_PAGE>
200209f0:	4284      	cmp	r4, r0
200209f2:	d1e6      	bne.n	200209c2 <write_nor+0x1e>
200209f4:	4425      	add	r5, r4
200209f6:	4427      	add	r7, r4
200209f8:	1b34      	subs	r4, r6, r4
200209fa:	b91c      	cbnz	r4, 20020a04 <write_nor+0x60>
200209fc:	4630      	mov	r0, r6
200209fe:	e7e1      	b.n	200209c4 <write_nor+0x20>
20020a00:	4634      	mov	r4, r6
20020a02:	e7fa      	b.n	200209fa <write_nor+0x56>
20020a04:	f5b4 7f80 	cmp.w	r4, #256	@ 0x100
20020a08:	46a1      	mov	r9, r4
20020a0a:	bf28      	it	cs
20020a0c:	f44f 7980 	movcs.w	r9, #256	@ 0x100
20020a10:	463a      	mov	r2, r7
20020a12:	464b      	mov	r3, r9
20020a14:	4629      	mov	r1, r5
20020a16:	4640      	mov	r0, r8
20020a18:	f003 f953 	bl	20023cc2 <HAL_QSPIEX_WRITE_PAGE>
20020a1c:	4581      	cmp	r9, r0
20020a1e:	d1d0      	bne.n	200209c2 <write_nor+0x1e>
20020a20:	444d      	add	r5, r9
20020a22:	444f      	add	r7, r9
20020a24:	eba4 0409 	sub.w	r4, r4, r9
20020a28:	e7e7      	b.n	200209fa <write_nor+0x56>
20020a2a:	bf00      	nop
20020a2c:	20046f34 	.word	0x20046f34

20020a30 <read_nor>:
20020a30:	460b      	mov	r3, r1
20020a32:	b510      	push	{r4, lr}
20020a34:	4614      	mov	r4, r2
20020a36:	4601      	mov	r1, r0
20020a38:	4618      	mov	r0, r3
20020a3a:	f00a f811 	bl	2002aa60 <memcpy>
20020a3e:	4620      	mov	r0, r4
20020a40:	bd10      	pop	{r4, pc}
	...

20020a44 <read_nand>:
20020a44:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
20020a48:	2600      	movs	r6, #0
20020a4a:	460f      	mov	r7, r1
20020a4c:	4615      	mov	r5, r2
20020a4e:	46b0      	mov	r8, r6
20020a50:	4b19      	ldr	r3, [pc, #100]	@ (20020ab8 <read_nand+0x74>)
20020a52:	f8df a068 	ldr.w	sl, [pc, #104]	@ 20020abc <read_nand+0x78>
20020a56:	681b      	ldr	r3, [r3, #0]
20020a58:	f8df b064 	ldr.w	fp, [pc, #100]	@ 20020ac0 <read_nand+0x7c>
20020a5c:	691b      	ldr	r3, [r3, #16]
20020a5e:	4604      	mov	r4, r0
20020a60:	4283      	cmp	r3, r0
20020a62:	b085      	sub	sp, #20
20020a64:	bf98      	it	ls
20020a66:	1ac4      	subls	r4, r0, r3
20020a68:	b91d      	cbnz	r5, 20020a72 <read_nand+0x2e>
20020a6a:	4630      	mov	r0, r6
20020a6c:	b005      	add	sp, #20
20020a6e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
20020a72:	f8da 1000 	ldr.w	r1, [sl]
20020a76:	f8db 0000 	ldr.w	r0, [fp]
20020a7a:	42a9      	cmp	r1, r5
20020a7c:	fbb0 fcf1 	udiv	ip, r0, r1
20020a80:	4689      	mov	r9, r1
20020a82:	f101 32ff 	add.w	r2, r1, #4294967295
20020a86:	bf28      	it	cs
20020a88:	46a9      	movcs	r9, r5
20020a8a:	fbb4 f1f1 	udiv	r1, r4, r1
20020a8e:	f10c 3cff 	add.w	ip, ip, #4294967295
20020a92:	fbb4 f0f0 	udiv	r0, r4, r0
20020a96:	e9cd 8801 	strd	r8, r8, [sp, #4]
20020a9a:	f8cd 9000 	str.w	r9, [sp]
20020a9e:	19bb      	adds	r3, r7, r6
20020aa0:	4022      	ands	r2, r4
20020aa2:	ea0c 0101 	and.w	r1, ip, r1
20020aa6:	f004 ffc9 	bl	20025a3c <bbm_read_page>
20020aaa:	4548      	cmp	r0, r9
20020aac:	d1dd      	bne.n	20020a6a <read_nand+0x26>
20020aae:	4406      	add	r6, r0
20020ab0:	1a2d      	subs	r5, r5, r0
20020ab2:	4404      	add	r4, r0
20020ab4:	e7d8      	b.n	20020a68 <read_nand+0x24>
20020ab6:	bf00      	nop
20020ab8:	20046d1c 	.word	0x20046d1c
20020abc:	20042c04 	.word	0x20042c04
20020ac0:	20042c00 	.word	0x20042c00

20020ac4 <read_sdnand>:
20020ac4:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
20020ac8:	4616      	mov	r6, r2
20020aca:	4614      	mov	r4, r2
20020acc:	f100 451e 	add.w	r5, r0, #2650800128	@ 0x9e000000
20020ad0:	188f      	adds	r7, r1, r2
20020ad2:	f5b4 5f00 	cmp.w	r4, #8192	@ 0x2000
20020ad6:	eba7 0804 	sub.w	r8, r7, r4
20020ada:	d221      	bcs.n	20020b20 <read_sdnand+0x5c>
20020adc:	f424 77ff 	bic.w	r7, r4, #510	@ 0x1fe
20020ae0:	f027 0701 	bic.w	r7, r7, #1
20020ae4:	f5b7 6f80 	cmp.w	r7, #1024	@ 0x400
20020ae8:	d309      	bcc.n	20020afe <read_sdnand+0x3a>
20020aea:	463a      	mov	r2, r7
20020aec:	4641      	mov	r1, r8
20020aee:	4628      	mov	r0, r5
20020af0:	f001 f8f2 	bl	20021cd8 <sd_read_multi>
20020af4:	4287      	cmp	r7, r0
20020af6:	d11c      	bne.n	20020b32 <read_sdnand+0x6e>
20020af8:	1be4      	subs	r4, r4, r7
20020afa:	443d      	add	r5, r7
20020afc:	44b8      	add	r8, r7
20020afe:	b16c      	cbz	r4, 20020b1c <read_sdnand+0x58>
20020b00:	f44f 7200 	mov.w	r2, #512	@ 0x200
20020b04:	4628      	mov	r0, r5
20020b06:	490f      	ldr	r1, [pc, #60]	@ (20020b44 <read_sdnand+0x80>)
20020b08:	f001 f86a 	bl	20021be0 <sd_read_data>
20020b0c:	f5b0 7f00 	cmp.w	r0, #512	@ 0x200
20020b10:	d10f      	bne.n	20020b32 <read_sdnand+0x6e>
20020b12:	4622      	mov	r2, r4
20020b14:	4640      	mov	r0, r8
20020b16:	490b      	ldr	r1, [pc, #44]	@ (20020b44 <read_sdnand+0x80>)
20020b18:	f009 ffa2 	bl	2002aa60 <memcpy>
20020b1c:	4630      	mov	r0, r6
20020b1e:	e009      	b.n	20020b34 <read_sdnand+0x70>
20020b20:	f44f 5200 	mov.w	r2, #8192	@ 0x2000
20020b24:	4641      	mov	r1, r8
20020b26:	4628      	mov	r0, r5
20020b28:	f001 f8d6 	bl	20021cd8 <sd_read_multi>
20020b2c:	f5b0 5f00 	cmp.w	r0, #8192	@ 0x2000
20020b30:	d002      	beq.n	20020b38 <read_sdnand+0x74>
20020b32:	2000      	movs	r0, #0
20020b34:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
20020b38:	f5a4 5400 	sub.w	r4, r4, #8192	@ 0x2000
20020b3c:	f505 5500 	add.w	r5, r5, #8192	@ 0x2000
20020b40:	e7c7      	b.n	20020ad2 <read_sdnand+0xe>
20020b42:	bf00      	nop
20020b44:	20046b18 	.word	0x20046b18

20020b48 <read_sdemmc>:
20020b48:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
20020b4c:	f100 461e 	add.w	r6, r0, #2650800128	@ 0x9e000000
20020b50:	460d      	mov	r5, r1
20020b52:	4614      	mov	r4, r2
20020b54:	4617      	mov	r7, r2
20020b56:	46b0      	mov	r8, r6
20020b58:	eb02 0901 	add.w	r9, r2, r1
20020b5c:	f5b7 7f00 	cmp.w	r7, #512	@ 0x200
20020b60:	eba9 0107 	sub.w	r1, r9, r7
20020b64:	d218      	bcs.n	20020b98 <read_sdemmc+0x50>
20020b66:	f3c4 0708 	ubfx	r7, r4, #0, #9
20020b6a:	b197      	cbz	r7, 20020b92 <read_sdemmc+0x4a>
20020b6c:	f424 70ff 	bic.w	r0, r4, #510	@ 0x1fe
20020b70:	f020 0001 	bic.w	r0, r0, #1
20020b74:	f44f 7200 	mov.w	r2, #512	@ 0x200
20020b78:	490c      	ldr	r1, [pc, #48]	@ (20020bac <read_sdemmc+0x64>)
20020b7a:	4430      	add	r0, r6
20020b7c:	f000 fe4a 	bl	20021814 <emmc_read_data>
20020b80:	f424 70ff 	bic.w	r0, r4, #510	@ 0x1fe
20020b84:	f020 0001 	bic.w	r0, r0, #1
20020b88:	463a      	mov	r2, r7
20020b8a:	4908      	ldr	r1, [pc, #32]	@ (20020bac <read_sdemmc+0x64>)
20020b8c:	4428      	add	r0, r5
20020b8e:	f009 ff67 	bl	2002aa60 <memcpy>
20020b92:	4620      	mov	r0, r4
20020b94:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
20020b98:	4640      	mov	r0, r8
20020b9a:	f44f 7200 	mov.w	r2, #512	@ 0x200
20020b9e:	f000 fe39 	bl	20021814 <emmc_read_data>
20020ba2:	f5a7 7700 	sub.w	r7, r7, #512	@ 0x200
20020ba6:	f508 7800 	add.w	r8, r8, #512	@ 0x200
20020baa:	e7d7      	b.n	20020b5c <read_sdemmc+0x14>
20020bac:	20046b18 	.word	0x20046b18

20020bb0 <port_read_page>:
20020bb0:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
20020bb4:	4615      	mov	r5, r2
20020bb6:	460e      	mov	r6, r1
20020bb8:	492a      	ldr	r1, [pc, #168]	@ (20020c64 <port_read_page+0xb4>)
20020bba:	461a      	mov	r2, r3
20020bbc:	e9dd 3c08 	ldrd	r3, ip, [sp, #32]
20020bc0:	680f      	ldr	r7, [r1, #0]
20020bc2:	18e9      	adds	r1, r5, r3
20020bc4:	428f      	cmp	r7, r1
20020bc6:	f8dd e028 	ldr.w	lr, [sp, #40]	@ 0x28
20020bca:	d200      	bcs.n	20020bce <port_read_page+0x1e>
20020bcc:	e7fe      	b.n	20020bcc <port_read_page+0x1c>
20020bce:	4926      	ldr	r1, [pc, #152]	@ (20020c68 <port_read_page+0xb8>)
20020bd0:	f107 0980 	add.w	r9, r7, #128	@ 0x80
20020bd4:	f1b9 0f00 	cmp.w	r9, #0
20020bd8:	6809      	ldr	r1, [r1, #0]
20020bda:	dd17      	ble.n	20020c0c <port_read_page+0x5c>
20020bdc:	4c23      	ldr	r4, [pc, #140]	@ (20020c6c <port_read_page+0xbc>)
20020bde:	6e64      	ldr	r4, [r4, #100]	@ 0x64
20020be0:	f004 081f 	and.w	r8, r4, #31
20020be4:	44c8      	add	r8, r9
20020be6:	f024 041f 	bic.w	r4, r4, #31
20020bea:	f3bf 8f4f 	dsb	sy
20020bee:	f8df a084 	ldr.w	sl, [pc, #132]	@ 20020c74 <port_read_page+0xc4>
20020bf2:	44a0      	add	r8, r4
20020bf4:	f8ca 425c 	str.w	r4, [sl, #604]	@ 0x25c
20020bf8:	3420      	adds	r4, #32
20020bfa:	eba8 0904 	sub.w	r9, r8, r4
20020bfe:	f1b9 0f00 	cmp.w	r9, #0
20020c02:	dcf7      	bgt.n	20020bf4 <port_read_page+0x44>
20020c04:	f3bf 8f4f 	dsb	sy
20020c08:	f3bf 8f6f 	isb	sy
20020c0c:	07c4      	lsls	r4, r0, #31
20020c0e:	d51d      	bpl.n	20020c4c <port_read_page+0x9c>
20020c10:	4c16      	ldr	r4, [pc, #88]	@ (20020c6c <port_read_page+0xbc>)
20020c12:	f894 8083 	ldrb.w	r8, [r4, #131]	@ 0x83
20020c16:	f1b8 0f00 	cmp.w	r8, #0
20020c1a:	d017      	beq.n	20020c4c <port_read_page+0x9c>
20020c1c:	6e64      	ldr	r4, [r4, #100]	@ 0x64
20020c1e:	f504 5880 	add.w	r8, r4, #4096	@ 0x1000
20020c22:	f004 041f 	and.w	r4, r4, #31
20020c26:	f504 6408 	add.w	r4, r4, #2176	@ 0x880
20020c2a:	f028 081f 	bic.w	r8, r8, #31
20020c2e:	f3bf 8f4f 	dsb	sy
20020c32:	f8df 9040 	ldr.w	r9, [pc, #64]	@ 20020c74 <port_read_page+0xc4>
20020c36:	3c20      	subs	r4, #32
20020c38:	2c00      	cmp	r4, #0
20020c3a:	f8c9 825c 	str.w	r8, [r9, #604]	@ 0x25c
20020c3e:	f108 0820 	add.w	r8, r8, #32
20020c42:	dcf8      	bgt.n	20020c36 <port_read_page+0x86>
20020c44:	f3bf 8f4f 	dsb	sy
20020c48:	f3bf 8f6f 	isb	sy
20020c4c:	fb07 5506 	mla	r5, r7, r6, r5
20020c50:	e9cd ce08 	strd	ip, lr, [sp, #32]
20020c54:	fb01 5100 	mla	r1, r1, r0, r5
20020c58:	e8bd 47f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
20020c5c:	4804      	ldr	r0, [pc, #16]	@ (20020c70 <port_read_page+0xc0>)
20020c5e:	f002 bf4e 	b.w	20023afe <HAL_NAND_READ_WITHOOB>
20020c62:	bf00      	nop
20020c64:	20042c04 	.word	0x20042c04
20020c68:	20042c00 	.word	0x20042c00
20020c6c:	20046f34 	.word	0x20046f34
20020c70:	20046f88 	.word	0x20046f88
20020c74:	e000ed00 	.word	0xe000ed00

20020c78 <bbm_get_bb>:
20020c78:	b410      	push	{r4}
20020c7a:	4b1e      	ldr	r3, [pc, #120]	@ (20020cf4 <bbm_get_bb+0x7c>)
20020c7c:	4601      	mov	r1, r0
20020c7e:	6818      	ldr	r0, [r3, #0]
20020c80:	3080      	adds	r0, #128	@ 0x80
20020c82:	2800      	cmp	r0, #0
20020c84:	dd14      	ble.n	20020cb0 <bbm_get_bb+0x38>
20020c86:	4b1c      	ldr	r3, [pc, #112]	@ (20020cf8 <bbm_get_bb+0x80>)
20020c88:	6e5b      	ldr	r3, [r3, #100]	@ 0x64
20020c8a:	f003 021f 	and.w	r2, r3, #31
20020c8e:	4402      	add	r2, r0
20020c90:	f023 031f 	bic.w	r3, r3, #31
20020c94:	f3bf 8f4f 	dsb	sy
20020c98:	4c18      	ldr	r4, [pc, #96]	@ (20020cfc <bbm_get_bb+0x84>)
20020c9a:	441a      	add	r2, r3
20020c9c:	f8c4 325c 	str.w	r3, [r4, #604]	@ 0x25c
20020ca0:	3320      	adds	r3, #32
20020ca2:	1ad0      	subs	r0, r2, r3
20020ca4:	2800      	cmp	r0, #0
20020ca6:	dcf9      	bgt.n	20020c9c <bbm_get_bb+0x24>
20020ca8:	f3bf 8f4f 	dsb	sy
20020cac:	f3bf 8f6f 	isb	sy
20020cb0:	07cb      	lsls	r3, r1, #31
20020cb2:	d51a      	bpl.n	20020cea <bbm_get_bb+0x72>
20020cb4:	4b10      	ldr	r3, [pc, #64]	@ (20020cf8 <bbm_get_bb+0x80>)
20020cb6:	f893 2083 	ldrb.w	r2, [r3, #131]	@ 0x83
20020cba:	b1b2      	cbz	r2, 20020cea <bbm_get_bb+0x72>
20020cbc:	6e5b      	ldr	r3, [r3, #100]	@ 0x64
20020cbe:	f503 5280 	add.w	r2, r3, #4096	@ 0x1000
20020cc2:	f003 031f 	and.w	r3, r3, #31
20020cc6:	f503 6308 	add.w	r3, r3, #2176	@ 0x880
20020cca:	f022 021f 	bic.w	r2, r2, #31
20020cce:	f3bf 8f4f 	dsb	sy
20020cd2:	480a      	ldr	r0, [pc, #40]	@ (20020cfc <bbm_get_bb+0x84>)
20020cd4:	3b20      	subs	r3, #32
20020cd6:	2b00      	cmp	r3, #0
20020cd8:	f8c0 225c 	str.w	r2, [r0, #604]	@ 0x25c
20020cdc:	f102 0220 	add.w	r2, r2, #32
20020ce0:	dcf8      	bgt.n	20020cd4 <bbm_get_bb+0x5c>
20020ce2:	f3bf 8f4f 	dsb	sy
20020ce6:	f3bf 8f6f 	isb	sy
20020cea:	4805      	ldr	r0, [pc, #20]	@ (20020d00 <bbm_get_bb+0x88>)
20020cec:	f85d 4b04 	ldr.w	r4, [sp], #4
20020cf0:	f002 bfc6 	b.w	20023c80 <HAL_NAND_GET_BADBLK>
20020cf4:	20042c04 	.word	0x20042c04
20020cf8:	20046f34 	.word	0x20046f34
20020cfc:	e000ed00 	.word	0xe000ed00
20020d00:	20046f88 	.word	0x20046f88

20020d04 <dfu_flash_init>:
20020d04:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
20020d08:	b08c      	sub	sp, #48	@ 0x30
20020d0a:	f001 ff87 	bl	20022c1c <HAL_HPAON_EnableXT48>
20020d0e:	2101      	movs	r1, #1
20020d10:	2000      	movs	r0, #0
20020d12:	f004 fa5d 	bl	200251d0 <HAL_RCC_HCPU_ClockSelect>
20020d16:	2101      	movs	r1, #1
20020d18:	200c      	movs	r0, #12
20020d1a:	f004 fa59 	bl	200251d0 <HAL_RCC_HCPU_ClockSelect>
20020d1e:	2001      	movs	r0, #1
20020d20:	f004 f954 	bl	20024fcc <HAL_PMU_EnableDLL>
20020d24:	4f9d      	ldr	r7, [pc, #628]	@ (20020f9c <dfu_flash_init+0x298>)
20020d26:	2090      	movs	r0, #144	@ 0x90
20020d28:	f004 fbb4 	bl	20025494 <HAL_RCC_HCPU_ConfigHCLK>
20020d2c:	2000      	movs	r0, #0
20020d2e:	f001 fa3a 	bl	200221a6 <HAL_Delay_us>
20020d32:	683b      	ldr	r3, [r7, #0]
20020d34:	4d9a      	ldr	r5, [pc, #616]	@ (20020fa0 <dfu_flash_init+0x29c>)
20020d36:	3b01      	subs	r3, #1
20020d38:	2b05      	cmp	r3, #5
20020d3a:	f200 811f 	bhi.w	20020f7c <dfu_flash_init+0x278>
20020d3e:	e8df f013 	tbh	[pc, r3, lsl #1]
20020d42:	0006      	.short	0x0006
20020d44:	00790006 	.word	0x00790006
20020d48:	00fa0079 	.word	0x00fa0079
20020d4c:	010e      	.short	0x010e
20020d4e:	4895      	ldr	r0, [pc, #596]	@ (20020fa4 <dfu_flash_init+0x2a0>)
20020d50:	f004 fa06 	bl	20025160 <HAL_RCC_HCPU_EnableDLL2>
20020d54:	4c94      	ldr	r4, [pc, #592]	@ (20020fa8 <dfu_flash_init+0x2a4>)
20020d56:	2006      	movs	r0, #6
20020d58:	f001 f952 	bl	20022000 <BSP_SetFlash1DIV>
20020d5c:	ae07      	add	r6, sp, #28
20020d5e:	2102      	movs	r1, #2
20020d60:	2004      	movs	r0, #4
20020d62:	f004 fa35 	bl	200251d0 <HAL_RCC_HCPU_ClockSelect>
20020d66:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
20020d68:	c60f      	stmia	r6!, {r0, r1, r2, r3}
20020d6a:	f854 3b04 	ldr.w	r3, [r4], #4
20020d6e:	6033      	str	r3, [r6, #0]
20020d70:	ae03      	add	r6, sp, #12
20020d72:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
20020d76:	e886 000f 	stmia.w	r6, {r0, r1, r2, r3}
20020d7a:	2301      	movs	r3, #1
20020d7c:	4c8b      	ldr	r4, [pc, #556]	@ (20020fac <dfu_flash_init+0x2a8>)
20020d7e:	f884 3045 	strb.w	r3, [r4, #69]	@ 0x45
20020d82:	2300      	movs	r3, #0
20020d84:	9308      	str	r3, [sp, #32]
20020d86:	683b      	ldr	r3, [r7, #0]
20020d88:	2b01      	cmp	r3, #1
20020d8a:	d14e      	bne.n	20020e2a <dfu_flash_init+0x126>
20020d8c:	f7ff fac0 	bl	20020310 <board_pinmux_mpi1_puya_base>
20020d90:	f001 f92a 	bl	20021fe8 <BSP_GetFlash1DIV>
20020d94:	4633      	mov	r3, r6
20020d96:	9000      	str	r0, [sp, #0]
20020d98:	4a85      	ldr	r2, [pc, #532]	@ (20020fb0 <dfu_flash_init+0x2ac>)
20020d9a:	4884      	ldr	r0, [pc, #528]	@ (20020fac <dfu_flash_init+0x2a8>)
20020d9c:	a907      	add	r1, sp, #28
20020d9e:	f003 f947 	bl	20024030 <HAL_FLASH_Init>
20020da2:	683e      	ldr	r6, [r7, #0]
20020da4:	2e01      	cmp	r6, #1
20020da6:	d10d      	bne.n	20020dc4 <dfu_flash_init+0xc0>
20020da8:	6c20      	ldr	r0, [r4, #64]	@ 0x40
20020daa:	4b82      	ldr	r3, [pc, #520]	@ (20020fb4 <dfu_flash_init+0x2b0>)
20020dac:	1ac3      	subs	r3, r0, r3
20020dae:	4258      	negs	r0, r3
20020db0:	4158      	adcs	r0, r3
20020db2:	f7ff face 	bl	20020352 <board_pinmux_mpi1_puya_ext>
20020db6:	4631      	mov	r1, r6
20020db8:	487c      	ldr	r0, [pc, #496]	@ (20020fac <dfu_flash_init+0x2a8>)
20020dba:	f002 fb9a 	bl	200234f2 <HAL_FLASH_SET_QUAL_SPI>
20020dbe:	2302      	movs	r3, #2
20020dc0:	f884 3028 	strb.w	r3, [r4, #40]	@ 0x28
20020dc4:	4b7c      	ldr	r3, [pc, #496]	@ (20020fb8 <dfu_flash_init+0x2b4>)
20020dc6:	4a7d      	ldr	r2, [pc, #500]	@ (20020fbc <dfu_flash_init+0x2b8>)
20020dc8:	602b      	str	r3, [r5, #0]
20020dca:	4b7d      	ldr	r3, [pc, #500]	@ (20020fc0 <dfu_flash_init+0x2bc>)
20020dcc:	601a      	str	r2, [r3, #0]
20020dce:	4b7d      	ldr	r3, [pc, #500]	@ (20020fc4 <dfu_flash_init+0x2c0>)
20020dd0:	4a7d      	ldr	r2, [pc, #500]	@ (20020fc8 <dfu_flash_init+0x2c4>)
20020dd2:	601a      	str	r2, [r3, #0]
20020dd4:	4b7d      	ldr	r3, [pc, #500]	@ (20020fcc <dfu_flash_init+0x2c8>)
20020dd6:	6ca2      	ldr	r2, [r4, #72]	@ 0x48
20020dd8:	601a      	str	r2, [r3, #0]
20020dda:	4b7d      	ldr	r3, [pc, #500]	@ (20020fd0 <dfu_flash_init+0x2cc>)
20020ddc:	601c      	str	r4, [r3, #0]
20020dde:	2405      	movs	r4, #5
20020de0:	f8df 81f0 	ldr.w	r8, [pc, #496]	@ 20020fd4 <dfu_flash_init+0x2d0>
20020de4:	4e79      	ldr	r6, [pc, #484]	@ (20020fcc <dfu_flash_init+0x2c8>)
20020de6:	f8df 9220 	ldr.w	r9, [pc, #544]	@ 20021008 <dfu_flash_init+0x304>
20020dea:	682b      	ldr	r3, [r5, #0]
20020dec:	f642 4210 	movw	r2, #11280	@ 0x2c10
20020df0:	4978      	ldr	r1, [pc, #480]	@ (20020fd4 <dfu_flash_init+0x2d0>)
20020df2:	6830      	ldr	r0, [r6, #0]
20020df4:	4798      	blx	r3
20020df6:	f8d8 3000 	ldr.w	r3, [r8]
20020dfa:	454b      	cmp	r3, r9
20020dfc:	f040 80c2 	bne.w	20020f84 <dfu_flash_init+0x280>
20020e00:	683b      	ldr	r3, [r7, #0]
20020e02:	2b04      	cmp	r3, #4
20020e04:	f040 8087 	bne.w	20020f16 <dfu_flash_init+0x212>
20020e08:	f8d8 30a4 	ldr.w	r3, [r8, #164]	@ 0xa4
20020e0c:	1e5a      	subs	r2, r3, #1
20020e0e:	3203      	adds	r2, #3
20020e10:	f200 8081 	bhi.w	20020f16 <dfu_flash_init+0x212>
20020e14:	4a70      	ldr	r2, [pc, #448]	@ (20020fd8 <dfu_flash_init+0x2d4>)
20020e16:	496f      	ldr	r1, [pc, #444]	@ (20020fd4 <dfu_flash_init+0x2d0>)
20020e18:	6013      	str	r3, [r2, #0]
20020e1a:	f642 4210 	movw	r2, #11280	@ 0x2c10
20020e1e:	682b      	ldr	r3, [r5, #0]
20020e20:	6830      	ldr	r0, [r6, #0]
20020e22:	b00c      	add	sp, #48	@ 0x30
20020e24:	e8bd 47f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
20020e28:	4718      	bx	r3
20020e2a:	f7ff fac1 	bl	200203b0 <board_pinmux_mpi1_gd>
20020e2e:	2302      	movs	r3, #2
20020e30:	9308      	str	r3, [sp, #32]
20020e32:	e7ad      	b.n	20020d90 <dfu_flash_init+0x8c>
20020e34:	485b      	ldr	r0, [pc, #364]	@ (20020fa4 <dfu_flash_init+0x2a0>)
20020e36:	f004 f993 	bl	20025160 <HAL_RCC_HCPU_EnableDLL2>
20020e3a:	4c68      	ldr	r4, [pc, #416]	@ (20020fdc <dfu_flash_init+0x2d8>)
20020e3c:	2006      	movs	r0, #6
20020e3e:	f001 f8e5 	bl	2002200c <BSP_SetFlash2DIV>
20020e42:	ae07      	add	r6, sp, #28
20020e44:	2102      	movs	r1, #2
20020e46:	2006      	movs	r0, #6
20020e48:	f004 f9c2 	bl	200251d0 <HAL_RCC_HCPU_ClockSelect>
20020e4c:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
20020e4e:	c60f      	stmia	r6!, {r0, r1, r2, r3}
20020e50:	f854 3b04 	ldr.w	r3, [r4], #4
20020e54:	f8d7 8000 	ldr.w	r8, [r7]
20020e58:	6033      	str	r3, [r6, #0]
20020e5a:	ae03      	add	r6, sp, #12
20020e5c:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
20020e60:	f1b8 0903 	subs.w	r9, r8, #3
20020e64:	e886 000f 	stmia.w	r6, {r0, r1, r2, r3}
20020e68:	bf18      	it	ne
20020e6a:	f04f 0901 	movne.w	r9, #1
20020e6e:	f7ff fae2 	bl	20020436 <board_pinmux_mpi2>
20020e72:	2302      	movs	r3, #2
20020e74:	f1b8 0f03 	cmp.w	r8, #3
20020e78:	4c4c      	ldr	r4, [pc, #304]	@ (20020fac <dfu_flash_init+0x2a8>)
20020e7a:	9308      	str	r3, [sp, #32]
20020e7c:	d04e      	beq.n	20020f1c <dfu_flash_init+0x218>
20020e7e:	4b58      	ldr	r3, [pc, #352]	@ (20020fe0 <dfu_flash_init+0x2dc>)
20020e80:	602b      	str	r3, [r5, #0]
20020e82:	9b09      	ldr	r3, [sp, #36]	@ 0x24
20020e84:	f103 43a0 	add.w	r3, r3, #1342177280	@ 0x50000000
20020e88:	9309      	str	r3, [sp, #36]	@ 0x24
20020e8a:	2301      	movs	r3, #1
20020e8c:	930b      	str	r3, [sp, #44]	@ 0x2c
20020e8e:	4b55      	ldr	r3, [pc, #340]	@ (20020fe4 <dfu_flash_init+0x2e0>)
20020e90:	6723      	str	r3, [r4, #112]	@ 0x70
20020e92:	f04f 0a01 	mov.w	sl, #1
20020e96:	2000      	movs	r0, #0
20020e98:	f001 f985 	bl	200221a6 <HAL_Delay_us>
20020e9c:	f884 a099 	strb.w	sl, [r4, #153]	@ 0x99
20020ea0:	f884 9098 	strb.w	r9, [r4, #152]	@ 0x98
20020ea4:	f001 f8a6 	bl	20021ff4 <BSP_GetFlash2DIV>
20020ea8:	4633      	mov	r3, r6
20020eaa:	9000      	str	r0, [sp, #0]
20020eac:	4a4e      	ldr	r2, [pc, #312]	@ (20020fe8 <dfu_flash_init+0x2e4>)
20020eae:	484f      	ldr	r0, [pc, #316]	@ (20020fec <dfu_flash_init+0x2e8>)
20020eb0:	a907      	add	r1, sp, #28
20020eb2:	f003 f8bd 	bl	20024030 <HAL_FLASH_Init>
20020eb6:	4e4d      	ldr	r6, [pc, #308]	@ (20020fec <dfu_flash_init+0x2e8>)
20020eb8:	bb98      	cbnz	r0, 20020f22 <dfu_flash_init+0x21e>
20020eba:	f1b8 0f03 	cmp.w	r8, #3
20020ebe:	d033      	beq.n	20020f28 <dfu_flash_init+0x224>
20020ec0:	4630      	mov	r0, r6
20020ec2:	f002 fe11 	bl	20023ae8 <HAL_NAND_PAGE_SIZE>
20020ec6:	f8df 9110 	ldr.w	r9, [pc, #272]	@ 20020fd8 <dfu_flash_init+0x2d4>
20020eca:	f8df 8140 	ldr.w	r8, [pc, #320]	@ 2002100c <dfu_flash_init+0x308>
20020ece:	f8c9 0000 	str.w	r0, [r9]
20020ed2:	4630      	mov	r0, r6
20020ed4:	f002 fec8 	bl	20023c68 <HAL_NAND_BLOCK_SIZE>
20020ed8:	4651      	mov	r1, sl
20020eda:	f8c8 0000 	str.w	r0, [r8]
20020ede:	4630      	mov	r0, r6
20020ee0:	f884 a082 	strb.w	sl, [r4, #130]	@ 0x82
20020ee4:	f002 fcc5 	bl	20023872 <HAL_NAND_CONF_ECC>
20020ee8:	f8d9 0000 	ldr.w	r0, [r9]
20020eec:	f005 f88e 	bl	2002600c <bbm_set_page_size>
20020ef0:	f8d8 0000 	ldr.w	r0, [r8]
20020ef4:	f005 f890 	bl	20026018 <bbm_set_blk_size>
20020ef8:	493d      	ldr	r1, [pc, #244]	@ (20020ff0 <dfu_flash_init+0x2ec>)
20020efa:	f8d4 00a0 	ldr.w	r0, [r4, #160]	@ 0xa0
20020efe:	f004 ff27 	bl	20025d50 <sif_bbm_init>
20020f02:	4b32      	ldr	r3, [pc, #200]	@ (20020fcc <dfu_flash_init+0x2c8>)
20020f04:	f8d4 209c 	ldr.w	r2, [r4, #156]	@ 0x9c
20020f08:	601a      	str	r2, [r3, #0]
20020f0a:	4b31      	ldr	r3, [pc, #196]	@ (20020fd0 <dfu_flash_init+0x2cc>)
20020f0c:	601e      	str	r6, [r3, #0]
20020f0e:	682b      	ldr	r3, [r5, #0]
20020f10:	2b00      	cmp	r3, #0
20020f12:	f47f af64 	bne.w	20020dde <dfu_flash_init+0xda>
20020f16:	b00c      	add	sp, #48	@ 0x30
20020f18:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
20020f1c:	4b26      	ldr	r3, [pc, #152]	@ (20020fb8 <dfu_flash_init+0x2b4>)
20020f1e:	602b      	str	r3, [r5, #0]
20020f20:	e7b7      	b.n	20020e92 <dfu_flash_init+0x18e>
20020f22:	f1b8 0f03 	cmp.w	r8, #3
20020f26:	d1ec      	bne.n	20020f02 <dfu_flash_init+0x1fe>
20020f28:	4b25      	ldr	r3, [pc, #148]	@ (20020fc0 <dfu_flash_init+0x2bc>)
20020f2a:	4a24      	ldr	r2, [pc, #144]	@ (20020fbc <dfu_flash_init+0x2b8>)
20020f2c:	601a      	str	r2, [r3, #0]
20020f2e:	4b25      	ldr	r3, [pc, #148]	@ (20020fc4 <dfu_flash_init+0x2c0>)
20020f30:	4a25      	ldr	r2, [pc, #148]	@ (20020fc8 <dfu_flash_init+0x2c4>)
20020f32:	601a      	str	r2, [r3, #0]
20020f34:	e7e5      	b.n	20020f02 <dfu_flash_init+0x1fe>
20020f36:	481b      	ldr	r0, [pc, #108]	@ (20020fa4 <dfu_flash_init+0x2a0>)
20020f38:	f004 f912 	bl	20025160 <HAL_RCC_HCPU_EnableDLL2>
20020f3c:	f7ff faa2 	bl	20020484 <board_pinmux_sd>
20020f40:	f000 fd52 	bl	200219e8 <sdmmc1_sdnand>
20020f44:	2801      	cmp	r0, #1
20020f46:	d001      	beq.n	20020f4c <dfu_flash_init+0x248>
20020f48:	f7ff f9b2 	bl	200202b0 <boot_error>
20020f4c:	4b29      	ldr	r3, [pc, #164]	@ (20020ff4 <dfu_flash_init+0x2f0>)
20020f4e:	4a2a      	ldr	r2, [pc, #168]	@ (20020ff8 <dfu_flash_init+0x2f4>)
20020f50:	602b      	str	r3, [r5, #0]
20020f52:	4b1e      	ldr	r3, [pc, #120]	@ (20020fcc <dfu_flash_init+0x2c8>)
20020f54:	601a      	str	r2, [r3, #0]
20020f56:	2200      	movs	r2, #0
20020f58:	4b1d      	ldr	r3, [pc, #116]	@ (20020fd0 <dfu_flash_init+0x2cc>)
20020f5a:	601a      	str	r2, [r3, #0]
20020f5c:	e73f      	b.n	20020dde <dfu_flash_init+0xda>
20020f5e:	4811      	ldr	r0, [pc, #68]	@ (20020fa4 <dfu_flash_init+0x2a0>)
20020f60:	f004 f8fe 	bl	20025160 <HAL_RCC_HCPU_EnableDLL2>
20020f64:	f7ff fa8e 	bl	20020484 <board_pinmux_sd>
20020f68:	f000 fb2e 	bl	200215c8 <sdio_emmc_init>
20020f6c:	4b23      	ldr	r3, [pc, #140]	@ (20020ffc <dfu_flash_init+0x2f8>)
20020f6e:	6018      	str	r0, [r3, #0]
20020f70:	b110      	cbz	r0, 20020f78 <dfu_flash_init+0x274>
20020f72:	b2c0      	uxtb	r0, r0
20020f74:	f7ff f99c 	bl	200202b0 <boot_error>
20020f78:	4b21      	ldr	r3, [pc, #132]	@ (20021000 <dfu_flash_init+0x2fc>)
20020f7a:	e7e8      	b.n	20020f4e <dfu_flash_init+0x24a>
20020f7c:	2053      	movs	r0, #83	@ 0x53
20020f7e:	f7ff f997 	bl	200202b0 <boot_error>
20020f82:	e7c4      	b.n	20020f0e <dfu_flash_init+0x20a>
20020f84:	481f      	ldr	r0, [pc, #124]	@ (20021004 <dfu_flash_init+0x300>)
20020f86:	f001 f90e 	bl	200221a6 <HAL_Delay_us>
20020f8a:	3c01      	subs	r4, #1
20020f8c:	f47f af2d 	bne.w	20020dea <dfu_flash_init+0xe6>
20020f90:	2043      	movs	r0, #67	@ 0x43
20020f92:	b00c      	add	sp, #48	@ 0x30
20020f94:	e8bd 47f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
20020f98:	f7ff b98a 	b.w	200202b0 <boot_error>
20020f9c:	20049f88 	.word	0x20049f88
20020fa0:	20046d28 	.word	0x20046d28
20020fa4:	112a8800 	.word	0x112a8800
20020fa8:	2002ab30 	.word	0x2002ab30
20020fac:	20046f34 	.word	0x20046f34
20020fb0:	20046d2c 	.word	0x20046d2c
20020fb4:	00176085 	.word	0x00176085
20020fb8:	20020a31 	.word	0x20020a31
20020fbc:	200209a5 	.word	0x200209a5
20020fc0:	20046d24 	.word	0x20046d24
20020fc4:	20046d20 	.word	0x20046d20
20020fc8:	20020949 	.word	0x20020949
20020fcc:	20046d18 	.word	0x20046d18
20020fd0:	20046d1c 	.word	0x20046d1c
20020fd4:	20047378 	.word	0x20047378
20020fd8:	20042c04 	.word	0x20042c04
20020fdc:	2002ab54 	.word	0x2002ab54
20020fe0:	20020a45 	.word	0x20020a45
20020fe4:	20045a98 	.word	0x20045a98
20020fe8:	20046d94 	.word	0x20046d94
20020fec:	20046f88 	.word	0x20046f88
20020ff0:	20044a18 	.word	0x20044a18
20020ff4:	20020ac5 	.word	0x20020ac5
20020ff8:	62001000 	.word	0x62001000
20020ffc:	20044a14 	.word	0x20044a14
20021000:	20020b49 	.word	0x20020b49
20021004:	000f4240 	.word	0x000f4240
20021008:	53454346 	.word	0x53454346
2002100c:	20042c00 	.word	0x20042c00

20021010 <sifli_hw_efuse_read_bank>:
20021010:	2803      	cmp	r0, #3
20021012:	b508      	push	{r3, lr}
20021014:	d80c      	bhi.n	20021030 <sifli_hw_efuse_read_bank+0x20>
20021016:	0200      	lsls	r0, r0, #8
20021018:	2220      	movs	r2, #32
2002101a:	4907      	ldr	r1, [pc, #28]	@ (20021038 <sifli_hw_efuse_read_bank+0x28>)
2002101c:	f400 407f 	and.w	r0, r0, #65280	@ 0xff00
20021020:	f001 fd68 	bl	20022af4 <HAL_EFUSE_Read>
20021024:	2800      	cmp	r0, #0
20021026:	bf0c      	ite	eq
20021028:	f06f 0001 	mvneq.w	r0, #1
2002102c:	2000      	movne	r0, #0
2002102e:	bd08      	pop	{r3, pc}
20021030:	f04f 30ff 	mov.w	r0, #4294967295
20021034:	e7fb      	b.n	2002102e <sifli_hw_efuse_read_bank+0x1e>
20021036:	bf00      	nop
20021038:	200472f8 	.word	0x200472f8

2002103c <sifli_hw_efuse_read>:
2002103c:	b513      	push	{r0, r1, r4, lr}
2002103e:	3801      	subs	r0, #1
20021040:	460c      	mov	r4, r1
20021042:	2803      	cmp	r0, #3
20021044:	d81e      	bhi.n	20021084 <sifli_hw_efuse_read+0x48>
20021046:	e8df f000 	tbb	[pc, r0]
2002104a:	0c02      	.short	0x0c02
2002104c:	1009      	.short	0x1009
2002104e:	2210      	movs	r2, #16
20021050:	2000      	movs	r0, #0
20021052:	b002      	add	sp, #8
20021054:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
20021058:	f001 bd4c 	b.w	20022af4 <HAL_EFUSE_Read>
2002105c:	2208      	movs	r2, #8
2002105e:	2080      	movs	r0, #128	@ 0x80
20021060:	e7f7      	b.n	20021052 <sifli_hw_efuse_read+0x16>
20021062:	2220      	movs	r2, #32
20021064:	f44f 7040 	mov.w	r0, #768	@ 0x300
20021068:	e7f3      	b.n	20021052 <sifli_hw_efuse_read+0x16>
2002106a:	2204      	movs	r2, #4
2002106c:	20c0      	movs	r0, #192	@ 0xc0
2002106e:	eb0d 0102 	add.w	r1, sp, r2
20021072:	f001 fd3f 	bl	20022af4 <HAL_EFUSE_Read>
20021076:	2804      	cmp	r0, #4
20021078:	d104      	bne.n	20021084 <sifli_hw_efuse_read+0x48>
2002107a:	2001      	movs	r0, #1
2002107c:	9b01      	ldr	r3, [sp, #4]
2002107e:	7023      	strb	r3, [r4, #0]
20021080:	b002      	add	sp, #8
20021082:	bd10      	pop	{r4, pc}
20021084:	2000      	movs	r0, #0
20021086:	e7fb      	b.n	20021080 <sifli_hw_efuse_read+0x44>

20021088 <sifli_hw_init_xip_key>:
20021088:	b538      	push	{r3, r4, r5, lr}
2002108a:	4605      	mov	r5, r0
2002108c:	4c0f      	ldr	r4, [pc, #60]	@ (200210cc <sifli_hw_init_xip_key+0x44>)
2002108e:	2210      	movs	r2, #16
20021090:	68e3      	ldr	r3, [r4, #12]
20021092:	490f      	ldr	r1, [pc, #60]	@ (200210d0 <sifli_hw_init_xip_key+0x48>)
20021094:	f043 0301 	orr.w	r3, r3, #1
20021098:	60e3      	str	r3, [r4, #12]
2002109a:	2001      	movs	r0, #1
2002109c:	f7ff ffce 	bl	2002103c <sifli_hw_efuse_read>
200210a0:	2220      	movs	r2, #32
200210a2:	2100      	movs	r1, #0
200210a4:	480b      	ldr	r0, [pc, #44]	@ (200210d4 <sifli_hw_init_xip_key+0x4c>)
200210a6:	f009 fcc1 	bl	2002aa2c <memset>
200210aa:	2302      	movs	r3, #2
200210ac:	2120      	movs	r1, #32
200210ae:	4a08      	ldr	r2, [pc, #32]	@ (200210d0 <sifli_hw_init_xip_key+0x48>)
200210b0:	2000      	movs	r0, #0
200210b2:	f001 f8f1 	bl	20022298 <HAL_AES_init>
200210b6:	2320      	movs	r3, #32
200210b8:	4629      	mov	r1, r5
200210ba:	2000      	movs	r0, #0
200210bc:	4a05      	ldr	r2, [pc, #20]	@ (200210d4 <sifli_hw_init_xip_key+0x4c>)
200210be:	f001 f92f 	bl	20022320 <HAL_AES_run>
200210c2:	68e3      	ldr	r3, [r4, #12]
200210c4:	f023 0301 	bic.w	r3, r3, #1
200210c8:	60e3      	str	r3, [r4, #12]
200210ca:	bd38      	pop	{r3, r4, r5, pc}
200210cc:	5000b000 	.word	0x5000b000
200210d0:	20047328 	.word	0x20047328
200210d4:	200472d8 	.word	0x200472d8

200210d8 <sifli_hw_dec_key>:
200210d8:	b538      	push	{r3, r4, r5, lr}
200210da:	4604      	mov	r4, r0
200210dc:	460d      	mov	r5, r1
200210de:	2210      	movs	r2, #16
200210e0:	4908      	ldr	r1, [pc, #32]	@ (20021104 <sifli_hw_dec_key+0x2c>)
200210e2:	2001      	movs	r0, #1
200210e4:	f7ff ffaa 	bl	2002103c <sifli_hw_efuse_read>
200210e8:	2302      	movs	r3, #2
200210ea:	2120      	movs	r1, #32
200210ec:	4a05      	ldr	r2, [pc, #20]	@ (20021104 <sifli_hw_dec_key+0x2c>)
200210ee:	2000      	movs	r0, #0
200210f0:	f001 f8d2 	bl	20022298 <HAL_AES_init>
200210f4:	2320      	movs	r3, #32
200210f6:	462a      	mov	r2, r5
200210f8:	4621      	mov	r1, r4
200210fa:	2000      	movs	r0, #0
200210fc:	f001 f910 	bl	20022320 <HAL_AES_run>
20021100:	2000      	movs	r0, #0
20021102:	bd38      	pop	{r3, r4, r5, pc}
20021104:	20047328 	.word	0x20047328

20021108 <dfu_get_counter>:
20021108:	b538      	push	{r3, r4, r5, lr}
2002110a:	4d0a      	ldr	r5, [pc, #40]	@ (20021134 <dfu_get_counter+0x2c>)
2002110c:	4604      	mov	r4, r0
2002110e:	2208      	movs	r2, #8
20021110:	4629      	mov	r1, r5
20021112:	2003      	movs	r0, #3
20021114:	f7ff ff92 	bl	2002103c <sifli_hw_efuse_read>
20021118:	2300      	movs	r3, #0
2002111a:	e9c5 3302 	strd	r3, r3, [r5, #8]
2002111e:	230f      	movs	r3, #15
20021120:	0924      	lsrs	r4, r4, #4
20021122:	b12c      	cbz	r4, 20021130 <dfu_get_counter+0x28>
20021124:	54ec      	strb	r4, [r5, r3]
20021126:	3b01      	subs	r3, #1
20021128:	2b0b      	cmp	r3, #11
2002112a:	ea4f 2414 	mov.w	r4, r4, lsr #8
2002112e:	d1f8      	bne.n	20021122 <dfu_get_counter+0x1a>
20021130:	4800      	ldr	r0, [pc, #0]	@ (20021134 <dfu_get_counter+0x2c>)
20021132:	bd38      	pop	{r3, r4, r5, pc}
20021134:	20047318 	.word	0x20047318

20021138 <sifli_hw_dec>:
20021138:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
2002113c:	4680      	mov	r8, r0
2002113e:	4689      	mov	r9, r1
20021140:	4692      	mov	sl, r2
20021142:	2100      	movs	r1, #0
20021144:	f44f 7200 	mov.w	r2, #512	@ 0x200
20021148:	4814      	ldr	r0, [pc, #80]	@ (2002119c <sifli_hw_dec+0x64>)
2002114a:	461e      	mov	r6, r3
2002114c:	9f08      	ldr	r7, [sp, #32]
2002114e:	2400      	movs	r4, #0
20021150:	f009 fc6c 	bl	2002aa2c <memset>
20021154:	42a6      	cmp	r6, r4
20021156:	d802      	bhi.n	2002115e <sifli_hw_dec+0x26>
20021158:	4620      	mov	r0, r4
2002115a:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
2002115e:	1b35      	subs	r5, r6, r4
20021160:	f5b5 7f00 	cmp.w	r5, #512	@ 0x200
20021164:	bf28      	it	cs
20021166:	f44f 7500 	movcs.w	r5, #512	@ 0x200
2002116a:	eb09 0104 	add.w	r1, r9, r4
2002116e:	462a      	mov	r2, r5
20021170:	480a      	ldr	r0, [pc, #40]	@ (2002119c <sifli_hw_dec+0x64>)
20021172:	f009 fc75 	bl	2002aa60 <memcpy>
20021176:	19e0      	adds	r0, r4, r7
20021178:	f7ff ffc6 	bl	20021108 <dfu_get_counter>
2002117c:	2301      	movs	r3, #1
2002117e:	4602      	mov	r2, r0
20021180:	2120      	movs	r1, #32
20021182:	4640      	mov	r0, r8
20021184:	f001 f888 	bl	20022298 <HAL_AES_init>
20021188:	eb0a 0204 	add.w	r2, sl, r4
2002118c:	462b      	mov	r3, r5
2002118e:	2000      	movs	r0, #0
20021190:	4902      	ldr	r1, [pc, #8]	@ (2002119c <sifli_hw_dec+0x64>)
20021192:	f001 f8c5 	bl	20022320 <HAL_AES_run>
20021196:	442c      	add	r4, r5
20021198:	e7dc      	b.n	20021154 <sifli_hw_dec+0x1c>
2002119a:	bf00      	nop
2002119c:	200470d8 	.word	0x200470d8

200211a0 <update_sec_flash>:
200211a0:	b510      	push	{r4, lr}
200211a2:	4604      	mov	r4, r0
200211a4:	4b08      	ldr	r3, [pc, #32]	@ (200211c8 <update_sec_flash+0x28>)
200211a6:	f44f 5140 	mov.w	r1, #12288	@ 0x3000
200211aa:	681b      	ldr	r3, [r3, #0]
200211ac:	f04f 5090 	mov.w	r0, #301989888	@ 0x12000000
200211b0:	4798      	blx	r3
200211b2:	4b06      	ldr	r3, [pc, #24]	@ (200211cc <update_sec_flash+0x2c>)
200211b4:	4621      	mov	r1, r4
200211b6:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
200211ba:	f642 4210 	movw	r2, #11280	@ 0x2c10
200211be:	f04f 5090 	mov.w	r0, #301989888	@ 0x12000000
200211c2:	681b      	ldr	r3, [r3, #0]
200211c4:	4718      	bx	r3
200211c6:	bf00      	nop
200211c8:	20046d20 	.word	0x20046d20
200211cc:	20046d28 	.word	0x20046d28

200211d0 <boot_ram>:
200211d0:	4b05      	ldr	r3, [pc, #20]	@ (200211e8 <boot_ram+0x18>)
200211d2:	b082      	sub	sp, #8
200211d4:	6b9b      	ldr	r3, [r3, #56]	@ 0x38
200211d6:	9301      	str	r3, [sp, #4]
200211d8:	9b01      	ldr	r3, [sp, #4]
200211da:	b113      	cbz	r3, 200211e2 <boot_ram+0x12>
200211dc:	9b01      	ldr	r3, [sp, #4]
200211de:	b002      	add	sp, #8
200211e0:	4718      	bx	r3
200211e2:	b002      	add	sp, #8
200211e4:	4770      	bx	lr
200211e6:	bf00      	nop
200211e8:	500c0000 	.word	0x500c0000

200211ec <is_addr_in_nor>:
200211ec:	4b09      	ldr	r3, [pc, #36]	@ (20021214 <is_addr_in_nor+0x28>)
200211ee:	4602      	mov	r2, r0
200211f0:	681b      	ldr	r3, [r3, #0]
200211f2:	b163      	cbz	r3, 2002120e <is_addr_in_nor+0x22>
200211f4:	f893 002b 	ldrb.w	r0, [r3, #43]	@ 0x2b
200211f8:	b948      	cbnz	r0, 2002120e <is_addr_in_nor+0x22>
200211fa:	6919      	ldr	r1, [r3, #16]
200211fc:	4291      	cmp	r1, r2
200211fe:	d807      	bhi.n	20021210 <is_addr_in_nor+0x24>
20021200:	695b      	ldr	r3, [r3, #20]
20021202:	4419      	add	r1, r3
20021204:	4291      	cmp	r1, r2
20021206:	bf94      	ite	ls
20021208:	2000      	movls	r0, #0
2002120a:	2001      	movhi	r0, #1
2002120c:	4770      	bx	lr
2002120e:	2000      	movs	r0, #0
20021210:	4770      	bx	lr
20021212:	bf00      	nop
20021214:	20046d1c 	.word	0x20046d1c

20021218 <dfu_boot_img_in_flash>:
20021218:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
2002121c:	4f5e      	ldr	r7, [pc, #376]	@ (20021398 <dfu_boot_img_in_flash+0x180>)
2002121e:	1e84      	subs	r4, r0, #2
20021220:	eb07 1300 	add.w	r3, r7, r0, lsl #4
20021224:	eb07 2040 	add.w	r0, r7, r0, lsl #9
20021228:	f8d3 8004 	ldr.w	r8, [r3, #4]
2002122c:	68dd      	ldr	r5, [r3, #12]
2002122e:	f8b0 3c06 	ldrh.w	r3, [r0, #3078]	@ 0xc06
20021232:	b085      	sub	sp, #20
20021234:	07db      	lsls	r3, r3, #31
20021236:	f140 8095 	bpl.w	20021364 <dfu_boot_img_in_flash+0x14c>
2002123a:	f44f 7193 	mov.w	r1, #294	@ 0x126
2002123e:	f507 7082 	add.w	r0, r7, #260	@ 0x104
20021242:	f000 fe6a 	bl	20021f1a <sifli_sigkey_pub_verify>
20021246:	b110      	cbz	r0, 2002124e <dfu_boot_img_in_flash+0x36>
20021248:	2001      	movs	r0, #1
2002124a:	f000 feb3 	bl	20021fb4 <sifli_secboot_exception>
2002124e:	2c07      	cmp	r4, #7
20021250:	f300 8093 	bgt.w	2002137a <dfu_boot_img_in_flash+0x162>
20021254:	2003      	movs	r0, #3
20021256:	f7ff fedb 	bl	20021010 <sifli_hw_efuse_read_bank>
2002125a:	4262      	negs	r2, r4
2002125c:	f002 0203 	and.w	r2, r2, #3
20021260:	f004 0303 	and.w	r3, r4, #3
20021264:	bf58      	it	pl
20021266:	4253      	negpl	r3, r2
20021268:	2b02      	cmp	r3, #2
2002126a:	f200 8086 	bhi.w	2002137a <dfu_boot_img_in_flash+0x162>
2002126e:	4628      	mov	r0, r5
20021270:	f7ff ffbc 	bl	200211ec <is_addr_in_nor>
20021274:	f241 0308 	movw	r3, #4104	@ 0x1008
20021278:	4682      	mov	sl, r0
2002127a:	ea4f 2944 	mov.w	r9, r4, lsl #9
2002127e:	f8df c12c 	ldr.w	ip, [pc, #300]	@ 200213ac <dfu_boot_img_in_flash+0x194>
20021282:	eb07 0609 	add.w	r6, r7, r9
20021286:	441e      	add	r6, r3
20021288:	ce0f      	ldmia	r6!, {r0, r1, r2, r3}
2002128a:	e8ac 000f 	stmia.w	ip!, {r0, r1, r2, r3}
2002128e:	e896 000f 	ldmia.w	r6, {r0, r1, r2, r3}
20021292:	e88c 000f 	stmia.w	ip, {r0, r1, r2, r3}
20021296:	f1ba 0f00 	cmp.w	sl, #0
2002129a:	d04b      	beq.n	20021334 <dfu_boot_img_in_flash+0x11c>
2002129c:	f104 0608 	add.w	r6, r4, #8
200212a0:	f1ac 0010 	sub.w	r0, ip, #16
200212a4:	0276      	lsls	r6, r6, #9
200212a6:	f7ff feef 	bl	20021088 <sifli_hw_init_xip_key>
200212aa:	59ba      	ldr	r2, [r7, r6]
200212ac:	f8df a0f0 	ldr.w	sl, [pc, #240]	@ 200213a0 <dfu_boot_img_in_flash+0x188>
200212b0:	442a      	add	r2, r5
200212b2:	2000      	movs	r0, #0
200212b4:	f8da b000 	ldr.w	fp, [sl]
200212b8:	9203      	str	r2, [sp, #12]
200212ba:	f7ff ff25 	bl	20021108 <dfu_get_counter>
200212be:	4629      	mov	r1, r5
200212c0:	4603      	mov	r3, r0
200212c2:	9a03      	ldr	r2, [sp, #12]
200212c4:	4658      	mov	r0, fp
200212c6:	f002 fa82 	bl	200237ce <HAL_FLASH_NONCE_CFG>
200212ca:	4629      	mov	r1, r5
200212cc:	f8da 0000 	ldr.w	r0, [sl]
200212d0:	59ba      	ldr	r2, [r7, r6]
200212d2:	eba8 0305 	sub.w	r3, r8, r5
200212d6:	f002 fa69 	bl	200237ac <HAL_FLASH_ALIAS_CFG>
200212da:	2101      	movs	r1, #1
200212dc:	f8da 0000 	ldr.w	r0, [sl]
200212e0:	f002 fa8d 	bl	200237fe <HAL_FLASH_AES_CFG>
200212e4:	f104 0308 	add.w	r3, r4, #8
200212e8:	f509 5081 	add.w	r0, r9, #4128	@ 0x1020
200212ec:	025b      	lsls	r3, r3, #9
200212ee:	3008      	adds	r0, #8
200212f0:	462a      	mov	r2, r5
200212f2:	58fb      	ldr	r3, [r7, r3]
200212f4:	4929      	ldr	r1, [pc, #164]	@ (2002139c <dfu_boot_img_in_flash+0x184>)
200212f6:	4438      	add	r0, r7
200212f8:	f000 fe27 	bl	20021f4a <sifli_img_sig_hash_verify>
200212fc:	b110      	cbz	r0, 20021304 <dfu_boot_img_in_flash+0xec>
200212fe:	2002      	movs	r0, #2
20021300:	f000 fe58 	bl	20021fb4 <sifli_secboot_exception>
20021304:	f8d5 d000 	ldr.w	sp, [r5]
20021308:	f8d5 f004 	ldr.w	pc, [r5, #4]
2002130c:	4628      	mov	r0, r5
2002130e:	f7ff ff6d 	bl	200211ec <is_addr_in_nor>
20021312:	2800      	cmp	r0, #0
20021314:	d034      	beq.n	20021380 <dfu_boot_img_in_flash+0x168>
20021316:	4822      	ldr	r0, [pc, #136]	@ (200213a0 <dfu_boot_img_in_flash+0x188>)
20021318:	3408      	adds	r4, #8
2002131a:	0264      	lsls	r4, r4, #9
2002131c:	4629      	mov	r1, r5
2002131e:	593a      	ldr	r2, [r7, r4]
20021320:	6800      	ldr	r0, [r0, #0]
20021322:	eba8 0305 	sub.w	r3, r8, r5
20021326:	f002 fa41 	bl	200237ac <HAL_FLASH_ALIAS_CFG>
2002132a:	f8d5 d000 	ldr.w	sp, [r5]
2002132e:	f8d5 f004 	ldr.w	pc, [r5, #4]
20021332:	e022      	b.n	2002137a <dfu_boot_img_in_flash+0x162>
20021334:	f1ac 0010 	sub.w	r0, ip, #16
20021338:	2220      	movs	r2, #32
2002133a:	491a      	ldr	r1, [pc, #104]	@ (200213a4 <dfu_boot_img_in_flash+0x18c>)
2002133c:	f7ff fecc 	bl	200210d8 <sifli_hw_dec_key>
20021340:	f104 0608 	add.w	r6, r4, #8
20021344:	4b18      	ldr	r3, [pc, #96]	@ (200213a8 <dfu_boot_img_in_flash+0x190>)
20021346:	0276      	lsls	r6, r6, #9
20021348:	4629      	mov	r1, r5
2002134a:	59ba      	ldr	r2, [r7, r6]
2002134c:	4640      	mov	r0, r8
2002134e:	681b      	ldr	r3, [r3, #0]
20021350:	4798      	blx	r3
20021352:	f8cd a000 	str.w	sl, [sp]
20021356:	462a      	mov	r2, r5
20021358:	4629      	mov	r1, r5
2002135a:	59bb      	ldr	r3, [r7, r6]
2002135c:	4811      	ldr	r0, [pc, #68]	@ (200213a4 <dfu_boot_img_in_flash+0x18c>)
2002135e:	f7ff feeb 	bl	20021138 <sifli_hw_dec>
20021362:	e7bf      	b.n	200212e4 <dfu_boot_img_in_flash+0xcc>
20021364:	2c07      	cmp	r4, #7
20021366:	dc08      	bgt.n	2002137a <dfu_boot_img_in_flash+0x162>
20021368:	4262      	negs	r2, r4
2002136a:	f002 0203 	and.w	r2, r2, #3
2002136e:	f004 0303 	and.w	r3, r4, #3
20021372:	bf58      	it	pl
20021374:	4253      	negpl	r3, r2
20021376:	2b02      	cmp	r3, #2
20021378:	d9c8      	bls.n	2002130c <dfu_boot_img_in_flash+0xf4>
2002137a:	b005      	add	sp, #20
2002137c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
20021380:	45a8      	cmp	r8, r5
20021382:	d0d2      	beq.n	2002132a <dfu_boot_img_in_flash+0x112>
20021384:	4b08      	ldr	r3, [pc, #32]	@ (200213a8 <dfu_boot_img_in_flash+0x190>)
20021386:	3408      	adds	r4, #8
20021388:	0264      	lsls	r4, r4, #9
2002138a:	4629      	mov	r1, r5
2002138c:	4640      	mov	r0, r8
2002138e:	681b      	ldr	r3, [r3, #0]
20021390:	593a      	ldr	r2, [r7, r4]
20021392:	4798      	blx	r3
20021394:	e7c9      	b.n	2002132a <dfu_boot_img_in_flash+0x112>
20021396:	bf00      	nop
20021398:	20047378 	.word	0x20047378
2002139c:	2004747c 	.word	0x2004747c
200213a0:	20046d1c 	.word	0x20046d1c
200213a4:	20047338 	.word	0x20047338
200213a8:	20046d28 	.word	0x20046d28
200213ac:	20047358 	.word	0x20047358

200213b0 <boot_images_help>:
200213b0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
200213b4:	4e52      	ldr	r6, [pc, #328]	@ (20021500 <boot_images_help+0x150>)
200213b6:	f8df a158 	ldr.w	sl, [pc, #344]	@ 20021510 <boot_images_help+0x160>
200213ba:	6833      	ldr	r3, [r6, #0]
200213bc:	b085      	sub	sp, #20
200213be:	4553      	cmp	r3, sl
200213c0:	d150      	bne.n	20021464 <boot_images_help+0xb4>
200213c2:	2208      	movs	r2, #8
200213c4:	2300      	movs	r3, #0
200213c6:	f8df b14c 	ldr.w	fp, [pc, #332]	@ 20021514 <boot_images_help+0x164>
200213ca:	eb0d 0102 	add.w	r1, sp, r2
200213ce:	e9cd 3302 	strd	r3, r3, [sp, #8]
200213d2:	484c      	ldr	r0, [pc, #304]	@ (20021504 <boot_images_help+0x154>)
200213d4:	f8db 3000 	ldr.w	r3, [fp]
200213d8:	4798      	blx	r3
200213da:	2008      	movs	r0, #8
200213dc:	f00b f872 	bl	2002c4c4 <HAL_Get_backup>
200213e0:	4605      	mov	r5, r0
200213e2:	2005      	movs	r0, #5
200213e4:	f00b f86e 	bl	2002c4c4 <HAL_Get_backup>
200213e8:	f8df 912c 	ldr.w	r9, [pc, #300]	@ 20021518 <boot_images_help+0x168>
200213ec:	4946      	ldr	r1, [pc, #280]	@ (20021508 <boot_images_help+0x158>)
200213ee:	f8d9 4000 	ldr.w	r4, [r9]
200213f2:	f8df 8128 	ldr.w	r8, [pc, #296]	@ 2002151c <boot_images_help+0x16c>
200213f6:	f642 4210 	movw	r2, #11280	@ 0x2c10
200213fa:	f8db 3000 	ldr.w	r3, [fp]
200213fe:	4607      	mov	r7, r0
20021400:	f8c8 1000 	str.w	r1, [r8]
20021404:	4620      	mov	r0, r4
20021406:	f506 5600 	add.w	r6, r6, #8192	@ 0x2000
2002140a:	4798      	blx	r3
2002140c:	f8d6 bc08 	ldr.w	fp, [r6, #3080]	@ 0xc08
20021410:	f504 52a0 	add.w	r2, r4, #5120	@ 0x1400
20021414:	4593      	cmp	fp, r2
20021416:	d14e      	bne.n	200214b6 <boot_images_help+0x106>
20021418:	b2eb      	uxtb	r3, r5
2002141a:	2b04      	cmp	r3, #4
2002141c:	d025      	beq.n	2002146a <boot_images_help+0xba>
2002141e:	2b06      	cmp	r3, #6
20021420:	d039      	beq.n	20021496 <boot_images_help+0xe6>
20021422:	2b01      	cmp	r3, #1
20021424:	d142      	bne.n	200214ac <boot_images_help+0xfc>
20021426:	2005      	movs	r0, #5
20021428:	f00b f84c 	bl	2002c4c4 <HAL_Get_backup>
2002142c:	2802      	cmp	r0, #2
2002142e:	d006      	beq.n	2002143e <boot_images_help+0x8e>
20021430:	9b02      	ldr	r3, [sp, #8]
20021432:	4553      	cmp	r3, sl
20021434:	d106      	bne.n	20021444 <boot_images_help+0x94>
20021436:	f89d 300d 	ldrb.w	r3, [sp, #13]
2002143a:	2b7f      	cmp	r3, #127	@ 0x7f
2002143c:	d102      	bne.n	20021444 <boot_images_help+0x94>
2002143e:	4b33      	ldr	r3, [pc, #204]	@ (2002150c <boot_images_help+0x15c>)
20021440:	f8c6 3c08 	str.w	r3, [r6, #3080]	@ 0xc08
20021444:	f8d6 3c08 	ldr.w	r3, [r6, #3080]	@ 0xc08
20021448:	1c5a      	adds	r2, r3, #1
2002144a:	d00b      	beq.n	20021464 <boot_images_help+0xb4>
2002144c:	f8d9 4000 	ldr.w	r4, [r9]
20021450:	1b1c      	subs	r4, r3, r4
20021452:	f5a4 5480 	sub.w	r4, r4, #4096	@ 0x1000
20021456:	0a64      	lsrs	r4, r4, #9
20021458:	3402      	adds	r4, #2
2002145a:	f7ff fa47 	bl	200208ec <board_init_psram>
2002145e:	4620      	mov	r0, r4
20021460:	f7ff feda 	bl	20021218 <dfu_boot_img_in_flash>
20021464:	b005      	add	sp, #20
20021466:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
2002146a:	2008      	movs	r0, #8
2002146c:	f504 54e0 	add.w	r4, r4, #7168	@ 0x1c00
20021470:	2106      	movs	r1, #6
20021472:	f8c6 4c08 	str.w	r4, [r6, #3080]	@ 0xc08
20021476:	f00b f81f 	bl	2002c4b8 <HAL_Set_backup>
2002147a:	f8d8 0000 	ldr.w	r0, [r8]
2002147e:	f500 5300 	add.w	r3, r0, #8192	@ 0x2000
20021482:	f8c3 4c08 	str.w	r4, [r3, #3080]	@ 0xc08
20021486:	b11f      	cbz	r7, 20021490 <boot_images_help+0xe0>
20021488:	f500 5380 	add.w	r3, r0, #4096	@ 0x1000
2002148c:	f8c3 7c00 	str.w	r7, [r3, #3072]	@ 0xc00
20021490:	f7ff fe86 	bl	200211a0 <update_sec_flash>
20021494:	e7c7      	b.n	20021426 <boot_images_help+0x76>
20021496:	2101      	movs	r1, #1
20021498:	2008      	movs	r0, #8
2002149a:	f00b f80d 	bl	2002c4b8 <HAL_Set_backup>
2002149e:	f8d8 0000 	ldr.w	r0, [r8]
200214a2:	f500 5300 	add.w	r3, r0, #8192	@ 0x2000
200214a6:	f8c3 bc08 	str.w	fp, [r3, #3080]	@ 0xc08
200214aa:	e7f1      	b.n	20021490 <boot_images_help+0xe0>
200214ac:	2101      	movs	r1, #1
200214ae:	2008      	movs	r0, #8
200214b0:	f00b f802 	bl	2002c4b8 <HAL_Set_backup>
200214b4:	e7b7      	b.n	20021426 <boot_images_help+0x76>
200214b6:	f504 54e0 	add.w	r4, r4, #7168	@ 0x1c00
200214ba:	45a3      	cmp	fp, r4
200214bc:	d1b3      	bne.n	20021426 <boot_images_help+0x76>
200214be:	b2eb      	uxtb	r3, r5
200214c0:	2b03      	cmp	r3, #3
200214c2:	d005      	beq.n	200214d0 <boot_images_help+0x120>
200214c4:	2b05      	cmp	r3, #5
200214c6:	d018      	beq.n	200214fa <boot_images_help+0x14a>
200214c8:	2b02      	cmp	r3, #2
200214ca:	d0ac      	beq.n	20021426 <boot_images_help+0x76>
200214cc:	2102      	movs	r1, #2
200214ce:	e7ee      	b.n	200214ae <boot_images_help+0xfe>
200214d0:	2008      	movs	r0, #8
200214d2:	2105      	movs	r1, #5
200214d4:	f8c6 2c08 	str.w	r2, [r6, #3080]	@ 0xc08
200214d8:	9201      	str	r2, [sp, #4]
200214da:	f00a ffed 	bl	2002c4b8 <HAL_Set_backup>
200214de:	f8d8 0000 	ldr.w	r0, [r8]
200214e2:	9a01      	ldr	r2, [sp, #4]
200214e4:	f500 5300 	add.w	r3, r0, #8192	@ 0x2000
200214e8:	f8c3 2c08 	str.w	r2, [r3, #3080]	@ 0xc08
200214ec:	2f00      	cmp	r7, #0
200214ee:	d0cf      	beq.n	20021490 <boot_images_help+0xe0>
200214f0:	f500 5380 	add.w	r3, r0, #4096	@ 0x1000
200214f4:	f8c3 7400 	str.w	r7, [r3, #1024]	@ 0x400
200214f8:	e7ca      	b.n	20021490 <boot_images_help+0xe0>
200214fa:	2102      	movs	r1, #2
200214fc:	e7cc      	b.n	20021498 <boot_images_help+0xe8>
200214fe:	bf00      	nop
20021500:	20047378 	.word	0x20047378
20021504:	12880000 	.word	0x12880000
20021508:	20049f90 	.word	0x20049f90
2002150c:	12001000 	.word	0x12001000
20021510:	53454346 	.word	0x53454346
20021514:	20046d28 	.word	0x20046d28
20021518:	20046d18 	.word	0x20046d18
2002151c:	20049f8c 	.word	0x20049f8c

20021520 <hw_preinit0>:
20021520:	b508      	push	{r3, lr}
20021522:	4b0e      	ldr	r3, [pc, #56]	@ (2002155c <hw_preinit0+0x3c>)
20021524:	685b      	ldr	r3, [r3, #4]
20021526:	b2db      	uxtb	r3, r3
20021528:	2b06      	cmp	r3, #6
2002152a:	d80a      	bhi.n	20021542 <hw_preinit0+0x22>
2002152c:	4a0c      	ldr	r2, [pc, #48]	@ (20021560 <hw_preinit0+0x40>)
2002152e:	6a93      	ldr	r3, [r2, #40]	@ 0x28
20021530:	f023 037f 	bic.w	r3, r3, #127	@ 0x7f
20021534:	f043 0306 	orr.w	r3, r3, #6
20021538:	6293      	str	r3, [r2, #40]	@ 0x28
2002153a:	6853      	ldr	r3, [r2, #4]
2002153c:	f043 0380 	orr.w	r3, r3, #128	@ 0x80
20021540:	6053      	str	r3, [r2, #4]
20021542:	2000      	movs	r0, #0
20021544:	f000 fe2f 	bl	200221a6 <HAL_Delay_us>
20021548:	4b06      	ldr	r3, [pc, #24]	@ (20021564 <hw_preinit0+0x44>)
2002154a:	4a07      	ldr	r2, [pc, #28]	@ (20021568 <hw_preinit0+0x48>)
2002154c:	2000      	movs	r0, #0
2002154e:	605a      	str	r2, [r3, #4]
20021550:	f7ff fd5e 	bl	20021010 <sifli_hw_efuse_read_bank>
20021554:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
20021558:	f7ff be3a 	b.w	200211d0 <boot_ram>
2002155c:	5000b000 	.word	0x5000b000
20021560:	500ca000 	.word	0x500ca000
20021564:	5000c000 	.word	0x5000c000
20021568:	0002d08f 	.word	0x0002d08f

2002156c <entry>:
2002156c:	4c14      	ldr	r4, [pc, #80]	@ (200215c0 <entry+0x54>)
2002156e:	b508      	push	{r3, lr}
20021570:	2000      	movs	r0, #0
20021572:	f000 fe18 	bl	200221a6 <HAL_Delay_us>
20021576:	6863      	ldr	r3, [r4, #4]
20021578:	4d12      	ldr	r5, [pc, #72]	@ (200215c4 <entry+0x58>)
2002157a:	b2db      	uxtb	r3, r3
2002157c:	2b06      	cmp	r3, #6
2002157e:	d90f      	bls.n	200215a0 <entry+0x34>
20021580:	f7fe ffd4 	bl	2002052c <board_flash_power_on>
20021584:	f7fe febc 	bl	20020300 <HAL_MspInit>
20021588:	f7fe ffac 	bl	200204e4 <board_boot_from>
2002158c:	6028      	str	r0, [r5, #0]
2002158e:	68e3      	ldr	r3, [r4, #12]
20021590:	f023 0301 	bic.w	r3, r3, #1
20021594:	60e3      	str	r3, [r4, #12]
20021596:	f7ff fbb5 	bl	20020d04 <dfu_flash_init>
2002159a:	f7ff ff09 	bl	200213b0 <boot_images_help>
2002159e:	e7fe      	b.n	2002159e <entry+0x32>
200215a0:	f7fe ffa0 	bl	200204e4 <board_boot_from>
200215a4:	6028      	str	r0, [r5, #0]
200215a6:	f7fe ffc1 	bl	2002052c <board_flash_power_on>
200215aa:	f7fe fea9 	bl	20020300 <HAL_MspInit>
200215ae:	68e3      	ldr	r3, [r4, #12]
200215b0:	f023 0301 	bic.w	r3, r3, #1
200215b4:	60e3      	str	r3, [r4, #12]
200215b6:	f7ff fba5 	bl	20020d04 <dfu_flash_init>
200215ba:	f7ff fef9 	bl	200213b0 <boot_images_help>
200215be:	e7ee      	b.n	2002159e <entry+0x32>
200215c0:	5000b000 	.word	0x5000b000
200215c4:	20049f88 	.word	0x20049f88

200215c8 <sdio_emmc_init>:
200215c8:	b570      	push	{r4, r5, r6, lr}
200215ca:	b08c      	sub	sp, #48	@ 0x30
200215cc:	f000 f968 	bl	200218a0 <sd1_init>
200215d0:	4c8d      	ldr	r4, [pc, #564]	@ (20021808 <sdio_emmc_init+0x240>)
200215d2:	4b8e      	ldr	r3, [pc, #568]	@ (2002180c <sdio_emmc_init+0x244>)
200215d4:	2500      	movs	r5, #0
200215d6:	6323      	str	r3, [r4, #48]	@ 0x30
200215d8:	6b23      	ldr	r3, [r4, #48]	@ 0x30
200215da:	f44f 70fa 	mov.w	r0, #500	@ 0x1f4
200215de:	f043 0302 	orr.w	r3, r3, #2
200215e2:	6323      	str	r3, [r4, #48]	@ 0x30
200215e4:	f04f 7300 	mov.w	r3, #33554432	@ 0x2000000
200215e8:	62e5      	str	r5, [r4, #44]	@ 0x2c
200215ea:	6223      	str	r3, [r4, #32]
200215ec:	f000 fddb 	bl	200221a6 <HAL_Delay_us>
200215f0:	4629      	mov	r1, r5
200215f2:	4628      	mov	r0, r5
200215f4:	f000 f986 	bl	20021904 <sd1_send_cmd>
200215f8:	2301      	movs	r3, #1
200215fa:	65e3      	str	r3, [r4, #92]	@ 0x5c
200215fc:	6de3      	ldr	r3, [r4, #92]	@ 0x5c
200215fe:	079d      	lsls	r5, r3, #30
20021600:	d5fc      	bpl.n	200215fc <sdio_emmc_init+0x34>
20021602:	6be3      	ldr	r3, [r4, #60]	@ 0x3c
20021604:	f043 0320 	orr.w	r3, r3, #32
20021608:	63e3      	str	r3, [r4, #60]	@ 0x3c
2002160a:	4981      	ldr	r1, [pc, #516]	@ (20021810 <sdio_emmc_init+0x248>)
2002160c:	2001      	movs	r0, #1
2002160e:	ad07      	add	r5, sp, #28
20021610:	f000 f978 	bl	20021904 <sd1_send_cmd>
20021614:	ab06      	add	r3, sp, #24
20021616:	aa05      	add	r2, sp, #20
20021618:	a904      	add	r1, sp, #16
2002161a:	f10d 000f 	add.w	r0, sp, #15
2002161e:	9500      	str	r5, [sp, #0]
20021620:	f000 f9ae 	bl	20021980 <sd1_get_rsp>
20021624:	2014      	movs	r0, #20
20021626:	f000 fdbe 	bl	200221a6 <HAL_Delay_us>
2002162a:	9b04      	ldr	r3, [sp, #16]
2002162c:	2b00      	cmp	r3, #0
2002162e:	daec      	bge.n	2002160a <sdio_emmc_init+0x42>
20021630:	2014      	movs	r0, #20
20021632:	f000 fdb8 	bl	200221a6 <HAL_Delay_us>
20021636:	2100      	movs	r1, #0
20021638:	2002      	movs	r0, #2
2002163a:	f000 f963 	bl	20021904 <sd1_send_cmd>
2002163e:	2801      	cmp	r0, #1
20021640:	f000 8081 	beq.w	20021746 <sdio_emmc_init+0x17e>
20021644:	2802      	cmp	r0, #2
20021646:	d07e      	beq.n	20021746 <sdio_emmc_init+0x17e>
20021648:	ab08      	add	r3, sp, #32
2002164a:	aa0a      	add	r2, sp, #40	@ 0x28
2002164c:	a90b      	add	r1, sp, #44	@ 0x2c
2002164e:	9300      	str	r3, [sp, #0]
20021650:	f10d 000f 	add.w	r0, sp, #15
20021654:	ab09      	add	r3, sp, #36	@ 0x24
20021656:	f000 f993 	bl	20021980 <sd1_get_rsp>
2002165a:	2014      	movs	r0, #20
2002165c:	f000 fda3 	bl	200221a6 <HAL_Delay_us>
20021660:	f44f 3180 	mov.w	r1, #65536	@ 0x10000
20021664:	2003      	movs	r0, #3
20021666:	f000 f94d 	bl	20021904 <sd1_send_cmd>
2002166a:	2801      	cmp	r0, #1
2002166c:	f000 80ab 	beq.w	200217c6 <sdio_emmc_init+0x1fe>
20021670:	2802      	cmp	r0, #2
20021672:	f000 80aa 	beq.w	200217ca <sdio_emmc_init+0x202>
20021676:	ab06      	add	r3, sp, #24
20021678:	9500      	str	r5, [sp, #0]
2002167a:	aa05      	add	r2, sp, #20
2002167c:	a904      	add	r1, sp, #16
2002167e:	f10d 000f 	add.w	r0, sp, #15
20021682:	f000 f97d 	bl	20021980 <sd1_get_rsp>
20021686:	f89d 300f 	ldrb.w	r3, [sp, #15]
2002168a:	2b03      	cmp	r3, #3
2002168c:	f040 809f 	bne.w	200217ce <sdio_emmc_init+0x206>
20021690:	4c5d      	ldr	r4, [pc, #372]	@ (20021808 <sdio_emmc_init+0x240>)
20021692:	2014      	movs	r0, #20
20021694:	6be3      	ldr	r3, [r4, #60]	@ 0x3c
20021696:	f023 0320 	bic.w	r3, r3, #32
2002169a:	63e3      	str	r3, [r4, #60]	@ 0x3c
2002169c:	f000 fd83 	bl	200221a6 <HAL_Delay_us>
200216a0:	f44f 3180 	mov.w	r1, #65536	@ 0x10000
200216a4:	2009      	movs	r0, #9
200216a6:	f000 f92d 	bl	20021904 <sd1_send_cmd>
200216aa:	2801      	cmp	r0, #1
200216ac:	f000 8091 	beq.w	200217d2 <sdio_emmc_init+0x20a>
200216b0:	2802      	cmp	r0, #2
200216b2:	f000 8090 	beq.w	200217d6 <sdio_emmc_init+0x20e>
200216b6:	aa05      	add	r2, sp, #20
200216b8:	a904      	add	r1, sp, #16
200216ba:	ab06      	add	r3, sp, #24
200216bc:	f10d 000f 	add.w	r0, sp, #15
200216c0:	9500      	str	r5, [sp, #0]
200216c2:	f000 f95d 	bl	20021980 <sd1_get_rsp>
200216c6:	f44f 53b8 	mov.w	r3, #5888	@ 0x1700
200216ca:	6323      	str	r3, [r4, #48]	@ 0x30
200216cc:	6b23      	ldr	r3, [r4, #48]	@ 0x30
200216ce:	2014      	movs	r0, #20
200216d0:	f043 0302 	orr.w	r3, r3, #2
200216d4:	6323      	str	r3, [r4, #48]	@ 0x30
200216d6:	f04f 7300 	mov.w	r3, #33554432	@ 0x2000000
200216da:	6223      	str	r3, [r4, #32]
200216dc:	2302      	movs	r3, #2
200216de:	63e3      	str	r3, [r4, #60]	@ 0x3c
200216e0:	f000 fd61 	bl	200221a6 <HAL_Delay_us>
200216e4:	f44f 3180 	mov.w	r1, #65536	@ 0x10000
200216e8:	2007      	movs	r0, #7
200216ea:	f000 f90b 	bl	20021904 <sd1_send_cmd>
200216ee:	2801      	cmp	r0, #1
200216f0:	d073      	beq.n	200217da <sdio_emmc_init+0x212>
200216f2:	2802      	cmp	r0, #2
200216f4:	d073      	beq.n	200217de <sdio_emmc_init+0x216>
200216f6:	ab06      	add	r3, sp, #24
200216f8:	9500      	str	r5, [sp, #0]
200216fa:	aa05      	add	r2, sp, #20
200216fc:	a904      	add	r1, sp, #16
200216fe:	f10d 000f 	add.w	r0, sp, #15
20021702:	f000 f93d 	bl	20021980 <sd1_get_rsp>
20021706:	f89d 300f 	ldrb.w	r3, [sp, #15]
2002170a:	2b07      	cmp	r3, #7
2002170c:	d169      	bne.n	200217e2 <sdio_emmc_init+0x21a>
2002170e:	f04f 33ff 	mov.w	r3, #4294967295
20021712:	2101      	movs	r1, #1
20021714:	2000      	movs	r0, #0
20021716:	6023      	str	r3, [r4, #0]
20021718:	f000 f942 	bl	200219a0 <sd1_read>
2002171c:	2100      	movs	r1, #0
2002171e:	2008      	movs	r0, #8
20021720:	f000 f8f0 	bl	20021904 <sd1_send_cmd>
20021724:	2801      	cmp	r0, #1
20021726:	d05e      	beq.n	200217e6 <sdio_emmc_init+0x21e>
20021728:	2802      	cmp	r0, #2
2002172a:	d05e      	beq.n	200217ea <sdio_emmc_init+0x222>
2002172c:	ab06      	add	r3, sp, #24
2002172e:	9500      	str	r5, [sp, #0]
20021730:	aa05      	add	r2, sp, #20
20021732:	a904      	add	r1, sp, #16
20021734:	f10d 000f 	add.w	r0, sp, #15
20021738:	f000 f922 	bl	20021980 <sd1_get_rsp>
2002173c:	f89d 300f 	ldrb.w	r3, [sp, #15]
20021740:	2b08      	cmp	r3, #8
20021742:	d002      	beq.n	2002174a <sdio_emmc_init+0x182>
20021744:	200d      	movs	r0, #13
20021746:	b00c      	add	sp, #48	@ 0x30
20021748:	bd70      	pop	{r4, r5, r6, pc}
2002174a:	2320      	movs	r3, #32
2002174c:	62e3      	str	r3, [r4, #44]	@ 0x2c
2002174e:	f000 f937 	bl	200219c0 <sd1_wait_read>
20021752:	6823      	ldr	r3, [r4, #0]
20021754:	0618      	lsls	r0, r3, #24
20021756:	d4f5      	bmi.n	20021744 <sdio_emmc_init+0x17c>
20021758:	6823      	ldr	r3, [r4, #0]
2002175a:	0659      	lsls	r1, r3, #25
2002175c:	d447      	bmi.n	200217ee <sdio_emmc_init+0x226>
2002175e:	2680      	movs	r6, #128	@ 0x80
20021760:	3e01      	subs	r6, #1
20021762:	f8d4 3200 	ldr.w	r3, [r4, #512]	@ 0x200
20021766:	d1fb      	bne.n	20021760 <sdio_emmc_init+0x198>
20021768:	2101      	movs	r1, #1
2002176a:	4630      	mov	r0, r6
2002176c:	f000 f918 	bl	200219a0 <sd1_read>
20021770:	2014      	movs	r0, #20
20021772:	f000 fd18 	bl	200221a6 <HAL_Delay_us>
20021776:	f04f 33ff 	mov.w	r3, #4294967295
2002177a:	4631      	mov	r1, r6
2002177c:	2011      	movs	r0, #17
2002177e:	6023      	str	r3, [r4, #0]
20021780:	f000 f8c0 	bl	20021904 <sd1_send_cmd>
20021784:	2801      	cmp	r0, #1
20021786:	d034      	beq.n	200217f2 <sdio_emmc_init+0x22a>
20021788:	2802      	cmp	r0, #2
2002178a:	d034      	beq.n	200217f6 <sdio_emmc_init+0x22e>
2002178c:	ab06      	add	r3, sp, #24
2002178e:	9500      	str	r5, [sp, #0]
20021790:	aa05      	add	r2, sp, #20
20021792:	a904      	add	r1, sp, #16
20021794:	f10d 000f 	add.w	r0, sp, #15
20021798:	f000 f8f2 	bl	20021980 <sd1_get_rsp>
2002179c:	f89d 300f 	ldrb.w	r3, [sp, #15]
200217a0:	2b11      	cmp	r3, #17
200217a2:	d12a      	bne.n	200217fa <sdio_emmc_init+0x232>
200217a4:	2320      	movs	r3, #32
200217a6:	62e3      	str	r3, [r4, #44]	@ 0x2c
200217a8:	f000 f90a 	bl	200219c0 <sd1_wait_read>
200217ac:	6823      	ldr	r3, [r4, #0]
200217ae:	061a      	lsls	r2, r3, #24
200217b0:	d425      	bmi.n	200217fe <sdio_emmc_init+0x236>
200217b2:	6823      	ldr	r3, [r4, #0]
200217b4:	065b      	lsls	r3, r3, #25
200217b6:	d424      	bmi.n	20021802 <sdio_emmc_init+0x23a>
200217b8:	2080      	movs	r0, #128	@ 0x80
200217ba:	4b13      	ldr	r3, [pc, #76]	@ (20021808 <sdio_emmc_init+0x240>)
200217bc:	3801      	subs	r0, #1
200217be:	f8d3 2200 	ldr.w	r2, [r3, #512]	@ 0x200
200217c2:	d1fb      	bne.n	200217bc <sdio_emmc_init+0x1f4>
200217c4:	e7bf      	b.n	20021746 <sdio_emmc_init+0x17e>
200217c6:	2003      	movs	r0, #3
200217c8:	e7bd      	b.n	20021746 <sdio_emmc_init+0x17e>
200217ca:	2004      	movs	r0, #4
200217cc:	e7bb      	b.n	20021746 <sdio_emmc_init+0x17e>
200217ce:	2005      	movs	r0, #5
200217d0:	e7b9      	b.n	20021746 <sdio_emmc_init+0x17e>
200217d2:	2006      	movs	r0, #6
200217d4:	e7b7      	b.n	20021746 <sdio_emmc_init+0x17e>
200217d6:	2007      	movs	r0, #7
200217d8:	e7b5      	b.n	20021746 <sdio_emmc_init+0x17e>
200217da:	2008      	movs	r0, #8
200217dc:	e7b3      	b.n	20021746 <sdio_emmc_init+0x17e>
200217de:	2009      	movs	r0, #9
200217e0:	e7b1      	b.n	20021746 <sdio_emmc_init+0x17e>
200217e2:	200a      	movs	r0, #10
200217e4:	e7af      	b.n	20021746 <sdio_emmc_init+0x17e>
200217e6:	200b      	movs	r0, #11
200217e8:	e7ad      	b.n	20021746 <sdio_emmc_init+0x17e>
200217ea:	200c      	movs	r0, #12
200217ec:	e7ab      	b.n	20021746 <sdio_emmc_init+0x17e>
200217ee:	200e      	movs	r0, #14
200217f0:	e7a9      	b.n	20021746 <sdio_emmc_init+0x17e>
200217f2:	2011      	movs	r0, #17
200217f4:	e7a7      	b.n	20021746 <sdio_emmc_init+0x17e>
200217f6:	2012      	movs	r0, #18
200217f8:	e7a5      	b.n	20021746 <sdio_emmc_init+0x17e>
200217fa:	2013      	movs	r0, #19
200217fc:	e7a3      	b.n	20021746 <sdio_emmc_init+0x17e>
200217fe:	2014      	movs	r0, #20
20021800:	e7a1      	b.n	20021746 <sdio_emmc_init+0x17e>
20021802:	2015      	movs	r0, #21
20021804:	e79f      	b.n	20021746 <sdio_emmc_init+0x17e>
20021806:	bf00      	nop
20021808:	50045000 	.word	0x50045000
2002180c:	00016700 	.word	0x00016700
20021810:	40000080 	.word	0x40000080

20021814 <emmc_read_data>:
20021814:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
20021818:	4607      	mov	r7, r0
2002181a:	f04f 38ff 	mov.w	r8, #4294967295
2002181e:	b088      	sub	sp, #32
20021820:	2000      	movs	r0, #0
20021822:	460d      	mov	r5, r1
20021824:	4e1d      	ldr	r6, [pc, #116]	@ (2002189c <emmc_read_data+0x88>)
20021826:	2101      	movs	r1, #1
20021828:	4614      	mov	r4, r2
2002182a:	f000 f8b9 	bl	200219a0 <sd1_read>
2002182e:	2014      	movs	r0, #20
20021830:	f000 fcb9 	bl	200221a6 <HAL_Delay_us>
20021834:	2011      	movs	r0, #17
20021836:	f8c6 8000 	str.w	r8, [r6]
2002183a:	0a79      	lsrs	r1, r7, #9
2002183c:	f000 f862 	bl	20021904 <sd1_send_cmd>
20021840:	4440      	add	r0, r8
20021842:	b2c0      	uxtb	r0, r0
20021844:	2801      	cmp	r0, #1
20021846:	d803      	bhi.n	20021850 <emmc_read_data+0x3c>
20021848:	2000      	movs	r0, #0
2002184a:	b008      	add	sp, #32
2002184c:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
20021850:	ab07      	add	r3, sp, #28
20021852:	9300      	str	r3, [sp, #0]
20021854:	aa05      	add	r2, sp, #20
20021856:	ab06      	add	r3, sp, #24
20021858:	a904      	add	r1, sp, #16
2002185a:	f10d 000f 	add.w	r0, sp, #15
2002185e:	f000 f88f 	bl	20021980 <sd1_get_rsp>
20021862:	f89d 300f 	ldrb.w	r3, [sp, #15]
20021866:	2b11      	cmp	r3, #17
20021868:	d1ee      	bne.n	20021848 <emmc_read_data+0x34>
2002186a:	2320      	movs	r3, #32
2002186c:	f8c6 8000 	str.w	r8, [r6]
20021870:	62f3      	str	r3, [r6, #44]	@ 0x2c
20021872:	f000 f8a5 	bl	200219c0 <sd1_wait_read>
20021876:	6833      	ldr	r3, [r6, #0]
20021878:	061a      	lsls	r2, r3, #24
2002187a:	d4e5      	bmi.n	20021848 <emmc_read_data+0x34>
2002187c:	6833      	ldr	r3, [r6, #0]
2002187e:	065b      	lsls	r3, r3, #25
20021880:	d4e2      	bmi.n	20021848 <emmc_read_data+0x34>
20021882:	f024 0303 	bic.w	r3, r4, #3
20021886:	442b      	add	r3, r5
20021888:	429d      	cmp	r5, r3
2002188a:	d101      	bne.n	20021890 <emmc_read_data+0x7c>
2002188c:	4620      	mov	r0, r4
2002188e:	e7dc      	b.n	2002184a <emmc_read_data+0x36>
20021890:	f8d6 2200 	ldr.w	r2, [r6, #512]	@ 0x200
20021894:	f845 2b04 	str.w	r2, [r5], #4
20021898:	e7f6      	b.n	20021888 <emmc_read_data+0x74>
2002189a:	bf00      	nop
2002189c:	50045000 	.word	0x50045000

200218a0 <sd1_init>:
200218a0:	b510      	push	{r4, lr}
200218a2:	f04f 44a0 	mov.w	r4, #1342177280	@ 0x50000000
200218a6:	68e3      	ldr	r3, [r4, #12]
200218a8:	2064      	movs	r0, #100	@ 0x64
200218aa:	f023 0310 	bic.w	r3, r3, #16
200218ae:	60e3      	str	r3, [r4, #12]
200218b0:	f000 fc79 	bl	200221a6 <HAL_Delay_us>
200218b4:	68e3      	ldr	r3, [r4, #12]
200218b6:	4a07      	ldr	r2, [pc, #28]	@ (200218d4 <sd1_init+0x34>)
200218b8:	f043 0310 	orr.w	r3, r3, #16
200218bc:	60e3      	str	r3, [r4, #12]
200218be:	6913      	ldr	r3, [r2, #16]
200218c0:	f043 0302 	orr.w	r3, r3, #2
200218c4:	6113      	str	r3, [r2, #16]
200218c6:	f44f 7280 	mov.w	r2, #256	@ 0x100
200218ca:	4b03      	ldr	r3, [pc, #12]	@ (200218d8 <sd1_init+0x38>)
200218cc:	631a      	str	r2, [r3, #48]	@ 0x30
200218ce:	2200      	movs	r2, #0
200218d0:	63da      	str	r2, [r3, #60]	@ 0x3c
200218d2:	bd10      	pop	{r4, pc}
200218d4:	5000b000 	.word	0x5000b000
200218d8:	50045000 	.word	0x50045000

200218dc <sd1_wait_cmd>:
200218dc:	4b08      	ldr	r3, [pc, #32]	@ (20021900 <sd1_wait_cmd+0x24>)
200218de:	681a      	ldr	r2, [r3, #0]
200218e0:	f012 0f0a 	tst.w	r2, #10
200218e4:	d0fb      	beq.n	200218de <sd1_wait_cmd+0x2>
200218e6:	2202      	movs	r2, #2
200218e8:	601a      	str	r2, [r3, #0]
200218ea:	681a      	ldr	r2, [r3, #0]
200218ec:	0712      	lsls	r2, r2, #28
200218ee:	bf5f      	itttt	pl
200218f0:	6818      	ldrpl	r0, [r3, #0]
200218f2:	f3c0 0080 	ubfxpl	r0, r0, #2, #1
200218f6:	0040      	lslpl	r0, r0, #1
200218f8:	b2c0      	uxtbpl	r0, r0
200218fa:	bf48      	it	mi
200218fc:	2001      	movmi	r0, #1
200218fe:	4770      	bx	lr
20021900:	50045000 	.word	0x50045000

20021904 <sd1_send_cmd>:
20021904:	4b0e      	ldr	r3, [pc, #56]	@ (20021940 <sd1_send_cmd+0x3c>)
20021906:	280f      	cmp	r0, #15
20021908:	6099      	str	r1, [r3, #8]
2002190a:	ea4f 4380 	mov.w	r3, r0, lsl #18
2002190e:	d813      	bhi.n	20021938 <sd1_send_cmd+0x34>
20021910:	2201      	movs	r2, #1
20021912:	f248 0111 	movw	r1, #32785	@ 0x8011
20021916:	4082      	lsls	r2, r0
20021918:	420a      	tst	r2, r1
2002191a:	d105      	bne.n	20021928 <sd1_send_cmd+0x24>
2002191c:	f240 6104 	movw	r1, #1540	@ 0x604
20021920:	420a      	tst	r2, r1
20021922:	d009      	beq.n	20021938 <sd1_send_cmd+0x34>
20021924:	f443 3340 	orr.w	r3, r3, #196608	@ 0x30000
20021928:	4a05      	ldr	r2, [pc, #20]	@ (20021940 <sd1_send_cmd+0x3c>)
2002192a:	f443 7380 	orr.w	r3, r3, #256	@ 0x100
2002192e:	f043 0301 	orr.w	r3, r3, #1
20021932:	6053      	str	r3, [r2, #4]
20021934:	f7ff bfd2 	b.w	200218dc <sd1_wait_cmd>
20021938:	f443 3380 	orr.w	r3, r3, #65536	@ 0x10000
2002193c:	e7f4      	b.n	20021928 <sd1_send_cmd+0x24>
2002193e:	bf00      	nop
20021940:	50045000 	.word	0x50045000

20021944 <sd1_send_acmd>:
20021944:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
20021946:	4605      	mov	r5, r0
20021948:	460f      	mov	r7, r1
2002194a:	2037      	movs	r0, #55	@ 0x37
2002194c:	0411      	lsls	r1, r2, #16
2002194e:	f7ff ffd9 	bl	20021904 <sd1_send_cmd>
20021952:	4604      	mov	r4, r0
20021954:	b968      	cbnz	r0, 20021972 <sd1_send_acmd+0x2e>
20021956:	4b08      	ldr	r3, [pc, #32]	@ (20021978 <sd1_send_acmd+0x34>)
20021958:	4e08      	ldr	r6, [pc, #32]	@ (2002197c <sd1_send_acmd+0x38>)
2002195a:	ea43 4385 	orr.w	r3, r3, r5, lsl #18
2002195e:	60b7      	str	r7, [r6, #8]
20021960:	6073      	str	r3, [r6, #4]
20021962:	f7ff ffbb 	bl	200218dc <sd1_wait_cmd>
20021966:	2802      	cmp	r0, #2
20021968:	d104      	bne.n	20021974 <sd1_send_acmd+0x30>
2002196a:	2d29      	cmp	r5, #41	@ 0x29
2002196c:	d102      	bne.n	20021974 <sd1_send_acmd+0x30>
2002196e:	2304      	movs	r3, #4
20021970:	6033      	str	r3, [r6, #0]
20021972:	4620      	mov	r0, r4
20021974:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
20021976:	bf00      	nop
20021978:	00010101 	.word	0x00010101
2002197c:	50045000 	.word	0x50045000

20021980 <sd1_get_rsp>:
20021980:	b530      	push	{r4, r5, lr}
20021982:	4c06      	ldr	r4, [pc, #24]	@ (2002199c <sd1_get_rsp+0x1c>)
20021984:	68e5      	ldr	r5, [r4, #12]
20021986:	7005      	strb	r5, [r0, #0]
20021988:	6920      	ldr	r0, [r4, #16]
2002198a:	6008      	str	r0, [r1, #0]
2002198c:	6961      	ldr	r1, [r4, #20]
2002198e:	6011      	str	r1, [r2, #0]
20021990:	69a2      	ldr	r2, [r4, #24]
20021992:	601a      	str	r2, [r3, #0]
20021994:	69e2      	ldr	r2, [r4, #28]
20021996:	9b03      	ldr	r3, [sp, #12]
20021998:	601a      	str	r2, [r3, #0]
2002199a:	bd30      	pop	{r4, r5, pc}
2002199c:	50045000 	.word	0x50045000

200219a0 <sd1_read>:
200219a0:	f04f 33ff 	mov.w	r3, #4294967295
200219a4:	4a04      	ldr	r2, [pc, #16]	@ (200219b8 <sd1_read+0x18>)
200219a6:	eb03 2341 	add.w	r3, r3, r1, lsl #9
200219aa:	6293      	str	r3, [r2, #40]	@ 0x28
200219ac:	4b03      	ldr	r3, [pc, #12]	@ (200219bc <sd1_read+0x1c>)
200219ae:	ea43 23c0 	orr.w	r3, r3, r0, lsl #11
200219b2:	6253      	str	r3, [r2, #36]	@ 0x24
200219b4:	4770      	bx	lr
200219b6:	bf00      	nop
200219b8:	50045000 	.word	0x50045000
200219bc:	01ff0301 	.word	0x01ff0301

200219c0 <sd1_wait_read>:
200219c0:	4b08      	ldr	r3, [pc, #32]	@ (200219e4 <sd1_wait_read+0x24>)
200219c2:	681a      	ldr	r2, [r3, #0]
200219c4:	f012 0fe0 	tst.w	r2, #224	@ 0xe0
200219c8:	d0fb      	beq.n	200219c2 <sd1_wait_read+0x2>
200219ca:	2220      	movs	r2, #32
200219cc:	601a      	str	r2, [r3, #0]
200219ce:	681a      	ldr	r2, [r3, #0]
200219d0:	0612      	lsls	r2, r2, #24
200219d2:	bf5f      	itttt	pl
200219d4:	6818      	ldrpl	r0, [r3, #0]
200219d6:	f3c0 1080 	ubfxpl	r0, r0, #6, #1
200219da:	0040      	lslpl	r0, r0, #1
200219dc:	b2c0      	uxtbpl	r0, r0
200219de:	bf48      	it	mi
200219e0:	2001      	movmi	r0, #1
200219e2:	4770      	bx	lr
200219e4:	50045000 	.word	0x50045000

200219e8 <sdmmc1_sdnand>:
200219e8:	b5f0      	push	{r4, r5, r6, r7, lr}
200219ea:	b08d      	sub	sp, #52	@ 0x34
200219ec:	f7ff ff58 	bl	200218a0 <sd1_init>
200219f0:	4c76      	ldr	r4, [pc, #472]	@ (20021bcc <sdmmc1_sdnand+0x1e4>)
200219f2:	4b77      	ldr	r3, [pc, #476]	@ (20021bd0 <sdmmc1_sdnand+0x1e8>)
200219f4:	2500      	movs	r5, #0
200219f6:	6323      	str	r3, [r4, #48]	@ 0x30
200219f8:	6b23      	ldr	r3, [r4, #48]	@ 0x30
200219fa:	f44f 70fa 	mov.w	r0, #500	@ 0x1f4
200219fe:	f043 0302 	orr.w	r3, r3, #2
20021a02:	6323      	str	r3, [r4, #48]	@ 0x30
20021a04:	f44f 1380 	mov.w	r3, #1048576	@ 0x100000
20021a08:	62e5      	str	r5, [r4, #44]	@ 0x2c
20021a0a:	6223      	str	r3, [r4, #32]
20021a0c:	f000 fbcb 	bl	200221a6 <HAL_Delay_us>
20021a10:	4629      	mov	r1, r5
20021a12:	4628      	mov	r0, r5
20021a14:	f7ff ff76 	bl	20021904 <sd1_send_cmd>
20021a18:	2301      	movs	r3, #1
20021a1a:	65e3      	str	r3, [r4, #92]	@ 0x5c
20021a1c:	6de3      	ldr	r3, [r4, #92]	@ 0x5c
20021a1e:	079b      	lsls	r3, r3, #30
20021a20:	d5fc      	bpl.n	20021a1c <sdmmc1_sdnand+0x34>
20021a22:	2014      	movs	r0, #20
20021a24:	f000 fbbf 	bl	200221a6 <HAL_Delay_us>
20021a28:	f44f 71d5 	mov.w	r1, #426	@ 0x1aa
20021a2c:	2008      	movs	r0, #8
20021a2e:	f7ff ff69 	bl	20021904 <sd1_send_cmd>
20021a32:	3801      	subs	r0, #1
20021a34:	b2c0      	uxtb	r0, r0
20021a36:	2801      	cmp	r0, #1
20021a38:	d802      	bhi.n	20021a40 <sdmmc1_sdnand+0x58>
20021a3a:	2038      	movs	r0, #56	@ 0x38
20021a3c:	b00d      	add	sp, #52	@ 0x34
20021a3e:	bdf0      	pop	{r4, r5, r6, r7, pc}
20021a40:	ac07      	add	r4, sp, #28
20021a42:	ab06      	add	r3, sp, #24
20021a44:	9400      	str	r4, [sp, #0]
20021a46:	aa05      	add	r2, sp, #20
20021a48:	a904      	add	r1, sp, #16
20021a4a:	f10d 000f 	add.w	r0, sp, #15
20021a4e:	f7ff ff97 	bl	20021980 <sd1_get_rsp>
20021a52:	f89d 300f 	ldrb.w	r3, [sp, #15]
20021a56:	2b08      	cmp	r3, #8
20021a58:	d1ef      	bne.n	20021a3a <sdmmc1_sdnand+0x52>
20021a5a:	9b04      	ldr	r3, [sp, #16]
20021a5c:	f5b3 7fd5 	cmp.w	r3, #426	@ 0x1aa
20021a60:	d1eb      	bne.n	20021a3a <sdmmc1_sdnand+0x52>
20021a62:	2014      	movs	r0, #20
20021a64:	f000 fb9f 	bl	200221a6 <HAL_Delay_us>
20021a68:	2200      	movs	r2, #0
20021a6a:	2029      	movs	r0, #41	@ 0x29
20021a6c:	4959      	ldr	r1, [pc, #356]	@ (20021bd4 <sdmmc1_sdnand+0x1ec>)
20021a6e:	f7ff ff69 	bl	20021944 <sd1_send_acmd>
20021a72:	2801      	cmp	r0, #1
20021a74:	f000 80a2 	beq.w	20021bbc <sdmmc1_sdnand+0x1d4>
20021a78:	ab06      	add	r3, sp, #24
20021a7a:	9400      	str	r4, [sp, #0]
20021a7c:	aa05      	add	r2, sp, #20
20021a7e:	a904      	add	r1, sp, #16
20021a80:	f10d 000f 	add.w	r0, sp, #15
20021a84:	f7ff ff7c 	bl	20021980 <sd1_get_rsp>
20021a88:	9b04      	ldr	r3, [sp, #16]
20021a8a:	2b00      	cmp	r3, #0
20021a8c:	db03      	blt.n	20021a96 <sdmmc1_sdnand+0xae>
20021a8e:	2002      	movs	r0, #2
20021a90:	f000 fb89 	bl	200221a6 <HAL_Delay_us>
20021a94:	e7e5      	b.n	20021a62 <sdmmc1_sdnand+0x7a>
20021a96:	2014      	movs	r0, #20
20021a98:	f000 fb85 	bl	200221a6 <HAL_Delay_us>
20021a9c:	2100      	movs	r1, #0
20021a9e:	2002      	movs	r0, #2
20021aa0:	f7ff ff30 	bl	20021904 <sd1_send_cmd>
20021aa4:	3801      	subs	r0, #1
20021aa6:	b2c0      	uxtb	r0, r0
20021aa8:	2801      	cmp	r0, #1
20021aaa:	f240 8089 	bls.w	20021bc0 <sdmmc1_sdnand+0x1d8>
20021aae:	ab08      	add	r3, sp, #32
20021ab0:	aa0a      	add	r2, sp, #40	@ 0x28
20021ab2:	a90b      	add	r1, sp, #44	@ 0x2c
20021ab4:	9300      	str	r3, [sp, #0]
20021ab6:	f10d 000f 	add.w	r0, sp, #15
20021aba:	ab09      	add	r3, sp, #36	@ 0x24
20021abc:	f7ff ff60 	bl	20021980 <sd1_get_rsp>
20021ac0:	2014      	movs	r0, #20
20021ac2:	f000 fb70 	bl	200221a6 <HAL_Delay_us>
20021ac6:	2100      	movs	r1, #0
20021ac8:	2003      	movs	r0, #3
20021aca:	f7ff ff1b 	bl	20021904 <sd1_send_cmd>
20021ace:	3801      	subs	r0, #1
20021ad0:	b2c0      	uxtb	r0, r0
20021ad2:	2801      	cmp	r0, #1
20021ad4:	d801      	bhi.n	20021ada <sdmmc1_sdnand+0xf2>
20021ad6:	2033      	movs	r0, #51	@ 0x33
20021ad8:	e7b0      	b.n	20021a3c <sdmmc1_sdnand+0x54>
20021ada:	ab06      	add	r3, sp, #24
20021adc:	9400      	str	r4, [sp, #0]
20021ade:	aa05      	add	r2, sp, #20
20021ae0:	a904      	add	r1, sp, #16
20021ae2:	f10d 000f 	add.w	r0, sp, #15
20021ae6:	f7ff ff4b 	bl	20021980 <sd1_get_rsp>
20021aea:	f89d 300f 	ldrb.w	r3, [sp, #15]
20021aee:	2b03      	cmp	r3, #3
20021af0:	d1f1      	bne.n	20021ad6 <sdmmc1_sdnand+0xee>
20021af2:	9d04      	ldr	r5, [sp, #16]
20021af4:	2014      	movs	r0, #20
20021af6:	0c2e      	lsrs	r6, r5, #16
20021af8:	0436      	lsls	r6, r6, #16
20021afa:	f000 fb54 	bl	200221a6 <HAL_Delay_us>
20021afe:	4631      	mov	r1, r6
20021b00:	2009      	movs	r0, #9
20021b02:	f7ff feff 	bl	20021904 <sd1_send_cmd>
20021b06:	3801      	subs	r0, #1
20021b08:	b2c0      	uxtb	r0, r0
20021b0a:	2801      	cmp	r0, #1
20021b0c:	d95a      	bls.n	20021bc4 <sdmmc1_sdnand+0x1dc>
20021b0e:	ab06      	add	r3, sp, #24
20021b10:	aa05      	add	r2, sp, #20
20021b12:	a904      	add	r1, sp, #16
20021b14:	f10d 000f 	add.w	r0, sp, #15
20021b18:	9400      	str	r4, [sp, #0]
20021b1a:	f7ff ff31 	bl	20021980 <sd1_get_rsp>
20021b1e:	e9dd 2004 	ldrd	r2, r0, [sp, #16]
20021b22:	9f06      	ldr	r7, [sp, #24]
20021b24:	9907      	ldr	r1, [sp, #28]
20021b26:	0e3b      	lsrs	r3, r7, #24
20021b28:	ea43 2301 	orr.w	r3, r3, r1, lsl #8
20021b2c:	0e01      	lsrs	r1, r0, #24
20021b2e:	ea41 2107 	orr.w	r1, r1, r7, lsl #8
20021b32:	9105      	str	r1, [sp, #20]
20021b34:	0e11      	lsrs	r1, r2, #24
20021b36:	9304      	str	r3, [sp, #16]
20021b38:	ea41 2100 	orr.w	r1, r1, r0, lsl #8
20021b3c:	0212      	lsls	r2, r2, #8
20021b3e:	0f9b      	lsrs	r3, r3, #30
20021b40:	9106      	str	r1, [sp, #24]
20021b42:	9207      	str	r2, [sp, #28]
20021b44:	d01d      	beq.n	20021b82 <sdmmc1_sdnand+0x19a>
20021b46:	2b01      	cmp	r3, #1
20021b48:	d13e      	bne.n	20021bc8 <sdmmc1_sdnand+0x1e0>
20021b4a:	2300      	movs	r3, #0
20021b4c:	4a22      	ldr	r2, [pc, #136]	@ (20021bd8 <sdmmc1_sdnand+0x1f0>)
20021b4e:	2014      	movs	r0, #20
20021b50:	7013      	strb	r3, [r2, #0]
20021b52:	f44f 7200 	mov.w	r2, #512	@ 0x200
20021b56:	4b1d      	ldr	r3, [pc, #116]	@ (20021bcc <sdmmc1_sdnand+0x1e4>)
20021b58:	631a      	str	r2, [r3, #48]	@ 0x30
20021b5a:	6b1a      	ldr	r2, [r3, #48]	@ 0x30
20021b5c:	f042 0202 	orr.w	r2, r2, #2
20021b60:	631a      	str	r2, [r3, #48]	@ 0x30
20021b62:	4a1e      	ldr	r2, [pc, #120]	@ (20021bdc <sdmmc1_sdnand+0x1f4>)
20021b64:	621a      	str	r2, [r3, #32]
20021b66:	2200      	movs	r2, #0
20021b68:	63da      	str	r2, [r3, #60]	@ 0x3c
20021b6a:	f000 fb1c 	bl	200221a6 <HAL_Delay_us>
20021b6e:	4631      	mov	r1, r6
20021b70:	2007      	movs	r0, #7
20021b72:	f7ff fec7 	bl	20021904 <sd1_send_cmd>
20021b76:	3801      	subs	r0, #1
20021b78:	b2c0      	uxtb	r0, r0
20021b7a:	2801      	cmp	r0, #1
20021b7c:	d803      	bhi.n	20021b86 <sdmmc1_sdnand+0x19e>
20021b7e:	2037      	movs	r0, #55	@ 0x37
20021b80:	e75c      	b.n	20021a3c <sdmmc1_sdnand+0x54>
20021b82:	2301      	movs	r3, #1
20021b84:	e7e2      	b.n	20021b4c <sdmmc1_sdnand+0x164>
20021b86:	ab06      	add	r3, sp, #24
20021b88:	9400      	str	r4, [sp, #0]
20021b8a:	aa05      	add	r2, sp, #20
20021b8c:	a904      	add	r1, sp, #16
20021b8e:	f10d 000f 	add.w	r0, sp, #15
20021b92:	f7ff fef5 	bl	20021980 <sd1_get_rsp>
20021b96:	f89d 300f 	ldrb.w	r3, [sp, #15]
20021b9a:	2b07      	cmp	r3, #7
20021b9c:	d1ef      	bne.n	20021b7e <sdmmc1_sdnand+0x196>
20021b9e:	2014      	movs	r0, #20
20021ba0:	f000 fb01 	bl	200221a6 <HAL_Delay_us>
20021ba4:	2102      	movs	r1, #2
20021ba6:	2006      	movs	r0, #6
20021ba8:	0c2a      	lsrs	r2, r5, #16
20021baa:	f7ff fecb 	bl	20021944 <sd1_send_acmd>
20021bae:	3801      	subs	r0, #1
20021bb0:	b2c0      	uxtb	r0, r0
20021bb2:	2801      	cmp	r0, #1
20021bb4:	bf8c      	ite	hi
20021bb6:	2001      	movhi	r0, #1
20021bb8:	2036      	movls	r0, #54	@ 0x36
20021bba:	e73f      	b.n	20021a3c <sdmmc1_sdnand+0x54>
20021bbc:	2034      	movs	r0, #52	@ 0x34
20021bbe:	e73d      	b.n	20021a3c <sdmmc1_sdnand+0x54>
20021bc0:	2032      	movs	r0, #50	@ 0x32
20021bc2:	e73b      	b.n	20021a3c <sdmmc1_sdnand+0x54>
20021bc4:	2039      	movs	r0, #57	@ 0x39
20021bc6:	e739      	b.n	20021a3c <sdmmc1_sdnand+0x54>
20021bc8:	2054      	movs	r0, #84	@ 0x54
20021bca:	e737      	b.n	20021a3c <sdmmc1_sdnand+0x54>
20021bcc:	50045000 	.word	0x50045000
20021bd0:	00016700 	.word	0x00016700
20021bd4:	40ff8000 	.word	0x40ff8000
20021bd8:	20042c08 	.word	0x20042c08
20021bdc:	00249f00 	.word	0x00249f00

20021be0 <sd_read_data>:
20021be0:	b570      	push	{r4, r5, r6, lr}
20021be2:	f1b1 4fc0 	cmp.w	r1, #1610612736	@ 0x60000000
20021be6:	4605      	mov	r5, r0
20021be8:	4614      	mov	r4, r2
20021bea:	b088      	sub	sp, #32
20021bec:	d314      	bcc.n	20021c18 <sd_read_data+0x38>
20021bee:	2a00      	cmp	r2, #0
20021bf0:	dd12      	ble.n	20021c18 <sd_read_data+0x38>
20021bf2:	f001 021f 	and.w	r2, r1, #31
20021bf6:	4422      	add	r2, r4
20021bf8:	f021 031f 	bic.w	r3, r1, #31
20021bfc:	f3bf 8f4f 	dsb	sy
20021c00:	4e30      	ldr	r6, [pc, #192]	@ (20021cc4 <sd_read_data+0xe4>)
20021c02:	441a      	add	r2, r3
20021c04:	f8c6 325c 	str.w	r3, [r6, #604]	@ 0x25c
20021c08:	3320      	adds	r3, #32
20021c0a:	1ad0      	subs	r0, r2, r3
20021c0c:	2800      	cmp	r0, #0
20021c0e:	dcf9      	bgt.n	20021c04 <sd_read_data+0x24>
20021c10:	f3bf 8f4f 	dsb	sy
20021c14:	f3bf 8f6f 	isb	sy
20021c18:	2200      	movs	r2, #0
20021c1a:	4b2b      	ldr	r3, [pc, #172]	@ (20021cc8 <sd_read_data+0xe8>)
20021c1c:	631a      	str	r2, [r3, #48]	@ 0x30
20021c1e:	4a2b      	ldr	r2, [pc, #172]	@ (20021ccc <sd_read_data+0xec>)
20021c20:	639a      	str	r2, [r3, #56]	@ 0x38
20021c22:	2280      	movs	r2, #128	@ 0x80
20021c24:	63d9      	str	r1, [r3, #60]	@ 0x3c
20021c26:	635a      	str	r2, [r3, #52]	@ 0x34
20021c28:	f8d3 20a8 	ldr.w	r2, [r3, #168]	@ 0xa8
20021c2c:	2101      	movs	r1, #1
20021c2e:	f422 127c 	bic.w	r2, r2, #4128768	@ 0x3f0000
20021c32:	f442 1264 	orr.w	r2, r2, #3735552	@ 0x390000
20021c36:	f8c3 20a8 	str.w	r2, [r3, #168]	@ 0xa8
20021c3a:	f44f 6228 	mov.w	r2, #2688	@ 0xa80
20021c3e:	631a      	str	r2, [r3, #48]	@ 0x30
20021c40:	6b1a      	ldr	r2, [r3, #48]	@ 0x30
20021c42:	4608      	mov	r0, r1
20021c44:	f022 0220 	bic.w	r2, r2, #32
20021c48:	631a      	str	r2, [r3, #48]	@ 0x30
20021c4a:	6b1a      	ldr	r2, [r3, #48]	@ 0x30
20021c4c:	f042 0201 	orr.w	r2, r2, #1
20021c50:	631a      	str	r2, [r3, #48]	@ 0x30
20021c52:	f7ff fea5 	bl	200219a0 <sd1_read>
20021c56:	2014      	movs	r0, #20
20021c58:	f000 faa5 	bl	200221a6 <HAL_Delay_us>
20021c5c:	4b1c      	ldr	r3, [pc, #112]	@ (20021cd0 <sd_read_data+0xf0>)
20021c5e:	781b      	ldrb	r3, [r3, #0]
20021c60:	b903      	cbnz	r3, 20021c64 <sd_read_data+0x84>
20021c62:	0a6d      	lsrs	r5, r5, #9
20021c64:	4629      	mov	r1, r5
20021c66:	2011      	movs	r0, #17
20021c68:	f7ff fe4c 	bl	20021904 <sd1_send_cmd>
20021c6c:	3801      	subs	r0, #1
20021c6e:	b2c0      	uxtb	r0, r0
20021c70:	2801      	cmp	r0, #1
20021c72:	d802      	bhi.n	20021c7a <sd_read_data+0x9a>
20021c74:	2000      	movs	r0, #0
20021c76:	b008      	add	sp, #32
20021c78:	bd70      	pop	{r4, r5, r6, pc}
20021c7a:	ab07      	add	r3, sp, #28
20021c7c:	9300      	str	r3, [sp, #0]
20021c7e:	aa05      	add	r2, sp, #20
20021c80:	ab06      	add	r3, sp, #24
20021c82:	a904      	add	r1, sp, #16
20021c84:	f10d 000f 	add.w	r0, sp, #15
20021c88:	f7ff fe7a 	bl	20021980 <sd1_get_rsp>
20021c8c:	f89d 300f 	ldrb.w	r3, [sp, #15]
20021c90:	2b11      	cmp	r3, #17
20021c92:	d1ef      	bne.n	20021c74 <sd_read_data+0x94>
20021c94:	f04f 33ff 	mov.w	r3, #4294967295
20021c98:	4d0e      	ldr	r5, [pc, #56]	@ (20021cd4 <sd_read_data+0xf4>)
20021c9a:	602b      	str	r3, [r5, #0]
20021c9c:	2320      	movs	r3, #32
20021c9e:	62eb      	str	r3, [r5, #44]	@ 0x2c
20021ca0:	f7ff fe8e 	bl	200219c0 <sd1_wait_read>
20021ca4:	682b      	ldr	r3, [r5, #0]
20021ca6:	061a      	lsls	r2, r3, #24
20021ca8:	d4e4      	bmi.n	20021c74 <sd_read_data+0x94>
20021caa:	682b      	ldr	r3, [r5, #0]
20021cac:	065b      	lsls	r3, r3, #25
20021cae:	d4e1      	bmi.n	20021c74 <sd_read_data+0x94>
20021cb0:	4b05      	ldr	r3, [pc, #20]	@ (20021cc8 <sd_read_data+0xe8>)
20021cb2:	6b5a      	ldr	r2, [r3, #52]	@ 0x34
20021cb4:	2a00      	cmp	r2, #0
20021cb6:	d1fc      	bne.n	20021cb2 <sd_read_data+0xd2>
20021cb8:	6b1a      	ldr	r2, [r3, #48]	@ 0x30
20021cba:	4620      	mov	r0, r4
20021cbc:	f022 0201 	bic.w	r2, r2, #1
20021cc0:	631a      	str	r2, [r3, #48]	@ 0x30
20021cc2:	e7d8      	b.n	20021c76 <sd_read_data+0x96>
20021cc4:	e000ed00 	.word	0xe000ed00
20021cc8:	50081000 	.word	0x50081000
20021ccc:	50045200 	.word	0x50045200
20021cd0:	20042c08 	.word	0x20042c08
20021cd4:	50045000 	.word	0x50045000

20021cd8 <sd_read_multi>:
20021cd8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
20021cdc:	4680      	mov	r8, r0
20021cde:	460e      	mov	r6, r1
20021ce0:	4615      	mov	r5, r2
20021ce2:	b089      	sub	sp, #36	@ 0x24
20021ce4:	2a00      	cmp	r2, #0
20021ce6:	d059      	beq.n	20021d9c <sd_read_multi+0xc4>
20021ce8:	f3c2 0308 	ubfx	r3, r2, #0, #9
20021cec:	2b00      	cmp	r3, #0
20021cee:	d155      	bne.n	20021d9c <sd_read_multi+0xc4>
20021cf0:	4691      	mov	r9, r2
20021cf2:	4c4d      	ldr	r4, [pc, #308]	@ (20021e28 <sd_read_multi+0x150>)
20021cf4:	f8df b140 	ldr.w	fp, [pc, #320]	@ 20021e38 <sd_read_multi+0x160>
20021cf8:	f8d4 30a8 	ldr.w	r3, [r4, #168]	@ 0xa8
20021cfc:	f423 137c 	bic.w	r3, r3, #4128768	@ 0x3f0000
20021d00:	f443 1364 	orr.w	r3, r3, #3735552	@ 0x390000
20021d04:	f8c4 30a8 	str.w	r3, [r4, #168]	@ 0xa8
20021d08:	f5b9 3f00 	cmp.w	r9, #131072	@ 0x20000
20021d0c:	bf2c      	ite	cs
20021d0e:	21ff      	movcs	r1, #255	@ 0xff
20021d10:	ea4f 2159 	movcc.w	r1, r9, lsr #9
20021d14:	f1b6 4fc0 	cmp.w	r6, #1610612736	@ 0x60000000
20021d18:	ea4f 2741 	mov.w	r7, r1, lsl #9
20021d1c:	d312      	bcc.n	20021d44 <sd_read_multi+0x6c>
20021d1e:	b18f      	cbz	r7, 20021d44 <sd_read_multi+0x6c>
20021d20:	f006 021f 	and.w	r2, r6, #31
20021d24:	443a      	add	r2, r7
20021d26:	f026 031f 	bic.w	r3, r6, #31
20021d2a:	f3bf 8f4f 	dsb	sy
20021d2e:	441a      	add	r2, r3
20021d30:	f8cb 325c 	str.w	r3, [fp, #604]	@ 0x25c
20021d34:	3320      	adds	r3, #32
20021d36:	1ad0      	subs	r0, r2, r3
20021d38:	2800      	cmp	r0, #0
20021d3a:	dcf9      	bgt.n	20021d30 <sd_read_multi+0x58>
20021d3c:	f3bf 8f4f 	dsb	sy
20021d40:	f3bf 8f6f 	isb	sy
20021d44:	6b23      	ldr	r3, [r4, #48]	@ 0x30
20021d46:	f04f 32ff 	mov.w	r2, #4294967295
20021d4a:	f023 0301 	bic.w	r3, r3, #1
20021d4e:	6323      	str	r3, [r4, #48]	@ 0x30
20021d50:	4b36      	ldr	r3, [pc, #216]	@ (20021e2c <sd_read_multi+0x154>)
20021d52:	2001      	movs	r0, #1
20021d54:	63a3      	str	r3, [r4, #56]	@ 0x38
20021d56:	08bb      	lsrs	r3, r7, #2
20021d58:	63e6      	str	r6, [r4, #60]	@ 0x3c
20021d5a:	6363      	str	r3, [r4, #52]	@ 0x34
20021d5c:	f44f 6328 	mov.w	r3, #2688	@ 0xa80
20021d60:	6323      	str	r3, [r4, #48]	@ 0x30
20021d62:	6b23      	ldr	r3, [r4, #48]	@ 0x30
20021d64:	b2c9      	uxtb	r1, r1
20021d66:	f023 0320 	bic.w	r3, r3, #32
20021d6a:	6323      	str	r3, [r4, #48]	@ 0x30
20021d6c:	4b30      	ldr	r3, [pc, #192]	@ (20021e30 <sd_read_multi+0x158>)
20021d6e:	601a      	str	r2, [r3, #0]
20021d70:	f7ff fe16 	bl	200219a0 <sd1_read>
20021d74:	6b23      	ldr	r3, [r4, #48]	@ 0x30
20021d76:	f043 0301 	orr.w	r3, r3, #1
20021d7a:	6323      	str	r3, [r4, #48]	@ 0x30
20021d7c:	4b2d      	ldr	r3, [pc, #180]	@ (20021e34 <sd_read_multi+0x15c>)
20021d7e:	781b      	ldrb	r3, [r3, #0]
20021d80:	b983      	cbnz	r3, 20021da4 <sd_read_multi+0xcc>
20021d82:	ea4f 2158 	mov.w	r1, r8, lsr #9
20021d86:	2012      	movs	r0, #18
20021d88:	f7ff fdbc 	bl	20021904 <sd1_send_cmd>
20021d8c:	3801      	subs	r0, #1
20021d8e:	2801      	cmp	r0, #1
20021d90:	d80a      	bhi.n	20021da8 <sd_read_multi+0xd0>
20021d92:	4a25      	ldr	r2, [pc, #148]	@ (20021e28 <sd_read_multi+0x150>)
20021d94:	6b13      	ldr	r3, [r2, #48]	@ 0x30
20021d96:	f023 0301 	bic.w	r3, r3, #1
20021d9a:	6313      	str	r3, [r2, #48]	@ 0x30
20021d9c:	2000      	movs	r0, #0
20021d9e:	b009      	add	sp, #36	@ 0x24
20021da0:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
20021da4:	4641      	mov	r1, r8
20021da6:	e7ee      	b.n	20021d86 <sd_read_multi+0xae>
20021da8:	ab07      	add	r3, sp, #28
20021daa:	9300      	str	r3, [sp, #0]
20021dac:	aa05      	add	r2, sp, #20
20021dae:	ab06      	add	r3, sp, #24
20021db0:	a904      	add	r1, sp, #16
20021db2:	f10d 000f 	add.w	r0, sp, #15
20021db6:	f7ff fde3 	bl	20021980 <sd1_get_rsp>
20021dba:	f89d 300f 	ldrb.w	r3, [sp, #15]
20021dbe:	2b12      	cmp	r3, #18
20021dc0:	d1e7      	bne.n	20021d92 <sd_read_multi+0xba>
20021dc2:	2220      	movs	r2, #32
20021dc4:	f8df a068 	ldr.w	sl, [pc, #104]	@ 20021e30 <sd_read_multi+0x158>
20021dc8:	f8ca 202c 	str.w	r2, [sl, #44]	@ 0x2c
20021dcc:	f7ff fdf8 	bl	200219c0 <sd1_wait_read>
20021dd0:	f8da 3000 	ldr.w	r3, [sl]
20021dd4:	f013 0fc0 	tst.w	r3, #192	@ 0xc0
20021dd8:	d008      	beq.n	20021dec <sd_read_multi+0x114>
20021dda:	6b23      	ldr	r3, [r4, #48]	@ 0x30
20021ddc:	2100      	movs	r1, #0
20021dde:	f023 0301 	bic.w	r3, r3, #1
20021de2:	6323      	str	r3, [r4, #48]	@ 0x30
20021de4:	200c      	movs	r0, #12
20021de6:	f7ff fd8d 	bl	20021904 <sd1_send_cmd>
20021dea:	e7d7      	b.n	20021d9c <sd_read_multi+0xc4>
20021dec:	6b61      	ldr	r1, [r4, #52]	@ 0x34
20021dee:	2900      	cmp	r1, #0
20021df0:	d1fc      	bne.n	20021dec <sd_read_multi+0x114>
20021df2:	6b23      	ldr	r3, [r4, #48]	@ 0x30
20021df4:	200c      	movs	r0, #12
20021df6:	f023 0301 	bic.w	r3, r3, #1
20021dfa:	6323      	str	r3, [r4, #48]	@ 0x30
20021dfc:	f7ff fd82 	bl	20021904 <sd1_send_cmd>
20021e00:	3801      	subs	r0, #1
20021e02:	2801      	cmp	r0, #1
20021e04:	d9ca      	bls.n	20021d9c <sd_read_multi+0xc4>
20021e06:	ab07      	add	r3, sp, #28
20021e08:	9300      	str	r3, [sp, #0]
20021e0a:	aa05      	add	r2, sp, #20
20021e0c:	ab06      	add	r3, sp, #24
20021e0e:	a904      	add	r1, sp, #16
20021e10:	f10d 000f 	add.w	r0, sp, #15
20021e14:	f7ff fdb4 	bl	20021980 <sd1_get_rsp>
20021e18:	ebb9 0907 	subs.w	r9, r9, r7
20021e1c:	443e      	add	r6, r7
20021e1e:	44b8      	add	r8, r7
20021e20:	f47f af72 	bne.w	20021d08 <sd_read_multi+0x30>
20021e24:	4628      	mov	r0, r5
20021e26:	e7ba      	b.n	20021d9e <sd_read_multi+0xc6>
20021e28:	50081000 	.word	0x50081000
20021e2c:	50045200 	.word	0x50045200
20021e30:	50045000 	.word	0x50045000
20021e34:	20042c08 	.word	0x20042c08
20021e38:	e000ed00 	.word	0xe000ed00

20021e3c <sifli_hash_calculate>:
20021e3c:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
20021e40:	460c      	mov	r4, r1
20021e42:	4615      	mov	r5, r2
20021e44:	4699      	mov	r9, r3
20021e46:	4680      	mov	r8, r0
20021e48:	2800      	cmp	r0, #0
20021e4a:	d03f      	beq.n	20021ecc <sifli_hash_calculate+0x90>
20021e4c:	2900      	cmp	r1, #0
20021e4e:	d03d      	beq.n	20021ecc <sifli_hash_calculate+0x90>
20021e50:	2a00      	cmp	r2, #0
20021e52:	d03b      	beq.n	20021ecc <sifli_hash_calculate+0x90>
20021e54:	2b03      	cmp	r3, #3
20021e56:	d839      	bhi.n	20021ecc <sifli_hash_calculate+0x90>
20021e58:	f000 fab8 	bl	200223cc <HAL_HASH_reset>
20021e5c:	2200      	movs	r2, #0
20021e5e:	4649      	mov	r1, r9
20021e60:	4610      	mov	r0, r2
20021e62:	f000 fabb 	bl	200223dc <HAL_HASH_init>
20021e66:	f5b4 7f80 	cmp.w	r4, #256	@ 0x100
20021e6a:	d929      	bls.n	20021ec0 <sifli_hash_calculate+0x84>
20021e6c:	2600      	movs	r6, #0
20021e6e:	4637      	mov	r7, r6
20021e70:	f506 7680 	add.w	r6, r6, #256	@ 0x100
20021e74:	42a6      	cmp	r6, r4
20021e76:	bf34      	ite	cc
20021e78:	f04f 0a00 	movcc.w	sl, #0
20021e7c:	f04f 0a01 	movcs.w	sl, #1
20021e80:	b14f      	cbz	r7, 20021e96 <sifli_hash_calculate+0x5a>
20021e82:	f000 faa3 	bl	200223cc <HAL_HASH_reset>
20021e86:	42a6      	cmp	r6, r4
20021e88:	bf2c      	ite	cs
20021e8a:	463a      	movcs	r2, r7
20021e8c:	2200      	movcc	r2, #0
20021e8e:	4649      	mov	r1, r9
20021e90:	4628      	mov	r0, r5
20021e92:	f000 faa3 	bl	200223dc <HAL_HASH_init>
20021e96:	42a6      	cmp	r6, r4
20021e98:	bf34      	ite	cc
20021e9a:	f44f 7180 	movcc.w	r1, #256	@ 0x100
20021e9e:	1be1      	subcs	r1, r4, r7
20021ea0:	4652      	mov	r2, sl
20021ea2:	eb08 0007 	add.w	r0, r8, r7
20021ea6:	f000 fa73 	bl	20022390 <HAL_HASH_run>
20021eaa:	4628      	mov	r0, r5
20021eac:	f000 fac4 	bl	20022438 <HAL_HASH_result>
20021eb0:	42a6      	cmp	r6, r4
20021eb2:	d3dc      	bcc.n	20021e6e <sifli_hash_calculate+0x32>
20021eb4:	4628      	mov	r0, r5
20021eb6:	f000 fabf 	bl	20022438 <HAL_HASH_result>
20021eba:	2000      	movs	r0, #0
20021ebc:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
20021ec0:	2201      	movs	r2, #1
20021ec2:	4621      	mov	r1, r4
20021ec4:	4640      	mov	r0, r8
20021ec6:	f000 fa63 	bl	20022390 <HAL_HASH_run>
20021eca:	e7f3      	b.n	20021eb4 <sifli_hash_calculate+0x78>
20021ecc:	f04f 30ff 	mov.w	r0, #4294967295
20021ed0:	e7f4      	b.n	20021ebc <sifli_hash_calculate+0x80>

20021ed2 <sifli_hash_verify>:
20021ed2:	b5f0      	push	{r4, r5, r6, r7, lr}
20021ed4:	4605      	mov	r5, r0
20021ed6:	b089      	sub	sp, #36	@ 0x24
20021ed8:	460f      	mov	r7, r1
20021eda:	4614      	mov	r4, r2
20021edc:	2100      	movs	r1, #0
20021ede:	2220      	movs	r2, #32
20021ee0:	4668      	mov	r0, sp
20021ee2:	461e      	mov	r6, r3
20021ee4:	f008 fda2 	bl	2002aa2c <memset>
20021ee8:	b91d      	cbnz	r5, 20021ef2 <sifli_hash_verify+0x20>
20021eea:	f04f 30ff 	mov.w	r0, #4294967295
20021eee:	b009      	add	sp, #36	@ 0x24
20021ef0:	bdf0      	pop	{r4, r5, r6, r7, pc}
20021ef2:	2c00      	cmp	r4, #0
20021ef4:	d0f9      	beq.n	20021eea <sifli_hash_verify+0x18>
20021ef6:	2302      	movs	r3, #2
20021ef8:	466a      	mov	r2, sp
20021efa:	4639      	mov	r1, r7
20021efc:	4628      	mov	r0, r5
20021efe:	f7ff ff9d 	bl	20021e3c <sifli_hash_calculate>
20021f02:	2800      	cmp	r0, #0
20021f04:	d1f1      	bne.n	20021eea <sifli_hash_verify+0x18>
20021f06:	4632      	mov	r2, r6
20021f08:	4621      	mov	r1, r4
20021f0a:	4668      	mov	r0, sp
20021f0c:	f008 fd7e 	bl	2002aa0c <memcmp>
20021f10:	3800      	subs	r0, #0
20021f12:	bf18      	it	ne
20021f14:	2001      	movne	r0, #1
20021f16:	4240      	negs	r0, r0
20021f18:	e7e9      	b.n	20021eee <sifli_hash_verify+0x1c>

20021f1a <sifli_sigkey_pub_verify>:
20021f1a:	2300      	movs	r3, #0
20021f1c:	b537      	push	{r0, r1, r2, r4, r5, lr}
20021f1e:	4604      	mov	r4, r0
20021f20:	460d      	mov	r5, r1
20021f22:	2208      	movs	r2, #8
20021f24:	4669      	mov	r1, sp
20021f26:	2003      	movs	r0, #3
20021f28:	e9cd 3300 	strd	r3, r3, [sp]
20021f2c:	f7ff f886 	bl	2002103c <sifli_hw_efuse_read>
20021f30:	2808      	cmp	r0, #8
20021f32:	4603      	mov	r3, r0
20021f34:	d106      	bne.n	20021f44 <sifli_sigkey_pub_verify+0x2a>
20021f36:	466a      	mov	r2, sp
20021f38:	4629      	mov	r1, r5
20021f3a:	4620      	mov	r0, r4
20021f3c:	f7ff ffc9 	bl	20021ed2 <sifli_hash_verify>
20021f40:	b003      	add	sp, #12
20021f42:	bd30      	pop	{r4, r5, pc}
20021f44:	f04f 30ff 	mov.w	r0, #4294967295
20021f48:	e7fa      	b.n	20021f40 <sifli_sigkey_pub_verify+0x26>

20021f4a <sifli_img_sig_hash_verify>:
20021f4a:	b5f0      	push	{r4, r5, r6, r7, lr}
20021f4c:	461f      	mov	r7, r3
20021f4e:	4616      	mov	r6, r2
20021f50:	b08d      	sub	sp, #52	@ 0x34
20021f52:	2220      	movs	r2, #32
20021f54:	4604      	mov	r4, r0
20021f56:	460d      	mov	r5, r1
20021f58:	a804      	add	r0, sp, #16
20021f5a:	2100      	movs	r1, #0
20021f5c:	f008 fd66 	bl	2002aa2c <memset>
20021f60:	2302      	movs	r3, #2
20021f62:	4639      	mov	r1, r7
20021f64:	4630      	mov	r0, r6
20021f66:	aa04      	add	r2, sp, #16
20021f68:	f7ff ff68 	bl	20021e3c <sifli_hash_calculate>
20021f6c:	b118      	cbz	r0, 20021f76 <sifli_img_sig_hash_verify+0x2c>
20021f6e:	f04f 30ff 	mov.w	r0, #4294967295
20021f72:	b00d      	add	sp, #52	@ 0x34
20021f74:	bdf0      	pop	{r4, r5, r6, r7, pc}
20021f76:	a802      	add	r0, sp, #8
20021f78:	f007 facc 	bl	20029514 <mbedtls_pk_init>
20021f7c:	4629      	mov	r1, r5
20021f7e:	f44f 7293 	mov.w	r2, #294	@ 0x126
20021f82:	a802      	add	r0, sp, #8
20021f84:	f007 fbd2 	bl	2002972c <mbedtls_pk_parse_public_key>
20021f88:	4601      	mov	r1, r0
20021f8a:	2800      	cmp	r0, #0
20021f8c:	d1ef      	bne.n	20021f6e <sifli_img_sig_hash_verify+0x24>
20021f8e:	2206      	movs	r2, #6
20021f90:	9803      	ldr	r0, [sp, #12]
20021f92:	f007 fc72 	bl	2002987a <mbedtls_rsa_set_padding>
20021f96:	f44f 7380 	mov.w	r3, #256	@ 0x100
20021f9a:	2106      	movs	r1, #6
20021f9c:	e9cd 4300 	strd	r4, r3, [sp]
20021fa0:	aa04      	add	r2, sp, #16
20021fa2:	2320      	movs	r3, #32
20021fa4:	a802      	add	r0, sp, #8
20021fa6:	f007 fae9 	bl	2002957c <mbedtls_pk_verify>
20021faa:	3800      	subs	r0, #0
20021fac:	bf18      	it	ne
20021fae:	2001      	movne	r0, #1
20021fb0:	4240      	negs	r0, r0
20021fb2:	e7de      	b.n	20021f72 <sifli_img_sig_hash_verify+0x28>

20021fb4 <sifli_secboot_exception>:
20021fb4:	2801      	cmp	r0, #1
20021fb6:	b508      	push	{r3, lr}
20021fb8:	d004      	beq.n	20021fc4 <sifli_secboot_exception+0x10>
20021fba:	2802      	cmp	r0, #2
20021fbc:	d009      	beq.n	20021fd2 <sifli_secboot_exception+0x1e>
20021fbe:	2213      	movs	r2, #19
20021fc0:	4905      	ldr	r1, [pc, #20]	@ (20021fd8 <sifli_secboot_exception+0x24>)
20021fc2:	e001      	b.n	20021fc8 <sifli_secboot_exception+0x14>
20021fc4:	2217      	movs	r2, #23
20021fc6:	4905      	ldr	r1, [pc, #20]	@ (20021fdc <sifli_secboot_exception+0x28>)
20021fc8:	4805      	ldr	r0, [pc, #20]	@ (20021fe0 <sifli_secboot_exception+0x2c>)
20021fca:	f7fe f965 	bl	20020298 <boot_uart_tx>
20021fce:	e7fe      	b.n	20021fce <sifli_secboot_exception+0x1a>
20021fd0:	bd08      	pop	{r3, pc}
20021fd2:	2219      	movs	r2, #25
20021fd4:	4903      	ldr	r1, [pc, #12]	@ (20021fe4 <sifli_secboot_exception+0x30>)
20021fd6:	e7f7      	b.n	20021fc8 <sifli_secboot_exception+0x14>
20021fd8:	2002abaa 	.word	0x2002abaa
20021fdc:	2002ab78 	.word	0x2002ab78
20021fe0:	50084000 	.word	0x50084000
20021fe4:	2002ab90 	.word	0x2002ab90

20021fe8 <BSP_GetFlash1DIV>:
20021fe8:	4b01      	ldr	r3, [pc, #4]	@ (20021ff0 <BSP_GetFlash1DIV+0x8>)
20021fea:	8818      	ldrh	r0, [r3, #0]
20021fec:	4770      	bx	lr
20021fee:	bf00      	nop
20021ff0:	20042c0c 	.word	0x20042c0c

20021ff4 <BSP_GetFlash2DIV>:
20021ff4:	4b01      	ldr	r3, [pc, #4]	@ (20021ffc <BSP_GetFlash2DIV+0x8>)
20021ff6:	8818      	ldrh	r0, [r3, #0]
20021ff8:	4770      	bx	lr
20021ffa:	bf00      	nop
20021ffc:	20042c0a 	.word	0x20042c0a

20022000 <BSP_SetFlash1DIV>:
20022000:	4b01      	ldr	r3, [pc, #4]	@ (20022008 <BSP_SetFlash1DIV+0x8>)
20022002:	8018      	strh	r0, [r3, #0]
20022004:	4770      	bx	lr
20022006:	bf00      	nop
20022008:	20042c0c 	.word	0x20042c0c

2002200c <BSP_SetFlash2DIV>:
2002200c:	4b01      	ldr	r3, [pc, #4]	@ (20022014 <BSP_SetFlash2DIV+0x8>)
2002200e:	8018      	strh	r0, [r3, #0]
20022010:	4770      	bx	lr
20022012:	bf00      	nop
20022014:	20042c0a 	.word	0x20042c0a

20022018 <boot_images>:
20022018:	4770      	bx	lr

2002201a <SystemPowerOnModeInit>:
2002201a:	4770      	bx	lr

2002201c <SystemInit>:
2002201c:	b508      	push	{r3, lr}
2002201e:	4a10      	ldr	r2, [pc, #64]	@ (20022060 <SystemInit+0x44>)
20022020:	4b10      	ldr	r3, [pc, #64]	@ (20022064 <SystemInit+0x48>)
20022022:	609a      	str	r2, [r3, #8]
20022024:	f8d3 2088 	ldr.w	r2, [r3, #136]	@ 0x88
20022028:	f042 023f 	orr.w	r2, r2, #63	@ 0x3f
2002202c:	f8c3 2088 	str.w	r2, [r3, #136]	@ 0x88
20022030:	f8d3 2088 	ldr.w	r2, [r3, #136]	@ 0x88
20022034:	f442 0270 	orr.w	r2, r2, #15728640	@ 0xf00000
20022038:	f8c3 2088 	str.w	r2, [r3, #136]	@ 0x88
2002203c:	f7ff fa70 	bl	20021520 <hw_preinit0>
20022040:	f7fe f964 	bl	2002030c <mpu_config>
20022044:	4b08      	ldr	r3, [pc, #32]	@ (20022068 <SystemInit+0x4c>)
20022046:	681b      	ldr	r3, [r3, #0]
20022048:	07db      	lsls	r3, r3, #31
2002204a:	d401      	bmi.n	20022050 <SystemInit+0x34>
2002204c:	f7ff ffe4 	bl	20022018 <boot_images>
20022050:	f7fe f95d 	bl	2002030e <cache_enable>
20022054:	f7ff ffe1 	bl	2002201a <SystemPowerOnModeInit>
20022058:	4b04      	ldr	r3, [pc, #16]	@ (2002206c <SystemInit+0x50>)
2002205a:	4a05      	ldr	r2, [pc, #20]	@ (20022070 <SystemInit+0x54>)
2002205c:	601a      	str	r2, [r3, #0]
2002205e:	bd08      	pop	{r3, pc}
20022060:	20020000 	.word	0x20020000
20022064:	e000ed00 	.word	0xe000ed00
20022068:	5000b000 	.word	0x5000b000
2002206c:	20042c10 	.word	0x20042c10
20022070:	017d7840 	.word	0x017d7840

20022074 <Reset_Handler>:
20022074:	f8df d048 	ldr.w	sp, [pc, #72]	@ 200220c0 <AES_IRQHandler+0x2>
20022078:	4812      	ldr	r0, [pc, #72]	@ (200220c4 <AES_IRQHandler+0x6>)
2002207a:	f380 880a 	msr	MSPLIM, r0
2002207e:	f7ff ffcd 	bl	2002201c <SystemInit>
20022082:	4c11      	ldr	r4, [pc, #68]	@ (200220c8 <AES_IRQHandler+0xa>)
20022084:	4d11      	ldr	r5, [pc, #68]	@ (200220cc <AES_IRQHandler+0xe>)
20022086:	42ac      	cmp	r4, r5
20022088:	da09      	bge.n	2002209e <Reset_Handler+0x2a>
2002208a:	6821      	ldr	r1, [r4, #0]
2002208c:	6862      	ldr	r2, [r4, #4]
2002208e:	68a3      	ldr	r3, [r4, #8]
20022090:	3b04      	subs	r3, #4
20022092:	bfa2      	ittt	ge
20022094:	58c8      	ldrge	r0, [r1, r3]
20022096:	50d0      	strge	r0, [r2, r3]
20022098:	e7fa      	bge.n	20022090 <Reset_Handler+0x1c>
2002209a:	340c      	adds	r4, #12
2002209c:	e7f3      	b.n	20022086 <Reset_Handler+0x12>
2002209e:	4b0c      	ldr	r3, [pc, #48]	@ (200220d0 <AES_IRQHandler+0x12>)
200220a0:	4c0c      	ldr	r4, [pc, #48]	@ (200220d4 <AES_IRQHandler+0x16>)
200220a2:	42a3      	cmp	r3, r4
200220a4:	da08      	bge.n	200220b8 <Reset_Handler+0x44>
200220a6:	6819      	ldr	r1, [r3, #0]
200220a8:	685a      	ldr	r2, [r3, #4]
200220aa:	2000      	movs	r0, #0
200220ac:	3a04      	subs	r2, #4
200220ae:	bfa4      	itt	ge
200220b0:	5088      	strge	r0, [r1, r2]
200220b2:	e7fb      	bge.n	200220ac <Reset_Handler+0x38>
200220b4:	3308      	adds	r3, #8
200220b6:	e7f4      	b.n	200220a2 <Reset_Handler+0x2e>
200220b8:	f7ff fa58 	bl	2002156c <entry>

200220bc <HardFault_Handler>:
200220bc:	e7fe      	b.n	200220bc <HardFault_Handler>

200220be <AES_IRQHandler>:
200220be:	e7fe      	b.n	200220be <AES_IRQHandler>
200220c0:	20042000 	.word	0x20042000
200220c4:	20040000 	.word	0x20040000
200220c8:	2002c614 	.word	0x2002c614
200220cc:	2002c620 	.word	0x2002c620
200220d0:	2002c620 	.word	0x2002c620
200220d4:	2002c628 	.word	0x2002c628

200220d8 <__aeabi_unwind_cpp_pr0>:
200220d8:	2000      	movs	r0, #0
200220da:	4770      	bx	lr

200220dc <HAL_GetTick>:
200220dc:	4b01      	ldr	r3, [pc, #4]	@ (200220e4 <HAL_GetTick+0x8>)
200220de:	6818      	ldr	r0, [r3, #0]
200220e0:	4770      	bx	lr
200220e2:	bf00      	nop
200220e4:	2004cba4 	.word	0x2004cba4

200220e8 <HAL_Delay_us_>:
200220e8:	b513      	push	{r0, r1, r4, lr}
200220ea:	9001      	str	r0, [sp, #4]
200220ec:	9b01      	ldr	r3, [sp, #4]
200220ee:	4c1a      	ldr	r4, [pc, #104]	@ (20022158 <HAL_Delay_us_+0x70>)
200220f0:	b133      	cbz	r3, 20022100 <HAL_Delay_us_+0x18>
200220f2:	6823      	ldr	r3, [r4, #0]
200220f4:	b123      	cbz	r3, 20022100 <HAL_Delay_us_+0x18>
200220f6:	9b01      	ldr	r3, [sp, #4]
200220f8:	f1b3 7f80 	cmp.w	r3, #16777216	@ 0x1000000
200220fc:	d90c      	bls.n	20022118 <HAL_Delay_us_+0x30>
200220fe:	e7fe      	b.n	200220fe <HAL_Delay_us_+0x16>
20022100:	2000      	movs	r0, #0
20022102:	f003 f849 	bl	20025198 <HAL_RCC_GetHCLKFreq>
20022106:	4b15      	ldr	r3, [pc, #84]	@ (2002215c <HAL_Delay_us_+0x74>)
20022108:	fbb0 f0f3 	udiv	r0, r0, r3
2002210c:	9b01      	ldr	r3, [sp, #4]
2002210e:	6020      	str	r0, [r4, #0]
20022110:	2b00      	cmp	r3, #0
20022112:	d1f0      	bne.n	200220f6 <HAL_Delay_us_+0xe>
20022114:	b002      	add	sp, #8
20022116:	bd10      	pop	{r4, pc}
20022118:	9b01      	ldr	r3, [sp, #4]
2002211a:	2b00      	cmp	r3, #0
2002211c:	d0fa      	beq.n	20022114 <HAL_Delay_us_+0x2c>
2002211e:	4a10      	ldr	r2, [pc, #64]	@ (20022160 <HAL_Delay_us_+0x78>)
20022120:	6813      	ldr	r3, [r2, #0]
20022122:	f013 0301 	ands.w	r3, r3, #1
20022126:	d10d      	bne.n	20022144 <HAL_Delay_us_+0x5c>
20022128:	480e      	ldr	r0, [pc, #56]	@ (20022164 <HAL_Delay_us_+0x7c>)
2002212a:	f8d0 10fc 	ldr.w	r1, [r0, #252]	@ 0xfc
2002212e:	f041 7180 	orr.w	r1, r1, #16777216	@ 0x1000000
20022132:	f8c0 10fc 	str.w	r1, [r0, #252]	@ 0xfc
20022136:	6053      	str	r3, [r2, #4]
20022138:	6813      	ldr	r3, [r2, #0]
2002213a:	f443 3300 	orr.w	r3, r3, #131072	@ 0x20000
2002213e:	f043 0301 	orr.w	r3, r3, #1
20022142:	6013      	str	r3, [r2, #0]
20022144:	9b01      	ldr	r3, [sp, #4]
20022146:	6822      	ldr	r2, [r4, #0]
20022148:	4905      	ldr	r1, [pc, #20]	@ (20022160 <HAL_Delay_us_+0x78>)
2002214a:	4353      	muls	r3, r2
2002214c:	6848      	ldr	r0, [r1, #4]
2002214e:	684a      	ldr	r2, [r1, #4]
20022150:	1a12      	subs	r2, r2, r0
20022152:	429a      	cmp	r2, r3
20022154:	d3fb      	bcc.n	2002214e <HAL_Delay_us_+0x66>
20022156:	e7dd      	b.n	20022114 <HAL_Delay_us_+0x2c>
20022158:	2004cba0 	.word	0x2004cba0
2002215c:	000f4240 	.word	0x000f4240
20022160:	e0001000 	.word	0xe0001000
20022164:	e000ed00 	.word	0xe000ed00

20022168 <HAL_Delay_us2_>:
20022168:	b537      	push	{r0, r1, r2, r4, r5, lr}
2002216a:	9001      	str	r0, [sp, #4]
2002216c:	f04f 20e0 	mov.w	r0, #3758153728	@ 0xe000e000
20022170:	f44f 727a 	mov.w	r2, #1000	@ 0x3e8
20022174:	6944      	ldr	r4, [r0, #20]
20022176:	9b01      	ldr	r3, [sp, #4]
20022178:	4363      	muls	r3, r4
2002217a:	fbb3 f3f2 	udiv	r3, r3, r2
2002217e:	9301      	str	r3, [sp, #4]
20022180:	2300      	movs	r3, #0
20022182:	6981      	ldr	r1, [r0, #24]
20022184:	6982      	ldr	r2, [r0, #24]
20022186:	428a      	cmp	r2, r1
20022188:	d0fc      	beq.n	20022184 <HAL_Delay_us2_+0x1c>
2002218a:	bf25      	ittet	cs
2002218c:	1aa5      	subcs	r5, r4, r2
2002218e:	195b      	addcs	r3, r3, r5
20022190:	185b      	addcc	r3, r3, r1
20022192:	185b      	addcs	r3, r3, r1
20022194:	9901      	ldr	r1, [sp, #4]
20022196:	bf38      	it	cc
20022198:	1a9b      	subcc	r3, r3, r2
2002219a:	4299      	cmp	r1, r3
2002219c:	d801      	bhi.n	200221a2 <HAL_Delay_us2_+0x3a>
2002219e:	b003      	add	sp, #12
200221a0:	bd30      	pop	{r4, r5, pc}
200221a2:	4611      	mov	r1, r2
200221a4:	e7ee      	b.n	20022184 <HAL_Delay_us2_+0x1c>

200221a6 <HAL_Delay_us>:
200221a6:	4603      	mov	r3, r0
200221a8:	b570      	push	{r4, r5, r6, lr}
200221aa:	b1b8      	cbz	r0, 200221dc <HAL_Delay_us+0x36>
200221ac:	f242 7510 	movw	r5, #10000	@ 0x2710
200221b0:	f04f 26e0 	mov.w	r6, #3758153728	@ 0xe000e000
200221b4:	42ab      	cmp	r3, r5
200221b6:	bf84      	itt	hi
200221b8:	f5a3 541c 	subhi.w	r4, r3, #9984	@ 0x2700
200221bc:	f242 7310 	movwhi	r3, #10000	@ 0x2710
200221c0:	6932      	ldr	r2, [r6, #16]
200221c2:	bf98      	it	ls
200221c4:	2400      	movls	r4, #0
200221c6:	4618      	mov	r0, r3
200221c8:	bf88      	it	hi
200221ca:	3c10      	subhi	r4, #16
200221cc:	07d3      	lsls	r3, r2, #31
200221ce:	d408      	bmi.n	200221e2 <HAL_Delay_us+0x3c>
200221d0:	f7ff ff8a 	bl	200220e8 <HAL_Delay_us_>
200221d4:	4623      	mov	r3, r4
200221d6:	2c00      	cmp	r4, #0
200221d8:	d1ec      	bne.n	200221b4 <HAL_Delay_us+0xe>
200221da:	e001      	b.n	200221e0 <HAL_Delay_us+0x3a>
200221dc:	f7ff ff84 	bl	200220e8 <HAL_Delay_us_>
200221e0:	bd70      	pop	{r4, r5, r6, pc}
200221e2:	f7ff ffc1 	bl	20022168 <HAL_Delay_us2_>
200221e6:	e7f5      	b.n	200221d4 <HAL_Delay_us+0x2e>

200221e8 <WDT_IRQHandler>:
200221e8:	4770      	bx	lr

200221ea <DBG_Trigger_IRQHandler>:
200221ea:	4770      	bx	lr

200221ec <NMI_Handler>:
200221ec:	b508      	push	{r3, lr}
200221ee:	4b05      	ldr	r3, [pc, #20]	@ (20022204 <NMI_Handler+0x18>)
200221f0:	6a1b      	ldr	r3, [r3, #32]
200221f2:	005b      	lsls	r3, r3, #1
200221f4:	d502      	bpl.n	200221fc <NMI_Handler+0x10>
200221f6:	f7ff fff8 	bl	200221ea <DBG_Trigger_IRQHandler>
200221fa:	bd08      	pop	{r3, pc}
200221fc:	f7ff fff4 	bl	200221e8 <WDT_IRQHandler>
20022200:	e7fb      	b.n	200221fa <NMI_Handler+0xe>
20022202:	bf00      	nop
20022204:	5000b000 	.word	0x5000b000

20022208 <HAL_AES_run_help>:
20022208:	b510      	push	{r4, lr}
2002220a:	f101 4470 	add.w	r4, r1, #4026531840	@ 0xf0000000
2002220e:	f1b4 5f80 	cmp.w	r4, #268435456	@ 0x10000000
20022212:	4c0e      	ldr	r4, [pc, #56]	@ (2002224c <HAL_AES_run_help+0x44>)
20022214:	bf38      	it	cc
20022216:	f101 41a0 	addcc.w	r1, r1, #1342177280	@ 0x50000000
2002221a:	6161      	str	r1, [r4, #20]
2002221c:	f102 4170 	add.w	r1, r2, #4026531840	@ 0xf0000000
20022220:	f1b1 5f80 	cmp.w	r1, #268435456	@ 0x10000000
20022224:	f103 030f 	add.w	r3, r3, #15
20022228:	ea4f 1323 	mov.w	r3, r3, asr #4
2002222c:	bf38      	it	cc
2002222e:	f102 42a0 	addcc.w	r2, r2, #1342177280	@ 0x50000000
20022232:	61a2      	str	r2, [r4, #24]
20022234:	61e3      	str	r3, [r4, #28]
20022236:	6923      	ldr	r3, [r4, #16]
20022238:	b108      	cbz	r0, 2002223e <HAL_AES_run_help+0x36>
2002223a:	ea43 13c0 	orr.w	r3, r3, r0, lsl #7
2002223e:	4a03      	ldr	r2, [pc, #12]	@ (2002224c <HAL_AES_run_help+0x44>)
20022240:	6123      	str	r3, [r4, #16]
20022242:	6813      	ldr	r3, [r2, #0]
20022244:	f043 0301 	orr.w	r3, r3, #1
20022248:	6013      	str	r3, [r2, #0]
2002224a:	bd10      	pop	{r4, pc}
2002224c:	5000d000 	.word	0x5000d000

20022250 <HAL_HASH_run_help.isra.0>:
20022250:	f100 4370 	add.w	r3, r0, #4026531840	@ 0xf0000000
20022254:	b510      	push	{r4, lr}
20022256:	f1b3 5f80 	cmp.w	r3, #268435456	@ 0x10000000
2002225a:	4c09      	ldr	r4, [pc, #36]	@ (20022280 <HAL_HASH_run_help.isra.0+0x30>)
2002225c:	bf38      	it	cc
2002225e:	f100 40a0 	addcc.w	r0, r0, #1342177280	@ 0x50000000
20022262:	6560      	str	r0, [r4, #84]	@ 0x54
20022264:	65a1      	str	r1, [r4, #88]	@ 0x58
20022266:	b11a      	cbz	r2, 20022270 <HAL_HASH_run_help.isra.0+0x20>
20022268:	6d23      	ldr	r3, [r4, #80]	@ 0x50
2002226a:	f043 0308 	orr.w	r3, r3, #8
2002226e:	6523      	str	r3, [r4, #80]	@ 0x50
20022270:	6d21      	ldr	r1, [r4, #80]	@ 0x50
20022272:	4804      	ldr	r0, [pc, #16]	@ (20022284 <HAL_HASH_run_help.isra.0+0x34>)
20022274:	f000 fca4 	bl	20022bc0 <HAL_DBG_printf>
20022278:	2304      	movs	r3, #4
2002227a:	6023      	str	r3, [r4, #0]
2002227c:	bd10      	pop	{r4, pc}
2002227e:	bf00      	nop
20022280:	5000d000 	.word	0x5000d000
20022284:	2002abbe 	.word	0x2002abbe

20022288 <HAL_AES_reset>:
20022288:	2202      	movs	r2, #2
2002228a:	2000      	movs	r0, #0
2002228c:	4b01      	ldr	r3, [pc, #4]	@ (20022294 <HAL_AES_reset+0xc>)
2002228e:	601a      	str	r2, [r3, #0]
20022290:	6018      	str	r0, [r3, #0]
20022292:	4770      	bx	lr
20022294:	5000d000 	.word	0x5000d000

20022298 <HAL_AES_init>:
20022298:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
2002229a:	461f      	mov	r7, r3
2002229c:	4b1e      	ldr	r3, [pc, #120]	@ (20022318 <HAL_AES_init+0x80>)
2002229e:	4604      	mov	r4, r0
200222a0:	685b      	ldr	r3, [r3, #4]
200222a2:	4616      	mov	r6, r2
200222a4:	07db      	lsls	r3, r3, #31
200222a6:	d501      	bpl.n	200222ac <HAL_AES_init+0x14>
200222a8:	f7ff ffee 	bl	20022288 <HAL_AES_reset>
200222ac:	fab4 f084 	clz	r0, r4
200222b0:	2918      	cmp	r1, #24
200222b2:	ea4f 1050 	mov.w	r0, r0, lsr #5
200222b6:	ea4f 1540 	mov.w	r5, r0, lsl #5
200222ba:	d01c      	beq.n	200222f6 <HAL_AES_init+0x5e>
200222bc:	2920      	cmp	r1, #32
200222be:	d01c      	beq.n	200222fa <HAL_AES_init+0x62>
200222c0:	2910      	cmp	r1, #16
200222c2:	d125      	bne.n	20022310 <HAL_AES_init+0x78>
200222c4:	2300      	movs	r3, #0
200222c6:	b164      	cbz	r4, 200222e2 <HAL_AES_init+0x4a>
200222c8:	4620      	mov	r0, r4
200222ca:	4a14      	ldr	r2, [pc, #80]	@ (2002231c <HAL_AES_init+0x84>)
200222cc:	f021 0103 	bic.w	r1, r1, #3
200222d0:	4421      	add	r1, r4
200222d2:	1b12      	subs	r2, r2, r4
200222d4:	1814      	adds	r4, r2, r0
200222d6:	f850 cb04 	ldr.w	ip, [r0], #4
200222da:	4281      	cmp	r1, r0
200222dc:	f8c4 c000 	str.w	ip, [r4]
200222e0:	d1f8      	bne.n	200222d4 <HAL_AES_init+0x3c>
200222e2:	ea47 0005 	orr.w	r0, r7, r5
200222e6:	ea40 00c3 	orr.w	r0, r0, r3, lsl #3
200222ea:	4b0b      	ldr	r3, [pc, #44]	@ (20022318 <HAL_AES_init+0x80>)
200222ec:	6118      	str	r0, [r3, #16]
200222ee:	b107      	cbz	r7, 200222f2 <HAL_AES_init+0x5a>
200222f0:	b92e      	cbnz	r6, 200222fe <HAL_AES_init+0x66>
200222f2:	2000      	movs	r0, #0
200222f4:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
200222f6:	2301      	movs	r3, #1
200222f8:	e7e5      	b.n	200222c6 <HAL_AES_init+0x2e>
200222fa:	2302      	movs	r3, #2
200222fc:	e7e3      	b.n	200222c6 <HAL_AES_init+0x2e>
200222fe:	6832      	ldr	r2, [r6, #0]
20022300:	621a      	str	r2, [r3, #32]
20022302:	6872      	ldr	r2, [r6, #4]
20022304:	625a      	str	r2, [r3, #36]	@ 0x24
20022306:	68b2      	ldr	r2, [r6, #8]
20022308:	629a      	str	r2, [r3, #40]	@ 0x28
2002230a:	68f2      	ldr	r2, [r6, #12]
2002230c:	62da      	str	r2, [r3, #44]	@ 0x2c
2002230e:	e7f0      	b.n	200222f2 <HAL_AES_init+0x5a>
20022310:	f04f 30ff 	mov.w	r0, #4294967295
20022314:	e7ee      	b.n	200222f4 <HAL_AES_init+0x5c>
20022316:	bf00      	nop
20022318:	5000d000 	.word	0x5000d000
2002231c:	5000d030 	.word	0x5000d030

20022320 <HAL_AES_run>:
20022320:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
20022322:	2708      	movs	r7, #8
20022324:	4e17      	ldr	r6, [pc, #92]	@ (20022384 <HAL_AES_run+0x64>)
20022326:	4614      	mov	r4, r2
20022328:	461d      	mov	r5, r3
2002232a:	f8c6 7088 	str.w	r7, [r6, #136]	@ 0x88
2002232e:	f3bf 8f4f 	dsb	sy
20022332:	f3bf 8f6f 	isb	sy
20022336:	2700      	movs	r7, #0
20022338:	4e13      	ldr	r6, [pc, #76]	@ (20022388 <HAL_AES_run+0x68>)
2002233a:	60f7      	str	r7, [r6, #12]
2002233c:	f7ff ff64 	bl	20022208 <HAL_AES_run_help>
20022340:	6873      	ldr	r3, [r6, #4]
20022342:	07db      	lsls	r3, r3, #31
20022344:	d4fc      	bmi.n	20022340 <HAL_AES_run+0x20>
20022346:	68b0      	ldr	r0, [r6, #8]
20022348:	f000 0006 	and.w	r0, r0, #6
2002234c:	3800      	subs	r0, #0
2002234e:	bf18      	it	ne
20022350:	2001      	movne	r0, #1
20022352:	f1b4 4fc0 	cmp.w	r4, #1610612736	@ 0x60000000
20022356:	d314      	bcc.n	20022382 <HAL_AES_run+0x62>
20022358:	2d00      	cmp	r5, #0
2002235a:	dd12      	ble.n	20022382 <HAL_AES_run+0x62>
2002235c:	f004 031f 	and.w	r3, r4, #31
20022360:	442b      	add	r3, r5
20022362:	f024 021f 	bic.w	r2, r4, #31
20022366:	f3bf 8f4f 	dsb	sy
2002236a:	4c08      	ldr	r4, [pc, #32]	@ (2002238c <HAL_AES_run+0x6c>)
2002236c:	4413      	add	r3, r2
2002236e:	f8c4 225c 	str.w	r2, [r4, #604]	@ 0x25c
20022372:	3220      	adds	r2, #32
20022374:	1a99      	subs	r1, r3, r2
20022376:	2900      	cmp	r1, #0
20022378:	dcf9      	bgt.n	2002236e <HAL_AES_run+0x4e>
2002237a:	f3bf 8f4f 	dsb	sy
2002237e:	f3bf 8f6f 	isb	sy
20022382:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
20022384:	e000e100 	.word	0xe000e100
20022388:	5000d000 	.word	0x5000d000
2002238c:	e000ed00 	.word	0xe000ed00

20022390 <HAL_HASH_run>:
20022390:	b510      	push	{r4, lr}
20022392:	2408      	movs	r4, #8
20022394:	4b0b      	ldr	r3, [pc, #44]	@ (200223c4 <HAL_HASH_run+0x34>)
20022396:	f8c3 4088 	str.w	r4, [r3, #136]	@ 0x88
2002239a:	f3bf 8f4f 	dsb	sy
2002239e:	f3bf 8f6f 	isb	sy
200223a2:	f7ff ff55 	bl	20022250 <HAL_HASH_run_help.isra.0>
200223a6:	4b08      	ldr	r3, [pc, #32]	@ (200223c8 <HAL_HASH_run+0x38>)
200223a8:	685a      	ldr	r2, [r3, #4]
200223aa:	0752      	lsls	r2, r2, #29
200223ac:	d4fc      	bmi.n	200223a8 <HAL_HASH_run+0x18>
200223ae:	689a      	ldr	r2, [r3, #8]
200223b0:	f002 0238 	and.w	r2, r2, #56	@ 0x38
200223b4:	609a      	str	r2, [r3, #8]
200223b6:	6898      	ldr	r0, [r3, #8]
200223b8:	f000 0030 	and.w	r0, r0, #48	@ 0x30
200223bc:	3800      	subs	r0, #0
200223be:	bf18      	it	ne
200223c0:	2001      	movne	r0, #1
200223c2:	bd10      	pop	{r4, pc}
200223c4:	e000e100 	.word	0xe000e100
200223c8:	5000d000 	.word	0x5000d000

200223cc <HAL_HASH_reset>:
200223cc:	2208      	movs	r2, #8
200223ce:	2000      	movs	r0, #0
200223d0:	4b01      	ldr	r3, [pc, #4]	@ (200223d8 <HAL_HASH_reset+0xc>)
200223d2:	601a      	str	r2, [r3, #0]
200223d4:	6018      	str	r0, [r3, #0]
200223d6:	4770      	bx	lr
200223d8:	5000d000 	.word	0x5000d000

200223dc <HAL_HASH_init>:
200223dc:	0693      	lsls	r3, r2, #26
200223de:	b570      	push	{r4, r5, r6, lr}
200223e0:	4606      	mov	r6, r0
200223e2:	460c      	mov	r4, r1
200223e4:	4615      	mov	r5, r2
200223e6:	d11c      	bne.n	20022422 <HAL_HASH_init+0x46>
200223e8:	2903      	cmp	r1, #3
200223ea:	d81a      	bhi.n	20022422 <HAL_HASH_init+0x46>
200223ec:	f7ff ffee 	bl	200223cc <HAL_HASH_reset>
200223f0:	b13e      	cbz	r6, 20022402 <HAL_HASH_init+0x26>
200223f2:	4b0d      	ldr	r3, [pc, #52]	@ (20022428 <HAL_HASH_init+0x4c>)
200223f4:	480d      	ldr	r0, [pc, #52]	@ (2002242c <HAL_HASH_init+0x50>)
200223f6:	5c5a      	ldrb	r2, [r3, r1]
200223f8:	4631      	mov	r1, r6
200223fa:	f008 fb31 	bl	2002aa60 <memcpy>
200223fe:	f044 0420 	orr.w	r4, r4, #32
20022402:	4b0b      	ldr	r3, [pc, #44]	@ (20022430 <HAL_HASH_init+0x54>)
20022404:	f044 0180 	orr.w	r1, r4, #128	@ 0x80
20022408:	6519      	str	r1, [r3, #80]	@ 0x50
2002240a:	b11d      	cbz	r5, 20022414 <HAL_HASH_init+0x38>
2002240c:	f8c3 509c 	str.w	r5, [r3, #156]	@ 0x9c
20022410:	f444 71c0 	orr.w	r1, r4, #384	@ 0x180
20022414:	4807      	ldr	r0, [pc, #28]	@ (20022434 <HAL_HASH_init+0x58>)
20022416:	462a      	mov	r2, r5
20022418:	6519      	str	r1, [r3, #80]	@ 0x50
2002241a:	f000 fbd1 	bl	20022bc0 <HAL_DBG_printf>
2002241e:	2000      	movs	r0, #0
20022420:	bd70      	pop	{r4, r5, r6, pc}
20022422:	f04f 30ff 	mov.w	r0, #4294967295
20022426:	e7fb      	b.n	20022420 <HAL_HASH_init+0x44>
20022428:	2002ba54 	.word	0x2002ba54
2002242c:	5000d05c 	.word	0x5000d05c
20022430:	5000d000 	.word	0x5000d000
20022434:	2002abd1 	.word	0x2002abd1

20022438 <HAL_HASH_result>:
20022438:	b510      	push	{r4, lr}
2002243a:	4c08      	ldr	r4, [pc, #32]	@ (2002245c <HAL_HASH_result+0x24>)
2002243c:	4a08      	ldr	r2, [pc, #32]	@ (20022460 <HAL_HASH_result+0x28>)
2002243e:	6d23      	ldr	r3, [r4, #80]	@ 0x50
20022440:	f104 017c 	add.w	r1, r4, #124	@ 0x7c
20022444:	f003 0307 	and.w	r3, r3, #7
20022448:	5cd2      	ldrb	r2, [r2, r3]
2002244a:	f008 fb09 	bl	2002aa60 <memcpy>
2002244e:	f8d4 10a4 	ldr.w	r1, [r4, #164]	@ 0xa4
20022452:	4804      	ldr	r0, [pc, #16]	@ (20022464 <HAL_HASH_result+0x2c>)
20022454:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
20022458:	f000 bbb2 	b.w	20022bc0 <HAL_DBG_printf>
2002245c:	5000d000 	.word	0x5000d000
20022460:	2002ba54 	.word	0x2002ba54
20022464:	2002ac05 	.word	0x2002ac05

20022468 <HAL_NVIC_EnableIRQ>:
20022468:	2800      	cmp	r0, #0
2002246a:	da00      	bge.n	2002246e <HAL_NVIC_EnableIRQ+0x6>
2002246c:	e7fe      	b.n	2002246c <HAL_NVIC_EnableIRQ+0x4>
2002246e:	2301      	movs	r3, #1
20022470:	0941      	lsrs	r1, r0, #5
20022472:	4a03      	ldr	r2, [pc, #12]	@ (20022480 <HAL_NVIC_EnableIRQ+0x18>)
20022474:	f000 001f 	and.w	r0, r0, #31
20022478:	4083      	lsls	r3, r0
2002247a:	f842 3021 	str.w	r3, [r2, r1, lsl #2]
2002247e:	4770      	bx	lr
20022480:	e000e100 	.word	0xe000e100

20022484 <HAL_NVIC_DisableIRQ>:
20022484:	2800      	cmp	r0, #0
20022486:	da00      	bge.n	2002248a <HAL_NVIC_DisableIRQ+0x6>
20022488:	e7fe      	b.n	20022488 <HAL_NVIC_DisableIRQ+0x4>
2002248a:	2201      	movs	r2, #1
2002248c:	4906      	ldr	r1, [pc, #24]	@ (200224a8 <HAL_NVIC_DisableIRQ+0x24>)
2002248e:	0943      	lsrs	r3, r0, #5
20022490:	f000 001f 	and.w	r0, r0, #31
20022494:	4082      	lsls	r2, r0
20022496:	3320      	adds	r3, #32
20022498:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
2002249c:	f3bf 8f4f 	dsb	sy
200224a0:	f3bf 8f6f 	isb	sy
200224a4:	4770      	bx	lr
200224a6:	bf00      	nop
200224a8:	e000e100 	.word	0xe000e100

200224ac <DMA_Init>:
200224ac:	2302      	movs	r3, #2
200224ae:	b530      	push	{r4, r5, lr}
200224b0:	6a42      	ldr	r2, [r0, #36]	@ 0x24
200224b2:	f880 302d 	strb.w	r3, [r0, #45]	@ 0x2d
200224b6:	6803      	ldr	r3, [r0, #0]
200224b8:	611a      	str	r2, [r3, #16]
200224ba:	e9d0 3402 	ldrd	r3, r4, [r0, #8]
200224be:	4323      	orrs	r3, r4
200224c0:	6904      	ldr	r4, [r0, #16]
200224c2:	6801      	ldr	r1, [r0, #0]
200224c4:	4323      	orrs	r3, r4
200224c6:	6944      	ldr	r4, [r0, #20]
200224c8:	680a      	ldr	r2, [r1, #0]
200224ca:	4323      	orrs	r3, r4
200224cc:	6984      	ldr	r4, [r0, #24]
200224ce:	f36f 120e 	bfc	r2, #4, #11
200224d2:	4323      	orrs	r3, r4
200224d4:	69c4      	ldr	r4, [r0, #28]
200224d6:	4323      	orrs	r3, r4
200224d8:	6a04      	ldr	r4, [r0, #32]
200224da:	4323      	orrs	r3, r4
200224dc:	4313      	orrs	r3, r2
200224de:	600b      	str	r3, [r1, #0]
200224e0:	6883      	ldr	r3, [r0, #8]
200224e2:	f5b3 4f80 	cmp.w	r3, #16384	@ 0x4000
200224e6:	d018      	beq.n	2002251a <DMA_Init+0x6e>
200224e8:	6cc1      	ldr	r1, [r0, #76]	@ 0x4c
200224ea:	6c82      	ldr	r2, [r0, #72]	@ 0x48
200224ec:	f3c1 0387 	ubfx	r3, r1, #2, #8
200224f0:	06c9      	lsls	r1, r1, #27
200224f2:	d41b      	bmi.n	2002252c <DMA_Init+0x80>
200224f4:	243f      	movs	r4, #63	@ 0x3f
200224f6:	f003 0307 	and.w	r3, r3, #7
200224fa:	f8d2 10a8 	ldr.w	r1, [r2, #168]	@ 0xa8
200224fe:	00db      	lsls	r3, r3, #3
20022500:	409c      	lsls	r4, r3
20022502:	ea21 0104 	bic.w	r1, r1, r4
20022506:	f8c2 10a8 	str.w	r1, [r2, #168]	@ 0xa8
2002250a:	6c81      	ldr	r1, [r0, #72]	@ 0x48
2002250c:	6842      	ldr	r2, [r0, #4]
2002250e:	f8d1 40a8 	ldr.w	r4, [r1, #168]	@ 0xa8
20022512:	409a      	lsls	r2, r3
20022514:	4322      	orrs	r2, r4
20022516:	f8c1 20a8 	str.w	r2, [r1, #168]	@ 0xa8
2002251a:	6982      	ldr	r2, [r0, #24]
2002251c:	f5b2 6f80 	cmp.w	r2, #1024	@ 0x400
20022520:	d018      	beq.n	20022554 <DMA_Init+0xa8>
20022522:	f5b2 6f00 	cmp.w	r2, #2048	@ 0x800
20022526:	d01f      	beq.n	20022568 <DMA_Init+0xbc>
20022528:	b1aa      	cbz	r2, 20022556 <DMA_Init+0xaa>
2002252a:	e7fe      	b.n	2002252a <DMA_Init+0x7e>
2002252c:	243f      	movs	r4, #63	@ 0x3f
2002252e:	f003 0303 	and.w	r3, r3, #3
20022532:	f8d2 10ac 	ldr.w	r1, [r2, #172]	@ 0xac
20022536:	00db      	lsls	r3, r3, #3
20022538:	409c      	lsls	r4, r3
2002253a:	ea21 0104 	bic.w	r1, r1, r4
2002253e:	f8c2 10ac 	str.w	r1, [r2, #172]	@ 0xac
20022542:	6c81      	ldr	r1, [r0, #72]	@ 0x48
20022544:	6842      	ldr	r2, [r0, #4]
20022546:	f8d1 40ac 	ldr.w	r4, [r1, #172]	@ 0xac
2002254a:	409a      	lsls	r2, r3
2002254c:	4322      	orrs	r2, r4
2002254e:	f8c1 20ac 	str.w	r2, [r1, #172]	@ 0xac
20022552:	e7e2      	b.n	2002251a <DMA_Init+0x6e>
20022554:	2201      	movs	r2, #1
20022556:	6943      	ldr	r3, [r0, #20]
20022558:	f5b3 7f80 	cmp.w	r3, #256	@ 0x100
2002255c:	d006      	beq.n	2002256c <DMA_Init+0xc0>
2002255e:	f5b3 7f00 	cmp.w	r3, #512	@ 0x200
20022562:	d02b      	beq.n	200225bc <DMA_Init+0x110>
20022564:	b11b      	cbz	r3, 2002256e <DMA_Init+0xc2>
20022566:	e7fe      	b.n	20022566 <DMA_Init+0xba>
20022568:	2202      	movs	r2, #2
2002256a:	e7f4      	b.n	20022556 <DMA_Init+0xaa>
2002256c:	2301      	movs	r3, #1
2002256e:	6901      	ldr	r1, [r0, #16]
20022570:	f1a1 0480 	sub.w	r4, r1, #128	@ 0x80
20022574:	4261      	negs	r1, r4
20022576:	4161      	adcs	r1, r4
20022578:	68c4      	ldr	r4, [r0, #12]
2002257a:	f1a4 0540 	sub.w	r5, r4, #64	@ 0x40
2002257e:	426c      	negs	r4, r5
20022580:	416c      	adcs	r4, r5
20022582:	6885      	ldr	r5, [r0, #8]
20022584:	2d10      	cmp	r5, #16
20022586:	bf1f      	itttt	ne
20022588:	f880 1065 	strbne.w	r1, [r0, #101]	@ 0x65
2002258c:	4619      	movne	r1, r3
2002258e:	4613      	movne	r3, r2
20022590:	460a      	movne	r2, r1
20022592:	f880 3067 	strb.w	r3, [r0, #103]	@ 0x67
20022596:	f880 2066 	strb.w	r2, [r0, #102]	@ 0x66
2002259a:	f04f 0300 	mov.w	r3, #0
2002259e:	f04f 0201 	mov.w	r2, #1
200225a2:	6443      	str	r3, [r0, #68]	@ 0x44
200225a4:	bf06      	itte	eq
200225a6:	f880 4065 	strbeq.w	r4, [r0, #101]	@ 0x65
200225aa:	f880 1064 	strbeq.w	r1, [r0, #100]	@ 0x64
200225ae:	f880 4064 	strbne.w	r4, [r0, #100]	@ 0x64
200225b2:	f880 202d 	strb.w	r2, [r0, #45]	@ 0x2d
200225b6:	f880 302c 	strb.w	r3, [r0, #44]	@ 0x2c
200225ba:	bd30      	pop	{r4, r5, pc}
200225bc:	2302      	movs	r3, #2
200225be:	e7d6      	b.n	2002256e <DMA_Init+0xc2>

200225c0 <DMA_AllocChannel>:
200225c0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
200225c2:	4b2e      	ldr	r3, [pc, #184]	@ (2002267c <DMA_AllocChannel+0xbc>)
200225c4:	6802      	ldr	r2, [r0, #0]
200225c6:	4413      	add	r3, r2
200225c8:	2ba0      	cmp	r3, #160	@ 0xa0
200225ca:	d904      	bls.n	200225d6 <DMA_AllocChannel+0x16>
200225cc:	4b2c      	ldr	r3, [pc, #176]	@ (20022680 <DMA_AllocChannel+0xc0>)
200225ce:	4413      	add	r3, r2
200225d0:	2ba0      	cmp	r3, #160	@ 0xa0
200225d2:	d90f      	bls.n	200225f4 <DMA_AllocChannel+0x34>
200225d4:	e7fe      	b.n	200225d4 <DMA_AllocChannel+0x14>
200225d6:	2632      	movs	r6, #50	@ 0x32
200225d8:	f8df c0b0 	ldr.w	ip, [pc, #176]	@ 2002268c <DMA_AllocChannel+0xcc>
200225dc:	4b29      	ldr	r3, [pc, #164]	@ (20022684 <DMA_AllocChannel+0xc4>)
200225de:	f3ef 8710 	mrs	r7, PRIMASK
200225e2:	2201      	movs	r2, #1
200225e4:	f382 8810 	msr	PRIMASK, r2
200225e8:	6cc5      	ldr	r5, [r0, #76]	@ 0x4c
200225ea:	2d1f      	cmp	r5, #31
200225ec:	ea4f 0495 	mov.w	r4, r5, lsr #2
200225f0:	d905      	bls.n	200225fe <DMA_AllocChannel+0x3e>
200225f2:	e7fe      	b.n	200225f2 <DMA_AllocChannel+0x32>
200225f4:	2602      	movs	r6, #2
200225f6:	f8df c098 	ldr.w	ip, [pc, #152]	@ 20022690 <DMA_AllocChannel+0xd0>
200225fa:	4b23      	ldr	r3, [pc, #140]	@ (20022688 <DMA_AllocChannel+0xc8>)
200225fc:	e7ef      	b.n	200225de <DMA_AllocChannel+0x1e>
200225fe:	eb03 05c4 	add.w	r5, r3, r4, lsl #3
20022602:	f895 e004 	ldrb.w	lr, [r5, #4]
20022606:	f1be 0f00 	cmp.w	lr, #0
2002260a:	d032      	beq.n	20022672 <DMA_AllocChannel+0xb2>
2002260c:	f853 2034 	ldr.w	r2, [r3, r4, lsl #3]
20022610:	4282      	cmp	r2, r0
20022612:	d103      	bne.n	2002261c <DMA_AllocChannel+0x5c>
20022614:	f387 8810 	msr	PRIMASK, r7
20022618:	2002      	movs	r0, #2
2002261a:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
2002261c:	2200      	movs	r2, #0
2002261e:	791c      	ldrb	r4, [r3, #4]
20022620:	461d      	mov	r5, r3
20022622:	bb04      	cbnz	r4, 20022666 <DMA_AllocChannel+0xa6>
20022624:	2301      	movs	r3, #1
20022626:	712b      	strb	r3, [r5, #4]
20022628:	2314      	movs	r3, #20
2002262a:	fb03 c302 	mla	r3, r3, r2, ip
2002262e:	4416      	add	r6, r2
20022630:	0092      	lsls	r2, r2, #2
20022632:	b274      	sxtb	r4, r6
20022634:	6003      	str	r3, [r0, #0]
20022636:	64c2      	str	r2, [r0, #76]	@ 0x4c
20022638:	f387 8810 	msr	PRIMASK, r7
2002263c:	b121      	cbz	r1, 20022648 <DMA_AllocChannel+0x88>
2002263e:	682b      	ldr	r3, [r5, #0]
20022640:	4283      	cmp	r3, r0
20022642:	d001      	beq.n	20022648 <DMA_AllocChannel+0x88>
20022644:	f7ff ff32 	bl	200224ac <DMA_Init>
20022648:	6028      	str	r0, [r5, #0]
2002264a:	6a83      	ldr	r3, [r0, #40]	@ 0x28
2002264c:	f104 4260 	add.w	r2, r4, #3758096384	@ 0xe0000000
20022650:	015b      	lsls	r3, r3, #5
20022652:	b2db      	uxtb	r3, r3
20022654:	f502 4261 	add.w	r2, r2, #57600	@ 0xe100
20022658:	4620      	mov	r0, r4
2002265a:	f882 3300 	strb.w	r3, [r2, #768]	@ 0x300
2002265e:	f7ff ff03 	bl	20022468 <HAL_NVIC_EnableIRQ>
20022662:	2000      	movs	r0, #0
20022664:	e7d9      	b.n	2002261a <DMA_AllocChannel+0x5a>
20022666:	3201      	adds	r2, #1
20022668:	2a08      	cmp	r2, #8
2002266a:	f103 0308 	add.w	r3, r3, #8
2002266e:	d1d6      	bne.n	2002261e <DMA_AllocChannel+0x5e>
20022670:	e7d0      	b.n	20022614 <DMA_AllocChannel+0x54>
20022672:	4434      	add	r4, r6
20022674:	712a      	strb	r2, [r5, #4]
20022676:	b264      	sxtb	r4, r4
20022678:	e7de      	b.n	20022638 <DMA_AllocChannel+0x78>
2002267a:	bf00      	nop
2002267c:	aff7eff8 	.word	0xaff7eff8
20022680:	bfffeff8 	.word	0xbfffeff8
20022684:	2004cbe8 	.word	0x2004cbe8
20022688:	2004cba8 	.word	0x2004cba8
2002268c:	50081008 	.word	0x50081008
20022690:	40001008 	.word	0x40001008

20022694 <DMA_FreeChannel.isra.0>:
20022694:	b538      	push	{r3, r4, r5, lr}
20022696:	4a13      	ldr	r2, [pc, #76]	@ (200226e4 <DMA_FreeChannel.isra.0+0x50>)
20022698:	6c83      	ldr	r3, [r0, #72]	@ 0x48
2002269a:	4293      	cmp	r3, r2
2002269c:	d003      	beq.n	200226a6 <DMA_FreeChannel.isra.0+0x12>
2002269e:	4a12      	ldr	r2, [pc, #72]	@ (200226e8 <DMA_FreeChannel.isra.0+0x54>)
200226a0:	4293      	cmp	r3, r2
200226a2:	d008      	beq.n	200226b6 <DMA_FreeChannel.isra.0+0x22>
200226a4:	e7fe      	b.n	200226a4 <DMA_FreeChannel.isra.0+0x10>
200226a6:	2132      	movs	r1, #50	@ 0x32
200226a8:	4a10      	ldr	r2, [pc, #64]	@ (200226ec <DMA_FreeChannel.isra.0+0x58>)
200226aa:	6cc4      	ldr	r4, [r0, #76]	@ 0x4c
200226ac:	2c1f      	cmp	r4, #31
200226ae:	ea4f 0394 	mov.w	r3, r4, lsr #2
200226b2:	d903      	bls.n	200226bc <DMA_FreeChannel.isra.0+0x28>
200226b4:	e7fe      	b.n	200226b4 <DMA_FreeChannel.isra.0+0x20>
200226b6:	2102      	movs	r1, #2
200226b8:	4a0d      	ldr	r2, [pc, #52]	@ (200226f0 <DMA_FreeChannel.isra.0+0x5c>)
200226ba:	e7f6      	b.n	200226aa <DMA_FreeChannel.isra.0+0x16>
200226bc:	f3ef 8410 	mrs	r4, PRIMASK
200226c0:	2501      	movs	r5, #1
200226c2:	f385 8810 	msr	PRIMASK, r5
200226c6:	eb02 05c3 	add.w	r5, r2, r3, lsl #3
200226ca:	f852 2033 	ldr.w	r2, [r2, r3, lsl #3]
200226ce:	4290      	cmp	r0, r2
200226d0:	d105      	bne.n	200226de <DMA_FreeChannel.isra.0+0x4a>
200226d2:	1858      	adds	r0, r3, r1
200226d4:	b240      	sxtb	r0, r0
200226d6:	f7ff fed5 	bl	20022484 <HAL_NVIC_DisableIRQ>
200226da:	2300      	movs	r3, #0
200226dc:	712b      	strb	r3, [r5, #4]
200226de:	f384 8810 	msr	PRIMASK, r4
200226e2:	bd38      	pop	{r3, r4, r5, pc}
200226e4:	50081000 	.word	0x50081000
200226e8:	40001000 	.word	0x40001000
200226ec:	2004cbe8 	.word	0x2004cbe8
200226f0:	2004cba8 	.word	0x2004cba8

200226f4 <HAL_DMA_Init>:
200226f4:	b538      	push	{r3, r4, r5, lr}
200226f6:	4604      	mov	r4, r0
200226f8:	2800      	cmp	r0, #0
200226fa:	d053      	beq.n	200227a4 <HAL_DMA_Init+0xb0>
200226fc:	6883      	ldr	r3, [r0, #8]
200226fe:	f033 0210 	bics.w	r2, r3, #16
20022702:	d003      	beq.n	2002270c <HAL_DMA_Init+0x18>
20022704:	f5b3 4f80 	cmp.w	r3, #16384	@ 0x4000
20022708:	d000      	beq.n	2002270c <HAL_DMA_Init+0x18>
2002270a:	e7fe      	b.n	2002270a <HAL_DMA_Init+0x16>
2002270c:	68e3      	ldr	r3, [r4, #12]
2002270e:	f033 0340 	bics.w	r3, r3, #64	@ 0x40
20022712:	d000      	beq.n	20022716 <HAL_DMA_Init+0x22>
20022714:	e7fe      	b.n	20022714 <HAL_DMA_Init+0x20>
20022716:	6923      	ldr	r3, [r4, #16]
20022718:	f033 0380 	bics.w	r3, r3, #128	@ 0x80
2002271c:	d000      	beq.n	20022720 <HAL_DMA_Init+0x2c>
2002271e:	e7fe      	b.n	2002271e <HAL_DMA_Init+0x2a>
20022720:	6963      	ldr	r3, [r4, #20]
20022722:	f433 7280 	bics.w	r2, r3, #256	@ 0x100
20022726:	d003      	beq.n	20022730 <HAL_DMA_Init+0x3c>
20022728:	f5b3 7f00 	cmp.w	r3, #512	@ 0x200
2002272c:	d000      	beq.n	20022730 <HAL_DMA_Init+0x3c>
2002272e:	e7fe      	b.n	2002272e <HAL_DMA_Init+0x3a>
20022730:	69a3      	ldr	r3, [r4, #24]
20022732:	f433 6280 	bics.w	r2, r3, #1024	@ 0x400
20022736:	d003      	beq.n	20022740 <HAL_DMA_Init+0x4c>
20022738:	f5b3 6f00 	cmp.w	r3, #2048	@ 0x800
2002273c:	d000      	beq.n	20022740 <HAL_DMA_Init+0x4c>
2002273e:	e7fe      	b.n	2002273e <HAL_DMA_Init+0x4a>
20022740:	69e3      	ldr	r3, [r4, #28]
20022742:	f033 0320 	bics.w	r3, r3, #32
20022746:	d000      	beq.n	2002274a <HAL_DMA_Init+0x56>
20022748:	e7fe      	b.n	20022748 <HAL_DMA_Init+0x54>
2002274a:	6a23      	ldr	r3, [r4, #32]
2002274c:	f433 5340 	bics.w	r3, r3, #12288	@ 0x3000
20022750:	d000      	beq.n	20022754 <HAL_DMA_Init+0x60>
20022752:	e7fe      	b.n	20022752 <HAL_DMA_Init+0x5e>
20022754:	6863      	ldr	r3, [r4, #4]
20022756:	2b3f      	cmp	r3, #63	@ 0x3f
20022758:	d900      	bls.n	2002275c <HAL_DMA_Init+0x68>
2002275a:	e7fe      	b.n	2002275a <HAL_DMA_Init+0x66>
2002275c:	6822      	ldr	r2, [r4, #0]
2002275e:	4b13      	ldr	r3, [pc, #76]	@ (200227ac <HAL_DMA_Init+0xb8>)
20022760:	4413      	add	r3, r2
20022762:	2b8c      	cmp	r3, #140	@ 0x8c
20022764:	d813      	bhi.n	2002278e <HAL_DMA_Init+0x9a>
20022766:	2214      	movs	r2, #20
20022768:	fbb3 f3f2 	udiv	r3, r3, r2
2002276c:	009b      	lsls	r3, r3, #2
2002276e:	64e3      	str	r3, [r4, #76]	@ 0x4c
20022770:	4b0f      	ldr	r3, [pc, #60]	@ (200227b0 <HAL_DMA_Init+0xbc>)
20022772:	64a3      	str	r3, [r4, #72]	@ 0x48
20022774:	2100      	movs	r1, #0
20022776:	4620      	mov	r0, r4
20022778:	f7ff ff22 	bl	200225c0 <DMA_AllocChannel>
2002277c:	4605      	mov	r5, r0
2002277e:	b998      	cbnz	r0, 200227a8 <HAL_DMA_Init+0xb4>
20022780:	4620      	mov	r0, r4
20022782:	f7ff fe93 	bl	200224ac <DMA_Init>
20022786:	f7ff ff85 	bl	20022694 <DMA_FreeChannel.isra.0>
2002278a:	4628      	mov	r0, r5
2002278c:	bd38      	pop	{r3, r4, r5, pc}
2002278e:	4b09      	ldr	r3, [pc, #36]	@ (200227b4 <HAL_DMA_Init+0xc0>)
20022790:	4413      	add	r3, r2
20022792:	2b8c      	cmp	r3, #140	@ 0x8c
20022794:	d8ee      	bhi.n	20022774 <HAL_DMA_Init+0x80>
20022796:	2214      	movs	r2, #20
20022798:	fbb3 f3f2 	udiv	r3, r3, r2
2002279c:	009b      	lsls	r3, r3, #2
2002279e:	64e3      	str	r3, [r4, #76]	@ 0x4c
200227a0:	4b05      	ldr	r3, [pc, #20]	@ (200227b8 <HAL_DMA_Init+0xc4>)
200227a2:	e7e6      	b.n	20022772 <HAL_DMA_Init+0x7e>
200227a4:	2501      	movs	r5, #1
200227a6:	e7f0      	b.n	2002278a <HAL_DMA_Init+0x96>
200227a8:	2502      	movs	r5, #2
200227aa:	e7ee      	b.n	2002278a <HAL_DMA_Init+0x96>
200227ac:	aff7eff8 	.word	0xaff7eff8
200227b0:	50081000 	.word	0x50081000
200227b4:	bfffeff8 	.word	0xbfffeff8
200227b8:	40001000 	.word	0x40001000

200227bc <HAL_DMA_DeInit>:
200227bc:	b510      	push	{r4, lr}
200227be:	4604      	mov	r4, r0
200227c0:	2800      	cmp	r0, #0
200227c2:	d051      	beq.n	20022868 <HAL_DMA_DeInit+0xac>
200227c4:	6802      	ldr	r2, [r0, #0]
200227c6:	6813      	ldr	r3, [r2, #0]
200227c8:	f023 0301 	bic.w	r3, r3, #1
200227cc:	6013      	str	r3, [r2, #0]
200227ce:	6802      	ldr	r2, [r0, #0]
200227d0:	4b26      	ldr	r3, [pc, #152]	@ (2002286c <HAL_DMA_DeInit+0xb0>)
200227d2:	4413      	add	r3, r2
200227d4:	2b8c      	cmp	r3, #140	@ 0x8c
200227d6:	d82f      	bhi.n	20022838 <HAL_DMA_DeInit+0x7c>
200227d8:	2114      	movs	r1, #20
200227da:	fbb3 f3f1 	udiv	r3, r3, r1
200227de:	009b      	lsls	r3, r3, #2
200227e0:	64c3      	str	r3, [r0, #76]	@ 0x4c
200227e2:	4b23      	ldr	r3, [pc, #140]	@ (20022870 <HAL_DMA_DeInit+0xb4>)
200227e4:	64a3      	str	r3, [r4, #72]	@ 0x48
200227e6:	2300      	movs	r3, #0
200227e8:	6013      	str	r3, [r2, #0]
200227ea:	e9d4 1312 	ldrd	r1, r3, [r4, #72]	@ 0x48
200227ee:	f003 021c 	and.w	r2, r3, #28
200227f2:	2301      	movs	r3, #1
200227f4:	4093      	lsls	r3, r2
200227f6:	604b      	str	r3, [r1, #4]
200227f8:	6ce3      	ldr	r3, [r4, #76]	@ 0x4c
200227fa:	6ca1      	ldr	r1, [r4, #72]	@ 0x48
200227fc:	2b0f      	cmp	r3, #15
200227fe:	ea4f 0293 	mov.w	r2, r3, lsr #2
20022802:	d824      	bhi.n	2002284e <HAL_DMA_DeInit+0x92>
20022804:	203f      	movs	r0, #63	@ 0x3f
20022806:	005b      	lsls	r3, r3, #1
20022808:	f8d1 20a8 	ldr.w	r2, [r1, #168]	@ 0xa8
2002280c:	f003 0338 	and.w	r3, r3, #56	@ 0x38
20022810:	fa00 f303 	lsl.w	r3, r0, r3
20022814:	ea22 0303 	bic.w	r3, r2, r3
20022818:	f8c1 30a8 	str.w	r3, [r1, #168]	@ 0xa8
2002281c:	4620      	mov	r0, r4
2002281e:	f7ff ff39 	bl	20022694 <DMA_FreeChannel.isra.0>
20022822:	2000      	movs	r0, #0
20022824:	e9c4 000d 	strd	r0, r0, [r4, #52]	@ 0x34
20022828:	e9c4 000f 	strd	r0, r0, [r4, #60]	@ 0x3c
2002282c:	6460      	str	r0, [r4, #68]	@ 0x44
2002282e:	f884 002c 	strb.w	r0, [r4, #44]	@ 0x2c
20022832:	f884 002d 	strb.w	r0, [r4, #45]	@ 0x2d
20022836:	bd10      	pop	{r4, pc}
20022838:	4b0e      	ldr	r3, [pc, #56]	@ (20022874 <HAL_DMA_DeInit+0xb8>)
2002283a:	4413      	add	r3, r2
2002283c:	2b8c      	cmp	r3, #140	@ 0x8c
2002283e:	d8d2      	bhi.n	200227e6 <HAL_DMA_DeInit+0x2a>
20022840:	2114      	movs	r1, #20
20022842:	fbb3 f3f1 	udiv	r3, r3, r1
20022846:	009b      	lsls	r3, r3, #2
20022848:	64c3      	str	r3, [r0, #76]	@ 0x4c
2002284a:	4b0b      	ldr	r3, [pc, #44]	@ (20022878 <HAL_DMA_DeInit+0xbc>)
2002284c:	e7ca      	b.n	200227e4 <HAL_DMA_DeInit+0x28>
2002284e:	f002 0303 	and.w	r3, r2, #3
20022852:	223f      	movs	r2, #63	@ 0x3f
20022854:	f8d1 00ac 	ldr.w	r0, [r1, #172]	@ 0xac
20022858:	00db      	lsls	r3, r3, #3
2002285a:	fa02 f303 	lsl.w	r3, r2, r3
2002285e:	ea20 0303 	bic.w	r3, r0, r3
20022862:	f8c1 30ac 	str.w	r3, [r1, #172]	@ 0xac
20022866:	e7d9      	b.n	2002281c <HAL_DMA_DeInit+0x60>
20022868:	2001      	movs	r0, #1
2002286a:	e7e4      	b.n	20022836 <HAL_DMA_DeInit+0x7a>
2002286c:	aff7eff8 	.word	0xaff7eff8
20022870:	50081000 	.word	0x50081000
20022874:	bfffeff8 	.word	0xbfffeff8
20022878:	40001000 	.word	0x40001000

2002287c <HAL_DMA_PollForTransfer>:
2002287c:	e92d 4ff8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
20022880:	f890 302d 	ldrb.w	r3, [r0, #45]	@ 0x2d
20022884:	4617      	mov	r7, r2
20022886:	2b02      	cmp	r3, #2
20022888:	4604      	mov	r4, r0
2002288a:	4688      	mov	r8, r1
2002288c:	b2da      	uxtb	r2, r3
2002288e:	d005      	beq.n	2002289c <HAL_DMA_PollForTransfer+0x20>
20022890:	2304      	movs	r3, #4
20022892:	6443      	str	r3, [r0, #68]	@ 0x44
20022894:	2300      	movs	r3, #0
20022896:	f884 302c 	strb.w	r3, [r4, #44]	@ 0x2c
2002289a:	e006      	b.n	200228aa <HAL_DMA_PollForTransfer+0x2e>
2002289c:	6803      	ldr	r3, [r0, #0]
2002289e:	681b      	ldr	r3, [r3, #0]
200228a0:	0699      	lsls	r1, r3, #26
200228a2:	d505      	bpl.n	200228b0 <HAL_DMA_PollForTransfer+0x34>
200228a4:	f44f 7380 	mov.w	r3, #256	@ 0x100
200228a8:	6443      	str	r3, [r0, #68]	@ 0x44
200228aa:	2001      	movs	r0, #1
200228ac:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
200228b0:	6cc5      	ldr	r5, [r0, #76]	@ 0x4c
200228b2:	f005 051c 	and.w	r5, r5, #28
200228b6:	f1b8 0f00 	cmp.w	r8, #0
200228ba:	d123      	bne.n	20022904 <HAL_DMA_PollForTransfer+0x88>
200228bc:	fa02 f505 	lsl.w	r5, r2, r5
200228c0:	f7ff fc0c 	bl	200220dc <HAL_GetTick>
200228c4:	f04f 0a08 	mov.w	sl, #8
200228c8:	4681      	mov	r9, r0
200228ca:	e9d4 6312 	ldrd	r6, r3, [r4, #72]	@ 0x48
200228ce:	f003 031c 	and.w	r3, r3, #28
200228d2:	fa0a f103 	lsl.w	r1, sl, r3
200228d6:	6832      	ldr	r2, [r6, #0]
200228d8:	ea12 0b05 	ands.w	fp, r2, r5
200228dc:	d016      	beq.n	2002290c <HAL_DMA_PollForTransfer+0x90>
200228de:	f1b8 0f00 	cmp.w	r8, #0
200228e2:	d136      	bne.n	20022952 <HAL_DMA_PollForTransfer+0xd6>
200228e4:	2202      	movs	r2, #2
200228e6:	fa02 f303 	lsl.w	r3, r2, r3
200228ea:	6073      	str	r3, [r6, #4]
200228ec:	6d23      	ldr	r3, [r4, #80]	@ 0x50
200228ee:	b92b      	cbnz	r3, 200228fc <HAL_DMA_PollForTransfer+0x80>
200228f0:	4620      	mov	r0, r4
200228f2:	f7ff fecf 	bl	20022694 <DMA_FreeChannel.isra.0>
200228f6:	2301      	movs	r3, #1
200228f8:	f884 302d 	strb.w	r3, [r4, #45]	@ 0x2d
200228fc:	2000      	movs	r0, #0
200228fe:	f884 002c 	strb.w	r0, [r4, #44]	@ 0x2c
20022902:	e7d3      	b.n	200228ac <HAL_DMA_PollForTransfer+0x30>
20022904:	2304      	movs	r3, #4
20022906:	fa03 f505 	lsl.w	r5, r3, r5
2002290a:	e7d9      	b.n	200228c0 <HAL_DMA_PollForTransfer+0x44>
2002290c:	6832      	ldr	r2, [r6, #0]
2002290e:	4211      	tst	r1, r2
20022910:	d00c      	beq.n	2002292c <HAL_DMA_PollForTransfer+0xb0>
20022912:	2501      	movs	r5, #1
20022914:	fa05 f303 	lsl.w	r3, r5, r3
20022918:	6073      	str	r3, [r6, #4]
2002291a:	4620      	mov	r0, r4
2002291c:	6465      	str	r5, [r4, #68]	@ 0x44
2002291e:	f7ff feb9 	bl	20022694 <DMA_FreeChannel.isra.0>
20022922:	f884 502d 	strb.w	r5, [r4, #45]	@ 0x2d
20022926:	f884 b02c 	strb.w	fp, [r4, #44]	@ 0x2c
2002292a:	e7be      	b.n	200228aa <HAL_DMA_PollForTransfer+0x2e>
2002292c:	1c7a      	adds	r2, r7, #1
2002292e:	d0d2      	beq.n	200228d6 <HAL_DMA_PollForTransfer+0x5a>
20022930:	f7ff fbd4 	bl	200220dc <HAL_GetTick>
20022934:	eba0 0009 	sub.w	r0, r0, r9
20022938:	42b8      	cmp	r0, r7
2002293a:	d801      	bhi.n	20022940 <HAL_DMA_PollForTransfer+0xc4>
2002293c:	2f00      	cmp	r7, #0
2002293e:	d1c4      	bne.n	200228ca <HAL_DMA_PollForTransfer+0x4e>
20022940:	2320      	movs	r3, #32
20022942:	4620      	mov	r0, r4
20022944:	6463      	str	r3, [r4, #68]	@ 0x44
20022946:	f7ff fea5 	bl	20022694 <DMA_FreeChannel.isra.0>
2002294a:	2301      	movs	r3, #1
2002294c:	f884 302d 	strb.w	r3, [r4, #45]	@ 0x2d
20022950:	e7a0      	b.n	20022894 <HAL_DMA_PollForTransfer+0x18>
20022952:	2204      	movs	r2, #4
20022954:	fa02 f303 	lsl.w	r3, r2, r3
20022958:	6073      	str	r3, [r6, #4]
2002295a:	e7cf      	b.n	200228fc <HAL_DMA_PollForTransfer+0x80>

2002295c <DMA_Remap>:
2002295c:	b530      	push	{r4, r5, lr}
2002295e:	4b15      	ldr	r3, [pc, #84]	@ (200229b4 <DMA_Remap+0x58>)
20022960:	6c84      	ldr	r4, [r0, #72]	@ 0x48
20022962:	429c      	cmp	r4, r3
20022964:	d11b      	bne.n	2002299e <DMA_Remap+0x42>
20022966:	6883      	ldr	r3, [r0, #8]
20022968:	2b10      	cmp	r3, #16
2002296a:	d002      	beq.n	20022972 <DMA_Remap+0x16>
2002296c:	f5b3 4f80 	cmp.w	r3, #16384	@ 0x4000
20022970:	d108      	bne.n	20022984 <DMA_Remap+0x28>
20022972:	680b      	ldr	r3, [r1, #0]
20022974:	4c10      	ldr	r4, [pc, #64]	@ (200229b8 <DMA_Remap+0x5c>)
20022976:	f103 4560 	add.w	r5, r3, #3758096384	@ 0xe0000000
2002297a:	42a5      	cmp	r5, r4
2002297c:	bf98      	it	ls
2002297e:	f103 6320 	addls.w	r3, r3, #167772160	@ 0xa000000
20022982:	600b      	str	r3, [r1, #0]
20022984:	6883      	ldr	r3, [r0, #8]
20022986:	f433 4380 	bics.w	r3, r3, #16384	@ 0x4000
2002298a:	d108      	bne.n	2002299e <DMA_Remap+0x42>
2002298c:	6813      	ldr	r3, [r2, #0]
2002298e:	480a      	ldr	r0, [pc, #40]	@ (200229b8 <DMA_Remap+0x5c>)
20022990:	f103 4460 	add.w	r4, r3, #3758096384	@ 0xe0000000
20022994:	4284      	cmp	r4, r0
20022996:	bf98      	it	ls
20022998:	f103 6320 	addls.w	r3, r3, #167772160	@ 0xa000000
2002299c:	6013      	str	r3, [r2, #0]
2002299e:	680b      	ldr	r3, [r1, #0]
200229a0:	f103 4270 	add.w	r2, r3, #4026531840	@ 0xf0000000
200229a4:	f1b2 5f80 	cmp.w	r2, #268435456	@ 0x10000000
200229a8:	bf3c      	itt	cc
200229aa:	f103 43a0 	addcc.w	r3, r3, #1342177280	@ 0x50000000
200229ae:	600b      	strcc	r3, [r1, #0]
200229b0:	bd30      	pop	{r4, r5, pc}
200229b2:	bf00      	nop
200229b4:	40001000 	.word	0x40001000
200229b8:	0007fffe 	.word	0x0007fffe

200229bc <DMA_Start>:
200229bc:	e92d 41f3 	stmdb	sp!, {r0, r1, r4, r5, r6, r7, r8, lr}
200229c0:	f64f 75ff 	movw	r5, #65535	@ 0xffff
200229c4:	6d03      	ldr	r3, [r0, #80]	@ 0x50
200229c6:	6802      	ldr	r2, [r0, #0]
200229c8:	429d      	cmp	r5, r3
200229ca:	bf28      	it	cs
200229cc:	461d      	movcs	r5, r3
200229ce:	1b5b      	subs	r3, r3, r5
200229d0:	6503      	str	r3, [r0, #80]	@ 0x50
200229d2:	6585      	str	r5, [r0, #88]	@ 0x58
200229d4:	6813      	ldr	r3, [r2, #0]
200229d6:	f890 7066 	ldrb.w	r7, [r0, #102]	@ 0x66
200229da:	f023 0301 	bic.w	r3, r3, #1
200229de:	f890 8067 	ldrb.w	r8, [r0, #103]	@ 0x67
200229e2:	6013      	str	r3, [r2, #0]
200229e4:	e9d0 2317 	ldrd	r2, r3, [r0, #92]	@ 0x5c
200229e8:	460e      	mov	r6, r1
200229ea:	e9cd 2300 	strd	r2, r3, [sp]
200229ee:	e9d0 2312 	ldrd	r2, r3, [r0, #72]	@ 0x48
200229f2:	f003 011c 	and.w	r1, r3, #28
200229f6:	2301      	movs	r3, #1
200229f8:	4604      	mov	r4, r0
200229fa:	408b      	lsls	r3, r1
200229fc:	6053      	str	r3, [r2, #4]
200229fe:	6803      	ldr	r3, [r0, #0]
20022a00:	4669      	mov	r1, sp
20022a02:	605d      	str	r5, [r3, #4]
20022a04:	aa01      	add	r2, sp, #4
20022a06:	f7ff ffa9 	bl	2002295c <DMA_Remap>
20022a0a:	e9dd 0300 	ldrd	r0, r3, [sp]
20022a0e:	68a1      	ldr	r1, [r4, #8]
20022a10:	6822      	ldr	r2, [r4, #0]
20022a12:	2910      	cmp	r1, #16
20022a14:	bf0b      	itete	eq
20022a16:	6093      	streq	r3, [r2, #8]
20022a18:	6090      	strne	r0, [r2, #8]
20022a1a:	6823      	ldreq	r3, [r4, #0]
20022a1c:	6822      	ldrne	r2, [r4, #0]
20022a1e:	bf0c      	ite	eq
20022a20:	60d8      	streq	r0, [r3, #12]
20022a22:	60d3      	strne	r3, [r2, #12]
20022a24:	f894 3064 	ldrb.w	r3, [r4, #100]	@ 0x64
20022a28:	b123      	cbz	r3, 20022a34 <DMA_Start+0x78>
20022a2a:	6de3      	ldr	r3, [r4, #92]	@ 0x5c
20022a2c:	fa05 f707 	lsl.w	r7, r5, r7
20022a30:	443b      	add	r3, r7
20022a32:	65e3      	str	r3, [r4, #92]	@ 0x5c
20022a34:	f894 3065 	ldrb.w	r3, [r4, #101]	@ 0x65
20022a38:	b123      	cbz	r3, 20022a44 <DMA_Start+0x88>
20022a3a:	6e23      	ldr	r3, [r4, #96]	@ 0x60
20022a3c:	fa05 f508 	lsl.w	r5, r5, r8
20022a40:	442b      	add	r3, r5
20022a42:	6623      	str	r3, [r4, #96]	@ 0x60
20022a44:	b136      	cbz	r6, 20022a54 <DMA_Start+0x98>
20022a46:	6ba2      	ldr	r2, [r4, #56]	@ 0x38
20022a48:	6823      	ldr	r3, [r4, #0]
20022a4a:	b15a      	cbz	r2, 20022a64 <DMA_Start+0xa8>
20022a4c:	681a      	ldr	r2, [r3, #0]
20022a4e:	f042 020e 	orr.w	r2, r2, #14
20022a52:	601a      	str	r2, [r3, #0]
20022a54:	6822      	ldr	r2, [r4, #0]
20022a56:	6813      	ldr	r3, [r2, #0]
20022a58:	f043 0301 	orr.w	r3, r3, #1
20022a5c:	6013      	str	r3, [r2, #0]
20022a5e:	b002      	add	sp, #8
20022a60:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
20022a64:	681a      	ldr	r2, [r3, #0]
20022a66:	f022 0204 	bic.w	r2, r2, #4
20022a6a:	601a      	str	r2, [r3, #0]
20022a6c:	6822      	ldr	r2, [r4, #0]
20022a6e:	6813      	ldr	r3, [r2, #0]
20022a70:	f043 030a 	orr.w	r3, r3, #10
20022a74:	6013      	str	r3, [r2, #0]
20022a76:	e7ed      	b.n	20022a54 <DMA_Start+0x98>

20022a78 <HAL_DMA_Start>:
20022a78:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
20022a7a:	461d      	mov	r5, r3
20022a7c:	69c3      	ldr	r3, [r0, #28]
20022a7e:	4604      	mov	r4, r0
20022a80:	2b20      	cmp	r3, #32
20022a82:	460f      	mov	r7, r1
20022a84:	4616      	mov	r6, r2
20022a86:	d105      	bne.n	20022a94 <HAL_DMA_Start+0x1c>
20022a88:	f64f 73fe 	movw	r3, #65534	@ 0xfffe
20022a8c:	1e6a      	subs	r2, r5, #1
20022a8e:	429a      	cmp	r2, r3
20022a90:	d900      	bls.n	20022a94 <HAL_DMA_Start+0x1c>
20022a92:	e7fe      	b.n	20022a92 <HAL_DMA_Start+0x1a>
20022a94:	f894 302c 	ldrb.w	r3, [r4, #44]	@ 0x2c
20022a98:	2b01      	cmp	r3, #1
20022a9a:	d00e      	beq.n	20022aba <HAL_DMA_Start+0x42>
20022a9c:	2301      	movs	r3, #1
20022a9e:	f884 302c 	strb.w	r3, [r4, #44]	@ 0x2c
20022aa2:	f894 302d 	ldrb.w	r3, [r4, #45]	@ 0x2d
20022aa6:	2b01      	cmp	r3, #1
20022aa8:	b2d9      	uxtb	r1, r3
20022aaa:	d103      	bne.n	20022ab4 <HAL_DMA_Start+0x3c>
20022aac:	4620      	mov	r0, r4
20022aae:	f7ff fd87 	bl	200225c0 <DMA_AllocChannel>
20022ab2:	b120      	cbz	r0, 20022abe <HAL_DMA_Start+0x46>
20022ab4:	2300      	movs	r3, #0
20022ab6:	f884 302c 	strb.w	r3, [r4, #44]	@ 0x2c
20022aba:	2002      	movs	r0, #2
20022abc:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
20022abe:	2302      	movs	r3, #2
20022ac0:	e9c4 5514 	strd	r5, r5, [r4, #80]	@ 0x50
20022ac4:	e9c4 7617 	strd	r7, r6, [r4, #92]	@ 0x5c
20022ac8:	f884 302d 	strb.w	r3, [r4, #45]	@ 0x2d
20022acc:	6460      	str	r0, [r4, #68]	@ 0x44
20022ace:	6d20      	ldr	r0, [r4, #80]	@ 0x50
20022ad0:	2800      	cmp	r0, #0
20022ad2:	d0f3      	beq.n	20022abc <HAL_DMA_Start+0x44>
20022ad4:	2100      	movs	r1, #0
20022ad6:	4620      	mov	r0, r4
20022ad8:	f7ff ff70 	bl	200229bc <DMA_Start>
20022adc:	6d23      	ldr	r3, [r4, #80]	@ 0x50
20022ade:	2b00      	cmp	r3, #0
20022ae0:	d0f5      	beq.n	20022ace <HAL_DMA_Start+0x56>
20022ae2:	f44f 727a 	mov.w	r2, #1000	@ 0x3e8
20022ae6:	2100      	movs	r1, #0
20022ae8:	4620      	mov	r0, r4
20022aea:	f7ff fec7 	bl	2002287c <HAL_DMA_PollForTransfer>
20022aee:	2800      	cmp	r0, #0
20022af0:	d0ed      	beq.n	20022ace <HAL_DMA_Start+0x56>
20022af2:	e7e3      	b.n	20022abc <HAL_DMA_Start+0x44>

20022af4 <HAL_EFUSE_Read>:
20022af4:	2a20      	cmp	r2, #32
20022af6:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
20022afa:	4606      	mov	r6, r0
20022afc:	460c      	mov	r4, r1
20022afe:	4615      	mov	r5, r2
20022b00:	dc30      	bgt.n	20022b64 <HAL_EFUSE_Read+0x70>
20022b02:	f3c0 08c4 	ubfx	r8, r0, #3, #5
20022b06:	eb08 0302 	add.w	r3, r8, r2
20022b0a:	2b20      	cmp	r3, #32
20022b0c:	dc2a      	bgt.n	20022b64 <HAL_EFUSE_Read+0x70>
20022b0e:	0797      	lsls	r7, r2, #30
20022b10:	d128      	bne.n	20022b64 <HAL_EFUSE_Read+0x70>
20022b12:	f010 091f 	ands.w	r9, r0, #31
20022b16:	d125      	bne.n	20022b64 <HAL_EFUSE_Read+0x70>
20022b18:	4a25      	ldr	r2, [pc, #148]	@ (20022bb0 <HAL_EFUSE_Read+0xbc>)
20022b1a:	2014      	movs	r0, #20
20022b1c:	f8d2 7094 	ldr.w	r7, [r2, #148]	@ 0x94
20022b20:	0a36      	lsrs	r6, r6, #8
20022b22:	1cfb      	adds	r3, r7, #3
20022b24:	2b0e      	cmp	r3, #14
20022b26:	bf38      	it	cc
20022b28:	230e      	movcc	r3, #14
20022b2a:	2b0f      	cmp	r3, #15
20022b2c:	bf28      	it	cs
20022b2e:	230f      	movcs	r3, #15
20022b30:	f8c2 3094 	str.w	r3, [r2, #148]	@ 0x94
20022b34:	f7ff fb37 	bl	200221a6 <HAL_Delay_us>
20022b38:	4a1e      	ldr	r2, [pc, #120]	@ (20022bb4 <HAL_EFUSE_Read+0xc0>)
20022b3a:	00b3      	lsls	r3, r6, #2
20022b3c:	6013      	str	r3, [r2, #0]
20022b3e:	6813      	ldr	r3, [r2, #0]
20022b40:	491d      	ldr	r1, [pc, #116]	@ (20022bb8 <HAL_EFUSE_Read+0xc4>)
20022b42:	f043 0301 	orr.w	r3, r3, #1
20022b46:	6013      	str	r3, [r2, #0]
20022b48:	464b      	mov	r3, r9
20022b4a:	4369      	muls	r1, r5
20022b4c:	6890      	ldr	r0, [r2, #8]
20022b4e:	07c0      	lsls	r0, r0, #31
20022b50:	d50c      	bpl.n	20022b6c <HAL_EFUSE_Read+0x78>
20022b52:	6890      	ldr	r0, [r2, #8]
20022b54:	428b      	cmp	r3, r1
20022b56:	f040 0001 	orr.w	r0, r0, #1
20022b5a:	6090      	str	r0, [r2, #8]
20022b5c:	d30a      	bcc.n	20022b74 <HAL_EFUSE_Read+0x80>
20022b5e:	4b14      	ldr	r3, [pc, #80]	@ (20022bb0 <HAL_EFUSE_Read+0xbc>)
20022b60:	f8c3 7094 	str.w	r7, [r3, #148]	@ 0x94
20022b64:	2500      	movs	r5, #0
20022b66:	4628      	mov	r0, r5
20022b68:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
20022b6c:	428b      	cmp	r3, r1
20022b6e:	d2f0      	bcs.n	20022b52 <HAL_EFUSE_Read+0x5e>
20022b70:	3301      	adds	r3, #1
20022b72:	e7eb      	b.n	20022b4c <HAL_EFUSE_Read+0x58>
20022b74:	4a11      	ldr	r2, [pc, #68]	@ (20022bbc <HAL_EFUSE_Read+0xc8>)
20022b76:	f008 001c 	and.w	r0, r8, #28
20022b7a:	eb00 1046 	add.w	r0, r0, r6, lsl #5
20022b7e:	f025 0103 	bic.w	r1, r5, #3
20022b82:	4402      	add	r2, r0
20022b84:	4421      	add	r1, r4
20022b86:	428c      	cmp	r4, r1
20022b88:	d103      	bne.n	20022b92 <HAL_EFUSE_Read+0x9e>
20022b8a:	4b09      	ldr	r3, [pc, #36]	@ (20022bb0 <HAL_EFUSE_Read+0xbc>)
20022b8c:	f8c3 7094 	str.w	r7, [r3, #148]	@ 0x94
20022b90:	e7e9      	b.n	20022b66 <HAL_EFUSE_Read+0x72>
20022b92:	f852 3b04 	ldr.w	r3, [r2], #4
20022b96:	3404      	adds	r4, #4
20022b98:	0a18      	lsrs	r0, r3, #8
20022b9a:	f804 3c04 	strb.w	r3, [r4, #-4]
20022b9e:	f804 0c03 	strb.w	r0, [r4, #-3]
20022ba2:	0c18      	lsrs	r0, r3, #16
20022ba4:	0e1b      	lsrs	r3, r3, #24
20022ba6:	f804 0c02 	strb.w	r0, [r4, #-2]
20022baa:	f804 3c01 	strb.w	r3, [r4, #-1]
20022bae:	e7ea      	b.n	20022b86 <HAL_EFUSE_Read+0x92>
20022bb0:	500ca000 	.word	0x500ca000
20022bb4:	5000c000 	.word	0x5000c000
20022bb8:	0005dc00 	.word	0x0005dc00
20022bbc:	5000c030 	.word	0x5000c030

20022bc0 <HAL_DBG_printf>:
20022bc0:	b40f      	push	{r0, r1, r2, r3}
20022bc2:	b004      	add	sp, #16
20022bc4:	4770      	bx	lr
	...

20022bc8 <HAL_HPAON_WakeCore>:
20022bc8:	2802      	cmp	r0, #2
20022bca:	b510      	push	{r4, lr}
20022bcc:	d120      	bne.n	20022c10 <HAL_HPAON_WakeCore+0x48>
20022bce:	4c11      	ldr	r4, [pc, #68]	@ (20022c14 <HAL_HPAON_WakeCore+0x4c>)
20022bd0:	20e6      	movs	r0, #230	@ 0xe6
20022bd2:	6ae3      	ldr	r3, [r4, #44]	@ 0x2c
20022bd4:	f043 0301 	orr.w	r3, r3, #1
20022bd8:	62e3      	str	r3, [r4, #44]	@ 0x2c
20022bda:	f7ff fae4 	bl	200221a6 <HAL_Delay_us>
20022bde:	6ae3      	ldr	r3, [r4, #44]	@ 0x2c
20022be0:	069a      	lsls	r2, r3, #26
20022be2:	d5fc      	bpl.n	20022bde <HAL_HPAON_WakeCore+0x16>
20022be4:	201e      	movs	r0, #30
20022be6:	f7ff fade 	bl	200221a6 <HAL_Delay_us>
20022bea:	6ae3      	ldr	r3, [r4, #44]	@ 0x2c
20022bec:	069b      	lsls	r3, r3, #26
20022bee:	d5fc      	bpl.n	20022bea <HAL_HPAON_WakeCore+0x22>
20022bf0:	f3ef 8110 	mrs	r1, PRIMASK
20022bf4:	2301      	movs	r3, #1
20022bf6:	f383 8810 	msr	PRIMASK, r3
20022bfa:	4a07      	ldr	r2, [pc, #28]	@ (20022c18 <HAL_HPAON_WakeCore+0x50>)
20022bfc:	7813      	ldrb	r3, [r2, #0]
20022bfe:	2b13      	cmp	r3, #19
20022c00:	d900      	bls.n	20022c04 <HAL_HPAON_WakeCore+0x3c>
20022c02:	e7fe      	b.n	20022c02 <HAL_HPAON_WakeCore+0x3a>
20022c04:	3301      	adds	r3, #1
20022c06:	7013      	strb	r3, [r2, #0]
20022c08:	f381 8810 	msr	PRIMASK, r1
20022c0c:	2000      	movs	r0, #0
20022c0e:	bd10      	pop	{r4, pc}
20022c10:	2001      	movs	r0, #1
20022c12:	e7fc      	b.n	20022c0e <HAL_HPAON_WakeCore+0x46>
20022c14:	500c0000 	.word	0x500c0000
20022c18:	2004cc28 	.word	0x2004cc28

20022c1c <HAL_HPAON_EnableXT48>:
20022c1c:	4b04      	ldr	r3, [pc, #16]	@ (20022c30 <HAL_HPAON_EnableXT48+0x14>)
20022c1e:	691a      	ldr	r2, [r3, #16]
20022c20:	f042 0202 	orr.w	r2, r2, #2
20022c24:	611a      	str	r2, [r3, #16]
20022c26:	691a      	ldr	r2, [r3, #16]
20022c28:	2a00      	cmp	r2, #0
20022c2a:	dafc      	bge.n	20022c26 <HAL_HPAON_EnableXT48+0xa>
20022c2c:	4770      	bx	lr
20022c2e:	bf00      	nop
20022c30:	500c0000 	.word	0x500c0000

20022c34 <HAL_HPAON_DisableXT48>:
20022c34:	4a02      	ldr	r2, [pc, #8]	@ (20022c40 <HAL_HPAON_DisableXT48+0xc>)
20022c36:	6913      	ldr	r3, [r2, #16]
20022c38:	f023 0302 	bic.w	r3, r3, #2
20022c3c:	6113      	str	r3, [r2, #16]
20022c3e:	4770      	bx	lr
20022c40:	500c0000 	.word	0x500c0000

20022c44 <HAL_QSPI_Init>:
20022c44:	b510      	push	{r4, lr}
20022c46:	b1e0      	cbz	r0, 20022c82 <HAL_QSPI_Init+0x3e>
20022c48:	b1d9      	cbz	r1, 20022c82 <HAL_QSPI_Init+0x3e>
20022c4a:	2300      	movs	r3, #0
20022c4c:	2201      	movs	r2, #1
20022c4e:	6043      	str	r3, [r0, #4]
20022c50:	f880 202a 	strb.w	r2, [r0, #42]	@ 0x2a
20022c54:	680c      	ldr	r4, [r1, #0]
20022c56:	6004      	str	r4, [r0, #0]
20022c58:	684a      	ldr	r2, [r1, #4]
20022c5a:	f880 2028 	strb.w	r2, [r0, #40]	@ 0x28
20022c5e:	688a      	ldr	r2, [r1, #8]
20022c60:	6102      	str	r2, [r0, #16]
20022c62:	68ca      	ldr	r2, [r1, #12]
20022c64:	0512      	lsls	r2, r2, #20
20022c66:	6142      	str	r2, [r0, #20]
20022c68:	22ff      	movs	r2, #255	@ 0xff
20022c6a:	f8c4 2084 	str.w	r2, [r4, #132]	@ 0x84
20022c6e:	f04f 2450 	mov.w	r4, #1342197760	@ 0x50005000
20022c72:	6801      	ldr	r1, [r0, #0]
20022c74:	678c      	str	r4, [r1, #120]	@ 0x78
20022c76:	6801      	ldr	r1, [r0, #0]
20022c78:	620a      	str	r2, [r1, #32]
20022c7a:	6801      	ldr	r1, [r0, #0]
20022c7c:	4618      	mov	r0, r3
20022c7e:	644a      	str	r2, [r1, #68]	@ 0x44
20022c80:	bd10      	pop	{r4, pc}
20022c82:	2001      	movs	r0, #1
20022c84:	e7fc      	b.n	20022c80 <HAL_QSPI_Init+0x3c>

20022c86 <HAL_FLASH_SET_AHB_RCMD>:
20022c86:	b138      	cbz	r0, 20022c98 <HAL_FLASH_SET_AHB_RCMD+0x12>
20022c88:	6802      	ldr	r2, [r0, #0]
20022c8a:	2000      	movs	r0, #0
20022c8c:	6c13      	ldr	r3, [r2, #64]	@ 0x40
20022c8e:	f023 03ff 	bic.w	r3, r3, #255	@ 0xff
20022c92:	4319      	orrs	r1, r3
20022c94:	6411      	str	r1, [r2, #64]	@ 0x40
20022c96:	4770      	bx	lr
20022c98:	2001      	movs	r0, #1
20022c9a:	4770      	bx	lr

20022c9c <HAL_FLASH_CFG_AHB_RCMD>:
20022c9c:	b570      	push	{r4, r5, r6, lr}
20022c9e:	b1c8      	cbz	r0, 20022cd4 <HAL_FLASH_CFG_AHB_RCMD+0x38>
20022ca0:	6805      	ldr	r5, [r0, #0]
20022ca2:	f99d 6018 	ldrsb.w	r6, [sp, #24]
20022ca6:	f99d 001c 	ldrsb.w	r0, [sp, #28]
20022caa:	6cac      	ldr	r4, [r5, #72]	@ 0x48
20022cac:	ea40 00c6 	orr.w	r0, r0, r6, lsl #3
20022cb0:	ea40 23c3 	orr.w	r3, r0, r3, lsl #11
20022cb4:	f99d 0010 	ldrsb.w	r0, [sp, #16]
20022cb8:	f36f 0414 	bfc	r4, #0, #21
20022cbc:	ea43 2300 	orr.w	r3, r3, r0, lsl #8
20022cc0:	f99d 0014 	ldrsb.w	r0, [sp, #20]
20022cc4:	ea43 1380 	orr.w	r3, r3, r0, lsl #6
20022cc8:	ea43 3242 	orr.w	r2, r3, r2, lsl #13
20022ccc:	ea42 4181 	orr.w	r1, r2, r1, lsl #18
20022cd0:	4321      	orrs	r1, r4
20022cd2:	64a9      	str	r1, [r5, #72]	@ 0x48
20022cd4:	bd70      	pop	{r4, r5, r6, pc}

20022cd6 <HAL_FLASH_SET_AHB_WCMD>:
20022cd6:	b140      	cbz	r0, 20022cea <HAL_FLASH_SET_AHB_WCMD+0x14>
20022cd8:	6802      	ldr	r2, [r0, #0]
20022cda:	2000      	movs	r0, #0
20022cdc:	6c13      	ldr	r3, [r2, #64]	@ 0x40
20022cde:	f423 437f 	bic.w	r3, r3, #65280	@ 0xff00
20022ce2:	ea43 2101 	orr.w	r1, r3, r1, lsl #8
20022ce6:	6411      	str	r1, [r2, #64]	@ 0x40
20022ce8:	4770      	bx	lr
20022cea:	2001      	movs	r0, #1
20022cec:	4770      	bx	lr

20022cee <HAL_FLASH_CFG_AHB_WCMD>:
20022cee:	b570      	push	{r4, r5, r6, lr}
20022cf0:	b1c8      	cbz	r0, 20022d26 <HAL_FLASH_CFG_AHB_WCMD+0x38>
20022cf2:	6805      	ldr	r5, [r0, #0]
20022cf4:	f99d 6018 	ldrsb.w	r6, [sp, #24]
20022cf8:	f99d 001c 	ldrsb.w	r0, [sp, #28]
20022cfc:	6d2c      	ldr	r4, [r5, #80]	@ 0x50
20022cfe:	ea40 00c6 	orr.w	r0, r0, r6, lsl #3
20022d02:	ea40 23c3 	orr.w	r3, r0, r3, lsl #11
20022d06:	f99d 0010 	ldrsb.w	r0, [sp, #16]
20022d0a:	f36f 0414 	bfc	r4, #0, #21
20022d0e:	ea43 2300 	orr.w	r3, r3, r0, lsl #8
20022d12:	f99d 0014 	ldrsb.w	r0, [sp, #20]
20022d16:	ea43 1380 	orr.w	r3, r3, r0, lsl #6
20022d1a:	ea43 3242 	orr.w	r2, r3, r2, lsl #13
20022d1e:	ea42 4181 	orr.w	r1, r2, r1, lsl #18
20022d22:	4321      	orrs	r1, r4
20022d24:	6529      	str	r1, [r5, #80]	@ 0x50
20022d26:	bd70      	pop	{r4, r5, r6, pc}

20022d28 <HAL_FLASH_WRITE_WORD>:
20022d28:	b118      	cbz	r0, 20022d32 <HAL_FLASH_WRITE_WORD+0xa>
20022d2a:	6803      	ldr	r3, [r0, #0]
20022d2c:	2000      	movs	r0, #0
20022d2e:	6059      	str	r1, [r3, #4]
20022d30:	4770      	bx	lr
20022d32:	2001      	movs	r0, #1
20022d34:	4770      	bx	lr

20022d36 <HAL_FLASH_WRITE_DLEN>:
20022d36:	b130      	cbz	r0, 20022d46 <HAL_FLASH_WRITE_DLEN+0x10>
20022d38:	6803      	ldr	r3, [r0, #0]
20022d3a:	3901      	subs	r1, #1
20022d3c:	f3c1 0113 	ubfx	r1, r1, #0, #20
20022d40:	2000      	movs	r0, #0
20022d42:	6259      	str	r1, [r3, #36]	@ 0x24
20022d44:	4770      	bx	lr
20022d46:	2001      	movs	r0, #1
20022d48:	4770      	bx	lr

20022d4a <HAL_FLASH_WRITE_DLEN2>:
20022d4a:	b130      	cbz	r0, 20022d5a <HAL_FLASH_WRITE_DLEN2+0x10>
20022d4c:	6803      	ldr	r3, [r0, #0]
20022d4e:	3901      	subs	r1, #1
20022d50:	f3c1 0113 	ubfx	r1, r1, #0, #20
20022d54:	2000      	movs	r0, #0
20022d56:	6399      	str	r1, [r3, #56]	@ 0x38
20022d58:	4770      	bx	lr
20022d5a:	2001      	movs	r0, #1
20022d5c:	4770      	bx	lr

20022d5e <HAL_FLASH_WRITE_ABYTE>:
20022d5e:	b108      	cbz	r0, 20022d64 <HAL_FLASH_WRITE_ABYTE+0x6>
20022d60:	6803      	ldr	r3, [r0, #0]
20022d62:	6219      	str	r1, [r3, #32]
20022d64:	4770      	bx	lr

20022d66 <HAL_FLASH_IS_CMD_DONE>:
20022d66:	b118      	cbz	r0, 20022d70 <HAL_FLASH_IS_CMD_DONE+0xa>
20022d68:	6803      	ldr	r3, [r0, #0]
20022d6a:	6918      	ldr	r0, [r3, #16]
20022d6c:	f000 0001 	and.w	r0, r0, #1
20022d70:	4770      	bx	lr

20022d72 <HAL_FLASH_CLR_CMD_DONE>:
20022d72:	b120      	cbz	r0, 20022d7e <HAL_FLASH_CLR_CMD_DONE+0xc>
20022d74:	6802      	ldr	r2, [r0, #0]
20022d76:	6953      	ldr	r3, [r2, #20]
20022d78:	f043 0301 	orr.w	r3, r3, #1
20022d7c:	6153      	str	r3, [r2, #20]
20022d7e:	4770      	bx	lr

20022d80 <HAL_FLASH_SET_CMD>:
20022d80:	b538      	push	{r3, r4, r5, lr}
20022d82:	460d      	mov	r5, r1
20022d84:	4604      	mov	r4, r0
20022d86:	b1a8      	cbz	r0, 20022db4 <HAL_FLASH_SET_CMD+0x34>
20022d88:	6803      	ldr	r3, [r0, #0]
20022d8a:	61da      	str	r2, [r3, #28]
20022d8c:	6b43      	ldr	r3, [r0, #52]	@ 0x34
20022d8e:	b10b      	cbz	r3, 20022d94 <HAL_FLASH_SET_CMD+0x14>
20022d90:	2001      	movs	r0, #1
20022d92:	4798      	blx	r3
20022d94:	6823      	ldr	r3, [r4, #0]
20022d96:	619d      	str	r5, [r3, #24]
20022d98:	4620      	mov	r0, r4
20022d9a:	f7ff ffe4 	bl	20022d66 <HAL_FLASH_IS_CMD_DONE>
20022d9e:	2800      	cmp	r0, #0
20022da0:	d0fa      	beq.n	20022d98 <HAL_FLASH_SET_CMD+0x18>
20022da2:	4620      	mov	r0, r4
20022da4:	f7ff ffe5 	bl	20022d72 <HAL_FLASH_CLR_CMD_DONE>
20022da8:	6b63      	ldr	r3, [r4, #52]	@ 0x34
20022daa:	b10b      	cbz	r3, 20022db0 <HAL_FLASH_SET_CMD+0x30>
20022dac:	2000      	movs	r0, #0
20022dae:	4798      	blx	r3
20022db0:	2000      	movs	r0, #0
20022db2:	bd38      	pop	{r3, r4, r5, pc}
20022db4:	2001      	movs	r0, #1
20022db6:	e7fc      	b.n	20022db2 <HAL_FLASH_SET_CMD+0x32>

20022db8 <HAL_FLASH_CLR_STATUS>:
20022db8:	b118      	cbz	r0, 20022dc2 <HAL_FLASH_CLR_STATUS+0xa>
20022dba:	6802      	ldr	r2, [r0, #0]
20022dbc:	6953      	ldr	r3, [r2, #20]
20022dbe:	4319      	orrs	r1, r3
20022dc0:	6151      	str	r1, [r2, #20]
20022dc2:	4770      	bx	lr

20022dc4 <HAL_FLASH_STATUS_MATCH>:
20022dc4:	b118      	cbz	r0, 20022dce <HAL_FLASH_STATUS_MATCH+0xa>
20022dc6:	6803      	ldr	r3, [r0, #0]
20022dc8:	6918      	ldr	r0, [r3, #16]
20022dca:	f3c0 00c0 	ubfx	r0, r0, #3, #1
20022dce:	4770      	bx	lr

20022dd0 <HAL_FLASH_IS_PROG_DONE>:
20022dd0:	b128      	cbz	r0, 20022dde <HAL_FLASH_IS_PROG_DONE+0xe>
20022dd2:	6803      	ldr	r3, [r0, #0]
20022dd4:	6858      	ldr	r0, [r3, #4]
20022dd6:	43c0      	mvns	r0, r0
20022dd8:	f000 0001 	and.w	r0, r0, #1
20022ddc:	4770      	bx	lr
20022dde:	2001      	movs	r0, #1
20022de0:	4770      	bx	lr

20022de2 <HAL_FLASH_READ32>:
20022de2:	b108      	cbz	r0, 20022de8 <HAL_FLASH_READ32+0x6>
20022de4:	6803      	ldr	r3, [r0, #0]
20022de6:	6858      	ldr	r0, [r3, #4]
20022de8:	4770      	bx	lr

20022dea <HAL_FLASH_SET_TXSLOT>:
20022dea:	b120      	cbz	r0, 20022df6 <HAL_FLASH_SET_TXSLOT+0xc>
20022dec:	6802      	ldr	r2, [r0, #0]
20022dee:	6d53      	ldr	r3, [r2, #84]	@ 0x54
20022df0:	f361 238e 	bfi	r3, r1, #10, #5
20022df4:	6553      	str	r3, [r2, #84]	@ 0x54
20022df6:	4770      	bx	lr

20022df8 <HAL_FLASH_SET_CLK_rom>:
20022df8:	b108      	cbz	r0, 20022dfe <HAL_FLASH_SET_CLK_rom+0x6>
20022dfa:	6803      	ldr	r3, [r0, #0]
20022dfc:	60d9      	str	r1, [r3, #12]
20022dfe:	4770      	bx	lr

20022e00 <HAL_FLASH_GET_DIV>:
20022e00:	b110      	cbz	r0, 20022e08 <HAL_FLASH_GET_DIV+0x8>
20022e02:	6803      	ldr	r3, [r0, #0]
20022e04:	68d8      	ldr	r0, [r3, #12]
20022e06:	b2c0      	uxtb	r0, r0
20022e08:	4770      	bx	lr

20022e0a <HAL_FLASH_MANUAL_CMD>:
20022e0a:	b570      	push	{r4, r5, r6, lr}
20022e0c:	b1e8      	cbz	r0, 20022e4a <HAL_FLASH_MANUAL_CMD+0x40>
20022e0e:	6805      	ldr	r5, [r0, #0]
20022e10:	f99d 601c 	ldrsb.w	r6, [sp, #28]
20022e14:	f99d 0020 	ldrsb.w	r0, [sp, #32]
20022e18:	6aac      	ldr	r4, [r5, #40]	@ 0x28
20022e1a:	ea40 00c6 	orr.w	r0, r0, r6, lsl #3
20022e1e:	f99d 6010 	ldrsb.w	r6, [sp, #16]
20022e22:	f36f 0415 	bfc	r4, #0, #22
20022e26:	ea40 20c6 	orr.w	r0, r0, r6, lsl #11
20022e2a:	f99d 6014 	ldrsb.w	r6, [sp, #20]
20022e2e:	ea40 2006 	orr.w	r0, r0, r6, lsl #8
20022e32:	f99d 6018 	ldrsb.w	r6, [sp, #24]
20022e36:	ea40 1086 	orr.w	r0, r0, r6, lsl #6
20022e3a:	ea40 3343 	orr.w	r3, r0, r3, lsl #13
20022e3e:	ea43 4282 	orr.w	r2, r3, r2, lsl #18
20022e42:	ea42 5141 	orr.w	r1, r2, r1, lsl #21
20022e46:	4321      	orrs	r1, r4
20022e48:	62a9      	str	r1, [r5, #40]	@ 0x28
20022e4a:	bd70      	pop	{r4, r5, r6, pc}

20022e4c <HAL_FLASH_MANUAL_CMD2>:
20022e4c:	b570      	push	{r4, r5, r6, lr}
20022e4e:	b1e8      	cbz	r0, 20022e8c <HAL_FLASH_MANUAL_CMD2+0x40>
20022e50:	6805      	ldr	r5, [r0, #0]
20022e52:	f99d 601c 	ldrsb.w	r6, [sp, #28]
20022e56:	f99d 0020 	ldrsb.w	r0, [sp, #32]
20022e5a:	6bec      	ldr	r4, [r5, #60]	@ 0x3c
20022e5c:	ea40 00c6 	orr.w	r0, r0, r6, lsl #3
20022e60:	f99d 6010 	ldrsb.w	r6, [sp, #16]
20022e64:	f36f 0415 	bfc	r4, #0, #22
20022e68:	ea40 20c6 	orr.w	r0, r0, r6, lsl #11
20022e6c:	f99d 6014 	ldrsb.w	r6, [sp, #20]
20022e70:	ea40 2006 	orr.w	r0, r0, r6, lsl #8
20022e74:	f99d 6018 	ldrsb.w	r6, [sp, #24]
20022e78:	ea40 1086 	orr.w	r0, r0, r6, lsl #6
20022e7c:	ea40 3343 	orr.w	r3, r0, r3, lsl #13
20022e80:	ea43 4282 	orr.w	r2, r3, r2, lsl #18
20022e84:	ea42 5141 	orr.w	r1, r2, r1, lsl #21
20022e88:	4321      	orrs	r1, r4
20022e8a:	63e9      	str	r1, [r5, #60]	@ 0x3c
20022e8c:	bd70      	pop	{r4, r5, r6, pc}
	...

20022e90 <HAL_FLASH_SET_ALIAS_RANGE>:
20022e90:	b510      	push	{r4, lr}
20022e92:	b158      	cbz	r0, 20022eac <HAL_FLASH_SET_ALIAS_RANGE+0x1c>
20022e94:	4b06      	ldr	r3, [pc, #24]	@ (20022eb0 <HAL_FLASH_SET_ALIAS_RANGE+0x20>)
20022e96:	6804      	ldr	r4, [r0, #0]
20022e98:	f202 32ff 	addw	r2, r2, #1023	@ 0x3ff
20022e9c:	440a      	add	r2, r1
20022e9e:	4019      	ands	r1, r3
20022ea0:	66e1      	str	r1, [r4, #108]	@ 0x6c
20022ea2:	401a      	ands	r2, r3
20022ea4:	6803      	ldr	r3, [r0, #0]
20022ea6:	2000      	movs	r0, #0
20022ea8:	671a      	str	r2, [r3, #112]	@ 0x70
20022eaa:	bd10      	pop	{r4, pc}
20022eac:	2001      	movs	r0, #1
20022eae:	e7fc      	b.n	20022eaa <HAL_FLASH_SET_ALIAS_RANGE+0x1a>
20022eb0:	fffffc00 	.word	0xfffffc00

20022eb4 <HAL_FLASH_SET_ALIAS_OFFSET>:
20022eb4:	b128      	cbz	r0, 20022ec2 <HAL_FLASH_SET_ALIAS_OFFSET+0xe>
20022eb6:	6803      	ldr	r3, [r0, #0]
20022eb8:	f36f 0109 	bfc	r1, #0, #10
20022ebc:	2000      	movs	r0, #0
20022ebe:	6759      	str	r1, [r3, #116]	@ 0x74
20022ec0:	4770      	bx	lr
20022ec2:	2001      	movs	r0, #1
20022ec4:	4770      	bx	lr
	...

20022ec8 <HAL_FLASH_SET_CTR>:
20022ec8:	b510      	push	{r4, lr}
20022eca:	b150      	cbz	r0, 20022ee2 <HAL_FLASH_SET_CTR+0x1a>
20022ecc:	4b06      	ldr	r3, [pc, #24]	@ (20022ee8 <HAL_FLASH_SET_CTR+0x20>)
20022ece:	6804      	ldr	r4, [r0, #0]
20022ed0:	4019      	ands	r1, r3
20022ed2:	65e1      	str	r1, [r4, #92]	@ 0x5c
20022ed4:	6801      	ldr	r1, [r0, #0]
20022ed6:	2000      	movs	r0, #0
20022ed8:	f202 32ff 	addw	r2, r2, #1023	@ 0x3ff
20022edc:	401a      	ands	r2, r3
20022ede:	660a      	str	r2, [r1, #96]	@ 0x60
20022ee0:	bd10      	pop	{r4, pc}
20022ee2:	2001      	movs	r0, #1
20022ee4:	e7fc      	b.n	20022ee0 <HAL_FLASH_SET_CTR+0x18>
20022ee6:	bf00      	nop
20022ee8:	fffffc00 	.word	0xfffffc00

20022eec <HAL_FLASH_SET_NONCE>:
20022eec:	b150      	cbz	r0, 20022f04 <HAL_FLASH_SET_NONCE+0x18>
20022eee:	b149      	cbz	r1, 20022f04 <HAL_FLASH_SET_NONCE+0x18>
20022ef0:	680b      	ldr	r3, [r1, #0]
20022ef2:	6802      	ldr	r2, [r0, #0]
20022ef4:	ba1b      	rev	r3, r3
20022ef6:	6653      	str	r3, [r2, #100]	@ 0x64
20022ef8:	684b      	ldr	r3, [r1, #4]
20022efa:	6802      	ldr	r2, [r0, #0]
20022efc:	ba1b      	rev	r3, r3
20022efe:	2000      	movs	r0, #0
20022f00:	6693      	str	r3, [r2, #104]	@ 0x68
20022f02:	4770      	bx	lr
20022f04:	2001      	movs	r0, #1
20022f06:	4770      	bx	lr

20022f08 <HAL_FLASH_SET_AES>:
20022f08:	b158      	cbz	r0, 20022f22 <HAL_FLASH_SET_AES+0x1a>
20022f0a:	6803      	ldr	r3, [r0, #0]
20022f0c:	2901      	cmp	r1, #1
20022f0e:	681a      	ldr	r2, [r3, #0]
20022f10:	d104      	bne.n	20022f1c <HAL_FLASH_SET_AES+0x14>
20022f12:	f042 0280 	orr.w	r2, r2, #128	@ 0x80
20022f16:	2000      	movs	r0, #0
20022f18:	601a      	str	r2, [r3, #0]
20022f1a:	4770      	bx	lr
20022f1c:	f022 0280 	bic.w	r2, r2, #128	@ 0x80
20022f20:	e7f9      	b.n	20022f16 <HAL_FLASH_SET_AES+0xe>
20022f22:	2001      	movs	r0, #1
20022f24:	4770      	bx	lr

20022f26 <HAL_FLASH_ENABLE_AES>:
20022f26:	b150      	cbz	r0, 20022f3e <HAL_FLASH_ENABLE_AES+0x18>
20022f28:	6803      	ldr	r3, [r0, #0]
20022f2a:	681a      	ldr	r2, [r3, #0]
20022f2c:	b121      	cbz	r1, 20022f38 <HAL_FLASH_ENABLE_AES+0x12>
20022f2e:	f042 0240 	orr.w	r2, r2, #64	@ 0x40
20022f32:	2000      	movs	r0, #0
20022f34:	601a      	str	r2, [r3, #0]
20022f36:	4770      	bx	lr
20022f38:	f022 0240 	bic.w	r2, r2, #64	@ 0x40
20022f3c:	e7f9      	b.n	20022f32 <HAL_FLASH_ENABLE_AES+0xc>
20022f3e:	2001      	movs	r0, #1
20022f40:	4770      	bx	lr

20022f42 <HAL_FLASH_ENABLE_QSPI>:
20022f42:	b150      	cbz	r0, 20022f5a <HAL_FLASH_ENABLE_QSPI+0x18>
20022f44:	6803      	ldr	r3, [r0, #0]
20022f46:	681a      	ldr	r2, [r3, #0]
20022f48:	b121      	cbz	r1, 20022f54 <HAL_FLASH_ENABLE_QSPI+0x12>
20022f4a:	f042 0201 	orr.w	r2, r2, #1
20022f4e:	2000      	movs	r0, #0
20022f50:	601a      	str	r2, [r3, #0]
20022f52:	4770      	bx	lr
20022f54:	f022 0201 	bic.w	r2, r2, #1
20022f58:	e7f9      	b.n	20022f4e <HAL_FLASH_ENABLE_QSPI+0xc>
20022f5a:	2001      	movs	r0, #1
20022f5c:	4770      	bx	lr

20022f5e <HAL_FLASH_ENABLE_OPI>:
20022f5e:	b150      	cbz	r0, 20022f76 <HAL_FLASH_ENABLE_OPI+0x18>
20022f60:	6803      	ldr	r3, [r0, #0]
20022f62:	681a      	ldr	r2, [r3, #0]
20022f64:	b121      	cbz	r1, 20022f70 <HAL_FLASH_ENABLE_OPI+0x12>
20022f66:	f442 1200 	orr.w	r2, r2, #2097152	@ 0x200000
20022f6a:	2000      	movs	r0, #0
20022f6c:	601a      	str	r2, [r3, #0]
20022f6e:	4770      	bx	lr
20022f70:	f422 1200 	bic.w	r2, r2, #2097152	@ 0x200000
20022f74:	e7f9      	b.n	20022f6a <HAL_FLASH_ENABLE_OPI+0xc>
20022f76:	2001      	movs	r0, #1
20022f78:	4770      	bx	lr

20022f7a <HAL_FLASH_ENABLE_HYPER>:
20022f7a:	b150      	cbz	r0, 20022f92 <HAL_FLASH_ENABLE_HYPER+0x18>
20022f7c:	6803      	ldr	r3, [r0, #0]
20022f7e:	689a      	ldr	r2, [r3, #8]
20022f80:	b121      	cbz	r1, 20022f8c <HAL_FLASH_ENABLE_HYPER+0x12>
20022f82:	f042 0210 	orr.w	r2, r2, #16
20022f86:	2000      	movs	r0, #0
20022f88:	609a      	str	r2, [r3, #8]
20022f8a:	4770      	bx	lr
20022f8c:	f022 0210 	bic.w	r2, r2, #16
20022f90:	e7f9      	b.n	20022f86 <HAL_FLASH_ENABLE_HYPER+0xc>
20022f92:	2001      	movs	r0, #1
20022f94:	4770      	bx	lr

20022f96 <HAL_FLASH_ENABLE_CMD2>:
20022f96:	b150      	cbz	r0, 20022fae <HAL_FLASH_ENABLE_CMD2+0x18>
20022f98:	6803      	ldr	r3, [r0, #0]
20022f9a:	681a      	ldr	r2, [r3, #0]
20022f9c:	b121      	cbz	r1, 20022fa8 <HAL_FLASH_ENABLE_CMD2+0x12>
20022f9e:	f442 3280 	orr.w	r2, r2, #65536	@ 0x10000
20022fa2:	2000      	movs	r0, #0
20022fa4:	601a      	str	r2, [r3, #0]
20022fa6:	4770      	bx	lr
20022fa8:	f422 3280 	bic.w	r2, r2, #65536	@ 0x10000
20022fac:	e7f9      	b.n	20022fa2 <HAL_FLASH_ENABLE_CMD2+0xc>
20022fae:	2001      	movs	r0, #1
20022fb0:	4770      	bx	lr

20022fb2 <HAL_FLASH_STAUS_MATCH_CMD2>:
20022fb2:	b150      	cbz	r0, 20022fca <HAL_FLASH_STAUS_MATCH_CMD2+0x18>
20022fb4:	6803      	ldr	r3, [r0, #0]
20022fb6:	681a      	ldr	r2, [r3, #0]
20022fb8:	b121      	cbz	r1, 20022fc4 <HAL_FLASH_STAUS_MATCH_CMD2+0x12>
20022fba:	f442 2280 	orr.w	r2, r2, #262144	@ 0x40000
20022fbe:	2000      	movs	r0, #0
20022fc0:	601a      	str	r2, [r3, #0]
20022fc2:	4770      	bx	lr
20022fc4:	f422 2280 	bic.w	r2, r2, #262144	@ 0x40000
20022fc8:	e7f9      	b.n	20022fbe <HAL_FLASH_STAUS_MATCH_CMD2+0xc>
20022fca:	2001      	movs	r0, #1
20022fcc:	4770      	bx	lr

20022fce <HAL_FLASH_SET_CS_TIME>:
20022fce:	b530      	push	{r4, r5, lr}
20022fd0:	b180      	cbz	r0, 20022ff4 <HAL_FLASH_SET_CS_TIME+0x26>
20022fd2:	6805      	ldr	r5, [r0, #0]
20022fd4:	f8bd 000c 	ldrh.w	r0, [sp, #12]
20022fd8:	68ac      	ldr	r4, [r5, #8]
20022fda:	0680      	lsls	r0, r0, #26
20022fdc:	ea40 5383 	orr.w	r3, r0, r3, lsl #22
20022fe0:	2000      	movs	r0, #0
20022fe2:	ea43 4181 	orr.w	r1, r3, r1, lsl #18
20022fe6:	f36f 149e 	bfc	r4, #6, #25
20022fea:	ea41 1282 	orr.w	r2, r1, r2, lsl #6
20022fee:	4322      	orrs	r2, r4
20022ff0:	60aa      	str	r2, [r5, #8]
20022ff2:	bd30      	pop	{r4, r5, pc}
20022ff4:	2001      	movs	r0, #1
20022ff6:	e7fc      	b.n	20022ff2 <HAL_FLASH_SET_CS_TIME+0x24>

20022ff8 <HAL_FLASH_SET_ROW_BOUNDARY>:
20022ff8:	b130      	cbz	r0, 20023008 <HAL_FLASH_SET_ROW_BOUNDARY+0x10>
20022ffa:	6802      	ldr	r2, [r0, #0]
20022ffc:	2000      	movs	r0, #0
20022ffe:	6893      	ldr	r3, [r2, #8]
20023000:	f361 0302 	bfi	r3, r1, #0, #3
20023004:	6093      	str	r3, [r2, #8]
20023006:	4770      	bx	lr
20023008:	2001      	movs	r0, #1
2002300a:	4770      	bx	lr

2002300c <HAL_FLASH_SET_LEGACY>:
2002300c:	b150      	cbz	r0, 20023024 <HAL_FLASH_SET_LEGACY+0x18>
2002300e:	6803      	ldr	r3, [r0, #0]
20023010:	689a      	ldr	r2, [r3, #8]
20023012:	b121      	cbz	r1, 2002301e <HAL_FLASH_SET_LEGACY+0x12>
20023014:	f042 0220 	orr.w	r2, r2, #32
20023018:	2000      	movs	r0, #0
2002301a:	609a      	str	r2, [r3, #8]
2002301c:	4770      	bx	lr
2002301e:	f022 0220 	bic.w	r2, r2, #32
20023022:	e7f9      	b.n	20023018 <HAL_FLASH_SET_LEGACY+0xc>
20023024:	2001      	movs	r0, #1
20023026:	4770      	bx	lr

20023028 <HAL_FLASH_SET_DUAL_MODE>:
20023028:	b150      	cbz	r0, 20023040 <HAL_FLASH_SET_DUAL_MODE+0x18>
2002302a:	6803      	ldr	r3, [r0, #0]
2002302c:	681a      	ldr	r2, [r3, #0]
2002302e:	b121      	cbz	r1, 2002303a <HAL_FLASH_SET_DUAL_MODE+0x12>
20023030:	f042 7280 	orr.w	r2, r2, #16777216	@ 0x1000000
20023034:	2000      	movs	r0, #0
20023036:	601a      	str	r2, [r3, #0]
20023038:	4770      	bx	lr
2002303a:	f022 7280 	bic.w	r2, r2, #16777216	@ 0x1000000
2002303e:	e7f9      	b.n	20023034 <HAL_FLASH_SET_DUAL_MODE+0xc>
20023040:	2001      	movs	r0, #1
20023042:	4770      	bx	lr

20023044 <HAL_MPI_EN_FIXLAT>:
20023044:	b150      	cbz	r0, 2002305c <HAL_MPI_EN_FIXLAT+0x18>
20023046:	6803      	ldr	r3, [r0, #0]
20023048:	689a      	ldr	r2, [r3, #8]
2002304a:	b121      	cbz	r1, 20023056 <HAL_MPI_EN_FIXLAT+0x12>
2002304c:	f042 4200 	orr.w	r2, r2, #2147483648	@ 0x80000000
20023050:	2000      	movs	r0, #0
20023052:	609a      	str	r2, [r3, #8]
20023054:	4770      	bx	lr
20023056:	f022 4200 	bic.w	r2, r2, #2147483648	@ 0x80000000
2002305a:	e7f9      	b.n	20023050 <HAL_MPI_EN_FIXLAT+0xc>
2002305c:	2001      	movs	r0, #1
2002305e:	4770      	bx	lr

20023060 <HAL_MPI_ENABLE_DQS>:
20023060:	b150      	cbz	r0, 20023078 <HAL_MPI_ENABLE_DQS+0x18>
20023062:	6803      	ldr	r3, [r0, #0]
20023064:	689a      	ldr	r2, [r3, #8]
20023066:	b121      	cbz	r1, 20023072 <HAL_MPI_ENABLE_DQS+0x12>
20023068:	f042 0208 	orr.w	r2, r2, #8
2002306c:	2000      	movs	r0, #0
2002306e:	609a      	str	r2, [r3, #8]
20023070:	4770      	bx	lr
20023072:	f022 0208 	bic.w	r2, r2, #8
20023076:	e7f9      	b.n	2002306c <HAL_MPI_ENABLE_DQS+0xc>
20023078:	2001      	movs	r0, #1
2002307a:	4770      	bx	lr

2002307c <HAL_MPI_SET_DQS_DELAY>:
2002307c:	b140      	cbz	r0, 20023090 <HAL_MPI_SET_DQS_DELAY+0x14>
2002307e:	6802      	ldr	r2, [r0, #0]
20023080:	2000      	movs	r0, #0
20023082:	6d93      	ldr	r3, [r2, #88]	@ 0x58
20023084:	f423 037f 	bic.w	r3, r3, #16711680	@ 0xff0000
20023088:	ea43 4101 	orr.w	r1, r3, r1, lsl #16
2002308c:	6591      	str	r1, [r2, #88]	@ 0x58
2002308e:	4770      	bx	lr
20023090:	2001      	movs	r0, #1
20023092:	4770      	bx	lr

20023094 <HAL_MPI_SET_SCK>:
20023094:	b160      	cbz	r0, 200230b0 <HAL_MPI_SET_SCK+0x1c>
20023096:	6800      	ldr	r0, [r0, #0]
20023098:	0652      	lsls	r2, r2, #25
2002309a:	6d83      	ldr	r3, [r0, #88]	@ 0x58
2002309c:	ea42 2101 	orr.w	r1, r2, r1, lsl #8
200230a0:	f023 7300 	bic.w	r3, r3, #33554432	@ 0x2000000
200230a4:	f423 437f 	bic.w	r3, r3, #65280	@ 0xff00
200230a8:	4319      	orrs	r1, r3
200230aa:	6581      	str	r1, [r0, #88]	@ 0x58
200230ac:	2000      	movs	r0, #0
200230ae:	4770      	bx	lr
200230b0:	2001      	movs	r0, #1
200230b2:	4770      	bx	lr

200230b4 <HAL_MPI_CFG_DTR>:
200230b4:	b510      	push	{r4, lr}
200230b6:	b1f0      	cbz	r0, 200230f6 <HAL_MPI_CFG_DTR+0x42>
200230b8:	6804      	ldr	r4, [r0, #0]
200230ba:	6da0      	ldr	r0, [r4, #88]	@ 0x58
200230bc:	b1b1      	cbz	r1, 200230ec <HAL_MPI_CFG_DTR+0x38>
200230be:	2a02      	cmp	r2, #2
200230c0:	bf84      	itt	hi
200230c2:	3a02      	subhi	r2, #2
200230c4:	b2d2      	uxtbhi	r2, r2
200230c6:	0213      	lsls	r3, r2, #8
200230c8:	f36f 000f 	bfc	r0, #0, #16
200230cc:	f403 43fe 	and.w	r3, r3, #32512	@ 0x7f00
200230d0:	4303      	orrs	r3, r0
200230d2:	0612      	lsls	r2, r2, #24
200230d4:	bf54      	ite	pl
200230d6:	f043 6380 	orrpl.w	r3, r3, #67108864	@ 0x4000000
200230da:	f043 63a0 	orrmi.w	r3, r3, #83886080	@ 0x5000000
200230de:	f043 030a 	orr.w	r3, r3, #10
200230e2:	f023 7300 	bic.w	r3, r3, #33554432	@ 0x2000000
200230e6:	2000      	movs	r0, #0
200230e8:	65a3      	str	r3, [r4, #88]	@ 0x58
200230ea:	bd10      	pop	{r4, pc}
200230ec:	4b03      	ldr	r3, [pc, #12]	@ (200230fc <HAL_MPI_CFG_DTR+0x48>)
200230ee:	4003      	ands	r3, r0
200230f0:	f043 7300 	orr.w	r3, r3, #33554432	@ 0x2000000
200230f4:	e7f7      	b.n	200230e6 <HAL_MPI_CFG_DTR+0x32>
200230f6:	2001      	movs	r0, #1
200230f8:	e7f7      	b.n	200230ea <HAL_MPI_CFG_DTR+0x36>
200230fa:	bf00      	nop
200230fc:	faff0000 	.word	0xfaff0000

20023100 <HAL_MPI_MODIFY_RCMD_DELAY>:
20023100:	b130      	cbz	r0, 20023110 <HAL_MPI_MODIFY_RCMD_DELAY+0x10>
20023102:	6802      	ldr	r2, [r0, #0]
20023104:	6c93      	ldr	r3, [r2, #72]	@ 0x48
20023106:	f423 3378 	bic.w	r3, r3, #253952	@ 0x3e000
2002310a:	ea43 3141 	orr.w	r1, r3, r1, lsl #13
2002310e:	6491      	str	r1, [r2, #72]	@ 0x48
20023110:	4770      	bx	lr

20023112 <HAL_MPI_MODIFY_WCMD_DELAY>:
20023112:	b130      	cbz	r0, 20023122 <HAL_MPI_MODIFY_WCMD_DELAY+0x10>
20023114:	6802      	ldr	r2, [r0, #0]
20023116:	6d13      	ldr	r3, [r2, #80]	@ 0x50
20023118:	f423 3378 	bic.w	r3, r3, #253952	@ 0x3e000
2002311c:	ea43 3141 	orr.w	r1, r3, r1, lsl #13
20023120:	6511      	str	r1, [r2, #80]	@ 0x50
20023122:	4770      	bx	lr

20023124 <HAL_FLASH_CONFIG_AHB_READ>:
20023124:	b57f      	push	{r0, r1, r2, r3, r4, r5, r6, lr}
20023126:	4605      	mov	r5, r0
20023128:	2800      	cmp	r0, #0
2002312a:	d03d      	beq.n	200231a8 <HAL_FLASH_CONFIG_AHB_READ+0x84>
2002312c:	68c4      	ldr	r4, [r0, #12]
2002312e:	b301      	cbz	r1, 20023172 <HAL_FLASH_CONFIG_AHB_READ+0x4e>
20023130:	f894 306a 	ldrb.w	r3, [r4, #106]	@ 0x6a
20023134:	2b00      	cmp	r3, #0
20023136:	d037      	beq.n	200231a8 <HAL_FLASH_CONFIG_AHB_READ+0x84>
20023138:	f994 6072 	ldrsb.w	r6, [r4, #114]	@ 0x72
2002313c:	f994 306e 	ldrsb.w	r3, [r4, #110]	@ 0x6e
20023140:	f994 106c 	ldrsb.w	r1, [r4, #108]	@ 0x6c
20023144:	f994 206d 	ldrsb.w	r2, [r4, #109]	@ 0x6d
20023148:	9603      	str	r6, [sp, #12]
2002314a:	f994 6071 	ldrsb.w	r6, [r4, #113]	@ 0x71
2002314e:	9602      	str	r6, [sp, #8]
20023150:	f994 6070 	ldrsb.w	r6, [r4, #112]	@ 0x70
20023154:	9601      	str	r6, [sp, #4]
20023156:	f994 406f 	ldrsb.w	r4, [r4, #111]	@ 0x6f
2002315a:	9400      	str	r4, [sp, #0]
2002315c:	f7ff fd9e 	bl	20022c9c <HAL_FLASH_CFG_AHB_RCMD>
20023160:	68eb      	ldr	r3, [r5, #12]
20023162:	f893 106a 	ldrb.w	r1, [r3, #106]	@ 0x6a
20023166:	4628      	mov	r0, r5
20023168:	f7ff fd8d 	bl	20022c86 <HAL_FLASH_SET_AHB_RCMD>
2002316c:	2000      	movs	r0, #0
2002316e:	b004      	add	sp, #16
20023170:	bd70      	pop	{r4, r5, r6, pc}
20023172:	f894 3046 	ldrb.w	r3, [r4, #70]	@ 0x46
20023176:	b1bb      	cbz	r3, 200231a8 <HAL_FLASH_CONFIG_AHB_READ+0x84>
20023178:	f994 604e 	ldrsb.w	r6, [r4, #78]	@ 0x4e
2002317c:	f994 304a 	ldrsb.w	r3, [r4, #74]	@ 0x4a
20023180:	f994 1048 	ldrsb.w	r1, [r4, #72]	@ 0x48
20023184:	f994 2049 	ldrsb.w	r2, [r4, #73]	@ 0x49
20023188:	9603      	str	r6, [sp, #12]
2002318a:	f994 604d 	ldrsb.w	r6, [r4, #77]	@ 0x4d
2002318e:	9602      	str	r6, [sp, #8]
20023190:	f994 604c 	ldrsb.w	r6, [r4, #76]	@ 0x4c
20023194:	9601      	str	r6, [sp, #4]
20023196:	f994 404b 	ldrsb.w	r4, [r4, #75]	@ 0x4b
2002319a:	9400      	str	r4, [sp, #0]
2002319c:	f7ff fd7e 	bl	20022c9c <HAL_FLASH_CFG_AHB_RCMD>
200231a0:	68eb      	ldr	r3, [r5, #12]
200231a2:	f893 1046 	ldrb.w	r1, [r3, #70]	@ 0x46
200231a6:	e7de      	b.n	20023166 <HAL_FLASH_CONFIG_AHB_READ+0x42>
200231a8:	2001      	movs	r0, #1
200231aa:	e7e0      	b.n	2002316e <HAL_FLASH_CONFIG_AHB_READ+0x4a>

200231ac <HAL_FLASH_CONFIG_FULL_AHB_READ>:
200231ac:	b57f      	push	{r0, r1, r2, r3, r4, r5, r6, lr}
200231ae:	4605      	mov	r5, r0
200231b0:	2800      	cmp	r0, #0
200231b2:	d036      	beq.n	20023222 <HAL_FLASH_CONFIG_FULL_AHB_READ+0x76>
200231b4:	68c4      	ldr	r4, [r0, #12]
200231b6:	b1e1      	cbz	r1, 200231f2 <HAL_FLASH_CONFIG_FULL_AHB_READ+0x46>
200231b8:	f994 616e 	ldrsb.w	r6, [r4, #366]	@ 0x16e
200231bc:	f994 316a 	ldrsb.w	r3, [r4, #362]	@ 0x16a
200231c0:	f994 1168 	ldrsb.w	r1, [r4, #360]	@ 0x168
200231c4:	f994 2169 	ldrsb.w	r2, [r4, #361]	@ 0x169
200231c8:	9603      	str	r6, [sp, #12]
200231ca:	f994 616d 	ldrsb.w	r6, [r4, #365]	@ 0x16d
200231ce:	9602      	str	r6, [sp, #8]
200231d0:	f994 616c 	ldrsb.w	r6, [r4, #364]	@ 0x16c
200231d4:	9601      	str	r6, [sp, #4]
200231d6:	f994 416b 	ldrsb.w	r4, [r4, #363]	@ 0x16b
200231da:	9400      	str	r4, [sp, #0]
200231dc:	f7ff fd5e 	bl	20022c9c <HAL_FLASH_CFG_AHB_RCMD>
200231e0:	68eb      	ldr	r3, [r5, #12]
200231e2:	f893 1166 	ldrb.w	r1, [r3, #358]	@ 0x166
200231e6:	4628      	mov	r0, r5
200231e8:	f7ff fd4d 	bl	20022c86 <HAL_FLASH_SET_AHB_RCMD>
200231ec:	2000      	movs	r0, #0
200231ee:	b004      	add	sp, #16
200231f0:	bd70      	pop	{r4, r5, r6, pc}
200231f2:	f994 615c 	ldrsb.w	r6, [r4, #348]	@ 0x15c
200231f6:	f994 3158 	ldrsb.w	r3, [r4, #344]	@ 0x158
200231fa:	f994 1156 	ldrsb.w	r1, [r4, #342]	@ 0x156
200231fe:	f994 2157 	ldrsb.w	r2, [r4, #343]	@ 0x157
20023202:	9603      	str	r6, [sp, #12]
20023204:	f994 615b 	ldrsb.w	r6, [r4, #347]	@ 0x15b
20023208:	9602      	str	r6, [sp, #8]
2002320a:	f994 615a 	ldrsb.w	r6, [r4, #346]	@ 0x15a
2002320e:	9601      	str	r6, [sp, #4]
20023210:	f994 4159 	ldrsb.w	r4, [r4, #345]	@ 0x159
20023214:	9400      	str	r4, [sp, #0]
20023216:	f7ff fd41 	bl	20022c9c <HAL_FLASH_CFG_AHB_RCMD>
2002321a:	68eb      	ldr	r3, [r5, #12]
2002321c:	f893 1154 	ldrb.w	r1, [r3, #340]	@ 0x154
20023220:	e7e1      	b.n	200231e6 <HAL_FLASH_CONFIG_FULL_AHB_READ+0x3a>
20023222:	2001      	movs	r0, #1
20023224:	e7e3      	b.n	200231ee <HAL_FLASH_CONFIG_FULL_AHB_READ+0x42>

20023226 <HAL_FLASH_PRE_CMD>:
20023226:	b530      	push	{r4, r5, lr}
20023228:	68c4      	ldr	r4, [r0, #12]
2002322a:	b087      	sub	sp, #28
2002322c:	b304      	cbz	r4, 20023270 <HAL_FLASH_PRE_CMD+0x4a>
2002322e:	2938      	cmp	r1, #56	@ 0x38
20023230:	d81e      	bhi.n	20023270 <HAL_FLASH_PRE_CMD+0x4a>
20023232:	eb01 01c1 	add.w	r1, r1, r1, lsl #3
20023236:	440c      	add	r4, r1
20023238:	7c23      	ldrb	r3, [r4, #16]
2002323a:	b1cb      	cbz	r3, 20023270 <HAL_FLASH_PRE_CMD+0x4a>
2002323c:	f994 5018 	ldrsb.w	r5, [r4, #24]
20023240:	f994 3013 	ldrsb.w	r3, [r4, #19]
20023244:	f994 2012 	ldrsb.w	r2, [r4, #18]
20023248:	f994 1011 	ldrsb.w	r1, [r4, #17]
2002324c:	9504      	str	r5, [sp, #16]
2002324e:	f994 5017 	ldrsb.w	r5, [r4, #23]
20023252:	9503      	str	r5, [sp, #12]
20023254:	f994 5016 	ldrsb.w	r5, [r4, #22]
20023258:	9502      	str	r5, [sp, #8]
2002325a:	f994 5015 	ldrsb.w	r5, [r4, #21]
2002325e:	9501      	str	r5, [sp, #4]
20023260:	f994 4014 	ldrsb.w	r4, [r4, #20]
20023264:	9400      	str	r4, [sp, #0]
20023266:	f7ff fdd0 	bl	20022e0a <HAL_FLASH_MANUAL_CMD>
2002326a:	2000      	movs	r0, #0
2002326c:	b007      	add	sp, #28
2002326e:	bd30      	pop	{r4, r5, pc}
20023270:	2001      	movs	r0, #1
20023272:	e7fb      	b.n	2002326c <HAL_FLASH_PRE_CMD+0x46>

20023274 <HAL_FLASH_ISSUE_CMD>:
20023274:	b5f0      	push	{r4, r5, r6, r7, lr}
20023276:	68c4      	ldr	r4, [r0, #12]
20023278:	4606      	mov	r6, r0
2002327a:	4617      	mov	r7, r2
2002327c:	b087      	sub	sp, #28
2002327e:	b354      	cbz	r4, 200232d6 <HAL_FLASH_ISSUE_CMD+0x62>
20023280:	2938      	cmp	r1, #56	@ 0x38
20023282:	d828      	bhi.n	200232d6 <HAL_FLASH_ISSUE_CMD+0x62>
20023284:	eb01 05c1 	add.w	r5, r1, r1, lsl #3
20023288:	442c      	add	r4, r5
2002328a:	7c23      	ldrb	r3, [r4, #16]
2002328c:	b31b      	cbz	r3, 200232d6 <HAL_FLASH_ISSUE_CMD+0x62>
2002328e:	f994 c018 	ldrsb.w	ip, [r4, #24]
20023292:	f994 3013 	ldrsb.w	r3, [r4, #19]
20023296:	f994 2012 	ldrsb.w	r2, [r4, #18]
2002329a:	f994 1011 	ldrsb.w	r1, [r4, #17]
2002329e:	f8cd c010 	str.w	ip, [sp, #16]
200232a2:	f994 c017 	ldrsb.w	ip, [r4, #23]
200232a6:	f8cd c00c 	str.w	ip, [sp, #12]
200232aa:	f994 c016 	ldrsb.w	ip, [r4, #22]
200232ae:	f8cd c008 	str.w	ip, [sp, #8]
200232b2:	f994 c015 	ldrsb.w	ip, [r4, #21]
200232b6:	f8cd c004 	str.w	ip, [sp, #4]
200232ba:	f994 4014 	ldrsb.w	r4, [r4, #20]
200232be:	9400      	str	r4, [sp, #0]
200232c0:	f7ff fda3 	bl	20022e0a <HAL_FLASH_MANUAL_CMD>
200232c4:	68f3      	ldr	r3, [r6, #12]
200232c6:	463a      	mov	r2, r7
200232c8:	442b      	add	r3, r5
200232ca:	4630      	mov	r0, r6
200232cc:	7c19      	ldrb	r1, [r3, #16]
200232ce:	f7ff fd57 	bl	20022d80 <HAL_FLASH_SET_CMD>
200232d2:	b007      	add	sp, #28
200232d4:	bdf0      	pop	{r4, r5, r6, r7, pc}
200232d6:	2001      	movs	r0, #1
200232d8:	e7fb      	b.n	200232d2 <HAL_FLASH_ISSUE_CMD+0x5e>

200232da <HAL_FLASH_ISSUE_CMD_SEQ>:
200232da:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
200232de:	4690      	mov	r8, r2
200232e0:	68c2      	ldr	r2, [r0, #12]
200232e2:	4604      	mov	r4, r0
200232e4:	b086      	sub	sp, #24
200232e6:	2a00      	cmp	r2, #0
200232e8:	d072      	beq.n	200233d0 <HAL_FLASH_ISSUE_CMD_SEQ+0xf6>
200232ea:	2938      	cmp	r1, #56	@ 0x38
200232ec:	d870      	bhi.n	200233d0 <HAL_FLASH_ISSUE_CMD_SEQ+0xf6>
200232ee:	eb01 07c1 	add.w	r7, r1, r1, lsl #3
200232f2:	19d6      	adds	r6, r2, r7
200232f4:	7c31      	ldrb	r1, [r6, #16]
200232f6:	2900      	cmp	r1, #0
200232f8:	d06a      	beq.n	200233d0 <HAL_FLASH_ISSUE_CMD_SEQ+0xf6>
200232fa:	2b38      	cmp	r3, #56	@ 0x38
200232fc:	d868      	bhi.n	200233d0 <HAL_FLASH_ISSUE_CMD_SEQ+0xf6>
200232fe:	eb03 05c3 	add.w	r5, r3, r3, lsl #3
20023302:	442a      	add	r2, r5
20023304:	7c13      	ldrb	r3, [r2, #16]
20023306:	2b00      	cmp	r3, #0
20023308:	d062      	beq.n	200233d0 <HAL_FLASH_ISSUE_CMD_SEQ+0xf6>
2002330a:	f996 c018 	ldrsb.w	ip, [r6, #24]
2002330e:	f996 3013 	ldrsb.w	r3, [r6, #19]
20023312:	f996 2012 	ldrsb.w	r2, [r6, #18]
20023316:	f996 1011 	ldrsb.w	r1, [r6, #17]
2002331a:	f8cd c010 	str.w	ip, [sp, #16]
2002331e:	f996 c017 	ldrsb.w	ip, [r6, #23]
20023322:	f8cd c00c 	str.w	ip, [sp, #12]
20023326:	f996 c016 	ldrsb.w	ip, [r6, #22]
2002332a:	f8cd c008 	str.w	ip, [sp, #8]
2002332e:	f996 c015 	ldrsb.w	ip, [r6, #21]
20023332:	f8cd c004 	str.w	ip, [sp, #4]
20023336:	f996 6014 	ldrsb.w	r6, [r6, #20]
2002333a:	9600      	str	r6, [sp, #0]
2002333c:	f7ff fd65 	bl	20022e0a <HAL_FLASH_MANUAL_CMD>
20023340:	68e0      	ldr	r0, [r4, #12]
20023342:	4428      	add	r0, r5
20023344:	f990 6018 	ldrsb.w	r6, [r0, #24]
20023348:	f990 3013 	ldrsb.w	r3, [r0, #19]
2002334c:	f990 2012 	ldrsb.w	r2, [r0, #18]
20023350:	f990 1011 	ldrsb.w	r1, [r0, #17]
20023354:	9604      	str	r6, [sp, #16]
20023356:	f990 6017 	ldrsb.w	r6, [r0, #23]
2002335a:	9603      	str	r6, [sp, #12]
2002335c:	f990 6016 	ldrsb.w	r6, [r0, #22]
20023360:	9602      	str	r6, [sp, #8]
20023362:	f990 6015 	ldrsb.w	r6, [r0, #21]
20023366:	9601      	str	r6, [sp, #4]
20023368:	f990 0014 	ldrsb.w	r0, [r0, #20]
2002336c:	9000      	str	r0, [sp, #0]
2002336e:	4620      	mov	r0, r4
20023370:	f7ff fd6c 	bl	20022e4c <HAL_FLASH_MANUAL_CMD2>
20023374:	2200      	movs	r2, #0
20023376:	6823      	ldr	r3, [r4, #0]
20023378:	2101      	movs	r1, #1
2002337a:	67da      	str	r2, [r3, #124]	@ 0x7c
2002337c:	68e3      	ldr	r3, [r4, #12]
2002337e:	6822      	ldr	r2, [r4, #0]
20023380:	442b      	add	r3, r5
20023382:	7c1b      	ldrb	r3, [r3, #16]
20023384:	4620      	mov	r0, r4
20023386:	62d3      	str	r3, [r2, #44]	@ 0x2c
20023388:	6823      	ldr	r3, [r4, #0]
2002338a:	9a0c      	ldr	r2, [sp, #48]	@ 0x30
2002338c:	f8c3 2080 	str.w	r2, [r3, #128]	@ 0x80
20023390:	f7ff fe01 	bl	20022f96 <HAL_FLASH_ENABLE_CMD2>
20023394:	4620      	mov	r0, r4
20023396:	f7ff fe0c 	bl	20022fb2 <HAL_FLASH_STAUS_MATCH_CMD2>
2002339a:	6823      	ldr	r3, [r4, #0]
2002339c:	f8c3 801c 	str.w	r8, [r3, #28]
200233a0:	68e3      	ldr	r3, [r4, #12]
200233a2:	6822      	ldr	r2, [r4, #0]
200233a4:	443b      	add	r3, r7
200233a6:	7c1b      	ldrb	r3, [r3, #16]
200233a8:	6193      	str	r3, [r2, #24]
200233aa:	4620      	mov	r0, r4
200233ac:	f7ff fd0a 	bl	20022dc4 <HAL_FLASH_STATUS_MATCH>
200233b0:	2800      	cmp	r0, #0
200233b2:	d0fa      	beq.n	200233aa <HAL_FLASH_ISSUE_CMD_SEQ+0xd0>
200233b4:	2109      	movs	r1, #9
200233b6:	4620      	mov	r0, r4
200233b8:	f7ff fcfe 	bl	20022db8 <HAL_FLASH_CLR_STATUS>
200233bc:	2100      	movs	r1, #0
200233be:	f7ff fdea 	bl	20022f96 <HAL_FLASH_ENABLE_CMD2>
200233c2:	4620      	mov	r0, r4
200233c4:	f7ff fdf5 	bl	20022fb2 <HAL_FLASH_STAUS_MATCH_CMD2>
200233c8:	4608      	mov	r0, r1
200233ca:	b006      	add	sp, #24
200233cc:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
200233d0:	2001      	movs	r0, #1
200233d2:	e7fa      	b.n	200233ca <HAL_FLASH_ISSUE_CMD_SEQ+0xf0>

200233d4 <nor_qspi_switch>:
200233d4:	b570      	push	{r4, r5, r6, lr}
200233d6:	4604      	mov	r4, r0
200233d8:	b3e0      	cbz	r0, 20023454 <nor_qspi_switch+0x80>
200233da:	68c3      	ldr	r3, [r0, #12]
200233dc:	b3d3      	cbz	r3, 20023454 <nor_qspi_switch+0x80>
200233de:	b3c9      	cbz	r1, 20023454 <nor_qspi_switch+0x80>
200233e0:	f893 5193 	ldrb.w	r5, [r3, #403]	@ 0x193
200233e4:	2101      	movs	r1, #1
200233e6:	b3b5      	cbz	r5, 20023456 <nor_qspi_switch+0x82>
200233e8:	f7ff fca5 	bl	20022d36 <HAL_FLASH_WRITE_DLEN>
200233ec:	2200      	movs	r2, #0
200233ee:	2114      	movs	r1, #20
200233f0:	4620      	mov	r0, r4
200233f2:	f7ff ff3f 	bl	20023274 <HAL_FLASH_ISSUE_CMD>
200233f6:	4620      	mov	r0, r4
200233f8:	f7ff fcf3 	bl	20022de2 <HAL_FLASH_READ32>
200233fc:	f010 0501 	ands.w	r5, r0, #1
20023400:	d000      	beq.n	20023404 <nor_qspi_switch+0x30>
20023402:	e7fe      	b.n	20023402 <nor_qspi_switch+0x2e>
20023404:	462a      	mov	r2, r5
20023406:	2115      	movs	r1, #21
20023408:	4620      	mov	r0, r4
2002340a:	f7ff ff33 	bl	20023274 <HAL_FLASH_ISSUE_CMD>
2002340e:	4606      	mov	r6, r0
20023410:	b120      	cbz	r0, 2002341c <nor_qspi_switch+0x48>
20023412:	462a      	mov	r2, r5
20023414:	4629      	mov	r1, r5
20023416:	4620      	mov	r0, r4
20023418:	f7ff ff2c 	bl	20023274 <HAL_FLASH_ISSUE_CMD>
2002341c:	2102      	movs	r1, #2
2002341e:	4620      	mov	r0, r4
20023420:	f7ff fc82 	bl	20022d28 <HAL_FLASH_WRITE_WORD>
20023424:	2101      	movs	r1, #1
20023426:	4620      	mov	r0, r4
20023428:	f7ff fc85 	bl	20022d36 <HAL_FLASH_WRITE_DLEN>
2002342c:	2200      	movs	r2, #0
2002342e:	212b      	movs	r1, #43	@ 0x2b
20023430:	4620      	mov	r0, r4
20023432:	f7ff ff1f 	bl	20023274 <HAL_FLASH_ISSUE_CMD>
20023436:	b16e      	cbz	r6, 20023454 <nor_qspi_switch+0x80>
20023438:	2101      	movs	r1, #1
2002343a:	4620      	mov	r0, r4
2002343c:	f7ff fc7b 	bl	20022d36 <HAL_FLASH_WRITE_DLEN>
20023440:	2200      	movs	r2, #0
20023442:	2102      	movs	r1, #2
20023444:	4620      	mov	r0, r4
20023446:	f7ff ff15 	bl	20023274 <HAL_FLASH_ISSUE_CMD>
2002344a:	4620      	mov	r0, r4
2002344c:	f7ff fcc0 	bl	20022dd0 <HAL_FLASH_IS_PROG_DONE>
20023450:	2800      	cmp	r0, #0
20023452:	d0f5      	beq.n	20023440 <nor_qspi_switch+0x6c>
20023454:	bd70      	pop	{r4, r5, r6, pc}
20023456:	f7ff fc6e 	bl	20022d36 <HAL_FLASH_WRITE_DLEN>
2002345a:	462a      	mov	r2, r5
2002345c:	2102      	movs	r1, #2
2002345e:	4620      	mov	r0, r4
20023460:	f7ff ff08 	bl	20023274 <HAL_FLASH_ISSUE_CMD>
20023464:	4620      	mov	r0, r4
20023466:	f7ff fcbc 	bl	20022de2 <HAL_FLASH_READ32>
2002346a:	462a      	mov	r2, r5
2002346c:	2114      	movs	r1, #20
2002346e:	4620      	mov	r0, r4
20023470:	f7ff ff00 	bl	20023274 <HAL_FLASH_ISSUE_CMD>
20023474:	b910      	cbnz	r0, 2002347c <nor_qspi_switch+0xa8>
20023476:	4620      	mov	r0, r4
20023478:	f7ff fcb3 	bl	20022de2 <HAL_FLASH_READ32>
2002347c:	68e3      	ldr	r3, [r4, #12]
2002347e:	7a1b      	ldrb	r3, [r3, #8]
20023480:	b3ab      	cbz	r3, 200234ee <nor_qspi_switch+0x11a>
20023482:	2101      	movs	r1, #1
20023484:	f003 050f 	and.w	r5, r3, #15
20023488:	091b      	lsrs	r3, r3, #4
2002348a:	fa01 f303 	lsl.w	r3, r1, r3
2002348e:	b2db      	uxtb	r3, r3
20023490:	b10d      	cbz	r5, 20023496 <nor_qspi_switch+0xc2>
20023492:	461d      	mov	r5, r3
20023494:	2300      	movs	r3, #0
20023496:	2200      	movs	r2, #0
20023498:	2115      	movs	r1, #21
2002349a:	4620      	mov	r0, r4
2002349c:	ea43 2505 	orr.w	r5, r3, r5, lsl #8
200234a0:	f7ff fee8 	bl	20023274 <HAL_FLASH_ISSUE_CMD>
200234a4:	4606      	mov	r6, r0
200234a6:	b120      	cbz	r0, 200234b2 <nor_qspi_switch+0xde>
200234a8:	2200      	movs	r2, #0
200234aa:	4620      	mov	r0, r4
200234ac:	4611      	mov	r1, r2
200234ae:	f7ff fee1 	bl	20023274 <HAL_FLASH_ISSUE_CMD>
200234b2:	4629      	mov	r1, r5
200234b4:	4620      	mov	r0, r4
200234b6:	f7ff fc37 	bl	20022d28 <HAL_FLASH_WRITE_WORD>
200234ba:	2102      	movs	r1, #2
200234bc:	4620      	mov	r0, r4
200234be:	f7ff fc3a 	bl	20022d36 <HAL_FLASH_WRITE_DLEN>
200234c2:	2200      	movs	r2, #0
200234c4:	2103      	movs	r1, #3
200234c6:	4620      	mov	r0, r4
200234c8:	f7ff fed4 	bl	20023274 <HAL_FLASH_ISSUE_CMD>
200234cc:	2e00      	cmp	r6, #0
200234ce:	d0c1      	beq.n	20023454 <nor_qspi_switch+0x80>
200234d0:	2101      	movs	r1, #1
200234d2:	4620      	mov	r0, r4
200234d4:	f7ff fc2f 	bl	20022d36 <HAL_FLASH_WRITE_DLEN>
200234d8:	2200      	movs	r2, #0
200234da:	2102      	movs	r1, #2
200234dc:	4620      	mov	r0, r4
200234de:	f7ff fec9 	bl	20023274 <HAL_FLASH_ISSUE_CMD>
200234e2:	4620      	mov	r0, r4
200234e4:	f7ff fc74 	bl	20022dd0 <HAL_FLASH_IS_PROG_DONE>
200234e8:	2800      	cmp	r0, #0
200234ea:	d0f5      	beq.n	200234d8 <nor_qspi_switch+0x104>
200234ec:	e7b2      	b.n	20023454 <nor_qspi_switch+0x80>
200234ee:	2502      	movs	r5, #2
200234f0:	e7d1      	b.n	20023496 <nor_qspi_switch+0xc2>

200234f2 <HAL_FLASH_SET_QUAL_SPI>:
200234f2:	b538      	push	{r3, r4, r5, lr}
200234f4:	4604      	mov	r4, r0
200234f6:	460d      	mov	r5, r1
200234f8:	f7ff ff6c 	bl	200233d4 <nor_qspi_switch>
200234fc:	4629      	mov	r1, r5
200234fe:	4620      	mov	r0, r4
20023500:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
20023504:	f7ff be0e 	b.w	20023124 <HAL_FLASH_CONFIG_AHB_READ>

20023508 <HAL_FLASH_FADDR_SET_QSPI>:
20023508:	b538      	push	{r3, r4, r5, lr}
2002350a:	4604      	mov	r4, r0
2002350c:	460d      	mov	r5, r1
2002350e:	f7ff ff61 	bl	200233d4 <nor_qspi_switch>
20023512:	4629      	mov	r1, r5
20023514:	4620      	mov	r0, r4
20023516:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
2002351a:	f7ff be47 	b.w	200231ac <HAL_FLASH_CONFIG_FULL_AHB_READ>

2002351e <HAL_FLASH_GET_NOR_ID>:
2002351e:	b510      	push	{r4, lr}
20023520:	4604      	mov	r4, r0
20023522:	b140      	cbz	r0, 20023536 <HAL_FLASH_GET_NOR_ID+0x18>
20023524:	6802      	ldr	r2, [r0, #0]
20023526:	6a93      	ldr	r3, [r2, #40]	@ 0x28
20023528:	f36f 0315 	bfc	r3, #0, #22
2002352c:	f443 2380 	orr.w	r3, r3, #262144	@ 0x40000
20023530:	f043 0301 	orr.w	r3, r3, #1
20023534:	6293      	str	r3, [r2, #40]	@ 0x28
20023536:	2103      	movs	r1, #3
20023538:	4620      	mov	r0, r4
2002353a:	f7ff fbfc 	bl	20022d36 <HAL_FLASH_WRITE_DLEN>
2002353e:	2200      	movs	r2, #0
20023540:	219f      	movs	r1, #159	@ 0x9f
20023542:	4620      	mov	r0, r4
20023544:	f7ff fc1c 	bl	20022d80 <HAL_FLASH_SET_CMD>
20023548:	4620      	mov	r0, r4
2002354a:	f7ff fc4a 	bl	20022de2 <HAL_FLASH_READ32>
2002354e:	f020 407f 	bic.w	r0, r0, #4278190080	@ 0xff000000
20023552:	bd10      	pop	{r4, pc}

20023554 <HAL_FLASH_CLR_PROTECT>:
20023554:	b570      	push	{r4, r5, r6, lr}
20023556:	4604      	mov	r4, r0
20023558:	2800      	cmp	r0, #0
2002355a:	d03e      	beq.n	200235da <HAL_FLASH_CLR_PROTECT+0x86>
2002355c:	68c3      	ldr	r3, [r0, #12]
2002355e:	2101      	movs	r1, #1
20023560:	f893 5193 	ldrb.w	r5, [r3, #403]	@ 0x193
20023564:	2d00      	cmp	r5, #0
20023566:	d03b      	beq.n	200235e0 <HAL_FLASH_CLR_PROTECT+0x8c>
20023568:	f7ff fbe5 	bl	20022d36 <HAL_FLASH_WRITE_DLEN>
2002356c:	2200      	movs	r2, #0
2002356e:	2102      	movs	r1, #2
20023570:	4620      	mov	r0, r4
20023572:	f7ff fe7f 	bl	20023274 <HAL_FLASH_ISSUE_CMD>
20023576:	bb88      	cbnz	r0, 200235dc <HAL_FLASH_CLR_PROTECT+0x88>
20023578:	4620      	mov	r0, r4
2002357a:	f7ff fc32 	bl	20022de2 <HAL_FLASH_READ32>
2002357e:	b2c0      	uxtb	r0, r0
20023580:	68e3      	ldr	r3, [r4, #12]
20023582:	79dd      	ldrb	r5, [r3, #7]
20023584:	b10d      	cbz	r5, 2002358a <HAL_FLASH_CLR_PROTECT+0x36>
20023586:	ea20 0505 	bic.w	r5, r0, r5
2002358a:	2200      	movs	r2, #0
2002358c:	2115      	movs	r1, #21
2002358e:	4620      	mov	r0, r4
20023590:	f7ff fe70 	bl	20023274 <HAL_FLASH_ISSUE_CMD>
20023594:	4606      	mov	r6, r0
20023596:	b120      	cbz	r0, 200235a2 <HAL_FLASH_CLR_PROTECT+0x4e>
20023598:	2200      	movs	r2, #0
2002359a:	4620      	mov	r0, r4
2002359c:	4611      	mov	r1, r2
2002359e:	f7ff fe69 	bl	20023274 <HAL_FLASH_ISSUE_CMD>
200235a2:	4629      	mov	r1, r5
200235a4:	4620      	mov	r0, r4
200235a6:	f7ff fbbf 	bl	20022d28 <HAL_FLASH_WRITE_WORD>
200235aa:	2101      	movs	r1, #1
200235ac:	4620      	mov	r0, r4
200235ae:	f7ff fbc2 	bl	20022d36 <HAL_FLASH_WRITE_DLEN>
200235b2:	2200      	movs	r2, #0
200235b4:	2103      	movs	r1, #3
200235b6:	4620      	mov	r0, r4
200235b8:	f7ff fe5c 	bl	20023274 <HAL_FLASH_ISSUE_CMD>
200235bc:	b16e      	cbz	r6, 200235da <HAL_FLASH_CLR_PROTECT+0x86>
200235be:	2101      	movs	r1, #1
200235c0:	4620      	mov	r0, r4
200235c2:	f7ff fbb8 	bl	20022d36 <HAL_FLASH_WRITE_DLEN>
200235c6:	2200      	movs	r2, #0
200235c8:	2102      	movs	r1, #2
200235ca:	4620      	mov	r0, r4
200235cc:	f7ff fe52 	bl	20023274 <HAL_FLASH_ISSUE_CMD>
200235d0:	4620      	mov	r0, r4
200235d2:	f7ff fbfd 	bl	20022dd0 <HAL_FLASH_IS_PROG_DONE>
200235d6:	2800      	cmp	r0, #0
200235d8:	d0f5      	beq.n	200235c6 <HAL_FLASH_CLR_PROTECT+0x72>
200235da:	bd70      	pop	{r4, r5, r6, pc}
200235dc:	2000      	movs	r0, #0
200235de:	e7cf      	b.n	20023580 <HAL_FLASH_CLR_PROTECT+0x2c>
200235e0:	f7ff fba9 	bl	20022d36 <HAL_FLASH_WRITE_DLEN>
200235e4:	462a      	mov	r2, r5
200235e6:	2102      	movs	r1, #2
200235e8:	4620      	mov	r0, r4
200235ea:	f7ff fe43 	bl	20023274 <HAL_FLASH_ISSUE_CMD>
200235ee:	2800      	cmp	r0, #0
200235f0:	d13e      	bne.n	20023670 <HAL_FLASH_CLR_PROTECT+0x11c>
200235f2:	4620      	mov	r0, r4
200235f4:	f7ff fbf5 	bl	20022de2 <HAL_FLASH_READ32>
200235f8:	b2c6      	uxtb	r6, r0
200235fa:	2200      	movs	r2, #0
200235fc:	2114      	movs	r1, #20
200235fe:	4620      	mov	r0, r4
20023600:	f7ff fe38 	bl	20023274 <HAL_FLASH_ISSUE_CMD>
20023604:	b918      	cbnz	r0, 2002360e <HAL_FLASH_CLR_PROTECT+0xba>
20023606:	4620      	mov	r0, r4
20023608:	f7ff fbeb 	bl	20022de2 <HAL_FLASH_READ32>
2002360c:	b2c5      	uxtb	r5, r0
2002360e:	68e3      	ldr	r3, [r4, #12]
20023610:	79d9      	ldrb	r1, [r3, #7]
20023612:	b109      	cbz	r1, 20023618 <HAL_FLASH_CLR_PROTECT+0xc4>
20023614:	ea26 0101 	bic.w	r1, r6, r1
20023618:	2200      	movs	r2, #0
2002361a:	4620      	mov	r0, r4
2002361c:	ea41 2505 	orr.w	r5, r1, r5, lsl #8
20023620:	2115      	movs	r1, #21
20023622:	f7ff fe27 	bl	20023274 <HAL_FLASH_ISSUE_CMD>
20023626:	4606      	mov	r6, r0
20023628:	b120      	cbz	r0, 20023634 <HAL_FLASH_CLR_PROTECT+0xe0>
2002362a:	2200      	movs	r2, #0
2002362c:	4620      	mov	r0, r4
2002362e:	4611      	mov	r1, r2
20023630:	f7ff fe20 	bl	20023274 <HAL_FLASH_ISSUE_CMD>
20023634:	4629      	mov	r1, r5
20023636:	4620      	mov	r0, r4
20023638:	f7ff fb76 	bl	20022d28 <HAL_FLASH_WRITE_WORD>
2002363c:	2102      	movs	r1, #2
2002363e:	4620      	mov	r0, r4
20023640:	f7ff fb79 	bl	20022d36 <HAL_FLASH_WRITE_DLEN>
20023644:	2200      	movs	r2, #0
20023646:	2103      	movs	r1, #3
20023648:	4620      	mov	r0, r4
2002364a:	f7ff fe13 	bl	20023274 <HAL_FLASH_ISSUE_CMD>
2002364e:	2e00      	cmp	r6, #0
20023650:	d0c3      	beq.n	200235da <HAL_FLASH_CLR_PROTECT+0x86>
20023652:	2101      	movs	r1, #1
20023654:	4620      	mov	r0, r4
20023656:	f7ff fb6e 	bl	20022d36 <HAL_FLASH_WRITE_DLEN>
2002365a:	2200      	movs	r2, #0
2002365c:	2102      	movs	r1, #2
2002365e:	4620      	mov	r0, r4
20023660:	f7ff fe08 	bl	20023274 <HAL_FLASH_ISSUE_CMD>
20023664:	4620      	mov	r0, r4
20023666:	f7ff fbb3 	bl	20022dd0 <HAL_FLASH_IS_PROG_DONE>
2002366a:	2800      	cmp	r0, #0
2002366c:	d0f5      	beq.n	2002365a <HAL_FLASH_CLR_PROTECT+0x106>
2002366e:	e7b4      	b.n	200235da <HAL_FLASH_CLR_PROTECT+0x86>
20023670:	462e      	mov	r6, r5
20023672:	e7c2      	b.n	200235fa <HAL_FLASH_CLR_PROTECT+0xa6>

20023674 <HAL_QSPI_SET_CLK_INV>:
20023674:	b160      	cbz	r0, 20023690 <HAL_QSPI_SET_CLK_INV+0x1c>
20023676:	6800      	ldr	r0, [r0, #0]
20023678:	b150      	cbz	r0, 20023690 <HAL_QSPI_SET_CLK_INV+0x1c>
2002367a:	6d83      	ldr	r3, [r0, #88]	@ 0x58
2002367c:	0609      	lsls	r1, r1, #24
2002367e:	f023 7380 	bic.w	r3, r3, #16777216	@ 0x1000000
20023682:	f001 7180 	and.w	r1, r1, #16777216	@ 0x1000000
20023686:	f023 03ff 	bic.w	r3, r3, #255	@ 0xff
2002368a:	4311      	orrs	r1, r2
2002368c:	4319      	orrs	r1, r3
2002368e:	6581      	str	r1, [r0, #88]	@ 0x58
20023690:	4770      	bx	lr

20023692 <HAL_FLASH_RELEASE_DPD>:
20023692:	b538      	push	{r3, r4, r5, lr}
20023694:	4604      	mov	r4, r0
20023696:	b1d0      	cbz	r0, 200236ce <HAL_FLASH_RELEASE_DPD+0x3c>
20023698:	6803      	ldr	r3, [r0, #0]
2002369a:	21ab      	movs	r1, #171	@ 0xab
2002369c:	681d      	ldr	r5, [r3, #0]
2002369e:	f015 0501 	ands.w	r5, r5, #1
200236a2:	bf02      	ittt	eq
200236a4:	681a      	ldreq	r2, [r3, #0]
200236a6:	f042 0201 	orreq.w	r2, r2, #1
200236aa:	601a      	streq	r2, [r3, #0]
200236ac:	6802      	ldr	r2, [r0, #0]
200236ae:	6a93      	ldr	r3, [r2, #40]	@ 0x28
200236b0:	f36f 0315 	bfc	r3, #0, #22
200236b4:	f043 0301 	orr.w	r3, r3, #1
200236b8:	6293      	str	r3, [r2, #40]	@ 0x28
200236ba:	2200      	movs	r2, #0
200236bc:	f7ff fb60 	bl	20022d80 <HAL_FLASH_SET_CMD>
200236c0:	b925      	cbnz	r5, 200236cc <HAL_FLASH_RELEASE_DPD+0x3a>
200236c2:	6822      	ldr	r2, [r4, #0]
200236c4:	6813      	ldr	r3, [r2, #0]
200236c6:	f023 0301 	bic.w	r3, r3, #1
200236ca:	6013      	str	r3, [r2, #0]
200236cc:	bd38      	pop	{r3, r4, r5, pc}
200236ce:	2001      	movs	r0, #1
200236d0:	e7fc      	b.n	200236cc <HAL_FLASH_RELEASE_DPD+0x3a>

200236d2 <flash_handle_valid>:
200236d2:	b118      	cbz	r0, 200236dc <flash_handle_valid+0xa>
200236d4:	68c0      	ldr	r0, [r0, #12]
200236d6:	3800      	subs	r0, #0
200236d8:	bf18      	it	ne
200236da:	2001      	movne	r0, #1
200236dc:	4770      	bx	lr

200236de <HAL_GET_FLASH_MID>:
200236de:	2000      	movs	r0, #0
200236e0:	4770      	bx	lr

200236e2 <HAL_FLASH_DMA_START>:
200236e2:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
200236e6:	4688      	mov	r8, r1
200236e8:	4699      	mov	r9, r3
200236ea:	4604      	mov	r4, r0
200236ec:	2800      	cmp	r0, #0
200236ee:	d045      	beq.n	2002377c <HAL_FLASH_DMA_START+0x9a>
200236f0:	6883      	ldr	r3, [r0, #8]
200236f2:	2b00      	cmp	r3, #0
200236f4:	d042      	beq.n	2002377c <HAL_FLASH_DMA_START+0x9a>
200236f6:	f1b9 0f00 	cmp.w	r9, #0
200236fa:	d03f      	beq.n	2002377c <HAL_FLASH_DMA_START+0x9a>
200236fc:	6801      	ldr	r1, [r0, #0]
200236fe:	680f      	ldr	r7, [r1, #0]
20023700:	b332      	cbz	r2, 20023750 <HAL_FLASH_DMA_START+0x6e>
20023702:	2210      	movs	r2, #16
20023704:	609a      	str	r2, [r3, #8]
20023706:	2300      	movs	r3, #0
20023708:	6882      	ldr	r2, [r0, #8]
2002370a:	464e      	mov	r6, r9
2002370c:	6153      	str	r3, [r2, #20]
2002370e:	6882      	ldr	r2, [r0, #8]
20023710:	6193      	str	r3, [r2, #24]
20023712:	6882      	ldr	r2, [r0, #8]
20023714:	60d3      	str	r3, [r2, #12]
20023716:	2280      	movs	r2, #128	@ 0x80
20023718:	6883      	ldr	r3, [r0, #8]
2002371a:	611a      	str	r2, [r3, #16]
2002371c:	6805      	ldr	r5, [r0, #0]
2002371e:	3504      	adds	r5, #4
20023720:	68a0      	ldr	r0, [r4, #8]
20023722:	f7ff f84b 	bl	200227bc <HAL_DMA_DeInit>
20023726:	bb50      	cbnz	r0, 2002377e <HAL_FLASH_DMA_START+0x9c>
20023728:	68a0      	ldr	r0, [r4, #8]
2002372a:	f7fe ffe3 	bl	200226f4 <HAL_DMA_Init>
2002372e:	bb30      	cbnz	r0, 2002377e <HAL_FLASH_DMA_START+0x9c>
20023730:	6823      	ldr	r3, [r4, #0]
20023732:	f047 0720 	orr.w	r7, r7, #32
20023736:	601f      	str	r7, [r3, #0]
20023738:	6822      	ldr	r2, [r4, #0]
2002373a:	f109 33ff 	add.w	r3, r9, #4294967295
2002373e:	6253      	str	r3, [r2, #36]	@ 0x24
20023740:	4641      	mov	r1, r8
20023742:	4633      	mov	r3, r6
20023744:	462a      	mov	r2, r5
20023746:	68a0      	ldr	r0, [r4, #8]
20023748:	e8bd 47f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
2002374c:	f7ff b994 	b.w	20022a78 <HAL_DMA_Start>
20023750:	f44f 7100 	mov.w	r1, #512	@ 0x200
20023754:	609a      	str	r2, [r3, #8]
20023756:	6883      	ldr	r3, [r0, #8]
20023758:	f109 0603 	add.w	r6, r9, #3
2002375c:	6159      	str	r1, [r3, #20]
2002375e:	f44f 6100 	mov.w	r1, #2048	@ 0x800
20023762:	6883      	ldr	r3, [r0, #8]
20023764:	4645      	mov	r5, r8
20023766:	6199      	str	r1, [r3, #24]
20023768:	6883      	ldr	r3, [r0, #8]
2002376a:	08b6      	lsrs	r6, r6, #2
2002376c:	60da      	str	r2, [r3, #12]
2002376e:	2280      	movs	r2, #128	@ 0x80
20023770:	6883      	ldr	r3, [r0, #8]
20023772:	611a      	str	r2, [r3, #16]
20023774:	6803      	ldr	r3, [r0, #0]
20023776:	f103 0804 	add.w	r8, r3, #4
2002377a:	e7d1      	b.n	20023720 <HAL_FLASH_DMA_START+0x3e>
2002377c:	2001      	movs	r0, #1
2002377e:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}

20023782 <HAL_FLASH_DMA_WAIT_DONE>:
20023782:	b510      	push	{r4, lr}
20023784:	460a      	mov	r2, r1
20023786:	4604      	mov	r4, r0
20023788:	b170      	cbz	r0, 200237a8 <HAL_FLASH_DMA_WAIT_DONE+0x26>
2002378a:	6880      	ldr	r0, [r0, #8]
2002378c:	b160      	cbz	r0, 200237a8 <HAL_FLASH_DMA_WAIT_DONE+0x26>
2002378e:	6b61      	ldr	r1, [r4, #52]	@ 0x34
20023790:	b111      	cbz	r1, 20023798 <HAL_FLASH_DMA_WAIT_DONE+0x16>
20023792:	f04f 32ff 	mov.w	r2, #4294967295
20023796:	2100      	movs	r1, #0
20023798:	f7ff f870 	bl	2002287c <HAL_DMA_PollForTransfer>
2002379c:	6822      	ldr	r2, [r4, #0]
2002379e:	6813      	ldr	r3, [r2, #0]
200237a0:	f023 0320 	bic.w	r3, r3, #32
200237a4:	6013      	str	r3, [r2, #0]
200237a6:	bd10      	pop	{r4, pc}
200237a8:	2001      	movs	r0, #1
200237aa:	e7fc      	b.n	200237a6 <HAL_FLASH_DMA_WAIT_DONE+0x24>

200237ac <HAL_FLASH_ALIAS_CFG>:
200237ac:	b538      	push	{r3, r4, r5, lr}
200237ae:	461d      	mov	r5, r3
200237b0:	4604      	mov	r4, r0
200237b2:	b158      	cbz	r0, 200237cc <HAL_FLASH_ALIAS_CFG+0x20>
200237b4:	6903      	ldr	r3, [r0, #16]
200237b6:	428b      	cmp	r3, r1
200237b8:	bf98      	it	ls
200237ba:	1ac9      	subls	r1, r1, r3
200237bc:	f7ff fb68 	bl	20022e90 <HAL_FLASH_SET_ALIAS_RANGE>
200237c0:	4629      	mov	r1, r5
200237c2:	4620      	mov	r0, r4
200237c4:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
200237c8:	f7ff bb74 	b.w	20022eb4 <HAL_FLASH_SET_ALIAS_OFFSET>
200237cc:	bd38      	pop	{r3, r4, r5, pc}

200237ce <HAL_FLASH_NONCE_CFG>:
200237ce:	b570      	push	{r4, r5, r6, lr}
200237d0:	460c      	mov	r4, r1
200237d2:	4615      	mov	r5, r2
200237d4:	4619      	mov	r1, r3
200237d6:	4606      	mov	r6, r0
200237d8:	b180      	cbz	r0, 200237fc <HAL_FLASH_NONCE_CFG+0x2e>
200237da:	b17b      	cbz	r3, 200237fc <HAL_FLASH_NONCE_CFG+0x2e>
200237dc:	f7ff fb86 	bl	20022eec <HAL_FLASH_SET_NONCE>
200237e0:	6933      	ldr	r3, [r6, #16]
200237e2:	4630      	mov	r0, r6
200237e4:	42a3      	cmp	r3, r4
200237e6:	bf98      	it	ls
200237e8:	1ae4      	subls	r4, r4, r3
200237ea:	42ab      	cmp	r3, r5
200237ec:	bf98      	it	ls
200237ee:	1aed      	subls	r5, r5, r3
200237f0:	462a      	mov	r2, r5
200237f2:	4621      	mov	r1, r4
200237f4:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
200237f8:	f7ff bb66 	b.w	20022ec8 <HAL_FLASH_SET_CTR>
200237fc:	bd70      	pop	{r4, r5, r6, pc}

200237fe <HAL_FLASH_AES_CFG>:
200237fe:	b510      	push	{r4, lr}
20023800:	4604      	mov	r4, r0
20023802:	b148      	cbz	r0, 20023818 <HAL_FLASH_AES_CFG+0x1a>
20023804:	b101      	cbz	r1, 20023808 <HAL_FLASH_AES_CFG+0xa>
20023806:	2101      	movs	r1, #1
20023808:	f7ff fb7e 	bl	20022f08 <HAL_FLASH_SET_AES>
2002380c:	4620      	mov	r0, r4
2002380e:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
20023812:	2101      	movs	r1, #1
20023814:	f7ff bb87 	b.w	20022f26 <HAL_FLASH_ENABLE_AES>
20023818:	bd10      	pop	{r4, pc}

2002381a <nand_read_id>:
2002381a:	b510      	push	{r4, lr}
2002381c:	460b      	mov	r3, r1
2002381e:	4604      	mov	r4, r0
20023820:	b086      	sub	sp, #24
20023822:	b320      	cbz	r0, 2002386e <nand_read_id+0x54>
20023824:	2908      	cmp	r1, #8
20023826:	f04f 0100 	mov.w	r1, #0
2002382a:	f04f 0201 	mov.w	r2, #1
2002382e:	bf83      	ittte	hi
20023830:	460b      	movhi	r3, r1
20023832:	e9cd 1202 	strdhi	r1, r2, [sp, #8]
20023836:	e9cd 1100 	strdhi	r1, r1, [sp]
2002383a:	e9cd 1102 	strdls	r1, r1, [sp, #8]
2002383e:	bf8e      	itee	hi
20023840:	4619      	movhi	r1, r3
20023842:	e9cd 1100 	strdls	r1, r1, [sp]
20023846:	b25b      	sxtbls	r3, r3
20023848:	9204      	str	r2, [sp, #16]
2002384a:	f7ff fade 	bl	20022e0a <HAL_FLASH_MANUAL_CMD>
2002384e:	2103      	movs	r1, #3
20023850:	4620      	mov	r0, r4
20023852:	f7ff fa70 	bl	20022d36 <HAL_FLASH_WRITE_DLEN>
20023856:	2200      	movs	r2, #0
20023858:	219f      	movs	r1, #159	@ 0x9f
2002385a:	4620      	mov	r0, r4
2002385c:	f7ff fa90 	bl	20022d80 <HAL_FLASH_SET_CMD>
20023860:	4620      	mov	r0, r4
20023862:	f7ff fabe 	bl	20022de2 <HAL_FLASH_READ32>
20023866:	f020 407f 	bic.w	r0, r0, #4278190080	@ 0xff000000
2002386a:	b006      	add	sp, #24
2002386c:	bd10      	pop	{r4, pc}
2002386e:	20ff      	movs	r0, #255	@ 0xff
20023870:	e7fb      	b.n	2002386a <nand_read_id+0x50>

20023872 <HAL_NAND_CONF_ECC>:
20023872:	b538      	push	{r3, r4, r5, lr}
20023874:	460d      	mov	r5, r1
20023876:	4604      	mov	r4, r0
20023878:	b398      	cbz	r0, 200238e2 <HAL_NAND_CONF_ECC+0x70>
2002387a:	68c3      	ldr	r3, [r0, #12]
2002387c:	b38b      	cbz	r3, 200238e2 <HAL_NAND_CONF_ECC+0x70>
2002387e:	799a      	ldrb	r2, [r3, #6]
20023880:	b392      	cbz	r2, 200238e8 <HAL_NAND_CONF_ECC+0x76>
20023882:	7a9b      	ldrb	r3, [r3, #10]
20023884:	b383      	cbz	r3, 200238e8 <HAL_NAND_CONF_ECC+0x76>
20023886:	2101      	movs	r1, #1
20023888:	f7ff fa55 	bl	20022d36 <HAL_FLASH_WRITE_DLEN>
2002388c:	68e3      	ldr	r3, [r4, #12]
2002388e:	2102      	movs	r1, #2
20023890:	799a      	ldrb	r2, [r3, #6]
20023892:	4620      	mov	r0, r4
20023894:	f7ff fcee 	bl	20023274 <HAL_FLASH_ISSUE_CMD>
20023898:	4620      	mov	r0, r4
2002389a:	f7ff faa2 	bl	20022de2 <HAL_FLASH_READ32>
2002389e:	68e3      	ldr	r3, [r4, #12]
200238a0:	7a9b      	ldrb	r3, [r3, #10]
200238a2:	b1dd      	cbz	r5, 200238dc <HAL_NAND_CONF_ECC+0x6a>
200238a4:	ea43 0100 	orr.w	r1, r3, r0
200238a8:	4620      	mov	r0, r4
200238aa:	f7ff fa3d 	bl	20022d28 <HAL_FLASH_WRITE_WORD>
200238ae:	2101      	movs	r1, #1
200238b0:	4620      	mov	r0, r4
200238b2:	f7ff fa40 	bl	20022d36 <HAL_FLASH_WRITE_DLEN>
200238b6:	68e3      	ldr	r3, [r4, #12]
200238b8:	2103      	movs	r1, #3
200238ba:	799a      	ldrb	r2, [r3, #6]
200238bc:	4620      	mov	r0, r4
200238be:	f7ff fcd9 	bl	20023274 <HAL_FLASH_ISSUE_CMD>
200238c2:	68e3      	ldr	r3, [r4, #12]
200238c4:	f884 502d 	strb.w	r5, [r4, #45]	@ 0x2d
200238c8:	2102      	movs	r1, #2
200238ca:	799a      	ldrb	r2, [r3, #6]
200238cc:	4620      	mov	r0, r4
200238ce:	f7ff fcd1 	bl	20023274 <HAL_FLASH_ISSUE_CMD>
200238d2:	4620      	mov	r0, r4
200238d4:	f7ff fa85 	bl	20022de2 <HAL_FLASH_READ32>
200238d8:	2000      	movs	r0, #0
200238da:	bd38      	pop	{r3, r4, r5, pc}
200238dc:	ea20 0103 	bic.w	r1, r0, r3
200238e0:	e7e2      	b.n	200238a8 <HAL_NAND_CONF_ECC+0x36>
200238e2:	f04f 30ff 	mov.w	r0, #4294967295
200238e6:	e7f8      	b.n	200238da <HAL_NAND_CONF_ECC+0x68>
200238e8:	f06f 0001 	mvn.w	r0, #1
200238ec:	e7f5      	b.n	200238da <HAL_NAND_CONF_ECC+0x68>

200238ee <HAL_NAND_GET_ECC_STATUS>:
200238ee:	b510      	push	{r4, lr}
200238f0:	4604      	mov	r4, r0
200238f2:	b320      	cbz	r0, 2002393e <HAL_NAND_GET_ECC_STATUS+0x50>
200238f4:	68c2      	ldr	r2, [r0, #12]
200238f6:	b31a      	cbz	r2, 20023940 <HAL_NAND_GET_ECC_STATUS+0x52>
200238f8:	7913      	ldrb	r3, [r2, #4]
200238fa:	b31b      	cbz	r3, 20023944 <HAL_NAND_GET_ECC_STATUS+0x56>
200238fc:	79d3      	ldrb	r3, [r2, #7]
200238fe:	b30b      	cbz	r3, 20023944 <HAL_NAND_GET_ECC_STATUS+0x56>
20023900:	2101      	movs	r1, #1
20023902:	f7ff fa18 	bl	20022d36 <HAL_FLASH_WRITE_DLEN>
20023906:	68e3      	ldr	r3, [r4, #12]
20023908:	2102      	movs	r1, #2
2002390a:	791a      	ldrb	r2, [r3, #4]
2002390c:	4620      	mov	r0, r4
2002390e:	f7ff fcb1 	bl	20023274 <HAL_FLASH_ISSUE_CMD>
20023912:	4620      	mov	r0, r4
20023914:	f7ff fa65 	bl	20022de2 <HAL_FLASH_READ32>
20023918:	f894 202c 	ldrb.w	r2, [r4, #44]	@ 0x2c
2002391c:	2a3f      	cmp	r2, #63	@ 0x3f
2002391e:	ea4f 1312 	mov.w	r3, r2, lsr #4
20023922:	d804      	bhi.n	2002392e <HAL_NAND_GET_ECC_STATUS+0x40>
20023924:	2b01      	cmp	r3, #1
20023926:	d808      	bhi.n	2002393a <HAL_NAND_GET_ECC_STATUS+0x4c>
20023928:	f000 0030 	and.w	r0, r0, #48	@ 0x30
2002392c:	e007      	b.n	2002393e <HAL_NAND_GET_ECC_STATUS+0x50>
2002392e:	3b04      	subs	r3, #4
20023930:	2b01      	cmp	r3, #1
20023932:	d8f9      	bhi.n	20023928 <HAL_NAND_GET_ECC_STATUS+0x3a>
20023934:	f000 00f0 	and.w	r0, r0, #240	@ 0xf0
20023938:	e001      	b.n	2002393e <HAL_NAND_GET_ECC_STATUS+0x50>
2002393a:	f000 0070 	and.w	r0, r0, #112	@ 0x70
2002393e:	bd10      	pop	{r4, pc}
20023940:	4610      	mov	r0, r2
20023942:	e7fc      	b.n	2002393e <HAL_NAND_GET_ECC_STATUS+0x50>
20023944:	4618      	mov	r0, r3
20023946:	e7fa      	b.n	2002393e <HAL_NAND_GET_ECC_STATUS+0x50>

20023948 <HAL_NAND_CHECK_ECC>:
20023948:	4603      	mov	r3, r0
2002394a:	1108      	asrs	r0, r1, #4
2002394c:	b172      	cbz	r2, 2002396c <HAL_NAND_CHECK_ECC+0x24>
2002394e:	2b07      	cmp	r3, #7
20023950:	d80c      	bhi.n	2002396c <HAL_NAND_CHECK_ECC+0x24>
20023952:	e8df f003 	tbb	[pc, r3]
20023956:	0d04      	.short	0x0d04
20023958:	3f352e18 	.word	0x3f352e18
2002395c:	4c47      	.short	0x4c47
2002395e:	b128      	cbz	r0, 2002396c <HAL_NAND_CHECK_ECC+0x24>
20023960:	2801      	cmp	r0, #1
20023962:	6813      	ldr	r3, [r2, #0]
20023964:	d10a      	bne.n	2002397c <HAL_NAND_CHECK_ECC+0x34>
20023966:	f043 0301 	orr.w	r3, r3, #1
2002396a:	6013      	str	r3, [r2, #0]
2002396c:	2000      	movs	r0, #0
2002396e:	4770      	bx	lr
20023970:	f020 0302 	bic.w	r3, r0, #2
20023974:	2b01      	cmp	r3, #1
20023976:	d003      	beq.n	20023980 <HAL_NAND_CHECK_ECC+0x38>
20023978:	b1d0      	cbz	r0, 200239b0 <HAL_NAND_CHECK_ECC+0x68>
2002397a:	6813      	ldr	r3, [r2, #0]
2002397c:	4303      	orrs	r3, r0
2002397e:	e016      	b.n	200239ae <HAL_NAND_CHECK_ECC+0x66>
20023980:	6813      	ldr	r3, [r2, #0]
20023982:	4303      	orrs	r3, r0
20023984:	e7f1      	b.n	2002396a <HAL_NAND_CHECK_ECC+0x22>
20023986:	2805      	cmp	r0, #5
20023988:	d8f7      	bhi.n	2002397a <HAL_NAND_CHECK_ECC+0x32>
2002398a:	a301      	add	r3, pc, #4	@ (adr r3, 20023990 <HAL_NAND_CHECK_ECC+0x48>)
2002398c:	f853 f020 	ldr.w	pc, [r3, r0, lsl #2]
20023990:	2002396d 	.word	0x2002396d
20023994:	20023981 	.word	0x20023981
20023998:	200239a9 	.word	0x200239a9
2002399c:	20023981 	.word	0x20023981
200239a0:	2002397b 	.word	0x2002397b
200239a4:	20023981 	.word	0x20023981
200239a8:	6813      	ldr	r3, [r2, #0]
200239aa:	f043 0302 	orr.w	r3, r3, #2
200239ae:	6013      	str	r3, [r2, #0]
200239b0:	4770      	bx	lr
200239b2:	2800      	cmp	r0, #0
200239b4:	d0da      	beq.n	2002396c <HAL_NAND_CHECK_ECC+0x24>
200239b6:	1e43      	subs	r3, r0, #1
200239b8:	2b05      	cmp	r3, #5
200239ba:	6813      	ldr	r3, [r2, #0]
200239bc:	d9e1      	bls.n	20023982 <HAL_NAND_CHECK_ECC+0x3a>
200239be:	e7dd      	b.n	2002397c <HAL_NAND_CHECK_ECC+0x34>
200239c0:	07c3      	lsls	r3, r0, #31
200239c2:	f000 0103 	and.w	r1, r0, #3
200239c6:	d402      	bmi.n	200239ce <HAL_NAND_CHECK_ECC+0x86>
200239c8:	2900      	cmp	r1, #0
200239ca:	d0cf      	beq.n	2002396c <HAL_NAND_CHECK_ECC+0x24>
200239cc:	e7d5      	b.n	2002397a <HAL_NAND_CHECK_ECC+0x32>
200239ce:	6813      	ldr	r3, [r2, #0]
200239d0:	430b      	orrs	r3, r1
200239d2:	e7ca      	b.n	2002396a <HAL_NAND_CHECK_ECC+0x22>
200239d4:	2800      	cmp	r0, #0
200239d6:	d0c9      	beq.n	2002396c <HAL_NAND_CHECK_ECC+0x24>
200239d8:	6813      	ldr	r3, [r2, #0]
200239da:	2808      	cmp	r0, #8
200239dc:	ea43 0300 	orr.w	r3, r3, r0
200239e0:	dce5      	bgt.n	200239ae <HAL_NAND_CHECK_ECC+0x66>
200239e2:	e7c2      	b.n	2002396a <HAL_NAND_CHECK_ECC+0x22>
200239e4:	2800      	cmp	r0, #0
200239e6:	d0c1      	beq.n	2002396c <HAL_NAND_CHECK_ECC+0x24>
200239e8:	1e43      	subs	r3, r0, #1
200239ea:	2b01      	cmp	r3, #1
200239ec:	e7e5      	b.n	200239ba <HAL_NAND_CHECK_ECC+0x72>
200239ee:	2800      	cmp	r0, #0
200239f0:	d0bc      	beq.n	2002396c <HAL_NAND_CHECK_ECC+0x24>
200239f2:	1e43      	subs	r3, r0, #1
200239f4:	2b02      	cmp	r3, #2
200239f6:	e7e0      	b.n	200239ba <HAL_NAND_CHECK_ECC+0x72>

200239f8 <HAL_NAND_GET_ECC_RESULT>:
200239f8:	b510      	push	{r4, lr}
200239fa:	f890 302d 	ldrb.w	r3, [r0, #45]	@ 0x2d
200239fe:	4604      	mov	r4, r0
20023a00:	b90b      	cbnz	r3, 20023a06 <HAL_NAND_GET_ECC_RESULT+0xe>
20023a02:	2000      	movs	r0, #0
20023a04:	bd10      	pop	{r4, pc}
20023a06:	f7ff ff72 	bl	200238ee <HAL_NAND_GET_ECC_STATUS>
20023a0a:	4601      	mov	r1, r0
20023a0c:	2800      	cmp	r0, #0
20023a0e:	d0f8      	beq.n	20023a02 <HAL_NAND_GET_ECC_RESULT+0xa>
20023a10:	6862      	ldr	r2, [r4, #4]
20023a12:	6be0      	ldr	r0, [r4, #60]	@ 0x3c
20023a14:	f442 4200 	orr.w	r2, r2, #32768	@ 0x8000
20023a18:	6062      	str	r2, [r4, #4]
20023a1a:	b938      	cbnz	r0, 20023a2c <HAL_NAND_GET_ECC_RESULT+0x34>
20023a1c:	f894 002c 	ldrb.w	r0, [r4, #44]	@ 0x2c
20023a20:	1d22      	adds	r2, r4, #4
20023a22:	0900      	lsrs	r0, r0, #4
20023a24:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
20023a28:	f7ff bf8e 	b.w	20023948 <HAL_NAND_CHECK_ECC>
20023a2c:	f5b1 7f00 	cmp.w	r1, #512	@ 0x200
20023a30:	ea4f 1321 	mov.w	r3, r1, asr #4
20023a34:	db00      	blt.n	20023a38 <HAL_NAND_GET_ECC_RESULT+0x40>
20023a36:	e7fe      	b.n	20023a36 <HAL_NAND_GET_ECC_RESULT+0x3e>
20023a38:	6801      	ldr	r1, [r0, #0]
20023a3a:	40d9      	lsrs	r1, r3
20023a3c:	f011 0f01 	tst.w	r1, #1
20023a40:	bf18      	it	ne
20023a42:	4618      	movne	r0, r3
20023a44:	ea43 0302 	orr.w	r3, r3, r2
20023a48:	bf08      	it	eq
20023a4a:	2000      	moveq	r0, #0
20023a4c:	6063      	str	r3, [r4, #4]
20023a4e:	e7d9      	b.n	20023a04 <HAL_NAND_GET_ECC_RESULT+0xc>

20023a50 <HAL_NAND_EN_QUAL>:
20023a50:	b538      	push	{r3, r4, r5, lr}
20023a52:	460d      	mov	r5, r1
20023a54:	4604      	mov	r4, r0
20023a56:	b348      	cbz	r0, 20023aac <HAL_NAND_EN_QUAL+0x5c>
20023a58:	68c3      	ldr	r3, [r0, #12]
20023a5a:	b33b      	cbz	r3, 20023aac <HAL_NAND_EN_QUAL+0x5c>
20023a5c:	799a      	ldrb	r2, [r3, #6]
20023a5e:	b10a      	cbz	r2, 20023a64 <HAL_NAND_EN_QUAL+0x14>
20023a60:	7a1b      	ldrb	r3, [r3, #8]
20023a62:	b90b      	cbnz	r3, 20023a68 <HAL_NAND_EN_QUAL+0x18>
20023a64:	2000      	movs	r0, #0
20023a66:	bd38      	pop	{r3, r4, r5, pc}
20023a68:	2101      	movs	r1, #1
20023a6a:	f7ff f964 	bl	20022d36 <HAL_FLASH_WRITE_DLEN>
20023a6e:	68e3      	ldr	r3, [r4, #12]
20023a70:	2102      	movs	r1, #2
20023a72:	799a      	ldrb	r2, [r3, #6]
20023a74:	4620      	mov	r0, r4
20023a76:	f7ff fbfd 	bl	20023274 <HAL_FLASH_ISSUE_CMD>
20023a7a:	4620      	mov	r0, r4
20023a7c:	f7ff f9b1 	bl	20022de2 <HAL_FLASH_READ32>
20023a80:	68e3      	ldr	r3, [r4, #12]
20023a82:	7a1b      	ldrb	r3, [r3, #8]
20023a84:	b17d      	cbz	r5, 20023aa6 <HAL_NAND_EN_QUAL+0x56>
20023a86:	ea43 0100 	orr.w	r1, r3, r0
20023a8a:	4620      	mov	r0, r4
20023a8c:	f7ff f94c 	bl	20022d28 <HAL_FLASH_WRITE_WORD>
20023a90:	2101      	movs	r1, #1
20023a92:	4620      	mov	r0, r4
20023a94:	f7ff f94f 	bl	20022d36 <HAL_FLASH_WRITE_DLEN>
20023a98:	68e3      	ldr	r3, [r4, #12]
20023a9a:	2103      	movs	r1, #3
20023a9c:	4620      	mov	r0, r4
20023a9e:	799a      	ldrb	r2, [r3, #6]
20023aa0:	f7ff fbe8 	bl	20023274 <HAL_FLASH_ISSUE_CMD>
20023aa4:	e7de      	b.n	20023a64 <HAL_NAND_EN_QUAL+0x14>
20023aa6:	ea20 0103 	bic.w	r1, r0, r3
20023aaa:	e7ee      	b.n	20023a8a <HAL_NAND_EN_QUAL+0x3a>
20023aac:	f04f 30ff 	mov.w	r0, #4294967295
20023ab0:	e7d9      	b.n	20023a66 <HAL_NAND_EN_QUAL+0x16>

20023ab2 <nand_clear_status>:
20023ab2:	b510      	push	{r4, lr}
20023ab4:	4604      	mov	r4, r0
20023ab6:	2101      	movs	r1, #1
20023ab8:	f7ff f93d 	bl	20022d36 <HAL_FLASH_WRITE_DLEN>
20023abc:	2102      	movs	r1, #2
20023abe:	4620      	mov	r0, r4
20023ac0:	f7ff f932 	bl	20022d28 <HAL_FLASH_WRITE_WORD>
20023ac4:	68e3      	ldr	r3, [r4, #12]
20023ac6:	2103      	movs	r1, #3
20023ac8:	795a      	ldrb	r2, [r3, #5]
20023aca:	4620      	mov	r0, r4
20023acc:	f7ff fbd2 	bl	20023274 <HAL_FLASH_ISSUE_CMD>
20023ad0:	2100      	movs	r1, #0
20023ad2:	4620      	mov	r0, r4
20023ad4:	f7ff f928 	bl	20022d28 <HAL_FLASH_WRITE_WORD>
20023ad8:	68e3      	ldr	r3, [r4, #12]
20023ada:	2103      	movs	r1, #3
20023adc:	4620      	mov	r0, r4
20023ade:	795a      	ldrb	r2, [r3, #5]
20023ae0:	f7ff fbc8 	bl	20023274 <HAL_FLASH_ISSUE_CMD>
20023ae4:	2000      	movs	r0, #0
20023ae6:	bd10      	pop	{r4, pc}

20023ae8 <HAL_NAND_PAGE_SIZE>:
20023ae8:	b140      	cbz	r0, 20023afc <HAL_NAND_PAGE_SIZE+0x14>
20023aea:	f890 302c 	ldrb.w	r3, [r0, #44]	@ 0x2c
20023aee:	f013 0f01 	tst.w	r3, #1
20023af2:	bf14      	ite	ne
20023af4:	f44f 5080 	movne.w	r0, #4096	@ 0x1000
20023af8:	f44f 6000 	moveq.w	r0, #2048	@ 0x800
20023afc:	4770      	bx	lr

20023afe <HAL_NAND_READ_WITHOOB>:
20023afe:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
20023b02:	b085      	sub	sp, #20
20023b04:	460e      	mov	r6, r1
20023b06:	4691      	mov	r9, r2
20023b08:	461d      	mov	r5, r3
20023b0a:	4604      	mov	r4, r0
20023b0c:	9f0f      	ldr	r7, [sp, #60]	@ 0x3c
20023b0e:	b1b0      	cbz	r0, 20023b3e <HAL_NAND_READ_WITHOOB+0x40>
20023b10:	68c3      	ldr	r3, [r0, #12]
20023b12:	b1a3      	cbz	r3, 20023b3e <HAL_NAND_READ_WITHOOB+0x40>
20023b14:	69c3      	ldr	r3, [r0, #28]
20023b16:	b193      	cbz	r3, 20023b3e <HAL_NAND_READ_WITHOOB+0x40>
20023b18:	2f80      	cmp	r7, #128	@ 0x80
20023b1a:	d810      	bhi.n	20023b3e <HAL_NAND_READ_WITHOOB+0x40>
20023b1c:	f7ff ffe4 	bl	20023ae8 <HAL_NAND_PAGE_SIZE>
20023b20:	f100 3aff 	add.w	sl, r0, #4294967295
20023b24:	ea0a 0a01 	and.w	sl, sl, r1
20023b28:	eb0a 0305 	add.w	r3, sl, r5
20023b2c:	4283      	cmp	r3, r0
20023b2e:	4680      	mov	r8, r0
20023b30:	d907      	bls.n	20023b42 <HAL_NAND_READ_WITHOOB+0x44>
20023b32:	2002      	movs	r0, #2
20023b34:	6060      	str	r0, [r4, #4]
20023b36:	2000      	movs	r0, #0
20023b38:	b005      	add	sp, #20
20023b3a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
20023b3e:	2001      	movs	r0, #1
20023b40:	e7f8      	b.n	20023b34 <HAL_NAND_READ_WITHOOB+0x36>
20023b42:	2300      	movs	r3, #0
20023b44:	6063      	str	r3, [r4, #4]
20023b46:	6923      	ldr	r3, [r4, #16]
20023b48:	f04f 0b00 	mov.w	fp, #0
20023b4c:	428b      	cmp	r3, r1
20023b4e:	bf98      	it	ls
20023b50:	1ace      	subls	r6, r1, r3
20023b52:	fbb6 f2f0 	udiv	r2, r6, r0
20023b56:	2104      	movs	r1, #4
20023b58:	4620      	mov	r0, r4
20023b5a:	f7ff fb8b 	bl	20023274 <HAL_FLASH_ISSUE_CMD>
20023b5e:	2014      	movs	r0, #20
20023b60:	f7fe fac2 	bl	200220e8 <HAL_Delay_us_>
20023b64:	2101      	movs	r1, #1
20023b66:	4620      	mov	r0, r4
20023b68:	f7ff f8e5 	bl	20022d36 <HAL_FLASH_WRITE_DLEN>
20023b6c:	2005      	movs	r0, #5
20023b6e:	f7fe fabb 	bl	200220e8 <HAL_Delay_us_>
20023b72:	68e2      	ldr	r2, [r4, #12]
20023b74:	2102      	movs	r1, #2
20023b76:	7912      	ldrb	r2, [r2, #4]
20023b78:	4620      	mov	r0, r4
20023b7a:	f7ff fb7b 	bl	20023274 <HAL_FLASH_ISSUE_CMD>
20023b7e:	4620      	mov	r0, r4
20023b80:	f7ff f92f 	bl	20022de2 <HAL_FLASH_READ32>
20023b84:	07c1      	lsls	r1, r0, #31
20023b86:	d4f1      	bmi.n	20023b6c <HAL_NAND_READ_WITHOOB+0x6e>
20023b88:	f1bb 0f00 	cmp.w	fp, #0
20023b8c:	d102      	bne.n	20023b94 <HAL_NAND_READ_WITHOOB+0x96>
20023b8e:	f04f 0b01 	mov.w	fp, #1
20023b92:	e7eb      	b.n	20023b6c <HAL_NAND_READ_WITHOOB+0x6e>
20023b94:	4620      	mov	r0, r4
20023b96:	f7ff ff2f 	bl	200239f8 <HAL_NAND_GET_ECC_RESULT>
20023b9a:	b110      	cbz	r0, 20023ba2 <HAL_NAND_READ_WITHOOB+0xa4>
20023b9c:	f440 4000 	orr.w	r0, r0, #32768	@ 0x8000
20023ba0:	e7c8      	b.n	20023b34 <HAL_NAND_READ_WITHOOB+0x36>
20023ba2:	f894 2028 	ldrb.w	r2, [r4, #40]	@ 0x28
20023ba6:	68e3      	ldr	r3, [r4, #12]
20023ba8:	bbb2      	cbnz	r2, 20023c18 <HAL_NAND_READ_WITHOOB+0x11a>
20023baa:	f893 1046 	ldrb.w	r1, [r3, #70]	@ 0x46
20023bae:	4620      	mov	r0, r4
20023bb0:	f7ff f869 	bl	20022c86 <HAL_FLASH_SET_AHB_RCMD>
20023bb4:	68e0      	ldr	r0, [r4, #12]
20023bb6:	f990 c04e 	ldrsb.w	ip, [r0, #78]	@ 0x4e
20023bba:	f990 304a 	ldrsb.w	r3, [r0, #74]	@ 0x4a
20023bbe:	f990 2049 	ldrsb.w	r2, [r0, #73]	@ 0x49
20023bc2:	f990 1048 	ldrsb.w	r1, [r0, #72]	@ 0x48
20023bc6:	f8cd c00c 	str.w	ip, [sp, #12]
20023bca:	f990 c04d 	ldrsb.w	ip, [r0, #77]	@ 0x4d
20023bce:	f8cd c008 	str.w	ip, [sp, #8]
20023bd2:	f990 c04c 	ldrsb.w	ip, [r0, #76]	@ 0x4c
20023bd6:	f8cd c004 	str.w	ip, [sp, #4]
20023bda:	f990 004b 	ldrsb.w	r0, [r0, #75]	@ 0x4b
20023bde:	9000      	str	r0, [sp, #0]
20023be0:	4620      	mov	r0, r4
20023be2:	f7ff f85b 	bl	20022c9c <HAL_FLASH_CFG_AHB_RCMD>
20023be6:	03b2      	lsls	r2, r6, #14
20023be8:	f8d4 b010 	ldr.w	fp, [r4, #16]
20023bec:	d504      	bpl.n	20023bf8 <HAL_NAND_READ_WITHOOB+0xfa>
20023bee:	f894 202f 	ldrb.w	r2, [r4, #47]	@ 0x2f
20023bf2:	b10a      	cbz	r2, 20023bf8 <HAL_NAND_READ_WITHOOB+0xfa>
20023bf4:	f44b 5b80 	orr.w	fp, fp, #4096	@ 0x1000
20023bf8:	ea49 0205 	orr.w	r2, r9, r5
20023bfc:	ea42 020a 	orr.w	r2, r2, sl
20023c00:	0793      	lsls	r3, r2, #30
20023c02:	d102      	bne.n	20023c0a <HAL_NAND_READ_WITHOOB+0x10c>
20023c04:	1e6a      	subs	r2, r5, #1
20023c06:	2afe      	cmp	r2, #254	@ 0xfe
20023c08:	d821      	bhi.n	20023c4e <HAL_NAND_READ_WITHOOB+0x150>
20023c0a:	462a      	mov	r2, r5
20023c0c:	4648      	mov	r0, r9
20023c0e:	eb0b 010a 	add.w	r1, fp, sl
20023c12:	f006 ff25 	bl	2002aa60 <memcpy>
20023c16:	e01d      	b.n	20023c54 <HAL_NAND_READ_WITHOOB+0x156>
20023c18:	f893 106a 	ldrb.w	r1, [r3, #106]	@ 0x6a
20023c1c:	4620      	mov	r0, r4
20023c1e:	f7ff f832 	bl	20022c86 <HAL_FLASH_SET_AHB_RCMD>
20023c22:	68e0      	ldr	r0, [r4, #12]
20023c24:	f990 c072 	ldrsb.w	ip, [r0, #114]	@ 0x72
20023c28:	f990 306e 	ldrsb.w	r3, [r0, #110]	@ 0x6e
20023c2c:	f990 206d 	ldrsb.w	r2, [r0, #109]	@ 0x6d
20023c30:	f990 106c 	ldrsb.w	r1, [r0, #108]	@ 0x6c
20023c34:	f8cd c00c 	str.w	ip, [sp, #12]
20023c38:	f990 c071 	ldrsb.w	ip, [r0, #113]	@ 0x71
20023c3c:	f8cd c008 	str.w	ip, [sp, #8]
20023c40:	f990 c070 	ldrsb.w	ip, [r0, #112]	@ 0x70
20023c44:	f8cd c004 	str.w	ip, [sp, #4]
20023c48:	f990 006f 	ldrsb.w	r0, [r0, #111]	@ 0x6f
20023c4c:	e7c7      	b.n	20023bde <HAL_NAND_READ_WITHOOB+0xe0>
20023c4e:	f1b9 0f00 	cmp.w	r9, #0
20023c52:	d1da      	bne.n	20023c0a <HAL_NAND_READ_WITHOOB+0x10c>
20023c54:	9b0e      	ldr	r3, [sp, #56]	@ 0x38
20023c56:	b12b      	cbz	r3, 20023c64 <HAL_NAND_READ_WITHOOB+0x166>
20023c58:	463a      	mov	r2, r7
20023c5a:	4618      	mov	r0, r3
20023c5c:	eb0b 0108 	add.w	r1, fp, r8
20023c60:	f006 fefe 	bl	2002aa60 <memcpy>
20023c64:	1978      	adds	r0, r7, r5
20023c66:	e767      	b.n	20023b38 <HAL_NAND_READ_WITHOOB+0x3a>

20023c68 <HAL_NAND_BLOCK_SIZE>:
20023c68:	b508      	push	{r3, lr}
20023c6a:	4602      	mov	r2, r0
20023c6c:	f7ff ff3c 	bl	20023ae8 <HAL_NAND_PAGE_SIZE>
20023c70:	b128      	cbz	r0, 20023c7e <HAL_NAND_BLOCK_SIZE+0x16>
20023c72:	f892 302c 	ldrb.w	r3, [r2, #44]	@ 0x2c
20023c76:	079b      	lsls	r3, r3, #30
20023c78:	bf4c      	ite	mi
20023c7a:	01c0      	lslmi	r0, r0, #7
20023c7c:	0180      	lslpl	r0, r0, #6
20023c7e:	bd08      	pop	{r3, pc}

20023c80 <HAL_NAND_GET_BADBLK>:
20023c80:	b51f      	push	{r0, r1, r2, r3, r4, lr}
20023c82:	4604      	mov	r4, r0
20023c84:	b910      	cbnz	r0, 20023c8c <HAL_NAND_GET_BADBLK+0xc>
20023c86:	2000      	movs	r0, #0
20023c88:	b004      	add	sp, #16
20023c8a:	bd10      	pop	{r4, pc}
20023c8c:	6a03      	ldr	r3, [r0, #32]
20023c8e:	2b00      	cmp	r3, #0
20023c90:	d0f9      	beq.n	20023c86 <HAL_NAND_GET_BADBLK+0x6>
20023c92:	f7ff ffe9 	bl	20023c68 <HAL_NAND_BLOCK_SIZE>
20023c96:	2304      	movs	r3, #4
20023c98:	9301      	str	r3, [sp, #4]
20023c9a:	ab03      	add	r3, sp, #12
20023c9c:	9300      	str	r3, [sp, #0]
20023c9e:	2300      	movs	r3, #0
20023ca0:	4341      	muls	r1, r0
20023ca2:	461a      	mov	r2, r3
20023ca4:	4620      	mov	r0, r4
20023ca6:	f7ff ff2a 	bl	20023afe <HAL_NAND_READ_WITHOOB>
20023caa:	b140      	cbz	r0, 20023cbe <HAL_NAND_GET_BADBLK+0x3e>
20023cac:	f89d 300c 	ldrb.w	r3, [sp, #12]
20023cb0:	2bff      	cmp	r3, #255	@ 0xff
20023cb2:	d0e8      	beq.n	20023c86 <HAL_NAND_GET_BADBLK+0x6>
20023cb4:	9803      	ldr	r0, [sp, #12]
20023cb6:	2800      	cmp	r0, #0
20023cb8:	bf08      	it	eq
20023cba:	2001      	moveq	r0, #1
20023cbc:	e7e4      	b.n	20023c88 <HAL_NAND_GET_BADBLK+0x8>
20023cbe:	2001      	movs	r0, #1
20023cc0:	e7e2      	b.n	20023c88 <HAL_NAND_GET_BADBLK+0x8>

20023cc2 <HAL_QSPIEX_WRITE_PAGE>:
20023cc2:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
20023cc6:	b099      	sub	sp, #100	@ 0x64
20023cc8:	4604      	mov	r4, r0
20023cca:	460e      	mov	r6, r1
20023ccc:	4691      	mov	r9, r2
20023cce:	f7ff fd00 	bl	200236d2 <flash_handle_valid>
20023cd2:	b318      	cbz	r0, 20023d1c <HAL_QSPIEX_WRITE_PAGE+0x5a>
20023cd4:	2b00      	cmp	r3, #0
20023cd6:	f000 80d7 	beq.w	20023e88 <HAL_QSPIEX_WRITE_PAGE+0x1c6>
20023cda:	f5b3 7f80 	cmp.w	r3, #256	@ 0x100
20023cde:	bf28      	it	cs
20023ce0:	f44f 7380 	movcs.w	r3, #256	@ 0x100
20023ce4:	68a1      	ldr	r1, [r4, #8]
20023ce6:	461d      	mov	r5, r3
20023ce8:	6962      	ldr	r2, [r4, #20]
20023cea:	f894 3028 	ldrb.w	r3, [r4, #40]	@ 0x28
20023cee:	2900      	cmp	r1, #0
20023cf0:	d03b      	beq.n	20023d6a <HAL_QSPIEX_WRITE_PAGE+0xa8>
20023cf2:	f1b2 7f80 	cmp.w	r2, #16777216	@ 0x1000000
20023cf6:	d914      	bls.n	20023d22 <HAL_QSPIEX_WRITE_PAGE+0x60>
20023cf8:	2b02      	cmp	r3, #2
20023cfa:	bf14      	ite	ne
20023cfc:	2727      	movne	r7, #39	@ 0x27
20023cfe:	2728      	moveq	r7, #40	@ 0x28
20023d00:	4639      	mov	r1, r7
20023d02:	4620      	mov	r0, r4
20023d04:	f7ff fa8f 	bl	20023226 <HAL_FLASH_PRE_CMD>
20023d08:	4649      	mov	r1, r9
20023d0a:	462b      	mov	r3, r5
20023d0c:	2201      	movs	r2, #1
20023d0e:	4620      	mov	r0, r4
20023d10:	f7ff fce7 	bl	200236e2 <HAL_FLASH_DMA_START>
20023d14:	4601      	mov	r1, r0
20023d16:	b148      	cbz	r0, 20023d2c <HAL_QSPIEX_WRITE_PAGE+0x6a>
20023d18:	2500      	movs	r5, #0
20023d1a:	4628      	mov	r0, r5
20023d1c:	b019      	add	sp, #100	@ 0x64
20023d1e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
20023d22:	2b02      	cmp	r3, #2
20023d24:	bf14      	ite	ne
20023d26:	2716      	movne	r7, #22
20023d28:	2717      	moveq	r7, #23
20023d2a:	e7e9      	b.n	20023d00 <HAL_QSPIEX_WRITE_PAGE+0x3e>
20023d2c:	4632      	mov	r2, r6
20023d2e:	4620      	mov	r0, r4
20023d30:	f7ff faa0 	bl	20023274 <HAL_FLASH_ISSUE_CMD>
20023d34:	2101      	movs	r1, #1
20023d36:	4620      	mov	r0, r4
20023d38:	f7ff f807 	bl	20022d4a <HAL_FLASH_WRITE_DLEN2>
20023d3c:	2301      	movs	r3, #1
20023d3e:	4632      	mov	r2, r6
20023d40:	9300      	str	r3, [sp, #0]
20023d42:	4639      	mov	r1, r7
20023d44:	2302      	movs	r3, #2
20023d46:	4620      	mov	r0, r4
20023d48:	f7ff fac7 	bl	200232da <HAL_FLASH_ISSUE_CMD_SEQ>
20023d4c:	2800      	cmp	r0, #0
20023d4e:	d1e3      	bne.n	20023d18 <HAL_QSPIEX_WRITE_PAGE+0x56>
20023d50:	f44f 717a 	mov.w	r1, #1000	@ 0x3e8
20023d54:	4620      	mov	r0, r4
20023d56:	f7ff fd14 	bl	20023782 <HAL_FLASH_DMA_WAIT_DONE>
20023d5a:	2800      	cmp	r0, #0
20023d5c:	d1dc      	bne.n	20023d18 <HAL_QSPIEX_WRITE_PAGE+0x56>
20023d5e:	6822      	ldr	r2, [r4, #0]
20023d60:	6813      	ldr	r3, [r2, #0]
20023d62:	f023 0320 	bic.w	r3, r3, #32
20023d66:	6013      	str	r3, [r2, #0]
20023d68:	e7d7      	b.n	20023d1a <HAL_QSPIEX_WRITE_PAGE+0x58>
20023d6a:	f1b2 7f80 	cmp.w	r2, #16777216	@ 0x1000000
20023d6e:	f240 8082 	bls.w	20023e76 <HAL_QSPIEX_WRITE_PAGE+0x1b4>
20023d72:	2b02      	cmp	r3, #2
20023d74:	bf14      	ite	ne
20023d76:	2327      	movne	r3, #39	@ 0x27
20023d78:	2328      	moveq	r3, #40	@ 0x28
20023d7a:	462f      	mov	r7, r5
20023d7c:	f04f 0800 	mov.w	r8, #0
20023d80:	9303      	str	r3, [sp, #12]
20023d82:	f64f 7afc 	movw	sl, #65532	@ 0xfffc
20023d86:	2f40      	cmp	r7, #64	@ 0x40
20023d88:	bfd4      	ite	le
20023d8a:	ea0a 0a07 	andle.w	sl, sl, r7
20023d8e:	f00a 0a40 	andgt.w	sl, sl, #64	@ 0x40
20023d92:	f1ba 0f00 	cmp.w	sl, #0
20023d96:	d03f      	beq.n	20023e18 <HAL_QSPIEX_WRITE_PAGE+0x156>
20023d98:	2200      	movs	r2, #0
20023d9a:	4620      	mov	r0, r4
20023d9c:	4611      	mov	r1, r2
20023d9e:	f7ff fa69 	bl	20023274 <HAL_FLASH_ISSUE_CMD>
20023da2:	eb09 0308 	add.w	r3, r9, r8
20023da6:	f10d 0c20 	add.w	ip, sp, #32
20023daa:	f103 0e40 	add.w	lr, r3, #64	@ 0x40
20023dae:	4662      	mov	r2, ip
20023db0:	6818      	ldr	r0, [r3, #0]
20023db2:	6859      	ldr	r1, [r3, #4]
20023db4:	3308      	adds	r3, #8
20023db6:	c203      	stmia	r2!, {r0, r1}
20023db8:	4573      	cmp	r3, lr
20023dba:	4694      	mov	ip, r2
20023dbc:	d1f7      	bne.n	20023dae <HAL_QSPIEX_WRITE_PAGE+0xec>
20023dbe:	f04f 0b00 	mov.w	fp, #0
20023dc2:	ea4f 02aa 	mov.w	r2, sl, asr #2
20023dc6:	ab08      	add	r3, sp, #32
20023dc8:	f853 1b04 	ldr.w	r1, [r3], #4
20023dcc:	4620      	mov	r0, r4
20023dce:	9205      	str	r2, [sp, #20]
20023dd0:	9304      	str	r3, [sp, #16]
20023dd2:	f7fe ffa9 	bl	20022d28 <HAL_FLASH_WRITE_WORD>
20023dd6:	9a05      	ldr	r2, [sp, #20]
20023dd8:	f10b 0b01 	add.w	fp, fp, #1
20023ddc:	4593      	cmp	fp, r2
20023dde:	9b04      	ldr	r3, [sp, #16]
20023de0:	d1f2      	bne.n	20023dc8 <HAL_QSPIEX_WRITE_PAGE+0x106>
20023de2:	4651      	mov	r1, sl
20023de4:	4620      	mov	r0, r4
20023de6:	f7fe ffa6 	bl	20022d36 <HAL_FLASH_WRITE_DLEN>
20023dea:	4620      	mov	r0, r4
20023dec:	9903      	ldr	r1, [sp, #12]
20023dee:	eb06 0208 	add.w	r2, r6, r8
20023df2:	f7ff fa3f 	bl	20023274 <HAL_FLASH_ISSUE_CMD>
20023df6:	2101      	movs	r1, #1
20023df8:	4620      	mov	r0, r4
20023dfa:	f7fe ff9c 	bl	20022d36 <HAL_FLASH_WRITE_DLEN>
20023dfe:	2200      	movs	r2, #0
20023e00:	2102      	movs	r1, #2
20023e02:	4620      	mov	r0, r4
20023e04:	f7ff fa36 	bl	20023274 <HAL_FLASH_ISSUE_CMD>
20023e08:	4620      	mov	r0, r4
20023e0a:	f7fe ffe1 	bl	20022dd0 <HAL_FLASH_IS_PROG_DONE>
20023e0e:	2800      	cmp	r0, #0
20023e10:	d0f1      	beq.n	20023df6 <HAL_QSPIEX_WRITE_PAGE+0x134>
20023e12:	eba7 070a 	sub.w	r7, r7, sl
20023e16:	44d0      	add	r8, sl
20023e18:	1e7b      	subs	r3, r7, #1
20023e1a:	2b02      	cmp	r3, #2
20023e1c:	d830      	bhi.n	20023e80 <HAL_QSPIEX_WRITE_PAGE+0x1be>
20023e1e:	6923      	ldr	r3, [r4, #16]
20023e20:	4446      	add	r6, r8
20023e22:	4333      	orrs	r3, r6
20023e24:	681b      	ldr	r3, [r3, #0]
20023e26:	463a      	mov	r2, r7
20023e28:	eb09 0108 	add.w	r1, r9, r8
20023e2c:	a807      	add	r0, sp, #28
20023e2e:	9307      	str	r3, [sp, #28]
20023e30:	f006 fe16 	bl	2002aa60 <memcpy>
20023e34:	2200      	movs	r2, #0
20023e36:	4620      	mov	r0, r4
20023e38:	4611      	mov	r1, r2
20023e3a:	f7ff fa1b 	bl	20023274 <HAL_FLASH_ISSUE_CMD>
20023e3e:	9907      	ldr	r1, [sp, #28]
20023e40:	4620      	mov	r0, r4
20023e42:	f7fe ff71 	bl	20022d28 <HAL_FLASH_WRITE_WORD>
20023e46:	2104      	movs	r1, #4
20023e48:	4620      	mov	r0, r4
20023e4a:	f7fe ff74 	bl	20022d36 <HAL_FLASH_WRITE_DLEN>
20023e4e:	4632      	mov	r2, r6
20023e50:	4620      	mov	r0, r4
20023e52:	9903      	ldr	r1, [sp, #12]
20023e54:	f7ff fa0e 	bl	20023274 <HAL_FLASH_ISSUE_CMD>
20023e58:	2101      	movs	r1, #1
20023e5a:	4620      	mov	r0, r4
20023e5c:	f7fe ff6b 	bl	20022d36 <HAL_FLASH_WRITE_DLEN>
20023e60:	2200      	movs	r2, #0
20023e62:	2102      	movs	r1, #2
20023e64:	4620      	mov	r0, r4
20023e66:	f7ff fa05 	bl	20023274 <HAL_FLASH_ISSUE_CMD>
20023e6a:	4620      	mov	r0, r4
20023e6c:	f7fe ffb0 	bl	20022dd0 <HAL_FLASH_IS_PROG_DONE>
20023e70:	2800      	cmp	r0, #0
20023e72:	d0f1      	beq.n	20023e58 <HAL_QSPIEX_WRITE_PAGE+0x196>
20023e74:	e751      	b.n	20023d1a <HAL_QSPIEX_WRITE_PAGE+0x58>
20023e76:	2b02      	cmp	r3, #2
20023e78:	bf14      	ite	ne
20023e7a:	2316      	movne	r3, #22
20023e7c:	2317      	moveq	r3, #23
20023e7e:	e77c      	b.n	20023d7a <HAL_QSPIEX_WRITE_PAGE+0xb8>
20023e80:	2f00      	cmp	r7, #0
20023e82:	f73f af7e 	bgt.w	20023d82 <HAL_QSPIEX_WRITE_PAGE+0xc0>
20023e86:	e748      	b.n	20023d1a <HAL_QSPIEX_WRITE_PAGE+0x58>
20023e88:	4618      	mov	r0, r3
20023e8a:	e747      	b.n	20023d1c <HAL_QSPIEX_WRITE_PAGE+0x5a>

20023e8c <HAL_QSPIEX_SECT_ERASE>:
20023e8c:	b573      	push	{r0, r1, r4, r5, r6, lr}
20023e8e:	4604      	mov	r4, r0
20023e90:	460d      	mov	r5, r1
20023e92:	f7ff fc1e 	bl	200236d2 <flash_handle_valid>
20023e96:	b1e8      	cbz	r0, 20023ed4 <HAL_QSPIEX_SECT_ERASE+0x48>
20023e98:	6963      	ldr	r3, [r4, #20]
20023e9a:	460a      	mov	r2, r1
20023e9c:	f1b3 7f80 	cmp.w	r3, #16777216	@ 0x1000000
20023ea0:	f04f 0100 	mov.w	r1, #0
20023ea4:	4620      	mov	r0, r4
20023ea6:	bf94      	ite	ls
20023ea8:	261b      	movls	r6, #27
20023eaa:	2629      	movhi	r6, #41	@ 0x29
20023eac:	f7ff f9e2 	bl	20023274 <HAL_FLASH_ISSUE_CMD>
20023eb0:	2101      	movs	r1, #1
20023eb2:	4620      	mov	r0, r4
20023eb4:	f7fe ff49 	bl	20022d4a <HAL_FLASH_WRITE_DLEN2>
20023eb8:	2301      	movs	r3, #1
20023eba:	462a      	mov	r2, r5
20023ebc:	9300      	str	r3, [sp, #0]
20023ebe:	4631      	mov	r1, r6
20023ec0:	2302      	movs	r3, #2
20023ec2:	4620      	mov	r0, r4
20023ec4:	f7ff fa09 	bl	200232da <HAL_FLASH_ISSUE_CMD_SEQ>
20023ec8:	3800      	subs	r0, #0
20023eca:	bf18      	it	ne
20023ecc:	2001      	movne	r0, #1
20023ece:	4240      	negs	r0, r0
20023ed0:	b002      	add	sp, #8
20023ed2:	bd70      	pop	{r4, r5, r6, pc}
20023ed4:	f04f 30ff 	mov.w	r0, #4294967295
20023ed8:	e7fa      	b.n	20023ed0 <HAL_QSPIEX_SECT_ERASE+0x44>
	...

20023edc <HAL_QSPI_GET_SRC_CLK>:
20023edc:	b508      	push	{r3, lr}
20023ede:	b1e8      	cbz	r0, 20023f1c <HAL_QSPI_GET_SRC_CLK+0x40>
20023ee0:	6803      	ldr	r3, [r0, #0]
20023ee2:	4a0f      	ldr	r2, [pc, #60]	@ (20023f20 <HAL_QSPI_GET_SRC_CLK+0x44>)
20023ee4:	4293      	cmp	r3, r2
20023ee6:	d00c      	beq.n	20023f02 <HAL_QSPI_GET_SRC_CLK+0x26>
20023ee8:	f502 5280 	add.w	r2, r2, #4096	@ 0x1000
20023eec:	4293      	cmp	r3, r2
20023eee:	d115      	bne.n	20023f1c <HAL_QSPI_GET_SRC_CLK+0x40>
20023ef0:	2006      	movs	r0, #6
20023ef2:	f001 f8a5 	bl	20025040 <HAL_RCC_HCPU_GetClockSrc>
20023ef6:	2802      	cmp	r0, #2
20023ef8:	d105      	bne.n	20023f06 <HAL_QSPI_GET_SRC_CLK+0x2a>
20023efa:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
20023efe:	f001 b8d4 	b.w	200250aa <HAL_RCC_HCPU_GetDLL2Freq>
20023f02:	2004      	movs	r0, #4
20023f04:	e7f5      	b.n	20023ef2 <HAL_QSPI_GET_SRC_CLK+0x16>
20023f06:	2803      	cmp	r0, #3
20023f08:	d103      	bne.n	20023f12 <HAL_QSPI_GET_SRC_CLK+0x36>
20023f0a:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
20023f0e:	f001 b8cf 	b.w	200250b0 <HAL_RCC_HCPU_GetDLL3Freq>
20023f12:	2001      	movs	r0, #1
20023f14:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
20023f18:	f001 b92e 	b.w	20025178 <HAL_RCC_GetSysCLKFreq>
20023f1c:	2000      	movs	r0, #0
20023f1e:	bd08      	pop	{r3, pc}
20023f20:	50041000 	.word	0x50041000

20023f24 <HAL_QSPI_GET_CLK>:
20023f24:	b538      	push	{r3, r4, r5, lr}
20023f26:	4605      	mov	r5, r0
20023f28:	b908      	cbnz	r0, 20023f2e <HAL_QSPI_GET_CLK+0xa>
20023f2a:	2000      	movs	r0, #0
20023f2c:	bd38      	pop	{r3, r4, r5, pc}
20023f2e:	f7fe ff67 	bl	20022e00 <HAL_FLASH_GET_DIV>
20023f32:	4604      	mov	r4, r0
20023f34:	2800      	cmp	r0, #0
20023f36:	d0f8      	beq.n	20023f2a <HAL_QSPI_GET_CLK+0x6>
20023f38:	4628      	mov	r0, r5
20023f3a:	f7ff ffcf 	bl	20023edc <HAL_QSPI_GET_SRC_CLK>
20023f3e:	fbb0 f0f4 	udiv	r0, r0, r4
20023f42:	e7f3      	b.n	20023f2c <HAL_QSPI_GET_CLK+0x8>

20023f44 <HAL_QSPI_READ_ID>:
20023f44:	b138      	cbz	r0, 20023f56 <HAL_QSPI_READ_ID+0x12>
20023f46:	f890 302b 	ldrb.w	r3, [r0, #43]	@ 0x2b
20023f4a:	b113      	cbz	r3, 20023f52 <HAL_QSPI_READ_ID+0xe>
20023f4c:	2100      	movs	r1, #0
20023f4e:	f7ff bc64 	b.w	2002381a <nand_read_id>
20023f52:	f7ff bae4 	b.w	2002351e <HAL_FLASH_GET_NOR_ID>
20023f56:	20ff      	movs	r0, #255	@ 0xff
20023f58:	4770      	bx	lr

20023f5a <HAL_NOR_CFG_DTR>:
20023f5a:	b57f      	push	{r0, r1, r2, r3, r4, r5, r6, lr}
20023f5c:	4604      	mov	r4, r0
20023f5e:	460a      	mov	r2, r1
20023f60:	b351      	cbz	r1, 20023fb8 <HAL_NOR_CFG_DTR+0x5e>
20023f62:	68c5      	ldr	r5, [r0, #12]
20023f64:	f895 31ff 	ldrb.w	r3, [r5, #511]	@ 0x1ff
20023f68:	2b00      	cmp	r3, #0
20023f6a:	d03b      	beq.n	20023fe4 <HAL_NOR_CFG_DTR+0x8a>
20023f6c:	f890 3028 	ldrb.w	r3, [r0, #40]	@ 0x28
20023f70:	b3c3      	cbz	r3, 20023fe4 <HAL_NOR_CFG_DTR+0x8a>
20023f72:	f995 6207 	ldrsb.w	r6, [r5, #519]	@ 0x207
20023f76:	f995 2202 	ldrsb.w	r2, [r5, #514]	@ 0x202
20023f7a:	f995 3203 	ldrsb.w	r3, [r5, #515]	@ 0x203
20023f7e:	f995 1201 	ldrsb.w	r1, [r5, #513]	@ 0x201
20023f82:	9603      	str	r6, [sp, #12]
20023f84:	f995 6206 	ldrsb.w	r6, [r5, #518]	@ 0x206
20023f88:	9602      	str	r6, [sp, #8]
20023f8a:	f995 6205 	ldrsb.w	r6, [r5, #517]	@ 0x205
20023f8e:	9601      	str	r6, [sp, #4]
20023f90:	f995 5204 	ldrsb.w	r5, [r5, #516]	@ 0x204
20023f94:	9500      	str	r5, [sp, #0]
20023f96:	f7fe fe81 	bl	20022c9c <HAL_FLASH_CFG_AHB_RCMD>
20023f9a:	68e3      	ldr	r3, [r4, #12]
20023f9c:	4620      	mov	r0, r4
20023f9e:	f893 11ff 	ldrb.w	r1, [r3, #511]	@ 0x1ff
20023fa2:	f7fe fe70 	bl	20022c86 <HAL_FLASH_SET_AHB_RCMD>
20023fa6:	2101      	movs	r1, #1
20023fa8:	4620      	mov	r0, r4
20023faa:	f894 202d 	ldrb.w	r2, [r4, #45]	@ 0x2d
20023fae:	f7ff f881 	bl	200230b4 <HAL_MPI_CFG_DTR>
20023fb2:	2000      	movs	r0, #0
20023fb4:	b004      	add	sp, #16
20023fb6:	bd70      	pop	{r4, r5, r6, pc}
20023fb8:	f7ff f87c 	bl	200230b4 <HAL_MPI_CFG_DTR>
20023fbc:	6963      	ldr	r3, [r4, #20]
20023fbe:	f894 1028 	ldrb.w	r1, [r4, #40]	@ 0x28
20023fc2:	f1b3 7f80 	cmp.w	r3, #16777216	@ 0x1000000
20023fc6:	d906      	bls.n	20023fd6 <HAL_NOR_CFG_DTR+0x7c>
20023fc8:	b919      	cbnz	r1, 20023fd2 <HAL_NOR_CFG_DTR+0x78>
20023fca:	4620      	mov	r0, r4
20023fcc:	f7ff f8ee 	bl	200231ac <HAL_FLASH_CONFIG_FULL_AHB_READ>
20023fd0:	e7ef      	b.n	20023fb2 <HAL_NOR_CFG_DTR+0x58>
20023fd2:	2101      	movs	r1, #1
20023fd4:	e7f9      	b.n	20023fca <HAL_NOR_CFG_DTR+0x70>
20023fd6:	b919      	cbnz	r1, 20023fe0 <HAL_NOR_CFG_DTR+0x86>
20023fd8:	4620      	mov	r0, r4
20023fda:	f7ff f8a3 	bl	20023124 <HAL_FLASH_CONFIG_AHB_READ>
20023fde:	e7e8      	b.n	20023fb2 <HAL_NOR_CFG_DTR+0x58>
20023fe0:	2101      	movs	r1, #1
20023fe2:	e7f9      	b.n	20023fd8 <HAL_NOR_CFG_DTR+0x7e>
20023fe4:	2001      	movs	r0, #1
20023fe6:	e7e5      	b.n	20023fb4 <HAL_NOR_CFG_DTR+0x5a>

20023fe8 <HAL_NOR_DTR_CAL>:
20023fe8:	b510      	push	{r4, lr}
20023fea:	4604      	mov	r4, r0
20023fec:	b1f0      	cbz	r0, 2002402c <HAL_NOR_DTR_CAL+0x44>
20023fee:	6802      	ldr	r2, [r0, #0]
20023ff0:	2014      	movs	r0, #20
20023ff2:	f8d2 3094 	ldr.w	r3, [r2, #148]	@ 0x94
20023ff6:	f043 4300 	orr.w	r3, r3, #2147483648	@ 0x80000000
20023ffa:	f8c2 3094 	str.w	r3, [r2, #148]	@ 0x94
20023ffe:	f7fe f8d2 	bl	200221a6 <HAL_Delay_us>
20024002:	6823      	ldr	r3, [r4, #0]
20024004:	f8d3 2094 	ldr.w	r2, [r3, #148]	@ 0x94
20024008:	05d2      	lsls	r2, r2, #23
2002400a:	d5fb      	bpl.n	20024004 <HAL_NOR_DTR_CAL+0x1c>
2002400c:	f8d3 0094 	ldr.w	r0, [r3, #148]	@ 0x94
20024010:	f8d3 2094 	ldr.w	r2, [r3, #148]	@ 0x94
20024014:	b2c0      	uxtb	r0, r0
20024016:	f022 4200 	bic.w	r2, r2, #2147483648	@ 0x80000000
2002401a:	f8c3 2094 	str.w	r2, [r3, #148]	@ 0x94
2002401e:	f894 302d 	ldrb.w	r3, [r4, #45]	@ 0x2d
20024022:	f023 037f 	bic.w	r3, r3, #127	@ 0x7f
20024026:	4303      	orrs	r3, r0
20024028:	f884 302d 	strb.w	r3, [r4, #45]	@ 0x2d
2002402c:	bd10      	pop	{r4, pc}
	...

20024030 <HAL_FLASH_Init>:
20024030:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
20024034:	460e      	mov	r6, r1
20024036:	4690      	mov	r8, r2
20024038:	461f      	mov	r7, r3
2002403a:	4604      	mov	r4, r0
2002403c:	b087      	sub	sp, #28
2002403e:	2800      	cmp	r0, #0
20024040:	f000 80e5 	beq.w	2002420e <HAL_FLASH_Init+0x1de>
20024044:	2900      	cmp	r1, #0
20024046:	f000 80e2 	beq.w	2002420e <HAL_FLASH_Init+0x1de>
2002404a:	f7fe fdfb 	bl	20022c44 <HAL_QSPI_Init>
2002404e:	6820      	ldr	r0, [r4, #0]
20024050:	f7ff fb45 	bl	200236de <HAL_GET_FLASH_MID>
20024054:	6933      	ldr	r3, [r6, #16]
20024056:	2100      	movs	r1, #0
20024058:	f884 3044 	strb.w	r3, [r4, #68]	@ 0x44
2002405c:	68b3      	ldr	r3, [r6, #8]
2002405e:	4605      	mov	r5, r0
20024060:	64a3      	str	r3, [r4, #72]	@ 0x48
20024062:	68f3      	ldr	r3, [r6, #12]
20024064:	f884 102c 	strb.w	r1, [r4, #44]	@ 0x2c
20024068:	051b      	lsls	r3, r3, #20
2002406a:	64e3      	str	r3, [r4, #76]	@ 0x4c
2002406c:	2302      	movs	r3, #2
2002406e:	f884 3046 	strb.w	r3, [r4, #70]	@ 0x46
20024072:	6933      	ldr	r3, [r6, #16]
20024074:	f8c4 8008 	str.w	r8, [r4, #8]
20024078:	1e5a      	subs	r2, r3, #1
2002407a:	4253      	negs	r3, r2
2002407c:	4153      	adcs	r3, r2
2002407e:	f884 302b 	strb.w	r3, [r4, #43]	@ 0x2b
20024082:	f1b8 0f00 	cmp.w	r8, #0
20024086:	d058      	beq.n	2002413a <HAL_FLASH_Init+0x10a>
20024088:	2f00      	cmp	r7, #0
2002408a:	d056      	beq.n	2002413a <HAL_FLASH_Init+0x10a>
2002408c:	683b      	ldr	r3, [r7, #0]
2002408e:	f8c8 3000 	str.w	r3, [r8]
20024092:	68a3      	ldr	r3, [r4, #8]
20024094:	68fa      	ldr	r2, [r7, #12]
20024096:	605a      	str	r2, [r3, #4]
20024098:	2210      	movs	r2, #16
2002409a:	68a3      	ldr	r3, [r4, #8]
2002409c:	609a      	str	r2, [r3, #8]
2002409e:	2280      	movs	r2, #128	@ 0x80
200240a0:	68a3      	ldr	r3, [r4, #8]
200240a2:	60d9      	str	r1, [r3, #12]
200240a4:	68a3      	ldr	r3, [r4, #8]
200240a6:	611a      	str	r2, [r3, #16]
200240a8:	f44f 5280 	mov.w	r2, #4096	@ 0x1000
200240ac:	68a3      	ldr	r3, [r4, #8]
200240ae:	6159      	str	r1, [r3, #20]
200240b0:	68a3      	ldr	r3, [r4, #8]
200240b2:	6199      	str	r1, [r3, #24]
200240b4:	68a3      	ldr	r3, [r4, #8]
200240b6:	61d9      	str	r1, [r3, #28]
200240b8:	68a3      	ldr	r3, [r4, #8]
200240ba:	621a      	str	r2, [r3, #32]
200240bc:	68a3      	ldr	r3, [r4, #8]
200240be:	6259      	str	r1, [r3, #36]	@ 0x24
200240c0:	b1c0      	cbz	r0, 200240f4 <HAL_FLASH_Init+0xc4>
200240c2:	f06f 437f 	mvn.w	r3, #4278190080	@ 0xff000000
200240c6:	4298      	cmp	r0, r3
200240c8:	d014      	beq.n	200240f4 <HAL_FLASH_Init+0xc4>
200240ca:	2601      	movs	r6, #1
200240cc:	f894 302b 	ldrb.w	r3, [r4, #43]	@ 0x2b
200240d0:	2b00      	cmp	r3, #0
200240d2:	d13d      	bne.n	20024150 <HAL_FLASH_Init+0x120>
200240d4:	2e00      	cmp	r6, #0
200240d6:	d15a      	bne.n	2002418e <HAL_FLASH_Init+0x15e>
200240d8:	4620      	mov	r0, r4
200240da:	f7ff fada 	bl	20023692 <HAL_FLASH_RELEASE_DPD>
200240de:	4630      	mov	r0, r6
200240e0:	f7fe f861 	bl	200221a6 <HAL_Delay_us>
200240e4:	2032      	movs	r0, #50	@ 0x32
200240e6:	f7fe f85e 	bl	200221a6 <HAL_Delay_us>
200240ea:	4620      	mov	r0, r4
200240ec:	f7ff ff2a 	bl	20023f44 <HAL_QSPI_READ_ID>
200240f0:	4605      	mov	r5, r0
200240f2:	e04c      	b.n	2002418e <HAL_FLASH_Init+0x15e>
200240f4:	2101      	movs	r1, #1
200240f6:	4620      	mov	r0, r4
200240f8:	f7fe fe77 	bl	20022dea <HAL_FLASH_SET_TXSLOT>
200240fc:	4bb3      	ldr	r3, [pc, #716]	@ (200243cc <HAL_FLASH_Init+0x39c>)
200240fe:	69a2      	ldr	r2, [r4, #24]
20024100:	4620      	mov	r0, r4
20024102:	429a      	cmp	r2, r3
20024104:	f04f 0200 	mov.w	r2, #0
20024108:	bf8c      	ite	hi
2002410a:	2101      	movhi	r1, #1
2002410c:	4611      	movls	r1, r2
2002410e:	f7ff fab1 	bl	20023674 <HAL_QSPI_SET_CLK_INV>
20024112:	4620      	mov	r0, r4
20024114:	f89d 1038 	ldrb.w	r1, [sp, #56]	@ 0x38
20024118:	f7fe fe6e 	bl	20022df8 <HAL_FLASH_SET_CLK_rom>
2002411c:	f894 3045 	ldrb.w	r3, [r4, #69]	@ 0x45
20024120:	b12b      	cbz	r3, 2002412e <HAL_FLASH_Init+0xfe>
20024122:	2b01      	cmp	r3, #1
20024124:	d110      	bne.n	20024148 <HAL_FLASH_Init+0x118>
20024126:	2100      	movs	r1, #0
20024128:	4620      	mov	r0, r4
2002412a:	f7fe ff7d 	bl	20023028 <HAL_FLASH_SET_DUAL_MODE>
2002412e:	2101      	movs	r1, #1
20024130:	4620      	mov	r0, r4
20024132:	f7fe ff06 	bl	20022f42 <HAL_FLASH_ENABLE_QSPI>
20024136:	2600      	movs	r6, #0
20024138:	e7c8      	b.n	200240cc <HAL_FLASH_Init+0x9c>
2002413a:	2d00      	cmp	r5, #0
2002413c:	d0de      	beq.n	200240fc <HAL_FLASH_Init+0xcc>
2002413e:	f06f 437f 	mvn.w	r3, #4278190080	@ 0xff000000
20024142:	429d      	cmp	r5, r3
20024144:	d1c1      	bne.n	200240ca <HAL_FLASH_Init+0x9a>
20024146:	e7d9      	b.n	200240fc <HAL_FLASH_Init+0xcc>
20024148:	2b02      	cmp	r3, #2
2002414a:	d1f0      	bne.n	2002412e <HAL_FLASH_Init+0xfe>
2002414c:	2101      	movs	r1, #1
2002414e:	e7eb      	b.n	20024128 <HAL_FLASH_Init+0xf8>
20024150:	6822      	ldr	r2, [r4, #0]
20024152:	2700      	movs	r7, #0
20024154:	6893      	ldr	r3, [r2, #8]
20024156:	4639      	mov	r1, r7
20024158:	f043 7370 	orr.w	r3, r3, #62914560	@ 0x3c00000
2002415c:	6093      	str	r3, [r2, #8]
2002415e:	2301      	movs	r3, #1
20024160:	463a      	mov	r2, r7
20024162:	4620      	mov	r0, r4
20024164:	e9cd 7303 	strd	r7, r3, [sp, #12]
20024168:	e9cd 7701 	strd	r7, r7, [sp, #4]
2002416c:	463b      	mov	r3, r7
2002416e:	9700      	str	r7, [sp, #0]
20024170:	f7fe fe4b 	bl	20022e0a <HAL_FLASH_MANUAL_CMD>
20024174:	463a      	mov	r2, r7
20024176:	21ff      	movs	r1, #255	@ 0xff
20024178:	4620      	mov	r0, r4
2002417a:	f7fe fe01 	bl	20022d80 <HAL_FLASH_SET_CMD>
2002417e:	4638      	mov	r0, r7
20024180:	f7fe f811 	bl	200221a6 <HAL_Delay_us>
20024184:	20c8      	movs	r0, #200	@ 0xc8
20024186:	f7fe f80e 	bl	200221a6 <HAL_Delay_us>
2002418a:	2e00      	cmp	r6, #0
2002418c:	d0ad      	beq.n	200240ea <HAL_FLASH_Init+0xba>
2002418e:	f894 302b 	ldrb.w	r3, [r4, #43]	@ 0x2b
20024192:	b2ef      	uxtb	r7, r5
20024194:	f3c5 2807 	ubfx	r8, r5, #8, #8
20024198:	6425      	str	r5, [r4, #64]	@ 0x40
2002419a:	f3c5 4507 	ubfx	r5, r5, #16, #8
2002419e:	4642      	mov	r2, r8
200241a0:	4629      	mov	r1, r5
200241a2:	4638      	mov	r0, r7
200241a4:	b3ab      	cbz	r3, 20024212 <HAL_FLASH_Init+0x1e2>
200241a6:	f001 fa0d 	bl	200255c4 <spi_nand_get_cmd_by_id>
200241aa:	60e0      	str	r0, [r4, #12]
200241ac:	bba0      	cbnz	r0, 20024218 <HAL_FLASH_Init+0x1e8>
200241ae:	f894 302b 	ldrb.w	r3, [r4, #43]	@ 0x2b
200241b2:	b32b      	cbz	r3, 20024200 <HAL_FLASH_Init+0x1d0>
200241b4:	2108      	movs	r1, #8
200241b6:	4620      	mov	r0, r4
200241b8:	f7ff fb2f 	bl	2002381a <nand_read_id>
200241bc:	f3c0 2807 	ubfx	r8, r0, #8, #8
200241c0:	f3c0 4507 	ubfx	r5, r0, #16, #8
200241c4:	b2c7      	uxtb	r7, r0
200241c6:	6420      	str	r0, [r4, #64]	@ 0x40
200241c8:	4642      	mov	r2, r8
200241ca:	4629      	mov	r1, r5
200241cc:	4638      	mov	r0, r7
200241ce:	f001 f9f9 	bl	200255c4 <spi_nand_get_cmd_by_id>
200241d2:	60e0      	str	r0, [r4, #12]
200241d4:	bb00      	cbnz	r0, 20024218 <HAL_FLASH_Init+0x1e8>
200241d6:	210f      	movs	r1, #15
200241d8:	4620      	mov	r0, r4
200241da:	f7ff fb1e 	bl	2002381a <nand_read_id>
200241de:	f3c0 2807 	ubfx	r8, r0, #8, #8
200241e2:	f3c0 4507 	ubfx	r5, r0, #16, #8
200241e6:	b2c7      	uxtb	r7, r0
200241e8:	6420      	str	r0, [r4, #64]	@ 0x40
200241ea:	4642      	mov	r2, r8
200241ec:	4629      	mov	r1, r5
200241ee:	4638      	mov	r0, r7
200241f0:	f001 f9e8 	bl	200255c4 <spi_nand_get_cmd_by_id>
200241f4:	60e0      	str	r0, [r4, #12]
200241f6:	b978      	cbnz	r0, 20024218 <HAL_FLASH_Init+0x1e8>
200241f8:	f001 f9fc 	bl	200255f4 <spi_nand_get_default_ctable>
200241fc:	60e0      	str	r0, [r4, #12]
200241fe:	b958      	cbnz	r0, 20024218 <HAL_FLASH_Init+0x1e8>
20024200:	2100      	movs	r1, #0
20024202:	4620      	mov	r0, r4
20024204:	f7fe fe9d 	bl	20022f42 <HAL_FLASH_ENABLE_QSPI>
20024208:	2300      	movs	r3, #0
2002420a:	e9c4 3312 	strd	r3, r3, [r4, #72]	@ 0x48
2002420e:	2001      	movs	r0, #1
20024210:	e053      	b.n	200242ba <HAL_FLASH_Init+0x28a>
20024212:	f001 f979 	bl	20025508 <spi_flash_get_cmd_by_id>
20024216:	e7c8      	b.n	200241aa <HAL_FLASH_Init+0x17a>
20024218:	f894 302b 	ldrb.w	r3, [r4, #43]	@ 0x2b
2002421c:	4642      	mov	r2, r8
2002421e:	4629      	mov	r1, r5
20024220:	4638      	mov	r0, r7
20024222:	2b00      	cmp	r3, #0
20024224:	d04c      	beq.n	200242c0 <HAL_FLASH_Init+0x290>
20024226:	f001 f9f3 	bl	20025610 <spi_nand_get_size_by_id>
2002422a:	4642      	mov	r2, r8
2002422c:	4629      	mov	r1, r5
2002422e:	4681      	mov	r9, r0
20024230:	4638      	mov	r0, r7
20024232:	f001 f9f7 	bl	20025624 <spi_nand_get_plane_select_flag>
20024236:	4642      	mov	r2, r8
20024238:	4629      	mov	r1, r5
2002423a:	f884 002f 	strb.w	r0, [r4, #47]	@ 0x2f
2002423e:	4638      	mov	r0, r7
20024240:	f001 f9f9 	bl	20025636 <spi_nand_get_big_page_flag>
20024244:	4642      	mov	r2, r8
20024246:	4629      	mov	r1, r5
20024248:	f884 002c 	strb.w	r0, [r4, #44]	@ 0x2c
2002424c:	4638      	mov	r0, r7
2002424e:	f001 f9fb 	bl	20025648 <spi_nand_get_ecc_mode>
20024252:	f894 302c 	ldrb.w	r3, [r4, #44]	@ 0x2c
20024256:	4642      	mov	r2, r8
20024258:	ea43 1300 	orr.w	r3, r3, r0, lsl #4
2002425c:	4629      	mov	r1, r5
2002425e:	4638      	mov	r0, r7
20024260:	f884 302c 	strb.w	r3, [r4, #44]	@ 0x2c
20024264:	f001 f9c0 	bl	200255e8 <spi_nand_get_ext_cfg_by_id>
20024268:	63e0      	str	r0, [r4, #60]	@ 0x3c
2002426a:	f1b9 0f00 	cmp.w	r9, #0
2002426e:	d003      	beq.n	20024278 <HAL_FLASH_Init+0x248>
20024270:	f8c4 904c 	str.w	r9, [r4, #76]	@ 0x4c
20024274:	f8c4 9014 	str.w	r9, [r4, #20]
20024278:	f894 302b 	ldrb.w	r3, [r4, #43]	@ 0x2b
2002427c:	2b00      	cmp	r3, #0
2002427e:	f040 8084 	bne.w	2002438a <HAL_FLASH_Init+0x35a>
20024282:	2e00      	cmp	r6, #0
20024284:	d17e      	bne.n	20024384 <HAL_FLASH_Init+0x354>
20024286:	4620      	mov	r0, r4
20024288:	f7ff f964 	bl	20023554 <HAL_FLASH_CLR_PROTECT>
2002428c:	6963      	ldr	r3, [r4, #20]
2002428e:	f1b3 7f80 	cmp.w	r3, #16777216	@ 0x1000000
20024292:	d948      	bls.n	20024326 <HAL_FLASH_Init+0x2f6>
20024294:	4632      	mov	r2, r6
20024296:	2121      	movs	r1, #33	@ 0x21
20024298:	4620      	mov	r0, r4
2002429a:	f7fe ffeb 	bl	20023274 <HAL_FLASH_ISSUE_CMD>
2002429e:	f894 3028 	ldrb.w	r3, [r4, #40]	@ 0x28
200242a2:	bb0b      	cbnz	r3, 200242e8 <HAL_FLASH_Init+0x2b8>
200242a4:	4631      	mov	r1, r6
200242a6:	4620      	mov	r0, r4
200242a8:	f884 602e 	strb.w	r6, [r4, #46]	@ 0x2e
200242ac:	f7ff f92c 	bl	20023508 <HAL_FLASH_FADDR_SET_QSPI>
200242b0:	2107      	movs	r1, #7
200242b2:	4620      	mov	r0, r4
200242b4:	f7fe fea0 	bl	20022ff8 <HAL_FLASH_SET_ROW_BOUNDARY>
200242b8:	2000      	movs	r0, #0
200242ba:	b007      	add	sp, #28
200242bc:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
200242c0:	f001 f936 	bl	20025530 <spi_flash_get_size_by_id>
200242c4:	4642      	mov	r2, r8
200242c6:	4629      	mov	r1, r5
200242c8:	4681      	mov	r9, r0
200242ca:	4638      	mov	r0, r7
200242cc:	f001 f944 	bl	20025558 <spi_flash_get_otp_base>
200242d0:	4642      	mov	r2, r8
200242d2:	63a0      	str	r0, [r4, #56]	@ 0x38
200242d4:	4629      	mov	r1, r5
200242d6:	4638      	mov	r0, r7
200242d8:	f001 f8ee 	bl	200254b8 <spi_nor_get_ext_cfg_by_id>
200242dc:	63e0      	str	r0, [r4, #60]	@ 0x3c
200242de:	2800      	cmp	r0, #0
200242e0:	d0c3      	beq.n	2002426a <HAL_FLASH_Init+0x23a>
200242e2:	6803      	ldr	r3, [r0, #0]
200242e4:	63a3      	str	r3, [r4, #56]	@ 0x38
200242e6:	e7c0      	b.n	2002426a <HAL_FLASH_Init+0x23a>
200242e8:	2101      	movs	r1, #1
200242ea:	4620      	mov	r0, r4
200242ec:	f7ff f90c 	bl	20023508 <HAL_FLASH_FADDR_SET_QSPI>
200242f0:	f894 902e 	ldrb.w	r9, [r4, #46]	@ 0x2e
200242f4:	f1b9 0f01 	cmp.w	r9, #1
200242f8:	d1da      	bne.n	200242b0 <HAL_FLASH_Init+0x280>
200242fa:	4642      	mov	r2, r8
200242fc:	4629      	mov	r1, r5
200242fe:	4638      	mov	r0, r7
20024300:	f001 f920 	bl	20025544 <spi_flash_is_support_dtr>
20024304:	b138      	cbz	r0, 20024316 <HAL_FLASH_Init+0x2e6>
20024306:	4620      	mov	r0, r4
20024308:	f7ff fe6e 	bl	20023fe8 <HAL_NOR_DTR_CAL>
2002430c:	4649      	mov	r1, r9
2002430e:	4620      	mov	r0, r4
20024310:	f7ff fe23 	bl	20023f5a <HAL_NOR_CFG_DTR>
20024314:	e7cc      	b.n	200242b0 <HAL_FLASH_Init+0x280>
20024316:	4632      	mov	r2, r6
20024318:	4631      	mov	r1, r6
2002431a:	4620      	mov	r0, r4
2002431c:	f7fe feca 	bl	200230b4 <HAL_MPI_CFG_DTR>
20024320:	f884 602e 	strb.w	r6, [r4, #46]	@ 0x2e
20024324:	e7c4      	b.n	200242b0 <HAL_FLASH_Init+0x280>
20024326:	f894 3028 	ldrb.w	r3, [r4, #40]	@ 0x28
2002432a:	b933      	cbnz	r3, 2002433a <HAL_FLASH_Init+0x30a>
2002432c:	4631      	mov	r1, r6
2002432e:	4620      	mov	r0, r4
20024330:	f884 602e 	strb.w	r6, [r4, #46]	@ 0x2e
20024334:	f7ff f8dd 	bl	200234f2 <HAL_FLASH_SET_QUAL_SPI>
20024338:	e7be      	b.n	200242b8 <HAL_FLASH_Init+0x288>
2002433a:	2101      	movs	r1, #1
2002433c:	4620      	mov	r0, r4
2002433e:	f7ff f8d8 	bl	200234f2 <HAL_FLASH_SET_QUAL_SPI>
20024342:	f894 902e 	ldrb.w	r9, [r4, #46]	@ 0x2e
20024346:	f1b9 0f01 	cmp.w	r9, #1
2002434a:	d115      	bne.n	20024378 <HAL_FLASH_Init+0x348>
2002434c:	4642      	mov	r2, r8
2002434e:	4629      	mov	r1, r5
20024350:	4638      	mov	r0, r7
20024352:	f001 f8f7 	bl	20025544 <spi_flash_is_support_dtr>
20024356:	b138      	cbz	r0, 20024368 <HAL_FLASH_Init+0x338>
20024358:	4620      	mov	r0, r4
2002435a:	f7ff fe45 	bl	20023fe8 <HAL_NOR_DTR_CAL>
2002435e:	4649      	mov	r1, r9
20024360:	4620      	mov	r0, r4
20024362:	f7ff fdfa 	bl	20023f5a <HAL_NOR_CFG_DTR>
20024366:	e7a7      	b.n	200242b8 <HAL_FLASH_Init+0x288>
20024368:	4632      	mov	r2, r6
2002436a:	4631      	mov	r1, r6
2002436c:	4620      	mov	r0, r4
2002436e:	f7fe fea1 	bl	200230b4 <HAL_MPI_CFG_DTR>
20024372:	f884 602e 	strb.w	r6, [r4, #46]	@ 0x2e
20024376:	e79f      	b.n	200242b8 <HAL_FLASH_Init+0x288>
20024378:	4632      	mov	r2, r6
2002437a:	4631      	mov	r1, r6
2002437c:	4620      	mov	r0, r4
2002437e:	f7fe fe99 	bl	200230b4 <HAL_MPI_CFG_DTR>
20024382:	e799      	b.n	200242b8 <HAL_FLASH_Init+0x288>
20024384:	f884 302e 	strb.w	r3, [r4, #46]	@ 0x2e
20024388:	e796      	b.n	200242b8 <HAL_FLASH_Init+0x288>
2002438a:	2101      	movs	r1, #1
2002438c:	4620      	mov	r0, r4
2002438e:	f7fe fcd2 	bl	20022d36 <HAL_FLASH_WRITE_DLEN>
20024392:	68e3      	ldr	r3, [r4, #12]
20024394:	2102      	movs	r1, #2
20024396:	791a      	ldrb	r2, [r3, #4]
20024398:	4620      	mov	r0, r4
2002439a:	f7fe ff6b 	bl	20023274 <HAL_FLASH_ISSUE_CMD>
2002439e:	4620      	mov	r0, r4
200243a0:	f7fe fd1f 	bl	20022de2 <HAL_FLASH_READ32>
200243a4:	4605      	mov	r5, r0
200243a6:	200a      	movs	r0, #10
200243a8:	f7fd fefd 	bl	200221a6 <HAL_Delay_us>
200243ac:	07eb      	lsls	r3, r5, #31
200243ae:	d4ec      	bmi.n	2002438a <HAL_FLASH_Init+0x35a>
200243b0:	4620      	mov	r0, r4
200243b2:	f7ff fb7e 	bl	20023ab2 <nand_clear_status>
200243b6:	f894 3028 	ldrb.w	r3, [r4, #40]	@ 0x28
200243ba:	2b02      	cmp	r3, #2
200243bc:	f47f af7c 	bne.w	200242b8 <HAL_FLASH_Init+0x288>
200243c0:	2101      	movs	r1, #1
200243c2:	4620      	mov	r0, r4
200243c4:	f7ff fb44 	bl	20023a50 <HAL_NAND_EN_QUAL>
200243c8:	e776      	b.n	200242b8 <HAL_FLASH_Init+0x288>
200243ca:	bf00      	nop
200243cc:	05f5e100 	.word	0x05f5e100

200243d0 <HAL_Delay_us_psram>:
200243d0:	b51f      	push	{r0, r1, r2, r3, r4, lr}
200243d2:	9001      	str	r0, [sp, #4]
200243d4:	9b01      	ldr	r3, [sp, #4]
200243d6:	4c11      	ldr	r4, [pc, #68]	@ (2002441c <HAL_Delay_us_psram+0x4c>)
200243d8:	b10b      	cbz	r3, 200243de <HAL_Delay_us_psram+0xe>
200243da:	6820      	ldr	r0, [r4, #0]
200243dc:	b940      	cbnz	r0, 200243f0 <HAL_Delay_us_psram+0x20>
200243de:	2000      	movs	r0, #0
200243e0:	f000 feda 	bl	20025198 <HAL_RCC_GetHCLKFreq>
200243e4:	4b0e      	ldr	r3, [pc, #56]	@ (20024420 <HAL_Delay_us_psram+0x50>)
200243e6:	fbb0 f0f3 	udiv	r0, r0, r3
200243ea:	9b01      	ldr	r3, [sp, #4]
200243ec:	6020      	str	r0, [r4, #0]
200243ee:	b19b      	cbz	r3, 20024418 <HAL_Delay_us_psram+0x48>
200243f0:	2830      	cmp	r0, #48	@ 0x30
200243f2:	bf82      	ittt	hi
200243f4:	9b01      	ldrhi	r3, [sp, #4]
200243f6:	f103 33ff 	addhi.w	r3, r3, #4294967295
200243fa:	9301      	strhi	r3, [sp, #4]
200243fc:	9b01      	ldr	r3, [sp, #4]
200243fe:	b15b      	cbz	r3, 20024418 <HAL_Delay_us_psram+0x48>
20024400:	2205      	movs	r2, #5
20024402:	9b01      	ldr	r3, [sp, #4]
20024404:	3b01      	subs	r3, #1
20024406:	4343      	muls	r3, r0
20024408:	fbb3 f3f2 	udiv	r3, r3, r2
2002440c:	9303      	str	r3, [sp, #12]
2002440e:	9b03      	ldr	r3, [sp, #12]
20024410:	1e5a      	subs	r2, r3, #1
20024412:	9203      	str	r2, [sp, #12]
20024414:	2b00      	cmp	r3, #0
20024416:	d1fa      	bne.n	2002440e <HAL_Delay_us_psram+0x3e>
20024418:	b004      	add	sp, #16
2002441a:	bd10      	pop	{r4, pc}
2002441c:	2004cc2c 	.word	0x2004cc2c
20024420:	000f4240 	.word	0x000f4240

20024424 <HAL_MPI_OPSRAM_CAL_DELAY>:
20024424:	b570      	push	{r4, r5, r6, lr}
20024426:	460e      	mov	r6, r1
20024428:	4615      	mov	r5, r2
2002442a:	4604      	mov	r4, r0
2002442c:	b358      	cbz	r0, 20024486 <HAL_MPI_OPSRAM_CAL_DELAY+0x62>
2002442e:	2202      	movs	r2, #2
20024430:	6803      	ldr	r3, [r0, #0]
20024432:	60da      	str	r2, [r3, #12]
20024434:	6802      	ldr	r2, [r0, #0]
20024436:	6d93      	ldr	r3, [r2, #88]	@ 0x58
20024438:	f023 7300 	bic.w	r3, r3, #33554432	@ 0x2000000
2002443c:	6593      	str	r3, [r2, #88]	@ 0x58
2002443e:	6802      	ldr	r2, [r0, #0]
20024440:	2000      	movs	r0, #0
20024442:	f8d2 3094 	ldr.w	r3, [r2, #148]	@ 0x94
20024446:	f043 4300 	orr.w	r3, r3, #2147483648	@ 0x80000000
2002444a:	f8c2 3094 	str.w	r3, [r2, #148]	@ 0x94
2002444e:	f7ff ffbf 	bl	200243d0 <HAL_Delay_us_psram>
20024452:	2014      	movs	r0, #20
20024454:	f7ff ffbc 	bl	200243d0 <HAL_Delay_us_psram>
20024458:	6820      	ldr	r0, [r4, #0]
2002445a:	f8d0 3094 	ldr.w	r3, [r0, #148]	@ 0x94
2002445e:	05db      	lsls	r3, r3, #23
20024460:	d5fb      	bpl.n	2002445a <HAL_MPI_OPSRAM_CAL_DELAY+0x36>
20024462:	f8d0 3094 	ldr.w	r3, [r0, #148]	@ 0x94
20024466:	f8d0 2094 	ldr.w	r2, [r0, #148]	@ 0x94
2002446a:	b2db      	uxtb	r3, r3
2002446c:	f022 4200 	bic.w	r2, r2, #2147483648	@ 0x80000000
20024470:	f8c0 2094 	str.w	r2, [r0, #148]	@ 0x94
20024474:	1e5a      	subs	r2, r3, #1
20024476:	7032      	strb	r2, [r6, #0]
20024478:	2201      	movs	r2, #1
2002447a:	2000      	movs	r0, #0
2002447c:	3b04      	subs	r3, #4
2002447e:	702b      	strb	r3, [r5, #0]
20024480:	6823      	ldr	r3, [r4, #0]
20024482:	60da      	str	r2, [r3, #12]
20024484:	bd70      	pop	{r4, r5, r6, pc}
20024486:	2001      	movs	r0, #1
20024488:	e7fc      	b.n	20024484 <HAL_MPI_OPSRAM_CAL_DELAY+0x60>
	...

2002448c <HAL_SPI_PSRAM_Init>:
2002448c:	b537      	push	{r0, r1, r2, r4, r5, lr}
2002448e:	4614      	mov	r4, r2
20024490:	4605      	mov	r5, r0
20024492:	2800      	cmp	r0, #0
20024494:	d043      	beq.n	2002451e <HAL_SPI_PSRAM_Init+0x92>
20024496:	2900      	cmp	r1, #0
20024498:	d041      	beq.n	2002451e <HAL_SPI_PSRAM_Init+0x92>
2002449a:	f7fe fbd3 	bl	20022c44 <HAL_QSPI_Init>
2002449e:	4628      	mov	r0, r5
200244a0:	b2e1      	uxtb	r1, r4
200244a2:	f7fe fca9 	bl	20022df8 <HAL_FLASH_SET_CLK_rom>
200244a6:	4628      	mov	r0, r5
200244a8:	f7ff fd3c 	bl	20023f24 <HAL_QSPI_GET_CLK>
200244ac:	4b1d      	ldr	r3, [pc, #116]	@ (20024524 <HAL_SPI_PSRAM_Init+0x98>)
200244ae:	4298      	cmp	r0, r3
200244b0:	d930      	bls.n	20024514 <HAL_SPI_PSRAM_Init+0x88>
200244b2:	4b1d      	ldr	r3, [pc, #116]	@ (20024528 <HAL_SPI_PSRAM_Init+0x9c>)
200244b4:	4298      	cmp	r0, r3
200244b6:	d92f      	bls.n	20024518 <HAL_SPI_PSRAM_Init+0x8c>
200244b8:	4b1c      	ldr	r3, [pc, #112]	@ (2002452c <HAL_SPI_PSRAM_Init+0xa0>)
200244ba:	4298      	cmp	r0, r3
200244bc:	d922      	bls.n	20024504 <HAL_SPI_PSRAM_Init+0x78>
200244be:	f240 34b6 	movw	r4, #950	@ 0x3b6
200244c2:	f240 4374 	movw	r3, #1140	@ 0x474
200244c6:	4a1a      	ldr	r2, [pc, #104]	@ (20024530 <HAL_SPI_PSRAM_Init+0xa4>)
200244c8:	4290      	cmp	r0, r2
200244ca:	bf88      	it	hi
200244cc:	461c      	movhi	r4, r3
200244ce:	2200      	movs	r2, #0
200244d0:	2101      	movs	r1, #1
200244d2:	4628      	mov	r0, r5
200244d4:	f7ff f8ce 	bl	20023674 <HAL_QSPI_SET_CLK_INV>
200244d8:	2100      	movs	r1, #0
200244da:	4622      	mov	r2, r4
200244dc:	2302      	movs	r3, #2
200244de:	4628      	mov	r0, r5
200244e0:	9100      	str	r1, [sp, #0]
200244e2:	f7fe fd74 	bl	20022fce <HAL_FLASH_SET_CS_TIME>
200244e6:	4604      	mov	r4, r0
200244e8:	b948      	cbnz	r0, 200244fe <HAL_SPI_PSRAM_Init+0x72>
200244ea:	2106      	movs	r1, #6
200244ec:	4628      	mov	r0, r5
200244ee:	f7fe fd83 	bl	20022ff8 <HAL_FLASH_SET_ROW_BOUNDARY>
200244f2:	4604      	mov	r4, r0
200244f4:	b918      	cbnz	r0, 200244fe <HAL_SPI_PSRAM_Init+0x72>
200244f6:	2101      	movs	r1, #1
200244f8:	4628      	mov	r0, r5
200244fa:	f7fe fd22 	bl	20022f42 <HAL_FLASH_ENABLE_QSPI>
200244fe:	4620      	mov	r0, r4
20024500:	b003      	add	sp, #12
20024502:	bd30      	pop	{r4, r5, pc}
20024504:	4b0b      	ldr	r3, [pc, #44]	@ (20024534 <HAL_SPI_PSRAM_Init+0xa8>)
20024506:	f44f 743e 	mov.w	r4, #760	@ 0x2f8
2002450a:	4298      	cmp	r0, r3
2002450c:	d8df      	bhi.n	200244ce <HAL_SPI_PSRAM_Init+0x42>
2002450e:	2200      	movs	r2, #0
20024510:	4611      	mov	r1, r2
20024512:	e7de      	b.n	200244d2 <HAL_SPI_PSRAM_Init+0x46>
20024514:	24b4      	movs	r4, #180	@ 0xb4
20024516:	e7fa      	b.n	2002450e <HAL_SPI_PSRAM_Init+0x82>
20024518:	f44f 74be 	mov.w	r4, #380	@ 0x17c
2002451c:	e7f7      	b.n	2002450e <HAL_SPI_PSRAM_Init+0x82>
2002451e:	2401      	movs	r4, #1
20024520:	e7ed      	b.n	200244fe <HAL_SPI_PSRAM_Init+0x72>
20024522:	bf00      	nop
20024524:	016e3600 	.word	0x016e3600
20024528:	02dc6c00 	.word	0x02dc6c00
2002452c:	05b8d800 	.word	0x05b8d800
20024530:	07270e00 	.word	0x07270e00
20024534:	03938700 	.word	0x03938700

20024538 <HAL_MPI_MR_WRITE>:
20024538:	b5f0      	push	{r4, r5, r6, r7, lr}
2002453a:	460e      	mov	r6, r1
2002453c:	4617      	mov	r7, r2
2002453e:	4605      	mov	r5, r0
20024540:	b087      	sub	sp, #28
20024542:	b1d8      	cbz	r0, 2002457c <HAL_MPI_MR_WRITE+0x44>
20024544:	2207      	movs	r2, #7
20024546:	2400      	movs	r4, #0
20024548:	2303      	movs	r3, #3
2002454a:	e9cd 2203 	strd	r2, r2, [sp, #12]
2002454e:	2101      	movs	r1, #1
20024550:	e9cd 4301 	strd	r4, r3, [sp, #4]
20024554:	9400      	str	r4, [sp, #0]
20024556:	4623      	mov	r3, r4
20024558:	f7fe fc57 	bl	20022e0a <HAL_FLASH_MANUAL_CMD>
2002455c:	2102      	movs	r1, #2
2002455e:	4628      	mov	r0, r5
20024560:	f7fe fbe9 	bl	20022d36 <HAL_FLASH_WRITE_DLEN>
20024564:	4639      	mov	r1, r7
20024566:	4628      	mov	r0, r5
20024568:	f7fe fbde 	bl	20022d28 <HAL_FLASH_WRITE_WORD>
2002456c:	4632      	mov	r2, r6
2002456e:	21c0      	movs	r1, #192	@ 0xc0
20024570:	4628      	mov	r0, r5
20024572:	f7fe fc05 	bl	20022d80 <HAL_FLASH_SET_CMD>
20024576:	4620      	mov	r0, r4
20024578:	b007      	add	sp, #28
2002457a:	bdf0      	pop	{r4, r5, r6, r7, pc}
2002457c:	2001      	movs	r0, #1
2002457e:	e7fb      	b.n	20024578 <HAL_MPI_MR_WRITE+0x40>

20024580 <HAL_MPI_SET_FIXLAT>:
20024580:	e92d 41ff 	stmdb	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, lr}
20024584:	460c      	mov	r4, r1
20024586:	4616      	mov	r6, r2
20024588:	461f      	mov	r7, r3
2002458a:	4605      	mov	r5, r0
2002458c:	2800      	cmp	r0, #0
2002458e:	d040      	beq.n	20024612 <HAL_MPI_SET_FIXLAT+0x92>
20024590:	466b      	mov	r3, sp
20024592:	4a21      	ldr	r2, [pc, #132]	@ (20024618 <HAL_MPI_SET_FIXLAT+0x98>)
20024594:	6810      	ldr	r0, [r2, #0]
20024596:	6851      	ldr	r1, [r2, #4]
20024598:	c303      	stmia	r3!, {r0, r1}
2002459a:	6890      	ldr	r0, [r2, #8]
2002459c:	68d1      	ldr	r1, [r2, #12]
2002459e:	c303      	stmia	r3!, {r0, r1}
200245a0:	4628      	mov	r0, r5
200245a2:	b2e1      	uxtb	r1, r4
200245a4:	f7fe fd4e 	bl	20023044 <HAL_MPI_EN_FIXLAT>
200245a8:	f107 0310 	add.w	r3, r7, #16
200245ac:	446b      	add	r3, sp
200245ae:	f813 8c08 	ldrb.w	r8, [r3, #-8]
200245b2:	ea4f 1848 	mov.w	r8, r8, lsl #5
200245b6:	fa5f f888 	uxtb.w	r8, r8
200245ba:	b30c      	cbz	r4, 20024600 <HAL_MPI_SET_FIXLAT+0x80>
200245bc:	ab04      	add	r3, sp, #16
200245be:	eb03 0356 	add.w	r3, r3, r6, lsr #1
200245c2:	f813 4c10 	ldrb.w	r4, [r3, #-16]
200245c6:	00a4      	lsls	r4, r4, #2
200245c8:	f044 0421 	orr.w	r4, r4, #33	@ 0x21
200245cc:	b264      	sxtb	r4, r4
200245ce:	f004 02fd 	and.w	r2, r4, #253	@ 0xfd
200245d2:	2100      	movs	r1, #0
200245d4:	4628      	mov	r0, r5
200245d6:	f7ff ffaf 	bl	20024538 <HAL_MPI_MR_WRITE>
200245da:	1e71      	subs	r1, r6, #1
200245dc:	4628      	mov	r0, r5
200245de:	b249      	sxtb	r1, r1
200245e0:	f7fe fd8e 	bl	20023100 <HAL_MPI_MODIFY_RCMD_DELAY>
200245e4:	4642      	mov	r2, r8
200245e6:	2104      	movs	r1, #4
200245e8:	4628      	mov	r0, r5
200245ea:	f7ff ffa5 	bl	20024538 <HAL_MPI_MR_WRITE>
200245ee:	1e79      	subs	r1, r7, #1
200245f0:	4628      	mov	r0, r5
200245f2:	b249      	sxtb	r1, r1
200245f4:	f7fe fd8d 	bl	20023112 <HAL_MPI_MODIFY_WCMD_DELAY>
200245f8:	2000      	movs	r0, #0
200245fa:	b004      	add	sp, #16
200245fc:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
20024600:	f106 0310 	add.w	r3, r6, #16
20024604:	446b      	add	r3, sp
20024606:	f813 4c10 	ldrb.w	r4, [r3, #-16]
2002460a:	00a4      	lsls	r4, r4, #2
2002460c:	f044 0401 	orr.w	r4, r4, #1
20024610:	e7dc      	b.n	200245cc <HAL_MPI_SET_FIXLAT+0x4c>
20024612:	2001      	movs	r0, #1
20024614:	e7f1      	b.n	200245fa <HAL_MPI_SET_FIXLAT+0x7a>
20024616:	bf00      	nop
20024618:	2002ba58 	.word	0x2002ba58

2002461c <HAL_LEGACY_MR_WRITE>:
2002461c:	b5f0      	push	{r4, r5, r6, r7, lr}
2002461e:	460e      	mov	r6, r1
20024620:	4617      	mov	r7, r2
20024622:	4605      	mov	r5, r0
20024624:	b087      	sub	sp, #28
20024626:	b1d8      	cbz	r0, 20024660 <HAL_LEGACY_MR_WRITE+0x44>
20024628:	2207      	movs	r2, #7
2002462a:	2400      	movs	r4, #0
2002462c:	2302      	movs	r3, #2
2002462e:	e9cd 2203 	strd	r2, r2, [sp, #12]
20024632:	2101      	movs	r1, #1
20024634:	e9cd 4301 	strd	r4, r3, [sp, #4]
20024638:	9400      	str	r4, [sp, #0]
2002463a:	4623      	mov	r3, r4
2002463c:	f7fe fbe5 	bl	20022e0a <HAL_FLASH_MANUAL_CMD>
20024640:	2104      	movs	r1, #4
20024642:	4628      	mov	r0, r5
20024644:	f7fe fb77 	bl	20022d36 <HAL_FLASH_WRITE_DLEN>
20024648:	4639      	mov	r1, r7
2002464a:	4628      	mov	r0, r5
2002464c:	f7fe fb6c 	bl	20022d28 <HAL_FLASH_WRITE_WORD>
20024650:	4632      	mov	r2, r6
20024652:	21c0      	movs	r1, #192	@ 0xc0
20024654:	4628      	mov	r0, r5
20024656:	f7fe fb93 	bl	20022d80 <HAL_FLASH_SET_CMD>
2002465a:	4620      	mov	r0, r4
2002465c:	b007      	add	sp, #28
2002465e:	bdf0      	pop	{r4, r5, r6, r7, pc}
20024660:	2001      	movs	r0, #1
20024662:	e7fb      	b.n	2002465c <HAL_LEGACY_MR_WRITE+0x40>

20024664 <HAL_LEGACY_CFG_READ>:
20024664:	b530      	push	{r4, r5, lr}
20024666:	4605      	mov	r5, r0
20024668:	b085      	sub	sp, #20
2002466a:	b1a0      	cbz	r0, 20024696 <HAL_LEGACY_CFG_READ+0x32>
2002466c:	2400      	movs	r4, #0
2002466e:	2107      	movs	r1, #7
20024670:	2302      	movs	r3, #2
20024672:	f890 202d 	ldrb.w	r2, [r0, #45]	@ 0x2d
20024676:	e9cd 1102 	strd	r1, r1, [sp, #8]
2002467a:	0052      	lsls	r2, r2, #1
2002467c:	e9cd 4300 	strd	r4, r3, [sp]
20024680:	b252      	sxtb	r2, r2
20024682:	4623      	mov	r3, r4
20024684:	f7fe fb0a 	bl	20022c9c <HAL_FLASH_CFG_AHB_RCMD>
20024688:	4621      	mov	r1, r4
2002468a:	4628      	mov	r0, r5
2002468c:	f7fe fafb 	bl	20022c86 <HAL_FLASH_SET_AHB_RCMD>
20024690:	4620      	mov	r0, r4
20024692:	b005      	add	sp, #20
20024694:	bd30      	pop	{r4, r5, pc}
20024696:	2001      	movs	r0, #1
20024698:	e7fb      	b.n	20024692 <HAL_LEGACY_CFG_READ+0x2e>

2002469a <HAL_LEGACY_CFG_WRITE>:
2002469a:	b530      	push	{r4, r5, lr}
2002469c:	4605      	mov	r5, r0
2002469e:	b085      	sub	sp, #20
200246a0:	b190      	cbz	r0, 200246c8 <HAL_LEGACY_CFG_WRITE+0x2e>
200246a2:	2107      	movs	r1, #7
200246a4:	2400      	movs	r4, #0
200246a6:	2302      	movs	r3, #2
200246a8:	e9cd 1102 	strd	r1, r1, [sp, #8]
200246ac:	e9cd 4300 	strd	r4, r3, [sp]
200246b0:	4623      	mov	r3, r4
200246b2:	f990 202e 	ldrsb.w	r2, [r0, #46]	@ 0x2e
200246b6:	f7fe fb1a 	bl	20022cee <HAL_FLASH_CFG_AHB_WCMD>
200246ba:	2180      	movs	r1, #128	@ 0x80
200246bc:	4628      	mov	r0, r5
200246be:	f7fe fb0a 	bl	20022cd6 <HAL_FLASH_SET_AHB_WCMD>
200246c2:	4620      	mov	r0, r4
200246c4:	b005      	add	sp, #20
200246c6:	bd30      	pop	{r4, r5, pc}
200246c8:	2001      	movs	r0, #1
200246ca:	e7fb      	b.n	200246c4 <HAL_LEGACY_CFG_WRITE+0x2a>

200246cc <HAL_PSRAM_RESET>:
200246cc:	b5f0      	push	{r4, r5, r6, r7, lr}
200246ce:	4604      	mov	r4, r0
200246d0:	b087      	sub	sp, #28
200246d2:	2800      	cmp	r0, #0
200246d4:	d03b      	beq.n	2002474e <HAL_PSRAM_RESET+0x82>
200246d6:	f890 302b 	ldrb.w	r3, [r0, #43]	@ 0x2b
200246da:	2b05      	cmp	r3, #5
200246dc:	d034      	beq.n	20024748 <HAL_PSRAM_RESET+0x7c>
200246de:	3b03      	subs	r3, #3
200246e0:	2b01      	cmp	r3, #1
200246e2:	d82e      	bhi.n	20024742 <HAL_PSRAM_RESET+0x76>
200246e4:	2601      	movs	r6, #1
200246e6:	2703      	movs	r7, #3
200246e8:	2300      	movs	r3, #0
200246ea:	2507      	movs	r5, #7
200246ec:	b276      	sxtb	r6, r6
200246ee:	b27f      	sxtb	r7, r7
200246f0:	461a      	mov	r2, r3
200246f2:	2101      	movs	r1, #1
200246f4:	4620      	mov	r0, r4
200246f6:	e9cd 5503 	strd	r5, r5, [sp, #12]
200246fa:	e9cd 5701 	strd	r5, r7, [sp, #4]
200246fe:	9600      	str	r6, [sp, #0]
20024700:	f7fe fb83 	bl	20022e0a <HAL_FLASH_MANUAL_CMD>
20024704:	2200      	movs	r2, #0
20024706:	21ff      	movs	r1, #255	@ 0xff
20024708:	4620      	mov	r0, r4
2002470a:	f7fe fb39 	bl	20022d80 <HAL_FLASH_SET_CMD>
2002470e:	f894 302b 	ldrb.w	r3, [r4, #43]	@ 0x2b
20024712:	2b05      	cmp	r3, #5
20024714:	d10f      	bne.n	20024736 <HAL_PSRAM_RESET+0x6a>
20024716:	2300      	movs	r3, #0
20024718:	2101      	movs	r1, #1
2002471a:	461a      	mov	r2, r3
2002471c:	4620      	mov	r0, r4
2002471e:	e9cd 5503 	strd	r5, r5, [sp, #12]
20024722:	e9cd 5701 	strd	r5, r7, [sp, #4]
20024726:	9600      	str	r6, [sp, #0]
20024728:	f7fe fb6f 	bl	20022e0a <HAL_FLASH_MANUAL_CMD>
2002472c:	2200      	movs	r2, #0
2002472e:	21ff      	movs	r1, #255	@ 0xff
20024730:	4620      	mov	r0, r4
20024732:	f7fe fb25 	bl	20022d80 <HAL_FLASH_SET_CMD>
20024736:	2000      	movs	r0, #0
20024738:	f7fd fd35 	bl	200221a6 <HAL_Delay_us>
2002473c:	2003      	movs	r0, #3
2002473e:	f7fd fd32 	bl	200221a6 <HAL_Delay_us>
20024742:	2000      	movs	r0, #0
20024744:	b007      	add	sp, #28
20024746:	bdf0      	pop	{r4, r5, r6, r7, pc}
20024748:	2603      	movs	r6, #3
2002474a:	2702      	movs	r7, #2
2002474c:	e7cc      	b.n	200246e8 <HAL_PSRAM_RESET+0x1c>
2002474e:	2001      	movs	r0, #1
20024750:	e7f8      	b.n	20024744 <HAL_PSRAM_RESET+0x78>
	...

20024754 <HAL_OPI_PSRAM_Init>:
20024754:	b530      	push	{r4, r5, lr}
20024756:	4604      	mov	r4, r0
20024758:	b085      	sub	sp, #20
2002475a:	2800      	cmp	r0, #0
2002475c:	d06e      	beq.n	2002483c <HAL_OPI_PSRAM_Init+0xe8>
2002475e:	2900      	cmp	r1, #0
20024760:	d06c      	beq.n	2002483c <HAL_OPI_PSRAM_Init+0xe8>
20024762:	f7fe fa6f 	bl	20022c44 <HAL_QSPI_Init>
20024766:	6823      	ldr	r3, [r4, #0]
20024768:	f10d 020e 	add.w	r2, sp, #14
2002476c:	f10d 010f 	add.w	r1, sp, #15
20024770:	4620      	mov	r0, r4
20024772:	681d      	ldr	r5, [r3, #0]
20024774:	f7ff fe56 	bl	20024424 <HAL_MPI_OPSRAM_CAL_DELAY>
20024778:	2101      	movs	r1, #1
2002477a:	4620      	mov	r0, r4
2002477c:	f7fe fb3c 	bl	20022df8 <HAL_FLASH_SET_CLK_rom>
20024780:	4620      	mov	r0, r4
20024782:	f7ff fbcf 	bl	20023f24 <HAL_QSPI_GET_CLK>
20024786:	4b2e      	ldr	r3, [pc, #184]	@ (20024840 <HAL_OPI_PSRAM_Init+0xec>)
20024788:	f005 0501 	and.w	r5, r5, #1
2002478c:	4298      	cmp	r0, r3
2002478e:	d836      	bhi.n	200247fe <HAL_OPI_PSRAM_Init+0xaa>
20024790:	2314      	movs	r3, #20
20024792:	2103      	movs	r1, #3
20024794:	f88d 300e 	strb.w	r3, [sp, #14]
20024798:	f88d 300f 	strb.w	r3, [sp, #15]
2002479c:	4608      	mov	r0, r1
2002479e:	2300      	movs	r3, #0
200247a0:	22b4      	movs	r2, #180	@ 0xb4
200247a2:	f884 102d 	strb.w	r1, [r4, #45]	@ 0x2d
200247a6:	f884 102e 	strb.w	r1, [r4, #46]	@ 0x2e
200247aa:	2106      	movs	r1, #6
200247ac:	9000      	str	r0, [sp, #0]
200247ae:	4620      	mov	r0, r4
200247b0:	f7fe fc0d 	bl	20022fce <HAL_FLASH_SET_CS_TIME>
200247b4:	2107      	movs	r1, #7
200247b6:	4620      	mov	r0, r4
200247b8:	f7fe fc1e 	bl	20022ff8 <HAL_FLASH_SET_ROW_BOUNDARY>
200247bc:	2101      	movs	r1, #1
200247be:	4620      	mov	r0, r4
200247c0:	f7fe fc4e 	bl	20023060 <HAL_MPI_ENABLE_DQS>
200247c4:	f89d 100e 	ldrb.w	r1, [sp, #14]
200247c8:	4620      	mov	r0, r4
200247ca:	f7fe fc57 	bl	2002307c <HAL_MPI_SET_DQS_DELAY>
200247ce:	2200      	movs	r2, #0
200247d0:	f89d 100f 	ldrb.w	r1, [sp, #15]
200247d4:	4620      	mov	r0, r4
200247d6:	f7fe fc5d 	bl	20023094 <HAL_MPI_SET_SCK>
200247da:	2101      	movs	r1, #1
200247dc:	4620      	mov	r0, r4
200247de:	f7fe fbb0 	bl	20022f42 <HAL_FLASH_ENABLE_QSPI>
200247e2:	2101      	movs	r1, #1
200247e4:	4620      	mov	r0, r4
200247e6:	f7fe fbba 	bl	20022f5e <HAL_FLASH_ENABLE_OPI>
200247ea:	b92d      	cbnz	r5, 200247f8 <HAL_OPI_PSRAM_Init+0xa4>
200247ec:	4b15      	ldr	r3, [pc, #84]	@ (20024844 <HAL_OPI_PSRAM_Init+0xf0>)
200247ee:	681b      	ldr	r3, [r3, #0]
200247f0:	f003 0303 	and.w	r3, r3, #3
200247f4:	2b03      	cmp	r3, #3
200247f6:	d11d      	bne.n	20024834 <HAL_OPI_PSRAM_Init+0xe0>
200247f8:	2000      	movs	r0, #0
200247fa:	b005      	add	sp, #20
200247fc:	bd30      	pop	{r4, r5, pc}
200247fe:	4b12      	ldr	r3, [pc, #72]	@ (20024848 <HAL_OPI_PSRAM_Init+0xf4>)
20024800:	4298      	cmp	r0, r3
20024802:	d90b      	bls.n	2002481c <HAL_OPI_PSRAM_Init+0xc8>
20024804:	f103 7337 	add.w	r3, r3, #47972352	@ 0x2dc0000
20024808:	f503 43d8 	add.w	r3, r3, #27648	@ 0x6c00
2002480c:	4298      	cmp	r0, r3
2002480e:	d90b      	bls.n	20024828 <HAL_OPI_PSRAM_Init+0xd4>
20024810:	2107      	movs	r1, #7
20024812:	2014      	movs	r0, #20
20024814:	2308      	movs	r3, #8
20024816:	f240 5232 	movw	r2, #1330	@ 0x532
2002481a:	e7c2      	b.n	200247a2 <HAL_OPI_PSRAM_Init+0x4e>
2002481c:	2105      	movs	r1, #5
2002481e:	200e      	movs	r0, #14
20024820:	2303      	movs	r3, #3
20024822:	f240 32b6 	movw	r2, #950	@ 0x3b6
20024826:	e7bc      	b.n	200247a2 <HAL_OPI_PSRAM_Init+0x4e>
20024828:	2106      	movs	r1, #6
2002482a:	2011      	movs	r0, #17
2002482c:	2305      	movs	r3, #5
2002482e:	f240 4274 	movw	r2, #1140	@ 0x474
20024832:	e7b6      	b.n	200247a2 <HAL_OPI_PSRAM_Init+0x4e>
20024834:	4620      	mov	r0, r4
20024836:	f7ff ff49 	bl	200246cc <HAL_PSRAM_RESET>
2002483a:	e7dd      	b.n	200247f8 <HAL_OPI_PSRAM_Init+0xa4>
2002483c:	2001      	movs	r0, #1
2002483e:	e7dc      	b.n	200247fa <HAL_OPI_PSRAM_Init+0xa6>
20024840:	02dc6c01 	.word	0x02dc6c01
20024844:	500c0000 	.word	0x500c0000
20024848:	0e4e1c01 	.word	0x0e4e1c01

2002484c <HAL_LEGACY_PSRAM_Init>:
2002484c:	b5f0      	push	{r4, r5, r6, r7, lr}
2002484e:	4604      	mov	r4, r0
20024850:	b085      	sub	sp, #20
20024852:	2800      	cmp	r0, #0
20024854:	f000 8096 	beq.w	20024984 <HAL_LEGACY_PSRAM_Init+0x138>
20024858:	2900      	cmp	r1, #0
2002485a:	f000 8093 	beq.w	20024984 <HAL_LEGACY_PSRAM_Init+0x138>
2002485e:	f7fe f9f1 	bl	20022c44 <HAL_QSPI_Init>
20024862:	6823      	ldr	r3, [r4, #0]
20024864:	f10d 020e 	add.w	r2, sp, #14
20024868:	f10d 010f 	add.w	r1, sp, #15
2002486c:	4620      	mov	r0, r4
2002486e:	681e      	ldr	r6, [r3, #0]
20024870:	f7ff fdd8 	bl	20024424 <HAL_MPI_OPSRAM_CAL_DELAY>
20024874:	2101      	movs	r1, #1
20024876:	4620      	mov	r0, r4
20024878:	f7fe fabe 	bl	20022df8 <HAL_FLASH_SET_CLK_rom>
2002487c:	4620      	mov	r0, r4
2002487e:	f7ff fb51 	bl	20023f24 <HAL_QSPI_GET_CLK>
20024882:	4b41      	ldr	r3, [pc, #260]	@ (20024988 <HAL_LEGACY_PSRAM_Init+0x13c>)
20024884:	4605      	mov	r5, r0
20024886:	4298      	cmp	r0, r3
20024888:	4f40      	ldr	r7, [pc, #256]	@ (2002498c <HAL_LEGACY_PSRAM_Init+0x140>)
2002488a:	f006 0601 	and.w	r6, r6, #1
2002488e:	d850      	bhi.n	20024932 <HAL_LEGACY_PSRAM_Init+0xe6>
20024890:	2314      	movs	r3, #20
20024892:	2103      	movs	r1, #3
20024894:	f88d 300e 	strb.w	r3, [sp, #14]
20024898:	f88d 300f 	strb.w	r3, [sp, #15]
2002489c:	22b4      	movs	r2, #180	@ 0xb4
2002489e:	2300      	movs	r3, #0
200248a0:	9100      	str	r1, [sp, #0]
200248a2:	4620      	mov	r0, r4
200248a4:	2106      	movs	r1, #6
200248a6:	f7fe fb92 	bl	20022fce <HAL_FLASH_SET_CS_TIME>
200248aa:	2107      	movs	r1, #7
200248ac:	4620      	mov	r0, r4
200248ae:	f7fe fba3 	bl	20022ff8 <HAL_FLASH_SET_ROW_BOUNDARY>
200248b2:	2101      	movs	r1, #1
200248b4:	4620      	mov	r0, r4
200248b6:	f7fe fbd3 	bl	20023060 <HAL_MPI_ENABLE_DQS>
200248ba:	f89d 100e 	ldrb.w	r1, [sp, #14]
200248be:	4620      	mov	r0, r4
200248c0:	f7fe fbdc 	bl	2002307c <HAL_MPI_SET_DQS_DELAY>
200248c4:	2200      	movs	r2, #0
200248c6:	f89d 100f 	ldrb.w	r1, [sp, #15]
200248ca:	4620      	mov	r0, r4
200248cc:	f7fe fbe2 	bl	20023094 <HAL_MPI_SET_SCK>
200248d0:	2101      	movs	r1, #1
200248d2:	4620      	mov	r0, r4
200248d4:	f7fe fb9a 	bl	2002300c <HAL_FLASH_SET_LEGACY>
200248d8:	2101      	movs	r1, #1
200248da:	4620      	mov	r0, r4
200248dc:	f7fe fb31 	bl	20022f42 <HAL_FLASH_ENABLE_QSPI>
200248e0:	2101      	movs	r1, #1
200248e2:	4620      	mov	r0, r4
200248e4:	f7fe fb3b 	bl	20022f5e <HAL_FLASH_ENABLE_OPI>
200248e8:	b92e      	cbnz	r6, 200248f6 <HAL_LEGACY_PSRAM_Init+0xaa>
200248ea:	f894 302f 	ldrb.w	r3, [r4, #47]	@ 0x2f
200248ee:	b913      	cbnz	r3, 200248f6 <HAL_LEGACY_PSRAM_Init+0xaa>
200248f0:	4620      	mov	r0, r4
200248f2:	f7ff feeb 	bl	200246cc <HAL_PSRAM_RESET>
200248f6:	42bd      	cmp	r5, r7
200248f8:	d93a      	bls.n	20024970 <HAL_LEGACY_PSRAM_Init+0x124>
200248fa:	4b25      	ldr	r3, [pc, #148]	@ (20024990 <HAL_LEGACY_PSRAM_Init+0x144>)
200248fc:	429d      	cmp	r5, r3
200248fe:	d93c      	bls.n	2002497a <HAL_LEGACY_PSRAM_Init+0x12e>
20024900:	2206      	movs	r2, #6
20024902:	2302      	movs	r3, #2
20024904:	2588      	movs	r5, #136	@ 0x88
20024906:	263b      	movs	r6, #59	@ 0x3b
20024908:	f884 302e 	strb.w	r3, [r4, #46]	@ 0x2e
2002490c:	2101      	movs	r1, #1
2002490e:	f884 202d 	strb.w	r2, [r4, #45]	@ 0x2d
20024912:	4620      	mov	r0, r4
20024914:	f7fe fb96 	bl	20023044 <HAL_MPI_EN_FIXLAT>
20024918:	4632      	mov	r2, r6
2002491a:	2100      	movs	r1, #0
2002491c:	4620      	mov	r0, r4
2002491e:	f7ff fe7d 	bl	2002461c <HAL_LEGACY_MR_WRITE>
20024922:	462a      	mov	r2, r5
20024924:	2104      	movs	r1, #4
20024926:	4620      	mov	r0, r4
20024928:	f7ff fe78 	bl	2002461c <HAL_LEGACY_MR_WRITE>
2002492c:	2000      	movs	r0, #0
2002492e:	b005      	add	sp, #20
20024930:	bdf0      	pop	{r4, r5, r6, r7, pc}
20024932:	42b8      	cmp	r0, r7
20024934:	d90d      	bls.n	20024952 <HAL_LEGACY_PSRAM_Init+0x106>
20024936:	4b16      	ldr	r3, [pc, #88]	@ (20024990 <HAL_LEGACY_PSRAM_Init+0x144>)
20024938:	4298      	cmp	r0, r3
2002493a:	d90f      	bls.n	2002495c <HAL_LEGACY_PSRAM_Init+0x110>
2002493c:	f103 7337 	add.w	r3, r3, #47972352	@ 0x2dc0000
20024940:	f503 43d8 	add.w	r3, r3, #27648	@ 0x6c00
20024944:	4298      	cmp	r0, r3
20024946:	d80e      	bhi.n	20024966 <HAL_LEGACY_PSRAM_Init+0x11a>
20024948:	2114      	movs	r1, #20
2002494a:	2308      	movs	r3, #8
2002494c:	f240 5232 	movw	r2, #1330	@ 0x532
20024950:	e7a6      	b.n	200248a0 <HAL_LEGACY_PSRAM_Init+0x54>
20024952:	210e      	movs	r1, #14
20024954:	2303      	movs	r3, #3
20024956:	f240 32b6 	movw	r2, #950	@ 0x3b6
2002495a:	e7a1      	b.n	200248a0 <HAL_LEGACY_PSRAM_Init+0x54>
2002495c:	2111      	movs	r1, #17
2002495e:	2305      	movs	r3, #5
20024960:	f240 4274 	movw	r2, #1140	@ 0x474
20024964:	e79c      	b.n	200248a0 <HAL_LEGACY_PSRAM_Init+0x54>
20024966:	2117      	movs	r1, #23
20024968:	2309      	movs	r3, #9
2002496a:	f44f 62be 	mov.w	r2, #1520	@ 0x5f0
2002496e:	e797      	b.n	200248a0 <HAL_LEGACY_PSRAM_Init+0x54>
20024970:	2204      	movs	r2, #4
20024972:	2300      	movs	r3, #0
20024974:	2508      	movs	r5, #8
20024976:	2633      	movs	r6, #51	@ 0x33
20024978:	e7c6      	b.n	20024908 <HAL_LEGACY_PSRAM_Init+0xbc>
2002497a:	2205      	movs	r2, #5
2002497c:	2300      	movs	r3, #0
2002497e:	2508      	movs	r5, #8
20024980:	2637      	movs	r6, #55	@ 0x37
20024982:	e7c1      	b.n	20024908 <HAL_LEGACY_PSRAM_Init+0xbc>
20024984:	2001      	movs	r0, #1
20024986:	e7d2      	b.n	2002492e <HAL_LEGACY_PSRAM_Init+0xe2>
20024988:	02dc6c01 	.word	0x02dc6c01
2002498c:	0e4e1c01 	.word	0x0e4e1c01
20024990:	112a8801 	.word	0x112a8801

20024994 <HAL_HYPER_PSRAM_WriteCR>:
20024994:	b570      	push	{r4, r5, r6, lr}
20024996:	460e      	mov	r6, r1
20024998:	4615      	mov	r5, r2
2002499a:	4604      	mov	r4, r0
2002499c:	b086      	sub	sp, #24
2002499e:	b1f8      	cbz	r0, 200249e0 <HAL_HYPER_PSRAM_WriteCR+0x4c>
200249a0:	2207      	movs	r2, #7
200249a2:	2303      	movs	r3, #3
200249a4:	e9cd 2301 	strd	r2, r3, [sp, #4]
200249a8:	2300      	movs	r3, #0
200249aa:	e9cd 2203 	strd	r2, r2, [sp, #12]
200249ae:	9300      	str	r3, [sp, #0]
200249b0:	2101      	movs	r1, #1
200249b2:	f7fe fa2a 	bl	20022e0a <HAL_FLASH_MANUAL_CMD>
200249b6:	4631      	mov	r1, r6
200249b8:	4620      	mov	r0, r4
200249ba:	f7fe f9d0 	bl	20022d5e <HAL_FLASH_WRITE_ABYTE>
200249be:	2102      	movs	r1, #2
200249c0:	4620      	mov	r0, r4
200249c2:	f7fe f9b8 	bl	20022d36 <HAL_FLASH_WRITE_DLEN>
200249c6:	4629      	mov	r1, r5
200249c8:	4620      	mov	r0, r4
200249ca:	f7fe f9ad 	bl	20022d28 <HAL_FLASH_WRITE_WORD>
200249ce:	f44f 3280 	mov.w	r2, #65536	@ 0x10000
200249d2:	2160      	movs	r1, #96	@ 0x60
200249d4:	4620      	mov	r0, r4
200249d6:	b006      	add	sp, #24
200249d8:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
200249dc:	f7fe b9d0 	b.w	20022d80 <HAL_FLASH_SET_CMD>
200249e0:	b006      	add	sp, #24
200249e2:	bd70      	pop	{r4, r5, r6, pc}

200249e4 <HAL_HYPER_PSRAM_Init>:
200249e4:	b538      	push	{r3, r4, r5, lr}
200249e6:	4604      	mov	r4, r0
200249e8:	2201      	movs	r2, #1
200249ea:	f7ff feb3 	bl	20024754 <HAL_OPI_PSRAM_Init>
200249ee:	4620      	mov	r0, r4
200249f0:	f7ff fa98 	bl	20023f24 <HAL_QSPI_GET_CLK>
200249f4:	4b15      	ldr	r3, [pc, #84]	@ (20024a4c <HAL_HYPER_PSRAM_Init+0x68>)
200249f6:	4298      	cmp	r0, r3
200249f8:	d91f      	bls.n	20024a3a <HAL_HYPER_PSRAM_Init+0x56>
200249fa:	4b15      	ldr	r3, [pc, #84]	@ (20024a50 <HAL_HYPER_PSRAM_Init+0x6c>)
200249fc:	4298      	cmp	r0, r3
200249fe:	d91f      	bls.n	20024a40 <HAL_HYPER_PSRAM_Init+0x5c>
20024a00:	f103 73f4 	add.w	r3, r3, #31981568	@ 0x1e80000
20024a04:	f503 4390 	add.w	r3, r3, #18432	@ 0x4800
20024a08:	4298      	cmp	r0, r3
20024a0a:	d91c      	bls.n	20024a46 <HAL_HYPER_PSRAM_Init+0x62>
20024a0c:	f242 758f 	movw	r5, #10127	@ 0x278f
20024a10:	f241 738f 	movw	r3, #6031	@ 0x178f
20024a14:	4a0f      	ldr	r2, [pc, #60]	@ (20024a54 <HAL_HYPER_PSRAM_Init+0x70>)
20024a16:	4290      	cmp	r0, r2
20024a18:	bf98      	it	ls
20024a1a:	461d      	movls	r5, r3
20024a1c:	2101      	movs	r1, #1
20024a1e:	4620      	mov	r0, r4
20024a20:	f7fe faab 	bl	20022f7a <HAL_FLASH_ENABLE_HYPER>
20024a24:	462a      	mov	r2, r5
20024a26:	4620      	mov	r0, r4
20024a28:	2100      	movs	r1, #0
20024a2a:	f7ff ffb3 	bl	20024994 <HAL_HYPER_PSRAM_WriteCR>
20024a2e:	2101      	movs	r1, #1
20024a30:	4620      	mov	r0, r4
20024a32:	f7fe fb07 	bl	20023044 <HAL_MPI_EN_FIXLAT>
20024a36:	2000      	movs	r0, #0
20024a38:	bd38      	pop	{r3, r4, r5, pc}
20024a3a:	f24e 758f 	movw	r5, #59279	@ 0xe78f
20024a3e:	e7ed      	b.n	20024a1c <HAL_HYPER_PSRAM_Init+0x38>
20024a40:	f24f 758f 	movw	r5, #63375	@ 0xf78f
20024a44:	e7ea      	b.n	20024a1c <HAL_HYPER_PSRAM_Init+0x38>
20024a46:	f240 758f 	movw	r5, #1935	@ 0x78f
20024a4a:	e7e7      	b.n	20024a1c <HAL_HYPER_PSRAM_Init+0x38>
20024a4c:	0a21fe81 	.word	0x0a21fe81
20024a50:	0c65d401 	.word	0x0c65d401
20024a54:	112a8801 	.word	0x112a8801

20024a58 <HAL_HYPER_CFG_READ>:
20024a58:	b51f      	push	{r0, r1, r2, r3, r4, lr}
20024a5a:	b160      	cbz	r0, 20024a76 <HAL_HYPER_CFG_READ+0x1e>
20024a5c:	2107      	movs	r1, #7
20024a5e:	2303      	movs	r3, #3
20024a60:	f890 202d 	ldrb.w	r2, [r0, #45]	@ 0x2d
20024a64:	e9cd 1300 	strd	r1, r3, [sp]
20024a68:	3a01      	subs	r2, #1
20024a6a:	2300      	movs	r3, #0
20024a6c:	e9cd 1102 	strd	r1, r1, [sp, #8]
20024a70:	b252      	sxtb	r2, r2
20024a72:	f7fe f913 	bl	20022c9c <HAL_FLASH_CFG_AHB_RCMD>
20024a76:	b005      	add	sp, #20
20024a78:	f85d fb04 	ldr.w	pc, [sp], #4

20024a7c <HAL_HYPER_CFG_WRITE>:
20024a7c:	b51f      	push	{r0, r1, r2, r3, r4, lr}
20024a7e:	b160      	cbz	r0, 20024a9a <HAL_HYPER_CFG_WRITE+0x1e>
20024a80:	2107      	movs	r1, #7
20024a82:	2303      	movs	r3, #3
20024a84:	f890 202e 	ldrb.w	r2, [r0, #46]	@ 0x2e
20024a88:	e9cd 1300 	strd	r1, r3, [sp]
20024a8c:	3a01      	subs	r2, #1
20024a8e:	2300      	movs	r3, #0
20024a90:	e9cd 1102 	strd	r1, r1, [sp, #8]
20024a94:	b252      	sxtb	r2, r2
20024a96:	f7fe f92a 	bl	20022cee <HAL_FLASH_CFG_AHB_WCMD>
20024a9a:	b005      	add	sp, #20
20024a9c:	f85d fb04 	ldr.w	pc, [sp], #4

20024aa0 <HAL_PIN_SetUartFunc.part.0>:
20024aa0:	108b      	asrs	r3, r1, #2
20024aa2:	f1a3 0248 	sub.w	r2, r3, #72	@ 0x48
20024aa6:	b5f0      	push	{r4, r5, r6, r7, lr}
20024aa8:	b2d6      	uxtb	r6, r2
20024aaa:	2e04      	cmp	r6, #4
20024aac:	d849      	bhi.n	20024b42 <HAL_PIN_SetUartFunc.part.0+0xa2>
20024aae:	2e02      	cmp	r6, #2
20024ab0:	d810      	bhi.n	20024ad4 <HAL_PIN_SetUartFunc.part.0+0x34>
20024ab2:	4d25      	ldr	r5, [pc, #148]	@ (20024b48 <HAL_PIN_SetUartFunc.part.0+0xa8>)
20024ab4:	240e      	movs	r4, #14
20024ab6:	eb05 0582 	add.w	r5, r5, r2, lsl #2
20024aba:	f240 22b2 	movw	r2, #690	@ 0x2b2
20024abe:	eba1 0386 	sub.w	r3, r1, r6, lsl #2
20024ac2:	b29b      	uxth	r3, r3
20024ac4:	f5a3 7390 	sub.w	r3, r3, #288	@ 0x120
20024ac8:	2b03      	cmp	r3, #3
20024aca:	d83a      	bhi.n	20024b42 <HAL_PIN_SetUartFunc.part.0+0xa2>
20024acc:	e8df f003 	tbb	[pc, r3]
20024ad0:	20271a09 	.word	0x20271a09
20024ad4:	4d1d      	ldr	r5, [pc, #116]	@ (20024b4c <HAL_PIN_SetUartFunc.part.0+0xac>)
20024ad6:	009b      	lsls	r3, r3, #2
20024ad8:	243d      	movs	r4, #61	@ 0x3d
20024ada:	f240 3221 	movw	r2, #801	@ 0x321
20024ade:	441d      	add	r5, r3
20024ae0:	e7ed      	b.n	20024abe <HAL_PIN_SetUartFunc.part.0+0x1e>
20024ae2:	2c0e      	cmp	r4, #14
20024ae4:	f04f 0608 	mov.w	r6, #8
20024ae8:	d120      	bne.n	20024b2c <HAL_PIN_SetUartFunc.part.0+0x8c>
20024aea:	f44f 517c 	mov.w	r1, #16128	@ 0x3f00
20024aee:	682f      	ldr	r7, [r5, #0]
20024af0:	1b03      	subs	r3, r0, r4
20024af2:	40b3      	lsls	r3, r6
20024af4:	407b      	eors	r3, r7
20024af6:	400b      	ands	r3, r1
20024af8:	4410      	add	r0, r2
20024afa:	407b      	eors	r3, r7
20024afc:	1b00      	subs	r0, r0, r4
20024afe:	602b      	str	r3, [r5, #0]
20024b00:	b280      	uxth	r0, r0
20024b02:	bdf0      	pop	{r4, r5, r6, r7, pc}
20024b04:	2c0e      	cmp	r4, #14
20024b06:	f04f 0600 	mov.w	r6, #0
20024b0a:	d112      	bne.n	20024b32 <HAL_PIN_SetUartFunc.part.0+0x92>
20024b0c:	213f      	movs	r1, #63	@ 0x3f
20024b0e:	e7ee      	b.n	20024aee <HAL_PIN_SetUartFunc.part.0+0x4e>
20024b10:	2c0e      	cmp	r4, #14
20024b12:	f04f 0610 	mov.w	r6, #16
20024b16:	d10e      	bne.n	20024b36 <HAL_PIN_SetUartFunc.part.0+0x96>
20024b18:	f44f 117c 	mov.w	r1, #4128768	@ 0x3f0000
20024b1c:	e7e7      	b.n	20024aee <HAL_PIN_SetUartFunc.part.0+0x4e>
20024b1e:	2c0e      	cmp	r4, #14
20024b20:	f04f 0618 	mov.w	r6, #24
20024b24:	d10a      	bne.n	20024b3c <HAL_PIN_SetUartFunc.part.0+0x9c>
20024b26:	f04f 517c 	mov.w	r1, #1056964608	@ 0x3f000000
20024b2a:	e7e0      	b.n	20024aee <HAL_PIN_SetUartFunc.part.0+0x4e>
20024b2c:	f44f 61e0 	mov.w	r1, #1792	@ 0x700
20024b30:	e7dd      	b.n	20024aee <HAL_PIN_SetUartFunc.part.0+0x4e>
20024b32:	2107      	movs	r1, #7
20024b34:	e7db      	b.n	20024aee <HAL_PIN_SetUartFunc.part.0+0x4e>
20024b36:	f44f 21e0 	mov.w	r1, #458752	@ 0x70000
20024b3a:	e7d8      	b.n	20024aee <HAL_PIN_SetUartFunc.part.0+0x4e>
20024b3c:	f04f 61e0 	mov.w	r1, #117440512	@ 0x7000000
20024b40:	e7d5      	b.n	20024aee <HAL_PIN_SetUartFunc.part.0+0x4e>
20024b42:	2000      	movs	r0, #0
20024b44:	e7dd      	b.n	20024b02 <HAL_PIN_SetUartFunc.part.0+0x62>
20024b46:	bf00      	nop
20024b48:	5000b058 	.word	0x5000b058
20024b4c:	4000ef0c 	.word	0x4000ef0c

20024b50 <HAL_PIN_SetAonPE>:
20024b50:	2a00      	cmp	r2, #0
20024b52:	d031      	beq.n	20024bb8 <HAL_PIN_SetAonPE+0x68>
20024b54:	282f      	cmp	r0, #47	@ 0x2f
20024b56:	dd16      	ble.n	20024b86 <HAL_PIN_SetAonPE+0x36>
20024b58:	283a      	cmp	r0, #58	@ 0x3a
20024b5a:	dc2d      	bgt.n	20024bb8 <HAL_PIN_SetAonPE+0x68>
20024b5c:	2301      	movs	r3, #1
20024b5e:	4a17      	ldr	r2, [pc, #92]	@ (20024bbc <HAL_PIN_SetAonPE+0x6c>)
20024b60:	382a      	subs	r0, #42	@ 0x2a
20024b62:	4083      	lsls	r3, r0
20024b64:	6f10      	ldr	r0, [r2, #112]	@ 0x70
20024b66:	f011 0f20 	tst.w	r1, #32
20024b6a:	bf14      	ite	ne
20024b6c:	4318      	orrne	r0, r3
20024b6e:	4398      	biceq	r0, r3
20024b70:	6710      	str	r0, [r2, #112]	@ 0x70
20024b72:	4a12      	ldr	r2, [pc, #72]	@ (20024bbc <HAL_PIN_SetAonPE+0x6c>)
20024b74:	f011 0f10 	tst.w	r1, #16
20024b78:	6ed1      	ldr	r1, [r2, #108]	@ 0x6c
20024b7a:	bf14      	ite	ne
20024b7c:	430b      	orrne	r3, r1
20024b7e:	ea21 0303 	biceq.w	r3, r1, r3
20024b82:	66d3      	str	r3, [r2, #108]	@ 0x6c
20024b84:	4770      	bx	lr
20024b86:	3826      	subs	r0, #38	@ 0x26
20024b88:	2803      	cmp	r0, #3
20024b8a:	d815      	bhi.n	20024bb8 <HAL_PIN_SetAonPE+0x68>
20024b8c:	4b0c      	ldr	r3, [pc, #48]	@ (20024bc0 <HAL_PIN_SetAonPE+0x70>)
20024b8e:	f011 0f20 	tst.w	r1, #32
20024b92:	f853 2020 	ldr.w	r2, [r3, r0, lsl #2]
20024b96:	bf14      	ite	ne
20024b98:	f042 0210 	orrne.w	r2, r2, #16
20024b9c:	f022 0210 	biceq.w	r2, r2, #16
20024ba0:	f843 2020 	str.w	r2, [r3, r0, lsl #2]
20024ba4:	f853 2020 	ldr.w	r2, [r3, r0, lsl #2]
20024ba8:	06c9      	lsls	r1, r1, #27
20024baa:	bf4c      	ite	mi
20024bac:	f042 0208 	orrmi.w	r2, r2, #8
20024bb0:	f022 0208 	bicpl.w	r2, r2, #8
20024bb4:	f843 2020 	str.w	r2, [r3, r0, lsl #2]
20024bb8:	4770      	bx	lr
20024bba:	bf00      	nop
20024bbc:	500cb000 	.word	0x500cb000
20024bc0:	500cb05c 	.word	0x500cb05c

20024bc4 <HAL_PIN_Get_Base>:
20024bc4:	b138      	cbz	r0, 20024bd6 <HAL_PIN_Get_Base+0x12>
20024bc6:	f04f 42a0 	mov.w	r2, #1342177280	@ 0x50000000
20024bca:	6893      	ldr	r3, [r2, #8]
20024bcc:	4806      	ldr	r0, [pc, #24]	@ (20024be8 <HAL_PIN_Get_Base+0x24>)
20024bce:	f043 0304 	orr.w	r3, r3, #4
20024bd2:	6093      	str	r3, [r2, #8]
20024bd4:	4770      	bx	lr
20024bd6:	f04f 4280 	mov.w	r2, #1073741824	@ 0x40000000
20024bda:	6853      	ldr	r3, [r2, #4]
20024bdc:	4803      	ldr	r0, [pc, #12]	@ (20024bec <HAL_PIN_Get_Base+0x28>)
20024bde:	f043 0308 	orr.w	r3, r3, #8
20024be2:	6053      	str	r3, [r2, #4]
20024be4:	4770      	bx	lr
20024be6:	bf00      	nop
20024be8:	50003000 	.word	0x50003000
20024bec:	40003000 	.word	0x40003000

20024bf0 <HAL_PIN_Func2Idx>:
20024bf0:	283b      	cmp	r0, #59	@ 0x3b
20024bf2:	bfc8      	it	gt
20024bf4:	383c      	subgt	r0, #60	@ 0x3c
20024bf6:	0143      	lsls	r3, r0, #5
20024bf8:	b152      	cbz	r2, 20024c10 <HAL_PIN_Func2Idx+0x20>
20024bfa:	4a06      	ldr	r2, [pc, #24]	@ (20024c14 <HAL_PIN_Func2Idx+0x24>)
20024bfc:	2000      	movs	r0, #0
20024bfe:	4413      	add	r3, r2
20024c00:	f833 2010 	ldrh.w	r2, [r3, r0, lsl #1]
20024c04:	428a      	cmp	r2, r1
20024c06:	d002      	beq.n	20024c0e <HAL_PIN_Func2Idx+0x1e>
20024c08:	3001      	adds	r0, #1
20024c0a:	2810      	cmp	r0, #16
20024c0c:	d1f8      	bne.n	20024c00 <HAL_PIN_Func2Idx+0x10>
20024c0e:	4770      	bx	lr
20024c10:	4a01      	ldr	r2, [pc, #4]	@ (20024c18 <HAL_PIN_Func2Idx+0x28>)
20024c12:	e7f3      	b.n	20024bfc <HAL_PIN_Func2Idx+0xc>
20024c14:	2002b2f4 	.word	0x2002b2f4
20024c18:	2002b254 	.word	0x2002b254

20024c1c <HAL_PIN_Set>:
20024c1c:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
20024c20:	4615      	mov	r5, r2
20024c22:	4604      	mov	r4, r0
20024c24:	b918      	cbnz	r0, 20024c2e <HAL_PIN_Set+0x12>
20024c26:	f04f 30ff 	mov.w	r0, #4294967295
20024c2a:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
20024c2e:	283a      	cmp	r0, #58	@ 0x3a
20024c30:	bfcd      	iteet	gt
20024c32:	2700      	movgt	r7, #0
20024c34:	2701      	movle	r7, #1
20024c36:	4606      	movle	r6, r0
20024c38:	f1a0 063c 	subgt.w	r6, r0, #60	@ 0x3c
20024c3c:	4638      	mov	r0, r7
20024c3e:	f7ff ffc1 	bl	20024bc4 <HAL_PIN_Get_Base>
20024c42:	4680      	mov	r8, r0
20024c44:	2f00      	cmp	r7, #0
20024c46:	f000 815e 	beq.w	20024f06 <HAL_PIN_Set+0x2ea>
20024c4a:	f1a4 0026 	sub.w	r0, r4, #38	@ 0x26
20024c4e:	2803      	cmp	r0, #3
20024c50:	d80a      	bhi.n	20024c68 <HAL_PIN_Set+0x4c>
20024c52:	f8df c30c 	ldr.w	ip, [pc, #780]	@ 20024f60 <HAL_PIN_Set+0x344>
20024c56:	f104 4380 	add.w	r3, r4, #1073741824	@ 0x40000000
20024c5a:	3b26      	subs	r3, #38	@ 0x26
20024c5c:	f85c 2023 	ldr.w	r2, [ip, r3, lsl #2]
20024c60:	f022 0202 	bic.w	r2, r2, #2
20024c64:	f84c 2023 	str.w	r2, [ip, r3, lsl #2]
20024c68:	f5a1 7390 	sub.w	r3, r1, #288	@ 0x120
20024c6c:	b29b      	uxth	r3, r3
20024c6e:	2b0b      	cmp	r3, #11
20024c70:	d804      	bhi.n	20024c7c <HAL_PIN_Set+0x60>
20024c72:	4620      	mov	r0, r4
20024c74:	f7ff ff14 	bl	20024aa0 <HAL_PIN_SetUartFunc.part.0>
20024c78:	4601      	mov	r1, r0
20024c7a:	e025      	b.n	20024cc8 <HAL_PIN_Set+0xac>
20024c7c:	f5a1 739c 	sub.w	r3, r1, #312	@ 0x138
20024c80:	b29b      	uxth	r3, r3
20024c82:	2b07      	cmp	r3, #7
20024c84:	d850      	bhi.n	20024d28 <HAL_PIN_Set+0x10c>
20024c86:	104a      	asrs	r2, r1, #1
20024c88:	3a9c      	subs	r2, #156	@ 0x9c
20024c8a:	eba1 0142 	sub.w	r1, r1, r2, lsl #1
20024c8e:	b289      	uxth	r1, r1
20024c90:	f5b1 7f9c 	cmp.w	r1, #312	@ 0x138
20024c94:	d043      	beq.n	20024d1e <HAL_PIN_Set+0x102>
20024c96:	f240 1339 	movw	r3, #313	@ 0x139
20024c9a:	4299      	cmp	r1, r3
20024c9c:	f040 813a 	bne.w	20024f14 <HAL_PIN_Set+0x2f8>
20024ca0:	f04f 0e08 	mov.w	lr, #8
20024ca4:	f44f 5c7c 	mov.w	ip, #16128	@ 0x3f00
20024ca8:	49a5      	ldr	r1, [pc, #660]	@ (20024f40 <HAL_PIN_Set+0x324>)
20024caa:	f1a4 030e 	sub.w	r3, r4, #14
20024cae:	f851 0022 	ldr.w	r0, [r1, r2, lsl #2]
20024cb2:	fa03 f30e 	lsl.w	r3, r3, lr
20024cb6:	4043      	eors	r3, r0
20024cb8:	ea03 030c 	and.w	r3, r3, ip
20024cbc:	4043      	eors	r3, r0
20024cbe:	f841 3022 	str.w	r3, [r1, r2, lsl #2]
20024cc2:	f504 7129 	add.w	r1, r4, #676	@ 0x2a4
20024cc6:	b289      	uxth	r1, r1
20024cc8:	463a      	mov	r2, r7
20024cca:	4620      	mov	r0, r4
20024ccc:	f7ff ff90 	bl	20024bf0 <HAL_PIN_Func2Idx>
20024cd0:	280f      	cmp	r0, #15
20024cd2:	4681      	mov	r9, r0
20024cd4:	dca7      	bgt.n	20024c26 <HAL_PIN_Set+0xa>
20024cd6:	463a      	mov	r2, r7
20024cd8:	4629      	mov	r1, r5
20024cda:	4620      	mov	r0, r4
20024cdc:	f7ff ff38 	bl	20024b50 <HAL_PIN_SetAonPE>
20024ce0:	2f00      	cmp	r7, #0
20024ce2:	f040 8119 	bne.w	20024f18 <HAL_PIN_Set+0x2fc>
20024ce6:	2c40      	cmp	r4, #64	@ 0x40
20024ce8:	f340 8116 	ble.w	20024f18 <HAL_PIN_Set+0x2fc>
20024cec:	4a95      	ldr	r2, [pc, #596]	@ (20024f44 <HAL_PIN_Set+0x328>)
20024cee:	06e8      	lsls	r0, r5, #27
20024cf0:	f852 3024 	ldr.w	r3, [r2, r4, lsl #2]
20024cf4:	ea4f 3909 	mov.w	r9, r9, lsl #12
20024cf8:	f423 43e0 	bic.w	r3, r3, #28672	@ 0x7000
20024cfc:	f023 0318 	bic.w	r3, r3, #24
20024d00:	bf48      	it	mi
20024d02:	f043 0308 	orrmi.w	r3, r3, #8
20024d06:	06a9      	lsls	r1, r5, #26
20024d08:	bf48      	it	mi
20024d0a:	f043 0310 	orrmi.w	r3, r3, #16
20024d0e:	f409 49e0 	and.w	r9, r9, #28672	@ 0x7000
20024d12:	ea49 0303 	orr.w	r3, r9, r3
20024d16:	f842 3024 	str.w	r3, [r2, r4, lsl #2]
20024d1a:	2000      	movs	r0, #0
20024d1c:	e785      	b.n	20024c2a <HAL_PIN_Set+0xe>
20024d1e:	f04f 0e00 	mov.w	lr, #0
20024d22:	f04f 0c3f 	mov.w	ip, #63	@ 0x3f
20024d26:	e7bf      	b.n	20024ca8 <HAL_PIN_Set+0x8c>
20024d28:	f5a1 73ec 	sub.w	r3, r1, #472	@ 0x1d8
20024d2c:	b29a      	uxth	r2, r3
20024d2e:	2a09      	cmp	r2, #9
20024d30:	d837      	bhi.n	20024da2 <HAL_PIN_Set+0x186>
20024d32:	2205      	movs	r2, #5
20024d34:	fbb3 f3f2 	udiv	r3, r3, r2
20024d38:	ebc3 3283 	rsb	r2, r3, r3, lsl #14
20024d3c:	ebc3 0282 	rsb	r2, r3, r2, lsl #2
20024d40:	440a      	add	r2, r1
20024d42:	b292      	uxth	r2, r2
20024d44:	f5a2 71ec 	sub.w	r1, r2, #472	@ 0x1d8
20024d48:	b288      	uxth	r0, r1
20024d4a:	2803      	cmp	r0, #3
20024d4c:	d814      	bhi.n	20024d78 <HAL_PIN_Set+0x15c>
20024d4e:	f04f 0e3f 	mov.w	lr, #63	@ 0x3f
20024d52:	487d      	ldr	r0, [pc, #500]	@ (20024f48 <HAL_PIN_Set+0x32c>)
20024d54:	00c9      	lsls	r1, r1, #3
20024d56:	f850 c023 	ldr.w	ip, [r0, r3, lsl #2]
20024d5a:	f1a4 020e 	sub.w	r2, r4, #14
20024d5e:	408a      	lsls	r2, r1
20024d60:	ea82 020c 	eor.w	r2, r2, ip
20024d64:	fa0e f101 	lsl.w	r1, lr, r1
20024d68:	400a      	ands	r2, r1
20024d6a:	ea82 020c 	eor.w	r2, r2, ip
20024d6e:	f840 2023 	str.w	r2, [r0, r3, lsl #2]
20024d72:	f204 2155 	addw	r1, r4, #597	@ 0x255
20024d76:	e7a6      	b.n	20024cc6 <HAL_PIN_Set+0xaa>
20024d78:	f5b2 7fee 	cmp.w	r2, #476	@ 0x1dc
20024d7c:	f040 80ca 	bne.w	20024f14 <HAL_PIN_Set+0x2f8>
20024d80:	213f      	movs	r1, #63	@ 0x3f
20024d82:	4872      	ldr	r0, [pc, #456]	@ (20024f4c <HAL_PIN_Set+0x330>)
20024d84:	00da      	lsls	r2, r3, #3
20024d86:	f8d0 c06c 	ldr.w	ip, [r0, #108]	@ 0x6c
20024d8a:	f1a4 030e 	sub.w	r3, r4, #14
20024d8e:	4093      	lsls	r3, r2
20024d90:	ea83 030c 	eor.w	r3, r3, ip
20024d94:	fa01 f202 	lsl.w	r2, r1, r2
20024d98:	4013      	ands	r3, r2
20024d9a:	ea83 030c 	eor.w	r3, r3, ip
20024d9e:	66c3      	str	r3, [r0, #108]	@ 0x6c
20024da0:	e7e7      	b.n	20024d72 <HAL_PIN_Set+0x156>
20024da2:	f46f 7a01 	mvn.w	sl, #516	@ 0x204
20024da6:	eb01 020a 	add.w	r2, r1, sl
20024daa:	b293      	uxth	r3, r2
20024dac:	2b05      	cmp	r3, #5
20024dae:	d828      	bhi.n	20024e02 <HAL_PIN_Set+0x1e6>
20024db0:	2303      	movs	r3, #3
20024db2:	fbb2 f2f3 	udiv	r2, r2, r3
20024db6:	f46f 7901 	mvn.w	r9, #516	@ 0x204
20024dba:	ebc2 3382 	rsb	r3, r2, r2, lsl #14
20024dbe:	eb02 0383 	add.w	r3, r2, r3, lsl #2
20024dc2:	440b      	add	r3, r1
20024dc4:	b29b      	uxth	r3, r3
20024dc6:	eb03 0c09 	add.w	ip, r3, r9
20024dca:	fa1f fc8c 	uxth.w	ip, ip
20024dce:	f1bc 0f02 	cmp.w	ip, #2
20024dd2:	f200 809f 	bhi.w	20024f14 <HAL_PIN_Set+0x2f8>
20024dd6:	00db      	lsls	r3, r3, #3
20024dd8:	f5a3 5381 	sub.w	r3, r3, #4128	@ 0x1020
20024ddc:	495c      	ldr	r1, [pc, #368]	@ (20024f50 <HAL_PIN_Set+0x334>)
20024dde:	f1a4 0e0e 	sub.w	lr, r4, #14
20024de2:	3b08      	subs	r3, #8
20024de4:	fa0e f303 	lsl.w	r3, lr, r3
20024de8:	f8df e178 	ldr.w	lr, [pc, #376]	@ 20024f64 <HAL_PIN_Set+0x348>
20024dec:	f851 0022 	ldr.w	r0, [r1, r2, lsl #2]
20024df0:	f85e c02c 	ldr.w	ip, [lr, ip, lsl #2]
20024df4:	4043      	eors	r3, r0
20024df6:	ea03 030c 	and.w	r3, r3, ip
20024dfa:	4043      	eors	r3, r0
20024dfc:	f841 3022 	str.w	r3, [r1, r2, lsl #2]
20024e00:	e7b7      	b.n	20024d72 <HAL_PIN_Set+0x156>
20024e02:	f46f 7ef8 	mvn.w	lr, #496	@ 0x1f0
20024e06:	eb01 030e 	add.w	r3, r1, lr
20024e0a:	b29a      	uxth	r2, r3
20024e0c:	2a09      	cmp	r2, #9
20024e0e:	d82a      	bhi.n	20024e66 <HAL_PIN_Set+0x24a>
20024e10:	f5b1 7ffc 	cmp.w	r1, #504	@ 0x1f8
20024e14:	d216      	bcs.n	20024e44 <HAL_PIN_Set+0x228>
20024e16:	0859      	lsrs	r1, r3, #1
20024e18:	f013 0f01 	tst.w	r3, #1
20024e1c:	4b4d      	ldr	r3, [pc, #308]	@ (20024f54 <HAL_PIN_Set+0x338>)
20024e1e:	f04f 003f 	mov.w	r0, #63	@ 0x3f
20024e22:	4a4d      	ldr	r2, [pc, #308]	@ (20024f58 <HAL_PIN_Set+0x33c>)
20024e24:	bf18      	it	ne
20024e26:	461a      	movne	r2, r3
20024e28:	00c9      	lsls	r1, r1, #3
20024e2a:	4088      	lsls	r0, r1
20024e2c:	f8d2 c000 	ldr.w	ip, [r2]
20024e30:	f1a4 030e 	sub.w	r3, r4, #14
20024e34:	408b      	lsls	r3, r1
20024e36:	ea83 030c 	eor.w	r3, r3, ip
20024e3a:	4003      	ands	r3, r0
20024e3c:	ea83 030c 	eor.w	r3, r3, ip
20024e40:	6013      	str	r3, [r2, #0]
20024e42:	e796      	b.n	20024d72 <HAL_PIN_Set+0x156>
20024e44:	d007      	beq.n	20024e56 <HAL_PIN_Set+0x23a>
20024e46:	f240 13f9 	movw	r3, #505	@ 0x1f9
20024e4a:	4299      	cmp	r1, r3
20024e4c:	d107      	bne.n	20024e5e <HAL_PIN_Set+0x242>
20024e4e:	2100      	movs	r1, #0
20024e50:	203f      	movs	r0, #63	@ 0x3f
20024e52:	4a42      	ldr	r2, [pc, #264]	@ (20024f5c <HAL_PIN_Set+0x340>)
20024e54:	e7ea      	b.n	20024e2c <HAL_PIN_Set+0x210>
20024e56:	2110      	movs	r1, #16
20024e58:	f44f 107c 	mov.w	r0, #4128768	@ 0x3f0000
20024e5c:	e7f9      	b.n	20024e52 <HAL_PIN_Set+0x236>
20024e5e:	2108      	movs	r1, #8
20024e60:	f44f 507c 	mov.w	r0, #16128	@ 0x3f00
20024e64:	e7f5      	b.n	20024e52 <HAL_PIN_Set+0x236>
20024e66:	f46f 7c58 	mvn.w	ip, #864	@ 0x360
20024e6a:	eb01 030c 	add.w	r3, r1, ip
20024e6e:	b29b      	uxth	r3, r3
20024e70:	2b05      	cmp	r3, #5
20024e72:	f63f af29 	bhi.w	20024cc8 <HAL_PIN_Set+0xac>
20024e76:	2803      	cmp	r0, #3
20024e78:	d84c      	bhi.n	20024f14 <HAL_PIN_Set+0x2f8>
20024e7a:	f104 4380 	add.w	r3, r4, #1073741824	@ 0x40000000
20024e7e:	f2a1 3262 	subw	r2, r1, #866	@ 0x362
20024e82:	f8df c0dc 	ldr.w	ip, [pc, #220]	@ 20024f60 <HAL_PIN_Set+0x344>
20024e86:	3b26      	subs	r3, #38	@ 0x26
20024e88:	2a04      	cmp	r2, #4
20024e8a:	d815      	bhi.n	20024eb8 <HAL_PIN_Set+0x29c>
20024e8c:	e8df f002 	tbb	[pc, r2]
20024e90:	31032a38 	.word	0x31032a38
20024e94:	23          	.byte	0x23
20024e95:	00          	.byte	0x00
20024e96:	f44f 5240 	mov.w	r2, #12288	@ 0x3000
20024e9a:	f04f 4ae0 	mov.w	sl, #1879048192	@ 0x70000000
20024e9e:	f04f 5e00 	mov.w	lr, #536870912	@ 0x20000000
20024ea2:	f8df 90c4 	ldr.w	r9, [pc, #196]	@ 20024f68 <HAL_PIN_Set+0x34c>
20024ea6:	f8d9 0004 	ldr.w	r0, [r9, #4]
20024eaa:	ea20 000a 	bic.w	r0, r0, sl
20024eae:	ea40 000e 	orr.w	r0, r0, lr
20024eb2:	f8c9 0004 	str.w	r0, [r9, #4]
20024eb6:	e000      	b.n	20024eba <HAL_PIN_Set+0x29e>
20024eb8:	2200      	movs	r2, #0
20024eba:	f85c 0023 	ldr.w	r0, [ip, r3, lsl #2]
20024ebe:	f420 40e0 	bic.w	r0, r0, #28672	@ 0x7000
20024ec2:	4302      	orrs	r2, r0
20024ec4:	f84c 2023 	str.w	r2, [ip, r3, lsl #2]
20024ec8:	f85c 2023 	ldr.w	r2, [ip, r3, lsl #2]
20024ecc:	f042 0202 	orr.w	r2, r2, #2
20024ed0:	f84c 2023 	str.w	r2, [ip, r3, lsl #2]
20024ed4:	e6f8      	b.n	20024cc8 <HAL_PIN_Set+0xac>
20024ed6:	f44f 5240 	mov.w	r2, #12288	@ 0x3000
20024eda:	f04f 4ae0 	mov.w	sl, #1879048192	@ 0x70000000
20024ede:	f04f 5e40 	mov.w	lr, #805306368	@ 0x30000000
20024ee2:	e7de      	b.n	20024ea2 <HAL_PIN_Set+0x286>
20024ee4:	f44f 5200 	mov.w	r2, #8192	@ 0x2000
20024ee8:	f04f 6a60 	mov.w	sl, #234881024	@ 0xe000000
20024eec:	f04f 6e80 	mov.w	lr, #67108864	@ 0x4000000
20024ef0:	e7d7      	b.n	20024ea2 <HAL_PIN_Set+0x286>
20024ef2:	f44f 5200 	mov.w	r2, #8192	@ 0x2000
20024ef6:	f04f 6a60 	mov.w	sl, #234881024	@ 0xe000000
20024efa:	f04f 6ec0 	mov.w	lr, #100663296	@ 0x6000000
20024efe:	e7d0      	b.n	20024ea2 <HAL_PIN_Set+0x286>
20024f00:	f44f 5280 	mov.w	r2, #4096	@ 0x1000
20024f04:	e7d9      	b.n	20024eba <HAL_PIN_Set+0x29e>
20024f06:	f5a1 7396 	sub.w	r3, r1, #300	@ 0x12c
20024f0a:	b29b      	uxth	r3, r3
20024f0c:	2b07      	cmp	r3, #7
20024f0e:	f63f aedb 	bhi.w	20024cc8 <HAL_PIN_Set+0xac>
20024f12:	e6ae      	b.n	20024c72 <HAL_PIN_Set+0x56>
20024f14:	2100      	movs	r1, #0
20024f16:	e6d7      	b.n	20024cc8 <HAL_PIN_Set+0xac>
20024f18:	f106 4680 	add.w	r6, r6, #1073741824	@ 0x40000000
20024f1c:	3e01      	subs	r6, #1
20024f1e:	f858 3026 	ldr.w	r3, [r8, r6, lsl #2]
20024f22:	f005 0530 	and.w	r5, r5, #48	@ 0x30
20024f26:	f009 090f 	and.w	r9, r9, #15
20024f2a:	ea45 0509 	orr.w	r5, r5, r9
20024f2e:	f023 033f 	bic.w	r3, r3, #63	@ 0x3f
20024f32:	431d      	orrs	r5, r3
20024f34:	f045 0540 	orr.w	r5, r5, #64	@ 0x40
20024f38:	f848 5026 	str.w	r5, [r8, r6, lsl #2]
20024f3c:	e6ed      	b.n	20024d1a <HAL_PIN_Set+0xfe>
20024f3e:	bf00      	nop
20024f40:	5000b048 	.word	0x5000b048
20024f44:	500caf58 	.word	0x500caf58
20024f48:	5000b064 	.word	0x5000b064
20024f4c:	5000b000 	.word	0x5000b000
20024f50:	5000b070 	.word	0x5000b070
20024f54:	5000b07c 	.word	0x5000b07c
20024f58:	5000b078 	.word	0x5000b078
20024f5c:	5000b080 	.word	0x5000b080
20024f60:	500cb05c 	.word	0x500cb05c
20024f64:	2002ba68 	.word	0x2002ba68
20024f68:	500c0000 	.word	0x500c0000

20024f6c <HAL_PIN_Set_Analog>:
20024f6c:	283a      	cmp	r0, #58	@ 0x3a
20024f6e:	b538      	push	{r3, r4, r5, lr}
20024f70:	4604      	mov	r4, r0
20024f72:	dd25      	ble.n	20024fc0 <HAL_PIN_Set_Analog+0x54>
20024f74:	2840      	cmp	r0, #64	@ 0x40
20024f76:	dc16      	bgt.n	20024fa6 <HAL_PIN_Set_Analog+0x3a>
20024f78:	2500      	movs	r5, #0
20024f7a:	f1a0 013c 	sub.w	r1, r0, #60	@ 0x3c
20024f7e:	4628      	mov	r0, r5
20024f80:	f7ff fe20 	bl	20024bc4 <HAL_PIN_Get_Base>
20024f84:	f101 4380 	add.w	r3, r1, #1073741824	@ 0x40000000
20024f88:	3b01      	subs	r3, #1
20024f8a:	f850 1023 	ldr.w	r1, [r0, r3, lsl #2]
20024f8e:	462a      	mov	r2, r5
20024f90:	f021 015f 	bic.w	r1, r1, #95	@ 0x5f
20024f94:	f041 010f 	orr.w	r1, r1, #15
20024f98:	f840 1023 	str.w	r1, [r0, r3, lsl #2]
20024f9c:	2100      	movs	r1, #0
20024f9e:	4620      	mov	r0, r4
20024fa0:	f7ff fdd6 	bl	20024b50 <HAL_PIN_SetAonPE>
20024fa4:	e00a      	b.n	20024fbc <HAL_PIN_Set_Analog+0x50>
20024fa6:	4a08      	ldr	r2, [pc, #32]	@ (20024fc8 <HAL_PIN_Set_Analog+0x5c>)
20024fa8:	f852 3020 	ldr.w	r3, [r2, r0, lsl #2]
20024fac:	f423 43e0 	bic.w	r3, r3, #28672	@ 0x7000
20024fb0:	f023 030e 	bic.w	r3, r3, #14
20024fb4:	f443 43e0 	orr.w	r3, r3, #28672	@ 0x7000
20024fb8:	f842 3020 	str.w	r3, [r2, r0, lsl #2]
20024fbc:	2000      	movs	r0, #0
20024fbe:	bd38      	pop	{r3, r4, r5, pc}
20024fc0:	4601      	mov	r1, r0
20024fc2:	2501      	movs	r5, #1
20024fc4:	e7db      	b.n	20024f7e <HAL_PIN_Set_Analog+0x12>
20024fc6:	bf00      	nop
20024fc8:	500caf58 	.word	0x500caf58

20024fcc <HAL_PMU_EnableDLL>:
20024fcc:	4b05      	ldr	r3, [pc, #20]	@ (20024fe4 <HAL_PMU_EnableDLL+0x18>)
20024fce:	6e9a      	ldr	r2, [r3, #104]	@ 0x68
20024fd0:	b120      	cbz	r0, 20024fdc <HAL_PMU_EnableDLL+0x10>
20024fd2:	f042 0220 	orr.w	r2, r2, #32
20024fd6:	2000      	movs	r0, #0
20024fd8:	669a      	str	r2, [r3, #104]	@ 0x68
20024fda:	4770      	bx	lr
20024fdc:	f022 0220 	bic.w	r2, r2, #32
20024fe0:	e7f9      	b.n	20024fd6 <HAL_PMU_EnableDLL+0xa>
20024fe2:	bf00      	nop
20024fe4:	500ca000 	.word	0x500ca000

20024fe8 <HAL_RCC_HCPU_ConfigSxModeVolt>:
20024fe8:	b507      	push	{r0, r1, r2, lr}
20024fea:	4a13      	ldr	r2, [pc, #76]	@ (20025038 <HAL_RCC_HCPU_ConfigSxModeVolt+0x50>)
20024fec:	4913      	ldr	r1, [pc, #76]	@ (2002503c <HAL_RCC_HCPU_ConfigSxModeVolt+0x54>)
20024fee:	eb02 02c0 	add.w	r2, r2, r0, lsl #3
20024ff2:	f8d1 309c 	ldr.w	r3, [r1, #156]	@ 0x9c
20024ff6:	7892      	ldrb	r2, [r2, #2]
20024ff8:	2802      	cmp	r0, #2
20024ffa:	f362 0303 	bfi	r3, r2, #0, #4
20024ffe:	f8c1 309c 	str.w	r3, [r1, #156]	@ 0x9c
20025002:	f10d 0007 	add.w	r0, sp, #7
20025006:	d111      	bne.n	2002502c <HAL_RCC_HCPU_ConfigSxModeVolt+0x44>
20025008:	f007 fae4 	bl	2002c5d4 <HAL_PMU_GetHpsysVoutRef>
2002500c:	b110      	cbz	r0, 20025014 <HAL_RCC_HCPU_ConfigSxModeVolt+0x2c>
2002500e:	230b      	movs	r3, #11
20025010:	f88d 3007 	strb.w	r3, [sp, #7]
20025014:	4a09      	ldr	r2, [pc, #36]	@ (2002503c <HAL_RCC_HCPU_ConfigSxModeVolt+0x54>)
20025016:	f89d 1007 	ldrb.w	r1, [sp, #7]
2002501a:	f8d2 3094 	ldr.w	r3, [r2, #148]	@ 0x94
2002501e:	f361 0303 	bfi	r3, r1, #0, #4
20025022:	f8c2 3094 	str.w	r3, [r2, #148]	@ 0x94
20025026:	b003      	add	sp, #12
20025028:	f85d fb04 	ldr.w	pc, [sp], #4
2002502c:	f007 fade 	bl	2002c5ec <HAL_PMU_GetHpsysVoutRef2>
20025030:	2800      	cmp	r0, #0
20025032:	d0ef      	beq.n	20025014 <HAL_RCC_HCPU_ConfigSxModeVolt+0x2c>
20025034:	230d      	movs	r3, #13
20025036:	e7eb      	b.n	20025010 <HAL_RCC_HCPU_ConfigSxModeVolt+0x28>
20025038:	2002ba84 	.word	0x2002ba84
2002503c:	500ca000 	.word	0x500ca000

20025040 <HAL_RCC_HCPU_GetClockSrc>:
20025040:	f04f 43a0 	mov.w	r3, #1342177280	@ 0x50000000
20025044:	280d      	cmp	r0, #13
20025046:	6a1a      	ldr	r2, [r3, #32]
20025048:	d80d      	bhi.n	20025066 <HAL_RCC_HCPU_GetClockSrc+0x26>
2002504a:	f642 73f1 	movw	r3, #12273	@ 0x2ff1
2002504e:	40c3      	lsrs	r3, r0
20025050:	f013 0f01 	tst.w	r3, #1
20025054:	bf0c      	ite	eq
20025056:	2301      	moveq	r3, #1
20025058:	2303      	movne	r3, #3
2002505a:	4083      	lsls	r3, r0
2002505c:	4013      	ands	r3, r2
2002505e:	fa23 f000 	lsr.w	r0, r3, r0
20025062:	b2c0      	uxtb	r0, r0
20025064:	4770      	bx	lr
20025066:	2301      	movs	r3, #1
20025068:	e7f7      	b.n	2002505a <HAL_RCC_HCPU_GetClockSrc+0x1a>
	...

2002506c <HAL_RCC_HCPU_GetDLLFreq>:
2002506c:	2801      	cmp	r0, #1
2002506e:	d003      	beq.n	20025078 <HAL_RCC_HCPU_GetDLLFreq+0xc>
20025070:	2802      	cmp	r0, #2
20025072:	d00e      	beq.n	20025092 <HAL_RCC_HCPU_GetDLLFreq+0x26>
20025074:	2000      	movs	r0, #0
20025076:	4770      	bx	lr
20025078:	f04f 43a0 	mov.w	r3, #1342177280	@ 0x50000000
2002507c:	6adb      	ldr	r3, [r3, #44]	@ 0x2c
2002507e:	b163      	cbz	r3, 2002509a <HAL_RCC_HCPU_GetDLLFreq+0x2e>
20025080:	f013 0001 	ands.w	r0, r3, #1
20025084:	d00a      	beq.n	2002509c <HAL_RCC_HCPU_GetDLLFreq+0x30>
20025086:	4806      	ldr	r0, [pc, #24]	@ (200250a0 <HAL_RCC_HCPU_GetDLLFreq+0x34>)
20025088:	f3c3 0383 	ubfx	r3, r3, #2, #4
2002508c:	fb03 0000 	mla	r0, r3, r0, r0
20025090:	4770      	bx	lr
20025092:	f04f 43a0 	mov.w	r3, #1342177280	@ 0x50000000
20025096:	6b1b      	ldr	r3, [r3, #48]	@ 0x30
20025098:	e7f1      	b.n	2002507e <HAL_RCC_HCPU_GetDLLFreq+0x12>
2002509a:	4618      	mov	r0, r3
2002509c:	4770      	bx	lr
2002509e:	bf00      	nop
200250a0:	016e3600 	.word	0x016e3600

200250a4 <HAL_RCC_HCPU_GetDLL1Freq>:
200250a4:	2001      	movs	r0, #1
200250a6:	f7ff bfe1 	b.w	2002506c <HAL_RCC_HCPU_GetDLLFreq>

200250aa <HAL_RCC_HCPU_GetDLL2Freq>:
200250aa:	2002      	movs	r0, #2
200250ac:	f7ff bfde 	b.w	2002506c <HAL_RCC_HCPU_GetDLLFreq>

200250b0 <HAL_RCC_HCPU_GetDLL3Freq>:
200250b0:	2000      	movs	r0, #0
200250b2:	4770      	bx	lr

200250b4 <HAL_RCC_HCPU_EnableDLL>:
200250b4:	4b23      	ldr	r3, [pc, #140]	@ (20025144 <HAL_RCC_HCPU_EnableDLL+0x90>)
200250b6:	f1a1 71b7 	sub.w	r1, r1, #23986176	@ 0x16e0000
200250ba:	f5a1 5158 	sub.w	r1, r1, #13824	@ 0x3600
200250be:	4299      	cmp	r1, r3
200250c0:	b510      	push	{r4, lr}
200250c2:	d83c      	bhi.n	2002513e <HAL_RCC_HCPU_EnableDLL+0x8a>
200250c4:	2801      	cmp	r0, #1
200250c6:	d002      	beq.n	200250ce <HAL_RCC_HCPU_EnableDLL+0x1a>
200250c8:	2802      	cmp	r0, #2
200250ca:	d036      	beq.n	2002513a <HAL_RCC_HCPU_EnableDLL+0x86>
200250cc:	e7fe      	b.n	200250cc <HAL_RCC_HCPU_EnableDLL+0x18>
200250ce:	4c1e      	ldr	r4, [pc, #120]	@ (20025148 <HAL_RCC_HCPU_EnableDLL+0x94>)
200250d0:	4b1e      	ldr	r3, [pc, #120]	@ (2002514c <HAL_RCC_HCPU_EnableDLL+0x98>)
200250d2:	f8d3 2094 	ldr.w	r2, [r3, #148]	@ 0x94
200250d6:	0790      	lsls	r0, r2, #30
200250d8:	bf58      	it	pl
200250da:	f8d3 2094 	ldrpl.w	r2, [r3, #148]	@ 0x94
200250de:	f04f 0000 	mov.w	r0, #0
200250e2:	bf5c      	itt	pl
200250e4:	f042 0202 	orrpl.w	r2, r2, #2
200250e8:	f8c3 2094 	strpl.w	r2, [r3, #148]	@ 0x94
200250ec:	f8d3 2094 	ldr.w	r2, [r3, #148]	@ 0x94
200250f0:	07d2      	lsls	r2, r2, #31
200250f2:	bf5e      	ittt	pl
200250f4:	f8d3 2094 	ldrpl.w	r2, [r3, #148]	@ 0x94
200250f8:	f042 0201 	orrpl.w	r2, r2, #1
200250fc:	f8c3 2094 	strpl.w	r2, [r3, #148]	@ 0x94
20025100:	4a13      	ldr	r2, [pc, #76]	@ (20025150 <HAL_RCC_HCPU_EnableDLL+0x9c>)
20025102:	6823      	ldr	r3, [r4, #0]
20025104:	fbb1 f1f2 	udiv	r1, r1, r2
20025108:	f023 0301 	bic.w	r3, r3, #1
2002510c:	6023      	str	r3, [r4, #0]
2002510e:	6823      	ldr	r3, [r4, #0]
20025110:	f423 5300 	bic.w	r3, r3, #8192	@ 0x2000
20025114:	f023 033c 	bic.w	r3, r3, #60	@ 0x3c
20025118:	ea43 0381 	orr.w	r3, r3, r1, lsl #2
2002511c:	f443 5380 	orr.w	r3, r3, #4096	@ 0x1000
20025120:	f043 0301 	orr.w	r3, r3, #1
20025124:	6023      	str	r3, [r4, #0]
20025126:	f7fd f83e 	bl	200221a6 <HAL_Delay_us>
2002512a:	200a      	movs	r0, #10
2002512c:	f7fd f83b 	bl	200221a6 <HAL_Delay_us>
20025130:	6823      	ldr	r3, [r4, #0]
20025132:	2b00      	cmp	r3, #0
20025134:	dafc      	bge.n	20025130 <HAL_RCC_HCPU_EnableDLL+0x7c>
20025136:	2000      	movs	r0, #0
20025138:	bd10      	pop	{r4, pc}
2002513a:	4c06      	ldr	r4, [pc, #24]	@ (20025154 <HAL_RCC_HCPU_EnableDLL+0xa0>)
2002513c:	e7c8      	b.n	200250d0 <HAL_RCC_HCPU_EnableDLL+0x1c>
2002513e:	2001      	movs	r0, #1
20025140:	e7fa      	b.n	20025138 <HAL_RCC_HCPU_EnableDLL+0x84>
20025142:	bf00      	nop
20025144:	15752a00 	.word	0x15752a00
20025148:	5000002c 	.word	0x5000002c
2002514c:	5000b000 	.word	0x5000b000
20025150:	016e3600 	.word	0x016e3600
20025154:	50000030 	.word	0x50000030

20025158 <HAL_RCC_HCPU_EnableDLL1>:
20025158:	4601      	mov	r1, r0
2002515a:	2001      	movs	r0, #1
2002515c:	f7ff bfaa 	b.w	200250b4 <HAL_RCC_HCPU_EnableDLL>

20025160 <HAL_RCC_HCPU_EnableDLL2>:
20025160:	4601      	mov	r1, r0
20025162:	2002      	movs	r0, #2
20025164:	f7ff bfa6 	b.w	200250b4 <HAL_RCC_HCPU_EnableDLL>

20025168 <HAL_RCC_HCPU_DisableDLL1>:
20025168:	f04f 42a0 	mov.w	r2, #1342177280	@ 0x50000000
2002516c:	6ad3      	ldr	r3, [r2, #44]	@ 0x2c
2002516e:	2000      	movs	r0, #0
20025170:	f023 0301 	bic.w	r3, r3, #1
20025174:	62d3      	str	r3, [r2, #44]	@ 0x2c
20025176:	4770      	bx	lr

20025178 <HAL_RCC_GetSysCLKFreq>:
20025178:	2801      	cmp	r0, #1
2002517a:	d108      	bne.n	2002518e <HAL_RCC_GetSysCLKFreq+0x16>
2002517c:	f04f 43a0 	mov.w	r3, #1342177280	@ 0x50000000
20025180:	6a1b      	ldr	r3, [r3, #32]
20025182:	f003 0303 	and.w	r3, r3, #3
20025186:	2b03      	cmp	r3, #3
20025188:	d101      	bne.n	2002518e <HAL_RCC_GetSysCLKFreq+0x16>
2002518a:	f7ff bf8b 	b.w	200250a4 <HAL_RCC_HCPU_GetDLL1Freq>
2002518e:	4801      	ldr	r0, [pc, #4]	@ (20025194 <HAL_RCC_GetSysCLKFreq+0x1c>)
20025190:	4770      	bx	lr
20025192:	bf00      	nop
20025194:	02dc6c00 	.word	0x02dc6c00

20025198 <HAL_RCC_GetHCLKFreq>:
20025198:	1e02      	subs	r2, r0, #0
2002519a:	bf08      	it	eq
2002519c:	2201      	moveq	r2, #1
2002519e:	b508      	push	{r3, lr}
200251a0:	4610      	mov	r0, r2
200251a2:	f7ff ffe9 	bl	20025178 <HAL_RCC_GetSysCLKFreq>
200251a6:	2a01      	cmp	r2, #1
200251a8:	d002      	beq.n	200251b0 <HAL_RCC_GetHCLKFreq+0x18>
200251aa:	2a02      	cmp	r2, #2
200251ac:	d00a      	beq.n	200251c4 <HAL_RCC_GetHCLKFreq+0x2c>
200251ae:	e7fe      	b.n	200251ae <HAL_RCC_GetHCLKFreq+0x16>
200251b0:	f04f 43a0 	mov.w	r3, #1342177280	@ 0x50000000
200251b4:	6a5b      	ldr	r3, [r3, #36]	@ 0x24
200251b6:	b2db      	uxtb	r3, r3
200251b8:	2b01      	cmp	r3, #1
200251ba:	bfb8      	it	lt
200251bc:	2301      	movlt	r3, #1
200251be:	fbb0 f0f3 	udiv	r0, r0, r3
200251c2:	bd08      	pop	{r3, pc}
200251c4:	f04f 4380 	mov.w	r3, #1073741824	@ 0x40000000
200251c8:	695b      	ldr	r3, [r3, #20]
200251ca:	f003 033f 	and.w	r3, r3, #63	@ 0x3f
200251ce:	e7f3      	b.n	200251b8 <HAL_RCC_GetHCLKFreq+0x20>

200251d0 <HAL_RCC_HCPU_ClockSelect>:
200251d0:	f04f 43a0 	mov.w	r3, #1342177280	@ 0x50000000
200251d4:	b510      	push	{r4, lr}
200251d6:	280d      	cmp	r0, #13
200251d8:	6a1b      	ldr	r3, [r3, #32]
200251da:	d818      	bhi.n	2002520e <HAL_RCC_HCPU_ClockSelect+0x3e>
200251dc:	f642 72f1 	movw	r2, #12273	@ 0x2ff1
200251e0:	40c2      	lsrs	r2, r0
200251e2:	f012 0f01 	tst.w	r2, #1
200251e6:	bf0c      	ite	eq
200251e8:	2201      	moveq	r2, #1
200251ea:	2203      	movne	r2, #3
200251ec:	fa02 f400 	lsl.w	r4, r2, r0
200251f0:	4011      	ands	r1, r2
200251f2:	f04f 42a0 	mov.w	r2, #1342177280	@ 0x50000000
200251f6:	ea23 0304 	bic.w	r3, r3, r4
200251fa:	4081      	lsls	r1, r0
200251fc:	430b      	orrs	r3, r1
200251fe:	6213      	str	r3, [r2, #32]
20025200:	b920      	cbnz	r0, 2002520c <HAL_RCC_HCPU_ClockSelect+0x3c>
20025202:	2001      	movs	r0, #1
20025204:	f7ff ffc8 	bl	20025198 <HAL_RCC_GetHCLKFreq>
20025208:	4b02      	ldr	r3, [pc, #8]	@ (20025214 <HAL_RCC_HCPU_ClockSelect+0x44>)
2002520a:	6018      	str	r0, [r3, #0]
2002520c:	bd10      	pop	{r4, pc}
2002520e:	2201      	movs	r2, #1
20025210:	e7ec      	b.n	200251ec <HAL_RCC_HCPU_ClockSelect+0x1c>
20025212:	bf00      	nop
20025214:	20042c10 	.word	0x20042c10

20025218 <HAL_RCC_HCPU_SetDiv>:
20025218:	2800      	cmp	r0, #0
2002521a:	bfd8      	it	le
2002521c:	2000      	movle	r0, #0
2002521e:	b508      	push	{r3, lr}
20025220:	bfcc      	ite	gt
20025222:	23ff      	movgt	r3, #255	@ 0xff
20025224:	4603      	movle	r3, r0
20025226:	2900      	cmp	r1, #0
20025228:	db12      	blt.n	20025250 <HAL_RCC_HCPU_SetDiv+0x38>
2002522a:	2a00      	cmp	r2, #0
2002522c:	f443 63e0 	orr.w	r3, r3, #1792	@ 0x700
20025230:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
20025234:	da0e      	bge.n	20025254 <HAL_RCC_HCPU_SetDiv+0x3c>
20025236:	f04f 41a0 	mov.w	r1, #1342177280	@ 0x50000000
2002523a:	6a4a      	ldr	r2, [r1, #36]	@ 0x24
2002523c:	ea22 0303 	bic.w	r3, r2, r3
20025240:	4303      	orrs	r3, r0
20025242:	624b      	str	r3, [r1, #36]	@ 0x24
20025244:	2001      	movs	r0, #1
20025246:	f7ff ffa7 	bl	20025198 <HAL_RCC_GetHCLKFreq>
2002524a:	4b07      	ldr	r3, [pc, #28]	@ (20025268 <HAL_RCC_HCPU_SetDiv+0x50>)
2002524c:	6018      	str	r0, [r3, #0]
2002524e:	bd08      	pop	{r3, pc}
20025250:	2a00      	cmp	r2, #0
20025252:	db04      	blt.n	2002525e <HAL_RCC_HCPU_SetDiv+0x46>
20025254:	f443 43e0 	orr.w	r3, r3, #28672	@ 0x7000
20025258:	ea40 3002 	orr.w	r0, r0, r2, lsl #12
2002525c:	e7eb      	b.n	20025236 <HAL_RCC_HCPU_SetDiv+0x1e>
2002525e:	2b00      	cmp	r3, #0
20025260:	d0f0      	beq.n	20025244 <HAL_RCC_HCPU_SetDiv+0x2c>
20025262:	23ff      	movs	r3, #255	@ 0xff
20025264:	e7e7      	b.n	20025236 <HAL_RCC_HCPU_SetDiv+0x1e>
20025266:	bf00      	nop
20025268:	20042c10 	.word	0x20042c10

2002526c <HAL_RCC_HCPU_SwitchDvfsD2S>:
2002526c:	b570      	push	{r4, r5, r6, lr}
2002526e:	460c      	mov	r4, r1
20025270:	4d19      	ldr	r5, [pc, #100]	@ (200252d8 <HAL_RCC_HCPU_SwitchDvfsD2S+0x6c>)
20025272:	4606      	mov	r6, r0
20025274:	f7ff feb8 	bl	20024fe8 <HAL_RCC_HCPU_ConfigSxModeVolt>
20025278:	692b      	ldr	r3, [r5, #16]
2002527a:	20fa      	movs	r0, #250	@ 0xfa
2002527c:	f023 0304 	bic.w	r3, r3, #4
20025280:	612b      	str	r3, [r5, #16]
20025282:	f7fc ff90 	bl	200221a6 <HAL_Delay_us>
20025286:	2c30      	cmp	r4, #48	@ 0x30
20025288:	d80d      	bhi.n	200252a6 <HAL_RCC_HCPU_SwitchDvfsD2S+0x3a>
2002528a:	2100      	movs	r1, #0
2002528c:	4608      	mov	r0, r1
2002528e:	f7ff ff9f 	bl	200251d0 <HAL_RCC_HCPU_ClockSelect>
20025292:	2030      	movs	r0, #48	@ 0x30
20025294:	2204      	movs	r2, #4
20025296:	2100      	movs	r1, #0
20025298:	fbb0 f0f4 	udiv	r0, r0, r4
2002529c:	f7ff ffbc 	bl	20025218 <HAL_RCC_HCPU_SetDiv>
200252a0:	2400      	movs	r4, #0
200252a2:	4620      	mov	r0, r4
200252a4:	bd70      	pop	{r4, r5, r6, pc}
200252a6:	f7fd fcb9 	bl	20022c1c <HAL_HPAON_EnableXT48>
200252aa:	480c      	ldr	r0, [pc, #48]	@ (200252dc <HAL_RCC_HCPU_SwitchDvfsD2S+0x70>)
200252ac:	eb00 00c6 	add.w	r0, r0, r6, lsl #3
200252b0:	6843      	ldr	r3, [r0, #4]
200252b2:	480b      	ldr	r0, [pc, #44]	@ (200252e0 <HAL_RCC_HCPU_SwitchDvfsD2S+0x74>)
200252b4:	61eb      	str	r3, [r5, #28]
200252b6:	4360      	muls	r0, r4
200252b8:	f7ff ff4e 	bl	20025158 <HAL_RCC_HCPU_EnableDLL1>
200252bc:	4604      	mov	r4, r0
200252be:	2800      	cmp	r0, #0
200252c0:	d1ef      	bne.n	200252a2 <HAL_RCC_HCPU_SwitchDvfsD2S+0x36>
200252c2:	2101      	movs	r1, #1
200252c4:	2206      	movs	r2, #6
200252c6:	4608      	mov	r0, r1
200252c8:	f7ff ffa6 	bl	20025218 <HAL_RCC_HCPU_SetDiv>
200252cc:	2103      	movs	r1, #3
200252ce:	4620      	mov	r0, r4
200252d0:	f7ff ff7e 	bl	200251d0 <HAL_RCC_HCPU_ClockSelect>
200252d4:	e7e4      	b.n	200252a0 <HAL_RCC_HCPU_SwitchDvfsD2S+0x34>
200252d6:	bf00      	nop
200252d8:	5000b000 	.word	0x5000b000
200252dc:	2002ba84 	.word	0x2002ba84
200252e0:	000f4240 	.word	0x000f4240

200252e4 <HAL_RCC_HCPU_SwitchDvfsS2D.isra.0>:
200252e4:	e92d 41f3 	stmdb	sp!, {r0, r1, r4, r5, r6, r7, r8, lr}
200252e8:	4c1d      	ldr	r4, [pc, #116]	@ (20025360 <HAL_RCC_HCPU_SwitchDvfsS2D.isra.0+0x7c>)
200252ea:	4f1e      	ldr	r7, [pc, #120]	@ (20025364 <HAL_RCC_HCPU_SwitchDvfsS2D.isra.0+0x80>)
200252ec:	eb04 02c0 	add.w	r2, r4, r0, lsl #3
200252f0:	6b3b      	ldr	r3, [r7, #48]	@ 0x30
200252f2:	7892      	ldrb	r2, [r2, #2]
200252f4:	4605      	mov	r5, r0
200252f6:	f362 5317 	bfi	r3, r2, #20, #4
200252fa:	ea4f 08c0 	mov.w	r8, r0, lsl #3
200252fe:	633b      	str	r3, [r7, #48]	@ 0x30
20025300:	f10d 0007 	add.w	r0, sp, #7
20025304:	460e      	mov	r6, r1
20025306:	f007 f965 	bl	2002c5d4 <HAL_PMU_GetHpsysVoutRef>
2002530a:	b110      	cbz	r0, 20025312 <HAL_RCC_HCPU_SwitchDvfsS2D.isra.0+0x2e>
2002530c:	230b      	movs	r3, #11
2002530e:	f88d 3007 	strb.w	r3, [sp, #7]
20025312:	f89d 1007 	ldrb.w	r1, [sp, #7]
20025316:	f914 2035 	ldrsb.w	r2, [r4, r5, lsl #3]
2002531a:	6cfb      	ldr	r3, [r7, #76]	@ 0x4c
2002531c:	440a      	add	r2, r1
2002531e:	2100      	movs	r1, #0
20025320:	f362 0385 	bfi	r3, r2, #2, #4
20025324:	4608      	mov	r0, r1
20025326:	64fb      	str	r3, [r7, #76]	@ 0x4c
20025328:	f7ff ff52 	bl	200251d0 <HAL_RCC_HCPU_ClockSelect>
2002532c:	2e30      	cmp	r6, #48	@ 0x30
2002532e:	d900      	bls.n	20025332 <HAL_RCC_HCPU_SwitchDvfsS2D.isra.0+0x4e>
20025330:	e7fe      	b.n	20025330 <HAL_RCC_HCPU_SwitchDvfsS2D.isra.0+0x4c>
20025332:	2030      	movs	r0, #48	@ 0x30
20025334:	2204      	movs	r2, #4
20025336:	2100      	movs	r1, #0
20025338:	fbb0 f0f6 	udiv	r0, r0, r6
2002533c:	f7ff ff6c 	bl	20025218 <HAL_RCC_HCPU_SetDiv>
20025340:	f7ff ff12 	bl	20025168 <HAL_RCC_HCPU_DisableDLL1>
20025344:	f7fd fc76 	bl	20022c34 <HAL_HPAON_DisableXT48>
20025348:	4444      	add	r4, r8
2002534a:	4b07      	ldr	r3, [pc, #28]	@ (20025368 <HAL_RCC_HCPU_SwitchDvfsS2D.isra.0+0x84>)
2002534c:	6862      	ldr	r2, [r4, #4]
2002534e:	61da      	str	r2, [r3, #28]
20025350:	691a      	ldr	r2, [r3, #16]
20025352:	f042 0204 	orr.w	r2, r2, #4
20025356:	611a      	str	r2, [r3, #16]
20025358:	b002      	add	sp, #8
2002535a:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
2002535e:	bf00      	nop
20025360:	2002ba84 	.word	0x2002ba84
20025364:	500ca000 	.word	0x500ca000
20025368:	5000b000 	.word	0x5000b000

2002536c <HAL_RCC_HCPU_ConfigDvfs>:
2002536c:	b570      	push	{r4, r5, r6, lr}
2002536e:	4e31      	ldr	r6, [pc, #196]	@ (20025434 <HAL_RCC_HCPU_ConfigDvfs+0xc8>)
20025370:	4605      	mov	r5, r0
20025372:	7833      	ldrb	r3, [r6, #0]
20025374:	460c      	mov	r4, r1
20025376:	2b01      	cmp	r3, #1
20025378:	d943      	bls.n	20025402 <HAL_RCC_HCPU_ConfigDvfs+0x96>
2002537a:	3b02      	subs	r3, #2
2002537c:	2b01      	cmp	r3, #1
2002537e:	d902      	bls.n	20025386 <HAL_RCC_HCPU_ConfigDvfs+0x1a>
20025380:	2501      	movs	r5, #1
20025382:	4628      	mov	r0, r5
20025384:	bd70      	pop	{r4, r5, r6, pc}
20025386:	4b2c      	ldr	r3, [pc, #176]	@ (20025438 <HAL_RCC_HCPU_ConfigDvfs+0xcc>)
20025388:	f853 2021 	ldr.w	r2, [r3, r1, lsl #2]
2002538c:	f7ff fe8d 	bl	200250aa <HAL_RCC_HCPU_GetDLL2Freq>
20025390:	4290      	cmp	r0, r2
20025392:	d8f5      	bhi.n	20025380 <HAL_RCC_HCPU_ConfigDvfs+0x14>
20025394:	2901      	cmp	r1, #1
20025396:	d805      	bhi.n	200253a4 <HAL_RCC_HCPU_ConfigDvfs+0x38>
20025398:	4629      	mov	r1, r5
2002539a:	4620      	mov	r0, r4
2002539c:	f7ff ffa2 	bl	200252e4 <HAL_RCC_HCPU_SwitchDvfsS2D.isra.0>
200253a0:	2500      	movs	r5, #0
200253a2:	e035      	b.n	20025410 <HAL_RCC_HCPU_ConfigDvfs+0xa4>
200253a4:	2100      	movs	r1, #0
200253a6:	4608      	mov	r0, r1
200253a8:	f7ff ff12 	bl	200251d0 <HAL_RCC_HCPU_ClockSelect>
200253ac:	4620      	mov	r0, r4
200253ae:	f7ff fe1b 	bl	20024fe8 <HAL_RCC_HCPU_ConfigSxModeVolt>
200253b2:	20fa      	movs	r0, #250	@ 0xfa
200253b4:	f7fc fef7 	bl	200221a6 <HAL_Delay_us>
200253b8:	f7ff fed6 	bl	20025168 <HAL_RCC_HCPU_DisableDLL1>
200253bc:	2d30      	cmp	r5, #48	@ 0x30
200253be:	d80d      	bhi.n	200253dc <HAL_RCC_HCPU_ConfigDvfs+0x70>
200253c0:	f7fd fc38 	bl	20022c34 <HAL_HPAON_DisableXT48>
200253c4:	2100      	movs	r1, #0
200253c6:	4608      	mov	r0, r1
200253c8:	f7ff ff02 	bl	200251d0 <HAL_RCC_HCPU_ClockSelect>
200253cc:	2204      	movs	r2, #4
200253ce:	2100      	movs	r1, #0
200253d0:	2030      	movs	r0, #48	@ 0x30
200253d2:	fbb0 f0f5 	udiv	r0, r0, r5
200253d6:	f7ff ff1f 	bl	20025218 <HAL_RCC_HCPU_SetDiv>
200253da:	e7e1      	b.n	200253a0 <HAL_RCC_HCPU_ConfigDvfs+0x34>
200253dc:	f7fd fc1e 	bl	20022c1c <HAL_HPAON_EnableXT48>
200253e0:	4816      	ldr	r0, [pc, #88]	@ (2002543c <HAL_RCC_HCPU_ConfigDvfs+0xd0>)
200253e2:	4368      	muls	r0, r5
200253e4:	f7ff feb8 	bl	20025158 <HAL_RCC_HCPU_EnableDLL1>
200253e8:	4605      	mov	r5, r0
200253ea:	2800      	cmp	r0, #0
200253ec:	d1c8      	bne.n	20025380 <HAL_RCC_HCPU_ConfigDvfs+0x14>
200253ee:	2101      	movs	r1, #1
200253f0:	2206      	movs	r2, #6
200253f2:	4608      	mov	r0, r1
200253f4:	f7ff ff10 	bl	20025218 <HAL_RCC_HCPU_SetDiv>
200253f8:	2103      	movs	r1, #3
200253fa:	4628      	mov	r0, r5
200253fc:	f7ff fee8 	bl	200251d0 <HAL_RCC_HCPU_ClockSelect>
20025400:	e7ce      	b.n	200253a0 <HAL_RCC_HCPU_ConfigDvfs+0x34>
20025402:	2901      	cmp	r1, #1
20025404:	d909      	bls.n	2002541a <HAL_RCC_HCPU_ConfigDvfs+0xae>
20025406:	4601      	mov	r1, r0
20025408:	4620      	mov	r0, r4
2002540a:	f7ff ff2f 	bl	2002526c <HAL_RCC_HCPU_SwitchDvfsD2S>
2002540e:	4605      	mov	r5, r0
20025410:	2000      	movs	r0, #0
20025412:	7034      	strb	r4, [r6, #0]
20025414:	f7fc fec7 	bl	200221a6 <HAL_Delay_us>
20025418:	e7b3      	b.n	20025382 <HAL_RCC_HCPU_ConfigDvfs+0x16>
2002541a:	428b      	cmp	r3, r1
2002541c:	d103      	bne.n	20025426 <HAL_RCC_HCPU_ConfigDvfs+0xba>
2002541e:	f04f 32ff 	mov.w	r2, #4294967295
20025422:	4611      	mov	r1, r2
20025424:	e7d4      	b.n	200253d0 <HAL_RCC_HCPU_ConfigDvfs+0x64>
20025426:	2190      	movs	r1, #144	@ 0x90
20025428:	2002      	movs	r0, #2
2002542a:	f7ff ff1f 	bl	2002526c <HAL_RCC_HCPU_SwitchDvfsD2S>
2002542e:	2800      	cmp	r0, #0
20025430:	d1a6      	bne.n	20025380 <HAL_RCC_HCPU_ConfigDvfs+0x14>
20025432:	e7b1      	b.n	20025398 <HAL_RCC_HCPU_ConfigDvfs+0x2c>
20025434:	20042c14 	.word	0x20042c14
20025438:	2002ba74 	.word	0x2002ba74
2002543c:	000f4240 	.word	0x000f4240

20025440 <HAL_RCC_Reset_and_Halt_LCPU>:
20025440:	4a13      	ldr	r2, [pc, #76]	@ (20025490 <HAL_RCC_Reset_and_Halt_LCPU+0x50>)
20025442:	6813      	ldr	r3, [r2, #0]
20025444:	0759      	lsls	r1, r3, #29
20025446:	d421      	bmi.n	2002548c <HAL_RCC_Reset_and_Halt_LCPU+0x4c>
20025448:	6811      	ldr	r1, [r2, #0]
2002544a:	2800      	cmp	r0, #0
2002544c:	bf0c      	ite	eq
2002544e:	2301      	moveq	r3, #1
20025450:	f04f 33ff 	movne.w	r3, #4294967295
20025454:	f041 0104 	orr.w	r1, r1, #4
20025458:	6011      	str	r1, [r2, #0]
2002545a:	f04f 4280 	mov.w	r2, #1073741824	@ 0x40000000
2002545e:	f443 1380 	orr.w	r3, r3, #1048576	@ 0x100000
20025462:	6013      	str	r3, [r2, #0]
20025464:	6811      	ldr	r1, [r2, #0]
20025466:	2900      	cmp	r1, #0
20025468:	d0fc      	beq.n	20025464 <HAL_RCC_Reset_and_Halt_LCPU+0x24>
2002546a:	4a09      	ldr	r2, [pc, #36]	@ (20025490 <HAL_RCC_Reset_and_Halt_LCPU+0x50>)
2002546c:	6c11      	ldr	r1, [r2, #64]	@ 0x40
2002546e:	06c8      	lsls	r0, r1, #27
20025470:	d506      	bpl.n	20025480 <HAL_RCC_Reset_and_Halt_LCPU+0x40>
20025472:	6c11      	ldr	r1, [r2, #64]	@ 0x40
20025474:	f041 0102 	orr.w	r1, r1, #2
20025478:	6411      	str	r1, [r2, #64]	@ 0x40
2002547a:	6c11      	ldr	r1, [r2, #64]	@ 0x40
2002547c:	06c9      	lsls	r1, r1, #27
2002547e:	d4fc      	bmi.n	2002547a <HAL_RCC_Reset_and_Halt_LCPU+0x3a>
20025480:	f04f 4180 	mov.w	r1, #1073741824	@ 0x40000000
20025484:	680a      	ldr	r2, [r1, #0]
20025486:	ea22 0303 	bic.w	r3, r2, r3
2002548a:	600b      	str	r3, [r1, #0]
2002548c:	4770      	bx	lr
2002548e:	bf00      	nop
20025490:	40040000 	.word	0x40040000

20025494 <HAL_RCC_HCPU_ConfigHCLK>:
20025494:	28f0      	cmp	r0, #240	@ 0xf0
20025496:	d80d      	bhi.n	200254b4 <HAL_RCC_HCPU_ConfigHCLK+0x20>
20025498:	2890      	cmp	r0, #144	@ 0x90
2002549a:	d807      	bhi.n	200254ac <HAL_RCC_HCPU_ConfigHCLK+0x18>
2002549c:	2830      	cmp	r0, #48	@ 0x30
2002549e:	d807      	bhi.n	200254b0 <HAL_RCC_HCPU_ConfigHCLK+0x1c>
200254a0:	2818      	cmp	r0, #24
200254a2:	bf94      	ite	ls
200254a4:	2100      	movls	r1, #0
200254a6:	2101      	movhi	r1, #1
200254a8:	f7ff bf60 	b.w	2002536c <HAL_RCC_HCPU_ConfigDvfs>
200254ac:	2103      	movs	r1, #3
200254ae:	e7fb      	b.n	200254a8 <HAL_RCC_HCPU_ConfigHCLK+0x14>
200254b0:	2102      	movs	r1, #2
200254b2:	e7f9      	b.n	200254a8 <HAL_RCC_HCPU_ConfigHCLK+0x14>
200254b4:	2001      	movs	r0, #1
200254b6:	4770      	bx	lr

200254b8 <spi_nor_get_ext_cfg_by_id>:
200254b8:	2000      	movs	r0, #0
200254ba:	4770      	bx	lr

200254bc <spi_nor_get_user_flash_cfg>:
200254bc:	2000      	movs	r0, #0
200254be:	4770      	bx	lr

200254c0 <spi_flash_get_rdid>:
200254c0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
200254c2:	4604      	mov	r4, r0
200254c4:	3801      	subs	r0, #1
200254c6:	b2c0      	uxtb	r0, r0
200254c8:	28fd      	cmp	r0, #253	@ 0xfd
200254ca:	d816      	bhi.n	200254fa <spi_flash_get_rdid+0x3a>
200254cc:	2500      	movs	r5, #0
200254ce:	4e0d      	ldr	r6, [pc, #52]	@ (20025504 <spi_flash_get_rdid+0x44>)
200254d0:	f856 0b04 	ldr.w	r0, [r6], #4
200254d4:	7807      	ldrb	r7, [r0, #0]
200254d6:	b937      	cbnz	r7, 200254e6 <spi_flash_get_rdid+0x26>
200254d8:	3501      	adds	r5, #1
200254da:	2d06      	cmp	r5, #6
200254dc:	d1f8      	bne.n	200254d0 <spi_flash_get_rdid+0x10>
200254de:	4620      	mov	r0, r4
200254e0:	f7ff ffec 	bl	200254bc <spi_nor_get_user_flash_cfg>
200254e4:	e00d      	b.n	20025502 <spi_flash_get_rdid+0x42>
200254e6:	42a7      	cmp	r7, r4
200254e8:	d105      	bne.n	200254f6 <spi_flash_get_rdid+0x36>
200254ea:	7847      	ldrb	r7, [r0, #1]
200254ec:	4297      	cmp	r7, r2
200254ee:	d102      	bne.n	200254f6 <spi_flash_get_rdid+0x36>
200254f0:	7887      	ldrb	r7, [r0, #2]
200254f2:	428f      	cmp	r7, r1
200254f4:	d003      	beq.n	200254fe <spi_flash_get_rdid+0x3e>
200254f6:	3008      	adds	r0, #8
200254f8:	e7ec      	b.n	200254d4 <spi_flash_get_rdid+0x14>
200254fa:	2000      	movs	r0, #0
200254fc:	e001      	b.n	20025502 <spi_flash_get_rdid+0x42>
200254fe:	b103      	cbz	r3, 20025502 <spi_flash_get_rdid+0x42>
20025500:	701d      	strb	r5, [r3, #0]
20025502:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
20025504:	20042c18 	.word	0x20042c18

20025508 <spi_flash_get_cmd_by_id>:
20025508:	b507      	push	{r0, r1, r2, lr}
2002550a:	f10d 0307 	add.w	r3, sp, #7
2002550e:	f7ff ffd7 	bl	200254c0 <spi_flash_get_rdid>
20025512:	4b06      	ldr	r3, [pc, #24]	@ (2002552c <spi_flash_get_cmd_by_id+0x24>)
20025514:	b140      	cbz	r0, 20025528 <spi_flash_get_cmd_by_id+0x20>
20025516:	f44f 7105 	mov.w	r1, #532	@ 0x214
2002551a:	f89d 2007 	ldrb.w	r2, [sp, #7]
2002551e:	fb01 3002 	mla	r0, r1, r2, r3
20025522:	b003      	add	sp, #12
20025524:	f85d fb04 	ldr.w	pc, [sp], #4
20025528:	4618      	mov	r0, r3
2002552a:	e7fa      	b.n	20025522 <spi_flash_get_cmd_by_id+0x1a>
2002552c:	20042e50 	.word	0x20042e50

20025530 <spi_flash_get_size_by_id>:
20025530:	b508      	push	{r3, lr}
20025532:	2300      	movs	r3, #0
20025534:	f7ff ffc4 	bl	200254c0 <spi_flash_get_rdid>
20025538:	b108      	cbz	r0, 2002553e <spi_flash_get_size_by_id+0xe>
2002553a:	6840      	ldr	r0, [r0, #4]
2002553c:	bd08      	pop	{r3, pc}
2002553e:	f44f 2000 	mov.w	r0, #524288	@ 0x80000
20025542:	e7fb      	b.n	2002553c <spi_flash_get_size_by_id+0xc>

20025544 <spi_flash_is_support_dtr>:
20025544:	b508      	push	{r3, lr}
20025546:	2300      	movs	r3, #0
20025548:	f7ff ffba 	bl	200254c0 <spi_flash_get_rdid>
2002554c:	b110      	cbz	r0, 20025554 <spi_flash_is_support_dtr+0x10>
2002554e:	78c0      	ldrb	r0, [r0, #3]
20025550:	f000 0001 	and.w	r0, r0, #1
20025554:	bd08      	pop	{r3, pc}
	...

20025558 <spi_flash_get_otp_base>:
20025558:	b508      	push	{r3, lr}
2002555a:	2300      	movs	r3, #0
2002555c:	f7ff ffb0 	bl	200254c0 <spi_flash_get_rdid>
20025560:	b130      	cbz	r0, 20025570 <spi_flash_get_otp_base+0x18>
20025562:	78c3      	ldrb	r3, [r0, #3]
20025564:	4803      	ldr	r0, [pc, #12]	@ (20025574 <spi_flash_get_otp_base+0x1c>)
20025566:	f003 0306 	and.w	r3, r3, #6
2002556a:	2b02      	cmp	r3, #2
2002556c:	bf18      	it	ne
2002556e:	2000      	movne	r0, #0
20025570:	bd08      	pop	{r3, pc}
20025572:	bf00      	nop
20025574:	00ffc000 	.word	0x00ffc000

20025578 <spi_nand_get_user_flash_cfg>:
20025578:	2000      	movs	r0, #0
2002557a:	4770      	bx	lr

2002557c <spi_nand_get_rdid>:
2002557c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
2002557e:	4604      	mov	r4, r0
20025580:	3801      	subs	r0, #1
20025582:	b2c0      	uxtb	r0, r0
20025584:	28fd      	cmp	r0, #253	@ 0xfd
20025586:	d816      	bhi.n	200255b6 <spi_nand_get_rdid+0x3a>
20025588:	2500      	movs	r5, #0
2002558a:	4e0d      	ldr	r6, [pc, #52]	@ (200255c0 <spi_nand_get_rdid+0x44>)
2002558c:	f856 0b04 	ldr.w	r0, [r6], #4
20025590:	7807      	ldrb	r7, [r0, #0]
20025592:	b937      	cbnz	r7, 200255a2 <spi_nand_get_rdid+0x26>
20025594:	3501      	adds	r5, #1
20025596:	2d06      	cmp	r5, #6
20025598:	d1f8      	bne.n	2002558c <spi_nand_get_rdid+0x10>
2002559a:	4620      	mov	r0, r4
2002559c:	f7ff ffec 	bl	20025578 <spi_nand_get_user_flash_cfg>
200255a0:	e00d      	b.n	200255be <spi_nand_get_rdid+0x42>
200255a2:	42a7      	cmp	r7, r4
200255a4:	d105      	bne.n	200255b2 <spi_nand_get_rdid+0x36>
200255a6:	7847      	ldrb	r7, [r0, #1]
200255a8:	4297      	cmp	r7, r2
200255aa:	d102      	bne.n	200255b2 <spi_nand_get_rdid+0x36>
200255ac:	7887      	ldrb	r7, [r0, #2]
200255ae:	428f      	cmp	r7, r1
200255b0:	d003      	beq.n	200255ba <spi_nand_get_rdid+0x3e>
200255b2:	3008      	adds	r0, #8
200255b4:	e7ec      	b.n	20025590 <spi_nand_get_rdid+0x14>
200255b6:	2000      	movs	r0, #0
200255b8:	e001      	b.n	200255be <spi_nand_get_rdid+0x42>
200255ba:	b103      	cbz	r3, 200255be <spi_nand_get_rdid+0x42>
200255bc:	701d      	strb	r5, [r3, #0]
200255be:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
200255c0:	20043ac8 	.word	0x20043ac8

200255c4 <spi_nand_get_cmd_by_id>:
200255c4:	b507      	push	{r0, r1, r2, lr}
200255c6:	f10d 0307 	add.w	r3, sp, #7
200255ca:	f7ff ffd7 	bl	2002557c <spi_nand_get_rdid>
200255ce:	b130      	cbz	r0, 200255de <spi_nand_get_cmd_by_id+0x1a>
200255d0:	f44f 7205 	mov.w	r2, #532	@ 0x214
200255d4:	f89d 3007 	ldrb.w	r3, [sp, #7]
200255d8:	4802      	ldr	r0, [pc, #8]	@ (200255e4 <spi_nand_get_cmd_by_id+0x20>)
200255da:	fb02 0003 	mla	r0, r2, r3, r0
200255de:	b003      	add	sp, #12
200255e0:	f85d fb04 	ldr.w	pc, [sp], #4
200255e4:	20043ce0 	.word	0x20043ce0

200255e8 <spi_nand_get_ext_cfg_by_id>:
200255e8:	2000      	movs	r0, #0
200255ea:	4770      	bx	lr

200255ec <HAL_GET_FLASH_DEFAUT_INX>:
200255ec:	f04f 30ff 	mov.w	r0, #4294967295
200255f0:	4770      	bx	lr
	...

200255f4 <spi_nand_get_default_ctable>:
200255f4:	b508      	push	{r3, lr}
200255f6:	f7ff fff9 	bl	200255ec <HAL_GET_FLASH_DEFAUT_INX>
200255fa:	1e03      	subs	r3, r0, #0
200255fc:	bfa5      	ittet	ge
200255fe:	f44f 7205 	movge.w	r2, #532	@ 0x214
20025602:	4802      	ldrge	r0, [pc, #8]	@ (2002560c <spi_nand_get_default_ctable+0x18>)
20025604:	2000      	movlt	r0, #0
20025606:	fb02 0003 	mlage	r0, r2, r3, r0
2002560a:	bd08      	pop	{r3, pc}
2002560c:	20043ce0 	.word	0x20043ce0

20025610 <spi_nand_get_size_by_id>:
20025610:	b508      	push	{r3, lr}
20025612:	2300      	movs	r3, #0
20025614:	f7ff ffb2 	bl	2002557c <spi_nand_get_rdid>
20025618:	b108      	cbz	r0, 2002561e <spi_nand_get_size_by_id+0xe>
2002561a:	6840      	ldr	r0, [r0, #4]
2002561c:	bd08      	pop	{r3, pc}
2002561e:	f04f 6080 	mov.w	r0, #67108864	@ 0x4000000
20025622:	e7fb      	b.n	2002561c <spi_nand_get_size_by_id+0xc>

20025624 <spi_nand_get_plane_select_flag>:
20025624:	b508      	push	{r3, lr}
20025626:	2300      	movs	r3, #0
20025628:	f7ff ffa8 	bl	2002557c <spi_nand_get_rdid>
2002562c:	b110      	cbz	r0, 20025634 <spi_nand_get_plane_select_flag+0x10>
2002562e:	78c0      	ldrb	r0, [r0, #3]
20025630:	f3c0 0040 	ubfx	r0, r0, #1, #1
20025634:	bd08      	pop	{r3, pc}

20025636 <spi_nand_get_big_page_flag>:
20025636:	b508      	push	{r3, lr}
20025638:	2300      	movs	r3, #0
2002563a:	f7ff ff9f 	bl	2002557c <spi_nand_get_rdid>
2002563e:	b110      	cbz	r0, 20025646 <spi_nand_get_big_page_flag+0x10>
20025640:	78c0      	ldrb	r0, [r0, #3]
20025642:	f3c0 0081 	ubfx	r0, r0, #2, #2
20025646:	bd08      	pop	{r3, pc}

20025648 <spi_nand_get_ecc_mode>:
20025648:	b508      	push	{r3, lr}
2002564a:	2300      	movs	r3, #0
2002564c:	f7ff ff96 	bl	2002557c <spi_nand_get_rdid>
20025650:	b108      	cbz	r0, 20025656 <spi_nand_get_ecc_mode+0xe>
20025652:	78c0      	ldrb	r0, [r0, #3]
20025654:	0900      	lsrs	r0, r0, #4
20025656:	bd08      	pop	{r3, pc}

20025658 <bbm_map_check.part.0>:
20025658:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
2002565a:	4b21      	ldr	r3, [pc, #132]	@ (200256e0 <bbm_map_check.part.0+0x88>)
2002565c:	4606      	mov	r6, r0
2002565e:	681d      	ldr	r5, [r3, #0]
20025660:	4b20      	ldr	r3, [pc, #128]	@ (200256e4 <bbm_map_check.part.0+0x8c>)
20025662:	3d04      	subs	r5, #4
20025664:	681f      	ldr	r7, [r3, #0]
20025666:	2300      	movs	r3, #0
20025668:	f100 0e1a 	add.w	lr, r0, #26
2002566c:	42ab      	cmp	r3, r5
2002566e:	db02      	blt.n	20025676 <bbm_map_check.part.0+0x1e>
20025670:	2000      	movs	r0, #0
20025672:	b003      	add	sp, #12
20025674:	bdf0      	pop	{r4, r5, r6, r7, pc}
20025676:	8b31      	ldrh	r1, [r6, #24]
20025678:	b321      	cbz	r1, 200256c4 <bbm_map_check.part.0+0x6c>
2002567a:	8b72      	ldrh	r2, [r6, #26]
2002567c:	b33a      	cbz	r2, 200256ce <bbm_map_check.part.0+0x76>
2002567e:	42b9      	cmp	r1, r7
20025680:	d201      	bcs.n	20025686 <bbm_map_check.part.0+0x2e>
20025682:	4297      	cmp	r7, r2
20025684:	d905      	bls.n	20025692 <bbm_map_check.part.0+0x3a>
20025686:	4b18      	ldr	r3, [pc, #96]	@ (200256e8 <bbm_map_check.part.0+0x90>)
20025688:	681b      	ldr	r3, [r3, #0]
2002568a:	b10b      	cbz	r3, 20025690 <bbm_map_check.part.0+0x38>
2002568c:	4817      	ldr	r0, [pc, #92]	@ (200256ec <bbm_map_check.part.0+0x94>)
2002568e:	4798      	blx	r3
20025690:	e7fe      	b.n	20025690 <bbm_map_check.part.0+0x38>
20025692:	3301      	adds	r3, #1
20025694:	461c      	mov	r4, r3
20025696:	42ac      	cmp	r4, r5
20025698:	db01      	blt.n	2002569e <bbm_map_check.part.0+0x46>
2002569a:	3604      	adds	r6, #4
2002569c:	e7e6      	b.n	2002566c <bbm_map_check.part.0+0x14>
2002569e:	f83e c024 	ldrh.w	ip, [lr, r4, lsl #2]
200256a2:	f1bc 0f00 	cmp.w	ip, #0
200256a6:	d0f8      	beq.n	2002569a <bbm_map_check.part.0+0x42>
200256a8:	4562      	cmp	r2, ip
200256aa:	d109      	bne.n	200256c0 <bbm_map_check.part.0+0x68>
200256ac:	4b0e      	ldr	r3, [pc, #56]	@ (200256e8 <bbm_map_check.part.0+0x90>)
200256ae:	681d      	ldr	r5, [r3, #0]
200256b0:	b12d      	cbz	r5, 200256be <bbm_map_check.part.0+0x66>
200256b2:	3406      	adds	r4, #6
200256b4:	f830 3024 	ldrh.w	r3, [r0, r4, lsl #2]
200256b8:	480d      	ldr	r0, [pc, #52]	@ (200256f0 <bbm_map_check.part.0+0x98>)
200256ba:	9200      	str	r2, [sp, #0]
200256bc:	47a8      	blx	r5
200256be:	e7fe      	b.n	200256be <bbm_map_check.part.0+0x66>
200256c0:	3401      	adds	r4, #1
200256c2:	e7e8      	b.n	20025696 <bbm_map_check.part.0+0x3e>
200256c4:	eb00 0283 	add.w	r2, r0, r3, lsl #2
200256c8:	8b52      	ldrh	r2, [r2, #26]
200256ca:	2a00      	cmp	r2, #0
200256cc:	d0d0      	beq.n	20025670 <bbm_map_check.part.0+0x18>
200256ce:	4a06      	ldr	r2, [pc, #24]	@ (200256e8 <bbm_map_check.part.0+0x90>)
200256d0:	6814      	ldr	r4, [r2, #0]
200256d2:	b124      	cbz	r4, 200256de <bbm_map_check.part.0+0x86>
200256d4:	eb00 0383 	add.w	r3, r0, r3, lsl #2
200256d8:	8b5a      	ldrh	r2, [r3, #26]
200256da:	4806      	ldr	r0, [pc, #24]	@ (200256f4 <bbm_map_check.part.0+0x9c>)
200256dc:	47a0      	blx	r4
200256de:	e7fe      	b.n	200256de <bbm_map_check.part.0+0x86>
200256e0:	2004cc50 	.word	0x2004cc50
200256e4:	2004cc54 	.word	0x2004cc54
200256e8:	2004cc40 	.word	0x2004cc40
200256ec:	2002ac14 	.word	0x2002ac14
200256f0:	2002ac31 	.word	0x2002ac31
200256f4:	2002ac7e 	.word	0x2002ac7e

200256f8 <bbm_crc_check>:
200256f8:	f04f 32ff 	mov.w	r2, #4294967295
200256fc:	b510      	push	{r4, lr}
200256fe:	4c07      	ldr	r4, [pc, #28]	@ (2002571c <bbm_crc_check+0x24>)
20025700:	4401      	add	r1, r0
20025702:	4288      	cmp	r0, r1
20025704:	d101      	bne.n	2002570a <bbm_crc_check+0x12>
20025706:	43d0      	mvns	r0, r2
20025708:	bd10      	pop	{r4, pc}
2002570a:	f810 3b01 	ldrb.w	r3, [r0], #1
2002570e:	4053      	eors	r3, r2
20025710:	b2db      	uxtb	r3, r3
20025712:	f854 3023 	ldr.w	r3, [r4, r3, lsl #2]
20025716:	ea83 2212 	eor.w	r2, r3, r2, lsr #8
2002571a:	e7f2      	b.n	20025702 <bbm_crc_check+0xa>
2002571c:	2002baa4 	.word	0x2002baa4

20025720 <bbm_get_phy_blk>:
20025720:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
20025722:	4b14      	ldr	r3, [pc, #80]	@ (20025774 <bbm_get_phy_blk+0x54>)
20025724:	4601      	mov	r1, r0
20025726:	681e      	ldr	r6, [r3, #0]
20025728:	42b0      	cmp	r0, r6
2002572a:	d21e      	bcs.n	2002576a <bbm_get_phy_blk+0x4a>
2002572c:	b138      	cbz	r0, 2002573e <bbm_get_phy_blk+0x1e>
2002572e:	4b12      	ldr	r3, [pc, #72]	@ (20025778 <bbm_get_phy_blk+0x58>)
20025730:	2200      	movs	r2, #0
20025732:	681c      	ldr	r4, [r3, #0]
20025734:	4b11      	ldr	r3, [pc, #68]	@ (2002577c <bbm_get_phy_blk+0x5c>)
20025736:	3c04      	subs	r4, #4
20025738:	461d      	mov	r5, r3
2002573a:	4294      	cmp	r4, r2
2002573c:	dc00      	bgt.n	20025740 <bbm_get_phy_blk+0x20>
2002573e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
20025740:	8b1f      	ldrh	r7, [r3, #24]
20025742:	428f      	cmp	r7, r1
20025744:	d10a      	bne.n	2002575c <bbm_get_phy_blk+0x3c>
20025746:	eb05 0582 	add.w	r5, r5, r2, lsl #2
2002574a:	8b6a      	ldrh	r2, [r5, #26]
2002574c:	4296      	cmp	r6, r2
2002574e:	dd0f      	ble.n	20025770 <bbm_get_phy_blk+0x50>
20025750:	4b0b      	ldr	r3, [pc, #44]	@ (20025780 <bbm_get_phy_blk+0x60>)
20025752:	681b      	ldr	r3, [r3, #0]
20025754:	b10b      	cbz	r3, 2002575a <bbm_get_phy_blk+0x3a>
20025756:	480b      	ldr	r0, [pc, #44]	@ (20025784 <bbm_get_phy_blk+0x64>)
20025758:	4798      	blx	r3
2002575a:	e7fe      	b.n	2002575a <bbm_get_phy_blk+0x3a>
2002575c:	b917      	cbnz	r7, 20025764 <bbm_get_phy_blk+0x44>
2002575e:	8b5f      	ldrh	r7, [r3, #26]
20025760:	2f00      	cmp	r7, #0
20025762:	d0ec      	beq.n	2002573e <bbm_get_phy_blk+0x1e>
20025764:	3201      	adds	r2, #1
20025766:	3304      	adds	r3, #4
20025768:	e7e7      	b.n	2002573a <bbm_get_phy_blk+0x1a>
2002576a:	f04f 30ff 	mov.w	r0, #4294967295
2002576e:	e7e6      	b.n	2002573e <bbm_get_phy_blk+0x1e>
20025770:	4610      	mov	r0, r2
20025772:	e7e4      	b.n	2002573e <bbm_get_phy_blk+0x1e>
20025774:	2004cc54 	.word	0x2004cc54
20025778:	2004cc50 	.word	0x2004cc50
2002577c:	2004cc58 	.word	0x2004cc58
20025780:	2004cc40 	.word	0x2004cc40
20025784:	2002ac9c 	.word	0x2002ac9c

20025788 <bbm_get_version_inblk>:
20025788:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
2002578c:	4607      	mov	r7, r0
2002578e:	4688      	mov	r8, r1
20025790:	b087      	sub	sp, #28
20025792:	2900      	cmp	r1, #0
20025794:	d14b      	bne.n	2002582e <bbm_get_version_inblk+0xa6>
20025796:	2500      	movs	r5, #0
20025798:	4628      	mov	r0, r5
2002579a:	b007      	add	sp, #28
2002579c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
200257a0:	2200      	movs	r2, #0
200257a2:	e9cd 2201 	strd	r2, r2, [sp, #4]
200257a6:	4e26      	ldr	r6, [pc, #152]	@ (20025840 <bbm_get_version_inblk+0xb8>)
200257a8:	9100      	str	r1, [sp, #0]
200257aa:	4638      	mov	r0, r7
200257ac:	4621      	mov	r1, r4
200257ae:	6833      	ldr	r3, [r6, #0]
200257b0:	f7fb f9fe 	bl	20020bb0 <port_read_page>
200257b4:	2800      	cmp	r0, #0
200257b6:	dd32      	ble.n	2002581e <bbm_get_version_inblk+0x96>
200257b8:	6832      	ldr	r2, [r6, #0]
200257ba:	6813      	ldr	r3, [r2, #0]
200257bc:	455b      	cmp	r3, fp
200257be:	d123      	bne.n	20025808 <bbm_get_version_inblk+0x80>
200257c0:	6856      	ldr	r6, [r2, #4]
200257c2:	f3c6 061e 	ubfx	r6, r6, #0, #31
200257c6:	42ae      	cmp	r6, r5
200257c8:	dd15      	ble.n	200257f6 <bbm_get_version_inblk+0x6e>
200257ca:	4610      	mov	r0, r2
200257cc:	2110      	movs	r1, #16
200257ce:	9205      	str	r2, [sp, #20]
200257d0:	f7ff ff92 	bl	200256f8 <bbm_crc_check>
200257d4:	9a05      	ldr	r2, [sp, #20]
200257d6:	6913      	ldr	r3, [r2, #16]
200257d8:	4283      	cmp	r3, r0
200257da:	d113      	bne.n	20025804 <bbm_get_version_inblk+0x7c>
200257dc:	f8c8 4000 	str.w	r4, [r8]
200257e0:	4635      	mov	r5, r6
200257e2:	3401      	adds	r4, #1
200257e4:	f8da 1000 	ldr.w	r1, [sl]
200257e8:	f8d9 3000 	ldr.w	r3, [r9]
200257ec:	fbb3 f3f1 	udiv	r3, r3, r1
200257f0:	42a3      	cmp	r3, r4
200257f2:	d8d5      	bhi.n	200257a0 <bbm_get_version_inblk+0x18>
200257f4:	e7d0      	b.n	20025798 <bbm_get_version_inblk+0x10>
200257f6:	4b13      	ldr	r3, [pc, #76]	@ (20025844 <bbm_get_version_inblk+0xbc>)
200257f8:	681b      	ldr	r3, [r3, #0]
200257fa:	b11b      	cbz	r3, 20025804 <bbm_get_version_inblk+0x7c>
200257fc:	4632      	mov	r2, r6
200257fe:	4629      	mov	r1, r5
20025800:	4811      	ldr	r0, [pc, #68]	@ (20025848 <bbm_get_version_inblk+0xc0>)
20025802:	4798      	blx	r3
20025804:	462e      	mov	r6, r5
20025806:	e7eb      	b.n	200257e0 <bbm_get_version_inblk+0x58>
20025808:	1c5a      	adds	r2, r3, #1
2002580a:	d0c5      	beq.n	20025798 <bbm_get_version_inblk+0x10>
2002580c:	4a0d      	ldr	r2, [pc, #52]	@ (20025844 <bbm_get_version_inblk+0xbc>)
2002580e:	6815      	ldr	r5, [r2, #0]
20025810:	2d00      	cmp	r5, #0
20025812:	d0c0      	beq.n	20025796 <bbm_get_version_inblk+0xe>
20025814:	4622      	mov	r2, r4
20025816:	4639      	mov	r1, r7
20025818:	480c      	ldr	r0, [pc, #48]	@ (2002584c <bbm_get_version_inblk+0xc4>)
2002581a:	47a8      	blx	r5
2002581c:	e7bb      	b.n	20025796 <bbm_get_version_inblk+0xe>
2002581e:	4b09      	ldr	r3, [pc, #36]	@ (20025844 <bbm_get_version_inblk+0xbc>)
20025820:	681b      	ldr	r3, [r3, #0]
20025822:	2b00      	cmp	r3, #0
20025824:	d0ee      	beq.n	20025804 <bbm_get_version_inblk+0x7c>
20025826:	4622      	mov	r2, r4
20025828:	4639      	mov	r1, r7
2002582a:	4809      	ldr	r0, [pc, #36]	@ (20025850 <bbm_get_version_inblk+0xc8>)
2002582c:	e7e9      	b.n	20025802 <bbm_get_version_inblk+0x7a>
2002582e:	2400      	movs	r4, #0
20025830:	f8df a020 	ldr.w	sl, [pc, #32]	@ 20025854 <bbm_get_version_inblk+0xcc>
20025834:	4625      	mov	r5, r4
20025836:	f8df 9020 	ldr.w	r9, [pc, #32]	@ 20025858 <bbm_get_version_inblk+0xd0>
2002583a:	f8df b020 	ldr.w	fp, [pc, #32]	@ 2002585c <bbm_get_version_inblk+0xd4>
2002583e:	e7d1      	b.n	200257e4 <bbm_get_version_inblk+0x5c>
20025840:	2004cc44 	.word	0x2004cc44
20025844:	2004cc40 	.word	0x2004cc40
20025848:	2002acbb 	.word	0x2002acbb
2002584c:	2002ace8 	.word	0x2002ace8
20025850:	2002ad19 	.word	0x2002ad19
20025854:	20044958 	.word	0x20044958
20025858:	2004495c 	.word	0x2004495c
2002585c:	5366424d 	.word	0x5366424d

20025860 <bbm_get_map_table>:
20025860:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
20025864:	2801      	cmp	r0, #1
20025866:	4607      	mov	r7, r0
20025868:	f8df b15c 	ldr.w	fp, [pc, #348]	@ 200259c8 <bbm_get_map_table+0x168>
2002586c:	b087      	sub	sp, #28
2002586e:	dd0a      	ble.n	20025886 <bbm_get_map_table+0x26>
20025870:	f8db 3000 	ldr.w	r3, [fp]
20025874:	b91b      	cbnz	r3, 2002587e <bbm_get_map_table+0x1e>
20025876:	2000      	movs	r0, #0
20025878:	b007      	add	sp, #28
2002587a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
2002587e:	4601      	mov	r1, r0
20025880:	4847      	ldr	r0, [pc, #284]	@ (200259a0 <bbm_get_map_table+0x140>)
20025882:	4798      	blx	r3
20025884:	e7f7      	b.n	20025876 <bbm_get_map_table+0x16>
20025886:	f8df 8144 	ldr.w	r8, [pc, #324]	@ 200259cc <bbm_get_map_table+0x16c>
2002588a:	2800      	cmp	r0, #0
2002588c:	d163      	bne.n	20025956 <bbm_get_map_table+0xf6>
2002588e:	f8b8 6000 	ldrh.w	r6, [r8]
20025892:	f8b8 5002 	ldrh.w	r5, [r8, #2]
20025896:	2e00      	cmp	r6, #0
20025898:	d062      	beq.n	20025960 <bbm_get_map_table+0x100>
2002589a:	4630      	mov	r0, r6
2002589c:	a904      	add	r1, sp, #16
2002589e:	f7ff ff73 	bl	20025788 <bbm_get_version_inblk>
200258a2:	4681      	mov	r9, r0
200258a4:	2d00      	cmp	r5, #0
200258a6:	d05d      	beq.n	20025964 <bbm_get_map_table+0x104>
200258a8:	4628      	mov	r0, r5
200258aa:	a905      	add	r1, sp, #20
200258ac:	f7ff ff6c 	bl	20025788 <bbm_get_version_inblk>
200258b0:	4604      	mov	r4, r0
200258b2:	f8db a000 	ldr.w	sl, [fp]
200258b6:	f1ba 0f00 	cmp.w	sl, #0
200258ba:	d005      	beq.n	200258c8 <bbm_get_map_table+0x68>
200258bc:	4623      	mov	r3, r4
200258be:	4632      	mov	r2, r6
200258c0:	4649      	mov	r1, r9
200258c2:	4838      	ldr	r0, [pc, #224]	@ (200259a4 <bbm_get_map_table+0x144>)
200258c4:	9500      	str	r5, [sp, #0]
200258c6:	47d0      	blx	sl
200258c8:	45a1      	cmp	r9, r4
200258ca:	d0d4      	beq.n	20025876 <bbm_get_map_table+0x16>
200258cc:	f04f 0200 	mov.w	r2, #0
200258d0:	bf98      	it	ls
200258d2:	462e      	movls	r6, r5
200258d4:	f107 0308 	add.w	r3, r7, #8
200258d8:	bf94      	ite	ls
200258da:	f828 5013 	strhls.w	r5, [r8, r3, lsl #1]
200258de:	f828 6013 	strhhi.w	r6, [r8, r3, lsl #1]
200258e2:	e9cd 2201 	strd	r2, r2, [sp, #4]
200258e6:	4b30      	ldr	r3, [pc, #192]	@ (200259a8 <bbm_get_map_table+0x148>)
200258e8:	bf88      	it	hi
200258ea:	f8dd a010 	ldrhi.w	sl, [sp, #16]
200258ee:	681b      	ldr	r3, [r3, #0]
200258f0:	bf98      	it	ls
200258f2:	f8dd a014 	ldrls.w	sl, [sp, #20]
200258f6:	f8df 80d8 	ldr.w	r8, [pc, #216]	@ 200259d0 <bbm_get_map_table+0x170>
200258fa:	9300      	str	r3, [sp, #0]
200258fc:	4651      	mov	r1, sl
200258fe:	4630      	mov	r0, r6
20025900:	f8d8 3000 	ldr.w	r3, [r8]
20025904:	bf88      	it	hi
20025906:	464c      	movhi	r4, r9
20025908:	f7fb f952 	bl	20020bb0 <port_read_page>
2002590c:	2800      	cmp	r0, #0
2002590e:	f8db 5000 	ldr.w	r5, [fp]
20025912:	dd38      	ble.n	20025986 <bbm_get_map_table+0x126>
20025914:	f8d8 8000 	ldr.w	r8, [r8]
20025918:	4b24      	ldr	r3, [pc, #144]	@ (200259ac <bbm_get_map_table+0x14c>)
2002591a:	f8d8 2000 	ldr.w	r2, [r8]
2002591e:	429a      	cmp	r2, r3
20025920:	d12b      	bne.n	2002597a <bbm_get_map_table+0x11a>
20025922:	2110      	movs	r1, #16
20025924:	4640      	mov	r0, r8
20025926:	f7ff fee7 	bl	200256f8 <bbm_crc_check>
2002592a:	f8d8 2010 	ldr.w	r2, [r8, #16]
2002592e:	4601      	mov	r1, r0
20025930:	4282      	cmp	r2, r0
20025932:	d11e      	bne.n	20025972 <bbm_get_map_table+0x112>
20025934:	f8d8 1004 	ldr.w	r1, [r8, #4]
20025938:	f3c1 011e 	ubfx	r1, r1, #0, #31
2002593c:	42a1      	cmp	r1, r4
2002593e:	d113      	bne.n	20025968 <bbm_get_map_table+0x108>
20025940:	f44f 7202 	mov.w	r2, #520	@ 0x208
20025944:	481a      	ldr	r0, [pc, #104]	@ (200259b0 <bbm_get_map_table+0x150>)
20025946:	4641      	mov	r1, r8
20025948:	fb02 0007 	mla	r0, r2, r7, r0
2002594c:	f005 f888 	bl	2002aa60 <memcpy>
20025950:	bb0d      	cbnz	r5, 20025996 <bbm_get_map_table+0x136>
20025952:	4620      	mov	r0, r4
20025954:	e790      	b.n	20025878 <bbm_get_map_table+0x18>
20025956:	f8b8 6004 	ldrh.w	r6, [r8, #4]
2002595a:	f8b8 5006 	ldrh.w	r5, [r8, #6]
2002595e:	e79a      	b.n	20025896 <bbm_get_map_table+0x36>
20025960:	46b1      	mov	r9, r6
20025962:	e79f      	b.n	200258a4 <bbm_get_map_table+0x44>
20025964:	462c      	mov	r4, r5
20025966:	e7a4      	b.n	200258b2 <bbm_get_map_table+0x52>
20025968:	b115      	cbz	r5, 20025970 <bbm_get_map_table+0x110>
2002596a:	4622      	mov	r2, r4
2002596c:	4811      	ldr	r0, [pc, #68]	@ (200259b4 <bbm_get_map_table+0x154>)
2002596e:	47a8      	blx	r5
20025970:	e7fe      	b.n	20025970 <bbm_get_map_table+0x110>
20025972:	b10d      	cbz	r5, 20025978 <bbm_get_map_table+0x118>
20025974:	4810      	ldr	r0, [pc, #64]	@ (200259b8 <bbm_get_map_table+0x158>)
20025976:	47a8      	blx	r5
20025978:	e7fe      	b.n	20025978 <bbm_get_map_table+0x118>
2002597a:	b11d      	cbz	r5, 20025984 <bbm_get_map_table+0x124>
2002597c:	4652      	mov	r2, sl
2002597e:	4631      	mov	r1, r6
20025980:	480e      	ldr	r0, [pc, #56]	@ (200259bc <bbm_get_map_table+0x15c>)
20025982:	47a8      	blx	r5
20025984:	e7fe      	b.n	20025984 <bbm_get_map_table+0x124>
20025986:	2d00      	cmp	r5, #0
20025988:	f43f af75 	beq.w	20025876 <bbm_get_map_table+0x16>
2002598c:	4652      	mov	r2, sl
2002598e:	4631      	mov	r1, r6
20025990:	480b      	ldr	r0, [pc, #44]	@ (200259c0 <bbm_get_map_table+0x160>)
20025992:	47a8      	blx	r5
20025994:	e76f      	b.n	20025876 <bbm_get_map_table+0x16>
20025996:	4621      	mov	r1, r4
20025998:	480a      	ldr	r0, [pc, #40]	@ (200259c4 <bbm_get_map_table+0x164>)
2002599a:	47a8      	blx	r5
2002599c:	e7d9      	b.n	20025952 <bbm_get_map_table+0xf2>
2002599e:	bf00      	nop
200259a0:	2002ad37 	.word	0x2002ad37
200259a4:	2002ad4b 	.word	0x2002ad4b
200259a8:	20044958 	.word	0x20044958
200259ac:	5366424d 	.word	0x5366424d
200259b0:	2004cc58 	.word	0x2004cc58
200259b4:	2002ad71 	.word	0x2002ad71
200259b8:	2002adbb 	.word	0x2002adbb
200259bc:	2002adcd 	.word	0x2002adcd
200259c0:	2002ae02 	.word	0x2002ae02
200259c4:	2002ae2e 	.word	0x2002ae2e
200259c8:	2004cc40 	.word	0x2004cc40
200259cc:	2004d068 	.word	0x2004d068
200259d0:	2004cc44 	.word	0x2004cc44

200259d4 <bbm_get_page_num>:
200259d4:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
200259d8:	4605      	mov	r5, r0
200259da:	2400      	movs	r4, #0
200259dc:	4f13      	ldr	r7, [pc, #76]	@ (20025a2c <bbm_get_page_num+0x58>)
200259de:	4e14      	ldr	r6, [pc, #80]	@ (20025a30 <bbm_get_page_num+0x5c>)
200259e0:	f8df 8050 	ldr.w	r8, [pc, #80]	@ 20025a34 <bbm_get_page_num+0x60>
200259e4:	b085      	sub	sp, #20
200259e6:	6839      	ldr	r1, [r7, #0]
200259e8:	6833      	ldr	r3, [r6, #0]
200259ea:	fbb3 f3f1 	udiv	r3, r3, r1
200259ee:	42a3      	cmp	r3, r4
200259f0:	d802      	bhi.n	200259f8 <bbm_get_page_num+0x24>
200259f2:	f04f 34ff 	mov.w	r4, #4294967295
200259f6:	e015      	b.n	20025a24 <bbm_get_page_num+0x50>
200259f8:	2200      	movs	r2, #0
200259fa:	e9cd 2201 	strd	r2, r2, [sp, #4]
200259fe:	f8df 9038 	ldr.w	r9, [pc, #56]	@ 20025a38 <bbm_get_page_num+0x64>
20025a02:	9100      	str	r1, [sp, #0]
20025a04:	4628      	mov	r0, r5
20025a06:	4621      	mov	r1, r4
20025a08:	f8d9 3000 	ldr.w	r3, [r9]
20025a0c:	f7fb f8d0 	bl	20020bb0 <port_read_page>
20025a10:	b120      	cbz	r0, 20025a1c <bbm_get_page_num+0x48>
20025a12:	f8d9 3000 	ldr.w	r3, [r9]
20025a16:	681b      	ldr	r3, [r3, #0]
20025a18:	4543      	cmp	r3, r8
20025a1a:	d101      	bne.n	20025a20 <bbm_get_page_num+0x4c>
20025a1c:	3401      	adds	r4, #1
20025a1e:	e7e2      	b.n	200259e6 <bbm_get_page_num+0x12>
20025a20:	3301      	adds	r3, #1
20025a22:	d1fb      	bne.n	20025a1c <bbm_get_page_num+0x48>
20025a24:	4620      	mov	r0, r4
20025a26:	b005      	add	sp, #20
20025a28:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
20025a2c:	20044958 	.word	0x20044958
20025a30:	2004495c 	.word	0x2004495c
20025a34:	5366424d 	.word	0x5366424d
20025a38:	2004cc44 	.word	0x2004cc44

20025a3c <bbm_read_page>:
20025a3c:	b5f0      	push	{r4, r5, r6, r7, lr}
20025a3e:	4604      	mov	r4, r0
20025a40:	b085      	sub	sp, #20
20025a42:	b280      	uxth	r0, r0
20025a44:	461f      	mov	r7, r3
20025a46:	460d      	mov	r5, r1
20025a48:	4616      	mov	r6, r2
20025a4a:	f7ff fe69 	bl	20025720 <bbm_get_phy_blk>
20025a4e:	1c43      	adds	r3, r0, #1
20025a50:	d108      	bne.n	20025a64 <bbm_read_page+0x28>
20025a52:	4b0a      	ldr	r3, [pc, #40]	@ (20025a7c <bbm_read_page+0x40>)
20025a54:	681b      	ldr	r3, [r3, #0]
20025a56:	b113      	cbz	r3, 20025a5e <bbm_read_page+0x22>
20025a58:	4621      	mov	r1, r4
20025a5a:	4809      	ldr	r0, [pc, #36]	@ (20025a80 <bbm_read_page+0x44>)
20025a5c:	4798      	blx	r3
20025a5e:	2000      	movs	r0, #0
20025a60:	b005      	add	sp, #20
20025a62:	bdf0      	pop	{r4, r5, r6, r7, pc}
20025a64:	9b0c      	ldr	r3, [sp, #48]	@ 0x30
20025a66:	4632      	mov	r2, r6
20025a68:	9302      	str	r3, [sp, #8]
20025a6a:	9b0b      	ldr	r3, [sp, #44]	@ 0x2c
20025a6c:	4629      	mov	r1, r5
20025a6e:	9301      	str	r3, [sp, #4]
20025a70:	9b0a      	ldr	r3, [sp, #40]	@ 0x28
20025a72:	9300      	str	r3, [sp, #0]
20025a74:	463b      	mov	r3, r7
20025a76:	f7fb f89b 	bl	20020bb0 <port_read_page>
20025a7a:	e7f1      	b.n	20025a60 <bbm_read_page+0x24>
20025a7c:	2004cc40 	.word	0x2004cc40
20025a80:	2002ae41 	.word	0x2002ae41

20025a84 <port_write_page>:
20025a84:	4b01      	ldr	r3, [pc, #4]	@ (20025a8c <port_write_page+0x8>)
20025a86:	6818      	ldr	r0, [r3, #0]
20025a88:	4770      	bx	lr
20025a8a:	bf00      	nop
20025a8c:	20044958 	.word	0x20044958

20025a90 <bbm_write_talbe.isra.0>:
20025a90:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
20025a92:	4604      	mov	r4, r0
20025a94:	4608      	mov	r0, r1
20025a96:	460e      	mov	r6, r1
20025a98:	f7ff ff9c 	bl	200259d4 <bbm_get_page_num>
20025a9c:	1e05      	subs	r5, r0, #0
20025a9e:	db25      	blt.n	20025aec <bbm_write_talbe.isra.0+0x5c>
20025aa0:	4b13      	ldr	r3, [pc, #76]	@ (20025af0 <bbm_write_talbe.isra.0+0x60>)
20025aa2:	681a      	ldr	r2, [r3, #0]
20025aa4:	4b13      	ldr	r3, [pc, #76]	@ (20025af4 <bbm_write_talbe.isra.0+0x64>)
20025aa6:	681b      	ldr	r3, [r3, #0]
20025aa8:	fbb3 f3f2 	udiv	r3, r3, r2
20025aac:	429d      	cmp	r5, r3
20025aae:	da1d      	bge.n	20025aec <bbm_write_talbe.isra.0+0x5c>
20025ab0:	4f11      	ldr	r7, [pc, #68]	@ (20025af8 <bbm_write_talbe.isra.0+0x68>)
20025ab2:	21ff      	movs	r1, #255	@ 0xff
20025ab4:	6838      	ldr	r0, [r7, #0]
20025ab6:	f004 ffb9 	bl	2002aa2c <memset>
20025aba:	4264      	negs	r4, r4
20025abc:	490f      	ldr	r1, [pc, #60]	@ (20025afc <bbm_write_talbe.isra.0+0x6c>)
20025abe:	f404 7402 	and.w	r4, r4, #520	@ 0x208
20025ac2:	f44f 7202 	mov.w	r2, #520	@ 0x208
20025ac6:	6838      	ldr	r0, [r7, #0]
20025ac8:	4421      	add	r1, r4
20025aca:	f004 ffc9 	bl	2002aa60 <memcpy>
20025ace:	6838      	ldr	r0, [r7, #0]
20025ad0:	b160      	cbz	r0, 20025aec <bbm_write_talbe.isra.0+0x5c>
20025ad2:	6802      	ldr	r2, [r0, #0]
20025ad4:	4b0a      	ldr	r3, [pc, #40]	@ (20025b00 <bbm_write_talbe.isra.0+0x70>)
20025ad6:	429a      	cmp	r2, r3
20025ad8:	d108      	bne.n	20025aec <bbm_write_talbe.isra.0+0x5c>
20025ada:	f7ff fdbd 	bl	20025658 <bbm_map_check.part.0>
20025ade:	2300      	movs	r3, #0
20025ae0:	9300      	str	r3, [sp, #0]
20025ae2:	4629      	mov	r1, r5
20025ae4:	4630      	mov	r0, r6
20025ae6:	683a      	ldr	r2, [r7, #0]
20025ae8:	f7ff ffcc 	bl	20025a84 <port_write_page>
20025aec:	b003      	add	sp, #12
20025aee:	bdf0      	pop	{r4, r5, r6, r7, pc}
20025af0:	20044958 	.word	0x20044958
20025af4:	2004495c 	.word	0x2004495c
20025af8:	2004cc44 	.word	0x2004cc44
20025afc:	2004cc58 	.word	0x2004cc58
20025b00:	5366424d 	.word	0x5366424d

20025b04 <port_erase_block>:
20025b04:	2000      	movs	r0, #0
20025b06:	4770      	bx	lr

20025b08 <bbm_init_table>:
20025b08:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
20025b0c:	4c7d      	ldr	r4, [pc, #500]	@ (20025d04 <bbm_init_table+0x1fc>)
20025b0e:	4b7e      	ldr	r3, [pc, #504]	@ (20025d08 <bbm_init_table+0x200>)
20025b10:	6822      	ldr	r2, [r4, #0]
20025b12:	b085      	sub	sp, #20
20025b14:	429a      	cmp	r2, r3
20025b16:	f000 80ef 	beq.w	20025cf8 <bbm_init_table+0x1f0>
20025b1a:	f8d4 2208 	ldr.w	r2, [r4, #520]	@ 0x208
20025b1e:	429a      	cmp	r2, r3
20025b20:	f000 80ea 	beq.w	20025cf8 <bbm_init_table+0x1f0>
20025b24:	6023      	str	r3, [r4, #0]
20025b26:	2301      	movs	r3, #1
20025b28:	6063      	str	r3, [r4, #4]
20025b2a:	2300      	movs	r3, #0
20025b2c:	f8df 9210 	ldr.w	r9, [pc, #528]	@ 20025d40 <bbm_init_table+0x238>
20025b30:	8123      	strh	r3, [r4, #8]
20025b32:	f8d9 3000 	ldr.w	r3, [r9]
20025b36:	4f75      	ldr	r7, [pc, #468]	@ (20025d0c <bbm_init_table+0x204>)
20025b38:	3b04      	subs	r3, #4
20025b3a:	f8df a208 	ldr.w	sl, [pc, #520]	@ 20025d44 <bbm_init_table+0x23c>
20025b3e:	8163      	strh	r3, [r4, #10]
20025b40:	683b      	ldr	r3, [r7, #0]
20025b42:	f8da 5000 	ldr.w	r5, [sl]
20025b46:	3b01      	subs	r3, #1
20025b48:	4e71      	ldr	r6, [pc, #452]	@ (20025d10 <bbm_init_table+0x208>)
20025b4a:	81a3      	strh	r3, [r4, #12]
20025b4c:	81e5      	strh	r5, [r4, #14]
20025b4e:	683b      	ldr	r3, [r7, #0]
20025b50:	429d      	cmp	r5, r3
20025b52:	db10      	blt.n	20025b76 <bbm_init_table+0x6e>
20025b54:	2500      	movs	r5, #0
20025b56:	46a8      	mov	r8, r5
20025b58:	f8df b1b4 	ldr.w	fp, [pc, #436]	@ 20025d10 <bbm_init_table+0x208>
20025b5c:	f8da 6000 	ldr.w	r6, [sl]
20025b60:	42b5      	cmp	r5, r6
20025b62:	db20      	blt.n	20025ba6 <bbm_init_table+0x9e>
20025b64:	8963      	ldrh	r3, [r4, #10]
20025b66:	2b00      	cmp	r3, #0
20025b68:	d14d      	bne.n	20025c06 <bbm_init_table+0xfe>
20025b6a:	4b69      	ldr	r3, [pc, #420]	@ (20025d10 <bbm_init_table+0x208>)
20025b6c:	681b      	ldr	r3, [r3, #0]
20025b6e:	b10b      	cbz	r3, 20025b74 <bbm_init_table+0x6c>
20025b70:	4868      	ldr	r0, [pc, #416]	@ (20025d14 <bbm_init_table+0x20c>)
20025b72:	4798      	blx	r3
20025b74:	e7fe      	b.n	20025b74 <bbm_init_table+0x6c>
20025b76:	4628      	mov	r0, r5
20025b78:	f7fb f87e 	bl	20020c78 <bbm_get_bb>
20025b7c:	b968      	cbnz	r0, 20025b9a <bbm_init_table+0x92>
20025b7e:	4628      	mov	r0, r5
20025b80:	f7ff ffc0 	bl	20025b04 <port_erase_block>
20025b84:	b138      	cbz	r0, 20025b96 <bbm_init_table+0x8e>
20025b86:	6833      	ldr	r3, [r6, #0]
20025b88:	b113      	cbz	r3, 20025b90 <bbm_init_table+0x88>
20025b8a:	4629      	mov	r1, r5
20025b8c:	4862      	ldr	r0, [pc, #392]	@ (20025d18 <bbm_init_table+0x210>)
20025b8e:	4798      	blx	r3
20025b90:	8963      	ldrh	r3, [r4, #10]
20025b92:	3b01      	subs	r3, #1
20025b94:	8163      	strh	r3, [r4, #10]
20025b96:	3501      	adds	r5, #1
20025b98:	e7d9      	b.n	20025b4e <bbm_init_table+0x46>
20025b9a:	6833      	ldr	r3, [r6, #0]
20025b9c:	2b00      	cmp	r3, #0
20025b9e:	d0f7      	beq.n	20025b90 <bbm_init_table+0x88>
20025ba0:	4629      	mov	r1, r5
20025ba2:	485e      	ldr	r0, [pc, #376]	@ (20025d1c <bbm_init_table+0x214>)
20025ba4:	e7f3      	b.n	20025b8e <bbm_init_table+0x86>
20025ba6:	4628      	mov	r0, r5
20025ba8:	f7fb f866 	bl	20020c78 <bbm_get_bb>
20025bac:	b348      	cbz	r0, 20025c02 <bbm_init_table+0xfa>
20025bae:	f8db 3000 	ldr.w	r3, [fp]
20025bb2:	b113      	cbz	r3, 20025bba <bbm_init_table+0xb2>
20025bb4:	4629      	mov	r1, r5
20025bb6:	485a      	ldr	r0, [pc, #360]	@ (20025d20 <bbm_init_table+0x218>)
20025bb8:	4798      	blx	r3
20025bba:	89a0      	ldrh	r0, [r4, #12]
20025bbc:	f7fb f85c 	bl	20020c78 <bbm_get_bb>
20025bc0:	89a3      	ldrh	r3, [r4, #12]
20025bc2:	4606      	mov	r6, r0
20025bc4:	3b01      	subs	r3, #1
20025bc6:	81a3      	strh	r3, [r4, #12]
20025bc8:	8963      	ldrh	r3, [r4, #10]
20025bca:	3b01      	subs	r3, #1
20025bcc:	b29b      	uxth	r3, r3
20025bce:	8163      	strh	r3, [r4, #10]
20025bd0:	b108      	cbz	r0, 20025bd6 <bbm_init_table+0xce>
20025bd2:	2b00      	cmp	r3, #0
20025bd4:	d1f1      	bne.n	20025bba <bbm_init_table+0xb2>
20025bd6:	f8db 3000 	ldr.w	r3, [fp]
20025bda:	b11b      	cbz	r3, 20025be4 <bbm_init_table+0xdc>
20025bdc:	4642      	mov	r2, r8
20025bde:	4629      	mov	r1, r5
20025be0:	4850      	ldr	r0, [pc, #320]	@ (20025d24 <bbm_init_table+0x21c>)
20025be2:	4798      	blx	r3
20025be4:	b946      	cbnz	r6, 20025bf8 <bbm_init_table+0xf0>
20025be6:	89a2      	ldrh	r2, [r4, #12]
20025be8:	f108 0306 	add.w	r3, r8, #6
20025bec:	f824 5023 	strh.w	r5, [r4, r3, lsl #2]
20025bf0:	3201      	adds	r2, #1
20025bf2:	eb04 0383 	add.w	r3, r4, r3, lsl #2
20025bf6:	805a      	strh	r2, [r3, #2]
20025bf8:	8923      	ldrh	r3, [r4, #8]
20025bfa:	f108 0801 	add.w	r8, r8, #1
20025bfe:	3301      	adds	r3, #1
20025c00:	8123      	strh	r3, [r4, #8]
20025c02:	3501      	adds	r5, #1
20025c04:	e7aa      	b.n	20025b5c <bbm_init_table+0x54>
20025c06:	2110      	movs	r1, #16
20025c08:	483e      	ldr	r0, [pc, #248]	@ (20025d04 <bbm_init_table+0x1fc>)
20025c0a:	f7ff fd75 	bl	200256f8 <bbm_crc_check>
20025c0e:	f8d9 1000 	ldr.w	r1, [r9]
20025c12:	6120      	str	r0, [r4, #16]
20025c14:	3904      	subs	r1, #4
20025c16:	0089      	lsls	r1, r1, #2
20025c18:	4843      	ldr	r0, [pc, #268]	@ (20025d28 <bbm_init_table+0x220>)
20025c1a:	f7ff fd6d 	bl	200256f8 <bbm_crc_check>
20025c1e:	f44f 7202 	mov.w	r2, #520	@ 0x208
20025c22:	4938      	ldr	r1, [pc, #224]	@ (20025d04 <bbm_init_table+0x1fc>)
20025c24:	6160      	str	r0, [r4, #20]
20025c26:	1888      	adds	r0, r1, r2
20025c28:	f004 ff1a 	bl	2002aa60 <memcpy>
20025c2c:	f894 320f 	ldrb.w	r3, [r4, #527]	@ 0x20f
20025c30:	2110      	movs	r1, #16
20025c32:	f043 0380 	orr.w	r3, r3, #128	@ 0x80
20025c36:	f884 320f 	strb.w	r3, [r4, #527]	@ 0x20f
20025c3a:	483c      	ldr	r0, [pc, #240]	@ (20025d2c <bbm_init_table+0x224>)
20025c3c:	f7ff fd5c 	bl	200256f8 <bbm_crc_check>
20025c40:	f8c4 0218 	str.w	r0, [r4, #536]	@ 0x218
20025c44:	2400      	movs	r4, #0
20025c46:	f8df 9100 	ldr.w	r9, [pc, #256]	@ 20025d48 <bbm_init_table+0x240>
20025c4a:	f8df 8100 	ldr.w	r8, [pc, #256]	@ 20025d4c <bbm_init_table+0x244>
20025c4e:	683b      	ldr	r3, [r7, #0]
20025c50:	429e      	cmp	r6, r3
20025c52:	db08      	blt.n	20025c66 <bbm_init_table+0x15e>
20025c54:	2c03      	cmp	r4, #3
20025c56:	dc30      	bgt.n	20025cba <bbm_init_table+0x1b2>
20025c58:	4b2d      	ldr	r3, [pc, #180]	@ (20025d10 <bbm_init_table+0x208>)
20025c5a:	681b      	ldr	r3, [r3, #0]
20025c5c:	b113      	cbz	r3, 20025c64 <bbm_init_table+0x15c>
20025c5e:	4621      	mov	r1, r4
20025c60:	4833      	ldr	r0, [pc, #204]	@ (20025d30 <bbm_init_table+0x228>)
20025c62:	4798      	blx	r3
20025c64:	e7fe      	b.n	20025c64 <bbm_init_table+0x15c>
20025c66:	4630      	mov	r0, r6
20025c68:	f7fb f806 	bl	20020c78 <bbm_get_bb>
20025c6c:	4605      	mov	r5, r0
20025c6e:	bb10      	cbnz	r0, 20025cb6 <bbm_init_table+0x1ae>
20025c70:	f8d9 a000 	ldr.w	sl, [r9]
20025c74:	21ff      	movs	r1, #255	@ 0xff
20025c76:	4652      	mov	r2, sl
20025c78:	f8d8 0000 	ldr.w	r0, [r8]
20025c7c:	f004 fed6 	bl	2002aa2c <memset>
20025c80:	e9cd 5501 	strd	r5, r5, [sp, #4]
20025c84:	f8cd a000 	str.w	sl, [sp]
20025c88:	f8d8 3000 	ldr.w	r3, [r8]
20025c8c:	462a      	mov	r2, r5
20025c8e:	4629      	mov	r1, r5
20025c90:	4630      	mov	r0, r6
20025c92:	f7fa ff8d 	bl	20020bb0 <port_read_page>
20025c96:	f8d9 3000 	ldr.w	r3, [r9]
20025c9a:	4298      	cmp	r0, r3
20025c9c:	d109      	bne.n	20025cb2 <bbm_init_table+0x1aa>
20025c9e:	f8d8 3000 	ldr.w	r3, [r8]
20025ca2:	681b      	ldr	r3, [r3, #0]
20025ca4:	3301      	adds	r3, #1
20025ca6:	bf01      	itttt	eq
20025ca8:	4b22      	ldreq	r3, [pc, #136]	@ (20025d34 <bbm_init_table+0x22c>)
20025caa:	1d22      	addeq	r2, r4, #4
20025cac:	f823 6012 	strheq.w	r6, [r3, r2, lsl #1]
20025cb0:	3401      	addeq	r4, #1
20025cb2:	2c03      	cmp	r4, #3
20025cb4:	dc01      	bgt.n	20025cba <bbm_init_table+0x1b2>
20025cb6:	3601      	adds	r6, #1
20025cb8:	e7c9      	b.n	20025c4e <bbm_init_table+0x146>
20025cba:	2500      	movs	r5, #0
20025cbc:	4c1d      	ldr	r4, [pc, #116]	@ (20025d34 <bbm_init_table+0x22c>)
20025cbe:	2000      	movs	r0, #0
20025cc0:	8921      	ldrh	r1, [r4, #8]
20025cc2:	f7ff fee5 	bl	20025a90 <bbm_write_talbe.isra.0>
20025cc6:	8923      	ldrh	r3, [r4, #8]
20025cc8:	2001      	movs	r0, #1
20025cca:	8961      	ldrh	r1, [r4, #10]
20025ccc:	8023      	strh	r3, [r4, #0]
20025cce:	8223      	strh	r3, [r4, #16]
20025cd0:	8125      	strh	r5, [r4, #8]
20025cd2:	f7ff fedd 	bl	20025a90 <bbm_write_talbe.isra.0>
20025cd6:	8963      	ldrh	r3, [r4, #10]
20025cd8:	8165      	strh	r5, [r4, #10]
20025cda:	80a3      	strh	r3, [r4, #4]
20025cdc:	8263      	strh	r3, [r4, #18]
20025cde:	89a3      	ldrh	r3, [r4, #12]
20025ce0:	8063      	strh	r3, [r4, #2]
20025ce2:	89e3      	ldrh	r3, [r4, #14]
20025ce4:	80e3      	strh	r3, [r4, #6]
20025ce6:	4b0a      	ldr	r3, [pc, #40]	@ (20025d10 <bbm_init_table+0x208>)
20025ce8:	681b      	ldr	r3, [r3, #0]
20025cea:	b10b      	cbz	r3, 20025cf0 <bbm_init_table+0x1e8>
20025cec:	4812      	ldr	r0, [pc, #72]	@ (20025d38 <bbm_init_table+0x230>)
20025cee:	4798      	blx	r3
20025cf0:	2000      	movs	r0, #0
20025cf2:	b005      	add	sp, #20
20025cf4:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
20025cf8:	4b05      	ldr	r3, [pc, #20]	@ (20025d10 <bbm_init_table+0x208>)
20025cfa:	681b      	ldr	r3, [r3, #0]
20025cfc:	b10b      	cbz	r3, 20025d02 <bbm_init_table+0x1fa>
20025cfe:	480f      	ldr	r0, [pc, #60]	@ (20025d3c <bbm_init_table+0x234>)
20025d00:	4798      	blx	r3
20025d02:	e7fe      	b.n	20025d02 <bbm_init_table+0x1fa>
20025d04:	2004cc58 	.word	0x2004cc58
20025d08:	5366424d 	.word	0x5366424d
20025d0c:	2004cc4c 	.word	0x2004cc4c
20025d10:	2004cc40 	.word	0x2004cc40
20025d14:	2002aed6 	.word	0x2002aed6
20025d18:	2002ae64 	.word	0x2002ae64
20025d1c:	2002ae86 	.word	0x2002ae86
20025d20:	2002aea3 	.word	0x2002aea3
20025d24:	2002aec2 	.word	0x2002aec2
20025d28:	2004cc70 	.word	0x2004cc70
20025d2c:	2004ce60 	.word	0x2004ce60
20025d30:	2002aef0 	.word	0x2002aef0
20025d34:	2004d068 	.word	0x2004d068
20025d38:	2002af17 	.word	0x2002af17
20025d3c:	2002af33 	.word	0x2002af33
20025d40:	2004cc50 	.word	0x2004cc50
20025d44:	2004cc54 	.word	0x2004cc54
20025d48:	20044958 	.word	0x20044958
20025d4c:	2004cc44 	.word	0x2004cc44

20025d50 <sif_bbm_init>:
20025d50:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
20025d54:	b087      	sub	sp, #28
20025d56:	2900      	cmp	r1, #0
20025d58:	f000 8129 	beq.w	20025fae <sif_bbm_init+0x25e>
20025d5c:	4b95      	ldr	r3, [pc, #596]	@ (20025fb4 <sif_bbm_init+0x264>)
20025d5e:	681a      	ldr	r2, [r3, #0]
20025d60:	2a01      	cmp	r2, #1
20025d62:	d108      	bne.n	20025d76 <sif_bbm_init+0x26>
20025d64:	4b94      	ldr	r3, [pc, #592]	@ (20025fb8 <sif_bbm_init+0x268>)
20025d66:	681b      	ldr	r3, [r3, #0]
20025d68:	b10b      	cbz	r3, 20025d6e <sif_bbm_init+0x1e>
20025d6a:	4894      	ldr	r0, [pc, #592]	@ (20025fbc <sif_bbm_init+0x26c>)
20025d6c:	4798      	blx	r3
20025d6e:	2000      	movs	r0, #0
20025d70:	b007      	add	sp, #28
20025d72:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
20025d76:	2201      	movs	r2, #1
20025d78:	601a      	str	r2, [r3, #0]
20025d7a:	4b91      	ldr	r3, [pc, #580]	@ (20025fc0 <sif_bbm_init+0x270>)
20025d7c:	681c      	ldr	r4, [r3, #0]
20025d7e:	b904      	cbnz	r4, 20025d82 <sif_bbm_init+0x32>
20025d80:	e7fe      	b.n	20025d80 <sif_bbm_init+0x30>
20025d82:	f8df a27c 	ldr.w	sl, [pc, #636]	@ 20026000 <sif_bbm_init+0x2b0>
20025d86:	f8da 2000 	ldr.w	r2, [sl]
20025d8a:	b902      	cbnz	r2, 20025d8e <sif_bbm_init+0x3e>
20025d8c:	e7fe      	b.n	20025d8c <sif_bbm_init+0x3c>
20025d8e:	fbb0 f4f4 	udiv	r4, r0, r4
20025d92:	f04f 0800 	mov.w	r8, #0
20025d96:	4a8b      	ldr	r2, [pc, #556]	@ (20025fc4 <sif_bbm_init+0x274>)
20025d98:	f8df b268 	ldr.w	fp, [pc, #616]	@ 20026004 <sif_bbm_init+0x2b4>
20025d9c:	0963      	lsrs	r3, r4, #5
20025d9e:	f8df 9268 	ldr.w	r9, [pc, #616]	@ 20026008 <sif_bbm_init+0x2b8>
20025da2:	6013      	str	r3, [r2, #0]
20025da4:	f8cb 4000 	str.w	r4, [fp]
20025da8:	1ae4      	subs	r4, r4, r3
20025daa:	4b87      	ldr	r3, [pc, #540]	@ (20025fc8 <sif_bbm_init+0x278>)
20025dac:	2218      	movs	r2, #24
20025dae:	f8c9 1000 	str.w	r1, [r9]
20025db2:	4886      	ldr	r0, [pc, #536]	@ (20025fcc <sif_bbm_init+0x27c>)
20025db4:	2100      	movs	r1, #0
20025db6:	601c      	str	r4, [r3, #0]
20025db8:	f004 fe38 	bl	2002aa2c <memset>
20025dbc:	f44f 6282 	mov.w	r2, #1040	@ 0x410
20025dc0:	2100      	movs	r1, #0
20025dc2:	4883      	ldr	r0, [pc, #524]	@ (20025fd0 <sif_bbm_init+0x280>)
20025dc4:	f004 fe32 	bl	2002aa2c <memset>
20025dc8:	4647      	mov	r7, r8
20025dca:	4646      	mov	r6, r8
20025dcc:	f8db 3000 	ldr.w	r3, [fp]
20025dd0:	429c      	cmp	r4, r3
20025dd2:	db02      	blt.n	20025dda <sif_bbm_init+0x8a>
20025dd4:	f04f 35ff 	mov.w	r5, #4294967295
20025dd8:	e064      	b.n	20025ea4 <sif_bbm_init+0x154>
20025dda:	4620      	mov	r0, r4
20025ddc:	f7fa ff4c 	bl	20020c78 <bbm_get_bb>
20025de0:	4605      	mov	r5, r0
20025de2:	b138      	cbz	r0, 20025df4 <sif_bbm_init+0xa4>
20025de4:	4b74      	ldr	r3, [pc, #464]	@ (20025fb8 <sif_bbm_init+0x268>)
20025de6:	681b      	ldr	r3, [r3, #0]
20025de8:	b113      	cbz	r3, 20025df0 <sif_bbm_init+0xa0>
20025dea:	487a      	ldr	r0, [pc, #488]	@ (20025fd4 <sif_bbm_init+0x284>)
20025dec:	1c61      	adds	r1, r4, #1
20025dee:	4798      	blx	r3
20025df0:	3401      	adds	r4, #1
20025df2:	e7eb      	b.n	20025dcc <sif_bbm_init+0x7c>
20025df4:	f8da 2000 	ldr.w	r2, [sl]
20025df8:	21ff      	movs	r1, #255	@ 0xff
20025dfa:	f8d9 0000 	ldr.w	r0, [r9]
20025dfe:	9205      	str	r2, [sp, #20]
20025e00:	f004 fe14 	bl	2002aa2c <memset>
20025e04:	9a05      	ldr	r2, [sp, #20]
20025e06:	e9cd 5501 	strd	r5, r5, [sp, #4]
20025e0a:	9200      	str	r2, [sp, #0]
20025e0c:	f8d9 3000 	ldr.w	r3, [r9]
20025e10:	462a      	mov	r2, r5
20025e12:	4629      	mov	r1, r5
20025e14:	4620      	mov	r0, r4
20025e16:	f7fa fecb 	bl	20020bb0 <port_read_page>
20025e1a:	f8da 3000 	ldr.w	r3, [sl]
20025e1e:	4298      	cmp	r0, r3
20025e20:	d12e      	bne.n	20025e80 <sif_bbm_init+0x130>
20025e22:	f8d9 1000 	ldr.w	r1, [r9]
20025e26:	486c      	ldr	r0, [pc, #432]	@ (20025fd8 <sif_bbm_init+0x288>)
20025e28:	680b      	ldr	r3, [r1, #0]
20025e2a:	b2a2      	uxth	r2, r4
20025e2c:	4283      	cmp	r3, r0
20025e2e:	4b67      	ldr	r3, [pc, #412]	@ (20025fcc <sif_bbm_init+0x27c>)
20025e30:	d11f      	bne.n	20025e72 <sif_bbm_init+0x122>
20025e32:	f991 1007 	ldrsb.w	r1, [r1, #7]
20025e36:	2900      	cmp	r1, #0
20025e38:	bfb5      	itete	lt
20025e3a:	eb03 0147 	addlt.w	r1, r3, r7, lsl #1
20025e3e:	f823 2016 	strhge.w	r2, [r3, r6, lsl #1]
20025e42:	808a      	strhlt	r2, [r1, #4]
20025e44:	3601      	addge	r6, #1
20025e46:	bfb8      	it	lt
20025e48:	3701      	addlt	r7, #1
20025e4a:	eb06 0208 	add.w	r2, r6, r8
20025e4e:	443a      	add	r2, r7
20025e50:	2a03      	cmp	r2, #3
20025e52:	ddcd      	ble.n	20025df0 <sif_bbm_init+0xa0>
20025e54:	2e00      	cmp	r6, #0
20025e56:	f000 8081 	beq.w	20025f5c <sif_bbm_init+0x20c>
20025e5a:	2f00      	cmp	r7, #0
20025e5c:	d07e      	beq.n	20025f5c <sif_bbm_init+0x20c>
20025e5e:	2e01      	cmp	r6, #1
20025e60:	d001      	beq.n	20025e66 <sif_bbm_init+0x116>
20025e62:	2f01      	cmp	r7, #1
20025e64:	d11e      	bne.n	20025ea4 <sif_bbm_init+0x154>
20025e66:	8819      	ldrh	r1, [r3, #0]
20025e68:	891a      	ldrh	r2, [r3, #8]
20025e6a:	b981      	cbnz	r1, 20025e8e <sif_bbm_init+0x13e>
20025e6c:	801a      	strh	r2, [r3, #0]
20025e6e:	895a      	ldrh	r2, [r3, #10]
20025e70:	e013      	b.n	20025e9a <sif_bbm_init+0x14a>
20025e72:	f108 0104 	add.w	r1, r8, #4
20025e76:	f823 2011 	strh.w	r2, [r3, r1, lsl #1]
20025e7a:	f108 0801 	add.w	r8, r8, #1
20025e7e:	e7e4      	b.n	20025e4a <sif_bbm_init+0xfa>
20025e80:	4b4d      	ldr	r3, [pc, #308]	@ (20025fb8 <sif_bbm_init+0x268>)
20025e82:	681b      	ldr	r3, [r3, #0]
20025e84:	2b00      	cmp	r3, #0
20025e86:	d0b3      	beq.n	20025df0 <sif_bbm_init+0xa0>
20025e88:	4854      	ldr	r0, [pc, #336]	@ (20025fdc <sif_bbm_init+0x28c>)
20025e8a:	1c61      	adds	r1, r4, #1
20025e8c:	e7af      	b.n	20025dee <sif_bbm_init+0x9e>
20025e8e:	8859      	ldrh	r1, [r3, #2]
20025e90:	b909      	cbnz	r1, 20025e96 <sif_bbm_init+0x146>
20025e92:	805a      	strh	r2, [r3, #2]
20025e94:	e7eb      	b.n	20025e6e <sif_bbm_init+0x11e>
20025e96:	2a00      	cmp	r2, #0
20025e98:	d0e9      	beq.n	20025e6e <sif_bbm_init+0x11e>
20025e9a:	8899      	ldrh	r1, [r3, #4]
20025e9c:	2900      	cmp	r1, #0
20025e9e:	d158      	bne.n	20025f52 <sif_bbm_init+0x202>
20025ea0:	809a      	strh	r2, [r3, #4]
20025ea2:	2502      	movs	r5, #2
20025ea4:	f8df 9110 	ldr.w	r9, [pc, #272]	@ 20025fb8 <sif_bbm_init+0x268>
20025ea8:	f8d9 4000 	ldr.w	r4, [r9]
20025eac:	b124      	cbz	r4, 20025eb8 <sif_bbm_init+0x168>
20025eae:	4643      	mov	r3, r8
20025eb0:	463a      	mov	r2, r7
20025eb2:	4631      	mov	r1, r6
20025eb4:	484a      	ldr	r0, [pc, #296]	@ (20025fe0 <sif_bbm_init+0x290>)
20025eb6:	47a0      	blx	r4
20025eb8:	f8d9 3000 	ldr.w	r3, [r9]
20025ebc:	b113      	cbz	r3, 20025ec4 <sif_bbm_init+0x174>
20025ebe:	4629      	mov	r1, r5
20025ec0:	4848      	ldr	r0, [pc, #288]	@ (20025fe4 <sif_bbm_init+0x294>)
20025ec2:	4798      	blx	r3
20025ec4:	f035 0002 	bics.w	r0, r5, #2
20025ec8:	d164      	bne.n	20025f94 <sif_bbm_init+0x244>
20025eca:	f7ff fcc9 	bl	20025860 <bbm_get_map_table>
20025ece:	4605      	mov	r5, r0
20025ed0:	2001      	movs	r0, #1
20025ed2:	f7ff fcc5 	bl	20025860 <bbm_get_map_table>
20025ed6:	f8d9 6000 	ldr.w	r6, [r9]
20025eda:	4604      	mov	r4, r0
20025edc:	b13e      	cbz	r6, 20025eee <sif_bbm_init+0x19e>
20025ede:	4a3b      	ldr	r2, [pc, #236]	@ (20025fcc <sif_bbm_init+0x27c>)
20025ee0:	4629      	mov	r1, r5
20025ee2:	8a53      	ldrh	r3, [r2, #18]
20025ee4:	9300      	str	r3, [sp, #0]
20025ee6:	8a12      	ldrh	r2, [r2, #16]
20025ee8:	4603      	mov	r3, r0
20025eea:	483f      	ldr	r0, [pc, #252]	@ (20025fe8 <sif_bbm_init+0x298>)
20025eec:	47b0      	blx	r6
20025eee:	42a5      	cmp	r5, r4
20025ef0:	4c37      	ldr	r4, [pc, #220]	@ (20025fd0 <sif_bbm_init+0x280>)
20025ef2:	dd35      	ble.n	20025f60 <sif_bbm_init+0x210>
20025ef4:	f44f 7202 	mov.w	r2, #520	@ 0x208
20025ef8:	4621      	mov	r1, r4
20025efa:	18a0      	adds	r0, r4, r2
20025efc:	f004 fdb0 	bl	2002aa60 <memcpy>
20025f00:	f894 320f 	ldrb.w	r3, [r4, #527]	@ 0x20f
20025f04:	2110      	movs	r1, #16
20025f06:	f043 0380 	orr.w	r3, r3, #128	@ 0x80
20025f0a:	f884 320f 	strb.w	r3, [r4, #527]	@ 0x20f
20025f0e:	f504 7002 	add.w	r0, r4, #520	@ 0x208
20025f12:	f7ff fbf1 	bl	200256f8 <bbm_crc_check>
20025f16:	f8c4 0218 	str.w	r0, [r4, #536]	@ 0x218
20025f1a:	2001      	movs	r0, #1
20025f1c:	4b2b      	ldr	r3, [pc, #172]	@ (20025fcc <sif_bbm_init+0x27c>)
20025f1e:	8a59      	ldrh	r1, [r3, #18]
20025f20:	f7ff fdb6 	bl	20025a90 <bbm_write_talbe.isra.0>
20025f24:	6822      	ldr	r2, [r4, #0]
20025f26:	4b2c      	ldr	r3, [pc, #176]	@ (20025fd8 <sif_bbm_init+0x288>)
20025f28:	429a      	cmp	r2, r3
20025f2a:	d12d      	bne.n	20025f88 <sif_bbm_init+0x238>
20025f2c:	4828      	ldr	r0, [pc, #160]	@ (20025fd0 <sif_bbm_init+0x280>)
20025f2e:	f7ff fb93 	bl	20025658 <bbm_map_check.part.0>
20025f32:	f8d9 4000 	ldr.w	r4, [r9]
20025f36:	b12c      	cbz	r4, 20025f44 <sif_bbm_init+0x1f4>
20025f38:	4b2c      	ldr	r3, [pc, #176]	@ (20025fec <sif_bbm_init+0x29c>)
20025f3a:	4924      	ldr	r1, [pc, #144]	@ (20025fcc <sif_bbm_init+0x27c>)
20025f3c:	482c      	ldr	r0, [pc, #176]	@ (20025ff0 <sif_bbm_init+0x2a0>)
20025f3e:	f5a3 7202 	sub.w	r2, r3, #520	@ 0x208
20025f42:	47a0      	blx	r4
20025f44:	f8d9 3000 	ldr.w	r3, [r9]
20025f48:	2b00      	cmp	r3, #0
20025f4a:	f43f af10 	beq.w	20025d6e <sif_bbm_init+0x1e>
20025f4e:	4829      	ldr	r0, [pc, #164]	@ (20025ff4 <sif_bbm_init+0x2a4>)
20025f50:	e70c      	b.n	20025d6c <sif_bbm_init+0x1c>
20025f52:	88d9      	ldrh	r1, [r3, #6]
20025f54:	2900      	cmp	r1, #0
20025f56:	d1a4      	bne.n	20025ea2 <sif_bbm_init+0x152>
20025f58:	80da      	strh	r2, [r3, #6]
20025f5a:	e7a2      	b.n	20025ea2 <sif_bbm_init+0x152>
20025f5c:	2501      	movs	r5, #1
20025f5e:	e7a1      	b.n	20025ea4 <sif_bbm_init+0x154>
20025f60:	dae0      	bge.n	20025f24 <sif_bbm_init+0x1d4>
20025f62:	f44f 7202 	mov.w	r2, #520	@ 0x208
20025f66:	4620      	mov	r0, r4
20025f68:	18a1      	adds	r1, r4, r2
20025f6a:	f004 fd79 	bl	2002aa60 <memcpy>
20025f6e:	79e3      	ldrb	r3, [r4, #7]
20025f70:	2110      	movs	r1, #16
20025f72:	f023 0380 	bic.w	r3, r3, #128	@ 0x80
20025f76:	71e3      	strb	r3, [r4, #7]
20025f78:	4620      	mov	r0, r4
20025f7a:	f7ff fbbd 	bl	200256f8 <bbm_crc_check>
20025f7e:	4b13      	ldr	r3, [pc, #76]	@ (20025fcc <sif_bbm_init+0x27c>)
20025f80:	6120      	str	r0, [r4, #16]
20025f82:	8a19      	ldrh	r1, [r3, #16]
20025f84:	2000      	movs	r0, #0
20025f86:	e7cb      	b.n	20025f20 <sif_bbm_init+0x1d0>
20025f88:	f8d9 3000 	ldr.w	r3, [r9]
20025f8c:	b10b      	cbz	r3, 20025f92 <sif_bbm_init+0x242>
20025f8e:	481a      	ldr	r0, [pc, #104]	@ (20025ff8 <sif_bbm_init+0x2a8>)
20025f90:	4798      	blx	r3
20025f92:	e7fe      	b.n	20025f92 <sif_bbm_init+0x242>
20025f94:	2d01      	cmp	r5, #1
20025f96:	d102      	bne.n	20025f9e <sif_bbm_init+0x24e>
20025f98:	f7ff fdb6 	bl	20025b08 <bbm_init_table>
20025f9c:	e7c9      	b.n	20025f32 <sif_bbm_init+0x1e2>
20025f9e:	f8d9 3000 	ldr.w	r3, [r9]
20025fa2:	b11b      	cbz	r3, 20025fac <sif_bbm_init+0x25c>
20025fa4:	f04f 31ff 	mov.w	r1, #4294967295
20025fa8:	4814      	ldr	r0, [pc, #80]	@ (20025ffc <sif_bbm_init+0x2ac>)
20025faa:	4798      	blx	r3
20025fac:	e7fe      	b.n	20025fac <sif_bbm_init+0x25c>
20025fae:	f04f 30ff 	mov.w	r0, #4294967295
20025fb2:	e6dd      	b.n	20025d70 <sif_bbm_init+0x20>
20025fb4:	2004cc48 	.word	0x2004cc48
20025fb8:	2004cc40 	.word	0x2004cc40
20025fbc:	2002af47 	.word	0x2002af47
20025fc0:	2004495c 	.word	0x2004495c
20025fc4:	2004cc50 	.word	0x2004cc50
20025fc8:	2004cc54 	.word	0x2004cc54
20025fcc:	2004d068 	.word	0x2004d068
20025fd0:	2004cc58 	.word	0x2004cc58
20025fd4:	2002af75 	.word	0x2002af75
20025fd8:	5366424d 	.word	0x5366424d
20025fdc:	2002af81 	.word	0x2002af81
20025fe0:	2002afa0 	.word	0x2002afa0
20025fe4:	2002afbf 	.word	0x2002afbf
20025fe8:	2002afd1 	.word	0x2002afd1
20025fec:	2004ce60 	.word	0x2004ce60
20025ff0:	2002b02c 	.word	0x2002b02c
20025ff4:	2002b050 	.word	0x2002b050
20025ff8:	2002aff5 	.word	0x2002aff5
20025ffc:	2002b00b 	.word	0x2002b00b
20026000:	20044958 	.word	0x20044958
20026004:	2004cc4c 	.word	0x2004cc4c
20026008:	2004cc44 	.word	0x2004cc44

2002600c <bbm_set_page_size>:
2002600c:	4b01      	ldr	r3, [pc, #4]	@ (20026014 <bbm_set_page_size+0x8>)
2002600e:	6018      	str	r0, [r3, #0]
20026010:	4770      	bx	lr
20026012:	bf00      	nop
20026014:	20044958 	.word	0x20044958

20026018 <bbm_set_blk_size>:
20026018:	4b01      	ldr	r3, [pc, #4]	@ (20026020 <bbm_set_blk_size+0x8>)
2002601a:	6018      	str	r0, [r3, #0]
2002601c:	4770      	bx	lr
2002601e:	bf00      	nop
20026020:	2004495c 	.word	0x2004495c

20026024 <mbedtls_md_info_from_type>:
20026024:	3805      	subs	r0, #5
20026026:	b2c0      	uxtb	r0, r0
20026028:	2803      	cmp	r0, #3
2002602a:	bf9a      	itte	ls
2002602c:	4b02      	ldrls	r3, [pc, #8]	@ (20026038 <mbedtls_md_info_from_type+0x14>)
2002602e:	f853 0020 	ldrls.w	r0, [r3, r0, lsl #2]
20026032:	2000      	movhi	r0, #0
20026034:	4770      	bx	lr
20026036:	bf00      	nop
20026038:	2002bea4 	.word	0x2002bea4

2002603c <mbedtls_md_get_size>:
2002603c:	b100      	cbz	r0, 20026040 <mbedtls_md_get_size+0x4>
2002603e:	7a00      	ldrb	r0, [r0, #8]
20026040:	4770      	bx	lr

20026042 <sha224_process_wrap>:
20026042:	f000 b8a9 	b.w	20026198 <mbedtls_sha256_process>

20026046 <sha224_clone_wrap>:
20026046:	f000 b85a 	b.w	200260fe <mbedtls_sha256_clone>

2002604a <sha224_ctx_free>:
2002604a:	b510      	push	{r4, lr}
2002604c:	4604      	mov	r4, r0
2002604e:	f000 f84c 	bl	200260ea <mbedtls_sha256_free>
20026052:	4620      	mov	r0, r4
20026054:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
20026058:	f004 bc22 	b.w	2002a8a0 <free>

2002605c <sha224_ctx_alloc>:
2002605c:	b510      	push	{r4, lr}
2002605e:	216c      	movs	r1, #108	@ 0x6c
20026060:	2001      	movs	r0, #1
20026062:	f004 fc01 	bl	2002a868 <calloc>
20026066:	4604      	mov	r4, r0
20026068:	b108      	cbz	r0, 2002606e <sha224_ctx_alloc+0x12>
2002606a:	f000 f83a 	bl	200260e2 <mbedtls_sha256_init>
2002606e:	4620      	mov	r0, r4
20026070:	bd10      	pop	{r4, pc}

20026072 <sha224_wrap>:
20026072:	2301      	movs	r3, #1
20026074:	f000 bc94 	b.w	200269a0 <mbedtls_sha256>

20026078 <sha256_wrap>:
20026078:	2300      	movs	r3, #0
2002607a:	f000 bc91 	b.w	200269a0 <mbedtls_sha256>

2002607e <sha224_finish_wrap>:
2002607e:	f000 bc21 	b.w	200268c4 <mbedtls_sha256_finish>

20026082 <sha224_update_wrap>:
20026082:	f000 bc1b 	b.w	200268bc <mbedtls_sha256_update>

20026086 <sha224_starts_wrap>:
20026086:	2101      	movs	r1, #1
20026088:	f000 b83e 	b.w	20026108 <mbedtls_sha256_starts>

2002608c <sha256_starts_wrap>:
2002608c:	2100      	movs	r1, #0
2002608e:	f000 b83b 	b.w	20026108 <mbedtls_sha256_starts>

20026092 <sha384_process_wrap>:
20026092:	f000 bd8d 	b.w	20026bb0 <mbedtls_sha512_process>

20026096 <sha384_clone_wrap>:
20026096:	f000 bcf5 	b.w	20026a84 <mbedtls_sha512_clone>

2002609a <sha384_ctx_free>:
2002609a:	b510      	push	{r4, lr}
2002609c:	4604      	mov	r4, r0
2002609e:	f000 fce7 	bl	20026a70 <mbedtls_sha512_free>
200260a2:	4620      	mov	r0, r4
200260a4:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
200260a8:	f004 bbfa 	b.w	2002a8a0 <free>

200260ac <sha384_ctx_alloc>:
200260ac:	b510      	push	{r4, lr}
200260ae:	21d8      	movs	r1, #216	@ 0xd8
200260b0:	2001      	movs	r0, #1
200260b2:	f004 fbd9 	bl	2002a868 <calloc>
200260b6:	4604      	mov	r4, r0
200260b8:	b108      	cbz	r0, 200260be <sha384_ctx_alloc+0x12>
200260ba:	f000 fcd5 	bl	20026a68 <mbedtls_sha512_init>
200260be:	4620      	mov	r0, r4
200260c0:	bd10      	pop	{r4, pc}

200260c2 <sha384_wrap>:
200260c2:	2301      	movs	r3, #1
200260c4:	f001 bbf8 	b.w	200278b8 <mbedtls_sha512>

200260c8 <sha512_wrap>:
200260c8:	2300      	movs	r3, #0
200260ca:	f001 bbf5 	b.w	200278b8 <mbedtls_sha512>

200260ce <sha384_finish_wrap>:
200260ce:	f001 baed 	b.w	200276ac <mbedtls_sha512_finish>

200260d2 <sha384_update_wrap>:
200260d2:	f001 bae6 	b.w	200276a2 <mbedtls_sha512_update>

200260d6 <sha384_starts_wrap>:
200260d6:	2101      	movs	r1, #1
200260d8:	f000 bcda 	b.w	20026a90 <mbedtls_sha512_starts>

200260dc <sha512_starts_wrap>:
200260dc:	2100      	movs	r1, #0
200260de:	f000 bcd7 	b.w	20026a90 <mbedtls_sha512_starts>

200260e2 <mbedtls_sha256_init>:
200260e2:	226c      	movs	r2, #108	@ 0x6c
200260e4:	2100      	movs	r1, #0
200260e6:	f004 bca1 	b.w	2002aa2c <memset>

200260ea <mbedtls_sha256_free>:
200260ea:	b138      	cbz	r0, 200260fc <mbedtls_sha256_free+0x12>
200260ec:	2100      	movs	r1, #0
200260ee:	f100 036c 	add.w	r3, r0, #108	@ 0x6c
200260f2:	4602      	mov	r2, r0
200260f4:	3001      	adds	r0, #1
200260f6:	4298      	cmp	r0, r3
200260f8:	7011      	strb	r1, [r2, #0]
200260fa:	d1fa      	bne.n	200260f2 <mbedtls_sha256_free+0x8>
200260fc:	4770      	bx	lr

200260fe <mbedtls_sha256_clone>:
200260fe:	b508      	push	{r3, lr}
20026100:	226c      	movs	r2, #108	@ 0x6c
20026102:	f004 fcad 	bl	2002aa60 <memcpy>
20026106:	bd08      	pop	{r3, pc}

20026108 <mbedtls_sha256_starts>:
20026108:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
2002610c:	b1c1      	cbz	r1, 20026140 <mbedtls_sha256_starts+0x38>
2002610e:	f8df e078 	ldr.w	lr, [pc, #120]	@ 20026188 <mbedtls_sha256_starts+0x80>
20026112:	f8df c078 	ldr.w	ip, [pc, #120]	@ 2002618c <mbedtls_sha256_starts+0x84>
20026116:	4f10      	ldr	r7, [pc, #64]	@ (20026158 <mbedtls_sha256_starts+0x50>)
20026118:	4e10      	ldr	r6, [pc, #64]	@ (2002615c <mbedtls_sha256_starts+0x54>)
2002611a:	4d11      	ldr	r5, [pc, #68]	@ (20026160 <mbedtls_sha256_starts+0x58>)
2002611c:	4c11      	ldr	r4, [pc, #68]	@ (20026164 <mbedtls_sha256_starts+0x5c>)
2002611e:	4a12      	ldr	r2, [pc, #72]	@ (20026168 <mbedtls_sha256_starts+0x60>)
20026120:	4b12      	ldr	r3, [pc, #72]	@ (2002616c <mbedtls_sha256_starts+0x64>)
20026122:	f04f 0800 	mov.w	r8, #0
20026126:	e9c0 ec02 	strd	lr, ip, [r0, #8]
2002612a:	e9c0 8800 	strd	r8, r8, [r0]
2002612e:	e9c0 7604 	strd	r7, r6, [r0, #16]
20026132:	e9c0 5406 	strd	r5, r4, [r0, #24]
20026136:	e9c0 2308 	strd	r2, r3, [r0, #32]
2002613a:	6681      	str	r1, [r0, #104]	@ 0x68
2002613c:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
20026140:	f8df e04c 	ldr.w	lr, [pc, #76]	@ 20026190 <mbedtls_sha256_starts+0x88>
20026144:	f8df c04c 	ldr.w	ip, [pc, #76]	@ 20026194 <mbedtls_sha256_starts+0x8c>
20026148:	4f09      	ldr	r7, [pc, #36]	@ (20026170 <mbedtls_sha256_starts+0x68>)
2002614a:	4e0a      	ldr	r6, [pc, #40]	@ (20026174 <mbedtls_sha256_starts+0x6c>)
2002614c:	4d0a      	ldr	r5, [pc, #40]	@ (20026178 <mbedtls_sha256_starts+0x70>)
2002614e:	4c0b      	ldr	r4, [pc, #44]	@ (2002617c <mbedtls_sha256_starts+0x74>)
20026150:	4a0b      	ldr	r2, [pc, #44]	@ (20026180 <mbedtls_sha256_starts+0x78>)
20026152:	4b0c      	ldr	r3, [pc, #48]	@ (20026184 <mbedtls_sha256_starts+0x7c>)
20026154:	e7e5      	b.n	20026122 <mbedtls_sha256_starts+0x1a>
20026156:	bf00      	nop
20026158:	3070dd17 	.word	0x3070dd17
2002615c:	f70e5939 	.word	0xf70e5939
20026160:	ffc00b31 	.word	0xffc00b31
20026164:	68581511 	.word	0x68581511
20026168:	64f98fa7 	.word	0x64f98fa7
2002616c:	befa4fa4 	.word	0xbefa4fa4
20026170:	3c6ef372 	.word	0x3c6ef372
20026174:	a54ff53a 	.word	0xa54ff53a
20026178:	510e527f 	.word	0x510e527f
2002617c:	9b05688c 	.word	0x9b05688c
20026180:	1f83d9ab 	.word	0x1f83d9ab
20026184:	5be0cd19 	.word	0x5be0cd19
20026188:	c1059ed8 	.word	0xc1059ed8
2002618c:	367cd507 	.word	0x367cd507
20026190:	6a09e667 	.word	0x6a09e667
20026194:	bb67ae85 	.word	0xbb67ae85

20026198 <mbedtls_sha256_process>:
20026198:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
2002619c:	b0cf      	sub	sp, #316	@ 0x13c
2002619e:	aa06      	add	r2, sp, #24
200261a0:	460b      	mov	r3, r1
200261a2:	4616      	mov	r6, r2
200261a4:	9004      	str	r0, [sp, #16]
200261a6:	f100 0408 	add.w	r4, r0, #8
200261aa:	f100 0728 	add.w	r7, r0, #40	@ 0x28
200261ae:	4635      	mov	r5, r6
200261b0:	6820      	ldr	r0, [r4, #0]
200261b2:	6861      	ldr	r1, [r4, #4]
200261b4:	3408      	adds	r4, #8
200261b6:	c503      	stmia	r5!, {r0, r1}
200261b8:	42bc      	cmp	r4, r7
200261ba:	462e      	mov	r6, r5
200261bc:	d1f7      	bne.n	200261ae <mbedtls_sha256_process+0x16>
200261be:	f10d 0a38 	add.w	sl, sp, #56	@ 0x38
200261c2:	4619      	mov	r1, r3
200261c4:	4650      	mov	r0, sl
200261c6:	f103 0440 	add.w	r4, r3, #64	@ 0x40
200261ca:	784b      	ldrb	r3, [r1, #1]
200261cc:	780d      	ldrb	r5, [r1, #0]
200261ce:	041b      	lsls	r3, r3, #16
200261d0:	ea43 6305 	orr.w	r3, r3, r5, lsl #24
200261d4:	78cd      	ldrb	r5, [r1, #3]
200261d6:	3104      	adds	r1, #4
200261d8:	432b      	orrs	r3, r5
200261da:	f811 5c02 	ldrb.w	r5, [r1, #-2]
200261de:	428c      	cmp	r4, r1
200261e0:	ea43 2305 	orr.w	r3, r3, r5, lsl #8
200261e4:	f840 3b04 	str.w	r3, [r0], #4
200261e8:	d1ef      	bne.n	200261ca <mbedtls_sha256_process+0x32>
200261ea:	4996      	ldr	r1, [pc, #600]	@ (20026444 <mbedtls_sha256_process+0x2ac>)
200261ec:	46d4      	mov	ip, sl
200261ee:	e9d2 e705 	ldrd	lr, r7, [r2, #20]
200261f2:	e9d2 9600 	ldrd	r9, r6, [r2]
200261f6:	460d      	mov	r5, r1
200261f8:	9100      	str	r1, [sp, #0]
200261fa:	f8d2 801c 	ldr.w	r8, [r2, #28]
200261fe:	f8d2 b010 	ldr.w	fp, [r2, #16]
20026202:	e9d2 3202 	ldrd	r3, r2, [r2, #8]
20026206:	6829      	ldr	r1, [r5, #0]
20026208:	f8dc 0000 	ldr.w	r0, [ip]
2002620c:	ea4f 24fb 	mov.w	r4, fp, ror #11
20026210:	ea84 14bb 	eor.w	r4, r4, fp, ror #6
20026214:	4401      	add	r1, r0
20026216:	ea87 000e 	eor.w	r0, r7, lr
2002621a:	ea84 647b 	eor.w	r4, r4, fp, ror #25
2002621e:	ea00 000b 	and.w	r0, r0, fp
20026222:	4078      	eors	r0, r7
20026224:	4421      	add	r1, r4
20026226:	4401      	add	r1, r0
20026228:	4441      	add	r1, r8
2002622a:	ea4f 3879 	mov.w	r8, r9, ror #13
2002622e:	ea88 08b9 	eor.w	r8, r8, r9, ror #2
20026232:	ea88 58b9 	eor.w	r8, r8, r9, ror #22
20026236:	440a      	add	r2, r1
20026238:	4488      	add	r8, r1
2002623a:	ea49 0106 	orr.w	r1, r9, r6
2002623e:	ea09 0006 	and.w	r0, r9, r6
20026242:	4019      	ands	r1, r3
20026244:	4301      	orrs	r1, r0
20026246:	4488      	add	r8, r1
20026248:	f8dc 0004 	ldr.w	r0, [ip, #4]
2002624c:	6869      	ldr	r1, [r5, #4]
2002624e:	ea4f 3478 	mov.w	r4, r8, ror #13
20026252:	4401      	add	r1, r0
20026254:	ea8b 000e 	eor.w	r0, fp, lr
20026258:	4010      	ands	r0, r2
2002625a:	ea80 000e 	eor.w	r0, r0, lr
2002625e:	4439      	add	r1, r7
20026260:	4401      	add	r1, r0
20026262:	ea4f 20f2 	mov.w	r0, r2, ror #11
20026266:	ea80 10b2 	eor.w	r0, r0, r2, ror #6
2002626a:	ea80 6072 	eor.w	r0, r0, r2, ror #25
2002626e:	ea84 04b8 	eor.w	r4, r4, r8, ror #2
20026272:	4401      	add	r1, r0
20026274:	ea84 54b8 	eor.w	r4, r4, r8, ror #22
20026278:	440b      	add	r3, r1
2002627a:	440c      	add	r4, r1
2002627c:	ea48 0109 	orr.w	r1, r8, r9
20026280:	ea08 0009 	and.w	r0, r8, r9
20026284:	4031      	ands	r1, r6
20026286:	4301      	orrs	r1, r0
20026288:	440c      	add	r4, r1
2002628a:	f8dc 0008 	ldr.w	r0, [ip, #8]
2002628e:	68a9      	ldr	r1, [r5, #8]
20026290:	ea82 0703 	eor.w	r7, r2, r3
20026294:	4401      	add	r1, r0
20026296:	ea82 000b 	eor.w	r0, r2, fp
2002629a:	4018      	ands	r0, r3
2002629c:	ea80 000b 	eor.w	r0, r0, fp
200262a0:	4471      	add	r1, lr
200262a2:	4401      	add	r1, r0
200262a4:	ea4f 20f3 	mov.w	r0, r3, ror #11
200262a8:	ea80 10b3 	eor.w	r0, r0, r3, ror #6
200262ac:	ea80 6073 	eor.w	r0, r0, r3, ror #25
200262b0:	4401      	add	r1, r0
200262b2:	ea4f 3074 	mov.w	r0, r4, ror #13
200262b6:	ea80 00b4 	eor.w	r0, r0, r4, ror #2
200262ba:	ea80 50b4 	eor.w	r0, r0, r4, ror #22
200262be:	eb06 0e01 	add.w	lr, r6, r1
200262c2:	4408      	add	r0, r1
200262c4:	ea48 0104 	orr.w	r1, r8, r4
200262c8:	ea08 0604 	and.w	r6, r8, r4
200262cc:	ea01 0109 	and.w	r1, r1, r9
200262d0:	4331      	orrs	r1, r6
200262d2:	4408      	add	r0, r1
200262d4:	f8dc 600c 	ldr.w	r6, [ip, #12]
200262d8:	68e9      	ldr	r1, [r5, #12]
200262da:	ea07 070e 	and.w	r7, r7, lr
200262de:	440e      	add	r6, r1
200262e0:	ea4f 21fe 	mov.w	r1, lr, ror #11
200262e4:	4057      	eors	r7, r2
200262e6:	445e      	add	r6, fp
200262e8:	ea81 11be 	eor.w	r1, r1, lr, ror #6
200262ec:	ea81 617e 	eor.w	r1, r1, lr, ror #25
200262f0:	443e      	add	r6, r7
200262f2:	440e      	add	r6, r1
200262f4:	ea4f 3170 	mov.w	r1, r0, ror #13
200262f8:	ea81 01b0 	eor.w	r1, r1, r0, ror #2
200262fc:	ea81 51b0 	eor.w	r1, r1, r0, ror #22
20026300:	44b1      	add	r9, r6
20026302:	4431      	add	r1, r6
20026304:	ea44 0600 	orr.w	r6, r4, r0
20026308:	ea04 0700 	and.w	r7, r4, r0
2002630c:	ea06 0608 	and.w	r6, r6, r8
20026310:	433e      	orrs	r6, r7
20026312:	4431      	add	r1, r6
20026314:	f8dc 7010 	ldr.w	r7, [ip, #16]
20026318:	692e      	ldr	r6, [r5, #16]
2002631a:	3520      	adds	r5, #32
2002631c:	443e      	add	r6, r7
2002631e:	4416      	add	r6, r2
20026320:	ea83 020e 	eor.w	r2, r3, lr
20026324:	ea02 0209 	and.w	r2, r2, r9
20026328:	405a      	eors	r2, r3
2002632a:	4416      	add	r6, r2
2002632c:	ea4f 22f9 	mov.w	r2, r9, ror #11
20026330:	ea82 12b9 	eor.w	r2, r2, r9, ror #6
20026334:	ea82 6279 	eor.w	r2, r2, r9, ror #25
20026338:	4416      	add	r6, r2
2002633a:	ea4f 3271 	mov.w	r2, r1, ror #13
2002633e:	ea82 02b1 	eor.w	r2, r2, r1, ror #2
20026342:	ea82 52b1 	eor.w	r2, r2, r1, ror #22
20026346:	44b0      	add	r8, r6
20026348:	4432      	add	r2, r6
2002634a:	ea40 0601 	orr.w	r6, r0, r1
2002634e:	ea00 0701 	and.w	r7, r0, r1
20026352:	4026      	ands	r6, r4
20026354:	433e      	orrs	r6, r7
20026356:	4432      	add	r2, r6
20026358:	f8dc 7014 	ldr.w	r7, [ip, #20]
2002635c:	f855 6c0c 	ldr.w	r6, [r5, #-12]
20026360:	f10c 0c20 	add.w	ip, ip, #32
20026364:	443e      	add	r6, r7
20026366:	441e      	add	r6, r3
20026368:	ea8e 0309 	eor.w	r3, lr, r9
2002636c:	ea03 0308 	and.w	r3, r3, r8
20026370:	ea83 030e 	eor.w	r3, r3, lr
20026374:	441e      	add	r6, r3
20026376:	ea4f 23f8 	mov.w	r3, r8, ror #11
2002637a:	ea83 13b8 	eor.w	r3, r3, r8, ror #6
2002637e:	ea83 6378 	eor.w	r3, r3, r8, ror #25
20026382:	441e      	add	r6, r3
20026384:	ea4f 3372 	mov.w	r3, r2, ror #13
20026388:	ea83 03b2 	eor.w	r3, r3, r2, ror #2
2002638c:	19a7      	adds	r7, r4, r6
2002638e:	ea83 53b2 	eor.w	r3, r3, r2, ror #22
20026392:	ea41 0402 	orr.w	r4, r1, r2
20026396:	4433      	add	r3, r6
20026398:	4004      	ands	r4, r0
2002639a:	ea01 0602 	and.w	r6, r1, r2
2002639e:	4334      	orrs	r4, r6
200263a0:	4423      	add	r3, r4
200263a2:	f85c 6c08 	ldr.w	r6, [ip, #-8]
200263a6:	f855 4c08 	ldr.w	r4, [r5, #-8]
200263aa:	4434      	add	r4, r6
200263ac:	ea89 0608 	eor.w	r6, r9, r8
200263b0:	403e      	ands	r6, r7
200263b2:	ea86 0609 	eor.w	r6, r6, r9
200263b6:	4474      	add	r4, lr
200263b8:	4434      	add	r4, r6
200263ba:	ea4f 26f7 	mov.w	r6, r7, ror #11
200263be:	ea86 16b7 	eor.w	r6, r6, r7, ror #6
200263c2:	ea86 6677 	eor.w	r6, r6, r7, ror #25
200263c6:	4434      	add	r4, r6
200263c8:	eb00 0e04 	add.w	lr, r0, r4
200263cc:	ea4f 3073 	mov.w	r0, r3, ror #13
200263d0:	ea80 00b3 	eor.w	r0, r0, r3, ror #2
200263d4:	ea80 50b3 	eor.w	r0, r0, r3, ror #22
200263d8:	4420      	add	r0, r4
200263da:	ea42 0403 	orr.w	r4, r2, r3
200263de:	400c      	ands	r4, r1
200263e0:	ea02 0603 	and.w	r6, r2, r3
200263e4:	4334      	orrs	r4, r6
200263e6:	1906      	adds	r6, r0, r4
200263e8:	f855 0c04 	ldr.w	r0, [r5, #-4]
200263ec:	f85c 4c04 	ldr.w	r4, [ip, #-4]
200263f0:	4420      	add	r0, r4
200263f2:	ea88 0407 	eor.w	r4, r8, r7
200263f6:	ea04 040e 	and.w	r4, r4, lr
200263fa:	4448      	add	r0, r9
200263fc:	ea84 0408 	eor.w	r4, r4, r8
20026400:	4420      	add	r0, r4
20026402:	ea4f 24fe 	mov.w	r4, lr, ror #11
20026406:	ea84 14be 	eor.w	r4, r4, lr, ror #6
2002640a:	ea84 647e 	eor.w	r4, r4, lr, ror #25
2002640e:	4420      	add	r0, r4
20026410:	eb01 0b00 	add.w	fp, r1, r0
20026414:	ea4f 3176 	mov.w	r1, r6, ror #13
20026418:	ea81 01b6 	eor.w	r1, r1, r6, ror #2
2002641c:	ea81 51b6 	eor.w	r1, r1, r6, ror #22
20026420:	4401      	add	r1, r0
20026422:	ea43 0006 	orr.w	r0, r3, r6
20026426:	4010      	ands	r0, r2
20026428:	ea03 0406 	and.w	r4, r3, r6
2002642c:	4320      	orrs	r0, r4
2002642e:	eb01 0900 	add.w	r9, r1, r0
20026432:	4905      	ldr	r1, [pc, #20]	@ (20026448 <mbedtls_sha256_process+0x2b0>)
20026434:	42a9      	cmp	r1, r5
20026436:	f47f aee6 	bne.w	20026206 <mbedtls_sha256_process+0x6e>
2002643a:	f10a 01c0 	add.w	r1, sl, #192	@ 0xc0
2002643e:	9105      	str	r1, [sp, #20]
20026440:	e004      	b.n	2002644c <mbedtls_sha256_process+0x2b4>
20026442:	bf00      	nop
20026444:	2002bfb4 	.word	0x2002bfb4
20026448:	2002bff4 	.word	0x2002bff4
2002644c:	f8da 1038 	ldr.w	r1, [sl, #56]	@ 0x38
20026450:	f8da 5004 	ldr.w	r5, [sl, #4]
20026454:	ea4f 44f1 	mov.w	r4, r1, ror #19
20026458:	ea84 4471 	eor.w	r4, r4, r1, ror #17
2002645c:	f8da 0000 	ldr.w	r0, [sl]
20026460:	ea84 2491 	eor.w	r4, r4, r1, lsr #10
20026464:	f8da 1024 	ldr.w	r1, [sl, #36]	@ 0x24
20026468:	f10a 0a20 	add.w	sl, sl, #32
2002646c:	4401      	add	r1, r0
2002646e:	ea4f 40b5 	mov.w	r0, r5, ror #18
20026472:	ea80 10f5 	eor.w	r0, r0, r5, ror #7
20026476:	ea80 00d5 	eor.w	r0, r0, r5, lsr #3
2002647a:	4421      	add	r1, r4
2002647c:	4401      	add	r1, r0
2002647e:	9103      	str	r1, [sp, #12]
20026480:	ea87 000e 	eor.w	r0, r7, lr
20026484:	9900      	ldr	r1, [sp, #0]
20026486:	ea4f 24fb 	mov.w	r4, fp, ror #11
2002648a:	ea84 14bb 	eor.w	r4, r4, fp, ror #6
2002648e:	ea00 000b 	and.w	r0, r0, fp
20026492:	ea84 647b 	eor.w	r4, r4, fp, ror #25
20026496:	6c09      	ldr	r1, [r1, #64]	@ 0x40
20026498:	4078      	eors	r0, r7
2002649a:	4420      	add	r0, r4
2002649c:	4401      	add	r1, r0
2002649e:	9803      	ldr	r0, [sp, #12]
200264a0:	ea4f 3479 	mov.w	r4, r9, ror #13
200264a4:	4401      	add	r1, r0
200264a6:	4441      	add	r1, r8
200264a8:	eb02 0801 	add.w	r8, r2, r1
200264ac:	ea49 0206 	orr.w	r2, r9, r6
200264b0:	f8ca 0020 	str.w	r0, [sl, #32]
200264b4:	ea84 04b9 	eor.w	r4, r4, r9, ror #2
200264b8:	ea09 0006 	and.w	r0, r9, r6
200264bc:	401a      	ands	r2, r3
200264be:	4302      	orrs	r2, r0
200264c0:	ea84 54b9 	eor.w	r4, r4, r9, ror #22
200264c4:	4414      	add	r4, r2
200264c6:	f8da 201c 	ldr.w	r2, [sl, #28]
200264ca:	440c      	add	r4, r1
200264cc:	ea4f 4cf2 	mov.w	ip, r2, ror #19
200264d0:	ea8c 4c72 	eor.w	ip, ip, r2, ror #17
200264d4:	f85a 1c18 	ldr.w	r1, [sl, #-24]
200264d8:	ea8c 2c92 	eor.w	ip, ip, r2, lsr #10
200264dc:	f8da 2008 	ldr.w	r2, [sl, #8]
200264e0:	18a8      	adds	r0, r5, r2
200264e2:	ea4f 42b1 	mov.w	r2, r1, ror #18
200264e6:	ea82 12f1 	eor.w	r2, r2, r1, ror #7
200264ea:	ea82 02d1 	eor.w	r2, r2, r1, lsr #3
200264ee:	4460      	add	r0, ip
200264f0:	4410      	add	r0, r2
200264f2:	9a00      	ldr	r2, [sp, #0]
200264f4:	ea8b 050e 	eor.w	r5, fp, lr
200264f8:	6c52      	ldr	r2, [r2, #68]	@ 0x44
200264fa:	ea05 0508 	and.w	r5, r5, r8
200264fe:	443a      	add	r2, r7
20026500:	4402      	add	r2, r0
20026502:	ea85 050e 	eor.w	r5, r5, lr
20026506:	4415      	add	r5, r2
20026508:	ea4f 22f8 	mov.w	r2, r8, ror #11
2002650c:	ea82 12b8 	eor.w	r2, r2, r8, ror #6
20026510:	ea82 6278 	eor.w	r2, r2, r8, ror #25
20026514:	442a      	add	r2, r5
20026516:	4413      	add	r3, r2
20026518:	9301      	str	r3, [sp, #4]
2002651a:	ea49 0504 	orr.w	r5, r9, r4
2002651e:	ea4f 3374 	mov.w	r3, r4, ror #13
20026522:	ea09 0704 	and.w	r7, r9, r4
20026526:	ea83 03b4 	eor.w	r3, r3, r4, ror #2
2002652a:	4035      	ands	r5, r6
2002652c:	433d      	orrs	r5, r7
2002652e:	ea83 53b4 	eor.w	r3, r3, r4, ror #22
20026532:	442b      	add	r3, r5
20026534:	4413      	add	r3, r2
20026536:	9a03      	ldr	r2, [sp, #12]
20026538:	f85a 5c14 	ldr.w	r5, [sl, #-20]
2002653c:	ea4f 4cf2 	mov.w	ip, r2, ror #19
20026540:	ea8c 4c72 	eor.w	ip, ip, r2, ror #17
20026544:	ea8c 2c92 	eor.w	ip, ip, r2, lsr #10
20026548:	f8da 200c 	ldr.w	r2, [sl, #12]
2002654c:	f8ca 0024 	str.w	r0, [sl, #36]	@ 0x24
20026550:	188f      	adds	r7, r1, r2
20026552:	ea4f 42b5 	mov.w	r2, r5, ror #18
20026556:	ea82 12f5 	eor.w	r2, r2, r5, ror #7
2002655a:	ea82 02d5 	eor.w	r2, r2, r5, lsr #3
2002655e:	4467      	add	r7, ip
20026560:	4417      	add	r7, r2
20026562:	9a01      	ldr	r2, [sp, #4]
20026564:	ea8b 0108 	eor.w	r1, fp, r8
20026568:	4011      	ands	r1, r2
2002656a:	9a00      	ldr	r2, [sp, #0]
2002656c:	ea81 010b 	eor.w	r1, r1, fp
20026570:	6c92      	ldr	r2, [r2, #72]	@ 0x48
20026572:	f8ca 7028 	str.w	r7, [sl, #40]	@ 0x28
20026576:	4472      	add	r2, lr
20026578:	443a      	add	r2, r7
2002657a:	eb01 0c02 	add.w	ip, r1, r2
2002657e:	9a01      	ldr	r2, [sp, #4]
20026580:	9901      	ldr	r1, [sp, #4]
20026582:	ea4f 22f2 	mov.w	r2, r2, ror #11
20026586:	ea82 12b1 	eor.w	r2, r2, r1, ror #6
2002658a:	ea82 6271 	eor.w	r2, r2, r1, ror #25
2002658e:	4462      	add	r2, ip
20026590:	18b1      	adds	r1, r6, r2
20026592:	9102      	str	r1, [sp, #8]
20026594:	ea44 0603 	orr.w	r6, r4, r3
20026598:	ea4f 3173 	mov.w	r1, r3, ror #13
2002659c:	ea04 0c03 	and.w	ip, r4, r3
200265a0:	ea81 01b3 	eor.w	r1, r1, r3, ror #2
200265a4:	ea06 0609 	and.w	r6, r6, r9
200265a8:	ea46 060c 	orr.w	r6, r6, ip
200265ac:	ea81 51b3 	eor.w	r1, r1, r3, ror #22
200265b0:	4431      	add	r1, r6
200265b2:	4411      	add	r1, r2
200265b4:	ea4f 42f0 	mov.w	r2, r0, ror #19
200265b8:	ea82 4270 	eor.w	r2, r2, r0, ror #17
200265bc:	f85a 6c10 	ldr.w	r6, [sl, #-16]
200265c0:	ea82 2090 	eor.w	r0, r2, r0, lsr #10
200265c4:	f8da 2010 	ldr.w	r2, [sl, #16]
200265c8:	ea03 0e01 	and.w	lr, r3, r1
200265cc:	4415      	add	r5, r2
200265ce:	ea4f 42b6 	mov.w	r2, r6, ror #18
200265d2:	ea82 12f6 	eor.w	r2, r2, r6, ror #7
200265d6:	ea82 02d6 	eor.w	r2, r2, r6, lsr #3
200265da:	4405      	add	r5, r0
200265dc:	4415      	add	r5, r2
200265de:	9a01      	ldr	r2, [sp, #4]
200265e0:	ea88 0002 	eor.w	r0, r8, r2
200265e4:	9a02      	ldr	r2, [sp, #8]
200265e6:	4010      	ands	r0, r2
200265e8:	9a00      	ldr	r2, [sp, #0]
200265ea:	ea80 0008 	eor.w	r0, r0, r8
200265ee:	6cd2      	ldr	r2, [r2, #76]	@ 0x4c
200265f0:	f8ca 502c 	str.w	r5, [sl, #44]	@ 0x2c
200265f4:	445a      	add	r2, fp
200265f6:	442a      	add	r2, r5
200265f8:	eb00 0c02 	add.w	ip, r0, r2
200265fc:	9a02      	ldr	r2, [sp, #8]
200265fe:	9802      	ldr	r0, [sp, #8]
20026600:	ea4f 22f2 	mov.w	r2, r2, ror #11
20026604:	ea82 12b0 	eor.w	r2, r2, r0, ror #6
20026608:	ea82 6270 	eor.w	r2, r2, r0, ror #25
2002660c:	4462      	add	r2, ip
2002660e:	ea4f 3071 	mov.w	r0, r1, ror #13
20026612:	ea43 0c01 	orr.w	ip, r3, r1
20026616:	ea80 00b1 	eor.w	r0, r0, r1, ror #2
2002661a:	ea0c 0c04 	and.w	ip, ip, r4
2002661e:	ea4c 0c0e 	orr.w	ip, ip, lr
20026622:	ea80 50b1 	eor.w	r0, r0, r1, ror #22
20026626:	4460      	add	r0, ip
20026628:	4410      	add	r0, r2
2002662a:	4491      	add	r9, r2
2002662c:	ea4f 42f7 	mov.w	r2, r7, ror #19
20026630:	ea82 4277 	eor.w	r2, r2, r7, ror #17
20026634:	f85a cc0c 	ldr.w	ip, [sl, #-12]
20026638:	ea82 2797 	eor.w	r7, r2, r7, lsr #10
2002663c:	f8da 2014 	ldr.w	r2, [sl, #20]
20026640:	ea01 0e00 	and.w	lr, r1, r0
20026644:	4416      	add	r6, r2
20026646:	ea4f 42bc 	mov.w	r2, ip, ror #18
2002664a:	ea82 12fc 	eor.w	r2, r2, ip, ror #7
2002664e:	ea82 02dc 	eor.w	r2, r2, ip, lsr #3
20026652:	443e      	add	r6, r7
20026654:	4416      	add	r6, r2
20026656:	e9dd 2701 	ldrd	r2, r7, [sp, #4]
2002665a:	4057      	eors	r7, r2
2002665c:	ea07 0709 	and.w	r7, r7, r9
20026660:	4057      	eors	r7, r2
20026662:	9a00      	ldr	r2, [sp, #0]
20026664:	f8ca 6030 	str.w	r6, [sl, #48]	@ 0x30
20026668:	6d12      	ldr	r2, [r2, #80]	@ 0x50
2002666a:	4432      	add	r2, r6
2002666c:	4442      	add	r2, r8
2002666e:	443a      	add	r2, r7
20026670:	ea4f 27f9 	mov.w	r7, r9, ror #11
20026674:	ea87 17b9 	eor.w	r7, r7, r9, ror #6
20026678:	ea87 6779 	eor.w	r7, r7, r9, ror #25
2002667c:	4417      	add	r7, r2
2002667e:	eb04 0807 	add.w	r8, r4, r7
20026682:	ea4f 3270 	mov.w	r2, r0, ror #13
20026686:	ea41 0400 	orr.w	r4, r1, r0
2002668a:	ea82 02b0 	eor.w	r2, r2, r0, ror #2
2002668e:	401c      	ands	r4, r3
20026690:	ea44 040e 	orr.w	r4, r4, lr
20026694:	ea82 52b0 	eor.w	r2, r2, r0, ror #22
20026698:	4422      	add	r2, r4
2002669a:	ea4f 44f5 	mov.w	r4, r5, ror #19
2002669e:	ea84 4475 	eor.w	r4, r4, r5, ror #17
200266a2:	ea84 2495 	eor.w	r4, r4, r5, lsr #10
200266a6:	f8da 5018 	ldr.w	r5, [sl, #24]
200266aa:	f85a ec08 	ldr.w	lr, [sl, #-8]
200266ae:	4465      	add	r5, ip
200266b0:	4425      	add	r5, r4
200266b2:	ea4f 44be 	mov.w	r4, lr, ror #18
200266b6:	ea84 14fe 	eor.w	r4, r4, lr, ror #7
200266ba:	ea84 04de 	eor.w	r4, r4, lr, lsr #3
200266be:	4425      	add	r5, r4
200266c0:	9c02      	ldr	r4, [sp, #8]
200266c2:	443a      	add	r2, r7
200266c4:	ea84 0709 	eor.w	r7, r4, r9
200266c8:	ea07 0708 	and.w	r7, r7, r8
200266cc:	ea87 0c04 	eor.w	ip, r7, r4
200266d0:	9c00      	ldr	r4, [sp, #0]
200266d2:	9f01      	ldr	r7, [sp, #4]
200266d4:	6d64      	ldr	r4, [r4, #84]	@ 0x54
200266d6:	ea00 0b02 	and.w	fp, r0, r2
200266da:	442c      	add	r4, r5
200266dc:	443c      	add	r4, r7
200266de:	eb0c 0704 	add.w	r7, ip, r4
200266e2:	ea4f 24f8 	mov.w	r4, r8, ror #11
200266e6:	ea84 14b8 	eor.w	r4, r4, r8, ror #6
200266ea:	ea84 6478 	eor.w	r4, r4, r8, ror #25
200266ee:	443c      	add	r4, r7
200266f0:	191f      	adds	r7, r3, r4
200266f2:	ea40 0c02 	orr.w	ip, r0, r2
200266f6:	ea4f 3372 	mov.w	r3, r2, ror #13
200266fa:	ea0c 0c01 	and.w	ip, ip, r1
200266fe:	ea83 03b2 	eor.w	r3, r3, r2, ror #2
20026702:	ea4c 0c0b 	orr.w	ip, ip, fp
20026706:	ea83 53b2 	eor.w	r3, r3, r2, ror #22
2002670a:	4463      	add	r3, ip
2002670c:	4423      	add	r3, r4
2002670e:	ea4f 44f6 	mov.w	r4, r6, ror #19
20026712:	ea84 4476 	eor.w	r4, r4, r6, ror #17
20026716:	ea84 2496 	eor.w	r4, r4, r6, lsr #10
2002671a:	f8da 601c 	ldr.w	r6, [sl, #28]
2002671e:	f85a cc04 	ldr.w	ip, [sl, #-4]
20026722:	4476      	add	r6, lr
20026724:	4426      	add	r6, r4
20026726:	ea4f 44bc 	mov.w	r4, ip, ror #18
2002672a:	ea84 14fc 	eor.w	r4, r4, ip, ror #7
2002672e:	ea84 04dc 	eor.w	r4, r4, ip, lsr #3
20026732:	eb06 0b04 	add.w	fp, r6, r4
20026736:	9c00      	ldr	r4, [sp, #0]
20026738:	9e02      	ldr	r6, [sp, #8]
2002673a:	6da4      	ldr	r4, [r4, #88]	@ 0x58
2002673c:	ea89 0e08 	eor.w	lr, r9, r8
20026740:	445c      	add	r4, fp
20026742:	4434      	add	r4, r6
20026744:	ea0e 0e07 	and.w	lr, lr, r7
20026748:	ea4f 26f7 	mov.w	r6, r7, ror #11
2002674c:	ea8e 0e09 	eor.w	lr, lr, r9
20026750:	ea86 16b7 	eor.w	r6, r6, r7, ror #6
20026754:	4474      	add	r4, lr
20026756:	ea86 6677 	eor.w	r6, r6, r7, ror #25
2002675a:	4434      	add	r4, r6
2002675c:	eb01 0e04 	add.w	lr, r1, r4
20026760:	ea42 0603 	orr.w	r6, r2, r3
20026764:	ea4f 3173 	mov.w	r1, r3, ror #13
20026768:	f8ca b038 	str.w	fp, [sl, #56]	@ 0x38
2002676c:	4006      	ands	r6, r0
2002676e:	ea02 0b03 	and.w	fp, r2, r3
20026772:	ea81 01b3 	eor.w	r1, r1, r3, ror #2
20026776:	ea46 060b 	orr.w	r6, r6, fp
2002677a:	ea81 51b3 	eor.w	r1, r1, r3, ror #22
2002677e:	4431      	add	r1, r6
20026780:	190e      	adds	r6, r1, r4
20026782:	ea4f 41f5 	mov.w	r1, r5, ror #19
20026786:	ea81 4175 	eor.w	r1, r1, r5, ror #17
2002678a:	f8ca 5034 	str.w	r5, [sl, #52]	@ 0x34
2002678e:	ea81 2195 	eor.w	r1, r1, r5, lsr #10
20026792:	9d03      	ldr	r5, [sp, #12]
20026794:	f8da 4000 	ldr.w	r4, [sl]
20026798:	4465      	add	r5, ip
2002679a:	4429      	add	r1, r5
2002679c:	ea4f 45b4 	mov.w	r5, r4, ror #18
200267a0:	ea85 15f4 	eor.w	r5, r5, r4, ror #7
200267a4:	ea85 05d4 	eor.w	r5, r5, r4, lsr #3
200267a8:	194c      	adds	r4, r1, r5
200267aa:	9900      	ldr	r1, [sp, #0]
200267ac:	ea88 0507 	eor.w	r5, r8, r7
200267b0:	6dc9      	ldr	r1, [r1, #92]	@ 0x5c
200267b2:	ea05 050e 	and.w	r5, r5, lr
200267b6:	4421      	add	r1, r4
200267b8:	4449      	add	r1, r9
200267ba:	ea85 0508 	eor.w	r5, r5, r8
200267be:	440d      	add	r5, r1
200267c0:	ea4f 21fe 	mov.w	r1, lr, ror #11
200267c4:	ea81 11be 	eor.w	r1, r1, lr, ror #6
200267c8:	ea81 617e 	eor.w	r1, r1, lr, ror #25
200267cc:	4429      	add	r1, r5
200267ce:	f8ca 403c 	str.w	r4, [sl, #60]	@ 0x3c
200267d2:	eb00 0b01 	add.w	fp, r0, r1
200267d6:	ea43 0406 	orr.w	r4, r3, r6
200267da:	ea4f 3076 	mov.w	r0, r6, ror #13
200267de:	ea80 00b6 	eor.w	r0, r0, r6, ror #2
200267e2:	4014      	ands	r4, r2
200267e4:	ea03 0506 	and.w	r5, r3, r6
200267e8:	ea80 50b6 	eor.w	r0, r0, r6, ror #22
200267ec:	432c      	orrs	r4, r5
200267ee:	4420      	add	r0, r4
200267f0:	eb00 0901 	add.w	r9, r0, r1
200267f4:	9900      	ldr	r1, [sp, #0]
200267f6:	3120      	adds	r1, #32
200267f8:	9100      	str	r1, [sp, #0]
200267fa:	9905      	ldr	r1, [sp, #20]
200267fc:	4551      	cmp	r1, sl
200267fe:	f47f ae25 	bne.w	2002644c <mbedtls_sha256_process+0x2b4>
20026802:	9308      	str	r3, [sp, #32]
20026804:	9b04      	ldr	r3, [sp, #16]
20026806:	a906      	add	r1, sp, #24
20026808:	60ca      	str	r2, [r1, #12]
2002680a:	f8c1 801c 	str.w	r8, [r1, #28]
2002680e:	1d1a      	adds	r2, r3, #4
20026810:	618f      	str	r7, [r1, #24]
20026812:	3324      	adds	r3, #36	@ 0x24
20026814:	f8c1 e014 	str.w	lr, [r1, #20]
20026818:	604e      	str	r6, [r1, #4]
2002681a:	f8c1 b010 	str.w	fp, [r1, #16]
2002681e:	f8c1 9000 	str.w	r9, [r1]
20026822:	f852 0f04 	ldr.w	r0, [r2, #4]!
20026826:	f851 4b04 	ldr.w	r4, [r1], #4
2002682a:	4293      	cmp	r3, r2
2002682c:	4420      	add	r0, r4
2002682e:	6010      	str	r0, [r2, #0]
20026830:	d1f7      	bne.n	20026822 <mbedtls_sha256_process+0x68a>
20026832:	b04f      	add	sp, #316	@ 0x13c
20026834:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}

20026838 <mbedtls_sha256_update.part.0>:
20026838:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
2002683c:	6803      	ldr	r3, [r0, #0]
2002683e:	4605      	mov	r5, r0
20026840:	f003 073f 	and.w	r7, r3, #63	@ 0x3f
20026844:	189b      	adds	r3, r3, r2
20026846:	6003      	str	r3, [r0, #0]
20026848:	bf28      	it	cs
2002684a:	6843      	ldrcs	r3, [r0, #4]
2002684c:	460e      	mov	r6, r1
2002684e:	bf28      	it	cs
20026850:	3301      	addcs	r3, #1
20026852:	4614      	mov	r4, r2
20026854:	bf28      	it	cs
20026856:	6043      	strcs	r3, [r0, #4]
20026858:	b197      	cbz	r7, 20026880 <mbedtls_sha256_update.part.0+0x48>
2002685a:	f1c7 0940 	rsb	r9, r7, #64	@ 0x40
2002685e:	4591      	cmp	r9, r2
20026860:	d80e      	bhi.n	20026880 <mbedtls_sha256_update.part.0+0x48>
20026862:	f100 0828 	add.w	r8, r0, #40	@ 0x28
20026866:	464a      	mov	r2, r9
20026868:	eb08 0007 	add.w	r0, r8, r7
2002686c:	f004 f8f8 	bl	2002aa60 <memcpy>
20026870:	3c40      	subs	r4, #64	@ 0x40
20026872:	4641      	mov	r1, r8
20026874:	4628      	mov	r0, r5
20026876:	443c      	add	r4, r7
20026878:	f7ff fc8e 	bl	20026198 <mbedtls_sha256_process>
2002687c:	2700      	movs	r7, #0
2002687e:	444e      	add	r6, r9
20026880:	46a0      	mov	r8, r4
20026882:	eb04 0906 	add.w	r9, r4, r6
20026886:	e004      	b.n	20026892 <mbedtls_sha256_update.part.0+0x5a>
20026888:	4628      	mov	r0, r5
2002688a:	f7ff fc85 	bl	20026198 <mbedtls_sha256_process>
2002688e:	f1a8 0840 	sub.w	r8, r8, #64	@ 0x40
20026892:	f1b8 0f3f 	cmp.w	r8, #63	@ 0x3f
20026896:	eba9 0108 	sub.w	r1, r9, r8
2002689a:	d8f5      	bhi.n	20026888 <mbedtls_sha256_update.part.0+0x50>
2002689c:	f06f 033f 	mvn.w	r3, #63	@ 0x3f
200268a0:	09a1      	lsrs	r1, r4, #6
200268a2:	4359      	muls	r1, r3
200268a4:	1862      	adds	r2, r4, r1
200268a6:	d007      	beq.n	200268b8 <mbedtls_sha256_update.part.0+0x80>
200268a8:	f105 0028 	add.w	r0, r5, #40	@ 0x28
200268ac:	1a71      	subs	r1, r6, r1
200268ae:	4438      	add	r0, r7
200268b0:	e8bd 43f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
200268b4:	f004 b8d4 	b.w	2002aa60 <memcpy>
200268b8:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}

200268bc <mbedtls_sha256_update>:
200268bc:	b10a      	cbz	r2, 200268c2 <mbedtls_sha256_update+0x6>
200268be:	f7ff bfbb 	b.w	20026838 <mbedtls_sha256_update.part.0>
200268c2:	4770      	bx	lr

200268c4 <mbedtls_sha256_finish>:
200268c4:	b537      	push	{r0, r1, r2, r4, r5, lr}
200268c6:	4604      	mov	r4, r0
200268c8:	460d      	mov	r5, r1
200268ca:	e9d0 2100 	ldrd	r2, r1, [r0]
200268ce:	0f53      	lsrs	r3, r2, #29
200268d0:	ea43 03c1 	orr.w	r3, r3, r1, lsl #3
200268d4:	ba1b      	rev	r3, r3
200268d6:	9300      	str	r3, [sp, #0]
200268d8:	00d3      	lsls	r3, r2, #3
200268da:	f002 023f 	and.w	r2, r2, #63	@ 0x3f
200268de:	2a37      	cmp	r2, #55	@ 0x37
200268e0:	ba1b      	rev	r3, r3
200268e2:	bf94      	ite	ls
200268e4:	f1c2 0238 	rsbls	r2, r2, #56	@ 0x38
200268e8:	f1c2 0278 	rsbhi	r2, r2, #120	@ 0x78
200268ec:	492b      	ldr	r1, [pc, #172]	@ (2002699c <mbedtls_sha256_finish+0xd8>)
200268ee:	9301      	str	r3, [sp, #4]
200268f0:	f7ff ffe4 	bl	200268bc <mbedtls_sha256_update>
200268f4:	2208      	movs	r2, #8
200268f6:	4669      	mov	r1, sp
200268f8:	4620      	mov	r0, r4
200268fa:	f7ff ff9d 	bl	20026838 <mbedtls_sha256_update.part.0>
200268fe:	7ae3      	ldrb	r3, [r4, #11]
20026900:	702b      	strb	r3, [r5, #0]
20026902:	8963      	ldrh	r3, [r4, #10]
20026904:	706b      	strb	r3, [r5, #1]
20026906:	68a3      	ldr	r3, [r4, #8]
20026908:	0a1b      	lsrs	r3, r3, #8
2002690a:	70ab      	strb	r3, [r5, #2]
2002690c:	68a3      	ldr	r3, [r4, #8]
2002690e:	70eb      	strb	r3, [r5, #3]
20026910:	7be3      	ldrb	r3, [r4, #15]
20026912:	712b      	strb	r3, [r5, #4]
20026914:	89e3      	ldrh	r3, [r4, #14]
20026916:	716b      	strb	r3, [r5, #5]
20026918:	68e3      	ldr	r3, [r4, #12]
2002691a:	0a1b      	lsrs	r3, r3, #8
2002691c:	71ab      	strb	r3, [r5, #6]
2002691e:	68e3      	ldr	r3, [r4, #12]
20026920:	71eb      	strb	r3, [r5, #7]
20026922:	7ce3      	ldrb	r3, [r4, #19]
20026924:	722b      	strb	r3, [r5, #8]
20026926:	8a63      	ldrh	r3, [r4, #18]
20026928:	726b      	strb	r3, [r5, #9]
2002692a:	6923      	ldr	r3, [r4, #16]
2002692c:	0a1b      	lsrs	r3, r3, #8
2002692e:	72ab      	strb	r3, [r5, #10]
20026930:	6923      	ldr	r3, [r4, #16]
20026932:	72eb      	strb	r3, [r5, #11]
20026934:	7de3      	ldrb	r3, [r4, #23]
20026936:	732b      	strb	r3, [r5, #12]
20026938:	8ae3      	ldrh	r3, [r4, #22]
2002693a:	736b      	strb	r3, [r5, #13]
2002693c:	6963      	ldr	r3, [r4, #20]
2002693e:	0a1b      	lsrs	r3, r3, #8
20026940:	73ab      	strb	r3, [r5, #14]
20026942:	6963      	ldr	r3, [r4, #20]
20026944:	73eb      	strb	r3, [r5, #15]
20026946:	7ee3      	ldrb	r3, [r4, #27]
20026948:	742b      	strb	r3, [r5, #16]
2002694a:	8b63      	ldrh	r3, [r4, #26]
2002694c:	746b      	strb	r3, [r5, #17]
2002694e:	69a3      	ldr	r3, [r4, #24]
20026950:	0a1b      	lsrs	r3, r3, #8
20026952:	74ab      	strb	r3, [r5, #18]
20026954:	69a3      	ldr	r3, [r4, #24]
20026956:	74eb      	strb	r3, [r5, #19]
20026958:	7fe3      	ldrb	r3, [r4, #31]
2002695a:	752b      	strb	r3, [r5, #20]
2002695c:	8be3      	ldrh	r3, [r4, #30]
2002695e:	756b      	strb	r3, [r5, #21]
20026960:	69e3      	ldr	r3, [r4, #28]
20026962:	0a1b      	lsrs	r3, r3, #8
20026964:	75ab      	strb	r3, [r5, #22]
20026966:	69e3      	ldr	r3, [r4, #28]
20026968:	75eb      	strb	r3, [r5, #23]
2002696a:	f894 3023 	ldrb.w	r3, [r4, #35]	@ 0x23
2002696e:	762b      	strb	r3, [r5, #24]
20026970:	8c63      	ldrh	r3, [r4, #34]	@ 0x22
20026972:	766b      	strb	r3, [r5, #25]
20026974:	6a23      	ldr	r3, [r4, #32]
20026976:	0a1b      	lsrs	r3, r3, #8
20026978:	76ab      	strb	r3, [r5, #26]
2002697a:	6a23      	ldr	r3, [r4, #32]
2002697c:	76eb      	strb	r3, [r5, #27]
2002697e:	6ea3      	ldr	r3, [r4, #104]	@ 0x68
20026980:	b94b      	cbnz	r3, 20026996 <mbedtls_sha256_finish+0xd2>
20026982:	f894 3027 	ldrb.w	r3, [r4, #39]	@ 0x27
20026986:	772b      	strb	r3, [r5, #28]
20026988:	8ce3      	ldrh	r3, [r4, #38]	@ 0x26
2002698a:	776b      	strb	r3, [r5, #29]
2002698c:	6a63      	ldr	r3, [r4, #36]	@ 0x24
2002698e:	0a1b      	lsrs	r3, r3, #8
20026990:	77ab      	strb	r3, [r5, #30]
20026992:	6a63      	ldr	r3, [r4, #36]	@ 0x24
20026994:	77eb      	strb	r3, [r5, #31]
20026996:	b003      	add	sp, #12
20026998:	bd30      	pop	{r4, r5, pc}
2002699a:	bf00      	nop
2002699c:	2002bf74 	.word	0x2002bf74

200269a0 <mbedtls_sha256>:
200269a0:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
200269a4:	461d      	mov	r5, r3
200269a6:	b09c      	sub	sp, #112	@ 0x70
200269a8:	4607      	mov	r7, r0
200269aa:	a801      	add	r0, sp, #4
200269ac:	4688      	mov	r8, r1
200269ae:	4616      	mov	r6, r2
200269b0:	f7ff fb97 	bl	200260e2 <mbedtls_sha256_init>
200269b4:	b355      	cbz	r5, 20026a0c <mbedtls_sha256+0x6c>
200269b6:	f8df a090 	ldr.w	sl, [pc, #144]	@ 20026a48 <mbedtls_sha256+0xa8>
200269ba:	f8df 9090 	ldr.w	r9, [pc, #144]	@ 20026a4c <mbedtls_sha256+0xac>
200269be:	f8df e090 	ldr.w	lr, [pc, #144]	@ 20026a50 <mbedtls_sha256+0xb0>
200269c2:	f8df c090 	ldr.w	ip, [pc, #144]	@ 20026a54 <mbedtls_sha256+0xb4>
200269c6:	4818      	ldr	r0, [pc, #96]	@ (20026a28 <mbedtls_sha256+0x88>)
200269c8:	4918      	ldr	r1, [pc, #96]	@ (20026a2c <mbedtls_sha256+0x8c>)
200269ca:	4a19      	ldr	r2, [pc, #100]	@ (20026a30 <mbedtls_sha256+0x90>)
200269cc:	4b19      	ldr	r3, [pc, #100]	@ (20026a34 <mbedtls_sha256+0x94>)
200269ce:	2400      	movs	r4, #0
200269d0:	e9cd 2309 	strd	r2, r3, [sp, #36]	@ 0x24
200269d4:	e9cd 0107 	strd	r0, r1, [sp, #28]
200269d8:	4642      	mov	r2, r8
200269da:	4639      	mov	r1, r7
200269dc:	a801      	add	r0, sp, #4
200269de:	e9cd ec05 	strd	lr, ip, [sp, #20]
200269e2:	e9cd 4401 	strd	r4, r4, [sp, #4]
200269e6:	e9cd a903 	strd	sl, r9, [sp, #12]
200269ea:	951b      	str	r5, [sp, #108]	@ 0x6c
200269ec:	f7ff ff66 	bl	200268bc <mbedtls_sha256_update>
200269f0:	4631      	mov	r1, r6
200269f2:	a801      	add	r0, sp, #4
200269f4:	f7ff ff66 	bl	200268c4 <mbedtls_sha256_finish>
200269f8:	4623      	mov	r3, r4
200269fa:	4622      	mov	r2, r4
200269fc:	a901      	add	r1, sp, #4
200269fe:	54ca      	strb	r2, [r1, r3]
20026a00:	3301      	adds	r3, #1
20026a02:	2b6c      	cmp	r3, #108	@ 0x6c
20026a04:	d1fa      	bne.n	200269fc <mbedtls_sha256+0x5c>
20026a06:	b01c      	add	sp, #112	@ 0x70
20026a08:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
20026a0c:	f8df a048 	ldr.w	sl, [pc, #72]	@ 20026a58 <mbedtls_sha256+0xb8>
20026a10:	f8df 9048 	ldr.w	r9, [pc, #72]	@ 20026a5c <mbedtls_sha256+0xbc>
20026a14:	f8df e048 	ldr.w	lr, [pc, #72]	@ 20026a60 <mbedtls_sha256+0xc0>
20026a18:	f8df c048 	ldr.w	ip, [pc, #72]	@ 20026a64 <mbedtls_sha256+0xc4>
20026a1c:	4806      	ldr	r0, [pc, #24]	@ (20026a38 <mbedtls_sha256+0x98>)
20026a1e:	4907      	ldr	r1, [pc, #28]	@ (20026a3c <mbedtls_sha256+0x9c>)
20026a20:	4a07      	ldr	r2, [pc, #28]	@ (20026a40 <mbedtls_sha256+0xa0>)
20026a22:	4b08      	ldr	r3, [pc, #32]	@ (20026a44 <mbedtls_sha256+0xa4>)
20026a24:	e7d3      	b.n	200269ce <mbedtls_sha256+0x2e>
20026a26:	bf00      	nop
20026a28:	ffc00b31 	.word	0xffc00b31
20026a2c:	68581511 	.word	0x68581511
20026a30:	64f98fa7 	.word	0x64f98fa7
20026a34:	befa4fa4 	.word	0xbefa4fa4
20026a38:	510e527f 	.word	0x510e527f
20026a3c:	9b05688c 	.word	0x9b05688c
20026a40:	1f83d9ab 	.word	0x1f83d9ab
20026a44:	5be0cd19 	.word	0x5be0cd19
20026a48:	c1059ed8 	.word	0xc1059ed8
20026a4c:	367cd507 	.word	0x367cd507
20026a50:	3070dd17 	.word	0x3070dd17
20026a54:	f70e5939 	.word	0xf70e5939
20026a58:	6a09e667 	.word	0x6a09e667
20026a5c:	bb67ae85 	.word	0xbb67ae85
20026a60:	3c6ef372 	.word	0x3c6ef372
20026a64:	a54ff53a 	.word	0xa54ff53a

20026a68 <mbedtls_sha512_init>:
20026a68:	22d8      	movs	r2, #216	@ 0xd8
20026a6a:	2100      	movs	r1, #0
20026a6c:	f003 bfde 	b.w	2002aa2c <memset>

20026a70 <mbedtls_sha512_free>:
20026a70:	b138      	cbz	r0, 20026a82 <mbedtls_sha512_free+0x12>
20026a72:	2100      	movs	r1, #0
20026a74:	f100 03d8 	add.w	r3, r0, #216	@ 0xd8
20026a78:	4602      	mov	r2, r0
20026a7a:	3001      	adds	r0, #1
20026a7c:	4298      	cmp	r0, r3
20026a7e:	7011      	strb	r1, [r2, #0]
20026a80:	d1fa      	bne.n	20026a78 <mbedtls_sha512_free+0x8>
20026a82:	4770      	bx	lr

20026a84 <mbedtls_sha512_clone>:
20026a84:	b508      	push	{r3, lr}
20026a86:	22d8      	movs	r2, #216	@ 0xd8
20026a88:	f003 ffea 	bl	2002aa60 <memcpy>
20026a8c:	bd08      	pop	{r3, pc}
	...

20026a90 <mbedtls_sha512_starts>:
20026a90:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
20026a94:	b381      	cbz	r1, 20026af8 <mbedtls_sha512_starts+0x68>
20026a96:	f20f 0bc8 	addw	fp, pc, #200	@ 0xc8
20026a9a:	e9db ab00 	ldrd	sl, fp, [fp]
20026a9e:	f20f 09c8 	addw	r9, pc, #200	@ 0xc8
20026aa2:	e9d9 8900 	ldrd	r8, r9, [r9]
20026aa6:	a732      	add	r7, pc, #200	@ (adr r7, 20026b70 <mbedtls_sha512_starts+0xe0>)
20026aa8:	e9d7 6700 	ldrd	r6, r7, [r7]
20026aac:	a532      	add	r5, pc, #200	@ (adr r5, 20026b78 <mbedtls_sha512_starts+0xe8>)
20026aae:	e9d5 4500 	ldrd	r4, r5, [r5]
20026ab2:	a333      	add	r3, pc, #204	@ (adr r3, 20026b80 <mbedtls_sha512_starts+0xf0>)
20026ab4:	e9d3 2300 	ldrd	r2, r3, [r3]
20026ab8:	ed9f 5b1b 	vldr	d5, [pc, #108]	@ 20026b28 <mbedtls_sha512_starts+0x98>
20026abc:	ed9f 6b1c 	vldr	d6, [pc, #112]	@ 20026b30 <mbedtls_sha512_starts+0xa0>
20026ac0:	ed9f 7b1d 	vldr	d7, [pc, #116]	@ 20026b38 <mbedtls_sha512_starts+0xa8>
20026ac4:	ed9f 4b1e 	vldr	d4, [pc, #120]	@ 20026b40 <mbedtls_sha512_starts+0xb0>
20026ac8:	ed80 5b04 	vstr	d5, [r0, #16]
20026acc:	ed80 4b00 	vstr	d4, [r0]
20026ad0:	ed80 4b02 	vstr	d4, [r0, #8]
20026ad4:	ed80 6b06 	vstr	d6, [r0, #24]
20026ad8:	ed80 7b08 	vstr	d7, [r0, #32]
20026adc:	e9c0 ab0a 	strd	sl, fp, [r0, #40]	@ 0x28
20026ae0:	e9c0 890c 	strd	r8, r9, [r0, #48]	@ 0x30
20026ae4:	e9c0 670e 	strd	r6, r7, [r0, #56]	@ 0x38
20026ae8:	e9c0 4510 	strd	r4, r5, [r0, #64]	@ 0x40
20026aec:	e9c0 2312 	strd	r2, r3, [r0, #72]	@ 0x48
20026af0:	f8c0 10d0 	str.w	r1, [r0, #208]	@ 0xd0
20026af4:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
20026af8:	ed9f 5b13 	vldr	d5, [pc, #76]	@ 20026b48 <mbedtls_sha512_starts+0xb8>
20026afc:	f20f 0b88 	addw	fp, pc, #136	@ 0x88
20026b00:	e9db ab00 	ldrd	sl, fp, [fp]
20026b04:	f20f 0988 	addw	r9, pc, #136	@ 0x88
20026b08:	e9d9 8900 	ldrd	r8, r9, [r9]
20026b0c:	a722      	add	r7, pc, #136	@ (adr r7, 20026b98 <mbedtls_sha512_starts+0x108>)
20026b0e:	e9d7 6700 	ldrd	r6, r7, [r7]
20026b12:	a523      	add	r5, pc, #140	@ (adr r5, 20026ba0 <mbedtls_sha512_starts+0x110>)
20026b14:	e9d5 4500 	ldrd	r4, r5, [r5]
20026b18:	a323      	add	r3, pc, #140	@ (adr r3, 20026ba8 <mbedtls_sha512_starts+0x118>)
20026b1a:	e9d3 2300 	ldrd	r2, r3, [r3]
20026b1e:	ed9f 6b0c 	vldr	d6, [pc, #48]	@ 20026b50 <mbedtls_sha512_starts+0xc0>
20026b22:	ed9f 7b0d 	vldr	d7, [pc, #52]	@ 20026b58 <mbedtls_sha512_starts+0xc8>
20026b26:	e7cd      	b.n	20026ac4 <mbedtls_sha512_starts+0x34>
20026b28:	c1059ed8 	.word	0xc1059ed8
20026b2c:	cbbb9d5d 	.word	0xcbbb9d5d
20026b30:	367cd507 	.word	0x367cd507
20026b34:	629a292a 	.word	0x629a292a
20026b38:	3070dd17 	.word	0x3070dd17
20026b3c:	9159015a 	.word	0x9159015a
	...
20026b48:	f3bcc908 	.word	0xf3bcc908
20026b4c:	6a09e667 	.word	0x6a09e667
20026b50:	84caa73b 	.word	0x84caa73b
20026b54:	bb67ae85 	.word	0xbb67ae85
20026b58:	fe94f82b 	.word	0xfe94f82b
20026b5c:	3c6ef372 	.word	0x3c6ef372
20026b60:	f70e5939 	.word	0xf70e5939
20026b64:	152fecd8 	.word	0x152fecd8
20026b68:	ffc00b31 	.word	0xffc00b31
20026b6c:	67332667 	.word	0x67332667
20026b70:	68581511 	.word	0x68581511
20026b74:	8eb44a87 	.word	0x8eb44a87
20026b78:	64f98fa7 	.word	0x64f98fa7
20026b7c:	db0c2e0d 	.word	0xdb0c2e0d
20026b80:	befa4fa4 	.word	0xbefa4fa4
20026b84:	47b5481d 	.word	0x47b5481d
20026b88:	5f1d36f1 	.word	0x5f1d36f1
20026b8c:	a54ff53a 	.word	0xa54ff53a
20026b90:	ade682d1 	.word	0xade682d1
20026b94:	510e527f 	.word	0x510e527f
20026b98:	2b3e6c1f 	.word	0x2b3e6c1f
20026b9c:	9b05688c 	.word	0x9b05688c
20026ba0:	fb41bd6b 	.word	0xfb41bd6b
20026ba4:	1f83d9ab 	.word	0x1f83d9ab
20026ba8:	137e2179 	.word	0x137e2179
20026bac:	5be0cd19 	.word	0x5be0cd19

20026bb0 <mbedtls_sha512_process>:
20026bb0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
20026bb4:	f5ad 7d3f 	sub.w	sp, sp, #764	@ 0x2fc
20026bb8:	4682      	mov	sl, r0
20026bba:	a81e      	add	r0, sp, #120	@ 0x78
20026bbc:	4604      	mov	r4, r0
20026bbe:	f101 0580 	add.w	r5, r1, #128	@ 0x80
20026bc2:	784b      	ldrb	r3, [r1, #1]
20026bc4:	780a      	ldrb	r2, [r1, #0]
20026bc6:	041b      	lsls	r3, r3, #16
20026bc8:	790f      	ldrb	r7, [r1, #4]
20026bca:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
20026bce:	79ca      	ldrb	r2, [r1, #7]
20026bd0:	788e      	ldrb	r6, [r1, #2]
20026bd2:	ea42 6207 	orr.w	r2, r2, r7, lsl #24
20026bd6:	794f      	ldrb	r7, [r1, #5]
20026bd8:	ea43 2306 	orr.w	r3, r3, r6, lsl #8
20026bdc:	ea42 4207 	orr.w	r2, r2, r7, lsl #16
20026be0:	78ce      	ldrb	r6, [r1, #3]
20026be2:	798f      	ldrb	r7, [r1, #6]
20026be4:	3108      	adds	r1, #8
20026be6:	ea42 2207 	orr.w	r2, r2, r7, lsl #8
20026bea:	4333      	orrs	r3, r6
20026bec:	428d      	cmp	r5, r1
20026bee:	e9c4 2300 	strd	r2, r3, [r4]
20026bf2:	f104 0408 	add.w	r4, r4, #8
20026bf6:	d1e4      	bne.n	20026bc2 <mbedtls_sha512_process+0x12>
20026bf8:	4601      	mov	r1, r0
20026bfa:	2610      	movs	r6, #16
20026bfc:	e9d1 4c1c 	ldrd	r4, ip, [r1, #112]	@ 0x70
20026c00:	e9d1 2502 	ldrd	r2, r5, [r1, #8]
20026c04:	468e      	mov	lr, r1
20026c06:	0ce3      	lsrs	r3, r4, #19
20026c08:	ea4f 47dc 	mov.w	r7, ip, lsr #19
20026c0c:	ea4f 09c4 	mov.w	r9, r4, lsl #3
20026c10:	ea4f 08cc 	mov.w	r8, ip, lsl #3
20026c14:	ea48 7854 	orr.w	r8, r8, r4, lsr #29
20026c18:	ea43 334c 	orr.w	r3, r3, ip, lsl #13
20026c1c:	ea47 3744 	orr.w	r7, r7, r4, lsl #13
20026c20:	ea49 795c 	orr.w	r9, r9, ip, lsr #29
20026c24:	09a4      	lsrs	r4, r4, #6
20026c26:	ea87 0708 	eor.w	r7, r7, r8
20026c2a:	ea44 648c 	orr.w	r4, r4, ip, lsl #26
20026c2e:	ea83 0309 	eor.w	r3, r3, r9
20026c32:	4063      	eors	r3, r4
20026c34:	ea87 179c 	eor.w	r7, r7, ip, lsr #6
20026c38:	e9de 4c12 	ldrd	r4, ip, [lr, #72]	@ 0x48
20026c3c:	e9de 8e00 	ldrd	r8, lr, [lr]
20026c40:	eb14 0408 	adds.w	r4, r4, r8
20026c44:	eb4c 0c0e 	adc.w	ip, ip, lr
20026c48:	191b      	adds	r3, r3, r4
20026c4a:	eb47 070c 	adc.w	r7, r7, ip
20026c4e:	0854      	lsrs	r4, r2, #1
20026c50:	ea4f 2812 	mov.w	r8, r2, lsr #8
20026c54:	ea4f 0c55 	mov.w	ip, r5, lsr #1
20026c58:	ea4f 2e15 	mov.w	lr, r5, lsr #8
20026c5c:	ea4c 7cc2 	orr.w	ip, ip, r2, lsl #31
20026c60:	ea4e 6e02 	orr.w	lr, lr, r2, lsl #24
20026c64:	ea44 74c5 	orr.w	r4, r4, r5, lsl #31
20026c68:	ea48 6805 	orr.w	r8, r8, r5, lsl #24
20026c6c:	09d2      	lsrs	r2, r2, #7
20026c6e:	ea84 0408 	eor.w	r4, r4, r8
20026c72:	ea42 6245 	orr.w	r2, r2, r5, lsl #25
20026c76:	4062      	eors	r2, r4
20026c78:	ea8c 0c0e 	eor.w	ip, ip, lr
20026c7c:	189b      	adds	r3, r3, r2
20026c7e:	ea8c 14d5 	eor.w	r4, ip, r5, lsr #7
20026c82:	f106 0601 	add.w	r6, r6, #1
20026c86:	eb47 0704 	adc.w	r7, r7, r4
20026c8a:	3108      	adds	r1, #8
20026c8c:	2e50      	cmp	r6, #80	@ 0x50
20026c8e:	e9c1 371e 	strd	r3, r7, [r1, #120]	@ 0x78
20026c92:	d1b3      	bne.n	20026bfc <mbedtls_sha512_process+0x4c>
20026c94:	f8da 3010 	ldr.w	r3, [sl, #16]
20026c98:	930e      	str	r3, [sp, #56]	@ 0x38
20026c9a:	f8da 3014 	ldr.w	r3, [sl, #20]
20026c9e:	930f      	str	r3, [sp, #60]	@ 0x3c
20026ca0:	f8da 3018 	ldr.w	r3, [sl, #24]
20026ca4:	9310      	str	r3, [sp, #64]	@ 0x40
20026ca6:	f8da 301c 	ldr.w	r3, [sl, #28]
20026caa:	9311      	str	r3, [sp, #68]	@ 0x44
20026cac:	f8da 3020 	ldr.w	r3, [sl, #32]
20026cb0:	9312      	str	r3, [sp, #72]	@ 0x48
20026cb2:	f8da 3024 	ldr.w	r3, [sl, #36]	@ 0x24
20026cb6:	9313      	str	r3, [sp, #76]	@ 0x4c
20026cb8:	f8da 3028 	ldr.w	r3, [sl, #40]	@ 0x28
20026cbc:	9314      	str	r3, [sp, #80]	@ 0x50
20026cbe:	f8da 302c 	ldr.w	r3, [sl, #44]	@ 0x2c
20026cc2:	9315      	str	r3, [sp, #84]	@ 0x54
20026cc4:	f8da 3030 	ldr.w	r3, [sl, #48]	@ 0x30
20026cc8:	9316      	str	r3, [sp, #88]	@ 0x58
20026cca:	f8da 3034 	ldr.w	r3, [sl, #52]	@ 0x34
20026cce:	9317      	str	r3, [sp, #92]	@ 0x5c
20026cd0:	f8da 3038 	ldr.w	r3, [sl, #56]	@ 0x38
20026cd4:	9318      	str	r3, [sp, #96]	@ 0x60
20026cd6:	f8da 303c 	ldr.w	r3, [sl, #60]	@ 0x3c
20026cda:	9319      	str	r3, [sp, #100]	@ 0x64
20026cdc:	f8da 3040 	ldr.w	r3, [sl, #64]	@ 0x40
20026ce0:	931a      	str	r3, [sp, #104]	@ 0x68
20026ce2:	f8da 3044 	ldr.w	r3, [sl, #68]	@ 0x44
20026ce6:	931b      	str	r3, [sp, #108]	@ 0x6c
20026ce8:	f8da 3048 	ldr.w	r3, [sl, #72]	@ 0x48
20026cec:	931c      	str	r3, [sp, #112]	@ 0x70
20026cee:	f8da 304c 	ldr.w	r3, [sl, #76]	@ 0x4c
20026cf2:	931d      	str	r3, [sp, #116]	@ 0x74
20026cf4:	4b0f      	ldr	r3, [pc, #60]	@ (20026d34 <mbedtls_sha512_process+0x184>)
20026cf6:	9300      	str	r3, [sp, #0]
20026cf8:	9b1c      	ldr	r3, [sp, #112]	@ 0x70
20026cfa:	f8dd b054 	ldr.w	fp, [sp, #84]	@ 0x54
20026cfe:	930a      	str	r3, [sp, #40]	@ 0x28
20026d00:	9b1d      	ldr	r3, [sp, #116]	@ 0x74
20026d02:	e9dd ce10 	ldrd	ip, lr, [sp, #64]	@ 0x40
20026d06:	930b      	str	r3, [sp, #44]	@ 0x2c
20026d08:	9b1a      	ldr	r3, [sp, #104]	@ 0x68
20026d0a:	9308      	str	r3, [sp, #32]
20026d0c:	9b1b      	ldr	r3, [sp, #108]	@ 0x6c
20026d0e:	9309      	str	r3, [sp, #36]	@ 0x24
20026d10:	9b18      	ldr	r3, [sp, #96]	@ 0x60
20026d12:	9306      	str	r3, [sp, #24]
20026d14:	9b19      	ldr	r3, [sp, #100]	@ 0x64
20026d16:	9307      	str	r3, [sp, #28]
20026d18:	9b16      	ldr	r3, [sp, #88]	@ 0x58
20026d1a:	9304      	str	r3, [sp, #16]
20026d1c:	9b17      	ldr	r3, [sp, #92]	@ 0x5c
20026d1e:	9305      	str	r3, [sp, #20]
20026d20:	9b14      	ldr	r3, [sp, #80]	@ 0x50
20026d22:	9303      	str	r3, [sp, #12]
20026d24:	9b12      	ldr	r3, [sp, #72]	@ 0x48
20026d26:	9301      	str	r3, [sp, #4]
20026d28:	9b13      	ldr	r3, [sp, #76]	@ 0x4c
20026d2a:	9302      	str	r3, [sp, #8]
20026d2c:	e9dd 320e 	ldrd	r3, r2, [sp, #56]	@ 0x38
20026d30:	e002      	b.n	20026d38 <mbedtls_sha512_process+0x188>
20026d32:	bf00      	nop
20026d34:	2002c138 	.word	0x2002c138
20026d38:	9c04      	ldr	r4, [sp, #16]
20026d3a:	9e04      	ldr	r6, [sp, #16]
20026d3c:	ea4f 3894 	mov.w	r8, r4, lsr #14
20026d40:	9c05      	ldr	r4, [sp, #20]
20026d42:	9900      	ldr	r1, [sp, #0]
20026d44:	ea48 4884 	orr.w	r8, r8, r4, lsl #18
20026d48:	ea4f 3994 	mov.w	r9, r4, lsr #14
20026d4c:	9c04      	ldr	r4, [sp, #16]
20026d4e:	ea49 4984 	orr.w	r9, r9, r4, lsl #18
20026d52:	0ca5      	lsrs	r5, r4, #18
20026d54:	9c05      	ldr	r4, [sp, #20]
20026d56:	ea45 3584 	orr.w	r5, r5, r4, lsl #14
20026d5a:	0ca4      	lsrs	r4, r4, #18
20026d5c:	ea44 3486 	orr.w	r4, r4, r6, lsl #14
20026d60:	ea89 0904 	eor.w	r9, r9, r4
20026d64:	9c05      	ldr	r4, [sp, #20]
20026d66:	ea88 0805 	eor.w	r8, r8, r5
20026d6a:	05f5      	lsls	r5, r6, #23
20026d6c:	ea45 2554 	orr.w	r5, r5, r4, lsr #9
20026d70:	05e4      	lsls	r4, r4, #23
20026d72:	ea44 2456 	orr.w	r4, r4, r6, lsr #9
20026d76:	ea88 0805 	eor.w	r8, r8, r5
20026d7a:	ea89 0904 	eor.w	r9, r9, r4
20026d7e:	e9d1 5700 	ldrd	r5, r7, [r1]
20026d82:	e9d0 6400 	ldrd	r6, r4, [r0]
20026d86:	19ad      	adds	r5, r5, r6
20026d88:	eb47 0404 	adc.w	r4, r7, r4
20026d8c:	9e06      	ldr	r6, [sp, #24]
20026d8e:	9f08      	ldr	r7, [sp, #32]
20026d90:	9909      	ldr	r1, [sp, #36]	@ 0x24
20026d92:	407e      	eors	r6, r7
20026d94:	9f07      	ldr	r7, [sp, #28]
20026d96:	eb18 0505 	adds.w	r5, r8, r5
20026d9a:	ea87 0701 	eor.w	r7, r7, r1
20026d9e:	9904      	ldr	r1, [sp, #16]
20026da0:	eb49 0404 	adc.w	r4, r9, r4
20026da4:	400e      	ands	r6, r1
20026da6:	9905      	ldr	r1, [sp, #20]
20026da8:	ea4f 7813 	mov.w	r8, r3, lsr #28
20026dac:	400f      	ands	r7, r1
20026dae:	9908      	ldr	r1, [sp, #32]
20026db0:	ea4f 7983 	mov.w	r9, r3, lsl #30
20026db4:	404e      	eors	r6, r1
20026db6:	9909      	ldr	r1, [sp, #36]	@ 0x24
20026db8:	19ad      	adds	r5, r5, r6
20026dba:	ea87 0701 	eor.w	r7, r7, r1
20026dbe:	990a      	ldr	r1, [sp, #40]	@ 0x28
20026dc0:	eb44 0407 	adc.w	r4, r4, r7
20026dc4:	186d      	adds	r5, r5, r1
20026dc6:	990b      	ldr	r1, [sp, #44]	@ 0x2c
20026dc8:	ea4f 7712 	mov.w	r7, r2, lsr #28
20026dcc:	eb41 0404 	adc.w	r4, r1, r4
20026dd0:	9903      	ldr	r1, [sp, #12]
20026dd2:	0796      	lsls	r6, r2, #30
20026dd4:	1949      	adds	r1, r1, r5
20026dd6:	ea46 0693 	orr.w	r6, r6, r3, lsr #2
20026dda:	ea47 1703 	orr.w	r7, r7, r3, lsl #4
20026dde:	910a      	str	r1, [sp, #40]	@ 0x28
20026de0:	ea87 0706 	eor.w	r7, r7, r6
20026de4:	eb4b 0104 	adc.w	r1, fp, r4
20026de8:	0656      	lsls	r6, r2, #25
20026dea:	ea49 0992 	orr.w	r9, r9, r2, lsr #2
20026dee:	ea46 16d3 	orr.w	r6, r6, r3, lsr #7
20026df2:	910b      	str	r1, [sp, #44]	@ 0x2c
20026df4:	ea48 1802 	orr.w	r8, r8, r2, lsl #4
20026df8:	9901      	ldr	r1, [sp, #4]
20026dfa:	ea88 0809 	eor.w	r8, r8, r9
20026dfe:	4077      	eors	r7, r6
20026e00:	ea4f 6943 	mov.w	r9, r3, lsl #25
20026e04:	ea43 060c 	orr.w	r6, r3, ip
20026e08:	ea49 19d2 	orr.w	r9, r9, r2, lsr #7
20026e0c:	400e      	ands	r6, r1
20026e0e:	9902      	ldr	r1, [sp, #8]
20026e10:	ea03 0b0c 	and.w	fp, r3, ip
20026e14:	ea88 0809 	eor.w	r8, r8, r9
20026e18:	ea42 090e 	orr.w	r9, r2, lr
20026e1c:	ea09 0901 	and.w	r9, r9, r1
20026e20:	ea46 060b 	orr.w	r6, r6, fp
20026e24:	ea02 010e 	and.w	r1, r2, lr
20026e28:	eb18 0606 	adds.w	r6, r8, r6
20026e2c:	ea49 0901 	orr.w	r9, r9, r1
20026e30:	eb47 0709 	adc.w	r7, r7, r9
20026e34:	1971      	adds	r1, r6, r5
20026e36:	9103      	str	r1, [sp, #12]
20026e38:	9900      	ldr	r1, [sp, #0]
20026e3a:	eb44 0b07 	adc.w	fp, r4, r7
20026e3e:	e9d0 6702 	ldrd	r6, r7, [r0, #8]
20026e42:	e9d1 4502 	ldrd	r4, r5, [r1, #8]
20026e46:	9908      	ldr	r1, [sp, #32]
20026e48:	19a4      	adds	r4, r4, r6
20026e4a:	eb45 0507 	adc.w	r5, r5, r7
20026e4e:	1864      	adds	r4, r4, r1
20026e50:	9909      	ldr	r1, [sp, #36]	@ 0x24
20026e52:	9e06      	ldr	r6, [sp, #24]
20026e54:	eb41 0505 	adc.w	r5, r1, r5
20026e58:	9904      	ldr	r1, [sp, #16]
20026e5a:	ea81 0706 	eor.w	r7, r1, r6
20026e5e:	9905      	ldr	r1, [sp, #20]
20026e60:	9e07      	ldr	r6, [sp, #28]
20026e62:	404e      	eors	r6, r1
20026e64:	990a      	ldr	r1, [sp, #40]	@ 0x28
20026e66:	400f      	ands	r7, r1
20026e68:	990b      	ldr	r1, [sp, #44]	@ 0x2c
20026e6a:	400e      	ands	r6, r1
20026e6c:	9906      	ldr	r1, [sp, #24]
20026e6e:	404f      	eors	r7, r1
20026e70:	9907      	ldr	r1, [sp, #28]
20026e72:	19e4      	adds	r4, r4, r7
20026e74:	ea86 0601 	eor.w	r6, r6, r1
20026e78:	990a      	ldr	r1, [sp, #40]	@ 0x28
20026e7a:	eb45 0506 	adc.w	r5, r5, r6
20026e7e:	0b8f      	lsrs	r7, r1, #14
20026e80:	990b      	ldr	r1, [sp, #44]	@ 0x2c
20026e82:	ea47 4781 	orr.w	r7, r7, r1, lsl #18
20026e86:	ea4f 3891 	mov.w	r8, r1, lsr #14
20026e8a:	990a      	ldr	r1, [sp, #40]	@ 0x28
20026e8c:	ea48 4881 	orr.w	r8, r8, r1, lsl #18
20026e90:	ea4f 4991 	mov.w	r9, r1, lsr #18
20026e94:	990b      	ldr	r1, [sp, #44]	@ 0x2c
20026e96:	ea49 3981 	orr.w	r9, r9, r1, lsl #14
20026e9a:	0c8e      	lsrs	r6, r1, #18
20026e9c:	990a      	ldr	r1, [sp, #40]	@ 0x28
20026e9e:	ea87 0709 	eor.w	r7, r7, r9
20026ea2:	ea46 3681 	orr.w	r6, r6, r1, lsl #14
20026ea6:	ea88 0806 	eor.w	r8, r8, r6
20026eaa:	05ce      	lsls	r6, r1, #23
20026eac:	990b      	ldr	r1, [sp, #44]	@ 0x2c
20026eae:	ea46 2651 	orr.w	r6, r6, r1, lsr #9
20026eb2:	ea4f 59c1 	mov.w	r9, r1, lsl #23
20026eb6:	990a      	ldr	r1, [sp, #40]	@ 0x28
20026eb8:	407e      	eors	r6, r7
20026eba:	ea49 2951 	orr.w	r9, r9, r1, lsr #9
20026ebe:	9901      	ldr	r1, [sp, #4]
20026ec0:	19a4      	adds	r4, r4, r6
20026ec2:	ea88 0809 	eor.w	r8, r8, r9
20026ec6:	eb45 0808 	adc.w	r8, r5, r8
20026eca:	1909      	adds	r1, r1, r4
20026ecc:	9108      	str	r1, [sp, #32]
20026ece:	9902      	ldr	r1, [sp, #8]
20026ed0:	ea4f 761b 	mov.w	r6, fp, lsr #28
20026ed4:	eb41 0108 	adc.w	r1, r1, r8
20026ed8:	9109      	str	r1, [sp, #36]	@ 0x24
20026eda:	9903      	ldr	r1, [sp, #12]
20026edc:	ea4f 758b 	mov.w	r5, fp, lsl #30
20026ee0:	ea45 0591 	orr.w	r5, r5, r1, lsr #2
20026ee4:	0f0f      	lsrs	r7, r1, #28
20026ee6:	ea46 1601 	orr.w	r6, r6, r1, lsl #4
20026eea:	ea4f 7981 	mov.w	r9, r1, lsl #30
20026eee:	ea49 099b 	orr.w	r9, r9, fp, lsr #2
20026ef2:	ea47 170b 	orr.w	r7, r7, fp, lsl #4
20026ef6:	406e      	eors	r6, r5
20026ef8:	ea4f 654b 	mov.w	r5, fp, lsl #25
20026efc:	ea45 15d1 	orr.w	r5, r5, r1, lsr #7
20026f00:	ea87 0709 	eor.w	r7, r7, r9
20026f04:	ea4f 6941 	mov.w	r9, r1, lsl #25
20026f08:	ea49 19db 	orr.w	r9, r9, fp, lsr #7
20026f0c:	406e      	eors	r6, r5
20026f0e:	ea43 0501 	orr.w	r5, r3, r1
20026f12:	ea87 0709 	eor.w	r7, r7, r9
20026f16:	4019      	ands	r1, r3
20026f18:	ea42 090b 	orr.w	r9, r2, fp
20026f1c:	ea05 050c 	and.w	r5, r5, ip
20026f20:	ea09 090e 	and.w	r9, r9, lr
20026f24:	430d      	orrs	r5, r1
20026f26:	ea02 010b 	and.w	r1, r2, fp
20026f2a:	197d      	adds	r5, r7, r5
20026f2c:	ea49 0901 	orr.w	r9, r9, r1
20026f30:	eb46 0609 	adc.w	r6, r6, r9
20026f34:	1929      	adds	r1, r5, r4
20026f36:	9101      	str	r1, [sp, #4]
20026f38:	eb48 0106 	adc.w	r1, r8, r6
20026f3c:	9102      	str	r1, [sp, #8]
20026f3e:	9900      	ldr	r1, [sp, #0]
20026f40:	e9d0 6704 	ldrd	r6, r7, [r0, #16]
20026f44:	e9d1 4504 	ldrd	r4, r5, [r1, #16]
20026f48:	9906      	ldr	r1, [sp, #24]
20026f4a:	19a4      	adds	r4, r4, r6
20026f4c:	eb45 0507 	adc.w	r5, r5, r7
20026f50:	1864      	adds	r4, r4, r1
20026f52:	9907      	ldr	r1, [sp, #28]
20026f54:	eb41 0505 	adc.w	r5, r1, r5
20026f58:	9904      	ldr	r1, [sp, #16]
20026f5a:	9e0a      	ldr	r6, [sp, #40]	@ 0x28
20026f5c:	ea81 0706 	eor.w	r7, r1, r6
20026f60:	9905      	ldr	r1, [sp, #20]
20026f62:	9e0b      	ldr	r6, [sp, #44]	@ 0x2c
20026f64:	404e      	eors	r6, r1
20026f66:	9908      	ldr	r1, [sp, #32]
20026f68:	400f      	ands	r7, r1
20026f6a:	9909      	ldr	r1, [sp, #36]	@ 0x24
20026f6c:	400e      	ands	r6, r1
20026f6e:	9904      	ldr	r1, [sp, #16]
20026f70:	404f      	eors	r7, r1
20026f72:	9905      	ldr	r1, [sp, #20]
20026f74:	19e4      	adds	r4, r4, r7
20026f76:	ea86 0601 	eor.w	r6, r6, r1
20026f7a:	9908      	ldr	r1, [sp, #32]
20026f7c:	eb45 0506 	adc.w	r5, r5, r6
20026f80:	0b8f      	lsrs	r7, r1, #14
20026f82:	9909      	ldr	r1, [sp, #36]	@ 0x24
20026f84:	ea47 4781 	orr.w	r7, r7, r1, lsl #18
20026f88:	ea4f 3891 	mov.w	r8, r1, lsr #14
20026f8c:	9908      	ldr	r1, [sp, #32]
20026f8e:	ea48 4881 	orr.w	r8, r8, r1, lsl #18
20026f92:	ea4f 4991 	mov.w	r9, r1, lsr #18
20026f96:	9909      	ldr	r1, [sp, #36]	@ 0x24
20026f98:	ea49 3981 	orr.w	r9, r9, r1, lsl #14
20026f9c:	0c8e      	lsrs	r6, r1, #18
20026f9e:	9908      	ldr	r1, [sp, #32]
20026fa0:	ea87 0709 	eor.w	r7, r7, r9
20026fa4:	ea46 3681 	orr.w	r6, r6, r1, lsl #14
20026fa8:	ea88 0806 	eor.w	r8, r8, r6
20026fac:	05ce      	lsls	r6, r1, #23
20026fae:	9909      	ldr	r1, [sp, #36]	@ 0x24
20026fb0:	ea46 2651 	orr.w	r6, r6, r1, lsr #9
20026fb4:	ea4f 59c1 	mov.w	r9, r1, lsl #23
20026fb8:	9908      	ldr	r1, [sp, #32]
20026fba:	407e      	eors	r6, r7
20026fbc:	ea49 2951 	orr.w	r9, r9, r1, lsr #9
20026fc0:	19a4      	adds	r4, r4, r6
20026fc2:	ea88 0809 	eor.w	r8, r8, r9
20026fc6:	eb45 0808 	adc.w	r8, r5, r8
20026fca:	eb1c 0104 	adds.w	r1, ip, r4
20026fce:	9106      	str	r1, [sp, #24]
20026fd0:	eb4e 0108 	adc.w	r1, lr, r8
20026fd4:	9107      	str	r1, [sp, #28]
20026fd6:	9901      	ldr	r1, [sp, #4]
20026fd8:	0f0f      	lsrs	r7, r1, #28
20026fda:	9902      	ldr	r1, [sp, #8]
20026fdc:	ea47 1701 	orr.w	r7, r7, r1, lsl #4
20026fe0:	0f0e      	lsrs	r6, r1, #28
20026fe2:	9901      	ldr	r1, [sp, #4]
20026fe4:	ea46 1601 	orr.w	r6, r6, r1, lsl #4
20026fe8:	ea4f 7c81 	mov.w	ip, r1, lsl #30
20026fec:	9902      	ldr	r1, [sp, #8]
20026fee:	ea4c 0c91 	orr.w	ip, ip, r1, lsr #2
20026ff2:	078d      	lsls	r5, r1, #30
20026ff4:	9901      	ldr	r1, [sp, #4]
20026ff6:	ea87 070c 	eor.w	r7, r7, ip
20026ffa:	ea45 0591 	orr.w	r5, r5, r1, lsr #2
20026ffe:	ea4f 6c41 	mov.w	ip, r1, lsl #25
20027002:	9902      	ldr	r1, [sp, #8]
20027004:	406e      	eors	r6, r5
20027006:	ea4c 1cd1 	orr.w	ip, ip, r1, lsr #7
2002700a:	064d      	lsls	r5, r1, #25
2002700c:	9901      	ldr	r1, [sp, #4]
2002700e:	ea87 070c 	eor.w	r7, r7, ip
20027012:	ea45 15d1 	orr.w	r5, r5, r1, lsr #7
20027016:	406e      	eors	r6, r5
20027018:	9903      	ldr	r1, [sp, #12]
2002701a:	9d01      	ldr	r5, [sp, #4]
2002701c:	430d      	orrs	r5, r1
2002701e:	9902      	ldr	r1, [sp, #8]
20027020:	ea4b 0c01 	orr.w	ip, fp, r1
20027024:	ea05 0103 	and.w	r1, r5, r3
20027028:	910c      	str	r1, [sp, #48]	@ 0x30
2002702a:	9d01      	ldr	r5, [sp, #4]
2002702c:	9903      	ldr	r1, [sp, #12]
2002702e:	ea0c 0c02 	and.w	ip, ip, r2
20027032:	ea01 0905 	and.w	r9, r1, r5
20027036:	9902      	ldr	r1, [sp, #8]
20027038:	ea0b 0e01 	and.w	lr, fp, r1
2002703c:	990c      	ldr	r1, [sp, #48]	@ 0x30
2002703e:	ea4c 0c0e 	orr.w	ip, ip, lr
20027042:	ea41 0509 	orr.w	r5, r1, r9
20027046:	9900      	ldr	r1, [sp, #0]
20027048:	197d      	adds	r5, r7, r5
2002704a:	eb46 060c 	adc.w	r6, r6, ip
2002704e:	eb15 0904 	adds.w	r9, r5, r4
20027052:	e9d1 4506 	ldrd	r4, r5, [r1, #24]
20027056:	9904      	ldr	r1, [sp, #16]
20027058:	eb48 0806 	adc.w	r8, r8, r6
2002705c:	e9d0 6706 	ldrd	r6, r7, [r0, #24]
20027060:	19a4      	adds	r4, r4, r6
20027062:	eb45 0507 	adc.w	r5, r5, r7
20027066:	1864      	adds	r4, r4, r1
20027068:	9905      	ldr	r1, [sp, #20]
2002706a:	9e08      	ldr	r6, [sp, #32]
2002706c:	eb41 0505 	adc.w	r5, r1, r5
20027070:	990a      	ldr	r1, [sp, #40]	@ 0x28
20027072:	ea81 0706 	eor.w	r7, r1, r6
20027076:	990b      	ldr	r1, [sp, #44]	@ 0x2c
20027078:	9e09      	ldr	r6, [sp, #36]	@ 0x24
2002707a:	404e      	eors	r6, r1
2002707c:	9906      	ldr	r1, [sp, #24]
2002707e:	400f      	ands	r7, r1
20027080:	9907      	ldr	r1, [sp, #28]
20027082:	400e      	ands	r6, r1
20027084:	990a      	ldr	r1, [sp, #40]	@ 0x28
20027086:	404f      	eors	r7, r1
20027088:	990b      	ldr	r1, [sp, #44]	@ 0x2c
2002708a:	19e4      	adds	r4, r4, r7
2002708c:	ea86 0601 	eor.w	r6, r6, r1
20027090:	9906      	ldr	r1, [sp, #24]
20027092:	eb45 0506 	adc.w	r5, r5, r6
20027096:	ea4f 3c91 	mov.w	ip, r1, lsr #14
2002709a:	9907      	ldr	r1, [sp, #28]
2002709c:	ea4c 4c81 	orr.w	ip, ip, r1, lsl #18
200270a0:	0b8e      	lsrs	r6, r1, #14
200270a2:	9906      	ldr	r1, [sp, #24]
200270a4:	ea46 4681 	orr.w	r6, r6, r1, lsl #18
200270a8:	ea4f 4e91 	mov.w	lr, r1, lsr #18
200270ac:	9907      	ldr	r1, [sp, #28]
200270ae:	ea4e 3e81 	orr.w	lr, lr, r1, lsl #14
200270b2:	0c8f      	lsrs	r7, r1, #18
200270b4:	9906      	ldr	r1, [sp, #24]
200270b6:	ea8c 0c0e 	eor.w	ip, ip, lr
200270ba:	ea47 3781 	orr.w	r7, r7, r1, lsl #14
200270be:	407e      	eors	r6, r7
200270c0:	05cf      	lsls	r7, r1, #23
200270c2:	9907      	ldr	r1, [sp, #28]
200270c4:	ea47 2751 	orr.w	r7, r7, r1, lsr #9
200270c8:	ea4f 5ec1 	mov.w	lr, r1, lsl #23
200270cc:	9906      	ldr	r1, [sp, #24]
200270ce:	ea8c 0707 	eor.w	r7, ip, r7
200270d2:	ea4e 2e51 	orr.w	lr, lr, r1, lsr #9
200270d6:	19e4      	adds	r4, r4, r7
200270d8:	ea86 060e 	eor.w	r6, r6, lr
200270dc:	eb45 0606 	adc.w	r6, r5, r6
200270e0:	191b      	adds	r3, r3, r4
200270e2:	930c      	str	r3, [sp, #48]	@ 0x30
200270e4:	eb42 0306 	adc.w	r3, r2, r6
200270e8:	930d      	str	r3, [sp, #52]	@ 0x34
200270ea:	ea4f 7218 	mov.w	r2, r8, lsr #28
200270ee:	ea4f 7388 	mov.w	r3, r8, lsl #30
200270f2:	ea43 0399 	orr.w	r3, r3, r9, lsr #2
200270f6:	ea4f 7519 	mov.w	r5, r9, lsr #28
200270fa:	ea42 1209 	orr.w	r2, r2, r9, lsl #4
200270fe:	ea4f 7789 	mov.w	r7, r9, lsl #30
20027102:	ea47 0798 	orr.w	r7, r7, r8, lsr #2
20027106:	ea45 1508 	orr.w	r5, r5, r8, lsl #4
2002710a:	405a      	eors	r2, r3
2002710c:	ea4f 6348 	mov.w	r3, r8, lsl #25
20027110:	9902      	ldr	r1, [sp, #8]
20027112:	ea43 13d9 	orr.w	r3, r3, r9, lsr #7
20027116:	407d      	eors	r5, r7
20027118:	ea4f 6749 	mov.w	r7, r9, lsl #25
2002711c:	ea47 17d8 	orr.w	r7, r7, r8, lsr #7
20027120:	405a      	eors	r2, r3
20027122:	9b01      	ldr	r3, [sp, #4]
20027124:	407d      	eors	r5, r7
20027126:	ea41 0708 	orr.w	r7, r1, r8
2002712a:	9903      	ldr	r1, [sp, #12]
2002712c:	ea43 0309 	orr.w	r3, r3, r9
20027130:	400b      	ands	r3, r1
20027132:	9901      	ldr	r1, [sp, #4]
20027134:	ea07 070b 	and.w	r7, r7, fp
20027138:	ea01 0e09 	and.w	lr, r1, r9
2002713c:	9902      	ldr	r1, [sp, #8]
2002713e:	ea43 030e 	orr.w	r3, r3, lr
20027142:	ea01 0c08 	and.w	ip, r1, r8
20027146:	ea47 070c 	orr.w	r7, r7, ip
2002714a:	18eb      	adds	r3, r5, r3
2002714c:	eb42 0207 	adc.w	r2, r2, r7
20027150:	191b      	adds	r3, r3, r4
20027152:	9304      	str	r3, [sp, #16]
20027154:	eb46 0302 	adc.w	r3, r6, r2
20027158:	9305      	str	r3, [sp, #20]
2002715a:	9b00      	ldr	r3, [sp, #0]
2002715c:	6a1b      	ldr	r3, [r3, #32]
2002715e:	9a00      	ldr	r2, [sp, #0]
20027160:	990a      	ldr	r1, [sp, #40]	@ 0x28
20027162:	6a52      	ldr	r2, [r2, #36]	@ 0x24
20027164:	e9d0 4508 	ldrd	r4, r5, [r0, #32]
20027168:	191b      	adds	r3, r3, r4
2002716a:	eb42 0205 	adc.w	r2, r2, r5
2002716e:	185b      	adds	r3, r3, r1
20027170:	990b      	ldr	r1, [sp, #44]	@ 0x2c
20027172:	9c06      	ldr	r4, [sp, #24]
20027174:	eb41 0202 	adc.w	r2, r1, r2
20027178:	9908      	ldr	r1, [sp, #32]
2002717a:	ea81 0504 	eor.w	r5, r1, r4
2002717e:	9909      	ldr	r1, [sp, #36]	@ 0x24
20027180:	9c07      	ldr	r4, [sp, #28]
20027182:	404c      	eors	r4, r1
20027184:	990c      	ldr	r1, [sp, #48]	@ 0x30
20027186:	400d      	ands	r5, r1
20027188:	990d      	ldr	r1, [sp, #52]	@ 0x34
2002718a:	400c      	ands	r4, r1
2002718c:	9908      	ldr	r1, [sp, #32]
2002718e:	404d      	eors	r5, r1
20027190:	9909      	ldr	r1, [sp, #36]	@ 0x24
20027192:	195b      	adds	r3, r3, r5
20027194:	ea84 0401 	eor.w	r4, r4, r1
20027198:	990c      	ldr	r1, [sp, #48]	@ 0x30
2002719a:	eb42 0204 	adc.w	r2, r2, r4
2002719e:	0b8e      	lsrs	r6, r1, #14
200271a0:	990d      	ldr	r1, [sp, #52]	@ 0x34
200271a2:	ea46 4681 	orr.w	r6, r6, r1, lsl #18
200271a6:	0b8c      	lsrs	r4, r1, #14
200271a8:	990c      	ldr	r1, [sp, #48]	@ 0x30
200271aa:	ea44 4481 	orr.w	r4, r4, r1, lsl #18
200271ae:	0c8f      	lsrs	r7, r1, #18
200271b0:	990d      	ldr	r1, [sp, #52]	@ 0x34
200271b2:	ea47 3781 	orr.w	r7, r7, r1, lsl #14
200271b6:	0c8d      	lsrs	r5, r1, #18
200271b8:	990c      	ldr	r1, [sp, #48]	@ 0x30
200271ba:	407e      	eors	r6, r7
200271bc:	ea45 3581 	orr.w	r5, r5, r1, lsl #14
200271c0:	406c      	eors	r4, r5
200271c2:	05cd      	lsls	r5, r1, #23
200271c4:	990d      	ldr	r1, [sp, #52]	@ 0x34
200271c6:	ea45 2551 	orr.w	r5, r5, r1, lsr #9
200271ca:	05cf      	lsls	r7, r1, #23
200271cc:	990c      	ldr	r1, [sp, #48]	@ 0x30
200271ce:	4075      	eors	r5, r6
200271d0:	ea47 2751 	orr.w	r7, r7, r1, lsr #9
200271d4:	9903      	ldr	r1, [sp, #12]
200271d6:	195b      	adds	r3, r3, r5
200271d8:	ea84 0407 	eor.w	r4, r4, r7
200271dc:	eb42 0204 	adc.w	r2, r2, r4
200271e0:	18c9      	adds	r1, r1, r3
200271e2:	910a      	str	r1, [sp, #40]	@ 0x28
200271e4:	eb4b 0102 	adc.w	r1, fp, r2
200271e8:	910b      	str	r1, [sp, #44]	@ 0x2c
200271ea:	9904      	ldr	r1, [sp, #16]
200271ec:	0f0e      	lsrs	r6, r1, #28
200271ee:	9905      	ldr	r1, [sp, #20]
200271f0:	ea46 1601 	orr.w	r6, r6, r1, lsl #4
200271f4:	0f0d      	lsrs	r5, r1, #28
200271f6:	9904      	ldr	r1, [sp, #16]
200271f8:	ea45 1501 	orr.w	r5, r5, r1, lsl #4
200271fc:	078f      	lsls	r7, r1, #30
200271fe:	9905      	ldr	r1, [sp, #20]
20027200:	ea47 0791 	orr.w	r7, r7, r1, lsr #2
20027204:	078c      	lsls	r4, r1, #30
20027206:	9904      	ldr	r1, [sp, #16]
20027208:	407e      	eors	r6, r7
2002720a:	ea44 0491 	orr.w	r4, r4, r1, lsr #2
2002720e:	064f      	lsls	r7, r1, #25
20027210:	9905      	ldr	r1, [sp, #20]
20027212:	4065      	eors	r5, r4
20027214:	ea47 17d1 	orr.w	r7, r7, r1, lsr #7
20027218:	064c      	lsls	r4, r1, #25
2002721a:	9904      	ldr	r1, [sp, #16]
2002721c:	407e      	eors	r6, r7
2002721e:	ea44 14d1 	orr.w	r4, r4, r1, lsr #7
20027222:	4065      	eors	r5, r4
20027224:	ea49 0401 	orr.w	r4, r9, r1
20027228:	9905      	ldr	r1, [sp, #20]
2002722a:	ea48 0701 	orr.w	r7, r8, r1
2002722e:	9901      	ldr	r1, [sp, #4]
20027230:	400c      	ands	r4, r1
20027232:	9902      	ldr	r1, [sp, #8]
20027234:	400f      	ands	r7, r1
20027236:	9904      	ldr	r1, [sp, #16]
20027238:	ea09 0e01 	and.w	lr, r9, r1
2002723c:	9905      	ldr	r1, [sp, #20]
2002723e:	ea44 040e 	orr.w	r4, r4, lr
20027242:	ea08 0c01 	and.w	ip, r8, r1
20027246:	1934      	adds	r4, r6, r4
20027248:	ea47 070c 	orr.w	r7, r7, ip
2002724c:	eb45 0507 	adc.w	r5, r5, r7
20027250:	18e3      	adds	r3, r4, r3
20027252:	9303      	str	r3, [sp, #12]
20027254:	9b00      	ldr	r3, [sp, #0]
20027256:	eb42 0b05 	adc.w	fp, r2, r5
2002725a:	9a00      	ldr	r2, [sp, #0]
2002725c:	6a9b      	ldr	r3, [r3, #40]	@ 0x28
2002725e:	9908      	ldr	r1, [sp, #32]
20027260:	6ad2      	ldr	r2, [r2, #44]	@ 0x2c
20027262:	e9d0 450a 	ldrd	r4, r5, [r0, #40]	@ 0x28
20027266:	191b      	adds	r3, r3, r4
20027268:	eb42 0205 	adc.w	r2, r2, r5
2002726c:	185b      	adds	r3, r3, r1
2002726e:	9909      	ldr	r1, [sp, #36]	@ 0x24
20027270:	9c0c      	ldr	r4, [sp, #48]	@ 0x30
20027272:	eb41 0202 	adc.w	r2, r1, r2
20027276:	9906      	ldr	r1, [sp, #24]
20027278:	ea81 0504 	eor.w	r5, r1, r4
2002727c:	9907      	ldr	r1, [sp, #28]
2002727e:	9c0d      	ldr	r4, [sp, #52]	@ 0x34
20027280:	404c      	eors	r4, r1
20027282:	990a      	ldr	r1, [sp, #40]	@ 0x28
20027284:	400d      	ands	r5, r1
20027286:	990b      	ldr	r1, [sp, #44]	@ 0x2c
20027288:	400c      	ands	r4, r1
2002728a:	9906      	ldr	r1, [sp, #24]
2002728c:	404d      	eors	r5, r1
2002728e:	9907      	ldr	r1, [sp, #28]
20027290:	195b      	adds	r3, r3, r5
20027292:	ea84 0401 	eor.w	r4, r4, r1
20027296:	990a      	ldr	r1, [sp, #40]	@ 0x28
20027298:	eb42 0204 	adc.w	r2, r2, r4
2002729c:	0b8e      	lsrs	r6, r1, #14
2002729e:	990b      	ldr	r1, [sp, #44]	@ 0x2c
200272a0:	ea46 4681 	orr.w	r6, r6, r1, lsl #18
200272a4:	0b8c      	lsrs	r4, r1, #14
200272a6:	990a      	ldr	r1, [sp, #40]	@ 0x28
200272a8:	ea44 4481 	orr.w	r4, r4, r1, lsl #18
200272ac:	0c8f      	lsrs	r7, r1, #18
200272ae:	990b      	ldr	r1, [sp, #44]	@ 0x2c
200272b0:	ea47 3781 	orr.w	r7, r7, r1, lsl #14
200272b4:	0c8d      	lsrs	r5, r1, #18
200272b6:	990a      	ldr	r1, [sp, #40]	@ 0x28
200272b8:	407e      	eors	r6, r7
200272ba:	ea45 3581 	orr.w	r5, r5, r1, lsl #14
200272be:	406c      	eors	r4, r5
200272c0:	05cd      	lsls	r5, r1, #23
200272c2:	990b      	ldr	r1, [sp, #44]	@ 0x2c
200272c4:	ea45 2551 	orr.w	r5, r5, r1, lsr #9
200272c8:	05cf      	lsls	r7, r1, #23
200272ca:	990a      	ldr	r1, [sp, #40]	@ 0x28
200272cc:	4075      	eors	r5, r6
200272ce:	ea47 2751 	orr.w	r7, r7, r1, lsr #9
200272d2:	9901      	ldr	r1, [sp, #4]
200272d4:	195b      	adds	r3, r3, r5
200272d6:	ea84 0407 	eor.w	r4, r4, r7
200272da:	eb42 0204 	adc.w	r2, r2, r4
200272de:	18c9      	adds	r1, r1, r3
200272e0:	9108      	str	r1, [sp, #32]
200272e2:	9902      	ldr	r1, [sp, #8]
200272e4:	ea4f 751b 	mov.w	r5, fp, lsr #28
200272e8:	eb41 0102 	adc.w	r1, r1, r2
200272ec:	9109      	str	r1, [sp, #36]	@ 0x24
200272ee:	9903      	ldr	r1, [sp, #12]
200272f0:	ea4f 748b 	mov.w	r4, fp, lsl #30
200272f4:	ea44 0491 	orr.w	r4, r4, r1, lsr #2
200272f8:	ea45 1501 	orr.w	r5, r5, r1, lsl #4
200272fc:	0f0e      	lsrs	r6, r1, #28
200272fe:	078f      	lsls	r7, r1, #30
20027300:	4065      	eors	r5, r4
20027302:	ea4f 644b 	mov.w	r4, fp, lsl #25
20027306:	ea47 079b 	orr.w	r7, r7, fp, lsr #2
2002730a:	ea44 14d1 	orr.w	r4, r4, r1, lsr #7
2002730e:	ea46 160b 	orr.w	r6, r6, fp, lsl #4
20027312:	407e      	eors	r6, r7
20027314:	4065      	eors	r5, r4
20027316:	064f      	lsls	r7, r1, #25
20027318:	e9dd 4103 	ldrd	r4, r1, [sp, #12]
2002731c:	430c      	orrs	r4, r1
2002731e:	9905      	ldr	r1, [sp, #20]
20027320:	ea47 17db 	orr.w	r7, r7, fp, lsr #7
20027324:	407e      	eors	r6, r7
20027326:	ea41 070b 	orr.w	r7, r1, fp
2002732a:	ea04 0109 	and.w	r1, r4, r9
2002732e:	9101      	str	r1, [sp, #4]
20027330:	e9dd 4103 	ldrd	r4, r1, [sp, #12]
20027334:	ea01 0e04 	and.w	lr, r1, r4
20027338:	9905      	ldr	r1, [sp, #20]
2002733a:	ea07 0708 	and.w	r7, r7, r8
2002733e:	ea01 0c0b 	and.w	ip, r1, fp
20027342:	9901      	ldr	r1, [sp, #4]
20027344:	ea47 070c 	orr.w	r7, r7, ip
20027348:	ea41 040e 	orr.w	r4, r1, lr
2002734c:	1934      	adds	r4, r6, r4
2002734e:	eb45 0507 	adc.w	r5, r5, r7
20027352:	18e3      	adds	r3, r4, r3
20027354:	9301      	str	r3, [sp, #4]
20027356:	eb42 0305 	adc.w	r3, r2, r5
2002735a:	9302      	str	r3, [sp, #8]
2002735c:	9b00      	ldr	r3, [sp, #0]
2002735e:	9a00      	ldr	r2, [sp, #0]
20027360:	6b1b      	ldr	r3, [r3, #48]	@ 0x30
20027362:	9906      	ldr	r1, [sp, #24]
20027364:	6b52      	ldr	r2, [r2, #52]	@ 0x34
20027366:	e9d0 450c 	ldrd	r4, r5, [r0, #48]	@ 0x30
2002736a:	191b      	adds	r3, r3, r4
2002736c:	eb42 0205 	adc.w	r2, r2, r5
20027370:	185b      	adds	r3, r3, r1
20027372:	9907      	ldr	r1, [sp, #28]
20027374:	9c0a      	ldr	r4, [sp, #40]	@ 0x28
20027376:	eb41 0202 	adc.w	r2, r1, r2
2002737a:	990c      	ldr	r1, [sp, #48]	@ 0x30
2002737c:	ea81 0504 	eor.w	r5, r1, r4
20027380:	990d      	ldr	r1, [sp, #52]	@ 0x34
20027382:	9c0b      	ldr	r4, [sp, #44]	@ 0x2c
20027384:	404c      	eors	r4, r1
20027386:	9908      	ldr	r1, [sp, #32]
20027388:	400d      	ands	r5, r1
2002738a:	9909      	ldr	r1, [sp, #36]	@ 0x24
2002738c:	400c      	ands	r4, r1
2002738e:	990c      	ldr	r1, [sp, #48]	@ 0x30
20027390:	404d      	eors	r5, r1
20027392:	990d      	ldr	r1, [sp, #52]	@ 0x34
20027394:	195b      	adds	r3, r3, r5
20027396:	ea84 0401 	eor.w	r4, r4, r1
2002739a:	9908      	ldr	r1, [sp, #32]
2002739c:	eb42 0204 	adc.w	r2, r2, r4
200273a0:	0b8e      	lsrs	r6, r1, #14
200273a2:	9909      	ldr	r1, [sp, #36]	@ 0x24
200273a4:	ea46 4681 	orr.w	r6, r6, r1, lsl #18
200273a8:	0b8c      	lsrs	r4, r1, #14
200273aa:	9908      	ldr	r1, [sp, #32]
200273ac:	ea44 4481 	orr.w	r4, r4, r1, lsl #18
200273b0:	0c8f      	lsrs	r7, r1, #18
200273b2:	9909      	ldr	r1, [sp, #36]	@ 0x24
200273b4:	ea47 3781 	orr.w	r7, r7, r1, lsl #14
200273b8:	0c8d      	lsrs	r5, r1, #18
200273ba:	9908      	ldr	r1, [sp, #32]
200273bc:	407e      	eors	r6, r7
200273be:	ea45 3581 	orr.w	r5, r5, r1, lsl #14
200273c2:	406c      	eors	r4, r5
200273c4:	05cd      	lsls	r5, r1, #23
200273c6:	9909      	ldr	r1, [sp, #36]	@ 0x24
200273c8:	ea45 2551 	orr.w	r5, r5, r1, lsr #9
200273cc:	05cf      	lsls	r7, r1, #23
200273ce:	9908      	ldr	r1, [sp, #32]
200273d0:	4075      	eors	r5, r6
200273d2:	ea47 2751 	orr.w	r7, r7, r1, lsr #9
200273d6:	195b      	adds	r3, r3, r5
200273d8:	ea84 0407 	eor.w	r4, r4, r7
200273dc:	eb42 0204 	adc.w	r2, r2, r4
200273e0:	eb19 0103 	adds.w	r1, r9, r3
200273e4:	9106      	str	r1, [sp, #24]
200273e6:	eb48 0102 	adc.w	r1, r8, r2
200273ea:	9107      	str	r1, [sp, #28]
200273ec:	9901      	ldr	r1, [sp, #4]
200273ee:	0f0e      	lsrs	r6, r1, #28
200273f0:	9902      	ldr	r1, [sp, #8]
200273f2:	ea46 1601 	orr.w	r6, r6, r1, lsl #4
200273f6:	0f0d      	lsrs	r5, r1, #28
200273f8:	9901      	ldr	r1, [sp, #4]
200273fa:	ea45 1501 	orr.w	r5, r5, r1, lsl #4
200273fe:	078f      	lsls	r7, r1, #30
20027400:	9902      	ldr	r1, [sp, #8]
20027402:	ea47 0791 	orr.w	r7, r7, r1, lsr #2
20027406:	078c      	lsls	r4, r1, #30
20027408:	9901      	ldr	r1, [sp, #4]
2002740a:	407e      	eors	r6, r7
2002740c:	ea44 0491 	orr.w	r4, r4, r1, lsr #2
20027410:	064f      	lsls	r7, r1, #25
20027412:	9902      	ldr	r1, [sp, #8]
20027414:	4065      	eors	r5, r4
20027416:	ea47 17d1 	orr.w	r7, r7, r1, lsr #7
2002741a:	064c      	lsls	r4, r1, #25
2002741c:	9901      	ldr	r1, [sp, #4]
2002741e:	407e      	eors	r6, r7
20027420:	ea44 14d1 	orr.w	r4, r4, r1, lsr #7
20027424:	4065      	eors	r5, r4
20027426:	9903      	ldr	r1, [sp, #12]
20027428:	9c01      	ldr	r4, [sp, #4]
2002742a:	430c      	orrs	r4, r1
2002742c:	9902      	ldr	r1, [sp, #8]
2002742e:	ea4b 0701 	orr.w	r7, fp, r1
20027432:	9904      	ldr	r1, [sp, #16]
20027434:	ea04 0801 	and.w	r8, r4, r1
20027438:	9905      	ldr	r1, [sp, #20]
2002743a:	9c01      	ldr	r4, [sp, #4]
2002743c:	400f      	ands	r7, r1
2002743e:	9903      	ldr	r1, [sp, #12]
20027440:	ea01 0e04 	and.w	lr, r1, r4
20027444:	9902      	ldr	r1, [sp, #8]
20027446:	ea48 040e 	orr.w	r4, r8, lr
2002744a:	ea0b 0c01 	and.w	ip, fp, r1
2002744e:	1934      	adds	r4, r6, r4
20027450:	ea47 070c 	orr.w	r7, r7, ip
20027454:	eb45 0507 	adc.w	r5, r5, r7
20027458:	eb14 0c03 	adds.w	ip, r4, r3
2002745c:	9b00      	ldr	r3, [sp, #0]
2002745e:	eb42 0e05 	adc.w	lr, r2, r5
20027462:	6b9b      	ldr	r3, [r3, #56]	@ 0x38
20027464:	9a00      	ldr	r2, [sp, #0]
20027466:	e9d0 450e 	ldrd	r4, r5, [r0, #56]	@ 0x38
2002746a:	6bd2      	ldr	r2, [r2, #60]	@ 0x3c
2002746c:	191c      	adds	r4, r3, r4
2002746e:	9b0c      	ldr	r3, [sp, #48]	@ 0x30
20027470:	eb42 0205 	adc.w	r2, r2, r5
20027474:	18e4      	adds	r4, r4, r3
20027476:	9b0d      	ldr	r3, [sp, #52]	@ 0x34
20027478:	9908      	ldr	r1, [sp, #32]
2002747a:	eb43 0202 	adc.w	r2, r3, r2
2002747e:	9b0a      	ldr	r3, [sp, #40]	@ 0x28
20027480:	3040      	adds	r0, #64	@ 0x40
20027482:	ea83 0501 	eor.w	r5, r3, r1
20027486:	9909      	ldr	r1, [sp, #36]	@ 0x24
20027488:	9b0b      	ldr	r3, [sp, #44]	@ 0x2c
2002748a:	404b      	eors	r3, r1
2002748c:	9906      	ldr	r1, [sp, #24]
2002748e:	400d      	ands	r5, r1
20027490:	9907      	ldr	r1, [sp, #28]
20027492:	400b      	ands	r3, r1
20027494:	990a      	ldr	r1, [sp, #40]	@ 0x28
20027496:	404d      	eors	r5, r1
20027498:	990b      	ldr	r1, [sp, #44]	@ 0x2c
2002749a:	1964      	adds	r4, r4, r5
2002749c:	ea83 0301 	eor.w	r3, r3, r1
200274a0:	eb42 0203 	adc.w	r2, r2, r3
200274a4:	9b06      	ldr	r3, [sp, #24]
200274a6:	9906      	ldr	r1, [sp, #24]
200274a8:	0b9e      	lsrs	r6, r3, #14
200274aa:	9b07      	ldr	r3, [sp, #28]
200274ac:	0c8f      	lsrs	r7, r1, #18
200274ae:	ea46 4683 	orr.w	r6, r6, r3, lsl #18
200274b2:	0b9b      	lsrs	r3, r3, #14
200274b4:	ea43 4381 	orr.w	r3, r3, r1, lsl #18
200274b8:	9907      	ldr	r1, [sp, #28]
200274ba:	ea47 3781 	orr.w	r7, r7, r1, lsl #14
200274be:	0c8d      	lsrs	r5, r1, #18
200274c0:	9906      	ldr	r1, [sp, #24]
200274c2:	407e      	eors	r6, r7
200274c4:	ea45 3581 	orr.w	r5, r5, r1, lsl #14
200274c8:	406b      	eors	r3, r5
200274ca:	05cd      	lsls	r5, r1, #23
200274cc:	9907      	ldr	r1, [sp, #28]
200274ce:	ea45 2551 	orr.w	r5, r5, r1, lsr #9
200274d2:	05cf      	lsls	r7, r1, #23
200274d4:	9906      	ldr	r1, [sp, #24]
200274d6:	4075      	eors	r5, r6
200274d8:	ea47 2751 	orr.w	r7, r7, r1, lsr #9
200274dc:	1964      	adds	r4, r4, r5
200274de:	ea83 0307 	eor.w	r3, r3, r7
200274e2:	eb42 0203 	adc.w	r2, r2, r3
200274e6:	9b04      	ldr	r3, [sp, #16]
200274e8:	ea4f 751e 	mov.w	r5, lr, lsr #28
200274ec:	191b      	adds	r3, r3, r4
200274ee:	9304      	str	r3, [sp, #16]
200274f0:	9b05      	ldr	r3, [sp, #20]
200274f2:	ea4f 761c 	mov.w	r6, ip, lsr #28
200274f6:	eb43 0302 	adc.w	r3, r3, r2
200274fa:	9305      	str	r3, [sp, #20]
200274fc:	ea4f 738e 	mov.w	r3, lr, lsl #30
20027500:	ea43 039c 	orr.w	r3, r3, ip, lsr #2
20027504:	ea45 150c 	orr.w	r5, r5, ip, lsl #4
20027508:	ea4f 778c 	mov.w	r7, ip, lsl #30
2002750c:	ea47 079e 	orr.w	r7, r7, lr, lsr #2
20027510:	405d      	eors	r5, r3
20027512:	ea46 160e 	orr.w	r6, r6, lr, lsl #4
20027516:	ea4f 634e 	mov.w	r3, lr, lsl #25
2002751a:	9902      	ldr	r1, [sp, #8]
2002751c:	407e      	eors	r6, r7
2002751e:	ea43 13dc 	orr.w	r3, r3, ip, lsr #7
20027522:	ea4f 674c 	mov.w	r7, ip, lsl #25
20027526:	ea47 17de 	orr.w	r7, r7, lr, lsr #7
2002752a:	405d      	eors	r5, r3
2002752c:	9b01      	ldr	r3, [sp, #4]
2002752e:	407e      	eors	r6, r7
20027530:	ea41 070e 	orr.w	r7, r1, lr
20027534:	9903      	ldr	r1, [sp, #12]
20027536:	ea43 030c 	orr.w	r3, r3, ip
2002753a:	400b      	ands	r3, r1
2002753c:	9901      	ldr	r1, [sp, #4]
2002753e:	ea07 070b 	and.w	r7, r7, fp
20027542:	ea01 090c 	and.w	r9, r1, ip
20027546:	9902      	ldr	r1, [sp, #8]
20027548:	ea43 0309 	orr.w	r3, r3, r9
2002754c:	ea01 080e 	and.w	r8, r1, lr
20027550:	9900      	ldr	r1, [sp, #0]
20027552:	18f3      	adds	r3, r6, r3
20027554:	f101 0140 	add.w	r1, r1, #64	@ 0x40
20027558:	9100      	str	r1, [sp, #0]
2002755a:	ea47 0708 	orr.w	r7, r7, r8
2002755e:	eb45 0507 	adc.w	r5, r5, r7
20027562:	4928      	ldr	r1, [pc, #160]	@ (20027604 <mbedtls_sha512_process+0xa54>)
20027564:	191b      	adds	r3, r3, r4
20027566:	9c00      	ldr	r4, [sp, #0]
20027568:	eb42 0205 	adc.w	r2, r2, r5
2002756c:	42a1      	cmp	r1, r4
2002756e:	f47f abe3 	bne.w	20026d38 <mbedtls_sha512_process+0x188>
20027572:	990e      	ldr	r1, [sp, #56]	@ 0x38
20027574:	18cb      	adds	r3, r1, r3
20027576:	990f      	ldr	r1, [sp, #60]	@ 0x3c
20027578:	eb42 0201 	adc.w	r2, r2, r1
2002757c:	e9ca 3204 	strd	r3, r2, [sl, #16]
20027580:	9b10      	ldr	r3, [sp, #64]	@ 0x40
20027582:	9a11      	ldr	r2, [sp, #68]	@ 0x44
20027584:	eb13 030c 	adds.w	r3, r3, ip
20027588:	eb4e 0202 	adc.w	r2, lr, r2
2002758c:	e9ca 3206 	strd	r3, r2, [sl, #24]
20027590:	9a01      	ldr	r2, [sp, #4]
20027592:	9b12      	ldr	r3, [sp, #72]	@ 0x48
20027594:	9913      	ldr	r1, [sp, #76]	@ 0x4c
20027596:	189b      	adds	r3, r3, r2
20027598:	9a02      	ldr	r2, [sp, #8]
2002759a:	eb42 0201 	adc.w	r2, r2, r1
2002759e:	e9ca 3208 	strd	r3, r2, [sl, #32]
200275a2:	9a03      	ldr	r2, [sp, #12]
200275a4:	9b14      	ldr	r3, [sp, #80]	@ 0x50
200275a6:	9917      	ldr	r1, [sp, #92]	@ 0x5c
200275a8:	189b      	adds	r3, r3, r2
200275aa:	9a15      	ldr	r2, [sp, #84]	@ 0x54
200275ac:	eb4b 0202 	adc.w	r2, fp, r2
200275b0:	e9ca 320a 	strd	r3, r2, [sl, #40]	@ 0x28
200275b4:	9a04      	ldr	r2, [sp, #16]
200275b6:	9b16      	ldr	r3, [sp, #88]	@ 0x58
200275b8:	189b      	adds	r3, r3, r2
200275ba:	9a05      	ldr	r2, [sp, #20]
200275bc:	eb42 0201 	adc.w	r2, r2, r1
200275c0:	e9ca 320c 	strd	r3, r2, [sl, #48]	@ 0x30
200275c4:	9b18      	ldr	r3, [sp, #96]	@ 0x60
200275c6:	9a06      	ldr	r2, [sp, #24]
200275c8:	9919      	ldr	r1, [sp, #100]	@ 0x64
200275ca:	189a      	adds	r2, r3, r2
200275cc:	9b07      	ldr	r3, [sp, #28]
200275ce:	eb43 0301 	adc.w	r3, r3, r1
200275d2:	e9ca 230e 	strd	r2, r3, [sl, #56]	@ 0x38
200275d6:	9b1a      	ldr	r3, [sp, #104]	@ 0x68
200275d8:	9a08      	ldr	r2, [sp, #32]
200275da:	991b      	ldr	r1, [sp, #108]	@ 0x6c
200275dc:	189a      	adds	r2, r3, r2
200275de:	9b09      	ldr	r3, [sp, #36]	@ 0x24
200275e0:	eb43 0301 	adc.w	r3, r3, r1
200275e4:	e9ca 2310 	strd	r2, r3, [sl, #64]	@ 0x40
200275e8:	9b1c      	ldr	r3, [sp, #112]	@ 0x70
200275ea:	9a0a      	ldr	r2, [sp, #40]	@ 0x28
200275ec:	991d      	ldr	r1, [sp, #116]	@ 0x74
200275ee:	189a      	adds	r2, r3, r2
200275f0:	9b0b      	ldr	r3, [sp, #44]	@ 0x2c
200275f2:	eb43 0301 	adc.w	r3, r3, r1
200275f6:	e9ca 2312 	strd	r2, r3, [sl, #72]	@ 0x48
200275fa:	f50d 7d3f 	add.w	sp, sp, #764	@ 0x2fc
200275fe:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
20027602:	bf00      	nop
20027604:	2002c3b8 	.word	0x2002c3b8

20027608 <mbedtls_sha512_update.part.0>:
20027608:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
2002760c:	4615      	mov	r5, r2
2002760e:	e9d0 3200 	ldrd	r3, r2, [r0]
20027612:	f003 077f 	and.w	r7, r3, #127	@ 0x7f
20027616:	195b      	adds	r3, r3, r5
20027618:	f152 0200 	adcs.w	r2, r2, #0
2002761c:	460e      	mov	r6, r1
2002761e:	f04f 0100 	mov.w	r1, #0
20027622:	bf28      	it	cs
20027624:	2101      	movcs	r1, #1
20027626:	4604      	mov	r4, r0
20027628:	e9c0 3200 	strd	r3, r2, [r0]
2002762c:	b131      	cbz	r1, 2002763c <mbedtls_sha512_update.part.0+0x34>
2002762e:	e9d0 3202 	ldrd	r3, r2, [r0, #8]
20027632:	3301      	adds	r3, #1
20027634:	f142 0200 	adc.w	r2, r2, #0
20027638:	e9c0 3202 	strd	r3, r2, [r0, #8]
2002763c:	b19f      	cbz	r7, 20027666 <mbedtls_sha512_update.part.0+0x5e>
2002763e:	f1c7 0980 	rsb	r9, r7, #128	@ 0x80
20027642:	45a9      	cmp	r9, r5
20027644:	d80f      	bhi.n	20027666 <mbedtls_sha512_update.part.0+0x5e>
20027646:	f104 0850 	add.w	r8, r4, #80	@ 0x50
2002764a:	4631      	mov	r1, r6
2002764c:	464a      	mov	r2, r9
2002764e:	eb08 0007 	add.w	r0, r8, r7
20027652:	f003 fa05 	bl	2002aa60 <memcpy>
20027656:	3d80      	subs	r5, #128	@ 0x80
20027658:	4641      	mov	r1, r8
2002765a:	4620      	mov	r0, r4
2002765c:	443d      	add	r5, r7
2002765e:	f7ff faa7 	bl	20026bb0 <mbedtls_sha512_process>
20027662:	2700      	movs	r7, #0
20027664:	444e      	add	r6, r9
20027666:	46a8      	mov	r8, r5
20027668:	eb05 0906 	add.w	r9, r5, r6
2002766c:	e004      	b.n	20027678 <mbedtls_sha512_update.part.0+0x70>
2002766e:	4620      	mov	r0, r4
20027670:	f7ff fa9e 	bl	20026bb0 <mbedtls_sha512_process>
20027674:	f1a8 0880 	sub.w	r8, r8, #128	@ 0x80
20027678:	f1b8 0f7f 	cmp.w	r8, #127	@ 0x7f
2002767c:	eba9 0108 	sub.w	r1, r9, r8
20027680:	d8f5      	bhi.n	2002766e <mbedtls_sha512_update.part.0+0x66>
20027682:	f06f 037f 	mvn.w	r3, #127	@ 0x7f
20027686:	09e9      	lsrs	r1, r5, #7
20027688:	4359      	muls	r1, r3
2002768a:	186a      	adds	r2, r5, r1
2002768c:	d007      	beq.n	2002769e <mbedtls_sha512_update.part.0+0x96>
2002768e:	f104 0050 	add.w	r0, r4, #80	@ 0x50
20027692:	1a71      	subs	r1, r6, r1
20027694:	4438      	add	r0, r7
20027696:	e8bd 43f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
2002769a:	f003 b9e1 	b.w	2002aa60 <memcpy>
2002769e:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}

200276a2 <mbedtls_sha512_update>:
200276a2:	b10a      	cbz	r2, 200276a8 <mbedtls_sha512_update+0x6>
200276a4:	f7ff bfb0 	b.w	20027608 <mbedtls_sha512_update.part.0>
200276a8:	4770      	bx	lr
	...

200276ac <mbedtls_sha512_finish>:
200276ac:	b5f0      	push	{r4, r5, r6, r7, lr}
200276ae:	4604      	mov	r4, r0
200276b0:	e9d0 2300 	ldrd	r2, r3, [r0]
200276b4:	460d      	mov	r5, r1
200276b6:	e9d0 6102 	ldrd	r6, r1, [r0, #8]
200276ba:	00c9      	lsls	r1, r1, #3
200276bc:	ea41 7156 	orr.w	r1, r1, r6, lsr #29
200276c0:	b085      	sub	sp, #20
200276c2:	0e0f      	lsrs	r7, r1, #24
200276c4:	0f58      	lsrs	r0, r3, #29
200276c6:	00db      	lsls	r3, r3, #3
200276c8:	ea43 7352 	orr.w	r3, r3, r2, lsr #29
200276cc:	f88d 7000 	strb.w	r7, [sp]
200276d0:	0c0f      	lsrs	r7, r1, #16
200276d2:	f88d 7001 	strb.w	r7, [sp, #1]
200276d6:	f88d 1003 	strb.w	r1, [sp, #3]
200276da:	0a0f      	lsrs	r7, r1, #8
200276dc:	0e19      	lsrs	r1, r3, #24
200276de:	ea40 00c6 	orr.w	r0, r0, r6, lsl #3
200276e2:	f88d 1008 	strb.w	r1, [sp, #8]
200276e6:	00d6      	lsls	r6, r2, #3
200276e8:	0c19      	lsrs	r1, r3, #16
200276ea:	f002 027f 	and.w	r2, r2, #127	@ 0x7f
200276ee:	2a6f      	cmp	r2, #111	@ 0x6f
200276f0:	ba00      	rev	r0, r0
200276f2:	f88d 1009 	strb.w	r1, [sp, #9]
200276f6:	ea4f 2113 	mov.w	r1, r3, lsr #8
200276fa:	bf94      	ite	ls
200276fc:	f1c2 0270 	rsbls	r2, r2, #112	@ 0x70
20027700:	f1c2 02f0 	rsbhi	r2, r2, #240	@ 0xf0
20027704:	9001      	str	r0, [sp, #4]
20027706:	f88d 100a 	strb.w	r1, [sp, #10]
2002770a:	4620      	mov	r0, r4
2002770c:	4969      	ldr	r1, [pc, #420]	@ (200278b4 <mbedtls_sha512_finish+0x208>)
2002770e:	ba36      	rev	r6, r6
20027710:	f88d 300b 	strb.w	r3, [sp, #11]
20027714:	f88d 7002 	strb.w	r7, [sp, #2]
20027718:	9603      	str	r6, [sp, #12]
2002771a:	f7ff ffc2 	bl	200276a2 <mbedtls_sha512_update>
2002771e:	2210      	movs	r2, #16
20027720:	4669      	mov	r1, sp
20027722:	4620      	mov	r0, r4
20027724:	f7ff ff70 	bl	20027608 <mbedtls_sha512_update.part.0>
20027728:	7de3      	ldrb	r3, [r4, #23]
2002772a:	702b      	strb	r3, [r5, #0]
2002772c:	8ae3      	ldrh	r3, [r4, #22]
2002772e:	706b      	strb	r3, [r5, #1]
20027730:	6963      	ldr	r3, [r4, #20]
20027732:	0a1b      	lsrs	r3, r3, #8
20027734:	70ab      	strb	r3, [r5, #2]
20027736:	6963      	ldr	r3, [r4, #20]
20027738:	70eb      	strb	r3, [r5, #3]
2002773a:	7ce3      	ldrb	r3, [r4, #19]
2002773c:	712b      	strb	r3, [r5, #4]
2002773e:	8a63      	ldrh	r3, [r4, #18]
20027740:	716b      	strb	r3, [r5, #5]
20027742:	6923      	ldr	r3, [r4, #16]
20027744:	0a1b      	lsrs	r3, r3, #8
20027746:	71ab      	strb	r3, [r5, #6]
20027748:	6923      	ldr	r3, [r4, #16]
2002774a:	71eb      	strb	r3, [r5, #7]
2002774c:	7fe3      	ldrb	r3, [r4, #31]
2002774e:	722b      	strb	r3, [r5, #8]
20027750:	8be3      	ldrh	r3, [r4, #30]
20027752:	726b      	strb	r3, [r5, #9]
20027754:	69e3      	ldr	r3, [r4, #28]
20027756:	0a1b      	lsrs	r3, r3, #8
20027758:	72ab      	strb	r3, [r5, #10]
2002775a:	69e3      	ldr	r3, [r4, #28]
2002775c:	72eb      	strb	r3, [r5, #11]
2002775e:	7ee3      	ldrb	r3, [r4, #27]
20027760:	732b      	strb	r3, [r5, #12]
20027762:	8b63      	ldrh	r3, [r4, #26]
20027764:	736b      	strb	r3, [r5, #13]
20027766:	69a3      	ldr	r3, [r4, #24]
20027768:	0a1b      	lsrs	r3, r3, #8
2002776a:	73ab      	strb	r3, [r5, #14]
2002776c:	69a3      	ldr	r3, [r4, #24]
2002776e:	73eb      	strb	r3, [r5, #15]
20027770:	f894 3027 	ldrb.w	r3, [r4, #39]	@ 0x27
20027774:	742b      	strb	r3, [r5, #16]
20027776:	8ce3      	ldrh	r3, [r4, #38]	@ 0x26
20027778:	746b      	strb	r3, [r5, #17]
2002777a:	6a63      	ldr	r3, [r4, #36]	@ 0x24
2002777c:	0a1b      	lsrs	r3, r3, #8
2002777e:	74ab      	strb	r3, [r5, #18]
20027780:	6a63      	ldr	r3, [r4, #36]	@ 0x24
20027782:	74eb      	strb	r3, [r5, #19]
20027784:	f894 3023 	ldrb.w	r3, [r4, #35]	@ 0x23
20027788:	752b      	strb	r3, [r5, #20]
2002778a:	8c63      	ldrh	r3, [r4, #34]	@ 0x22
2002778c:	756b      	strb	r3, [r5, #21]
2002778e:	6a23      	ldr	r3, [r4, #32]
20027790:	0a1b      	lsrs	r3, r3, #8
20027792:	75ab      	strb	r3, [r5, #22]
20027794:	6a23      	ldr	r3, [r4, #32]
20027796:	75eb      	strb	r3, [r5, #23]
20027798:	f894 302f 	ldrb.w	r3, [r4, #47]	@ 0x2f
2002779c:	762b      	strb	r3, [r5, #24]
2002779e:	8de3      	ldrh	r3, [r4, #46]	@ 0x2e
200277a0:	766b      	strb	r3, [r5, #25]
200277a2:	6ae3      	ldr	r3, [r4, #44]	@ 0x2c
200277a4:	0a1b      	lsrs	r3, r3, #8
200277a6:	76ab      	strb	r3, [r5, #26]
200277a8:	6ae3      	ldr	r3, [r4, #44]	@ 0x2c
200277aa:	76eb      	strb	r3, [r5, #27]
200277ac:	f894 302b 	ldrb.w	r3, [r4, #43]	@ 0x2b
200277b0:	772b      	strb	r3, [r5, #28]
200277b2:	8d63      	ldrh	r3, [r4, #42]	@ 0x2a
200277b4:	776b      	strb	r3, [r5, #29]
200277b6:	6aa3      	ldr	r3, [r4, #40]	@ 0x28
200277b8:	0a1b      	lsrs	r3, r3, #8
200277ba:	77ab      	strb	r3, [r5, #30]
200277bc:	6aa3      	ldr	r3, [r4, #40]	@ 0x28
200277be:	77eb      	strb	r3, [r5, #31]
200277c0:	f894 3037 	ldrb.w	r3, [r4, #55]	@ 0x37
200277c4:	f885 3020 	strb.w	r3, [r5, #32]
200277c8:	8ee3      	ldrh	r3, [r4, #54]	@ 0x36
200277ca:	f885 3021 	strb.w	r3, [r5, #33]	@ 0x21
200277ce:	6b63      	ldr	r3, [r4, #52]	@ 0x34
200277d0:	0a1b      	lsrs	r3, r3, #8
200277d2:	f885 3022 	strb.w	r3, [r5, #34]	@ 0x22
200277d6:	6b63      	ldr	r3, [r4, #52]	@ 0x34
200277d8:	f885 3023 	strb.w	r3, [r5, #35]	@ 0x23
200277dc:	f894 3033 	ldrb.w	r3, [r4, #51]	@ 0x33
200277e0:	f885 3024 	strb.w	r3, [r5, #36]	@ 0x24
200277e4:	8e63      	ldrh	r3, [r4, #50]	@ 0x32
200277e6:	f885 3025 	strb.w	r3, [r5, #37]	@ 0x25
200277ea:	6b23      	ldr	r3, [r4, #48]	@ 0x30
200277ec:	0a1b      	lsrs	r3, r3, #8
200277ee:	f885 3026 	strb.w	r3, [r5, #38]	@ 0x26
200277f2:	6b23      	ldr	r3, [r4, #48]	@ 0x30
200277f4:	f885 3027 	strb.w	r3, [r5, #39]	@ 0x27
200277f8:	f894 303f 	ldrb.w	r3, [r4, #63]	@ 0x3f
200277fc:	f885 3028 	strb.w	r3, [r5, #40]	@ 0x28
20027800:	8fe3      	ldrh	r3, [r4, #62]	@ 0x3e
20027802:	f885 3029 	strb.w	r3, [r5, #41]	@ 0x29
20027806:	6be3      	ldr	r3, [r4, #60]	@ 0x3c
20027808:	0a1b      	lsrs	r3, r3, #8
2002780a:	f885 302a 	strb.w	r3, [r5, #42]	@ 0x2a
2002780e:	6be3      	ldr	r3, [r4, #60]	@ 0x3c
20027810:	f885 302b 	strb.w	r3, [r5, #43]	@ 0x2b
20027814:	f894 303b 	ldrb.w	r3, [r4, #59]	@ 0x3b
20027818:	f885 302c 	strb.w	r3, [r5, #44]	@ 0x2c
2002781c:	8f63      	ldrh	r3, [r4, #58]	@ 0x3a
2002781e:	f885 302d 	strb.w	r3, [r5, #45]	@ 0x2d
20027822:	6ba3      	ldr	r3, [r4, #56]	@ 0x38
20027824:	0a1b      	lsrs	r3, r3, #8
20027826:	f885 302e 	strb.w	r3, [r5, #46]	@ 0x2e
2002782a:	6ba3      	ldr	r3, [r4, #56]	@ 0x38
2002782c:	f885 302f 	strb.w	r3, [r5, #47]	@ 0x2f
20027830:	f8d4 30d0 	ldr.w	r3, [r4, #208]	@ 0xd0
20027834:	2b00      	cmp	r3, #0
20027836:	d13b      	bne.n	200278b0 <mbedtls_sha512_finish+0x204>
20027838:	f894 3047 	ldrb.w	r3, [r4, #71]	@ 0x47
2002783c:	f885 3030 	strb.w	r3, [r5, #48]	@ 0x30
20027840:	f8b4 3046 	ldrh.w	r3, [r4, #70]	@ 0x46
20027844:	f885 3031 	strb.w	r3, [r5, #49]	@ 0x31
20027848:	6c63      	ldr	r3, [r4, #68]	@ 0x44
2002784a:	0a1b      	lsrs	r3, r3, #8
2002784c:	f885 3032 	strb.w	r3, [r5, #50]	@ 0x32
20027850:	6c63      	ldr	r3, [r4, #68]	@ 0x44
20027852:	f885 3033 	strb.w	r3, [r5, #51]	@ 0x33
20027856:	f894 3043 	ldrb.w	r3, [r4, #67]	@ 0x43
2002785a:	f885 3034 	strb.w	r3, [r5, #52]	@ 0x34
2002785e:	f8b4 3042 	ldrh.w	r3, [r4, #66]	@ 0x42
20027862:	f885 3035 	strb.w	r3, [r5, #53]	@ 0x35
20027866:	6c23      	ldr	r3, [r4, #64]	@ 0x40
20027868:	0a1b      	lsrs	r3, r3, #8
2002786a:	f885 3036 	strb.w	r3, [r5, #54]	@ 0x36
2002786e:	6c23      	ldr	r3, [r4, #64]	@ 0x40
20027870:	f885 3037 	strb.w	r3, [r5, #55]	@ 0x37
20027874:	f894 304f 	ldrb.w	r3, [r4, #79]	@ 0x4f
20027878:	f885 3038 	strb.w	r3, [r5, #56]	@ 0x38
2002787c:	f8b4 304e 	ldrh.w	r3, [r4, #78]	@ 0x4e
20027880:	f885 3039 	strb.w	r3, [r5, #57]	@ 0x39
20027884:	6ce3      	ldr	r3, [r4, #76]	@ 0x4c
20027886:	0a1b      	lsrs	r3, r3, #8
20027888:	f885 303a 	strb.w	r3, [r5, #58]	@ 0x3a
2002788c:	6ce3      	ldr	r3, [r4, #76]	@ 0x4c
2002788e:	f885 303b 	strb.w	r3, [r5, #59]	@ 0x3b
20027892:	f894 304b 	ldrb.w	r3, [r4, #75]	@ 0x4b
20027896:	f885 303c 	strb.w	r3, [r5, #60]	@ 0x3c
2002789a:	f8b4 304a 	ldrh.w	r3, [r4, #74]	@ 0x4a
2002789e:	f885 303d 	strb.w	r3, [r5, #61]	@ 0x3d
200278a2:	6ca3      	ldr	r3, [r4, #72]	@ 0x48
200278a4:	0a1b      	lsrs	r3, r3, #8
200278a6:	f885 303e 	strb.w	r3, [r5, #62]	@ 0x3e
200278aa:	6ca3      	ldr	r3, [r4, #72]	@ 0x48
200278ac:	f885 303f 	strb.w	r3, [r5, #63]	@ 0x3f
200278b0:	b005      	add	sp, #20
200278b2:	bdf0      	pop	{r4, r5, r6, r7, pc}
200278b4:	2002c0b4 	.word	0x2002c0b4

200278b8 <mbedtls_sha512>:
200278b8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
200278bc:	461c      	mov	r4, r3
200278be:	b0b7      	sub	sp, #220	@ 0xdc
200278c0:	4606      	mov	r6, r0
200278c2:	4668      	mov	r0, sp
200278c4:	460f      	mov	r7, r1
200278c6:	4615      	mov	r5, r2
200278c8:	f7ff f8ce 	bl	20026a68 <mbedtls_sha512_init>
200278cc:	2c00      	cmp	r4, #0
200278ce:	d03f      	beq.n	20027950 <mbedtls_sha512+0x98>
200278d0:	f20f 0bf4 	addw	fp, pc, #244	@ 0xf4
200278d4:	e9db ab00 	ldrd	sl, fp, [fp]
200278d8:	f20f 09f4 	addw	r9, pc, #244	@ 0xf4
200278dc:	e9d9 8900 	ldrd	r8, r9, [r9]
200278e0:	a13d      	add	r1, pc, #244	@ (adr r1, 200279d8 <mbedtls_sha512+0x120>)
200278e2:	e9d1 0100 	ldrd	r0, r1, [r1]
200278e6:	a33e      	add	r3, pc, #248	@ (adr r3, 200279e0 <mbedtls_sha512+0x128>)
200278e8:	e9d3 2300 	ldrd	r2, r3, [r3]
200278ec:	ed9f 4b24 	vldr	d4, [pc, #144]	@ 20027980 <mbedtls_sha512+0xc8>
200278f0:	ed9f 5b25 	vldr	d5, [pc, #148]	@ 20027988 <mbedtls_sha512+0xd0>
200278f4:	ed9f 6b26 	vldr	d6, [pc, #152]	@ 20027990 <mbedtls_sha512+0xd8>
200278f8:	ed9f 7b27 	vldr	d7, [pc, #156]	@ 20027998 <mbedtls_sha512+0xe0>
200278fc:	ed9f 3b28 	vldr	d3, [pc, #160]	@ 200279a0 <mbedtls_sha512+0xe8>
20027900:	e9cd 2312 	strd	r2, r3, [sp, #72]	@ 0x48
20027904:	e9cd 0110 	strd	r0, r1, [sp, #64]	@ 0x40
20027908:	463a      	mov	r2, r7
2002790a:	4631      	mov	r1, r6
2002790c:	4668      	mov	r0, sp
2002790e:	ed8d 3b00 	vstr	d3, [sp]
20027912:	ed8d 3b02 	vstr	d3, [sp, #8]
20027916:	ed8d 4b04 	vstr	d4, [sp, #16]
2002791a:	ed8d 5b06 	vstr	d5, [sp, #24]
2002791e:	ed8d 6b08 	vstr	d6, [sp, #32]
20027922:	ed8d 7b0a 	vstr	d7, [sp, #40]	@ 0x28
20027926:	e9cd ab0c 	strd	sl, fp, [sp, #48]	@ 0x30
2002792a:	e9cd 890e 	strd	r8, r9, [sp, #56]	@ 0x38
2002792e:	9434      	str	r4, [sp, #208]	@ 0xd0
20027930:	f7ff feb7 	bl	200276a2 <mbedtls_sha512_update>
20027934:	4629      	mov	r1, r5
20027936:	4668      	mov	r0, sp
20027938:	f7ff feb8 	bl	200276ac <mbedtls_sha512_finish>
2002793c:	2300      	movs	r3, #0
2002793e:	461a      	mov	r2, r3
20027940:	f80d 2003 	strb.w	r2, [sp, r3]
20027944:	3301      	adds	r3, #1
20027946:	2bd8      	cmp	r3, #216	@ 0xd8
20027948:	d1fa      	bne.n	20027940 <mbedtls_sha512+0x88>
2002794a:	b037      	add	sp, #220	@ 0xdc
2002794c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
20027950:	ed9f 4b15 	vldr	d4, [pc, #84]	@ 200279a8 <mbedtls_sha512+0xf0>
20027954:	f20f 0b90 	addw	fp, pc, #144	@ 0x90
20027958:	e9db ab00 	ldrd	sl, fp, [fp]
2002795c:	f20f 0990 	addw	r9, pc, #144	@ 0x90
20027960:	e9d9 8900 	ldrd	r8, r9, [r9]
20027964:	a124      	add	r1, pc, #144	@ (adr r1, 200279f8 <mbedtls_sha512+0x140>)
20027966:	e9d1 0100 	ldrd	r0, r1, [r1]
2002796a:	a325      	add	r3, pc, #148	@ (adr r3, 20027a00 <mbedtls_sha512+0x148>)
2002796c:	e9d3 2300 	ldrd	r2, r3, [r3]
20027970:	ed9f 5b0f 	vldr	d5, [pc, #60]	@ 200279b0 <mbedtls_sha512+0xf8>
20027974:	ed9f 6b10 	vldr	d6, [pc, #64]	@ 200279b8 <mbedtls_sha512+0x100>
20027978:	ed9f 7b11 	vldr	d7, [pc, #68]	@ 200279c0 <mbedtls_sha512+0x108>
2002797c:	e7be      	b.n	200278fc <mbedtls_sha512+0x44>
2002797e:	bf00      	nop
20027980:	c1059ed8 	.word	0xc1059ed8
20027984:	cbbb9d5d 	.word	0xcbbb9d5d
20027988:	367cd507 	.word	0x367cd507
2002798c:	629a292a 	.word	0x629a292a
20027990:	3070dd17 	.word	0x3070dd17
20027994:	9159015a 	.word	0x9159015a
20027998:	f70e5939 	.word	0xf70e5939
2002799c:	152fecd8 	.word	0x152fecd8
	...
200279a8:	f3bcc908 	.word	0xf3bcc908
200279ac:	6a09e667 	.word	0x6a09e667
200279b0:	84caa73b 	.word	0x84caa73b
200279b4:	bb67ae85 	.word	0xbb67ae85
200279b8:	fe94f82b 	.word	0xfe94f82b
200279bc:	3c6ef372 	.word	0x3c6ef372
200279c0:	5f1d36f1 	.word	0x5f1d36f1
200279c4:	a54ff53a 	.word	0xa54ff53a
200279c8:	ffc00b31 	.word	0xffc00b31
200279cc:	67332667 	.word	0x67332667
200279d0:	68581511 	.word	0x68581511
200279d4:	8eb44a87 	.word	0x8eb44a87
200279d8:	64f98fa7 	.word	0x64f98fa7
200279dc:	db0c2e0d 	.word	0xdb0c2e0d
200279e0:	befa4fa4 	.word	0xbefa4fa4
200279e4:	47b5481d 	.word	0x47b5481d
200279e8:	ade682d1 	.word	0xade682d1
200279ec:	510e527f 	.word	0x510e527f
200279f0:	2b3e6c1f 	.word	0x2b3e6c1f
200279f4:	9b05688c 	.word	0x9b05688c
200279f8:	fb41bd6b 	.word	0xfb41bd6b
200279fc:	1f83d9ab 	.word	0x1f83d9ab
20027a00:	137e2179 	.word	0x137e2179
20027a04:	5be0cd19 	.word	0x5be0cd19

20027a08 <mbedtls_asn1_get_len>:
20027a08:	b570      	push	{r4, r5, r6, lr}
20027a0a:	6803      	ldr	r3, [r0, #0]
20027a0c:	1acd      	subs	r5, r1, r3
20027a0e:	2d00      	cmp	r5, #0
20027a10:	dc02      	bgt.n	20027a18 <mbedtls_asn1_get_len+0x10>
20027a12:	f06f 005f 	mvn.w	r0, #95	@ 0x5f
20027a16:	bd70      	pop	{r4, r5, r6, pc}
20027a18:	f993 6000 	ldrsb.w	r6, [r3]
20027a1c:	781c      	ldrb	r4, [r3, #0]
20027a1e:	2e00      	cmp	r6, #0
20027a20:	db0a      	blt.n	20027a38 <mbedtls_asn1_get_len+0x30>
20027a22:	1c5c      	adds	r4, r3, #1
20027a24:	6004      	str	r4, [r0, #0]
20027a26:	781b      	ldrb	r3, [r3, #0]
20027a28:	6013      	str	r3, [r2, #0]
20027a2a:	6803      	ldr	r3, [r0, #0]
20027a2c:	1ac9      	subs	r1, r1, r3
20027a2e:	6813      	ldr	r3, [r2, #0]
20027a30:	428b      	cmp	r3, r1
20027a32:	d8ee      	bhi.n	20027a12 <mbedtls_asn1_get_len+0xa>
20027a34:	2000      	movs	r0, #0
20027a36:	e7ee      	b.n	20027a16 <mbedtls_asn1_get_len+0xe>
20027a38:	f004 047f 	and.w	r4, r4, #127	@ 0x7f
20027a3c:	3c01      	subs	r4, #1
20027a3e:	2c03      	cmp	r4, #3
20027a40:	d82b      	bhi.n	20027a9a <mbedtls_asn1_get_len+0x92>
20027a42:	e8df f004 	tbb	[pc, r4]
20027a46:	0a02      	.short	0x0a02
20027a48:	2114      	.short	0x2114
20027a4a:	2d01      	cmp	r5, #1
20027a4c:	d0e1      	beq.n	20027a12 <mbedtls_asn1_get_len+0xa>
20027a4e:	785b      	ldrb	r3, [r3, #1]
20027a50:	6013      	str	r3, [r2, #0]
20027a52:	6803      	ldr	r3, [r0, #0]
20027a54:	3302      	adds	r3, #2
20027a56:	6003      	str	r3, [r0, #0]
20027a58:	e7e7      	b.n	20027a2a <mbedtls_asn1_get_len+0x22>
20027a5a:	2d02      	cmp	r5, #2
20027a5c:	ddd9      	ble.n	20027a12 <mbedtls_asn1_get_len+0xa>
20027a5e:	f8b3 3001 	ldrh.w	r3, [r3, #1]
20027a62:	ba5b      	rev16	r3, r3
20027a64:	b29b      	uxth	r3, r3
20027a66:	6013      	str	r3, [r2, #0]
20027a68:	6803      	ldr	r3, [r0, #0]
20027a6a:	3303      	adds	r3, #3
20027a6c:	e7f3      	b.n	20027a56 <mbedtls_asn1_get_len+0x4e>
20027a6e:	2d03      	cmp	r5, #3
20027a70:	ddcf      	ble.n	20027a12 <mbedtls_asn1_get_len+0xa>
20027a72:	789c      	ldrb	r4, [r3, #2]
20027a74:	785d      	ldrb	r5, [r3, #1]
20027a76:	0224      	lsls	r4, r4, #8
20027a78:	78db      	ldrb	r3, [r3, #3]
20027a7a:	ea44 4405 	orr.w	r4, r4, r5, lsl #16
20027a7e:	4323      	orrs	r3, r4
20027a80:	6013      	str	r3, [r2, #0]
20027a82:	6803      	ldr	r3, [r0, #0]
20027a84:	3304      	adds	r3, #4
20027a86:	e7e6      	b.n	20027a56 <mbedtls_asn1_get_len+0x4e>
20027a88:	2d04      	cmp	r5, #4
20027a8a:	ddc2      	ble.n	20027a12 <mbedtls_asn1_get_len+0xa>
20027a8c:	f8d3 3001 	ldr.w	r3, [r3, #1]
20027a90:	ba1b      	rev	r3, r3
20027a92:	6013      	str	r3, [r2, #0]
20027a94:	6803      	ldr	r3, [r0, #0]
20027a96:	3305      	adds	r3, #5
20027a98:	e7dd      	b.n	20027a56 <mbedtls_asn1_get_len+0x4e>
20027a9a:	f06f 0063 	mvn.w	r0, #99	@ 0x63
20027a9e:	e7ba      	b.n	20027a16 <mbedtls_asn1_get_len+0xe>

20027aa0 <mbedtls_asn1_get_tag>:
20027aa0:	b470      	push	{r4, r5, r6}
20027aa2:	6804      	ldr	r4, [r0, #0]
20027aa4:	1b0e      	subs	r6, r1, r4
20027aa6:	2e00      	cmp	r6, #0
20027aa8:	dd07      	ble.n	20027aba <mbedtls_asn1_get_tag+0x1a>
20027aaa:	7826      	ldrb	r6, [r4, #0]
20027aac:	429e      	cmp	r6, r3
20027aae:	d108      	bne.n	20027ac2 <mbedtls_asn1_get_tag+0x22>
20027ab0:	3401      	adds	r4, #1
20027ab2:	6004      	str	r4, [r0, #0]
20027ab4:	bc70      	pop	{r4, r5, r6}
20027ab6:	f7ff bfa7 	b.w	20027a08 <mbedtls_asn1_get_len>
20027aba:	f06f 005f 	mvn.w	r0, #95	@ 0x5f
20027abe:	bc70      	pop	{r4, r5, r6}
20027ac0:	4770      	bx	lr
20027ac2:	f06f 0061 	mvn.w	r0, #97	@ 0x61
20027ac6:	e7fa      	b.n	20027abe <mbedtls_asn1_get_tag+0x1e>

20027ac8 <mbedtls_asn1_get_mpi>:
20027ac8:	b573      	push	{r0, r1, r4, r5, r6, lr}
20027aca:	2302      	movs	r3, #2
20027acc:	4615      	mov	r5, r2
20027ace:	aa01      	add	r2, sp, #4
20027ad0:	4604      	mov	r4, r0
20027ad2:	f7ff ffe5 	bl	20027aa0 <mbedtls_asn1_get_tag>
20027ad6:	b940      	cbnz	r0, 20027aea <mbedtls_asn1_get_mpi+0x22>
20027ad8:	9e01      	ldr	r6, [sp, #4]
20027ada:	4628      	mov	r0, r5
20027adc:	4632      	mov	r2, r6
20027ade:	6821      	ldr	r1, [r4, #0]
20027ae0:	f000 fad4 	bl	2002808c <mbedtls_mpi_read_binary>
20027ae4:	6823      	ldr	r3, [r4, #0]
20027ae6:	4433      	add	r3, r6
20027ae8:	6023      	str	r3, [r4, #0]
20027aea:	b002      	add	sp, #8
20027aec:	bd70      	pop	{r4, r5, r6, pc}

20027aee <mbedtls_asn1_get_bitstring_null>:
20027aee:	b538      	push	{r3, r4, r5, lr}
20027af0:	2303      	movs	r3, #3
20027af2:	4604      	mov	r4, r0
20027af4:	4615      	mov	r5, r2
20027af6:	f7ff ffd3 	bl	20027aa0 <mbedtls_asn1_get_tag>
20027afa:	b958      	cbnz	r0, 20027b14 <mbedtls_asn1_get_bitstring_null+0x26>
20027afc:	6813      	ldr	r3, [r2, #0]
20027afe:	1e5a      	subs	r2, r3, #1
20027b00:	2b01      	cmp	r3, #1
20027b02:	602a      	str	r2, [r5, #0]
20027b04:	d904      	bls.n	20027b10 <mbedtls_asn1_get_bitstring_null+0x22>
20027b06:	6823      	ldr	r3, [r4, #0]
20027b08:	1c5a      	adds	r2, r3, #1
20027b0a:	6022      	str	r2, [r4, #0]
20027b0c:	781b      	ldrb	r3, [r3, #0]
20027b0e:	b10b      	cbz	r3, 20027b14 <mbedtls_asn1_get_bitstring_null+0x26>
20027b10:	f06f 0067 	mvn.w	r0, #103	@ 0x67
20027b14:	bd38      	pop	{r3, r4, r5, pc}

20027b16 <mbedtls_asn1_get_alg>:
20027b16:	e92d 41f3 	stmdb	sp!, {r0, r1, r4, r5, r6, r7, r8, lr}
20027b1a:	4690      	mov	r8, r2
20027b1c:	461e      	mov	r6, r3
20027b1e:	aa01      	add	r2, sp, #4
20027b20:	2330      	movs	r3, #48	@ 0x30
20027b22:	4605      	mov	r5, r0
20027b24:	460f      	mov	r7, r1
20027b26:	f7ff ffbb 	bl	20027aa0 <mbedtls_asn1_get_tag>
20027b2a:	4604      	mov	r4, r0
20027b2c:	bb10      	cbnz	r0, 20027b74 <mbedtls_asn1_get_alg+0x5e>
20027b2e:	682b      	ldr	r3, [r5, #0]
20027b30:	1aff      	subs	r7, r7, r3
20027b32:	2f00      	cmp	r7, #0
20027b34:	dd38      	ble.n	20027ba8 <mbedtls_asn1_get_alg+0x92>
20027b36:	4642      	mov	r2, r8
20027b38:	781b      	ldrb	r3, [r3, #0]
20027b3a:	4628      	mov	r0, r5
20027b3c:	f842 3b04 	str.w	r3, [r2], #4
20027b40:	682f      	ldr	r7, [r5, #0]
20027b42:	9b01      	ldr	r3, [sp, #4]
20027b44:	441f      	add	r7, r3
20027b46:	4639      	mov	r1, r7
20027b48:	2306      	movs	r3, #6
20027b4a:	f7ff ffa9 	bl	20027aa0 <mbedtls_asn1_get_tag>
20027b4e:	4604      	mov	r4, r0
20027b50:	b980      	cbnz	r0, 20027b74 <mbedtls_asn1_get_alg+0x5e>
20027b52:	682b      	ldr	r3, [r5, #0]
20027b54:	f8d8 2004 	ldr.w	r2, [r8, #4]
20027b58:	f8c8 3008 	str.w	r3, [r8, #8]
20027b5c:	1899      	adds	r1, r3, r2
20027b5e:	42b9      	cmp	r1, r7
20027b60:	6029      	str	r1, [r5, #0]
20027b62:	d10b      	bne.n	20027b7c <mbedtls_asn1_get_alg+0x66>
20027b64:	4601      	mov	r1, r0
20027b66:	f106 030c 	add.w	r3, r6, #12
20027b6a:	4632      	mov	r2, r6
20027b6c:	3601      	adds	r6, #1
20027b6e:	42b3      	cmp	r3, r6
20027b70:	7011      	strb	r1, [r2, #0]
20027b72:	d1fa      	bne.n	20027b6a <mbedtls_asn1_get_alg+0x54>
20027b74:	4620      	mov	r0, r4
20027b76:	b002      	add	sp, #8
20027b78:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
20027b7c:	5c9b      	ldrb	r3, [r3, r2]
20027b7e:	4632      	mov	r2, r6
20027b80:	f842 3b04 	str.w	r3, [r2], #4
20027b84:	682b      	ldr	r3, [r5, #0]
20027b86:	4639      	mov	r1, r7
20027b88:	3301      	adds	r3, #1
20027b8a:	4628      	mov	r0, r5
20027b8c:	602b      	str	r3, [r5, #0]
20027b8e:	f7ff ff3b 	bl	20027a08 <mbedtls_asn1_get_len>
20027b92:	b960      	cbnz	r0, 20027bae <mbedtls_asn1_get_alg+0x98>
20027b94:	682b      	ldr	r3, [r5, #0]
20027b96:	6872      	ldr	r2, [r6, #4]
20027b98:	60b3      	str	r3, [r6, #8]
20027b9a:	4413      	add	r3, r2
20027b9c:	42bb      	cmp	r3, r7
20027b9e:	bf18      	it	ne
20027ba0:	f06f 0465 	mvnne.w	r4, #101	@ 0x65
20027ba4:	602b      	str	r3, [r5, #0]
20027ba6:	e7e5      	b.n	20027b74 <mbedtls_asn1_get_alg+0x5e>
20027ba8:	f06f 045f 	mvn.w	r4, #95	@ 0x5f
20027bac:	e7e2      	b.n	20027b74 <mbedtls_asn1_get_alg+0x5e>
20027bae:	4604      	mov	r4, r0
20027bb0:	e7e0      	b.n	20027b74 <mbedtls_asn1_get_alg+0x5e>

20027bb2 <mpi_sub_hlp>:
20027bb2:	2300      	movs	r3, #0
20027bb4:	b5f0      	push	{r4, r5, r6, r7, lr}
20027bb6:	461c      	mov	r4, r3
20027bb8:	1f16      	subs	r6, r2, #4
20027bba:	4284      	cmp	r4, r0
20027bbc:	d103      	bne.n	20027bc6 <mpi_sub_hlp+0x14>
20027bbe:	eb02 0284 	add.w	r2, r2, r4, lsl #2
20027bc2:	b9b3      	cbnz	r3, 20027bf2 <mpi_sub_hlp+0x40>
20027bc4:	bdf0      	pop	{r4, r5, r6, r7, pc}
20027bc6:	f856 cf04 	ldr.w	ip, [r6, #4]!
20027bca:	ebac 0503 	sub.w	r5, ip, r3
20027bce:	6035      	str	r5, [r6, #0]
20027bd0:	f851 7024 	ldr.w	r7, [r1, r4, lsl #2]
20027bd4:	3401      	adds	r4, #1
20027bd6:	42bd      	cmp	r5, r7
20027bd8:	bf2c      	ite	cs
20027bda:	f04f 0e00 	movcs.w	lr, #0
20027bde:	f04f 0e01 	movcc.w	lr, #1
20027be2:	1bed      	subs	r5, r5, r7
20027be4:	459c      	cmp	ip, r3
20027be6:	bf2c      	ite	cs
20027be8:	4673      	movcs	r3, lr
20027bea:	f10e 0301 	addcc.w	r3, lr, #1
20027bee:	6035      	str	r5, [r6, #0]
20027bf0:	e7e3      	b.n	20027bba <mpi_sub_hlp+0x8>
20027bf2:	6811      	ldr	r1, [r2, #0]
20027bf4:	1ac8      	subs	r0, r1, r3
20027bf6:	4299      	cmp	r1, r3
20027bf8:	bf2c      	ite	cs
20027bfa:	2300      	movcs	r3, #0
20027bfc:	2301      	movcc	r3, #1
20027bfe:	f842 0b04 	str.w	r0, [r2], #4
20027c02:	e7de      	b.n	20027bc2 <mpi_sub_hlp+0x10>

20027c04 <mpi_mul_hlp>:
20027c04:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
20027c08:	4694      	mov	ip, r2
20027c0a:	460e      	mov	r6, r1
20027c0c:	4686      	mov	lr, r0
20027c0e:	2500      	movs	r5, #0
20027c10:	f102 0440 	add.w	r4, r2, #64	@ 0x40
20027c14:	f1be 0f0f 	cmp.w	lr, #15
20027c18:	f854 7c40 	ldr.w	r7, [r4, #-64]
20027c1c:	f106 0640 	add.w	r6, r6, #64	@ 0x40
20027c20:	f104 0440 	add.w	r4, r4, #64	@ 0x40
20027c24:	d87c      	bhi.n	20027d20 <mpi_mul_hlp+0x11c>
20027c26:	f06f 080f 	mvn.w	r8, #15
20027c2a:	0902      	lsrs	r2, r0, #4
20027c2c:	fb08 0002 	mla	r0, r8, r2, r0
20027c30:	2807      	cmp	r0, #7
20027c32:	ea4f 1e82 	mov.w	lr, r2, lsl #6
20027c36:	eb0c 1482 	add.w	r4, ip, r2, lsl #6
20027c3a:	eb01 1682 	add.w	r6, r1, r2, lsl #6
20027c3e:	d95b      	bls.n	20027cf8 <mpi_mul_hlp+0xf4>
20027c40:	f851 100e 	ldr.w	r1, [r1, lr]
20027c44:	3808      	subs	r0, #8
20027c46:	fba1 1203 	umull	r1, r2, r1, r3
20027c4a:	1869      	adds	r1, r5, r1
20027c4c:	f142 0200 	adc.w	r2, r2, #0
20027c50:	187f      	adds	r7, r7, r1
20027c52:	f84c 700e 	str.w	r7, [ip, lr]
20027c56:	6871      	ldr	r1, [r6, #4]
20027c58:	f142 0200 	adc.w	r2, r2, #0
20027c5c:	fba1 5103 	umull	r5, r1, r1, r3
20027c60:	1952      	adds	r2, r2, r5
20027c62:	6865      	ldr	r5, [r4, #4]
20027c64:	f141 0100 	adc.w	r1, r1, #0
20027c68:	1952      	adds	r2, r2, r5
20027c6a:	6062      	str	r2, [r4, #4]
20027c6c:	68b2      	ldr	r2, [r6, #8]
20027c6e:	f141 0100 	adc.w	r1, r1, #0
20027c72:	fba2 5203 	umull	r5, r2, r2, r3
20027c76:	1949      	adds	r1, r1, r5
20027c78:	68a5      	ldr	r5, [r4, #8]
20027c7a:	f142 0200 	adc.w	r2, r2, #0
20027c7e:	1949      	adds	r1, r1, r5
20027c80:	60a1      	str	r1, [r4, #8]
20027c82:	68f1      	ldr	r1, [r6, #12]
20027c84:	f142 0200 	adc.w	r2, r2, #0
20027c88:	fba1 5103 	umull	r5, r1, r1, r3
20027c8c:	1952      	adds	r2, r2, r5
20027c8e:	68e5      	ldr	r5, [r4, #12]
20027c90:	f141 0100 	adc.w	r1, r1, #0
20027c94:	1952      	adds	r2, r2, r5
20027c96:	60e2      	str	r2, [r4, #12]
20027c98:	6932      	ldr	r2, [r6, #16]
20027c9a:	f141 0100 	adc.w	r1, r1, #0
20027c9e:	fba2 5203 	umull	r5, r2, r2, r3
20027ca2:	1949      	adds	r1, r1, r5
20027ca4:	6925      	ldr	r5, [r4, #16]
20027ca6:	f142 0200 	adc.w	r2, r2, #0
20027caa:	1949      	adds	r1, r1, r5
20027cac:	6121      	str	r1, [r4, #16]
20027cae:	6971      	ldr	r1, [r6, #20]
20027cb0:	f142 0200 	adc.w	r2, r2, #0
20027cb4:	fba1 5103 	umull	r5, r1, r1, r3
20027cb8:	1952      	adds	r2, r2, r5
20027cba:	6965      	ldr	r5, [r4, #20]
20027cbc:	f141 0100 	adc.w	r1, r1, #0
20027cc0:	1952      	adds	r2, r2, r5
20027cc2:	6162      	str	r2, [r4, #20]
20027cc4:	69b2      	ldr	r2, [r6, #24]
20027cc6:	f141 0100 	adc.w	r1, r1, #0
20027cca:	fba2 5203 	umull	r5, r2, r2, r3
20027cce:	1949      	adds	r1, r1, r5
20027cd0:	69a5      	ldr	r5, [r4, #24]
20027cd2:	f142 0200 	adc.w	r2, r2, #0
20027cd6:	1949      	adds	r1, r1, r5
20027cd8:	61a1      	str	r1, [r4, #24]
20027cda:	69f1      	ldr	r1, [r6, #28]
20027cdc:	f142 0200 	adc.w	r2, r2, #0
20027ce0:	fba1 1503 	umull	r1, r5, r1, r3
20027ce4:	1852      	adds	r2, r2, r1
20027ce6:	69e1      	ldr	r1, [r4, #28]
20027ce8:	f145 0500 	adc.w	r5, r5, #0
20027cec:	1852      	adds	r2, r2, r1
20027cee:	61e2      	str	r2, [r4, #28]
20027cf0:	f145 0500 	adc.w	r5, r5, #0
20027cf4:	3420      	adds	r4, #32
20027cf6:	3620      	adds	r6, #32
20027cf8:	4627      	mov	r7, r4
20027cfa:	ea4f 0c80 	mov.w	ip, r0, lsl #2
20027cfe:	eb06 0080 	add.w	r0, r6, r0, lsl #2
20027d02:	42b0      	cmp	r0, r6
20027d04:	f857 1b04 	ldr.w	r1, [r7], #4
20027d08:	f040 80eb 	bne.w	20027ee2 <mpi_mul_hlp+0x2de>
20027d0c:	4464      	add	r4, ip
20027d0e:	6823      	ldr	r3, [r4, #0]
20027d10:	195b      	adds	r3, r3, r5
20027d12:	f844 3b04 	str.w	r3, [r4], #4
20027d16:	f04f 0501 	mov.w	r5, #1
20027d1a:	d2f8      	bcs.n	20027d0e <mpi_mul_hlp+0x10a>
20027d1c:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
20027d20:	f856 2c40 	ldr.w	r2, [r6, #-64]
20027d24:	f1ae 0e10 	sub.w	lr, lr, #16
20027d28:	fba2 2803 	umull	r2, r8, r2, r3
20027d2c:	18aa      	adds	r2, r5, r2
20027d2e:	f148 0500 	adc.w	r5, r8, #0
20027d32:	18ba      	adds	r2, r7, r2
20027d34:	f844 2c80 	str.w	r2, [r4, #-128]
20027d38:	f856 2c3c 	ldr.w	r2, [r6, #-60]
20027d3c:	f145 0500 	adc.w	r5, r5, #0
20027d40:	fba2 7203 	umull	r7, r2, r2, r3
20027d44:	19ef      	adds	r7, r5, r7
20027d46:	f854 5c7c 	ldr.w	r5, [r4, #-124]
20027d4a:	f142 0200 	adc.w	r2, r2, #0
20027d4e:	19ed      	adds	r5, r5, r7
20027d50:	f844 5c7c 	str.w	r5, [r4, #-124]
20027d54:	f856 5c38 	ldr.w	r5, [r6, #-56]
20027d58:	f142 0200 	adc.w	r2, r2, #0
20027d5c:	fba5 7503 	umull	r7, r5, r5, r3
20027d60:	19d7      	adds	r7, r2, r7
20027d62:	f854 2c78 	ldr.w	r2, [r4, #-120]
20027d66:	f145 0500 	adc.w	r5, r5, #0
20027d6a:	19d2      	adds	r2, r2, r7
20027d6c:	f844 2c78 	str.w	r2, [r4, #-120]
20027d70:	f856 2c34 	ldr.w	r2, [r6, #-52]
20027d74:	f145 0500 	adc.w	r5, r5, #0
20027d78:	fba2 7203 	umull	r7, r2, r2, r3
20027d7c:	19ef      	adds	r7, r5, r7
20027d7e:	f854 5c74 	ldr.w	r5, [r4, #-116]
20027d82:	f142 0200 	adc.w	r2, r2, #0
20027d86:	19ed      	adds	r5, r5, r7
20027d88:	f844 5c74 	str.w	r5, [r4, #-116]
20027d8c:	f856 5c30 	ldr.w	r5, [r6, #-48]
20027d90:	f142 0200 	adc.w	r2, r2, #0
20027d94:	fba5 7503 	umull	r7, r5, r5, r3
20027d98:	19d7      	adds	r7, r2, r7
20027d9a:	f854 2c70 	ldr.w	r2, [r4, #-112]
20027d9e:	f145 0500 	adc.w	r5, r5, #0
20027da2:	19d2      	adds	r2, r2, r7
20027da4:	f844 2c70 	str.w	r2, [r4, #-112]
20027da8:	f856 2c2c 	ldr.w	r2, [r6, #-44]
20027dac:	f145 0500 	adc.w	r5, r5, #0
20027db0:	fba2 7203 	umull	r7, r2, r2, r3
20027db4:	19ef      	adds	r7, r5, r7
20027db6:	f854 5c6c 	ldr.w	r5, [r4, #-108]
20027dba:	f142 0200 	adc.w	r2, r2, #0
20027dbe:	19ed      	adds	r5, r5, r7
20027dc0:	f844 5c6c 	str.w	r5, [r4, #-108]
20027dc4:	f856 5c28 	ldr.w	r5, [r6, #-40]
20027dc8:	f142 0200 	adc.w	r2, r2, #0
20027dcc:	fba5 7503 	umull	r7, r5, r5, r3
20027dd0:	19d7      	adds	r7, r2, r7
20027dd2:	f854 2c68 	ldr.w	r2, [r4, #-104]
20027dd6:	f145 0500 	adc.w	r5, r5, #0
20027dda:	19d2      	adds	r2, r2, r7
20027ddc:	f844 2c68 	str.w	r2, [r4, #-104]
20027de0:	f856 2c24 	ldr.w	r2, [r6, #-36]
20027de4:	f145 0500 	adc.w	r5, r5, #0
20027de8:	fba2 7203 	umull	r7, r2, r2, r3
20027dec:	19ef      	adds	r7, r5, r7
20027dee:	f854 5c64 	ldr.w	r5, [r4, #-100]
20027df2:	f142 0200 	adc.w	r2, r2, #0
20027df6:	19ed      	adds	r5, r5, r7
20027df8:	f844 5c64 	str.w	r5, [r4, #-100]
20027dfc:	f856 5c20 	ldr.w	r5, [r6, #-32]
20027e00:	f142 0200 	adc.w	r2, r2, #0
20027e04:	fba5 7503 	umull	r7, r5, r5, r3
20027e08:	19d7      	adds	r7, r2, r7
20027e0a:	f854 2c60 	ldr.w	r2, [r4, #-96]
20027e0e:	f145 0500 	adc.w	r5, r5, #0
20027e12:	19d2      	adds	r2, r2, r7
20027e14:	f844 2c60 	str.w	r2, [r4, #-96]
20027e18:	f856 2c1c 	ldr.w	r2, [r6, #-28]
20027e1c:	f145 0500 	adc.w	r5, r5, #0
20027e20:	fba2 7203 	umull	r7, r2, r2, r3
20027e24:	19ef      	adds	r7, r5, r7
20027e26:	f854 5c5c 	ldr.w	r5, [r4, #-92]
20027e2a:	f142 0200 	adc.w	r2, r2, #0
20027e2e:	19ed      	adds	r5, r5, r7
20027e30:	f844 5c5c 	str.w	r5, [r4, #-92]
20027e34:	f856 5c18 	ldr.w	r5, [r6, #-24]
20027e38:	f142 0200 	adc.w	r2, r2, #0
20027e3c:	fba5 7503 	umull	r7, r5, r5, r3
20027e40:	19d7      	adds	r7, r2, r7
20027e42:	f854 2c58 	ldr.w	r2, [r4, #-88]
20027e46:	f145 0500 	adc.w	r5, r5, #0
20027e4a:	19d2      	adds	r2, r2, r7
20027e4c:	f844 2c58 	str.w	r2, [r4, #-88]
20027e50:	f856 2c14 	ldr.w	r2, [r6, #-20]
20027e54:	f145 0500 	adc.w	r5, r5, #0
20027e58:	fba2 7203 	umull	r7, r2, r2, r3
20027e5c:	19ef      	adds	r7, r5, r7
20027e5e:	f854 5c54 	ldr.w	r5, [r4, #-84]
20027e62:	f142 0200 	adc.w	r2, r2, #0
20027e66:	19ed      	adds	r5, r5, r7
20027e68:	f844 5c54 	str.w	r5, [r4, #-84]
20027e6c:	f856 5c10 	ldr.w	r5, [r6, #-16]
20027e70:	f142 0200 	adc.w	r2, r2, #0
20027e74:	fba5 7503 	umull	r7, r5, r5, r3
20027e78:	19d7      	adds	r7, r2, r7
20027e7a:	f854 2c50 	ldr.w	r2, [r4, #-80]
20027e7e:	f145 0500 	adc.w	r5, r5, #0
20027e82:	19d2      	adds	r2, r2, r7
20027e84:	f844 2c50 	str.w	r2, [r4, #-80]
20027e88:	f856 2c0c 	ldr.w	r2, [r6, #-12]
20027e8c:	f145 0500 	adc.w	r5, r5, #0
20027e90:	fba2 7203 	umull	r7, r2, r2, r3
20027e94:	19ef      	adds	r7, r5, r7
20027e96:	f854 5c4c 	ldr.w	r5, [r4, #-76]
20027e9a:	f142 0200 	adc.w	r2, r2, #0
20027e9e:	19ed      	adds	r5, r5, r7
20027ea0:	f844 5c4c 	str.w	r5, [r4, #-76]
20027ea4:	f856 5c08 	ldr.w	r5, [r6, #-8]
20027ea8:	f142 0200 	adc.w	r2, r2, #0
20027eac:	fba5 5703 	umull	r5, r7, r5, r3
20027eb0:	1955      	adds	r5, r2, r5
20027eb2:	f854 2c48 	ldr.w	r2, [r4, #-72]
20027eb6:	f147 0700 	adc.w	r7, r7, #0
20027eba:	1952      	adds	r2, r2, r5
20027ebc:	f844 2c48 	str.w	r2, [r4, #-72]
20027ec0:	f856 2c04 	ldr.w	r2, [r6, #-4]
20027ec4:	f147 0700 	adc.w	r7, r7, #0
20027ec8:	fba2 2503 	umull	r2, r5, r2, r3
20027ecc:	18bf      	adds	r7, r7, r2
20027ece:	f854 2c44 	ldr.w	r2, [r4, #-68]
20027ed2:	f145 0500 	adc.w	r5, r5, #0
20027ed6:	19d2      	adds	r2, r2, r7
20027ed8:	f145 0500 	adc.w	r5, r5, #0
20027edc:	f844 2c44 	str.w	r2, [r4, #-68]
20027ee0:	e698      	b.n	20027c14 <mpi_mul_hlp+0x10>
20027ee2:	f856 2b04 	ldr.w	r2, [r6], #4
20027ee6:	fba2 2e03 	umull	r2, lr, r2, r3
20027eea:	18aa      	adds	r2, r5, r2
20027eec:	f14e 0500 	adc.w	r5, lr, #0
20027ef0:	1889      	adds	r1, r1, r2
20027ef2:	f145 0500 	adc.w	r5, r5, #0
20027ef6:	f847 1c04 	str.w	r1, [r7, #-4]
20027efa:	e702      	b.n	20027d02 <mpi_mul_hlp+0xfe>

20027efc <mbedtls_mpi_init>:
20027efc:	b120      	cbz	r0, 20027f08 <mbedtls_mpi_init+0xc>
20027efe:	2300      	movs	r3, #0
20027f00:	2201      	movs	r2, #1
20027f02:	e9c0 2300 	strd	r2, r3, [r0]
20027f06:	6083      	str	r3, [r0, #8]
20027f08:	4770      	bx	lr

20027f0a <mbedtls_mpi_free>:
20027f0a:	b510      	push	{r4, lr}
20027f0c:	4604      	mov	r4, r0
20027f0e:	b168      	cbz	r0, 20027f2c <mbedtls_mpi_free+0x22>
20027f10:	6883      	ldr	r3, [r0, #8]
20027f12:	b133      	cbz	r3, 20027f22 <mbedtls_mpi_free+0x18>
20027f14:	2100      	movs	r1, #0
20027f16:	6842      	ldr	r2, [r0, #4]
20027f18:	3a01      	subs	r2, #1
20027f1a:	d208      	bcs.n	20027f2e <mbedtls_mpi_free+0x24>
20027f1c:	68a0      	ldr	r0, [r4, #8]
20027f1e:	f002 fcbf 	bl	2002a8a0 <free>
20027f22:	2300      	movs	r3, #0
20027f24:	2201      	movs	r2, #1
20027f26:	e9c4 2300 	strd	r2, r3, [r4]
20027f2a:	60a3      	str	r3, [r4, #8]
20027f2c:	bd10      	pop	{r4, pc}
20027f2e:	f843 1b04 	str.w	r1, [r3], #4
20027f32:	e7f1      	b.n	20027f18 <mbedtls_mpi_free+0xe>

20027f34 <mbedtls_mpi_grow>:
20027f34:	f242 7310 	movw	r3, #10000	@ 0x2710
20027f38:	4299      	cmp	r1, r3
20027f3a:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
20027f3e:	4605      	mov	r5, r0
20027f40:	460f      	mov	r7, r1
20027f42:	d903      	bls.n	20027f4c <mbedtls_mpi_grow+0x18>
20027f44:	f06f 000f 	mvn.w	r0, #15
20027f48:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
20027f4c:	6846      	ldr	r6, [r0, #4]
20027f4e:	428e      	cmp	r6, r1
20027f50:	d301      	bcc.n	20027f56 <mbedtls_mpi_grow+0x22>
20027f52:	2000      	movs	r0, #0
20027f54:	e7f8      	b.n	20027f48 <mbedtls_mpi_grow+0x14>
20027f56:	2104      	movs	r1, #4
20027f58:	4638      	mov	r0, r7
20027f5a:	f002 fc85 	bl	2002a868 <calloc>
20027f5e:	4680      	mov	r8, r0
20027f60:	2800      	cmp	r0, #0
20027f62:	d0ef      	beq.n	20027f44 <mbedtls_mpi_grow+0x10>
20027f64:	68ac      	ldr	r4, [r5, #8]
20027f66:	b15c      	cbz	r4, 20027f80 <mbedtls_mpi_grow+0x4c>
20027f68:	00b6      	lsls	r6, r6, #2
20027f6a:	4632      	mov	r2, r6
20027f6c:	4621      	mov	r1, r4
20027f6e:	f002 fd77 	bl	2002aa60 <memcpy>
20027f72:	2300      	movs	r3, #0
20027f74:	4426      	add	r6, r4
20027f76:	42b4      	cmp	r4, r6
20027f78:	d105      	bne.n	20027f86 <mbedtls_mpi_grow+0x52>
20027f7a:	68a8      	ldr	r0, [r5, #8]
20027f7c:	f002 fc90 	bl	2002a8a0 <free>
20027f80:	e9c5 7801 	strd	r7, r8, [r5, #4]
20027f84:	e7e5      	b.n	20027f52 <mbedtls_mpi_grow+0x1e>
20027f86:	f844 3b04 	str.w	r3, [r4], #4
20027f8a:	e7f4      	b.n	20027f76 <mbedtls_mpi_grow+0x42>

20027f8c <mbedtls_mpi_copy>:
20027f8c:	4288      	cmp	r0, r1
20027f8e:	b570      	push	{r4, r5, r6, lr}
20027f90:	4605      	mov	r5, r0
20027f92:	460e      	mov	r6, r1
20027f94:	d003      	beq.n	20027f9e <mbedtls_mpi_copy+0x12>
20027f96:	688b      	ldr	r3, [r1, #8]
20027f98:	b91b      	cbnz	r3, 20027fa2 <mbedtls_mpi_copy+0x16>
20027f9a:	f7ff ffb6 	bl	20027f0a <mbedtls_mpi_free>
20027f9e:	2000      	movs	r0, #0
20027fa0:	bd70      	pop	{r4, r5, r6, pc}
20027fa2:	684a      	ldr	r2, [r1, #4]
20027fa4:	3a01      	subs	r2, #1
20027fa6:	b11a      	cbz	r2, 20027fb0 <mbedtls_mpi_copy+0x24>
20027fa8:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
20027fac:	2900      	cmp	r1, #0
20027fae:	d0f9      	beq.n	20027fa4 <mbedtls_mpi_copy+0x18>
20027fb0:	6833      	ldr	r3, [r6, #0]
20027fb2:	1c54      	adds	r4, r2, #1
20027fb4:	4621      	mov	r1, r4
20027fb6:	4628      	mov	r0, r5
20027fb8:	602b      	str	r3, [r5, #0]
20027fba:	f7ff ffbb 	bl	20027f34 <mbedtls_mpi_grow>
20027fbe:	4601      	mov	r1, r0
20027fc0:	b950      	cbnz	r0, 20027fd8 <mbedtls_mpi_copy+0x4c>
20027fc2:	686a      	ldr	r2, [r5, #4]
20027fc4:	68a8      	ldr	r0, [r5, #8]
20027fc6:	0092      	lsls	r2, r2, #2
20027fc8:	f002 fd30 	bl	2002aa2c <memset>
20027fcc:	68b1      	ldr	r1, [r6, #8]
20027fce:	68a8      	ldr	r0, [r5, #8]
20027fd0:	00a2      	lsls	r2, r4, #2
20027fd2:	f002 fd45 	bl	2002aa60 <memcpy>
20027fd6:	e7e2      	b.n	20027f9e <mbedtls_mpi_copy+0x12>
20027fd8:	f06f 000f 	mvn.w	r0, #15
20027fdc:	e7e0      	b.n	20027fa0 <mbedtls_mpi_copy+0x14>

20027fde <mbedtls_mpi_lset>:
20027fde:	b570      	push	{r4, r5, r6, lr}
20027fe0:	460e      	mov	r6, r1
20027fe2:	2101      	movs	r1, #1
20027fe4:	4604      	mov	r4, r0
20027fe6:	f7ff ffa5 	bl	20027f34 <mbedtls_mpi_grow>
20027fea:	4605      	mov	r5, r0
20027fec:	b988      	cbnz	r0, 20028012 <mbedtls_mpi_lset+0x34>
20027fee:	6862      	ldr	r2, [r4, #4]
20027ff0:	4601      	mov	r1, r0
20027ff2:	0092      	lsls	r2, r2, #2
20027ff4:	68a0      	ldr	r0, [r4, #8]
20027ff6:	f002 fd19 	bl	2002aa2c <memset>
20027ffa:	68a3      	ldr	r3, [r4, #8]
20027ffc:	ea86 72e6 	eor.w	r2, r6, r6, asr #31
20028000:	2e00      	cmp	r6, #0
20028002:	eba2 72e6 	sub.w	r2, r2, r6, asr #31
20028006:	601a      	str	r2, [r3, #0]
20028008:	bfac      	ite	ge
2002800a:	2301      	movge	r3, #1
2002800c:	f04f 33ff 	movlt.w	r3, #4294967295
20028010:	6023      	str	r3, [r4, #0]
20028012:	4628      	mov	r0, r5
20028014:	bd70      	pop	{r4, r5, r6, pc}

20028016 <mbedtls_mpi_lsb>:
20028016:	2300      	movs	r3, #0
20028018:	4619      	mov	r1, r3
2002801a:	b570      	push	{r4, r5, r6, lr}
2002801c:	6844      	ldr	r4, [r0, #4]
2002801e:	428c      	cmp	r4, r1
20028020:	d101      	bne.n	20028026 <mbedtls_mpi_lsb+0x10>
20028022:	2000      	movs	r0, #0
20028024:	e008      	b.n	20028038 <mbedtls_mpi_lsb+0x22>
20028026:	6882      	ldr	r2, [r0, #8]
20028028:	f852 5021 	ldr.w	r5, [r2, r1, lsl #2]
2002802c:	2200      	movs	r2, #0
2002802e:	fa25 f602 	lsr.w	r6, r5, r2
20028032:	07f6      	lsls	r6, r6, #31
20028034:	d501      	bpl.n	2002803a <mbedtls_mpi_lsb+0x24>
20028036:	1898      	adds	r0, r3, r2
20028038:	bd70      	pop	{r4, r5, r6, pc}
2002803a:	3201      	adds	r2, #1
2002803c:	2a20      	cmp	r2, #32
2002803e:	d1f6      	bne.n	2002802e <mbedtls_mpi_lsb+0x18>
20028040:	3320      	adds	r3, #32
20028042:	3101      	adds	r1, #1
20028044:	e7eb      	b.n	2002801e <mbedtls_mpi_lsb+0x8>

20028046 <mbedtls_mpi_bitlen>:
20028046:	4602      	mov	r2, r0
20028048:	6840      	ldr	r0, [r0, #4]
2002804a:	b188      	cbz	r0, 20028070 <mbedtls_mpi_bitlen+0x2a>
2002804c:	6891      	ldr	r1, [r2, #8]
2002804e:	1e43      	subs	r3, r0, #1
20028050:	b97b      	cbnz	r3, 20028072 <mbedtls_mpi_bitlen+0x2c>
20028052:	461a      	mov	r2, r3
20028054:	5889      	ldr	r1, [r1, r2]
20028056:	2000      	movs	r0, #0
20028058:	f04f 4200 	mov.w	r2, #2147483648	@ 0x80000000
2002805c:	4211      	tst	r1, r2
2002805e:	d104      	bne.n	2002806a <mbedtls_mpi_bitlen+0x24>
20028060:	3001      	adds	r0, #1
20028062:	2820      	cmp	r0, #32
20028064:	ea4f 0252 	mov.w	r2, r2, lsr #1
20028068:	d1f8      	bne.n	2002805c <mbedtls_mpi_bitlen+0x16>
2002806a:	3301      	adds	r3, #1
2002806c:	ebc0 1043 	rsb	r0, r0, r3, lsl #5
20028070:	4770      	bx	lr
20028072:	f851 0023 	ldr.w	r0, [r1, r3, lsl #2]
20028076:	009a      	lsls	r2, r3, #2
20028078:	2800      	cmp	r0, #0
2002807a:	d1eb      	bne.n	20028054 <mbedtls_mpi_bitlen+0xe>
2002807c:	3b01      	subs	r3, #1
2002807e:	e7e7      	b.n	20028050 <mbedtls_mpi_bitlen+0xa>

20028080 <mbedtls_mpi_size>:
20028080:	b508      	push	{r3, lr}
20028082:	f7ff ffe0 	bl	20028046 <mbedtls_mpi_bitlen>
20028086:	3007      	adds	r0, #7
20028088:	08c0      	lsrs	r0, r0, #3
2002808a:	bd08      	pop	{r3, pc}

2002808c <mbedtls_mpi_read_binary>:
2002808c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
2002808e:	4607      	mov	r7, r0
20028090:	460c      	mov	r4, r1
20028092:	4616      	mov	r6, r2
20028094:	2500      	movs	r5, #0
20028096:	42b5      	cmp	r5, r6
20028098:	d001      	beq.n	2002809e <mbedtls_mpi_read_binary+0x12>
2002809a:	5d63      	ldrb	r3, [r4, r5]
2002809c:	b173      	cbz	r3, 200280bc <mbedtls_mpi_read_binary+0x30>
2002809e:	1b71      	subs	r1, r6, r5
200280a0:	f011 0303 	ands.w	r3, r1, #3
200280a4:	bf18      	it	ne
200280a6:	2301      	movne	r3, #1
200280a8:	4638      	mov	r0, r7
200280aa:	eb03 0191 	add.w	r1, r3, r1, lsr #2
200280ae:	f7ff ff41 	bl	20027f34 <mbedtls_mpi_grow>
200280b2:	4601      	mov	r1, r0
200280b4:	b120      	cbz	r0, 200280c0 <mbedtls_mpi_read_binary+0x34>
200280b6:	f06f 000f 	mvn.w	r0, #15
200280ba:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
200280bc:	3501      	adds	r5, #1
200280be:	e7ea      	b.n	20028096 <mbedtls_mpi_read_binary+0xa>
200280c0:	4638      	mov	r0, r7
200280c2:	f7ff ff8c 	bl	20027fde <mbedtls_mpi_lset>
200280c6:	2800      	cmp	r0, #0
200280c8:	d1f5      	bne.n	200280b6 <mbedtls_mpi_read_binary+0x2a>
200280ca:	4603      	mov	r3, r0
200280cc:	4434      	add	r4, r6
200280ce:	1af2      	subs	r2, r6, r3
200280d0:	4295      	cmp	r5, r2
200280d2:	d2f2      	bcs.n	200280ba <mbedtls_mpi_read_binary+0x2e>
200280d4:	f8d7 e008 	ldr.w	lr, [r7, #8]
200280d8:	f814 1d01 	ldrb.w	r1, [r4, #-1]!
200280dc:	00da      	lsls	r2, r3, #3
200280de:	f023 0c03 	bic.w	ip, r3, #3
200280e2:	f002 0218 	and.w	r2, r2, #24
200280e6:	4091      	lsls	r1, r2
200280e8:	f85e 200c 	ldr.w	r2, [lr, ip]
200280ec:	3301      	adds	r3, #1
200280ee:	430a      	orrs	r2, r1
200280f0:	f84e 200c 	str.w	r2, [lr, ip]
200280f4:	e7eb      	b.n	200280ce <mbedtls_mpi_read_binary+0x42>

200280f6 <mbedtls_mpi_write_binary>:
200280f6:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
200280f8:	4615      	mov	r5, r2
200280fa:	4607      	mov	r7, r0
200280fc:	460c      	mov	r4, r1
200280fe:	f7ff ffbf 	bl	20028080 <mbedtls_mpi_size>
20028102:	42a8      	cmp	r0, r5
20028104:	4606      	mov	r6, r0
20028106:	d816      	bhi.n	20028136 <mbedtls_mpi_write_binary+0x40>
20028108:	4620      	mov	r0, r4
2002810a:	462a      	mov	r2, r5
2002810c:	2100      	movs	r1, #0
2002810e:	f002 fc8d 	bl	2002aa2c <memset>
20028112:	2300      	movs	r3, #0
20028114:	442c      	add	r4, r5
20028116:	42b3      	cmp	r3, r6
20028118:	d101      	bne.n	2002811e <mbedtls_mpi_write_binary+0x28>
2002811a:	2000      	movs	r0, #0
2002811c:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
2002811e:	68b8      	ldr	r0, [r7, #8]
20028120:	f023 0203 	bic.w	r2, r3, #3
20028124:	5882      	ldr	r2, [r0, r2]
20028126:	00d9      	lsls	r1, r3, #3
20028128:	f001 0118 	and.w	r1, r1, #24
2002812c:	40ca      	lsrs	r2, r1
2002812e:	f804 2d01 	strb.w	r2, [r4, #-1]!
20028132:	3301      	adds	r3, #1
20028134:	e7ef      	b.n	20028116 <mbedtls_mpi_write_binary+0x20>
20028136:	f06f 0007 	mvn.w	r0, #7
2002813a:	e7ef      	b.n	2002811c <mbedtls_mpi_write_binary+0x26>

2002813c <mbedtls_mpi_shift_l>:
2002813c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
2002813e:	4605      	mov	r5, r0
20028140:	460e      	mov	r6, r1
20028142:	094c      	lsrs	r4, r1, #5
20028144:	f001 071f 	and.w	r7, r1, #31
20028148:	f7ff ff7d 	bl	20028046 <mbedtls_mpi_bitlen>
2002814c:	686b      	ldr	r3, [r5, #4]
2002814e:	4430      	add	r0, r6
20028150:	ebb0 1f43 	cmp.w	r0, r3, lsl #5
20028154:	d805      	bhi.n	20028162 <mbedtls_mpi_shift_l+0x26>
20028156:	2e1f      	cmp	r6, #31
20028158:	d811      	bhi.n	2002817e <mbedtls_mpi_shift_l+0x42>
2002815a:	2f00      	cmp	r7, #0
2002815c:	d143      	bne.n	200281e6 <mbedtls_mpi_shift_l+0xaa>
2002815e:	2000      	movs	r0, #0
20028160:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
20028162:	f010 011f 	ands.w	r1, r0, #31
20028166:	bf18      	it	ne
20028168:	2101      	movne	r1, #1
2002816a:	eb01 1150 	add.w	r1, r1, r0, lsr #5
2002816e:	4628      	mov	r0, r5
20028170:	f7ff fee0 	bl	20027f34 <mbedtls_mpi_grow>
20028174:	2800      	cmp	r0, #0
20028176:	d0ee      	beq.n	20028156 <mbedtls_mpi_shift_l+0x1a>
20028178:	f06f 000f 	mvn.w	r0, #15
2002817c:	e7f0      	b.n	20028160 <mbedtls_mpi_shift_l+0x24>
2002817e:	f06f 0003 	mvn.w	r0, #3
20028182:	686a      	ldr	r2, [r5, #4]
20028184:	4360      	muls	r0, r4
20028186:	4611      	mov	r1, r2
20028188:	0093      	lsls	r3, r2, #2
2002818a:	42a1      	cmp	r1, r4
2002818c:	f1a3 0304 	sub.w	r3, r3, #4
20028190:	d80c      	bhi.n	200281ac <mbedtls_mpi_shift_l+0x70>
20028192:	1aa3      	subs	r3, r4, r2
20028194:	4294      	cmp	r4, r2
20028196:	bf88      	it	hi
20028198:	2300      	movhi	r3, #0
2002819a:	4413      	add	r3, r2
2002819c:	2200      	movs	r2, #0
2002819e:	009b      	lsls	r3, r3, #2
200281a0:	3b04      	subs	r3, #4
200281a2:	1d19      	adds	r1, r3, #4
200281a4:	d0d9      	beq.n	2002815a <mbedtls_mpi_shift_l+0x1e>
200281a6:	68a9      	ldr	r1, [r5, #8]
200281a8:	50ca      	str	r2, [r1, r3]
200281aa:	e7f9      	b.n	200281a0 <mbedtls_mpi_shift_l+0x64>
200281ac:	68ae      	ldr	r6, [r5, #8]
200281ae:	3901      	subs	r1, #1
200281b0:	eb06 0c03 	add.w	ip, r6, r3
200281b4:	f85c c000 	ldr.w	ip, [ip, r0]
200281b8:	f846 c003 	str.w	ip, [r6, r3]
200281bc:	e7e5      	b.n	2002818a <mbedtls_mpi_shift_l+0x4e>
200281be:	68ab      	ldr	r3, [r5, #8]
200281c0:	f853 1024 	ldr.w	r1, [r3, r4, lsl #2]
200281c4:	fa01 f007 	lsl.w	r0, r1, r7
200281c8:	f843 0024 	str.w	r0, [r3, r4, lsl #2]
200281cc:	68a8      	ldr	r0, [r5, #8]
200281ce:	f850 3024 	ldr.w	r3, [r0, r4, lsl #2]
200281d2:	4313      	orrs	r3, r2
200281d4:	f840 3024 	str.w	r3, [r0, r4, lsl #2]
200281d8:	fa21 f206 	lsr.w	r2, r1, r6
200281dc:	3401      	adds	r4, #1
200281de:	686b      	ldr	r3, [r5, #4]
200281e0:	42a3      	cmp	r3, r4
200281e2:	d8ec      	bhi.n	200281be <mbedtls_mpi_shift_l+0x82>
200281e4:	e7bb      	b.n	2002815e <mbedtls_mpi_shift_l+0x22>
200281e6:	2200      	movs	r2, #0
200281e8:	f1c7 0620 	rsb	r6, r7, #32
200281ec:	e7f7      	b.n	200281de <mbedtls_mpi_shift_l+0xa2>

200281ee <mbedtls_mpi_shift_r>:
200281ee:	b4f0      	push	{r4, r5, r6, r7}
200281f0:	6843      	ldr	r3, [r0, #4]
200281f2:	094c      	lsrs	r4, r1, #5
200281f4:	42a3      	cmp	r3, r4
200281f6:	f001 021f 	and.w	r2, r1, #31
200281fa:	d301      	bcc.n	20028200 <mbedtls_mpi_shift_r+0x12>
200281fc:	d104      	bne.n	20028208 <mbedtls_mpi_shift_r+0x1a>
200281fe:	b392      	cbz	r2, 20028266 <mbedtls_mpi_shift_r+0x78>
20028200:	bcf0      	pop	{r4, r5, r6, r7}
20028202:	2100      	movs	r1, #0
20028204:	f7ff beeb 	b.w	20027fde <mbedtls_mpi_lset>
20028208:	291f      	cmp	r1, #31
2002820a:	d82e      	bhi.n	2002826a <mbedtls_mpi_shift_r+0x7c>
2002820c:	b9aa      	cbnz	r2, 2002823a <mbedtls_mpi_shift_r+0x4c>
2002820e:	bcf0      	pop	{r4, r5, r6, r7}
20028210:	2000      	movs	r0, #0
20028212:	4770      	bx	lr
20028214:	6885      	ldr	r5, [r0, #8]
20028216:	586e      	ldr	r6, [r5, r1]
20028218:	3104      	adds	r1, #4
2002821a:	f845 6023 	str.w	r6, [r5, r3, lsl #2]
2002821e:	3301      	adds	r3, #1
20028220:	6845      	ldr	r5, [r0, #4]
20028222:	1b2d      	subs	r5, r5, r4
20028224:	429d      	cmp	r5, r3
20028226:	d8f5      	bhi.n	20028214 <mbedtls_mpi_shift_r+0x26>
20028228:	2400      	movs	r4, #0
2002822a:	6841      	ldr	r1, [r0, #4]
2002822c:	4299      	cmp	r1, r3
2002822e:	d9ed      	bls.n	2002820c <mbedtls_mpi_shift_r+0x1e>
20028230:	6881      	ldr	r1, [r0, #8]
20028232:	f841 4023 	str.w	r4, [r1, r3, lsl #2]
20028236:	3301      	adds	r3, #1
20028238:	e7f7      	b.n	2002822a <mbedtls_mpi_shift_r+0x3c>
2002823a:	2400      	movs	r4, #0
2002823c:	6843      	ldr	r3, [r0, #4]
2002823e:	f1c2 0720 	rsb	r7, r2, #32
20028242:	3b01      	subs	r3, #1
20028244:	d3e3      	bcc.n	2002820e <mbedtls_mpi_shift_r+0x20>
20028246:	6881      	ldr	r1, [r0, #8]
20028248:	f851 5023 	ldr.w	r5, [r1, r3, lsl #2]
2002824c:	fa25 f602 	lsr.w	r6, r5, r2
20028250:	f841 6023 	str.w	r6, [r1, r3, lsl #2]
20028254:	6886      	ldr	r6, [r0, #8]
20028256:	f856 1023 	ldr.w	r1, [r6, r3, lsl #2]
2002825a:	4321      	orrs	r1, r4
2002825c:	f846 1023 	str.w	r1, [r6, r3, lsl #2]
20028260:	fa05 f407 	lsl.w	r4, r5, r7
20028264:	e7ed      	b.n	20028242 <mbedtls_mpi_shift_r+0x54>
20028266:	291f      	cmp	r1, #31
20028268:	d9d1      	bls.n	2002820e <mbedtls_mpi_shift_r+0x20>
2002826a:	2300      	movs	r3, #0
2002826c:	00a1      	lsls	r1, r4, #2
2002826e:	e7d7      	b.n	20028220 <mbedtls_mpi_shift_r+0x32>

20028270 <mbedtls_mpi_cmp_abs>:
20028270:	b530      	push	{r4, r5, lr}
20028272:	6842      	ldr	r2, [r0, #4]
20028274:	b922      	cbnz	r2, 20028280 <mbedtls_mpi_cmp_abs+0x10>
20028276:	684b      	ldr	r3, [r1, #4]
20028278:	b95b      	cbnz	r3, 20028292 <mbedtls_mpi_cmp_abs+0x22>
2002827a:	b19a      	cbz	r2, 200282a4 <mbedtls_mpi_cmp_abs+0x34>
2002827c:	2001      	movs	r0, #1
2002827e:	e015      	b.n	200282ac <mbedtls_mpi_cmp_abs+0x3c>
20028280:	6883      	ldr	r3, [r0, #8]
20028282:	eb03 0382 	add.w	r3, r3, r2, lsl #2
20028286:	f853 3c04 	ldr.w	r3, [r3, #-4]
2002828a:	2b00      	cmp	r3, #0
2002828c:	d1f3      	bne.n	20028276 <mbedtls_mpi_cmp_abs+0x6>
2002828e:	3a01      	subs	r2, #1
20028290:	e7f0      	b.n	20028274 <mbedtls_mpi_cmp_abs+0x4>
20028292:	688c      	ldr	r4, [r1, #8]
20028294:	eb04 0583 	add.w	r5, r4, r3, lsl #2
20028298:	f855 5c04 	ldr.w	r5, [r5, #-4]
2002829c:	b90d      	cbnz	r5, 200282a2 <mbedtls_mpi_cmp_abs+0x32>
2002829e:	3b01      	subs	r3, #1
200282a0:	e7ea      	b.n	20028278 <mbedtls_mpi_cmp_abs+0x8>
200282a2:	b922      	cbnz	r2, 200282ae <mbedtls_mpi_cmp_abs+0x3e>
200282a4:	1e18      	subs	r0, r3, #0
200282a6:	bf18      	it	ne
200282a8:	2001      	movne	r0, #1
200282aa:	4240      	negs	r0, r0
200282ac:	bd30      	pop	{r4, r5, pc}
200282ae:	4293      	cmp	r3, r2
200282b0:	d3e4      	bcc.n	2002827c <mbedtls_mpi_cmp_abs+0xc>
200282b2:	d80e      	bhi.n	200282d2 <mbedtls_mpi_cmp_abs+0x62>
200282b4:	3a01      	subs	r2, #1
200282b6:	6883      	ldr	r3, [r0, #8]
200282b8:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
200282bc:	f854 3022 	ldr.w	r3, [r4, r2, lsl #2]
200282c0:	4299      	cmp	r1, r3
200282c2:	d8db      	bhi.n	2002827c <mbedtls_mpi_cmp_abs+0xc>
200282c4:	f102 32ff 	add.w	r2, r2, #4294967295
200282c8:	d303      	bcc.n	200282d2 <mbedtls_mpi_cmp_abs+0x62>
200282ca:	1c53      	adds	r3, r2, #1
200282cc:	d1f3      	bne.n	200282b6 <mbedtls_mpi_cmp_abs+0x46>
200282ce:	2000      	movs	r0, #0
200282d0:	e7ec      	b.n	200282ac <mbedtls_mpi_cmp_abs+0x3c>
200282d2:	f04f 30ff 	mov.w	r0, #4294967295
200282d6:	e7e9      	b.n	200282ac <mbedtls_mpi_cmp_abs+0x3c>

200282d8 <mpi_montmul>:
200282d8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
200282dc:	4615      	mov	r5, r2
200282de:	b087      	sub	sp, #28
200282e0:	9305      	str	r3, [sp, #20]
200282e2:	9b10      	ldr	r3, [sp, #64]	@ 0x40
200282e4:	4606      	mov	r6, r0
200282e6:	685a      	ldr	r2, [r3, #4]
200282e8:	686b      	ldr	r3, [r5, #4]
200282ea:	4689      	mov	r9, r1
200282ec:	3301      	adds	r3, #1
200282ee:	429a      	cmp	r2, r3
200282f0:	d359      	bcc.n	200283a6 <mpi_montmul+0xce>
200282f2:	9b10      	ldr	r3, [sp, #64]	@ 0x40
200282f4:	6898      	ldr	r0, [r3, #8]
200282f6:	2800      	cmp	r0, #0
200282f8:	d055      	beq.n	200283a6 <mpi_montmul+0xce>
200282fa:	0092      	lsls	r2, r2, #2
200282fc:	2100      	movs	r1, #0
200282fe:	f002 fb95 	bl	2002aa2c <memset>
20028302:	9b10      	ldr	r3, [sp, #64]	@ 0x40
20028304:	f8d5 8004 	ldr.w	r8, [r5, #4]
20028308:	f8d3 a008 	ldr.w	sl, [r3, #8]
2002830c:	f8d9 3004 	ldr.w	r3, [r9, #4]
20028310:	46d3      	mov	fp, sl
20028312:	4543      	cmp	r3, r8
20028314:	bf28      	it	cs
20028316:	4643      	movcs	r3, r8
20028318:	2400      	movs	r4, #0
2002831a:	9304      	str	r3, [sp, #16]
2002831c:	f108 0301 	add.w	r3, r8, #1
20028320:	009a      	lsls	r2, r3, #2
20028322:	eb0a 0383 	add.w	r3, sl, r3, lsl #2
20028326:	9202      	str	r2, [sp, #8]
20028328:	9303      	str	r3, [sp, #12]
2002832a:	4544      	cmp	r4, r8
2002832c:	68b0      	ldr	r0, [r6, #8]
2002832e:	d118      	bne.n	20028362 <mpi_montmul+0x8a>
20028330:	9b02      	ldr	r3, [sp, #8]
20028332:	1f19      	subs	r1, r3, #4
20028334:	461a      	mov	r2, r3
20028336:	4451      	add	r1, sl
20028338:	f002 fb92 	bl	2002aa60 <memcpy>
2002833c:	4629      	mov	r1, r5
2002833e:	4630      	mov	r0, r6
20028340:	f7ff ff96 	bl	20028270 <mbedtls_mpi_cmp_abs>
20028344:	3001      	adds	r0, #1
20028346:	68b1      	ldr	r1, [r6, #8]
20028348:	bf0c      	ite	eq
2002834a:	9b10      	ldreq	r3, [sp, #64]	@ 0x40
2002834c:	460a      	movne	r2, r1
2002834e:	4620      	mov	r0, r4
20028350:	bf14      	ite	ne
20028352:	68a9      	ldrne	r1, [r5, #8]
20028354:	689a      	ldreq	r2, [r3, #8]
20028356:	f7ff fc2c 	bl	20027bb2 <mpi_sub_hlp>
2002835a:	2000      	movs	r0, #0
2002835c:	b007      	add	sp, #28
2002835e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
20028362:	f850 3024 	ldr.w	r3, [r0, r4, lsl #2]
20028366:	f8d9 1008 	ldr.w	r1, [r9, #8]
2002836a:	9301      	str	r3, [sp, #4]
2002836c:	9a01      	ldr	r2, [sp, #4]
2002836e:	680b      	ldr	r3, [r1, #0]
20028370:	f8db 7000 	ldr.w	r7, [fp]
20028374:	9804      	ldr	r0, [sp, #16]
20028376:	fb03 7702 	mla	r7, r3, r2, r7
2002837a:	9b05      	ldr	r3, [sp, #20]
2002837c:	3401      	adds	r4, #1
2002837e:	435f      	muls	r7, r3
20028380:	4613      	mov	r3, r2
20028382:	465a      	mov	r2, fp
20028384:	f7ff fc3e 	bl	20027c04 <mpi_mul_hlp>
20028388:	465a      	mov	r2, fp
2002838a:	463b      	mov	r3, r7
2002838c:	4640      	mov	r0, r8
2002838e:	68a9      	ldr	r1, [r5, #8]
20028390:	f7ff fc38 	bl	20027c04 <mpi_mul_hlp>
20028394:	2200      	movs	r2, #0
20028396:	9b01      	ldr	r3, [sp, #4]
20028398:	f84b 3b04 	str.w	r3, [fp], #4
2002839c:	9b03      	ldr	r3, [sp, #12]
2002839e:	f843 2f04 	str.w	r2, [r3, #4]!
200283a2:	9303      	str	r3, [sp, #12]
200283a4:	e7c1      	b.n	2002832a <mpi_montmul+0x52>
200283a6:	f06f 0003 	mvn.w	r0, #3
200283aa:	e7d7      	b.n	2002835c <mpi_montmul+0x84>

200283ac <mbedtls_mpi_cmp_mpi>:
200283ac:	4602      	mov	r2, r0
200283ae:	b530      	push	{r4, r5, lr}
200283b0:	6843      	ldr	r3, [r0, #4]
200283b2:	b923      	cbnz	r3, 200283be <mbedtls_mpi_cmp_mpi+0x12>
200283b4:	6848      	ldr	r0, [r1, #4]
200283b6:	b958      	cbnz	r0, 200283d0 <mbedtls_mpi_cmp_mpi+0x24>
200283b8:	2b00      	cmp	r3, #0
200283ba:	d136      	bne.n	2002842a <mbedtls_mpi_cmp_mpi+0x7e>
200283bc:	e02f      	b.n	2002841e <mbedtls_mpi_cmp_mpi+0x72>
200283be:	6890      	ldr	r0, [r2, #8]
200283c0:	eb00 0083 	add.w	r0, r0, r3, lsl #2
200283c4:	f850 0c04 	ldr.w	r0, [r0, #-4]
200283c8:	2800      	cmp	r0, #0
200283ca:	d1f3      	bne.n	200283b4 <mbedtls_mpi_cmp_mpi+0x8>
200283cc:	3b01      	subs	r3, #1
200283ce:	e7f0      	b.n	200283b2 <mbedtls_mpi_cmp_mpi+0x6>
200283d0:	688c      	ldr	r4, [r1, #8]
200283d2:	eb04 0580 	add.w	r5, r4, r0, lsl #2
200283d6:	f855 5c04 	ldr.w	r5, [r5, #-4]
200283da:	bb15      	cbnz	r5, 20028422 <mbedtls_mpi_cmp_mpi+0x76>
200283dc:	3801      	subs	r0, #1
200283de:	e7ea      	b.n	200283b6 <mbedtls_mpi_cmp_mpi+0xa>
200283e0:	680d      	ldr	r5, [r1, #0]
200283e2:	d202      	bcs.n	200283ea <mbedtls_mpi_cmp_mpi+0x3e>
200283e4:	6808      	ldr	r0, [r1, #0]
200283e6:	4240      	negs	r0, r0
200283e8:	e020      	b.n	2002842c <mbedtls_mpi_cmp_mpi+0x80>
200283ea:	6810      	ldr	r0, [r2, #0]
200283ec:	2800      	cmp	r0, #0
200283ee:	dd03      	ble.n	200283f8 <mbedtls_mpi_cmp_mpi+0x4c>
200283f0:	2d00      	cmp	r5, #0
200283f2:	da07      	bge.n	20028404 <mbedtls_mpi_cmp_mpi+0x58>
200283f4:	2001      	movs	r0, #1
200283f6:	e019      	b.n	2002842c <mbedtls_mpi_cmp_mpi+0x80>
200283f8:	2d00      	cmp	r5, #0
200283fa:	dd03      	ble.n	20028404 <mbedtls_mpi_cmp_mpi+0x58>
200283fc:	b110      	cbz	r0, 20028404 <mbedtls_mpi_cmp_mpi+0x58>
200283fe:	f04f 30ff 	mov.w	r0, #4294967295
20028402:	e013      	b.n	2002842c <mbedtls_mpi_cmp_mpi+0x80>
20028404:	3b01      	subs	r3, #1
20028406:	6891      	ldr	r1, [r2, #8]
20028408:	f851 5023 	ldr.w	r5, [r1, r3, lsl #2]
2002840c:	f854 1023 	ldr.w	r1, [r4, r3, lsl #2]
20028410:	428d      	cmp	r5, r1
20028412:	d80b      	bhi.n	2002842c <mbedtls_mpi_cmp_mpi+0x80>
20028414:	f103 33ff 	add.w	r3, r3, #4294967295
20028418:	d3e5      	bcc.n	200283e6 <mbedtls_mpi_cmp_mpi+0x3a>
2002841a:	1c59      	adds	r1, r3, #1
2002841c:	d1f3      	bne.n	20028406 <mbedtls_mpi_cmp_mpi+0x5a>
2002841e:	2000      	movs	r0, #0
20028420:	e004      	b.n	2002842c <mbedtls_mpi_cmp_mpi+0x80>
20028422:	2b00      	cmp	r3, #0
20028424:	d0de      	beq.n	200283e4 <mbedtls_mpi_cmp_mpi+0x38>
20028426:	4283      	cmp	r3, r0
20028428:	d9da      	bls.n	200283e0 <mbedtls_mpi_cmp_mpi+0x34>
2002842a:	6810      	ldr	r0, [r2, #0]
2002842c:	bd30      	pop	{r4, r5, pc}

2002842e <mbedtls_mpi_cmp_int>:
2002842e:	b51f      	push	{r0, r1, r2, r3, r4, lr}
20028430:	ea81 73e1 	eor.w	r3, r1, r1, asr #31
20028434:	eba3 73e1 	sub.w	r3, r3, r1, asr #31
20028438:	2900      	cmp	r1, #0
2002843a:	9300      	str	r3, [sp, #0]
2002843c:	bfac      	ite	ge
2002843e:	2301      	movge	r3, #1
20028440:	f04f 33ff 	movlt.w	r3, #4294967295
20028444:	9301      	str	r3, [sp, #4]
20028446:	2301      	movs	r3, #1
20028448:	a901      	add	r1, sp, #4
2002844a:	9302      	str	r3, [sp, #8]
2002844c:	f8cd d00c 	str.w	sp, [sp, #12]
20028450:	f7ff ffac 	bl	200283ac <mbedtls_mpi_cmp_mpi>
20028454:	b005      	add	sp, #20
20028456:	f85d fb04 	ldr.w	pc, [sp], #4

2002845a <mbedtls_mpi_add_abs>:
2002845a:	4290      	cmp	r0, r2
2002845c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
20028460:	4606      	mov	r6, r0
20028462:	460c      	mov	r4, r1
20028464:	4615      	mov	r5, r2
20028466:	d002      	beq.n	2002846e <mbedtls_mpi_add_abs+0x14>
20028468:	4288      	cmp	r0, r1
2002846a:	d12c      	bne.n	200284c6 <mbedtls_mpi_add_abs+0x6c>
2002846c:	462c      	mov	r4, r5
2002846e:	2301      	movs	r3, #1
20028470:	6033      	str	r3, [r6, #0]
20028472:	6865      	ldr	r5, [r4, #4]
20028474:	bb85      	cbnz	r5, 200284d8 <mbedtls_mpi_add_abs+0x7e>
20028476:	4629      	mov	r1, r5
20028478:	4630      	mov	r0, r6
2002847a:	f7ff fd5b 	bl	20027f34 <mbedtls_mpi_grow>
2002847e:	4607      	mov	r7, r0
20028480:	bb28      	cbnz	r0, 200284ce <mbedtls_mpi_add_abs+0x74>
20028482:	68b3      	ldr	r3, [r6, #8]
20028484:	68a1      	ldr	r1, [r4, #8]
20028486:	469c      	mov	ip, r3
20028488:	4604      	mov	r4, r0
2002848a:	42a8      	cmp	r0, r5
2002848c:	d12d      	bne.n	200284ea <mbedtls_mpi_add_abs+0x90>
2002848e:	eb03 0385 	add.w	r3, r3, r5, lsl #2
20028492:	b1f4      	cbz	r4, 200284d2 <mbedtls_mpi_add_abs+0x78>
20028494:	6872      	ldr	r2, [r6, #4]
20028496:	f105 0801 	add.w	r8, r5, #1
2002849a:	42aa      	cmp	r2, r5
2002849c:	d807      	bhi.n	200284ae <mbedtls_mpi_add_abs+0x54>
2002849e:	4641      	mov	r1, r8
200284a0:	4630      	mov	r0, r6
200284a2:	f7ff fd47 	bl	20027f34 <mbedtls_mpi_grow>
200284a6:	b990      	cbnz	r0, 200284ce <mbedtls_mpi_add_abs+0x74>
200284a8:	68b3      	ldr	r3, [r6, #8]
200284aa:	eb03 0385 	add.w	r3, r3, r5, lsl #2
200284ae:	681a      	ldr	r2, [r3, #0]
200284b0:	4645      	mov	r5, r8
200284b2:	1912      	adds	r2, r2, r4
200284b4:	bf2c      	ite	cs
200284b6:	2401      	movcs	r4, #1
200284b8:	2400      	movcc	r4, #0
200284ba:	3c00      	subs	r4, #0
200284bc:	bf18      	it	ne
200284be:	2401      	movne	r4, #1
200284c0:	f843 2b04 	str.w	r2, [r3], #4
200284c4:	e7e5      	b.n	20028492 <mbedtls_mpi_add_abs+0x38>
200284c6:	f7ff fd61 	bl	20027f8c <mbedtls_mpi_copy>
200284ca:	2800      	cmp	r0, #0
200284cc:	d0ce      	beq.n	2002846c <mbedtls_mpi_add_abs+0x12>
200284ce:	f06f 070f 	mvn.w	r7, #15
200284d2:	4638      	mov	r0, r7
200284d4:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
200284d8:	68a3      	ldr	r3, [r4, #8]
200284da:	eb03 0385 	add.w	r3, r3, r5, lsl #2
200284de:	f853 3c04 	ldr.w	r3, [r3, #-4]
200284e2:	2b00      	cmp	r3, #0
200284e4:	d1c7      	bne.n	20028476 <mbedtls_mpi_add_abs+0x1c>
200284e6:	3d01      	subs	r5, #1
200284e8:	e7c4      	b.n	20028474 <mbedtls_mpi_add_abs+0x1a>
200284ea:	f8dc 2000 	ldr.w	r2, [ip]
200284ee:	1912      	adds	r2, r2, r4
200284f0:	bf2c      	ite	cs
200284f2:	f04f 0e01 	movcs.w	lr, #1
200284f6:	f04f 0e00 	movcc.w	lr, #0
200284fa:	f851 4020 	ldr.w	r4, [r1, r0, lsl #2]
200284fe:	3001      	adds	r0, #1
20028500:	1912      	adds	r2, r2, r4
20028502:	f84c 2b04 	str.w	r2, [ip], #4
20028506:	f14e 0400 	adc.w	r4, lr, #0
2002850a:	e7be      	b.n	2002848a <mbedtls_mpi_add_abs+0x30>

2002850c <mbedtls_mpi_sub_abs>:
2002850c:	b57f      	push	{r0, r1, r2, r3, r4, r5, r6, lr}
2002850e:	460e      	mov	r6, r1
20028510:	4605      	mov	r5, r0
20028512:	4611      	mov	r1, r2
20028514:	4630      	mov	r0, r6
20028516:	4614      	mov	r4, r2
20028518:	f7ff feaa 	bl	20028270 <mbedtls_mpi_cmp_abs>
2002851c:	3001      	adds	r0, #1
2002851e:	d02f      	beq.n	20028580 <mbedtls_mpi_sub_abs+0x74>
20028520:	2300      	movs	r3, #0
20028522:	2201      	movs	r2, #1
20028524:	42ac      	cmp	r4, r5
20028526:	e9cd 2301 	strd	r2, r3, [sp, #4]
2002852a:	9303      	str	r3, [sp, #12]
2002852c:	d10d      	bne.n	2002854a <mbedtls_mpi_sub_abs+0x3e>
2002852e:	4621      	mov	r1, r4
20028530:	a801      	add	r0, sp, #4
20028532:	f7ff fd2b 	bl	20027f8c <mbedtls_mpi_copy>
20028536:	b138      	cbz	r0, 20028548 <mbedtls_mpi_sub_abs+0x3c>
20028538:	f06f 040f 	mvn.w	r4, #15
2002853c:	a801      	add	r0, sp, #4
2002853e:	f7ff fce4 	bl	20027f0a <mbedtls_mpi_free>
20028542:	4620      	mov	r0, r4
20028544:	b004      	add	sp, #16
20028546:	bd70      	pop	{r4, r5, r6, pc}
20028548:	ac01      	add	r4, sp, #4
2002854a:	42ae      	cmp	r6, r5
2002854c:	d109      	bne.n	20028562 <mbedtls_mpi_sub_abs+0x56>
2002854e:	2301      	movs	r3, #1
20028550:	602b      	str	r3, [r5, #0]
20028552:	e9d4 0101 	ldrd	r0, r1, [r4, #4]
20028556:	b958      	cbnz	r0, 20028570 <mbedtls_mpi_sub_abs+0x64>
20028558:	68aa      	ldr	r2, [r5, #8]
2002855a:	f7ff fb2a 	bl	20027bb2 <mpi_sub_hlp>
2002855e:	2400      	movs	r4, #0
20028560:	e7ec      	b.n	2002853c <mbedtls_mpi_sub_abs+0x30>
20028562:	4631      	mov	r1, r6
20028564:	4628      	mov	r0, r5
20028566:	f7ff fd11 	bl	20027f8c <mbedtls_mpi_copy>
2002856a:	2800      	cmp	r0, #0
2002856c:	d0ef      	beq.n	2002854e <mbedtls_mpi_sub_abs+0x42>
2002856e:	e7e3      	b.n	20028538 <mbedtls_mpi_sub_abs+0x2c>
20028570:	eb01 0380 	add.w	r3, r1, r0, lsl #2
20028574:	f853 3c04 	ldr.w	r3, [r3, #-4]
20028578:	2b00      	cmp	r3, #0
2002857a:	d1ed      	bne.n	20028558 <mbedtls_mpi_sub_abs+0x4c>
2002857c:	3801      	subs	r0, #1
2002857e:	e7ea      	b.n	20028556 <mbedtls_mpi_sub_abs+0x4a>
20028580:	f06f 0409 	mvn.w	r4, #9
20028584:	e7dd      	b.n	20028542 <mbedtls_mpi_sub_abs+0x36>

20028586 <mbedtls_mpi_add_mpi>:
20028586:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
20028588:	680d      	ldr	r5, [r1, #0]
2002858a:	6813      	ldr	r3, [r2, #0]
2002858c:	4604      	mov	r4, r0
2002858e:	436b      	muls	r3, r5
20028590:	460f      	mov	r7, r1
20028592:	4616      	mov	r6, r2
20028594:	d516      	bpl.n	200285c4 <mbedtls_mpi_add_mpi+0x3e>
20028596:	4611      	mov	r1, r2
20028598:	4638      	mov	r0, r7
2002859a:	f7ff fe69 	bl	20028270 <mbedtls_mpi_cmp_abs>
2002859e:	3001      	adds	r0, #1
200285a0:	d007      	beq.n	200285b2 <mbedtls_mpi_add_mpi+0x2c>
200285a2:	4632      	mov	r2, r6
200285a4:	4639      	mov	r1, r7
200285a6:	4620      	mov	r0, r4
200285a8:	f7ff ffb0 	bl	2002850c <mbedtls_mpi_sub_abs>
200285ac:	b900      	cbnz	r0, 200285b0 <mbedtls_mpi_add_mpi+0x2a>
200285ae:	6025      	str	r5, [r4, #0]
200285b0:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
200285b2:	463a      	mov	r2, r7
200285b4:	4631      	mov	r1, r6
200285b6:	4620      	mov	r0, r4
200285b8:	f7ff ffa8 	bl	2002850c <mbedtls_mpi_sub_abs>
200285bc:	2800      	cmp	r0, #0
200285be:	d1f7      	bne.n	200285b0 <mbedtls_mpi_add_mpi+0x2a>
200285c0:	426d      	negs	r5, r5
200285c2:	e7f4      	b.n	200285ae <mbedtls_mpi_add_mpi+0x28>
200285c4:	f7ff ff49 	bl	2002845a <mbedtls_mpi_add_abs>
200285c8:	2800      	cmp	r0, #0
200285ca:	d0f0      	beq.n	200285ae <mbedtls_mpi_add_mpi+0x28>
200285cc:	f06f 000f 	mvn.w	r0, #15
200285d0:	e7ee      	b.n	200285b0 <mbedtls_mpi_add_mpi+0x2a>

200285d2 <mbedtls_mpi_sub_mpi>:
200285d2:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
200285d4:	680d      	ldr	r5, [r1, #0]
200285d6:	6813      	ldr	r3, [r2, #0]
200285d8:	4604      	mov	r4, r0
200285da:	436b      	muls	r3, r5
200285dc:	2b00      	cmp	r3, #0
200285de:	460f      	mov	r7, r1
200285e0:	4616      	mov	r6, r2
200285e2:	dd16      	ble.n	20028612 <mbedtls_mpi_sub_mpi+0x40>
200285e4:	4611      	mov	r1, r2
200285e6:	4638      	mov	r0, r7
200285e8:	f7ff fe42 	bl	20028270 <mbedtls_mpi_cmp_abs>
200285ec:	3001      	adds	r0, #1
200285ee:	d007      	beq.n	20028600 <mbedtls_mpi_sub_mpi+0x2e>
200285f0:	4632      	mov	r2, r6
200285f2:	4639      	mov	r1, r7
200285f4:	4620      	mov	r0, r4
200285f6:	f7ff ff89 	bl	2002850c <mbedtls_mpi_sub_abs>
200285fa:	b900      	cbnz	r0, 200285fe <mbedtls_mpi_sub_mpi+0x2c>
200285fc:	6025      	str	r5, [r4, #0]
200285fe:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
20028600:	463a      	mov	r2, r7
20028602:	4631      	mov	r1, r6
20028604:	4620      	mov	r0, r4
20028606:	f7ff ff81 	bl	2002850c <mbedtls_mpi_sub_abs>
2002860a:	2800      	cmp	r0, #0
2002860c:	d1f7      	bne.n	200285fe <mbedtls_mpi_sub_mpi+0x2c>
2002860e:	426d      	negs	r5, r5
20028610:	e7f4      	b.n	200285fc <mbedtls_mpi_sub_mpi+0x2a>
20028612:	f7ff ff22 	bl	2002845a <mbedtls_mpi_add_abs>
20028616:	2800      	cmp	r0, #0
20028618:	d0f0      	beq.n	200285fc <mbedtls_mpi_sub_mpi+0x2a>
2002861a:	f06f 000f 	mvn.w	r0, #15
2002861e:	e7ee      	b.n	200285fe <mbedtls_mpi_sub_mpi+0x2c>

20028620 <mbedtls_mpi_sub_int>:
20028620:	b51f      	push	{r0, r1, r2, r3, r4, lr}
20028622:	ea82 73e2 	eor.w	r3, r2, r2, asr #31
20028626:	eba3 73e2 	sub.w	r3, r3, r2, asr #31
2002862a:	2a00      	cmp	r2, #0
2002862c:	9300      	str	r3, [sp, #0]
2002862e:	bfac      	ite	ge
20028630:	2301      	movge	r3, #1
20028632:	f04f 33ff 	movlt.w	r3, #4294967295
20028636:	9301      	str	r3, [sp, #4]
20028638:	2301      	movs	r3, #1
2002863a:	aa01      	add	r2, sp, #4
2002863c:	9302      	str	r3, [sp, #8]
2002863e:	f8cd d00c 	str.w	sp, [sp, #12]
20028642:	f7ff ffc6 	bl	200285d2 <mbedtls_mpi_sub_mpi>
20028646:	b005      	add	sp, #20
20028648:	f85d fb04 	ldr.w	pc, [sp], #4

2002864c <mbedtls_mpi_mul_mpi>:
2002864c:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
20028650:	2300      	movs	r3, #0
20028652:	4615      	mov	r5, r2
20028654:	2201      	movs	r2, #1
20028656:	b087      	sub	sp, #28
20028658:	4288      	cmp	r0, r1
2002865a:	4607      	mov	r7, r0
2002865c:	460e      	mov	r6, r1
2002865e:	e9cd 2300 	strd	r2, r3, [sp]
20028662:	e9cd 3202 	strd	r3, r2, [sp, #8]
20028666:	e9cd 3304 	strd	r3, r3, [sp, #16]
2002866a:	d110      	bne.n	2002868e <mbedtls_mpi_mul_mpi+0x42>
2002866c:	4668      	mov	r0, sp
2002866e:	f7ff fc8d 	bl	20027f8c <mbedtls_mpi_copy>
20028672:	b158      	cbz	r0, 2002868c <mbedtls_mpi_mul_mpi+0x40>
20028674:	f06f 090f 	mvn.w	r9, #15
20028678:	a803      	add	r0, sp, #12
2002867a:	f7ff fc46 	bl	20027f0a <mbedtls_mpi_free>
2002867e:	4668      	mov	r0, sp
20028680:	f7ff fc43 	bl	20027f0a <mbedtls_mpi_free>
20028684:	4648      	mov	r0, r9
20028686:	b007      	add	sp, #28
20028688:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
2002868c:	466e      	mov	r6, sp
2002868e:	42af      	cmp	r7, r5
20028690:	d106      	bne.n	200286a0 <mbedtls_mpi_mul_mpi+0x54>
20028692:	4639      	mov	r1, r7
20028694:	a803      	add	r0, sp, #12
20028696:	f7ff fc79 	bl	20027f8c <mbedtls_mpi_copy>
2002869a:	2800      	cmp	r0, #0
2002869c:	d1ea      	bne.n	20028674 <mbedtls_mpi_mul_mpi+0x28>
2002869e:	ad03      	add	r5, sp, #12
200286a0:	f8d6 8004 	ldr.w	r8, [r6, #4]
200286a4:	f1b8 0f00 	cmp.w	r8, #0
200286a8:	d116      	bne.n	200286d8 <mbedtls_mpi_mul_mpi+0x8c>
200286aa:	686c      	ldr	r4, [r5, #4]
200286ac:	b9f4      	cbnz	r4, 200286ec <mbedtls_mpi_mul_mpi+0xa0>
200286ae:	eb08 0104 	add.w	r1, r8, r4
200286b2:	4638      	mov	r0, r7
200286b4:	f7ff fc3e 	bl	20027f34 <mbedtls_mpi_grow>
200286b8:	4601      	mov	r1, r0
200286ba:	2800      	cmp	r0, #0
200286bc:	d1da      	bne.n	20028674 <mbedtls_mpi_mul_mpi+0x28>
200286be:	4638      	mov	r0, r7
200286c0:	f7ff fc8d 	bl	20027fde <mbedtls_mpi_lset>
200286c4:	4681      	mov	r9, r0
200286c6:	2800      	cmp	r0, #0
200286c8:	d1d4      	bne.n	20028674 <mbedtls_mpi_mul_mpi+0x28>
200286ca:	3c01      	subs	r4, #1
200286cc:	d217      	bcs.n	200286fe <mbedtls_mpi_mul_mpi+0xb2>
200286ce:	6833      	ldr	r3, [r6, #0]
200286d0:	682a      	ldr	r2, [r5, #0]
200286d2:	4353      	muls	r3, r2
200286d4:	603b      	str	r3, [r7, #0]
200286d6:	e7cf      	b.n	20028678 <mbedtls_mpi_mul_mpi+0x2c>
200286d8:	68b3      	ldr	r3, [r6, #8]
200286da:	eb03 0388 	add.w	r3, r3, r8, lsl #2
200286de:	f853 3c04 	ldr.w	r3, [r3, #-4]
200286e2:	2b00      	cmp	r3, #0
200286e4:	d1e1      	bne.n	200286aa <mbedtls_mpi_mul_mpi+0x5e>
200286e6:	f108 38ff 	add.w	r8, r8, #4294967295
200286ea:	e7db      	b.n	200286a4 <mbedtls_mpi_mul_mpi+0x58>
200286ec:	68ab      	ldr	r3, [r5, #8]
200286ee:	eb03 0384 	add.w	r3, r3, r4, lsl #2
200286f2:	f853 3c04 	ldr.w	r3, [r3, #-4]
200286f6:	2b00      	cmp	r3, #0
200286f8:	d1d9      	bne.n	200286ae <mbedtls_mpi_mul_mpi+0x62>
200286fa:	3c01      	subs	r4, #1
200286fc:	e7d6      	b.n	200286ac <mbedtls_mpi_mul_mpi+0x60>
200286fe:	68ab      	ldr	r3, [r5, #8]
20028700:	68ba      	ldr	r2, [r7, #8]
20028702:	4640      	mov	r0, r8
20028704:	f853 3024 	ldr.w	r3, [r3, r4, lsl #2]
20028708:	68b1      	ldr	r1, [r6, #8]
2002870a:	eb02 0284 	add.w	r2, r2, r4, lsl #2
2002870e:	f7ff fa79 	bl	20027c04 <mpi_mul_hlp>
20028712:	e7da      	b.n	200286ca <mbedtls_mpi_mul_mpi+0x7e>

20028714 <mbedtls_mpi_mul_int>:
20028714:	b51f      	push	{r0, r1, r2, r3, r4, lr}
20028716:	2301      	movs	r3, #1
20028718:	9200      	str	r2, [sp, #0]
2002871a:	aa01      	add	r2, sp, #4
2002871c:	e9cd 3301 	strd	r3, r3, [sp, #4]
20028720:	f8cd d00c 	str.w	sp, [sp, #12]
20028724:	f7ff ff92 	bl	2002864c <mbedtls_mpi_mul_mpi>
20028728:	b005      	add	sp, #20
2002872a:	f85d fb04 	ldr.w	pc, [sp], #4

2002872e <mbedtls_mpi_div_mpi>:
2002872e:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
20028732:	b09f      	sub	sp, #124	@ 0x7c
20028734:	e9cd 1203 	strd	r1, r2, [sp, #12]
20028738:	9005      	str	r0, [sp, #20]
2002873a:	2100      	movs	r1, #0
2002873c:	4618      	mov	r0, r3
2002873e:	9309      	str	r3, [sp, #36]	@ 0x24
20028740:	f7ff fe75 	bl	2002842e <mbedtls_mpi_cmp_int>
20028744:	2800      	cmp	r0, #0
20028746:	f000 81f3 	beq.w	20028b30 <mbedtls_mpi_div_mpi+0x402>
2002874a:	2501      	movs	r5, #1
2002874c:	2400      	movs	r4, #0
2002874e:	9909      	ldr	r1, [sp, #36]	@ 0x24
20028750:	9804      	ldr	r0, [sp, #16]
20028752:	e9cd 5418 	strd	r5, r4, [sp, #96]	@ 0x60
20028756:	e9cd 541b 	strd	r5, r4, [sp, #108]	@ 0x6c
2002875a:	950f      	str	r5, [sp, #60]	@ 0x3c
2002875c:	9512      	str	r5, [sp, #72]	@ 0x48
2002875e:	9515      	str	r5, [sp, #84]	@ 0x54
20028760:	9416      	str	r4, [sp, #88]	@ 0x58
20028762:	f7ff fd85 	bl	20028270 <mbedtls_mpi_cmp_abs>
20028766:	3001      	adds	r0, #1
20028768:	d11f      	bne.n	200287aa <mbedtls_mpi_div_mpi+0x7c>
2002876a:	9b05      	ldr	r3, [sp, #20]
2002876c:	b933      	cbnz	r3, 2002877c <mbedtls_mpi_div_mpi+0x4e>
2002876e:	9b03      	ldr	r3, [sp, #12]
20028770:	b9a3      	cbnz	r3, 2002879c <mbedtls_mpi_div_mpi+0x6e>
20028772:	2100      	movs	r1, #0
20028774:	4608      	mov	r0, r1
20028776:	b01f      	add	sp, #124	@ 0x7c
20028778:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
2002877c:	4621      	mov	r1, r4
2002877e:	9805      	ldr	r0, [sp, #20]
20028780:	f7ff fc2d 	bl	20027fde <mbedtls_mpi_lset>
20028784:	2800      	cmp	r0, #0
20028786:	d0f2      	beq.n	2002876e <mbedtls_mpi_div_mpi+0x40>
20028788:	2400      	movs	r4, #0
2002878a:	4625      	mov	r5, r4
2002878c:	46a1      	mov	r9, r4
2002878e:	46a0      	mov	r8, r4
20028790:	4626      	mov	r6, r4
20028792:	4627      	mov	r7, r4
20028794:	9402      	str	r4, [sp, #8]
20028796:	f06f 010f 	mvn.w	r1, #15
2002879a:	e0ef      	b.n	2002897c <mbedtls_mpi_div_mpi+0x24e>
2002879c:	e9dd 0103 	ldrd	r0, r1, [sp, #12]
200287a0:	f7ff fbf4 	bl	20027f8c <mbedtls_mpi_copy>
200287a4:	2800      	cmp	r0, #0
200287a6:	d1ef      	bne.n	20028788 <mbedtls_mpi_div_mpi+0x5a>
200287a8:	e7e3      	b.n	20028772 <mbedtls_mpi_div_mpi+0x44>
200287aa:	9904      	ldr	r1, [sp, #16]
200287ac:	a80f      	add	r0, sp, #60	@ 0x3c
200287ae:	e9cd 4410 	strd	r4, r4, [sp, #64]	@ 0x40
200287b2:	f7ff fbeb 	bl	20027f8c <mbedtls_mpi_copy>
200287b6:	e9dd 7610 	ldrd	r7, r6, [sp, #64]	@ 0x40
200287ba:	4682      	mov	sl, r0
200287bc:	2800      	cmp	r0, #0
200287be:	f040 81a9 	bne.w	20028b14 <mbedtls_mpi_div_mpi+0x3e6>
200287c2:	e9cd 0013 	strd	r0, r0, [sp, #76]	@ 0x4c
200287c6:	9909      	ldr	r1, [sp, #36]	@ 0x24
200287c8:	a812      	add	r0, sp, #72	@ 0x48
200287ca:	f7ff fbdf 	bl	20027f8c <mbedtls_mpi_copy>
200287ce:	e9dd 8913 	ldrd	r8, r9, [sp, #76]	@ 0x4c
200287d2:	4604      	mov	r4, r0
200287d4:	2800      	cmp	r0, #0
200287d6:	f040 81a2 	bne.w	20028b1e <mbedtls_mpi_div_mpi+0x3f0>
200287da:	9b04      	ldr	r3, [sp, #16]
200287dc:	9017      	str	r0, [sp, #92]	@ 0x5c
200287de:	6859      	ldr	r1, [r3, #4]
200287e0:	a815      	add	r0, sp, #84	@ 0x54
200287e2:	3102      	adds	r1, #2
200287e4:	9512      	str	r5, [sp, #72]	@ 0x48
200287e6:	950f      	str	r5, [sp, #60]	@ 0x3c
200287e8:	f7ff fba4 	bl	20027f34 <mbedtls_mpi_grow>
200287ec:	4605      	mov	r5, r0
200287ee:	b118      	cbz	r0, 200287f8 <mbedtls_mpi_div_mpi+0xca>
200287f0:	9b17      	ldr	r3, [sp, #92]	@ 0x5c
200287f2:	9302      	str	r3, [sp, #8]
200287f4:	4625      	mov	r5, r4
200287f6:	e7ce      	b.n	20028796 <mbedtls_mpi_div_mpi+0x68>
200287f8:	4601      	mov	r1, r0
200287fa:	a815      	add	r0, sp, #84	@ 0x54
200287fc:	f7ff fbef 	bl	20027fde <mbedtls_mpi_lset>
20028800:	9b17      	ldr	r3, [sp, #92]	@ 0x5c
20028802:	4604      	mov	r4, r0
20028804:	9302      	str	r3, [sp, #8]
20028806:	2800      	cmp	r0, #0
20028808:	f040 818e 	bne.w	20028b28 <mbedtls_mpi_div_mpi+0x3fa>
2002880c:	901a      	str	r0, [sp, #104]	@ 0x68
2002880e:	2102      	movs	r1, #2
20028810:	a818      	add	r0, sp, #96	@ 0x60
20028812:	f7ff fb8f 	bl	20027f34 <mbedtls_mpi_grow>
20028816:	9d1a      	ldr	r5, [sp, #104]	@ 0x68
20028818:	2800      	cmp	r0, #0
2002881a:	d1bc      	bne.n	20028796 <mbedtls_mpi_div_mpi+0x68>
2002881c:	901d      	str	r0, [sp, #116]	@ 0x74
2002881e:	2103      	movs	r1, #3
20028820:	a81b      	add	r0, sp, #108	@ 0x6c
20028822:	f7ff fb87 	bl	20027f34 <mbedtls_mpi_grow>
20028826:	9c1d      	ldr	r4, [sp, #116]	@ 0x74
20028828:	4683      	mov	fp, r0
2002882a:	2800      	cmp	r0, #0
2002882c:	d1b3      	bne.n	20028796 <mbedtls_mpi_div_mpi+0x68>
2002882e:	a812      	add	r0, sp, #72	@ 0x48
20028830:	f7ff fc09 	bl	20028046 <mbedtls_mpi_bitlen>
20028834:	f000 001f 	and.w	r0, r0, #31
20028838:	281f      	cmp	r0, #31
2002883a:	f000 808a 	beq.w	20028952 <mbedtls_mpi_div_mpi+0x224>
2002883e:	f1c0 031f 	rsb	r3, r0, #31
20028842:	4619      	mov	r1, r3
20028844:	a80f      	add	r0, sp, #60	@ 0x3c
20028846:	9306      	str	r3, [sp, #24]
20028848:	f7ff fc78 	bl	2002813c <mbedtls_mpi_shift_l>
2002884c:	e9dd 7610 	ldrd	r7, r6, [sp, #64]	@ 0x40
20028850:	2800      	cmp	r0, #0
20028852:	d1a0      	bne.n	20028796 <mbedtls_mpi_div_mpi+0x68>
20028854:	9906      	ldr	r1, [sp, #24]
20028856:	a812      	add	r0, sp, #72	@ 0x48
20028858:	f7ff fc70 	bl	2002813c <mbedtls_mpi_shift_l>
2002885c:	e9dd 8913 	ldrd	r8, r9, [sp, #76]	@ 0x4c
20028860:	2800      	cmp	r0, #0
20028862:	d198      	bne.n	20028796 <mbedtls_mpi_div_mpi+0x68>
20028864:	46ba      	mov	sl, r7
20028866:	f8cd 8020 	str.w	r8, [sp, #32]
2002886a:	eba7 0b08 	sub.w	fp, r7, r8
2002886e:	ea4f 134b 	mov.w	r3, fp, lsl #5
20028872:	4619      	mov	r1, r3
20028874:	a812      	add	r0, sp, #72	@ 0x48
20028876:	e9cd 8913 	strd	r8, r9, [sp, #76]	@ 0x4c
2002887a:	9301      	str	r3, [sp, #4]
2002887c:	f7ff fc5e 	bl	2002813c <mbedtls_mpi_shift_l>
20028880:	e9dd 8913 	ldrd	r8, r9, [sp, #76]	@ 0x4c
20028884:	2800      	cmp	r0, #0
20028886:	d186      	bne.n	20028796 <mbedtls_mpi_div_mpi+0x68>
20028888:	ea4f 038b 	mov.w	r3, fp, lsl #2
2002888c:	930b      	str	r3, [sp, #44]	@ 0x2c
2002888e:	9b02      	ldr	r3, [sp, #8]
20028890:	eb03 0b8b 	add.w	fp, r3, fp, lsl #2
20028894:	a912      	add	r1, sp, #72	@ 0x48
20028896:	a80f      	add	r0, sp, #60	@ 0x3c
20028898:	e9cd 7610 	strd	r7, r6, [sp, #64]	@ 0x40
2002889c:	e9cd 8913 	strd	r8, r9, [sp, #76]	@ 0x4c
200288a0:	f7ff fd84 	bl	200283ac <mbedtls_mpi_cmp_mpi>
200288a4:	2800      	cmp	r0, #0
200288a6:	da5a      	bge.n	2002895e <mbedtls_mpi_div_mpi+0x230>
200288a8:	9901      	ldr	r1, [sp, #4]
200288aa:	a812      	add	r0, sp, #72	@ 0x48
200288ac:	f7ff fc9f 	bl	200281ee <mbedtls_mpi_shift_r>
200288b0:	e9dd 8913 	ldrd	r8, r9, [sp, #76]	@ 0x4c
200288b4:	2800      	cmp	r0, #0
200288b6:	f47f af6e 	bne.w	20028796 <mbedtls_mpi_div_mpi+0x68>
200288ba:	f10a 33ff 	add.w	r3, sl, #4294967295
200288be:	9301      	str	r3, [sp, #4]
200288c0:	9b08      	ldr	r3, [sp, #32]
200288c2:	9a02      	ldr	r2, [sp, #8]
200288c4:	3b01      	subs	r3, #1
200288c6:	9307      	str	r3, [sp, #28]
200288c8:	eb09 0383 	add.w	r3, r9, r3, lsl #2
200288cc:	930a      	str	r3, [sp, #40]	@ 0x28
200288ce:	9b08      	ldr	r3, [sp, #32]
200288d0:	f103 4380 	add.w	r3, r3, #1073741824	@ 0x40000000
200288d4:	3b02      	subs	r3, #2
200288d6:	eb09 0383 	add.w	r3, r9, r3, lsl #2
200288da:	930c      	str	r3, [sp, #48]	@ 0x30
200288dc:	9b0b      	ldr	r3, [sp, #44]	@ 0x2c
200288de:	4413      	add	r3, r2
200288e0:	469a      	mov	sl, r3
200288e2:	9b01      	ldr	r3, [sp, #4]
200288e4:	9a07      	ldr	r2, [sp, #28]
200288e6:	4293      	cmp	r3, r2
200288e8:	d862      	bhi.n	200289b0 <mbedtls_mpi_div_mpi+0x282>
200288ea:	9b05      	ldr	r3, [sp, #20]
200288ec:	b16b      	cbz	r3, 2002890a <mbedtls_mpi_div_mpi+0x1dc>
200288ee:	4618      	mov	r0, r3
200288f0:	a915      	add	r1, sp, #84	@ 0x54
200288f2:	f7ff fb4b 	bl	20027f8c <mbedtls_mpi_copy>
200288f6:	2800      	cmp	r0, #0
200288f8:	f47f af4d 	bne.w	20028796 <mbedtls_mpi_div_mpi+0x68>
200288fc:	9b04      	ldr	r3, [sp, #16]
200288fe:	9a09      	ldr	r2, [sp, #36]	@ 0x24
20028900:	681b      	ldr	r3, [r3, #0]
20028902:	6812      	ldr	r2, [r2, #0]
20028904:	4353      	muls	r3, r2
20028906:	9a05      	ldr	r2, [sp, #20]
20028908:	6013      	str	r3, [r2, #0]
2002890a:	9b03      	ldr	r3, [sp, #12]
2002890c:	2b00      	cmp	r3, #0
2002890e:	f000 810d 	beq.w	20028b2c <mbedtls_mpi_div_mpi+0x3fe>
20028912:	9906      	ldr	r1, [sp, #24]
20028914:	a80f      	add	r0, sp, #60	@ 0x3c
20028916:	e9cd 7610 	strd	r7, r6, [sp, #64]	@ 0x40
2002891a:	f7ff fc68 	bl	200281ee <mbedtls_mpi_shift_r>
2002891e:	e9dd 7610 	ldrd	r7, r6, [sp, #64]	@ 0x40
20028922:	2800      	cmp	r0, #0
20028924:	f47f af37 	bne.w	20028796 <mbedtls_mpi_div_mpi+0x68>
20028928:	9b04      	ldr	r3, [sp, #16]
2002892a:	a90f      	add	r1, sp, #60	@ 0x3c
2002892c:	681b      	ldr	r3, [r3, #0]
2002892e:	9803      	ldr	r0, [sp, #12]
20028930:	930f      	str	r3, [sp, #60]	@ 0x3c
20028932:	f7ff fb2b 	bl	20027f8c <mbedtls_mpi_copy>
20028936:	4601      	mov	r1, r0
20028938:	2800      	cmp	r0, #0
2002893a:	f47f af2c 	bne.w	20028796 <mbedtls_mpi_div_mpi+0x68>
2002893e:	9001      	str	r0, [sp, #4]
20028940:	9803      	ldr	r0, [sp, #12]
20028942:	f7ff fd74 	bl	2002842e <mbedtls_mpi_cmp_int>
20028946:	9901      	ldr	r1, [sp, #4]
20028948:	b9c0      	cbnz	r0, 2002897c <mbedtls_mpi_div_mpi+0x24e>
2002894a:	2301      	movs	r3, #1
2002894c:	9a03      	ldr	r2, [sp, #12]
2002894e:	6013      	str	r3, [r2, #0]
20028950:	e014      	b.n	2002897c <mbedtls_mpi_div_mpi+0x24e>
20028952:	46ba      	mov	sl, r7
20028954:	f8cd 8020 	str.w	r8, [sp, #32]
20028958:	f8cd b018 	str.w	fp, [sp, #24]
2002895c:	e785      	b.n	2002886a <mbedtls_mpi_div_mpi+0x13c>
2002895e:	f8db 2000 	ldr.w	r2, [fp]
20028962:	a90f      	add	r1, sp, #60	@ 0x3c
20028964:	3201      	adds	r2, #1
20028966:	4608      	mov	r0, r1
20028968:	f8cb 2000 	str.w	r2, [fp]
2002896c:	aa12      	add	r2, sp, #72	@ 0x48
2002896e:	f7ff fe30 	bl	200285d2 <mbedtls_mpi_sub_mpi>
20028972:	e9dd 7610 	ldrd	r7, r6, [sp, #64]	@ 0x40
20028976:	4601      	mov	r1, r0
20028978:	2800      	cmp	r0, #0
2002897a:	d08b      	beq.n	20028894 <mbedtls_mpi_div_mpi+0x166>
2002897c:	a80f      	add	r0, sp, #60	@ 0x3c
2002897e:	9101      	str	r1, [sp, #4]
20028980:	e9cd 7610 	strd	r7, r6, [sp, #64]	@ 0x40
20028984:	f7ff fac1 	bl	20027f0a <mbedtls_mpi_free>
20028988:	a812      	add	r0, sp, #72	@ 0x48
2002898a:	e9cd 8913 	strd	r8, r9, [sp, #76]	@ 0x4c
2002898e:	f7ff fabc 	bl	20027f0a <mbedtls_mpi_free>
20028992:	9b02      	ldr	r3, [sp, #8]
20028994:	a815      	add	r0, sp, #84	@ 0x54
20028996:	9317      	str	r3, [sp, #92]	@ 0x5c
20028998:	f7ff fab7 	bl	20027f0a <mbedtls_mpi_free>
2002899c:	a818      	add	r0, sp, #96	@ 0x60
2002899e:	951a      	str	r5, [sp, #104]	@ 0x68
200289a0:	f7ff fab3 	bl	20027f0a <mbedtls_mpi_free>
200289a4:	a81b      	add	r0, sp, #108	@ 0x6c
200289a6:	941d      	str	r4, [sp, #116]	@ 0x74
200289a8:	f7ff faaf 	bl	20027f0a <mbedtls_mpi_free>
200289ac:	9901      	ldr	r1, [sp, #4]
200289ae:	e6e1      	b.n	20028774 <mbedtls_mpi_div_mpi+0x46>
200289b0:	9b01      	ldr	r3, [sp, #4]
200289b2:	ea4f 0b83 	mov.w	fp, r3, lsl #2
200289b6:	eb06 0383 	add.w	r3, r6, r3, lsl #2
200289ba:	930b      	str	r3, [sp, #44]	@ 0x2c
200289bc:	9b01      	ldr	r3, [sp, #4]
200289be:	f1ab 0004 	sub.w	r0, fp, #4
200289c2:	f856 1023 	ldr.w	r1, [r6, r3, lsl #2]
200289c6:	9b0a      	ldr	r3, [sp, #40]	@ 0x28
200289c8:	681a      	ldr	r2, [r3, #0]
200289ca:	1833      	adds	r3, r6, r0
200289cc:	4291      	cmp	r1, r2
200289ce:	930d      	str	r3, [sp, #52]	@ 0x34
200289d0:	d255      	bcs.n	20028a7e <mbedtls_mpi_div_mpi+0x350>
200289d2:	2300      	movs	r3, #0
200289d4:	5830      	ldr	r0, [r6, r0]
200289d6:	f001 fd87 	bl	2002a4e8 <__aeabi_uldivmod>
200289da:	2900      	cmp	r1, #0
200289dc:	bf14      	ite	ne
200289de:	f04f 33ff 	movne.w	r3, #4294967295
200289e2:	4603      	moveq	r3, r0
200289e4:	3301      	adds	r3, #1
200289e6:	f1ab 0b08 	sub.w	fp, fp, #8
200289ea:	f84a 3c04 	str.w	r3, [sl, #-4]
200289ee:	44b3      	add	fp, r6
200289f0:	f85a 3c04 	ldr.w	r3, [sl, #-4]
200289f4:	2100      	movs	r1, #0
200289f6:	3b01      	subs	r3, #1
200289f8:	f84a 3c04 	str.w	r3, [sl, #-4]
200289fc:	a818      	add	r0, sp, #96	@ 0x60
200289fe:	951a      	str	r5, [sp, #104]	@ 0x68
20028a00:	f7ff faed 	bl	20027fde <mbedtls_mpi_lset>
20028a04:	9d1a      	ldr	r5, [sp, #104]	@ 0x68
20028a06:	2800      	cmp	r0, #0
20028a08:	f47f aec5 	bne.w	20028796 <mbedtls_mpi_div_mpi+0x68>
20028a0c:	9b07      	ldr	r3, [sp, #28]
20028a0e:	2b00      	cmp	r3, #0
20028a10:	d038      	beq.n	20028a84 <mbedtls_mpi_div_mpi+0x356>
20028a12:	9b0c      	ldr	r3, [sp, #48]	@ 0x30
20028a14:	681b      	ldr	r3, [r3, #0]
20028a16:	602b      	str	r3, [r5, #0]
20028a18:	9b0a      	ldr	r3, [sp, #40]	@ 0x28
20028a1a:	a918      	add	r1, sp, #96	@ 0x60
20028a1c:	681b      	ldr	r3, [r3, #0]
20028a1e:	4608      	mov	r0, r1
20028a20:	606b      	str	r3, [r5, #4]
20028a22:	f85a 2c04 	ldr.w	r2, [sl, #-4]
20028a26:	f7ff fe75 	bl	20028714 <mbedtls_mpi_mul_int>
20028a2a:	9d1a      	ldr	r5, [sp, #104]	@ 0x68
20028a2c:	4601      	mov	r1, r0
20028a2e:	2800      	cmp	r0, #0
20028a30:	f47f aeb1 	bne.w	20028796 <mbedtls_mpi_div_mpi+0x68>
20028a34:	a81b      	add	r0, sp, #108	@ 0x6c
20028a36:	941d      	str	r4, [sp, #116]	@ 0x74
20028a38:	f7ff fad1 	bl	20027fde <mbedtls_mpi_lset>
20028a3c:	9c1d      	ldr	r4, [sp, #116]	@ 0x74
20028a3e:	2800      	cmp	r0, #0
20028a40:	f47f aea9 	bne.w	20028796 <mbedtls_mpi_div_mpi+0x68>
20028a44:	9b01      	ldr	r3, [sp, #4]
20028a46:	a91b      	add	r1, sp, #108	@ 0x6c
20028a48:	2b01      	cmp	r3, #1
20028a4a:	bf18      	it	ne
20028a4c:	f8db 0000 	ldrne.w	r0, [fp]
20028a50:	9b0d      	ldr	r3, [sp, #52]	@ 0x34
20028a52:	6020      	str	r0, [r4, #0]
20028a54:	681b      	ldr	r3, [r3, #0]
20028a56:	a818      	add	r0, sp, #96	@ 0x60
20028a58:	6063      	str	r3, [r4, #4]
20028a5a:	9b0b      	ldr	r3, [sp, #44]	@ 0x2c
20028a5c:	681b      	ldr	r3, [r3, #0]
20028a5e:	60a3      	str	r3, [r4, #8]
20028a60:	f7ff fca4 	bl	200283ac <mbedtls_mpi_cmp_mpi>
20028a64:	2800      	cmp	r0, #0
20028a66:	dcc3      	bgt.n	200289f0 <mbedtls_mpi_div_mpi+0x2c2>
20028a68:	f85a 2c04 	ldr.w	r2, [sl, #-4]
20028a6c:	a912      	add	r1, sp, #72	@ 0x48
20028a6e:	a818      	add	r0, sp, #96	@ 0x60
20028a70:	e9cd 8913 	strd	r8, r9, [sp, #76]	@ 0x4c
20028a74:	f7ff fe4e 	bl	20028714 <mbedtls_mpi_mul_int>
20028a78:	b130      	cbz	r0, 20028a88 <mbedtls_mpi_div_mpi+0x35a>
20028a7a:	9d1a      	ldr	r5, [sp, #104]	@ 0x68
20028a7c:	e68b      	b.n	20028796 <mbedtls_mpi_div_mpi+0x68>
20028a7e:	f04f 33ff 	mov.w	r3, #4294967295
20028a82:	e7af      	b.n	200289e4 <mbedtls_mpi_div_mpi+0x2b6>
20028a84:	9b07      	ldr	r3, [sp, #28]
20028a86:	e7c6      	b.n	20028a16 <mbedtls_mpi_div_mpi+0x2e8>
20028a88:	f06f 0b1f 	mvn.w	fp, #31
20028a8c:	9b08      	ldr	r3, [sp, #32]
20028a8e:	a818      	add	r0, sp, #96	@ 0x60
20028a90:	fb0b fb03 	mul.w	fp, fp, r3
20028a94:	9b01      	ldr	r3, [sp, #4]
20028a96:	eb0b 1b43 	add.w	fp, fp, r3, lsl #5
20028a9a:	4659      	mov	r1, fp
20028a9c:	f7ff fb4e 	bl	2002813c <mbedtls_mpi_shift_l>
20028aa0:	9d1a      	ldr	r5, [sp, #104]	@ 0x68
20028aa2:	2800      	cmp	r0, #0
20028aa4:	f47f ae77 	bne.w	20028796 <mbedtls_mpi_div_mpi+0x68>
20028aa8:	a90f      	add	r1, sp, #60	@ 0x3c
20028aaa:	4608      	mov	r0, r1
20028aac:	aa18      	add	r2, sp, #96	@ 0x60
20028aae:	e9cd 7610 	strd	r7, r6, [sp, #64]	@ 0x40
20028ab2:	f7ff fd8e 	bl	200285d2 <mbedtls_mpi_sub_mpi>
20028ab6:	e9dd 7610 	ldrd	r7, r6, [sp, #64]	@ 0x40
20028aba:	4601      	mov	r1, r0
20028abc:	2800      	cmp	r0, #0
20028abe:	f47f af5d 	bne.w	2002897c <mbedtls_mpi_div_mpi+0x24e>
20028ac2:	a80f      	add	r0, sp, #60	@ 0x3c
20028ac4:	f7ff fcb3 	bl	2002842e <mbedtls_mpi_cmp_int>
20028ac8:	2800      	cmp	r0, #0
20028aca:	da1d      	bge.n	20028b08 <mbedtls_mpi_div_mpi+0x3da>
20028acc:	a912      	add	r1, sp, #72	@ 0x48
20028ace:	a818      	add	r0, sp, #96	@ 0x60
20028ad0:	f7ff fa5c 	bl	20027f8c <mbedtls_mpi_copy>
20028ad4:	2800      	cmp	r0, #0
20028ad6:	d1d0      	bne.n	20028a7a <mbedtls_mpi_div_mpi+0x34c>
20028ad8:	4659      	mov	r1, fp
20028ada:	a818      	add	r0, sp, #96	@ 0x60
20028adc:	f7ff fb2e 	bl	2002813c <mbedtls_mpi_shift_l>
20028ae0:	9d1a      	ldr	r5, [sp, #104]	@ 0x68
20028ae2:	2800      	cmp	r0, #0
20028ae4:	f47f ae57 	bne.w	20028796 <mbedtls_mpi_div_mpi+0x68>
20028ae8:	a90f      	add	r1, sp, #60	@ 0x3c
20028aea:	4608      	mov	r0, r1
20028aec:	aa18      	add	r2, sp, #96	@ 0x60
20028aee:	f7ff fd4a 	bl	20028586 <mbedtls_mpi_add_mpi>
20028af2:	e9dd 7610 	ldrd	r7, r6, [sp, #64]	@ 0x40
20028af6:	4601      	mov	r1, r0
20028af8:	2800      	cmp	r0, #0
20028afa:	f47f af3f 	bne.w	2002897c <mbedtls_mpi_div_mpi+0x24e>
20028afe:	f85a 3c04 	ldr.w	r3, [sl, #-4]
20028b02:	3b01      	subs	r3, #1
20028b04:	f84a 3c04 	str.w	r3, [sl, #-4]
20028b08:	9b01      	ldr	r3, [sp, #4]
20028b0a:	f1aa 0a04 	sub.w	sl, sl, #4
20028b0e:	3b01      	subs	r3, #1
20028b10:	9301      	str	r3, [sp, #4]
20028b12:	e6e6      	b.n	200288e2 <mbedtls_mpi_div_mpi+0x1b4>
20028b14:	4625      	mov	r5, r4
20028b16:	46a1      	mov	r9, r4
20028b18:	46a0      	mov	r8, r4
20028b1a:	9402      	str	r4, [sp, #8]
20028b1c:	e63b      	b.n	20028796 <mbedtls_mpi_div_mpi+0x68>
20028b1e:	4654      	mov	r4, sl
20028b20:	4655      	mov	r5, sl
20028b22:	f8cd a008 	str.w	sl, [sp, #8]
20028b26:	e636      	b.n	20028796 <mbedtls_mpi_div_mpi+0x68>
20028b28:	462c      	mov	r4, r5
20028b2a:	e663      	b.n	200287f4 <mbedtls_mpi_div_mpi+0xc6>
20028b2c:	9903      	ldr	r1, [sp, #12]
20028b2e:	e725      	b.n	2002897c <mbedtls_mpi_div_mpi+0x24e>
20028b30:	f06f 010b 	mvn.w	r1, #11
20028b34:	e61e      	b.n	20028774 <mbedtls_mpi_div_mpi+0x46>

20028b36 <mbedtls_mpi_mod_mpi>:
20028b36:	b570      	push	{r4, r5, r6, lr}
20028b38:	4604      	mov	r4, r0
20028b3a:	460d      	mov	r5, r1
20028b3c:	4610      	mov	r0, r2
20028b3e:	2100      	movs	r1, #0
20028b40:	4616      	mov	r6, r2
20028b42:	f7ff fc74 	bl	2002842e <mbedtls_mpi_cmp_int>
20028b46:	2800      	cmp	r0, #0
20028b48:	db24      	blt.n	20028b94 <mbedtls_mpi_mod_mpi+0x5e>
20028b4a:	462a      	mov	r2, r5
20028b4c:	4633      	mov	r3, r6
20028b4e:	4621      	mov	r1, r4
20028b50:	2000      	movs	r0, #0
20028b52:	f7ff fdec 	bl	2002872e <mbedtls_mpi_div_mpi>
20028b56:	4605      	mov	r5, r0
20028b58:	b138      	cbz	r0, 20028b6a <mbedtls_mpi_mod_mpi+0x34>
20028b5a:	4628      	mov	r0, r5
20028b5c:	bd70      	pop	{r4, r5, r6, pc}
20028b5e:	4632      	mov	r2, r6
20028b60:	4621      	mov	r1, r4
20028b62:	4620      	mov	r0, r4
20028b64:	f7ff fd0f 	bl	20028586 <mbedtls_mpi_add_mpi>
20028b68:	b990      	cbnz	r0, 20028b90 <mbedtls_mpi_mod_mpi+0x5a>
20028b6a:	2100      	movs	r1, #0
20028b6c:	4620      	mov	r0, r4
20028b6e:	f7ff fc5e 	bl	2002842e <mbedtls_mpi_cmp_int>
20028b72:	2800      	cmp	r0, #0
20028b74:	dbf3      	blt.n	20028b5e <mbedtls_mpi_mod_mpi+0x28>
20028b76:	4631      	mov	r1, r6
20028b78:	4620      	mov	r0, r4
20028b7a:	f7ff fc17 	bl	200283ac <mbedtls_mpi_cmp_mpi>
20028b7e:	2800      	cmp	r0, #0
20028b80:	dbeb      	blt.n	20028b5a <mbedtls_mpi_mod_mpi+0x24>
20028b82:	4632      	mov	r2, r6
20028b84:	4621      	mov	r1, r4
20028b86:	4620      	mov	r0, r4
20028b88:	f7ff fd23 	bl	200285d2 <mbedtls_mpi_sub_mpi>
20028b8c:	2800      	cmp	r0, #0
20028b8e:	d0f2      	beq.n	20028b76 <mbedtls_mpi_mod_mpi+0x40>
20028b90:	4605      	mov	r5, r0
20028b92:	e7e2      	b.n	20028b5a <mbedtls_mpi_mod_mpi+0x24>
20028b94:	f06f 0509 	mvn.w	r5, #9
20028b98:	e7df      	b.n	20028b5a <mbedtls_mpi_mod_mpi+0x24>

20028b9a <mbedtls_mpi_exp_mod>:
20028b9a:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
20028b9e:	4605      	mov	r5, r0
20028ba0:	f2ad 6d54 	subw	sp, sp, #1620	@ 0x654
20028ba4:	4688      	mov	r8, r1
20028ba6:	4618      	mov	r0, r3
20028ba8:	2100      	movs	r1, #0
20028baa:	461c      	mov	r4, r3
20028bac:	9203      	str	r2, [sp, #12]
20028bae:	f7ff fc3e 	bl	2002842e <mbedtls_mpi_cmp_int>
20028bb2:	2800      	cmp	r0, #0
20028bb4:	f2c0 8202 	blt.w	20028fbc <mbedtls_mpi_exp_mod+0x422>
20028bb8:	68a3      	ldr	r3, [r4, #8]
20028bba:	681f      	ldr	r7, [r3, #0]
20028bbc:	f017 0301 	ands.w	r3, r7, #1
20028bc0:	9305      	str	r3, [sp, #20]
20028bc2:	f000 81fb 	beq.w	20028fbc <mbedtls_mpi_exp_mod+0x422>
20028bc6:	2100      	movs	r1, #0
20028bc8:	9803      	ldr	r0, [sp, #12]
20028bca:	f7ff fc30 	bl	2002842e <mbedtls_mpi_cmp_int>
20028bce:	2800      	cmp	r0, #0
20028bd0:	f2c0 81f4 	blt.w	20028fbc <mbedtls_mpi_exp_mod+0x422>
20028bd4:	2100      	movs	r1, #0
20028bd6:	2301      	movs	r3, #1
20028bd8:	f44f 62c0 	mov.w	r2, #1536	@ 0x600
20028bdc:	a814      	add	r0, sp, #80	@ 0x50
20028bde:	e9cd 3108 	strd	r3, r1, [sp, #32]
20028be2:	e9cd 130a 	strd	r1, r3, [sp, #40]	@ 0x28
20028be6:	e9cd 110c 	strd	r1, r1, [sp, #48]	@ 0x30
20028bea:	e9cd 310e 	strd	r3, r1, [sp, #56]	@ 0x38
20028bee:	9110      	str	r1, [sp, #64]	@ 0x40
20028bf0:	f001 ff1c 	bl	2002aa2c <memset>
20028bf4:	9803      	ldr	r0, [sp, #12]
20028bf6:	f7ff fa26 	bl	20028046 <mbedtls_mpi_bitlen>
20028bfa:	f5b0 7f28 	cmp.w	r0, #672	@ 0x2a0
20028bfe:	d233      	bcs.n	20028c68 <mbedtls_mpi_exp_mod+0xce>
20028c00:	28ef      	cmp	r0, #239	@ 0xef
20028c02:	d833      	bhi.n	20028c6c <mbedtls_mpi_exp_mod+0xd2>
20028c04:	284f      	cmp	r0, #79	@ 0x4f
20028c06:	d833      	bhi.n	20028c70 <mbedtls_mpi_exp_mod+0xd6>
20028c08:	9b05      	ldr	r3, [sp, #20]
20028c0a:	2818      	cmp	r0, #24
20028c0c:	bf34      	ite	cc
20028c0e:	461e      	movcc	r6, r3
20028c10:	2603      	movcs	r6, #3
20028c12:	6863      	ldr	r3, [r4, #4]
20028c14:	4628      	mov	r0, r5
20028c16:	f103 0901 	add.w	r9, r3, #1
20028c1a:	4649      	mov	r1, r9
20028c1c:	f7ff f98a 	bl	20027f34 <mbedtls_mpi_grow>
20028c20:	b340      	cbz	r0, 20028c74 <mbedtls_mpi_exp_mod+0xda>
20028c22:	f06f 090f 	mvn.w	r9, #15
20028c26:	2301      	movs	r3, #1
20028c28:	1e74      	subs	r4, r6, #1
20028c2a:	fa03 f506 	lsl.w	r5, r3, r6
20028c2e:	260c      	movs	r6, #12
20028c30:	fa03 f404 	lsl.w	r4, r3, r4
20028c34:	af14      	add	r7, sp, #80	@ 0x50
20028c36:	42a5      	cmp	r5, r4
20028c38:	f200 81ba 	bhi.w	20028fb0 <mbedtls_mpi_exp_mod+0x416>
20028c3c:	a817      	add	r0, sp, #92	@ 0x5c
20028c3e:	f7ff f964 	bl	20027f0a <mbedtls_mpi_free>
20028c42:	a80b      	add	r0, sp, #44	@ 0x2c
20028c44:	f7ff f961 	bl	20027f0a <mbedtls_mpi_free>
20028c48:	a80e      	add	r0, sp, #56	@ 0x38
20028c4a:	f7ff f95e 	bl	20027f0a <mbedtls_mpi_free>
20028c4e:	f8dd 3678 	ldr.w	r3, [sp, #1656]	@ 0x678
20028c52:	b10b      	cbz	r3, 20028c58 <mbedtls_mpi_exp_mod+0xbe>
20028c54:	689b      	ldr	r3, [r3, #8]
20028c56:	b913      	cbnz	r3, 20028c5e <mbedtls_mpi_exp_mod+0xc4>
20028c58:	a808      	add	r0, sp, #32
20028c5a:	f7ff f956 	bl	20027f0a <mbedtls_mpi_free>
20028c5e:	4648      	mov	r0, r9
20028c60:	f20d 6d54 	addw	sp, sp, #1620	@ 0x654
20028c64:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
20028c68:	2606      	movs	r6, #6
20028c6a:	e7d2      	b.n	20028c12 <mbedtls_mpi_exp_mod+0x78>
20028c6c:	2605      	movs	r6, #5
20028c6e:	e7d0      	b.n	20028c12 <mbedtls_mpi_exp_mod+0x78>
20028c70:	2604      	movs	r6, #4
20028c72:	e7ce      	b.n	20028c12 <mbedtls_mpi_exp_mod+0x78>
20028c74:	4649      	mov	r1, r9
20028c76:	a817      	add	r0, sp, #92	@ 0x5c
20028c78:	f7ff f95c 	bl	20027f34 <mbedtls_mpi_grow>
20028c7c:	2800      	cmp	r0, #0
20028c7e:	d1d0      	bne.n	20028c22 <mbedtls_mpi_exp_mod+0x88>
20028c80:	ea4f 0149 	mov.w	r1, r9, lsl #1
20028c84:	a80b      	add	r0, sp, #44	@ 0x2c
20028c86:	f7ff f955 	bl	20027f34 <mbedtls_mpi_grow>
20028c8a:	2800      	cmp	r0, #0
20028c8c:	d1c9      	bne.n	20028c22 <mbedtls_mpi_exp_mod+0x88>
20028c8e:	f8d8 3000 	ldr.w	r3, [r8]
20028c92:	9304      	str	r3, [sp, #16]
20028c94:	3301      	adds	r3, #1
20028c96:	d109      	bne.n	20028cac <mbedtls_mpi_exp_mod+0x112>
20028c98:	4641      	mov	r1, r8
20028c9a:	a80e      	add	r0, sp, #56	@ 0x38
20028c9c:	f7ff f976 	bl	20027f8c <mbedtls_mpi_copy>
20028ca0:	2800      	cmp	r0, #0
20028ca2:	d1be      	bne.n	20028c22 <mbedtls_mpi_exp_mod+0x88>
20028ca4:	2301      	movs	r3, #1
20028ca6:	f10d 0838 	add.w	r8, sp, #56	@ 0x38
20028caa:	930e      	str	r3, [sp, #56]	@ 0x38
20028cac:	f8dd 3678 	ldr.w	r3, [sp, #1656]	@ 0x678
20028cb0:	b11b      	cbz	r3, 20028cba <mbedtls_mpi_exp_mod+0x120>
20028cb2:	689b      	ldr	r3, [r3, #8]
20028cb4:	2b00      	cmp	r3, #0
20028cb6:	f040 80ab 	bne.w	20028e10 <mbedtls_mpi_exp_mod+0x276>
20028cba:	2101      	movs	r1, #1
20028cbc:	a808      	add	r0, sp, #32
20028cbe:	f7ff f98e 	bl	20027fde <mbedtls_mpi_lset>
20028cc2:	2800      	cmp	r0, #0
20028cc4:	d1ad      	bne.n	20028c22 <mbedtls_mpi_exp_mod+0x88>
20028cc6:	6861      	ldr	r1, [r4, #4]
20028cc8:	a808      	add	r0, sp, #32
20028cca:	0189      	lsls	r1, r1, #6
20028ccc:	f7ff fa36 	bl	2002813c <mbedtls_mpi_shift_l>
20028cd0:	2800      	cmp	r0, #0
20028cd2:	d1a6      	bne.n	20028c22 <mbedtls_mpi_exp_mod+0x88>
20028cd4:	a908      	add	r1, sp, #32
20028cd6:	4622      	mov	r2, r4
20028cd8:	4608      	mov	r0, r1
20028cda:	f7ff ff2c 	bl	20028b36 <mbedtls_mpi_mod_mpi>
20028cde:	4681      	mov	r9, r0
20028ce0:	2800      	cmp	r0, #0
20028ce2:	d1a0      	bne.n	20028c26 <mbedtls_mpi_exp_mod+0x8c>
20028ce4:	f8dd 3678 	ldr.w	r3, [sp, #1656]	@ 0x678
20028ce8:	b13b      	cbz	r3, 20028cfa <mbedtls_mpi_exp_mod+0x160>
20028cea:	f8dd 2678 	ldr.w	r2, [sp, #1656]	@ 0x678
20028cee:	ab08      	add	r3, sp, #32
20028cf0:	cb03      	ldmia	r3!, {r0, r1}
20028cf2:	6010      	str	r0, [r2, #0]
20028cf4:	6818      	ldr	r0, [r3, #0]
20028cf6:	6051      	str	r1, [r2, #4]
20028cf8:	6090      	str	r0, [r2, #8]
20028cfa:	4621      	mov	r1, r4
20028cfc:	4640      	mov	r0, r8
20028cfe:	f7ff fb55 	bl	200283ac <mbedtls_mpi_cmp_mpi>
20028d02:	2800      	cmp	r0, #0
20028d04:	f2c0 808d 	blt.w	20028e22 <mbedtls_mpi_exp_mod+0x288>
20028d08:	4622      	mov	r2, r4
20028d0a:	4641      	mov	r1, r8
20028d0c:	a817      	add	r0, sp, #92	@ 0x5c
20028d0e:	f7ff ff12 	bl	20028b36 <mbedtls_mpi_mod_mpi>
20028d12:	4681      	mov	r9, r0
20028d14:	2800      	cmp	r0, #0
20028d16:	d186      	bne.n	20028c26 <mbedtls_mpi_exp_mod+0x8c>
20028d18:	1cba      	adds	r2, r7, #2
20028d1a:	0052      	lsls	r2, r2, #1
20028d1c:	f002 0208 	and.w	r2, r2, #8
20028d20:	443a      	add	r2, r7
20028d22:	fb02 f307 	mul.w	r3, r2, r7
20028d26:	f1c3 0302 	rsb	r3, r3, #2
20028d2a:	4353      	muls	r3, r2
20028d2c:	fb03 f207 	mul.w	r2, r3, r7
20028d30:	f1c2 0202 	rsb	r2, r2, #2
20028d34:	4353      	muls	r3, r2
20028d36:	435f      	muls	r7, r3
20028d38:	3f02      	subs	r7, #2
20028d3a:	437b      	muls	r3, r7
20028d3c:	f10d 0b2c 	add.w	fp, sp, #44	@ 0x2c
20028d40:	4622      	mov	r2, r4
20028d42:	f8cd b000 	str.w	fp, [sp]
20028d46:	a908      	add	r1, sp, #32
20028d48:	a817      	add	r0, sp, #92	@ 0x5c
20028d4a:	9302      	str	r3, [sp, #8]
20028d4c:	f7ff fac4 	bl	200282d8 <mpi_montmul>
20028d50:	2800      	cmp	r0, #0
20028d52:	f040 80e4 	bne.w	20028f1e <mbedtls_mpi_exp_mod+0x384>
20028d56:	4628      	mov	r0, r5
20028d58:	a908      	add	r1, sp, #32
20028d5a:	f7ff f917 	bl	20027f8c <mbedtls_mpi_copy>
20028d5e:	2800      	cmp	r0, #0
20028d60:	f47f af5f 	bne.w	20028c22 <mbedtls_mpi_exp_mod+0x88>
20028d64:	2301      	movs	r3, #1
20028d66:	aa07      	add	r2, sp, #28
20028d68:	e9cd 3311 	strd	r3, r3, [sp, #68]	@ 0x44
20028d6c:	9307      	str	r3, [sp, #28]
20028d6e:	9213      	str	r2, [sp, #76]	@ 0x4c
20028d70:	4628      	mov	r0, r5
20028d72:	4622      	mov	r2, r4
20028d74:	9b02      	ldr	r3, [sp, #8]
20028d76:	f8cd b000 	str.w	fp, [sp]
20028d7a:	a911      	add	r1, sp, #68	@ 0x44
20028d7c:	f7ff faac 	bl	200282d8 <mpi_montmul>
20028d80:	2800      	cmp	r0, #0
20028d82:	f040 80cc 	bne.w	20028f1e <mbedtls_mpi_exp_mod+0x384>
20028d86:	2e01      	cmp	r6, #1
20028d88:	d153      	bne.n	20028e32 <mbedtls_mpi_exp_mod+0x298>
20028d8a:	f04f 0900 	mov.w	r9, #0
20028d8e:	464f      	mov	r7, r9
20028d90:	46ca      	mov	sl, r9
20028d92:	46c8      	mov	r8, r9
20028d94:	9b03      	ldr	r3, [sp, #12]
20028d96:	f8d3 b004 	ldr.w	fp, [r3, #4]
20028d9a:	f1ba 0f00 	cmp.w	sl, #0
20028d9e:	f040 80a1 	bne.w	20028ee4 <mbedtls_mpi_exp_mod+0x34a>
20028da2:	f1bb 0f00 	cmp.w	fp, #0
20028da6:	f040 8099 	bne.w	20028edc <mbedtls_mpi_exp_mod+0x342>
20028daa:	f04f 0a01 	mov.w	sl, #1
20028dae:	f10d 092c 	add.w	r9, sp, #44	@ 0x2c
20028db2:	fa0a fa06 	lsl.w	sl, sl, r6
20028db6:	45bb      	cmp	fp, r7
20028db8:	f040 80dd 	bne.w	20028f76 <mbedtls_mpi_exp_mod+0x3dc>
20028dbc:	2301      	movs	r3, #1
20028dbe:	aa07      	add	r2, sp, #28
20028dc0:	e9cd 3311 	strd	r3, r3, [sp, #68]	@ 0x44
20028dc4:	9307      	str	r3, [sp, #28]
20028dc6:	9213      	str	r2, [sp, #76]	@ 0x4c
20028dc8:	f8cd 9000 	str.w	r9, [sp]
20028dcc:	4622      	mov	r2, r4
20028dce:	4628      	mov	r0, r5
20028dd0:	9b02      	ldr	r3, [sp, #8]
20028dd2:	a911      	add	r1, sp, #68	@ 0x44
20028dd4:	f7ff fa80 	bl	200282d8 <mpi_montmul>
20028dd8:	4681      	mov	r9, r0
20028dda:	2800      	cmp	r0, #0
20028ddc:	f040 809f 	bne.w	20028f1e <mbedtls_mpi_exp_mod+0x384>
20028de0:	9b04      	ldr	r3, [sp, #16]
20028de2:	3301      	adds	r3, #1
20028de4:	f47f af1f 	bne.w	20028c26 <mbedtls_mpi_exp_mod+0x8c>
20028de8:	9b03      	ldr	r3, [sp, #12]
20028dea:	685b      	ldr	r3, [r3, #4]
20028dec:	2b00      	cmp	r3, #0
20028dee:	f43f af1a 	beq.w	20028c26 <mbedtls_mpi_exp_mod+0x8c>
20028df2:	9b03      	ldr	r3, [sp, #12]
20028df4:	689b      	ldr	r3, [r3, #8]
20028df6:	681b      	ldr	r3, [r3, #0]
20028df8:	07db      	lsls	r3, r3, #31
20028dfa:	f57f af14 	bpl.w	20028c26 <mbedtls_mpi_exp_mod+0x8c>
20028dfe:	9b04      	ldr	r3, [sp, #16]
20028e00:	462a      	mov	r2, r5
20028e02:	4621      	mov	r1, r4
20028e04:	4628      	mov	r0, r5
20028e06:	602b      	str	r3, [r5, #0]
20028e08:	f7ff fbbd 	bl	20028586 <mbedtls_mpi_add_mpi>
20028e0c:	4681      	mov	r9, r0
20028e0e:	e70a      	b.n	20028c26 <mbedtls_mpi_exp_mod+0x8c>
20028e10:	f8dd 2678 	ldr.w	r2, [sp, #1656]	@ 0x678
20028e14:	ab08      	add	r3, sp, #32
20028e16:	6810      	ldr	r0, [r2, #0]
20028e18:	6851      	ldr	r1, [r2, #4]
20028e1a:	c303      	stmia	r3!, {r0, r1}
20028e1c:	6890      	ldr	r0, [r2, #8]
20028e1e:	6018      	str	r0, [r3, #0]
20028e20:	e76b      	b.n	20028cfa <mbedtls_mpi_exp_mod+0x160>
20028e22:	4641      	mov	r1, r8
20028e24:	a817      	add	r0, sp, #92	@ 0x5c
20028e26:	f7ff f8b1 	bl	20027f8c <mbedtls_mpi_copy>
20028e2a:	2800      	cmp	r0, #0
20028e2c:	f43f af74 	beq.w	20028d18 <mbedtls_mpi_exp_mod+0x17e>
20028e30:	e6f7      	b.n	20028c22 <mbedtls_mpi_exp_mod+0x88>
20028e32:	f04f 0a0c 	mov.w	sl, #12
20028e36:	1e77      	subs	r7, r6, #1
20028e38:	6861      	ldr	r1, [r4, #4]
20028e3a:	fa0a fa07 	lsl.w	sl, sl, r7
20028e3e:	f10d 0950 	add.w	r9, sp, #80	@ 0x50
20028e42:	44d1      	add	r9, sl
20028e44:	4648      	mov	r0, r9
20028e46:	3101      	adds	r1, #1
20028e48:	f7ff f874 	bl	20027f34 <mbedtls_mpi_grow>
20028e4c:	2800      	cmp	r0, #0
20028e4e:	f47f aee8 	bne.w	20028c22 <mbedtls_mpi_exp_mod+0x88>
20028e52:	4648      	mov	r0, r9
20028e54:	a917      	add	r1, sp, #92	@ 0x5c
20028e56:	f7ff f899 	bl	20027f8c <mbedtls_mpi_copy>
20028e5a:	2800      	cmp	r0, #0
20028e5c:	f47f aee1 	bne.w	20028c22 <mbedtls_mpi_exp_mod+0x88>
20028e60:	4680      	mov	r8, r0
20028e62:	4622      	mov	r2, r4
20028e64:	4649      	mov	r1, r9
20028e66:	4648      	mov	r0, r9
20028e68:	9b02      	ldr	r3, [sp, #8]
20028e6a:	f8cd b000 	str.w	fp, [sp]
20028e6e:	f7ff fa33 	bl	200282d8 <mpi_montmul>
20028e72:	2800      	cmp	r0, #0
20028e74:	d153      	bne.n	20028f1e <mbedtls_mpi_exp_mod+0x384>
20028e76:	f108 0801 	add.w	r8, r8, #1
20028e7a:	45b8      	cmp	r8, r7
20028e7c:	d3f1      	bcc.n	20028e62 <mbedtls_mpi_exp_mod+0x2c8>
20028e7e:	f04f 0801 	mov.w	r8, #1
20028e82:	f10d 0b50 	add.w	fp, sp, #80	@ 0x50
20028e86:	fa08 f707 	lsl.w	r7, r8, r7
20028e8a:	4447      	add	r7, r8
20028e8c:	44d3      	add	fp, sl
20028e8e:	fa08 f806 	lsl.w	r8, r8, r6
20028e92:	f10d 0a2c 	add.w	sl, sp, #44	@ 0x2c
20028e96:	45b8      	cmp	r8, r7
20028e98:	f67f af77 	bls.w	20028d8a <mbedtls_mpi_exp_mod+0x1f0>
20028e9c:	6861      	ldr	r1, [r4, #4]
20028e9e:	f10b 090c 	add.w	r9, fp, #12
20028ea2:	4648      	mov	r0, r9
20028ea4:	3101      	adds	r1, #1
20028ea6:	f7ff f845 	bl	20027f34 <mbedtls_mpi_grow>
20028eaa:	2800      	cmp	r0, #0
20028eac:	f47f aeb9 	bne.w	20028c22 <mbedtls_mpi_exp_mod+0x88>
20028eb0:	4659      	mov	r1, fp
20028eb2:	4648      	mov	r0, r9
20028eb4:	f7ff f86a 	bl	20027f8c <mbedtls_mpi_copy>
20028eb8:	2800      	cmp	r0, #0
20028eba:	f47f aeb2 	bne.w	20028c22 <mbedtls_mpi_exp_mod+0x88>
20028ebe:	4622      	mov	r2, r4
20028ec0:	4648      	mov	r0, r9
20028ec2:	9b02      	ldr	r3, [sp, #8]
20028ec4:	f8cd a000 	str.w	sl, [sp]
20028ec8:	a917      	add	r1, sp, #92	@ 0x5c
20028eca:	f7ff fa05 	bl	200282d8 <mpi_montmul>
20028ece:	bb30      	cbnz	r0, 20028f1e <mbedtls_mpi_exp_mod+0x384>
20028ed0:	46cb      	mov	fp, r9
20028ed2:	3701      	adds	r7, #1
20028ed4:	e7df      	b.n	20028e96 <mbedtls_mpi_exp_mod+0x2fc>
20028ed6:	f04f 0902 	mov.w	r9, #2
20028eda:	e75e      	b.n	20028d9a <mbedtls_mpi_exp_mod+0x200>
20028edc:	f04f 0a20 	mov.w	sl, #32
20028ee0:	f10b 3bff 	add.w	fp, fp, #4294967295
20028ee4:	9b03      	ldr	r3, [sp, #12]
20028ee6:	f10a 3aff 	add.w	sl, sl, #4294967295
20028eea:	689b      	ldr	r3, [r3, #8]
20028eec:	f853 302b 	ldr.w	r3, [r3, fp, lsl #2]
20028ef0:	fa23 f30a 	lsr.w	r3, r3, sl
20028ef4:	f013 0301 	ands.w	r3, r3, #1
20028ef8:	d114      	bne.n	20028f24 <mbedtls_mpi_exp_mod+0x38a>
20028efa:	f1b9 0f00 	cmp.w	r9, #0
20028efe:	f43f af4c 	beq.w	20028d9a <mbedtls_mpi_exp_mod+0x200>
20028f02:	f1b9 0f01 	cmp.w	r9, #1
20028f06:	d10d      	bne.n	20028f24 <mbedtls_mpi_exp_mod+0x38a>
20028f08:	ab0b      	add	r3, sp, #44	@ 0x2c
20028f0a:	9300      	str	r3, [sp, #0]
20028f0c:	4622      	mov	r2, r4
20028f0e:	4629      	mov	r1, r5
20028f10:	4628      	mov	r0, r5
20028f12:	9b02      	ldr	r3, [sp, #8]
20028f14:	f7ff f9e0 	bl	200282d8 <mpi_montmul>
20028f18:	2800      	cmp	r0, #0
20028f1a:	f43f af3e 	beq.w	20028d9a <mbedtls_mpi_exp_mod+0x200>
20028f1e:	f06f 0903 	mvn.w	r9, #3
20028f22:	e680      	b.n	20028c26 <mbedtls_mpi_exp_mod+0x8c>
20028f24:	3701      	adds	r7, #1
20028f26:	1bf2      	subs	r2, r6, r7
20028f28:	4093      	lsls	r3, r2
20028f2a:	42be      	cmp	r6, r7
20028f2c:	ea48 0803 	orr.w	r8, r8, r3
20028f30:	d1d1      	bne.n	20028ed6 <mbedtls_mpi_exp_mod+0x33c>
20028f32:	f04f 0900 	mov.w	r9, #0
20028f36:	ab0b      	add	r3, sp, #44	@ 0x2c
20028f38:	9300      	str	r3, [sp, #0]
20028f3a:	4622      	mov	r2, r4
20028f3c:	4629      	mov	r1, r5
20028f3e:	4628      	mov	r0, r5
20028f40:	9b02      	ldr	r3, [sp, #8]
20028f42:	f7ff f9c9 	bl	200282d8 <mpi_montmul>
20028f46:	2800      	cmp	r0, #0
20028f48:	d1e9      	bne.n	20028f1e <mbedtls_mpi_exp_mod+0x384>
20028f4a:	f109 0901 	add.w	r9, r9, #1
20028f4e:	454f      	cmp	r7, r9
20028f50:	d8f1      	bhi.n	20028f36 <mbedtls_mpi_exp_mod+0x39c>
20028f52:	200c      	movs	r0, #12
20028f54:	ab0b      	add	r3, sp, #44	@ 0x2c
20028f56:	a914      	add	r1, sp, #80	@ 0x50
20028f58:	fb00 1108 	mla	r1, r0, r8, r1
20028f5c:	9300      	str	r3, [sp, #0]
20028f5e:	4622      	mov	r2, r4
20028f60:	4628      	mov	r0, r5
20028f62:	9b02      	ldr	r3, [sp, #8]
20028f64:	f7ff f9b8 	bl	200282d8 <mpi_montmul>
20028f68:	4607      	mov	r7, r0
20028f6a:	2800      	cmp	r0, #0
20028f6c:	d1d7      	bne.n	20028f1e <mbedtls_mpi_exp_mod+0x384>
20028f6e:	4680      	mov	r8, r0
20028f70:	f8dd 9014 	ldr.w	r9, [sp, #20]
20028f74:	e711      	b.n	20028d9a <mbedtls_mpi_exp_mod+0x200>
20028f76:	4622      	mov	r2, r4
20028f78:	4629      	mov	r1, r5
20028f7a:	4628      	mov	r0, r5
20028f7c:	9b02      	ldr	r3, [sp, #8]
20028f7e:	f8cd 9000 	str.w	r9, [sp]
20028f82:	f7ff f9a9 	bl	200282d8 <mpi_montmul>
20028f86:	2800      	cmp	r0, #0
20028f88:	d1c9      	bne.n	20028f1e <mbedtls_mpi_exp_mod+0x384>
20028f8a:	ea4f 0848 	mov.w	r8, r8, lsl #1
20028f8e:	ea18 0f0a 	tst.w	r8, sl
20028f92:	d102      	bne.n	20028f9a <mbedtls_mpi_exp_mod+0x400>
20028f94:	f10b 0b01 	add.w	fp, fp, #1
20028f98:	e70d      	b.n	20028db6 <mbedtls_mpi_exp_mod+0x21c>
20028f9a:	4622      	mov	r2, r4
20028f9c:	4628      	mov	r0, r5
20028f9e:	9b02      	ldr	r3, [sp, #8]
20028fa0:	f8cd 9000 	str.w	r9, [sp]
20028fa4:	a917      	add	r1, sp, #92	@ 0x5c
20028fa6:	f7ff f997 	bl	200282d8 <mpi_montmul>
20028faa:	2800      	cmp	r0, #0
20028fac:	d0f2      	beq.n	20028f94 <mbedtls_mpi_exp_mod+0x3fa>
20028fae:	e7b6      	b.n	20028f1e <mbedtls_mpi_exp_mod+0x384>
20028fb0:	fb06 7004 	mla	r0, r6, r4, r7
20028fb4:	f7fe ffa9 	bl	20027f0a <mbedtls_mpi_free>
20028fb8:	3401      	adds	r4, #1
20028fba:	e63c      	b.n	20028c36 <mbedtls_mpi_exp_mod+0x9c>
20028fbc:	f06f 0903 	mvn.w	r9, #3
20028fc0:	e64d      	b.n	20028c5e <mbedtls_mpi_exp_mod+0xc4>

20028fc2 <mbedtls_mpi_gcd>:
20028fc2:	b570      	push	{r4, r5, r6, lr}
20028fc4:	2300      	movs	r3, #0
20028fc6:	2401      	movs	r4, #1
20028fc8:	b086      	sub	sp, #24
20028fca:	4606      	mov	r6, r0
20028fcc:	4668      	mov	r0, sp
20028fce:	4615      	mov	r5, r2
20028fd0:	e9cd 4300 	strd	r4, r3, [sp]
20028fd4:	e9cd 3402 	strd	r3, r4, [sp, #8]
20028fd8:	e9cd 3304 	strd	r3, r3, [sp, #16]
20028fdc:	f7fe ffd6 	bl	20027f8c <mbedtls_mpi_copy>
20028fe0:	b150      	cbz	r0, 20028ff8 <mbedtls_mpi_gcd+0x36>
20028fe2:	f06f 040f 	mvn.w	r4, #15
20028fe6:	4668      	mov	r0, sp
20028fe8:	f7fe ff8f 	bl	20027f0a <mbedtls_mpi_free>
20028fec:	a803      	add	r0, sp, #12
20028fee:	f7fe ff8c 	bl	20027f0a <mbedtls_mpi_free>
20028ff2:	4620      	mov	r0, r4
20028ff4:	b006      	add	sp, #24
20028ff6:	bd70      	pop	{r4, r5, r6, pc}
20028ff8:	4629      	mov	r1, r5
20028ffa:	a803      	add	r0, sp, #12
20028ffc:	f7fe ffc6 	bl	20027f8c <mbedtls_mpi_copy>
20029000:	2800      	cmp	r0, #0
20029002:	d1ee      	bne.n	20028fe2 <mbedtls_mpi_gcd+0x20>
20029004:	4668      	mov	r0, sp
20029006:	f7ff f806 	bl	20028016 <mbedtls_mpi_lsb>
2002900a:	4605      	mov	r5, r0
2002900c:	a803      	add	r0, sp, #12
2002900e:	f7ff f802 	bl	20028016 <mbedtls_mpi_lsb>
20029012:	4285      	cmp	r5, r0
20029014:	bf28      	it	cs
20029016:	4605      	movcs	r5, r0
20029018:	4668      	mov	r0, sp
2002901a:	4629      	mov	r1, r5
2002901c:	f7ff f8e7 	bl	200281ee <mbedtls_mpi_shift_r>
20029020:	2800      	cmp	r0, #0
20029022:	d1de      	bne.n	20028fe2 <mbedtls_mpi_gcd+0x20>
20029024:	4629      	mov	r1, r5
20029026:	a803      	add	r0, sp, #12
20029028:	f7ff f8e1 	bl	200281ee <mbedtls_mpi_shift_r>
2002902c:	2800      	cmp	r0, #0
2002902e:	d1d8      	bne.n	20028fe2 <mbedtls_mpi_gcd+0x20>
20029030:	9403      	str	r4, [sp, #12]
20029032:	9400      	str	r4, [sp, #0]
20029034:	2100      	movs	r1, #0
20029036:	4668      	mov	r0, sp
20029038:	f7ff f9f9 	bl	2002842e <mbedtls_mpi_cmp_int>
2002903c:	b968      	cbnz	r0, 2002905a <mbedtls_mpi_gcd+0x98>
2002903e:	4629      	mov	r1, r5
20029040:	a803      	add	r0, sp, #12
20029042:	f7ff f87b 	bl	2002813c <mbedtls_mpi_shift_l>
20029046:	2800      	cmp	r0, #0
20029048:	d1cb      	bne.n	20028fe2 <mbedtls_mpi_gcd+0x20>
2002904a:	4630      	mov	r0, r6
2002904c:	a903      	add	r1, sp, #12
2002904e:	f7fe ff9d 	bl	20027f8c <mbedtls_mpi_copy>
20029052:	4604      	mov	r4, r0
20029054:	2800      	cmp	r0, #0
20029056:	d0c6      	beq.n	20028fe6 <mbedtls_mpi_gcd+0x24>
20029058:	e7c3      	b.n	20028fe2 <mbedtls_mpi_gcd+0x20>
2002905a:	4668      	mov	r0, sp
2002905c:	f7fe ffdb 	bl	20028016 <mbedtls_mpi_lsb>
20029060:	4601      	mov	r1, r0
20029062:	4668      	mov	r0, sp
20029064:	f7ff f8c3 	bl	200281ee <mbedtls_mpi_shift_r>
20029068:	2800      	cmp	r0, #0
2002906a:	d1ba      	bne.n	20028fe2 <mbedtls_mpi_gcd+0x20>
2002906c:	a803      	add	r0, sp, #12
2002906e:	f7fe ffd2 	bl	20028016 <mbedtls_mpi_lsb>
20029072:	4601      	mov	r1, r0
20029074:	a803      	add	r0, sp, #12
20029076:	f7ff f8ba 	bl	200281ee <mbedtls_mpi_shift_r>
2002907a:	2800      	cmp	r0, #0
2002907c:	d1b1      	bne.n	20028fe2 <mbedtls_mpi_gcd+0x20>
2002907e:	4668      	mov	r0, sp
20029080:	a903      	add	r1, sp, #12
20029082:	f7ff f993 	bl	200283ac <mbedtls_mpi_cmp_mpi>
20029086:	2800      	cmp	r0, #0
20029088:	db0e      	blt.n	200290a8 <mbedtls_mpi_gcd+0xe6>
2002908a:	4669      	mov	r1, sp
2002908c:	4668      	mov	r0, sp
2002908e:	aa03      	add	r2, sp, #12
20029090:	f7ff fa3c 	bl	2002850c <mbedtls_mpi_sub_abs>
20029094:	4604      	mov	r4, r0
20029096:	2800      	cmp	r0, #0
20029098:	d1a5      	bne.n	20028fe6 <mbedtls_mpi_gcd+0x24>
2002909a:	2101      	movs	r1, #1
2002909c:	4668      	mov	r0, sp
2002909e:	f7ff f8a6 	bl	200281ee <mbedtls_mpi_shift_r>
200290a2:	2800      	cmp	r0, #0
200290a4:	d0c6      	beq.n	20029034 <mbedtls_mpi_gcd+0x72>
200290a6:	e79c      	b.n	20028fe2 <mbedtls_mpi_gcd+0x20>
200290a8:	a903      	add	r1, sp, #12
200290aa:	466a      	mov	r2, sp
200290ac:	4608      	mov	r0, r1
200290ae:	f7ff fa2d 	bl	2002850c <mbedtls_mpi_sub_abs>
200290b2:	4604      	mov	r4, r0
200290b4:	2800      	cmp	r0, #0
200290b6:	d196      	bne.n	20028fe6 <mbedtls_mpi_gcd+0x24>
200290b8:	2101      	movs	r1, #1
200290ba:	a803      	add	r0, sp, #12
200290bc:	e7ef      	b.n	2002909e <mbedtls_mpi_gcd+0xdc>

200290be <mbedtls_mpi_fill_random>:
200290be:	b570      	push	{r4, r5, r6, lr}
200290c0:	f5b1 6f80 	cmp.w	r1, #1024	@ 0x400
200290c4:	4605      	mov	r5, r0
200290c6:	460c      	mov	r4, r1
200290c8:	4616      	mov	r6, r2
200290ca:	4618      	mov	r0, r3
200290cc:	f5ad 6d80 	sub.w	sp, sp, #1024	@ 0x400
200290d0:	d80f      	bhi.n	200290f2 <mbedtls_mpi_fill_random+0x34>
200290d2:	460a      	mov	r2, r1
200290d4:	4669      	mov	r1, sp
200290d6:	47b0      	blx	r6
200290d8:	b940      	cbnz	r0, 200290ec <mbedtls_mpi_fill_random+0x2e>
200290da:	4622      	mov	r2, r4
200290dc:	4669      	mov	r1, sp
200290de:	4628      	mov	r0, r5
200290e0:	f7fe ffd4 	bl	2002808c <mbedtls_mpi_read_binary>
200290e4:	2800      	cmp	r0, #0
200290e6:	bf18      	it	ne
200290e8:	f06f 000f 	mvnne.w	r0, #15
200290ec:	f50d 6d80 	add.w	sp, sp, #1024	@ 0x400
200290f0:	bd70      	pop	{r4, r5, r6, pc}
200290f2:	f06f 0003 	mvn.w	r0, #3
200290f6:	e7f9      	b.n	200290ec <mbedtls_mpi_fill_random+0x2e>

200290f8 <mbedtls_mpi_inv_mod>:
200290f8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
200290fc:	b09f      	sub	sp, #124	@ 0x7c
200290fe:	9001      	str	r0, [sp, #4]
20029100:	460f      	mov	r7, r1
20029102:	4610      	mov	r0, r2
20029104:	2101      	movs	r1, #1
20029106:	4692      	mov	sl, r2
20029108:	f7ff f991 	bl	2002842e <mbedtls_mpi_cmp_int>
2002910c:	2800      	cmp	r0, #0
2002910e:	f340 81b5 	ble.w	2002947c <mbedtls_mpi_inv_mod+0x384>
20029112:	2500      	movs	r5, #0
20029114:	2601      	movs	r6, #1
20029116:	4652      	mov	r2, sl
20029118:	4639      	mov	r1, r7
2002911a:	a803      	add	r0, sp, #12
2002911c:	e9cd 6506 	strd	r6, r5, [sp, #24]
20029120:	e9cd 5608 	strd	r5, r6, [sp, #32]
20029124:	e9cd 650c 	strd	r6, r5, [sp, #48]	@ 0x30
20029128:	e9cd 650f 	strd	r6, r5, [sp, #60]	@ 0x3c
2002912c:	e9cd 6503 	strd	r6, r5, [sp, #12]
20029130:	e9cd 6512 	strd	r6, r5, [sp, #72]	@ 0x48
20029134:	e9cd 5614 	strd	r5, r6, [sp, #80]	@ 0x50
20029138:	e9cd 6518 	strd	r6, r5, [sp, #96]	@ 0x60
2002913c:	e9cd 651b 	strd	r6, r5, [sp, #108]	@ 0x6c
20029140:	950a      	str	r5, [sp, #40]	@ 0x28
20029142:	9505      	str	r5, [sp, #20]
20029144:	9516      	str	r5, [sp, #88]	@ 0x58
20029146:	f7ff ff3c 	bl	20028fc2 <mbedtls_mpi_gcd>
2002914a:	4604      	mov	r4, r0
2002914c:	2800      	cmp	r0, #0
2002914e:	f040 8182 	bne.w	20029456 <mbedtls_mpi_inv_mod+0x35e>
20029152:	4631      	mov	r1, r6
20029154:	a803      	add	r0, sp, #12
20029156:	f7ff f96a 	bl	2002842e <mbedtls_mpi_cmp_int>
2002915a:	4605      	mov	r5, r0
2002915c:	2800      	cmp	r0, #0
2002915e:	f040 8171 	bne.w	20029444 <mbedtls_mpi_inv_mod+0x34c>
20029162:	4652      	mov	r2, sl
20029164:	4639      	mov	r1, r7
20029166:	a806      	add	r0, sp, #24
20029168:	f7ff fce5 	bl	20028b36 <mbedtls_mpi_mod_mpi>
2002916c:	4604      	mov	r4, r0
2002916e:	2800      	cmp	r0, #0
20029170:	f040 8171 	bne.w	20029456 <mbedtls_mpi_inv_mod+0x35e>
20029174:	900b      	str	r0, [sp, #44]	@ 0x2c
20029176:	a906      	add	r1, sp, #24
20029178:	a809      	add	r0, sp, #36	@ 0x24
2002917a:	f7fe ff07 	bl	20027f8c <mbedtls_mpi_copy>
2002917e:	f8dd 902c 	ldr.w	r9, [sp, #44]	@ 0x2c
20029182:	b920      	cbnz	r0, 2002918e <mbedtls_mpi_inv_mod+0x96>
20029184:	4651      	mov	r1, sl
20029186:	a812      	add	r0, sp, #72	@ 0x48
20029188:	f7fe ff00 	bl	20027f8c <mbedtls_mpi_copy>
2002918c:	b130      	cbz	r0, 2002919c <mbedtls_mpi_inv_mod+0xa4>
2002918e:	f04f 0b00 	mov.w	fp, #0
20029192:	465d      	mov	r5, fp
20029194:	46d8      	mov	r8, fp
20029196:	465e      	mov	r6, fp
20029198:	465f      	mov	r7, fp
2002919a:	e0f5      	b.n	20029388 <mbedtls_mpi_inv_mod+0x290>
2002919c:	9017      	str	r0, [sp, #92]	@ 0x5c
2002919e:	4651      	mov	r1, sl
200291a0:	a815      	add	r0, sp, #84	@ 0x54
200291a2:	f7fe fef3 	bl	20027f8c <mbedtls_mpi_copy>
200291a6:	f8dd 805c 	ldr.w	r8, [sp, #92]	@ 0x5c
200291aa:	2800      	cmp	r0, #0
200291ac:	f040 8159 	bne.w	20029462 <mbedtls_mpi_inv_mod+0x36a>
200291b0:	4631      	mov	r1, r6
200291b2:	900e      	str	r0, [sp, #56]	@ 0x38
200291b4:	a80c      	add	r0, sp, #48	@ 0x30
200291b6:	f7fe ff12 	bl	20027fde <mbedtls_mpi_lset>
200291ba:	9f0e      	ldr	r7, [sp, #56]	@ 0x38
200291bc:	4601      	mov	r1, r0
200291be:	2800      	cmp	r0, #0
200291c0:	f040 8152 	bne.w	20029468 <mbedtls_mpi_inv_mod+0x370>
200291c4:	9011      	str	r0, [sp, #68]	@ 0x44
200291c6:	a80f      	add	r0, sp, #60	@ 0x3c
200291c8:	f7fe ff09 	bl	20027fde <mbedtls_mpi_lset>
200291cc:	9e11      	ldr	r6, [sp, #68]	@ 0x44
200291ce:	4683      	mov	fp, r0
200291d0:	2800      	cmp	r0, #0
200291d2:	f040 814d 	bne.w	20029470 <mbedtls_mpi_inv_mod+0x378>
200291d6:	4601      	mov	r1, r0
200291d8:	901a      	str	r0, [sp, #104]	@ 0x68
200291da:	a818      	add	r0, sp, #96	@ 0x60
200291dc:	f7fe feff 	bl	20027fde <mbedtls_mpi_lset>
200291e0:	9d1a      	ldr	r5, [sp, #104]	@ 0x68
200291e2:	2800      	cmp	r0, #0
200291e4:	f040 8147 	bne.w	20029476 <mbedtls_mpi_inv_mod+0x37e>
200291e8:	2101      	movs	r1, #1
200291ea:	a81b      	add	r0, sp, #108	@ 0x6c
200291ec:	f8cd b074 	str.w	fp, [sp, #116]	@ 0x74
200291f0:	f7fe fef5 	bl	20027fde <mbedtls_mpi_lset>
200291f4:	f8dd b074 	ldr.w	fp, [sp, #116]	@ 0x74
200291f8:	2800      	cmp	r0, #0
200291fa:	f040 80c5 	bne.w	20029388 <mbedtls_mpi_inv_mod+0x290>
200291fe:	f8d9 2000 	ldr.w	r2, [r9]
20029202:	07d0      	lsls	r0, r2, #31
20029204:	d554      	bpl.n	200292b0 <mbedtls_mpi_inv_mod+0x1b8>
20029206:	f8d8 2000 	ldr.w	r2, [r8]
2002920a:	07d3      	lsls	r3, r2, #31
2002920c:	f140 8083 	bpl.w	20029316 <mbedtls_mpi_inv_mod+0x21e>
20029210:	a915      	add	r1, sp, #84	@ 0x54
20029212:	a809      	add	r0, sp, #36	@ 0x24
20029214:	f8cd 902c 	str.w	r9, [sp, #44]	@ 0x2c
20029218:	f8cd 805c 	str.w	r8, [sp, #92]	@ 0x5c
2002921c:	f7ff f8c6 	bl	200283ac <mbedtls_mpi_cmp_mpi>
20029220:	2800      	cmp	r0, #0
20029222:	f2c0 80b4 	blt.w	2002938e <mbedtls_mpi_inv_mod+0x296>
20029226:	a909      	add	r1, sp, #36	@ 0x24
20029228:	4608      	mov	r0, r1
2002922a:	aa15      	add	r2, sp, #84	@ 0x54
2002922c:	f7ff f9d1 	bl	200285d2 <mbedtls_mpi_sub_mpi>
20029230:	f8dd 902c 	ldr.w	r9, [sp, #44]	@ 0x2c
20029234:	4604      	mov	r4, r0
20029236:	2800      	cmp	r0, #0
20029238:	f040 80d1 	bne.w	200293de <mbedtls_mpi_inv_mod+0x2e6>
2002923c:	a90c      	add	r1, sp, #48	@ 0x30
2002923e:	4608      	mov	r0, r1
20029240:	aa18      	add	r2, sp, #96	@ 0x60
20029242:	970e      	str	r7, [sp, #56]	@ 0x38
20029244:	951a      	str	r5, [sp, #104]	@ 0x68
20029246:	f7ff f9c4 	bl	200285d2 <mbedtls_mpi_sub_mpi>
2002924a:	9f0e      	ldr	r7, [sp, #56]	@ 0x38
2002924c:	4604      	mov	r4, r0
2002924e:	2800      	cmp	r0, #0
20029250:	f040 80c5 	bne.w	200293de <mbedtls_mpi_inv_mod+0x2e6>
20029254:	a90f      	add	r1, sp, #60	@ 0x3c
20029256:	4608      	mov	r0, r1
20029258:	aa1b      	add	r2, sp, #108	@ 0x6c
2002925a:	9611      	str	r6, [sp, #68]	@ 0x44
2002925c:	f8cd b074 	str.w	fp, [sp, #116]	@ 0x74
20029260:	f7ff f9b7 	bl	200285d2 <mbedtls_mpi_sub_mpi>
20029264:	9e11      	ldr	r6, [sp, #68]	@ 0x44
20029266:	4604      	mov	r4, r0
20029268:	2800      	cmp	r0, #0
2002926a:	f040 80b8 	bne.w	200293de <mbedtls_mpi_inv_mod+0x2e6>
2002926e:	2100      	movs	r1, #0
20029270:	a809      	add	r0, sp, #36	@ 0x24
20029272:	f8cd 902c 	str.w	r9, [sp, #44]	@ 0x2c
20029276:	f7ff f8da 	bl	2002842e <mbedtls_mpi_cmp_int>
2002927a:	2800      	cmp	r0, #0
2002927c:	d1bf      	bne.n	200291fe <mbedtls_mpi_inv_mod+0x106>
2002927e:	2100      	movs	r1, #0
20029280:	a818      	add	r0, sp, #96	@ 0x60
20029282:	951a      	str	r5, [sp, #104]	@ 0x68
20029284:	f7ff f8d3 	bl	2002842e <mbedtls_mpi_cmp_int>
20029288:	2800      	cmp	r0, #0
2002928a:	f2c0 809e 	blt.w	200293ca <mbedtls_mpi_inv_mod+0x2d2>
2002928e:	4651      	mov	r1, sl
20029290:	a818      	add	r0, sp, #96	@ 0x60
20029292:	951a      	str	r5, [sp, #104]	@ 0x68
20029294:	f7ff f88a 	bl	200283ac <mbedtls_mpi_cmp_mpi>
20029298:	2800      	cmp	r0, #0
2002929a:	f280 80c8 	bge.w	2002942e <mbedtls_mpi_inv_mod+0x336>
2002929e:	9801      	ldr	r0, [sp, #4]
200292a0:	a918      	add	r1, sp, #96	@ 0x60
200292a2:	f7fe fe73 	bl	20027f8c <mbedtls_mpi_copy>
200292a6:	1e04      	subs	r4, r0, #0
200292a8:	bf18      	it	ne
200292aa:	f06f 040f 	mvnne.w	r4, #15
200292ae:	e096      	b.n	200293de <mbedtls_mpi_inv_mod+0x2e6>
200292b0:	2101      	movs	r1, #1
200292b2:	a809      	add	r0, sp, #36	@ 0x24
200292b4:	f8cd 902c 	str.w	r9, [sp, #44]	@ 0x2c
200292b8:	f7fe ff99 	bl	200281ee <mbedtls_mpi_shift_r>
200292bc:	f8dd 902c 	ldr.w	r9, [sp, #44]	@ 0x2c
200292c0:	2800      	cmp	r0, #0
200292c2:	d161      	bne.n	20029388 <mbedtls_mpi_inv_mod+0x290>
200292c4:	683a      	ldr	r2, [r7, #0]
200292c6:	07d3      	lsls	r3, r2, #31
200292c8:	d402      	bmi.n	200292d0 <mbedtls_mpi_inv_mod+0x1d8>
200292ca:	6832      	ldr	r2, [r6, #0]
200292cc:	07d4      	lsls	r4, r2, #31
200292ce:	d513      	bpl.n	200292f8 <mbedtls_mpi_inv_mod+0x200>
200292d0:	a90c      	add	r1, sp, #48	@ 0x30
200292d2:	4608      	mov	r0, r1
200292d4:	aa12      	add	r2, sp, #72	@ 0x48
200292d6:	970e      	str	r7, [sp, #56]	@ 0x38
200292d8:	f7ff f955 	bl	20028586 <mbedtls_mpi_add_mpi>
200292dc:	9f0e      	ldr	r7, [sp, #56]	@ 0x38
200292de:	4604      	mov	r4, r0
200292e0:	2800      	cmp	r0, #0
200292e2:	d17c      	bne.n	200293de <mbedtls_mpi_inv_mod+0x2e6>
200292e4:	a90f      	add	r1, sp, #60	@ 0x3c
200292e6:	4608      	mov	r0, r1
200292e8:	aa06      	add	r2, sp, #24
200292ea:	9611      	str	r6, [sp, #68]	@ 0x44
200292ec:	f7ff f971 	bl	200285d2 <mbedtls_mpi_sub_mpi>
200292f0:	9e11      	ldr	r6, [sp, #68]	@ 0x44
200292f2:	4604      	mov	r4, r0
200292f4:	2800      	cmp	r0, #0
200292f6:	d172      	bne.n	200293de <mbedtls_mpi_inv_mod+0x2e6>
200292f8:	2101      	movs	r1, #1
200292fa:	a80c      	add	r0, sp, #48	@ 0x30
200292fc:	970e      	str	r7, [sp, #56]	@ 0x38
200292fe:	f7fe ff76 	bl	200281ee <mbedtls_mpi_shift_r>
20029302:	9f0e      	ldr	r7, [sp, #56]	@ 0x38
20029304:	2800      	cmp	r0, #0
20029306:	d13f      	bne.n	20029388 <mbedtls_mpi_inv_mod+0x290>
20029308:	2101      	movs	r1, #1
2002930a:	a80f      	add	r0, sp, #60	@ 0x3c
2002930c:	9611      	str	r6, [sp, #68]	@ 0x44
2002930e:	f7fe ff6e 	bl	200281ee <mbedtls_mpi_shift_r>
20029312:	9e11      	ldr	r6, [sp, #68]	@ 0x44
20029314:	e770      	b.n	200291f8 <mbedtls_mpi_inv_mod+0x100>
20029316:	2101      	movs	r1, #1
20029318:	a815      	add	r0, sp, #84	@ 0x54
2002931a:	f8cd 805c 	str.w	r8, [sp, #92]	@ 0x5c
2002931e:	f7fe ff66 	bl	200281ee <mbedtls_mpi_shift_r>
20029322:	f8dd 805c 	ldr.w	r8, [sp, #92]	@ 0x5c
20029326:	2800      	cmp	r0, #0
20029328:	d12e      	bne.n	20029388 <mbedtls_mpi_inv_mod+0x290>
2002932a:	682a      	ldr	r2, [r5, #0]
2002932c:	07d1      	lsls	r1, r2, #31
2002932e:	d403      	bmi.n	20029338 <mbedtls_mpi_inv_mod+0x240>
20029330:	f8db 2000 	ldr.w	r2, [fp]
20029334:	07d2      	lsls	r2, r2, #31
20029336:	d515      	bpl.n	20029364 <mbedtls_mpi_inv_mod+0x26c>
20029338:	a918      	add	r1, sp, #96	@ 0x60
2002933a:	4608      	mov	r0, r1
2002933c:	aa12      	add	r2, sp, #72	@ 0x48
2002933e:	951a      	str	r5, [sp, #104]	@ 0x68
20029340:	f7ff f921 	bl	20028586 <mbedtls_mpi_add_mpi>
20029344:	9d1a      	ldr	r5, [sp, #104]	@ 0x68
20029346:	4604      	mov	r4, r0
20029348:	2800      	cmp	r0, #0
2002934a:	d148      	bne.n	200293de <mbedtls_mpi_inv_mod+0x2e6>
2002934c:	a91b      	add	r1, sp, #108	@ 0x6c
2002934e:	4608      	mov	r0, r1
20029350:	aa06      	add	r2, sp, #24
20029352:	f8cd b074 	str.w	fp, [sp, #116]	@ 0x74
20029356:	f7ff f93c 	bl	200285d2 <mbedtls_mpi_sub_mpi>
2002935a:	f8dd b074 	ldr.w	fp, [sp, #116]	@ 0x74
2002935e:	4604      	mov	r4, r0
20029360:	2800      	cmp	r0, #0
20029362:	d13c      	bne.n	200293de <mbedtls_mpi_inv_mod+0x2e6>
20029364:	2101      	movs	r1, #1
20029366:	a818      	add	r0, sp, #96	@ 0x60
20029368:	951a      	str	r5, [sp, #104]	@ 0x68
2002936a:	f7fe ff40 	bl	200281ee <mbedtls_mpi_shift_r>
2002936e:	9d1a      	ldr	r5, [sp, #104]	@ 0x68
20029370:	b950      	cbnz	r0, 20029388 <mbedtls_mpi_inv_mod+0x290>
20029372:	2101      	movs	r1, #1
20029374:	a81b      	add	r0, sp, #108	@ 0x6c
20029376:	f8cd b074 	str.w	fp, [sp, #116]	@ 0x74
2002937a:	f7fe ff38 	bl	200281ee <mbedtls_mpi_shift_r>
2002937e:	f8dd b074 	ldr.w	fp, [sp, #116]	@ 0x74
20029382:	2800      	cmp	r0, #0
20029384:	f43f af3f 	beq.w	20029206 <mbedtls_mpi_inv_mod+0x10e>
20029388:	f06f 040f 	mvn.w	r4, #15
2002938c:	e027      	b.n	200293de <mbedtls_mpi_inv_mod+0x2e6>
2002938e:	a915      	add	r1, sp, #84	@ 0x54
20029390:	4608      	mov	r0, r1
20029392:	aa09      	add	r2, sp, #36	@ 0x24
20029394:	f7ff f91d 	bl	200285d2 <mbedtls_mpi_sub_mpi>
20029398:	f8dd 805c 	ldr.w	r8, [sp, #92]	@ 0x5c
2002939c:	4604      	mov	r4, r0
2002939e:	b9f0      	cbnz	r0, 200293de <mbedtls_mpi_inv_mod+0x2e6>
200293a0:	a918      	add	r1, sp, #96	@ 0x60
200293a2:	4608      	mov	r0, r1
200293a4:	aa0c      	add	r2, sp, #48	@ 0x30
200293a6:	951a      	str	r5, [sp, #104]	@ 0x68
200293a8:	970e      	str	r7, [sp, #56]	@ 0x38
200293aa:	f7ff f912 	bl	200285d2 <mbedtls_mpi_sub_mpi>
200293ae:	9d1a      	ldr	r5, [sp, #104]	@ 0x68
200293b0:	4604      	mov	r4, r0
200293b2:	b9a0      	cbnz	r0, 200293de <mbedtls_mpi_inv_mod+0x2e6>
200293b4:	a91b      	add	r1, sp, #108	@ 0x6c
200293b6:	4608      	mov	r0, r1
200293b8:	aa0f      	add	r2, sp, #60	@ 0x3c
200293ba:	f8cd b074 	str.w	fp, [sp, #116]	@ 0x74
200293be:	9611      	str	r6, [sp, #68]	@ 0x44
200293c0:	f7ff f907 	bl	200285d2 <mbedtls_mpi_sub_mpi>
200293c4:	f8dd b074 	ldr.w	fp, [sp, #116]	@ 0x74
200293c8:	e74d      	b.n	20029266 <mbedtls_mpi_inv_mod+0x16e>
200293ca:	a918      	add	r1, sp, #96	@ 0x60
200293cc:	4652      	mov	r2, sl
200293ce:	4608      	mov	r0, r1
200293d0:	f7ff f8d9 	bl	20028586 <mbedtls_mpi_add_mpi>
200293d4:	9d1a      	ldr	r5, [sp, #104]	@ 0x68
200293d6:	4604      	mov	r4, r0
200293d8:	2800      	cmp	r0, #0
200293da:	f43f af50 	beq.w	2002927e <mbedtls_mpi_inv_mod+0x186>
200293de:	a806      	add	r0, sp, #24
200293e0:	f7fe fd93 	bl	20027f0a <mbedtls_mpi_free>
200293e4:	a809      	add	r0, sp, #36	@ 0x24
200293e6:	f8cd 902c 	str.w	r9, [sp, #44]	@ 0x2c
200293ea:	f7fe fd8e 	bl	20027f0a <mbedtls_mpi_free>
200293ee:	a80c      	add	r0, sp, #48	@ 0x30
200293f0:	970e      	str	r7, [sp, #56]	@ 0x38
200293f2:	f7fe fd8a 	bl	20027f0a <mbedtls_mpi_free>
200293f6:	a80f      	add	r0, sp, #60	@ 0x3c
200293f8:	9611      	str	r6, [sp, #68]	@ 0x44
200293fa:	f7fe fd86 	bl	20027f0a <mbedtls_mpi_free>
200293fe:	a803      	add	r0, sp, #12
20029400:	f7fe fd83 	bl	20027f0a <mbedtls_mpi_free>
20029404:	a812      	add	r0, sp, #72	@ 0x48
20029406:	f7fe fd80 	bl	20027f0a <mbedtls_mpi_free>
2002940a:	a815      	add	r0, sp, #84	@ 0x54
2002940c:	f8cd 805c 	str.w	r8, [sp, #92]	@ 0x5c
20029410:	f7fe fd7b 	bl	20027f0a <mbedtls_mpi_free>
20029414:	a818      	add	r0, sp, #96	@ 0x60
20029416:	951a      	str	r5, [sp, #104]	@ 0x68
20029418:	f7fe fd77 	bl	20027f0a <mbedtls_mpi_free>
2002941c:	a81b      	add	r0, sp, #108	@ 0x6c
2002941e:	f8cd b074 	str.w	fp, [sp, #116]	@ 0x74
20029422:	f7fe fd72 	bl	20027f0a <mbedtls_mpi_free>
20029426:	4620      	mov	r0, r4
20029428:	b01f      	add	sp, #124	@ 0x7c
2002942a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
2002942e:	a918      	add	r1, sp, #96	@ 0x60
20029430:	4652      	mov	r2, sl
20029432:	4608      	mov	r0, r1
20029434:	f7ff f8cd 	bl	200285d2 <mbedtls_mpi_sub_mpi>
20029438:	9d1a      	ldr	r5, [sp, #104]	@ 0x68
2002943a:	4604      	mov	r4, r0
2002943c:	2800      	cmp	r0, #0
2002943e:	f43f af26 	beq.w	2002928e <mbedtls_mpi_inv_mod+0x196>
20029442:	e7cc      	b.n	200293de <mbedtls_mpi_inv_mod+0x2e6>
20029444:	46a3      	mov	fp, r4
20029446:	4625      	mov	r5, r4
20029448:	46a0      	mov	r8, r4
2002944a:	4626      	mov	r6, r4
2002944c:	4627      	mov	r7, r4
2002944e:	46a1      	mov	r9, r4
20029450:	f06f 040d 	mvn.w	r4, #13
20029454:	e7c3      	b.n	200293de <mbedtls_mpi_inv_mod+0x2e6>
20029456:	46ab      	mov	fp, r5
20029458:	46a8      	mov	r8, r5
2002945a:	462e      	mov	r6, r5
2002945c:	462f      	mov	r7, r5
2002945e:	46a9      	mov	r9, r5
20029460:	e7bd      	b.n	200293de <mbedtls_mpi_inv_mod+0x2e6>
20029462:	46a3      	mov	fp, r4
20029464:	4625      	mov	r5, r4
20029466:	e696      	b.n	20029196 <mbedtls_mpi_inv_mod+0x9e>
20029468:	46a3      	mov	fp, r4
2002946a:	4625      	mov	r5, r4
2002946c:	4626      	mov	r6, r4
2002946e:	e78b      	b.n	20029388 <mbedtls_mpi_inv_mod+0x290>
20029470:	46a3      	mov	fp, r4
20029472:	4625      	mov	r5, r4
20029474:	e788      	b.n	20029388 <mbedtls_mpi_inv_mod+0x290>
20029476:	f04f 0b00 	mov.w	fp, #0
2002947a:	e785      	b.n	20029388 <mbedtls_mpi_inv_mod+0x290>
2002947c:	f06f 0403 	mvn.w	r4, #3
20029480:	e7d1      	b.n	20029426 <mbedtls_mpi_inv_mod+0x32e>
	...

20029484 <mbedtls_oid_get_pk_alg>:
20029484:	b570      	push	{r4, r5, r6, lr}
20029486:	460e      	mov	r6, r1
20029488:	4605      	mov	r5, r0
2002948a:	b110      	cbz	r0, 20029492 <mbedtls_oid_get_pk_alg+0xe>
2002948c:	4c09      	ldr	r4, [pc, #36]	@ (200294b4 <mbedtls_oid_get_pk_alg+0x30>)
2002948e:	6820      	ldr	r0, [r4, #0]
20029490:	b910      	cbnz	r0, 20029498 <mbedtls_oid_get_pk_alg+0x14>
20029492:	f06f 002d 	mvn.w	r0, #45	@ 0x2d
20029496:	bd70      	pop	{r4, r5, r6, pc}
20029498:	686b      	ldr	r3, [r5, #4]
2002949a:	6862      	ldr	r2, [r4, #4]
2002949c:	429a      	cmp	r2, r3
2002949e:	d103      	bne.n	200294a8 <mbedtls_oid_get_pk_alg+0x24>
200294a0:	68a9      	ldr	r1, [r5, #8]
200294a2:	f001 fab3 	bl	2002aa0c <memcmp>
200294a6:	b108      	cbz	r0, 200294ac <mbedtls_oid_get_pk_alg+0x28>
200294a8:	3414      	adds	r4, #20
200294aa:	e7f0      	b.n	2002948e <mbedtls_oid_get_pk_alg+0xa>
200294ac:	7c23      	ldrb	r3, [r4, #16]
200294ae:	7033      	strb	r3, [r6, #0]
200294b0:	e7f1      	b.n	20029496 <mbedtls_oid_get_pk_alg+0x12>
200294b2:	bf00      	nop
200294b4:	2002c41c 	.word	0x2002c41c

200294b8 <mbedtls_oid_get_md_alg>:
200294b8:	b570      	push	{r4, r5, r6, lr}
200294ba:	460e      	mov	r6, r1
200294bc:	4605      	mov	r5, r0
200294be:	b110      	cbz	r0, 200294c6 <mbedtls_oid_get_md_alg+0xe>
200294c0:	4c09      	ldr	r4, [pc, #36]	@ (200294e8 <mbedtls_oid_get_md_alg+0x30>)
200294c2:	6820      	ldr	r0, [r4, #0]
200294c4:	b910      	cbnz	r0, 200294cc <mbedtls_oid_get_md_alg+0x14>
200294c6:	f06f 002d 	mvn.w	r0, #45	@ 0x2d
200294ca:	bd70      	pop	{r4, r5, r6, pc}
200294cc:	686b      	ldr	r3, [r5, #4]
200294ce:	6862      	ldr	r2, [r4, #4]
200294d0:	429a      	cmp	r2, r3
200294d2:	d103      	bne.n	200294dc <mbedtls_oid_get_md_alg+0x24>
200294d4:	68a9      	ldr	r1, [r5, #8]
200294d6:	f001 fa99 	bl	2002aa0c <memcmp>
200294da:	b108      	cbz	r0, 200294e0 <mbedtls_oid_get_md_alg+0x28>
200294dc:	3414      	adds	r4, #20
200294de:	e7f0      	b.n	200294c2 <mbedtls_oid_get_md_alg+0xa>
200294e0:	7c23      	ldrb	r3, [r4, #16]
200294e2:	7033      	strb	r3, [r6, #0]
200294e4:	e7f1      	b.n	200294ca <mbedtls_oid_get_md_alg+0x12>
200294e6:	bf00      	nop
200294e8:	2002c3b8 	.word	0x2002c3b8

200294ec <mbedtls_oid_get_oid_by_md>:
200294ec:	b530      	push	{r4, r5, lr}
200294ee:	4b08      	ldr	r3, [pc, #32]	@ (20029510 <mbedtls_oid_get_oid_by_md+0x24>)
200294f0:	681c      	ldr	r4, [r3, #0]
200294f2:	b914      	cbnz	r4, 200294fa <mbedtls_oid_get_oid_by_md+0xe>
200294f4:	f06f 002d 	mvn.w	r0, #45	@ 0x2d
200294f8:	e006      	b.n	20029508 <mbedtls_oid_get_oid_by_md+0x1c>
200294fa:	7c1d      	ldrb	r5, [r3, #16]
200294fc:	4285      	cmp	r5, r0
200294fe:	d104      	bne.n	2002950a <mbedtls_oid_get_oid_by_md+0x1e>
20029500:	2000      	movs	r0, #0
20029502:	600c      	str	r4, [r1, #0]
20029504:	685b      	ldr	r3, [r3, #4]
20029506:	6013      	str	r3, [r2, #0]
20029508:	bd30      	pop	{r4, r5, pc}
2002950a:	3314      	adds	r3, #20
2002950c:	e7f0      	b.n	200294f0 <mbedtls_oid_get_oid_by_md+0x4>
2002950e:	bf00      	nop
20029510:	2002c3b8 	.word	0x2002c3b8

20029514 <mbedtls_pk_init>:
20029514:	b110      	cbz	r0, 2002951c <mbedtls_pk_init+0x8>
20029516:	2300      	movs	r3, #0
20029518:	e9c0 3300 	strd	r3, r3, [r0]
2002951c:	4770      	bx	lr

2002951e <mbedtls_pk_free>:
2002951e:	b510      	push	{r4, lr}
20029520:	4604      	mov	r4, r0
20029522:	b160      	cbz	r0, 2002953e <mbedtls_pk_free+0x20>
20029524:	6803      	ldr	r3, [r0, #0]
20029526:	b153      	cbz	r3, 2002953e <mbedtls_pk_free+0x20>
20029528:	6a9b      	ldr	r3, [r3, #40]	@ 0x28
2002952a:	6840      	ldr	r0, [r0, #4]
2002952c:	4798      	blx	r3
2002952e:	2100      	movs	r1, #0
20029530:	f104 0308 	add.w	r3, r4, #8
20029534:	4622      	mov	r2, r4
20029536:	3401      	adds	r4, #1
20029538:	429c      	cmp	r4, r3
2002953a:	7011      	strb	r1, [r2, #0]
2002953c:	d1fa      	bne.n	20029534 <mbedtls_pk_free+0x16>
2002953e:	bd10      	pop	{r4, pc}

20029540 <mbedtls_pk_info_from_type>:
20029540:	2801      	cmp	r0, #1
20029542:	4802      	ldr	r0, [pc, #8]	@ (2002954c <mbedtls_pk_info_from_type+0xc>)
20029544:	bf18      	it	ne
20029546:	2000      	movne	r0, #0
20029548:	4770      	bx	lr
2002954a:	bf00      	nop
2002954c:	2002c46c 	.word	0x2002c46c

20029550 <mbedtls_pk_setup>:
20029550:	b570      	push	{r4, r5, r6, lr}
20029552:	460e      	mov	r6, r1
20029554:	4605      	mov	r5, r0
20029556:	b148      	cbz	r0, 2002956c <mbedtls_pk_setup+0x1c>
20029558:	b141      	cbz	r1, 2002956c <mbedtls_pk_setup+0x1c>
2002955a:	6804      	ldr	r4, [r0, #0]
2002955c:	b934      	cbnz	r4, 2002956c <mbedtls_pk_setup+0x1c>
2002955e:	6a4b      	ldr	r3, [r1, #36]	@ 0x24
20029560:	4798      	blx	r3
20029562:	6068      	str	r0, [r5, #4]
20029564:	b120      	cbz	r0, 20029570 <mbedtls_pk_setup+0x20>
20029566:	4620      	mov	r0, r4
20029568:	602e      	str	r6, [r5, #0]
2002956a:	bd70      	pop	{r4, r5, r6, pc}
2002956c:	4801      	ldr	r0, [pc, #4]	@ (20029574 <mbedtls_pk_setup+0x24>)
2002956e:	e7fc      	b.n	2002956a <mbedtls_pk_setup+0x1a>
20029570:	4801      	ldr	r0, [pc, #4]	@ (20029578 <mbedtls_pk_setup+0x28>)
20029572:	e7fa      	b.n	2002956a <mbedtls_pk_setup+0x1a>
20029574:	ffffc180 	.word	0xffffc180
20029578:	ffffc080 	.word	0xffffc080

2002957c <mbedtls_pk_verify>:
2002957c:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
20029580:	460d      	mov	r5, r1
20029582:	e9dd 8908 	ldrd	r8, r9, [sp, #32]
20029586:	4616      	mov	r6, r2
20029588:	4604      	mov	r4, r0
2002958a:	b910      	cbnz	r0, 20029592 <mbedtls_pk_verify+0x16>
2002958c:	480e      	ldr	r0, [pc, #56]	@ (200295c8 <mbedtls_pk_verify+0x4c>)
2002958e:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
20029592:	6802      	ldr	r2, [r0, #0]
20029594:	2a00      	cmp	r2, #0
20029596:	d0f9      	beq.n	2002958c <mbedtls_pk_verify+0x10>
20029598:	b93b      	cbnz	r3, 200295aa <mbedtls_pk_verify+0x2e>
2002959a:	4608      	mov	r0, r1
2002959c:	f7fc fd42 	bl	20026024 <mbedtls_md_info_from_type>
200295a0:	2800      	cmp	r0, #0
200295a2:	d0f3      	beq.n	2002958c <mbedtls_pk_verify+0x10>
200295a4:	f7fc fd4a 	bl	2002603c <mbedtls_md_get_size>
200295a8:	4603      	mov	r3, r0
200295aa:	6822      	ldr	r2, [r4, #0]
200295ac:	6917      	ldr	r7, [r2, #16]
200295ae:	b147      	cbz	r7, 200295c2 <mbedtls_pk_verify+0x46>
200295b0:	e9cd 8908 	strd	r8, r9, [sp, #32]
200295b4:	4632      	mov	r2, r6
200295b6:	4629      	mov	r1, r5
200295b8:	46bc      	mov	ip, r7
200295ba:	6860      	ldr	r0, [r4, #4]
200295bc:	e8bd 47f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
200295c0:	4760      	bx	ip
200295c2:	4802      	ldr	r0, [pc, #8]	@ (200295cc <mbedtls_pk_verify+0x50>)
200295c4:	e7e3      	b.n	2002958e <mbedtls_pk_verify+0x12>
200295c6:	bf00      	nop
200295c8:	ffffc180 	.word	0xffffc180
200295cc:	ffffc100 	.word	0xffffc100

200295d0 <pk_get_pk_alg>:
200295d0:	b530      	push	{r4, r5, lr}
200295d2:	4615      	mov	r5, r2
200295d4:	2200      	movs	r2, #0
200295d6:	b085      	sub	sp, #20
200295d8:	e9c3 2200 	strd	r2, r2, [r3]
200295dc:	609a      	str	r2, [r3, #8]
200295de:	aa01      	add	r2, sp, #4
200295e0:	461c      	mov	r4, r3
200295e2:	f7fe fa98 	bl	20027b16 <mbedtls_asn1_get_alg>
200295e6:	b118      	cbz	r0, 200295f0 <pk_get_pk_alg+0x20>
200295e8:	f5a0 506a 	sub.w	r0, r0, #14976	@ 0x3a80
200295ec:	b005      	add	sp, #20
200295ee:	bd30      	pop	{r4, r5, pc}
200295f0:	4629      	mov	r1, r5
200295f2:	a801      	add	r0, sp, #4
200295f4:	f7ff ff46 	bl	20029484 <mbedtls_oid_get_pk_alg>
200295f8:	b960      	cbnz	r0, 20029614 <pk_get_pk_alg+0x44>
200295fa:	782b      	ldrb	r3, [r5, #0]
200295fc:	2b01      	cmp	r3, #1
200295fe:	d1f5      	bne.n	200295ec <pk_get_pk_alg+0x1c>
20029600:	6823      	ldr	r3, [r4, #0]
20029602:	2b05      	cmp	r3, #5
20029604:	d000      	beq.n	20029608 <pk_get_pk_alg+0x38>
20029606:	b93b      	cbnz	r3, 20029618 <pk_get_pk_alg+0x48>
20029608:	6862      	ldr	r2, [r4, #4]
2002960a:	4b04      	ldr	r3, [pc, #16]	@ (2002961c <pk_get_pk_alg+0x4c>)
2002960c:	2a00      	cmp	r2, #0
2002960e:	bf18      	it	ne
20029610:	4618      	movne	r0, r3
20029612:	e7eb      	b.n	200295ec <pk_get_pk_alg+0x1c>
20029614:	4802      	ldr	r0, [pc, #8]	@ (20029620 <pk_get_pk_alg+0x50>)
20029616:	e7e9      	b.n	200295ec <pk_get_pk_alg+0x1c>
20029618:	4800      	ldr	r0, [pc, #0]	@ (2002961c <pk_get_pk_alg+0x4c>)
2002961a:	e7e7      	b.n	200295ec <pk_get_pk_alg+0x1c>
2002961c:	ffffc580 	.word	0xffffc580
20029620:	ffffc380 	.word	0xffffc380

20029624 <mbedtls_pk_parse_subpubkey>:
20029624:	2300      	movs	r3, #0
20029626:	e92d 45f0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, lr}
2002962a:	b087      	sub	sp, #28
2002962c:	4690      	mov	r8, r2
2002962e:	f88d 3003 	strb.w	r3, [sp, #3]
20029632:	aa01      	add	r2, sp, #4
20029634:	2330      	movs	r3, #48	@ 0x30
20029636:	4606      	mov	r6, r0
20029638:	f7fe fa32 	bl	20027aa0 <mbedtls_asn1_get_tag>
2002963c:	b128      	cbz	r0, 2002964a <mbedtls_pk_parse_subpubkey+0x26>
2002963e:	f5a0 5474 	sub.w	r4, r0, #15616	@ 0x3d00
20029642:	4620      	mov	r0, r4
20029644:	b007      	add	sp, #28
20029646:	e8bd 85f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, pc}
2002964a:	9b01      	ldr	r3, [sp, #4]
2002964c:	6837      	ldr	r7, [r6, #0]
2002964e:	4630      	mov	r0, r6
20029650:	441f      	add	r7, r3
20029652:	4639      	mov	r1, r7
20029654:	ab03      	add	r3, sp, #12
20029656:	f10d 0203 	add.w	r2, sp, #3
2002965a:	f7ff ffb9 	bl	200295d0 <pk_get_pk_alg>
2002965e:	4604      	mov	r4, r0
20029660:	2800      	cmp	r0, #0
20029662:	d1ee      	bne.n	20029642 <mbedtls_pk_parse_subpubkey+0x1e>
20029664:	4639      	mov	r1, r7
20029666:	4630      	mov	r0, r6
20029668:	aa01      	add	r2, sp, #4
2002966a:	f7fe fa40 	bl	20027aee <mbedtls_asn1_get_bitstring_null>
2002966e:	b110      	cbz	r0, 20029676 <mbedtls_pk_parse_subpubkey+0x52>
20029670:	f5a0 546c 	sub.w	r4, r0, #15104	@ 0x3b00
20029674:	e7e5      	b.n	20029642 <mbedtls_pk_parse_subpubkey+0x1e>
20029676:	6833      	ldr	r3, [r6, #0]
20029678:	9a01      	ldr	r2, [sp, #4]
2002967a:	4413      	add	r3, r2
2002967c:	429f      	cmp	r7, r3
2002967e:	d14b      	bne.n	20029718 <mbedtls_pk_parse_subpubkey+0xf4>
20029680:	f89d 0003 	ldrb.w	r0, [sp, #3]
20029684:	f7ff ff5c 	bl	20029540 <mbedtls_pk_info_from_type>
20029688:	4601      	mov	r1, r0
2002968a:	2800      	cmp	r0, #0
2002968c:	d046      	beq.n	2002971c <mbedtls_pk_parse_subpubkey+0xf8>
2002968e:	4640      	mov	r0, r8
20029690:	f7ff ff5e 	bl	20029550 <mbedtls_pk_setup>
20029694:	4604      	mov	r4, r0
20029696:	2800      	cmp	r0, #0
20029698:	d1d3      	bne.n	20029642 <mbedtls_pk_parse_subpubkey+0x1e>
2002969a:	f89d 3003 	ldrb.w	r3, [sp, #3]
2002969e:	2b01      	cmp	r3, #1
200296a0:	d138      	bne.n	20029714 <mbedtls_pk_parse_subpubkey+0xf0>
200296a2:	2330      	movs	r3, #48	@ 0x30
200296a4:	4639      	mov	r1, r7
200296a6:	4630      	mov	r0, r6
200296a8:	aa02      	add	r2, sp, #8
200296aa:	f8d8 5004 	ldr.w	r5, [r8, #4]
200296ae:	f7fe f9f7 	bl	20027aa0 <mbedtls_asn1_get_tag>
200296b2:	b138      	cbz	r0, 200296c4 <mbedtls_pk_parse_subpubkey+0xa0>
200296b4:	f5a0 556c 	sub.w	r5, r0, #15104	@ 0x3b00
200296b8:	bb3d      	cbnz	r5, 2002970a <mbedtls_pk_parse_subpubkey+0xe6>
200296ba:	6833      	ldr	r3, [r6, #0]
200296bc:	42bb      	cmp	r3, r7
200296be:	d0c0      	beq.n	20029642 <mbedtls_pk_parse_subpubkey+0x1e>
200296c0:	4d17      	ldr	r5, [pc, #92]	@ (20029720 <mbedtls_pk_parse_subpubkey+0xfc>)
200296c2:	e022      	b.n	2002970a <mbedtls_pk_parse_subpubkey+0xe6>
200296c4:	6833      	ldr	r3, [r6, #0]
200296c6:	9a02      	ldr	r2, [sp, #8]
200296c8:	4413      	add	r3, r2
200296ca:	429f      	cmp	r7, r3
200296cc:	d1f8      	bne.n	200296c0 <mbedtls_pk_parse_subpubkey+0x9c>
200296ce:	f105 0a08 	add.w	sl, r5, #8
200296d2:	4652      	mov	r2, sl
200296d4:	4639      	mov	r1, r7
200296d6:	4630      	mov	r0, r6
200296d8:	f7fe f9f6 	bl	20027ac8 <mbedtls_asn1_get_mpi>
200296dc:	2800      	cmp	r0, #0
200296de:	d1e9      	bne.n	200296b4 <mbedtls_pk_parse_subpubkey+0x90>
200296e0:	4639      	mov	r1, r7
200296e2:	4630      	mov	r0, r6
200296e4:	f105 0214 	add.w	r2, r5, #20
200296e8:	f7fe f9ee 	bl	20027ac8 <mbedtls_asn1_get_mpi>
200296ec:	2800      	cmp	r0, #0
200296ee:	d1e1      	bne.n	200296b4 <mbedtls_pk_parse_subpubkey+0x90>
200296f0:	6833      	ldr	r3, [r6, #0]
200296f2:	429f      	cmp	r7, r3
200296f4:	d1e4      	bne.n	200296c0 <mbedtls_pk_parse_subpubkey+0x9c>
200296f6:	4628      	mov	r0, r5
200296f8:	f000 f8c2 	bl	20029880 <mbedtls_rsa_check_pubkey>
200296fc:	b920      	cbnz	r0, 20029708 <mbedtls_pk_parse_subpubkey+0xe4>
200296fe:	4650      	mov	r0, sl
20029700:	f7fe fcbe 	bl	20028080 <mbedtls_mpi_size>
20029704:	6068      	str	r0, [r5, #4]
20029706:	e7d8      	b.n	200296ba <mbedtls_pk_parse_subpubkey+0x96>
20029708:	4d06      	ldr	r5, [pc, #24]	@ (20029724 <mbedtls_pk_parse_subpubkey+0x100>)
2002970a:	4640      	mov	r0, r8
2002970c:	f7ff ff07 	bl	2002951e <mbedtls_pk_free>
20029710:	462c      	mov	r4, r5
20029712:	e796      	b.n	20029642 <mbedtls_pk_parse_subpubkey+0x1e>
20029714:	4d04      	ldr	r5, [pc, #16]	@ (20029728 <mbedtls_pk_parse_subpubkey+0x104>)
20029716:	e7f8      	b.n	2002970a <mbedtls_pk_parse_subpubkey+0xe6>
20029718:	4c01      	ldr	r4, [pc, #4]	@ (20029720 <mbedtls_pk_parse_subpubkey+0xfc>)
2002971a:	e792      	b.n	20029642 <mbedtls_pk_parse_subpubkey+0x1e>
2002971c:	4c02      	ldr	r4, [pc, #8]	@ (20029728 <mbedtls_pk_parse_subpubkey+0x104>)
2002971e:	e790      	b.n	20029642 <mbedtls_pk_parse_subpubkey+0x1e>
20029720:	ffffc49a 	.word	0xffffc49a
20029724:	ffffc500 	.word	0xffffc500
20029728:	ffffc380 	.word	0xffffc380

2002972c <mbedtls_pk_parse_public_key>:
2002972c:	4613      	mov	r3, r2
2002972e:	b507      	push	{r0, r1, r2, lr}
20029730:	4602      	mov	r2, r0
20029732:	9101      	str	r1, [sp, #4]
20029734:	a801      	add	r0, sp, #4
20029736:	4419      	add	r1, r3
20029738:	f7ff ff74 	bl	20029624 <mbedtls_pk_parse_subpubkey>
2002973c:	b003      	add	sp, #12
2002973e:	f85d fb04 	ldr.w	pc, [sp], #4

20029742 <rsa_can_do>:
20029742:	2801      	cmp	r0, #1
20029744:	d002      	beq.n	2002974c <rsa_can_do+0xa>
20029746:	1f83      	subs	r3, r0, #6
20029748:	4258      	negs	r0, r3
2002974a:	4158      	adcs	r0, r3
2002974c:	4770      	bx	lr

2002974e <rsa_get_bitlen>:
2002974e:	6840      	ldr	r0, [r0, #4]
20029750:	00c0      	lsls	r0, r0, #3
20029752:	4770      	bx	lr

20029754 <rsa_debug>:
20029754:	2301      	movs	r3, #1
20029756:	4a06      	ldr	r2, [pc, #24]	@ (20029770 <rsa_debug+0x1c>)
20029758:	700b      	strb	r3, [r1, #0]
2002975a:	730b      	strb	r3, [r1, #12]
2002975c:	4b05      	ldr	r3, [pc, #20]	@ (20029774 <rsa_debug+0x20>)
2002975e:	604a      	str	r2, [r1, #4]
20029760:	f100 0208 	add.w	r2, r0, #8
20029764:	3014      	adds	r0, #20
20029766:	608a      	str	r2, [r1, #8]
20029768:	610b      	str	r3, [r1, #16]
2002976a:	6148      	str	r0, [r1, #20]
2002976c:	4770      	bx	lr
2002976e:	bf00      	nop
20029770:	2002b248 	.word	0x2002b248
20029774:	2002b24e 	.word	0x2002b24e

20029778 <rsa_free_wrap>:
20029778:	b510      	push	{r4, lr}
2002977a:	4604      	mov	r4, r0
2002977c:	f000 fe7c 	bl	2002a478 <mbedtls_rsa_free>
20029780:	4620      	mov	r0, r4
20029782:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
20029786:	f001 b88b 	b.w	2002a8a0 <free>

2002978a <rsa_alloc_wrap>:
2002978a:	b510      	push	{r4, lr}
2002978c:	21ac      	movs	r1, #172	@ 0xac
2002978e:	2001      	movs	r0, #1
20029790:	f001 f86a 	bl	2002a868 <calloc>
20029794:	4604      	mov	r4, r0
20029796:	b118      	cbz	r0, 200297a0 <rsa_alloc_wrap+0x16>
20029798:	2200      	movs	r2, #0
2002979a:	4611      	mov	r1, r2
2002979c:	f000 f862 	bl	20029864 <mbedtls_rsa_init>
200297a0:	4620      	mov	r0, r4
200297a2:	bd10      	pop	{r4, pc}

200297a4 <rsa_check_pair_wrap>:
200297a4:	f000 b99c 	b.w	20029ae0 <mbedtls_rsa_check_pub_priv>

200297a8 <rsa_encrypt_wrap>:
200297a8:	b4f0      	push	{r4, r5, r6, r7}
200297aa:	9f04      	ldr	r7, [sp, #16]
200297ac:	6846      	ldr	r6, [r0, #4]
200297ae:	460d      	mov	r5, r1
200297b0:	603e      	str	r6, [r7, #0]
200297b2:	9f05      	ldr	r7, [sp, #20]
200297b4:	4614      	mov	r4, r2
200297b6:	e9dd 1206 	ldrd	r1, r2, [sp, #24]
200297ba:	42be      	cmp	r6, r7
200297bc:	d806      	bhi.n	200297cc <rsa_encrypt_wrap+0x24>
200297be:	e9cd 5305 	strd	r5, r3, [sp, #20]
200297c2:	9404      	str	r4, [sp, #16]
200297c4:	2300      	movs	r3, #0
200297c6:	bcf0      	pop	{r4, r5, r6, r7}
200297c8:	f000 bbe2 	b.w	20029f90 <mbedtls_rsa_pkcs1_encrypt>
200297cc:	4801      	ldr	r0, [pc, #4]	@ (200297d4 <rsa_encrypt_wrap+0x2c>)
200297ce:	bcf0      	pop	{r4, r5, r6, r7}
200297d0:	4770      	bx	lr
200297d2:	bf00      	nop
200297d4:	ffffbc00 	.word	0xffffbc00

200297d8 <rsa_decrypt_wrap>:
200297d8:	b4f0      	push	{r4, r5, r6, r7}
200297da:	4616      	mov	r6, r2
200297dc:	6847      	ldr	r7, [r0, #4]
200297de:	460c      	mov	r4, r1
200297e0:	e9dd 5105 	ldrd	r5, r1, [sp, #20]
200297e4:	42b7      	cmp	r7, r6
200297e6:	9a07      	ldr	r2, [sp, #28]
200297e8:	d106      	bne.n	200297f8 <rsa_decrypt_wrap+0x20>
200297ea:	e9cd 3506 	strd	r3, r5, [sp, #24]
200297ee:	9405      	str	r4, [sp, #20]
200297f0:	2301      	movs	r3, #1
200297f2:	bcf0      	pop	{r4, r5, r6, r7}
200297f4:	f000 bc6e 	b.w	2002a0d4 <mbedtls_rsa_pkcs1_decrypt>
200297f8:	4801      	ldr	r0, [pc, #4]	@ (20029800 <rsa_decrypt_wrap+0x28>)
200297fa:	bcf0      	pop	{r4, r5, r6, r7}
200297fc:	4770      	bx	lr
200297fe:	bf00      	nop
20029800:	ffffbf80 	.word	0xffffbf80

20029804 <rsa_sign_wrap>:
20029804:	b4f0      	push	{r4, r5, r6, r7}
20029806:	460c      	mov	r4, r1
20029808:	4615      	mov	r5, r2
2002980a:	e9dd 1206 	ldrd	r1, r2, [sp, #24]
2002980e:	6847      	ldr	r7, [r0, #4]
20029810:	9e05      	ldr	r6, [sp, #20]
20029812:	6037      	str	r7, [r6, #0]
20029814:	9e04      	ldr	r6, [sp, #16]
20029816:	e9cd 4304 	strd	r4, r3, [sp, #16]
2002981a:	e9cd 5606 	strd	r5, r6, [sp, #24]
2002981e:	bcf0      	pop	{r4, r5, r6, r7}
20029820:	2301      	movs	r3, #1
20029822:	f000 bd31 	b.w	2002a288 <mbedtls_rsa_pkcs1_sign>
	...

20029828 <rsa_verify_wrap>:
20029828:	b57f      	push	{r0, r1, r2, r3, r4, r5, r6, lr}
2002982a:	9d09      	ldr	r5, [sp, #36]	@ 0x24
2002982c:	6846      	ldr	r6, [r0, #4]
2002982e:	4604      	mov	r4, r0
20029830:	42ae      	cmp	r6, r5
20029832:	d811      	bhi.n	20029858 <rsa_verify_wrap+0x30>
20029834:	e9cd 1300 	strd	r1, r3, [sp]
20029838:	2300      	movs	r3, #0
2002983a:	9e08      	ldr	r6, [sp, #32]
2002983c:	4619      	mov	r1, r3
2002983e:	e9cd 2602 	strd	r2, r6, [sp, #8]
20029842:	461a      	mov	r2, r3
20029844:	f000 fe08 	bl	2002a458 <mbedtls_rsa_pkcs1_verify>
20029848:	b920      	cbnz	r0, 20029854 <rsa_verify_wrap+0x2c>
2002984a:	6862      	ldr	r2, [r4, #4]
2002984c:	4b03      	ldr	r3, [pc, #12]	@ (2002985c <rsa_verify_wrap+0x34>)
2002984e:	42aa      	cmp	r2, r5
20029850:	bf38      	it	cc
20029852:	4618      	movcc	r0, r3
20029854:	b004      	add	sp, #16
20029856:	bd70      	pop	{r4, r5, r6, pc}
20029858:	4801      	ldr	r0, [pc, #4]	@ (20029860 <rsa_verify_wrap+0x38>)
2002985a:	e7fb      	b.n	20029854 <rsa_verify_wrap+0x2c>
2002985c:	ffffc700 	.word	0xffffc700
20029860:	ffffbc80 	.word	0xffffbc80

20029864 <mbedtls_rsa_init>:
20029864:	b570      	push	{r4, r5, r6, lr}
20029866:	4604      	mov	r4, r0
20029868:	460e      	mov	r6, r1
2002986a:	4615      	mov	r5, r2
2002986c:	2100      	movs	r1, #0
2002986e:	22ac      	movs	r2, #172	@ 0xac
20029870:	f001 f8dc 	bl	2002aa2c <memset>
20029874:	e9c4 6529 	strd	r6, r5, [r4, #164]	@ 0xa4
20029878:	bd70      	pop	{r4, r5, r6, pc}

2002987a <mbedtls_rsa_set_padding>:
2002987a:	e9c0 1229 	strd	r1, r2, [r0, #164]	@ 0xa4
2002987e:	4770      	bx	lr

20029880 <mbedtls_rsa_check_pubkey>:
20029880:	b538      	push	{r3, r4, r5, lr}
20029882:	6902      	ldr	r2, [r0, #16]
20029884:	4604      	mov	r4, r0
20029886:	b10a      	cbz	r2, 2002988c <mbedtls_rsa_check_pubkey+0xc>
20029888:	69c3      	ldr	r3, [r0, #28]
2002988a:	b90b      	cbnz	r3, 20029890 <mbedtls_rsa_check_pubkey+0x10>
2002988c:	4811      	ldr	r0, [pc, #68]	@ (200298d4 <mbedtls_rsa_check_pubkey+0x54>)
2002988e:	bd38      	pop	{r3, r4, r5, pc}
20029890:	6812      	ldr	r2, [r2, #0]
20029892:	07d2      	lsls	r2, r2, #31
20029894:	d5fa      	bpl.n	2002988c <mbedtls_rsa_check_pubkey+0xc>
20029896:	681b      	ldr	r3, [r3, #0]
20029898:	07db      	lsls	r3, r3, #31
2002989a:	d5f7      	bpl.n	2002988c <mbedtls_rsa_check_pubkey+0xc>
2002989c:	f100 0508 	add.w	r5, r0, #8
200298a0:	4628      	mov	r0, r5
200298a2:	f7fe fbd0 	bl	20028046 <mbedtls_mpi_bitlen>
200298a6:	287f      	cmp	r0, #127	@ 0x7f
200298a8:	d9f0      	bls.n	2002988c <mbedtls_rsa_check_pubkey+0xc>
200298aa:	4628      	mov	r0, r5
200298ac:	f7fe fbcb 	bl	20028046 <mbedtls_mpi_bitlen>
200298b0:	f5b0 5f00 	cmp.w	r0, #8192	@ 0x2000
200298b4:	d8ea      	bhi.n	2002988c <mbedtls_rsa_check_pubkey+0xc>
200298b6:	3414      	adds	r4, #20
200298b8:	4620      	mov	r0, r4
200298ba:	f7fe fbc4 	bl	20028046 <mbedtls_mpi_bitlen>
200298be:	2801      	cmp	r0, #1
200298c0:	d9e4      	bls.n	2002988c <mbedtls_rsa_check_pubkey+0xc>
200298c2:	4629      	mov	r1, r5
200298c4:	4620      	mov	r0, r4
200298c6:	f7fe fd71 	bl	200283ac <mbedtls_mpi_cmp_mpi>
200298ca:	2800      	cmp	r0, #0
200298cc:	dade      	bge.n	2002988c <mbedtls_rsa_check_pubkey+0xc>
200298ce:	2000      	movs	r0, #0
200298d0:	e7dd      	b.n	2002988e <mbedtls_rsa_check_pubkey+0xe>
200298d2:	bf00      	nop
200298d4:	ffffbe00 	.word	0xffffbe00

200298d8 <mbedtls_rsa_check_privkey>:
200298d8:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
200298dc:	b0a9      	sub	sp, #164	@ 0xa4
200298de:	4605      	mov	r5, r0
200298e0:	f7ff ffce 	bl	20029880 <mbedtls_rsa_check_pubkey>
200298e4:	b120      	cbz	r0, 200298f0 <mbedtls_rsa_check_privkey+0x18>
200298e6:	4c7d      	ldr	r4, [pc, #500]	@ (20029adc <mbedtls_rsa_check_privkey+0x204>)
200298e8:	4620      	mov	r0, r4
200298ea:	b029      	add	sp, #164	@ 0xa4
200298ec:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
200298f0:	6b6b      	ldr	r3, [r5, #52]	@ 0x34
200298f2:	2b00      	cmp	r3, #0
200298f4:	d0f7      	beq.n	200298e6 <mbedtls_rsa_check_privkey+0xe>
200298f6:	6c2b      	ldr	r3, [r5, #64]	@ 0x40
200298f8:	2b00      	cmp	r3, #0
200298fa:	d0f4      	beq.n	200298e6 <mbedtls_rsa_check_privkey+0xe>
200298fc:	6aab      	ldr	r3, [r5, #40]	@ 0x28
200298fe:	2b00      	cmp	r3, #0
20029900:	d0f1      	beq.n	200298e6 <mbedtls_rsa_check_privkey+0xe>
20029902:	a801      	add	r0, sp, #4
20029904:	f7fe fafa 	bl	20027efc <mbedtls_mpi_init>
20029908:	a804      	add	r0, sp, #16
2002990a:	f7fe faf7 	bl	20027efc <mbedtls_mpi_init>
2002990e:	a807      	add	r0, sp, #28
20029910:	f7fe faf4 	bl	20027efc <mbedtls_mpi_init>
20029914:	a80a      	add	r0, sp, #40	@ 0x28
20029916:	f7fe faf1 	bl	20027efc <mbedtls_mpi_init>
2002991a:	a80d      	add	r0, sp, #52	@ 0x34
2002991c:	f7fe faee 	bl	20027efc <mbedtls_mpi_init>
20029920:	a810      	add	r0, sp, #64	@ 0x40
20029922:	f7fe faeb 	bl	20027efc <mbedtls_mpi_init>
20029926:	a813      	add	r0, sp, #76	@ 0x4c
20029928:	f7fe fae8 	bl	20027efc <mbedtls_mpi_init>
2002992c:	a816      	add	r0, sp, #88	@ 0x58
2002992e:	f7fe fae5 	bl	20027efc <mbedtls_mpi_init>
20029932:	a819      	add	r0, sp, #100	@ 0x64
20029934:	f7fe fae2 	bl	20027efc <mbedtls_mpi_init>
20029938:	a81c      	add	r0, sp, #112	@ 0x70
2002993a:	f7fe fadf 	bl	20027efc <mbedtls_mpi_init>
2002993e:	a81f      	add	r0, sp, #124	@ 0x7c
20029940:	f7fe fadc 	bl	20027efc <mbedtls_mpi_init>
20029944:	a822      	add	r0, sp, #136	@ 0x88
20029946:	f7fe fad9 	bl	20027efc <mbedtls_mpi_init>
2002994a:	f105 072c 	add.w	r7, r5, #44	@ 0x2c
2002994e:	a825      	add	r0, sp, #148	@ 0x94
20029950:	f105 0638 	add.w	r6, r5, #56	@ 0x38
20029954:	f7fe fad2 	bl	20027efc <mbedtls_mpi_init>
20029958:	4632      	mov	r2, r6
2002995a:	4639      	mov	r1, r7
2002995c:	a801      	add	r0, sp, #4
2002995e:	f7fe fe75 	bl	2002864c <mbedtls_mpi_mul_mpi>
20029962:	4604      	mov	r4, r0
20029964:	2800      	cmp	r0, #0
20029966:	d15e      	bne.n	20029a26 <mbedtls_rsa_check_privkey+0x14e>
20029968:	f105 0820 	add.w	r8, r5, #32
2002996c:	f105 0914 	add.w	r9, r5, #20
20029970:	464a      	mov	r2, r9
20029972:	4641      	mov	r1, r8
20029974:	a804      	add	r0, sp, #16
20029976:	f7fe fe69 	bl	2002864c <mbedtls_mpi_mul_mpi>
2002997a:	4604      	mov	r4, r0
2002997c:	2800      	cmp	r0, #0
2002997e:	d152      	bne.n	20029a26 <mbedtls_rsa_check_privkey+0x14e>
20029980:	2201      	movs	r2, #1
20029982:	4639      	mov	r1, r7
20029984:	a807      	add	r0, sp, #28
20029986:	f7fe fe4b 	bl	20028620 <mbedtls_mpi_sub_int>
2002998a:	4604      	mov	r4, r0
2002998c:	2800      	cmp	r0, #0
2002998e:	d14a      	bne.n	20029a26 <mbedtls_rsa_check_privkey+0x14e>
20029990:	2201      	movs	r2, #1
20029992:	4631      	mov	r1, r6
20029994:	a80a      	add	r0, sp, #40	@ 0x28
20029996:	f7fe fe43 	bl	20028620 <mbedtls_mpi_sub_int>
2002999a:	4604      	mov	r4, r0
2002999c:	2800      	cmp	r0, #0
2002999e:	d142      	bne.n	20029a26 <mbedtls_rsa_check_privkey+0x14e>
200299a0:	aa0a      	add	r2, sp, #40	@ 0x28
200299a2:	a907      	add	r1, sp, #28
200299a4:	a80d      	add	r0, sp, #52	@ 0x34
200299a6:	f7fe fe51 	bl	2002864c <mbedtls_mpi_mul_mpi>
200299aa:	4604      	mov	r4, r0
200299ac:	2800      	cmp	r0, #0
200299ae:	d13a      	bne.n	20029a26 <mbedtls_rsa_check_privkey+0x14e>
200299b0:	4649      	mov	r1, r9
200299b2:	aa0d      	add	r2, sp, #52	@ 0x34
200299b4:	a813      	add	r0, sp, #76	@ 0x4c
200299b6:	f7ff fb04 	bl	20028fc2 <mbedtls_mpi_gcd>
200299ba:	4604      	mov	r4, r0
200299bc:	2800      	cmp	r0, #0
200299be:	d132      	bne.n	20029a26 <mbedtls_rsa_check_privkey+0x14e>
200299c0:	aa0a      	add	r2, sp, #40	@ 0x28
200299c2:	a907      	add	r1, sp, #28
200299c4:	a816      	add	r0, sp, #88	@ 0x58
200299c6:	f7ff fafc 	bl	20028fc2 <mbedtls_mpi_gcd>
200299ca:	4604      	mov	r4, r0
200299cc:	bb58      	cbnz	r0, 20029a26 <mbedtls_rsa_check_privkey+0x14e>
200299ce:	ab16      	add	r3, sp, #88	@ 0x58
200299d0:	aa0d      	add	r2, sp, #52	@ 0x34
200299d2:	a91c      	add	r1, sp, #112	@ 0x70
200299d4:	a819      	add	r0, sp, #100	@ 0x64
200299d6:	f7fe feaa 	bl	2002872e <mbedtls_mpi_div_mpi>
200299da:	4604      	mov	r4, r0
200299dc:	bb18      	cbnz	r0, 20029a26 <mbedtls_rsa_check_privkey+0x14e>
200299de:	aa19      	add	r2, sp, #100	@ 0x64
200299e0:	a904      	add	r1, sp, #16
200299e2:	a810      	add	r0, sp, #64	@ 0x40
200299e4:	f7ff f8a7 	bl	20028b36 <mbedtls_mpi_mod_mpi>
200299e8:	4604      	mov	r4, r0
200299ea:	b9e0      	cbnz	r0, 20029a26 <mbedtls_rsa_check_privkey+0x14e>
200299ec:	4641      	mov	r1, r8
200299ee:	aa07      	add	r2, sp, #28
200299f0:	a81f      	add	r0, sp, #124	@ 0x7c
200299f2:	f7ff f8a0 	bl	20028b36 <mbedtls_mpi_mod_mpi>
200299f6:	4604      	mov	r4, r0
200299f8:	b9a8      	cbnz	r0, 20029a26 <mbedtls_rsa_check_privkey+0x14e>
200299fa:	4641      	mov	r1, r8
200299fc:	aa0a      	add	r2, sp, #40	@ 0x28
200299fe:	a822      	add	r0, sp, #136	@ 0x88
20029a00:	f7ff f899 	bl	20028b36 <mbedtls_mpi_mod_mpi>
20029a04:	4604      	mov	r4, r0
20029a06:	b970      	cbnz	r0, 20029a26 <mbedtls_rsa_check_privkey+0x14e>
20029a08:	463a      	mov	r2, r7
20029a0a:	4631      	mov	r1, r6
20029a0c:	a825      	add	r0, sp, #148	@ 0x94
20029a0e:	f7ff fb73 	bl	200290f8 <mbedtls_mpi_inv_mod>
20029a12:	4604      	mov	r4, r0
20029a14:	b938      	cbnz	r0, 20029a26 <mbedtls_rsa_check_privkey+0x14e>
20029a16:	f105 0108 	add.w	r1, r5, #8
20029a1a:	a801      	add	r0, sp, #4
20029a1c:	f7fe fcc6 	bl	200283ac <mbedtls_mpi_cmp_mpi>
20029a20:	2800      	cmp	r0, #0
20029a22:	d031      	beq.n	20029a88 <mbedtls_rsa_check_privkey+0x1b0>
20029a24:	4c2d      	ldr	r4, [pc, #180]	@ (20029adc <mbedtls_rsa_check_privkey+0x204>)
20029a26:	a801      	add	r0, sp, #4
20029a28:	f7fe fa6f 	bl	20027f0a <mbedtls_mpi_free>
20029a2c:	a804      	add	r0, sp, #16
20029a2e:	f7fe fa6c 	bl	20027f0a <mbedtls_mpi_free>
20029a32:	a807      	add	r0, sp, #28
20029a34:	f7fe fa69 	bl	20027f0a <mbedtls_mpi_free>
20029a38:	a80a      	add	r0, sp, #40	@ 0x28
20029a3a:	f7fe fa66 	bl	20027f0a <mbedtls_mpi_free>
20029a3e:	a80d      	add	r0, sp, #52	@ 0x34
20029a40:	f7fe fa63 	bl	20027f0a <mbedtls_mpi_free>
20029a44:	a810      	add	r0, sp, #64	@ 0x40
20029a46:	f7fe fa60 	bl	20027f0a <mbedtls_mpi_free>
20029a4a:	a813      	add	r0, sp, #76	@ 0x4c
20029a4c:	f7fe fa5d 	bl	20027f0a <mbedtls_mpi_free>
20029a50:	a816      	add	r0, sp, #88	@ 0x58
20029a52:	f7fe fa5a 	bl	20027f0a <mbedtls_mpi_free>
20029a56:	a819      	add	r0, sp, #100	@ 0x64
20029a58:	f7fe fa57 	bl	20027f0a <mbedtls_mpi_free>
20029a5c:	a81c      	add	r0, sp, #112	@ 0x70
20029a5e:	f7fe fa54 	bl	20027f0a <mbedtls_mpi_free>
20029a62:	a81f      	add	r0, sp, #124	@ 0x7c
20029a64:	f7fe fa51 	bl	20027f0a <mbedtls_mpi_free>
20029a68:	a822      	add	r0, sp, #136	@ 0x88
20029a6a:	f7fe fa4e 	bl	20027f0a <mbedtls_mpi_free>
20029a6e:	a825      	add	r0, sp, #148	@ 0x94
20029a70:	f7fe fa4b 	bl	20027f0a <mbedtls_mpi_free>
20029a74:	f514 4f84 	cmn.w	r4, #16896	@ 0x4200
20029a78:	f43f af35 	beq.w	200298e6 <mbedtls_rsa_check_privkey+0xe>
20029a7c:	2c00      	cmp	r4, #0
20029a7e:	f43f af33 	beq.w	200298e8 <mbedtls_rsa_check_privkey+0x10>
20029a82:	f5a4 4484 	sub.w	r4, r4, #16896	@ 0x4200
20029a86:	e72f      	b.n	200298e8 <mbedtls_rsa_check_privkey+0x10>
20029a88:	f105 0144 	add.w	r1, r5, #68	@ 0x44
20029a8c:	a81f      	add	r0, sp, #124	@ 0x7c
20029a8e:	f7fe fc8d 	bl	200283ac <mbedtls_mpi_cmp_mpi>
20029a92:	2800      	cmp	r0, #0
20029a94:	d1c6      	bne.n	20029a24 <mbedtls_rsa_check_privkey+0x14c>
20029a96:	f105 0150 	add.w	r1, r5, #80	@ 0x50
20029a9a:	a822      	add	r0, sp, #136	@ 0x88
20029a9c:	f7fe fc86 	bl	200283ac <mbedtls_mpi_cmp_mpi>
20029aa0:	2800      	cmp	r0, #0
20029aa2:	d1bf      	bne.n	20029a24 <mbedtls_rsa_check_privkey+0x14c>
20029aa4:	f105 015c 	add.w	r1, r5, #92	@ 0x5c
20029aa8:	a825      	add	r0, sp, #148	@ 0x94
20029aaa:	f7fe fc7f 	bl	200283ac <mbedtls_mpi_cmp_mpi>
20029aae:	2800      	cmp	r0, #0
20029ab0:	d1b8      	bne.n	20029a24 <mbedtls_rsa_check_privkey+0x14c>
20029ab2:	2100      	movs	r1, #0
20029ab4:	a81c      	add	r0, sp, #112	@ 0x70
20029ab6:	f7fe fcba 	bl	2002842e <mbedtls_mpi_cmp_int>
20029aba:	2800      	cmp	r0, #0
20029abc:	d1b2      	bne.n	20029a24 <mbedtls_rsa_check_privkey+0x14c>
20029abe:	2101      	movs	r1, #1
20029ac0:	a810      	add	r0, sp, #64	@ 0x40
20029ac2:	f7fe fcb4 	bl	2002842e <mbedtls_mpi_cmp_int>
20029ac6:	2800      	cmp	r0, #0
20029ac8:	d1ac      	bne.n	20029a24 <mbedtls_rsa_check_privkey+0x14c>
20029aca:	2101      	movs	r1, #1
20029acc:	a813      	add	r0, sp, #76	@ 0x4c
20029ace:	f7fe fcae 	bl	2002842e <mbedtls_mpi_cmp_int>
20029ad2:	4604      	mov	r4, r0
20029ad4:	2800      	cmp	r0, #0
20029ad6:	d1a5      	bne.n	20029a24 <mbedtls_rsa_check_privkey+0x14c>
20029ad8:	e7a5      	b.n	20029a26 <mbedtls_rsa_check_privkey+0x14e>
20029ada:	bf00      	nop
20029adc:	ffffbe00 	.word	0xffffbe00

20029ae0 <mbedtls_rsa_check_pub_priv>:
20029ae0:	b538      	push	{r3, r4, r5, lr}
20029ae2:	4605      	mov	r5, r0
20029ae4:	460c      	mov	r4, r1
20029ae6:	f7ff fecb 	bl	20029880 <mbedtls_rsa_check_pubkey>
20029aea:	b918      	cbnz	r0, 20029af4 <mbedtls_rsa_check_pub_priv+0x14>
20029aec:	4620      	mov	r0, r4
20029aee:	f7ff fef3 	bl	200298d8 <mbedtls_rsa_check_privkey>
20029af2:	b108      	cbz	r0, 20029af8 <mbedtls_rsa_check_pub_priv+0x18>
20029af4:	4809      	ldr	r0, [pc, #36]	@ (20029b1c <mbedtls_rsa_check_pub_priv+0x3c>)
20029af6:	bd38      	pop	{r3, r4, r5, pc}
20029af8:	f104 0108 	add.w	r1, r4, #8
20029afc:	f105 0008 	add.w	r0, r5, #8
20029b00:	f7fe fc54 	bl	200283ac <mbedtls_mpi_cmp_mpi>
20029b04:	2800      	cmp	r0, #0
20029b06:	d1f5      	bne.n	20029af4 <mbedtls_rsa_check_pub_priv+0x14>
20029b08:	f104 0114 	add.w	r1, r4, #20
20029b0c:	f105 0014 	add.w	r0, r5, #20
20029b10:	f7fe fc4c 	bl	200283ac <mbedtls_mpi_cmp_mpi>
20029b14:	2800      	cmp	r0, #0
20029b16:	d0ee      	beq.n	20029af6 <mbedtls_rsa_check_pub_priv+0x16>
20029b18:	e7ec      	b.n	20029af4 <mbedtls_rsa_check_pub_priv+0x14>
20029b1a:	bf00      	nop
20029b1c:	ffffbe00 	.word	0xffffbe00

20029b20 <mbedtls_rsa_public>:
20029b20:	b5f0      	push	{r4, r5, r6, r7, lr}
20029b22:	460c      	mov	r4, r1
20029b24:	4605      	mov	r5, r0
20029b26:	b087      	sub	sp, #28
20029b28:	a803      	add	r0, sp, #12
20029b2a:	4616      	mov	r6, r2
20029b2c:	f7fe f9e6 	bl	20027efc <mbedtls_mpi_init>
20029b30:	4621      	mov	r1, r4
20029b32:	686a      	ldr	r2, [r5, #4]
20029b34:	a803      	add	r0, sp, #12
20029b36:	f7fe faa9 	bl	2002808c <mbedtls_mpi_read_binary>
20029b3a:	4604      	mov	r4, r0
20029b3c:	b9d0      	cbnz	r0, 20029b74 <mbedtls_rsa_public+0x54>
20029b3e:	f105 0408 	add.w	r4, r5, #8
20029b42:	4621      	mov	r1, r4
20029b44:	a803      	add	r0, sp, #12
20029b46:	f7fe fc31 	bl	200283ac <mbedtls_mpi_cmp_mpi>
20029b4a:	2800      	cmp	r0, #0
20029b4c:	da1b      	bge.n	20029b86 <mbedtls_rsa_public+0x66>
20029b4e:	f105 0368 	add.w	r3, r5, #104	@ 0x68
20029b52:	a903      	add	r1, sp, #12
20029b54:	686f      	ldr	r7, [r5, #4]
20029b56:	4608      	mov	r0, r1
20029b58:	9300      	str	r3, [sp, #0]
20029b5a:	f105 0214 	add.w	r2, r5, #20
20029b5e:	4623      	mov	r3, r4
20029b60:	f7ff f81b 	bl	20028b9a <mbedtls_mpi_exp_mod>
20029b64:	4604      	mov	r4, r0
20029b66:	b928      	cbnz	r0, 20029b74 <mbedtls_rsa_public+0x54>
20029b68:	463a      	mov	r2, r7
20029b6a:	4631      	mov	r1, r6
20029b6c:	a803      	add	r0, sp, #12
20029b6e:	f7fe fac2 	bl	200280f6 <mbedtls_mpi_write_binary>
20029b72:	4604      	mov	r4, r0
20029b74:	a803      	add	r0, sp, #12
20029b76:	f7fe f9c8 	bl	20027f0a <mbedtls_mpi_free>
20029b7a:	b10c      	cbz	r4, 20029b80 <mbedtls_rsa_public+0x60>
20029b7c:	f5a4 4485 	sub.w	r4, r4, #17024	@ 0x4280
20029b80:	4620      	mov	r0, r4
20029b82:	b007      	add	sp, #28
20029b84:	bdf0      	pop	{r4, r5, r6, r7, pc}
20029b86:	f06f 0403 	mvn.w	r4, #3
20029b8a:	e7f3      	b.n	20029b74 <mbedtls_rsa_public+0x54>

20029b8c <mbedtls_rsa_private>:
20029b8c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
20029b90:	461e      	mov	r6, r3
20029b92:	6b43      	ldr	r3, [r0, #52]	@ 0x34
20029b94:	4604      	mov	r4, r0
20029b96:	460d      	mov	r5, r1
20029b98:	4617      	mov	r7, r2
20029b9a:	b09d      	sub	sp, #116	@ 0x74
20029b9c:	2b00      	cmp	r3, #0
20029b9e:	f000 8179 	beq.w	20029e94 <mbedtls_rsa_private+0x308>
20029ba2:	6c03      	ldr	r3, [r0, #64]	@ 0x40
20029ba4:	2b00      	cmp	r3, #0
20029ba6:	f000 8175 	beq.w	20029e94 <mbedtls_rsa_private+0x308>
20029baa:	6a83      	ldr	r3, [r0, #40]	@ 0x28
20029bac:	2b00      	cmp	r3, #0
20029bae:	f000 8171 	beq.w	20029e94 <mbedtls_rsa_private+0x308>
20029bb2:	a804      	add	r0, sp, #16
20029bb4:	f7fe f9a2 	bl	20027efc <mbedtls_mpi_init>
20029bb8:	a807      	add	r0, sp, #28
20029bba:	f7fe f99f 	bl	20027efc <mbedtls_mpi_init>
20029bbe:	a80a      	add	r0, sp, #40	@ 0x28
20029bc0:	f7fe f99c 	bl	20027efc <mbedtls_mpi_init>
20029bc4:	a80d      	add	r0, sp, #52	@ 0x34
20029bc6:	f7fe f999 	bl	20027efc <mbedtls_mpi_init>
20029bca:	a810      	add	r0, sp, #64	@ 0x40
20029bcc:	f7fe f996 	bl	20027efc <mbedtls_mpi_init>
20029bd0:	a813      	add	r0, sp, #76	@ 0x4c
20029bd2:	f7fe f993 	bl	20027efc <mbedtls_mpi_init>
20029bd6:	b12d      	cbz	r5, 20029be4 <mbedtls_rsa_private+0x58>
20029bd8:	a816      	add	r0, sp, #88	@ 0x58
20029bda:	f7fe f98f 	bl	20027efc <mbedtls_mpi_init>
20029bde:	a819      	add	r0, sp, #100	@ 0x64
20029be0:	f7fe f98c 	bl	20027efc <mbedtls_mpi_init>
20029be4:	4631      	mov	r1, r6
20029be6:	6862      	ldr	r2, [r4, #4]
20029be8:	a804      	add	r0, sp, #16
20029bea:	f7fe fa4f 	bl	2002808c <mbedtls_mpi_read_binary>
20029bee:	4603      	mov	r3, r0
20029bf0:	2800      	cmp	r0, #0
20029bf2:	f040 80e0 	bne.w	20029db6 <mbedtls_rsa_private+0x22a>
20029bf6:	f104 0608 	add.w	r6, r4, #8
20029bfa:	4631      	mov	r1, r6
20029bfc:	a804      	add	r0, sp, #16
20029bfe:	f7fe fbd5 	bl	200283ac <mbedtls_mpi_cmp_mpi>
20029c02:	2800      	cmp	r0, #0
20029c04:	f280 8143 	bge.w	20029e8e <mbedtls_rsa_private+0x302>
20029c08:	f104 0a44 	add.w	sl, r4, #68	@ 0x44
20029c0c:	f104 0950 	add.w	r9, r4, #80	@ 0x50
20029c10:	2d00      	cmp	r5, #0
20029c12:	f000 8089 	beq.w	20029d28 <mbedtls_rsa_private+0x19c>
20029c16:	f8d4 30a0 	ldr.w	r3, [r4, #160]	@ 0xa0
20029c1a:	2b00      	cmp	r3, #0
20029c1c:	f000 80f4 	beq.w	20029e08 <mbedtls_rsa_private+0x27c>
20029c20:	f104 088c 	add.w	r8, r4, #140	@ 0x8c
20029c24:	4642      	mov	r2, r8
20029c26:	4641      	mov	r1, r8
20029c28:	4640      	mov	r0, r8
20029c2a:	f7fe fd0f 	bl	2002864c <mbedtls_mpi_mul_mpi>
20029c2e:	4603      	mov	r3, r0
20029c30:	2800      	cmp	r0, #0
20029c32:	f040 80c0 	bne.w	20029db6 <mbedtls_rsa_private+0x22a>
20029c36:	4632      	mov	r2, r6
20029c38:	4641      	mov	r1, r8
20029c3a:	4640      	mov	r0, r8
20029c3c:	f7fe ff7b 	bl	20028b36 <mbedtls_mpi_mod_mpi>
20029c40:	4603      	mov	r3, r0
20029c42:	2800      	cmp	r0, #0
20029c44:	f040 80b7 	bne.w	20029db6 <mbedtls_rsa_private+0x22a>
20029c48:	f104 0898 	add.w	r8, r4, #152	@ 0x98
20029c4c:	4642      	mov	r2, r8
20029c4e:	4641      	mov	r1, r8
20029c50:	4640      	mov	r0, r8
20029c52:	f7fe fcfb 	bl	2002864c <mbedtls_mpi_mul_mpi>
20029c56:	4603      	mov	r3, r0
20029c58:	2800      	cmp	r0, #0
20029c5a:	f040 80ac 	bne.w	20029db6 <mbedtls_rsa_private+0x22a>
20029c5e:	4632      	mov	r2, r6
20029c60:	4641      	mov	r1, r8
20029c62:	4640      	mov	r0, r8
20029c64:	f7fe ff67 	bl	20028b36 <mbedtls_mpi_mod_mpi>
20029c68:	4603      	mov	r3, r0
20029c6a:	2800      	cmp	r0, #0
20029c6c:	f040 80a3 	bne.w	20029db6 <mbedtls_rsa_private+0x22a>
20029c70:	a904      	add	r1, sp, #16
20029c72:	4608      	mov	r0, r1
20029c74:	f104 028c 	add.w	r2, r4, #140	@ 0x8c
20029c78:	f7fe fce8 	bl	2002864c <mbedtls_mpi_mul_mpi>
20029c7c:	4603      	mov	r3, r0
20029c7e:	2800      	cmp	r0, #0
20029c80:	f040 8099 	bne.w	20029db6 <mbedtls_rsa_private+0x22a>
20029c84:	a904      	add	r1, sp, #16
20029c86:	4632      	mov	r2, r6
20029c88:	4608      	mov	r0, r1
20029c8a:	f7fe ff54 	bl	20028b36 <mbedtls_mpi_mod_mpi>
20029c8e:	4603      	mov	r3, r0
20029c90:	2800      	cmp	r0, #0
20029c92:	f040 8090 	bne.w	20029db6 <mbedtls_rsa_private+0x22a>
20029c96:	2201      	movs	r2, #1
20029c98:	f104 012c 	add.w	r1, r4, #44	@ 0x2c
20029c9c:	a80d      	add	r0, sp, #52	@ 0x34
20029c9e:	f7fe fcbf 	bl	20028620 <mbedtls_mpi_sub_int>
20029ca2:	4603      	mov	r3, r0
20029ca4:	2800      	cmp	r0, #0
20029ca6:	f040 8086 	bne.w	20029db6 <mbedtls_rsa_private+0x22a>
20029caa:	2201      	movs	r2, #1
20029cac:	f104 0138 	add.w	r1, r4, #56	@ 0x38
20029cb0:	a810      	add	r0, sp, #64	@ 0x40
20029cb2:	f7fe fcb5 	bl	20028620 <mbedtls_mpi_sub_int>
20029cb6:	4603      	mov	r3, r0
20029cb8:	2800      	cmp	r0, #0
20029cba:	d17c      	bne.n	20029db6 <mbedtls_rsa_private+0x22a>
20029cbc:	463b      	mov	r3, r7
20029cbe:	462a      	mov	r2, r5
20029cc0:	211c      	movs	r1, #28
20029cc2:	a813      	add	r0, sp, #76	@ 0x4c
20029cc4:	f7ff f9fb 	bl	200290be <mbedtls_mpi_fill_random>
20029cc8:	4603      	mov	r3, r0
20029cca:	2800      	cmp	r0, #0
20029ccc:	d173      	bne.n	20029db6 <mbedtls_rsa_private+0x22a>
20029cce:	aa13      	add	r2, sp, #76	@ 0x4c
20029cd0:	a90d      	add	r1, sp, #52	@ 0x34
20029cd2:	a816      	add	r0, sp, #88	@ 0x58
20029cd4:	f7fe fcba 	bl	2002864c <mbedtls_mpi_mul_mpi>
20029cd8:	4603      	mov	r3, r0
20029cda:	2800      	cmp	r0, #0
20029cdc:	d16b      	bne.n	20029db6 <mbedtls_rsa_private+0x22a>
20029cde:	a916      	add	r1, sp, #88	@ 0x58
20029ce0:	4652      	mov	r2, sl
20029ce2:	4608      	mov	r0, r1
20029ce4:	f7fe fc4f 	bl	20028586 <mbedtls_mpi_add_mpi>
20029ce8:	4603      	mov	r3, r0
20029cea:	2800      	cmp	r0, #0
20029cec:	d163      	bne.n	20029db6 <mbedtls_rsa_private+0x22a>
20029cee:	463b      	mov	r3, r7
20029cf0:	462a      	mov	r2, r5
20029cf2:	211c      	movs	r1, #28
20029cf4:	a813      	add	r0, sp, #76	@ 0x4c
20029cf6:	f7ff f9e2 	bl	200290be <mbedtls_mpi_fill_random>
20029cfa:	4603      	mov	r3, r0
20029cfc:	2800      	cmp	r0, #0
20029cfe:	d15a      	bne.n	20029db6 <mbedtls_rsa_private+0x22a>
20029d00:	aa13      	add	r2, sp, #76	@ 0x4c
20029d02:	a910      	add	r1, sp, #64	@ 0x40
20029d04:	a819      	add	r0, sp, #100	@ 0x64
20029d06:	f7fe fca1 	bl	2002864c <mbedtls_mpi_mul_mpi>
20029d0a:	4603      	mov	r3, r0
20029d0c:	2800      	cmp	r0, #0
20029d0e:	d152      	bne.n	20029db6 <mbedtls_rsa_private+0x22a>
20029d10:	a919      	add	r1, sp, #100	@ 0x64
20029d12:	464a      	mov	r2, r9
20029d14:	4608      	mov	r0, r1
20029d16:	f7fe fc36 	bl	20028586 <mbedtls_mpi_add_mpi>
20029d1a:	4603      	mov	r3, r0
20029d1c:	2800      	cmp	r0, #0
20029d1e:	d14a      	bne.n	20029db6 <mbedtls_rsa_private+0x22a>
20029d20:	f10d 0964 	add.w	r9, sp, #100	@ 0x64
20029d24:	f10d 0a58 	add.w	sl, sp, #88	@ 0x58
20029d28:	f104 0374 	add.w	r3, r4, #116	@ 0x74
20029d2c:	f104 082c 	add.w	r8, r4, #44	@ 0x2c
20029d30:	9300      	str	r3, [sp, #0]
20029d32:	4652      	mov	r2, sl
20029d34:	4643      	mov	r3, r8
20029d36:	a904      	add	r1, sp, #16
20029d38:	a807      	add	r0, sp, #28
20029d3a:	f7fe ff2e 	bl	20028b9a <mbedtls_mpi_exp_mod>
20029d3e:	4603      	mov	r3, r0
20029d40:	2800      	cmp	r0, #0
20029d42:	d138      	bne.n	20029db6 <mbedtls_rsa_private+0x22a>
20029d44:	f104 0380 	add.w	r3, r4, #128	@ 0x80
20029d48:	f104 0738 	add.w	r7, r4, #56	@ 0x38
20029d4c:	9300      	str	r3, [sp, #0]
20029d4e:	464a      	mov	r2, r9
20029d50:	463b      	mov	r3, r7
20029d52:	a904      	add	r1, sp, #16
20029d54:	a80a      	add	r0, sp, #40	@ 0x28
20029d56:	f7fe ff20 	bl	20028b9a <mbedtls_mpi_exp_mod>
20029d5a:	4603      	mov	r3, r0
20029d5c:	bb58      	cbnz	r0, 20029db6 <mbedtls_rsa_private+0x22a>
20029d5e:	aa0a      	add	r2, sp, #40	@ 0x28
20029d60:	a907      	add	r1, sp, #28
20029d62:	a804      	add	r0, sp, #16
20029d64:	f7fe fc35 	bl	200285d2 <mbedtls_mpi_sub_mpi>
20029d68:	4603      	mov	r3, r0
20029d6a:	bb20      	cbnz	r0, 20029db6 <mbedtls_rsa_private+0x22a>
20029d6c:	f104 025c 	add.w	r2, r4, #92	@ 0x5c
20029d70:	a904      	add	r1, sp, #16
20029d72:	a807      	add	r0, sp, #28
20029d74:	f7fe fc6a 	bl	2002864c <mbedtls_mpi_mul_mpi>
20029d78:	4603      	mov	r3, r0
20029d7a:	b9e0      	cbnz	r0, 20029db6 <mbedtls_rsa_private+0x22a>
20029d7c:	4642      	mov	r2, r8
20029d7e:	a907      	add	r1, sp, #28
20029d80:	a804      	add	r0, sp, #16
20029d82:	f7fe fed8 	bl	20028b36 <mbedtls_mpi_mod_mpi>
20029d86:	4603      	mov	r3, r0
20029d88:	b9a8      	cbnz	r0, 20029db6 <mbedtls_rsa_private+0x22a>
20029d8a:	463a      	mov	r2, r7
20029d8c:	a904      	add	r1, sp, #16
20029d8e:	a807      	add	r0, sp, #28
20029d90:	f7fe fc5c 	bl	2002864c <mbedtls_mpi_mul_mpi>
20029d94:	4603      	mov	r3, r0
20029d96:	b970      	cbnz	r0, 20029db6 <mbedtls_rsa_private+0x22a>
20029d98:	aa07      	add	r2, sp, #28
20029d9a:	a90a      	add	r1, sp, #40	@ 0x28
20029d9c:	a804      	add	r0, sp, #16
20029d9e:	f7fe fbf2 	bl	20028586 <mbedtls_mpi_add_mpi>
20029da2:	4603      	mov	r3, r0
20029da4:	b938      	cbnz	r0, 20029db6 <mbedtls_rsa_private+0x22a>
20029da6:	2d00      	cmp	r5, #0
20029da8:	d15f      	bne.n	20029e6a <mbedtls_rsa_private+0x2de>
20029daa:	6862      	ldr	r2, [r4, #4]
20029dac:	9926      	ldr	r1, [sp, #152]	@ 0x98
20029dae:	a804      	add	r0, sp, #16
20029db0:	f7fe f9a1 	bl	200280f6 <mbedtls_mpi_write_binary>
20029db4:	4603      	mov	r3, r0
20029db6:	a804      	add	r0, sp, #16
20029db8:	9303      	str	r3, [sp, #12]
20029dba:	f7fe f8a6 	bl	20027f0a <mbedtls_mpi_free>
20029dbe:	a807      	add	r0, sp, #28
20029dc0:	f7fe f8a3 	bl	20027f0a <mbedtls_mpi_free>
20029dc4:	a80a      	add	r0, sp, #40	@ 0x28
20029dc6:	f7fe f8a0 	bl	20027f0a <mbedtls_mpi_free>
20029dca:	a80d      	add	r0, sp, #52	@ 0x34
20029dcc:	f7fe f89d 	bl	20027f0a <mbedtls_mpi_free>
20029dd0:	a810      	add	r0, sp, #64	@ 0x40
20029dd2:	f7fe f89a 	bl	20027f0a <mbedtls_mpi_free>
20029dd6:	a813      	add	r0, sp, #76	@ 0x4c
20029dd8:	f7fe f897 	bl	20027f0a <mbedtls_mpi_free>
20029ddc:	9b03      	ldr	r3, [sp, #12]
20029dde:	b135      	cbz	r5, 20029dee <mbedtls_rsa_private+0x262>
20029de0:	a816      	add	r0, sp, #88	@ 0x58
20029de2:	f7fe f892 	bl	20027f0a <mbedtls_mpi_free>
20029de6:	a819      	add	r0, sp, #100	@ 0x64
20029de8:	f7fe f88f 	bl	20027f0a <mbedtls_mpi_free>
20029dec:	9b03      	ldr	r3, [sp, #12]
20029dee:	b10b      	cbz	r3, 20029df4 <mbedtls_rsa_private+0x268>
20029df0:	f5a3 4386 	sub.w	r3, r3, #17152	@ 0x4300
20029df4:	4618      	mov	r0, r3
20029df6:	b01d      	add	sp, #116	@ 0x74
20029df8:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
20029dfc:	9b03      	ldr	r3, [sp, #12]
20029dfe:	3b01      	subs	r3, #1
20029e00:	9303      	str	r3, [sp, #12]
20029e02:	d107      	bne.n	20029e14 <mbedtls_rsa_private+0x288>
20029e04:	4b24      	ldr	r3, [pc, #144]	@ (20029e98 <mbedtls_rsa_private+0x30c>)
20029e06:	e7d6      	b.n	20029db6 <mbedtls_rsa_private+0x22a>
20029e08:	230b      	movs	r3, #11
20029e0a:	f104 0b98 	add.w	fp, r4, #152	@ 0x98
20029e0e:	9303      	str	r3, [sp, #12]
20029e10:	f104 088c 	add.w	r8, r4, #140	@ 0x8c
20029e14:	6861      	ldr	r1, [r4, #4]
20029e16:	463b      	mov	r3, r7
20029e18:	462a      	mov	r2, r5
20029e1a:	4658      	mov	r0, fp
20029e1c:	3901      	subs	r1, #1
20029e1e:	f7ff f94e 	bl	200290be <mbedtls_mpi_fill_random>
20029e22:	4603      	mov	r3, r0
20029e24:	2800      	cmp	r0, #0
20029e26:	d1c6      	bne.n	20029db6 <mbedtls_rsa_private+0x22a>
20029e28:	4632      	mov	r2, r6
20029e2a:	4659      	mov	r1, fp
20029e2c:	4640      	mov	r0, r8
20029e2e:	f7ff f8c8 	bl	20028fc2 <mbedtls_mpi_gcd>
20029e32:	4603      	mov	r3, r0
20029e34:	2800      	cmp	r0, #0
20029e36:	d1be      	bne.n	20029db6 <mbedtls_rsa_private+0x22a>
20029e38:	2101      	movs	r1, #1
20029e3a:	4640      	mov	r0, r8
20029e3c:	f7fe faf7 	bl	2002842e <mbedtls_mpi_cmp_int>
20029e40:	2800      	cmp	r0, #0
20029e42:	d1db      	bne.n	20029dfc <mbedtls_rsa_private+0x270>
20029e44:	4632      	mov	r2, r6
20029e46:	4659      	mov	r1, fp
20029e48:	4640      	mov	r0, r8
20029e4a:	f7ff f955 	bl	200290f8 <mbedtls_mpi_inv_mod>
20029e4e:	4603      	mov	r3, r0
20029e50:	2800      	cmp	r0, #0
20029e52:	d1b0      	bne.n	20029db6 <mbedtls_rsa_private+0x22a>
20029e54:	f104 0368 	add.w	r3, r4, #104	@ 0x68
20029e58:	9300      	str	r3, [sp, #0]
20029e5a:	4641      	mov	r1, r8
20029e5c:	4633      	mov	r3, r6
20029e5e:	4640      	mov	r0, r8
20029e60:	f104 0214 	add.w	r2, r4, #20
20029e64:	f7fe fe99 	bl	20028b9a <mbedtls_mpi_exp_mod>
20029e68:	e6fe      	b.n	20029c68 <mbedtls_rsa_private+0xdc>
20029e6a:	a904      	add	r1, sp, #16
20029e6c:	4608      	mov	r0, r1
20029e6e:	f104 0298 	add.w	r2, r4, #152	@ 0x98
20029e72:	f7fe fbeb 	bl	2002864c <mbedtls_mpi_mul_mpi>
20029e76:	4603      	mov	r3, r0
20029e78:	2800      	cmp	r0, #0
20029e7a:	d19c      	bne.n	20029db6 <mbedtls_rsa_private+0x22a>
20029e7c:	a904      	add	r1, sp, #16
20029e7e:	4632      	mov	r2, r6
20029e80:	4608      	mov	r0, r1
20029e82:	f7fe fe58 	bl	20028b36 <mbedtls_mpi_mod_mpi>
20029e86:	4603      	mov	r3, r0
20029e88:	2800      	cmp	r0, #0
20029e8a:	d08e      	beq.n	20029daa <mbedtls_rsa_private+0x21e>
20029e8c:	e793      	b.n	20029db6 <mbedtls_rsa_private+0x22a>
20029e8e:	f06f 0303 	mvn.w	r3, #3
20029e92:	e790      	b.n	20029db6 <mbedtls_rsa_private+0x22a>
20029e94:	4b01      	ldr	r3, [pc, #4]	@ (20029e9c <mbedtls_rsa_private+0x310>)
20029e96:	e7ad      	b.n	20029df4 <mbedtls_rsa_private+0x268>
20029e98:	ffffbb80 	.word	0xffffbb80
20029e9c:	ffffbf80 	.word	0xffffbf80

20029ea0 <mbedtls_rsa_rsaes_pkcs1_v15_encrypt>:
20029ea0:	e92d 4ff7 	stmdb	sp!, {r0, r1, r2, r4, r5, r6, r7, r8, r9, sl, fp, lr}
20029ea4:	4698      	mov	r8, r3
20029ea6:	e9dd a30c 	ldrd	sl, r3, [sp, #48]	@ 0x30
20029eaa:	f1b8 0f01 	cmp.w	r8, #1
20029eae:	4606      	mov	r6, r0
20029eb0:	460f      	mov	r7, r1
20029eb2:	4691      	mov	r9, r2
20029eb4:	9d0e      	ldr	r5, [sp, #56]	@ 0x38
20029eb6:	d103      	bne.n	20029ec0 <mbedtls_rsa_rsaes_pkcs1_v15_encrypt+0x20>
20029eb8:	f8d0 20a4 	ldr.w	r2, [r0, #164]	@ 0xa4
20029ebc:	2a00      	cmp	r2, #0
20029ebe:	d162      	bne.n	20029f86 <mbedtls_rsa_rsaes_pkcs1_v15_encrypt+0xe6>
20029ec0:	2f00      	cmp	r7, #0
20029ec2:	d060      	beq.n	20029f86 <mbedtls_rsa_rsaes_pkcs1_v15_encrypt+0xe6>
20029ec4:	2b00      	cmp	r3, #0
20029ec6:	d05e      	beq.n	20029f86 <mbedtls_rsa_rsaes_pkcs1_v15_encrypt+0xe6>
20029ec8:	2d00      	cmp	r5, #0
20029eca:	d05c      	beq.n	20029f86 <mbedtls_rsa_rsaes_pkcs1_v15_encrypt+0xe6>
20029ecc:	f11a 0f0c 	cmn.w	sl, #12
20029ed0:	6874      	ldr	r4, [r6, #4]
20029ed2:	d858      	bhi.n	20029f86 <mbedtls_rsa_rsaes_pkcs1_v15_encrypt+0xe6>
20029ed4:	f10a 020b 	add.w	r2, sl, #11
20029ed8:	42a2      	cmp	r2, r4
20029eda:	d854      	bhi.n	20029f86 <mbedtls_rsa_rsaes_pkcs1_v15_encrypt+0xe6>
20029edc:	4629      	mov	r1, r5
20029ede:	2200      	movs	r2, #0
20029ee0:	eba4 040a 	sub.w	r4, r4, sl
20029ee4:	3c03      	subs	r4, #3
20029ee6:	f801 2b02 	strb.w	r2, [r1], #2
20029eea:	f1b8 0f00 	cmp.w	r8, #0
20029eee:	d131      	bne.n	20029f54 <mbedtls_rsa_rsaes_pkcs1_v15_encrypt+0xb4>
20029ef0:	2202      	movs	r2, #2
20029ef2:	4414      	add	r4, r2
20029ef4:	706a      	strb	r2, [r5, #1]
20029ef6:	442c      	add	r4, r5
20029ef8:	42a1      	cmp	r1, r4
20029efa:	d112      	bne.n	20029f22 <mbedtls_rsa_rsaes_pkcs1_v15_encrypt+0x82>
20029efc:	2200      	movs	r2, #0
20029efe:	4620      	mov	r0, r4
20029f00:	4619      	mov	r1, r3
20029f02:	f800 2b01 	strb.w	r2, [r0], #1
20029f06:	4652      	mov	r2, sl
20029f08:	f000 fdaa 	bl	2002aa60 <memcpy>
20029f0c:	f1b8 0f00 	cmp.w	r8, #0
20029f10:	d12f      	bne.n	20029f72 <mbedtls_rsa_rsaes_pkcs1_v15_encrypt+0xd2>
20029f12:	462a      	mov	r2, r5
20029f14:	4629      	mov	r1, r5
20029f16:	4630      	mov	r0, r6
20029f18:	b003      	add	sp, #12
20029f1a:	e8bd 4ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
20029f1e:	f7ff bdff 	b.w	20029b20 <mbedtls_rsa_public>
20029f22:	f04f 0b64 	mov.w	fp, #100	@ 0x64
20029f26:	2201      	movs	r2, #1
20029f28:	4648      	mov	r0, r9
20029f2a:	9301      	str	r3, [sp, #4]
20029f2c:	9100      	str	r1, [sp, #0]
20029f2e:	47b8      	blx	r7
20029f30:	9900      	ldr	r1, [sp, #0]
20029f32:	9b01      	ldr	r3, [sp, #4]
20029f34:	780a      	ldrb	r2, [r1, #0]
20029f36:	b94a      	cbnz	r2, 20029f4c <mbedtls_rsa_rsaes_pkcs1_v15_encrypt+0xac>
20029f38:	f1bb 0b01 	subs.w	fp, fp, #1
20029f3c:	d001      	beq.n	20029f42 <mbedtls_rsa_rsaes_pkcs1_v15_encrypt+0xa2>
20029f3e:	2800      	cmp	r0, #0
20029f40:	d0f1      	beq.n	20029f26 <mbedtls_rsa_rsaes_pkcs1_v15_encrypt+0x86>
20029f42:	f5a0 4089 	sub.w	r0, r0, #17536	@ 0x4480
20029f46:	b003      	add	sp, #12
20029f48:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
20029f4c:	2800      	cmp	r0, #0
20029f4e:	d1f8      	bne.n	20029f42 <mbedtls_rsa_rsaes_pkcs1_v15_encrypt+0xa2>
20029f50:	3101      	adds	r1, #1
20029f52:	e7d1      	b.n	20029ef8 <mbedtls_rsa_rsaes_pkcs1_v15_encrypt+0x58>
20029f54:	2001      	movs	r0, #1
20029f56:	462a      	mov	r2, r5
20029f58:	f04f 0cff 	mov.w	ip, #255	@ 0xff
20029f5c:	f802 0f01 	strb.w	r0, [r2, #1]!
20029f60:	1820      	adds	r0, r4, r0
20029f62:	4428      	add	r0, r5
20029f64:	4282      	cmp	r2, r0
20029f66:	d101      	bne.n	20029f6c <mbedtls_rsa_rsaes_pkcs1_v15_encrypt+0xcc>
20029f68:	440c      	add	r4, r1
20029f6a:	e7c7      	b.n	20029efc <mbedtls_rsa_rsaes_pkcs1_v15_encrypt+0x5c>
20029f6c:	f802 cf01 	strb.w	ip, [r2, #1]!
20029f70:	e7f8      	b.n	20029f64 <mbedtls_rsa_rsaes_pkcs1_v15_encrypt+0xc4>
20029f72:	462b      	mov	r3, r5
20029f74:	464a      	mov	r2, r9
20029f76:	4639      	mov	r1, r7
20029f78:	4630      	mov	r0, r6
20029f7a:	950c      	str	r5, [sp, #48]	@ 0x30
20029f7c:	b003      	add	sp, #12
20029f7e:	e8bd 4ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
20029f82:	f7ff be03 	b.w	20029b8c <mbedtls_rsa_private>
20029f86:	4801      	ldr	r0, [pc, #4]	@ (20029f8c <mbedtls_rsa_rsaes_pkcs1_v15_encrypt+0xec>)
20029f88:	e7dd      	b.n	20029f46 <mbedtls_rsa_rsaes_pkcs1_v15_encrypt+0xa6>
20029f8a:	bf00      	nop
20029f8c:	ffffbf80 	.word	0xffffbf80

20029f90 <mbedtls_rsa_pkcs1_encrypt>:
20029f90:	b410      	push	{r4}
20029f92:	f8d0 40a4 	ldr.w	r4, [r0, #164]	@ 0xa4
20029f96:	b91c      	cbnz	r4, 20029fa0 <mbedtls_rsa_pkcs1_encrypt+0x10>
20029f98:	f85d 4b04 	ldr.w	r4, [sp], #4
20029f9c:	f7ff bf80 	b.w	20029ea0 <mbedtls_rsa_rsaes_pkcs1_v15_encrypt>
20029fa0:	4801      	ldr	r0, [pc, #4]	@ (20029fa8 <mbedtls_rsa_pkcs1_encrypt+0x18>)
20029fa2:	f85d 4b04 	ldr.w	r4, [sp], #4
20029fa6:	4770      	bx	lr
20029fa8:	ffffbf00 	.word	0xffffbf00

20029fac <mbedtls_rsa_rsaes_pkcs1_v15_decrypt>:
20029fac:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
20029fb0:	4698      	mov	r8, r3
20029fb2:	f5ad 6d81 	sub.w	sp, sp, #1032	@ 0x408
20029fb6:	f1b8 0f01 	cmp.w	r8, #1
20029fba:	f8dd 3424 	ldr.w	r3, [sp, #1060]	@ 0x424
20029fbe:	d103      	bne.n	20029fc8 <mbedtls_rsa_rsaes_pkcs1_v15_decrypt+0x1c>
20029fc0:	f8d0 40a4 	ldr.w	r4, [r0, #164]	@ 0xa4
20029fc4:	2c00      	cmp	r4, #0
20029fc6:	d17c      	bne.n	2002a0c2 <mbedtls_rsa_rsaes_pkcs1_v15_decrypt+0x116>
20029fc8:	6845      	ldr	r5, [r0, #4]
20029fca:	f1a5 0410 	sub.w	r4, r5, #16
20029fce:	f5b4 7f7c 	cmp.w	r4, #1008	@ 0x3f0
20029fd2:	d876      	bhi.n	2002a0c2 <mbedtls_rsa_rsaes_pkcs1_v15_decrypt+0x116>
20029fd4:	ae02      	add	r6, sp, #8
20029fd6:	f1b8 0f00 	cmp.w	r8, #0
20029fda:	d153      	bne.n	2002a084 <mbedtls_rsa_rsaes_pkcs1_v15_decrypt+0xd8>
20029fdc:	4632      	mov	r2, r6
20029fde:	4619      	mov	r1, r3
20029fe0:	f7ff fd9e 	bl	20029b20 <mbedtls_rsa_public>
20029fe4:	4604      	mov	r4, r0
20029fe6:	2800      	cmp	r0, #0
20029fe8:	d140      	bne.n	2002a06c <mbedtls_rsa_rsaes_pkcs1_v15_decrypt+0xc0>
20029fea:	f1b8 0f01 	cmp.w	r8, #1
20029fee:	7831      	ldrb	r1, [r6, #0]
20029ff0:	7872      	ldrb	r2, [r6, #1]
20029ff2:	f1a5 0703 	sub.w	r7, r5, #3
20029ff6:	d149      	bne.n	2002a08c <mbedtls_rsa_rsaes_pkcs1_v15_decrypt+0xe0>
20029ff8:	f082 0202 	eor.w	r2, r2, #2
20029ffc:	ea41 0302 	orr.w	r3, r1, r2
2002a000:	4684      	mov	ip, r0
2002a002:	4686      	mov	lr, r0
2002a004:	4602      	mov	r2, r0
2002a006:	f10d 0109 	add.w	r1, sp, #9
2002a00a:	f811 0f01 	ldrb.w	r0, [r1, #1]!
2002a00e:	f10e 0e01 	add.w	lr, lr, #1
2002a012:	f1c0 0800 	rsb	r8, r0, #0
2002a016:	ea40 0008 	orr.w	r0, r0, r8
2002a01a:	f3c0 10c0 	ubfx	r0, r0, #7, #1
2002a01e:	f080 0001 	eor.w	r0, r0, #1
2002a022:	ea4c 0c00 	orr.w	ip, ip, r0
2002a026:	f1cc 0000 	rsb	r0, ip, #0
2002a02a:	ea4c 0000 	orr.w	r0, ip, r0
2002a02e:	f3c0 10c0 	ubfx	r0, r0, #7, #1
2002a032:	f080 0001 	eor.w	r0, r0, #1
2002a036:	45be      	cmp	lr, r7
2002a038:	4402      	add	r2, r0
2002a03a:	d3e6      	bcc.n	2002a00a <mbedtls_rsa_rsaes_pkcs1_v15_decrypt+0x5e>
2002a03c:	f10d 000a 	add.w	r0, sp, #10
2002a040:	1881      	adds	r1, r0, r2
2002a042:	5c80      	ldrb	r0, [r0, r2]
2002a044:	3101      	adds	r1, #1
2002a046:	4303      	orrs	r3, r0
2002a048:	2a07      	cmp	r2, #7
2002a04a:	bf98      	it	ls
2002a04c:	f043 0301 	orrls.w	r3, r3, #1
2002a050:	bb9b      	cbnz	r3, 2002a0ba <mbedtls_rsa_rsaes_pkcs1_v15_decrypt+0x10e>
2002a052:	1b8b      	subs	r3, r1, r6
2002a054:	1aea      	subs	r2, r5, r3
2002a056:	f8dd 342c 	ldr.w	r3, [sp, #1068]	@ 0x42c
2002a05a:	429a      	cmp	r2, r3
2002a05c:	d82f      	bhi.n	2002a0be <mbedtls_rsa_rsaes_pkcs1_v15_decrypt+0x112>
2002a05e:	f8dd 3420 	ldr.w	r3, [sp, #1056]	@ 0x420
2002a062:	f8dd 0428 	ldr.w	r0, [sp, #1064]	@ 0x428
2002a066:	601a      	str	r2, [r3, #0]
2002a068:	f000 fcfa 	bl	2002aa60 <memcpy>
2002a06c:	2300      	movs	r3, #0
2002a06e:	461a      	mov	r2, r3
2002a070:	54f2      	strb	r2, [r6, r3]
2002a072:	3301      	adds	r3, #1
2002a074:	f5b3 6f80 	cmp.w	r3, #1024	@ 0x400
2002a078:	d1fa      	bne.n	2002a070 <mbedtls_rsa_rsaes_pkcs1_v15_decrypt+0xc4>
2002a07a:	4620      	mov	r0, r4
2002a07c:	f50d 6d81 	add.w	sp, sp, #1032	@ 0x408
2002a080:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
2002a084:	9600      	str	r6, [sp, #0]
2002a086:	f7ff fd81 	bl	20029b8c <mbedtls_rsa_private>
2002a08a:	e7ab      	b.n	20029fe4 <mbedtls_rsa_rsaes_pkcs1_v15_decrypt+0x38>
2002a08c:	f082 0201 	eor.w	r2, r2, #1
2002a090:	ea41 0302 	orr.w	r3, r1, r2
2002a094:	4684      	mov	ip, r0
2002a096:	4602      	mov	r2, r0
2002a098:	f10d 0109 	add.w	r1, sp, #9
2002a09c:	f811 ef01 	ldrb.w	lr, [r1, #1]!
2002a0a0:	3001      	adds	r0, #1
2002a0a2:	f1be 0fff 	cmp.w	lr, #255	@ 0xff
2002a0a6:	bf18      	it	ne
2002a0a8:	f04c 0c01 	orrne.w	ip, ip, #1
2002a0ac:	42b8      	cmp	r0, r7
2002a0ae:	f08c 0e01 	eor.w	lr, ip, #1
2002a0b2:	fa52 f28e 	uxtab	r2, r2, lr
2002a0b6:	d3f1      	bcc.n	2002a09c <mbedtls_rsa_rsaes_pkcs1_v15_decrypt+0xf0>
2002a0b8:	e7c0      	b.n	2002a03c <mbedtls_rsa_rsaes_pkcs1_v15_decrypt+0x90>
2002a0ba:	4c03      	ldr	r4, [pc, #12]	@ (2002a0c8 <mbedtls_rsa_rsaes_pkcs1_v15_decrypt+0x11c>)
2002a0bc:	e7d6      	b.n	2002a06c <mbedtls_rsa_rsaes_pkcs1_v15_decrypt+0xc0>
2002a0be:	4c03      	ldr	r4, [pc, #12]	@ (2002a0cc <mbedtls_rsa_rsaes_pkcs1_v15_decrypt+0x120>)
2002a0c0:	e7d4      	b.n	2002a06c <mbedtls_rsa_rsaes_pkcs1_v15_decrypt+0xc0>
2002a0c2:	4c03      	ldr	r4, [pc, #12]	@ (2002a0d0 <mbedtls_rsa_rsaes_pkcs1_v15_decrypt+0x124>)
2002a0c4:	e7d9      	b.n	2002a07a <mbedtls_rsa_rsaes_pkcs1_v15_decrypt+0xce>
2002a0c6:	bf00      	nop
2002a0c8:	ffffbf00 	.word	0xffffbf00
2002a0cc:	ffffbc00 	.word	0xffffbc00
2002a0d0:	ffffbf80 	.word	0xffffbf80

2002a0d4 <mbedtls_rsa_pkcs1_decrypt>:
2002a0d4:	b410      	push	{r4}
2002a0d6:	f8d0 40a4 	ldr.w	r4, [r0, #164]	@ 0xa4
2002a0da:	b91c      	cbnz	r4, 2002a0e4 <mbedtls_rsa_pkcs1_decrypt+0x10>
2002a0dc:	f85d 4b04 	ldr.w	r4, [sp], #4
2002a0e0:	f7ff bf64 	b.w	20029fac <mbedtls_rsa_rsaes_pkcs1_v15_decrypt>
2002a0e4:	4801      	ldr	r0, [pc, #4]	@ (2002a0ec <mbedtls_rsa_pkcs1_decrypt+0x18>)
2002a0e6:	f85d 4b04 	ldr.w	r4, [sp], #4
2002a0ea:	4770      	bx	lr
2002a0ec:	ffffbf00 	.word	0xffffbf00

2002a0f0 <mbedtls_rsa_rsassa_pkcs1_v15_sign>:
2002a0f0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
2002a0f4:	4692      	mov	sl, r2
2002a0f6:	2200      	movs	r2, #0
2002a0f8:	b089      	sub	sp, #36	@ 0x24
2002a0fa:	2b01      	cmp	r3, #1
2002a0fc:	4604      	mov	r4, r0
2002a0fe:	461f      	mov	r7, r3
2002a100:	e9cd 2206 	strd	r2, r2, [sp, #24]
2002a104:	f89d 8048 	ldrb.w	r8, [sp, #72]	@ 0x48
2002a108:	f8dd 904c 	ldr.w	r9, [sp, #76]	@ 0x4c
2002a10c:	9e15      	ldr	r6, [sp, #84]	@ 0x54
2002a10e:	9102      	str	r1, [sp, #8]
2002a110:	d107      	bne.n	2002a122 <mbedtls_rsa_rsassa_pkcs1_v15_sign+0x32>
2002a112:	f8d0 20a4 	ldr.w	r2, [r0, #164]	@ 0xa4
2002a116:	b122      	cbz	r2, 2002a122 <mbedtls_rsa_rsassa_pkcs1_v15_sign+0x32>
2002a118:	4d59      	ldr	r5, [pc, #356]	@ (2002a280 <mbedtls_rsa_rsassa_pkcs1_v15_sign+0x190>)
2002a11a:	4628      	mov	r0, r5
2002a11c:	b009      	add	sp, #36	@ 0x24
2002a11e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
2002a122:	f8d4 b004 	ldr.w	fp, [r4, #4]
2002a126:	f1ab 0503 	sub.w	r5, fp, #3
2002a12a:	f1b8 0f00 	cmp.w	r8, #0
2002a12e:	d014      	beq.n	2002a15a <mbedtls_rsa_rsassa_pkcs1_v15_sign+0x6a>
2002a130:	4640      	mov	r0, r8
2002a132:	f7fb ff77 	bl	20026024 <mbedtls_md_info_from_type>
2002a136:	4681      	mov	r9, r0
2002a138:	2800      	cmp	r0, #0
2002a13a:	d0ed      	beq.n	2002a118 <mbedtls_rsa_rsassa_pkcs1_v15_sign+0x28>
2002a13c:	4640      	mov	r0, r8
2002a13e:	aa06      	add	r2, sp, #24
2002a140:	a907      	add	r1, sp, #28
2002a142:	f7ff f9d3 	bl	200294ec <mbedtls_oid_get_oid_by_md>
2002a146:	2800      	cmp	r0, #0
2002a148:	d1e6      	bne.n	2002a118 <mbedtls_rsa_rsassa_pkcs1_v15_sign+0x28>
2002a14a:	9a06      	ldr	r2, [sp, #24]
2002a14c:	4648      	mov	r0, r9
2002a14e:	1aaa      	subs	r2, r5, r2
2002a150:	f1a2 050a 	sub.w	r5, r2, #10
2002a154:	f7fb ff72 	bl	2002603c <mbedtls_md_get_size>
2002a158:	4681      	mov	r9, r0
2002a15a:	eba5 0209 	sub.w	r2, r5, r9
2002a15e:	2a07      	cmp	r2, #7
2002a160:	d9da      	bls.n	2002a118 <mbedtls_rsa_rsassa_pkcs1_v15_sign+0x28>
2002a162:	4593      	cmp	fp, r2
2002a164:	d3d8      	bcc.n	2002a118 <mbedtls_rsa_rsassa_pkcs1_v15_sign+0x28>
2002a166:	46b3      	mov	fp, r6
2002a168:	2500      	movs	r5, #0
2002a16a:	2101      	movs	r1, #1
2002a16c:	f80b 5b02 	strb.w	r5, [fp], #2
2002a170:	4658      	mov	r0, fp
2002a172:	7071      	strb	r1, [r6, #1]
2002a174:	21ff      	movs	r1, #255	@ 0xff
2002a176:	9203      	str	r2, [sp, #12]
2002a178:	f000 fc58 	bl	2002aa2c <memset>
2002a17c:	9a03      	ldr	r2, [sp, #12]
2002a17e:	eb0b 0002 	add.w	r0, fp, r2
2002a182:	f80b 5002 	strb.w	r5, [fp, r2]
2002a186:	f1b8 0f00 	cmp.w	r8, #0
2002a18a:	d10c      	bne.n	2002a1a6 <mbedtls_rsa_rsassa_pkcs1_v15_sign+0xb6>
2002a18c:	464a      	mov	r2, r9
2002a18e:	9914      	ldr	r1, [sp, #80]	@ 0x50
2002a190:	3001      	adds	r0, #1
2002a192:	f000 fc65 	bl	2002aa60 <memcpy>
2002a196:	bb8f      	cbnz	r7, 2002a1fc <mbedtls_rsa_rsassa_pkcs1_v15_sign+0x10c>
2002a198:	4632      	mov	r2, r6
2002a19a:	4631      	mov	r1, r6
2002a19c:	4620      	mov	r0, r4
2002a19e:	f7ff fcbf 	bl	20029b20 <mbedtls_rsa_public>
2002a1a2:	4605      	mov	r5, r0
2002a1a4:	e7b9      	b.n	2002a11a <mbedtls_rsa_rsassa_pkcs1_v15_sign+0x2a>
2002a1a6:	2130      	movs	r1, #48	@ 0x30
2002a1a8:	7041      	strb	r1, [r0, #1]
2002a1aa:	9a06      	ldr	r2, [sp, #24]
2002a1ac:	70c1      	strb	r1, [r0, #3]
2002a1ae:	3208      	adds	r2, #8
2002a1b0:	fa52 f289 	uxtab	r2, r2, r9
2002a1b4:	7082      	strb	r2, [r0, #2]
2002a1b6:	9a06      	ldr	r2, [sp, #24]
2002a1b8:	f100 0807 	add.w	r8, r0, #7
2002a1bc:	b2d1      	uxtb	r1, r2
2002a1be:	f101 0c04 	add.w	ip, r1, #4
2002a1c2:	f880 c004 	strb.w	ip, [r0, #4]
2002a1c6:	f04f 0c06 	mov.w	ip, #6
2002a1ca:	7181      	strb	r1, [r0, #6]
2002a1cc:	f880 c005 	strb.w	ip, [r0, #5]
2002a1d0:	9907      	ldr	r1, [sp, #28]
2002a1d2:	4640      	mov	r0, r8
2002a1d4:	9203      	str	r2, [sp, #12]
2002a1d6:	f000 fc43 	bl	2002aa60 <memcpy>
2002a1da:	2105      	movs	r1, #5
2002a1dc:	9a03      	ldr	r2, [sp, #12]
2002a1de:	fa5f fb89 	uxtb.w	fp, r9
2002a1e2:	eb08 0002 	add.w	r0, r8, r2
2002a1e6:	f808 1002 	strb.w	r1, [r8, r2]
2002a1ea:	2204      	movs	r2, #4
2002a1ec:	7045      	strb	r5, [r0, #1]
2002a1ee:	7082      	strb	r2, [r0, #2]
2002a1f0:	f880 b003 	strb.w	fp, [r0, #3]
2002a1f4:	464a      	mov	r2, r9
2002a1f6:	9914      	ldr	r1, [sp, #80]	@ 0x50
2002a1f8:	3004      	adds	r0, #4
2002a1fa:	e7ca      	b.n	2002a192 <mbedtls_rsa_rsassa_pkcs1_v15_sign+0xa2>
2002a1fc:	6865      	ldr	r5, [r4, #4]
2002a1fe:	2001      	movs	r0, #1
2002a200:	4629      	mov	r1, r5
2002a202:	f000 fb31 	bl	2002a868 <calloc>
2002a206:	4607      	mov	r7, r0
2002a208:	b140      	cbz	r0, 2002a21c <mbedtls_rsa_rsassa_pkcs1_v15_sign+0x12c>
2002a20a:	4629      	mov	r1, r5
2002a20c:	2001      	movs	r0, #1
2002a20e:	f000 fb2b 	bl	2002a868 <calloc>
2002a212:	4680      	mov	r8, r0
2002a214:	b928      	cbnz	r0, 2002a222 <mbedtls_rsa_rsassa_pkcs1_v15_sign+0x132>
2002a216:	4638      	mov	r0, r7
2002a218:	f000 fb42 	bl	2002a8a0 <free>
2002a21c:	f06f 050f 	mvn.w	r5, #15
2002a220:	e77b      	b.n	2002a11a <mbedtls_rsa_rsassa_pkcs1_v15_sign+0x2a>
2002a222:	4633      	mov	r3, r6
2002a224:	4652      	mov	r2, sl
2002a226:	4620      	mov	r0, r4
2002a228:	9902      	ldr	r1, [sp, #8]
2002a22a:	9700      	str	r7, [sp, #0]
2002a22c:	f7ff fcae 	bl	20029b8c <mbedtls_rsa_private>
2002a230:	4605      	mov	r5, r0
2002a232:	b9a0      	cbnz	r0, 2002a25e <mbedtls_rsa_rsassa_pkcs1_v15_sign+0x16e>
2002a234:	4642      	mov	r2, r8
2002a236:	4639      	mov	r1, r7
2002a238:	4620      	mov	r0, r4
2002a23a:	f7ff fc71 	bl	20029b20 <mbedtls_rsa_public>
2002a23e:	4605      	mov	r5, r0
2002a240:	b968      	cbnz	r0, 2002a25e <mbedtls_rsa_rsassa_pkcs1_v15_sign+0x16e>
2002a242:	4601      	mov	r1, r0
2002a244:	4603      	mov	r3, r0
2002a246:	6862      	ldr	r2, [r4, #4]
2002a248:	429a      	cmp	r2, r3
2002a24a:	d10f      	bne.n	2002a26c <mbedtls_rsa_rsassa_pkcs1_v15_sign+0x17c>
2002a24c:	f88d 1017 	strb.w	r1, [sp, #23]
2002a250:	f89d 3017 	ldrb.w	r3, [sp, #23]
2002a254:	b98b      	cbnz	r3, 2002a27a <mbedtls_rsa_rsassa_pkcs1_v15_sign+0x18a>
2002a256:	4639      	mov	r1, r7
2002a258:	4630      	mov	r0, r6
2002a25a:	f000 fc01 	bl	2002aa60 <memcpy>
2002a25e:	4638      	mov	r0, r7
2002a260:	f000 fb1e 	bl	2002a8a0 <free>
2002a264:	4640      	mov	r0, r8
2002a266:	f000 fb1b 	bl	2002a8a0 <free>
2002a26a:	e756      	b.n	2002a11a <mbedtls_rsa_rsassa_pkcs1_v15_sign+0x2a>
2002a26c:	f818 0003 	ldrb.w	r0, [r8, r3]
2002a270:	5cf4      	ldrb	r4, [r6, r3]
2002a272:	3301      	adds	r3, #1
2002a274:	4060      	eors	r0, r4
2002a276:	4301      	orrs	r1, r0
2002a278:	e7e6      	b.n	2002a248 <mbedtls_rsa_rsassa_pkcs1_v15_sign+0x158>
2002a27a:	4d02      	ldr	r5, [pc, #8]	@ (2002a284 <mbedtls_rsa_rsassa_pkcs1_v15_sign+0x194>)
2002a27c:	e7ef      	b.n	2002a25e <mbedtls_rsa_rsassa_pkcs1_v15_sign+0x16e>
2002a27e:	bf00      	nop
2002a280:	ffffbf80 	.word	0xffffbf80
2002a284:	ffffbd00 	.word	0xffffbd00

2002a288 <mbedtls_rsa_pkcs1_sign>:
2002a288:	b430      	push	{r4, r5}
2002a28a:	f8d0 50a4 	ldr.w	r5, [r0, #164]	@ 0xa4
2002a28e:	f89d 4008 	ldrb.w	r4, [sp, #8]
2002a292:	b91d      	cbnz	r5, 2002a29c <mbedtls_rsa_pkcs1_sign+0x14>
2002a294:	9402      	str	r4, [sp, #8]
2002a296:	bc30      	pop	{r4, r5}
2002a298:	f7ff bf2a 	b.w	2002a0f0 <mbedtls_rsa_rsassa_pkcs1_v15_sign>
2002a29c:	4801      	ldr	r0, [pc, #4]	@ (2002a2a4 <mbedtls_rsa_pkcs1_sign+0x1c>)
2002a29e:	bc30      	pop	{r4, r5}
2002a2a0:	4770      	bx	lr
2002a2a2:	bf00      	nop
2002a2a4:	ffffbf00 	.word	0xffffbf00

2002a2a8 <mbedtls_rsa_rsassa_pkcs1_v15_verify>:
2002a2a8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
2002a2ac:	461c      	mov	r4, r3
2002a2ae:	f2ad 4d2c 	subw	sp, sp, #1068	@ 0x42c
2002a2b2:	f89d 3450 	ldrb.w	r3, [sp, #1104]	@ 0x450
2002a2b6:	2c01      	cmp	r4, #1
2002a2b8:	9303      	str	r3, [sp, #12]
2002a2ba:	f8dd 8454 	ldr.w	r8, [sp, #1108]	@ 0x454
2002a2be:	f8dd 345c 	ldr.w	r3, [sp, #1116]	@ 0x45c
2002a2c2:	d108      	bne.n	2002a2d6 <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x2e>
2002a2c4:	f8d0 50a4 	ldr.w	r5, [r0, #164]	@ 0xa4
2002a2c8:	b12d      	cbz	r5, 2002a2d6 <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x2e>
2002a2ca:	4d60      	ldr	r5, [pc, #384]	@ (2002a44c <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x1a4>)
2002a2cc:	4628      	mov	r0, r5
2002a2ce:	f20d 4d2c 	addw	sp, sp, #1068	@ 0x42c
2002a2d2:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
2002a2d6:	6846      	ldr	r6, [r0, #4]
2002a2d8:	f1a6 0510 	sub.w	r5, r6, #16
2002a2dc:	f5b5 7f7c 	cmp.w	r5, #1008	@ 0x3f0
2002a2e0:	d8f3      	bhi.n	2002a2ca <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x22>
2002a2e2:	af0a      	add	r7, sp, #40	@ 0x28
2002a2e4:	b954      	cbnz	r4, 2002a2fc <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x54>
2002a2e6:	463a      	mov	r2, r7
2002a2e8:	4619      	mov	r1, r3
2002a2ea:	f7ff fc19 	bl	20029b20 <mbedtls_rsa_public>
2002a2ee:	4605      	mov	r5, r0
2002a2f0:	2800      	cmp	r0, #0
2002a2f2:	d1eb      	bne.n	2002a2cc <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x24>
2002a2f4:	783b      	ldrb	r3, [r7, #0]
2002a2f6:	b12b      	cbz	r3, 2002a304 <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x5c>
2002a2f8:	4d55      	ldr	r5, [pc, #340]	@ (2002a450 <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x1a8>)
2002a2fa:	e7e7      	b.n	2002a2cc <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x24>
2002a2fc:	9700      	str	r7, [sp, #0]
2002a2fe:	f7ff fc45 	bl	20029b8c <mbedtls_rsa_private>
2002a302:	e7f4      	b.n	2002a2ee <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x46>
2002a304:	787b      	ldrb	r3, [r7, #1]
2002a306:	ac06      	add	r4, sp, #24
2002a308:	f10d 002a 	add.w	r0, sp, #42	@ 0x2a
2002a30c:	2b01      	cmp	r3, #1
2002a30e:	6020      	str	r0, [r4, #0]
2002a310:	d1f2      	bne.n	2002a2f8 <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x50>
2002a312:	1e73      	subs	r3, r6, #1
2002a314:	443b      	add	r3, r7
2002a316:	7802      	ldrb	r2, [r0, #0]
2002a318:	b992      	cbnz	r2, 2002a340 <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x98>
2002a31a:	3001      	adds	r0, #1
2002a31c:	1bc7      	subs	r7, r0, r7
2002a31e:	2f0a      	cmp	r7, #10
2002a320:	6020      	str	r0, [r4, #0]
2002a322:	dde9      	ble.n	2002a2f8 <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x50>
2002a324:	1bf6      	subs	r6, r6, r7
2002a326:	4546      	cmp	r6, r8
2002a328:	d112      	bne.n	2002a350 <mbedtls_rsa_rsassa_pkcs1_v15_verify+0xa8>
2002a32a:	9b03      	ldr	r3, [sp, #12]
2002a32c:	b983      	cbnz	r3, 2002a350 <mbedtls_rsa_rsassa_pkcs1_v15_verify+0xa8>
2002a32e:	4642      	mov	r2, r8
2002a330:	f8dd 1458 	ldr.w	r1, [sp, #1112]	@ 0x458
2002a334:	f000 fb6a 	bl	2002aa0c <memcmp>
2002a338:	2800      	cmp	r0, #0
2002a33a:	d0c7      	beq.n	2002a2cc <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x24>
2002a33c:	4d45      	ldr	r5, [pc, #276]	@ (2002a454 <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x1ac>)
2002a33e:	e7c5      	b.n	2002a2cc <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x24>
2002a340:	4298      	cmp	r0, r3
2002a342:	d2d9      	bcs.n	2002a2f8 <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x50>
2002a344:	2aff      	cmp	r2, #255	@ 0xff
2002a346:	f100 0001 	add.w	r0, r0, #1
2002a34a:	d1d5      	bne.n	2002a2f8 <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x50>
2002a34c:	6020      	str	r0, [r4, #0]
2002a34e:	e7e2      	b.n	2002a316 <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x6e>
2002a350:	9803      	ldr	r0, [sp, #12]
2002a352:	f7fb fe67 	bl	20026024 <mbedtls_md_info_from_type>
2002a356:	2800      	cmp	r0, #0
2002a358:	d0b7      	beq.n	2002a2ca <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x22>
2002a35a:	f7fb fe6f 	bl	2002603c <mbedtls_md_get_size>
2002a35e:	f8d4 a000 	ldr.w	sl, [r4]
2002a362:	af05      	add	r7, sp, #20
2002a364:	eb0a 0806 	add.w	r8, sl, r6
2002a368:	4681      	mov	r9, r0
2002a36a:	2330      	movs	r3, #48	@ 0x30
2002a36c:	463a      	mov	r2, r7
2002a36e:	4641      	mov	r1, r8
2002a370:	4620      	mov	r0, r4
2002a372:	f7fd fb95 	bl	20027aa0 <mbedtls_asn1_get_tag>
2002a376:	2800      	cmp	r0, #0
2002a378:	d1e0      	bne.n	2002a33c <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x94>
2002a37a:	f8d4 b000 	ldr.w	fp, [r4]
2002a37e:	f10a 0a02 	add.w	sl, sl, #2
2002a382:	45d3      	cmp	fp, sl
2002a384:	d1da      	bne.n	2002a33c <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x94>
2002a386:	683b      	ldr	r3, [r7, #0]
2002a388:	3302      	adds	r3, #2
2002a38a:	42b3      	cmp	r3, r6
2002a38c:	d1d6      	bne.n	2002a33c <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x94>
2002a38e:	2330      	movs	r3, #48	@ 0x30
2002a390:	463a      	mov	r2, r7
2002a392:	4641      	mov	r1, r8
2002a394:	4620      	mov	r0, r4
2002a396:	f7fd fb83 	bl	20027aa0 <mbedtls_asn1_get_tag>
2002a39a:	2800      	cmp	r0, #0
2002a39c:	d1ce      	bne.n	2002a33c <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x94>
2002a39e:	f8d4 a000 	ldr.w	sl, [r4]
2002a3a2:	f10b 0b02 	add.w	fp, fp, #2
2002a3a6:	45da      	cmp	sl, fp
2002a3a8:	d1c8      	bne.n	2002a33c <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x94>
2002a3aa:	683b      	ldr	r3, [r7, #0]
2002a3ac:	3306      	adds	r3, #6
2002a3ae:	444b      	add	r3, r9
2002a3b0:	42b3      	cmp	r3, r6
2002a3b2:	d1c3      	bne.n	2002a33c <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x94>
2002a3b4:	2306      	movs	r3, #6
2002a3b6:	4641      	mov	r1, r8
2002a3b8:	4620      	mov	r0, r4
2002a3ba:	aa08      	add	r2, sp, #32
2002a3bc:	ae07      	add	r6, sp, #28
2002a3be:	f7fd fb6f 	bl	20027aa0 <mbedtls_asn1_get_tag>
2002a3c2:	2800      	cmp	r0, #0
2002a3c4:	d1ba      	bne.n	2002a33c <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x94>
2002a3c6:	6823      	ldr	r3, [r4, #0]
2002a3c8:	f10a 0a02 	add.w	sl, sl, #2
2002a3cc:	4553      	cmp	r3, sl
2002a3ce:	d1b5      	bne.n	2002a33c <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x94>
2002a3d0:	9a08      	ldr	r2, [sp, #32]
2002a3d2:	f10d 0a13 	add.w	sl, sp, #19
2002a3d6:	9309      	str	r3, [sp, #36]	@ 0x24
2002a3d8:	4651      	mov	r1, sl
2002a3da:	4413      	add	r3, r2
2002a3dc:	4630      	mov	r0, r6
2002a3de:	6023      	str	r3, [r4, #0]
2002a3e0:	f7ff f86a 	bl	200294b8 <mbedtls_oid_get_md_alg>
2002a3e4:	2800      	cmp	r0, #0
2002a3e6:	d1a9      	bne.n	2002a33c <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x94>
2002a3e8:	f89d 3013 	ldrb.w	r3, [sp, #19]
2002a3ec:	9a03      	ldr	r2, [sp, #12]
2002a3ee:	4293      	cmp	r3, r2
2002a3f0:	d1a4      	bne.n	2002a33c <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x94>
2002a3f2:	2305      	movs	r3, #5
2002a3f4:	463a      	mov	r2, r7
2002a3f6:	4641      	mov	r1, r8
2002a3f8:	4620      	mov	r0, r4
2002a3fa:	f8d4 a000 	ldr.w	sl, [r4]
2002a3fe:	f7fd fb4f 	bl	20027aa0 <mbedtls_asn1_get_tag>
2002a402:	2800      	cmp	r0, #0
2002a404:	d19a      	bne.n	2002a33c <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x94>
2002a406:	6826      	ldr	r6, [r4, #0]
2002a408:	f10a 0a02 	add.w	sl, sl, #2
2002a40c:	4556      	cmp	r6, sl
2002a40e:	d195      	bne.n	2002a33c <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x94>
2002a410:	2304      	movs	r3, #4
2002a412:	463a      	mov	r2, r7
2002a414:	4641      	mov	r1, r8
2002a416:	4620      	mov	r0, r4
2002a418:	f7fd fb42 	bl	20027aa0 <mbedtls_asn1_get_tag>
2002a41c:	2800      	cmp	r0, #0
2002a41e:	d18d      	bne.n	2002a33c <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x94>
2002a420:	6824      	ldr	r4, [r4, #0]
2002a422:	3602      	adds	r6, #2
2002a424:	42b4      	cmp	r4, r6
2002a426:	d189      	bne.n	2002a33c <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x94>
2002a428:	683b      	ldr	r3, [r7, #0]
2002a42a:	454b      	cmp	r3, r9
2002a42c:	d186      	bne.n	2002a33c <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x94>
2002a42e:	464a      	mov	r2, r9
2002a430:	4620      	mov	r0, r4
2002a432:	f8dd 1458 	ldr.w	r1, [sp, #1112]	@ 0x458
2002a436:	f000 fae9 	bl	2002aa0c <memcmp>
2002a43a:	2800      	cmp	r0, #0
2002a43c:	f47f af7e 	bne.w	2002a33c <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x94>
2002a440:	444c      	add	r4, r9
2002a442:	45a0      	cmp	r8, r4
2002a444:	f43f af42 	beq.w	2002a2cc <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x24>
2002a448:	e778      	b.n	2002a33c <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x94>
2002a44a:	bf00      	nop
2002a44c:	ffffbf80 	.word	0xffffbf80
2002a450:	ffffbf00 	.word	0xffffbf00
2002a454:	ffffbc80 	.word	0xffffbc80

2002a458 <mbedtls_rsa_pkcs1_verify>:
2002a458:	b430      	push	{r4, r5}
2002a45a:	f8d0 50a4 	ldr.w	r5, [r0, #164]	@ 0xa4
2002a45e:	f89d 4008 	ldrb.w	r4, [sp, #8]
2002a462:	b91d      	cbnz	r5, 2002a46c <mbedtls_rsa_pkcs1_verify+0x14>
2002a464:	9402      	str	r4, [sp, #8]
2002a466:	bc30      	pop	{r4, r5}
2002a468:	f7ff bf1e 	b.w	2002a2a8 <mbedtls_rsa_rsassa_pkcs1_v15_verify>
2002a46c:	4801      	ldr	r0, [pc, #4]	@ (2002a474 <mbedtls_rsa_pkcs1_verify+0x1c>)
2002a46e:	bc30      	pop	{r4, r5}
2002a470:	4770      	bx	lr
2002a472:	bf00      	nop
2002a474:	ffffbf00 	.word	0xffffbf00

2002a478 <mbedtls_rsa_free>:
2002a478:	b510      	push	{r4, lr}
2002a47a:	4604      	mov	r4, r0
2002a47c:	308c      	adds	r0, #140	@ 0x8c
2002a47e:	f7fd fd44 	bl	20027f0a <mbedtls_mpi_free>
2002a482:	f104 0098 	add.w	r0, r4, #152	@ 0x98
2002a486:	f7fd fd40 	bl	20027f0a <mbedtls_mpi_free>
2002a48a:	f104 0080 	add.w	r0, r4, #128	@ 0x80
2002a48e:	f7fd fd3c 	bl	20027f0a <mbedtls_mpi_free>
2002a492:	f104 0074 	add.w	r0, r4, #116	@ 0x74
2002a496:	f7fd fd38 	bl	20027f0a <mbedtls_mpi_free>
2002a49a:	f104 0068 	add.w	r0, r4, #104	@ 0x68
2002a49e:	f7fd fd34 	bl	20027f0a <mbedtls_mpi_free>
2002a4a2:	f104 005c 	add.w	r0, r4, #92	@ 0x5c
2002a4a6:	f7fd fd30 	bl	20027f0a <mbedtls_mpi_free>
2002a4aa:	f104 0050 	add.w	r0, r4, #80	@ 0x50
2002a4ae:	f7fd fd2c 	bl	20027f0a <mbedtls_mpi_free>
2002a4b2:	f104 0044 	add.w	r0, r4, #68	@ 0x44
2002a4b6:	f7fd fd28 	bl	20027f0a <mbedtls_mpi_free>
2002a4ba:	f104 0038 	add.w	r0, r4, #56	@ 0x38
2002a4be:	f7fd fd24 	bl	20027f0a <mbedtls_mpi_free>
2002a4c2:	f104 002c 	add.w	r0, r4, #44	@ 0x2c
2002a4c6:	f7fd fd20 	bl	20027f0a <mbedtls_mpi_free>
2002a4ca:	f104 0020 	add.w	r0, r4, #32
2002a4ce:	f7fd fd1c 	bl	20027f0a <mbedtls_mpi_free>
2002a4d2:	f104 0014 	add.w	r0, r4, #20
2002a4d6:	f7fd fd18 	bl	20027f0a <mbedtls_mpi_free>
2002a4da:	f104 0008 	add.w	r0, r4, #8
2002a4de:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
2002a4e2:	f7fd bd12 	b.w	20027f0a <mbedtls_mpi_free>
	...

2002a4e8 <__aeabi_uldivmod>:
2002a4e8:	b953      	cbnz	r3, 2002a500 <__aeabi_uldivmod+0x18>
2002a4ea:	b94a      	cbnz	r2, 2002a500 <__aeabi_uldivmod+0x18>
2002a4ec:	2900      	cmp	r1, #0
2002a4ee:	bf08      	it	eq
2002a4f0:	2800      	cmpeq	r0, #0
2002a4f2:	bf1c      	itt	ne
2002a4f4:	f04f 31ff 	movne.w	r1, #4294967295
2002a4f8:	f04f 30ff 	movne.w	r0, #4294967295
2002a4fc:	f000 b9b2 	b.w	2002a864 <__aeabi_idiv0>
2002a500:	f1ad 0c08 	sub.w	ip, sp, #8
2002a504:	e96d ce04 	strd	ip, lr, [sp, #-16]!
2002a508:	f000 f806 	bl	2002a518 <__udivmoddi4>
2002a50c:	f8dd e004 	ldr.w	lr, [sp, #4]
2002a510:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
2002a514:	b004      	add	sp, #16
2002a516:	4770      	bx	lr

2002a518 <__udivmoddi4>:
2002a518:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
2002a51c:	468c      	mov	ip, r1
2002a51e:	9e09      	ldr	r6, [sp, #36]	@ 0x24
2002a520:	4604      	mov	r4, r0
2002a522:	460f      	mov	r7, r1
2002a524:	2b00      	cmp	r3, #0
2002a526:	d148      	bne.n	2002a5ba <__udivmoddi4+0xa2>
2002a528:	428a      	cmp	r2, r1
2002a52a:	4615      	mov	r5, r2
2002a52c:	d95e      	bls.n	2002a5ec <__udivmoddi4+0xd4>
2002a52e:	fab2 f382 	clz	r3, r2
2002a532:	b13b      	cbz	r3, 2002a544 <__udivmoddi4+0x2c>
2002a534:	f1c3 0220 	rsb	r2, r3, #32
2002a538:	409f      	lsls	r7, r3
2002a53a:	409d      	lsls	r5, r3
2002a53c:	409c      	lsls	r4, r3
2002a53e:	fa20 f202 	lsr.w	r2, r0, r2
2002a542:	4317      	orrs	r7, r2
2002a544:	ea4f 4e15 	mov.w	lr, r5, lsr #16
2002a548:	fa1f fc85 	uxth.w	ip, r5
2002a54c:	0c22      	lsrs	r2, r4, #16
2002a54e:	fbb7 f1fe 	udiv	r1, r7, lr
2002a552:	fb0e 7711 	mls	r7, lr, r1, r7
2002a556:	fb01 f00c 	mul.w	r0, r1, ip
2002a55a:	ea42 4207 	orr.w	r2, r2, r7, lsl #16
2002a55e:	4290      	cmp	r0, r2
2002a560:	d907      	bls.n	2002a572 <__udivmoddi4+0x5a>
2002a562:	18aa      	adds	r2, r5, r2
2002a564:	f101 37ff 	add.w	r7, r1, #4294967295
2002a568:	d202      	bcs.n	2002a570 <__udivmoddi4+0x58>
2002a56a:	4290      	cmp	r0, r2
2002a56c:	f200 8158 	bhi.w	2002a820 <__udivmoddi4+0x308>
2002a570:	4639      	mov	r1, r7
2002a572:	1a12      	subs	r2, r2, r0
2002a574:	b2a4      	uxth	r4, r4
2002a576:	fbb2 f0fe 	udiv	r0, r2, lr
2002a57a:	fb0e 2210 	mls	r2, lr, r0, r2
2002a57e:	fb00 fc0c 	mul.w	ip, r0, ip
2002a582:	ea44 4402 	orr.w	r4, r4, r2, lsl #16
2002a586:	45a4      	cmp	ip, r4
2002a588:	d90b      	bls.n	2002a5a2 <__udivmoddi4+0x8a>
2002a58a:	192c      	adds	r4, r5, r4
2002a58c:	f100 32ff 	add.w	r2, r0, #4294967295
2002a590:	bf2c      	ite	cs
2002a592:	2701      	movcs	r7, #1
2002a594:	2700      	movcc	r7, #0
2002a596:	45a4      	cmp	ip, r4
2002a598:	d902      	bls.n	2002a5a0 <__udivmoddi4+0x88>
2002a59a:	2f00      	cmp	r7, #0
2002a59c:	f000 8143 	beq.w	2002a826 <__udivmoddi4+0x30e>
2002a5a0:	4610      	mov	r0, r2
2002a5a2:	ea40 4001 	orr.w	r0, r0, r1, lsl #16
2002a5a6:	eba4 040c 	sub.w	r4, r4, ip
2002a5aa:	2100      	movs	r1, #0
2002a5ac:	b11e      	cbz	r6, 2002a5b6 <__udivmoddi4+0x9e>
2002a5ae:	40dc      	lsrs	r4, r3
2002a5b0:	2300      	movs	r3, #0
2002a5b2:	e9c6 4300 	strd	r4, r3, [r6]
2002a5b6:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
2002a5ba:	428b      	cmp	r3, r1
2002a5bc:	d906      	bls.n	2002a5cc <__udivmoddi4+0xb4>
2002a5be:	b10e      	cbz	r6, 2002a5c4 <__udivmoddi4+0xac>
2002a5c0:	e9c6 0100 	strd	r0, r1, [r6]
2002a5c4:	2100      	movs	r1, #0
2002a5c6:	4608      	mov	r0, r1
2002a5c8:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
2002a5cc:	fab3 f183 	clz	r1, r3
2002a5d0:	2900      	cmp	r1, #0
2002a5d2:	d151      	bne.n	2002a678 <__udivmoddi4+0x160>
2002a5d4:	4563      	cmp	r3, ip
2002a5d6:	f0c0 8116 	bcc.w	2002a806 <__udivmoddi4+0x2ee>
2002a5da:	4282      	cmp	r2, r0
2002a5dc:	f240 8113 	bls.w	2002a806 <__udivmoddi4+0x2ee>
2002a5e0:	4608      	mov	r0, r1
2002a5e2:	2e00      	cmp	r6, #0
2002a5e4:	d0e7      	beq.n	2002a5b6 <__udivmoddi4+0x9e>
2002a5e6:	e9c6 4700 	strd	r4, r7, [r6]
2002a5ea:	e7e4      	b.n	2002a5b6 <__udivmoddi4+0x9e>
2002a5ec:	2a00      	cmp	r2, #0
2002a5ee:	f000 80af 	beq.w	2002a750 <__udivmoddi4+0x238>
2002a5f2:	fab2 f382 	clz	r3, r2
2002a5f6:	2b00      	cmp	r3, #0
2002a5f8:	f040 80c2 	bne.w	2002a780 <__udivmoddi4+0x268>
2002a5fc:	1a8a      	subs	r2, r1, r2
2002a5fe:	ea4f 4e15 	mov.w	lr, r5, lsr #16
2002a602:	b2af      	uxth	r7, r5
2002a604:	2101      	movs	r1, #1
2002a606:	0c20      	lsrs	r0, r4, #16
2002a608:	fbb2 fcfe 	udiv	ip, r2, lr
2002a60c:	fb0e 221c 	mls	r2, lr, ip, r2
2002a610:	ea40 4202 	orr.w	r2, r0, r2, lsl #16
2002a614:	fb07 f00c 	mul.w	r0, r7, ip
2002a618:	4290      	cmp	r0, r2
2002a61a:	d90e      	bls.n	2002a63a <__udivmoddi4+0x122>
2002a61c:	18aa      	adds	r2, r5, r2
2002a61e:	f10c 38ff 	add.w	r8, ip, #4294967295
2002a622:	bf2c      	ite	cs
2002a624:	f04f 0901 	movcs.w	r9, #1
2002a628:	f04f 0900 	movcc.w	r9, #0
2002a62c:	4290      	cmp	r0, r2
2002a62e:	d903      	bls.n	2002a638 <__udivmoddi4+0x120>
2002a630:	f1b9 0f00 	cmp.w	r9, #0
2002a634:	f000 80f0 	beq.w	2002a818 <__udivmoddi4+0x300>
2002a638:	46c4      	mov	ip, r8
2002a63a:	1a12      	subs	r2, r2, r0
2002a63c:	b2a4      	uxth	r4, r4
2002a63e:	fbb2 f0fe 	udiv	r0, r2, lr
2002a642:	fb0e 2210 	mls	r2, lr, r0, r2
2002a646:	fb00 f707 	mul.w	r7, r0, r7
2002a64a:	ea44 4402 	orr.w	r4, r4, r2, lsl #16
2002a64e:	42a7      	cmp	r7, r4
2002a650:	d90e      	bls.n	2002a670 <__udivmoddi4+0x158>
2002a652:	192c      	adds	r4, r5, r4
2002a654:	f100 32ff 	add.w	r2, r0, #4294967295
2002a658:	bf2c      	ite	cs
2002a65a:	f04f 0e01 	movcs.w	lr, #1
2002a65e:	f04f 0e00 	movcc.w	lr, #0
2002a662:	42a7      	cmp	r7, r4
2002a664:	d903      	bls.n	2002a66e <__udivmoddi4+0x156>
2002a666:	f1be 0f00 	cmp.w	lr, #0
2002a66a:	f000 80d2 	beq.w	2002a812 <__udivmoddi4+0x2fa>
2002a66e:	4610      	mov	r0, r2
2002a670:	1be4      	subs	r4, r4, r7
2002a672:	ea40 400c 	orr.w	r0, r0, ip, lsl #16
2002a676:	e799      	b.n	2002a5ac <__udivmoddi4+0x94>
2002a678:	f1c1 0520 	rsb	r5, r1, #32
2002a67c:	408b      	lsls	r3, r1
2002a67e:	fa0c f401 	lsl.w	r4, ip, r1
2002a682:	fa00 f901 	lsl.w	r9, r0, r1
2002a686:	fa22 f705 	lsr.w	r7, r2, r5
2002a68a:	fa2c fc05 	lsr.w	ip, ip, r5
2002a68e:	408a      	lsls	r2, r1
2002a690:	431f      	orrs	r7, r3
2002a692:	fa20 f305 	lsr.w	r3, r0, r5
2002a696:	0c38      	lsrs	r0, r7, #16
2002a698:	4323      	orrs	r3, r4
2002a69a:	fa1f fe87 	uxth.w	lr, r7
2002a69e:	0c1c      	lsrs	r4, r3, #16
2002a6a0:	fbbc f8f0 	udiv	r8, ip, r0
2002a6a4:	fb00 cc18 	mls	ip, r0, r8, ip
2002a6a8:	ea44 440c 	orr.w	r4, r4, ip, lsl #16
2002a6ac:	fb08 fc0e 	mul.w	ip, r8, lr
2002a6b0:	45a4      	cmp	ip, r4
2002a6b2:	d90e      	bls.n	2002a6d2 <__udivmoddi4+0x1ba>
2002a6b4:	193c      	adds	r4, r7, r4
2002a6b6:	f108 3aff 	add.w	sl, r8, #4294967295
2002a6ba:	bf2c      	ite	cs
2002a6bc:	f04f 0b01 	movcs.w	fp, #1
2002a6c0:	f04f 0b00 	movcc.w	fp, #0
2002a6c4:	45a4      	cmp	ip, r4
2002a6c6:	d903      	bls.n	2002a6d0 <__udivmoddi4+0x1b8>
2002a6c8:	f1bb 0f00 	cmp.w	fp, #0
2002a6cc:	f000 80b8 	beq.w	2002a840 <__udivmoddi4+0x328>
2002a6d0:	46d0      	mov	r8, sl
2002a6d2:	eba4 040c 	sub.w	r4, r4, ip
2002a6d6:	fa1f fc83 	uxth.w	ip, r3
2002a6da:	fbb4 f3f0 	udiv	r3, r4, r0
2002a6de:	fb00 4413 	mls	r4, r0, r3, r4
2002a6e2:	fb03 fe0e 	mul.w	lr, r3, lr
2002a6e6:	ea4c 4404 	orr.w	r4, ip, r4, lsl #16
2002a6ea:	45a6      	cmp	lr, r4
2002a6ec:	d90e      	bls.n	2002a70c <__udivmoddi4+0x1f4>
2002a6ee:	193c      	adds	r4, r7, r4
2002a6f0:	f103 30ff 	add.w	r0, r3, #4294967295
2002a6f4:	bf2c      	ite	cs
2002a6f6:	f04f 0c01 	movcs.w	ip, #1
2002a6fa:	f04f 0c00 	movcc.w	ip, #0
2002a6fe:	45a6      	cmp	lr, r4
2002a700:	d903      	bls.n	2002a70a <__udivmoddi4+0x1f2>
2002a702:	f1bc 0f00 	cmp.w	ip, #0
2002a706:	f000 809f 	beq.w	2002a848 <__udivmoddi4+0x330>
2002a70a:	4603      	mov	r3, r0
2002a70c:	ea43 4008 	orr.w	r0, r3, r8, lsl #16
2002a710:	eba4 040e 	sub.w	r4, r4, lr
2002a714:	fba0 ec02 	umull	lr, ip, r0, r2
2002a718:	4564      	cmp	r4, ip
2002a71a:	4673      	mov	r3, lr
2002a71c:	46e0      	mov	r8, ip
2002a71e:	d302      	bcc.n	2002a726 <__udivmoddi4+0x20e>
2002a720:	d107      	bne.n	2002a732 <__udivmoddi4+0x21a>
2002a722:	45f1      	cmp	r9, lr
2002a724:	d205      	bcs.n	2002a732 <__udivmoddi4+0x21a>
2002a726:	ebbe 0302 	subs.w	r3, lr, r2
2002a72a:	eb6c 0c07 	sbc.w	ip, ip, r7
2002a72e:	3801      	subs	r0, #1
2002a730:	46e0      	mov	r8, ip
2002a732:	b15e      	cbz	r6, 2002a74c <__udivmoddi4+0x234>
2002a734:	ebb9 0203 	subs.w	r2, r9, r3
2002a738:	eb64 0408 	sbc.w	r4, r4, r8
2002a73c:	fa04 f505 	lsl.w	r5, r4, r5
2002a740:	fa22 f301 	lsr.w	r3, r2, r1
2002a744:	40cc      	lsrs	r4, r1
2002a746:	431d      	orrs	r5, r3
2002a748:	e9c6 5400 	strd	r5, r4, [r6]
2002a74c:	2100      	movs	r1, #0
2002a74e:	e732      	b.n	2002a5b6 <__udivmoddi4+0x9e>
2002a750:	0842      	lsrs	r2, r0, #1
2002a752:	462f      	mov	r7, r5
2002a754:	084b      	lsrs	r3, r1, #1
2002a756:	46ac      	mov	ip, r5
2002a758:	ea42 72c1 	orr.w	r2, r2, r1, lsl #31
2002a75c:	46ae      	mov	lr, r5
2002a75e:	07c4      	lsls	r4, r0, #31
2002a760:	0c11      	lsrs	r1, r2, #16
2002a762:	b292      	uxth	r2, r2
2002a764:	ea41 4103 	orr.w	r1, r1, r3, lsl #16
2002a768:	ea42 4201 	orr.w	r2, r2, r1, lsl #16
2002a76c:	fbb1 f1f5 	udiv	r1, r1, r5
2002a770:	fbb3 f0f5 	udiv	r0, r3, r5
2002a774:	231f      	movs	r3, #31
2002a776:	eba2 020c 	sub.w	r2, r2, ip
2002a77a:	ea41 4100 	orr.w	r1, r1, r0, lsl #16
2002a77e:	e742      	b.n	2002a606 <__udivmoddi4+0xee>
2002a780:	409d      	lsls	r5, r3
2002a782:	f1c3 0220 	rsb	r2, r3, #32
2002a786:	4099      	lsls	r1, r3
2002a788:	409c      	lsls	r4, r3
2002a78a:	fa2c fc02 	lsr.w	ip, ip, r2
2002a78e:	ea4f 4e15 	mov.w	lr, r5, lsr #16
2002a792:	fa20 f202 	lsr.w	r2, r0, r2
2002a796:	b2af      	uxth	r7, r5
2002a798:	fbbc f8fe 	udiv	r8, ip, lr
2002a79c:	430a      	orrs	r2, r1
2002a79e:	fb0e cc18 	mls	ip, lr, r8, ip
2002a7a2:	0c11      	lsrs	r1, r2, #16
2002a7a4:	ea41 410c 	orr.w	r1, r1, ip, lsl #16
2002a7a8:	fb08 fc07 	mul.w	ip, r8, r7
2002a7ac:	458c      	cmp	ip, r1
2002a7ae:	d950      	bls.n	2002a852 <__udivmoddi4+0x33a>
2002a7b0:	1869      	adds	r1, r5, r1
2002a7b2:	f108 30ff 	add.w	r0, r8, #4294967295
2002a7b6:	bf2c      	ite	cs
2002a7b8:	f04f 0901 	movcs.w	r9, #1
2002a7bc:	f04f 0900 	movcc.w	r9, #0
2002a7c0:	458c      	cmp	ip, r1
2002a7c2:	d902      	bls.n	2002a7ca <__udivmoddi4+0x2b2>
2002a7c4:	f1b9 0f00 	cmp.w	r9, #0
2002a7c8:	d030      	beq.n	2002a82c <__udivmoddi4+0x314>
2002a7ca:	eba1 010c 	sub.w	r1, r1, ip
2002a7ce:	fbb1 f8fe 	udiv	r8, r1, lr
2002a7d2:	fb08 fc07 	mul.w	ip, r8, r7
2002a7d6:	fb0e 1118 	mls	r1, lr, r8, r1
2002a7da:	b292      	uxth	r2, r2
2002a7dc:	ea42 4201 	orr.w	r2, r2, r1, lsl #16
2002a7e0:	4562      	cmp	r2, ip
2002a7e2:	d234      	bcs.n	2002a84e <__udivmoddi4+0x336>
2002a7e4:	18aa      	adds	r2, r5, r2
2002a7e6:	f108 31ff 	add.w	r1, r8, #4294967295
2002a7ea:	bf2c      	ite	cs
2002a7ec:	f04f 0901 	movcs.w	r9, #1
2002a7f0:	f04f 0900 	movcc.w	r9, #0
2002a7f4:	4562      	cmp	r2, ip
2002a7f6:	d2be      	bcs.n	2002a776 <__udivmoddi4+0x25e>
2002a7f8:	f1b9 0f00 	cmp.w	r9, #0
2002a7fc:	d1bb      	bne.n	2002a776 <__udivmoddi4+0x25e>
2002a7fe:	f1a8 0102 	sub.w	r1, r8, #2
2002a802:	442a      	add	r2, r5
2002a804:	e7b7      	b.n	2002a776 <__udivmoddi4+0x25e>
2002a806:	1a84      	subs	r4, r0, r2
2002a808:	eb6c 0203 	sbc.w	r2, ip, r3
2002a80c:	2001      	movs	r0, #1
2002a80e:	4617      	mov	r7, r2
2002a810:	e6e7      	b.n	2002a5e2 <__udivmoddi4+0xca>
2002a812:	442c      	add	r4, r5
2002a814:	3802      	subs	r0, #2
2002a816:	e72b      	b.n	2002a670 <__udivmoddi4+0x158>
2002a818:	f1ac 0c02 	sub.w	ip, ip, #2
2002a81c:	442a      	add	r2, r5
2002a81e:	e70c      	b.n	2002a63a <__udivmoddi4+0x122>
2002a820:	3902      	subs	r1, #2
2002a822:	442a      	add	r2, r5
2002a824:	e6a5      	b.n	2002a572 <__udivmoddi4+0x5a>
2002a826:	442c      	add	r4, r5
2002a828:	3802      	subs	r0, #2
2002a82a:	e6ba      	b.n	2002a5a2 <__udivmoddi4+0x8a>
2002a82c:	eba5 0c0c 	sub.w	ip, r5, ip
2002a830:	f1a8 0002 	sub.w	r0, r8, #2
2002a834:	4461      	add	r1, ip
2002a836:	fbb1 f8fe 	udiv	r8, r1, lr
2002a83a:	fb08 fc07 	mul.w	ip, r8, r7
2002a83e:	e7ca      	b.n	2002a7d6 <__udivmoddi4+0x2be>
2002a840:	f1a8 0802 	sub.w	r8, r8, #2
2002a844:	443c      	add	r4, r7
2002a846:	e744      	b.n	2002a6d2 <__udivmoddi4+0x1ba>
2002a848:	3b02      	subs	r3, #2
2002a84a:	443c      	add	r4, r7
2002a84c:	e75e      	b.n	2002a70c <__udivmoddi4+0x1f4>
2002a84e:	4641      	mov	r1, r8
2002a850:	e791      	b.n	2002a776 <__udivmoddi4+0x25e>
2002a852:	eba1 010c 	sub.w	r1, r1, ip
2002a856:	4640      	mov	r0, r8
2002a858:	fbb1 f8fe 	udiv	r8, r1, lr
2002a85c:	fb08 fc07 	mul.w	ip, r8, r7
2002a860:	e7b9      	b.n	2002a7d6 <__udivmoddi4+0x2be>
2002a862:	bf00      	nop

2002a864 <__aeabi_idiv0>:
2002a864:	4770      	bx	lr
2002a866:	bf00      	nop

2002a868 <calloc>:
2002a868:	4b02      	ldr	r3, [pc, #8]	@ (2002a874 <calloc+0xc>)
2002a86a:	460a      	mov	r2, r1
2002a86c:	4601      	mov	r1, r0
2002a86e:	6818      	ldr	r0, [r3, #0]
2002a870:	f000 b802 	b.w	2002a878 <_calloc_r>
2002a874:	20044960 	.word	0x20044960

2002a878 <_calloc_r>:
2002a878:	b570      	push	{r4, r5, r6, lr}
2002a87a:	fba1 5402 	umull	r5, r4, r1, r2
2002a87e:	b934      	cbnz	r4, 2002a88e <_calloc_r+0x16>
2002a880:	4629      	mov	r1, r5
2002a882:	f000 f837 	bl	2002a8f4 <_malloc_r>
2002a886:	4606      	mov	r6, r0
2002a888:	b928      	cbnz	r0, 2002a896 <_calloc_r+0x1e>
2002a88a:	4630      	mov	r0, r6
2002a88c:	bd70      	pop	{r4, r5, r6, pc}
2002a88e:	220c      	movs	r2, #12
2002a890:	2600      	movs	r6, #0
2002a892:	6002      	str	r2, [r0, #0]
2002a894:	e7f9      	b.n	2002a88a <_calloc_r+0x12>
2002a896:	462a      	mov	r2, r5
2002a898:	4621      	mov	r1, r4
2002a89a:	f000 f8c7 	bl	2002aa2c <memset>
2002a89e:	e7f4      	b.n	2002a88a <_calloc_r+0x12>

2002a8a0 <free>:
2002a8a0:	4b02      	ldr	r3, [pc, #8]	@ (2002a8ac <free+0xc>)
2002a8a2:	4601      	mov	r1, r0
2002a8a4:	6818      	ldr	r0, [r3, #0]
2002a8a6:	f000 b8e9 	b.w	2002aa7c <_free_r>
2002a8aa:	bf00      	nop
2002a8ac:	20044960 	.word	0x20044960

2002a8b0 <sbrk_aligned>:
2002a8b0:	b570      	push	{r4, r5, r6, lr}
2002a8b2:	4e0f      	ldr	r6, [pc, #60]	@ (2002a8f0 <sbrk_aligned+0x40>)
2002a8b4:	460c      	mov	r4, r1
2002a8b6:	4605      	mov	r5, r0
2002a8b8:	6831      	ldr	r1, [r6, #0]
2002a8ba:	b911      	cbnz	r1, 2002a8c2 <sbrk_aligned+0x12>
2002a8bc:	f000 f8be 	bl	2002aa3c <_sbrk_r>
2002a8c0:	6030      	str	r0, [r6, #0]
2002a8c2:	4621      	mov	r1, r4
2002a8c4:	4628      	mov	r0, r5
2002a8c6:	f000 f8b9 	bl	2002aa3c <_sbrk_r>
2002a8ca:	1c43      	adds	r3, r0, #1
2002a8cc:	d103      	bne.n	2002a8d6 <sbrk_aligned+0x26>
2002a8ce:	f04f 34ff 	mov.w	r4, #4294967295
2002a8d2:	4620      	mov	r0, r4
2002a8d4:	bd70      	pop	{r4, r5, r6, pc}
2002a8d6:	1cc4      	adds	r4, r0, #3
2002a8d8:	f024 0403 	bic.w	r4, r4, #3
2002a8dc:	42a0      	cmp	r0, r4
2002a8de:	d0f8      	beq.n	2002a8d2 <sbrk_aligned+0x22>
2002a8e0:	1a21      	subs	r1, r4, r0
2002a8e2:	4628      	mov	r0, r5
2002a8e4:	f000 f8aa 	bl	2002aa3c <_sbrk_r>
2002a8e8:	3001      	adds	r0, #1
2002a8ea:	d1f2      	bne.n	2002a8d2 <sbrk_aligned+0x22>
2002a8ec:	e7ef      	b.n	2002a8ce <sbrk_aligned+0x1e>
2002a8ee:	bf00      	nop
2002a8f0:	2004d080 	.word	0x2004d080

2002a8f4 <_malloc_r>:
2002a8f4:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
2002a8f8:	1ccd      	adds	r5, r1, #3
2002a8fa:	4606      	mov	r6, r0
2002a8fc:	f025 0503 	bic.w	r5, r5, #3
2002a900:	3508      	adds	r5, #8
2002a902:	2d0c      	cmp	r5, #12
2002a904:	bf38      	it	cc
2002a906:	250c      	movcc	r5, #12
2002a908:	2d00      	cmp	r5, #0
2002a90a:	db01      	blt.n	2002a910 <_malloc_r+0x1c>
2002a90c:	42a9      	cmp	r1, r5
2002a90e:	d904      	bls.n	2002a91a <_malloc_r+0x26>
2002a910:	230c      	movs	r3, #12
2002a912:	6033      	str	r3, [r6, #0]
2002a914:	2000      	movs	r0, #0
2002a916:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
2002a91a:	f8df 80d4 	ldr.w	r8, [pc, #212]	@ 2002a9f0 <_malloc_r+0xfc>
2002a91e:	f000 f869 	bl	2002a9f4 <__malloc_lock>
2002a922:	f8d8 3000 	ldr.w	r3, [r8]
2002a926:	461c      	mov	r4, r3
2002a928:	bb44      	cbnz	r4, 2002a97c <_malloc_r+0x88>
2002a92a:	4629      	mov	r1, r5
2002a92c:	4630      	mov	r0, r6
2002a92e:	f7ff ffbf 	bl	2002a8b0 <sbrk_aligned>
2002a932:	1c43      	adds	r3, r0, #1
2002a934:	4604      	mov	r4, r0
2002a936:	d158      	bne.n	2002a9ea <_malloc_r+0xf6>
2002a938:	f8d8 4000 	ldr.w	r4, [r8]
2002a93c:	4627      	mov	r7, r4
2002a93e:	2f00      	cmp	r7, #0
2002a940:	d143      	bne.n	2002a9ca <_malloc_r+0xd6>
2002a942:	2c00      	cmp	r4, #0
2002a944:	d04b      	beq.n	2002a9de <_malloc_r+0xea>
2002a946:	6823      	ldr	r3, [r4, #0]
2002a948:	4639      	mov	r1, r7
2002a94a:	4630      	mov	r0, r6
2002a94c:	eb04 0903 	add.w	r9, r4, r3
2002a950:	f000 f874 	bl	2002aa3c <_sbrk_r>
2002a954:	4581      	cmp	r9, r0
2002a956:	d142      	bne.n	2002a9de <_malloc_r+0xea>
2002a958:	6821      	ldr	r1, [r4, #0]
2002a95a:	4630      	mov	r0, r6
2002a95c:	1a6d      	subs	r5, r5, r1
2002a95e:	4629      	mov	r1, r5
2002a960:	f7ff ffa6 	bl	2002a8b0 <sbrk_aligned>
2002a964:	3001      	adds	r0, #1
2002a966:	d03a      	beq.n	2002a9de <_malloc_r+0xea>
2002a968:	6823      	ldr	r3, [r4, #0]
2002a96a:	442b      	add	r3, r5
2002a96c:	6023      	str	r3, [r4, #0]
2002a96e:	f8d8 3000 	ldr.w	r3, [r8]
2002a972:	685a      	ldr	r2, [r3, #4]
2002a974:	bb62      	cbnz	r2, 2002a9d0 <_malloc_r+0xdc>
2002a976:	f8c8 7000 	str.w	r7, [r8]
2002a97a:	e00f      	b.n	2002a99c <_malloc_r+0xa8>
2002a97c:	6822      	ldr	r2, [r4, #0]
2002a97e:	1b52      	subs	r2, r2, r5
2002a980:	d420      	bmi.n	2002a9c4 <_malloc_r+0xd0>
2002a982:	2a0b      	cmp	r2, #11
2002a984:	d917      	bls.n	2002a9b6 <_malloc_r+0xc2>
2002a986:	1961      	adds	r1, r4, r5
2002a988:	42a3      	cmp	r3, r4
2002a98a:	6025      	str	r5, [r4, #0]
2002a98c:	bf18      	it	ne
2002a98e:	6059      	strne	r1, [r3, #4]
2002a990:	6863      	ldr	r3, [r4, #4]
2002a992:	bf08      	it	eq
2002a994:	f8c8 1000 	streq.w	r1, [r8]
2002a998:	5162      	str	r2, [r4, r5]
2002a99a:	604b      	str	r3, [r1, #4]
2002a99c:	4630      	mov	r0, r6
2002a99e:	f000 f82f 	bl	2002aa00 <__malloc_unlock>
2002a9a2:	f104 000b 	add.w	r0, r4, #11
2002a9a6:	1d23      	adds	r3, r4, #4
2002a9a8:	f020 0007 	bic.w	r0, r0, #7
2002a9ac:	1ac2      	subs	r2, r0, r3
2002a9ae:	bf1c      	itt	ne
2002a9b0:	1a1b      	subne	r3, r3, r0
2002a9b2:	50a3      	strne	r3, [r4, r2]
2002a9b4:	e7af      	b.n	2002a916 <_malloc_r+0x22>
2002a9b6:	6862      	ldr	r2, [r4, #4]
2002a9b8:	42a3      	cmp	r3, r4
2002a9ba:	bf0c      	ite	eq
2002a9bc:	f8c8 2000 	streq.w	r2, [r8]
2002a9c0:	605a      	strne	r2, [r3, #4]
2002a9c2:	e7eb      	b.n	2002a99c <_malloc_r+0xa8>
2002a9c4:	4623      	mov	r3, r4
2002a9c6:	6864      	ldr	r4, [r4, #4]
2002a9c8:	e7ae      	b.n	2002a928 <_malloc_r+0x34>
2002a9ca:	463c      	mov	r4, r7
2002a9cc:	687f      	ldr	r7, [r7, #4]
2002a9ce:	e7b6      	b.n	2002a93e <_malloc_r+0x4a>
2002a9d0:	461a      	mov	r2, r3
2002a9d2:	685b      	ldr	r3, [r3, #4]
2002a9d4:	42a3      	cmp	r3, r4
2002a9d6:	d1fb      	bne.n	2002a9d0 <_malloc_r+0xdc>
2002a9d8:	2300      	movs	r3, #0
2002a9da:	6053      	str	r3, [r2, #4]
2002a9dc:	e7de      	b.n	2002a99c <_malloc_r+0xa8>
2002a9de:	230c      	movs	r3, #12
2002a9e0:	4630      	mov	r0, r6
2002a9e2:	6033      	str	r3, [r6, #0]
2002a9e4:	f000 f80c 	bl	2002aa00 <__malloc_unlock>
2002a9e8:	e794      	b.n	2002a914 <_malloc_r+0x20>
2002a9ea:	6005      	str	r5, [r0, #0]
2002a9ec:	e7d6      	b.n	2002a99c <_malloc_r+0xa8>
2002a9ee:	bf00      	nop
2002a9f0:	2004d084 	.word	0x2004d084

2002a9f4 <__malloc_lock>:
2002a9f4:	4801      	ldr	r0, [pc, #4]	@ (2002a9fc <__malloc_lock+0x8>)
2002a9f6:	f000 b831 	b.w	2002aa5c <__retarget_lock_acquire_recursive>
2002a9fa:	bf00      	nop
2002a9fc:	2004d1c4 	.word	0x2004d1c4

2002aa00 <__malloc_unlock>:
2002aa00:	4801      	ldr	r0, [pc, #4]	@ (2002aa08 <__malloc_unlock+0x8>)
2002aa02:	f000 b82c 	b.w	2002aa5e <__retarget_lock_release_recursive>
2002aa06:	bf00      	nop
2002aa08:	2004d1c4 	.word	0x2004d1c4

2002aa0c <memcmp>:
2002aa0c:	3901      	subs	r1, #1
2002aa0e:	4402      	add	r2, r0
2002aa10:	b510      	push	{r4, lr}
2002aa12:	4290      	cmp	r0, r2
2002aa14:	d101      	bne.n	2002aa1a <memcmp+0xe>
2002aa16:	2000      	movs	r0, #0
2002aa18:	e005      	b.n	2002aa26 <memcmp+0x1a>
2002aa1a:	7803      	ldrb	r3, [r0, #0]
2002aa1c:	f811 4f01 	ldrb.w	r4, [r1, #1]!
2002aa20:	42a3      	cmp	r3, r4
2002aa22:	d001      	beq.n	2002aa28 <memcmp+0x1c>
2002aa24:	1b18      	subs	r0, r3, r4
2002aa26:	bd10      	pop	{r4, pc}
2002aa28:	3001      	adds	r0, #1
2002aa2a:	e7f2      	b.n	2002aa12 <memcmp+0x6>

2002aa2c <memset>:
2002aa2c:	4402      	add	r2, r0
2002aa2e:	4603      	mov	r3, r0
2002aa30:	4293      	cmp	r3, r2
2002aa32:	d100      	bne.n	2002aa36 <memset+0xa>
2002aa34:	4770      	bx	lr
2002aa36:	f803 1b01 	strb.w	r1, [r3], #1
2002aa3a:	e7f9      	b.n	2002aa30 <memset+0x4>

2002aa3c <_sbrk_r>:
2002aa3c:	b538      	push	{r3, r4, r5, lr}
2002aa3e:	2300      	movs	r3, #0
2002aa40:	4d05      	ldr	r5, [pc, #20]	@ (2002aa58 <_sbrk_r+0x1c>)
2002aa42:	4604      	mov	r4, r0
2002aa44:	4608      	mov	r0, r1
2002aa46:	602b      	str	r3, [r5, #0]
2002aa48:	f000 f862 	bl	2002ab10 <_sbrk>
2002aa4c:	1c43      	adds	r3, r0, #1
2002aa4e:	d102      	bne.n	2002aa56 <_sbrk_r+0x1a>
2002aa50:	682b      	ldr	r3, [r5, #0]
2002aa52:	b103      	cbz	r3, 2002aa56 <_sbrk_r+0x1a>
2002aa54:	6023      	str	r3, [r4, #0]
2002aa56:	bd38      	pop	{r3, r4, r5, pc}
2002aa58:	2004d1c0 	.word	0x2004d1c0

2002aa5c <__retarget_lock_acquire_recursive>:
2002aa5c:	4770      	bx	lr

2002aa5e <__retarget_lock_release_recursive>:
2002aa5e:	4770      	bx	lr

2002aa60 <memcpy>:
2002aa60:	440a      	add	r2, r1
2002aa62:	1e43      	subs	r3, r0, #1
2002aa64:	4291      	cmp	r1, r2
2002aa66:	d100      	bne.n	2002aa6a <memcpy+0xa>
2002aa68:	4770      	bx	lr
2002aa6a:	b510      	push	{r4, lr}
2002aa6c:	f811 4b01 	ldrb.w	r4, [r1], #1
2002aa70:	4291      	cmp	r1, r2
2002aa72:	f803 4f01 	strb.w	r4, [r3, #1]!
2002aa76:	d1f9      	bne.n	2002aa6c <memcpy+0xc>
2002aa78:	bd10      	pop	{r4, pc}
	...

2002aa7c <_free_r>:
2002aa7c:	b538      	push	{r3, r4, r5, lr}
2002aa7e:	4605      	mov	r5, r0
2002aa80:	2900      	cmp	r1, #0
2002aa82:	d041      	beq.n	2002ab08 <_free_r+0x8c>
2002aa84:	f851 3c04 	ldr.w	r3, [r1, #-4]
2002aa88:	1f0c      	subs	r4, r1, #4
2002aa8a:	2b00      	cmp	r3, #0
2002aa8c:	bfb8      	it	lt
2002aa8e:	18e4      	addlt	r4, r4, r3
2002aa90:	f7ff ffb0 	bl	2002a9f4 <__malloc_lock>
2002aa94:	4a1d      	ldr	r2, [pc, #116]	@ (2002ab0c <_free_r+0x90>)
2002aa96:	6813      	ldr	r3, [r2, #0]
2002aa98:	b933      	cbnz	r3, 2002aaa8 <_free_r+0x2c>
2002aa9a:	6063      	str	r3, [r4, #4]
2002aa9c:	6014      	str	r4, [r2, #0]
2002aa9e:	4628      	mov	r0, r5
2002aaa0:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
2002aaa4:	f7ff bfac 	b.w	2002aa00 <__malloc_unlock>
2002aaa8:	42a3      	cmp	r3, r4
2002aaaa:	d908      	bls.n	2002aabe <_free_r+0x42>
2002aaac:	6820      	ldr	r0, [r4, #0]
2002aaae:	1821      	adds	r1, r4, r0
2002aab0:	428b      	cmp	r3, r1
2002aab2:	bf01      	itttt	eq
2002aab4:	6819      	ldreq	r1, [r3, #0]
2002aab6:	685b      	ldreq	r3, [r3, #4]
2002aab8:	1809      	addeq	r1, r1, r0
2002aaba:	6021      	streq	r1, [r4, #0]
2002aabc:	e7ed      	b.n	2002aa9a <_free_r+0x1e>
2002aabe:	461a      	mov	r2, r3
2002aac0:	685b      	ldr	r3, [r3, #4]
2002aac2:	b10b      	cbz	r3, 2002aac8 <_free_r+0x4c>
2002aac4:	42a3      	cmp	r3, r4
2002aac6:	d9fa      	bls.n	2002aabe <_free_r+0x42>
2002aac8:	6811      	ldr	r1, [r2, #0]
2002aaca:	1850      	adds	r0, r2, r1
2002aacc:	42a0      	cmp	r0, r4
2002aace:	d10b      	bne.n	2002aae8 <_free_r+0x6c>
2002aad0:	6820      	ldr	r0, [r4, #0]
2002aad2:	4401      	add	r1, r0
2002aad4:	1850      	adds	r0, r2, r1
2002aad6:	6011      	str	r1, [r2, #0]
2002aad8:	4283      	cmp	r3, r0
2002aada:	d1e0      	bne.n	2002aa9e <_free_r+0x22>
2002aadc:	6818      	ldr	r0, [r3, #0]
2002aade:	685b      	ldr	r3, [r3, #4]
2002aae0:	4408      	add	r0, r1
2002aae2:	6053      	str	r3, [r2, #4]
2002aae4:	6010      	str	r0, [r2, #0]
2002aae6:	e7da      	b.n	2002aa9e <_free_r+0x22>
2002aae8:	d902      	bls.n	2002aaf0 <_free_r+0x74>
2002aaea:	230c      	movs	r3, #12
2002aaec:	602b      	str	r3, [r5, #0]
2002aaee:	e7d6      	b.n	2002aa9e <_free_r+0x22>
2002aaf0:	6820      	ldr	r0, [r4, #0]
2002aaf2:	1821      	adds	r1, r4, r0
2002aaf4:	428b      	cmp	r3, r1
2002aaf6:	bf02      	ittt	eq
2002aaf8:	6819      	ldreq	r1, [r3, #0]
2002aafa:	685b      	ldreq	r3, [r3, #4]
2002aafc:	1809      	addeq	r1, r1, r0
2002aafe:	6063      	str	r3, [r4, #4]
2002ab00:	bf08      	it	eq
2002ab02:	6021      	streq	r1, [r4, #0]
2002ab04:	6054      	str	r4, [r2, #4]
2002ab06:	e7ca      	b.n	2002aa9e <_free_r+0x22>
2002ab08:	bd38      	pop	{r3, r4, r5, pc}
2002ab0a:	bf00      	nop
2002ab0c:	2004d084 	.word	0x2004d084

2002ab10 <_sbrk>:
2002ab10:	4a05      	ldr	r2, [pc, #20]	@ (2002ab28 <_sbrk+0x18>)
2002ab12:	4603      	mov	r3, r0
2002ab14:	6810      	ldr	r0, [r2, #0]
2002ab16:	b110      	cbz	r0, 2002ab1e <_sbrk+0xe>
2002ab18:	4403      	add	r3, r0
2002ab1a:	6013      	str	r3, [r2, #0]
2002ab1c:	4770      	bx	lr
2002ab1e:	4803      	ldr	r0, [pc, #12]	@ (2002ab2c <_sbrk+0x1c>)
2002ab20:	4403      	add	r3, r0
2002ab22:	6013      	str	r3, [r2, #0]
2002ab24:	4770      	bx	lr
2002ab26:	bf00      	nop
2002ab28:	2004d1c8 	.word	0x2004d1c8
2002ab2c:	20042000 	.word	0x20042000
2002ab30:	50041000 	.word	0x50041000
2002ab34:	00000002 	.word	0x00000002
2002ab38:	10000000 	.word	0x10000000
2002ab3c:	00000004 	.word	0x00000004
2002ab40:	00000000 	.word	0x00000000
2002ab44:	50081008 	.word	0x50081008
2002ab48:	00000000 	.word	0x00000000
2002ab4c:	00000032 	.word	0x00000032
2002ab50:	00000000 	.word	0x00000000
2002ab54:	50042000 	.word	0x50042000
2002ab58:	00000002 	.word	0x00000002
2002ab5c:	12000000 	.word	0x12000000
2002ab60:	00000004 	.word	0x00000004
2002ab64:	00000000 	.word	0x00000000
2002ab68:	5008101c 	.word	0x5008101c
2002ab6c:	00000000 	.word	0x00000000
2002ab70:	00000033 	.word	0x00000033
2002ab74:	00000001 	.word	0x00000001
2002ab78:	62636573 	.word	0x62636573
2002ab7c:	20746f6f 	.word	0x20746f6f
2002ab80:	6b676973 	.word	0x6b676973
2002ab84:	70207965 	.word	0x70207965
2002ab88:	65206275 	.word	0x65206275
2002ab8c:	00217272 	.word	0x00217272
2002ab90:	62636573 	.word	0x62636573
2002ab94:	20746f6f 	.word	0x20746f6f
2002ab98:	20676d69 	.word	0x20676d69
2002ab9c:	68736168 	.word	0x68736168
2002aba0:	67697320 	.word	0x67697320
2002aba4:	72726520 	.word	0x72726520
2002aba8:	65730021 	.word	0x65730021
2002abac:	6f6f6263 	.word	0x6f6f6263
2002abb0:	78652074 	.word	0x78652074
2002abb4:	20747063 	.word	0x20747063
2002abb8:	6c6c756e 	.word	0x6c6c756e
2002abbc:	41480021 	.word	0x41480021
2002abc0:	535f4853 	.word	0x535f4853
2002abc4:	49545445 	.word	0x49545445
2002abc8:	253d474e 	.word	0x253d474e
2002abcc:	0a583830 	.word	0x0a583830
2002abd0:	616f4c00 	.word	0x616f4c00
2002abd4:	56492064 	.word	0x56492064
2002abd8:	646e6120 	.word	0x646e6120
2002abdc:	6e656c20 	.word	0x6e656c20
2002abe0:	20687467 	.word	0x20687467
2002abe4:	48534148 	.word	0x48534148
2002abe8:	5445535f 	.word	0x5445535f
2002abec:	474e4954 	.word	0x474e4954
2002abf0:	3830253d 	.word	0x3830253d
2002abf4:	69202c58 	.word	0x69202c58
2002abf8:	656c2076 	.word	0x656c2076
2002abfc:	6874676e 	.word	0x6874676e
2002ac00:	0a64253d 	.word	0x0a64253d
2002ac04:	73655200 	.word	0x73655200
2002ac08:	20746c75 	.word	0x20746c75
2002ac0c:	3d6e656c 	.word	0x3d6e656c
2002ac10:	000a6425 	.word	0x000a6425
2002ac14:	2070614d 	.word	0x2070614d
2002ac18:	6f727265 	.word	0x6f727265
2002ac1c:	6c203a72 	.word	0x6c203a72
2002ac20:	6369676f 	.word	0x6369676f
2002ac24:	2c642520 	.word	0x2c642520
2002ac28:	79687020 	.word	0x79687020
2002ac2c:	0a642520 	.word	0x0a642520
2002ac30:	52524500 	.word	0x52524500
2002ac34:	2032203a 	.word	0x2032203a
2002ac38:	69676f6c 	.word	0x69676f6c
2002ac3c:	6c622063 	.word	0x6c622063
2002ac40:	736b636f 	.word	0x736b636f
2002ac44:	70616d20 	.word	0x70616d20
2002ac48:	206f7420 	.word	0x206f7420
2002ac4c:	656d6173 	.word	0x656d6173
2002ac50:	6b6c6220 	.word	0x6b6c6220
2002ac54:	6f6c203a 	.word	0x6f6c203a
2002ac58:	30636967 	.word	0x30636967
2002ac5c:	2c642520 	.word	0x2c642520
2002ac60:	79687020 	.word	0x79687020
2002ac64:	64252030 	.word	0x64252030
2002ac68:	6f6c202c 	.word	0x6f6c202c
2002ac6c:	31636967 	.word	0x31636967
2002ac70:	2c642520 	.word	0x2c642520
2002ac74:	79687020 	.word	0x79687020
2002ac78:	64252031 	.word	0x64252031
2002ac7c:	614d000a 	.word	0x614d000a
2002ac80:	72652070 	.word	0x72652070
2002ac84:	30726f72 	.word	0x30726f72
2002ac88:	6f6c203a 	.word	0x6f6c203a
2002ac8c:	20636967 	.word	0x20636967
2002ac90:	202c6425 	.word	0x202c6425
2002ac94:	20796870 	.word	0x20796870
2002ac98:	000a6425 	.word	0x000a6425
2002ac9c:	20746547 	.word	0x20746547
2002aca0:	2070616d 	.word	0x2070616d
2002aca4:	636f6c62 	.word	0x636f6c62
2002aca8:	7265206b 	.word	0x7265206b
2002acac:	20726f72 	.word	0x20726f72
2002acb0:	2d206425 	.word	0x2d206425
2002acb4:	25203e2d 	.word	0x25203e2d
2002acb8:	42000a64 	.word	0x42000a64
2002acbc:	76204d42 	.word	0x76204d42
2002acc0:	69737265 	.word	0x69737265
2002acc4:	6e206e6f 	.word	0x6e206e6f
2002acc8:	6920746f 	.word	0x6920746f
2002accc:	6572636e 	.word	0x6572636e
2002acd0:	64657361 	.word	0x64657361
2002acd4:	7270203a 	.word	0x7270203a
2002acd8:	25207665 	.word	0x25207665
2002acdc:	63202c64 	.word	0x63202c64
2002ace0:	20727275 	.word	0x20727275
2002ace4:	000a6425 	.word	0x000a6425
2002ace8:	41544144 	.word	0x41544144
2002acec:	746f6e20 	.word	0x746f6e20
2002acf0:	61657220 	.word	0x61657220
2002acf4:	616e6f73 	.word	0x616e6f73
2002acf8:	20656c62 	.word	0x20656c62
2002acfc:	42206e69 	.word	0x42206e69
2002ad00:	62204d42 	.word	0x62204d42
2002ad04:	25206b6c 	.word	0x25206b6c
2002ad08:	61702064 	.word	0x61702064
2002ad0c:	25206567 	.word	0x25206567
2002ad10:	30203a64 	.word	0x30203a64
2002ad14:	0a782578 	.word	0x0a782578
2002ad18:	61655200 	.word	0x61655200
2002ad1c:	62622064 	.word	0x62622064
2002ad20:	6c62206d 	.word	0x6c62206d
2002ad24:	6425206b 	.word	0x6425206b
2002ad28:	67617020 	.word	0x67617020
2002ad2c:	64252065 	.word	0x64252065
2002ad30:	69616620 	.word	0x69616620
2002ad34:	49000a6c 	.word	0x49000a6c
2002ad38:	6c61766e 	.word	0x6c61766e
2002ad3c:	42206469 	.word	0x42206469
2002ad40:	49204d42 	.word	0x49204d42
2002ad44:	25205844 	.word	0x25205844
2002ad48:	56000a64 	.word	0x56000a64
2002ad4c:	64252031 	.word	0x64252031
2002ad50:	206e6920 	.word	0x206e6920
2002ad54:	636f6c62 	.word	0x636f6c62
2002ad58:	6425206b 	.word	0x6425206b
2002ad5c:	3256202c 	.word	0x3256202c
2002ad60:	20642520 	.word	0x20642520
2002ad64:	62206e69 	.word	0x62206e69
2002ad68:	6b636f6c 	.word	0x6b636f6c
2002ad6c:	0a642520 	.word	0x0a642520
2002ad70:	6d615300 	.word	0x6d615300
2002ad74:	69687465 	.word	0x69687465
2002ad78:	6d20676e 	.word	0x6d20676e
2002ad7c:	20747375 	.word	0x20747375
2002ad80:	77206562 	.word	0x77206562
2002ad84:	676e6f72 	.word	0x676e6f72
2002ad88:	6567202c 	.word	0x6567202c
2002ad8c:	656e2074 	.word	0x656e2074
2002ad90:	65762077 	.word	0x65762077
2002ad94:	6f697372 	.word	0x6f697372
2002ad98:	6425206e 	.word	0x6425206e
2002ad9c:	206f6420 	.word	0x206f6420
2002ada0:	20746f6e 	.word	0x20746f6e
2002ada4:	656d6173 	.word	0x656d6173
2002ada8:	206f7420 	.word	0x206f7420
2002adac:	76657270 	.word	0x76657270
2002adb0:	65686320 	.word	0x65686320
2002adb4:	25206b63 	.word	0x25206b63
2002adb8:	43000a64 	.word	0x43000a64
2002adbc:	63204352 	.word	0x63204352
2002adc0:	6b636568 	.word	0x6b636568
2002adc4:	72726520 	.word	0x72726520
2002adc8:	0a20726f 	.word	0x0a20726f
2002adcc:	61655200 	.word	0x61655200
2002add0:	62622064 	.word	0x62622064
2002add4:	6c62206d 	.word	0x6c62206d
2002add8:	6425206b 	.word	0x6425206b
2002addc:	67617020 	.word	0x67617020
2002ade0:	64252065 	.word	0x64252065
2002ade4:	74616420 	.word	0x74616420
2002ade8:	6f6e2061 	.word	0x6f6e2061
2002adec:	72772074 	.word	0x72772074
2002adf0:	20657469 	.word	0x20657469
2002adf4:	20726f66 	.word	0x20726f66
2002adf8:	20646e32 	.word	0x20646e32
2002adfc:	656d6974 	.word	0x656d6974
2002ae00:	6552000a 	.word	0x6552000a
2002ae04:	62206461 	.word	0x62206461
2002ae08:	62206d62 	.word	0x62206d62
2002ae0c:	25206b6c 	.word	0x25206b6c
2002ae10:	61702064 	.word	0x61702064
2002ae14:	25206567 	.word	0x25206567
2002ae18:	61662064 	.word	0x61662064
2002ae1c:	66206c69 	.word	0x66206c69
2002ae20:	3220726f 	.word	0x3220726f
2002ae24:	7420646e 	.word	0x7420646e
2002ae28:	3f656d69 	.word	0x3f656d69
2002ae2c:	614c000a 	.word	0x614c000a
2002ae30:	74736574 	.word	0x74736574
2002ae34:	72657620 	.word	0x72657620
2002ae38:	6e6f6973 	.word	0x6e6f6973
2002ae3c:	0a642520 	.word	0x0a642520
2002ae40:	74654700 	.word	0x74654700
2002ae44:	79687020 	.word	0x79687020
2002ae48:	6b6c6220 	.word	0x6b6c6220
2002ae4c:	726f6620 	.word	0x726f6620
2002ae50:	20642520 	.word	0x20642520
2002ae54:	6c696166 	.word	0x6c696166
2002ae58:	65687720 	.word	0x65687720
2002ae5c:	6572206e 	.word	0x6572206e
2002ae60:	000a6461 	.word	0x000a6461
2002ae64:	636f6c42 	.word	0x636f6c42
2002ae68:	6425206b 	.word	0x6425206b
2002ae6c:	61726520 	.word	0x61726520
2002ae70:	66206573 	.word	0x66206573
2002ae74:	2c6c6961 	.word	0x2c6c6961
2002ae78:	72616d20 	.word	0x72616d20
2002ae7c:	7361206b 	.word	0x7361206b
2002ae80:	64616220 	.word	0x64616220
2002ae84:	6c42000a 	.word	0x6c42000a
2002ae88:	206b636f 	.word	0x206b636f
2002ae8c:	63206425 	.word	0x63206425
2002ae90:	6b636568 	.word	0x6b636568
2002ae94:	20736120 	.word	0x20736120
2002ae98:	20646162 	.word	0x20646162
2002ae9c:	636f6c62 	.word	0x636f6c62
2002aea0:	42000a6b 	.word	0x42000a6b
2002aea4:	6b636f6c 	.word	0x6b636f6c
2002aea8:	20642520 	.word	0x20642520
2002aeac:	62207369 	.word	0x62207369
2002aeb0:	69206461 	.word	0x69206461
2002aeb4:	7375206e 	.word	0x7375206e
2002aeb8:	62207265 	.word	0x62207265
2002aebc:	6b636f6c 	.word	0x6b636f6c
2002aec0:	6162000a 	.word	0x6162000a
2002aec4:	64252064 	.word	0x64252064
2002aec8:	6572202c 	.word	0x6572202c
2002aecc:	63616c70 	.word	0x63616c70
2002aed0:	64252065 	.word	0x64252065
2002aed4:	6f4e000a 	.word	0x6f4e000a
2002aed8:	63616220 	.word	0x63616220
2002aedc:	2070756b 	.word	0x2070756b
2002aee0:	636f6c62 	.word	0x636f6c62
2002aee4:	6e61206b 	.word	0x6e61206b
2002aee8:	6f6d2079 	.word	0x6f6d2079
2002aeec:	000a6572 	.word	0x000a6572
2002aef0:	74706d65 	.word	0x74706d65
2002aef4:	61742079 	.word	0x61742079
2002aef8:	20656c62 	.word	0x20656c62
2002aefc:	6e206425 	.word	0x6e206425
2002af00:	6520746f 	.word	0x6520746f
2002af04:	67756f6e 	.word	0x67756f6e
2002af08:	6f662068 	.word	0x6f662068
2002af0c:	6e692072 	.word	0x6e692072
2002af10:	61697469 	.word	0x61697469
2002af14:	55000a6c 	.word	0x55000a6c
2002af18:	74616470 	.word	0x74616470
2002af1c:	61742065 	.word	0x61742065
2002af20:	20656c62 	.word	0x20656c62
2002af24:	66206f74 	.word	0x66206f74
2002af28:	6873616c 	.word	0x6873616c
2002af2c:	6e6f6420 	.word	0x6e6f6420
2002af30:	49000a65 	.word	0x49000a65
2002af34:	6974696e 	.word	0x6974696e
2002af38:	74206c61 	.word	0x74206c61
2002af3c:	656c6261 	.word	0x656c6261
2002af40:	69616620 	.word	0x69616620
2002af44:	42000a6c 	.word	0x42000a6c
2002af48:	69204d42 	.word	0x69204d42
2002af4c:	6974696e 	.word	0x6974696e
2002af50:	7a696c61 	.word	0x7a696c61
2002af54:	62206465 	.word	0x62206465
2002af58:	726f6665 	.word	0x726f6665
2002af5c:	64202c65 	.word	0x64202c65
2002af60:	6f6e206f 	.word	0x6f6e206f
2002af64:	6e692074 	.word	0x6e692074
2002af68:	61207469 	.word	0x61207469
2002af6c:	6d20796e 	.word	0x6d20796e
2002af70:	0a65726f 	.word	0x0a65726f
2002af74:	54454400 	.word	0x54454400
2002af78:	20642520 	.word	0x20642520
2002af7c:	0a646162 	.word	0x0a646162
2002af80:	4b4c4200 	.word	0x4b4c4200
2002af84:	20642520 	.word	0x20642520
2002af88:	64616572 	.word	0x64616572
2002af8c:	69616620 	.word	0x69616620
2002af90:	6d202c6c 	.word	0x6d202c6c
2002af94:	206b7261 	.word	0x206b7261
2002af98:	62207361 	.word	0x62207361
2002af9c:	000a6461 	.word	0x000a6461
2002afa0:	20746564 	.word	0x20746564
2002afa4:	206d6262 	.word	0x206d6262
2002afa8:	6c626174 	.word	0x6c626174
2002afac:	69772065 	.word	0x69772065
2002afb0:	25206874 	.word	0x25206874
2002afb4:	25202c64 	.word	0x25202c64
2002afb8:	25202c64 	.word	0x25202c64
2002afbc:	64000a64 	.word	0x64000a64
2002afc0:	63657465 	.word	0x63657465
2002afc4:	65722074 	.word	0x65722074
2002afc8:	746c7573 	.word	0x746c7573
2002afcc:	0a642520 	.word	0x0a642520
2002afd0:	20317600 	.word	0x20317600
2002afd4:	69206425 	.word	0x69206425
2002afd8:	6c62206e 	.word	0x6c62206e
2002afdc:	6425206b 	.word	0x6425206b
2002afe0:	3276202c 	.word	0x3276202c
2002afe4:	20642520 	.word	0x20642520
2002afe8:	62206e69 	.word	0x62206e69
2002afec:	6b636f6c 	.word	0x6b636f6c
2002aff0:	0a642520 	.word	0x0a642520
2002aff4:	65684300 	.word	0x65684300
2002aff8:	62206b63 	.word	0x62206b63
2002affc:	74206d62 	.word	0x74206d62
2002b000:	656c6261 	.word	0x656c6261
2002b004:	69616620 	.word	0x69616620
2002b008:	64000a6c 	.word	0x64000a6c
2002b00c:	63657465 	.word	0x63657465
2002b010:	65722074 	.word	0x65722074
2002b014:	746c7573 	.word	0x746c7573
2002b018:	20642520 	.word	0x20642520
2002b01c:	20746f6e 	.word	0x20746f6e
2002b020:	73616572 	.word	0x73616572
2002b024:	62616e6f 	.word	0x62616e6f
2002b028:	000a656c 	.word	0x000a656c
2002b02c:	204d4242 	.word	0x204d4242
2002b030:	3a4d454d 	.word	0x3a4d454d
2002b034:	78746320 	.word	0x78746320
2002b038:	2c702520 	.word	0x2c702520
2002b03c:	70616d20 	.word	0x70616d20
2002b040:	70252031 	.word	0x70252031
2002b044:	616d202c 	.word	0x616d202c
2002b048:	25203270 	.word	0x25203270
2002b04c:	000a2070 	.word	0x000a2070
2002b050:	5f666973 	.word	0x5f666973
2002b054:	5f6d6262 	.word	0x5f6d6262
2002b058:	74696e69 	.word	0x74696e69
2002b05c:	6e6f6420 	.word	0x6e6f6420
2002b060:	53000a65 	.word	0x53000a65
2002b064:	31354148 	.word	0x31354148
2002b068:	48530032 	.word	0x48530032
2002b06c:	34383341 	.word	0x34383341
2002b070:	41485300 	.word	0x41485300
2002b074:	00363532 	.word	0x00363532
2002b078:	32414853 	.word	0x32414853
2002b07c:	60003432 	.word	0x60003432
2002b080:	65014886 	.word	0x65014886
2002b084:	04020403 	.word	0x04020403
2002b088:	2d646900 	.word	0x2d646900
2002b08c:	32616873 	.word	0x32616873
2002b090:	60003432 	.word	0x60003432
2002b094:	65014886 	.word	0x65014886
2002b098:	01020403 	.word	0x01020403
2002b09c:	2d646900 	.word	0x2d646900
2002b0a0:	32616873 	.word	0x32616873
2002b0a4:	60003635 	.word	0x60003635
2002b0a8:	65014886 	.word	0x65014886
2002b0ac:	02020403 	.word	0x02020403
2002b0b0:	2d646900 	.word	0x2d646900
2002b0b4:	33616873 	.word	0x33616873
2002b0b8:	60003438 	.word	0x60003438
2002b0bc:	65014886 	.word	0x65014886
2002b0c0:	03020403 	.word	0x03020403
2002b0c4:	2d646900 	.word	0x2d646900
2002b0c8:	35616873 	.word	0x35616873
2002b0cc:	2b003231 	.word	0x2b003231
2002b0d0:	0702030e 	.word	0x0702030e
2002b0d4:	73656400 	.word	0x73656400
2002b0d8:	00434243 	.word	0x00434243
2002b0dc:	2d534544 	.word	0x2d534544
2002b0e0:	00434243 	.word	0x00434243
2002b0e4:	8648862a 	.word	0x8648862a
2002b0e8:	07030df7 	.word	0x07030df7
2002b0ec:	73656400 	.word	0x73656400
2002b0f0:	6564652d 	.word	0x6564652d
2002b0f4:	62632d33 	.word	0x62632d33
2002b0f8:	45440063 	.word	0x45440063
2002b0fc:	44452d53 	.word	0x44452d53
2002b100:	432d3345 	.word	0x432d3345
2002b104:	2a004342 	.word	0x2a004342
2002b108:	f7864886 	.word	0xf7864886
2002b10c:	0101010d 	.word	0x0101010d
2002b110:	61737200 	.word	0x61737200
2002b114:	72636e45 	.word	0x72636e45
2002b118:	69747079 	.word	0x69747079
2002b11c:	52006e6f 	.word	0x52006e6f
2002b120:	2a004153 	.word	0x2a004153
2002b124:	3dce4886 	.word	0x3dce4886
2002b128:	69000102 	.word	0x69000102
2002b12c:	63652d64 	.word	0x63652d64
2002b130:	6c627550 	.word	0x6c627550
2002b134:	654b6369 	.word	0x654b6369
2002b138:	65470079 	.word	0x65470079
2002b13c:	6972656e 	.word	0x6972656e
2002b140:	43452063 	.word	0x43452063
2002b144:	79656b20 	.word	0x79656b20
2002b148:	04812b00 	.word	0x04812b00
2002b14c:	69000c01 	.word	0x69000c01
2002b150:	63652d64 	.word	0x63652d64
2002b154:	45004844 	.word	0x45004844
2002b158:	656b2043 	.word	0x656b2043
2002b15c:	6f662079 	.word	0x6f662079
2002b160:	43452072 	.word	0x43452072
2002b164:	2a004844 	.word	0x2a004844
2002b168:	f7864886 	.word	0xf7864886
2002b16c:	0e01010d 	.word	0x0e01010d
2002b170:	61687300 	.word	0x61687300
2002b174:	57343232 	.word	0x57343232
2002b178:	52687469 	.word	0x52687469
2002b17c:	6e454153 	.word	0x6e454153
2002b180:	70797263 	.word	0x70797263
2002b184:	6e6f6974 	.word	0x6e6f6974
2002b188:	41535200 	.word	0x41535200
2002b18c:	74697720 	.word	0x74697720
2002b190:	48532068 	.word	0x48532068
2002b194:	32322d41 	.word	0x32322d41
2002b198:	862a0034 	.word	0x862a0034
2002b19c:	0df78648 	.word	0x0df78648
2002b1a0:	000b0101 	.word	0x000b0101
2002b1a4:	32616873 	.word	0x32616873
2002b1a8:	69573635 	.word	0x69573635
2002b1ac:	53526874 	.word	0x53526874
2002b1b0:	636e4541 	.word	0x636e4541
2002b1b4:	74707972 	.word	0x74707972
2002b1b8:	006e6f69 	.word	0x006e6f69
2002b1bc:	20415352 	.word	0x20415352
2002b1c0:	68746977 	.word	0x68746977
2002b1c4:	41485320 	.word	0x41485320
2002b1c8:	3635322d 	.word	0x3635322d
2002b1cc:	48862a00 	.word	0x48862a00
2002b1d0:	010df786 	.word	0x010df786
2002b1d4:	73000c01 	.word	0x73000c01
2002b1d8:	38336168 	.word	0x38336168
2002b1dc:	74695734 	.word	0x74695734
2002b1e0:	41535268 	.word	0x41535268
2002b1e4:	72636e45 	.word	0x72636e45
2002b1e8:	69747079 	.word	0x69747079
2002b1ec:	52006e6f 	.word	0x52006e6f
2002b1f0:	77204153 	.word	0x77204153
2002b1f4:	20687469 	.word	0x20687469
2002b1f8:	2d414853 	.word	0x2d414853
2002b1fc:	00343833 	.word	0x00343833
2002b200:	8648862a 	.word	0x8648862a
2002b204:	01010df7 	.word	0x01010df7
2002b208:	6873000d 	.word	0x6873000d
2002b20c:	32313561 	.word	0x32313561
2002b210:	68746957 	.word	0x68746957
2002b214:	45415352 	.word	0x45415352
2002b218:	7972636e 	.word	0x7972636e
2002b21c:	6f697470 	.word	0x6f697470
2002b220:	5352006e 	.word	0x5352006e
2002b224:	69772041 	.word	0x69772041
2002b228:	53206874 	.word	0x53206874
2002b22c:	352d4148 	.word	0x352d4148
2002b230:	2a003231 	.word	0x2a003231
2002b234:	f7864886 	.word	0xf7864886
2002b238:	0a01010d 	.word	0x0a01010d
2002b23c:	41535200 	.word	0x41535200
2002b240:	2d415353 	.word	0x2d415353
2002b244:	00535350 	.word	0x00535350
2002b248:	2e617372 	.word	0x2e617372
2002b24c:	7372004e 	.word	0x7372004e
2002b250:	00452e61 	.word	0x00452e61

2002b254 <pin_pad_func_lcpu>:
	...
2002b274:	032100b2 00000301 00000000 024b023b     ..!.........;.K.
2002b284:	00000237 00000000 00000000 00000000     7...............
2002b294:	032200b3 00000302 00000000 024b023c     ..".........<.K.
2002b2a4:	00000238 00000000 00000000 00000000     8...............
2002b2b4:	032300b4 00000303 00000000 024b023d     ..#.........=.K.
2002b2c4:	0000023a 00000000 00000000 00000000     :...............
2002b2d4:	032400b5 00000304 00000000 024b023e     ..$.........>.K.
2002b2e4:	00000239 00000000 00000000 00000000     9...............

2002b2f4 <pin_pad_func_hcpu>:
	...
2002b314:	000400f2 00000000 000b0000 00000000     ................
	...
2002b334:	000900f3 00000000 00030000 00000000     ................
	...
2002b354:	000a00f4 00000000 000a0000 00000000     ................
	...
2002b374:	000b00f5 00000000 000b0000 00000000     ................
	...
2002b394:	000c00f6 00000000 00030000 00000000     ................
	...
2002b3b4:	000300f7 000d0000 00000009 00000000     ................
	...
2002b3d4:	000200f8 000e0000 0000000b 00000000     ................
	...
2002b3f4:	000100f9 000f0000 0009000a 00000000     ................
	...
2002b414:	000d00fa 00100000 000c0003 00000000     ................
	...
2002b434:	000e00fb 00060000 00010001 00000000     ................
	...
2002b454:	000f00fc 00010000 000c000c 00000000     ................
	...
2002b474:	001000fd 00030000 00090000 00000000     ................
	...
2002b494:	000500fe 00000006 00000000 00000000     ................
	...
2002b4b4:	01540052 00000000 026302b2 016a0000     R.T.......c...j.
	...
2002b4d4:	00000053 00000000 026402b3 00000000     S.........d.....
	...
2002b4f4:	01550054 01c60000 026502b4 016b019a     T.U.......e...k.
2002b504:	023b0000 02270000 00000000 00000000     ..;...'.........
2002b514:	014e0055 01c80000 026602b5 015f0199     U.N.......f..._.
2002b524:	023c0000 02280000 00000000 00000000     ..<...(.........
2002b534:	014f0056 01c70000 026702b6 015e0197     V.O.......g...^.
2002b544:	023d0000 02290000 00000000 00000000     ..=...).........
2002b554:	01500057 01c40000 026802b7 01680195     W.P.......h...h.
2002b564:	023e0000 022a0000 00000000 00000000     ..>...*.........
2002b574:	01510058 01c50000 026902b8 01690194     X.Q.......i...i.
2002b584:	023f0000 022b0000 00000000 00000000     ..?...+.........
2002b594:	01520059 01d40000 026a02b9 01600192     Y.R.......j...`.
2002b5a4:	02400000 022c0000 00000000 00000000     ..@...,.........
2002b5b4:	0153005a 01d50000 026b02ba 01610191     Z.S.......k...a.
2002b5c4:	02410000 0000023a 00000000 00000000     ..A.:...........
2002b5d4:	0000005b 00000000 026c02bb 00000000     [.........l.....
2002b5e4:	02420000 00000239 00000000 00000000     ..B.9...........
2002b5f4:	0000005c 00000000 026d02bc 00000000     \.........m.....
	...
2002b614:	0000005d 00000000 026e02bd 00000000     ].........n.....
2002b624:	01d30000 02210237 00000000 00000000     ....7.!.........
2002b634:	001b005e 000001b7 026f02be 00000000     ^.........o.....
2002b644:	00000000 02220238 00000000 00000000     ....8.".........
2002b654:	0022005f 000001b8 027002bf 00000000     _.".......p.....
2002b664:	00000000 02230000 00000000 00000000     ......#.........
2002b674:	00230060 000001b2 027102c0 00000000     `.#.......q.....
2002b684:	00000000 02240000 00000000 00000000     ......$.........
2002b694:	00210061 000001b4 027202c1 00000000     a.!.......r.....
2002b6a4:	00000000 02250000 00000000 00000000     ......%.........
2002b6b4:	00190062 000001b5 027302c2 00000000     b.........s.....
2002b6c4:	00000000 02260000 00000000 00000000     ......&.........
2002b6d4:	00240063 000001b6 027402c3 00000000     c.$.......t.....
	...
2002b6f4:	00000064 0000021a 027502c4 00000000     d.........u.....
	...
2002b714:	00000065 00000219 027602c5 00000000     e.........v.....
	...
2002b734:	00000066 00000000 027702c6 00000000     f.........w.....
2002b744:	024b0000 00000000 00000000 00000000     ..K.............
2002b754:	00000067 00000000 027802c7 00000000     g.........x.....
	...
2002b774:	00000068 01d40000 027902c8 00000000     h.........y.....
	...
2002b794:	00000069 01d50000 027a02c9 00000000     i.........z.....
	...
2002b7b4:	0000006a 01c60149 027b02ca 03620361     j...I.....{.a.b.
2002b7c4:	03640363 03660365 00000000 00000000     c.d.e.f.........
2002b7d4:	0000006b 01c80148 027c02cb 03620361     k...H.....|.a.b.
2002b7e4:	03640363 03660365 00000000 00000000     c.d.e.f.........
2002b7f4:	0000006c 00000000 027d02cc 03620361     l.........}.a.b.
2002b804:	03640363 03660365 00000000 00000000     c.d.e.f.........
2002b814:	0000006d 00000000 027e02cd 03620361     m.........~.a.b.
2002b824:	03640363 03660365 00000000 00000000     c.d.e.f.........
2002b834:	0000006e 01c70146 027f02ce 00000000     n...F...........
	...
2002b854:	0000006f 01c40147 028002cf 00000000     o...G...........
	...
2002b874:	00000070 01c50000 028102d0 00000000     p...............
	...
2002b894:	00000071 00000000 028202d1 00000000     q...............
2002b8a4:	02430000 00000000 00000000 00000000     ..C.............
2002b8b4:	00000072 00000000 028302d2 00000000     r...............
	...
2002b8d4:	00000073 00000000 028402d3 00000000     s...............
	...
2002b8f4:	00000074 00000000 028502d4 00000000     t...............
	...
2002b914:	00000075 00000000 028602d5 00000000     u...............
	...
2002b934:	00000076 00000000 028702d6 00000000     v...............
	...
2002b954:	00000077 0000014d 028802d7 01620000     w...M.........b.
2002b964:	02440000 00000000 00000000 00000000     ..D.............
2002b974:	00000078 0000014c 028902d8 00000000     x...L...........
	...
2002b994:	00000079 0000014a 028a02d9 01630190     y...J.........c.
2002b9a4:	02450000 022f0000 00000000 00000000     ..E.../.........
2002b9b4:	0000007a 0000014b 028b02da 0164018f     z...K.........d.
2002b9c4:	02460000 02300000 00000000 00000000     ..F...0.........
2002b9d4:	0000007b 00000000 028c02db 01650193     {.............e.
2002b9e4:	02470000 02310000 00000000 00000000     ..G...1.........
2002b9f4:	0000007c 00000000 028d02dc 01660196     |.............f.
2002ba04:	02480000 02320000 00000000 00000000     ..H...2.........
2002ba14:	0000007d 00000000 028e02dd 01670198     }.............g.
2002ba24:	02490000 02330000 00000000 00000000     ..I...3.........
2002ba34:	0000007e 00000000 028f02de 00000000     ~...............
2002ba44:	024a0000 02340000 00000000 00000000     ..J...4.........

2002ba54 <HASH_SIZE>:
2002ba54:	20202014 00000000 04030201 00000000     .   ............
2002ba64:	01060204                                ....

2002ba68 <CSWTCH.52>:
2002ba68:	0000003f 00003f00 003f0000              ?....?....?.

2002ba74 <hpsys_dll2_limit>:
	...
2002ba7c:	112a8800 112a8800                       ..*...*.

2002ba84 <hpsys_dvfs_config>:
2002ba84:	000906fb 00100330 000a08fd 00110331     ....0.......1...
2002ba94:	000d0b00 00130213 000f0d02 00130213     ................

2002baa4 <crc32tab>:
2002baa4:	00000000 77073096 ee0e612c 990951ba     .....0.w,a...Q..
2002bab4:	076dc419 706af48f e963a535 9e6495a3     ..m...jp5.c...d.
2002bac4:	0edb8832 79dcb8a4 e0d5e91e 97d2d988     2......y........
2002bad4:	09b64c2b 7eb17cbd e7b82d07 90bf1d91     +L...|.~.-......
2002bae4:	1db71064 6ab020f2 f3b97148 84be41de     d.... .jHq...A..
2002baf4:	1adad47d 6ddde4eb f4d4b551 83d385c7     }......mQ.......
2002bb04:	136c9856 646ba8c0 fd62f97a 8a65c9ec     V.l...kdz.b...e.
2002bb14:	14015c4f 63066cd9 fa0f3d63 8d080df5     O\...l.cc=......
2002bb24:	3b6e20c8 4c69105e d56041e4 a2677172     . n;^.iL.A`.rqg.
2002bb34:	3c03e4d1 4b04d447 d20d85fd a50ab56b     ...<G..K....k...
2002bb44:	35b5a8fa 42b2986c dbbbc9d6 acbcf940     ...5l..B....@...
2002bb54:	32d86ce3 45df5c75 dcd60dcf abd13d59     .l.2u\.E....Y=..
2002bb64:	26d930ac 51de003a c8d75180 bfd06116     .0.&:..Q.Q...a..
2002bb74:	21b4f4b5 56b3c423 cfba9599 b8bda50f     ...!#..V........
2002bb84:	2802b89e 5f058808 c60cd9b2 b10be924     ...(..._....$...
2002bb94:	2f6f7c87 58684c11 c1611dab b6662d3d     .|o/.LhX..a.=-f.
2002bba4:	76dc4190 01db7106 98d220bc efd5102a     .A.v.q... ..*...
2002bbb4:	71b18589 06b6b51f 9fbfe4a5 e8b8d433     ...q........3...
2002bbc4:	7807c9a2 0f00f934 9609a88e e10e9818     ...x4...........
2002bbd4:	7f6a0dbb 086d3d2d 91646c97 e6635c01     ..j.-=m..ld..\c.
2002bbe4:	6b6b51f4 1c6c6162 856530d8 f262004e     .Qkkbal..0e.N.b.
2002bbf4:	6c0695ed 1b01a57b 8208f4c1 f50fc457     ...l{.......W...
2002bc04:	65b0d9c6 12b7e950 8bbeb8ea fcb9887c     ...eP.......|...
2002bc14:	62dd1ddf 15da2d49 8cd37cf3 fbd44c65     ...bI-...|..eL..
2002bc24:	4db26158 3ab551ce a3bc0074 d4bb30e2     Xa.M.Q.:t....0..
2002bc34:	4adfa541 3dd895d7 a4d1c46d d3d6f4fb     A..J...=m.......
2002bc44:	4369e96a 346ed9fc ad678846 da60b8d0     j.iC..n4F.g...`.
2002bc54:	44042d73 33031de5 aa0a4c5f dd0d7cc9     s-.D...3_L...|..
2002bc64:	5005713c 270241aa be0b1010 c90c2086     <q.P.A.'..... ..
2002bc74:	5768b525 206f85b3 b966d409 ce61e49f     %.hW..o ..f...a.
2002bc84:	5edef90e 29d9c998 b0d09822 c7d7a8b4     ...^...)".......
2002bc94:	59b33d17 2eb40d81 b7bd5c3b c0ba6cad     .=.Y....;\...l..
2002bca4:	edb88320 9abfb3b6 03b6e20c 74b1d29a      ..............t
2002bcb4:	ead54739 9dd277af 04db2615 73dc1683     9G...w...&.....s
2002bcc4:	e3630b12 94643b84 0d6d6a3e 7a6a5aa8     ..c..;d.>jm..Zjz
2002bcd4:	e40ecf0b 9309ff9d 0a00ae27 7d079eb1     ........'......}
2002bce4:	f00f9344 8708a3d2 1e01f268 6906c2fe     D.......h......i
2002bcf4:	f762575d 806567cb 196c3671 6e6b06e7     ]Wb..ge.q6l...kn
2002bd04:	fed41b76 89d32be0 10da7a5a 67dd4acc     v....+..Zz...J.g
2002bd14:	f9b9df6f 8ebeeff9 17b7be43 60b08ed5     o.......C......`
2002bd24:	d6d6a3e8 a1d1937e 38d8c2c4 4fdff252     ....~......8R..O
2002bd34:	d1bb67f1 a6bc5767 3fb506dd 48b2364b     .g..gW.....?K6.H
2002bd44:	d80d2bda af0a1b4c 36034af6 41047a60     .+..L....J.6`z.A
2002bd54:	df60efc3 a867df55 316e8eef 4669be79     ..`.U.g...n1y.iF
2002bd64:	cb61b38c bc66831a 256fd2a0 5268e236     ..a...f...o%6.hR
2002bd74:	cc0c7795 bb0b4703 220216b9 5505262f     .w...G....."/&.U
2002bd84:	c5ba3bbe b2bd0b28 2bb45a92 5cb36a04     .;..(....Z.+.j.\
2002bd94:	c2d7ffa7 b5d0cf31 2cd99e8b 5bdeae1d     ....1......,...[
2002bda4:	9b64c2b0 ec63f226 756aa39c 026d930a     ..d.&.c...ju..m.
2002bdb4:	9c0906a9 eb0e363f 72076785 05005713     ....?6...g.r.W..
2002bdc4:	95bf4a82 e2b87a14 7bb12bae 0cb61b38     .J...z...+.{8...
2002bdd4:	92d28e9b e5d5be0d 7cdcefb7 0bdbdf21     ...........|!...
2002bde4:	86d3d2d4 f1d4e242 68ddb3f8 1fda836e     ....B......hn...
2002bdf4:	81be16cd f6b9265b 6fb077e1 18b74777     ....[&...w.owG..
2002be04:	88085ae6 ff0f6a70 66063bca 11010b5c     .Z..pj...;.f\...
2002be14:	8f659eff f862ae69 616bffd3 166ccf45     ..e.i.b...kaE.l.
2002be24:	a00ae278 d70dd2ee 4e048354 3903b3c2     x.......T..N...9
2002be34:	a7672661 d06016f7 4969474d 3e6e77db     a&g...`.MGiI.wn>
2002be44:	aed16a4a d9d65adc 40df0b66 37d83bf0     Jj...Z..f..@.;.7
2002be54:	a9bcae53 debb9ec5 47b2cf7f 30b5ffe9     S..........G...0
2002be64:	bdbdf21c cabac28a 53b39330 24b4a3a6     ........0..S...$
2002be74:	bad03605 cdd70693 54de5729 23d967bf     .6......)W.T.g.#
2002be84:	b3667a2e c4614ab8 5d681b02 2a6f2b94     .zf..Ja...h].+o*
2002be94:	b40bbe37 c30c8ea1 5a05df1b 2d02ef8d     7..........Z...-

2002bea4 <CSWTCH.5>:
2002bea4:	2002bf44 2002bf14 2002bee4 2002beb4     D.. ... ... ... 

2002beb4 <mbedtls_sha512_info>:
2002beb4:	00000008 2002b063 00000040 00000080     ....c.. @.......
2002bec4:	200260dd 200260d3 200260cf 200260c9     .`. .`. .`. .`. 
2002bed4:	200260ad 2002609b 20026097 20026093     .`. .`. .`. .`. 

2002bee4 <mbedtls_sha384_info>:
2002bee4:	00000007 2002b06a 00000030 00000080     ....j.. 0.......
2002bef4:	200260d7 200260d3 200260cf 200260c3     .`. .`. .`. .`. 
2002bf04:	200260ad 2002609b 20026097 20026093     .`. .`. .`. .`. 

2002bf14 <mbedtls_sha256_info>:
2002bf14:	00000006 2002b071 00000020 00000040     ....q..  ...@...
2002bf24:	2002608d 20026083 2002607f 20026079     .`. .`. .`. y`. 
2002bf34:	2002605d 2002604b 20026047 20026043     ]`. K`. G`. C`. 

2002bf44 <mbedtls_sha224_info>:
2002bf44:	00000005 2002b078 0000001c 00000040     ....x.. ....@...
2002bf54:	20026087 20026083 2002607f 20026073     .`. .`. .`. s`. 
2002bf64:	2002605d 2002604b 20026047 20026043     ]`. K`. G`. C`. 

2002bf74 <sha256_padding>:
2002bf74:	00000080 00000000 00000000 00000000     ................
	...

2002bfb4 <K>:
2002bfb4:	428a2f98 71374491 b5c0fbcf e9b5dba5     ./.B.D7q........
2002bfc4:	3956c25b 59f111f1 923f82a4 ab1c5ed5     [.V9...Y..?..^..
2002bfd4:	d807aa98 12835b01 243185be 550c7dc3     .....[....1$.}.U
2002bfe4:	72be5d74 80deb1fe 9bdc06a7 c19bf174     t].r........t...
2002bff4:	e49b69c1 efbe4786 0fc19dc6 240ca1cc     .i...G.........$
2002c004:	2de92c6f 4a7484aa 5cb0a9dc 76f988da     o,.-..tJ...\...v
2002c014:	983e5152 a831c66d b00327c8 bf597fc7     RQ>.m.1..'....Y.
2002c024:	c6e00bf3 d5a79147 06ca6351 14292967     ....G...Qc..g)).
2002c034:	27b70a85 2e1b2138 4d2c6dfc 53380d13     ...'8!...m,M..8S
2002c044:	650a7354 766a0abb 81c2c92e 92722c85     Ts.e..jv.....,r.
2002c054:	a2bfe8a1 a81a664b c24b8b70 c76c51a3     ....Kf..p.K..Ql.
2002c064:	d192e819 d6990624 f40e3585 106aa070     ....$....5..p.j.
2002c074:	19a4c116 1e376c08 2748774c 34b0bcb5     .....l7.LwH'...4
2002c084:	391c0cb3 4ed8aa4a 5b9cca4f 682e6ff3     ...9J..NO..[.o.h
2002c094:	748f82ee 78a5636f 84c87814 8cc70208     ...toc.x.x......
2002c0a4:	90befffa a4506ceb bef9a3f7 c67178f2     .....lP......xq.

2002c0b4 <sha512_padding>:
2002c0b4:	00000080 00000000 00000000 00000000     ................
	...

2002c138 <K>:
2002c138:	d728ae22 428a2f98 23ef65cd 71374491     ".(../.B.e.#.D7q
2002c148:	ec4d3b2f b5c0fbcf 8189dbbc e9b5dba5     /;M.............
2002c158:	f348b538 3956c25b b605d019 59f111f1     8.H.[.V9.......Y
2002c168:	af194f9b 923f82a4 da6d8118 ab1c5ed5     .O....?...m..^..
2002c178:	a3030242 d807aa98 45706fbe 12835b01     B........opE.[..
2002c188:	4ee4b28c 243185be d5ffb4e2 550c7dc3     ...N..1$.....}.U
2002c198:	f27b896f 72be5d74 3b1696b1 80deb1fe     o.{.t].r...;....
2002c1a8:	25c71235 9bdc06a7 cf692694 c19bf174     5..%.....&i.t...
2002c1b8:	9ef14ad2 e49b69c1 384f25e3 efbe4786     .J...i...%O8.G..
2002c1c8:	8b8cd5b5 0fc19dc6 77ac9c65 240ca1cc     ........e..w...$
2002c1d8:	592b0275 2de92c6f 6ea6e483 4a7484aa     u.+Yo,.-...n..tJ
2002c1e8:	bd41fbd4 5cb0a9dc 831153b5 76f988da     ..A....\.S.....v
2002c1f8:	ee66dfab 983e5152 2db43210 a831c66d     ..f.RQ>..2.-m.1.
2002c208:	98fb213f b00327c8 beef0ee4 bf597fc7     ?!...'........Y.
2002c218:	3da88fc2 c6e00bf3 930aa725 d5a79147     ...=....%...G...
2002c228:	e003826f 06ca6351 0a0e6e70 14292967     o...Qc..pn..g)).
2002c238:	46d22ffc 27b70a85 5c26c926 2e1b2138     ./.F...'&.&\8!..
2002c248:	5ac42aed 4d2c6dfc 9d95b3df 53380d13     .*.Z.m,M......8S
2002c258:	8baf63de 650a7354 3c77b2a8 766a0abb     .c..Ts.e..w<..jv
2002c268:	47edaee6 81c2c92e 1482353b 92722c85     ...G....;5...,r.
2002c278:	4cf10364 a2bfe8a1 bc423001 a81a664b     d..L.....0B.Kf..
2002c288:	d0f89791 c24b8b70 0654be30 c76c51a3     ....p.K.0.T..Ql.
2002c298:	d6ef5218 d192e819 5565a910 d6990624     .R........eU$...
2002c2a8:	5771202a f40e3585 32bbd1b8 106aa070     * qW.5.....2p.j.
2002c2b8:	b8d2d0c8 19a4c116 5141ab53 1e376c08     ........S.AQ.l7.
2002c2c8:	df8eeb99 2748774c e19b48a8 34b0bcb5     ....LwH'.H.....4
2002c2d8:	c5c95a63 391c0cb3 e3418acb 4ed8aa4a     cZ.....9..A.J..N
2002c2e8:	7763e373 5b9cca4f d6b2b8a3 682e6ff3     s.cwO..[.....o.h
2002c2f8:	5defb2fc 748f82ee 43172f60 78a5636f     ...]...t`/.Coc.x
2002c308:	a1f0ab72 84c87814 1a6439ec 8cc70208     r....x...9d.....
2002c318:	23631e28 90befffa de82bde9 a4506ceb     (.c#.........lP.
2002c328:	b2c67915 bef9a3f7 e372532b c67178f2     .y......+Sr..xq.
2002c338:	ea26619c ca273ece 21c0c207 d186b8c7     .a&..>'....!....
2002c348:	cde0eb1e eada7dd6 ee6ed178 f57d4f7f     .....}..x.n..O}.
2002c358:	72176fba 06f067aa a2c898a6 0a637dc5     .o.r.g.......}c.
2002c368:	bef90dae 113f9804 131c471b 1b710b35     ......?..G..5.q.
2002c378:	23047d84 28db77f5 40c72493 32caab7b     .}.#.w.(.$.@{..2
2002c388:	15c9bebc 3c9ebe0a 9c100d4c 431d67c4     .......<L....g.C
2002c398:	cb3e42b6 4cc5d4be fc657e2a 597f299c     .B>....L*~e..).Y
2002c3a8:	3ad6faec 5fcb6fab 4a475817 6c44198c     ...:.o._.XGJ..Dl

2002c3b8 <oid_md_alg>:
2002c3b8:	2002b07f 00000009 2002b089 2002b192     ... ....... ... 
2002c3c8:	00000005 2002b093 00000009 2002b09d     ....... ....... 
2002c3d8:	2002b1c5 00000006 2002b0a7 00000009     ... ....... ....
2002c3e8:	2002b0b1 2002b1f8 00000007 2002b0bb     ... ... ....... 
2002c3f8:	00000009 2002b0c5 2002b22b 00000008     ....... +.. ....
	...

2002c41c <oid_pk_alg>:
2002c41c:	2002b107 00000009 2002b111 2002b11f     ... ....... ... 
2002c42c:	00000001 2002b123 00000007 2002b12b     ....#.. ....+.. 
2002c43c:	2002b13a 00000002 2002b149 00000005     :.. ....I.. ....
2002c44c:	2002b14f 2002b157 00000003 00000000     O.. W.. ........
	...

2002c46c <mbedtls_rsa_info>:
2002c46c:	00000001 2002b11f 2002974f 20029743     ....... O.. C.. 
2002c47c:	20029829 20029805 200297d9 200297a9     ).. ... ... ... 
2002c48c:	200297a5 2002978b 20029779 20029755     ... ... y.. U.. 

2002c49c <_init>:
2002c49c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
2002c49e:	bf00      	nop
2002c4a0:	bcf8      	pop	{r3, r4, r5, r6, r7}
2002c4a2:	bc08      	pop	{r3}
2002c4a4:	469e      	mov	lr, r3
2002c4a6:	4770      	bx	lr

2002c4a8 <_fini>:
2002c4a8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
2002c4aa:	bf00      	nop
2002c4ac:	bcf8      	pop	{r3, r4, r5, r6, r7}
2002c4ae:	bc08      	pop	{r3}
2002c4b0:	469e      	mov	lr, r3
2002c4b2:	4770      	bx	lr

2002c4b4 <__EH_FRAME_BEGIN__>:
2002c4b4:	0000 0000                                   ....

Disassembly of section .l1_ret_text_HAL_Set_backup:

2002c4b8 <HAL_Set_backup>:
2002c4b8:	4b01      	ldr	r3, [pc, #4]	@ (2002c4c0 <HAL_Set_backup+0x8>)
2002c4ba:	f843 1020 	str.w	r1, [r3, r0, lsl #2]
2002c4be:	4770      	bx	lr
2002c4c0:	500cb030 	.word	0x500cb030

Disassembly of section .l1_ret_text_HAL_Get_backup:

2002c4c4 <HAL_Get_backup>:
2002c4c4:	4b01      	ldr	r3, [pc, #4]	@ (2002c4cc <HAL_Get_backup+0x8>)
2002c4c6:	f853 0020 	ldr.w	r0, [r3, r0, lsl #2]
2002c4ca:	4770      	bx	lr
2002c4cc:	500cb030 	.word	0x500cb030

Disassembly of section .l1_ret_text_HAL_PMU_ConfigPeriLdo:

2002c4d0 <HAL_PMU_ConfigPeriLdo>:
2002c4d0:	b538      	push	{r3, r4, r5, lr}
2002c4d2:	b150      	cbz	r0, 2002c4ea <HAL_PMU_ConfigPeriLdo+0x1a>
2002c4d4:	4c18      	ldr	r4, [pc, #96]	@ (2002c538 <HAL_PMU_ConfigPeriLdo+0x68>)
2002c4d6:	6863      	ldr	r3, [r4, #4]
2002c4d8:	b2db      	uxtb	r3, r3
2002c4da:	2b07      	cmp	r3, #7
2002c4dc:	d101      	bne.n	2002c4e2 <HAL_PMU_ConfigPeriLdo+0x12>
2002c4de:	2000      	movs	r0, #0
2002c4e0:	bd38      	pop	{r3, r4, r5, pc}
2002c4e2:	6863      	ldr	r3, [r4, #4]
2002c4e4:	b2db      	uxtb	r3, r3
2002c4e6:	2b0f      	cmp	r3, #15
2002c4e8:	d0f9      	beq.n	2002c4de <HAL_PMU_ConfigPeriLdo+0xe>
2002c4ea:	4c13      	ldr	r4, [pc, #76]	@ (2002c538 <HAL_PMU_ConfigPeriLdo+0x68>)
2002c4ec:	6863      	ldr	r3, [r4, #4]
2002c4ee:	b2db      	uxtb	r3, r3
2002c4f0:	2b07      	cmp	r3, #7
2002c4f2:	d0f4      	beq.n	2002c4de <HAL_PMU_ConfigPeriLdo+0xe>
2002c4f4:	6863      	ldr	r3, [r4, #4]
2002c4f6:	b2db      	uxtb	r3, r3
2002c4f8:	2b0f      	cmp	r3, #15
2002c4fa:	d0f0      	beq.n	2002c4de <HAL_PMU_ConfigPeriLdo+0xe>
2002c4fc:	2810      	cmp	r0, #16
2002c4fe:	d818      	bhi.n	2002c532 <HAL_PMU_ConfigPeriLdo+0x62>
2002c500:	4b0e      	ldr	r3, [pc, #56]	@ (2002c53c <HAL_PMU_ConfigPeriLdo+0x6c>)
2002c502:	40c3      	lsrs	r3, r0
2002c504:	07db      	lsls	r3, r3, #31
2002c506:	d514      	bpl.n	2002c532 <HAL_PMU_ConfigPeriLdo+0x62>
2002c508:	2900      	cmp	r1, #0
2002c50a:	f04f 0421 	mov.w	r4, #33	@ 0x21
2002c50e:	bf0c      	ite	eq
2002c510:	2120      	moveq	r1, #32
2002c512:	2101      	movne	r1, #1
2002c514:	4d0a      	ldr	r5, [pc, #40]	@ (2002c540 <HAL_PMU_ConfigPeriLdo+0x70>)
2002c516:	4084      	lsls	r4, r0
2002c518:	6deb      	ldr	r3, [r5, #92]	@ 0x5c
2002c51a:	4081      	lsls	r1, r0
2002c51c:	ea23 0304 	bic.w	r3, r3, r4
2002c520:	430b      	orrs	r3, r1
2002c522:	65eb      	str	r3, [r5, #92]	@ 0x5c
2002c524:	2a00      	cmp	r2, #0
2002c526:	d0da      	beq.n	2002c4de <HAL_PMU_ConfigPeriLdo+0xe>
2002c528:	f241 3088 	movw	r0, #5000	@ 0x1388
2002c52c:	f7f5 fe3b 	bl	200221a6 <HAL_Delay_us>
2002c530:	e7d5      	b.n	2002c4de <HAL_PMU_ConfigPeriLdo+0xe>
2002c532:	2001      	movs	r0, #1
2002c534:	e7d4      	b.n	2002c4e0 <HAL_PMU_ConfigPeriLdo+0x10>
2002c536:	bf00      	nop
2002c538:	5000b000 	.word	0x5000b000
2002c53c:	00010101 	.word	0x00010101
2002c540:	500ca000 	.word	0x500ca000

Disassembly of section .l1_ret_text_HAL_PMU_Reboot:

2002c544 <HAL_PMU_Reboot>:
2002c544:	b538      	push	{r3, r4, r5, lr}
2002c546:	f3ef 8310 	mrs	r3, PRIMASK
2002c54a:	2501      	movs	r5, #1
2002c54c:	f385 8810 	msr	PRIMASK, r5
2002c550:	2002      	movs	r0, #2
2002c552:	f7f6 fb39 	bl	20022bc8 <HAL_HPAON_WakeCore>
2002c556:	4628      	mov	r0, r5
2002c558:	f7f8 ff72 	bl	20025440 <HAL_RCC_Reset_and_Halt_LCPU>
2002c55c:	462a      	mov	r2, r5
2002c55e:	2100      	movs	r1, #0
2002c560:	2008      	movs	r0, #8
2002c562:	f7ff ffb5 	bl	2002c4d0 <HAL_PMU_ConfigPeriLdo>
2002c566:	f44f 50fa 	mov.w	r0, #8000	@ 0x1f40
2002c56a:	f7f5 fdbd 	bl	200220e8 <HAL_Delay_us_>
2002c56e:	2000      	movs	r0, #0
2002c570:	f7f8 fd66 	bl	20025040 <HAL_RCC_HCPU_GetClockSrc>
2002c574:	4604      	mov	r4, r0
2002c576:	b928      	cbnz	r0, 2002c584 <HAL_PMU_Reboot+0x40>
2002c578:	f7f6 fb50 	bl	20022c1c <HAL_HPAON_EnableXT48>
2002c57c:	4629      	mov	r1, r5
2002c57e:	4620      	mov	r0, r4
2002c580:	f7f8 fe26 	bl	200251d0 <HAL_RCC_HCPU_ClockSelect>
2002c584:	4b10      	ldr	r3, [pc, #64]	@ (2002c5c8 <HAL_PMU_Reboot+0x84>)
2002c586:	4c11      	ldr	r4, [pc, #68]	@ (2002c5cc <HAL_PMU_Reboot+0x88>)
2002c588:	2000      	movs	r0, #0
2002c58a:	6763      	str	r3, [r4, #116]	@ 0x74
2002c58c:	f7ff ff9a 	bl	2002c4c4 <HAL_Get_backup>
2002c590:	4601      	mov	r1, r0
2002c592:	f020 407f 	bic.w	r0, r0, #4278190080	@ 0xff000000
2002c596:	f020 000f 	bic.w	r0, r0, #15
2002c59a:	b928      	cbnz	r0, 2002c5a8 <HAL_PMU_Reboot+0x64>
2002c59c:	f441 41a0 	orr.w	r1, r1, #20480	@ 0x5000
2002c5a0:	f041 0150 	orr.w	r1, r1, #80	@ 0x50
2002c5a4:	f7ff ff88 	bl	2002c4b8 <HAL_Set_backup>
2002c5a8:	6823      	ldr	r3, [r4, #0]
2002c5aa:	075b      	lsls	r3, r3, #29
2002c5ac:	d506      	bpl.n	2002c5bc <HAL_PMU_Reboot+0x78>
2002c5ae:	6823      	ldr	r3, [r4, #0]
2002c5b0:	4807      	ldr	r0, [pc, #28]	@ (2002c5d0 <HAL_PMU_Reboot+0x8c>)
2002c5b2:	f023 0304 	bic.w	r3, r3, #4
2002c5b6:	6023      	str	r3, [r4, #0]
2002c5b8:	f7f5 fdf5 	bl	200221a6 <HAL_Delay_us>
2002c5bc:	4a03      	ldr	r2, [pc, #12]	@ (2002c5cc <HAL_PMU_Reboot+0x88>)
2002c5be:	6813      	ldr	r3, [r2, #0]
2002c5c0:	f043 0304 	orr.w	r3, r3, #4
2002c5c4:	6013      	str	r3, [r2, #0]
2002c5c6:	e7fe      	b.n	2002c5c6 <HAL_PMU_Reboot+0x82>
2002c5c8:	0a50c015 	.word	0x0a50c015
2002c5cc:	500ca000 	.word	0x500ca000
2002c5d0:	000186a0 	.word	0x000186a0

Disassembly of section .l1_ret_text_HAL_PMU_GetHpsysVoutRef:

2002c5d4 <HAL_PMU_GetHpsysVoutRef>:
2002c5d4:	4b04      	ldr	r3, [pc, #16]	@ (2002c5e8 <HAL_PMU_GetHpsysVoutRef+0x14>)
2002c5d6:	781a      	ldrb	r2, [r3, #0]
2002c5d8:	b122      	cbz	r2, 2002c5e4 <HAL_PMU_GetHpsysVoutRef+0x10>
2002c5da:	b118      	cbz	r0, 2002c5e4 <HAL_PMU_GetHpsysVoutRef+0x10>
2002c5dc:	78db      	ldrb	r3, [r3, #3]
2002c5de:	7003      	strb	r3, [r0, #0]
2002c5e0:	2000      	movs	r0, #0
2002c5e2:	4770      	bx	lr
2002c5e4:	2001      	movs	r0, #1
2002c5e6:	4770      	bx	lr
2002c5e8:	2004cc30 	.word	0x2004cc30

Disassembly of section .l1_ret_text_HAL_PMU_GetHpsysVoutRef2:

2002c5ec <HAL_PMU_GetHpsysVoutRef2>:
2002c5ec:	4b04      	ldr	r3, [pc, #16]	@ (2002c600 <HAL_PMU_GetHpsysVoutRef2+0x14>)
2002c5ee:	781a      	ldrb	r2, [r3, #0]
2002c5f0:	b122      	cbz	r2, 2002c5fc <HAL_PMU_GetHpsysVoutRef2+0x10>
2002c5f2:	b118      	cbz	r0, 2002c5fc <HAL_PMU_GetHpsysVoutRef2+0x10>
2002c5f4:	7b5b      	ldrb	r3, [r3, #13]
2002c5f6:	7003      	strb	r3, [r0, #0]
2002c5f8:	2000      	movs	r0, #0
2002c5fa:	4770      	bx	lr
2002c5fc:	2001      	movs	r0, #1
2002c5fe:	4770      	bx	lr
2002c600:	2004cc30 	.word	0x2004cc30
